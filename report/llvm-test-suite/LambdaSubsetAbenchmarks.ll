Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/LambdaSubsetAbenchmarks?download=true
inline.NumInlined: 173
inline.NumDeleted: 66
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZL24BM_DEL_DOT_VEC_2D_LAMBDARN9benchmark5StateE:bb.a
  %i.de = shufflevector <2 x double> %i.cz, <2 x double> %i.db, <2 x i32> <i32 0, i32 3>
  %i.df = fadd <2 x double> %i.dd, %i.de          ; 2 uses
  %i.dg = shufflevector <2 x double> %i.da, <2 x double> %i.db, <2 x i32> <i32 0, i32 2>
  %i.dh = fsub <2 x double> %i.df, %i.dg
  %i.di = shufflevector <2 x double> %i.da, <2 x double> %i.dc, <2 x i32> <i32 1, i32 2>
  %i.dj = fsub <2 x double> %i.dh, %i.di
  %i.dk = fmul <2 x double> %i.dj, splat (double 5.000000e-01)
  %i.dl = shufflevector <2 x double> %i.da, <2 x double> %i.db, <2 x i32> <i32 1, i32 3>
  %i.dm = shufflevector <2 x double> %i.cz, <2 x double> %i.db, <2 x i32> <i32 1, i32 2>
  %i.dn = fadd <2 x double> %i.dl, %i.dm
  %i.do = shufflevector <2 x double> %i.cz, <2 x double> %i.dc, <2 x i32> <i32 0, i32 2>
  %i.dp = fsub <2 x double> %i.dn, %i.do
  %i.dq = shufflevector <2 x double> %i.da, <2 x double> %i.dc, <2 x i32> <i32 0, i32 3>
  %i.dr = fsub <2 x double> %i.dp, %i.dq
  %i.ds = fmul <2 x double> %i.dr, splat (double 5.000000e-01)
  %i.dt = fmul double %i.cq, -5.000000e-01        ; 2 uses
  %i.du = fmul double %i.ch, %i.dt
  %i.dv = extractelement <2 x double> %i.cy, i64 0
  %i.dw = extractelement <2 x double> %i.cy, i64 1
  %i.dx = fneg double %i.ch
  %i.dy = insertelement <2 x double> poison, double %i.dt, i64 0
  %i.dz = insertelement <2 x double> %i.dy, double %i.dx, i64 1
  %i.ea = fmul <2 x double> %i.dk, %i.dz
  %i.eb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ds, <2 x double> %i.cy, <2 x double> %i.ea)
  %shift = shufflevector <2 x double> %i.df, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %shift, %i.db
  %foldExtExtBinop120 = fadd <2 x double> %foldExtExtBinop, %i.dc
  %i.ec = tail call double @llvm.fmuladd.f64(double %i.dw, double %i.dv, double %i.du)
  %i.ed = fadd double %i.cm, %i.cn
  %i.ee = insertelement <2 x double> poison, double %i.ec, i64 0
  %i.ef = insertelement <2 x double> %i.ee, double %i.ed, i64 1
  %i.eg = shufflevector <2 x double> %i.ck, <2 x double> <double f0x3BC79CA10C924223, double poison>, <2 x i32> <i32 2, i32 0>
  %i.eh = fadd <2 x double> %i.ef, %i.eg
  %i.ei = shufflevector <2 x double> <double 1.000000e+00, double poison>, <2 x double> %foldExtExtBinop120, <2 x i32> <i32 0, i32 2>
  %i.ej = fdiv <2 x double> %i.ei, %i.eh          ; 2 uses
  %i.ek = shufflevector <2 x double> %i.ej, <2 x double> poison, <2 x i32> zeroinitializer
  %i.el = fmul <2 x double> %i.ek, %i.eb          ; 2 uses
  %shift122 = shufflevector <2 x double> %i.el, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop123 = fadd <2 x double> %i.el, %shift122
  %shift125 = shufflevector <2 x double> %i.ej, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop126 = fadd <2 x double> %shift125, %foldExtExtBinop123
  %i.em = extractelement <2 x double> %foldExtExtBinop126, i64 0
  %i.en = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.bl
  store double %i.em, ptr %i.en, align 8, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %"._Z6forallI9simd_execZL24BM_DEL_DOT_VEC_2D_LAMBDARN9benchmark5StateEE3$_0EviiT0_.exit_crit_edge", label %bb.h, !llvm.loop !139

"._Z6forallI9simd_execZL24BM_DEL_DOT_VEC_2D_LAMBDARN9benchmark5StateEE3$_0EviiT0_.exit_crit_edge": ; preds = %bb.h
  %i.eo = add nsw i64 %.sroa.030.0115, -1         ; 2 uses
  %.not.i.not = icmp eq i64 %i.eo, 0
  br i1 %.not.i.not, label %_ZN9benchmark5State3endEv.exit._crit_edge.split, label %.preheader, !prof !47

_ZN7ADomainD2Ev.exit27:                           ; preds = %_ZN9benchmark5State3endEv.exit._crit_edge.split, %bb.g
  %i.ep = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdaPv(ptr noundef nonnull %i.ac) #10
  resume { ptr, i32 } %i.ep
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL16BM_COUPLE_LAMBDARN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %struct.ADomain, align 8            ; 12 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(1616) ptr @_Z11getLoopDatav() ; 5 uses
  tail call void @_Z8loopInitj(i32 noundef 7)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !144
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !144
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !144
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !144
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !144
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 32, !tbaa !42
  %i.n = load i64, ptr %i.m, align 8, !tbaa !43
  %i.o = trunc i64 %i.n to i32
  call void @_ZN7ADomainC2Eii(ptr noundef nonnull align 8 dereferenceable(84) %1, i32 noundef %i.o, i32 noundef 3)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.q = load i32, ptr %i.p, align 4, !tbaa !57   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load i32, ptr %i.r, align 8, !tbaa !58   ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = load i32, ptr %i.t, align 8, !tbaa !59   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.w = load i32, ptr %i.v, align 4, !tbaa !60   ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.y = load i32, ptr %i.x, align 4, !tbaa !61   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !62  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !39
  %.not = icmp eq i32 %i.ac, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load i64, ptr %i.ad, align 16, !tbaa !40
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.af = phi i64 [ %i.ae, %bb.b ], [ 0, %bb.a ]  ; 2 uses
  invoke void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
          to label %_ZN9benchmark5State3endEv.exit.preheader unwind label %bb.aa

_ZN9benchmark5State3endEv.exit.preheader:         ; preds = %bb.c
  %.not.i.not95 = icmp eq i64 %i.af, 0
  br i1 %.not.i.not95, label %_ZN9benchmark5State3endEv.exit._crit_edge.split, label %.preheader.lr.ph, !prof !52

.preheader.lr.ph:                                 ; preds = %_ZN9benchmark5State3endEv.exit.preheader
  %i.ag = icmp sge i32 %i.y, %i.aa
  %i.ah = icmp sge i32 %i.u, %i.w
  %i.ai = icmp sge i32 %i.q, %i.s
  %i.aj = sext i32 %i.q to i64
  %i.ak = sext i32 %i.s to i64
  %i.al = select i1 %i.ag, i1 true, i1 %i.ah
  %brmerge = select i1 %i.al, i1 true, i1 %i.ai
  br i1 %brmerge, label %_ZN9benchmark5State3endEv.exit._crit_edge.split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.am = add nsw i32 %i.w, 1
  %i.an = add nsw i32 %i.s, 1
  %i.ao = add nsw i32 %i.w, 2
  %i.ap = add nsw i32 %i.s, 2
  %i.aq = sext i32 %i.u to i64
  %i.ar = sext i32 %i.ap to i64
  %i.as = sext i32 %i.an to i64
  %i.at = sext i32 %i.y to i64
  %i.au = sext i32 %i.am to i64
  %i.av = sext i32 %i.ao to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %"._Z6forallI9simd_execZL16BM_COUPLE_LAMBDARN9benchmark5StateEE3$_0EviiT0_.exit_crit_edge"
  %.sroa.028.096 = phi i64 [ %i.la, %"._Z6forallI9simd_execZL16BM_COUPLE_LAMBDARN9benchmark5StateEE3$_0EviiT0_.exit_crit_edge" ], [ %i.af, %.preheader.preheader ]
  br label %.lr.ph313.split.i.preheader

_ZN9benchmark5State3endEv.exit._crit_edge.split:  ; preds = %"._Z6forallI9simd_execZL16BM_COUPLE_LAMBDARN9benchmark5StateEE3$_0EviiT0_.exit_crit_edge", %.preheader.lr.ph, %_ZN9benchmark5State3endEv.exit.preheader
  invoke void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
          to label %_ZNK9benchmark5State13StateIteratorneERKS1_.exit unwind label %bb.aa

_ZNK9benchmark5State13StateIteratorneERKS1_.exit: ; preds = %_ZN9benchmark5State3endEv.exit._crit_edge.split
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !55 ; 2 uses
  %.not.i23 = icmp eq ptr %i.ax, null
  br i1 %.not.i23, label %_ZN7ADomainD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK9benchmark5State13StateIteratorneERKS1_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.ax) #10
  br label %_ZN7ADomainD2Ev.exit

_ZN7ADomainD2Ev.exit:                             ; preds = %_ZNK9benchmark5State13StateIteratorneERKS1_.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  ret void

.lr.ph313.split.i.preheader:                      ; preds = %.preheader, %.noexc22.loopexit
  %indvars.iv104 = phi i64 [ %i.at, %.preheader ], [ %indvars.iv.next105, %.noexc22.loopexit ] ; 3 uses
  %i.ay = mul nsw i64 %indvars.iv104, %i.av
  %i.az = mul nsw i64 %indvars.iv104, %i.au
  br label %.lr.ph313.split.i

.lr.ph313.split.i:                                ; preds = %.lr.ph313.split.i.preheader, %._crit_edge.i.loopexit
  %indvars.iv = phi i64 [ %i.aq, %.lr.ph313.split.i.preheader ], [ %indvars.iv.next, %._crit_edge.i.loopexit ] ; 3 uses
  %i.ba = add nsw i64 %indvars.iv, %i.ay
  %i.bb = mul nsw i64 %i.ba, %i.ar
  %i.bc = add nsw i64 %indvars.iv, %i.az
  %i.bd = mul nsw i64 %i.bc, %i.as
  %invariant.gep = getelementptr [16 x i8], ptr %i.i, i64 %i.bb
  br label %.lr.ph.i

._crit_edge.i.loopexit:                           ; preds = %_ZStmlIdESt7complexIT_ERKS2_S4_.exit203.i
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond103.not = icmp eq i32 %i.w, %lftr.wideiv
  br i1 %exitcond103.not, label %.noexc22.loopexit, label %.lr.ph313.split.i, !llvm.loop !140

.lr.ph.i:                                         ; preds = %_ZStmlIdESt7complexIT_ERKS2_S4_.exit203.i, %.lr.ph313.split.i
  %indvars.iv.i = phi i64 [ %i.aj, %.lr.ph313.split.i ], [ %indvars.iv.next.i, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit203.i ] ; 3 uses
  %gep = getelementptr [16 x i8], ptr %invariant.gep, i64 %indvars.iv.i
  %i.be = add nsw i64 %indvars.iv.i, %i.bd        ; 4 uses
  %i.bf = getelementptr inbounds [16 x i8], ptr %i.k, i64 %i.be
  %i.bg = getelementptr inbounds [16 x i8], ptr %i.c, i64 %i.be ; 2 uses
  %i.bh = getelementptr inbounds [16 x i8], ptr %i.e, i64 %i.be ; 2 uses
  %i.bi = getelementptr inbounds [16 x i8], ptr %i.g, i64 %i.be ; 2 uses
  %i.bj = load <2 x double>, ptr %gep, align 8
  %i.bk = load <2 x double>, ptr %i.bf, align 8
  %i.bl = shufflevector <2 x double> %i.bk, <2 x double> %i.bj, <4 x i32> <i32 0, i32 2, i32 3, i32 1>
  %i.bm = fmul <4 x double> %i.bl, splat (double f0x406E56FD83BA6863) ; 5 uses
  %i.bn = extractelement <4 x double> %i.bm, i64 2 ; 2 uses
  %i.bo = fmul double %i.bn, %i.bn
  %i.bp = extractelement <4 x double> %i.bm, i64 1 ; 2 uses
  %i.bq = call double @llvm.fmuladd.f64(double %i.bp, double %i.bp, double %i.bo)
  %i.br = extractelement <4 x double> %i.bm, i64 0 ; 2 uses
  %i.bs = call double @llvm.fmuladd.f64(double %i.br, double %i.br, double %i.bq)
  %i.bt = extractelement <4 x double> %i.bm, i64 3 ; 2 uses
  %i.bu = call double @llvm.fmuladd.f64(double %i.bt, double %i.bt, double %i.bs)
  %i.bv = fadd double %i.bu, f0x38E09D8792FB4C49
  %i.bw = call double @llvm.sqrt.f64(double %i.bv) ; 2 uses
  %i.bx = fmul double %i.bw, 2.080000e-01
  %i.by = fmul double %i.bx, 5.000000e-01         ; 2 uses
  %i.bz = call double @sin(double noundef %i.by) #9, !tbaa !8
  %i.ca = call double @cos(double noundef %i.by) #9, !tbaa !8 ; 4 uses
  %i.cb = load <2 x double>, ptr %i.bg, align 8   ; 9 uses
  %i.cc = load <2 x double>, ptr %i.bh, align 8   ; 7 uses
  %i.cd = load <2 x double>, ptr %i.bi, align 8   ; 7 uses
  %i.ce = fdiv double 1.000000e+00, %i.bw
  %i.cf = insertelement <4 x double> poison, double %i.ce, i64 0
  %i.cg = shufflevector <4 x double> %i.cf, <4 x double> poison, <4 x i32> zeroinitializer
  %i.ch = fmul <4 x double> %i.bm, %i.cg          ; 14 uses
  %i.ci = extractelement <4 x double> %i.ch, i64 1 ; 6 uses
  %i.cj = shufflevector <4 x double> %i.ch, <4 x double> poison, <2 x i32> <i32 2, i32 3> ; 2 uses
  %i.ck = fmul <2 x double> %i.cj, %i.cj          ; 2 uses
  %i.cl = extractelement <2 x double> %i.ck, i64 0
  %i.cm = call double @llvm.fmuladd.f64(double %i.ci, double %i.ci, double %i.cl) ; 2 uses
  %i.cn = extractelement <4 x double> %i.ch, i64 0 ; 6 uses
  %i.co = extractelement <2 x double> %i.ck, i64 1
  %i.cp = call double @llvm.fmuladd.f64(double %i.cn, double %i.cn, double %i.co) ; 2 uses
  %i.cq = shufflevector <4 x double> %i.ch, <4 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.cr = fmul <2 x double> %i.cc, %i.cq          ; 2 uses
  %i.cs = shufflevector <4 x double> %i.ch, <4 x double> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %i.ct = fmul <2 x double> %i.cc, %i.cs
  %i.cu = shufflevector <2 x double> %i.ct, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cv = fsub <2 x double> %i.cr, %i.cu          ; 2 uses
  %i.cw = fadd <2 x double> %i.cr, %i.cu          ; 2 uses
  %i.cx = shufflevector <2 x double> %i.cv, <2 x double> %i.cw, <2 x i32> <i32 0, i32 3> ; 4 uses
  %i.cy = extractelement <2 x double> %i.cw, i64 1 ; 4 uses
  %i.cz = extractelement <2 x double> %i.cv, i64 0 ; 3 uses
  %i.da = fcmp uno double %i.cz, 0.000000e+00     ; 2 uses
  br i1 %i.da, label %bb.e, label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit.i, !prof !146

bb.e:                                             ; preds = %.lr.ph.i
  %i.db = fcmp uno double %i.cy, 0.000000e+00
  br i1 %i.db, label %bb.f, label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit.i, !prof !146

bb.f:                                             ; preds = %bb.e
  %i.dc = extractelement <2 x double> %i.cc, i64 0
  %i.dd = extractelement <2 x double> %i.cc, i64 1
  %i.de = extractelement <4 x double> %i.ch, i64 2
  %i.df = call noundef { double, double } @__muldc3(double noundef %i.ci, double noundef %i.de, double noundef %i.dc, double noundef %i.dd) #9 ; 2 uses
  %i.dg = extractvalue { double, double } %i.df, 0
  %i.dh = extractvalue { double, double } %i.df, 1
  %i.di = insertelement <2 x double> poison, double %i.dg, i64 0
  %i.dj = insertelement <2 x double> %i.di, double %i.dh, i64 1
  br label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit.i

_ZStmlIdESt7complexIT_ERKS2_S4_.exit.i:           ; preds = %bb.f, %bb.e, %.lr.ph.i
  %i.dk = phi <2 x double> [ %i.cx, %.lr.ph.i ], [ %i.cx, %bb.e ], [ %i.dj, %bb.f ]
  %i.dl = shufflevector <4 x double> %i.ch, <4 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.dm = fmul <2 x double> %i.dl, %i.cd          ; 2 uses
  %i.dn = shufflevector <4 x double> %i.ch, <4 x double> poison, <2 x i32> <i32 3, i32 3> ; 3 uses
  %i.do = fmul <2 x double> %i.dn, %i.cd
  %i.dp = shufflevector <2 x double> %i.do, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.dq = fsub <2 x double> %i.dm, %i.dp          ; 2 uses
  %i.dr = fadd <2 x double> %i.dm, %i.dp          ; 3 uses
  %i.ds = shufflevector <2 x double> %i.dq, <2 x double> %i.dr, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.dt = extractelement <2 x double> %i.dq, i64 0 ; 3 uses
  %i.du = fcmp uno double %i.dt, 0.000000e+00     ; 2 uses
  br i1 %i.du, label %bb.g, label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit76.i, !prof !146

bb.g:                                             ; preds = %_ZStmlIdESt7complexIT_ERKS2_S4_.exit.i
  %i.dv = extractelement <2 x double> %i.dr, i64 1
  %i.dw = fcmp uno double %i.dv, 0.000000e+00
  br i1 %i.dw, label %bb.h, label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit76.i, !prof !146

bb.h:                                             ; preds = %bb.g
  %i.dx = extractelement <2 x double> %i.cd, i64 0
  %i.dy = extractelement <2 x double> %i.cd, i64 1
  %i.dz = extractelement <4 x double> %i.ch, i64 3
  %i.ea = call noundef { double, double } @__muldc3(double noundef %i.cn, double noundef %i.dz, double noundef %i.dx, double noundef %i.dy) #9 ; 2 uses
  %i.eb = extractvalue { double, double } %i.ea, 0
  %i.ec = extractvalue { double, double } %i.ea, 1
  %i.ed = insertelement <2 x double> poison, double %i.eb, i64 0
  %i.ee = insertelement <2 x double> %i.ed, double %i.ec, i64 1
  br label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit76.i

_ZStmlIdESt7complexIT_ERKS2_S4_.exit76.i:         ; preds = %bb.h, %bb.g, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit.i
  %i.ef = phi <2 x double> [ %i.ds, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit.i ], [ %i.ds, %bb.g ], [ %i.ee, %bb.h ]
  %i.eg = fadd <2 x double> %i.dk, %i.ef
  %i.eh = insertelement <2 x double> poison, double %i.ca, i64 0
  %i.ei = shufflevector <2 x double> %i.eh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ej = fmul <2 x double> %i.ei, %i.cb
  %i.ek = insertelement <2 x double> poison, double %i.bz, i64 0
  %i.el = shufflevector <2 x double> %i.ek, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.em = fmul <2 x double> %i.el, %i.eg          ; 4 uses
  %i.en = fmul <2 x double> %i.em, zeroinitializer ; 2 uses
  %i.eo = shufflevector <2 x double> %i.em, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ep = fsub <2 x double> %i.en, %i.eo          ; 2 uses
  %i.eq = fadd <2 x double> %i.en, %i.eo          ; 2 uses
  %i.er = shufflevector <2 x double> %i.ep, <2 x double> %i.eq, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.es = extractelement <2 x double> %i.ep, i64 0
  %i.et = fcmp uno double %i.es, 0.000000e+00
  br i1 %i.et, label %bb.i, label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit97.i, !prof !146

bb.i:                                             ; preds = %_ZStmlIdESt7complexIT_ERKS2_S4_.exit76.i
  %i.eu = extractelement <2 x double> %i.eq, i64 1
  %i.ev = fcmp uno double %i.eu, 0.000000e+00
  br i1 %i.ev, label %bb.j, label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit97.i, !prof !146

bb.j:                                             ; preds = %bb.i
  %i.ew = extractelement <2 x double> %i.em, i64 0
  %i.ex = extractelement <2 x double> %i.em, i64 1
  %i.ey = call noundef { double, double } @__muldc3(double noundef 0.000000e+00, double noundef 1.000000e+00, double noundef %i.ew, double noundef %i.ex) #9 ; 2 uses
  %i.ez = extractvalue { double, double } %i.ey, 0
  %i.fa = extractvalue { double, double } %i.ey, 1
  %i.fb = insertelement <2 x double> poison, double %i.ez, i64 0
  %i.fc = insertelement <2 x double> %i.fb, double %i.fa, i64 1
  br label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit97.i

_ZStmlIdESt7complexIT_ERKS2_S4_.exit97.i:         ; preds = %bb.j, %bb.i, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit76.i
  %i.fd = phi <2 x double> [ %i.er, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit76.i ], [ %i.er, %bb.i ], [ %i.fc, %bb.j ]
  %i.fe = fsub <2 x double> %i.ej, %i.fd
  store <2 x double> %i.fe, ptr %i.bg, align 8
  %i.ff = call double @llvm.fmuladd.f64(double %i.cm, double %i.ca, double %i.cp)
  %i.fg = extractelement <2 x double> %i.dr, i64 1 ; 3 uses
  br i1 %i.du, label %bb.k, label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit108.i, !prof !146

bb.k:                                             ; preds = %_ZStmlIdESt7complexIT_ERKS2_S4_.exit97.i
  %i.fh = fcmp uno double %i.fg, 0.000000e+00
  br i1 %i.fh, label %bb.l, label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit108.i, !prof !146

bb.l:                                             ; preds = %bb.k
  %i.fi = extractelement <2 x double> %i.cd, i64 0
  %i.fj = extractelement <2 x double> %i.cd, i64 1
  %i.fk = extractelement <4 x double> %i.ch, i64 3
  %i.fl = call noundef { double, double } @__muldc3(double noundef %i.cn, double noundef %i.fk, double noundef %i.fi, double noundef %i.fj) #9 ; 2 uses
  %i.fm = extractvalue { double, double } %i.fl, 0
  %i.fn = extractvalue { double, double } %i.fl, 1
  br label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit108.i

_ZStmlIdESt7complexIT_ERKS2_S4_.exit108.i:        ; preds = %bb.l, %bb.k, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit97.i
  %i.fo = phi double [ %i.dt, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit97.i ], [ %i.dt, %bb.k ], [ %i.fm, %bb.l ] ; 2 uses
  %i.fp = phi double [ %i.fg, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit97.i ], [ %i.fg, %bb.k ], [ %i.fn, %bb.l ] ; 2 uses
  %i.fq = extractelement <4 x double> %i.ch, i64 2 ; 2 uses
  %i.fr = fneg double %i.fq                       ; 2 uses
  %i.fs = shufflevector <4 x double> %i.ch, <4 x double> poison, <2 x i32> <i32 1, i32 2>
  %i.ft = insertelement <2 x double> poison, double %i.fp, i64 0
  %i.fu = shufflevector <4 x double> %i.ch, <4 x double> poison, <2 x i32> <i32 2, i32 1>
  %i.fv = shufflevector <2 x double> %i.ft, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fw = fmul <2 x double> %i.fu, %i.fv          ; 2 uses
  %i.fx = insertelement <2 x double> poison, double %i.fo, i64 0
  %i.fy = shufflevector <2 x double> %i.fx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fz = fmul <2 x double> %i.fs, %i.fy          ; 2 uses
  %i.ga = fadd <2 x double> %i.fw, %i.fz          ; 2 uses
  %i.gb = fsub <2 x double> %i.fw, %i.fz          ; 2 uses
  %i.gc = shufflevector <2 x double> %i.ga, <2 x double> %i.gb, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.gd = extractelement <2 x double> %i.ga, i64 0
  %i.ge = fcmp uno double %i.gd, 0.000000e+00
  br i1 %i.ge, label %bb.m, label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit116.i, !prof !146

bb.m:                                             ; preds = %_ZStmlIdESt7complexIT_ERKS2_S4_.exit108.i
  %i.gf = extractelement <2 x double> %i.gb, i64 1
  %i.gg = fcmp uno double %i.gf, 0.000000e+00
  br i1 %i.gg, label %bb.n, label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit116.i, !prof !146

bb.n:                                             ; preds = %bb.m
  %i.gh = call noundef { double, double } @__muldc3(double noundef %i.ci, double noundef %i.fr, double noundef %i.fo, double noundef %i.fp) #9 ; 2 uses
  %i.gi = extractvalue { double, double } %i.gh, 0
  %i.gj = extractvalue { double, double } %i.gh, 1
  %i.gk = insertelement <2 x double> poison, double %i.gi, i64 0
  %i.gl = insertelement <2 x double> %i.gk, double %i.gj, i64 1
  br label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit116.i

_ZStmlIdESt7complexIT_ERKS2_S4_.exit116.i:        ; preds = %bb.n, %bb.m, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit108.i
  %i.gm = phi <2 x double> [ %i.gc, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit108.i ], [ %i.gc, %bb.m ], [ %i.gl, %bb.n ]
  %i.gn = fadd double %i.ca, -1.000000e+00
  %i.go = insertelement <2 x double> poison, double %i.gn, i64 0
  %i.gp = shufflevector <2 x double> %i.go, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gq = fmul <2 x double> %i.gp, %i.gm
  %i.gr = fmul <2 x double> %i.cb, %i.cq          ; 2 uses
  %i.gs = fmul <2 x double> %i.cb, %i.cs
  %i.gt = shufflevector <2 x double> %i.gs, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.gu = fadd <2 x double> %i.gr, %i.gt          ; 2 uses
  %i.gv = fsub <2 x double> %i.gr, %i.gt          ; 2 uses
  %i.gw = shufflevector <2 x double> %i.gu, <2 x double> %i.gv, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.gx = extractelement <2 x double> %i.gu, i64 0
  %i.gy = fcmp uno double %i.gx, 0.000000e+00
  br i1 %i.gy, label %bb.o, label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit129.i, !prof !146

bb.o:                                             ; preds = %_ZStmlIdESt7complexIT_ERKS2_S4_.exit116.i
  %i.gz = extractelement <2 x double> %i.gv, i64 1
  %i.ha = fcmp uno double %i.gz, 0.000000e+00
  br i1 %i.ha, label %bb.p, label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit129.i, !prof !146

bb.p:                                             ; preds = %bb.o
  %i.hb = extractelement <2 x double> %i.cb, i64 0
  %i.hc = extractelement <2 x double> %i.cb, i64 1
  %i.hd = call noundef { double, double } @__muldc3(double noundef %i.ci, double noundef %i.fr, double noundef %i.hb, double noundef %i.hc) #9 ; 2 uses
  %i.he = extractvalue { double, double } %i.hd, 0
  %i.hf = extractvalue { double, double } %i.hd, 1
  %i.hg = insertelement <2 x double> poison, double %i.he, i64 0
  %i.hh = insertelement <2 x double> %i.hg, double %i.hf, i64 1
  br label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit129.i

_ZStmlIdESt7complexIT_ERKS2_S4_.exit129.i:        ; preds = %bb.p, %bb.o, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit116.i
  %i.hi = phi <2 x double> [ %i.gw, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit116.i ], [ %i.gw, %bb.o ], [ %i.hh, %bb.p ]
  %i.hj = fmul <2 x double> %i.el, %i.hi          ; 4 uses
  %i.hk = insertelement <2 x double> poison, double %i.ff, i64 0
  %i.hl = shufflevector <2 x double> %i.hk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hm = fmul <2 x double> %i.cc, %i.hl
  %i.hn = fadd <2 x double> %i.hm, %i.gq
  %i.ho = fmul <2 x double> %i.hj, zeroinitializer ; 2 uses
  %i.hp = shufflevector <2 x double> %i.hj, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.hq = fsub <2 x double> %i.ho, %i.hp          ; 2 uses
  %i.hr = fadd <2 x double> %i.ho, %i.hp          ; 2 uses
  %i.hs = shufflevector <2 x double> %i.hq, <2 x double> %i.hr, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.ht = extractelement <2 x double> %i.hq, i64 0
  %i.hu = fcmp uno double %i.ht, 0.000000e+00
  br i1 %i.hu, label %bb.q, label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit150.i, !prof !146

bb.q:                                             ; preds = %_ZStmlIdESt7complexIT_ERKS2_S4_.exit129.i
  %i.hv = extractelement <2 x double> %i.hr, i64 1
  %i.hw = fcmp uno double %i.hv, 0.000000e+00
  br i1 %i.hw, label %bb.r, label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit150.i, !prof !146

bb.r:                                             ; preds = %bb.q
  %i.hx = extractelement <2 x double> %i.hj, i64 0
  %i.hy = extractelement <2 x double> %i.hj, i64 1
  %i.hz = call noundef { double, double } @__muldc3(double noundef 0.000000e+00, double noundef 1.000000e+00, double noundef %i.hx, double noundef %i.hy) #9 ; 2 uses
  %i.ia = extractvalue { double, double } %i.hz, 0
  %i.ib = extractvalue { double, double } %i.hz, 1
  %i.ic = insertelement <2 x double> poison, double %i.ia, i64 0
  %i.id = insertelement <2 x double> %i.ic, double %i.ib, i64 1
  br label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit150.i

_ZStmlIdESt7complexIT_ERKS2_S4_.exit150.i:        ; preds = %bb.r, %bb.q, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit129.i
  %i.ie = phi <2 x double> [ %i.hs, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit129.i ], [ %i.hs, %bb.q ], [ %i.id, %bb.r ]
  %i.if = fsub <2 x double> %i.hn, %i.ie
  store <2 x double> %i.if, ptr %i.bh, align 8
  %i.ig = call double @llvm.fmuladd.f64(double %i.cp, double %i.ca, double %i.cm)
  br i1 %i.da, label %bb.s, label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit161.i, !prof !146

bb.s:                                             ; preds = %_ZStmlIdESt7complexIT_ERKS2_S4_.exit150.i
  %i.ih = fcmp uno double %i.cy, 0.000000e+00
  br i1 %i.ih, label %bb.t, label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit161.i, !prof !146

bb.t:                                             ; preds = %bb.s
  %i.ii = extractelement <2 x double> %i.cc, i64 0
  %i.ij = extractelement <2 x double> %i.cc, i64 1
  %i.ik = call noundef { double, double } @__muldc3(double noundef %i.ci, double noundef %i.fq, double noundef %i.ii, double noundef %i.ij) #9 ; 2 uses
  %i.il = extractvalue { double, double } %i.ik, 0 ; 2 uses
  %i.im = extractvalue { double, double } %i.ik, 1 ; 2 uses
  %i.in = insertelement <2 x double> poison, double %i.il, i64 0
  %i.io = insertelement <2 x double> %i.in, double %i.im, i64 1
  br label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit161.i

_ZStmlIdESt7complexIT_ERKS2_S4_.exit161.i:        ; preds = %bb.t, %bb.s, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit150.i
  %i.ip = phi double [ %i.cz, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit150.i ], [ %i.cz, %bb.s ], [ %i.il, %bb.t ]
  %i.iq = phi double [ %i.cy, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit150.i ], [ %i.cy, %bb.s ], [ %i.im, %bb.t ]
  %i.ir = phi <2 x double> [ %i.cx, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit150.i ], [ %i.cx, %bb.s ], [ %i.io, %bb.t ] ; 2 uses
  %i.is = extractelement <4 x double> %i.ch, i64 3
  %i.it = fneg double %i.is                       ; 2 uses
  %i.iu = fmul <2 x double> %i.dl, %i.ir          ; 2 uses
  %i.iv = fmul <2 x double> %i.dn, %i.ir
  %i.iw = shufflevector <2 x double> %i.iv, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ix = fadd <2 x double> %i.iu, %i.iw          ; 2 uses
  %i.iy = fsub <2 x double> %i.iu, %i.iw          ; 2 uses
  %i.iz = shufflevector <2 x double> %i.ix, <2 x double> %i.iy, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.ja = extractelement <2 x double> %i.ix, i64 0
  %i.jb = fcmp uno double %i.ja, 0.000000e+00
  br i1 %i.jb, label %bb.u, label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit169.i, !prof !146

bb.u:                                             ; preds = %_ZStmlIdESt7complexIT_ERKS2_S4_.exit161.i
  %i.jc = extractelement <2 x double> %i.iy, i64 1
  %i.jd = fcmp uno double %i.jc, 0.000000e+00
  br i1 %i.jd, label %bb.v, label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit169.i, !prof !146

bb.v:                                             ; preds = %bb.u
  %i.je = call noundef { double, double } @__muldc3(double noundef %i.cn, double noundef %i.it, double noundef %i.ip, double noundef %i.iq) #9 ; 2 uses
  %i.jf = extractvalue { double, double } %i.je, 0
  %i.jg = extractvalue { double, double } %i.je, 1
  %i.jh = insertelement <2 x double> poison, double %i.jf, i64 0
  %i.ji = insertelement <2 x double> %i.jh, double %i.jg, i64 1
  br label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit169.i

_ZStmlIdESt7complexIT_ERKS2_S4_.exit169.i:        ; preds = %bb.v, %bb.u, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit161.i
  %i.jj = phi <2 x double> [ %i.iz, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit161.i ], [ %i.iz, %bb.u ], [ %i.ji, %bb.v ]
  %i.jk = fmul <2 x double> %i.gp, %i.jj
  %i.jl = fmul <2 x double> %i.cb, %i.dl          ; 2 uses
  %i.jm = fmul <2 x double> %i.cb, %i.dn
  %i.jn = shufflevector <2 x double> %i.jm, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.jo = fadd <2 x double> %i.jl, %i.jn          ; 2 uses
  %i.jp = fsub <2 x double> %i.jl, %i.jn          ; 2 uses
  %i.jq = shufflevector <2 x double> %i.jo, <2 x double> %i.jp, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.jr = extractelement <2 x double> %i.jo, i64 0
  %i.js = fcmp uno double %i.jr, 0.000000e+00
  br i1 %i.js, label %bb.w, label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit182.i, !prof !146

bb.w:                                             ; preds = %_ZStmlIdESt7complexIT_ERKS2_S4_.exit169.i
  %i.jt = extractelement <2 x double> %i.jp, i64 1
  %i.ju = fcmp uno double %i.jt, 0.000000e+00
  br i1 %i.ju, label %bb.x, label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit182.i, !prof !146

bb.x:                                             ; preds = %bb.w
  %i.jv = extractelement <2 x double> %i.cb, i64 0
  %i.jw = extractelement <2 x double> %i.cb, i64 1
  %i.jx = call noundef { double, double } @__muldc3(double noundef %i.cn, double noundef %i.it, double noundef %i.jv, double noundef %i.jw) #9 ; 2 uses
  %i.jy = extractvalue { double, double } %i.jx, 0
  %i.jz = extractvalue { double, double } %i.jx, 1
  %i.ka = insertelement <2 x double> poison, double %i.jy, i64 0
  %i.kb = insertelement <2 x double> %i.ka, double %i.jz, i64 1
  br label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit182.i

_ZStmlIdESt7complexIT_ERKS2_S4_.exit182.i:        ; preds = %bb.x, %bb.w, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit169.i
  %i.kc = phi <2 x double> [ %i.jq, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit169.i ], [ %i.jq, %bb.w ], [ %i.kb, %bb.x ]
  %i.kd = fmul <2 x double> %i.el, %i.kc          ; 4 uses
  %i.ke = insertelement <2 x double> poison, double %i.ig, i64 0
  %i.kf = shufflevector <2 x double> %i.ke, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kg = fmul <2 x double> %i.cd, %i.kf
  %i.kh = fadd <2 x double> %i.kg, %i.jk
  %i.ki = fmul <2 x double> %i.kd, zeroinitializer ; 2 uses
  %i.kj = shufflevector <2 x double> %i.kd, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.kk = fsub <2 x double> %i.ki, %i.kj          ; 2 uses
  %i.kl = fadd <2 x double> %i.ki, %i.kj          ; 2 uses
  %i.km = shufflevector <2 x double> %i.kk, <2 x double> %i.kl, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.kn = extractelement <2 x double> %i.kk, i64 0
  %i.ko = fcmp uno double %i.kn, 0.000000e+00
  br i1 %i.ko, label %bb.y, label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit203.i, !prof !146

bb.y:                                             ; preds = %_ZStmlIdESt7complexIT_ERKS2_S4_.exit182.i
  %i.kp = extractelement <2 x double> %i.kl, i64 1
  %i.kq = fcmp uno double %i.kp, 0.000000e+00
  br i1 %i.kq, label %bb.z, label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit203.i, !prof !146

bb.z:                                             ; preds = %bb.y
  %i.kr = extractelement <2 x double> %i.kd, i64 0
  %i.ks = extractelement <2 x double> %i.kd, i64 1
  %i.kt = call noundef { double, double } @__muldc3(double noundef 0.000000e+00, double noundef 1.000000e+00, double noundef %i.kr, double noundef %i.ks) #9 ; 2 uses
  %i.ku = extractvalue { double, double } %i.kt, 0
  %i.kv = extractvalue { double, double } %i.kt, 1
  %i.kw = insertelement <2 x double> poison, double %i.ku, i64 0
  %i.kx = insertelement <2 x double> %i.kw, double %i.kv, i64 1
  br label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit203.i

_ZStmlIdESt7complexIT_ERKS2_S4_.exit203.i:        ; preds = %bb.z, %bb.y, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit182.i
  %i.ky = phi <2 x double> [ %i.km, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit182.i ], [ %i.km, %bb.y ], [ %i.kx, %bb.z ]
  %i.kz = fsub <2 x double> %i.kh, %i.ky
  store <2 x double> %i.kz, ptr %i.bi, align 8
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.i, %i.ak
  br i1 %exitcond.not, label %._crit_edge.i.loopexit, label %.lr.ph.i, !llvm.loop !141

.noexc22.loopexit:                                ; preds = %._crit_edge.i.loopexit
  %indvars.iv.next105 = add nsw i64 %indvars.iv104, 1 ; 2 uses
  %lftr.wideiv107 = trunc i64 %indvars.iv.next105 to i32
  %exitcond108.not = icmp eq i32 %i.aa, %lftr.wideiv107
  br i1 %exitcond108.not, label %"._Z6forallI9simd_execZL16BM_COUPLE_LAMBDARN9benchmark5StateEE3$_0EviiT0_.exit_crit_edge", label %.lr.ph313.split.i.preheader, !llvm.loop !142

"._Z6forallI9simd_execZL16BM_COUPLE_LAMBDARN9benchmark5StateEE3$_0EviiT0_.exit_crit_edge": ; preds = %.noexc22.loopexit
  %i.la = add nsw i64 %.sroa.028.096, -1          ; 2 uses
  %.not.i.not = icmp eq i64 %i.la, 0
  br i1 %.not.i.not, label %_ZN9benchmark5State3endEv.exit._crit_edge.split, label %.preheader, !prof !47

bb.aa:                                            ; preds = %_ZN9benchmark5State3endEv.exit._crit_edge.split, %bb.c
  %i.lb = landingpad { ptr, i32 }
          cleanup
  %i.lc = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !55 ; 2 uses
  %.not.i24 = icmp eq ptr %i.ld, null
  br i1 %.not.i24, label %_ZN7ADomainD2Ev.exit25, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @_ZdaPv(ptr noundef nonnull %i.ld) #10
  br label %_ZN7ADomainD2Ev.exit25

_ZN7ADomainD2Ev.exit25:                           ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  resume { ptr, i32 } %i.lb
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL13BM_FIR_LAMBDARN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #3 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(1616) ptr @_Z11getLoopDatav() ; 2 uses
  tail call void @_Z8loopInitj(i32 noundef 8)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !11   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !11   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 32, !tbaa !42
  %i.h = load i64, ptr %i.g, align 8, !tbaa !43
  %i.i = trunc i64 %i.h to i32
  %i.j = add i32 %i.i, -16                        ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.l = load i32, ptr %i.k, align 4, !tbaa !39
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.b, label %_ZN9benchmark5State13StateIteratorC2EPS0_.exit

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load i64, ptr %i.m, align 16, !tbaa !40
  br label %_ZN9benchmark5State13StateIteratorC2EPS0_.exit

_ZN9benchmark5State13StateIteratorC2EPS0_.exit:   ; preds = %bb.a, %bb.b
  %i.o = phi i64 [ %i.n, %bb.b ], [ 0, %bb.a ]    ; 2 uses
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  %.not.i.not28 = icmp ne i64 %i.o, 0
  %i.p = icmp sgt i32 %i.j, 0
  %or.cond = select i1 %.not.i.not28, i1 %i.p, i1 false, !prof !56
  br i1 %or.cond, label %.preheader.preheader, label %._crit_edge.split, !prof !56

.preheader.preheader:                             ; preds = %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  %wide.trip.count = zext nneg i32 %i.j to i64    ; 4 uses
  %i.q = shl nuw nsw i64 %wide.trip.count, 3      ; 2 uses
  %scevgep = getelementptr i8, ptr %i.c, i64 %i.q
  %i.r = getelementptr i8, ptr %i.e, i64 %i.q
  %scevgep33 = getelementptr i8, ptr %i.r, i64 120
  %min.iters.check = icmp ult i32 %i.j, 2
  %bound0 = icmp ult ptr %i.c, %scevgep33
  %bound1 = icmp ult ptr %i.e, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %n.vec = and i64 %wide.trip.count, 2147483646   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %"._Z6forallIZL13BM_FIR_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge"
  %.sroa.013.029 = phi i64 [ %i.cx, %"._Z6forallIZL13BM_FIR_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge" ], [ %i.o, %.preheader.preheader ]
  %brmerge = select i1 %min.iters.check, i1 true, i1 %found.conflict
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader ] ; 3 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %index ; 16 uses
  %wide.load = load <2 x double>, ptr %i.s, align 8, !tbaa !13, !alias.scope !152
  %i.t = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load, <2 x double> splat (double 3.000000e+00), <2 x double> zeroinitializer)
  %i.u = getelementptr i8, ptr %i.s, i64 8
  %wide.load34 = load <2 x double>, ptr %i.u, align 8, !tbaa !13, !alias.scope !152
  %i.v = fsub <2 x double> %i.t, %wide.load34
  %i.w = getelementptr i8, ptr %i.s, i64 16
  %wide.load35 = load <2 x double>, ptr %i.w, align 8, !tbaa !13, !alias.scope !152
  %i.x = fsub <2 x double> %i.v, %wide.load35
  %i.y = getelementptr i8, ptr %i.s, i64 24
  %wide.load36 = load <2 x double>, ptr %i.y, align 8, !tbaa !13, !alias.scope !152
  %i.z = fsub <2 x double> %i.x, %wide.load36
  %i.aa = getelementptr i8, ptr %i.s, i64 32
  %wide.load37 = load <2 x double>, ptr %i.aa, align 8, !tbaa !13, !alias.scope !152
  %i.ab = fsub <2 x double> %i.z, %wide.load37
  %i.ac = getelementptr i8, ptr %i.s, i64 40
  %wide.load38 = load <2 x double>, ptr %i.ac, align 8, !tbaa !13, !alias.scope !152
  %i.ad = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load38, <2 x double> splat (double 3.000000e+00), <2 x double> %i.ab)
  %i.ae = getelementptr i8, ptr %i.s, i64 48
  %wide.load39 = load <2 x double>, ptr %i.ae, align 8, !tbaa !13, !alias.scope !152
  %i.af = fsub <2 x double> %i.ad, %wide.load39
  %i.ag = getelementptr i8, ptr %i.s, i64 56
  %wide.load40 = load <2 x double>, ptr %i.ag, align 8, !tbaa !13, !alias.scope !152
  %i.ah = fsub <2 x double> %i.af, %wide.load40
  %i.ai = getelementptr i8, ptr %i.s, i64 64
  %wide.load41 = load <2 x double>, ptr %i.ai, align 8, !tbaa !13, !alias.scope !152
  %i.aj = fsub <2 x double> %i.ah, %wide.load41
  %i.ak = getelementptr i8, ptr %i.s, i64 72
  %wide.load42 = load <2 x double>, ptr %i.ak, align 8, !tbaa !13, !alias.scope !152
  %i.al = fsub <2 x double> %i.aj, %wide.load42
  %i.am = getelementptr i8, ptr %i.s, i64 80
  %wide.load43 = load <2 x double>, ptr %i.am, align 8, !tbaa !13, !alias.scope !152
  %i.an = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load43, <2 x double> splat (double 3.000000e+00), <2 x double> %i.al)
  %i.ao = getelementptr i8, ptr %i.s, i64 88
  %wide.load44 = load <2 x double>, ptr %i.ao, align 8, !tbaa !13, !alias.scope !152
  %i.ap = fsub <2 x double> %i.an, %wide.load44
  %i.aq = getelementptr i8, ptr %i.s, i64 96
  %wide.load45 = load <2 x double>, ptr %i.aq, align 8, !tbaa !13, !alias.scope !152
  %i.ar = fsub <2 x double> %i.ap, %wide.load45
  %i.as = getelementptr i8, ptr %i.s, i64 104
  %wide.load46 = load <2 x double>, ptr %i.as, align 8, !tbaa !13, !alias.scope !152
  %i.at = fsub <2 x double> %i.ar, %wide.load46
  %i.au = getelementptr i8, ptr %i.s, i64 112
  %wide.load47 = load <2 x double>, ptr %i.au, align 8, !tbaa !13, !alias.scope !152
  %i.av = fsub <2 x double> %i.at, %wide.load47
  %i.aw = getelementptr i8, ptr %i.s, i64 120
  %wide.load48 = load <2 x double>, ptr %i.aw, align 8, !tbaa !13, !alias.scope !152
  %i.ax = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load48, <2 x double> splat (double 3.000000e+00), <2 x double> %i.av)
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index
  store <2 x double> %i.ax, ptr %i.ay, align 8, !tbaa !13, !alias.scope !153, !noalias !152
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !150

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
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !13
  %i.bc = tail call double @llvm.fmuladd.f64(double %i.bb, double 3.000000e+00, double 0.000000e+00)
  %i.bd = getelementptr i8, ptr %i.ba, i64 8
  %i.be = load double, ptr %i.bd, align 8, !tbaa !13
  %i.bf = fsub double %i.bc, %i.be
  %i.bg = getelementptr i8, ptr %i.ba, i64 16
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !13
  %i.bi = fsub double %i.bf, %i.bh
  %i.bj = getelementptr i8, ptr %i.ba, i64 24
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !13
  %i.bl = fsub double %i.bi, %i.bk
  %i.bm = getelementptr i8, ptr %i.ba, i64 32
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !13
  %i.bo = fsub double %i.bl, %i.bn
  %i.bp = getelementptr i8, ptr %i.ba, i64 40
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !13
  %i.br = tail call double @llvm.fmuladd.f64(double %i.bq, double 3.000000e+00, double %i.bo)
  %i.bs = getelementptr i8, ptr %i.ba, i64 48
end_hunk_0
begin_hunk_1_@_GLOBAL__sub_I_LambdaSubsetAbenchmarks.cxx:bb.a

bb.y:                                             ; preds = %bb.x
  %i.bv = invoke noundef ptr @_ZN9benchmark8internal9Benchmark3ArgEl(ptr noundef nonnull align 8 dereferenceable(224) %i.bu, i64 noundef 1)
          to label %bb.z unwind label %bb.ac

bb.z:                                             ; preds = %bb.y
  %i.bw = invoke noundef ptr @_ZN9benchmark8internal9Benchmark3ArgEl(ptr noundef nonnull align 8 dereferenceable(224) %i.bv, i64 noundef 0)
          to label %bb.aa unwind label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.bx = invoke noundef ptr @_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE(ptr noundef nonnull align 8 dereferenceable(224) %i.bw, i32 noundef 1)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.by = load ptr, ptr %2, align 8, !tbaa !170   ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.bm
  br i1 %i.bz, label %__cxx_global_var_init.6.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i26: ; preds = %bb.ab
  call void @_ZdlPv(ptr noundef %i.by) #10
  br label %__cxx_global_var_init.6.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i19: ; preds = %__cxx_global_var_init.4.exit
  %i.ca = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  br label %common.resume.sink.split

bb.ac:                                            ; preds = %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %.noexc.i22
  %.0.i23 = phi i1 [ false, %bb.aa ], [ false, %bb.z ], [ false, %bb.y ], [ false, %bb.x ], [ false, %bb.w ], [ true, %.noexc.i22 ] ; 2 uses
  %i.cb = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.cc = load ptr, ptr %2, align 8, !tbaa !170   ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.bm
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i24: ; preds = %bb.ac
  call void @_ZdlPv(ptr noundef %i.cc) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  br i1 %.0.i23, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i25: ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  br i1 %.0.i23, label %common.resume.sink.split, label %common.resume

__cxx_global_var_init.6.exit:                     ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  store ptr %i.bx, ptr @_ZL27benchmark_uniq_5_benchmark_, align 8, !tbaa !201
  %i.ce = call noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #11 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store ptr %i.cf, ptr %1, align 8, !tbaa !169
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i64 16, ptr %i.a, align 8, !tbaa !43
  %i.cg = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i31 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i28 ; 2 uses

.noexc.i31:                                       ; preds = %__cxx_global_var_init.6.exit
  store ptr %i.cg, ptr %1, align 8, !tbaa !170
  %i.ch = load i64, ptr %i.a, align 8, !tbaa !43  ; 3 uses
  store i64 %i.ch, ptr %i.cf, align 8, !tbaa !171
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.cg, ptr noundef nonnull align 1 dereferenceable(16) @.str.9, i64 16, i1 false)
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.ch, ptr %i.ci, align 8, !tbaa !172
  %i.cj = load ptr, ptr %1, align 8, !tbaa !170
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.ch
  store i8 0, ptr %i.ck, align 1, !tbaa !171
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  invoke void @_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(232) %i.ce, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.ad unwind label %bb.aj

bb.ad:                                            ; preds = %.noexc.i31
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9benchmark8internal17FunctionBenchmarkE, i64 16), ptr %i.ce, align 8, !tbaa !174
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ce, i64 224
  store ptr @_ZL16BM_COUPLE_LAMBDARN9benchmark5StateE, ptr %i.cl, align 8, !tbaa !199
  %i.cm = invoke noundef ptr @_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE(ptr noundef nonnull %i.ce)
          to label %bb.ae unwind label %bb.aj

bb.ae:                                            ; preds = %bb.ad
  %i.cn = invoke noundef ptr @_ZN9benchmark8internal9Benchmark3ArgEl(ptr noundef nonnull align 8 dereferenceable(224) %i.cm, i64 noundef 2)
          to label %bb.af unwind label %bb.aj

bb.af:                                            ; preds = %bb.ae
  %i.co = invoke noundef ptr @_ZN9benchmark8internal9Benchmark3ArgEl(ptr noundef nonnull align 8 dereferenceable(224) %i.cn, i64 noundef 1)
          to label %bb.ag unwind label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.cp = invoke noundef ptr @_ZN9benchmark8internal9Benchmark3ArgEl(ptr noundef nonnull align 8 dereferenceable(224) %i.co, i64 noundef 0)
          to label %bb.ah unwind label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.cq = invoke noundef ptr @_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE(ptr noundef nonnull align 8 dereferenceable(224) %i.cp, i32 noundef 1)
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.cr = load ptr, ptr %1, align 8, !tbaa !170   ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.cf
  br i1 %i.cs, label %__cxx_global_var_init.8.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i35: ; preds = %bb.ai
  call void @_ZdlPv(ptr noundef %i.cr) #10
  br label %__cxx_global_var_init.8.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i28: ; preds = %__cxx_global_var_init.6.exit
  %i.ct = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  br label %common.resume.sink.split

bb.aj:                                            ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %.noexc.i31
  %.0.i32 = phi i1 [ false, %bb.ah ], [ false, %bb.ag ], [ false, %bb.af ], [ false, %bb.ae ], [ false, %bb.ad ], [ true, %.noexc.i31 ] ; 2 uses
  %i.cu = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.cv = load ptr, ptr %1, align 8, !tbaa !170   ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %i.cf
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i33: ; preds = %bb.aj
  call void @_ZdlPv(ptr noundef %i.cv) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  br i1 %.0.i32, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i34: ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  br i1 %.0.i32, label %common.resume.sink.split, label %common.resume

__cxx_global_var_init.8.exit:                     ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i35
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  store ptr %i.cq, ptr @_ZL27benchmark_uniq_6_benchmark_, align 8, !tbaa !201
  %i.cx = call noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #11 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #9
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.cy, ptr %0, align 8, !tbaa !169
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.cy, ptr noundef nonnull align 1 dereferenceable(13) @.str.11, i64 13, i1 false)
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 13, ptr %i.cz, align 8, !tbaa !172
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 29
  store i8 0, ptr %i.da, align 1, !tbaa !171
  invoke void @_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(232) %i.cx, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.ak unwind label %bb.aq

bb.ak:                                            ; preds = %__cxx_global_var_init.8.exit
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9benchmark8internal17FunctionBenchmarkE, i64 16), ptr %i.cx, align 8, !tbaa !174
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 224
  store ptr @_ZL13BM_FIR_LAMBDARN9benchmark5StateE, ptr %i.db, align 8, !tbaa !199
  %i.dc = invoke noundef ptr @_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE(ptr noundef nonnull %i.cx)
          to label %bb.al unwind label %bb.aq

bb.al:                                            ; preds = %bb.ak
  %i.dd = invoke noundef ptr @_ZN9benchmark8internal9Benchmark3ArgEl(ptr noundef nonnull align 8 dereferenceable(224) %i.dc, i64 noundef 171)
          to label %bb.am unwind label %bb.aq

bb.am:                                            ; preds = %bb.al
  %i.de = invoke noundef ptr @_ZN9benchmark8internal9Benchmark3ArgEl(ptr noundef nonnull align 8 dereferenceable(224) %i.dd, i64 noundef 5001)
          to label %bb.an unwind label %bb.aq

bb.an:                                            ; preds = %bb.am
  %i.df = invoke noundef ptr @_ZN9benchmark8internal9Benchmark3ArgEl(ptr noundef nonnull align 8 dereferenceable(224) %i.de, i64 noundef 44217)
          to label %bb.ao unwind label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.dg = invoke noundef ptr @_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE(ptr noundef nonnull align 8 dereferenceable(224) %i.df, i32 noundef 1)
          to label %bb.ap unwind label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.dh = load ptr, ptr %0, align 8, !tbaa !170   ; 2 uses
  %i.di = icmp eq ptr %i.dh, %i.cy
  br i1 %i.di, label %__cxx_global_var_init.10.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i40: ; preds = %bb.ap
  call void @_ZdlPv(ptr noundef %i.dh) #10
  br label %__cxx_global_var_init.10.exit

bb.aq:                                            ; preds = %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %__cxx_global_var_init.8.exit
  %.0.i37 = phi i1 [ false, %bb.ao ], [ false, %bb.an ], [ false, %bb.am ], [ false, %bb.al ], [ false, %bb.ak ], [ true, %__cxx_global_var_init.8.exit ] ; 2 uses
  %i.dj = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.dk = load ptr, ptr %0, align 8, !tbaa !170   ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.cy
  br i1 %i.dl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i38: ; preds = %bb.aq
  call void @_ZdlPv(ptr noundef %i.dk) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #9
  br i1 %.0.i37, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i39: ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #9
  br i1 %.0.i37, label %common.resume.sink.split, label %common.resume

__cxx_global_var_init.10.exit:                    ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i40
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #9
  store ptr %i.dg, ptr @_ZL27benchmark_uniq_7_benchmark_, align 8, !tbaa !201
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #5

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind }
attributes #10 = { builtin nounwind }
attributes #11 = { builtin allocsize(0) }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !44}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!7, !7, i64 0}
!9 = !{!"any pointer", !6, i64 0}
!10 = !{!"p1 double", !9, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"double", !6, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"long", !6, i64 0}
!15 = !{!"bool", !6, i64 0}
!16 = !{!"_ZTSN9benchmark8internal7SkippedE", !6, i64 0}
!17 = !{!"p1 long", !9, i64 0}
!18 = !{!"_ZTSNSt12_Vector_baseIlSaIlEE17_Vector_impl_dataE", !17, i64 0, !17, i64 8, !17, i64 16}
!19 = !{!"_ZTSNSt12_Vector_baseIlSaIlEE12_Vector_implE", !18, i64 0}
!20 = !{!"_ZTSSt12_Vector_baseIlSaIlEE", !19, i64 0}
!21 = !{!"_ZTSSt6vectorIlSaIlEE", !20, i64 0}
!22 = !{!"_ZTSSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE"}
!23 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !22, i64 0}
!24 = !{!"_ZTSSt14_Rb_tree_color", !6, i64 0}
!25 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !9, i64 0}
!26 = !{!"_ZTSSt18_Rb_tree_node_base", !24, i64 0, !25, i64 8, !25, i64 16, !25, i64 24}
!27 = !{!"_ZTSSt15_Rb_tree_header", !26, i64 0, !14, i64 32}
!28 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE13_Rb_tree_implISE_Lb1EEE", !23, i64 0, !27, i64 8}
!29 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE", !28, i64 0}
!30 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEE", !29, i64 0}
!31 = !{!"p1 omnipotent char", !9, i64 0}
!32 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !31, i64 0}
!33 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !32, i64 0, !14, i64 8, !6, i64 16}
!34 = !{!"p1 _ZTSN9benchmark8internal11ThreadTimerE", !9, i64 0}
!35 = !{!"p1 _ZTSN9benchmark8internal13ThreadManagerE", !9, i64 0}
!36 = !{!"p1 _ZTSN9benchmark8internal23PerfCountersMeasurementE", !9, i64 0}
!37 = !{!"p1 _ZTSN9benchmark15ProfilerManagerE", !9, i64 0}
!38 = !{!"_ZTSN9benchmark5StateE", !14, i64 0, !14, i64 8, !14, i64 16, !15, i64 24, !15, i64 25, !16, i64 28, !21, i64 32, !14, i64 56, !30, i64 64, !33, i64 112, !7, i64 144, !7, i64 148, !34, i64 152, !35, i64 160, !36, i64 168, !37, i64 176}
!39 = !{!38, !16, i64 28}
!40 = !{!38, !14, i64 16}
!41 = !{!"branch_weights", i32 0, i32 -2147483648}
!42 = !{!18, !17, i64 0}
!43 = !{!14, !14, i64 0}
!44 = !{!"llvm.loop.mustprogress"}
!45 = !{!"llvm.loop.isvectorized", i32 1}
!46 = !{!"llvm.loop.unroll.runtime.disable"}
!47 = !{!"branch_weights", i32 127, i32 255873}
!48 = !{!"p1 int", !9, i64 0}
!49 = !{!"_ZTS7ADomain", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !7, i64 64, !7, i64 68, !48, i64 72, !7, i64 80}
!50 = !{!49, !7, i64 36}
!51 = !{!49, !7, i64 40}
!52 = !{!"branch_weights", i32 1, i32 127}
!53 = !{!49, !7, i64 64}
!54 = !{!49, !7, i64 68}
!55 = !{!49, !48, i64 72}
!56 = !{!"branch_weights", i32 127, i32 129}
!57 = !{!49, !7, i64 12}
!58 = !{!49, !7, i64 24}
!59 = !{!49, !7, i64 16}
!60 = !{!49, !7, i64 28}
!61 = !{!49, !7, i64 20}
!62 = !{!49, !7, i64 32}
!63 = distinct !{!63, !44, !45, !46}
!64 = distinct !{!64, !73}
!65 = distinct !{!65, !44, !45}
!66 = distinct !{!66, i1 false, !"LVerDomain"}
!67 = distinct !{!67, !66}
!68 = distinct !{!68, !66}
!69 = distinct !{!69, !66}
!70 = distinct !{!70, !66}
!71 = distinct !{!71, !44, !45, !46}
!72 = distinct !{!72, !44, !45}
!73 = !{!"llvm.loop.unroll.disable"}
!74 = !{!67}
!75 = !{!68}
!76 = !{!69}
!77 = !{!67, !68, !70}
!78 = !{!70}
!79 = distinct !{!79, !44, !45, !46}
!80 = distinct !{!80, !44, !45}
!81 = distinct !{!81, i1 false, !"LVerDomain"}
!82 = distinct !{!82, !81}
!83 = distinct !{!83, !81}
!84 = distinct !{!84, !81}
!85 = distinct !{!85, !81}
!86 = distinct !{!86, !81}
!87 = distinct !{!87, !81}
!88 = distinct !{!88, !44, !45, !46}
!89 = distinct !{!89, !44}
!90 = distinct !{!90, !44, !45}
!91 = distinct !{!91, i1 false, !"LVerDomain"}
!92 = distinct !{!92, !91}
!93 = distinct !{!93, !91}
!94 = distinct !{!94, !44, !45, !46}
!95 = distinct !{!95, !44, !45}
!96 = distinct !{!96, !44}
!97 = distinct !{!97, !44}
!98 = !{!82}
!99 = !{!87, !86, !85, !84, !83}
!100 = !{!87}
!101 = !{!86}
!102 = !{!85}
!103 = !{!84}
!104 = !{!83}
!105 = !{!92}
!106 = !{!93}
!107 = distinct !{!107, i1 false, !"LVerDomain"}
!108 = distinct !{!108, !107}
!109 = distinct !{!109, !107}
!110 = distinct !{!110, !107}
!111 = distinct !{!111, !107}
!112 = distinct !{!112, !107}
!113 = distinct !{!113, !107}
!114 = distinct !{!114, !107}
!115 = distinct !{!115, !107}
!116 = distinct !{!116, !107}
!117 = distinct !{!117, !107}
!118 = distinct !{!118, !107}
!119 = distinct !{!119, !107}
!120 = distinct !{!120, !107}
!121 = distinct !{!121, !44, !45, !46}
!122 = distinct !{!122, !44, !45}
!123 = !{!108}
!124 = !{!109}
!125 = !{!110}
!126 = !{!111}
!127 = !{!112}
!128 = !{!113}
!129 = !{!114}
!130 = !{!115}
!131 = !{!116}
!132 = !{!117}
!133 = !{!118}
!134 = !{!119}
!135 = !{!120}
!136 = !{!108, !111, !109, !110, !112, !115, !113, !114, !116, !119, !117, !118}
!137 = distinct !{!137, !44, !45, !46}
!138 = distinct !{!138, !44, !46, !45}
!139 = distinct !{!139, !44}
!140 = distinct !{!140, !44, !145}
!141 = distinct !{!141, !44}
!142 = distinct !{!142, !44}
!143 = !{!"p1 _ZTSSt7complexIdE", !9, i64 0}
!144 = !{!143, !143, i64 0}
!145 = !{!"llvm.loop.unswitch.partial.disable"}
!146 = !{!"branch_weights", i32 1, i32 1048575}
!147 = distinct !{!147, i1 false, !"LVerDomain"}
!148 = distinct !{!148, !147}
!149 = distinct !{!149, !147}
!150 = distinct !{!150, !44, !45, !46}
!151 = distinct !{!151, !44, !45}
!152 = !{!148}
!153 = !{!149}
!154 = distinct !{!154, !44, !45, !46}
!155 = distinct !{!155, !44, !46, !45}
!156 = distinct !{!156, !44}
!157 = distinct !{!157, !44, !45, !46}
!158 = distinct !{!158, !44}
!159 = distinct !{!159, !44, !46, !45}
!160 = !{!49, !7, i64 0}
!161 = !{!49, !7, i64 4}
!162 = !{!49, !7, i64 8}
!163 = !{!49, !7, i64 44}
!164 = !{!49, !7, i64 48}
!165 = !{!49, !7, i64 52}
!166 = !{!49, !7, i64 56}
!167 = !{!49, !7, i64 60}
!168 = !{!49, !7, i64 80}
!169 = !{!32, !31, i64 0}
!170 = !{!33, !31, i64 0}
!171 = !{!6, !6, i64 0}
!172 = !{!33, !14, i64 8}
!173 = !{!"vtable pointer", !5, i64 0}
!174 = !{!173, !173, i64 0}
!175 = !{!"_ZTSN9benchmark8internal21AggregationReportModeE", !6, i64 0}
!176 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !9, i64 0}
!177 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !176, i64 0, !176, i64 8, !176, i64 16}
end_hunk_1
