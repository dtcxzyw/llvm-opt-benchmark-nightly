Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iceoryx2-rs/original/_iceoryx2._iceoryx2.76e6eba86560f5d9-cgu.00?download=true
inline.NumInlined: 1489
inline.NumDeleted: 771
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 59
loop-unroll.NumUnrolled: 63
begin_hunk_0_@_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtCs8Chj7Szqq0n_4core6option6OptionINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6sender10ConnectionNtNtNtB2p_7service16local_threadsafe7ServiceEEEENtNtNtB1J_3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2:bb.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCelljEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecINtNtCs8Chj7Szqq0n_4core6option6OptionNtNtNtNtCs7PFeJTloU4p_4toml3ser8document6buffer5TableEENtNtNtBK_3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueSINtNtB4_6option6OptionNtNtNtNtCs7PFeJTloU4p_4toml3ser8document6buffer5TableEECsacUAxWRcRNR_9__iceoryx2.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs7PFeJTloU4p_4toml3ser8document6buffer5TableEECsacUAxWRcRNR_9__iceoryx2.exit.i
  %.sroa.0.03.i = phi i64 [ %i.g, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs7PFeJTloU4p_4toml3ser8document6buffer5TableEECsacUAxWRcRNR_9__iceoryx2.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [64 x i8], ptr %i.b, i64 %.sroa.0.03.i ; 5 uses
  %i.g = add nuw nsw i64 %.sroa.0.03.i, 1         ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2522)
  %i.h = load i64, ptr %i.f, align 8, !range !10, !alias.scope !2523, !noundef !4
  %i.i = icmp eq i64 %i.h, -1
  br i1 %i.i, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs7PFeJTloU4p_4toml3ser8document6buffer5TableEECsacUAxWRcRNR_9__iceoryx2.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2524)
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2525)
  %i.k = load i64, ptr %i.j, align 8, !range !10, !alias.scope !2526, !noundef !4
  %i.l = icmp eq i64 %i.k, -1
  br i1 %i.l, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtNtCs7PFeJTloU4p_4toml3ser8document6buffer5TableECsacUAxWRcRNR_9__iceoryx2.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2527)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2528)
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !2529, !nonnull !4, !noundef !4
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !2529, !noundef !4 ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VecNtNtBG_6string6StringEECsacUAxWRcRNR_9__iceoryx2.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i.i
  %.sroa.0.03.i.i.i.i.i.i.i = phi i64 [ %i.s, %.lr.ph.i.i.i.i.i.i.i ], [ 0, %bb.c ] ; 2 uses
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %.sroa.0.03.i.i.i.i.i.i.i
  %i.s = add nuw nsw i64 %.sroa.0.03.i.i.i.i.i.i.i, 1 ; 2 uses
  tail call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r) #21, !noalias !2530
  %i.t = icmp eq i64 %i.s, %i.p
  br i1 %i.t, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VecNtNtBG_6string6StringEECsacUAxWRcRNR_9__iceoryx2.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VecNtNtBG_6string6StringEECsacUAxWRcRNR_9__iceoryx2.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.c
  tail call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j) #21
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtNtCs7PFeJTloU4p_4toml3ser8document6buffer5TableECsacUAxWRcRNR_9__iceoryx2.exit.i.i

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtNtCs7PFeJTloU4p_4toml3ser8document6buffer5TableECsacUAxWRcRNR_9__iceoryx2.exit.i.i: ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VecNtNtBG_6string6StringEECsacUAxWRcRNR_9__iceoryx2.exit.i.i.i.i, %bb.b
  tail call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.f) #21
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs7PFeJTloU4p_4toml3ser8document6buffer5TableEECsacUAxWRcRNR_9__iceoryx2.exit.i

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs7PFeJTloU4p_4toml3ser8document6buffer5TableEECsacUAxWRcRNR_9__iceoryx2.exit.i: ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtNtCs7PFeJTloU4p_4toml3ser8document6buffer5TableECsacUAxWRcRNR_9__iceoryx2.exit.i.i, %.lr.ph.i
  %i.u = icmp eq i64 %i.g, %i.d
  br i1 %i.u, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueSINtNtB4_6option6OptionNtNtNtNtCs7PFeJTloU4p_4toml3ser8document6buffer5TableEECsacUAxWRcRNR_9__iceoryx2.exit, label %.lr.ph.i

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueSINtNtB4_6option6OptionNtNtNtNtCs7PFeJTloU4p_4toml3ser8document6buffer5TableEECsacUAxWRcRNR_9__iceoryx2.exit: ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs7PFeJTloU4p_4toml3ser8document6buffer5TableEECsacUAxWRcRNR_9__iceoryx2.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecINtNtCs8Chj7Szqq0n_4core6option6OptionNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config5event15ListenerDetailsEENtNtNtBK_3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecINtNtCsg6ZEkMtNi4J_8iceoryx24node9NodeStateNtNtNtBK_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecINtNtCsg6ZEkMtNi4J_8iceoryx24node9NodeStateNtNtNtBK_7service16local_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecINtNtCsgizmiBVULPI_13serde_spanned7spanned7SpannedNtNtNtNtCs7PFeJTloU4p_4toml2de6parser7devalue7DeValueEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueSINtNtCsgizmiBVULPI_13serde_spanned7spanned7SpannedNtNtNtNtCs7PFeJTloU4p_4toml2de6parser7devalue7DeValueEECsacUAxWRcRNR_9__iceoryx2.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.0.i1 = phi i64 [ %i.g, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [56 x i8], ptr %i.b, i64 %.sroa.0.0.i1
  %i.g = add nuw i64 %.sroa.0.0.i1, 1             ; 2 uses
  tail call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsgizmiBVULPI_13serde_spanned7spanned7SpannedNtNtNtNtCs7PFeJTloU4p_4toml2de6parser7devalue7DeValueEECsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef align 8 dereferenceable(56) %i.f) #21, !inline_history !2531
  %i.h = icmp eq i64 %i.g, %i.d
  br i1 %i.h, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueSINtNtCsgizmiBVULPI_13serde_spanned7spanned7SpannedNtNtNtNtCs7PFeJTloU4p_4toml2de6parser7devalue7DeValueEECsacUAxWRcRNR_9__iceoryx2.exit, label %.lr.ph

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueSINtNtCsgizmiBVULPI_13serde_spanned7spanned7SpannedNtNtNtNtCs7PFeJTloU4p_4toml2de6parser7devalue7DeValueEECsacUAxWRcRNR_9__iceoryx2.exit: ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecINtNtNtCs8Chj7Szqq0n_4core3mem12maybe_uninit11MaybeUninitNtNtCsg6ZEkMtNi4J_8iceoryx211identifiers12UniqueNodeIdEENtNtNtBM_3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecINtNtNtCs8Chj7Szqq0n_4core3mem12maybe_uninit11MaybeUninitNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config16request_response13ClientDetailsEENtNtNtBM_3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecINtNtNtCs8Chj7Szqq0n_4core3mem12maybe_uninit11MaybeUninitNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config16request_response13ServerDetailsEENtNtNtBM_3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecINtNtNtCs8Chj7Szqq0n_4core3mem12maybe_uninit11MaybeUninitNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config17publish_subscribe16PublisherDetailsEENtNtNtBM_3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecINtNtNtCs8Chj7Szqq0n_4core3mem12maybe_uninit11MaybeUninitNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config17publish_subscribe17SubscriberDetailsEENtNtNtBM_3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecINtNtNtCs8Chj7Szqq0n_4core3mem12maybe_uninit11MaybeUninitNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config5event15ListenerDetailsEENtNtNtBM_3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueSNtNtCsbqH9stoieM8_5alloc6string6StringECsacUAxWRcRNR_9__iceoryx2.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.0.03.i = phi i64 [ %i.g, %.lr.ph.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.0.03.i
  %i.g = add nuw nsw i64 %.sroa.0.03.i, 1         ; 2 uses
  tail call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f) #21
  %i.h = icmp eq i64 %i.g, %i.d
  br i1 %i.h, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueSNtNtCsbqH9stoieM8_5alloc6string6StringECsacUAxWRcRNR_9__iceoryx2.exit, label %.lr.ph.i

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueSNtNtCsbqH9stoieM8_5alloc6string6StringECsacUAxWRcRNR_9__iceoryx2.exit: ; preds = %.lr.ph.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency6atomic9AtomicU64ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_name8FileNameENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtCsacUAxWRcRNR_9__iceoryx210node_state9NodeStateENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtCsacUAxWRcRNR_9__iceoryx215service_details14ServiceDetailsENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueSNtNtCsacUAxWRcRNR_9__iceoryx215service_details14ServiceDetailsEBG_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCsacUAxWRcRNR_9__iceoryx215service_details14ServiceDetailsEBF_.exit.i
  %.sroa.0.03.i = phi i64 [ %i.g, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCsacUAxWRcRNR_9__iceoryx215service_details14ServiceDetailsEBF_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [5064 x i8], ptr %i.b, i64 %.sroa.0.03.i ; 3 uses
  %i.g = add nuw nsw i64 %.sroa.0.03.i, 1         ; 2 uses
  %i.h = load i64, ptr %i.f, align 8, !range !13, !alias.scope !2538, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 392
  tail call void @_RNvXs0_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector10static_vecINtB5_9StaticVecNtNtNtCsg6ZEkMtNi4J_8iceoryx27service9attribute9AttributeKj8_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef nonnull align 8 dereferenceable(2824) %i.j) #21
  %i.k = load i64, ptr %i.i, align 8, !range !10, !alias.scope !2538, !noundef !4
  %i.l = icmp eq i64 %i.k, -1
  br i1 %i.l, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCsacUAxWRcRNR_9__iceoryx215service_details14ServiceDetailsEBF_.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %1 = icmp eq i64 %i.h, 0
  br i1 %1, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecINtNtCsg6ZEkMtNi4J_8iceoryx24node9NodeStateNtNtNtBR_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef nonnull align 8 dereferenceable(5056) %i.i) #21
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCsacUAxWRcRNR_9__iceoryx215service_details14ServiceDetailsEBF_.exit.i

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecINtNtCsg6ZEkMtNi4J_8iceoryx24node9NodeStateNtNtNtBR_7service16local_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef nonnull align 8 dereferenceable(5056) %i.i) #21
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCsacUAxWRcRNR_9__iceoryx215service_details14ServiceDetailsEBF_.exit.i

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCsacUAxWRcRNR_9__iceoryx215service_details14ServiceDetailsEBF_.exit.i: ; preds = %bb.d, %bb.c, %.lr.ph.i
  %i.m = icmp eq i64 %i.g, %i.d
  br i1 %i.m, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueSNtNtCsacUAxWRcRNR_9__iceoryx215service_details14ServiceDetailsEBG_.exit, label %.lr.ph.i

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueSNtNtCsacUAxWRcRNR_9__iceoryx215service_details14ServiceDetailsEBG_.exit: ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCsacUAxWRcRNR_9__iceoryx215service_details14ServiceDetailsEBF_.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtCsacUAxWRcRNR_9__iceoryx221waitset_attachment_id19WaitSetAttachmentIdENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtCsacUAxWRcRNR_9__iceoryx28event_id7EventIdENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtCsfiHF0WWtlOy_4pyo38pybacked11PyBackedStrENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2541)
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueSNtNtCsfiHF0WWtlOy_4pyo38pybacked11PyBackedStrECsacUAxWRcRNR_9__iceoryx2.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.f = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsfiHF0WWtlOy_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL)
  br label %bb.b

bb.b:                                             ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCsfiHF0WWtlOy_4pyo38pybacked11PyBackedStrECsacUAxWRcRNR_9__iceoryx2.exit.i, %.lr.ph.i
  %.sroa.0.03.i = phi i64 [ 0, %.lr.ph.i ], [ %i.h, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCsfiHF0WWtlOy_4pyo38pybacked11PyBackedStrECsacUAxWRcRNR_9__iceoryx2.exit.i ] ; 2 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.0.03.i
  %i.h = add nuw nsw i64 %.sroa.0.03.i, 1         ; 2 uses
  %.val.i = load ptr, ptr %i.g, align 8, !alias.scope !2541, !nonnull !4, !noundef !4 ; 2 uses
  %.val.i.i.i.i.i.i = load i64, ptr %i.f, align 8, !noalias !2541, !noundef !4
  %i.i = icmp sgt i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.i, label %bb.d, label %bb.c, !prof !20

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNvXsA_NtCsfiHF0WWtlOy_4pyo38instanceINtB7_2PypENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %.val.i) #21, !noalias !2541
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCsfiHF0WWtlOy_4pyo38pybacked11PyBackedStrECsacUAxWRcRNR_9__iceoryx2.exit.i

bb.d:                                             ; preds = %bb.b
  tail call void @Py_DecRef(ptr noundef nonnull %.val.i) #21, !noalias !2541
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCsfiHF0WWtlOy_4pyo38pybacked11PyBackedStrECsacUAxWRcRNR_9__iceoryx2.exit.i

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCsfiHF0WWtlOy_4pyo38pybacked11PyBackedStrECsacUAxWRcRNR_9__iceoryx2.exit.i: ; preds = %bb.d, %bb.c
  %i.j = icmp eq i64 %i.h, %i.d
  br i1 %i.j, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueSNtNtCsfiHF0WWtlOy_4pyo38pybacked11PyBackedStrECsacUAxWRcRNR_9__iceoryx2.exit, label %bb.b

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueSNtNtCsfiHF0WWtlOy_4pyo38pybacked11PyBackedStrECsacUAxWRcRNR_9__iceoryx2.exit: ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCsfiHF0WWtlOy_4pyo38pybacked11PyBackedStrECsacUAxWRcRNR_9__iceoryx2.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue10AttachmentENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtCsfiHF0WWtlOy_4pyo37pyclass18create_type_object13GetSetDefTypeENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2544)
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueSNtNtNtCsfiHF0WWtlOy_4pyo37pyclass18create_type_object13GetSetDefTypeECsacUAxWRcRNR_9__iceoryx2.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtCsfiHF0WWtlOy_4pyo37pyclass18create_type_object13GetSetDefTypeECsacUAxWRcRNR_9__iceoryx2.exit.i
  %.sroa.0.04.i = phi i64 [ %i.g, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtCsfiHF0WWtlOy_4pyo37pyclass18create_type_object13GetSetDefTypeECsacUAxWRcRNR_9__iceoryx2.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.sroa.0.04.i ; 2 uses
  %i.g = add nuw nsw i64 %.sroa.0.04.i, 1         ; 2 uses
  %.val.i = load i64, ptr %i.f, align 8, !range !24, !alias.scope !2544, !noundef !4
  %switch.i.i = icmp samesign ult i64 %.val.i, 2
  br i1 %switch.i.i, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtCsfiHF0WWtlOy_4pyo37pyclass18create_type_object13GetSetDefTypeECsacUAxWRcRNR_9__iceoryx2.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.h = getelementptr i8, ptr %i.f, i64 8
  %.val3.i = load ptr, ptr %i.h, align 8, !alias.scope !2544, !nonnull !4, !noundef !4
  tail call void @_RNvCsicpYtSlSgpD_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef 24, i64 noundef 8) #21, !noalias !2544
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtCsfiHF0WWtlOy_4pyo37pyclass18create_type_object13GetSetDefTypeECsacUAxWRcRNR_9__iceoryx2.exit.i

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtCsfiHF0WWtlOy_4pyo37pyclass18create_type_object13GetSetDefTypeECsacUAxWRcRNR_9__iceoryx2.exit.i: ; preds = %bb.b, %.lr.ph.i
  %i.i = icmp eq i64 %i.g, %i.d
  br i1 %i.i, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueSNtNtNtCsfiHF0WWtlOy_4pyo37pyclass18create_type_object13GetSetDefTypeECsacUAxWRcRNR_9__iceoryx2.exit, label %.lr.ph.i

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueSNtNtNtCsfiHF0WWtlOy_4pyo37pyclass18create_type_object13GetSetDefTypeECsacUAxWRcRNR_9__iceoryx2.exit: ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtCsfiHF0WWtlOy_4pyo37pyclass18create_type_object13GetSetDefTypeECsacUAxWRcRNR_9__iceoryx2.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtCsigunbJSLHCW_3std6thread2id8ThreadIdENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details13segment_state12SegmentStateENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueSNtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details13segment_state12SegmentStateECsacUAxWRcRNR_9__iceoryx2.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.0.03.i = phi i64 [ %i.g, %.lr.ph.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %.sroa.0.03.i
  %i.g = add nuw nsw i64 %.sroa.0.03.i, 1         ; 2 uses
  tail call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecNtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency6atomic9AtomicU64ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.f) #21
  %i.h = icmp eq i64 %i.g, %i.d
  br i1 %i.h, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueSNtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details13segment_state12SegmentStateECsacUAxWRcRNR_9__iceoryx2.exit, label %.lr.ph.i

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueSNtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details13segment_state12SegmentStateECsacUAxWRcRNR_9__iceoryx2.exit: ; preds = %.lr.ph.i, %bb.a
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service7builder10blackboard16BuilderInternalsENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsacUAxWRcRNR_9__iceoryx2(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueSNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service7builder10blackboard16BuilderInternalsECsacUAxWRcRNR_9__iceoryx2.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service7builder10blackboard16BuilderInternalsECsacUAxWRcRNR_9__iceoryx2.exit.i
  %.sroa.0.03.i = phi i64 [ %i.g, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service7builder10blackboard16BuilderInternalsECsacUAxWRcRNR_9__iceoryx2.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [408 x i8], ptr %i.b, i64 %.sroa.0.03.i ; 5 uses
  %i.g = add nuw nsw i64 %.sroa.0.03.i, 1         ; 2 uses
  tail call void @_RNvXs6_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service7builder10blackboardNtB5_16BuilderInternalsNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(408) %i.f) #21
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 296
  %.val.i.i = load ptr, ptr %i.h, align 8, !alias.scope !2551 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 304
  %.val1.i.i = load ptr, ptr %i.i, align 8, !alias.scope !2551, !nonnull !4, !align !12, !noundef !4 ; 3 uses
  %i.j = load ptr, ptr %.val1.i.i, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  tail call void %i.j(ptr noundef nonnull %.val.i.i) #23, !inline_history !2549
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %i.k = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !14, !invariant.load !4 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc5boxed3BoxDINtNtNtB4_3ops8function5FnMutTOhEEp6OutputuEL_EECsacUAxWRcRNR_9__iceoryx2.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.o = load i64, ptr %i.n, align 8, !range !22, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  tail call void @_RNvCsicpYtSlSgpD_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.l, i64 noundef range(i64 1, 536870913) %i.o) #21
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc5boxed3BoxDINtNtNtB4_3ops8function5FnMutTOhEEp6OutputuEL_EECsacUAxWRcRNR_9__iceoryx2.exit.i.i

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc5boxed3BoxDINtNtNtB4_3ops8function5FnMutTOhEEp6OutputuEL_EECsacUAxWRcRNR_9__iceoryx2.exit.i.i: ; preds = %bb.d, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 312
  %.val2.i.i = load ptr, ptr %i.p, align 8, !alias.scope !2551 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 320
  %.val3.i.i = load ptr, ptr %i.q, align 8, !alias.scope !2551, !nonnull !4, !align !12, !noundef !4 ; 3 uses
  %i.r = load ptr, ptr %.val3.i.i, align 8, !invariant.load !4 ; 2 uses
  %.not.i4.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i4.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc5boxed3BoxDINtNtNtB4_3ops8function5FnMutTOhEEp6OutputuEL_EECsacUAxWRcRNR_9__iceoryx2.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ]
  tail call void %i.r(ptr noundef nonnull %.val2.i.i) #23, !inline_history !2550
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc5boxed3BoxDINtNtNtB4_3ops8function5FnMutTOhEEp6OutputuEL_EECsacUAxWRcRNR_9__iceoryx2.exit.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.val3.i.i, i64 8
  %i.t = load i64, ptr %i.s, align 8, !range !14, !invariant.load !4 ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service7builder10blackboard16BuilderInternalsECsacUAxWRcRNR_9__iceoryx2.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %.val3.i.i, i64 16
  %i.w = load i64, ptr %i.v, align 8, !range !22, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ]
  tail call void @_RNvCsicpYtSlSgpD_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.t, i64 noundef range(i64 1, 536870913) %i.w) #21
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service7builder10blackboard16BuilderInternalsECsacUAxWRcRNR_9__iceoryx2.exit.i

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service7builder10blackboard16BuilderInternalsECsacUAxWRcRNR_9__iceoryx2.exit.i: ; preds = %bb.g, %bb.f
  %i.x = icmp eq i64 %i.g, %i.d
  br i1 %i.x, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueSNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service7builder10blackboard16BuilderInternalsECsacUAxWRcRNR_9__iceoryx2.exit, label %.lr.ph.i

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueSNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service7builder10blackboard16BuilderInternalsECsacUAxWRcRNR_9__iceoryx2.exit: ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service7builder10blackboard16BuilderInternalsECsacUAxWRcRNR_9__iceoryx2.exit.i, %bb.a
  ret void
end_hunk_0
