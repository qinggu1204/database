/*创建考试*/
insert into examination_info (examination_name, start_time, end_time, examination_status)
values('2021-2022 学年操作系统期中考试','2022-11-02 10:05:00','2022-11-02 11:05:00','NOT_START');
/*创建试卷*/
insert into examination_paper (title, total_score) values('2021-2022 学年操作系统期中考试试卷',100);
/*把试卷和考试关联起来，前端获取刚才创建的考试编号examination_id和试卷编号examination_paper_id*/
update examination_info set examination_paper_id='2' where examination_id='2';
/*插入题目*/
/*题目来自题库中对应考试编号的题，该题目为任课教师接收教务教师出题任务后编写的题目*/
select question_id from question_info where examination_id='2';
/*examination_paper_id 通过对应的 examination_paper.title 查询得出*/
select examination_paper_id from examination_paper where
        examination_paper.title='2021-2022 学年操作系统期中考试试卷';
/*如，教务教师输入选择题占 20 分，选择题供 2 道，则 score=20/2=10*/
/*选择题*/
insert into examination_paper_question(question_id, examination_paper_id, question_score)values ('3', '2', '10');
insert into examination_paper_question(question_id, examination_paper_id,question_score) values ('7','2','10');
/*填空题*/
insert into examination_paper_question(question_id, examination_paper_id,question_score)values ('11','2','10');
insert into examination_paper_question(question_id, examination_paper_id,question_score)values ('16','2','10');
/*综合题*/
insert into examination_paper_question(question_id, examination_paper_id,question_score)values ('2','2','30');
insert into examination_paper_question(question_id, examination_paper_id,question_score)values ('5','2','30');
/*如果教务教师对系统随机分配给题目的分数不满意，可以进行手动修改*/
update examination_paper_question set question_score='35' where question_id='5';
update examination_paper_question set question_score='25' where question_id='2';
/*设置监考教师*/
/*为某课程班设置监考教师，已知 examination_id，可查询不参与该考试的课程班级得到
course_id，由此查询不教授该课程的任课教师 teacher_id 作为监考教师候选*/
select teacher_id from teacher_info
where teacher_id not in
      (select teacher_id from
                             course_examination,teacher_course
       where
               teacher_course.course_id=course_examination.course_id and
               course_examination.examination_id='2');
/*在上述列表中选择监考教师 id，如“操作系统-李伟”课程班选择“王麻子”作为监考教师*/
insert into teacher_invigilation(examination_id,teacher_id) values ('2','4');
/*通知该教师监考时间*/
select start_time from examination_info,teacher_invigilation
where teacher_id='4' and examination_info.examination_id=teacher_invigilation.examination_id;