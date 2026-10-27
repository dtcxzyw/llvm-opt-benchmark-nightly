Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_namespace-de60238aca3b849a.lance_namespace.e24e0257a4058f4a-cgu.0?download=true
inline.NumInlined: 441
inline.NumDeleted: 177
begin_hunk_0_@_RINvNtNtCscI6d9CVNmLh_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldENvNtCsjqC71KfQTl6_15lance_namespace6schema24convert_json_arrow_fieldENtNtCs8SUNSmrkv52_12arrow_schema5field5FieldINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENCINvXso_B4U_IB4S_INtNtCs40k4W9msRzi_5alloc3vec3VecB49_EB5E_EINtNtNtB4_6traits7collect12FromIteratorIB4S_B49_B5E_EE9from_iterBQ_E0B6D_EB36_:bb.a
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

bb.f:                                             ; preds = %bb.a, %bb.e, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.thread
  %.sink12 = phi i64 [ 16, %bb.e ], [ 16, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.thread ], [ 8, %bb.a ]
  %.sink = phi i64 [ %i.b, %bb.e ], [ %i.b, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.thread ], [ 0, %bb.a ]
  %storemerge13 = phi i64 [ 1, %bb.e ], [ 0, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.thread ], [ 1, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %.sink12
  store i64 %.sink, ptr %i.n, align 8
  store i64 %storemerge13, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noalias noundef nonnull ptr @_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit(i64 noundef range(i64 24, 129) %0) unnamed_addr #4 {
bb.a:
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18
  %i.a = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %0, i64 noundef 8) #18 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !3

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %0) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCsjqC71KfQTl6_15lance_namespace6schema18arrow_type_to_json(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(address) dereferenceable(64) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.410.i.i.i708 = alloca [80 x i8], align 8 ; 6 uses
  %i.a = alloca [88 x i8], align 8                ; 4 uses
  %.sroa.6957 = alloca [80 x i8], align 8         ; 5 uses
  %.sroa.410.i.i.i = alloca [80 x i8], align 8    ; 6 uses
  %i.b = alloca [88 x i8], align 8                ; 4 uses
  %.sroa.6942 = alloca [80 x i8], align 8         ; 5 uses
  %.sroa.6 = alloca [80 x i8], align 8            ; 6 uses
  %.sroa.51325 = alloca [80 x i8], align 8        ; 5 uses
  %i.c = alloca [88 x i8], align 8                ; 4 uses
  %i.d = alloca [88 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [56 x i8], align 8                ; 15 uses
  %i.h = alloca [48 x i8], align 8                ; 5 uses
  %i.i = alloca [48 x i8], align 8                ; 5 uses
  %i.j = alloca [48 x i8], align 8                ; 5 uses
  %i.k = alloca [48 x i8], align 8                ; 5 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [16 x i8], align 8                ; 5 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.5208 = alloca [40 x i8], align 8         ; 4 uses
  %i.r = alloca [64 x i8], align 8                ; 5 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
  %i.t = alloca [88 x i8], align 8                ; 9 uses
  %i.u = alloca [64 x i8], align 8                ; 7 uses
  %.sroa.6202 = alloca [56 x i8], align 8         ; 7 uses
  %i.v = alloca [16 x i8], align 8                ; 5 uses
  %i.w = alloca [24 x i8], align 8                ; 2 uses
  %i.x = alloca [56 x i8], align 8                ; 4 uses
  %i.y = alloca [56 x i8], align 8                ; 11 uses
  %.sroa.5164 = alloca [40 x i8], align 8         ; 4 uses
  %i.z = alloca [64 x i8], align 8                ; 5 uses
  %i.aa = alloca [24 x i8], align 8               ; 6 uses
  %i.ab = alloca [88 x i8], align 8               ; 9 uses
  %i.ac = alloca [64 x i8], align 8               ; 7 uses
  %.sroa.6158 = alloca [56 x i8], align 8         ; 7 uses
  %.sroa.5142 = alloca [40 x i8], align 8         ; 4 uses
  %i.ad = alloca [64 x i8], align 8               ; 5 uses
  %i.ae = alloca [24 x i8], align 8               ; 6 uses
  %i.af = alloca [88 x i8], align 8               ; 9 uses
  %i.ag = alloca [64 x i8], align 8               ; 7 uses
  %.sroa.6136 = alloca [56 x i8], align 8         ; 7 uses
  %.sroa.5120 = alloca [40 x i8], align 8         ; 4 uses
  %i.ah = alloca [64 x i8], align 8               ; 5 uses
  %i.ai = alloca [24 x i8], align 8               ; 6 uses
  %i.aj = alloca [88 x i8], align 8               ; 9 uses
  %i.ak = alloca [64 x i8], align 8               ; 7 uses
  %.sroa.6114 = alloca [56 x i8], align 8         ; 7 uses
  %i.al = alloca [8 x i8], align 8                ; 6 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.bh, %bb.a
  %i.am = phi ptr [ %1, %bb.a ], [ %i.fk, %bb.bh ] ; 19 uses
  store ptr %i.am, ptr %i.al, align 8
  %i.an = load i8, ptr %i.am, align 8, !range !10, !noundef !5
  switch i8 %i.an, label %default.unreachable1374 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.i
    i8 8, label %bb.j
    i8 9, label %bb.k
    i8 10, label %bb.l
    i8 11, label %bb.m
    i8 12, label %bb.n
    i8 13, label %bb.o
    i8 14, label %bb.p
    i8 15, label %bb.q
    i8 16, label %bb.r
    i8 17, label %bb.s
    i8 18, label %bb.t
    i8 19, label %bb.u
    i8 20, label %bb.v
    i8 21, label %bb.w
    i8 22, label %bb.x
    i8 23, label %.split
    i8 24, label %bb.ab
    i8 25, label %bb.ac
    i8 26, label %.split
    i8 27, label %bb.ad
    i8 28, label %.split527
    i8 29, label %bb.ah
    i8 30, label %bb.ai
    i8 31, label %.split527
    i8 32, label %bb.aj
    i8 33, label %bb.bg
    i8 34, label %bb.bh
    i8 35, label %bb.bi
    i8 36, label %bb.bj
    i8 37, label %bb.bk
    i8 38, label %bb.bl
    i8 39, label %bb.bm
    i8 40, label %.split535
  ]

default.unreachable1374:                          ; preds = %tailrecurse
  unreachable

bb.b:                                             ; preds = %tailrecurse
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !506
  %i.ao = tail call noundef dereferenceable_or_null(4) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 4, i64 noundef range(i64 1, -9223372036854775807) 1) #18, !noalias !506 ; 3 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.bq, label %bb.br

bb.c:                                             ; preds = %tailrecurse
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !507
  %i.aq = tail call noundef dereferenceable_or_null(4) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 4, i64 noundef range(i64 1, -9223372036854775807) 1) #18, !noalias !507 ; 3 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.bt, label %bb.bu

bb.d:                                             ; preds = %tailrecurse
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !508
  %i.as = tail call noundef dereferenceable_or_null(4) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 4, i64 noundef range(i64 1, -9223372036854775807) 1) #18, !noalias !508 ; 3 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.bv, label %bb.bw

bb.e:                                             ; preds = %tailrecurse
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !509
  %i.au = tail call noundef dereferenceable_or_null(5) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 5, i64 noundef range(i64 1, -9223372036854775807) 1) #18, !noalias !509 ; 3 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.bx, label %bb.by

bb.f:                                             ; preds = %tailrecurse
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !510
  %i.aw = tail call noundef dereferenceable_or_null(5) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 5, i64 noundef range(i64 1, -9223372036854775807) 1) #18, !noalias !510 ; 3 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %bb.bz, label %bb.ca

bb.g:                                             ; preds = %tailrecurse
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !511
  %i.ay = tail call noundef dereferenceable_or_null(5) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 5, i64 noundef range(i64 1, -9223372036854775807) 1) #18, !noalias !511 ; 3 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %bb.cb, label %bb.cc

bb.h:                                             ; preds = %tailrecurse
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !512
  %i.ba = tail call noundef dereferenceable_or_null(5) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 5, i64 noundef range(i64 1, -9223372036854775807) 1) #18, !noalias !512 ; 3 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.cd, label %bb.ce

bb.i:                                             ; preds = %tailrecurse
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !513
  %i.bc = tail call noundef dereferenceable_or_null(6) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 6, i64 noundef range(i64 1, -9223372036854775807) 1) #18, !noalias !513 ; 3 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %bb.cf, label %bb.cg

bb.j:                                             ; preds = %tailrecurse
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !514
  %i.be = tail call noundef dereferenceable_or_null(6) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 6, i64 noundef range(i64 1, -9223372036854775807) 1) #18, !noalias !514 ; 3 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.ch, label %bb.ci

bb.k:                                             ; preds = %tailrecurse
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !515
  %i.bg = tail call noundef dereferenceable_or_null(6) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 6, i64 noundef range(i64 1, -9223372036854775807) 1) #18, !noalias !515 ; 3 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %bb.cj, label %bb.ck

bb.l:                                             ; preds = %tailrecurse
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !516
  %i.bi = tail call noundef dereferenceable_or_null(7) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 7, i64 noundef range(i64 1, -9223372036854775807) 1) #18, !noalias !516 ; 3 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %bb.cl, label %bb.cm

bb.m:                                             ; preds = %tailrecurse
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !517
  %i.bk = tail call noundef dereferenceable_or_null(7) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 7, i64 noundef range(i64 1, -9223372036854775807) 1) #18, !noalias !517 ; 3 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %bb.cn, label %bb.co

bb.n:                                             ; preds = %tailrecurse
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !518
  %i.bm = tail call noundef dereferenceable_or_null(7) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 7, i64 noundef range(i64 1, -9223372036854775807) 1) #18, !noalias !518 ; 3 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %bb.cp, label %bb.cq

bb.o:                                             ; preds = %tailrecurse
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !519
  %i.bo = tail call noundef dereferenceable_or_null(9) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 9, i64 noundef range(i64 1, -9223372036854775807) 1) #18, !noalias !519 ; 3 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %bb.cr, label %bb.cs

bb.p:                                             ; preds = %tailrecurse
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !520
  %i.bq = tail call noundef dereferenceable_or_null(6) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 6, i64 noundef range(i64 1, -9223372036854775807) 1) #18, !noalias !520 ; 3 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %bb.ct, label %bb.cu

bb.q:                                             ; preds = %tailrecurse
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !521
  %i.bs = tail call noundef dereferenceable_or_null(6) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 6, i64 noundef range(i64 1, -9223372036854775807) 1) #18, !noalias !521 ; 3 uses
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %bb.cv, label %bb.cw

bb.r:                                             ; preds = %tailrecurse
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !522
  %i.bu = tail call noundef dereferenceable_or_null(6) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 6, i64 noundef range(i64 1, -9223372036854775807) 1) #18, !noalias !522 ; 3 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %bb.cx, label %bb.cy

bb.s:                                             ; preds = %tailrecurse
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !523
  %i.bw = tail call noundef dereferenceable_or_null(6) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 6, i64 noundef range(i64 1, -9223372036854775807) 1) #18, !noalias !523 ; 3 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %bb.cz, label %bb.da

bb.t:                                             ; preds = %tailrecurse
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !524
  %i.by = tail call noundef dereferenceable_or_null(8) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 1) #18, !noalias !524 ; 3 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %bb.db, label %bb.dc

bb.u:                                             ; preds = %tailrecurse
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !525
  %i.ca = tail call noundef dereferenceable_or_null(8) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 1) #18, !noalias !525 ; 3 uses
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %bb.dd, label %bb.de

bb.v:                                             ; preds = %tailrecurse
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !526
  %i.cc = tail call noundef dereferenceable_or_null(6) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 6, i64 noundef range(i64 1, -9223372036854775807) 1) #18, !noalias !526 ; 3 uses
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %bb.df, label %bb.dg

bb.w:                                             ; preds = %tailrecurse
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !527
end_hunk_0
begin_hunk_1_@_RNvNtCsjqC71KfQTl6_15lance_namespace6schema18arrow_type_to_json:bb.a
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

bb.br:                                            ; preds = %bb.b
  store i32 1819047278, ptr %i.ao, align 1
  store i64 0, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 4, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ao, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 4, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 -1, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.bs

bb.bs:                                            ; preds = %_RINvMs4_NtCs63DIHKhvmTb_10lance_core5errorNtB6_5Error9namespaceNtNtCs40k4W9msRzi_5alloc6string6StringECsjqC71KfQTl6_15lance_namespace.exit676, %.split531, %bb.gv, %bb.gg, %bb.ge, %bb.gc, %bb.ga, %bb.fy, %bb.fw, %bb.ft, %bb.fs, %_RINvMs4_NtCs63DIHKhvmTb_10lance_core5errorNtB6_5Error9namespaceNtNtCs40k4W9msRzi_5alloc6string6StringECsjqC71KfQTl6_15lance_namespace.exit653, %bb.fo, %bb.ez, %bb.ex, %bb.ei, %bb.ee, %bb.dp, %_RINvMs4_NtCs63DIHKhvmTb_10lance_core5errorNtB6_5Error9namespaceNtNtCs40k4W9msRzi_5alloc6string6StringECsjqC71KfQTl6_15lance_namespace.exit, %bb.do, %bb.dm, %bb.dk, %bb.di, %bb.dg, %bb.de, %bb.dc, %bb.da, %bb.cy, %bb.cw, %bb.cu, %bb.cs, %bb.cq, %bb.co, %bb.cm, %bb.ck, %bb.ci, %bb.cg, %bb.ce, %bb.cc, %bb.ca, %bb.by, %bb.bw, %bb.bu, %bb.br
  ret void

bb.bt:                                            ; preds = %bb.c
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 4) #19
  unreachable

bb.bu:                                            ; preds = %bb.c
  store i32 1819242338, ptr %i.aq, align 1
  store i64 0, ptr %0, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 4, ptr %.sroa.53.0..sroa_idx, align 8
  %.sroa.53.sroa.4.0..sroa.53.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.aq, ptr %.sroa.53.sroa.4.0..sroa.53.0..sroa_idx.sroa_idx, align 8
  %.sroa.53.sroa.5.0..sroa.53.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 4, ptr %.sroa.53.sroa.5.0..sroa.53.0..sroa_idx.sroa_idx, align 8
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 -1, ptr %.sroa.64.0..sroa_idx, align 8
  br label %bb.bs

bb.bv:                                            ; preds = %bb.d
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 4) #19
  unreachable

bb.bw:                                            ; preds = %bb.d
  store i32 947154537, ptr %i.as, align 1
  store i64 0, ptr %0, align 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 4, ptr %.sroa.57.0..sroa_idx, align 8
  %.sroa.57.sroa.4.0..sroa.57.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.as, ptr %.sroa.57.sroa.4.0..sroa.57.0..sroa_idx.sroa_idx, align 8
  %.sroa.57.sroa.5.0..sroa.57.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 4, ptr %.sroa.57.sroa.5.0..sroa.57.0..sroa_idx.sroa_idx, align 8
  %.sroa.68.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 -1, ptr %.sroa.68.0..sroa_idx, align 8
  br label %bb.bs

bb.bx:                                            ; preds = %bb.e
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 5) #19
  unreachable

bb.by:                                            ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.au, ptr noundef nonnull align 1 dereferenceable(5) @4, i64 5, i1 false)
  store i64 0, ptr %0, align 8
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 5, ptr %.sroa.515.0..sroa_idx, align 8
  %.sroa.515.sroa.4.0..sroa.515.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.au, ptr %.sroa.515.sroa.4.0..sroa.515.0..sroa_idx.sroa_idx, align 8
  %.sroa.515.sroa.5.0..sroa.515.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 5, ptr %.sroa.515.sroa.5.0..sroa.515.0..sroa_idx.sroa_idx, align 8
  %.sroa.616.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 -1, ptr %.sroa.616.0..sroa_idx, align 8
  br label %bb.bs

bb.bz:                                            ; preds = %bb.f
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 5) #19
  unreachable

bb.ca:                                            ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.aw, ptr noundef nonnull align 1 dereferenceable(5) @5, i64 5, i1 false)
  store i64 0, ptr %0, align 8
  %.sroa.523.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 5, ptr %.sroa.523.0..sroa_idx, align 8
  %.sroa.523.sroa.4.0..sroa.523.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.aw, ptr %.sroa.523.sroa.4.0..sroa.523.0..sroa_idx.sroa_idx, align 8
  %.sroa.523.sroa.5.0..sroa.523.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 5, ptr %.sroa.523.sroa.5.0..sroa.523.0..sroa_idx.sroa_idx, align 8
  %.sroa.624.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 -1, ptr %.sroa.624.0..sroa_idx, align 8
  br label %bb.bs

bb.cb:                                            ; preds = %bb.g
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 5) #19
  unreachable

bb.cc:                                            ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.ay, ptr noundef nonnull align 1 dereferenceable(5) @6, i64 5, i1 false)
  store i64 0, ptr %0, align 8
  %.sroa.531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 5, ptr %.sroa.531.0..sroa_idx, align 8
  %.sroa.531.sroa.4.0..sroa.531.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ay, ptr %.sroa.531.sroa.4.0..sroa.531.0..sroa_idx.sroa_idx, align 8
  %.sroa.531.sroa.5.0..sroa.531.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 5, ptr %.sroa.531.sroa.5.0..sroa.531.0..sroa_idx.sroa_idx, align 8
  %.sroa.632.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 -1, ptr %.sroa.632.0..sroa_idx, align 8
  br label %bb.bs

bb.cd:                                            ; preds = %bb.h
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 5) #19
  unreachable

bb.ce:                                            ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.ba, ptr noundef nonnull align 1 dereferenceable(5) @7, i64 5, i1 false)
  store i64 0, ptr %0, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 5, ptr %.sroa.511.0..sroa_idx, align 8
  %.sroa.511.sroa.4.0..sroa.511.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ba, ptr %.sroa.511.sroa.4.0..sroa.511.0..sroa_idx.sroa_idx, align 8
  %.sroa.511.sroa.5.0..sroa.511.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 5, ptr %.sroa.511.sroa.5.0..sroa.511.0..sroa_idx.sroa_idx, align 8
  %.sroa.612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 -1, ptr %.sroa.612.0..sroa_idx, align 8
  br label %bb.bs

bb.cf:                                            ; preds = %bb.i
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 6) #19
  unreachable

bb.cg:                                            ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.bc, ptr noundef nonnull align 1 dereferenceable(6) @8, i64 6, i1 false)
  store i64 0, ptr %0, align 8
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 6, ptr %.sroa.519.0..sroa_idx, align 8
  %.sroa.519.sroa.4.0..sroa.519.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.bc, ptr %.sroa.519.sroa.4.0..sroa.519.0..sroa_idx.sroa_idx, align 8
  %.sroa.519.sroa.5.0..sroa.519.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 6, ptr %.sroa.519.sroa.5.0..sroa.519.0..sroa_idx.sroa_idx, align 8
  %.sroa.620.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 -1, ptr %.sroa.620.0..sroa_idx, align 8
  br label %bb.bs

bb.ch:                                            ; preds = %bb.j
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 6) #19
  unreachable

bb.ci:                                            ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.be, ptr noundef nonnull align 1 dereferenceable(6) @9, i64 6, i1 false)
  store i64 0, ptr %0, align 8
  %.sroa.527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 6, ptr %.sroa.527.0..sroa_idx, align 8
  %.sroa.527.sroa.4.0..sroa.527.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.be, ptr %.sroa.527.sroa.4.0..sroa.527.0..sroa_idx.sroa_idx, align 8
  %.sroa.527.sroa.5.0..sroa.527.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 6, ptr %.sroa.527.sroa.5.0..sroa.527.0..sroa_idx.sroa_idx, align 8
  %.sroa.628.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 -1, ptr %.sroa.628.0..sroa_idx, align 8
  br label %bb.bs

bb.cj:                                            ; preds = %bb.k
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 6) #19
  unreachable

bb.ck:                                            ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.bg, ptr noundef nonnull align 1 dereferenceable(6) @10, i64 6, i1 false)
  store i64 0, ptr %0, align 8
  %.sroa.535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 6, ptr %.sroa.535.0..sroa_idx, align 8
  %.sroa.535.sroa.4.0..sroa.535.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.bg, ptr %.sroa.535.sroa.4.0..sroa.535.0..sroa_idx.sroa_idx, align 8
  %.sroa.535.sroa.5.0..sroa.535.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 6, ptr %.sroa.535.sroa.5.0..sroa.535.0..sroa_idx.sroa_idx, align 8
  %.sroa.636.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 -1, ptr %.sroa.636.0..sroa_idx, align 8
  br label %bb.bs

bb.cl:                                            ; preds = %bb.l
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 7) #19
  unreachable

bb.cm:                                            ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.bi, ptr noundef nonnull align 1 dereferenceable(7) @11, i64 7, i1 false)
  store i64 0, ptr %0, align 8
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 7, ptr %.sroa.539.0..sroa_idx, align 8
  %.sroa.539.sroa.4.0..sroa.539.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.bi, ptr %.sroa.539.sroa.4.0..sroa.539.0..sroa_idx.sroa_idx, align 8
  %.sroa.539.sroa.5.0..sroa.539.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 7, ptr %.sroa.539.sroa.5.0..sroa.539.0..sroa_idx.sroa_idx, align 8
  %.sroa.640.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 -1, ptr %.sroa.640.0..sroa_idx, align 8
  br label %bb.bs

bb.cn:                                            ; preds = %bb.m
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 7) #19
  unreachable

bb.co:                                            ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.bk, ptr noundef nonnull align 1 dereferenceable(7) @12, i64 7, i1 false)
  store i64 0, ptr %0, align 8
  %.sroa.543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 7, ptr %.sroa.543.0..sroa_idx, align 8
  %.sroa.543.sroa.4.0..sroa.543.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.bk, ptr %.sroa.543.sroa.4.0..sroa.543.0..sroa_idx.sroa_idx, align 8
  %.sroa.543.sroa.5.0..sroa.543.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 7, ptr %.sroa.543.sroa.5.0..sroa.543.0..sroa_idx.sroa_idx, align 8
  %.sroa.644.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 -1, ptr %.sroa.644.0..sroa_idx, align 8
  br label %bb.bs

bb.cp:                                            ; preds = %bb.n
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 7) #19
  unreachable

bb.cq:                                            ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.bm, ptr noundef nonnull align 1 dereferenceable(7) @13, i64 7, i1 false)
  store i64 0, ptr %0, align 8
  %.sroa.547.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 7, ptr %.sroa.547.0..sroa_idx, align 8
  %.sroa.547.sroa.4.0..sroa.547.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.bm, ptr %.sroa.547.sroa.4.0..sroa.547.0..sroa_idx.sroa_idx, align 8
end_hunk_1
begin_hunk_2_@_RNvNtCsjqC71KfQTl6_15lance_namespace6schema18arrow_type_to_json:bb.a

bb.ex:                                            ; preds = %bb.ew
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.hy, ptr noundef nonnull align 8 dereferenceable(88) %i.ab, i64 88, i1 false)
  %i.ia = load ptr, ptr %i.al, align 8, !nonnull !5, !align !9, !noundef !5
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 4
  %i.ic = load i32, ptr %i.ib, align 4, !noundef !5
  %i.id = sext i32 %i.ic to i64
  store i64 1, ptr %0, align 8
  %.sroa.4169.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.id, ptr %.sroa.4169.0..sroa_idx, align 8
  %.sroa.5170.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 15, ptr %.sroa.5170.0..sroa_idx, align 8
  %.sroa.5170.sroa.4.0..sroa.5170.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.hu, ptr %.sroa.5170.sroa.4.0..sroa.5170.0..sroa_idx.sroa_idx, align 8
  %.sroa.5170.sroa.5.0..sroa.5170.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 15, ptr %.sroa.5170.sroa.5.0..sroa.5170.0..sroa_idx.sroa_idx, align 8
  %.sroa.6171.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 1, ptr %.sroa.6171.0..sroa_idx, align 8
  %.sroa.6171.sroa.4.0..sroa.6171.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.hy, ptr %.sroa.6171.sroa.4.0..sroa.6171.0..sroa_idx.sroa_idx, align 8
  %.sroa.6171.sroa.5.0..sroa.6171.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 1, ptr %.sroa.6171.sroa.5.0..sroa.6171.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %bb.bs

bb.ey:                                            ; preds = %bb.ej
  %i.ie = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models20json_arrow_data_type17JsonArrowDataTypeECsjqC71KfQTl6_15lance_namespace(ptr noalias noundef align 8 dereferenceable(64) %i.z) #20
          to label %common.resume unwind label %bb.ef

bb.ez:                                            ; preds = %bb.ai
  %i.if = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6136, ptr noundef nonnull align 8 dereferenceable(56) %i.if, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ig, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6136, i64 56, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6136)
  br label %bb.bs

bb.fa:                                            ; preds = %bb.ai
  %i.ih = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %.sroa.4483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6136, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4483.0..sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  %.sroa.4139.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4139.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6136, i64 56, i1 false)
  store i64 %i.dj, ptr %i.ad, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6136)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ae, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ih)
          to label %bb.fb unwind label %bb.fp

bb.fb:                                            ; preds = %bb.fa
  %i.ii = getelementptr inbounds nuw i8, ptr %i.dh, i64 120
  %i.ij = load i8, ptr %i.ii, align 8, !range !14, !noundef !5
  %i.ik = invoke fastcc noundef ptr @_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit(i64 noundef 64)
          to label %bb.ff unwind label %bb.fc     ; 3 uses

bb.fc:                                            ; preds = %bb.fb
  %i.il = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models20json_arrow_data_type17JsonArrowDataTypeECsjqC71KfQTl6_15lance_namespace(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.ad) #20
          to label %.body558 unwind label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.im = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #21
  unreachable

.body558:                                         ; preds = %bb.fc, %bb.fi
  %.pn542 = phi { ptr, i32 } [ %i.iy, %bb.fi ], [ %i.il, %bb.fc ] ; 2 uses
  %.val582 = load i64, ptr %i.ae, align 8         ; 2 uses
  %i.in = icmp eq i64 %.val582, 0
  br i1 %i.in, label %common.resume, label %bb.fe

bb.fe:                                            ; preds = %.body558
  %i.io = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.val583 = load ptr, ptr %i.io, align 8, !nonnull !5, !noundef !5
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val583, i64 noundef %.val582, i64 noundef range(i64 1, -9223372036854775807) 1) #18
  br label %common.resume

bb.ff:                                            ; preds = %bb.fb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ik, ptr noundef nonnull align 8 dereferenceable(64) %i.ad, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5142)
  %i.ip = getelementptr inbounds nuw i8, ptr %i.dh, i64 88
  %i.iq = load i64, ptr %i.ip, align 8, !noundef !5
  %i.ir = icmp eq i64 %i.iq, 0
  br i1 %i.ir, label %bb.fh, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.is = getelementptr inbounds nuw i8, ptr %i.dh, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke fastcc void @_RNvXNtCsfKiFC1ztrmh_9hashbrown3mapINtB2_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringBK_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsjqC71KfQTl6_15lance_namespace(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.is)
          to label %bb.fj unwind label %bb.fi

bb.fh:                                            ; preds = %bb.ff, %bb.fj
  %.sroa.0140.0 = phi ptr [ %.sroa.0144.0.copyload, %bb.fj ], [ null, %bb.ff ]
  %i.it = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  store ptr %.sroa.0140.0, ptr %i.it, align 8
  %.sroa.5142.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5142.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5142, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false)
  %i.iu = getelementptr inbounds nuw i8, ptr %i.af, i64 80
  store i8 %i.ij, ptr %i.iu, align 8
  %i.iv = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store ptr %i.ik, ptr %i.iv, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5142)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !580
  %i.iw = call noundef dereferenceable_or_null(10) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 10, i64 noundef range(i64 1, -9223372036854775807) 1) #18, !noalias !580 ; 4 uses
  %i.ix = icmp eq ptr %i.iw, null
  br i1 %i.ix, label %bb.fm, label %bb.fn

bb.fi:                                            ; preds = %bb.fg
  %i.iy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models20json_arrow_data_type17JsonArrowDataTypeEECsjqC71KfQTl6_15lance_namespace(ptr nonnull %i.ik) #20
          to label %.body558 unwind label %bb.ef

bb.fj:                                            ; preds = %bb.fg
  %.sroa.0144.0.copyload = load ptr, ptr %i.j, align 8
  %.sroa.4145.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5142, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4145.0..sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.fh

bb.fk:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjqC71KfQTl6_15lance_namespace.exit687, %bb.fl
  %.pn544 = phi { ptr, i32 } [ %i.iz, %bb.fl ], [ %i.jb, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjqC71KfQTl6_15lance_namespace.exit687 ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldECsjqC71KfQTl6_15lance_namespace(ptr noalias noundef align 8 dereferenceable(88) %i.af) #20
          to label %common.resume unwind label %bb.ef

bb.fl:                                            ; preds = %bb.fm
  %i.iz = landingpad { ptr, i32 }
          cleanup
  br label %bb.fk

bb.fm:                                            ; preds = %bb.fh
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 10) #19
          to label %bb.eg unwind label %bb.fl

bb.fn:                                            ; preds = %bb.fh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.iw, ptr noundef nonnull align 1 dereferenceable(10) @27, i64 10, i1 false)
  %i.ja = invoke fastcc noundef ptr @_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit(i64 noundef 88)
          to label %bb.fo unwind label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjqC71KfQTl6_15lance_namespace.exit687 ; 2 uses

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjqC71KfQTl6_15lance_namespace.exit687: ; preds = %bb.fn
  %i.jb = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.iw, i64 noundef 10, i64 noundef range(i64 1, -9223372036854775807) 1) #18
  br label %bb.fk

bb.fo:                                            ; preds = %bb.fn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ja, ptr noundef nonnull align 8 dereferenceable(88) %i.af, i64 88, i1 false)
  store i64 0, ptr %0, align 8
  %.sroa.5148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 10, ptr %.sroa.5148.0..sroa_idx, align 8
  %.sroa.5148.sroa.4.0..sroa.5148.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.iw, ptr %.sroa.5148.sroa.4.0..sroa.5148.0..sroa_idx.sroa_idx, align 8
  %.sroa.5148.sroa.5.0..sroa.5148.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 10, ptr %.sroa.5148.sroa.5.0..sroa.5148.0..sroa_idx.sroa_idx, align 8
  %.sroa.6149.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 1, ptr %.sroa.6149.0..sroa_idx, align 8
  %.sroa.6149.sroa.4.0..sroa.6149.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.ja, ptr %.sroa.6149.sroa.4.0..sroa.6149.0..sroa_idx.sroa_idx, align 8
  %.sroa.6149.sroa.5.0..sroa.6149.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 1, ptr %.sroa.6149.sroa.5.0..sroa.6149.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %bb.bs

bb.fp:                                            ; preds = %bb.fa
  %i.jc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models20json_arrow_data_type17JsonArrowDataTypeECsjqC71KfQTl6_15lance_namespace(ptr noalias noundef align 8 dereferenceable(64) %i.ad) #20
          to label %common.resume unwind label %bb.ef

bb.fq:                                            ; preds = %_RINvNtNtCscI6d9CVNmLh_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENCNvNtCsjqC71KfQTl6_15lance_namespace6schema18arrow_type_to_json0ENtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENCINvXso_B5q_IB5o_INtNtB1B_3vec3VecB3S_EB6a_EINtNtNtB4_6traits7collect12FromIteratorIB5o_B3S_B6a_EE9from_iterBQ_E0B79_EB2U_.exit
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 6) #19
          to label %bb.eg unwind label %bb.fu

bb.fr:                                            ; preds = %_RINvNtNtCscI6d9CVNmLh_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEENCNvNtCsjqC71KfQTl6_15lance_namespace6schema18arrow_type_to_json0ENtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENCINvXso_B5q_IB5o_INtNtB1B_3vec3VecB3S_EB6a_EINtNtNtB4_6traits7collect12FromIteratorIB5o_B3S_B6a_EE9from_iterBQ_E0B79_EB2U_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.ff, ptr noundef nonnull align 1 dereferenceable(6) @30, i64 6, i1 false)
  %.sroa.0187.0.copyload = load i8, ptr %i.y, align 8 ; 2 uses
  %.not = icmp eq i8 %.sroa.0187.0.copyload, -1
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br i1 %.not, label %bb.fs, label %bb.ft

bb.fs:                                            ; preds = %bb.fr
  %i.jd = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.jd, i64 24, i1 false)
  store i64 0, ptr %0, align 8
  %.sroa.6180.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 6, ptr %.sroa.6180.0..sroa_idx, align 8
  %.sroa.6180.sroa.5.0..sroa.6180.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ff, ptr %.sroa.6180.sroa.5.0..sroa.6180.0..sroa_idx.sroa_idx, align 8
  %.sroa.6180.sroa.6.0..sroa.6180.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 6, ptr %.sroa.6180.sroa.6.0..sroa.6180.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.bs

bb.ft:                                            ; preds = %bb.fr
  %.sroa.6189.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %.sroa.7191.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7191.0..sroa_idx, i64 24, i1 false)
  %.sroa.4502.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4502.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.6189.0..sroa_idx, i64 31, i1 false)
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.0187.0.copyload, ptr %i.je, align 8
  store i64 -1, ptr %0, align 8
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ff, i64 noundef 6, i64 noundef range(i64 1, -9223372036854775807) 1) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.bs

bb.fu:                                            ; preds = %bb.fq
  %i.jf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models16json_arrow_field14JsonArrowFieldENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEECsjqC71KfQTl6_15lance_namespace(ptr noalias noundef align 8 dereferenceable(56) %i.y) #20
          to label %common.resume unwind label %bb.ef

bb.fv:                                            ; preds = %bb.bg
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 5) #19
  unreachable

bb.fw:                                            ; preds = %bb.bg
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.fh, ptr noundef nonnull align 1 dereferenceable(5) @31, i64 5, i1 false)
  store i64 0, ptr %0, align 8
  %.sroa.5198.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 5, ptr %.sroa.5198.0..sroa_idx, align 8
  %.sroa.5198.sroa.4.0..sroa.5198.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.fh, ptr %.sroa.5198.sroa.4.0..sroa.5198.0..sroa_idx.sroa_idx, align 8
  %.sroa.5198.sroa.5.0..sroa.5198.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 5, ptr %.sroa.5198.sroa.5.0..sroa.5198.0..sroa_idx.sroa_idx, align 8
  %.sroa.6199.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 -1, ptr %.sroa.6199.0..sroa_idx, align 8
  br label %bb.bs

bb.fx:                                            ; preds = %bb.bi
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 9) #19
  unreachable

bb.fy:                                            ; preds = %bb.bi
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.fl, ptr noundef nonnull align 1 dereferenceable(9) @32, i64 9, i1 false)
  %i.jg = getelementptr inbounds nuw i8, ptr %i.am, i64 1
  %i.jh = load i8, ptr %i.jg, align 1, !noundef !5
  %i.ji = zext i8 %i.jh to i64
  %i.jj = mul nuw nsw i64 %i.ji, 1000
  %i.jk = getelementptr inbounds nuw i8, ptr %i.am, i64 2
  %i.jl = load i8, ptr %i.jk, align 2, !noundef !5
  %i.jm = sext i8 %i.jl to i64
  %i.jn = add nsw i64 %i.jj, %i.jm
  store i64 1, ptr %0, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.jn, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.550.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 9, ptr %.sroa.550.0..sroa_idx, align 8
  %.sroa.550.sroa.2.0..sroa.550.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.fl, ptr %.sroa.550.sroa.2.0..sroa.550.0..sroa_idx.sroa_idx, align 8
  %.sroa.550.sroa.3.0..sroa.550.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 9, ptr %.sroa.550.sroa.3.0..sroa.550.0..sroa_idx.sroa_idx, align 8
  %.sroa.651.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 -1, ptr %.sroa.651.0..sroa_idx, align 8
  br label %bb.bs

bb.fz:                                            ; preds = %bb.bj
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 9) #19
  unreachable

bb.ga:                                            ; preds = %bb.bj
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.fn, ptr noundef nonnull align 1 dereferenceable(9) @33, i64 9, i1 false)
  %i.jo = getelementptr inbounds nuw i8, ptr %i.am, i64 1
  %i.jp = load i8, ptr %i.jo, align 1, !noundef !5
  %i.jq = zext i8 %i.jp to i64
  %i.jr = mul nuw nsw i64 %i.jq, 1000
  %i.js = getelementptr inbounds nuw i8, ptr %i.am, i64 2
  %i.jt = load i8, ptr %i.js, align 2, !noundef !5
  %i.ju = sext i8 %i.jt to i64
  %i.jv = add nsw i64 %i.jr, %i.ju
  store i64 1, ptr %0, align 8
  %.sroa.353.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.jv, ptr %.sroa.353.0..sroa_idx, align 8
  %.sroa.554.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 9, ptr %.sroa.554.0..sroa_idx, align 8
  %.sroa.554.sroa.2.0..sroa.554.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.fn, ptr %.sroa.554.sroa.2.0..sroa.554.0..sroa_idx.sroa_idx, align 8
  %.sroa.554.sroa.3.0..sroa.554.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 9, ptr %.sroa.554.sroa.3.0..sroa.554.0..sroa_idx.sroa_idx, align 8
  %.sroa.655.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 -1, ptr %.sroa.655.0..sroa_idx, align 8
  br label %bb.bs

bb.gb:                                            ; preds = %bb.bk
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 10) #19
  unreachable

bb.gc:                                            ; preds = %bb.bk
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.fp, ptr noundef nonnull align 1 dereferenceable(10) @34, i64 10, i1 false)
  %i.jw = getelementptr inbounds nuw i8, ptr %i.am, i64 1
  %i.jx = load i8, ptr %i.jw, align 1, !noundef !5
  %i.jy = zext i8 %i.jx to i64
  %i.jz = mul nuw nsw i64 %i.jy, 1000
  %i.ka = getelementptr inbounds nuw i8, ptr %i.am, i64 2
  %i.kb = load i8, ptr %i.ka, align 2, !noundef !5
  %i.kc = sext i8 %i.kb to i64
  %i.kd = add nsw i64 %i.jz, %i.kc
  store i64 1, ptr %0, align 8
  %.sroa.357.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.kd, ptr %.sroa.357.0..sroa_idx, align 8
  %.sroa.558.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 10, ptr %.sroa.558.0..sroa_idx, align 8
  %.sroa.558.sroa.2.0..sroa.558.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.fp, ptr %.sroa.558.sroa.2.0..sroa.558.0..sroa_idx.sroa_idx, align 8
  %.sroa.558.sroa.3.0..sroa.558.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 10, ptr %.sroa.558.sroa.3.0..sroa.558.0..sroa_idx.sroa_idx, align 8
  %.sroa.659.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 -1, ptr %.sroa.659.0..sroa_idx, align 8
  br label %bb.bs

bb.gd:                                            ; preds = %bb.bl
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 10) #19
  unreachable

bb.ge:                                            ; preds = %bb.bl
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.fr, ptr noundef nonnull align 1 dereferenceable(10) @35, i64 10, i1 false)
  %i.ke = getelementptr inbounds nuw i8, ptr %i.am, i64 1
  %i.kf = load i8, ptr %i.ke, align 1, !noundef !5
  %i.kg = zext i8 %i.kf to i64
  %i.kh = mul nuw nsw i64 %i.kg, 1000
  %i.ki = getelementptr inbounds nuw i8, ptr %i.am, i64 2
  %i.kj = load i8, ptr %i.ki, align 2, !noundef !5
  %i.kk = sext i8 %i.kj to i64
  %i.kl = add nsw i64 %i.kh, %i.kk
  store i64 1, ptr %0, align 8
  %.sroa.361.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.kl, ptr %.sroa.361.0..sroa_idx, align 8
  %.sroa.562.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 10, ptr %.sroa.562.0..sroa_idx, align 8
  %.sroa.562.sroa.2.0..sroa.562.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.fr, ptr %.sroa.562.sroa.2.0..sroa.562.0..sroa_idx.sroa_idx, align 8
  %.sroa.562.sroa.3.0..sroa.562.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 10, ptr %.sroa.562.sroa.3.0..sroa.562.0..sroa_idx.sroa_idx, align 8
  %.sroa.663.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 -1, ptr %.sroa.663.0..sroa_idx, align 8
  br label %bb.bs

bb.gf:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6202)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.km = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.kn = load ptr, ptr %i.km, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 40
  call fastcc void @_RNvNtCsjqC71KfQTl6_15lance_namespace6schema18arrow_type_to_json(ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.u, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ko)
  %i.kp = load i64, ptr %i.u, align 8, !range !13, !noundef !5 ; 2 uses
  %i.kq = icmp eq i64 %i.kp, -1
  br i1 %i.kq, label %bb.gg, label %bb.gh

.split531:                                        ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store ptr %i.al, ptr %i.v, align 8
  %.sroa.4509.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeNtB6_5Debug3fmtCsjqC71KfQTl6_15lance_namespace, ptr %.sroa.4509.0..sroa_idx, align 8
  call void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.w, ptr noundef nonnull @37, ptr noundef nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call fastcc void @_RINvMs4_NtCs63DIHKhvmTb_10lance_core5errorNtB6_5Error9namespaceNtNtCs40k4W9msRzi_5alloc6string6StringECsjqC71KfQTl6_15lance_namespace(ptr noalias noundef align 8 captures(none) dereferenceable(56) %i.x, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.w, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38)
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.kr, ptr noundef nonnull align 8 dereferenceable(56) %i.x, i64 56, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.bs

bb.gg:                                            ; preds = %bb.gf
  %i.ks = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6202, ptr noundef nonnull align 8 dereferenceable(56) %i.ks, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.kt, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6202, i64 56, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6202)
  br label %bb.bs

bb.gh:                                            ; preds = %bb.gf
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kn, i64 16
  %.sroa.4513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6202, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4513.0..sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %.sroa.4205.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4205.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6202, i64 56, i1 false)
  store i64 %i.kp, ptr %i.r, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6202)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.s, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ku)
          to label %bb.gi unwind label %bb.gw

bb.gi:                                            ; preds = %bb.gh
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kn, i64 120
  %i.kw = load i8, ptr %i.kv, align 8, !range !14, !noundef !5
  %i.kx = invoke fastcc noundef ptr @_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit(i64 noundef 64)
          to label %bb.gm unwind label %bb.gj     ; 3 uses

bb.gj:                                            ; preds = %bb.gi
  %i.ky = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs1H4IRjoHvx7_30lance_namespace_reqwest_client6models20json_arrow_data_type17JsonArrowDataTypeECsjqC71KfQTl6_15lance_namespace(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.r) #20
          to label %.body unwind label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.kz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #21
  unreachable

end_hunk_2
