inline.NumInlined: 173
inline.NumDeleted: 66
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZL20BM_VOL3D_CALC_LAMBDARN9benchmark5StateE:bb.a

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %"._Z6forallI9simd_execZL20BM_VOL3D_CALC_LAMBDARN9benchmark5StateEE3$_0EviiT0_.exit_crit_edge", label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %i.dq, %middle.block ], [ %i.ax, %.lr.ph ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 19 uses
  %i.hl = getelementptr inbounds [8 x i8], ptr %i.z, i64 %indvars.iv
  %i.hm = getelementptr inbounds [8 x i8], ptr %i.r, i64 %indvars.iv
  %i.hn = getelementptr inbounds [8 x i8], ptr %i.w, i64 %indvars.iv
  %i.ho = getelementptr inbounds [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.hp = getelementptr inbounds [8 x i8], ptr %i.y, i64 %indvars.iv
  %i.hq = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %indvars.iv
  %i.hr = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %indvars.iv
  %i.hs = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %indvars.iv
  %i.ht = getelementptr inbounds [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.hu = getelementptr inbounds [8 x i8], ptr %i.af, i64 %indvars.iv
  %i.hv = getelementptr inbounds [8 x i8], ptr %i.an, i64 %indvars.iv
  %i.hw = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %indvars.iv
  %i.hx = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %indvars.iv
  %i.hy = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %indvars.iv
  %i.hz = getelementptr inbounds [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.ia = getelementptr inbounds [8 x i8], ptr %i.al, i64 %indvars.iv
  %i.ib = getelementptr inbounds [8 x i8], ptr %i.am, i64 %indvars.iv
  %i.ic = getelementptr inbounds [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.id = load <2 x double>, ptr %i.hm, align 8, !tbaa !11 ; 2 uses
  %i.ie = load <2 x double>, ptr %i.hn, align 8, !tbaa !11 ; 2 uses
  %i.if = load double, ptr %i.hl, align 8, !tbaa !11
  %i.ig = load double, ptr %i.hp, align 8, !tbaa !11
  %i.ih = insertelement <2 x double> poison, double %i.if, i64 0 ; 2 uses
  %i.ii = shufflevector <2 x double> %i.ih, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ij = shufflevector <2 x double> %i.id, <2 x double> %i.ie, <2 x i32> <i32 0, i32 2>
  %i.ik = fsub <2 x double> %i.ii, %i.ij          ; 4 uses
  %i.il = load <2 x double>, ptr %i.ho, align 8, !tbaa !11 ; 2 uses
  %i.im = shufflevector <2 x double> %i.ie, <2 x double> %i.ih, <2 x i32> <i32 1, i32 2>
  %i.in = fsub <2 x double> %i.im, %i.il          ; 4 uses
  %i.io = shufflevector <2 x double> %i.in, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ip = shufflevector <2 x double> %i.id, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.iq = insertelement <2 x double> %i.ip, double %i.ig, i64 1
  %i.ir = shufflevector <2 x double> %i.il, <2 x double> poison, <2 x i32> zeroinitializer
  %i.is = fsub <2 x double> %i.iq, %i.ir          ; 4 uses
  %i.it = load <2 x double>, ptr %i.hr, align 8, !tbaa !11 ; 2 uses
  %i.iu = load <2 x double>, ptr %i.hs, align 8, !tbaa !11 ; 2 uses
  %i.iv = load double, ptr %i.hq, align 8, !tbaa !11
  %i.iw = load double, ptr %i.hu, align 8, !tbaa !11
  %i.ix = insertelement <2 x double> poison, double %i.iv, i64 0 ; 2 uses
  %i.iy = shufflevector <2 x double> %i.ix, <2 x double> poison, <2 x i32> zeroinitializer
  %i.iz = shufflevector <2 x double> %i.it, <2 x double> %i.iu, <2 x i32> <i32 0, i32 2>
  %i.ja = fsub <2 x double> %i.iy, %i.iz          ; 4 uses
  %i.jb = load <2 x double>, ptr %i.ht, align 8, !tbaa !11 ; 2 uses
  %i.jc = shufflevector <2 x double> %i.iu, <2 x double> %i.ix, <2 x i32> <i32 1, i32 2>
  %i.jd = fsub <2 x double> %i.jc, %i.jb          ; 5 uses
  %i.je = shufflevector <2 x double> %i.jd, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.jf = shufflevector <2 x double> %i.it, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.jg = insertelement <2 x double> %i.jf, double %i.iw, i64 1
  %i.jh = shufflevector <2 x double> %i.jb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ji = fsub <2 x double> %i.jg, %i.jh          ; 4 uses
  %i.jj = load <2 x double>, ptr %i.hw, align 8, !tbaa !11
  %i.jk = load double, ptr %i.hy, align 8, !tbaa !11
  %i.jl = load double, ptr %i.ia, align 8, !tbaa !11
  %i.jm = load double, ptr %i.hx, align 8, !tbaa !11
  %i.jn = load double, ptr %i.hv, align 8, !tbaa !11
  %i.jo = load <2 x double>, ptr %i.ib, align 8, !tbaa !11 ; 2 uses
  %i.jp = fsub double %i.jn, %i.jm                ; 2 uses
  %i.jq = load <2 x double>, ptr %i.hz, align 8, !tbaa !11 ; 3 uses
  %i.jr = insertelement <2 x double> %i.jo, double %i.jl, i64 0
  %i.js = fsub <2 x double> %i.jr, %i.jq          ; 3 uses
  %i.jt = shufflevector <2 x double> %i.js, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ju = shufflevector <2 x double> %i.jq, <2 x double> %i.jj, <2 x i32> <i32 0, i32 2>
  %i.jv = fsub <2 x double> %i.jo, %i.ju          ; 2 uses
  %i.jw = extractelement <2 x double> %i.jq, i64 0
  %i.jx = fsub double %i.jk, %i.jw                ; 2 uses
  %i.jy = shufflevector <2 x double> %i.is, <2 x double> %i.ik, <2 x i32> <i32 1, i32 2>
  %i.jz = fadd <2 x double> %i.jy, %i.io
  %i.ka = shufflevector <2 x double> %i.ji, <2 x double> %i.ja, <2 x i32> <i32 1, i32 2>
  %i.kb = fadd <2 x double> %i.ka, %i.je
  %i.kc = fadd <2 x double> %i.jv, %i.jt
  %i.kd = fneg <2 x double> %i.ji
  %i.ke = shufflevector <2 x double> %i.jv, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.kf = insertelement <2 x double> %i.ke, double %i.jp, i64 1 ; 2 uses
  %i.kg = fmul <2 x double> %i.kf, %i.kd
  %i.kh = insertelement <2 x double> %i.ke, double %i.jx, i64 0 ; 2 uses
  %i.ki = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ja, <2 x double> %i.kh, <2 x double> %i.kg)
  %i.kj = fneg <2 x double> %i.kh
  %i.kk = fmul <2 x double> %i.ik, %i.kj
  %i.kl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kf, <2 x double> %i.is, <2 x double> %i.kk)
  %i.km = fneg <2 x double> %i.is
  %i.kn = fmul <2 x double> %i.ja, %i.km
  %i.ko = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ik, <2 x double> %i.ji, <2 x double> %i.kn)
  %i.kp = fmul <2 x double> %i.kb, %i.kl
  %i.kq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jz, <2 x double> %i.ki, <2 x double> %i.kp)
  %i.kr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kc, <2 x double> %i.ko, <2 x double> %i.kq) ; 2 uses
  %shift = shufflevector <2 x double> %i.kr, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.kr, %shift
  %i.ks = extractelement <2 x double> %foldExtExtBinop, i64 0
  %shift238 = shufflevector <2 x double> %i.ik, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop239 = fadd <2 x double> %shift238, %i.is
  %shift241 = shufflevector <2 x double> %i.ja, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop242 = fadd <2 x double> %shift241, %i.ji
  %i.kt = fadd double %i.jp, %i.jx
  %i.ku = shufflevector <2 x double> %i.js, <2 x double> %i.jd, <2 x i32> <i32 0, i32 2>
  %i.kv = fneg <2 x double> %i.ku
  %i.kw = shufflevector <2 x double> %i.in, <2 x double> %i.js, <2 x i32> <i32 1, i32 3>
  %i.kx = fmul <2 x double> %i.kw, %i.kv
  %i.ky = shufflevector <2 x double> %i.in, <2 x double> %i.jd, <2 x i32> <i32 0, i32 3>
  %i.kz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jt, <2 x double> %i.ky, <2 x double> %i.kx) ; 2 uses
  %i.la = shufflevector <2 x double> %i.jd, <2 x double> %i.kz, <2 x i32> <i32 1, i32 2>
  %i.lb = fneg <2 x double> %i.io
  %i.lc = shufflevector <2 x double> %i.lb, <2 x double> %foldExtExtBinop242, <2 x i32> <i32 1, i32 2>
  %i.ld = fmul <2 x double> %i.la, %i.lc
  %i.le = shufflevector <2 x double> %i.in, <2 x double> %foldExtExtBinop239, <2 x i32> <i32 1, i32 2>
  %i.lf = shufflevector <2 x double> %i.jd, <2 x double> %i.kz, <2 x i32> <i32 0, i32 3>
  %i.lg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.le, <2 x double> %i.lf, <2 x double> %i.ld) ; 2 uses
  %i.lh = extractelement <2 x double> %i.lg, i64 0
  %i.li = extractelement <2 x double> %i.lg, i64 1
  %i.lj = call double @llvm.fmuladd.f64(double %i.kt, double %i.lh, double %i.li)
  %i.lk = fadd double %i.lj, %i.ks
  %i.ll = fmul double %i.lk, f0x3FB5555555555555
  store double %i.ll, ptr %i.ic, align 8, !tbaa !11
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.ay, %lftr.wideiv
  br i1 %exitcond.not, label %"._Z6forallI9simd_execZL20BM_VOL3D_CALC_LAMBDARN9benchmark5StateEE3$_0EviiT0_.exit_crit_edge", label %scalar.ph, !llvm.loop !128

"._Z6forallI9simd_execZL20BM_VOL3D_CALC_LAMBDARN9benchmark5StateEE3$_0EviiT0_.exit_crit_edge": ; preds = %scalar.ph, %middle.block
  %i.lm = add nsw i64 %.sroa.027.0138, -1         ; 2 uses
  %.not.i.not = icmp eq i64 %i.lm, 0
  br i1 %.not.i.not, label %_ZN9benchmark5State3endEv.exit._crit_edge.split, label %.lr.ph, !prof !62

bb.f:                                             ; preds = %bb.e
  call void @_ZdaPv(ptr noundef nonnull %i.dv) #10
  br label %_ZN7ADomainD2Ev.exit24

_ZN7ADomainD2Ev.exit24:                           ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  resume { ptr, i32 } %i.dt
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL24BM_DEL_DOT_VEC_2D_LAMBDARN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(1616) ptr @_Z11getLoopDatav() ; 5 uses
  tail call void @_Z8loopInitj(i32 noundef 6)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8    ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !8    ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !8    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !8    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 32, !tbaa !41
  %i.n = load i64, ptr %i.m, align 8, !tbaa !42
  %i.o = trunc i64 %i.n to i32
  switch i32 %i.o, label %bb.e [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.p = load double, ptr @_ZN7ADomain18loop_length_factorE, align 8, !tbaa !11
  %i.q = fmul double %i.p, 1.560000e+02
  %i.r = fptosi double %i.q to i32
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.s = load double, ptr @_ZN7ADomain18loop_length_factorE, align 8, !tbaa !11
  %i.t = fmul double %i.s, 6.400000e+01
  %i.u = fptosi double %i.t to i32
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.v = load double, ptr @_ZN7ADomain18loop_length_factorE, align 8, !tbaa !11
  %i.w = fmul double %i.v, 8.000000e+00
  %i.x = fptosi double %i.w to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.0.i24 = phi i32 [ undef, %bb.a ], [ %i.r, %bb.b ], [ %i.x, %bb.d ], [ %i.u, %bb.c ] ; 6 uses
  %i.y = add nsw i32 %.0.i24, 3                   ; 5 uses
  %i.z = mul nsw i32 %i.y, %i.y
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = shl nuw nsw i64 %i.aa, 2                ; 2 uses
  %i.ac = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ab) #11 ; 6 uses
  %.not = icmp eq i32 %i.y, 0
  br i1 %.not, label %_ZN7ADomainC2Eii.exit, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.e
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ac, i8 -1, i64 %i.ab, i1 false), !tbaa !4
  %i.ad = icmp sgt i32 %.0.i24, 1
  br i1 %i.ad, label %.lr.ph65.i.preheader, label %_ZN7ADomainC2Eii.exit

.lr.ph65.i.preheader:                             ; preds = %._crit_edge.i
  %i.ae = add nsw i32 %.0.i24, -1                 ; 2 uses
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  %min.iters.check = icmp ult i32 %.0.i24, 9
  %n.vec = and i64 %i.af, 4294967288              ; 4 uses
  %i.ag = trunc nuw i64 %n.vec to i32
  %i.ah = or disjoint i32 %i.ag, 2
  %cmp.n = icmp eq i64 %n.vec, %i.af
  br label %.lr.ph65.i

.lr.ph65.i:                                       ; preds = %._crit_edge66.i, %.lr.ph65.i.preheader
  %indvars.iv82.i = phi i32 [ 0, %.lr.ph65.i.preheader ], [ %indvars.iv.next83.i, %._crit_edge66.i ] ; 2 uses
  %.04169.i = phi i32 [ 2, %.lr.ph65.i.preheader ], [ %i.ap, %._crit_edge66.i ] ; 3 uses
  %1 = sext i32 %indvars.iv82.i to i64            ; 3 uses
  %i.ai = mul nuw nsw i32 %.04169.i, %i.y         ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph65.i
  %i.aj = add nsw i64 %n.vec, %1                  ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ai, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op = add nuw nsw <4 x i32> splat (i32 4), %broadcast.splat
  %i.ak = getelementptr [4 x i8], ptr %i.ac, i64 %1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 2, i32 3, i32 4, i32 5>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.al = add nuw nsw <4 x i32> %vec.ind, %broadcast.splat
  %.reass = add nuw nsw <4 x i32> %vec.ind, %invariant.op
  %i.am = getelementptr [4 x i8], ptr %i.ak, i64 %index ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store <4 x i32> %i.al, ptr %i.am, align 4, !tbaa !4
  store <4 x i32> %.reass, ptr %i.an, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i32> %vec.ind, splat (i32 8)
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !129

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge66.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph65.i, %middle.block
  %indvars.iv78.i.ph = phi i64 [ %1, %.lr.ph65.i ], [ %i.aj, %middle.block ]
  %.04263.i.ph = phi i32 [ 2, %.lr.ph65.i ], [ %i.ah, %middle.block ]
  br label %scalar.ph

._crit_edge66.i:                                  ; preds = %scalar.ph, %middle.block
  %indvars.iv.next79.i.lcssa = phi i64 [ %i.aj, %middle.block ], [ %indvars.iv.next79.i, %scalar.ph ]
  %i.ap = add nuw nsw i32 %.04169.i, 1
  %indvars.iv.next83.i = add i32 %i.ae, %indvars.iv82.i
  %exitcond82.not.i = icmp eq i32 %.04169.i, %.0.i24
  br i1 %exitcond82.not.i, label %.loopexit.sink.split.i, label %.lr.ph65.i, !llvm.loop !130

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv78.i = phi i64 [ %indvars.iv.next79.i, %scalar.ph ], [ %indvars.iv78.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.04263.i = phi i32 [ %i.as, %scalar.ph ], [ %.04263.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.aq = add nuw nsw i32 %.04263.i, %i.ai
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %indvars.iv78.i
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !4
  %indvars.iv.next79.i = add nsw i64 %indvars.iv78.i, 1 ; 2 uses
  %i.as = add nuw nsw i32 %.04263.i, 1
  %exitcond81.not.i = icmp eq i32 %.04263.i, %.0.i24
  br i1 %exitcond81.not.i, label %._crit_edge66.i, label %scalar.ph, !llvm.loop !131

.loopexit.sink.split.i:                           ; preds = %._crit_edge66.i
  %i.at = trunc nsw i64 %indvars.iv.next79.i.lcssa to i32
  br label %_ZN7ADomainC2Eii.exit

_ZN7ADomainC2Eii.exit:                            ; preds = %bb.e, %._crit_edge.i, %.loopexit.sink.split.i
  %.sroa.29.0 = phi i32 [ %i.at, %.loopexit.sink.split.i ], [ 0, %._crit_edge.i ], [ 0, %bb.e ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.av = sext i32 %i.y to i64                    ; 6 uses
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.av
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.av
  %i.ay = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.az = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %i.av
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.av
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.av
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.av
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !13
  %.not111 = icmp eq i32 %i.be, 0
  br i1 %.not111, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN7ADomainC2Eii.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bg = load i64, ptr %i.bf, align 16, !tbaa !39
  br label %bb.g

bb.g:                                             ; preds = %_ZN7ADomainC2Eii.exit, %bb.f
  %i.bh = phi i64 [ %i.bg, %bb.f ], [ 0, %_ZN7ADomainC2Eii.exit ] ; 2 uses
  invoke void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
          to label %_ZN9benchmark5State3endEv.exit.preheader unwind label %_ZN7ADomainD2Ev.exit27

_ZN9benchmark5State3endEv.exit.preheader:         ; preds = %bb.g
  %.not.i.not113 = icmp ne i64 %i.bh, 0
  %i.bi = icmp sgt i32 %.sroa.29.0, 0
  %or.cond = select i1 %.not.i.not113, i1 %i.bi, i1 false, !prof !132
  br i1 %or.cond, label %.preheader.preheader, label %_ZN9benchmark5State3endEv.exit._crit_edge.split, !prof !132

.preheader.preheader:                             ; preds = %_ZN9benchmark5State3endEv.exit.preheader
  %wide.trip.count = zext nneg i32 %.sroa.29.0 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %"._Z6forallI9simd_execZL24BM_DEL_DOT_VEC_2D_LAMBDARN9benchmark5StateEE3$_0EviiT0_.exit_crit_edge"
  %.sroa.030.0114 = phi i64 [ %i.ep, %"._Z6forallI9simd_execZL24BM_DEL_DOT_VEC_2D_LAMBDARN9benchmark5StateEE3$_0EviiT0_.exit_crit_edge" ], [ %i.bh, %.preheader.preheader ]
  br label %bb.h

_ZN9benchmark5State3endEv.exit._crit_edge.split:  ; preds = %"._Z6forallI9simd_execZL24BM_DEL_DOT_VEC_2D_LAMBDARN9benchmark5StateEE3$_0EviiT0_.exit_crit_edge", %_ZN9benchmark5State3endEv.exit.preheader
  invoke void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
          to label %_ZN7ADomainD2Ev.exit unwind label %_ZN7ADomainD2Ev.exit27

_ZN7ADomainD2Ev.exit:                             ; preds = %_ZN9benchmark5State3endEv.exit._crit_edge.split
  tail call void @_ZdaPv(ptr noundef nonnull %i.ac) #10
  ret void

_ZN7ADomainD2Ev.exit27:                           ; preds = %_ZN9benchmark5State3endEv.exit._crit_edge.split, %bb.g
  %i.bj = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdaPv(ptr noundef nonnull %i.ac) #10
  resume { ptr, i32 } %i.bj

bb.h:                                             ; preds = %.preheader, %bb.h
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !4
  %i.bm = sext i32 %i.bl to i64                   ; 13 uses
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.bm
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.bm
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %i.bm
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.bm
  %i.br = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %i.bm
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.bm
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %i.bm
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.bm
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %i.bm
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.bm
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.bm
  %i.by = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.bm
  %i.bz = load <2 x double>, ptr %i.bp, align 8, !tbaa !11 ; 3 uses
  %i.ca = load double, ptr %i.bo, align 8, !tbaa !11
  %i.cb = load <2 x double>, ptr %i.bq, align 8, !tbaa !11 ; 3 uses
  %i.cc = load double, ptr %i.bn, align 8, !tbaa !11
  %i.cd = extractelement <2 x double> %i.bz, i64 0
  %i.ce = fadd double %i.ca, %i.cd
  %i.cf = extractelement <2 x double> %i.cb, i64 0
  %i.cg = fsub double %i.ce, %i.cf
  %i.ch = fsub double %i.cg, %i.cc
  %i.ci = fmul double %i.ch, 5.000000e-01         ; 2 uses
  %i.cj = load <2 x double>, ptr %i.bt, align 8, !tbaa !11 ; 3 uses
  %i.ck = load double, ptr %i.bs, align 8, !tbaa !11
  %i.cl = load <2 x double>, ptr %i.bu, align 8, !tbaa !11 ; 4 uses
  %i.cm = load double, ptr %i.br, align 8, !tbaa !11
  %i.cn = fadd double %i.cm, %i.ck                ; 2 uses
  %i.co = extractelement <2 x double> %i.cj, i64 0 ; 2 uses
  %i.cp = fsub double %i.cn, %i.co
  %i.cq = extractelement <2 x double> %i.cl, i64 0
  %i.cr = fsub double %i.cp, %i.cq
  %i.cs = shufflevector <2 x double> %i.cj, <2 x double> %i.cb, <2 x i32> <i32 1, i32 3>
  %i.ct = shufflevector <2 x double> %i.cj, <2 x double> %i.bz, <2 x i32> <i32 0, i32 3>
  %i.cu = fadd <2 x double> %i.cs, %i.ct
  %i.cv = shufflevector <2 x double> %i.cl, <2 x double> %i.bz, <2 x i32> <i32 0, i32 2>
  %i.cw = fsub <2 x double> %i.cu, %i.cv
  %i.cx = shufflevector <2 x double> %i.cl, <2 x double> %i.cb, <2 x i32> <i32 1, i32 2>
  %i.cy = fsub <2 x double> %i.cw, %i.cx
  %i.cz = fmul <2 x double> %i.cy, splat (double 5.000000e-01) ; 3 uses
  %i.da = load <2 x double>, ptr %i.bv, align 8, !tbaa !11 ; 4 uses
  %i.db = load <2 x double>, ptr %i.bw, align 8, !tbaa !11 ; 4 uses
  %i.dc = load <2 x double>, ptr %i.bx, align 8, !tbaa !11 ; 5 uses
  %i.dd = load <2 x double>, ptr %i.by, align 8, !tbaa !11 ; 5 uses
  %i.de = shufflevector <2 x double> %i.da, <2 x double> %i.dd, <2 x i32> <i32 1, i32 3>
  %i.df = shufflevector <2 x double> %i.da, <2 x double> %i.dc, <2 x i32> <i32 0, i32 3>
  %i.dg = fadd <2 x double> %i.de, %i.df          ; 2 uses
  %i.dh = shufflevector <2 x double> %i.db, <2 x double> %i.dc, <2 x i32> <i32 0, i32 2>
  %i.di = fsub <2 x double> %i.dg, %i.dh
  %i.dj = shufflevector <2 x double> %i.db, <2 x double> %i.dd, <2 x i32> <i32 1, i32 2>
  %i.dk = fsub <2 x double> %i.di, %i.dj
  %i.dl = fmul <2 x double> %i.dk, splat (double 5.000000e-01)
  %i.dm = shufflevector <2 x double> %i.db, <2 x double> %i.dc, <2 x i32> <i32 1, i32 3>
  %i.dn = shufflevector <2 x double> %i.da, <2 x double> %i.dc, <2 x i32> <i32 1, i32 2>
  %i.do = fadd <2 x double> %i.dm, %i.dn
  %i.dp = shufflevector <2 x double> %i.da, <2 x double> %i.dd, <2 x i32> <i32 0, i32 2>
  %i.dq = fsub <2 x double> %i.do, %i.dp
  %i.dr = shufflevector <2 x double> %i.db, <2 x double> %i.dd, <2 x i32> <i32 0, i32 3>
  %i.ds = fsub <2 x double> %i.dq, %i.dr
  %i.dt = fmul <2 x double> %i.ds, splat (double 5.000000e-01)
  %i.du = fmul double %i.cr, -5.000000e-01        ; 2 uses
  %i.dv = fmul double %i.ci, %i.du
  %i.dw = extractelement <2 x double> %i.cz, i64 0
  %i.dx = extractelement <2 x double> %i.cz, i64 1
  %i.dy = tail call double @llvm.fmuladd.f64(double %i.dx, double %i.dw, double %i.dv)
  %i.dz = fneg double %i.ci
  %i.ea = insertelement <2 x double> poison, double %i.du, i64 0
  %i.eb = insertelement <2 x double> %i.ea, double %i.dz, i64 1
  %i.ec = fmul <2 x double> %i.dl, %i.eb
  %i.ed = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dt, <2 x double> %i.cz, <2 x double> %i.ec)
  %shift = shufflevector <2 x double> %i.dg, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %shift, %i.dc
  %foldExtExtBinop119 = fadd <2 x double> %foldExtExtBinop, %i.dd
  %i.ee = fadd double %i.cn, %i.co
  %i.ef = insertelement <2 x double> poison, double %i.dy, i64 0
  %i.eg = insertelement <2 x double> %i.ef, double %i.ee, i64 1
  %i.eh = shufflevector <2 x double> %i.cl, <2 x double> <double f0x3BC79CA10C924223, double poison>, <2 x i32> <i32 2, i32 0>
  %i.ei = fadd <2 x double> %i.eg, %i.eh
  %i.ej = shufflevector <2 x double> <double 1.000000e+00, double poison>, <2 x double> %foldExtExtBinop119, <2 x i32> <i32 0, i32 2>
  %i.ek = fdiv <2 x double> %i.ej, %i.ei          ; 2 uses
  %i.el = shufflevector <2 x double> %i.ek, <2 x double> poison, <2 x i32> zeroinitializer
  %i.em = fmul <2 x double> %i.el, %i.ed          ; 2 uses
  %shift121 = shufflevector <2 x double> %i.em, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop122 = fadd <2 x double> %i.em, %shift121
  %shift124 = shufflevector <2 x double> %i.ek, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop125 = fadd <2 x double> %shift124, %foldExtExtBinop122
  %i.en = extractelement <2 x double> %foldExtExtBinop125, i64 0
  %i.eo = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.bm
  store double %i.en, ptr %i.eo, align 8, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %"._Z6forallI9simd_execZL24BM_DEL_DOT_VEC_2D_LAMBDARN9benchmark5StateEE3$_0EviiT0_.exit_crit_edge", label %bb.h, !llvm.loop !133

"._Z6forallI9simd_execZL24BM_DEL_DOT_VEC_2D_LAMBDARN9benchmark5StateEE3$_0EviiT0_.exit_crit_edge": ; preds = %bb.h
  %i.ep = add nsw i64 %.sroa.030.0114, -1         ; 2 uses
  %.not.i.not = icmp eq i64 %i.ep, 0
  br i1 %.not.i.not, label %_ZN9benchmark5State3endEv.exit._crit_edge.split, label %.preheader, !prof !62
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL16BM_COUPLE_LAMBDARN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %struct.ADomain, align 8            ; 12 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(1616) ptr @_Z11getLoopDatav() ; 5 uses
  tail call void @_Z8loopInitj(i32 noundef 7)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !134
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !134
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !134
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !134
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !134
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 32, !tbaa !41
  %i.n = load i64, ptr %i.m, align 8, !tbaa !42
  %i.o = trunc i64 %i.n to i32
  call void @_ZN7ADomainC2Eii(ptr noundef nonnull align 8 dereferenceable(84) %1, i32 noundef %i.o, i32 noundef 3)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.q = load i32, ptr %i.p, align 4, !tbaa !136  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
end_hunk_0
begin_hunk_1_@_ZL13BM_FIR_LAMBDARN9benchmark5StateE:bb.a
  %i.ae = getelementptr i8, ptr %i.s, i64 48
  %wide.load39 = load <2 x double>, ptr %i.ae, align 8, !tbaa !11, !alias.scope !148
  %i.af = fsub <2 x double> %i.ad, %wide.load39
  %i.ag = getelementptr i8, ptr %i.s, i64 56
  %wide.load40 = load <2 x double>, ptr %i.ag, align 8, !tbaa !11, !alias.scope !148
  %i.ah = fsub <2 x double> %i.af, %wide.load40
  %i.ai = getelementptr i8, ptr %i.s, i64 64
  %wide.load41 = load <2 x double>, ptr %i.ai, align 8, !tbaa !11, !alias.scope !148
  %i.aj = fsub <2 x double> %i.ah, %wide.load41
  %i.ak = getelementptr i8, ptr %i.s, i64 72
  %wide.load42 = load <2 x double>, ptr %i.ak, align 8, !tbaa !11, !alias.scope !148
  %i.al = fsub <2 x double> %i.aj, %wide.load42
  %i.am = getelementptr i8, ptr %i.s, i64 80
  %wide.load43 = load <2 x double>, ptr %i.am, align 8, !tbaa !11, !alias.scope !148
  %i.an = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load43, <2 x double> splat (double 3.000000e+00), <2 x double> %i.al)
  %i.ao = getelementptr i8, ptr %i.s, i64 88
  %wide.load44 = load <2 x double>, ptr %i.ao, align 8, !tbaa !11, !alias.scope !148
  %i.ap = fsub <2 x double> %i.an, %wide.load44
  %i.aq = getelementptr i8, ptr %i.s, i64 96
  %wide.load45 = load <2 x double>, ptr %i.aq, align 8, !tbaa !11, !alias.scope !148
  %i.ar = fsub <2 x double> %i.ap, %wide.load45
  %i.as = getelementptr i8, ptr %i.s, i64 104
  %wide.load46 = load <2 x double>, ptr %i.as, align 8, !tbaa !11, !alias.scope !148
  %i.at = fsub <2 x double> %i.ar, %wide.load46
  %i.au = getelementptr i8, ptr %i.s, i64 112
  %wide.load47 = load <2 x double>, ptr %i.au, align 8, !tbaa !11, !alias.scope !148
  %i.av = fsub <2 x double> %i.at, %wide.load47
  %i.aw = getelementptr i8, ptr %i.s, i64 120
  %wide.load48 = load <2 x double>, ptr %i.aw, align 8, !tbaa !11, !alias.scope !148
  %i.ax = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load48, <2 x double> splat (double 3.000000e+00), <2 x double> %i.av)
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index
  store <2 x double> %i.ax, ptr %i.ay, align 8, !tbaa !11, !alias.scope !151, !noalias !148
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !153

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %"._Z6forallIZL13BM_FIR_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge", label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader ]
  br label %scalar.ph

._crit_edge.split:                                ; preds = %"._Z6forallIZL13BM_FIR_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge", %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  tail call void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  ret void

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv ; 16 uses
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !11
  %i.bc = tail call double @llvm.fmuladd.f64(double %i.bb, double 3.000000e+00, double 0.000000e+00)
  %i.bd = getelementptr i8, ptr %i.ba, i64 8
  %i.be = load double, ptr %i.bd, align 8, !tbaa !11
  %i.bf = fsub double %i.bc, %i.be
  %i.bg = getelementptr i8, ptr %i.ba, i64 16
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !11
  %i.bi = fsub double %i.bf, %i.bh
  %i.bj = getelementptr i8, ptr %i.ba, i64 24
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !11
  %i.bl = fsub double %i.bi, %i.bk
  %i.bm = getelementptr i8, ptr %i.ba, i64 32
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !11
  %i.bo = fsub double %i.bl, %i.bn
  %i.bp = getelementptr i8, ptr %i.ba, i64 40
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !11
  %i.br = tail call double @llvm.fmuladd.f64(double %i.bq, double 3.000000e+00, double %i.bo)
  %i.bs = getelementptr i8, ptr %i.ba, i64 48
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !11
  %i.bu = fsub double %i.br, %i.bt
  %i.bv = getelementptr i8, ptr %i.ba, i64 56
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !11
  %i.bx = fsub double %i.bu, %i.bw
  %i.by = getelementptr i8, ptr %i.ba, i64 64
  %i.bz = load double, ptr %i.by, align 8, !tbaa !11
  %i.ca = fsub double %i.bx, %i.bz
  %i.cb = getelementptr i8, ptr %i.ba, i64 72
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !11
  %i.cd = fsub double %i.ca, %i.cc
  %i.ce = getelementptr i8, ptr %i.ba, i64 80
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !11
  %i.cg = tail call double @llvm.fmuladd.f64(double %i.cf, double 3.000000e+00, double %i.cd)
  %i.ch = getelementptr i8, ptr %i.ba, i64 88
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !11
  %i.cj = fsub double %i.cg, %i.ci
  %i.ck = getelementptr i8, ptr %i.ba, i64 96
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !11
  %i.cm = fsub double %i.cj, %i.cl
  %i.cn = getelementptr i8, ptr %i.ba, i64 104
  %i.co = load double, ptr %i.cn, align 8, !tbaa !11
  %i.cp = fsub double %i.cm, %i.co
  %i.cq = getelementptr i8, ptr %i.ba, i64 112
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !11
  %i.cs = fsub double %i.cp, %i.cr
  %i.ct = getelementptr i8, ptr %i.ba, i64 120
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !11
  %i.cv = tail call double @llvm.fmuladd.f64(double %i.cu, double 3.000000e+00, double %i.cs)
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  store double %i.cv, ptr %i.cw, align 8, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %"._Z6forallIZL13BM_FIR_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge", label %scalar.ph, !llvm.loop !154

"._Z6forallIZL13BM_FIR_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge": ; preds = %scalar.ph, %middle.block
  %i.cx = add nsw i64 %.sroa.013.029, -1          ; 2 uses
  %.not.i.not = icmp eq i64 %i.cx, 0
  br i1 %.not.i.not, label %._crit_edge.split, label %.preheader, !prof !62
}

declare noundef nonnull align 8 dereferenceable(1616) ptr @_Z11getLoopDatav() local_unnamed_addr #0

declare void @_Z8loopInitj(i32 noundef) local_unnamed_addr #0

declare void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184)) local_unnamed_addr #0

declare void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184)) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #5

declare void @_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7ADomainC2Eii(ptr noundef nonnull align 8 dereferenceable(84) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #3 comdat align 2 {
bb.a:
  store i32 %2, ptr %0, align 8, !tbaa !155
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 2, ptr %i.a, align 4, !tbaa !156
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !157
  switch i32 %1, label %bb.k [
    i32 0, label %bb.b
    i32 1, label %bb.e
    i32 2, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  switch i32 %2, label %bb.k [
    i32 2, label %bb.c
    i32 3, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.c = load double, ptr @_ZN7ADomain18loop_length_factorE, align 8, !tbaa !11
  %i.d = fmul double %i.c, 1.560000e+02
  %i.e = fptosi double %i.d to i32
  br label %bb.k

bb.d:                                             ; preds = %bb.b
  %i.f = load double, ptr @_ZN7ADomain18loop_length_factorE, align 8, !tbaa !11
  %i.g = fmul double %i.f, 2.800000e+01
  %i.h = fptosi double %i.g to i32
  br label %bb.k

bb.e:                                             ; preds = %bb.a
  switch i32 %2, label %bb.k [
    i32 2, label %bb.f
    i32 3, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.i = load double, ptr @_ZN7ADomain18loop_length_factorE, align 8, !tbaa !11
  %i.j = fmul double %i.i, 6.400000e+01
  %i.k = fptosi double %i.j to i32
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  %i.l = load double, ptr @_ZN7ADomain18loop_length_factorE, align 8, !tbaa !11
  %i.m = fmul double %i.l, 1.600000e+01
  %i.n = fptosi double %i.m to i32
  br label %bb.k

bb.h:                                             ; preds = %bb.a
  switch i32 %2, label %bb.k [
    i32 2, label %bb.i
    i32 3, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.o = load double, ptr @_ZN7ADomain18loop_length_factorE, align 8, !tbaa !11
  %i.p = fmul double %i.o, 8.000000e+00
  %i.q = fptosi double %i.p to i32
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.r = load double, ptr @_ZN7ADomain18loop_length_factorE, align 8, !tbaa !11
  %i.s = fmul double %i.r, 4.000000e+00
  %i.t = fptosi double %i.s to i32
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.e, %bb.b, %bb.a, %bb.i, %bb.j, %bb.f, %bb.g, %bb.c, %bb.d
  %.0 = phi i32 [ undef, %bb.a ], [ %i.e, %bb.c ], [ %i.h, %bb.d ], [ undef, %bb.b ], [ %i.k, %bb.f ], [ %i.n, %bb.g ], [ undef, %bb.e ], [ %i.q, %bb.i ], [ %i.t, %bb.j ], [ undef, %bb.h ] ; 13 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 2, ptr %i.u, align 4, !tbaa !136
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 2, ptr %i.v, align 8, !tbaa !138
  %i.w = add nsw i32 %.0, 1                       ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.w, ptr %i.x, align 8, !tbaa !137
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.w, ptr %i.y, align 4, !tbaa !139
  %i.z = add nsw i32 %.0, 3                       ; 9 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !91
  %i.ab = icmp eq i32 %2, 2                       ; 2 uses
  br i1 %i.ab, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.ac, align 4, !tbaa !140
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.ad, align 8, !tbaa !141
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.ae, align 8, !tbaa !94
  %i.af = mul nsw i32 %i.z, %i.z                  ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !158
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  %i.ah = icmp eq i32 %2, 3
  br i1 %i.ah, label %bb.n, label %._crit_edge83

._crit_edge83:                                    ; preds = %bb.m
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 44
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !158
  %.phi.trans.insert84 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre85 = load i32, ptr %.phi.trans.insert84, align 8, !tbaa !94
  br label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 2, ptr %i.ai, align 4, !tbaa !140
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.w, ptr %i.aj, align 8, !tbaa !141
  %i.ak = mul nsw i32 %i.z, %i.z                  ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.ak, ptr %i.al, align 8, !tbaa !94
  %i.am = mul nsw i32 %i.ak, %i.z                 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.am, ptr %i.an, align 4, !tbaa !158
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge83, %bb.n, %bb.l
  %i.ao = phi i32 [ %.pre85, %._crit_edge83 ], [ %i.ak, %bb.n ], [ 0, %bb.l ]
  %i.ap = phi i32 [ %.pre, %._crit_edge83 ], [ %i.am, %bb.n ], [ %i.af, %bb.l ] ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 0, ptr %i.aq, align 8, !tbaa !159
  %i.ar = add nsw i32 %i.ap, -1                   ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !160
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.au = add i32 %i.ao, %i.z                     ; 2 uses
  %i.av = shl i32 %i.au, 1
  %i.aw = add i32 %i.av, 2                        ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.aw, ptr %i.ax, align 8, !tbaa !161
  %.neg = xor i32 %i.au, -1                       ; 2 uses
  %i.ay = add i32 %i.ar, %.neg                    ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !162
  %i.ba = add i32 %i.aw, %.neg
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !96
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 %i.ay, ptr %i.bc, align 4, !tbaa !97
  %i.bd = sext i32 %i.ap to i64
  %i.be = icmp slt i32 %i.ap, 0
  %i.bf = shl nsw i64 %i.bd, 2
  %i.bg = select i1 %i.be, i64 -1, i64 %i.bf
  %i.bh = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bg) #11 ; 6 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !98
  %i.bj = icmp sgt i32 %i.ap, 0
  br i1 %i.bj, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.o
  %i.bk = zext nneg i32 %i.ap to i64
  %i.bl = shl nuw nsw i64 %i.bk, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bh, i8 -1, i64 %i.bl, i1 false), !tbaa !4
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.o
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store i32 0, ptr %i.bm, align 8, !tbaa !163
  br i1 %i.ab, label %.preheader, label %bb.p

.preheader:                                       ; preds = %._crit_edge
  %i.bn = icmp sgt i32 %.0, 1
  br i1 %i.bn, label %.lr.ph65.preheader, label %.loopexit

.lr.ph65.preheader:                               ; preds = %.preheader
  %i.bo = add nsw i32 %.0, -1                     ; 2 uses
  %i.bp = zext i32 %i.bo to i64                   ; 2 uses
  %min.iters.check98 = icmp ult i32 %.0, 9
  %n.vec101 = and i64 %i.bp, 4294967288           ; 4 uses
  %i.bq = trunc nuw i64 %n.vec101 to i32
  %i.br = or disjoint i32 %i.bq, 2
  %cmp.n111 = icmp eq i64 %n.vec101, %i.bp
  br label %.lr.ph65

.lr.ph65:                                         ; preds = %.lr.ph65.preheader, %._crit_edge66
  %indvars.iv82 = phi i32 [ 0, %.lr.ph65.preheader ], [ %indvars.iv.next83, %._crit_edge66 ] ; 2 uses
  %.04169 = phi i32 [ 2, %.lr.ph65.preheader ], [ %i.bz, %._crit_edge66 ] ; 3 uses
  %3 = sext i32 %indvars.iv82 to i64              ; 3 uses
  %i.bs = mul nuw nsw i32 %i.z, %.04169           ; 2 uses
  br i1 %min.iters.check98, label %scalar.ph97.preheader, label %vector.ph99

vector.ph99:                                      ; preds = %.lr.ph65
  %i.bt = add nsw i64 %n.vec101, %3               ; 2 uses
  %broadcast.splatinsert102 = insertelement <4 x i32> poison, i32 %i.bs, i64 0
  %broadcast.splat103 = shufflevector <4 x i32> %broadcast.splatinsert102, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op121 = add nuw nsw <4 x i32> splat (i32 4), %broadcast.splat103
  %i.bu = getelementptr [4 x i8], ptr %i.bh, i64 %3
  br label %vector.body104

vector.body104:                                   ; preds = %vector.body104, %vector.ph99
  %index105 = phi i64 [ 0, %vector.ph99 ], [ %index.next108, %vector.body104 ] ; 2 uses
  %vec.ind106 = phi <4 x i32> [ <i32 2, i32 3, i32 4, i32 5>, %vector.ph99 ], [ %vec.ind.next109, %vector.body104 ] ; 3 uses
  %i.bv = add nuw nsw <4 x i32> %broadcast.splat103, %vec.ind106
  %.reass122 = add nuw nsw <4 x i32> %vec.ind106, %invariant.op121
  %i.bw = getelementptr [4 x i8], ptr %i.bu, i64 %index105 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store <4 x i32> %i.bv, ptr %i.bw, align 4, !tbaa !4
  store <4 x i32> %.reass122, ptr %i.bx, align 4, !tbaa !4
  %index.next108 = add nuw i64 %index105, 8       ; 2 uses
  %vec.ind.next109 = add nuw nsw <4 x i32> %vec.ind106, splat (i32 8)
  %i.by = icmp eq i64 %index.next108, %n.vec101
  br i1 %i.by, label %middle.block110, label %vector.body104, !llvm.loop !164

middle.block110:                                  ; preds = %vector.body104
  br i1 %cmp.n111, label %._crit_edge66, label %scalar.ph97.preheader

scalar.ph97.preheader:                            ; preds = %.lr.ph65, %middle.block110
  %indvars.iv78.ph = phi i64 [ %3, %.lr.ph65 ], [ %i.bt, %middle.block110 ]
  %.04263.ph = phi i32 [ 2, %.lr.ph65 ], [ %i.br, %middle.block110 ]
  br label %scalar.ph97

._crit_edge66:                                    ; preds = %scalar.ph97, %middle.block110
  %indvars.iv.next79.lcssa = phi i64 [ %i.bt, %middle.block110 ], [ %indvars.iv.next79, %scalar.ph97 ]
  %i.bz = add nuw nsw i32 %.04169, 1
  %indvars.iv.next83 = add i32 %indvars.iv82, %i.bo
  %exitcond82.not = icmp eq i32 %.04169, %.0
  br i1 %exitcond82.not, label %.loopexit.sink.split, label %.lr.ph65, !llvm.loop !130

scalar.ph97:                                      ; preds = %scalar.ph97.preheader, %scalar.ph97
  %indvars.iv78 = phi i64 [ %indvars.iv.next79, %scalar.ph97 ], [ %indvars.iv78.ph, %scalar.ph97.preheader ] ; 2 uses
  %.04263 = phi i32 [ %i.cc, %scalar.ph97 ], [ %.04263.ph, %scalar.ph97.preheader ] ; 3 uses
  %i.ca = add nuw nsw i32 %i.bs, %.04263
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %indvars.iv78
  store i32 %i.ca, ptr %i.cb, align 4, !tbaa !4
  %indvars.iv.next79 = add nsw i64 %indvars.iv78, 1 ; 2 uses
  %i.cc = add nuw nsw i32 %.04263, 1
  %exitcond81.not.a = icmp eq i32 %.04263, %.0
  br i1 %exitcond81.not.a, label %._crit_edge66, label %scalar.ph97, !llvm.loop !165

bb.p:                                             ; preds = %._crit_edge
  %i.cd = icmp eq i32 %2, 3
  br i1 %i.cd, label %bb.q, label %.loopexit

bb.q:                                             ; preds = %bb.p
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !140 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !141 ; 2 uses
  %i.ci = icmp slt i32 %i.cf, %i.ch
  %i.cj = icmp sgt i32 %.0, 1
  %or.cond = select i1 %i.ci, i1 %i.cj, i1 false
  br i1 %or.cond, label %.lr.ph60.split.split, label %.loopexit

.lr.ph60.split.split:                             ; preds = %bb.q
  %i.ck = load i32, ptr %i.at, align 8, !tbaa !94
  %4 = add nsw i32 %.0, -2
  %i.cl = add nsw i32 %.0, -1                     ; 3 uses
  %5 = mul i32 %4, %i.cl
  %6 = add i32 %i.w, %5
  %7 = add i32 %6, -2
  %i.cm = zext i32 %i.cl to i64                   ; 2 uses
  %min.iters.check = icmp ult i32 %.0, 9
  %n.vec = and i64 %i.cm, 4294967288              ; 4 uses
  %i.cn = trunc nuw i64 %n.vec to i32
  %i.co = or disjoint i32 %i.cn, 2
  %cmp.n = icmp eq i64 %n.vec, %i.cm
  br label %.lr.ph53

.lr.ph53:                                         ; preds = %.lr.ph60.split.split, %._crit_edge54
  %indvars.iv = phi i32 [ 0, %.lr.ph60.split.split ], [ %indvars.iv.next, %._crit_edge54 ] ; 2 uses
  %.04057 = phi i32 [ %i.cf, %.lr.ph60.split.split ], [ %i.cq, %._crit_edge54 ] ; 2 uses
  %i.cp = mul nsw i32 %i.ck, %.04057
  br label %.lr.ph49

._crit_edge54:                                    ; preds = %._crit_edge50
  %i.cq = add nsw i32 %.04057, 1                  ; 2 uses
  %indvars.iv.next = add i32 %indvars.iv, %7
  %exitcond77.not = icmp eq i32 %i.cq, %i.ch
  br i1 %exitcond77.not, label %.loopexit.sink.split, label %.lr.ph53, !llvm.loop !166

.lr.ph49:                                         ; preds = %.lr.ph53, %._crit_edge50
  %indvars.iv75 = phi i32 [ %indvars.iv, %.lr.ph53 ], [ %indvars.iv.next76, %._crit_edge50 ] ; 2 uses
  %.03951 = phi i32 [ 2, %.lr.ph53 ], [ %i.cy, %._crit_edge50 ] ; 3 uses
  %8 = sext i32 %indvars.iv75 to i64              ; 3 uses
  %i.cr = mul nuw nsw i32 %i.z, %.03951
  %invariant.op = add i32 %i.cr, %i.cp            ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph49
  %i.cs = add nsw i64 %n.vec, %8                  ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %invariant.op, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op119 = add <4 x i32> splat (i32 4), %broadcast.splat
  %i.ct = getelementptr [4 x i8], ptr %i.bh, i64 %8
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 2, i32 3, i32 4, i32 5>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.cu = add <4 x i32> %vec.ind, %broadcast.splat
  %.reass120 = add <4 x i32> %vec.ind, %invariant.op119
  %i.cv = getelementptr [4 x i8], ptr %i.ct, i64 %index ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  store <4 x i32> %i.cu, ptr %i.cv, align 4, !tbaa !4
  store <4 x i32> %.reass120, ptr %i.cw, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i32> %vec.ind, splat (i32 8)
  %i.cx = icmp eq i64 %index.next, %n.vec
  br i1 %i.cx, label %middle.block, label %vector.body, !llvm.loop !167

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge50, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph49, %middle.block
  %indvars.iv.ph = phi i64 [ %8, %.lr.ph49 ], [ %i.cs, %middle.block ]
  %.03847.ph = phi i32 [ 2, %.lr.ph49 ], [ %i.co, %middle.block ]
  br label %scalar.ph

._crit_edge50:                                    ; preds = %scalar.ph, %middle.block
  %indvars.iv.next.lcssa = phi i64 [ %i.cs, %middle.block ], [ %indvars.iv.next.a, %scalar.ph ]
  %i.cy = add nuw nsw i32 %.03951, 1
  %indvars.iv.next76 = add i32 %indvars.iv75, %i.cl
  %exitcond76.not = icmp eq i32 %.03951, %.0
  br i1 %exitcond76.not, label %._crit_edge54, label %.lr.ph49, !llvm.loop !168

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.a = phi i64 [ %indvars.iv.next.a, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.03847 = phi i32 [ %i.da, %scalar.ph ], [ %.03847.ph, %scalar.ph.preheader ] ; 3 uses
  %.reass = add i32 %.03847, %invariant.op
  %i.cz = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %indvars.iv.a
  store i32 %.reass, ptr %i.cz, align 4, !tbaa !4
  %indvars.iv.next.a = add nsw i64 %indvars.iv.a, 1 ; 2 uses
  %i.da = add nuw nsw i32 %.03847, 1
  %exitcond.not = icmp eq i32 %.03847, %.0
  br i1 %exitcond.not, label %._crit_edge50, label %scalar.ph, !llvm.loop !169

.loopexit.sink.split:                             ; preds = %._crit_edge54, %._crit_edge66
  %indvars.iv.next.lcssa.lcssa94.lcssa.sink = phi i64 [ %indvars.iv.next79.lcssa, %._crit_edge66 ], [ %indvars.iv.next.lcssa, %._crit_edge54 ]
  %i.db = trunc nsw i64 %indvars.iv.next.lcssa.lcssa94.lcssa.sink to i32
  store i32 %i.db, ptr %i.bm, align 8, !tbaa !163
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.sink.split, %bb.q, %.preheader, %bb.p
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #6

declare { double, double } @__muldc3(double, double, double, double) local_unnamed_addr

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #0

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_LambdaSubsetAbenchmarks.cxx() #7 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.f = tail call noundef i32 @_ZN9benchmark8internal17InitializeStreamsEv() ; 0 uses
  %i.g = tail call noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #11 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.h, ptr %5, align 8, !tbaa !170
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  store i64 23, ptr %i.e, align 8, !tbaa !42
  %i.i = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i ; 2 uses

.noexc.i:                                         ; preds = %bb.a
  store ptr %i.i, ptr %5, align 8, !tbaa !171
  %i.j = load i64, ptr %i.e, align 8, !tbaa !42   ; 3 uses
  store i64 %i.j, ptr %i.h, align 8, !tbaa !144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %i.i, ptr noundef nonnull align 1 dereferenceable(23) @.str, i64 23, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !172
  %i.l = load ptr, ptr %5, align 8, !tbaa !171
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !144
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  invoke void @_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(232) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %.noexc.i
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9benchmark8internal17FunctionBenchmarkE, i64 16), ptr %i.g, align 8, !tbaa !173
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 224
  store ptr @_ZL23BM_PRESSURE_CALC_LAMBDARN9benchmark5StateE, ptr %i.n, align 8, !tbaa !175
  %i.o = invoke noundef ptr @_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE(ptr noundef nonnull %i.g)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.p = invoke noundef ptr @_ZN9benchmark8internal9Benchmark3ArgEl(ptr noundef nonnull align 8 dereferenceable(224) %i.o, i64 noundef 171)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.q = invoke noundef ptr @_ZN9benchmark8internal9Benchmark3ArgEl(ptr noundef nonnull align 8 dereferenceable(224) %i.p, i64 noundef 5001)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.r = invoke noundef ptr @_ZN9benchmark8internal9Benchmark3ArgEl(ptr noundef nonnull align 8 dereferenceable(224) %i.q, i64 noundef 44217)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.s = invoke noundef ptr @_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE(ptr noundef nonnull align 8 dereferenceable(224) %i.r, i32 noundef 1)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %5, align 8, !tbaa !171    ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.h
  br i1 %i.u, label %__cxx_global_var_init.1.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.g
  call void @_ZdlPv(ptr noundef %i.t) #10
  br label %__cxx_global_var_init.1.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i: ; preds = %bb.a
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  br label %common.resume.sink.split

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %.noexc.i
  %.0.i = phi i1 [ false, %bb.f ], [ false, %bb.e ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.b ], [ true, %.noexc.i ] ; 2 uses
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.x = load ptr, ptr %5, align 8, !tbaa !171    ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.h
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i: ; preds = %bb.h
  call void @_ZdlPv(ptr noundef %i.x) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  br i1 %.0.i, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  br i1 %.0.i, label %common.resume.sink.split, label %common.resume

common.resume.sink.split:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i38, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i39, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i28, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i33, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i34, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i19, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i24, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i25, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i10, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i15, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i16, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i6, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i7
  %.sink = phi ptr [ %i.ce, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i28 ], [ %i.bl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i19 ], [ %i.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i10 ], [ %i.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i1 ], [ %i.cx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i38 ], [ %i.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i7 ], [ %i.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i6 ], [ %i.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i16 ], [ %i.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i15 ], [ %i.bl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i25 ], [ %i.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i24 ], [ %i.ce, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i34 ], [ %i.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i33 ], [ %i.cx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i39 ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.ct, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i28 ], [ %i.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i19 ], [ %i.bh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i10 ], [ %i.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i1 ], [ %i.dj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i38 ], [ %i.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i7 ], [ %i.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i6 ], [ %i.bi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i16 ], [ %i.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i15 ], [ %i.cb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i25 ], [ %i.cb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i24 ], [ %i.cu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i34 ], [ %i.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i33 ], [ %i.dj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i39 ], [ %i.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i ], [ %i.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i ], [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i ]
  call void @_ZdlPv(ptr noundef nonnull %.sink) #10
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i38, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i39, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i33, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i24, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i25, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i15, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i16, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i6, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i7, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i
  %common.resume.op = phi { ptr, i32 } [ %i.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i33 ], [ %i.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i ], [ %i.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i6 ], [ %i.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i15 ], [ %i.cb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i24 ], [ %i.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i ], [ %i.dj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i38 ], [ %i.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i7 ], [ %i.cu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i34 ], [ %i.bi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i16 ], [ %i.dj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i39 ], [ %i.cb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i25 ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

__cxx_global_var_init.1.exit:                     ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  store ptr %i.s, ptr @_ZL27benchmark_uniq_2_benchmark_, align 8, !tbaa !200
  %i.z = call noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #11 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.aa, ptr %4, align 8, !tbaa !170
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i64 21, ptr %i.d, align 8, !tbaa !42
  %i.ab = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc.i4 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i1 ; 2 uses

.noexc.i4:                                        ; preds = %__cxx_global_var_init.1.exit
  store ptr %i.ab, ptr %4, align 8, !tbaa !171
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !42  ; 3 uses
  store i64 %i.ac, ptr %i.aa, align 8, !tbaa !144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %i.ab, ptr noundef nonnull align 1 dereferenceable(21) @.str.3, i64 21, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !172
  %i.ae = load ptr, ptr %4, align 8, !tbaa !171
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ac
  store i8 0, ptr %i.af, align 1, !tbaa !144
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  invoke void @_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(232) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.i unwind label %bb.o

bb.i:                                             ; preds = %.noexc.i4
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9benchmark8internal17FunctionBenchmarkE, i64 16), ptr %i.z, align 8, !tbaa !173
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 224
  store ptr @_ZL21BM_ENERGY_CALC_LAMBDARN9benchmark5StateE, ptr %i.ag, align 8, !tbaa !175
  %i.ah = invoke noundef ptr @_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE(ptr noundef nonnull %i.z)
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.ai = invoke noundef ptr @_ZN9benchmark8internal9Benchmark3ArgEl(ptr noundef nonnull align 8 dereferenceable(224) %i.ah, i64 noundef 171)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.aj = invoke noundef ptr @_ZN9benchmark8internal9Benchmark3ArgEl(ptr noundef nonnull align 8 dereferenceable(224) %i.ai, i64 noundef 5001)
          to label %bb.l unwind label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.ak = invoke noundef ptr @_ZN9benchmark8internal9Benchmark3ArgEl(ptr noundef nonnull align 8 dereferenceable(224) %i.aj, i64 noundef 44217)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.al = invoke noundef ptr @_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE(ptr noundef nonnull align 8 dereferenceable(224) %i.ak, i32 noundef 1)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.am = load ptr, ptr %4, align 8, !tbaa !171   ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.aa
  br i1 %i.an, label %__cxx_global_var_init.2.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8: ; preds = %bb.n
  call void @_ZdlPv(ptr noundef %i.am) #10
  br label %__cxx_global_var_init.2.exit
end_hunk_1
