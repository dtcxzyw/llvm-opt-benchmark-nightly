Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_python_semantic-ec859307257497d7.ty_python_semantic.4ad91d80fb3de5b-cgu.01?download=true
inline.NumInlined: 12775
inline.NumDeleted: 7325
loop-unroll.NumRuntimeUnrolled: 149
loop-unroll.NumUnrolled: 149
begin_hunk_0_@_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTjNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingSnapshotEEBL_:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7864)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !7865, !nonnull !14, !noundef !14 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !7865, !noundef !14 ; 4 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingSnapshotEBJ_.exit, label %.lr.ph9

bb.f:                                             ; preds = %.lr.ph9
  %i.ab = icmp eq i64 %i.ad, %i.z
  br i1 %i.ab, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingSnapshotEBJ_.exit, label %.lr.ph9

.lr.ph9:                                          ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSINtNtB4_6option6OptionNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEEB1A_.exit7.i, %bb.f
  %.sroa.0.0.i.i.i.i8 = phi i64 [ %i.ad, %bb.f ], [ 0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSINtNtB4_6option6OptionNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEEB1A_.exit7.i ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [144 x i8], ptr %i.x, i64 %.sroa.0.0.i.i.i.i8
  %i.ad = add nuw nsw i64 %.sroa.0.0.i.i.i.i8, 1  ; 4 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12BindingErrorEBJ_(ptr noalias noundef align 8 dereferenceable(144) %i.ac)
          to label %bb.f unwind label %bb.h, !noalias !7865

bb.g:                                             ; preds = %.lr.ph11
  %i.ae = add i64 %.sroa.0.1.i.i.i.i10, 1         ; 2 uses
  %i.af = icmp eq i64 %i.ae, %i.z
  br i1 %i.af, label %.body.i8.i, label %.lr.ph11

bb.h:                                             ; preds = %.lr.ph9
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %i.ah = icmp eq i64 %i.ad, %i.z
  br i1 %i.ah, label %.body.i8.i, label %.lr.ph11

.lr.ph11:                                         ; preds = %bb.h, %bb.g
  %.sroa.0.1.i.i.i.i10 = phi i64 [ %i.ae, %bb.g ], [ %i.ad, %bb.h ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [144 x i8], ptr %i.x, i64 %.sroa.0.1.i.i.i.i10
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12BindingErrorEBJ_(ptr noalias noundef align 8 dereferenceable(144) %i.ai) #33
          to label %bb.g unwind label %bb.i, !noalias !7865

bb.i:                                             ; preds = %.lr.ph11
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32, !noalias !7865
  unreachable

.body.i8.i:                                       ; preds = %bb.g, %bb.h
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12BindingErrorENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBT_(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.a)
          to label %common.resume.i unwind label %bb.j

bb.j:                                             ; preds = %.body.i8.i
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32
  unreachable

common.resume.i:                                  ; preds = %.body.i8.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSINtNtB4_6option6OptionNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEEB1A_.exit.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.ag, %.body.i8.i ], [ %i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSINtNtB4_6option6OptionNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEEB1A_.exit.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.k:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSINtNtB4_6option6OptionNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEEB1A_.exit.i
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingSnapshotEBJ_.exit: ; preds = %bb.f, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSINtNtB4_6option6OptionNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEEB1A_.exit7.i
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind12BindingErrorENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBT_(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtB4_6copied6CopiedINtNtNtB8_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind16MatchedParameterEENCNCNCNvMs7_B2a_NtB2a_15CallableBinding37filter_overloads_using_any_or_unknown000ENtNvMs7_B2a_B3D_37filter_overloads_using_any_or_unknown18OverloadFilterSlotNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB2g_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 4 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 4 uses
  %i.b = alloca [16 x i8], align 4                ; 4 uses
  %i.c = alloca [16 x i8], align 4                ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [48 x i8], align 4                ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.g = load ptr, ptr %1, align 8, !noundef !14
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7879)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7880)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !7881
  call void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind16MatchedParameterEENtNtNtB8_6traits8iterator8Iterator4nextB1z_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(48) %1), !noalias !7882
  %i.h = load i32, ptr %i.d, align 8, !range !33, !noalias !7883, !noundef !14
  %.not.i.i = icmp eq i32 %i.h, -2
  br i1 %.not.i.i, label %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtBa_6copied6CopiedINtNtNtBe_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind16MatchedParameterEENCNCNCNvMs7_B1H_NtB1H_15CallableBinding37filter_overloads_using_any_or_unknown000ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB1N_.exit.thread, label %bb.c

_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtBa_6copied6CopiedINtNtNtBe_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind16MatchedParameterEENCNCNCNvMs7_B1H_NtB1H_15CallableBinding37filter_overloads_using_any_or_unknown000ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB1N_.exit.thread: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !7881
  br label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.42.0.copyload.i.i = load i64, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !7883 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7884)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !7885
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !7886, !noalias !7887, !nonnull !14, !align !18, !noundef !14 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %.val.i.i.i = load ptr, ptr %i.k, align 8, !noalias !7888, !nonnull !14, !noundef !14 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 24
  %i.m = load i64, ptr %i.l, align 8, !noalias !7888, !noundef !14 ; 2 uses
  %i.n = icmp ult i64 %.sroa.42.0.copyload.i.i, %i.m
  br i1 %i.n, label %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtBa_6copied6CopiedINtNtNtBe_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind16MatchedParameterEENCNCNCNvMs7_B1H_NtB1H_15CallableBinding37filter_overloads_using_any_or_unknown000ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB1N_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.sroa.42.0.copyload.i.i, i64 noundef %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #31, !noalias !7888
  unreachable

_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtBa_6copied6CopiedINtNtNtBe_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind16MatchedParameterEENCNCNCNvMs7_B1H_NtB1H_15CallableBinding37filter_overloads_using_any_or_unknown000ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB1N_.exit: ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !noalias !7888, !nonnull !14, !noundef !14
  %i.q = getelementptr inbounds nuw [72 x i8], ptr %i.p, i64 %.sroa.42.0.copyload.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.r, i64 16, i1 false), !alias.scope !7889, !noalias !7888
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !7886, !noalias !7887, !nonnull !14, !noundef !14 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !7886, !noalias !7887, !nonnull !14, !align !18, !noundef !14 ; 2 uses
  %i.w = tail call { i32, i32 } @_RNvMse_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_7Binding14specialization(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(232) %i.j, ptr noundef nonnull %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.v), !noalias !7888 ; 2 uses
  %i.x = extractvalue { i32, i32 } %i.w, 0
  %i.y = extractvalue { i32, i32 } %i.w, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7885
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %i.c, i64 16, i1 false), !noalias !7885
  call void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type29apply_optional_specialization(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(48) %i.e, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.v, i32 noundef %i.x, i32 %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7885
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7885
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !7886, !noalias !7887, !nonnull !14, !align !18, !noundef !14
  call void @_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call9argumentsNtB2_17CallArgumentTypes21get_for_declared_type(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aa, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.c), !noalias !7888
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ab, ptr noundef nonnull align 4 dereferenceable(16) %i.b, i64 16, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7885
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7885
  %.sroa.0.0.copyload4 = load i32, ptr %i.e, align 4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !7881
  %.not3 = icmp eq i32 %.sroa.0.0.copyload4, -1
  br i1 %.not3, label %bb.h, label %bb.g

bb.e:                                             ; preds = %bb.a
  store i32 -1, ptr %0, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  ret void

bb.g:                                             ; preds = %bb.h, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtBa_6copied6CopiedINtNtNtBe_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind16MatchedParameterEENCNCNCNvMs7_B1H_NtB1H_15CallableBinding37filter_overloads_using_any_or_unknown000ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB1N_.exit
  %.sroa.0.08 = phi i32 [ -1, %bb.h ], [ %.sroa.0.0.copyload4, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtBa_6copied6CopiedINtNtNtBe_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind16MatchedParameterEENCNCNCNvMs7_B1H_NtB1H_15CallableBinding37filter_overloads_using_any_or_unknown000ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB1N_.exit ]
  store i32 %.sroa.0.08, ptr %0, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(44) %i.f, i64 44, i1 false)
  br label %bb.f

bb.h:                                             ; preds = %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtBa_6copied6CopiedINtNtNtBe_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind16MatchedParameterEENCNCNCNvMs7_B1H_NtB1H_15CallableBinding37filter_overloads_using_any_or_unknown000ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB1N_.exit.thread, %_RNvYNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtBa_6copied6CopiedINtNtNtBe_5slice4iter4IterNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind16MatchedParameterEENCNCNCNvMs7_B1H_NtB1H_15CallableBinding37filter_overloads_using_any_or_unknown000ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB1N_.exit
  store ptr null, ptr %1, align 8
  br label %bb.g
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsoTR8nlGN3X_18ty_python_semantic(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, i64 noundef range(i64 0, 144115188075855872) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %2, i1 noundef zeroext false, i64 noundef 8, i64 noundef 64)
  %i.f = load i64, ptr %i.d, align 8, !range !28, !noundef !14
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !60, !noundef !14 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #31
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.m = icmp ule i64 %2, %i.i
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 %i.i, ptr %i.e, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.l, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  store i64 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw [64 x i8], ptr %1, i64 %2
  %i.q = icmp eq i64 %i.i, 0
  br i1 %i.q, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit, %_RNvXsbH_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_25InterpolatedStringElementNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit
  %.sroa.021.0128 = phi ptr [ %i.t, %_RNvXsbH_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_25InterpolatedStringElementNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit ], [ %1, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit ] ; 19 uses
  %.sroa.7.0126 = phi i64 [ %i.u, %_RNvXsbH_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_25InterpolatedStringElementNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit ], [ 0, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit ] ; 3 uses
  %.sroa.10.0125 = phi i64 [ %i.r, %_RNvXsbH_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_25InterpolatedStringElementNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit ], [ %i.i, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit ]
  %i.r = add i64 %.sroa.10.0125, -1               ; 2 uses
  %i.s = icmp eq ptr %.sroa.021.0128, %i.p
  br i1 %i.s, label %.thread, label %bb.c

.thread:                                          ; preds = %_RNvXsbH_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_25InterpolatedStringElementNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit, %.lr.ph, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsoTR8nlGN3X_18ty_python_semantic.exit
  store i64 %2, ptr %i.o, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

.loopexit:                                        ; preds = %bb.d, %.noexc, %bb.e, %.noexc16
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.c:                                             ; preds = %.lr.ph
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.021.0128, i64 64
  %i.u = add nuw nsw i64 %.sroa.7.0126, 1
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.021.0128, i64 60 ; 2 uses
  %i.w = load i8, ptr %i.v, align 4, !range !52, !noalias !7920, !noundef !14
  %i.x = icmp eq i8 %i.w, 0
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.021.0128, i64 16
  %3 = load i32, ptr %i.y, align 8, !noalias !7920, !noundef !14
  %4 = getelementptr inbounds nuw i8, ptr %.sroa.021.0128, i64 20
  %5 = load i32, ptr %4, align 4, !noalias !7920, !noundef !14
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.021.0128, i64 24
  %i.aa = invoke noundef i32 @_RNvXsc_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noundef nonnull align 4 %i.z)
          to label %.noexc unwind label %.loopexit, !inline_history !7892

.noexc:                                           ; preds = %bb.d
  %i.ab = invoke { ptr, i64 } @_RNvXsf_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxeENtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.021.0128)
          to label %.noexc12 unwind label %.loopexit, !inline_history !7892 ; 2 uses

.noexc12:                                         ; preds = %.noexc
  %i.ac = extractvalue { ptr, i64 } %i.ab, 0
  %i.ad = extractvalue { ptr, i64 } %i.ab, 1
  br label %_RNvXsbH_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_25InterpolatedStringElementNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit

bb.e:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.021.0128, i64 40
  %i.af = load <2 x i32>, ptr %i.ae, align 8, !noalias !7921
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.021.0128, i64 56
  %i.ah = invoke noundef i32 @_RNvXsc_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noundef nonnull align 4 %i.ag)
          to label %.noexc16 unwind label %.loopexit, !inline_history !7895

.noexc16:                                         ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !7921
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7922)
  %i.ai = invoke noundef nonnull align 8 ptr @_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13new_uninit_inCsoTR8nlGN3X_18ty_python_semantic()
          to label %.noexc17 unwind label %.loopexit, !inline_history !7895 ; 4 uses

.noexc17:                                         ; preds = %.noexc16
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.021.0128, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !7922, !noalias !7921, !nonnull !14, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7923
  invoke fastcc void @_RNvXsbx_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.a, ptr noundef nonnull align 8 %i.ak)
          to label %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsoTR8nlGN3X_18ty_python_semantic.exit.i unwind label %bb.f, !inline_history !7898

bb.f:                                             ; preds = %.noexc17
  %i.al = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ai, i64 noundef 72, i64 noundef 8) #34, !noalias !7923
  br label %bb.ae

_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %.noexc17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ai, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !noalias !7923
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7923
  store ptr %i.ai, ptr %i.c, align 8, !noalias !7921
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.021.0128, i64 23
  %i.an = load i8, ptr %i.am, align 1, !range !53, !noalias !7921, !noundef !14
  switch i8 %i.an, label %bb.h [
    i8 -1, label %bb.g
    i8 -40, label %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8as_slice.exit.i
  ]

bb.g:                                             ; preds = %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsoTR8nlGN3X_18ty_python_semantic.exit.i, %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr9new_panic.exit.i
  %.sroa.072.0 = phi ptr [ %.sroa.081.0, %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr9new_panic.exit.i ], [ undef, %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsoTR8nlGN3X_18ty_python_semantic.exit.i ] ; 3 uses
  %.sroa.573.0 = phi i64 [ %.sroa.582.0, %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr9new_panic.exit.i ], [ undef, %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsoTR8nlGN3X_18ty_python_semantic.exit.i ]
  %.sroa.674.0 = phi i64 [ %.sroa.783.0, %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr9new_panic.exit.i ], [ -72057594037927936, %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsoTR8nlGN3X_18ty_python_semantic.exit.i ] ; 4 uses
  %.sroa.1176.0 = phi i32 [ %i.cm, %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr9new_panic.exit.i ], [ undef, %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsoTR8nlGN3X_18ty_python_semantic.exit.i ]
  %.sroa.1377.0 = phi i32 [ %i.co, %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr9new_panic.exit.i ], [ undef, %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsoTR8nlGN3X_18ty_python_semantic.exit.i ]
  %i.ao = load i8, ptr %i.v, align 4, !range !7924, !noalias !7921, !noundef !14
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.021.0128, i64 48 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !noalias !7921, !align !18, !noundef !14
  %.not6.i = icmp eq ptr %i.aq, null
  br i1 %.not6.i, label %.noexc13, label %bb.y

_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8as_slice.exit.i: ; preds = %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsoTR8nlGN3X_18ty_python_semantic.exit.i
  %i.ar = load ptr, ptr %.sroa.021.0128, align 8, !alias.scope !7925, !noalias !7921, !noundef !14 ; 11 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.021.0128, i64 8
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !7925, !noalias !7921, !noundef !14 ; 18 uses
  %i.au = icmp ult i64 %i.at, 25
  br i1 %i.au, label %bb.j, label %bb.i, !prof !15

bb.h:                                             ; preds = %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsoTR8nlGN3X_18ty_python_semantic.exit.i
  %.sroa.081.0.copyload = load ptr, ptr %.sroa.021.0128, align 8, !noalias !7921
  %.sroa.582.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.021.0128, i64 8
  %.sroa.582.0.copyload = load i64, ptr %.sroa.582.0..sroa_idx, align 8, !noalias !7921
  %.sroa.783.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.021.0128, i64 16
  %.sroa.783.0.copyload = load i64, ptr %.sroa.783.0..sroa_idx, align 8, !noalias !7921
  br label %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr9new_panic.exit.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DebugTextEECsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %.loopexit99, %.loopexit.split-lp100, %.body.i, %bb.ab
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %eh.lpad-body.i, %bb.ab ], [ %lpad.loopexit101, %.loopexit99 ], [ %lpad.loopexit.split-lp102, %.loopexit.split-lp100 ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef align 8 dereferenceable(8) %i.c) #33
          to label %bb.ae unwind label %bb.ac, !noalias !7921, !inline_history !7895

.loopexit99:                                      ; preds = %bb.i
  %lpad.loopexit101 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DebugTextEECsoTR8nlGN3X_18ty_python_semantic.exit.i

.loopexit.split-lp100:                            ; preds = %bb.w
  %lpad.loopexit.split-lp102 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DebugTextEECsoTR8nlGN3X_18ty_python_semantic.exit.i

bb.i:                                             ; preds = %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8as_slice.exit.i
  %i.av = invoke { ptr, i64 } @_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr4heapNtB2_10HeapBuffer10alloc_copy(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ar, i64 noundef %i.at)
          to label %.noexc.i unwind label %.loopexit99, !noalias !7921, !inline_history !7895 ; 2 uses

.noexc.i:                                         ; preds = %bb.i
  %i.aw = extractvalue { ptr, i64 } %i.av, 0      ; 2 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %bb.w, label %bb.x, !prof !16

bb.j:                                             ; preds = %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8as_slice.exit.i
  %i.ay = shl nuw nsw i64 %i.at, 56
  %i.az = or disjoint i64 %i.ay, -4611686018427387904 ; 7 uses
  %i.ba = icmp samesign ugt i64 %i.at, 15
  br i1 %i.ba, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bb = icmp samesign ugt i64 %i.at, 7
  br i1 %i.bb, label %bb.n, label %bb.m

bb.l:                                             ; preds = %bb.j
  %.sroa.05.0.copyload.i.i.i = load i64, ptr %i.ar, align 1, !alias.scope !7926, !noalias !7927
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.sroa.07.0.copyload.i.i.i = load i64, ptr %i.bc, align 1, !alias.scope !7926, !noalias !7927
  %i.bd = icmp eq i64 %i.at, 16
  br i1 %i.bd, label %bb.v, label %bb.u

bb.m:                                             ; preds = %bb.k
  %i.be = icmp samesign ugt i64 %i.at, 3
  br i1 %i.be, label %bb.p, label %bb.o

bb.n:                                             ; preds = %bb.k
  %.sroa.011.0.copyload.i.i.i = load i64, ptr %i.ar, align 1, !alias.scope !7926, !noalias !7927 ; 2 uses
  %i.bf = icmp eq i64 %i.at, 8
  br i1 %i.bf, label %_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new.exit.i.i, label %bb.t

bb.o:                                             ; preds = %bb.m
  %i.bg = icmp samesign ugt i64 %i.at, 1
  br i1 %i.bg, label %bb.r, label %bb.q

bb.p:                                             ; preds = %bb.m
  %.sroa.015.0.copyload.i.i.i = load i32, ptr %i.ar, align 1, !alias.scope !7926, !noalias !7927
  %i.bh = zext i32 %.sroa.015.0.copyload.i.i.i to i64
  %i.bi = add nsw i64 %i.at, -4                   ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.bi
  %.sroa.017.0.copyload.i.i.i = load i32, ptr %i.bj, align 1, !alias.scope !7926, !noalias !7927
  %i.bk = zext i32 %.sroa.017.0.copyload.i.i.i to i64
  %i.bl = shl nuw nsw i64 %i.bi, 3
  %i.bm = shl nuw nsw i64 %i.bk, %i.bl
  %i.bn = or i64 %i.bm, %i.bh
  br label %_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new.exit.i.i

bb.q:                                             ; preds = %bb.o
  %i.bo = icmp eq i64 %i.at, 1
  br i1 %i.bo, label %bb.s, label %_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new.exit.i.i

bb.r:                                             ; preds = %bb.o
  %.sroa.019.0.copyload.i.i.i = load i16, ptr %i.ar, align 1, !alias.scope !7926, !noalias !7927
  %i.bp = zext i16 %.sroa.019.0.copyload.i.i.i to i64
  %i.bq = add nsw i64 %i.at, -2                   ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.bq
  %.sroa.021.0.copyload.i.i.i = load i16, ptr %i.br, align 1, !alias.scope !7926, !noalias !7927
  %i.bs = zext i16 %.sroa.021.0.copyload.i.i.i to i64
  %i.bt = shl nuw nsw i64 %i.bq, 3
  %i.bu = shl nuw nsw i64 %i.bs, %i.bt
  %i.bv = or i64 %i.bu, %i.bp
  br label %_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new.exit.i.i

bb.s:                                             ; preds = %bb.q
  %i.bw = load i8, ptr %i.ar, align 1, !alias.scope !7926, !noalias !7927, !noundef !14
  %i.bx = zext i8 %i.bw to i64
  br label %_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new.exit.i.i

bb.t:                                             ; preds = %bb.n
  %i.by = getelementptr i8, ptr %i.ar, i64 %i.at
  %i.bz = getelementptr i8, ptr %i.by, i64 -8
  %.sroa.013.0.copyload.i.i.i = load i64, ptr %i.bz, align 1, !alias.scope !7926, !noalias !7927
  %i.ca = shl nuw nsw i64 %i.at, 3
  %i.cb = sub nuw nsw i64 128, %i.ca
  %i.cc = lshr i64 %.sroa.013.0.copyload.i.i.i, %i.cb
  br label %_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new.exit.i.i

bb.u:                                             ; preds = %bb.l
  %i.cd = getelementptr i8, ptr %i.ar, i64 %i.at
  %i.ce = getelementptr i8, ptr %i.cd, i64 -8
  %.sroa.09.0.copyload.i.i.i = load i64, ptr %i.ce, align 1, !alias.scope !7926, !noalias !7927
  %.neg.i.i.i = mul nuw nsw i64 %i.at, 56
  %i.cf = and i64 %.neg.i.i.i, 56
  %i.cg = lshr i64 %.sroa.09.0.copyload.i.i.i, %i.cf
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.l
  %.sroa.0.1.i.i.i = phi i64 [ %i.cg, %bb.u ], [ 0, %bb.l ]
  %i.ch = icmp eq i64 %i.at, 24
  %i.ci = select i1 %i.ch, i64 0, i64 %i.az
  %spec.select.i.i.i = or i64 %.sroa.0.1.i.i.i, %i.ci
  br label %_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new.exit.i.i

_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new.exit.i.i: ; preds = %bb.v, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.n
  %.sroa.03.1.i.i.i = phi i64 [ %.sroa.07.0.copyload.i.i.i, %bb.v ], [ 0, %bb.n ], [ 0, %bb.q ], [ 0, %bb.p ], [ 0, %bb.r ], [ 0, %bb.s ], [ %i.cc, %bb.t ]
  %.sroa.02.0.i.i.i = phi i64 [ %.sroa.05.0.copyload.i.i.i, %bb.v ], [ %.sroa.011.0.copyload.i.i.i, %bb.n ], [ 0, %bb.q ], [ %i.bn, %bb.p ], [ %i.bv, %bb.r ], [ %i.bx, %bb.s ], [ %.sroa.011.0.copyload.i.i.i, %bb.t ]
  %.sroa.0.0.i.i8.i = phi i64 [ %spec.select.i.i.i, %bb.v ], [ %i.az, %bb.n ], [ %i.az, %bb.q ], [ %i.az, %bb.p ], [ %i.az, %bb.r ], [ %i.az, %bb.s ], [ %i.az, %bb.t ]
  %i.cj = inttoptr i64 %.sroa.02.0.i.i.i to ptr
  br label %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr9new_panic.exit.i

bb.w:                                             ; preds = %.noexc.i
  invoke void @_RINvCsg7m2K3K1Fzf_11compact_str20unwrap_with_msg_failNtB2_12ReserveErrorEB2_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #31
          to label %.noexc9.i unwind label %.loopexit.split-lp100, !noalias !7921, !inline_history !7895

.noexc9.i:                                        ; preds = %bb.w
  unreachable

bb.x:                                             ; preds = %.noexc.i
  %i.ck = extractvalue { ptr, i64 } %i.av, 1
  br label %_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr9new_panic.exit.i

_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr9new_panic.exit.i: ; preds = %_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new.exit.i.i, %bb.x, %bb.h
  %.sroa.081.0 = phi ptr [ %.sroa.081.0.copyload, %bb.h ], [ %i.aw, %bb.x ], [ %i.cj, %_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new.exit.i.i ]
  %.sroa.582.0 = phi i64 [ %.sroa.582.0.copyload, %bb.h ], [ %i.at, %bb.x ], [ %.sroa.03.1.i.i.i, %_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new.exit.i.i ]
  %.sroa.783.0 = phi i64 [ %.sroa.783.0.copyload, %bb.h ], [ %i.ck, %bb.x ], [ %.sroa.0.0.i.i8.i, %_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new.exit.i.i ]
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.021.0128, i64 24
  %i.cm = load i32, ptr %i.cl, align 8, !noalias !7921, !noundef !14
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.021.0128, i64 28
  %i.co = load i32, ptr %i.cn, align 4, !noalias !7921, !noundef !14
  br label %bb.g

bb.y:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7928)
  %i.cp = invoke noundef nonnull align 8 ptr @_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes28InterpolatedStringFormatSpecE13new_uninit_inCsoTR8nlGN3X_18ty_python_semantic()
          to label %.noexc11.i unwind label %bb.aa, !noalias !7921, !inline_history !7910 ; 5 uses

.noexc11.i:                                       ; preds = %bb.y
  %i.cq = load ptr, ptr %i.ap, align 8, !alias.scope !7928, !noalias !7921, !nonnull !14, !noundef !14 ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.cs = load <2 x i32>, ptr %i.cr, align 8, !noalias !7929
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  %i.cu = invoke noundef i32 @_RNvXsc_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noundef nonnull align 4 %i.ct)
          to label %.noexc18 unwind label %bb.z, !inline_history !7913

.noexc18:                                         ; preds = %.noexc11.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7930), !noalias !7931
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7932
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !alias.scope !7933, !noalias !7934, !nonnull !14, !noundef !14
  %i.cy = load i64, ptr %i.cv, align 8, !alias.scope !7933, !noalias !7934, !noundef !14
  invoke fastcc void @_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull align 8 %i.cx, i64 noundef %i.cy)
          to label %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes28InterpolatedStringFormatSpecENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsoTR8nlGN3X_18ty_python_semantic.exit.i unwind label %bb.z, !inline_history !7913

bb.z:                                             ; preds = %.noexc11.i, %.noexc18
  %i.cz = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cp, i64 noundef 40, i64 noundef 8) #34, !noalias !7931
  br label %.body.i

_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes28InterpolatedStringFormatSpecENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %.noexc18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cp, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !7931
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7932
  %.sroa.487.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  store <2 x i32> %i.cs, ptr %.sroa.487.0..sroa_idx, align 8, !noalias !7931
  %.sroa.689.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 32
  store i32 %i.cu, ptr %.sroa.689.0..sroa_idx, align 8, !noalias !7931
  br label %.noexc13

bb.aa:                                            ; preds = %bb.y
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.aa, %bb.z
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.da, %bb.aa ], [ %i.cz, %bb.z ] ; 2 uses
  %.sroa.674.23.extract.shift.mask = and i64 %.sroa.674.0, -72057594037927936
  %cond = icmp eq i64 %.sroa.674.23.extract.shift.mask, -2882303761517117440
  br i1 %cond, label %bb.ab, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DebugTextEECsoTR8nlGN3X_18ty_python_semantic.exit.i, !prof !54

bb.ab:                                            ; preds = %.body.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.072.0) ]
  invoke void @_RNvNvXs2_NtCsg7m2K3K1Fzf_11compact_str4reprNtB7_4ReprNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop13outlined_drop(ptr noundef nonnull %.sroa.072.0, i64 noundef %.sroa.674.0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DebugTextEECsoTR8nlGN3X_18ty_python_semantic.exit.i unwind label %bb.ac, !noalias !7921, !inline_history !7895

bb.ac:                                            ; preds = %bb.ab, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DebugTextEECsoTR8nlGN3X_18ty_python_semantic.exit.i
  %i.db = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32, !noalias !7921, !inline_history !7895
  unreachable

.noexc13:                                         ; preds = %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes28InterpolatedStringFormatSpecENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsoTR8nlGN3X_18ty_python_semantic.exit.i, %bb.g
  %.sroa.02.0.i = phi ptr [ null, %bb.g ], [ %i.cp, %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes28InterpolatedStringFormatSpecENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsoTR8nlGN3X_18ty_python_semantic.exit.i ]
  %.sroa.674.16.extract.trunc = trunc i64 %.sroa.674.0 to i32
  %.sroa.674.20.extract.shift = lshr i64 %.sroa.674.0, 32
  %.sroa.674.20.extract.trunc = trunc nuw i64 %.sroa.674.20.extract.shift to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7921
  br label %_RNvXsbH_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_25InterpolatedStringElementNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit

_RNvXsbH_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_25InterpolatedStringElementNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit: ; preds = %.noexc13, %.noexc12
  %.sroa.9.sroa.8.0 = phi i32 [ undef, %.noexc12 ], [ %i.ah, %.noexc13 ]
  %.sroa.9.sroa.7.0 = phi ptr [ undef, %.noexc12 ], [ %.sroa.02.0.i, %.noexc13 ]
  %.sroa.9.sroa.4.0 = phi ptr [ undef, %.noexc12 ], [ %i.ai, %.noexc13 ]
  %.sroa.9.sroa.0.0 = phi i32 [ undef, %.noexc12 ], [ %.sroa.1377.0, %.noexc13 ]
  %.sroa.935.0 = phi i8 [ 0, %.noexc12 ], [ %i.ao, %.noexc13 ]
  %.sroa.8.0 = phi i32 [ %i.aa, %.noexc12 ], [ %.sroa.1176.0, %.noexc13 ]
  %.sroa.729.0 = phi i32 [ %5, %.noexc12 ], [ %.sroa.674.20.extract.trunc, %.noexc13 ]
  %.sroa.6.0 = phi i32 [ %3, %.noexc12 ], [ %.sroa.674.16.extract.trunc, %.noexc13 ]
  %.sroa.524.0 = phi i64 [ %i.ad, %.noexc12 ], [ %.sroa.573.0, %.noexc13 ]
  %.sroa.022.0 = phi ptr [ %i.ac, %.noexc12 ], [ %.sroa.072.0, %.noexc13 ]
  %i.dc = phi <2 x i32> [ undef, %.noexc12 ], [ %i.af, %.noexc13 ]
  %i.dd = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %.sroa.7.0126 ; 11 uses
  store ptr %.sroa.022.0, ptr %i.dd, align 8
  %.sroa.457.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store i64 %.sroa.524.0, ptr %.sroa.457.0..sroa_idx, align 8
  %.sroa.558.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  store i32 %.sroa.6.0, ptr %.sroa.558.0..sroa_idx.a, align 8
  %.sroa.659.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 20
  store i32 %.sroa.729.0, ptr %.sroa.659.0..sroa_idx, align 4
  %.sroa.760.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  store i32 %.sroa.8.0, ptr %.sroa.760.0..sroa_idx, align 8
  %.sroa.861.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 28
  store i32 %.sroa.9.sroa.0.0, ptr %.sroa.861.0..sroa_idx, align 4
  %.sroa.861.sroa.4.0..sroa.861.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 32
  store ptr %.sroa.9.sroa.4.0, ptr %.sroa.861.sroa.4.0..sroa.861.0..sroa_idx.sroa_idx, align 8
  %.sroa.861.sroa.5.0..sroa.861.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 40
  store <2 x i32> %i.dc, ptr %.sroa.861.sroa.5.0..sroa.861.0..sroa_idx.sroa_idx, align 8
  %.sroa.861.sroa.7.0..sroa.861.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 48
  store ptr %.sroa.9.sroa.7.0, ptr %.sroa.861.sroa.7.0..sroa.861.0..sroa_idx.sroa_idx, align 8
  %.sroa.861.sroa.8.0..sroa.861.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 56
  store i32 %.sroa.9.sroa.8.0, ptr %.sroa.861.sroa.8.0..sroa.861.0..sroa_idx.sroa_idx, align 8
  %.sroa.962.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 60
  store i8 %.sroa.935.0, ptr %.sroa.962.0..sroa_idx, align 4
  %i.de = icmp eq i64 %i.r, 0
  br i1 %i.de, label %.thread, label %.lr.ph

bb.ad:                                            ; preds = %bb.ae
  %i.df = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32
  unreachable

bb.ae:                                            ; preds = %.loopexit, %bb.f, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DebugTextEECsoTR8nlGN3X_18ty_python_semantic.exit.i
  %eh.lpad-body = phi { ptr, i32 } [ %.pn.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DebugTextEECsoTR8nlGN3X_18ty_python_semantic.exit.i ], [ %i.al, %bb.f ], [ %lpad.loopexit, %.loopexit ]
  store i64 %.sroa.7.0126, ptr %i.o, align 8
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementEECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef align 8 dereferenceable(24) %i.e) #33
          to label %bb.af unwind label %bb.ad

bb.af:                                            ; preds = %bb.ae
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvXs6_NtNtCs33Yq3JqQgDT_9get_size25impls11collectionsINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeENtBa_7GetSize26get_heap_size_with_trackerNtNtBa_7tracker15StandardTrackerECsoTR8nlGN3X_18ty_python_semantic(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 56)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !24, !noundef !14
  %i.b = shl i64 %i.a, 2
  store i64 %i.b, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { i64, ptr } @_RINvXs6_NtNtCs33Yq3JqQgDT_9get_size25impls11collectionsINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeENtBa_7GetSize26get_heap_size_with_trackerQNtNtBa_7tracker15StandardTrackerECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(48) %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !24, !noundef !14
  %i.b = shl i64 %i.a, 2
  %i.c = insertvalue { i64, ptr } poison, i64 %i.b, 0
  %i.d = insertvalue { i64, ptr } %i.c, ptr %1, 1
  ret { i64, ptr } %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs6_NtNtCs33Yq3JqQgDT_9get_size25impls11collectionsINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10AnnotationENtBa_7GetSize26get_heap_size_with_trackerNtNtBa_7tracker15StandardTrackerECsoTR8nlGN3X_18ty_python_semantic(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %.sroa.6.i = alloca [48 x i8], align 8          ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !14, !noundef !14
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !14 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.010.0.i = phi i64 [ 0, %bb.b ], [ %i.k, %bb.c ]
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.l, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7942
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.i, i64 48, i1 false)
  %i.i = getelementptr inbounds nuw [80 x i8], ptr %i.d, i64 %.sroa.01.0.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7943
  call void @_RINvXs19_NtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB7_10AnnotationNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtB10_7tracker15StandardTrackerECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.b), !noalias !7944
  %i.j = load i64, ptr %i.a, align 8, !noalias !7942, !noundef !14
  %i.k = add i64 %i.j, %.sroa.010.0.i             ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7942
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7943
  %i.l = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.m = icmp eq i64 %i.l, %i.f
  br i1 %i.m, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %bb.c, %bb.a
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %i.k, %bb.c ]
  %i.n = load i64, ptr %1, align 8, !range !24, !noundef !14
  %i.o = mul i64 %i.n, 80
  %i.p = add i64 %i.o, %.sroa.0.0
  store i64 %i.p, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.q, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.i, i64 48, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvXs6_NtNtCs33Yq3JqQgDT_9get_size25impls11collectionsINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10AnnotationENtBa_7GetSize26get_heap_size_with_trackerQNtNtBa_7tracker15StandardTrackerECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(48) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !14, !noundef !14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !14 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10AnnotationENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTjQNtNtCs33Yq3JqQgDT_9get_size27tracker15StandardTrackerENCINvXs6_NtNtB2w_5impls11collectionsINtNtCscdodAO9FK5_5alloc3vec3VecBQ_ENtB2w_7GetSize26get_heap_size_with_trackerB2r_E0ECsoTR8nlGN3X_18ty_python_semantic.exit, label %.preheader

.preheader:                                       ; preds = %bb.a, %.preheader
  %.sroa.05.0.i = phi i64 [ %i.k, %.preheader ], [ 0, %bb.a ] ; 2 uses
  %.sroa.6.0.i = phi ptr [ %i.i, %.preheader ], [ %1, %bb.a ]
  %.sroa.02.0.i = phi i64 [ %i.j, %.preheader ], [ 0, %bb.a ]
  %i.f = getelementptr inbounds nuw [80 x i8], ptr %i.b, i64 %.sroa.05.0.i
  %i.g = tail call { i64, ptr } @_RINvXs19_NtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB7_10AnnotationNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerQNtNtB10_7tracker15StandardTrackerECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(48) %.sroa.6.0.i) ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.g, 0
  %i.i = extractvalue { i64, ptr } %i.g, 1        ; 3 uses
  %i.j = add i64 %i.h, %.sroa.02.0.i              ; 2 uses
  %i.k = add nuw i64 %.sroa.05.0.i, 1             ; 2 uses
  %i.l = icmp eq i64 %i.k, %i.d
  br i1 %i.l, label %bb.b, label %.preheader

bb.b:                                             ; preds = %.preheader
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.i) ]
  br label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10AnnotationENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTjQNtNtCs33Yq3JqQgDT_9get_size27tracker15StandardTrackerENCINvXs6_NtNtB2w_5impls11collectionsINtNtCscdodAO9FK5_5alloc3vec3VecBQ_ENtB2w_7GetSize26get_heap_size_with_trackerB2r_E0ECsoTR8nlGN3X_18ty_python_semantic.exit

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10AnnotationENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTjQNtNtCs33Yq3JqQgDT_9get_size27tracker15StandardTrackerENCINvXs6_NtNtB2w_5impls11collectionsINtNtCscdodAO9FK5_5alloc3vec3VecBQ_ENtB2w_7GetSize26get_heap_size_with_trackerB2r_E0ECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.a, %bb.b
  %.pn.i = phi i64 [ %i.j, %bb.b ], [ 0, %bb.a ]
  %.pn18.i = phi ptr [ %i.i, %bb.b ], [ %1, %bb.a ]
  %i.m = load i64, ptr %0, align 8, !range !24, !noundef !14
  %i.n = mul i64 %i.m, 80
  %i.o = add i64 %i.n, %.pn.i
  %i.p = insertvalue { i64, ptr } poison, i64 %i.o, 0
  %i.q = insertvalue { i64, ptr } %i.p, ptr %.pn18.i, 1
  ret { i64, ptr } %i.q
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs6_NtNtCs33Yq3JqQgDT_9get_size25impls11collectionsINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticENtBa_7GetSize26get_heap_size_with_trackerNtNtBa_7tracker15StandardTrackerECsoTR8nlGN3X_18ty_python_semantic(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %.sroa.6.i = alloca [48 x i8], align 8          ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !14, !noundef !14
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !14 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.010.0.i = phi i64 [ 0, %bb.b ], [ %i.k, %bb.c ]
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.l, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7952
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.i, i64 48, i1 false)
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.sroa.01.0.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7953
  call void @_RINvXsH_NtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB6_10DiagnosticNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerNtNtBZ_7tracker15StandardTrackerECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.b), !noalias !7954
  %i.j = load i64, ptr %i.a, align 8, !noalias !7952, !noundef !14
  %i.k = add i64 %i.j, %.sroa.010.0.i             ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7952
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7953
  %i.l = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.m = icmp eq i64 %i.l, %i.f
  br i1 %i.m, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %bb.c, %bb.a
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %i.k, %bb.c ]
  %i.n = load i64, ptr %1, align 8, !range !24, !noundef !14
  %i.o = shl i64 %i.n, 3
  %i.p = add i64 %i.o, %.sroa.0.0
  store i64 %i.p, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.q, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.i, i64 48, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvXs6_NtNtCs33Yq3JqQgDT_9get_size25impls11collectionsINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticENtBa_7GetSize26get_heap_size_with_trackerQNtNtBa_7tracker15StandardTrackerECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(48) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !14, !noundef !14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !14 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTjQNtNtCs33Yq3JqQgDT_9get_size27tracker15StandardTrackerENCINvXs6_NtNtB2w_5impls11collectionsINtNtCscdodAO9FK5_5alloc3vec3VecBQ_ENtB2w_7GetSize26get_heap_size_with_trackerB2r_E0ECsoTR8nlGN3X_18ty_python_semantic.exit, label %.preheader

.preheader:                                       ; preds = %bb.a, %.preheader
  %.sroa.05.0.i = phi i64 [ %i.k, %.preheader ], [ 0, %bb.a ] ; 2 uses
  %.sroa.6.0.i = phi ptr [ %i.i, %.preheader ], [ %1, %bb.a ]
  %.sroa.02.0.i = phi i64 [ %i.j, %.preheader ], [ 0, %bb.a ]
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.05.0.i
  %i.g = tail call { i64, ptr } @_RINvXsH_NtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB6_10DiagnosticNtCs33Yq3JqQgDT_9get_size27GetSize26get_heap_size_with_trackerQNtNtBZ_7tracker15StandardTrackerECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(48) %.sroa.6.0.i) ; 2 uses
end_hunk_0
