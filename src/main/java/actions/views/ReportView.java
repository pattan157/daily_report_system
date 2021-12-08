package actions.views;

import java.time.LocalDate;
import java.time.LocalDateTime;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

/**
 * 日報情報について画面の入力値・出力値を扱うViewモデル
 *
 */
@Getter //全てのクラスフィールドについてgetterを自動生成する(Lombok)
@Setter //全てのクラスフィールドについてsetterを自動生成する(Lombok)
@NoArgsConstructor //引数なしコンストラクタを自動生成する(Lombok)
@AllArgsConstructor //全てのクラスフィールドを引数にもつ引数ありコンストラクタを自動生成する(Lombok)
public class ReportView {

    /**
     * id
     */
    private Integer id;

    /**
     * 日報を登録した従業員
     */
    private EmployeeView employee;

    /**
     * いつの日報かを示す日付
     */
    private LocalDate reportDate;

    /**
     * 日報のタイトル
     */
    private String title;

    /**
     * 日報の内容
     */
    private String content;
    
    /*
     * 身長
     */
    private double height;
    
    /*
     * 体重
     */
    private double weight;
    
    /*
     * BMI
     */
    
    public double bmi() {
        return this.weight/((this.height/100) * (this.height/100));
    }
    /**
     * 登録日時
     */
    private LocalDateTime createdAt;

    /**
     * 更新日時
     */
    private LocalDateTime updatedAt;
}

