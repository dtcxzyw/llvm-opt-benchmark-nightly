begin_hunk_0

.lr.ph78.new:                                     ; preds = %.lr.ph78
  %unroll_iter = and i64 %i.fu, -2
  %invariant.op = sub i8 1, %1
  br label %bb.k

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
end_hunk_0
begin_hunk_1
  store ptr %2, ptr %i.gw, align 8, !tbaa !127
  %i.ha = load i8, ptr %i.cc, align 1, !tbaa !34
  %i.hb = trunc i64 %indvars.iv80 to i8
  %i.hc = add i8 %i.hb, %invariant.op
  %i.hd = add i8 %i.hc, %i.ha
  %i.he = zext i8 %i.hd to i64
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %i.he
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !127 ; 3 uses
end_hunk_1
begin_hunk_2

.lr.ph56.new:                                     ; preds = %.lr.ph56
  %unroll_iter = and i64 %i.cp, -2
  %invariant.op = sub i8 1, %1
  br label %bb.c

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
end_hunk_2
begin_hunk_3
  store ptr %2, ptr %i.dr, align 8, !tbaa !706
  %i.dv = load i8, ptr %i.ak, align 1, !tbaa !34
  %i.dw = trunc i64 %indvars.iv58 to i8
  %i.dx = add i8 %i.dw, %invariant.op
  %i.dy = add i8 %i.dx, %i.dv
  %i.dz = zext i8 %i.dy to i64
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.dz
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !706 ; 3 uses
end_hunk_3
begin_hunk_4

.lr.ph56.new:                                     ; preds = %.lr.ph56
  %unroll_iter = and i64 %i.be, -2
  %invariant.op = sub i8 1, %1
  br label %bb.c

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
end_hunk_4
begin_hunk_5
  store ptr %2, ptr %i.cg, align 8, !tbaa !722
  %i.ck = load i8, ptr %i.u, align 1, !tbaa !34
  %i.cl = trunc i64 %indvars.iv58 to i8
  %i.cm = add i8 %i.cl, %invariant.op
  %i.cn = add i8 %i.cm, %i.ck
  %i.co = zext i8 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.co
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !722 ; 3 uses
end_hunk_5
