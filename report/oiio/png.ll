inline.NumInlined: 72
inline.NumDeleted: 12
begin_hunk_0_@png_build_gamma_table:bb.a
  %spec.store.select = tail call i8 @llvm.umax.i8(i8 %.060, i8 5)
  %.161 = select i1 %.not68, i8 %.060, i8 %spec.store.select
  %spec.store.select3 = tail call i8 @llvm.umin.i8(i8 %.161, i8 8)
  %i.el = zext nneg i8 %spec.store.select3 to i32 ; 8 uses
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 712
  store i32 %i.el, ptr %i.em, align 8, !tbaa !171
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 744 ; 2 uses
  br i1 %.not68, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %2 = lshr exact i32 256, %i.el
  %i.eo = zext nneg i32 %2 to i64                 ; 2 uses
  %i.ep = shl nuw nsw i64 %i.eo, 3
  %i.eq = tail call noalias ptr @png_calloc(ptr noundef nonnull %0, i64 noundef %i.ep) #29 ; 12 uses
  store ptr %i.eq, ptr %i.en, align 8, !tbaa !49, !noalias !198
end_hunk_0
begin_hunk_1_@png_build_gamma_table:bb.a
  %i.ew = fcmp oge double %i.eu, 0xC1E0000000000000
  %or.cond.i100 = and i1 %i.ev, %i.ew
  %i.ex = fptosi double %i.eu to i32
  %i.ey = sub nuw nsw i32 8, %i.el                ; 10 uses
  %3 = lshr exact i32 65536, %i.el                ; 5 uses
  %4 = add nsw i32 %3, -1
  %i.ez = sitofp i32 %i.ex to double
  %i.fa = fmul nnan double %i.ez, 1.000000e-05
  %i.fb = select i1 %or.cond.i100, double %i.fa, double 0.000000e+00
end_hunk_1
begin_hunk_2_@png_build_gamma_table:bb.a
  br i1 %exitcond.not.i104, label %.preheader38.i, label %bb.x, !llvm.loop !201

.preheader.i105:                                  ; preds = %._crit_edge.i
  %i.ff = icmp ult i32 %.135.lcssa.i, %3
  br i1 %i.ff, label %.lr.ph45.i.preheader, label %png_build_16to8_table.exit

.lr.ph45.i.preheader:                             ; preds = %.preheader.i105
  %i.fg = sub nuw i32 %3, %.135.lcssa.i
  %xtraiter142 = and i32 %i.fg, 3                 ; 2 uses
  %lcmp.mod143.not = icmp eq i32 %xtraiter142, 0
  br i1 %lcmp.mod143.not, label %.lr.ph45.i.prol.loopexit, label %.lr.ph45.i.prol
end_hunk_2
begin_hunk_3_@png_build_gamma_table:bb.a
  %i.fi = zext nneg i32 %i.fh to i64
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.fi
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !172
  %i.fl = lshr i32 %.244.i.prol, %i.ey
  %i.fm = zext i32 %i.fl to i64
  %i.fn = getelementptr inbounds nuw [2 x i8], ptr %i.fk, i64 %i.fm
  store i16 -1, ptr %i.fn, align 2, !tbaa !48
end_hunk_3
begin_hunk_4_@png_build_gamma_table:bb.a

.lr.ph45.i.prol.loopexit:                         ; preds = %.lr.ph45.i.prol, %.lr.ph45.i.preheader
  %.244.i.unr = phi i32 [ %.135.lcssa.i, %.lr.ph45.i.preheader ], [ %i.fo, %.lr.ph45.i.prol ]
  %i.fp = sub i32 %.135.lcssa.i, %3
  %i.fq = icmp ugt i32 %i.fp, -4
  br i1 %i.fq, label %png_build_16to8_table.exit, label %.lr.ph45.i

end_hunk_4
begin_hunk_5_@png_build_gamma_table:bb.a
  %i.fy = tail call double @llvm.fmuladd.f64(double %i.fx, double 6.553500e+04, double 5.000000e-01)
  %i.fz = tail call double @llvm.floor.f64(double %i.fy)
  %i.ga = fptoui double %i.fz to i16
  %i.gb = zext i16 %i.ga to i32
  %5 = mul nuw i32 %4, %i.gb
  %i.gc = add nuw i32 %5, 32768
  %i.gd = udiv i32 %i.gc, 65535                   ; 5 uses
  %.not40.i = icmp ugt i32 %.03442.i, %i.gd
  br i1 %.not40.i, label %._crit_edge.i, label %.lr.ph.i.preheader
end_hunk_5
begin_hunk_6_@png_build_gamma_table:bb.a
  %i.gi = zext nneg i32 %i.gh to i64
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.gi
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !172
  %i.gl = lshr i32 %.13541.i.prol, %i.ey
  %i.gm = zext nneg i32 %i.gl to i64
  %i.gn = getelementptr inbounds nuw [2 x i8], ptr %i.gk, i64 %i.gm
  store i16 %i.fs, ptr %i.gn, align 2, !tbaa !48
end_hunk_6
begin_hunk_7_@png_build_gamma_table:bb.a
  %i.gr = zext nneg i32 %i.gq to i64
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.gr
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !172
  %i.gu = lshr i32 %.13541.i, %i.ey
  %i.gv = zext nneg i32 %i.gu to i64
  %i.gw = getelementptr inbounds nuw [2 x i8], ptr %i.gt, i64 %i.gv
  store i16 %i.fs, ptr %i.gw, align 2, !tbaa !48
end_hunk_7
begin_hunk_8_@png_build_gamma_table:bb.a
  %i.gz = zext nneg i32 %i.gy to i64
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.gz
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !172
  %i.hc = lshr i32 %i.gx, %i.ey
  %i.hd = zext nneg i32 %i.hc to i64
  %i.he = getelementptr inbounds nuw [2 x i8], ptr %i.hb, i64 %i.hd
  store i16 %i.fs, ptr %i.he, align 2, !tbaa !48
end_hunk_8
begin_hunk_9_@png_build_gamma_table:bb.a
  %i.hh = zext nneg i32 %i.hg to i64
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.hh
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !172
  %i.hk = lshr i32 %i.hf, %i.ey
  %i.hl = zext nneg i32 %i.hk to i64
  %i.hm = getelementptr inbounds nuw [2 x i8], ptr %i.hj, i64 %i.hl
  store i16 %i.fs, ptr %i.hm, align 2, !tbaa !48
end_hunk_9
begin_hunk_10_@png_build_gamma_table:bb.a
  %i.hp = zext nneg i32 %i.ho to i64
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.hp
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !172
  %i.hs = lshr i32 %i.hn, %i.ey
  %i.ht = zext nneg i32 %i.hs to i64
  %i.hu = getelementptr inbounds nuw [2 x i8], ptr %i.hr, i64 %i.ht
  store i16 %i.fs, ptr %i.hu, align 2, !tbaa !48
end_hunk_10
begin_hunk_11_@png_build_gamma_table:bb.a
  %i.hz = zext nneg i32 %i.hy to i64
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.hz
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !172
  %i.ic = lshr i32 %.244.i, %i.ey
  %i.id = zext i32 %i.ic to i64
  %i.ie = getelementptr inbounds nuw [2 x i8], ptr %i.ib, i64 %i.id
  store i16 -1, ptr %i.ie, align 2, !tbaa !48
end_hunk_11
begin_hunk_12_@png_build_gamma_table:bb.a
  %i.ih = zext nneg i32 %i.ig to i64
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.ih
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !172
  %i.ik = lshr i32 %i.if, %i.ey
  %i.il = zext i32 %i.ik to i64
  %i.im = getelementptr inbounds nuw [2 x i8], ptr %i.ij, i64 %i.il
  store i16 -1, ptr %i.im, align 2, !tbaa !48
end_hunk_12
begin_hunk_13_@png_build_gamma_table:bb.a
  %i.ip = zext nneg i32 %i.io to i64
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.ip
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !172
  %i.is = lshr i32 %i.in, %i.ey
  %i.it = zext i32 %i.is to i64
  %i.iu = getelementptr inbounds nuw [2 x i8], ptr %i.ir, i64 %i.it
  store i16 -1, ptr %i.iu, align 2, !tbaa !48
end_hunk_13
begin_hunk_14_@png_build_gamma_table:bb.a
  %i.ix = zext nneg i32 %i.iw to i64
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.ix
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !172
  %i.ja = lshr i32 %i.iv, %i.ey
  %i.jb = zext i32 %i.ja to i64
  %i.jc = getelementptr inbounds nuw [2 x i8], ptr %i.iz, i64 %i.jb
  store i16 -1, ptr %i.jc, align 2, !tbaa !48
  %i.jd = add nuw i32 %.244.i, 4                  ; 2 uses
  %exitcond50.not.i.3 = icmp eq i32 %i.jd, %3
  br i1 %exitcond50.not.i.3, label %png_build_16to8_table.exit, label %.lr.ph45.i, !llvm.loop !206

bb.y:                                             ; preds = %bb.v
end_hunk_14
begin_hunk_15_@png_build_16bit_table:bb.a
bb.a:
  %i.a = sub nsw i32 8, %2                        ; 6 uses
  %i.b = shl nuw nsw i32 1, %i.a
  %4 = lshr exact i32 65536, %2
  %5 = add nsw i32 %4, -1                         ; 3 uses
  %i.c = uitofp nneg i32 %5 to double
  %i.d = fdiv nnan double 1.000000e+00, %i.c      ; 2 uses
  %6 = lshr exact i32 32768, %2                   ; 2 uses
  %i.e = zext nneg i32 %i.b to i64                ; 4 uses
  %i.f = shl nuw nsw i64 %i.e, 3
  %i.g = tail call noalias ptr @png_calloc(ptr noundef %0, i64 noundef %i.f) #29 ; 4 uses
end_hunk_15
begin_hunk_16_@png_build_16bit_table:bb.a
  %i.ep = shl nuw nsw i32 %i.eo, %i.a
  %i.eq = add i32 %i.ep, %i.en
  %i.er = mul i32 %i.eq, 65535
  %i.es = add i32 %i.er, %6
  %i.et = udiv i32 %i.es, %5
  %i.eu = trunc i32 %i.et to i16
  %i.ev = getelementptr inbounds nuw [2 x i8], ptr %i.el, i64 %indvars.iv58
end_hunk_16
begin_hunk_17_@png_build_16bit_table:bb.a
  %i.ex = shl nuw nsw i32 %i.ew, %i.a
  %i.ey = add i32 %i.ex, %i.en
  %i.ez = mul i32 %i.ey, 65535
  %i.fa = add i32 %i.ez, %6
  %i.fb = udiv i32 %i.fa, %5
  %i.fc = trunc i32 %i.fb to i16
  %i.fd = getelementptr inbounds nuw [2 x i8], ptr %i.el, i64 %indvars.iv.next59
end_hunk_17
