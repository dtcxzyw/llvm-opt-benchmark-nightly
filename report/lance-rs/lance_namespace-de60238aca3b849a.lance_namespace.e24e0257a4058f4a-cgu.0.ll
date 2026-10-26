Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_namespace-de60238aca3b849a.lance_namespace.e24e0257a4058f4a-cgu.0?download=true
inline.NumInlined: 441
inline.NumDeleted: 177
begin_hunk_0_@_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldECsjqC71KfQTl6_15lance_namespace:bb.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models20json_arrow_data_type17JsonArrowDataTypeECsjqC71KfQTl6_15lance_namespace(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !range !8, !alias.scope !253, !noundef !5 ; 5 uses
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldEEECsjqC71KfQTl6_15lance_namespace.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !254)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !255, !nonnull !5, !noundef !5 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !255, !noundef !5
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldECsjqC71KfQTl6_15lance_namespace(ptr noalias noundef nonnull align 8 %i.e, i64 noundef %i.g)
          to label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjqC71KfQTl6_15lance_namespace.exit.i unwind label %bb.c, !noalias !254, !inline_history !251

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = icmp eq i64 %i.b, 0
  br i1 %i.i, label %.body, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = mul nuw i64 %i.b, 88
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 8) #18, !noalias !254, !inline_history !252
  br label %.body

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjqC71KfQTl6_15lance_namespace.exit.i: ; preds = %bb.b
  %i.k = icmp eq i64 %i.b, 0
  br i1 %i.k, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldEEECsjqC71KfQTl6_15lance_namespace.exit, label %bb.e

bb.e:                                             ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjqC71KfQTl6_15lance_namespace.exit.i
  %i.l = mul nuw i64 %i.b, 88
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 8) #18, !noalias !254, !inline_history !252
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldEEECsjqC71KfQTl6_15lance_namespace.exit

.body:                                            ; preds = %bb.c, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val2 = load i64, ptr %i.m, align 8            ; 2 uses
  %i.n = icmp eq i64 %.val2, 0
  br i1 %i.n, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjqC71KfQTl6_15lance_namespace.exit, label %bb.f

bb.f:                                             ; preds = %.body
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val3 = load ptr, ptr %i.o, align 8, !nonnull !5, !noundef !5
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef %.val2, i64 noundef range(i64 1, -9223372036854775807) 1) #18
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjqC71KfQTl6_15lance_namespace.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldEEECsjqC71KfQTl6_15lance_namespace.exit: ; preds = %bb.e, %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjqC71KfQTl6_15lance_namespace.exit.i, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load i64, ptr %i.p, align 8             ; 2 uses
  %i.q = icmp eq i64 %.val, 0
  br i1 %i.q, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjqC71KfQTl6_15lance_namespace.exit4, label %bb.g

bb.g:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldEEECsjqC71KfQTl6_15lance_namespace.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %i.r, align 8, !nonnull !5, !noundef !5
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #18
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjqC71KfQTl6_15lance_namespace.exit4

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjqC71KfQTl6_15lance_namespace.exit4: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldEEECsjqC71KfQTl6_15lance_namespace.exit, %bb.g
  ret void

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjqC71KfQTl6_15lance_namespace.exit: ; preds = %bb.f, %.body
  resume { ptr, i32 } %i.h
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1R_4SendEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECsjqC71KfQTl6_15lance_namespace(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjqC71KfQTl6_15lance_namespace.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #18
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjqC71KfQTl6_15lance_namespace.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjqC71KfQTl6_15lance_namespace.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldECsjqC71KfQTl6_15lance_namespace(ptr noalias nofree noundef nonnull readonly align 8 captures(none) %0, i64 noundef range(i64 0, 104811045873349726) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldECsjqC71KfQTl6_15lance_namespace.exit
  %.sroa.0.08 = phi i64 [ %i.c, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldECsjqC71KfQTl6_15lance_namespace.exit ], [ 0, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw [88 x i8], ptr %0, i64 %.sroa.0.08 ; 4 uses
  %i.c = add nuw nsw i64 %.sroa.0.08, 1           ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !263)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !264, !noundef !5
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringB1S_EEECsjqC71KfQTl6_15lance_namespace.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfKiFC1ztrmh_9hashbrown3raw8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringB1i_EEECsjqC71KfQTl6_15lance_namespace(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.d), !inline_history !265
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringB1S_EEECsjqC71KfQTl6_15lance_namespace.exit.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringB1S_EEECsjqC71KfQTl6_15lance_namespace.exit.i: ; preds = %bb.b, %.lr.ph
  %.val.i = load i64, ptr %i.b, align 8, !alias.scope !263 ; 2 uses
  %i.g = icmp eq i64 %.val.i, 0
  br i1 %i.g, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjqC71KfQTl6_15lance_namespace.exit5.i, label %bb.c

bb.c:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringB1S_EEECsjqC71KfQTl6_15lance_namespace.exit.i
  %i.h = getelementptr i8, ptr %i.b, i64 8
  %.val2.i = load ptr, ptr %i.h, align 8, !alias.scope !263, !nonnull !5, !noundef !5
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #18, !noalias !263, !inline_history !265
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjqC71KfQTl6_15lance_namespace.exit5.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjqC71KfQTl6_15lance_namespace.exit5.i: ; preds = %bb.c, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringB1S_EEECsjqC71KfQTl6_15lance_namespace.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !266)
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !267, !nonnull !5, !noundef !5 ; 3 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models20json_arrow_data_type17JsonArrowDataTypeECsjqC71KfQTl6_15lance_namespace(ptr noalias noundef align 8 dereferenceable(64) %i.j)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldECsjqC71KfQTl6_15lance_namespace.exit unwind label %.body, !noalias !267, !inline_history !262

.body:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjqC71KfQTl6_15lance_namespace.exit5.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef 64, i64 noundef 8) #18, !noalias !267
  %i.l = icmp eq i64 %i.c, %1
  br i1 %i.l, label %._crit_edge31, label %.lr.ph30

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldECsjqC71KfQTl6_15lance_namespace.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjqC71KfQTl6_15lance_namespace.exit5.i
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef 64, i64 noundef 8) #18, !noalias !267
  %i.m = icmp eq i64 %i.c, %1
  br i1 %i.m, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldECsjqC71KfQTl6_15lance_namespace.exit, %bb.a
  ret void

bb.d:                                             ; preds = %.lr.ph30
  %i.n = add i64 %.sroa.0.129, 1                  ; 2 uses
  %i.o = icmp eq i64 %i.n, %1
  br i1 %i.o, label %._crit_edge31, label %.lr.ph30

.lr.ph30:                                         ; preds = %.body, %bb.d
  %.sroa.0.129 = phi i64 [ %i.n, %bb.d ], [ %i.c, %.body ] ; 2 uses
  %i.p = getelementptr inbounds nuw [88 x i8], ptr %0, i64 %.sroa.0.129
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldECsjqC71KfQTl6_15lance_namespace(ptr noalias noundef align 8 dereferenceable(88) %i.p) #20
          to label %bb.d unwind label %bb.e

._crit_edge31:                                    ; preds = %bb.d, %.body
  resume { ptr, i32 } %i.k

bb.e:                                             ; preds = %.lr.ph30
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #21
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCscI6d9CVNmLh_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldENvNtCsjqC71KfQTl6_15lance_namespace6schema24convert_json_arrow_fieldENtNtCs8SUNSmrkv52_12arrow_schema5field5FieldINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENCINvXso_B4U_IB4S_INtNtCs40k4W9msRzi_5alloc3vec3VecB49_EB5E_EINtNtNtB4_6traits7collect12FromIteratorIB4S_B49_B5E_EE9from_iterBQ_E0B6D_EB36_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull %1, ptr nofree noundef nonnull readnone captures(address) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.410.i.i17 = alloca [104 x i8], align 8   ; 6 uses
  %i.a = alloca [112 x i8], align 8               ; 4 uses
  %.sroa.680 = alloca [104 x i8], align 8         ; 5 uses
  %.sroa.410.i.i = alloca [104 x i8], align 8     ; 6 uses
  %i.b = alloca [112 x i8], align 8               ; 4 uses
  %.sroa.668 = alloca [104 x i8], align 8         ; 5 uses
  %.sroa.6184 = alloca [104 x i8], align 8        ; 6 uses
  %i.c = alloca [112 x i8], align 8               ; 6 uses
  %.sroa.5 = alloca [104 x i8], align 8           ; 5 uses
  %i.d = alloca [112 x i8], align 8               ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [56 x i8], align 8                ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i8 -1, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !309)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !310
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %i.h = icmp eq ptr %1, %2
  br i1 %i.h, label %_RINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldENvNtCsjqC71KfQTl6_15lance_namespace6schema24convert_json_arrow_fieldEINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5M_12try_for_each4callNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldINtNtNtB7_3ops12control_flow11ControlFlowB6Y_ENcNtB7G_5Break0E0B7G_EB3e_.exit.i.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.484.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %.sroa.785.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.sroa.410.64..sroa_idx.i.i22 = getelementptr inbounds nuw i8, ptr %.sroa.410.i.i17, i64 56
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.sroa.088.0165 = phi ptr [ %1, %.lr.ph ], [ %i.i, %bb.f ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.088.0165, i64 88 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.680)
  invoke void @_RNvNtCsjqC71KfQTl6_15lance_namespace6schema24convert_json_arrow_field(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %.sroa.088.0165)
          to label %.noexc27 unwind label %.loopexit, !inline_history !271

.noexc27:                                         ; preds = %bb.b
  %.sroa.083.0.copyload = load i64, ptr %i.a, align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.410.i.i17)
  %i.j = icmp eq i64 %.sroa.083.0.copyload, -1
  br i1 %i.j, label %bb.c, label %_RNCINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB5_12GenericShuntINtNtB5_3map3MapINtNtNtB9_5slice4iter4IterNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldENvNtCsjqC71KfQTl6_15lance_namespace6schema24convert_json_arrow_fieldEINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB5O_12try_for_each4callNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldINtNtNtB9_3ops12control_flow11ControlFlowB70_ENcNtB7I_5Break0E0B7I_E0B3g_.exit.i24

bb.c:                                             ; preds = %.noexc27
  %i.k = load i8, ptr %i.g, align 8, !range !4, !alias.scope !311, !noalias !312, !noundef !5
  %i.l = icmp eq i8 %i.k, -1
  br i1 %i.l, label %_RNCINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB5_12GenericShuntINtNtB5_3map3MapINtNtNtB9_5slice4iter4IterNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldENvNtCsjqC71KfQTl6_15lance_namespace6schema24convert_json_arrow_fieldEINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB5O_12try_for_each4callNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldINtNtNtB9_3ops12control_flow11ControlFlowB70_ENcNtB7I_5Break0E0B7I_E0B3g_.exit.i24.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core5error5ErrorECsjqC71KfQTl6_15lance_namespace(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.g)
          to label %_RNCINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB5_12GenericShuntINtNtB5_3map3MapINtNtNtB9_5slice4iter4IterNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldENvNtCsjqC71KfQTl6_15lance_namespace6schema24convert_json_arrow_fieldEINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB5O_12try_for_each4callNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldINtNtNtB9_3ops12control_flow11ControlFlowB70_ENcNtB7I_5Break0E0B7I_E0B3g_.exit.i24.thread unwind label %bb.e, !noalias !312, !inline_history !271

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.g, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.484.0..sroa_idx, i64 56, i1 false)
  br label %.body

_RNCINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB5_12GenericShuntINtNtB5_3map3MapINtNtNtB9_5slice4iter4IterNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldENvNtCsjqC71KfQTl6_15lance_namespace6schema24convert_json_arrow_fieldEINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB5O_12try_for_each4callNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldINtNtNtB9_3ops12control_flow11ControlFlowB70_ENcNtB7I_5Break0E0B7I_E0B3g_.exit.i24.thread: ; preds = %bb.c, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.g, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.484.0..sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.410.i.i17)
  br label %_RINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldENvNtCsjqC71KfQTl6_15lance_namespace6schema24convert_json_arrow_fieldEINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5M_12try_for_each4callNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldINtNtNtB7_3ops12control_flow11ControlFlowB6Y_ENcNtB7G_5Break0E0B7G_EB3e_.exit.i

_RNCINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB5_12GenericShuntINtNtB5_3map3MapINtNtNtB9_5slice4iter4IterNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldENvNtCsjqC71KfQTl6_15lance_namespace6schema24convert_json_arrow_fieldEINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB5O_12try_for_each4callNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldINtNtNtB9_3ops12control_flow11ControlFlowB70_ENcNtB7I_5Break0E0B7I_E0B3g_.exit.i24: ; preds = %.noexc27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.410.64..sroa_idx.i.i22, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.785.0..sroa_idx, i64 48, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.410.i.i17, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.484.0..sroa_idx, i64 56, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.680, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.410.i.i17, i64 104, i1 false), !noalias !313
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.410.i.i17)
  %.not.i.i25 = icmp eq i64 %.sroa.083.0.copyload, -2
  br i1 %.not.i.i25, label %bb.f, label %_RINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldENvNtCsjqC71KfQTl6_15lance_namespace6schema24convert_json_arrow_fieldEINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5M_12try_for_each4callNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldINtNtNtB7_3ops12control_flow11ControlFlowB6Y_ENcNtB7G_5Break0E0B7G_EB3e_.exit.i

bb.f:                                             ; preds = %_RNCINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB5_12GenericShuntINtNtB5_3map3MapINtNtNtB9_5slice4iter4IterNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldENvNtCsjqC71KfQTl6_15lance_namespace6schema24convert_json_arrow_fieldEINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB5O_12try_for_each4callNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldINtNtNtB9_3ops12control_flow11ControlFlowB70_ENcNtB7I_5Break0E0B7I_E0B3g_.exit.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.680)
  %i.n = icmp eq ptr %i.i, %2
  br i1 %i.n, label %_RINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldENvNtCsjqC71KfQTl6_15lance_namespace6schema24convert_json_arrow_fieldEINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5M_12try_for_each4callNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldINtNtNtB7_3ops12control_flow11ControlFlowB6Y_ENcNtB7G_5Break0E0B7G_EB3e_.exit.i.thread, label %bb.b

_RINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldENvNtCsjqC71KfQTl6_15lance_namespace6schema24convert_json_arrow_fieldEINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5M_12try_for_each4callNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldINtNtNtB7_3ops12control_flow11ControlFlowB6Y_ENcNtB7G_5Break0E0B7G_EB3e_.exit.i: ; preds = %_RNCINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB5_12GenericShuntINtNtB5_3map3MapINtNtNtB9_5slice4iter4IterNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldENvNtCsjqC71KfQTl6_15lance_namespace6schema24convert_json_arrow_fieldEINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB5O_12try_for_each4callNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldINtNtNtB9_3ops12control_flow11ControlFlowB70_ENcNtB7I_5Break0E0B7I_E0B3g_.exit.i24, %_RNCINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB5_12GenericShuntINtNtB5_3map3MapINtNtNtB9_5slice4iter4IterNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldENvNtCsjqC71KfQTl6_15lance_namespace6schema24convert_json_arrow_fieldEINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB5O_12try_for_each4callNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldINtNtNtB9_3ops12control_flow11ControlFlowB70_ENcNtB7I_5Break0E0B7I_E0B3g_.exit.i24.thread
  %.sroa.083.0.copyload233 = phi i64 [ -1, %_RNCINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB5_12GenericShuntINtNtB5_3map3MapINtNtNtB9_5slice4iter4IterNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldENvNtCsjqC71KfQTl6_15lance_namespace6schema24convert_json_arrow_fieldEINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB5O_12try_for_each4callNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldINtNtNtB9_3ops12control_flow11ControlFlowB70_ENcNtB7I_5Break0E0B7I_E0B3g_.exit.i24.thread ], [ %.sroa.083.0.copyload, %_RNCINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB5_12GenericShuntINtNtB5_3map3MapINtNtNtB9_5slice4iter4IterNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldENvNtCsjqC71KfQTl6_15lance_namespace6schema24convert_json_arrow_fieldEINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB5O_12try_for_each4callNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldINtNtNtB9_3ops12control_flow11ControlFlowB70_ENcNtB7I_5Break0E0B7I_E0B3g_.exit.i24 ] ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.680, i64 104, i1 false), !noalias !5
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.680)
  %.not.i.i = icmp eq i64 %.sroa.083.0.copyload233, -1
  br i1 %.not.i.i, label %_RINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldENvNtCsjqC71KfQTl6_15lance_namespace6schema24convert_json_arrow_fieldEINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5M_12try_for_each4callNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldINtNtNtB7_3ops12control_flow11ControlFlowB6Y_ENcNtB7G_5Break0E0B7G_EB3e_.exit.i.thread, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %_RINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldENvNtCsjqC71KfQTl6_15lance_namespace6schema24convert_json_arrow_fieldEINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5M_12try_for_each4callNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldINtNtNtB7_3ops12control_flow11ControlFlowB6Y_ENcNtB7G_5Break0E0B7G_EB3e_.exit.i
  %.sroa.7.0..sroa_idx35 = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !310
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.7.0..sroa_idx35, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5, i64 104, i1 false), !noalias !310
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  store i64 %.sroa.083.0.copyload233, ptr %i.d, align 8, !noalias !310
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !314, !inline_history !285
  %i.o = call noundef align 8 dereferenceable_or_null(448) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 448, i64 noundef range(i64 1, 9) 8) #18, !noalias !314, !inline_history !285 ; 4 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.j, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsjqC71KfQTl6_15lance_namespace.exit.i

_RINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldENvNtCsjqC71KfQTl6_15lance_namespace6schema24convert_json_arrow_fieldEINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5M_12try_for_each4callNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldINtNtNtB7_3ops12control_flow11ControlFlowB6Y_ENcNtB7G_5Break0E0B7G_EB3e_.exit.i.thread: ; preds = %bb.f, %bb.a, %_RINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldENvNtCsjqC71KfQTl6_15lance_namespace6schema24convert_json_arrow_fieldEINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5M_12try_for_each4callNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldINtNtNtB7_3ops12control_flow11ControlFlowB6Y_ENcNtB7G_5Break0E0B7G_EB3e_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  store i64 0, ptr %i.f, align 8, !alias.scope !309
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.q, align 8, !alias.scope !309
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 0, ptr %i.r, align 8, !alias.scope !309
  br label %_RNCINvXso_NtCscI6d9CVNmLh_4core6resultINtB8_6ResultINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEINtNtNtNtBa_4iter6traits7collect12FromIteratorIBB_B1k_B23_EE9from_iterINtNtNtB2R_8adapters3map3MapINtNtNtBa_5slice4iter4IterNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldENvNtCsjqC71KfQTl6_15lance_namespace6schema24convert_json_arrow_fieldEE0B6k_.exit

bb.g:                                             ; preds = %bb.j
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !315)
  %i.t = icmp eq i64 %.sroa.083.0.copyload233, 0
  br i1 %i.t, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjqC71KfQTl6_15lance_namespace.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.val2.i = load ptr, ptr %.sroa.7.0..sroa_idx35, align 8, !alias.scope !315, !noalias !309, !nonnull !5, !noundef !5
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef %.sroa.083.0.copyload233, i64 noundef range(i64 1, -9223372036854775807) 1) #18, !noalias !316
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjqC71KfQTl6_15lance_namespace.exit.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjqC71KfQTl6_15lance_namespace.exit.i: ; preds = %bb.h, %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsjqC71KfQTl6_15lance_namespace(ptr noalias noundef align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldECsjqC71KfQTl6_15lance_namespace.exit unwind label %bb.i, !noalias !309

bb.i:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjqC71KfQTl6_15lance_namespace.exit.i
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfKiFC1ztrmh_9hashbrown3raw8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringB1i_EEECsjqC71KfQTl6_15lance_namespace(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.w), !noalias !309
  br label %.body15

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldECsjqC71KfQTl6_15lance_namespace.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjqC71KfQTl6_15lance_namespace.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfKiFC1ztrmh_9hashbrown3raw8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringB1i_EEECsjqC71KfQTl6_15lance_namespace(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.x), !noalias !309
  br label %.body

bb.j:                                             ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 448) #19
          to label %.noexc.i unwind label %bb.g, !noalias !309, !inline_history !285

.noexc.i:                                         ; preds = %bb.j
  unreachable

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsjqC71KfQTl6_15lance_namespace.exit.i: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.o, ptr noundef nonnull align 8 dereferenceable(112) %i.d, i64 112, i1 false), !noalias !309
  store i64 4, ptr %i.e, align 8, !noalias !310
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.o, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !310
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !310
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !310
  call void @llvm.experimental.noalias.scope.decl(metadata !317)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6184)
  %i.y = icmp eq ptr %i.i, %2
  br i1 %i.y, label %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldE16extend_desugaredINtNtNtCscI6d9CVNmLh_4core4iter8adapters12GenericShuntINtNtB1K_3map3MapINtNtNtB1O_5slice4iter4IterNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldENvNtCsjqC71KfQTl6_15lance_namespace6schema24convert_json_arrow_fieldEINtNtB1O_6result6ResultNtNtB1O_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEEB4R_.exit.i, label %.lr.ph167.lr.ph

.lr.ph167.lr.ph:                                  ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsjqC71KfQTl6_15lance_namespace.exit.i
  %.sroa.472.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %.sroa.773.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %.sroa.410.64..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.410.i.i, i64 56
  %.sroa.748.0..sroa_idx49 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %.lr.ph167

.lr.ph167:                                        ; preds = %.lr.ph167.lr.ph, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldE7reserveCsjqC71KfQTl6_15lance_namespace.exit.i.i
  %i.z = phi ptr [ %i.o, %.lr.ph167.lr.ph ], [ %i.ak, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldE7reserveCsjqC71KfQTl6_15lance_namespace.exit.i.i ]
  %i.aa = phi i64 [ 1, %.lr.ph167.lr.ph ], [ %i.am, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldE7reserveCsjqC71KfQTl6_15lance_namespace.exit.i.i ] ; 5 uses
  %.sroa.0.0169 = phi ptr [ %i.i, %.lr.ph167.lr.ph ], [ %i.ab, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldE7reserveCsjqC71KfQTl6_15lance_namespace.exit.i.i ]
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph167, %bb.o
  %.sroa.0.1166 = phi ptr [ %.sroa.0.0169, %.lr.ph167 ], [ %i.ab, %bb.o ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.1166, i64 88 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.668)
  invoke void @_RNvNtCsjqC71KfQTl6_15lance_namespace6schema24convert_json_arrow_field(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %.sroa.0.1166)
          to label %.noexc12 unwind label %bb.s, !inline_history !290

.noexc12:                                         ; preds = %bb.k
  %.sroa.071.0.copyload = load i64, ptr %i.b, align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.410.i.i)
  %i.ac = icmp eq i64 %.sroa.071.0.copyload, -1
  br i1 %i.ac, label %bb.l, label %_RNCINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB5_12GenericShuntINtNtB5_3map3MapINtNtNtB9_5slice4iter4IterNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldENvNtCsjqC71KfQTl6_15lance_namespace6schema24convert_json_arrow_fieldEINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB5O_12try_for_each4callNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldINtNtNtB9_3ops12control_flow11ControlFlowB70_ENcNtB7I_5Break0E0B7I_E0B3g_.exit.i

bb.l:                                             ; preds = %.noexc12
  %i.ad = load i8, ptr %i.g, align 8, !range !4, !alias.scope !318, !noalias !319, !noundef !5
  %i.ae = icmp eq i8 %i.ad, -1
  br i1 %i.ae, label %_RNCINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB5_12GenericShuntINtNtB5_3map3MapINtNtNtB9_5slice4iter4IterNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldENvNtCsjqC71KfQTl6_15lance_namespace6schema24convert_json_arrow_fieldEINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB5O_12try_for_each4callNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldINtNtNtB9_3ops12control_flow11ControlFlowB70_ENcNtB7I_5Break0E0B7I_E0B3g_.exit.i.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core5error5ErrorECsjqC71KfQTl6_15lance_namespace(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.g)
          to label %_RNCINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB5_12GenericShuntINtNtB5_3map3MapINtNtNtB9_5slice4iter4IterNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldENvNtCsjqC71KfQTl6_15lance_namespace6schema24convert_json_arrow_fieldEINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB5O_12try_for_each4callNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldINtNtNtB9_3ops12control_flow11ControlFlowB70_ENcNtB7I_5Break0E0B7I_E0B3g_.exit.i.thread unwind label %bb.n, !noalias !319, !inline_history !290

bb.n:                                             ; preds = %bb.m
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.g, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.472.0..sroa_idx, i64 56, i1 false)
  br label %.body.i

_RNCINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB5_12GenericShuntINtNtB5_3map3MapINtNtNtB9_5slice4iter4IterNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldENvNtCsjqC71KfQTl6_15lance_namespace6schema24convert_json_arrow_fieldEINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB5O_12try_for_each4callNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldINtNtNtB9_3ops12control_flow11ControlFlowB70_ENcNtB7I_5Break0E0B7I_E0B3g_.exit.i.thread: ; preds = %bb.l, %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.g, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.472.0..sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.410.i.i)
  br label %.noexc10.i

_RNCINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB5_12GenericShuntINtNtB5_3map3MapINtNtNtB9_5slice4iter4IterNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldENvNtCsjqC71KfQTl6_15lance_namespace6schema24convert_json_arrow_fieldEINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB5O_12try_for_each4callNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldINtNtNtB9_3ops12control_flow11ControlFlowB70_ENcNtB7I_5Break0E0B7I_E0B3g_.exit.i: ; preds = %.noexc12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.410.64..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.773.0..sroa_idx, i64 48, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.410.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.472.0..sroa_idx, i64 56, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.668, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.410.i.i, i64 104, i1 false), !noalias !320
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.410.i.i)
  %.not.i.i.i10 = icmp eq i64 %.sroa.071.0.copyload, -2
  br i1 %.not.i.i.i10, label %bb.o, label %.noexc10.i

bb.o:                                             ; preds = %_RNCINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB5_12GenericShuntINtNtB5_3map3MapINtNtNtB9_5slice4iter4IterNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldENvNtCsjqC71KfQTl6_15lance_namespace6schema24convert_json_arrow_fieldEINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB5O_12try_for_each4callNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldINtNtNtB9_3ops12control_flow11ControlFlowB70_ENcNtB7I_5Break0E0B7I_E0B3g_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.668)
  %i.ag = icmp eq ptr %i.ab, %2
  br i1 %i.ag, label %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldE16extend_desugaredINtNtNtCscI6d9CVNmLh_4core4iter8adapters12GenericShuntINtNtB1K_3map3MapINtNtNtB1O_5slice4iter4IterNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldENvNtCsjqC71KfQTl6_15lance_namespace6schema24convert_json_arrow_fieldEINtNtB1O_6result6ResultNtNtB1O_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEEB4R_.exit.i, label %bb.k

.noexc10.i:                                       ; preds = %_RNCINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB5_12GenericShuntINtNtB5_3map3MapINtNtNtB9_5slice4iter4IterNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldENvNtCsjqC71KfQTl6_15lance_namespace6schema24convert_json_arrow_fieldEINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB5O_12try_for_each4callNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldINtNtNtB9_3ops12control_flow11ControlFlowB70_ENcNtB7I_5Break0E0B7I_E0B3g_.exit.i, %_RNCINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB5_12GenericShuntINtNtB5_3map3MapINtNtNtB9_5slice4iter4IterNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldENvNtCsjqC71KfQTl6_15lance_namespace6schema24convert_json_arrow_fieldEINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB5O_12try_for_each4callNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldINtNtNtB9_3ops12control_flow11ControlFlowB70_ENcNtB7I_5Break0E0B7I_E0B3g_.exit.i.thread
  %.sroa.071.0.copyload227 = phi i64 [ -1, %_RNCINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB5_12GenericShuntINtNtB5_3map3MapINtNtNtB9_5slice4iter4IterNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldENvNtCsjqC71KfQTl6_15lance_namespace6schema24convert_json_arrow_fieldEINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB5O_12try_for_each4callNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldINtNtNtB9_3ops12control_flow11ControlFlowB70_ENcNtB7I_5Break0E0B7I_E0B3g_.exit.i.thread ], [ %.sroa.071.0.copyload, %_RNCINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB5_12GenericShuntINtNtB5_3map3MapINtNtNtB9_5slice4iter4IterNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldENvNtCsjqC71KfQTl6_15lance_namespace6schema24convert_json_arrow_fieldEINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB5O_12try_for_each4callNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldINtNtNtB9_3ops12control_flow11ControlFlowB70_ENcNtB7I_5Break0E0B7I_E0B3g_.exit.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.6184, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.668, i64 104, i1 false), !noalias !321
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.668)
  %.not.i.i8.i = icmp eq i64 %.sroa.071.0.copyload227, -1
  br i1 %.not.i.i8.i, label %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldE16extend_desugaredINtNtNtCscI6d9CVNmLh_4core4iter8adapters12GenericShuntINtNtB1K_3map3MapINtNtNtB1O_5slice4iter4IterNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldENvNtCsjqC71KfQTl6_15lance_namespace6schema24convert_json_arrow_fieldEINtNtB1O_6result6ResultNtNtB1O_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEEB4R_.exit.i, label %bb.p

bb.p:                                             ; preds = %.noexc10.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !322
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.748.0..sroa_idx49, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.6184, i64 104, i1 false), !noalias !322
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6184)
  store i64 %.sroa.071.0.copyload227, ptr %i.c, align 8, !noalias !322
  %i.ah = icmp samesign ult i64 %i.aa, 82351536043346213
  call void @llvm.assume(i1 %i.ah)
  %i.ai = load i64, ptr %i.e, align 8, !range !7, !alias.scope !317, !noalias !310, !noundef !5
  %i.aj = icmp eq i64 %i.aa, %i.ai
  br i1 %i.aj, label %_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldENvNtCsjqC71KfQTl6_15lance_namespace6schema24convert_json_arrow_fieldEINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB3d_.exit.i.i, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldE7reserveCsjqC71KfQTl6_15lance_namespace.exit.i.i

_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldENvNtCsjqC71KfQTl6_15lance_namespace6schema24convert_json_arrow_fieldEINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB3d_.exit.i.i: ; preds = %bb.p
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsjqC71KfQTl6_15lance_namespace(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.aa, i64 noundef range(i64 1, 0) 1, i64 noundef 112)
          to label %_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldENvNtCsjqC71KfQTl6_15lance_namespace6schema24convert_json_arrow_fieldEINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB3d_.exit.i.i._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldE7reserveCsjqC71KfQTl6_15lance_namespace.exit.i.i_crit_edge unwind label %bb.q

_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldENvNtCsjqC71KfQTl6_15lance_namespace6schema24convert_json_arrow_fieldEINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB3d_.exit.i.i._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldE7reserveCsjqC71KfQTl6_15lance_namespace.exit.i.i_crit_edge: ; preds = %_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldENvNtCsjqC71KfQTl6_15lance_namespace6schema24convert_json_arrow_fieldEINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB3d_.exit.i.i
  %.pre = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !317, !noalias !310
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldE7reserveCsjqC71KfQTl6_15lance_namespace.exit.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldE7reserveCsjqC71KfQTl6_15lance_namespace.exit.i.i: ; preds = %_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldENvNtCsjqC71KfQTl6_15lance_namespace6schema24convert_json_arrow_fieldEINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB3d_.exit.i.i._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldE7reserveCsjqC71KfQTl6_15lance_namespace.exit.i.i_crit_edge, %bb.p
  %i.ak = phi ptr [ %.pre, %_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldENvNtCsjqC71KfQTl6_15lance_namespace6schema24convert_json_arrow_fieldEINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB3d_.exit.i.i._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldE7reserveCsjqC71KfQTl6_15lance_namespace.exit.i.i_crit_edge ], [ %i.z, %bb.p ] ; 2 uses
  %i.al = getelementptr inbounds nuw [112 x i8], ptr %i.ak, i64 %i.aa
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.al, ptr noundef nonnull align 8 dereferenceable(112) %i.c, i64 112, i1 false)
  %i.am = add nuw nsw i64 %i.aa, 1                ; 2 uses
  store i64 %i.am, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !317, !noalias !310
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !322
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6184)
  %i.an = icmp eq ptr %i.ab, %2
  br i1 %i.an, label %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldE16extend_desugaredINtNtNtCscI6d9CVNmLh_4core4iter8adapters12GenericShuntINtNtB1K_3map3MapINtNtNtB1O_5slice4iter4IterNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldENvNtCsjqC71KfQTl6_15lance_namespace6schema24convert_json_arrow_fieldEINtNtB1O_6result6ResultNtNtB1O_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEEB4R_.exit.i, label %.lr.ph167

bb.q:                                             ; preds = %_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldENvNtCsjqC71KfQTl6_15lance_namespace6schema24convert_json_arrow_fieldEINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB3d_.exit.i.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldECsjqC71KfQTl6_15lance_namespace(ptr noalias noundef align 8 dereferenceable(112) %i.c) #20
          to label %.body.i unwind label %bb.r, !noalias !323, !inline_history !306

bb.r:                                             ; preds = %bb.q
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #21, !noalias !323, !inline_history !306
  unreachable

_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldE16extend_desugaredINtNtNtCscI6d9CVNmLh_4core4iter8adapters12GenericShuntINtNtB1K_3map3MapINtNtNtB1O_5slice4iter4IterNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldENvNtCsjqC71KfQTl6_15lance_namespace6schema24convert_json_arrow_fieldEINtNtB1O_6result6ResultNtNtB1O_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEEB4R_.exit.i: ; preds = %.noexc10.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldE7reserveCsjqC71KfQTl6_15lance_namespace.exit.i.i, %bb.o, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsjqC71KfQTl6_15lance_namespace.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6184)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !324
  br label %_RNCINvXso_NtCscI6d9CVNmLh_4core6resultINtB8_6ResultINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEINtNtNtNtBa_4iter6traits7collect12FromIteratorIBB_B1k_B23_EE9from_iterINtNtNtB2R_8adapters3map3MapINtNtNtBa_5slice4iter4IterNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldENvNtCsjqC71KfQTl6_15lance_namespace6schema24convert_json_arrow_fieldEE0B6k_.exit

bb.s:                                             ; preds = %bb.k
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.n, %bb.s, %bb.q
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ao, %bb.q ], [ %i.aq, %bb.s ], [ %i.af, %bb.n ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECsjqC71KfQTl6_15lance_namespace(ptr noalias noundef align 8 dereferenceable(24) %i.e) #20
          to label %.body unwind label %bb.t, !noalias !309, !inline_history !285

bb.t:                                             ; preds = %.body.i
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body15

.body15:                                          ; preds = %bb.i, %bb.t
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #21, !noalias !309, !inline_history !285
  unreachable

.body:                                            ; preds = %.loopexit, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldECsjqC71KfQTl6_15lance_namespace.exit, %.body.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.m, %bb.e ], [ %eh.lpad-body.i, %.body.i ], [ %i.s, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldECsjqC71KfQTl6_15lance_namespace.exit ], [ %lpad.loopexit, %.loopexit ]
  %i.as = load i8, ptr %i.g, align 8, !range !4, !noundef !5
  %.not = icmp eq i8 %i.as, -1
  br i1 %.not, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEECsjqC71KfQTl6_15lance_namespace.exit, label %bb.y

.loopexit:                                        ; preds = %bb.b
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RNCINvXso_NtCscI6d9CVNmLh_4core6resultINtB8_6ResultINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEINtNtNtNtBa_4iter6traits7collect12FromIteratorIBB_B1k_B23_EE9from_iterINtNtNtB2R_8adapters3map3MapINtNtNtBa_5slice4iter4IterNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldENvNtCsjqC71KfQTl6_15lance_namespace6schema24convert_json_arrow_fieldEE0B6k_.exit: ; preds = %_RINvMsj_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldE16extend_desugaredINtNtNtCscI6d9CVNmLh_4core4iter8adapters12GenericShuntINtNtB1K_3map3MapINtNtNtB1O_5slice4iter4IterNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldENvNtCsjqC71KfQTl6_15lance_namespace6schema24convert_json_arrow_fieldEINtNtB1O_6result6ResultNtNtB1O_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEEB4R_.exit.i, %_RINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldENvNtCsjqC71KfQTl6_15lance_namespace6schema24convert_json_arrow_fieldEINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5M_12try_for_each4callNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldINtNtNtB7_3ops12control_flow11ControlFlowB6Y_ENcNtB7G_5Break0E0B7G_EB3e_.exit.i.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !310
  %i.at = load i8, ptr %i.g, align 8, !range !4, !noundef !5
  %.not.not = icmp eq i8 %i.at, -1
  br i1 %.not.not, label %bb.u, label %bb.w

bb.u:                                             ; preds = %_RNCINvXso_NtCscI6d9CVNmLh_4core6resultINtB8_6ResultINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEINtNtNtNtBa_4iter6traits7collect12FromIteratorIBB_B1k_B23_EE9from_iterINtNtNtB2R_8adapters3map3MapINtNtNtBa_5slice4iter4IterNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldENvNtCsjqC71KfQTl6_15lance_namespace6schema24convert_json_arrow_fieldEE0B6k_.exit
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  store i8 -1, ptr %0, align 8, !alias.scope !325
  br label %bb.v

bb.v:                                             ; preds = %bb.w, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

bb.w:                                             ; preds = %_RNCINvXso_NtCscI6d9CVNmLh_4core6resultINtB8_6ResultINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEINtNtNtNtBa_4iter6traits7collect12FromIteratorIBB_B1k_B23_EE9from_iterINtNtNtB2R_8adapters3map3MapINtNtNtBa_5slice4iter4IterNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldENvNtCsjqC71KfQTl6_15lance_namespace6schema24convert_json_arrow_fieldEE0B6k_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.g, i64 56, i1 false)
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECsjqC71KfQTl6_15lance_namespace(ptr noalias noundef align 8 dereferenceable(24) %i.f)
  br label %bb.v

bb.x:                                             ; preds = %bb.y
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEECsjqC71KfQTl6_15lance_namespace.exit: ; preds = %bb.y, %.body
  resume { ptr, i32 } %.pn

bb.y:                                             ; preds = %.body
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core5error5ErrorECsjqC71KfQTl6_15lance_namespace(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.g)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEECsjqC71KfQTl6_15lance_namespace.exit unwind label %bb.x
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsjqC71KfQTl6_15lance_namespace(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef range(i64 1, 0) %2, i64 noundef range(i64 88, 113) %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !328)
  %i.b = add i64 %2, %1                           ; 2 uses
  %i.c = icmp ult i64 %i.b, %1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !range !7, !alias.scope !328, !noundef !5 ; 2 uses
  %i.e = shl nuw i64 %i.d, 1
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.b, i64 range(i64 0, -1) %i.e)
  %.sroa.0.0.i14.i = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !328
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.f, align 8, !alias.scope !328
  call fastcc void @_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsjqC71KfQTl6_15lance_namespace(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.d, ptr %.val13.i, i64 noundef %.sroa.0.0.i14.i, i64 noundef range(i64 88, 113) %3)
  %i.g = load i64, ptr %i.a, align 8, !range !11, !noalias !328, !noundef !5
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %i.i, align 8, !range !329, !noalias !328, !noundef !5
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noalias !328
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !328
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.a ], [ %i.l, %bb.c ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.a ], [ %i.j, %bb.c ]
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #19
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.i, align 8, !noalias !328, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !328
  store ptr %i.m, ptr %i.f, align 8, !alias.scope !328
  %i.n = icmp sgt i64 %.sroa.0.0.i14.i, -1
  tail call void @llvm.assume(i1 %i.n)
  store i64 %.sroa.0.0.i14.i, ptr %0, align 8, !alias.scope !328
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsjqC71KfQTl6_15lance_namespace(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1, i64 noundef range(i64 88, 113) %2) unnamed_addr #3 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 7 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = icmp ugt i64 %i.b, 9223372036854775800
  %or.cond.not = or i1 %i.c, %i.d
  br i1 %or.cond.not, label %bb.f, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %.0.val, 0
  br i1 %i.e, label %bb.c, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator4grow.exit

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  %i.f = mul nuw i64 %2, %.0.val                  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.g = icmp uge i64 %i.b, %i.f
  tail call void @llvm.assume(i1 %i.g)
  %i.h = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %i.f, i64 noundef 8, i64 noundef range(i64 0, 9223372036854775801) %i.b) #18
  br label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq i64 %i.b, 0
  br i1 %i.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18
  %i.j = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.b, i64 noundef range(i64 1, -9223372036854775807) 8) #18
  br label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.h, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator4grow.exit ], [ %i.j, %bb.d ] ; 2 uses
  %i.k = icmp eq ptr %.pn8, null
  br i1 %i.k, label %bb.e, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.thread

bb.e:                                             ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 8, ptr %i.l, align 8
  br label %bb.f

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %.pn8, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit ], [ inttoptr (i64 8 to ptr), %bb.c ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.m, align 8
  br label %bb.f
end_hunk_0
begin_hunk_1_@_RNvNtCsjqC71KfQTl6_15lance_namespace6schema18arrow_type_to_json:bb.a
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %bb.dh, label %bb.di

bb.x:                                             ; preds = %tailrecurse
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !528
  %i.cg = tail call noundef dereferenceable_or_null(12) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 12, i64 noundef range(i64 1, -9223372036854775807) 1) #18, !noalias !528 ; 3 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %bb.dj, label %bb.dk

.split:                                           ; preds = %tailrecurse, %tailrecurse
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %i.al, ptr %i.l, align 8
  %.sroa.4230.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeNtB6_5Debug3fmtCsjqC71KfQTl6_15lance_namespace, ptr %.sroa.4230.0..sroa_idx, align 8
  call void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noundef nonnull @23, ptr noundef nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.experimental.noalias.scope.decl(metadata !529)
  %.sroa.06.0.copyload.i = load i64, ptr %i.m, align 8, !alias.scope !530 ; 3 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !530 ; 3 uses
  %.sroa.57.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.57.0.copyload.i = load i64, ptr %.sroa.57.0..sroa_idx.i, align 8, !alias.scope !530
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !531
  %i.ci = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef 8) #18, !noalias !531 ; 5 uses
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %bb.y, label %_RINvMs4_NtCs63DIHKhvmTb_10lance_core5errorNtB6_5Error9namespaceNtNtCs40k4W9msRzi_5alloc6string6StringECsjqC71KfQTl6_15lance_namespace.exit, !prof !3

bb.y:                                             ; preds = %.split
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #19
          to label %.noexc.i unwind label %bb.z, !noalias !532

.noexc.i:                                         ; preds = %bb.y
  unreachable

bb.z:                                             ; preds = %bb.y
  %i.ck = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cl = icmp eq i64 %.sroa.06.0.copyload.i, 0
  br i1 %i.cl, label %common.resume, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i, i64 noundef %.sroa.06.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #18, !noalias !533
  br label %common.resume

common.resume:                                    ; preds = %bb.eh, %bb.ey, %bb.fp, %bb.fu, %bb.gw, %bb.ea, %.body564, %bb.du, %bb.et, %.body561, %bb.en, %bb.fk, %.body558, %bb.fe, %bb.gr, %.body, %bb.gl, %bb.bo, %bb.bp, %.body695, %bb.bf, %bb.af, %bb.ag, %bb.z, %bb.aa
  %common.resume.op = phi { ptr, i32 } [ %i.fy, %bb.bo ], [ %i.ck, %bb.z ], [ %i.cy, %bb.af ], [ %.pn.i, %.body695 ], [ %i.ck, %bb.aa ], [ %i.cy, %bb.ag ], [ %.pn.i, %bb.bf ], [ %i.fy, %bb.bp ], [ %i.hc, %bb.eh ], [ %i.lp, %bb.gw ], [ %i.ie, %bb.ey ], [ %.pn552, %bb.du ], [ %i.jc, %bb.fp ], [ %.pn547, %bb.en ], [ %i.jf, %bb.fu ], [ %.pn542, %bb.fe ], [ %.pn554, %bb.ea ], [ %.pn552, %.body564 ], [ %.pn549, %bb.et ], [ %.pn547, %.body561 ], [ %.pn544, %bb.fk ], [ %.pn542, %.body558 ], [ %.pn539, %bb.gr ], [ %.pn, %.body ], [ %.pn, %bb.gl ]
  resume { ptr, i32 } %common.resume.op

_RINvMs4_NtCs63DIHKhvmTb_10lance_core5errorNtB6_5Error9namespaceNtNtCs40k4W9msRzi_5alloc6string6StringECsjqC71KfQTl6_15lance_namespace.exit: ; preds = %.split
  store i64 %.sroa.06.0.copyload.i, ptr %i.ci, align 8, !noalias !532
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store ptr %.sroa.4.0.copyload.i, ptr %.sroa.5.0..sroa_idx2.i, align 8, !noalias !532
  %.sroa.6.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store i64 %.sroa.57.0.copyload.i, ptr %.sroa.6.0..sroa_idx4.i, align 8, !noalias !532
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 31, ptr %i.cm, align 8
  %.sroa.4758.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ci, ptr %.sroa.4758.0..sroa_idx, align 8
  %.sroa.5759.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @1, ptr %.sroa.5759.0..sroa_idx, align 8
  %.sroa.6760.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @25, ptr %.sroa.6760.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.bs

bb.ab:                                            ; preds = %tailrecurse
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !534
  %i.cn = tail call noundef dereferenceable_or_null(4) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 4, i64 noundef range(i64 1, -9223372036854775807) 1) #18, !noalias !534 ; 3 uses
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %bb.dl, label %bb.dm

bb.ac:                                            ; preds = %tailrecurse
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !535
  %i.cp = tail call noundef dereferenceable_or_null(10) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 10, i64 noundef range(i64 1, -9223372036854775807) 1) #18, !noalias !535 ; 3 uses
  %i.cq = icmp eq ptr %i.cp, null
  br i1 %i.cq, label %bb.dn, label %bb.do

bb.ad:                                            ; preds = %tailrecurse
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6114)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  %i.cr = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 40
  call fastcc void @_RNvNtCsjqC71KfQTl6_15lance_namespace6schema18arrow_type_to_json(ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.ak, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ct)
  %i.cu = load i64, ptr %i.ak, align 8, !range !13, !noundef !5 ; 2 uses
  %i.cv = icmp eq i64 %i.cu, -1
  br i1 %i.cv, label %bb.dp, label %bb.dq

.split527:                                        ; preds = %tailrecurse, %tailrecurse
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %i.al, ptr %i.n, align 8
  %.sroa.4234.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeNtB6_5Debug3fmtCsjqC71KfQTl6_15lance_namespace, ptr %.sroa.4234.0..sroa_idx, align 8
  call void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noundef nonnull @28, ptr noundef nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.experimental.noalias.scope.decl(metadata !536)
  %.sroa.06.0.copyload.i644 = load i64, ptr %i.o, align 8, !alias.scope !537 ; 3 uses
  %.sroa.4.0..sroa_idx.i645 = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.4.0.copyload.i646 = load ptr, ptr %.sroa.4.0..sroa_idx.i645, align 8, !alias.scope !537 ; 3 uses
  %.sroa.57.0..sroa_idx.i647 = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.57.0.copyload.i648 = load i64, ptr %.sroa.57.0..sroa_idx.i647, align 8, !alias.scope !537
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !538
  %i.cw = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef 8) #18, !noalias !538 ; 5 uses
  %i.cx = icmp eq ptr %i.cw, null
  br i1 %i.cx, label %bb.ae, label %_RINvMs4_NtCs63DIHKhvmTb_10lance_core5errorNtB6_5Error9namespaceNtNtCs40k4W9msRzi_5alloc6string6StringECsjqC71KfQTl6_15lance_namespace.exit653, !prof !3

bb.ae:                                            ; preds = %.split527
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #19
          to label %.noexc.i652 unwind label %bb.af, !noalias !539

.noexc.i652:                                      ; preds = %bb.ae
  unreachable

bb.af:                                            ; preds = %bb.ae
  %i.cy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cz = icmp eq i64 %.sroa.06.0.copyload.i644, 0
  br i1 %i.cz, label %common.resume, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i646) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i646, i64 noundef %.sroa.06.0.copyload.i644, i64 noundef range(i64 1, -9223372036854775807) 1) #18, !noalias !540
  br label %common.resume

_RINvMs4_NtCs63DIHKhvmTb_10lance_core5errorNtB6_5Error9namespaceNtNtCs40k4W9msRzi_5alloc6string6StringECsjqC71KfQTl6_15lance_namespace.exit653: ; preds = %.split527
  store i64 %.sroa.06.0.copyload.i644, ptr %i.cw, align 8, !noalias !539
  %.sroa.5.0..sroa_idx2.i649 = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store ptr %.sroa.4.0.copyload.i646, ptr %.sroa.5.0..sroa_idx2.i649, align 8, !noalias !539
  %.sroa.6.0..sroa_idx4.i650 = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  store i64 %.sroa.57.0.copyload.i648, ptr %.sroa.6.0..sroa_idx4.i650, align 8, !noalias !539
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 31, ptr %i.da, align 8
  %.sroa.4750.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.cw, ptr %.sroa.4750.0..sroa_idx, align 8
  %.sroa.5751.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @1, ptr %.sroa.5751.0..sroa_idx, align 8
  %.sroa.6752.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @29, ptr %.sroa.6752.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.bs

bb.ah:                                            ; preds = %tailrecurse
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6158)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  %i.db = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 40
  call fastcc void @_RNvNtCsjqC71KfQTl6_15lance_namespace6schema18arrow_type_to_json(ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.ac, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dd)
  %i.de = load i64, ptr %i.ac, align 8, !range !13, !noundef !5 ; 2 uses
  %i.df = icmp eq i64 %i.de, -1
  br i1 %i.df, label %bb.ei, label %bb.ej

bb.ai:                                            ; preds = %tailrecurse
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6136)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  %i.dg = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 40
  call fastcc void @_RNvNtCsjqC71KfQTl6_15lance_namespace6schema18arrow_type_to_json(ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.ag, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.di)
  %i.dj = load i64, ptr %i.ag, align 8, !range !13, !noundef !5 ; 2 uses
  %i.dk = icmp eq i64 %i.dj, -1
  br i1 %i.dk, label %bb.ez, label %bb.fa

bb.aj:                                            ; preds = %tailrecurse
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  %i.dl = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8, !nonnull !5, !noundef !5
  %i.dn = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.do = load i64, ptr %i.dn, align 8, !noundef !5 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 16 ; 2 uses
  %.idx = shl nuw nsw i64 %i.do, 3
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 %.idx ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !541
  store i8 -1, ptr %i.g, align 8, !noalias !541
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !541
  tail call void @llvm.experimental.noalias.scope.decl(metadata !542)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !543)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !544
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.51325)
  %i.dr = icmp eq i64 %i.do, 0
  br i1 %i.dr, label %_RINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENCNvNtCsjqC71KfQTl6_15lance_namespace6schema18arrow_type_to_json0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5v_12try_for_each4callNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldINtNtNtB7_3ops12control_flow11ControlFlowB6H_ENcNtB8c_5Break0E0B8c_EB32_.exit.i.i.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.aj
  %.sroa.4961.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %.sroa.7962.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.sroa.410.64..sroa_idx.i.i.i714 = getelementptr inbounds nuw i8, ptr %.sroa.410.i.i.i708, i64 56
  br label %bb.ak

bb.ak:                                            ; preds = %.lr.ph, %bb.ao
  %.sroa.0.01269 = phi ptr [ %i.dp, %.lr.ph ], [ %i.ds, %bb.ao ] ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.0.01269, i64 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6957)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !545)
  %i.dt = load ptr, ptr %.sroa.0.01269, align 8, !alias.scope !546, !noalias !547, !nonnull !5, !noundef !5
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  invoke fastcc void @_RNvNtCsjqC71KfQTl6_15lance_namespace6schema19arrow_field_to_json(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(88) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.du)
          to label %.noexc719 unwind label %.loopexit, !inline_history !425

.noexc719:                                        ; preds = %bb.ak
  %.sroa.0960.0.copyload = load i64, ptr %i.a, align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.410.i.i.i708)
  %i.dv = icmp eq i64 %.sroa.0960.0.copyload, -1
  br i1 %i.dv, label %bb.al, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldRINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEINtNtBa_6result6ResultNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4R_B2D_EENCNvNtCsjqC71KfQTl6_15lance_namespace6schema18arrow_type_to_json0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB5G_EIB2i_NtNtBa_7convert10InfallibleB48_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8y_12try_for_each4callB2D_B5v_NcNtB5v_5Break0E0B5v_E0E0B5M_.exit.i716

bb.al:                                            ; preds = %.noexc719
  %i.dw = load i8, ptr %i.g, align 8, !range !4, !alias.scope !548, !noalias !549, !noundef !5
  %i.dx = icmp eq i8 %i.dw, -1
  br i1 %i.dx, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldRINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEINtNtBa_6result6ResultNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4R_B2D_EENCNvNtCsjqC71KfQTl6_15lance_namespace6schema18arrow_type_to_json0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB5G_EIB2i_NtNtBa_7convert10InfallibleB48_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8y_12try_for_each4callB2D_B5v_NcNtB5v_5Break0E0B5v_E0E0B5M_.exit.i716.thread, label %bb.am

bb.am:                                            ; preds = %bb.al
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core5error5ErrorECsjqC71KfQTl6_15lance_namespace(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.g)
          to label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldRINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEINtNtBa_6result6ResultNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4R_B2D_EENCNvNtCsjqC71KfQTl6_15lance_namespace6schema18arrow_type_to_json0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB5G_EIB2i_NtNtBa_7convert10InfallibleB48_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8y_12try_for_each4callB2D_B5v_NcNtB5v_5Break0E0B5v_E0E0B5M_.exit.i716.thread unwind label %bb.an, !noalias !549, !inline_history !433

bb.an:                                            ; preds = %bb.am
  %i.dy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.g, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4961.0..sroa_idx, i64 56, i1 false)
  br label %.body695

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldRINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEINtNtBa_6result6ResultNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4R_B2D_EENCNvNtCsjqC71KfQTl6_15lance_namespace6schema18arrow_type_to_json0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB5G_EIB2i_NtNtBa_7convert10InfallibleB48_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8y_12try_for_each4callB2D_B5v_NcNtB5v_5Break0E0B5v_E0E0B5M_.exit.i716.thread: ; preds = %bb.al, %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.g, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4961.0..sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.410.i.i.i708)
  br label %_RINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENCNvNtCsjqC71KfQTl6_15lance_namespace6schema18arrow_type_to_json0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5v_12try_for_each4callNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldINtNtNtB7_3ops12control_flow11ControlFlowB6H_ENcNtB8c_5Break0E0B8c_EB32_.exit.i.i

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldRINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEINtNtBa_6result6ResultNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4R_B2D_EENCNvNtCsjqC71KfQTl6_15lance_namespace6schema18arrow_type_to_json0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB5G_EIB2i_NtNtBa_7convert10InfallibleB48_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8y_12try_for_each4callB2D_B5v_NcNtB5v_5Break0E0B5v_E0E0B5M_.exit.i716: ; preds = %.noexc719
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.410.64..sroa_idx.i.i.i714, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7962.0..sroa_idx, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.410.i.i.i708, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4961.0..sroa_idx, i64 56, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6957, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.410.i.i.i708, i64 80, i1 false), !noalias !550
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.410.i.i.i708)
  %.not.i1.i = icmp eq i64 %.sroa.0960.0.copyload, -2
  br i1 %.not.i1.i, label %bb.ao, label %_RINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENCNvNtCsjqC71KfQTl6_15lance_namespace6schema18arrow_type_to_json0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5v_12try_for_each4callNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldINtNtNtB7_3ops12control_flow11ControlFlowB6H_ENcNtB8c_5Break0E0B8c_EB32_.exit.i.i

bb.ao:                                            ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldRINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEINtNtBa_6result6ResultNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4R_B2D_EENCNvNtCsjqC71KfQTl6_15lance_namespace6schema18arrow_type_to_json0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB5G_EIB2i_NtNtBa_7convert10InfallibleB48_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8y_12try_for_each4callB2D_B5v_NcNtB5v_5Break0E0B5v_E0E0B5M_.exit.i716
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6957)
  %i.dz = icmp eq ptr %i.ds, %i.dq
  br i1 %i.dz, label %_RINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENCNvNtCsjqC71KfQTl6_15lance_namespace6schema18arrow_type_to_json0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5v_12try_for_each4callNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldINtNtNtB7_3ops12control_flow11ControlFlowB6H_ENcNtB8c_5Break0E0B8c_EB32_.exit.i.i.thread, label %bb.ak

_RINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENCNvNtCsjqC71KfQTl6_15lance_namespace6schema18arrow_type_to_json0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5v_12try_for_each4callNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldINtNtNtB7_3ops12control_flow11ControlFlowB6H_ENcNtB8c_5Break0E0B8c_EB32_.exit.i.i: ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldRINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEINtNtBa_6result6ResultNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4R_B2D_EENCNvNtCsjqC71KfQTl6_15lance_namespace6schema18arrow_type_to_json0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB5G_EIB2i_NtNtBa_7convert10InfallibleB48_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8y_12try_for_each4callB2D_B5v_NcNtB5v_5Break0E0B5v_E0E0B5M_.exit.i716, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldRINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEINtNtBa_6result6ResultNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4R_B2D_EENCNvNtCsjqC71KfQTl6_15lance_namespace6schema18arrow_type_to_json0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB5G_EIB2i_NtNtBa_7convert10InfallibleB48_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8y_12try_for_each4callB2D_B5v_NcNtB5v_5Break0E0B5v_E0E0B5M_.exit.i716.thread
  %.sroa.0960.0.copyload1493 = phi i64 [ -1, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldRINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEINtNtBa_6result6ResultNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4R_B2D_EENCNvNtCsjqC71KfQTl6_15lance_namespace6schema18arrow_type_to_json0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB5G_EIB2i_NtNtBa_7convert10InfallibleB48_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8y_12try_for_each4callB2D_B5v_NcNtB5v_5Break0E0B5v_E0E0B5M_.exit.i716.thread ], [ %.sroa.0960.0.copyload, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldRINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEINtNtBa_6result6ResultNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4R_B2D_EENCNvNtCsjqC71KfQTl6_15lance_namespace6schema18arrow_type_to_json0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB5G_EIB2i_NtNtBa_7convert10InfallibleB48_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8y_12try_for_each4callB2D_B5v_NcNtB5v_5Break0E0B5v_E0E0B5M_.exit.i716 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.51325, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6957, i64 80, i1 false), !noalias !5
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6957)
  %.not.i5.i = icmp eq i64 %.sroa.0960.0.copyload1493, -1
  br i1 %.not.i5.i, label %_RINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENCNvNtCsjqC71KfQTl6_15lance_namespace6schema18arrow_type_to_json0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5v_12try_for_each4callNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldINtNtNtB7_3ops12control_flow11ControlFlowB6H_ENcNtB8c_5Break0E0B8c_EB32_.exit.i.i.thread, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i

_RINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENCNvNtCsjqC71KfQTl6_15lance_namespace6schema18arrow_type_to_json0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5v_12try_for_each4callNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldINtNtNtB7_3ops12control_flow11ControlFlowB6H_ENcNtB8c_5Break0E0B8c_EB32_.exit.i.i.thread: ; preds = %bb.ao, %bb.aj, %_RINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENCNvNtCsjqC71KfQTl6_15lance_namespace6schema18arrow_type_to_json0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5v_12try_for_each4callNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldINtNtNtB7_3ops12control_flow11ControlFlowB6H_ENcNtB8c_5Break0E0B8c_EB32_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.51325)
  store i64 0, ptr %i.f, align 8, !alias.scope !551
  %i.ea = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ea, align 8, !alias.scope !551
  %i.eb = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 0, ptr %i.eb, align 8, !alias.scope !551
  br label %_RNCINvXso_NtCscI6d9CVNmLh_4core6resultINtB8_6ResultINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEINtNtNtNtBa_4iter6traits7collect12FromIteratorIBB_B1k_B2Q_EE9from_iterINtNtNtB3E_8adapters3map3MapINtNtNtBa_5slice4iter4IterINtNtBS_4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENCNvNtCsjqC71KfQTl6_15lance_namespace6schema18arrow_type_to_json0EE0B6E_.exit

bb.ap:                                            ; preds = %bb.aq
  %i.ec = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldECsjqC71KfQTl6_15lance_namespace(ptr noalias noundef align 8 dereferenceable(88) %i.d) #20
          to label %.body695 unwind label %bb.bb, !noalias !551, !inline_history !437

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %_RINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENCNvNtCsjqC71KfQTl6_15lance_namespace6schema18arrow_type_to_json0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5v_12try_for_each4callNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldINtNtNtB7_3ops12control_flow11ControlFlowB6H_ENcNtB8c_5Break0E0B8c_EB32_.exit.i.i
  %.sroa.7909.0..sroa_idx910 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !544
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.7909.0..sroa_idx910, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.51325, i64 80, i1 false), !noalias !552
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.51325)
  store i64 %.sroa.0960.0.copyload1493, ptr %i.d, align 8, !noalias !544
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !553, !inline_history !440
  %i.ed = call noundef align 8 dereferenceable_or_null(352) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 352, i64 noundef range(i64 1, 9) 8) #18, !noalias !553, !inline_history !440 ; 4 uses
  %i.ee = icmp eq ptr %i.ed, null
  br i1 %i.ee, label %bb.aq, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsjqC71KfQTl6_15lance_namespace.exit.i

bb.aq:                                            ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 352) #19
          to label %.noexc2.i unwind label %bb.ap, !noalias !542, !inline_history !440

.noexc2.i:                                        ; preds = %bb.aq
  unreachable

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsjqC71KfQTl6_15lance_namespace.exit.i: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ed, ptr noundef nonnull align 8 dereferenceable(88) %i.d, i64 88, i1 false), !noalias !551
  store i64 4, ptr %i.e, align 8, !noalias !544
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.ed, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !544
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !544
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !544
  call void @llvm.experimental.noalias.scope.decl(metadata !554)
  call void @llvm.experimental.noalias.scope.decl(metadata !555), !noalias !543
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %i.ef = icmp eq ptr %i.ds, %i.dq
  br i1 %i.ef, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldEINtB2_10SpecExtendBR_INtNtNtCscI6d9CVNmLh_4core4iter8adapters12GenericShuntINtNtB2L_3map3MapINtNtNtB2P_5slice4iter4IterINtNtB6_4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENCNvNtCsjqC71KfQTl6_15lance_namespace6schema18arrow_type_to_json0EINtNtB2P_6result6ResultNtNtB2P_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEE11spec_extendB5p_.exit.i, label %.lr.ph1271.lr.ph

.lr.ph1271.lr.ph:                                 ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsjqC71KfQTl6_15lance_namespace.exit.i
  %.sroa.4946.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %.sroa.7947.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %.sroa.410.64..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.410.i.i.i, i64 56
  %.sroa.7916.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %.lr.ph1271

.lr.ph1271:                                       ; preds = %.lr.ph1271.lr.ph, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldE7reserveCsjqC71KfQTl6_15lance_namespace.exit
  %i.eg = phi ptr [ %i.ed, %.lr.ph1271.lr.ph ], [ %i.et, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldE7reserveCsjqC71KfQTl6_15lance_namespace.exit ]
  %i.eh = phi i64 [ 1, %.lr.ph1271.lr.ph ], [ %i.ev, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldE7reserveCsjqC71KfQTl6_15lance_namespace.exit ] ; 5 uses
  %.sroa.0965.01273 = phi ptr [ %i.ds, %.lr.ph1271.lr.ph ], [ %i.ei, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldE7reserveCsjqC71KfQTl6_15lance_namespace.exit ]
  br label %bb.ar

bb.ar:                                            ; preds = %.lr.ph1271, %bb.av
  %.sroa.0965.11270 = phi ptr [ %.sroa.0965.01273, %.lr.ph1271 ], [ %i.ei, %bb.av ] ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.0965.11270, i64 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6942)
  call void @llvm.experimental.noalias.scope.decl(metadata !556), !noalias !542
  %i.ej = load ptr, ptr %.sroa.0965.11270, align 8, !alias.scope !557, !noalias !558, !nonnull !5, !noundef !5
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  invoke fastcc void @_RNvNtCsjqC71KfQTl6_15lance_namespace6schema19arrow_field_to_json(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(88) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.ek)
          to label %.noexc704 unwind label %bb.ba, !inline_history !458

.noexc704:                                        ; preds = %bb.ar
  %.sroa.0945.0.copyload = load i64, ptr %i.b, align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.410.i.i.i)
  %i.el = icmp eq i64 %.sroa.0945.0.copyload, -1
  br i1 %i.el, label %bb.as, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldRINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEINtNtBa_6result6ResultNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4R_B2D_EENCNvNtCsjqC71KfQTl6_15lance_namespace6schema18arrow_type_to_json0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB5G_EIB2i_NtNtBa_7convert10InfallibleB48_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8y_12try_for_each4callB2D_B5v_NcNtB5v_5Break0E0B5v_E0E0B5M_.exit.i

bb.as:                                            ; preds = %.noexc704
  %i.em = load i8, ptr %i.g, align 8, !range !4, !alias.scope !559, !noalias !560, !noundef !5
  %i.en = icmp eq i8 %i.em, -1
  br i1 %i.en, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldRINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEINtNtBa_6result6ResultNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4R_B2D_EENCNvNtCsjqC71KfQTl6_15lance_namespace6schema18arrow_type_to_json0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB5G_EIB2i_NtNtBa_7convert10InfallibleB48_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8y_12try_for_each4callB2D_B5v_NcNtB5v_5Break0E0B5v_E0E0B5M_.exit.i.thread, label %bb.at

bb.at:                                            ; preds = %bb.as
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core5error5ErrorECsjqC71KfQTl6_15lance_namespace(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.g)
          to label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldRINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEINtNtBa_6result6ResultNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4R_B2D_EENCNvNtCsjqC71KfQTl6_15lance_namespace6schema18arrow_type_to_json0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB5G_EIB2i_NtNtBa_7convert10InfallibleB48_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8y_12try_for_each4callB2D_B5v_NcNtB5v_5Break0E0B5v_E0E0B5M_.exit.i.thread unwind label %bb.au, !noalias !560, !inline_history !466

bb.au:                                            ; preds = %bb.at
  %i.eo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.g, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4946.0..sroa_idx, i64 56, i1 false)
  br label %.body.i

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldRINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEINtNtBa_6result6ResultNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4R_B2D_EENCNvNtCsjqC71KfQTl6_15lance_namespace6schema18arrow_type_to_json0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB5G_EIB2i_NtNtBa_7convert10InfallibleB48_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8y_12try_for_each4callB2D_B5v_NcNtB5v_5Break0E0B5v_E0E0B5M_.exit.i.thread: ; preds = %bb.as, %bb.at
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.g, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4946.0..sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.410.i.i.i)
  br label %_RINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENCNvNtCsjqC71KfQTl6_15lance_namespace6schema18arrow_type_to_json0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5v_12try_for_each4callNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldINtNtNtB7_3ops12control_flow11ControlFlowB6H_ENcNtB8c_5Break0E0B8c_EB32_.exit.i

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldRINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEINtNtBa_6result6ResultNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4R_B2D_EENCNvNtCsjqC71KfQTl6_15lance_namespace6schema18arrow_type_to_json0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB5G_EIB2i_NtNtBa_7convert10InfallibleB48_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8y_12try_for_each4callB2D_B5v_NcNtB5v_5Break0E0B5v_E0E0B5M_.exit.i: ; preds = %.noexc704
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.410.64..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7947.0..sroa_idx, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.410.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4946.0..sroa_idx, i64 56, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6942, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.410.i.i.i, i64 80, i1 false), !noalias !561
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.410.i.i.i)
  %.not.i2.i = icmp eq i64 %.sroa.0945.0.copyload, -2
  br i1 %.not.i2.i, label %bb.av, label %_RINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENCNvNtCsjqC71KfQTl6_15lance_namespace6schema18arrow_type_to_json0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5v_12try_for_each4callNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldINtNtNtB7_3ops12control_flow11ControlFlowB6H_ENcNtB8c_5Break0E0B8c_EB32_.exit.i

bb.av:                                            ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldRINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEINtNtBa_6result6ResultNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4R_B2D_EENCNvNtCsjqC71KfQTl6_15lance_namespace6schema18arrow_type_to_json0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB5G_EIB2i_NtNtBa_7convert10InfallibleB48_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8y_12try_for_each4callB2D_B5v_NcNtB5v_5Break0E0B5v_E0E0B5M_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6942)
  %i.ep = icmp eq ptr %i.ei, %i.dq
  br i1 %i.ep, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldEINtB2_10SpecExtendBR_INtNtNtCscI6d9CVNmLh_4core4iter8adapters12GenericShuntINtNtB2L_3map3MapINtNtNtB2P_5slice4iter4IterINtNtB6_4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENCNvNtCsjqC71KfQTl6_15lance_namespace6schema18arrow_type_to_json0EINtNtB2P_6result6ResultNtNtB2P_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEE11spec_extendB5p_.exit.i, label %bb.ar

_RINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENCNvNtCsjqC71KfQTl6_15lance_namespace6schema18arrow_type_to_json0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5v_12try_for_each4callNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldINtNtNtB7_3ops12control_flow11ControlFlowB6H_ENcNtB8c_5Break0E0B8c_EB32_.exit.i: ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldRINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEINtNtBa_6result6ResultNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4R_B2D_EENCNvNtCsjqC71KfQTl6_15lance_namespace6schema18arrow_type_to_json0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB5G_EIB2i_NtNtBa_7convert10InfallibleB48_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8y_12try_for_each4callB2D_B5v_NcNtB5v_5Break0E0B5v_E0E0B5M_.exit.i, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldRINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEINtNtBa_6result6ResultNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4R_B2D_EENCNvNtCsjqC71KfQTl6_15lance_namespace6schema18arrow_type_to_json0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB5G_EIB2i_NtNtBa_7convert10InfallibleB48_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8y_12try_for_each4callB2D_B5v_NcNtB5v_5Break0E0B5v_E0E0B5M_.exit.i.thread
  %.sroa.0945.0.copyload1487 = phi i64 [ -1, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldRINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEINtNtBa_6result6ResultNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4R_B2D_EENCNvNtCsjqC71KfQTl6_15lance_namespace6schema18arrow_type_to_json0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB5G_EIB2i_NtNtBa_7convert10InfallibleB48_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8y_12try_for_each4callB2D_B5v_NcNtB5v_5Break0E0B5v_E0E0B5M_.exit.i.thread ], [ %.sroa.0945.0.copyload, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map12map_try_foldRINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEINtNtBa_6result6ResultNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4R_B2D_EENCNvNtCsjqC71KfQTl6_15lance_namespace6schema18arrow_type_to_json0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB5G_EIB2i_NtNtBa_7convert10InfallibleB48_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8y_12try_for_each4callB2D_B5v_NcNtB5v_5Break0E0B5v_E0E0B5M_.exit.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6942, i64 80, i1 false), !noalias !562
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6942)
  %.not.i703 = icmp eq i64 %.sroa.0945.0.copyload1487, -1
  br i1 %.not.i703, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldEINtB2_10SpecExtendBR_INtNtNtCscI6d9CVNmLh_4core4iter8adapters12GenericShuntINtNtB2L_3map3MapINtNtNtB2P_5slice4iter4IterINtNtB6_4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENCNvNtCsjqC71KfQTl6_15lance_namespace6schema18arrow_type_to_json0EINtNtB2P_6result6ResultNtNtB2P_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEE11spec_extendB5p_.exit.i, label %bb.aw

bb.aw:                                            ; preds = %_RINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENCNvNtCsjqC71KfQTl6_15lance_namespace6schema18arrow_type_to_json0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5v_12try_for_each4callNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldINtNtNtB7_3ops12control_flow11ControlFlowB6H_ENcNtB8c_5Break0E0B8c_EB32_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.7916.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  store i64 %.sroa.0945.0.copyload1487, ptr %i.c, align 8
  %i.eq = icmp samesign ult i64 %i.eh, 104811045873349726
  call void @llvm.assume(i1 %i.eq), !noalias !543
  %i.er = load i64, ptr %i.e, align 8, !range !7, !alias.scope !563, !noalias !552, !noundef !5
  %i.es = icmp eq i64 %i.eh, %i.er
  br i1 %i.es, label %bb.ay, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldE7reserveCsjqC71KfQTl6_15lance_namespace.exit

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldE7reserveCsjqC71KfQTl6_15lance_namespace.exit: ; preds = %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldE7reserveCsjqC71KfQTl6_15lance_namespace.exit_crit_edge, %bb.aw
  %i.et = phi ptr [ %.pre, %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldE7reserveCsjqC71KfQTl6_15lance_namespace.exit_crit_edge ], [ %i.eg, %bb.aw ] ; 2 uses
  %i.eu = getelementptr inbounds nuw [88 x i8], ptr %i.et, i64 %i.eh
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.eu, ptr noundef nonnull align 8 dereferenceable(88) %i.c, i64 88, i1 false)
  %i.ev = add nuw nsw i64 %i.eh, 1                ; 2 uses
  store i64 %i.ev, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !563, !noalias !552
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %i.ew = icmp eq ptr %i.ei, %i.dq
  br i1 %i.ew, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldEINtB2_10SpecExtendBR_INtNtNtCscI6d9CVNmLh_4core4iter8adapters12GenericShuntINtNtB2L_3map3MapINtNtNtB2P_5slice4iter4IterINtNtB6_4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENCNvNtCsjqC71KfQTl6_15lance_namespace6schema18arrow_type_to_json0EINtNtB2P_6result6ResultNtNtB2P_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEE11spec_extendB5p_.exit.i, label %.lr.ph1271

bb.ax:                                            ; preds = %bb.ay
  %i.ex = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldECsjqC71KfQTl6_15lance_namespace(ptr noalias noundef align 8 dereferenceable(88) %i.c) #20
          to label %.body.i unwind label %bb.az, !inline_history !468

bb.ay:                                            ; preds = %bb.aw
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsjqC71KfQTl6_15lance_namespace(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.eh, i64 noundef range(i64 1, 0) 1, i64 noundef 88)
          to label %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldE7reserveCsjqC71KfQTl6_15lance_namespace.exit_crit_edge unwind label %bb.ax

._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldE7reserveCsjqC71KfQTl6_15lance_namespace.exit_crit_edge: ; preds = %bb.ay
  %.pre = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !563, !noalias !552
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldE7reserveCsjqC71KfQTl6_15lance_namespace.exit

bb.az:                                            ; preds = %bb.ax
  %i.ey = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #21, !noalias !564, !inline_history !468
  unreachable

_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldEINtB2_10SpecExtendBR_INtNtNtCscI6d9CVNmLh_4core4iter8adapters12GenericShuntINtNtB2L_3map3MapINtNtNtB2P_5slice4iter4IterINtNtB6_4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENCNvNtCsjqC71KfQTl6_15lance_namespace6schema18arrow_type_to_json0EINtNtB2P_6result6ResultNtNtB2P_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEE11spec_extendB5p_.exit.i: ; preds = %_RINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENCNvNtCsjqC71KfQTl6_15lance_namespace6schema18arrow_type_to_json0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5v_12try_for_each4callNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldINtNtNtB7_3ops12control_flow11ControlFlowB6H_ENcNtB8c_5Break0E0B8c_EB32_.exit.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldE7reserveCsjqC71KfQTl6_15lance_namespace.exit, %bb.av, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsjqC71KfQTl6_15lance_namespace.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !565
  br label %_RNCINvXso_NtCscI6d9CVNmLh_4core6resultINtB8_6ResultINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEINtNtNtNtBa_4iter6traits7collect12FromIteratorIBB_B1k_B2Q_EE9from_iterINtNtNtB3E_8adapters3map3MapINtNtNtBa_5slice4iter4IterINtNtBS_4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENCNvNtCsjqC71KfQTl6_15lance_namespace6schema18arrow_type_to_json0EE0B6E_.exit

bb.ba:                                            ; preds = %bb.ar
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.ba, %bb.au, %bb.ax
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ex, %bb.ax ], [ %i.ez, %bb.ba ], [ %i.eo, %bb.au ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldEECsjqC71KfQTl6_15lance_namespace(ptr noalias noundef align 8 dereferenceable(24) %i.e) #20
          to label %.body695 unwind label %bb.bb, !noalias !551, !inline_history !437

bb.bb:                                            ; preds = %.body.i, %bb.ap
  %i.fa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #21, !noalias !551, !inline_history !437
  unreachable

.body695:                                         ; preds = %.loopexit, %.body.i, %bb.ap, %bb.an
  %.pn.i = phi { ptr, i32 } [ %i.dy, %bb.an ], [ %eh.lpad-body.i, %.body.i ], [ %i.ec, %bb.ap ], [ %lpad.loopexit, %.loopexit ] ; 2 uses
  %i.fb = load i8, ptr %i.g, align 8, !range !4, !noalias !541, !noundef !5
  %.not1429 = icmp eq i8 %i.fb, -1
  br i1 %.not1429, label %common.resume, label %bb.bf

.loopexit:                                        ; preds = %bb.ak
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body695

_RNCINvXso_NtCscI6d9CVNmLh_4core6resultINtB8_6ResultINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEINtNtNtNtBa_4iter6traits7collect12FromIteratorIBB_B1k_B2Q_EE9from_iterINtNtNtB3E_8adapters3map3MapINtNtNtBa_5slice4iter4IterINtNtBS_4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENCNvNtCsjqC71KfQTl6_15lance_namespace6schema18arrow_type_to_json0EE0B6E_.exit: ; preds = %_RINvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENCNvNtCsjqC71KfQTl6_15lance_namespace6schema18arrow_type_to_json0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB5v_12try_for_each4callNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldINtNtNtB7_3ops12control_flow11ControlFlowB6H_ENcNtB8c_5Break0E0B8c_EB32_.exit.i.i.thread, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldEINtB2_10SpecExtendBR_INtNtNtCscI6d9CVNmLh_4core4iter8adapters12GenericShuntINtNtB2L_3map3MapINtNtNtB2P_5slice4iter4IterINtNtB6_4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENCNvNtCsjqC71KfQTl6_15lance_namespace6schema18arrow_type_to_json0EINtNtB2P_6result6ResultNtNtB2P_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEE11spec_extendB5p_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !544
  %i.fc = load i8, ptr %i.g, align 8, !range !4, !noalias !541, !noundef !5
  %.not.not.i = icmp eq i8 %i.fc, -1
  br i1 %.not.not.i, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %_RNCINvXso_NtCscI6d9CVNmLh_4core6resultINtB8_6ResultINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEINtNtNtNtBa_4iter6traits7collect12FromIteratorIBB_B1k_B2Q_EE9from_iterINtNtNtB3E_8adapters3map3MapINtNtNtBa_5slice4iter4IterINtNtBS_4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENCNvNtCsjqC71KfQTl6_15lance_namespace6schema18arrow_type_to_json0EE0B6E_.exit
  %i.fd = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fd, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  store i8 -1, ptr %i.y, align 8, !alias.scope !566
  br label %_RINvNtNtCscI6d9CVNmLh_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENCNvNtCsjqC71KfQTl6_15lance_namespace6schema18arrow_type_to_json0ENtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENCINvXso_B5q_IB5o_INtNtB1B_3vec3VecB3S_EB6a_EINtNtNtB4_6traits7collect12FromIteratorIB5o_B3S_B6a_EE9from_iterBQ_E0B79_EB2U_.exit

bb.bd:                                            ; preds = %_RNCINvXso_NtCscI6d9CVNmLh_4core6resultINtB8_6ResultINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEINtNtNtNtBa_4iter6traits7collect12FromIteratorIBB_B1k_B2Q_EE9from_iterINtNtNtB3E_8adapters3map3MapINtNtNtBa_5slice4iter4IterINtNtBS_4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENCNvNtCsjqC71KfQTl6_15lance_namespace6schema18arrow_type_to_json0EE0B6E_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.y, ptr noundef nonnull align 8 dereferenceable(56) %i.g, i64 56, i1 false)
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldEECsjqC71KfQTl6_15lance_namespace(ptr noalias noundef align 8 dereferenceable(24) %i.f), !noalias !541, !inline_history !471
  br label %_RINvNtNtCscI6d9CVNmLh_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENCNvNtCsjqC71KfQTl6_15lance_namespace6schema18arrow_type_to_json0ENtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENCINvXso_B5q_IB5o_INtNtB1B_3vec3VecB3S_EB6a_EINtNtNtB4_6traits7collect12FromIteratorIB5o_B3S_B6a_EE9from_iterBQ_E0B79_EB2U_.exit

bb.be:                                            ; preds = %bb.bf
  %i.fe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #21, !noalias !541, !inline_history !471
  unreachable

bb.bf:                                            ; preds = %.body695
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core5error5ErrorECsjqC71KfQTl6_15lance_namespace(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.g)
          to label %common.resume unwind label %bb.be

_RINvNtNtCscI6d9CVNmLh_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENCNvNtCsjqC71KfQTl6_15lance_namespace6schema18arrow_type_to_json0ENtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENCINvXso_B5q_IB5o_INtNtB1B_3vec3VecB3S_EB6a_EINtNtNtB4_6traits7collect12FromIteratorIB5o_B3S_B6a_EE9from_iterBQ_E0B79_EB2U_.exit: ; preds = %bb.bd, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !541
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !541
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !567
  %i.ff = call noundef dereferenceable_or_null(6) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 6, i64 noundef range(i64 1, -9223372036854775807) 1) #18, !noalias !567 ; 4 uses
  %i.fg = icmp eq ptr %i.ff, null
  br i1 %i.fg, label %bb.fq, label %bb.fr

bb.bg:                                            ; preds = %tailrecurse
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !568
  %i.fh = tail call noundef dereferenceable_or_null(5) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 5, i64 noundef range(i64 1, -9223372036854775807) 1) #18, !noalias !568 ; 3 uses
  %i.fi = icmp eq ptr %i.fh, null
  br i1 %i.fi, label %bb.fv, label %bb.fw

bb.bh:                                            ; preds = %tailrecurse
  %i.fj = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.fk = load ptr, ptr %i.fj, align 8, !nonnull !5, !noundef !5
  br label %tailrecurse

bb.bi:                                            ; preds = %tailrecurse
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !569
  %i.fl = tail call noundef dereferenceable_or_null(9) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 9, i64 noundef range(i64 1, -9223372036854775807) 1) #18, !noalias !569 ; 3 uses
  %i.fm = icmp eq ptr %i.fl, null
  br i1 %i.fm, label %bb.fx, label %bb.fy

bb.bj:                                            ; preds = %tailrecurse
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !570
  %i.fn = tail call noundef dereferenceable_or_null(9) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 9, i64 noundef range(i64 1, -9223372036854775807) 1) #18, !noalias !570 ; 3 uses
  %i.fo = icmp eq ptr %i.fn, null
  br i1 %i.fo, label %bb.fz, label %bb.ga

bb.bk:                                            ; preds = %tailrecurse
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !571
  %i.fp = tail call noundef dereferenceable_or_null(10) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 10, i64 noundef range(i64 1, -9223372036854775807) 1) #18, !noalias !571 ; 3 uses
  %i.fq = icmp eq ptr %i.fp, null
  br i1 %i.fq, label %bb.gb, label %bb.gc

bb.bl:                                            ; preds = %tailrecurse
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !572
  %i.fr = tail call noundef dereferenceable_or_null(10) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 10, i64 noundef range(i64 1, -9223372036854775807) 1) #18, !noalias !572 ; 3 uses
  %i.fs = icmp eq ptr %i.fr, null
  br i1 %i.fs, label %bb.gd, label %bb.ge

bb.bm:                                            ; preds = %tailrecurse
  %i.ft = getelementptr inbounds nuw i8, ptr %i.am, i64 1
  %i.fu = load i8, ptr %i.ft, align 1, !range !14, !noundef !5
  %i.fv = trunc nuw i8 %i.fu to i1
  br i1 %i.fv, label %.split531, label %bb.gf

.split535:                                        ; preds = %tailrecurse
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr %i.al, ptr %i.p, align 8
  %.sroa.4238.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeNtB6_5Debug3fmtCsjqC71KfQTl6_15lance_namespace, ptr %.sroa.4238.0..sroa_idx, align 8
  call void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.q, ptr noundef nonnull @39, ptr noundef nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.experimental.noalias.scope.decl(metadata !573)
  %.sroa.06.0.copyload.i667 = load i64, ptr %i.q, align 8, !alias.scope !574 ; 3 uses
  %.sroa.4.0..sroa_idx.i668 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.4.0.copyload.i669 = load ptr, ptr %.sroa.4.0..sroa_idx.i668, align 8, !alias.scope !574 ; 3 uses
  %.sroa.57.0..sroa_idx.i670 = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.57.0.copyload.i671 = load i64, ptr %.sroa.57.0..sroa_idx.i670, align 8, !alias.scope !574
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !575
  %i.fw = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef 8) #18, !noalias !575 ; 5 uses
  %i.fx = icmp eq ptr %i.fw, null
  br i1 %i.fx, label %bb.bn, label %_RINvMs4_NtCs63DIHKhvmTb_10lance_core5errorNtB6_5Error9namespaceNtNtCs40k4W9msRzi_5alloc6string6StringECsjqC71KfQTl6_15lance_namespace.exit676, !prof !3

bb.bn:                                            ; preds = %.split535
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #19
          to label %.noexc.i675 unwind label %bb.bo, !noalias !576

.noexc.i675:                                      ; preds = %bb.bn
  unreachable

bb.bo:                                            ; preds = %bb.bn
  %i.fy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fz = icmp eq i64 %.sroa.06.0.copyload.i667, 0
  br i1 %i.fz, label %common.resume, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i669) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i669, i64 noundef %.sroa.06.0.copyload.i667, i64 noundef range(i64 1, -9223372036854775807) 1) #18, !noalias !577
  br label %common.resume

_RINvMs4_NtCs63DIHKhvmTb_10lance_core5errorNtB6_5Error9namespaceNtNtCs40k4W9msRzi_5alloc6string6StringECsjqC71KfQTl6_15lance_namespace.exit676: ; preds = %.split535
  store i64 %.sroa.06.0.copyload.i667, ptr %i.fw, align 8, !noalias !576
  %.sroa.5.0..sroa_idx2.i672 = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  store ptr %.sroa.4.0.copyload.i669, ptr %.sroa.5.0..sroa_idx2.i672, align 8, !noalias !576
  %.sroa.6.0..sroa_idx4.i673 = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  store i64 %.sroa.57.0.copyload.i671, ptr %.sroa.6.0..sroa_idx4.i673, align 8, !noalias !576
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 31, ptr %i.ga, align 8
  %.sroa.4742.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.fw, ptr %.sroa.4742.0..sroa_idx, align 8
  %.sroa.5743.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @1, ptr %.sroa.5743.0..sroa_idx, align 8
  %.sroa.6744.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @40, ptr %.sroa.6744.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.bs

bb.bq:                                            ; preds = %bb.b
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 4) #19
  unreachable
end_hunk_1
