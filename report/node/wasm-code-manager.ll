Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/wasm-code-manager?download=true
inline.NumInlined: 5605
inline.NumDeleted: 3137
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 20
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZNSt8_Rb_treeImSt4pairIKmSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessImESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS1_:bb.a
  %i.h = load i64, ptr %i.g, align 8
  %i.i = load i64, ptr %2, align 8
  %i.j = icmp ult i64 %i.h, %i.i
  br i1 %i.j, label %_ZNSt8_Rb_treeImSt4pairIKmSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessImESaISA_EE24_M_get_insert_unique_posERS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i = load ptr, ptr %i.k, align 8         ; 2 uses
  %.not23.i = icmp eq ptr %.02022.i, null
  br i1 %.not23.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.l = load i64, ptr %2, align 8                ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.02024.i = phi ptr [ %.02022.i, %.lr.ph.i ], [ %.020.i, %bb.e ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.02024.i, i64 32
  %i.n = load i64, ptr %i.m, align 8              ; 2 uses
  %i.o = icmp ult i64 %i.l, %i.n                  ; 2 uses
  %.in.v.i = select i1 %i.o, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8         ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %bb.e, !llvm.loop !316

._crit_edge.i:                                    ; preds = %bb.e
  br i1 %i.o, label %._crit_edge.thread.i, label %bb.g

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.d
  %.019.lcssa29.i = phi ptr [ %.02024.i, %._crit_edge.i ], [ %i.a, %bb.d ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = icmp eq ptr %.019.lcssa29.i, %i.q
  br i1 %i.r, label %_ZNSt8_Rb_treeImSt4pairIKmSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessImESaISA_EE24_M_get_insert_unique_posERS1_.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge.thread.i
  %i.s = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i) #30 ; 2 uses
  %.phi.trans.insert80 = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.pre81 = load i64, ptr %.phi.trans.insert80, align 8
  %.pre82 = load i64, ptr %2, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  %i.t = phi i64 [ %.pre82, %bb.f ], [ %i.l, %._crit_edge.i ]
  %i.u = phi i64 [ %.pre81, %bb.f ], [ %i.n, %._crit_edge.i ]
  %.019.lcssa28.i = phi ptr [ %.019.lcssa29.i, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %.sroa.05.0.i = phi ptr [ %i.s, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %i.v = icmp ult i64 %i.u, %i.t                  ; 2 uses
  %spec.select.i = select i1 %i.v, ptr null, ptr %.sroa.05.0.i
  %spec.select21.i = select i1 %i.v, ptr %.019.lcssa28.i, ptr null
  br label %_ZNSt8_Rb_treeImSt4pairIKmSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessImESaISA_EE24_M_get_insert_unique_posERS1_.exit

bb.h:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.x = load i64, ptr %2, align 8                ; 8 uses
  %i.y = load i64, ptr %i.w, align 8              ; 2 uses
  %i.z = icmp ult i64 %i.x, %i.y
  br i1 %i.z, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8            ; 4 uses
  %i.ac = icmp eq ptr %i.ab, %1
  br i1 %i.ac, label %_ZNSt8_Rb_treeImSt4pairIKmSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessImESaISA_EE24_M_get_insert_unique_posERS1_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #30 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = icmp ult i64 %i.af, %i.x
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = icmp eq ptr %i.ai, null                 ; 2 uses
  %spec.select = select i1 %i.aj, ptr null, ptr %1
  %spec.select71 = select i1 %i.aj, ptr %i.ad, ptr %1
  br label %_ZNSt8_Rb_treeImSt4pairIKmSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessImESaISA_EE24_M_get_insert_unique_posERS1_.exit

bb.l:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i10 = load ptr, ptr %i.ak, align 8      ; 2 uses
  %.not23.i11 = icmp eq ptr %.02022.i10, null
  br i1 %.not23.i11, label %._crit_edge.thread.i27, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %bb.l, %.lr.ph.i12
  %.02024.i13 = phi ptr [ %.020.i16, %.lr.ph.i12 ], [ %.02022.i10, %bb.l ] ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 32
  %i.am = load i64, ptr %i.al, align 8            ; 2 uses
  %i.an = icmp ult i64 %i.x, %i.am                ; 2 uses
  %.in.v.i14 = select i1 %i.an, i64 16, i64 24
  %.in.i15 = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 %.in.v.i14
  %.020.i16 = load ptr, ptr %.in.i15, align 8     ; 2 uses
  %.not.i17 = icmp eq ptr %.020.i16, null
  br i1 %.not.i17, label %._crit_edge.i18, label %.lr.ph.i12, !llvm.loop !316

._crit_edge.i18:                                  ; preds = %.lr.ph.i12
  br i1 %i.an, label %._crit_edge.thread.i27, label %bb.n

._crit_edge.thread.i27:                           ; preds = %._crit_edge.i18, %bb.l
  %.019.lcssa29.i28 = phi ptr [ %.02024.i13, %._crit_edge.i18 ], [ %i.a, %bb.l ] ; 4 uses
  %i.ao = icmp eq ptr %.019.lcssa29.i28, %i.ab
  br i1 %i.ao, label %_ZNSt8_Rb_treeImSt4pairIKmSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessImESaISA_EE24_M_get_insert_unique_posERS1_.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge.thread.i27
  %i.ap = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i28) #30 ; 2 uses
  %.phi.trans.insert78 = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %.pre79 = load i64, ptr %.phi.trans.insert78, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i18
  %i.aq = phi i64 [ %.pre79, %bb.m ], [ %i.am, %._crit_edge.i18 ]
  %.019.lcssa28.i19 = phi ptr [ %.019.lcssa29.i28, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %.sroa.05.0.i20 = phi ptr [ %i.ap, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %i.ar = icmp ult i64 %i.aq, %i.x                ; 2 uses
  %spec.select.i21 = select i1 %i.ar, ptr null, ptr %.sroa.05.0.i20
  %spec.select21.i22 = select i1 %i.ar, ptr %.019.lcssa28.i19, ptr null
  br label %_ZNSt8_Rb_treeImSt4pairIKmSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessImESaISA_EE24_M_get_insert_unique_posERS1_.exit

bb.o:                                             ; preds = %bb.h
  %i.as = icmp ult i64 %i.y, %i.x
  br i1 %i.as, label %bb.p, label %_ZNSt8_Rb_treeImSt4pairIKmSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessImESaISA_EE24_M_get_insert_unique_posERS1_.exit

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load ptr, ptr %i.at, align 8            ; 2 uses
  %i.av = icmp eq ptr %i.au, %1
  br i1 %i.av, label %_ZNSt8_Rb_treeImSt4pairIKmSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessImESaISA_EE24_M_get_insert_unique_posERS1_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #30 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load i64, ptr %i.ax, align 8
  %i.az = icmp ult i64 %i.x, %i.ay
  br i1 %i.az, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = icmp eq ptr %i.bb, null                 ; 2 uses
  %spec.select72 = select i1 %i.bc, ptr null, ptr %i.aw
  %spec.select73 = select i1 %i.bc, ptr %1, ptr %i.aw
  br label %_ZNSt8_Rb_treeImSt4pairIKmSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessImESaISA_EE24_M_get_insert_unique_posERS1_.exit

bb.s:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i30 = load ptr, ptr %i.bd, align 8      ; 2 uses
  %.not23.i31 = icmp eq ptr %.02022.i30, null
  br i1 %.not23.i31, label %._crit_edge.thread.i47, label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %bb.s, %.lr.ph.i32
  %.02024.i33 = phi ptr [ %.020.i36, %.lr.ph.i32 ], [ %.02022.i30, %bb.s ] ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 32
  %i.bf = load i64, ptr %i.be, align 8            ; 2 uses
  %i.bg = icmp ult i64 %i.x, %i.bf                ; 2 uses
  %.in.v.i34 = select i1 %i.bg, i64 16, i64 24
  %.in.i35 = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 %.in.v.i34
  %.020.i36 = load ptr, ptr %.in.i35, align 8     ; 2 uses
  %.not.i37 = icmp eq ptr %.020.i36, null
  br i1 %.not.i37, label %._crit_edge.i38, label %.lr.ph.i32, !llvm.loop !316

._crit_edge.i38:                                  ; preds = %.lr.ph.i32
  br i1 %i.bg, label %._crit_edge.thread.i47, label %bb.u

._crit_edge.thread.i47:                           ; preds = %._crit_edge.i38, %bb.s
  %.019.lcssa29.i48 = phi ptr [ %.02024.i33, %._crit_edge.i38 ], [ %i.a, %bb.s ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = icmp eq ptr %.019.lcssa29.i48, %i.bi
  br i1 %i.bj, label %_ZNSt8_Rb_treeImSt4pairIKmSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessImESaISA_EE24_M_get_insert_unique_posERS1_.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge.thread.i47
  %i.bk = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i48) #30 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i38
  %i.bl = phi i64 [ %.pre, %bb.t ], [ %i.bf, %._crit_edge.i38 ]
  %.019.lcssa28.i39 = phi ptr [ %.019.lcssa29.i48, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %.sroa.05.0.i40 = phi ptr [ %i.bk, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %i.bm = icmp ult i64 %i.bl, %i.x                ; 2 uses
  %spec.select.i41 = select i1 %i.bm, ptr null, ptr %.sroa.05.0.i40
  %spec.select21.i42 = select i1 %i.bm, ptr %.019.lcssa28.i39, ptr null
  br label %_ZNSt8_Rb_treeImSt4pairIKmSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessImESaISA_EE24_M_get_insert_unique_posERS1_.exit

_ZNSt8_Rb_treeImSt4pairIKmSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessImESaISA_EE24_M_get_insert_unique_posERS1_.exit: ; preds = %bb.u, %._crit_edge.thread.i47, %bb.n, %._crit_edge.thread.i27, %bb.g, %._crit_edge.thread.i, %bb.r, %bb.k, %bb.o, %bb.p, %bb.i, %bb.c
  %.sroa.070.2 = phi ptr [ null, %bb.p ], [ %spec.select, %bb.k ], [ null, %bb.c ], [ %spec.select72, %bb.r ], [ null, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ %1, %bb.o ], [ null, %._crit_edge.thread.i27 ], [ %spec.select.i, %bb.g ], [ %spec.select.i21, %bb.n ], [ %spec.select.i41, %bb.u ], [ null, %._crit_edge.thread.i47 ]
  %.sroa.12.2 = phi ptr [ %i.au, %bb.p ], [ %spec.select71, %bb.k ], [ %i.f, %bb.c ], [ %spec.select73, %bb.r ], [ %.019.lcssa29.i, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ null, %bb.o ], [ %.019.lcssa29.i28, %._crit_edge.thread.i27 ], [ %spec.select21.i, %bb.g ], [ %spec.select21.i22, %bb.n ], [ %spec.select21.i42, %bb.u ], [ %.019.lcssa29.i48, %._crit_edge.thread.i47 ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.070.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal15WasmCodePointerEjEENS_13hash_internal4HashIS5_EESt8equal_toIS5_ESaISt4pairIKS5_jEEE22find_or_prepare_insertIS5_EESC_INSG_8iteratorEbERKT_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.1218") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #26 comdat align 2 {
bb.a:
  %3 = alloca %"struct.absl::container_internal::HashKey", align 8 ; 5 uses
  %i.a = load i64, ptr %1, align 8                ; 5 uses
  %i.b = icmp ult i64 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noalias !317
  %.not.i.i.i = icmp ult i64 %i.d, 131072
  br i1 %.not.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i64 131072, ptr %i.c, align 8, !noalias !317
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal15WasmCodePointerEjEENS_13hash_internal4HashIS5_EESt8equal_toIS5_ESaISt4pairIKS5_jEEE28find_or_prepare_insert_smallIS5_EESC_INSG_8iteratorEbERKT_.exit

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !noalias !317
  %i.h = load i32, ptr %2, align 4, !noalias !317
  %i.i = icmp eq i32 %i.g, %i.h
  br i1 %i.i, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal15WasmCodePointerEjEENS_13hash_internal4HashIS5_EESt8equal_toIS5_ESaISt4pairIKS5_jEEE28find_or_prepare_insert_smallIS5_EESC_INSG_8iteratorEbERKT_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31, !noalias !317
  store ptr %1, ptr %3, align 8, !noalias !317
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %i.j, align 8, !noalias !317
  %i.k = call noundef i64 @_ZN4absl18container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm8ELb1EEEmRNS0_12CommonFieldsERKNS0_15PolicyFunctionsENS_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal15WasmCodePointerEjEENS_13hash_internal4HashIS5_EESt8equal_toIS5_ESaISt4pairIKS5_jEEE18GetPolicyFunctionsEvE5value, ptr nonnull %3, ptr nonnull @_ZN4absl19functional_internal12InvokeObjectINS_18container_internal7HashKeyINS_13hash_internal4HashIN2v88internal15WasmCodePointerEEES8_Lb1EEEmJmEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE, i1 noundef zeroext false) #31, !noalias !317 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !317
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !noalias !317 ; 4 uses
  %4 = load i64, ptr %1, align 8, !noalias !317   ; 2 uses
  %5 = icmp ult i64 %4, 2
  %6 = add i64 %4, 16
  %7 = select i1 %5, i64 0, i64 %6
  %8 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %7
  %9 = icmp ule ptr %8, %1
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %11 = icmp ule ptr %10, %.sroa.0.0.copyload.i.i.i.i.i.i
  %12 = select i1 %9, i1 true, i1 %11
  call void @llvm.assume(i1 %12)
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i.i2.i.i.i = load ptr, ptr %i.m, align 8, !noalias !317
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i.i.i, i64 %i.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i.i) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal15WasmCodePointerEjEENS_13hash_internal4HashIS5_EESt8equal_toIS5_ESaISt4pairIKS5_jEEE28find_or_prepare_insert_smallIS5_EESC_INSG_8iteratorEbERKT_.exit

bb.f:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.o, align 8, !noalias !322 ; 5 uses
  %13 = getelementptr i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.a
  %14 = getelementptr i8, ptr %13, i64 16
  %15 = icmp ule ptr %14, %1
  %16 = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %17 = icmp ule ptr %16, %.sroa.0.0.copyload.i.i.i.i.i
  %18 = select i1 %15, i1 true, i1 %17
  tail call void @llvm.assume(i1 %18)
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1), !noalias !322
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load i64, ptr %i.p, align 8, !noalias !322
  %sext.i = shl i64 %i.q, 48
  %i.r = ashr exact i64 %sext.i, 48
  %i.s = load i32, ptr %2, align 4, !noalias !322 ; 2 uses
  %i.t = zext i32 %i.s to i64
  %i.u = xor i64 %i.r, %i.t
  %i.v = zext i64 %i.u to i128
  %i.w = mul nuw nsw i128 %i.v, 8779197792823184629 ; 2 uses
  %i.x = lshr i128 %i.w, 64
  %i.y = xor i128 %i.x, %i.w
  %i.z = trunc i128 %i.y to i64                   ; 3 uses
  %i.aa = lshr i64 %i.z, 57
  %i.ab = trunc nuw nsw i64 %i.aa to i8
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i22.i = load ptr, ptr %i.ac, align 8, !noalias !322 ; 3 uses
  %i.ad = insertelement <16 x i8> poison, i8 %i.ab, i64 0
  %i.ae = shufflevector <16 x i8> %i.ad, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.pn.i = phi i64 [ %i.z, %bb.f ], [ %i.bd, %bb.h ]
  %.sroa.15.0.i = phi i64 [ 0, %bb.f ], [ %i.bc, %bb.h ] ; 2 uses
  %.sroa.7.0.i = and i64 %.pn.i, %i.a             ; 5 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i22.i, i64 %.sroa.7.0.i
  tail call void @llvm.prefetch.p0(ptr %i.af, i32 0, i32 3, i32 1), !noalias !322
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.7.0.i
  %i.ah = load <16 x i8>, ptr %i.ag, align 1, !noalias !322 ; 2 uses
  %i.ai = icmp eq <16 x i8> %i.ae, %i.ah
  %i.aj = bitcast <16 x i1> %i.ai to i16          ; 2 uses
  %.not65.i = icmp eq i16 %i.aj, 0
  br i1 %.not65.i, label %.critedge19.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %.critedge.i
  %.sroa.035.066.i = phi i16 [ %i.as, %.critedge.i ], [ %i.aj, %bb.g ] ; 3 uses
  %i.ak = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.066.i, i1 true)
  %i.al = zext nneg i16 %i.ak to i64
  %i.am = add i64 %.sroa.7.0.i, %i.al
  %i.an = and i64 %i.am, %i.a                     ; 3 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i22.i, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !noalias !322
  %i.aq = icmp eq i32 %i.ap, %i.s
  br i1 %i.aq, label %.critedge21.i, label %.critedge.i, !prof !10

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.ar = add i16 %.sroa.035.066.i, -1
  %i.as = and i16 %i.ar, %.sroa.035.066.i         ; 2 uses
  %.not.i = icmp eq i16 %i.as, 0
  br i1 %.not.i, label %.critedge19.i, label %.lr.ph.i

.critedge19.i:                                    ; preds = %.critedge.i, %bb.g
  %i.at = icmp eq <16 x i8> %i.ah, splat (i8 -128)
  %i.au = bitcast <16 x i1> %i.at to i16          ; 2 uses
  %.not57.i = icmp eq i16 %i.au, 0
  br i1 %.not57.i, label %bb.h, label %.thread.i, !prof !11

.thread.i:                                        ; preds = %.critedge19.i
  %i.av = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.au, i1 true)
  %i.aw = zext nneg i16 %i.av to i64
  %i.ax = add i64 %.sroa.7.0.i, %i.aw
  %i.ay = and i64 %i.ax, %i.a
  %i.az = tail call noundef i64 @_ZN4absl18container_internal18PrepareInsertLargeERNS0_12CommonFieldsERKNS0_15PolicyFunctionsEmNS0_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal15WasmCodePointerEjEENS_13hash_internal4HashIS5_EESt8equal_toIS5_ESaISt4pairIKS5_jEEE18GetPolicyFunctionsEvE5value, i64 noundef %i.z, i64 %i.ay, i64 %.sroa.15.0.i) #31, !noalias !322 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i25.i = load ptr, ptr %i.o, align 8, !noalias !322, !nonnull !24, !noundef !24 ; 3 uses
  %19 = load i64, ptr %1, align 8, !noalias !322  ; 2 uses
  %20 = icmp ult i64 %19, 2
  %21 = add i64 %19, 16
  %22 = select i1 %20, i64 0, i64 %21
  %23 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i25.i, i64 %22
  %24 = icmp ule ptr %23, %1
  %25 = icmp ule ptr %16, %.sroa.0.0.copyload.i.i.i.i25.i
  %26 = select i1 %24, i1 true, i1 %25
  tail call void @llvm.assume(i1 %26)
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i25.i, i64 %i.az
  %.sroa.0.0.copyload.i.i.i2.i26.i = load ptr, ptr %i.ac, align 8, !noalias !322
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i26.i, i64 %i.az
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal15WasmCodePointerEjEENS_13hash_internal4HashIS5_EESt8equal_toIS5_ESaISt4pairIKS5_jEEE28find_or_prepare_insert_smallIS5_EESC_INSG_8iteratorEbERKT_.exit

bb.h:                                             ; preds = %.critedge19.i
  %i.bc = add i64 %.sroa.15.0.i, 16               ; 2 uses
  %i.bd = add i64 %i.bc, %.sroa.7.0.i
  br label %bb.g

.critedge21.i:                                    ; preds = %.lr.ph.i
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i22.i, i64 %i.an
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.an
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal15WasmCodePointerEjEENS_13hash_internal4HashIS5_EESt8equal_toIS5_ESaISt4pairIKS5_jEEE28find_or_prepare_insert_smallIS5_EESC_INSG_8iteratorEbERKT_.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal15WasmCodePointerEjEENS_13hash_internal4HashIS5_EESt8equal_toIS5_ESaISt4pairIKS5_jEEE28find_or_prepare_insert_smallIS5_EESC_INSG_8iteratorEbERKT_.exit: ; preds = %.critedge21.i, %.thread.i, %bb.e, %bb.d, %bb.c
  %.sink82.i.sink = phi ptr [ @_ZN4absl18container_internal11kSooControlE, %bb.d ], [ %i.l, %bb.e ], [ @_ZN4absl18container_internal11kSooControlE, %bb.c ], [ %i.ba, %.thread.i ], [ %i.bf, %.critedge21.i ]
  %.sink81.i.sink = phi ptr [ %i.f, %bb.d ], [ %i.n, %bb.e ], [ %i.e, %bb.c ], [ %i.bb, %.thread.i ], [ %i.be, %.critedge21.i ]
  %.sink.i.sink = phi i8 [ 0, %bb.d ], [ 1, %bb.e ], [ 1, %bb.c ], [ 1, %.thread.i ], [ 0, %.critedge21.i ]
  store ptr %.sink82.i.sink, ptr %0, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink81.i.sink, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink.i.sink, ptr %i.bg, align 8
  ret void
}

declare noundef i64 @_ZN4absl18container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm8ELb1EEEmRNS0_12CommonFieldsERKNS0_15PolicyFunctionsENS_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(72), ptr, ptr, i1 noundef zeroext) local_unnamed_addr #6

declare noundef ptr @_ZN4absl18container_internal19GetRefForEmptyClassERNS0_12CommonFieldsE(ptr noundef nonnull align 8 dereferenceable(32)) #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN4absl18container_internal23TypeErasedApplyToSlotFnINS_13hash_internal4HashIN2v88internal15WasmCodePointerEEES6_Lb1EEEmPKvPvm(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 comdat {
bb.a:
  %i.a = load i32, ptr %1, align 4
  %i.b = zext i32 %i.a to i64
  %i.c = xor i64 %2, %i.b
  %i.d = zext i64 %i.c to i128
  %i.e = mul nuw nsw i128 %i.d, 8779197792823184629 ; 2 uses
  %i.f = lshr i128 %i.e, 64
  %i.g = xor i128 %i.f, %i.e
  %i.h = trunc i128 %i.g to i64
  ret i64 %i.h
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4absl18container_internal20TransferNRelocatableILm8EEEvPvS2_S2_m(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #10 comdat {
bb.a:
  %i.a = shl i64 %3, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %i.a, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4absl18container_internal20AllocateBackingArrayILm8ESaIcEEEPvS3_m(ptr noundef %0, i64 noundef %1) #10 comdat {
bb.a:
  %i.a = add i64 %1, 7                            ; 2 uses
  %i.b = icmp slt i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4absl18container_internal8AllocateILm8ESaIcEEEPvPT0_m.exit, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt17__throw_bad_allocv() #34
  unreachable

_ZN4absl18container_internal8AllocateILm8ESaIcEEEPvPT0_m.exit: ; preds = %bb.a
  %i.c = and i64 %i.a, 9223372036854775800
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #33
  ret ptr %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal15WasmCodePointerEjEENS_13hash_internal4HashIS5_EESt8equal_toIS5_ESaISt4pairIKS5_jEEE46transfer_unprobed_elements_to_next_capacity_fnERNS0_12CommonFieldsEPKNS0_6ctrl_tEPvSM_PFvSM_hmmE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #26 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 5 uses
  %i.b = lshr i64 %i.a, 1                         ; 4 uses
  %i.c = and i64 %i.a, 30
  %i.d = icmp eq i64 %i.c, 30
  tail call void @llvm.assume(i1 %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.e, align 8 ; 5 uses
  %5 = getelementptr i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.a
  %6 = getelementptr i8, ptr %5, i64 16
  %7 = icmp ule ptr %6, %0
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %9 = icmp ule ptr %8, %.sroa.0.0.copyload.i.i
  %10 = select i1 %7, i1 true, i1 %9
  tail call void @llvm.assume(i1 %10)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = and i64 %i.b, 9223372036854775792
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  ret void

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %.04962 = phi i64 [ 0, %bb.a ], [ %i.p, %._crit_edge ] ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %.04962
  %i.j = load <16 x i8>, ptr %i.i, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %.04962 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.k, i8 -128, i64 16, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.m, i8 -128, i64 16, i1 false)
  %i.n = icmp sgt <16 x i8> %i.j, splat (i8 -1)
  %i.o = bitcast <16 x i1> %i.n to i16            ; 2 uses
  %.not60 = icmp eq i16 %i.o, 0
  br i1 %.not60, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.j, %bb.c
  %i.p = add nuw i64 %.04962, 16                  ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.b
  br i1 %i.q, label %bb.c, label %bb.b, !llvm.loop !325

.lr.ph:                                           ; preds = %bb.c, %bb.j
  %.sroa.052.061 = phi i16 [ %i.bb, %bb.j ], [ %i.o, %bb.c ] ; 3 uses
  %i.r = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.052.061, i1 true)
  %i.s = zext nneg i16 %i.r to i64
  %i.t = or disjoint i64 %.04962, %i.s            ; 4 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.t ; 2 uses
  %i.v = load i64, ptr %i.g, align 8
  %sext = shl i64 %i.v, 48
  %i.w = ashr exact i64 %sext, 48
  %i.x = load i32, ptr %i.u, align 4
  %i.y = zext i32 %i.x to i64
  %i.z = xor i64 %i.w, %i.y
  %i.aa = zext i64 %i.z to i128
  %i.ab = mul nuw nsw i128 %i.aa, 8779197792823184629 ; 2 uses
  %i.ac = lshr i128 %i.ab, 64
  %i.ad = xor i128 %i.ac, %i.ab
  %i.ae = trunc i128 %i.ad to i64                 ; 6 uses
  %i.af = lshr i64 %i.ae, 57
  %i.ag = trunc nuw nsw i64 %i.af to i8           ; 2 uses
  %i.ah = sub i64 %i.t, %i.ae                     ; 2 uses
  %i.ai = and i64 %i.h, %i.ah
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %bb.d, label %bb.e, !prof !10

bb.d:                                             ; preds = %.lr.ph
  %i.ak = and i64 %i.ah, 15
  %i.al = add i64 %i.ak, %i.ae
  %i.am = and i64 %i.al, %i.a
  br label %bb.i

bb.e:                                             ; preds = %.lr.ph
  %i.an = and i64 %i.b, %i.ae
  %.not.i = icmp ult i64 %i.an, %i.t
  br i1 %.not.i, label %bb.f, label %bb.h, !prof !10

bb.f:                                             ; preds = %bb.e
  %i.ao = and i64 %i.a, %i.ae                     ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.ao
  %i.aq = load <16 x i8>, ptr %i.ap, align 1
  %i.ar = icmp slt <16 x i8> %i.aq, zeroinitializer
  %i.as = bitcast <16 x i1> %i.ar to i16          ; 2 uses
  %.not26.i = icmp eq i16 %i.as, 0
  br i1 %.not26.i, label %bb.h, label %bb.g, !prof !11

bb.g:                                             ; preds = %bb.f
  %i.at = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.as, i1 true)
  %i.au = zext nneg i16 %i.at to i64
  %i.av = add i64 %i.ao, %i.au
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.e
  tail call void %4(ptr noundef %3, i8 noundef zeroext %i.ag, i64 noundef %i.t, i64 noundef %i.ae) #31
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.d
  %.sink27.i = phi i64 [ %i.av, %bb.g ], [ %i.am, %bb.d ] ; 3 uses
  %i.aw = icmp ne i64 %.sink27.i, -1
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %.sink27.i
  store i8 %i.ag, ptr %i.ax, align 1
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.sink27.i
  %i.az = load i64, ptr %i.u, align 4
  store i64 %i.az, ptr %i.ay, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ba = add i16 %.sroa.052.061, -1
  %i.bb = and i16 %i.ba, %.sroa.052.061           ; 2 uses
  %.not = icmp eq i16 %i.bb, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN4absl19functional_internal12InvokeObjectINS_18container_internal7HashKeyINS_13hash_internal4HashIN2v88internal15WasmCodePointerEEES8_Lb1EEEmJmEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE(ptr %0, i64 noundef %1) #0 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !24, !align !326
  %i.c = load i32, ptr %i.b, align 4
  %i.d = zext i32 %i.c to i64
  %i.e = xor i64 %1, %i.d
  %i.f = zext i64 %i.e to i128
  %i.g = mul nuw nsw i128 %i.f, 8779197792823184629 ; 2 uses
  %i.h = lshr i128 %i.g, 64
  %i.i = xor i128 %i.h, %i.g
  %i.j = trunc i128 %i.i to i64
  ret i64 %i.j
}

declare noundef i64 @_ZN4absl18container_internal18PrepareInsertLargeERNS0_12CommonFieldsERKNS0_15PolicyFunctionsEmNS0_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(72), i64 noundef, i64, i64) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #27

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v84base4impl27PrintFormattedStringToArrayIL_ZNS0_15FormattedStringIJA18_cmA21_cmEE7kFormatEELi78EJNS1_19FormattedStringPartIS4_EENS7_ImEENS7_IS5_EES9_EEESt5arrayIcXT0_EEDpT1_(ptr dead_on_unwind noalias writable sret(%"struct.std::array.1242") align 1 %0, ptr %1, i64 %2, ptr %3, i64 %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = tail call noundef i32 (ptr, i32, ptr, ...) @_ZN2v84base2OS8SNPrintFEPciPKcz(ptr noundef %0, i32 noundef 78, ptr noundef nonnull @_ZN2v84base4impl17JoinedStringViewsIJL_ZNS1_19FormattedStringPartIA18_cE11kFormatPartEEL_ZNS3_ImE11kFormatPartEEL_ZNS3_IA21_cE11kFormatPartEEL_ZNS6_11kFormatPartEEEE5arrayE, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) #31
  %i.b = icmp ugt i32 %i.a, 77
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.98) #34
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v84base4impl27PrintFormattedStringToArrayIL_ZNS0_15FormattedStringIJA14_cmEE7kFormatEELi34EJNS1_19FormattedStringPartIS4_EENS6_ImEEEEESt5arrayIcXT0_EEDpT1_(ptr dead_on_unwind noalias writable sret(%"struct.std::array.1251") align 1 %0, ptr %1, i64 %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = tail call noundef i32 (ptr, i32, ptr, ...) @_ZN2v84base2OS8SNPrintFEPciPKcz(ptr noundef %0, i32 noundef 34, ptr noundef nonnull @_ZN2v84base4impl17JoinedStringViewsIJL_ZNS1_19FormattedStringPartIA14_cE11kFormatPartEEL_ZNS3_ImE11kFormatPartEEEE5arrayE, ptr noundef %1, i64 noundef %2) #31
  %i.b = icmp ugt i32 %i.a, 33
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.98) #34
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, ptr } @_ZNSt8_Rb_treeImSt4pairIKmS0_ImPN2v88internal4wasm12NativeModuleEEESt10_Select1stIS8_ESt4lessImESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i64, ptr %i.g, align 8
  %i.i = load i64, ptr %2, align 8
  %i.j = icmp ult i64 %i.h, %i.i
  br i1 %i.j, label %_ZNSt8_Rb_treeImSt4pairIKmS0_ImPN2v88internal4wasm12NativeModuleEEESt10_Select1stIS8_ESt4lessImESaIS8_EE24_M_get_insert_unique_posERS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i = load ptr, ptr %i.k, align 8         ; 2 uses
  %.not23.i = icmp eq ptr %.02022.i, null
  br i1 %.not23.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.l = load i64, ptr %2, align 8                ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.02024.i = phi ptr [ %.02022.i, %.lr.ph.i ], [ %.020.i, %bb.e ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.02024.i, i64 32
  %i.n = load i64, ptr %i.m, align 8              ; 2 uses
  %i.o = icmp ult i64 %i.l, %i.n                  ; 2 uses
  %.in.v.i = select i1 %i.o, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8         ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %bb.e, !llvm.loop !327

._crit_edge.i:                                    ; preds = %bb.e
  br i1 %i.o, label %._crit_edge.thread.i, label %bb.g

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.d
  %.019.lcssa29.i = phi ptr [ %.02024.i, %._crit_edge.i ], [ %i.a, %bb.d ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
end_hunk_0
