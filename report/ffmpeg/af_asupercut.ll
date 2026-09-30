Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/af_asupercut?download=true
inline.NumInlined: 6
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@get_coeffs:bb.a
  %i.fa = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store double %i.ey, ptr %i.fa, align 8, !tbaa !56
  %i.fb = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store double 0.000000e+00, ptr %i.fb, align 8, !tbaa !55
  %i.fc = fsub nsz double 2.000000e+00, %i.ew
  %i.fd = fdiv nsz double %i.fc, %i.ex
  store double %i.fd, ptr %i.ev, align 8, !tbaa !91
  %i.fe = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store double 0.000000e+00, ptr %i.fe, align 8, !tbaa !54
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
  %wide.load = load <2 x double>, ptr %i.fu, align 8, !tbaa !52
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
  store <10 x double> %interleaved.vec, ptr %i.fs, align 8, !tbaa !52
  %index.next62 = add nuw i64 %index61, 2         ; 2 uses
  %i.gk = icmp eq i64 %index.next62, %n.vec53
  br i1 %i.gk, label %middle.block63, label %vector.body60, !llvm.loop !75

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
  %i.gq = load double, ptr %i.gp, align 8, !tbaa !52
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
  store double %i.hb, ptr %i.gs, align 8, !tbaa !90
  %i.hc = fmul nsz double %i.hb, 2.000000e+00
  store double %i.hc, ptr %i.gt, align 8, !tbaa !56
  store double %i.hb, ptr %i.gu, align 8, !tbaa !55
  %i.hd = fmul nsz double %i.fi, %i.ha
  store double %i.hd, ptr %i.gn, align 8, !tbaa !91
  %i.he = extractelement <2 x double> %i.gy, i64 1
  %i.hf = fneg nsz double %i.he
  %i.hg = fmul nsz double %i.ha, %i.hf
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  store double %i.hg, ptr %i.hh, align 8, !tbaa !54
  %indvars.iv.next268 = add nuw nsw i64 %indvars.iv267, 1 ; 2 uses
  %i.hi = icmp samesign ult i64 %indvars.iv.next268, %i.fm
  br i1 %i.hi, label %scalar.ph50, label %.loopexit, !llvm.loop !76

bb.j:                                             ; preds = %bb.f
  %i.hj = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.t, ptr noundef nonnull dereferenceable(11) @.str.4) #10
  %.not227 = icmp eq i32 %i.hj, 0
  br i1 %.not227, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.hk = fmul nsz double %i.l, f0x401921FB54442D18 ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.hm = load i32, ptr %i.hl, align 8, !tbaa !87 ; 2 uses
  %i.hn = sdiv i32 %i.hm, 2                       ; 3 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  store i32 %i.hn, ptr %i.ho, align 4, !tbaa !49
  %i.hp = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.hq = load double, ptr %i.hp, align 8, !tbaa !92
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
  %i.js = fdiv nsz <2 x double> %broadcast.splat27, %i.ji
  %1 = getelementptr inbounds nuw [40 x i8], ptr %i.ic, i64 %i.il ; 4 uses
  %i.jt = getelementptr inbounds nuw [40 x i8], ptr %i.ic, i64 %i.il ; 2 uses
  %2 = tail call nsz <2 x double> @llvm.atan.v2f64(<2 x double> %i.jr)
  %i.ju = fmul nsz <2 x double> %2, splat (double 2.000000e+00)
  %i.jv = tail call nsz { <2 x double>, <2 x double> } @llvm.sincos.v2f64(<2 x double> %i.ju) ; 2 uses
  %i.jw = extractvalue { <2 x double>, <2 x double> } %i.jv, 0 ; 2 uses
  %i.jx = extractvalue { <2 x double>, <2 x double> } %i.jv, 1
  %i.jy = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jk, <2 x double> %i.jw, <2 x double> splat (double 1.000000e+00))
  %i.jz = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jj, <2 x double> %i.jw, <2 x double> splat (double 1.000000e+00))
  %i.ka = fdiv nsz <2 x double> %i.jy, %i.jz
  %i.kb = fmul nsz <2 x double> %i.ka, splat (double 5.000000e-01) ; 3 uses
  %i.kc = fadd nsz <2 x double> %i.kb, splat (double 5.000000e-01)
  %i.kd = fmul nsz <2 x double> %i.jx, %i.kc
  %i.ke = fsub nsz <2 x double> splat (double 5.000000e-01), %i.kb
  %i.kf = fmul nsz <2 x double> %i.ke, splat (double 5.000000e-01)
  %i.kg = fmul nsz <2 x double> %i.jq, %i.kf      ; 2 uses
  %i.kh = fmul nsz <2 x double> %i.kd, splat (double 2.000000e+00) ; 2 uses
  %i.ki = extractelement <2 x double> %i.kh, i64 0
  store double %i.ki, ptr %1, align 8, !tbaa !91
  %i.kj = fmul nsz <2 x double> %i.kb, splat (double -2.000000e+00) ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.kl = getelementptr inbounds nuw i8, ptr %i.jt, i64 88
  %i.km = extractelement <2 x double> %i.kj, i64 0
  store double %i.km, ptr %i.kk, align 8, !tbaa !54
  %i.kn = fmul nsz <2 x double> %i.kg, splat (double 2.000000e+00) ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.kp = shufflevector <2 x double> %i.kj, <2 x double> %i.kn, <2 x i32> <i32 1, i32 3>
  store <2 x double> %i.kp, ptr %i.kl, align 8, !tbaa !52
  %i.kq = getelementptr inbounds nuw i8, ptr %i.jt, i64 104
  %i.kr = insertelement <2 x double> %i.kn, double 0.000000e+00, i64 1
  store <2 x double> %i.kr, ptr %i.ko, align 8, !tbaa !52
  %i.ks = fmul nsz <2 x double> %i.kg, splat (double -2.000000e+00) ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ku = extractelement <2 x double> %i.ks, i64 0
  store double %i.ku, ptr %i.kt, align 8, !tbaa !55
  %i.kv = insertelement <2 x double> %i.ks, double 0.000000e+00, i64 0
  store <2 x double> %i.kv, ptr %i.kq, align 8, !tbaa !52
  %i.kw = getelementptr inbounds nuw [40 x i8], ptr %i.ic, i64 %i.im ; 4 uses
  %i.kx = getelementptr inbounds nuw [40 x i8], ptr %i.ic, i64 %i.in ; 3 uses
  %3 = tail call nsz <2 x double> @llvm.atan.v2f64(<2 x double> %i.js)
  %i.ky = fmul nsz <2 x double> %3, splat (double 2.000000e+00)
  %i.kz = tail call nsz { <2 x double>, <2 x double> } @llvm.sincos.v2f64(<2 x double> %i.ky) ; 2 uses
  %i.la = extractvalue { <2 x double>, <2 x double> } %i.kz, 0 ; 2 uses
  %i.lb = extractvalue { <2 x double>, <2 x double> } %i.kz, 1
  %i.lc = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jk, <2 x double> %i.la, <2 x double> splat (double 1.000000e+00))
  %i.ld = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jj, <2 x double> %i.la, <2 x double> splat (double 1.000000e+00))
  %i.le = fdiv nsz <2 x double> %i.lc, %i.ld
  %i.lf = fmul nsz <2 x double> %i.le, splat (double 5.000000e-01) ; 3 uses
  %i.lg = fadd nsz <2 x double> %i.lf, splat (double 5.000000e-01)
  %i.lh = fmul nsz <2 x double> %i.lb, %i.lg
  %i.li = fsub nsz <2 x double> splat (double 5.000000e-01), %i.lf
  %i.lj = fmul nsz <2 x double> %i.li, splat (double 5.000000e-01)
  %i.lk = fmul nsz <2 x double> %i.jq, %i.lj      ; 2 uses
  %i.ll = fmul nsz <2 x double> %i.lh, splat (double 2.000000e+00) ; 2 uses
  %i.lm = extractelement <2 x double> %i.ll, i64 0
  store double %i.lm, ptr %i.kw, align 8, !tbaa !91
  %i.ln = fmul nsz <2 x double> %i.lf, splat (double -2.000000e+00) ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.kw, i64 8
  %i.lp = extractelement <2 x double> %i.ln, i64 0
  store double %i.lp, ptr %i.lo, align 8, !tbaa !54
  %i.lq = shufflevector <2 x double> %i.ll, <2 x double> %i.ln, <2 x i32> <i32 1, i32 3>
  store <2 x double> %i.lq, ptr %i.kx, align 8, !tbaa !52
  %i.lr = fmul nsz <2 x double> %i.lk, splat (double 2.000000e+00) ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.kw, i64 16
  %i.lt = getelementptr inbounds nuw i8, ptr %i.kx, i64 16
  %i.lu = insertelement <2 x double> %i.lr, double 0.000000e+00, i64 1
  store <2 x double> %i.lu, ptr %i.ls, align 8, !tbaa !52
  %i.lv = shufflevector <2 x double> %i.lr, <2 x double> <double poison, double 0.000000e+00>, <2 x i32> <i32 1, i32 3>
  store <2 x double> %i.lv, ptr %i.lt, align 8, !tbaa !52
  %i.lw = fmul nsz <2 x double> %i.lk, splat (double -2.000000e+00) ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.kw, i64 32
  %i.ly = getelementptr inbounds nuw i8, ptr %i.kx, i64 32
  %i.lz = shufflevector <2 x double> %i.lw, <2 x double> %i.kh, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.lz, ptr %i.lx, align 8, !tbaa !52
  %i.ma = extractelement <2 x double> %i.lw, i64 1
  store double %i.ma, ptr %i.ly, align 8, !tbaa !55
  %index.next32 = add nuw i64 %index31, 2         ; 2 uses
  %i.mb = icmp eq i64 %index.next32, %n.vec19
  br i1 %i.mb, label %middle.block33, label %vector.body30, !llvm.loop !77

middle.block33:                                   ; preds = %vector.body30
  %cmp.n34 = icmp eq i64 %i.ij, %n.vec19
  br i1 %cmp.n34, label %.loopexit, label %scalar.ph16.preheader

scalar.ph16.preheader:                            ; preds = %.lr.ph250, %middle.block33
  %indvars.iv264.ph = phi i64 [ 0, %.lr.ph250 ], [ %i.ik, %middle.block33 ]
  br label %scalar.ph16

scalar.ph16:                                      ; preds = %scalar.ph16.preheader, %scalar.ph16
  %indvars.iv264 = phi i64 [ %indvars.iv.next265, %scalar.ph16 ], [ %indvars.iv264.ph, %scalar.ph16.preheader ] ; 3 uses
  %i.mc = or disjoint i64 %indvars.iv264, 1       ; 2 uses
  %i.md = trunc nuw nsw i64 %i.mc to i32
  %i.me = uitofp nsz nneg i32 %i.md to double
  %i.mf = fmul nnan nsz double %i.me, f0x400921FB54442D18
  %i.mg = fdiv nsz double %i.mf, %i.hz
  %i.mh = tail call nsz double @llvm.sin.f64(double %i.mg)
  %i.mi = fmul nsz double %i.mh, 2.000000e+00     ; 2 uses
  %i.mj = fmul nsz double %i.hw, %i.mi            ; 2 uses
  %i.mk = fmul nsz double %i.mj, 5.000000e-01
  %i.ml = fdiv nsz double %i.ib, %i.mk            ; 3 uses
  %i.mm = tail call nsz double @llvm.fmuladd.f64(double %i.ml, double %i.ml, double -1.000000e+00)
  %i.mn = tail call nsz double @llvm.sqrt.f64(double %i.mm)
  %i.mo = fadd nsz double %i.ml, %i.mn
  %i.mp = fdiv nsz double %i.mj, %i.mo
  %i.mq = tail call nsz double @llvm.sqrt.f64(double %i.mp) ; 3 uses
  %i.mr = fmul nsz double %i.ia, %i.mi
  %i.ms = fdiv nsz double %i.mr, %i.mq            ; 3 uses
  %i.mt = tail call nsz double @llvm.fmuladd.f64(double %i.ms, double %i.ms, double -1.000000e+00)
  %i.mu = tail call nsz double @llvm.sqrt.f64(double %i.mt)
  %i.mv = fadd nsz double %i.ms, %i.mu            ; 4 uses
  %i.mw = fmul nsz double %i.mq, 5.000000e-01     ; 2 uses
  %i.mx = fneg nsz double %i.mw
  %i.my = fdiv nsz double 1.000000e+00, %i.mv
  %i.mz = fsub nsz double %i.mv, %i.my
  %i.na = fdiv nsz double %i.mz, %i.mq            ; 2 uses
  %square228 = fmul nsz double %i.na, %i.na
  %i.nb = fadd nsz double %square228, 1.000000e+00
  %i.nc = tail call nsz double @llvm.sqrt.f64(double %i.nb) ; 2 uses
  %i.nd = fmul nsz double %i.ie, %i.mv
  %i.ne = fdiv nsz double %i.ie, %i.mv
  %4 = getelementptr inbounds nuw [40 x i8], ptr %i.ic, i64 %indvars.iv264 ; 2 uses
  %. = tail call nsz double @llvm.atan.f64(double %i.nd)
  %.0218 = fmul nsz double %., 2.000000e+00
  %sincos = tail call nsz { double, double } @llvm.sincos.f64(double %.0218) ; 2 uses
  %sin = extractvalue { double, double } %sincos, 0
  %cos = extractvalue { double, double } %sincos, 1
  %i.nf = insertelement <2 x double> poison, double %i.mx, i64 0
  %i.ng = insertelement <2 x double> %i.nf, double %i.mw, i64 1 ; 2 uses
  %i.nh = insertelement <2 x double> poison, double %sin, i64 0
  %i.ni = shufflevector <2 x double> %i.nh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nj = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ng, <2 x double> %i.ni, <2 x double> splat (double 1.000000e+00)) ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.nl = getelementptr inbounds nuw [40 x i8], ptr %i.ic, i64 %i.mc
  %..1 = tail call nsz double @llvm.atan.f64(double %i.ne)
  %.0218.1 = fmul nsz double %..1, 2.000000e+00
  %sincos.1 = tail call nsz { double, double } @llvm.sincos.f64(double %.0218.1) ; 2 uses
  %sin.1 = extractvalue { double, double } %sincos.1, 0
  %cos.1 = extractvalue { double, double } %sincos.1, 1
  %i.nm = insertelement <2 x double> poison, double %sin.1, i64 0
  %i.nn = shufflevector <2 x double> %i.nm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.no = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ng, <2 x double> %i.nn, <2 x double> splat (double 1.000000e+00)) ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.nl, i64 8
  %i.nq = shufflevector <2 x double> %i.nj, <2 x double> %i.no, <2 x i32> <i32 0, i32 2>
  %i.nr = shufflevector <2 x double> %i.nj, <2 x double> %i.no, <2 x i32> <i32 1, i32 3>
  %i.ns = fdiv nsz <2 x double> %i.nq, %i.nr
  %i.nt = fmul nsz <2 x double> %i.ns, splat (double 5.000000e-01) ; 5 uses
  %i.nu = fadd nsz <2 x double> %i.nt, splat (double 5.000000e-01) ; 2 uses
  %i.nv = extractelement <2 x double> %i.nu, i64 0
  %i.nw = fmul nsz double %cos, %i.nv
  %i.nx = extractelement <2 x double> %i.nt, i64 0
  %i.ny = fsub nsz double 5.000000e-01, %i.nx
  %i.nz = fmul nsz double %i.ny, 5.000000e-01
  %i.oa = fmul nsz double %i.nc, %i.nz
  %i.ob = insertelement <2 x double> poison, double %i.nw, i64 0
  %i.oc = shufflevector <2 x double> %i.ob, <2 x double> %i.nt, <2 x i32> <i32 0, i32 2>
  %i.od = fmul nsz <2 x double> %i.oc, <double 2.000000e+00, double -2.000000e+00>
  store <2 x double> %i.od, ptr %4, align 8, !tbaa !52
  %i.oe = insertelement <4 x double> <double poison, double 1.000000e+00, double poison, double poison>, double %i.oa, i64 0
  %i.of = extractelement <2 x double> %i.nu, i64 1
  %i.og = fmul nsz double %cos.1, %i.of
  %i.oh = extractelement <2 x double> %i.nt, i64 1
  %i.oi = fsub nsz double 5.000000e-01, %i.oh
  %i.oj = fmul nsz double %i.oi, 5.000000e-01
  %i.ok = fmul nsz double %i.nc, %i.oj
  %i.ol = insertelement <4 x double> %i.oe, double %i.og, i64 3
  %i.om = shufflevector <4 x double> %i.ol, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.on = fmul nsz <4 x double> %i.om, <double 2.000000e+00, double 0.000000e+00, double -2.000000e+00, double 2.000000e+00>
  store <4 x double> %i.on, ptr %i.nk, align 8, !tbaa !52
  %i.oo = shufflevector <2 x double> %i.nt, <2 x double> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.op = shufflevector <4 x double> <double poison, double poison, double 1.000000e+00, double poison>, <4 x double> %i.oo, <4 x i32> <i32 5, i32 poison, i32 2, i32 poison>
  %i.oq = insertelement <4 x double> %i.op, double %i.ok, i64 1
  %i.or = shufflevector <4 x double> %i.oq, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.os = fmul nsz <4 x double> %i.or, <double -2.000000e+00, double 2.000000e+00, double 0.000000e+00, double -2.000000e+00>
  store <4 x double> %i.os, ptr %i.np, align 8, !tbaa !52
  %indvars.iv.next265 = add nuw nsw i64 %indvars.iv264, 2 ; 2 uses
  %i.ot = icmp samesign ult i64 %indvars.iv.next265, %i.if
  br i1 %i.ot, label %scalar.ph16, label %.loopexit, !llvm.loop !78

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
  %i.ox = load i32, ptr %i.ow, align 8, !tbaa !87 ; 2 uses
  %i.oy = sdiv i32 %i.ox, 2                       ; 3 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  store i32 %i.oy, ptr %i.oz, align 4, !tbaa !49
  %i.pa = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.pb = load double, ptr %i.pa, align 8, !tbaa !92
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
  %i.qo = tail call nsz <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.qn) ; 2 uses
  %i.qp = fmul nsz <2 x double> %broadcast.splat5, %i.qg
  %i.qq = fdiv nsz <2 x double> %i.qp, %i.qo      ; 3 uses
  %i.qr = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qq, <2 x double> %i.qq, <2 x double> splat (double -1.000000e+00))
  %i.qs = tail call nsz <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.qr)
  %i.qt = fadd nsz <2 x double> %i.qq, %i.qs      ; 2 uses
  %i.qu = fmul nsz <2 x double> %i.qo, splat (double 5.000000e-01) ; 3 uses
  %i.qv = fneg nsz <2 x double> %i.qu             ; 2 uses
  %i.qw = fmul nsz <2 x double> %broadcast.splat11, %i.qt
  %i.qx = fdiv nsz <2 x double> %broadcast.splat11, %i.qt
  %5 = getelementptr inbounds nuw [40 x i8], ptr %i.pm, i64 %i.pw ; 5 uses
  %i.qy = getelementptr inbounds nuw [40 x i8], ptr %i.pm, i64 %i.pw ; 2 uses
  %6 = tail call nsz <2 x double> @llvm.atan.v2f64(<2 x double> %i.qw)
  %i.qz = fmul nsz <2 x double> %6, splat (double 2.000000e+00)
  %i.ra = tail call nsz { <2 x double>, <2 x double> } @llvm.sincos.v2f64(<2 x double> %i.qz) ; 2 uses
  %i.rb = extractvalue { <2 x double>, <2 x double> } %i.ra, 0 ; 2 uses
  %i.rc = extractvalue { <2 x double>, <2 x double> } %i.ra, 1 ; 2 uses
  %i.rd = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qv, <2 x double> %i.rb, <2 x double> splat (double 1.000000e+00))
  %i.re = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qu, <2 x double> %i.rb, <2 x double> splat (double 1.000000e+00))
  %i.rf = fdiv nsz <2 x double> %i.rd, %i.re
  %i.rg = fmul nsz <2 x double> %i.rf, splat (double 5.000000e-01) ; 2 uses
  %i.rh = fadd nsz <2 x double> %i.rg, splat (double 5.000000e-01) ; 2 uses
  %i.ri = fmul nsz <2 x double> %i.rc, %i.rh
  %i.rj = fmul nsz <2 x double> %i.rh, splat (double 5.000000e-01)
  %i.rk = fsub nsz <2 x double> splat (double 1.000000e+00), %i.rc
  %i.rl = fdiv nsz <2 x double> %i.rk, %broadcast.splat9
  %i.rm = fmul nsz <2 x double> %i.rl, %i.rj      ; 2 uses
  %i.rn = fmul nsz <2 x double> %i.ri, splat (double 2.000000e+00) ; 2 uses
  %i.ro = extractelement <2 x double> %i.rn, i64 0
  store double %i.ro, ptr %5, align 8, !tbaa !91
  %i.rp = fmul nsz <2 x double> %i.rg, splat (double -2.000000e+00) ; 2 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.rr = getelementptr inbounds nuw i8, ptr %i.qy, i64 88
  %i.rs = extractelement <2 x double> %i.rp, i64 0
  store double %i.rs, ptr %i.rq, align 8, !tbaa !54
  %i.rt = fmul nsz <2 x double> %i.rm, splat (double 2.000000e+00) ; 3 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.rv = extractelement <2 x double> %i.rt, i64 0 ; 2 uses
  store double %i.rv, ptr %i.ru, align 8, !tbaa !90
  %i.rw = shufflevector <2 x double> %i.rp, <2 x double> %i.rt, <2 x i32> <i32 1, i32 3>
  store <2 x double> %i.rw, ptr %i.rr, align 8, !tbaa !52
  %i.rx = fmul nsz <2 x double> %i.rm, splat (double -4.000000e+00)
  %i.ry = fmul nsz <2 x double> %broadcast.splat15, %i.rx ; 2 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.sa = getelementptr inbounds nuw i8, ptr %i.qy, i64 104
  %i.sb = extractelement <2 x double> %i.ry, i64 0
  store double %i.sb, ptr %i.rz, align 8, !tbaa !56
  %i.sc = getelementptr inbounds nuw i8, ptr %5, i64 32
  store double %i.rv, ptr %i.sc, align 8, !tbaa !55
  %i.sd = shufflevector <2 x double> %i.ry, <2 x double> %i.rt, <2 x i32> <i32 1, i32 3>
  store <2 x double> %i.sd, ptr %i.sa, align 8, !tbaa !52
  %i.se = getelementptr inbounds nuw [40 x i8], ptr %i.pm, i64 %i.px ; 5 uses
  %i.sf = getelementptr inbounds nuw [40 x i8], ptr %i.pm, i64 %i.py ; 3 uses
  %7 = tail call nsz <2 x double> @llvm.atan.v2f64(<2 x double> %i.qx)
  %i.sg = fmul nsz <2 x double> %7, splat (double 2.000000e+00)
  %i.sh = tail call nsz { <2 x double>, <2 x double> } @llvm.sincos.v2f64(<2 x double> %i.sg) ; 2 uses
  %i.si = extractvalue { <2 x double>, <2 x double> } %i.sh, 0 ; 2 uses
  %i.sj = extractvalue { <2 x double>, <2 x double> } %i.sh, 1 ; 2 uses
  %i.sk = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qv, <2 x double> %i.si, <2 x double> splat (double 1.000000e+00))
  %i.sl = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qu, <2 x double> %i.si, <2 x double> splat (double 1.000000e+00))
  %i.sm = fdiv nsz <2 x double> %i.sk, %i.sl
  %i.sn = fmul nsz <2 x double> %i.sm, splat (double 5.000000e-01) ; 2 uses
  %i.so = fadd nsz <2 x double> %i.sn, splat (double 5.000000e-01) ; 2 uses
  %i.sp = fmul nsz <2 x double> %i.sj, %i.so
  %i.sq = fmul nsz <2 x double> %i.so, splat (double 5.000000e-01)
  %i.sr = fsub nsz <2 x double> splat (double 1.000000e+00), %i.sj
  %i.ss = fdiv nsz <2 x double> %i.sr, %broadcast.splat9
  %i.st = fmul nsz <2 x double> %i.ss, %i.sq      ; 2 uses
  %i.su = fmul nsz <2 x double> %i.sp, splat (double 2.000000e+00) ; 2 uses
  %i.sv = extractelement <2 x double> %i.su, i64 0
  store double %i.sv, ptr %i.se, align 8, !tbaa !91
  %i.sw = fmul nsz <2 x double> %i.sn, splat (double -2.000000e+00) ; 2 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %i.se, i64 8
  %i.sy = extractelement <2 x double> %i.sw, i64 0
  store double %i.sy, ptr %i.sx, align 8, !tbaa !54
  %i.sz = shufflevector <2 x double> %i.su, <2 x double> %i.sw, <2 x i32> <i32 1, i32 3>
  store <2 x double> %i.sz, ptr %i.sf, align 8, !tbaa !52
  %i.ta = fmul nsz <2 x double> %i.st, splat (double 2.000000e+00) ; 4 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %i.se, i64 16
  %i.tc = getelementptr inbounds nuw i8, ptr %i.sf, i64 16
  %i.td = extractelement <2 x double> %i.ta, i64 0
  store double %i.td, ptr %i.tb, align 8, !tbaa !90
  %i.te = extractelement <2 x double> %i.ta, i64 1
  %i.tf = fmul nsz <2 x double> %i.st, splat (double -4.000000e+00)
  %i.tg = fmul nsz <2 x double> %broadcast.splat15, %i.tf ; 2 uses
  %i.th = getelementptr inbounds nuw i8, ptr %i.se, i64 24
  %i.ti = extractelement <2 x double> %i.tg, i64 0
  store double %i.ti, ptr %i.th, align 8, !tbaa !56
  %i.tj = shufflevector <2 x double> %i.ta, <2 x double> %i.tg, <2 x i32> <i32 1, i32 3>
  store <2 x double> %i.tj, ptr %i.tc, align 8, !tbaa !52
  %i.tk = getelementptr inbounds nuw i8, ptr %i.se, i64 32
  %i.tl = getelementptr inbounds nuw i8, ptr %i.sf, i64 32
  %i.tm = shufflevector <2 x double> %i.ta, <2 x double> %i.rn, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.tm, ptr %i.tk, align 8, !tbaa !52
  store double %i.te, ptr %i.tl, align 8, !tbaa !55
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.tn = icmp eq i64 %index.next, %n.vec
  br i1 %i.tn, label %middle.block, label %vector.body, !llvm.loop !79

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.pu, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %i.pv, %middle.block ]
  %i.to = insertelement <4 x double> <double 2.000000e+00, double poison, double 2.000000e+00, double 2.000000e+00>, double %cos232, i64 1
  %i.tp = insertelement <4 x double> <double -2.000000e+00, double 2.000000e+00, double poison, double 2.000000e+00>, double %cos232, i64 2
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.tq = or disjoint i64 %indvars.iv, 1          ; 2 uses
  %i.tr = trunc nuw nsw i64 %i.tq to i32
  %i.ts = uitofp nsz nneg i32 %i.tr to double
  %i.tt = fmul nnan nsz double %i.ts, f0x400921FB54442D18
  %i.tu = fdiv nsz double %i.tt, %i.pj
  %i.tv = tail call nsz double @llvm.sin.f64(double %i.tu)
  %i.tw = fmul nsz double %i.tv, 2.000000e+00     ; 2 uses
  %i.tx = fmul nsz double %i.pg, %i.tw            ; 2 uses
  %i.ty = fmul nsz double %i.tx, 5.000000e-01
  %i.tz = fdiv nsz double %i.pl, %i.ty            ; 3 uses
  %i.ua = tail call nsz double @llvm.fmuladd.f64(double %i.tz, double %i.tz, double -1.000000e+00)
  %i.ub = tail call nsz double @llvm.sqrt.f64(double %i.ua)
  %i.uc = fadd nsz double %i.tz, %i.ub
  %i.ud = fdiv nsz double %i.tx, %i.uc
  %i.ue = tail call nsz double @llvm.sqrt.f64(double %i.ud) ; 2 uses
  %i.uf = fmul nsz double %i.pk, %i.tw
  %i.ug = fdiv nsz double %i.uf, %i.ue            ; 3 uses
  %i.uh = tail call nsz double @llvm.fmuladd.f64(double %i.ug, double %i.ug, double -1.000000e+00)
  %i.ui = tail call nsz double @llvm.sqrt.f64(double %i.uh)
  %i.uj = fadd nsz double %i.ug, %i.ui            ; 2 uses
  %i.uk = fmul nsz double %i.ue, 5.000000e-01     ; 2 uses
  %i.ul = fneg nsz double %i.uk
  %i.um = fmul nsz double %i.pp, %i.uj
  %i.un = fdiv nsz double %i.pp, %i.uj
  %8 = getelementptr inbounds nuw [40 x i8], ptr %i.pm, i64 %indvars.iv ; 2 uses
  %.255 = tail call nsz double @llvm.atan.f64(double %i.um)
  %.0215 = fmul nsz double %.255, 2.000000e+00
  %sincos234 = tail call nsz { double, double } @llvm.sincos.f64(double %.0215) ; 2 uses
  %sin235 = extractvalue { double, double } %sincos234, 0
  %cos236 = extractvalue { double, double } %sincos234, 1 ; 2 uses
  %i.uo = insertelement <2 x double> poison, double %i.ul, i64 0
  %i.up = insertelement <2 x double> %i.uo, double %i.uk, i64 1 ; 2 uses
  %i.uq = insertelement <2 x double> poison, double %sin235, i64 0
  %i.ur = shufflevector <2 x double> %i.uq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.us = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.up, <2 x double> %i.ur, <2 x double> splat (double 1.000000e+00)) ; 2 uses
  %i.ut = extractelement <2 x double> %i.us, i64 0
  %i.uu = extractelement <2 x double> %i.us, i64 1
  %i.uv = fdiv nsz double %i.ut, %i.uu
  %i.uw = fsub nsz double 1.000000e+00, %cos236
  %i.ux = fdiv nsz double %i.uw, %i.pn
  %i.uy = fmul nsz double %i.uv, 5.000000e-01     ; 2 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.va = getelementptr inbounds nuw [40 x i8], ptr %i.pm, i64 %i.tq
  %.255.1 = tail call nsz double @llvm.atan.f64(double %i.un)
  %.0215.1 = fmul nsz double %.255.1, 2.000000e+00
  %sincos234.1 = tail call nsz { double, double } @llvm.sincos.f64(double %.0215.1) ; 2 uses
  %sin235.1 = extractvalue { double, double } %sincos234.1, 0
  %cos236.1 = extractvalue { double, double } %sincos234.1, 1 ; 2 uses
  %i.vb = fadd nsz double %i.uy, 5.000000e-01     ; 2 uses
  %i.vc = fmul nsz double %cos236, %i.vb
  %i.vd = fmul nsz double %i.vb, 5.000000e-01
  %i.ve = fmul nsz double %i.ux, %i.vd            ; 2 uses
  %i.vf = insertelement <2 x double> poison, double %i.vc, i64 0
  %i.vg = insertelement <2 x double> %i.vf, double %i.uy, i64 1
  %i.vh = fmul nsz <2 x double> %i.vg, <double 2.000000e+00, double -2.000000e+00>
  store <2 x double> %i.vh, ptr %8, align 8, !tbaa !52
  %i.vi = insertelement <2 x double> poison, double %sin235.1, i64 0
  %i.vj = shufflevector <2 x double> %i.vi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.vk = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.up, <2 x double> %i.vj, <2 x double> splat (double 1.000000e+00)) ; 2 uses
  %i.vl = extractelement <2 x double> %i.vk, i64 0
  %i.vm = extractelement <2 x double> %i.vk, i64 1
  %i.vn = fdiv nsz double %i.vl, %i.vm
  %i.vo = fmul nsz double %i.vn, 5.000000e-01     ; 2 uses
  %i.vp = fadd nsz double %i.vo, 5.000000e-01     ; 2 uses
  %i.vq = insertelement <2 x double> <double -4.000000e+00, double poison>, double %cos236.1, i64 1
  %i.vr = insertelement <2 x double> poison, double %i.ve, i64 0
  %i.vs = insertelement <2 x double> %i.vr, double %i.vp, i64 1
  %i.vt = fmul nsz <2 x double> %i.vq, %i.vs
  %i.vu = fmul nsz double %i.vp, 5.000000e-01
  %i.vv = fsub nsz double 1.000000e+00, %cos236.1
  %i.vw = fdiv nsz double %i.vv, %i.pn
  %i.vx = fmul nsz double %i.vw, %i.vu            ; 2 uses
  %i.vy = insertelement <4 x double> poison, double %i.ve, i64 0
  %i.vz = shufflevector <2 x double> %i.vt, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.wa = shufflevector <4 x double> %i.vy, <4 x double> %i.vz, <4 x i32> <i32 0, i32 4, i32 0, i32 6>
  %i.wb = fmul nsz <4 x double> %i.to, %i.wa
  store <4 x double> %i.wb, ptr %i.uz, align 8, !tbaa !52
  %i.wc = getelementptr inbounds nuw i8, ptr %i.va, i64 8
  %i.wd = fmul nsz double %i.vx, -4.000000e+00
  %i.we = insertelement <4 x double> poison, double %i.vo, i64 0
  %i.wf = insertelement <4 x double> %i.we, double %i.vx, i64 1
  %i.wg = insertelement <4 x double> %i.wf, double %i.wd, i64 2
  %i.wh = shufflevector <4 x double> %i.wg, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.wi = fmul nsz <4 x double> %i.tp, %i.wh
  store <4 x double> %i.wi, ptr %i.wc, align 8, !tbaa !52
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.wj = icmp samesign ult i64 %indvars.iv.next, %i.pq
  br i1 %i.wj, label %scalar.ph, label %.loopexit, !llvm.loop !80

.loopexit:                                        ; preds = %scalar.ph, %scalar.ph16, %scalar.ph50, %scalar.ph82, %middle.block, %middle.block33, %middle.block63, %middle.block95, %bb.m, %bb.k, %bb.i, %bb.e, %bb.l, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.tan.f64(double) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sin.f64(double) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.atan.f64(double) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.cos.f64(double) #6

declare ptr @av_default_item_name(ptr noundef) #3

declare i32 @ff_filter_process_command(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { double, double } @llvm.sincos.f64(double) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.sin.v2f64(<2 x double>) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.atan.v2f64(<2 x double>) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { <2 x double>, <2 x double> } @llvm.sincos.v2f64(<2 x double>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.cos.v2f64(<2 x double>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.sqrt.v2f64(<2 x double>) #6

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!11 = !{!"p1 _ZTS8AVFilter", !9, i64 0}
!12 = !{!"p1 omnipotent char", !9, i64 0}
!13 = !{!"p1 _ZTS11AVFilterPad", !9, i64 0}
!14 = !{!"any p2 pointer", !9, i64 0}
!15 = !{!"p2 _ZTS12AVFilterLink", !14, i64 0}
!16 = !{!"p1 _ZTS13AVFilterGraph", !9, i64 0}
!17 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!18 = !{!"AVFilterContext", !10, i64 0, !11, i64 8, !12, i64 16, !13, i64 24, !15, i64 32, !6, i64 40, !13, i64 48, !15, i64 56, !6, i64 64, !9, i64 72, !16, i64 80, !6, i64 88, !6, i64 92, !12, i64 96, !6, i64 104, !17, i64 112, !6, i64 120}
!19 = !{!18, !9, i64 72}
!20 = !{!"p1 _ZTS7AVFrame", !9, i64 0}
!21 = !{!"p1 _ZTS15AVFilterContext", !9, i64 0}
!22 = !{!"AVRational", !6, i64 0, !6, i64 4}
!23 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!24 = !{!"p2 _ZTS15AVFrameSideData", !14, i64 0}
!25 = !{!"p1 _ZTS15AVFilterFormats", !9, i64 0}
!26 = !{!"p1 _ZTS22AVFilterChannelLayouts", !9, i64 0}
!27 = !{!"AVFilterFormatsConfig", !25, i64 0, !25, i64 8, !26, i64 16, !25, i64 24, !25, i64 32, !25, i64 40}
!28 = !{!"AVFilterLink", !21, i64 0, !13, i64 8, !21, i64 16, !13, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !22, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !23, i64 72, !22, i64 96, !24, i64 104, !6, i64 112, !6, i64 116, !27, i64 120, !27, i64 168}
!29 = !{!28, !21, i64 16}
!30 = !{!"p1 _ZTS12AVFilterLink", !9, i64 0}
!31 = !{!30, !30, i64 0}
!32 = !{!"double", !5, i64 0}
!33 = !{!"ASuperCutContext", !10, i64 0, !32, i64 8, !32, i64 16, !32, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !5, i64 48, !20, i64 448, !9, i64 456}
!34 = !{!33, !6, i64 40}
!35 = !{!"p2 omnipotent char", !14, i64 0}
!36 = !{!"long", !5, i64 0}
!37 = !{!"p2 _ZTS11AVBufferRef", !14, i64 0}
!38 = !{!"p1 _ZTS12AVDictionary", !9, i64 0}
!39 = !{!"AVFrame", !5, i64 0, !5, i64 64, !35, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !22, i64 124, !36, i64 136, !36, i64 144, !22, i64 152, !6, i64 160, !9, i64 168, !6, i64 176, !6, i64 180, !5, i64 184, !37, i64 248, !6, i64 256, !24, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !36, i64 304, !38, i64 312, !6, i64 320, !17, i64 328, !17, i64 336, !36, i64 344, !36, i64 352, !36, i64 360, !36, i64 368, !9, i64 376, !23, i64 384, !36, i64 408, !6, i64 416}
!40 = !{!39, !6, i64 112}
!41 = !{!"ThreadData", !20, i64 0, !20, i64 8}
!42 = !{!41, !20, i64 0}
!43 = !{!41, !20, i64 8}
!44 = !{!33, !9, i64 456}
!45 = !{!33, !20, i64 448}
!46 = !{!39, !6, i64 388}
!47 = !{!33, !32, i64 16}
!48 = !{!39, !35, i64 96}
!49 = !{!33, !6, i64 36}
!50 = !{!12, !12, i64 0}
!51 = !{!"llvm.loop.mustprogress"}
!52 = !{!32, !32, i64 0}
!53 = !{!"BiquadCoeffs", !32, i64 0, !32, i64 8, !32, i64 16, !32, i64 24, !32, i64 32}
!54 = !{!53, !32, i64 8}
!55 = !{!53, !32, i64 32}
!56 = !{!53, !32, i64 24}
!57 = !{!20, !20, i64 0}
!58 = !{!18, !15, i64 56}
!59 = !{!28, !6, i64 76}
!60 = !{!28, !6, i64 36}
!61 = distinct !{!61, !51}
!62 = distinct !{!62, !51}
!63 = distinct !{!63, !51}
!64 = !{!"float", !5, i64 0}
!65 = !{!64, !64, i64 0}
!66 = distinct !{!66, !51}
!67 = distinct !{!67, !51}
!68 = distinct !{!68, !51}
!69 = distinct !{!69, !51, !88, !89}
!70 = distinct !{!70, !51, !89, !88}
!71 = distinct !{!71, !51, !88, !89}
!72 = distinct !{!72, !51, !89, !88}
!73 = distinct !{!73, !51, !88, !89}
!74 = distinct !{!74, !51, !89, !88}
!75 = distinct !{!75, !51, !88, !89}
!76 = distinct !{!76, !51, !89, !88}
!77 = distinct !{!77, !51, !88, !89}
!78 = distinct !{!78, !51, !89, !88}
!79 = distinct !{!79, !51, !88, !89}
!80 = distinct !{!80, !51, !89, !88}
!81 = !{!18, !15, i64 32}
!82 = !{!33, !32, i64 8}
!83 = !{!28, !6, i64 64}
!84 = !{!18, !11, i64 8}
!85 = !{!"AVFilter", !12, i64 0, !12, i64 8, !13, i64 16, !13, i64 24, !10, i64 32, !6, i64 40}
!86 = !{!85, !12, i64 0}
!87 = !{!33, !6, i64 32}
!88 = !{!"llvm.loop.isvectorized", i32 1}
!89 = !{!"llvm.loop.unroll.runtime.disable"}
!90 = !{!53, !32, i64 16}
end_hunk_0
