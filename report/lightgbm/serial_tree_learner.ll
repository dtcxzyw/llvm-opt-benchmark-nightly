Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/serial_tree_learner?download=true
inline.NumInlined: 18193
inline.NumDeleted: 6360
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 53
loop-unroll.NumUnrolled: 56
begin_hunk_0_@_ZN8LightGBM10LeafSplits4InitEiPKNS_13DataPartitionEPKaff:bb.a
  store double 0.000000e+00, ptr %i.d, align 8, !tbaa !309
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  store double 0.000000e+00, ptr %i.e, align 8, !tbaa !309
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #18
  store ptr %3, ptr %i.f, align 8, !tbaa !533
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #18
  store i64 0, ptr %i.g, align 8, !tbaa !243
  %i.z = tail call i32 @OMP_NUM_THREADS()
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.i, i32 %i.z)
  %i.aa = load i32, ptr %i.k, align 8, !tbaa !229
  %i.ab = icmp sgt i32 %i.aa, 1023
  br i1 %i.ab, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.ac = load i8, ptr %0, align 8, !tbaa !228, !range !232, !noundef !233
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 8, ptr nonnull @_ZN8LightGBM10LeafSplits4InitEiPKNS_13DataPartitionEPKaff.omp_outlined, ptr nonnull %0, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.e, ptr nonnull %i.c, ptr nonnull %i.f, ptr nonnull %i.g)
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.a
  tail call void @__kmpc_serialized_parallel(ptr nonnull @2, i32 %i.i)
  store i32 %i.i, ptr %i.h, align 4, !tbaa !198
  call void @_ZN8LightGBM10LeafSplits4InitEiPKNS_13DataPartitionEPKaff.omp_outlined(ptr nonnull %i.h, ptr nonnull poison, ptr nonnull %0, ptr %i.d, ptr %i.a, ptr %i.b, ptr %i.e, ptr %i.c, ptr %i.f, ptr %i.g) #18
  tail call void @__kmpc_end_serialized_parallel(ptr nonnull @2, i32 %i.i)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ae = load double, ptr %i.d, align 8, !tbaa !309
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.ae, ptr %i.af, align 8, !tbaa !303
  %i.ag = load double, ptr %i.e, align 8, !tbaa !309
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.ag, ptr %i.ah, align 8, !tbaa !304
  %i.ai = load i64, ptr %i.g, align 8, !tbaa !243
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !534
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  ret void
}

declare void @_ZN8LightGBM19GradientDiscretizer24SetNumBitsInHistogramBinILb0EEEviiii(ptr noundef nonnull align 8 dereferenceable(5336), i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_ZN8LightGBM13DataPartition4InitEv.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2) #17 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 8, !tbaa !393    ; 2 uses
  %i.f = add nsw i32 %i.e, -1                     ; 3 uses
  %i.g = icmp sgt i32 %i.e, 0
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i32 0, ptr %i.a, align 4, !tbaa !198
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i32 %i.f, ptr %i.b, align 4, !tbaa !198
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  store i32 1, ptr %i.c, align 4, !tbaa !198
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  store i32 0, ptr %i.d, align 4, !tbaa !198
  %i.h = load i32, ptr %0, align 4, !tbaa !198    ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 33, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 512)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !198
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.f) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !198
  %i.k = load i32, ptr %i.a, align 4, !tbaa !198  ; 2 uses
  %.not17 = icmp sgt i32 %i.k, %i.j
  br i1 %.not17, label %._crit_edge18, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 56
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %i.m = phi i32 [ %i.j, %.preheader.lr.ph ], [ %i.y, %._crit_edge ] ; 2 uses
  %i.n = phi i32 [ %i.k, %.preheader.lr.ph ], [ %i.w, %._crit_edge ] ; 3 uses
  %.not1415 = icmp sgt i32 %i.n, %i.m
  br i1 %.not1415, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !237
  %i.p = sext i32 %i.n to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ %i.p, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 4 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv
  %i.r = trunc nsw i64 %indvars.iv to i32
  store i32 %i.r, ptr %i.q, align 4, !tbaa !198
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.s = load i32, ptr %i.b, align 4, !tbaa !198  ; 2 uses
  %i.t = sext i32 %i.s to i64
  %.not14.not = icmp slt i64 %indvars.iv, %i.t
  br i1 %.not14.not, label %bb.c, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %bb.c
  %.pre = load i32, ptr %i.a, align 4, !tbaa !198
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.u = phi i32 [ %i.n, %.preheader ], [ %.pre, %._crit_edge.loopexit ]
  %.lcssa = phi i32 [ %i.m, %.preheader ], [ %i.s, %._crit_edge.loopexit ]
  %i.v = load i32, ptr %i.c, align 4, !tbaa !198  ; 2 uses
  %i.w = add nsw i32 %i.v, %i.u                   ; 3 uses
  store i32 %i.w, ptr %i.a, align 4, !tbaa !198
  %i.x = add nsw i32 %i.v, %.lcssa
  %i.y = call i32 @llvm.smin.i32(i32 %i.x, i32 %i.f) ; 3 uses
  store i32 %i.y, ptr %i.b, align 4, !tbaa !198
  %.not = icmp sgt i32 %i.w, %i.y
  br i1 %.not, label %._crit_edge18, label %.preheader

._crit_edge18:                                    ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge18, %bb.a
  ret void
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_ZN8LightGBM10LeafSplits4InitEPKfS2_.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6) #17 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca double, align 8                   ; 7 uses
  %i.f = alloca double, align 8                   ; 7 uses
  %i.g = alloca [2 x ptr], align 8                ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !229  ; 2 uses
  %i.j = add nsw i32 %i.i, -1                     ; 3 uses
  %i.k = icmp sgt i32 %i.i, 0
  br i1 %i.k, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i32 0, ptr %i.a, align 4, !tbaa !198
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i32 %i.j, ptr %i.b, align 4, !tbaa !198
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  store i32 1, ptr %i.c, align 4, !tbaa !198
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  store i32 0, ptr %i.d, align 4, !tbaa !198
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  store double 0.000000e+00, ptr %i.e, align 8, !tbaa !309
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #18
  store double 0.000000e+00, ptr %i.f, align 8, !tbaa !309
  %i.l = load i32, ptr %0, align 4, !tbaa !198    ; 4 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.l, i32 33, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 512)
  %.promoted23 = load i32, ptr %i.b, align 4, !tbaa !198
  %.promoted25 = load i32, ptr %i.a, align 4, !tbaa !198 ; 2 uses
  %i.m = call i32 @llvm.smin.i32(i32 %.promoted23, i32 %i.j) ; 3 uses
  %.not29 = icmp sgt i32 %.promoted25, %i.m
  br i1 %.not29, label %bb.e, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.n = load ptr, ptr %4, align 8, !tbaa !319
  %i.o = load ptr, ptr %6, align 8, !tbaa !319
  %i.p = load i32, ptr %i.c, align 4, !tbaa !198  ; 2 uses
  %i.q = sext i32 %.promoted25 to i64
  %i.r = sext i32 %i.p to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.d
  %indvars.iv.a = phi i64 [ %i.q, %.preheader.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.s = phi i32 [ %i.m, %.preheader.lr.ph ], [ %i.af, %bb.d ] ; 2 uses
  %i.t = phi <2 x double> [ zeroinitializer, %.preheader.lr.ph ], [ %i.ad, %bb.d ]
  %i.u = sext i32 %i.s to i64
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.c
  %indvars.iv36 = phi i64 [ %indvars.iv.a, %.preheader ], [ %indvars.iv.next37, %bb.c ] ; 4 uses
  %i.v = phi <2 x double> [ %i.t, %.preheader ], [ %i.ad, %bb.c ]
  %i.w = getelementptr inbounds [4 x i8], ptr %i.n, i64 %indvars.iv36
  %i.x = load float, ptr %i.w, align 4, !tbaa !374
  %i.y = getelementptr inbounds [4 x i8], ptr %i.o, i64 %indvars.iv36
  %i.z = load float, ptr %i.y, align 4, !tbaa !374
  %i.aa = insertelement <2 x float> poison, float %i.x, i64 0
  %i.ab = insertelement <2 x float> %i.aa, float %i.z, i64 1
  %i.ac = fpext <2 x float> %i.ab to <2 x double>
  %i.ad = fadd <2 x double> %i.v, %i.ac           ; 4 uses
  %indvars.iv.next37 = add nsw i64 %indvars.iv36, 1
  %.not19.not = icmp slt i64 %indvars.iv36, %i.u
  br i1 %.not19.not, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next = add nsw i64 %indvars.iv.a, %i.r ; 3 uses
  %i.ae = add nsw i32 %i.p, %i.s
  %i.af = call i32 @llvm.smin.i32(i32 %i.ae, i32 %i.j) ; 3 uses
  %7 = sext i32 %i.af to i64
  %.not = icmp sgt i64 %indvars.iv.next, %7
  br i1 %.not, label %._crit_edge, label %.preheader

._crit_edge:                                      ; preds = %bb.d
  %8 = trunc nsw i64 %indvars.iv.next to i32
  %i.ag = extractelement <2 x double> %i.ad, i64 0
  store double %i.ag, ptr %i.e, align 8, !tbaa !309
  %i.ah = extractelement <2 x double> %i.ad, i64 1
  store double %i.ah, ptr %i.f, align 8, !tbaa !309
  store i32 %8, ptr %i.a, align 4, !tbaa !198
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.b
  %.lcssa24 = phi i32 [ %i.af, %._crit_edge ], [ %i.m, %bb.b ]
  store i32 %.lcssa24, ptr %i.b, align 4, !tbaa !198
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.l)
  store ptr %i.e, ptr %i.g, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.f, ptr %i.ai, align 8
  %i.aj = call i32 @__kmpc_reduce_nowait(ptr nonnull @3, i32 %i.l, i32 2, i64 16, ptr nonnull %i.g, ptr nonnull @_ZN8LightGBM10LeafSplits4InitEPKfS2_.omp_outlined.omp.reduction.reduction_func, ptr nonnull @.gomp_critical_user_.reduction.var)
  switch i32 %i.aj, label %bb.h [
    i32 1, label %bb.f
    i32 2, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.ak = load double, ptr %3, align 8, !tbaa !309
  %i.al = load double, ptr %i.e, align 8, !tbaa !309
  %i.am = fadd double %i.ak, %i.al
  store double %i.am, ptr %3, align 8, !tbaa !309
  %i.an = load double, ptr %5, align 8, !tbaa !309
  %i.ao = load double, ptr %i.f, align 8, !tbaa !309
  %i.ap = fadd double %i.an, %i.ao
  store double %i.ap, ptr %5, align 8, !tbaa !309
  call void @__kmpc_end_reduce_nowait(ptr nonnull @3, i32 %i.l, ptr nonnull @.gomp_critical_user_.reduction.var)
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.aq = load double, ptr %i.e, align 8, !tbaa !309
  %i.ar = atomicrmw fadd ptr %3, double %i.aq monotonic, align 8 ; 0 uses
  %i.as = load double, ptr %i.f, align 8, !tbaa !309
  %i.at = atomicrmw fadd ptr %5, double %i.as monotonic, align 8 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZN8LightGBM10LeafSplits4InitEPKfS2_.omp_outlined.omp.reduction.reduction_func(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #30 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %i.b = load ptr, ptr %0, align 8                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = load double, ptr %i.b, align 8, !tbaa !309
  %i.h = load double, ptr %i.a, align 8, !tbaa !309
  %i.i = fadd double %i.g, %i.h
  store double %i.i, ptr %i.b, align 8, !tbaa !309
  %i.j = load double, ptr %i.f, align 8, !tbaa !309
  %i.k = load double, ptr %i.d, align 8, !tbaa !309
  %i.l = fadd double %i.j, %i.k
  store double %i.l, ptr %i.f, align 8, !tbaa !309
  ret void
}

; Function Attrs: convergent nounwind
declare i32 @__kmpc_reduce_nowait(ptr, i32, i32, i64, ptr, ptr, ptr) local_unnamed_addr #31

; Function Attrs: convergent nounwind
declare void @__kmpc_end_reduce_nowait(ptr, i32, ptr) local_unnamed_addr #31

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_ZN8LightGBM10LeafSplits4InitEPKadd.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %8, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %9) #17 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca double, align 8                   ; 7 uses
  %i.f = alloca double, align 8                   ; 7 uses
  %i.g = alloca i64, align 8                      ; 7 uses
  %i.h = alloca [3 x ptr], align 8                ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !229  ; 2 uses
  %i.k = add nsw i32 %i.j, -1                     ; 3 uses
  %i.l = icmp sgt i32 %i.j, 0
  br i1 %i.l, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i32 0, ptr %i.a, align 4, !tbaa !198
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i32 %i.k, ptr %i.b, align 4, !tbaa !198
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  store i32 1, ptr %i.c, align 4, !tbaa !198
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  store i32 0, ptr %i.d, align 4, !tbaa !198
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  store double 0.000000e+00, ptr %i.e, align 8, !tbaa !309
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #18
  store double 0.000000e+00, ptr %i.f, align 8, !tbaa !309
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #18
  store i64 0, ptr %i.g, align 8, !tbaa !243
  %i.m = load i32, ptr %0, align 4, !tbaa !198    ; 4 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.m, i32 33, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 512)
  %.promoted30 = load i32, ptr %i.b, align 4, !tbaa !198
  %.promoted31 = load i32, ptr %i.a, align 4, !tbaa !198 ; 2 uses
  %i.n = call i32 @llvm.smin.i32(i32 %.promoted30, i32 %i.k) ; 3 uses
  store i32 %i.n, ptr %i.b, align 4, !tbaa !198
  %.not39 = icmp sgt i32 %.promoted31, %i.n
  br i1 %.not39, label %._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.o = load ptr, ptr %4, align 8, !tbaa !361
  %i.p = load double, ptr %5, align 8, !tbaa !309
  %i.q = load double, ptr %7, align 8, !tbaa !309
  %i.r = load ptr, ptr %8, align 8, !tbaa !533
  %i.s = load i32, ptr %i.c, align 4, !tbaa !198  ; 2 uses
  %i.t = sext i32 %.promoted31 to i64
  %i.u = sext i32 %i.s to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.d
  %indvars.iv.a = phi i64 [ %i.t, %.preheader.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.v = phi i32 [ %i.n, %.preheader.lr.ph ], [ %i.at, %bb.d ] ; 2 uses
  %.promoted3342 = phi double [ 0.000000e+00, %.preheader.lr.ph ], [ %i.af, %bb.d ]
  %.promoted273441 = phi double [ 0.000000e+00, %.preheader.lr.ph ], [ %i.ai, %bb.d ]
  %.promoted283640 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.ar, %bb.d ]
  %i.w = sext i32 %i.v to i64
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.c
  %indvars.iv45 = phi i64 [ %indvars.iv.a, %.preheader ], [ %indvars.iv.next46, %bb.c ] ; 4 uses
  %i.x = phi double [ %.promoted3342, %.preheader ], [ %i.af, %bb.c ]
  %i.y = phi double [ %.promoted273441, %.preheader ], [ %i.ai, %bb.c ]
  %i.z = phi i64 [ %.promoted283640, %.preheader ], [ %i.ar, %bb.c ]
  %i.aa = shl nsw i64 %indvars.iv45, 1
  %i.ab = getelementptr i8, ptr %i.o, i64 %i.aa   ; 2 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 1
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !294
  %i.ae = sitofp i8 %i.ad to double
  %i.af = call double @llvm.fmuladd.f64(double %i.ae, double %i.p, double %i.x) ; 3 uses
  store double %i.af, ptr %i.e, align 8, !tbaa !309
  %i.ag = load i8, ptr %i.ab, align 1, !tbaa !294
  %i.ah = sitofp i8 %i.ag to double
  %i.ai = call double @llvm.fmuladd.f64(double %i.ah, double %i.q, double %i.y) ; 3 uses
  store double %i.ai, ptr %i.f, align 8, !tbaa !309
  %i.aj = getelementptr inbounds [2 x i8], ptr %i.r, i64 %indvars.iv45
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !536 ; 2 uses
  %i.al = ashr i16 %i.ak, 8
  %i.am = sext i16 %i.al to i64
  %i.an = shl nsw i64 %i.am, 32
  %i.ao = and i16 %i.ak, 255
  %i.ap = zext nneg i16 %i.ao to i64
  %i.aq = add i64 %i.z, %i.ap
  %i.ar = add i64 %i.aq, %i.an                    ; 3 uses
  store i64 %i.ar, ptr %i.g, align 8, !tbaa !243
  %indvars.iv.next46 = add nsw i64 %indvars.iv45, 1
  %.not26.not = icmp slt i64 %indvars.iv45, %i.w
  br i1 %.not26.not, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next = add nsw i64 %indvars.iv.a, %i.u ; 3 uses
  %indvars = trunc nsw i64 %indvars.iv.next to i32
  store i32 %indvars, ptr %i.a, align 4, !tbaa !198
  %i.as = add nsw i32 %i.s, %i.v
  %i.at = call i32 @llvm.smin.i32(i32 %i.as, i32 %i.k) ; 3 uses
  store i32 %i.at, ptr %i.b, align 4, !tbaa !198
  %10 = sext i32 %i.at to i64
  %.not = icmp sgt i64 %indvars.iv.next, %10
  br i1 %.not, label %._crit_edge, label %.preheader

._crit_edge:                                      ; preds = %bb.d, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.m)
  store ptr %i.e, ptr %i.h, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.f, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.g, ptr %i.av, align 8
  %i.aw = call i32 @__kmpc_reduce_nowait(ptr nonnull @3, i32 %i.m, i32 3, i64 24, ptr nonnull %i.h, ptr nonnull @_ZN8LightGBM10LeafSplits4InitEPKadd.omp_outlined.omp.reduction.reduction_func, ptr nonnull @.gomp_critical_user_.reduction.var)
  switch i32 %i.aw, label %bb.g [
    i32 1, label %bb.e
    i32 2, label %bb.f
  ]

bb.e:                                             ; preds = %._crit_edge
  %i.ax = load double, ptr %3, align 8, !tbaa !309
  %i.ay = load double, ptr %i.e, align 8, !tbaa !309
  %i.az = fadd double %i.ax, %i.ay
  store double %i.az, ptr %3, align 8, !tbaa !309
  %i.ba = load double, ptr %6, align 8, !tbaa !309
  %i.bb = load double, ptr %i.f, align 8, !tbaa !309
  %i.bc = fadd double %i.ba, %i.bb
  store double %i.bc, ptr %6, align 8, !tbaa !309
  %i.bd = load i64, ptr %9, align 8, !tbaa !243
  %i.be = load i64, ptr %i.g, align 8, !tbaa !243
  %i.bf = add nsw i64 %i.be, %i.bd
  store i64 %i.bf, ptr %9, align 8, !tbaa !243
  call void @__kmpc_end_reduce_nowait(ptr nonnull @3, i32 %i.m, ptr nonnull @.gomp_critical_user_.reduction.var)
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge
  %i.bg = load double, ptr %i.e, align 8, !tbaa !309
  %i.bh = atomicrmw fadd ptr %3, double %i.bg monotonic, align 8 ; 0 uses
  %i.bi = load double, ptr %i.f, align 8, !tbaa !309
  %i.bj = atomicrmw fadd ptr %6, double %i.bi monotonic, align 8 ; 0 uses
  %i.bk = load i64, ptr %i.g, align 8, !tbaa !243
  %i.bl = atomicrmw add ptr %9, i64 %i.bk monotonic, align 8 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZN8LightGBM10LeafSplits4InitEPKadd.omp_outlined.omp.reduction.reduction_func(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #30 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %i.b = load ptr, ptr %0, align 8                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = load double, ptr %i.b, align 8, !tbaa !309
  %i.l = load double, ptr %i.a, align 8, !tbaa !309
  %i.m = fadd double %i.k, %i.l
  store double %i.m, ptr %i.b, align 8, !tbaa !309
  %i.n = load double, ptr %i.f, align 8, !tbaa !309
  %i.o = load double, ptr %i.d, align 8, !tbaa !309
  %i.p = fadd double %i.n, %i.o
  store double %i.p, ptr %i.f, align 8, !tbaa !309
  %i.q = load i64, ptr %i.j, align 8, !tbaa !243
  %i.r = load i64, ptr %i.h, align 8, !tbaa !243
  %i.s = add nsw i64 %i.r, %i.q
  store i64 %i.s, ptr %i.j, align 8, !tbaa !243
  ret void
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_ZN8LightGBM10LeafSplits4InitEiPKNS_13DataPartitionEPKfS5_.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6) #17 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca double, align 8                   ; 7 uses
  %i.f = alloca double, align 8                   ; 7 uses
  %i.g = alloca [2 x ptr], align 8                ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !229  ; 2 uses
  %i.j = add nsw i32 %i.i, -1                     ; 3 uses
  %i.k = icmp sgt i32 %i.i, 0
  br i1 %i.k, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i32 0, ptr %i.a, align 4, !tbaa !198
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i32 %i.j, ptr %i.b, align 4, !tbaa !198
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  store i32 1, ptr %i.c, align 4, !tbaa !198
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  store i32 0, ptr %i.d, align 4, !tbaa !198
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  store double 0.000000e+00, ptr %i.e, align 8, !tbaa !309
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #18
  store double 0.000000e+00, ptr %i.f, align 8, !tbaa !309
  %i.l = load i32, ptr %0, align 4, !tbaa !198    ; 4 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.l, i32 33, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 512)
  %.promoted24 = load i32, ptr %i.b, align 4, !tbaa !198
  %.promoted25 = load i32, ptr %i.a, align 4, !tbaa !198 ; 2 uses
  %i.m = call i32 @llvm.smin.i32(i32 %.promoted24, i32 %i.j) ; 3 uses
  store i32 %i.m, ptr %i.b, align 4, !tbaa !198
  %.not29 = icmp sgt i32 %.promoted25, %i.m
  br i1 %.not29, label %bb.e, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !337
  %i.p = load ptr, ptr %4, align 8, !tbaa !319
  %i.q = load ptr, ptr %6, align 8, !tbaa !319
  %i.r = load i32, ptr %i.c, align 4, !tbaa !198  ; 2 uses
  %i.s = sext i32 %.promoted25 to i64
  %i.t = sext i32 %i.r to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.d
  %indvars.iv.a = phi i64 [ %i.s, %.preheader.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.u = phi i32 [ %i.m, %.preheader.lr.ph ], [ %i.ak, %bb.d ] ; 2 uses
  %i.v = phi <2 x double> [ zeroinitializer, %.preheader.lr.ph ], [ %i.ai, %bb.d ]
  %i.w = sext i32 %i.u to i64
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.c
  %indvars.iv33 = phi i64 [ %indvars.iv.a, %.preheader ], [ %indvars.iv.next34, %bb.c ] ; 3 uses
  %i.x = phi <2 x double> [ %i.v, %.preheader ], [ %i.ai, %bb.c ]
  %i.y = getelementptr inbounds [4 x i8], ptr %i.o, i64 %indvars.iv33
  %i.z = load i32, ptr %i.y, align 4, !tbaa !198
  %i.aa = sext i32 %i.z to i64                    ; 2 uses
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.aa
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !374
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.aa
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !374
  %i.af = insertelement <2 x float> poison, float %i.ac, i64 0
  %i.ag = insertelement <2 x float> %i.af, float %i.ae, i64 1
  %i.ah = fpext <2 x float> %i.ag to <2 x double>
  %i.ai = fadd <2 x double> %i.x, %i.ah           ; 4 uses
  %indvars.iv.next34 = add nsw i64 %indvars.iv33, 1
  %.not20.not = icmp slt i64 %indvars.iv33, %i.w
  br i1 %.not20.not, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next = add nsw i64 %indvars.iv.a, %i.t ; 3 uses
  %indvars = trunc nsw i64 %indvars.iv.next to i32
  store i32 %indvars, ptr %i.a, align 4, !tbaa !198
  %i.aj = add nsw i32 %i.r, %i.u
  %i.ak = call i32 @llvm.smin.i32(i32 %i.aj, i32 %i.j) ; 3 uses
  store i32 %i.ak, ptr %i.b, align 4, !tbaa !198
  %7 = sext i32 %i.ak to i64
  %.not = icmp sgt i64 %indvars.iv.next, %7
  br i1 %.not, label %._crit_edge, label %.preheader

._crit_edge:                                      ; preds = %bb.d
  %i.al = extractelement <2 x double> %i.ai, i64 0
  store double %i.al, ptr %i.e, align 8, !tbaa !309
  %i.am = extractelement <2 x double> %i.ai, i64 1
  store double %i.am, ptr %i.f, align 8, !tbaa !309
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.l)
  store ptr %i.e, ptr %i.g, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.f, ptr %i.an, align 8
  %i.ao = call i32 @__kmpc_reduce_nowait(ptr nonnull @3, i32 %i.l, i32 2, i64 16, ptr nonnull %i.g, ptr nonnull @_ZN8LightGBM10LeafSplits4InitEiPKNS_13DataPartitionEPKfS5_.omp_outlined.omp.reduction.reduction_func, ptr nonnull @.gomp_critical_user_.reduction.var)
  switch i32 %i.ao, label %bb.h [
    i32 1, label %bb.f
    i32 2, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.ap = load double, ptr %3, align 8, !tbaa !309
  %i.aq = load double, ptr %i.e, align 8, !tbaa !309
  %i.ar = fadd double %i.ap, %i.aq
  store double %i.ar, ptr %3, align 8, !tbaa !309
  %i.as = load double, ptr %5, align 8, !tbaa !309
  %i.at = load double, ptr %i.f, align 8, !tbaa !309
  %i.au = fadd double %i.as, %i.at
  store double %i.au, ptr %5, align 8, !tbaa !309
  call void @__kmpc_end_reduce_nowait(ptr nonnull @3, i32 %i.l, ptr nonnull @.gomp_critical_user_.reduction.var)
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.av = load double, ptr %i.e, align 8, !tbaa !309
  %i.aw = atomicrmw fadd ptr %3, double %i.av monotonic, align 8 ; 0 uses
  %i.ax = load double, ptr %i.f, align 8, !tbaa !309
  %i.ay = atomicrmw fadd ptr %5, double %i.ax monotonic, align 8 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZN8LightGBM10LeafSplits4InitEiPKNS_13DataPartitionEPKfS5_.omp_outlined.omp.reduction.reduction_func(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #30 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %i.b = load ptr, ptr %0, align 8                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = load double, ptr %i.b, align 8, !tbaa !309
  %i.h = load double, ptr %i.a, align 8, !tbaa !309
  %i.i = fadd double %i.g, %i.h
  store double %i.i, ptr %i.b, align 8, !tbaa !309
  %i.j = load double, ptr %i.f, align 8, !tbaa !309
  %i.k = load double, ptr %i.d, align 8, !tbaa !309
  %i.l = fadd double %i.j, %i.k
  store double %i.l, ptr %i.f, align 8, !tbaa !309
  ret void
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_ZN8LightGBM10LeafSplits4InitEiPKNS_13DataPartitionEPKaff.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %8, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %9) #17 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca double, align 8                   ; 7 uses
  %i.f = alloca double, align 8                   ; 7 uses
  %i.g = alloca i64, align 8                      ; 7 uses
  %i.h = alloca [3 x ptr], align 8                ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !229  ; 2 uses
  %i.k = add nsw i32 %i.j, -1                     ; 3 uses
  %i.l = icmp sgt i32 %i.j, 0
  br i1 %i.l, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i32 0, ptr %i.a, align 4, !tbaa !198
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i32 %i.k, ptr %i.b, align 4, !tbaa !198
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  store i32 1, ptr %i.c, align 4, !tbaa !198
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  store i32 0, ptr %i.d, align 4, !tbaa !198
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  store double 0.000000e+00, ptr %i.e, align 8, !tbaa !309
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #18
  store double 0.000000e+00, ptr %i.f, align 8, !tbaa !309
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #18
  store i64 0, ptr %i.g, align 8, !tbaa !243
  %i.m = load i32, ptr %0, align 4, !tbaa !198    ; 4 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.m, i32 33, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 512)
  %.promoted31 = load i32, ptr %i.b, align 4, !tbaa !198
  %.promoted32 = load i32, ptr %i.a, align 4, !tbaa !198 ; 2 uses
  %i.n = call i32 @llvm.smin.i32(i32 %.promoted31, i32 %i.k) ; 3 uses
  store i32 %i.n, ptr %i.b, align 4, !tbaa !198
  %.not40 = icmp sgt i32 %.promoted32, %i.n
  br i1 %.not40, label %._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !337
  %i.q = load ptr, ptr %4, align 8, !tbaa !361
  %i.r = load float, ptr %5, align 4, !tbaa !374
  %i.s = load float, ptr %7, align 4, !tbaa !374
  %i.t = load ptr, ptr %8, align 8, !tbaa !533
  %i.u = load i32, ptr %i.c, align 4, !tbaa !198  ; 2 uses
  %i.v = sext i32 %.promoted32 to i64
  %i.w = sext i32 %i.u to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.d
  %indvars.iv.a = phi i64 [ %i.v, %.preheader.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.x = phi i32 [ %i.n, %.preheader.lr.ph ], [ %i.bc, %bb.d ] ; 2 uses
  %.promoted3443 = phi double [ 0.000000e+00, %.preheader.lr.ph ], [ %i.am, %bb.d ]
  %.promoted283542 = phi double [ 0.000000e+00, %.preheader.lr.ph ], [ %i.ar, %bb.d ]
  %.promoted293741 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.ba, %bb.d ]
  %i.y = sext i32 %i.x to i64
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.c
  %indvars.iv46 = phi i64 [ %indvars.iv.a, %.preheader ], [ %indvars.iv.next47, %bb.c ] ; 4 uses
  %i.z = phi double [ %.promoted3443, %.preheader ], [ %i.am, %bb.c ]
  %i.aa = phi double [ %.promoted283542, %.preheader ], [ %i.ar, %bb.c ]
  %i.ab = phi i64 [ %.promoted293741, %.preheader ], [ %i.ba, %bb.c ]
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.p, i64 %indvars.iv46
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !198
  %i.ae = shl nsw i32 %i.ad, 1
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr i8, ptr %i.q, i64 %i.af   ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 1
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !294
  %i.aj = sitofp i8 %i.ai to float
  %i.ak = fmul float %i.r, %i.aj
  %i.al = fpext float %i.ak to double
  %i.am = fadd double %i.z, %i.al                 ; 3 uses
  store double %i.am, ptr %i.e, align 8, !tbaa !309
  %i.an = load i8, ptr %i.ag, align 1, !tbaa !294
  %i.ao = sitofp i8 %i.an to float
  %i.ap = fmul float %i.s, %i.ao
  %i.aq = fpext float %i.ap to double
  %i.ar = fadd double %i.aa, %i.aq                ; 3 uses
  store double %i.ar, ptr %i.f, align 8, !tbaa !309
  %i.as = getelementptr inbounds [2 x i8], ptr %i.t, i64 %indvars.iv46
  %i.at = load i16, ptr %i.as, align 2, !tbaa !536 ; 2 uses
  %i.au = ashr i16 %i.at, 8
  %i.av = sext i16 %i.au to i64
  %i.aw = shl nsw i64 %i.av, 32
  %i.ax = and i16 %i.at, 255
  %i.ay = zext nneg i16 %i.ax to i64
  %i.az = add i64 %i.ab, %i.ay
  %i.ba = add i64 %i.az, %i.aw                    ; 3 uses
  store i64 %i.ba, ptr %i.g, align 8, !tbaa !243
  %indvars.iv.next47 = add nsw i64 %indvars.iv46, 1
  %.not27.not = icmp slt i64 %indvars.iv46, %i.y
  br i1 %.not27.not, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next = add nsw i64 %indvars.iv.a, %i.w ; 3 uses
  %indvars = trunc nsw i64 %indvars.iv.next to i32
  store i32 %indvars, ptr %i.a, align 4, !tbaa !198
  %i.bb = add nsw i32 %i.u, %i.x
  %i.bc = call i32 @llvm.smin.i32(i32 %i.bb, i32 %i.k) ; 3 uses
  store i32 %i.bc, ptr %i.b, align 4, !tbaa !198
  %10 = sext i32 %i.bc to i64
  %.not = icmp sgt i64 %indvars.iv.next, %10
  br i1 %.not, label %._crit_edge, label %.preheader

._crit_edge:                                      ; preds = %bb.d, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.m)
  store ptr %i.e, ptr %i.h, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.f, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.g, ptr %i.be, align 8
  %i.bf = call i32 @__kmpc_reduce_nowait(ptr nonnull @3, i32 %i.m, i32 3, i64 24, ptr nonnull %i.h, ptr nonnull @_ZN8LightGBM10LeafSplits4InitEiPKNS_13DataPartitionEPKaff.omp_outlined.omp.reduction.reduction_func, ptr nonnull @.gomp_critical_user_.reduction.var)
  switch i32 %i.bf, label %bb.g [
    i32 1, label %bb.e
    i32 2, label %bb.f
  ]

bb.e:                                             ; preds = %._crit_edge
  %i.bg = load double, ptr %3, align 8, !tbaa !309
  %i.bh = load double, ptr %i.e, align 8, !tbaa !309
  %i.bi = fadd double %i.bg, %i.bh
  store double %i.bi, ptr %3, align 8, !tbaa !309
  %i.bj = load double, ptr %6, align 8, !tbaa !309
  %i.bk = load double, ptr %i.f, align 8, !tbaa !309
  %i.bl = fadd double %i.bj, %i.bk
  store double %i.bl, ptr %6, align 8, !tbaa !309
  %i.bm = load i64, ptr %9, align 8, !tbaa !243
  %i.bn = load i64, ptr %i.g, align 8, !tbaa !243
  %i.bo = add nsw i64 %i.bn, %i.bm
  store i64 %i.bo, ptr %9, align 8, !tbaa !243
  call void @__kmpc_end_reduce_nowait(ptr nonnull @3, i32 %i.m, ptr nonnull @.gomp_critical_user_.reduction.var)
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge
  %i.bp = load double, ptr %i.e, align 8, !tbaa !309
  %i.bq = atomicrmw fadd ptr %3, double %i.bp monotonic, align 8 ; 0 uses
  %i.br = load double, ptr %i.f, align 8, !tbaa !309
  %i.bs = atomicrmw fadd ptr %6, double %i.br monotonic, align 8 ; 0 uses
  %i.bt = load i64, ptr %i.g, align 8, !tbaa !243
  %i.bu = atomicrmw add ptr %9, i64 %i.bt monotonic, align 8 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZN8LightGBM10LeafSplits4InitEiPKNS_13DataPartitionEPKaff.omp_outlined.omp.reduction.reduction_func(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #30 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %i.b = load ptr, ptr %0, align 8                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = load double, ptr %i.b, align 8, !tbaa !309
  %i.l = load double, ptr %i.a, align 8, !tbaa !309
  %i.m = fadd double %i.k, %i.l
  store double %i.m, ptr %i.b, align 8, !tbaa !309
  %i.n = load double, ptr %i.f, align 8, !tbaa !309
  %i.o = load double, ptr %i.d, align 8, !tbaa !309
  %i.p = fadd double %i.n, %i.o
  store double %i.p, ptr %i.f, align 8, !tbaa !309
  %i.q = load i64, ptr %i.j, align 8, !tbaa !243
  %i.r = load i64, ptr %i.h, align 8, !tbaa !243
  %i.s = add nsw i64 %i.r, %i.q
  store i64 %i.s, ptr %i.j, align 8, !tbaa !243
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt17_Function_handlerIFvimmEZN8LightGBM29CostEfficientGradientBoosting11BeforeTrainEvEUlimmE_E9_M_invokeERKSt9_Any_dataOiOmS9_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #1 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %2, align 8, !tbaa !243    ; 5 uses
  %i.b = load i64, ptr %3, align 8, !tbaa !243    ; 4 uses
  %i.c = icmp ult i64 %i.a, %i.b
  br i1 %i.c, label %.lr.ph.i.i.i, label %_ZSt10__invoke_rIvRZN8LightGBM29CostEfficientGradientBoosting11BeforeTrainEvEUlimmE_JimmEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES5_E4typeEOS6_DpOS7_.exit

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !2202
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !220  ; 5 uses
  %i.g = sub nuw i64 %i.b, %i.a
  %xtraiter = and i64 %i.g, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i.i.i, %.prol.preheader
  %.05.i.i.i.prol = phi i64 [ %i.j, %.prol.preheader ], [ %i.a, %.lr.ph.i.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i.i.i ]
  %i.h = getelementptr inbounds nuw [128 x i8], ptr %i.f, i64 %.05.i.i.i.prol ; 2 uses
  store i32 -1, ptr %i.h, align 8, !tbaa !313
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store double -inf, ptr %i.i, align 8, !tbaa !312
  %i.j = add nuw i64 %.05.i.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !2199

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i.i.i
  %.05.i.i.i.unr = phi i64 [ %i.a, %.lr.ph.i.i.i ], [ %i.j, %.prol.preheader ]
  %i.k = sub i64 %i.a, %i.b
  %i.l = icmp ugt i64 %i.k, -4
  br i1 %i.l, label %_ZSt10__invoke_rIvRZN8LightGBM29CostEfficientGradientBoosting11BeforeTrainEvEUlimmE_JimmEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES5_E4typeEOS6_DpOS7_.exit, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.prol.loopexit, %.lr.ph.i.i.i.new
  %.05.i.i.i = phi i64 [ %i.x, %.lr.ph.i.i.i.new ], [ %.05.i.i.i.unr, %.prol.loopexit ] ; 5 uses
  %i.m = getelementptr inbounds nuw [128 x i8], ptr %i.f, i64 %.05.i.i.i ; 2 uses
  store i32 -1, ptr %i.m, align 8, !tbaa !313
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store double -inf, ptr %i.n, align 8, !tbaa !312
  %i.o = getelementptr inbounds nuw [128 x i8], ptr %i.f, i64 %.05.i.i.i ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 128
  store i32 -1, ptr %i.p, align 8, !tbaa !313
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 168
  store double -inf, ptr %i.q, align 8, !tbaa !312
  %i.r = getelementptr inbounds nuw [128 x i8], ptr %i.f, i64 %.05.i.i.i ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 256
  store i32 -1, ptr %i.s, align 8, !tbaa !313
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 296
  store double -inf, ptr %i.t, align 8, !tbaa !312
  %i.u = getelementptr inbounds nuw [128 x i8], ptr %i.f, i64 %.05.i.i.i ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 384
  store i32 -1, ptr %i.v, align 8, !tbaa !313
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 424
  store double -inf, ptr %i.w, align 8, !tbaa !312
  %i.x = add nuw i64 %.05.i.i.i, 4                ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.x, %i.b
  br i1 %exitcond.not.i.i.i.3, label %_ZSt10__invoke_rIvRZN8LightGBM29CostEfficientGradientBoosting11BeforeTrainEvEUlimmE_JimmEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES5_E4typeEOS6_DpOS7_.exit, label %.lr.ph.i.i.i.new, !llvm.loop !2200

_ZSt10__invoke_rIvRZN8LightGBM29CostEfficientGradientBoosting11BeforeTrainEvEUlimmE_JimmEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES5_E4typeEOS6_DpOS7_.exit: ; preds = %.prol.loopexit, %.lr.ph.i.i.i.new, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt17_Function_handlerIFvimmEZN8LightGBM29CostEfficientGradientBoosting11BeforeTrainEvEUlimmE_E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN8LightGBM29CostEfficientGradientBoosting11BeforeTrainEvEUlimmE_E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN8LightGBM29CostEfficientGradientBoosting11BeforeTrainEvEUlimmE_, ptr %0, align 8, !tbaa !484
  br label %_ZNSt14_Function_base13_Base_managerIZN8LightGBM29CostEfficientGradientBoosting11BeforeTrainEvEUlimmE_E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !333
  br label %_ZNSt14_Function_base13_Base_managerIZN8LightGBM29CostEfficientGradientBoosting11BeforeTrainEvEUlimmE_E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.a = load i64, ptr %1, align 8, !tbaa !282
  store i64 %i.a, ptr %0, align 8, !tbaa !282
  br label %_ZNSt14_Function_base13_Base_managerIZN8LightGBM29CostEfficientGradientBoosting11BeforeTrainEvEUlimmE_E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN8LightGBM29CostEfficientGradientBoosting11BeforeTrainEvEUlimmE_E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_ZN8LightGBM17SerialTreeLearner14FindBestSplitsEPKNS_4TreeEPKSt3setIiSt4lessIiESaIiEE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %4) #17 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !185  ; 2 uses
  %i.g = add nsw i32 %i.f, -1                     ; 3 uses
  %i.h = icmp sgt i32 %i.f, 0
  br i1 %i.h, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i32 0, ptr %i.a, align 4, !tbaa !198
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i32 %i.g, ptr %i.b, align 4, !tbaa !198
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  store i32 1, ptr %i.c, align 4, !tbaa !198
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  store i32 0, ptr %i.d, align 4, !tbaa !198
  %i.i = load i32, ptr %0, align 4, !tbaa !198    ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.i, i32 33, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 256)
  %i.j = load i32, ptr %i.b, align 4, !tbaa !198
  %i.k = call i32 @llvm.smin.i32(i32 %i.j, i32 %i.g) ; 3 uses
  store i32 %i.k, ptr %i.b, align 4, !tbaa !198
  %i.l = load i32, ptr %i.a, align 4, !tbaa !198  ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN8LightGBM17SerialTreeLearner25RecomputeBestSplitForLeafEPNS_4TreeEiPNS_9SplitInfoE.omp_outlined:bb.a
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  %i.ap = extractvalue { ptr, i32 } %i.an, 1
  %i.aq = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #18
  %i.ar = icmp eq i32 %i.ap, %i.aq
  %i.as = call ptr @__cxa_begin_catch(ptr %i.ao) #18 ; 2 uses
  br i1 %i.ar, label %bb.g, label %.invoke35

bb.g:                                             ; preds = %bb.f
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !226
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = call noundef ptr %i.av(ptr noundef nonnull align 8 dereferenceable(8) %i.as) #18
  invoke void (ptr, ...) @_ZN8LightGBM3Log7WarningEPKcz(ptr noundef %i.aw)
          to label %.invoke35 unwind label %bb.j

bb.h:                                             ; preds = %.invoke, %bb.e, %bb.d, %bb.c
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.ax = load i32, ptr %i.b, align 4, !tbaa !198
  %i.ay = sext i32 %i.ax to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.ay
  br i1 %.not.not, label %bb.c, label %._crit_edge

.invoke35:                                        ; preds = %bb.f, %bb.g
  invoke void @_ZN21ThreadExceptionHelper16CaptureExceptionEv(ptr noundef nonnull align 8 dereferenceable(48) %9)
          to label %.invoke unwind label %bb.j

.invoke:                                          ; preds = %.invoke35
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.j

._crit_edge:                                      ; preds = %bb.h, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.j:                                             ; preds = %.invoke35, %.invoke, %bb.g
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  call void @__clang_call_terminate(ptr %i.ba) #42
  unreachable
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK8LightGBM17SerialTreeLearner20AddPredictionToScoreEPKNS_4TreeEPd.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4) #22 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !320
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !318  ; 2 uses
  %i.h = add nsw i32 %i.g, -1                     ; 3 uses
  %i.i = icmp sgt i32 %i.g, 0
  br i1 %i.i, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i32 0, ptr %i.a, align 4, !tbaa !198
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i32 %i.h, ptr %i.b, align 4, !tbaa !198
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  store i32 1, ptr %i.c, align 4, !tbaa !198
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  store i32 0, ptr %i.d, align 4, !tbaa !198
  %i.j = load i32, ptr %0, align 4, !tbaa !198    ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.j, i32 33, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %.promoted = load i32, ptr %i.b, align 4, !tbaa !198
  %.promoted25 = load i32, ptr %i.a, align 4, !tbaa !198 ; 2 uses
  %i.k = call i32 @llvm.smin.i32(i32 %.promoted, i32 %i.h) ; 3 uses
  store i32 %i.k, ptr %i.b, align 4, !tbaa !198
  %.not26 = icmp sgt i32 %.promoted25, %i.k
  br i1 %.not26, label %._crit_edge27, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.l = load ptr, ptr %2, align 8, !tbaa !320
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 336
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !308
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !235  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !195
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !195
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !237
  %i.w = load i32, ptr %i.c, align 4, !tbaa !198  ; 2 uses
  %i.x = sext i32 %.promoted25 to i64
  %i.y = sext i32 %i.w to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.f
  %indvars.iv29.a = phi i64 [ %i.x, %.preheader.lr.ph ], [ %indvars.iv.next30, %bb.f ] ; 2 uses
  %i.z = phi i32 [ %i.k, %.preheader.lr.ph ], [ %i.bu, %bb.f ] ; 2 uses
  %i.aa = sext i32 %i.z to i64
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %._crit_edge
  %indvars.iv31 = phi i64 [ %indvars.iv29.a, %.preheader ], [ %indvars.iv.next32, %._crit_edge ] ; 5 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv31
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !309 ; 5 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv31
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !198
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv31
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !198 ; 3 uses
  %i.ah = sext i32 %i.ae to i64
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.ah ; 5 uses
  %i.aj = icmp sgt i32 %i.ag, 0
  br i1 %i.aj, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.ak = load ptr, ptr %4, align 8, !tbaa !269   ; 5 uses
  %wide.trip.count = zext nneg i32 %i.ag to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.al = icmp ult i32 %i.ag, 4
  br i1 %i.al, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.e

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod37 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod37)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.d ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv.epil
  %i.an = load i32, ptr %i.am, align 4, !tbaa !198
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.ao ; 2 uses
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !309
  %i.ar = fadd double %i.ac, %i.aq
  store double %i.ar, ptr %i.ap, align 8, !tbaa !309
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.d, !llvm.loop !2339

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.d, %bb.c
  %indvars.iv.next32 = add nsw i64 %indvars.iv31, 1
  %.not22.not = icmp slt i64 %indvars.iv31, %i.aa
  br i1 %.not22.not, label %bb.c, label %bb.f

bb.e:                                             ; preds = %bb.e, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.e ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.e ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv
  %i.at = load i32, ptr %i.as, align 4, !tbaa !198
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.au ; 2 uses
  %i.aw = load double, ptr %i.av, align 8, !tbaa !309
  %i.ax = fadd double %i.ac, %i.aw
  store double %i.ax, ptr %i.av, align 8, !tbaa !309
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !198
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.bb ; 2 uses
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !309
  %i.be = fadd double %i.ac, %i.bd
  store double %i.be, ptr %i.bc, align 8, !tbaa !309
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !198
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.bi ; 2 uses
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !309
  %i.bl = fadd double %i.ac, %i.bk
  store double %i.bl, ptr %i.bj, align 8, !tbaa !309
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !198
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.bp ; 2 uses
  %i.br = load double, ptr %i.bq, align 8, !tbaa !309
  %i.bs = fadd double %i.ac, %i.br
  store double %i.bs, ptr %i.bq, align 8, !tbaa !309
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.e, !llvm.loop !2340

bb.f:                                             ; preds = %._crit_edge
  %indvars.iv.next30 = add nsw i64 %indvars.iv29.a, %i.y ; 3 uses
  %indvars = trunc nsw i64 %indvars.iv.next30 to i32
  store i32 %indvars, ptr %i.a, align 4, !tbaa !198
  %i.bt = add nsw i32 %i.w, %i.z
  %i.bu = call i32 @llvm.smin.i32(i32 %i.bt, i32 %i.h) ; 3 uses
  store i32 %i.bu, ptr %i.b, align 4, !tbaa !198
  %5 = sext i32 %i.bu to i64
  %.not = icmp sgt i64 %indvars.iv.next30, %5
  br i1 %.not, label %._crit_edge27, label %.preheader

._crit_edge27:                                    ; preds = %bb.f, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge27, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @__cxx_global_var_init() #34 section ".text.startup" comdat($_ZN3fmt3v1112format_facetISt6localeE2idE) {
bb.a:
  %i.a = load i8, ptr @_ZGVN3fmt3v1112format_facetISt6localeE2idE, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN3fmt3v1112format_facetISt6localeE2idE, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #35

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #23

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #36

declare double @exp2(double) local_unnamed_addr

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @ldexp(double, i32) local_unnamed_addr #37

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #38

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #39

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smin.v2i32(<2 x i32>, <2 x i32>) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smin.v2i32(<2 x i32>) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.umin.v2i64(<2 x i64>, <2 x i64>) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.umin.v2i64(<2 x i64>) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v2f64(double, <2 x double>) #23

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { noinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nounwind }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nounwind memory(none) }
attributes #25 = { nocallback nofree nosync nounwind willreturn }
attributes #26 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { cold noreturn }
attributes #28 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #29 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { convergent nounwind }
attributes #32 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #36 = { nofree nounwind }
attributes #37 = { nocallback nofree nosync nounwind willreturn memory(errnomem: write) }
attributes #38 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #39 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #40 = { builtin nounwind }
attributes #41 = { builtin allocsize(0) }
attributes #42 = { noreturn nounwind }
attributes #43 = { noreturn }
attributes #44 = { nounwind willreturn memory(read) }
attributes #45 = { cold nounwind }

!llvm.module.flags = !{!37, !38, !39}
!llvm.ident = !{!40}
!llvm.errno.tbaa = !{!45}

!0 = distinct !{!0, !218}
!1 = distinct !{null, null, null}
!2 = distinct !{!2, !218}
!3 = distinct !{null, null}
!4 = distinct !{!4, !218}
!5 = distinct !{null, null}
!6 = distinct !{!6, !218}
!7 = distinct !{!7, !218}
!8 = distinct !{!8, !218}
!9 = distinct !{!9, !218}
!10 = distinct !{!10, !218}
!11 = distinct !{!11, !218}
!12 = distinct !{null, null, null}
!13 = distinct !{ptr @_ZN8LightGBM27IntermediateLeafConstraintsD2Ev, ptr @_ZN8LightGBM20BasicLeafConstraintsD2Ev, ptr @_ZNSt6vectorISt10unique_ptrIN8LightGBM15ConstraintEntryESt14default_deleteIS2_EESaIS5_EED2Ev, null, null, null, null, null}
!14 = distinct !{!14, !218}
!15 = distinct !{ptr @_ZN8LightGBM20BasicLeafConstraintsD2Ev, ptr @_ZNSt6vectorISt10unique_ptrIN8LightGBM15ConstraintEntryESt14default_deleteIS2_EESaIS5_EED2Ev, null, null, null, null, null}
!16 = distinct !{!16, !218}
!17 = distinct !{!17, !218}
!18 = distinct !{!18, !218}
!19 = distinct !{!19, !218}
!20 = distinct !{!20, !218}
!21 = distinct !{null, null, null}
!22 = distinct !{!22, !218}
!23 = distinct !{!23, !218}
!24 = distinct !{null}
!25 = distinct !{null}
!26 = distinct !{null}
!27 = distinct !{null}
!28 = distinct !{ptr @_ZNSt4pairIN24json11_internal_lightgbm4JsonEiED2Ev, ptr @_ZN24json11_internal_lightgbm4JsonD2Ev, null, null, null}
!29 = distinct !{ptr @_ZN24json11_internal_lightgbm4JsonD2Ev, null, null, null}
!30 = distinct !{!30, !218}
!31 = distinct !{!31, !218}
!32 = distinct !{!32, !218}
!33 = distinct !{!33, !218}
!34 = distinct !{!34, !218}
!35 = distinct !{!35, !218}
!36 = distinct !{!36, !218}
!37 = !{i32 7, !"openmp", i32 51}
!38 = !{i32 8, !"PIC Level", i32 2}
!39 = !{i32 7, !"uwtable", i32 2}
!40 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!41 = !{!"Simple C++ TBAA"}
!42 = !{!"omnipotent char", !41, i64 0}
!43 = !{!"int", !42, i64 0}
!44 = !{!"__libc_errno", !43, i64 0}
!45 = !{!44, !43, i64 0}
!46 = !{!"_ZTSN8LightGBM11TreeLearnerE"}
!47 = !{!"any pointer", !42, i64 0}
!48 = !{!"p1 _ZTSN8LightGBM7DatasetE", !47, i64 0}
!49 = !{!"p1 float", !47, i64 0}
!50 = !{!"p1 _ZTSN8LightGBM13DataPartitionE", !47, i64 0}
!51 = !{!"_ZTSSt10_Head_baseILm0EPN8LightGBM13DataPartitionELb0EE", !50, i64 0}
end_hunk_1
