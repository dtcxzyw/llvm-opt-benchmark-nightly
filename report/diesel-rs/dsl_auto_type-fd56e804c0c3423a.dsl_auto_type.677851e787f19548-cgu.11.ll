Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/diesel-rs/original/dsl_auto_type-fd56e804c0c3423a.dsl_auto_type.677851e787f19548-cgu.11?download=true
inline.NumInlined: 650
inline.NumDeleted: 233
begin_hunk_0_@_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs91tTATF2stA_3syn8generics9TypeParamECs8SLDEF1Cvau_13dsl_auto_type:bb.a
  br i1 %i.x, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs91tTATF2stA_3syn2ty4TypeEECs8SLDEF1Cvau_13dsl_auto_type.exit, label %bb.o

bb.o:                                             ; preds = %.body4
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs91tTATF2stA_3syn2ty4TypeECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull align 8 dereferenceable(224) %0)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs91tTATF2stA_3syn2ty4TypeEECs8SLDEF1Cvau_13dsl_auto_type.exit unwind label %bb.q, !inline_history !1286

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs91tTATF2stA_3syn10punctuated10PunctuatedNtNtBG_8generics14TypeParamBoundNtNtBG_5token4PlusEECs8SLDEF1Cvau_13dsl_auto_type.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTNtNtCs91tTATF2stA_3syn8generics14TypeParamBoundNtNtB1d_5token4PlusEEECs8SLDEF1Cvau_13dsl_auto_type.exit, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCs91tTATF2stA_3syn8generics14TypeParamBoundEECs8SLDEF1Cvau_13dsl_auto_type.exit.i
  %i.y = load i64, ptr %0, align 8, !range !20, !alias.scope !1297, !noundef !13
  %i.z = icmp eq i64 %i.y, -1
  br i1 %i.z, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs91tTATF2stA_3syn2ty4TypeEECs8SLDEF1Cvau_13dsl_auto_type.exit6, label %bb.p

bb.p:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs91tTATF2stA_3syn10punctuated10PunctuatedNtNtBG_8generics14TypeParamBoundNtNtBG_5token4PlusEECs8SLDEF1Cvau_13dsl_auto_type.exit
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs91tTATF2stA_3syn2ty4TypeECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull align 8 dereferenceable(224) %0), !inline_history !1286
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs91tTATF2stA_3syn2ty4TypeEECs8SLDEF1Cvau_13dsl_auto_type.exit6

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs91tTATF2stA_3syn2ty4TypeEECs8SLDEF1Cvau_13dsl_auto_type.exit6: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs91tTATF2stA_3syn10punctuated10PunctuatedNtNtBG_8generics14TypeParamBoundNtNtBG_5token4PlusEECs8SLDEF1Cvau_13dsl_auto_type.exit, %bb.p
  ret void

bb.q:                                             ; preds = %bb.o, %.body
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #13
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs91tTATF2stA_3syn2ty4TypeEECs8SLDEF1Cvau_13dsl_auto_type.exit: ; preds = %.body4, %bb.o
  resume { ptr, i32 } %.pn2
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs91tTATF2stA_3syn8lifetime8LifetimeECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1302)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1303)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !range !18, !alias.scope !1304, !noundef !13
  %i.c = icmp eq i8 %i.b, 2
  br i1 %i.c, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsiD8eKn5yFCp_11proc_macro25IdentECs8SLDEF1Cvau_13dsl_auto_type.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i = load i64, ptr %i.d, align 8, !alias.scope !1304, !noundef !13 ; 2 uses
  %i.e = icmp eq i64 %.val1.i.i, 0
  br i1 %i.e, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsiD8eKn5yFCp_11proc_macro25IdentECs8SLDEF1Cvau_13dsl_auto_type.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val.i.i = load ptr, ptr %0, align 8, !alias.scope !1304, !nonnull !13, !noundef !13
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %.val1.i.i, i64 noundef 1) #12, !noalias !1304
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsiD8eKn5yFCp_11proc_macro25IdentECs8SLDEF1Cvau_13dsl_auto_type.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsiD8eKn5yFCp_11proc_macro25IdentECs8SLDEF1Cvau_13dsl_auto_type.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvCs8SLDEF1Cvau_13dsl_auto_type30auto_type_proc_macro_attribute(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %2, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(56) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [80 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [80 x i8], align 8                ; 4 uses
  invoke void @_RNvNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type14auto_type_impl(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %3)
          to label %bb.b unwind label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8, !range !27, !noundef !13 ; 3 uses
  %.not = icmp eq i64 %i.g, -2
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  %.not7 = icmp eq i64 %i.g, -1
  br i1 %.not7, label %bb.g, label %bb.f

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false)
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsiD8eKn5yFCp_11proc_macro211TokenStreamECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef align 8 dereferenceable(32) %2)
  br label %bb.e

bb.e:                                             ; preds = %bb.k, %bb.d
  ret void

bb.f:                                             ; preds = %bb.c
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.g, ptr %i.b, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  %.sroa.6.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx3, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs0_NtCsdqg0Tq8Qk36_12darling_core5errorNtB5_5Error12write_errors(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.b)
          to label %bb.l unwind label %bb.h

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMNtCs91tTATF2stA_3syn5errorNtB2_5Error18into_compile_error(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.l, %bb.i, %bb.g, %bb.f
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsiD8eKn5yFCp_11proc_macro211TokenStreamECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef align 8 dereferenceable(32) %i.e) #14
          to label %bb.o unwind label %bb.n

bb.i:                                             ; preds = %bb.g
  invoke void @_RINvXs7_NtCsiD8eKn5yFCp_11proc_macro23impNtB6_11TokenStreamINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect6ExtendNtB8_9TokenTreeE6extendNtB8_11TokenStreamECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.c)
          to label %bb.j unwind label %bb.h

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.k

bb.k:                                             ; preds = %bb.m, %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.e

bb.l:                                             ; preds = %bb.f
  invoke void @_RINvXs7_NtCsiD8eKn5yFCp_11proc_macro23impNtB6_11TokenStreamINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect6ExtendNtB8_9TokenTreeE6extendNtB8_11TokenStreamECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.m unwind label %bb.h

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.k

bb.n:                                             ; preds = %bb.p, %bb.h
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #13
  unreachable

bb.o:                                             ; preds = %bb.h, %bb.p
  %.pn11 = phi { ptr, i32 } [ %i.k, %bb.p ], [ %i.i, %bb.h ]
  resume { ptr, i32 } %.pn11

bb.p:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsiD8eKn5yFCp_11proc_macro211TokenStreamECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef align 8 dereferenceable(32) %2) #14
          to label %bb.o unwind label %bb.n
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type4caseNtB2_4Case15ident_with_case(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i8 noundef range(i8 0, 6) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 13 uses
  %i.e = alloca [24 x i8], align 8                ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1308
  store i64 0, ptr %i.c, align 8, !noalias !1308
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !1308
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !1308
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1308
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 1610612768, ptr %i.f, align 8, !noalias !1308
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !1308
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !1308
  store ptr %i.c, ptr %i.b, align 8, !noalias !1308
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @4, ptr %i.g, align 8, !noalias !1308
  %i.h = invoke noundef zeroext i1 @_RNvXsE_CsiD8eKn5yFCp_11proc_macro2NtB5_5IdentNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.c unwind label %bb.b, !noalias !1309

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #14
          to label %common.resume unwind label %bb.e, !noalias !1309

bb.c:                                             ; preds = %bb.a
  br i1 %i.h, label %bb.d, label %_RNvXsC_NtCs40k4W9msRzi_5alloc6stringNtCsiD8eKn5yFCp_11proc_macro25IdentNtB5_12SpecToString14spec_to_stringCs8SLDEF1Cvau_13dsl_auto_type.exit, !prof !1310

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCscI6d9CVNmLh_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #16
          to label %.noexc.i unwind label %bb.b, !noalias !1309

.noexc.i:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #13, !noalias !1309
  unreachable

common.resume:                                    ; preds = %.body, %bb.u, %bb.r, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.am, %bb.r ], [ %i.i, %bb.b ], [ %.pn, %bb.u ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

_RNvXsC_NtCs40k4W9msRzi_5alloc6stringNtCsiD8eKn5yFCp_11proc_macro25IdentNtB5_12SpecToString14spec_to_stringCs8SLDEF1Cvau_13dsl_auto_type.exit: ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !1311
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1308
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1308
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  switch i8 %1, label %default.unreachable8 [
    i8 0, label %bb.f
    i8 1, label %.invoke
    i8 2, label %.invoke
    i8 3, label %bb.g
    i8 4, label %bb.h
    i8 5, label %bb.i
  ]

default.unreachable8:                             ; preds = %_RNvXsC_NtCs40k4W9msRzi_5alloc6stringNtCsiD8eKn5yFCp_11proc_macro25IdentNtB5_12SpecToString14spec_to_stringCs8SLDEF1Cvau_13dsl_auto_type.exit
  unreachable

bb.f:                                             ; preds = %_RNvXsC_NtCs40k4W9msRzi_5alloc6stringNtCsiD8eKn5yFCp_11proc_macro25IdentNtB5_12SpecToString14spec_to_stringCs8SLDEF1Cvau_13dsl_auto_type.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  br label %bb.j

.invoke:                                          ; preds = %_RNvXsC_NtCs40k4W9msRzi_5alloc6stringNtCsiD8eKn5yFCp_11proc_macro25IdentNtB5_12SpecToString14spec_to_stringCs8SLDEF1Cvau_13dsl_auto_type.exit, %_RNvXsC_NtCs40k4W9msRzi_5alloc6stringNtCsiD8eKn5yFCp_11proc_macro25IdentNtB5_12SpecToString14spec_to_stringCs8SLDEF1Cvau_13dsl_auto_type.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !13, !noundef !13
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noundef !13
  invoke void @_RNvXNtCs8t5PhLzwZ12_4heck11upper_cameleNtB2_16ToUpperCamelCase19to_upper_camel_case(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef %i.n)
          to label %bb.j unwind label %bb.k

bb.g:                                             ; preds = %_RNvXsC_NtCs40k4W9msRzi_5alloc6stringNtCsiD8eKn5yFCp_11proc_macro25IdentNtB5_12SpecToString14spec_to_stringCs8SLDEF1Cvau_13dsl_auto_type.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !13, !noundef !13
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.r = load i64, ptr %i.q, align 8, !noundef !13
  invoke void @_RNvXNtCs8t5PhLzwZ12_4heck11lower_cameleNtB2_16ToLowerCamelCase19to_lower_camel_case(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.p, i64 noundef %i.r)
          to label %bb.j unwind label %bb.k

bb.h:                                             ; preds = %_RNvXsC_NtCs40k4W9msRzi_5alloc6stringNtCsiD8eKn5yFCp_11proc_macro25IdentNtB5_12SpecToString14spec_to_stringCs8SLDEF1Cvau_13dsl_auto_type.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !13, !noundef !13
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.v = load i64, ptr %i.u, align 8, !noundef !13
  invoke void @_RNvXs_NtCs8t5PhLzwZ12_4heck5snakeeNtB4_11ToSnakeCase13to_snake_case(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.t, i64 noundef %i.v)
          to label %bb.j unwind label %bb.k

bb.i:                                             ; preds = %_RNvXsC_NtCs40k4W9msRzi_5alloc6stringNtCsiD8eKn5yFCp_11proc_macro25IdentNtB5_12SpecToString14spec_to_stringCs8SLDEF1Cvau_13dsl_auto_type.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !13, !noundef !13
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.z = load i64, ptr %i.y, align 8, !noundef !13
  invoke void @_RNvXs_NtCs8t5PhLzwZ12_4heck12shouty_snakeeNtB4_17ToShoutySnakeCase20to_shouty_snake_case(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.x, i64 noundef %i.z)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %.invoke, %bb.i, %bb.h, %bb.g, %bb.f
  %.sroa.0.0 = phi i8 [ 0, %bb.f ], [ 1, %bb.i ], [ 1, %.invoke ], [ 1, %bb.g ], [ 1, %bb.h ] ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !13, !noundef !13
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !13
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.af = load i8, ptr %i.ae, align 8, !range !18, !noundef !13
  %.not = icmp eq i8 %i.af, 2
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !range !1312
  %.sroa.02.0 = select i1 %.not, i32 %i.ah, i32 0
  invoke void @_RNvMsx_CsiD8eKn5yFCp_11proc_macro2NtB5_5Ident3new(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ab, i64 noundef %i.ad, i32 noundef %.sroa.02.0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2)
          to label %bb.m unwind label %bb.l

.body:                                            ; preds = %bb.n, %bb.k, %bb.l
  %.pn = phi { ptr, i32 } [ %i.aj, %bb.l ], [ %i.ai, %bb.k ], [ %i.ak, %bb.n ] ; 2 uses
  %.sroa.0.1 = phi i8 [ %.sroa.0.0, %bb.l ], [ %.sroa.0.2, %bb.k ], [ %.sroa.0.0, %bb.n ]
  %3 = trunc nuw i8 %.sroa.0.1 to i1
  br i1 %3, label %bb.u, label %common.resume

bb.k:                                             ; preds = %.invoke, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs8SLDEF1Cvau_13dsl_auto_type.exit.i, %bb.i, %bb.h, %bb.g
  %.sroa.0.2 = phi i8 [ %.sroa.0.0, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs8SLDEF1Cvau_13dsl_auto_type.exit.i ], [ 1, %bb.i ], [ 1, %.invoke ], [ 1, %bb.g ], [ 1, %bb.h ]
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.l:                                             ; preds = %bb.j
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d) #14
          to label %.body unwind label %bb.t

bb.m:                                             ; preds = %bb.j
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs8SLDEF1Cvau_13dsl_auto_type.exit.i unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #13
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs8SLDEF1Cvau_13dsl_auto_type.exit.i: ; preds = %bb.m
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs8SLDEF1Cvau_13dsl_auto_type.exit unwind label %bb.k

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs8SLDEF1Cvau_13dsl_auto_type.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECs8SLDEF1Cvau_13dsl_auto_type.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %4 = trunc nuw i8 %.sroa.0.0 to i1
  br i1 %4, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs8SLDEF1Cvau_13dsl_auto_type.exit7, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs8SLDEF1Cvau_13dsl_auto_type.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.q:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs8SLDEF1Cvau_13dsl_auto_type.exit
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs8SLDEF1Cvau_13dsl_auto_type.exit7 unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #13
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs8SLDEF1Cvau_13dsl_auto_type.exit7: ; preds = %bb.q
  call void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
  br label %bb.p

bb.t:                                             ; preds = %bb.u, %bb.l
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #13
  unreachable

bb.u:                                             ; preds = %.body
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e) #14
          to label %common.resume unwind label %bb.t
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type4caseNtB4_4Case8from_str(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  switch i64 %2, label %bb.h [
    i64 18, label %bb.b
    i64 14, label %bb.c
    i64 10, label %bb.d
    i64 17, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load i128, ptr %1, align 1
  %i.d = xor i128 %i.c, 86915789442641751697305011632218263396
  %i.e = getelementptr i8, ptr %1, i64 16
  %i.f = load i16, ptr %i.e, align 1
  %i.g = zext i16 %i.f to i128
  %i.h = xor i128 %i.g, 17779
  %i.i = or i128 %i.d, %i.h
  %i.j = icmp ne i128 %i.i, 0
  %i.k = zext i1 %i.j to i32
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.j, label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.m = load i64, ptr %1, align 1
  %i.n = xor i64 %i.m, 7881654981482278997
  %i.o = getelementptr i8, ptr %1, i64 6
  %i.p = load i64, ptr %i.o, align 1
  %i.q = xor i64 %i.p, 7310293562361736545
  %i.r = or i64 %i.n, %i.q
  %i.s = icmp ne i64 %i.r, 0
  %i.t = zext i1 %i.s to i32
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.j, label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.v = load i64, ptr %1, align 1
  %i.w = xor i64 %i.v, 7008564610654757200
  %i.x = getelementptr i8, ptr %1, i64 8
  %i.y = load i16, ptr %i.x, align 1
  %i.z = zext i16 %i.y to i64
  %i.aa = xor i64 %i.z, 25971
  %i.ab = or i64 %i.w, %i.aa
  %i.ac = icmp ne i64 %i.ab, 0
  %i.ad = zext i1 %i.ac to i32
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.j, label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.af = load i64, ptr %1, align 1
  %i.ag = xor i64 %i.af, 7881654981482737516
  %i.ah = getelementptr i8, ptr %1, i64 6
  %i.ai = load i64, ptr %i.ah, align 1
  %i.aj = xor i64 %i.ai, 7310293562361736545
  %i.ak = or i64 %i.ag, %i.aj
  %i.al = icmp ne i64 %i.ak, 0
  %i.am = zext i1 %i.al to i32
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.j, label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.ao = load i64, ptr %1, align 1
  %i.ap = xor i64 %i.ao, 7017557533571247731
  %i.aq = getelementptr i8, ptr %1, i64 8
  %i.ar = load i16, ptr %i.aq, align 1
  %i.as = zext i16 %i.ar to i64
  %i.at = xor i64 %i.as, 25971
  %i.au = or i64 %i.ap, %i.at
  %i.av = icmp ne i64 %i.au, 0
  %i.aw = zext i1 %i.av to i32
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.j, label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.ay = load i128, ptr %1, align 1
  %i.az = xor i128 %i.ay, 110664789415517108276719893970255038547
  %i.ba = getelementptr i8, ptr %1, i64 16
  %i.bb = load i8, ptr %i.ba, align 1
  %i.bc = zext i8 %i.bb to i128
  %i.bd = xor i128 %i.bc, 69
  %i.be = or i128 %i.az, %i.bd
  %i.bf = icmp ne i128 %i.be, 0
  %i.bg = zext i1 %i.bf to i32
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.b, %bb.a, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %1, ptr %i.b, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %2, ptr %i.bi, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCs8SLDEF1Cvau_13dsl_auto_type, ptr %.sroa.43.0..sroa_idx, align 8
  call void @_RINvMNtCs91tTATF2stA_3syn5errorNtB3_5Error3newNtNtCscI6d9CVNmLh_4core3fmt9ArgumentsECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, i32 noundef %3, ptr noundef nonnull @3, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %bb.h
  ret void

bb.j:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0 = phi i8 [ 4, %bb.f ], [ 0, %bb.b ], [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.e ], [ 5, %bb.g ]
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.0.0, ptr %i.bj, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_RNvXNtCs91tTATF2stA_3syn7spannedNtNtB4_4attr4MetaNtB2_7Spanned4spanCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(232) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1320
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1321
  call void @_RNvMCsiD8eKn5yFCp_11proc_macro2NtB2_11TokenStream3new(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a), !noalias !1321
  invoke void @_RNvXs_NtNtCs91tTATF2stA_3syn4attr8printingNtB6_4MetaNtNtCs8GWn3DbEjso_5quote9to_tokens8ToTokens9to_tokens(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(232) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_RNvXs0_NtCs8GWn3DbEjso_5quote7spannedNtNtCs91tTATF2stA_3syn4attr4MetaNtB5_7Spanned6___spanCs8SLDEF1Cvau_13dsl_auto_type.exit unwind label %bb.b, !noalias !1322

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsiD8eKn5yFCp_11proc_macro211TokenStreamECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef align 8 dereferenceable(32) %i.a) #14
          to label %bb.d unwind label %bb.c, !noalias !1322

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #13, !noalias !1322
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.c

_RNvXs0_NtCs8GWn3DbEjso_5quote7spannedNtNtCs91tTATF2stA_3syn4attr4MetaNtB5_7Spanned6___spanCs8SLDEF1Cvau_13dsl_auto_type.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !1323
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1321
  %i.e = call noundef i32 @_RNvNtCs8GWn3DbEjso_5quote7spanned10join_spans(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1320
  ret i32 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_RNvXNtCs91tTATF2stA_3syn7spannedNtNtB4_4expr4ExprNtB2_7Spanned4spanCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1332
  call void @_RNvMCsiD8eKn5yFCp_11proc_macro2NtB2_11TokenStream3new(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a), !noalias !1332
  invoke void @_RNvXsP_NtCs91tTATF2stA_3syn4exprNtB5_4ExprNtNtCs8GWn3DbEjso_5quote9to_tokens8ToTokens9to_tokens(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_RNvXs0_NtCs8GWn3DbEjso_5quote7spannedNtNtCs91tTATF2stA_3syn4expr4ExprNtB5_7Spanned6___spanCs8SLDEF1Cvau_13dsl_auto_type.exit unwind label %bb.b, !noalias !1333

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsiD8eKn5yFCp_11proc_macro211TokenStreamECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef align 8 dereferenceable(32) %i.a) #14
          to label %bb.d unwind label %bb.c, !noalias !1333

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #13, !noalias !1333
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.c

_RNvXs0_NtCs8GWn3DbEjso_5quote7spannedNtNtCs91tTATF2stA_3syn4expr4ExprNtB5_7Spanned6___spanCs8SLDEF1Cvau_13dsl_auto_type.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !1334
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1332
  %i.e = call noundef i32 @_RNvNtCs8GWn3DbEjso_5quote7spanned10join_spans(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1331
  ret i32 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_RNvXNtCs91tTATF2stA_3syn7spannedRNtNtB4_4attr4MetaNtB2_7Spanned4spanCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1340
  call void @_RNvMCsiD8eKn5yFCp_11proc_macro2NtB2_11TokenStream3new(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a), !noalias !1340
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void @_RNvXs_NtNtCs91tTATF2stA_3syn4attr8printingNtB6_4MetaNtNtCs8GWn3DbEjso_5quote9to_tokens8ToTokens9to_tokens(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(232) %.val, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_RNvXs0_NtCs8GWn3DbEjso_5quote7spannedRNtNtCs91tTATF2stA_3syn4attr4MetaNtB5_7Spanned6___spanCs8SLDEF1Cvau_13dsl_auto_type.exit unwind label %bb.b, !noalias !1340

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
end_hunk_0
