/*��������*/
insert into examination_info (examination_name, start_time, end_time, examination_status)
values('2021-2022 ѧ�����ϵͳ���п���','2022-11-02 10:05:00','2022-11-02 11:05:00','NOT_START');
/*�����Ծ�*/
insert into examination_paper (title, total_score) values('2021-2022 ѧ�����ϵͳ���п����Ծ�',100);
/*���Ծ�Ϳ��Թ���������ǰ�˻�ȡ�ղŴ����Ŀ��Ա��examination_id���Ծ���examination_paper_id*/
update examination_info set examination_paper_id='2' where examination_id='2';
/*������Ŀ*/
/*��Ŀ��������ж�Ӧ���Ա�ŵ��⣬����ĿΪ�ον�ʦ���ս����ʦ����������д����Ŀ*/
select question_id from question_info where examination_id='2';
/*examination_paper_id ͨ����Ӧ�� examination_paper.title ��ѯ�ó�*/
select examination_paper_id from examination_paper where
        examination_paper.title='2021-2022 ѧ�����ϵͳ���п����Ծ�';
/*�磬�����ʦ����ѡ����ռ 20 �֣�ѡ���⹩ 2 ������ score=20/2=10*/
/*ѡ����*/
insert into examination_paper_question(question_id, examination_paper_id, question_score)values ('3', '2', '10');
insert into examination_paper_question(question_id, examination_paper_id,question_score) values ('7','2','10');
/*�����*/
insert into examination_paper_question(question_id, examination_paper_id,question_score)values ('11','2','10');
insert into examination_paper_question(question_id, examination_paper_id,question_score)values ('16','2','10');
/*�ۺ���*/
insert into examination_paper_question(question_id, examination_paper_id,question_score)values ('2','2','30');
insert into examination_paper_question(question_id, examination_paper_id,question_score)values ('5','2','30');
/*��������ʦ��ϵͳ����������Ŀ�ķ��������⣬���Խ����ֶ��޸�*/
update examination_paper_question set question_score='35' where question_id='5';
update examination_paper_question set question_score='25' where question_id='2';
/*���ü࿼��ʦ*/
/*Ϊĳ�γ̰����ü࿼��ʦ����֪ examination_id���ɲ�ѯ������ÿ��ԵĿγ̰༶�õ�
course_id���ɴ˲�ѯ�����ڸÿγ̵��ον�ʦ teacher_id ��Ϊ�࿼��ʦ��ѡ*/
select teacher_id from teacher_info
where teacher_id not in
      (select teacher_id from
                             course_examination,teacher_course
       where
               teacher_course.course_id=course_examination.course_id and
               course_examination.examination_id='2');
/*�������б���ѡ��࿼��ʦ id���硰����ϵͳ-��ΰ���γ̰�ѡ�������ӡ���Ϊ�࿼��ʦ*/
insert into teacher_invigilation(examination_id,teacher_id) values ('2','4');
/*֪ͨ�ý�ʦ�࿼ʱ��*/
select start_time from examination_info,teacher_invigilation
where teacher_id='4' and examination_info.examination_id=teacher_invigilation.examination_id;