Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/miniaudio/original/ma_vocoder_node?download=true
inline.NumInlined: 11
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 9
begin_hunk_0_@voclib_process:bb.a
  br i1 %i.lv, label %.preheader.us, label %.loopexit, !llvm.loop !46

.loopexit.sink.split:                             ; preds = %.preheader.preheader, %.preheader113.preheader
  %.sink = phi i64 [ %i.m, %.preheader113.preheader ], [ %i.ev, %.preheader.preheader ]
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %3, i8 0, i64 %.sink, i1 false), !tbaa !8
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge123.us, %._crit_edge136.us, %.loopexit.sink.split, %.preheader112, %bb.a
  %.0101 = phi i32 [ 1, %.preheader112 ], [ 0, %bb.a ], [ 1, %._crit_edge136.us ], [ 1, %.loopexit.sink.split ], [ 1, %._crit_edge123.us ]
  ret i32 %.0101
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define range(i32 0, 2) i32 @voclib_set_reaction_time(ptr nofree noundef captures(none) %0, float noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = fcmp olt float %1, 2.000000e-03
  %i.b = fcmp ogt float %1, 2.000000e+00
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %voclib_initialize_envelopes.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 84864
  store float %1, ptr %i.c, align 4, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 27648 ; 6 uses
  %i.e = fpext ninf float %1 to double
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 84872
  %i.g = load i32, ptr %i.f, align 4, !tbaa !10
  %i.h = uitofp i32 %i.g to double
  %i.i = fmul double %i.e, %i.h
  %i.j = fdiv double 1.000000e+00, %i.i
  %i.k = tail call double @pow(double noundef 1.000000e-02, double noundef %i.j) #11
  %i.l = fptrunc double %i.k to float             ; 6 uses
  store float %i.l, ptr %i.d, align 4, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 84876
  %i.n = load i8, ptr %i.m, align 4, !tbaa !12    ; 3 uses
  %i.o = icmp ugt i8 %i.n, 1
  br i1 %i.o, label %.lr.ph.i, label %voclib_initialize_envelopes.exit

.lr.ph.i:                                         ; preds = %bb.b
  %wide.trip.count.i = zext i8 %i.n to i64
  %i.p = add nsw i64 %wide.trip.count.i, -1       ; 2 uses
  %xtraiter = and i64 %i.p, 3                     ; 3 uses
  %i.q = add i8 %i.n, -2
  %i.r = icmp ult i8 %i.q, 3
  br i1 %i.r, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.p, -4
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.i.new ], [ %indvars.iv.next.i.3, %bb.c ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.c ]
  %i.s = getelementptr inbounds nuw [20 x i8], ptr %i.d, i64 %indvars.iv.i
  store float %i.l, ptr %i.s, align 4, !tbaa !18
  %i.t = getelementptr inbounds nuw [20 x i8], ptr %i.d, i64 %indvars.iv.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  store float %i.l, ptr %i.u, align 4, !tbaa !18
  %i.v = getelementptr inbounds nuw [20 x i8], ptr %i.d, i64 %indvars.iv.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  store float %i.l, ptr %i.w, align 4, !tbaa !18
  %i.x = getelementptr inbounds nuw [20 x i8], ptr %i.d, i64 %indvars.iv.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 60
  store float %i.l, ptr %i.y, align 4, !tbaa !18
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %voclib_initialize_envelopes.exit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !20

voclib_initialize_envelopes.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %voclib_initialize_envelopes.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %voclib_initialize_envelopes.exit.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 1, %.lr.ph.i ], [ %indvars.iv.next.i.3, %voclib_initialize_envelopes.exit.loopexit.unr-lcssa ]
  %lcmp.mod9 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod9)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.d ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.z = getelementptr inbounds nuw [20 x i8], ptr %i.d, i64 %indvars.iv.i.epil
  store float %i.l, ptr %i.z, align 4, !tbaa !18
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %voclib_initialize_envelopes.exit, label %bb.d, !llvm.loop !47

voclib_initialize_envelopes.exit:                 ; preds = %voclib_initialize_envelopes.exit.loopexit.unr-lcssa, %bb.d, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %bb.b ], [ 1, %bb.d ], [ 1, %voclib_initialize_envelopes.exit.loopexit.unr-lcssa ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define float @voclib_get_reaction_time(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 84864
  %i.b = load float, ptr %i.a, align 4, !tbaa !17
  ret float %i.b
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define range(i32 0, 2) i32 @voclib_set_formant_shift(ptr nofree noundef captures(none) %0, float noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = fcmp olt float %1, 2.500000e-01
  %i.b = fcmp ogt float %1, 4.000000e+00
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 84868
  store float %1, ptr %i.c, align 4, !tbaa !26
  tail call fastcc void @voclib_initialize_filterbank(ptr noundef %0, i32 noundef 1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define float @voclib_get_formant_shift(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 84868
  %i.b = load float, ptr %i.a, align 4, !tbaa !26
  ret float %i.b
}

; Function Attrs: nounwind uwtable
define void @ma_vocoder_node_config_init(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.ma_vocoder_node_config) align 8 captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #5 {
bb.a:
  tail call void @ma_node_config_init(ptr dead_on_unwind nonnull writable sret(%struct.ma_node_config) align 8 %0) #11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %1, ptr %i.a, align 8, !tbaa !48
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %2, ptr %i.b, align 4, !tbaa !53
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 16, ptr %i.c, align 8, !tbaa !54
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 6, ptr %i.d, align 4, !tbaa !55
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

declare void @ma_node_config_init(ptr dead_on_unwind writable sret(%struct.ma_node_config) align 8) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define i32 @ma_vocoder_node_init(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #5 {
bb.a:
  %4 = alloca %struct.ma_node_config, align 8     ; 7 uses
  %i.a = alloca [2 x i32], align 4                ; 5 uses
  %i.b = alloca [1 x i32], align 4                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.c = icmp eq ptr %3, null
  br i1 %i.c, label %voclib_initialize.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(85240) %3, i8 0, i64 85240, i1 false)
  %i.d = icmp eq ptr %1, null
  br i1 %i.d, label %voclib_initialize.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 360 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.g = load i32, ptr %i.f, align 8, !tbaa !54   ; 2 uses
  %i.h = trunc i32 %i.g to i8                     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.j = load i32, ptr %i.i, align 4, !tbaa !55   ; 2 uses
  %i.k = trunc i32 %i.j to i8                     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.m = load i32, ptr %i.l, align 4, !tbaa !53   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !48
  %i.p = trunc i32 %i.o to i8                     ; 2 uses
  %i.q = add i8 %i.h, -97
  %or.cond.i = icmp ult i8 %i.q, -93
  %i.r = add i8 %i.k, -9
  %or.cond5.i = icmp ult i8 %i.r, -8
  %or.cond35.i = or i1 %or.cond.i, %or.cond5.i
  %i.s = add i32 %i.m, -192001
  %or.cond7.i = icmp ult i32 %i.s, -184001
  %or.cond36.i = or i1 %or.cond7.i, %or.cond35.i
  %i.t = add i8 %i.p, -3
  %or.cond10.i = icmp ult i8 %i.t, -2
  %or.cond37.i = or i1 %or.cond36.i, %or.cond10.i
  br i1 %or.cond37.i, label %voclib_initialize.exit, label %.preheader.us.preheader.i.i

.preheader.us.preheader.i.i:                      ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 85224 ; 2 uses
  store <2 x float> <float 3.000000e-02, float 1.000000e+00>, ptr %i.u, align 8, !tbaa !8
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 85232 ; 2 uses
  store i32 %i.m, ptr %i.v, align 8, !tbaa !10
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 85236 ; 2 uses
  store i8 %i.h, ptr %i.w, align 4, !tbaa !12
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 85237
  store i8 %i.k, ptr %i.x, align 1, !tbaa !13
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 85238
  store i8 %i.p, ptr %i.y, align 2, !tbaa !14
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 29928
  %.mask = and i32 %i.g, 255
  %wide.trip.count32.i.i = zext nneg i32 %.mask to i64
  %.mask20 = and i32 %i.j, 255                    ; 2 uses
  %wide.trip.count.i.i = zext nneg i32 %.mask20 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 3     ; 3 uses
  %i.aa = add nsw i32 %.mask20, -1
  %i.ab = icmp ult i32 %i.aa, 3
  %unroll_iter = and i64 %wide.trip.count.i.i, 252
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod24 = icmp ne i64 %xtraiter, 0
  br label %.preheader.us.i.i

.preheader.us.i.i:                                ; preds = %._crit_edge.us.i.i, %.preheader.us.preheader.i.i
  %indvars.iv24.i.i = phi i64 [ 0, %.preheader.us.preheader.i.i ], [ %indvars.iv.next25.i.i, %._crit_edge.us.i.i ] ; 4 uses
  %i.ac = getelementptr inbounds nuw [288 x i8], ptr %i.e, i64 %indvars.iv24.i.i ; 5 uses
  %i.ad = getelementptr inbounds nuw [288 x i8], ptr %i.z, i64 %indvars.iv24.i.i ; 5 uses
  br i1 %i.ab, label %.epil.preheader, label %.preheader.us.i.i.new

.preheader.us.i.i.new:                            ; preds = %.preheader.us.i.i, %.preheader.us.i.i.new
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %.preheader.us.i.i.new ], [ 0, %.preheader.us.i.i ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %.preheader.us.i.i.new ], [ 0, %.preheader.us.i.i ]
  %i.ae = getelementptr inbounds nuw [36 x i8], ptr %i.ac, i64 %indvars.iv.i.i
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
end_hunk_0
