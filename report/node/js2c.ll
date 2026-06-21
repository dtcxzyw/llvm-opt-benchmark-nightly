inline.NumInlined: 1866
inline.NumDeleted: 631
begin_hunk_0_@_ZSt8__searchIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEENS1_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcES5_EEEENS0_5__ops19_Iter_equal_to_iterEET_SG_SG_T0_SH_T1_:bb.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIcSaIcEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKcS1_EEEEvNS4_IPcS1_EET_SA_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %2, %3
  br i1 %i.a, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEENS1_IPcS6_EEET0_T_SB_SA_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %2 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 16 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 8 uses
  %i.i = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64                 ; 4 uses
  %i.k = sub i64 %i.i, %i.j
  %.not = icmp ult i64 %i.k, %i.d
  br i1 %.not, label %bb.w, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.m = sub i64 %i.j, %i.l                       ; 10 uses
  %i.n = icmp ugt i64 %i.m, %i.d
  br i1 %i.n, label %bb.d, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEElEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %i.o = sub i64 0, %i.d
  %i.p = getelementptr inbounds i8, ptr %i.h, i64 %i.o ; 3 uses
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = icmp sgt i64 %i.d, 1                     ; 2 uses
  br i1 %i.r, label %bb.e, label %bb.f, !prof !66

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %i.p, i64 %i.d, i1 false)
  br label %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.s = icmp eq i64 %i.d, 1
  br i1 %i.s, label %bb.g, label %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.t = load i8, ptr %i.p, align 1
  store i8 %i.t, ptr %i.h, align 1
  br label %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.u = load ptr, ptr %i.g, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.d
  store ptr %i.v, ptr %i.g, align 8
  %i.w = sub i64 %i.q, %i.l                       ; 4 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !66

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit
  %i.y = sub nsw i64 0, %i.w
  %i.z = getelementptr inbounds i8, ptr %i.h, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.z, ptr align 1 %1, i64 %i.w, i1 false)
  br label %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit
  %i.aa = icmp eq i64 %i.w, 1
  br i1 %i.aa, label %bb.j, label %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds i8, ptr %i.h, i64 -1
  %i.ac = load i8, ptr %1, align 1
  store i8 %i.ac, ptr %i.ab, align 1
  br label %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit

_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit:       ; preds = %bb.h, %bb.i, %bb.j
  br i1 %i.r, label %bb.k, label %bb.l, !prof !66

bb.k:                                             ; preds = %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %i.d, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEENS1_IPcS6_EEET0_T_SB_SA_.exit

bb.l:                                             ; preds = %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit
  %i.ad = icmp eq i64 %i.d, 1
  br i1 %i.ad, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEENS1_IPcS6_EEET0_T_SB_SA_.exit

bb.m:                                             ; preds = %bb.l
  %i.ae = load i8, ptr %2, align 1
  store i8 %i.ae, ptr %1, align 1
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEENS1_IPcS6_EEET0_T_SB_SA_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.af = icmp eq i64 %i.m, 1
  %i.ag = getelementptr inbounds i8, ptr %2, i64 %i.m ; 3 uses
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.b, %i.ah                     ; 3 uses
  %i.aj = icmp sgt i64 %i.ai, 1
  br i1 %i.aj, label %bb.n, label %bb.o, !prof !66

bb.n:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEElEvRT_T0_St26random_access_iterator_tag.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.h, ptr align 1 %i.ag, i64 %i.ai, i1 false)
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPccET0_T_SA_S9_RSaIT1_E.exit

bb.o:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.ak = icmp eq i64 %i.ai, 1
  br i1 %i.ak, label %bb.p, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPccET0_T_SA_S9_RSaIT1_E.exit

bb.p:                                             ; preds = %bb.o
  %i.al = load i8, ptr %i.ag, align 1
  store i8 %i.al, ptr %i.h, align 1
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPccET0_T_SA_S9_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPccET0_T_SA_S9_RSaIT1_E.exit: ; preds = %bb.n, %bb.o, %bb.p
  %i.am = sub nuw i64 %i.d, %i.m
  %i.an = load ptr, ptr %i.g, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.am ; 3 uses
  store ptr %i.ao, ptr %i.g, align 8
  %i.ap = icmp sgt i64 %i.m, 1
  br i1 %i.ap, label %bb.q, label %bb.r, !prof !66

bb.q:                                             ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPccET0_T_SA_S9_RSaIT1_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ao, ptr align 1 %1, i64 %i.m, i1 false)
  br label %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit43

bb.r:                                             ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPccET0_T_SA_S9_RSaIT1_E.exit
  br i1 %i.af, label %bb.s, label %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit43

bb.s:                                             ; preds = %bb.r
  %i.aq = load i8, ptr %1, align 1
  store i8 %i.aq, ptr %i.ao, align 1
  br label %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit43

_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit43: ; preds = %bb.q, %bb.r, %bb.s
  %i.ar = load ptr, ptr %i.g, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.m
  store ptr %i.as, ptr %i.g, align 8
  %i.at = icmp sgt i64 %i.m, 1
  br i1 %i.at, label %bb.t, label %bb.u, !prof !66

bb.t:                                             ; preds = %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit43
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %i.m, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEENS1_IPcS6_EEET0_T_SB_SA_.exit

bb.u:                                             ; preds = %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit43
  %i.au = icmp eq i64 %i.m, 1
  br i1 %i.au, label %bb.v, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEENS1_IPcS6_EEET0_T_SB_SA_.exit

bb.v:                                             ; preds = %bb.u
  %i.av = load i8, ptr %2, align 1
  store i8 %i.av, ptr %1, align 1
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEENS1_IPcS6_EEET0_T_SB_SA_.exit

bb.w:                                             ; preds = %bb.b
  %i.aw = load ptr, ptr %0, align 8               ; 5 uses
  %i.ax = ptrtoint ptr %i.aw to i64               ; 3 uses
  %i.ay = sub i64 %i.j, %i.ax                     ; 4 uses
  %i.az = sub i64 9223372036854775807, %i.ay
  %i.ba = icmp ult i64 %i.az, %i.d
  br i1 %i.ba, label %bb.x, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit

bb.x:                                             ; preds = %bb.w
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.73) #29
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit:    ; preds = %bb.w
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.ay, i64 %i.d)
  %i.bb = add i64 %.sroa.speculated.i, %i.ay      ; 2 uses
  %i.bc = icmp ult i64 %i.bb, %i.ay
  %i.bd = tail call i64 @llvm.umin.i64(i64 %i.bb, i64 9223372036854775807)
  %i.be = select i1 %i.bc, i64 9223372036854775807, i64 %i.bd ; 3 uses
  %.not.i = icmp eq i64 %i.be, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit, label %bb.y

bb.y:                                             ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit
  %i.bf = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.be) #28
  br label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit

_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit:  ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit, %bb.y
  %i.bg = phi ptr [ %i.bf, %bb.y ], [ null, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.bh = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bi = sub i64 %i.bh, %i.ax                    ; 4 uses
  %i.bj = icmp sgt i64 %i.bi, 1
  br i1 %i.bj, label %bb.z, label %bb.aa, !prof !66

bb.z:                                             ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bg, ptr align 1 %i.aw, i64 %i.bi, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit

bb.aa:                                            ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit
  %i.bk = icmp eq i64 %i.bi, 1
  br i1 %i.bk, label %bb.ab, label %_ZSt34__uninitialized_move_if_noexcept_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit

bb.ab:                                            ; preds = %bb.aa
  %i.bl = load i8, ptr %i.aw, align 1
  store i8 %i.bl, ptr %i.bg, align 1
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit: ; preds = %bb.z, %bb.aa, %bb.ab
  %i.bm = getelementptr inbounds i8, ptr %i.bg, i64 %i.bi ; 3 uses
  %i.bn = icmp sgt i64 %i.d, 1
  br i1 %i.bn, label %bb.ac, label %bb.ad, !prof !66

bb.ac:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bm, ptr align 1 %2, i64 %i.d, i1 false)
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPccET0_T_SA_S9_RSaIT1_E.exit45

bb.ad:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit
  %i.bo = icmp eq i64 %i.d, 1
  br i1 %i.bo, label %bb.ae, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPccET0_T_SA_S9_RSaIT1_E.exit45

bb.ae:                                            ; preds = %bb.ad
  %i.bp = load i8, ptr %2, align 1
  store i8 %i.bp, ptr %i.bm, align 1
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPccET0_T_SA_S9_RSaIT1_E.exit45

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPccET0_T_SA_S9_RSaIT1_E.exit45: ; preds = %bb.ac, %bb.ad, %bb.ae
  %i.bq = getelementptr inbounds i8, ptr %i.bm, i64 %i.d ; 3 uses
  %i.br = sub i64 %i.j, %i.bh                     ; 4 uses
  %i.bs = icmp sgt i64 %i.br, 1
  br i1 %i.bs, label %bb.af, label %bb.ag, !prof !66

bb.af:                                            ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPccET0_T_SA_S9_RSaIT1_E.exit45
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bq, ptr align 1 %1, i64 %i.br, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit46

bb.ag:                                            ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEPccET0_T_SA_S9_RSaIT1_E.exit45
  %i.bt = icmp eq i64 %i.br, 1
  br i1 %i.bt, label %bb.ah, label %_ZSt34__uninitialized_move_if_noexcept_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit46

bb.ah:                                            ; preds = %bb.ag
  %i.bu = load i8, ptr %1, align 1
  store i8 %i.bu, ptr %i.bq, align 1
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit46

_ZSt34__uninitialized_move_if_noexcept_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit46: ; preds = %bb.af, %bb.ag, %bb.ah
  %i.bv = getelementptr inbounds i8, ptr %i.bq, i64 %i.br
  %.not.i47 = icmp eq ptr %i.aw, null
  br i1 %.not.i47, label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit46
  %i.bw = sub i64 %i.i, %i.ax
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.bw) #30
  br label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit

_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit46, %bb.ai
  store ptr %i.bg, ptr %0, align 8
  store ptr %i.bv, ptr %i.g, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.be
  store ptr %i.bx, ptr %i.e, align 8
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEENS1_IPcS6_EEET0_T_SB_SA_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEENS1_IPcS6_EEET0_T_SB_SA_.exit: ; preds = %bb.v, %bb.u, %bb.t, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIcSaIcEE15_M_range_insertIPKcEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %2, %3
  br i1 %.not, label %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %2 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 16 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 8 uses
  %i.h = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64                 ; 4 uses
  %i.j = sub i64 %i.h, %i.i
  %.not46 = icmp ult i64 %i.j, %i.c
  br i1 %.not46, label %bb.w, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.l = sub i64 %i.i, %i.k                       ; 10 uses
  %i.m = icmp ugt i64 %i.l, %i.c
  br i1 %i.m, label %bb.d, label %_ZSt9__advanceIPKclEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %i.c
  %i.o = getelementptr inbounds i8, ptr %i.g, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %i.c, 1                     ; 2 uses
  br i1 %i.q, label %bb.e, label %bb.f, !prof !66

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 1 %i.o, i64 %i.c, i1 false)
  br label %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %i.c, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i8, ptr %i.o, align 1
  store i8 %i.s, ptr %i.g, align 1
  br label %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.t = load ptr, ptr %i.f, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.c
  store ptr %i.u, ptr %i.f, align 8
  %i.v = sub i64 %i.p, %i.k                       ; 4 uses
  %i.w = icmp sgt i64 %i.v, 1
  br i1 %i.w, label %bb.h, label %bb.i, !prof !66

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit
  %i.x = sub nsw i64 0, %i.v
  %i.y = getelementptr inbounds i8, ptr %i.g, i64 %i.x
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.y, ptr align 1 %1, i64 %i.v, i1 false)
  br label %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit
  %i.z = icmp eq i64 %i.v, 1
  br i1 %i.z, label %bb.j, label %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds i8, ptr %i.g, i64 -1
  %i.ab = load i8, ptr %1, align 1
  store i8 %i.ab, ptr %i.aa, align 1
  br label %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit

_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit:       ; preds = %bb.h, %bb.i, %bb.j
  br i1 %i.q, label %bb.k, label %bb.l, !prof !66

bb.k:                                             ; preds = %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %i.c, i1 false)
  br label %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit

bb.l:                                             ; preds = %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit
  %i.ac = icmp eq i64 %i.c, 1
  br i1 %i.ac, label %bb.m, label %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit

bb.m:                                             ; preds = %bb.l
  %i.ad = load i8, ptr %2, align 1
  store i8 %i.ad, ptr %1, align 1
  br label %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit

_ZSt9__advanceIPKclEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.ae = icmp eq i64 %i.l, 1
  %i.af = getelementptr inbounds i8, ptr %2, i64 %i.l ; 3 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %i.a, %i.ag                     ; 3 uses
  %i.ai = icmp sgt i64 %i.ah, 1
  br i1 %i.ai, label %bb.n, label %bb.o, !prof !66

bb.n:                                             ; preds = %_ZSt9__advanceIPKclEvRT_T0_St26random_access_iterator_tag.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.g, ptr align 1 %i.af, i64 %i.ah, i1 false)
  br label %_ZSt22__uninitialized_copy_aIPKcPccET0_T_S4_S3_RSaIT1_E.exit

bb.o:                                             ; preds = %_ZSt9__advanceIPKclEvRT_T0_St26random_access_iterator_tag.exit
  %i.aj = icmp eq i64 %i.ah, 1
  br i1 %i.aj, label %bb.p, label %_ZSt22__uninitialized_copy_aIPKcPccET0_T_S4_S3_RSaIT1_E.exit

bb.p:                                             ; preds = %bb.o
  %i.ak = load i8, ptr %i.af, align 1
  store i8 %i.ak, ptr %i.g, align 1
  br label %_ZSt22__uninitialized_copy_aIPKcPccET0_T_S4_S3_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIPKcPccET0_T_S4_S3_RSaIT1_E.exit: ; preds = %bb.n, %bb.o, %bb.p
  %i.al = sub nuw i64 %i.c, %i.l
  %i.am = load ptr, ptr %i.f, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.al ; 3 uses
  store ptr %i.an, ptr %i.f, align 8
  %i.ao = icmp sgt i64 %i.l, 1
  br i1 %i.ao, label %bb.q, label %bb.r, !prof !66

bb.q:                                             ; preds = %_ZSt22__uninitialized_copy_aIPKcPccET0_T_S4_S3_RSaIT1_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.an, ptr align 1 %1, i64 %i.l, i1 false)
  br label %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit47

bb.r:                                             ; preds = %_ZSt22__uninitialized_copy_aIPKcPccET0_T_S4_S3_RSaIT1_E.exit
  br i1 %i.ae, label %bb.s, label %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit47

bb.s:                                             ; preds = %bb.r
  %i.ap = load i8, ptr %1, align 1
  store i8 %i.ap, ptr %i.an, align 1
  br label %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit47

_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit47: ; preds = %bb.q, %bb.r, %bb.s
  %i.aq = load ptr, ptr %i.f, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.l
  store ptr %i.ar, ptr %i.f, align 8
  %i.as = icmp sgt i64 %i.l, 1
  br i1 %i.as, label %bb.t, label %bb.u, !prof !66

bb.t:                                             ; preds = %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit47
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %i.l, i1 false)
  br label %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit

bb.u:                                             ; preds = %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit47
  %i.at = icmp eq i64 %i.l, 1
  br i1 %i.at, label %bb.v, label %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit

bb.v:                                             ; preds = %bb.u
  %i.au = load i8, ptr %2, align 1
  store i8 %i.au, ptr %1, align 1
  br label %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit

bb.w:                                             ; preds = %bb.b
  %i.av = load ptr, ptr %0, align 8               ; 5 uses
  %i.aw = ptrtoint ptr %i.av to i64               ; 3 uses
  %i.ax = sub i64 %i.i, %i.aw                     ; 4 uses
  %i.ay = sub i64 9223372036854775807, %i.ax
  %i.az = icmp ult i64 %i.ay, %i.c
  br i1 %i.az, label %bb.x, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit

bb.x:                                             ; preds = %bb.w
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.73) #29
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit:    ; preds = %bb.w
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.ax, i64 %i.c)
  %i.ba = add i64 %.sroa.speculated.i, %i.ax      ; 2 uses
  %i.bb = icmp ult i64 %i.ba, %i.ax
  %i.bc = tail call i64 @llvm.umin.i64(i64 %i.ba, i64 9223372036854775807)
  %i.bd = select i1 %i.bb, i64 9223372036854775807, i64 %i.bc ; 3 uses
  %.not.i = icmp eq i64 %i.bd, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit, label %bb.y

bb.y:                                             ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit
  %i.be = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bd) #28
  br label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit

_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit:  ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit, %bb.y
  %i.bf = phi ptr [ %i.be, %bb.y ], [ null, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.bg = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bh = sub i64 %i.bg, %i.aw                    ; 4 uses
  %i.bi = icmp sgt i64 %i.bh, 1
  br i1 %i.bi, label %bb.z, label %bb.aa, !prof !66

bb.z:                                             ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bf, ptr align 1 %i.av, i64 %i.bh, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit

bb.aa:                                            ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit
  %i.bj = icmp eq i64 %i.bh, 1
  br i1 %i.bj, label %bb.ab, label %_ZSt34__uninitialized_move_if_noexcept_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit

bb.ab:                                            ; preds = %bb.aa
  %i.bk = load i8, ptr %i.av, align 1
  store i8 %i.bk, ptr %i.bf, align 1
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit: ; preds = %bb.z, %bb.aa, %bb.ab
  %i.bl = getelementptr inbounds i8, ptr %i.bf, i64 %i.bh ; 3 uses
  %i.bm = icmp sgt i64 %i.c, 1
  br i1 %i.bm, label %bb.ac, label %bb.ad, !prof !66

bb.ac:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bl, ptr align 1 %2, i64 %i.c, i1 false)
  br label %_ZSt22__uninitialized_copy_aIPKcPccET0_T_S4_S3_RSaIT1_E.exit49

bb.ad:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit
  %i.bn = icmp eq i64 %i.c, 1
  br i1 %i.bn, label %bb.ae, label %_ZSt22__uninitialized_copy_aIPKcPccET0_T_S4_S3_RSaIT1_E.exit49

bb.ae:                                            ; preds = %bb.ad
  %i.bo = load i8, ptr %2, align 1
  store i8 %i.bo, ptr %i.bl, align 1
  br label %_ZSt22__uninitialized_copy_aIPKcPccET0_T_S4_S3_RSaIT1_E.exit49

_ZSt22__uninitialized_copy_aIPKcPccET0_T_S4_S3_RSaIT1_E.exit49: ; preds = %bb.ac, %bb.ad, %bb.ae
  %i.bp = getelementptr inbounds i8, ptr %i.bl, i64 %i.c ; 3 uses
  %i.bq = sub i64 %i.i, %i.bg                     ; 4 uses
  %i.br = icmp sgt i64 %i.bq, 1
  br i1 %i.br, label %bb.af, label %bb.ag, !prof !66

bb.af:                                            ; preds = %_ZSt22__uninitialized_copy_aIPKcPccET0_T_S4_S3_RSaIT1_E.exit49
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bp, ptr align 1 %1, i64 %i.bq, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit50

bb.ag:                                            ; preds = %_ZSt22__uninitialized_copy_aIPKcPccET0_T_S4_S3_RSaIT1_E.exit49
  %i.bs = icmp eq i64 %i.bq, 1
  br i1 %i.bs, label %bb.ah, label %_ZSt34__uninitialized_move_if_noexcept_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit50

bb.ah:                                            ; preds = %bb.ag
  %i.bt = load i8, ptr %1, align 1
  store i8 %i.bt, ptr %i.bp, align 1
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit50

_ZSt34__uninitialized_move_if_noexcept_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit50: ; preds = %bb.af, %bb.ag, %bb.ah
  %i.bu = getelementptr inbounds i8, ptr %i.bp, i64 %i.bq
  %.not.i51 = icmp eq ptr %i.av, null
  br i1 %.not.i51, label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit50
  %i.bv = sub i64 %i.h, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.bv) #30
  br label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit

_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit50, %bb.ai
  store ptr %i.bf, ptr %0, align 8
  store ptr %i.bu, ptr %i.f, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bd
  store ptr %i.bw, ptr %i.d, align 8
  br label %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit

_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit: ; preds = %bb.v, %bb.u, %bb.t, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local ptr @_ZSt8__searchIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEENS1_IPcNSt7__cxx1112basic_stringIcSt11char_traitsIcES5_EEEENS0_5__ops19_Iter_equal_to_iterEET_SH_SH_T0_SI_T1_(ptr %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %1
  %i.b = icmp eq ptr %2, %3
  %or.cond = select i1 %i.a, i1 true, i1 %i.b
  br i1 %or.cond, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEENS0_5__ops17_Iter_equals_iterINS1_IPcNSt7__cxx1112basic_stringIcSt11char_traitsIcES5_EEEEEEET_SI_SI_T0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 2 uses
  %i.d = icmp eq ptr %i.c, %3
  %i.e = ptrtoint ptr %1 to i64                   ; 4 uses
  br i1 %i.d, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.f = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ashr i64 %i.g, 2                         ; 2 uses
  %i.i = icmp sgt i64 %i.h, 0
  br i1 %i.i, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.j = load i8, ptr %2, align 1                 ; 4 uses
  %i.k = and i64 %i.g, -4
  %scevgep.i.i = getelementptr i8, ptr %0, i64 %i.k ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %.lr.ph.i.i
  %.052.i.i = phi i64 [ %i.h, %.lr.ph.i.i ], [ %i.x, %bb.h ] ; 2 uses
  %.sroa.032.051.i.i = phi ptr [ %0, %.lr.ph.i.i ], [ %i.w, %bb.h ] ; 9 uses
  %i.l = load i8, ptr %.sroa.032.051.i.i, align 1
  %i.m = icmp eq i8 %i.l, %i.j
  br i1 %i.m, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEENS0_5__ops17_Iter_equals_iterINS1_IPcNSt7__cxx1112basic_stringIcSt11char_traitsIcES5_EEEEEEET_SI_SI_T0_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i, i64 1
  %i.o = load i8, ptr %i.n, align 1
  %i.p = icmp eq i8 %i.o, %i.j
  br i1 %i.p, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEENS0_5__ops17_Iter_equals_iterINS1_IPcNSt7__cxx1112basic_stringIcSt11char_traitsIcES5_EEEEEEET_SI_SI_T0_.exit.loopexit.split.loop.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i, i64 2
  %i.r = load i8, ptr %i.q, align 1
  %i.s = icmp eq i8 %i.r, %i.j
  br i1 %i.s, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEENS0_5__ops17_Iter_equals_iterINS1_IPcNSt7__cxx1112basic_stringIcSt11char_traitsIcES5_EEEEEEET_SI_SI_T0_.exit.loopexit.split.loop.exit116, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i, i64 3
  %i.u = load i8, ptr %i.t, align 1
  %i.v = icmp eq i8 %i.u, %i.j
  br i1 %i.v, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEENS0_5__ops17_Iter_equals_iterINS1_IPcNSt7__cxx1112basic_stringIcSt11char_traitsIcES5_EEEEEEET_SI_SI_T0_.exit.loopexit.split.loop.exit118, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i, i64 4
  %i.x = add nsw i64 %.052.i.i, -1
  %i.y = icmp sgt i64 %.052.i.i, 1
  br i1 %i.y, label %bb.d, label %._crit_edge.loopexit.i.i, !llvm.loop !81

._crit_edge.loopexit.i.i:                         ; preds = %bb.h
  %.pre59.i.i = ptrtoint ptr %scevgep.i.i to i64
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.c
  %.pre-phi.i.i = phi i64 [ %.pre59.i.i, %._crit_edge.loopexit.i.i ], [ %i.f, %bb.c ]
  %.sroa.032.0.lcssa.i.i = phi ptr [ %scevgep.i.i, %._crit_edge.loopexit.i.i ], [ %0, %bb.c ] ; 5 uses
  %i.z = sub i64 %i.e, %.pre-phi.i.i
  switch i64 %i.z, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEENS0_5__ops17_Iter_equals_iterINS1_IPcNSt7__cxx1112basic_stringIcSt11char_traitsIcES5_EEEEEEET_SI_SI_T0_.exit [
    i64 3, label %bb.i
    i64 2, label %._crit_edge._crit_edge.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i
  ]

._crit_edge._crit_edge57.i.i:                     ; preds = %._crit_edge.i.i
  %.pre58.i.i = load i8, ptr %2, align 1
  br label %bb.m

._crit_edge._crit_edge.i.i:                       ; preds = %._crit_edge.i.i
  %.pre.i.i = load i8, ptr %2, align 1
  br label %bb.k

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.aa = load i8, ptr %.sroa.032.0.lcssa.i.i, align 1
  %i.ab = load i8, ptr %2, align 1                ; 2 uses
  %i.ac = icmp eq i8 %i.aa, %i.ab
  br i1 %i.ac, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEENS0_5__ops17_Iter_equals_iterINS1_IPcNSt7__cxx1112basic_stringIcSt11char_traitsIcES5_EEEEEEET_SI_SI_T0_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i, i64 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge._crit_edge.i.i
  %i.ae = phi i8 [ %i.ab, %bb.j ], [ %.pre.i.i, %._crit_edge._crit_edge.i.i ] ; 2 uses
  %.sroa.032.1.i.i = phi ptr [ %i.ad, %bb.j ], [ %.sroa.032.0.lcssa.i.i, %._crit_edge._crit_edge.i.i ] ; 3 uses
  %i.af = load i8, ptr %.sroa.032.1.i.i, align 1
  %i.ag = icmp eq i8 %i.af, %i.ae
  br i1 %i.ag, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEENS0_5__ops17_Iter_equals_iterINS1_IPcNSt7__cxx1112basic_stringIcSt11char_traitsIcES5_EEEEEEET_SI_SI_T0_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i, i64 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge._crit_edge57.i.i
  %i.ai = phi i8 [ %i.ae, %bb.l ], [ %.pre58.i.i, %._crit_edge._crit_edge57.i.i ]
  %.sroa.032.2.i.i = phi ptr [ %i.ah, %bb.l ], [ %.sroa.032.0.lcssa.i.i, %._crit_edge._crit_edge57.i.i ] ; 2 uses
  %i.aj = load i8, ptr %.sroa.032.2.i.i, align 1
  %i.ak = icmp eq i8 %i.aj, %i.ai
  %spec.select.i.i = select i1 %i.ak, ptr %.sroa.032.2.i.i, ptr %1
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEENS0_5__ops17_Iter_equals_iterINS1_IPcNSt7__cxx1112basic_stringIcSt11char_traitsIcES5_EEEEEEET_SI_SI_T0_.exit

.loopexit:                                        ; preds = %.preheader, %bb.b
  %.sroa.052.0 = phi ptr [ %0, %bb.b ], [ %i.bv, %.preheader ] ; 4 uses
  %i.al = ptrtoint ptr %.sroa.052.0 to i64        ; 2 uses
  %i.am = sub i64 %i.e, %i.al                     ; 2 uses
  %i.an = ashr i64 %i.am, 2                       ; 2 uses
  %i.ao = icmp sgt i64 %i.an, 0
  br i1 %i.ao, label %.lr.ph.i.i27, label %._crit_edge.i.i16

.lr.ph.i.i27:                                     ; preds = %.loopexit
  %i.ap = load i8, ptr %2, align 1                ; 4 uses
  %i.aq = and i64 %i.am, -4
  %scevgep.i.i28 = getelementptr i8, ptr %.sroa.052.0, i64 %i.aq ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.r, %.lr.ph.i.i27
  %.052.i.i29 = phi i64 [ %i.an, %.lr.ph.i.i27 ], [ %i.bd, %bb.r ] ; 2 uses
  %.sroa.032.051.i.i30 = phi ptr [ %.sroa.052.0, %.lr.ph.i.i27 ], [ %i.bc, %bb.r ] ; 9 uses
  %i.ar = load i8, ptr %.sroa.032.051.i.i30, align 1
  %i.as = icmp eq i8 %i.ar, %i.ap
  br i1 %i.as, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEENS0_5__ops17_Iter_equals_iterINS1_IPcNSt7__cxx1112basic_stringIcSt11char_traitsIcES5_EEEEEEET_SI_SI_T0_.exit36, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i30, i64 1
  %i.au = load i8, ptr %i.at, align 1
  %i.av = icmp eq i8 %i.au, %i.ap
  br i1 %i.av, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEENS0_5__ops17_Iter_equals_iterINS1_IPcNSt7__cxx1112basic_stringIcSt11char_traitsIcES5_EEEEEEET_SI_SI_T0_.exit36.loopexit.split.loop.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i30, i64 2
  %i.ax = load i8, ptr %i.aw, align 1
  %i.ay = icmp eq i8 %i.ax, %i.ap
  br i1 %i.ay, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEENS0_5__ops17_Iter_equals_iterINS1_IPcNSt7__cxx1112basic_stringIcSt11char_traitsIcES5_EEEEEEET_SI_SI_T0_.exit36.loopexit.split.loop.exit108, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i30, i64 3
  %i.ba = load i8, ptr %i.az, align 1
  %i.bb = icmp eq i8 %i.ba, %i.ap
  br i1 %i.bb, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEENS0_5__ops17_Iter_equals_iterINS1_IPcNSt7__cxx1112basic_stringIcSt11char_traitsIcES5_EEEEEEET_SI_SI_T0_.exit36.loopexit.split.loop.exit110, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i30, i64 4
  %i.bd = add nsw i64 %.052.i.i29, -1
  %i.be = icmp sgt i64 %.052.i.i29, 1
  br i1 %i.be, label %bb.n, label %._crit_edge.loopexit.i.i31, !llvm.loop !81

._crit_edge.loopexit.i.i31:                       ; preds = %bb.r
  %.pre59.i.i32 = ptrtoint ptr %scevgep.i.i28 to i64
  br label %._crit_edge.i.i16

._crit_edge.i.i16:                                ; preds = %._crit_edge.loopexit.i.i31, %.loopexit
  %.pre-phi.i.i17 = phi i64 [ %.pre59.i.i32, %._crit_edge.loopexit.i.i31 ], [ %i.al, %.loopexit ]
  %.sroa.032.0.lcssa.i.i18 = phi ptr [ %scevgep.i.i28, %._crit_edge.loopexit.i.i31 ], [ %.sroa.052.0, %.loopexit ] ; 5 uses
  %i.bf = sub i64 %i.e, %.pre-phi.i.i17
  switch i64 %i.bf, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEENS0_5__ops17_Iter_equals_iterINS1_IPcNSt7__cxx1112basic_stringIcSt11char_traitsIcES5_EEEEEEET_SI_SI_T0_.exit [
    i64 3, label %bb.s
    i64 2, label %._crit_edge._crit_edge.i.i24
    i64 1, label %._crit_edge._crit_edge57.i.i19
  ]

end_hunk_0
begin_hunk_1_@_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_SF_T0_:bb.a
  %.sroa.speculated.i.i.i44 = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %i.b) ; 2 uses
  %i.y = icmp eq i64 %.sroa.speculated.i.i.i44, 0
  br i1 %i.y, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i48, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i45

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i45: ; preds = %bb.d
  %i.z = load ptr, ptr %3, align 8
  %i.aa = load ptr, ptr %1, align 8
  %i.ab = tail call i32 @memcmp(ptr noundef %i.aa, ptr noundef %i.z, i64 noundef %.sroa.speculated.i.i.i44) #27 ; 2 uses
  %.not.i.i.i46 = icmp eq i32 %i.ab, 0
  br i1 %.not.i.i.i46, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i48, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit52

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i48: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i45, %bb.d
  %i.ac = sub i64 %i.b, %i.l
  %spec.select7.i.i.i.i49 = tail call i64 @llvm.smax.i64(i64 %i.ac, i64 -2147483648)
  %.08.i.i.i.i50 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i49, i64 2147483647)
  %.0.i6.i.i.i51 = trunc nsw i64 %.08.i.i.i.i50 to i32
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit52

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit52: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i45, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i48
  %.0.i.i.i47 = phi i32 [ %i.ab, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i45 ], [ %.0.i6.i.i.i51, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i48 ]
  %i.ad = icmp slt i32 %.0.i.i.i47, 0
  br i1 %i.ad, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit52
  %.sroa.speculated.i.i.i53 = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %i.d) ; 2 uses
  %i.ae = icmp eq i64 %.sroa.speculated.i.i.i53, 0
  br i1 %i.ae, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i57, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i54

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i54: ; preds = %bb.e
  %i.af = load ptr, ptr %3, align 8
  %i.ag = load ptr, ptr %2, align 8
  %i.ah = tail call i32 @memcmp(ptr noundef %i.ag, ptr noundef %i.af, i64 noundef %.sroa.speculated.i.i.i53) #27 ; 2 uses
  %.not.i.i.i55 = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i.i55, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i57, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit61

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i57: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i54, %bb.e
  %i.ai = sub i64 %i.d, %i.l
  %spec.select7.i.i.i.i58 = tail call i64 @llvm.smax.i64(i64 %i.ai, i64 -2147483648)
  %.08.i.i.i.i59 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i58, i64 2147483647)
  %.0.i6.i.i.i60 = trunc nsw i64 %.08.i.i.i.i59 to i32
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit61

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit61: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i54, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i57
  %.0.i.i.i56 = phi i32 [ %i.ah, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i54 ], [ %.0.i6.i.i.i60, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i57 ]
  %i.aj = icmp slt i32 %.0.i.i.i56, 0
  %.66 = select i1 %i.aj, ptr %3, ptr %2
  br label %bb.f

bb.f:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit61, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit52, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit43, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit34
  %.sink = phi ptr [ %2, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit34 ], [ %1, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit52 ], [ %.66, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit61 ], [ %., %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit43 ]
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %.sink) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8                ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 11 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8              ; 5 uses
  %i.h = icmp ult i64 %i.g, 16
  tail call void @llvm.assume(i1 %i.h)
  %i.i = load ptr, ptr %1, align 8                ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %bb.d, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit45

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.m = load i64, ptr %i.l, align 8              ; 4 uses
  %i.n = icmp ult i64 %i.m, 16
  tail call void @llvm.assume(i1 %i.n)
  %.not = icmp eq i64 %i.g, 0
  %.not38 = icmp eq i64 %i.m, 0                   ; 2 uses
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %.not38, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit44, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit42

_ZNSt11char_traitsIcE4copyEPcPKcm.exit42:         ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.o = add nuw nsw i64 %i.m, 1                  ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %i.j, i64 %i.o, i1 false)
  %i.p = add nuw nsw i64 %i.g, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.j, ptr noundef nonnull align 8 dereferenceable(1) %i.d, i64 %i.p, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.d, ptr noundef nonnull align 16 dereferenceable(1) %i.a, i64 %i.o, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  br i1 %.not38, label %bb.h, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit43

_ZNSt11char_traitsIcE4copyEPcPKcm.exit43:         ; preds = %bb.f
  %i.q = add nuw nsw i64 %i.m, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.d, ptr noundef nonnull align 8 dereferenceable(1) %i.j, i64 %i.q, i1 false)
  %.pre50 = load i64, ptr %i.l, align 8
  store i64 %.pre50, ptr %i.f, align 8
  store i64 0, ptr %i.l, align 8
  %i.r = load ptr, ptr %1, align 8
  store i8 0, ptr %i.r, align 1
  br label %bb.i

_ZNSt11char_traitsIcE4copyEPcPKcm.exit44:         ; preds = %bb.e
  %i.s = add nuw nsw i64 %i.g, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.j, ptr noundef nonnull align 8 dereferenceable(1) %i.d, i64 %i.s, i1 false)
  %.pre = load i64, ptr %i.f, align 8
  store i64 %.pre, ptr %i.l, align 8
  store i64 0, ptr %i.f, align 8
  %i.t = load ptr, ptr %0, align 8
  store i8 0, ptr %i.t, align 1
  br label %bb.i

_ZNSt11char_traitsIcE4copyEPcPKcm.exit45:         ; preds = %bb.c
  %i.u = load i64, ptr %i.j, align 8
  %i.v = add nuw nsw i64 %i.g, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.j, ptr noundef nonnull align 8 dereferenceable(1) %i.d, i64 %i.v, i1 false)
  store ptr %i.i, ptr %0, align 8
  store ptr %i.j, ptr %1, align 8
  store i64 %i.u, ptr %i.d, align 8
  br label %bb.h

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit: ; preds = %bb.b
  %i.w = load i64, ptr %i.d, align 8
  %i.x = load ptr, ptr %1, align 8                ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit46

_ZNSt11char_traitsIcE4copyEPcPKcm.exit47:         ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load i64, ptr %i.aa, align 8            ; 2 uses
  %i.ac = icmp ult i64 %i.ab, 16
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = add nuw nsw i64 %i.ab, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.d, ptr noundef nonnull align 8 dereferenceable(1) %i.y, i64 %i.ad, i1 false)
  store ptr %i.c, ptr %1, align 8
  store ptr %i.d, ptr %0, align 8
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit46: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit
  store ptr %i.x, ptr %0, align 8
  store ptr %i.c, ptr %1, align 8
  %i.ae = load i64, ptr %i.y, align 8
  store i64 %i.ae, ptr %i.d, align 8
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit46, %_ZNSt11char_traitsIcE4copyEPcPKcm.exit47
  store i64 %i.w, ptr %i.y, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %_ZNSt11char_traitsIcE4copyEPcPKcm.exit45, %_ZNSt11char_traitsIcE4copyEPcPKcm.exit42, %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8
  store i64 %i.ai, ptr %i.af, align 8
  store i64 %i.ag, ptr %i.ah, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.h, %_ZNSt11char_traitsIcE4copyEPcPKcm.exit44, %_ZNSt11char_traitsIcE4copyEPcPKcm.exit43
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #22

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_T0_(ptr %0, ptr %1) local_unnamed_addr #4 comdat {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.0.016 = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = icmp eq ptr %.sroa.0.016, %1
  br i1 %i.b, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 11 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.f = ptrtoint ptr %0 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.not21.i = icmp eq ptr %2, %0
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.q
  %.sroa.0.018 = phi ptr [ %.sroa.0.016, %.lr.ph ], [ %.sroa.0.0, %bb.q ] ; 8 uses
  %.pn17 = phi ptr [ %0, %.lr.ph ], [ %.sroa.0.018, %bb.q ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.pn17, i64 40 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8              ; 5 uses
  %i.j = load i64, ptr %i.c, align 8              ; 2 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umin.i64(i64 %i.j, i64 %i.i) ; 2 uses
  %i.k = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.k, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.b
  %i.l = load ptr, ptr %0, align 8
  %i.m = load ptr, ptr %.sroa.0.018, align 8
  %i.n = call i32 @memcmp(ptr noundef %i.m, ptr noundef %i.l, i64 noundef %.sroa.speculated.i.i.i) #27 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.b
  %i.o = sub i64 %i.i, %i.j
  %spec.select7.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.o, i64 -2147483648)
  %.08.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.n, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.p = icmp slt i32 %.0.i.i.i, 0
  br i1 %i.p, label %bb.c, label %bb.p

bb.c:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  store ptr %i.d, ptr %2, align 8
  %i.q = load ptr, ptr %.sroa.0.018, align 8      ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.pn17, i64 48 ; 5 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.d:                                             ; preds = %bb.c
  %i.t = icmp ult i64 %i.i, 16
  call void @llvm.assume(i1 %i.t)
  %i.u = add nuw nsw i64 %i.i, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.d, ptr noundef nonnull align 8 dereferenceable(1) %i.r, i64 %i.u, i1 false)
  %.pre = load i64, ptr %i.h, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.c
  store ptr %i.q, ptr %2, align 8
  %i.v = load i64, ptr %i.r, align 8
  store i64 %i.v, ptr %i.d, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %3 = phi i64 [ %.pre, %bb.d ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  store i64 %3, ptr %i.e, align 8
  store ptr %i.r, ptr %.sroa.0.018, align 8
  store i64 0, ptr %i.h, align 8
  store i8 0, ptr %i.r, align 8
  %i.w = ptrtoint ptr %.sroa.0.018 to i64
  %i.x = sub i64 %i.w, %i.f
  %i.y = ashr exact i64 %i.x, 5                   ; 2 uses
  %i.z = icmp sgt i64 %i.y, 0
  br i1 %i.z, label %.lr.ph.i.i.i.i.i.preheader, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %.pn17, i64 64
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.bc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i ], [ %i.y, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i ], [ %i.aa, %.lr.ph.i.i.i.i.i.preheader ] ; 5 uses
  %.078.i.i.i.i.i = phi ptr [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i ], [ %.sroa.0.018, %.lr.ph.i.i.i.i.i.preheader ] ; 6 uses
  %i.ab = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -32 ; 5 uses
  %i.ac = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -32 ; 5 uses
  %i.ad = load ptr, ptr %i.ac, align 8            ; 6 uses
  %i.ae = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -16 ; 4 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  %i.ag = load ptr, ptr %i.ab, align 8            ; 5 uses
  %i.ah = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -16 ; 6 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah                ; 2 uses
  br i1 %i.af, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  br i1 %i.ai, label %bb.e, label %.thread.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  br i1 %i.ai, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i
  %i.aj = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8            ; 3 uses
  %i.al = icmp ult i64 %i.ak, 16
  call void @llvm.assume(i1 %i.al)
  switch i64 %i.ak, label %bb.g [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i
    i64 1, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.am = load i8, ptr %i.ag, align 1
  store i8 %i.am, ptr %i.ad, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ad, ptr align 1 %i.ag, i64 %i.ak, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.f, %bb.e
  %i.an = load i64, ptr %i.aj, align 8            ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -24
  store i64 %i.an, ptr %i.ao, align 8
  %i.ap = load ptr, ptr %i.ac, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.an
  store i8 0, ptr %i.aq, align 1
  %.pre.i.i.i.i.i.i = load ptr, ptr %i.ab, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i

.thread.i.i.i.i.i.i:                              ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.ar = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -24
  store ptr %i.ag, ptr %i.ac, align 8
  %i.as = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24
  %i.at = load i64, ptr %i.as, align 8
  store i64 %i.at, ptr %i.ar, align 8
  %i.au = load i64, ptr %i.ah, align 8
  store i64 %i.au, ptr %i.ae, align 8
  br label %bb.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i
  %i.av = load i64, ptr %i.ae, align 8
  store ptr %i.ag, ptr %i.ac, align 8
  %i.aw = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -24
  store i64 %i.ax, ptr %i.ay, align 8
  %i.az = load i64, ptr %i.ah, align 8
  store i64 %i.az, ptr %i.ae, align 8
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i
  store ptr %i.ad, ptr %i.ab, align 8
  store i64 %i.av, ptr %i.ah, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i, %.thread.i.i.i.i.i.i
  store ptr %i.ah, ptr %i.ab, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i: ; preds = %bb.i, %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i
  %i.ba = phi ptr [ %i.ad, %bb.h ], [ %i.ah, %bb.i ], [ %.pre.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i ]
  %i.bb = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24
  store i64 0, ptr %i.bb, align 8
  store i8 0, ptr %i.ba, align 1
  %i.bc = add nsw i64 %.010.i.i.i.i.i, -1
  %i.bd = icmp sgt i64 %.010.i.i.i.i.i, 1
  br i1 %i.bd, label %.lr.ph.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit, !llvm.loop !118

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.be = load ptr, ptr %0, align 8               ; 6 uses
  %i.bf = icmp eq ptr %i.be, %i.g
  %i.bg = load ptr, ptr %2, align 8               ; 6 uses
  %i.bh = icmp eq ptr %i.bg, %i.d                 ; 2 uses
  %.pre21 = load i64, ptr %i.e, align 8           ; 5 uses
  br i1 %i.bf, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i7: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit
  br i1 %i.bh, label %bb.j, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit
  br i1 %i.bh, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i7
  %i.bi = icmp ult i64 %.pre21, 16
  call void @llvm.assume(i1 %i.bi)
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.k, !prof !5

bb.k:                                             ; preds = %bb.j
  switch i64 %.pre21, label %bb.m [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.bj = load i8, ptr %i.bg, align 1
  store i8 %i.bj, ptr %i.be, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.m:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.be, ptr align 1 %i.bg, i64 %.pre21, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.m, %bb.l, %bb.k
  %i.bk = load i64, ptr %i.e, align 8             ; 2 uses
  store i64 %i.bk, ptr %i.c, align 8
  %i.bl = load ptr, ptr %0, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bk
  store i8 0, ptr %i.bm, align 1
  %.pre.i = load ptr, ptr %2, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i7
  store ptr %i.bg, ptr %0, align 8
  store i64 %.pre21, ptr %i.c, align 8
  %i.bn = load i64, ptr %i.d, align 8
  store i64 %i.bn, ptr %i.g, align 8
  br label %bb.o

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.bo = load i64, ptr %i.g, align 8
  store ptr %i.bg, ptr %0, align 8
  store i64 %.pre21, ptr %i.c, align 8
  %i.bp = load i64, ptr %i.d, align 8
  store i64 %i.bp, ptr %i.g, align 8
  %.not.i = icmp eq ptr %i.be, null
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.be, ptr %2, align 8
  store i64 %i.bo, ptr %i.d, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.d, ptr %2, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.n, %bb.o
  %i.bq = phi ptr [ %i.be, %bb.n ], [ %i.d, %bb.o ], [ %i.bg, %bb.j ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.e, align 8
  store i8 0, ptr %i.bq, align 1
  %i.br = load ptr, ptr %2, align 8               ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.d
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.bt = load i64, ptr %i.d, align 8
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bu) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %bb.q

bb.p:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit
  call void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_less_iterEEvT_T0_(ptr nonnull %.sroa.0.018)
  br label %bb.q

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.p
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.018, i64 32 ; 2 uses
  %i.bv = icmp eq ptr %.sroa.0.0, %1
  br i1 %i.bv, label %.loopexit, label %bb.b, !llvm.loop !119

.loopexit:                                        ; preds = %bb.q, %.preheader, %bb.a
  ret void
}
end_hunk_1
