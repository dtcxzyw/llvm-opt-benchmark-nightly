inline.NumInlined: 6
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@get_coeffs:bb.a
  store double 0.000000e+00, ptr %i.fb, align 8, !tbaa !60
  %i.fc = fsub nsz double 2.000000e+00, %i.ew
  %i.fd = fdiv nsz double %i.fc, %i.ex
  store double %i.fd, ptr %i.ev, align 8, !tbaa !81
  %i.fe = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store double 0.000000e+00, ptr %i.fe, align 8, !tbaa !58
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %calc_q_factors.exit242
  br i1 %i.du, label %.lr.ph252, label %.loopexit

.lr.ph252:                                        ; preds = %bb.i
  %i.ff = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.fg = fmul nsz double %i.n, %i.n              ; 2 uses
  %i.fh = tail call nsz double @llvm.fmuladd.f64(double %i.n, double %i.n, double -1.000000e+00)
  %i.fi = fmul nsz double %i.fh, -2.000000e+00    ; 2 uses
  %i.fj = and i32 %i.dp, 1
  %i.fk = zext nneg i32 %i.fj to i64              ; 5 uses
  %i.fl = zext nneg i32 %i.dr to i64              ; 2 uses
  %i.fm = zext nneg i32 %i.ds to i64              ; 2 uses
  %i.fn = add nuw nsw i64 %i.fk, 1
  %i.fo = tail call i64 @llvm.umax.i64(i64 %i.fn, i64 %i.fm)
  %i.fp = sub nsw i64 %i.fo, %i.fk                ; 3 uses
  %min.iters.check51 = icmp ult i64 %i.fp, 2
  br i1 %min.iters.check51, label %scalar.ph50.preheader, label %vector.ph52

vector.ph52:                                      ; preds = %.lr.ph252
  %n.vec53 = and i64 %i.fp, -2                    ; 3 uses
  %i.fq = or disjoint i64 %n.vec53, %i.fk
  %broadcast.splatinsert54 = insertelement <2 x double> poison, double %i.fg, i64 0
  %broadcast.splat55 = shufflevector <2 x double> %broadcast.splatinsert54, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert56 = insertelement <2 x double> poison, double %i.fi, i64 0
  %broadcast.splat57 = shufflevector <2 x double> %broadcast.splatinsert56, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert58 = insertelement <2 x double> poison, double %i.n, i64 0
  %broadcast.splat59 = shufflevector <2 x double> %broadcast.splatinsert58, <2 x double> poison, <2 x i32> zeroinitializer ; 5 uses
  br label %vector.body60

vector.body60:                                    ; preds = %vector.body60, %vector.ph52
  %index61 = phi i64 [ 0, %vector.ph52 ], [ %index.next62, %vector.body60 ] ; 2 uses
  %i.fr = or disjoint i64 %index61, %i.fk         ; 2 uses
  %i.fs = getelementptr inbounds nuw [40 x i8], ptr %i.ff, i64 %i.fr
  %i.ft = sub nuw nsw i64 %i.fr, %i.fl
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ft
  %wide.load = load <2 x double>, ptr %i.fu, align 8, !tbaa !57
  %i.fv = fdiv nsz <2 x double> %broadcast.splat59, %wide.load ; 2 uses
  %i.fw = fadd nsz <2 x double> %i.fv, splat (double 1.000000e+00)
  %i.fx = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat59, <2 x double> %broadcast.splat59, <2 x double> %i.fw)
  %i.fy = fdiv nsz <2 x double> splat (double 1.000000e+00), %i.fx ; 3 uses
  %i.fz = fmul nsz <2 x double> %broadcast.splat55, %i.fy ; 3 uses
  %i.ga = fmul nsz <2 x double> %i.fz, splat (double 2.000000e+00)
  %i.gb = fmul nsz <2 x double> %broadcast.splat57, %i.fy
  %i.gc = fsub nsz <2 x double> splat (double 1.000000e+00), %i.fv
  %i.gd = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat59, <2 x double> %broadcast.splat59, <2 x double> %i.gc)
  %i.ge = fneg nsz <2 x double> %i.gd
  %i.gf = fmul nsz <2 x double> %i.fy, %i.ge
  %i.gg = shufflevector <2 x double> %i.gb, <2 x double> %i.gf, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.gh = shufflevector <2 x double> %i.fz, <2 x double> %i.ga, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.gi = shufflevector <4 x double> %i.gg, <4 x double> %i.gh, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.gj = shufflevector <2 x double> %i.fz, <2 x double> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <8 x double> %i.gi, <8 x double> %i.gj, <10 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 1, i32 3, i32 5, i32 7, i32 9>
  store <10 x double> %interleaved.vec, ptr %i.fs, align 8, !tbaa !57
  %index.next62 = add nuw i64 %index61, 2         ; 2 uses
  %i.gk = icmp eq i64 %index.next62, %n.vec53
  br i1 %i.gk, label %middle.block63, label %vector.body60, !llvm.loop !86

middle.block63:                                   ; preds = %vector.body60
  %cmp.n64 = icmp eq i64 %i.fp, %n.vec53
  br i1 %cmp.n64, label %.loopexit, label %scalar.ph50.preheader

scalar.ph50.preheader:                            ; preds = %.lr.ph252, %middle.block63
  %indvars.iv267.ph = phi i64 [ %i.fk, %.lr.ph252 ], [ %i.fq, %middle.block63 ]
  %i.gl = insertelement <2 x double> poison, double %i.n, i64 0
  %i.gm = shufflevector <2 x double> %i.gl, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %scalar.ph50

scalar.ph50:                                      ; preds = %scalar.ph50.preheader, %scalar.ph50
  %indvars.iv267 = phi i64 [ %indvars.iv.next268, %scalar.ph50 ], [ %indvars.iv267.ph, %scalar.ph50.preheader ] ; 3 uses
  %i.gn = getelementptr inbounds nuw [40 x i8], ptr %i.ff, i64 %indvars.iv267 ; 5 uses
  %i.go = sub nuw nsw i64 %indvars.iv267, %i.fl
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.go
  %i.gq = load double, ptr %i.gp, align 8, !tbaa !57
  %i.gr = fdiv nsz double %i.n, %i.gq             ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gn, i64 24
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gn, i64 32
  %i.gv = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.gr, i64 0
  %i.gw = insertelement <2 x double> <double -1.000000e+00, double poison>, double %i.gr, i64 1
  %i.gx = fsub nsz <2 x double> %i.gv, %i.gw
  %i.gy = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gm, <2 x double> %i.gm, <2 x double> %i.gx) ; 2 uses
  %i.gz = extractelement <2 x double> %i.gy, i64 0
  %i.ha = fdiv nsz double 1.000000e+00, %i.gz     ; 3 uses
  %i.hb = fmul nsz double %i.fg, %i.ha            ; 3 uses
  store double %i.hb, ptr %i.gs, align 8, !tbaa !80
  %i.hc = fmul nsz double %i.hb, 2.000000e+00
  store double %i.hc, ptr %i.gt, align 8, !tbaa !66
  store double %i.hb, ptr %i.gu, align 8, !tbaa !60
  %i.hd = fmul nsz double %i.fi, %i.ha
  store double %i.hd, ptr %i.gn, align 8, !tbaa !81
  %i.he = extractelement <2 x double> %i.gy, i64 1
  %i.hf = fneg nsz double %i.he
  %i.hg = fmul nsz double %i.ha, %i.hf
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  store double %i.hg, ptr %i.hh, align 8, !tbaa !58
  %indvars.iv.next268 = add nuw nsw i64 %indvars.iv267, 1 ; 2 uses
  %i.hi = icmp samesign ult i64 %indvars.iv.next268, %i.fm
  br i1 %i.hi, label %scalar.ph50, label %.loopexit, !llvm.loop !87

bb.j:                                             ; preds = %bb.f
  %i.hj = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.t, ptr noundef nonnull dereferenceable(11) @.str.4) #10
  %.not227 = icmp eq i32 %i.hj, 0
  br i1 %.not227, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.hk = fmul nsz double %i.l, f0x401921FB54442D18 ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.hm = load i32, ptr %i.hl, align 8, !tbaa !75 ; 2 uses
  %i.hn = sdiv i32 %i.hm, 2                       ; 3 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  store i32 %i.hn, ptr %i.ho, align 4, !tbaa !53
  %i.hp = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.hq = load double, ptr %i.hp, align 8, !tbaa !88
  %i.hr = fmul nsz double %i.hq, 2.000000e+00
  %i.hs = fdiv nsz double %i.hk, %i.hr
  %i.ht = tail call nsz double @llvm.tan.f64(double %i.hs)
  %i.hu = fmul nsz double %i.ht, 2.000000e+00
  %i.hv = tail call nsz double @llvm.sin.f64(double %i.hk)
  %i.hw = fdiv nsz double %i.hu, %i.hv            ; 3 uses
  %i.hx = icmp sgt i32 %i.hm, 1
  br i1 %i.hx, label %.lr.ph250, label %.loopexit

.lr.ph250:                                        ; preds = %bb.k
  %i.hy = sitofp nsz i32 %i.hn to double
  %i.hz = fmul nnan nsz double %i.hy, 2.000000e+00 ; 2 uses
  %i.ia = fmul nsz double %i.hw, 5.000000e-01     ; 4 uses
  %square = fmul nsz double %i.ia, %i.ia
  %i.ib = fadd nsz double %square, 1.000000e+00   ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 6 uses
  %i.id = fmul nsz double %i.hk, 5.000000e-01
  %i.ie = tail call nsz double @llvm.tan.f64(double %i.id) ; 3 uses
  %i.if = zext nneg i32 %i.hn to i64              ; 2 uses
  %i.ig = tail call i64 @llvm.umax.i64(i64 %i.if, i64 2)
  %i.ih = add nsw i64 %i.ig, -1
  %i.ii = lshr i64 %i.ih, 1                       ; 2 uses
  %i.ij = add nuw nsw i64 %i.ii, 1                ; 2 uses
  %min.iters.check17 = icmp eq i64 %i.ii, 0
  br i1 %min.iters.check17, label %scalar.ph16.preheader, label %vector.ph18

vector.ph18:                                      ; preds = %.lr.ph250
  %n.vec19 = and i64 %i.ij, 9223372036854775806   ; 3 uses
  %i.ik = shl nuw i64 %n.vec19, 1
  %broadcast.splatinsert20 = insertelement <2 x double> poison, double %i.hz, i64 0
  %broadcast.splat21 = shufflevector <2 x double> %broadcast.splatinsert20, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert22 = insertelement <2 x double> poison, double %i.ia, i64 0
  %broadcast.splat23 = shufflevector <2 x double> %broadcast.splatinsert22, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert24 = insertelement <2 x double> poison, double %i.ib, i64 0
  %broadcast.splat25 = shufflevector <2 x double> %broadcast.splatinsert24, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert26 = insertelement <2 x double> poison, double %i.ie, i64 0
  %broadcast.splat27 = shufflevector <2 x double> %broadcast.splatinsert26, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert28 = insertelement <2 x double> poison, double %i.hw, i64 0
  %broadcast.splat29 = shufflevector <2 x double> %broadcast.splatinsert28, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body30

vector.body30:                                    ; preds = %vector.body30, %vector.ph18
  %index31 = phi i64 [ 0, %vector.ph18 ], [ %index.next32, %vector.body30 ] ; 2 uses
  %i.il = shl nuw i64 %index31, 1                 ; 4 uses
  %i.im = or disjoint i64 %i.il, 1                ; 2 uses
  %i.in = or disjoint i64 %i.il, 3                ; 2 uses
  %i.io = insertelement <2 x i64> poison, i64 %i.im, i64 0
  %i.ip = insertelement <2 x i64> %i.io, i64 %i.in, i64 1
  %i.iq = trunc nuw nsw <2 x i64> %i.ip to <2 x i32>
  %i.ir = uitofp nneg <2 x i32> %i.iq to <2 x double>
  %i.is = fmul nnan nsz <2 x double> %i.ir, splat (double f0x400921FB54442D18)
  %i.it = fdiv nsz <2 x double> %i.is, %broadcast.splat21
  %i.iu = tail call nsz <2 x double> @llvm.sin.v2f64(<2 x double> %i.it)
  %i.iv = fmul nsz <2 x double> %i.iu, splat (double 2.000000e+00) ; 2 uses
  %i.iw = fmul nsz <2 x double> %broadcast.splat29, %i.iv ; 2 uses
  %i.ix = fmul nsz <2 x double> %i.iw, splat (double 5.000000e-01)
  %i.iy = fdiv nsz <2 x double> %broadcast.splat25, %i.ix ; 3 uses
  %i.iz = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.iy, <2 x double> %i.iy, <2 x double> splat (double -1.000000e+00))
  %i.ja = tail call nsz <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.iz)
  %i.jb = fadd nsz <2 x double> %i.iy, %i.ja
  %i.jc = fdiv nsz <2 x double> %i.iw, %i.jb
  %i.jd = tail call nsz <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.jc) ; 3 uses
  %i.je = fmul nsz <2 x double> %broadcast.splat23, %i.iv
  %i.jf = fdiv nsz <2 x double> %i.je, %i.jd      ; 3 uses
  %i.jg = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jf, <2 x double> %i.jf, <2 x double> splat (double -1.000000e+00))
  %i.jh = tail call nsz <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.jg)
  %i.ji = fadd nsz <2 x double> %i.jf, %i.jh      ; 4 uses
  %i.jj = fmul nsz <2 x double> %i.jd, splat (double 5.000000e-01) ; 3 uses
  %i.jk = fneg nsz <2 x double> %i.jj             ; 2 uses
  %i.jl = fdiv nsz <2 x double> splat (double 1.000000e+00), %i.ji
  %i.jm = fsub nsz <2 x double> %i.ji, %i.jl
  %i.jn = fdiv nsz <2 x double> %i.jm, %i.jd      ; 2 uses
  %i.jo = fmul nsz <2 x double> %i.jn, %i.jn
  %i.jp = fadd nsz <2 x double> %i.jo, splat (double 1.000000e+00)
  %i.jq = tail call nsz <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.jp) ; 2 uses
  %i.jr = fmul nsz <2 x double> %broadcast.splat27, %i.ji
  %i.js = tail call nsz <2 x double> @llvm.atan.v2f64(<2 x double> %i.jr)
  %i.jt = fdiv nsz <2 x double> %broadcast.splat27, %i.ji
  %i.ju = tail call nsz <2 x double> @llvm.atan.v2f64(<2 x double> %i.jt)
  %i.jv = getelementptr inbounds nuw [40 x i8], ptr %i.ic, i64 %i.il ; 5 uses
  %i.jw = getelementptr inbounds nuw [40 x i8], ptr %i.ic, i64 %i.il ; 3 uses
  %i.jx = fmul nsz <2 x double> %i.js, splat (double 2.000000e+00)
  %i.jy = tail call nsz { <2 x double>, <2 x double> } @llvm.sincos.v2f64(<2 x double> %i.jx) ; 2 uses
  %i.jz = extractvalue { <2 x double>, <2 x double> } %i.jy, 0 ; 2 uses
  %i.ka = extractvalue { <2 x double>, <2 x double> } %i.jy, 1
  %i.kb = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jk, <2 x double> %i.jz, <2 x double> splat (double 1.000000e+00))
  %i.kc = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jj, <2 x double> %i.jz, <2 x double> splat (double 1.000000e+00))
  %i.kd = fdiv nsz <2 x double> %i.kb, %i.kc
  %i.ke = fmul nsz <2 x double> %i.kd, splat (double 5.000000e-01) ; 3 uses
  %i.kf = fadd nsz <2 x double> %i.ke, splat (double 5.000000e-01)
  %i.kg = fmul nsz <2 x double> %i.ka, %i.kf
  %i.kh = fsub nsz <2 x double> splat (double 5.000000e-01), %i.ke
  %i.ki = fmul nsz <2 x double> %i.kh, splat (double 5.000000e-01)
  %i.kj = fmul nsz <2 x double> %i.jq, %i.ki      ; 2 uses
  %i.kk = fmul nsz <2 x double> %i.kg, splat (double 2.000000e+00) ; 2 uses
  %i.kl = extractelement <2 x double> %i.kk, i64 0
  store double %i.kl, ptr %i.jv, align 8, !tbaa !81
  %i.km = fmul nsz <2 x double> %i.ke, splat (double -2.000000e+00) ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  %i.ko = getelementptr inbounds nuw i8, ptr %i.jw, i64 88
  %i.kp = extractelement <2 x double> %i.km, i64 0
  store double %i.kp, ptr %i.kn, align 8, !tbaa !58
  %i.kq = fmul nsz <2 x double> %i.kj, splat (double 2.000000e+00) ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.jv, i64 16
  %1 = extractelement <2 x double> %i.kq, i64 0
  store double %1, ptr %i.kr, align 8, !tbaa !80
  %i.ks = shufflevector <2 x double> %i.km, <2 x double> %i.kq, <2 x i32> <i32 1, i32 3>
  store <2 x double> %i.ks, ptr %i.ko, align 8, !tbaa !57
  %i.kt = getelementptr inbounds nuw i8, ptr %i.jv, i64 24
  %2 = getelementptr inbounds nuw i8, ptr %i.jw, i64 104
  store double 0.000000e+00, ptr %i.kt, align 8, !tbaa !66
  store double 0.000000e+00, ptr %2, align 8, !tbaa !66
  %3 = fmul nsz <2 x double> %i.kj, splat (double -2.000000e+00) ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %i.jv, i64 32
  %5 = getelementptr inbounds nuw i8, ptr %i.jw, i64 112
  %6 = extractelement <2 x double> %3, i64 0
  store double %6, ptr %4, align 8, !tbaa !60
  %i.ku = getelementptr inbounds nuw [40 x i8], ptr %i.ic, i64 %i.im ; 5 uses
  %i.kv = getelementptr inbounds nuw [40 x i8], ptr %i.ic, i64 %i.in ; 3 uses
  %i.kw = fmul nsz <2 x double> %i.ju, splat (double 2.000000e+00)
  %i.kx = tail call nsz { <2 x double>, <2 x double> } @llvm.sincos.v2f64(<2 x double> %i.kw) ; 2 uses
  %i.ky = extractvalue { <2 x double>, <2 x double> } %i.kx, 0 ; 2 uses
  %i.kz = extractvalue { <2 x double>, <2 x double> } %i.kx, 1
  %i.la = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jk, <2 x double> %i.ky, <2 x double> splat (double 1.000000e+00))
  %i.lb = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jj, <2 x double> %i.ky, <2 x double> splat (double 1.000000e+00))
  %i.lc = fdiv nsz <2 x double> %i.la, %i.lb
  %i.ld = fmul nsz <2 x double> %i.lc, splat (double 5.000000e-01) ; 3 uses
  %i.le = fadd nsz <2 x double> %i.ld, splat (double 5.000000e-01)
  %i.lf = fmul nsz <2 x double> %i.kz, %i.le
  %i.lg = fsub nsz <2 x double> splat (double 5.000000e-01), %i.ld
  %i.lh = fmul nsz <2 x double> %i.lg, splat (double 5.000000e-01)
  %i.li = fmul nsz <2 x double> %i.jq, %i.lh      ; 2 uses
  %i.lj = fmul nsz <2 x double> %i.lf, splat (double 2.000000e+00) ; 2 uses
  %i.lk = extractelement <2 x double> %i.lj, i64 0
  store double %i.lk, ptr %i.ku, align 8, !tbaa !81
  %7 = shufflevector <2 x double> %3, <2 x double> %i.lj, <2 x i32> <i32 1, i32 3>
  store <2 x double> %7, ptr %5, align 8, !tbaa !57
  %i.ll = fmul nsz <2 x double> %i.ld, splat (double -2.000000e+00) ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %i.ku, i64 8
  %i.lm = getelementptr inbounds nuw i8, ptr %i.kv, i64 8
  %i.ln = extractelement <2 x double> %i.ll, i64 0
  store double %i.ln, ptr %8, align 8, !tbaa !58
  %9 = fmul nsz <2 x double> %i.li, splat (double 2.000000e+00) ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %i.ku, i64 16
  %11 = extractelement <2 x double> %9, i64 0
  store double %11, ptr %10, align 8, !tbaa !80
  %12 = shufflevector <2 x double> %i.ll, <2 x double> %9, <2 x i32> <i32 1, i32 3>
  store <2 x double> %12, ptr %i.lm, align 8, !tbaa !57
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ku, i64 24
  %13 = getelementptr inbounds nuw i8, ptr %i.kv, i64 24
  store double 0.000000e+00, ptr %i.lo, align 8, !tbaa !66
  store double 0.000000e+00, ptr %13, align 8, !tbaa !66
  %i.lp = fmul nsz <2 x double> %i.li, splat (double -2.000000e+00) ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ku, i64 32
  %i.lr = getelementptr inbounds nuw i8, ptr %i.kv, i64 32
  %i.ls = shufflevector <2 x double> %i.lp, <2 x double> %i.kk, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.ls, ptr %i.lq, align 8, !tbaa !57
  %i.lt = extractelement <2 x double> %i.lp, i64 1
  store double %i.lt, ptr %i.lr, align 8, !tbaa !60
  %index.next32 = add nuw i64 %index31, 2         ; 2 uses
  %i.lu = icmp eq i64 %index.next32, %n.vec19
  br i1 %i.lu, label %middle.block33, label %vector.body30, !llvm.loop !89

middle.block33:                                   ; preds = %vector.body30
  %cmp.n34 = icmp eq i64 %i.ij, %n.vec19
  br i1 %cmp.n34, label %.loopexit, label %scalar.ph16.preheader

scalar.ph16.preheader:                            ; preds = %.lr.ph250, %middle.block33
  %indvars.iv264.ph = phi i64 [ 0, %.lr.ph250 ], [ %i.ik, %middle.block33 ]
  br label %scalar.ph16

scalar.ph16:                                      ; preds = %scalar.ph16.preheader, %scalar.ph16
  %indvars.iv264 = phi i64 [ %indvars.iv.next265, %scalar.ph16 ], [ %indvars.iv264.ph, %scalar.ph16.preheader ] ; 3 uses
  %i.lv = or disjoint i64 %indvars.iv264, 1       ; 2 uses
  %i.lw = trunc nuw nsw i64 %i.lv to i32
  %i.lx = uitofp nneg i32 %i.lw to double
  %i.ly = fmul nnan nsz double %i.lx, f0x400921FB54442D18
  %i.lz = fdiv nsz double %i.ly, %i.hz
  %i.ma = tail call nsz double @llvm.sin.f64(double %i.lz)
  %i.mb = fmul nsz double %i.ma, 2.000000e+00     ; 2 uses
  %i.mc = fmul nsz double %i.hw, %i.mb            ; 2 uses
  %i.md = fmul nsz double %i.mc, 5.000000e-01
  %i.me = fdiv nsz double %i.ib, %i.md            ; 3 uses
  %i.mf = tail call nsz double @llvm.fmuladd.f64(double %i.me, double %i.me, double -1.000000e+00)
  %i.mg = tail call nsz double @llvm.sqrt.f64(double %i.mf)
  %i.mh = fadd nsz double %i.me, %i.mg
  %i.mi = fdiv nsz double %i.mc, %i.mh
  %i.mj = tail call nsz double @llvm.sqrt.f64(double %i.mi) ; 3 uses
  %i.mk = fmul nsz double %i.ia, %i.mb
  %i.ml = fdiv nsz double %i.mk, %i.mj            ; 3 uses
  %i.mm = tail call nsz double @llvm.fmuladd.f64(double %i.ml, double %i.ml, double -1.000000e+00)
  %i.mn = tail call nsz double @llvm.sqrt.f64(double %i.mm)
  %i.mo = fadd nsz double %i.ml, %i.mn            ; 3 uses
  %i.mp = fmul nsz double %i.mj, 5.000000e-01     ; 2 uses
  %i.mq = fneg nsz double %i.mp
  %i.mr = fmul nsz double %i.ie, %i.mo
  %i.ms = tail call nsz double @llvm.atan.f64(double %i.mr)
  %i.mt = fdiv nsz double %i.ie, %i.mo
  %i.mu = tail call nsz double @llvm.atan.f64(double %i.mt)
  %i.mv = getelementptr inbounds nuw [40 x i8], ptr %i.ic, i64 %indvars.iv264 ; 4 uses
  %.0218 = fmul nsz double %i.ms, 2.000000e+00
  %sincos = tail call nsz { double, double } @llvm.sincos.f64(double %.0218) ; 2 uses
  %sin = extractvalue { double, double } %sincos, 0
  %cos = extractvalue { double, double } %sincos, 1
  %i.mw = insertelement <2 x double> poison, double %i.mq, i64 0
  %i.mx = insertelement <2 x double> %i.mw, double %i.mp, i64 1 ; 2 uses
  %i.my = insertelement <2 x double> poison, double %sin, i64 0
  %i.mz = shufflevector <2 x double> %i.my, <2 x double> poison, <2 x i32> zeroinitializer
  %i.na = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mx, <2 x double> %i.mz, <2 x double> splat (double 1.000000e+00)) ; 2 uses
  %i.nb = extractelement <2 x double> %i.na, i64 0
  %i.nc = extractelement <2 x double> %i.na, i64 1
  %i.nd = fdiv nsz double %i.nb, %i.nc
  %i.ne = fmul nsz double %i.nd, 5.000000e-01     ; 3 uses
  %i.nf = fadd nsz double %i.ne, 5.000000e-01
  %i.ng = fmul nsz double %cos, %i.nf
  %i.nh = fsub nsz double 5.000000e-01, %i.ne
  %i.ni = fmul nsz double %i.nh, 5.000000e-01
  %i.nj = insertelement <2 x double> poison, double %i.ng, i64 0
  %i.nk = insertelement <2 x double> %i.nj, double %i.ne, i64 1
  %i.nl = fmul nsz <2 x double> %i.nk, <double 2.000000e+00, double -2.000000e+00>
  store <2 x double> %i.nl, ptr %i.mv, align 8, !tbaa !57
  %i.nm = getelementptr inbounds nuw i8, ptr %i.mv, i64 16
  %i.nn = getelementptr inbounds nuw i8, ptr %i.mv, i64 24
  store double 0.000000e+00, ptr %i.nn, align 8, !tbaa !66
  %i.no = getelementptr inbounds nuw i8, ptr %i.mv, i64 32
  %i.np = getelementptr inbounds nuw [40 x i8], ptr %i.ic, i64 %i.lv ; 4 uses
  %.0218.1 = fmul nsz double %i.mu, 2.000000e+00
  %sincos.1 = tail call nsz { double, double } @llvm.sincos.f64(double %.0218.1) ; 2 uses
  %sin.1 = extractvalue { double, double } %sincos.1, 0
  %cos.1 = extractvalue { double, double } %sincos.1, 1
  %i.nq = insertelement <2 x double> poison, double %sin.1, i64 0
  %i.nr = shufflevector <2 x double> %i.nq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ns = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mx, <2 x double> %i.nr, <2 x double> splat (double 1.000000e+00)) ; 2 uses
  %i.nt = shufflevector <2 x double> %i.ns, <2 x double> <double 1.000000e+00, double poison>, <2 x i32> <i32 2, i32 0>
  %i.nu = insertelement <2 x double> %i.ns, double %i.mo, i64 0 ; 2 uses
  %i.nv = fdiv nsz <2 x double> %i.nt, %i.nu
  %i.nw = fmul nsz <2 x double> %i.nv, <double 1.000000e+00, double 5.000000e-01> ; 3 uses
  %i.nx = insertelement <2 x double> %i.nu, double 5.000000e-01, i64 1
  %i.ny = fsub nsz <2 x double> %i.nx, %i.nw      ; 2 uses
  %i.nz = extractelement <2 x double> %i.ny, i64 0
  %i.oa = fdiv nsz double %i.nz, %i.mj            ; 2 uses
  %square228 = fmul nsz double %i.oa, %i.oa
  %i.ob = fadd nsz double %square228, 1.000000e+00
  %i.oc = tail call nsz double @llvm.sqrt.f64(double %i.ob) ; 2 uses
  %i.od = fmul nsz double %i.oc, %i.ni            ; 2 uses
  %i.oe = fmul nsz double %i.od, 2.000000e+00
  store double %i.oe, ptr %i.nm, align 8, !tbaa !80
  %i.of = fmul nsz double %i.od, -2.000000e+00
  store double %i.of, ptr %i.no, align 8, !tbaa !60
  %i.og = extractelement <2 x double> %i.nw, i64 1
  %i.oh = fadd nsz double %i.og, 5.000000e-01
  %i.oi = fmul nsz double %cos.1, %i.oh
  %i.oj = extractelement <2 x double> %i.ny, i64 1
  %i.ok = fmul nsz double %i.oj, 5.000000e-01
  %i.ol = fmul nsz double %i.oc, %i.ok            ; 2 uses
  %i.om = insertelement <2 x double> %i.nw, double %i.oi, i64 0
  %i.on = fmul nsz <2 x double> %i.om, <double 2.000000e+00, double -2.000000e+00>
  store <2 x double> %i.on, ptr %i.np, align 8, !tbaa !57
  %i.oo = fmul nsz double %i.ol, 2.000000e+00
  %i.op = getelementptr inbounds nuw i8, ptr %i.np, i64 16
  store double %i.oo, ptr %i.op, align 8, !tbaa !80
  %i.oq = getelementptr inbounds nuw i8, ptr %i.np, i64 24
  store double 0.000000e+00, ptr %i.oq, align 8, !tbaa !66
  %i.or = fmul nsz double %i.ol, -2.000000e+00
  %i.os = getelementptr inbounds nuw i8, ptr %i.np, i64 32
  store double %i.or, ptr %i.os, align 8, !tbaa !60
  %indvars.iv.next265 = add nuw nsw i64 %indvars.iv264, 2 ; 2 uses
  %i.ot = icmp samesign ult i64 %indvars.iv.next265, %i.if
  br i1 %i.ot, label %scalar.ph16, label %.loopexit, !llvm.loop !90

bb.l:                                             ; preds = %bb.j
  %i.ou = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.t, ptr noundef nonnull dereferenceable(11) @.str.6) #10
  %.not229 = icmp eq i32 %i.ou, 0
  br i1 %.not229, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %bb.l
  %i.ov = fmul nsz double %i.l, f0x401921FB54442D18 ; 3 uses
  %sincos230 = tail call nsz { double, double } @llvm.sincos.f64(double %i.ov) ; 2 uses
  %sin231 = extractvalue { double, double } %sincos230, 0
  %cos232 = extractvalue { double, double } %sincos230, 1 ; 4 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ox = load i32, ptr %i.ow, align 8, !tbaa !75 ; 2 uses
  %i.oy = sdiv i32 %i.ox, 2                       ; 3 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  store i32 %i.oy, ptr %i.oz, align 4, !tbaa !53
  %i.pa = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.pb = load double, ptr %i.pa, align 8, !tbaa !88
  %i.pc = fmul nsz double %i.pb, 2.000000e+00
  %i.pd = fdiv nsz double %i.ov, %i.pc
  %i.pe = tail call nsz double @llvm.tan.f64(double %i.pd)
  %i.pf = fmul nsz double %i.pe, 2.000000e+00
  %i.pg = fdiv nsz double %i.pf, %sin231          ; 3 uses
  %i.ph = icmp sgt i32 %i.ox, 1
  br i1 %i.ph, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.m
  %i.pi = sitofp nsz i32 %i.oy to double
  %i.pj = fmul nnan nsz double %i.pi, 2.000000e+00 ; 2 uses
  %i.pk = fmul nsz double %i.pg, 5.000000e-01     ; 4 uses
  %square233 = fmul nsz double %i.pk, %i.pk
  %i.pl = fadd nsz double %square233, 1.000000e+00 ; 2 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 6 uses
  %i.pn = fsub nsz double 1.000000e+00, %cos232   ; 3 uses
  %i.po = fmul nsz double %i.ov, 5.000000e-01
  %i.pp = tail call nsz double @llvm.tan.f64(double %i.po) ; 3 uses
  %i.pq = zext nneg i32 %i.oy to i64              ; 2 uses
  %i.pr = tail call i64 @llvm.umax.i64(i64 %i.pq, i64 2)
  %i.ps = add nsw i64 %i.pr, -1
  %i.pt = lshr i64 %i.ps, 1                       ; 2 uses
  %i.pu = add nuw nsw i64 %i.pt, 1                ; 2 uses
  %min.iters.check = icmp eq i64 %i.pt, 0
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.pu, 9223372036854775806     ; 3 uses
  %i.pv = shl nuw i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.pj, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert4 = insertelement <2 x double> poison, double %i.pk, i64 0
  %broadcast.splat5 = shufflevector <2 x double> %broadcast.splatinsert4, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert6 = insertelement <2 x double> poison, double %i.pl, i64 0
  %broadcast.splat7 = shufflevector <2 x double> %broadcast.splatinsert6, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert8 = insertelement <2 x double> poison, double %i.pn, i64 0
  %broadcast.splat9 = shufflevector <2 x double> %broadcast.splatinsert8, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert10 = insertelement <2 x double> poison, double %i.pp, i64 0
  %broadcast.splat11 = shufflevector <2 x double> %broadcast.splatinsert10, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert12 = insertelement <2 x double> poison, double %i.pg, i64 0
  %broadcast.splat13 = shufflevector <2 x double> %broadcast.splatinsert12, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert14 = insertelement <2 x double> poison, double %cos232, i64 0
  %broadcast.splat15 = shufflevector <2 x double> %broadcast.splatinsert14, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.pw = shl nuw i64 %index, 1                   ; 4 uses
  %i.px = or disjoint i64 %i.pw, 1                ; 2 uses
  %i.py = or disjoint i64 %i.pw, 3                ; 2 uses
  %i.pz = insertelement <2 x i64> poison, i64 %i.px, i64 0
  %i.qa = insertelement <2 x i64> %i.pz, i64 %i.py, i64 1
  %i.qb = trunc nuw nsw <2 x i64> %i.qa to <2 x i32>
  %i.qc = uitofp nneg <2 x i32> %i.qb to <2 x double>
  %i.qd = fmul nnan nsz <2 x double> %i.qc, splat (double f0x400921FB54442D18)
  %i.qe = fdiv nsz <2 x double> %i.qd, %broadcast.splat
  %i.qf = tail call nsz <2 x double> @llvm.sin.v2f64(<2 x double> %i.qe)
  %i.qg = fmul nsz <2 x double> %i.qf, splat (double 2.000000e+00) ; 2 uses
  %i.qh = fmul nsz <2 x double> %broadcast.splat13, %i.qg ; 2 uses
  %i.qi = fmul nsz <2 x double> %i.qh, splat (double 5.000000e-01)
  %i.qj = fdiv nsz <2 x double> %broadcast.splat7, %i.qi ; 3 uses
  %i.qk = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qj, <2 x double> %i.qj, <2 x double> splat (double -1.000000e+00))
  %i.ql = tail call nsz <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.qk)
  %i.qm = fadd nsz <2 x double> %i.qj, %i.ql
  %i.qn = fdiv nsz <2 x double> %i.qh, %i.qm
end_hunk_0
