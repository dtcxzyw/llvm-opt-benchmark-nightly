Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_ty-548eb6ecf0a49818.hir_ty.65d5e02866c8e496-cgu.06?download=true
inline.NumInlined: 6037
inline.NumDeleted: 2216
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvMs6_NtNtCs8K4cjrcxBsw_6hir_ty17method_resolution5probeINtB5_12ProbeContextNtB5_14ProbeAllChoiceE13xform_self_tyB9_:bb.a
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef align 8 dereferenceable(40) %i.ae) #35
          to label %common.resume unwind label %bb.bv
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs6_NtNtCs8K4cjrcxBsw_6hir_ty17method_resolution5probeINtB5_12ProbeContextNtB5_14ProbeAllChoiceE19consider_candidatesB9_(ptr noundef nonnull align 8 %0, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 288230376151711744) %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %4, i64 noundef range(i64 0, 192153584101141163) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [56 x i8], align 8                ; 10 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [8 x i8], align 8                 ; 2 uses
  %i.i = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.i, align 8
  store ptr null, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.j = getelementptr inbounds nuw [48 x i8], ptr %4, i64 %5
  store ptr %4, ptr %i.f, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.j, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.h, ptr %.sroa.5.0..sroa_idx, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %0, ptr %i.k, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr %i.i, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store ptr %2, ptr %.sroa.53.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store i64 %3, ptr %.sroa.6.0..sroa_idx, align 8
  call void @_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec14spec_from_iterINtB4_3VecRNtNtNtCs8K4cjrcxBsw_6hir_ty17method_resolution5probe9CandidateEINtB2_12SpecFromIterBU_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter6FilterIB2k_INtNtNtB2s_5slice4iter4IterBV_ENCNvMs6_BX_INtBX_12ProbeContextNtBX_14ProbeAllChoiceE19consider_candidates0ENCB3P_s_0EE9from_iterB11_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.l = load atomic i64, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.m = icmp ult i64 %i.l, 2
  br i1 %i.m, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.n = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs6_NtNtCs8K4cjrcxBsw_6hir_ty17method_resolution5probeINtB7_12ProbeContextpE19consider_candidates10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.n, label %bb.c [
    i8 0, label %bb.g
    i8 1, label %bb.d
    i8 2, label %bb.d
  ], !prof !5

bb.c:                                             ; preds = %bb.b
  %i.o = invoke noundef i8 @_RNvMNtCsaMQbKjKCVRW_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs6_NtNtCs8K4cjrcxBsw_6hir_ty17method_resolution5probeINtB7_12ProbeContextpE19consider_candidates10___CALLSITE)
          to label %bb.e unwind label %bb.k       ; 2 uses

bb.d:                                             ; preds = %bb.b, %bb.b, %bb.e
  %.sroa.010.0 = phi i8 [ %i.o, %bb.e ], [ %i.n, %bb.b ], [ %i.n, %bb.b ]
  %i.p = load ptr, ptr @_RNvNvMs6_NtNtCs8K4cjrcxBsw_6hir_ty17method_resolution5probeINtB7_12ProbeContextpE19consider_candidates10___CALLSITE, align 8, !nonnull !6, !align !7, !noundef !6
  %i.q = invoke noundef zeroext i1 @_RNvNtCsbDqbwph1Irx_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.p, i8 noundef %.sroa.010.0)
          to label %bb.f unwind label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.r = icmp eq i8 %i.o, 0
  br i1 %i.r, label %bb.g, label %bb.d

bb.f:                                             ; preds = %bb.d
  br i1 %i.q, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.b, %bb.a, %bb.i, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @_RNvXs3_NtNtCs8K4cjrcxBsw_6hir_ty17method_resolution5probeNtB5_14ProbeAllChoiceNtB5_11ProbeChoice19consider_candidates(ptr noundef nonnull align 8 %0, ptr nonnull poison, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

bb.h:                                             ; preds = %bb.f
  %i.s = load ptr, ptr @_RNvNvMs6_NtNtCs8K4cjrcxBsw_6hir_ty17method_resolution5probeINtB7_12ProbeContextpE19consider_candidates10___CALLSITE, align 8, !nonnull !6, !align !7, !noundef !6 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.g, ptr %i.c, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXsr_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecRNtNtNtCs8K4cjrcxBsw_6hir_ty17method_resolution5probe9CandidateENtNtCshzWfHUSfYae_4core3fmt5Debug3fmtBM_, ptr %.sroa.419.0..sroa_idx, align 8
  store ptr @324, ptr %i.d, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.c, ptr %i.u, align 8
  store ptr %i.d, ptr %i.e, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @1, ptr %i.v, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %.sroa.012.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %.sroa.012.sroa.4.0..sroa_idx, align 8
  %.sroa.012.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 1, ptr %.sroa.012.sroa.5.0..sroa_idx, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.t, ptr %.sroa.413.0..sroa_idx, align 8
  invoke void @_RNvMNtCsaMQbKjKCVRW_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.g

bb.j:                                             ; preds = %bb.k
  resume { ptr, i32 } %lpad.thr_comm

bb.k:                                             ; preds = %bb.c, %bb.d, %bb.h
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecRNtNtNtCs8K4cjrcxBsw_6hir_ty17method_resolution5probe9CandidateEEB1f_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #35
          to label %bb.j unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #34
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs6_NtNtCs8K4cjrcxBsw_6hir_ty17method_resolution5probeINtB5_12ProbeContextNtB5_18ProbeForNameChoiceE11pick_methodB9_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(112) initializes((0, 8)) %0, ptr noalias nofree noundef nonnull align 8 captures(address, read_provenance) dereferenceable(280) %1, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %3, i64 noundef range(i64 0, 288230376151711744) %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 11 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [112 x i8], align 8               ; 10 uses
  %i.e = alloca [16 x i8], align 8                ; 9 uses
  %i.f = alloca [16 x i8], align 8                ; 9 uses
  %i.g = alloca [16 x i8], align 8                ; 9 uses
  %i.h = alloca [16 x i8], align 8                ; 10 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [8 x i8], align 8                 ; 5 uses
  store ptr %2, ptr %i.l, align 8
  %i.m = load atomic i64, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.n = icmp ult i64 %i.m, 2
  br i1 %i.n, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.o = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs6_NtNtCs8K4cjrcxBsw_6hir_ty17method_resolution5probeINtB7_12ProbeContextpE11pick_method10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.o, label %bb.c [
    i8 0, label %bb.i
    i8 1, label %bb.d
    i8 2, label %bb.d
  ], !prof !5

bb.c:                                             ; preds = %bb.b
  %i.p = tail call noundef i8 @_RNvMNtCsaMQbKjKCVRW_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs6_NtNtCs8K4cjrcxBsw_6hir_ty17method_resolution5probeINtB7_12ProbeContextpE11pick_method10___CALLSITE) #36 ; 2 uses
  %i.q = icmp eq i8 %i.p, 0
  br i1 %i.q, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.b, %bb.c
  %.sroa.06.0 = phi i8 [ %i.p, %bb.c ], [ %i.o, %bb.b ], [ %i.o, %bb.b ]
  %i.r = load ptr, ptr @_RNvNvMs6_NtNtCs8K4cjrcxBsw_6hir_ty17method_resolution5probeINtB7_12ProbeContextpE11pick_method10___CALLSITE, align 8, !nonnull !6, !align !7, !noundef !6
  %i.s = tail call noundef zeroext i1 @_RNvNtCsbDqbwph1Irx_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.r, i8 noundef %.sroa.06.0)
  br i1 %i.s, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.t = load ptr, ptr @_RNvNvMs6_NtNtCs8K4cjrcxBsw_6hir_ty17method_resolution5probeINtB7_12ProbeContextpE11pick_method10___CALLSITE, align 8, !nonnull !6, !align !7, !noundef !6 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.l, ptr %i.i, align 8
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXs0_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver2tyNtB5_2TyNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.431.0..sroa_idx, align 8
  store ptr @311, ptr %i.j, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.i, ptr %i.v, align 8
  store ptr %i.j, ptr %i.k, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @1, ptr %i.w, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 1, ptr %i.c, align 8
  %.sroa.08.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.k, ptr %.sroa.08.sroa.4.0..sroa_idx, align 8
  %.sroa.08.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 1, ptr %.sroa.08.sroa.5.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.u, ptr %.sroa.4.0..sroa_idx, align 8
  call void @_RNvMNtCsaMQbKjKCVRW_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.i

_RNvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitTReRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs8K4cjrcxBsw_6hir_ty17method_resolution5probe9CandidateEEEE4nextB2B_.exit.thread: ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.x = load ptr, ptr %i.l, align 8, !nonnull !6, !noundef !6
  call void @llvm.experimental.noalias.scope.decl(metadata !10706)
  %i.y = load i64, ptr %1, align 8, !range !4, !alias.scope !10706, !noalias !10707, !noundef !6
  %.not8.i = icmp eq i64 %i.y, 2
  br i1 %.not8.i, label %bb.f, label %_RNvXs1_NtNtCs8K4cjrcxBsw_6hir_ty17method_resolution5probeNtB5_18ProbeForNameChoiceNtB5_11ProbeChoice27consider_private_candidates.exit

.sink.split.i:                                    ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs8K4cjrcxBsw_6hir_ty17method_resolution5probe4PickNtB11_11MethodErrorEEB13_.exit14.i, %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10708
  br label %_RNvXs1_NtNtCs8K4cjrcxBsw_6hir_ty17method_resolution5probeNtB5_18ProbeForNameChoiceNtB5_11ProbeChoice27consider_private_candidates.exit

bb.f:                                             ; preds = %_RNvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitTReRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs8K4cjrcxBsw_6hir_ty17method_resolution5probe9CandidateEEEE4nextB2B_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10708
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !10706, !noalias !10707, !nonnull !6, !noundef !6
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !10706, !noalias !10707, !noundef !6
  call fastcc void @_RNvMs6_NtNtCs8K4cjrcxBsw_6hir_ty17method_resolution5probeINtB5_12ProbeContextNtB5_18ProbeForNameChoiceE19consider_candidatesB9_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(112) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(280) %1, ptr noundef nonnull %i.x, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %3, i64 noundef range(i64 0, 288230376151711744) %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.aa, i64 noundef %i.ac, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) null)
  %i.ad = load i64, ptr %i.a, align 8, !range !4, !noalias !10708, !noundef !6
  switch i64 %i.ad, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs8K4cjrcxBsw_6hir_ty17method_resolution5probe4PickNtB11_11MethodErrorEEB13_.exit14.i [
    i64 0, label %bb.g
    i64 2, label %.sink.split.i
  ]

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %1, ptr noundef nonnull align 8 dereferenceable(104) %i.ae, i64 104, i1 false), !noalias !10707
  br label %.sink.split.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs8K4cjrcxBsw_6hir_ty17method_resolution5probe4PickNtB11_11MethodErrorEEB13_.exit14.i: ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8K4cjrcxBsw_6hir_ty17method_resolution11MethodErrorEBF_(ptr noalias nofree noundef align 8 dereferenceable(104) %i.af)
  br label %.sink.split.i

_RNvXs1_NtNtCs8K4cjrcxBsw_6hir_ty17method_resolution5probeNtB5_18ProbeForNameChoiceNtB5_11ProbeChoice27consider_private_candidates.exit: ; preds = %_RNvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitTReRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs8K4cjrcxBsw_6hir_ty17method_resolution5probe9CandidateEEEE4nextB2B_.exit.thread, %.sink.split.i
  store i64 2, ptr %0, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.o, %_RNvXs1_NtNtCs8K4cjrcxBsw_6hir_ty17method_resolution5probeNtB5_18ProbeForNameChoiceNtB5_11ProbeChoice27consider_private_candidates.exit
  ret void

bb.i:                                             ; preds = %bb.d, %bb.e, %bb.a, %bb.b, %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %.sroa.472.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %.sroa.025.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.sroa.025.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr @312, ptr %i.h, align 8, !captures !28
  store i64 8, ptr %i.ag, align 8
  %i.aj = load atomic i64, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.ak = icmp ult i64 %i.aj, 2
  br i1 %i.ak, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.al = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs6_NtNtCs8K4cjrcxBsw_6hir_ty17method_resolution5probeINtB7_12ProbeContextpE11pick_methods_10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.al, label %bb.k [
    i8 0, label %bb.m
    i8 1, label %bb.l
    i8 2, label %bb.l
  ], !prof !5

bb.k:                                             ; preds = %bb.j
  %i.am = call noundef i8 @_RNvMNtCsaMQbKjKCVRW_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs6_NtNtCs8K4cjrcxBsw_6hir_ty17method_resolution5probeINtB7_12ProbeContextpE11pick_methods_10___CALLSITE) ; 2 uses
  %i.an = icmp eq i8 %i.am, 0
  br i1 %i.an, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.j, %bb.k
  %.sroa.023.0 = phi i8 [ %i.am, %bb.k ], [ %i.al, %bb.j ], [ %i.al, %bb.j ]
  %i.ao = load ptr, ptr @_RNvNvMs6_NtNtCs8K4cjrcxBsw_6hir_ty17method_resolution5probeINtB7_12ProbeContextpE11pick_methods_10___CALLSITE, align 8, !nonnull !6, !align !7, !noundef !6
  %i.ap = call noundef zeroext i1 @_RNvNtCsbDqbwph1Irx_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ao, i8 noundef %.sroa.023.0)
  br i1 %i.ap, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !6, !noundef !6
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.at = load i64, ptr %i.as, align 8, !noundef !6
  %i.au = load ptr, ptr %i.l, align 8, !nonnull !6, !noundef !6
  call fastcc void @_RNvMs6_NtNtCs8K4cjrcxBsw_6hir_ty17method_resolution5probeINtB5_12ProbeContextNtB5_18ProbeForNameChoiceE19consider_candidatesB9_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(112) %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(280) %1, ptr noundef nonnull %i.au, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %3, i64 noundef %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.ar, i64 noundef %i.at, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) %5)
  %i.av = load i64, ptr %i.d, align 8, !range !4, !noundef !6
  %.not81 = icmp eq i64 %i.av, 2
  br i1 %.not81, label %bb.p, label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.aw = load ptr, ptr @_RNvNvMs6_NtNtCs8K4cjrcxBsw_6hir_ty17method_resolution5probeINtB7_12ProbeContextpE11pick_methods_10___CALLSITE, align 8, !nonnull !6, !align !7, !noundef !6 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.h, ptr %i.e, align 8
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtReNtB6_7Display3fmtCs8K4cjrcxBsw_6hir_ty, ptr %.sroa.472.0..sroa_idx, align 8
  store ptr @314, ptr %i.f, align 8
  store ptr %i.e, ptr %i.ah, align 8
  store ptr %i.f, ptr %i.g, align 8
  store ptr @1, ptr %i.ai, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 1, ptr %i.b, align 8
  store ptr %i.g, ptr %.sroa.025.sroa.4.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.025.sroa.5.0..sroa_idx, align 8
  store ptr %i.ax, ptr %.sroa.426.0..sroa_idx, align 8
  call void @_RNvMNtCsaMQbKjKCVRW_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.aw, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.m

bb.o:                                             ; preds = %bb.u, %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.d, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.h

bb.p:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr @313, ptr %i.h, align 8, !captures !28
  store i64 9, ptr %i.ag, align 8
  %i.ay = load atomic i64, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.az = icmp ult i64 %i.ay, 2
  br i1 %i.az, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.ba = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs6_NtNtCs8K4cjrcxBsw_6hir_ty17method_resolution5probeINtB7_12ProbeContextpE11pick_methods_10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.ba, label %bb.r [
    i8 0, label %bb.u
    i8 1, label %bb.s
    i8 2, label %bb.s
  ], !prof !5

bb.r:                                             ; preds = %bb.q
  %i.bb = call noundef i8 @_RNvMNtCsaMQbKjKCVRW_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs6_NtNtCs8K4cjrcxBsw_6hir_ty17method_resolution5probeINtB7_12ProbeContextpE11pick_methods_10___CALLSITE) ; 2 uses
  %i.bc = icmp eq i8 %i.bb, 0
  br i1 %i.bc, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r, %bb.q
  %.sroa.023.0.1 = phi i8 [ %i.bb, %bb.r ], [ %i.ba, %bb.q ], [ %i.ba, %bb.q ]
  %i.bd = load ptr, ptr @_RNvNvMs6_NtNtCs8K4cjrcxBsw_6hir_ty17method_resolution5probeINtB7_12ProbeContextpE11pick_methods_10___CALLSITE, align 8, !nonnull !6, !align !7, !noundef !6
  %i.be = call noundef zeroext i1 @_RNvNtCsbDqbwph1Irx_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bd, i8 noundef %.sroa.023.0.1)
  br i1 %i.be, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bf = load ptr, ptr @_RNvNvMs6_NtNtCs8K4cjrcxBsw_6hir_ty17method_resolution5probeINtB7_12ProbeContextpE11pick_methods_10___CALLSITE, align 8, !nonnull !6, !align !7, !noundef !6 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.h, ptr %i.e, align 8
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtReNtB6_7Display3fmtCs8K4cjrcxBsw_6hir_ty, ptr %.sroa.472.0..sroa_idx, align 8
  store ptr @314, ptr %i.f, align 8
  store ptr %i.e, ptr %i.ah, align 8
  store ptr %i.f, ptr %i.g, align 8
  store ptr @1, ptr %i.ai, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 1, ptr %i.b, align 8
  store ptr %i.g, ptr %.sroa.025.sroa.4.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.025.sroa.5.0..sroa_idx, align 8
  store ptr %i.bg, ptr %.sroa.426.0..sroa_idx, align 8
  call void @_RNvMNtCsaMQbKjKCVRW_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bf, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r, %bb.q, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.bi = load ptr, ptr %i.bh, align 8, !nonnull !6, !noundef !6
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.bk = load i64, ptr %i.bj, align 8, !noundef !6
  %i.bl = load ptr, ptr %i.l, align 8, !nonnull !6, !noundef !6
  call fastcc void @_RNvMs6_NtNtCs8K4cjrcxBsw_6hir_ty17method_resolution5probeINtB5_12ProbeContextNtB5_18ProbeForNameChoiceE19consider_candidatesB9_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(112) %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(280) %1, ptr noundef nonnull %i.bl, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %3, i64 noundef %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.bi, i64 noundef %i.bk, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) %5)
  %i.bm = load i64, ptr %i.d, align 8, !range !4, !noundef !6
  %.not81.1 = icmp eq i64 %i.bm, 2
  br i1 %.not81.1, label %_RNvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitTReRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs8K4cjrcxBsw_6hir_ty17method_resolution5probe9CandidateEEEE4nextB2B_.exit.thread, label %bb.o
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, ptr } @_RNvMs6_NtNtCs8K4cjrcxBsw_6hir_ty17method_resolution5probeINtB5_12ProbeContextNtB5_18ProbeForNameChoiceE13xform_self_tyB9_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(280) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dead_on_return dereferenceable(12) %1, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %3, i64 noundef range(i64 0, 1152921504606846976) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [16 x i8], align 4                ; 5 uses
  %i.h = alloca [32 x i8], align 8                ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 5 uses
  %i.k = alloca [12 x i8], align 4                ; 5 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [32 x i8], align 8                ; 7 uses
  %i.o = alloca [12 x i8], align 4                ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [40 x i8], align 8                ; 6 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [8 x i8], align 8                 ; 4 uses
  %i.t = alloca [32 x i8], align 8                ; 7 uses
  %i.u = alloca [32 x i8], align 8                ; 7 uses
  %i.v = alloca [40 x i8], align 8                ; 17 uses
  %i.w = alloca [16 x i8], align 8                ; 8 uses
  %i.x = alloca [8 x i8], align 8                 ; 7 uses
  %i.y = alloca [40 x i8], align 8                ; 4 uses
  %i.z = alloca [8 x i8], align 8                 ; 4 uses
  %i.aa = alloca [8 x i8], align 8                ; 4 uses
  %i.ab = alloca [8 x i8], align 8                ; 4 uses
  %i.ac = alloca [48 x i8], align 8               ; 9 uses
  %i.ad = alloca [32 x i8], align 8               ; 7 uses
  %i.ae = alloca [40 x i8], align 8               ; 17 uses
  %i.af = alloca [16 x i8], align 8               ; 4 uses
  %i.ag = alloca [8 x i8], align 8                ; 3 uses
  store ptr %2, ptr %i.ag, align 8
  store ptr %3, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  store i64 %4, ptr %i.ah, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  %i.ai = load atomic i64, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.aj = icmp ult i64 %i.ai, 2
  br i1 %i.aj, label %bb.d, label %bb.c

bb.b:                                             ; preds = %bb.ba, %bb.w, %bb.v, %bb.u, %bb.bj, %bb.bi, %bb.bg, %bb.n, %bb.k, %bb.h, %bb.g
  %.sroa.015.0 = phi i8 [ %.sroa.013.1, %bb.bi ], [ %.sroa.013.1, %bb.bj ], [ %.sroa.013.1, %bb.bg ], [ %.sroa.013.1, %bb.ba ], [ 0, %bb.g ], [ 1, %bb.n ], [ 0, %bb.k ], [ 0, %bb.h ], [ %.sroa.013.1, %bb.u ], [ %.sroa.013.1, %bb.v ], [ %.sroa.013.1, %bb.w ]
end_hunk_0
begin_hunk_1_@_RNvXs1_NtNtCs8K4cjrcxBsw_6hir_ty17method_resolution5probeNtB5_18ProbeForNameChoiceNtB5_11ProbeChoice19consider_candidates:bb.a

bb.au:                                            ; preds = %bb.at
  %i.fx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #34, !noalias !11810
  unreachable

bb.av:                                            ; preds = %bb.ba
  %i.fy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false), !noalias !11803
  br label %.body39.i

bb.aw:                                            ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11810
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !11812
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11810
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !11803
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !11803
  store i32 %.sroa.03.1.ph79.i, ptr %i.j, align 4, !noalias !11803
  store i32 %.sroa.5.1.ph78.i, ptr %i.eq, align 4, !noalias !11803
  %i.fz = invoke noundef zeroext i1 @_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_id14TraitIdWrapperuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12contains_keyBO_EBU_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.m, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.j)
          to label %bb.ax unwind label %bb.bc, !noalias !11803

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !11803
  br i1 %i.fz, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ga = load i64, ptr %i.em, align 8, !alias.scope !11813, !noalias !11814, !noundef !6 ; 3 uses
  %i.gb = load i64, ptr %i.r, align 8, !range !16, !alias.scope !11813, !noalias !11814, !noundef !6
  %i.gc = icmp eq i64 %i.ga, %i.gb
  br i1 %i.gc, label %bb.az, label %bb.bb

bb.az:                                            ; preds = %bb.ay
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecRNtNtNtCs8K4cjrcxBsw_6hir_ty17method_resolution5probe9CandidateE8grow_oneBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r) #36
          to label %bb.bb unwind label %bb.bc, !noalias !11803

bb.ba:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false), !noalias !11803
  invoke void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_id14TraitIdWrapperuEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBV_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set7HashSetNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_id14TraitIdWrapperNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB1C_.exit43.i unwind label %bb.av, !noalias !11803

bb.bb:                                            ; preds = %bb.az, %bb.ay
  %i.gd = load ptr, ptr %i.el, align 8, !alias.scope !11813, !noalias !11814, !nonnull !6, !noundef !6
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %i.ga
  store ptr %i.fi, ptr %i.ge, align 8, !noalias !11814, !captures !28
  %i.gf = add i64 %i.ga, 1
  store i64 %i.gf, ptr %i.em, align 8, !alias.scope !11813, !noalias !11814
  invoke void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_id14TraitIdWrapperuEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBV_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.m)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set7HashSetNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_id14TraitIdWrapperNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB1C_.exit45.i unwind label %bb.ah, !noalias !11803

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set7HashSetNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_id14TraitIdWrapperNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB1C_.exit45.i: ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !11803
  %i.gg = load ptr, ptr %.sroa.7.0..sroa_idx.i27, align 8, !alias.scope !11815, !noalias !11803, !nonnull !6, !noundef !6
  %i.gh = load ptr, ptr %.sroa.510.0..sroa_idx.i, align 8, !alias.scope !11815, !noalias !11803, !nonnull !6, !noundef !6 ; 2 uses
  %i.gi = icmp eq ptr %i.gh, %i.gg
  br i1 %i.gi, label %.outer._crit_edge.i, label %bb.am

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set7HashSetNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_id14TraitIdWrapperNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB1C_.exit43.i: ; preds = %bb.ba
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false), !noalias !11803
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !11803
  br label %.outer.i

.outer.i:                                         ; preds = %bb.aq, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set7HashSetNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_id14TraitIdWrapperNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB1C_.exit43.i
  %.sroa.5.2.i = phi i32 [ %i.fs, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set7HashSetNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_id14TraitIdWrapperNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB1C_.exit43.i ], [ %.sroa.5.1.ph78.i, %bb.aq ] ; 2 uses
  %.sroa.03.2.i = phi i32 [ %i.fr, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set7HashSetNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_id14TraitIdWrapperNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB1C_.exit43.i ], [ %.sroa.03.1.ph79.i, %bb.aq ] ; 2 uses
  %.sroa.0.2.i = phi ptr [ %i.fi, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set7HashSetNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_id14TraitIdWrapperNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB1C_.exit43.i ], [ %.sroa.0.1.ph80.i, %bb.aq ] ; 2 uses
  %i.gj = load ptr, ptr %.sroa.7.0..sroa_idx.i27, align 8, !alias.scope !11816, !noalias !11803, !nonnull !6, !noundef !6
  %i.gk = load ptr, ptr %.sroa.510.0..sroa_idx.i, align 8, !alias.scope !11816, !noalias !11803, !nonnull !6, !noundef !6 ; 2 uses
  %i.gl = icmp eq ptr %i.gk, %i.gj
  br i1 %i.gl, label %.outer._crit_edge.i, label %.lr.ph.i

bb.bc:                                            ; preds = %bb.az, %bb.aw
  %i.gm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_id14TraitIdWrapperuEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBV_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.m)
          to label %.body39.i unwind label %bb.bd, !noalias !11803

bb.bd:                                            ; preds = %bb.bj, %bb.bc, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterRNtNtNtCs8K4cjrcxBsw_6hir_ty17method_resolution5probe9CandidateEEB1w_.exit.i, %.body39.i, %.body50.i
  %i.gn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #34, !noalias !11802
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterRNtNtNtCs8K4cjrcxBsw_6hir_ty17method_resolution5probe9CandidateEEB1w_.exit38.i: ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !11803
  br label %.loopexit

bb.be:                                            ; preds = %bb.ak
  %i.go = landingpad { ptr, i32 }
          cleanup
  br label %.body50.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecRNtNtNtCs8K4cjrcxBsw_6hir_ty17method_resolution5probe9CandidateEEB1f_.exit.i: ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !11803
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !11803
  invoke void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_id14TraitIdWrapperuEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBV_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %.noexc35 unwind label %.loopexit.split-lp

.noexc35:                                         ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecRNtNtNtCs8K4cjrcxBsw_6hir_ty17method_resolution5probe9CandidateEEB1f_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !11803
  br label %bb.bm

bb.bf:                                            ; preds = %._crit_edge90.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !11803
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.1558, ptr noundef nonnull align 4 dereferenceable(12) %i.h, i64 12, i1 false), !noalias !11801
  %.sroa.951.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.951, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.951.16..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !11801
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !11803
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecRNtNtNtCs8K4cjrcxBsw_6hir_ty17method_resolution5probe9CandidateENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %bb.bh unwind label %bb.bg, !noalias !11802

bb.bg:                                            ; preds = %bb.bf
  %i.gp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecRNtNtNtCs8K4cjrcxBsw_6hir_ty17method_resolution5probe9CandidateENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %.body50.i unwind label %bb.bi, !noalias !11802

bb.bh:                                            ; preds = %bb.bf
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecRNtNtNtCs8K4cjrcxBsw_6hir_ty17method_resolution5probe9CandidateENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecRNtNtNtCs8K4cjrcxBsw_6hir_ty17method_resolution5probe9CandidateEEB1f_.exit52.i unwind label %bb.ae, !noalias !11802

bb.bi:                                            ; preds = %bb.bg
  %i.gq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #34, !noalias !11802
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecRNtNtNtCs8K4cjrcxBsw_6hir_ty17method_resolution5probe9CandidateEEB1f_.exit52.i: ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !11803
  invoke void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_id14TraitIdWrapperuEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBV_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %bb.bl unwind label %.loopexit.split-lp

bb.bj:                                            ; preds = %._crit_edge90.i
  %i.gr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecRNtNtNtCs8K4cjrcxBsw_6hir_ty17method_resolution5probe9CandidateEEB1f_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.s) #35
          to label %.body50.i unwind label %bb.bd, !noalias !11802

bb.bk:                                            ; preds = %bb.ag
  unreachable

bb.bl:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecRNtNtNtCs8K4cjrcxBsw_6hir_ty17method_resolution5probe9CandidateEEB1f_.exit52.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !11803
  %.sroa.42.sroa.4.0..sroa.42.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.42.sroa.4.0..sroa.42.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.951, i64 32, i1 false)
  %.sroa.42.sroa.11.0..sroa.42.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.42.sroa.11.0..sroa.42.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.1558, i64 12, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %.sroa.42.sroa.5.0..sroa.42.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 2, ptr %.sroa.42.sroa.5.0..sroa.42.0..sroa_idx.sroa_idx, align 8
  %.sroa.42.sroa.6.0..sroa.42.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %.sroa.03.1.ph.lcssa31.i, ptr %.sroa.42.sroa.6.0..sroa.42.0..sroa_idx.sroa_idx, align 4
  %.sroa.42.sroa.7.0..sroa.42.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %.sroa.5.1.ph.lcssa36.i, ptr %.sroa.42.sroa.7.0..sroa.42.0..sroa_idx.sroa_idx, align 8
  %.sroa.42.sroa.9.0..sroa.42.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %2, ptr %.sroa.42.sroa.9.0..sroa.42.0..sroa_idx.sroa_idx, align 8
  %.sroa.42.sroa.10.0..sroa.42.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 0, ptr %.sroa.42.sroa.10.0..sroa.42.0..sroa_idx.sroa_idx, align 8
  %.sroa.42.sroa.12.0..sroa.42.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i8 -1, ptr %.sroa.42.sroa.12.0..sroa.42.0..sroa_idx.sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.951)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1558)
  br label %bb.h

bb.bm:                                            ; preds = %.noexc35, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.951)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1558)
  %.pre = load i64, ptr %i.ag, align 8
  br label %bb.y

bb.bn:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %.sroa.44.sroa.4.0..sroa.44.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.44.sroa.4.0..sroa.44.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false)
  store i64 1, ptr %0, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 3, ptr %.sroa.44.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  br label %bb.h

bb.bo:                                            ; preds = %.body
  %i.gs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #34
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1_NtNtCs8K4cjrcxBsw_6hir_ty17method_resolution5probeNtB5_18ProbeForNameChoiceNtB5_11ProbeChoice27consider_private_candidates(ptr noalias nofree noundef align 8 captures(address, read_provenance) dereferenceable(280) %0, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 288230376151711744) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 6 uses
  %i.b = load i64, ptr %0, align 8, !range !4, !noundef !6
  %.not8 = icmp eq i64 %i.b, 2
  br i1 %.not8, label %bb.c, label %bb.b

.sink.split:                                      ; preds = %bb.c, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs8K4cjrcxBsw_6hir_ty17method_resolution5probe4PickNtB11_11MethodErrorEEB13_.exit14, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b

bb.b:                                             ; preds = %.sink.split, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.f = load i64, ptr %i.e, align 8, !noundef !6
  call fastcc void @_RNvMs6_NtNtCs8K4cjrcxBsw_6hir_ty17method_resolution5probeINtB5_12ProbeContextNtB5_18ProbeForNameChoiceE19consider_candidatesB9_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(112) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(280) %0, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.d, i64 noundef %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) null)
  %i.g = load i64, ptr %i.a, align 8, !range !4, !noundef !6
  switch i64 %i.g, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs8K4cjrcxBsw_6hir_ty17method_resolution5probe4PickNtB11_11MethodErrorEEB13_.exit14 [
    i64 0, label %bb.d
    i64 2, label %.sink.split
  ]

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %i.h, i64 104, i1 false)
  br label %.sink.split

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs8K4cjrcxBsw_6hir_ty17method_resolution5probe4PickNtB11_11MethodErrorEEB13_.exit14: ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8K4cjrcxBsw_6hir_ty17method_resolution11MethodErrorEBF_(ptr noalias nofree noundef align 8 dereferenceable(104) %i.i)
  br label %.sink.split
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1_NtNtCs8K4cjrcxBsw_6hir_ty17method_resolution5probeNtB5_18ProbeForNameChoiceNtB5_11ProbeChoice31check_by_value_method_shadowing(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 dereferenceable(280) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(120) %3, ptr noundef nonnull %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %5, i64 noundef range(i64 0, 288230376151711744) %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 10 uses
  %i.b = load i64, ptr %2, align 8, !range !11, !noundef !6
  %i.c = trunc nuw i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.g, %bb.a
  store i64 2, ptr %0, align 8
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.f = load i32, ptr %i.e, align 8, !range !44, !noundef !6
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 104
  %.val = load i64, ptr %i.h, align 8             ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 114
  %.val27 = load i8, ptr %i.i, align 2            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvMs5_NtNtCs8K4cjrcxBsw_6hir_ty17method_resolution5probeINtB5_12ProbeContextNtB5_18ProbeForNameChoiceE34check_for_shadowed_autorefd_method(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %i.a, ptr noalias nofree noundef align 8 dereferenceable(280) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.d, i64 %.val, i8 %.val27, ptr noundef nonnull %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %5, i64 noundef %6, i1 noundef zeroext false)
  %i.j = load i64, ptr %i.a, align 8, !range !54, !noundef !6
  %.not26 = icmp eq i64 %i.j, -1
  br i1 %.not26, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.44.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %i.a, i64 104, i1 false)
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvMs5_NtNtCs8K4cjrcxBsw_6hir_ty17method_resolution5probeINtB5_12ProbeContextNtB5_18ProbeForNameChoiceE34check_for_shadowed_autorefd_method(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %i.a, ptr noalias nofree noundef align 8 dereferenceable(280) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.d, i64 %.val, i8 %.val27, ptr noundef nonnull %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %5, i64 noundef %6, i1 noundef zeroext true)
  %i.k = load i64, ptr %i.a, align 8, !range !54, !noundef !6
  %.not26.1 = icmp eq i64 %i.k, -1
  br i1 %.not26.1, label %bb.g, label %bb.e

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b

bb.h:                                             ; preds = %bb.e, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1_NtNtCs8K4cjrcxBsw_6hir_ty17method_resolution5probeNtB5_18ProbeForNameChoiceNtB5_11ProbeChoice32check_autorefed_method_shadowing(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 dereferenceable(280) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(120) %3, ptr noundef nonnull %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %5, i64 noundef range(i64 0, 288230376151711744) %6) unnamed_addr #0 {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 6 uses
  %i.b = load i64, ptr %2, align 8, !range !11, !noundef !6
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.e = load i32, ptr %i.d, align 8, !range !44
  %i.f = icmp ne i32 %i.e, 0
  %or.cond.not = select i1 %i.c, i1 true, i1 %i.f
  br i1 %or.cond.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 104
  %.val = load i64, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 114
  %.val5 = load i8, ptr %i.i, align 2
  call fastcc void @_RNvMs5_NtNtCs8K4cjrcxBsw_6hir_ty17method_resolution5probeINtB5_12ProbeContextNtB5_18ProbeForNameChoiceE34check_for_shadowed_autorefd_method(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %i.a, ptr noalias nofree noundef align 8 dereferenceable(280) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.g, i64 %.val, i8 %.val5, ptr noundef nonnull %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %5, i64 noundef %6, i1 noundef zeroext true)
  %i.j = load i64, ptr %i.a, align 8, !range !54, !noundef !6
  %.not = icmp eq i64 %i.j, -1
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %i.a, i64 104, i1 false)
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.e:                                             ; preds = %bb.f, %bb.c
  ret void

bb.f:                                             ; preds = %bb.d, %bb.a
  store i64 2, ptr %0, align 8
  br label %bb.e
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1_NtNtCs8K4cjrcxBsw_6hir_ty17method_resolution5probeNtB5_18ProbeForNameChoiceNtB5_11ProbeChoice6choose(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(280) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [112 x i8], align 8               ; 8 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 4 uses
  %i.h = alloca [112 x i8], align 8               ; 9 uses
  %i.i = alloca [32 x i8], align 8                ; 5 uses
  %i.j = alloca [104 x i8], align 8               ; 9 uses
  %i.k = alloca [32 x i8], align 8                ; 4 uses
  %i.l = alloca [112 x i8], align 8               ; 9 uses
  %i.m = alloca [32 x i8], align 8                ; 5 uses
  %i.n = alloca [104 x i8], align 8               ; 15 uses
  %i.o = alloca [112 x i8], align 8               ; 11 uses
  %i.p = alloca [16 x i8], align 8                ; 4 uses
  %i.q = alloca [112 x i8], align 8               ; 12 uses
  %i.r = alloca [112 x i8], align 8               ; 14 uses
  %i.s = alloca [8 x i8], align 8                 ; 4 uses
  %i.t = alloca [40 x i8], align 8                ; 6 uses
  %i.u = alloca [24 x i8], align 8                ; 11 uses
  %i.v = alloca [32 x i8], align 8                ; 7 uses
  %i.w = alloca [16 x i8], align 8                ; 5 uses
  %i.x = alloca [16 x i8], align 8                ; 5 uses
  %i.y = alloca [16 x i8], align 8                ; 5 uses
  %i.z = alloca [8 x i8], align 8                 ; 7 uses
  %i.aa = alloca [8 x i8], align 8                ; 9 uses
  %.sroa.17.i.i.i.i.i = alloca [80 x i8], align 8 ; 11 uses
  %.sroa.25.i.i.i.i.i = alloca [12 x i8], align 8 ; 11 uses
  %i.ab = alloca [16 x i8], align 8               ; 5 uses
  %i.ac = alloca [16 x i8], align 8               ; 5 uses
  %i.ad = alloca [32 x i8], align 8               ; 7 uses
  %i.ae = alloca [40 x i8], align 8               ; 6 uses
  %i.af = alloca [32 x i8], align 8               ; 7 uses
  %i.ag = alloca [40 x i8], align 8               ; 25 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11921)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11922)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !11923
  %i.ah = load atomic i64, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !11923
  %i.ai = icmp ult i64 %i.ah, 2
  br i1 %i.ai, label %bb.bh, label %bb.b

.loopexit.i:                                      ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter15filter_try_foldRNtNtNtCs8K4cjrcxBsw_6hir_ty17method_resolution5probe13CandidateStepuINtNtNtBa_3ops12control_flow11ControlFlowINtNtBa_6result6ResultNtB18_4PickNtB1a_11MethodErrorEENCNvMs6_B18_INtB18_12ProbeContextNtB18_18ProbeForNameChoiceE15pick_all_method0NCIB2_B15_uB2c_NCB3L_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator12try_for_each4callB15_B2c_NCB3L_s0_0E0E0E0B1c_.exit.i.i.i.i.i, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.i:                             ; preds = %bb.ca, %bb.bw, %bb.bv, %bb.br, %bb.bo, %bb.bl, %bb.bk, %bb.k
  %.sroa.033.0.ph.i = phi i8 [ 0, %bb.bo ], [ 1, %bb.br ], [ %.sroa.030.1.i, %bb.k ], [ 0, %bb.bk ], [ 0, %bb.bl ], [ %.sroa.030.1.i, %bb.bv ], [ %.sroa.030.1.i, %bb.bw ], [ %.sroa.030.1.i, %bb.ca ]
  %.sroa.030.0.ph.i = phi i8 [ 0, %bb.bo ], [ 0, %bb.br ], [ %.sroa.030.1.i, %bb.k ], [ 0, %bb.bk ], [ 0, %bb.bl ], [ %.sroa.030.1.i, %bb.bv ], [ %.sroa.030.1.i, %bb.bw ], [ %.sroa.030.1.i, %bb.ca ]
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.bf, %bb.af, %.body.i.i.i.i.i.i.i.i.i, %.loopexit.split-lp.i, %.loopexit.i
  %.sroa.033.0.lpad-body.i = phi i8 [ %.sroa.030.1.i, %.body.i.i.i.i.i.i.i.i.i ], [ %.sroa.030.1.i, %bb.bf ], [ %.sroa.030.1.i, %bb.af ], [ %.sroa.030.1.i, %.loopexit.i ], [ %.sroa.033.0.ph.i, %.loopexit.split-lp.i ]
  %.sroa.030.0.lpad-body.i = phi i8 [ %.sroa.030.1.i, %.body.i.i.i.i.i.i.i.i.i ], [ %.sroa.030.1.i, %bb.bf ], [ %.sroa.030.1.i, %bb.af ], [ %.sroa.030.1.i, %.loopexit.i ], [ %.sroa.030.0.ph.i, %.loopexit.split-lp.i ]
  %eh.lpad-body.i = phi { ptr, i32 } [ %.pn.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i.i ], [ %i.fh, %bb.bf ], [ %i.dj, %bb.af ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  %i.aj = trunc nuw i8 %.sroa.030.0.lpad-body.i to i1
  %i.ak = load i64, ptr %i.ag, align 8, !range !4, !noalias !11923
  %.not.i.i154.i = icmp ne i64 %i.ak, 2
  %or.cond175.not.i = select i1 %i.aj, i1 %.not.i.i154.i, i1 false
  br i1 %or.cond175.not.i, label %bb.en, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span7EnteredECs8K4cjrcxBsw_6hir_ty.exit156.i

bb.b:                                             ; preds = %bb.br, %bb.bp, %bb.a
  %.sroa.030.1.i = phi i8 [ 0, %bb.a ], [ 1, %bb.br ], [ 1, %bb.bp ] ; 18 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11924)
  call void @llvm.experimental.noalias.scope.decl(metadata !11925)
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !11926, !noalias !11927, !nonnull !6, !align !7, !noundef !6 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !11926, !noalias !11927, !noundef !6 ; 2 uses
  %.idx.i.i.i = mul nuw nsw i64 %i.ao, 120
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 %.idx.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !11928)
  %i.aq = icmp eq i64 %i.ao, 0
  br i1 %i.aq, label %.loopexit180.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b
  %.sroa.414.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.09.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.09.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.av = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.aw = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 6 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 88
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 96
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 108
end_hunk_1
