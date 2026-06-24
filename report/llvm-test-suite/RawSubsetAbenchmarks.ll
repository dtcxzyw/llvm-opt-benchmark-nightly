inline.NumInlined: 161
inline.NumDeleted: 54
begin_hunk_0_@_ZL21BM_DEL_DOT_VEC_2D_RAWRN9benchmark5StateE:bb.a
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !13
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bl = load i64, ptr %i.bk, align 16           ; 2 uses
  invoke void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
          to label %_ZN9benchmark5State3endEv.exit.preheader unwind label %_ZN7ADomainD2Ev.exit138

_ZN9benchmark5State3endEv.exit.preheader:         ; preds = %_ZN7ADomainC2Eii.exit
  %.not150 = icmp eq i32 %i.bj, 0
  %.not.i.not152156 = icmp ne i64 %i.bl, 0
  %.not.i.not152 = select i1 %.not150, i1 %.not.i.not152156, i1 false
  %i.bm = icmp sgt i32 %.sroa.26.0, 0
  %or.cond = select i1 %.not.i.not152, i1 %i.bm, i1 false, !prof !130
  br i1 %or.cond, label %.preheader.preheader, label %_ZN9benchmark5State3endEv.exit._crit_edge.split, !prof !130

.preheader.preheader:                             ; preds = %_ZN9benchmark5State3endEv.exit.preheader
  %wide.trip.count = zext nneg i32 %.sroa.26.0 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.sroa.0139.0153 = phi i64 [ %i.bo, %._crit_edge ], [ %i.bl, %.preheader.preheader ]
  br label %bb.f

_ZN9benchmark5State3endEv.exit._crit_edge.split:  ; preds = %._crit_edge, %_ZN9benchmark5State3endEv.exit.preheader
  invoke void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
          to label %_ZN7ADomainD2Ev.exit unwind label %_ZN7ADomainD2Ev.exit138

_ZN7ADomainD2Ev.exit:                             ; preds = %_ZN9benchmark5State3endEv.exit._crit_edge.split
  tail call void @_ZdaPv(ptr noundef nonnull %i.ac) #10
  ret void

_ZN7ADomainD2Ev.exit138:                          ; preds = %_ZN9benchmark5State3endEv.exit._crit_edge.split, %_ZN7ADomainC2Eii.exit
  %i.bn = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdaPv(ptr noundef nonnull %i.ac) #10
  resume { ptr, i32 } %i.bn

._crit_edge:                                      ; preds = %bb.f
  %i.bo = add nsw i64 %.sroa.0139.0153, -1        ; 2 uses
  %.not.i.not = icmp eq i64 %i.bo, 0
  br i1 %.not.i.not, label %_ZN9benchmark5State3endEv.exit._crit_edge.split, label %.preheader, !prof !61

bb.f:                                             ; preds = %.preheader, %bb.f
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !4
  %i.br = sext i32 %i.bq to i64                   ; 17 uses
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.br
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !11 ; 2 uses
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %i.br
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !11 ; 2 uses
  %i.bw = fadd double %i.bt, %i.bv
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %i.br
  %i.by = load double, ptr %i.bx, align 8, !tbaa !11 ; 2 uses
  %i.bz = fsub double %i.bw, %i.by
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.br
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !11 ; 2 uses
  %i.cc = fsub double %i.bz, %i.cb
  %i.cd = fmul double %i.cc, 5.000000e-01         ; 2 uses
  %i.ce = fadd double %i.bv, %i.by
  %i.cf = fsub double %i.ce, %i.cb
  %i.cg = fsub double %i.cf, %i.bt
  %i.ch = fmul double %i.cg, 5.000000e-01         ; 2 uses
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.br
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !11 ; 2 uses
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %i.br
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !11 ; 2 uses
  %i.cm = fadd double %i.cj, %i.cl                ; 2 uses
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %i.br
  %i.co = load double, ptr %i.cn, align 8, !tbaa !11 ; 3 uses
  %i.cp = fsub double %i.cm, %i.co
  %i.cq = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.br
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !11 ; 3 uses
  %i.cs = fsub double %i.cp, %i.cr
  %i.ct = fadd double %i.cl, %i.co
  %i.cu = fsub double %i.ct, %i.cr
  %i.cv = fsub double %i.cu, %i.cj
  %i.cw = fmul double %i.cv, 5.000000e-01         ; 2 uses
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.br
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !11 ; 2 uses
  %i.cz = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.br
  %i.da = load double, ptr %i.cz, align 8, !tbaa !11 ; 2 uses
  %i.db = fadd double %i.cy, %i.da
  %i.dc = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.br
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !11 ; 2 uses
  %i.de = fsub double %i.db, %i.dd
  %i.df = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.br
  %i.dg = load double, ptr %i.df, align 8, !tbaa !11 ; 2 uses
  %i.dh = fsub double %i.de, %i.dg
  %i.di = fmul double %i.dh, 5.000000e-01
  %i.dj = fadd double %i.da, %i.dd
  %i.dk = fsub double %i.dj, %i.dg
  %i.dl = fsub double %i.dk, %i.cy
  %i.dm = fmul double %i.dl, 5.000000e-01
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.br
  %i.do = load double, ptr %i.dn, align 8, !tbaa !11 ; 2 uses
  %i.dp = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.br
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !11 ; 2 uses
  %i.dr = fadd double %i.do, %i.dq                ; 2 uses
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.br
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !11 ; 3 uses
  %i.du = fsub double %i.dr, %i.dt
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.br
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !11 ; 3 uses
  %i.dx = fsub double %i.du, %i.dw
  %i.dy = fmul double %i.dx, 5.000000e-01
  %i.dz = fadd double %i.dq, %i.dt
  %i.ea = fsub double %i.dz, %i.dw
  %i.eb = fsub double %i.ea, %i.do
  %i.ec = fmul double %i.eb, 5.000000e-01
  %i.ed = fmul double %i.cs, -5.000000e-01        ; 2 uses
  %i.ee = fmul double %i.ch, %i.ed
  %i.ef = tail call double @llvm.fmuladd.f64(double %i.cd, double %i.cw, double %i.ee)
  %i.eg = fadd double %i.ef, f0x3BC79CA10C924223
  %i.eh = fdiv double 1.000000e+00, %i.eg         ; 2 uses
  %i.ei = fmul double %i.ed, %i.dm
  %i.ej = tail call double @llvm.fmuladd.f64(double %i.di, double %i.cw, double %i.ei)
  %i.ek = fmul double %i.eh, %i.ej
  %i.el = fneg double %i.ch
  %i.em = fmul double %i.dy, %i.el
  %i.en = tail call double @llvm.fmuladd.f64(double %i.ec, double %i.cd, double %i.em)
  %i.eo = fmul double %i.eh, %i.en
  %i.ep = fadd double %i.dr, %i.dt
  %i.eq = fadd double %i.ep, %i.dw
  %i.er = fadd double %i.cm, %i.co
  %i.es = fadd double %i.er, %i.cr
  %i.et = fdiv double %i.eq, %i.es
  %i.eu = fadd double %i.ek, %i.eo
  %i.ev = fadd double %i.et, %i.eu
  %i.ew = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.br
  store double %i.ev, ptr %i.ew, align 8, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.f, !llvm.loop !131
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL13BM_COUPLE_RAWRN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #3 personality ptr @__gxx_personality_v0 {
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
  %.not.i.not419476 = icmp eq i64 %i.ae, 0
  %.not.i.not419 = select i1 %.not, i1 true, i1 %.not.i.not419476
  br i1 %.not.i.not419, label %_ZN9benchmark5State3endEv.exit._crit_edge.split, label %.preheader411.lr.ph, !prof !39

.preheader411.lr.ph:                              ; preds = %_ZN9benchmark5State3endEv.exit.preheader
  %i.af = icmp sge i32 %i.y, %i.aa
  %i.ag = icmp sge i32 %i.u, %i.w
  %i.ah = icmp sge i32 %i.q, %i.s
  %brmerge = select i1 %i.af, i1 true, i1 %i.ag
  %brmerge426 = select i1 %brmerge, i1 true, i1 %i.ah
  br i1 %brmerge426, label %_ZN9benchmark5State3endEv.exit._crit_edge.split, label %.preheader411.preheader

.preheader411.preheader:                          ; preds = %.preheader411.lr.ph
  %i.ai = add nsw i32 %i.s, 2
  %i.aj = add nsw i32 %i.w, 2
  %i.ak = add nsw i32 %i.s, 1
  %i.al = add nsw i32 %i.w, 1
  %i.am = sext i32 %i.q to i64
  %i.an = sext i32 %i.u to i64
  %i.ao = sext i32 %i.ak to i64
  %i.ap = sext i32 %i.ai to i64
  %i.aq = sext i32 %i.y to i64
  %wide.trip.count435 = sext i32 %i.al to i64
  %wide.trip.count = sext i32 %i.aj to i64
  br label %.preheader411

.preheader411:                                    ; preds = %.preheader411.preheader, %._crit_edge417
  %.sroa.0398.0420 = phi i64 [ %i.ay, %._crit_edge417 ], [ %i.ae, %.preheader411.preheader ]
  br label %.preheader

_ZN9benchmark5State3endEv.exit._crit_edge.split:  ; preds = %._crit_edge417, %.preheader411.lr.ph, %_ZN9benchmark5State3endEv.exit.preheader
  invoke void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
          to label %_ZNK9benchmark5State13StateIteratorneERKS1_.exit unwind label %bb.c

_ZNK9benchmark5State13StateIteratorneERKS1_.exit: ; preds = %_ZN9benchmark5State3endEv.exit._crit_edge.split
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !96 ; 2 uses
  %.not.i138 = icmp eq ptr %i.as, null
  br i1 %.not.i138, label %_ZN7ADomainD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK9benchmark5State13StateIteratorneERKS1_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.as) #10
  br label %_ZN7ADomainD2Ev.exit

_ZN7ADomainD2Ev.exit:                             ; preds = %_ZNK9benchmark5State13StateIteratorneERKS1_.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  ret void

bb.c:                                             ; preds = %_ZN9benchmark5State3endEv.exit._crit_edge.split, %bb.a
  %i.at = landingpad { ptr, i32 }
          cleanup
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !96 ; 2 uses
  %.not.i299 = icmp eq ptr %i.av, null
  br i1 %.not.i299, label %_ZN7ADomainD2Ev.exit300, label %bb.al

.preheader:                                       ; preds = %.preheader411, %._crit_edge415
  %indvars.iv432 = phi i64 [ %i.aq, %.preheader411 ], [ %indvars.iv.next433, %._crit_edge415 ] ; 3 uses
  %i.aw = mul nsw i64 %indvars.iv432, %wide.trip.count435
  %i.ax = mul nsw i64 %indvars.iv432, %wide.trip.count
  br label %.lr.ph

._crit_edge417:                                   ; preds = %._crit_edge415
  %i.ay = add nsw i64 %.sroa.0398.0420, -1        ; 2 uses
  %.not.i.not = icmp eq i64 %i.ay, 0
  br i1 %.not.i.not, label %_ZN9benchmark5State3endEv.exit._crit_edge.split, label %.preheader411, !prof !61

._crit_edge415:                                   ; preds = %._crit_edge
  %indvars.iv.next433 = add nsw i64 %indvars.iv432, 1 ; 2 uses
  %lftr.wideiv436 = trunc i64 %indvars.iv.next433 to i32
  %exitcond436.not = icmp eq i32 %i.aa, %lftr.wideiv436
  br i1 %exitcond436.not, label %._crit_edge417, label %.preheader, !llvm.loop !140

.lr.ph:                                           ; preds = %.preheader, %._crit_edge
  %indvars.iv428 = phi i64 [ %i.an, %.preheader ], [ %indvars.iv.next429, %._crit_edge ] ; 3 uses
  %i.az = add nsw i64 %indvars.iv428, %i.aw
  %i.ba = mul nsw i64 %i.az, %i.ao
  %i.bb = add nsw i64 %indvars.iv428, %i.ax
  %i.bc = mul nsw i64 %i.bb, %i.ap
  %invariant.gep = getelementptr [16 x i8], ptr %i.i, i64 %i.bc
  br label %bb.d

._crit_edge:                                      ; preds = %bb.ak
  %indvars.iv.next429 = add nsw i64 %indvars.iv428, 1 ; 2 uses
  %lftr.wideiv431 = trunc i64 %indvars.iv.next429 to i32
  %exitcond431.not = icmp eq i32 %i.w, %lftr.wideiv431
  br i1 %exitcond431.not, label %._crit_edge415, label %.lr.ph, !llvm.loop !141

bb.d:                                             ; preds = %.lr.ph, %bb.ak
  %indvars.iv = phi i64 [ %i.am, %.lr.ph ], [ %indvars.iv.next, %bb.ak ] ; 3 uses
  %gep = getelementptr [16 x i8], ptr %invariant.gep, i64 %indvars.iv ; 2 uses
  %.sroa.0.0.copyload.i = load double, ptr %gep, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %gep, i64 8
  %.sroa.4.0.copyload.i = load double, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !142
  %i.bd = fmul double %.sroa.0.0.copyload.i, f0x406E56FD83BA6863 ; 3 uses
  %i.be = fmul double %.sroa.4.0.copyload.i, f0x406E56FD83BA6863 ; 3 uses
  %i.bf = add nsw i64 %indvars.iv, %i.ba          ; 4 uses
  %i.bg = getelementptr inbounds [16 x i8], ptr %i.k, i64 %i.bf ; 2 uses
  %.sroa.0.0.copyload.i141 = load double, ptr %i.bg, align 8
  %.sroa.4.0..sroa_idx.i142 = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %.sroa.4.0.copyload.i143 = load double, ptr %.sroa.4.0..sroa_idx.i142, align 8, !tbaa !142
  %i.bh = fmul double %.sroa.0.0.copyload.i141, f0x406E56FD83BA6863 ; 3 uses
  %i.bi = fmul double %.sroa.4.0.copyload.i143, f0x406E56FD83BA6863 ; 3 uses
  %i.bj = fmul double %i.be, %i.be
  %i.bk = call double @llvm.fmuladd.f64(double %i.bd, double %i.bd, double %i.bj)
  %i.bl = call double @llvm.fmuladd.f64(double %i.bh, double %i.bh, double %i.bk)
  %i.bm = call double @llvm.fmuladd.f64(double %i.bi, double %i.bi, double %i.bl)
  %i.bn = fadd double %i.bm, f0x38E09D8792FB4C49
  %sqrt = call double @llvm.sqrt.f64(double %i.bn) ; 2 uses
  %i.bo = fmul double %sqrt, 2.080000e-01
  %i.bp = fmul double %i.bo, 5.000000e-01         ; 2 uses
  %i.bq = call double @sin(double noundef %i.bp) #9, !tbaa !4 ; 6 uses
  %i.br = call double @cos(double noundef %i.bp) #9, !tbaa !4 ; 5 uses
  %i.bs = getelementptr inbounds [16 x i8], ptr %i.c, i64 %i.bf ; 3 uses
  %.sroa.0362.0.copyload = load double, ptr %i.bs, align 8 ; 7 uses
  %.sroa.7364.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 2 uses
  %.sroa.7364.0.copyload = load double, ptr %.sroa.7364.0..sroa_idx, align 8, !tbaa !142 ; 7 uses
  %i.bt = getelementptr inbounds [16 x i8], ptr %i.e, i64 %i.bf ; 3 uses
  %.sroa.0358.0.copyload = load double, ptr %i.bt, align 8 ; 5 uses
  %.sroa.7360.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 2 uses
  %.sroa.7360.0.copyload = load double, ptr %.sroa.7360.0..sroa_idx, align 8, !tbaa !142 ; 5 uses
  %i.bu = getelementptr inbounds [16 x i8], ptr %i.g, i64 %i.bf ; 3 uses
  %.sroa.0.0.copyload.i146 = load double, ptr %i.bu, align 8 ; 5 uses
  %.sroa.4.0..sroa_idx.i147 = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 2 uses
  %.sroa.4.0.copyload.i148 = load double, ptr %.sroa.4.0..sroa_idx.i147, align 8, !tbaa !142 ; 5 uses
  %i.bv = fdiv double 1.000000e+00, %sqrt         ; 4 uses
  %i.bw = fmul double %i.bd, %i.bv                ; 12 uses
  %i.bx = fmul double %i.be, %i.bv                ; 11 uses
  %i.by = fmul double %i.bh, %i.bv                ; 12 uses
  %i.bz = fmul double %i.bi, %i.bv                ; 11 uses
  %i.ca = fmul double %i.bx, %i.bx
  %i.cb = call double @llvm.fmuladd.f64(double %i.bw, double %i.bw, double %i.ca) ; 2 uses
  %i.cc = fmul double %i.bz, %i.bz
  %i.cd = call double @llvm.fmuladd.f64(double %i.by, double %i.by, double %i.cc) ; 2 uses
  %i.ce = fmul double %.sroa.0358.0.copyload, %i.bw
  %i.cf = fmul double %.sroa.7360.0.copyload, %i.bx
  %i.cg = fmul double %.sroa.7360.0.copyload, %i.bw
  %i.ch = fmul double %.sroa.0358.0.copyload, %i.bx
  %i.ci = fsub double %i.ce, %i.cf                ; 5 uses
  %i.cj = fadd double %i.ch, %i.cg                ; 6 uses
  %i.ck = fcmp uno double %i.ci, 0.000000e+00     ; 2 uses
  br i1 %i.ck, label %bb.e, label %bb.g, !prof !143

bb.e:                                             ; preds = %bb.d
  %i.cl = fcmp uno double %i.cj, 0.000000e+00
  br i1 %i.cl, label %bb.f, label %bb.g, !prof !143

bb.f:                                             ; preds = %bb.e
  %i.cm = call noundef { double, double } @__muldc3(double noundef %i.bw, double noundef %i.bx, double noundef %.sroa.0358.0.copyload, double noundef %.sroa.7360.0.copyload) #9 ; 2 uses
  %i.cn = extractvalue { double, double } %i.cm, 0
  %i.co = extractvalue { double, double } %i.cm, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.cp = phi double [ %i.ci, %bb.d ], [ %i.ci, %bb.e ], [ %i.cn, %bb.f ]
  %i.cq = phi double [ %i.cj, %bb.d ], [ %i.cj, %bb.e ], [ %i.co, %bb.f ]
  %i.cr = fmul double %i.by, %.sroa.0.0.copyload.i146
  %i.cs = fmul double %i.bz, %.sroa.4.0.copyload.i148
  %i.ct = fmul double %i.by, %.sroa.4.0.copyload.i148
  %i.cu = fmul double %i.bz, %.sroa.0.0.copyload.i146
  %i.cv = fsub double %i.cr, %i.cs                ; 5 uses
  %i.cw = fadd double %i.cu, %i.ct                ; 6 uses
  %i.cx = fcmp uno double %i.cv, 0.000000e+00     ; 2 uses
  br i1 %i.cx, label %bb.h, label %bb.j, !prof !143

bb.h:                                             ; preds = %bb.g
  %i.cy = fcmp uno double %i.cw, 0.000000e+00
  br i1 %i.cy, label %bb.i, label %bb.j, !prof !143

bb.i:                                             ; preds = %bb.h
  %i.cz = call noundef { double, double } @__muldc3(double noundef %i.by, double noundef %i.bz, double noundef %.sroa.0.0.copyload.i146, double noundef %.sroa.4.0.copyload.i148) #9 ; 2 uses
  %i.da = extractvalue { double, double } %i.cz, 0
  %i.db = extractvalue { double, double } %i.cz, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %i.dc = phi double [ %i.cv, %bb.g ], [ %i.cv, %bb.h ], [ %i.da, %bb.i ]
  %i.dd = phi double [ %i.cw, %bb.g ], [ %i.cw, %bb.h ], [ %i.db, %bb.i ]
  %i.de = fadd double %i.cp, %i.dc
  %i.df = fadd double %i.cq, %i.dd
  %i.dg = fmul double %i.bq, %i.de                ; 3 uses
  %i.dh = fmul double %i.bq, %i.df                ; 3 uses
  %i.di = fmul double %i.br, %.sroa.0362.0.copyload
  %i.dj = fmul double %i.br, %.sroa.7364.0.copyload
  %i.dk = fmul double %i.dg, 0.000000e+00
  %i.dl = fmul double %i.dh, 0.000000e+00
  %i.dm = fsub double %i.dk, %i.dh                ; 3 uses
  %i.dn = fadd double %i.dg, %i.dl                ; 3 uses
  %i.do = fcmp uno double %i.dm, 0.000000e+00
  br i1 %i.do, label %bb.k, label %bb.m, !prof !143

bb.k:                                             ; preds = %bb.j
  %i.dp = fcmp uno double %i.dn, 0.000000e+00
  br i1 %i.dp, label %bb.l, label %bb.m, !prof !143

bb.l:                                             ; preds = %bb.k
  %i.dq = call noundef { double, double } @__muldc3(double noundef 0.000000e+00, double noundef 1.000000e+00, double noundef %i.dg, double noundef %i.dh) #9 ; 2 uses
  %i.dr = extractvalue { double, double } %i.dq, 0
  %i.ds = extractvalue { double, double } %i.dq, 1
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.l
  %i.dt = phi double [ %i.dm, %bb.j ], [ %i.dm, %bb.k ], [ %i.dr, %bb.l ]
  %i.du = phi double [ %i.dn, %bb.j ], [ %i.dn, %bb.k ], [ %i.ds, %bb.l ]
  %i.dv = fsub double %i.di, %i.dt
  %i.dw = fsub double %i.dj, %i.du
  store double %i.dv, ptr %i.bs, align 8
  store double %i.dw, ptr %.sroa.7364.0..sroa_idx, align 8, !tbaa !142
  %i.dx = call double @llvm.fmuladd.f64(double %i.cb, double %i.br, double %i.cd) ; 2 uses
  br i1 %i.cx, label %bb.n, label %bb.p, !prof !143

bb.n:                                             ; preds = %bb.m
  %i.dy = fcmp uno double %i.cw, 0.000000e+00
  br i1 %i.dy, label %bb.o, label %bb.p, !prof !143

bb.o:                                             ; preds = %bb.n
  %i.dz = call noundef { double, double } @__muldc3(double noundef %i.by, double noundef %i.bz, double noundef %.sroa.0.0.copyload.i146, double noundef %.sroa.4.0.copyload.i148) #9 ; 2 uses
  %i.ea = extractvalue { double, double } %i.dz, 0
  %i.eb = extractvalue { double, double } %i.dz, 1
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %bb.n, %bb.o
  %i.ec = phi double [ %i.cv, %bb.m ], [ %i.cv, %bb.n ], [ %i.ea, %bb.o ] ; 3 uses
  %i.ed = phi double [ %i.cw, %bb.m ], [ %i.cw, %bb.n ], [ %i.eb, %bb.o ] ; 3 uses
  %i.ee = fneg double %i.bx                       ; 2 uses
  %i.ef = fmul double %i.bw, %i.ec
  %i.eg = fmul double %i.bw, %i.ed
  %i.eh = fmul double %i.bx, %i.ed
  %i.ei = fadd double %i.ef, %i.eh                ; 3 uses
  %i.ej = fmul double %i.bx, %i.ec
  %i.ek = fsub double %i.eg, %i.ej                ; 3 uses
  %i.el = fcmp uno double %i.ei, 0.000000e+00
  br i1 %i.el, label %bb.q, label %bb.s, !prof !143

bb.q:                                             ; preds = %bb.p
  %i.em = fcmp uno double %i.ek, 0.000000e+00
  br i1 %i.em, label %bb.r, label %bb.s, !prof !143

bb.r:                                             ; preds = %bb.q
  %i.en = call noundef { double, double } @__muldc3(double noundef %i.bw, double noundef %i.ee, double noundef %i.ec, double noundef %i.ed) #9 ; 2 uses
  %i.eo = extractvalue { double, double } %i.en, 0
  %i.ep = extractvalue { double, double } %i.en, 1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %i.eq = phi double [ %i.ei, %bb.p ], [ %i.ei, %bb.q ], [ %i.eo, %bb.r ]
  %i.er = phi double [ %i.ek, %bb.p ], [ %i.ek, %bb.q ], [ %i.ep, %bb.r ]
  %i.es = fadd double %i.br, -1.000000e+00        ; 4 uses
  %i.et = fmul double %i.es, %i.eq
  %i.eu = fmul double %i.es, %i.er
  %i.ev = fmul double %.sroa.0362.0.copyload, %i.bw
  %i.ew = fmul double %.sroa.7364.0.copyload, %i.bw
  %i.ex = fmul double %.sroa.7364.0.copyload, %i.bx
  %i.ey = fadd double %i.ev, %i.ex                ; 3 uses
  %i.ez = fmul double %.sroa.0362.0.copyload, %i.bx
  %i.fa = fsub double %i.ew, %i.ez                ; 3 uses
  %i.fb = fcmp uno double %i.ey, 0.000000e+00
  br i1 %i.fb, label %bb.t, label %bb.v, !prof !143

bb.t:                                             ; preds = %bb.s
  %i.fc = fcmp uno double %i.fa, 0.000000e+00
  br i1 %i.fc, label %bb.u, label %bb.v, !prof !143

bb.u:                                             ; preds = %bb.t
  %i.fd = call noundef { double, double } @__muldc3(double noundef %i.bw, double noundef %i.ee, double noundef %.sroa.0362.0.copyload, double noundef %.sroa.7364.0.copyload) #9 ; 2 uses
  %i.fe = extractvalue { double, double } %i.fd, 0
  %i.ff = extractvalue { double, double } %i.fd, 1
  br label %bb.v

bb.v:                                             ; preds = %bb.s, %bb.t, %bb.u
  %i.fg = phi double [ %i.ey, %bb.s ], [ %i.ey, %bb.t ], [ %i.fe, %bb.u ]
  %i.fh = phi double [ %i.fa, %bb.s ], [ %i.fa, %bb.t ], [ %i.ff, %bb.u ]
  %i.fi = fmul double %i.bq, %i.fg                ; 3 uses
  %i.fj = fmul double %i.bq, %i.fh                ; 3 uses
  %i.fk = fmul double %.sroa.0358.0.copyload, %i.dx
  %i.fl = fmul double %.sroa.7360.0.copyload, %i.dx
  %i.fm = fadd double %i.fk, %i.et
  %i.fn = fadd double %i.fl, %i.eu
  %i.fo = fmul double %i.fi, 0.000000e+00
  %i.fp = fmul double %i.fj, 0.000000e+00
  %i.fq = fsub double %i.fo, %i.fj                ; 3 uses
  %i.fr = fadd double %i.fi, %i.fp                ; 3 uses
  %i.fs = fcmp uno double %i.fq, 0.000000e+00
  br i1 %i.fs, label %bb.w, label %bb.y, !prof !143

bb.w:                                             ; preds = %bb.v
end_hunk_0
