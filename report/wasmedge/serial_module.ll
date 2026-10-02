Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmedge/original/serial_module?download=true
inline.NumInlined: 1825
inline.NumDeleted: 1075
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZNSt6vectorIhSaIhEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKhS1_EEEEvNS4_IPhS1_EET_SA_St20forward_iterator_tag:bb.a

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  %i.z = icmp eq i64 %i.v, 1
  br i1 %i.z, label %bb.j, label %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds i8, ptr %i.g, i64 -1
  %i.ab = load i8, ptr %1, align 1, !tbaa !37
  store i8 %i.ab, ptr %i.aa, align 1, !tbaa !37
  br label %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit

_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit:       ; preds = %bb.h, %bb.i, %bb.j
  br i1 %i.q, label %bb.k, label %bb.l, !prof !28

bb.k:                                             ; preds = %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %i.c, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEENS1_IPhS6_EEET0_T_SB_SA_.exit

bb.l:                                             ; preds = %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit
  %i.ac = icmp eq i64 %i.c, 1
  br i1 %i.ac, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEENS1_IPhS6_EEET0_T_SB_SA_.exit

bb.m:                                             ; preds = %bb.l
  %i.ad = load i8, ptr %2, align 1, !tbaa !37
  store i8 %i.ad, ptr %1, align 1, !tbaa !37
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEENS1_IPhS6_EEET0_T_SB_SA_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.ae = icmp eq i64 %i.l, 1
  %i.af = getelementptr inbounds i8, ptr %2, i64 %i.l ; 3 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %i.a, %i.ag                     ; 3 uses
  %i.ai = icmp sgt i64 %i.ah, 1
  br i1 %i.ai, label %bb.n, label %bb.o, !prof !28

bb.n:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEElEvRT_T0_St26random_access_iterator_tag.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.g, ptr align 1 %i.af, i64 %i.ah, i1 false)
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEEPhhET0_T_SA_S9_RSaIT1_E.exit

bb.o:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.aj = icmp eq i64 %i.ah, 1
  br i1 %i.aj, label %bb.p, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEEPhhET0_T_SA_S9_RSaIT1_E.exit

bb.p:                                             ; preds = %bb.o
  %i.ak = load i8, ptr %i.af, align 1, !tbaa !37
  store i8 %i.ak, ptr %i.g, align 1, !tbaa !37
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEEPhhET0_T_SA_S9_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEEPhhET0_T_SA_S9_RSaIT1_E.exit: ; preds = %bb.n, %bb.o, %bb.p
  %i.al = sub nuw i64 %i.c, %i.l
  %i.am = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.al ; 3 uses
  store ptr %i.an, ptr %i.f, align 8, !tbaa !18
  %i.ao = icmp sgt i64 %i.l, 1
  br i1 %i.ao, label %bb.q, label %bb.r, !prof !28

bb.q:                                             ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEEPhhET0_T_SA_S9_RSaIT1_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.an, ptr align 1 %1, i64 %i.l, i1 false)
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit51

bb.r:                                             ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEEPhhET0_T_SA_S9_RSaIT1_E.exit
  br i1 %i.ae, label %bb.s, label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit51

bb.s:                                             ; preds = %bb.r
  %i.ap = load i8, ptr %1, align 1, !tbaa !37
  store i8 %i.ap, ptr %i.an, align 1, !tbaa !37
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit51

_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit51: ; preds = %bb.q, %bb.r, %bb.s
  %i.aq = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.l
  store ptr %i.ar, ptr %i.f, align 8, !tbaa !18
  %i.as = icmp sgt i64 %i.l, 1
  br i1 %i.as, label %bb.t, label %bb.u, !prof !28

bb.t:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit51
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %i.l, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEENS1_IPhS6_EEET0_T_SB_SA_.exit

bb.u:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit51
  %i.at = icmp eq i64 %i.l, 1
  br i1 %i.at, label %bb.v, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEENS1_IPhS6_EEET0_T_SB_SA_.exit

bb.v:                                             ; preds = %bb.u
  %i.au = load i8, ptr %2, align 1, !tbaa !37
  store i8 %i.au, ptr %1, align 1, !tbaa !37
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEENS1_IPhS6_EEET0_T_SB_SA_.exit

bb.w:                                             ; preds = %bb.b
  %i.av = load ptr, ptr %0, align 8, !tbaa !19    ; 5 uses
  %i.aw = ptrtoint ptr %i.av to i64               ; 3 uses
  %i.ax = sub i64 %i.i, %i.aw                     ; 4 uses
  %i.ay = sub i64 9223372036854775807, %i.ax
  %i.az = icmp ult i64 %i.ay, %i.c
  br i1 %i.az, label %bb.x, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit

bb.x:                                             ; preds = %bb.w
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.114) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit:    ; preds = %bb.w
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.ax, i64 %i.c)
  %i.ba = add i64 %.sroa.speculated.i, %i.ax      ; 2 uses
  %i.bb = icmp ult i64 %i.ba, %i.ax
  %i.bc = tail call i64 @llvm.umin.i64(i64 %i.ba, i64 9223372036854775807)
  %i.bd = select i1 %i.bb, i64 9223372036854775807, i64 %i.bc ; 3 uses
  %.not.i = icmp eq i64 %i.bd, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit, label %bb.y

bb.y:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit
  %i.be = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bd) #21
  br label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit:  ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit, %bb.y
  %i.bf = phi ptr [ %i.be, %bb.y ], [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.bg = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bh = sub i64 %i.bg, %i.aw                    ; 4 uses
  %i.bi = icmp sgt i64 %i.bh, 1
  br i1 %i.bi, label %bb.z, label %bb.aa, !prof !28

bb.z:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bf, ptr align 1 %i.av, i64 %i.bh, i1 false)
  br label %bb.ac

bb.aa:                                            ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit
  %i.bj = icmp eq i64 %i.bh, 1
  br i1 %i.bj, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.bk = load i8, ptr %i.av, align 1, !tbaa !37
  store i8 %i.bk, ptr %i.bf, align 1, !tbaa !37
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %i.bl = getelementptr inbounds i8, ptr %i.bf, i64 %i.bh ; 3 uses
  %i.bm = icmp sgt i64 %i.c, 1
  br i1 %i.bm, label %bb.ad, label %bb.ae, !prof !28

bb.ad:                                            ; preds = %bb.ac
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bl, ptr align 1 %2, i64 %i.c, i1 false)
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ac
  %i.bn = icmp eq i64 %i.c, 1
  br i1 %i.bn, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.bo = load i8, ptr %2, align 1, !tbaa !37
  store i8 %i.bo, ptr %i.bl, align 1, !tbaa !37
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %i.bp = getelementptr inbounds i8, ptr %i.bl, i64 %i.c ; 3 uses
  %i.bq = sub i64 %i.i, %i.bg                     ; 4 uses
  %i.br = icmp sgt i64 %i.bq, 1
  br i1 %i.br, label %bb.ah, label %bb.ai, !prof !28

bb.ah:                                            ; preds = %bb.ag
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bp, ptr align 1 %1, i64 %i.bq, i1 false)
  br label %bb.ak

bb.ai:                                            ; preds = %bb.ag
  %i.bs = icmp eq i64 %i.bq, 1
  br i1 %i.bs, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.bt = load i8, ptr %1, align 1, !tbaa !37
  store i8 %i.bt, ptr %i.bp, align 1, !tbaa !37
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.bu = getelementptr inbounds i8, ptr %i.bp, i64 %i.bq
  %.not.i55 = icmp eq ptr %i.av, null
  br i1 %.not.i55, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bv = sub i64 %i.h, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.bv) #22
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit: ; preds = %bb.ak, %bb.al
  store ptr %i.bf, ptr %0, align 8, !tbaa !19
  store ptr %i.bu, ptr %i.f, align 8, !tbaa !18
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bd
  store ptr %i.bw, ptr %i.d, align 8, !tbaa !20
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEENS1_IPhS6_EEET0_T_SB_SA_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEENS1_IPhS6_EEET0_T_SB_SA_.exit: ; preds = %bb.v, %bb.u, %bb.t, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt7variantIJPKN8WasmEdge3AST13CustomSectionEPKNS4_11TypeSectionEPKNS4_13ImportSectionEPKNS4_15FunctionSectionEPKNS4_12TableSectionEPKNS4_13MemorySectionEPKNS4_13GlobalSectionEPKNS4_13ExportSectionEPKNS4_12StartSectionEPKNS4_14ElementSectionEPKNS4_11CodeSectionEPKNS4_11DataSectionEPKNS4_16DataCountSectionEPKNS4_10TagSectionEEESt6vectorIS1B_SaIS1B_EEEElNS0_5__ops15_Iter_comp_iterIZNKS3_6Loader10Serializer15serializeModuleERKNS4_6ModuleEE3$_2EEEvT_S1Q_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.anon.172, align 8            ; 5 uses
  %4 = alloca %class.anon.168, align 1            ; 4 uses
  %5 = alloca %class.anon.168, align 1            ; 4 uses
  %6 = alloca %class.anon.172, align 8            ; 5 uses
  %7 = alloca %class.anon.172, align 8            ; 5 uses
  %8 = alloca %class.anon.168, align 1            ; 4 uses
  %9 = alloca %class.anon.172, align 8            ; 5 uses
  %10 = alloca %class.anon.168, align 1           ; 4 uses
  %11 = alloca %class.anon.172, align 8           ; 5 uses
  %12 = alloca %class.anon.172, align 8           ; 5 uses
  %13 = alloca %class.anon.168, align 1           ; 4 uses
  %14 = alloca %class.anon.172, align 8           ; 5 uses
  %15 = alloca %class.anon.168, align 1           ; 4 uses
  %16 = alloca %class.anon.168, align 1           ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 4                   ; 3 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt7variantIJPKN8WasmEdge3AST13CustomSectionEPKNS4_11TypeSectionEPKNS4_13ImportSectionEPKNS4_15FunctionSectionEPKNS4_12TableSectionEPKNS4_13MemorySectionEPKNS4_13GlobalSectionEPKNS4_13ExportSectionEPKNS4_12StartSectionEPKNS4_14ElementSectionEPKNS4_11CodeSectionEPKNS4_11DataSectionEPKNS4_16DataCountSectionEPKNS4_10TagSectionEEESt6vectorIS1B_SaIS1B_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_6Loader10Serializer15serializeModuleERKNS4_6ModuleEE3$_2EEEvT_S1Q_S1Q_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %17 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %18 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = icmp eq i64 %2, 0
  br i1 %i.n, label %._crit_edge, label %.lr.ph109

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt7variantIJPKN8WasmEdge3AST13CustomSectionEPKNS4_11TypeSectionEPKNS4_13ImportSectionEPKNS4_15FunctionSectionEPKNS4_12TableSectionEPKNS4_13MemorySectionEPKNS4_13GlobalSectionEPKNS4_13ExportSectionEPKNS4_12StartSectionEPKNS4_14ElementSectionEPKNS4_11CodeSectionEPKNS4_11DataSectionEPKNS4_16DataCountSectionEPKNS4_10TagSectionEEESt6vectorIS1B_SaIS1B_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_6Loader10Serializer15serializeModuleERKNS4_6ModuleEE3$_2EEET_S1Q_S1Q_T0_.exit"
  %i.o = icmp eq i64 %i.z, 0
  br i1 %i.o, label %._crit_edge, label %.lr.ph109, !llvm.loop !323

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa98 = phi i64 [ %i.d, %.lr.ph ], [ %i.fb, %bb.b ] ; 2 uses
  %storemerge46.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.010.1.i.i, %bb.b ]
  %i.p = add nsw i64 %.lcssa98, -2
  %i.q = lshr i64 %i.p, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %._crit_edge
  %.010.i.i.i = phi i64 [ %i.q, %._crit_edge ], [ %i.s, %bb.c ] ; 4 uses
  %i.r = getelementptr inbounds [16 x i8], ptr %0, i64 %.010.i.i.i ; 2 uses
  %.sroa.03.0.copyload.i.i.i = load ptr, ptr %i.r, align 8
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.4.0.copyload.i.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  call fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt7variantIJPKN8WasmEdge3AST13CustomSectionEPKNS4_11TypeSectionEPKNS4_13ImportSectionEPKNS4_15FunctionSectionEPKNS4_12TableSectionEPKNS4_13MemorySectionEPKNS4_13GlobalSectionEPKNS4_13ExportSectionEPKNS4_12StartSectionEPKNS4_14ElementSectionEPKNS4_11CodeSectionEPKNS4_11DataSectionEPKNS4_16DataCountSectionEPKNS4_10TagSectionEEESt6vectorIS1B_SaIS1B_EEEElS1B_NS0_5__ops15_Iter_comp_iterIZNKS3_6Loader10Serializer15serializeModuleERKNS4_6ModuleEE3$_2EEEvT_T0_S1R_T1_T2_"(ptr %0, i64 noundef %.010.i.i.i, i64 noundef %.lcssa98, ptr %.sroa.03.0.copyload.i.i.i, i8 %.sroa.4.0.copyload.i.i.i)
  %.not.i.i.i = icmp eq i64 %.010.i.i.i, 0
  %i.s = add nsw i64 %.010.i.i.i, -1
  br i1 %.not.i.i.i, label %.lr.ph.i9.i, label %bb.c, !llvm.loop !324

.lr.ph.i9.i:                                      ; preds = %bb.c, %.lr.ph.i9.i
  %.sroa.0.03.i.i = phi ptr [ %i.t, %.lr.ph.i9.i ], [ %storemerge46.lcssa, %bb.c ] ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -16 ; 4 uses
  %.sroa.03.0.copyload.i.i10.i = load ptr, ptr %i.t, align 8
  %.sroa.4.0..sroa_idx.i.i11.i = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8
  %.sroa.4.0.copyload.i.i12.i = load i8, ptr %.sroa.4.0..sroa_idx.i.i11.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.t, ptr noundef nonnull align 8 dereferenceable(9) %0, i64 9, i1 false)
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = sub i64 %i.u, %i.a                       ; 2 uses
  %i.w = ashr exact i64 %i.v, 4
  call fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt7variantIJPKN8WasmEdge3AST13CustomSectionEPKNS4_11TypeSectionEPKNS4_13ImportSectionEPKNS4_15FunctionSectionEPKNS4_12TableSectionEPKNS4_13MemorySectionEPKNS4_13GlobalSectionEPKNS4_13ExportSectionEPKNS4_12StartSectionEPKNS4_14ElementSectionEPKNS4_11CodeSectionEPKNS4_11DataSectionEPKNS4_16DataCountSectionEPKNS4_10TagSectionEEESt6vectorIS1B_SaIS1B_EEEElS1B_NS0_5__ops15_Iter_comp_iterIZNKS3_6Loader10Serializer15serializeModuleERKNS4_6ModuleEE3$_2EEEvT_T0_S1R_T1_T2_"(ptr nonnull %0, i64 noundef 0, i64 noundef %i.w, ptr %.sroa.03.0.copyload.i.i10.i, i8 %.sroa.4.0.copyload.i.i12.i)
  %i.x = icmp sgt i64 %i.v, 16
  br i1 %i.x, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt7variantIJPKN8WasmEdge3AST13CustomSectionEPKNS4_11TypeSectionEPKNS4_13ImportSectionEPKNS4_15FunctionSectionEPKNS4_12TableSectionEPKNS4_13MemorySectionEPKNS4_13GlobalSectionEPKNS4_13ExportSectionEPKNS4_12StartSectionEPKNS4_14ElementSectionEPKNS4_11CodeSectionEPKNS4_11DataSectionEPKNS4_16DataCountSectionEPKNS4_10TagSectionEEESt6vectorIS1B_SaIS1B_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_6Loader10Serializer15serializeModuleERKNS4_6ModuleEE3$_2EEEvT_S1Q_S1Q_T0_.exit", !llvm.loop !325

.lr.ph109:                                        ; preds = %.lr.ph, %bb.b
  %storemerge46108 = phi ptr [ %.sroa.010.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 4 uses
  %.047107 = phi i64 [ %i.z, %bb.b ], [ %2, %.lr.ph ]
  %i.y = phi i64 [ %i.fb, %bb.b ], [ %i.d, %.lr.ph ]
  %i.z = add nsw i64 %.047107, -1                 ; 3 uses
  %i.aa = lshr i64 %i.y, 1
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.aa ; 8 uses
  %i.ac = getelementptr inbounds i8, ptr %storemerge46108, i64 -16 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  %i.ad = load i8, ptr %i.g, align 8, !tbaa !26
  %i.ae = zext i8 %i.ad to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr @"_ZNSt8__detail9__variant12__gen_vtableINS0_21__deduce_visit_resultImEERZZNK8WasmEdge6Loader10Serializer15serializeModuleERKNS4_3AST6ModuleEENK3$_2clISt7variantIJPKNS7_13CustomSectionEPKNS7_11TypeSectionEPKNS7_13ImportSectionEPKNS7_15FunctionSectionEPKNS7_12TableSectionEPKNS7_13MemorySectionEPKNS7_13GlobalSectionEPKNS7_13ExportSectionEPKNS7_12StartSectionEPKNS7_14ElementSectionEPKNS7_11CodeSectionEPKNS7_11DataSectionEPKNS7_16DataCountSectionEPKNS7_10TagSectionEEES1K_EEDaRT_RT0_EUlS1M_E_JRS1K_EE9_S_vtableE", i64 %i.ae
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !27
  %i.ah = call noundef i64 %i.ag(ptr noundef nonnull align 1 dereferenceable(1) %16, ptr noundef nonnull align 8 dereferenceable(9) %i.f), !inline_history !326
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 5 uses
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !26
  %i.ak = zext i8 %i.aj to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr @"_ZNSt8__detail9__variant12__gen_vtableINS0_21__deduce_visit_resultImEERZZNK8WasmEdge6Loader10Serializer15serializeModuleERKNS4_3AST6ModuleEENK3$_2clISt7variantIJPKNS7_13CustomSectionEPKNS7_11TypeSectionEPKNS7_13ImportSectionEPKNS7_15FunctionSectionEPKNS7_12TableSectionEPKNS7_13MemorySectionEPKNS7_13GlobalSectionEPKNS7_13ExportSectionEPKNS7_12StartSectionEPKNS7_14ElementSectionEPKNS7_11CodeSectionEPKNS7_11DataSectionEPKNS7_16DataCountSectionEPKNS7_10TagSectionEEES1K_EEDaRT_RT0_EUlS1M_E_JRS1K_EE9_S_vtableE", i64 %i.ak
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !27
  %i.an = call noundef i64 %i.am(ptr noundef nonnull align 1 dereferenceable(1) %16, ptr noundef nonnull align 8 dereferenceable(9) %i.ab), !inline_history !326
  %i.ao = icmp ult i64 %i.ah, %i.an
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  %i.ap = getelementptr inbounds i8, ptr %storemerge46108, i64 -8 ; 6 uses
  br i1 %i.ao, label %bb.d, label %bb.l

bb.d:                                             ; preds = %.lr.ph109
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  %i.aq = load i8, ptr %i.ai, align 8, !tbaa !26
  %i.ar = zext i8 %i.aq to i64
  %i.as = getelementptr inbounds nuw [8 x i8], ptr @"_ZNSt8__detail9__variant12__gen_vtableINS0_21__deduce_visit_resultImEERZZNK8WasmEdge6Loader10Serializer15serializeModuleERKNS4_3AST6ModuleEENK3$_2clISt7variantIJPKNS7_13CustomSectionEPKNS7_11TypeSectionEPKNS7_13ImportSectionEPKNS7_15FunctionSectionEPKNS7_12TableSectionEPKNS7_13MemorySectionEPKNS7_13GlobalSectionEPKNS7_13ExportSectionEPKNS7_12StartSectionEPKNS7_14ElementSectionEPKNS7_11CodeSectionEPKNS7_11DataSectionEPKNS7_16DataCountSectionEPKNS7_10TagSectionEEES1K_EEDaRT_RT0_EUlS1M_E_JRS1K_EE9_S_vtableE", i64 %i.ar
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !27
  %i.au = call noundef i64 %i.at(ptr noundef nonnull align 1 dereferenceable(1) %15, ptr noundef nonnull align 8 dereferenceable(9) %i.ab), !inline_history !326
  %i.av = load i8, ptr %i.ap, align 8, !tbaa !26
  %i.aw = zext i8 %i.av to i64
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr @"_ZNSt8__detail9__variant12__gen_vtableINS0_21__deduce_visit_resultImEERZZNK8WasmEdge6Loader10Serializer15serializeModuleERKNS4_3AST6ModuleEENK3$_2clISt7variantIJPKNS7_13CustomSectionEPKNS7_11TypeSectionEPKNS7_13ImportSectionEPKNS7_15FunctionSectionEPKNS7_12TableSectionEPKNS7_13MemorySectionEPKNS7_13GlobalSectionEPKNS7_13ExportSectionEPKNS7_12StartSectionEPKNS7_14ElementSectionEPKNS7_11CodeSectionEPKNS7_11DataSectionEPKNS7_16DataCountSectionEPKNS7_10TagSectionEEES1K_EEDaRT_RT0_EUlS1M_E_JRS1K_EE9_S_vtableE", i64 %i.aw
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !27
  %i.az = call noundef i64 %i.ay(ptr noundef nonnull align 1 dereferenceable(1) %15, ptr noundef nonnull align 8 dereferenceable(9) %i.ac), !inline_history !326
  %i.ba = icmp ult i64 %i.au, %i.az
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  br i1 %i.ba, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  store ptr %0, ptr %14, align 8, !tbaa !120
  store ptr %i.ab, ptr %i.k, align 8, !tbaa !333
  %i.bb = load i8, ptr %i.ai, align 8, !tbaa !26
  %i.bc = zext i8 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr @_ZNSt8__detail9__variant12__gen_vtableINS0_20__variant_idx_cookieEOZNSt7variantIJPKN8WasmEdge3AST13CustomSectionEPKNS5_11TypeSectionEPKNS5_13ImportSectionEPKNS5_15FunctionSectionEPKNS5_12TableSectionEPKNS5_13MemorySectionEPKNS5_13GlobalSectionEPKNS5_13ExportSectionEPKNS5_12StartSectionEPKNS5_14ElementSectionEPKNS5_11CodeSectionEPKNS5_11DataSectionEPKNS5_16DataCountSectionEPKNS5_10TagSectionEEE4swapERS1C_EUlOT_T0_E_JS1D_EE9_S_vtableE, i64 %i.bc
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !27
  invoke void %i.be(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(9) %i.ab)
          to label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt7variantIJPKN8WasmEdge3AST13CustomSectionEPKNS4_11TypeSectionEPKNS4_13ImportSectionEPKNS4_15FunctionSectionEPKNS4_12TableSectionEPKNS4_13MemorySectionEPKNS4_13GlobalSectionEPKNS4_13ExportSectionEPKNS4_12StartSectionEPKNS4_14ElementSectionEPKNS4_11CodeSectionEPKNS4_11DataSectionEPKNS4_16DataCountSectionEPKNS4_10TagSectionEEESt6vectorIS1B_SaIS1B_EEEES1G_EvT_T0_.exit.i.i unwind label %bb.f, !inline_history !327

bb.f:                                             ; preds = %bb.e
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #24, !inline_history !328
  unreachable

_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt7variantIJPKN8WasmEdge3AST13CustomSectionEPKNS4_11TypeSectionEPKNS4_13ImportSectionEPKNS4_15FunctionSectionEPKNS4_12TableSectionEPKNS4_13MemorySectionEPKNS4_13GlobalSectionEPKNS4_13ExportSectionEPKNS4_12StartSectionEPKNS4_14ElementSectionEPKNS4_11CodeSectionEPKNS4_11DataSectionEPKNS4_16DataCountSectionEPKNS4_10TagSectionEEESt6vectorIS1B_SaIS1B_EEEES1G_EvT_T0_.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt7variantIJPKN8WasmEdge3AST13CustomSectionEPKNS4_11TypeSectionEPKNS4_13ImportSectionEPKNS4_15FunctionSectionEPKNS4_12TableSectionEPKNS4_13MemorySectionEPKNS4_13GlobalSectionEPKNS4_13ExportSectionEPKNS4_12StartSectionEPKNS4_14ElementSectionEPKNS4_11CodeSectionEPKNS4_11DataSectionEPKNS4_16DataCountSectionEPKNS4_10TagSectionEEESt6vectorIS1B_SaIS1B_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_6Loader10Serializer15serializeModuleERKNS4_6ModuleEE3$_2EEEvT_S1Q_S1Q_S1Q_T0_.exit.i.preheader"

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  %i.bh = load i8, ptr %i.g, align 8, !tbaa !26
  %i.bi = zext i8 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr @"_ZNSt8__detail9__variant12__gen_vtableINS0_21__deduce_visit_resultImEERZZNK8WasmEdge6Loader10Serializer15serializeModuleERKNS4_3AST6ModuleEENK3$_2clISt7variantIJPKNS7_13CustomSectionEPKNS7_11TypeSectionEPKNS7_13ImportSectionEPKNS7_15FunctionSectionEPKNS7_12TableSectionEPKNS7_13MemorySectionEPKNS7_13GlobalSectionEPKNS7_13ExportSectionEPKNS7_12StartSectionEPKNS7_14ElementSectionEPKNS7_11CodeSectionEPKNS7_11DataSectionEPKNS7_16DataCountSectionEPKNS7_10TagSectionEEES1K_EEDaRT_RT0_EUlS1M_E_JRS1K_EE9_S_vtableE", i64 %i.bi
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !27
  %i.bl = call noundef i64 %i.bk(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 8 dereferenceable(9) %i.f), !inline_history !326
  %i.bm = load i8, ptr %i.ap, align 8, !tbaa !26
  %i.bn = zext i8 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr @"_ZNSt8__detail9__variant12__gen_vtableINS0_21__deduce_visit_resultImEERZZNK8WasmEdge6Loader10Serializer15serializeModuleERKNS4_3AST6ModuleEENK3$_2clISt7variantIJPKNS7_13CustomSectionEPKNS7_11TypeSectionEPKNS7_13ImportSectionEPKNS7_15FunctionSectionEPKNS7_12TableSectionEPKNS7_13MemorySectionEPKNS7_13GlobalSectionEPKNS7_13ExportSectionEPKNS7_12StartSectionEPKNS7_14ElementSectionEPKNS7_11CodeSectionEPKNS7_11DataSectionEPKNS7_16DataCountSectionEPKNS7_10TagSectionEEES1K_EEDaRT_RT0_EUlS1M_E_JRS1K_EE9_S_vtableE", i64 %i.bn
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !27
  %i.bq = call noundef i64 %i.bp(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 8 dereferenceable(9) %i.ac), !inline_history !326
  %i.br = icmp ult i64 %i.bl, %i.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  br i1 %i.br, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  store ptr %0, ptr %12, align 8, !tbaa !120
  store ptr %i.ac, ptr %i.j, align 8, !tbaa !333
  %i.bs = load i8, ptr %i.ap, align 8, !tbaa !26
  %i.bt = zext i8 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr @_ZNSt8__detail9__variant12__gen_vtableINS0_20__variant_idx_cookieEOZNSt7variantIJPKN8WasmEdge3AST13CustomSectionEPKNS5_11TypeSectionEPKNS5_13ImportSectionEPKNS5_15FunctionSectionEPKNS5_12TableSectionEPKNS5_13MemorySectionEPKNS5_13GlobalSectionEPKNS5_13ExportSectionEPKNS5_12StartSectionEPKNS5_14ElementSectionEPKNS5_11CodeSectionEPKNS5_11DataSectionEPKNS5_16DataCountSectionEPKNS5_10TagSectionEEE4swapERS1C_EUlOT_T0_E_JS1D_EE9_S_vtableE, i64 %i.bt
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !27
  invoke void %i.bv(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(9) %i.ac)
          to label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt7variantIJPKN8WasmEdge3AST13CustomSectionEPKNS4_11TypeSectionEPKNS4_13ImportSectionEPKNS4_15FunctionSectionEPKNS4_12TableSectionEPKNS4_13MemorySectionEPKNS4_13GlobalSectionEPKNS4_13ExportSectionEPKNS4_12StartSectionEPKNS4_14ElementSectionEPKNS4_11CodeSectionEPKNS4_11DataSectionEPKNS4_16DataCountSectionEPKNS4_10TagSectionEEESt6vectorIS1B_SaIS1B_EEEES1G_EvT_T0_.exit26.i.i unwind label %bb.i, !inline_history !327

bb.i:                                             ; preds = %bb.h
  %i.bw = landingpad { ptr, i32 }
          catch ptr null
  %i.bx = extractvalue { ptr, i32 } %i.bw, 0
  call void @__clang_call_terminate(ptr %i.bx) #24, !inline_history !328
  unreachable

_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt7variantIJPKN8WasmEdge3AST13CustomSectionEPKNS4_11TypeSectionEPKNS4_13ImportSectionEPKNS4_15FunctionSectionEPKNS4_12TableSectionEPKNS4_13MemorySectionEPKNS4_13GlobalSectionEPKNS4_13ExportSectionEPKNS4_12StartSectionEPKNS4_14ElementSectionEPKNS4_11CodeSectionEPKNS4_11DataSectionEPKNS4_16DataCountSectionEPKNS4_10TagSectionEEESt6vectorIS1B_SaIS1B_EEEES1G_EvT_T0_.exit26.i.i: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt7variantIJPKN8WasmEdge3AST13CustomSectionEPKNS4_11TypeSectionEPKNS4_13ImportSectionEPKNS4_15FunctionSectionEPKNS4_12TableSectionEPKNS4_13MemorySectionEPKNS4_13GlobalSectionEPKNS4_13ExportSectionEPKNS4_12StartSectionEPKNS4_14ElementSectionEPKNS4_11CodeSectionEPKNS4_11DataSectionEPKNS4_16DataCountSectionEPKNS4_10TagSectionEEESt6vectorIS1B_SaIS1B_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_6Loader10Serializer15serializeModuleERKNS4_6ModuleEE3$_2EEEvT_S1Q_S1Q_S1Q_T0_.exit.i.preheader"

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  store ptr %0, ptr %11, align 8, !tbaa !120
  store ptr %i.f, ptr %i.i, align 8, !tbaa !333
  %i.by = load i8, ptr %i.g, align 8, !tbaa !26
  %i.bz = zext i8 %i.by to i64
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr @_ZNSt8__detail9__variant12__gen_vtableINS0_20__variant_idx_cookieEOZNSt7variantIJPKN8WasmEdge3AST13CustomSectionEPKNS5_11TypeSectionEPKNS5_13ImportSectionEPKNS5_15FunctionSectionEPKNS5_12TableSectionEPKNS5_13MemorySectionEPKNS5_13GlobalSectionEPKNS5_13ExportSectionEPKNS5_12StartSectionEPKNS5_14ElementSectionEPKNS5_11CodeSectionEPKNS5_11DataSectionEPKNS5_16DataCountSectionEPKNS5_10TagSectionEEE4swapERS1C_EUlOT_T0_E_JS1D_EE9_S_vtableE, i64 %i.bz
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !27
  invoke void %i.cb(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(9) %i.f)
          to label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt7variantIJPKN8WasmEdge3AST13CustomSectionEPKNS4_11TypeSectionEPKNS4_13ImportSectionEPKNS4_15FunctionSectionEPKNS4_12TableSectionEPKNS4_13MemorySectionEPKNS4_13GlobalSectionEPKNS4_13ExportSectionEPKNS4_12StartSectionEPKNS4_14ElementSectionEPKNS4_11CodeSectionEPKNS4_11DataSectionEPKNS4_16DataCountSectionEPKNS4_10TagSectionEEESt6vectorIS1B_SaIS1B_EEEES1G_EvT_T0_.exit27.i.i unwind label %bb.k, !inline_history !327

bb.k:                                             ; preds = %bb.j
  %i.cc = landingpad { ptr, i32 }
          catch ptr null
  %i.cd = extractvalue { ptr, i32 } %i.cc, 0
  call void @__clang_call_terminate(ptr %i.cd) #24, !inline_history !328
  unreachable

_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt7variantIJPKN8WasmEdge3AST13CustomSectionEPKNS4_11TypeSectionEPKNS4_13ImportSectionEPKNS4_15FunctionSectionEPKNS4_12TableSectionEPKNS4_13MemorySectionEPKNS4_13GlobalSectionEPKNS4_13ExportSectionEPKNS4_12StartSectionEPKNS4_14ElementSectionEPKNS4_11CodeSectionEPKNS4_11DataSectionEPKNS4_16DataCountSectionEPKNS4_10TagSectionEEESt6vectorIS1B_SaIS1B_EEEES1G_EvT_T0_.exit27.i.i: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt7variantIJPKN8WasmEdge3AST13CustomSectionEPKNS4_11TypeSectionEPKNS4_13ImportSectionEPKNS4_15FunctionSectionEPKNS4_12TableSectionEPKNS4_13MemorySectionEPKNS4_13GlobalSectionEPKNS4_13ExportSectionEPKNS4_12StartSectionEPKNS4_14ElementSectionEPKNS4_11CodeSectionEPKNS4_11DataSectionEPKNS4_16DataCountSectionEPKNS4_10TagSectionEEESt6vectorIS1B_SaIS1B_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_6Loader10Serializer15serializeModuleERKNS4_6ModuleEE3$_2EEEvT_S1Q_S1Q_S1Q_T0_.exit.i.preheader"

bb.l:                                             ; preds = %.lr.ph109
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  %i.ce = load i8, ptr %i.g, align 8, !tbaa !26
  %i.cf = zext i8 %i.ce to i64
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr @"_ZNSt8__detail9__variant12__gen_vtableINS0_21__deduce_visit_resultImEERZZNK8WasmEdge6Loader10Serializer15serializeModuleERKNS4_3AST6ModuleEENK3$_2clISt7variantIJPKNS7_13CustomSectionEPKNS7_11TypeSectionEPKNS7_13ImportSectionEPKNS7_15FunctionSectionEPKNS7_12TableSectionEPKNS7_13MemorySectionEPKNS7_13GlobalSectionEPKNS7_13ExportSectionEPKNS7_12StartSectionEPKNS7_14ElementSectionEPKNS7_11CodeSectionEPKNS7_11DataSectionEPKNS7_16DataCountSectionEPKNS7_10TagSectionEEES1K_EEDaRT_RT0_EUlS1M_E_JRS1K_EE9_S_vtableE", i64 %i.cf
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !27
  %i.ci = call noundef i64 %i.ch(ptr noundef nonnull align 1 dereferenceable(1) %10, ptr noundef nonnull align 8 dereferenceable(9) %i.f), !inline_history !326
  %i.cj = load i8, ptr %i.ap, align 8, !tbaa !26
  %i.ck = zext i8 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr @"_ZNSt8__detail9__variant12__gen_vtableINS0_21__deduce_visit_resultImEERZZNK8WasmEdge6Loader10Serializer15serializeModuleERKNS4_3AST6ModuleEENK3$_2clISt7variantIJPKNS7_13CustomSectionEPKNS7_11TypeSectionEPKNS7_13ImportSectionEPKNS7_15FunctionSectionEPKNS7_12TableSectionEPKNS7_13MemorySectionEPKNS7_13GlobalSectionEPKNS7_13ExportSectionEPKNS7_12StartSectionEPKNS7_14ElementSectionEPKNS7_11CodeSectionEPKNS7_11DataSectionEPKNS7_16DataCountSectionEPKNS7_10TagSectionEEES1K_EEDaRT_RT0_EUlS1M_E_JRS1K_EE9_S_vtableE", i64 %i.ck
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !27
  %i.cn = call noundef i64 %i.cm(ptr noundef nonnull align 1 dereferenceable(1) %10, ptr noundef nonnull align 8 dereferenceable(9) %i.ac), !inline_history !326
  %i.co = icmp ult i64 %i.ci, %i.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br i1 %i.co, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  store ptr %0, ptr %9, align 8, !tbaa !120
  store ptr %i.f, ptr %i.h, align 8, !tbaa !333
  %i.cp = load i8, ptr %i.g, align 8, !tbaa !26
  %i.cq = zext i8 %i.cp to i64
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr @_ZNSt8__detail9__variant12__gen_vtableINS0_20__variant_idx_cookieEOZNSt7variantIJPKN8WasmEdge3AST13CustomSectionEPKNS5_11TypeSectionEPKNS5_13ImportSectionEPKNS5_15FunctionSectionEPKNS5_12TableSectionEPKNS5_13MemorySectionEPKNS5_13GlobalSectionEPKNS5_13ExportSectionEPKNS5_12StartSectionEPKNS5_14ElementSectionEPKNS5_11CodeSectionEPKNS5_11DataSectionEPKNS5_16DataCountSectionEPKNS5_10TagSectionEEE4swapERS1C_EUlOT_T0_E_JS1D_EE9_S_vtableE, i64 %i.cq
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !27
  invoke void %i.cs(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(9) %i.f)
          to label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt7variantIJPKN8WasmEdge3AST13CustomSectionEPKNS4_11TypeSectionEPKNS4_13ImportSectionEPKNS4_15FunctionSectionEPKNS4_12TableSectionEPKNS4_13MemorySectionEPKNS4_13GlobalSectionEPKNS4_13ExportSectionEPKNS4_12StartSectionEPKNS4_14ElementSectionEPKNS4_11CodeSectionEPKNS4_11DataSectionEPKNS4_16DataCountSectionEPKNS4_10TagSectionEEESt6vectorIS1B_SaIS1B_EEEES1G_EvT_T0_.exit28.i.i unwind label %bb.n, !inline_history !327

bb.n:                                             ; preds = %bb.m
  %i.ct = landingpad { ptr, i32 }
          catch ptr null
  %i.cu = extractvalue { ptr, i32 } %i.ct, 0
  call void @__clang_call_terminate(ptr %i.cu) #24, !inline_history !328
  unreachable

_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt7variantIJPKN8WasmEdge3AST13CustomSectionEPKNS4_11TypeSectionEPKNS4_13ImportSectionEPKNS4_15FunctionSectionEPKNS4_12TableSectionEPKNS4_13MemorySectionEPKNS4_13GlobalSectionEPKNS4_13ExportSectionEPKNS4_12StartSectionEPKNS4_14ElementSectionEPKNS4_11CodeSectionEPKNS4_11DataSectionEPKNS4_16DataCountSectionEPKNS4_10TagSectionEEESt6vectorIS1B_SaIS1B_EEEES1G_EvT_T0_.exit28.i.i: ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt7variantIJPKN8WasmEdge3AST13CustomSectionEPKNS4_11TypeSectionEPKNS4_13ImportSectionEPKNS4_15FunctionSectionEPKNS4_12TableSectionEPKNS4_13MemorySectionEPKNS4_13GlobalSectionEPKNS4_13ExportSectionEPKNS4_12StartSectionEPKNS4_14ElementSectionEPKNS4_11CodeSectionEPKNS4_11DataSectionEPKNS4_16DataCountSectionEPKNS4_10TagSectionEEESt6vectorIS1B_SaIS1B_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_6Loader10Serializer15serializeModuleERKNS4_6ModuleEE3$_2EEEvT_S1Q_S1Q_S1Q_T0_.exit.i.preheader"

bb.o:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.cv = load i8, ptr %i.ai, align 8, !tbaa !26
  %i.cw = zext i8 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr @"_ZNSt8__detail9__variant12__gen_vtableINS0_21__deduce_visit_resultImEERZZNK8WasmEdge6Loader10Serializer15serializeModuleERKNS4_3AST6ModuleEENK3$_2clISt7variantIJPKNS7_13CustomSectionEPKNS7_11TypeSectionEPKNS7_13ImportSectionEPKNS7_15FunctionSectionEPKNS7_12TableSectionEPKNS7_13MemorySectionEPKNS7_13GlobalSectionEPKNS7_13ExportSectionEPKNS7_12StartSectionEPKNS7_14ElementSectionEPKNS7_11CodeSectionEPKNS7_11DataSectionEPKNS7_16DataCountSectionEPKNS7_10TagSectionEEES1K_EEDaRT_RT0_EUlS1M_E_JRS1K_EE9_S_vtableE", i64 %i.cw
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !27
  %i.cz = call noundef i64 %i.cy(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(9) %i.ab), !inline_history !326
  %i.da = load i8, ptr %i.ap, align 8, !tbaa !26
  %i.db = zext i8 %i.da to i64
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr @"_ZNSt8__detail9__variant12__gen_vtableINS0_21__deduce_visit_resultImEERZZNK8WasmEdge6Loader10Serializer15serializeModuleERKNS4_3AST6ModuleEENK3$_2clISt7variantIJPKNS7_13CustomSectionEPKNS7_11TypeSectionEPKNS7_13ImportSectionEPKNS7_15FunctionSectionEPKNS7_12TableSectionEPKNS7_13MemorySectionEPKNS7_13GlobalSectionEPKNS7_13ExportSectionEPKNS7_12StartSectionEPKNS7_14ElementSectionEPKNS7_11CodeSectionEPKNS7_11DataSectionEPKNS7_16DataCountSectionEPKNS7_10TagSectionEEES1K_EEDaRT_RT0_EUlS1M_E_JRS1K_EE9_S_vtableE", i64 %i.db
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !27
  %i.de = call noundef i64 %i.dd(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(9) %i.ac), !inline_history !326
  %i.df = icmp ult i64 %i.cz, %i.de
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br i1 %i.df, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  store ptr %0, ptr %7, align 8, !tbaa !120
  store ptr %i.ac, ptr %18, align 8, !tbaa !333
  %i.dg = load i8, ptr %i.ap, align 8, !tbaa !26
  %i.dh = zext i8 %i.dg to i64
  %i.di = getelementptr inbounds nuw [8 x i8], ptr @_ZNSt8__detail9__variant12__gen_vtableINS0_20__variant_idx_cookieEOZNSt7variantIJPKN8WasmEdge3AST13CustomSectionEPKNS5_11TypeSectionEPKNS5_13ImportSectionEPKNS5_15FunctionSectionEPKNS5_12TableSectionEPKNS5_13MemorySectionEPKNS5_13GlobalSectionEPKNS5_13ExportSectionEPKNS5_12StartSectionEPKNS5_14ElementSectionEPKNS5_11CodeSectionEPKNS5_11DataSectionEPKNS5_16DataCountSectionEPKNS5_10TagSectionEEE4swapERS1C_EUlOT_T0_E_JS1D_EE9_S_vtableE, i64 %i.dh
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !27
  invoke void %i.dj(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(9) %i.ac)
          to label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt7variantIJPKN8WasmEdge3AST13CustomSectionEPKNS4_11TypeSectionEPKNS4_13ImportSectionEPKNS4_15FunctionSectionEPKNS4_12TableSectionEPKNS4_13MemorySectionEPKNS4_13GlobalSectionEPKNS4_13ExportSectionEPKNS4_12StartSectionEPKNS4_14ElementSectionEPKNS4_11CodeSectionEPKNS4_11DataSectionEPKNS4_16DataCountSectionEPKNS4_10TagSectionEEESt6vectorIS1B_SaIS1B_EEEES1G_EvT_T0_.exit29.i.i unwind label %bb.q, !inline_history !327

bb.q:                                             ; preds = %bb.p
  %i.dk = landingpad { ptr, i32 }
          catch ptr null
  %i.dl = extractvalue { ptr, i32 } %i.dk, 0
  call void @__clang_call_terminate(ptr %i.dl) #24, !inline_history !328
  unreachable

_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt7variantIJPKN8WasmEdge3AST13CustomSectionEPKNS4_11TypeSectionEPKNS4_13ImportSectionEPKNS4_15FunctionSectionEPKNS4_12TableSectionEPKNS4_13MemorySectionEPKNS4_13GlobalSectionEPKNS4_13ExportSectionEPKNS4_12StartSectionEPKNS4_14ElementSectionEPKNS4_11CodeSectionEPKNS4_11DataSectionEPKNS4_16DataCountSectionEPKNS4_10TagSectionEEESt6vectorIS1B_SaIS1B_EEEES1G_EvT_T0_.exit29.i.i: ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt7variantIJPKN8WasmEdge3AST13CustomSectionEPKNS4_11TypeSectionEPKNS4_13ImportSectionEPKNS4_15FunctionSectionEPKNS4_12TableSectionEPKNS4_13MemorySectionEPKNS4_13GlobalSectionEPKNS4_13ExportSectionEPKNS4_12StartSectionEPKNS4_14ElementSectionEPKNS4_11CodeSectionEPKNS4_11DataSectionEPKNS4_16DataCountSectionEPKNS4_10TagSectionEEESt6vectorIS1B_SaIS1B_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_6Loader10Serializer15serializeModuleERKNS4_6ModuleEE3$_2EEEvT_S1Q_S1Q_S1Q_T0_.exit.i.preheader"

bb.r:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store ptr %0, ptr %6, align 8, !tbaa !120
  store ptr %i.ab, ptr %17, align 8, !tbaa !333
  %i.dm = load i8, ptr %i.ai, align 8, !tbaa !26
  %i.dn = zext i8 %i.dm to i64
  %i.do = getelementptr inbounds nuw [8 x i8], ptr @_ZNSt8__detail9__variant12__gen_vtableINS0_20__variant_idx_cookieEOZNSt7variantIJPKN8WasmEdge3AST13CustomSectionEPKNS5_11TypeSectionEPKNS5_13ImportSectionEPKNS5_15FunctionSectionEPKNS5_12TableSectionEPKNS5_13MemorySectionEPKNS5_13GlobalSectionEPKNS5_13ExportSectionEPKNS5_12StartSectionEPKNS5_14ElementSectionEPKNS5_11CodeSectionEPKNS5_11DataSectionEPKNS5_16DataCountSectionEPKNS5_10TagSectionEEE4swapERS1C_EUlOT_T0_E_JS1D_EE9_S_vtableE, i64 %i.dn
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !27
  invoke void %i.dp(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(9) %i.ab)
          to label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt7variantIJPKN8WasmEdge3AST13CustomSectionEPKNS4_11TypeSectionEPKNS4_13ImportSectionEPKNS4_15FunctionSectionEPKNS4_12TableSectionEPKNS4_13MemorySectionEPKNS4_13GlobalSectionEPKNS4_13ExportSectionEPKNS4_12StartSectionEPKNS4_14ElementSectionEPKNS4_11CodeSectionEPKNS4_11DataSectionEPKNS4_16DataCountSectionEPKNS4_10TagSectionEEESt6vectorIS1B_SaIS1B_EEEES1G_EvT_T0_.exit30.i.i unwind label %bb.s, !inline_history !327

bb.s:                                             ; preds = %bb.r
  %i.dq = landingpad { ptr, i32 }
          catch ptr null
  %i.dr = extractvalue { ptr, i32 } %i.dq, 0
  call void @__clang_call_terminate(ptr %i.dr) #24, !inline_history !328
  unreachable

_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt7variantIJPKN8WasmEdge3AST13CustomSectionEPKNS4_11TypeSectionEPKNS4_13ImportSectionEPKNS4_15FunctionSectionEPKNS4_12TableSectionEPKNS4_13MemorySectionEPKNS4_13GlobalSectionEPKNS4_13ExportSectionEPKNS4_12StartSectionEPKNS4_14ElementSectionEPKNS4_11CodeSectionEPKNS4_11DataSectionEPKNS4_16DataCountSectionEPKNS4_10TagSectionEEESt6vectorIS1B_SaIS1B_EEEES1G_EvT_T0_.exit30.i.i: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt7variantIJPKN8WasmEdge3AST13CustomSectionEPKNS4_11TypeSectionEPKNS4_13ImportSectionEPKNS4_15FunctionSectionEPKNS4_12TableSectionEPKNS4_13MemorySectionEPKNS4_13GlobalSectionEPKNS4_13ExportSectionEPKNS4_12StartSectionEPKNS4_14ElementSectionEPKNS4_11CodeSectionEPKNS4_11DataSectionEPKNS4_16DataCountSectionEPKNS4_10TagSectionEEESt6vectorIS1B_SaIS1B_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_6Loader10Serializer15serializeModuleERKNS4_6ModuleEE3$_2EEEvT_S1Q_S1Q_S1Q_T0_.exit.i.preheader"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt7variantIJPKN8WasmEdge3AST13CustomSectionEPKNS4_11TypeSectionEPKNS4_13ImportSectionEPKNS4_15FunctionSectionEPKNS4_12TableSectionEPKNS4_13MemorySectionEPKNS4_13GlobalSectionEPKNS4_13ExportSectionEPKNS4_12StartSectionEPKNS4_14ElementSectionEPKNS4_11CodeSectionEPKNS4_11DataSectionEPKNS4_16DataCountSectionEPKNS4_10TagSectionEEESt6vectorIS1B_SaIS1B_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_6Loader10Serializer15serializeModuleERKNS4_6ModuleEE3$_2EEEvT_S1Q_S1Q_S1Q_T0_.exit.i.preheader": ; preds = %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt7variantIJPKN8WasmEdge3AST13CustomSectionEPKNS4_11TypeSectionEPKNS4_13ImportSectionEPKNS4_15FunctionSectionEPKNS4_12TableSectionEPKNS4_13MemorySectionEPKNS4_13GlobalSectionEPKNS4_13ExportSectionEPKNS4_12StartSectionEPKNS4_14ElementSectionEPKNS4_11CodeSectionEPKNS4_11DataSectionEPKNS4_16DataCountSectionEPKNS4_10TagSectionEEESt6vectorIS1B_SaIS1B_EEEES1G_EvT_T0_.exit30.i.i, %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt7variantIJPKN8WasmEdge3AST13CustomSectionEPKNS4_11TypeSectionEPKNS4_13ImportSectionEPKNS4_15FunctionSectionEPKNS4_12TableSectionEPKNS4_13MemorySectionEPKNS4_13GlobalSectionEPKNS4_13ExportSectionEPKNS4_12StartSectionEPKNS4_14ElementSectionEPKNS4_11CodeSectionEPKNS4_11DataSectionEPKNS4_16DataCountSectionEPKNS4_10TagSectionEEESt6vectorIS1B_SaIS1B_EEEES1G_EvT_T0_.exit29.i.i, %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt7variantIJPKN8WasmEdge3AST13CustomSectionEPKNS4_11TypeSectionEPKNS4_13ImportSectionEPKNS4_15FunctionSectionEPKNS4_12TableSectionEPKNS4_13MemorySectionEPKNS4_13GlobalSectionEPKNS4_13ExportSectionEPKNS4_12StartSectionEPKNS4_14ElementSectionEPKNS4_11CodeSectionEPKNS4_11DataSectionEPKNS4_16DataCountSectionEPKNS4_10TagSectionEEESt6vectorIS1B_SaIS1B_EEEES1G_EvT_T0_.exit28.i.i, %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt7variantIJPKN8WasmEdge3AST13CustomSectionEPKNS4_11TypeSectionEPKNS4_13ImportSectionEPKNS4_15FunctionSectionEPKNS4_12TableSectionEPKNS4_13MemorySectionEPKNS4_13GlobalSectionEPKNS4_13ExportSectionEPKNS4_12StartSectionEPKNS4_14ElementSectionEPKNS4_11CodeSectionEPKNS4_11DataSectionEPKNS4_16DataCountSectionEPKNS4_10TagSectionEEESt6vectorIS1B_SaIS1B_EEEES1G_EvT_T0_.exit27.i.i, %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt7variantIJPKN8WasmEdge3AST13CustomSectionEPKNS4_11TypeSectionEPKNS4_13ImportSectionEPKNS4_15FunctionSectionEPKNS4_12TableSectionEPKNS4_13MemorySectionEPKNS4_13GlobalSectionEPKNS4_13ExportSectionEPKNS4_12StartSectionEPKNS4_14ElementSectionEPKNS4_11CodeSectionEPKNS4_11DataSectionEPKNS4_16DataCountSectionEPKNS4_10TagSectionEEESt6vectorIS1B_SaIS1B_EEEES1G_EvT_T0_.exit26.i.i, %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt7variantIJPKN8WasmEdge3AST13CustomSectionEPKNS4_11TypeSectionEPKNS4_13ImportSectionEPKNS4_15FunctionSectionEPKNS4_12TableSectionEPKNS4_13MemorySectionEPKNS4_13GlobalSectionEPKNS4_13ExportSectionEPKNS4_12StartSectionEPKNS4_14ElementSectionEPKNS4_11CodeSectionEPKNS4_11DataSectionEPKNS4_16DataCountSectionEPKNS4_10TagSectionEEESt6vectorIS1B_SaIS1B_EEEES1G_EvT_T0_.exit.i.i
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt7variantIJPKN8WasmEdge3AST13CustomSectionEPKNS4_11TypeSectionEPKNS4_13ImportSectionEPKNS4_15FunctionSectionEPKNS4_12TableSectionEPKNS4_13MemorySectionEPKNS4_13GlobalSectionEPKNS4_13ExportSectionEPKNS4_12StartSectionEPKNS4_14ElementSectionEPKNS4_11CodeSectionEPKNS4_11DataSectionEPKNS4_16DataCountSectionEPKNS4_10TagSectionEEESt6vectorIS1B_SaIS1B_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_6Loader10Serializer15serializeModuleERKNS4_6ModuleEE3$_2EEEvT_S1Q_S1Q_S1Q_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt7variantIJPKN8WasmEdge3AST13CustomSectionEPKNS4_11TypeSectionEPKNS4_13ImportSectionEPKNS4_15FunctionSectionEPKNS4_12TableSectionEPKNS4_13MemorySectionEPKNS4_13GlobalSectionEPKNS4_13ExportSectionEPKNS4_12StartSectionEPKNS4_14ElementSectionEPKNS4_11CodeSectionEPKNS4_11DataSectionEPKNS4_16DataCountSectionEPKNS4_10TagSectionEEESt6vectorIS1B_SaIS1B_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_6Loader10Serializer15serializeModuleERKNS4_6ModuleEE3$_2EEEvT_S1Q_S1Q_S1Q_T0_.exit.i": ; preds = %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt7variantIJPKN8WasmEdge3AST13CustomSectionEPKNS4_11TypeSectionEPKNS4_13ImportSectionEPKNS4_15FunctionSectionEPKNS4_12TableSectionEPKNS4_13MemorySectionEPKNS4_13GlobalSectionEPKNS4_13ExportSectionEPKNS4_12StartSectionEPKNS4_14ElementSectionEPKNS4_11CodeSectionEPKNS4_11DataSectionEPKNS4_16DataCountSectionEPKNS4_10TagSectionEEESt6vectorIS1B_SaIS1B_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_6Loader10Serializer15serializeModuleERKNS4_6ModuleEE3$_2EEEvT_S1Q_S1Q_S1Q_T0_.exit.i.preheader", %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt7variantIJPKN8WasmEdge3AST13CustomSectionEPKNS4_11TypeSectionEPKNS4_13ImportSectionEPKNS4_15FunctionSectionEPKNS4_12TableSectionEPKNS4_13MemorySectionEPKNS4_13GlobalSectionEPKNS4_13ExportSectionEPKNS4_12StartSectionEPKNS4_14ElementSectionEPKNS4_11CodeSectionEPKNS4_11DataSectionEPKNS4_16DataCountSectionEPKNS4_10TagSectionEEESt6vectorIS1B_SaIS1B_EEEES1G_EvT_T0_.exit.i13.i
  %.sroa.010.0.i.i = phi ptr [ %i.ee, %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt7variantIJPKN8WasmEdge3AST13CustomSectionEPKNS4_11TypeSectionEPKNS4_13ImportSectionEPKNS4_15FunctionSectionEPKNS4_12TableSectionEPKNS4_13MemorySectionEPKNS4_13GlobalSectionEPKNS4_13ExportSectionEPKNS4_12StartSectionEPKNS4_14ElementSectionEPKNS4_11CodeSectionEPKNS4_11DataSectionEPKNS4_16DataCountSectionEPKNS4_10TagSectionEEESt6vectorIS1B_SaIS1B_EEEES1G_EvT_T0_.exit.i13.i ], [ %i.f, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt7variantIJPKN8WasmEdge3AST13CustomSectionEPKNS4_11TypeSectionEPKNS4_13ImportSectionEPKNS4_15FunctionSectionEPKNS4_12TableSectionEPKNS4_13MemorySectionEPKNS4_13GlobalSectionEPKNS4_13ExportSectionEPKNS4_12StartSectionEPKNS4_14ElementSectionEPKNS4_11CodeSectionEPKNS4_11DataSectionEPKNS4_16DataCountSectionEPKNS4_10TagSectionEEESt6vectorIS1B_SaIS1B_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_6Loader10Serializer15serializeModuleERKNS4_6ModuleEE3$_2EEEvT_S1Q_S1Q_S1Q_T0_.exit.i.preheader" ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt7variantIJPKN8WasmEdge3AST13CustomSectionEPKNS4_11TypeSectionEPKNS4_13ImportSectionEPKNS4_15FunctionSectionEPKNS4_12TableSectionEPKNS4_13MemorySectionEPKNS4_13GlobalSectionEPKNS4_13ExportSectionEPKNS4_12StartSectionEPKNS4_14ElementSectionEPKNS4_11CodeSectionEPKNS4_11DataSectionEPKNS4_16DataCountSectionEPKNS4_10TagSectionEEESt6vectorIS1B_SaIS1B_EEEES1G_EvT_T0_.exit.i13.i ], [ %storemerge46108, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt7variantIJPKN8WasmEdge3AST13CustomSectionEPKNS4_11TypeSectionEPKNS4_13ImportSectionEPKNS4_15FunctionSectionEPKNS4_12TableSectionEPKNS4_13MemorySectionEPKNS4_13GlobalSectionEPKNS4_13ExportSectionEPKNS4_12StartSectionEPKNS4_14ElementSectionEPKNS4_11CodeSectionEPKNS4_11DataSectionEPKNS4_16DataCountSectionEPKNS4_10TagSectionEEESt6vectorIS1B_SaIS1B_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_6Loader10Serializer15serializeModuleERKNS4_6ModuleEE3$_2EEEvT_S1Q_S1Q_S1Q_T0_.exit.i.preheader" ]
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt7variantIJPKN8WasmEdge3AST13CustomSectionEPKNS4_11TypeSectionEPKNS4_13ImportSectionEPKNS4_15FunctionSectionEPKNS4_12TableSectionEPKNS4_13MemorySectionEPKNS4_13GlobalSectionEPKNS4_13ExportSectionEPKNS4_12StartSectionEPKNS4_14ElementSectionEPKNS4_11CodeSectionEPKNS4_11DataSectionEPKNS4_16DataCountSectionEPKNS4_10TagSectionEEESt6vectorIS1B_SaIS1B_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_6Loader10Serializer15serializeModuleERKNS4_6ModuleEE3$_2EEEvT_S1Q_S1Q_S1Q_T0_.exit.i"
  %.sroa.010.1.i.i = phi ptr [ %.sroa.010.0.i.i, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt7variantIJPKN8WasmEdge3AST13CustomSectionEPKNS4_11TypeSectionEPKNS4_13ImportSectionEPKNS4_15FunctionSectionEPKNS4_12TableSectionEPKNS4_13MemorySectionEPKNS4_13GlobalSectionEPKNS4_13ExportSectionEPKNS4_12StartSectionEPKNS4_14ElementSectionEPKNS4_11CodeSectionEPKNS4_11DataSectionEPKNS4_16DataCountSectionEPKNS4_10TagSectionEEESt6vectorIS1B_SaIS1B_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_6Loader10Serializer15serializeModuleERKNS4_6ModuleEE3$_2EEEvT_S1Q_S1Q_S1Q_T0_.exit.i" ], [ %i.ee, %bb.t ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 8
  %i.dt = load i8, ptr %i.ds, align 8, !tbaa !26
  %i.du = zext i8 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr @"_ZNSt8__detail9__variant12__gen_vtableINS0_21__deduce_visit_resultImEERZZNK8WasmEdge6Loader10Serializer15serializeModuleERKNS4_3AST6ModuleEENK3$_2clISt7variantIJPKNS7_13CustomSectionEPKNS7_11TypeSectionEPKNS7_13ImportSectionEPKNS7_15FunctionSectionEPKNS7_12TableSectionEPKNS7_13MemorySectionEPKNS7_13GlobalSectionEPKNS7_13ExportSectionEPKNS7_12StartSectionEPKNS7_14ElementSectionEPKNS7_11CodeSectionEPKNS7_11DataSectionEPKNS7_16DataCountSectionEPKNS7_10TagSectionEEES1K_EEDaRT_RT0_EUlS1M_E_JRS1K_EE9_S_vtableE", i64 %i.du
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !27
  %i.dx = call noundef i64 %i.dw(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(9) %.sroa.010.1.i.i), !inline_history !329
  %i.dy = load i8, ptr %i.l, align 8, !tbaa !26
  %i.dz = zext i8 %i.dy to i64
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr @"_ZNSt8__detail9__variant12__gen_vtableINS0_21__deduce_visit_resultImEERZZNK8WasmEdge6Loader10Serializer15serializeModuleERKNS4_3AST6ModuleEENK3$_2clISt7variantIJPKNS7_13CustomSectionEPKNS7_11TypeSectionEPKNS7_13ImportSectionEPKNS7_15FunctionSectionEPKNS7_12TableSectionEPKNS7_13MemorySectionEPKNS7_13GlobalSectionEPKNS7_13ExportSectionEPKNS7_12StartSectionEPKNS7_14ElementSectionEPKNS7_11CodeSectionEPKNS7_11DataSectionEPKNS7_16DataCountSectionEPKNS7_10TagSectionEEES1K_EEDaRT_RT0_EUlS1M_E_JRS1K_EE9_S_vtableE", i64 %i.dz
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !27
  %i.ec = call noundef i64 %i.eb(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(9) %0), !inline_history !329
  %i.ed = icmp ult i64 %i.dx, %i.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 16 ; 2 uses
  br i1 %i.ed, label %bb.t, label %.preheader.i.i, !llvm.loop !330

.preheader.i.i:                                   ; preds = %bb.t, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.t ] ; 3 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.ef = load i8, ptr %i.l, align 8, !tbaa !26
  %i.eg = zext i8 %i.ef to i64
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr @"_ZNSt8__detail9__variant12__gen_vtableINS0_21__deduce_visit_resultImEERZZNK8WasmEdge6Loader10Serializer15serializeModuleERKNS4_3AST6ModuleEENK3$_2clISt7variantIJPKNS7_13CustomSectionEPKNS7_11TypeSectionEPKNS7_13ImportSectionEPKNS7_15FunctionSectionEPKNS7_12TableSectionEPKNS7_13MemorySectionEPKNS7_13GlobalSectionEPKNS7_13ExportSectionEPKNS7_12StartSectionEPKNS7_14ElementSectionEPKNS7_11CodeSectionEPKNS7_11DataSectionEPKNS7_16DataCountSectionEPKNS7_10TagSectionEEES1K_EEDaRT_RT0_EUlS1M_E_JRS1K_EE9_S_vtableE", i64 %i.eg
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !27
  %i.ej = call noundef i64 %i.ei(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(9) %0), !inline_history !329
  %i.ek = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8
  %i.el = load i8, ptr %i.ek, align 8, !tbaa !26
  %i.em = zext i8 %i.el to i64
  %i.en = getelementptr inbounds nuw [8 x i8], ptr @"_ZNSt8__detail9__variant12__gen_vtableINS0_21__deduce_visit_resultImEERZZNK8WasmEdge6Loader10Serializer15serializeModuleERKNS4_3AST6ModuleEENK3$_2clISt7variantIJPKNS7_13CustomSectionEPKNS7_11TypeSectionEPKNS7_13ImportSectionEPKNS7_15FunctionSectionEPKNS7_12TableSectionEPKNS7_13MemorySectionEPKNS7_13GlobalSectionEPKNS7_13ExportSectionEPKNS7_12StartSectionEPKNS7_14ElementSectionEPKNS7_11CodeSectionEPKNS7_11DataSectionEPKNS7_16DataCountSectionEPKNS7_10TagSectionEEES1K_EEDaRT_RT0_EUlS1M_E_JRS1K_EE9_S_vtableE", i64 %i.em
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !27
  %i.ep = call noundef i64 %i.eo(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(9) %.sroa.0.1.i.i), !inline_history !329
  %i.eq = icmp ult i64 %i.ej, %i.ep
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br i1 %i.eq, label %.preheader.i.i, label %bb.u, !llvm.loop !331

bb.u:                                             ; preds = %.preheader.i.i
  %i.er = icmp ult ptr %.sroa.010.1.i.i, %.sroa.0.1.i.i
  br i1 %i.er, label %bb.v, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt7variantIJPKN8WasmEdge3AST13CustomSectionEPKNS4_11TypeSectionEPKNS4_13ImportSectionEPKNS4_15FunctionSectionEPKNS4_12TableSectionEPKNS4_13MemorySectionEPKNS4_13GlobalSectionEPKNS4_13ExportSectionEPKNS4_12StartSectionEPKNS4_14ElementSectionEPKNS4_11CodeSectionEPKNS4_11DataSectionEPKNS4_16DataCountSectionEPKNS4_10TagSectionEEESt6vectorIS1B_SaIS1B_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_6Loader10Serializer15serializeModuleERKNS4_6ModuleEE3$_2EEET_S1Q_S1Q_T0_.exit"

bb.v:                                             ; preds = %bb.u
  %i.es = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store ptr %.sroa.010.1.i.i, ptr %3, align 8, !tbaa !120
  store ptr %.sroa.0.1.i.i, ptr %i.m, align 8, !tbaa !333
  %i.et = load i8, ptr %i.es, align 8, !tbaa !26
  %i.eu = zext i8 %i.et to i64
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr @_ZNSt8__detail9__variant12__gen_vtableINS0_20__variant_idx_cookieEOZNSt7variantIJPKN8WasmEdge3AST13CustomSectionEPKNS5_11TypeSectionEPKNS5_13ImportSectionEPKNS5_15FunctionSectionEPKNS5_12TableSectionEPKNS5_13MemorySectionEPKNS5_13GlobalSectionEPKNS5_13ExportSectionEPKNS5_12StartSectionEPKNS5_14ElementSectionEPKNS5_11CodeSectionEPKNS5_11DataSectionEPKNS5_16DataCountSectionEPKNS5_10TagSectionEEE4swapERS1C_EUlOT_T0_E_JS1D_EE9_S_vtableE, i64 %i.eu
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !27
  invoke void %i.ew(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(9) %.sroa.0.1.i.i)
          to label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt7variantIJPKN8WasmEdge3AST13CustomSectionEPKNS4_11TypeSectionEPKNS4_13ImportSectionEPKNS4_15FunctionSectionEPKNS4_12TableSectionEPKNS4_13MemorySectionEPKNS4_13GlobalSectionEPKNS4_13ExportSectionEPKNS4_12StartSectionEPKNS4_14ElementSectionEPKNS4_11CodeSectionEPKNS4_11DataSectionEPKNS4_16DataCountSectionEPKNS4_10TagSectionEEESt6vectorIS1B_SaIS1B_EEEES1G_EvT_T0_.exit.i13.i unwind label %bb.w, !inline_history !327

bb.w:                                             ; preds = %bb.v
  %i.ex = landingpad { ptr, i32 }
          catch ptr null
  %i.ey = extractvalue { ptr, i32 } %i.ex, 0
  call void @__clang_call_terminate(ptr %i.ey) #24, !inline_history !328
  unreachable

_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt7variantIJPKN8WasmEdge3AST13CustomSectionEPKNS4_11TypeSectionEPKNS4_13ImportSectionEPKNS4_15FunctionSectionEPKNS4_12TableSectionEPKNS4_13MemorySectionEPKNS4_13GlobalSectionEPKNS4_13ExportSectionEPKNS4_12StartSectionEPKNS4_14ElementSectionEPKNS4_11CodeSectionEPKNS4_11DataSectionEPKNS4_16DataCountSectionEPKNS4_10TagSectionEEESt6vectorIS1B_SaIS1B_EEEES1G_EvT_T0_.exit.i13.i: ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt7variantIJPKN8WasmEdge3AST13CustomSectionEPKNS4_11TypeSectionEPKNS4_13ImportSectionEPKNS4_15FunctionSectionEPKNS4_12TableSectionEPKNS4_13MemorySectionEPKNS4_13GlobalSectionEPKNS4_13ExportSectionEPKNS4_12StartSectionEPKNS4_14ElementSectionEPKNS4_11CodeSectionEPKNS4_11DataSectionEPKNS4_16DataCountSectionEPKNS4_10TagSectionEEESt6vectorIS1B_SaIS1B_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_6Loader10Serializer15serializeModuleERKNS4_6ModuleEE3$_2EEEvT_S1Q_S1Q_S1Q_T0_.exit.i", !llvm.loop !332

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt7variantIJPKN8WasmEdge3AST13CustomSectionEPKNS4_11TypeSectionEPKNS4_13ImportSectionEPKNS4_15FunctionSectionEPKNS4_12TableSectionEPKNS4_13MemorySectionEPKNS4_13GlobalSectionEPKNS4_13ExportSectionEPKNS4_12StartSectionEPKNS4_14ElementSectionEPKNS4_11CodeSectionEPKNS4_11DataSectionEPKNS4_16DataCountSectionEPKNS4_10TagSectionEEESt6vectorIS1B_SaIS1B_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_6Loader10Serializer15serializeModuleERKNS4_6ModuleEE3$_2EEET_S1Q_S1Q_T0_.exit": ; preds = %bb.u
  call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt7variantIJPKN8WasmEdge3AST13CustomSectionEPKNS4_11TypeSectionEPKNS4_13ImportSectionEPKNS4_15FunctionSectionEPKNS4_12TableSectionEPKNS4_13MemorySectionEPKNS4_13GlobalSectionEPKNS4_13ExportSectionEPKNS4_12StartSectionEPKNS4_14ElementSectionEPKNS4_11CodeSectionEPKNS4_11DataSectionEPKNS4_16DataCountSectionEPKNS4_10TagSectionEEESt6vectorIS1B_SaIS1B_EEEElNS0_5__ops15_Iter_comp_iterIZNKS3_6Loader10Serializer15serializeModuleERKNS4_6ModuleEE3$_2EEEvT_S1Q_T0_T1_"(ptr nonnull %.sroa.010.1.i.i, ptr %storemerge46108, i64 noundef %i.z)
  %i.ez = ptrtoint ptr %.sroa.010.1.i.i to i64
  %i.fa = sub i64 %i.ez, %i.a
  %i.fb = ashr exact i64 %i.fa, 4                 ; 3 uses
  %i.fc = icmp sgt i64 %i.fb, 16
  br i1 %i.fc, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt7variantIJPKN8WasmEdge3AST13CustomSectionEPKNS4_11TypeSectionEPKNS4_13ImportSectionEPKNS4_15FunctionSectionEPKNS4_12TableSectionEPKNS4_13MemorySectionEPKNS4_13GlobalSectionEPKNS4_13ExportSectionEPKNS4_12StartSectionEPKNS4_14ElementSectionEPKNS4_11CodeSectionEPKNS4_11DataSectionEPKNS4_16DataCountSectionEPKNS4_10TagSectionEEESt6vectorIS1B_SaIS1B_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_6Loader10Serializer15serializeModuleERKNS4_6ModuleEE3$_2EEEvT_S1Q_S1Q_T0_.exit", !llvm.loop !323

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt7variantIJPKN8WasmEdge3AST13CustomSectionEPKNS4_11TypeSectionEPKNS4_13ImportSectionEPKNS4_15FunctionSectionEPKNS4_12TableSectionEPKNS4_13MemorySectionEPKNS4_13GlobalSectionEPKNS4_13ExportSectionEPKNS4_12StartSectionEPKNS4_14ElementSectionEPKNS4_11CodeSectionEPKNS4_11DataSectionEPKNS4_16DataCountSectionEPKNS4_10TagSectionEEESt6vectorIS1B_SaIS1B_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_6Loader10Serializer15serializeModuleERKNS4_6ModuleEE3$_2EEEvT_S1Q_S1Q_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt7variantIJPKN8WasmEdge3AST13CustomSectionEPKNS4_11TypeSectionEPKNS4_13ImportSectionEPKNS4_15FunctionSectionEPKNS4_12TableSectionEPKNS4_13MemorySectionEPKNS4_13GlobalSectionEPKNS4_13ExportSectionEPKNS4_12StartSectionEPKNS4_14ElementSectionEPKNS4_11CodeSectionEPKNS4_11DataSectionEPKNS4_16DataCountSectionEPKNS4_10TagSectionEEESt6vectorIS1B_SaIS1B_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_6Loader10Serializer15serializeModuleERKNS4_6ModuleEE3$_2EEET_S1Q_S1Q_T0_.exit", %.lr.ph.i9.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt7variantIJPKN8WasmEdge3AST13CustomSectionEPKNS4_11TypeSectionEPKNS4_13ImportSectionEPKNS4_15FunctionSectionEPKNS4_12TableSectionEPKNS4_13MemorySectionEPKNS4_13GlobalSectionEPKNS4_13ExportSectionEPKNS4_12StartSectionEPKNS4_14ElementSectionEPKNS4_11CodeSectionEPKNS4_11DataSectionEPKNS4_16DataCountSectionEPKNS4_10TagSectionEEESt6vectorIS1B_SaIS1B_EEEElS1B_NS0_5__ops15_Iter_comp_iterIZNKS3_6Loader10Serializer15serializeModuleERKNS4_6ModuleEE3$_2EEEvT_T0_S1R_T1_T2_"(ptr %0, i64 noundef %1, i64 noundef %2, ptr %3, i8 %4) unnamed_addr #9 {
bb.a:
  %5 = alloca %class.anon.168, align 1            ; 4 uses
  %6 = alloca %"class.std::variant", align 8      ; 6 uses
  %7 = alloca %class.anon.168, align 1            ; 4 uses
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.037 = phi i64 [ %spec.select, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.d = shl i64 %.037, 1                         ; 2 uses
  %i.e = add i64 %i.d, 2                          ; 2 uses
  %i.f = getelementptr inbounds [16 x i8], ptr %0, i64 %i.e ; 2 uses
  %i.g = or disjoint i64 %i.d, 1                  ; 2 uses
  %i.h = getelementptr inbounds [16 x i8], ptr %0, i64 %i.g ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.j = load i8, ptr %i.i, align 8, !tbaa !26
  %i.k = zext i8 %i.j to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr @"_ZNSt8__detail9__variant12__gen_vtableINS0_21__deduce_visit_resultImEERZZNK8WasmEdge6Loader10Serializer15serializeModuleERKNS4_3AST6ModuleEENK3$_2clISt7variantIJPKNS7_13CustomSectionEPKNS7_11TypeSectionEPKNS7_13ImportSectionEPKNS7_15FunctionSectionEPKNS7_12TableSectionEPKNS7_13MemorySectionEPKNS7_13GlobalSectionEPKNS7_13ExportSectionEPKNS7_12StartSectionEPKNS7_14ElementSectionEPKNS7_11CodeSectionEPKNS7_11DataSectionEPKNS7_16DataCountSectionEPKNS7_10TagSectionEEES1K_EEDaRT_RT0_EUlS1M_E_JRS1K_EE9_S_vtableE", i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !27
  %i.n = call noundef i64 %i.m(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(9) %i.f), !inline_history !334
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.p = load i8, ptr %i.o, align 8, !tbaa !26
  %i.q = zext i8 %i.p to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr @"_ZNSt8__detail9__variant12__gen_vtableINS0_21__deduce_visit_resultImEERZZNK8WasmEdge6Loader10Serializer15serializeModuleERKNS4_3AST6ModuleEENK3$_2clISt7variantIJPKNS7_13CustomSectionEPKNS7_11TypeSectionEPKNS7_13ImportSectionEPKNS7_15FunctionSectionEPKNS7_12TableSectionEPKNS7_13MemorySectionEPKNS7_13GlobalSectionEPKNS7_13ExportSectionEPKNS7_12StartSectionEPKNS7_14ElementSectionEPKNS7_11CodeSectionEPKNS7_11DataSectionEPKNS7_16DataCountSectionEPKNS7_10TagSectionEEES1K_EEDaRT_RT0_EUlS1M_E_JRS1K_EE9_S_vtableE", i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !27
  %i.t = call noundef i64 %i.s(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(9) %i.h), !inline_history !334
  %i.u = icmp ult i64 %i.n, %i.t
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %spec.select = select i1 %i.u, i64 %i.g, i64 %i.e ; 4 uses
  %i.v = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select
  %i.w = getelementptr inbounds [16 x i8], ptr %0, i64 %.037
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.w, ptr noundef nonnull align 8 dereferenceable(9) %i.v, i64 9, i1 false)
  %i.x = icmp slt i64 %spec.select, %i.b
  br i1 %i.x, label %.lr.ph, label %._crit_edge, !llvm.loop !335

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %spec.select, %.lr.ph ] ; 5 uses
  %i.y = and i64 %2, 1
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.b, label %bb.d

bb.b:                                             ; preds = %._crit_edge
  %i.aa = add nsw i64 %2, -2
  %i.ab = ashr exact i64 %i.aa, 1
  %i.ac = icmp eq i64 %.0.lcssa, %i.ab
  br i1 %i.ac, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ad = shl nsw i64 %.0.lcssa, 1
  %i.ae = or disjoint i64 %i.ad, 1                ; 2 uses
  %i.af = getelementptr inbounds [16 x i8], ptr %0, i64 %i.ae
  %i.ag = getelementptr inbounds [16 x i8], ptr %0, i64 %.0.lcssa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ag, ptr noundef nonnull align 8 dereferenceable(9) %i.af, i64 9, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge
  %.1 = phi i64 [ %i.ae, %bb.c ], [ %.0.lcssa, %bb.b ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %3, ptr %6, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i8 %4, ptr %i.ah, align 8
  %i.ai = icmp sgt i64 %.1, %1
  br i1 %i.ai, label %.lr.ph.i, label %"_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt7variantIJPKN8WasmEdge3AST13CustomSectionEPKNS4_11TypeSectionEPKNS4_13ImportSectionEPKNS4_15FunctionSectionEPKNS4_12TableSectionEPKNS4_13MemorySectionEPKNS4_13GlobalSectionEPKNS4_13ExportSectionEPKNS4_12StartSectionEPKNS4_14ElementSectionEPKNS4_11CodeSectionEPKNS4_11DataSectionEPKNS4_16DataCountSectionEPKNS4_10TagSectionEEESt6vectorIS1B_SaIS1B_EEEElS1B_NS0_5__ops14_Iter_comp_valIZNKS3_6Loader10Serializer15serializeModuleERKNS4_6ModuleEE3$_2EEEvT_T0_S1R_T1_RT2_.exit"

.lr.ph.i:                                         ; preds = %bb.d, %bb.e
  %.010.i = phi i64 [ %.0911.i, %bb.e ], [ %.1, %bb.d ] ; 3 uses
  %.0911.in.i = add nsw i64 %.010.i, -1
  %.0911.i = sdiv i64 %.0911.in.i, 2              ; 4 uses
  %i.aj = getelementptr inbounds [16 x i8], ptr %0, i64 %.0911.i ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !26
  %i.am = zext i8 %i.al to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr @"_ZNSt8__detail9__variant12__gen_vtableINS0_21__deduce_visit_resultImEERZZNK8WasmEdge6Loader10Serializer15serializeModuleERKNS4_3AST6ModuleEENK3$_2clISt7variantIJPKNS7_13CustomSectionEPKNS7_11TypeSectionEPKNS7_13ImportSectionEPKNS7_15FunctionSectionEPKNS7_12TableSectionEPKNS7_13MemorySectionEPKNS7_13GlobalSectionEPKNS7_13ExportSectionEPKNS7_12StartSectionEPKNS7_14ElementSectionEPKNS7_11CodeSectionEPKNS7_11DataSectionEPKNS7_16DataCountSectionEPKNS7_10TagSectionEEES1K_EEDaRT_RT0_EUlS1M_E_JRS1K_EE9_S_vtableE", i64 %i.am
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !27
  %i.ap = call noundef i64 %i.ao(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(9) %i.aj), !inline_history !336
  %i.aq = load i8, ptr %i.ah, align 8, !tbaa !26
  %i.ar = zext i8 %i.aq to i64
  %i.as = getelementptr inbounds nuw [8 x i8], ptr @"_ZNSt8__detail9__variant12__gen_vtableINS0_21__deduce_visit_resultImEERZZNK8WasmEdge6Loader10Serializer15serializeModuleERKNS4_3AST6ModuleEENK3$_2clISt7variantIJPKNS7_13CustomSectionEPKNS7_11TypeSectionEPKNS7_13ImportSectionEPKNS7_15FunctionSectionEPKNS7_12TableSectionEPKNS7_13MemorySectionEPKNS7_13GlobalSectionEPKNS7_13ExportSectionEPKNS7_12StartSectionEPKNS7_14ElementSectionEPKNS7_11CodeSectionEPKNS7_11DataSectionEPKNS7_16DataCountSectionEPKNS7_10TagSectionEEES1K_EEDaRT_RT0_EUlS1M_E_JRS1K_EE9_S_vtableE", i64 %i.ar
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !27
  %i.au = call noundef i64 %i.at(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(9) %6), !inline_history !336
  %i.av = icmp ult i64 %i.ap, %i.au
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br i1 %i.av, label %bb.e, label %"_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt7variantIJPKN8WasmEdge3AST13CustomSectionEPKNS4_11TypeSectionEPKNS4_13ImportSectionEPKNS4_15FunctionSectionEPKNS4_12TableSectionEPKNS4_13MemorySectionEPKNS4_13GlobalSectionEPKNS4_13ExportSectionEPKNS4_12StartSectionEPKNS4_14ElementSectionEPKNS4_11CodeSectionEPKNS4_11DataSectionEPKNS4_16DataCountSectionEPKNS4_10TagSectionEEESt6vectorIS1B_SaIS1B_EEEElS1B_NS0_5__ops14_Iter_comp_valIZNKS3_6Loader10Serializer15serializeModuleERKNS4_6ModuleEE3$_2EEEvT_T0_S1R_T1_RT2_.exit"

bb.e:                                             ; preds = %.lr.ph.i
  %i.aw = getelementptr inbounds [16 x i8], ptr %0, i64 %.010.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.aw, ptr noundef nonnull align 8 dereferenceable(9) %i.aj, i64 9, i1 false)
  %i.ax = icmp sgt i64 %.0911.i, %1
  br i1 %i.ax, label %.lr.ph.i, label %"_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt7variantIJPKN8WasmEdge3AST13CustomSectionEPKNS4_11TypeSectionEPKNS4_13ImportSectionEPKNS4_15FunctionSectionEPKNS4_12TableSectionEPKNS4_13MemorySectionEPKNS4_13GlobalSectionEPKNS4_13ExportSectionEPKNS4_12StartSectionEPKNS4_14ElementSectionEPKNS4_11CodeSectionEPKNS4_11DataSectionEPKNS4_16DataCountSectionEPKNS4_10TagSectionEEESt6vectorIS1B_SaIS1B_EEEElS1B_NS0_5__ops14_Iter_comp_valIZNKS3_6Loader10Serializer15serializeModuleERKNS4_6ModuleEE3$_2EEEvT_T0_S1R_T1_RT2_.exit", !llvm.loop !337

"_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt7variantIJPKN8WasmEdge3AST13CustomSectionEPKNS4_11TypeSectionEPKNS4_13ImportSectionEPKNS4_15FunctionSectionEPKNS4_12TableSectionEPKNS4_13MemorySectionEPKNS4_13GlobalSectionEPKNS4_13ExportSectionEPKNS4_12StartSectionEPKNS4_14ElementSectionEPKNS4_11CodeSectionEPKNS4_11DataSectionEPKNS4_16DataCountSectionEPKNS4_10TagSectionEEESt6vectorIS1B_SaIS1B_EEEElS1B_NS0_5__ops14_Iter_comp_valIZNKS3_6Loader10Serializer15serializeModuleERKNS4_6ModuleEE3$_2EEEvT_T0_S1R_T1_RT2_.exit": ; preds = %.lr.ph.i, %bb.e, %bb.d
end_hunk_0
