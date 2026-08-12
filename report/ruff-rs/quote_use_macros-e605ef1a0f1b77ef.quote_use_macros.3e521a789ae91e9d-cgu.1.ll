inline.NumInlined: 233
inline.NumDeleted: 135
begin_hunk_0_@_RNvMNtCs4NRVxsYgnAr_4core6optionINtB2_6OptionINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCs5lJmHfxUNUn_16quote_use_macros10use_parser3UseEE6insertB1y_:bb.a
  ret ptr %0

bb.e:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCs5lJmHfxUNUn_16quote_use_macros10use_parser3UseEEEB1O_.exit
  tail call fastcc void @_RNvNvNtCs4NRVxsYgnAr_4core4hint21unreachable_unchecked18precondition_checkCs5lJmHfxUNUn_16quote_use_macros(ptr nonnull align 8 @19) #23
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvMNtCs4NRVxsYgnAr_4core6optionINtB2_6OptionNtCsghEUimwObfx_11proc_macro25GroupE6expectCs5lJmHfxUNUn_16quote_use_macros(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1, ptr %2, i64 %3, ptr align 8 %4) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %1, align 8
  %.not = icmp eq i32 %i.a, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr %2, i64 %3, ptr align 8 %4) #24
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvMNtCs4NRVxsYgnAr_4core6optionINtB2_6OptionNtCsghEUimwObfx_11proc_macro29TokenTreeE6expectCs5lJmHfxUNUn_16quote_use_macros(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1, ptr %2, i64 %3, ptr align 8 %4) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %1, align 8
  %.not = icmp eq i32 %i.a, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr %2, i64 %3, ptr align 8 %4) #24
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvMNtCs4NRVxsYgnAr_4core6optionINtB2_6OptionNtNtCs5lJmHfxUNUn_16quote_use_macros10use_parser14IdentOrPoundedE6expectBL_(ptr nofree writeonly sret([40 x i8]) align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1, ptr %2, i64 %3, ptr align 8 %4) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %1, align 8
  %.not = icmp eq i32 %i.a, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr %2, i64 %3, ptr align 8 %4) #24
  unreachable
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core6optionINtB2_6OptionRNtCsghEUimwObfx_11proc_macro25GroupE7is_someCs5lJmHfxUNUn_16quote_use_macros(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = icmp ne ptr %i.a, null
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden nonnull align 8 ptr @_RNvMNtCs4NRVxsYgnAr_4core6optionINtB2_6OptionRNtNtCs5lJmHfxUNUn_16quote_use_macros10use_parser14IdentOrPoundedE6expectBM_(ptr nofree readnone returned align 8 captures(address_is_null, ret: address, provenance) %0, ptr %1, i64 %2, ptr align 8 %3) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  ret ptr %0

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr %1, i64 %2, ptr align 8 %3) #24
  unreachable
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvMs4_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB5_4IterNtNtCs5lJmHfxUNUn_16quote_use_macros10use_parser14IdentOrPoundedE3newBS_(ptr align 8 %0, i64 %1) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %1
  %i.b = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr %i.a, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvMs4_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB5_4IterNtNtCs5lJmHfxUNUn_16quote_use_macros10use_parser3UseE3newBS_(ptr align 8 %0, i64 %1) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %1
  %i.b = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr %i.a, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsc_CskqTXHgZZ9qE_8smallvecINtB5_8SmallVecANtCsghEUimwObfx_11proc_macro29TokenTreej6_E21reserve_one_uncheckedCs5lJmHfxUNUn_16quote_use_macros(ptr align 8 %0) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [200 x i8], align 8               ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = tail call zeroext i1 @_RNvMsc_CskqTXHgZZ9qE_8smallvecINtB5_8SmallVecANtCsghEUimwObfx_11proc_macro29TokenTreej6_E7spilledCsldds7DwVItY_16proc_macro_utils(ptr align 8 %0), !noalias !16
  %i.e = load i64, ptr %0, align 8, !noalias !16
  %i.f = trunc nuw i64 %i.e to i1                 ; 2 uses
  br i1 %i.d, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_RNvNtCs4NRVxsYgnAr_4core4hint21unreachable_uncheckedCs5lJmHfxUNUn_16quote_use_macros(ptr nonnull align 8 @30) #24, !noalias !16
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = tail call ptr @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3ptr8non_nullINtB5_7NonNullNtCsghEUimwObfx_11proc_macro29TokenTreeE3newCsldds7DwVItY_16proc_macro_utils(ptr nonnull %i.g), !noalias !16
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %bb.e, label %_RNvMs9_CskqTXHgZZ9qE_8smallvecINtB5_12SmallVecDataANtCsghEUimwObfx_11proc_macro29TokenTreej6_E6inlineCs5lJmHfxUNUn_16quote_use_macros.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr nonnull align 8 @29) #24, !noalias !16
  unreachable

_RNvMs9_CskqTXHgZZ9qE_8smallvecINtB5_12SmallVecDataANtCsghEUimwObfx_11proc_macro29TokenTreej6_E6inlineCs5lJmHfxUNUn_16quote_use_macros.exit.i.i: ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.j = load i64, ptr %i.i, align 8, !noalias !16
  %i.k = tail call i64 @_RNvMsc_CskqTXHgZZ9qE_8smallvecINtB5_8SmallVecANtCsghEUimwObfx_11proc_macro29TokenTreej6_E15inline_capacityCsldds7DwVItY_16proc_macro_utils(), !noalias !16 ; 0 uses
  br label %_RNvMsc_CskqTXHgZZ9qE_8smallvecINtB5_8SmallVecANtCsghEUimwObfx_11proc_macro29TokenTreej6_E3lenCs5lJmHfxUNUn_16quote_use_macros.exit

bb.f:                                             ; preds = %bb.a
  br i1 %i.f, label %_RNvMs9_CskqTXHgZZ9qE_8smallvecINtB5_12SmallVecDataANtCsghEUimwObfx_11proc_macro29TokenTreej6_E4heapCs5lJmHfxUNUn_16quote_use_macros.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @_RNvNtCs4NRVxsYgnAr_4core4hint21unreachable_uncheckedCs5lJmHfxUNUn_16quote_use_macros(ptr nonnull align 8 @28) #24, !noalias !16
  unreachable

_RNvMs9_CskqTXHgZZ9qE_8smallvecINtB5_12SmallVecDataANtCsghEUimwObfx_11proc_macro29TokenTreej6_E4heapCs5lJmHfxUNUn_16quote_use_macros.exit.i.i: ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8, !noalias !16
  br label %_RNvMsc_CskqTXHgZZ9qE_8smallvecINtB5_8SmallVecANtCsghEUimwObfx_11proc_macro29TokenTreej6_E3lenCs5lJmHfxUNUn_16quote_use_macros.exit

_RNvMsc_CskqTXHgZZ9qE_8smallvecINtB5_8SmallVecANtCsghEUimwObfx_11proc_macro29TokenTreej6_E3lenCs5lJmHfxUNUn_16quote_use_macros.exit: ; preds = %_RNvMs9_CskqTXHgZZ9qE_8smallvecINtB5_12SmallVecDataANtCsghEUimwObfx_11proc_macro29TokenTreej6_E6inlineCs5lJmHfxUNUn_16quote_use_macros.exit.i.i, %_RNvMs9_CskqTXHgZZ9qE_8smallvecINtB5_12SmallVecDataANtCsghEUimwObfx_11proc_macro29TokenTreej6_E4heapCs5lJmHfxUNUn_16quote_use_macros.exit.i.i
  %.sink2.i.i = phi i64 [ %i.m, %_RNvMs9_CskqTXHgZZ9qE_8smallvecINtB5_12SmallVecDataANtCsghEUimwObfx_11proc_macro29TokenTreej6_E4heapCs5lJmHfxUNUn_16quote_use_macros.exit.i.i ], [ %i.j, %_RNvMs9_CskqTXHgZZ9qE_8smallvecINtB5_12SmallVecDataANtCsghEUimwObfx_11proc_macro29TokenTreej6_E6inlineCs5lJmHfxUNUn_16quote_use_macros.exit.i.i ] ; 3 uses
  %.not = icmp eq i64 %.sink2.i.i, -1
  br i1 %.not, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionjE8and_thenjNvMs9_NtB5_3numj25checked_next_power_of_twoECs5lJmHfxUNUn_16quote_use_macros.exit, label %bb.h

bb.h:                                             ; preds = %_RNvMsc_CskqTXHgZZ9qE_8smallvecINtB5_8SmallVecANtCsghEUimwObfx_11proc_macro29TokenTreej6_E3lenCs5lJmHfxUNUn_16quote_use_macros.exit
  %i.n = icmp eq i64 %.sink2.i.i, 0
  %i.o = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink2.i.i, i1 true)
  %i.p = lshr i64 -1, %i.o
  %.sroa.01.0.i.i.i = select i1 %i.n, i64 0, i64 %i.p ; 2 uses
  %i.q = icmp ne i64 %.sroa.01.0.i.i.i, -1
  %i.r = add i64 %.sroa.01.0.i.i.i, 1
  %.sroa.0.0.i.i.i = zext i1 %i.q to i64
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionjE8and_thenjNvMs9_NtB5_3numj25checked_next_power_of_twoECs5lJmHfxUNUn_16quote_use_macros.exit

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionjE8and_thenjNvMs9_NtB5_3numj25checked_next_power_of_twoECs5lJmHfxUNUn_16quote_use_macros.exit: ; preds = %_RNvMsc_CskqTXHgZZ9qE_8smallvecINtB5_8SmallVecANtCsghEUimwObfx_11proc_macro29TokenTreej6_E3lenCs5lJmHfxUNUn_16quote_use_macros.exit, %bb.h
  %.sroa.02.0.i = phi i64 [ %.sroa.0.0.i.i.i, %bb.h ], [ 0, %_RNvMsc_CskqTXHgZZ9qE_8smallvecINtB5_8SmallVecANtCsghEUimwObfx_11proc_macro29TokenTreej6_E3lenCs5lJmHfxUNUn_16quote_use_macros.exit ]
  %.sroa.3.0.i = phi i64 [ %i.r, %bb.h ], [ undef, %_RNvMsc_CskqTXHgZZ9qE_8smallvecINtB5_8SmallVecANtCsghEUimwObfx_11proc_macro29TokenTreej6_E3lenCs5lJmHfxUNUn_16quote_use_macros.exit ]
  %i.s = tail call i64 @_RNvMNtCs4NRVxsYgnAr_4core6optionINtB2_6OptionjE6expectCsldds7DwVItY_16proc_macro_utils(i64 %.sroa.02.0.i, i64 %.sroa.3.0.i, ptr nonnull @2, i64 17, ptr nonnull align 8 @31) ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.t = tail call zeroext i1 @_RNvMsc_CskqTXHgZZ9qE_8smallvecINtB5_8SmallVecANtCsghEUimwObfx_11proc_macro29TokenTreej6_E7spilledCsldds7DwVItY_16proc_macro_utils(ptr nonnull align 8 %0) ; 2 uses
  call void @_RNvMsc_CskqTXHgZZ9qE_8smallvecINtB5_8SmallVecANtCsghEUimwObfx_11proc_macro29TokenTreej6_E10triple_mutCsldds7DwVItY_16proc_macro_utils(ptr nonnull sret([24 x i8]) align 8 %i.c, ptr nonnull align 8 %0)
  %i.u = load ptr, ptr %i.c, align 8              ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = load i64, ptr %i.w, align 8              ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.z = load i64, ptr %i.y, align 8              ; 5 uses
  %.not.i = icmp ult i64 %i.s, %i.x
  br i1 %.not.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionjE8and_thenjNvMs9_NtB5_3numj25checked_next_power_of_twoECs5lJmHfxUNUn_16quote_use_macros.exit
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr nonnull @36, i64 32, ptr nonnull align 8 @37) #24
  unreachable

bb.j:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionjE8and_thenjNvMs9_NtB5_3numj25checked_next_power_of_twoECs5lJmHfxUNUn_16quote_use_macros.exit
  %i.aa = call i64 @_RNvMsc_CskqTXHgZZ9qE_8smallvecINtB5_8SmallVecANtCsghEUimwObfx_11proc_macro29TokenTreej6_E15inline_capacityCsldds7DwVItY_16proc_macro_utils()
  %.not5.i = icmp ugt i64 %i.s, %i.aa
  br i1 %.not5.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %.not6.i = icmp eq i64 %i.s, %i.z
  br i1 %.not6.i, label %_RINvCskqTXHgZZ9qE_8smallvec10infallibleuECs5lJmHfxUNUn_16quote_use_macros.exit, label %bb.m

bb.l:                                             ; preds = %bb.j
  br i1 %i.t, label %bb.r, label %_RINvCskqTXHgZZ9qE_8smallvec10infallibleuECs5lJmHfxUNUn_16quote_use_macros.exit

bb.m:                                             ; preds = %bb.k
  %i.ab = icmp ugt i64 %i.s, 576460752303423487
  %i.ac = shl i64 %i.s, 5                         ; 4 uses
  %i.ad = icmp ugt i64 %i.ac, 9223372036854775800
  %or.cond = or i1 %i.ab, %i.ad
  br i1 %or.cond, label %bb.t, label %bb.n

bb.n:                                             ; preds = %bb.m
  br i1 %i.t, label %bb.o, label %_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultINtNtNtB7_3ptr8non_null7NonNullhENtCskqTXHgZZ9qE_8smallvec18CollectionAllocErrENtNtNtB7_3ops9try_trait3Try6branchCs5lJmHfxUNUn_16quote_use_macros.exit.i

bb.o:                                             ; preds = %bb.n
  %i.ae = icmp ugt i64 %i.z, 288230376151711743
  br i1 %i.ae, label %bb.t, label %_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultINtNtNtB7_3ptr8non_null7NonNullhENtCskqTXHgZZ9qE_8smallvec18CollectionAllocErrENtNtNtB7_3ops9try_trait3Try6branchCs5lJmHfxUNUn_16quote_use_macros.exit32.i

_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultINtNtNtB7_3ptr8non_null7NonNullhENtCskqTXHgZZ9qE_8smallvec18CollectionAllocErrENtNtNtB7_3ops9try_trait3Try6branchCs5lJmHfxUNUn_16quote_use_macros.exit.i: ; preds = %bb.n
  %i.af = call ptr @_RNvNtCscdodAO9FK5_5alloc5alloc5allocCs5lJmHfxUNUn_16quote_use_macros(i64 8, i64 %i.ac) ; 3 uses
  %.not.i.not.i = icmp eq ptr %i.af, null
  br i1 %.not.i.not.i, label %bb.s, label %bb.q

_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultINtNtNtB7_3ptr8non_null7NonNullhENtCskqTXHgZZ9qE_8smallvec18CollectionAllocErrENtNtNtB7_3ops9try_trait3Try6branchCs5lJmHfxUNUn_16quote_use_macros.exit32.i: ; preds = %bb.o
  %1 = shl nuw nsw i64 %i.z, 5
  %i.ag = call ptr @_RNvNtCscdodAO9FK5_5alloc5alloc7reallocCs5lJmHfxUNUn_16quote_use_macros(ptr %i.u, i64 8, i64 %1, i64 %i.ac) ; 2 uses
  %.not.i27.not.i = icmp eq ptr %i.ag, null
  br i1 %.not.i27.not.i, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.q, %_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultINtNtNtB7_3ptr8non_null7NonNullhENtCskqTXHgZZ9qE_8smallvec18CollectionAllocErrENtNtNtB7_3ops9try_trait3Try6branchCs5lJmHfxUNUn_16quote_use_macros.exit32.i
  %.sroa.01.0.i = phi ptr [ %i.af, %bb.q ], [ %i.ag, %_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultINtNtNtB7_3ptr8non_null7NonNullhENtCskqTXHgZZ9qE_8smallvec18CollectionAllocErrENtNtNtB7_3ops9try_trait3Try6branchCs5lJmHfxUNUn_16quote_use_macros.exit32.i ]
  store i64 1, ptr %0, align 8
  %.sroa.256.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.x, ptr %.sroa.256.0..sroa_idx.i, align 8
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.01.0.i, ptr %.sroa.3.0..sroa_idx.i, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i64 %i.s, ptr %i.ah, align 8
  br label %_RINvCskqTXHgZZ9qE_8smallvec10infallibleuECs5lJmHfxUNUn_16quote_use_macros.exit

bb.q:                                             ; preds = %_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultINtNtNtB7_3ptr8non_null7NonNullhENtCskqTXHgZZ9qE_8smallvec18CollectionAllocErrENtNtNtB7_3ops9try_trait3Try6branchCs5lJmHfxUNUn_16quote_use_macros.exit.i
  %i.ai = shl i64 %i.x, 5
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.af, ptr align 8 %i.u, i64 %i.ai, i1 false)
  br label %bb.p

bb.r:                                             ; preds = %bb.l
  call void @_RNvMs9_CskqTXHgZZ9qE_8smallvecINtB5_12SmallVecDataANtCsghEUimwObfx_11proc_macro29TokenTreej6_E5emptyCsldds7DwVItY_16proc_macro_utils(ptr nonnull sret([200 x i8]) align 8 %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(200) %i.b, i64 200, i1 false)
  %i.aj = call ptr @_RNvMs9_CskqTXHgZZ9qE_8smallvecINtB5_12SmallVecDataANtCsghEUimwObfx_11proc_macro29TokenTreej6_E10inline_mutCsldds7DwVItY_16proc_macro_utils(ptr nonnull align 8 %0)
  %i.ak = shl i64 %i.x, 5
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.aj, ptr align 8 %i.u, i64 %i.ak, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i64 %i.x, ptr %i.al, align 8
  %i.am = icmp ugt i64 %i.z, 576460752303423487
  %i.an = shl i64 %i.z, 5                         ; 3 uses
  %i.ao = icmp ugt i64 %i.an, 9223372036854775800
  %or.cond.i.i = or i1 %i.am, %i.ao
  br i1 %or.cond.i.i, label %_RINvCskqTXHgZZ9qE_8smallvec12layout_arrayNtCsghEUimwObfx_11proc_macro29TokenTreeECs5lJmHfxUNUn_16quote_use_macros.exit.thread5.i.i, label %_RINvCskqTXHgZZ9qE_8smallvec10deallocateNtCsghEUimwObfx_11proc_macro29TokenTreeECs5lJmHfxUNUn_16quote_use_macros.exit.i

_RINvCskqTXHgZZ9qE_8smallvec12layout_arrayNtCsghEUimwObfx_11proc_macro29TokenTreeECs5lJmHfxUNUn_16quote_use_macros.exit.thread5.i.i: ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.an, ptr %i.ap, align 8
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr nonnull @22, i64 43, ptr nonnull %i.a, ptr nonnull align 8 @21, ptr nonnull align 8 @1) #24
  unreachable

_RINvCskqTXHgZZ9qE_8smallvec10deallocateNtCsghEUimwObfx_11proc_macro29TokenTreeECs5lJmHfxUNUn_16quote_use_macros.exit.i: ; preds = %bb.r
  call void @_RNvNtCscdodAO9FK5_5alloc5alloc7deallocCs5lJmHfxUNUn_16quote_use_macros(ptr %i.u, i64 8, i64 %i.an)
  br label %_RINvCskqTXHgZZ9qE_8smallvec10infallibleuECs5lJmHfxUNUn_16quote_use_macros.exit

bb.s:                                             ; preds = %_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultINtNtNtB7_3ptr8non_null7NonNullhENtCskqTXHgZZ9qE_8smallvec18CollectionAllocErrENtNtNtB7_3ops9try_trait3Try6branchCs5lJmHfxUNUn_16quote_use_macros.exit32.i, %_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultINtNtNtB7_3ptr8non_null7NonNullhENtCskqTXHgZZ9qE_8smallvec18CollectionAllocErrENtNtNtB7_3ops9try_trait3Try6branchCs5lJmHfxUNUn_16quote_use_macros.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 8, i64 %i.ac) #24
  unreachable

bb.t:                                             ; preds = %bb.m, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr nonnull @2, i64 17, ptr nonnull align 8 @3) #24
  unreachable

_RINvCskqTXHgZZ9qE_8smallvec10infallibleuECs5lJmHfxUNUn_16quote_use_macros.exit: ; preds = %bb.k, %bb.l, %_RINvCskqTXHgZZ9qE_8smallvec10deallocateNtCsghEUimwObfx_11proc_macro29TokenTreeECs5lJmHfxUNUn_16quote_use_macros.exit.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden i64 @_RNvMsc_CskqTXHgZZ9qE_8smallvecINtB5_8SmallVecANtCsghEUimwObfx_11proc_macro29TokenTreej6_E3lenCs5lJmHfxUNUn_16quote_use_macros(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i1 @_RNvMsc_CskqTXHgZZ9qE_8smallvecINtB5_8SmallVecANtCsghEUimwObfx_11proc_macro29TokenTreej6_E7spilledCsldds7DwVItY_16proc_macro_utils(ptr align 8 %0), !noalias !19
  %i.b = load i64, ptr %0, align 8, !noalias !19
  %i.c = trunc nuw i64 %i.b to i1                 ; 2 uses
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_RNvNtCs4NRVxsYgnAr_4core4hint21unreachable_uncheckedCs5lJmHfxUNUn_16quote_use_macros(ptr nonnull align 8 @30) #24, !noalias !19
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = tail call ptr @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3ptr8non_nullINtB5_7NonNullNtCsghEUimwObfx_11proc_macro29TokenTreeE3newCsldds7DwVItY_16proc_macro_utils(ptr nonnull %i.d), !noalias !19
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %bb.e, label %_RNvMs9_CskqTXHgZZ9qE_8smallvecINtB5_12SmallVecDataANtCsghEUimwObfx_11proc_macro29TokenTreej6_E6inlineCs5lJmHfxUNUn_16quote_use_macros.exit.i

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr nonnull align 8 @29) #24, !noalias !19
  unreachable

_RNvMs9_CskqTXHgZZ9qE_8smallvecINtB5_12SmallVecDataANtCsghEUimwObfx_11proc_macro29TokenTreej6_E6inlineCs5lJmHfxUNUn_16quote_use_macros.exit.i: ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.g = load i64, ptr %i.f, align 8, !noalias !19
  %i.h = tail call i64 @_RNvMsc_CskqTXHgZZ9qE_8smallvecINtB5_8SmallVecANtCsghEUimwObfx_11proc_macro29TokenTreej6_E15inline_capacityCsldds7DwVItY_16proc_macro_utils(), !noalias !19 ; 0 uses
  br label %_RNvMsc_CskqTXHgZZ9qE_8smallvecINtB5_8SmallVecANtCsghEUimwObfx_11proc_macro29TokenTreej6_E6tripleCs5lJmHfxUNUn_16quote_use_macros.exit

bb.f:                                             ; preds = %bb.a
  br i1 %i.c, label %_RNvMs9_CskqTXHgZZ9qE_8smallvecINtB5_12SmallVecDataANtCsghEUimwObfx_11proc_macro29TokenTreej6_E4heapCs5lJmHfxUNUn_16quote_use_macros.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @_RNvNtCs4NRVxsYgnAr_4core4hint21unreachable_uncheckedCs5lJmHfxUNUn_16quote_use_macros(ptr nonnull align 8 @28) #24, !noalias !19
  unreachable

_RNvMs9_CskqTXHgZZ9qE_8smallvecINtB5_12SmallVecDataANtCsghEUimwObfx_11proc_macro29TokenTreej6_E4heapCs5lJmHfxUNUn_16quote_use_macros.exit.i: ; preds = %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !noalias !19
  br label %_RNvMsc_CskqTXHgZZ9qE_8smallvecINtB5_8SmallVecANtCsghEUimwObfx_11proc_macro29TokenTreej6_E6tripleCs5lJmHfxUNUn_16quote_use_macros.exit

_RNvMsc_CskqTXHgZZ9qE_8smallvecINtB5_8SmallVecANtCsghEUimwObfx_11proc_macro29TokenTreej6_E6tripleCs5lJmHfxUNUn_16quote_use_macros.exit: ; preds = %_RNvMs9_CskqTXHgZZ9qE_8smallvecINtB5_12SmallVecDataANtCsghEUimwObfx_11proc_macro29TokenTreej6_E6inlineCs5lJmHfxUNUn_16quote_use_macros.exit.i, %_RNvMs9_CskqTXHgZZ9qE_8smallvecINtB5_12SmallVecDataANtCsghEUimwObfx_11proc_macro29TokenTreej6_E4heapCs5lJmHfxUNUn_16quote_use_macros.exit.i
  %.sink2.i = phi i64 [ %i.j, %_RNvMs9_CskqTXHgZZ9qE_8smallvecINtB5_12SmallVecDataANtCsghEUimwObfx_11proc_macro29TokenTreej6_E4heapCs5lJmHfxUNUn_16quote_use_macros.exit.i ], [ %i.g, %_RNvMs9_CskqTXHgZZ9qE_8smallvecINtB5_12SmallVecDataANtCsghEUimwObfx_11proc_macro29TokenTreej6_E6inlineCs5lJmHfxUNUn_16quote_use_macros.exit.i ]
  ret i64 %.sink2.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvMsc_CskqTXHgZZ9qE_8smallvecINtB5_8SmallVecANtCsghEUimwObfx_11proc_macro29TokenTreej6_E4pushCs5lJmHfxUNUn_16quote_use_macros(ptr align 8 %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  invoke void @_RNvMsc_CskqTXHgZZ9qE_8smallvecINtB5_8SmallVecANtCsghEUimwObfx_11proc_macro29TokenTreej6_E10triple_mutCsldds7DwVItY_16proc_macro_utils(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr align 8 %0)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load i64, ptr %i.f, align 8
  %i.h = load i64, ptr %i.e, align 8              ; 2 uses
  %i.i = icmp eq i64 %i.h, %i.g
  br i1 %i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  invoke fastcc void @_RNvMsc_CskqTXHgZZ9qE_8smallvecINtB5_8SmallVecANtCsghEUimwObfx_11proc_macro29TokenTreej6_E21reserve_one_uncheckedCs5lJmHfxUNUn_16quote_use_macros(ptr align 8 %0)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.j = invoke { ptr, ptr } @_RNvMs9_CskqTXHgZZ9qE_8smallvecINtB5_12SmallVecDataANtCsghEUimwObfx_11proc_macro29TokenTreej6_E8heap_mutCsldds7DwVItY_16proc_macro_utils(ptr align 8 %0)
          to label %bb.e unwind label %bb.h       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.k = extractvalue { ptr, ptr } %i.j, 0
  %i.l = extractvalue { ptr, ptr } %i.j, 1        ; 2 uses
  %.pre = load i64, ptr %i.l, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %i.m = phi i64 [ %.pre, %bb.e ], [ %i.h, %bb.b ]
  %.sroa.01.0 = phi ptr [ %i.l, %bb.e ], [ %i.e, %bb.b ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %i.k, %bb.e ], [ %i.c, %bb.b ]
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0, i64 %i.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @_RINvNtCs4NRVxsYgnAr_4core3ptr5writeNtCsghEUimwObfx_11proc_macro29TokenTreeECs5lJmHfxUNUn_16quote_use_macros(ptr %i.n, ptr nonnull align 8 %i.a, ptr nonnull align 8 @32)
  %i.o = load i64, ptr %.sroa.01.0, align 8
  %i.p = add i64 %i.o, 1
  store i64 %i.p, ptr %.sroa.01.0, align 8
  ret void

bb.g:                                             ; preds = %bb.h
  resume { ptr, i32 } %lpad.thr_comm

bb.h:                                             ; preds = %bb.a, %bb.c, %bb.d
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsghEUimwObfx_11proc_macro29TokenTreeEBD_(ptr align 8 %1) #21
          to label %bb.g unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #22
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsc_CskqTXHgZZ9qE_8smallvecINtB5_8SmallVecANtCsghEUimwObfx_11proc_macro29TokenTreej6_E6removeCs5lJmHfxUNUn_16quote_use_macros(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) %0, ptr align 8 %1, i64 %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 3 uses
  call void @_RNvMsc_CskqTXHgZZ9qE_8smallvecINtB5_8SmallVecANtCsghEUimwObfx_11proc_macro29TokenTreej6_E10triple_mutCsldds7DwVItY_16proc_macro_utils(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr align 8 %1)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = load i64, ptr %i.d, align 8              ; 3 uses
  %i.f = icmp ult i64 %2, %i.e
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr nonnull @33, i64 29, ptr nonnull align 8 @34) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.b, align 8
  %i.h = add i64 %i.e, -1
  store i64 %i.h, ptr %i.d, align 8
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %i.g, i64 %2 ; 3 uses
  call void @_RINvNtCs4NRVxsYgnAr_4core3ptr4readNtCsghEUimwObfx_11proc_macro29TokenTreeECs5lJmHfxUNUn_16quote_use_macros(ptr nonnull sret([32 x i8]) align 8 %i.a, ptr %i.i, ptr nonnull align 8 @35)
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = xor i64 %2, -1
  %i.l = add i64 %i.e, %i.k
  %i.m = shl i64 %i.l, 5
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr nonnull align 8 %i.j, i64 %i.m, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  ret void
end_hunk_0
