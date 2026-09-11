Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/serial_tree_learner?download=true
inline.NumInlined: 18193
inline.NumDeleted: 6360
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 55
loop-unroll.NumUnrolled: 58
begin_hunk_0_@_ZN8LightGBM10LeafSplits4InitEiPKNS_13DataPartitionEPKfS5_:bb.a

bb.b:                                             ; preds = %bb.a
  %i.z = load i8, ptr %0, align 8, !tbaa !228, !range !232, !noundef !233
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @_ZN8LightGBM10LeafSplits4InitEiPKNS_13DataPartitionEPKfS5_.omp_outlined, ptr nonnull %0, ptr nonnull %i.c, ptr nonnull %i.a, ptr nonnull %i.d, ptr nonnull %i.b)
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.a
  tail call void @__kmpc_serialized_parallel(ptr nonnull @2, i32 %i.f)
  store i32 %i.f, ptr %i.e, align 4, !tbaa !198
  call void @_ZN8LightGBM10LeafSplits4InitEiPKNS_13DataPartitionEPKfS5_.omp_outlined(ptr nonnull %i.e, ptr nonnull poison, ptr nonnull %0, ptr %i.c, ptr %i.a, ptr %i.d, ptr %i.b) #18
  tail call void @__kmpc_end_serialized_parallel(ptr nonnull @2, i32 %i.f)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ab = load double, ptr %i.c, align 8, !tbaa !309
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.ab, ptr %i.ac, align 8, !tbaa !303
  %i.ad = load double, ptr %i.d, align 8, !tbaa !309
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.ad, ptr %i.ae, align 8, !tbaa !304
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM10LeafSplits4InitEiPKNS_13DataPartitionEPKaff(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, float noundef %4, float noundef %5) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca float, align 4                    ; 3 uses
  %i.c = alloca float, align 4                    ; 3 uses
  %i.d = alloca double, align 8                   ; 6 uses
  %i.e = alloca double, align 8                   ; 6 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = alloca i32, align 4                      ; 2 uses
  %i.i = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 4 uses
  store ptr %3, ptr %i.a, align 8, !tbaa !361
  store float %4, ptr %i.b, align 4, !tbaa !374
  store float %5, ptr %i.c, align 4, !tbaa !374
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %1, ptr %i.j, align 4, !tbaa !336
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = sext i32 %1 to i64                       ; 2 uses
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !195
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.m
  %i.p = load i32, ptr %i.o, align 4, !tbaa !198
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !195
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.m
  %i.t = load i32, ptr %i.s, align 4, !tbaa !198
  store i32 %i.t, ptr %i.k, align 8, !tbaa !198
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !237
  %i.w = sext i32 %i.p to i64
  %i.x = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.x, ptr %i.y, align 8, !tbaa !337
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
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
  %.promoted24 = load i32, ptr %i.a, align 4, !tbaa !198 ; 2 uses
  %i.m = call i32 @llvm.smin.i32(i32 %.promoted23, i32 %i.j) ; 3 uses
  %.not28 = icmp sgt i32 %.promoted24, %i.m
  br i1 %.not28, label %bb.e, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.n = load ptr, ptr %4, align 8, !tbaa !319
  %i.o = load ptr, ptr %6, align 8, !tbaa !319
  %i.p = load i32, ptr %i.c, align 4, !tbaa !198  ; 2 uses
  %i.q = sext i32 %.promoted24 to i64
  %i.r = sext i32 %i.p to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.d
  %indvars.iv = phi i64 [ %i.q, %.preheader.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.s = phi i32 [ %i.m, %.preheader.lr.ph ], [ %i.af, %bb.d ] ; 2 uses
  %i.t = phi <2 x double> [ zeroinitializer, %.preheader.lr.ph ], [ %i.ad, %bb.d ]
  %i.u = sext i32 %i.s to i64
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.c
  %indvars.iv36 = phi i64 [ %indvars.iv, %.preheader ], [ %indvars.iv.next37, %bb.c ] ; 4 uses
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
  %indvars.iv.next = add i64 %indvars.iv, %i.r    ; 2 uses
  %indvars = trunc i64 %indvars.iv.next to i32    ; 2 uses
  %i.ae = add nsw i32 %i.p, %i.s
  %i.af = call i32 @llvm.smin.i32(i32 %i.ae, i32 %i.j) ; 3 uses
  %.not = icmp slt i32 %i.af, %indvars
  br i1 %.not, label %._crit_edge, label %.preheader

._crit_edge:                                      ; preds = %bb.d
  %i.ag = extractelement <2 x double> %i.ad, i64 0
  store double %i.ag, ptr %i.e, align 8, !tbaa !309
  %i.ah = extractelement <2 x double> %i.ad, i64 1
  store double %i.ah, ptr %i.f, align 8, !tbaa !309
  store i32 %indvars, ptr %i.a, align 4, !tbaa !198
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
define internal void @_ZN8LightGBM10LeafSplits4InitEPKfS2_.omp_outlined.omp.reduction.reduction_func(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #29 {
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
declare i32 @__kmpc_reduce_nowait(ptr, i32, i32, i64, ptr, ptr, ptr) local_unnamed_addr #30

; Function Attrs: convergent nounwind
declare void @__kmpc_end_reduce_nowait(ptr, i32, ptr) local_unnamed_addr #30

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
  %indvars.iv = phi i64 [ %i.t, %.preheader.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.v = phi i32 [ %i.n, %.preheader.lr.ph ], [ %i.at, %bb.d ] ; 2 uses
  %.promoted3342 = phi double [ 0.000000e+00, %.preheader.lr.ph ], [ %i.af, %bb.d ]
  %.promoted273441 = phi double [ 0.000000e+00, %.preheader.lr.ph ], [ %i.ai, %bb.d ]
  %.promoted283640 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.ar, %bb.d ]
  %i.w = sext i32 %i.v to i64
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.c
  %indvars.iv45 = phi i64 [ %indvars.iv, %.preheader ], [ %indvars.iv.next46, %bb.c ] ; 4 uses
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
  %i.al = lshr i16 %i.ak, 8
  %i.am = zext nneg i16 %i.al to i64
  %sext = shl nuw i64 %i.am, 56
  %i.an = ashr exact i64 %sext, 24
  %i.ao = and i16 %i.ak, 255
  %i.ap = zext nneg i16 %i.ao to i64
  %i.aq = add i64 %i.z, %i.ap
  %i.ar = add i64 %i.aq, %i.an                    ; 3 uses
  store i64 %i.ar, ptr %i.g, align 8, !tbaa !243
  %indvars.iv.next46 = add nsw i64 %indvars.iv45, 1
  %.not26.not = icmp slt i64 %indvars.iv45, %i.w
  br i1 %.not26.not, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next = add i64 %indvars.iv, %i.u    ; 2 uses
  %indvars = trunc i64 %indvars.iv.next to i32    ; 2 uses
  store i32 %indvars, ptr %i.a, align 4, !tbaa !198
  %i.as = add nsw i32 %i.s, %i.v
  %i.at = call i32 @llvm.smin.i32(i32 %i.as, i32 %i.k) ; 3 uses
  store i32 %i.at, ptr %i.b, align 4, !tbaa !198
  %.not = icmp slt i32 %i.at, %indvars
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
end_hunk_0
