Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/miniaudio/original/ma_vocoder_node?download=true
inline.NumInlined: 11
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 9
begin_hunk_0_@voclib_initialize:bb.a
  %indvars.iv.next.i40.epil = add nuw nsw i64 %indvars.iv.i39.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %voclib_initialize_envelopes.exit, label %bb.j, !llvm.loop !21

voclib_initialize_envelopes.exit:                 ; preds = %voclib_initialize_envelopes.exit.loopexit.unr-lcssa, %bb.j, %voclib_reset_history.exit, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %voclib_reset_history.exit ], [ 1, %bb.j ], [ 1, %voclib_initialize_envelopes.exit.loopexit.unr-lcssa ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @voclib_reset_history(ptr nofree noundef captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 84876
  %i.b = load i8, ptr %i.a, align 4, !tbaa !12    ; 3 uses
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %._crit_edge20, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 84877
  %i.d = load i8, ptr %i.c, align 1, !tbaa !13    ; 3 uses
  %.not21 = icmp eq i8 %i.d, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 29568
  %wide.trip.count32 = zext i8 %i.b to i64        ; 3 uses
  br i1 %.not21, label %.preheader.preheader, label %.preheader.us.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %xtraiter39 = and i64 %wide.trip.count32, 7     ; 3 uses
  %i.f = icmp ult i8 %i.b, 8
  br i1 %i.f, label %.preheader.epil.preheader, label %.preheader.preheader.new

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
  br i1 %niter.ncmp.3, label %._crit_edge.us.unr-lcssa, label %.preheader.us.new, !llvm.loop !23

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
  br i1 %epil.iter.cmp.not, label %._crit_edge.us, label %bb.b, !llvm.loop !24

._crit_edge.us:                                   ; preds = %bb.b, %._crit_edge.us.unr-lcssa
  %i.ai = getelementptr inbounds nuw [20 x i8], ptr %0, i64 %indvars.iv24
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 27652
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.aj, i8 0, i64 16, i1 false)
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1 ; 2 uses
  %exitcond28.not = icmp eq i64 %indvars.iv.next25, %wide.trip.count32
  br i1 %exitcond28.not, label %._crit_edge20, label %.preheader.us, !llvm.loop !15

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
  br i1 %niter44.ncmp.7, label %._crit_edge20.loopexit.unr-lcssa, label %.preheader, !llvm.loop !15

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
  br i1 %epil.iter40.cmp.not, label %._crit_edge20, label %.preheader.epil, !llvm.loop !25

._crit_edge20:                                    ; preds = %._crit_edge.us, %._crit_edge20.loopexit.unr-lcssa, %.preheader.epil, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define internal fastcc void @voclib_initialize_filterbank(ptr nofree noundef captures(none) %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 84872
  %i.b = load i32, ptr %i.a, align 4, !tbaa !10   ; 2 uses
  %i.c = uitofp i32 %i.b to double                ; 2 uses
  %i.d = fcmp ogt double %i.c, 1.200000e+04
  %spec.store.select = select i1 %i.d, double 1.200000e+04, double %i.c
  %i.e = fdiv double %spec.store.select, 8.000000e+01
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 84876
  %i.g = load i8, ptr %i.f, align 4, !tbaa !12    ; 3 uses
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
  %i.o = load float, ptr %i.n, align 4, !tbaa !26 ; 2 uses
  %i.p = fcmp une float %i.o, 1.000000e+00
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 29568 ; 4 uses
  %i.r = fpext float %i.o to double
  %i.s = load i8, ptr %i.m, align 1, !tbaa !13    ; 2 uses
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
  %i.ad = getelementptr inbounds nuw [288 x i8], ptr %0, i64 %indvars.iv171 ; 7 uses
  %i.ae = insertelement <2 x double> poison, double %.1152, i64 0
  %i.af = insertelement <2 x double> %i.ae, double %i.ac, i64 1
  %i.ag = fptrunc <2 x double> %i.af to <2 x float>
  %i.ah = fpext <2 x float> %i.ag to <2 x double>
  %i.ai = fmul <2 x double> %i.ah, <double f0x401921FB54442D18, double f0x3FD62E42FEFA39EF> ; 2 uses
  %i.aj = extractelement <2 x double> %i.ai, i64 0
  %i.ak = fdiv double %i.aj, %i.l
  %i.al = fptrunc double %i.ak to float
  %i.am = fpext float %i.al to double             ; 3 uses
  %i.an = tail call double @sin(double noundef %i.am) #11
  %i.ao = fptrunc double %i.an to float           ; 2 uses
  %i.ap = tail call double @cos(double noundef %i.am) #11
  %i.aq = extractelement <2 x double> %i.ai, i64 1
  %i.ar = fmul double %i.aq, %i.am
  %i.as = fpext float %i.ao to double
  %i.at = fdiv double %i.ar, %i.as
  %i.au = tail call double @sinh(double noundef %i.at) #11
  %i.av = fptrunc double %i.au to float
  %i.aw = fmul float %i.ao, %i.av                 ; 4 uses
  %i.ax = fsub float 1.000000e+00, %i.aw
  %i.ay = fptrunc double %i.ap to float
  %i.az = fmul float %i.ay, -2.000000e+00
  %i.ba = fadd float %i.aw, 1.000000e+00          ; 2 uses
  %i.bb = fneg float %i.aw
  %i.bc = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.aw, i64 0
  %i.bd = insertelement <4 x float> %i.bc, float %i.bb, i64 2
  %i.be = insertelement <4 x float> %i.bd, float %i.az, i64 3
  %i.bf = insertelement <4 x float> poison, float %i.ba, i64 0
  %i.bg = shufflevector <4 x float> %i.bf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bh = fdiv <4 x float> %i.be, %i.bg           ; 6 uses
  store <4 x float> %i.bh, ptr %i.ad, align 4, !tbaa !8
  %i.bi = fdiv float %i.ax, %i.ba                 ; 6 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store float %i.bi, ptr %i.bj, align 4, !tbaa !27
  br i1 %i.t, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.c
  br i1 %i.w, label %.lr.ph.epil.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ 1, %.lr.ph.preheader ] ; 5 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.bk = getelementptr inbounds nuw [36 x i8], ptr %i.ad, i64 %indvars.iv ; 2 uses
  store <4 x float> %i.bh, ptr %i.bk, align 4, !tbaa !8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store float %i.bi, ptr %i.bl, align 4, !tbaa !27
  %i.bm = getelementptr inbounds nuw [36 x i8], ptr %i.ad, i64 %indvars.iv ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 36
  store <4 x float> %i.bh, ptr %i.bn, align 4, !tbaa !8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 52
  store float %i.bi, ptr %i.bo, align 4, !tbaa !27
  %i.bp = getelementptr inbounds nuw [36 x i8], ptr %i.ad, i64 %indvars.iv ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 72
  store <4 x float> %i.bh, ptr %i.bq, align 4, !tbaa !8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 88
  store float %i.bi, ptr %i.br, align 4, !tbaa !27
  %i.bs = getelementptr inbounds nuw [36 x i8], ptr %i.ad, i64 %indvars.iv ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 108
  store <4 x float> %i.bh, ptr %i.bt, align 4, !tbaa !8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 124
  store float %i.bi, ptr %i.bu, align 4, !tbaa !27
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !29

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next.3, %.loopexit.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod179)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %.lr.ph.epil ], [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.bv = getelementptr inbounds nuw [36 x i8], ptr %i.ad, i64 %indvars.iv.epil ; 2 uses
  store <4 x float> %i.bh, ptr %i.bv, align 4, !tbaa !8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store float %i.bi, ptr %i.bw, align 4, !tbaa !27
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph.epil, !llvm.loop !30

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.epil, %bb.c, %bb.b
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.loopexit
  %i.bx = getelementptr inbounds nuw [288 x i8], ptr %i.q, i64 %indvars.iv171
  %i.by = fmul double %.1152, %i.r
  %i.bz = fptrunc double %i.by to float
  %i.ca = fptrunc double %i.ac to float
  %i.cb = fpext float %i.bz to double
  %i.cc = fmul double %i.cb, f0x401921FB54442D18
  %i.cd = fdiv double %i.cc, %i.l
  %i.ce = fptrunc double %i.cd to float
  %i.cf = fpext float %i.ce to double             ; 3 uses
  %i.cg = tail call double @sin(double noundef %i.cf) #11
  %i.ch = fptrunc double %i.cg to float           ; 2 uses
  %i.ci = tail call double @cos(double noundef %i.cf) #11
  %i.cj = fpext float %i.ca to double
  %i.ck = fmul double %i.cj, f0x3FD62E42FEFA39EF
  %i.cl = fmul double %i.ck, %i.cf
  %i.cm = fpext float %i.ch to double
  %i.cn = fdiv double %i.cl, %i.cm
  %i.co = tail call double @sinh(double noundef %i.cn) #11
  %i.cp = fptrunc double %i.co to float
  %i.cq = fmul float %i.ch, %i.cp                 ; 4 uses
  %i.cr = fsub float 1.000000e+00, %i.cq
  %i.cs = fptrunc double %i.ci to float
  %i.ct = fmul float %i.cs, -2.000000e+00
  %i.cu = fadd float %i.cq, 1.000000e+00          ; 2 uses
  %i.cv = fneg float %i.cq
  %i.cw = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.cq, i64 0
  %i.cx = insertelement <4 x float> %i.cw, float %i.cv, i64 2
  %i.cy = insertelement <4 x float> %i.cx, float %i.ct, i64 3
  %i.cz = insertelement <4 x float> poison, float %i.cu, i64 0
  %i.da = shufflevector <4 x float> %i.cz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.db = fdiv <4 x float> %i.cy, %i.da           ; 2 uses
  store <4 x float> %i.db, ptr %i.bx, align 4, !tbaa !8
  %i.dc = fdiv float %i.cr, %i.cu
  br label %bb.f

bb.e:                                             ; preds = %.loopexit
  %i.dd = getelementptr inbounds nuw [288 x i8], ptr %0, i64 %indvars.iv171 ; 2 uses
  %i.de = getelementptr inbounds nuw [288 x i8], ptr %i.q, i64 %indvars.iv171
  %i.df = load <4 x float>, ptr %i.dd, align 4, !tbaa !8 ; 2 uses
  store <4 x float> %i.df, ptr %i.de, align 4, !tbaa !8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !27
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sink = phi float [ %i.dh, %bb.e ], [ %i.dc, %bb.d ] ; 8 uses
  %i.di = phi <4 x float> [ %i.df, %bb.e ], [ %i.db, %bb.d ] ; 7 uses
  %i.dj = getelementptr inbounds nuw [288 x i8], ptr %i.q, i64 %indvars.iv171
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  store float %.sink, ptr %i.dk, align 4, !tbaa !27
  %i.dl = getelementptr inbounds nuw [288 x i8], ptr %i.q, i64 %indvars.iv171 ; 5 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 27648 ; 4 uses
  store <4 x float> %i.di, ptr %i.dm, align 4, !tbaa !8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 27664
  store float %.sink, ptr %i.dn, align 4, !tbaa !27
  br i1 %i.t, label %.lr.ph158.preheader, label %._crit_edge

.lr.ph158.preheader:                              ; preds = %bb.f
  br i1 %i.x, label %.lr.ph158.epil.preheader, label %.lr.ph158

.lr.ph158:                                        ; preds = %.lr.ph158.preheader, %.lr.ph158
  %indvars.iv166 = phi i64 [ %indvars.iv.next167.1, %.lr.ph158 ], [ 1, %.lr.ph158.preheader ] ; 4 uses
  %niter185 = phi i64 [ %niter185.next.1, %.lr.ph158 ], [ 0, %.lr.ph158.preheader ]
  %i.do = getelementptr inbounds nuw [36 x i8], ptr %i.dl, i64 %indvars.iv166 ; 2 uses
  store <4 x float> %i.di, ptr %i.do, align 4, !tbaa !8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  store float %.sink, ptr %i.dp, align 4, !tbaa !27
  %i.dq = getelementptr inbounds nuw [36 x i8], ptr %i.dm, i64 %indvars.iv166 ; 2 uses
  store <4 x float> %i.di, ptr %i.dq, align 4, !tbaa !8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  store float %.sink, ptr %i.dr, align 4, !tbaa !27
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1 ; 2 uses
  %i.ds = getelementptr inbounds nuw [36 x i8], ptr %i.dl, i64 %indvars.iv.next167 ; 2 uses
  store <4 x float> %i.di, ptr %i.ds, align 4, !tbaa !8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  store float %.sink, ptr %i.dt, align 4, !tbaa !27
  %i.du = getelementptr inbounds nuw [36 x i8], ptr %i.dm, i64 %indvars.iv.next167 ; 2 uses
  store <4 x float> %i.di, ptr %i.du, align 4, !tbaa !8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  store float %.sink, ptr %i.dv, align 4, !tbaa !27
  %indvars.iv.next167.1 = add nuw nsw i64 %indvars.iv166, 2 ; 2 uses
  %niter185.next.1 = add nuw i64 %niter185, 2     ; 2 uses
  %niter185.ncmp.1 = icmp eq i64 %niter185.next.1, %unroll_iter184
  br i1 %niter185.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph158, !llvm.loop !31

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph158
  br i1 %lcmp.mod182.not, label %._crit_edge, label %.lr.ph158.epil.preheader

.lr.ph158.epil.preheader:                         ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph158.preheader
  %indvars.iv166.epil.init = phi i64 [ 1, %.lr.ph158.preheader ], [ %indvars.iv.next167.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod183)
  %i.dw = getelementptr inbounds nuw [36 x i8], ptr %i.dl, i64 %indvars.iv166.epil.init ; 2 uses
  store <4 x float> %i.di, ptr %i.dw, align 4, !tbaa !8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  store float %.sink, ptr %i.dx, align 4, !tbaa !27
  %i.dy = getelementptr inbounds nuw [36 x i8], ptr %i.dm, i64 %indvars.iv166.epil.init ; 2 uses
  store <4 x float> %i.di, ptr %i.dy, align 4, !tbaa !8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  store float %.sink, ptr %i.dz, align 4, !tbaa !27
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph158.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.f
  %indvars.iv.next172 = add nuw nsw i64 %indvars.iv171, 1 ; 2 uses
  %exitcond175.not = icmp eq i64 %indvars.iv.next172, %wide.trip.count174
  br i1 %exitcond175.not, label %._crit_edge163, label %bb.b, !llvm.loop !32

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
  %i.b = load i8, ptr %i.a, align 4, !tbaa !12    ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 84877
  %i.d = load i8, ptr %i.c, align 1, !tbaa !13    ; 4 uses
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
  %i.g = load i8, ptr %i.f, align 2, !tbaa !14
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
  %i.p = load float, ptr %i.n, align 4, !tbaa !8  ; 2 uses
  %i.q = getelementptr inbounds nuw [288 x i8], ptr %0, i64 %indvars.iv159 ; 10 uses
  %i.r = load float, ptr %i.q, align 4, !tbaa !33
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.t = load float, ptr %i.s, align 4, !tbaa !34
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 20 ; 2 uses
  %i.v = load float, ptr %i.u, align 4, !tbaa !35 ; 2 uses
  %i.w = fmul float %i.t, %i.v
  %i.x = tail call float @llvm.fmuladd.f32(float %i.r, float %i.p, float %i.w)
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.z = load float, ptr %i.y, align 4, !tbaa !36
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 2 uses
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !37
  %i.ac = tail call float @llvm.fmuladd.f32(float %i.z, float %i.ab, float %i.x)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !38
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 28 ; 2 uses
  %i.ag = load float, ptr %i.af, align 4, !tbaa !39 ; 2 uses
  %i.ah = fneg float %i.ae
  %i.ai = tail call float @llvm.fmuladd.f32(float %i.ah, float %i.ag, float %i.ac)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !27
  %i.al = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 2 uses
  %i.am = load float, ptr %i.al, align 4, !tbaa !40
  %i.an = fneg float %i.ak
  store float %i.v, ptr %i.aa, align 4, !tbaa !37
  store float %i.p, ptr %i.u, align 4, !tbaa !35
  store float %i.ag, ptr %i.al, align 4, !tbaa !40
  %i.ao = getelementptr inbounds nuw [288 x i8], ptr %i.i, i64 %indvars.iv159 ; 10 uses
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !33
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !34
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 20 ; 2 uses
  %i.at = load float, ptr %i.as, align 4, !tbaa !35 ; 2 uses
  %i.au = fmul float %i.ar, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aw = load float, ptr %i.av, align 4, !tbaa !36
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ao, i64 24 ; 2 uses
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !37
  %i.az = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  %i.ba = load float, ptr %i.az, align 4, !tbaa !38
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ao, i64 28 ; 2 uses
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !39 ; 2 uses
  %i.bd = fneg float %i.ba
  %i.be = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.bf = load float, ptr %i.be, align 4, !tbaa !27
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ao, i64 32 ; 2 uses
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !40
  %i.bi = fneg float %i.bf
  %i.bj = tail call float @llvm.fmuladd.f32(float %i.an, float %i.am, float %i.ai) ; 3 uses
  store float %i.bj, ptr %i.af, align 4, !tbaa !39
  %i.bk = load float, ptr %i.o, align 4, !tbaa !8 ; 2 uses
  %i.bl = tail call float @llvm.fmuladd.f32(float %i.ap, float %i.bk, float %i.au)
  %i.bm = tail call float @llvm.fmuladd.f32(float %i.aw, float %i.ay, float %i.bl)
  %i.bn = tail call float @llvm.fmuladd.f32(float %i.bd, float %i.bc, float %i.bm)
  %i.bo = tail call float @llvm.fmuladd.f32(float %i.bi, float %i.bh, float %i.bn) ; 3 uses
  store float %i.at, ptr %i.ax, align 4, !tbaa !37
  store float %i.bk, ptr %i.as, align 4, !tbaa !35
  store float %i.bc, ptr %i.bg, align 4, !tbaa !40
  store float %i.bo, ptr %i.bb, align 4, !tbaa !39
  %i.bp = insertelement <2 x float> poison, float %i.bj, i64 0
  %i.bq = insertelement <2 x float> %i.bp, float %i.bo, i64 1 ; 2 uses
  br i1 %i.j, label %.lr.ph.us, label %._crit_edge.us

.lr.ph.us:                                        ; preds = %bb.c, %.lr.ph.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.us ], [ 1, %bb.c ] ; 3 uses
  %.0118.us = phi float [ %i.dl, %.lr.ph.us ], [ %i.bo, %bb.c ]
  %.089117.us = phi float [ %i.dm, %.lr.ph.us ], [ %i.bj, %bb.c ]
  %i.br = phi <2 x float> [ %i.dk, %.lr.ph.us ], [ %i.bq, %bb.c ]
  %i.bs = getelementptr inbounds nuw [36 x i8], ptr %i.q, i64 %indvars.iv ; 7 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 20 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 24 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 28 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.by = getelementptr inbounds nuw i8, ptr %i.bs, i64 32 ; 2 uses
  %i.bz = load float, ptr %i.by, align 4, !tbaa !40
  %i.ca = getelementptr inbounds nuw [36 x i8], ptr %i.ao, i64 %indvars.iv ; 7 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 20 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 24 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 28 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ca, i64 32 ; 2 uses
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !40
  %i.ci = load <2 x float>, ptr %i.bs, align 4, !tbaa !8 ; 2 uses
  %i.cj = load <2 x float>, ptr %i.bu, align 4, !tbaa !8 ; 2 uses
  %i.ck = load <2 x float>, ptr %i.bv, align 4, !tbaa !8 ; 2 uses
  %i.cl = load float, ptr %i.bw, align 4, !tbaa !39
  %i.cm = load <2 x float>, ptr %i.bx, align 4, !tbaa !8 ; 2 uses
  %i.cn = load float, ptr %i.bt, align 4, !tbaa !35
  store float %i.cn, ptr %i.bv, align 4, !tbaa !37
  store float %.089117.us, ptr %i.bt, align 4, !tbaa !35
  store float %i.cl, ptr %i.by, align 4, !tbaa !40
  %i.co = load <2 x float>, ptr %i.ca, align 4, !tbaa !8 ; 2 uses
  %i.cp = load <2 x float>, ptr %i.cf, align 4, !tbaa !8 ; 2 uses
  %i.cq = load float, ptr %i.cb, align 4, !tbaa !35
  %i.cr = shufflevector <2 x float> %i.ci, <2 x float> %i.co, <2 x i32> <i32 1, i32 3>
  %i.cs = shufflevector <2 x float> %i.cm, <2 x float> %i.cp, <2 x i32> <i32 1, i32 3>
  %i.ct = fmul <2 x float> %i.cr, %i.cs
  %i.cu = shufflevector <2 x float> %i.ci, <2 x float> %i.co, <2 x i32> <i32 0, i32 2>
  %i.cv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cu, <2 x float> %i.br, <2 x float> %i.ct)
  %i.cw = load <2 x float>, ptr %i.cc, align 4, !tbaa !8 ; 2 uses
  %i.cx = load <2 x float>, ptr %i.cd, align 4, !tbaa !8 ; 2 uses
  %i.cy = load float, ptr %i.ce, align 4, !tbaa !39
  %i.cz = shufflevector <2 x float> %i.cj, <2 x float> %i.cw, <2 x i32> <i32 0, i32 2>
  %i.da = shufflevector <2 x float> %i.ck, <2 x float> %i.cx, <2 x i32> <i32 0, i32 2>
  %i.db = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cz, <2 x float> %i.da, <2 x float> %i.cv)
  %i.dc = shufflevector <2 x float> %i.cj, <2 x float> %i.cw, <2 x i32> <i32 1, i32 3>
  %i.dd = fneg <2 x float> %i.dc
  %i.de = shufflevector <2 x float> %i.ck, <2 x float> %i.cx, <2 x i32> <i32 1, i32 3>
  %i.df = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dd, <2 x float> %i.de, <2 x float> %i.db)
  %i.dg = shufflevector <2 x float> %i.cm, <2 x float> %i.cp, <2 x i32> <i32 0, i32 2>
  %i.dh = fneg <2 x float> %i.dg
  %i.di = insertelement <2 x float> poison, float %i.bz, i64 0
  %i.dj = insertelement <2 x float> %i.di, float %i.ch, i64 1
  %i.dk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dh, <2 x float> %i.dj, <2 x float> %i.df) ; 4 uses
  %i.dl = extractelement <2 x float> %i.dk, i64 1 ; 2 uses
  %i.dm = extractelement <2 x float> %i.dk, i64 0 ; 2 uses
  store float %i.dm, ptr %i.bw, align 4, !tbaa !39
  store float %i.cq, ptr %i.cd, align 4, !tbaa !37
  store float %.0118.us, ptr %i.cb, align 4, !tbaa !35
  store float %i.cy, ptr %i.cg, align 4, !tbaa !40
end_hunk_0
