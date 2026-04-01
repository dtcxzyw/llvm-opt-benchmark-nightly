begin_hunk_0
  %i.bh = add i32 %i.bc, %i.bg                    ; 2 uses
  %i.bi = add i32 %i.bh, %i.ar
  %i.bj = icmp slt i32 %i.bi, %i.bh
  br i1 %i.bj, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %invariant.op = sub i32 %i.bf, %i.r
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bk = trunc i64 %index to i32
  %i.bl = add i32 %i.bk, %invariant.op
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.bm ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
end_hunk_0
begin_hunk_1
  %i.cm = add i32 %i.cl, %i.ba
  %i.cn = icmp slt i32 %i.cm, %i.cl
  %or.cond177 = select i1 %min.iters.check150, i1 true, i1 %i.cn
  br i1 %or.cond177, label %.lr.ph.split.us.us.us.us.preheader181, label %vector.ph151

vector.ph151:                                     ; preds = %.lr.ph.split.us.us.us.us.preheader
  %invariant.op196 = sub i32 %i.ci, %i.r
  br label %vector.body154

vector.body154:                                   ; preds = %vector.body154, %vector.ph151
  %index155 = phi i64 [ 0, %vector.ph151 ], [ %index.next157, %vector.body154 ] ; 2 uses
  %i.co = trunc i64 %index155 to i32
  %i.cp = add i32 %i.co, %invariant.op196
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.cq ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
end_hunk_1
begin_hunk_2
vector.ph:                                        ; preds = %.lr.ph.split.us84.us.us.preheader
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %i.cj, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %invariant.op204 = sub i32 %i.ci, %i.r
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
end_hunk_2
begin_hunk_3
  %step.add = add nsw <2 x i64> %vec.ind, splat (i64 2)
  %step.add146 = add <2 x i32> %vec.ind145, splat (i32 2)
  %i.dg = trunc i64 %index to i32
  %i.dh = add i32 %i.dg, %invariant.op204
  %i.di = or <2 x i32> %broadcast.splat, %vec.ind145
  %i.dj = or <2 x i32> %broadcast.splat, %step.add146
  %i.dk = icmp sgt <2 x i32> %i.di, splat (i32 -1)
end_hunk_3
begin_hunk_4
  %i.fg = add i32 %i.cb, %i.ff                    ; 2 uses
  %i.fh = add i32 %i.fg, %i.bi
  %i.fi = icmp slt i32 %i.fh, %i.fg
  br i1 %i.fi, label %scalar.ph164.preheader, label %vector.ph166

vector.ph166:                                     ; preds = %vector.scevcheck161
  %invariant.op = sub i32 %i.fe, %i.r
  br label %vector.body169

vector.body169:                                   ; preds = %vector.body169, %vector.ph166
  %index170 = phi i64 [ 0, %vector.ph166 ], [ %index.next172, %vector.body169 ] ; 2 uses
  %i.fj = trunc i64 %index170 to i32
  %i.fk = add i32 %i.fj, %invariant.op
  %i.fl = sext i32 %i.fk to i64
  %i.fm = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.fl ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
end_hunk_4
