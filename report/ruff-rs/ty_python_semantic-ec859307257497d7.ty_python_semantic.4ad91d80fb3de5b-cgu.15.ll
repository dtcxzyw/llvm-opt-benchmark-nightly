Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_python_semantic-ec859307257497d7.ty_python_semantic.4ad91d80fb3de5b-cgu.15?download=true
inline.NumInlined: 7229
inline.NumDeleted: 2860
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 41
begin_hunk_0_@_RNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal27expanded_class_base_entries:bb.a
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #51
  unreachable

bb.ad:                                            ; preds = %thread-pre-split
  store i32 1, ptr %i.ak, align 4
  store i32 4, ptr %i.g, align 8
  br label %bb.af

bb.ae:                                            ; preds = %.thread, %thread-pre-split
  invoke void @_RNvNtCsoTR8nlGN3X_18ty_python_semantic5types26definition_expression_type(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.g, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, i32 noundef %5, i32 noundef %6, ptr noundef nonnull align 8 %.sroa.05.053)
          to label %bb.af unwind label %bb.s

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %i.cf = load i64, ptr %i.aa, align 8, !alias.scope !8724, !noalias !8727, !noundef !3 ; 3 uses
  %i.cg = load i64, ptr %i.j, align 8, !range !2962, !alias.scope !8724, !noalias !8727, !noundef !3
  %i.ch = icmp eq i64 %i.cf, %i.cg
  br i1 %i.ch, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal22ExpandedClassBaseEntryE8grow_oneBT_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %bb.ah unwind label %bb.s

bb.ah:                                            ; preds = %bb.af, %bb.ag
  %i.ci = load ptr, ptr %i.z, align 8, !alias.scope !8724, !noalias !8727, !nonnull !3, !noundef !3
  %i.cj = getelementptr inbounds nuw [24 x i8], ptr %i.ci, i64 %i.cf ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cj, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false)
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  store ptr %.sroa.05.053, ptr %.sroa.445.0..sroa_idx, align 8
  %i.ck = add i64 %i.cf, 1
  store i64 %i.ck, ptr %i.aa, align 8, !alias.scope !8724, !noalias !8727
  br label %.backedge

bb.ai:                                            ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder8function27parameters_have_annotations(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_10Parameters24iter_non_variadic_params(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.a, ptr noundef nonnull align 8 %0)
  %i.b = call noundef zeroext i1 @_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEB14_EB14_ENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB2G_3any5checkRB1u_NCNvNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder8function27parameters_have_annotations0E0INtNtNtBb_3ops12control_flow11ControlFlowuEEB40_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.b, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !align !8, !noundef !3 ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !align !8, !noundef !3
  %.not3 = icmp eq ptr %i.f, null
  br i1 %.not3, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !align !8, !noundef !3 ; 2 uses
  %.not4 = icmp eq ptr %i.h, null
  br i1 %.not4, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !align !8, !noundef !3
  %i.k = icmp ne ptr %i.j, null
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.c, %bb.e, %bb.d
  %.sroa.0.1 = phi i1 [ false, %bb.d ], [ %i.k, %bb.e ], [ true, %bb.c ], [ true, %bb.a ]
  ret i1 %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9enum_call15enum_names_type(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 4 captures(address) dereferenceable(16) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 4                ; 7 uses
  %i.b = alloca [32 x i8], align 4                ; 6 uses
  %i.c = alloca [16 x i8], align 4                ; 4 uses
  %i.d = alloca [16 x i8], align 4                ; 4 uses
  %i.e = alloca [16 x i8], align 4                ; 4 uses
  %i.f = alloca [16 x i8], align 4                ; 5 uses
  %i.g = alloca [16 x i8], align 4                ; 4 uses
  %i.h = alloca [16 x i8], align 4                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11to_instance(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.h, i8 noundef 9, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @588)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.g, ptr noundef nonnull align 4 dereferenceable(16) %i.h, i64 16, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB3_10KnownClass23to_specialized_instanceRANtB7_4Typej1_EB9_(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.i, i8 noundef 72, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @589)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i32 18, ptr %i.f, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 5, ptr %.sroa.4.0..sroa_idx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RINvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB3_10KnownClass23to_specialized_instanceRANtB7_4Typej1_EB9_(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.d, i8 noundef 72, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @590)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RINvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB3_10KnownClass23to_specialized_instanceRANtB7_4Typej1_EB9_(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.e, i8 noundef 72, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @591)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11to_instance(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.b, i8 noundef 9, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @592)
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 18, ptr %i.j, align 4
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i32 5, ptr %.sroa.42.0..sroa_idx, align 4
  call void @_RINvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB3_10KnownClass23to_specialized_instanceRANtB7_4Typej2_EB9_(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.c, i8 noundef 76, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(32) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @593)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %i.h, i64 16, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.k, ptr noundef nonnull align 4 dereferenceable(16) %i.e, i64 16, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.l, ptr noundef nonnull align 4 dereferenceable(16) %i.c, i64 16, i1 false)
  call void @_RINvMsg_NtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoreticNtB6_9UnionType13from_elementsANtB8_4Typej4_B1x_EBa_(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %0, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, ptr noundef nonnull align 4 %3, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(64) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9enum_call15next_auto_value(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 4 captures(address) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1, i8 noundef range(i8 0, 108) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4, i64 noundef range(i64 0, 2) %5, i64 %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %.val = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3 ; 4 uses
  %i.b = getelementptr i8, ptr %1, i64 8
  %.val12 = load ptr, ptr %i.b, align 8, !nonnull !3, !align !8, !noundef !3 ; 4 uses
  %i.c = getelementptr i8, ptr %1, i64 16
  %.val13 = load ptr, ptr %i.c, align 8, !nonnull !3, !align !7, !noundef !3 ; 3 uses
  %i.d = icmp eq i8 %2, 33
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc3stre12to_lowercase(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !3
  invoke void @_RINvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB7_4Type14string_literalReEB9_(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %0, ptr noundef nonnull %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val12, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef %i.h)
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = trunc nuw i64 %5 to i1
  br i1 %i.i, label %bb.i, label %bb.j

bb.d:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #50
          to label %common.resume unwind label %bb.h

bb.e:                                             ; preds = %bb.b
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsoTR8nlGN3X_18ty_python_semantic.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #51
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.f ], [ %i.j, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.e
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.s

bb.h:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #51
  unreachable

bb.i:                                             ; preds = %bb.c
  %.off = add nsw i8 %2, -35
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.c
  tail call void @_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11to_instance(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %0, i8 noundef 6, ptr noundef nonnull %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val12, ptr noundef nonnull align 4 %.val13, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @594)
  br label %bb.s

bb.k:                                             ; preds = %bb.i
  %7 = icmp eq i64 %6, 9223372036854775807
  br i1 %7, label %bb.r, label %bb.q, !prof !77

bb.l:                                             ; preds = %bb.i
  %i.n = icmp slt i64 %6, 1
  br i1 %i.n, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.o = tail call range(i64 1, 65) i64 @llvm.ctlz.i64(i64 %6, i1 true) ; 2 uses
  %.not = icmp eq i64 %i.o, 1
  br i1 %.not, label %bb.o, label %bb.p

bb.n:                                             ; preds = %bb.l
  tail call void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type11int_literal(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %0, i64 noundef 1)
  br label %bb.s

bb.o:                                             ; preds = %bb.m
  tail call void @_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11to_instance(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %0, i8 noundef 6, ptr noundef nonnull %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val12, ptr noundef nonnull align 4 %.val13, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @432), !noalias !8729
  br label %bb.s

bb.p:                                             ; preds = %bb.m
  %i.p = sub nuw nsw i64 64, %i.o
  %i.q = shl nuw nsw i64 1, %i.p
  tail call void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type11int_literal(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %0, i64 noundef %i.q)
  br label %bb.s

bb.q:                                             ; preds = %bb.k
  %8 = add nsw i64 %6, 1
  tail call void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type11int_literal(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %0, i64 noundef %8)
  br label %bb.s

bb.r:                                             ; preds = %bb.k
  tail call void @_RNvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB2_10KnownClass11to_instance(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %0, i8 noundef 6, ptr noundef nonnull %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val12, ptr noundef nonnull align 4 %.val13, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @431), !noalias !8732
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r, %bb.o, %bb.p, %bb.n, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsoTR8nlGN3X_18ty_python_semantic.exit, %bb.j
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9enum_call23enum_members_from_names(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %2, i64 noundef range(i64 0, 2) %3, i64 %4, i8 noundef range(i8 0, 108) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 8 uses
  %i.d = alloca [16 x i8], align 4                ; 9 uses
  %i.e = alloca [16 x i8], align 8                ; 12 uses
  %.sroa.5 = alloca [15 x i8], align 8            ; 6 uses
  %i.f = alloca [40 x i8], align 8                ; 9 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !3 ; 5 uses
  %i.j = icmp ult i64 %i.i, 576460752303423488
  tail call void @llvm.assume(i1 %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 32)
          to label %bb.b unwind label %bb.ag

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.b, align 8, !range !3205, !noundef !3
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !5731, !noundef !3 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.l, label %bb.c, label %bb.d, !prof !77

bb.c:                                             ; preds = %bb.b
  %i.p = load i64, ptr %i.o, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.n, i64 %i.p) #52
          to label %bb.ae unwind label %bb.ag

bb.d:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %i.o, align 8, !nonnull !3, !noundef !3
  %i.r = icmp samesign ule i64 %i.i, %i.n
  tail call void @llvm.assume(i1 %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.n, ptr %i.g, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %i.q, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store i64 0, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !3, !noundef !3 ; 4 uses
  %i.w = load i64, ptr %2, align 8, !range !2962, !noundef !3
  %.idx = shl nuw nsw i64 %i.i, 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %.idx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.v, ptr %i.f, align 8
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  store ptr %i.v, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.w, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  store ptr %i.x, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 3 uses
  store i64 0, ptr %.sroa.2.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %i.y = icmp eq i64 %i.i, 0
  br i1 %i.y, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit.i._crit_edge, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit.i.lr.ph

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit.i.lr.ph: ; preds = %bb.d
  %.sroa.7.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 15 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.aa = getelementptr i8, ptr %1, i64 8
  %i.ab = getelementptr i8, ptr %1, i64 16
  %i.ac = icmp eq i8 %5, 33
  %i.ad = trunc nuw i64 %3 to i1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %.sroa.523.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit.i

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit.i.lr.ph, %bb.z
  %i.ah = phi ptr [ %i.v, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit.i.lr.ph ], [ %i.cd, %bb.z ] ; 3 uses
  %.sroa.3.042 = phi i64 [ undef, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit.i.lr.ph ], [ %.sroa.4.1.i, %bb.z ]
  %.sroa.0.041 = phi i64 [ 0, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit.i.lr.ph ], [ %.sroa.0.1.i, %bb.z ]
  call void @llvm.experimental.noalias.scope.decl(metadata !8735)
  call void @llvm.experimental.noalias.scope.decl(metadata !8738)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store ptr %i.ai, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8, !alias.scope !8741, !noalias !8742
  %.sroa.5.0..sroa_idx1.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 15
  %.sroa.5.0.copyload2.i = load i8, ptr %.sroa.5.0..sroa_idx1.i, align 1, !noalias !8745 ; 8 uses
  %.not.i = icmp eq i8 %.sroa.5.0.copyload2.i, -1
  br i1 %.not.i, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit.i._crit_edge, label %bb.e

.body:                                            ; preds = %bb.ab, %bb.aa, %bb.ac, %bb.x, %bb.w, %bb.v
  %.pn = phi { ptr, i32 } [ %i.bs, %bb.x ], [ %eh.lpad-body.ph, %bb.ab ], [ %i.bs, %bb.v ], [ %i.bs, %bb.w ], [ %eh.lpad-body.ph, %bb.ac ], [ %eh.lpad-body.ph, %bb.aa ]
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.f)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameEEECsoTR8nlGN3X_18ty_python_semantic.exit unwind label %bb.ad

bb.e:                                             ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(15) %i.ah, i64 15, i1 false), !noalias !8735
  %i.aj = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !8735, !noalias !8746, !noundef !3 ; 2 uses
  %i.ak = add i64 %i.aj, 1
  store i64 %i.ak, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !8735, !noalias !8746
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.e, ptr noundef nonnull align 8 dereferenceable(15) %.sroa.5, i64 15, i1 false)
  store i8 %.sroa.5.0.copyload2.i, ptr %.sroa.7.8..sroa_idx, align 1
  %i.al = icmp eq i64 %i.aj, 0
  br i1 %i.al, label %bb.h, label %bb.s

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit.i._crit_edge: ; preds = %bb.z, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.f)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameEEECsoTR8nlGN3X_18ty_python_semantic.exit9 unwind label %bb.f

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameEEECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %.body, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %i.am, %bb.f ], [ %.pn, %.body ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEEB1V_(ptr noalias noundef align 8 dereferenceable(24) %i.g) #50
          to label %bb.af unwind label %bb.ad

bb.f:                                             ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit.i._crit_edge
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameEEECsoTR8nlGN3X_18ty_python_semantic.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameEEECsoTR8nlGN3X_18ty_python_semantic.exit9: ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsoTR8nlGN3X_18ty_python_semantic.exit.i._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

bb.g:                                             ; preds = %bb.q, %bb.p, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsoTR8nlGN3X_18ty_python_semantic.exit.i, %bb.i, %bb.s
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.h:                                             ; preds = %bb.e
  %.val.i = load ptr, ptr %1, align 8, !noalias !8747, !nonnull !3, !noundef !3 ; 2 uses
  %.val3.i = load ptr, ptr %i.aa, align 8, !noalias !8747, !nonnull !3, !align !8, !noundef !3 ; 2 uses
  %.val4.i = load ptr, ptr %i.ab, align 8, !noalias !8747, !nonnull !3, !align !7, !noundef !3
  br i1 %i.ac, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ao = icmp ugt i8 %.sroa.5.0.copyload2.i, -49
  %i.ap = load ptr, ptr %i.e, align 8, !alias.scope !8751
  %.sroa.01.0.i = select i1 %i.ao, ptr %i.ap, ptr %i.e
  %i.aq = icmp ult i8 %.sroa.5.0.copyload2.i, -48
  %i.ar = zext i8 %.sroa.5.0.copyload2.i to i64
  %i.as = add nsw i64 %i.ar, -192
  %spec.store.select.i = call i64 @llvm.umin.i64(i64 %i.as, i64 16)
  %i.at = load i64, ptr %i.z, align 8, !alias.scope !8751, !noundef !3
  %i.au = and i64 %i.at, 72057594037927935
  %.sroa.0.0.i = select i1 %i.aq, i64 %spec.store.select.i, i64 %i.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8747
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc3stre12to_lowercase(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.01.0.i, i64 noundef range(i64 -192, 72057594037927936) %.sroa.0.0.i)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.i
  %i.av = load ptr, ptr %i.ae, align 8, !noalias !8747, !nonnull !3, !noundef !3
  %i.aw = load i64, ptr %i.af, align 8, !noalias !8747, !noundef !3
  invoke void @_RINvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB7_4Type14string_literalReEB9_(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.d, ptr noundef nonnull %.val.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val3.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.av, i64 noundef %i.aw)
          to label %bb.l unwind label %bb.k

bb.j:                                             ; preds = %bb.h
  br i1 %i.ad, label %bb.p, label %bb.q

bb.k:                                             ; preds = %.noexc
  %i.ax = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #50
          to label %bb.aa unwind label %bb.o, !noalias !8754

bb.l:                                             ; preds = %.noexc
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsoTR8nlGN3X_18ty_python_semantic.exit.i unwind label %bb.m, !noalias !8754

bb.m:                                             ; preds = %bb.l
  %i.ay = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.aa unwind label %bb.n, !noalias !8754

bb.n:                                             ; preds = %bb.m
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #51, !noalias !8754
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %bb.l
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.noexc13 unwind label %bb.g

.noexc13:                                         ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsoTR8nlGN3X_18ty_python_semantic.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8747
end_hunk_0
begin_hunk_1_@_RNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB4_17CodeGeneratorKind45synthesizes_constructor_signature_from_fields
declare hidden noundef zeroext i1 @_RNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB4_17CodeGeneratorKind45synthesizes_constructor_signature_from_fields(ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(12), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), i32 noundef range(i32 1, 0), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type4none(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 4 captures(address) dereferenceable(16), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noundef nonnull align 4) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB5_4Type19heterogeneous_tupleINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB1t_6filter6FilterINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtB5_5class5FieldENCNvMsp_NtB42_14static_literalNtB4s_18StaticClassLiteral22own_synthesized_members6_0ENCB4m_s7_0EBT_EB7_(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 4 captures(none) dereferenceable(16), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noundef nonnull align 4, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple34synthesize_namedtuple_class_memberINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtCs5e9M2GLoJMY_8indexmap3map4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB4_5FieldENCNvMsp_NtB4_14static_literalNtB4d_18StaticClassLiteral22own_synthesized_members4_0EEB8_(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 4 captures(address) dereferenceable(16), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noundef nonnull align 4, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(16), ptr noundef nonnull, ptr noundef, i32 noundef, i32) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class10typed_dict28synthesize_typed_dict_methodNCNvMsp_NtB4_14static_literalNtB1F_18StaticClassLiteral22own_synthesized_membersa_0EB8_(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 4 captures(none) dereferenceable(16), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noundef nonnull align 4, ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(12), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i32, i32 } @_RNvMsi_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB5_15DataclassParams23from_transformer_params(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), i32 noundef range(i32 1, 0), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs_NtCs2O29vuvTAEJ_14ty_python_core12ast_node_refINtB4_10AstNodeRefNtNtCskLngH8kgpZI_15ruff_python_ast9generated12StmtClassDefE4nodeCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXsp_CsaSrGj5dYoxL_8thin_vecRINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iterCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RINvMs9_NvNtCsoTR8nlGN3X_18ty_python_semantic5typess8_1__NtB8_15DataclassParams16field_specifiersDNtNtBa_2db2DbEL_EBa_(i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i32, i32 } @_RINvMs9_NvNtCsoTR8nlGN3X_18ty_python_semantic5typess8_1__NtB8_15DataclassParams3newDNtNtBa_2db2DbEL_NtB8_14DataclassFlagsRSNtB8_4TypeEBa_(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), i16 noundef, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types9dedicated8pydanticNtB4_13ModelMetadata9is_frozen(i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterTNtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state18ScopedDefinitionIdNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCsoTR8nlGN3X_18ty_python_semantic5types14TypeQualifiersNtNtB2r_10definition10DefinitionEENCNvMsp_NtNtB4l_5class14static_literalNtB5W_18StaticClassLiteral24own_annotated_qualifierss_0ETB3A_B4j_B5g_EEB4n_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs8_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB5_9UseDefMap29reachable_symbol_declarations(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(152), i32 noundef range(i32 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXse_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB5_20DeclarationsIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr dead_on_unwind noalias noundef writable sret([20 x i8]) align 4 captures(none) dereferenceable(20), ptr noalias noundef align 8 dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef range(i8 0, 3) i8 @_RNvXNtCsoTR8nlGN3X_18ty_python_semantic12reachabilityNtNtCs2O29vuvTAEJ_14ty_python_core24reachability_constraints23ReachabilityConstraintsNtB2_32ReachabilityConstraintsExtension8evaluate(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtCsoTR8nlGN3X_18ty_python_semantic5types20inferred_declaration(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 4 captures(address) dereferenceable(32), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), i32 noundef range(i32 1, 0), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsg_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literalNtB5_19DynamicClassLiteral16own_class_member(ptr dead_on_unwind noalias noundef writable sret([36 x i8]) align 4 captures(none) dereferenceable(36), i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i32, i32 } @_RINvMs9_NvNtCs2O29vuvTAEJ_14ty_python_core12program_file1__NtB8_11ProgramFile11python_fileDNtNtCsoTR8nlGN3X_18ty_python_semantic2db2DbEL_EB1v_(i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DecoratorE8data_rawCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB5_17CallableSignature14from_overloadsINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtB1H_3map3MapINtNtNtB1L_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameENCNvMsp_NtNtB7_5class14static_literalNtB44_18StaticClassLiteral36own_frozen_dataclass_subclass_methods_0EINtNtNtB1L_5array4iter8IntoIterNtB5_9SignatureKj1_EEEB9_(ptr dead_on_unwind noalias noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(136)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i32, i32 } @_RINvMs9_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable1__NtB8_12CallableType3newDNtNtBc_2db2DbEL_NtNtBa_10signatures17CallableSignatureNtB8_16CallableTypeKindNtB8_26CallableFunctionProvenanceEBc_(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(80), i8 noundef range(i8 0, 6), i8 noundef range(i8 0, 3)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs8_NtCs5e9M2GLoJMY_8indexmap3setINtB6_8IndexSetNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEINtNtNtNtB1C_4iter6traits7collect6ExtendBO_E6extendINtNtNtB34_8adapters3map3MapINtNtB3R_6filter6FilterINtNtNtB8_3map4iter4IterBO_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5FieldENCNvMsp_NtB54_14static_literalNtB66_18StaticClassLiteral45inherited_non_slotted_frozen_dataclass_fields0ENCB60_s_0EEB58_(ptr noalias noundef align 8 dereferenceable(56), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCs5e9M2GLoJMY_8indexmap3set4iterINtB6_8IndexSetNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEENtNtNtNtB1H_4iter6traits7collect12IntoIterator9into_iterCsoTR8nlGN3X_18ty_python_semantic(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RINvXsb_NtNtCscdodAO9FK5_5alloc5boxed4iterINtB8_3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorBP_E9from_iterINtNtNtB1G_8adapters3map3MapINtNtNtBa_3vec9into_iter8IntoIterINtCs5e9M2GLoJMY_8indexmap6BucketBP_uEENvMs0_B3P_B3M_3keyEECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i32, i32 } @_RNvMs_NtCs2O29vuvTAEJ_14ty_python_core5scopeNtB4_7ScopeId4file(i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5enums13enum_metadata(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noalias noundef readonly align 4 captures(address) dead_on_return dereferenceable(12)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvMs4_NtCs45bxiIjzMqg_5salsa8revisionNtB5_22OptionalAtomicRevision16compare_exchange(ptr noundef nonnull align 8, i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsoTR8nlGN3X_18ty_python_semantic(ptr noundef, ptr noundef, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #46

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr14memchr_aligned(i8 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs5_NvNtCs56aZGHL6Dc6_7ruff_db5files1__NtB8_4File4pathDNtNtCsoTR8nlGN3X_18ty_python_semantic2db2DbEL_EBZ_(i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs2_NtCs56aZGHL6Dc6_7ruff_db5filesNtB5_4File7is_stub(i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(168)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvNtCsoTR8nlGN3X_18ty_python_semantic5place13is_reexported(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), i32 noundef range(i32 1, 0), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i8 0, 3) i8 @_RNvNtCsoTR8nlGN3X_18ty_python_semantic12reachability21evaluate_reachability(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(152), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef range(i32 1, 0) i32 @_RNvMs0_Cs2O29vuvTAEJ_14ty_python_coreNtB5_13SemanticIndex10node_scope(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(400), i64 noundef range(i64 0, 12), ptr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i32, i32 } @_RNvMs0_NtCs2O29vuvTAEJ_14ty_python_core5scopeNtB5_11FileScopeId11to_scope_id(i32 noundef range(i32 1, 0), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192), i32 noundef range(i32 1, 0), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE4withNCINvBW_6attachRSNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameDNtNtCsoTR8nlGN3X_18ty_python_semantic2db2DbEL_NCNvNtNtB2J_5place16implicit_globals25module_type_symbols_inner0E0B1T_EB2J_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i32, i32 } @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE4withNCINvBW_6attachINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdEDNtNtCsoTR8nlGN3X_18ty_python_semantic2db2DbEL_NCNvNtNtB3n_5place16implicit_globals28module_type_body_scope_inner0E0B1T_EB3n_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvCsoTR8nlGN3X_18ty_python_semantic16module_docstring(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), i32 noundef range(i32 1, 0), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type25member_lookup_with_policy(ptr dead_on_unwind noalias noundef writable sret([36 x i8]) align 4 captures(address) dereferenceable(36), ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(16), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noundef nonnull align 4, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, i8 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs3_NtNtCscdodAO9FK5_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseE6removeB1a_(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 4 captures(none) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(32), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 4 ptr @_RNvMs3_NtNtCscdodAO9FK5_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseE13push_back_mutB1a_(ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtB7_11collections9vec_deque8VecDequeNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseEE6retainNCNvNtB1o_3mro8c3_merge0EB1q_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs3_NtNtCscdodAO9FK5_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_base9ClassBaseE12pop_front_ifNCNvNtB19_3mro8c3_merges0_0EB1b_(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 4 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_9ClassType8is_final(ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(12), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs15_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_12ClassLiteral9metaclass(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 4 captures(address) dereferenceable(16), ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(12), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type13to_class_type(ptr dead_on_unwind noalias noundef writable sret([12 x i8]) align 4 captures(none) dereferenceable(12), ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(16), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type13nominal_class(ptr dead_on_unwind noalias noundef writable sret([12 x i8]) align 4 captures(address) dereferenceable(12), ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(16), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noundef nonnull align 4) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_9ClassType27is_subtype_of_class_literal(ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(12), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noalias noundef readonly align 4 captures(address) dead_on_return dereferenceable(12)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMsl_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8relationNtB7_4Type13is_subtype_of(ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(16), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noundef nonnull align 4, ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_13TypedDictType20explicit_extra_items(ptr dead_on_unwind noalias noundef writable sret([20 x i8]) align 4 captures(address) dereferenceable(20), ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(12), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_13TypedDictType8openness(ptr dead_on_unwind noalias noundef writable sret([20 x i8]) align 4 captures(address) dereferenceable(20), ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(12), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_13TypedDictType4item(ptr dead_on_unwind noalias noundef writable sret([28 x i8]) align 4 captures(address) dereferenceable(28), ptr noalias noundef readonly align 4 captures(address) dead_on_return dereferenceable(12), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RINvXsb_NtNtCscdodAO9FK5_5alloc5boxed4iterINtB8_3BoxSNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorBP_E9from_iterINtNtNtB1J_8adapters3map3MapINtNtB2V_3zip3ZipINtNtNtB1L_5slice4iter4IterBP_EB3z_ENCNvNtNtBR_5class14static_literal23explicit_bases_cycle_fn0EEBT_(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(80)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE4withNCINvBW_6attachRSNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameDNtNtCsoTR8nlGN3X_18ty_python_semantic2db2DbEL_NCNvNtNtNtB2J_5types5class14static_literal24implicit_attribute_names0E0B1T_EB2J_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal22ExpandedClassBaseEntryE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB2w_3zip3ZipINtNtNtB2A_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEINtNtB6_9into_iter8IntoIterNtBL_4TypeEENCNvBH_27expanded_class_base_entriess_0EEBN_(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal22ExpandedClassBaseEntryE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtBL_4TypeENCNvBH_27expanded_class_base_entriess0_0EEBN_(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNtNtCscdodAO9FK5_5alloc3vec14spec_from_elemNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalEBO_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(16), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs7_NtCsoTR8nlGN3X_18ty_python_semantic5placeNtB5_18PlaceAndQualifiers16cycle_normalized(ptr dead_on_unwind noalias noundef writable sret([36 x i8]) align 4 captures(none) dereferenceable(36), ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(36), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noundef nonnull align 4, ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(36), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type19tuple_instance_spec(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48), ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noundef nonnull align 4) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_10Parameters24iter_non_variadic_params(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(address) dereferenceable(56), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEB14_EB14_ENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB2G_3any5checkRB1u_NCNvNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder8function27parameters_have_annotations0E0INtNtNtBb_3ops12control_flow11ControlFlowuEEB40_(ptr noalias noundef align 8 dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsg_NtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoreticNtB6_9UnionType13from_elementsANtB8_4Typej4_B1x_EBa_(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 4 captures(address) dereferenceable(16), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noundef nonnull align 4, ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs3_NtCscdodAO9FK5_5alloc3stre12to_lowercase(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB7_4Type14string_literalReEB9_(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 4 captures(none) dereferenceable(16), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #43

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type11int_literal(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 4 captures(none) dereferenceable(16), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs9_NvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literal1__NtB8_19DynamicClassLiteral6anchorDNtNtBe_2db2DbEL_EBe_(i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMsD_NtCs2O29vuvTAEJ_14ty_python_core10definitionNtB5_24AssignmentDefinitionKind5value(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literal28dynamic_class_bases_argument(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder13dynamic_class25report_dynamic_mro_errors(ptr noundef nonnull align 8, i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull align 8, ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder13dynamic_class41report_inconsistent_dynamic_generic_bases(ptr noundef nonnull align 8, i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10diagnosticNtB5_17IncompatibleBases24remove_redundant_entries(ptr noalias noundef align 8 dereferenceable(56), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i32, i32 } @_RNvMsg_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literalNtB5_19DynamicClassLiteral12header_range(i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10diagnostic31report_instance_layout_conflict(ptr noundef nonnull align 8, i32 noundef, i32 noundef, ptr noundef align 8, i64, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsg_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literalNtB5_19DynamicClassLiteral13try_metaclass(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 4 captures(none) dereferenceable(56), i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs9_NvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literal1__NtB8_19DynamicClassLiteral4nameDNtNtBe_2db2DbEL_EBe_(i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10diagnostic39report_conflicting_metaclass_from_basesNtNvMNtB4_10class_baseNtB1F_9ClassBase12display_with16ClassBaseDisplayB1A_EB6_(ptr noundef nonnull align 8, i64 noundef range(i64 0, 94), ptr noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(12), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(80), ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(12), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(80)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_9ClassType21nearest_disjoint_base(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 4 captures(address) dereferenceable(16), ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(12), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10diagnosticNtB5_17IncompatibleBases6insert(ptr noalias noundef align 8 dereferenceable(56), ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(16), i64 noundef, ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(12)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i32 1, 0) i32 @_RINvMs8_NvNtCs2O29vuvTAEJ_14ty_python_core5scope1__NtB8_7ScopeId13file_scope_idDNtNtCsoTR8nlGN3X_18ty_python_semantic2db2DbEL_EB1k_(i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtCs2O29vuvTAEJ_14ty_python_core10definitionNtB4_10Definition10full_range(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 4 captures(none) dereferenceable(16), i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB5_12InferContext11report_lintNtNtCs56aZGHL6Dc6_7ruff_db5files9FileRangeEB9_(ptr dead_on_unwind noalias noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noundef nonnull align 8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112), ptr noalias noundef readonly align 4 captures(address) dead_on_return dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs4_NtCs2O29vuvTAEJ_14ty_python_core5placeNtB5_12PlaceExprRefNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs9_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types8functions4_1__NtB8_12FunctionType7literalDNtNtBc_2db2DbEL_EBc_(ptr dead_on_unwind noalias noundef writable sret([12 x i8]) align 4 captures(none) dereferenceable(12), i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsH_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB5_10TypeIsType11return_type(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 4 captures(address) dereferenceable(16), i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMsN_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8functionNtB5_15OverloadLiteral21has_implicit_receiver(i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10signatures9ParameterEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_while9TakeWhileINtNtNtB2K_5slice4iter4IterB11_ENCNvMs7_B13_NtB13_10Parameters10positional0EE9from_iterB17_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE4withNCINvBW_6attachINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEDNtNtB2z_2db2DbEL_NCNvNvMNtB2x_4callB2v_27try_call_bin_op_return_type32try_call_bin_op_return_type_impl0E0B1T_EB2z_(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 4 captures(none) dereferenceable(16), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i32, i32 } @_RINvMs9_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5classs0_1__NtB8_12GenericAlias6originDNtNtBc_2db2DbEL_EBc_(i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8instanceNtB4_19NominalInstanceType10tuple_spec(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(12), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noundef nonnull align 4) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsp_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleNtB5_16TupleSpecBuilderINtNtCs4NRVxsYgnAr_4core7convert4FromRINtB5_5TupleNtB7_4TypeNtB5_15VariableSegmentEE4from(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMso_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleNtB5_16TupleSpecBuilder5union(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(64), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noundef nonnull align 4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMso_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleNtB5_16TupleSpecBuilder5build(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type16flatten_typevars(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 4 captures(address) dereferenceable(16), ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(16), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noundef nonnull align 4) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs0_NtCsddXFpJ32JCa_6either8iteratorINtB8_6EitherINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources4once4OnceNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEINtNtNtBW_8adapters6copied6CopiedINtNtNtCs5e9M2GLoJMY_8indexmap3set4iter4IterB1E_EEENtNtNtBW_6traits8iterator8Iterator8find_mapINtNtCscdodAO9FK5_5alloc6borrow3CowINtNtB1G_5tuple5TupleB1E_NtB56_15VariableSegmentEEQNCNvNvMNtB1G_9iterationB1E_21try_iterate_with_mode22non_async_special_cases0_0EB1I_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMso_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleNtB5_16TupleSpecBuilder9intersect(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(64), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noundef nonnull align 4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsY_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5enumsNtB5_18EnumComplementType23remaining_literal_union(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 4 captures(none) dereferenceable(16), i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noundef nonnull align 4) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type14literal_string(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 4 captures(none) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsg_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB6_5TupleNtB8_4TypeNtB6_15VariableSegmentE13heterogeneousINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapNtNtNtB20_3str4iter5CharsNCNvNvMNtB8_9iterationB15_21try_iterate_with_mode22non_async_special_cases_0EEBa_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RINvMs9_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types7literals3_1__NtB8_16BytesLiteralType5valueDNtNtBc_2db2DbEL_EBc_(i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsg_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5tupleINtB6_5TupleNtB8_4TypeNtB6_15VariableSegmentE13heterogeneousINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB20_5slice4iter4IterhENCNvNvMNtB8_9iterationB15_21try_iterate_with_mode22non_async_special_case0EEBa_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB5_15TypeVarInstance20bound_or_constraints(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 4 captures(address) dereferenceable(16), i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noundef nonnull align 4) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsn_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB5_18TypeVarConstraints7as_type(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 4 captures(address) dereferenceable(16), i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noundef nonnull align 4) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs8_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB5_9UseDefMap24reachability_constraints(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(152)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs8_NtCs2O29vuvTAEJ_14ty_python_core7use_defNtB5_9UseDefMap10predicates(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(152)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE4withNCINvBW_6attachRINtNtCs5e9M2GLoJMY_8indexmap3map8IndexMapNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5FieldINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEDNtNtB3o_2db2DbEL_NCNvNvMsp_NtB3k_14static_literalNtB65_18StaticClassLiteral12fields_inner13fields_inner_0E0B1T_EB3o_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE4withNCINvBW_6attachINtNtCs4NRVxsYgnAr_4core6result6ResultTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeINtNtB1Y_6option6OptionNtB2y_22MetaclassTransformInfoEENtNtB2y_5class14MetaclassErrorEDNtNtB2A_2db2DbEL_NCNvNvMsp_NtB4d_14static_literalNtB58_18StaticClassLiteral13try_metaclass19try_metaclass_inner0E0B1T_EB2A_(ptr dead_on_unwind noalias noundef writable sret([44 x i8]) align 4 captures(none) dereferenceable(44), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE4withNCINvBW_6attachRSNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeDNtNtB1Z_2db2DbEL_NCNvNvMsp_NtNtB1X_5class14static_literalNtB39_18StaticClassLiteral14explicit_bases20explicit_bases_inner0E0B1T_EB1Z_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i8 @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE4withNCINvBW_6attachNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class18ClassInstanceFlagsDNtNtB1Z_2db2DbEL_NCNvNvMsp_NtB1V_14static_literalNtB3u_18StaticClassLiteral14instance_flags20instance_flags_inner0E0B1T_EB1Z_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i32, i32 } @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE4withNCINvBW_6attachINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8generics14GenericContextEDNtNtB2B_2db2DbEL_NCNvNvMsp_NtNtB2z_5class14static_literalNtB46_18StaticClassLiteral15generic_context16generic_context_0E0B1T_EB2B_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE4withNCINvBW_6attachRSNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeDNtNtB1Z_2db2DbEL_NCNvNvMsp_NtNtB1X_5class14static_literalNtB39_18StaticClassLiteral16decorators_inner17decorators_inner_0E0B1T_EB1Z_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8callableNtB5_12CallableType10is_regular(i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs9_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types8callable1__NtB8_12CallableType10signaturesDNtNtBc_2db2DbEL_EBc_(i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB4_17CallableSignature19is_single_paramspec(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 4 captures(none) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i32, i32 } @_RNvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8callableNtB5_12CallableType21into_dunder_paramspec(i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsg_NtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoreticNtB6_9UnionType3mapNCNvNvMsp_NtNtB8_5class14static_literalNtB1v_18StaticClassLiteral16own_class_member30into_dunder_paramspec_callable0EBa_(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 4 captures(none) dereferenceable(16), i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noundef nonnull align 4, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsB_NtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoreticNtB6_16IntersectionType12map_positiveNCNvNvMsp_NtNtB8_5class14static_literalNtB1N_18StaticClassLiteral16own_class_member30into_dunder_paramspec_callables_0EBa_(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 4 captures(address) dereferenceable(16), i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noundef nonnull align 4, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE4withNCINvBW_6attachRNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal14OwnClassFieldsDNtNtB22_2db2DbEL_NCNvNvMsp_B1W_NtB1W_18StaticClassLiteral16own_fields_inner17own_fields_inner_0E0B1T_EB22_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i8 0, 3) i8 @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE4withNCINvBW_6attachINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal16InheritanceCycleEDNtNtB2D_2db2DbEL_NCNvNvMsp_B2x_NtB2x_18StaticClassLiteral17inheritance_cycle23inheritance_cycle_inner0E0B1T_EB2D_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i8 0, 3) i8 @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE4withNCINvBW_6attachINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types12special_form15TypedDictModuleEDNtNtB2B_2db2DbEL_NCNvNvMsp_NtNtB2z_5class14static_literalNtB4c_18StaticClassLiteral17typed_dict_module18typed_dict_module_0E0B1T_EB2B_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10signaturesNtB4_17CallableSignature14has_parameters(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i32, i32 } @_RNvMs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8callableNtB5_12CallableType18into_function_like(i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsg_NtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoreticNtB6_9UnionType3mapNCNvNvMsp_NtNtB8_5class14static_literalNtB1v_18StaticClassLiteral21class_member_from_mro27into_function_like_callable0EBa_(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 4 captures(none) dereferenceable(16), i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noundef nonnull align 4, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsB_NtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoreticNtB6_16IntersectionType12map_positiveNCNvNvMsp_NtNtB8_5class14static_literalNtB1N_18StaticClassLiteral21class_member_from_mro27into_function_like_callables_0EBa_(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 4 captures(address) dereferenceable(16), i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noundef nonnull align 4, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE4withNCINvBW_6attachbDNtNtCsoTR8nlGN3X_18ty_python_semantic2db2DbEL_NCNvNvMsp_NtNtNtB1Z_5types5class14static_literalNtB2P_18StaticClassLiteral23has_own_ordering_method24has_own_ordering_method_0E0bEB1Z_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE4withNCINvBW_6attachNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6member6MemberDNtNtB1Z_2db2DbEL_NCNvNvMsp_NtNtB1X_5class14static_literalNtB3i_18StaticClassLiteral24implicit_attribute_inner25implicit_attribute_inner_0E0B1T_EB1Z_(ptr dead_on_unwind noalias noundef writable sret([36 x i8]) align 4 captures(none) dereferenceable(36), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE4withNCINvBW_6attachbDNtNtCsoTR8nlGN3X_18ty_python_semantic2db2DbEL_NCNvNvMsp_NtNtNtB1Z_5types5class14static_literalNtB2P_18StaticClassLiteral26has_own_comparison_methods27has_own_comparison_methods_0E0bEB1Z_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i32, i32 } @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE4withNCINvBW_6attachINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8generics14GenericContextEDNtNtB2B_2db2DbEL_NCNvNvMsp_NtNtB2z_5class14static_literalNtB46_18StaticClassLiteral28pep695_generic_context_inner29pep695_generic_context_inner_0E0B1T_EB2B_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i32, i32 } @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE4withNCINvBW_6attachINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8generics14GenericContextEDNtNtB2B_2db2DbEL_NCNvNvMsp_NtNtB2z_5class14static_literalNtB46_18StaticClassLiteral32inherited_legacy_generic_context38inherited_legacy_generic_context_inner0E0B1T_EB2B_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE4withNCINvBW_6attachINtNtCs4NRVxsYgnAr_4core6result6ResultRNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types3mro3MroRNtB2y_14StaticMroErrorEDNtNtB2C_2db2DbEL_NCNvNvMsp_NtNtB2A_5class14static_literalNtB4d_18StaticClassLiteral7try_mro8try_mro_0E0B1T_EB2C_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i8 0, 4) i8 @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs45bxiIjzMqg_5salsa6attach8AttachedE4withNCINvBW_6attachNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8variance15TypeVarVarianceDNtNtB1Z_2db2DbEL_NCNvNvMst_NtNtB1X_5class14static_literalNtB3u_18StaticClassLiteral17variance_of_owner18variance_of_owner_0E0B1T_EB1Z_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_CscxDUFidjJwY_9inventoryNtNtCs45bxiIjzMqg_5salsa5zalsa9ErasedJarNtB4_10ErasedNode6submitCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs5_NtCs45bxiIjzMqg_5salsa8internedINtB5_7JarImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14known_instance21InternedConstraintSetENtNtB7_10ingredient3Jar18create_ingredientsBU_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(1368), i32 noundef) unnamed_addr #0
end_hunk_1
