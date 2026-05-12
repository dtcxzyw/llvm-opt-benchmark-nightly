begin_hunk_0_@check_block:bb.a
  br i1 %.not987, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %1 = sub nuw nsw i32 1, %.1923
  %i.ed = zext nneg i32 %1 to i64
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ed
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !12
  %i.eg = fsub double %i.ef, %i.dd
  %i.eh = fdiv double %i.eg, %i.m                 ; 2 uses
  %2 = sub nuw nsw i32 1, %.1913
  %i.ei = zext nneg i32 %2 to i64
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.ei
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !12
end_hunk_0
begin_hunk_1_@check_block:bb.a
  %i.em = fdiv double %i.el, %i.p                 ; 2 uses
  %i.en = fmul double %i.em, %i.em
  %i.eo = tail call double @llvm.fmuladd.f64(double %i.eh, double %i.eh, double %i.en)
  %3 = sub nuw nsw i32 1, %.1
  %i.ep = zext nneg i32 %3 to i64
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ep
  %i.er = load double, ptr %i.eq, align 8, !tbaa !12
end_hunk_1
begin_hunk_2_@check_block:bb.a
  br i1 %i.fb, label %bb.au, label %bb.bm

bb.au:                                            ; preds = %bb.at
  %4 = sub nuw nsw i32 1, %.1923
  %i.fc = zext nneg i32 %4 to i64
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.fc
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !12
  %i.ff = fsub double %i.fe, %i.dd
  %i.fg = fdiv double %i.ff, %i.m                 ; 2 uses
  %5 = sub nuw nsw i32 1, %.1913
  %i.fh = zext nneg i32 %5 to i64
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.fh
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !12
end_hunk_2
begin_hunk_3_@check_block:bb.a
  %i.fl = fdiv double %i.fk, %i.p                 ; 2 uses
  %i.fm = fmul double %i.fl, %i.fl
  %i.fn = tail call double @llvm.fmuladd.f64(double %i.fg, double %i.fg, double %i.fm)
  %6 = sub nuw nsw i32 1, %.1
  %i.fo = zext nneg i32 %6 to i64
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.fo
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !12
end_hunk_3
begin_hunk_4_@check_block:bb.a
  br i1 %i.ga, label %bb.ax, label %bb.bm

bb.ax:                                            ; preds = %bb.aw
  %7 = sub nuw nsw i32 1, %.1923
  %i.gb = zext nneg i32 %7 to i64
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.gb
  %i.gd = load double, ptr %i.gc, align 8, !tbaa !12
  %i.ge = fsub double %i.gd, %i.dd
  %i.gf = fdiv double %i.ge, %i.m                 ; 2 uses
  %8 = sub nuw nsw i32 1, %.1913
  %i.gg = zext nneg i32 %8 to i64
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.gg
  %i.gi = load double, ptr %i.gh, align 8, !tbaa !12
end_hunk_4
begin_hunk_5_@check_block:bb.a
  %i.gk = fdiv double %i.gj, %i.p                 ; 2 uses
  %i.gl = fmul double %i.gk, %i.gk
  %i.gm = tail call double @llvm.fmuladd.f64(double %i.gf, double %i.gf, double %i.gl)
  %9 = sub nuw nsw i32 1, %.1
  %i.gn = zext nneg i32 %9 to i64
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.gn
  %i.gp = load double, ptr %i.go, align 8, !tbaa !12
end_hunk_5
begin_hunk_6_@check_block:bb.a
  br i1 %i.hc, label %bb.az, label %bb.bm

bb.az:                                            ; preds = %bb.ay
  %10 = sub nuw nsw i32 1, %.1923
  %i.hd = zext nneg i32 %10 to i64
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.hd
  %i.hf = load double, ptr %i.he, align 8, !tbaa !12
  %i.hg = fsub double %i.hf, %i.dd
  %i.hh = fdiv double %i.hg, %i.m                 ; 2 uses
  %11 = sub nuw nsw i32 1, %.1913
  %i.hi = zext nneg i32 %11 to i64
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.hi
  %i.hk = load double, ptr %i.hj, align 8, !tbaa !12
end_hunk_6
begin_hunk_7_@check_block:bb.a
  %i.hm = fdiv double %i.hl, %i.p                 ; 2 uses
  %i.hn = fmul double %i.hm, %i.hm
  %i.ho = tail call double @llvm.fmuladd.f64(double %i.hh, double %i.hh, double %i.hn)
  %12 = sub nuw nsw i32 1, %.1
  %i.hp = zext nneg i32 %12 to i64
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.hp
  %i.hr = load double, ptr %i.hq, align 8, !tbaa !12
end_hunk_7
begin_hunk_8_@check_block:bb.a
  br i1 %i.ib, label %bb.bd, label %bb.bm

bb.bd:                                            ; preds = %bb.bc
  %13 = sub nuw nsw i32 1, %.1923
  %i.ic = zext nneg i32 %13 to i64
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ic
  %i.ie = load double, ptr %i.id, align 8, !tbaa !12
  %i.if = fsub double %i.ie, %i.dd
  %i.ig = fdiv double %i.if, %i.m                 ; 2 uses
  %14 = sub nuw nsw i32 1, %.1913
  %i.ih = zext nneg i32 %14 to i64
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.ih
  %i.ij = load double, ptr %i.ii, align 8, !tbaa !12
end_hunk_8
begin_hunk_9_@check_block:bb.a
  %i.il = fdiv double %i.ik, %i.p                 ; 2 uses
  %i.im = fmul double %i.il, %i.il
  %i.in = tail call double @llvm.fmuladd.f64(double %i.ig, double %i.ig, double %i.im)
  %15 = sub nuw nsw i32 1, %.1
  %i.io = zext nneg i32 %15 to i64
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.io
  %i.iq = load double, ptr %i.ip, align 8, !tbaa !12
end_hunk_9
begin_hunk_10_@check_block:bb.a
  br i1 %i.jd, label %bb.bf, label %bb.bm

bb.bf:                                            ; preds = %bb.be
  %16 = sub nuw nsw i32 1, %.1923
  %i.je = zext nneg i32 %16 to i64
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.je
  %i.jg = load double, ptr %i.jf, align 8, !tbaa !12
  %i.jh = fsub double %i.jg, %i.dd
  %i.ji = fdiv double %i.jh, %i.m                 ; 2 uses
  %17 = sub nuw nsw i32 1, %.1913
  %i.jj = zext nneg i32 %17 to i64
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.jj
  %i.jl = load double, ptr %i.jk, align 8, !tbaa !12
end_hunk_10
begin_hunk_11_@check_block:bb.a
  %i.jn = fdiv double %i.jm, %i.p                 ; 2 uses
  %i.jo = fmul double %i.jn, %i.jn
  %i.jp = tail call double @llvm.fmuladd.f64(double %i.ji, double %i.ji, double %i.jo)
  %18 = sub nuw nsw i32 1, %.1
  %i.jq = zext nneg i32 %18 to i64
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.jq
  %i.js = load double, ptr %i.jr, align 8, !tbaa !12
end_hunk_11
begin_hunk_12_@check_block:bb.a
  br i1 %i.kf, label %bb.bj, label %bb.bm

bb.bj:                                            ; preds = %bb.bi
  %19 = sub nuw nsw i32 1, %.1923
  %i.kg = zext nneg i32 %19 to i64
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.kg
  %i.ki = load double, ptr %i.kh, align 8, !tbaa !12
  %i.kj = fsub double %i.ki, %i.dd
  %i.kk = fdiv double %i.kj, %i.m                 ; 2 uses
  %20 = sub nuw nsw i32 1, %.1913
  %i.kl = zext nneg i32 %20 to i64
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.kl
  %i.kn = load double, ptr %i.km, align 8, !tbaa !12
end_hunk_12
begin_hunk_13_@check_block:bb.a
  %i.kp = fdiv double %i.ko, %i.p                 ; 2 uses
  %i.kq = fmul double %i.kp, %i.kp
  %i.kr = tail call double @llvm.fmuladd.f64(double %i.kk, double %i.kk, double %i.kq)
  %21 = sub nuw nsw i32 1, %.1
  %i.ks = zext nneg i32 %21 to i64
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ks
  %i.ku = load double, ptr %i.kt, align 8, !tbaa !12
end_hunk_13
begin_hunk_14_@check_block:bb.a
  br i1 %i.lf, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %22 = sub nuw nsw i32 1, %.1923
  %i.lg = zext nneg i32 %22 to i64
  %i.lh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.lg
  %i.li = load double, ptr %i.lh, align 8, !tbaa !12
  %i.lj = fsub double %i.li, %i.dd
  %i.lk = fdiv double %i.lj, %i.m                 ; 2 uses
  %23 = sub nuw nsw i32 1, %.1913
  %i.ll = zext nneg i32 %23 to i64
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.ll
  %i.ln = load double, ptr %i.lm, align 8, !tbaa !12
end_hunk_14
begin_hunk_15_@check_block:bb.a
  %i.lp = fdiv double %i.lo, %i.p                 ; 2 uses
  %i.lq = fmul double %i.lp, %i.lp
  %i.lr = tail call double @llvm.fmuladd.f64(double %i.lk, double %i.lk, double %i.lq)
  %24 = sub nuw nsw i32 1, %.1
  %i.ls = zext nneg i32 %24 to i64
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ls
  %i.lu = load double, ptr %i.lt, align 8, !tbaa !12
end_hunk_15
begin_hunk_16_@check_block:bb.a
  br i1 %.not997, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %25 = sub nuw nsw i32 1, %.3915
  %i.sf = zext nneg i32 %25 to i64
  %i.sg = getelementptr inbounds nuw [8 x i8], ptr %i.px, i64 %i.sf
  %i.sh = load double, ptr %i.sg, align 8, !tbaa !12
end_hunk_16
begin_hunk_17_@check_block:bb.a
  %i.sj = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.0934
  %i.sk = load double, ptr %i.sj, align 8, !tbaa !12
  %i.sl = fdiv double %i.si, %i.sk                ; 2 uses
  %26 = sub nuw nsw i32 1, %.3
  %i.sm = zext nneg i32 %26 to i64
  %i.sn = getelementptr inbounds nuw [8 x i8], ptr %i.qi, i64 %i.sm
  %i.so = load double, ptr %i.sn, align 8, !tbaa !12
end_hunk_17
begin_hunk_18_@check_block:bb.a
  br i1 %i.td, label %bb.dz, label %bb.et

bb.dz:                                            ; preds = %bb.dy
  %27 = sub nuw nsw i32 1, %.3915
  %i.te = zext nneg i32 %27 to i64
  %i.tf = getelementptr inbounds nuw [8 x i8], ptr %i.px, i64 %i.te
  %i.tg = load double, ptr %i.tf, align 8, !tbaa !12
end_hunk_18
begin_hunk_19_@check_block:bb.a
  %i.ti = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.0934
  %i.tj = load double, ptr %i.ti, align 8, !tbaa !12
  %i.tk = fdiv double %i.th, %i.tj                ; 2 uses
  %28 = sub nuw nsw i32 1, %.3
  %i.tl = zext nneg i32 %28 to i64
  %i.tm = getelementptr inbounds nuw [8 x i8], ptr %i.qi, i64 %i.tl
  %i.tn = load double, ptr %i.tm, align 8, !tbaa !12
end_hunk_19
begin_hunk_20_@check_block:bb.a
  br i1 %i.ua, label %bb.ed, label %bb.et

bb.ed:                                            ; preds = %bb.ec
  %29 = sub nuw nsw i32 1, %.3915
  %i.ub = zext nneg i32 %29 to i64
  %i.uc = getelementptr inbounds nuw [8 x i8], ptr %i.px, i64 %i.ub
  %i.ud = load double, ptr %i.uc, align 8, !tbaa !12
  %i.ue = fsub double %i.ud, %i.pw
  %i.uf = fdiv double %i.ue, %i.tz                ; 2 uses
  %30 = sub nuw nsw i32 1, %.3
  %i.ug = zext nneg i32 %30 to i64
  %i.uh = getelementptr inbounds nuw [8 x i8], ptr %i.qi, i64 %i.ug
  %i.ui = load double, ptr %i.uh, align 8, !tbaa !12
end_hunk_20
begin_hunk_21_@check_block:bb.a
  br i1 %i.vc, label %bb.ef, label %bb.et

bb.ef:                                            ; preds = %bb.ee
  %31 = sub nuw nsw i32 1, %.3915
  %i.vd = zext nneg i32 %31 to i64
  %i.ve = getelementptr inbounds nuw [8 x i8], ptr %i.px, i64 %i.vd
  %i.vf = load double, ptr %i.ve, align 8, !tbaa !12
  %i.vg = fsub double %i.vf, %i.pw
  %i.vh = fdiv double %i.vg, %i.ur                ; 2 uses
  %32 = sub nuw nsw i32 1, %.3
  %i.vi = zext nneg i32 %32 to i64
  %i.vj = getelementptr inbounds nuw [8 x i8], ptr %i.qi, i64 %i.vi
  %i.vk = load double, ptr %i.vj, align 8, !tbaa !12
end_hunk_21
