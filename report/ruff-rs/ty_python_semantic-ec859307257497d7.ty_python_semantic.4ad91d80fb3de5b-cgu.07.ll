Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_python_semantic-ec859307257497d7.ty_python_semantic.4ad91d80fb3de5b-cgu.07?download=true
inline.NumInlined: 8805
inline.NumDeleted: 4120
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_RNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class10typed_dict25synthesize_typed_dict_pop:bb.a

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !noalias !19478, !nonnull !15, !noundef !15 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.s = load i64, ptr %i.r, align 8, !noalias !19478, !noundef !15
  %i.t = getelementptr inbounds nuw [120 x i8], ptr %i.q, i64 %i.s
  br label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class10typed_dictNtB2_15TypedDictFields4iter.exit

bb.c:                                             ; preds = %bb.a
  %i.u = load ptr, ptr %6, align 8, !noalias !19478, !noundef !15 ; 3 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class10typed_dictNtB2_15TypedDictFields4iter.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.w = load <2 x i64>, ptr %i.v, align 8, !noalias !19478
  br label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class10typed_dictNtB2_15TypedDictFields4iter.exit

_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class10typed_dictNtB2_15TypedDictFields4iter.exit: ; preds = %bb.c, %bb.d, %bb.b
  %.sroa.12.0 = phi ptr [ undef, %bb.b ], [ %i.u, %bb.d ], [ null, %bb.c ]
  %.sroa.10.0 = phi i64 [ undef, %bb.b ], [ 1, %bb.d ], [ 0, %bb.c ]
  %.sroa.7.0 = phi ptr [ %i.t, %bb.b ], [ %i.u, %bb.d ], [ null, %bb.c ]
  %.sroa.5.0 = phi ptr [ %i.q, %bb.b ], [ null, %bb.d ], [ null, %bb.c ]
  %.sroa.0.0 = phi i64 [ 2, %bb.b ], [ 1, %bb.d ], [ 0, %bb.c ]
  %i.x = phi <2 x i64> [ undef, %bb.b ], [ %i.w, %bb.d ], [ <i64 undef, i64 0>, %bb.c ] ; 2 uses
  store i64 0, ptr %i.g, align 8
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 240
  store i64 0, ptr %.sroa.519.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 480
  store i64 %.sroa.0.0, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.7.sroa.0.sroa.4.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 488
  store ptr %.sroa.5.0, ptr %.sroa.7.sroa.0.sroa.4.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.7.sroa.0.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 496
  store ptr %.sroa.7.0, ptr %.sroa.7.sroa.0.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.7.sroa.0.sroa.6.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 504
  %i.y = extractelement <2 x i64> %i.x, i64 0
  store i64 %i.y, ptr %.sroa.7.sroa.0.sroa.6.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 512
  store i64 %.sroa.10.0, ptr %.sroa.7.sroa.0.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.7.sroa.0.sroa.8.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 520
  store ptr null, ptr %.sroa.7.sroa.0.sroa.8.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.7.sroa.0.sroa.9.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 528
  store ptr %.sroa.12.0, ptr %.sroa.7.sroa.0.sroa.9.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.7.sroa.0.sroa.10.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 536
  store <2 x i64> %i.x, ptr %.sroa.7.sroa.0.sroa.10.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.7.sroa.4.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 552
  store ptr %i.i, ptr %.sroa.7.sroa.4.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 560
  store ptr %1, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 568
  store ptr %2, ptr %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.d, ptr noundef nonnull align 4 dereferenceable(12) %4, i64 12, i1 false)
  %i.z = invoke noundef zeroext i1 @_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_13TypedDictType31supports_arbitrary_key_deletion(ptr noalias noundef nonnull align 4 captures(address) dereferenceable(12) %i.d, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class10typed_dictNtB2_15TypedDictFields4iter.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.z, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !19479
  invoke void @_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11to_instance(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.c, i8 noundef 9, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @77)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !19479
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !19479
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %4, i64 12, i1 false), !noalias !19479
  invoke void @_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_13TypedDictType10value_type(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(12) %i.a, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3)
          to label %.noexc47 unwind label %bb.j

.noexc47:                                         ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !19479
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.aa, ptr noundef nonnull align 4 dereferenceable(16) %i.b, i64 16, i1 false), !noalias !19479
  invoke fastcc void @_RNCNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class10typed_dict25synthesize_typed_dict_pop0B9_(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(216) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i, ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.c, ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.aa)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %.noexc47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !19479
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !19479
  %.sroa.01.0.copyload2 = load i64, ptr %i.e, align 8
  %.sroa.53.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %.sroa.53, ptr noundef nonnull align 8 dereferenceable(208) %.sroa.53.0..sroa_idx4, i64 208, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %.sroa.01.0 = phi i64 [ %.sroa.01.0.copyload2, %bb.g ], [ 2, %bb.e ]
  call void @llvm.experimental.noalias.scope.decl(metadata !19480)
  call void @llvm.experimental.noalias.scope.decl(metadata !19481)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1272) %i.h, ptr noundef nonnull readonly align 8 dereferenceable(576) %i.g, i64 576, i1 false), !alias.scope !19482, !noalias !19481
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 576
  store i64 0, ptr %i.ab, align 8, !alias.scope !19483, !noalias !19480
  %.sroa.458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 816
  store i64 0, ptr %.sroa.458.0..sroa_idx, align 8, !alias.scope !19483, !noalias !19480
  %.sroa.560.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 1056
  store i64 %.sroa.01.0, ptr %.sroa.560.0..sroa_idx, align 8, !alias.scope !19483, !noalias !19480
  %.sroa.661.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 1064
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %.sroa.661.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(208) %.sroa.53, i64 208, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RINvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_17CallableSignature14from_overloadsINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtB1H_7flatten7FlatMapINtNtB1H_6filter6FilterINtCsddXFpJ32JCa_6either6EitherINtNtB1H_3map3MapINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtB7_10typed_dict14TypedDictFieldENCNvMNtNtB7_5class10typed_dictNtB6k_15TypedDictFields4iter0EIB3M_INtNtNtCs5e9M2GLoJMY_8indexmap3map4iter4IterB4W_NtB6m_5FieldENCB6h_s_0EENCNvB6k_25synthesize_typed_dict_pops_0EANtB5_9Signaturej3_NCB8u_s0_0EINtB2x_7FlattenINtNtB1L_6option8IntoIterB95_EEEEB9_(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(1272) %i.h)
  %i.ac = call { i32, i32 } @_RINvMs9_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable1__NtB8_12CallableType3newDNtNtBc_2db2DbEL_NtNtBa_10signatures17CallableSignatureNtB8_16CallableTypeKindNtB8_26CallableFunctionProvenanceEBc_(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.f, i8 noundef 1, i8 noundef 0) ; 2 uses
  %i.ad = extractvalue { i32, i32 } %i.ac, 0
  %i.ae = extractvalue { i32, i32 } %i.ac, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.ad, ptr %i.af, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.ae, ptr %i.ag, align 4
  store i32 13, ptr %0, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void

bb.i:                                             ; preds = %bb.j
  resume { ptr, i32 } %i.ah

bb.j:                                             ; preds = %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class10typed_dictNtB2_15TypedDictFields4iter.exit, %bb.f, %.noexc, %.noexc47
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtBG_6filter6FilterINtCsddXFpJ32JCa_6either6EitherINtNtBG_3map3MapINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldENCNvMNtNtB45_5class10typed_dictNtB5i_15TypedDictFields4iter0EIB29_INtNtNtCs5e9M2GLoJMY_8indexmap3map4iter4IterB3i_NtB5k_5FieldENCB5f_s_0EENCNvB5i_25synthesize_typed_dict_pops_0EANtNtB45_10signatures9Signaturej3_NCB7t_s0_0EEB47_(ptr noalias noundef align 8 dereferenceable(576) %i.g) #41
          to label %bb.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #42
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class10typed_dict26synthesize_typed_dict_init(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 4 captures(none) dereferenceable(16) %0, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3, ptr noalias noundef nonnull align 4 captures(address) dead_on_return dereferenceable(12) %4, i64 noundef range(i64 0, 2) %5, ptr nofree noundef nonnull readonly captures(none) %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0136 = alloca [15 x i8], align 8         ; 3 uses
  %.sroa.03.i.i = alloca [15 x i8], align 8       ; 5 uses
  %.sroa.08.i = alloca [15 x i8], align 8         ; 3 uses
  %i.a = alloca [72 x i8], align 8                ; 5 uses
  %i.b = alloca [144 x i8], align 8               ; 3 uses
  %i.c = alloca [20 x i8], align 4                ; 3 uses
  %.sroa.7110 = alloca [32 x i8], align 8         ; 2 uses
  %i.d = alloca [144 x i8], align 8               ; 11 uses
  %i.e = alloca [80 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 4                ; 4 uses
  %i.g = alloca [160 x i8], align 8               ; 7 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %.sroa.492 = alloca [32 x i8], align 8          ; 4 uses
  %i.i = alloca [16 x i8], align 4                ; 4 uses
  %.sroa.589 = alloca [64 x i8], align 8          ; 4 uses
  %i.j = alloca [72 x i8], align 8                ; 4 uses
  %i.k = alloca [184 x i8], align 8               ; 9 uses
  %i.l = alloca [256 x i8], align 8               ; 6 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [72 x i8], align 8                ; 11 uses
  %i.o = alloca [72 x i8], align 8                ; 15 uses
  %i.p = alloca [72 x i8], align 8                ; 17 uses
  %i.q = alloca [72 x i8], align 8                ; 23 uses
  %i.r = alloca [72 x i8], align 8                ; 11 uses
  %i.s = alloca [24 x i8], align 8                ; 10 uses
  %.sroa.547.sroa.0.0.copyload82 = load i32, ptr %4, align 4 ; 3 uses
  %.sroa.547.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 4
  %.sroa.547.sroa.5.0.copyload83 = load i64, ptr %.sroa.547.sroa.5.0..sroa_idx, align 4 ; 4 uses
  %cond = icmp eq i32 %.sroa.547.sroa.0.0.copyload82, -1
  br i1 %cond, label %bb.b, label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_13TypedDictType14defining_class.exit.thread

bb.b:                                             ; preds = %bb.a
  %.sroa.4106.4.extract.trunc = trunc i64 %.sroa.547.sroa.5.0.copyload83 to i32
  %.sroa.4106.8.extract.shift = lshr i64 %.sroa.547.sroa.5.0.copyload83, 32
  %.sroa.4106.8.extract.trunc = trunc nuw i64 %.sroa.4106.8.extract.shift to i32
  %i.t = tail call { i32, i32 } @_RINvMs9_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5classs0_1__NtB8_12GenericAlias14specializationDNtNtBc_2db2DbEL_EBc_(i32 noundef %.sroa.4106.4.extract.trunc, i32 noundef %.sroa.4106.8.extract.trunc, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2), !noalias !19532 ; 2 uses
  %i.u = extractvalue { i32, i32 } %i.t, 0        ; 3 uses
  %i.v = extractvalue { i32, i32 } %i.t, 1        ; 2 uses
  %i.w = tail call { i32, i32 } @_RINvMs9_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types8genericss_1__NtB8_14Specialization15generic_contextDNtNtBc_2db2DbEL_EBc_(i32 noundef %i.u, i32 noundef %i.v, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2), !noalias !19532 ; 2 uses
  %i.x = extractvalue { i32, i32 } %i.w, 0        ; 2 uses
  %i.y = extractvalue { i32, i32 } %i.w, 1        ; 2 uses
  %i.z = tail call { i32, i32 } @_RNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8genericsNtB4_14GenericContext23identity_specialization(i32 noundef %i.x, i32 noundef %i.y, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2), !noalias !19532 ; 2 uses
  %i.aa = extractvalue { i32, i32 } %i.z, 1
  %i.ab = icmp eq i32 %i.v, %i.aa
  br i1 %i.ab, label %bb.c, label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_13TypedDictType14defining_class.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.ac = extractvalue { i32, i32 } %i.z, 0       ; 2 uses
  %i.ad = icmp ne i32 %i.u, 0
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = icmp ne i32 %i.ac, 0
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = icmp eq i32 %i.u, %i.ac
  %spec.select4.i = select i1 %i.af, i32 %i.x, i32 0
  br label %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_13TypedDictType14defining_class.exit.thread

_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_13TypedDictType14defining_class.exit.thread: ; preds = %bb.a, %bb.c, %bb.b
  %.sroa.4.0 = phi i32 [ undef, %bb.b ], [ %i.y, %bb.c ], [ undef, %bb.a ] ; 2 uses
  %.sroa.0.0 = phi i32 [ 0, %bb.b ], [ %spec.select4.i, %bb.c ], [ 0, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.ag = trunc nuw i64 %5 to i1
  br i1 %i.ag, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_13TypedDictType14defining_class.exit.thread
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !19533, !nonnull !15, !noundef !15 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !noalias !19533, !noundef !15
  %i.al = getelementptr inbounds nuw [120 x i8], ptr %i.ai, i64 %i.ak
  br label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class10typed_dictNtB2_15TypedDictFields4iter.exit

bb.e:                                             ; preds = %_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_13TypedDictType14defining_class.exit.thread
  %i.am = load ptr, ptr %6, align 8, !noalias !19533, !noundef !15 ; 3 uses
  %.not.i = icmp eq ptr %i.am, null
  br i1 %.not.i, label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class10typed_dictNtB2_15TypedDictFields4iter.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ao = load <2 x i64>, ptr %i.an, align 8, !noalias !19533
  br label %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class10typed_dictNtB2_15TypedDictFields4iter.exit

_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class10typed_dictNtB2_15TypedDictFields4iter.exit: ; preds = %bb.e, %bb.f, %bb.d
  %.sroa.12.0 = phi ptr [ undef, %bb.d ], [ %i.am, %bb.f ], [ null, %bb.e ]
  %.sroa.10.0 = phi i64 [ undef, %bb.d ], [ 1, %bb.f ], [ 0, %bb.e ]
  %.sroa.7.0 = phi ptr [ %i.al, %bb.d ], [ %i.am, %bb.f ], [ null, %bb.e ]
  %.sroa.554.0 = phi ptr [ %i.ai, %bb.d ], [ null, %bb.f ], [ null, %bb.e ]
  %.sroa.053.0 = phi i64 [ 2, %bb.d ], [ 1, %bb.f ], [ 0, %bb.e ]
  %i.ap = phi <2 x i64> [ undef, %bb.d ], [ %i.ao, %bb.f ], [ <i64 undef, i64 0>, %bb.e ] ; 2 uses
  store i64 %.sroa.053.0, ptr %i.r, align 8
  %.sroa.554.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %.sroa.554.0, ptr %.sroa.554.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.aq = extractelement <2 x i64> %i.ap, i64 0
  store i64 %i.aq, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store i64 %.sroa.10.0, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  store ptr null, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store ptr %.sroa.12.0, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  store <2 x i64> %i.ap, ptr %.sroa.13.0..sroa_idx, align 8
  call void @_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecTRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtNtB6_6borrow3CowNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldEEEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter6FilterINtCsddXFpJ32JCa_6either6EitherINtNtB3R_3map3MapINtNtNtNtB6_11collections5btree3map4IterB12_B24_ENCNvMNtNtB28_5class10typed_dictNtB6k_15TypedDictFields4iter0EIB5c_INtNtNtCs5e9M2GLoJMY_8indexmap3map4iter4IterB12_NtB6m_5FieldENCB6h_s_0EENCNvB6k_26synthesize_typed_dict_inits_0EE9from_iterB2a_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.s, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  invoke void @_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_13TypedDictType20explicit_extra_items(ptr noalias noundef nonnull sret([20 x i8]) align 4 captures(address) dereferenceable(20) %i.c, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(12) %4, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2)
          to label %bb.h unwind label %bb.g

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterEEB13_.exit: ; preds = %.thread169, %.thread164, %bb.ag, %bb.ah, %bb.g
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ar, %bb.g ], [ %.pn.pn.pn177, %bb.ag ], [ %.pn.pn.pn177, %bb.ah ], [ %lpad.thr_comm, %.thread169 ], [ %.pn167, %.thread164 ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtNtBG_6borrow3CowNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldEEEEB2h_(ptr noalias noundef align 8 dereferenceable(24) %i.s) #41
          to label %common.resume unwind label %bb.ab

bb.g:                                             ; preds = %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class10typed_dictNtB2_15TypedDictFields4iter.exit
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterEEB13_.exit

bb.h:                                             ; preds = %_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class10typed_dictNtB2_15TypedDictFields4iter.exit
  %i.as = load i32, ptr %i.c, align 4, !range !21, !noundef !15
  %.not19 = icmp eq i32 %i.as, -1
  br i1 %.not19, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.sroa.08.i.6.i.6.i.6..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.08.i, i64 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(9) %.sroa.08.i.6.i.6.i.6..sroa_idx, i8 0, i64 9, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %.sroa.08.i, ptr noundef nonnull align 1 dereferenceable(6) @78, i64 6, i1 false)
  %.sroa.7110.40..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.7110, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7110.40..sroa_idx, ptr noundef nonnull align 4 dereferenceable(16) %i.c, i64 16, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %.val = load i64, ptr %i.at, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !19534)
  call void @llvm.experimental.noalias.scope.decl(metadata !19535)
  store i64 4, ptr %i.q, align 8, !alias.scope !19536
  %.sroa.657.0..sroa_idx58 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %.sroa.657.0..sroa_idx58, ptr noundef nonnull align 8 dereferenceable(15) %.sroa.08.i, i64 15, i1 false)
  %.sroa.657.sroa.4.0..sroa.657.0..sroa_idx58.sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 23
  store i8 -58, ptr %.sroa.657.sroa.4.0..sroa.657.0..sroa_idx58.sroa_idx, align 1, !alias.scope !19536
  %.sroa.657.sroa.5.0..sroa.657.0..sroa_idx58.sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.657.sroa.5.0..sroa.657.0..sroa_idx58.sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7110, i64 32, i1 false)
  %.sroa.657.sroa.6.0..sroa.657.0..sroa_idx58.sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  store i32 0, ptr %.sroa.657.sroa.6.0..sroa.657.0..sroa_idx58.sroa_idx, align 8, !alias.scope !19536
  %.sroa.657.sroa.8.0..sroa.657.0..sroa_idx58.sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  store i32 0, ptr %.sroa.657.sroa.8.0..sroa.657.0..sroa_idx58.sroa_idx, align 8, !alias.scope !19536
  %.sroa.657.sroa.9.0..sroa.657.0..sroa_idx58.sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 68
  store i8 0, ptr %.sroa.657.sroa.9.0..sroa.657.0..sroa_idx58.sroa_idx, align 4, !alias.scope !19536
  %.sroa.657.sroa.10.0..sroa.657.0..sroa_idx58.sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 69
  store i8 0, ptr %.sroa.657.sroa.10.0..sroa.657.0..sroa_idx58.sroa_idx, align 1, !alias.scope !19536
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %.val142 = load i64, ptr %i.au, align 8         ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !19537)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.03.i.i)
  %i.av = icmp ult i64 %.val142, 230584300921369396
  call void @llvm.assume(i1 %i.av)
  %7 = shl nuw nsw i64 %5, 5
  %8 = getelementptr inbounds nuw i8, ptr %6, i64 %7
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.sroa.0.0.i.i = load i64, ptr %i.aw, align 8, !noalias !19538, !noundef !15
  %.not.i.i = icmp eq i64 %.val142, %.sroa.0.0.i.i ; 2 uses
  br i1 %.not.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterEEB13_.exit4.i, label %_RNvMNtCsj8vhLppEnlJ_8char_str8char_strNtB2_7CharStr15from_static_str.exit.i.i

_RNvMNtCsj8vhLppEnlJ_8char_str8char_strNtB2_7CharStr15from_static_str.exit.i.i: ; preds = %bb.j
  %.sroa.03.i.i.6.i.i.6.i.i.6.i.6.i.6..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.03.i.i, i64 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(9) %.sroa.03.i.i.6.i.i.6.i.i.6.i.6.i.6..sroa_idx, i8 0, i64 9, i1 false), !noalias !19538
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %.sroa.03.i.i, ptr noundef nonnull align 1 dereferenceable(6) @78, i64 6, i1 false), !noalias !19538
  %.sroa.04.sroa.0.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %.sroa.04.sroa.0.sroa.4.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(15) %.sroa.03.i.i, i64 15, i1 false), !noalias !19535
  %.sroa.04.sroa.0.sroa.4.sroa.4.0..sroa.04.sroa.0.sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 23
  store i8 -58, ptr %.sroa.04.sroa.0.sroa.4.sroa.4.0..sroa.04.sroa.0.sroa.4.0..sroa_idx.sroa_idx.i.i, align 1, !alias.scope !19539, !noalias !19535
  %.sroa.04.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store i32 4, ptr %.sroa.04.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !19539, !noalias !19535
  %.sroa.04.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 44
  store i32 1, ptr %.sroa.04.sroa.5.0..sroa_idx.i.i, align 4, !alias.scope !19539, !noalias !19535
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  store i32 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !19539, !noalias !19535
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  store i32 0, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !alias.scope !19539, !noalias !19535
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 68
  store i8 1, ptr %.sroa.8.0..sroa_idx.i.i, align 4, !alias.scope !19539, !noalias !19535
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 69
  store i8 0, ptr %.sroa.9.0..sroa_idx.i.i, align 1, !alias.scope !19539, !noalias !19535
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterEEB13_.exit4.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterEEB13_.exit4.i: ; preds = %_RNvMNtCsj8vhLppEnlJ_8char_str8char_strNtB2_7CharStr15from_static_str.exit.i.i, %bb.j
  %.sink.i.i = phi i64 [ 4, %_RNvMNtCsj8vhLppEnlJ_8char_str8char_strNtB2_7CharStr15from_static_str.exit.i.i ], [ -1, %bb.j ]
  store i64 %.sink.i.i, ptr %i.q, align 8, !alias.scope !19539, !noalias !19535
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03.i.i)
  br label %bb.k

bb.k:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterEEB13_.exit4.i, %bb.i
  %.not20 = phi i1 [ false, %bb.i ], [ %.not.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterEEB13_.exit4.i ]
  %.val145 = phi i64 [ %.val, %bb.i ], [ %.val142, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterEEB13_.exit4.i ]
  %i.ax = phi ptr [ %i.at, %bb.i ], [ %i.au, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterEEB13_.exit4.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %.sroa.4.sroa.0.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(11) %.sroa.4.sroa.0.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, i8 0, i64 11, i1 false)
  store i64 0, ptr %i.p, align 8, !alias.scope !19540, !noalias !19541
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i32 1718379891, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !19540, !noalias !19541
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 23
  store i8 -60, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 1, !alias.scope !19540, !noalias !19541
  %.sroa.560.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store i32 -1, ptr %.sroa.560.0..sroa_idx, align 8, !alias.scope !19540, !noalias !19541
  %.sroa.662.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store i32 34, ptr %.sroa.662.0..sroa_idx, align 8, !alias.scope !19540, !noalias !19541
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 44
  store i32 %.sroa.547.sroa.0.0.copyload82, ptr %.sroa.8.0..sroa_idx, align 4, !alias.scope !19540, !noalias !19541
  %.sroa.963.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  store i64 %.sroa.547.sroa.5.0.copyload83, ptr %.sroa.963.0..sroa_idx, align 8, !alias.scope !19540, !noalias !19541
  %.sroa.964.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  store i32 0, ptr %.sroa.964.0..sroa_idx, align 8, !alias.scope !19540, !noalias !19541
  %.sroa.1066.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  store i32 0, ptr %.sroa.1066.0..sroa_idx, align 8, !alias.scope !19540, !noalias !19541
  %.sroa.1167.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 68
  store i8 0, ptr %.sroa.1167.0..sroa_idx, align 4, !alias.scope !19540, !noalias !19541
  %.sroa.1368.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 69
  store i8 0, ptr %.sroa.1368.0..sroa_idx, align 1, !alias.scope !19540, !noalias !19541
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %.sroa.0136.3..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0136, i64 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %.sroa.0136.3..sroa_idx, i8 0, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %.sroa.0136, ptr noundef nonnull align 1 dereferenceable(3) @181, i64 3, i1 false)
  store i64 0, ptr %i.o, align 8, !alias.scope !19542, !noalias !19543
  %.sroa.471.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %.sroa.471.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(15) %.sroa.0136, i64 15, i1 false)
  %.sroa.471.sroa.4.0..sroa.471.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 23
  store i8 -61, ptr %.sroa.471.sroa.4.0..sroa.471.0..sroa_idx.sroa_idx, align 1, !alias.scope !19542, !noalias !19543
  %.sroa.572.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i32 -1, ptr %.sroa.572.0..sroa_idx, align 8, !alias.scope !19542, !noalias !19543
  %.sroa.674.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  store i32 34, ptr %.sroa.674.0..sroa_idx, align 8, !alias.scope !19542, !noalias !19543
  %.sroa.875.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 44
  store i32 %.sroa.547.sroa.0.0.copyload82, ptr %.sroa.875.0..sroa_idx, align 4, !alias.scope !19542, !noalias !19543
  %.sroa.1076.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  store i64 %.sroa.547.sroa.5.0.copyload83, ptr %.sroa.1076.0..sroa_idx, align 8, !alias.scope !19542, !noalias !19543
  %.sroa.1077.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  store i32 0, ptr %.sroa.1077.0..sroa_idx, align 8, !alias.scope !19542, !noalias !19543
  %.sroa.1179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  store i32 0, ptr %.sroa.1179.0..sroa_idx, align 8, !alias.scope !19542, !noalias !19543
  %.sroa.1280.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 68
  store i8 0, ptr %.sroa.1280.0..sroa_idx, align 4, !alias.scope !19542, !noalias !19543
  %.sroa.1481.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 69
  store i8 0, ptr %.sroa.1481.0..sroa_idx, align 1, !alias.scope !19542, !noalias !19543
  %i.ay = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !nonnull !15, !noundef !15 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke fastcc void @_RNvXs1A_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB6_9ParameterNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.p)
          to label %bb.m unwind label %bb.af

bb.l:                                             ; preds = %bb.p
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %.thread173

bb.m:                                             ; preds = %bb.k
  %i.bb = getelementptr inbounds nuw [40 x i8], ptr %i.az, i64 %.val145
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bc, ptr noundef nonnull align 8 dereferenceable(72) %i.o, i64 72, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.b, ptr noundef nonnull align 8 dereferenceable(72) %i.j, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.experimental.noalias.scope.decl(metadata !19544)
  store i64 1, ptr %i.k, align 8, !alias.scope !19545, !noalias !19544
  %.sroa.4.0..sroa_idx.i39 = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i39, align 8, !alias.scope !19546
  %.sroa.485.0..sroa.4.0..sroa_idx.i39.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 2, ptr %.sroa.485.0..sroa.4.0..sroa_idx.i39.sroa_idx, align 8, !alias.scope !19546
  %.sroa.586.0..sroa.4.0..sroa_idx.i39.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.586.0..sroa.4.0..sroa_idx.i39.sroa_idx, ptr noundef nonnull align 8 dereferenceable(144) %i.b, i64 144, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.k, i64 168
  store ptr %i.az, ptr %i.bd, align 8, !alias.scope !19545, !noalias !19544
  %i.be = getelementptr inbounds nuw i8, ptr %i.k, i64 176
  store ptr %i.bb, ptr %i.be, align 8, !alias.scope !19545, !noalias !19544
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.589)
  br i1 %.not20, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke fastcc void @_RNvXs1A_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB6_9ParameterNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.q)
          to label %bb.o unwind label %bb.ae

bb.o:                                             ; preds = %bb.n
  %.sroa.087.0.copyload = load i64, ptr %i.a, align 8
  %.sroa.589.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.589, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.589.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.m
  %.sroa.087.0 = phi i64 [ %.sroa.087.0.copyload, %bb.o ], [ -1, %bb.m ]
  call void @llvm.experimental.noalias.scope.decl(metadata !19547)
  call void @llvm.experimental.noalias.scope.decl(metadata !19548)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.l, ptr noundef nonnull readonly align 8 dereferenceable(184) %i.k, i64 184, i1 false), !alias.scope !19549, !noalias !19548
  %i.bf = getelementptr inbounds nuw i8, ptr %i.l, i64 184
  store i64 %.sroa.087.0, ptr %i.bf, align 8, !alias.scope !19550, !noalias !19547
  %.sroa.589.0..sroa_idx90 = getelementptr inbounds nuw i8, ptr %i.l, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.589.0..sroa_idx90, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.589, i64 64, i1 false), !alias.scope !19550, !noalias !19547
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.589)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.bg = invoke noundef nonnull ptr @_RINvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB6_10Parameters8standardINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB1q_INtNtNtB1y_5array4iter8IntoIterNtB6_9ParameterKj2_EINtNtB1u_3map3MapINtNtNtB1y_5slice4iter4IterTRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtNtCscdodAO9FK5_5alloc6borrow3CowNtNtB8_10typed_dict14TypedDictFieldEEENCNvNtNtB8_5class10typed_dict26synthesize_typed_dict_inits2_0EEINtNtB1y_6option8IntoIterB2R_EEEBa_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(256) %i.l)
          to label %bb.q unwind label %bb.l       ; 3 uses

bb.q:                                             ; preds = %bb.p
  store ptr %i.bg, ptr %i.m, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type4none(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.i, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3)
          to label %bb.s unwind label %bb.ac

.thread169:                                       ; preds = %bb.v, %bb.u
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterEEB13_.exit

bb.r:                                             ; preds = %bb.s
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread164

bb.s:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !19551)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  store i32 %.sroa.0.0, ptr %i.bh, align 8, !alias.scope !19552, !noalias !19551
  %i.bi = getelementptr inbounds nuw i8, ptr %i.n, i64 52
  store i32 %.sroa.4.0, ptr %i.bi, align 4, !alias.scope !19552, !noalias !19551
  %i.bj = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  store i32 0, ptr %i.bj, align 8, !alias.scope !19552, !noalias !19551
  %i.bk = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  store i32 0, ptr %i.bk, align 8, !alias.scope !19552, !noalias !19551
  store i64 0, ptr %i.n, align 8, !alias.scope !19552, !noalias !19551
  %i.bl = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store ptr %i.bg, ptr %i.bl, align 8, !alias.scope !19552, !noalias !19551
  %i.bm = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.i, i64 16, i1 false), !alias.scope !19553
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.bn = load ptr, ptr %i.ay, align 8, !nonnull !15, !noundef !15 ; 2 uses
  %i.bo = load i64, ptr %i.ax, align 8, !noundef !15
  %i.bp = getelementptr inbounds nuw [40 x i8], ptr %i.bn, i64 %i.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.492)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bq, ptr noundef nonnull align 8 dereferenceable(72) %i.p, i64 72, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.g, ptr noundef nonnull align 8 dereferenceable(72) %i.q, i64 72, i1 false)
  %.sroa.4101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  store ptr %i.bn, ptr %.sroa.4101.0..sroa_idx, align 8, !alias.scope !19554, !noalias !19555
  %.sroa.5102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 152
  store ptr %i.bp, ptr %.sroa.5102.0..sroa_idx, align 8, !alias.scope !19554, !noalias !19555
  %i.br = invoke noundef nonnull ptr @_RINvMs7_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB6_10Parameters8standardINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainIB1q_INtNtNtB1w_7sources4once4OnceNtB6_9ParameterEINtNtB1u_3map3MapINtNtNtB1y_5slice4iter4IterTRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtNtCscdodAO9FK5_5alloc6borrow3CowNtNtB8_10typed_dict14TypedDictFieldEEENCNvNtNtB8_5class10typed_dict26synthesize_typed_dict_inits3_0EEINtNtB1y_6option8IntoIterB2P_EEEBa_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(160) %i.g)
          to label %bb.t unwind label %bb.r       ; 3 uses

bb.t:                                             ; preds = %bb.s
  store ptr %i.br, ptr %i.h, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
end_hunk_0
