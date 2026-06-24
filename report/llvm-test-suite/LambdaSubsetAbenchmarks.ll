inline.NumInlined: 173
inline.NumDeleted: 66
begin_hunk_0_@_ZL24BM_DEL_DOT_VEC_2D_LAMBDARN9benchmark5StateE:bb.a
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bl = load i64, ptr %i.bk, align 16           ; 2 uses
  invoke void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
          to label %_ZN9benchmark5State3endEv.exit.preheader unwind label %_ZN7ADomainD2Ev.exit27

_ZN9benchmark5State3endEv.exit.preheader:         ; preds = %_ZN7ADomainC2Eii.exit
  %.not111 = icmp eq i32 %i.bj, 0
  %.not.i.not113117 = icmp ne i64 %i.bl, 0
  %.not.i.not113 = select i1 %.not111, i1 %.not.i.not113117, i1 false
  %i.bm = icmp sgt i32 %.sroa.29.0, 0
  %or.cond = select i1 %.not.i.not113, i1 %i.bm, i1 false, !prof !130
  br i1 %or.cond, label %.preheader.preheader, label %_ZN9benchmark5State3endEv.exit._crit_edge.split, !prof !130

.preheader.preheader:                             ; preds = %_ZN9benchmark5State3endEv.exit.preheader
  %wide.trip.count = zext nneg i32 %.sroa.29.0 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %"._Z6forallI9simd_execZL24BM_DEL_DOT_VEC_2D_LAMBDARN9benchmark5StateEE3$_0EviiT0_.exit_crit_edge"
  %.sroa.030.0114 = phi i64 [ %i.ew, %"._Z6forallI9simd_execZL24BM_DEL_DOT_VEC_2D_LAMBDARN9benchmark5StateEE3$_0EviiT0_.exit_crit_edge" ], [ %i.bl, %.preheader.preheader ]
  br label %bb.f

_ZN9benchmark5State3endEv.exit._crit_edge.split:  ; preds = %"._Z6forallI9simd_execZL24BM_DEL_DOT_VEC_2D_LAMBDARN9benchmark5StateEE3$_0EviiT0_.exit_crit_edge", %_ZN9benchmark5State3endEv.exit.preheader
  invoke void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
          to label %_ZN7ADomainD2Ev.exit unwind label %_ZN7ADomainD2Ev.exit27

_ZN7ADomainD2Ev.exit:                             ; preds = %_ZN9benchmark5State3endEv.exit._crit_edge.split
  tail call void @_ZdaPv(ptr noundef nonnull %i.ac) #10
  ret void

_ZN7ADomainD2Ev.exit27:                           ; preds = %_ZN9benchmark5State3endEv.exit._crit_edge.split, %_ZN7ADomainC2Eii.exit
  %i.bn = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdaPv(ptr noundef nonnull %i.ac) #10
  resume { ptr, i32 } %i.bn

bb.f:                                             ; preds = %.preheader, %bb.f
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !4
  %i.bq = sext i32 %i.bp to i64                   ; 17 uses
  %i.br = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.bq
  %i.bs = load double, ptr %i.br, align 8, !tbaa !11 ; 2 uses
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %i.bq
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !11 ; 2 uses
  %i.bv = fadd double %i.bs, %i.bu
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %i.bq
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !11 ; 2 uses
  %i.by = fsub double %i.bv, %i.bx
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.bq
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !11 ; 2 uses
  %i.cb = fsub double %i.by, %i.ca
  %i.cc = fmul double %i.cb, 5.000000e-01         ; 2 uses
  %i.cd = fadd double %i.bu, %i.bx
  %i.ce = fsub double %i.cd, %i.ca
  %i.cf = fsub double %i.ce, %i.bs
  %i.cg = fmul double %i.cf, 5.000000e-01         ; 2 uses
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.bq
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !11 ; 2 uses
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %i.bq
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !11 ; 2 uses
  %i.cl = fadd double %i.ci, %i.ck                ; 2 uses
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %i.bq
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !11 ; 3 uses
  %i.co = fsub double %i.cl, %i.cn
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.bq
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !11 ; 3 uses
  %i.cr = fsub double %i.co, %i.cq
  %i.cs = fadd double %i.ck, %i.cn
  %i.ct = fsub double %i.cs, %i.cq
  %i.cu = fsub double %i.ct, %i.ci
  %i.cv = fmul double %i.cu, 5.000000e-01         ; 2 uses
  %i.cw = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.bq
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !11 ; 2 uses
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.bq
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !11 ; 2 uses
  %i.da = fadd double %i.cx, %i.cz
  %i.db = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.bq
  %i.dc = load double, ptr %i.db, align 8, !tbaa !11 ; 2 uses
  %i.dd = fsub double %i.da, %i.dc
  %i.de = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.bq
  %i.df = load double, ptr %i.de, align 8, !tbaa !11 ; 2 uses
  %i.dg = fsub double %i.dd, %i.df
  %i.dh = fmul double %i.dg, 5.000000e-01
  %i.di = fadd double %i.cz, %i.dc
  %i.dj = fsub double %i.di, %i.df
  %i.dk = fsub double %i.dj, %i.cx
  %i.dl = fmul double %i.dk, 5.000000e-01
  %i.dm = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.bq
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !11 ; 2 uses
  %i.do = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.bq
  %i.dp = load double, ptr %i.do, align 8, !tbaa !11 ; 2 uses
  %i.dq = fadd double %i.dn, %i.dp                ; 2 uses
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.bq
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !11 ; 3 uses
  %i.dt = fsub double %i.dq, %i.ds
  %i.du = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.bq
  %i.dv = load double, ptr %i.du, align 8, !tbaa !11 ; 3 uses
  %i.dw = fsub double %i.dt, %i.dv
  %i.dx = fmul double %i.dw, 5.000000e-01
  %i.dy = fadd double %i.dp, %i.ds
  %i.dz = fsub double %i.dy, %i.dv
  %i.ea = fsub double %i.dz, %i.dn
  %i.eb = fmul double %i.ea, 5.000000e-01
  %i.ec = fmul double %i.cr, -5.000000e-01        ; 2 uses
  %i.ed = fmul double %i.cg, %i.ec
  %i.ee = tail call double @llvm.fmuladd.f64(double %i.cc, double %i.cv, double %i.ed)
  %i.ef = fadd double %i.ee, f0x3BC79CA10C924223
  %i.eg = fdiv double 1.000000e+00, %i.ef         ; 2 uses
  %i.eh = fmul double %i.ec, %i.dl
  %i.ei = tail call double @llvm.fmuladd.f64(double %i.dh, double %i.cv, double %i.eh)
  %i.ej = fmul double %i.eg, %i.ei
  %i.ek = fneg double %i.cg
  %i.el = fmul double %i.dx, %i.ek
  %i.em = tail call double @llvm.fmuladd.f64(double %i.eb, double %i.cc, double %i.el)
  %i.en = fmul double %i.eg, %i.em
  %i.eo = fadd double %i.dq, %i.ds
  %i.ep = fadd double %i.eo, %i.dv
  %i.eq = fadd double %i.cl, %i.cn
  %i.er = fadd double %i.eq, %i.cq
  %i.es = fdiv double %i.ep, %i.er
  %i.et = fadd double %i.ej, %i.en
  %i.eu = fadd double %i.es, %i.et
  %i.ev = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.bq
  store double %i.eu, ptr %i.ev, align 8, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %"._Z6forallI9simd_execZL24BM_DEL_DOT_VEC_2D_LAMBDARN9benchmark5StateEE3$_0EviiT0_.exit_crit_edge", label %bb.f, !llvm.loop !131

"._Z6forallI9simd_execZL24BM_DEL_DOT_VEC_2D_LAMBDARN9benchmark5StateEE3$_0EviiT0_.exit_crit_edge": ; preds = %bb.f
  %i.ew = add nsw i64 %.sroa.030.0114, -1         ; 2 uses
  %.not.i.not = icmp eq i64 %i.ew, 0
  br i1 %.not.i.not, label %_ZN9benchmark5State3endEv.exit._crit_edge.split, label %.preheader, !prof !61
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL16BM_COUPLE_LAMBDARN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %struct.ADomain, align 8            ; 12 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(1616) ptr @_Z11getLoopDatav() ; 5 uses
  tail call void @_Z8loopInitj(i32 noundef 7)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !132
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !132
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !132
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !132
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !132
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 32, !tbaa !40
  %i.n = load i64, ptr %i.m, align 8, !tbaa !41
  %i.o = trunc i64 %i.n to i32
  call void @_ZN7ADomainC2Eii(ptr noundef nonnull align 8 dereferenceable(84) %1, i32 noundef %i.o, i32 noundef 3)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.q = load i32, ptr %i.p, align 4, !tbaa !134  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load i32, ptr %i.r, align 8, !tbaa !135  ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = load i32, ptr %i.t, align 8, !tbaa !136  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.w = load i32, ptr %i.v, align 4, !tbaa !137  ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.y = load i32, ptr %i.x, align 4, !tbaa !138  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !139 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !13
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load i64, ptr %i.ad, align 16           ; 2 uses
  invoke void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
          to label %_ZN9benchmark5State3endEv.exit.preheader unwind label %bb.c

_ZN9benchmark5State3endEv.exit.preheader:         ; preds = %bb.a
  %.not = icmp ne i32 %i.ac, 0
  %.not.i.not95145 = icmp eq i64 %i.ae, 0
  %.not.i.not95 = select i1 %.not, i1 true, i1 %.not.i.not95145
  br i1 %.not.i.not95, label %_ZN9benchmark5State3endEv.exit._crit_edge.split, label %.preheader.lr.ph, !prof !39

.preheader.lr.ph:                                 ; preds = %_ZN9benchmark5State3endEv.exit.preheader
  %i.af = icmp sge i32 %i.y, %i.aa
  %i.ag = icmp sge i32 %i.u, %i.w
  %i.ah = icmp sge i32 %i.q, %i.s
  %i.ai = sext i32 %i.q to i64
  %i.aj = sext i32 %i.s to i64
  %i.ak = select i1 %i.af, i1 true, i1 %i.ag
  %brmerge = select i1 %i.ak, i1 true, i1 %i.ah
  br i1 %brmerge, label %_ZN9benchmark5State3endEv.exit._crit_edge.split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.al = add nsw i32 %i.w, 1
  %i.am = add nsw i32 %i.s, 1
  %i.an = add nsw i32 %i.w, 2
  %i.ao = add nsw i32 %i.s, 2
  %i.ap = sext i32 %i.u to i64
  %i.aq = sext i32 %i.ao to i64
  %i.ar = sext i32 %i.am to i64
  %i.as = sext i32 %i.y to i64
  %i.at = sext i32 %i.al to i64
  %wide.trip.count = sext i32 %i.an to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %"._Z6forallI9simd_execZL16BM_COUPLE_LAMBDARN9benchmark5StateEE3$_0EviiT0_.exit_crit_edge"
  %.sroa.028.096 = phi i64 [ %i.ig, %"._Z6forallI9simd_execZL16BM_COUPLE_LAMBDARN9benchmark5StateEE3$_0EviiT0_.exit_crit_edge" ], [ %i.ae, %.preheader.preheader ]
  br label %.lr.ph313.split.i.preheader

_ZN9benchmark5State3endEv.exit._crit_edge.split:  ; preds = %"._Z6forallI9simd_execZL16BM_COUPLE_LAMBDARN9benchmark5StateEE3$_0EviiT0_.exit_crit_edge", %.preheader.lr.ph, %_ZN9benchmark5State3endEv.exit.preheader
  invoke void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
          to label %_ZNK9benchmark5State13StateIteratorneERKS1_.exit unwind label %bb.c

_ZNK9benchmark5State13StateIteratorneERKS1_.exit: ; preds = %_ZN9benchmark5State3endEv.exit._crit_edge.split
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !96 ; 2 uses
  %.not.i23 = icmp eq ptr %i.av, null
  br i1 %.not.i23, label %_ZN7ADomainD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK9benchmark5State13StateIteratorneERKS1_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.av) #10
  br label %_ZN7ADomainD2Ev.exit

_ZN7ADomainD2Ev.exit:                             ; preds = %_ZNK9benchmark5State13StateIteratorneERKS1_.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  ret void

bb.c:                                             ; preds = %_ZN9benchmark5State3endEv.exit._crit_edge.split, %bb.a
  %i.aw = landingpad { ptr, i32 }
          cleanup
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !96 ; 2 uses
  %.not.i24 = icmp eq ptr %i.ay, null
  br i1 %.not.i24, label %_ZN7ADomainD2Ev.exit25, label %bb.z

.lr.ph313.split.i.preheader:                      ; preds = %.preheader, %.noexc22.loopexit
  %indvars.iv104 = phi i64 [ %i.as, %.preheader ], [ %indvars.iv.next105, %.noexc22.loopexit ] ; 3 uses
  %i.az = mul nsw i64 %indvars.iv104, %wide.trip.count
  %i.ba = mul nsw i64 %indvars.iv104, %i.at
  br label %.lr.ph313.split.i

.lr.ph313.split.i:                                ; preds = %.lr.ph313.split.i.preheader, %._crit_edge.i.loopexit
  %indvars.iv = phi i64 [ %i.ap, %.lr.ph313.split.i.preheader ], [ %indvars.iv.next, %._crit_edge.i.loopexit ] ; 3 uses
  %i.bb = add nsw i64 %indvars.iv, %i.az
  %i.bc = mul nsw i64 %i.bb, %i.aq
  %i.bd = add nsw i64 %indvars.iv, %i.ba
  %i.be = mul nsw i64 %i.bd, %i.ar
  %invariant.gep = getelementptr [16 x i8], ptr %i.i, i64 %i.bc
  br label %.lr.ph.i

._crit_edge.i.loopexit:                           ; preds = %_ZStmlIdESt7complexIT_ERKS2_S4_.exit203.i
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond103.not = icmp eq i32 %i.w, %lftr.wideiv
  br i1 %exitcond103.not, label %.noexc22.loopexit, label %.lr.ph313.split.i, !llvm.loop !140

.lr.ph.i:                                         ; preds = %_ZStmlIdESt7complexIT_ERKS2_S4_.exit203.i, %.lr.ph313.split.i
  %indvars.iv.i = phi i64 [ %i.ai, %.lr.ph313.split.i ], [ %indvars.iv.next.i, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit203.i ] ; 3 uses
  %gep = getelementptr [16 x i8], ptr %invariant.gep, i64 %indvars.iv.i ; 2 uses
  %.sroa.0.0.copyload.i.i = load double, ptr %gep, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %gep, i64 8
  %.sroa.4.0.copyload.i.i = load double, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !142
  %i.bf = fmul double %.sroa.0.0.copyload.i.i, f0x406E56FD83BA6863 ; 3 uses
  %i.bg = fmul double %.sroa.4.0.copyload.i.i, f0x406E56FD83BA6863 ; 3 uses
  %i.bh = add nsw i64 %indvars.iv.i, %i.be        ; 4 uses
  %i.bi = getelementptr inbounds [16 x i8], ptr %i.k, i64 %i.bh ; 2 uses
  %.sroa.0.0.copyload.i56.i = load double, ptr %i.bi, align 8
  %.sroa.4.0..sroa_idx.i57.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %.sroa.4.0.copyload.i58.i = load double, ptr %.sroa.4.0..sroa_idx.i57.i, align 8, !tbaa !142
  %i.bj = fmul double %.sroa.0.0.copyload.i56.i, f0x406E56FD83BA6863 ; 3 uses
  %i.bk = fmul double %.sroa.4.0.copyload.i58.i, f0x406E56FD83BA6863 ; 3 uses
  %i.bl = fmul double %i.bg, %i.bg
  %i.bm = call double @llvm.fmuladd.f64(double %i.bf, double %i.bf, double %i.bl)
  %i.bn = call double @llvm.fmuladd.f64(double %i.bj, double %i.bj, double %i.bm)
  %i.bo = call double @llvm.fmuladd.f64(double %i.bk, double %i.bk, double %i.bn)
  %i.bp = fadd double %i.bo, f0x38E09D8792FB4C49
  %sqrt.i = call double @llvm.sqrt.f64(double %i.bp) ; 2 uses
  %i.bq = fmul double %sqrt.i, 2.080000e-01
  %i.br = fmul double %i.bq, 5.000000e-01         ; 2 uses
  %i.bs = call double @sin(double noundef %i.br) #9, !tbaa !4 ; 6 uses
  %i.bt = call double @cos(double noundef %i.br) #9, !tbaa !4 ; 5 uses
  %i.bu = getelementptr inbounds [16 x i8], ptr %i.c, i64 %i.bh ; 3 uses
  %.sroa.0275.0.copyload.i = load double, ptr %i.bu, align 8 ; 7 uses
  %.sroa.6277.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 2 uses
  %.sroa.6277.0.copyload.i = load double, ptr %.sroa.6277.0..sroa_idx.i, align 8, !tbaa !142 ; 7 uses
  %i.bv = getelementptr inbounds [16 x i8], ptr %i.e, i64 %i.bh ; 3 uses
  %.sroa.0271.0.copyload.i = load double, ptr %i.bv, align 8 ; 5 uses
  %.sroa.6273.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 2 uses
  %.sroa.6273.0.copyload.i = load double, ptr %.sroa.6273.0..sroa_idx.i, align 8, !tbaa !142 ; 5 uses
  %i.bw = getelementptr inbounds [16 x i8], ptr %i.g, i64 %i.bh ; 3 uses
  %.sroa.0.0.copyload.i61.i = load double, ptr %i.bw, align 8 ; 5 uses
  %.sroa.4.0..sroa_idx.i62.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 2 uses
  %.sroa.4.0.copyload.i63.i = load double, ptr %.sroa.4.0..sroa_idx.i62.i, align 8, !tbaa !142 ; 5 uses
  %i.bx = fdiv double 1.000000e+00, %sqrt.i       ; 4 uses
  %i.by = fmul double %i.bf, %i.bx                ; 12 uses
  %i.bz = fmul double %i.bg, %i.bx                ; 11 uses
  %i.ca = fmul double %i.bj, %i.bx                ; 12 uses
  %i.cb = fmul double %i.bk, %i.bx                ; 11 uses
  %i.cc = fmul double %i.bz, %i.bz
  %i.cd = call double @llvm.fmuladd.f64(double %i.by, double %i.by, double %i.cc) ; 2 uses
  %i.ce = fmul double %i.cb, %i.cb
  %i.cf = call double @llvm.fmuladd.f64(double %i.ca, double %i.ca, double %i.ce) ; 2 uses
  %i.cg = fmul double %.sroa.0271.0.copyload.i, %i.by
  %i.ch = fmul double %.sroa.6273.0.copyload.i, %i.bz
  %i.ci = fmul double %.sroa.6273.0.copyload.i, %i.by
  %i.cj = fmul double %.sroa.0271.0.copyload.i, %i.bz
  %i.ck = fsub double %i.cg, %i.ch                ; 5 uses
  %i.cl = fadd double %i.cj, %i.ci                ; 6 uses
  %i.cm = fcmp uno double %i.ck, 0.000000e+00     ; 2 uses
  br i1 %i.cm, label %bb.d, label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit.i, !prof !143

bb.d:                                             ; preds = %.lr.ph.i
  %i.cn = fcmp uno double %i.cl, 0.000000e+00
  br i1 %i.cn, label %bb.e, label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit.i, !prof !143

bb.e:                                             ; preds = %bb.d
  %i.co = call noundef { double, double } @__muldc3(double noundef %i.by, double noundef %i.bz, double noundef %.sroa.0271.0.copyload.i, double noundef %.sroa.6273.0.copyload.i) #9 ; 2 uses
  %i.cp = extractvalue { double, double } %i.co, 0
  %i.cq = extractvalue { double, double } %i.co, 1
  br label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit.i

_ZStmlIdESt7complexIT_ERKS2_S4_.exit.i:           ; preds = %bb.e, %bb.d, %.lr.ph.i
  %i.cr = phi double [ %i.ck, %.lr.ph.i ], [ %i.ck, %bb.d ], [ %i.cp, %bb.e ]
  %i.cs = phi double [ %i.cl, %.lr.ph.i ], [ %i.cl, %bb.d ], [ %i.cq, %bb.e ]
  %i.ct = fmul double %i.ca, %.sroa.0.0.copyload.i61.i
  %i.cu = fmul double %i.cb, %.sroa.4.0.copyload.i63.i
  %i.cv = fmul double %i.ca, %.sroa.4.0.copyload.i63.i
  %i.cw = fmul double %i.cb, %.sroa.0.0.copyload.i61.i
  %i.cx = fsub double %i.ct, %i.cu                ; 5 uses
  %i.cy = fadd double %i.cw, %i.cv                ; 6 uses
  %i.cz = fcmp uno double %i.cx, 0.000000e+00     ; 2 uses
  br i1 %i.cz, label %bb.f, label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit76.i, !prof !143

bb.f:                                             ; preds = %_ZStmlIdESt7complexIT_ERKS2_S4_.exit.i
  %i.da = fcmp uno double %i.cy, 0.000000e+00
  br i1 %i.da, label %bb.g, label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit76.i, !prof !143

bb.g:                                             ; preds = %bb.f
  %i.db = call noundef { double, double } @__muldc3(double noundef %i.ca, double noundef %i.cb, double noundef %.sroa.0.0.copyload.i61.i, double noundef %.sroa.4.0.copyload.i63.i) #9 ; 2 uses
  %i.dc = extractvalue { double, double } %i.db, 0
  %i.dd = extractvalue { double, double } %i.db, 1
  br label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit76.i

_ZStmlIdESt7complexIT_ERKS2_S4_.exit76.i:         ; preds = %bb.g, %bb.f, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit.i
  %i.de = phi double [ %i.cx, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit.i ], [ %i.cx, %bb.f ], [ %i.dc, %bb.g ]
  %i.df = phi double [ %i.cy, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit.i ], [ %i.cy, %bb.f ], [ %i.dd, %bb.g ]
  %i.dg = fadd double %i.cr, %i.de
  %i.dh = fadd double %i.cs, %i.df
  %i.di = fmul double %i.bs, %i.dg                ; 3 uses
  %i.dj = fmul double %i.bs, %i.dh                ; 3 uses
  %i.dk = fmul double %i.bt, %.sroa.0275.0.copyload.i
  %i.dl = fmul double %i.bt, %.sroa.6277.0.copyload.i
  %i.dm = fmul double %i.di, 0.000000e+00
  %i.dn = fmul double %i.dj, 0.000000e+00
  %i.do = fsub double %i.dm, %i.dj                ; 3 uses
  %i.dp = fadd double %i.di, %i.dn                ; 3 uses
  %i.dq = fcmp uno double %i.do, 0.000000e+00
  br i1 %i.dq, label %bb.h, label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit97.i, !prof !143

bb.h:                                             ; preds = %_ZStmlIdESt7complexIT_ERKS2_S4_.exit76.i
  %i.dr = fcmp uno double %i.dp, 0.000000e+00
  br i1 %i.dr, label %bb.i, label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit97.i, !prof !143

bb.i:                                             ; preds = %bb.h
  %i.ds = call noundef { double, double } @__muldc3(double noundef 0.000000e+00, double noundef 1.000000e+00, double noundef %i.di, double noundef %i.dj) #9 ; 2 uses
  %i.dt = extractvalue { double, double } %i.ds, 0
  %i.du = extractvalue { double, double } %i.ds, 1
  br label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit97.i

_ZStmlIdESt7complexIT_ERKS2_S4_.exit97.i:         ; preds = %bb.i, %bb.h, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit76.i
  %i.dv = phi double [ %i.do, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit76.i ], [ %i.do, %bb.h ], [ %i.dt, %bb.i ]
  %i.dw = phi double [ %i.dp, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit76.i ], [ %i.dp, %bb.h ], [ %i.du, %bb.i ]
  %i.dx = fsub double %i.dk, %i.dv
  %i.dy = fsub double %i.dl, %i.dw
  store double %i.dx, ptr %i.bu, align 8
  store double %i.dy, ptr %.sroa.6277.0..sroa_idx.i, align 8, !tbaa !142
  %i.dz = call double @llvm.fmuladd.f64(double %i.cd, double %i.bt, double %i.cf) ; 2 uses
  br i1 %i.cz, label %bb.j, label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit108.i, !prof !143

bb.j:                                             ; preds = %_ZStmlIdESt7complexIT_ERKS2_S4_.exit97.i
  %i.ea = fcmp uno double %i.cy, 0.000000e+00
  br i1 %i.ea, label %bb.k, label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit108.i, !prof !143

bb.k:                                             ; preds = %bb.j
  %i.eb = call noundef { double, double } @__muldc3(double noundef %i.ca, double noundef %i.cb, double noundef %.sroa.0.0.copyload.i61.i, double noundef %.sroa.4.0.copyload.i63.i) #9 ; 2 uses
  %i.ec = extractvalue { double, double } %i.eb, 0
  %i.ed = extractvalue { double, double } %i.eb, 1
  br label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit108.i

_ZStmlIdESt7complexIT_ERKS2_S4_.exit108.i:        ; preds = %bb.k, %bb.j, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit97.i
  %i.ee = phi double [ %i.cx, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit97.i ], [ %i.cx, %bb.j ], [ %i.ec, %bb.k ] ; 3 uses
  %i.ef = phi double [ %i.cy, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit97.i ], [ %i.cy, %bb.j ], [ %i.ed, %bb.k ] ; 3 uses
  %i.eg = fneg double %i.bz                       ; 2 uses
  %i.eh = fmul double %i.by, %i.ee
  %i.ei = fmul double %i.by, %i.ef
  %i.ej = fmul double %i.bz, %i.ef
  %i.ek = fadd double %i.eh, %i.ej                ; 3 uses
  %i.el = fmul double %i.bz, %i.ee
  %i.em = fsub double %i.ei, %i.el                ; 3 uses
  %i.en = fcmp uno double %i.ek, 0.000000e+00
  br i1 %i.en, label %bb.l, label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit116.i, !prof !143

bb.l:                                             ; preds = %_ZStmlIdESt7complexIT_ERKS2_S4_.exit108.i
  %i.eo = fcmp uno double %i.em, 0.000000e+00
  br i1 %i.eo, label %bb.m, label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit116.i, !prof !143

bb.m:                                             ; preds = %bb.l
  %i.ep = call noundef { double, double } @__muldc3(double noundef %i.by, double noundef %i.eg, double noundef %i.ee, double noundef %i.ef) #9 ; 2 uses
  %i.eq = extractvalue { double, double } %i.ep, 0
  %i.er = extractvalue { double, double } %i.ep, 1
  br label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit116.i

_ZStmlIdESt7complexIT_ERKS2_S4_.exit116.i:        ; preds = %bb.m, %bb.l, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit108.i
  %i.es = phi double [ %i.ek, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit108.i ], [ %i.ek, %bb.l ], [ %i.eq, %bb.m ]
  %i.et = phi double [ %i.em, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit108.i ], [ %i.em, %bb.l ], [ %i.er, %bb.m ]
  %i.eu = fadd double %i.bt, -1.000000e+00        ; 4 uses
  %i.ev = fmul double %i.eu, %i.es
  %i.ew = fmul double %i.eu, %i.et
  %i.ex = fmul double %.sroa.0275.0.copyload.i, %i.by
  %i.ey = fmul double %.sroa.6277.0.copyload.i, %i.by
  %i.ez = fmul double %.sroa.6277.0.copyload.i, %i.bz
  %i.fa = fadd double %i.ex, %i.ez                ; 3 uses
  %i.fb = fmul double %.sroa.0275.0.copyload.i, %i.bz
  %i.fc = fsub double %i.ey, %i.fb                ; 3 uses
  %i.fd = fcmp uno double %i.fa, 0.000000e+00
  br i1 %i.fd, label %bb.n, label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit129.i, !prof !143

bb.n:                                             ; preds = %_ZStmlIdESt7complexIT_ERKS2_S4_.exit116.i
  %i.fe = fcmp uno double %i.fc, 0.000000e+00
  br i1 %i.fe, label %bb.o, label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit129.i, !prof !143

bb.o:                                             ; preds = %bb.n
  %i.ff = call noundef { double, double } @__muldc3(double noundef %i.by, double noundef %i.eg, double noundef %.sroa.0275.0.copyload.i, double noundef %.sroa.6277.0.copyload.i) #9 ; 2 uses
  %i.fg = extractvalue { double, double } %i.ff, 0
  %i.fh = extractvalue { double, double } %i.ff, 1
  br label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit129.i

_ZStmlIdESt7complexIT_ERKS2_S4_.exit129.i:        ; preds = %bb.o, %bb.n, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit116.i
  %i.fi = phi double [ %i.fa, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit116.i ], [ %i.fa, %bb.n ], [ %i.fg, %bb.o ]
  %i.fj = phi double [ %i.fc, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit116.i ], [ %i.fc, %bb.n ], [ %i.fh, %bb.o ]
  %i.fk = fmul double %i.bs, %i.fi                ; 3 uses
  %i.fl = fmul double %i.bs, %i.fj                ; 3 uses
  %i.fm = fmul double %.sroa.0271.0.copyload.i, %i.dz
  %i.fn = fmul double %.sroa.6273.0.copyload.i, %i.dz
  %i.fo = fadd double %i.fm, %i.ev
  %i.fp = fadd double %i.fn, %i.ew
  %i.fq = fmul double %i.fk, 0.000000e+00
  %i.fr = fmul double %i.fl, 0.000000e+00
  %i.fs = fsub double %i.fq, %i.fl                ; 3 uses
  %i.ft = fadd double %i.fk, %i.fr                ; 3 uses
  %i.fu = fcmp uno double %i.fs, 0.000000e+00
  br i1 %i.fu, label %bb.p, label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit150.i, !prof !143

bb.p:                                             ; preds = %_ZStmlIdESt7complexIT_ERKS2_S4_.exit129.i
  %i.fv = fcmp uno double %i.ft, 0.000000e+00
  br i1 %i.fv, label %bb.q, label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit150.i, !prof !143

bb.q:                                             ; preds = %bb.p
  %i.fw = call noundef { double, double } @__muldc3(double noundef 0.000000e+00, double noundef 1.000000e+00, double noundef %i.fk, double noundef %i.fl) #9 ; 2 uses
  %i.fx = extractvalue { double, double } %i.fw, 0
  %i.fy = extractvalue { double, double } %i.fw, 1
  br label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit150.i

_ZStmlIdESt7complexIT_ERKS2_S4_.exit150.i:        ; preds = %bb.q, %bb.p, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit129.i
  %i.fz = phi double [ %i.fs, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit129.i ], [ %i.fs, %bb.p ], [ %i.fx, %bb.q ]
  %i.ga = phi double [ %i.ft, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit129.i ], [ %i.ft, %bb.p ], [ %i.fy, %bb.q ]
  %i.gb = fsub double %i.fo, %i.fz
  %i.gc = fsub double %i.fp, %i.ga
  store double %i.gb, ptr %i.bv, align 8
  store double %i.gc, ptr %.sroa.6273.0..sroa_idx.i, align 8, !tbaa !142
  %i.gd = call double @llvm.fmuladd.f64(double %i.cf, double %i.bt, double %i.cd) ; 2 uses
  br i1 %i.cm, label %bb.r, label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit161.i, !prof !143

bb.r:                                             ; preds = %_ZStmlIdESt7complexIT_ERKS2_S4_.exit150.i
  %i.ge = fcmp uno double %i.cl, 0.000000e+00
  br i1 %i.ge, label %bb.s, label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit161.i, !prof !143

bb.s:                                             ; preds = %bb.r
  %i.gf = call noundef { double, double } @__muldc3(double noundef %i.by, double noundef %i.bz, double noundef %.sroa.0271.0.copyload.i, double noundef %.sroa.6273.0.copyload.i) #9 ; 2 uses
  %i.gg = extractvalue { double, double } %i.gf, 0
  %i.gh = extractvalue { double, double } %i.gf, 1
  br label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit161.i

_ZStmlIdESt7complexIT_ERKS2_S4_.exit161.i:        ; preds = %bb.s, %bb.r, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit150.i
  %i.gi = phi double [ %i.ck, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit150.i ], [ %i.ck, %bb.r ], [ %i.gg, %bb.s ] ; 3 uses
  %i.gj = phi double [ %i.cl, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit150.i ], [ %i.cl, %bb.r ], [ %i.gh, %bb.s ] ; 3 uses
  %i.gk = fneg double %i.cb                       ; 2 uses
  %i.gl = fmul double %i.ca, %i.gi
  %i.gm = fmul double %i.ca, %i.gj
  %i.gn = fmul double %i.cb, %i.gj
  %i.go = fadd double %i.gl, %i.gn                ; 3 uses
  %i.gp = fmul double %i.cb, %i.gi
  %i.gq = fsub double %i.gm, %i.gp                ; 3 uses
  %i.gr = fcmp uno double %i.go, 0.000000e+00
  br i1 %i.gr, label %bb.t, label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit169.i, !prof !143

bb.t:                                             ; preds = %_ZStmlIdESt7complexIT_ERKS2_S4_.exit161.i
  %i.gs = fcmp uno double %i.gq, 0.000000e+00
  br i1 %i.gs, label %bb.u, label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit169.i, !prof !143

bb.u:                                             ; preds = %bb.t
  %i.gt = call noundef { double, double } @__muldc3(double noundef %i.ca, double noundef %i.gk, double noundef %i.gi, double noundef %i.gj) #9 ; 2 uses
  %i.gu = extractvalue { double, double } %i.gt, 0
  %i.gv = extractvalue { double, double } %i.gt, 1
  br label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit169.i

_ZStmlIdESt7complexIT_ERKS2_S4_.exit169.i:        ; preds = %bb.u, %bb.t, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit161.i
  %i.gw = phi double [ %i.go, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit161.i ], [ %i.go, %bb.t ], [ %i.gu, %bb.u ]
  %i.gx = phi double [ %i.gq, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit161.i ], [ %i.gq, %bb.t ], [ %i.gv, %bb.u ]
  %i.gy = fmul double %i.eu, %i.gw
  %i.gz = fmul double %i.eu, %i.gx
  %i.ha = fmul double %.sroa.0275.0.copyload.i, %i.ca
  %i.hb = fmul double %.sroa.6277.0.copyload.i, %i.ca
  %i.hc = fmul double %.sroa.6277.0.copyload.i, %i.cb
  %i.hd = fadd double %i.ha, %i.hc                ; 3 uses
  %i.he = fmul double %.sroa.0275.0.copyload.i, %i.cb
  %i.hf = fsub double %i.hb, %i.he                ; 3 uses
  %i.hg = fcmp uno double %i.hd, 0.000000e+00
  br i1 %i.hg, label %bb.v, label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit182.i, !prof !143

bb.v:                                             ; preds = %_ZStmlIdESt7complexIT_ERKS2_S4_.exit169.i
  %i.hh = fcmp uno double %i.hf, 0.000000e+00
  br i1 %i.hh, label %bb.w, label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit182.i, !prof !143

bb.w:                                             ; preds = %bb.v
  %i.hi = call noundef { double, double } @__muldc3(double noundef %i.ca, double noundef %i.gk, double noundef %.sroa.0275.0.copyload.i, double noundef %.sroa.6277.0.copyload.i) #9 ; 2 uses
  %i.hj = extractvalue { double, double } %i.hi, 0
  %i.hk = extractvalue { double, double } %i.hi, 1
  br label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit182.i

_ZStmlIdESt7complexIT_ERKS2_S4_.exit182.i:        ; preds = %bb.w, %bb.v, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit169.i
  %i.hl = phi double [ %i.hd, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit169.i ], [ %i.hd, %bb.v ], [ %i.hj, %bb.w ]
  %i.hm = phi double [ %i.hf, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit169.i ], [ %i.hf, %bb.v ], [ %i.hk, %bb.w ]
  %i.hn = fmul double %i.bs, %i.hl                ; 3 uses
  %i.ho = fmul double %i.bs, %i.hm                ; 3 uses
  %i.hp = fmul double %.sroa.0.0.copyload.i61.i, %i.gd
  %i.hq = fmul double %.sroa.4.0.copyload.i63.i, %i.gd
  %i.hr = fadd double %i.hp, %i.gy
  %i.hs = fadd double %i.hq, %i.gz
  %i.ht = fmul double %i.hn, 0.000000e+00
  %i.hu = fmul double %i.ho, 0.000000e+00
  %i.hv = fsub double %i.ht, %i.ho                ; 3 uses
  %i.hw = fadd double %i.hn, %i.hu                ; 3 uses
  %i.hx = fcmp uno double %i.hv, 0.000000e+00
  br i1 %i.hx, label %bb.x, label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit203.i, !prof !143

bb.x:                                             ; preds = %_ZStmlIdESt7complexIT_ERKS2_S4_.exit182.i
  %i.hy = fcmp uno double %i.hw, 0.000000e+00
  br i1 %i.hy, label %bb.y, label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit203.i, !prof !143

bb.y:                                             ; preds = %bb.x
  %i.hz = call noundef { double, double } @__muldc3(double noundef 0.000000e+00, double noundef 1.000000e+00, double noundef %i.hn, double noundef %i.ho) #9 ; 2 uses
  %i.ia = extractvalue { double, double } %i.hz, 0
  %i.ib = extractvalue { double, double } %i.hz, 1
  br label %_ZStmlIdESt7complexIT_ERKS2_S4_.exit203.i

_ZStmlIdESt7complexIT_ERKS2_S4_.exit203.i:        ; preds = %bb.y, %bb.x, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit182.i
  %i.ic = phi double [ %i.hv, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit182.i ], [ %i.hv, %bb.x ], [ %i.ia, %bb.y ]
  %i.id = phi double [ %i.hw, %_ZStmlIdESt7complexIT_ERKS2_S4_.exit182.i ], [ %i.hw, %bb.x ], [ %i.ib, %bb.y ]
  %i.ie = fsub double %i.hr, %i.ic
  %i.if = fsub double %i.hs, %i.id
  store double %i.ie, ptr %i.bw, align 8
  store double %i.if, ptr %.sroa.4.0..sroa_idx.i62.i, align 8, !tbaa !142
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.i, %i.aj
  br i1 %exitcond.not, label %._crit_edge.i.loopexit, label %.lr.ph.i, !llvm.loop !144

.noexc22.loopexit:                                ; preds = %._crit_edge.i.loopexit
  %indvars.iv.next105 = add nsw i64 %indvars.iv104, 1 ; 2 uses
  %lftr.wideiv107 = trunc i64 %indvars.iv.next105 to i32
  %exitcond107.not = icmp eq i32 %i.aa, %lftr.wideiv107
  br i1 %exitcond107.not, label %"._Z6forallI9simd_execZL16BM_COUPLE_LAMBDARN9benchmark5StateEE3$_0EviiT0_.exit_crit_edge", label %.lr.ph313.split.i.preheader, !llvm.loop !145

"._Z6forallI9simd_execZL16BM_COUPLE_LAMBDARN9benchmark5StateEE3$_0EviiT0_.exit_crit_edge": ; preds = %.noexc22.loopexit
  %i.ig = add nsw i64 %.sroa.028.096, -1          ; 2 uses
  %.not.i.not = icmp eq i64 %i.ig, 0
  br i1 %.not.i.not, label %_ZN9benchmark5State3endEv.exit._crit_edge.split, label %.preheader, !prof !61

bb.z:                                             ; preds = %bb.c
  call void @_ZdaPv(ptr noundef nonnull %i.ay) #10
  br label %_ZN7ADomainD2Ev.exit25

_ZN7ADomainD2Ev.exit25:                           ; preds = %bb.c, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  resume { ptr, i32 } %i.aw
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL13BM_FIR_LAMBDARN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #3 {
_ZN9benchmark5State13StateIteratorC2EPS0_.exit:
  %i.a = tail call noundef nonnull align 8 dereferenceable(1616) ptr @_Z11getLoopDatav() ; 2 uses
  tail call void @_Z8loopInitj(i32 noundef 8)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8    ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !8    ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 32, !tbaa !40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !41
  %i.i = trunc i64 %i.h to i32
  %i.j = add i32 %i.i, -16                        ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.l = load i32, ptr %i.k, align 4, !tbaa !13
  %.not = icmp eq i32 %i.l, 0
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load i64, ptr %i.m, align 16             ; 2 uses
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  %.not.i.not2833 = icmp ne i64 %i.n, 0
  %.not.i.not28 = select i1 %.not, i1 %.not.i.not2833, i1 false
  %i.o = icmp sgt i32 %i.j, 0
  %or.cond = select i1 %.not.i.not28, i1 %i.o, i1 false, !prof !130
  br i1 %or.cond, label %.preheader.preheader, label %._crit_edge.split, !prof !130

.preheader.preheader:                             ; preds = %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  %wide.trip.count = zext nneg i32 %i.j to i64    ; 4 uses
  %i.p = shl nuw nsw i64 %wide.trip.count, 3      ; 2 uses
  %scevgep = getelementptr i8, ptr %i.c, i64 %i.p
  %i.q = getelementptr i8, ptr %i.e, i64 %i.p
  %scevgep34 = getelementptr i8, ptr %i.q, i64 120
  %min.iters.check = icmp ult i32 %i.j, 2
  %bound0 = icmp ult ptr %i.c, %scevgep34
  %bound1 = icmp ult ptr %i.e, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %n.vec = and i64 %wide.trip.count, 2147483646   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %"._Z6forallIZL13BM_FIR_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge"
  %.sroa.013.029 = phi i64 [ %i.cw, %"._Z6forallIZL13BM_FIR_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge" ], [ %i.n, %.preheader.preheader ]
  %brmerge = select i1 %min.iters.check, i1 true, i1 %found.conflict
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader ] ; 3 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %index ; 16 uses
  %wide.load = load <2 x double>, ptr %i.r, align 8, !tbaa !11, !alias.scope !146
  %i.s = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load, <2 x double> splat (double 3.000000e+00), <2 x double> zeroinitializer)
  %i.t = getelementptr i8, ptr %i.r, i64 8
  %wide.load35 = load <2 x double>, ptr %i.t, align 8, !tbaa !11, !alias.scope !146
  %i.u = fsub <2 x double> %i.s, %wide.load35
  %i.v = getelementptr i8, ptr %i.r, i64 16
  %wide.load36 = load <2 x double>, ptr %i.v, align 8, !tbaa !11, !alias.scope !146
  %i.w = fsub <2 x double> %i.u, %wide.load36
  %i.x = getelementptr i8, ptr %i.r, i64 24
  %wide.load37 = load <2 x double>, ptr %i.x, align 8, !tbaa !11, !alias.scope !146
  %i.y = fsub <2 x double> %i.w, %wide.load37
  %i.z = getelementptr i8, ptr %i.r, i64 32
  %wide.load38 = load <2 x double>, ptr %i.z, align 8, !tbaa !11, !alias.scope !146
  %i.aa = fsub <2 x double> %i.y, %wide.load38
  %i.ab = getelementptr i8, ptr %i.r, i64 40
  %wide.load39 = load <2 x double>, ptr %i.ab, align 8, !tbaa !11, !alias.scope !146
  %i.ac = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load39, <2 x double> splat (double 3.000000e+00), <2 x double> %i.aa)
  %i.ad = getelementptr i8, ptr %i.r, i64 48
  %wide.load40 = load <2 x double>, ptr %i.ad, align 8, !tbaa !11, !alias.scope !146
  %i.ae = fsub <2 x double> %i.ac, %wide.load40
  %i.af = getelementptr i8, ptr %i.r, i64 56
  %wide.load41 = load <2 x double>, ptr %i.af, align 8, !tbaa !11, !alias.scope !146
  %i.ag = fsub <2 x double> %i.ae, %wide.load41
  %i.ah = getelementptr i8, ptr %i.r, i64 64
  %wide.load42 = load <2 x double>, ptr %i.ah, align 8, !tbaa !11, !alias.scope !146
  %i.ai = fsub <2 x double> %i.ag, %wide.load42
  %i.aj = getelementptr i8, ptr %i.r, i64 72
  %wide.load43 = load <2 x double>, ptr %i.aj, align 8, !tbaa !11, !alias.scope !146
  %i.ak = fsub <2 x double> %i.ai, %wide.load43
  %i.al = getelementptr i8, ptr %i.r, i64 80
  %wide.load44 = load <2 x double>, ptr %i.al, align 8, !tbaa !11, !alias.scope !146
  %i.am = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load44, <2 x double> splat (double 3.000000e+00), <2 x double> %i.ak)
  %i.an = getelementptr i8, ptr %i.r, i64 88
  %wide.load45 = load <2 x double>, ptr %i.an, align 8, !tbaa !11, !alias.scope !146
  %i.ao = fsub <2 x double> %i.am, %wide.load45
  %i.ap = getelementptr i8, ptr %i.r, i64 96
  %wide.load46 = load <2 x double>, ptr %i.ap, align 8, !tbaa !11, !alias.scope !146
  %i.aq = fsub <2 x double> %i.ao, %wide.load46
  %i.ar = getelementptr i8, ptr %i.r, i64 104
  %wide.load47 = load <2 x double>, ptr %i.ar, align 8, !tbaa !11, !alias.scope !146
  %i.as = fsub <2 x double> %i.aq, %wide.load47
  %i.at = getelementptr i8, ptr %i.r, i64 112
  %wide.load48 = load <2 x double>, ptr %i.at, align 8, !tbaa !11, !alias.scope !146
  %i.au = fsub <2 x double> %i.as, %wide.load48
  %i.av = getelementptr i8, ptr %i.r, i64 120
  %wide.load49 = load <2 x double>, ptr %i.av, align 8, !tbaa !11, !alias.scope !146
  %i.aw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load49, <2 x double> splat (double 3.000000e+00), <2 x double> %i.au)
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index
  store <2 x double> %i.aw, ptr %i.ax, align 8, !tbaa !11, !alias.scope !149, !noalias !146
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !151

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
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv ; 16 uses
  %i.ba = load double, ptr %i.az, align 8, !tbaa !11
  %i.bb = tail call double @llvm.fmuladd.f64(double %i.ba, double 3.000000e+00, double 0.000000e+00)
  %i.bc = getelementptr i8, ptr %i.az, i64 8
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !11
  %i.be = fsub double %i.bb, %i.bd
  %i.bf = getelementptr i8, ptr %i.az, i64 16
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !11
  %i.bh = fsub double %i.be, %i.bg
  %i.bi = getelementptr i8, ptr %i.az, i64 24
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !11
  %i.bk = fsub double %i.bh, %i.bj
  %i.bl = getelementptr i8, ptr %i.az, i64 32
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !11
  %i.bn = fsub double %i.bk, %i.bm
  %i.bo = getelementptr i8, ptr %i.az, i64 40
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !11
  %i.bq = tail call double @llvm.fmuladd.f64(double %i.bp, double 3.000000e+00, double %i.bn)
  %i.br = getelementptr i8, ptr %i.az, i64 48
  %i.bs = load double, ptr %i.br, align 8, !tbaa !11
  %i.bt = fsub double %i.bq, %i.bs
  %i.bu = getelementptr i8, ptr %i.az, i64 56
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !11
  %i.bw = fsub double %i.bt, %i.bv
  %i.bx = getelementptr i8, ptr %i.az, i64 64
  %i.by = load double, ptr %i.bx, align 8, !tbaa !11
  %i.bz = fsub double %i.bw, %i.by
  %i.ca = getelementptr i8, ptr %i.az, i64 72
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !11
  %i.cc = fsub double %i.bz, %i.cb
  %i.cd = getelementptr i8, ptr %i.az, i64 80
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !11
  %i.cf = tail call double @llvm.fmuladd.f64(double %i.ce, double 3.000000e+00, double %i.cc)
  %i.cg = getelementptr i8, ptr %i.az, i64 88
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !11
  %i.ci = fsub double %i.cf, %i.ch
  %i.cj = getelementptr i8, ptr %i.az, i64 96
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !11
  %i.cl = fsub double %i.ci, %i.ck
  %i.cm = getelementptr i8, ptr %i.az, i64 104
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !11
  %i.co = fsub double %i.cl, %i.cn
  %i.cp = getelementptr i8, ptr %i.az, i64 112
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !11
  %i.cr = fsub double %i.co, %i.cq
  %i.cs = getelementptr i8, ptr %i.az, i64 120
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !11
  %i.cu = tail call double @llvm.fmuladd.f64(double %i.ct, double 3.000000e+00, double %i.cr)
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  store double %i.cu, ptr %i.cv, align 8, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %"._Z6forallIZL13BM_FIR_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge", label %scalar.ph, !llvm.loop !152

"._Z6forallIZL13BM_FIR_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge": ; preds = %scalar.ph, %middle.block
  %i.cw = add nsw i64 %.sroa.013.029, -1          ; 2 uses
  %.not.i.not = icmp eq i64 %i.cw, 0
  br i1 %.not.i.not, label %._crit_edge.split, label %.preheader, !prof !61
}

declare noundef nonnull align 8 dereferenceable(1616) ptr @_Z11getLoopDatav() local_unnamed_addr #0

declare void @_Z8loopInitj(i32 noundef) local_unnamed_addr #0

declare void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184)) local_unnamed_addr #0

declare void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184)) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2
end_hunk_0
