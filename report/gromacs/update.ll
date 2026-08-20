inline.NumInlined: 2061
inline.NumDeleted: 830
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 53
loop-unroll.NumUnrolledNotLatch: 4
begin_hunk_0_@_ZN3gmx6Update28update_for_constraint_virialERK10t_inputrecibNS_8ArrayRefIKfEENS4_IKNS_11BasicVectorIfEEEERK7t_stateRKNS_19ArrayRefWithPaddingIS9_EERK14gmx_ekindata_t:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx6Update4Impl28update_for_constraint_virialERK10t_inputrecibNS_8ArrayRefIKfEENS5_IKNS_11BasicVectorIfEEEERK7t_stateRKNS_19ArrayRefWithPaddingISA_EERK14gmx_ekindata_t(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(888) %1, i32 noundef %2, i1 noundef zeroext %3, ptr %4, ptr %5, ptr noundef byval(%"class.gmx::ArrayRef.116") align 8 %6, ptr noundef nonnull align 8 dereferenceable(840) %7, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(224) %9) local_unnamed_addr #0 align 2 {
bb.a:
  %10 = alloca %"class.gmx::ArrayRef.113", align 8 ; 3 uses
  %i.a = alloca i32, align 4                      ; 2 uses
  %i.b = alloca i8, align 1                       ; 2 uses
  %i.c = alloca float, align 4                    ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %4, ptr %10, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %5, ptr %i.f, align 8
  store i32 %2, ptr %i.a, align 4, !tbaa !66
  %i.g = zext i1 %3 to i8
  store i8 %i.g, ptr %i.b, align 1, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.i = load double, ptr %i.h, align 8, !tbaa !176
  %i.j = fptrunc double %i.i to float
  store float %i.j, ptr %i.c, align 4, !tbaa !177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  %i.k = tail call noundef i32 @_Z20gmx_omp_nthreads_get17ModuleMultiThread(i32 noundef 6) ; 2 uses
  store i32 %i.k, ptr %i.d, align 4, !tbaa !66
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.e, i32 %i.k)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 10, ptr nonnull @_ZN3gmx6Update4Impl28update_for_constraint_virialERK10t_inputrecibNS_8ArrayRefIKfEENS5_IKNS_11BasicVectorIfEEEERK7t_stateRKNS_19ArrayRefWithPaddingISA_EERK14gmx_ekindata_t.omp_outlined, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %7, ptr nonnull %0, ptr nonnull %8, ptr nonnull %i.c, ptr nonnull %i.b, ptr nonnull %10, ptr nonnull %6, ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN3gmx6Update28update_temperature_constantsERK10t_inputrecRK14gmx_ekindata_t(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(888) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(224) %2) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !9
  tail call void @_ZN3gmx6Update4Impl28update_temperature_constantsERK10t_inputrecRK14gmx_ekindata_t(ptr noundef nonnull align 8 dereferenceable(232) %i.a, ptr noundef nonnull align 8 dereferenceable(888) %1, ptr noundef nonnull align 8 dereferenceable(224) %2)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN3gmx6Update4Impl28update_temperature_constantsERK10t_inputrecRK14gmx_ekindata_t(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(232) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(888) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(224) %2) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !285
  %i.c = load ptr, ptr %2, align 8, !tbaa !15     ; 14 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %i.g = lshr i64 %i.f, 2                         ; 9 uses
  %i.h = trunc i64 %i.g to i32                    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !75
  switch i32 %i.j, label %.loopexit30 [
    i32 3, label %bb.b
    i32 9, label %.preheader
  ]

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 544 ; 6 uses
  %i.l = load float, ptr %i.k, align 8, !tbaa !286
  %i.m = fcmp une float %i.l, 0.000000e+00
  %i.n = icmp sgt i32 %i.h, 0                     ; 2 uses
  br i1 %i.m, label %.preheader29, label %.preheader31

.preheader31:                                     ; preds = %bb.b
  br i1 %i.n, label %.lr.ph, label %.loopexit30

.lr.ph:                                           ; preds = %.preheader31
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !15   ; 5 uses
  %wide.trip.count44 = and i64 %i.g, 2147483647
  %i.q = add nsw i64 %wide.trip.count44, -1
  %xtraiter59 = and i64 %i.g, 3                   ; 3 uses
  %i.r = icmp ult i64 %i.q, 3
  br i1 %i.r, label %.epil.preheader58, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter62 = and i64 %i.g, 2147483644
  br label %bb.d

.preheader29:                                     ; preds = %bb.b
  br i1 %i.n, label %.lr.ph35, label %.loopexit30

.lr.ph35:                                         ; preds = %.preheader29
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.t = load double, ptr %i.s, align 8, !tbaa !176 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !15   ; 5 uses
  %wide.trip.count49 = and i64 %i.g, 2147483647
  %i.w = add nsw i64 %wide.trip.count49, -1
  %xtraiter65 = and i64 %i.g, 3                   ; 3 uses
  %i.x = icmp ult i64 %i.w, 3
  br i1 %i.x, label %.epil.preheader64, label %.lr.ph35.new

.lr.ph35.new:                                     ; preds = %.lr.ph35
  %unroll_iter69 = and i64 %i.g, 2147483644
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph35.new
  %indvars.iv46 = phi i64 [ 0, %.lr.ph35.new ], [ %indvars.iv.next47.3, %bb.c ] ; 6 uses
  %niter70 = phi i64 [ 0, %.lr.ph35.new ], [ %niter70.next.3, %bb.c ]
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv46
  %i.z = load float, ptr %i.y, align 4, !tbaa !177
  %i.aa = fpext float %i.z to double
  %i.ab = fmul double %i.aa, f0x3F91072C483AF26D
  %i.ac = load float, ptr %i.k, align 8, !tbaa !286
  %i.ad = fpext float %i.ac to double
  %i.ae = fmul double %i.t, %i.ad
  %i.af = fdiv double %i.ab, %i.ae
  %i.ag = tail call double @sqrt(double noundef %i.af) #20
  %i.ah = fptrunc double %i.ag to float
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv46
  store float %i.ah, ptr %i.ai, align 4, !tbaa !177
  %indvars.iv.next47 = or disjoint i64 %indvars.iv46, 1 ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next47
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !177
  %i.al = fpext float %i.ak to double
  %i.am = fmul double %i.al, f0x3F91072C483AF26D
  %i.an = load float, ptr %i.k, align 8, !tbaa !286
  %i.ao = fpext float %i.an to double
  %i.ap = fmul double %i.t, %i.ao
  %i.aq = fdiv double %i.am, %i.ap
  %i.ar = tail call double @sqrt(double noundef %i.aq) #20
  %i.as = fptrunc double %i.ar to float
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.next47
  store float %i.as, ptr %i.at, align 4, !tbaa !177
  %indvars.iv.next47.1 = or disjoint i64 %indvars.iv46, 2 ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next47.1
  %i.av = load float, ptr %i.au, align 4, !tbaa !177
  %i.aw = fpext float %i.av to double
  %i.ax = fmul double %i.aw, f0x3F91072C483AF26D
  %i.ay = load float, ptr %i.k, align 8, !tbaa !286
  %i.az = fpext float %i.ay to double
  %i.ba = fmul double %i.t, %i.az
  %i.bb = fdiv double %i.ax, %i.ba
  %i.bc = tail call double @sqrt(double noundef %i.bb) #20
  %i.bd = fptrunc double %i.bc to float
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.next47.1
  store float %i.bd, ptr %i.be, align 4, !tbaa !177
  %indvars.iv.next47.2 = or disjoint i64 %indvars.iv46, 3 ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next47.2
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !177
  %i.bh = fpext float %i.bg to double
  %i.bi = fmul double %i.bh, f0x3F91072C483AF26D
  %i.bj = load float, ptr %i.k, align 8, !tbaa !286
  %i.bk = fpext float %i.bj to double
  %i.bl = fmul double %i.t, %i.bk
  %i.bm = fdiv double %i.bi, %i.bl
  %i.bn = tail call double @sqrt(double noundef %i.bm) #20
  %i.bo = fptrunc double %i.bn to float
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.next47.2
  store float %i.bo, ptr %i.bp, align 4, !tbaa !177
  %indvars.iv.next47.3 = add nuw nsw i64 %indvars.iv46, 4 ; 2 uses
  %niter70.next.3 = add nuw i64 %niter70, 4       ; 2 uses
  %niter70.ncmp.3 = icmp eq i64 %niter70.next.3, %unroll_iter69
  br i1 %niter70.ncmp.3, label %.loopexit30.loopexit.unr-lcssa, label %bb.c, !llvm.loop !287

bb.d:                                             ; preds = %bb.d, %.lr.ph.new
  %indvars.iv41 = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next42.3, %bb.d ] ; 6 uses
  %niter63 = phi i64 [ 0, %.lr.ph.new ], [ %niter63.next.3, %bb.d ]
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv41
  %i.br = load float, ptr %i.bq, align 4, !tbaa !177
  %i.bs = fpext float %i.br to double
  %i.bt = fmul double %i.bs, f0x3F91072C483AF26D
  %i.bu = tail call double @sqrt(double noundef %i.bt) #20
  %i.bv = fptrunc double %i.bu to float
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv41
  store float %i.bv, ptr %i.bw, align 4, !tbaa !177
  %indvars.iv.next42 = or disjoint i64 %indvars.iv41, 1 ; 2 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next42
  %i.by = load float, ptr %i.bx, align 4, !tbaa !177
  %i.bz = fpext float %i.by to double
  %i.ca = fmul double %i.bz, f0x3F91072C483AF26D
  %i.cb = tail call double @sqrt(double noundef %i.ca) #20
  %i.cc = fptrunc double %i.cb to float
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.next42
  store float %i.cc, ptr %i.cd, align 4, !tbaa !177
  %indvars.iv.next42.1 = or disjoint i64 %indvars.iv41, 2 ; 2 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next42.1
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !177
  %i.cg = fpext float %i.cf to double
  %i.ch = fmul double %i.cg, f0x3F91072C483AF26D
  %i.ci = tail call double @sqrt(double noundef %i.ch) #20
  %i.cj = fptrunc double %i.ci to float
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.next42.1
  store float %i.cj, ptr %i.ck, align 4, !tbaa !177
  %indvars.iv.next42.2 = or disjoint i64 %indvars.iv41, 3 ; 2 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next42.2
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !177
  %i.cn = fpext float %i.cm to double
  %i.co = fmul double %i.cn, f0x3F91072C483AF26D
  %i.cp = tail call double @sqrt(double noundef %i.co) #20
  %i.cq = fptrunc double %i.cp to float
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.next42.2
  store float %i.cq, ptr %i.cr, align 4, !tbaa !177
  %indvars.iv.next42.3 = add nuw nsw i64 %indvars.iv41, 4 ; 2 uses
  %niter63.next.3 = add i64 %niter63, 4           ; 2 uses
  %niter63.ncmp.3 = icmp eq i64 %niter63.next.3, %unroll_iter62
  br i1 %niter63.ncmp.3, label %.loopexit30.loopexit55.unr-lcssa, label %bb.d, !llvm.loop !288

.preheader:                                       ; preds = %bb.a
  %i.cs = icmp sgt i32 %i.h, 0
  br i1 %i.cs, label %.lr.ph37, label %.loopexit30

.lr.ph37:                                         ; preds = %.preheader
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !29 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !25 ; 3 uses
  %i.cx = and i64 %i.f, 8589934588
  %i.cy = icmp eq i64 %i.cx, 4
  br i1 %i.cy, label %.epil.preheader, label %.lr.ph37.new

.lr.ph37.new:                                     ; preds = %.lr.ph37
  %unroll_iter = and i64 %i.g, 2147483646
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph37.new
  %indvars.iv = phi i64 [ 0, %.lr.ph37.new ], [ %indvars.iv.next.1, %bb.e ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph37.new ], [ %niter.next.1, %bb.e ]
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.da = load float, ptr %i.cz, align 4, !tbaa !177
  %i.db = fpext float %i.da to double
  %i.dc = fmul double %i.db, f0x3F81072C483AF26D
  %i.dd = fptrunc double %i.dc to float
  %i.de = fpext float %i.dd to double
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv
  %i.dg = load double, ptr %i.df, align 8, !tbaa !289 ; 2 uses
  %i.dh = fneg double %i.dg
  %i.di = tail call double @llvm.fmuladd.f64(double %i.dh, double %i.dg, double 1.000000e+00)
  %i.dj = fmul double %i.di, %i.de
  %i.dk = tail call double @sqrt(double noundef %i.dj) #20
  %i.dl = fptrunc double %i.dk to float
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv
  store float %i.dl, ptr %i.dm, align 4, !tbaa !291
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next
  %i.do = load float, ptr %i.dn, align 4, !tbaa !177
  %i.dp = fpext float %i.do to double
  %i.dq = fmul double %i.dp, f0x3F81072C483AF26D
  %i.dr = fptrunc double %i.dq to float
  %i.ds = fpext float %i.dr to double
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv.next
  %i.du = load double, ptr %i.dt, align 8, !tbaa !289 ; 2 uses
  %i.dv = fneg double %i.du
  %i.dw = tail call double @llvm.fmuladd.f64(double %i.dv, double %i.du, double 1.000000e+00)
  %i.dx = fmul double %i.dw, %i.ds
  %i.dy = tail call double @sqrt(double noundef %i.dx) #20
  %i.dz = fptrunc double %i.dy to float
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv.next
  store float %i.dz, ptr %i.ea, align 4, !tbaa !291
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit30.loopexit56.unr-lcssa, label %bb.e, !llvm.loop !293

.loopexit30.loopexit.unr-lcssa:                   ; preds = %bb.c
  %lcmp.mod67.not = icmp eq i64 %xtraiter65, 0
  br i1 %lcmp.mod67.not, label %.loopexit30, label %.epil.preheader64

.epil.preheader64:                                ; preds = %.loopexit30.loopexit.unr-lcssa, %.lr.ph35
  %indvars.iv46.epil.init = phi i64 [ 0, %.lr.ph35 ], [ %indvars.iv.next47.3, %.loopexit30.loopexit.unr-lcssa ]
  %lcmp.mod68 = icmp ne i64 %xtraiter65, 0
  tail call void @llvm.assume(i1 %lcmp.mod68)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader64
  %indvars.iv46.epil = phi i64 [ %indvars.iv46.epil.init, %.epil.preheader64 ], [ %indvars.iv.next47.epil, %bb.f ] ; 3 uses
  %epil.iter66 = phi i64 [ 0, %.epil.preheader64 ], [ %epil.iter66.next, %bb.f ]
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv46.epil
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !177
  %i.ed = fpext float %i.ec to double
  %i.ee = fmul double %i.ed, f0x3F91072C483AF26D
  %i.ef = load float, ptr %i.k, align 8, !tbaa !286
  %i.eg = fpext float %i.ef to double
  %i.eh = fmul double %i.t, %i.eg
  %i.ei = fdiv double %i.ee, %i.eh
  %i.ej = tail call double @sqrt(double noundef %i.ei) #20
  %i.ek = fptrunc double %i.ej to float
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv46.epil
  store float %i.ek, ptr %i.el, align 4, !tbaa !177
  %indvars.iv.next47.epil = add nuw nsw i64 %indvars.iv46.epil, 1
  %epil.iter66.next = add i64 %epil.iter66, 1     ; 2 uses
  %epil.iter66.cmp.not = icmp eq i64 %epil.iter66.next, %xtraiter65
  br i1 %epil.iter66.cmp.not, label %.loopexit30, label %bb.f, !llvm.loop !294

.loopexit30.loopexit55.unr-lcssa:                 ; preds = %bb.d
  %lcmp.mod60.not = icmp eq i64 %xtraiter59, 0
  br i1 %lcmp.mod60.not, label %.loopexit30, label %.epil.preheader58

.epil.preheader58:                                ; preds = %.loopexit30.loopexit55.unr-lcssa, %.lr.ph
  %indvars.iv41.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next42.3, %.loopexit30.loopexit55.unr-lcssa ]
  %lcmp.mod61 = icmp ne i64 %xtraiter59, 0
  tail call void @llvm.assume(i1 %lcmp.mod61)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader58
  %indvars.iv41.epil = phi i64 [ %indvars.iv41.epil.init, %.epil.preheader58 ], [ %indvars.iv.next42.epil, %bb.g ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader58 ], [ %epil.iter.next, %bb.g ]
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv41.epil
  %i.en = load float, ptr %i.em, align 4, !tbaa !177
  %i.eo = fpext float %i.en to double
  %i.ep = fmul double %i.eo, f0x3F91072C483AF26D
  %i.eq = tail call double @sqrt(double noundef %i.ep) #20
  %i.er = fptrunc double %i.eq to float
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv41.epil
  store float %i.er, ptr %i.es, align 4, !tbaa !177
  %indvars.iv.next42.epil = add nuw nsw i64 %indvars.iv41.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter59
  br i1 %epil.iter.cmp.not, label %.loopexit30, label %bb.g, !llvm.loop !296

.loopexit30.loopexit56.unr-lcssa:                 ; preds = %bb.e
  %i.et = and i64 %i.f, 4
  %lcmp.mod.not = icmp eq i64 %i.et, 0
  br i1 %lcmp.mod.not, label %.loopexit30, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit30.loopexit56.unr-lcssa, %.lr.ph37
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph37 ], [ %indvars.iv.next.1, %.loopexit30.loopexit56.unr-lcssa ] ; 3 uses
  %lcmp.mod57 = trunc i64 %i.g to i1
  tail call void @llvm.assume(i1 %lcmp.mod57)
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.epil.init
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !177
  %i.ew = fpext float %i.ev to double
  %i.ex = fmul double %i.ew, f0x3F81072C483AF26D
  %i.ey = fptrunc double %i.ex to float
  %i.ez = fpext float %i.ey to double
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv.epil.init
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !289 ; 2 uses
  %i.fc = fneg double %i.fb
  %i.fd = tail call double @llvm.fmuladd.f64(double %i.fc, double %i.fb, double 1.000000e+00)
  %i.fe = fmul double %i.fd, %i.ez
  %i.ff = tail call double @sqrt(double noundef %i.fe) #20
  %i.fg = fptrunc double %i.ff to float
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv.epil.init
  store float %i.fg, ptr %i.fh, align 4, !tbaa !291
  br label %.loopexit30

.loopexit30:                                      ; preds = %.epil.preheader, %.loopexit30.loopexit56.unr-lcssa, %.loopexit30.loopexit55.unr-lcssa, %bb.g, %.loopexit30.loopexit.unr-lcssa, %bb.f, %.preheader, %.preheader29, %.preheader31, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN12gmx_stochd_tC2ERK10t_inputrec(ptr noundef nonnull align 8 dereferenceable(136) initializes((0, 84), (88, 100), (104, 136)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(888) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr null, ptr %i.d, align 8, !tbaa !19
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 0, ptr %i.e, align 8, !tbaa !297
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 744
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(84) %0, i8 0, i64 84, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i8 0, i64 32, i1 false)
  %i.i = load i32, ptr %i.h, align 8, !tbaa !298  ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !75
  switch i32 %i.k, label %bb.j [
    i32 3, label %bb.b
    i32 9, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = sext i32 %i.i to i64
  invoke void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.l)
          to label %_ZNSt6vectorIfSaIfEE6resizeEm.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.l, %bb.k, %bb.c, %bb.f, %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !15   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.s

bb.e:                                             ; preds = %bb.a
  %i.o = sext i32 %i.i to i64                     ; 2 uses
  invoke void @_ZNSt6vectorI14gmx_sd_const_tSaIS0_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.o)
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  invoke void @_ZNSt6vectorI14gmx_sd_sigma_tSaIS0_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.o)
          to label %.preheader unwind label %bb.d

.preheader:                                       ; preds = %bb.f
  %i.p = icmp sgt i32 %i.i, 0
  br i1 %i.p, label %.lr.ph, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

.lr.ph:                                           ; preds = %.preheader
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 808
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !299
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 88
  %wide.trip.count = zext nneg i32 %i.i to i64
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !29
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 3 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv
  %i.v = load float, ptr %i.u, align 4, !tbaa !177 ; 2 uses
  %i.w = fcmp ogt float %i.v, 0.000000e+00
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = load double, ptr %i.s, align 8, !tbaa !176
  %i.y = fneg double %i.x
  %i.z = fpext float %i.v to double
  %i.aa = fdiv double %i.y, %i.z
  %i.ab = tail call double @exp(double noundef %i.aa) #20
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.sink = phi double [ %i.ab, %bb.h ], [ 1.000000e+00, %bb.g ]
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv
  store double %.sink, ptr %i.ac, align 8, !tbaa !289
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit, label %bb.g, !llvm.loop !300

bb.j:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !301
  %i.af = and i32 %i.ae, -2
  %switch = icmp eq i32 %i.af, 4
  br i1 %switch, label %bb.k, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

bb.k:                                             ; preds = %bb.j
  %i.ag = sext i32 %i.i to i64                    ; 5 uses
  invoke void @_ZNSt6vectorIbSaIbEE14_M_fill_insertESt13_Bit_iteratormb(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr null, i32 0, i64 noundef %i.ag, i1 noundef zeroext false)
          to label %_ZNSt6vectorIbSaIbEE6resizeEmb.exit unwind label %bb.d

_ZNSt6vectorIbSaIbEE6resizeEmb.exit:              ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !285 ; 2 uses
  %i.aj = load ptr, ptr %i.g, align 8, !tbaa !15  ; 2 uses
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = ashr exact i64 %i.am, 2                 ; 3 uses
  %i.ao = icmp ult i64 %i.an, %i.ag
  br i1 %i.ao, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNSt6vectorIbSaIbEE6resizeEmb.exit
  %i.ap = sub nuw nsw i64 %i.ag, %i.an
  invoke void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.ap)
          to label %_ZNSt6vectorIfSaIfEE6resizeEm.exit51 unwind label %bb.d

end_hunk_0
begin_hunk_1_@_ZNSt6vectorIbSaIbEE14_M_fill_insertESt13_Bit_iteratormb:bb.a

bb.n:                                             ; preds = %_ZSt14__fill_bvectorPmjjb.exit.i.i.i, %bb.j
  %.pre-phi = phi i64 [ %.pre, %_ZSt14__fill_bvectorPmjjb.exit.i.i.i ], [ %i.s, %bb.j ]
  %.0.i.i.i = phi ptr [ %i.cp, %_ZSt14__fill_bvectorPmjjb.exit.i.i.i ], [ %1, %bb.j ]
  %i.cw = ptrtoint ptr %storemerge.i.i.i76 to i64
  %i.cx = sub i64 %i.cw, %.pre-phi
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %.0.i.i.i, i8 %.neg, i64 %i.cx, i1 false)
  %.not27.i.i.i = icmp eq i32 %i.co, 0
  br i1 %.not27.i.i.i, label %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cy = sub nuw nsw i32 64, %i.co
  %i.cz = zext nneg i32 %i.cy to i64
  %i.da = lshr i64 -1, %i.cz                      ; 2 uses
  br i1 %4, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.db = load i64, ptr %storemerge.i.i.i76, align 8, !tbaa !64
  %i.dc = or i64 %i.db, %i.da
  br label %_ZSt14__fill_bvectorPmjjb.exit29.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.dd = xor i64 %i.da, -1
  %i.de = load i64, ptr %storemerge.i.i.i76, align 8, !tbaa !64
  %i.df = and i64 %i.de, %i.dd
  br label %_ZSt14__fill_bvectorPmjjb.exit29.i.i.i

_ZSt14__fill_bvectorPmjjb.exit29.i.i.i:           ; preds = %bb.q, %bb.p
  %storemerge.i28.i.i.i = phi i64 [ %i.df, %bb.q ], [ %i.dc, %bb.p ]
  store i64 %storemerge.i28.i.i.i, ptr %storemerge.i.i.i76, align 8, !tbaa !64
  br label %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit

bb.r:                                             ; preds = %_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit
  %.not25.i.i.i = icmp eq i32 %2, %i.co
  br i1 %.not25.i.i.i, label %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dg = shl nsw i64 -1, %i.v
  %i.dh = sub nuw nsw i32 64, %i.co
  %i.di = zext nneg i32 %i.dh to i64
  %i.dj = lshr i64 -1, %i.di
  %i.dk = and i64 %i.dj, %i.dg                    ; 2 uses
  br i1 %4, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dl = load i64, ptr %1, align 8, !tbaa !64
  %i.dm = or i64 %i.dl, %i.dk
  br label %_ZSt14__fill_bvectorPmjjb.exit31.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.dn = xor i64 %i.dk, -1
  %i.do = load i64, ptr %1, align 8, !tbaa !64
  %i.dp = and i64 %i.do, %i.dn
  br label %_ZSt14__fill_bvectorPmjjb.exit31.i.i.i

_ZSt14__fill_bvectorPmjjb.exit31.i.i.i:           ; preds = %bb.u, %bb.t
  %storemerge.i30.i.i.i = phi i64 [ %i.dp, %bb.u ], [ %i.dm, %bb.t ]
  store i64 %storemerge.i30.i.i.i, ptr %1, align 8, !tbaa !64
  br label %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit

_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit:    ; preds = %bb.n, %_ZSt14__fill_bvectorPmjjb.exit29.i.i.i, %bb.r, %_ZSt14__fill_bvectorPmjjb.exit31.i.i.i
  %i.dq = load i32, ptr %i.k, align 8, !tbaa !297
  %i.dr = zext i32 %i.dq to i64
  %i.ds = add nsw i64 %3, %i.dr                   ; 3 uses
  %i.dt = sdiv i64 %i.ds, 64
  %i.du = load ptr, ptr %i.i, align 8, !tbaa !19
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.du, i64 %i.dt
  %i.dw = and i64 %i.ds, -9223372036854775745
  %i.dx = icmp ugt i64 %i.dw, -9223372036854775808
  %storemerge.idx.i.i = select i1 %i.dx, i64 -8, i64 0
  %storemerge.i.i = getelementptr inbounds i8, ptr %i.dv, i64 %storemerge.idx.i.i
  store ptr %storemerge.i.i, ptr %i.i, align 8, !tbaa !19
  %i.dy = trunc i64 %i.ds to i32
  %i.dz = and i32 %i.dy, 63
  br label %.sink.split

bb.v:                                             ; preds = %bb.b
  %i.ea = sub i64 9223372036854775744, %i.q
  %i.eb = icmp ult i64 %i.ea, %3
  br i1 %i.eb, label %bb.w, label %_ZNKSt6vectorIbSaIbEE12_M_check_lenEmPKc.exit

bb.w:                                             ; preds = %bb.v
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #33
  unreachable

_ZNKSt6vectorIbSaIbEE12_M_check_lenEmPKc.exit:    ; preds = %bb.v
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.q, i64 %3)
  %i.ec = add i64 %.sroa.speculated.i, %i.q       ; 2 uses
  %i.ed = icmp ult i64 %i.ec, %i.q
  %i.ee = tail call i64 @llvm.umin.i64(i64 %i.ec, i64 9223372036854775744)
  %i.ef = add nuw nsw i64 %i.ee, 63
  %i.eg = select i1 %i.ed, i64 9223372036854775807, i64 %i.ef ; 2 uses
  %i.eh = lshr i64 %i.eg, 3
  %i.ei = and i64 %i.eh, 1152921504606846968
  %i.ej = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ei) #30 ; 5 uses
  %i.ek = ptrtoint ptr %1 to i64                  ; 3 uses
  %i.el = sub i64 %i.ek, %i.f                     ; 4 uses
  %i.em = icmp sgt i64 %i.el, 8
  br i1 %i.em, label %bb.x, label %bb.y, !prof !327

bb.x:                                             ; preds = %_ZNKSt6vectorIbSaIbEE12_M_check_lenEmPKc.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ej, ptr align 8 %i.d, i64 %i.el, i1 false)
  br label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i

bb.y:                                             ; preds = %_ZNKSt6vectorIbSaIbEE12_M_check_lenEmPKc.exit
  %i.en = icmp eq i64 %i.el, 8
  br i1 %i.en, label %bb.z, label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i

bb.z:                                             ; preds = %bb.y
  %i.eo = load i64, ptr %i.d, align 8, !tbaa !64
  store i64 %i.eo, ptr %i.ej, align 8, !tbaa !64
  br label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i

_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i:               ; preds = %bb.z, %bb.y, %bb.x
  %i.ep = getelementptr inbounds i8, ptr %i.ej, i64 %i.el ; 3 uses
  %.not.i = icmp eq i32 %2, 0
  br i1 %.not.i, label %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit, label %.lr.ph.i.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.i.preheader.i:                     ; preds = %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i
  %i.eq = zext i32 %2 to i64                      ; 2 uses
  %xtraiter168 = and i64 %i.eq, 1
  %i.er = icmp eq i32 %2, 1
  br i1 %i.er, label %.lr.ph.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.preheader.i.new

.lr.ph.i.i.i.i.i.preheader.i.new:                 ; preds = %.lr.ph.i.i.i.i.i.preheader.i
  %unroll_iter = and i64 %i.eq, 4294967294
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.preheader.i.new
  %.sroa.03.019.i.i.i.i.i.i = phi ptr [ %i.ep, %.lr.ph.i.i.i.i.i.preheader.i.new ], [ %.sroa.03.1.i.i.i.i.i.i.1, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.1 ] ; 4 uses
  %.sroa.55.018.i.i.i.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i.i.i.preheader.i.new ], [ %.sroa.55.1.i.i.i.i.i.i.1, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.1 ] ; 3 uses
  %.sroa.512.017.i.i.i.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i.i.i.preheader.i.new ], [ %spec.select15.i.i.i.i.i.i.1, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.1 ] ; 3 uses
  %.sroa.09.016.i.i.i.i.i.i = phi ptr [ %1, %.lr.ph.i.i.i.i.i.preheader.i.new ], [ %spec.select.i.i.i.i.i.i.1, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.1 ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.preheader.i.new ], [ %niter.next.1, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.1 ]
  %i.es = zext nneg i32 %.sroa.512.017.i.i.i.i.i.i to i64
  %i.et = shl nuw i64 1, %i.es
  %i.eu = load i64, ptr %.sroa.09.016.i.i.i.i.i.i, align 8, !tbaa !64
  %i.ev = and i64 %i.eu, %i.et
  %.not.i.i.i.i.i.i81 = icmp eq i64 %i.ev, 0
  %i.ew = zext nneg i32 %.sroa.55.018.i.i.i.i.i.i to i64
  %i.ex = shl nuw i64 1, %i.ew                    ; 2 uses
  br i1 %.not.i.i.i.i.i.i81, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ey = load i64, ptr %.sroa.03.019.i.i.i.i.i.i, align 8, !tbaa !64
  %i.ez = or i64 %i.ey, %i.ex
  br label %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i

bb.ab:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.fa = xor i64 %i.ex, -1
  %i.fb = load i64, ptr %.sroa.03.019.i.i.i.i.i.i, align 8, !tbaa !64
  %i.fc = and i64 %i.fb, %i.fa
  br label %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i

_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i:       ; preds = %bb.ab, %bb.aa
  %storemerge.i.i.i.i.i.i = phi i64 [ %i.fc, %bb.ab ], [ %i.ez, %bb.aa ]
  store i64 %storemerge.i.i.i.i.i.i, ptr %.sroa.03.019.i.i.i.i.i.i, align 8, !tbaa !64
  %i.fd = add i32 %.sroa.512.017.i.i.i.i.i.i, 1
  %i.fe = icmp eq i32 %.sroa.512.017.i.i.i.i.i.i, 63 ; 2 uses
  %spec.select.idx.i.i.i.i.i.i = select i1 %i.fe, i64 8, i64 0
  %spec.select.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.016.i.i.i.i.i.i, i64 %spec.select.idx.i.i.i.i.i.i ; 2 uses
  %spec.select15.i.i.i.i.i.i = select i1 %i.fe, i32 0, i32 %i.fd ; 3 uses
  %i.ff = add i32 %.sroa.55.018.i.i.i.i.i.i, 1
  %i.fg = icmp eq i32 %.sroa.55.018.i.i.i.i.i.i, 63 ; 2 uses
  %.sroa.55.1.i.i.i.i.i.i = select i1 %i.fg, i32 0, i32 %i.ff ; 3 uses
  %.sroa.03.1.idx.i.i.i.i.i.i = select i1 %i.fg, i64 8, i64 0
  %.sroa.03.1.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.03.019.i.i.i.i.i.i, i64 %.sroa.03.1.idx.i.i.i.i.i.i ; 4 uses
  %i.fh = zext nneg i32 %spec.select15.i.i.i.i.i.i to i64
  %i.fi = shl nuw i64 1, %i.fh
  %i.fj = load i64, ptr %spec.select.i.i.i.i.i.i, align 8, !tbaa !64
  %i.fk = and i64 %i.fj, %i.fi
  %.not.i.i.i.i.i.i81.1 = icmp eq i64 %i.fk, 0
  %i.fl = zext nneg i32 %.sroa.55.1.i.i.i.i.i.i to i64
  %i.fm = shl nuw i64 1, %i.fl                    ; 2 uses
  br i1 %.not.i.i.i.i.i.i81.1, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i
  %i.fn = load i64, ptr %.sroa.03.1.i.i.i.i.i.i, align 8, !tbaa !64
  %i.fo = or i64 %i.fn, %i.fm
  br label %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.1

bb.ad:                                            ; preds = %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i
  %i.fp = xor i64 %i.fm, -1
  %i.fq = load i64, ptr %.sroa.03.1.i.i.i.i.i.i, align 8, !tbaa !64
  %i.fr = and i64 %i.fq, %i.fp
  br label %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.1

_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.1:     ; preds = %bb.ad, %bb.ac
  %storemerge.i.i.i.i.i.i.1 = phi i64 [ %i.fr, %bb.ad ], [ %i.fo, %bb.ac ]
  store i64 %storemerge.i.i.i.i.i.i.1, ptr %.sroa.03.1.i.i.i.i.i.i, align 8, !tbaa !64
  %i.fs = add i32 %spec.select15.i.i.i.i.i.i, 1
  %i.ft = icmp eq i32 %spec.select15.i.i.i.i.i.i, 63 ; 2 uses
  %spec.select.idx.i.i.i.i.i.i.1 = select i1 %i.ft, i64 8, i64 0
  %spec.select.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i.i, i64 %spec.select.idx.i.i.i.i.i.i.1 ; 2 uses
  %spec.select15.i.i.i.i.i.i.1 = select i1 %i.ft, i32 0, i32 %i.fs ; 2 uses
  %i.fu = add i32 %.sroa.55.1.i.i.i.i.i.i, 1
  %i.fv = icmp eq i32 %.sroa.55.1.i.i.i.i.i.i, 63 ; 2 uses
  %.sroa.55.1.i.i.i.i.i.i.1 = select i1 %i.fv, i32 0, i32 %i.fu ; 3 uses
  %.sroa.03.1.idx.i.i.i.i.i.i.1 = select i1 %i.fv, i64 8, i64 0
  %.sroa.03.1.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.03.1.i.i.i.i.i.i, i64 %.sroa.03.1.idx.i.i.i.i.i.i.1 ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !328

_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit.loopexit.unr-lcssa: ; preds = %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.1
  %lcmp.mod169.not = icmp eq i64 %xtraiter168, 0
  br i1 %lcmp.mod169.not, label %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit, label %.lr.ph.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.epil.preheader:                ; preds = %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.preheader.i
  %.sroa.03.019.i.i.i.i.i.i.epil.init = phi ptr [ %i.ep, %.lr.ph.i.i.i.i.i.preheader.i ], [ %.sroa.03.1.i.i.i.i.i.i.1, %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit.loopexit.unr-lcssa ] ; 4 uses
  %.sroa.55.018.i.i.i.i.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i.i.i.i.preheader.i ], [ %.sroa.55.1.i.i.i.i.i.i.1, %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit.loopexit.unr-lcssa ] ; 3 uses
  %.sroa.512.017.i.i.i.i.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i.i.i.i.preheader.i ], [ %spec.select15.i.i.i.i.i.i.1, %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit.loopexit.unr-lcssa ]
  %.sroa.09.016.i.i.i.i.i.i.epil.init = phi ptr [ %1, %.lr.ph.i.i.i.i.i.preheader.i ], [ %spec.select.i.i.i.i.i.i.1, %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit.loopexit.unr-lcssa ]
  %lcmp.mod172 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod172)
  %i.fw = zext nneg i32 %.sroa.512.017.i.i.i.i.i.i.epil.init to i64
  %i.fx = shl nuw i64 1, %i.fw
  %i.fy = load i64, ptr %.sroa.09.016.i.i.i.i.i.i.epil.init, align 8, !tbaa !64
  %i.fz = and i64 %i.fy, %i.fx
  %.not.i.i.i.i.i.i81.epil = icmp eq i64 %i.fz, 0
  %i.ga = zext nneg i32 %.sroa.55.018.i.i.i.i.i.i.epil.init to i64
  %i.gb = shl nuw i64 1, %i.ga                    ; 2 uses
  br i1 %.not.i.i.i.i.i.i81.epil, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph.i.i.i.i.i.i.epil.preheader
  %i.gc = load i64, ptr %.sroa.03.019.i.i.i.i.i.i.epil.init, align 8, !tbaa !64
  %i.gd = or i64 %i.gc, %i.gb
  br label %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.epil

bb.af:                                            ; preds = %.lr.ph.i.i.i.i.i.i.epil.preheader
  %i.ge = xor i64 %i.gb, -1
  %i.gf = load i64, ptr %.sroa.03.019.i.i.i.i.i.i.epil.init, align 8, !tbaa !64
  %i.gg = and i64 %i.gf, %i.ge
  br label %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.epil

_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.epil:  ; preds = %bb.af, %bb.ae
  %storemerge.i.i.i.i.i.i.epil = phi i64 [ %i.gg, %bb.af ], [ %i.gd, %bb.ae ]
  store i64 %storemerge.i.i.i.i.i.i.epil, ptr %.sroa.03.019.i.i.i.i.i.i.epil.init, align 8, !tbaa !64
  %i.gh = add i32 %.sroa.55.018.i.i.i.i.i.i.epil.init, 1
  %i.gi = icmp eq i32 %.sroa.55.018.i.i.i.i.i.i.epil.init, 63 ; 2 uses
  %.sroa.55.1.i.i.i.i.i.i.epil = select i1 %i.gi, i32 0, i32 %i.gh
  %.sroa.03.1.idx.i.i.i.i.i.i.epil = select i1 %i.gi, i64 8, i64 0
  %.sroa.03.1.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %.sroa.03.019.i.i.i.i.i.i.epil.init, i64 %.sroa.03.1.idx.i.i.i.i.i.i.epil
  br label %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit

_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit: ; preds = %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.epil, %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit.loopexit.unr-lcssa, %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i
  %.sroa.55.0.lcssa.i.i.i.i.i.i = phi i32 [ 0, %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i ], [ %.sroa.55.1.i.i.i.i.i.i.1, %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit.loopexit.unr-lcssa ], [ %.sroa.55.1.i.i.i.i.i.i.epil, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.epil ] ; 3 uses
  %.sroa.03.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ep, %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i ], [ %.sroa.03.1.i.i.i.i.i.i.1, %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit.loopexit.unr-lcssa ], [ %.sroa.03.1.i.i.i.i.i.i.epil, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.epil ] ; 9 uses
  %i.gj = zext i32 %.sroa.55.0.lcssa.i.i.i.i.i.i to i64 ; 3 uses
  %i.gk = add nsw i64 %3, %i.gj                   ; 4 uses
  %i.gl = sdiv i64 %i.gk, 64
  %.idx157 = shl nsw i64 %i.gl, 3
  %i.gm = and i64 %i.gk, -9223372036854775745
  %i.gn = icmp ugt i64 %i.gm, -9223372036854775808
  %storemerge.idx.i.i.i85 = select i1 %i.gn, i64 -8, i64 0
  %i.go = add nsw i64 %storemerge.idx.i.i.i85, %.idx157 ; 2 uses
  %storemerge.i.i.i86 = getelementptr inbounds i8, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i, i64 %i.go ; 10 uses
  %i.gp = trunc i64 %i.gk to i32
  %i.gq = and i32 %i.gp, 63                       ; 8 uses
  %.not.i.i.i89 = icmp eq i64 %i.go, 0
  br i1 %.not.i.i.i89, label %bb.ao, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit
  %.not26.i.i.i90 = icmp eq i32 %.sroa.55.0.lcssa.i.i.i.i.i.i, 0
  br i1 %.not26.i.i.i90, label %bb.ak, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i, i64 8
  %i.gs = shl nsw i64 -1, %i.gj                   ; 2 uses
  br i1 %4, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.gt = load i64, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i, align 8, !tbaa !64
  %i.gu = or i64 %i.gt, %i.gs
  br label %_ZSt14__fill_bvectorPmjjb.exit.i.i.i92

bb.aj:                                            ; preds = %bb.ah
  %i.gv = xor i64 %i.gs, -1
  %i.gw = load i64, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i, align 8, !tbaa !64
  %i.gx = and i64 %i.gw, %i.gv
  br label %_ZSt14__fill_bvectorPmjjb.exit.i.i.i92

_ZSt14__fill_bvectorPmjjb.exit.i.i.i92:           ; preds = %bb.aj, %bb.ai
  %storemerge.i.i.i.i93 = phi i64 [ %i.gx, %bb.aj ], [ %i.gu, %bb.ai ]
  store i64 %storemerge.i.i.i.i93, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i, align 8, !tbaa !64
  br label %bb.ak

bb.ak:                                            ; preds = %_ZSt14__fill_bvectorPmjjb.exit.i.i.i92, %bb.ag
  %.0.i.i.i94 = phi ptr [ %i.gr, %_ZSt14__fill_bvectorPmjjb.exit.i.i.i92 ], [ %.sroa.03.0.lcssa.i.i.i.i.i.i, %bb.ag ] ; 2 uses
  %i.gy = ptrtoint ptr %storemerge.i.i.i86 to i64
  %i.gz = ptrtoint ptr %.0.i.i.i94 to i64
  %i.ha = sub i64 %i.gy, %i.gz
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %.0.i.i.i94, i8 %.neg, i64 %i.ha, i1 false)
  %.not27.i.i.i95 = icmp eq i32 %i.gq, 0
  br i1 %.not27.i.i.i95, label %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit101, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.hb = sub nuw nsw i32 64, %i.gq
  %i.hc = zext nneg i32 %i.hb to i64
  %i.hd = lshr i64 -1, %i.hc                      ; 2 uses
  br i1 %4, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.he = load i64, ptr %storemerge.i.i.i86, align 8, !tbaa !64
  %i.hf = or i64 %i.he, %i.hd
  br label %_ZSt14__fill_bvectorPmjjb.exit29.i.i.i96

bb.an:                                            ; preds = %bb.al
  %i.hg = xor i64 %i.hd, -1
  %i.hh = load i64, ptr %storemerge.i.i.i86, align 8, !tbaa !64
  %i.hi = and i64 %i.hh, %i.hg
  br label %_ZSt14__fill_bvectorPmjjb.exit29.i.i.i96

_ZSt14__fill_bvectorPmjjb.exit29.i.i.i96:         ; preds = %bb.an, %bb.am
  %storemerge.i28.i.i.i97 = phi i64 [ %i.hi, %bb.an ], [ %i.hf, %bb.am ]
  store i64 %storemerge.i28.i.i.i97, ptr %storemerge.i.i.i86, align 8, !tbaa !64
  br label %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit101

bb.ao:                                            ; preds = %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit
  %.not25.i.i.i98 = icmp eq i32 %.sroa.55.0.lcssa.i.i.i.i.i.i, %i.gq
  br i1 %.not25.i.i.i98, label %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit101, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hj = shl nsw i64 -1, %i.gj
  %i.hk = sub nuw nsw i32 64, %i.gq
  %i.hl = zext nneg i32 %i.hk to i64
  %i.hm = lshr i64 -1, %i.hl
  %i.hn = and i64 %i.hm, %i.hj                    ; 2 uses
  br i1 %4, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.ho = load i64, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i, align 8, !tbaa !64
  %i.hp = or i64 %i.ho, %i.hn
  br label %_ZSt14__fill_bvectorPmjjb.exit31.i.i.i99

bb.ar:                                            ; preds = %bb.ap
  %i.hq = xor i64 %i.hn, -1
  %i.hr = load i64, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i, align 8, !tbaa !64
  %i.hs = and i64 %i.hr, %i.hq
  br label %_ZSt14__fill_bvectorPmjjb.exit31.i.i.i99

_ZSt14__fill_bvectorPmjjb.exit31.i.i.i99:         ; preds = %bb.ar, %bb.aq
  %storemerge.i30.i.i.i100 = phi i64 [ %i.hs, %bb.ar ], [ %i.hp, %bb.aq ]
  store i64 %storemerge.i30.i.i.i100, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i, align 8, !tbaa !64
  br label %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit101

_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit101: ; preds = %bb.ak, %_ZSt14__fill_bvectorPmjjb.exit29.i.i.i96, %bb.ao, %_ZSt14__fill_bvectorPmjjb.exit31.i.i.i99
  %.sroa.0.0.copyload.i102 = load ptr, ptr %i.i, align 8
  %.sroa.2.0.copyload.i104 = load i32, ptr %i.k, align 8
  %i.ht = ptrtoint ptr %.sroa.0.0.copyload.i102 to i64 ; 2 uses
  %i.hu = sub i64 %i.ht, %i.ek
  %i.hv = shl nsw i64 %i.hu, 3
  %i.hw = zext i32 %.sroa.2.0.copyload.i104 to i64 ; 2 uses
  %i.hx = zext i32 %2 to i64                      ; 2 uses
  %i.hy = sub nsw i64 %i.hw, %i.hx                ; 2 uses
  %i.hz = add i64 %i.hy, %i.hv                    ; 3 uses
  %i.ia = icmp sgt i64 %i.hz, 0
  br i1 %i.ia, label %.lr.ph.i.i.i.i.i.preheader, label %_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit101
  %i.ib = shl i64 %i.ht, 3
  %i.ic = add i64 %i.ib, %i.hw
  %i.id = xor i64 %i.hx, -1
  %i.ie = add i64 %i.ic, %i.id
  %i.if = shl i64 %i.ek, 3
  %xtraiter173 = and i64 %i.hy, 1
  %lcmp.mod174.not = icmp eq i64 %xtraiter173, 0
  br i1 %lcmp.mod174.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.ig = zext nneg i32 %2 to i64
  %i.ih = shl nuw i64 1, %i.ig
  %i.ii = and i64 %i.gk, 63
  %i.ij = shl nuw i64 1, %i.ii                    ; 2 uses
  %i.ik = load i64, ptr %1, align 8, !tbaa !64
  %i.il = and i64 %i.ik, %i.ih
  %.not.i.i.i.i.i.i121.prol = icmp eq i64 %i.il, 0
  br i1 %.not.i.i.i.i.i.i121.prol, label %bb.at, label %bb.as

bb.as:                                            ; preds = %.lr.ph.i.i.i.i.i.prol
  %i.im = load i64, ptr %storemerge.i.i.i86, align 8, !tbaa !64
  %i.in = or i64 %i.im, %i.ij
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122.prol

bb.at:                                            ; preds = %.lr.ph.i.i.i.i.i.prol
  %i.io = xor i64 %i.ij, -1
  %i.ip = load i64, ptr %storemerge.i.i.i86, align 8, !tbaa !64
  %i.iq = and i64 %i.ip, %i.io
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122.prol

_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122.prol: ; preds = %bb.at, %bb.as
  %storemerge.i.i.i.i.i123.prol = phi i64 [ %i.in, %bb.as ], [ %i.iq, %bb.at ]
  store i64 %storemerge.i.i.i.i.i123.prol, ptr %storemerge.i.i.i86, align 8, !tbaa !64
  %i.ir = add i32 %2, 1
  %i.is = icmp eq i32 %2, 63                      ; 2 uses
  %spec.select.idx.i.i.i.i.i.prol = select i1 %i.is, i64 8, i64 0
  %spec.select.i.i.i.i.i124.prol = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.idx.i.i.i.i.i.prol
  %spec.select19.i.i.i.i.i125.prol = select i1 %i.is, i32 0, i32 %i.ir
  %i.it = add nuw nsw i32 %i.gq, 1
  %i.iu = icmp eq i32 %i.gq, 63                   ; 2 uses
  %.sroa.59.1.i.i.i.i.i126.prol = select i1 %i.iu, i32 0, i32 %i.it ; 2 uses
end_hunk_1
begin_hunk_2_@_ZNSt6vectorIdSaIdEE17_M_default_appendEm:bb.a
  store double 0.000000e+00, ptr %i.b, align 8, !tbaa !268
  %i.p = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 3       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !268
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !359
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #33
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #30 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store double 0.000000e+00, ptr %i.y, align 8, !tbaa !268
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 8
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !268
  br label %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.x, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit
  %i.ad = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ad) #31
  br label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36

_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36: ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !360
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %1
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !359
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.af, ptr %i.h, align 8, !tbaa !361
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z16update_ekinstateP11ekinstate_tPK14gmx_ekindata_tbRKN3gmx7MpiCommEPK12gmx_domdec_t(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i1 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr nofree noundef readonly captures(address_is_null) %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i = icmp ne ptr %4, null
  %or.cond.not = and i1 %2, %.not.i
  br i1 %or.cond.not, label %_ZL25havePPDomainDecompositionPK12gmx_domdec_t.exit, label %_ZL25havePPDomainDecompositionPK12gmx_domdec_t.exit.thread

_ZL25havePPDomainDecompositionPK12gmx_domdec_t.exit: ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !362
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %_ZL25havePPDomainDecompositionPK12gmx_domdec_t.exit.thread

bb.b:                                             ; preds = %_ZL25havePPDomainDecompositionPK12gmx_domdec_t.exit
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !285
  %i.f = load ptr, ptr %1, align 8, !tbaa !15
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 3 uses
  %i.j = lshr exact i64 %i.i, 2                   ; 4 uses
  %i.k = trunc i64 %i.j to i32
  %i.l = mul i64 %i.j, 77309411328                ; 4 uses
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %.noexc, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #33
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.b
  %i.n = lshr exact i64 %i.l, 29
  %i.o = or disjoint i64 %i.n, 8                  ; 3 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #30 ; 34 uses
  store double 0.000000e+00, ptr %i.p, align 8, !tbaa !268
  %i.q = icmp eq i64 %i.l, 0
  br i1 %i.q, label %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  %i.r = getelementptr i8, ptr %i.p, i64 8
  %.idx.i.i.i.i.i.i.i = lshr exact i64 %i.l, 29
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.r, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !268
  br label %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit

_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  %i.s = icmp sgt i32 %i.k, 0
  br i1 %i.s, label %.preheader124.lr.ph, label %._crit_edge

.preheader124.lr.ph:                              ; preds = %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !457  ; 3 uses
  %i.v = and i64 %i.i, 8589934588
  %i.w = icmp eq i64 %i.v, 4
  br i1 %i.w, label %.preheader124.epil.preheader, label %.preheader124.lr.ph.new

.preheader124.lr.ph.new:                          ; preds = %.preheader124.lr.ph
  %unroll_iter = and i64 %i.j, 2147483646
  br label %.preheader124

.preheader124:                                    ; preds = %.preheader124, %.preheader124.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.preheader124.lr.ph.new ], [ %indvars.iv.next.1, %.preheader124 ] ; 3 uses
  %.098133 = phi i64 [ 0, %.preheader124.lr.ph.new ], [ %indvars.iv.next165.2.2.1, %.preheader124 ] ; 7 uses
  %niter = phi i64 [ 0, %.preheader124.lr.ph.new ], [ %niter.next.1, %.preheader124 ]
  %i.x = getelementptr inbounds nuw [144 x i8], ptr %i.u, i64 %indvars.iv ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.098133
  %i.aa = load <4 x float>, ptr %i.y, align 4, !tbaa !177
  %i.ab = fpext <4 x float> %i.aa to <4 x double>
  store <4 x double> %i.ab, ptr %i.z, align 8, !tbaa !268
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.098133
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load <4 x float>, ptr %i.ac, align 4, !tbaa !177
  %i.ag = fpext <4 x float> %i.af to <4 x double>
  store <4 x double> %i.ag, ptr %i.ae, align 8, !tbaa !268
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.098133
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 64
  %i.ak = tail call <13 x float> @llvm.masked.load.v13f32.p0(ptr nonnull align 4 %i.ah, <13 x i1> <i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 true, i1 true, i1 true>, <13 x float> poison), !tbaa !177
  %i.al = shufflevector <13 x float> %i.ak, <13 x float> poison, <4 x i32> <i32 0, i32 10, i32 11, i32 12>
  %i.am = fpext <4 x float> %i.al to <4 x double>
  store <4 x double> %i.am, ptr %i.aj, align 8, !tbaa !268
  %i.an = getelementptr inbounds nuw i8, ptr %i.x, i64 92
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.098133
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 96
  %i.aq = load <4 x float>, ptr %i.an, align 4, !tbaa !177
  %i.ar = fpext <4 x float> %i.aq to <4 x double>
  store <4 x double> %i.ar, ptr %i.ap, align 8, !tbaa !268
  %i.as = getelementptr inbounds nuw i8, ptr %i.x, i64 108
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.098133
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 128
  %indvars.iv.next165.2.2 = add nuw nsw i64 %.098133, 18 ; 5 uses
  %i.av = load <2 x float>, ptr %i.as, align 4, !tbaa !177
  %i.aw = fpext <2 x float> %i.av to <2 x double>
  store <2 x double> %i.aw, ptr %i.au, align 8, !tbaa !268
  %i.ax = getelementptr inbounds nuw [144 x i8], ptr %i.u, i64 %indvars.iv ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 152
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next165.2.2
  %i.ba = load <4 x float>, ptr %i.ay, align 4, !tbaa !177
  %i.bb = fpext <4 x float> %i.ba to <4 x double>
  store <4 x double> %i.bb, ptr %i.az, align 8, !tbaa !268
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 168
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next165.2.2
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bf = load <4 x float>, ptr %i.bc, align 4, !tbaa !177
  %i.bg = fpext <4 x float> %i.bf to <4 x double>
  store <4 x double> %i.bg, ptr %i.be, align 8, !tbaa !268
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ax, i64 184
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next165.2.2
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 64
  %i.bk = tail call <13 x float> @llvm.masked.load.v13f32.p0(ptr nonnull align 4 %i.bh, <13 x i1> <i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 true, i1 true, i1 true>, <13 x float> poison), !tbaa !177
  %i.bl = shufflevector <13 x float> %i.bk, <13 x float> poison, <4 x i32> <i32 0, i32 10, i32 11, i32 12>
  %i.bm = fpext <4 x float> %i.bl to <4 x double>
  store <4 x double> %i.bm, ptr %i.bj, align 8, !tbaa !268
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ax, i64 236
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next165.2.2
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 96
  %i.bq = load <4 x float>, ptr %i.bn, align 4, !tbaa !177
  %i.br = fpext <4 x float> %i.bq to <4 x double>
  store <4 x double> %i.br, ptr %i.bp, align 8, !tbaa !268
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ax, i64 252
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next165.2.2
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 128
  %indvars.iv.next165.2.2.1 = add nuw nsw i64 %.098133, 36 ; 3 uses
  %i.bv = load <2 x float>, ptr %i.bs, align 4, !tbaa !177
  %i.bw = fpext <2 x float> %i.bv to <2 x double>
  store <2 x double> %i.bw, ptr %i.bu, align 8, !tbaa !268
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.preheader124, !llvm.loop !460

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.preheader124
  %i.bx = and i64 %i.i, 4
  %lcmp.mod.not = icmp eq i64 %i.bx, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.preheader124.epil.preheader

.preheader124.epil.preheader:                     ; preds = %._crit_edge.loopexit.unr-lcssa, %.preheader124.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader124.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.098133.epil.init = phi i64 [ 0, %.preheader124.lr.ph ], [ %indvars.iv.next165.2.2.1, %._crit_edge.loopexit.unr-lcssa ] ; 6 uses
  %lcmp.mod251 = trunc i64 %i.j to i1
  tail call void @llvm.assume(i1 %lcmp.mod251)
  %i.by = getelementptr inbounds nuw [144 x i8], ptr %i.u, i64 %indvars.iv.epil.init ; 5 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.098133.epil.init
  %i.cb = load <4 x float>, ptr %i.bz, align 4, !tbaa !177
  %i.cc = fpext <4 x float> %i.cb to <4 x double>
  store <4 x double> %i.cc, ptr %i.ca, align 8, !tbaa !268
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.098133.epil.init
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  %i.cg = load <4 x float>, ptr %i.cd, align 4, !tbaa !177
  %i.ch = fpext <4 x float> %i.cg to <4 x double>
  store <4 x double> %i.ch, ptr %i.cf, align 8, !tbaa !268
  %i.ci = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.098133.epil.init
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 64
  %i.cl = tail call <13 x float> @llvm.masked.load.v13f32.p0(ptr nonnull align 4 %i.ci, <13 x i1> <i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 true, i1 true, i1 true>, <13 x float> poison), !tbaa !177
  %i.cm = shufflevector <13 x float> %i.cl, <13 x float> poison, <4 x i32> <i32 0, i32 10, i32 11, i32 12>
  %i.cn = fpext <4 x float> %i.cm to <4 x double>
  store <4 x double> %i.cn, ptr %i.ck, align 8, !tbaa !268
  %i.co = getelementptr inbounds nuw i8, ptr %i.by, i64 92
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.098133.epil.init
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 96
  %i.cr = load <4 x float>, ptr %i.co, align 4, !tbaa !177
  %i.cs = fpext <4 x float> %i.cr to <4 x double>
  store <4 x double> %i.cs, ptr %i.cq, align 8, !tbaa !268
  %i.ct = getelementptr inbounds nuw i8, ptr %i.by, i64 108
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.098133.epil.init
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 128
  %indvars.iv.next165.2.2.epil = add nuw nsw i64 %.098133.epil.init, 18
  %i.cw = load <2 x float>, ptr %i.ct, align 4, !tbaa !177
  %i.cx = fpext <2 x float> %i.cw to <2 x double>
  store <2 x double> %i.cx, ptr %i.cv, align 8, !tbaa !268
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %._crit_edge.loopexit.unr-lcssa, %.preheader124.epil.preheader
  %indvars.iv.next165.2.2.lcssa = phi i64 [ %indvars.iv.next165.2.2.1, %._crit_edge.loopexit.unr-lcssa ], [ %indvars.iv.next165.2.2.epil, %.preheader124.epil.preheader ]
  %i.cy = trunc nsw i64 %indvars.iv.next165.2.2.lcssa to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit
  %.098.lcssa = phi i32 [ 0, %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit ], [ %i.cy, %._crit_edge.loopexit ] ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.da = load float, ptr %i.cz, align 8, !tbaa !461
  %i.db = fpext float %i.da to double
  %i.dc = add nsw i32 %.098.lcssa, 1
  %i.dd = sext i32 %.098.lcssa to i64
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.dd
  store double %i.db, ptr %i.de, align 8, !tbaa !268
  %i.df = sext i32 %i.dc to i64
  invoke void @_ZNK3gmx7MpiComm9sumReduceEmPd(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.df, ptr noundef nonnull %i.p)
          to label %bb.c unwind label %_ZNSt6vectorIdSaIdEED2Ev.exit

bb.c:                                             ; preds = %._crit_edge
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !479
  %i.di = icmp eq i32 %i.dh, 0
  br i1 %i.di, label %.preheader120, label %_ZL25havePPDomainDecompositionPK12gmx_domdec_t.exit.thread.thread

.preheader120:                                    ; preds = %bb.c
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !357 ; 4 uses
  %i.dl = icmp sgt i32 %i.dk, 0
  br i1 %i.dl, label %.preheader119.lr.ph, label %._crit_edge145

.preheader119.lr.ph:                              ; preds = %.preheader120
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !480 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !481 ; 3 uses
  %wide.trip.count204 = zext nneg i32 %i.dk to i64 ; 2 uses
  %xtraiter252 = and i64 %wide.trip.count204, 1
  %i.dq = icmp eq i32 %i.dk, 1
  br i1 %i.dq, label %.preheader119.epil.preheader, label %.preheader119.lr.ph.new

.preheader119.lr.ph.new:                          ; preds = %.preheader119.lr.ph
  %unroll_iter256 = and i64 %wide.trip.count204, 2147483646
  br label %.preheader119

.preheader119:                                    ; preds = %.preheader119, %.preheader119.lr.ph.new
  %indvars.iv201 = phi i64 [ 0, %.preheader119.lr.ph.new ], [ %indvars.iv.next202.1, %.preheader119 ] ; 4 uses
  %.5143 = phi i64 [ 0, %.preheader119.lr.ph.new ], [ %indvars.iv.next190.2.2.1, %.preheader119 ] ; 6 uses
  %niter257 = phi i64 [ 0, %.preheader119.lr.ph.new ], [ %niter257.next.1, %.preheader119 ]
  %i.dr = getelementptr inbounds nuw [36 x i8], ptr %i.dn, i64 %indvars.iv201 ; 2 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.5143
  %i.dt = load <8 x double>, ptr %i.ds, align 8, !tbaa !268
  %i.du = fptrunc <8 x double> %i.dt to <8 x float>
  store <8 x float> %i.du, ptr %i.dr, align 4, !tbaa !177
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.5143
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 64
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !268
  %i.dy = fptrunc double %i.dx to float
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dr, i64 32
  store float %i.dy, ptr %i.dz, align 4, !tbaa !177
  %i.ea = getelementptr inbounds nuw [36 x i8], ptr %i.dp, i64 %indvars.iv201 ; 2 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.5143
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 72
  %i.ed = load <8 x double>, ptr %i.ec, align 8, !tbaa !268
  %i.ee = fptrunc <8 x double> %i.ed to <8 x float>
  store <8 x float> %i.ee, ptr %i.ea, align 4, !tbaa !177
  %indvars.iv.next190.2.2 = add nuw nsw i64 %.5143, 18 ; 4 uses
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.5143
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 136
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !268
  %i.ei = fptrunc double %i.eh to float
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ea, i64 32
  store float %i.ei, ptr %i.ej, align 4, !tbaa !177
  %indvars.iv.next202 = or disjoint i64 %indvars.iv201, 1 ; 2 uses
  %i.ek = getelementptr inbounds nuw [36 x i8], ptr %i.dn, i64 %indvars.iv.next202 ; 2 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next190.2.2
  %i.em = load <8 x double>, ptr %i.el, align 8, !tbaa !268
  %i.en = fptrunc <8 x double> %i.em to <8 x float>
  store <8 x float> %i.en, ptr %i.ek, align 4, !tbaa !177
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next190.2.2
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 64
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !268
  %i.er = fptrunc double %i.eq to float
  %i.es = getelementptr inbounds nuw i8, ptr %i.ek, i64 32
  store float %i.er, ptr %i.es, align 4, !tbaa !177
  %i.et = getelementptr inbounds nuw [36 x i8], ptr %i.dp, i64 %indvars.iv.next202 ; 2 uses
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next190.2.2
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 72
  %i.ew = load <8 x double>, ptr %i.ev, align 8, !tbaa !268
  %i.ex = fptrunc <8 x double> %i.ew to <8 x float>
  store <8 x float> %i.ex, ptr %i.et, align 4, !tbaa !177
  %indvars.iv.next190.2.2.1 = add nuw nsw i64 %.5143, 36 ; 3 uses
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next190.2.2
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 136
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !268
  %i.fb = fptrunc double %i.fa to float
  %i.fc = getelementptr inbounds nuw i8, ptr %i.et, i64 32
  store float %i.fb, ptr %i.fc, align 4, !tbaa !177
  %indvars.iv.next202.1 = add nuw nsw i64 %indvars.iv201, 2 ; 2 uses
  %niter257.next.1 = add i64 %niter257, 2         ; 2 uses
  %niter257.ncmp.1 = icmp eq i64 %niter257.next.1, %unroll_iter256
  br i1 %niter257.ncmp.1, label %._crit_edge145.loopexit.unr-lcssa, label %.preheader119, !llvm.loop !482

._crit_edge145.loopexit.unr-lcssa:                ; preds = %.preheader119
  %lcmp.mod253.not = icmp eq i64 %xtraiter252, 0
  br i1 %lcmp.mod253.not, label %._crit_edge145, label %.preheader119.epil.preheader

.preheader119.epil.preheader:                     ; preds = %._crit_edge145.loopexit.unr-lcssa, %.preheader119.lr.ph
  %indvars.iv201.epil.init = phi i64 [ 0, %.preheader119.lr.ph ], [ %indvars.iv.next202.1, %._crit_edge145.loopexit.unr-lcssa ] ; 2 uses
  %.5143.epil.init = phi i64 [ 0, %.preheader119.lr.ph ], [ %indvars.iv.next190.2.2.1, %._crit_edge145.loopexit.unr-lcssa ] ; 5 uses
  %lcmp.mod255 = trunc i32 %i.dk to i1
  tail call void @llvm.assume(i1 %lcmp.mod255)
  %i.fd = getelementptr inbounds nuw [36 x i8], ptr %i.dn, i64 %indvars.iv201.epil.init ; 2 uses
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.5143.epil.init
  %i.ff = load <8 x double>, ptr %i.fe, align 8, !tbaa !268
  %i.fg = fptrunc <8 x double> %i.ff to <8 x float>
  store <8 x float> %i.fg, ptr %i.fd, align 4, !tbaa !177
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.5143.epil.init
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 64
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !268
  %i.fk = fptrunc double %i.fj to float
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fd, i64 32
  store float %i.fk, ptr %i.fl, align 4, !tbaa !177
  %i.fm = getelementptr inbounds nuw [36 x i8], ptr %i.dp, i64 %indvars.iv201.epil.init ; 2 uses
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.5143.epil.init
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 72
  %i.fp = load <8 x double>, ptr %i.fo, align 8, !tbaa !268
  %i.fq = fptrunc <8 x double> %i.fp to <8 x float>
  store <8 x float> %i.fq, ptr %i.fm, align 4, !tbaa !177
  %indvars.iv.next190.2.2.epil = add nuw nsw i64 %.5143.epil.init, 18
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.5143.epil.init
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 136
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !268
  %i.fu = fptrunc double %i.ft to float
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fm, i64 32
  store float %i.fu, ptr %i.fv, align 4, !tbaa !177
  br label %._crit_edge145

._crit_edge145:                                   ; preds = %.preheader119.epil.preheader, %._crit_edge145.loopexit.unr-lcssa, %.preheader120
  %.5.lcssa = phi i64 [ 0, %.preheader120 ], [ %indvars.iv.next190.2.2.1, %._crit_edge145.loopexit.unr-lcssa ], [ %indvars.iv.next190.2.2.epil, %.preheader119.epil.preheader ]
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.5.lcssa
  %i.fx = load double, ptr %i.fw, align 8, !tbaa !268
  %i.fy = fptrunc double %i.fx to float
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 144
  store float %i.fy, ptr %i.fz, align 8, !tbaa !483
  br label %_ZL25havePPDomainDecompositionPK12gmx_domdec_t.exit.thread.thread

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %._crit_edge
  %i.ga = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #31
  resume { ptr, i32 } %i.ga

_ZL25havePPDomainDecompositionPK12gmx_domdec_t.exit.thread: ; preds = %bb.a, %_ZL25havePPDomainDecompositionPK12gmx_domdec_t.exit
  %i.gb = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !479
  %i.gd = icmp eq i32 %i.gc, 0
  br i1 %i.gd, label %.preheader, label %bb.f

_ZL25havePPDomainDecompositionPK12gmx_domdec_t.exit.thread.thread: ; preds = %bb.c, %._crit_edge145
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #31
  %i.ge = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !479
  %i.gg = icmp eq i32 %i.gf, 0
  br i1 %i.gg, label %._crit_edge216, label %bb.f

._crit_edge216:                                   ; preds = %_ZL25havePPDomainDecompositionPK12gmx_domdec_t.exit.thread.thread
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !357
  br label %bb.e

.preheader:                                       ; preds = %_ZL25havePPDomainDecompositionPK12gmx_domdec_t.exit.thread
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !357 ; 3 uses
  %i.gj = icmp sgt i32 %i.gi, 0
  br i1 %i.gj, label %.lr.ph, label %._crit_edge148

.lr.ph:                                           ; preds = %.preheader
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !457
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !480
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !481
  %wide.trip.count209 = zext nneg i32 %i.gi to i64
  br label %bb.d

._crit_edge148:                                   ; preds = %bb.d, %.preheader
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.gr = load float, ptr %i.gq, align 8, !tbaa !461
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 144
  store float %i.gr, ptr %i.gs, align 8, !tbaa !483
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv206 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next207, %bb.d ] ; 4 uses
  %i.gt = getelementptr inbounds nuw [144 x i8], ptr %i.gl, i64 %indvars.iv206 ; 18 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  %i.gv = getelementptr inbounds nuw [36 x i8], ptr %i.gn, i64 %indvars.iv206 ; 9 uses
  %i.gw = load float, ptr %i.gu, align 4, !tbaa !177
  store float %i.gw, ptr %i.gv, align 4, !tbaa !177
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gt, i64 12
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !177
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gv, i64 4
  store float %i.gy, ptr %i.gz, align 4, !tbaa !177
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gt, i64 16
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !177
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  store float %i.hb, ptr %i.hc, align 4, !tbaa !177
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gt, i64 20
  %i.he = getelementptr inbounds nuw i8, ptr %i.gv, i64 12
  %i.hf = load float, ptr %i.hd, align 4, !tbaa !177
  store float %i.hf, ptr %i.he, align 4, !tbaa !177
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gt, i64 24
  %i.hh = load float, ptr %i.hg, align 4, !tbaa !177
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  store float %i.hh, ptr %i.hi, align 4, !tbaa !177
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gt, i64 28
  %i.hk = load float, ptr %i.hj, align 4, !tbaa !177
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gv, i64 20
  store float %i.hk, ptr %i.hl, align 4, !tbaa !177
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gt, i64 32
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gv, i64 24
  %i.ho = load float, ptr %i.hm, align 4, !tbaa !177
  store float %i.ho, ptr %i.hn, align 4, !tbaa !177
  %i.hp = getelementptr inbounds nuw i8, ptr %i.gt, i64 36
  %i.hq = load float, ptr %i.hp, align 4, !tbaa !177
  %i.hr = getelementptr inbounds nuw i8, ptr %i.gv, i64 28
  store float %i.hq, ptr %i.hr, align 4, !tbaa !177
  %i.hs = getelementptr inbounds nuw i8, ptr %i.gt, i64 40
  %i.ht = load float, ptr %i.hs, align 4, !tbaa !177
  %i.hu = getelementptr inbounds nuw i8, ptr %i.gv, i64 32
  store float %i.ht, ptr %i.hu, align 4, !tbaa !177
  %i.hv = getelementptr inbounds nuw i8, ptr %i.gt, i64 80
  %i.hw = getelementptr inbounds nuw [36 x i8], ptr %i.gp, i64 %indvars.iv206 ; 9 uses
  %i.hx = load float, ptr %i.hv, align 4, !tbaa !177
  store float %i.hx, ptr %i.hw, align 4, !tbaa !177
  %i.hy = getelementptr inbounds nuw i8, ptr %i.gt, i64 84
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !177
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hw, i64 4
  store float %i.hz, ptr %i.ia, align 4, !tbaa !177
  %i.ib = getelementptr inbounds nuw i8, ptr %i.gt, i64 88
  %i.ic = load float, ptr %i.ib, align 4, !tbaa !177
  %i.id = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  store float %i.ic, ptr %i.id, align 4, !tbaa !177
  %i.ie = getelementptr inbounds nuw i8, ptr %i.gt, i64 92
  %i.if = getelementptr inbounds nuw i8, ptr %i.hw, i64 12
  %i.ig = load float, ptr %i.ie, align 4, !tbaa !177
  store float %i.ig, ptr %i.if, align 4, !tbaa !177
  %i.ih = getelementptr inbounds nuw i8, ptr %i.gt, i64 96
  %i.ii = load float, ptr %i.ih, align 4, !tbaa !177
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  store float %i.ii, ptr %i.ij, align 4, !tbaa !177
  %i.ik = getelementptr inbounds nuw i8, ptr %i.gt, i64 100
  %i.il = load float, ptr %i.ik, align 4, !tbaa !177
  %i.im = getelementptr inbounds nuw i8, ptr %i.hw, i64 20
  store float %i.il, ptr %i.im, align 4, !tbaa !177
  %i.in = getelementptr inbounds nuw i8, ptr %i.gt, i64 104
  %i.io = getelementptr inbounds nuw i8, ptr %i.hw, i64 24
  %i.ip = load float, ptr %i.in, align 4, !tbaa !177
  store float %i.ip, ptr %i.io, align 4, !tbaa !177
  %i.iq = getelementptr inbounds nuw i8, ptr %i.gt, i64 108
  %i.ir = load float, ptr %i.iq, align 4, !tbaa !177
  %i.is = getelementptr inbounds nuw i8, ptr %i.hw, i64 28
  store float %i.ir, ptr %i.is, align 4, !tbaa !177
  %i.it = getelementptr inbounds nuw i8, ptr %i.gt, i64 112
  %i.iu = load float, ptr %i.it, align 4, !tbaa !177
  %i.iv = getelementptr inbounds nuw i8, ptr %i.hw, i64 32
  store float %i.iu, ptr %i.iv, align 4, !tbaa !177
  %indvars.iv.next207 = add nuw nsw i64 %indvars.iv206, 1 ; 2 uses
  %exitcond210.not = icmp eq i64 %indvars.iv.next207, %wide.trip.count209
  br i1 %exitcond210.not, label %._crit_edge148, label %bb.d, !llvm.loop !484

bb.e:                                             ; preds = %._crit_edge216, %._crit_edge148
  %i.iw = phi i32 [ %.pre, %._crit_edge216 ], [ %i.gi, %._crit_edge148 ] ; 3 uses
  %i.ix = icmp sgt i32 %i.iw, 0
  br i1 %i.ix, label %.lr.ph151, label %._crit_edge152

.lr.ph151:                                        ; preds = %bb.e
  %i.iy = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !457 ; 8 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !360 ; 10 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !360 ; 10 uses
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !360 ; 10 uses
  %wide.trip.count214 = zext nneg i32 %i.iw to i64 ; 7 uses
  %min.iters.check = icmp ult i32 %i.iw, 32
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph151
  %i.jg = shl nuw nsw i64 %wide.trip.count214, 3  ; 3 uses
  %scevgep = getelementptr i8, ptr %i.jb, i64 %i.jg ; 3 uses
  %scevgep222 = getelementptr i8, ptr %i.jd, i64 %i.jg ; 3 uses
  %scevgep223 = getelementptr i8, ptr %i.jf, i64 %i.jg ; 3 uses
  %scevgep224 = getelementptr nuw i8, ptr %i.iz, i64 120 ; 3 uses
  %i.jh = mul nuw nsw i64 %wide.trip.count214, 144
  %scevgep225 = getelementptr i8, ptr %i.iz, i64 %i.jh ; 3 uses
  %bound0 = icmp ult ptr %i.jb, %scevgep222
end_hunk_2
begin_hunk_3_@_ZN3gmx6Update4Impl13update_coordsERK10t_inputreclibNS_8ArrayRefIK12ParticleTypeEENS5_IKfEENS5_IKNS_11BasicVectorIfEEEEP7t_stateRKNS_19ArrayRefWithPaddingISD_EEP8t_fcdataPK14gmx_ekindata_tRKNS_14BasicMatrix3x3IfEEiPK12gmx_domdec_tb.omp_outlined:bb.a
vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.anv = add i64 %index, %i.anr                 ; 5 uses
  %i.anw = getelementptr inbounds [12 x i8], ptr %i.cr, i64 %i.anv ; 2 uses
  %i.anx = getelementptr inbounds [12 x i8], ptr %i.cs, i64 %i.anv
  %i.any = getelementptr inbounds [12 x i8], ptr %i.du, i64 %i.anv
  %i.anz = getelementptr inbounds [12 x i8], ptr %i.co, i64 %i.anv
  %i.aoa = getelementptr inbounds [12 x i8], ptr %i.cp, i64 %i.anv
  %wide.vec = load <24 x float>, ptr %i.anw, align 4, !tbaa !177, !alias.scope !872, !noalias !873 ; 3 uses
  %strided.vec = shufflevector <24 x float> %wide.vec, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec388.a = shufflevector <24 x float> %wide.vec, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec389.a = shufflevector <24 x float> %wide.vec, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %wide.vec390 = load <24 x float>, ptr %i.anx, align 4, !tbaa !177, !alias.scope !874, !noalias !875 ; 3 uses
  %strided.vec391 = shufflevector <24 x float> %wide.vec390, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec392.a = shufflevector <24 x float> %wide.vec390, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec393.a = shufflevector <24 x float> %wide.vec390, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %wide.vec394 = load <24 x float>, ptr %i.any, align 4, !tbaa !177, !alias.scope !861, !noalias !876 ; 3 uses
  %strided.vec395 = shufflevector <24 x float> %wide.vec394, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec396 = shufflevector <24 x float> %wide.vec394, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec397 = shufflevector <24 x float> %wide.vec394, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %i.aob = fmul <8 x float> %strided.vec391, %strided.vec395
  %i.aoc = fmul <8 x float> %broadcast.splat, %i.aob
  %i.aod = fadd <8 x float> %strided.vec, %i.aoc  ; 2 uses
  %wide.vec398 = load <24 x float>, ptr %i.anz, align 4, !tbaa !177, !alias.scope !877, !noalias !878 ; 3 uses
  %strided.vec399 = shufflevector <24 x float> %wide.vec398, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec400 = shufflevector <24 x float> %wide.vec398, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec401 = shufflevector <24 x float> %wide.vec398, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %i.aoe = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.aod, <8 x float> %broadcast.splat, <8 x float> %strided.vec399)
  %i.aof = fmul <8 x float> %strided.vec392.a, %strided.vec396
  %i.aog = fmul <8 x float> %broadcast.splat, %i.aof
  %i.aoh = fadd <8 x float> %strided.vec388.a, %i.aog ; 2 uses
  %i.aoi = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.aoh, <8 x float> %broadcast.splat, <8 x float> %strided.vec400)
  %i.aoj = fmul <8 x float> %strided.vec393.a, %strided.vec397
  %i.aok = fmul <8 x float> %broadcast.splat, %i.aoj
  %i.aol = fadd <8 x float> %strided.vec389.a, %i.aok ; 2 uses
  %i.aom = shufflevector <8 x float> %i.aod, <8 x float> %i.aoh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aon = shufflevector <8 x float> %i.aol, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <16 x float> %i.aom, <16 x float> %i.aon, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec, ptr %i.anw, align 4, !tbaa !177, !alias.scope !872, !noalias !873
  %i.aoo = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.aol, <8 x float> %broadcast.splat, <8 x float> %strided.vec401)
  %i.aop = shufflevector <8 x float> %i.aoe, <8 x float> %i.aoi, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aoq = shufflevector <8 x float> %i.aoo, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec402 = shufflevector <16 x float> %i.aop, <16 x float> %i.aoq, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec402, ptr %i.aoa, align 4, !tbaa !177, !alias.scope !879, !noalias !880
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aor = icmp eq i64 %index.next, %n.vec
  br i1 %i.aor, label %middle.block, label %vector.body, !llvm.loop !881

middle.block:                                     ; preds = %vector.body
  %i.aos = and i32 %spec.select.i, 7
  %cmp.n = icmp eq i32 %i.aos, 0
  br i1 %cmp.n, label %_ZL12do_update_mdiiflPKN3gmx11BasicVectorIfEEPS1_S4_S3_19TemperatureCoupling16PressureCouplingiiNS_8ArrayRefIKtEE16AccelerationTypeS9_NS7_IS2_EEPA3_KfNS7_ISC_EESB_PK14gmx_ekindata_tSE_PKdRKNS_14BasicMatrix3x3IfEEb.exit, label %.preheader.i.i.i.i.i.i.i.i.i.i.preheader

.preheader.i.i.i.i.i.i.i.i.i.i.preheader:         ; preds = %.preheader.preheader.i.i.i.i.i.i.i.i.i.i, %middle.block
  %indvars.iv.i.i.i.i.i.i.i.i.i119.i.ph = phi i64 [ %i.anr, %.preheader.preheader.i.i.i.i.i.i.i.i.i.i ], [ %i.anu, %middle.block ]
  %i.aot = insertelement <2 x float> poison, float %i.cu, i64 0
  %i.aou = shufflevector <2 x float> %i.aot, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %.preheader.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.preheader, %.preheader.i.i.i.i.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i.i.i.i119.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.i.i.i120.i, %.preheader.i.i.i.i.i.i.i.i.i.i ], [ %indvars.iv.i.i.i.i.i.i.i.i.i119.i.ph, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader ] ; 6 uses
  %i.aov = getelementptr inbounds [12 x i8], ptr %i.cr, i64 %indvars.iv.i.i.i.i.i.i.i.i.i119.i ; 3 uses
  %i.aow = getelementptr inbounds [12 x i8], ptr %i.cs, i64 %indvars.iv.i.i.i.i.i.i.i.i.i119.i ; 2 uses
  %i.aox = getelementptr inbounds [12 x i8], ptr %i.du, i64 %indvars.iv.i.i.i.i.i.i.i.i.i119.i ; 2 uses
  %i.aoy = getelementptr inbounds [12 x i8], ptr %i.co, i64 %indvars.iv.i.i.i.i.i.i.i.i.i119.i ; 2 uses
  %i.aoz = getelementptr inbounds [12 x i8], ptr %i.cp, i64 %indvars.iv.i.i.i.i.i.i.i.i.i119.i ; 2 uses
  %i.apa = load <2 x float>, ptr %i.aov, align 4, !tbaa !177, !alias.scope !872, !noalias !873
  %i.apb = load <2 x float>, ptr %i.aow, align 4, !tbaa !177, !alias.scope !874, !noalias !875
  %i.apc = load <2 x float>, ptr %i.aox, align 4, !tbaa !177, !alias.scope !861, !noalias !876
  %i.apd = fmul <2 x float> %i.apb, %i.apc
  %i.ape = fmul <2 x float> %i.aou, %i.apd
  %i.apf = fadd <2 x float> %i.apa, %i.ape        ; 2 uses
  store <2 x float> %i.apf, ptr %i.aov, align 4, !tbaa !177, !alias.scope !872, !noalias !873
  %i.apg = load <2 x float>, ptr %i.aoy, align 4, !tbaa !177, !alias.scope !877, !noalias !878
  %i.aph = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.apf, <2 x float> %i.aou, <2 x float> %i.apg)
  store <2 x float> %i.aph, ptr %i.aoz, align 4, !tbaa !177, !alias.scope !879, !noalias !880
  %i.api = getelementptr inbounds nuw i8, ptr %i.aov, i64 8 ; 2 uses
  %i.apj = load float, ptr %i.api, align 4, !tbaa !177, !alias.scope !872, !noalias !873
  %i.apk = getelementptr inbounds nuw i8, ptr %i.aow, i64 8
  %i.apl = load float, ptr %i.apk, align 4, !tbaa !177, !alias.scope !874, !noalias !875
  %i.apm = getelementptr inbounds nuw i8, ptr %i.aox, i64 8
  %i.apn = load float, ptr %i.apm, align 4, !tbaa !177, !alias.scope !861, !noalias !876
  %i.apo = fmul float %i.apl, %i.apn
  %i.app = fmul float %i.cu, %i.apo
  %i.apq = fadd float %i.apj, %i.app              ; 2 uses
  store float %i.apq, ptr %i.api, align 4, !tbaa !177, !alias.scope !872, !noalias !873
  %i.apr = getelementptr inbounds nuw i8, ptr %i.aoy, i64 8
  %i.aps = load float, ptr %i.apr, align 4, !tbaa !177, !alias.scope !877, !noalias !878
  %i.apt = call float @llvm.fmuladd.f32(float %i.apq, float %i.cu, float %i.aps)
  %i.apu = getelementptr inbounds nuw i8, ptr %i.aoz, i64 8
  store float %i.apt, ptr %i.apu, align 4, !tbaa !177, !alias.scope !879, !noalias !880
  %indvars.iv.next.i.i.i.i.i.i.i.i.i120.i = add nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i119.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i121.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i.i.i.i120.i, %wide.trip.count.i.i.i.i.i.i.i.i.i118.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i121.i, label %_ZL12do_update_mdiiflPKN3gmx11BasicVectorIfEEPS1_S4_S3_19TemperatureCoupling16PressureCouplingiiNS_8ArrayRefIKtEE16AccelerationTypeS9_NS7_IS2_EEPA3_KfNS7_ISC_EESB_PK14gmx_ekindata_tSE_PKdRKNS_14BasicMatrix3x3IfEEb.exit, label %.preheader.i.i.i.i.i.i.i.i.i.i, !llvm.loop !882

.loopexit273:                                     ; preds = %bb.j
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.ak
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %.body

bb.bj:                                            ; preds = %bb.c
  %i.apv = load float, ptr %8, align 4, !tbaa !177 ; 11 uses
  %i.apw = load i64, ptr %9, align 8, !tbaa !64   ; 3 uses
  %i.apx = load ptr, ptr %i.r, align 8, !tbaa !254 ; 2 uses
  %i.apy = load ptr, ptr %10, align 8, !tbaa !60  ; 2 uses
  %i.apz = load ptr, ptr %15, align 8, !tbaa !58  ; 2 uses
  %i.aqa = load ptr, ptr %5, align 8, !tbaa !225  ; 4 uses
  %i.aqb = load ptr, ptr %i.s, align 8, !tbaa !225 ; 2 uses
  %i.aqc = load ptr, ptr %i.w, align 8, !tbaa !225 ; 2 uses
  %i.aqd = load ptr, ptr %i.x, align 8, !tbaa !225
  %i.aqe = load ptr, ptr %i.t, align 8, !tbaa !225 ; 4 uses
  %i.aqf = load ptr, ptr %i.u, align 8, !tbaa !225 ; 2 uses
  %i.aqg = load ptr, ptr %i.v, align 8, !tbaa !566 ; 2 uses
  %i.aqh = load i64, ptr %i.aa, align 8, !tbaa !509
  %i.aqi = load ptr, ptr %16, align 8, !tbaa !73  ; 2 uses
  %i.aqj = load i8, ptr %17, align 1, !tbaa !67, !range !331, !noundef !332
  %i.aqk = trunc nuw i8 %i.aqj to i1
  %i.aql = load i32, ptr %i.p, align 4, !tbaa !563
  %i.aqm = load i32, ptr %i.ae, align 4, !tbaa !565 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !883)
  call void @llvm.experimental.noalias.scope.decl(metadata !886)
  call void @llvm.experimental.noalias.scope.decl(metadata !888)
  call void @llvm.experimental.noalias.scope.decl(metadata !890)
  %i.aqn = icmp ne i32 %i.aql, 2
  %.not.i.i124 = icmp eq i32 %i.aqm, 0
  %or.cond.i125 = or i1 %i.aqn, %.not.i.i124
  br i1 %or.cond.i125, label %_Z11do_per_stepll.exit.i126.thread, label %_Z11do_per_stepll.exit.i126

_Z11do_per_stepll.exit.i126.thread:               ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #20, !noalias !892
  store ptr %21, ptr %i.af, align 8, !tbaa !260, !noalias !892
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %21, i8 0, i64 36, i1 false), !noalias !892
  br label %bb.bk

_Z11do_per_stepll.exit.i126:                      ; preds = %bb.bj
  %i.aqo = sext i32 %i.aqm to i64                 ; 2 uses
  %i.aqp = add i64 %i.apw, -1
  %i.aqq = add i64 %i.aqp, %i.aqo
  %i.aqr = srem i64 %i.aqq, %i.aqo
  %.fr = freeze i64 %i.aqr
  %i.aqs = icmp eq i64 %.fr, 0                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #20, !noalias !892
  store ptr %21, ptr %i.af, align 8, !tbaa !260, !noalias !892
  %i.aqt = sitofp i32 %i.aqm to float
  %i.aqu = fmul float %i.apv, %i.aqt
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %21, i8 0, i64 36, i1 false), !noalias !892
  %spec.select259 = select i1 %i.aqs, float %i.aqu, float 0.000000e+00
  %i.aqv = select i1 %i.aqs, ptr %.sroa.gep45.i, ptr %i.af
  br label %bb.bk

bb.bk:                                            ; preds = %_Z11do_per_stepll.exit.i126, %_Z11do_per_stepll.exit.i126.thread
  %cond.fr.i258 = phi ptr [ %i.af, %_Z11do_per_stepll.exit.i126.thread ], [ %i.aqv, %_Z11do_per_stepll.exit.i126 ] ; 2 uses
  %i.aqw = phi float [ 0.000000e+00, %_Z11do_per_stepll.exit.i126.thread ], [ %spec.select259, %_Z11do_per_stepll.exit.i126 ] ; 6 uses
  br i1 %i.aqk, label %bb.bl, label %bb.bx

bb.bl:                                            ; preds = %bb.bk
  %.val37.i = load ptr, ptr %cond.fr.i258, align 8, !noalias !892 ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !893)
  call void @llvm.experimental.noalias.scope.decl(metadata !896)
  call void @llvm.experimental.noalias.scope.decl(metadata !898)
  call void @llvm.experimental.noalias.scope.decl(metadata !900)
  call void @llvm.experimental.noalias.scope.decl(metadata !902)
  %i.aqx = icmp slt i32 %i.cf, %spec.select.i
  br i1 %i.aqx, label %.lr.ph.i.i129, label %.loopexit

.lr.ph.i.i129:                                    ; preds = %bb.bl
  %i.aqy = icmp eq ptr %i.aqa, %i.aqb
  %i.aqz = icmp eq ptr %i.aqe, %i.aqf
  %i.ara = load float, ptr %.val37.i, align 4, !tbaa !177, !noalias !904
  %i.arb = getelementptr i8, ptr %.val37.i, i64 4
  %i.arc = load float, ptr %i.arb, align 4, !tbaa !177, !noalias !904
  %i.ard = getelementptr i8, ptr %.val37.i, i64 8
  %i.are = load float, ptr %i.ard, align 4, !tbaa !177, !noalias !904
  %i.arf = getelementptr i8, ptr %.val37.i, i64 12
  %i.arg = load float, ptr %i.arf, align 4, !tbaa !177, !noalias !904
  %i.arh = getelementptr i8, ptr %.val37.i, i64 16
  %i.ari = load float, ptr %i.arh, align 4, !tbaa !177, !noalias !904
  %i.arj = getelementptr i8, ptr %.val37.i, i64 20
  %i.ark = load float, ptr %i.arj, align 4, !tbaa !177, !noalias !904
  %i.arl = getelementptr i8, ptr %.val37.i, i64 24
  %i.arm = load float, ptr %i.arl, align 4, !tbaa !177, !noalias !904
  %i.arn = getelementptr i8, ptr %.val37.i, i64 28
  %i.aro = load float, ptr %i.arn, align 4, !tbaa !177, !noalias !904
  %i.arp = getelementptr i8, ptr %.val37.i, i64 32
  %i.arq = load float, ptr %i.arp, align 4, !tbaa !177, !noalias !904
  %i.arr = sext i32 %i.cf to i64                  ; 2 uses
  %i.ars = sub i32 %spec.select.i, %i.cf
  %zext60.i = zext i32 %i.ars to i64
  br label %bb.bm

bb.bm:                                            ; preds = %.split14.us.i.i, %.lr.ph.i.i129
  %indvars.iv.i.i130 = phi i64 [ %i.arr, %.lr.ph.i.i129 ], [ %indvars.iv.next.i.i131, %.split14.us.i.i ] ; 9 uses
  %indvar.i.i = phi i64 [ 0, %.lr.ph.i.i129 ], [ %indvar.next.i.i, %.split14.us.i.i ] ; 2 uses
  %i.art = add nsw i64 %indvar.i.i, %i.arr
  %i.aru = mul i64 %i.art, 12                     ; 3 uses
  %scevgep18.i.i = getelementptr i8, ptr %i.cp, i64 %i.aru
  %scevgep19.i.i = getelementptr i8, ptr %i.co, i64 %i.aru
  %scevgep.i.i = getelementptr i8, ptr %i.cr, i64 %i.aru
  %i.arv = getelementptr inbounds [4 x i8], ptr %i.apy, i64 %indvars.iv.i.i130
  %i.arw = load float, ptr %i.arv, align 4, !tbaa !177, !noalias !904 ; 5 uses
  %i.arx = fcmp olt float %i.arw, 0.000000e+00
  br i1 %i.arx, label %cdce.call, label %cdce.end.i.i, !prof !905

cdce.call:                                        ; preds = %bb.bm
  %i.ary = call noundef float @sqrtf(float noundef %i.arw) #20, !noalias !904 ; 0 uses
  br label %cdce.end.i.i

cdce.end.i.i:                                     ; preds = %cdce.call, %bb.bm
  br i1 %i.aqy, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %cdce.end.i.i
  %i.arz = getelementptr inbounds [2 x i8], ptr %i.aqa, i64 %indvars.iv.i.i130
  %i.asa = load i16, ptr %i.arz, align 2, !tbaa !255, !noalias !904
  %i.asb = zext i16 %i.asa to i64
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %cdce.end.i.i
  %i.asc = phi i64 [ %i.asb, %bb.bn ], [ 0, %cdce.end.i.i ]
  br i1 %i.aqz, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.asd = getelementptr inbounds [2 x i8], ptr %i.aqe, i64 %indvars.iv.i.i130
  %i.ase = load i16, ptr %i.asd, align 2, !tbaa !255, !noalias !904
  %i.asf = zext i16 %i.ase to i64
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.asg = phi i64 [ %i.asf, %bb.bp ], [ 0, %bb.bo ]
  %i.ash = getelementptr inbounds [12 x i8], ptr %i.cr, i64 %indvars.iv.i.i130 ; 4 uses
  %i.asi = load float, ptr %i.ash, align 4, !tbaa !177, !alias.scope !906, !noalias !907 ; 4 uses
  %i.asj = call float @llvm.fmuladd.f32(float %i.ara, float %i.asi, float 0.000000e+00)
  %i.ask = getelementptr inbounds nuw i8, ptr %i.ash, i64 4 ; 2 uses
  %i.asl = load float, ptr %i.ask, align 4, !tbaa !177, !alias.scope !906, !noalias !907 ; 4 uses
  %i.asm = call float @llvm.fmuladd.f32(float %i.arc, float %i.asl, float %i.asj)
  %i.asn = getelementptr inbounds nuw i8, ptr %i.ash, i64 8 ; 3 uses
  %i.aso = load float, ptr %i.asn, align 4, !tbaa !177, !alias.scope !906, !noalias !907 ; 4 uses
  %i.asp = call float @llvm.fmuladd.f32(float %i.are, float %i.aso, float %i.asm)
  %i.asq = call float @llvm.fmuladd.f32(float %i.arg, float %i.asi, float 0.000000e+00)
  %i.asr = call float @llvm.fmuladd.f32(float %i.ari, float %i.asl, float %i.asq)
  %i.ass = call float @llvm.fmuladd.f32(float %i.ark, float %i.aso, float %i.asr)
  %i.ast = call float @llvm.fmuladd.f32(float %i.arm, float %i.asi, float 0.000000e+00)
  %i.asu = call float @llvm.fmuladd.f32(float %i.aro, float %i.asl, float %i.ast)
  %i.asv = call float @llvm.fmuladd.f32(float %i.arq, float %i.aso, float %i.asu)
  %i.asw = fmul float %i.aqw, %i.asp
  %i.asx = fmul float %i.aqw, %i.ass
  %i.asy = fmul float %i.aqw, %i.asv
  %i.asz = getelementptr inbounds [4 x i8], ptr %i.apz, i64 %indvars.iv.i.i130
  %i.ata = load i32, ptr %i.asz, align 4, !tbaa !520, !noalias !904
  %.not.i40.i = icmp eq i32 %i.ata, 2
  %i.atb = getelementptr inbounds nuw [12 x i8], ptr %i.apx, i64 %i.asc ; 3 uses
  %i.atc = getelementptr inbounds [12 x i8], ptr %i.cs, i64 %indvars.iv.i.i130 ; 3 uses
  %i.atd = getelementptr inbounds nuw [12 x i8], ptr %i.aqg, i64 %i.asg ; 3 uses
  %i.ate = getelementptr inbounds [12 x i8], ptr %i.co, i64 %indvars.iv.i.i130 ; 6 uses
  %i.atf = getelementptr inbounds [12 x i8], ptr %i.cp, i64 %indvars.iv.i.i130 ; 4 uses
  br i1 %.not.i40.i, label %.split.us.preheader.i.i, label %.split.preheader.i.i

.split.preheader.i.i:                             ; preds = %bb.bq
  %i.atg = load i32, ptr %i.atb, align 4, !tbaa !66, !noalias !904
  %.not65.i.i = icmp eq i32 %i.atg, 0
  br i1 %.not65.i.i, label %bb.br, label %bb.bs

.split.us.preheader.i.i:                          ; preds = %bb.bq
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %scevgep.i.i, i8 0, i64 12, i1 false), !tbaa !177, !alias.scope !906, !noalias !907
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %scevgep18.i.i, ptr noundef nonnull readonly align 4 dereferenceable(12) %scevgep19.i.i, i64 12, i1 false), !tbaa !177, !alias.scope !908, !noalias !909
  br label %.split14.us.i.i

.split14.us.i.i:                                  ; preds = %bb.bw, %bb.bv, %.split.us.preheader.i.i
  %indvars.iv.next.i.i131 = add nsw i64 %indvars.iv.i.i130, 1
  %indvar.next.i.i = add nuw nsw i64 %indvar.i.i, 1 ; 2 uses
  %i.ath = icmp eq i64 %indvar.next.i.i, %zext60.i
  br i1 %i.ath, label %.loopexit, label %bb.bm, !llvm.loop !910

bb.br:                                            ; preds = %.split.preheader.i.i
  %i.ati = load float, ptr %i.atc, align 4, !tbaa !177, !alias.scope !911, !noalias !912
  %i.atj = load float, ptr %i.atd, align 4, !tbaa !177, !alias.scope !893, !noalias !913
  %i.atk = call float @llvm.fmuladd.f32(float %i.arw, float %i.ati, float %i.atj)
  %i.atl = call float @llvm.fmuladd.f32(float %i.atk, float %i.apv, float %i.asi)
  %i.atm = fsub float %i.atl, %i.asw              ; 2 uses
  %i.atn = load float, ptr %i.ate, align 4, !tbaa !177, !alias.scope !914, !noalias !915
  %i.ato = call float @llvm.fmuladd.f32(float %i.atm, float %i.apv, float %i.atn)
  br label %.split.1.i.i

bb.bs:                                            ; preds = %.split.preheader.i.i
  %i.atp = load float, ptr %i.ate, align 4, !tbaa !177, !alias.scope !914, !noalias !915
  br label %.split.1.i.i

.split.1.i.i:                                     ; preds = %bb.bs, %bb.br
  %.sink.i = phi float [ %i.atm, %bb.br ], [ 0.000000e+00, %bb.bs ]
  %storemerge.i.i = phi float [ %i.ato, %bb.br ], [ %i.atp, %bb.bs ]
  store float %.sink.i, ptr %i.ash, align 4, !tbaa !177, !alias.scope !906, !noalias !907
  store float %storemerge.i.i, ptr %i.atf, align 4, !tbaa !177, !alias.scope !916, !noalias !917
  %i.atq = getelementptr inbounds nuw i8, ptr %i.atb, i64 4
  %i.atr = load i32, ptr %i.atq, align 4, !tbaa !66, !noalias !904
  %.not65.1.i.i = icmp eq i32 %i.atr, 0
  br i1 %.not65.1.i.i, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %.split.1.i.i
  %i.ats = getelementptr inbounds nuw i8, ptr %i.ate, i64 4
  %i.att = load float, ptr %i.ats, align 4, !tbaa !177, !alias.scope !914, !noalias !915
  br label %.split.2.i.i

bb.bu:                                            ; preds = %.split.1.i.i
  %i.atu = getelementptr inbounds nuw i8, ptr %i.atc, i64 4
  %i.atv = load float, ptr %i.atu, align 4, !tbaa !177, !alias.scope !911, !noalias !912
  %i.atw = getelementptr inbounds nuw i8, ptr %i.atd, i64 4
  %i.atx = load float, ptr %i.atw, align 4, !tbaa !177, !alias.scope !893, !noalias !913
  %i.aty = call float @llvm.fmuladd.f32(float %i.arw, float %i.atv, float %i.atx)
  %i.atz = call float @llvm.fmuladd.f32(float %i.aty, float %i.apv, float %i.asl)
  %i.aua = fsub float %i.atz, %i.asx              ; 2 uses
  %i.aub = getelementptr inbounds nuw i8, ptr %i.ate, i64 4
  %i.auc = load float, ptr %i.aub, align 4, !tbaa !177, !alias.scope !914, !noalias !915
  %i.aud = call float @llvm.fmuladd.f32(float %i.aua, float %i.apv, float %i.auc)
  br label %.split.2.i.i

.split.2.i.i:                                     ; preds = %bb.bu, %bb.bt
  %.sink61.i = phi float [ %i.aua, %bb.bu ], [ 0.000000e+00, %bb.bt ]
  %.sink.i.i = phi float [ %i.aud, %bb.bu ], [ %i.att, %bb.bt ]
  store float %.sink61.i, ptr %i.ask, align 4, !tbaa !177, !alias.scope !906, !noalias !907
  %i.aue = getelementptr inbounds nuw i8, ptr %i.atf, i64 4
  store float %.sink.i.i, ptr %i.aue, align 4, !tbaa !177, !alias.scope !916, !noalias !917
  %i.auf = getelementptr inbounds nuw i8, ptr %i.atb, i64 8
  %i.aug = load i32, ptr %i.auf, align 4, !tbaa !66, !noalias !904
  %.not65.2.i.i = icmp eq i32 %i.aug, 0
  br i1 %.not65.2.i.i, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %.split.2.i.i
  store float 0.000000e+00, ptr %i.asn, align 4, !tbaa !177, !alias.scope !906, !noalias !907
  %i.auh = getelementptr inbounds nuw i8, ptr %i.ate, i64 8
  %i.aui = load float, ptr %i.auh, align 4, !tbaa !177, !alias.scope !914, !noalias !915
  %i.auj = getelementptr inbounds nuw i8, ptr %i.atf, i64 8
  store float %i.aui, ptr %i.auj, align 4, !tbaa !177, !alias.scope !916, !noalias !917
  br label %.split14.us.i.i

bb.bw:                                            ; preds = %.split.2.i.i
  %i.auk = getelementptr inbounds nuw i8, ptr %i.atc, i64 8
  %i.aul = load float, ptr %i.auk, align 4, !tbaa !177, !alias.scope !911, !noalias !912
  %i.aum = getelementptr inbounds nuw i8, ptr %i.atd, i64 8
  %i.aun = load float, ptr %i.aum, align 4, !tbaa !177, !alias.scope !893, !noalias !913
  %i.auo = call float @llvm.fmuladd.f32(float %i.arw, float %i.aul, float %i.aun)
  %i.aup = call float @llvm.fmuladd.f32(float %i.auo, float %i.apv, float %i.aso)
  %i.auq = fsub float %i.aup, %i.asy              ; 2 uses
  store float %i.auq, ptr %i.asn, align 4, !tbaa !177, !alias.scope !906, !noalias !907
  %i.aur = getelementptr inbounds nuw i8, ptr %i.ate, i64 8
  %i.aus = load float, ptr %i.aur, align 4, !tbaa !177, !alias.scope !914, !noalias !915
  %i.aut = call float @llvm.fmuladd.f32(float %i.auq, float %i.apv, float %i.aus)
  %i.auu = getelementptr inbounds nuw i8, ptr %i.atf, i64 8
  store float %i.aut, ptr %i.auu, align 4, !tbaa !177, !alias.scope !916, !noalias !917
  br label %.split14.us.i.i

bb.bx:                                            ; preds = %bb.bk
  %.not.i128 = icmp eq ptr %i.aqi, null
  br i1 %.not.i128, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.auv = getelementptr inbounds nuw i8, ptr %i.aqi, i64 896
  %i.auw = load ptr, ptr %i.auv, align 8, !tbaa !510, !noalias !892
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %i.aux = phi ptr [ %i.auw, %bb.by ], [ null, %bb.bx ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !918)
  call void @llvm.experimental.noalias.scope.decl(metadata !921)
  call void @llvm.experimental.noalias.scope.decl(metadata !923)
  call void @llvm.experimental.noalias.scope.decl(metadata !925)
  call void @llvm.experimental.noalias.scope.decl(metadata !927)
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #20, !noalias !929
  %sext260 = shl i64 %i.aqh, 32
  %i.auy = ashr exact i64 %sext260, 32            ; 2 uses
  store i64 %i.auy, ptr %20, align 8, !noalias !929
  store i64 12288, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !175, !noalias !929
  %i.auz = icmp slt i32 %i.cf, %spec.select.i
  br i1 %i.auz, label %.lr.ph.i41.i, label %_ZL17doSDUpdateGeneralIL8SDUpdate2EEvRK12gmx_stochd_tiifN3gmx8ArrayRefIA3_KiEENS5_IKfEENS5_IK12ParticleTypeEENS5_IKtEESF_SF_PKNS4_11BasicVectorIfEESJ_PSH_SK_SJ_liPS6_fRKNS4_14BasicMatrix3x3IfEE.exit.i

.lr.ph.i41.i:                                     ; preds = %bb.bz
  %.not.i42.i = icmp eq ptr %i.aux, null
  %i.ava = icmp eq ptr %i.aqa, %i.aqb
  %i.avb = icmp eq ptr %i.aqe, %i.aqf
  %i.avc = icmp eq ptr %i.aqc, %i.aqd
  %i.avd = fpext float %i.apv to double           ; 3 uses
  %i.ave = sext i32 %i.cf to i64                  ; 2 uses
  %i.avf = sub i32 %spec.select.i, %i.cf
  %zext.i = zext i32 %i.avf to i64
  br label %bb.ca

bb.ca:                                            ; preds = %.split9.us.i.i, %.lr.ph.i41.i
  %i.avg = phi i64 [ 12288, %.lr.ph.i41.i ], [ %i.baz, %.split9.us.i.i ] ; 9 uses
  %i.avh = phi i64 [ %i.auy, %.lr.ph.i41.i ], [ %i.bba, %.split9.us.i.i ] ; 9 uses
  %indvars.iv19.i.i = phi i64 [ %i.ave, %.lr.ph.i41.i ], [ %indvars.iv.next20.i.i, %.split9.us.i.i ] ; 12 uses
  %indvar.i45.i = phi i64 [ 0, %.lr.ph.i41.i ], [ %indvar.next.i51.i, %.split9.us.i.i ] ; 2 uses
  %.sroa.6.010.i.i = phi i64 [ 0, %.lr.ph.i41.i ], [ %.us-phi.i.i, %.split9.us.i.i ] ; 2 uses
  %i.avi = add nsw i64 %indvar.i45.i, %i.ave
  %i.avj = mul i64 %i.avi, 12                     ; 3 uses
  %scevgep14.i.i = getelementptr i8, ptr %i.cp, i64 %i.avj
  %scevgep15.i.i = getelementptr i8, ptr %i.co, i64 %i.avj
end_hunk_3
begin_hunk_4_@_ZN3gmx6Update4Impl13update_coordsERK10t_inputreclibNS_8ArrayRefIK12ParticleTypeEENS5_IKfEENS5_IKNS_11BasicVectorIfEEEEP7t_stateRKNS_19ArrayRefWithPaddingISD_EEP8t_fcdataPK14gmx_ekindata_tRKNS_14BasicMatrix3x3IfEEiPK12gmx_domdec_tb.omp_outlined:bb.a
  %i.bep = add i64 %i.beo, %i.bem                 ; 2 uses
  %i.beq = call i64 @llvm.fshl.i64(i64 %i.beo, i64 %i.beo, i64 24)
  %i.ber = xor i64 %i.beq, %i.bep                 ; 3 uses
  %i.bes = add i64 %i.ber, %i.bep                 ; 2 uses
  %i.bet = call i64 @llvm.fshl.i64(i64 %i.ber, i64 %i.ber, i64 21)
  %i.beu = xor i64 %i.bet, %i.bes
  %i.bev = add i64 %i.bes, %i.bds
  %i.bew = add i64 %i.bdo, 2
  %i.bex = add i64 %i.bew, %i.beu                 ; 3 uses
  %i.bey = add i64 %i.bev, %i.bex                 ; 2 uses
  %i.bez = call i64 @llvm.fshl.i64(i64 %i.bex, i64 %i.bex, i64 16)
  %i.bfa = xor i64 %i.bez, %i.bey                 ; 3 uses
  %i.bfb = add i64 %i.bfa, %i.bey                 ; 2 uses
  %i.bfc = call i64 @llvm.fshl.i64(i64 %i.bfa, i64 %i.bfa, i64 42)
  %i.bfd = xor i64 %i.bfc, %i.bfb                 ; 3 uses
  %i.bfe = add i64 %i.bfd, %i.bfb                 ; 2 uses
  %i.bff = call i64 @llvm.fshl.i64(i64 %i.bfd, i64 %i.bfd, i64 12)
  %i.bfg = xor i64 %i.bff, %i.bfe                 ; 3 uses
  %i.bfh = add i64 %i.bfg, %i.bfe                 ; 2 uses
  %i.bfi = call i64 @llvm.fshl.i64(i64 %i.bfg, i64 %i.bfg, i64 31)
  %i.bfj = xor i64 %i.bfi, %i.bfh
  %i.bfk = add i64 %i.bfh, %i.bdo
  %i.bfl = add i64 %i.bdq, 3
  %i.bfm = add i64 %i.bfl, %i.bfj                 ; 3 uses
  %i.bfn = add i64 %i.bfk, %i.bfm                 ; 2 uses
  %i.bfo = call i64 @llvm.fshl.i64(i64 %i.bfm, i64 %i.bfm, i64 16)
  %i.bfp = xor i64 %i.bfo, %i.bfn                 ; 3 uses
  %i.bfq = add i64 %i.bfp, %i.bfn                 ; 2 uses
  %i.bfr = call i64 @llvm.fshl.i64(i64 %i.bfp, i64 %i.bfp, i64 32)
  %i.bfs = xor i64 %i.bfr, %i.bfq                 ; 3 uses
  %i.bft = add i64 %i.bfs, %i.bfq                 ; 2 uses
  %i.bfu = call i64 @llvm.fshl.i64(i64 %i.bfs, i64 %i.bfs, i64 24)
  %i.bfv = xor i64 %i.bfu, %i.bft                 ; 3 uses
  %i.bfw = add i64 %i.bfv, %i.bft                 ; 2 uses
  %i.bfx = call i64 @llvm.fshl.i64(i64 %i.bfv, i64 %i.bfv, i64 21)
  %i.bfy = xor i64 %i.bfx, %i.bfw
  %i.bfz = add i64 %i.bfw, %i.bdq
  %i.bga = add i64 %i.bds, 4
  %i.bgb = add i64 %i.bga, %i.bfy                 ; 3 uses
  %i.bgc = add i64 %i.bfz, %i.bgb                 ; 2 uses
  %i.bgd = call i64 @llvm.fshl.i64(i64 %i.bgb, i64 %i.bgb, i64 16)
  %i.bge = xor i64 %i.bgd, %i.bgc                 ; 3 uses
  %i.bgf = add i64 %i.bge, %i.bgc                 ; 2 uses
  %i.bgg = call i64 @llvm.fshl.i64(i64 %i.bge, i64 %i.bge, i64 42)
  %i.bgh = xor i64 %i.bgg, %i.bgf                 ; 3 uses
  %i.bgi = add i64 %i.bgh, %i.bgf                 ; 2 uses
  %i.bgj = call i64 @llvm.fshl.i64(i64 %i.bgh, i64 %i.bgh, i64 12)
  %i.bgk = xor i64 %i.bgj, %i.bgi                 ; 3 uses
  %i.bgl = add i64 %i.bgk, %i.bgi                 ; 2 uses
  %i.bgm = call i64 @llvm.fshl.i64(i64 %i.bgk, i64 %i.bgk, i64 31)
  %i.bgn = xor i64 %i.bgm, %i.bgl
  %i.bgo = add i64 %i.bgl, %i.bds                 ; 2 uses
  %i.bgp = add i64 %i.bdo, 5
  %i.bgq = add i64 %i.bgp, %i.bgn
  store i64 %i.bgo, ptr %i.ah, align 8, !noalias !929
  store i64 %i.bgq, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !tbaa !175, !noalias !929
  br label %_ZN3gmx19ThreeFry2x64GeneralILj20ELj0EEclEv.exit.i.i.i.i.2

_ZN3gmx19ThreeFry2x64GeneralILj20ELj0EEclEv.exit.i.i.i.i.2: ; preds = %.noexc132.2, %._crit_edge.i.i.i.i.i.2
  %i.bgr = phi i64 [ %i.bdq, %.noexc132.2 ], [ %i.avg, %._crit_edge.i.i.i.i.i.2 ]
  %i.bgs = phi i64 [ %i.bdo, %.noexc132.2 ], [ %i.avh, %._crit_edge.i.i.i.i.i.2 ]
  %i.bgt = phi i64 [ %i.bgo, %.noexc132.2 ], [ %.pre.i.i.i.i.i.2, %._crit_edge.i.i.i.i.i.2 ]
  %i.bgu = phi i32 [ 1, %.noexc132.2 ], [ %i.bdn, %._crit_edge.i.i.i.i.i.2 ]
  store i32 %i.bgu, ptr %i.ai, align 8, !tbaa !517, !noalias !929
  br label %_ZN3gmx27TabulatedNormalDistributionIfLj14EEclINS_12ThreeFry2x64ILj0EEEEEfRT_.exit.i.i.2

_ZN3gmx27TabulatedNormalDistributionIfLj14EEclINS_12ThreeFry2x64ILj0EEEEEfRT_.exit.i.i.2: ; preds = %bb.cn, %_ZN3gmx19ThreeFry2x64GeneralILj20ELj0EEclEv.exit.i.i.i.i.2
  %i.bgv = phi i64 [ %i.bgr, %_ZN3gmx19ThreeFry2x64GeneralILj20ELj0EEclEv.exit.i.i.i.i.2 ], [ %i.avg, %bb.cn ]
  %i.bgw = phi i64 [ %i.bgs, %_ZN3gmx19ThreeFry2x64GeneralILj20ELj0EEclEv.exit.i.i.i.i.2 ], [ %i.avh, %bb.cn ]
  %i.bgx = phi i64 [ %i.bgt, %_ZN3gmx19ThreeFry2x64GeneralILj20ELj0EEclEv.exit.i.i.i.i.2 ], [ %.sroa.6.2.i.i.1, %bb.cn ] ; 2 uses
  %i.bgy = and i64 %i.bgx, 16383
  %i.bgz = getelementptr inbounds nuw [4 x i8], ptr @_ZN3gmx27TabulatedNormalDistributionIfLj14EE8c_table_E, i64 %i.bgy
  %i.bha = load float, ptr %i.bgz, align 4, !tbaa !177, !noalias !929
  %i.bhb = lshr i64 %i.bgx, 14
  %i.bhc = fadd float %i.bha, 0.000000e+00
  %i.bhd = fmul float %i.bdk, %i.bhc
  %i.bhe = fpext float %i.bhd to double
  %i.bhf = call double @llvm.fmuladd.f64(double %i.bdd, double %i.bdg, double %i.bhe)
  %i.bhg = fptrunc double %i.bhf to float         ; 2 uses
  store float %i.bhg, ptr %i.azq, align 4, !tbaa !177, !alias.scope !930, !noalias !931
  %i.bhh = getelementptr inbounds nuw i8, ptr %i.bas, i64 8
  %i.bhi = load float, ptr %i.bhh, align 4, !tbaa !177, !alias.scope !940, !noalias !941
  %i.bhj = fpext float %i.bhi to double
  %i.bhk = fadd float %i.bdc, %i.bhg
  %i.bhl = fpext float %i.bhk to double
  %i.bhm = fmul double %i.bhl, 5.000000e-01
  %i.bhn = call double @llvm.fmuladd.f64(double %i.bhm, double %i.avd, double %i.bhj)
  %i.bho = fptrunc double %i.bhn to float
  br label %.split9.us.i.i.loopexit

bb.cq:                                            ; preds = %bb.cm
  store float 0.000000e+00, ptr %i.azq, align 4, !tbaa !177, !alias.scope !930, !noalias !931
  %i.bhp = getelementptr inbounds nuw i8, ptr %i.bas, i64 8
  %i.bhq = load float, ptr %i.bhp, align 4, !tbaa !177, !alias.scope !940, !noalias !941
  br label %.split9.us.i.i.loopexit

.split.i.i.preheader:                             ; preds = %bb.ci
  %i.bhr = load i32, ptr %i.bap, align 4, !tbaa !66, !noalias !929
  %.not72.i.i.not = icmp eq i32 %i.bhr, 0         ; 2 uses
  br i1 %.not72.i.i.not, label %_ZN3gmx27TabulatedNormalDistributionIfLj14EEclINS_12ThreeFry2x64ILj0EEEEEfRT_.exit.i.i, label %bb.cr

_ZN3gmx27TabulatedNormalDistributionIfLj14EEclINS_12ThreeFry2x64ILj0EEEEEfRT_.exit.i.i: ; preds = %.split.i.i.preheader
  %i.bhs = load float, ptr %i.baq, align 4, !tbaa !177, !alias.scope !937, !noalias !938
  %i.bht = load float, ptr %i.bar, align 4, !tbaa !177, !alias.scope !918, !noalias !939
  %i.bhu = call float @llvm.fmuladd.f32(float %i.ayq, float %i.bhs, float %i.bht)
  %i.bhv = call float @llvm.fmuladd.f32(float %i.bhu, float %i.apv, float %i.azh)
  %i.bhw = fsub float %i.bhv, %i.bal              ; 2 uses
  %i.bhx = fpext float %i.bhw to double
  %i.bhy = load ptr, ptr %i.aj, align 8, !tbaa !29, !noalias !929
  %i.bhz = getelementptr inbounds nuw [8 x i8], ptr %i.bhy, i64 %i.azd
  %i.bia = load double, ptr %i.bhz, align 8, !tbaa !289, !noalias !929
  %i.bib = load ptr, ptr %i.ak, align 8, !tbaa !25, !noalias !929
  %i.bic = getelementptr inbounds nuw [4 x i8], ptr %i.bib, i64 %i.azd
  %i.bid = load float, ptr %i.bic, align 4, !tbaa !291, !noalias !929
  %i.bie = fmul float %i.ayr, %i.bid
  store i32 1, ptr %i.ai, align 8, !tbaa !517, !noalias !929
  %i.bif = and i64 %i.aym, 16383
  %i.big = getelementptr inbounds nuw [4 x i8], ptr @_ZN3gmx27TabulatedNormalDistributionIfLj14EE8c_table_E, i64 %i.bif
  %i.bih = load float, ptr %i.big, align 4, !tbaa !177, !noalias !929
  %i.bii = lshr i64 %i.aym, 14
  %i.bij = fadd float %i.bih, 0.000000e+00
  %i.bik = fmul float %i.bie, %i.bij
  %i.bil = fpext float %i.bik to double
  %i.bim = call double @llvm.fmuladd.f64(double %i.bhx, double %i.bia, double %i.bil)
  %i.bin = fptrunc double %i.bim to float         ; 2 uses
  store float %i.bin, ptr %i.aze, align 4, !tbaa !177, !alias.scope !930, !noalias !931
  %i.bio = load float, ptr %i.bas, align 4, !tbaa !177, !alias.scope !940, !noalias !941
  %i.bip = fpext float %i.bio to double
  %i.biq = fadd float %i.bhw, %i.bin
  %i.bir = fpext float %i.biq to double
  %i.bis = fmul double %i.bir, 5.000000e-01
  %i.bit = call double @llvm.fmuladd.f64(double %i.bis, double %i.avd, double %i.bip)
  %i.biu = fptrunc double %i.bit to float
  br label %bb.cj

bb.cr:                                            ; preds = %.split.i.i.preheader
  store float 0.000000e+00, ptr %i.aze, align 4, !tbaa !177, !alias.scope !930, !noalias !931
  %i.biv = load float, ptr %i.bas, align 4, !tbaa !177, !alias.scope !940, !noalias !941
  br label %bb.cj

_ZL17doSDUpdateGeneralIL8SDUpdate2EEvRK12gmx_stochd_tiifN3gmx8ArrayRefIA3_KiEENS5_IKfEENS5_IK12ParticleTypeEENS5_IKtEESF_SF_PKNS4_11BasicVectorIfEESJ_PSH_SK_SJ_liPS6_fRKNS4_14BasicMatrix3x3IfEE.exit.i: ; preds = %.split9.us.i.i, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20, !noalias !929
  br label %.loopexit

.loopexit:                                        ; preds = %.split14.us.i.i, %_ZL17doSDUpdateGeneralIL8SDUpdate2EEvRK12gmx_stochd_tiifN3gmx8ArrayRefIA3_KiEENS5_IKfEENS5_IK12ParticleTypeEENS5_IKtEESF_SF_PKNS4_11BasicVectorIfEESJ_PSH_SK_SJ_liPS6_fRKNS4_14BasicMatrix3x3IfEE.exit.i, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20, !noalias !892
  br label %_ZL12do_update_mdiiflPKN3gmx11BasicVectorIfEEPS1_S4_S3_19TemperatureCoupling16PressureCouplingiiNS_8ArrayRefIKtEE16AccelerationTypeS9_NS7_IS2_EEPA3_KfNS7_ISC_EESB_PK14gmx_ekindata_tSE_PKdRKNS_14BasicMatrix3x3IfEEb.exit

bb.cs:                                            ; preds = %bb.cp
  %i.biw = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %.body

bb.ct:                                            ; preds = %bb.c
  %i.bix = load float, ptr %8, align 4, !tbaa !177 ; 7 uses
  %i.biy = load i64, ptr %9, align 8, !tbaa !64   ; 2 uses
  %i.biz = load ptr, ptr %i.r, align 8, !tbaa !254
  %i.bja = load ptr, ptr %10, align 8, !tbaa !60
  %i.bjb = load ptr, ptr %15, align 8, !tbaa !58
  %i.bjc = load ptr, ptr %5, align 8, !tbaa !225  ; 2 uses
  %i.bjd = load ptr, ptr %i.s, align 8, !tbaa !225
  %i.bje = load ptr, ptr %i.w, align 8, !tbaa !225 ; 2 uses
  %i.bjf = load ptr, ptr %i.x, align 8, !tbaa !225
  %i.bjg = load float, ptr %i.y, align 8, !tbaa !286
  %.fr286 = freeze float %i.bjg                   ; 2 uses
  %i.bjh = load ptr, ptr %i.z, align 8, !tbaa !15
  %i.bji = load i64, ptr %i.aa, align 8, !tbaa !509
  %i.bjj = load ptr, ptr %16, align 8, !tbaa !73  ; 2 uses
  %.not88 = icmp eq ptr %i.bjj, null
  br i1 %.not88, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.bjk = getelementptr inbounds nuw i8, ptr %i.bjj, i64 896
  %i.bjl = load ptr, ptr %i.bjk, align 8, !tbaa !510
  br label %bb.cv

bb.cv:                                            ; preds = %bb.ct, %bb.cu
  %i.bjm = phi ptr [ %i.bjl, %bb.cu ], [ null, %bb.ct ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !942)
  call void @llvm.experimental.noalias.scope.decl(metadata !945)
  call void @llvm.experimental.noalias.scope.decl(metadata !947)
  call void @llvm.experimental.noalias.scope.decl(metadata !949)
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #20, !noalias !951
  %sext = shl i64 %i.bji, 32
  %i.bjn = ashr exact i64 %sext, 32               ; 2 uses
  store i64 %i.bjn, ptr %19, align 8, !noalias !951
  store i64 12288, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !175, !noalias !951
  %i.bjo = fdiv float 1.000000e+00, %.fr286       ; 3 uses
  %i.bjp = icmp slt i32 %i.cf, %spec.select.i
  br i1 %i.bjp, label %.lr.ph.i, label %.loopexit269

.lr.ph.i:                                         ; preds = %bb.cv
  %i.bjq = fcmp une float %.fr286, 0.000000e+00
  %.not.i138 = icmp eq ptr %i.bjm, null
  %i.bjr = icmp eq ptr %i.bjc, %i.bjd
  %i.bjs = icmp eq ptr %i.bje, %i.bjf
  %i.bjt = fpext float %i.bix to double           ; 3 uses
  %i.bju = sext i32 %i.cf to i64                  ; 2 uses
  %i.bjv = sub i32 %spec.select.i, %i.cf
  br label %bb.cw

bb.cw:                                            ; preds = %.split13.us.i, %.lr.ph.i
  %i.bjw = phi i64 [ 12288, %.lr.ph.i ], [ %i.bxe, %.split13.us.i ] ; 10 uses
  %i.bjx = phi i64 [ %i.bjn, %.lr.ph.i ], [ %i.bxf, %.split13.us.i ] ; 10 uses
  %indvars.iv25.i = phi i64 [ %i.bju, %.lr.ph.i ], [ %indvars.iv.next26.i, %.split13.us.i ] ; 11 uses
  %indvar.i = phi i64 [ 0, %.lr.ph.i ], [ %indvar.next.i, %.split13.us.i ] ; 2 uses
  %.05816.i = phi i32 [ 0, %.lr.ph.i ], [ %.1.i, %.split13.us.i ]
  %.05915.i = phi i32 [ 0, %.lr.ph.i ], [ %.160.i, %.split13.us.i ]
  %.sroa.8.014.i = phi i64 [ 0, %.lr.ph.i ], [ %.us-phi.i, %.split13.us.i ] ; 3 uses
  %i.bjy = add nsw i64 %indvar.i, %i.bju
  %i.bjz = mul i64 %i.bjy, 12                     ; 3 uses
  %scevgep20.i = getelementptr i8, ptr %i.cp, i64 %i.bjz
  %scevgep21.i = getelementptr i8, ptr %i.co, i64 %i.bjz
  %scevgep.i = getelementptr i8, ptr %i.cr, i64 %i.bjz
  br i1 %.not.i138, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.bka = getelementptr inbounds [4 x i8], ptr %i.bjm, i64 %indvars.iv25.i
  %i.bkb = load i32, ptr %i.bka, align 4, !tbaa !66, !noalias !951
  %i.bkc = sext i32 %i.bkb to i64
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %i.bkd = phi i64 [ %i.bkc, %bb.cx ], [ %indvars.iv25.i, %bb.cw ] ; 2 uses
  store i64 %i.biy, ptr %i.ab, align 8, !noalias !951
  store i64 %i.bkd, ptr %.sroa.74.0..sroa_idx.i.i, align 8, !tbaa !175, !noalias !951
  %i.bke = add i64 %i.bjx, %i.biy
  %i.bkf = xor i64 %i.bjw, %i.bjx
  %i.bkg = xor i64 %i.bkf, 2004413935125273122    ; 4 uses
  %i.bkh = add i64 %i.bkd, %i.bjw                 ; 3 uses
  %i.bki = add i64 %i.bke, %i.bkh                 ; 2 uses
  %i.bkj = call i64 @llvm.fshl.i64(i64 %i.bkh, i64 %i.bkh, i64 16)
  %i.bkk = xor i64 %i.bkj, %i.bki                 ; 3 uses
  %i.bkl = add i64 %i.bkk, %i.bki                 ; 2 uses
  %i.bkm = call i64 @llvm.fshl.i64(i64 %i.bkk, i64 %i.bkk, i64 42)
  %i.bkn = xor i64 %i.bkm, %i.bkl                 ; 3 uses
  %i.bko = add i64 %i.bkn, %i.bkl                 ; 2 uses
  %i.bkp = call i64 @llvm.fshl.i64(i64 %i.bkn, i64 %i.bkn, i64 12)
  %i.bkq = xor i64 %i.bkp, %i.bko                 ; 3 uses
  %i.bkr = add i64 %i.bkq, %i.bko                 ; 2 uses
  %i.bks = call i64 @llvm.fshl.i64(i64 %i.bkq, i64 %i.bkq, i64 31)
  %i.bkt = xor i64 %i.bks, %i.bkr
  %i.bku = add i64 %i.bkr, %i.bjw
  %i.bkv = add i64 %i.bkg, 1
  %i.bkw = add i64 %i.bkv, %i.bkt                 ; 3 uses
  %i.bkx = add i64 %i.bku, %i.bkw                 ; 2 uses
  %i.bky = call i64 @llvm.fshl.i64(i64 %i.bkw, i64 %i.bkw, i64 16)
  %i.bkz = xor i64 %i.bky, %i.bkx                 ; 3 uses
  %i.bla = add i64 %i.bkz, %i.bkx                 ; 2 uses
  %i.blb = call i64 @llvm.fshl.i64(i64 %i.bkz, i64 %i.bkz, i64 32)
  %i.blc = xor i64 %i.blb, %i.bla                 ; 3 uses
  %i.bld = add i64 %i.blc, %i.bla                 ; 2 uses
  %i.ble = call i64 @llvm.fshl.i64(i64 %i.blc, i64 %i.blc, i64 24)
  %i.blf = xor i64 %i.ble, %i.bld                 ; 3 uses
  %i.blg = add i64 %i.blf, %i.bld                 ; 2 uses
  %i.blh = call i64 @llvm.fshl.i64(i64 %i.blf, i64 %i.blf, i64 21)
  %i.bli = xor i64 %i.blh, %i.blg
  %i.blj = add i64 %i.blg, %i.bkg
  %i.blk = add i64 %i.bjx, 2
  %i.bll = add i64 %i.blk, %i.bli                 ; 3 uses
  %i.blm = add i64 %i.blj, %i.bll                 ; 2 uses
  %i.bln = call i64 @llvm.fshl.i64(i64 %i.bll, i64 %i.bll, i64 16)
  %i.blo = xor i64 %i.bln, %i.blm                 ; 3 uses
  %i.blp = add i64 %i.blo, %i.blm                 ; 2 uses
  %i.blq = call i64 @llvm.fshl.i64(i64 %i.blo, i64 %i.blo, i64 42)
  %i.blr = xor i64 %i.blq, %i.blp                 ; 3 uses
  %i.bls = add i64 %i.blr, %i.blp                 ; 2 uses
  %i.blt = call i64 @llvm.fshl.i64(i64 %i.blr, i64 %i.blr, i64 12)
  %i.blu = xor i64 %i.blt, %i.bls                 ; 3 uses
  %i.blv = add i64 %i.blu, %i.bls                 ; 2 uses
  %i.blw = call i64 @llvm.fshl.i64(i64 %i.blu, i64 %i.blu, i64 31)
  %i.blx = xor i64 %i.blw, %i.blv
  %i.bly = add i64 %i.blv, %i.bjx
  %i.blz = add i64 %i.bjw, 3
  %i.bma = add i64 %i.blz, %i.blx                 ; 3 uses
  %i.bmb = add i64 %i.bly, %i.bma                 ; 2 uses
  %i.bmc = call i64 @llvm.fshl.i64(i64 %i.bma, i64 %i.bma, i64 16)
  %i.bmd = xor i64 %i.bmc, %i.bmb                 ; 3 uses
  %i.bme = add i64 %i.bmd, %i.bmb                 ; 2 uses
  %i.bmf = call i64 @llvm.fshl.i64(i64 %i.bmd, i64 %i.bmd, i64 32)
  %i.bmg = xor i64 %i.bmf, %i.bme                 ; 3 uses
  %i.bmh = add i64 %i.bmg, %i.bme                 ; 2 uses
  %i.bmi = call i64 @llvm.fshl.i64(i64 %i.bmg, i64 %i.bmg, i64 24)
  %i.bmj = xor i64 %i.bmi, %i.bmh                 ; 3 uses
  %i.bmk = add i64 %i.bmj, %i.bmh                 ; 2 uses
  %i.bml = call i64 @llvm.fshl.i64(i64 %i.bmj, i64 %i.bmj, i64 21)
  %i.bmm = xor i64 %i.bml, %i.bmk
  %i.bmn = add i64 %i.bmk, %i.bjw
  %i.bmo = add i64 %i.bkg, 4
  %i.bmp = add i64 %i.bmo, %i.bmm                 ; 3 uses
  %i.bmq = add i64 %i.bmn, %i.bmp                 ; 2 uses
  %i.bmr = call i64 @llvm.fshl.i64(i64 %i.bmp, i64 %i.bmp, i64 16)
  %i.bms = xor i64 %i.bmr, %i.bmq                 ; 3 uses
  %i.bmt = add i64 %i.bms, %i.bmq                 ; 2 uses
  %i.bmu = call i64 @llvm.fshl.i64(i64 %i.bms, i64 %i.bms, i64 42)
  %i.bmv = xor i64 %i.bmu, %i.bmt                 ; 3 uses
  %i.bmw = add i64 %i.bmv, %i.bmt                 ; 2 uses
  %i.bmx = call i64 @llvm.fshl.i64(i64 %i.bmv, i64 %i.bmv, i64 12)
  %i.bmy = xor i64 %i.bmx, %i.bmw                 ; 3 uses
  %i.bmz = add i64 %i.bmy, %i.bmw                 ; 2 uses
  %i.bna = call i64 @llvm.fshl.i64(i64 %i.bmy, i64 %i.bmy, i64 31)
  %i.bnb = xor i64 %i.bna, %i.bmz
  %i.bnc = add i64 %i.bmz, %i.bkg                 ; 5 uses
  %i.bnd = add i64 %i.bjx, 5
  %i.bne = add i64 %i.bnd, %i.bnb
  store i64 %i.bnc, ptr %i.ac, align 8, !noalias !951
  store i64 %i.bne, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i137, align 8, !tbaa !175, !noalias !951
  store i32 0, ptr %i.ad, align 8, !tbaa !517, !noalias !951
  br i1 %i.bjr, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.bnf = getelementptr inbounds [2 x i8], ptr %i.bjc, i64 %indvars.iv25.i
  %i.bng = load i16, ptr %i.bnf, align 2, !tbaa !255, !noalias !951
  %i.bnh = zext i16 %i.bng to i32
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %.160.i = phi i32 [ %.05915.i, %bb.cy ], [ %i.bnh, %bb.cz ] ; 2 uses
  br i1 %i.bjs, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.bni = getelementptr inbounds [2 x i8], ptr %i.bje, i64 %indvars.iv25.i
  %i.bnj = load i16, ptr %i.bni, align 2, !tbaa !255, !noalias !951
  %i.bnk = zext i16 %i.bnj to i32
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da
  %.1.i = phi i32 [ %.05816.i, %bb.da ], [ %i.bnk, %bb.db ] ; 2 uses
  %i.bnl = getelementptr inbounds [4 x i8], ptr %i.bjb, i64 %indvars.iv25.i
  %i.bnm = zext nneg i32 %.160.i to i64
  %i.bnn = getelementptr inbounds nuw [12 x i8], ptr %i.biz, i64 %i.bnm ; 6 uses
  %i.bno = getelementptr inbounds [4 x i8], ptr %i.bja, i64 %indvars.iv25.i ; 3 uses
  %i.bnp = getelementptr inbounds [12 x i8], ptr %i.cs, i64 %indvars.iv25.i ; 7 uses
  %i.bnq = zext nneg i32 %.1.i to i64
  %i.bnr = getelementptr inbounds nuw [4 x i8], ptr %i.bjh, i64 %i.bnq ; 7 uses
  %i.bns = getelementptr inbounds [12 x i8], ptr %i.cr, i64 %indvars.iv25.i ; 12 uses
  %i.bnt = getelementptr inbounds [12 x i8], ptr %i.co, i64 %indvars.iv25.i ; 12 uses
  %i.bnu = getelementptr inbounds [12 x i8], ptr %i.cp, i64 %indvars.iv25.i ; 7 uses
  %i.bnv = load i32, ptr %i.bnl, align 4, !tbaa !520, !noalias !951
  %i.bnw = icmp eq i32 %i.bnv, 2
  br i1 %i.bnw, label %.split.us.preheader.i, label %.split.i.preheader

.split.i.preheader:                               ; preds = %bb.dc
  %i.bnx = load i32, ptr %i.bnn, align 4, !tbaa !66, !noalias !951
  %.not64.i.us.not = icmp ne i32 %i.bnx, 0        ; 4 uses
  br i1 %i.bjq, label %.split.i.us.preheader, label %.split.i.preheader287

.split.i.us.preheader:                            ; preds = %.split.i.preheader
  br i1 %.not64.i.us.not, label %.thread, label %bb.dd

bb.dd:                                            ; preds = %.split.i.us.preheader
  %i.bny = load float, ptr %i.bnp, align 4, !tbaa !177, !alias.scope !949, !noalias !952
  %i.bnz = load float, ptr %i.bnr, align 4, !tbaa !177, !noalias !951
  store i32 1, ptr %i.ad, align 8, !tbaa !517, !noalias !951
  %i.boa = and i64 %i.bnc, 16383
  %i.bob = getelementptr inbounds nuw [4 x i8], ptr @_ZN3gmx27TabulatedNormalDistributionIfLj14EE8c_table_E, i64 %i.boa
  %i.boc = load float, ptr %i.bob, align 4, !tbaa !177, !noalias !951
  %i.bod = fadd float %i.boc, 0.000000e+00
  %i.boe = fmul float %i.bnz, %i.bod
  %i.bof = call float @llvm.fmuladd.f32(float %i.bjo, float %i.bny, float %i.boe) ; 2 uses
  %.sroa.8.2.i.us = lshr i64 %i.bnc, 14           ; 2 uses
  store float %i.bof, ptr %i.bns, align 4, !tbaa !177, !alias.scope !947, !noalias !953
  %i.bog = load float, ptr %i.bnt, align 4, !tbaa !177, !alias.scope !942, !noalias !954
  %i.boh = call float @llvm.fmuladd.f32(float %i.bof, float %i.bix, float %i.bog)
  store float %i.boh, ptr %i.bnu, align 4, !tbaa !177, !alias.scope !945, !noalias !955
  %i.boi = getelementptr inbounds nuw i8, ptr %i.bnn, i64 4
  %i.boj = load i32, ptr %i.boi, align 4, !tbaa !66, !noalias !951
  %.not64.i.us.1 = icmp eq i32 %i.boj, 0
  br i1 %.not64.i.us.1, label %._crit_edge.i.i.i.us.1, label %bb.de

.thread:                                          ; preds = %.split.i.us.preheader
  store float 0.000000e+00, ptr %i.bns, align 4, !tbaa !177, !alias.scope !947, !noalias !953
  %i.bok = load float, ptr %i.bnt, align 4, !tbaa !177, !alias.scope !942, !noalias !954
  store float %i.bok, ptr %i.bnu, align 4, !tbaa !177, !alias.scope !945, !noalias !955
  %i.bol = getelementptr inbounds nuw i8, ptr %i.bnn, i64 4
  %i.bom = load i32, ptr %i.bol, align 4, !tbaa !66, !noalias !951
  %.not64.i.us.1356 = icmp eq i32 %i.bom, 0
  br i1 %.not64.i.us.1356, label %_ZN3gmx19ThreeFry2x64GeneralILj20ELj0EEclEv.exit.i.i.i.us.1, label %bb.de

._crit_edge.i.i.i.us.1:                           ; preds = %bb.dd
  %i.bon = getelementptr inbounds nuw i8, ptr %i.bnp, i64 4
  %i.boo = load float, ptr %i.bon, align 4, !tbaa !177, !alias.scope !949, !noalias !952
  %i.bop = load float, ptr %i.bnr, align 4, !tbaa !177, !noalias !951
  br label %_ZN3gmx27TabulatedNormalDistributionIfLj14EEclINS_12ThreeFry2x64ILj0EEEEEfRT_.exit.i.us.1

_ZN3gmx19ThreeFry2x64GeneralILj20ELj0EEclEv.exit.i.i.i.us.1: ; preds = %.thread
  %i.boq = getelementptr inbounds nuw i8, ptr %i.bnp, i64 4
  %i.bor = load float, ptr %i.boq, align 4, !tbaa !177, !alias.scope !949, !noalias !952
  %i.bos = load float, ptr %i.bnr, align 4, !tbaa !177, !noalias !951
  %.pre.i.i.i.i.us.1 = load i64, ptr %i.ac, align 8, !tbaa !64, !noalias !951
  store i32 1, ptr %i.ad, align 8, !tbaa !517, !noalias !951
  br label %_ZN3gmx27TabulatedNormalDistributionIfLj14EEclINS_12ThreeFry2x64ILj0EEEEEfRT_.exit.i.us.1

_ZN3gmx27TabulatedNormalDistributionIfLj14EEclINS_12ThreeFry2x64ILj0EEEEEfRT_.exit.i.us.1: ; preds = %_ZN3gmx19ThreeFry2x64GeneralILj20ELj0EEclEv.exit.i.i.i.us.1, %._crit_edge.i.i.i.us.1
  %i.bot = phi float [ %i.bop, %._crit_edge.i.i.i.us.1 ], [ %i.bos, %_ZN3gmx19ThreeFry2x64GeneralILj20ELj0EEclEv.exit.i.i.i.us.1 ]
  %i.bou = phi float [ %i.boo, %._crit_edge.i.i.i.us.1 ], [ %i.bor, %_ZN3gmx19ThreeFry2x64GeneralILj20ELj0EEclEv.exit.i.i.i.us.1 ]
  %i.bov = phi i64 [ %.sroa.8.2.i.us, %._crit_edge.i.i.i.us.1 ], [ %.pre.i.i.i.i.us.1, %_ZN3gmx19ThreeFry2x64GeneralILj20ELj0EEclEv.exit.i.i.i.us.1 ] ; 2 uses
  %i.bow = and i64 %i.bov, 16383
  %i.box = getelementptr inbounds nuw [4 x i8], ptr @_ZN3gmx27TabulatedNormalDistributionIfLj14EE8c_table_E, i64 %i.bow
end_hunk_4
begin_hunk_5_@_ZN3gmx6Update4Impl13update_coordsERK10t_inputreclibNS_8ArrayRefIK12ParticleTypeEENS5_IKfEENS5_IKNS_11BasicVectorIfEEEEP7t_stateRKNS_19ArrayRefWithPaddingISD_EEP8t_fcdataPK14gmx_ekindata_tRKNS_14BasicMatrix3x3IfEEiPK12gmx_domdec_tb.omp_outlined:bb.a
  %i.bsa = load float, ptr %i.bnr, align 4, !tbaa !177, !noalias !951
  %i.bsb = fpext float %i.bsa to double
  %i.bsc = fmul double %i.brz, %i.bsb
  %i.bsd = icmp ult i32 %.sroa.13.2.i.1, 14
  br i1 %i.bsd, label %bb.dn, label %_ZN3gmx27TabulatedNormalDistributionIfLj14EEclINS_12ThreeFry2x64ILj0EEEEEfRT_.exit77.i.2

bb.dn:                                            ; preds = %bb.dm
  %i.bse = icmp samesign ugt i32 %i.bro, 1
  br i1 %i.bse, label %bb.do, label %._crit_edge.i.i.i70.i.2

._crit_edge.i.i.i70.i.2:                          ; preds = %bb.dn
  %.phi.trans.insert1.i.i.i72.i.2 = zext nneg i32 %i.bro to i64
  %.phi.trans.insert2.i.i.i73.i.2 = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.phi.trans.insert1.i.i.i72.i.2
  %.pre.i.i.i74.i.2 = load i64, ptr %.phi.trans.insert2.i.i.i73.i.2, align 8, !tbaa !64, !noalias !951
  %i.bsf = add nuw nsw i32 %i.bro, 1
  br label %_ZN3gmx19ThreeFry2x64GeneralILj20ELj0EEclEv.exit.i.i75.i.2

bb.do:                                            ; preds = %bb.dn
  invoke void @_ZN3gmx8internal14highBitCounter9incrementImLm2ELj0EEEvPSt5arrayIT_XT0_EE(ptr noundef nonnull %i.ab)
          to label %.noexc142.2 unwind label %.split

.noexc142.2:                                      ; preds = %bb.do
  %.sroa.024.0.copyload.i88.i.2 = load i64, ptr %i.ab, align 8, !noalias !951
  %.sroa.74.0.copyload.i90.i.2 = load i64, ptr %.sroa.74.0..sroa_idx.i.i, align 8, !tbaa !175, !noalias !951
  %i.bsg = load i64, ptr %19, align 8, !tbaa !64, !noalias !951 ; 6 uses
  %i.bsh = add i64 %i.bsg, %.sroa.024.0.copyload.i88.i.2
  %i.bsi = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !64, !noalias !951 ; 6 uses
  %i.bsj = xor i64 %i.bsg, %i.bsi
  %i.bsk = xor i64 %i.bsj, 2004413935125273122    ; 4 uses
  %i.bsl = add i64 %i.bsi, %.sroa.74.0.copyload.i90.i.2 ; 3 uses
  %i.bsm = add i64 %i.bsh, %i.bsl                 ; 2 uses
  %i.bsn = call i64 @llvm.fshl.i64(i64 %i.bsl, i64 %i.bsl, i64 16)
  %i.bso = xor i64 %i.bsn, %i.bsm                 ; 3 uses
  %i.bsp = add i64 %i.bso, %i.bsm                 ; 2 uses
  %i.bsq = call i64 @llvm.fshl.i64(i64 %i.bso, i64 %i.bso, i64 42)
  %i.bsr = xor i64 %i.bsq, %i.bsp                 ; 3 uses
  %i.bss = add i64 %i.bsr, %i.bsp                 ; 2 uses
  %i.bst = call i64 @llvm.fshl.i64(i64 %i.bsr, i64 %i.bsr, i64 12)
  %i.bsu = xor i64 %i.bst, %i.bss                 ; 3 uses
  %i.bsv = add i64 %i.bsu, %i.bss                 ; 2 uses
  %i.bsw = call i64 @llvm.fshl.i64(i64 %i.bsu, i64 %i.bsu, i64 31)
  %i.bsx = xor i64 %i.bsw, %i.bsv
  %i.bsy = add i64 %i.bsv, %i.bsi
  %i.bsz = add i64 %i.bsk, 1
  %i.bta = add i64 %i.bsz, %i.bsx                 ; 3 uses
  %i.btb = add i64 %i.bsy, %i.bta                 ; 2 uses
  %i.btc = call i64 @llvm.fshl.i64(i64 %i.bta, i64 %i.bta, i64 16)
  %i.btd = xor i64 %i.btc, %i.btb                 ; 3 uses
  %i.bte = add i64 %i.btd, %i.btb                 ; 2 uses
  %i.btf = call i64 @llvm.fshl.i64(i64 %i.btd, i64 %i.btd, i64 32)
  %i.btg = xor i64 %i.btf, %i.bte                 ; 3 uses
  %i.bth = add i64 %i.btg, %i.bte                 ; 2 uses
  %i.bti = call i64 @llvm.fshl.i64(i64 %i.btg, i64 %i.btg, i64 24)
  %i.btj = xor i64 %i.bti, %i.bth                 ; 3 uses
  %i.btk = add i64 %i.btj, %i.bth                 ; 2 uses
  %i.btl = call i64 @llvm.fshl.i64(i64 %i.btj, i64 %i.btj, i64 21)
  %i.btm = xor i64 %i.btl, %i.btk
  %i.btn = add i64 %i.btk, %i.bsk
  %i.bto = add i64 %i.bsg, 2
  %i.btp = add i64 %i.bto, %i.btm                 ; 3 uses
  %i.btq = add i64 %i.btn, %i.btp                 ; 2 uses
  %i.btr = call i64 @llvm.fshl.i64(i64 %i.btp, i64 %i.btp, i64 16)
  %i.bts = xor i64 %i.btr, %i.btq                 ; 3 uses
  %i.btt = add i64 %i.bts, %i.btq                 ; 2 uses
  %i.btu = call i64 @llvm.fshl.i64(i64 %i.bts, i64 %i.bts, i64 42)
  %i.btv = xor i64 %i.btu, %i.btt                 ; 3 uses
  %i.btw = add i64 %i.btv, %i.btt                 ; 2 uses
  %i.btx = call i64 @llvm.fshl.i64(i64 %i.btv, i64 %i.btv, i64 12)
  %i.bty = xor i64 %i.btx, %i.btw                 ; 3 uses
  %i.btz = add i64 %i.bty, %i.btw                 ; 2 uses
  %i.bua = call i64 @llvm.fshl.i64(i64 %i.bty, i64 %i.bty, i64 31)
  %i.bub = xor i64 %i.bua, %i.btz
  %i.buc = add i64 %i.btz, %i.bsg
  %i.bud = add i64 %i.bsi, 3
  %i.bue = add i64 %i.bud, %i.bub                 ; 3 uses
  %i.buf = add i64 %i.buc, %i.bue                 ; 2 uses
  %i.bug = call i64 @llvm.fshl.i64(i64 %i.bue, i64 %i.bue, i64 16)
  %i.buh = xor i64 %i.bug, %i.buf                 ; 3 uses
  %i.bui = add i64 %i.buh, %i.buf                 ; 2 uses
  %i.buj = call i64 @llvm.fshl.i64(i64 %i.buh, i64 %i.buh, i64 32)
  %i.buk = xor i64 %i.buj, %i.bui                 ; 3 uses
  %i.bul = add i64 %i.buk, %i.bui                 ; 2 uses
  %i.bum = call i64 @llvm.fshl.i64(i64 %i.buk, i64 %i.buk, i64 24)
  %i.bun = xor i64 %i.bum, %i.bul                 ; 3 uses
  %i.buo = add i64 %i.bun, %i.bul                 ; 2 uses
  %i.bup = call i64 @llvm.fshl.i64(i64 %i.bun, i64 %i.bun, i64 21)
  %i.buq = xor i64 %i.bup, %i.buo
  %i.bur = add i64 %i.buo, %i.bsi
  %i.bus = add i64 %i.bsk, 4
  %i.but = add i64 %i.bus, %i.buq                 ; 3 uses
  %i.buu = add i64 %i.bur, %i.but                 ; 2 uses
  %i.buv = call i64 @llvm.fshl.i64(i64 %i.but, i64 %i.but, i64 16)
  %i.buw = xor i64 %i.buv, %i.buu                 ; 3 uses
  %i.bux = add i64 %i.buw, %i.buu                 ; 2 uses
  %i.buy = call i64 @llvm.fshl.i64(i64 %i.buw, i64 %i.buw, i64 42)
  %i.buz = xor i64 %i.buy, %i.bux                 ; 3 uses
  %i.bva = add i64 %i.buz, %i.bux                 ; 2 uses
  %i.bvb = call i64 @llvm.fshl.i64(i64 %i.buz, i64 %i.buz, i64 12)
  %i.bvc = xor i64 %i.bvb, %i.bva                 ; 3 uses
  %i.bvd = add i64 %i.bvc, %i.bva                 ; 2 uses
  %i.bve = call i64 @llvm.fshl.i64(i64 %i.bvc, i64 %i.bvc, i64 31)
  %i.bvf = xor i64 %i.bve, %i.bvd
  %i.bvg = add i64 %i.bvd, %i.bsk                 ; 2 uses
  %i.bvh = add i64 %i.bsg, 5
  %i.bvi = add i64 %i.bvh, %i.bvf
  store i64 %i.bvg, ptr %i.ac, align 8, !noalias !951
  store i64 %i.bvi, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i137, align 8, !tbaa !175, !noalias !951
  br label %_ZN3gmx19ThreeFry2x64GeneralILj20ELj0EEclEv.exit.i.i75.i.2

_ZN3gmx19ThreeFry2x64GeneralILj20ELj0EEclEv.exit.i.i75.i.2: ; preds = %.noexc142.2, %._crit_edge.i.i.i70.i.2
  %i.bvj = phi i64 [ %i.bsi, %.noexc142.2 ], [ %i.bjw, %._crit_edge.i.i.i70.i.2 ]
  %i.bvk = phi i64 [ %i.bsg, %.noexc142.2 ], [ %i.bjx, %._crit_edge.i.i.i70.i.2 ]
  %i.bvl = phi i64 [ %i.bvg, %.noexc142.2 ], [ %.pre.i.i.i74.i.2, %._crit_edge.i.i.i70.i.2 ]
  %i.bvm = phi i32 [ 1, %.noexc142.2 ], [ %i.bsf, %._crit_edge.i.i.i70.i.2 ]
  store i32 %i.bvm, ptr %i.ad, align 8, !tbaa !517, !noalias !951
  br label %_ZN3gmx27TabulatedNormalDistributionIfLj14EEclINS_12ThreeFry2x64ILj0EEEEEfRT_.exit77.i.2

_ZN3gmx27TabulatedNormalDistributionIfLj14EEclINS_12ThreeFry2x64ILj0EEEEEfRT_.exit77.i.2: ; preds = %bb.dm, %_ZN3gmx19ThreeFry2x64GeneralILj20ELj0EEclEv.exit.i.i75.i.2
  %i.bvn = phi i64 [ %i.bvj, %_ZN3gmx19ThreeFry2x64GeneralILj20ELj0EEclEv.exit.i.i75.i.2 ], [ %i.bjw, %bb.dm ]
  %i.bvo = phi i64 [ %i.bvk, %_ZN3gmx19ThreeFry2x64GeneralILj20ELj0EEclEv.exit.i.i75.i.2 ], [ %i.bjx, %bb.dm ]
  %i.bvp = phi i64 [ %i.bvl, %_ZN3gmx19ThreeFry2x64GeneralILj20ELj0EEclEv.exit.i.i75.i.2 ], [ %.sroa.8.3.i.1, %bb.dm ] ; 2 uses
  %i.bvq = and i64 %i.bvp, 16383
  %i.bvr = getelementptr inbounds nuw [4 x i8], ptr @_ZN3gmx27TabulatedNormalDistributionIfLj14EE8c_table_E, i64 %i.bvq
  %i.bvs = load float, ptr %i.bvr, align 4, !tbaa !177, !noalias !951
  %i.bvt = fadd float %i.bvs, 0.000000e+00
  %i.bvu = fpext float %i.bvt to double
  %i.bvv = fmul double %i.bsc, %i.bvu
  %i.bvw = call double @llvm.fmuladd.f64(double %i.bry, double %i.bjt, double %i.bvv)
  %i.bvx = fptrunc double %i.bvw to float         ; 2 uses
  %.sroa.8.2.i.2 = lshr i64 %i.bvp, 14
  %i.bvy = getelementptr inbounds nuw i8, ptr %i.bns, i64 8
  store float %i.bvx, ptr %i.bvy, align 4, !tbaa !177, !alias.scope !947, !noalias !953
  %i.bvz = getelementptr inbounds nuw i8, ptr %i.bnt, i64 8
  %i.bwa = load float, ptr %i.bvz, align 4, !tbaa !177, !alias.scope !942, !noalias !954
  %i.bwb = call float @llvm.fmuladd.f32(float %i.bvx, float %i.bix, float %i.bwa)
  br label %.split13.us.i.loopexit288

bb.dp:                                            ; preds = %bb.dl
  %i.bwc = getelementptr inbounds nuw i8, ptr %i.bns, i64 8
  store float 0.000000e+00, ptr %i.bwc, align 4, !tbaa !177, !alias.scope !947, !noalias !953
  %i.bwd = getelementptr inbounds nuw i8, ptr %i.bnt, i64 8
  %i.bwe = load float, ptr %i.bwd, align 4, !tbaa !177, !alias.scope !942, !noalias !954
  br label %.split13.us.i.loopexit288

.split.i.preheader287:                            ; preds = %.split.i.preheader
  br i1 %.not64.i.us.not, label %bb.dq, label %_ZN3gmx27TabulatedNormalDistributionIfLj14EEclINS_12ThreeFry2x64ILj0EEEEEfRT_.exit77.i

_ZN3gmx27TabulatedNormalDistributionIfLj14EEclINS_12ThreeFry2x64ILj0EEEEEfRT_.exit77.i: ; preds = %.split.i.preheader287
  %i.bwf = load float, ptr %i.bno, align 4, !tbaa !177, !noalias !951
  %i.bwg = fpext float %i.bwf to double
  %i.bwh = fmul double %i.bwg, 5.000000e-01       ; 2 uses
  %i.bwi = load float, ptr %i.bnp, align 4, !tbaa !177, !alias.scope !949, !noalias !952
  %i.bwj = fpext float %i.bwi to double
  %i.bwk = fmul double %i.bwh, %i.bwj
  %i.bwl = call double @sqrt(double noundef %i.bwh) #20, !noalias !951
  %i.bwm = load float, ptr %i.bnr, align 4, !tbaa !177, !noalias !951
  %i.bwn = fpext float %i.bwm to double
  %i.bwo = fmul double %i.bwl, %i.bwn
  store i32 1, ptr %i.ad, align 8, !tbaa !517, !noalias !951
  %i.bwp = and i64 %i.bnc, 16383
  %i.bwq = getelementptr inbounds nuw [4 x i8], ptr @_ZN3gmx27TabulatedNormalDistributionIfLj14EE8c_table_E, i64 %i.bwp
  %i.bwr = load float, ptr %i.bwq, align 4, !tbaa !177, !noalias !951
  %i.bws = fadd float %i.bwr, 0.000000e+00
  %i.bwt = fpext float %i.bws to double
  %i.bwu = fmul double %i.bwo, %i.bwt
  %i.bwv = call double @llvm.fmuladd.f64(double %i.bwk, double %i.bjt, double %i.bwu)
  %i.bww = fptrunc double %i.bwv to float         ; 2 uses
  %.sroa.8.2.i = lshr i64 %i.bnc, 14
  store float %i.bww, ptr %i.bns, align 4, !tbaa !177, !alias.scope !947, !noalias !953
  %i.bwx = load float, ptr %i.bnt, align 4, !tbaa !177, !alias.scope !942, !noalias !954
  %i.bwy = call float @llvm.fmuladd.f32(float %i.bww, float %i.bix, float %i.bwx)
  br label %bb.di

bb.dq:                                            ; preds = %.split.i.preheader287
  store float 0.000000e+00, ptr %i.bns, align 4, !tbaa !177, !alias.scope !947, !noalias !953
  %i.bwz = load float, ptr %i.bnt, align 4, !tbaa !177, !alias.scope !942, !noalias !954
  br label %bb.di

.split13.us.i.loopexit:                           ; preds = %_ZN3gmx27TabulatedNormalDistributionIfLj14EEclINS_12ThreeFry2x64ILj0EEEEEfRT_.exit.i.us.2, %bb.dh
  %.sink.i139.us.2 = phi float [ %i.bqc, %_ZN3gmx27TabulatedNormalDistributionIfLj14EEclINS_12ThreeFry2x64ILj0EEEEEfRT_.exit.i.us.2 ], [ %i.bqf, %bb.dh ]
  %.sroa.8.3.i.us.2 = phi i64 [ %.sroa.8.2.i.us.2, %_ZN3gmx27TabulatedNormalDistributionIfLj14EEclINS_12ThreeFry2x64ILj0EEEEEfRT_.exit.i.us.2 ], [ %.sroa.8.3.i.us.1, %bb.dh ]
  %i.bxa = getelementptr inbounds nuw i8, ptr %i.bnu, i64 8
  store float %.sink.i139.us.2, ptr %i.bxa, align 4, !tbaa !177, !alias.scope !945, !noalias !955
  br label %.split13.us.i

.split13.us.i.loopexit288:                        ; preds = %_ZN3gmx27TabulatedNormalDistributionIfLj14EEclINS_12ThreeFry2x64ILj0EEEEEfRT_.exit77.i.2, %bb.dp
  %.sink.i139.2 = phi float [ %i.bwb, %_ZN3gmx27TabulatedNormalDistributionIfLj14EEclINS_12ThreeFry2x64ILj0EEEEEfRT_.exit77.i.2 ], [ %i.bwe, %bb.dp ]
  %i.bxb = phi i64 [ %i.bvn, %_ZN3gmx27TabulatedNormalDistributionIfLj14EEclINS_12ThreeFry2x64ILj0EEEEEfRT_.exit77.i.2 ], [ %i.bjw, %bb.dp ]
  %i.bxc = phi i64 [ %i.bvo, %_ZN3gmx27TabulatedNormalDistributionIfLj14EEclINS_12ThreeFry2x64ILj0EEEEEfRT_.exit77.i.2 ], [ %i.bjx, %bb.dp ]
  %.sroa.8.3.i.2 = phi i64 [ %.sroa.8.2.i.2, %_ZN3gmx27TabulatedNormalDistributionIfLj14EEclINS_12ThreeFry2x64ILj0EEEEEfRT_.exit77.i.2 ], [ %.sroa.8.3.i.1, %bb.dp ]
  %i.bxd = getelementptr inbounds nuw i8, ptr %i.bnu, i64 8
  store float %.sink.i139.2, ptr %i.bxd, align 4, !tbaa !177, !alias.scope !945, !noalias !955
  br label %.split13.us.i

.split13.us.i:                                    ; preds = %.split13.us.i.loopexit288, %.split13.us.i.loopexit, %.split.us.preheader.i
  %i.bxe = phi i64 [ %i.bjw, %.split.us.preheader.i ], [ %i.bjw, %.split13.us.i.loopexit ], [ %i.bxb, %.split13.us.i.loopexit288 ]
  %i.bxf = phi i64 [ %i.bjx, %.split.us.preheader.i ], [ %i.bjx, %.split13.us.i.loopexit ], [ %i.bxc, %.split13.us.i.loopexit288 ]
  %.us-phi.i = phi i64 [ %.sroa.8.014.i, %.split.us.preheader.i ], [ %.sroa.8.3.i.us.2, %.split13.us.i.loopexit ], [ %.sroa.8.3.i.2, %.split13.us.i.loopexit288 ]
  %indvars.iv.next26.i = add nsw i64 %indvars.iv25.i, 1
  %indvar.next.i = add nuw nsw i64 %indvar.i, 1   ; 2 uses
  %lftr.wideiv311 = trunc i64 %indvar.next.i to i32
  %exitcond312 = icmp eq i32 %i.bjv, %lftr.wideiv311
  br i1 %exitcond312, label %.loopexit269, label %bb.cw, !llvm.loop !958

.loopexit269:                                     ; preds = %.split13.us.i, %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20, !noalias !951
  br label %_ZL12do_update_mdiiflPKN3gmx11BasicVectorIfEEPS1_S4_S3_19TemperatureCoupling16PressureCouplingiiNS_8ArrayRefIKtEE16AccelerationTypeS9_NS7_IS2_EEPA3_KfNS7_ISC_EESB_PK14gmx_ekindata_tSE_PKdRKNS_14BasicMatrix3x3IfEEb.exit

.split:                                           ; preds = %bb.do
  %i.bxg = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %.body

bb.dr:                                            ; preds = %bb.c, %bb.c
  %i.bxh = load i32, ptr %i.o, align 8, !tbaa !301
  %i.bxi = icmp eq i32 %i.bxh, 2
  br i1 %i.bxi, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.bxj = load i32, ptr %i.p, align 4, !tbaa !563 ; 2 uses
  %i.bxk = icmp eq i32 %i.bxj, 2
  %i.bxl = icmp eq i32 %i.bxj, 4
  %spec.select = or i1 %i.bxk, %i.bxl
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dr
  %i.bxm = phi i1 [ %spec.select, %bb.ds ], [ true, %bb.dr ] ; 2 uses
  %i.bxn = load ptr, ptr %i.q, align 8, !tbaa !959
  %i.bxo = load float, ptr %i.bxn, align 4, !tbaa !177
  %i.bxp = fdiv float 3.000000e+00, %i.bxo
  %i.bxq = fadd float %i.bxp, 1.000000e+00
  %i.bxr = load i32, ptr %18, align 4, !tbaa !66
  switch i32 %i.bxr, label %_ZL12do_update_mdiiflPKN3gmx11BasicVectorIfEEPS1_S4_S3_19TemperatureCoupling16PressureCouplingiiNS_8ArrayRefIKtEE16AccelerationTypeS9_NS7_IS2_EEPA3_KfNS7_ISC_EESB_PK14gmx_ekindata_tSE_PKdRKNS_14BasicMatrix3x3IfEEb.exit [
    i32 7, label %bb.du
    i32 8, label %bb.du
    i32 9, label %bb.eg
  ]

bb.du:                                            ; preds = %bb.dt, %bb.dt
  %i.bxs = load float, ptr %8, align 4, !tbaa !177 ; 3 uses
  %i.bxt = load ptr, ptr %i.r, align 8, !tbaa !254
  %i.bxu = load ptr, ptr %i.t, align 8, !tbaa !225 ; 2 uses
  %i.bxv = load ptr, ptr %i.u, align 8, !tbaa !225
  %i.bxw = load ptr, ptr %i.v, align 8, !tbaa !566
  %i.bxx = load ptr, ptr %10, align 8, !tbaa !60
  %i.bxy = load ptr, ptr %15, align 8, !tbaa !58
  %i.bxz = load ptr, ptr %5, align 8, !tbaa !225  ; 2 uses
  %i.bya = load ptr, ptr %i.s, align 8, !tbaa !225
  %i.byb = getelementptr inbounds nuw i8, ptr %i.cm, i64 400
  %i.byc = load float, ptr %i.byb, align 8, !tbaa !960
  call void @llvm.experimental.noalias.scope.decl(metadata !961)
  call void @llvm.experimental.noalias.scope.decl(metadata !964)
  call void @llvm.experimental.noalias.scope.decl(metadata !966)
  br i1 %i.bxm, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  %i.byd = fpext float %i.bxs to double
  %i.bye = fmul double %i.byd, 2.500000e-01
  %i.byf = fpext float %i.byc to double
  %i.byg = fmul double %i.bye, %i.byf
  %i.byh = fpext float %i.bxq to double
  %i.byi = fmul double %i.byg, %i.byh
  %i.byj = fptrunc double %i.byi to float         ; 3 uses
  %i.byk = fneg float %i.byj
  %i.byl = call noundef float @expf(float noundef %i.byk) #20, !noalias !968
  %i.bym = fmul float %i.byj, %i.byj              ; 2 uses
  %i.byn = insertelement <4 x float> poison, float %i.bym, i64 0
  %i.byo = shufflevector <4 x float> %i.byn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.byp = fdiv <4 x float> %i.byo, <float 6.000000e+00, float 2.000000e+01, float 4.200000e+01, float 7.200000e+01> ; 4 uses
  %i.byq = fdiv float %i.bym, 1.100000e+02
  %i.byr = fadd float %i.byq, 1.000000e+00
  %i.bys = extractelement <4 x float> %i.byp, i64 3
  %i.byt = call float @llvm.fmuladd.f32(float %i.bys, float %i.byr, float 1.000000e+00)
  %i.byu = extractelement <4 x float> %i.byp, i64 2
  %i.byv = call float @llvm.fmuladd.f32(float %i.byu, float %i.byt, float 1.000000e+00)
  %i.byw = extractelement <4 x float> %i.byp, i64 1
  %i.byx = call float @llvm.fmuladd.f32(float %i.byw, float %i.byv, float 1.000000e+00)
  %i.byy = extractelement <4 x float> %i.byp, i64 0
  %i.byz = call noundef float @llvm.fmuladd.f32(float %i.byy, float %i.byx, float 1.000000e+00)
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du
  %.038.i = phi float [ %i.byl, %bb.dv ], [ 1.000000e+00, %bb.du ] ; 4 uses
  %.0.i = phi float [ %i.byz, %bb.dv ], [ 1.000000e+00, %bb.du ]
  %i.bza = icmp slt i32 %i.cf, %spec.select.i
  br i1 %i.bza, label %.lr.ph.i147, label %_ZL12do_update_mdiiflPKN3gmx11BasicVectorIfEEPS1_S4_S3_19TemperatureCoupling16PressureCouplingiiNS_8ArrayRefIKtEE16AccelerationTypeS9_NS7_IS2_EEPA3_KfNS7_ISC_EESB_PK14gmx_ekindata_tSE_PKdRKNS_14BasicMatrix3x3IfEEb.exit

.lr.ph.i147:                                      ; preds = %bb.dw
  %i.bzb = icmp eq ptr %i.bxz, %i.bya
  %i.bzc = icmp eq ptr %i.bxu, %i.bxv
  %i.bzd = fpext float %.038.i to double          ; 3 uses
  %i.bze = fpext float %i.bxs to double           ; 3 uses
  %i.bzf = sext i32 %i.cf to i64                  ; 2 uses
  %i.bzg = sub i32 %spec.select.i, %i.cf
  br label %bb.dx

bb.dx:                                            ; preds = %.split6.us.i, %.lr.ph.i147
  %indvars.iv.i150 = phi i64 [ %i.bzf, %.lr.ph.i147 ], [ %indvars.iv.next.i156, %.split6.us.i ] ; 7 uses
  %indvar.i151 = phi i64 [ 0, %.lr.ph.i147 ], [ %indvar.next.i157, %.split6.us.i ] ; 2 uses
  %.0418.i = phi i32 [ 0, %.lr.ph.i147 ], [ %.1.i153, %.split6.us.i ]
  %.0427.i = phi i32 [ 0, %.lr.ph.i147 ], [ %.143.i, %.split6.us.i ]
  %i.bzh = add nsw i64 %indvar.i151, %i.bzf
  %i.bzi = mul i64 %i.bzh, 12
  %scevgep.i152 = getelementptr i8, ptr %i.cr, i64 %i.bzi
  %i.bzj = getelementptr inbounds [4 x i8], ptr %i.bxx, i64 %indvars.iv.i150
  %i.bzk = load float, ptr %i.bzj, align 4, !tbaa !177, !noalias !968
  %i.bzl = fmul float %i.bxs, %i.bzk
  br i1 %i.bzb, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.bzm = getelementptr inbounds [2 x i8], ptr %i.bxz, i64 %indvars.iv.i150
  %i.bzn = load i16, ptr %i.bzm, align 2, !tbaa !255, !noalias !968
  %i.bzo = zext i16 %i.bzn to i32
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dx
  %.143.i = phi i32 [ %.0427.i, %bb.dx ], [ %i.bzo, %bb.dy ] ; 2 uses
  br i1 %i.bzc, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.bzp = getelementptr inbounds [2 x i8], ptr %i.bxu, i64 %indvars.iv.i150
  %i.bzq = load i16, ptr %i.bzp, align 2, !tbaa !255, !noalias !968
  %i.bzr = zext i16 %i.bzq to i32
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.dz
  %.1.i153 = phi i32 [ %.0418.i, %bb.dz ], [ %i.bzr, %bb.ea ] ; 2 uses
  %i.bzs = getelementptr inbounds [4 x i8], ptr %i.bxy, i64 %indvars.iv.i150
  %i.bzt = load i32, ptr %i.bzs, align 4, !tbaa !520, !noalias !968
  %.not.i154 = icmp eq i32 %i.bzt, 2
  %i.bzu = zext nneg i32 %.143.i to i64
  %i.bzv = getelementptr inbounds nuw [12 x i8], ptr %i.bxt, i64 %i.bzu ; 3 uses
  %i.bzw = getelementptr inbounds [12 x i8], ptr %i.cr, i64 %indvars.iv.i150 ; 4 uses
  %i.bzx = fmul float %.0.i, %i.bzl               ; 3 uses
  %i.bzy = getelementptr inbounds [12 x i8], ptr %i.cs, i64 %indvars.iv.i150 ; 3 uses
  %i.bzz = zext nneg i32 %.1.i153 to i64
  %i.caa = getelementptr inbounds nuw [12 x i8], ptr %i.bxw, i64 %i.bzz ; 3 uses
  br i1 %.not.i154, label %.split.us.preheader.i160, label %.split.preheader.i

.split.preheader.i:                               ; preds = %bb.eb
  %i.cab = load i32, ptr %i.bzv, align 4, !tbaa !66, !noalias !968
  %.not44.i = icmp eq i32 %i.cab, 0
  br i1 %.not44.i, label %bb.ec, label %.split.1.i

.split.us.preheader.i160:                         ; preds = %bb.eb
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %scevgep.i152, i8 0, i64 12, i1 false), !tbaa !177, !alias.scope !964, !noalias !969
  br label %.split6.us.i

bb.ec:                                            ; preds = %.split.preheader.i
  %i.cac = load float, ptr %i.bzw, align 4, !tbaa !177, !alias.scope !964, !noalias !969
  %i.cad = fmul float %.038.i, %i.cac
  %i.cae = fpext float %i.cad to double
  %i.caf = load float, ptr %i.bzy, align 4, !tbaa !177, !alias.scope !966, !noalias !970
  %i.cag = fmul float %i.bzx, %i.caf
  %i.cah = fpext float %i.cag to double
  %i.cai = call double @llvm.fmuladd.f64(double %i.cah, double 5.000000e-01, double %i.cae)
  %i.caj = load float, ptr %i.caa, align 4, !tbaa !177, !alias.scope !961, !noalias !971
  %i.cak = fpext float %i.caj to double
  %i.cal = fmul double %i.cak, 5.000000e-01
  %i.cam = fmul double %i.cal, %i.bze
  %i.can = call double @llvm.fmuladd.f64(double %i.bzd, double %i.cai, double %i.cam)
  %i.cao = fptrunc double %i.can to float
  br label %.split.1.i

.split.1.i:                                       ; preds = %bb.ec, %.split.preheader.i
  %storemerge.i = phi float [ %i.cao, %bb.ec ], [ 0.000000e+00, %.split.preheader.i ]
  store float %storemerge.i, ptr %i.bzw, align 4, !tbaa !177, !alias.scope !964, !noalias !969
  %i.cap = getelementptr inbounds nuw i8, ptr %i.bzv, i64 4
  %i.caq = load i32, ptr %i.cap, align 4, !tbaa !66, !noalias !968
  %.not44.1.i = icmp eq i32 %i.caq, 0
  %i.car = getelementptr inbounds nuw i8, ptr %i.bzw, i64 4 ; 2 uses
  br i1 %.not44.1.i, label %bb.ed, label %.split.2.i

bb.ed:                                            ; preds = %.split.1.i
  %i.cas = load float, ptr %i.car, align 4, !tbaa !177, !alias.scope !964, !noalias !969
  %i.cat = fmul float %.038.i, %i.cas
  %i.cau = fpext float %i.cat to double
  %i.cav = getelementptr inbounds nuw i8, ptr %i.bzy, i64 4
  %i.caw = load float, ptr %i.cav, align 4, !tbaa !177, !alias.scope !966, !noalias !970
  %i.cax = fmul float %i.bzx, %i.caw
  %i.cay = fpext float %i.cax to double
  %i.caz = call double @llvm.fmuladd.f64(double %i.cay, double 5.000000e-01, double %i.cau)
  %i.cba = getelementptr inbounds nuw i8, ptr %i.caa, i64 4
  %i.cbb = load float, ptr %i.cba, align 4, !tbaa !177, !alias.scope !961, !noalias !971
  %i.cbc = fpext float %i.cbb to double
  %i.cbd = fmul double %i.cbc, 5.000000e-01
  %i.cbe = fmul double %i.cbd, %i.bze
  %i.cbf = call double @llvm.fmuladd.f64(double %i.bzd, double %i.caz, double %i.cbe)
  %i.cbg = fptrunc double %i.cbf to float
  br label %.split.2.i

.split.2.i:                                       ; preds = %bb.ed, %.split.1.i
  %.sink.i155 = phi float [ %i.cbg, %bb.ed ], [ 0.000000e+00, %.split.1.i ]
  store float %.sink.i155, ptr %i.car, align 4, !tbaa !177, !alias.scope !964, !noalias !969
  %i.cbh = getelementptr inbounds nuw i8, ptr %i.bzv, i64 8
  %i.cbi = load i32, ptr %i.cbh, align 4, !tbaa !66, !noalias !968
  %.not44.2.i = icmp eq i32 %i.cbi, 0
  %i.cbj = getelementptr inbounds nuw i8, ptr %i.bzw, i64 8 ; 3 uses
  br i1 %.not44.2.i, label %bb.ef, label %bb.ee

bb.ee:                                            ; preds = %.split.2.i
  store float 0.000000e+00, ptr %i.cbj, align 4, !tbaa !177, !alias.scope !964, !noalias !969
  br label %.split6.us.i

bb.ef:                                            ; preds = %.split.2.i
  %i.cbk = load float, ptr %i.cbj, align 4, !tbaa !177, !alias.scope !964, !noalias !969
  %i.cbl = fmul float %.038.i, %i.cbk
  %i.cbm = fpext float %i.cbl to double
  %i.cbn = getelementptr inbounds nuw i8, ptr %i.bzy, i64 8
  %i.cbo = load float, ptr %i.cbn, align 4, !tbaa !177, !alias.scope !966, !noalias !970
  %i.cbp = fmul float %i.bzx, %i.cbo
  %i.cbq = fpext float %i.cbp to double
  %i.cbr = call double @llvm.fmuladd.f64(double %i.cbq, double 5.000000e-01, double %i.cbm)
  %i.cbs = getelementptr inbounds nuw i8, ptr %i.caa, i64 8
  %i.cbt = load float, ptr %i.cbs, align 4, !tbaa !177, !alias.scope !961, !noalias !971
  %i.cbu = fpext float %i.cbt to double
  %i.cbv = fmul double %i.cbu, 5.000000e-01
  %i.cbw = fmul double %i.cbv, %i.bze
  %i.cbx = call double @llvm.fmuladd.f64(double %i.bzd, double %i.cbr, double %i.cbw)
  %i.cby = fptrunc double %i.cbx to float
  store float %i.cby, ptr %i.cbj, align 4, !tbaa !177, !alias.scope !964, !noalias !969
  br label %.split6.us.i

.split6.us.i:                                     ; preds = %bb.ef, %bb.ee, %.split.us.preheader.i160
  %indvars.iv.next.i156 = add nsw i64 %indvars.iv.i150, 1
  %indvar.next.i157 = add nuw nsw i64 %indvar.i151, 1 ; 2 uses
  %lftr.wideiv309 = trunc i64 %indvar.next.i157 to i32
  %exitcond310 = icmp eq i32 %i.bzg, %lftr.wideiv309
  br i1 %exitcond310, label %_ZL12do_update_mdiiflPKN3gmx11BasicVectorIfEEPS1_S4_S3_19TemperatureCoupling16PressureCouplingiiNS_8ArrayRefIKtEE16AccelerationTypeS9_NS7_IS2_EEPA3_KfNS7_ISC_EESB_PK14gmx_ekindata_tSE_PKdRKNS_14BasicMatrix3x3IfEEb.exit, label %bb.dx, !llvm.loop !972

bb.eg:                                            ; preds = %bb.dt
  %i.cbz = load float, ptr %8, align 4, !tbaa !177 ; 3 uses
  %i.cca = load ptr, ptr %i.r, align 8, !tbaa !254 ; 4 uses
  %i.ccb = load ptr, ptr %15, align 8, !tbaa !58  ; 2 uses
  %i.ccc = load ptr, ptr %5, align 8, !tbaa !225  ; 2 uses
  %i.ccd = load ptr, ptr %i.s, align 8, !tbaa !225
  %i.cce = getelementptr inbounds nuw i8, ptr %i.cm, i64 400
  %i.ccf = load float, ptr %i.cce, align 8, !tbaa !960
  call void @llvm.experimental.noalias.scope.decl(metadata !973)
  call void @llvm.experimental.noalias.scope.decl(metadata !976)
  call void @llvm.experimental.noalias.scope.decl(metadata !978)
  br i1 %i.bxm, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  %i.ccg = fpext float %i.cbz to double
  %i.cch = fmul double %i.ccg, 5.000000e-01
  %i.cci = fpext float %i.ccf to double
  %i.ccj = fmul double %i.cch, %i.cci
  %i.cck = fptrunc double %i.ccj to float         ; 3 uses
  %i.ccl = call noundef float @expf(float noundef %i.cck) #20, !noalias !980
  %i.ccm = fmul float %i.cck, %i.cck              ; 2 uses
  %i.ccn = insertelement <4 x float> poison, float %i.ccm, i64 0
  %i.cco = shufflevector <4 x float> %i.ccn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ccp = fdiv <4 x float> %i.cco, <float 6.000000e+00, float 2.000000e+01, float 4.200000e+01, float 7.200000e+01> ; 4 uses
  %i.ccq = fdiv float %i.ccm, 1.100000e+02
  %i.ccr = fadd float %i.ccq, 1.000000e+00
  %i.ccs = extractelement <4 x float> %i.ccp, i64 3
  %i.cct = call float @llvm.fmuladd.f32(float %i.ccs, float %i.ccr, float 1.000000e+00)
  %i.ccu = extractelement <4 x float> %i.ccp, i64 2
  %i.ccv = call float @llvm.fmuladd.f32(float %i.ccu, float %i.cct, float 1.000000e+00)
  %i.ccw = extractelement <4 x float> %i.ccp, i64 1
  %i.ccx = call float @llvm.fmuladd.f32(float %i.ccw, float %i.ccv, float 1.000000e+00)
  %i.ccy = extractelement <4 x float> %i.ccp, i64 0
  %i.ccz = call noundef float @llvm.fmuladd.f32(float %i.ccy, float %i.ccx, float 1.000000e+00)
  %i.cda = fmul float %i.cbz, %i.ccz
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.eg
  %.033.i = phi float [ %i.ccl, %bb.eh ], [ 1.000000e+00, %bb.eg ] ; 12 uses
  %.0.i165 = phi float [ %i.cda, %bb.eh ], [ %i.cbz, %bb.eg ] ; 6 uses
  %i.cdb = icmp slt i32 %i.cf, %spec.select.i
  br i1 %i.cdb, label %.lr.ph.i166, label %_ZL12do_update_mdiiflPKN3gmx11BasicVectorIfEEPS1_S4_S3_19TemperatureCoupling16PressureCouplingiiNS_8ArrayRefIKtEE16AccelerationTypeS9_NS7_IS2_EEPA3_KfNS7_ISC_EESB_PK14gmx_ekindata_tSE_PKdRKNS_14BasicMatrix3x3IfEEb.exit

.lr.ph.i166:                                      ; preds = %bb.ei
  %i.cdc = icmp eq ptr %i.ccc, %i.ccd
  %i.cdd = sext i32 %i.cf to i64                  ; 4 uses
  %i.cde = sub i32 %spec.select.i, %i.cf          ; 2 uses
  br i1 %i.cdc, label %.lr.ph.split.us.preheader.i, label %.lr.ph.split.i

.lr.ph.split.us.preheader.i:                      ; preds = %.lr.ph.i166
  %i.cdf = getelementptr inbounds nuw i8, ptr %i.cca, i64 4
  %i.cdg = getelementptr inbounds nuw i8, ptr %i.cca, i64 8
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.split42.us46.i, %.lr.ph.split.us.preheader.i
  %indvars.iv66.i = phi i64 [ %i.cdd, %.lr.ph.split.us.preheader.i ], [ %indvars.iv.next67.i, %.split42.us46.i ] ; 5 uses
  %indvar59.i = phi i64 [ 0, %.lr.ph.split.us.preheader.i ], [ %indvar.next60.i, %.split42.us46.i ] ; 2 uses
  %i.cdh = getelementptr inbounds [4 x i8], ptr %i.ccb, i64 %indvars.iv66.i
  %i.cdi = load i32, ptr %i.cdh, align 4, !tbaa !520, !noalias !980
  %.not.us.i = icmp eq i32 %i.cdi, 2
  %i.cdj = getelementptr inbounds [12 x i8], ptr %i.co, i64 %indvars.iv66.i ; 3 uses
  %i.cdk = getelementptr inbounds [12 x i8], ptr %i.cr, i64 %indvars.iv66.i ; 3 uses
  %i.cdl = getelementptr inbounds [12 x i8], ptr %i.cp, i64 %indvars.iv66.i ; 4 uses
  br i1 %.not.us.i, label %.split.us.us.preheader.i, label %.split.us47.preheader.i

.split.us47.preheader.i:                          ; preds = %.lr.ph.split.us.i
  %i.cdm = load i32, ptr %i.cca, align 4, !tbaa !66, !noalias !980
  %.not37.us.i = icmp eq i32 %i.cdm, 0
  %i.cdn = load float, ptr %i.cdj, align 4, !tbaa !177, !alias.scope !973, !noalias !981 ; 2 uses
  br i1 %.not37.us.i, label %bb.ej, label %.split.us47.1.i

.split.us.us.preheader.i:                         ; preds = %.lr.ph.split.us.i
  %i.cdo = add nsw i64 %indvar59.i, %i.cdd
  %i.cdp = mul i64 %i.cdo, 12                     ; 2 uses
  %scevgep62.i = getelementptr i8, ptr %i.co, i64 %i.cdp
  %scevgep61.i = getelementptr i8, ptr %i.cp, i64 %i.cdp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %scevgep61.i, ptr noundef nonnull readonly align 4 dereferenceable(12) %scevgep62.i, i64 12, i1 false), !tbaa !177, !alias.scope !982, !noalias !978
  br label %.split42.us46.i

bb.ej:                                            ; preds = %.split.us47.preheader.i
  %i.cdq = load float, ptr %i.cdk, align 4, !tbaa !177, !alias.scope !978, !noalias !982
  %i.cdr = fmul float %.0.i165, %i.cdq
  %i.cds = call float @llvm.fmuladd.f32(float %.033.i, float %i.cdn, float %i.cdr)
  %i.cdt = fmul float %.033.i, %i.cds
  br label %.split.us47.1.i

.split.us47.1.i:                                  ; preds = %bb.ej, %.split.us47.preheader.i
  %storemerge73.i = phi float [ %i.cdt, %bb.ej ], [ %i.cdn, %.split.us47.preheader.i ]
  store float %storemerge73.i, ptr %i.cdl, align 4, !tbaa !177, !alias.scope !976, !noalias !983
  %i.cdu = load i32, ptr %i.cdf, align 4, !tbaa !66, !noalias !980
  %.not37.us.1.i = icmp eq i32 %i.cdu, 0
  %i.cdv = getelementptr inbounds nuw i8, ptr %i.cdj, i64 4
  %i.cdw = load float, ptr %i.cdv, align 4, !tbaa !177, !alias.scope !973, !noalias !981 ; 2 uses
  br i1 %.not37.us.1.i, label %bb.ek, label %.split.us47.2.i

bb.ek:                                            ; preds = %.split.us47.1.i
  %i.cdx = getelementptr inbounds nuw i8, ptr %i.cdk, i64 4
  %i.cdy = load float, ptr %i.cdx, align 4, !tbaa !177, !alias.scope !978, !noalias !982
  %i.cdz = fmul float %.0.i165, %i.cdy
  %i.cea = call float @llvm.fmuladd.f32(float %.033.i, float %i.cdw, float %i.cdz)
  %i.ceb = fmul float %.033.i, %i.cea
  br label %.split.us47.2.i

.split.us47.2.i:                                  ; preds = %bb.ek, %.split.us47.1.i
  %.sink.i182 = phi float [ %i.ceb, %bb.ek ], [ %i.cdw, %.split.us47.1.i ]
  %i.cec = getelementptr inbounds nuw i8, ptr %i.cdl, i64 4
  store float %.sink.i182, ptr %i.cec, align 4, !tbaa !177, !alias.scope !976, !noalias !983
  %i.ced = load i32, ptr %i.cdg, align 4, !tbaa !66, !noalias !980
  %.not37.us.2.i = icmp eq i32 %i.ced, 0
  %i.cee = getelementptr inbounds nuw i8, ptr %i.cdj, i64 8
  %i.cef = load float, ptr %i.cee, align 4, !tbaa !177, !alias.scope !973, !noalias !981 ; 2 uses
  br i1 %.not37.us.2.i, label %bb.em, label %bb.el

bb.el:                                            ; preds = %.split.us47.2.i
  %i.ceg = getelementptr inbounds nuw i8, ptr %i.cdl, i64 8
  store float %i.cef, ptr %i.ceg, align 4, !tbaa !177, !alias.scope !976, !noalias !983
  br label %.split42.us46.i

bb.em:                                            ; preds = %.split.us47.2.i
  %i.ceh = getelementptr inbounds nuw i8, ptr %i.cdk, i64 8
  %i.cei = load float, ptr %i.ceh, align 4, !tbaa !177, !alias.scope !978, !noalias !982
  %i.cej = fmul float %.0.i165, %i.cei
  %i.cek = call float @llvm.fmuladd.f32(float %.033.i, float %i.cef, float %i.cej)
  %i.cel = fmul float %.033.i, %i.cek
  %i.cem = getelementptr inbounds nuw i8, ptr %i.cdl, i64 8
  store float %i.cel, ptr %i.cem, align 4, !tbaa !177, !alias.scope !976, !noalias !983
  br label %.split42.us46.i

.split42.us46.i:                                  ; preds = %bb.em, %bb.el, %.split.us.us.preheader.i
  %indvars.iv.next67.i = add nsw i64 %indvars.iv66.i, 1
  %indvar.next60.i = add nuw nsw i64 %indvar59.i, 1 ; 2 uses
  %lftr.wideiv307 = trunc i64 %indvar.next60.i to i32
  %exitcond308 = icmp eq i32 %i.cde, %lftr.wideiv307
  br i1 %exitcond308, label %_ZL12do_update_mdiiflPKN3gmx11BasicVectorIfEEPS1_S4_S3_19TemperatureCoupling16PressureCouplingiiNS_8ArrayRefIKtEE16AccelerationTypeS9_NS7_IS2_EEPA3_KfNS7_ISC_EESB_PK14gmx_ekindata_tSE_PKdRKNS_14BasicMatrix3x3IfEEb.exit, label %.lr.ph.split.us.i, !llvm.loop !984

.lr.ph.split.i:                                   ; preds = %.lr.ph.i166, %.split42.us.i
  %indvars.iv.i169 = phi i64 [ %indvars.iv.next.i176, %.split42.us.i ], [ %i.cdd, %.lr.ph.i166 ] ; 6 uses
  %indvar.i170 = phi i64 [ %indvar.next.i177, %.split42.us.i ], [ 0, %.lr.ph.i166 ] ; 2 uses
  %i.cen = getelementptr inbounds [2 x i8], ptr %i.ccc, i64 %indvars.iv.i169
  %i.ceo = load i16, ptr %i.cen, align 2, !tbaa !255, !noalias !980
  %i.cep = getelementptr inbounds [4 x i8], ptr %i.ccb, i64 %indvars.iv.i169
  %i.ceq = load i32, ptr %i.cep, align 4, !tbaa !520, !noalias !980
  %.not.i171 = icmp eq i32 %i.ceq, 2
  %i.cer = zext i16 %i.ceo to i64
  %i.ces = getelementptr inbounds nuw [12 x i8], ptr %i.cca, i64 %i.cer ; 3 uses
  %i.cet = getelementptr inbounds [12 x i8], ptr %i.co, i64 %indvars.iv.i169 ; 3 uses
  %i.ceu = getelementptr inbounds [12 x i8], ptr %i.cr, i64 %indvars.iv.i169 ; 3 uses
  %i.cev = getelementptr inbounds [12 x i8], ptr %i.cp, i64 %indvars.iv.i169 ; 4 uses
  br i1 %.not.i171, label %.split.us.preheader.i180, label %.split.preheader.i172

.split.preheader.i172:                            ; preds = %.lr.ph.split.i
  %i.cew = load i32, ptr %i.ces, align 4, !tbaa !66, !noalias !980
  %.not37.i = icmp eq i32 %i.cew, 0
  %i.cex = load float, ptr %i.cet, align 4, !tbaa !177, !alias.scope !973, !noalias !981 ; 2 uses
  br i1 %.not37.i, label %bb.en, label %.split.1.i173

.split.us.preheader.i180:                         ; preds = %.lr.ph.split.i
  %i.cey = add nsw i64 %indvar.i170, %i.cdd
  %i.cez = mul i64 %i.cey, 12                     ; 2 uses
  %scevgep52.i = getelementptr i8, ptr %i.co, i64 %i.cez
  %scevgep.i181 = getelementptr i8, ptr %i.cp, i64 %i.cez
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %scevgep.i181, ptr noundef nonnull readonly align 4 dereferenceable(12) %scevgep52.i, i64 12, i1 false), !tbaa !177, !alias.scope !982, !noalias !978
  br label %.split42.us.i

bb.en:                                            ; preds = %.split.preheader.i172
  %i.cfa = load float, ptr %i.ceu, align 4, !tbaa !177, !alias.scope !978, !noalias !982
  %i.cfb = fmul float %.0.i165, %i.cfa
  %i.cfc = call float @llvm.fmuladd.f32(float %.033.i, float %i.cex, float %i.cfb)
  %i.cfd = fmul float %.033.i, %i.cfc
  br label %.split.1.i173

.split.1.i173:                                    ; preds = %bb.en, %.split.preheader.i172
  %storemerge.i174 = phi float [ %i.cfd, %bb.en ], [ %i.cex, %.split.preheader.i172 ]
  store float %storemerge.i174, ptr %i.cev, align 4, !tbaa !177, !alias.scope !976, !noalias !983
  %i.cfe = getelementptr inbounds nuw i8, ptr %i.ces, i64 4
  %i.cff = load i32, ptr %i.cfe, align 4, !tbaa !66, !noalias !980
  %.not37.1.i = icmp eq i32 %i.cff, 0
  %i.cfg = getelementptr inbounds nuw i8, ptr %i.cet, i64 4
  %i.cfh = load float, ptr %i.cfg, align 4, !tbaa !177, !alias.scope !973, !noalias !981 ; 2 uses
  br i1 %.not37.1.i, label %bb.eo, label %.split.2.i175

bb.eo:                                            ; preds = %.split.1.i173
  %i.cfi = getelementptr inbounds nuw i8, ptr %i.ceu, i64 4
  %i.cfj = load float, ptr %i.cfi, align 4, !tbaa !177, !alias.scope !978, !noalias !982
  %i.cfk = fmul float %.0.i165, %i.cfj
  %i.cfl = call float @llvm.fmuladd.f32(float %.033.i, float %i.cfh, float %i.cfk)
  %i.cfm = fmul float %.033.i, %i.cfl
  br label %.split.2.i175

.split.2.i175:                                    ; preds = %bb.eo, %.split.1.i173
  %.sink76.i = phi float [ %i.cfm, %bb.eo ], [ %i.cfh, %.split.1.i173 ]
  %i.cfn = getelementptr inbounds nuw i8, ptr %i.cev, i64 4
  store float %.sink76.i, ptr %i.cfn, align 4, !tbaa !177, !alias.scope !976, !noalias !983
  %i.cfo = getelementptr inbounds nuw i8, ptr %i.ces, i64 8
  %i.cfp = load i32, ptr %i.cfo, align 4, !tbaa !66, !noalias !980
  %.not37.2.i = icmp eq i32 %i.cfp, 0
  %i.cfq = getelementptr inbounds nuw i8, ptr %i.cet, i64 8
  %i.cfr = load float, ptr %i.cfq, align 4, !tbaa !177, !alias.scope !973, !noalias !981 ; 2 uses
  br i1 %.not37.2.i, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %.split.2.i175
  %i.cfs = getelementptr inbounds nuw i8, ptr %i.cev, i64 8
  store float %i.cfr, ptr %i.cfs, align 4, !tbaa !177, !alias.scope !976, !noalias !983
  br label %.split42.us.i

bb.eq:                                            ; preds = %.split.2.i175
  %i.cft = getelementptr inbounds nuw i8, ptr %i.ceu, i64 8
  %i.cfu = load float, ptr %i.cft, align 4, !tbaa !177, !alias.scope !978, !noalias !982
  %i.cfv = fmul float %.0.i165, %i.cfu
  %i.cfw = call float @llvm.fmuladd.f32(float %.033.i, float %i.cfr, float %i.cfv)
  %i.cfx = fmul float %.033.i, %i.cfw
  %i.cfy = getelementptr inbounds nuw i8, ptr %i.cev, i64 8
  store float %i.cfx, ptr %i.cfy, align 4, !tbaa !177, !alias.scope !976, !noalias !983
  br label %.split42.us.i

.split42.us.i:                                    ; preds = %bb.eq, %bb.ep, %.split.us.preheader.i180
  %indvars.iv.next.i176 = add nsw i64 %indvars.iv.i169, 1
  %indvar.next.i177 = add nuw nsw i64 %indvar.i170, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvar.next.i177 to i32
  %exitcond = icmp eq i32 %i.cde, %lftr.wideiv
  br i1 %exitcond, label %_ZL12do_update_mdiiflPKN3gmx11BasicVectorIfEEPS1_S4_S3_19TemperatureCoupling16PressureCouplingiiNS_8ArrayRefIKtEE16AccelerationTypeS9_NS7_IS2_EEPA3_KfNS7_ISC_EESB_PK14gmx_ekindata_tSE_PKdRKNS_14BasicMatrix3x3IfEEb.exit, label %.lr.ph.split.i, !llvm.loop !984

bb.er:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #20
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA61_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %30, ptr noundef nonnull align 1 dereferenceable(61) @.str.5, i8 noundef zeroext 2)
          to label %bb.es unwind label %bb.eu

bb.es:                                            ; preds = %bb.er
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %30, i32 noundef 1926, ptr noundef nonnull @.str.71) #33
          to label %bb.et unwind label %bb.ev

bb.et:                                            ; preds = %bb.es
  unreachable

bb.eu:                                            ; preds = %bb.er
  %i.cfz = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %bb.ew

bb.ev:                                            ; preds = %bb.es
  %i.cga = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %30) #20
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %bb.eu
  %.pn89 = phi { ptr, i32 } [ %i.cga, %bb.ev ], [ %i.cfz, %bb.eu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #20
  br label %.body

_ZL12do_update_mdiiflPKN3gmx11BasicVectorIfEEPS1_S4_S3_19TemperatureCoupling16PressureCouplingiiNS_8ArrayRefIKtEE16AccelerationTypeS9_NS7_IS2_EEPA3_KfNS7_ISC_EESB_PK14gmx_ekindata_tSE_PKdRKNS_14BasicMatrix3x3IfEEb.exit: ; preds = %.split42.us.i, %.split42.us46.i, %.split6.us.i, %.preheader.i.i.i.i.i.i.i.i7.i.i.i.i.i.i, %scalar.ph502, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i102.i, %.lr.ph.i.i, %.preheader.i.i.i.i.i.i.i.i.i, %scalar.ph403, %.preheader.i.i.i.i.i.i.i.i.i.i, %middle.block577, %middle.block539, %middle.block499, %middle.block463, %middle.block431, %middle.block, %bb.ei, %bb.dw, %bb.bi, %bb.bh, %bb.bg, %bb.be, %bb.bd, %bb.ba, %bb.az, %bb.ay, %"_ZN3gmx25dispatchTemplatedFunctionIZL12do_update_mdiiflPKNS_11BasicVectorIfEEPS2_S5_S4_19TemperatureCoupling16PressureCouplingiiNS_8ArrayRefIKtEE16AccelerationTypeSA_NS8_IS3_EEPA3_KfNS8_ISD_EESC_PK14gmx_ekindata_tSF_PKdRKNS_14BasicMatrix3x3IfEEbE3$_0SB_JEEEDaOT_T0_DpT1_.exit.i", %bb.dt, %.loopexit269, %.loopexit
  %i.cgb = load i32, ptr %i.c, align 4, !tbaa !66
  %.not.not = icmp slt i32 %.0285, %i.cgb
  br i1 %.not.not, label %bb.c, label %._crit_edge

.body:                                            ; preds = %.split, %.loopexit273, %.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29.i.i.i.i.i.i.i.i, %bb.cs, %bb.ew
  %.pn89.pn.pn = phi { ptr, i32 } [ %.pn14.pn.pn.i.i.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29.i.i.i.i.i.i.i.i ], [ %.pn89, %bb.ew ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.biw, %bb.cs ], [ %lpad.loopexit, %.loopexit273 ], [ %i.bxg, %.split ] ; 2 uses
  %.3 = extractvalue { ptr, i32 } %.pn89.pn.pn, 1
  %.384 = extractvalue { ptr, i32 } %.pn89.pn.pn, 0 ; 2 uses
  %i.cgc = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #20
  %i.cgd = icmp eq i32 %.3, %i.cgc
  br i1 %i.cgd, label %bb.ex, label %bb.fb

bb.ex:                                            ; preds = %.body
  %i.cge = call ptr @__cxa_begin_catch(ptr %.384) #20
  invoke void @_ZN3gmx28processExceptionAsFatalErrorERKSt9exception(ptr noundef nonnull align 8 dereferenceable(8) %i.cge) #33
          to label %bb.ey unwind label %bb.fa

bb.ey:                                            ; preds = %bb.ex
  unreachable

._crit_edge:                                      ; preds = %_ZL12do_update_mdiiflPKN3gmx11BasicVectorIfEEPS1_S4_S3_19TemperatureCoupling16PressureCouplingiiNS_8ArrayRefIKtEE16AccelerationTypeS9_NS7_IS2_EEPA3_KfNS7_ISC_EESB_PK14gmx_ekindata_tSE_PKdRKNS_14BasicMatrix3x3IfEEb.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %bb.ez

bb.ez:                                            ; preds = %._crit_edge, %bb.a
  ret void

bb.fa:                                            ; preds = %bb.ex
  %i.cgf = landingpad { ptr, i32 }
          catch ptr null
  %i.cgg = extractvalue { ptr, i32 } %i.cgf, 0
  call void @__clang_call_terminate(ptr %i.cgg) #32
  unreachable

bb.fb:                                            ; preds = %.body
  call void @__clang_call_terminate(ptr %.384) #32
  unreachable
}

; Function Attrs: noreturn
declare void @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef, ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, ptr noundef, ...) local_unnamed_addr #13

declare void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #8

declare void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef) local_unnamed_addr #16

declare void @_ZN3gmx27setBoxDeformationFlowMatrixEPA3_KfS2_PA3_f(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @cosf(float noundef) local_unnamed_addr #12

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #22 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #20 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !552
  %i.d = sub i64 4611686018427387903, %i.c
  %i.e = icmp ult i64 %i.d, %i.a
  br i1 %i.e, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.75) #33
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit: ; preds = %bb.a
  %i.f = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %2, i64 noundef %i.a) ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !551
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !171  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 5 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !552  ; 3 uses
  %i.m = icmp ult i64 %i.l, 16
  tail call void @llvm.assume(i1 %i.m)
  %i.n = add nuw nsw i64 %i.l, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.g, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.n, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit
  store ptr %i.h, ptr %0, align 8, !tbaa !171
  %i.o = load i64, ptr %i.i, align 8, !tbaa !175
  store i64 %i.o, ptr %i.g, align 8, !tbaa !175
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !552
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.p = phi i64 [ %i.l, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.p, ptr %i.r, align 8, !tbaa !552
  store ptr %i.i, ptr %i.f, align 8, !tbaa !171
  store i64 0, ptr %i.q, align 8, !tbaa !552
  store i8 0, ptr %i.i, align 8, !tbaa !175
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #22 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #20
  %i.b = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %1, i64 noundef %i.a) ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !551
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !171  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 5 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !552  ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add nuw nsw i64 %i.h, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.j, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.d, ptr %0, align 8, !tbaa !171
  %i.k = load i64, ptr %i.e, align 8, !tbaa !175
  store i64 %i.k, ptr %i.c, align 8, !tbaa !175
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !552
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = phi i64 [ %i.h, %bb.b ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.n, align 8, !tbaa !552
  store ptr %i.e, ptr %i.b, align 8, !tbaa !171
  store i64 0, ptr %i.m, align 8, !tbaa !552
  store i8 0, ptr %i.e, align 8, !tbaa !175
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx119to_stringEm(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 noundef %1) local_unnamed_addr #22 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ult i64 %1, 10
  br i1 %i.a, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.g
  %.029.i = phi i32 [ %i.i, %bb.g ], [ 1, %bb.a ] ; 4 uses
  %.02328.i = phi i64 [ %i.h, %bb.g ], [ %1, %bb.a ] ; 5 uses
  %i.b = icmp ult i64 %.02328.i, 100
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %i.c = add i32 %.029.i, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit

bb.c:                                             ; preds = %.lr.ph.i
  %i.d = icmp ult i64 %.02328.i, 1000
end_hunk_5
