package qna.domain;

import qna.CannotDeleteException;
import qna.NotFoundException;
import qna.UnAuthorizedException;

import javax.persistence.*;
import java.util.Objects;

import static javax.persistence.FetchType.LAZY;
import static qna.domain.ContentType.ANSWER;

@Entity
public class Answer extends BaseEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;


    @ManyToOne(fetch = LAZY)
    @JoinColumn(name = "writer_id", foreignKey = @ForeignKey(name = "fk_answer_writer"))
    private User writer;


    @ManyToOne(fetch = LAZY)
    @JoinColumn(name = "question_id", foreignKey = @ForeignKey(name = "fk_answer_question"))
    private Question question;

    @Embedded
    private Contents contents;

    @Embedded
    private Deletion deleted = new Deletion(false);

    protected Answer() {
    }

    public Answer(User writer, Question question, Contents contents) {
        this(null, writer, question, contents);
    }

    public Answer(Long id, User writer, Question question, Contents contents) {
        this.id = id;

        if (Objects.isNull(writer)) {
            throw new UnAuthorizedException();
        }

        if (Objects.isNull(question)) {
            throw new NotFoundException();
        }

        this.writer = writer;
        this.question = question;
        this.contents = contents;
    }

    public boolean isOwner(User writer) {
        return this.writer.equals(writer);
    }

    public Long getId() {
        return id;
    }

    public User getWriter() {
        return this.writer;
    }

    public boolean isDeleted() {
        return deleted.isDeleted();
    }

    public DeleteHistory delete(User requester) throws CannotDeleteException {
        if (!isOwner(requester)) {
            throw new UnAuthorizedException("답변을 삭제할 권한이 없습니다.");
        }

        deleted.delete();

        return new DeleteHistory(ANSWER, this.id, this.writer);
    }

    @Override
    public String toString() {
        return "Answer{" +
                "id=" + id +
                ", writerId=" + writer.getId() +
                ", questionId=" + question.getId() +
                ", contents='" + contents + '\'' +
                ", deleted=" + deleted +
                '}';
    }

}
