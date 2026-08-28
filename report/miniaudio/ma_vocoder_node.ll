Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/miniaudio/original/ma_vocoder_node?download=true
inline.NumInlined: 11
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 9
begin_hunk_0_@voclib_initialize:bb.a
  br i1 %lcmp.mod.not, label %voclib_initialize_envelopes.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %voclib_initialize_envelopes.exit.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i39.epil.init = phi i64 [ 1, %.lr.ph.i ], [ %indvars.iv.next.i40.3, %voclib_initialize_envelopes.exit.loopexit.unr-lcssa ]
  %lcmp.mod44 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod44)
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.epil.preheader
  %indvars.iv.i39.epil = phi i64 [ %indvars.iv.i39.epil.init, %.epil.preheader ], [ %indvars.iv.next.i40.epil, %bb.j ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.j ]
  %i.bh = getelementptr inbounds nuw [20 x i8], ptr %i.am, i64 %indvars.iv.i39.epil
  store float %i.au, ptr %i.bh, align 4, !tbaa !18
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
  %.0151158 = tail call i32 @llvm.umin.i32(i32 %i.b, i32 12000)
  %.0151 = uitofp nneg i32 %.0151158 to double
  %i.c = fdiv double %.0151, 8.000000e+01
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 84876
  %i.e = load i8, ptr %i.d, align 4, !tbaa !12    ; 3 uses
  %i.f = uitofp i8 %i.e to double
  %i.g = fdiv double 1.000000e+00, %i.f
  %i.h = tail call double @pow(double noundef %i.c, double noundef %i.g) #11 ; 2 uses
  %.not167 = icmp eq i8 %i.e, 0
  br i1 %.not167, label %._crit_edge166, label %.lr.ph165

.lr.ph165:                                        ; preds = %bb.a
  %.not = icmp eq i32 %1, 0
  %i.i = uitofp i32 %i.b to float
  %i.j = fpext float %i.i to double               ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 84877
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 84868
  %i.m = load float, ptr %i.l, align 4, !tbaa !26 ; 2 uses
  %i.n = fcmp une float %i.m, 1.000000e+00
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 29568 ; 4 uses
  %i.p = fpext float %i.m to double
  %i.q = load i8, ptr %i.k, align 1, !tbaa !13    ; 2 uses
  %i.r = icmp ugt i8 %i.q, 1                      ; 2 uses
  %wide.trip.count177 = zext i8 %i.e to i64
  %wide.trip.count = zext i8 %i.q to i64          ; 2 uses
  %i.s = add nsw i64 %wide.trip.count, -1         ; 5 uses
  %i.t = add nsw i64 %wide.trip.count, -2         ; 2 uses
  %xtraiter = and i64 %i.s, 3                     ; 3 uses
  %i.u = icmp ult i64 %i.t, 3
  %unroll_iter = and i64 %i.s, -4
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod182 = icmp ne i64 %xtraiter, 0
  %xtraiter183 = and i64 %i.s, 1
  %i.v = icmp eq i64 %i.t, 0
  %unroll_iter187 = and i64 %i.s, -2
  %lcmp.mod185.not = icmp eq i64 %xtraiter183, 0
  %lcmp.mod186 = trunc i64 %i.s to i1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph165, %._crit_edge
  %indvars.iv174 = phi i64 [ 0, %.lr.ph165 ], [ %indvars.iv.next175, %._crit_edge ] ; 7 uses
  %.0152163 = phi double [ 0.000000e+00, %.lr.ph165 ], [ %.1153, %._crit_edge ] ; 3 uses
  %i.w = fcmp ogt double %.0152163, 0.000000e+00
  %i.x = fmul double %i.h, %.0152163
  %.1153 = select i1 %i.w, double %i.x, double 8.000000e+01 ; 5 uses
  %i.y = fmul double %i.h, %.1153
  %i.z = fsub double %i.y, %.0152163
  %i.aa = fdiv double %i.z, %.1153                ; 2 uses
  br i1 %.not, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw [288 x i8], ptr %0, i64 %indvars.iv174 ; 7 uses
  %i.ac = insertelement <2 x double> poison, double %.1153, i64 0
  %i.ad = insertelement <2 x double> %i.ac, double %i.aa, i64 1
  %i.ae = fptrunc <2 x double> %i.ad to <2 x float>
  %i.af = fpext <2 x float> %i.ae to <2 x double>
  %i.ag = fmul <2 x double> %i.af, <double f0x401921FB54442D18, double f0x3FD62E42FEFA39EF> ; 2 uses
  %i.ah = extractelement <2 x double> %i.ag, i64 0
  %i.ai = fdiv double %i.ah, %i.j
  %i.aj = fptrunc double %i.ai to float
  %i.ak = fpext float %i.aj to double             ; 3 uses
  %i.al = tail call double @sin(double noundef %i.ak) #11
  %i.am = fptrunc double %i.al to float           ; 2 uses
  %i.an = tail call double @cos(double noundef %i.ak) #11
  %i.ao = extractelement <2 x double> %i.ag, i64 1
  %i.ap = fmul double %i.ao, %i.ak
  %i.aq = fpext float %i.am to double
  %i.ar = fdiv double %i.ap, %i.aq
  %i.as = tail call double @sinh(double noundef %i.ar) #11
  %i.at = fptrunc double %i.as to float
  %i.au = fmul float %i.am, %i.at                 ; 4 uses
  %i.av = fsub float 1.000000e+00, %i.au
  %i.aw = fptrunc double %i.an to float
  %i.ax = fmul float %i.aw, -2.000000e+00
  %i.ay = fadd float %i.au, 1.000000e+00          ; 2 uses
  %i.az = fneg float %i.au
  %i.ba = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.au, i64 0
  %i.bb = insertelement <4 x float> %i.ba, float %i.az, i64 2
  %i.bc = insertelement <4 x float> %i.bb, float %i.ax, i64 3
  %i.bd = insertelement <4 x float> poison, float %i.ay, i64 0
  %i.be = shufflevector <4 x float> %i.bd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bf = fdiv <4 x float> %i.bc, %i.be           ; 6 uses
  store <4 x float> %i.bf, ptr %i.ab, align 4, !tbaa !8
  %i.bg = fdiv float %i.av, %i.ay                 ; 6 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store float %i.bg, ptr %i.bh, align 4, !tbaa !27
  br i1 %i.r, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.c
  br i1 %i.u, label %.lr.ph.epil.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ 1, %.lr.ph.preheader ] ; 5 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.bi = getelementptr inbounds nuw [36 x i8], ptr %i.ab, i64 %indvars.iv ; 2 uses
  store <4 x float> %i.bf, ptr %i.bi, align 4, !tbaa !8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store float %i.bg, ptr %i.bj, align 4, !tbaa !27
  %i.bk = getelementptr inbounds nuw [36 x i8], ptr %i.ab, i64 %indvars.iv ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 36
  store <4 x float> %i.bf, ptr %i.bl, align 4, !tbaa !8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 52
  store float %i.bg, ptr %i.bm, align 4, !tbaa !27
  %i.bn = getelementptr inbounds nuw [36 x i8], ptr %i.ab, i64 %indvars.iv ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 72
  store <4 x float> %i.bf, ptr %i.bo, align 4, !tbaa !8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 88
  store float %i.bg, ptr %i.bp, align 4, !tbaa !27
  %i.bq = getelementptr inbounds nuw [36 x i8], ptr %i.ab, i64 %indvars.iv ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 108
  store <4 x float> %i.bf, ptr %i.br, align 4, !tbaa !8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 124
  store float %i.bg, ptr %i.bs, align 4, !tbaa !27
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !29

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next.3, %.loopexit.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod182)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %.lr.ph.epil ], [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.bt = getelementptr inbounds nuw [36 x i8], ptr %i.ab, i64 %indvars.iv.epil ; 2 uses
  store <4 x float> %i.bf, ptr %i.bt, align 4, !tbaa !8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  store float %i.bg, ptr %i.bu, align 4, !tbaa !27
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph.epil, !llvm.loop !30

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.epil, %bb.c, %bb.b
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.loopexit
  %i.bv = getelementptr inbounds nuw [288 x i8], ptr %i.o, i64 %indvars.iv174
  %i.bw = fmul double %.1153, %i.p
  %i.bx = fptrunc double %i.bw to float
  %i.by = fptrunc double %i.aa to float
  %i.bz = fpext float %i.bx to double
  %i.ca = fmul double %i.bz, f0x401921FB54442D18
  %i.cb = fdiv double %i.ca, %i.j
  %i.cc = fptrunc double %i.cb to float
  %i.cd = fpext float %i.cc to double             ; 3 uses
  %i.ce = tail call double @sin(double noundef %i.cd) #11
  %i.cf = fptrunc double %i.ce to float           ; 2 uses
  %i.cg = tail call double @cos(double noundef %i.cd) #11
  %i.ch = fpext float %i.by to double
  %i.ci = fmul double %i.ch, f0x3FD62E42FEFA39EF
  %i.cj = fmul double %i.ci, %i.cd
  %i.ck = fpext float %i.cf to double
  %i.cl = fdiv double %i.cj, %i.ck
  %i.cm = tail call double @sinh(double noundef %i.cl) #11
  %i.cn = fptrunc double %i.cm to float
  %i.co = fmul float %i.cf, %i.cn                 ; 4 uses
  %i.cp = fsub float 1.000000e+00, %i.co
  %i.cq = fptrunc double %i.cg to float
  %i.cr = fmul float %i.cq, -2.000000e+00
  %i.cs = fadd float %i.co, 1.000000e+00          ; 2 uses
  %i.ct = fneg float %i.co
  %i.cu = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.co, i64 0
  %i.cv = insertelement <4 x float> %i.cu, float %i.ct, i64 2
  %i.cw = insertelement <4 x float> %i.cv, float %i.cr, i64 3
  %i.cx = insertelement <4 x float> poison, float %i.cs, i64 0
  %i.cy = shufflevector <4 x float> %i.cx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cz = fdiv <4 x float> %i.cw, %i.cy           ; 2 uses
  store <4 x float> %i.cz, ptr %i.bv, align 4, !tbaa !8
  %i.da = fdiv float %i.cp, %i.cs
  br label %bb.f

bb.e:                                             ; preds = %.loopexit
  %i.db = getelementptr inbounds nuw [288 x i8], ptr %0, i64 %indvars.iv174 ; 2 uses
  %i.dc = getelementptr inbounds nuw [288 x i8], ptr %i.o, i64 %indvars.iv174
  %i.dd = load <4 x float>, ptr %i.db, align 4, !tbaa !8 ; 2 uses
  store <4 x float> %i.dd, ptr %i.dc, align 4, !tbaa !8
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.df = load float, ptr %i.de, align 4, !tbaa !27
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sink = phi float [ %i.df, %bb.e ], [ %i.da, %bb.d ] ; 8 uses
  %i.dg = phi <4 x float> [ %i.dd, %bb.e ], [ %i.cz, %bb.d ] ; 7 uses
  %i.dh = getelementptr inbounds nuw [288 x i8], ptr %i.o, i64 %indvars.iv174
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  store float %.sink, ptr %i.di, align 4, !tbaa !27
  %i.dj = getelementptr inbounds nuw [288 x i8], ptr %i.o, i64 %indvars.iv174 ; 5 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 27648 ; 4 uses
  store <4 x float> %i.dg, ptr %i.dk, align 4, !tbaa !8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 27664
  store float %.sink, ptr %i.dl, align 4, !tbaa !27
  br i1 %i.r, label %.lr.ph161.preheader, label %._crit_edge

.lr.ph161.preheader:                              ; preds = %bb.f
  br i1 %i.v, label %.lr.ph161.epil.preheader, label %.lr.ph161

.lr.ph161:                                        ; preds = %.lr.ph161.preheader, %.lr.ph161
end_hunk_0
begin_hunk_1_@ma_vocoder_node_init:bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.af, i8 0, i64 16, i1 false)
  %i.ag = getelementptr inbounds nuw [36 x i8], ptr %i.ad, i64 %indvars.iv.i.i ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 27668
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ai, i8 0, i64 16, i1 false)
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.aj = getelementptr inbounds nuw [36 x i8], ptr %i.ac, i64 %indvars.iv.next.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ak, i8 0, i64 16, i1 false)
  %i.al = getelementptr inbounds nuw [36 x i8], ptr %i.ad, i64 %indvars.iv.next.i.i ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.am, i8 0, i64 16, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 27668
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.an, i8 0, i64 16, i1 false)
  %indvars.iv.next.i.i.1 = or disjoint i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.ao = getelementptr inbounds nuw [36 x i8], ptr %i.ac, i64 %indvars.iv.next.i.i.1
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ap, i8 0, i64 16, i1 false)
  %i.aq = getelementptr inbounds nuw [36 x i8], ptr %i.ad, i64 %indvars.iv.next.i.i.1 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ar, i8 0, i64 16, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 27668
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.as, i8 0, i64 16, i1 false)
  %indvars.iv.next.i.i.2 = or disjoint i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.at = getelementptr inbounds nuw [36 x i8], ptr %i.ac, i64 %indvars.iv.next.i.i.2
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.au, i8 0, i64 16, i1 false)
  %i.av = getelementptr inbounds nuw [36 x i8], ptr %i.ad, i64 %indvars.iv.next.i.i.2 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.aw, i8 0, i64 16, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 27668
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ax, i8 0, i64 16, i1 false)
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.i.i.unr-lcssa, label %.preheader.us.i.i.new, !llvm.loop !23

._crit_edge.us.i.i.unr-lcssa:                     ; preds = %.preheader.us.i.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.us.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i.i.unr-lcssa, %.preheader.us.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.preheader.us.i.i ], [ %indvars.iv.next.i.i.3, %._crit_edge.us.i.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod24)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.i.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.i.epil, %bb.d ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.ay = getelementptr inbounds nuw [36 x i8], ptr %i.ac, i64 %indvars.iv.i.i.epil
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.az, i8 0, i64 16, i1 false)
  %i.ba = getelementptr inbounds nuw [36 x i8], ptr %i.ad, i64 %indvars.iv.i.i.epil ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bb, i8 0, i64 16, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 27668
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bc, i8 0, i64 16, i1 false)
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us.i.i, label %bb.d, !llvm.loop !56

._crit_edge.us.i.i:                               ; preds = %bb.d, %._crit_edge.us.i.i.unr-lcssa
  %i.bd = getelementptr inbounds nuw [20 x i8], ptr %i.e, i64 %indvars.iv24.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 27652
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.be, i8 0, i64 16, i1 false)
  %indvars.iv.next25.i.i = add nuw nsw i64 %indvars.iv24.i.i, 1 ; 2 uses
  %exitcond28.not.i.i = icmp eq i64 %indvars.iv.next25.i.i, %wide.trip.count32.i.i
  br i1 %exitcond28.not.i.i, label %voclib_reset_history.exit.i, label %.preheader.us.i.i, !llvm.loop !15

voclib_reset_history.exit.i:                      ; preds = %._crit_edge.us.i.i
  tail call fastcc void @voclib_initialize_filterbank(ptr noundef nonnull %i.e, i32 noundef 0)
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 28008 ; 6 uses
  %i.bg = load float, ptr %i.u, align 8, !tbaa !17
  %i.bh = fpext float %i.bg to double
  %i.bi = load i32, ptr %i.v, align 8, !tbaa !10
  %i.bj = uitofp i32 %i.bi to double
  %i.bk = fmul double %i.bh, %i.bj
  %i.bl = fdiv double 1.000000e+00, %i.bk
  %i.bm = tail call double @pow(double noundef 1.000000e-02, double noundef %i.bl) #11
  %i.bn = fptrunc double %i.bm to float           ; 6 uses
  store float %i.bn, ptr %i.bf, align 8, !tbaa !18
  %i.bo = load i8, ptr %i.w, align 4, !tbaa !12   ; 3 uses
  %i.bp = icmp ugt i8 %i.bo, 1
  br i1 %i.bp, label %.lr.ph.i.i, label %.loopexit

.lr.ph.i.i:                                       ; preds = %voclib_reset_history.exit.i
  %wide.trip.count.i38.i = zext i8 %i.bo to i64
  %i.bq = add nsw i64 %wide.trip.count.i38.i, -1  ; 2 uses
  %xtraiter26 = and i64 %i.bq, 3                  ; 3 uses
  %i.br = add i8 %i.bo, -2
  %i.bs = icmp ult i8 %i.br, 3
  br i1 %i.bs, label %.epil.preheader25, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter30 = and i64 %i.bq, -4
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i.i.new
  %indvars.iv.i39.i = phi i64 [ 1, %.lr.ph.i.i.new ], [ %indvars.iv.next.i40.i.3, %bb.e ] ; 5 uses
  %niter31 = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter31.next.3, %bb.e ]
  %i.bt = getelementptr inbounds nuw [20 x i8], ptr %i.bf, i64 %indvars.iv.i39.i
  store float %i.bn, ptr %i.bt, align 4, !tbaa !18
  %i.bu = getelementptr inbounds nuw [20 x i8], ptr %i.bf, i64 %indvars.iv.i39.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 20
  store float %i.bn, ptr %i.bv, align 4, !tbaa !18
  %i.bw = getelementptr inbounds nuw [20 x i8], ptr %i.bf, i64 %indvars.iv.i39.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  store float %i.bn, ptr %i.bx, align 4, !tbaa !18
  %i.by = getelementptr inbounds nuw [20 x i8], ptr %i.bf, i64 %indvars.iv.i39.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 60
  store float %i.bn, ptr %i.bz, align 4, !tbaa !18
  %indvars.iv.next.i40.i.3 = add nuw nsw i64 %indvars.iv.i39.i, 4 ; 2 uses
  %niter31.next.3 = add nuw i64 %niter31, 4       ; 2 uses
  %niter31.ncmp.3 = icmp eq i64 %niter31.next.3, %unroll_iter30
  br i1 %niter31.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %bb.e, !llvm.loop !20

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.e
  %lcmp.mod28.not = icmp eq i64 %xtraiter26, 0
  br i1 %lcmp.mod28.not, label %.loopexit, label %.epil.preheader25

.epil.preheader25:                                ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.i39.i.epil.init = phi i64 [ 1, %.lr.ph.i.i ], [ %indvars.iv.next.i40.i.3, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod29 = icmp ne i64 %xtraiter26, 0
  tail call void @llvm.assume(i1 %lcmp.mod29)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader25
  %indvars.iv.i39.i.epil = phi i64 [ %indvars.iv.i39.i.epil.init, %.epil.preheader25 ], [ %indvars.iv.next.i40.i.epil, %bb.f ] ; 2 uses
  %epil.iter27 = phi i64 [ 0, %.epil.preheader25 ], [ %epil.iter27.next, %bb.f ]
  %i.ca = getelementptr inbounds nuw [20 x i8], ptr %i.bf, i64 %indvars.iv.i39.i.epil
  store float %i.bn, ptr %i.ca, align 4, !tbaa !18
  %indvars.iv.next.i40.i.epil = add nuw nsw i64 %indvars.iv.i39.i.epil, 1
  %epil.iter27.next = add i64 %epil.iter27, 1     ; 2 uses
  %epil.iter27.cmp.not = icmp eq i64 %epil.iter27.next, %xtraiter26
  br i1 %epil.iter27.cmp.not, label %.loopexit, label %bb.f, !llvm.loop !57

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.f, %voclib_reset_history.exit.i
  %i.cb = load i32, ptr %i.n, align 8, !tbaa !48  ; 2 uses
  store i32 %i.cb, ptr %i.a, align 4, !tbaa !58
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 1, ptr %i.cc, align 4, !tbaa !58
  store i32 %i.cb, ptr %i.b, align 4, !tbaa !58
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 24, i1 false), !tbaa.struct !59
  store ptr @g_ma_vocoder_node_vtable, ptr %4, align 8, !tbaa !62
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.a, ptr %i.cd, align 8, !tbaa !63
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.b, ptr %i.ce, align 8, !tbaa !64
  %i.cf = call i32 @ma_node_init(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %2, ptr noundef nonnull %3) #11
  br label %voclib_initialize.exit

voclib_initialize.exit:                           ; preds = %bb.c, %.loopexit, %bb.b, %bb.a
  %.0 = phi i32 [ %i.cf, %.loopexit ], [ -2, %bb.a ], [ -2, %bb.b ], [ -2, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  ret i32 %.0
}

declare i32 @ma_node_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define void @ma_vocoder_node_uninit(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 {
bb.a:
  tail call void @ma_node_uninit(ptr noundef %0, ptr noundef %1) #11
  ret void
}

declare void @ma_node_uninit(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sinh(double noundef) local_unnamed_addr #8

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @ma_vocoder_node_process_pcm_frames(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.b = load ptr, ptr %1, align 8, !tbaa !65
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !65
  %i.e = load ptr, ptr %3, align 8, !tbaa !65
  %i.f = load i32, ptr %4, align 4, !tbaa !58
  %i.g = tail call i32 @voclib_process(ptr noundef nonnull %i.a, ptr noundef %i.b, ptr noundef %i.d, ptr noundef %i.e, i32 noundef %i.f) ; 0 uses
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #3

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"float", !6, i64 0}
!10 = !{!11, !5, i64 84872}
!11 = !{!"voclib_instance", !6, i64 0, !6, i64 27648, !6, i64 29568, !9, i64 84864, !9, i64 84868, !5, i64 84872, !6, i64 84876, !6, i64 84877, !6, i64 84878}
!12 = !{!11, !6, i64 84876}
!13 = !{!11, !6, i64 84877}
!14 = !{!11, !6, i64 84878}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!11, !9, i64 84864}
!18 = !{!19, !9, i64 0}
!19 = !{!"", !9, i64 0, !6, i64 4}
!20 = distinct !{!20, !16}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.unroll.disable"}
!23 = distinct !{!23, !16}
!24 = distinct !{!24, !22}
!25 = distinct !{!25, !22}
!26 = !{!11, !9, i64 84868}
!27 = !{!28, !9, i64 16}
!28 = !{!"", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32}
!29 = distinct !{!29, !16}
!30 = distinct !{!30, !22}
!31 = distinct !{!31, !16}
!32 = distinct !{!32, !16}
!33 = !{!28, !9, i64 0}
!34 = !{!28, !9, i64 4}
!35 = !{!28, !9, i64 20}
!36 = !{!28, !9, i64 8}
!37 = !{!28, !9, i64 24}
!38 = !{!28, !9, i64 12}
!39 = !{!28, !9, i64 28}
!40 = !{!28, !9, i64 32}
!41 = distinct !{!41, !16}
!42 = distinct !{!42, !16}
!43 = distinct !{!43, !16}
!44 = distinct !{!44, !16}
!45 = distinct !{!45, !16}
!46 = distinct !{!46, !16}
!47 = distinct !{!47, !22}
!48 = !{!49, !5, i64 40}
!49 = !{!"", !50, i64 0, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52}
!50 = !{!"", !51, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !52, i64 24, !52, i64 32}
!51 = !{!"any pointer", !6, i64 0}
!52 = !{!"p1 int", !51, i64 0}
!53 = !{!49, !5, i64 44}
!54 = !{!49, !5, i64 48}
!55 = !{!49, !5, i64 52}
!56 = distinct !{!56, !22}
!57 = distinct !{!57, !22}
!58 = !{!5, !5, i64 0}
!59 = !{i64 0, i64 8, !60, i64 8, i64 4, !58, i64 12, i64 4, !58, i64 16, i64 4, !58, i64 24, i64 8, !61, i64 32, i64 8, !61}
!60 = !{!51, !51, i64 0}
!61 = !{!52, !52, i64 0}
!62 = !{!50, !51, i64 0}
!63 = !{!50, !52, i64 24}
!64 = !{!50, !52, i64 32}
!65 = !{!66, !66, i64 0}
!66 = !{!"p1 float", !51, i64 0}
end_hunk_1
