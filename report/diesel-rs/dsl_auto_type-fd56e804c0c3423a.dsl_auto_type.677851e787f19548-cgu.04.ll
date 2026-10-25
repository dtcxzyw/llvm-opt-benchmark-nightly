Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/diesel-rs/original/dsl_auto_type-fd56e804c0c3423a.dsl_auto_type.677851e787f19548-cgu.04?download=true
inline.NumInlined: 702
inline.NumDeleted: 237
begin_hunk_0_@_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs91tTATF2stA_3syn8generics9TypeParamECs8SLDEF1Cvau_13dsl_auto_type:bb.a

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs91tTATF2stA_3syn2ty4TypeEECs8SLDEF1Cvau_13dsl_auto_type.exit6: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs91tTATF2stA_3syn10punctuated10PunctuatedNtNtBG_8generics14TypeParamBoundNtNtBG_5token4PlusEECs8SLDEF1Cvau_13dsl_auto_type.exit, %bb.p
  ret void

bb.q:                                             ; preds = %bb.o, %.body
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs91tTATF2stA_3syn2ty4TypeEECs8SLDEF1Cvau_13dsl_auto_type.exit: ; preds = %.body4, %bb.o
  resume { ptr, i32 } %.pn2
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs91tTATF2stA_3syn8lifetime8LifetimeECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1244)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1245)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !range !19, !alias.scope !1246, !noundef !13
  %i.c = icmp eq i8 %i.b, 2
  br i1 %i.c, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsiD8eKn5yFCp_11proc_macro25IdentECs8SLDEF1Cvau_13dsl_auto_type.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i = load i64, ptr %i.d, align 8, !alias.scope !1246, !noundef !13 ; 2 uses
  %i.e = icmp eq i64 %.val1.i.i, 0
  br i1 %i.e, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsiD8eKn5yFCp_11proc_macro25IdentECs8SLDEF1Cvau_13dsl_auto_type.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val.i.i = load ptr, ptr %0, align 8, !alias.scope !1246, !nonnull !13, !noundef !13
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %.val1.i.i, i64 noundef 1) #17, !noalias !1246
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsiD8eKn5yFCp_11proc_macro25IdentECs8SLDEF1Cvau_13dsl_auto_type.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsiD8eKn5yFCp_11proc_macro25IdentECs8SLDEF1Cvau_13dsl_auto_type.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsdqg0Tq8Qk36_12darling_core5error11AccumulatorECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsb_NtCsdqg0Tq8Qk36_12darling_core5errorNtB5_11AccumulatorNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCsdqg0Tq8Qk36_12darling_core5error5ErrorEEECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef align 8 dereferenceable(24) %0) #18
          to label %common.resume unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.b = load i64, ptr %0, align 8, !range !15, !alias.scope !1249, !noundef !13
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCsdqg0Tq8Qk36_12darling_core5error5ErrorEEECs8SLDEF1Cvau_13dsl_auto_type.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCsdqg0Tq8Qk36_12darling_core5error5ErrorENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCsdqg0Tq8Qk36_12darling_core5error5ErrorEECs8SLDEF1Cvau_13dsl_auto_type.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtCsdqg0Tq8Qk36_12darling_core5error5ErrorENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #16
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.a, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCsdqg0Tq8Qk36_12darling_core5error5ErrorEECs8SLDEF1Cvau_13dsl_auto_type.exit.i: ; preds = %bb.d
  tail call void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtCsdqg0Tq8Qk36_12darling_core5error5ErrorENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCsdqg0Tq8Qk36_12darling_core5error5ErrorEEECs8SLDEF1Cvau_13dsl_auto_type.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCsdqg0Tq8Qk36_12darling_core5error5ErrorEEECs8SLDEF1Cvau_13dsl_auto_type.exit: ; preds = %bb.c, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCsdqg0Tq8Qk36_12darling_core5error5ErrorEECs8SLDEF1Cvau_13dsl_auto_type.exit.i
  ret void

bb.g:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #16
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type16settings_builderNtB6_14DeriveSettings7builder(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [56 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1252)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1252
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1252
  call void @_RNvMCsiD8eKn5yFCp_11proc_macro2NtB2_11TokenStream3new(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a), !noalias !1252
  invoke void @_RNvNtCs8GWn3DbEjso_5quote9___private10push_ident(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 3)
          to label %_RNvXs0_NtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type16settings_builderNtB7_14DeriveSettingsNtNtCscI6d9CVNmLh_4core7default7Default7default.exit unwind label %bb.b, !noalias !1252

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsiD8eKn5yFCp_11proc_macro211TokenStreamECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef align 8 dereferenceable(32) %i.a) #18
          to label %bb.d unwind label %bb.c, !noalias !1252

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #16, !noalias !1252
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.d

_RNvXs0_NtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type16settings_builderNtB7_14DeriveSettingsNtNtCscI6d9CVNmLh_4core7default7Default7default.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !1252
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1252
  call void @_RINvNtCs91tTATF2stA_3syn11parse_quote5parseNtNtB4_4path4PathECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(56) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1252
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 49
  store i8 1, ptr %i.f, align 1, !alias.scope !1252
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 50
  store i8 0, ptr %i.g, align 2, !alias.scope !1252
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i8 1, ptr %i.h, align 8, !alias.scope !1252
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type14auto_type_impl(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(56) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [4 x i8], align 4                 ; 4 uses
  %i.f = alloca [40 x i8], align 8                ; 7 uses
  %i.g = alloca [32 x i8], align 8                ; 4 uses
  %i.h = alloca [32 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [32 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 10 uses
  %i.m = alloca [32 x i8], align 8                ; 8 uses
  %i.n = alloca [32 x i8], align 8                ; 8 uses
  %i.o = alloca [32 x i8], align 8                ; 4 uses
  %i.p = alloca [32 x i8], align 8                ; 7 uses
  %i.q = alloca [32 x i8], align 8                ; 4 uses
  %i.r = alloca [32 x i8], align 8                ; 9 uses
  %i.s = alloca [32 x i8], align 8                ; 6 uses
  %i.t = alloca [32 x i8], align 8                ; 7 uses
  %i.u = alloca [32 x i8], align 8                ; 4 uses
  %i.v = alloca [16 x i8], align 8                ; 4 uses
  %i.w = alloca [32 x i8], align 8                ; 6 uses
  %i.x = alloca [32 x i8], align 8                ; 4 uses
  %i.y = alloca [32 x i8], align 8                ; 7 uses
  %i.z = alloca [32 x i8], align 8                ; 4 uses
  %i.aa = alloca [32 x i8], align 8               ; 14 uses
  %i.ab = alloca [32 x i8], align 8               ; 8 uses
  %i.ac = alloca [32 x i8], align 8               ; 4 uses
  %i.ad = alloca [16 x i8], align 8               ; 4 uses
  %i.ae = alloca [88 x i8], align 8               ; 7 uses
  %i.af = alloca [24 x i8], align 8               ; 8 uses
  %i.ag = alloca [32 x i8], align 8               ; 7 uses
  %i.ah = alloca [24 x i8], align 8               ; 4 uses
  %i.ai = alloca [64 x i8], align 8               ; 4 uses
  %i.aj = alloca [24 x i8], align 8               ; 5 uses
  %i.ak = alloca [16 x i8], align 8               ; 7 uses
  %i.al = alloca [64 x i8], align 8               ; 10 uses
  %i.am = alloca [24 x i8], align 8               ; 4 uses
  %i.an = alloca [8 x i8], align 8                ; 7 uses
  %i.ao = alloca [224 x i8], align 8              ; 9 uses
  %i.ap = alloca [24 x i8], align 8               ; 15 uses
  %i.aq = alloca [24 x i8], align 8               ; 4 uses
  %i.ar = alloca [32 x i8], align 8               ; 7 uses
  %i.as = alloca [24 x i8], align 8               ; 7 uses
  %i.at = alloca [24 x i8], align 8               ; 7 uses
  %i.au = alloca [32 x i8], align 8               ; 10 uses
  %i.av = alloca [24 x i8], align 8               ; 7 uses
  %.sroa.16 = alloca [7 x i8], align 1            ; 7 uses
  %i.aw = alloca [24 x i8], align 8               ; 4 uses
  %i.ax = alloca [48 x i8], align 8               ; 5 uses
  %.sroa.531 = alloca [40 x i8], align 8          ; 5 uses
  %i.ay = alloca [56 x i8], align 8               ; 11 uses
  %i.az = alloca [32 x i8], align 8               ; 7 uses
  %i.ba = alloca [352 x i8], align 8              ; 7 uses
  %.sroa.618 = alloca [24 x i8], align 8          ; 6 uses
  %i.bb = alloca [352 x i8], align 8              ; 59 uses
  %i.bc = alloca [32 x i8], align 8               ; 5 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 6 uses
  %i.bd = alloca [24 x i8], align 8               ; 13 uses
  %i.be = alloca [120 x i8], align 8              ; 8 uses
  %.sroa.6 = alloca [80 x i8], align 8            ; 6 uses
  %i.bf = alloca [120 x i8], align 8              ; 31 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  invoke void @_RNvMNtNtNtCsdqg0Tq8Qk36_12darling_core3ast4data11nested_metaNtB2_10NestedMeta15parse_meta_list(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.bc, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %1)
          to label %bb.c unwind label %bb.b

.body291:                                         ; preds = %bb.im, %bb.b, %bb.it
  %.sroa.088.0 = phi i8 [ %.sroa.088.1, %bb.b ], [ %.sroa.087.0415506, %bb.it ], [ %.sroa.088.4, %bb.im ]
  %.pn180 = phi { ptr, i32 } [ %i.bh, %bb.b ], [ %.pn176417504, %bb.it ], [ %i.mz, %bb.im ] ; 2 uses
  %i.bg = trunc nuw i8 %.sroa.088.0 to i1
  br i1 %i.bg, label %.thread, label %.body291.thread

bb.b:                                             ; preds = %bb.iw, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsdqg0Tq8Qk36_12darling_core4util13spanned_value12SpannedValueNtNtCs40k4W9msRzi_5alloc6string6StringEECs8SLDEF1Cvau_13dsl_auto_type.exit.i, %bb.a
  %.sroa.088.1 = phi i8 [ 1, %bb.a ], [ 1, %bb.iw ], [ %.sroa.088.4, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsdqg0Tq8Qk36_12darling_core4util13spanned_value12SpannedValueNtNtCs40k4W9msRzi_5alloc6string6StringEECs8SLDEF1Cvau_13dsl_auto_type.exit.i ]
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %.body291

bb.c:                                             ; preds = %bb.a
  %i.bi = load i64, ptr %i.bc, align 8, !range !28, !noundef !13
  %i.bj = trunc nuw i64 %i.bi to i1
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.bk, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  br i1 %i.bj, label %bb.iy, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !nonnull !13, !noundef !13
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bo = load i64, ptr %i.bn, align 8, !noundef !13
  invoke void @_RNvXNtCs8SLDEF1Cvau_13dsl_auto_type9auto_typeNtB2_16DeriveParametersNtNtCsdqg0Tq8Qk36_12darling_core9from_meta8FromMeta9from_list(ptr noalias noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %i.be, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.bm, i64 noundef %i.bo)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtNtCsdqg0Tq8Qk36_12darling_core3ast4data11nested_meta10NestedMetaEECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef align 8 dereferenceable(24) %i.bd) #18
          to label %.thread unwind label %bb.au

bb.f:                                             ; preds = %bb.d
  %i.bq = load i64, ptr %i.be, align 8, !range !12, !noundef !13 ; 2 uses
  %i.br = icmp eq i64 %i.bq, -2
  %i.bs = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(80) %i.bs, i64 80, i1 false)
  br i1 %i.br, label %bb.iu, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.sroa.595.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 88
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 88 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.515.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.595.0..sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6, i64 80, i1 false)
  store i64 %i.bq, ptr %i.bf, align 8
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtNtCsdqg0Tq8Qk36_12darling_core3ast4data11nested_meta10NestedMetaENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bd)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsdqg0Tq8Qk36_12darling_core3ast4data11nested_meta10NestedMetaENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bd)
          to label %.thread425 unwind label %bb.j

bb.i:                                             ; preds = %bb.g
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsdqg0Tq8Qk36_12darling_core3ast4data11nested_meta10NestedMetaENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bd)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtNtCsdqg0Tq8Qk36_12darling_core3ast4data11nested_meta10NestedMetaEECs8SLDEF1Cvau_13dsl_auto_type.exit unwind label %.thread434

bb.j:                                             ; preds = %bb.h
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #16
  unreachable

.thread434:                                       ; preds = %bb.i, %bb.m, %_RNvXsz_NtCsiD8eKn5yFCp_11proc_macro23impNtB5_11TokenStreamNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread425

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtNtCsdqg0Tq8Qk36_12darling_core3ast4data11nested_meta10NestedMetaEECs8SLDEF1Cvau_13dsl_auto_type.exit: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.618)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  call void @llvm.experimental.noalias.scope.decl(metadata !1352)
  %i.bv = load i64, ptr %2, align 8, !range !15, !alias.scope !1352, !noundef !13
  %i.bw = icmp eq i64 %i.bv, -1
  br i1 %i.bw, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtNtCsdqg0Tq8Qk36_12darling_core3ast4data11nested_meta10NestedMetaEECs8SLDEF1Cvau_13dsl_auto_type.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !alias.scope !1352, !nonnull !13, !noundef !13 ; 3 uses
  %i.bz = load i64, ptr %i.by, align 8, !noalias !1353, !noundef !13 ; 2 uses
  %i.ca = icmp ne i64 %i.bz, 0
  call void @llvm.assume(i1 %i.ca)
  %i.cb = add i64 %i.bz, 1                        ; 2 uses
  store i64 %i.cb, ptr %i.by, align 8, !noalias !1353
  %i.cc = icmp eq i64 %i.cb, 0
  br i1 %i.cc, label %bb.q, label %_RNvXsz_NtCsiD8eKn5yFCp_11proc_macro23impNtB5_11TokenStreamNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit, !prof !32

bb.l:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtNtCsdqg0Tq8Qk36_12darling_core3ast4data11nested_meta10NestedMetaEECs8SLDEF1Cvau_13dsl_auto_type.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !1354)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1355
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 8, !alias.scope !1356, !noundef !13
  %.not.i.i = icmp eq i32 %i.ce, 0
  br i1 %.not.i.i, label %.noexc, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cf = invoke noundef i32 @_RNvXs8_NtNtCs50gxqRnCXtk_10proc_macro6bridge6clientNtB5_11TokenStreamNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.cd)
          to label %.noexc unwind label %.thread434

.noexc:                                           ; preds = %bb.m, %bb.l
  %i.cg = phi i32 [ 0, %bb.l ], [ %i.cf, %bb.m ]  ; 3 uses
  store i32 %i.cg, ptr %i.e, align 4, !noalias !1355
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1355
  invoke void @_RNvXsa_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtCs50gxqRnCXtk_10proc_macro9TokenTreeENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
          to label %_RNvXsA_NtCsiD8eKn5yFCp_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i unwind label %bb.n, !noalias !1357

bb.n:                                             ; preds = %.noexc
  %i.ch = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ci = icmp eq i32 %i.cg, 0
  br i1 %i.ci, label %.thread425, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvXs0_NtNtCs50gxqRnCXtk_10proc_macro6bridge6clientNtB5_11TokenStreamNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.e)
          to label %.thread425 unwind label %bb.p, !noalias !1357

bb.p:                                             ; preds = %bb.o
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #16, !noalias !1357
  unreachable

_RNvXsA_NtCsiD8eKn5yFCp_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i: ; preds = %.noexc
  %.sroa.0396.0.copyload397 = load i64, ptr %i.d, align 8, !noalias !1352
  %.sroa.5398.0..sroa_idx399 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.5398.0.copyload400 = load ptr, ptr %.sroa.5398.0..sroa_idx399, align 8, !noalias !1352
  %.sroa.6401.0..sroa_idx402 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.6401.0.copyload403 = load i64, ptr %.sroa.6401.0..sroa_idx402, align 8, !noalias !1352
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1355
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1355
  br label %_RNvXsz_NtCsiD8eKn5yFCp_11proc_macro23impNtB5_11TokenStreamNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit

bb.q:                                             ; preds = %bb.k
  call void @llvm.trap()
  unreachable

_RNvXsz_NtCsiD8eKn5yFCp_11proc_macro23impNtB5_11TokenStreamNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit: ; preds = %_RNvXsA_NtCsiD8eKn5yFCp_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i, %bb.k
  %.sroa.0396.0 = phi i64 [ %.sroa.0396.0.copyload397, %_RNvXsA_NtCsiD8eKn5yFCp_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i ], [ -1, %bb.k ]
  %.sroa.5398.0 = phi ptr [ %.sroa.5398.0.copyload400, %_RNvXsA_NtCsiD8eKn5yFCp_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i ], [ %i.by, %bb.k ]
  %.sroa.6401.0 = phi i64 [ %.sroa.6401.0.copyload403, %_RNvXsA_NtCsiD8eKn5yFCp_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i ], [ undef, %bb.k ]
  %.sroa.6404.0 = phi i32 [ %i.cg, %_RNvXsA_NtCsiD8eKn5yFCp_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit.i ], [ undef, %bb.k ]
  store i64 %.sroa.0396.0, ptr %i.az, align 8
  %.sroa.5398.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store ptr %.sroa.5398.0, ptr %.sroa.5398.0..sroa_idx, align 8
  %.sroa.6401.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store i64 %.sroa.6401.0, ptr %.sroa.6401.0..sroa_idx, align 8
  %.sroa.6404.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  store i32 %.sroa.6404.0, ptr %.sroa.6404.0..sroa_idx, align 8
  invoke void @_RNvXsh_NtCs91tTATF2stA_3syn5parseNvYNtNtB7_4item6ItemFnNtB5_5Parse5parseNtB5_6Parser6parse2Cs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull sret([352 x i8]) align 8 captures(none) dereferenceable(352) %i.ba, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.az)
          to label %bb.r unwind label %.thread434

bb.r:                                             ; preds = %_RNvXsz_NtCsiD8eKn5yFCp_11proc_macro23impNtB5_11TokenStreamNtNtCscI6d9CVNmLh_4core5clone5Clone5clone.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  %i.ck = load i64, ptr %i.ba, align 8, !range !1358, !noundef !13 ; 2 uses
  %i.cl = icmp eq i64 %i.ck, -1
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.618, ptr noundef nonnull align 8 dereferenceable(24) %i.cm, i64 24, i1 false)
  br i1 %i.cl, label %bb.if, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.sroa.598.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %.sroa.524.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(320) %.sroa.598.0..sroa_idx, i64 320, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.423.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.618, i64 24, i1 false)
  store i64 %i.ck, ptr %i.bb, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.618)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.531)
  %.sroa.025.0.copyload = load i64, ptr %i.bf, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ax, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 48, i1 false)
  %.not = icmp eq i64 %.sroa.025.0.copyload, -1
  br i1 %.not, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.531, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.0..sroa_idx, i64 40, i1 false)
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs91tTATF2stA_3syn4path4PathECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef align 8 dereferenceable(48) %i.ax)
          to label %bb.v unwind label %bb.w

bb.u:                                             ; preds = %bb.s
  %.sroa.029.0.copyload = load i64, ptr %i.ax, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.531, ptr noundef nonnull align 8 dereferenceable(40) %i.cn, i64 40, i1 false)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.sroa.029.0 = phi i64 [ %.sroa.025.0.copyload, %bb.t ], [ %.sroa.029.0.copyload, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 49
  %i.cp = load i8, ptr %i.co, align 1, !range !1359, !noundef !13
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 50
  %i.cr = load i8, ptr %i.cq, align 2, !range !1359, !noundef !13 ; 2 uses
  store i64 %.sroa.029.0, ptr %i.ay, align 8
  %.sroa.531.0..sroa_idx32 = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.531.0..sroa_idx32, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.531, i64 40, i1 false)
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ay, i64 48
  store i8 %i.cp, ptr %i.cs, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ay, i64 49
  store i8 %i.cr, ptr %i.ct, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.531)
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bb, i64 232 ; 5 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bf, i64 80
  %i.cw = load i32, ptr %i.cv, align 8, !range !33, !noundef !13
  %i.cx = load i32, ptr %.sroa.515.0..sroa_idx, align 8, !range !33, !noundef !13
  %.not118 = icmp eq i32 %i.cx, 0                 ; 2 uses
  %.not119 = icmp eq i32 %i.cw, 0
  br i1 %.not119, label %bb.y, label %bb.x

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type25expression_type_inference16InferrerSettingsEBH_.exit: ; preds = %.thread438, %bb.w
  %.sroa.081.2 = phi i8 [ %.sroa.081.3, %bb.w ], [ %.sroa.081.4, %.thread438 ]
  %.sroa.077.0 = phi i8 [ %.sroa.077.1, %bb.w ], [ %.sroa.077.2, %.thread438 ]
  %.pn162 = phi { ptr, i32 } [ %i.cz, %bb.w ], [ %.pn160, %.thread438 ]
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bb, i64 288
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs91tTATF2stA_3syn4attr9AttributeEECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef align 8 dereferenceable(24) %i.cy) #18
          to label %bb.hv unwind label %bb.au

bb.w:                                             ; preds = %bb.er, %bb.ae, %bb.t
  %.sroa.081.3 = phi i8 [ %.sroa.081.6, %bb.ae ], [ 0, %bb.er ], [ 1, %bb.t ]
  %.sroa.077.1 = phi i8 [ %.sroa.077.4, %bb.ae ], [ 1, %bb.er ], [ 1, %bb.t ]
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type25expression_type_inference16InferrerSettingsEBH_.exit

bb.x:                                             ; preds = %bb.v
  br i1 %.not118, label %bb.aa, label %bb.z

bb.y:                                             ; preds = %bb.v
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.db = load i8, ptr %i.da, align 8, !range !34, !noundef !13
  %i.dc = trunc nuw i8 %i.db to i1
  %i.dd = and i1 %.not118, %i.dc
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  %i.de = invoke noundef i32 @_RNvMsi_CsiD8eKn5yFCp_11proc_macro2NtB5_4Span10mixed_site()
          to label %bb.ac unwind label %bb.ab

bb.aa:                                            ; preds = %bb.y, %bb.x
  %.sroa.033.0 = phi i1 [ %i.dd, %bb.y ], [ true, %bb.x ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.16)
  %i.df = getelementptr inbounds nuw i8, ptr %i.bf, i64 96
  %.sroa.0353.0.copyload = load ptr, ptr %i.df, align 8 ; 5 uses
  %.sroa.4354.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 104
  %.sroa.4354.0.copyload = load i64, ptr %.sroa.4354.0..sroa_idx, align 8 ; 5 uses
  %.sroa.5355.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 112
  %.sroa.5355.0.copyload = load i8, ptr %.sroa.5355.0..sroa_idx, align 8 ; 5 uses
  %.sroa.6356.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 113
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bf, i64 48
  %.sroa.0357.0.copyload = load i64, ptr %i.dg, align 8 ; 5 uses
  %.sroa.4358.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 56 ; 2 uses
  %.not122 = icmp eq i8 %.sroa.5355.0.copyload, -1
  %.not123 = icmp eq i64 %.sroa.0357.0.copyload, -1
  %or.cond183 = select i1 %.not122, i1 %.not123, i1 false ; 2 uses
  br i1 %.sroa.033.0, label %bb.ag, label %bb.af

.thread438:                                       ; preds = %bb.hu, %.thread441, %bb.fy, %bb.fx, %bb.ao, %.thread449, %.body236, %bb.ab
  %.sroa.081.4 = phi i8 [ 1, %bb.ab ], [ 0, %bb.fy ], [ 0, %.thread449 ], [ 0, %bb.ao ], [ 0, %.body236 ], [ 0, %bb.fx ], [ 0, %bb.hu ], [ 0, %.thread441 ]
  %.sroa.077.2 = phi i8 [ 1, %bb.ab ], [ %.sroa.077.5, %bb.fy ], [ 1, %.thread449 ], [ 1, %bb.ao ], [ %.sroa.077.5, %.body236 ], [ %.sroa.077.5, %bb.fx ], [ 1, %bb.hu ], [ 1, %.thread441 ]
  %.pn160 = phi { ptr, i32 } [ %i.dh, %bb.ab ], [ %.pn151.pn.pn.pn, %bb.fy ], [ %lpad.thr_comm447, %.thread449 ], [ %i.ds, %bb.ao ], [ %.pn151.pn.pn.pn, %.body236 ], [ %.pn151.pn.pn.pn, %bb.fx ], [ %.pn156444, %bb.hu ], [ %.pn156444, %.thread441 ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs91tTATF2stA_3syn4path4PathECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ay)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type25expression_type_inference16InferrerSettingsEBH_.exit unwind label %bb.au

bb.ab:                                            ; preds = %bb.ac, %bb.z
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %.thread438

bb.ac:                                            ; preds = %bb.z
  invoke void @_RINvMNtCs91tTATF2stA_3syn5errorNtB3_5Error3newReECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aw, i32 noundef %i.de, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 51)
          to label %bb.ad unwind label %bb.ab

bb.ad:                                            ; preds = %bb.ac
  %.sroa.4305.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4305.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  store i64 -1, ptr %0, align 8
  br label %bb.ae

bb.ae:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiD8eKn5yFCp_11proc_macro25IdentEECs8SLDEF1Cvau_13dsl_auto_type.exit, %bb.ad
  %4 = phi i1 [ true, %bb.ad ], [ false, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiD8eKn5yFCp_11proc_macro25IdentEECs8SLDEF1Cvau_13dsl_auto_type.exit ]
  %.sroa.081.6 = phi i8 [ 1, %bb.ad ], [ 0, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiD8eKn5yFCp_11proc_macro25IdentEECs8SLDEF1Cvau_13dsl_auto_type.exit ] ; 5 uses
  %.sroa.077.4 = phi i8 [ 1, %bb.ad ], [ %.sroa.077.18, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiD8eKn5yFCp_11proc_macro25IdentEECs8SLDEF1Cvau_13dsl_auto_type.exit ] ; 4 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs91tTATF2stA_3syn4path4PathECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ay)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type25expression_type_inference16InferrerSettingsEBH_.exit214 unwind label %bb.w

bb.af:                                            ; preds = %bb.aa
  br i1 %or.cond183, label %bb.ai, label %bb.ah

bb.ag:                                            ; preds = %bb.aa
  br i1 %or.cond183, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.not124 = icmp eq i8 %.sroa.5355.0.copyload, -1
  br i1 %.not124, label %bb.an, label %bb.am

bb.ai:                                            ; preds = %bb.af, %bb.aw, %bb.as, %bb.al
  %.sroa.11.0 = phi i8 [ %.sroa.11.0.copyload, %bb.al ], [ %.sroa.11.0.copyload318, %bb.as ], [ %.sroa.5355.0.copyload, %bb.aw ], [ -1, %bb.af ] ; 8 uses
  %.sroa.9.0 = phi i64 [ %.sroa.9.0.copyload, %bb.al ], [ %.sroa.9.0.copyload312, %bb.as ], [ %.sroa.4354.0.copyload, %bb.aw ], [ undef, %bb.af ] ; 9 uses
  %.sroa.0307.0 = phi ptr [ %.sroa.0307.0.copyload, %bb.al ], [ %.sroa.0307.0.copyload308, %bb.as ], [ %.sroa.0353.0.copyload, %bb.aw ], [ undef, %bb.af ] ; 7 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.bb, i64 344 ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8, !nonnull !13, !noundef !13 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dl = load i64, ptr %i.dk, align 8, !noundef !13 ; 2 uses
  %.not127 = icmp eq i64 %i.dl, 0
  br i1 %.not127, label %bb.ax, label %bb.ay

bb.aj:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  invoke void @_RNvMNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type4caseNtB2_4Case15ident_with_case(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.av, i8 noundef %i.cr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cu)
          to label %bb.al unwind label %.thread449

.thread449:                                       ; preds = %bb.aj, %bb.ar, %bb.at
  %lpad.thr_comm447 = landingpad { ptr, i32 }
          cleanup
  br label %.thread438

bb.ak:                                            ; preds = %bb.ga
  %lpad.thr_comm.split-lp448 = landingpad { ptr, i32 }
          cleanup
  br label %.thread441

bb.al:                                            ; preds = %bb.aj
  %.sroa.0307.0.copyload = load ptr, ptr %i.av, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.sroa.9.0.copyload = load i64, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %.sroa.11.0.copyload = load i8, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.16, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.16.0..sroa_idx, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  br label %bb.ai

bb.am:                                            ; preds = %bb.ah
  %.not126 = icmp eq i64 %.sroa.0357.0.copyload, -1
  br i1 %.not126, label %bb.aw, label %bb.av

bb.an:                                            ; preds = %bb.ah
  %i.dm = icmp ne i64 %.sroa.0357.0.copyload, -1
  call void @llvm.assume(i1 %i.dm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  store i64 %.sroa.0357.0.copyload, ptr %i.au, align 8
  %.sroa.24.32..sroa_idx352 = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.24.32..sroa_idx352, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4358.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  %i.dn = load ptr, ptr %.sroa.24.32..sroa_idx352, align 8, !nonnull !13, !noundef !13
  %i.do = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.dp = load i64, ptr %i.do, align 8, !noundef !13
  %i.dq = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.dr = load i32, ptr %i.dq, align 8, !noundef !13
  invoke void @_RNvMs_NtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type4caseNtB4_4Case8from_str(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.at, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.dn, i64 noundef %i.dp, i32 noundef %i.dr)
          to label %bb.ap unwind label %bb.ao

bb.ao:                                            ; preds = %bb.aq, %bb.an
  %i.ds = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsdqg0Tq8Qk36_12darling_core4util13spanned_value12SpannedValueNtNtCs40k4W9msRzi_5alloc6string6StringEECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef align 8 dereferenceable(32) %i.au) #18
          to label %.thread438 unwind label %bb.au

bb.ap:                                            ; preds = %bb.an
  %i.dt = load i64, ptr %i.at, align 8, !range !15, !noundef !13 ; 2 uses
  %.not125 = icmp eq i64 %i.dt, -1
  %i.du = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.dv = load i8, ptr %i.du, align 8             ; 2 uses
  br i1 %.not125, label %bb.aq, label %bb.at

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  invoke void @_RNvMNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type4caseNtB2_4Case15ident_with_case(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.as, i8 noundef %i.dv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cu)
          to label %bb.ar unwind label %bb.ao

bb.ar:                                            ; preds = %bb.aq
  %.sroa.0307.0.copyload308 = load ptr, ptr %i.as, align 8
  %.sroa.9.0..sroa_idx311 = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.sroa.9.0.copyload312 = load i64, ptr %.sroa.9.0..sroa_idx311, align 8
  %.sroa.11.0..sroa_idx317 = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %.sroa.11.0.copyload318 = load i8, ptr %.sroa.11.0..sroa_idx317, align 8
  %.sroa.16.0..sroa_idx326 = getelementptr inbounds nuw i8, ptr %i.as, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.16, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.16.0..sroa_idx326, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsdqg0Tq8Qk36_12darling_core4util13spanned_value12SpannedValueNtNtCs40k4W9msRzi_5alloc6string6StringEECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef align 8 dereferenceable(32) %i.au)
          to label %bb.as unwind label %.thread449

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  br label %bb.ai

bb.at:                                            ; preds = %bb.ap
  %.sroa.5104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 9
  %.sroa.6386.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.6386.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.5104.0..sroa_idx, i64 15, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  store i64 -1, ptr %0, align 8
  %.sroa.4384.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.dt, ptr %.sroa.4384.0..sroa_idx, align 8
  %.sroa.5385.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.dv, ptr %.sroa.5385.0..sroa_idx, align 8
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsdqg0Tq8Qk36_12darling_core4util13spanned_value12SpannedValueNtNtCs40k4W9msRzi_5alloc6string6StringEECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef align 8 dereferenceable(32) %i.au)
          to label %.thread452 unwind label %.thread449

.thread452:                                       ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiD8eKn5yFCp_11proc_macro25IdentEECs8SLDEF1Cvau_13dsl_auto_type.exit

bb.au:                                            ; preds = %bb.ip, %bb.hx, %bb.gj, %.thread454, %.body227, %.thread438, %.body270, %bb.id, %.body245, %bb.hv, %.thread, %bb.it, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiD8eKn5yFCp_11proc_macro25IdentEECs8SLDEF1Cvau_13dsl_auto_type.exit290.thread, %bb.ie, %bb.ib, %bb.ia, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsiD8eKn5yFCp_11proc_macro25IdentECs8SLDEF1Cvau_13dsl_auto_type.exit286, %bb.ht, %bb.hr, %bb.hq, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsiD8eKn5yFCp_11proc_macro25IdentECs8SLDEF1Cvau_13dsl_auto_type.exit277, %bb.hn, %.body263, %.body260, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsiD8eKn5yFCp_11proc_macro25IdentECs8SLDEF1Cvau_13dsl_auto_type.exit255, %bb.fz, %.thread465, %bb.ex, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtNtBI_2rc2RcNtNtCs91tTATF2stA_3syn5error5ErrorEEECs8SLDEF1Cvau_13dsl_auto_type.exit, %bb.ef, %bb.eb, %bb.dw, %bb.dt, %bb.dg, %bb.dc, %bb.cy, %bb.cs, %bb.cp, %bb.cg, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsiD8eKn5yFCp_11proc_macro25IdentECs8SLDEF1Cvau_13dsl_auto_type.exit, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19local_variables_map17LocalVariablesMapEBH_.exit, %bb.ao, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type25expression_type_inference16InferrerSettingsEBH_.exit, %bb.e
  %i.dw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.av:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  store i64 %.sroa.0357.0.copyload, ptr %i.ar, align 8
  %.sroa.24.32..sroa_idx351 = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.24.32..sroa_idx351, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4358.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.dy = load i32, ptr %i.dx, align 8, !noundef !13
  invoke void @_RINvMNtCs91tTATF2stA_3syn5errorNtB3_5Error3newReECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aq, i32 noundef %i.dy, ptr noalias noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 46)
          to label %bb.ga unwind label %bb.fz

bb.aw:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.16, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6356.0..sroa_idx, i64 7, i1 false)
  br label %bb.ai

bb.ax:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1360
  invoke void @_RNvYRNtNtCs91tTATF2stA_3syn4item6ItemFnNtNtCs8GWn3DbEjso_5quote9to_tokens8ToTokens17into_token_streamCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(352) %i.bb)
          to label %.noexc215 unwind label %bb.az

.noexc215:                                        ; preds = %bb.ax
  %i.dz = invoke noundef i32 @_RNvNtCs8GWn3DbEjso_5quote7spanned10join_spans(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.c)
          to label %.noexc216 unwind label %bb.az

.noexc216:                                        ; preds = %.noexc215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1360
  invoke void @_RINvMNtCs91tTATF2stA_3syn5errorNtB3_5Error3newReECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, i32 noundef %i.dz, ptr noalias noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 47)
          to label %bb.ba unwind label %bb.az

bb.ay:                                            ; preds = %bb.ai
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8, !nonnull !13, !noundef !13
  %i.ec = getelementptr [352 x i8], ptr %i.eb, i64 %i.dl ; 4 uses
  %i.ed = getelementptr i8, ptr %i.ec, i64 -352   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  store i64 0, ptr %i.ap, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.ee, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 4 uses
  store i64 0, ptr %i.ef, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  %i.eg = getelementptr inbounds nuw i8, ptr %i.bb, i64 256 ; 4 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !noundef !13 ; 3 uses
  %.not128 = icmp eq ptr %i.eh, null
  br i1 %.not128, label %bb.bf, label %bb.be

.body236:                                         ; preds = %bb.fr, %.split, %bb.az, %.thread465, %bb.ca
  %.sroa.092.1 = phi i1 [ %.sroa.092.2470, %.thread465 ], [ %.not132, %bb.ca ], [ %.not132, %.split ], [ true, %bb.az ], [ true, %bb.fr ]
  %.sroa.077.5 = phi i8 [ %.sroa.077.8471, %.thread465 ], [ %.sroa.077.10, %bb.ca ], [ 1, %.split ], [ %.sroa.077.6, %bb.az ], [ %.sroa.077.17, %bb.fr ] ; 3 uses
  %.pn151.pn.pn.pn = phi { ptr, i32 } [ %.pn151.pn.pn472, %.thread465 ], [ %.pn145.pn.pn.pn, %bb.ca ], [ %lpad.thr_comm.split-lp474, %.split ], [ %i.ej, %bb.az ], [ %i.ij, %bb.fr ] ; 3 uses
  %i.ei = icmp ne i8 %.sroa.11.0, -1
  %or.cond = and i1 %i.ei, %.sroa.092.1
  br i1 %or.cond, label %bb.fx, label %.thread438

bb.az:                                            ; preds = %bb.fs, %.noexc216, %.noexc215, %bb.ax
  %.sroa.077.6 = phi i8 [ %.sroa.077.17, %bb.fs ], [ 1, %.noexc215 ], [ 1, %.noexc216 ], [ 1, %bb.ax ]
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %.body236

bb.ba:                                            ; preds = %.noexc216
  %.sroa.052.0.copyload = load i64, ptr %i.i, align 8
  %.sroa.654.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.654.0.copyload = load ptr, ptr %.sroa.654.0..sroa_idx, align 8
  %.sroa.857.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.857.0.copyload = load i64, ptr %.sroa.857.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store i64 -1, ptr %0, align 8
  %.sroa.4392.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.052.0.copyload, ptr %.sroa.4392.0..sroa_idx, align 8
end_hunk_0
begin_hunk_1_@_RNvNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type14auto_type_impl:bb.a
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsiD8eKn5yFCp_11proc_macro25IdentECs8SLDEF1Cvau_13dsl_auto_type.exit220

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsiD8eKn5yFCp_11proc_macro25IdentECs8SLDEF1Cvau_13dsl_auto_type.exit220: ; preds = %bb.ds, %bb.dr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %bb.ck

bb.dt:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtNtBI_2rc2RcNtNtCs91tTATF2stA_3syn5error5ErrorEEECs8SLDEF1Cvau_13dsl_auto_type.exit, %bb.dw, %bb.du
  %.sroa.091.4 = phi i1 [ false, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtNtBI_2rc2RcNtNtCs91tTATF2stA_3syn5error5ErrorEEECs8SLDEF1Cvau_13dsl_auto_type.exit ], [ true, %bb.dw ], [ true, %bb.du ]
  %.pn145.pn.pn = phi { ptr, i32 } [ %.pn145.pn, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtNtBI_2rc2RcNtNtCs91tTATF2stA_3syn5error5ErrorEEECs8SLDEF1Cvau_13dsl_auto_type.exit ], [ %.pn141, %bb.dw ], [ %i.gj, %bb.du ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsiD8eKn5yFCp_11proc_macro211TokenStreamECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef align 8 dereferenceable(32) %i.ag) #18
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsiD8eKn5yFCp_11proc_macro25IdentECs8SLDEF1Cvau_13dsl_auto_type.exit unwind label %bb.au

bb.du:                                            ; preds = %bb.ck
  %i.gj = landingpad { ptr, i32 }
          cleanup
  br label %bb.dt

bb.dv:                                            ; preds = %bb.ck
  invoke void @_RNvXsu_NtCs8GWn3DbEjso_5quote9to_tokensNtCsiD8eKn5yFCp_11proc_macro211TokenStreamNtB5_8ToTokens9to_tokens(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ag, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.r)
          to label %bb.dy unwind label %bb.dx

bb.dw:                                            ; preds = %bb.eb, %bb.dx
  %.pn141 = phi { ptr, i32 } [ %i.gk, %bb.dx ], [ %.pn139, %bb.eb ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsiD8eKn5yFCp_11proc_macro211TokenStreamECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef align 8 dereferenceable(32) %i.r) #18
          to label %bb.dt unwind label %bb.au

bb.dx:                                            ; preds = %bb.ek, %bb.ej, %bb.dz, %bb.dy, %bb.dv
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %bb.dw

bb.dy:                                            ; preds = %bb.dv
  invoke void @_RNvNtCs8GWn3DbEjso_5quote9___private10push_pound(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.r)
          to label %bb.dz unwind label %bb.dx

bb.dz:                                            ; preds = %bb.dy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  invoke void @_RNvMCsiD8eKn5yFCp_11proc_macro2NtB2_11TokenStream3new(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.p)
          to label %bb.ea unwind label %bb.dx

bb.ea:                                            ; preds = %bb.dz
  invoke void @_RNvNtCs8GWn3DbEjso_5quote9___private10push_ident(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.p, ptr noalias noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 5)
          to label %bb.ed unwind label %bb.ec

bb.eb:                                            ; preds = %bb.ef, %bb.ec
  %.pn139 = phi { ptr, i32 } [ %i.gl, %bb.ec ], [ %i.gm, %bb.ef ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsiD8eKn5yFCp_11proc_macro211TokenStreamECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef align 8 dereferenceable(32) %i.p) #18
          to label %bb.dw unwind label %bb.au

bb.ec:                                            ; preds = %bb.ei, %bb.ed, %bb.ea
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %bb.eb

bb.ed:                                            ; preds = %bb.ea
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  invoke void @_RNvMCsiD8eKn5yFCp_11proc_macro2NtB2_11TokenStream3new(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.n)
          to label %bb.ee unwind label %bb.ec

bb.ee:                                            ; preds = %bb.ed
  invoke void @_RNvNtCs8GWn3DbEjso_5quote9___private10push_ident(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.n, ptr noalias noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 6)
          to label %bb.eg unwind label %bb.ef

bb.ef:                                            ; preds = %bb.eh, %bb.eg, %bb.ee
  %i.gm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsiD8eKn5yFCp_11proc_macro211TokenStreamECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef align 8 dereferenceable(32) %i.n) #18
          to label %bb.eb unwind label %bb.au

bb.eg:                                            ; preds = %bb.ee
  invoke void @_RNvNtCs8GWn3DbEjso_5quote9___private11push_colon2(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.n)
          to label %bb.eh unwind label %bb.ef

bb.eh:                                            ; preds = %bb.eg
  invoke void @_RNvNtCs8GWn3DbEjso_5quote9___private10push_ident(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.n, ptr noalias noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 18)
          to label %bb.ei unwind label %bb.ef

bb.ei:                                            ; preds = %bb.eh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  invoke void @_RNvNtCs8GWn3DbEjso_5quote9___private10push_group(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.p, i8 noundef 0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.o)
          to label %bb.ej unwind label %bb.ec

bb.ej:                                            ; preds = %bb.ei
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  invoke void @_RNvNtCs8GWn3DbEjso_5quote9___private10push_group(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.r, i8 noundef 2, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.q)
          to label %bb.ek unwind label %bb.dx

bb.ek:                                            ; preds = %bb.ej
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  invoke void @_RNvXs2_NtNtCs91tTATF2stA_3syn4item8printingNtB7_6ItemFnNtNtCs8GWn3DbEjso_5quote9to_tokens8ToTokens9to_tokens(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(352) %i.bb, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.r)
          to label %bb.el unwind label %bb.dx

bb.el:                                            ; preds = %bb.ek
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.gn = load ptr, ptr %i.ee, align 8, !nonnull !13, !noundef !13 ; 4 uses
  %i.go = load i64, ptr %i.ap, align 8, !range !26, !noundef !13
  %i.gp = load i64, ptr %i.ef, align 8, !noundef !13 ; 3 uses
  %i.gq = icmp ult i64 %i.gp, 1152921504606846976
  call void @llvm.assume(i1 %i.gq)
  %.idx = shl nuw nsw i64 %i.gp, 3
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gn, i64 %.idx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr %i.gn, ptr %i.m, align 8
  %.sroa.472.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  store ptr %i.gn, ptr %.sroa.472.0..sroa_idx, align 8
  %.sroa.573.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 %i.go, ptr %.sroa.573.0..sroa_idx, align 8
  %.sroa.674.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  store ptr %i.gr, ptr %.sroa.674.0..sroa_idx, align 8
  %i.gs = icmp eq i64 %i.gp, 0
  br i1 %i.gs, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.el
  %i.gt = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  br label %bb.en

.body227:                                         ; preds = %bb.em, %bb.ex, %bb.ev
  %.pn145 = phi { ptr, i32 } [ %i.hf, %bb.ex ], [ %i.hf, %bb.ev ], [ %i.gu, %bb.em ]
  invoke void @_RNvXse_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterINtNtB9_2rc2RcNtNtCs91tTATF2stA_3syn5error5ErrorEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.m)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtNtBI_2rc2RcNtNtCs91tTATF2stA_3syn5error5ErrorEEECs8SLDEF1Cvau_13dsl_auto_type.exit unwind label %bb.au

bb.em:                                            ; preds = %bb.ey, %bb.eo
  %i.gu = landingpad { ptr, i32 }
          cleanup
  br label %.body227

bb.en:                                            ; preds = %.lr.ph, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs91tTATF2stA_3syn5error5ErrorINtNtCs40k4W9msRzi_5alloc2rc2RcBX_EEECs8SLDEF1Cvau_13dsl_auto_type.exit
  %i.gv = phi ptr [ %i.gn, %.lr.ph ], [ %i.hm, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs91tTATF2stA_3syn5error5ErrorINtNtCs40k4W9msRzi_5alloc2rc2RcBX_EEECs8SLDEF1Cvau_13dsl_auto_type.exit ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1365)
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  store ptr %i.gw, ptr %.sroa.472.0..sroa_idx, align 8, !alias.scope !1365
  %i.gx = load ptr, ptr %i.gv, align 8, !noalias !1365, !nonnull !13, !noundef !13 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.experimental.noalias.scope.decl(metadata !1366)
  %i.gy = load i64, ptr %i.gx, align 8, !noalias !1366, !noundef !13
  %i.gz = icmp eq i64 %i.gy, 1
  br i1 %i.gz, label %bb.eo, label %_RNvMs8_NtCs40k4W9msRzi_5alloc2rcINtB5_2RcNtNtCs91tTATF2stA_3syn5error5ErrorE10try_unwrapCs8SLDEF1Cvau_13dsl_auto_type.exit.thread

bb.eo:                                            ; preds = %bb.en
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.ha, i64 24, i1 false)
  store i64 0, ptr %i.gx, align 8, !noalias !1366
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1366
  store ptr %i.gx, ptr %i.b, align 8, !noalias !1366
  invoke void @_RNvXs1c_NtCs40k4W9msRzi_5alloc2rcINtB6_4WeakNtNtCs91tTATF2stA_3syn5error5ErrorENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_RNvMs8_NtCs40k4W9msRzi_5alloc2rcINtB5_2RcNtNtCs91tTATF2stA_3syn5error5ErrorE10try_unwrapCs8SLDEF1Cvau_13dsl_auto_type.exit unwind label %bb.em

_RNvMs8_NtCs40k4W9msRzi_5alloc2rcINtB5_2RcNtNtCs91tTATF2stA_3syn5error5ErrorE10try_unwrapCs8SLDEF1Cvau_13dsl_auto_type.exit.thread: ; preds = %bb.en
  store ptr %i.gx, ptr %i.gt, align 8, !alias.scope !1366
  store i64 -1, ptr %i.l, align 8, !alias.scope !1366
  br label %.thread483

._crit_edge:                                      ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs91tTATF2stA_3syn5error5ErrorINtNtCs40k4W9msRzi_5alloc2rc2RcBX_EEECs8SLDEF1Cvau_13dsl_auto_type.exit, %bb.el
  invoke void @_RNvXse_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterINtNtB9_2rc2RcNtNtCs91tTATF2stA_3syn5error5ErrorEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.m)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtNtBI_2rc2RcNtNtCs91tTATF2stA_3syn5error5ErrorEEECs8SLDEF1Cvau_13dsl_auto_type.exit224 unwind label %bb.ep

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtNtBI_2rc2RcNtNtCs91tTATF2stA_3syn5error5ErrorEEECs8SLDEF1Cvau_13dsl_auto_type.exit: ; preds = %.body227, %bb.ep
  %.pn145.pn = phi { ptr, i32 } [ %i.hb, %bb.ep ], [ %.pn145, %.body227 ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsiD8eKn5yFCp_11proc_macro211TokenStreamECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef align 8 dereferenceable(32) %i.s) #18
          to label %bb.dt unwind label %bb.au

bb.ep:                                            ; preds = %._crit_edge
  %i.hb = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtNtBI_2rc2RcNtNtCs91tTATF2stA_3syn5error5ErrorEEECs8SLDEF1Cvau_13dsl_auto_type.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtNtBI_2rc2RcNtNtCs91tTATF2stA_3syn5error5ErrorEEECs8SLDEF1Cvau_13dsl_auto_type.exit224: ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.hc, ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 32, i1 false)
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsiD8eKn5yFCp_11proc_macro211TokenStreamECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef align 8 dereferenceable(32) %i.ag)
          to label %bb.eq unwind label %bb.ce

bb.eq:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtNtBI_2rc2RcNtNtCs91tTATF2stA_3syn5error5ErrorEEECs8SLDEF1Cvau_13dsl_auto_type.exit224
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs91tTATF2stA_3syn2ty4TypeECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef align 8 dereferenceable(224) %i.ao)
          to label %bb.er unwind label %.split

bb.er:                                            ; preds = %bb.eq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16)
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs91tTATF2stA_3syn4path4PathECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ay)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type25expression_type_inference16InferrerSettingsEBH_.exit226 unwind label %bb.w

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type25expression_type_inference16InferrerSettingsEBH_.exit226: ; preds = %bb.er
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs91tTATF2stA_3syn4item6ItemFnECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef align 8 dereferenceable(352) %i.bb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  br label %bb.es

bb.es:                                            ; preds = %bb.io, %.noexc293, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type25expression_type_inference16InferrerSettingsEBH_.exit226
  ret void

_RNvMs8_NtCs40k4W9msRzi_5alloc2rcINtB5_2RcNtNtCs91tTATF2stA_3syn5error5ErrorE10try_unwrapCs8SLDEF1Cvau_13dsl_auto_type.exit: ; preds = %bb.eo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1366
  %.pr = load i64, ptr %i.l, align 8
  %i.hd = icmp eq i64 %.pr, -1
  br i1 %i.hd, label %.thread483, label %bb.eu

bb.et:                                            ; preds = %bb.ew
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %.pr481 = load i64, ptr %i.l, align 8
  %i.he = icmp eq i64 %.pr481, -1
  br i1 %i.he, label %.thread483, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs91tTATF2stA_3syn5error5ErrorINtNtCs40k4W9msRzi_5alloc2rc2RcBX_EEECs8SLDEF1Cvau_13dsl_auto_type.exit

bb.eu:                                            ; preds = %_RNvMs8_NtCs40k4W9msRzi_5alloc2rcINtB5_2RcNtNtCs91tTATF2stA_3syn5error5ErrorE10try_unwrapCs8SLDEF1Cvau_13dsl_auto_type.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke void @_RNvMNtCs91tTATF2stA_3syn5errorNtB2_5Error18into_compile_error(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.j, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.k)
          to label %bb.ew unwind label %bb.ev

bb.ev:                                            ; preds = %bb.ew, %bb.eu
  %i.hf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hg = load i64, ptr %i.l, align 8, !range !15, !noundef !13
  %.not144 = icmp eq i64 %i.hg, -1
  br i1 %.not144, label %bb.ex, label %.body227

bb.ew:                                            ; preds = %bb.eu
  invoke void @_RINvXs7_NtCsiD8eKn5yFCp_11proc_macro23impNtB6_11TokenStreamINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect6ExtendNtB8_9TokenTreeE6extendNtB8_11TokenStreamECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.s, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.j)
          to label %bb.et unwind label %bb.ev

bb.ex:                                            ; preds = %bb.ev
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs91tTATF2stA_3syn5error5ErrorINtNtCs40k4W9msRzi_5alloc2rc2RcBX_EEECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef align 8 dereferenceable(24) %i.l) #18
          to label %.body227 unwind label %bb.au

.thread483:                                       ; preds = %_RNvMs8_NtCs40k4W9msRzi_5alloc2rcINtB5_2RcNtNtCs91tTATF2stA_3syn5error5ErrorE10try_unwrapCs8SLDEF1Cvau_13dsl_auto_type.exit, %_RNvMs8_NtCs40k4W9msRzi_5alloc2rcINtB5_2RcNtNtCs91tTATF2stA_3syn5error5ErrorE10try_unwrapCs8SLDEF1Cvau_13dsl_auto_type.exit.thread, %bb.et
  call void @llvm.experimental.noalias.scope.decl(metadata !1367)
  call void @llvm.experimental.noalias.scope.decl(metadata !1368)
  call void @llvm.experimental.noalias.scope.decl(metadata !1369)
  %i.hh = load ptr, ptr %i.gt, align 8, !alias.scope !1370, !nonnull !13, !noundef !13 ; 2 uses
  %i.hi = load i64, ptr %i.hh, align 8, !noalias !1370, !noundef !13
  %i.hj = add i64 %i.hi, -1                       ; 2 uses
  store i64 %i.hj, ptr %i.hh, align 8, !noalias !1370
  %i.hk = icmp eq i64 %i.hj, 0
  br i1 %i.hk, label %bb.ey, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs91tTATF2stA_3syn5error5ErrorINtNtCs40k4W9msRzi_5alloc2rc2RcBX_EEECs8SLDEF1Cvau_13dsl_auto_type.exit

bb.ey:                                            ; preds = %.thread483
  invoke void @_RNvMs6_NtCs40k4W9msRzi_5alloc2rcINtB5_2RcNtNtCs91tTATF2stA_3syn5error5ErrorE9drop_slowCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.gt)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs91tTATF2stA_3syn5error5ErrorINtNtCs40k4W9msRzi_5alloc2rc2RcBX_EEECs8SLDEF1Cvau_13dsl_auto_type.exit unwind label %bb.em

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs91tTATF2stA_3syn5error5ErrorINtNtCs40k4W9msRzi_5alloc2rc2RcBX_EEECs8SLDEF1Cvau_13dsl_auto_type.exit: ; preds = %.thread483, %bb.ey, %bb.et
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.hl = load ptr, ptr %.sroa.674.0..sroa_idx, align 8, !alias.scope !1371, !nonnull !13, !noundef !13
  %i.hm = load ptr, ptr %.sroa.472.0..sroa_idx, align 8, !alias.scope !1371, !nonnull !13, !noundef !13 ; 2 uses
  %i.hn = icmp eq ptr %i.hm, %i.hl
  br i1 %i.hn, label %._crit_edge, label %bb.en

bb.ez:                                            ; preds = %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  %i.ho = getelementptr inbounds nuw i8, ptr %i.fr, i64 32
  %i.hp = load ptr, ptr %i.ho, align 8, !nonnull !13, !noundef !13
  %i.hq = getelementptr inbounds nuw i8, ptr %i.fr, i64 40
  %i.hr = load ptr, ptr %i.hq, align 8, !nonnull !13, !noundef !13
  invoke void @_RNvMs_NtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19local_variables_mapNtB4_17LocalVariablesMap11process_pat(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aj, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.al, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %i.hp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(224) %i.hr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(176) null)
          to label %bb.fa unwind label %bb.bv

bb.fa:                                            ; preds = %bb.ez
  %i.hs = load i64, ptr %i.aj, align 8, !range !15, !noundef !13
  %.not150 = icmp eq i64 %i.hs, -1
  br i1 %.not150, label %bb.ff, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fq, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 24, i1 false)
  store i64 1, ptr %i.f, align 8
  store i64 1, ptr %i.fp, align 8
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #17, !noalias !1372
  %i.ht = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef 8) #17, !noalias !1372 ; 6 uses
  %i.hu = icmp eq ptr %i.ht, null
  br i1 %i.hu, label %bb.fc, label %bb.fg, !prof !32

bb.fc:                                            ; preds = %bb.fb
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #20
          to label %.noexc231 unwind label %bb.fd

.noexc231:                                        ; preds = %bb.fc
  unreachable

bb.fd:                                            ; preds = %bb.fc
  %i.hv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc2rc7RcInnerNtNtCs91tTATF2stA_3syn5error5ErrorEECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.f) #18
          to label %.body unwind label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.hw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.ff:                                            ; preds = %bb.fl, %bb.fa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  br label %.backedge

.backedge:                                        ; preds = %bb.ff, %bb.bx
  br label %bb.bu

bb.fg:                                            ; preds = %bb.fb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ht, ptr noundef nonnull align 8 dereferenceable(40) %i.f, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.experimental.noalias.scope.decl(metadata !1373)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.ht, ptr %i.a, align 8, !noalias !1373
  %i.hx = load i64, ptr %i.ef, align 8, !alias.scope !1373, !noundef !13 ; 3 uses
  %i.hy = load i64, ptr %i.ap, align 8, !range !26, !alias.scope !1373, !noundef !13
  %i.hz = icmp eq i64 %i.hx, %i.hy
  br i1 %i.hz, label %bb.fh, label %bb.fl

bb.fh:                                            ; preds = %bb.fg
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecINtNtB7_2rc2RcNtNtCs91tTATF2stA_3syn5error5ErrorEE8grow_oneCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ap)
          to label %bb.fl unwind label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.ia = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ib = load i64, ptr %i.ht, align 8, !noalias !1374, !noundef !13
  %i.ic = add i64 %i.ib, -1                       ; 2 uses
  store i64 %i.ic, ptr %i.ht, align 8, !noalias !1374
  %i.id = icmp eq i64 %i.ic, 0
  br i1 %i.id, label %bb.fj, label %.body

bb.fj:                                            ; preds = %bb.fi
  invoke void @_RNvMs6_NtCs40k4W9msRzi_5alloc2rcINtB5_2RcNtNtCs91tTATF2stA_3syn5error5ErrorE9drop_slowCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.body unwind label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.ie = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.fl:                                            ; preds = %bb.fh, %bb.fg
  %i.if = load ptr, ptr %i.ee, align 8, !alias.scope !1373, !nonnull !13, !noundef !13
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %i.hx
  store ptr %i.ht, ptr %i.ig, align 8
  %i.ih = add i64 %i.hx, 1
  store i64 %i.ih, ptr %i.ef, align 8, !alias.scope !1373
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.ff

.thread454:                                       ; preds = %.body, %bb.bp, %.thread462
  %.pn151457 = phi { ptr, i32 } [ %lpad.thr_comm460, %.thread462 ], [ %eh.lpad-body, %.body ], [ %i.fi, %bb.bp ]
  invoke void @_RNvXsg_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_8RawTableTRNtCsiD8eKn5yFCp_11proc_macro25IdentNtNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19local_variables_map24LetStatementInferredTypeEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropB1v_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.fb)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type19local_variables_map17LocalVariablesMapEBH_.exit unwind label %bb.au

bb.fm:                                            ; preds = %bb.bh
  %i.ii = invoke noundef i32 @_RNvNtCs8GWn3DbEjso_5quote7spanned10join_spans(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.g)
          to label %bb.fn unwind label %bb.bm

bb.fn:                                            ; preds = %bb.fm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  invoke void @_RINvMNtCs91tTATF2stA_3syn5errorNtB3_5Error3newReECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.am, i32 noundef %i.ii, ptr noalias noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 52)
          to label %bb.fo unwind label %bb.bm

bb.fo:                                            ; preds = %bb.fn
  %.sroa.4367.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4367.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.am, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  store i64 -1, ptr %0, align 8
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCs91tTATF2stA_3syn2ty4TypeEECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef align 8 dereferenceable(8) %i.an)
          to label %bb.fp unwind label %.split.thread

bb.fp:                                            ; preds = %bb.fo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fw, %bb.fp
  %.sroa.077.17 = phi i8 [ 0, %bb.fp ], [ 1, %bb.fw ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtB7_2rc2RcNtNtCs91tTATF2stA_3syn5error5ErrorEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ap)
          to label %bb.fs unwind label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.ij = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecINtNtB7_2rc2RcNtNtCs91tTATF2stA_3syn5error5ErrorEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ap)
          to label %.body236 unwind label %bb.ft

bb.fs:                                            ; preds = %bb.fq
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecINtNtB7_2rc2RcNtNtCs91tTATF2stA_3syn5error5ErrorEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ap)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBG_2rc2RcNtNtCs91tTATF2stA_3syn5error5ErrorEEECs8SLDEF1Cvau_13dsl_auto_type.exit unwind label %bb.az

bb.ft:                                            ; preds = %bb.fr
  %i.ik = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #16
  unreachable

end_hunk_1
begin_hunk_2_@_RNvNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type14auto_type_impl:bb.a
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i254, i64 noundef range(i64 1, 0) %.val1.i.i253, i64 noundef 1) #17, !noalias !1379
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsiD8eKn5yFCp_11proc_macro25IdentECs8SLDEF1Cvau_13dsl_auto_type.exit255

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs91tTATF2stA_3syn2ty3AbiEECs8SLDEF1Cvau_13dsl_auto_type.exit252: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs91tTATF2stA_3syn11restriction10VisibilityECs8SLDEF1Cvau_13dsl_auto_type.exit, %bb.gk
  call void @llvm.experimental.noalias.scope.decl(metadata !1380)
  call void @llvm.experimental.noalias.scope.decl(metadata !1381)
  %i.jm = getelementptr inbounds nuw i8, ptr %i.bb, i64 248
  %i.jn = load i8, ptr %i.jm, align 8, !range !19, !alias.scope !1382, !noundef !13
  %i.jo = icmp eq i8 %i.jn, 2
  br i1 %i.jo, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsiD8eKn5yFCp_11proc_macro25IdentECs8SLDEF1Cvau_13dsl_auto_type.exit258, label %bb.go

bb.go:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs91tTATF2stA_3syn2ty3AbiEECs8SLDEF1Cvau_13dsl_auto_type.exit252
  %i.jp = getelementptr inbounds nuw i8, ptr %i.bb, i64 240
  %.val1.i.i256 = load i64, ptr %i.jp, align 8, !alias.scope !1382, !noundef !13 ; 2 uses
  %i.jq = icmp eq i64 %.val1.i.i256, 0
  br i1 %i.jq, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsiD8eKn5yFCp_11proc_macro25IdentECs8SLDEF1Cvau_13dsl_auto_type.exit258, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %.val.i.i257 = load ptr, ptr %i.cu, align 8, !alias.scope !1382, !nonnull !13, !noundef !13
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i257, i64 noundef range(i64 1, 0) %.val1.i.i256, i64 noundef 1) #17, !noalias !1382
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsiD8eKn5yFCp_11proc_macro25IdentECs8SLDEF1Cvau_13dsl_auto_type.exit258

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsiD8eKn5yFCp_11proc_macro25IdentECs8SLDEF1Cvau_13dsl_auto_type.exit255: ; preds = %bb.gn, %bb.gm, %bb.gl
  %i.jr = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs91tTATF2stA_3syn8generics8GenericsECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef align 8 dereferenceable(88) %i.jr) #18
          to label %.body260 unwind label %bb.au

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsiD8eKn5yFCp_11proc_macro25IdentECs8SLDEF1Cvau_13dsl_auto_type.exit258: ; preds = %bb.gp, %bb.go, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs91tTATF2stA_3syn2ty3AbiEECs8SLDEF1Cvau_13dsl_auto_type.exit252
  %i.js = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs91tTATF2stA_3syn10punctuated10PunctuatedNtNtBG_8generics12GenericParamNtNtBG_5token5CommaEECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.js)
          to label %bb.gr unwind label %bb.gq

bb.gq:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsiD8eKn5yFCp_11proc_macro25IdentECs8SLDEF1Cvau_13dsl_auto_type.exit258
  %i.jt = landingpad { ptr, i32 }
          cleanup
  %i.ju = getelementptr inbounds nuw i8, ptr %i.bb, i64 56
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs91tTATF2stA_3syn8generics11WhereClauseEECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef align 8 dereferenceable(40) %i.ju) #18
          to label %.body260 unwind label %bb.gs

bb.gr:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsiD8eKn5yFCp_11proc_macro25IdentECs8SLDEF1Cvau_13dsl_auto_type.exit258
  %i.jv = getelementptr inbounds nuw i8, ptr %i.bb, i64 56
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs91tTATF2stA_3syn8generics11WhereClauseEECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef align 8 dereferenceable(40) %i.jv)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs91tTATF2stA_3syn8generics8GenericsECs8SLDEF1Cvau_13dsl_auto_type.exit unwind label %bb.gt

bb.gs:                                            ; preds = %bb.gq
  %i.jw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #16
  unreachable

.body260:                                         ; preds = %bb.gt, %bb.gq, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsiD8eKn5yFCp_11proc_macro25IdentECs8SLDEF1Cvau_13dsl_auto_type.exit255
  %.pn168 = phi { ptr, i32 } [ %i.jg, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsiD8eKn5yFCp_11proc_macro25IdentECs8SLDEF1Cvau_13dsl_auto_type.exit255 ], [ %i.jy, %bb.gt ], [ %i.jt, %bb.gq ]
  %i.jx = getelementptr inbounds nuw i8, ptr %i.bb, i64 112
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs91tTATF2stA_3syn10punctuated10PunctuatedNtNtBG_4item5FnArgNtNtBG_5token5CommaEECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef align 8 dereferenceable(32) %i.jx) #18
          to label %.body263 unwind label %bb.au

bb.gt:                                            ; preds = %bb.gr
  %i.jy = landingpad { ptr, i32 }
          cleanup
  br label %.body260

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs91tTATF2stA_3syn8generics8GenericsECs8SLDEF1Cvau_13dsl_auto_type.exit: ; preds = %bb.gr
  %i.jz = getelementptr inbounds nuw i8, ptr %i.bb, i64 112 ; 3 uses
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTNtNtCs91tTATF2stA_3syn4item5FnArgNtNtBK_5token5CommaEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.jz)
          to label %bb.gv unwind label %bb.gu

bb.gu:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs91tTATF2stA_3syn8generics8GenericsECs8SLDEF1Cvau_13dsl_auto_type.exit
  %i.ka = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecTNtNtCs91tTATF2stA_3syn4item5FnArgNtNtBR_5token5CommaEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.jz)
          to label %.body.i unwind label %bb.gw

bb.gv:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs91tTATF2stA_3syn8generics8GenericsECs8SLDEF1Cvau_13dsl_auto_type.exit
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecTNtNtCs91tTATF2stA_3syn4item5FnArgNtNtBR_5token5CommaEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.jz)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTNtNtCs91tTATF2stA_3syn4item5FnArgNtNtB1d_5token5CommaEEECs8SLDEF1Cvau_13dsl_auto_type.exit.i unwind label %bb.gx

bb.gw:                                            ; preds = %bb.gu
  %i.kb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.gx:                                            ; preds = %bb.gv
  %i.kc = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.gx, %bb.gu
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.kc, %bb.gx ], [ %i.ka, %bb.gu ]
  %i.kd = getelementptr inbounds nuw i8, ptr %i.bb, i64 136
  %.val1.i = load ptr, ptr %i.kd, align 8, !alias.scope !1383, !align !16, !noundef !13
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCs91tTATF2stA_3syn4item5FnArgEEECs8SLDEF1Cvau_13dsl_auto_type(ptr %.val1.i) #18
          to label %.body263 unwind label %bb.gy

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTNtNtCs91tTATF2stA_3syn4item5FnArgNtNtB1d_5token5CommaEEECs8SLDEF1Cvau_13dsl_auto_type.exit.i: ; preds = %bb.gv
  %i.ke = getelementptr inbounds nuw i8, ptr %i.bb, i64 136
  %.val.i = load ptr, ptr %i.ke, align 8, !alias.scope !1383, !align !16, !noundef !13
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCs91tTATF2stA_3syn4item5FnArgEEECs8SLDEF1Cvau_13dsl_auto_type(ptr %.val.i)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs91tTATF2stA_3syn10punctuated10PunctuatedNtNtBG_4item5FnArgNtNtBG_5token5CommaEECs8SLDEF1Cvau_13dsl_auto_type.exit unwind label %bb.gz

bb.gy:                                            ; preds = %.body.i
  %i.kf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #16
  unreachable

.body263:                                         ; preds = %bb.gz, %.body.i, %.body260
  %.pn170 = phi { ptr, i32 } [ %.pn168, %.body260 ], [ %i.kh, %bb.gz ], [ %eh.lpad-body.i, %.body.i ]
  %i.kg = getelementptr inbounds nuw i8, ptr %i.bb, i64 144
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs91tTATF2stA_3syn4item8VariadicEECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef align 8 dereferenceable(64) %i.kg) #18
          to label %bb.ha unwind label %bb.au

bb.gz:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTNtNtCs91tTATF2stA_3syn4item5FnArgNtNtB1d_5token5CommaEEECs8SLDEF1Cvau_13dsl_auto_type.exit.i
  %i.kh = landingpad { ptr, i32 }
          cleanup
  br label %.body263

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs91tTATF2stA_3syn10punctuated10PunctuatedNtNtBG_4item5FnArgNtNtBG_5token5CommaEECs8SLDEF1Cvau_13dsl_auto_type.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTNtNtCs91tTATF2stA_3syn4item5FnArgNtNtB1d_5token5CommaEEECs8SLDEF1Cvau_13dsl_auto_type.exit.i
  %i.ki = getelementptr inbounds nuw i8, ptr %i.bb, i64 144
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs91tTATF2stA_3syn4item8VariadicEECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef align 8 dereferenceable(64) %i.ki)
          to label %bb.hc unwind label %bb.hb

bb.ha:                                            ; preds = %bb.hb, %.body263
  %.pn172 = phi { ptr, i32 } [ %i.kn, %bb.hb ], [ %.pn170, %.body263 ] ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.bb, i64 256 ; 2 uses
  %i.kk = load ptr, ptr %i.kj, align 8, !noundef !13
  %i.kl = icmp ne ptr %i.kk, null
  %i.km = trunc nuw i8 %.sroa.077.4 to i1
  %or.cond5 = select i1 %i.kl, i1 %i.km, i1 false
  br i1 %or.cond5, label %bb.hn, label %.body270

bb.hb:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs91tTATF2stA_3syn10punctuated10PunctuatedNtNtBG_4item5FnArgNtNtBG_5token5CommaEECs8SLDEF1Cvau_13dsl_auto_type.exit
  %i.kn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ha

bb.hc:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs91tTATF2stA_3syn10punctuated10PunctuatedNtNtBG_4item5FnArgNtNtBG_5token5CommaEECs8SLDEF1Cvau_13dsl_auto_type.exit
  %i.ko = getelementptr inbounds nuw i8, ptr %i.bb, i64 256
  %i.kp = load ptr, ptr %i.ko, align 8, !noundef !13 ; 4 uses
  %i.kq = icmp ne ptr %i.kp, null
  %i.kr = trunc nuw i8 %.sroa.077.4 to i1
  %or.cond3 = select i1 %i.kq, i1 %i.kr, i1 false
  br i1 %or.cond3, label %bb.hh, label %bb.hd

bb.hd:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCs91tTATF2stA_3syn2ty4TypeEECs8SLDEF1Cvau_13dsl_auto_type.exit, %bb.hc
  %i.ks = getelementptr inbounds nuw i8, ptr %i.bb, i64 344
  %.val205 = load ptr, ptr %i.ks, align 8, !nonnull !13, !noundef !13 ; 5 uses
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs91tTATF2stA_3syn4stmt4StmtENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull align 8 dereferenceable(40) %.val205)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs91tTATF2stA_3syn4stmt4StmtEECs8SLDEF1Cvau_13dsl_auto_type.exit.i.i unwind label %bb.he

bb.he:                                            ; preds = %bb.hd
  %i.kt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtCs91tTATF2stA_3syn4stmt4StmtENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull align 8 dereferenceable(40) %.val205)
          to label %.thread429 unwind label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.ku = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs91tTATF2stA_3syn4stmt4StmtEECs8SLDEF1Cvau_13dsl_auto_type.exit.i.i: ; preds = %bb.hd
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtCs91tTATF2stA_3syn4stmt4StmtENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull align 8 dereferenceable(40) %.val205)
          to label %bb.hj unwind label %bb.hg

bb.hg:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs91tTATF2stA_3syn4stmt4StmtEECs8SLDEF1Cvau_13dsl_auto_type.exit.i.i
  %i.kv = landingpad { ptr, i32 }
          cleanup
  br label %.thread429

.thread429:                                       ; preds = %bb.he, %bb.hg
  %eh.lpad-body.i265 = phi { ptr, i32 } [ %i.kv, %bb.hg ], [ %i.kt, %bb.he ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val205, i64 noundef 40, i64 noundef 8) #17
  br label %.thread411

bb.hh:                                            ; preds = %bb.hc
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs91tTATF2stA_3syn2ty4TypeECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef align 8 dereferenceable(224) %i.kp) #19
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCs91tTATF2stA_3syn2ty4TypeEECs8SLDEF1Cvau_13dsl_auto_type.exit unwind label %bb.hi, !noalias !1384, !inline_history !17

bb.hi:                                            ; preds = %bb.hh
  %i.kw = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.kp, i64 noundef 224, i64 noundef 8) #17, !noalias !1384, !inline_history !17
  br label %.body270

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCs91tTATF2stA_3syn2ty4TypeEECs8SLDEF1Cvau_13dsl_auto_type.exit: ; preds = %bb.hh
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.kp, i64 noundef 224, i64 noundef 8) #17, !noalias !1384, !inline_history !17
  br label %bb.hd

.body270:                                         ; preds = %bb.hi, %bb.ht, %bb.hs, %bb.hn, %bb.ha
  %.pn174 = phi { ptr, i32 } [ %.pn164, %bb.hs ], [ %.pn172, %bb.hn ], [ %.pn172, %bb.ha ], [ %.pn164, %bb.ht ], [ %i.kw, %bb.hi ]
  %i.kx = getelementptr inbounds nuw i8, ptr %i.bb, i64 344
  %.val204 = load ptr, ptr %i.kx, align 8, !nonnull !13, !noundef !13
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCs91tTATF2stA_3syn4stmt5BlockEECs8SLDEF1Cvau_13dsl_auto_type(ptr %.val204) #18
          to label %.thread411 unwind label %bb.au

bb.hj:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs91tTATF2stA_3syn4stmt4StmtEECs8SLDEF1Cvau_13dsl_auto_type.exit.i.i
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val205, i64 noundef 40, i64 noundef 8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  br i1 %4, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs91tTATF2stA_3syn4path4PathEECs8SLDEF1Cvau_13dsl_auto_type.exit, label %.thread492.a

.thread492.a:                                     ; preds = %bb.hm, %bb.hl, %bb.hk, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs91tTATF2stA_3syn4path4PathEECs8SLDEF1Cvau_13dsl_auto_type.exit, %bb.hj
  %.sroa.088.4 = phi i8 [ 0, %bb.hj ], [ %.sroa.088.5, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs91tTATF2stA_3syn4path4PathEECs8SLDEF1Cvau_13dsl_auto_type.exit ], [ %.sroa.088.5, %bb.hk ], [ %.sroa.088.5, %bb.hl ], [ %.sroa.088.5, %bb.hm ] ; 3 uses
  %.sroa.081.7 = phi i8 [ %.sroa.081.6, %bb.hj ], [ %.sroa.081.8, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs91tTATF2stA_3syn4path4PathEECs8SLDEF1Cvau_13dsl_auto_type.exit ], [ %.sroa.081.8, %bb.hk ], [ %.sroa.081.8, %bb.hl ], [ %.sroa.081.8, %bb.hm ]
  %5 = trunc nuw i8 %.sroa.081.7 to i1
  br i1 %5, label %.thread484, label %.noexc293

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs91tTATF2stA_3syn4path4PathEECs8SLDEF1Cvau_13dsl_auto_type.exit: ; preds = %bb.if, %bb.ig, %bb.hj
  %.sroa.088.5 = phi i8 [ 0, %bb.hj ], [ 1, %bb.ig ], [ 1, %bb.if ] ; 4 uses
  %.sroa.081.8 = phi i8 [ %.sroa.081.6, %bb.hj ], [ 1, %bb.ig ], [ 1, %bb.if ] ; 4 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.bf, i64 96
  call void @llvm.experimental.noalias.scope.decl(metadata !1385)
  %i.kz = getelementptr inbounds nuw i8, ptr %i.bf, i64 112
  %i.la = load i8, ptr %i.kz, align 8, !range !22, !alias.scope !1385, !noundef !13 ; 2 uses
  %i.lb = icmp eq i8 %i.la, -1
  br i1 %i.lb, label %.thread492.a, label %bb.hk

bb.hk:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs91tTATF2stA_3syn4path4PathEECs8SLDEF1Cvau_13dsl_auto_type.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !1386)
  call void @llvm.experimental.noalias.scope.decl(metadata !1387)
  %i.lc = icmp eq i8 %i.la, 2
  br i1 %i.lc, label %.thread492.a, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.ld = getelementptr inbounds nuw i8, ptr %i.bf, i64 104
  %.val1.i.i.i272 = load i64, ptr %i.ld, align 8, !alias.scope !1388, !noundef !13 ; 2 uses
  %i.le = icmp eq i64 %.val1.i.i.i272, 0
  br i1 %i.le, label %.thread492.a, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %.val.i.i.i273 = load ptr, ptr %i.ky, align 8, !alias.scope !1388, !nonnull !13, !noundef !13
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i273, i64 noundef range(i64 1, 0) %.val1.i.i.i272, i64 noundef 1) #17, !noalias !1388
  br label %.thread492.a

bb.hn:                                            ; preds = %bb.ha
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCs91tTATF2stA_3syn2ty4TypeEECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef align 8 dereferenceable(8) %i.kj) #18
          to label %.body270 unwind label %bb.au

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs91tTATF2stA_3syn2ty3AbiEECs8SLDEF1Cvau_13dsl_auto_type.exit: ; preds = %.body247, %bb.gj
  call void @llvm.experimental.noalias.scope.decl(metadata !1389)
  call void @llvm.experimental.noalias.scope.decl(metadata !1390)
  %i.lf = getelementptr inbounds nuw i8, ptr %i.bb, i64 248
  %i.lg = load i8, ptr %i.lf, align 8, !range !19, !alias.scope !1391, !noundef !13
  %i.lh = icmp eq i8 %i.lg, 2
  br i1 %i.lh, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsiD8eKn5yFCp_11proc_macro25IdentECs8SLDEF1Cvau_13dsl_auto_type.exit277, label %bb.ho

bb.ho:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs91tTATF2stA_3syn2ty3AbiEECs8SLDEF1Cvau_13dsl_auto_type.exit
  %i.li = getelementptr inbounds nuw i8, ptr %i.bb, i64 240
  %.val1.i.i275 = load i64, ptr %i.li, align 8, !alias.scope !1391, !noundef !13 ; 2 uses
  %i.lj = icmp eq i64 %.val1.i.i275, 0
  br i1 %i.lj, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsiD8eKn5yFCp_11proc_macro25IdentECs8SLDEF1Cvau_13dsl_auto_type.exit277, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  %.val.i.i276 = load ptr, ptr %i.cu, align 8, !alias.scope !1391, !nonnull !13, !noundef !13
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i276, i64 noundef range(i64 1, 0) %.val1.i.i275, i64 noundef 1) #17, !noalias !1391
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsiD8eKn5yFCp_11proc_macro25IdentECs8SLDEF1Cvau_13dsl_auto_type.exit277

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsiD8eKn5yFCp_11proc_macro25IdentECs8SLDEF1Cvau_13dsl_auto_type.exit277: ; preds = %bb.hp, %bb.ho, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs91tTATF2stA_3syn2ty3AbiEECs8SLDEF1Cvau_13dsl_auto_type.exit
  %i.lk = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs91tTATF2stA_3syn8generics8GenericsECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef align 8 dereferenceable(88) %i.lk) #18
          to label %bb.hq unwind label %bb.au

bb.hq:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsiD8eKn5yFCp_11proc_macro25IdentECs8SLDEF1Cvau_13dsl_auto_type.exit277
  %i.ll = getelementptr inbounds nuw i8, ptr %i.bb, i64 112
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs91tTATF2stA_3syn10punctuated10PunctuatedNtNtBG_4item5FnArgNtNtBG_5token5CommaEECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef align 8 dereferenceable(32) %i.ll) #18
          to label %bb.hr unwind label %bb.au

bb.hr:                                            ; preds = %bb.hq
  %i.lm = getelementptr inbounds nuw i8, ptr %i.bb, i64 144
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs91tTATF2stA_3syn4item8VariadicEECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef align 8 dereferenceable(64) %i.lm) #18
          to label %bb.hs unwind label %bb.au

bb.hs:                                            ; preds = %bb.hr
  %i.ln = getelementptr inbounds nuw i8, ptr %i.bb, i64 256 ; 2 uses
  %i.lo = load ptr, ptr %i.ln, align 8, !noundef !13
  %i.lp = icmp ne ptr %i.lo, null
  %i.lq = trunc nuw i8 %.sroa.077.4 to i1
  %or.cond7 = select i1 %i.lp, i1 %i.lq, i1 false
  br i1 %or.cond7, label %bb.ht, label %.body270

bb.ht:                                            ; preds = %bb.hs
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCs91tTATF2stA_3syn2ty4TypeEECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef align 8 dereferenceable(8) %i.ln) #18
          to label %.body270 unwind label %bb.au

.thread441:                                       ; preds = %bb.fz, %bb.ak
  %.pn156444 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp448, %bb.ak ], [ %i.io, %bb.fz ] ; 2 uses
  %i.lr = icmp eq i8 %.sroa.5355.0.copyload, 2
  %i.ls = icmp eq i64 %.sroa.4354.0.copyload, 0
  %or.cond517 = select i1 %i.lr, i1 true, i1 %i.ls
  br i1 %or.cond517, label %.thread438, label %bb.hu

bb.hu:                                            ; preds = %.thread441
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0353.0.copyload) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0353.0.copyload, i64 noundef range(i64 1, 0) %.sroa.4354.0.copyload, i64 noundef 1) #17, !noalias !1392
  br label %.thread438

bb.hv:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs8SLDEF1Cvau_13dsl_auto_type9auto_type25expression_type_inference16InferrerSettingsEBH_.exit
  %i.lt = getelementptr inbounds nuw i8, ptr %i.bb, i64 312
  %.val197 = load i32, ptr %i.lt, align 8, !range !31, !noundef !13
  %i.lu = getelementptr inbounds nuw i8, ptr %i.bb, i64 320
  %.val198 = load ptr, ptr %i.lu, align 8
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs91tTATF2stA_3syn11restriction10VisibilityECs8SLDEF1Cvau_13dsl_auto_type(i32 %.val197, ptr %.val198) #18
          to label %bb.hw unwind label %bb.au

bb.hw:                                            ; preds = %bb.hv
  %.val = load i64, ptr %i.bb, align 8, !range !28, !noundef !13
  %.val184 = load ptr, ptr %.sroa.423.0..sroa_idx, align 8 ; 2 uses
  %i.lv = icmp eq i64 %.val, 0
  %i.lw = icmp eq ptr %.val184, null
  %or.cond.i281 = select i1 %i.lv, i1 true, i1 %i.lw
  br i1 %or.cond.i281, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs91tTATF2stA_3syn2ty3AbiEECs8SLDEF1Cvau_13dsl_auto_type.exit283, label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCs91tTATF2stA_3syn3lit7LitReprEECs8SLDEF1Cvau_13dsl_auto_type(ptr nonnull %.val184)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs91tTATF2stA_3syn2ty3AbiEECs8SLDEF1Cvau_13dsl_auto_type.exit283 unwind label %bb.au

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs91tTATF2stA_3syn2ty3AbiEECs8SLDEF1Cvau_13dsl_auto_type.exit283: ; preds = %bb.hw, %bb.hx
  %i.lx = getelementptr inbounds nuw i8, ptr %i.bb, i64 232
  call void @llvm.experimental.noalias.scope.decl(metadata !1393)
  call void @llvm.experimental.noalias.scope.decl(metadata !1394)
  %i.ly = getelementptr inbounds nuw i8, ptr %i.bb, i64 248
  %i.lz = load i8, ptr %i.ly, align 8, !range !19, !alias.scope !1395, !noundef !13
  %i.ma = icmp eq i8 %i.lz, 2
  br i1 %i.ma, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsiD8eKn5yFCp_11proc_macro25IdentECs8SLDEF1Cvau_13dsl_auto_type.exit286, label %bb.hy

bb.hy:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs91tTATF2stA_3syn2ty3AbiEECs8SLDEF1Cvau_13dsl_auto_type.exit283
  %i.mb = getelementptr inbounds nuw i8, ptr %i.bb, i64 240
  %.val1.i.i284 = load i64, ptr %i.mb, align 8, !alias.scope !1395, !noundef !13 ; 2 uses
  %i.mc = icmp eq i64 %.val1.i.i284, 0
  br i1 %i.mc, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsiD8eKn5yFCp_11proc_macro25IdentECs8SLDEF1Cvau_13dsl_auto_type.exit286, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  %.val.i.i285 = load ptr, ptr %i.lx, align 8, !alias.scope !1395, !nonnull !13, !noundef !13
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i285, i64 noundef range(i64 1, 0) %.val1.i.i284, i64 noundef 1) #17, !noalias !1395
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsiD8eKn5yFCp_11proc_macro25IdentECs8SLDEF1Cvau_13dsl_auto_type.exit286

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsiD8eKn5yFCp_11proc_macro25IdentECs8SLDEF1Cvau_13dsl_auto_type.exit286: ; preds = %bb.hz, %bb.hy, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs91tTATF2stA_3syn2ty3AbiEECs8SLDEF1Cvau_13dsl_auto_type.exit283
  %i.md = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs91tTATF2stA_3syn8generics8GenericsECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef align 8 dereferenceable(88) %i.md) #18
          to label %bb.ia unwind label %bb.au

bb.ia:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsiD8eKn5yFCp_11proc_macro25IdentECs8SLDEF1Cvau_13dsl_auto_type.exit286
  %i.me = getelementptr inbounds nuw i8, ptr %i.bb, i64 112
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs91tTATF2stA_3syn10punctuated10PunctuatedNtNtBG_4item5FnArgNtNtBG_5token5CommaEECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef align 8 dereferenceable(32) %i.me) #18
          to label %bb.ib unwind label %bb.au

bb.ib:                                            ; preds = %bb.ia
  %i.mf = getelementptr inbounds nuw i8, ptr %i.bb, i64 144
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs91tTATF2stA_3syn4item8VariadicEECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef align 8 dereferenceable(64) %i.mf) #18
          to label %bb.ic unwind label %bb.au

bb.ic:                                            ; preds = %bb.ib
  %i.mg = getelementptr inbounds nuw i8, ptr %i.bb, i64 256 ; 2 uses
  %i.mh = load ptr, ptr %i.mg, align 8, !noundef !13
  %i.mi = icmp ne ptr %i.mh, null
  %i.mj = trunc nuw i8 %.sroa.077.0 to i1
  %or.cond9 = select i1 %i.mi, i1 %i.mj, i1 false
  br i1 %or.cond9, label %bb.ie, label %bb.id

bb.id:                                            ; preds = %bb.ie, %bb.ic
  %i.mk = getelementptr inbounds nuw i8, ptr %i.bb, i64 344
  %.val203 = load ptr, ptr %i.mk, align 8, !nonnull !13, !noundef !13
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCs91tTATF2stA_3syn4stmt5BlockEECs8SLDEF1Cvau_13dsl_auto_type(ptr %.val203) #18
          to label %.thread411 unwind label %bb.au

bb.ie:                                            ; preds = %bb.ic
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCs91tTATF2stA_3syn2ty4TypeEECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef align 8 dereferenceable(8) %i.mg) #18
          to label %bb.id unwind label %bb.au

bb.if:                                            ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  %.sroa.4378.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4378.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.618, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.618)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  %i.ml = load i64, ptr %i.bf, align 8, !range !15, !alias.scope !1396, !noundef !13
  %i.mm = icmp eq i64 %i.ml, -1
  br i1 %i.mm, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs91tTATF2stA_3syn4path4PathEECs8SLDEF1Cvau_13dsl_auto_type.exit, label %bb.ig

bb.ig:                                            ; preds = %bb.if
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs91tTATF2stA_3syn4path4PathECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.bf)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs91tTATF2stA_3syn4path4PathEECs8SLDEF1Cvau_13dsl_auto_type.exit unwind label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  %i.mn = landingpad { ptr, i32 }
          cleanup
  %i.mo = getelementptr inbounds nuw i8, ptr %i.bf, i64 96
  call void @llvm.experimental.noalias.scope.decl(metadata !1397)
  %i.mp = getelementptr inbounds nuw i8, ptr %i.bf, i64 112
  %i.mq = load i8, ptr %i.mp, align 8, !range !22, !alias.scope !1397, !noundef !13 ; 2 uses
  %i.mr = icmp eq i8 %i.mq, -1
  br i1 %i.mr, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiD8eKn5yFCp_11proc_macro25IdentEECs8SLDEF1Cvau_13dsl_auto_type.exit290.thread, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  call void @llvm.experimental.noalias.scope.decl(metadata !1398)
  call void @llvm.experimental.noalias.scope.decl(metadata !1399)
  %i.ms = icmp eq i8 %i.mq, 2
  br i1 %i.ms, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiD8eKn5yFCp_11proc_macro25IdentEECs8SLDEF1Cvau_13dsl_auto_type.exit290.thread, label %bb.ij

bb.ij:                                            ; preds = %bb.ii
  %i.mt = getelementptr inbounds nuw i8, ptr %i.bf, i64 104
  %.val1.i.i.i288 = load i64, ptr %i.mt, align 8, !alias.scope !1400, !noundef !13 ; 2 uses
  %i.mu = icmp eq i64 %.val1.i.i.i288, 0
  br i1 %i.mu, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiD8eKn5yFCp_11proc_macro25IdentEECs8SLDEF1Cvau_13dsl_auto_type.exit290.thread, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  %.val.i.i.i289 = load ptr, ptr %i.mo, align 8, !alias.scope !1400, !nonnull !13, !noundef !13
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i289, i64 noundef range(i64 1, 0) %.val1.i.i.i288, i64 noundef 1) #17, !noalias !1400
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiD8eKn5yFCp_11proc_macro25IdentEECs8SLDEF1Cvau_13dsl_auto_type.exit290.thread

.noexc293:                                        ; preds = %.thread484, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsdqg0Tq8Qk36_12darling_core4util13spanned_value12SpannedValueNtNtCs40k4W9msRzi_5alloc6string6StringEECs8SLDEF1Cvau_13dsl_auto_type.exit.i, %.thread492.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  %i.mv = trunc nuw i8 %.sroa.088.4 to i1
  br i1 %i.mv, label %bb.io, label %bb.es

.thread484:                                       ; preds = %.thread492.a
  %i.mw = getelementptr inbounds nuw i8, ptr %i.bf, i64 48 ; 4 uses
  %i.mx = load i64, ptr %i.mw, align 8, !range !15, !alias.scope !1401, !noundef !13
  %i.my = icmp eq i64 %i.mx, -1
  br i1 %i.my, label %.noexc293, label %bb.il

bb.il:                                            ; preds = %.thread484
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.mw)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsdqg0Tq8Qk36_12darling_core4util13spanned_value12SpannedValueNtNtCs40k4W9msRzi_5alloc6string6StringEECs8SLDEF1Cvau_13dsl_auto_type.exit.i unwind label %bb.im

bb.im:                                            ; preds = %bb.il
  %i.mz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.mw)
          to label %.body291 unwind label %bb.in

bb.in:                                            ; preds = %bb.im
  %i.na = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCsdqg0Tq8Qk36_12darling_core4util13spanned_value12SpannedValueNtNtCs40k4W9msRzi_5alloc6string6StringEECs8SLDEF1Cvau_13dsl_auto_type.exit.i: ; preds = %bb.il
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.mw)
          to label %.noexc293 unwind label %bb.b

bb.io:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtNtCsdqg0Tq8Qk36_12darling_core3ast4data11nested_meta10NestedMetaEECs8SLDEF1Cvau_13dsl_auto_type.exit304, %.noexc293
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs91tTATF2stA_3syn4path4PathECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef align 8 dereferenceable(48) %3)
  br label %bb.es

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiD8eKn5yFCp_11proc_macro25IdentEECs8SLDEF1Cvau_13dsl_auto_type.exit290.thread: ; preds = %bb.ik, %bb.ij, %bb.ii, %bb.ih
  %i.nb = getelementptr inbounds nuw i8, ptr %i.bf, i64 48
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsdqg0Tq8Qk36_12darling_core4util13spanned_value12SpannedValueNtNtCs40k4W9msRzi_5alloc6string6StringEEECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef align 8 dereferenceable(32) %i.nb) #18
          to label %.thread unwind label %bb.au

.thread411:                                       ; preds = %bb.id, %.body270, %.thread429
  %.pn176417 = phi { ptr, i32 } [ %eh.lpad-body.i265, %.thread429 ], [ %.pn162, %bb.id ], [ %.pn174, %.body270 ] ; 2 uses
  %.sroa.081.0416 = phi i8 [ %.sroa.081.6, %.thread429 ], [ %.sroa.081.2, %bb.id ], [ %.sroa.081.6, %.body270 ]
  %cond = icmp eq i8 %.sroa.081.0416, 0
  br i1 %cond, label %.body291.thread, label %.thread499

.thread425:                                       ; preds = %bb.h, %bb.o, %bb.n, %.thread434
  %eh.lpad-body207424 = phi { ptr, i32 } [ %i.ch, %bb.o ], [ %lpad.thr_comm, %.thread434 ], [ %i.ch, %bb.n ], [ %i.bt, %bb.h ] ; 2 uses
  %i.nc = load i64, ptr %i.bf, align 8, !range !15, !alias.scope !1402, !noundef !13
  %i.nd = icmp eq i64 %i.nc, -1
  br i1 %i.nd, label %.thread499, label %bb.ip

bb.ip:                                            ; preds = %.thread425
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs91tTATF2stA_3syn4path4PathECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.bf)
          to label %.thread499 unwind label %bb.au

.thread499:                                       ; preds = %bb.ip, %.thread425, %.thread411
  %.sroa.087.0415506 = phi i8 [ 0, %.thread411 ], [ 1, %.thread425 ], [ 1, %bb.ip ]
  %.pn176417504 = phi { ptr, i32 } [ %.pn176417, %.thread411 ], [ %eh.lpad-body207424, %.thread425 ], [ %eh.lpad-body207424, %bb.ip ]
  %i.ne = getelementptr inbounds nuw i8, ptr %i.bf, i64 96
  call void @llvm.experimental.noalias.scope.decl(metadata !1403)
  %i.nf = getelementptr inbounds nuw i8, ptr %i.bf, i64 112
  %i.ng = load i8, ptr %i.nf, align 8, !range !22, !alias.scope !1403, !noundef !13 ; 2 uses
  %i.nh = icmp eq i8 %i.ng, -1
  br i1 %i.nh, label %bb.it, label %bb.iq

bb.iq:                                            ; preds = %.thread499
  call void @llvm.experimental.noalias.scope.decl(metadata !1404)
  call void @llvm.experimental.noalias.scope.decl(metadata !1405)
  %i.ni = icmp eq i8 %i.ng, 2
  br i1 %i.ni, label %bb.it, label %bb.ir

bb.ir:                                            ; preds = %bb.iq
  %i.nj = getelementptr inbounds nuw i8, ptr %i.bf, i64 104
  %.val1.i.i.i296 = load i64, ptr %i.nj, align 8, !alias.scope !1406, !noundef !13 ; 2 uses
  %i.nk = icmp eq i64 %.val1.i.i.i296, 0
  br i1 %i.nk, label %bb.it, label %bb.is

bb.is:                                            ; preds = %bb.ir
  %.val.i.i.i297 = load ptr, ptr %i.ne, align 8, !alias.scope !1406, !nonnull !13, !noundef !13
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i297, i64 noundef range(i64 1, 0) %.val1.i.i.i296, i64 noundef 1) #17, !noalias !1406
  br label %bb.it

bb.it:                                            ; preds = %.thread499, %bb.iq, %bb.ir, %bb.is
  %i.nl = getelementptr inbounds nuw i8, ptr %i.bf, i64 48
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsdqg0Tq8Qk36_12darling_core4util13spanned_value12SpannedValueNtNtCs40k4W9msRzi_5alloc6string6StringEEECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef align 8 dereferenceable(32) %i.nl) #18
          to label %.body291 unwind label %bb.au

bb.iu:                                            ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6, i64 80, i1 false)
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtNtCsdqg0Tq8Qk36_12darling_core3ast4data11nested_meta10NestedMetaENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bd)
          to label %bb.iw unwind label %bb.iv

bb.iv:                                            ; preds = %bb.iu
  %i.nm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsdqg0Tq8Qk36_12darling_core3ast4data11nested_meta10NestedMetaENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bd)
          to label %.thread unwind label %bb.ix

bb.iw:                                            ; preds = %bb.iu
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsdqg0Tq8Qk36_12darling_core3ast4data11nested_meta10NestedMetaENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bd)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtNtCsdqg0Tq8Qk36_12darling_core3ast4data11nested_meta10NestedMetaEECs8SLDEF1Cvau_13dsl_auto_type.exit304 unwind label %bb.b

bb.ix:                                            ; preds = %bb.iv
  %i.nn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtNtCsdqg0Tq8Qk36_12darling_core3ast4data11nested_meta10NestedMetaEECs8SLDEF1Cvau_13dsl_auto_type.exit304: ; preds = %bb.iw, %bb.iy
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  br label %bb.io

bb.iy:                                            ; preds = %bb.c
  %.sroa.4375.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4375.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtNtCsdqg0Tq8Qk36_12darling_core3ast4data11nested_meta10NestedMetaEECs8SLDEF1Cvau_13dsl_auto_type.exit304

.body291.thread:                                  ; preds = %.thread411, %.thread, %.body291
  %.pn180408 = phi { ptr, i32 } [ %.pn180409, %.thread ], [ %.pn180, %.body291 ], [ %.pn176417, %.thread411 ]
  resume { ptr, i32 } %.pn180408

.thread:                                          ; preds = %bb.iv, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiD8eKn5yFCp_11proc_macro25IdentEECs8SLDEF1Cvau_13dsl_auto_type.exit290.thread, %bb.e, %.body291
  %.pn180409 = phi { ptr, i32 } [ %.pn180, %.body291 ], [ %i.nm, %bb.iv ], [ %i.mn, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiD8eKn5yFCp_11proc_macro25IdentEECs8SLDEF1Cvau_13dsl_auto_type.exit290.thread ], [ %i.bp, %bb.e ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs91tTATF2stA_3syn4path4PathECs8SLDEF1Cvau_13dsl_auto_type(ptr noalias noundef align 8 dereferenceable(48) %3) #18
          to label %.body291.thread unwind label %bb.au
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtCs8SLDEF1Cvau_13dsl_auto_type9auto_typeNtB2_16DeriveParametersNtNtCsdqg0Tq8Qk36_12darling_core9from_meta8FromMeta9from_list(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([120 x i8]) align 8 captures(none) dereferenceable(120) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 39755913951960241) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 4 uses
  %i.b = alloca [80 x i8], align 8                ; 4 uses
  %i.c = alloca [80 x i8], align 8                ; 4 uses
  %i.d = alloca [80 x i8], align 8                ; 4 uses
  %i.e = alloca [80 x i8], align 8                ; 4 uses
  %i.f = alloca [80 x i8], align 8                ; 4 uses
  %i.g = alloca [80 x i8], align 8                ; 4 uses
  %i.h = alloca [80 x i8], align 8                ; 4 uses
  %i.i = alloca [80 x i8], align 8                ; 4 uses
  %i.j = alloca [80 x i8], align 8                ; 4 uses
  %i.k = alloca [80 x i8], align 8                ; 4 uses
  %i.l = alloca [80 x i8], align 8                ; 4 uses
  %i.m = alloca [80 x i8], align 8                ; 4 uses
  %i.n = alloca [80 x i8], align 8                ; 4 uses
  %i.o = alloca [80 x i8], align 8                ; 4 uses
  %i.p = alloca [80 x i8], align 8                ; 4 uses
  %i.q = alloca [80 x i8], align 8                ; 4 uses
  %i.r = alloca [80 x i8], align 8                ; 4 uses
  %i.s = alloca [80 x i8], align 8                ; 4 uses
  %i.t = alloca [80 x i8], align 8                ; 4 uses
  %i.u = alloca [88 x i8], align 8                ; 4 uses
  %i.v = alloca [48 x i8], align 8                ; 4 uses
  %i.w = alloca [32 x i8], align 8                ; 16 uses
  %i.x = alloca [48 x i8], align 8                ; 6 uses
  %i.y = alloca [24 x i8], align 8                ; 4 uses
  %i.z = alloca [80 x i8], align 8                ; 6 uses
  %i.aa = alloca [80 x i8], align 8               ; 4 uses
  %i.ab = alloca [80 x i8], align 8               ; 4 uses
  %i.ac = alloca [80 x i8], align 8               ; 8 uses
  %i.ad = alloca [80 x i8], align 8               ; 4 uses
  %i.ae = alloca [80 x i8], align 8               ; 4 uses
  %i.af = alloca [80 x i8], align 8               ; 4 uses
  %i.ag = alloca [80 x i8], align 8               ; 7 uses
  %.sroa.640 = alloca [24 x i8], align 8          ; 5 uses
  %i.ah = alloca [80 x i8], align 8               ; 4 uses
  %i.ai = alloca [80 x i8], align 8               ; 4 uses
  %i.aj = alloca [80 x i8], align 8               ; 8 uses
  %.sroa.029 = alloca [16 x i8], align 8          ; 4 uses
  %.sroa.7 = alloca [7 x i8], align 1             ; 4 uses
  %i.ak = alloca [80 x i8], align 8               ; 4 uses
  %i.al = alloca [80 x i8], align 8               ; 4 uses
  %i.am = alloca [80 x i8], align 8               ; 7 uses
  %i.an = alloca [80 x i8], align 8               ; 4 uses
  %i.ao = alloca [80 x i8], align 8               ; 4 uses
  %i.ap = alloca [80 x i8], align 8               ; 7 uses
  %i.aq = alloca [80 x i8], align 8               ; 4 uses
  %i.ar = alloca [80 x i8], align 8               ; 4 uses
  %i.as = alloca [80 x i8], align 8               ; 7 uses
  %.sroa.6 = alloca [40 x i8], align 8            ; 5 uses
  %i.at = alloca [24 x i8], align 8               ; 9 uses
  %i.au = alloca [8 x i8], align 8                ; 13 uses
  %i.av = alloca [24 x i8], align 8               ; 20 uses
  %i.aw = alloca [40 x i8], align 8               ; 10 uses
  %i.ax = alloca [56 x i8], align 8               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  store i8 0, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 14 uses
  store i64 -2, ptr %i.ay, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 3 uses
  store i8 0, ptr %i.w, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 6 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 24 ; 10 uses
  store i8 -2, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 25 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  store i8 0, ptr %i.aw, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 19 uses
  store i64 -2, ptr %i.ba, align 8
  %.sroa.310.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 3 uses
end_hunk_2
