begin_hunk_0_@DoBufferCopy:bb.a

vector.body237:                                   ; preds = %vector.scevcheck228, %vector.body237
  %index238 = phi i64 [ %index.next241, %vector.body237 ], [ 0, %vector.scevcheck228 ] ; 2 uses
  %i.ir = trunc nuw nsw i64 %index238 to i32      ; 2 uses
  %i.is = add i32 %i.hs, %i.ir
  %i.it = add i32 %i.hv, %i.ir
  %i.iu = sext i32 %i.is to i64
end_hunk_0
begin_hunk_1_@apply_op:bb.a

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 2 uses
  %i.di = trunc nuw nsw i64 %index to i32
  %i.dj = add i32 %i.da, %i.di                    ; 6 uses
  %i.dk = sext i32 %i.dj to i64                   ; 6 uses
  %i.dl = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.dk
end_hunk_1
begin_hunk_2_@residual:bb.a

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 2 uses
  %i.dm = trunc nuw nsw i64 %index to i32
  %i.dn = add i32 %i.de, %i.dm                    ; 6 uses
  %i.do = sext i32 %i.dn to i64                   ; 7 uses
  %i.dp = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.do
end_hunk_2
begin_hunk_3_@residual_and_restriction:bb.a

vector.body:                                      ; preds = %vector.scevcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.scevcheck ] ; 2 uses
  %i.cs = trunc nuw nsw i64 %index to i32
  %i.ct = add i32 %i.co, %i.cs
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds [8 x i8], ptr %i.bs, i64 %i.cu ; 2 uses
end_hunk_3
begin_hunk_4_@residual_and_restriction:bb.a

vector.body291:                                   ; preds = %vector.scevcheck281, %vector.body291
  %index292 = phi i64 [ %index.next293, %vector.body291 ], [ 0, %vector.scevcheck281 ] ; 2 uses
  %i.pg = trunc nuw nsw i64 %index292 to i32
  %i.ph = add i32 %i.pa, %i.pg
  %i.pi = sext i32 %i.ph to i64
  %i.pj = getelementptr inbounds [8 x i8], ptr %i.bs, i64 %i.pi ; 2 uses
end_hunk_4
begin_hunk_5_@add_grids:bb.a

vector.body:                                      ; preds = %vector.scevcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.scevcheck ] ; 2 uses
  %i.bk = trunc nuw nsw i64 %index to i32
  %i.bl = add i32 %i.be, %i.bk
  %i.bm = sext i32 %i.bl to i64                   ; 3 uses
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.bm ; 2 uses
end_hunk_5
begin_hunk_6_@mul_grids:bb.a

vector.body:                                      ; preds = %vector.scevcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.scevcheck ] ; 2 uses
  %i.bk = trunc nuw nsw i64 %index to i32
  %i.bl = add i32 %i.be, %i.bk
  %i.bm = sext i32 %i.bl to i64                   ; 3 uses
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.bm ; 2 uses
end_hunk_6
begin_hunk_7_@scale_grid:bb.a

vector.body:                                      ; preds = %vector.scevcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.scevcheck ] ; 2 uses
  %i.be = trunc nuw nsw i64 %index to i32
  %i.bf = add i32 %i.ay, %i.be
  %i.bg = sext i32 %i.bf to i64                   ; 2 uses
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.bg ; 2 uses
end_hunk_7
begin_hunk_8_@shift_grid:bb.a

vector.body:                                      ; preds = %vector.scevcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.scevcheck ] ; 2 uses
  %i.be = trunc nuw nsw i64 %index to i32
  %i.bf = add i32 %i.ay, %i.be
  %i.bg = sext i32 %i.bf to i64                   ; 2 uses
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.bg ; 2 uses
end_hunk_8
begin_hunk_9_@project_cell_to_face:bb.a

vector.body:                                      ; preds = %vector.scevcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.scevcheck ] ; 2 uses
  %i.bc = trunc nuw nsw i64 %index to i32
  %i.bd = add i32 %i.ax, %i.bc                    ; 2 uses
  %i.be = sub nsw i32 %i.bd, %.1
  %i.bf = sext i32 %i.be to i64
end_hunk_9
