Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_env-45a487b3da3a2ebc.uu_env.2eeaa69494824df3-cgu.0?download=true
inline.NumInlined: 1366
inline.NumDeleted: 752
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_RNvNtCs41JD7yXDh97_6uu_env14native_int_str24get_char_from_native_int:bb.a
  %i.y = load i8, ptr %i.w, align 1, !alias.scope !2995, !noalias !2996, !noundef !5
  %i.z = shl nuw nsw i32 %i.s, 6
  %i.aa = and i8 %i.y, 63
  %i.ab = zext nneg i8 %i.aa to i32
  %i.ac = or disjoint i32 %i.z, %i.ab             ; 2 uses
  %i.ad = shl nuw nsw i32 %i.n, 12
  %i.ae = or disjoint i32 %i.ac, %i.ad
  %i.af = icmp samesign ugt i8 %i.j, -17
  br i1 %i.af, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs41JD7yXDh97_6uu_env.exit16.i.i, label %_RNCNvNtCs41JD7yXDh97_6uu_env14native_int_str24get_char_from_native_int0B5_.exit

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs41JD7yXDh97_6uu_env.exit16.i.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs41JD7yXDh97_6uu_env.exit14.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 3
  %i.ah = icmp samesign ne i64 %i.h, 3
  call void @llvm.assume(i1 %i.ah)
  %i.ai = load i8, ptr %i.ag, align 1, !alias.scope !2995, !noalias !2996, !noundef !5
  %i.aj = shl nuw nsw i32 %i.n, 18
  %i.ak = and i32 %i.aj, 1835008
  %i.al = shl nuw nsw i32 %i.ac, 6
  %i.am = and i8 %i.ai, 63
  %i.an = zext nneg i8 %i.am to i32
  %i.ao = or disjoint i32 %i.al, %i.an
  %i.ap = or disjoint i32 %i.ao, %i.ak
  br label %_RNCNvNtCs41JD7yXDh97_6uu_env14native_int_str24get_char_from_native_int0B5_.exit

bb.f:                                             ; preds = %bb.c
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #28, !noalias !2995
  unreachable

_RNCNvNtCs41JD7yXDh97_6uu_env14native_int_str24get_char_from_native_int0B5_.exit: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs41JD7yXDh97_6uu_env.exit12.i.i, %bb.e, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs41JD7yXDh97_6uu_env.exit14.i.i, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs41JD7yXDh97_6uu_env.exit16.i.i
  %.sroa.4.0.i.ph.i = phi i32 [ %i.ae, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs41JD7yXDh97_6uu_env.exit14.i.i ], [ %i.ap, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs41JD7yXDh97_6uu_env.exit16.i.i ], [ %i.t, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs41JD7yXDh97_6uu_env.exit12.i.i ], [ %i.v, %bb.e ] ; 2 uses
  %i.aq = icmp samesign ult i32 %.sroa.4.0.i.ph.i, 1114112
  call void @llvm.assume(i1 %i.aq)
  br label %bb.g

bb.g:                                             ; preds = %_RNCNvNtCs41JD7yXDh97_6uu_env14native_int_str24get_char_from_native_int0B5_.exit, %bb.b
  %.sroa.0.0 = phi i32 [ -1, %bb.b ], [ %.sroa.4.0.i.ph.i, %_RNCNvNtCs41JD7yXDh97_6uu_env14native_int_str24get_char_from_native_int0B5_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ar = insertvalue { i32, i8 } poison, i32 %.sroa.0.0, 0
  %i.as = insertvalue { i32, i8 } %i.ar, i8 %0, 1
  ret { i32, i8 } %i.as
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { i1, i8 } @_RNvNtCs41JD7yXDh97_6uu_env14native_int_str27get_single_native_int_value(i32 noundef range(i32 0, 1114112) %0) unnamed_addr #8 {
_RNvNtNtCs6JMX4GRUq9U_4core4char7methods15encode_utf8_raw.exit:
  %i.a = icmp samesign ult i32 %0, 128            ; 2 uses
  %i.b = trunc nuw nsw i32 %0 to i8
  %.sroa.3.0 = select i1 %i.a, i8 %i.b, i8 undef
  %i.c = insertvalue { i1, i8 } poison, i1 %i.a, 0
  %i.d = insertvalue { i1, i8 } %i.c, i8 %.sroa.3.0, 1
  ret { i1, i8 } %i.d
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvNtCs41JD7yXDh97_6uu_env14split_iterator5split(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 4), (8, 32)) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [88 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8, !alias.scope !2999
  %.sroa.4.0..sroa_idx1.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx1.i, align 8, !alias.scope !2999
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx2.i, align 8, !alias.scope !2999
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %1, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !2999
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %2, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !2999
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr %1, ptr %.sroa.8.0..sroa_idx.i, align 8, !alias.scope !2999
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 %2, ptr %.sroa.9.0..sroa_idx.i, align 8, !alias.scope !2999
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !2999
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !2999
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !2999
  call void @_RNvMNtCs41JD7yXDh97_6uu_env14split_iteratorNtB2_13SplitIterator5split(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.c = load i32, ptr %i.a, align 8, !range !20, !noundef !5 ; 2 uses
  %.not = icmp eq i32 %i.c, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.512.0.copyload = load i64, ptr %.sroa.512.0..sroa_idx, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.414.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.411.0..sroa_idx, i64 28, i1 false)
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.512.0.copyload, ptr %.sroa.515.0..sroa_idx, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store i32 %i.c, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc noalias noundef nonnull ptr @_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit(i64 noundef range(i64 24, 33) %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26
  %i.a = tail call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %0, i64 noundef 8) #26 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %0) #30
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCs6JMX4GRUq9U_4core3anyNtNtNtCsgNwXemyrBWj_12clap_builder7builder10value_hint9ValueHintNtB2_3Any7type_idCs41JD7yXDh97_6uu_env(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly captures(none) %1) unnamed_addr #9 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @7, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtB14_8OsStringENvMB14_B4d_9as_os_strEE9from_iterCs41JD7yXDh97_6uu_env(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dead_on_return dereferenceable(64) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3034)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3035)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3036)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %.promoted.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !3037
  %.promoted19.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !3037
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !3037 ; 3 uses
  %.promoted20.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !3037
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.sroa.7.0.copyload = phi ptr [ %i.m, %bb.c ], [ %.promoted20.i.i.i, %bb.a ] ; 2 uses
  %.sroa.48.0.copyload = phi ptr [ %i.j, %bb.c ], [ %.promoted19.i.i.i, %bb.a ] ; 6 uses
  %spec.select.i18.i.i.i = phi ptr [ %.val.i.i.i, %bb.c ], [ %.promoted.i.i.i, %bb.a ] ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %spec.select.i18.i.i.i, null
  br i1 %.not.i.i.i.i, label %select.unfold.i.i.i, label %.sink.split.i.i.i.i

.sink.split.i.i.i.i:                              ; preds = %bb.b
  %i.g = icmp eq ptr %spec.select.i18.i.i.i, %.sroa.7.0.copyload ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %spec.select.i18.i.i.i, i64 32 ; 2 uses
  %spec.select.i.i.i.i = select i1 %i.g, ptr null, ptr %i.h
  store ptr %spec.select.i.i.i.i, ptr %i.c, align 8, !alias.scope !3038
  br i1 %i.g, label %select.unfold.i.i.i, label %.loopexit

select.unfold.i.i.i:                              ; preds = %.sink.split.i.i.i.i, %bb.b
  %.not.i5.i.i.i = icmp eq ptr %.sroa.48.0.copyload, null
  %i.i = icmp eq ptr %.sroa.48.0.copyload, %i.f
  %or.cond.i.i.i.i = select i1 %.not.i5.i.i.i, i1 true, i1 %i.i
  br i1 %or.cond.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %select.unfold.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.48.0.copyload, i64 24 ; 2 uses
  store ptr %i.j, ptr %i.b, align 8, !alias.scope !3039
  %i.k = getelementptr i8, ptr %.sroa.48.0.copyload, i64 8
  %.val.i.i.i = load ptr, ptr %i.k, align 8, !noalias !3037, !nonnull !5, !noundef !5 ; 3 uses
  %i.l = getelementptr i8, ptr %.sroa.48.0.copyload, i64 16
  %.val4.i.i.i = load i64, ptr %i.l, align 8, !noalias !3037, !noundef !5
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %.val.i.i.i, i64 %.val4.i.i.i ; 2 uses
  store ptr %.val.i.i.i, ptr %i.c, align 8, !alias.scope !3037
  store ptr %i.m, ptr %i.d, align 8, !alias.scope !3037
  br label %bb.b

bb.d:                                             ; preds = %select.unfold.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !3040, !noundef !5 ; 4 uses
  %.not.i7.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i7.i.i.i, label %bb.h, label %.sink.split.i8.i.i.i

.sink.split.i8.i.i.i:                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !3041, !nonnull !5, !noundef !5
  %i.r = icmp eq ptr %i.o, %i.q                   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %spec.select.i9.i.i.i = select i1 %i.r, ptr null, ptr %i.s
  store ptr %spec.select.i9.i.i.i, ptr %i.n, align 8, !alias.scope !3040
  br i1 %i.r, label %bb.h, label %.loopexit

.loopexit:                                        ; preds = %.sink.split.i.i.i.i, %.sink.split.i8.i.i.i
  %.sroa.6.0.copyload = phi ptr [ null, %.sink.split.i8.i.i.i ], [ %i.h, %.sink.split.i.i.i.i ]
  %.sroa.0.0.i.i.i = phi ptr [ %i.o, %.sink.split.i8.i.i.i ], [ %spec.select.i18.i.i.i, %.sink.split.i.i.i.i ]
  %i.t = load ptr, ptr %1, align 8, !alias.scope !3042, !nonnull !5, !noundef !5 ; 2 uses
  %i.u = tail call noundef nonnull align 8 ptr %i.t(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.0.i.i.i) #26, !noalias !3042, !inline_history !3018 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !3042, !noundef !5
  %i.x = add i64 %i.w, -1                         ; 3 uses
  store i64 %i.x, ptr %i.v, align 8, !alias.scope !3042
  %i.y = getelementptr i8, ptr %i.u, i64 8
  %.val.i = load ptr, ptr %i.y, align 8, !noalias !3034, !nonnull !5, !noundef !5
  %i.z = getelementptr i8, ptr %i.u, i64 16
  %.val3.i = load i64, ptr %i.z, align 8, !noalias !3034, !noundef !5
  %i.aa = tail call i64 @llvm.uadd.sat.i64(i64 %i.x, i64 1) ; 2 uses
  %..i = tail call noundef i64 @llvm.umax.i64(i64 %i.aa, i64 4) ; 2 uses
  %i.ab = shl i64 %..i, 4                         ; 3 uses
  %i.ac = icmp ugt i64 %i.aa, 1152921504606846975
  %.not.i.i = icmp ugt i64 %i.ab, 9223372036854775800
  %or.cond.i.i = or i1 %i.ac, %.not.i.i
  br i1 %or.cond.i.i, label %bb.e, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i, !prof !17

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %.loopexit
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !3043
  %i.ad = tail call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ab, i64 noundef range(i64 1, 9) 8) #26, !noalias !3043 ; 5 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.e, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs41JD7yXDh97_6uu_env.exit

bb.e:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i, %.loopexit
  %.sroa.4.0.ph.i = phi i64 [ 8, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i ], [ 0, %.loopexit ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.ab) #30
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs41JD7yXDh97_6uu_env.exit: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i
  store ptr %.val.i, ptr %i.ad, align 8, !captures !19
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 %.val3.i, ptr %i.af, align 8
  store i64 %..i, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.ad, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.64.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3044)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3045)
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs41JD7yXDh97_6uu_env.exit
  %i.ag = phi ptr [ %i.bi, %bb.g ], [ %i.ad, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs41JD7yXDh97_6uu_env.exit ]
  %i.ah = phi i64 [ %i.bl, %bb.g ], [ 1, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs41JD7yXDh97_6uu_env.exit ] ; 5 uses
  %i.ai = phi i64 [ %i.bb, %bb.g ], [ %i.x, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs41JD7yXDh97_6uu_env.exit ]
  %spec.select.i9.i.i.i16.i.i = phi ptr [ %spec.select.i9.i.i.i15.i.i, %bb.g ], [ %.sroa.8.0.copyload, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs41JD7yXDh97_6uu_env.exit ] ; 5 uses
  %i.aj = phi ptr [ %i.ay, %bb.g ], [ %.sroa.7.0.copyload, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs41JD7yXDh97_6uu_env.exit ] ; 3 uses
  %i.ak = phi ptr [ %i.az, %bb.g ], [ %.sroa.48.0.copyload, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs41JD7yXDh97_6uu_env.exit ] ; 5 uses
  %.val.i.i.i11.i.i = phi ptr [ %.val.i.i.i8.i.i, %bb.g ], [ %.sroa.6.0.copyload, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs41JD7yXDh97_6uu_env.exit ] ; 3 uses
  %.not.i.i.i.i.i5.i = icmp eq ptr %.val.i.i.i11.i.i, null
  %i.al = icmp eq ptr %.val.i.i.i11.i.i, %i.aj
  %or.cond.i6.i = select i1 %.not.i.i.i.i.i5.i, i1 true, i1 %i.al
  br i1 %or.cond.i6.i, label %select.unfold.i.i.i.i.i.preheader, label %.loopexit.loopexit.i.i

select.unfold.i.i.i.i.i.preheader:                ; preds = %bb.f
  %.not.i5.i.i.i.i.i19 = icmp eq ptr %i.ak, null
  %i.am = icmp eq ptr %i.ak, %i.f
  %or.cond.i.i.i.i.i.i20 = select i1 %.not.i5.i.i.i.i.i19, i1 true, i1 %i.am
  br i1 %or.cond.i.i.i.i.i.i20, label %select.unfold.i.i.i.i.i._crit_edge, label %.lr.ph

select.unfold.i.i.i.i.i:                          ; preds = %.lr.ph
  %i.an = icmp eq ptr %i.ap, %i.f
  br i1 %i.an, label %select.unfold.i.i.i.i.i._crit_edge.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %select.unfold.i.i.i.i.i.preheader, %select.unfold.i.i.i.i.i
  %i.ao = phi ptr [ %i.ap, %select.unfold.i.i.i.i.i ], [ %i.ak, %select.unfold.i.i.i.i.i.preheader ] ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24 ; 4 uses
  %i.aq = getelementptr i8, ptr %i.ao, i64 16
  %.val4.i.i.i.i.i = load i64, ptr %i.aq, align 8, !noalias !3046, !noundef !5 ; 2 uses
  %i.ar = icmp eq i64 %.val4.i.i.i.i.i, 0
  br i1 %i.ar, label %select.unfold.i.i.i.i.i, label %.loopexit.loopexit.i.i.loopexit

select.unfold.i.i.i.i.i._crit_edge.loopexit:      ; preds = %select.unfold.i.i.i.i.i
  %i.as = getelementptr i8, ptr %i.ao, i64 8
  %.val.i.i.i.i.i.le54 = load ptr, ptr %i.as, align 8, !noalias !3046, !nonnull !5, !noundef !5
  br label %select.unfold.i.i.i.i.i._crit_edge

select.unfold.i.i.i.i.i._crit_edge:               ; preds = %select.unfold.i.i.i.i.i._crit_edge.loopexit, %select.unfold.i.i.i.i.i.preheader
  %.lcssa14 = phi ptr [ %i.ak, %select.unfold.i.i.i.i.i.preheader ], [ %i.ap, %select.unfold.i.i.i.i.i._crit_edge.loopexit ]
  %.lcssa = phi ptr [ %i.aj, %select.unfold.i.i.i.i.i.preheader ], [ %.val.i.i.i.i.i.le54, %select.unfold.i.i.i.i.i._crit_edge.loopexit ]
  %.not.i7.i.i.i.i.i = icmp eq ptr %spec.select.i9.i.i.i16.i.i, null
  %i.at = icmp eq ptr %spec.select.i9.i.i.i16.i.i, %.sroa.9.0.copyload
  %i.au = getelementptr inbounds nuw i8, ptr %spec.select.i9.i.i.i16.i.i, i64 32
  %or.cond33.i.i = select i1 %.not.i7.i.i.i.i.i, i1 true, i1 %i.at
  br i1 %or.cond33.i.i, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtBU_8OsStringENvMBU_B3U_9as_os_strEE11spec_extendCs41JD7yXDh97_6uu_env.exit, label %.loopexit.i.i

.loopexit.loopexit.i.i.loopexit:                  ; preds = %.lr.ph
  %i.av = getelementptr i8, ptr %i.ao, i64 8
  %.val.i.i.i.i.i.le = load ptr, ptr %i.av, align 8, !noalias !3046, !nonnull !5, !noundef !5 ; 2 uses
  %.idx.i.le = shl nuw nsw i64 %.val4.i.i.i.i.i, 5
  %i.aw = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.le, i64 %.idx.i.le
  br label %.loopexit.loopexit.i.i

.loopexit.loopexit.i.i:                           ; preds = %.loopexit.loopexit.i.i.loopexit, %bb.f
  %.lcssa3.i = phi ptr [ %i.aj, %bb.f ], [ %i.aw, %.loopexit.loopexit.i.i.loopexit ]
  %.lcssa.i = phi ptr [ %i.ak, %bb.f ], [ %i.ap, %.loopexit.loopexit.i.i.loopexit ]
  %.val.i.i.i10.i.lcssa.i = phi ptr [ %.val.i.i.i11.i.i, %bb.f ], [ %.val.i.i.i.i.i.le, %.loopexit.loopexit.i.i.loopexit ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.val.i.i.i10.i.lcssa.i, i64 32
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.loopexit.loopexit.i.i, %select.unfold.i.i.i.i.i._crit_edge
  %i.ay = phi ptr [ %.lcssa, %select.unfold.i.i.i.i.i._crit_edge ], [ %.lcssa3.i, %.loopexit.loopexit.i.i ]
  %i.az = phi ptr [ %.lcssa14, %select.unfold.i.i.i.i.i._crit_edge ], [ %.lcssa.i, %.loopexit.loopexit.i.i ]
  %spec.select.i9.i.i.i15.i.i = phi ptr [ %i.au, %select.unfold.i.i.i.i.i._crit_edge ], [ %spec.select.i9.i.i.i16.i.i, %.loopexit.loopexit.i.i ]
  %.val.i.i.i8.i.i = phi ptr [ null, %select.unfold.i.i.i.i.i._crit_edge ], [ %i.ax, %.loopexit.loopexit.i.i ]
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %spec.select.i9.i.i.i16.i.i, %select.unfold.i.i.i.i.i._crit_edge ], [ %.val.i.i.i10.i.lcssa.i, %.loopexit.loopexit.i.i ]
  %i.ba = tail call noundef nonnull align 8 ptr %i.t(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.0.i.i.i.i.i) #26, !noalias !3047, !inline_history !3033 ; 2 uses
  %i.bb = add i64 %i.ai, -1                       ; 2 uses
  %i.bc = getelementptr i8, ptr %i.ba, i64 8
  %.val.i.i.i6 = load ptr, ptr %i.bc, align 8, !noalias !3048, !nonnull !5, !noundef !5
  %i.bd = getelementptr i8, ptr %i.ba, i64 16
  %.val3.i.i.i = load i64, ptr %i.bd, align 8, !noalias !3048, !noundef !5
  %i.be = icmp samesign ult i64 %i.ah, 576460752303423488
  tail call void @llvm.assume(i1 %i.be)
  %i.bf = load i64, ptr %i.a, align 8, !range !6, !alias.scope !3049, !noundef !5
  %i.bg = icmp eq i64 %i.ah, %i.bf
  br i1 %i.bg, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrE7reserveCs41JD7yXDh97_6uu_env.exit.i.i, label %bb.g

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrE7reserveCs41JD7yXDh97_6uu_env.exit.i.i: ; preds = %.loopexit.i.i
  %i.bh = tail call i64 @llvm.uadd.sat.i64(i64 %i.bb, i64 1)
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs41JD7yXDh97_6uu_env(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.ah, i64 noundef range(i64 1, 0) %i.bh, i64 noundef 8, i64 noundef 16) #26, !noalias !3050
  %.pre = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !3049
  br label %bb.g

bb.g:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrE7reserveCs41JD7yXDh97_6uu_env.exit.i.i, %.loopexit.i.i
  %i.bi = phi ptr [ %.pre, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrE7reserveCs41JD7yXDh97_6uu_env.exit.i.i ], [ %i.ag, %.loopexit.i.i ] ; 2 uses
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %i.bi, i64 %i.ah ; 2 uses
  store ptr %.val.i.i.i6, ptr %i.bj, align 8, !noalias !3051, !captures !19
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store i64 %.val3.i.i.i, ptr %i.bk, align 8, !noalias !3051
  %i.bl = add nuw nsw i64 %i.ah, 1                ; 2 uses
  store i64 %i.bl, ptr %.sroa.64.0..sroa_idx, align 8, !alias.scope !3049
  br label %bb.f

_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtBU_8OsStringENvMBU_B3U_9as_os_strEE11spec_extendCs41JD7yXDh97_6uu_env.exit: ; preds = %select.unfold.i.i.i.i.i._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  br label %bb.i

bb.h:                                             ; preds = %bb.d, %.sink.split.i8.i.i.i
  store i64 0, ptr %0, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.bn, align 8
  br label %bb.i

bb.i:                                             ; preds = %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtBU_8OsStringENvMBU_B3U_9as_os_strEE11spec_extendCs41JD7yXDh97_6uu_env.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXNvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtINtB2_7AdapterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockENtNtB8_3fmt5Write9write_strCs41JD7yXDh97_6uu_env(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !align !7, !noundef !5
  %i.c = tail call noundef ptr @_RNvXss_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_10StderrLockNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) #26 ; 2 uses
  %.not = icmp ne ptr %i.c, null                  ; 2 uses
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val = load ptr, ptr %i.d, align 8, !noundef !5 ; 4 uses
  %i.e = icmp eq ptr %.val, null
  br i1 %i.e, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs41JD7yXDh97_6uu_env.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = ptrtoint ptr %.val to i64                ; 2 uses
  %i.g = and i64 %i.f, 3
  switch i64 %i.g, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs41JD7yXDh97_6uu_env.exit.i
    i64 3, label %bb.d
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs41JD7yXDh97_6uu_env.exit.i
    i64 1, label %bb.e
  ], !prof !11

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.h = icmp ult ptr %.val, inttoptr (i64 188978561024 to ptr)
  %i.i = and i64 %i.f, 1095216660480
  %i.j = icmp ne i64 %i.i, 1095216660480
  tail call void @llvm.assume(i1 %i.h)
  tail call void @llvm.assume(i1 %i.j)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs41JD7yXDh97_6uu_env.exit.i

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %.val, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !alias.scope !3054
  store i8 3, ptr %i.a, align 8, !alias.scope !3054
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l) #26
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs41JD7yXDh97_6uu_env.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs41JD7yXDh97_6uu_env.exit.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs41JD7yXDh97_6uu_env.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs41JD7yXDh97_6uu_env.exit: ; preds = %bb.b, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs41JD7yXDh97_6uu_env.exit.i
  store ptr %i.c, ptr %i.d, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs41JD7yXDh97_6uu_env.exit
  ret i1 %.not
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RNvXs1K_NtCs7tKScEop1B6_5alloc6stringlNtB6_12SpecToString14spec_to_string(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, i32 %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 12 uses
  %i.b = alloca [10 x i8], align 1                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = icmp slt i32 %.0.val, 0
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !5
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef dereferenceable_or_null(10) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 10, i64 noundef range(i64 1, 9) 1) #26, !noalias !3063 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs41JD7yXDh97_6uu_env.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 10) #30
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs41JD7yXDh97_6uu_env.exit: ; preds = %bb.b
  store i64 10, ptr %i.a, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.d, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %.sroa.511.0..sroa_idx, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.f = tail call noundef dereferenceable_or_null(11) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 11, i64 noundef range(i64 1, 9) 1) #26, !noalias !3064 ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.e, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs41JD7yXDh97_6uu_env.exit13

bb.e:                                             ; preds = %bb.d
end_hunk_0
