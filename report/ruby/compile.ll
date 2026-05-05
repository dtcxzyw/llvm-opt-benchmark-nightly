inline.NumInlined: 6675
inline.NumDeleted: 333
begin_hunk_0_@rb_iseq_compile_node:bb.a

vector.body475:                                   ; preds = %vector.body475, %vector.ph472
  %index476 = phi i64 [ 0, %vector.ph472 ], [ %index.next477, %vector.body475 ] ; 2 uses
  %i.pv = trunc nuw nsw i64 %index476 to i32
  %i.pw = add i32 %i.pj, %i.pv
  %i.px = sext i32 %i.pw to i64
  %i.py = getelementptr [4 x i8], ptr %i.po, i64 %i.px ; 2 uses
end_hunk_0
begin_hunk_1_@compile_builtin_mandatory_only_method:bb.a
vector.body9:                                     ; preds = %vector.body9, %vector.ph6
  %index10 = phi i64 [ 0, %vector.ph6 ], [ %index.next13, %vector.body9 ] ; 2 uses
  %i.bq = add i64 %index10, %i.av                 ; 2 uses
  %i.br = trunc nuw nsw i64 %i.bq to i32
  %i.bs = add i32 %i.l, %i.br
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr [8 x i8], ptr %i.as, i64 %i.bt ; 2 uses
end_hunk_1
begin_hunk_2_@pm_compile_scope_node:bb.a

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ajh = trunc nuw nsw i64 %index to i32
  %i.aji = add i32 %i.aiv, %i.ajh
  %i.ajj = sext i32 %i.aji to i64
  %i.ajk = getelementptr [4 x i8], ptr %i.aja, i64 %i.ajj ; 2 uses
end_hunk_2
