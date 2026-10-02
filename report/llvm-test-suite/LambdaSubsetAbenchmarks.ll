Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/LambdaSubsetAbenchmarks?download=true
inline.NumInlined: 173
inline.NumDeleted: 66
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZL24BM_DEL_DOT_VEC_2D_LAMBDARN9benchmark5StateE:bb.a
  %or.cond = select i1 %.not.i.not114, i1 %i.bi, i1 false, !prof !56
  br i1 %or.cond, label %.preheader.preheader, label %_ZN9benchmark5State3endEv.exit._crit_edge.split, !prof !56

.preheader.preheader:                             ; preds = %_ZN9benchmark5State3endEv.exit.preheader
  %wide.trip.count = zext nneg i32 %.sroa.35.0 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %"._Z6forallI9simd_execZL24BM_DEL_DOT_VEC_2D_LAMBDARN9benchmark5StateEE3$_0EviiT0_.exit_crit_edge"
  %.sroa.030.0115 = phi i64 [ %i.ep, %"._Z6forallI9simd_execZL24BM_DEL_DOT_VEC_2D_LAMBDARN9benchmark5StateEE3$_0EviiT0_.exit_crit_edge" ], [ %i.bh, %.preheader.preheader ]
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
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !8
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
  %i.bz = load <2 x double>, ptr %i.bp, align 8, !tbaa !13 ; 3 uses
  %i.ca = load double, ptr %i.bo, align 8, !tbaa !13
  %i.cb = load <2 x double>, ptr %i.bq, align 8, !tbaa !13 ; 3 uses
  %i.cc = load double, ptr %i.bn, align 8, !tbaa !13
  %i.cd = extractelement <2 x double> %i.bz, i64 0
  %i.ce = fadd double %i.ca, %i.cd
  %i.cf = extractelement <2 x double> %i.cb, i64 0
  %i.cg = fsub double %i.ce, %i.cf
  %i.ch = fsub double %i.cg, %i.cc
  %i.ci = fmul double %i.ch, 5.000000e-01         ; 2 uses
  %i.cj = load <2 x double>, ptr %i.bt, align 8, !tbaa !13 ; 3 uses
  %i.ck = load double, ptr %i.bs, align 8, !tbaa !13
  %i.cl = load <2 x double>, ptr %i.bu, align 8, !tbaa !13 ; 4 uses
  %i.cm = load double, ptr %i.br, align 8, !tbaa !13
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
  %i.da = load <2 x double>, ptr %i.bv, align 8, !tbaa !13 ; 4 uses
  %i.db = load <2 x double>, ptr %i.bw, align 8, !tbaa !13 ; 4 uses
  %i.dc = load <2 x double>, ptr %i.bx, align 8, !tbaa !13 ; 5 uses
  %i.dd = load <2 x double>, ptr %i.by, align 8, !tbaa !13 ; 5 uses
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
  %i.dy = fneg double %i.ci
  %i.dz = insertelement <2 x double> poison, double %i.du, i64 0
  %i.ea = insertelement <2 x double> %i.dz, double %i.dy, i64 1
  %i.eb = fmul <2 x double> %i.dl, %i.ea
  %i.ec = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dt, <2 x double> %i.cz, <2 x double> %i.eb)
  %shift = shufflevector <2 x double> %i.dg, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %shift, %i.dc
  %foldExtExtBinop120 = fadd <2 x double> %foldExtExtBinop, %i.dd
  %i.ed = fadd double %i.cn, %i.co
  %i.ee = tail call double @llvm.fmuladd.f64(double %i.dx, double %i.dw, double %i.dv)
  %i.ef = insertelement <2 x double> poison, double %i.ee, i64 0
  %i.eg = insertelement <2 x double> %i.ef, double %i.ed, i64 1
  %i.eh = shufflevector <2 x double> %i.cl, <2 x double> <double f0x3BC79CA10C924223, double poison>, <2 x i32> <i32 2, i32 0>
  %i.ei = fadd <2 x double> %i.eg, %i.eh
  %i.ej = shufflevector <2 x double> <double 1.000000e+00, double poison>, <2 x double> %foldExtExtBinop120, <2 x i32> <i32 0, i32 2>
  %i.ek = fdiv <2 x double> %i.ej, %i.ei          ; 2 uses
  %i.el = shufflevector <2 x double> %i.ek, <2 x double> poison, <2 x i32> zeroinitializer
  %i.em = fmul <2 x double> %i.el, %i.ec          ; 2 uses
  %shift122 = shufflevector <2 x double> %i.em, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop123 = fadd <2 x double> %i.em, %shift122
  %shift125 = shufflevector <2 x double> %i.ek, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop126 = fadd <2 x double> %shift125, %foldExtExtBinop123
  %i.en = extractelement <2 x double> %foldExtExtBinop126, i64 0
  %i.eo = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.bm
  store double %i.en, ptr %i.eo, align 8, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %"._Z6forallI9simd_execZL24BM_DEL_DOT_VEC_2D_LAMBDARN9benchmark5StateEE3$_0EviiT0_.exit_crit_edge", label %bb.h, !llvm.loop !140

"._Z6forallI9simd_execZL24BM_DEL_DOT_VEC_2D_LAMBDARN9benchmark5StateEE3$_0EviiT0_.exit_crit_edge": ; preds = %bb.h
  %i.ep = add nsw i64 %.sroa.030.0115, -1         ; 2 uses
  %.not.i.not = icmp eq i64 %i.ep, 0
  br i1 %.not.i.not, label %_ZN9benchmark5State3endEv.exit._crit_edge.split, label %.preheader, !prof !47
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL16BM_COUPLE_LAMBDARN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %struct.ADomain, align 8            ; 12 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(1616) ptr @_Z11getLoopDatav() ; 5 uses
  tail call void @_Z8loopInitj(i32 noundef 7)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !145
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !145
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !145
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !145
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !145
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
          to label %_ZN9benchmark5State3endEv.exit.preheader unwind label %bb.e

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
  %.sroa.028.096 = phi i64 [ %i.kl, %"._Z6forallI9simd_execZL16BM_COUPLE_LAMBDARN9benchmark5StateEE3$_0EviiT0_.exit_crit_edge" ], [ %i.af, %.preheader.preheader ]
  br label %.lr.ph313.split.i.preheader

_ZN9benchmark5State3endEv.exit._crit_edge.split:  ; preds = %"._Z6forallI9simd_execZL16BM_COUPLE_LAMBDARN9benchmark5StateEE3$_0EviiT0_.exit_crit_edge", %.preheader.lr.ph, %_ZN9benchmark5State3endEv.exit.preheader
  invoke void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
          to label %_ZNK9benchmark5State13StateIteratorneERKS1_.exit unwind label %bb.e

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

bb.e:                                             ; preds = %_ZN9benchmark5State3endEv.exit._crit_edge.split, %bb.c
  %i.ay = landingpad { ptr, i32 }
          cleanup
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !55 ; 2 uses
  %.not.i24 = icmp eq ptr %i.ba, null
  br i1 %.not.i24, label %_ZN7ADomainD2Ev.exit25, label %bb.ab

.lr.ph313.split.i.preheader:                      ; preds = %.preheader, %.noexc22.loopexit
  %indvars.iv104 = phi i64 [ %i.at, %.preheader ], [ %indvars.iv.next105, %.noexc22.loopexit ] ; 3 uses
  %i.bb = mul nsw i64 %indvars.iv104, %i.av
  %i.bc = mul nsw i64 %indvars.iv104, %i.au
  br label %.lr.ph313.split.i

.lr.ph313.split.i:                                ; preds = %.lr.ph313.split.i.preheader, %._crit_edge.i.loopexit
  %indvars.iv = phi i64 [ %i.aq, %.lr.ph313.split.i.preheader ], [ %indvars.iv.next, %._crit_edge.i.loopexit ] ; 3 uses
  %i.bd = add nsw i64 %indvars.iv, %i.bb
  %i.be = mul nsw i64 %i.bd, %i.ar
  %i.bf = add nsw i64 %indvars.iv, %i.bc
  %i.bg = mul nsw i64 %i.bf, %i.as
  %invariant.gep = getelementptr [16 x i8], ptr %i.i, i64 %i.be
  br label %.lr.ph.i

._crit_edge.i.loopexit:                           ; preds = %_ZStmlIdESt7complexIT_ERKS2_S4_.exit203.i
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond103.not = icmp eq i32 %i.w, %lftr.wideiv
  br i1 %exitcond103.not, label %.noexc22.loopexit, label %.lr.ph313.split.i, !llvm.loop !141

.lr.ph.i:                                         ; preds = %_ZStmlIdESt7complexIT_ERKS2_S4_.exit203.i, %.lr.ph313.split.i
  %indvars.iv.i = phi i64 [ %i.aj, %.lr.ph313.split.i ], [ %indvars.iv.next.i, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit203.i ] ; 3 uses
  %gep = getelementptr [16 x i8], ptr %invariant.gep, i64 %indvars.iv.i
  %i.bh = add nsw i64 %indvars.iv.i, %i.bg        ; 4 uses
  %i.bi = getelementptr inbounds [16 x i8], ptr %i.k, i64 %i.bh
  %i.bj = getelementptr inbounds [16 x i8], ptr %i.c, i64 %i.bh ; 2 uses
  %i.bk = getelementptr inbounds [16 x i8], ptr %i.e, i64 %i.bh ; 2 uses
  %i.bl = getelementptr inbounds [16 x i8], ptr %i.g, i64 %i.bh ; 3 uses
  %.sroa.4.0..sroa_idx.i62.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.bm = load <2 x double>, ptr %i.bi, align 8
  %i.bn = fmul <2 x double> %i.bm, splat (double f0x406E56FD83BA6863) ; 3 uses
  %i.bo = extractelement <2 x double> %i.bn, i64 0 ; 2 uses
  %i.bp = extractelement <2 x double> %i.bn, i64 1 ; 2 uses
  %i.bq = load <2 x double>, ptr %gep, align 8
  %i.br = fmul <2 x double> %i.bq, splat (double f0x406E56FD83BA6863) ; 4 uses
  %foldExtExtBinop = fmul <2 x double> %i.br, %i.br
  %i.bs = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.bt = extractelement <2 x double> %i.br, i64 0 ; 2 uses
  %i.bu = call double @llvm.fmuladd.f64(double %i.bt, double %i.bt, double %i.bs)
  %i.bv = call double @llvm.fmuladd.f64(double %i.bo, double %i.bo, double %i.bu)
  %i.bw = call double @llvm.fmuladd.f64(double %i.bp, double %i.bp, double %i.bv)
  %i.bx = fadd double %i.bw, f0x38E09D8792FB4C49
  %sqrt.i = call double @llvm.sqrt.f64(double %i.bx) ; 2 uses
  %i.by = fmul double %sqrt.i, 2.080000e-01
  %i.bz = fmul double %i.by, 5.000000e-01         ; 2 uses
  %i.ca = call double @sin(double noundef %i.bz) #9, !tbaa !8 ; 3 uses
  %i.cb = call double @cos(double noundef %i.bz) #9, !tbaa !8 ; 4 uses
  %i.cc = load <2 x double>, ptr %i.bj, align 8   ; 9 uses
  %i.cd = load <2 x double>, ptr %i.bk, align 8   ; 7 uses
  %.sroa.0.0.copyload.i61.i = load double, ptr %i.bl, align 8 ; 4 uses
  %.sroa.4.0.copyload.i63.i = load double, ptr %.sroa.4.0..sroa_idx.i62.i, align 8, !tbaa !63 ; 4 uses
  %i.ce = fdiv double 1.000000e+00, %sqrt.i
  %i.cf = insertelement <2 x double> poison, double %i.ce, i64 0
  %i.cg = shufflevector <2 x double> %i.cf, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ch = fmul <2 x double> %i.br, %i.cg          ; 8 uses
  %i.ci = fmul <2 x double> %i.bn, %i.cg          ; 8 uses
  %i.cj = extractelement <2 x double> %i.ci, i64 1 ; 4 uses
  %i.ck = extractelement <2 x double> %i.ci, i64 0 ; 7 uses
  %i.cl = extractelement <2 x double> %i.ch, i64 0 ; 6 uses
  %i.cm = shufflevector <2 x double> %i.ch, <2 x double> %i.ci, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.cn = fmul <2 x double> %i.cm, %i.cm          ; 2 uses
  %i.co = extractelement <2 x double> %i.cn, i64 0
  %i.cp = call double @llvm.fmuladd.f64(double %i.cl, double %i.cl, double %i.co) ; 2 uses
  %i.cq = extractelement <2 x double> %i.cn, i64 1
  %i.cr = call double @llvm.fmuladd.f64(double %i.ck, double %i.ck, double %i.cq) ; 2 uses
  %i.cs = shufflevector <2 x double> %i.ch, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ct = fmul <2 x double> %i.cd, %i.cs          ; 2 uses
  %i.cu = shufflevector <2 x double> %i.ch, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.cv = fmul <2 x double> %i.cd, %i.cu
  %i.cw = shufflevector <2 x double> %i.cv, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cx = fsub <2 x double> %i.ct, %i.cw          ; 2 uses
  %i.cy = fadd <2 x double> %i.ct, %i.cw          ; 2 uses
  %i.cz = shufflevector <2 x double> %i.cx, <2 x double> %i.cy, <2 x i32> <i32 0, i32 3> ; 4 uses
  %i.da = extractelement <2 x double> %i.cy, i64 1 ; 4 uses
  %i.db = extractelement <2 x double> %i.cx, i64 0 ; 3 uses
  %i.dc = fcmp uno double %i.db, 0.000000e+00     ; 2 uses
  br i1 %i.dc, label %bb.f, label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit.i, !prof !147

bb.f:                                             ; preds = %.lr.ph.i
  %i.dd = fcmp uno double %i.da, 0.000000e+00
  br i1 %i.dd, label %bb.g, label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit.i, !prof !147

bb.g:                                             ; preds = %bb.f
  %i.de = extractelement <2 x double> %i.cd, i64 0
  %i.df = extractelement <2 x double> %i.cd, i64 1
  %i.dg = extractelement <2 x double> %i.ch, i64 1
  %i.dh = call noundef { double, double } @__muldc3(double noundef %i.cl, double noundef %i.dg, double noundef %i.de, double noundef %i.df) #9 ; 2 uses
  %i.di = extractvalue { double, double } %i.dh, 0
  %i.dj = extractvalue { double, double } %i.dh, 1
  %i.dk = insertelement <2 x double> poison, double %i.di, i64 0
  %i.dl = insertelement <2 x double> %i.dk, double %i.dj, i64 1
  br label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit.i

_ZStmlIdESt7complexIT_ERKS2_S4_.exit.i:           ; preds = %bb.g, %bb.f, %.lr.ph.i
  %i.dm = phi <2 x double> [ %i.cz, %.lr.ph.i ], [ %i.cz, %bb.f ], [ %i.dl, %bb.g ]
  %i.dn = insertelement <2 x double> poison, double %.sroa.0.0.copyload.i61.i, i64 0
  %i.do = shufflevector <2 x double> %i.dn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dp = fmul <2 x double> %i.ci, %i.do          ; 2 uses
  %i.dq = insertelement <2 x double> poison, double %.sroa.4.0.copyload.i63.i, i64 0
  %i.dr = shufflevector <2 x double> %i.ci, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ds = shufflevector <2 x double> %i.dq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dt = fmul <2 x double> %i.dr, %i.ds          ; 2 uses
  %i.du = fsub <2 x double> %i.dp, %i.dt          ; 2 uses
  %i.dv = fadd <2 x double> %i.dp, %i.dt          ; 3 uses
  %i.dw = shufflevector <2 x double> %i.du, <2 x double> %i.dv, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.dx = extractelement <2 x double> %i.du, i64 0 ; 3 uses
  %i.dy = fcmp uno double %i.dx, 0.000000e+00     ; 2 uses
  br i1 %i.dy, label %bb.h, label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit76.i, !prof !147

bb.h:                                             ; preds = %_ZStmlIdESt7complexIT_ERKS2_S4_.exit.i
  %i.dz = extractelement <2 x double> %i.dv, i64 1
  %i.ea = fcmp uno double %i.dz, 0.000000e+00
  br i1 %i.ea, label %bb.i, label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit76.i, !prof !147

bb.i:                                             ; preds = %bb.h
  %i.eb = call noundef { double, double } @__muldc3(double noundef %i.ck, double noundef %i.cj, double noundef %.sroa.0.0.copyload.i61.i, double noundef %.sroa.4.0.copyload.i63.i) #9 ; 2 uses
  %i.ec = extractvalue { double, double } %i.eb, 0
  %i.ed = extractvalue { double, double } %i.eb, 1
  %i.ee = insertelement <2 x double> poison, double %i.ec, i64 0
  %i.ef = insertelement <2 x double> %i.ee, double %i.ed, i64 1
  br label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit76.i

_ZStmlIdESt7complexIT_ERKS2_S4_.exit76.i:         ; preds = %bb.i, %bb.h, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit.i
  %i.eg = phi <2 x double> [ %i.dw, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit.i ], [ %i.dw, %bb.h ], [ %i.ef, %bb.i ]
  %i.eh = fadd <2 x double> %i.dm, %i.eg
  %i.ei = insertelement <2 x double> poison, double %i.cb, i64 0
  %i.ej = shufflevector <2 x double> %i.ei, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ek = fmul <2 x double> %i.ej, %i.cc
  %i.el = insertelement <2 x double> poison, double %i.ca, i64 0
  %i.em = shufflevector <2 x double> %i.el, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.en = fmul <2 x double> %i.em, %i.eh          ; 4 uses
  %i.eo = fmul <2 x double> %i.en, zeroinitializer ; 2 uses
  %i.ep = shufflevector <2 x double> %i.en, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.eq = fsub <2 x double> %i.eo, %i.ep          ; 2 uses
  %i.er = fadd <2 x double> %i.eo, %i.ep          ; 2 uses
  %i.es = shufflevector <2 x double> %i.eq, <2 x double> %i.er, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.et = extractelement <2 x double> %i.eq, i64 0
  %i.eu = fcmp uno double %i.et, 0.000000e+00
  br i1 %i.eu, label %bb.j, label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit97.i, !prof !147

bb.j:                                             ; preds = %_ZStmlIdESt7complexIT_ERKS2_S4_.exit76.i
  %i.ev = extractelement <2 x double> %i.er, i64 1
  %i.ew = fcmp uno double %i.ev, 0.000000e+00
  br i1 %i.ew, label %bb.k, label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit97.i, !prof !147

bb.k:                                             ; preds = %bb.j
  %i.ex = extractelement <2 x double> %i.en, i64 0
  %i.ey = extractelement <2 x double> %i.en, i64 1
  %i.ez = call noundef { double, double } @__muldc3(double noundef 0.000000e+00, double noundef 1.000000e+00, double noundef %i.ex, double noundef %i.ey) #9 ; 2 uses
  %i.fa = extractvalue { double, double } %i.ez, 0
  %i.fb = extractvalue { double, double } %i.ez, 1
  %i.fc = insertelement <2 x double> poison, double %i.fa, i64 0
  %i.fd = insertelement <2 x double> %i.fc, double %i.fb, i64 1
  br label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit97.i

_ZStmlIdESt7complexIT_ERKS2_S4_.exit97.i:         ; preds = %bb.k, %bb.j, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit76.i
  %i.fe = phi <2 x double> [ %i.es, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit76.i ], [ %i.es, %bb.j ], [ %i.fd, %bb.k ]
  %i.ff = fsub <2 x double> %i.ek, %i.fe
  store <2 x double> %i.ff, ptr %i.bj, align 8
  %i.fg = call double @llvm.fmuladd.f64(double %i.cp, double %i.cb, double %i.cr)
  %i.fh = extractelement <2 x double> %i.dv, i64 1 ; 3 uses
  br i1 %i.dy, label %bb.l, label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit108.i, !prof !147

bb.l:                                             ; preds = %_ZStmlIdESt7complexIT_ERKS2_S4_.exit97.i
  %i.fi = fcmp uno double %i.fh, 0.000000e+00
  br i1 %i.fi, label %bb.m, label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit108.i, !prof !147

bb.m:                                             ; preds = %bb.l
  %i.fj = call noundef { double, double } @__muldc3(double noundef %i.ck, double noundef %i.cj, double noundef %.sroa.0.0.copyload.i61.i, double noundef %.sroa.4.0.copyload.i63.i) #9 ; 2 uses
  %i.fk = extractvalue { double, double } %i.fj, 0
  %i.fl = extractvalue { double, double } %i.fj, 1
  br label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit108.i

_ZStmlIdESt7complexIT_ERKS2_S4_.exit108.i:        ; preds = %bb.m, %bb.l, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit97.i
  %i.fm = phi double [ %i.dx, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit97.i ], [ %i.dx, %bb.l ], [ %i.fk, %bb.m ] ; 2 uses
  %i.fn = phi double [ %i.fh, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit97.i ], [ %i.fh, %bb.l ], [ %i.fl, %bb.m ] ; 2 uses
  %i.fo = extractelement <2 x double> %i.ch, i64 1 ; 2 uses
  %i.fp = fneg double %i.fo                       ; 2 uses
  %i.fq = insertelement <2 x double> poison, double %i.fn, i64 0
  %i.fr = shufflevector <2 x double> %i.ch, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.fs = shufflevector <2 x double> %i.fq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ft = fmul <2 x double> %i.fr, %i.fs          ; 2 uses
  %i.fu = insertelement <2 x double> poison, double %i.fm, i64 0
  %i.fv = shufflevector <2 x double> %i.fu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fw = fmul <2 x double> %i.ch, %i.fv          ; 2 uses
  %i.fx = fadd <2 x double> %i.ft, %i.fw          ; 2 uses
  %i.fy = fsub <2 x double> %i.ft, %i.fw          ; 2 uses
  %i.fz = shufflevector <2 x double> %i.fx, <2 x double> %i.fy, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.ga = extractelement <2 x double> %i.fx, i64 0
  %i.gb = fcmp uno double %i.ga, 0.000000e+00
  br i1 %i.gb, label %bb.n, label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit116.i, !prof !147

bb.n:                                             ; preds = %_ZStmlIdESt7complexIT_ERKS2_S4_.exit108.i
  %i.gc = extractelement <2 x double> %i.fy, i64 1
  %i.gd = fcmp uno double %i.gc, 0.000000e+00
  br i1 %i.gd, label %bb.o, label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit116.i, !prof !147

bb.o:                                             ; preds = %bb.n
  %i.ge = call noundef { double, double } @__muldc3(double noundef %i.cl, double noundef %i.fp, double noundef %i.fm, double noundef %i.fn) #9 ; 2 uses
  %i.gf = extractvalue { double, double } %i.ge, 0
  %i.gg = extractvalue { double, double } %i.ge, 1
  %i.gh = insertelement <2 x double> poison, double %i.gf, i64 0
  %i.gi = insertelement <2 x double> %i.gh, double %i.gg, i64 1
  br label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit116.i

_ZStmlIdESt7complexIT_ERKS2_S4_.exit116.i:        ; preds = %bb.o, %bb.n, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit108.i
  %i.gj = phi <2 x double> [ %i.fz, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit108.i ], [ %i.fz, %bb.n ], [ %i.gi, %bb.o ]
  %i.gk = fadd double %i.cb, -1.000000e+00        ; 3 uses
  %i.gl = insertelement <2 x double> poison, double %i.gk, i64 0
  %i.gm = shufflevector <2 x double> %i.gl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gn = fmul <2 x double> %i.gm, %i.gj
  %i.go = fmul <2 x double> %i.cc, %i.cs          ; 2 uses
  %i.gp = fmul <2 x double> %i.cc, %i.cu
  %i.gq = shufflevector <2 x double> %i.gp, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.gr = fadd <2 x double> %i.go, %i.gq          ; 2 uses
  %i.gs = fsub <2 x double> %i.go, %i.gq          ; 2 uses
  %i.gt = shufflevector <2 x double> %i.gr, <2 x double> %i.gs, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.gu = extractelement <2 x double> %i.gr, i64 0
  %i.gv = fcmp uno double %i.gu, 0.000000e+00
  br i1 %i.gv, label %bb.p, label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit129.i, !prof !147

bb.p:                                             ; preds = %_ZStmlIdESt7complexIT_ERKS2_S4_.exit116.i
  %i.gw = extractelement <2 x double> %i.gs, i64 1
  %i.gx = fcmp uno double %i.gw, 0.000000e+00
  br i1 %i.gx, label %bb.q, label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit129.i, !prof !147

bb.q:                                             ; preds = %bb.p
  %i.gy = extractelement <2 x double> %i.cc, i64 0
  %i.gz = extractelement <2 x double> %i.cc, i64 1
  %i.ha = call noundef { double, double } @__muldc3(double noundef %i.cl, double noundef %i.fp, double noundef %i.gy, double noundef %i.gz) #9 ; 2 uses
  %i.hb = extractvalue { double, double } %i.ha, 0
  %i.hc = extractvalue { double, double } %i.ha, 1
  %i.hd = insertelement <2 x double> poison, double %i.hb, i64 0
  %i.he = insertelement <2 x double> %i.hd, double %i.hc, i64 1
  br label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit129.i

_ZStmlIdESt7complexIT_ERKS2_S4_.exit129.i:        ; preds = %bb.q, %bb.p, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit116.i
  %i.hf = phi <2 x double> [ %i.gt, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit116.i ], [ %i.gt, %bb.p ], [ %i.he, %bb.q ]
  %i.hg = fmul <2 x double> %i.em, %i.hf          ; 4 uses
  %i.hh = insertelement <2 x double> poison, double %i.fg, i64 0
  %i.hi = shufflevector <2 x double> %i.hh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hj = fmul <2 x double> %i.cd, %i.hi
  %i.hk = fadd <2 x double> %i.hj, %i.gn
  %i.hl = fmul <2 x double> %i.hg, zeroinitializer ; 2 uses
  %i.hm = shufflevector <2 x double> %i.hg, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.hn = fsub <2 x double> %i.hl, %i.hm          ; 2 uses
  %i.ho = fadd <2 x double> %i.hl, %i.hm          ; 2 uses
  %i.hp = shufflevector <2 x double> %i.hn, <2 x double> %i.ho, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.hq = extractelement <2 x double> %i.hn, i64 0
  %i.hr = fcmp uno double %i.hq, 0.000000e+00
  br i1 %i.hr, label %bb.r, label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit150.i, !prof !147

bb.r:                                             ; preds = %_ZStmlIdESt7complexIT_ERKS2_S4_.exit129.i
  %i.hs = extractelement <2 x double> %i.ho, i64 1
  %i.ht = fcmp uno double %i.hs, 0.000000e+00
  br i1 %i.ht, label %bb.s, label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit150.i, !prof !147

bb.s:                                             ; preds = %bb.r
  %i.hu = extractelement <2 x double> %i.hg, i64 0
  %i.hv = extractelement <2 x double> %i.hg, i64 1
  %i.hw = call noundef { double, double } @__muldc3(double noundef 0.000000e+00, double noundef 1.000000e+00, double noundef %i.hu, double noundef %i.hv) #9 ; 2 uses
  %i.hx = extractvalue { double, double } %i.hw, 0
  %i.hy = extractvalue { double, double } %i.hw, 1
  %i.hz = insertelement <2 x double> poison, double %i.hx, i64 0
  %i.ia = insertelement <2 x double> %i.hz, double %i.hy, i64 1
  br label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit150.i

_ZStmlIdESt7complexIT_ERKS2_S4_.exit150.i:        ; preds = %bb.s, %bb.r, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit129.i
  %i.ib = phi <2 x double> [ %i.hp, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit129.i ], [ %i.hp, %bb.r ], [ %i.ia, %bb.s ]
  %i.ic = fsub <2 x double> %i.hk, %i.ib
  store <2 x double> %i.ic, ptr %i.bk, align 8
  %i.id = call double @llvm.fmuladd.f64(double %i.cr, double %i.cb, double %i.cp) ; 2 uses
  br i1 %i.dc, label %bb.t, label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit161.i, !prof !147

bb.t:                                             ; preds = %_ZStmlIdESt7complexIT_ERKS2_S4_.exit150.i
  %i.ie = fcmp uno double %i.da, 0.000000e+00
  br i1 %i.ie, label %bb.u, label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit161.i, !prof !147

bb.u:                                             ; preds = %bb.t
  %i.if = extractelement <2 x double> %i.cd, i64 0
  %i.ig = extractelement <2 x double> %i.cd, i64 1
  %i.ih = call noundef { double, double } @__muldc3(double noundef %i.cl, double noundef %i.fo, double noundef %i.if, double noundef %i.ig) #9 ; 2 uses
  %i.ii = extractvalue { double, double } %i.ih, 0 ; 2 uses
  %i.ij = extractvalue { double, double } %i.ih, 1 ; 2 uses
  %i.ik = insertelement <2 x double> poison, double %i.ii, i64 0
  %i.il = insertelement <2 x double> %i.ik, double %i.ij, i64 1
  br label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit161.i

_ZStmlIdESt7complexIT_ERKS2_S4_.exit161.i:        ; preds = %bb.u, %bb.t, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit150.i
  %i.im = phi double [ %i.db, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit150.i ], [ %i.db, %bb.t ], [ %i.ii, %bb.u ] ; 2 uses
  %i.in = phi double [ %i.da, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit150.i ], [ %i.da, %bb.t ], [ %i.ij, %bb.u ] ; 2 uses
  %i.io = phi <2 x double> [ %i.cz, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit150.i ], [ %i.cz, %bb.t ], [ %i.il, %bb.u ]
  %i.ip = fneg double %i.cj                       ; 2 uses
  %i.iq = fmul <2 x double> %i.ci, %i.io
  %i.ir = fmul double %i.ck, %i.in
  %i.is = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.iq) ; 3 uses
  %i.it = fmul double %i.cj, %i.im
  %i.iu = fsub double %i.ir, %i.it                ; 3 uses
  %i.iv = fcmp uno double %i.is, 0.000000e+00
  br i1 %i.iv, label %bb.v, label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit169.i, !prof !147

bb.v:                                             ; preds = %_ZStmlIdESt7complexIT_ERKS2_S4_.exit161.i
  %i.iw = fcmp uno double %i.iu, 0.000000e+00
  br i1 %i.iw, label %bb.w, label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit169.i, !prof !147

bb.w:                                             ; preds = %bb.v
  %i.ix = call noundef { double, double } @__muldc3(double noundef %i.ck, double noundef %i.ip, double noundef %i.im, double noundef %i.in) #9 ; 2 uses
  %i.iy = extractvalue { double, double } %i.ix, 0
  %i.iz = extractvalue { double, double } %i.ix, 1
  br label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit169.i

_ZStmlIdESt7complexIT_ERKS2_S4_.exit169.i:        ; preds = %bb.w, %bb.v, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit161.i
  %i.ja = phi double [ %i.is, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit161.i ], [ %i.is, %bb.v ], [ %i.iy, %bb.w ]
  %i.jb = phi double [ %i.iu, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit161.i ], [ %i.iu, %bb.v ], [ %i.iz, %bb.w ]
  %i.jc = fmul double %i.gk, %i.ja
  %i.jd = fmul double %i.gk, %i.jb
  %i.je = fmul <2 x double> %i.cc, %i.ci
  %i.jf = shufflevector <2 x double> %i.cc, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.jg = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.je) ; 3 uses
  %i.jh = fmul <2 x double> %i.jf, %i.ci          ; 2 uses
  %shift = shufflevector <2 x double> %i.jh, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop147 = fsub <2 x double> %i.jh, %shift
  %i.ji = extractelement <2 x double> %foldExtExtBinop147, i64 0 ; 3 uses
  %i.jj = fcmp uno double %i.jg, 0.000000e+00
  br i1 %i.jj, label %bb.x, label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit182.i, !prof !147

bb.x:                                             ; preds = %_ZStmlIdESt7complexIT_ERKS2_S4_.exit169.i
  %i.jk = fcmp uno double %i.ji, 0.000000e+00
  br i1 %i.jk, label %bb.y, label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit182.i, !prof !147

bb.y:                                             ; preds = %bb.x
  %i.jl = extractelement <2 x double> %i.cc, i64 0
  %i.jm = extractelement <2 x double> %i.cc, i64 1
  %i.jn = call noundef { double, double } @__muldc3(double noundef %i.ck, double noundef %i.ip, double noundef %i.jl, double noundef %i.jm) #9 ; 2 uses
  %i.jo = extractvalue { double, double } %i.jn, 0
  %i.jp = extractvalue { double, double } %i.jn, 1
  br label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit182.i

_ZStmlIdESt7complexIT_ERKS2_S4_.exit182.i:        ; preds = %bb.y, %bb.x, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit169.i
  %i.jq = phi double [ %i.jg, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit169.i ], [ %i.jg, %bb.x ], [ %i.jo, %bb.y ]
  %i.jr = phi double [ %i.ji, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit169.i ], [ %i.ji, %bb.x ], [ %i.jp, %bb.y ]
  %i.js = fmul double %i.ca, %i.jq                ; 3 uses
  %i.jt = fmul double %i.ca, %i.jr                ; 3 uses
  %i.ju = fmul double %.sroa.0.0.copyload.i61.i, %i.id
  %i.jv = fmul double %.sroa.4.0.copyload.i63.i, %i.id
  %i.jw = fadd double %i.ju, %i.jc
  %i.jx = fadd double %i.jv, %i.jd
  %i.jy = fmul double %i.js, 0.000000e+00
  %i.jz = fmul double %i.jt, 0.000000e+00
  %i.ka = fsub double %i.jy, %i.jt                ; 3 uses
  %i.kb = fadd double %i.js, %i.jz                ; 3 uses
  %i.kc = fcmp uno double %i.ka, 0.000000e+00
  br i1 %i.kc, label %bb.z, label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit203.i, !prof !147

bb.z:                                             ; preds = %_ZStmlIdESt7complexIT_ERKS2_S4_.exit182.i
  %i.kd = fcmp uno double %i.kb, 0.000000e+00
  br i1 %i.kd, label %bb.aa, label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit203.i, !prof !147

bb.aa:                                            ; preds = %bb.z
  %i.ke = call noundef { double, double } @__muldc3(double noundef 0.000000e+00, double noundef 1.000000e+00, double noundef %i.js, double noundef %i.jt) #9 ; 2 uses
  %i.kf = extractvalue { double, double } %i.ke, 0
  %i.kg = extractvalue { double, double } %i.ke, 1
  br label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit203.i

_ZStmlIdESt7complexIT_ERKS2_S4_.exit203.i:        ; preds = %bb.aa, %bb.z, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit182.i
  %i.kh = phi double [ %i.ka, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit182.i ], [ %i.ka, %bb.z ], [ %i.kf, %bb.aa ]
  %i.ki = phi double [ %i.kb, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit182.i ], [ %i.kb, %bb.z ], [ %i.kg, %bb.aa ]
  %i.kj = fsub double %i.jw, %i.kh
  %i.kk = fsub double %i.jx, %i.ki
  store double %i.kj, ptr %i.bl, align 8
  store double %i.kk, ptr %.sroa.4.0..sroa_idx.i62.i, align 8, !tbaa !63
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.i, %i.ak
  br i1 %exitcond.not, label %._crit_edge.i.loopexit, label %.lr.ph.i, !llvm.loop !142

.noexc22.loopexit:                                ; preds = %._crit_edge.i.loopexit
  %indvars.iv.next105 = add nsw i64 %indvars.iv104, 1 ; 2 uses
  %lftr.wideiv107 = trunc i64 %indvars.iv.next105 to i32
  %exitcond108.not = icmp eq i32 %i.aa, %lftr.wideiv107
  br i1 %exitcond108.not, label %"._Z6forallI9simd_execZL16BM_COUPLE_LAMBDARN9benchmark5StateEE3$_0EviiT0_.exit_crit_edge", label %.lr.ph313.split.i.preheader, !llvm.loop !143

"._Z6forallI9simd_execZL16BM_COUPLE_LAMBDARN9benchmark5StateEE3$_0EviiT0_.exit_crit_edge": ; preds = %.noexc22.loopexit
  %i.kl = add nsw i64 %.sroa.028.096, -1          ; 2 uses
  %.not.i.not = icmp eq i64 %i.kl, 0
  br i1 %.not.i.not, label %_ZN9benchmark5State3endEv.exit._crit_edge.split, label %.preheader, !prof !47

bb.ab:                                            ; preds = %bb.e
  call void @_ZdaPv(ptr noundef nonnull %i.ba) #10
  br label %_ZN7ADomainD2Ev.exit25

_ZN7ADomainD2Ev.exit25:                           ; preds = %bb.e, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  resume { ptr, i32 } %i.ay
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
  %wide.load = load <2 x double>, ptr %i.s, align 8, !tbaa !13, !alias.scope !153
  %i.t = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load, <2 x double> splat (double 3.000000e+00), <2 x double> zeroinitializer)
  %i.u = getelementptr i8, ptr %i.s, i64 8
  %wide.load34 = load <2 x double>, ptr %i.u, align 8, !tbaa !13, !alias.scope !153
  %i.v = fsub <2 x double> %i.t, %wide.load34
  %i.w = getelementptr i8, ptr %i.s, i64 16
  %wide.load35 = load <2 x double>, ptr %i.w, align 8, !tbaa !13, !alias.scope !153
  %i.x = fsub <2 x double> %i.v, %wide.load35
  %i.y = getelementptr i8, ptr %i.s, i64 24
  %wide.load36 = load <2 x double>, ptr %i.y, align 8, !tbaa !13, !alias.scope !153
  %i.z = fsub <2 x double> %i.x, %wide.load36
  %i.aa = getelementptr i8, ptr %i.s, i64 32
  %wide.load37 = load <2 x double>, ptr %i.aa, align 8, !tbaa !13, !alias.scope !153
  %i.ab = fsub <2 x double> %i.z, %wide.load37
  %i.ac = getelementptr i8, ptr %i.s, i64 40
  %wide.load38 = load <2 x double>, ptr %i.ac, align 8, !tbaa !13, !alias.scope !153
  %i.ad = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load38, <2 x double> splat (double 3.000000e+00), <2 x double> %i.ab)
  %i.ae = getelementptr i8, ptr %i.s, i64 48
  %wide.load39 = load <2 x double>, ptr %i.ae, align 8, !tbaa !13, !alias.scope !153
  %i.af = fsub <2 x double> %i.ad, %wide.load39
  %i.ag = getelementptr i8, ptr %i.s, i64 56
  %wide.load40 = load <2 x double>, ptr %i.ag, align 8, !tbaa !13, !alias.scope !153
  %i.ah = fsub <2 x double> %i.af, %wide.load40
  %i.ai = getelementptr i8, ptr %i.s, i64 64
  %wide.load41 = load <2 x double>, ptr %i.ai, align 8, !tbaa !13, !alias.scope !153
  %i.aj = fsub <2 x double> %i.ah, %wide.load41
  %i.ak = getelementptr i8, ptr %i.s, i64 72
  %wide.load42 = load <2 x double>, ptr %i.ak, align 8, !tbaa !13, !alias.scope !153
  %i.al = fsub <2 x double> %i.aj, %wide.load42
  %i.am = getelementptr i8, ptr %i.s, i64 80
  %wide.load43 = load <2 x double>, ptr %i.am, align 8, !tbaa !13, !alias.scope !153
  %i.an = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load43, <2 x double> splat (double 3.000000e+00), <2 x double> %i.al)
  %i.ao = getelementptr i8, ptr %i.s, i64 88
  %wide.load44 = load <2 x double>, ptr %i.ao, align 8, !tbaa !13, !alias.scope !153
  %i.ap = fsub <2 x double> %i.an, %wide.load44
  %i.aq = getelementptr i8, ptr %i.s, i64 96
  %wide.load45 = load <2 x double>, ptr %i.aq, align 8, !tbaa !13, !alias.scope !153
  %i.ar = fsub <2 x double> %i.ap, %wide.load45
  %i.as = getelementptr i8, ptr %i.s, i64 104
  %wide.load46 = load <2 x double>, ptr %i.as, align 8, !tbaa !13, !alias.scope !153
  %i.at = fsub <2 x double> %i.ar, %wide.load46
  %i.au = getelementptr i8, ptr %i.s, i64 112
  %wide.load47 = load <2 x double>, ptr %i.au, align 8, !tbaa !13, !alias.scope !153
  %i.av = fsub <2 x double> %i.at, %wide.load47
  %i.aw = getelementptr i8, ptr %i.s, i64 120
  %wide.load48 = load <2 x double>, ptr %i.aw, align 8, !tbaa !13, !alias.scope !153
  %i.ax = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load48, <2 x double> splat (double 3.000000e+00), <2 x double> %i.av)
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index
  store <2 x double> %i.ax, ptr %i.ay, align 8, !tbaa !13, !alias.scope !154, !noalias !153
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !151

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
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !13
  %i.bu = fsub double %i.br, %i.bt
  %i.bv = getelementptr i8, ptr %i.ba, i64 56
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !13
  %i.bx = fsub double %i.bu, %i.bw
  %i.by = getelementptr i8, ptr %i.ba, i64 64
  %i.bz = load double, ptr %i.by, align 8, !tbaa !13
  %i.ca = fsub double %i.bx, %i.bz
  %i.cb = getelementptr i8, ptr %i.ba, i64 72
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !13
  %i.cd = fsub double %i.ca, %i.cc
  %i.ce = getelementptr i8, ptr %i.ba, i64 80
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !13
  %i.cg = tail call double @llvm.fmuladd.f64(double %i.cf, double 3.000000e+00, double %i.cd)
  %i.ch = getelementptr i8, ptr %i.ba, i64 88
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !13
  %i.cj = fsub double %i.cg, %i.ci
  %i.ck = getelementptr i8, ptr %i.ba, i64 96
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !13
  %i.cm = fsub double %i.cj, %i.cl
  %i.cn = getelementptr i8, ptr %i.ba, i64 104
  %i.co = load double, ptr %i.cn, align 8, !tbaa !13
  %i.cp = fsub double %i.cm, %i.co
  %i.cq = getelementptr i8, ptr %i.ba, i64 112
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !13
  %i.cs = fsub double %i.cp, %i.cr
  %i.ct = getelementptr i8, ptr %i.ba, i64 120
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !13
  %i.cv = tail call double @llvm.fmuladd.f64(double %i.cu, double 3.000000e+00, double %i.cs)
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  store double %i.cv, ptr %i.cw, align 8, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %"._Z6forallIZL13BM_FIR_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge", label %scalar.ph, !llvm.loop !152

"._Z6forallIZL13BM_FIR_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge": ; preds = %scalar.ph, %middle.block
  %i.cx = add nsw i64 %.sroa.013.029, -1          ; 2 uses
  %.not.i.not = icmp eq i64 %i.cx, 0
  br i1 %.not.i.not, label %._crit_edge.split, label %.preheader, !prof !47
}

declare noundef nonnull align 8 dereferenceable(1616) ptr @_Z11getLoopDatav() local_unnamed_addr #0

declare void @_Z8loopInitj(i32 noundef) local_unnamed_addr #0

end_hunk_0
