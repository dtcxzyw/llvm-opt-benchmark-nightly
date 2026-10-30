Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/miniaudio/original/ma_vocoder_node?download=true
inline.NumInlined: 11
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 9
begin_hunk_0_@voclib_reset_history:bb.a

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter43 = and i64 %wide.trip.count32, 248
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count = zext i8 %i.d to i64          ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.g = icmp ult i8 %i.d, 4
  %unroll_iter = and i64 %wide.trip.count, 252
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod38 = icmp ne i64 %xtraiter, 0
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %indvars.iv24 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next25, %._crit_edge.us ] ; 4 uses
  %i.h = getelementptr inbounds nuw [288 x i8], ptr %0, i64 %indvars.iv24 ; 5 uses
  %i.i = getelementptr inbounds nuw [288 x i8], ptr %i.e, i64 %indvars.iv24 ; 5 uses
  br i1 %i.g, label %.epil.preheader, label %.preheader.us.new

.preheader.us.new:                                ; preds = %.preheader.us, %.preheader.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader.us.new ], [ 0, %.preheader.us ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %.preheader.us.new ], [ 0, %.preheader.us ]
  %i.j = getelementptr inbounds nuw [36 x i8], ptr %i.h, i64 %indvars.iv
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  %i.l = getelementptr inbounds nuw [36 x i8], ptr %i.i, i64 %indvars.iv ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 27668
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.o = getelementptr inbounds nuw [36 x i8], ptr %i.h, i64 %indvars.iv.next
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  %i.q = getelementptr inbounds nuw [36 x i8], ptr %i.i, i64 %indvars.iv.next ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 27668
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.t = getelementptr inbounds nuw [36 x i8], ptr %i.h, i64 %indvars.iv.next.1
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  %i.v = getelementptr inbounds nuw [36 x i8], ptr %i.i, i64 %indvars.iv.next.1 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.w, i8 0, i64 16, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 27668
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.y = getelementptr inbounds nuw [36 x i8], ptr %i.h, i64 %indvars.iv.next.2
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  %i.aa = getelementptr inbounds nuw [36 x i8], ptr %i.i, i64 %indvars.iv.next.2 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 27668
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ac, i8 0, i64 16, i1 false)
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.unr-lcssa, label %.preheader.us.new, !llvm.loop !2

._crit_edge.us.unr-lcssa:                         ; preds = %.preheader.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.preheader.us
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next.3, %._crit_edge.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod38)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.b ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.ad = getelementptr inbounds nuw [36 x i8], ptr %i.h, i64 %indvars.iv.epil
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ae, i8 0, i64 16, i1 false)
  %i.af = getelementptr inbounds nuw [36 x i8], ptr %i.i, i64 %indvars.iv.epil ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ag, i8 0, i64 16, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 27668
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false)
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us, label %bb.b, !llvm.loop !36

._crit_edge.us:                                   ; preds = %bb.b, %._crit_edge.us.unr-lcssa
  %i.ai = getelementptr inbounds nuw [20 x i8], ptr %0, i64 %indvars.iv24
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 27652
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.aj, i8 0, i64 16, i1 false)
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1 ; 2 uses
  %exitcond28.not = icmp eq i64 %indvars.iv.next25, %wide.trip.count32
  br i1 %exitcond28.not, label %._crit_edge20, label %.preheader.us, !llvm.loop !0

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %indvars.iv29 = phi i64 [ 0, %.preheader.preheader.new ], [ %indvars.iv.next30.7, %.preheader ] ; 9 uses
  %niter44 = phi i64 [ 0, %.preheader.preheader.new ], [ %niter44.next.7, %.preheader ]
  %i.ak = getelementptr inbounds nuw [20 x i8], ptr %0, i64 %indvars.iv29
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 27652
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.al, i8 0, i64 16, i1 false)
  %i.am = getelementptr inbounds nuw [20 x i8], ptr %0, i64 %indvars.iv29
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 27672
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.an, i8 0, i64 16, i1 false)
  %i.ao = getelementptr inbounds nuw [20 x i8], ptr %0, i64 %indvars.iv29
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 27692
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ap, i8 0, i64 16, i1 false)
  %i.aq = getelementptr inbounds nuw [20 x i8], ptr %0, i64 %indvars.iv29
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 27712
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ar, i8 0, i64 16, i1 false)
  %i.as = getelementptr inbounds nuw [20 x i8], ptr %0, i64 %indvars.iv29
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 27732
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.at, i8 0, i64 16, i1 false)
  %i.au = getelementptr inbounds nuw [20 x i8], ptr %0, i64 %indvars.iv29
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 27752
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.av, i8 0, i64 16, i1 false)
  %i.aw = getelementptr inbounds nuw [20 x i8], ptr %0, i64 %indvars.iv29
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 27772
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ax, i8 0, i64 16, i1 false)
  %i.ay = getelementptr inbounds nuw [20 x i8], ptr %0, i64 %indvars.iv29
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 27792
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.az, i8 0, i64 16, i1 false)
  %indvars.iv.next30.7 = add nuw nsw i64 %indvars.iv29, 8 ; 2 uses
  %niter44.next.7 = add i64 %niter44, 8           ; 2 uses
  %niter44.ncmp.7 = icmp eq i64 %niter44.next.7, %unroll_iter43
  br i1 %niter44.ncmp.7, label %._crit_edge20.loopexit.unr-lcssa, label %.preheader, !llvm.loop !0

._crit_edge20.loopexit.unr-lcssa:                 ; preds = %.preheader
  %lcmp.mod41.not = icmp eq i64 %xtraiter39, 0
  br i1 %lcmp.mod41.not, label %._crit_edge20, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %._crit_edge20.loopexit.unr-lcssa, %.preheader.preheader
  %indvars.iv29.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next30.7, %._crit_edge20.loopexit.unr-lcssa ]
  %lcmp.mod42 = icmp ne i64 %xtraiter39, 0
  tail call void @llvm.assume(i1 %lcmp.mod42)
  br label %.preheader.epil

.preheader.epil:                                  ; preds = %.preheader.epil, %.preheader.epil.preheader
  %indvars.iv29.epil = phi i64 [ %indvars.iv.next30.epil, %.preheader.epil ], [ %indvars.iv29.epil.init, %.preheader.epil.preheader ] ; 2 uses
  %epil.iter40 = phi i64 [ %epil.iter40.next, %.preheader.epil ], [ 0, %.preheader.epil.preheader ]
  %i.ba = getelementptr inbounds nuw [20 x i8], ptr %0, i64 %indvars.iv29.epil
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 27652
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bb, i8 0, i64 16, i1 false)
  %indvars.iv.next30.epil = add nuw nsw i64 %indvars.iv29.epil, 1
  %epil.iter40.next = add i64 %epil.iter40, 1     ; 2 uses
  %epil.iter40.cmp.not = icmp eq i64 %epil.iter40.next, %xtraiter39
  br i1 %epil.iter40.cmp.not, label %._crit_edge20, label %.preheader.epil, !llvm.loop !37

._crit_edge20:                                    ; preds = %._crit_edge.us, %._crit_edge20.loopexit.unr-lcssa, %.preheader.epil, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define internal fastcc void @voclib_initialize_filterbank(ptr nofree noundef captures(none) %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 84872
  %i.b = load i32, ptr %i.a, align 4, !tbaa !14   ; 2 uses
  %i.c = uitofp i32 %i.b to double                ; 2 uses
  %i.d = fcmp ogt double %i.c, 1.200000e+04
  %spec.store.select = select i1 %i.d, double 1.200000e+04, double %i.c
  %i.e = fdiv double %spec.store.select, 8.000000e+01
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 84876
  %i.g = load i8, ptr %i.f, align 4, !tbaa !15    ; 3 uses
  %i.h = uitofp i8 %i.g to double
  %i.i = fdiv double 1.000000e+00, %i.h
  %i.j = tail call double @pow(double noundef %i.e, double noundef %i.i) #11 ; 2 uses
  %.not164 = icmp eq i8 %i.g, 0
  br i1 %.not164, label %._crit_edge163, label %.lr.ph162

.lr.ph162:                                        ; preds = %bb.a
  %.not = icmp eq i32 %1, 0
  %i.k = uitofp i32 %i.b to float
  %i.l = fpext float %i.k to double               ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 84877
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 84868
  %i.o = load float, ptr %i.n, align 4, !tbaa !23 ; 2 uses
  %i.p = fcmp une float %i.o, 1.000000e+00
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 29568 ; 4 uses
  %i.r = fpext float %i.o to double
  %i.s = load i8, ptr %i.m, align 1, !tbaa !16    ; 2 uses
  %i.t = icmp ugt i8 %i.s, 1                      ; 2 uses
  %wide.trip.count174 = zext i8 %i.g to i64
  %wide.trip.count = zext i8 %i.s to i64          ; 2 uses
  %i.u = add nsw i64 %wide.trip.count, -1         ; 5 uses
  %i.v = add nsw i64 %wide.trip.count, -2         ; 2 uses
  %xtraiter = and i64 %i.u, 3                     ; 3 uses
  %i.w = icmp ult i64 %i.v, 3
  %unroll_iter = and i64 %i.u, -4
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod179 = icmp ne i64 %xtraiter, 0
  %xtraiter180 = and i64 %i.u, 1
  %i.x = icmp eq i64 %i.v, 0
  %unroll_iter184 = and i64 %i.u, -2
  %lcmp.mod182.not = icmp eq i64 %xtraiter180, 0
  %lcmp.mod183 = trunc i64 %i.u to i1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph162, %._crit_edge
  %indvars.iv171 = phi i64 [ 0, %.lr.ph162 ], [ %indvars.iv.next172, %._crit_edge ] ; 7 uses
  %.0151160 = phi double [ 0.000000e+00, %.lr.ph162 ], [ %.1152, %._crit_edge ] ; 3 uses
  %i.y = fcmp ogt double %.0151160, 0.000000e+00
  %i.z = fmul double %i.j, %.0151160
  %.1152 = select i1 %i.y, double %i.z, double 8.000000e+01 ; 5 uses
  %i.aa = fmul double %i.j, %.1152
  %i.ab = fsub double %i.aa, %.0151160
  %i.ac = fdiv double %i.ab, %.1152               ; 2 uses
  br i1 %.not, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %2 = getelementptr inbounds nuw [288 x i8], ptr %0, i64 %indvars.iv171 ; 7 uses
  %i.ad = insertelement <2 x double> poison, double %.1152, i64 0
  %3 = insertelement <2 x double> %i.ad, double %i.ac, i64 1
  %4 = fptrunc <2 x double> %3 to <2 x float>
  %i.ae = fpext <2 x float> %4 to <2 x double>
  %i.af = fmul <2 x double> %i.ae, <double f0x401921FB54442D18, double f0x3FD62E42FEFA39EF> ; 2 uses
  %i.ag = extractelement <2 x double> %i.af, i64 0
  %i.ah = fdiv double %i.ag, %i.l
  %i.ai = fptrunc double %i.ah to float
  %i.aj = fpext float %i.ai to double             ; 3 uses
  %i.ak = tail call double @sin(double noundef %i.aj) #11
  %i.al = fptrunc double %i.ak to float           ; 2 uses
  %i.am = tail call double @cos(double noundef %i.aj) #11
  %i.an = extractelement <2 x double> %i.af, i64 1
  %i.ao = fmul double %i.an, %i.aj
  %i.ap = fpext float %i.al to double
  %i.aq = fdiv double %i.ao, %i.ap
  %i.ar = tail call double @sinh(double noundef %i.aq) #11
  %i.as = fptrunc double %i.ar to float
  %i.at = fmul float %i.al, %i.as                 ; 4 uses
  %i.au = fsub float 1.000000e+00, %i.at
  %i.av = fptrunc double %i.am to float
  %i.aw = fmul float %i.av, -2.000000e+00
  %i.ax = fadd float %i.at, 1.000000e+00          ; 2 uses
  %i.ay = fneg float %i.at
  %i.az = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.at, i64 0
  %i.ba = insertelement <4 x float> %i.az, float %i.ay, i64 2
  %i.bb = insertelement <4 x float> %i.ba, float %i.aw, i64 3
  %i.bc = insertelement <4 x float> poison, float %i.ax, i64 0
  %i.bd = shufflevector <4 x float> %i.bc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.be = fdiv <4 x float> %i.bb, %i.bd           ; 6 uses
  store <4 x float> %i.be, ptr %2, align 4, !tbaa !12
  %i.bf = fdiv float %i.au, %i.ax                 ; 6 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 16
  store float %i.bf, ptr %i.bg, align 4, !tbaa !25
  br i1 %i.t, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.c
  br i1 %i.w, label %.lr.ph.epil.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ 1, %.lr.ph.preheader ] ; 5 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.bh = getelementptr inbounds nuw [36 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  store <4 x float> %i.be, ptr %i.bh, align 4, !tbaa !12
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store float %i.bf, ptr %i.bi, align 4, !tbaa !25
  %i.bj = getelementptr inbounds nuw [36 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 36
  store <4 x float> %i.be, ptr %i.bk, align 4, !tbaa !12
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 52
  store float %i.bf, ptr %i.bl, align 4, !tbaa !25
  %i.bm = getelementptr inbounds nuw [36 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 72
  store <4 x float> %i.be, ptr %i.bn, align 4, !tbaa !12
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 88
  store float %i.bf, ptr %i.bo, align 4, !tbaa !25
  %i.bp = getelementptr inbounds nuw [36 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 108
  store <4 x float> %i.be, ptr %i.bq, align 4, !tbaa !12
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 124
  store float %i.bf, ptr %i.br, align 4, !tbaa !25
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !38

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next.3, %.loopexit.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod179)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %.lr.ph.epil ], [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.bs = getelementptr inbounds nuw [36 x i8], ptr %2, i64 %indvars.iv.epil ; 2 uses
  store <4 x float> %i.be, ptr %i.bs, align 4, !tbaa !12
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  store float %i.bf, ptr %i.bt, align 4, !tbaa !25
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph.epil, !llvm.loop !39

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.epil, %bb.c, %bb.b
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.loopexit
  %i.bu = getelementptr inbounds nuw [288 x i8], ptr %i.q, i64 %indvars.iv171
  %i.bv = fmul double %.1152, %i.r
  %i.bw = fptrunc double %i.bv to float
  %i.bx = fptrunc double %i.ac to float
  %i.by = fpext float %i.bw to double
  %i.bz = fmul double %i.by, f0x401921FB54442D18
  %i.ca = fdiv double %i.bz, %i.l
  %i.cb = fptrunc double %i.ca to float
  %i.cc = fpext float %i.cb to double             ; 3 uses
  %i.cd = tail call double @sin(double noundef %i.cc) #11
  %i.ce = fptrunc double %i.cd to float           ; 2 uses
  %i.cf = tail call double @cos(double noundef %i.cc) #11
  %i.cg = fpext float %i.bx to double
  %i.ch = fmul double %i.cg, f0x3FD62E42FEFA39EF
  %i.ci = fmul double %i.ch, %i.cc
  %i.cj = fpext float %i.ce to double
  %i.ck = fdiv double %i.ci, %i.cj
  %i.cl = tail call double @sinh(double noundef %i.ck) #11
  %i.cm = fptrunc double %i.cl to float
  %i.cn = fmul float %i.ce, %i.cm                 ; 4 uses
  %i.co = fsub float 1.000000e+00, %i.cn
  %i.cp = fptrunc double %i.cf to float
  %i.cq = fmul float %i.cp, -2.000000e+00
  %i.cr = fadd float %i.cn, 1.000000e+00          ; 2 uses
  %i.cs = fneg float %i.cn
  %i.ct = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.cn, i64 0
  %i.cu = insertelement <4 x float> %i.ct, float %i.cs, i64 2
  %i.cv = insertelement <4 x float> %i.cu, float %i.cq, i64 3
  %i.cw = insertelement <4 x float> poison, float %i.cr, i64 0
  %i.cx = shufflevector <4 x float> %i.cw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cy = fdiv <4 x float> %i.cv, %i.cx           ; 2 uses
  store <4 x float> %i.cy, ptr %i.bu, align 4, !tbaa !12
  %i.cz = fdiv float %i.co, %i.cr
  br label %bb.f

bb.e:                                             ; preds = %.loopexit
  %i.da = getelementptr inbounds nuw [288 x i8], ptr %0, i64 %indvars.iv171 ; 2 uses
  %i.db = getelementptr inbounds nuw [288 x i8], ptr %i.q, i64 %indvars.iv171
  %i.dc = load <4 x float>, ptr %i.da, align 4, !tbaa !12 ; 2 uses
  store <4 x float> %i.dc, ptr %i.db, align 4, !tbaa !12
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.de = load float, ptr %i.dd, align 4, !tbaa !25
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sink = phi float [ %i.de, %bb.e ], [ %i.cz, %bb.d ] ; 8 uses
  %i.df = phi <4 x float> [ %i.dc, %bb.e ], [ %i.cy, %bb.d ] ; 7 uses
  %i.dg = getelementptr inbounds nuw [288 x i8], ptr %i.q, i64 %indvars.iv171
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  store float %.sink, ptr %i.dh, align 4, !tbaa !25
  %i.di = getelementptr inbounds nuw [288 x i8], ptr %i.q, i64 %indvars.iv171 ; 5 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 27648 ; 4 uses
  store <4 x float> %i.df, ptr %i.dj, align 4, !tbaa !12
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 27664
  store float %.sink, ptr %i.dk, align 4, !tbaa !25
  br i1 %i.t, label %.lr.ph158.preheader, label %._crit_edge

.lr.ph158.preheader:                              ; preds = %bb.f
  br i1 %i.x, label %.lr.ph158.epil.preheader, label %.lr.ph158

.lr.ph158:                                        ; preds = %.lr.ph158.preheader, %.lr.ph158
  %indvars.iv166 = phi i64 [ %indvars.iv.next167.1, %.lr.ph158 ], [ 1, %.lr.ph158.preheader ] ; 4 uses
  %niter185 = phi i64 [ %niter185.next.1, %.lr.ph158 ], [ 0, %.lr.ph158.preheader ]
  %i.dl = getelementptr inbounds nuw [36 x i8], ptr %i.di, i64 %indvars.iv166 ; 2 uses
  store <4 x float> %i.df, ptr %i.dl, align 4, !tbaa !12
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  store float %.sink, ptr %i.dm, align 4, !tbaa !25
  %i.dn = getelementptr inbounds nuw [36 x i8], ptr %i.dj, i64 %indvars.iv166 ; 2 uses
  store <4 x float> %i.df, ptr %i.dn, align 4, !tbaa !12
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  store float %.sink, ptr %i.do, align 4, !tbaa !25
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1 ; 2 uses
  %i.dp = getelementptr inbounds nuw [36 x i8], ptr %i.di, i64 %indvars.iv.next167 ; 2 uses
  store <4 x float> %i.df, ptr %i.dp, align 4, !tbaa !12
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  store float %.sink, ptr %i.dq, align 4, !tbaa !25
  %i.dr = getelementptr inbounds nuw [36 x i8], ptr %i.dj, i64 %indvars.iv.next167 ; 2 uses
  store <4 x float> %i.df, ptr %i.dr, align 4, !tbaa !12
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  store float %.sink, ptr %i.ds, align 4, !tbaa !25
  %indvars.iv.next167.1 = add nuw nsw i64 %indvars.iv166, 2 ; 2 uses
  %niter185.next.1 = add nuw i64 %niter185, 2     ; 2 uses
  %niter185.ncmp.1 = icmp eq i64 %niter185.next.1, %unroll_iter184
  br i1 %niter185.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph158, !llvm.loop !40

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph158
  br i1 %lcmp.mod182.not, label %._crit_edge, label %.lr.ph158.epil.preheader

.lr.ph158.epil.preheader:                         ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph158.preheader
  %indvars.iv166.epil.init = phi i64 [ 1, %.lr.ph158.preheader ], [ %indvars.iv.next167.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod183)
  %i.dt = getelementptr inbounds nuw [36 x i8], ptr %i.di, i64 %indvars.iv166.epil.init ; 2 uses
  store <4 x float> %i.df, ptr %i.dt, align 4, !tbaa !12
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  store float %.sink, ptr %i.du, align 4, !tbaa !25
  %i.dv = getelementptr inbounds nuw [36 x i8], ptr %i.dj, i64 %indvars.iv166.epil.init ; 2 uses
  store <4 x float> %i.df, ptr %i.dv, align 4, !tbaa !12
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  store float %.sink, ptr %i.dw, align 4, !tbaa !25
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph158.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.f
  %indvars.iv.next172 = add nuw nsw i64 %indvars.iv171, 1 ; 2 uses
  %exitcond175.not = icmp eq i64 %indvars.iv.next172, %wide.trip.count174
  br i1 %exitcond175.not, label %._crit_edge163, label %bb.b, !llvm.loop !41

._crit_edge163:                                   ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define range(i32 0, 2) i32 @voclib_process(ptr nofree noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 84876
  %i.b = load i8, ptr %i.a, align 4, !tbaa !15    ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 84877
  %i.d = load i8, ptr %i.c, align 1, !tbaa !16    ; 4 uses
  %.not = icmp eq ptr %1, null
  %.not108 = icmp eq ptr %2, null
  %or.cond = or i1 %.not, %.not108
  %.not109 = icmp eq ptr %3, null
  %or.cond110 = or i1 %or.cond, %.not109
  %i.e = icmp eq i32 %4, 0
  %or.cond111 = or i1 %or.cond110, %i.e
  br i1 %or.cond111, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 84878
  %i.g = load i8, ptr %i.f, align 2, !tbaa !17
  %i.h = icmp eq i8 %i.g, 2
  br i1 %i.h, label %.preheader112, label %.preheader113.lr.ph

.preheader113.lr.ph:                              ; preds = %bb.b
  %.not145 = icmp eq i8 %i.b, 0
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 29568
  %i.j = icmp ugt i8 %i.d, 1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 27648
  %i.l = zext i32 %4 to i64                       ; 2 uses
  br i1 %.not145, label %.preheader113.preheader, label %.preheader113.us.preheader

.preheader113.us.preheader:                       ; preds = %.preheader113.lr.ph
  %wide.trip.count162 = zext i8 %i.b to i64
  %wide.trip.count = zext i8 %i.d to i64
  br label %.preheader113.us

.preheader113.preheader:                          ; preds = %.preheader113.lr.ph
  %i.m = shl nuw nsw i64 %i.l, 2
  br label %.loopexit.sink.split

.preheader113.us:                                 ; preds = %.preheader113.us.preheader, %._crit_edge123.us
  %indvars.iv164 = phi i64 [ 0, %.preheader113.us.preheader ], [ %indvars.iv.next165, %._crit_edge123.us ] ; 4 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv164
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv164
  br label %bb.c

bb.c:                                             ; preds = %.preheader113.us, %._crit_edge.us
  %indvars.iv159 = phi i64 [ 0, %.preheader113.us ], [ %indvars.iv.next160, %._crit_edge.us ] ; 4 uses
  %.091121.us = phi float [ 0.000000e+00, %.preheader113.us ], [ %i.ek, %._crit_edge.us ]
  %i.p = load float, ptr %i.n, align 4, !tbaa !12 ; 2 uses
  %i.q = getelementptr inbounds nuw [288 x i8], ptr %0, i64 %indvars.iv159 ; 10 uses
  %i.r = load float, ptr %i.q, align 4, !tbaa !48
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.t = load float, ptr %i.s, align 4, !tbaa !49
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 20 ; 2 uses
  %i.v = load float, ptr %i.u, align 4, !tbaa !50 ; 2 uses
  %i.w = fmul float %i.t, %i.v
  %i.x = tail call float @llvm.fmuladd.f32(float %i.r, float %i.p, float %i.w)
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.z = load float, ptr %i.y, align 4, !tbaa !51
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 2 uses
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !52
  %i.ac = tail call float @llvm.fmuladd.f32(float %i.z, float %i.ab, float %i.x)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !53
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 28 ; 2 uses
  %i.ag = load float, ptr %i.af, align 4, !tbaa !54 ; 2 uses
  %i.ah = fneg float %i.ae
  %i.ai = tail call float @llvm.fmuladd.f32(float %i.ah, float %i.ag, float %i.ac)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !25
  %i.al = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 2 uses
  %i.am = load float, ptr %i.al, align 4, !tbaa !55
end_hunk_0
