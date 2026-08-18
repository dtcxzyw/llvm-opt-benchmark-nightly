inline.NumInlined: 1622
inline.NumDeleted: 397
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXs2_NtNtCsbvkFyIu7lgC_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range7RangeTojEE5indexCshbKHpCRGxgC_16deltalake_derive:bb.a
bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp ult i64 %2, %1
  br i1 %.not.i.i, label %bb.c, label %.split.i.i

.split.i.i:                                       ; preds = %bb.b
  %i.b = icmp eq i64 %2, %1
  br i1 %i.b, label %_RNvXs8_NtNtCsbvkFyIu7lgC_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE5index.exit, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %2
  %i.d = load i8, ptr %i.c, align 1, !alias.scope !4141, !noalias !4146, !noundef !4
  %i.e = icmp sgt i8 %i.d, -65
  br i1 %i.e, label %_RNvXs8_NtNtCsbvkFyIu7lgC_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE5index.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %.split.i.i
  tail call void @_RNvNtCsbvkFyIu7lgC_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, i64 noundef 0, i64 noundef %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #19
  unreachable

_RNvXs8_NtNtCsbvkFyIu7lgC_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE5index.exit: ; preds = %bb.a, %.split.i.i, %bb.c
  %i.f = insertvalue { ptr, i64 } poison, ptr %0, 0
  %i.g = insertvalue { ptr, i64 } %i.f, i64 %2, 1
  ret { ptr, i64 } %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB6_3VecReEINtB4_12SpecFromIterBW_INtNtB6_9into_iter8IntoIterBW_EE9from_iterCshbKHpCRGxgC_16deltalake_derive(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %.not = icmp eq ptr %i.c, %i.e
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8
  %.pre = ptrtoint ptr %i.e to i64
  %.pre67 = sub nuw i64 %.sroa.8.0.copyload, %.pre
  %.pre69 = lshr exact i64 %.pre67, 4
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val52 = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4
  %i.g = ptrtoint ptr %.val52 to i64
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = sub nuw i64 %i.g, %i.h                   ; 2 uses
  %i.j = lshr exact i64 %i.i, 4                   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !4 ; 2 uses
  %i.m = lshr i64 %i.l, 1
  %.not46 = icmp samesign ult i64 %i.j, %i.m
  br i1 %.not46, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  store i64 0, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4148)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4151)
  %i.p = invoke { ptr, i64 } @_RNvMs0_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterReE8as_sliceCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a)
          to label %bb.f unwind label %bb.e, !noalias !4148 ; 2 uses

bb.e:                                             ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecReE7reserveCshbKHpCRGxgC_16deltalake_derive.exit.thread.i.i, %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterReENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %.body unwind label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.r = extractvalue { ptr, i64 } %i.p, 0
  %i.s = extractvalue { ptr, i64 } %i.p, 1        ; 4 uses
  %.not66 = icmp eq i64 %i.s, 0
  br i1 %.not66, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecReE7reserveCshbKHpCRGxgC_16deltalake_derive.exit.i.i, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecReE7reserveCshbKHpCRGxgC_16deltalake_derive.exit.thread.i.i, !prof !4153

_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecReE7reserveCshbKHpCRGxgC_16deltalake_derive.exit.thread.i.i: ; preds = %bb.f
  invoke void @_RINvNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 0, i64 noundef %i.s, i64 noundef 8, i64 noundef 16)
          to label %bb.g unwind label %bb.e

bb.g:                                             ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecReE7reserveCshbKHpCRGxgC_16deltalake_derive.exit.thread.i.i
  %i.t = load i64, ptr %i.o, align 8, !alias.scope !4154, !noalias !4151, !noundef !4 ; 2 uses
  %i.u = icmp ult i64 %i.t, 576460752303423488
  call void @llvm.assume(i1 %i.u)
  %i.v = load ptr, ptr %i.n, align 8, !alias.scope !4154, !noalias !4151, !nonnull !4, !noundef !4
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %i.t
  %i.x = shl i64 %i.s, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.w, ptr readonly align 8 %i.r, i64 %i.x, i1 false)
  %.pre.i.i = load i64, ptr %i.o, align 8, !alias.scope !4154, !noalias !4151
  br label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecReE7reserveCshbKHpCRGxgC_16deltalake_derive.exit.i.i

_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecReE7reserveCshbKHpCRGxgC_16deltalake_derive.exit.i.i: ; preds = %bb.f, %bb.g
  %i.y = phi i64 [ %.pre.i.i, %bb.g ], [ 0, %bb.f ]
  %i.z = add i64 %i.y, %i.s
  store i64 %i.z, ptr %i.o, align 8, !alias.scope !4154, !noalias !4151
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !4151, !noalias !4148, !nonnull !4, !noundef !4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.ab, ptr %i.ac, align 8, !alias.scope !4151, !noalias !4148
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterReENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_RNvXs0_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB7_3VecReEINtB5_10SpecExtendBU_INtNtB7_9into_iter8IntoIterBU_EE11spec_extendCshbKHpCRGxgC_16deltalake_derive.exit unwind label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.i:                                             ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecReE7reserveCshbKHpCRGxgC_16deltalake_derive.exit.i.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.ae, %bb.i ], [ %i.q, %bb.e ]
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecReENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.thread unwind label %bb.k

_RNvXs0_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB7_3VecReEINtB5_10SpecExtendBU_INtNtB7_9into_iter8IntoIterBU_EE11spec_extendCshbKHpCRGxgC_16deltalake_derive.exit: ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecReE7reserveCshbKHpCRGxgC_16deltalake_derive.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.j

bb.j:                                             ; preds = %bb.m, %_RNvXs0_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB7_3VecReEINtB5_10SpecExtendBU_INtNtB7_9into_iter8IntoIterBU_EE11spec_extendCshbKHpCRGxgC_16deltalake_derive.exit
  ret void

bb.k:                                             ; preds = %.body
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.l:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.c, ptr nonnull align 8 %i.e, i64 %i.i, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.b
  %.pre-phi70 = phi i64 [ %i.j, %bb.l ], [ %.pre69, %bb.b ]
  %.sroa.7.0 = phi i64 [ %i.l, %bb.l ], [ %.sroa.7.0.copyload, %bb.b ]
  store i64 %.sroa.7.0, ptr %0, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.pre-phi70, ptr %i.ah, align 8
  br label %bb.j

.thread:                                          ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtCsjJ0p09o2jmV_10proc_macro9TokenTreeENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCshbKHpCRGxgC_16deltalake_derive(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.19.i = alloca [3 x i8], align 1          ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.f = load i64, ptr %i.c, align 8, !noundef !4 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4157)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.19.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4160
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4160
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 461168601842738791) %i.f, i1 noundef zeroext false, i64 noundef 4, i64 noundef 20), !noalias !4160
  %i.g = load i64, ptr %i.a, align 8, !range !811, !noalias !4160, !noundef !4
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !78, !noalias !4160, !noundef !4 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.h, label %bb.b, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshbKHpCRGxgC_16deltalake_derive.exit.i, !prof !3833

bb.b:                                             ; preds = %bb.a
  %i.l = load i64, ptr %i.k, align 8, !noalias !4160
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.l) #20, !noalias !4160
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshbKHpCRGxgC_16deltalake_derive.exit.i: ; preds = %bb.a
  %i.m = load ptr, ptr %i.k, align 8, !noalias !4160, !nonnull !4, !noundef !4 ; 2 uses
  %i.n = icmp ule i64 %i.f, %i.j
  tail call void @llvm.assume(i1 %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4160
  store i64 %i.j, ptr %i.b, align 8, !noalias !4160
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.m, ptr %i.o, align 8, !noalias !4160
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw [20 x i8], ptr %i.e, i64 %i.f
  %i.r = icmp eq i64 %i.j, 0
  br i1 %i.r, label %_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtCsjJ0p09o2jmV_10proc_macro9TokenTreeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECshbKHpCRGxgC_16deltalake_derive.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshbKHpCRGxgC_16deltalake_derive.exit.i, %_RNvXs14_CsjJ0p09o2jmV_10proc_macroNtB6_9TokenTreeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i
  %.sroa.012.069.i = phi ptr [ %i.u, %_RNvXs14_CsjJ0p09o2jmV_10proc_macroNtB6_9TokenTreeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %i.e, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshbKHpCRGxgC_16deltalake_derive.exit.i ] ; 16 uses
  %.sroa.7.067.i = phi i64 [ %i.v, %_RNvXs14_CsjJ0p09o2jmV_10proc_macroNtB6_9TokenTreeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ 0, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshbKHpCRGxgC_16deltalake_derive.exit.i ] ; 3 uses
  %.sroa.10.066.i = phi i64 [ %i.s, %_RNvXs14_CsjJ0p09o2jmV_10proc_macroNtB6_9TokenTreeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %i.j, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshbKHpCRGxgC_16deltalake_derive.exit.i ]
  %i.s = add i64 %.sroa.10.066.i, -1              ; 2 uses
  %i.t = icmp eq ptr %.sroa.012.069.i, %i.q
  br i1 %i.t, label %_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtCsjJ0p09o2jmV_10proc_macro9TokenTreeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECshbKHpCRGxgC_16deltalake_derive.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.012.069.i, i64 20
  %i.v = add nuw nsw i64 %.sroa.7.067.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4162)
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.012.069.i, i64 16
  %i.x = load i8, ptr %i.w, align 4, !range !193, !alias.scope !4165, !noalias !4167, !noundef !4 ; 4 uses
  %i.y = icmp samesign ugt i8 %i.x, 3
  %i.z = zext nneg i8 %i.x to i64
  %i.aa = add nsw i64 %i.z, -3
  %i.ab = select i1 %i.y, i64 %i.aa, i64 0
  switch i64 %i.ab, label %bb.d [
    i64 0, label %bb.e
    i64 1, label %bb.g
    i64 2, label %bb.h
    i64 3, label %bb.i
  ]

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.012.069.i, i64 12 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !alias.scope !4168, !noalias !4171, !noundef !4
  %.not.i.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i.i.i, label %_RNvXsz_NtCsjJ0p09o2jmV_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCshbKHpCRGxgC_16deltalake_derive.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = invoke noundef i32 @_RNvXs8_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6clientNtB5_11TokenStreamNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.ac)
          to label %_RNvXsz_NtCsjJ0p09o2jmV_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCshbKHpCRGxgC_16deltalake_derive.exit.i.i unwind label %bb.k, !noalias !4173

_RNvXsz_NtCsjJ0p09o2jmV_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCshbKHpCRGxgC_16deltalake_derive.exit.i.i: ; preds = %bb.f, %bb.e
  %storemerge.i.i.i = phi i32 [ 0, %bb.e ], [ %i.ae, %bb.f ] ; 3 uses
  %i.af = load <2 x i32>, ptr %.sroa.012.069.i, align 4, !alias.scope !4174, !noalias !4177
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.012.069.i, i64 8
  %.val2.i.i.i.i = load i32, ptr %i.ag, align 4, !range !4179, !alias.scope !4174, !noalias !4177, !noundef !4 ; 2 uses
  %.sroa.1018.sroa.0.0.extract.trunc32.i = trunc i32 %.val2.i.i.i.i to i8
  %.sroa.1018.sroa.7.0.extract.shift35.i = and i32 %.val2.i.i.i.i, -256
  %.sroa.13.sroa.0.0.extract.trunc26.i = trunc i32 %storemerge.i.i.i to i8
  %.sroa.13.sroa.6.0.extract.shift27.i = lshr i32 %storemerge.i.i.i, 8
  %.sroa.13.sroa.6.0.extract.trunc28.i = trunc i32 %.sroa.13.sroa.6.0.extract.shift27.i to i8
  %.sroa.13.sroa.7.0.extract.shift29.i = and i32 %storemerge.i.i.i, -65536
  br label %_RNvXs14_CsjJ0p09o2jmV_10proc_macroNtB6_9TokenTreeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i

bb.g:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.012.069.i, i64 8
  %i.ai = load i8, ptr %i.ah, align 4, !range !3958, !alias.scope !4180, !noalias !4183, !noundef !4
  %i.aj = load <2 x i32>, ptr %.sroa.012.069.i, align 4, !alias.scope !4180, !noalias !4183
  br label %_RNvXs14_CsjJ0p09o2jmV_10proc_macroNtB6_9TokenTreeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i

bb.h:                                             ; preds = %bb.c
  %i.ak = load <2 x i32>, ptr %.sroa.012.069.i, align 4, !alias.scope !4185, !noalias !4173
  %.sroa.1018.0..sroa_idx19.i = getelementptr inbounds nuw i8, ptr %.sroa.012.069.i, i64 8
  %.sroa.1018.0.copyload20.i = load i32, ptr %.sroa.1018.0..sroa_idx19.i, align 4, !alias.scope !4185, !noalias !4173 ; 2 uses
  %.sroa.1018.sroa.0.0.extract.trunc.i = trunc i32 %.sroa.1018.0.copyload20.i to i8
  %.sroa.1018.sroa.7.0.extract.shift.i = and i32 %.sroa.1018.0.copyload20.i, -256
  %.sroa.13.0..sroa_idx21.i = getelementptr inbounds nuw i8, ptr %.sroa.012.069.i, i64 12
  %.sroa.13.0.copyload22.i = load i32, ptr %.sroa.13.0..sroa_idx21.i, align 4, !alias.scope !4185, !noalias !4173 ; 3 uses
  %.sroa.13.sroa.0.0.extract.trunc.i = trunc i32 %.sroa.13.0.copyload22.i to i8
  %.sroa.13.sroa.6.0.extract.shift.i = lshr i32 %.sroa.13.0.copyload22.i, 8
  %.sroa.13.sroa.6.0.extract.trunc.i = trunc i32 %.sroa.13.sroa.6.0.extract.shift.i to i8
  %.sroa.13.sroa.7.0.extract.shift.i = and i32 %.sroa.13.0.copyload22.i, -65536
  %.sroa.19.0..sroa_idx25.i = getelementptr inbounds nuw i8, ptr %.sroa.012.069.i, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.19.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.19.0..sroa_idx25.i, i64 3, i1 false), !noalias !4173
  br label %_RNvXs14_CsjJ0p09o2jmV_10proc_macroNtB6_9TokenTreeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i

bb.i:                                             ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.012.069.i, i64 12
  %i.am = load i8, ptr %i.al, align 4, !range !4186, !alias.scope !4187, !noalias !4190, !noundef !4
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.012.069.i, i64 13
  %i.ao = load i8, ptr %i.an, align 1, !alias.scope !4187, !noalias !4190
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.012.069.i, i64 8
  %i.aq = load i32, ptr %i.ap, align 4, !alias.scope !4187, !noalias !4190, !noundef !4 ; 2 uses
  %i.ar = load <2 x i32>, ptr %.sroa.012.069.i, align 4, !alias.scope !4187, !noalias !4190
  %.sroa.1018.sroa.0.0.extract.trunc31.i = trunc i32 %i.aq to i8
  %.sroa.1018.sroa.7.0.extract.shift33.i = and i32 %i.aq, -256
  br label %_RNvXs14_CsjJ0p09o2jmV_10proc_macroNtB6_9TokenTreeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i

_RNvXs14_CsjJ0p09o2jmV_10proc_macroNtB6_9TokenTreeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i: ; preds = %bb.i, %bb.h, %bb.g, %_RNvXsz_NtCsjJ0p09o2jmV_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCshbKHpCRGxgC_16deltalake_derive.exit.i.i
  %.sroa.1018.sroa.7.sroa.0.0.i = phi i32 [ %.sroa.1018.sroa.7.0.extract.shift35.i, %_RNvXsz_NtCsjJ0p09o2jmV_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCshbKHpCRGxgC_16deltalake_derive.exit.i.i ], [ 0, %bb.g ], [ %.sroa.1018.sroa.7.0.extract.shift.i, %bb.h ], [ %.sroa.1018.sroa.7.0.extract.shift33.i, %bb.i ]
  %.sroa.13.sroa.6.1.i = phi i8 [ %.sroa.1018.sroa.0.0.extract.trunc32.i, %_RNvXsz_NtCsjJ0p09o2jmV_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCshbKHpCRGxgC_16deltalake_derive.exit.i.i ], [ %i.ai, %bb.g ], [ %.sroa.1018.sroa.0.0.extract.trunc.i, %bb.h ], [ %.sroa.1018.sroa.0.0.extract.trunc31.i, %bb.i ]
  %.sroa.13.sroa.7.0.i = phi i32 [ %.sroa.13.sroa.7.0.extract.shift29.i, %_RNvXsz_NtCsjJ0p09o2jmV_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCshbKHpCRGxgC_16deltalake_derive.exit.i.i ], [ 0, %bb.g ], [ %.sroa.13.sroa.7.0.extract.shift.i, %bb.h ], [ 0, %bb.i ]
  %.sroa.16.0.i.a = phi i8 [ %.sroa.13.sroa.6.0.extract.trunc28.i, %_RNvXsz_NtCsjJ0p09o2jmV_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCshbKHpCRGxgC_16deltalake_derive.exit.i.i ], [ undef, %bb.g ], [ %.sroa.13.sroa.6.0.extract.trunc.i, %bb.h ], [ %i.ao, %bb.i ]
  %.sroa.1018.sroa.0.0.i = phi i8 [ %.sroa.13.sroa.0.0.extract.trunc26.i, %_RNvXsz_NtCsjJ0p09o2jmV_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCshbKHpCRGxgC_16deltalake_derive.exit.i.i ], [ undef, %bb.g ], [ %.sroa.13.sroa.0.0.extract.trunc.i, %bb.h ], [ %i.am, %bb.i ]
  %.sroa.16.0.i = phi i8 [ %i.x, %_RNvXsz_NtCsjJ0p09o2jmV_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCshbKHpCRGxgC_16deltalake_derive.exit.i.i ], [ 4, %bb.g ], [ %i.x, %bb.h ], [ 6, %bb.i ]
  %i.as = phi <2 x i32> [ %i.af, %_RNvXsz_NtCsjJ0p09o2jmV_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCshbKHpCRGxgC_16deltalake_derive.exit.i.i ], [ %i.aj, %bb.g ], [ %i.ak, %bb.h ], [ %i.ar, %bb.i ]
  %i.at = getelementptr inbounds nuw [20 x i8], ptr %i.m, i64 %.sroa.7.067.i ; 5 uses
  %.sroa.1018.sroa.0.0.insert.ext.i = zext i8 %.sroa.13.sroa.6.1.i to i32
  %.sroa.1018.sroa.0.0.insert.insert.i = or disjoint i32 %.sroa.1018.sroa.7.sroa.0.0.i, %.sroa.1018.sroa.0.0.insert.ext.i
  %.sroa.13.sroa.6.0.insert.ext.i = zext i8 %.sroa.16.0.i.a to i32
  %.sroa.13.sroa.6.0.insert.shift.i = shl nuw nsw i32 %.sroa.13.sroa.6.0.insert.ext.i, 8
  %.sroa.13.sroa.6.0.insert.insert.i = or disjoint i32 %.sroa.13.sroa.6.0.insert.shift.i, %.sroa.13.sroa.7.0.i
  %.sroa.13.sroa.0.0.insert.ext.i = zext i8 %.sroa.1018.sroa.0.0.i to i32
  %.sroa.13.sroa.0.0.insert.insert.i = or disjoint i32 %.sroa.13.sroa.6.0.insert.insert.i, %.sroa.13.sroa.0.0.insert.ext.i
  store <2 x i32> %i.as, ptr %i.at, align 4, !noalias !4173
  %.sroa.549.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i32 %.sroa.1018.sroa.0.0.insert.insert.i, ptr %.sroa.549.0..sroa_idx.i, align 4, !noalias !4173
  %.sroa.650.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  store i32 %.sroa.13.sroa.0.0.insert.insert.i, ptr %.sroa.650.0..sroa_idx.i, align 4, !noalias !4173
  %.sroa.751.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store i8 %.sroa.16.0.i, ptr %.sroa.751.0..sroa_idx.i, align 4, !noalias !4173
  %.sroa.852.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.852.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.19.i, i64 3, i1 false), !noalias !4173
  %i.au = icmp eq i64 %i.s, 0
  br i1 %i.au, label %_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtCsjJ0p09o2jmV_10proc_macro9TokenTreeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECshbKHpCRGxgC_16deltalake_derive.exit, label %.lr.ph.i

bb.j:                                             ; preds = %bb.k
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #16, !noalias !4173
  unreachable

bb.k:                                             ; preds = %bb.f
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.067.i, ptr %i.p, align 8, !noalias !4160
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCsjJ0p09o2jmV_10proc_macro9TokenTreeEECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(24) %i.b) #17
          to label %bb.l unwind label %bb.j, !noalias !4173

bb.l:                                             ; preds = %bb.k
  resume { ptr, i32 } %lpad.loopexit.i

_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtCsjJ0p09o2jmV_10proc_macro9TokenTreeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECshbKHpCRGxgC_16deltalake_derive.exit: ; preds = %.lr.ph.i, %_RNvXs14_CsjJ0p09o2jmV_10proc_macroNtB6_9TokenTreeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshbKHpCRGxgC_16deltalake_derive.exit.i
  store i64 %i.f, ptr %i.p, align 8, !noalias !4160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !4157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4160
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19.i)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsj_NtCskxeEtmv7ubq_20unicode_segmentation8graphemeNtB5_18GraphemeIncompleteNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  %i.b = load i64, ptr %0, align 8, !range !4192, !noundef !4
  switch i64 %i.b, label %default.unreachable1 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.a, align 8
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 10, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @20)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 9)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 9)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 13)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.d, %bb.b ], [ %i.e, %bb.c ], [ %i.f, %bb.d ], [ %i.g, %bb.e ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtCsbjGuDcEILED_11proc_macro211TokenStreamENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSNtCsbjGuDcEILED_11proc_macro211TokenStreamECshbKHpCRGxgC_16deltalake_derive.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSNtCsbjGuDcEILED_11proc_macro211TokenStreamECshbKHpCRGxgC_16deltalake_derive.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i1 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %.sroa.0.0.i1
  %i.h = add i64 %.sroa.0.0.i1, 1                 ; 4 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro211TokenStreamECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(32) %i.g)
          to label %bb.b unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph3
  %i.i = add i64 %.sroa.0.1.i2, 1                 ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %._crit_edge, label %.lr.ph3

bb.d:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %._crit_edge, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i2 = phi i64 [ %i.i, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %.sroa.0.1.i2
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro211TokenStreamECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(32) %i.m) #17
          to label %bb.c unwind label %bb.e

._crit_edge:                                      ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.k

bb.e:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSNtCsbjGuDcEILED_11proc_macro211TokenStreamECshbKHpCRGxgC_16deltalake_derive.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtCsjJ0p09o2jmV_10proc_macro9TokenTreeENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSNtCsjJ0p09o2jmV_10proc_macro9TokenTreeECshbKHpCRGxgC_16deltalake_derive.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjJ0p09o2jmV_10proc_macro9TokenTreeECshbKHpCRGxgC_16deltalake_derive.exit.i
  %.sroa.0.09.i = phi i64 [ %i.g, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjJ0p09o2jmV_10proc_macro9TokenTreeECshbKHpCRGxgC_16deltalake_derive.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [20 x i8], ptr %i.b, i64 %.sroa.0.09.i ; 2 uses
  %i.g = add nuw i64 %.sroa.0.09.i, 1             ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.i = load i8, ptr %i.h, align 4, !range !193, !alias.scope !4193, !noundef !4
  %i.j = icmp samesign ult i8 %i.i, 4
  br i1 %i.j, label %bb.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjJ0p09o2jmV_10proc_macro9TokenTreeECshbKHpCRGxgC_16deltalake_derive.exit.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 12 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !alias.scope !4198, !noundef !4
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjJ0p09o2jmV_10proc_macro9TokenTreeECshbKHpCRGxgC_16deltalake_derive.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvXs0_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6clientNtB5_11TokenStreamNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.k)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjJ0p09o2jmV_10proc_macro9TokenTreeECshbKHpCRGxgC_16deltalake_derive.exit.i unwind label %bb.d

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjJ0p09o2jmV_10proc_macro9TokenTreeECshbKHpCRGxgC_16deltalake_derive.exit.i: ; preds = %bb.c, %bb.b, %.lr.ph.i
  %i.n = icmp eq i64 %i.g, %i.d
  br i1 %i.n, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSNtCsjJ0p09o2jmV_10proc_macro9TokenTreeECshbKHpCRGxgC_16deltalake_derive.exit, label %.lr.ph.i

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = icmp eq i64 %i.g, %i.d
  br i1 %i.p, label %._crit_edge13.i, label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %bb.d, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjJ0p09o2jmV_10proc_macro9TokenTreeECshbKHpCRGxgC_16deltalake_derive.exit8.i
  %.sroa.0.110.i = phi i64 [ %i.r, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjJ0p09o2jmV_10proc_macro9TokenTreeECshbKHpCRGxgC_16deltalake_derive.exit8.i ], [ %i.g, %bb.d ] ; 2 uses
  %i.q = getelementptr inbounds nuw [20 x i8], ptr %i.b, i64 %.sroa.0.110.i ; 2 uses
  %i.r = add i64 %.sroa.0.110.i, 1                ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.t = load i8, ptr %i.s, align 4, !range !193, !alias.scope !4205, !noundef !4
  %i.u = icmp samesign ult i8 %i.t, 4
  br i1 %i.u, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjJ0p09o2jmV_10proc_macro9TokenTreeECshbKHpCRGxgC_16deltalake_derive.exit8.i

bb.e:                                             ; preds = %.lr.ph12.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 12 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !alias.scope !4208, !noundef !4
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjJ0p09o2jmV_10proc_macro9TokenTreeECshbKHpCRGxgC_16deltalake_derive.exit8.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvXs0_NtNtCsjJ0p09o2jmV_10proc_macro6bridge6clientNtB5_11TokenStreamNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.v)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjJ0p09o2jmV_10proc_macro9TokenTreeECshbKHpCRGxgC_16deltalake_derive.exit8.i unwind label %bb.g

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjJ0p09o2jmV_10proc_macro9TokenTreeECshbKHpCRGxgC_16deltalake_derive.exit8.i: ; preds = %bb.f, %bb.e, %.lr.ph12.i
  %i.y = icmp eq i64 %i.r, %i.d
  br i1 %i.y, label %._crit_edge13.i, label %.lr.ph12.i

._crit_edge13.i:                                  ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjJ0p09o2jmV_10proc_macro9TokenTreeECshbKHpCRGxgC_16deltalake_derive.exit8.i, %bb.d
  resume { ptr, i32 } %i.o

bb.g:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSNtCsjJ0p09o2jmV_10proc_macro9TokenTreeECshbKHpCRGxgC_16deltalake_derive.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjJ0p09o2jmV_10proc_macro9TokenTreeECshbKHpCRGxgC_16deltalake_derive.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 4 uses
end_hunk_0
