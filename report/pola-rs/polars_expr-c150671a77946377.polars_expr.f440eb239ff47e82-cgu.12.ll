Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_expr-c150671a77946377.polars_expr.f440eb239ff47e82-cgu.12?download=true
inline.NumInlined: 9660
inline.NumDeleted: 4069
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_RINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort8arg_sortINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapIB1i_INtNtNtB1q_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtB6_8downcastINtB8_12ChunkedArrayNtNtBa_9datatypes9Int64TypeE13downcast_iter0ENCINvB4_16arg_sort_numericB4D_Es_0EIB1i_INtNtNtNtB3f_6bitmap5utils12zip_validity11ZipValidityRxIB2b_xENtNtB65_8iterator10BitmapIterENCNCB5o_s_00ExECskY9G75ZWc4U_11polars_expr:bb.a
          to label %bb.ay unwind label %bb.bh, !dbg !51286

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !51287
  store ptr null, ptr %i.e, align 8, !dbg !51287
  invoke void @_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6legacy5array14default_arraysINtNtNtBa_5array9primitive14PrimitiveArraymEINtB4_8FromDataINtNtCsknLZRuU4977_13polars_buffer6buffer6BuffermEE17from_data_defaultCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.e)
          to label %bb.az unwind label %bb.bh, !dbg !51247

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !51288
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !51288
  invoke void @_RINvMs_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array4fromINtB7_12ChunkedArrayNtNtB9_9datatypes10UInt32TypeE10with_chunkINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraymEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(88) %i.g)
          to label %bb.ba unwind label %bb.aw, !dbg !51289

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !51285
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !51285
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !51290
  br i1 %.sroa.016.1, label %bb.bd, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECskY9G75ZWc4U_11polars_expr.exit, !dbg !51183

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.bf, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !51183
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecTmxEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecTmxEEECskY9G75ZWc4U_11polars_expr.exit unwind label %bb.bb, !dbg !51291

bb.bb:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECskY9G75ZWc4U_11polars_expr.exit
  %i.ec = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecTmxEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECskY9G75ZWc4U_11polars_expr.exit59 unwind label %bb.bc, !dbg !51292

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecTmxEEECskY9G75ZWc4U_11polars_expr.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECskY9G75ZWc4U_11polars_expr.exit
  call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecTmxEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q), !dbg !51293
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !51177
  br label %bb.j, !dbg !51138

bb.bc:                                            ; preds = %bb.bb
  %i.ed = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #45, !dbg !51291
  unreachable, !dbg !51291

bb.bd:                                            ; preds = %bb.ba
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecmENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %bb.bf unwind label %bb.be, !dbg !51294

bb.be:                                            ; preds = %bb.bd
  %i.ee = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecmENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %.body54 unwind label %bb.bg, !dbg !51295

bb.bf:                                            ; preds = %bb.bd
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecmENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECskY9G75ZWc4U_11polars_expr.exit unwind label %bb.q, !dbg !51296

bb.bg:                                            ; preds = %bb.be
  %i.ef = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #45, !dbg !51294
  unreachable, !dbg !51294

bb.bh:                                            ; preds = %bb.ay, %bb.ax, %bb.ai
  %lpad.thr_comm87 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.h, i64 23, !dbg !51297
  %i.eh = load i8, ptr %i.eg, align 1, !dbg !51297, !range !4574, !alias.scope !51130, !noundef !4431
  %i.ei = icmp eq i8 %i.eh, -40, !dbg !51298
  br i1 %i.ei, label %bb.bi, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECskY9G75ZWc4U_11polars_expr.exit57, !dbg !51298, !prof !4445

bb.bi:                                            ; preds = %bb.bh
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECskY9G75ZWc4U_11polars_expr.exit57 unwind label %bb.m, !dbg !51299

bb.bj:                                            ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bo, ptr noundef nonnull align 8 dereferenceable(56) %i.bn, i64 56, i1 false), !dbg !51300
  store ptr %i.o, ptr %i.m, align 8, !dbg !51301, !alias.scope !51131, !noalias !51132
  store ptr %i.p, ptr %i.bp, align 8, !dbg !51301, !alias.scope !51131, !noalias !51132
  invoke void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB4_3VecTmxEEINtB2_10SpecExtendBR_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_map9FilterMapINtNtB1m_3map3MapINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValidityRxINtNtNtB1q_5slice4iter4IterxENtNtB2F_8iterator10BitmapIterENCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort16arg_sort_numericNtNtB51_9datatypes9Int64TypeEs_00ENCINvNtB4V_8arg_sort8arg_sortIB2k_IB2k_IB3S_INtNtB6_5boxed3BoxDNtNtB2J_5array5ArrayEL_EENCNvMs_NtB4X_8downcastINtB4Z_12ChunkedArrayB68_E13downcast_iter0ENCB4S_s_0EB2j_xEs_0EE11spec_extendCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.m)
          to label %bb.bk unwind label %bb.w, !dbg !51302

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !51203
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !51191
  %i.ej = icmp eq ptr %i.bq, %3, !dbg !51192
  br i1 %i.ej, label %._crit_edge, label %bb.v, !dbg !51193

.thread67:                                        ; preds = %bb.am, %bb.t, %bb.w, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECskY9G75ZWc4U_11polars_expr.exit57
  %.sroa.021.372 = phi i1 [ false, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECskY9G75ZWc4U_11polars_expr.exit57 ], [ true, %bb.w ], [ true, %bb.t ], [ true, %bb.am ]
  %.pn71 = phi { ptr, i32 } [ %.pn, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECskY9G75ZWc4U_11polars_expr.exit57 ], [ %i.by, %bb.w ], [ %i.bh, %bb.t ], [ %i.dn, %bb.am ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.p) #46
          to label %.body54 unwind label %bb.m, !dbg !51183

.body:                                            ; preds = %.body54
  br i1 %.sroa.021.1, label %bb.bl, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECskY9G75ZWc4U_11polars_expr.exit59, !dbg !51138

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECskY9G75ZWc4U_11polars_expr.exit59: ; preds = %bb.bb, %bb.l, %bb.k, %bb.bl, %bb.bm, %.body
  %.pn3595 = phi { ptr, i32 } [ %.pn3596, %bb.bl ], [ %lpad.thr_comm, %bb.k ], [ %.pn33, %.body ], [ %.pn3596, %bb.bm ], [ %i.ec, %bb.bb ], [ %lpad.thr_comm, %bb.l ]
  resume { ptr, i32 } %.pn3595, !dbg !51164

bb.bl:                                            ; preds = %.split.thread, %.body
  %.pn3596 = phi { ptr, i32 } [ %lpad.thr_comm97, %.split.thread ], [ %.pn33, %.body ] ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 23, !dbg !51303
  %i.el = load i8, ptr %i.ek, align 1, !dbg !51303, !range !4574, !alias.scope !51134, !noundef !4431
  %i.em = icmp eq i8 %i.el, -40, !dbg !51304
  br i1 %i.em, label %bb.bm, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECskY9G75ZWc4U_11polars_expr.exit59, !dbg !51304, !prof !4445

bb.bm:                                            ; preds = %bb.bl
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECskY9G75ZWc4U_11polars_expr.exit59 unwind label %bb.m, !dbg !51305
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift4sortNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNvYBW_NtNtBa_3cmp10PartialOrd2ltECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i1 noundef zeroext %4, ptr noalias noundef nonnull %5) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !51306 {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2, !dbg !51588
  br i1 %i.c, label %bb.af, label %bb.b, !dbg !51588

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1, !dbg !51589
  %i.e = urem i64 4611686018427387904, %1, !dbg !51590
  %.not = icmp ne i64 %i.e, 0, !dbg !51591
  %i.f = zext i1 %.not to i64, !dbg !51591
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f, !dbg !51591 ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097, !dbg !51592
  br i1 %i.g, label %bb.d, label %bb.c, !dbg !51592

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1), !dbg !51593
  br label %bb.e, !dbg !51593

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1, !dbg !51594
  %i.j = sub nuw nsw i64 %1, %i.i, !dbg !51595
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64), !dbg !51596
  br label %bb.e, !dbg !51597

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ], !dbg !51598 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !51599
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !51600
  %.not5.i111 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i116 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f, !dbg !51601

bb.f:                                             ; preds = %bb.ab, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.ab ], !dbg !51602 ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.dq, %bb.ab ], !dbg !51603 ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.do, %bb.ab ], !dbg !51604 ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1, !dbg !51605 ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g, !dbg !51605

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift10create_runNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNvYB13_NtNtBa_3cmp10PartialOrd2ltECskY9G75ZWc4U_11polars_expr.exit
  %.sroa.021.0 = phi i8 [ %i.bb, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift10create_runNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNvYB13_NtNtBa_3cmp10PartialOrd2ltECskY9G75ZWc4U_11polars_expr.exit ], [ 0, %bb.f ], !dbg !51606 ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift10create_runNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNvYB13_NtNtBa_3cmp10PartialOrd2ltECskY9G75ZWc4U_11polars_expr.exit ], [ 1, %bb.f ], !dbg !51606 ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1, !dbg !51607
  br i1 %i.l, label %.lr.ph75, label %._crit_edge, !dbg !51607

.lr.ph75:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r, !dbg !51607

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0, !dbg !51608 ; 11 uses
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.09.0, !dbg !51609 ; 9 uses
  %.not.i33 = icmp ult i64 %i.n, %.sroa.01.0, !dbg !51610
  br i1 %.not.i33, label %bb.i, label %bb.j, !dbg !51610

bb.i:                                             ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNvYB12_NtNtB8_3cmp10PartialOrd2ltECskY9G75ZWc4U_11polars_expr.exit.i.thread114, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNvYB12_NtNtB8_3cmp10PartialOrd2ltECskY9G75ZWc4U_11polars_expr.exit.i.thread, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNvYB12_NtNtB8_3cmp10PartialOrd2ltECskY9G75ZWc4U_11polars_expr.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o, !dbg !51611

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2, !dbg !51612
  br i1 %i.p, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStr7reverseCskY9G75ZWc4U_11polars_expr.exit, label %bb.k, !dbg !51612

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 24, !dbg !51613
  %i.r = tail call noundef range(i8 -1, 3) i8 @_RNvXsn_Cs7VARH73bmU_11compact_strNtB5_13CompactStringNtNtCscgRAwXFJnXP_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.o), !dbg !51614, !noalias !51560
  %i.s = icmp sgt i8 %i.r, -1, !dbg !51615        ; 2 uses
  %.not82 = icmp eq i64 %i.n, 2, !dbg !51616      ; 2 uses
  br i1 %i.s, label %.preheader50, label %.preheader, !dbg !51617

.preheader50:                                     ; preds = %bb.k
  br i1 %.not82, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNvYB12_NtNtB8_3cmp10PartialOrd2ltECskY9G75ZWc4U_11polars_expr.exit.i.thread, label %.lr.ph, !dbg !51618

.preheader:                                       ; preds = %bb.k
  br i1 %.not82, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNvYB12_NtNtB8_3cmp10PartialOrd2ltECskY9G75ZWc4U_11polars_expr.exit.i.thread114, label %.lr.ph69, !dbg !51619

.lr.ph:                                           ; preds = %.preheader50, %bb.l
  %.sroa.01.0.i.i65 = phi i64 [ %i.y, %bb.l ], [ 2, %.preheader50 ] ; 4 uses
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %.sroa.01.0.i.i65, !dbg !51620
  %i.u = getelementptr [24 x i8], ptr %i.o, i64 %.sroa.01.0.i.i65, !dbg !51621
  %i.v = getelementptr i8, ptr %i.u, i64 -24, !dbg !51621
  %i.w = tail call noundef range(i8 -1, 3) i8 @_RNvXsn_Cs7VARH73bmU_11compact_strNtB5_13CompactStringNtNtCscgRAwXFJnXP_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.v), !dbg !51622, !noalias !51560
  %i.x = icmp slt i8 %i.w, 0, !dbg !51623
  br i1 %i.x, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNvYB12_NtNtB8_3cmp10PartialOrd2ltECskY9G75ZWc4U_11polars_expr.exit.i, label %bb.l, !dbg !51624

bb.l:                                             ; preds = %.lr.ph
  %i.y = add nuw nsw i64 %.sroa.01.0.i.i65, 1, !dbg !51625 ; 2 uses
  %exitcond.not = icmp eq i64 %i.y, %i.n, !dbg !51618
  br i1 %exitcond.not, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNvYB12_NtNtB8_3cmp10PartialOrd2ltECskY9G75ZWc4U_11polars_expr.exit.i, label %.lr.ph, !dbg !51618

.lr.ph69:                                         ; preds = %.preheader, %bb.m
  %.sroa.01.1.i.i68 = phi i64 [ %i.ae, %bb.m ], [ 2, %.preheader ] ; 4 uses
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %.sroa.01.1.i.i68, !dbg !51626
  %i.aa = getelementptr [24 x i8], ptr %i.o, i64 %.sroa.01.1.i.i68, !dbg !51627
  %i.ab = getelementptr i8, ptr %i.aa, i64 -24, !dbg !51627
  %i.ac = tail call noundef range(i8 -1, 3) i8 @_RNvXsn_Cs7VARH73bmU_11compact_strNtB5_13CompactStringNtNtCscgRAwXFJnXP_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.z, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ab), !dbg !51628, !noalias !51560
  %i.ad = icmp slt i8 %i.ac, 0, !dbg !51629
  br i1 %i.ad, label %bb.m, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNvYB12_NtNtB8_3cmp10PartialOrd2ltECskY9G75ZWc4U_11polars_expr.exit.i, !dbg !51630

bb.m:                                             ; preds = %.lr.ph69
  %i.ae = add nuw nsw i64 %.sroa.01.1.i.i68, 1, !dbg !51631 ; 2 uses
  %exitcond95.not = icmp eq i64 %i.ae, %i.n, !dbg !51619
  br i1 %exitcond95.not, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNvYB12_NtNtB8_3cmp10PartialOrd2ltECskY9G75ZWc4U_11polars_expr.exit.i, label %.lr.ph69, !dbg !51619

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNvYB12_NtNtB8_3cmp10PartialOrd2ltECskY9G75ZWc4U_11polars_expr.exit.i: ; preds = %bb.m, %.lr.ph69, %bb.l, %.lr.ph
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.0.i.i65, %.lr.ph ], [ %i.n, %bb.l ], [ %.sroa.01.1.i.i68, %.lr.ph69 ], [ %i.n, %bb.m ], !dbg !51632 ; 5 uses
  %i.af = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n, !dbg !51633
  tail call void @llvm.assume(i1 %i.af), !dbg !51634
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0, !dbg !51635
  br i1 %.not5.i, label %bb.i, label %bb.n, !dbg !51635

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNvYB12_NtNtB8_3cmp10PartialOrd2ltECskY9G75ZWc4U_11polars_expr.exit.i.thread114: ; preds = %.preheader
  br i1 %.not5.i116, label %bb.i, label %.lr.ph.preheader.i.i, !dbg !51635

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNvYB12_NtNtB8_3cmp10PartialOrd2ltECskY9G75ZWc4U_11polars_expr.exit.i.thread: ; preds = %.preheader50
  br i1 %.not5.i111, label %bb.i, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStr7reverseCskY9G75ZWc4U_11polars_expr.exit, !dbg !51635

bb.n:                                             ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNvYB12_NtNtB8_3cmp10PartialOrd2ltECskY9G75ZWc4U_11polars_expr.exit.i
  %i.ag = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i = icmp eq i64 %i.ag, 0
  %or.cond = or i1 %i.s, %.not.i.i, !dbg !51636
  br i1 %or.cond, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStr7reverseCskY9G75ZWc4U_11polars_expr.exit, label %.lr.ph.preheader.i.i, !dbg !51636

bb.o:                                             ; preds = %bb.i
  %.sroa.0.0.i40 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 384307168202282326) %i.n, i64 %.sroa.01.0), !dbg !51637
  %i.ah = shl nuw nsw i64 %.sroa.0.0.i40, 1, !dbg !51638
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift10create_runNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNvYB13_NtNtBa_3cmp10PartialOrd2ltECskY9G75ZWc4U_11polars_expr.exit, !dbg !51639

bb.p:                                             ; preds = %bb.i
  %.sroa.0.0.i39 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 384307168202282326) %i.n, i64 32), !dbg !51640 ; 2 uses
  tail call void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNvYB15_NtNtBa_3cmp10PartialOrd2ltECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 %i.o, i64 noundef %.sroa.0.0.i39, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias noundef nonnull %5) #44, !dbg !51641, !inline_history !51372
  %i.ai = shl nuw nsw i64 %.sroa.0.0.i39, 1, !dbg !51642
  %i.aj = or disjoint i64 %i.ai, 1, !dbg !51642
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift10create_runNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNvYB13_NtNtBa_3cmp10PartialOrd2ltECskY9G75ZWc4U_11polars_expr.exit, !dbg !51639

_RNvMNtCscgRAwXFJnXP_4core5sliceSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStr7reverseCskY9G75ZWc4U_11polars_expr.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECskY9G75ZWc4U_11polars_expr.exit.i.i, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNvYB12_NtNtB8_3cmp10PartialOrd2ltECskY9G75ZWc4U_11polars_expr.exit.i.thread, %bb.j, %bb.n
  %.sroa.0.0.i.i4548 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNvYB12_NtNtB8_3cmp10PartialOrd2ltECskY9G75ZWc4U_11polars_expr.exit.i.thread ], [ %.sroa.0.0.i.i112119123, %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECskY9G75ZWc4U_11polars_expr.exit.i.i ]
  %i.ak = shl nuw nsw i64 %.sroa.0.0.i.i4548, 1, !dbg !51643
  %i.al = or disjoint i64 %i.ak, 1, !dbg !51643
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift10create_runNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNvYB13_NtNtBa_3cmp10PartialOrd2ltECskY9G75ZWc4U_11polars_expr.exit, !dbg !51644

.lr.ph.preheader.i.i:                             ; preds = %bb.n, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNvYB12_NtNtB8_3cmp10PartialOrd2ltECskY9G75ZWc4U_11polars_expr.exit.i.thread114
  %i.am = phi i64 [ %i.ag, %bb.n ], [ 1, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNvYB12_NtNtB8_3cmp10PartialOrd2ltECskY9G75ZWc4U_11polars_expr.exit.i.thread114 ]
  %.sroa.0.0.i.i112119123 = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNvYB12_NtNtB8_3cmp10PartialOrd2ltECskY9G75ZWc4U_11polars_expr.exit.i.thread114 ] ; 2 uses
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %.sroa.0.0.i.i112119123, !dbg !51645
  br label %.lr.ph.i.i38, !dbg !51646

.lr.ph.i.i38:                                     ; preds = %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECskY9G75ZWc4U_11polars_expr.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.017.i.i = phi i64 [ %i.as, %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECskY9G75ZWc4U_11polars_expr.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.ao = xor i64 %.sroa.0.017.i.i, -1, !dbg !51647
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %.sroa.0.017.i.i, !dbg !51648
  %i.aq = getelementptr [24 x i8], ptr %i.an, i64 %i.ao, !dbg !51649
  invoke void @_RINvNvNtCscgRAwXFJnXP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskY9G75ZWc4U_11polars_expr(ptr noundef nonnull %i.ap, ptr noundef nonnull %i.aq, i64 noundef 3)
          to label %_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECskY9G75ZWc4U_11polars_expr.exit.i.i unwind label %bb.q, !dbg !51646, !noalias !51560

bb.q:                                             ; preds = %.lr.ph.i.i38
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking19panic_cannot_unwind() #45, !dbg !51650, !noalias !51560
  unreachable, !dbg !51650

_RINvNtCscgRAwXFJnXP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECskY9G75ZWc4U_11polars_expr.exit.i.i: ; preds = %.lr.ph.i.i38
  %i.as = add nuw nsw i64 %.sroa.0.017.i.i, 1, !dbg !51651 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.as, %i.am, !dbg !51652
  br i1 %exitcond.not.i.i, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStr7reverseCskY9G75ZWc4U_11polars_expr.exit, label %.lr.ph.i.i38, !dbg !51652

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift10create_runNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNvYB13_NtNtBa_3cmp10PartialOrd2ltECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCscgRAwXFJnXP_4core5sliceSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStr7reverseCskY9G75ZWc4U_11polars_expr.exit
  %.sroa.0.0.i34 = phi i64 [ %i.al, %_RNvMNtCscgRAwXFJnXP_4core5sliceSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStr7reverseCskY9G75ZWc4U_11polars_expr.exit ], [ %i.aj, %bb.p ], [ %i.ah, %bb.o ], !dbg !51653 ; 2 uses
  %i.at = lshr i64 %.sroa.023.0, 1, !dbg !51654
  %i.au = lshr i64 %.sroa.0.0.i34, 1, !dbg !51655
  %factor = shl nuw nsw i64 %.sroa.09.0, 1, !dbg !51656 ; 2 uses
  %i.av = sub nsw i64 %factor, %i.at, !dbg !51656
  %i.aw = add nuw nsw i64 %i.au, %factor, !dbg !51657
  %i.ax = mul i64 %i.av, %.sroa.0.0, !dbg !51658
  %i.ay = mul i64 %i.aw, %.sroa.0.0, !dbg !51659
  %i.az = xor i64 %i.ay, %i.ax, !dbg !51660
  %i.ba = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.az, i1 false), !dbg !51661
  %i.bb = trunc nuw nsw i64 %i.ba to i8, !dbg !51660
  br label %bb.g, !dbg !51662

bb.r:                                             ; preds = %.lr.ph75, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift13logical_mergeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNvYB16_NtNtBa_3cmp10PartialOrd2ltECskY9G75ZWc4U_11polars_expr.exit
  %.sroa.02.174 = phi i64 [ %.sroa.02.0, %.lr.ph75 ], [ %i.bc, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift13logical_mergeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNvYB16_NtNtBa_3cmp10PartialOrd2ltECskY9G75ZWc4U_11polars_expr.exit ] ; 2 uses
  %.sroa.023.173 = phi i64 [ %.sroa.023.0, %.lr.ph75 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift13logical_mergeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNvYB16_NtNtBa_3cmp10PartialOrd2ltECskY9G75ZWc4U_11polars_expr.exit ] ; 4 uses
  %i.bc = add i64 %.sroa.02.174, -1, !dbg !51663  ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bc, !dbg !51664
  %i.be = load i8, ptr %i.bd, align 1, !dbg !51665, !noundef !4431
  %.not29 = icmp ult i8 %i.be, %.sroa.021.0, !dbg !51665
  br i1 %.not29, label %._crit_edge, label %bb.s, !dbg !51665

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift13logical_mergeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNvYB16_NtNtBa_3cmp10PartialOrd2ltECskY9G75ZWc4U_11polars_expr.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.173, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift13logical_mergeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNvYB16_NtNtBa_3cmp10PartialOrd2ltECskY9G75ZWc4U_11polars_expr.exit ], !dbg !51602 ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.174, %bb.r ], [ 1, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift13logical_mergeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNvYB16_NtNtBa_3cmp10PartialOrd2ltECskY9G75ZWc4U_11polars_expr.exit ], !dbg !51604 ; 3 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa, !dbg !51666
  store i64 %.sroa.023.1.lcssa, ptr %i.bf, align 8, !dbg !51667
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa, !dbg !51668
  store i8 %.sroa.021.0, ptr %i.bg, align 1, !dbg !51669
  br i1 %i.k, label %bb.ab, label %bb.ac, !dbg !51670

bb.s:                                             ; preds = %bb.r
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bc, !dbg !51671
  %i.bi = load i64, ptr %i.bh, align 8, !dbg !51672, !noundef !4431 ; 3 uses
  %i.bj = lshr i64 %i.bi, 1, !dbg !51673          ; 8 uses
  %i.bk = lshr i64 %.sroa.023.173, 1, !dbg !51674 ; 6 uses
  %i.bl = add nuw i64 %i.bj, %i.bk, !dbg !51675   ; 4 uses
  %i.bm = sub i64 %.sroa.09.0, %i.bl, !dbg !51676
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.bm, !dbg !51677 ; 6 uses
  %i.bo = icmp samesign ugt i64 %i.bl, %3, !dbg !51678
  %i.bp = trunc i64 %.sroa.023.173 to i1
  %i.bq = or i64 %i.bi, %.sroa.023.173, !dbg !51679
  %i.br = trunc i64 %i.bq to i1, !dbg !51679
  %or.cond3.i = or i1 %i.bo, %i.br, !dbg !51679
  br i1 %or.cond3.i, label %bb.t, label %bb.u, !dbg !51679

bb.t:                                             ; preds = %bb.s
  %i.bs = trunc i64 %i.bi to i1
  br i1 %i.bs, label %bb.v, label %bb.w, !dbg !51680

bb.u:                                             ; preds = %bb.s
  %i.bt = shl nuw nsw i64 %i.bl, 1, !dbg !51681
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift13logical_mergeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNvYB16_NtNtBa_3cmp10PartialOrd2ltECskY9G75ZWc4U_11polars_expr.exit, !dbg !51682

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.bp, label %bb.x, label %bb.aa, !dbg !51683

bb.w:                                             ; preds = %bb.t
  %i.bu = or i64 %i.bj, 1, !dbg !51684
  %i.bv = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.bu, i1 true), !dbg !51685
  %i.bw = trunc nuw nsw i64 %i.bv to i32, !dbg !51685
  %i.bx = shl nuw nsw i32 %i.bw, 1, !dbg !51686
  %i.by = xor i32 %i.bx, 126, !dbg !51686
  tail call void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNvYB15_NtNtBa_3cmp10PartialOrd2ltECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 %i.bn, i64 noundef range(i64 0, 384307168202282326) %i.bj, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %i.by, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias noundef nonnull %5) #44, !dbg !51687, !inline_history !51442
  br label %bb.v, !dbg !51688

bb.x:                                             ; preds = %bb.aa, %bb.v
  %i.bz = icmp eq i64 %i.bj, 0, !dbg !51689
  %i.ca = icmp eq i64 %i.bk, 0
  %or.cond.i = or i1 %i.ca, %i.bz, !dbg !51689
  br i1 %or.cond.i, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5merge5mergeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNvYBX_NtNtBa_3cmp10PartialOrd2ltECskY9G75ZWc4U_11polars_expr.exit, label %bb.y, !dbg !51689

bb.y:                                             ; preds = %bb.x
  %.sroa.0.0.i.i35 = tail call i64 @llvm.umin.i64(i64 %i.bk, i64 range(i64 0, -9223372036854775808) %i.bj), !dbg !51690 ; 2 uses
  %i.cb = icmp samesign ult i64 %3, %.sroa.0.0.i.i35, !dbg !51691
  br i1 %i.cb, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5merge5mergeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNvYBX_NtNtBa_3cmp10PartialOrd2ltECskY9G75ZWc4U_11polars_expr.exit, label %.critedge.i, !dbg !51691

.critedge.i:                                      ; preds = %bb.y
  %i.cc = getelementptr inbounds nuw [24 x i8], ptr %i.bn, i64 %i.bj, !dbg !51692 ; 3 uses
  %.not.i36 = icmp samesign ugt i64 %i.bj, %i.bk, !dbg !51693 ; 2 uses
  %spec.select.i = select i1 %.not.i36, ptr %i.cc, ptr %i.bn, !dbg !51694
  %i.cd = mul nuw nsw i64 %.sroa.0.0.i.i35, 24, !dbg !51695 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.cd, i1 false), !dbg !51695, !alias.scope !51580
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 %i.cd, !dbg !51696 ; 4 uses
  br i1 %.not.i36, label %.preheader.i, label %.lr.ph.i.i, !dbg !51697

.preheader.i:                                     ; preds = %.critedge.i, %.noexc.i
  %.sroa.13.0.i = phi ptr [ %i.cl, %.noexc.i ], [ %i.cc, %.critedge.i ], !dbg !51698 ; 2 uses
  %.sroa.7.0.i = phi ptr [ %i.cn, %.noexc.i ], [ %i.ce, %.critedge.i ], !dbg !51698 ; 2 uses
  %.sroa.0.0.i17.i = phi ptr [ %i.ci, %.noexc.i ], [ %i.m, %.critedge.i ]
  %i.cf = getelementptr inbounds i8, ptr %.sroa.13.0.i, i64 -24, !dbg !51699 ; 3 uses
  %i.cg = getelementptr inbounds i8, ptr %.sroa.7.0.i, i64 -24, !dbg !51700 ; 3 uses
  %i.ch = invoke noundef range(i8 -1, 3) i8 @_RNvXsn_Cs7VARH73bmU_11compact_strNtB5_13CompactStringNtNtCscgRAwXFJnXP_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cf)
          to label %.noexc.i unwind label %.loopexit.i, !dbg !51701 ; 2 uses

.noexc.i:                                         ; preds = %.preheader.i
  %i.ci = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -24, !dbg !51702 ; 2 uses
  %i.cj = icmp sgt i8 %i.ch, -1, !dbg !51703      ; 2 uses
  %..i.i = select i1 %i.cj, ptr %i.cg, ptr %i.cf, !dbg !51704
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ci, ptr noundef nonnull align 8 dereferenceable(24) %..i.i, i64 24, i1 false), !dbg !51705, !alias.scope !51580, !noalias !51581
  %i.ck = zext i1 %i.cj to i64, !dbg !51706
  %i.cl = getelementptr inbounds nuw [24 x i8], ptr %i.cf, i64 %i.ck, !dbg !51707 ; 3 uses
  %.lobit.i.i = lshr i8 %i.ch, 7, !dbg !51708
  %i.cm = zext nneg i8 %.lobit.i.i to i64, !dbg !51708
  %i.cn = getelementptr inbounds nuw [24 x i8], ptr %i.cg, i64 %i.cm, !dbg !51709 ; 3 uses
  %i.co = icmp eq ptr %i.cl, %i.bn, !dbg !51710
  %i.cp = icmp eq ptr %i.cn, %2
  %or.cond.i.i = select i1 %i.co, i1 true, i1 %i.cp, !dbg !51710
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltECskY9G75ZWc4U_11polars_expr.exit.i, label %.preheader.i, !dbg !51710

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.noexc21.i
  %.sroa.13.1.i = phi ptr [ %i.cw, %.noexc21.i ], [ %i.bn, %.critedge.i ], !dbg !51698 ; 3 uses
  %.sroa.0.0.i37 = phi ptr [ %i.ct, %.noexc21.i ], [ %2, %.critedge.i ], !dbg !51698 ; 4 uses
  %.sroa.0.02.i.i = phi ptr [ %i.cv, %.noexc21.i ], [ %i.cc, %.critedge.i ] ; 3 uses
  %i.cq = invoke noundef range(i8 -1, 3) i8 @_RNvXsn_Cs7VARH73bmU_11compact_strNtB5_13CompactStringNtNtCscgRAwXFJnXP_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.0.02.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.0.0.i37)
          to label %.noexc21.i unwind label %.loopexit.split-lp.i, !dbg !51711 ; 2 uses

.noexc21.i:                                       ; preds = %.lr.ph.i.i
  %i.cr = icmp sgt i8 %i.cq, -1, !dbg !51712      ; 2 uses
  %spec.select.i.i = select i1 %i.cr, ptr %.sroa.0.0.i37, ptr %.sroa.0.02.i.i, !dbg !51713
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13.1.i, ptr noundef nonnull align 8 dereferenceable(24) %spec.select.i.i, i64 24, i1 false), !dbg !51714, !alias.scope !51580, !noalias !51582
  %i.cs = zext i1 %i.cr to i64, !dbg !51715
  %i.ct = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.i37, i64 %i.cs, !dbg !51716 ; 3 uses
  %.lobit.i19.i = lshr i8 %i.cq, 7, !dbg !51717
  %i.cu = zext nneg i8 %.lobit.i19.i to i64, !dbg !51717
  %i.cv = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.02.i.i, i64 %i.cu, !dbg !51718 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i, i64 24, !dbg !51719 ; 2 uses
  %i.cx = icmp ne ptr %i.ct, %i.ce, !dbg !51720
  %i.cy = icmp ne ptr %i.cv, %i.m
  %or.cond.i20.i = select i1 %i.cx, i1 %i.cy, i1 false, !dbg !51720
  br i1 %or.cond.i20.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltECskY9G75ZWc4U_11polars_expr.exit.i, !dbg !51720

_RINvMNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltECskY9G75ZWc4U_11polars_expr.exit.i: ; preds = %.noexc21.i, %.noexc.i
  %.sroa.13.4.i = phi ptr [ %i.cl, %.noexc.i ], [ %i.cw, %.noexc21.i ], !dbg !51721
end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift4sortNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNvYBW_NtNtBa_3cmp10PartialOrd2ltECskY9G75ZWc4U_11polars_expr:bb.a
  %i.dd = ptrtoint ptr %.sroa.0.2.i to i64, !dbg !51726
  %i.de = sub nuw i64 %i.dc, %i.dd, !dbg !51726
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.3.i, ptr align 8 %.sroa.0.2.i, i64 %i.de, i1 false), !dbg !51727, !alias.scope !51580, !noalias !51584
  resume { ptr, i32 } %lpad.phi.i, !dbg !51728

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5merge5mergeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNvYBX_NtNtBa_3cmp10PartialOrd2ltECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.x, %bb.y, %_RINvMNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltECskY9G75ZWc4U_11polars_expr.exit.i
  %i.df = shl nuw nsw i64 %i.bl, 1, !dbg !51729
  %i.dg = or disjoint i64 %i.df, 1, !dbg !51729
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift13logical_mergeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNvYB16_NtNtBa_3cmp10PartialOrd2ltECskY9G75ZWc4U_11polars_expr.exit, !dbg !51682

bb.aa:                                            ; preds = %bb.v
  %i.dh = getelementptr inbounds nuw [24 x i8], ptr %i.bn, i64 %i.bj, !dbg !51730
  %i.di = or i64 %i.bk, 1, !dbg !51731
  %i.dj = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.di, i1 true), !dbg !51732
  %i.dk = trunc nuw nsw i64 %i.dj to i32, !dbg !51732
  %i.dl = shl nuw nsw i32 %i.dk, 1, !dbg !51733
  %i.dm = xor i32 %i.dl, 126, !dbg !51733
  tail call void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNvYB15_NtNtBa_3cmp10PartialOrd2ltECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 %i.dh, i64 noundef range(i64 0, 384307168202282326) %i.bk, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %i.dm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias noundef nonnull %5) #44, !dbg !51734, !inline_history !51442
  br label %bb.x, !dbg !51735

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift13logical_mergeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNvYB16_NtNtBa_3cmp10PartialOrd2ltECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.u, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5merge5mergeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNvYBX_NtNtBa_3cmp10PartialOrd2ltECskY9G75ZWc4U_11polars_expr.exit
  %.sroa.0.0.i = phi i64 [ %i.dg, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5merge5mergeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNvYBX_NtNtBa_3cmp10PartialOrd2ltECskY9G75ZWc4U_11polars_expr.exit ], [ %i.bt, %bb.u ], !dbg !51736 ; 2 uses
  %i.dn = icmp ugt i64 %i.bc, 1, !dbg !51607
  br i1 %i.dn, label %bb.r, label %._crit_edge, !dbg !51607

bb.ab:                                            ; preds = %._crit_edge
  %i.do = add nuw nsw i64 %.sroa.02.1.lcssa, 1, !dbg !51737
  %i.dp = lshr i64 %.sroa.018.0, 1, !dbg !51738
  %i.dq = add nuw i64 %i.dp, %.sroa.09.0, !dbg !51739
  br label %bb.f, !dbg !51601

bb.ac:                                            ; preds = %._crit_edge
  %i.dr = and i64 %.sroa.023.1.lcssa, 1, !dbg !51740
  %.not31 = icmp eq i64 %i.dr, 0, !dbg !51741
  br i1 %.not31, label %bb.ad, label %bb.ae, !dbg !51741

bb.ad:                                            ; preds = %bb.ac
  %i.ds = or i64 %1, 1, !dbg !51742
  %i.dt = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.ds, i1 true), !dbg !51743
  %i.du = trunc nuw nsw i64 %i.dt to i32, !dbg !51743
  %i.dv = shl nuw nsw i32 %i.du, 1, !dbg !51744
  %i.dw = xor i32 %i.dv, 126, !dbg !51744
  tail call void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNvYB15_NtNtBa_3cmp10PartialOrd2ltECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %i.dw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias noundef nonnull %5) #44, !dbg !51745, !inline_history !51442
  br label %bb.ae, !dbg !51746

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !51747
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !51748
  br label %bb.af, !dbg !51749

bb.af:                                            ; preds = %bb.a, %bb.ae
  ret void, !dbg !51749
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift4sortTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSBW_7sort_byNCINvNtB11_4sort18arg_sort_ascendingBX_mINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4d_5BlockRSBX_E3new0EE0E0ECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull align 4 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i1 noundef zeroext %4, ptr noalias noundef align 8 dereferenceable(8) %5) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !51750 {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2, !dbg !52078
  br i1 %i.c, label %bb.be, label %bb.b, !dbg !52078

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1, !dbg !52079
  %i.e = urem i64 4611686018427387904, %1, !dbg !52080
  %.not = icmp ne i64 %i.e, 0, !dbg !52081
  %i.f = zext i1 %.not to i64, !dbg !52081
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f, !dbg !52081 ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097, !dbg !52082
  br i1 %i.g, label %bb.d, label %bb.c, !dbg !52082

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1), !dbg !52083
  br label %bb.e, !dbg !52083

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1, !dbg !52084
  %i.j = sub nuw nsw i64 %1, %i.i, !dbg !52085
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64), !dbg !52086
  br label %bb.e, !dbg !52087

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ], !dbg !52088 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !52089
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !52090
  br label %bb.f, !dbg !52091

bb.f:                                             ; preds = %bb.ba, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.ba ], !dbg !52092 ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.fk, %bb.ba ], !dbg !52093 ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.fi, %bb.ba ], !dbg !52094 ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1, !dbg !52095 ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g, !dbg !52095

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift10create_runTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB13_7sort_byNCINvNtB18_4sort18arg_sort_ascendingB14_mINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4m_5BlockRSB14_E3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit
  %.sroa.021.0 = phi i8 [ %i.cj, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift10create_runTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB13_7sort_byNCINvNtB18_4sort18arg_sort_ascendingB14_mINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4m_5BlockRSB14_E3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit ], [ 0, %bb.f ], !dbg !52096 ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift10create_runTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB13_7sort_byNCINvNtB18_4sort18arg_sort_ascendingB14_mINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4m_5BlockRSB14_E3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit ], [ 1, %bb.f ], !dbg !52096 ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1, !dbg !52097
  br i1 %i.l, label %.lr.ph88, label %._crit_edge, !dbg !52097

.lr.ph88:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.af, !dbg !52097

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0, !dbg !52098 ; 14 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0, !dbg !52099 ; 9 uses
  %.not.i33 = icmp ult i64 %i.n, %.sroa.01.0, !dbg !52100
  br i1 %.not.i33, label %bb.i, label %bb.j, !dbg !52100

bb.i:                                             ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB12_7sort_byNCINvNtB17_4sort18arg_sort_ascendingB13_mINtNtNtNtB8_4iter8adapters3map3MapINtNtNtB8_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4l_5BlockRSB13_E3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit.i, %bb.h
  br i1 %4, label %bb.ad, label %bb.ac, !dbg !52101

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2, !dbg !52102
  br i1 %i.p, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB12_7sort_byNCINvNtB17_4sort18arg_sort_ascendingB13_mINtNtNtNtB8_4iter8adapters3map3MapINtNtNtB8_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4l_5BlockRSB13_E3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit.i, label %bb.k, !dbg !52102

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !52103
  %.val10.i = load i16, ptr %i.q, align 4, !dbg !52104, !alias.scope !52035, !noalias !52036, !noundef !4431 ; 6 uses
  %.val11.i = load i16, ptr %i.o, align 4, !dbg !52104, !alias.scope !52037, !noalias !52038 ; 5 uses
  %i.r = and i16 %.val10.i, 32767, !dbg !52105    ; 2 uses
  %i.s = icmp samesign ugt i16 %i.r, 31744, !dbg !52105
  br i1 %i.s, label %.thread9.i.i52, label %bb.l, !dbg !52106

bb.l:                                             ; preds = %bb.k
  %i.t = and i16 %.val11.i, 32767, !dbg !52107
  %i.u = icmp samesign ugt i16 %i.t, 31744, !dbg !52107
  br i1 %i.u, label %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit58, label %bb.m, !dbg !52108

bb.m:                                             ; preds = %bb.l
  %.not.i4.i.i50 = icmp sgt i16 %.val11.i, -1, !dbg !52109 ; 2 uses
  %i.v = icmp sgt i16 %.val10.i, -1, !dbg !52110
  br i1 %i.v, label %bb.n, label %bb.o, !dbg !52110

bb.n:                                             ; preds = %bb.m
  %.not22.i.i56 = icmp samesign ult i16 %.val10.i, %.val11.i
  %or.cond.i57 = select i1 %.not.i4.i.i50, i1 %.not22.i.i56, i1 false, !dbg !52110
  br i1 %or.cond.i57, label %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit58, label %.thread9.i.i52, !dbg !52110

bb.o:                                             ; preds = %bb.m
  br i1 %.not.i4.i.i50, label %.split.i.i54, label %bb.p, !dbg !52110

.split.i.i54:                                     ; preds = %bb.o
  %i.w = or i16 %i.r, %.val11.i, !dbg !52111
  %.not.i.i55 = icmp eq i16 %i.w, 0, !dbg !52111
  br i1 %.not.i.i55, label %.thread9.i.i52, label %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit58, !dbg !52112

bb.p:                                             ; preds = %bb.o
  %.not21.i.i51 = icmp samesign ult i16 %.val11.i, %.val10.i, !dbg !52113
  br i1 %.not21.i.i51, label %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit58, label %.thread9.i.i52, !dbg !52112

.thread9.i.i52:                                   ; preds = %bb.p, %.split.i.i54, %bb.n, %bb.k
  %.not95 = icmp eq i64 %i.n, 2, !dbg !52114
  br i1 %.not95, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB12_7sort_byNCINvNtB17_4sort18arg_sort_ascendingB13_mINtNtNtNtB8_4iter8adapters3map3MapINtNtNtB8_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4l_5BlockRSB13_E3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit.i, label %.lr.ph77, !dbg !52114

_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit58: ; preds = %bb.l, %bb.n, %.split.i.i54, %bb.p
  %.not94 = icmp eq i64 %i.n, 2, !dbg !52115
  br i1 %.not94, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB12_7sort_byNCINvNtB17_4sort18arg_sort_ascendingB13_mINtNtNtNtB8_4iter8adapters3map3MapINtNtNtB8_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4l_5BlockRSB13_E3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit.i, label %.lr.ph, !dbg !52115

.lr.ph77:                                         ; preds = %.thread9.i.i52, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit49
  %.val9.i = phi i16 [ %.val8.i, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit49 ], [ %.val10.i, %.thread9.i.i52 ], !dbg !52116 ; 5 uses
  %.sroa.01.0.i.i76 = phi i64 [ %i.ag, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit49 ], [ 2, %.thread9.i.i52 ] ; 7 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.01.0.i.i76, !dbg !52117
  %i.y = add nsw i64 %.sroa.01.0.i.i76, -1, !dbg !52118
  %i.z = icmp ult i64 %i.y, %i.n, !dbg !52119
  tail call void @llvm.assume(i1 %i.z), !dbg !52120
  %.val8.i = load i16, ptr %i.x, align 4, !dbg !52116, !alias.scope !52035, !noalias !52036, !noundef !4431 ; 5 uses
  %i.aa = and i16 %.val8.i, 32767, !dbg !52121    ; 2 uses
  %i.ab = icmp samesign ugt i16 %i.aa, 31744, !dbg !52121
  br i1 %i.ab, label %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit49, label %bb.q, !dbg !52122

bb.q:                                             ; preds = %.lr.ph77
  %i.ac = and i16 %.val9.i, 32767, !dbg !52123
  %i.ad = icmp samesign ugt i16 %i.ac, 31744, !dbg !52123
  br i1 %i.ad, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB12_7sort_byNCINvNtB17_4sort18arg_sort_ascendingB13_mINtNtNtNtB8_4iter8adapters3map3MapINtNtNtB8_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4l_5BlockRSB13_E3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit.i, label %bb.r, !dbg !52124

bb.r:                                             ; preds = %bb.q
  %.not.i4.i.i41 = icmp sgt i16 %.val9.i, -1, !dbg !52125 ; 2 uses
  %i.ae = icmp sgt i16 %.val8.i, -1, !dbg !52126
  br i1 %i.ae, label %bb.s, label %bb.t, !dbg !52126

bb.s:                                             ; preds = %bb.r
  %.not22.i.i47 = icmp samesign ult i16 %.val8.i, %.val9.i
  %or.cond.i48 = select i1 %.not.i4.i.i41, i1 %.not22.i.i47, i1 false, !dbg !52126
  br i1 %or.cond.i48, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB12_7sort_byNCINvNtB17_4sort18arg_sort_ascendingB13_mINtNtNtNtB8_4iter8adapters3map3MapINtNtNtB8_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4l_5BlockRSB13_E3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit.i, label %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit49, !dbg !52126

bb.t:                                             ; preds = %bb.r
  br i1 %.not.i4.i.i41, label %.split.i.i45, label %bb.u, !dbg !52126

.split.i.i45:                                     ; preds = %bb.t
  %i.af = or i16 %i.aa, %.val9.i, !dbg !52127
  %.not.i.i46 = icmp eq i16 %i.af, 0, !dbg !52127
  br i1 %.not.i.i46, label %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit49, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB12_7sort_byNCINvNtB17_4sort18arg_sort_ascendingB13_mINtNtNtNtB8_4iter8adapters3map3MapINtNtNtB8_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4l_5BlockRSB13_E3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit.i, !dbg !52128

bb.u:                                             ; preds = %bb.t
  %.not21.i.i42 = icmp samesign ult i16 %.val9.i, %.val8.i, !dbg !52129
  br i1 %.not21.i.i42, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB12_7sort_byNCINvNtB17_4sort18arg_sort_ascendingB13_mINtNtNtNtB8_4iter8adapters3map3MapINtNtNtB8_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4l_5BlockRSB13_E3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit.i, label %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit49, !dbg !52128

_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit49: ; preds = %bb.u, %.split.i.i45, %bb.s, %.lr.ph77
  %i.ag = add nuw nsw i64 %.sroa.01.0.i.i76, 1, !dbg !52130 ; 2 uses
  %exitcond103.not = icmp eq i64 %i.ag, %i.n, !dbg !52114
  br i1 %exitcond103.not, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB12_7sort_byNCINvNtB17_4sort18arg_sort_ascendingB13_mINtNtNtNtB8_4iter8adapters3map3MapINtNtNtB8_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4l_5BlockRSB13_E3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit.i, label %.lr.ph77, !dbg !52114

.lr.ph:                                           ; preds = %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit58, %bb.aa
  %.val7.i = phi i16 [ %.val.i, %bb.aa ], [ %.val10.i, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit58 ], !dbg !52131 ; 5 uses
  %.sroa.01.1.i.i68 = phi i64 [ %i.aq, %bb.aa ], [ 2, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit58 ] ; 7 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.01.1.i.i68, !dbg !52132
  %i.ai = add nsw i64 %.sroa.01.1.i.i68, -1, !dbg !52133
  %i.aj = icmp ult i64 %i.ai, %i.n, !dbg !52134
  tail call void @llvm.assume(i1 %i.aj), !dbg !52135
  %.val.i = load i16, ptr %i.ah, align 4, !dbg !52131, !alias.scope !52035, !noalias !52036, !noundef !4431 ; 5 uses
  %i.ak = and i16 %.val.i, 32767, !dbg !52136     ; 2 uses
  %i.al = icmp samesign ugt i16 %i.ak, 31744, !dbg !52136
  br i1 %i.al, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB12_7sort_byNCINvNtB17_4sort18arg_sort_ascendingB13_mINtNtNtNtB8_4iter8adapters3map3MapINtNtNtB8_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4l_5BlockRSB13_E3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit.i, label %bb.v, !dbg !52137

bb.v:                                             ; preds = %.lr.ph
  %i.am = and i16 %.val7.i, 32767, !dbg !52138
  %i.an = icmp samesign ugt i16 %i.am, 31744, !dbg !52138
  br i1 %i.an, label %bb.aa, label %bb.w, !dbg !52139

bb.w:                                             ; preds = %bb.v
  %.not.i4.i.i = icmp sgt i16 %.val7.i, -1, !dbg !52140 ; 2 uses
  %i.ao = icmp sgt i16 %.val.i, -1, !dbg !52141
  br i1 %i.ao, label %bb.x, label %bb.y, !dbg !52141

bb.x:                                             ; preds = %bb.w
  %.not22.i.i = icmp samesign ult i16 %.val.i, %.val7.i
  %or.cond.i40 = select i1 %.not.i4.i.i, i1 %.not22.i.i, i1 false, !dbg !52141
  br i1 %or.cond.i40, label %bb.aa, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB12_7sort_byNCINvNtB17_4sort18arg_sort_ascendingB13_mINtNtNtNtB8_4iter8adapters3map3MapINtNtNtB8_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4l_5BlockRSB13_E3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit.i, !dbg !52141

bb.y:                                             ; preds = %bb.w
  br i1 %.not.i4.i.i, label %.split.i.i, label %bb.z, !dbg !52141

.split.i.i:                                       ; preds = %bb.y
  %i.ap = or i16 %i.ak, %.val7.i, !dbg !52142
  %.not.i.i39 = icmp eq i16 %i.ap, 0, !dbg !52142
  br i1 %.not.i.i39, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB12_7sort_byNCINvNtB17_4sort18arg_sort_ascendingB13_mINtNtNtNtB8_4iter8adapters3map3MapINtNtNtB8_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4l_5BlockRSB13_E3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit.i, label %bb.aa, !dbg !52143

bb.z:                                             ; preds = %bb.y
  %.not21.i.i = icmp samesign ult i16 %.val7.i, %.val.i, !dbg !52144
  br i1 %.not21.i.i, label %bb.aa, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB12_7sort_byNCINvNtB17_4sort18arg_sort_ascendingB13_mINtNtNtNtB8_4iter8adapters3map3MapINtNtNtB8_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4l_5BlockRSB13_E3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit.i, !dbg !52143

bb.aa:                                            ; preds = %bb.z, %bb.v, %.split.i.i, %bb.x
  %i.aq = add nuw nsw i64 %.sroa.01.1.i.i68, 1, !dbg !52145 ; 2 uses
  %exitcond.not = icmp eq i64 %i.aq, %i.n, !dbg !52115
  br i1 %exitcond.not, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB12_7sort_byNCINvNtB17_4sort18arg_sort_ascendingB13_mINtNtNtNtB8_4iter8adapters3map3MapINtNtNtB8_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4l_5BlockRSB13_E3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit.i, label %.lr.ph, !dbg !52115

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB12_7sort_byNCINvNtB17_4sort18arg_sort_ascendingB13_mINtNtNtNtB8_4iter8adapters3map3MapINtNtNtB8_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4l_5BlockRSB13_E3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit.i: ; preds = %bb.aa, %.lr.ph, %bb.x, %.split.i.i, %bb.z, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit49, %bb.u, %bb.q, %.split.i.i45, %bb.s, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit58, %.thread9.i.i52, %bb.j
  %.sroa.3.0.i.i = phi i1 [ false, %bb.j ], [ false, %.thread9.i.i52 ], [ true, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit58 ], [ false, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit49 ], [ false, %bb.s ], [ false, %.split.i.i45 ], [ false, %bb.q ], [ false, %bb.u ], [ true, %bb.z ], [ true, %.split.i.i ], [ true, %bb.x ], [ true, %.lr.ph ], [ true, %bb.aa ], !dbg !52146
  %.sroa.0.0.i.i = phi i64 [ %i.n, %bb.j ], [ 2, %.thread9.i.i52 ], [ 2, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit58 ], [ %i.n, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit49 ], [ %.sroa.01.0.i.i76, %bb.u ], [ %.sroa.01.0.i.i76, %bb.q ], [ %.sroa.01.0.i.i76, %.split.i.i45 ], [ %.sroa.01.0.i.i76, %bb.s ], [ %i.n, %bb.aa ], [ %.sroa.01.1.i.i68, %.lr.ph ], [ %.sroa.01.1.i.i68, %bb.x ], [ %.sroa.01.1.i.i68, %.split.i.i ], [ %.sroa.01.1.i.i68, %bb.z ], !dbg !52146 ; 6 uses
  %i.ar = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n, !dbg !52147
  tail call void @llvm.assume(i1 %i.ar), !dbg !52148
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0, !dbg !52149
  br i1 %.not5.i, label %bb.i, label %bb.ab, !dbg !52149

bb.ab:                                            ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB12_7sort_byNCINvNtB17_4sort18arg_sort_ascendingB13_mINtNtNtNtB8_4iter8adapters3map3MapINtNtNtB8_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4l_5BlockRSB13_E3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit.i
  br i1 %.sroa.3.0.i.i, label %bb.ae, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7reverseCskY9G75ZWc4U_11polars_expr.exit, !dbg !52150

bb.ac:                                            ; preds = %bb.i
  %.sroa.0.0.i38 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.n, i64 %.sroa.01.0), !dbg !52151
  %i.as = shl nuw nsw i64 %.sroa.0.0.i38, 1, !dbg !52152
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift10create_runTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB13_7sort_byNCINvNtB18_4sort18arg_sort_ascendingB14_mINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4m_5BlockRSB14_E3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !52153

bb.ad:                                            ; preds = %bb.i
  %.sroa.0.0.i37 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.n, i64 32), !dbg !52154 ; 2 uses
  tail call void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB15_7sort_byNCINvNtB1a_4sort18arg_sort_ascendingB16_mINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4o_5BlockRSB16_E3new0EE0E0ECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 4 %i.o, i64 noundef %.sroa.0.0.i37, ptr noalias noundef nonnull align 4 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef 0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5) #44, !dbg !52155, !inline_history !51844
  %i.at = shl nuw nsw i64 %.sroa.0.0.i37, 1, !dbg !52156
  %i.au = or disjoint i64 %i.at, 1, !dbg !52156
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift10create_runTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB13_7sort_byNCINvNtB18_4sort18arg_sort_ascendingB14_mINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4m_5BlockRSB14_E3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !52153

_RNvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7reverseCskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.i
  %i.av = and i64 %.sroa.0.0.i.i, 2, !dbg !52157
  %lcmp.mod.not = icmp eq i64 %i.av, 0, !dbg !52157
  br i1 %lcmp.mod.not, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7reverseCskY9G75ZWc4U_11polars_expr.exit, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.i.epil.preheader, !dbg !52157

_RNvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.i.epil.preheader: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7reverseCskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i.i
  %.sroa.0.016.i.i.epil.init = phi i64 [ 0, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i.i ], [ %i.ca, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7reverseCskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod143 = trunc i64 %i.bg to i1, !dbg !52157
  tail call void @llvm.assume(i1 %lcmp.mod143), !dbg !52157
  %i.aw = xor i64 %.sroa.0.016.i.i.epil.init, -1, !dbg !52158
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.016.i.i.epil.init, !dbg !52159 ; 3 uses
  %i.ay = getelementptr [8 x i8], ptr %i.bh, i64 %i.aw, !dbg !52160 ; 3 uses
  %i.az = load i16, ptr %i.ax, align 4, !dbg !52161, !alias.scope !52043, !noalias !52044, !noundef !4431
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 4, !dbg !52161
  %i.bb = load i32, ptr %i.ba, align 4, !dbg !52161, !alias.scope !52043, !noalias !52044, !noundef !4431
  %i.bc = load i64, ptr %i.ay, align 4, !dbg !52161, !alias.scope !52045, !noalias !52046
  store i64 %i.bc, ptr %i.ax, align 4, !dbg !52161, !alias.scope !52043, !noalias !52044
  store i16 %i.az, ptr %i.ay, align 4, !dbg !52161, !alias.scope !52045, !noalias !52046
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 4, !dbg !52161
  store i32 %i.bb, ptr %i.bd, align 4, !dbg !52161, !alias.scope !52045, !noalias !52046
  br label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7reverseCskY9G75ZWc4U_11polars_expr.exit, !dbg !52162

_RNvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7reverseCskY9G75ZWc4U_11polars_expr.exit: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.i.epil.preheader, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7reverseCskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa, %bb.ae, %bb.ab
  %i.be = shl nuw nsw i64 %.sroa.0.0.i.i, 1, !dbg !52162
  %i.bf = or disjoint i64 %i.be, 1, !dbg !52162
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift10create_runTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB13_7sort_byNCINvNtB18_4sort18arg_sort_ascendingB14_mINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4m_5BlockRSB14_E3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !52163

bb.ae:                                            ; preds = %bb.ab
  %i.bg = lshr i64 %.sroa.0.0.i.i, 1, !dbg !52164 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52047), !dbg !52165, !noalias !52038
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52048), !dbg !52165, !noalias !52038
  %.not.i.i = icmp eq i64 %i.bg, 0, !dbg !52157
  br i1 %.not.i.i, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7reverseCskY9G75ZWc4U_11polars_expr.exit, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i.i, !dbg !52157

_RNvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i.i: ; preds = %bb.ae
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.0.i.i, !dbg !52166 ; 3 uses
  %i.bi = icmp eq i64 %i.bg, 1, !dbg !52157
  br i1 %i.bi, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.i.epil.preheader, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i.i.new, !dbg !52157

_RNvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i.i.new: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i.i
  %unroll_iter = and i64 %i.bg, 9223372036854775806, !dbg !52157
  br label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.i, !dbg !52157

_RNvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.i: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.i, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i.i.new
  %.sroa.0.016.i.i = phi i64 [ 0, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i.i.new ], [ %i.ca, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i.i.new ], [ %niter.next.1, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.i ]
  %i.bj = xor i64 %.sroa.0.016.i.i, -1, !dbg !52158
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.016.i.i, !dbg !52159 ; 3 uses
  %i.bl = getelementptr [8 x i8], ptr %i.bh, i64 %i.bj, !dbg !52160 ; 3 uses
  %i.bm = load i16, ptr %i.bk, align 4, !dbg !52161, !alias.scope !52043, !noalias !52044, !noundef !4431
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 4, !dbg !52161
  %i.bo = load i32, ptr %i.bn, align 4, !dbg !52161, !alias.scope !52043, !noalias !52044, !noundef !4431
  %i.bp = load i64, ptr %i.bl, align 4, !dbg !52161, !alias.scope !52045, !noalias !52046
  store i64 %i.bp, ptr %i.bk, align 4, !dbg !52161, !alias.scope !52043, !noalias !52044
  store i16 %i.bm, ptr %i.bl, align 4, !dbg !52161, !alias.scope !52045, !noalias !52046
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 4, !dbg !52161
  store i32 %i.bo, ptr %i.bq, align 4, !dbg !52161, !alias.scope !52045, !noalias !52046
  %i.br = xor i64 %.sroa.0.016.i.i, -2, !dbg !52158
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.016.i.i, !dbg !52159 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8, !dbg !52159 ; 2 uses
  %i.bu = getelementptr [8 x i8], ptr %i.bh, i64 %i.br, !dbg !52160 ; 3 uses
  %i.bv = load i16, ptr %i.bt, align 4, !dbg !52161, !alias.scope !52043, !noalias !52044, !noundef !4431
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 12, !dbg !52161
  %i.bx = load i32, ptr %i.bw, align 4, !dbg !52161, !alias.scope !52043, !noalias !52044, !noundef !4431
  %i.by = load i64, ptr %i.bu, align 4, !dbg !52161, !alias.scope !52045, !noalias !52046
  store i64 %i.by, ptr %i.bt, align 4, !dbg !52161, !alias.scope !52043, !noalias !52044
  store i16 %i.bv, ptr %i.bu, align 4, !dbg !52161, !alias.scope !52045, !noalias !52046
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 4, !dbg !52161
  store i32 %i.bx, ptr %i.bz, align 4, !dbg !52161, !alias.scope !52045, !noalias !52046
  %i.ca = add nuw nsw i64 %.sroa.0.016.i.i, 2, !dbg !52167 ; 2 uses
  %niter.next.1 = add i64 %niter, 2, !dbg !52157  ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !52157
  br i1 %niter.ncmp.1, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7reverseCskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.i, !dbg !52157

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift10create_runTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB13_7sort_byNCINvNtB18_4sort18arg_sort_ascendingB14_mINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4m_5BlockRSB14_E3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.ac, %bb.ad, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7reverseCskY9G75ZWc4U_11polars_expr.exit
  %.sroa.0.0.i34 = phi i64 [ %i.bf, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7reverseCskY9G75ZWc4U_11polars_expr.exit ], [ %i.au, %bb.ad ], [ %i.as, %bb.ac ], !dbg !52168 ; 2 uses
  %i.cb = lshr i64 %.sroa.023.0, 1, !dbg !52169
  %i.cc = lshr i64 %.sroa.0.0.i34, 1, !dbg !52170
  %factor = shl nuw nsw i64 %.sroa.09.0, 1, !dbg !52171 ; 2 uses
  %i.cd = sub nsw i64 %factor, %i.cb, !dbg !52171
  %i.ce = add nuw nsw i64 %i.cc, %factor, !dbg !52172
  %i.cf = mul i64 %i.cd, %.sroa.0.0, !dbg !52173
  %i.cg = mul i64 %i.ce, %.sroa.0.0, !dbg !52174
  %i.ch = xor i64 %i.cg, %i.cf, !dbg !52175
  %i.ci = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ch, i1 false), !dbg !52176
  %i.cj = trunc nuw nsw i64 %i.ci to i8, !dbg !52175
  br label %bb.g, !dbg !52177

bb.af:                                            ; preds = %.lr.ph88, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift13logical_mergeTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB16_7sort_byNCINvNtB1b_4sort18arg_sort_ascendingB17_mINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4p_5BlockRSB17_E3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit
  %.sroa.02.187 = phi i64 [ %.sroa.02.0, %.lr.ph88 ], [ %i.ck, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift13logical_mergeTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB16_7sort_byNCINvNtB1b_4sort18arg_sort_ascendingB17_mINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4p_5BlockRSB17_E3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit ] ; 2 uses
  %.sroa.023.186 = phi i64 [ %.sroa.023.0, %.lr.ph88 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift13logical_mergeTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB16_7sort_byNCINvNtB1b_4sort18arg_sort_ascendingB17_mINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4p_5BlockRSB17_E3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit ] ; 4 uses
  %i.ck = add i64 %.sroa.02.187, -1, !dbg !52178  ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ck, !dbg !52179
  %i.cm = load i8, ptr %i.cl, align 1, !dbg !52180, !noundef !4431
  %.not29 = icmp ult i8 %i.cm, %.sroa.021.0, !dbg !52180
  br i1 %.not29, label %._crit_edge, label %bb.ag, !dbg !52180

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift13logical_mergeTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB16_7sort_byNCINvNtB1b_4sort18arg_sort_ascendingB17_mINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4p_5BlockRSB17_E3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit, %bb.af, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.186, %bb.af ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift13logical_mergeTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB16_7sort_byNCINvNtB1b_4sort18arg_sort_ascendingB17_mINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4p_5BlockRSB17_E3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit ], !dbg !52092 ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.187, %bb.af ], [ 1, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift13logical_mergeTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB16_7sort_byNCINvNtB1b_4sort18arg_sort_ascendingB17_mINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4p_5BlockRSB17_E3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit ], !dbg !52094 ; 3 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa, !dbg !52181
  store i64 %.sroa.023.1.lcssa, ptr %i.cn, align 8, !dbg !52182
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa, !dbg !52183
  store i8 %.sroa.021.0, ptr %i.co, align 1, !dbg !52184
  br i1 %i.k, label %bb.ba, label %bb.bb, !dbg !52185

bb.ag:                                            ; preds = %bb.af
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ck, !dbg !52186
  %i.cq = load i64, ptr %i.cp, align 8, !dbg !52187, !noundef !4431 ; 3 uses
  %i.cr = lshr i64 %i.cq, 1, !dbg !52188          ; 8 uses
  %i.cs = lshr i64 %.sroa.023.186, 1, !dbg !52189 ; 6 uses
  %i.ct = add nuw i64 %i.cr, %i.cs, !dbg !52190   ; 4 uses
  %i.cu = sub i64 %.sroa.09.0, %i.ct, !dbg !52191
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cu, !dbg !52192 ; 6 uses
  %i.cw = icmp samesign ugt i64 %i.ct, %3, !dbg !52193
  %i.cx = trunc i64 %.sroa.023.186 to i1
  %i.cy = or i64 %i.cq, %.sroa.023.186, !dbg !52194
  %i.cz = trunc i64 %i.cy to i1, !dbg !52194
  %or.cond3.i = or i1 %i.cw, %i.cz, !dbg !52194
  br i1 %or.cond3.i, label %bb.ah, label %bb.ai, !dbg !52194

bb.ah:                                            ; preds = %bb.ag
  %i.da = trunc i64 %i.cq to i1
  br i1 %i.da, label %bb.aj, label %bb.ak, !dbg !52195

bb.ai:                                            ; preds = %bb.ag
  %i.db = shl nuw nsw i64 %i.ct, 1, !dbg !52196
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift13logical_mergeTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB16_7sort_byNCINvNtB1b_4sort18arg_sort_ascendingB17_mINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4p_5BlockRSB17_E3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !52197

bb.aj:                                            ; preds = %bb.ak, %bb.ah
  br i1 %i.cx, label %bb.al, label %bb.az, !dbg !52198

bb.ak:                                            ; preds = %bb.ah
  %i.dc = or i64 %i.cr, 1, !dbg !52199
  %i.dd = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.dc, i1 true), !dbg !52200
  %i.de = trunc nuw nsw i64 %i.dd to i32, !dbg !52200
  %i.df = shl nuw nsw i32 %i.de, 1, !dbg !52201
  %i.dg = xor i32 %i.df, 126, !dbg !52201
  tail call void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB15_7sort_byNCINvNtB1a_4sort18arg_sort_ascendingB16_mINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4o_5BlockRSB16_E3new0EE0E0ECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 4 %i.cv, i64 noundef range(i64 0, 1152921504606846976) %i.cr, ptr noalias noundef nonnull align 4 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.dg, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5) #44, !dbg !52202, !inline_history !51904
  br label %bb.aj, !dbg !52203

bb.al:                                            ; preds = %bb.az, %bb.aj
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52062), !dbg !52204
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52063), !dbg !52204
  %i.dh = icmp eq i64 %i.cr, 0, !dbg !52205
  %i.di = icmp eq i64 %i.cs, 0
  %or.cond.i = or i1 %i.di, %i.dh, !dbg !52205
  br i1 %or.cond.i, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5merge5mergeTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSBX_7sort_byNCINvNtB12_4sort18arg_sort_ascendingBY_mINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4e_5BlockRSBY_E3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit, label %bb.am, !dbg !52205

bb.am:                                            ; preds = %bb.al
  %.sroa.0.0.i.i35 = tail call i64 @llvm.umin.i64(i64 %i.cs, i64 range(i64 0, -9223372036854775808) %i.cr), !dbg !52206 ; 2 uses
  %i.dj = icmp samesign ult i64 %3, %.sroa.0.0.i.i35, !dbg !52207
  br i1 %i.dj, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5merge5mergeTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSBX_7sort_byNCINvNtB12_4sort18arg_sort_ascendingBY_mINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4e_5BlockRSBY_E3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit, label %.critedge.i, !dbg !52207

.critedge.i:                                      ; preds = %bb.am
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.cr, !dbg !52208 ; 3 uses
  %.not.i36 = icmp samesign ugt i64 %i.cr, %i.cs, !dbg !52209 ; 2 uses
  %spec.select.i = select i1 %.not.i36, ptr %i.dk, ptr %i.cv, !dbg !52210
  %i.dl = shl nuw nsw i64 %.sroa.0.0.i.i35, 3, !dbg !52211 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %2, ptr nonnull align 4 %spec.select.i, i64 %i.dl, i1 false), !dbg !52211, !alias.scope !52064
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 %i.dl, !dbg !52212 ; 3 uses
  br i1 %.not.i36, label %.preheader.i, label %.lr.ph.i.i, !dbg !52213

.preheader.i:                                     ; preds = %.critedge.i, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit.i.i
  %i.dn = phi ptr [ %i.ee, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit.i.i ], [ %i.dm, %.critedge.i ]
  %i.do = phi ptr [ %i.ec, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit.i.i ], [ %i.dk, %.critedge.i ]
  %.sroa.0.0.i17.i = phi ptr [ %i.dr, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit.i.i ], [ %i.m, %.critedge.i ]
  %i.dp = getelementptr inbounds i8, ptr %i.do, i64 -8, !dbg !52214 ; 3 uses
  %i.dq = getelementptr inbounds i8, ptr %i.dn, i64 -8, !dbg !52215 ; 6 uses
  %i.dr = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -8, !dbg !52216 ; 2 uses
  %.val.i.i = load i16, ptr %i.dq, align 2, !dbg !52217, !alias.scope !52065, !noalias !52066, !noundef !4431 ; 4 uses
  %.val10.i.i = load i16, ptr %i.dp, align 2, !dbg !52217, !alias.scope !52062, !noalias !52067 ; 5 uses
  %i.ds = and i16 %.val.i.i, 32767, !dbg !52218   ; 2 uses
  %i.dt = icmp samesign ugt i16 %i.ds, 31744, !dbg !52218
end_hunk_1
begin_hunk_2_@_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift4sortTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSBW_7sort_byNCINvNtB11_4sort18arg_sort_ascendingBX_mINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4d_5BlockRSBX_E3new0EE0E0ECskY9G75ZWc4U_11polars_expr:bb.a
  %.val.i19.i = load i16, ptr %i.ei, align 2, !dbg !52234, !alias.scope !52063, !noalias !52071 ; 5 uses
  %i.ej = and i16 %.sroa.0.0.val.i.i, 32767, !dbg !52235 ; 2 uses
  %i.ek = icmp samesign ugt i16 %i.ej, 31744, !dbg !52235
  br i1 %i.ek, label %bb.ay, label %bb.at, !dbg !52236

bb.at:                                            ; preds = %.lr.ph.i.i
  %i.el = and i16 %.val.i19.i, 32767, !dbg !52237
  %i.em = icmp samesign ugt i16 %i.el, 31744, !dbg !52237
  br i1 %i.em, label %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit.thread.i.i, label %bb.au, !dbg !52238

bb.au:                                            ; preds = %bb.at
  %.not.i4.i.i.i20.i = icmp sgt i16 %.val.i19.i, -1, !dbg !52239 ; 2 uses
  %i.en = icmp sgt i16 %.sroa.0.0.val.i.i, -1, !dbg !52240
  br i1 %i.en, label %bb.av, label %bb.aw, !dbg !52240

bb.av:                                            ; preds = %bb.au
  %.not22.i.i.i26.i = icmp samesign ult i16 %.sroa.0.0.val.i.i, %.val.i19.i
  %or.cond.i.i27.i = select i1 %.not.i4.i.i.i20.i, i1 %.not22.i.i.i26.i, i1 false, !dbg !52240
  br i1 %or.cond.i.i27.i, label %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit.thread.i.i, label %bb.ay, !dbg !52240

bb.aw:                                            ; preds = %bb.au
  br i1 %.not.i4.i.i.i20.i, label %.split.i.i.i24.i, label %bb.ax, !dbg !52240

.split.i.i.i24.i:                                 ; preds = %bb.aw
  %i.eo = or i16 %i.ej, %.val.i19.i, !dbg !52241
  %.not.i.i.i25.i = icmp eq i16 %i.eo, 0, !dbg !52241
  br i1 %.not.i.i.i25.i, label %bb.ay, label %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit.thread.i.i, !dbg !52242

bb.ax:                                            ; preds = %bb.aw
  %.not21.i.i.i21.i = icmp samesign ult i16 %.val.i19.i, %.sroa.0.0.val.i.i, !dbg !52243
  br i1 %.not21.i.i.i21.i, label %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit.thread.i.i, label %bb.ay, !dbg !52242

bb.ay:                                            ; preds = %bb.ax, %.split.i.i.i24.i, %bb.av, %.lr.ph.i.i
  br label %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit.thread.i.i, !dbg !52244

_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit.thread.i.i: ; preds = %bb.ay, %bb.ax, %.split.i.i.i24.i, %bb.av, %bb.at
  %i.ep = phi i64 [ 1, %bb.ay ], [ 0, %bb.ax ], [ 0, %bb.at ], [ 0, %.split.i.i.i24.i ], [ 0, %bb.av ]
  %.sroa.0.0.i.i.i2.i22.i = phi i64 [ 0, %bb.ay ], [ 1, %bb.ax ], [ 1, %bb.at ], [ 1, %.split.i.i.i24.i ], [ 1, %bb.av ]
  %.sroa.05.0.i.i = phi ptr [ %i.ei, %bb.ay ], [ %.sroa.0.04.i.i, %bb.ax ], [ %.sroa.0.04.i.i, %bb.at ], [ %.sroa.0.04.i.i, %.split.i.i.i24.i ], [ %.sroa.0.04.i.i, %bb.av ], !dbg !52245
  %i.eq = load i64, ptr %.sroa.05.0.i.i, align 4, !dbg !52246, !alias.scope !52064, !noalias !52072
  store i64 %i.eq, ptr %i.eh, align 4, !dbg !52246, !alias.scope !52062, !noalias !52073
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %i.ep, !dbg !52247 ; 3 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.04.i.i, i64 %.sroa.0.0.i.i.i2.i22.i, !dbg !52248 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.eh, i64 8, !dbg !52249 ; 2 uses
  %i.eu = icmp ne ptr %i.er, %i.dm, !dbg !52250
  %i.ev = icmp ne ptr %i.es, %i.m
  %or.cond.i23.i = select i1 %i.eu, i1 %i.ev, i1 false, !dbg !52250
  br i1 %or.cond.i23.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtCs2mZqlW55729_12polars_utils7float164pf16mEE10merge_downNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1a_7sort_byNCINvNtB1f_4sort18arg_sort_ascendingB1b_mINtNtNtNtBb_4iter8adapters3map3MapINtNtNtBb_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4G_5BlockRSB1b_E3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit.i, !dbg !52250

_RINvMNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtCs2mZqlW55729_12polars_utils7float164pf16mEE10merge_downNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1a_7sort_byNCINvNtB1f_4sort18arg_sort_ascendingB1b_mINtNtNtNtBb_4iter8adapters3map3MapINtNtNtBb_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4G_5BlockRSB1b_E3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit.i: ; preds = %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit.thread.i.i, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit.i.i
  %.sroa.13.1.i = phi ptr [ %i.ec, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit.i.i ], [ %i.et, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit.thread.i.i ], !dbg !52251
  %.sroa.7.0.i = phi ptr [ %i.ee, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit.i.i ], [ %i.dm, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit.thread.i.i ], !dbg !52252
  %.sroa.0.1.i = phi ptr [ %2, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit.i.i ], [ %i.er, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSTNtNtCs2mZqlW55729_12polars_utils7float164pf16mE7sort_byNCINvNtBD_4sort18arg_sort_ascendingBz_mINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3t_5BlockRSBz_E3new0EE0E0CskY9G75ZWc4U_11polars_expr.exit.thread.i.i ], !dbg !52252 ; 2 uses
  %i.ew = ptrtoint ptr %.sroa.7.0.i to i64, !dbg !52253
  %i.ex = ptrtoint ptr %.sroa.0.1.i to i64, !dbg !52253
  %i.ey = sub nuw i64 %i.ew, %i.ex, !dbg !52253
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.13.1.i, ptr align 4 %.sroa.0.1.i, i64 %i.ey, i1 false), !dbg !52254, !alias.scope !52064, !noalias !52074
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5merge5mergeTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSBX_7sort_byNCINvNtB12_4sort18arg_sort_ascendingBY_mINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4e_5BlockRSBY_E3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !52255

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5merge5mergeTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSBX_7sort_byNCINvNtB12_4sort18arg_sort_ascendingBY_mINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4e_5BlockRSBY_E3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.al, %bb.am, %_RINvMNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtCs2mZqlW55729_12polars_utils7float164pf16mEE10merge_downNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1a_7sort_byNCINvNtB1f_4sort18arg_sort_ascendingB1b_mINtNtNtNtBb_4iter8adapters3map3MapINtNtNtBb_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4G_5BlockRSB1b_E3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit.i
  %i.ez = shl nuw nsw i64 %i.ct, 1, !dbg !52256
  %i.fa = or disjoint i64 %i.ez, 1, !dbg !52256
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift13logical_mergeTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB16_7sort_byNCINvNtB1b_4sort18arg_sort_ascendingB17_mINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4p_5BlockRSB17_E3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !52197

bb.az:                                            ; preds = %bb.aj
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.cr, !dbg !52257
  %i.fc = or i64 %i.cs, 1, !dbg !52258
  %i.fd = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.fc, i1 true), !dbg !52259
  %i.fe = trunc nuw nsw i64 %i.fd to i32, !dbg !52259
  %i.ff = shl nuw nsw i32 %i.fe, 1, !dbg !52260
  %i.fg = xor i32 %i.ff, 126, !dbg !52260
  tail call void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB15_7sort_byNCINvNtB1a_4sort18arg_sort_ascendingB16_mINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4o_5BlockRSB16_E3new0EE0E0ECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 4 %i.fb, i64 noundef range(i64 0, 1152921504606846976) %i.cs, ptr noalias noundef nonnull align 4 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.fg, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5) #44, !dbg !52261, !inline_history !51904
  br label %bb.al, !dbg !52262

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift13logical_mergeTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB16_7sort_byNCINvNtB1b_4sort18arg_sort_ascendingB17_mINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4p_5BlockRSB17_E3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.ai, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5merge5mergeTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSBX_7sort_byNCINvNtB12_4sort18arg_sort_ascendingBY_mINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4e_5BlockRSBY_E3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit
  %.sroa.0.0.i = phi i64 [ %i.fa, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5merge5mergeTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSBX_7sort_byNCINvNtB12_4sort18arg_sort_ascendingBY_mINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4e_5BlockRSBY_E3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit ], [ %i.db, %bb.ai ], !dbg !52263 ; 2 uses
  %i.fh = icmp ugt i64 %i.ck, 1, !dbg !52097
  br i1 %i.fh, label %bb.af, label %._crit_edge, !dbg !52097

bb.ba:                                            ; preds = %._crit_edge
  %i.fi = add nuw nsw i64 %.sroa.02.1.lcssa, 1, !dbg !52264
  %i.fj = lshr i64 %.sroa.018.0, 1, !dbg !52265
  %i.fk = add nuw i64 %i.fj, %.sroa.09.0, !dbg !52266
  br label %bb.f, !dbg !52091

bb.bb:                                            ; preds = %._crit_edge
  %i.fl = and i64 %.sroa.023.1.lcssa, 1, !dbg !52267
  %.not31 = icmp eq i64 %i.fl, 0, !dbg !52268
  br i1 %.not31, label %bb.bc, label %bb.bd, !dbg !52268

bb.bc:                                            ; preds = %bb.bb
  %i.fm = or i64 %1, 1, !dbg !52269
  %i.fn = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.fm, i1 true), !dbg !52270
  %i.fo = trunc nuw nsw i64 %i.fn to i32, !dbg !52270
  %i.fp = shl nuw nsw i32 %i.fo, 1, !dbg !52271
  %i.fq = xor i32 %i.fp, 126, !dbg !52271
  tail call void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTNtNtCs2mZqlW55729_12polars_utils7float164pf16mENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB15_7sort_byNCINvNtB1a_4sort18arg_sort_ascendingB16_mINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4o_5BlockRSB16_E3new0EE0E0ECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull align 4 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.fq, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5) #44, !dbg !52272, !inline_history !51904
  br label %bb.bd, !dbg !52273

bb.bd:                                            ; preds = %bb.bb, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !52274
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !52275
  br label %bb.be, !dbg !52276

bb.be:                                            ; preds = %bb.a, %bb.bd
  ret void, !dbg !52276
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift4sortTdmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSBW_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingdmINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3R_5BlockRSdE3new0EE0E0ECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i1 noundef zeroext %4, ptr noalias noundef align 8 dereferenceable(8) %5) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !52277 {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2, !dbg !52582
  br i1 %i.c, label %bb.ae, label %bb.b, !dbg !52582

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1, !dbg !52583
  %i.e = urem i64 4611686018427387904, %1, !dbg !52584
  %.not = icmp ne i64 %i.e, 0, !dbg !52585
  %i.f = zext i1 %.not to i64, !dbg !52585
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f, !dbg !52585 ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097, !dbg !52586
  br i1 %i.g, label %bb.d, label %bb.c, !dbg !52586

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1), !dbg !52587
  br label %bb.e, !dbg !52587

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1, !dbg !52588
  %i.j = sub nuw nsw i64 %1, %i.i, !dbg !52589
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64), !dbg !52590
  br label %bb.e, !dbg !52591

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ], !dbg !52592 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !52593
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !52594
  %.not5.i93 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i98 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f, !dbg !52595

bb.f:                                             ; preds = %bb.aa, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.aa ], !dbg !52596 ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.ei, %bb.aa ], !dbg !52597 ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.eg, %bb.aa ], !dbg !52598 ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1, !dbg !52599 ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g, !dbg !52599

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift10create_runTdmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB13_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingdmINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3Z_5BlockRSdE3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit
  %.sroa.021.0 = phi i8 [ %i.bq, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift10create_runTdmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB13_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingdmINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3Z_5BlockRSdE3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit ], [ 0, %bb.f ], !dbg !52600 ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift10create_runTdmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB13_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingdmINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3Z_5BlockRSdE3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit ], [ 1, %bb.f ], !dbg !52600 ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1, !dbg !52601
  br i1 %i.l, label %.lr.ph65, label %._crit_edge, !dbg !52601

.lr.ph65:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r, !dbg !52601

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0, !dbg !52602 ; 11 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0, !dbg !52603 ; 9 uses
  %.not.i33 = icmp ult i64 %i.n, %.sroa.01.0, !dbg !52604
  br i1 %.not.i33, label %bb.i, label %bb.j, !dbg !52604

bb.i:                                             ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runTdmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB12_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingdmINtNtNtNtB8_4iter8adapters3map3MapINtNtNtB8_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3Y_5BlockRSdE3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit.i.thread96, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runTdmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB12_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingdmINtNtNtNtB8_4iter8adapters3map3MapINtNtNtB8_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3Y_5BlockRSdE3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit.i.thread, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runTdmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB12_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingdmINtNtNtNtB8_4iter8adapters3map3MapINtNtNtB8_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3Y_5BlockRSdE3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o, !dbg !52605

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2, !dbg !52606
  br i1 %i.p, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTdmE7reverseCskY9G75ZWc4U_11polars_expr.exit, label %bb.k, !dbg !52606

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !52607
  %.val10.i = load double, ptr %i.q, align 8, !dbg !52608, !alias.scope !52538, !noalias !52539, !noundef !4431 ; 4 uses
  %.val11.i = load double, ptr %i.o, align 8, !dbg !52608, !alias.scope !52540, !noalias !52541, !noundef !4431
  %i.r = fcmp ord double %.val10.i, 0.000000e+00, !dbg !52609
  %i.s = fcmp ult double %.val10.i, %.val11.i, !dbg !52610
  %.not2.i.i.i40 = and i1 %i.r, %i.s, !dbg !52611 ; 2 uses
  %.not72 = icmp eq i64 %i.n, 2, !dbg !52612      ; 2 uses
  br i1 %.not2.i.i.i40, label %.preheader, label %.preheader50, !dbg !52613

.preheader50:                                     ; preds = %bb.k
  br i1 %.not72, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runTdmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB12_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingdmINtNtNtNtB8_4iter8adapters3map3MapINtNtNtB8_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3Y_5BlockRSdE3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit.i.thread, label %.lr.ph, !dbg !52614

.preheader:                                       ; preds = %bb.k
  br i1 %.not72, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runTdmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB12_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingdmINtNtNtNtB8_4iter8adapters3map3MapINtNtNtB8_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3Y_5BlockRSdE3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit.i.thread96, label %.lr.ph59, !dbg !52615

.lr.ph:                                           ; preds = %.preheader50, %bb.l
  %.val9.i = phi double [ %.val8.i, %bb.l ], [ %.val10.i, %.preheader50 ], !dbg !52616
  %.sroa.01.0.i.i55 = phi i64 [ %i.w, %bb.l ], [ 2, %.preheader50 ] ; 3 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.01.0.i.i55, !dbg !52617
  %.val8.i = load double, ptr %i.t, align 8, !dbg !52616, !alias.scope !52538, !noalias !52539, !noundef !4431 ; 3 uses
  %i.u = fcmp ord double %.val8.i, 0.000000e+00, !dbg !52618
  %i.v = fcmp ult double %.val8.i, %.val9.i, !dbg !52619
  %.not2.i.i.i39 = and i1 %i.u, %i.v, !dbg !52620
  br i1 %.not2.i.i.i39, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runTdmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB12_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingdmINtNtNtNtB8_4iter8adapters3map3MapINtNtNtB8_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3Y_5BlockRSdE3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit.i, label %bb.l, !dbg !52616

bb.l:                                             ; preds = %.lr.ph
  %i.w = add nuw nsw i64 %.sroa.01.0.i.i55, 1, !dbg !52621 ; 2 uses
  %exitcond.not = icmp eq i64 %i.w, %i.n, !dbg !52614
  br i1 %exitcond.not, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runTdmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB12_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingdmINtNtNtNtB8_4iter8adapters3map3MapINtNtNtB8_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3Y_5BlockRSdE3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit.i, label %.lr.ph, !dbg !52614

.lr.ph59:                                         ; preds = %.preheader, %bb.m
  %.val7.i = phi double [ %.val.i, %bb.m ], [ %.val10.i, %.preheader ], !dbg !52622
  %.sroa.01.1.i.i58 = phi i64 [ %i.aa, %bb.m ], [ 2, %.preheader ] ; 3 uses
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.01.1.i.i58, !dbg !52623
  %.val.i = load double, ptr %i.x, align 8, !dbg !52622, !alias.scope !52538, !noalias !52539, !noundef !4431 ; 3 uses
  %i.y = fcmp ord double %.val.i, 0.000000e+00, !dbg !52624
  %i.z = fcmp ult double %.val.i, %.val7.i, !dbg !52625
  %.not2.i.i.i = and i1 %i.y, %i.z, !dbg !52626
  br i1 %.not2.i.i.i, label %bb.m, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runTdmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB12_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingdmINtNtNtNtB8_4iter8adapters3map3MapINtNtNtB8_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3Y_5BlockRSdE3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit.i, !dbg !52622

bb.m:                                             ; preds = %.lr.ph59
  %i.aa = add nuw nsw i64 %.sroa.01.1.i.i58, 1, !dbg !52627 ; 2 uses
  %exitcond79.not = icmp eq i64 %i.aa, %i.n, !dbg !52615
  br i1 %exitcond79.not, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runTdmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB12_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingdmINtNtNtNtB8_4iter8adapters3map3MapINtNtNtB8_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3Y_5BlockRSdE3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit.i, label %.lr.ph59, !dbg !52615

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runTdmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB12_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingdmINtNtNtNtB8_4iter8adapters3map3MapINtNtNtB8_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3Y_5BlockRSdE3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph59
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i58, %.lr.ph59 ], [ %i.n, %bb.m ], [ %.sroa.01.0.i.i55, %.lr.ph ], [ %i.n, %bb.l ], !dbg !52628 ; 6 uses
  %i.ab = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n, !dbg !52629
  tail call void @llvm.assume(i1 %i.ab), !dbg !52630
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0, !dbg !52631
  br i1 %.not5.i, label %bb.i, label %bb.n, !dbg !52631

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runTdmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB12_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingdmINtNtNtNtB8_4iter8adapters3map3MapINtNtNtB8_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3Y_5BlockRSdE3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit.i.thread96: ; preds = %.preheader
  br i1 %.not5.i98, label %bb.i, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTdmE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i.i, !dbg !52631

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runTdmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB12_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingdmINtNtNtNtB8_4iter8adapters3map3MapINtNtNtB8_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3Y_5BlockRSdE3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit.i.thread: ; preds = %.preheader50
  br i1 %.not5.i93, label %bb.i, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTdmE7reverseCskY9G75ZWc4U_11polars_expr.exit, !dbg !52631

bb.n:                                             ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runTdmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB12_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingdmINtNtNtNtB8_4iter8adapters3map3MapINtNtNtB8_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3Y_5BlockRSdE3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit.i
  br i1 %.not2.i.i.i40, label %bb.q, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTdmE7reverseCskY9G75ZWc4U_11polars_expr.exit, !dbg !52632

bb.o:                                             ; preds = %bb.i
  %.sroa.0.0.i38 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 576460752303423488) %i.n, i64 %.sroa.01.0), !dbg !52633
  %i.ac = shl nuw nsw i64 %.sroa.0.0.i38, 1, !dbg !52634
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift10create_runTdmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB13_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingdmINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3Z_5BlockRSdE3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !52635

bb.p:                                             ; preds = %bb.i
  %.sroa.0.0.i37 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 576460752303423488) %i.n, i64 32), !dbg !52636 ; 2 uses
  tail call void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTdmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB15_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingdmINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB41_5BlockRSdE3new0EE0E0ECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 %i.o, i64 noundef %.sroa.0.0.i37, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5) #44, !dbg !52637, !inline_history !52355
  %i.ad = shl nuw nsw i64 %.sroa.0.0.i37, 1, !dbg !52638
  %i.ae = or disjoint i64 %i.ad, 1, !dbg !52638
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift10create_runTdmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB13_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingdmINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3Z_5BlockRSdE3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !52635

_RNvMNtCscgRAwXFJnXP_4core5sliceSTdmE7reverseCskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSTdmE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !52639
  br i1 %lcmp.mod.not, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTdmE7reverseCskY9G75ZWc4U_11polars_expr.exit, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTdmE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.i.epil.preheader, !dbg !52639

_RNvMNtCscgRAwXFJnXP_4core5sliceSTdmE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.i.epil.preheader: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSTdmE7reverseCskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTdmE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i.i
  %.sroa.0.016.i.i.epil.init = phi i64 [ 0, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTdmE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i.i ], [ %i.bh, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTdmE7reverseCskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod124 = trunc i64 %i.ap to i1, !dbg !52639
  tail call void @llvm.assume(i1 %lcmp.mod124), !dbg !52639
  %i.af = xor i64 %.sroa.0.016.i.i.epil.init, -1, !dbg !52640
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.016.i.i.epil.init, !dbg !52641 ; 3 uses
  %i.ah = getelementptr [16 x i8], ptr %i.aq, i64 %i.af, !dbg !52642 ; 3 uses
  %i.ai = load double, ptr %i.ag, align 8, !dbg !52643, !alias.scope !52544, !noalias !52545, !noundef !4431
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8, !dbg !52643
  %i.ak = load i32, ptr %i.aj, align 8, !dbg !52643, !alias.scope !52544, !noalias !52545, !noundef !4431
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 16, i1 false), !dbg !52643, !alias.scope !52546, !noalias !52547
  store double %i.ai, ptr %i.ah, align 8, !dbg !52643, !alias.scope !52548, !noalias !52549
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 8, !dbg !52643
  store i32 %i.ak, ptr %i.al, align 8, !dbg !52643, !alias.scope !52548, !noalias !52549
  br label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTdmE7reverseCskY9G75ZWc4U_11polars_expr.exit, !dbg !52644

_RNvMNtCscgRAwXFJnXP_4core5sliceSTdmE7reverseCskY9G75ZWc4U_11polars_expr.exit: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSTdmE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.i.epil.preheader, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTdmE7reverseCskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runTdmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB12_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingdmINtNtNtNtB8_4iter8adapters3map3MapINtNtNtB8_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3Y_5BlockRSdE3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i4548 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runTdmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB12_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingdmINtNtNtNtB8_4iter8adapters3map3MapINtNtNtB8_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3Y_5BlockRSdE3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit.i.thread ], [ %.sroa.0.0.i.i94101105, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTdmE7reverseCskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa ], [ %.sroa.0.0.i.i94101105, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTdmE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.i.epil.preheader ]
  %i.am = shl nuw nsw i64 %.sroa.0.0.i.i4548, 1, !dbg !52644
  %i.an = or disjoint i64 %i.am, 1, !dbg !52644
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift10create_runTdmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB13_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingdmINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3Z_5BlockRSdE3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !52645

bb.q:                                             ; preds = %bb.n
  %i.ao = lshr i64 %.sroa.0.0.i.i, 1, !dbg !52646 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52550), !dbg !52647, !noalias !52547
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52551), !dbg !52647, !noalias !52547
  %.not.i.i = icmp eq i64 %i.ao, 0, !dbg !52639
  br i1 %.not.i.i, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTdmE7reverseCskY9G75ZWc4U_11polars_expr.exit, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTdmE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i.i, !dbg !52639

_RNvMNtCscgRAwXFJnXP_4core5sliceSTdmE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runTdmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB12_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingdmINtNtNtNtB8_4iter8adapters3map3MapINtNtNtB8_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3Y_5BlockRSdE3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit.i.thread96, %bb.q
  %i.ap = phi i64 [ %i.ao, %bb.q ], [ 1, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runTdmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB12_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingdmINtNtNtNtB8_4iter8adapters3map3MapINtNtNtB8_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3Y_5BlockRSdE3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit.i.thread96 ] ; 4 uses
  %.sroa.0.0.i.i94101105 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runTdmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB12_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingdmINtNtNtNtB8_4iter8adapters3map3MapINtNtNtB8_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3Y_5BlockRSdE3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit.i.thread96 ] ; 3 uses
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.0.i.i94101105, !dbg !52648 ; 3 uses
  %xtraiter = and i64 %i.ap, 1, !dbg !52639
  %i.ar = icmp eq i64 %i.ap, 1, !dbg !52639
  br i1 %i.ar, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTdmE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.i.epil.preheader, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTdmE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i.i.new, !dbg !52639

_RNvMNtCscgRAwXFJnXP_4core5sliceSTdmE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i.i.new: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSTdmE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i.i
  %unroll_iter = and i64 %i.ap, 9223372036854775806, !dbg !52639
  br label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTdmE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.i, !dbg !52639

_RNvMNtCscgRAwXFJnXP_4core5sliceSTdmE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.i: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSTdmE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.i, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTdmE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i.i.new
  %.sroa.0.016.i.i = phi i64 [ 0, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTdmE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i.i.new ], [ %i.bh, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTdmE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTdmE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i.i.new ], [ %niter.next.1, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTdmE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.i ]
  %i.as = xor i64 %.sroa.0.016.i.i, -1, !dbg !52640
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.016.i.i, !dbg !52641 ; 3 uses
  %i.au = getelementptr [16 x i8], ptr %i.aq, i64 %i.as, !dbg !52642 ; 3 uses
  %i.av = load double, ptr %i.at, align 8, !dbg !52643, !alias.scope !52544, !noalias !52545, !noundef !4431
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 8, !dbg !52643
  %i.ax = load i32, ptr %i.aw, align 8, !dbg !52643, !alias.scope !52544, !noalias !52545, !noundef !4431
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef nonnull align 8 dereferenceable(16) %i.au, i64 16, i1 false), !dbg !52643, !alias.scope !52546, !noalias !52547
  store double %i.av, ptr %i.au, align 8, !dbg !52643, !alias.scope !52548, !noalias !52549
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 8, !dbg !52643
  store i32 %i.ax, ptr %i.ay, align 8, !dbg !52643, !alias.scope !52548, !noalias !52549
  %i.az = xor i64 %.sroa.0.016.i.i, -2, !dbg !52640
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.016.i.i, !dbg !52641 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16, !dbg !52641 ; 2 uses
  %i.bc = getelementptr [16 x i8], ptr %i.aq, i64 %i.az, !dbg !52642 ; 3 uses
  %i.bd = load double, ptr %i.bb, align 8, !dbg !52643, !alias.scope !52544, !noalias !52545, !noundef !4431
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 24, !dbg !52643
  %i.bf = load i32, ptr %i.be, align 8, !dbg !52643, !alias.scope !52544, !noalias !52545, !noundef !4431
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i64 16, i1 false), !dbg !52643, !alias.scope !52546, !noalias !52547
  store double %i.bd, ptr %i.bc, align 8, !dbg !52643, !alias.scope !52548, !noalias !52549
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 8, !dbg !52643
  store i32 %i.bf, ptr %i.bg, align 8, !dbg !52643, !alias.scope !52548, !noalias !52549
  %i.bh = add nuw nsw i64 %.sroa.0.016.i.i, 2, !dbg !52649 ; 2 uses
  %niter.next.1 = add i64 %niter, 2, !dbg !52639  ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !52639
  br i1 %niter.ncmp.1, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTdmE7reverseCskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTdmE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.i, !dbg !52639

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift10create_runTdmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB13_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingdmINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3Z_5BlockRSdE3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTdmE7reverseCskY9G75ZWc4U_11polars_expr.exit
  %.sroa.0.0.i34 = phi i64 [ %i.an, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTdmE7reverseCskY9G75ZWc4U_11polars_expr.exit ], [ %i.ae, %bb.p ], [ %i.ac, %bb.o ], !dbg !52650 ; 2 uses
  %i.bi = lshr i64 %.sroa.023.0, 1, !dbg !52651
  %i.bj = lshr i64 %.sroa.0.0.i34, 1, !dbg !52652
  %factor = shl nuw nsw i64 %.sroa.09.0, 1, !dbg !52653 ; 2 uses
  %i.bk = sub nsw i64 %factor, %i.bi, !dbg !52653
  %i.bl = add nuw nsw i64 %i.bj, %factor, !dbg !52654
  %i.bm = mul i64 %i.bk, %.sroa.0.0, !dbg !52655
  %i.bn = mul i64 %i.bl, %.sroa.0.0, !dbg !52656
  %i.bo = xor i64 %i.bn, %i.bm, !dbg !52657
  %i.bp = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bo, i1 false), !dbg !52658
  %i.bq = trunc nuw nsw i64 %i.bp to i8, !dbg !52657
  br label %bb.g, !dbg !52659

bb.r:                                             ; preds = %.lr.ph65, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift13logical_mergeTdmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB16_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingdmINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB42_5BlockRSdE3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit
  %.sroa.02.164 = phi i64 [ %.sroa.02.0, %.lr.ph65 ], [ %i.br, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift13logical_mergeTdmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB16_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingdmINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB42_5BlockRSdE3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit ] ; 2 uses
  %.sroa.023.163 = phi i64 [ %.sroa.023.0, %.lr.ph65 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift13logical_mergeTdmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB16_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingdmINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB42_5BlockRSdE3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit ] ; 4 uses
  %i.br = add i64 %.sroa.02.164, -1, !dbg !52660  ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.br, !dbg !52661
  %i.bt = load i8, ptr %i.bs, align 1, !dbg !52662, !noundef !4431
  %.not29 = icmp ult i8 %i.bt, %.sroa.021.0, !dbg !52662
  br i1 %.not29, label %._crit_edge, label %bb.s, !dbg !52662

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift13logical_mergeTdmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB16_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingdmINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB42_5BlockRSdE3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.163, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift13logical_mergeTdmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB16_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingdmINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB42_5BlockRSdE3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit ], !dbg !52596 ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.164, %bb.r ], [ 1, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift13logical_mergeTdmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB16_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingdmINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB42_5BlockRSdE3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit ], !dbg !52598 ; 3 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa, !dbg !52663
  store i64 %.sroa.023.1.lcssa, ptr %i.bu, align 8, !dbg !52664
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa, !dbg !52665
  store i8 %.sroa.021.0, ptr %i.bv, align 1, !dbg !52666
  br i1 %i.k, label %bb.aa, label %bb.ab, !dbg !52667

bb.s:                                             ; preds = %bb.r
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.br, !dbg !52668
  %i.bx = load i64, ptr %i.bw, align 8, !dbg !52669, !noundef !4431 ; 3 uses
  %i.by = lshr i64 %i.bx, 1, !dbg !52670          ; 8 uses
  %i.bz = lshr i64 %.sroa.023.163, 1, !dbg !52671 ; 6 uses
  %i.ca = add nuw i64 %i.by, %i.bz, !dbg !52672   ; 4 uses
  %i.cb = sub i64 %.sroa.09.0, %i.ca, !dbg !52673
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.cb, !dbg !52674 ; 6 uses
  %i.cd = icmp samesign ugt i64 %i.ca, %3, !dbg !52675
  %i.ce = trunc i64 %.sroa.023.163 to i1
  %i.cf = or i64 %i.bx, %.sroa.023.163, !dbg !52676
  %i.cg = trunc i64 %i.cf to i1, !dbg !52676
  %or.cond3.i = or i1 %i.cd, %i.cg, !dbg !52676
  br i1 %or.cond3.i, label %bb.t, label %bb.u, !dbg !52676

bb.t:                                             ; preds = %bb.s
  %i.ch = trunc i64 %i.bx to i1
  br i1 %i.ch, label %bb.v, label %bb.w, !dbg !52677

bb.u:                                             ; preds = %bb.s
  %i.ci = shl nuw nsw i64 %i.ca, 1, !dbg !52678
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift13logical_mergeTdmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB16_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingdmINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB42_5BlockRSdE3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !52679

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.ce, label %bb.x, label %bb.z, !dbg !52680

bb.w:                                             ; preds = %bb.t
  %i.cj = or i64 %i.by, 1, !dbg !52681
  %i.ck = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cj, i1 true), !dbg !52682
  %i.cl = trunc nuw nsw i64 %i.ck to i32, !dbg !52682
  %i.cm = shl nuw nsw i32 %i.cl, 1, !dbg !52683
  %i.cn = xor i32 %i.cm, 126, !dbg !52683
  tail call void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTdmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB15_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingdmINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB41_5BlockRSdE3new0EE0E0ECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 %i.cc, i64 noundef range(i64 0, 576460752303423488) %i.by, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.cn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5) #44, !dbg !52684, !inline_history !52415
  br label %bb.v, !dbg !52685

bb.x:                                             ; preds = %bb.z, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52565), !dbg !52686
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52566), !dbg !52686
  %i.co = icmp eq i64 %i.by, 0, !dbg !52687
  %i.cp = icmp eq i64 %i.bz, 0
  %or.cond.i = or i1 %i.cp, %i.co, !dbg !52687
  br i1 %or.cond.i, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5merge5mergeTdmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSBX_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingdmINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3S_5BlockRSdE3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit, label %bb.y, !dbg !52687

bb.y:                                             ; preds = %bb.x
  %.sroa.0.0.i.i35 = tail call i64 @llvm.umin.i64(i64 %i.bz, i64 range(i64 0, -9223372036854775808) %i.by), !dbg !52688 ; 2 uses
  %i.cq = icmp samesign ult i64 %3, %.sroa.0.0.i.i35, !dbg !52689
  br i1 %i.cq, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5merge5mergeTdmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSBX_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingdmINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3S_5BlockRSdE3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit, label %.critedge.i, !dbg !52689

.critedge.i:                                      ; preds = %bb.y
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %i.cc, i64 %i.by, !dbg !52690 ; 3 uses
  %.not.i36 = icmp samesign ugt i64 %i.by, %i.bz, !dbg !52691 ; 2 uses
  %spec.select.i = select i1 %.not.i36, ptr %i.cr, ptr %i.cc, !dbg !52692
  %i.cs = shl nuw nsw i64 %.sroa.0.0.i.i35, 4, !dbg !52693 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.cs, i1 false), !dbg !52693, !alias.scope !52567
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 %i.cs, !dbg !52694 ; 3 uses
  br i1 %.not.i36, label %.preheader.i, label %.lr.ph.i.i, !dbg !52695

.preheader.i:                                     ; preds = %.critedge.i, %.preheader.i
  %i.cu = phi ptr [ %i.df, %.preheader.i ], [ %i.ct, %.critedge.i ], !dbg !52696
  %i.cv = phi ptr [ %i.dd, %.preheader.i ], [ %i.cr, %.critedge.i ], !dbg !52697
  %.sroa.0.0.i17.i = phi ptr [ %i.cy, %.preheader.i ], [ %i.m, %.critedge.i ]
  %i.cw = getelementptr inbounds i8, ptr %i.cv, i64 -16, !dbg !52696 ; 3 uses
  %i.cx = getelementptr inbounds i8, ptr %i.cu, i64 -16, !dbg !52698 ; 3 uses
  %i.cy = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -16, !dbg !52699 ; 2 uses
  %.val.i.i = load double, ptr %i.cx, align 8, !dbg !52700, !alias.scope !52568, !noalias !52569, !noundef !4431 ; 2 uses
  %.val10.i.i = load double, ptr %i.cw, align 8, !dbg !52700, !alias.scope !52570, !noalias !52571, !noundef !4431
  %i.cz = fcmp ord double %.val.i.i, 0.000000e+00, !dbg !52701
  %i.da = fcmp ult double %.val.i.i, %.val10.i.i, !dbg !52702
  %.not2.i.i.i.i.i = and i1 %i.cz, %i.da, !dbg !52703 ; 3 uses
  %..i.i = select i1 %.not2.i.i.i.i.i, ptr %i.cw, ptr %i.cx, !dbg !52704
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cy, ptr noundef nonnull align 8 dereferenceable(16) %..i.i, i64 16, i1 false), !dbg !52705, !alias.scope !52567, !noalias !52572
  %i.db = xor i1 %.not2.i.i.i.i.i, true, !dbg !52706
  %i.dc = zext i1 %i.db to i64, !dbg !52706
  %i.dd = getelementptr inbounds nuw [16 x i8], ptr %i.cw, i64 %i.dc, !dbg !52707 ; 3 uses
  %i.de = zext i1 %.not2.i.i.i.i.i to i64, !dbg !52708
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %i.cx, i64 %i.de, !dbg !52709 ; 3 uses
  %i.dg = icmp eq ptr %i.dd, %i.cc, !dbg !52710
  %i.dh = icmp eq ptr %i.df, %2
  %or.cond.i.i = select i1 %i.dg, i1 true, i1 %i.dh, !dbg !52710
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5mergeINtB3_10MergeStateTdmEE10merge_downNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1a_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingdmINtNtNtNtBb_4iter8adapters3map3MapINtNtNtBb_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4j_5BlockRSdE3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit.i, label %.preheader.i, !dbg !52710

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.lr.ph.i.i
  %i.di = phi ptr [ %i.dr, %.lr.ph.i.i ], [ %i.cc, %.critedge.i ], !dbg !52711 ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.dq, %.lr.ph.i.i ], [ %i.cr, %.critedge.i ] ; 3 uses
  %i.dj = phi ptr [ %i.do, %.lr.ph.i.i ], [ %2, %.critedge.i ] ; 3 uses
  %.sroa.0.0.val.i.i = load double, ptr %.sroa.0.02.i.i, align 8, !dbg !52711, !alias.scope !52573, !noalias !52574, !noundef !4431 ; 2 uses
  %.val.i19.i = load double, ptr %i.dj, align 8, !dbg !52711, !alias.scope !52575, !noalias !52576, !noundef !4431
  %i.dk = fcmp ord double %.sroa.0.0.val.i.i, 0.000000e+00, !dbg !52712
  %i.dl = fcmp ult double %.sroa.0.0.val.i.i, %.val.i19.i, !dbg !52713
  %.not2.i.i.i.i20.i = and i1 %i.dk, %i.dl, !dbg !52714 ; 3 uses
  %i.dm = xor i1 %.not2.i.i.i.i20.i, true, !dbg !52715
  %spec.select.i.i = select i1 %.not2.i.i.i.i20.i, ptr %.sroa.0.02.i.i, ptr %i.dj, !dbg !52716
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.di, ptr noundef nonnull align 8 dereferenceable(16) %spec.select.i.i, i64 16, i1 false), !dbg !52717, !alias.scope !52567, !noalias !52577
  %i.dn = zext i1 %i.dm to i64, !dbg !52718
  %i.do = getelementptr inbounds nuw [16 x i8], ptr %i.dj, i64 %i.dn, !dbg !52719 ; 3 uses
  %i.dp = zext i1 %.not2.i.i.i.i20.i to i64, !dbg !52720
  %i.dq = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.02.i.i, i64 %i.dp, !dbg !52721 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.di, i64 16, !dbg !52722 ; 2 uses
  %i.ds = icmp ne ptr %i.do, %i.ct, !dbg !52723
  %i.dt = icmp ne ptr %i.dq, %i.m
  %or.cond.i21.i = select i1 %i.ds, i1 %i.dt, i1 false, !dbg !52723
  br i1 %or.cond.i21.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5mergeINtB3_10MergeStateTdmEE10merge_downNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1a_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingdmINtNtNtNtBb_4iter8adapters3map3MapINtNtNtBb_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4j_5BlockRSdE3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit.i, !dbg !52723

_RINvMNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5mergeINtB3_10MergeStateTdmEE10merge_downNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1a_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingdmINtNtNtNtBb_4iter8adapters3map3MapINtNtNtBb_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4j_5BlockRSdE3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit.i: ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.dd, %.preheader.i ], [ %i.dr, %.lr.ph.i.i ], !dbg !52724
  %.sroa.7.0.i = phi ptr [ %i.df, %.preheader.i ], [ %i.ct, %.lr.ph.i.i ], !dbg !52725
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.do, %.lr.ph.i.i ], !dbg !52725 ; 2 uses
  %i.du = ptrtoint ptr %.sroa.7.0.i to i64, !dbg !52726
  %i.dv = ptrtoint ptr %.sroa.0.1.i to i64, !dbg !52726
  %i.dw = sub nuw i64 %i.du, %i.dv, !dbg !52726
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.dw, i1 false), !dbg !52727, !alias.scope !52567, !noalias !52578
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5merge5mergeTdmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSBX_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingdmINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3S_5BlockRSdE3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !52728

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5merge5mergeTdmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSBX_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingdmINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3S_5BlockRSdE3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.x, %bb.y, %_RINvMNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5mergeINtB3_10MergeStateTdmEE10merge_downNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1a_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingdmINtNtNtNtBb_4iter8adapters3map3MapINtNtNtBb_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4j_5BlockRSdE3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit.i
  %i.dx = shl nuw nsw i64 %i.ca, 1, !dbg !52729
  %i.dy = or disjoint i64 %i.dx, 1, !dbg !52729
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift13logical_mergeTdmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB16_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingdmINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB42_5BlockRSdE3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !52679

bb.z:                                             ; preds = %bb.v
  %i.dz = getelementptr inbounds nuw [16 x i8], ptr %i.cc, i64 %i.by, !dbg !52730
  %i.ea = or i64 %i.bz, 1, !dbg !52731
  %i.eb = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.ea, i1 true), !dbg !52732
  %i.ec = trunc nuw nsw i64 %i.eb to i32, !dbg !52732
  %i.ed = shl nuw nsw i32 %i.ec, 1, !dbg !52733
  %i.ee = xor i32 %i.ed, 126, !dbg !52733
  tail call void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTdmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB15_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingdmINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB41_5BlockRSdE3new0EE0E0ECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 %i.dz, i64 noundef range(i64 0, 576460752303423488) %i.bz, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.ee, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5) #44, !dbg !52734, !inline_history !52415
  br label %bb.x, !dbg !52735

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift13logical_mergeTdmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB16_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingdmINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB42_5BlockRSdE3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.u, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5merge5mergeTdmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSBX_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingdmINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3S_5BlockRSdE3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit
  %.sroa.0.0.i = phi i64 [ %i.dy, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5merge5mergeTdmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSBX_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingdmINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3S_5BlockRSdE3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit ], [ %i.ci, %bb.u ], !dbg !52736 ; 2 uses
  %i.ef = icmp ugt i64 %i.br, 1, !dbg !52601
  br i1 %i.ef, label %bb.r, label %._crit_edge, !dbg !52601

bb.aa:                                            ; preds = %._crit_edge
  %i.eg = add nuw nsw i64 %.sroa.02.1.lcssa, 1, !dbg !52737
  %i.eh = lshr i64 %.sroa.018.0, 1, !dbg !52738
  %i.ei = add nuw i64 %i.eh, %.sroa.09.0, !dbg !52739
  br label %bb.f, !dbg !52595

bb.ab:                                            ; preds = %._crit_edge
  %i.ej = and i64 %.sroa.023.1.lcssa, 1, !dbg !52740
  %.not31 = icmp eq i64 %i.ej, 0, !dbg !52741
  br i1 %.not31, label %bb.ac, label %bb.ad, !dbg !52741

bb.ac:                                            ; preds = %bb.ab
  %i.ek = or i64 %1, 1, !dbg !52742
  %i.el = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.ek, i1 true), !dbg !52743
  %i.em = trunc nuw nsw i64 %i.el to i32, !dbg !52743
  %i.en = shl nuw nsw i32 %i.em, 1, !dbg !52744
  %i.eo = xor i32 %i.en, 126, !dbg !52744
  tail call void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTdmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB15_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingdmINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB41_5BlockRSdE3new0EE0E0ECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.eo, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5) #44, !dbg !52745, !inline_history !52415
  br label %bb.ad, !dbg !52746

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !52747
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !52748
  br label %bb.ae, !dbg !52749

bb.ae:                                            ; preds = %bb.a, %bb.ad
  ret void, !dbg !52749
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift4sortTfmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSBW_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingfmINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3R_5BlockRSfE3new0EE0E0ECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull align 4 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i1 noundef zeroext %4, ptr noalias noundef align 8 dereferenceable(8) %5) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !52750 {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2, !dbg !53058
  br i1 %i.c, label %bb.ae, label %bb.b, !dbg !53058

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1, !dbg !53059
  %i.e = urem i64 4611686018427387904, %1, !dbg !53060
  %.not = icmp ne i64 %i.e, 0, !dbg !53061
  %i.f = zext i1 %.not to i64, !dbg !53061
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f, !dbg !53061 ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097, !dbg !53062
  br i1 %i.g, label %bb.d, label %bb.c, !dbg !53062

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1), !dbg !53063
  br label %bb.e, !dbg !53063

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1, !dbg !53064
  %i.j = sub nuw nsw i64 %1, %i.i, !dbg !53065
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64), !dbg !53066
  br label %bb.e, !dbg !53067

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ], !dbg !53068 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !53069
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !53070
  %.not5.i93 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i98 = icmp ugt i64 %.sroa.01.0, 2
  %scevgep = getelementptr i8, ptr %0, i64 -8, !dbg !53071
  br label %bb.f, !dbg !53071

bb.f:                                             ; preds = %bb.aa, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.aa ], !dbg !53072 ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.fa, %bb.aa ], !dbg !53073 ; 8 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ey, %bb.aa ], !dbg !53074 ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1, !dbg !53075 ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g, !dbg !53075

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift10create_runTfmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB13_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingfmINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3Z_5BlockRSfE3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit
  %.sroa.021.0 = phi i8 [ %i.cg, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift10create_runTfmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB13_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingfmINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3Z_5BlockRSfE3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit ], [ 0, %bb.f ], !dbg !53076 ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift10create_runTfmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB13_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingfmINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3Z_5BlockRSfE3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit ], [ 1, %bb.f ], !dbg !53076 ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1, !dbg !53077
  br i1 %i.l, label %.lr.ph65, label %._crit_edge, !dbg !53077

.lr.ph65:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r, !dbg !53077

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0, !dbg !53078 ; 11 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0, !dbg !53079 ; 10 uses
  %.not.i33 = icmp ult i64 %i.n, %.sroa.01.0, !dbg !53080
  br i1 %.not.i33, label %bb.i, label %bb.j, !dbg !53080

bb.i:                                             ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runTfmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB12_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingfmINtNtNtNtB8_4iter8adapters3map3MapINtNtNtB8_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3Y_5BlockRSfE3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit.i.thread96, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runTfmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB12_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingfmINtNtNtNtB8_4iter8adapters3map3MapINtNtNtB8_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3Y_5BlockRSfE3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit.i.thread, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runTfmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB12_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingfmINtNtNtNtB8_4iter8adapters3map3MapINtNtNtB8_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3Y_5BlockRSfE3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o, !dbg !53081

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2, !dbg !53082
  br i1 %i.p, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTfmE7reverseCskY9G75ZWc4U_11polars_expr.exit, label %bb.k, !dbg !53082

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !53083
  %.val10.i = load float, ptr %i.q, align 4, !dbg !53084, !alias.scope !53013, !noalias !53014, !noundef !4431 ; 4 uses
  %.val11.i = load float, ptr %i.o, align 4, !dbg !53084, !alias.scope !53015, !noalias !53016, !noundef !4431
  %i.r = fcmp ord float %.val10.i, 0.000000e+00, !dbg !53085
  %i.s = fcmp ult float %.val10.i, %.val11.i, !dbg !53086
  %.not2.i.i.i40 = and i1 %i.r, %i.s, !dbg !53087 ; 2 uses
  %.not72 = icmp eq i64 %i.n, 2, !dbg !53088      ; 2 uses
  br i1 %.not2.i.i.i40, label %.preheader, label %.preheader50, !dbg !53089

.preheader50:                                     ; preds = %bb.k
  br i1 %.not72, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runTfmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB12_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingfmINtNtNtNtB8_4iter8adapters3map3MapINtNtNtB8_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3Y_5BlockRSfE3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit.i.thread, label %.lr.ph, !dbg !53090

.preheader:                                       ; preds = %bb.k
  br i1 %.not72, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runTfmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB12_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingfmINtNtNtNtB8_4iter8adapters3map3MapINtNtNtB8_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3Y_5BlockRSfE3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit.i.thread96, label %.lr.ph59, !dbg !53091

.lr.ph:                                           ; preds = %.preheader50, %bb.l
  %.val9.i = phi float [ %.val8.i, %bb.l ], [ %.val10.i, %.preheader50 ], !dbg !53092
  %.sroa.01.0.i.i55 = phi i64 [ %i.w, %bb.l ], [ 2, %.preheader50 ] ; 3 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.01.0.i.i55, !dbg !53093
  %.val8.i = load float, ptr %i.t, align 4, !dbg !53092, !alias.scope !53013, !noalias !53014, !noundef !4431 ; 3 uses
  %i.u = fcmp ord float %.val8.i, 0.000000e+00, !dbg !53094
  %i.v = fcmp ult float %.val8.i, %.val9.i, !dbg !53095
  %.not2.i.i.i39 = and i1 %i.u, %i.v, !dbg !53096
  br i1 %.not2.i.i.i39, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runTfmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB12_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingfmINtNtNtNtB8_4iter8adapters3map3MapINtNtNtB8_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3Y_5BlockRSfE3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit.i, label %bb.l, !dbg !53092

bb.l:                                             ; preds = %.lr.ph
  %i.w = add nuw nsw i64 %.sroa.01.0.i.i55, 1, !dbg !53097 ; 2 uses
  %exitcond.not = icmp eq i64 %i.w, %i.n, !dbg !53090
  br i1 %exitcond.not, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runTfmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB12_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingfmINtNtNtNtB8_4iter8adapters3map3MapINtNtNtB8_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3Y_5BlockRSfE3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit.i, label %.lr.ph, !dbg !53090

.lr.ph59:                                         ; preds = %.preheader, %bb.m
  %.val7.i = phi float [ %.val.i, %bb.m ], [ %.val10.i, %.preheader ], !dbg !53098
  %.sroa.01.1.i.i58 = phi i64 [ %i.aa, %bb.m ], [ 2, %.preheader ] ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.01.1.i.i58, !dbg !53099
  %.val.i = load float, ptr %i.x, align 4, !dbg !53098, !alias.scope !53013, !noalias !53014, !noundef !4431 ; 3 uses
  %i.y = fcmp ord float %.val.i, 0.000000e+00, !dbg !53100
  %i.z = fcmp ult float %.val.i, %.val7.i, !dbg !53101
  %.not2.i.i.i = and i1 %i.y, %i.z, !dbg !53102
  br i1 %.not2.i.i.i, label %bb.m, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runTfmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB12_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingfmINtNtNtNtB8_4iter8adapters3map3MapINtNtNtB8_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3Y_5BlockRSfE3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit.i, !dbg !53098

bb.m:                                             ; preds = %.lr.ph59
  %i.aa = add nuw nsw i64 %.sroa.01.1.i.i58, 1, !dbg !53103 ; 2 uses
  %exitcond79.not = icmp eq i64 %i.aa, %i.n, !dbg !53091
  br i1 %exitcond79.not, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runTfmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB12_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingfmINtNtNtNtB8_4iter8adapters3map3MapINtNtNtB8_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3Y_5BlockRSfE3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit.i, label %.lr.ph59, !dbg !53091

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runTfmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB12_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingfmINtNtNtNtB8_4iter8adapters3map3MapINtNtNtB8_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3Y_5BlockRSfE3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph59
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i58, %.lr.ph59 ], [ %i.n, %bb.m ], [ %.sroa.01.0.i.i55, %.lr.ph ], [ %i.n, %bb.l ], !dbg !53104 ; 6 uses
  %i.ab = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n, !dbg !53105
  tail call void @llvm.assume(i1 %i.ab), !dbg !53106
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0, !dbg !53107
  br i1 %.not5.i, label %bb.i, label %bb.n, !dbg !53107

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runTfmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB12_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingfmINtNtNtNtB8_4iter8adapters3map3MapINtNtNtB8_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3Y_5BlockRSfE3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit.i.thread96: ; preds = %.preheader
  br i1 %.not5.i98, label %bb.i, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTfmE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i.i, !dbg !53107

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runTfmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB12_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingfmINtNtNtNtB8_4iter8adapters3map3MapINtNtNtB8_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3Y_5BlockRSfE3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit.i.thread: ; preds = %.preheader50
  br i1 %.not5.i93, label %bb.i, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTfmE7reverseCskY9G75ZWc4U_11polars_expr.exit, !dbg !53107

bb.n:                                             ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runTfmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB12_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingfmINtNtNtNtB8_4iter8adapters3map3MapINtNtNtB8_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3Y_5BlockRSfE3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit.i
  br i1 %.not2.i.i.i40, label %bb.q, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTfmE7reverseCskY9G75ZWc4U_11polars_expr.exit, !dbg !53108

bb.o:                                             ; preds = %bb.i
  %.sroa.0.0.i38 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.n, i64 %.sroa.01.0), !dbg !53109
  %i.ac = shl nuw nsw i64 %.sroa.0.0.i38, 1, !dbg !53110
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift10create_runTfmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB13_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingfmINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3Z_5BlockRSfE3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !53111

bb.p:                                             ; preds = %bb.i
  %.sroa.0.0.i37 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.n, i64 32), !dbg !53112 ; 2 uses
  tail call void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortTfmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB15_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingfmINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB41_5BlockRSfE3new0EE0E0ECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 4 %i.o, i64 noundef %.sroa.0.0.i37, ptr noalias noundef nonnull align 4 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef 0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5) #44, !dbg !53113, !inline_history !52828
  %i.ad = shl nuw nsw i64 %.sroa.0.0.i37, 1, !dbg !53114
  %i.ae = or disjoint i64 %i.ad, 1, !dbg !53114
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift10create_runTfmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB13_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingfmINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3Z_5BlockRSfE3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !53111

_RNvMNtCscgRAwXFJnXP_4core5sliceSTfmE7reverseCskY9G75ZWc4U_11polars_expr.exit: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSTfmE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.i.prol.loopexit, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTfmE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.i, %middle.block, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runTfmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB12_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingfmINtNtNtNtB8_4iter8adapters3map3MapINtNtNtB8_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3Y_5BlockRSfE3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i4548 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runTfmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB12_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingfmINtNtNtNtB8_4iter8adapters3map3MapINtNtNtB8_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3Y_5BlockRSfE3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit.i.thread ], [ %.sroa.0.0.i.i94101105, %middle.block ], [ %.sroa.0.0.i.i94101105, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTfmE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.i ], [ %.sroa.0.0.i.i94101105, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTfmE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.i.prol.loopexit ]
  %i.af = shl nuw nsw i64 %.sroa.0.0.i.i4548, 1, !dbg !53115
  %i.ag = or disjoint i64 %i.af, 1, !dbg !53115
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift10create_runTfmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB13_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingfmINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3Z_5BlockRSfE3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !53116

bb.q:                                             ; preds = %bb.n
  %i.ah = lshr i64 %.sroa.0.0.i.i, 1, !dbg !53117 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53019), !dbg !53118, !noalias !53020
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53021), !dbg !53118, !noalias !53020
  %.not.i.i = icmp eq i64 %i.ah, 0, !dbg !53119
  br i1 %.not.i.i, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTfmE7reverseCskY9G75ZWc4U_11polars_expr.exit, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTfmE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i.i, !dbg !53119

_RNvMNtCscgRAwXFJnXP_4core5sliceSTfmE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runTfmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB12_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingfmINtNtNtNtB8_4iter8adapters3map3MapINtNtNtB8_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3Y_5BlockRSfE3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit.i.thread96, %bb.q
  %i.ai = phi i64 [ %i.ah, %bb.q ], [ 1, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runTfmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB12_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingfmINtNtNtNtB8_4iter8adapters3map3MapINtNtNtB8_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3Y_5BlockRSfE3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit.i.thread96 ] ; 7 uses
  %.sroa.0.0.i.i94101105 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runTfmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB12_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingfmINtNtNtNtB8_4iter8adapters3map3MapINtNtNtB8_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3Y_5BlockRSfE3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit.i.thread96 ] ; 5 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.0.i.i94101105, !dbg !53120 ; 4 uses
  %min.iters.check = icmp samesign ult i64 %i.ai, 18, !dbg !53119
  br i1 %min.iters.check, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTfmE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.i.preheader, label %vector.scevcheck, !dbg !53119

vector.scevcheck:                                 ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSTfmE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i.i
  %i.ak = add nsw i64 %i.ai, -1, !dbg !53119      ; 2 uses
  %i.al = add i64 %.sroa.0.0.i.i94101105, %.sroa.09.0, !dbg !53119
  %i.am = shl i64 %i.al, 3, !dbg !53119
  %scevgep118 = getelementptr i8, ptr %scevgep, i64 %i.am, !dbg !53119 ; 2 uses
  %mul.result.neg = mul i64 %i.ak, -8, !dbg !53119
  %mul.overflow = icmp ugt i64 %i.ak, 2305843009213693951, !dbg !53119
  %i.an = getelementptr i8, ptr %scevgep118, i64 %mul.result.neg, !dbg !53119
  %i.ao = icmp ugt ptr %i.an, %scevgep118, !dbg !53119
  %i.ap = or i1 %i.ao, %mul.overflow, !dbg !53119
  br i1 %i.ap, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTfmE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.i.preheader, label %vector.ph, !dbg !53121

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.ai, 4611686018427387902     ; 3 uses
  br label %vector.body, !dbg !53121

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !53121 ; 3 uses
  %i.aq = xor i64 %index, -1, !dbg !53122
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index, !dbg !53123 ; 2 uses
  %i.as = getelementptr [8 x i8], ptr %i.aj, i64 %i.aq, !dbg !53124 ; 2 uses
  %wide.vec122 = load <4 x i32>, ptr %i.ar, align 4, !dbg !53125, !alias.scope !53022, !noalias !53023
  %i.at = getelementptr i8, ptr %i.as, i64 -8, !dbg !53125
  %wide.load = load <2 x i64>, ptr %i.at, align 4, !dbg !53125, !alias.scope !53024, !noalias !53025
  %reverse = shufflevector <2 x i64> %wide.load, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !53125
  store <2 x i64> %reverse, ptr %i.ar, align 4, !dbg !53125, !alias.scope !53022, !noalias !53023
  %i.au = getelementptr inbounds i8, ptr %i.as, i64 -8, !dbg !53125
  %interleaved.vec = shufflevector <4 x i32> %wide.vec122, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>, !dbg !53125
  store <4 x i32> %interleaved.vec, ptr %i.au, align 4, !dbg !53125, !alias.scope !53024, !noalias !53025
  %index.next = add nuw i64 %index, 2, !dbg !53121 ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec, !dbg !53119
  br i1 %i.av, label %middle.block, label %vector.body, !dbg !53119, !llvm.loop !52855

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ai, %n.vec, !dbg !53119
  br i1 %cmp.n, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTfmE7reverseCskY9G75ZWc4U_11polars_expr.exit, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTfmE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.i.preheader, !dbg !53119

_RNvMNtCscgRAwXFJnXP_4core5sliceSTfmE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.i.preheader: ; preds = %vector.scevcheck, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTfmE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i.i, %middle.block
  %.sroa.0.016.i.i.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTfmE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i.i ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.sroa.0.016.i.i.ph, 1, !dbg !53119
  %xtraiter = and i64 %i.ai, 1, !dbg !53119
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !53119
  br i1 %lcmp.mod.not, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTfmE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.i.prol.loopexit, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTfmE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.i.prol, !dbg !53119

_RNvMNtCscgRAwXFJnXP_4core5sliceSTfmE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.i.prol: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSTfmE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.i.preheader
  %i.aw = xor i64 %.sroa.0.016.i.i.ph, -1, !dbg !53122
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.016.i.i.ph, !dbg !53123 ; 3 uses
  %i.ay = getelementptr [8 x i8], ptr %i.aj, i64 %i.aw, !dbg !53124 ; 3 uses
  %i.az = load float, ptr %i.ax, align 4, !dbg !53125, !alias.scope !53022, !noalias !53023, !noundef !4431
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 4, !dbg !53125
  %i.bb = load i32, ptr %i.ba, align 4, !dbg !53125, !alias.scope !53022, !noalias !53023, !noundef !4431
  %i.bc = load i64, ptr %i.ay, align 4, !dbg !53125, !alias.scope !53024, !noalias !53025
  store i64 %i.bc, ptr %i.ax, align 4, !dbg !53125, !alias.scope !53022, !noalias !53023
  store float %i.az, ptr %i.ay, align 4, !dbg !53125, !alias.scope !53024, !noalias !53025
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 4, !dbg !53125
  store i32 %i.bb, ptr %i.bd, align 4, !dbg !53125, !alias.scope !53024, !noalias !53025
  %i.be = or disjoint i64 %.sroa.0.016.i.i.ph, 1, !dbg !53121
  br label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTfmE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.i.prol.loopexit, !dbg !53119

_RNvMNtCscgRAwXFJnXP_4core5sliceSTfmE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.i.prol.loopexit: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSTfmE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.i.prol, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTfmE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.i.preheader
  %.sroa.0.016.i.i.unr = phi i64 [ %.sroa.0.016.i.i.ph, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTfmE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.i.preheader ], [ %i.be, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTfmE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.i.prol ]
  %i.bf = icmp eq i64 %i.ai, %.neg, !dbg !53119
  br i1 %i.bf, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTfmE7reverseCskY9G75ZWc4U_11polars_expr.exit, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTfmE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.i, !dbg !53119

_RNvMNtCscgRAwXFJnXP_4core5sliceSTfmE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.i: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSTfmE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.i.prol.loopexit, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTfmE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.bx, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTfmE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.i ], [ %.sroa.0.016.i.i.unr, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTfmE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.i.prol.loopexit ] ; 5 uses
  %i.bg = xor i64 %.sroa.0.016.i.i, -1, !dbg !53122
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.016.i.i, !dbg !53123 ; 3 uses
  %i.bi = getelementptr [8 x i8], ptr %i.aj, i64 %i.bg, !dbg !53124 ; 3 uses
  %i.bj = load float, ptr %i.bh, align 4, !dbg !53125, !alias.scope !53022, !noalias !53023, !noundef !4431
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 4, !dbg !53125
  %i.bl = load i32, ptr %i.bk, align 4, !dbg !53125, !alias.scope !53022, !noalias !53023, !noundef !4431
  %i.bm = load i64, ptr %i.bi, align 4, !dbg !53125, !alias.scope !53024, !noalias !53025
  store i64 %i.bm, ptr %i.bh, align 4, !dbg !53125, !alias.scope !53022, !noalias !53023
  store float %i.bj, ptr %i.bi, align 4, !dbg !53125, !alias.scope !53024, !noalias !53025
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 4, !dbg !53125
  store i32 %i.bl, ptr %i.bn, align 4, !dbg !53125, !alias.scope !53024, !noalias !53025
  %i.bo = sub i64 -2, %.sroa.0.016.i.i, !dbg !53122
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.016.i.i, !dbg !53123 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8, !dbg !53123 ; 2 uses
  %i.br = getelementptr [8 x i8], ptr %i.aj, i64 %i.bo, !dbg !53124 ; 3 uses
  %i.bs = load float, ptr %i.bq, align 4, !dbg !53125, !alias.scope !53022, !noalias !53023, !noundef !4431
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 12, !dbg !53125
  %i.bu = load i32, ptr %i.bt, align 4, !dbg !53125, !alias.scope !53022, !noalias !53023, !noundef !4431
  %i.bv = load i64, ptr %i.br, align 4, !dbg !53125, !alias.scope !53024, !noalias !53025
  store i64 %i.bv, ptr %i.bq, align 4, !dbg !53125, !alias.scope !53022, !noalias !53023
  store float %i.bs, ptr %i.br, align 4, !dbg !53125, !alias.scope !53024, !noalias !53025
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 4, !dbg !53125
  store i32 %i.bu, ptr %i.bw, align 4, !dbg !53125, !alias.scope !53024, !noalias !53025
  %i.bx = add nuw nsw i64 %.sroa.0.016.i.i, 2, !dbg !53121 ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.bx, %i.ai, !dbg !53119
  br i1 %exitcond.not.i.i.1, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTfmE7reverseCskY9G75ZWc4U_11polars_expr.exit, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSTfmE12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.i, !dbg !53119, !llvm.loop !52856

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift10create_runTfmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB13_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingfmINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB3Z_5BlockRSfE3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTfmE7reverseCskY9G75ZWc4U_11polars_expr.exit
  %.sroa.0.0.i34 = phi i64 [ %i.ag, %_RNvMNtCscgRAwXFJnXP_4core5sliceSTfmE7reverseCskY9G75ZWc4U_11polars_expr.exit ], [ %i.ae, %bb.p ], [ %i.ac, %bb.o ], !dbg !53126 ; 2 uses
  %i.by = lshr i64 %.sroa.023.0, 1, !dbg !53127
  %i.bz = lshr i64 %.sroa.0.0.i34, 1, !dbg !53128
  %factor = shl nuw nsw i64 %.sroa.09.0, 1, !dbg !53129 ; 2 uses
  %i.ca = sub nsw i64 %factor, %i.by, !dbg !53129
  %i.cb = add nuw nsw i64 %i.bz, %factor, !dbg !53130
  %i.cc = mul i64 %i.ca, %.sroa.0.0, !dbg !53131
  %i.cd = mul i64 %i.cb, %.sroa.0.0, !dbg !53132
  %i.ce = xor i64 %i.cd, %i.cc, !dbg !53133
  %i.cf = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ce, i1 false), !dbg !53134
  %i.cg = trunc nuw nsw i64 %i.cf to i8, !dbg !53133
  br label %bb.g, !dbg !53135

bb.r:                                             ; preds = %.lr.ph65, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift13logical_mergeTfmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB16_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingfmINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB42_5BlockRSfE3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit
  %.sroa.02.164 = phi i64 [ %.sroa.02.0, %.lr.ph65 ], [ %i.ch, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift13logical_mergeTfmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB16_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingfmINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB42_5BlockRSfE3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit ] ; 2 uses
  %.sroa.023.163 = phi i64 [ %.sroa.023.0, %.lr.ph65 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift13logical_mergeTfmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB16_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingfmINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB42_5BlockRSfE3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit ] ; 4 uses
  %i.ch = add i64 %.sroa.02.164, -1, !dbg !53136  ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ch, !dbg !53137
  %i.cj = load i8, ptr %i.ci, align 1, !dbg !53138, !noundef !4431
  %.not29 = icmp ult i8 %i.cj, %.sroa.021.0, !dbg !53138
  br i1 %.not29, label %._crit_edge, label %bb.s, !dbg !53138

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift13logical_mergeTfmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB16_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingfmINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB42_5BlockRSfE3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.163, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift13logical_mergeTfmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB16_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingfmINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB42_5BlockRSfE3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit ], !dbg !53072 ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.164, %bb.r ], [ 1, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift13logical_mergeTfmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB16_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingfmINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB42_5BlockRSfE3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit ], !dbg !53074 ; 3 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa, !dbg !53139
  store i64 %.sroa.023.1.lcssa, ptr %i.ck, align 8, !dbg !53140
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa, !dbg !53141
  store i8 %.sroa.021.0, ptr %i.cl, align 1, !dbg !53142
  br i1 %i.k, label %bb.aa, label %bb.ab, !dbg !53143

bb.s:                                             ; preds = %bb.r
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ch, !dbg !53144
  %i.cn = load i64, ptr %i.cm, align 8, !dbg !53145, !noundef !4431 ; 3 uses
  %i.co = lshr i64 %i.cn, 1, !dbg !53146          ; 8 uses
  %i.cp = lshr i64 %.sroa.023.163, 1, !dbg !53147 ; 6 uses
  %i.cq = add nuw i64 %i.co, %i.cp, !dbg !53148   ; 4 uses
  %i.cr = sub i64 %.sroa.09.0, %i.cq, !dbg !53149
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cr, !dbg !53150 ; 6 uses
  %i.ct = icmp samesign ugt i64 %i.cq, %3, !dbg !53151
  %i.cu = trunc i64 %.sroa.023.163 to i1
  %i.cv = or i64 %i.cn, %.sroa.023.163, !dbg !53152
  %i.cw = trunc i64 %i.cv to i1, !dbg !53152
  %or.cond3.i = or i1 %i.ct, %i.cw, !dbg !53152
  br i1 %or.cond3.i, label %bb.t, label %bb.u, !dbg !53152

bb.t:                                             ; preds = %bb.s
  %i.cx = trunc i64 %i.cn to i1
  br i1 %i.cx, label %bb.v, label %bb.w, !dbg !53153

bb.u:                                             ; preds = %bb.s
  %i.cy = shl nuw nsw i64 %i.cq, 1, !dbg !53154
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift13logical_mergeTfmENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB16_7sort_byNCINvNtCs2mZqlW55729_12polars_utils4sort18arg_sort_ascendingfmINtNtNtNtBa_4iter8adapters3map3MapINtNtNtBa_3ops5range5RangejENCNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB42_5BlockRSfE3new0EE0E0ECskY9G75ZWc4U_11polars_expr.exit, !dbg !53155

bb.v:                                             ; preds = %bb.w, %bb.t
end_hunk_2
begin_hunk_3_@_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift4sortmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1M_10WindowExprNtB1O_12PhysicalExpr23evaluate_on_groups_impls2_0E0EB1Q_:bb.a
  br i1 %i.c, label %bb.az, label %bb.b, !dbg !53583

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1, !dbg !53584
  %i.e = urem i64 4611686018427387904, %1, !dbg !53585
  %.not = icmp ne i64 %i.e, 0, !dbg !53586
  %i.f = zext i1 %.not to i64, !dbg !53586
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f, !dbg !53586 ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097, !dbg !53587
  br i1 %i.g, label %bb.d, label %bb.c, !dbg !53587

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1), !dbg !53588
  br label %bb.e, !dbg !53588

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1, !dbg !53589
  %i.j = sub nuw nsw i64 %1, %i.i, !dbg !53590
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64), !dbg !53591
  br label %bb.e, !dbg !53592

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ], !dbg !53593 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !53594
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !53595
  %.not5.i311 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i316 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f, !dbg !53596

bb.f:                                             ; preds = %bb.av, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.av ], !dbg !53597 ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.lg, %bb.av ], !dbg !53598 ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.le, %bb.av ], !dbg !53599 ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1, !dbg !53600 ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g, !dbg !53600

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift10create_runmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1T_10WindowExprNtB1V_12PhysicalExpr23evaluate_on_groups_impls2_0E0EB1X_.exit
  %.sroa.021.0 = phi i8 [ %i.dx, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift10create_runmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1T_10WindowExprNtB1V_12PhysicalExpr23evaluate_on_groups_impls2_0E0EB1X_.exit ], [ 0, %bb.f ], !dbg !53601 ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift10create_runmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1T_10WindowExprNtB1V_12PhysicalExpr23evaluate_on_groups_impls2_0E0EB1X_.exit ], [ 1, %bb.f ], !dbg !53601 ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1, !dbg !53602
  br i1 %i.l, label %.lr.ph182, label %._crit_edge, !dbg !53602

.lr.ph182:                                        ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.09.0 ; 4 uses
  br label %bb.ag, !dbg !53602

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0, !dbg !53603 ; 13 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.09.0, !dbg !53604 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53533), !dbg !53605
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53534), !dbg !53605
  %.not.i33 = icmp ult i64 %i.n, %.sroa.01.0, !dbg !53606
  br i1 %.not.i33, label %bb.i, label %bb.j, !dbg !53606

bb.i:                                             ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1S_10WindowExprNtB1U_12PhysicalExpr23evaluate_on_groups_impls2_0E0EB1W_.exit.i.thread314, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1S_10WindowExprNtB1U_12PhysicalExpr23evaluate_on_groups_impls2_0E0EB1W_.exit.i.thread, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1S_10WindowExprNtB1U_12PhysicalExpr23evaluate_on_groups_impls2_0E0EB1W_.exit.i, %bb.h
  br i1 %4, label %bb.ae, label %bb.ad, !dbg !53607

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2, !dbg !53608
  br i1 %i.p, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSm7reverseCskY9G75ZWc4U_11polars_expr.exit, label %bb.k, !dbg !53608

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 4, !dbg !53609
  %.val12.i = load ptr, ptr %5, align 8, !dbg !53610, !alias.scope !53534, !noalias !53535, !nonnull !4431, !align !4534, !noundef !4431 ; 4 uses
  %.val13.i = load i32, ptr %i.q, align 4, !dbg !53610, !alias.scope !53533, !noalias !53536, !noundef !4431 ; 4 uses
  %.val14.i = load i32, ptr %i.o, align 4, !dbg !53610, !alias.scope !53533, !noalias !53536 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53537), !dbg !53611, !noalias !53538
  %i.r = load ptr, ptr %.val12.i, align 8, !dbg !53612, !alias.scope !53537, !noalias !53538, !nonnull !4431, !align !4534, !noundef !4431 ; 8 uses
  %i.s = zext i32 %.val13.i to i64, !dbg !53613   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 12, !dbg !53614
  %i.u = load i32, ptr %i.t, align 4, !dbg !53614, !range !5168, !noalias !53539, !noundef !4431
  %i.v = icmp eq i32 %i.u, 1, !dbg !53615         ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 8, !dbg !53616
  %i.x = load i32, ptr %i.w, align 8, !dbg !53616, !noalias !53539, !noundef !4431 ; 12 uses
  %i.y = icmp ult i32 %.val13.i, %i.x, !dbg !53617 ; 2 uses
  br i1 %i.v, label %bb.l, label %.thread.i.i48, !dbg !53615

bb.l:                                             ; preds = %bb.k
  br i1 %i.y, label %bb.o, label %bb.m, !dbg !53617

.thread.i.i48:                                    ; preds = %bb.k
  br i1 %i.y, label %bb.n, label %bb.m, !dbg !53617

bb.m:                                             ; preds = %.thread.i.i48, %bb.l
  %i.z = zext i32 %i.x to i64, !dbg !53616
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.s, i64 noundef %i.z, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @82) #50, !dbg !53617, !noalias !53539
  unreachable, !dbg !53617

bb.n:                                             ; preds = %.thread.i.i48
  %i.aa = load ptr, ptr %i.r, align 8, !dbg !53618, !noalias !53539, !noundef !4431
  br label %bb.o, !dbg !53619

bb.o:                                             ; preds = %bb.n, %bb.l
  %.sroa.03.0.i.i49 = phi ptr [ %i.aa, %bb.n ], [ %i.r, %bb.l ], !dbg !53620 ; 2 uses
  %i.ab = zext i32 %.val14.i to i64, !dbg !53621  ; 2 uses
  %i.ac = icmp ult i32 %.val14.i, %i.x, !dbg !53622
  br i1 %i.ac, label %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls2_0E0BS_.exit54, label %bb.p, !dbg !53622

bb.p:                                             ; preds = %bb.o
  %i.ad = zext i32 %i.x to i64, !dbg !53623
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.ab, i64 noundef %i.ad, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @82) #50, !dbg !53622, !noalias !53539
  unreachable, !dbg !53622

_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls2_0E0BS_.exit54: ; preds = %bb.o
  %.in.in.i.i50 = getelementptr inbounds nuw [4 x i8], ptr %.sroa.03.0.i.i49, i64 %i.s, !dbg !53617
  %.in.i.i51 = load i32, ptr %.in.in.i.i50, align 4, !dbg !53617, !noalias !53539, !noundef !4431
  %i.ae = zext i32 %.in.i.i51 to i64, !dbg !53624 ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.sroa.03.0.i.i49, i64 %i.ab, !dbg !53622
  %i.ag = load i32, ptr %i.af, align 4, !dbg !53622, !noalias !53539, !noundef !4431
  %i.ah = zext i32 %i.ag to i64, !dbg !53625      ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.val12.i, i64 8, !dbg !53626
  %i.aj = load ptr, ptr %i.ai, align 8, !dbg !53626, !alias.scope !53537, !noalias !53538, !nonnull !4431, !align !5173, !noundef !4431 ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.val12.i, i64 16, !dbg !53626
  %i.al = load i64, ptr %i.ak, align 8, !dbg !53626, !alias.scope !53537, !noalias !53538, !noundef !4431 ; 6 uses
  %i.am = icmp ugt i64 %i.al, %i.ae, !dbg !53627
  tail call void @llvm.assume(i1 %i.am), !dbg !53628, !noalias !53538
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ae, !dbg !53629
  %i.ao = icmp ugt i64 %i.al, %i.ah, !dbg !53630
  tail call void @llvm.assume(i1 %i.ao), !dbg !53631, !noalias !53538
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ah, !dbg !53632
  %i.aq = load i32, ptr %i.an, align 4, !dbg !53633, !noalias !53539, !noundef !4431
  %i.ar = load i32, ptr %i.ap, align 4, !dbg !53634, !noalias !53539, !noundef !4431
  %i.as = tail call i8 @llvm.ucmp.i8.i32(i32 %i.aq, i32 %i.ar), !dbg !53635 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.val12.i, i64 24, !dbg !53636
  %i.au = load ptr, ptr %i.at, align 8, !dbg !53636, !alias.scope !53537, !noalias !53538, !nonnull !4431, !align !5173, !noundef !4431
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8, !dbg !53636
  %i.aw = load i8, ptr %i.av, align 4, !dbg !53636, !range !4826, !noalias !53539, !noundef !4431
  %i.ax = trunc nuw i8 %i.aw to i1, !dbg !53636   ; 3 uses
  %switch.offset.i.i52 = sub nsw i8 0, %i.as, !dbg !53636
  %.sroa.0.0.i.i53 = select i1 %i.ax, i8 %switch.offset.i.i52, i8 %i.as, !dbg !53636
  %i.ay = icmp eq i8 %.sroa.0.0.i.i53, -1, !dbg !53637 ; 2 uses
  %.not189 = icmp eq i64 %i.n, 2, !dbg !53638     ; 2 uses
  br i1 %i.ay, label %.preheader, label %.preheader70, !dbg !53639

.preheader70:                                     ; preds = %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls2_0E0BS_.exit54
  br i1 %.not189, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1S_10WindowExprNtB1U_12PhysicalExpr23evaluate_on_groups_impls2_0E0EB1W_.exit.i.thread, label %.lr.ph, !dbg !53640

.preheader:                                       ; preds = %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls2_0E0BS_.exit54
  br i1 %.not189, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1S_10WindowExprNtB1U_12PhysicalExpr23evaluate_on_groups_impls2_0E0EB1W_.exit.i.thread314, label %.lr.ph177, !dbg !53641

.lr.ph:                                           ; preds = %.preheader70, %bb.v
  %.val11.i = phi i32 [ %.val10.i, %bb.v ], [ %.val13.i, %.preheader70 ], !dbg !53642 ; 2 uses
  %.sroa.01.0.i.i174 = phi i64 [ %i.bv, %bb.v ], [ 2, %.preheader70 ] ; 4 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.sroa.01.0.i.i174, !dbg !53643
  %i.ba = add nsw i64 %.sroa.01.0.i.i174, -1, !dbg !53644
  %i.bb = icmp ult i64 %i.ba, %i.n, !dbg !53645
  tail call void @llvm.assume(i1 %i.bb), !dbg !53646
  %.val10.i = load i32, ptr %i.az, align 4, !dbg !53642, !alias.scope !53533, !noalias !53536, !noundef !4431 ; 3 uses
  %i.bc = zext i32 %.val10.i to i64, !dbg !53647  ; 2 uses
  %i.bd = icmp ult i32 %.val10.i, %i.x, !dbg !53648 ; 2 uses
  br i1 %i.v, label %bb.q, label %.thread.i.i41, !dbg !53649

bb.q:                                             ; preds = %.lr.ph
  br i1 %i.bd, label %bb.t, label %bb.r, !dbg !53648

.thread.i.i41:                                    ; preds = %.lr.ph
  br i1 %i.bd, label %bb.s, label %bb.r, !dbg !53648

bb.r:                                             ; preds = %.thread.i.i41, %bb.q
  %i.be = zext i32 %i.x to i64, !dbg !53650
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.bc, i64 noundef %i.be, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @82) #50, !dbg !53648, !noalias !53542
  unreachable, !dbg !53648

bb.s:                                             ; preds = %.thread.i.i41
  %i.bf = load ptr, ptr %i.r, align 8, !dbg !53651, !noalias !53542, !noundef !4431
  br label %bb.t, !dbg !53652

bb.t:                                             ; preds = %bb.s, %bb.q
  %.sroa.03.0.i.i42 = phi ptr [ %i.bf, %bb.s ], [ %i.r, %bb.q ], !dbg !53653 ; 2 uses
  %i.bg = zext i32 %.val11.i to i64, !dbg !53654  ; 2 uses
  %i.bh = icmp ult i32 %.val11.i, %i.x, !dbg !53655
  br i1 %i.bh, label %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls2_0E0BS_.exit47, label %bb.u, !dbg !53655

bb.u:                                             ; preds = %bb.t
  %i.bi = zext i32 %i.x to i64, !dbg !53656
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.bg, i64 noundef %i.bi, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @82) #50, !dbg !53655, !noalias !53542
  unreachable, !dbg !53655

_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls2_0E0BS_.exit47: ; preds = %bb.t
  %.in.in.i.i43 = getelementptr inbounds nuw [4 x i8], ptr %.sroa.03.0.i.i42, i64 %i.bc, !dbg !53648
  %.in.i.i44 = load i32, ptr %.in.in.i.i43, align 4, !dbg !53648, !noalias !53542, !noundef !4431
  %i.bj = zext i32 %.in.i.i44 to i64, !dbg !53657 ; 2 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.03.0.i.i42, i64 %i.bg, !dbg !53655
  %i.bl = load i32, ptr %i.bk, align 4, !dbg !53655, !noalias !53542, !noundef !4431
  %i.bm = zext i32 %i.bl to i64, !dbg !53658      ; 2 uses
  %i.bn = icmp ugt i64 %i.al, %i.bj, !dbg !53659
  tail call void @llvm.assume(i1 %i.bn), !dbg !53660, !noalias !53538
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.bj, !dbg !53661
  %i.bp = icmp ugt i64 %i.al, %i.bm, !dbg !53662
  tail call void @llvm.assume(i1 %i.bp), !dbg !53663, !noalias !53538
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.bm, !dbg !53664
  %i.br = load i32, ptr %i.bo, align 4, !dbg !53665, !noalias !53542, !noundef !4431
  %i.bs = load i32, ptr %i.bq, align 4, !dbg !53666, !noalias !53542, !noundef !4431
  %i.bt = tail call i8 @llvm.ucmp.i8.i32(i32 %i.br, i32 %i.bs), !dbg !53667 ; 2 uses
  %switch.offset.i.i45 = sub nsw i8 0, %i.bt, !dbg !53668
  %.sroa.0.0.i.i46 = select i1 %i.ax, i8 %switch.offset.i.i45, i8 %i.bt, !dbg !53668
  %i.bu = icmp eq i8 %.sroa.0.0.i.i46, -1, !dbg !53669
  br i1 %i.bu, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1S_10WindowExprNtB1U_12PhysicalExpr23evaluate_on_groups_impls2_0E0EB1W_.exit.i, label %bb.v, !dbg !53642

bb.v:                                             ; preds = %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls2_0E0BS_.exit47
  %i.bv = add nuw nsw i64 %.sroa.01.0.i.i174, 1, !dbg !53670 ; 2 uses
  %exitcond.not = icmp eq i64 %i.bv, %i.n, !dbg !53640
  br i1 %exitcond.not, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1S_10WindowExprNtB1U_12PhysicalExpr23evaluate_on_groups_impls2_0E0EB1W_.exit.i, label %.lr.ph, !dbg !53640

.lr.ph177:                                        ; preds = %.preheader, %bb.ab
  %.val8.i = phi i32 [ %.val7.i, %bb.ab ], [ %.val13.i, %.preheader ], !dbg !53671 ; 2 uses
  %.sroa.01.1.i.i176 = phi i64 [ %i.cs, %bb.ab ], [ 2, %.preheader ] ; 4 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.sroa.01.1.i.i176, !dbg !53672
  %i.bx = add nsw i64 %.sroa.01.1.i.i176, -1, !dbg !53673
  %i.by = icmp ult i64 %i.bx, %i.n, !dbg !53674
  tail call void @llvm.assume(i1 %i.by), !dbg !53675
  %.val7.i = load i32, ptr %i.bw, align 4, !dbg !53671, !alias.scope !53533, !noalias !53536, !noundef !4431 ; 3 uses
  %i.bz = zext i32 %.val7.i to i64, !dbg !53676   ; 2 uses
  %i.ca = icmp ult i32 %.val7.i, %i.x, !dbg !53677 ; 2 uses
  br i1 %i.v, label %bb.w, label %.thread.i.i, !dbg !53678

bb.w:                                             ; preds = %.lr.ph177
  br i1 %i.ca, label %bb.z, label %bb.x, !dbg !53677

.thread.i.i:                                      ; preds = %.lr.ph177
  br i1 %i.ca, label %bb.y, label %bb.x, !dbg !53677

bb.x:                                             ; preds = %.thread.i.i, %bb.w
  %i.cb = zext i32 %i.x to i64, !dbg !53679
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.bz, i64 noundef %i.cb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @82) #50, !dbg !53677, !noalias !53545
  unreachable, !dbg !53677

bb.y:                                             ; preds = %.thread.i.i
  %i.cc = load ptr, ptr %i.r, align 8, !dbg !53680, !noalias !53545, !noundef !4431
  br label %bb.z, !dbg !53681

bb.z:                                             ; preds = %bb.y, %bb.w
  %.sroa.03.0.i.i = phi ptr [ %i.cc, %bb.y ], [ %i.r, %bb.w ], !dbg !53682 ; 2 uses
  %i.cd = zext i32 %.val8.i to i64, !dbg !53683   ; 2 uses
  %i.ce = icmp ult i32 %.val8.i, %i.x, !dbg !53684
  br i1 %i.ce, label %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls2_0E0BS_.exit, label %bb.aa, !dbg !53684

bb.aa:                                            ; preds = %bb.z
  %i.cf = zext i32 %i.x to i64, !dbg !53685
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.cd, i64 noundef %i.cf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @82) #50, !dbg !53684, !noalias !53545
  unreachable, !dbg !53684

_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls2_0E0BS_.exit: ; preds = %bb.z
  %.in.in.i.i = getelementptr inbounds nuw [4 x i8], ptr %.sroa.03.0.i.i, i64 %i.bz, !dbg !53677
  %.in.i.i = load i32, ptr %.in.in.i.i, align 4, !dbg !53677, !noalias !53545, !noundef !4431
  %i.cg = zext i32 %.in.i.i to i64, !dbg !53686   ; 2 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %.sroa.03.0.i.i, i64 %i.cd, !dbg !53684
  %i.ci = load i32, ptr %i.ch, align 4, !dbg !53684, !noalias !53545, !noundef !4431
  %i.cj = zext i32 %i.ci to i64, !dbg !53687      ; 2 uses
  %i.ck = icmp ugt i64 %i.al, %i.cg, !dbg !53688
  tail call void @llvm.assume(i1 %i.ck), !dbg !53689, !noalias !53538
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.cg, !dbg !53690
  %i.cm = icmp ugt i64 %i.al, %i.cj, !dbg !53691
  tail call void @llvm.assume(i1 %i.cm), !dbg !53692, !noalias !53538
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.cj, !dbg !53693
  %i.co = load i32, ptr %i.cl, align 4, !dbg !53694, !noalias !53545, !noundef !4431
  %i.cp = load i32, ptr %i.cn, align 4, !dbg !53695, !noalias !53545, !noundef !4431
  %i.cq = tail call i8 @llvm.ucmp.i8.i32(i32 %i.co, i32 %i.cp), !dbg !53696 ; 2 uses
  %switch.offset.i.i = sub nsw i8 0, %i.cq, !dbg !53697
  %.sroa.0.0.i.i40 = select i1 %i.ax, i8 %switch.offset.i.i, i8 %i.cq, !dbg !53697
  %i.cr = icmp eq i8 %.sroa.0.0.i.i40, -1, !dbg !53698
  br i1 %i.cr, label %bb.ab, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1S_10WindowExprNtB1U_12PhysicalExpr23evaluate_on_groups_impls2_0E0EB1W_.exit.i, !dbg !53671

bb.ab:                                            ; preds = %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls2_0E0BS_.exit
  %i.cs = add nuw nsw i64 %.sroa.01.1.i.i176, 1, !dbg !53699 ; 2 uses
  %exitcond286.not = icmp eq i64 %i.cs, %i.n, !dbg !53641
  br i1 %exitcond286.not, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1S_10WindowExprNtB1U_12PhysicalExpr23evaluate_on_groups_impls2_0E0EB1W_.exit.i, label %.lr.ph177, !dbg !53641

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1S_10WindowExprNtB1U_12PhysicalExpr23evaluate_on_groups_impls2_0E0EB1W_.exit.i: ; preds = %bb.v, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls2_0E0BS_.exit47, %bb.ab, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls2_0E0BS_.exit
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i176, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls2_0E0BS_.exit ], [ %i.n, %bb.ab ], [ %.sroa.01.0.i.i174, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls2_0E0BS_.exit47 ], [ %i.n, %bb.v ], !dbg !53700 ; 6 uses
  %i.ct = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n, !dbg !53701
  tail call void @llvm.assume(i1 %i.ct), !dbg !53702
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0, !dbg !53703
  br i1 %.not5.i, label %bb.i, label %bb.ac, !dbg !53703

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1S_10WindowExprNtB1U_12PhysicalExpr23evaluate_on_groups_impls2_0E0EB1W_.exit.i.thread314: ; preds = %.preheader
  br i1 %.not5.i316, label %bb.i, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSm12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i.i, !dbg !53703

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1S_10WindowExprNtB1U_12PhysicalExpr23evaluate_on_groups_impls2_0E0EB1W_.exit.i.thread: ; preds = %.preheader70
  br i1 %.not5.i311, label %bb.i, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSm7reverseCskY9G75ZWc4U_11polars_expr.exit, !dbg !53703

bb.ac:                                            ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1S_10WindowExprNtB1U_12PhysicalExpr23evaluate_on_groups_impls2_0E0EB1W_.exit.i
  br i1 %i.ay, label %bb.af, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSm7reverseCskY9G75ZWc4U_11polars_expr.exit, !dbg !53704

bb.ad:                                            ; preds = %bb.i
  %.sroa.0.0.i39 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %i.n, i64 %.sroa.01.0), !dbg !53705
  %i.cu = shl nuw nsw i64 %.sroa.0.0.i39, 1, !dbg !53706
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift10create_runmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1T_10WindowExprNtB1V_12PhysicalExpr23evaluate_on_groups_impls2_0E0EB1X_.exit, !dbg !53707

bb.ae:                                            ; preds = %bb.i
  %.sroa.0.0.i38 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %i.n, i64 32), !dbg !53708 ; 2 uses
  tail call void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1V_10WindowExprNtB1X_12PhysicalExpr23evaluate_on_groups_impls2_0E0EB1Z_(ptr noalias noundef nonnull align 4 %i.o, i64 noundef %.sroa.0.0.i38, ptr noalias noundef nonnull align 4 %2, i64 noundef range(i64 0, 2305843009213693952) %3, i32 noundef 0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5) #44, !dbg !53709, !inline_history !53342
  %i.cv = shl nuw nsw i64 %.sroa.0.0.i38, 1, !dbg !53710
  %i.cw = or disjoint i64 %i.cv, 1, !dbg !53710
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift10create_runmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1T_10WindowExprNtB1V_12PhysicalExpr23evaluate_on_groups_impls2_0E0EB1X_.exit, !dbg !53707

_RNvMNtCscgRAwXFJnXP_4core5sliceSm7reverseCskY9G75ZWc4U_11polars_expr.exit: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSm12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.i, %middle.block, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1S_10WindowExprNtB1U_12PhysicalExpr23evaluate_on_groups_impls2_0E0EB1W_.exit.i.thread, %bb.j, %bb.af, %bb.ac
  %.sroa.0.0.i.i5962 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.ac ], [ %.sroa.0.0.i.i, %bb.af ], [ 2, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1S_10WindowExprNtB1U_12PhysicalExpr23evaluate_on_groups_impls2_0E0EB1W_.exit.i.thread ], [ %.sroa.0.0.i.i312319323, %middle.block ], [ %.sroa.0.0.i.i312319323, %_RNvMNtCscgRAwXFJnXP_4core5sliceSm12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.i ]
  %i.cx = shl nuw nsw i64 %.sroa.0.0.i.i5962, 1, !dbg !53711
  %i.cy = or disjoint i64 %i.cx, 1, !dbg !53711
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift10create_runmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1T_10WindowExprNtB1V_12PhysicalExpr23evaluate_on_groups_impls2_0E0EB1X_.exit, !dbg !53712

bb.af:                                            ; preds = %bb.ac
  %i.cz = lshr i64 %.sroa.0.0.i.i, 1, !dbg !53713 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53546), !dbg !53714, !noalias !53536
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53547), !dbg !53714, !noalias !53536
  %.not.i.i = icmp eq i64 %i.cz, 0, !dbg !53715
  br i1 %.not.i.i, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSm7reverseCskY9G75ZWc4U_11polars_expr.exit, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSm12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i.i, !dbg !53715

_RNvMNtCscgRAwXFJnXP_4core5sliceSm12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1S_10WindowExprNtB1U_12PhysicalExpr23evaluate_on_groups_impls2_0E0EB1W_.exit.i.thread314, %bb.af
  %i.da = phi i64 [ %i.cz, %bb.af ], [ 1, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1S_10WindowExprNtB1U_12PhysicalExpr23evaluate_on_groups_impls2_0E0EB1W_.exit.i.thread314 ] ; 4 uses
  %.sroa.0.0.i.i312319323 = phi i64 [ %.sroa.0.0.i.i, %bb.af ], [ 2, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1S_10WindowExprNtB1U_12PhysicalExpr23evaluate_on_groups_impls2_0E0EB1W_.exit.i.thread314 ] ; 3 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.sroa.0.0.i.i312319323, !dbg !53716 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.da, 8, !dbg !53715
  br i1 %min.iters.check, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSm12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.i.preheader, label %vector.ph, !dbg !53715

vector.ph:                                        ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSm12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i.i
  %n.vec = and i64 %i.da, 9223372036854775800     ; 3 uses
  br label %vector.body, !dbg !53715

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !53717 ; 3 uses
  %i.dc = xor i64 %index, -1, !dbg !53718
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %index, !dbg !53719 ; 3 uses
  %i.de = getelementptr [4 x i8], ptr %i.db, i64 %i.dc, !dbg !53720 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 16, !dbg !53721 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.dd, align 4, !dbg !53721, !alias.scope !53548, !noalias !53549
  %wide.load514 = load <4 x i32>, ptr %i.df, align 4, !dbg !53721, !alias.scope !53548, !noalias !53549
  %i.dg = getelementptr i8, ptr %i.de, i64 -12, !dbg !53721 ; 2 uses
  %i.dh = getelementptr i8, ptr %i.de, i64 -28, !dbg !53721 ; 2 uses
  %wide.load515 = load <4 x i32>, ptr %i.dg, align 4, !dbg !53721, !alias.scope !53550, !noalias !53551
  %wide.load516 = load <4 x i32>, ptr %i.dh, align 4, !dbg !53721, !alias.scope !53550, !noalias !53551
  %reverse = shufflevector <4 x i32> %wide.load515, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>, !dbg !53721
  %reverse517 = shufflevector <4 x i32> %wide.load516, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>, !dbg !53721
  store <4 x i32> %reverse, ptr %i.dd, align 4, !dbg !53721, !alias.scope !53548, !noalias !53549
  store <4 x i32> %reverse517, ptr %i.df, align 4, !dbg !53721, !alias.scope !53548, !noalias !53549
  %reverse518 = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>, !dbg !53721
  %reverse519 = shufflevector <4 x i32> %wide.load514, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>, !dbg !53721
  store <4 x i32> %reverse518, ptr %i.dg, align 4, !dbg !53721, !alias.scope !53550, !noalias !53551
  store <4 x i32> %reverse519, ptr %i.dh, align 4, !dbg !53721, !alias.scope !53550, !noalias !53551
  %index.next = add nuw i64 %index, 8, !dbg !53717 ; 2 uses
  %i.di = icmp eq i64 %index.next, %n.vec, !dbg !53715
  br i1 %i.di, label %middle.block, label %vector.body, !dbg !53715, !llvm.loop !53357

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.da, %n.vec, !dbg !53715
  br i1 %cmp.n, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSm7reverseCskY9G75ZWc4U_11polars_expr.exit, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSm12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.i.preheader, !dbg !53715

_RNvMNtCscgRAwXFJnXP_4core5sliceSm12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.i.preheader: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSm12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i.i, %middle.block
  %.sroa.0.016.i.i.ph = phi i64 [ 0, %_RNvMNtCscgRAwXFJnXP_4core5sliceSm12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCscgRAwXFJnXP_4core5sliceSm12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.i, !dbg !53715

_RNvMNtCscgRAwXFJnXP_4core5sliceSm12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.i: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSm12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.i.preheader, %_RNvMNtCscgRAwXFJnXP_4core5sliceSm12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.do, %_RNvMNtCscgRAwXFJnXP_4core5sliceSm12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.i ], [ %.sroa.0.016.i.i.ph, %_RNvMNtCscgRAwXFJnXP_4core5sliceSm12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.i.preheader ] ; 3 uses
  %i.dj = xor i64 %.sroa.0.016.i.i, -1, !dbg !53718
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.sroa.0.016.i.i, !dbg !53719 ; 2 uses
  %i.dl = getelementptr [4 x i8], ptr %i.db, i64 %i.dj, !dbg !53720 ; 2 uses
  %i.dm = load i32, ptr %i.dk, align 4, !dbg !53721, !alias.scope !53548, !noalias !53549, !noundef !4431
  %i.dn = load i32, ptr %i.dl, align 4, !dbg !53721, !alias.scope !53550, !noalias !53551
  store i32 %i.dn, ptr %i.dk, align 4, !dbg !53721, !alias.scope !53548, !noalias !53549
  store i32 %i.dm, ptr %i.dl, align 4, !dbg !53721, !alias.scope !53550, !noalias !53551
  %i.do = add nuw nsw i64 %.sroa.0.016.i.i, 1, !dbg !53717 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.do, %i.da, !dbg !53715
  br i1 %exitcond.not.i.i, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSm7reverseCskY9G75ZWc4U_11polars_expr.exit, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSm12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.i, !dbg !53715, !llvm.loop !53358

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift10create_runmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1T_10WindowExprNtB1V_12PhysicalExpr23evaluate_on_groups_impls2_0E0EB1X_.exit: ; preds = %bb.ad, %bb.ae, %_RNvMNtCscgRAwXFJnXP_4core5sliceSm7reverseCskY9G75ZWc4U_11polars_expr.exit
  %.sroa.0.0.i34 = phi i64 [ %i.cy, %_RNvMNtCscgRAwXFJnXP_4core5sliceSm7reverseCskY9G75ZWc4U_11polars_expr.exit ], [ %i.cw, %bb.ae ], [ %i.cu, %bb.ad ], !dbg !53722 ; 2 uses
  %i.dp = lshr i64 %.sroa.023.0, 1, !dbg !53723
  %i.dq = lshr i64 %.sroa.0.0.i34, 1, !dbg !53724
  %factor = shl nuw nsw i64 %.sroa.09.0, 1, !dbg !53725 ; 2 uses
  %i.dr = sub nsw i64 %factor, %i.dp, !dbg !53725
  %i.ds = add nuw nsw i64 %i.dq, %factor, !dbg !53726
  %i.dt = mul i64 %i.dr, %.sroa.0.0, !dbg !53727
  %i.du = mul i64 %i.ds, %.sroa.0.0, !dbg !53728
  %i.dv = xor i64 %i.du, %i.dt, !dbg !53729
  %i.dw = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.dv, i1 false), !dbg !53730
  %i.dx = trunc nuw nsw i64 %i.dw to i8, !dbg !53729
  br label %bb.g, !dbg !53731

bb.ag:                                            ; preds = %.lr.ph182, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift13logical_mergemNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1W_10WindowExprNtB1Y_12PhysicalExpr23evaluate_on_groups_impls2_0E0EB20_.exit
  %.sroa.02.1181 = phi i64 [ %.sroa.02.0, %.lr.ph182 ], [ %i.dy, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift13logical_mergemNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1W_10WindowExprNtB1Y_12PhysicalExpr23evaluate_on_groups_impls2_0E0EB20_.exit ] ; 2 uses
  %.sroa.023.1180 = phi i64 [ %.sroa.023.0, %.lr.ph182 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift13logical_mergemNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1W_10WindowExprNtB1Y_12PhysicalExpr23evaluate_on_groups_impls2_0E0EB20_.exit ] ; 4 uses
  %i.dy = add i64 %.sroa.02.1181, -1, !dbg !53732 ; 4 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dy, !dbg !53733
  %i.ea = load i8, ptr %i.dz, align 1, !dbg !53734, !noundef !4431
  %.not29 = icmp ult i8 %i.ea, %.sroa.021.0, !dbg !53734
  br i1 %.not29, label %._crit_edge, label %bb.ah, !dbg !53734

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift13logical_mergemNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1W_10WindowExprNtB1Y_12PhysicalExpr23evaluate_on_groups_impls2_0E0EB20_.exit, %bb.ag, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.1180, %bb.ag ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift13logical_mergemNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1W_10WindowExprNtB1Y_12PhysicalExpr23evaluate_on_groups_impls2_0E0EB20_.exit ], !dbg !53597 ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.1181, %bb.ag ], [ 1, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift13logical_mergemNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1W_10WindowExprNtB1Y_12PhysicalExpr23evaluate_on_groups_impls2_0E0EB20_.exit ], !dbg !53599 ; 3 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa, !dbg !53735
  store i64 %.sroa.023.1.lcssa, ptr %i.eb, align 8, !dbg !53736
  %i.ec = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa, !dbg !53737
  store i8 %.sroa.021.0, ptr %i.ec, align 1, !dbg !53738
  br i1 %i.k, label %bb.av, label %bb.aw, !dbg !53739

bb.ah:                                            ; preds = %bb.ag
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.dy, !dbg !53740
  %i.ee = load i64, ptr %i.ed, align 8, !dbg !53741, !noundef !4431 ; 3 uses
  %i.ef = lshr i64 %i.ee, 1, !dbg !53742          ; 8 uses
  %i.eg = lshr i64 %.sroa.023.1180, 1, !dbg !53743 ; 6 uses
  %i.eh = add nuw i64 %i.ef, %i.eg, !dbg !53744   ; 4 uses
  %i.ei = sub i64 %.sroa.09.0, %i.eh, !dbg !53745
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ei, !dbg !53746 ; 8 uses
  %i.ek = icmp samesign ugt i64 %i.eh, %3, !dbg !53747
  %i.el = trunc i64 %.sroa.023.1180 to i1
  %i.em = or i64 %i.ee, %.sroa.023.1180, !dbg !53748
  %i.en = trunc i64 %i.em to i1, !dbg !53748
  %or.cond3.i = or i1 %i.ek, %i.en, !dbg !53748
  br i1 %or.cond3.i, label %bb.ai, label %bb.aj, !dbg !53748

bb.ai:                                            ; preds = %bb.ah
  %i.eo = trunc i64 %i.ee to i1
  br i1 %i.eo, label %bb.ak, label %bb.al, !dbg !53749

bb.aj:                                            ; preds = %bb.ah
  %i.ep = shl nuw nsw i64 %i.eh, 1, !dbg !53750
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift13logical_mergemNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1W_10WindowExprNtB1Y_12PhysicalExpr23evaluate_on_groups_impls2_0E0EB20_.exit, !dbg !53751

bb.ak:                                            ; preds = %bb.al, %bb.ai
  br i1 %i.el, label %bb.am, label %bb.au, !dbg !53752

bb.al:                                            ; preds = %bb.ai
  %i.eq = or i64 %i.ef, 1, !dbg !53753
  %i.er = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %i.eq, i1 true), !dbg !53754
  %i.es = trunc nuw nsw i64 %i.er to i32, !dbg !53754
  %i.et = shl nuw nsw i32 %i.es, 1, !dbg !53755
  %i.eu = xor i32 %i.et, 126, !dbg !53755
  tail call void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1V_10WindowExprNtB1X_12PhysicalExpr23evaluate_on_groups_impls2_0E0EB1Z_(ptr noalias noundef nonnull align 4 %i.ej, i64 noundef range(i64 0, 2305843009213693952) %i.ef, ptr noalias noundef nonnull align 4 %2, i64 noundef range(i64 0, 2305843009213693952) %3, i32 noundef %i.eu, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5) #44, !dbg !53756, !inline_history !53392
  br label %bb.ak, !dbg !53757

bb.am:                                            ; preds = %bb.au, %bb.ak
  %.val = load ptr, ptr %5, align 8, !dbg !53758  ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53565), !dbg !53758
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53566), !dbg !53758
  %i.ev = icmp eq i64 %i.ef, 0, !dbg !53759
  %i.ew = icmp eq i64 %i.eg, 0
  %or.cond.i = or i1 %i.ew, %i.ev, !dbg !53759
  br i1 %or.cond.i, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5merge5mergemNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1N_10WindowExprNtB1P_12PhysicalExpr23evaluate_on_groups_impls2_0E0EB1R_.exit, label %bb.an, !dbg !53759

bb.an:                                            ; preds = %bb.am
  %.sroa.0.0.i.i35 = tail call i64 @llvm.umin.i64(i64 %i.eg, i64 range(i64 0, -9223372036854775808) %i.ef), !dbg !53760 ; 2 uses
  %i.ex = icmp samesign ult i64 %3, %.sroa.0.0.i.i35, !dbg !53761
  br i1 %i.ex, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5merge5mergemNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1N_10WindowExprNtB1P_12PhysicalExpr23evaluate_on_groups_impls2_0E0EB1R_.exit, label %.critedge.i, !dbg !53761

.critedge.i:                                      ; preds = %bb.an
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.ef, !dbg !53762 ; 5 uses
  %.not.i36 = icmp samesign ugt i64 %i.ef, %i.eg, !dbg !53763 ; 2 uses
  %spec.select.i = select i1 %.not.i36, ptr %i.ey, ptr %i.ej, !dbg !53764
  %i.ez = shl nuw nsw i64 %.sroa.0.0.i.i35, 2, !dbg !53765 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %2, ptr nonnull align 4 %spec.select.i, i64 %i.ez, i1 false), !dbg !53765, !alias.scope !53567
  %i.fa = getelementptr inbounds nuw i8, ptr %2, i64 %i.ez, !dbg !53766 ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.fb = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 4 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 4 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.val, i64 24 ; 4 uses
  %i.fe = load ptr, ptr %.val, align 8, !noalias !53567, !nonnull !4431, !align !4534, !noundef !4431 ; 8 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 12
  %i.fg = load i32, ptr %i.ff, align 4, !range !5168, !noalias !53567, !noundef !4431
  %i.fh = icmp eq i32 %i.fg, 1                    ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fj = load i32, ptr %i.fi, align 8, !noalias !53567, !noundef !4431 ; 12 uses
  br i1 %.not.i36, label %bb.ao, label %.lr.ph.i.i, !dbg !53767

end_hunk_3
begin_hunk_4_@_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift4sortmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1M_10WindowExprNtB1O_12PhysicalExpr23evaluate_on_groups_impls3_0E0EB1Q_:bb.a
  %i.bc = load i8, ptr %i.bb, align 1, !dbg !54333, !noalias !54227, !noundef !4431
  %i.bd = trunc i64 %i.ay to i8, !dbg !54334
  %i.be = and i8 %i.bd, 7, !dbg !54334
  %i.bf = lshr i8 %i.bc, %i.be, !dbg !54334       ; 2 uses
  %i.bg = and i8 %i.ax, 1, !dbg !54335            ; 2 uses
  %i.bh = and i8 %i.bg, %i.bf, !dbg !54335
  %.not.i.i59 = icmp eq i8 %i.bh, 0, !dbg !54335
  br i1 %.not.i.i59, label %bb.r, label %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls3_0E0BS_.exit66, !dbg !54335

bb.q:                                             ; preds = %bb.o
  %i.bi = zext i32 %i.x to i64, !dbg !54336
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.ac, i64 noundef %i.bi, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @82) #50, !dbg !54315, !noalias !54227
  unreachable, !dbg !54315

bb.r:                                             ; preds = %bb.p
  %i.bj = and i8 %i.bf, 1, !dbg !54337
  %i.bk = sub nsw i8 %i.bg, %i.bj, !dbg !54338
  switch i8 %i.bk, label %default.unreachable [
    i8 -1, label %bb.s
    i8 0, label %.preheader92
    i8 1, label %bb.t
  ], !dbg !54339

default.unreachable:                              ; preds = %bb.r, %bb.al, %bb.ab, %bb.bm, %bb.be
  unreachable

bb.s:                                             ; preds = %bb.r
  %i.bl = getelementptr inbounds nuw i8, ptr %.val12.i, i64 16, !dbg !54340
  %i.bm = load ptr, ptr %i.bl, align 8, !dbg !54340, !alias.scope !54225, !noalias !54226, !nonnull !4431, !align !5173, !noundef !4431
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 9, !dbg !54340
  %i.bo = load i8, ptr %i.bn, align 1, !dbg !54340, !range !4826, !noalias !54227, !noundef !4431
  %i.bp = trunc nuw i8 %i.bo to i1, !dbg !54340
  br i1 %i.bp, label %.preheader92, label %.preheader91, !dbg !54340

bb.t:                                             ; preds = %bb.r
  %i.bq = getelementptr inbounds nuw i8, ptr %.val12.i, i64 16, !dbg !54340
  %i.br = load ptr, ptr %i.bq, align 8, !dbg !54340, !alias.scope !54225, !noalias !54226, !nonnull !4431, !align !5173, !noundef !4431
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 9, !dbg !54340
  %i.bt = load i8, ptr %i.bs, align 1, !dbg !54340, !range !4826, !noalias !54227, !noundef !4431
  %i.bu = trunc nuw i8 %i.bt to i1, !dbg !54340
  br i1 %i.bu, label %.preheader91, label %.preheader92, !dbg !54340

_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls3_0E0BS_.exit66: ; preds = %bb.p
  %i.bv = getelementptr inbounds nuw i8, ptr %.val12.i, i64 24, !dbg !54341
  %i.bw = load ptr, ptr %i.bv, align 8, !dbg !54341, !alias.scope !54225, !noalias !54226, !nonnull !4431, !align !5173, !noundef !4431 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.val12.i, i64 32, !dbg !54341
  %i.by = load i64, ptr %i.bx, align 8, !dbg !54341, !alias.scope !54225, !noalias !54226, !noundef !4431 ; 2 uses
  %i.bz = icmp ugt i64 %i.by, %i.ab, !dbg !54342
  tail call void @llvm.assume(i1 %i.bz), !dbg !54343, !noalias !54226
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.ab, !dbg !54344
  %i.cb = icmp ugt i64 %i.by, %i.ag, !dbg !54345
  tail call void @llvm.assume(i1 %i.cb), !dbg !54346, !noalias !54226
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.ag, !dbg !54347
  %i.cd = load i32, ptr %i.ca, align 4, !dbg !54348, !noalias !54227, !noundef !4431
  %i.ce = load i32, ptr %i.cc, align 4, !dbg !54349, !noalias !54227, !noundef !4431
  %i.cf = tail call i8 @llvm.ucmp.i8.i32(i32 %i.cd, i32 %i.ce), !dbg !54350 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.val12.i, i64 16, !dbg !54351
  %i.ch = load ptr, ptr %i.cg, align 8, !dbg !54351, !alias.scope !54225, !noalias !54226, !nonnull !4431, !align !5173, !noundef !4431
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8, !dbg !54351
  %i.cj = load i8, ptr %i.ci, align 4, !dbg !54351, !range !4826, !noalias !54227, !noundef !4431
  %i.ck = trunc nuw i8 %i.cj to i1, !dbg !54351
  %switch.offset.i.i60 = sub nsw i8 0, %i.cf
  %spec.select.i61 = select i1 %i.ck, i8 %switch.offset.i.i60, i8 %i.cf, !dbg !54351
  %i.cl = icmp eq i8 %spec.select.i61, -1, !dbg !54352
  br i1 %i.cl, label %.preheader91, label %.preheader92, !dbg !54353

.preheader92:                                     ; preds = %bb.s, %bb.t, %bb.r, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls3_0E0BS_.exit66
  %.not213 = icmp eq i64 %i.n, 2, !dbg !54354
  br i1 %.not213, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1S_10WindowExprNtB1U_12PhysicalExpr23evaluate_on_groups_impls3_0E0EB1W_.exit.i, label %.lr.ph, !dbg !54354

.lr.ph:                                           ; preds = %.preheader92
  %i.cm = getelementptr inbounds nuw i8, ptr %.val12.i, i64 24
  %i.cn = getelementptr inbounds nuw i8, ptr %.val12.i, i64 32
  %i.co = getelementptr inbounds nuw i8, ptr %.val12.i, i64 16 ; 3 uses
  br label %bb.u, !dbg !54354

.preheader91:                                     ; preds = %bb.t, %bb.s, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls3_0E0BS_.exit66
  %.not214 = icmp eq i64 %i.n, 2, !dbg !54355
  br i1 %.not214, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1S_10WindowExprNtB1U_12PhysicalExpr23evaluate_on_groups_impls3_0E0EB1W_.exit.i, label %.lr.ph196, !dbg !54355

.lr.ph196:                                        ; preds = %.preheader91
  %i.cp = getelementptr inbounds nuw i8, ptr %.val12.i, i64 24
  %i.cq = getelementptr inbounds nuw i8, ptr %.val12.i, i64 32
  %i.cr = getelementptr inbounds nuw i8, ptr %.val12.i, i64 16 ; 3 uses
  br label %bb.ae, !dbg !54355

bb.u:                                             ; preds = %.lr.ph, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls3_0E0BS_.exit54.thread
  %.val11.i = phi i32 [ %.val13.i, %.lr.ph ], [ %.val10.i, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls3_0E0BS_.exit54.thread ], !dbg !54356 ; 2 uses
  %.sroa.01.0.i.i189 = phi i64 [ 2, %.lr.ph ], [ %i.ew, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls3_0E0BS_.exit54.thread ] ; 6 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.sroa.01.0.i.i189, !dbg !54357
  %i.ct = add nsw i64 %.sroa.01.0.i.i189, -1, !dbg !54358
  %i.cu = icmp ult i64 %i.ct, %i.n, !dbg !54359
  tail call void @llvm.assume(i1 %i.cu), !dbg !54360
  %.val10.i = load i32, ptr %i.cs, align 4, !dbg !54356, !alias.scope !54221, !noalias !54224, !noundef !4431 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54230), !dbg !54361, !noalias !54226
  %i.cv = zext i32 %.val10.i to i64, !dbg !54362  ; 2 uses
  %i.cw = icmp ult i32 %.val10.i, %i.x, !dbg !54363 ; 2 uses
  br i1 %i.v, label %bb.v, label %.thread.i.i43, !dbg !54364

bb.v:                                             ; preds = %bb.u
  br i1 %i.cw, label %bb.y, label %bb.w, !dbg !54363

.thread.i.i43:                                    ; preds = %bb.u
  br i1 %i.cw, label %bb.x, label %bb.w, !dbg !54363

bb.w:                                             ; preds = %.thread.i.i43, %bb.v
  %i.cx = zext i32 %i.x to i64, !dbg !54365
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.cv, i64 noundef %i.cx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @82) #50, !dbg !54363, !noalias !54231
  unreachable, !dbg !54363

bb.x:                                             ; preds = %.thread.i.i43
  %i.cy = load ptr, ptr %i.r, align 8, !dbg !54366, !noalias !54231, !noundef !4431
  br label %bb.y, !dbg !54367

bb.y:                                             ; preds = %bb.x, %bb.v
  %.sroa.09.0.i.i44 = phi ptr [ %i.cy, %bb.x ], [ %i.r, %bb.v ], !dbg !54368 ; 2 uses
  %.in.in.i.i45 = getelementptr inbounds nuw [4 x i8], ptr %.sroa.09.0.i.i44, i64 %i.cv, !dbg !54363
  %.in.i.i46 = load i32, ptr %.in.in.i.i45, align 4, !dbg !54363, !noalias !54231, !noundef !4431
  %i.cz = zext i32 %.in.i.i46 to i64, !dbg !54369 ; 3 uses
  %i.da = zext i32 %.val11.i to i64, !dbg !54370  ; 2 uses
  %i.db = icmp ult i32 %.val11.i, %i.x, !dbg !54371
  br i1 %i.db, label %bb.z, label %bb.aa, !dbg !54371

bb.z:                                             ; preds = %bb.y
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.09.0.i.i44, i64 %i.da, !dbg !54371
  %i.dd = load i32, ptr %i.dc, align 4, !dbg !54371, !noalias !54231, !noundef !4431
  %i.de = zext i32 %i.dd to i64, !dbg !54372      ; 3 uses
  %i.df = add i64 %i.ap, %i.cz, !dbg !54373       ; 2 uses
  %i.dg = lshr i64 %i.df, 3, !dbg !54374          ; 2 uses
  %i.dh = icmp ult i64 %i.dg, %i.al, !dbg !54375
  tail call void @llvm.assume(i1 %i.dh), !dbg !54376, !noalias !54226
  %i.di = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.dg, !dbg !54377
  %i.dj = load i8, ptr %i.di, align 1, !dbg !54378, !noalias !54231, !noundef !4431
  %i.dk = trunc i64 %i.df to i8, !dbg !54379
  %i.dl = and i8 %i.dk, 7, !dbg !54379
  %i.dm = lshr i8 %i.dj, %i.dl, !dbg !54379
  %i.dn = add i64 %i.ap, %i.de, !dbg !54380       ; 2 uses
  %i.do = lshr i64 %i.dn, 3, !dbg !54381          ; 2 uses
  %i.dp = icmp ult i64 %i.do, %i.al, !dbg !54382
  tail call void @llvm.assume(i1 %i.dp), !dbg !54383, !noalias !54226
  %i.dq = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.do, !dbg !54384
  %i.dr = load i8, ptr %i.dq, align 1, !dbg !54385, !noalias !54231, !noundef !4431
  %i.ds = trunc i64 %i.dn to i8, !dbg !54386
  %i.dt = and i8 %i.ds, 7, !dbg !54386
  %i.du = lshr i8 %i.dr, %i.dt, !dbg !54386       ; 2 uses
  %i.dv = and i8 %i.dm, 1, !dbg !54387            ; 2 uses
  %i.dw = and i8 %i.du, %i.dv, !dbg !54387
  %.not.i.i47 = icmp eq i8 %i.dw, 0, !dbg !54387
  br i1 %.not.i.i47, label %bb.ab, label %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls3_0E0BS_.exit54, !dbg !54387

bb.aa:                                            ; preds = %bb.y
  %i.dx = zext i32 %i.x to i64, !dbg !54388
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.da, i64 noundef %i.dx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @82) #50, !dbg !54371, !noalias !54231
  unreachable, !dbg !54371

bb.ab:                                            ; preds = %bb.z
  %i.dy = and i8 %i.du, 1, !dbg !54389
  %i.dz = sub nsw i8 %i.dv, %i.dy, !dbg !54390
  switch i8 %i.dz, label %default.unreachable [
    i8 -1, label %bb.ac
    i8 0, label %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls3_0E0BS_.exit54.thread
    i8 1, label %bb.ad
  ], !dbg !54391

bb.ac:                                            ; preds = %bb.ab
  %i.ea = load ptr, ptr %i.co, align 8, !dbg !54392, !alias.scope !54230, !noalias !54226, !nonnull !4431, !align !5173, !noundef !4431
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 9, !dbg !54392
  %i.ec = load i8, ptr %i.eb, align 1, !dbg !54392, !range !4826, !noalias !54231, !noundef !4431
  %i.ed = trunc nuw i8 %i.ec to i1, !dbg !54392
  br i1 %i.ed, label %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls3_0E0BS_.exit54.thread, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1S_10WindowExprNtB1U_12PhysicalExpr23evaluate_on_groups_impls3_0E0EB1W_.exit.i, !dbg !54392

bb.ad:                                            ; preds = %bb.ab
  %i.ee = load ptr, ptr %i.co, align 8, !dbg !54392, !alias.scope !54230, !noalias !54226, !nonnull !4431, !align !5173, !noundef !4431
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 9, !dbg !54392
  %i.eg = load i8, ptr %i.ef, align 1, !dbg !54392, !range !4826, !noalias !54231, !noundef !4431
  %i.eh = trunc nuw i8 %i.eg to i1, !dbg !54392
  br i1 %i.eh, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1S_10WindowExprNtB1U_12PhysicalExpr23evaluate_on_groups_impls3_0E0EB1W_.exit.i, label %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls3_0E0BS_.exit54.thread, !dbg !54392

_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls3_0E0BS_.exit54: ; preds = %bb.z
  %i.ei = load ptr, ptr %i.cm, align 8, !dbg !54393, !alias.scope !54230, !noalias !54226, !nonnull !4431, !align !5173, !noundef !4431 ; 2 uses
  %i.ej = load i64, ptr %i.cn, align 8, !dbg !54393, !alias.scope !54230, !noalias !54226, !noundef !4431 ; 2 uses
  %i.ek = icmp ugt i64 %i.ej, %i.cz, !dbg !54394
  tail call void @llvm.assume(i1 %i.ek), !dbg !54395, !noalias !54226
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.cz, !dbg !54396
  %i.em = icmp ugt i64 %i.ej, %i.de, !dbg !54397
  tail call void @llvm.assume(i1 %i.em), !dbg !54398, !noalias !54226
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.de, !dbg !54399
  %i.eo = load i32, ptr %i.el, align 4, !dbg !54400, !noalias !54231, !noundef !4431
  %i.ep = load i32, ptr %i.en, align 4, !dbg !54401, !noalias !54231, !noundef !4431
  %i.eq = tail call i8 @llvm.ucmp.i8.i32(i32 %i.eo, i32 %i.ep), !dbg !54402 ; 2 uses
  %i.er = load ptr, ptr %i.co, align 8, !dbg !54403, !alias.scope !54230, !noalias !54226, !nonnull !4431, !align !5173, !noundef !4431
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8, !dbg !54403
  %i.et = load i8, ptr %i.es, align 4, !dbg !54403, !range !4826, !noalias !54231, !noundef !4431
  %i.eu = trunc nuw i8 %i.et to i1, !dbg !54403
  %switch.offset.i.i48 = sub nsw i8 0, %i.eq
  %spec.select.i49 = select i1 %i.eu, i8 %switch.offset.i.i48, i8 %i.eq, !dbg !54403
  %i.ev = icmp eq i8 %spec.select.i49, -1, !dbg !54404
  br i1 %i.ev, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1S_10WindowExprNtB1U_12PhysicalExpr23evaluate_on_groups_impls3_0E0EB1W_.exit.i, label %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls3_0E0BS_.exit54.thread, !dbg !54356

_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls3_0E0BS_.exit54.thread: ; preds = %bb.ac, %bb.ad, %bb.ab, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls3_0E0BS_.exit54
  %i.ew = add nuw nsw i64 %.sroa.01.0.i.i189, 1, !dbg !54405 ; 2 uses
  %exitcond.not = icmp eq i64 %i.ew, %i.n, !dbg !54354
  br i1 %exitcond.not, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1S_10WindowExprNtB1U_12PhysicalExpr23evaluate_on_groups_impls3_0E0EB1W_.exit.i, label %bb.u, !dbg !54354

bb.ae:                                            ; preds = %.lr.ph196, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls3_0E0BS_.exit.thread78
  %.val8.i = phi i32 [ %.val13.i, %.lr.ph196 ], [ %.val7.i, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls3_0E0BS_.exit.thread78 ], !dbg !54406 ; 2 uses
  %.sroa.01.1.i.i195 = phi i64 [ 2, %.lr.ph196 ], [ %i.hb, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls3_0E0BS_.exit.thread78 ] ; 7 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.sroa.01.1.i.i195, !dbg !54407
  %i.ey = add nsw i64 %.sroa.01.1.i.i195, -1, !dbg !54408
  %i.ez = icmp ult i64 %i.ey, %i.n, !dbg !54409
  tail call void @llvm.assume(i1 %i.ez), !dbg !54410
  %.val7.i = load i32, ptr %i.ex, align 4, !dbg !54406, !alias.scope !54221, !noalias !54224, !noundef !4431 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54234), !dbg !54411, !noalias !54226
  %i.fa = zext i32 %.val7.i to i64, !dbg !54412   ; 2 uses
  %i.fb = icmp ult i32 %.val7.i, %i.x, !dbg !54413 ; 2 uses
  br i1 %i.v, label %bb.af, label %.thread.i.i, !dbg !54414

bb.af:                                            ; preds = %bb.ae
  br i1 %i.fb, label %bb.ai, label %bb.ag, !dbg !54413

.thread.i.i:                                      ; preds = %bb.ae
  br i1 %i.fb, label %bb.ah, label %bb.ag, !dbg !54413

bb.ag:                                            ; preds = %.thread.i.i, %bb.af
  %i.fc = zext i32 %i.x to i64, !dbg !54415
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.fa, i64 noundef %i.fc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @82) #50, !dbg !54413, !noalias !54235
  unreachable, !dbg !54413

bb.ah:                                            ; preds = %.thread.i.i
  %i.fd = load ptr, ptr %i.r, align 8, !dbg !54416, !noalias !54235, !noundef !4431
  br label %bb.ai, !dbg !54417

bb.ai:                                            ; preds = %bb.ah, %bb.af
  %.sroa.09.0.i.i = phi ptr [ %i.fd, %bb.ah ], [ %i.r, %bb.af ], !dbg !54418 ; 2 uses
  %.in.in.i.i = getelementptr inbounds nuw [4 x i8], ptr %.sroa.09.0.i.i, i64 %i.fa, !dbg !54413
  %.in.i.i = load i32, ptr %.in.in.i.i, align 4, !dbg !54413, !noalias !54235, !noundef !4431
  %i.fe = zext i32 %.in.i.i to i64, !dbg !54419   ; 3 uses
  %i.ff = zext i32 %.val8.i to i64, !dbg !54420   ; 2 uses
  %i.fg = icmp ult i32 %.val8.i, %i.x, !dbg !54421
  br i1 %i.fg, label %bb.aj, label %bb.ak, !dbg !54421

bb.aj:                                            ; preds = %bb.ai
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.09.0.i.i, i64 %i.ff, !dbg !54421
  %i.fi = load i32, ptr %i.fh, align 4, !dbg !54421, !noalias !54235, !noundef !4431
  %i.fj = zext i32 %i.fi to i64, !dbg !54422      ; 3 uses
  %i.fk = add i64 %i.ap, %i.fe, !dbg !54423       ; 2 uses
  %i.fl = lshr i64 %i.fk, 3, !dbg !54424          ; 2 uses
  %i.fm = icmp ult i64 %i.fl, %i.al, !dbg !54425
  tail call void @llvm.assume(i1 %i.fm), !dbg !54426, !noalias !54226
  %i.fn = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.fl, !dbg !54427
  %i.fo = load i8, ptr %i.fn, align 1, !dbg !54428, !noalias !54235, !noundef !4431
  %i.fp = trunc i64 %i.fk to i8, !dbg !54429
  %i.fq = and i8 %i.fp, 7, !dbg !54429
  %i.fr = lshr i8 %i.fo, %i.fq, !dbg !54429
  %i.fs = add i64 %i.ap, %i.fj, !dbg !54430       ; 2 uses
  %i.ft = lshr i64 %i.fs, 3, !dbg !54431          ; 2 uses
  %i.fu = icmp ult i64 %i.ft, %i.al, !dbg !54432
  tail call void @llvm.assume(i1 %i.fu), !dbg !54433, !noalias !54226
  %i.fv = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ft, !dbg !54434
  %i.fw = load i8, ptr %i.fv, align 1, !dbg !54435, !noalias !54235, !noundef !4431
  %i.fx = trunc i64 %i.fs to i8, !dbg !54436
  %i.fy = and i8 %i.fx, 7, !dbg !54436
  %i.fz = lshr i8 %i.fw, %i.fy, !dbg !54436       ; 2 uses
  %i.ga = and i8 %i.fr, 1, !dbg !54437            ; 2 uses
  %i.gb = and i8 %i.fz, %i.ga, !dbg !54437
  %.not.i.i40 = icmp eq i8 %i.gb, 0, !dbg !54437
  br i1 %.not.i.i40, label %bb.al, label %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls3_0E0BS_.exit, !dbg !54437

bb.ak:                                            ; preds = %bb.ai
  %i.gc = zext i32 %i.x to i64, !dbg !54438
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.ff, i64 noundef %i.gc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @82) #50, !dbg !54421, !noalias !54235
  unreachable, !dbg !54421

bb.al:                                            ; preds = %bb.aj
  %i.gd = and i8 %i.fz, 1, !dbg !54439
  %i.ge = sub nsw i8 %i.ga, %i.gd, !dbg !54440
  switch i8 %i.ge, label %default.unreachable [
    i8 -1, label %bb.am
    i8 0, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1S_10WindowExprNtB1U_12PhysicalExpr23evaluate_on_groups_impls3_0E0EB1W_.exit.i
    i8 1, label %bb.an
  ], !dbg !54441

bb.am:                                            ; preds = %bb.al
  %i.gf = load ptr, ptr %i.cr, align 8, !dbg !54442, !alias.scope !54234, !noalias !54226, !nonnull !4431, !align !5173, !noundef !4431
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 9, !dbg !54442
  %i.gh = load i8, ptr %i.gg, align 1, !dbg !54442, !range !4826, !noalias !54235, !noundef !4431
  %i.gi = trunc nuw i8 %i.gh to i1, !dbg !54442
  br i1 %i.gi, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1S_10WindowExprNtB1U_12PhysicalExpr23evaluate_on_groups_impls3_0E0EB1W_.exit.i, label %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls3_0E0BS_.exit.thread78, !dbg !54442

bb.an:                                            ; preds = %bb.al
  %i.gj = load ptr, ptr %i.cr, align 8, !dbg !54442, !alias.scope !54234, !noalias !54226, !nonnull !4431, !align !5173, !noundef !4431
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 9, !dbg !54442
  %i.gl = load i8, ptr %i.gk, align 1, !dbg !54442, !range !4826, !noalias !54235, !noundef !4431
  %i.gm = trunc nuw i8 %i.gl to i1, !dbg !54442
  br i1 %i.gm, label %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls3_0E0BS_.exit.thread78, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1S_10WindowExprNtB1U_12PhysicalExpr23evaluate_on_groups_impls3_0E0EB1W_.exit.i, !dbg !54442

_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls3_0E0BS_.exit: ; preds = %bb.aj
  %i.gn = load ptr, ptr %i.cp, align 8, !dbg !54443, !alias.scope !54234, !noalias !54226, !nonnull !4431, !align !5173, !noundef !4431 ; 2 uses
  %i.go = load i64, ptr %i.cq, align 8, !dbg !54443, !alias.scope !54234, !noalias !54226, !noundef !4431 ; 2 uses
  %i.gp = icmp ugt i64 %i.go, %i.fe, !dbg !54444
  tail call void @llvm.assume(i1 %i.gp), !dbg !54445, !noalias !54226
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %i.fe, !dbg !54446
  %i.gr = icmp ugt i64 %i.go, %i.fj, !dbg !54447
  tail call void @llvm.assume(i1 %i.gr), !dbg !54448, !noalias !54226
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %i.fj, !dbg !54449
  %i.gt = load i32, ptr %i.gq, align 4, !dbg !54450, !noalias !54235, !noundef !4431
  %i.gu = load i32, ptr %i.gs, align 4, !dbg !54451, !noalias !54235, !noundef !4431
  %i.gv = tail call i8 @llvm.ucmp.i8.i32(i32 %i.gt, i32 %i.gu), !dbg !54452 ; 2 uses
  %i.gw = load ptr, ptr %i.cr, align 8, !dbg !54453, !alias.scope !54234, !noalias !54226, !nonnull !4431, !align !5173, !noundef !4431
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 8, !dbg !54453
  %i.gy = load i8, ptr %i.gx, align 4, !dbg !54453, !range !4826, !noalias !54235, !noundef !4431
  %i.gz = trunc nuw i8 %i.gy to i1, !dbg !54453
  %switch.offset.i.i = sub nsw i8 0, %i.gv
  %spec.select.i41 = select i1 %i.gz, i8 %switch.offset.i.i, i8 %i.gv, !dbg !54453
  %i.ha = icmp eq i8 %spec.select.i41, -1, !dbg !54454
  br i1 %i.ha, label %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls3_0E0BS_.exit.thread78, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1S_10WindowExprNtB1U_12PhysicalExpr23evaluate_on_groups_impls3_0E0EB1W_.exit.i, !dbg !54406

_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls3_0E0BS_.exit.thread78: ; preds = %bb.an, %bb.am, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls3_0E0BS_.exit
  %i.hb = add nuw nsw i64 %.sroa.01.1.i.i195, 1, !dbg !54455 ; 2 uses
  %exitcond301.not = icmp eq i64 %i.hb, %i.n, !dbg !54355
  br i1 %exitcond301.not, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1S_10WindowExprNtB1U_12PhysicalExpr23evaluate_on_groups_impls3_0E0EB1W_.exit.i, label %bb.ae, !dbg !54355

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1S_10WindowExprNtB1U_12PhysicalExpr23evaluate_on_groups_impls3_0E0EB1W_.exit.i: ; preds = %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls3_0E0BS_.exit.thread78, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls3_0E0BS_.exit, %bb.al, %bb.an, %bb.am, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls3_0E0BS_.exit54.thread, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls3_0E0BS_.exit54, %bb.ac, %bb.ad, %.preheader92, %.preheader91
  %i.hc = phi i1 [ false, %.preheader92 ], [ true, %.preheader91 ], [ false, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls3_0E0BS_.exit54.thread ], [ false, %bb.ad ], [ false, %bb.ac ], [ false, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls3_0E0BS_.exit54 ], [ true, %bb.am ], [ true, %bb.an ], [ true, %bb.al ], [ true, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls3_0E0BS_.exit ], [ true, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls3_0E0BS_.exit.thread78 ]
  %.sroa.0.0.i.i = phi i64 [ 2, %.preheader92 ], [ 2, %.preheader91 ], [ %i.n, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls3_0E0BS_.exit54.thread ], [ %.sroa.01.0.i.i189, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls3_0E0BS_.exit54 ], [ %.sroa.01.0.i.i189, %bb.ac ], [ %.sroa.01.0.i.i189, %bb.ad ], [ %.sroa.01.1.i.i195, %bb.am ], [ %i.n, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls3_0E0BS_.exit.thread78 ], [ %.sroa.01.1.i.i195, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls3_0E0BS_.exit ], [ %.sroa.01.1.i.i195, %bb.al ], [ %.sroa.01.1.i.i195, %bb.an ], !dbg !54456 ; 9 uses
  %i.hd = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n, !dbg !54457
  tail call void @llvm.assume(i1 %i.hd), !dbg !54458
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0, !dbg !54459
  br i1 %.not5.i, label %bb.i, label %bb.ao, !dbg !54459

bb.ao:                                            ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1S_10WindowExprNtB1U_12PhysicalExpr23evaluate_on_groups_impls3_0E0EB1W_.exit.i
  br i1 %i.hc, label %bb.ar, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSm7reverseCskY9G75ZWc4U_11polars_expr.exit, !dbg !54460

bb.ap:                                            ; preds = %bb.i
  %.sroa.0.0.i39 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %i.n, i64 %.sroa.01.0), !dbg !54461
  %i.he = shl nuw nsw i64 %.sroa.0.0.i39, 1, !dbg !54462
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift10create_runmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1T_10WindowExprNtB1V_12PhysicalExpr23evaluate_on_groups_impls3_0E0EB1X_.exit, !dbg !54463

bb.aq:                                            ; preds = %bb.i
  %.sroa.0.0.i38 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %i.n, i64 32), !dbg !54464 ; 2 uses
  tail call void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1V_10WindowExprNtB1X_12PhysicalExpr23evaluate_on_groups_impls3_0E0EB1Z_(ptr noalias noundef nonnull align 4 %i.o, i64 noundef %.sroa.0.0.i38, ptr noalias noundef nonnull align 4 %2, i64 noundef range(i64 0, 2305843009213693952) %3, i32 noundef 0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5) #44, !dbg !54465, !inline_history !54006
  %i.hf = shl nuw nsw i64 %.sroa.0.0.i38, 1, !dbg !54466
  %i.hg = or disjoint i64 %i.hf, 1, !dbg !54466
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift10create_runmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1T_10WindowExprNtB1V_12PhysicalExpr23evaluate_on_groups_impls3_0E0EB1X_.exit, !dbg !54463

_RNvMNtCscgRAwXFJnXP_4core5sliceSm7reverseCskY9G75ZWc4U_11polars_expr.exit: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSm12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.i, %middle.block, %bb.j, %bb.ar, %bb.ao
  %.sroa.0.0.i.i8487 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.ao ], [ %.sroa.0.0.i.i, %bb.ar ], [ %.sroa.0.0.i.i, %middle.block ], [ %.sroa.0.0.i.i, %_RNvMNtCscgRAwXFJnXP_4core5sliceSm12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.i ]
  %i.hh = shl nuw nsw i64 %.sroa.0.0.i.i8487, 1, !dbg !54467
  %i.hi = or disjoint i64 %i.hh, 1, !dbg !54467
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift10create_runmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1T_10WindowExprNtB1V_12PhysicalExpr23evaluate_on_groups_impls3_0E0EB1X_.exit, !dbg !54468

bb.ar:                                            ; preds = %bb.ao
  %i.hj = lshr i64 %.sroa.0.0.i.i, 1, !dbg !54469 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54236), !dbg !54470, !noalias !54224
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54237), !dbg !54470, !noalias !54224
  %.not.i.i = icmp eq i64 %i.hj, 0, !dbg !54471
  br i1 %.not.i.i, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSm7reverseCskY9G75ZWc4U_11polars_expr.exit, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSm12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i.i, !dbg !54471

_RNvMNtCscgRAwXFJnXP_4core5sliceSm12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i.i: ; preds = %bb.ar
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.sroa.0.0.i.i, !dbg !54472 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %.sroa.0.0.i.i, 16, !dbg !54471
  br i1 %min.iters.check, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSm12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.i.preheader, label %vector.ph, !dbg !54471

vector.ph:                                        ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSm12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i.i
  %n.vec = and i64 %i.hj, 4611686018427387896     ; 3 uses
  br label %vector.body, !dbg !54471

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !54473 ; 3 uses
  %i.hl = xor i64 %index, -1, !dbg !54474
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %index, !dbg !54475 ; 3 uses
  %i.hn = getelementptr [4 x i8], ptr %i.hk, i64 %i.hl, !dbg !54476 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hm, i64 16, !dbg !54477 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.hm, align 4, !dbg !54477, !alias.scope !54238, !noalias !54239
  %wide.load501 = load <4 x i32>, ptr %i.ho, align 4, !dbg !54477, !alias.scope !54238, !noalias !54239
  %i.hp = getelementptr i8, ptr %i.hn, i64 -12, !dbg !54477 ; 2 uses
  %i.hq = getelementptr i8, ptr %i.hn, i64 -28, !dbg !54477 ; 2 uses
  %wide.load502 = load <4 x i32>, ptr %i.hp, align 4, !dbg !54477, !alias.scope !54240, !noalias !54241
  %wide.load503 = load <4 x i32>, ptr %i.hq, align 4, !dbg !54477, !alias.scope !54240, !noalias !54241
  %reverse = shufflevector <4 x i32> %wide.load502, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>, !dbg !54477
  %reverse504 = shufflevector <4 x i32> %wide.load503, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>, !dbg !54477
  store <4 x i32> %reverse, ptr %i.hm, align 4, !dbg !54477, !alias.scope !54238, !noalias !54239
  store <4 x i32> %reverse504, ptr %i.ho, align 4, !dbg !54477, !alias.scope !54238, !noalias !54239
  %reverse505 = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>, !dbg !54477
  %reverse506 = shufflevector <4 x i32> %wide.load501, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>, !dbg !54477
  store <4 x i32> %reverse505, ptr %i.hp, align 4, !dbg !54477, !alias.scope !54240, !noalias !54241
  store <4 x i32> %reverse506, ptr %i.hq, align 4, !dbg !54477, !alias.scope !54240, !noalias !54241
  %index.next = add nuw i64 %index, 8, !dbg !54473 ; 2 uses
  %i.hr = icmp eq i64 %index.next, %n.vec, !dbg !54471
  br i1 %i.hr, label %middle.block, label %vector.body, !dbg !54471, !llvm.loop !54021

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hj, %n.vec, !dbg !54471
  br i1 %cmp.n, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSm7reverseCskY9G75ZWc4U_11polars_expr.exit, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSm12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.i.preheader, !dbg !54471

_RNvMNtCscgRAwXFJnXP_4core5sliceSm12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.i.preheader: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSm12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i.i, %middle.block
  %.sroa.0.016.i.i.ph = phi i64 [ 0, %_RNvMNtCscgRAwXFJnXP_4core5sliceSm12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCscgRAwXFJnXP_4core5sliceSm12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.i, !dbg !54471

_RNvMNtCscgRAwXFJnXP_4core5sliceSm12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.i: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSm12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.i.preheader, %_RNvMNtCscgRAwXFJnXP_4core5sliceSm12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.hx, %_RNvMNtCscgRAwXFJnXP_4core5sliceSm12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.i ], [ %.sroa.0.016.i.i.ph, %_RNvMNtCscgRAwXFJnXP_4core5sliceSm12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.i.preheader ] ; 3 uses
  %i.hs = xor i64 %.sroa.0.016.i.i, -1, !dbg !54474
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.sroa.0.016.i.i, !dbg !54475 ; 2 uses
  %i.hu = getelementptr [4 x i8], ptr %i.hk, i64 %i.hs, !dbg !54476 ; 2 uses
  %i.hv = load i32, ptr %i.ht, align 4, !dbg !54477, !alias.scope !54238, !noalias !54239, !noundef !4431
  %i.hw = load i32, ptr %i.hu, align 4, !dbg !54477, !alias.scope !54240, !noalias !54241
  store i32 %i.hw, ptr %i.ht, align 4, !dbg !54477, !alias.scope !54238, !noalias !54239
  store i32 %i.hv, ptr %i.hu, align 4, !dbg !54477, !alias.scope !54240, !noalias !54241
  %i.hx = add nuw nsw i64 %.sroa.0.016.i.i, 1, !dbg !54473 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.hx, %i.hj, !dbg !54471
  br i1 %exitcond.not.i.i, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSm7reverseCskY9G75ZWc4U_11polars_expr.exit, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSm12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.i, !dbg !54471, !llvm.loop !54022

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift10create_runmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1T_10WindowExprNtB1V_12PhysicalExpr23evaluate_on_groups_impls3_0E0EB1X_.exit: ; preds = %bb.ap, %bb.aq, %_RNvMNtCscgRAwXFJnXP_4core5sliceSm7reverseCskY9G75ZWc4U_11polars_expr.exit
  %.sroa.0.0.i34 = phi i64 [ %i.hi, %_RNvMNtCscgRAwXFJnXP_4core5sliceSm7reverseCskY9G75ZWc4U_11polars_expr.exit ], [ %i.hg, %bb.aq ], [ %i.he, %bb.ap ], !dbg !54478 ; 2 uses
  %i.hy = lshr i64 %.sroa.023.0, 1, !dbg !54479
  %i.hz = lshr i64 %.sroa.0.0.i34, 1, !dbg !54480
  %factor = shl nuw nsw i64 %.sroa.09.0, 1, !dbg !54481 ; 2 uses
  %i.ia = sub nsw i64 %factor, %i.hy, !dbg !54481
  %i.ib = add nuw nsw i64 %i.hz, %factor, !dbg !54482
  %i.ic = mul i64 %i.ia, %.sroa.0.0, !dbg !54483
  %i.id = mul i64 %i.ib, %.sroa.0.0, !dbg !54484
  %i.ie = xor i64 %i.id, %i.ic, !dbg !54485
  %i.if = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ie, i1 false), !dbg !54486
  %i.ig = trunc nuw nsw i64 %i.if to i8, !dbg !54485
  br label %bb.g, !dbg !54487

bb.as:                                            ; preds = %.lr.ph207, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift13logical_mergemNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1W_10WindowExprNtB1Y_12PhysicalExpr23evaluate_on_groups_impls3_0E0EB20_.exit
  %.sroa.02.1206 = phi i64 [ %.sroa.02.0, %.lr.ph207 ], [ %i.ih, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift13logical_mergemNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1W_10WindowExprNtB1Y_12PhysicalExpr23evaluate_on_groups_impls3_0E0EB20_.exit ] ; 2 uses
  %.sroa.023.1205 = phi i64 [ %.sroa.023.0, %.lr.ph207 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift13logical_mergemNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1W_10WindowExprNtB1Y_12PhysicalExpr23evaluate_on_groups_impls3_0E0EB20_.exit ] ; 4 uses
  %i.ih = add i64 %.sroa.02.1206, -1, !dbg !54488 ; 4 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ih, !dbg !54489
  %i.ij = load i8, ptr %i.ii, align 1, !dbg !54490, !noundef !4431
  %.not29 = icmp ult i8 %i.ij, %.sroa.021.0, !dbg !54490
  br i1 %.not29, label %._crit_edge, label %bb.at, !dbg !54490

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift13logical_mergemNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1W_10WindowExprNtB1Y_12PhysicalExpr23evaluate_on_groups_impls3_0E0EB20_.exit, %bb.as, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.1205, %bb.as ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift13logical_mergemNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1W_10WindowExprNtB1Y_12PhysicalExpr23evaluate_on_groups_impls3_0E0EB20_.exit ], !dbg !54289 ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.1206, %bb.as ], [ 1, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift13logical_mergemNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1W_10WindowExprNtB1Y_12PhysicalExpr23evaluate_on_groups_impls3_0E0EB20_.exit ], !dbg !54291 ; 3 uses
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa, !dbg !54491
  store i64 %.sroa.023.1.lcssa, ptr %i.ik, align 8, !dbg !54492
  %i.il = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa, !dbg !54493
  store i8 %.sroa.021.0, ptr %i.il, align 1, !dbg !54494
  br i1 %i.k, label %bb.bs, label %bb.bt, !dbg !54495

bb.at:                                            ; preds = %bb.as
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ih, !dbg !54496
  %i.in = load i64, ptr %i.im, align 8, !dbg !54497, !noundef !4431 ; 3 uses
  %i.io = lshr i64 %i.in, 1, !dbg !54498          ; 8 uses
  %i.ip = lshr i64 %.sroa.023.1205, 1, !dbg !54499 ; 6 uses
  %i.iq = add nuw i64 %i.io, %i.ip, !dbg !54500   ; 4 uses
  %i.ir = sub i64 %.sroa.09.0, %i.iq, !dbg !54501
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ir, !dbg !54502 ; 6 uses
  %i.it = icmp samesign ugt i64 %i.iq, %3, !dbg !54503
  %i.iu = trunc i64 %.sroa.023.1205 to i1
  %i.iv = or i64 %i.in, %.sroa.023.1205, !dbg !54504
  %i.iw = trunc i64 %i.iv to i1, !dbg !54504
  %or.cond3.i = or i1 %i.it, %i.iw, !dbg !54504
  br i1 %or.cond3.i, label %bb.au, label %bb.av, !dbg !54504

bb.au:                                            ; preds = %bb.at
  %i.ix = trunc i64 %i.in to i1
  br i1 %i.ix, label %bb.aw, label %bb.ax, !dbg !54505

bb.av:                                            ; preds = %bb.at
  %i.iy = shl nuw nsw i64 %i.iq, 1, !dbg !54506
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift13logical_mergemNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1W_10WindowExprNtB1Y_12PhysicalExpr23evaluate_on_groups_impls3_0E0EB20_.exit, !dbg !54507

bb.aw:                                            ; preds = %bb.ax, %bb.au
  br i1 %i.iu, label %bb.ay, label %bb.br, !dbg !54508

bb.ax:                                            ; preds = %bb.au
  %i.iz = or i64 %i.io, 1, !dbg !54509
  %i.ja = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %i.iz, i1 true), !dbg !54510
  %i.jb = trunc nuw nsw i64 %i.ja to i32, !dbg !54510
  %i.jc = shl nuw nsw i32 %i.jb, 1, !dbg !54511
  %i.jd = xor i32 %i.jc, 126, !dbg !54511
  tail call void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1V_10WindowExprNtB1X_12PhysicalExpr23evaluate_on_groups_impls3_0E0EB1Z_(ptr noalias noundef nonnull align 4 %i.is, i64 noundef range(i64 0, 2305843009213693952) %i.io, ptr noalias noundef nonnull align 4 %2, i64 noundef range(i64 0, 2305843009213693952) %3, i32 noundef %i.jd, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5) #44, !dbg !54512, !inline_history !54056
  br label %bb.aw, !dbg !54513

bb.ay:                                            ; preds = %bb.br, %bb.aw
  %.val = load ptr, ptr %5, align 8, !dbg !54514  ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54255), !dbg !54514
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54256), !dbg !54514
  %i.je = icmp eq i64 %i.io, 0, !dbg !54515
  %i.jf = icmp eq i64 %i.ip, 0
  %or.cond.i = or i1 %i.jf, %i.je, !dbg !54515
  br i1 %or.cond.i, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5merge5mergemNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1N_10WindowExprNtB1P_12PhysicalExpr23evaluate_on_groups_impls3_0E0EB1R_.exit, label %bb.az, !dbg !54515

bb.az:                                            ; preds = %bb.ay
  %.sroa.0.0.i.i35 = tail call i64 @llvm.umin.i64(i64 %i.ip, i64 range(i64 0, -9223372036854775808) %i.io), !dbg !54516 ; 2 uses
  %i.jg = icmp samesign ult i64 %3, %.sroa.0.0.i.i35, !dbg !54517
  br i1 %i.jg, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5merge5mergemNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1N_10WindowExprNtB1P_12PhysicalExpr23evaluate_on_groups_impls3_0E0EB1R_.exit, label %.critedge.i, !dbg !54517

.critedge.i:                                      ; preds = %bb.az
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %i.io, !dbg !54518 ; 3 uses
  %.not.i36 = icmp samesign ugt i64 %i.io, %i.ip, !dbg !54519 ; 2 uses
  %spec.select.i = select i1 %.not.i36, ptr %i.jh, ptr %i.is, !dbg !54520
  %i.ji = shl nuw nsw i64 %.sroa.0.0.i.i35, 2, !dbg !54521 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %2, ptr nonnull align 4 %spec.select.i, i64 %i.ji, i1 false), !dbg !54521, !alias.scope !54257
  %i.jj = getelementptr inbounds nuw i8, ptr %2, i64 %i.ji, !dbg !54522 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.jk = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %.val, i64 24 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %.val, i64 32 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 6 uses
  %i.jo = load ptr, ptr %.val, align 8, !noalias !54257, !nonnull !4431, !align !4534, !noundef !4431 ; 6 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 12
  %i.jq = load i32, ptr %i.jp, align 4, !range !5168, !noalias !54257, !noundef !4431
  %i.jr = icmp eq i32 %i.jq, 1                    ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jo, i64 8
  %i.jt = load i32, ptr %i.js, align 8, !noalias !54257, !noundef !4431 ; 6 uses
  br i1 %.not.i36, label %.preheader, label %.lr.ph.i.i, !dbg !54523

.preheader:                                       ; preds = %.critedge.i, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls3_0E0BS_.exit.i.i
  %.sroa.13.0.i = phi ptr [ %i.mj, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls3_0E0BS_.exit.i.i ], [ %i.jh, %.critedge.i ], !dbg !54524 ; 2 uses
  %.sroa.7.0.i = phi ptr [ %i.ml, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls3_0E0BS_.exit.i.i ], [ %i.jj, %.critedge.i ], !dbg !54524 ; 2 uses
  %.sroa.0.0.i18.i = phi ptr [ %i.jw, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls3_0E0BS_.exit.i.i ], [ %i.m, %.critedge.i ]
  %i.ju = getelementptr inbounds i8, ptr %.sroa.13.0.i, i64 -4, !dbg !54525 ; 3 uses
  %i.jv = getelementptr inbounds i8, ptr %.sroa.7.0.i, i64 -4, !dbg !54526 ; 3 uses
  %i.jw = getelementptr inbounds i8, ptr %.sroa.0.0.i18.i, i64 -4, !dbg !54527 ; 2 uses
  %.val10.i.i = load i32, ptr %i.jv, align 4, !dbg !54528, !alias.scope !54256, !noalias !54258, !noundef !4431 ; 2 uses
  %.val11.i.i = load i32, ptr %i.ju, align 4, !dbg !54528, !alias.scope !54255, !noalias !54259 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54260), !dbg !54529
  %i.jx = zext i32 %.val10.i.i to i64, !dbg !54530 ; 3 uses
  %i.jy = icmp ult i32 %.val10.i.i, %i.jt, !dbg !54531 ; 2 uses
  br i1 %i.jr, label %bb.ba, label %.thread.i.i.i.i, !dbg !54532

bb.ba:                                            ; preds = %.preheader
  br i1 %i.jy, label %bb.bc, label %.invoke507, !dbg !54531

.thread.i.i.i.i:                                  ; preds = %.preheader
  br i1 %i.jy, label %bb.bb, label %.invoke507, !dbg !54531

bb.bb:                                            ; preds = %.thread.i.i.i.i
  %i.jz = load ptr, ptr %i.jo, align 8, !dbg !54533, !noalias !54261, !noundef !4431
  br label %bb.bc, !dbg !54534

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.sroa.09.0.i.i.i.i = phi ptr [ %i.jz, %bb.bb ], [ %i.jo, %bb.ba ], !dbg !54535 ; 2 uses
  %.in.in.i.i.i.i = getelementptr inbounds nuw [4 x i8], ptr %.sroa.09.0.i.i.i.i, i64 %i.jx, !dbg !54531
  %.in.i.i.i.i = load i32, ptr %.in.in.i.i.i.i, align 4, !dbg !54531, !noalias !54261, !noundef !4431
  %i.ka = zext i32 %.in.i.i.i.i to i64, !dbg !54536 ; 3 uses
  %i.kb = zext i32 %.val11.i.i to i64, !dbg !54537 ; 2 uses
  %i.kc = icmp ult i32 %.val11.i.i, %i.jt, !dbg !54538
  br i1 %i.kc, label %bb.bd, label %.invoke507, !dbg !54538

bb.bd:                                            ; preds = %bb.bc
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.09.0.i.i.i.i, i64 %i.kb, !dbg !54538
  %i.ke = load i32, ptr %i.kd, align 4, !dbg !54538, !noalias !54261, !noundef !4431
  %i.kf = zext i32 %i.ke to i64, !dbg !54539      ; 3 uses
  %i.kg = load ptr, ptr %i.jk, align 8, !dbg !54540, !alias.scope !54260, !noalias !54262, !nonnull !4431, !align !4534, !noundef !4431 ; 2 uses
  %i.kh = load ptr, ptr %i.kg, align 8, !dbg !54541, !noalias !54261, !nonnull !4431, !noundef !4431 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 40, !dbg !54542
  %i.kj = load i64, ptr %i.ki, align 8, !dbg !54542, !noalias !54261, !noundef !4431 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kh, i64 32, !dbg !54543
  %i.kl = load ptr, ptr %i.kk, align 8, !dbg !54543, !noalias !54261, !noundef !4431 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kg, i64 8, !dbg !54544
  %i.kn = load i64, ptr %i.km, align 8, !dbg !54544, !noalias !54261, !noundef !4431 ; 2 uses
  %i.ko = add i64 %i.kn, %i.ka, !dbg !54544       ; 2 uses
  %i.kp = lshr i64 %i.ko, 3, !dbg !54545          ; 2 uses
  %i.kq = icmp ult i64 %i.kp, %i.kj, !dbg !54546
  tail call void @llvm.assume(i1 %i.kq), !dbg !54547
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kl, i64 %i.kp, !dbg !54548
  %i.ks = load i8, ptr %i.kr, align 1, !dbg !54549, !noalias !54261, !noundef !4431
  %i.kt = trunc i64 %i.ko to i8, !dbg !54550
end_hunk_4
begin_hunk_5_@_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift4sortmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1M_10WindowExprNtB1O_12PhysicalExpr23evaluate_on_groups_impls3_0E0EB1Q_:bb.a
  %i.pf = ptrtoint ptr %.sroa.7.2.i to i64, !dbg !54641
  %i.pg = ptrtoint ptr %.sroa.0.3.i to i64, !dbg !54641
  %i.ph = sub nuw i64 %i.pf, %i.pg, !dbg !54641
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.13.4.i, ptr align 4 %.sroa.0.3.i, i64 %i.ph, i1 false), !dbg !54642, !alias.scope !54257, !noalias !54270
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5merge5mergemNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1N_10WindowExprNtB1P_12PhysicalExpr23evaluate_on_groups_impls3_0E0EB1R_.exit, !dbg !54643

bb.bq:                                            ; preds = %.invoke507, %.invoke
  %.sroa.13.3.i = phi ptr [ %.sroa.13.0.i, %.invoke507 ], [ %.sroa.13.1.i, %.invoke ], !dbg !54644
  %.sroa.7.1.i = phi ptr [ %.sroa.7.0.i, %.invoke507 ], [ %i.jj, %.invoke ], !dbg !54644
  %.sroa.0.2.i = phi ptr [ %2, %.invoke507 ], [ %.sroa.0.0.i37, %.invoke ], !dbg !54644 ; 2 uses
  %i.pi = landingpad { ptr, i32 }
          cleanup
  %i.pj = ptrtoint ptr %.sroa.7.1.i to i64, !dbg !54645
  %i.pk = ptrtoint ptr %.sroa.0.2.i to i64, !dbg !54645
  %i.pl = sub nuw i64 %i.pj, %i.pk, !dbg !54645
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.13.3.i, ptr nonnull align 4 %.sroa.0.2.i, i64 %i.pl, i1 false), !dbg !54646, !alias.scope !54257, !noalias !54271
  resume { ptr, i32 } %i.pi, !dbg !54647

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5merge5mergemNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1N_10WindowExprNtB1P_12PhysicalExpr23evaluate_on_groups_impls3_0E0EB1R_.exit: ; preds = %bb.ay, %bb.az, %_RINvMNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5mergeINtB3_10MergeStatemE10merge_downNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB2d_10WindowExprNtB2f_12PhysicalExpr23evaluate_on_groups_impls3_0E0EB2h_.exit.i
  %i.pm = shl nuw nsw i64 %i.iq, 1, !dbg !54648
  %i.pn = or disjoint i64 %i.pm, 1, !dbg !54648
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift13logical_mergemNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1W_10WindowExprNtB1Y_12PhysicalExpr23evaluate_on_groups_impls3_0E0EB20_.exit, !dbg !54507

bb.br:                                            ; preds = %bb.aw
  %i.po = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %i.io, !dbg !54649
  %i.pp = or i64 %i.ip, 1, !dbg !54650
  %i.pq = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %i.pp, i1 true), !dbg !54651
  %i.pr = trunc nuw nsw i64 %i.pq to i32, !dbg !54651
  %i.ps = shl nuw nsw i32 %i.pr, 1, !dbg !54652
  %i.pt = xor i32 %i.ps, 126, !dbg !54652
  tail call void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1V_10WindowExprNtB1X_12PhysicalExpr23evaluate_on_groups_impls3_0E0EB1Z_(ptr noalias noundef nonnull align 4 %i.po, i64 noundef range(i64 0, 2305843009213693952) %i.ip, ptr noalias noundef nonnull align 4 %2, i64 noundef range(i64 0, 2305843009213693952) %3, i32 noundef %i.pt, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5) #44, !dbg !54653, !inline_history !54056
  br label %bb.ay, !dbg !54654

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift13logical_mergemNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1W_10WindowExprNtB1Y_12PhysicalExpr23evaluate_on_groups_impls3_0E0EB20_.exit: ; preds = %bb.av, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5merge5mergemNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1N_10WindowExprNtB1P_12PhysicalExpr23evaluate_on_groups_impls3_0E0EB1R_.exit
  %.sroa.0.0.i = phi i64 [ %i.pn, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5merge5mergemNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1N_10WindowExprNtB1P_12PhysicalExpr23evaluate_on_groups_impls3_0E0EB1R_.exit ], [ %i.iy, %bb.av ], !dbg !54655 ; 2 uses
  %i.pu = icmp ugt i64 %i.ih, 1, !dbg !54294
  br i1 %i.pu, label %bb.as, label %._crit_edge, !dbg !54294

bb.bs:                                            ; preds = %._crit_edge
  %i.pv = add nuw nsw i64 %.sroa.02.1.lcssa, 1, !dbg !54656
  %i.pw = lshr i64 %.sroa.018.0, 1, !dbg !54657
  %i.px = add nuw i64 %i.pw, %.sroa.09.0, !dbg !54658
  br label %bb.f, !dbg !54288

bb.bt:                                            ; preds = %._crit_edge
  %i.py = and i64 %.sroa.023.1.lcssa, 1, !dbg !54659
  %.not31 = icmp eq i64 %i.py, 0, !dbg !54660
  br i1 %.not31, label %bb.bu, label %bb.bv, !dbg !54660

bb.bu:                                            ; preds = %bb.bt
  %i.pz = or i64 %1, 1, !dbg !54661
  %i.qa = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %i.pz, i1 true), !dbg !54662
  %i.qb = trunc nuw nsw i64 %i.qa to i32, !dbg !54662
  %i.qc = shl nuw nsw i32 %i.qb, 1, !dbg !54663
  %i.qd = xor i32 %i.qc, 126, !dbg !54663
  tail call void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1V_10WindowExprNtB1X_12PhysicalExpr23evaluate_on_groups_impls3_0E0EB1Z_(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias noundef nonnull align 4 %2, i64 noundef range(i64 0, 2305843009213693952) %3, i32 noundef %i.qd, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5) #44, !dbg !54664, !inline_history !54056
  br label %bb.bv, !dbg !54665

bb.bv:                                            ; preds = %bb.bt, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !54666
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !54667
  br label %bb.bw, !dbg !54668

bb.bw:                                            ; preds = %bb.a, %bb.bv
  ret void, !dbg !54668
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift4sortmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1M_10WindowExprNtB1O_12PhysicalExpr23evaluate_on_groups_impls6_0E0EB1Q_(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias noundef nonnull align 4 %2, i64 noundef range(i64 0, 2305843009213693952) %3, i1 noundef zeroext %4, ptr noalias noundef align 8 dereferenceable(8) %5) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !54669 {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2, !dbg !54967
  br i1 %i.c, label %bb.af, label %bb.b, !dbg !54967

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1, !dbg !54968
  %i.e = urem i64 4611686018427387904, %1, !dbg !54969
  %.not = icmp ne i64 %i.e, 0, !dbg !54970
  %i.f = zext i1 %.not to i64, !dbg !54970
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f, !dbg !54970 ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097, !dbg !54971
  br i1 %i.g, label %bb.d, label %bb.c, !dbg !54971

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1), !dbg !54972
  br label %bb.e, !dbg !54972

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1, !dbg !54973
  %i.j = sub nuw nsw i64 %1, %i.i, !dbg !54974
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64), !dbg !54975
  br label %bb.e, !dbg !54976

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ], !dbg !54977 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !54978
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !54979
  %.not5.i108 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i113 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f, !dbg !54980

bb.f:                                             ; preds = %bb.ab, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.ab ], !dbg !54981 ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.il, %bb.ab ], !dbg !54982 ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ij, %bb.ab ], !dbg !54983 ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1, !dbg !54984 ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g, !dbg !54984

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift10create_runmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1T_10WindowExprNtB1V_12PhysicalExpr23evaluate_on_groups_impls6_0E0EB1X_.exit
  %.sroa.021.0 = phi i8 [ %i.cu, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift10create_runmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1T_10WindowExprNtB1V_12PhysicalExpr23evaluate_on_groups_impls6_0E0EB1X_.exit ], [ 0, %bb.f ], !dbg !54985 ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift10create_runmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1T_10WindowExprNtB1V_12PhysicalExpr23evaluate_on_groups_impls6_0E0EB1X_.exit ], [ 1, %bb.f ], !dbg !54985 ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1, !dbg !54986
  br i1 %i.l, label %.lr.ph74, label %._crit_edge, !dbg !54986

.lr.ph74:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.09.0 ; 4 uses
  br label %bb.r, !dbg !54986

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0, !dbg !54987 ; 11 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.09.0, !dbg !54988 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54924), !dbg !54989
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54925), !dbg !54989
  %.not.i33 = icmp ult i64 %i.n, %.sroa.01.0, !dbg !54990
  br i1 %.not.i33, label %bb.i, label %bb.j, !dbg !54990

bb.i:                                             ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1S_10WindowExprNtB1U_12PhysicalExpr23evaluate_on_groups_impls6_0E0EB1W_.exit.i.thread111, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1S_10WindowExprNtB1U_12PhysicalExpr23evaluate_on_groups_impls6_0E0EB1W_.exit.i.thread, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1S_10WindowExprNtB1U_12PhysicalExpr23evaluate_on_groups_impls6_0E0EB1W_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o, !dbg !54991

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2, !dbg !54992
  br i1 %i.p, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSm7reverseCskY9G75ZWc4U_11polars_expr.exit, label %bb.k, !dbg !54992

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 4, !dbg !54993
  %.val12.i = load ptr, ptr %5, align 8, !dbg !54994, !alias.scope !54925, !noalias !54926, !nonnull !4431, !align !4534, !noundef !4431 ; 4 uses
  %.val13.i = load i32, ptr %i.q, align 4, !dbg !54994, !alias.scope !54924, !noalias !54927, !noundef !4431 ; 3 uses
  %.val14.i = load i32, ptr %i.o, align 4, !dbg !54994, !alias.scope !54924, !noalias !54927, !noundef !4431
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54928), !dbg !54995, !noalias !54929
  %i.r = load ptr, ptr %.val12.i, align 8, !dbg !54996, !alias.scope !54928, !noalias !54929, !nonnull !4431, !align !5173, !noundef !4431
  %i.s = load i32, ptr %i.r, align 4, !dbg !54997, !noalias !54930, !noundef !4431 ; 6 uses
  %i.t = add i32 %i.s, %.val13.i, !dbg !54997
  %i.u = zext i32 %i.t to i64, !dbg !54998        ; 2 uses
  %i.v = add i32 %i.s, %.val14.i, !dbg !54999
  %i.w = zext i32 %i.v to i64, !dbg !55000        ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.val12.i, i64 8, !dbg !55001
  %i.y = load ptr, ptr %i.x, align 8, !dbg !55001, !alias.scope !54928, !noalias !54929, !nonnull !4431, !align !5173, !noundef !4431 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.val12.i, i64 16, !dbg !55001
  %i.aa = load i64, ptr %i.z, align 8, !dbg !55001, !alias.scope !54928, !noalias !54929, !noundef !4431 ; 6 uses
  %i.ab = icmp ugt i64 %i.aa, %i.u, !dbg !55002
  tail call void @llvm.assume(i1 %i.ab), !dbg !55003, !noalias !54929
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.u, !dbg !55004
  %i.ad = icmp ugt i64 %i.aa, %i.w, !dbg !55005
  tail call void @llvm.assume(i1 %i.ad), !dbg !55006, !noalias !54929
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.w, !dbg !55007
  %i.af = load i32, ptr %i.ac, align 4, !dbg !55008, !noalias !54930, !noundef !4431
  %i.ag = load i32, ptr %i.ae, align 4, !dbg !55009, !noalias !54930, !noundef !4431
  %i.ah = tail call i8 @llvm.ucmp.i8.i32(i32 %i.af, i32 %i.ag), !dbg !55010 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.val12.i, i64 24, !dbg !55011
  %i.aj = load ptr, ptr %i.ai, align 8, !dbg !55011, !alias.scope !54928, !noalias !54929, !nonnull !4431, !align !5173, !noundef !4431
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !55011
  %i.al = load i8, ptr %i.ak, align 4, !dbg !55011, !range !4826, !noalias !54930, !noundef !4431
  %i.am = trunc nuw i8 %i.al to i1, !dbg !55011   ; 3 uses
  %switch.offset.i.i42 = sub nsw i8 0, %i.ah, !dbg !55011
  %.sroa.0.0.i.i43 = select i1 %i.am, i8 %switch.offset.i.i42, i8 %i.ah, !dbg !55011
  %i.an = icmp eq i8 %.sroa.0.0.i.i43, -1, !dbg !55012 ; 2 uses
  %.not81 = icmp eq i64 %i.n, 2, !dbg !55013      ; 2 uses
  br i1 %i.an, label %.preheader, label %.preheader55, !dbg !55014

.preheader55:                                     ; preds = %bb.k
  br i1 %.not81, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1S_10WindowExprNtB1U_12PhysicalExpr23evaluate_on_groups_impls6_0E0EB1W_.exit.i.thread, label %.lr.ph, !dbg !55015

.preheader:                                       ; preds = %bb.k
  br i1 %.not81, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1S_10WindowExprNtB1U_12PhysicalExpr23evaluate_on_groups_impls6_0E0EB1W_.exit.i.thread111, label %.lr.ph68, !dbg !55016

.lr.ph:                                           ; preds = %.preheader55, %bb.l
  %.val11.i = phi i32 [ %.val10.i, %bb.l ], [ %.val13.i, %.preheader55 ], !dbg !55017
  %.sroa.01.0.i.i64 = phi i64 [ %i.bb, %bb.l ], [ 2, %.preheader55 ] ; 3 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.sroa.01.0.i.i64, !dbg !55018
  %.val10.i = load i32, ptr %i.ao, align 4, !dbg !55017, !alias.scope !54924, !noalias !54927, !noundef !4431 ; 2 uses
  %i.ap = add i32 %.val10.i, %i.s, !dbg !55019
  %i.aq = zext i32 %i.ap to i64, !dbg !55020      ; 2 uses
  %i.ar = add i32 %.val11.i, %i.s, !dbg !55021
  %i.as = zext i32 %i.ar to i64, !dbg !55022      ; 2 uses
  %i.at = icmp ugt i64 %i.aa, %i.aq, !dbg !55023
  tail call void @llvm.assume(i1 %i.at), !dbg !55024, !noalias !54929
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.aq, !dbg !55025
  %i.av = icmp ugt i64 %i.aa, %i.as, !dbg !55026
  tail call void @llvm.assume(i1 %i.av), !dbg !55027, !noalias !54929
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.as, !dbg !55028
  %i.ax = load i32, ptr %i.au, align 4, !dbg !55029, !noalias !54932, !noundef !4431
  %i.ay = load i32, ptr %i.aw, align 4, !dbg !55030, !noalias !54932, !noundef !4431
  %i.az = tail call i8 @llvm.ucmp.i8.i32(i32 %i.ax, i32 %i.ay), !dbg !55031 ; 2 uses
  %switch.offset.i.i40 = sub nsw i8 0, %i.az, !dbg !55032
  %.sroa.0.0.i.i41 = select i1 %i.am, i8 %switch.offset.i.i40, i8 %i.az, !dbg !55032
  %i.ba = icmp eq i8 %.sroa.0.0.i.i41, -1, !dbg !55033
  br i1 %i.ba, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1S_10WindowExprNtB1U_12PhysicalExpr23evaluate_on_groups_impls6_0E0EB1W_.exit.i, label %bb.l, !dbg !55017

bb.l:                                             ; preds = %.lr.ph
  %i.bb = add nuw nsw i64 %.sroa.01.0.i.i64, 1, !dbg !55034 ; 2 uses
  %exitcond.not = icmp eq i64 %i.bb, %i.n, !dbg !55015
  br i1 %exitcond.not, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1S_10WindowExprNtB1U_12PhysicalExpr23evaluate_on_groups_impls6_0E0EB1W_.exit.i, label %.lr.ph, !dbg !55015

.lr.ph68:                                         ; preds = %.preheader, %bb.m
  %.val8.i = phi i32 [ %.val7.i, %bb.m ], [ %.val13.i, %.preheader ], !dbg !55035
  %.sroa.01.1.i.i67 = phi i64 [ %i.bp, %bb.m ], [ 2, %.preheader ] ; 3 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.sroa.01.1.i.i67, !dbg !55036
  %.val7.i = load i32, ptr %i.bc, align 4, !dbg !55035, !alias.scope !54924, !noalias !54927, !noundef !4431 ; 2 uses
  %i.bd = add i32 %.val7.i, %i.s, !dbg !55037
  %i.be = zext i32 %i.bd to i64, !dbg !55038      ; 2 uses
  %i.bf = add i32 %.val8.i, %i.s, !dbg !55039
  %i.bg = zext i32 %i.bf to i64, !dbg !55040      ; 2 uses
  %i.bh = icmp ugt i64 %i.aa, %i.be, !dbg !55041
  tail call void @llvm.assume(i1 %i.bh), !dbg !55042, !noalias !54929
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.be, !dbg !55043
  %i.bj = icmp ugt i64 %i.aa, %i.bg, !dbg !55044
  tail call void @llvm.assume(i1 %i.bj), !dbg !55045, !noalias !54929
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.bg, !dbg !55046
  %i.bl = load i32, ptr %i.bi, align 4, !dbg !55047, !noalias !54934, !noundef !4431
  %i.bm = load i32, ptr %i.bk, align 4, !dbg !55048, !noalias !54934, !noundef !4431
  %i.bn = tail call i8 @llvm.ucmp.i8.i32(i32 %i.bl, i32 %i.bm), !dbg !55049 ; 2 uses
  %switch.offset.i.i = sub nsw i8 0, %i.bn, !dbg !55050
  %.sroa.0.0.i.i39 = select i1 %i.am, i8 %switch.offset.i.i, i8 %i.bn, !dbg !55050
  %i.bo = icmp eq i8 %.sroa.0.0.i.i39, -1, !dbg !55051
  br i1 %i.bo, label %bb.m, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1S_10WindowExprNtB1U_12PhysicalExpr23evaluate_on_groups_impls6_0E0EB1W_.exit.i, !dbg !55035

bb.m:                                             ; preds = %.lr.ph68
  %i.bp = add nuw nsw i64 %.sroa.01.1.i.i67, 1, !dbg !55052 ; 2 uses
  %exitcond94.not = icmp eq i64 %i.bp, %i.n, !dbg !55016
  br i1 %exitcond94.not, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1S_10WindowExprNtB1U_12PhysicalExpr23evaluate_on_groups_impls6_0E0EB1W_.exit.i, label %.lr.ph68, !dbg !55016

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1S_10WindowExprNtB1U_12PhysicalExpr23evaluate_on_groups_impls6_0E0EB1W_.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph68
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i67, %.lr.ph68 ], [ %i.n, %bb.m ], [ %.sroa.01.0.i.i64, %.lr.ph ], [ %i.n, %bb.l ], !dbg !55053 ; 6 uses
  %i.bq = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n, !dbg !55054
  tail call void @llvm.assume(i1 %i.bq), !dbg !55055
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0, !dbg !55056
  br i1 %.not5.i, label %bb.i, label %bb.n, !dbg !55056

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1S_10WindowExprNtB1U_12PhysicalExpr23evaluate_on_groups_impls6_0E0EB1W_.exit.i.thread111: ; preds = %.preheader
  br i1 %.not5.i113, label %bb.i, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSm12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i.i, !dbg !55056

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1S_10WindowExprNtB1U_12PhysicalExpr23evaluate_on_groups_impls6_0E0EB1W_.exit.i.thread: ; preds = %.preheader55
  br i1 %.not5.i108, label %bb.i, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSm7reverseCskY9G75ZWc4U_11polars_expr.exit, !dbg !55056

bb.n:                                             ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1S_10WindowExprNtB1U_12PhysicalExpr23evaluate_on_groups_impls6_0E0EB1W_.exit.i
  br i1 %i.an, label %bb.q, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSm7reverseCskY9G75ZWc4U_11polars_expr.exit, !dbg !55057

bb.o:                                             ; preds = %bb.i
  %.sroa.0.0.i38 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %i.n, i64 %.sroa.01.0), !dbg !55058
  %i.br = shl nuw nsw i64 %.sroa.0.0.i38, 1, !dbg !55059
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift10create_runmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1T_10WindowExprNtB1V_12PhysicalExpr23evaluate_on_groups_impls6_0E0EB1X_.exit, !dbg !55060

bb.p:                                             ; preds = %bb.i
  %.sroa.0.0.i37 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %i.n, i64 32), !dbg !55061 ; 2 uses
  tail call void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1V_10WindowExprNtB1X_12PhysicalExpr23evaluate_on_groups_impls6_0E0EB1Z_(ptr noalias noundef nonnull align 4 %i.o, i64 noundef %.sroa.0.0.i37, ptr noalias noundef nonnull align 4 %2, i64 noundef range(i64 0, 2305843009213693952) %3, i32 noundef 0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5) #44, !dbg !55062, !inline_history !54756
  %i.bs = shl nuw nsw i64 %.sroa.0.0.i37, 1, !dbg !55063
  %i.bt = or disjoint i64 %i.bs, 1, !dbg !55063
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift10create_runmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1T_10WindowExprNtB1V_12PhysicalExpr23evaluate_on_groups_impls6_0E0EB1X_.exit, !dbg !55060

_RNvMNtCscgRAwXFJnXP_4core5sliceSm7reverseCskY9G75ZWc4U_11polars_expr.exit: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSm12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.i, %middle.block, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1S_10WindowExprNtB1U_12PhysicalExpr23evaluate_on_groups_impls6_0E0EB1W_.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i4851 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1S_10WindowExprNtB1U_12PhysicalExpr23evaluate_on_groups_impls6_0E0EB1W_.exit.i.thread ], [ %.sroa.0.0.i.i109116120, %middle.block ], [ %.sroa.0.0.i.i109116120, %_RNvMNtCscgRAwXFJnXP_4core5sliceSm12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.i ]
  %i.bu = shl nuw nsw i64 %.sroa.0.0.i.i4851, 1, !dbg !55064
  %i.bv = or disjoint i64 %i.bu, 1, !dbg !55064
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift10create_runmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1T_10WindowExprNtB1V_12PhysicalExpr23evaluate_on_groups_impls6_0E0EB1X_.exit, !dbg !55065

bb.q:                                             ; preds = %bb.n
  %i.bw = lshr i64 %.sroa.0.0.i.i, 1, !dbg !55066 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54935), !dbg !55067, !noalias !54927
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54936), !dbg !55067, !noalias !54927
  %.not.i.i = icmp eq i64 %i.bw, 0, !dbg !55068
  br i1 %.not.i.i, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSm7reverseCskY9G75ZWc4U_11polars_expr.exit, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSm12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i.i, !dbg !55068

_RNvMNtCscgRAwXFJnXP_4core5sliceSm12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1S_10WindowExprNtB1U_12PhysicalExpr23evaluate_on_groups_impls6_0E0EB1W_.exit.i.thread111, %bb.q
  %i.bx = phi i64 [ %i.bw, %bb.q ], [ 1, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1S_10WindowExprNtB1U_12PhysicalExpr23evaluate_on_groups_impls6_0E0EB1W_.exit.i.thread111 ] ; 4 uses
  %.sroa.0.0.i.i109116120 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1S_10WindowExprNtB1U_12PhysicalExpr23evaluate_on_groups_impls6_0E0EB1W_.exit.i.thread111 ] ; 3 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.sroa.0.0.i.i109116120, !dbg !55069 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.bx, 8, !dbg !55068
  br i1 %min.iters.check, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSm12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.i.preheader, label %vector.ph, !dbg !55068

vector.ph:                                        ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSm12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i.i
  %n.vec = and i64 %i.bx, 9223372036854775800     ; 3 uses
  br label %vector.body, !dbg !55068

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !55070 ; 3 uses
  %i.bz = xor i64 %index, -1, !dbg !55071
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %index, !dbg !55072 ; 3 uses
  %i.cb = getelementptr [4 x i8], ptr %i.by, i64 %i.bz, !dbg !55073 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 16, !dbg !55074 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.ca, align 4, !dbg !55074, !alias.scope !54937, !noalias !54938
  %wide.load145 = load <4 x i32>, ptr %i.cc, align 4, !dbg !55074, !alias.scope !54937, !noalias !54938
  %i.cd = getelementptr i8, ptr %i.cb, i64 -12, !dbg !55074 ; 2 uses
  %i.ce = getelementptr i8, ptr %i.cb, i64 -28, !dbg !55074 ; 2 uses
  %wide.load146 = load <4 x i32>, ptr %i.cd, align 4, !dbg !55074, !alias.scope !54939, !noalias !54940
  %wide.load147 = load <4 x i32>, ptr %i.ce, align 4, !dbg !55074, !alias.scope !54939, !noalias !54940
  %reverse = shufflevector <4 x i32> %wide.load146, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>, !dbg !55074
  %reverse148 = shufflevector <4 x i32> %wide.load147, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>, !dbg !55074
  store <4 x i32> %reverse, ptr %i.ca, align 4, !dbg !55074, !alias.scope !54937, !noalias !54938
  store <4 x i32> %reverse148, ptr %i.cc, align 4, !dbg !55074, !alias.scope !54937, !noalias !54938
  %reverse149 = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>, !dbg !55074
  %reverse150 = shufflevector <4 x i32> %wide.load145, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>, !dbg !55074
  store <4 x i32> %reverse149, ptr %i.cd, align 4, !dbg !55074, !alias.scope !54939, !noalias !54940
  store <4 x i32> %reverse150, ptr %i.ce, align 4, !dbg !55074, !alias.scope !54939, !noalias !54940
  %index.next = add nuw i64 %index, 8, !dbg !55070 ; 2 uses
  %i.cf = icmp eq i64 %index.next, %n.vec, !dbg !55068
  br i1 %i.cf, label %middle.block, label %vector.body, !dbg !55068, !llvm.loop !54771

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bx, %n.vec, !dbg !55068
  br i1 %cmp.n, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSm7reverseCskY9G75ZWc4U_11polars_expr.exit, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSm12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.i.preheader, !dbg !55068

_RNvMNtCscgRAwXFJnXP_4core5sliceSm12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.i.preheader: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSm12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i.i, %middle.block
  %.sroa.0.016.i.i.ph = phi i64 [ 0, %_RNvMNtCscgRAwXFJnXP_4core5sliceSm12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCscgRAwXFJnXP_4core5sliceSm12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.i, !dbg !55068

_RNvMNtCscgRAwXFJnXP_4core5sliceSm12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.i: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSm12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.i.preheader, %_RNvMNtCscgRAwXFJnXP_4core5sliceSm12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.cl, %_RNvMNtCscgRAwXFJnXP_4core5sliceSm12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.i ], [ %.sroa.0.016.i.i.ph, %_RNvMNtCscgRAwXFJnXP_4core5sliceSm12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.i.preheader ] ; 3 uses
  %i.cg = xor i64 %.sroa.0.016.i.i, -1, !dbg !55071
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.sroa.0.016.i.i, !dbg !55072 ; 2 uses
  %i.ci = getelementptr [4 x i8], ptr %i.by, i64 %i.cg, !dbg !55073 ; 2 uses
  %i.cj = load i32, ptr %i.ch, align 4, !dbg !55074, !alias.scope !54937, !noalias !54938, !noundef !4431
  %i.ck = load i32, ptr %i.ci, align 4, !dbg !55074, !alias.scope !54939, !noalias !54940
  store i32 %i.ck, ptr %i.ch, align 4, !dbg !55074, !alias.scope !54937, !noalias !54938
  store i32 %i.cj, ptr %i.ci, align 4, !dbg !55074, !alias.scope !54939, !noalias !54940
  %i.cl = add nuw nsw i64 %.sroa.0.016.i.i, 1, !dbg !55070 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.cl, %i.bx, !dbg !55068
  br i1 %exitcond.not.i.i, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSm7reverseCskY9G75ZWc4U_11polars_expr.exit, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSm12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.i, !dbg !55068, !llvm.loop !54772

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift10create_runmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1T_10WindowExprNtB1V_12PhysicalExpr23evaluate_on_groups_impls6_0E0EB1X_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCscgRAwXFJnXP_4core5sliceSm7reverseCskY9G75ZWc4U_11polars_expr.exit
  %.sroa.0.0.i34 = phi i64 [ %i.bv, %_RNvMNtCscgRAwXFJnXP_4core5sliceSm7reverseCskY9G75ZWc4U_11polars_expr.exit ], [ %i.bt, %bb.p ], [ %i.br, %bb.o ], !dbg !55075 ; 2 uses
  %i.cm = lshr i64 %.sroa.023.0, 1, !dbg !55076
  %i.cn = lshr i64 %.sroa.0.0.i34, 1, !dbg !55077
  %factor = shl nuw nsw i64 %.sroa.09.0, 1, !dbg !55078 ; 2 uses
  %i.co = sub nsw i64 %factor, %i.cm, !dbg !55078
  %i.cp = add nuw nsw i64 %i.cn, %factor, !dbg !55079
  %i.cq = mul i64 %i.co, %.sroa.0.0, !dbg !55080
  %i.cr = mul i64 %i.cp, %.sroa.0.0, !dbg !55081
  %i.cs = xor i64 %i.cr, %i.cq, !dbg !55082
  %i.ct = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cs, i1 false), !dbg !55083
  %i.cu = trunc nuw nsw i64 %i.ct to i8, !dbg !55082
  br label %bb.g, !dbg !55084

bb.r:                                             ; preds = %.lr.ph74, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift13logical_mergemNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1W_10WindowExprNtB1Y_12PhysicalExpr23evaluate_on_groups_impls6_0E0EB20_.exit
  %.sroa.02.173 = phi i64 [ %.sroa.02.0, %.lr.ph74 ], [ %i.cv, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift13logical_mergemNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1W_10WindowExprNtB1Y_12PhysicalExpr23evaluate_on_groups_impls6_0E0EB20_.exit ] ; 2 uses
  %.sroa.023.172 = phi i64 [ %.sroa.023.0, %.lr.ph74 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift13logical_mergemNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1W_10WindowExprNtB1Y_12PhysicalExpr23evaluate_on_groups_impls6_0E0EB20_.exit ] ; 4 uses
  %i.cv = add i64 %.sroa.02.173, -1, !dbg !55085  ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cv, !dbg !55086
  %i.cx = load i8, ptr %i.cw, align 1, !dbg !55087, !noundef !4431
  %.not29 = icmp ult i8 %i.cx, %.sroa.021.0, !dbg !55087
  br i1 %.not29, label %._crit_edge, label %bb.s, !dbg !55087

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift13logical_mergemNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1W_10WindowExprNtB1Y_12PhysicalExpr23evaluate_on_groups_impls6_0E0EB20_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.172, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift13logical_mergemNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1W_10WindowExprNtB1Y_12PhysicalExpr23evaluate_on_groups_impls6_0E0EB20_.exit ], !dbg !54981 ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.173, %bb.r ], [ 1, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift13logical_mergemNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1W_10WindowExprNtB1Y_12PhysicalExpr23evaluate_on_groups_impls6_0E0EB20_.exit ], !dbg !54983 ; 3 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa, !dbg !55088
  store i64 %.sroa.023.1.lcssa, ptr %i.cy, align 8, !dbg !55089
  %i.cz = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa, !dbg !55090
  store i8 %.sroa.021.0, ptr %i.cz, align 1, !dbg !55091
  br i1 %i.k, label %bb.ab, label %bb.ac, !dbg !55092

bb.s:                                             ; preds = %bb.r
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.cv, !dbg !55093
  %i.db = load i64, ptr %i.da, align 8, !dbg !55094, !noundef !4431 ; 3 uses
  %i.dc = lshr i64 %i.db, 1, !dbg !55095          ; 8 uses
  %i.dd = lshr i64 %.sroa.023.172, 1, !dbg !55096 ; 6 uses
  %i.de = add nuw i64 %i.dc, %i.dd, !dbg !55097   ; 4 uses
  %i.df = sub i64 %.sroa.09.0, %i.de, !dbg !55098
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.df, !dbg !55099 ; 8 uses
  %i.dh = icmp samesign ugt i64 %i.de, %3, !dbg !55100
  %i.di = trunc i64 %.sroa.023.172 to i1
  %i.dj = or i64 %i.db, %.sroa.023.172, !dbg !55101
  %i.dk = trunc i64 %i.dj to i1, !dbg !55101
  %or.cond3.i = or i1 %i.dh, %i.dk, !dbg !55101
  br i1 %or.cond3.i, label %bb.t, label %bb.u, !dbg !55101

bb.t:                                             ; preds = %bb.s
  %i.dl = trunc i64 %i.db to i1
  br i1 %i.dl, label %bb.v, label %bb.w, !dbg !55102

bb.u:                                             ; preds = %bb.s
  %i.dm = shl nuw nsw i64 %i.de, 1, !dbg !55103
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift13logical_mergemNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1W_10WindowExprNtB1Y_12PhysicalExpr23evaluate_on_groups_impls6_0E0EB20_.exit, !dbg !55104

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.di, label %bb.x, label %bb.aa, !dbg !55105

bb.w:                                             ; preds = %bb.t
  %i.dn = or i64 %i.dc, 1, !dbg !55106
  %i.do = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %i.dn, i1 true), !dbg !55107
  %i.dp = trunc nuw nsw i64 %i.do to i32, !dbg !55107
  %i.dq = shl nuw nsw i32 %i.dp, 1, !dbg !55108
  %i.dr = xor i32 %i.dq, 126, !dbg !55108
  tail call void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1V_10WindowExprNtB1X_12PhysicalExpr23evaluate_on_groups_impls6_0E0EB1Z_(ptr noalias noundef nonnull align 4 %i.dg, i64 noundef range(i64 0, 2305843009213693952) %i.dc, ptr noalias noundef nonnull align 4 %2, i64 noundef range(i64 0, 2305843009213693952) %3, i32 noundef %i.dr, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5) #44, !dbg !55109, !inline_history !54806
  br label %bb.v, !dbg !55110

bb.x:                                             ; preds = %bb.aa, %bb.v
  %.val = load ptr, ptr %5, align 8, !dbg !55111  ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54954), !dbg !55111
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54955), !dbg !55111
  %i.ds = icmp eq i64 %i.dc, 0, !dbg !55112
  %i.dt = icmp eq i64 %i.dd, 0
  %or.cond.i = or i1 %i.dt, %i.ds, !dbg !55112
  br i1 %or.cond.i, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5merge5mergemNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1N_10WindowExprNtB1P_12PhysicalExpr23evaluate_on_groups_impls6_0E0EB1R_.exit, label %bb.y, !dbg !55112

bb.y:                                             ; preds = %bb.x
  %.sroa.0.0.i.i35 = tail call i64 @llvm.umin.i64(i64 %i.dd, i64 range(i64 0, -9223372036854775808) %i.dc), !dbg !55113 ; 2 uses
  %i.du = icmp samesign ult i64 %3, %.sroa.0.0.i.i35, !dbg !55114
  br i1 %i.du, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5merge5mergemNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1N_10WindowExprNtB1P_12PhysicalExpr23evaluate_on_groups_impls6_0E0EB1R_.exit, label %.critedge.i, !dbg !55114

.critedge.i:                                      ; preds = %bb.y
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %i.dc, !dbg !55115 ; 5 uses
  %.not.i36 = icmp samesign ugt i64 %i.dc, %i.dd, !dbg !55116 ; 2 uses
  %spec.select.i = select i1 %.not.i36, ptr %i.dv, ptr %i.dg, !dbg !55117
  %i.dw = shl nuw nsw i64 %.sroa.0.0.i.i35, 2, !dbg !55118 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %2, ptr nonnull align 4 %spec.select.i, i64 %i.dw, i1 false), !dbg !55118, !alias.scope !54956
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 %i.dw, !dbg !55119 ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.dy = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.dz = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.ea = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.eb = load ptr, ptr %.val, align 8, !noalias !54956, !nonnull !4431, !align !5173, !noundef !4431
  %i.ec = load i32, ptr %i.eb, align 4, !noalias !54956, !noundef !4431 ; 8 uses
  %i.ed = load ptr, ptr %i.dy, align 8, !noalias !54956, !nonnull !4431, !align !5173, !noundef !4431 ; 8 uses
  %i.ee = load i64, ptr %i.dz, align 8, !noalias !54956, !noundef !4431 ; 8 uses
  %i.ef = load ptr, ptr %i.ea, align 8, !noalias !54956, !nonnull !4431, !align !5173, !noundef !4431
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.eh = load i8, ptr %i.eg, align 4, !range !4826, !noalias !54956, !noundef !4431
  %i.ei = trunc nuw i8 %i.eh to i1                ; 2 uses
end_hunk_5
begin_hunk_6_@_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift4sortmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1M_10WindowExprNtB1O_12PhysicalExpr23evaluate_on_groups_impls7_0E0EB1Q_:bb.a
  %i.p = icmp samesign ult i64 %i.n, 2, !dbg !55577
  br i1 %i.p, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSm7reverseCskY9G75ZWc4U_11polars_expr.exit, label %bb.k, !dbg !55577

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 4, !dbg !55578
  %.val12.i = load ptr, ptr %5, align 8, !dbg !55579, !alias.scope !55500, !noalias !55501, !nonnull !4431, !align !4534, !noundef !4431 ; 13 uses
  %.val13.i = load i32, ptr %i.q, align 4, !dbg !55579, !alias.scope !55499, !noalias !55502, !noundef !4431 ; 3 uses
  %.val14.i = load i32, ptr %i.o, align 4, !dbg !55579, !alias.scope !55499, !noalias !55502, !noundef !4431
  tail call void @llvm.experimental.noalias.scope.decl(metadata !55503), !dbg !55580, !noalias !55504
  %i.r = load ptr, ptr %.val12.i, align 8, !dbg !55581, !alias.scope !55503, !noalias !55504, !nonnull !4431, !align !5173, !noundef !4431
  %i.s = load i32, ptr %i.r, align 4, !dbg !55582, !noalias !55505, !noundef !4431 ; 6 uses
  %i.t = add i32 %i.s, %.val13.i, !dbg !55582
  %i.u = zext i32 %i.t to i64, !dbg !55583        ; 3 uses
  %i.v = add i32 %i.s, %.val14.i, !dbg !55584
  %i.w = zext i32 %i.v to i64, !dbg !55585        ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.val12.i, i64 8, !dbg !55586
  %i.y = load ptr, ptr %i.x, align 8, !dbg !55586, !alias.scope !55503, !noalias !55504, !nonnull !4431, !align !4534, !noundef !4431 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !dbg !55587, !noalias !55505, !nonnull !4431, !noundef !4431 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 40, !dbg !55588
  %i.ab = load i64, ptr %i.aa, align 8, !dbg !55588, !noalias !55505, !noundef !4431 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 32, !dbg !55589
  %i.ad = load ptr, ptr %i.ac, align 8, !dbg !55589, !noalias !55505, !noundef !4431 ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 8, !dbg !55590
  %i.af = load i64, ptr %i.ae, align 8, !dbg !55590, !noalias !55505, !noundef !4431 ; 6 uses
  %i.ag = add i64 %i.af, %i.u, !dbg !55590        ; 2 uses
  %i.ah = lshr i64 %i.ag, 3, !dbg !55591          ; 2 uses
  %i.ai = icmp ult i64 %i.ah, %i.ab, !dbg !55592
  tail call void @llvm.assume(i1 %i.ai), !dbg !55593, !noalias !55504
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ah, !dbg !55594
  %i.ak = load i8, ptr %i.aj, align 1, !dbg !55595, !noalias !55505, !noundef !4431
  %i.al = trunc i64 %i.ag to i8, !dbg !55596
  %i.am = and i8 %i.al, 7, !dbg !55596
  %i.an = lshr i8 %i.ak, %i.am, !dbg !55596
  %i.ao = add i64 %i.af, %i.w, !dbg !55597        ; 2 uses
  %i.ap = lshr i64 %i.ao, 3, !dbg !55598          ; 2 uses
  %i.aq = icmp ult i64 %i.ap, %i.ab, !dbg !55599
  tail call void @llvm.assume(i1 %i.aq), !dbg !55600, !noalias !55504
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ap, !dbg !55601
  %i.as = load i8, ptr %i.ar, align 1, !dbg !55602, !noalias !55505, !noundef !4431
  %i.at = trunc i64 %i.ao to i8, !dbg !55603
  %i.au = and i8 %i.at, 7, !dbg !55603
  %i.av = lshr i8 %i.as, %i.au, !dbg !55603       ; 2 uses
  %i.aw = and i8 %i.an, 1, !dbg !55604            ; 2 uses
  %i.ax = and i8 %i.aw, %i.av, !dbg !55604
  %.not.i.i50 = icmp eq i8 %i.ax, 0, !dbg !55604
  br i1 %.not.i.i50, label %bb.l, label %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls7_0E0BS_.exit57, !dbg !55604

bb.l:                                             ; preds = %bb.k
  %i.ay = and i8 %i.av, 1, !dbg !55605
  %i.az = sub nsw i8 %i.aw, %i.ay, !dbg !55606
  switch i8 %i.az, label %default.unreachable [
    i8 -1, label %bb.m
    i8 0, label %.preheader83
    i8 1, label %bb.n
  ], !dbg !55607

default.unreachable:                              ; preds = %bb.l, %bb.t, %bb.p, %bb.am, %bb.ai
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.ba = getelementptr inbounds nuw i8, ptr %.val12.i, i64 16, !dbg !55608
  %i.bb = load ptr, ptr %i.ba, align 8, !dbg !55608, !alias.scope !55503, !noalias !55504, !nonnull !4431, !align !5173, !noundef !4431
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 9, !dbg !55608
  %i.bd = load i8, ptr %i.bc, align 1, !dbg !55608, !range !4826, !noalias !55505, !noundef !4431
  %i.be = trunc nuw i8 %i.bd to i1, !dbg !55608
  br i1 %i.be, label %.preheader83, label %.preheader82, !dbg !55608

bb.n:                                             ; preds = %bb.l
  %i.bf = getelementptr inbounds nuw i8, ptr %.val12.i, i64 16, !dbg !55608
  %i.bg = load ptr, ptr %i.bf, align 8, !dbg !55608, !alias.scope !55503, !noalias !55504, !nonnull !4431, !align !5173, !noundef !4431
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 9, !dbg !55608
  %i.bi = load i8, ptr %i.bh, align 1, !dbg !55608, !range !4826, !noalias !55505, !noundef !4431
  %i.bj = trunc nuw i8 %i.bi to i1, !dbg !55608
  br i1 %i.bj, label %.preheader82, label %.preheader83, !dbg !55608

_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls7_0E0BS_.exit57: ; preds = %bb.k
  %i.bk = getelementptr inbounds nuw i8, ptr %.val12.i, i64 24, !dbg !55609
  %i.bl = load ptr, ptr %i.bk, align 8, !dbg !55609, !alias.scope !55503, !noalias !55504, !nonnull !4431, !align !5173, !noundef !4431 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.val12.i, i64 32, !dbg !55609
  %i.bn = load i64, ptr %i.bm, align 8, !dbg !55609, !alias.scope !55503, !noalias !55504, !noundef !4431 ; 2 uses
  %i.bo = icmp ugt i64 %i.bn, %i.u, !dbg !55610
  tail call void @llvm.assume(i1 %i.bo), !dbg !55611, !noalias !55504
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.u, !dbg !55612
  %i.bq = icmp ugt i64 %i.bn, %i.w, !dbg !55613
  tail call void @llvm.assume(i1 %i.bq), !dbg !55614, !noalias !55504
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.w, !dbg !55615
  %i.bs = load i32, ptr %i.bp, align 4, !dbg !55616, !noalias !55505, !noundef !4431
  %i.bt = load i32, ptr %i.br, align 4, !dbg !55617, !noalias !55505, !noundef !4431
  %i.bu = tail call i8 @llvm.ucmp.i8.i32(i32 %i.bs, i32 %i.bt), !dbg !55618 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.val12.i, i64 16, !dbg !55619
  %i.bw = load ptr, ptr %i.bv, align 8, !dbg !55619, !alias.scope !55503, !noalias !55504, !nonnull !4431, !align !5173, !noundef !4431
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8, !dbg !55619
  %i.by = load i8, ptr %i.bx, align 4, !dbg !55619, !range !4826, !noalias !55505, !noundef !4431
  %i.bz = trunc nuw i8 %i.by to i1, !dbg !55619
  %switch.offset.i.i51 = sub nsw i8 0, %i.bu
  %spec.select.i52 = select i1 %i.bz, i8 %switch.offset.i.i51, i8 %i.bu, !dbg !55619
  %i.ca = icmp eq i8 %spec.select.i52, -1, !dbg !55620
  br i1 %i.ca, label %.preheader82, label %.preheader83, !dbg !55621

.preheader83:                                     ; preds = %bb.m, %bb.n, %bb.l, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls7_0E0BS_.exit57
  %.not118 = icmp eq i64 %i.n, 2, !dbg !55622
  br i1 %.not118, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1S_10WindowExprNtB1U_12PhysicalExpr23evaluate_on_groups_impls7_0E0EB1W_.exit.i, label %.lr.ph, !dbg !55622

.lr.ph:                                           ; preds = %.preheader83
  %i.cb = getelementptr inbounds nuw i8, ptr %.val12.i, i64 24
  %i.cc = getelementptr inbounds nuw i8, ptr %.val12.i, i64 32
  %i.cd = getelementptr inbounds nuw i8, ptr %.val12.i, i64 16 ; 3 uses
  br label %bb.o, !dbg !55622

.preheader82:                                     ; preds = %bb.n, %bb.m, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls7_0E0BS_.exit57
  %.not119 = icmp eq i64 %i.n, 2, !dbg !55623
  br i1 %.not119, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1S_10WindowExprNtB1U_12PhysicalExpr23evaluate_on_groups_impls7_0E0EB1W_.exit.i, label %.lr.ph101, !dbg !55623

.lr.ph101:                                        ; preds = %.preheader82
  %i.ce = getelementptr inbounds nuw i8, ptr %.val12.i, i64 24
  %i.cf = getelementptr inbounds nuw i8, ptr %.val12.i, i64 32
  %i.cg = getelementptr inbounds nuw i8, ptr %.val12.i, i64 16 ; 3 uses
  br label %bb.s, !dbg !55623

bb.o:                                             ; preds = %.lr.ph, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls7_0E0BS_.exit49.thread
  %.val11.i = phi i32 [ %.val13.i, %.lr.ph ], [ %.val10.i, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls7_0E0BS_.exit49.thread ], !dbg !55624
  %.sroa.01.0.i.i94 = phi i64 [ 2, %.lr.ph ], [ %i.ee, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls7_0E0BS_.exit49.thread ] ; 6 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.sroa.01.0.i.i94, !dbg !55625
  %i.ci = add nsw i64 %.sroa.01.0.i.i94, -1, !dbg !55626
  %i.cj = icmp ult i64 %i.ci, %i.n, !dbg !55627
  tail call void @llvm.assume(i1 %i.cj), !dbg !55628
  %.val10.i = load i32, ptr %i.ch, align 4, !dbg !55624, !alias.scope !55499, !noalias !55502, !noundef !4431 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !55508), !dbg !55629, !noalias !55504
  %i.ck = add i32 %.val10.i, %i.s, !dbg !55630
  %i.cl = zext i32 %i.ck to i64, !dbg !55631      ; 3 uses
  %i.cm = add i32 %.val11.i, %i.s, !dbg !55632
  %i.cn = zext i32 %i.cm to i64, !dbg !55633      ; 3 uses
  %i.co = add i64 %i.af, %i.cl, !dbg !55634       ; 2 uses
  %i.cp = lshr i64 %i.co, 3, !dbg !55635          ; 2 uses
  %i.cq = icmp ult i64 %i.cp, %i.ab, !dbg !55636
  tail call void @llvm.assume(i1 %i.cq), !dbg !55637, !noalias !55504
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.cp, !dbg !55638
  %i.cs = load i8, ptr %i.cr, align 1, !dbg !55639, !noalias !55509, !noundef !4431
  %i.ct = trunc i64 %i.co to i8, !dbg !55640
  %i.cu = and i8 %i.ct, 7, !dbg !55640
  %i.cv = lshr i8 %i.cs, %i.cu, !dbg !55640
  %i.cw = add i64 %i.af, %i.cn, !dbg !55641       ; 2 uses
  %i.cx = lshr i64 %i.cw, 3, !dbg !55642          ; 2 uses
  %i.cy = icmp ult i64 %i.cx, %i.ab, !dbg !55643
  tail call void @llvm.assume(i1 %i.cy), !dbg !55644, !noalias !55504
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.cx, !dbg !55645
  %i.da = load i8, ptr %i.cz, align 1, !dbg !55646, !noalias !55509, !noundef !4431
  %i.db = trunc i64 %i.cw to i8, !dbg !55647
  %i.dc = and i8 %i.db, 7, !dbg !55647
  %i.dd = lshr i8 %i.da, %i.dc, !dbg !55647       ; 2 uses
  %i.de = and i8 %i.cv, 1, !dbg !55648            ; 2 uses
  %i.df = and i8 %i.de, %i.dd, !dbg !55648
  %.not.i.i42 = icmp eq i8 %i.df, 0, !dbg !55648
  br i1 %.not.i.i42, label %bb.p, label %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls7_0E0BS_.exit49, !dbg !55648

bb.p:                                             ; preds = %bb.o
  %i.dg = and i8 %i.dd, 1, !dbg !55649
  %i.dh = sub nsw i8 %i.de, %i.dg, !dbg !55650
  switch i8 %i.dh, label %default.unreachable [
    i8 -1, label %bb.q
    i8 0, label %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls7_0E0BS_.exit49.thread
    i8 1, label %bb.r
  ], !dbg !55651

bb.q:                                             ; preds = %bb.p
  %i.di = load ptr, ptr %i.cd, align 8, !dbg !55652, !alias.scope !55508, !noalias !55504, !nonnull !4431, !align !5173, !noundef !4431
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 9, !dbg !55652
  %i.dk = load i8, ptr %i.dj, align 1, !dbg !55652, !range !4826, !noalias !55509, !noundef !4431
  %i.dl = trunc nuw i8 %i.dk to i1, !dbg !55652
  br i1 %i.dl, label %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls7_0E0BS_.exit49.thread, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1S_10WindowExprNtB1U_12PhysicalExpr23evaluate_on_groups_impls7_0E0EB1W_.exit.i, !dbg !55652

bb.r:                                             ; preds = %bb.p
  %i.dm = load ptr, ptr %i.cd, align 8, !dbg !55652, !alias.scope !55508, !noalias !55504, !nonnull !4431, !align !5173, !noundef !4431
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 9, !dbg !55652
  %i.do = load i8, ptr %i.dn, align 1, !dbg !55652, !range !4826, !noalias !55509, !noundef !4431
  %i.dp = trunc nuw i8 %i.do to i1, !dbg !55652
  br i1 %i.dp, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1S_10WindowExprNtB1U_12PhysicalExpr23evaluate_on_groups_impls7_0E0EB1W_.exit.i, label %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls7_0E0BS_.exit49.thread, !dbg !55652

_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls7_0E0BS_.exit49: ; preds = %bb.o
  %i.dq = load ptr, ptr %i.cb, align 8, !dbg !55653, !alias.scope !55508, !noalias !55504, !nonnull !4431, !align !5173, !noundef !4431 ; 2 uses
  %i.dr = load i64, ptr %i.cc, align 8, !dbg !55653, !alias.scope !55508, !noalias !55504, !noundef !4431 ; 2 uses
  %i.ds = icmp ugt i64 %i.dr, %i.cl, !dbg !55654
  tail call void @llvm.assume(i1 %i.ds), !dbg !55655, !noalias !55504
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %i.cl, !dbg !55656
  %i.du = icmp ugt i64 %i.dr, %i.cn, !dbg !55657
  tail call void @llvm.assume(i1 %i.du), !dbg !55658, !noalias !55504
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %i.cn, !dbg !55659
  %i.dw = load i32, ptr %i.dt, align 4, !dbg !55660, !noalias !55509, !noundef !4431
  %i.dx = load i32, ptr %i.dv, align 4, !dbg !55661, !noalias !55509, !noundef !4431
  %i.dy = tail call i8 @llvm.ucmp.i8.i32(i32 %i.dw, i32 %i.dx), !dbg !55662 ; 2 uses
  %i.dz = load ptr, ptr %i.cd, align 8, !dbg !55663, !alias.scope !55508, !noalias !55504, !nonnull !4431, !align !5173, !noundef !4431
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8, !dbg !55663
  %i.eb = load i8, ptr %i.ea, align 4, !dbg !55663, !range !4826, !noalias !55509, !noundef !4431
  %i.ec = trunc nuw i8 %i.eb to i1, !dbg !55663
  %switch.offset.i.i43 = sub nsw i8 0, %i.dy
  %spec.select.i44 = select i1 %i.ec, i8 %switch.offset.i.i43, i8 %i.dy, !dbg !55663
  %i.ed = icmp eq i8 %spec.select.i44, -1, !dbg !55664
  br i1 %i.ed, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1S_10WindowExprNtB1U_12PhysicalExpr23evaluate_on_groups_impls7_0E0EB1W_.exit.i, label %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls7_0E0BS_.exit49.thread, !dbg !55624

_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls7_0E0BS_.exit49.thread: ; preds = %bb.q, %bb.r, %bb.p, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls7_0E0BS_.exit49
  %i.ee = add nuw nsw i64 %.sroa.01.0.i.i94, 1, !dbg !55665 ; 2 uses
  %exitcond.not = icmp eq i64 %i.ee, %i.n, !dbg !55622
  br i1 %exitcond.not, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1S_10WindowExprNtB1U_12PhysicalExpr23evaluate_on_groups_impls7_0E0EB1W_.exit.i, label %bb.o, !dbg !55622

bb.s:                                             ; preds = %.lr.ph101, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls7_0E0BS_.exit.thread69
  %.val8.i = phi i32 [ %.val13.i, %.lr.ph101 ], [ %.val7.i, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls7_0E0BS_.exit.thread69 ], !dbg !55666
  %.sroa.01.1.i.i100 = phi i64 [ 2, %.lr.ph101 ], [ %i.gc, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls7_0E0BS_.exit.thread69 ] ; 7 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.sroa.01.1.i.i100, !dbg !55667
  %i.eg = add nsw i64 %.sroa.01.1.i.i100, -1, !dbg !55668
  %i.eh = icmp ult i64 %i.eg, %i.n, !dbg !55669
  tail call void @llvm.assume(i1 %i.eh), !dbg !55670
  %.val7.i = load i32, ptr %i.ef, align 4, !dbg !55666, !alias.scope !55499, !noalias !55502, !noundef !4431 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !55512), !dbg !55671, !noalias !55504
  %i.ei = add i32 %.val7.i, %i.s, !dbg !55672
  %i.ej = zext i32 %i.ei to i64, !dbg !55673      ; 3 uses
  %i.ek = add i32 %.val8.i, %i.s, !dbg !55674
  %i.el = zext i32 %i.ek to i64, !dbg !55675      ; 3 uses
  %i.em = add i64 %i.af, %i.ej, !dbg !55676       ; 2 uses
  %i.en = lshr i64 %i.em, 3, !dbg !55677          ; 2 uses
  %i.eo = icmp ult i64 %i.en, %i.ab, !dbg !55678
  tail call void @llvm.assume(i1 %i.eo), !dbg !55679, !noalias !55504
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.en, !dbg !55680
  %i.eq = load i8, ptr %i.ep, align 1, !dbg !55681, !noalias !55513, !noundef !4431
  %i.er = trunc i64 %i.em to i8, !dbg !55682
  %i.es = and i8 %i.er, 7, !dbg !55682
  %i.et = lshr i8 %i.eq, %i.es, !dbg !55682
  %i.eu = add i64 %i.af, %i.el, !dbg !55683       ; 2 uses
  %i.ev = lshr i64 %i.eu, 3, !dbg !55684          ; 2 uses
  %i.ew = icmp ult i64 %i.ev, %i.ab, !dbg !55685
  tail call void @llvm.assume(i1 %i.ew), !dbg !55686, !noalias !55504
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ev, !dbg !55687
  %i.ey = load i8, ptr %i.ex, align 1, !dbg !55688, !noalias !55513, !noundef !4431
  %i.ez = trunc i64 %i.eu to i8, !dbg !55689
  %i.fa = and i8 %i.ez, 7, !dbg !55689
  %i.fb = lshr i8 %i.ey, %i.fa, !dbg !55689       ; 2 uses
  %i.fc = and i8 %i.et, 1, !dbg !55690            ; 2 uses
  %i.fd = and i8 %i.fc, %i.fb, !dbg !55690
  %.not.i.i39 = icmp eq i8 %i.fd, 0, !dbg !55690
  br i1 %.not.i.i39, label %bb.t, label %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls7_0E0BS_.exit, !dbg !55690

bb.t:                                             ; preds = %bb.s
  %i.fe = and i8 %i.fb, 1, !dbg !55691
  %i.ff = sub nsw i8 %i.fc, %i.fe, !dbg !55692
  switch i8 %i.ff, label %default.unreachable [
    i8 -1, label %bb.u
    i8 0, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1S_10WindowExprNtB1U_12PhysicalExpr23evaluate_on_groups_impls7_0E0EB1W_.exit.i
    i8 1, label %bb.v
  ], !dbg !55693

bb.u:                                             ; preds = %bb.t
  %i.fg = load ptr, ptr %i.cg, align 8, !dbg !55694, !alias.scope !55512, !noalias !55504, !nonnull !4431, !align !5173, !noundef !4431
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 9, !dbg !55694
  %i.fi = load i8, ptr %i.fh, align 1, !dbg !55694, !range !4826, !noalias !55513, !noundef !4431
  %i.fj = trunc nuw i8 %i.fi to i1, !dbg !55694
  br i1 %i.fj, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1S_10WindowExprNtB1U_12PhysicalExpr23evaluate_on_groups_impls7_0E0EB1W_.exit.i, label %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls7_0E0BS_.exit.thread69, !dbg !55694

bb.v:                                             ; preds = %bb.t
  %i.fk = load ptr, ptr %i.cg, align 8, !dbg !55694, !alias.scope !55512, !noalias !55504, !nonnull !4431, !align !5173, !noundef !4431
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 9, !dbg !55694
  %i.fm = load i8, ptr %i.fl, align 1, !dbg !55694, !range !4826, !noalias !55513, !noundef !4431
  %i.fn = trunc nuw i8 %i.fm to i1, !dbg !55694
  br i1 %i.fn, label %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls7_0E0BS_.exit.thread69, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1S_10WindowExprNtB1U_12PhysicalExpr23evaluate_on_groups_impls7_0E0EB1W_.exit.i, !dbg !55694

_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls7_0E0BS_.exit: ; preds = %bb.s
  %i.fo = load ptr, ptr %i.ce, align 8, !dbg !55695, !alias.scope !55512, !noalias !55504, !nonnull !4431, !align !5173, !noundef !4431 ; 2 uses
  %i.fp = load i64, ptr %i.cf, align 8, !dbg !55695, !alias.scope !55512, !noalias !55504, !noundef !4431 ; 2 uses
  %i.fq = icmp ugt i64 %i.fp, %i.ej, !dbg !55696
  tail call void @llvm.assume(i1 %i.fq), !dbg !55697, !noalias !55504
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %i.ej, !dbg !55698
  %i.fs = icmp ugt i64 %i.fp, %i.el, !dbg !55699
  tail call void @llvm.assume(i1 %i.fs), !dbg !55700, !noalias !55504
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %i.el, !dbg !55701
  %i.fu = load i32, ptr %i.fr, align 4, !dbg !55702, !noalias !55513, !noundef !4431
  %i.fv = load i32, ptr %i.ft, align 4, !dbg !55703, !noalias !55513, !noundef !4431
  %i.fw = tail call i8 @llvm.ucmp.i8.i32(i32 %i.fu, i32 %i.fv), !dbg !55704 ; 2 uses
  %i.fx = load ptr, ptr %i.cg, align 8, !dbg !55705, !alias.scope !55512, !noalias !55504, !nonnull !4431, !align !5173, !noundef !4431
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8, !dbg !55705
  %i.fz = load i8, ptr %i.fy, align 4, !dbg !55705, !range !4826, !noalias !55513, !noundef !4431
  %i.ga = trunc nuw i8 %i.fz to i1, !dbg !55705
  %switch.offset.i.i = sub nsw i8 0, %i.fw
  %spec.select.i40 = select i1 %i.ga, i8 %switch.offset.i.i, i8 %i.fw, !dbg !55705
  %i.gb = icmp eq i8 %spec.select.i40, -1, !dbg !55706
  br i1 %i.gb, label %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls7_0E0BS_.exit.thread69, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1S_10WindowExprNtB1U_12PhysicalExpr23evaluate_on_groups_impls7_0E0EB1W_.exit.i, !dbg !55666

_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls7_0E0BS_.exit.thread69: ; preds = %bb.v, %bb.u, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls7_0E0BS_.exit
  %i.gc = add nuw nsw i64 %.sroa.01.1.i.i100, 1, !dbg !55707 ; 2 uses
  %exitcond128.not = icmp eq i64 %i.gc, %i.n, !dbg !55623
  br i1 %exitcond128.not, label %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1S_10WindowExprNtB1U_12PhysicalExpr23evaluate_on_groups_impls7_0E0EB1W_.exit.i, label %bb.s, !dbg !55623

_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1S_10WindowExprNtB1U_12PhysicalExpr23evaluate_on_groups_impls7_0E0EB1W_.exit.i: ; preds = %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls7_0E0BS_.exit.thread69, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls7_0E0BS_.exit, %bb.t, %bb.v, %bb.u, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls7_0E0BS_.exit49.thread, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls7_0E0BS_.exit49, %bb.q, %bb.r, %.preheader83, %.preheader82
  %i.gd = phi i1 [ false, %.preheader83 ], [ true, %.preheader82 ], [ false, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls7_0E0BS_.exit49.thread ], [ false, %bb.r ], [ false, %bb.q ], [ false, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls7_0E0BS_.exit49 ], [ true, %bb.u ], [ true, %bb.v ], [ true, %bb.t ], [ true, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls7_0E0BS_.exit ], [ true, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls7_0E0BS_.exit.thread69 ]
  %.sroa.0.0.i.i = phi i64 [ 2, %.preheader83 ], [ 2, %.preheader82 ], [ %i.n, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls7_0E0BS_.exit49.thread ], [ %.sroa.01.0.i.i94, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls7_0E0BS_.exit49 ], [ %.sroa.01.0.i.i94, %bb.q ], [ %.sroa.01.0.i.i94, %bb.r ], [ %.sroa.01.1.i.i100, %bb.u ], [ %i.n, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls7_0E0BS_.exit.thread69 ], [ %.sroa.01.1.i.i100, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls7_0E0BS_.exit ], [ %.sroa.01.1.i.i100, %bb.t ], [ %.sroa.01.1.i.i100, %bb.v ], !dbg !55708 ; 9 uses
  %i.ge = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n, !dbg !55709
  tail call void @llvm.assume(i1 %i.ge), !dbg !55710
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0, !dbg !55711
  br i1 %.not5.i, label %bb.i, label %bb.w, !dbg !55711

bb.w:                                             ; preds = %_RINvNtNtNtCscgRAwXFJnXP_4core5slice4sort6shared17find_existing_runmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1S_10WindowExprNtB1U_12PhysicalExpr23evaluate_on_groups_impls7_0E0EB1W_.exit.i
  br i1 %i.gd, label %bb.z, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSm7reverseCskY9G75ZWc4U_11polars_expr.exit, !dbg !55712

bb.x:                                             ; preds = %bb.i
  %.sroa.0.0.i38 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %i.n, i64 %.sroa.01.0), !dbg !55713
  %i.gf = shl nuw nsw i64 %.sroa.0.0.i38, 1, !dbg !55714
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift10create_runmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1T_10WindowExprNtB1V_12PhysicalExpr23evaluate_on_groups_impls7_0E0EB1X_.exit, !dbg !55715

bb.y:                                             ; preds = %bb.i
  %.sroa.0.0.i37 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %i.n, i64 32), !dbg !55716 ; 2 uses
  tail call void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1V_10WindowExprNtB1X_12PhysicalExpr23evaluate_on_groups_impls7_0E0EB1Z_(ptr noalias noundef nonnull align 4 %i.o, i64 noundef %.sroa.0.0.i37, ptr noalias noundef nonnull align 4 %2, i64 noundef range(i64 0, 2305843009213693952) %3, i32 noundef 0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5) #44, !dbg !55717, !inline_history !55313
  %i.gg = shl nuw nsw i64 %.sroa.0.0.i37, 1, !dbg !55718
  %i.gh = or disjoint i64 %i.gg, 1, !dbg !55718
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift10create_runmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1T_10WindowExprNtB1V_12PhysicalExpr23evaluate_on_groups_impls7_0E0EB1X_.exit, !dbg !55715

_RNvMNtCscgRAwXFJnXP_4core5sliceSm7reverseCskY9G75ZWc4U_11polars_expr.exit: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSm12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.i, %middle.block, %bb.j, %bb.z, %bb.w
  %.sroa.0.0.i.i7578 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.w ], [ %.sroa.0.0.i.i, %bb.z ], [ %.sroa.0.0.i.i, %middle.block ], [ %.sroa.0.0.i.i, %_RNvMNtCscgRAwXFJnXP_4core5sliceSm12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.i ]
  %i.gi = shl nuw nsw i64 %.sroa.0.0.i.i7578, 1, !dbg !55719
  %i.gj = or disjoint i64 %i.gi, 1, !dbg !55719
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift10create_runmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1T_10WindowExprNtB1V_12PhysicalExpr23evaluate_on_groups_impls7_0E0EB1X_.exit, !dbg !55720

bb.z:                                             ; preds = %bb.w
  %i.gk = lshr i64 %.sroa.0.0.i.i, 1, !dbg !55721 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !55514), !dbg !55722, !noalias !55502
  tail call void @llvm.experimental.noalias.scope.decl(metadata !55515), !dbg !55722, !noalias !55502
  %.not.i.i = icmp eq i64 %i.gk, 0, !dbg !55723
  br i1 %.not.i.i, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSm7reverseCskY9G75ZWc4U_11polars_expr.exit, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSm12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i.i, !dbg !55723

_RNvMNtCscgRAwXFJnXP_4core5sliceSm12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i.i: ; preds = %bb.z
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.sroa.0.0.i.i, !dbg !55724 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %.sroa.0.0.i.i, 16, !dbg !55723
  br i1 %min.iters.check, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSm12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.i.preheader, label %vector.ph, !dbg !55723

vector.ph:                                        ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSm12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i.i
  %n.vec = and i64 %i.gk, 4611686018427387896     ; 3 uses
  br label %vector.body, !dbg !55723

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !55725 ; 3 uses
  %i.gm = xor i64 %index, -1, !dbg !55726
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %index, !dbg !55727 ; 3 uses
  %i.go = getelementptr [4 x i8], ptr %i.gl, i64 %i.gm, !dbg !55728 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gn, i64 16, !dbg !55729 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.gn, align 4, !dbg !55729, !alias.scope !55516, !noalias !55517
  %wide.load170 = load <4 x i32>, ptr %i.gp, align 4, !dbg !55729, !alias.scope !55516, !noalias !55517
  %i.gq = getelementptr i8, ptr %i.go, i64 -12, !dbg !55729 ; 2 uses
  %i.gr = getelementptr i8, ptr %i.go, i64 -28, !dbg !55729 ; 2 uses
  %wide.load171 = load <4 x i32>, ptr %i.gq, align 4, !dbg !55729, !alias.scope !55518, !noalias !55519
  %wide.load172 = load <4 x i32>, ptr %i.gr, align 4, !dbg !55729, !alias.scope !55518, !noalias !55519
  %reverse = shufflevector <4 x i32> %wide.load171, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>, !dbg !55729
  %reverse173 = shufflevector <4 x i32> %wide.load172, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>, !dbg !55729
  store <4 x i32> %reverse, ptr %i.gn, align 4, !dbg !55729, !alias.scope !55516, !noalias !55517
  store <4 x i32> %reverse173, ptr %i.gp, align 4, !dbg !55729, !alias.scope !55516, !noalias !55517
  %reverse174 = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>, !dbg !55729
  %reverse175 = shufflevector <4 x i32> %wide.load170, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>, !dbg !55729
  store <4 x i32> %reverse174, ptr %i.gq, align 4, !dbg !55729, !alias.scope !55518, !noalias !55519
  store <4 x i32> %reverse175, ptr %i.gr, align 4, !dbg !55729, !alias.scope !55518, !noalias !55519
  %index.next = add nuw i64 %index, 8, !dbg !55725 ; 2 uses
  %i.gs = icmp eq i64 %index.next, %n.vec, !dbg !55723
  br i1 %i.gs, label %middle.block, label %vector.body, !dbg !55723, !llvm.loop !55328

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gk, %n.vec, !dbg !55723
  br i1 %cmp.n, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSm7reverseCskY9G75ZWc4U_11polars_expr.exit, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSm12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.i.preheader, !dbg !55723

_RNvMNtCscgRAwXFJnXP_4core5sliceSm12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.i.preheader: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSm12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i.i, %middle.block
  %.sroa.0.016.i.i.ph = phi i64 [ 0, %_RNvMNtCscgRAwXFJnXP_4core5sliceSm12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCscgRAwXFJnXP_4core5sliceSm12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.i, !dbg !55723

_RNvMNtCscgRAwXFJnXP_4core5sliceSm12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.i: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSm12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.i.preheader, %_RNvMNtCscgRAwXFJnXP_4core5sliceSm12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.gy, %_RNvMNtCscgRAwXFJnXP_4core5sliceSm12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.i ], [ %.sroa.0.016.i.i.ph, %_RNvMNtCscgRAwXFJnXP_4core5sliceSm12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.i.preheader ] ; 3 uses
  %i.gt = xor i64 %.sroa.0.016.i.i, -1, !dbg !55726
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.sroa.0.016.i.i, !dbg !55727 ; 2 uses
  %i.gv = getelementptr [4 x i8], ptr %i.gl, i64 %i.gt, !dbg !55728 ; 2 uses
  %i.gw = load i32, ptr %i.gu, align 4, !dbg !55729, !alias.scope !55516, !noalias !55517, !noundef !4431
  %i.gx = load i32, ptr %i.gv, align 4, !dbg !55729, !alias.scope !55518, !noalias !55519
  store i32 %i.gx, ptr %i.gu, align 4, !dbg !55729, !alias.scope !55516, !noalias !55517
  store i32 %i.gw, ptr %i.gv, align 4, !dbg !55729, !alias.scope !55518, !noalias !55519
  %i.gy = add nuw nsw i64 %.sroa.0.016.i.i, 1, !dbg !55725 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.gy, %i.gk, !dbg !55723
  br i1 %exitcond.not.i.i, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSm7reverseCskY9G75ZWc4U_11polars_expr.exit, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSm12split_at_mutCskY9G75ZWc4U_11polars_expr.exit11.i.i, !dbg !55723, !llvm.loop !55329

_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift10create_runmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1T_10WindowExprNtB1V_12PhysicalExpr23evaluate_on_groups_impls7_0E0EB1X_.exit: ; preds = %bb.x, %bb.y, %_RNvMNtCscgRAwXFJnXP_4core5sliceSm7reverseCskY9G75ZWc4U_11polars_expr.exit
  %.sroa.0.0.i34 = phi i64 [ %i.gj, %_RNvMNtCscgRAwXFJnXP_4core5sliceSm7reverseCskY9G75ZWc4U_11polars_expr.exit ], [ %i.gh, %bb.y ], [ %i.gf, %bb.x ], !dbg !55730 ; 2 uses
  %i.gz = lshr i64 %.sroa.023.0, 1, !dbg !55731
  %i.ha = lshr i64 %.sroa.0.0.i34, 1, !dbg !55732
  %factor = shl nuw nsw i64 %.sroa.09.0, 1, !dbg !55733 ; 2 uses
  %i.hb = sub nsw i64 %factor, %i.gz, !dbg !55733
  %i.hc = add nuw nsw i64 %i.ha, %factor, !dbg !55734
  %i.hd = mul i64 %i.hb, %.sroa.0.0, !dbg !55735
  %i.he = mul i64 %i.hc, %.sroa.0.0, !dbg !55736
  %i.hf = xor i64 %i.he, %i.hd, !dbg !55737
  %i.hg = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.hf, i1 false), !dbg !55738
  %i.hh = trunc nuw nsw i64 %i.hg to i8, !dbg !55737
  br label %bb.g, !dbg !55739

bb.aa:                                            ; preds = %.lr.ph112, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift13logical_mergemNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1W_10WindowExprNtB1Y_12PhysicalExpr23evaluate_on_groups_impls7_0E0EB20_.exit
  %.sroa.02.1111 = phi i64 [ %.sroa.02.0, %.lr.ph112 ], [ %i.hi, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift13logical_mergemNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1W_10WindowExprNtB1Y_12PhysicalExpr23evaluate_on_groups_impls7_0E0EB20_.exit ] ; 2 uses
  %.sroa.023.1110 = phi i64 [ %.sroa.023.0, %.lr.ph112 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift13logical_mergemNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1W_10WindowExprNtB1Y_12PhysicalExpr23evaluate_on_groups_impls7_0E0EB20_.exit ] ; 4 uses
  %i.hi = add i64 %.sroa.02.1111, -1, !dbg !55740 ; 4 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.hi, !dbg !55741
  %i.hk = load i8, ptr %i.hj, align 1, !dbg !55742, !noundef !4431
  %.not29 = icmp ult i8 %i.hk, %.sroa.021.0, !dbg !55742
  br i1 %.not29, label %._crit_edge, label %bb.ab, !dbg !55742

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift13logical_mergemNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1W_10WindowExprNtB1Y_12PhysicalExpr23evaluate_on_groups_impls7_0E0EB20_.exit, %bb.aa, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.1110, %bb.aa ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift13logical_mergemNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1W_10WindowExprNtB1Y_12PhysicalExpr23evaluate_on_groups_impls7_0E0EB20_.exit ], !dbg !55566 ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.1111, %bb.aa ], [ 1, %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift13logical_mergemNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1W_10WindowExprNtB1Y_12PhysicalExpr23evaluate_on_groups_impls7_0E0EB20_.exit ], !dbg !55568 ; 3 uses
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa, !dbg !55743
  store i64 %.sroa.023.1.lcssa, ptr %i.hl, align 8, !dbg !55744
  %i.hm = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa, !dbg !55745
  store i8 %.sroa.021.0, ptr %i.hm, align 1, !dbg !55746
  br i1 %i.k, label %bb.ar, label %bb.as, !dbg !55747

bb.ab:                                            ; preds = %bb.aa
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.hi, !dbg !55748
  %i.ho = load i64, ptr %i.hn, align 8, !dbg !55749, !noundef !4431 ; 3 uses
  %i.hp = lshr i64 %i.ho, 1, !dbg !55750          ; 8 uses
  %i.hq = lshr i64 %.sroa.023.1110, 1, !dbg !55751 ; 6 uses
  %i.hr = add nuw i64 %i.hp, %i.hq, !dbg !55752   ; 4 uses
  %i.hs = sub i64 %.sroa.09.0, %i.hr, !dbg !55753
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.hs, !dbg !55754 ; 6 uses
  %i.hu = icmp samesign ugt i64 %i.hr, %3, !dbg !55755
  %i.hv = trunc i64 %.sroa.023.1110 to i1
  %i.hw = or i64 %i.ho, %.sroa.023.1110, !dbg !55756
  %i.hx = trunc i64 %i.hw to i1, !dbg !55756
  %or.cond3.i = or i1 %i.hu, %i.hx, !dbg !55756
  br i1 %or.cond3.i, label %bb.ac, label %bb.ad, !dbg !55756

bb.ac:                                            ; preds = %bb.ab
  %i.hy = trunc i64 %i.ho to i1
  br i1 %i.hy, label %bb.ae, label %bb.af, !dbg !55757

bb.ad:                                            ; preds = %bb.ab
  %i.hz = shl nuw nsw i64 %i.hr, 1, !dbg !55758
  br label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5drift13logical_mergemNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1W_10WindowExprNtB1Y_12PhysicalExpr23evaluate_on_groups_impls7_0E0EB20_.exit, !dbg !55759

bb.ae:                                            ; preds = %bb.af, %bb.ac
  br i1 %i.hv, label %bb.ag, label %bb.aq, !dbg !55760

bb.af:                                            ; preds = %bb.ac
  %i.ia = or i64 %i.hp, 1, !dbg !55761
  %i.ib = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %i.ia, i1 true), !dbg !55762
  %i.ic = trunc nuw nsw i64 %i.ib to i32, !dbg !55762
  %i.id = shl nuw nsw i32 %i.ic, 1, !dbg !55763
  %i.ie = xor i32 %i.id, 126, !dbg !55763
  tail call void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable9quicksort9quicksortmNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1V_10WindowExprNtB1X_12PhysicalExpr23evaluate_on_groups_impls7_0E0EB1Z_(ptr noalias noundef nonnull align 4 %i.ht, i64 noundef range(i64 0, 2305843009213693952) %i.hp, ptr noalias noundef nonnull align 4 %2, i64 noundef range(i64 0, 2305843009213693952) %3, i32 noundef %i.ie, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5) #44, !dbg !55764, !inline_history !55363
  br label %bb.ae, !dbg !55765

bb.ag:                                            ; preds = %bb.aq, %bb.ae
  %.val = load ptr, ptr %5, align 8, !dbg !55766  ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !55533), !dbg !55766
  tail call void @llvm.experimental.noalias.scope.decl(metadata !55534), !dbg !55766
  %i.if = icmp eq i64 %i.hp, 0, !dbg !55767
  %i.ig = icmp eq i64 %i.hq, 0
  %or.cond.i = or i1 %i.ig, %i.if, !dbg !55767
  br i1 %or.cond.i, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5merge5mergemNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1N_10WindowExprNtB1P_12PhysicalExpr23evaluate_on_groups_impls7_0E0EB1R_.exit, label %bb.ah, !dbg !55767

bb.ah:                                            ; preds = %bb.ag
  %.sroa.0.0.i.i35 = tail call i64 @llvm.umin.i64(i64 %i.hq, i64 range(i64 0, -9223372036854775808) %i.hp), !dbg !55768 ; 2 uses
  %i.ih = icmp samesign ult i64 %3, %.sroa.0.0.i.i35, !dbg !55769
  br i1 %i.ih, label %_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5merge5mergemNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtB1N_10WindowExprNtB1P_12PhysicalExpr23evaluate_on_groups_impls7_0E0EB1R_.exit, label %.critedge.i, !dbg !55769

.critedge.i:                                      ; preds = %bb.ah
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %i.hp, !dbg !55770 ; 3 uses
  %.not.i36 = icmp samesign ugt i64 %i.hp, %i.hq, !dbg !55771 ; 2 uses
  %spec.select.i = select i1 %.not.i36, ptr %i.ii, ptr %i.ht, !dbg !55772
  %i.ij = shl nuw nsw i64 %.sroa.0.0.i.i35, 2, !dbg !55773 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %2, ptr nonnull align 4 %spec.select.i, i64 %i.ij, i1 false), !dbg !55773, !alias.scope !55535
  %i.ik = getelementptr inbounds nuw i8, ptr %2, i64 %i.ij, !dbg !55774 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.il = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.im = getelementptr inbounds nuw i8, ptr %.val, i64 24 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %.val, i64 32 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 6 uses
  %i.ip = load ptr, ptr %.val, align 8, !noalias !55535, !nonnull !4431, !align !5173, !noundef !4431
  %i.iq = load i32, ptr %i.ip, align 4, !noalias !55535, !noundef !4431 ; 4 uses
  %i.ir = load ptr, ptr %i.il, align 8, !noalias !55535, !nonnull !4431, !align !4534, !noundef !4431 ; 2 uses
  %i.is = load ptr, ptr %i.ir, align 8, !noalias !55535, !nonnull !4431, !noundef !4431 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 40
  %i.iu = load i64, ptr %i.it, align 8, !noalias !55535, !noundef !4431 ; 4 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.is, i64 32
  %i.iw = load ptr, ptr %i.iv, align 8, !noalias !55535, !noundef !4431 ; 4 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  %i.iy = load i64, ptr %i.ix, align 8, !noalias !55535, !noundef !4431 ; 4 uses
  br i1 %.not.i36, label %.preheader, label %.lr.ph.i.i, !dbg !55775

.preheader:                                       ; preds = %.critedge.i, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls7_0E0BS_.exit.i.i
  %i.iz = phi ptr [ %i.ld, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls7_0E0BS_.exit.i.i ], [ %i.ik, %.critedge.i ]
  %i.ja = phi ptr [ %i.lb, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls7_0E0BS_.exit.i.i ], [ %i.ii, %.critedge.i ]
  %.sroa.0.0.i18.i = phi ptr [ %i.jd, %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls7_0E0BS_.exit.i.i ], [ %i.m, %.critedge.i ]
  %i.jb = getelementptr inbounds i8, ptr %i.ja, i64 -4, !dbg !55776 ; 3 uses
  %i.jc = getelementptr inbounds i8, ptr %i.iz, i64 -4, !dbg !55777 ; 3 uses
  %i.jd = getelementptr inbounds i8, ptr %.sroa.0.0.i18.i, i64 -4, !dbg !55778 ; 2 uses
  %.val10.i.i = load i32, ptr %i.jc, align 4, !dbg !55779, !alias.scope !55534, !noalias !55536, !noundef !4431
  %.val11.i.i = load i32, ptr %i.jb, align 4, !dbg !55779, !alias.scope !55533, !noalias !55537, !noundef !4431
  tail call void @llvm.experimental.noalias.scope.decl(metadata !55538), !dbg !55780
  %i.je = add i32 %.val10.i.i, %i.iq, !dbg !55781
  %i.jf = zext i32 %i.je to i64, !dbg !55782      ; 3 uses
  %i.jg = add i32 %.val11.i.i, %i.iq, !dbg !55783
  %i.jh = zext i32 %i.jg to i64, !dbg !55784      ; 3 uses
  %i.ji = add i64 %i.iy, %i.jf, !dbg !55785       ; 2 uses
  %i.jj = lshr i64 %i.ji, 3, !dbg !55786          ; 2 uses
  %i.jk = icmp ult i64 %i.jj, %i.iu, !dbg !55787
  tail call void @llvm.assume(i1 %i.jk), !dbg !55788
  %i.jl = getelementptr inbounds nuw i8, ptr %i.iw, i64 %i.jj, !dbg !55789
  %i.jm = load i8, ptr %i.jl, align 1, !dbg !55790, !noalias !55539, !noundef !4431
  %i.jn = trunc i64 %i.ji to i8, !dbg !55791
  %i.jo = and i8 %i.jn, 7, !dbg !55791
  %i.jp = lshr i8 %i.jm, %i.jo, !dbg !55791
  %i.jq = add i64 %i.iy, %i.jh, !dbg !55792       ; 2 uses
  %i.jr = lshr i64 %i.jq, 3, !dbg !55793          ; 2 uses
  %i.js = icmp ult i64 %i.jr, %i.iu, !dbg !55794
  tail call void @llvm.assume(i1 %i.js), !dbg !55795
  %i.jt = getelementptr inbounds nuw i8, ptr %i.iw, i64 %i.jr, !dbg !55796
  %i.ju = load i8, ptr %i.jt, align 1, !dbg !55797, !noalias !55539, !noundef !4431
  %i.jv = trunc i64 %i.jq to i8, !dbg !55798
  %i.jw = and i8 %i.jv, 7, !dbg !55798
  %i.jx = lshr i8 %i.ju, %i.jw, !dbg !55798       ; 2 uses
  %i.jy = and i8 %i.jp, 1, !dbg !55799            ; 2 uses
  %i.jz = and i8 %i.jy, %i.jx, !dbg !55799
  %.not.i.i.i.i = icmp eq i8 %i.jz, 0, !dbg !55799
  br i1 %.not.i.i.i.i, label %bb.ai, label %bb.aj, !dbg !55799

bb.ai:                                            ; preds = %.preheader
  %i.ka = and i8 %i.jx, 1, !dbg !55800
  %i.kb = sub nsw i8 %i.jy, %i.ka, !dbg !55801    ; 2 uses
  switch i8 %i.kb, label %default.unreachable [
    i8 -1, label %bb.ak
    i8 0, label %_RNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSm7sort_byNCNvXs_NtNtCskY9G75ZWc4U_11polars_expr11expressions6windowNtBO_10WindowExprNtBQ_12PhysicalExpr23evaluate_on_groups_impls7_0E0BS_.exit.i.i
    i8 1, label %bb.al
  ], !dbg !55802

bb.aj:                                            ; preds = %.preheader
  %i.kc = load ptr, ptr %i.im, align 8, !dbg !55803, !alias.scope !55538, !noalias !55540, !nonnull !4431, !align !5173, !noundef !4431 ; 2 uses
end_hunk_6
