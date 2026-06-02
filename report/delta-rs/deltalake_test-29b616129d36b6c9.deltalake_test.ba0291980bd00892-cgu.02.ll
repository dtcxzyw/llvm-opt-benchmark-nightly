inline.NumInlined: 686
inline.NumDeleted: 340
begin_hunk_0_@_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstones13TombstoneViewEINtB4_10SpecExtendBT_INtNtCsbvkFyIu7lgC_4core6option8IntoIterBT_EE11spec_extendCsfY7SmN0bPrO_14deltalake_test:bb.a
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstones13TombstoneViewE14extend_trustedINtNtCsbvkFyIu7lgC_4core6option8IntoIterBG_EECsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstones13TombstoneViewE7reserveCsfY7SmN0bPrO_14deltalake_test.exit.i, %._crit_edge.i.i.i
  %.val5.i.i.i = phi i64 [ %i.l, %._crit_edge.i.i.i ], [ %i.h, %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstones13TombstoneViewE7reserveCsfY7SmN0bPrO_14deltalake_test.exit.i ]
  store i64 %.val5.i.i.i, ptr %i.c, align 8, !alias.scope !1195, !noalias !1214
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtB8_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB2K_5slice4iter4IterB13_ENCNvNtNtCsfY7SmN0bPrO_14deltalake_test10acceptance4data17sort_record_batch0EE9from_iterB43_(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %.val = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3 = load ptr, ptr %i.d, align 8, !nonnull !6, !noundef !6
  %i.e = ptrtoint ptr %.val3 to i64
  %i.f = ptrtoint ptr %.val to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 4                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.h, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
  %i.i = load i64, ptr %i.b, align 8, !range !714, !noundef !6
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !19, !noundef !6 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.j, label %bb.b, label %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecINtNtB8_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB29_5slice4iter4IterBG_ENCNvNtNtCsfY7SmN0bPrO_14deltalake_test10acceptance4data17sort_record_batch0EEB3r_.exit.i, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.n = load i64, ptr %i.m, align 8
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.l, i64 %i.n) #18
  unreachable

_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecINtNtB8_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB29_5slice4iter4IterBG_ENCNvNtNtCsfY7SmN0bPrO_14deltalake_test10acceptance4data17sort_record_batch0EEB3r_.exit.i: ; preds = %bb.a
  %i.o = load ptr, ptr %i.m, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.p = icmp ule i64 %i.h, %i.l
  tail call void @llvm.assume(i1 %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.l, ptr %i.c, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.o, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1215
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.o, ptr %i.s, align 8, !noalias !1215
  store ptr %i.r, ptr %i.a, align 8, !noalias !1215
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.t, align 8, !noalias !1215
  invoke void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EENCNvNtNtCsfY7SmN0bPrO_14deltalake_test10acceptance4data17sort_record_batch0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3W_8for_each4callB1n_NCINvMsj_NtB1s_3vecINtB5c_3VecB1n_E14extend_trustedBN_E0E0EB2Q_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecINtNtB8_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB29_5slice4iter4IterBG_ENCNvNtNtCsfY7SmN0bPrO_14deltalake_test10acceptance4data17sort_record_batch0EEB3r_.exit.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EEECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef align 8 dereferenceable(24) %i.c) #14
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecINtNtB8_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB29_5slice4iter4IterBG_ENCNvNtNtCsfY7SmN0bPrO_14deltalake_test10acceptance4data17sort_record_batch0EEB3r_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1215
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.e:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.f:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.u
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvNtB8_3str13replace_ascii0EE9from_iterCsfY7SmN0bPrO_14deltalake_test(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %.val = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3 = load ptr, ptr %i.d, align 8, !nonnull !6, !noundef !6
  %i.e = ptrtoint ptr %.val3 to i64
  %i.f = ptrtoint ptr %.val to i64
  %i.g = sub nuw i64 %i.e, %i.f                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.g, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.h = load i64, ptr %i.b, align 8, !range !714, !noundef !6
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !19, !noundef !6 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VechE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB17_5slice4iter4IterhENCNvNtB8_3str13replace_ascii0EECsfY7SmN0bPrO_14deltalake_test.exit.i, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #18
  unreachable

_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VechE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB17_5slice4iter4IterhENCNvNtB8_3str13replace_ascii0EECsfY7SmN0bPrO_14deltalake_test.exit.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.o = icmp ule i64 %i.g, %i.k
  tail call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.k, ptr %i.c, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.n, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.q, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1222
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.n, ptr %i.r, align 8, !noalias !1222
  store ptr %i.q, ptr %i.a, align 8, !noalias !1222
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.s, align 8, !noalias !1222
  invoke void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterhENCNvNtCs6Po7BT7Nknu_5alloc3str13replace_ascii0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2a_8for_each4callhNCINvMsj_NtB1v_3vecINtB3n_3VechE14extend_trustedBN_E0E0ECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VechE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB17_5slice4iter4IterhENCNvNtB8_3str13replace_ascii0EECsfY7SmN0bPrO_14deltalake_test.exit.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsfY7SmN0bPrO_14deltalake_test.exit unwind label %bb.e

bb.d:                                             ; preds = %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VechE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB17_5slice4iter4IterhENCNvNtB8_3str13replace_ascii0EECsfY7SmN0bPrO_14deltalake_test.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1222
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.e:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %bb.c
  resume { ptr, i32 } %i.t
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangeyEENtNtBM_5clone5Clone5cloneCsfY7SmN0bPrO_14deltalake_test(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6 ; 5 uses
  %i.e = load i64, ptr %i.b, align 8, !noundef !6 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1229)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1232
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 576460752303423488) %i.e, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16), !noalias !1232
  %i.f = load i64, ptr %i.a, align 8, !range !714, !noalias !1232, !noundef !6
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !19, !noalias !1232, !noundef !6 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfY7SmN0bPrO_14deltalake_test.exit.i, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8, !noalias !1232
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #18, !noalias !1232
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfY7SmN0bPrO_14deltalake_test.exit.i: ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !noalias !1232, !nonnull !6, !noundef !6 ; 4 uses
  %i.m = icmp ule i64 %i.e, %i.i
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1232
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.e
  %i.o = icmp eq i64 %i.i, 0
  br i1 %i.o, label %_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangeyENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsfY7SmN0bPrO_14deltalake_test.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfY7SmN0bPrO_14deltalake_test.exit.i
  %i.p = and i64 %i.e, 1152921504606846975
  %i.q = add i64 %i.i, -1
  %umin = tail call i64 @llvm.umin.i64(i64 %i.p, i64 %i.q) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %umin, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader6, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %umin, 1152921504606846974     ; 4 uses
  %i.r = sub i64 %i.i, %n.vec
  %i.s = shl nuw i64 %n.vec, 4
  %i.t = getelementptr i8, ptr %i.d, i64 %i.s
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.u = shl i64 %index, 4                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.u
  %i.v = getelementptr i8, ptr %i.d, i64 %i.u
  %next.gep2 = getelementptr i8, ptr %i.v, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !noalias !1234
  %wide.load3 = load <2 x i64>, ptr %next.gep2, align 8, !noalias !1234
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %index
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %index
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store <2 x i64> %wide.load, ptr %i.w, align 8, !noalias !1232
  store <2 x i64> %wide.load3, ptr %i.y, align 8, !noalias !1232
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %.lr.ph.i.preheader6, label %vector.body, !llvm.loop !1235

.lr.ph.i.preheader6:                              ; preds = %vector.body, %.lr.ph.i.preheader
  %.sroa.10.023.i.ph = phi i64 [ %i.i, %.lr.ph.i.preheader ], [ %i.r, %vector.body ]
  %.sroa.014.022.i.ph = phi ptr [ %i.d, %.lr.ph.i.preheader ], [ %i.t, %vector.body ]
  %.sroa.7.021.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %vector.body ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader6, %bb.c
  %.sroa.10.023.i = phi i64 [ %i.ab, %bb.c ], [ %.sroa.10.023.i.ph, %.lr.ph.i.preheader6 ]
  %.sroa.014.022.i = phi ptr [ %i.ad, %bb.c ], [ %.sroa.014.022.i.ph, %.lr.ph.i.preheader6 ] ; 3 uses
  %.sroa.7.021.i = phi i64 [ %i.ac, %bb.c ], [ %.sroa.7.021.i.ph, %.lr.ph.i.preheader6 ] ; 2 uses
  %i.aa = icmp eq ptr %.sroa.014.022.i, %i.n
  br i1 %i.aa, label %_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangeyENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsfY7SmN0bPrO_14deltalake_test.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.ab = add i64 %.sroa.10.023.i, -1             ; 2 uses
  %i.ac = add nuw nsw i64 %.sroa.7.021.i, 1
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.014.022.i, i64 16
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %.sroa.7.021.i
  %i.af = load <2 x i64>, ptr %.sroa.014.022.i, align 8, !alias.scope !1229, !noalias !1234
  store <2 x i64> %i.af, ptr %i.ae, align 8, !noalias !1232
  %i.ag = icmp eq i64 %i.ab, 0
  br i1 %i.ag, label %_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangeyENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsfY7SmN0bPrO_14deltalake_test.exit, label %.lr.ph.i, !llvm.loop !1236

_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangeyENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %.lr.ph.i, %bb.c, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfY7SmN0bPrO_14deltalake_test.exit.i
  store i64 %i.i, ptr %0, align 8, !noalias !1229
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !1229
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !1229
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsfY7SmN0bPrO_14deltalake_test(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.9 = alloca [31 x i8], align 1            ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.i = load i64, ptr %i.f, align 8, !noundef !6 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1237
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1237
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 288230376151711744) %i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 32), !noalias !1237
  %i.j = load i64, ptr %i.a, align 8, !range !714, !noalias !1237, !noundef !6
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !19, !noalias !1237, !noundef !6 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.k, label %bb.b, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfY7SmN0bPrO_14deltalake_test.exit, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.o = load i64, ptr %i.n, align 8, !noalias !1237
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.m, i64 %i.o) #18, !noalias !1237
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %bb.a
  %i.p = load ptr, ptr %i.n, align 8, !noalias !1237, !nonnull !6, !noundef !6 ; 2 uses
  %i.q = icmp ule i64 %i.i, %i.m
  tail call void @llvm.assume(i1 %i.q), !noalias !1237
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1237
  store i64 %i.m, ptr %i.e, align 8, !noalias !1237
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.p, ptr %i.r, align 8, !noalias !1237
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.i
  %i.u = icmp eq i64 %i.m, 0
  br i1 %i.u, label %_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCseqDwI8vvjGQ_10serde_json5value5ValueNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsfY7SmN0bPrO_14deltalake_test.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfY7SmN0bPrO_14deltalake_test.exit
  %.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.9, i64 7 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_RNvXs3_NtCseqDwI8vvjGQ_10serde_json5valueNtB5_5ValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit
  %.sroa.03.028 = phi ptr [ %i.h, %.lr.ph ], [ %i.x, %_RNvXs3_NtCseqDwI8vvjGQ_10serde_json5valueNtB5_5ValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit ] ; 8 uses
  %.sroa.10.027 = phi i64 [ %i.m, %.lr.ph ], [ %i.v, %_RNvXs3_NtCseqDwI8vvjGQ_10serde_json5valueNtB5_5ValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit ]
  %.sroa.7.026 = phi i64 [ 0, %.lr.ph ], [ %i.y, %_RNvXs3_NtCseqDwI8vvjGQ_10serde_json5valueNtB5_5ValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit ] ; 3 uses
  %i.v = add i64 %.sroa.10.027, -1                ; 2 uses
  %i.w = icmp eq ptr %.sroa.03.028, %i.t
  br i1 %i.w, label %_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCseqDwI8vvjGQ_10serde_json5value5ValueNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsfY7SmN0bPrO_14deltalake_test.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.03.028, i64 32
  %i.y = add nuw nsw i64 %.sroa.7.026, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !1241)
  %i.z = load i8, ptr %.sroa.03.028, align 8, !range !217, !alias.scope !1241, !noalias !1244, !noundef !6 ; 2 uses
  switch i8 %i.z, label %default.unreachable [
    i8 0, label %_RNvXs3_NtCseqDwI8vvjGQ_10serde_json5valueNtB5_5ValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.g
    i8 4, label %bb.h
    i8 5, label %bb.i
  ]

default.unreachable:                              ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %.sroa.9.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %.sroa.03.028, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.9, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.9.0..sroa_idx8, i64 31, i1 false)
  br label %_RNvXs3_NtCseqDwI8vvjGQ_10serde_json5valueNtB5_5ValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.f:                                             ; preds = %bb.d
  %.sroa.9.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %.sroa.03.028, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.9, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.9.0..sroa_idx7, i64 31, i1 false)
  br label %_RNvXs3_NtCseqDwI8vvjGQ_10serde_json5valueNtB5_5ValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.g:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.03.028, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1246
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aa)
          to label %.noexc unwind label %bb.k, !inline_history !1247

.noexc:                                           ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.9.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1246
  br label %_RNvXs3_NtCseqDwI8vvjGQ_10serde_json5valueNtB5_5ValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.h:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.03.028, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1246
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ab)
          to label %.noexc1 unwind label %bb.k, !inline_history !1247

.noexc1:                                          ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.9.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1246
  br label %_RNvXs3_NtCseqDwI8vvjGQ_10serde_json5valueNtB5_5ValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.i:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.03.028, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1246
  invoke void @_RNvXs0_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ac)
          to label %.noexc2 unwind label %bb.k, !inline_history !1247

.noexc2:                                          ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.9.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1246
  br label %_RNvXs3_NtCseqDwI8vvjGQ_10serde_json5valueNtB5_5ValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

_RNvXs3_NtCseqDwI8vvjGQ_10serde_json5valueNtB5_5ValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit: ; preds = %.noexc2, %.noexc1, %.noexc, %bb.f, %bb.e, %bb.d
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %.sroa.7.026 ; 2 uses
  store i8 %i.z, ptr %i.ad, align 8, !noalias !1248
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.416.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.9, i64 31, i1 false)
  %i.ae = icmp eq i64 %i.v, 0
  br i1 %i.ae, label %_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCseqDwI8vvjGQ_10serde_json5value5ValueNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsfY7SmN0bPrO_14deltalake_test.exit, label %bb.c

bb.j:                                             ; preds = %bb.k
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #15, !noalias !1248, !inline_history !1249
  unreachable

bb.k:                                             ; preds = %bb.g, %bb.h, %bb.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.026, ptr %i.s, align 8, !noalias !1248
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef align 8 dereferenceable(24) %i.e) #14
          to label %bb.l unwind label %bb.j, !noalias !1248, !inline_history !1249

bb.l:                                             ; preds = %bb.k
  resume { ptr, i32 } %lpad.loopexit

_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCseqDwI8vvjGQ_10serde_json5value5ValueNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %_RNvXs3_NtCseqDwI8vvjGQ_10serde_json5valueNtB5_5ValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit, %bb.c, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfY7SmN0bPrO_14deltalake_test.exit
  store i64 %i.i, ptr %i.s, align 8, !noalias !1237
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !1250
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1237
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtCs2EMQEx3u6w6_4diff6ResultcEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtB7_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !6 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSINtCsbpG6u9KFjWn_8indexmap6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECsfY7SmN0bPrO_14deltalake_test.exit, label %.lr.ph

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCsbpG6u9KFjWn_8indexmap6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test.exit.i
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSINtCsbpG6u9KFjWn_8indexmap6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECsfY7SmN0bPrO_14deltalake_test.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCsbpG6u9KFjWn_8indexmap6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECsfY7SmN0bPrO_14deltalake_test.exit
  %.sroa.0.0.i13 = phi i64 [ %i.h, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCsbpG6u9KFjWn_8indexmap6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECsfY7SmN0bPrO_14deltalake_test.exit ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [128 x i8], ptr %i.b, i64 %.sroa.0.0.i13 ; 3 uses
  %i.h = add i64 %.sroa.0.0.i13, 1                ; 4 uses
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.g)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test.exit.i unwind label %bb.b, !inline_history !1251

bb.b:                                             ; preds = %.lr.ph
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef align 8 dereferenceable(96) %i.j) #20
          to label %.body unwind label %bb.c, !inline_history !1251

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test.exit.i: ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef align 8 dereferenceable(96) %i.k) #21
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCsbpG6u9KFjWn_8indexmap6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECsfY7SmN0bPrO_14deltalake_test.exit unwind label %bb.e, !inline_history !1251

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #15, !inline_history !1251
end_hunk_0
begin_hunk_1_@llvm.umin.i64
!1034 = !{!1035, !1037, !1039, !1020}
!1035 = distinct !{!1035, !1036, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1036 = distinct !{!1036, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test"}
!1037 = distinct !{!1037, !1038, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1038 = distinct !{!1038, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECsfY7SmN0bPrO_14deltalake_test"}
!1039 = distinct !{!1039, !1040, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1040 = distinct !{!1040, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEECsfY7SmN0bPrO_14deltalake_test"}
!1041 = !{!1042}
!1042 = distinct !{!1042, !1043, !"_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecTaINtNtB6_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEEINtB2_10SpecExtendBR_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map9FilterMapINtNtNtB2p_5slice4iter4IterINtNtB2p_6option6OptionBR_EENCINvNvMs_NtB1e_6fieldsNtB4l_6Fields17try_filter_leaves12filter_fieldNCIB4g_NCINvB4i_13filter_leavesNCNvMs2_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_readerINtNtB5X_12arrow_reader18ArrowReaderBuilderINtB5V_11AsyncReaderNtNtB5V_5store19ParquetObjectReaderEE5builds_0E0E0Es1_0EE11spec_extendCsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1043 = distinct !{!1043, !"_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB4_3VecTaINtNtB6_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEEINtB2_10SpecExtendBR_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map9FilterMapINtNtNtB2p_5slice4iter4IterINtNtB2p_6option6OptionBR_EENCINvNvMs_NtB1e_6fieldsNtB4l_6Fields17try_filter_leaves12filter_fieldNCIB4g_NCINvB4i_13filter_leavesNCNvMs2_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_readerINtNtB5X_12arrow_reader18ArrowReaderBuilderINtB5V_11AsyncReaderNtNtB5V_5store19ParquetObjectReaderEE5builds_0E0E0Es1_0EE11spec_extendCsfY7SmN0bPrO_14deltalake_test"}
!1044 = !{!1045}
!1045 = distinct !{!1045, !1046, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecTaINtNtB8_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEE16extend_desugaredINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map9FilterMapINtNtNtB2b_5slice4iter4IterINtNtB2b_6option6OptionBG_EENCINvNvMs_NtB13_6fieldsNtB47_6Fields17try_filter_leaves12filter_fieldNCIB42_NCINvB44_13filter_leavesNCNvMs2_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_readerINtNtB5J_12arrow_reader18ArrowReaderBuilderINtB5H_11AsyncReaderNtNtB5H_5store19ParquetObjectReaderEE5builds_0E0E0Es1_0EECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1046 = distinct !{!1046, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecTaINtNtB8_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEE16extend_desugaredINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map9FilterMapINtNtNtB2b_5slice4iter4IterINtNtB2b_6option6OptionBG_EENCINvNvMs_NtB13_6fieldsNtB47_6Fields17try_filter_leaves12filter_fieldNCIB42_NCINvB44_13filter_leavesNCNvMs2_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_readerINtNtB5J_12arrow_reader18ArrowReaderBuilderINtB5H_11AsyncReaderNtNtB5H_5store19ParquetObjectReaderEE5builds_0E0E0Es1_0EECsfY7SmN0bPrO_14deltalake_test"}
!1047 = !{!1042, !1020}
!1048 = !{!1045, !1042, !1020}
!1049 = !{!1050}
!1050 = distinct !{!1050, !1051, !"_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEEENCINvNvMs_NtB2A_6fieldsNtB3s_6Fields17try_filter_leaves12filter_fieldNCIB3n_NCINvB3p_13filter_leavesNCNvMs2_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_readerINtNtB54_12arrow_reader18ArrowReaderBuilderINtB52_11AsyncReaderNtNtB52_5store19ParquetObjectReaderEE5builds_0E0E0Es1_0ENtNtNtB9_6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1051 = distinct !{!1051, !"_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEEENCINvNvMs_NtB2A_6fieldsNtB3s_6Fields17try_filter_leaves12filter_fieldNCIB3n_NCINvB3p_13filter_leavesNCNvMs2_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_readerINtNtB54_12arrow_reader18ArrowReaderBuilderINtB52_11AsyncReaderNtNtB52_5store19ParquetObjectReaderEE5builds_0E0E0Es1_0ENtNtNtB9_6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test"}
!1052 = !{!1053}
!1053 = distinct !{!1053, !1054, !"_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterINtNtBb_6option6OptionTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEEENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapB1c_QNCINvNvMs_NtB1Q_6fieldsNtB3B_6Fields17try_filter_leaves12filter_fieldNCIB3w_NCINvB3y_13filter_leavesNCNvMs2_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_readerINtNtB5d_12arrow_reader18ArrowReaderBuilderINtB5b_11AsyncReaderNtNtB5b_5store19ParquetObjectReaderEE5builds_0E0E0Es1_0ECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1054 = distinct !{!1054, !"_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterINtNtBb_6option6OptionTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEEENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapB1c_QNCINvNvMs_NtB1Q_6fieldsNtB3B_6Fields17try_filter_leaves12filter_fieldNCIB3w_NCINvB3y_13filter_leavesNCNvMs2_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_readerINtNtB5d_12arrow_reader18ArrowReaderBuilderINtB5b_11AsyncReaderNtNtB5b_5store19ParquetObjectReaderEE5builds_0E0E0Es1_0ECsfY7SmN0bPrO_14deltalake_test"}
!1055 = !{!1050, !1045, !1042, !1020}
!1056 = !{!1053, !1057, !1050, !1045, !1042, !1020}
!1057 = distinct !{!1057, !1054, !"_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterINtNtBb_6option6OptionTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEEENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapB1c_QNCINvNvMs_NtB1Q_6fieldsNtB3B_6Fields17try_filter_leaves12filter_fieldNCIB3w_NCINvB3y_13filter_leavesNCNvMs2_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_readerINtNtB5d_12arrow_reader18ArrowReaderBuilderINtB5b_11AsyncReaderNtNtB5b_5store19ParquetObjectReaderEE5builds_0E0E0Es1_0ECsfY7SmN0bPrO_14deltalake_test: argument 1"}
!1058 = !{!1053, !1050}
!1059 = !{!1057, !1045, !1042, !1020}
!1060 = !{!1045, !1042}
!1061 = !{!1062, !1064, !1066, !1020}
!1062 = distinct !{!1062, !1063, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1063 = distinct !{!1063, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test"}
!1064 = distinct !{!1064, !1065, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1065 = distinct !{!1065, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECsfY7SmN0bPrO_14deltalake_test"}
!1066 = distinct !{!1066, !1067, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1067 = distinct !{!1067, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEECsfY7SmN0bPrO_14deltalake_test"}
!1068 = !{!1069}
!1069 = distinct !{!1069, !1070, !"_RNCINvNtNtCs14kWLkQVSKO_14deltalake_core5table7builder16resolve_uri_typeReE0CsfY7SmN0bPrO_14deltalake_test: argument 1"}
!1070 = distinct !{!1070, !"_RNCINvNtNtCs14kWLkQVSKO_14deltalake_core5table7builder16resolve_uri_typeReE0CsfY7SmN0bPrO_14deltalake_test"}
!1071 = !{!1072}
!1072 = distinct !{!1072, !1070, !"_RNCINvNtNtCs14kWLkQVSKO_14deltalake_core5table7builder16resolve_uri_typeReE0CsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1073 = !{!1072, !1069}
!1074 = !{!1075, !1077, !1079}
!1075 = distinct !{!1075, !1076, !"_RNvXs8_NtNtCsbvkFyIu7lgC_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!1076 = distinct !{!1076, !"_RNvXs8_NtNtCsbvkFyIu7lgC_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!1077 = distinct !{!1077, !1078, !"_RNvXs8_NtNtCsbvkFyIu7lgC_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE5index: argument 0"}
!1078 = distinct !{!1078, !"_RNvXs8_NtNtCsbvkFyIu7lgC_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE5index"}
!1079 = distinct !{!1079, !1080, !"_RNvXsd_Cseo6ZV82fEK1_3urlINtNtNtCsbvkFyIu7lgC_4core3ops5range7RangeTomENtB5_8RangeArg8slice_of: argument 0"}
!1080 = distinct !{!1080, !"_RNvXsd_Cseo6ZV82fEK1_3urlINtNtNtCsbvkFyIu7lgC_4core3ops5range7RangeTomENtB5_8RangeArg8slice_of"}
!1081 = !{!1082}
!1082 = distinct !{!1082, !1083, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref8multiple8RefMultiNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1083 = distinct !{!1083, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref8multiple8RefMultiNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEECsfY7SmN0bPrO_14deltalake_test"}
!1084 = !{!1085}
!1085 = distinct !{!1085, !1086, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtB28_4util11SharedValueIBH_DNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEEEEECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1086 = distinct !{!1086, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtB28_4util11SharedValueIBH_DNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEEEEECsfY7SmN0bPrO_14deltalake_test"}
!1087 = !{!1088}
!1088 = distinct !{!1088, !1089, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtB1A_4util11SharedValueIBx_DNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1089 = distinct !{!1089, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtB1A_4util11SharedValueIBx_DNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test"}
!1090 = !{!1088, !1085, !1082, !1069}
!1091 = !{!1088, !1085, !1082, !1072, !1069}
!1092 = !{!1093}
!1093 = distinct !{!1093, !1094, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref8multiple8RefMultiNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1094 = distinct !{!1094, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref8multiple8RefMultiNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEECsfY7SmN0bPrO_14deltalake_test"}
!1095 = !{!1096}
!1096 = distinct !{!1096, !1097, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtB28_4util11SharedValueIBH_DNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEEEEECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1097 = distinct !{!1097, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtB28_4util11SharedValueIBH_DNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEEEEECsfY7SmN0bPrO_14deltalake_test"}
!1098 = !{!1099}
!1099 = distinct !{!1099, !1100, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtB1A_4util11SharedValueIBx_DNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1100 = distinct !{!1100, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtB1A_4util11SharedValueIBx_DNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test"}
!1101 = !{!1099, !1096, !1093, !1069}
!1102 = !{!1099, !1096, !1093, !1072, !1069}
!1103 = !{!1104}
!1104 = distinct !{!1104, !1105, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtB8_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEEINtB4_10SpecExtendBT_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtNtB37_5slice4iter4IterBT_EEE11spec_extendCsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1105 = distinct !{!1105, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtB8_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEEINtB4_10SpecExtendBT_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtNtB37_5slice4iter4IterBT_EEE11spec_extendCsfY7SmN0bPrO_14deltalake_test"}
!1106 = !{!1107}
!1107 = distinct !{!1107, !1108, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtB8_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtNtB2P_5slice4iter4IterBG_EEECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1108 = distinct !{!1108, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtB8_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtNtB2P_5slice4iter4IterBG_EEECsfY7SmN0bPrO_14deltalake_test"}
!1109 = !{!1107, !1104}
!1110 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!1111 = !{!1112, !1107, !1104}
!1112 = distinct !{!1112, !1113, !"_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtB6_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEE7reserveCsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1113 = distinct !{!1113, !"_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtB6_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEE7reserveCsfY7SmN0bPrO_14deltalake_test"}
!1114 = !{!1115, !1107, !1104}
!1115 = distinct !{!1115, !1116, !"_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtNtBc_5slice4iter4IterINtCsbpG6u9KFjWn_8indexmap6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEEENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsj_NtB1Y_3vecINtB4f_3VecB1n_E14extend_trustedB3_E0ECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1116 = distinct !{!1116, !"_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtNtBc_5slice4iter4IterINtCsbpG6u9KFjWn_8indexmap6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEEENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsj_NtB1Y_3vecINtB4f_3VecB1n_E14extend_trustedB3_E0ECsfY7SmN0bPrO_14deltalake_test"}
!1117 = !{!1115}
!1118 = !{!1119, !1121}
!1119 = distinct !{!1119, !1120, !"_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1120 = distinct !{!1120, !"_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCsfY7SmN0bPrO_14deltalake_test"}
!1121 = distinct !{!1121, !1122, !"_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE15append_elementsCsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1122 = distinct !{!1122, !"_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE15append_elementsCsfY7SmN0bPrO_14deltalake_test"}
!1123 = !{!1121}
!1124 = !{!1125}
!1125 = distinct !{!1125, !1126, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtCsjyY8HP3IvQ6_12object_store10ObjectMetaE14extend_trustedINtNtCsbvkFyIu7lgC_4core6option8IntoIterBG_EECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1126 = distinct !{!1126, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtCsjyY8HP3IvQ6_12object_store10ObjectMetaE14extend_trustedINtNtCsbvkFyIu7lgC_4core6option8IntoIterBG_EECsfY7SmN0bPrO_14deltalake_test"}
!1127 = !{!1128}
!1128 = distinct !{!1128, !1126, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtCsjyY8HP3IvQ6_12object_store10ObjectMetaE14extend_trustedINtNtCsbvkFyIu7lgC_4core6option8IntoIterBG_EECsfY7SmN0bPrO_14deltalake_test: argument 1"}
!1129 = !{!1130, !1125}
!1130 = distinct !{!1130, !1131, !"_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtCsjyY8HP3IvQ6_12object_store10ObjectMetaE7reserveCsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1131 = distinct !{!1131, !"_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtCsjyY8HP3IvQ6_12object_store10ObjectMetaE7reserveCsfY7SmN0bPrO_14deltalake_test"}
!1132 = !{!1125, !1128}
!1133 = !{!1134}
!1134 = distinct !{!1134, !1135, !"_RINvYINtNtCsbvkFyIu7lgC_4core6option8IntoIterNtCsjyY8HP3IvQ6_12object_store10ObjectMetaENtNtNtNtB8_4iter6traits8iterator8Iterator8for_eachNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB2l_3VecBH_E14extend_trustedB3_E0ECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1135 = distinct !{!1135, !"_RINvYINtNtCsbvkFyIu7lgC_4core6option8IntoIterNtCsjyY8HP3IvQ6_12object_store10ObjectMetaENtNtNtNtB8_4iter6traits8iterator8Iterator8for_eachNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB2l_3VecBH_E14extend_trustedB3_E0ECsfY7SmN0bPrO_14deltalake_test"}
!1136 = !{!1137}
!1137 = distinct !{!1137, !1138, !"_RINvYINtNtCsbvkFyIu7lgC_4core6option8IntoIterNtCsjyY8HP3IvQ6_12object_store10ObjectMetaENtNtNtNtB8_4iter6traits8iterator8Iterator4folduNCINvNvB1o_8for_each4callBH_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB2K_3VecBH_E14extend_trustedB3_E0E0ECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1138 = distinct !{!1138, !"_RINvYINtNtCsbvkFyIu7lgC_4core6option8IntoIterNtCsjyY8HP3IvQ6_12object_store10ObjectMetaENtNtNtNtB8_4iter6traits8iterator8Iterator4folduNCINvNvB1o_8for_each4callBH_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB2K_3VecBH_E14extend_trustedB3_E0E0ECsfY7SmN0bPrO_14deltalake_test"}
!1139 = !{!1140}
!1140 = distinct !{!1140, !1141, !"_RNvXsy_NtCsbvkFyIu7lgC_4core6optionINtB5_8IntoIterNtCsjyY8HP3IvQ6_12object_store10ObjectMetaENtNtNtNtB7_4iter6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test: argument 0:pre.rot"}
!1141 = distinct !{!1141, !"_RNvXsy_NtCsbvkFyIu7lgC_4core6optionINtB5_8IntoIterNtCsjyY8HP3IvQ6_12object_store10ObjectMetaENtNtNtNtB7_4iter6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test"}
!1142 = !{!1140, !1143, !1137, !1134}
!1143 = distinct !{!1143, !1141, !"_RNvXsy_NtCsbvkFyIu7lgC_4core6optionINtB5_8IntoIterNtCsjyY8HP3IvQ6_12object_store10ObjectMetaENtNtNtNtB7_4iter6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test: argument 1"}
!1144 = !{!1145, !1146, !1125, !1128}
!1145 = distinct !{!1145, !1138, !"_RINvYINtNtCsbvkFyIu7lgC_4core6option8IntoIterNtCsjyY8HP3IvQ6_12object_store10ObjectMetaENtNtNtNtB8_4iter6traits8iterator8Iterator4folduNCINvNvB1o_8for_each4callBH_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB2K_3VecBH_E14extend_trustedB3_E0E0ECsfY7SmN0bPrO_14deltalake_test: argument 1"}
!1146 = distinct !{!1146, !1135, !"_RINvYINtNtCsbvkFyIu7lgC_4core6option8IntoIterNtCsjyY8HP3IvQ6_12object_store10ObjectMetaENtNtNtNtB8_4iter6traits8iterator8Iterator8for_eachNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB2l_3VecBH_E14extend_trustedB3_E0ECsfY7SmN0bPrO_14deltalake_test: argument 1"}
!1147 = !{!1143, !1137, !1134}
!1148 = !{!1140, !1145, !1146, !1125, !1128}
!1149 = !{!1150, !1152, !1137, !1145, !1134, !1146, !1128}
!1150 = distinct !{!1150, !1151, !"_RNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB8_3VecNtCsjyY8HP3IvQ6_12object_store10ObjectMetaE14extend_trustedINtNtCsbvkFyIu7lgC_4core6option8IntoIterBI_EE0CsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1151 = distinct !{!1151, !"_RNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB8_3VecNtCsjyY8HP3IvQ6_12object_store10ObjectMetaE14extend_trustedINtNtCsbvkFyIu7lgC_4core6option8IntoIterBI_EE0CsfY7SmN0bPrO_14deltalake_test"}
!1152 = distinct !{!1152, !1153, !"_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8for_each4callNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB24_3VecB1f_E14extend_trustedINtNtBe_6option8IntoIterB1f_EE0E0CsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1153 = distinct !{!1153, !"_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8for_each4callNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB24_3VecB1f_E14extend_trustedINtNtBe_6option8IntoIterB1f_EE0E0CsfY7SmN0bPrO_14deltalake_test"}
!1154 = !{!1137, !1145, !1134, !1146, !1128}
!1155 = !{!1156}
!1156 = distinct !{!1156, !1157, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE14extend_trustedINtNtCsbvkFyIu7lgC_4core6option8IntoIterBG_EECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1157 = distinct !{!1157, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE14extend_trustedINtNtCsbvkFyIu7lgC_4core6option8IntoIterBG_EECsfY7SmN0bPrO_14deltalake_test"}
!1158 = !{!1159}
!1159 = distinct !{!1159, !1157, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE14extend_trustedINtNtCsbvkFyIu7lgC_4core6option8IntoIterBG_EECsfY7SmN0bPrO_14deltalake_test: argument 1"}
!1160 = !{!1161, !1156}
!1161 = distinct !{!1161, !1162, !"_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE7reserveCsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1162 = distinct !{!1162, !"_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE7reserveCsfY7SmN0bPrO_14deltalake_test"}
!1163 = !{!1164, !1166, !1168, !1170, !1171, !1173, !1159}
!1164 = distinct !{!1164, !1165, !"_RNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB8_3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE14extend_trustedINtNtCsbvkFyIu7lgC_4core6option8IntoIterBI_EE0CsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1165 = distinct !{!1165, !"_RNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB8_3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE14extend_trustedINtNtCsbvkFyIu7lgC_4core6option8IntoIterBI_EE0CsfY7SmN0bPrO_14deltalake_test"}
!1166 = distinct !{!1166, !1167, !"_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8for_each4callNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB2k_3VecB1f_E14extend_trustedINtNtBe_6option8IntoIterB1f_EE0E0CsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1167 = distinct !{!1167, !"_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8for_each4callNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB2k_3VecB1f_E14extend_trustedINtNtBe_6option8IntoIterB1f_EE0E0CsfY7SmN0bPrO_14deltalake_test"}
!1168 = distinct !{!1168, !1169, !"_RINvYINtNtCsbvkFyIu7lgC_4core6option8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtNtB8_4iter6traits8iterator8Iterator4folduNCINvNvB1E_8for_each4callBH_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB30_3VecBH_E14extend_trustedB3_E0E0ECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1169 = distinct !{!1169, !"_RINvYINtNtCsbvkFyIu7lgC_4core6option8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtNtB8_4iter6traits8iterator8Iterator4folduNCINvNvB1E_8for_each4callBH_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB30_3VecBH_E14extend_trustedB3_E0E0ECsfY7SmN0bPrO_14deltalake_test"}
!1170 = distinct !{!1170, !1169, !"_RINvYINtNtCsbvkFyIu7lgC_4core6option8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtNtB8_4iter6traits8iterator8Iterator4folduNCINvNvB1E_8for_each4callBH_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB30_3VecBH_E14extend_trustedB3_E0E0ECsfY7SmN0bPrO_14deltalake_test: argument 1"}
!1171 = distinct !{!1171, !1172, !"_RINvYINtNtCsbvkFyIu7lgC_4core6option8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtNtB8_4iter6traits8iterator8Iterator8for_eachNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB2B_3VecBH_E14extend_trustedB3_E0ECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1172 = distinct !{!1172, !"_RINvYINtNtCsbvkFyIu7lgC_4core6option8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtNtB8_4iter6traits8iterator8Iterator8for_eachNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB2B_3VecBH_E14extend_trustedB3_E0ECsfY7SmN0bPrO_14deltalake_test"}
!1173 = distinct !{!1173, !1172, !"_RINvYINtNtCsbvkFyIu7lgC_4core6option8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtNtB8_4iter6traits8iterator8Iterator8for_eachNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB2B_3VecBH_E14extend_trustedB3_E0ECsfY7SmN0bPrO_14deltalake_test: argument 1"}
!1174 = !{!1168, !1170, !1171, !1173, !1159}
!1175 = !{!1176}
!1176 = distinct !{!1176, !1177, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewE14extend_trustedINtNtCsbvkFyIu7lgC_4core6option8IntoIterBG_EECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1177 = distinct !{!1177, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewE14extend_trustedINtNtCsbvkFyIu7lgC_4core6option8IntoIterBG_EECsfY7SmN0bPrO_14deltalake_test"}
!1178 = !{!1179}
!1179 = distinct !{!1179, !1177, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewE14extend_trustedINtNtCsbvkFyIu7lgC_4core6option8IntoIterBG_EECsfY7SmN0bPrO_14deltalake_test: argument 1"}
!1180 = !{!1181, !1176}
!1181 = distinct !{!1181, !1182, !"_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewE7reserveCsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1182 = distinct !{!1182, !"_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewE7reserveCsfY7SmN0bPrO_14deltalake_test"}
!1183 = !{!1184, !1186, !1188, !1190, !1191, !1193, !1179}
!1184 = distinct !{!1184, !1185, !"_RNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB8_3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewE14extend_trustedINtNtCsbvkFyIu7lgC_4core6option8IntoIterBI_EE0CsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1185 = distinct !{!1185, !"_RNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB8_3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewE14extend_trustedINtNtCsbvkFyIu7lgC_4core6option8IntoIterBI_EE0CsfY7SmN0bPrO_14deltalake_test"}
!1186 = distinct !{!1186, !1187, !"_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8for_each4callNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB2H_3VecB1f_E14extend_trustedINtNtBe_6option8IntoIterB1f_EE0E0CsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1187 = distinct !{!1187, !"_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8for_each4callNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB2H_3VecB1f_E14extend_trustedINtNtBe_6option8IntoIterB1f_EE0E0CsfY7SmN0bPrO_14deltalake_test"}
!1188 = distinct !{!1188, !1189, !"_RINvYINtNtCsbvkFyIu7lgC_4core6option8IntoIterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewENtNtNtNtB8_4iter6traits8iterator8Iterator4folduNCINvNvB21_8for_each4callBH_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB3n_3VecBH_E14extend_trustedB3_E0E0ECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1189 = distinct !{!1189, !"_RINvYINtNtCsbvkFyIu7lgC_4core6option8IntoIterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewENtNtNtNtB8_4iter6traits8iterator8Iterator4folduNCINvNvB21_8for_each4callBH_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB3n_3VecBH_E14extend_trustedB3_E0E0ECsfY7SmN0bPrO_14deltalake_test"}
!1190 = distinct !{!1190, !1189, !"_RINvYINtNtCsbvkFyIu7lgC_4core6option8IntoIterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewENtNtNtNtB8_4iter6traits8iterator8Iterator4folduNCINvNvB21_8for_each4callBH_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB3n_3VecBH_E14extend_trustedB3_E0E0ECsfY7SmN0bPrO_14deltalake_test: argument 1"}
!1191 = distinct !{!1191, !1192, !"_RINvYINtNtCsbvkFyIu7lgC_4core6option8IntoIterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewENtNtNtNtB8_4iter6traits8iterator8Iterator8for_eachNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB2Y_3VecBH_E14extend_trustedB3_E0ECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1192 = distinct !{!1192, !"_RINvYINtNtCsbvkFyIu7lgC_4core6option8IntoIterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewENtNtNtNtB8_4iter6traits8iterator8Iterator8for_eachNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB2Y_3VecBH_E14extend_trustedB3_E0ECsfY7SmN0bPrO_14deltalake_test"}
!1193 = distinct !{!1193, !1192, !"_RINvYINtNtCsbvkFyIu7lgC_4core6option8IntoIterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewENtNtNtNtB8_4iter6traits8iterator8Iterator8for_eachNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB2Y_3VecBH_E14extend_trustedB3_E0ECsfY7SmN0bPrO_14deltalake_test: argument 1"}
!1194 = !{!1188, !1190, !1191, !1193, !1179}
!1195 = !{!1196}
!1196 = distinct !{!1196, !1197, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstones13TombstoneViewE14extend_trustedINtNtCsbvkFyIu7lgC_4core6option8IntoIterBG_EECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1197 = distinct !{!1197, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstones13TombstoneViewE14extend_trustedINtNtCsbvkFyIu7lgC_4core6option8IntoIterBG_EECsfY7SmN0bPrO_14deltalake_test"}
!1198 = !{!1199}
!1199 = distinct !{!1199, !1197, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstones13TombstoneViewE14extend_trustedINtNtCsbvkFyIu7lgC_4core6option8IntoIterBG_EECsfY7SmN0bPrO_14deltalake_test: argument 1"}
!1200 = !{!1201, !1196}
!1201 = distinct !{!1201, !1202, !"_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstones13TombstoneViewE7reserveCsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1202 = distinct !{!1202, !"_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstones13TombstoneViewE7reserveCsfY7SmN0bPrO_14deltalake_test"}
!1203 = !{!1204, !1206, !1208, !1210, !1211, !1213, !1199}
!1204 = distinct !{!1204, !1205, !"_RNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB8_3VecNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstones13TombstoneViewE14extend_trustedINtNtCsbvkFyIu7lgC_4core6option8IntoIterBI_EE0CsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1205 = distinct !{!1205, !"_RNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB8_3VecNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstones13TombstoneViewE14extend_trustedINtNtCsbvkFyIu7lgC_4core6option8IntoIterBI_EE0CsfY7SmN0bPrO_14deltalake_test"}
!1206 = distinct !{!1206, !1207, !"_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8for_each4callNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstones13TombstoneViewNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB2T_3VecB1f_E14extend_trustedINtNtBe_6option8IntoIterB1f_EE0E0CsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1207 = distinct !{!1207, !"_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8for_each4callNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstones13TombstoneViewNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB2T_3VecB1f_E14extend_trustedINtNtBe_6option8IntoIterB1f_EE0E0CsfY7SmN0bPrO_14deltalake_test"}
!1208 = distinct !{!1208, !1209, !"_RINvYINtNtCsbvkFyIu7lgC_4core6option8IntoIterNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstones13TombstoneViewENtNtNtNtB8_4iter6traits8iterator8Iterator4folduNCINvNvB2d_8for_each4callBH_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB3z_3VecBH_E14extend_trustedB3_E0E0ECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1209 = distinct !{!1209, !"_RINvYINtNtCsbvkFyIu7lgC_4core6option8IntoIterNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstones13TombstoneViewENtNtNtNtB8_4iter6traits8iterator8Iterator4folduNCINvNvB2d_8for_each4callBH_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB3z_3VecBH_E14extend_trustedB3_E0E0ECsfY7SmN0bPrO_14deltalake_test"}
!1210 = distinct !{!1210, !1209, !"_RINvYINtNtCsbvkFyIu7lgC_4core6option8IntoIterNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstones13TombstoneViewENtNtNtNtB8_4iter6traits8iterator8Iterator4folduNCINvNvB2d_8for_each4callBH_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB3z_3VecBH_E14extend_trustedB3_E0E0ECsfY7SmN0bPrO_14deltalake_test: argument 1"}
!1211 = distinct !{!1211, !1212, !"_RINvYINtNtCsbvkFyIu7lgC_4core6option8IntoIterNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstones13TombstoneViewENtNtNtNtB8_4iter6traits8iterator8Iterator8for_eachNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB3a_3VecBH_E14extend_trustedB3_E0ECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1212 = distinct !{!1212, !"_RINvYINtNtCsbvkFyIu7lgC_4core6option8IntoIterNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstones13TombstoneViewENtNtNtNtB8_4iter6traits8iterator8Iterator8for_eachNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB3a_3VecBH_E14extend_trustedB3_E0ECsfY7SmN0bPrO_14deltalake_test"}
!1213 = distinct !{!1213, !1212, !"_RINvYINtNtCsbvkFyIu7lgC_4core6option8IntoIterNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators10tombstones13TombstoneViewENtNtNtNtB8_4iter6traits8iterator8Iterator8for_eachNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB3a_3VecBH_E14extend_trustedB3_E0ECsfY7SmN0bPrO_14deltalake_test: argument 1"}
!1214 = !{!1208, !1210, !1211, !1213, !1199}
!1215 = !{!1216, !1218, !1219, !1221}
!1216 = distinct !{!1216, !1217, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecINtNtB8_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB29_5slice4iter4IterBG_ENCNvNtNtCsfY7SmN0bPrO_14deltalake_test10acceptance4data17sort_record_batch0EEB3r_: argument 0"}
!1217 = distinct !{!1217, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecINtNtB8_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB29_5slice4iter4IterBG_ENCNvNtNtCsfY7SmN0bPrO_14deltalake_test10acceptance4data17sort_record_batch0EEB3r_"}
!1218 = distinct !{!1218, !1217, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecINtNtB8_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB29_5slice4iter4IterBG_ENCNvNtNtCsfY7SmN0bPrO_14deltalake_test10acceptance4data17sort_record_batch0EEB3r_: argument 1"}
!1219 = distinct !{!1219, !1220, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecINtNtB8_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EEINtB4_10SpecExtendBT_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB2r_5slice4iter4IterBT_ENCNvNtNtCsfY7SmN0bPrO_14deltalake_test10acceptance4data17sort_record_batch0EE11spec_extendB3J_: argument 0"}
!1220 = distinct !{!1220, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecINtNtB8_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EEINtB4_10SpecExtendBT_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB2r_5slice4iter4IterBT_ENCNvNtNtCsfY7SmN0bPrO_14deltalake_test10acceptance4data17sort_record_batch0EE11spec_extendB3J_"}
!1221 = distinct !{!1221, !1220, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecINtNtB8_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EEINtB4_10SpecExtendBT_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB2r_5slice4iter4IterBT_ENCNvNtNtCsfY7SmN0bPrO_14deltalake_test10acceptance4data17sort_record_batch0EE11spec_extendB3J_: argument 1"}
!1222 = !{!1223, !1225, !1226, !1228}
!1223 = distinct !{!1223, !1224, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VechE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB17_5slice4iter4IterhENCNvNtB8_3str13replace_ascii0EECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1224 = distinct !{!1224, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VechE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB17_5slice4iter4IterhENCNvNtB8_3str13replace_ascii0EECsfY7SmN0bPrO_14deltalake_test"}
!1225 = distinct !{!1225, !1224, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VechE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB17_5slice4iter4IterhENCNvNtB8_3str13replace_ascii0EECsfY7SmN0bPrO_14deltalake_test: argument 1"}
!1226 = distinct !{!1226, !1227, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VechEINtB4_10SpecExtendhINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1n_5slice4iter4IterhENCNvNtB8_3str13replace_ascii0EE11spec_extendCsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1227 = distinct !{!1227, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VechEINtB4_10SpecExtendhINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1n_5slice4iter4IterhENCNvNtB8_3str13replace_ascii0EE11spec_extendCsfY7SmN0bPrO_14deltalake_test"}
!1228 = distinct !{!1228, !1227, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VechEINtB4_10SpecExtendhINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1n_5slice4iter4IterhENCNvNtB8_3str13replace_ascii0EE11spec_extendCsfY7SmN0bPrO_14deltalake_test: argument 1"}
!1229 = !{!1230}
!1230 = distinct !{!1230, !1231, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangeyENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsfY7SmN0bPrO_14deltalake_test: argument 1"}
!1231 = distinct !{!1231, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangeyENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsfY7SmN0bPrO_14deltalake_test"}
!1232 = !{!1233, !1230}
!1233 = distinct !{!1233, !1231, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangeyENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1234 = !{!1233}
!1235 = distinct !{!1235, !1016, !1017}
!1236 = distinct !{!1236, !1017, !1016}
!1237 = !{!1238, !1240}
!1238 = distinct !{!1238, !1239, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCseqDwI8vvjGQ_10serde_json5value5ValueNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1239 = distinct !{!1239, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCseqDwI8vvjGQ_10serde_json5value5ValueNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsfY7SmN0bPrO_14deltalake_test"}
!1240 = distinct !{!1240, !1239, !"_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtNtCseqDwI8vvjGQ_10serde_json5value5ValueNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsfY7SmN0bPrO_14deltalake_test: argument 1"}
!1241 = !{!1242}
!1242 = distinct !{!1242, !1243, !"_RNvXs3_NtCseqDwI8vvjGQ_10serde_json5valueNtB5_5ValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 1"}
!1243 = distinct !{!1243, !"_RNvXs3_NtCseqDwI8vvjGQ_10serde_json5valueNtB5_5ValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone"}
!1244 = !{!1245, !1238}
!1245 = distinct !{!1245, !1243, !"_RNvXs3_NtCseqDwI8vvjGQ_10serde_json5valueNtB5_5ValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 0"}
!1246 = !{!1245, !1242, !1238}
!1247 = distinct !{null, null}
!1248 = !{!1238}
!1249 = distinct !{null}
!1250 = !{!1240}
!1251 = distinct !{ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCsbpG6u9KFjWn_8indexmap6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECsfY7SmN0bPrO_14deltalake_test, null}
!1252 = distinct !{null}
!1253 = !{!1254}
!1254 = distinct !{!1254, !1255, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1255 = distinct !{!1255, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECsfY7SmN0bPrO_14deltalake_test"}
!1256 = !{!1257}
!1257 = distinct !{!1257, !1258, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1258 = distinct !{!1258, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test"}
!1259 = !{!1257, !1254, !1260}
!1260 = distinct !{!1260, !1261, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1261 = distinct !{!1261, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECsfY7SmN0bPrO_14deltalake_test"}
!1262 = !{!1257, !1254}
!1263 = !{!1264}
!1264 = distinct !{!1264, !1265, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1265 = distinct !{!1265, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECsfY7SmN0bPrO_14deltalake_test"}
!1266 = !{!1267}
!1267 = distinct !{!1267, !1268, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1268 = distinct !{!1268, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test"}
!1269 = !{!1267, !1264, !1260}
!1270 = !{!1267, !1264}
!1271 = !{!1272}
!1272 = distinct !{!1272, !1273, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1273 = distinct !{!1273, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECsfY7SmN0bPrO_14deltalake_test"}
!1274 = !{!1275}
!1275 = distinct !{!1275, !1276, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1276 = distinct !{!1276, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test"}
!1277 = !{!1275, !1272, !1278}
!1278 = distinct !{!1278, !1279, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1279 = distinct !{!1279, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECsfY7SmN0bPrO_14deltalake_test"}
!1280 = !{!1275, !1272}
!1281 = !{!1282}
!1282 = distinct !{!1282, !1283, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1283 = distinct !{!1283, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECsfY7SmN0bPrO_14deltalake_test"}
!1284 = !{!1285}
!1285 = distinct !{!1285, !1286, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1286 = distinct !{!1286, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test"}
!1287 = !{!1285, !1282, !1278}
!1288 = !{!1285, !1282}
!1289 = !{!1290}
!1290 = distinct !{!1290, !1291, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_reader6filter14ArrowPredicateEL_EECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1291 = distinct !{!1291, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_reader6filter14ArrowPredicateEL_EECsfY7SmN0bPrO_14deltalake_test"}
!1292 = !{!1293}
!1293 = distinct !{!1293, !1294, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1294 = distinct !{!1294, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEECsfY7SmN0bPrO_14deltalake_test"}
!1295 = !{!1293, !1296}
!1296 = distinct !{!1296, !1297, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1297 = distinct !{!1297, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEECsfY7SmN0bPrO_14deltalake_test"}
!1298 = !{!1299, !1301, !1293}
!1299 = distinct !{!1299, !1300, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1300 = distinct !{!1300, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test"}
!1301 = distinct !{!1301, !1302, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1302 = distinct !{!1302, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECsfY7SmN0bPrO_14deltalake_test"}
!1303 = !{!1304}
!1304 = distinct !{!1304, !1305, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1305 = distinct !{!1305, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEECsfY7SmN0bPrO_14deltalake_test"}
!1306 = !{!1304, !1296}
!1307 = !{!1308, !1310, !1304}
!1308 = distinct !{!1308, !1309, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1309 = distinct !{!1309, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test"}
!1310 = distinct !{!1310, !1311, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1311 = distinct !{!1311, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECsfY7SmN0bPrO_14deltalake_test"}
!1312 = !{!1313}
!1313 = distinct !{!1313, !1314, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEEECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1314 = distinct !{!1314, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEEECsfY7SmN0bPrO_14deltalake_test"}
!1315 = !{!1313, !1316}
!1316 = distinct !{!1316, !1317, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSINtNtB4_6option6OptionTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEEECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1317 = distinct !{!1317, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSINtNtB4_6option6OptionTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEEECsfY7SmN0bPrO_14deltalake_test"}
!1318 = !{!1319, !1321, !1323, !1313}
!1319 = distinct !{!1319, !1320, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1320 = distinct !{!1320, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test"}
!1321 = distinct !{!1321, !1322, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1322 = distinct !{!1322, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECsfY7SmN0bPrO_14deltalake_test"}
!1323 = distinct !{!1323, !1324, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1324 = distinct !{!1324, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEECsfY7SmN0bPrO_14deltalake_test"}
!1325 = !{!1326}
!1326 = distinct !{!1326, !1327, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEEECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1327 = distinct !{!1327, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEEECsfY7SmN0bPrO_14deltalake_test"}
!1328 = !{!1326, !1316}
!1329 = !{!1330, !1332, !1334, !1326}
!1330 = distinct !{!1330, !1331, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1331 = distinct !{!1331, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test"}
!1332 = distinct !{!1332, !1333, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1333 = distinct !{!1333, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECsfY7SmN0bPrO_14deltalake_test"}
!1334 = distinct !{!1334, !1335, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1335 = distinct !{!1335, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEECsfY7SmN0bPrO_14deltalake_test"}
!1336 = !{!1337, !1339, !1341}
!1337 = distinct !{!1337, !1338, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1338 = distinct !{!1338, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsfY7SmN0bPrO_14deltalake_test"}
!1339 = distinct !{!1339, !1340, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core8protocol14MergePredicateECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1340 = distinct !{!1340, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core8protocol14MergePredicateECsfY7SmN0bPrO_14deltalake_test"}
!1341 = distinct !{!1341, !1342, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSNtNtCs14kWLkQVSKO_14deltalake_core8protocol14MergePredicateECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1342 = distinct !{!1342, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSNtNtCs14kWLkQVSKO_14deltalake_core8protocol14MergePredicateECsfY7SmN0bPrO_14deltalake_test"}
!1343 = !{!1344, !1339, !1341}
!1344 = distinct !{!1344, !1345, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1345 = distinct !{!1345, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsfY7SmN0bPrO_14deltalake_test"}
!1346 = !{!1347}
!1347 = distinct !{!1347, !1348, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1348 = distinct !{!1348, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECsfY7SmN0bPrO_14deltalake_test"}
!1349 = !{!1350}
!1350 = distinct !{!1350, !1351, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1351 = distinct !{!1351, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECsfY7SmN0bPrO_14deltalake_test"}
!1352 = !{!1353}
!1353 = distinct !{!1353, !1354, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1354 = distinct !{!1354, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test"}
!1355 = !{!1353, !1350, !1347, !1356}
!1356 = distinct !{!1356, !1357, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1357 = distinct !{!1357, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECsfY7SmN0bPrO_14deltalake_test"}
!1358 = !{!1353, !1350, !1347}
!1359 = distinct !{null}
!1360 = !{!1361, !1363}
!1361 = distinct !{!1361, !1362, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1362 = distinct !{!1362, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureECsfY7SmN0bPrO_14deltalake_test"}
!1363 = distinct !{!1363, !1364, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1364 = distinct !{!1364, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureECsfY7SmN0bPrO_14deltalake_test"}
!1365 = !{!1366, !1363}
!1366 = distinct !{!1366, !1367, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1367 = distinct !{!1367, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureECsfY7SmN0bPrO_14deltalake_test"}
!1368 = !{!1369}
!1369 = distinct !{!1369, !1370, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseWCzT31uaQ9_11comfy_table3row3RowECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1370 = distinct !{!1370, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseWCzT31uaQ9_11comfy_table3row3RowECsfY7SmN0bPrO_14deltalake_test"}
!1371 = !{!1372}
!1372 = distinct !{!1372, !1373, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCseWCzT31uaQ9_11comfy_table4cell4CellEECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1373 = distinct !{!1373, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCseWCzT31uaQ9_11comfy_table4cell4CellEECsfY7SmN0bPrO_14deltalake_test"}
!1374 = !{!1375}
!1375 = distinct !{!1375, !1376, !"_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCseWCzT31uaQ9_11comfy_table4cell4CellENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1376 = distinct !{!1376, !"_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCseWCzT31uaQ9_11comfy_table4cell4CellENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test"}
!1377 = !{!1375, !1372, !1369, !1378}
!1378 = distinct !{!1378, !1379, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSNtNtCseWCzT31uaQ9_11comfy_table3row3RowECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1379 = distinct !{!1379, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSNtNtCseWCzT31uaQ9_11comfy_table3row3RowECsfY7SmN0bPrO_14deltalake_test"}
!1380 = !{!1381}
!1381 = distinct !{!1381, !1382, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseWCzT31uaQ9_11comfy_table4cell4CellECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1382 = distinct !{!1382, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseWCzT31uaQ9_11comfy_table4cell4CellECsfY7SmN0bPrO_14deltalake_test"}
!1383 = !{!1384}
!1384 = distinct !{!1384, !1385, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1385 = distinct !{!1385, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECsfY7SmN0bPrO_14deltalake_test"}
!1386 = !{!1375, !1372, !1369}
!1387 = !{!1388}
!1388 = distinct !{!1388, !1389, !"_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1389 = distinct !{!1389, !"_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test"}
!1390 = !{!1388, !1384, !1381}
!1391 = !{!1388, !1384, !1381, !1375, !1372, !1369}
!1392 = !{!1393}
!1393 = distinct !{!1393, !1394, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseWCzT31uaQ9_11comfy_table3row3RowECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1394 = distinct !{!1394, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseWCzT31uaQ9_11comfy_table3row3RowECsfY7SmN0bPrO_14deltalake_test"}
!1395 = !{!1396}
!1396 = distinct !{!1396, !1397, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCseWCzT31uaQ9_11comfy_table4cell4CellEECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1397 = distinct !{!1397, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCseWCzT31uaQ9_11comfy_table4cell4CellEECsfY7SmN0bPrO_14deltalake_test"}
!1398 = !{!1399}
!1399 = distinct !{!1399, !1400, !"_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCseWCzT31uaQ9_11comfy_table4cell4CellENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1400 = distinct !{!1400, !"_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCseWCzT31uaQ9_11comfy_table4cell4CellENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test"}
!1401 = !{!1399, !1396, !1393}
!1402 = !{!1403}
!1403 = distinct !{!1403, !1404, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCslhw8ac5C6Cs_9arrow_ord4sort10SortColumnECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1404 = distinct !{!1404, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCslhw8ac5C6Cs_9arrow_ord4sort10SortColumnECsfY7SmN0bPrO_14deltalake_test"}
!1405 = !{!1406}
!1406 = distinct !{!1406, !1407, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1407 = distinct !{!1407, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECsfY7SmN0bPrO_14deltalake_test"}
!1408 = !{!1409}
!1409 = distinct !{!1409, !1410, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1410 = distinct !{!1410, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test"}
!1411 = !{!1409, !1406, !1403, !1412}
!1412 = distinct !{!1412, !1413, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSNtNtCslhw8ac5C6Cs_9arrow_ord4sort10SortColumnECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1413 = distinct !{!1413, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSNtNtCslhw8ac5C6Cs_9arrow_ord4sort10SortColumnECsfY7SmN0bPrO_14deltalake_test"}
!1414 = !{!1409, !1406, !1403}
!1415 = !{!1416}
!1416 = distinct !{!1416, !1417, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCslhw8ac5C6Cs_9arrow_ord4sort10SortColumnECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1417 = distinct !{!1417, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCslhw8ac5C6Cs_9arrow_ord4sort10SortColumnECsfY7SmN0bPrO_14deltalake_test"}
!1418 = !{!1419}
!1419 = distinct !{!1419, !1420, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1420 = distinct !{!1420, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECsfY7SmN0bPrO_14deltalake_test"}
!1421 = !{!1422}
!1422 = distinct !{!1422, !1423, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1423 = distinct !{!1423, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test"}
!1424 = !{!1422, !1419, !1416, !1412}
!1425 = !{!1422, !1419, !1416}
!1426 = !{!1427}
!1427 = distinct !{!1427, !1428, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1428 = distinct !{!1428, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECsfY7SmN0bPrO_14deltalake_test"}
!1429 = !{!1430}
!1430 = distinct !{!1430, !1431, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesEECsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1431 = distinct !{!1431, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesEECsfY7SmN0bPrO_14deltalake_test"}
!1432 = !{!1433}
!1433 = distinct !{!1433, !1434, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test: argument 0"}
!1434 = distinct !{!1434, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test"}
!1435 = !{!1433, !1430, !1427, !1436}
end_hunk_1
