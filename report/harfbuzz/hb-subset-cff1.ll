Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-cff1?download=true
inline.NumInlined: 2708
inline.NumDeleted: 1363
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EE5allocEjb:bb.a
  %.not23 = icmp ugt i32 %.138, %i.ab
  br i1 %.not23, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit.thread53
  %i.ac = xor i32 %i.ab, -1
  br label %.sink.split

_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit.thread: ; preds = %bb.l, %bb.k, %bb.g, %bb.f, %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit
  %.1.i.i42 = phi ptr [ %i.aa, %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit ], [ null, %bb.f ], [ null, %bb.g ], [ %i.r, %bb.k ], [ %i.r, %bb.l ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.1.i.i42, ptr %i.ad, align 8, !tbaa !119
  br label %.sink.split

.sink.split:                                      ; preds = %.critedge, %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit.thread, %bb.m
  %.sink = phi i32 [ %i.ac, %bb.m ], [ %.138, %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit.thread ], [ %i.k, %.critedge ]
  %.3.ph = phi i1 [ false, %bb.m ], [ true, %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit.thread ], [ false, %.critedge ]
  store i32 %.sink, ptr %0, align 8, !tbaa !298
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.c, %bb.d, %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit.thread53, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ true, %bb.c ], [ true, %bb.d ], [ true, %_ZN11hb_vector_tIS_IS_IhLb0EELb0EELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsrT_12realloc_moveEvE4typeELPv0EEEPS1_j11hb_priorityILj1EE.exit.thread53 ], [ %.3.ph, %.sink.split ]
  ret i1 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK2OT4cff119accelerator_templ_tIN3CFF32cff1_private_dict_opset_subset_tENS2_31cff1_private_dict_values_base_tINS2_8op_str_tEEEE13glyph_to_codeEjPNS2_11code_pair_tE(ptr noundef nonnull align 8 dereferenceable(304) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !407  ; 6 uses
  %.not = icmp eq ptr %i.b, @_hb_NullPool
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %i.b, align 1, !tbaa !180
  %i.d = and i8 %i.c, 127
  switch i8 %i.d, label %_ZNK3CFF8Encoding8get_codeEj.exit [
    i8 0, label %bb.c
    i8 1, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !181
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.f = add i32 %1, -1                           ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i8, ptr %i.e, align 1, !tbaa !97
  %i.g = zext i8 %.sroa.0.0.copyload.i.i.i to i32
  %i.h = icmp ult i32 %i.f, %i.g
  br i1 %i.h, label %_ZNK2OT7ArrayOfINS_7NumTypeILb1EhLj1EEES2_EixEi.exit.i.i, label %_ZNK3CFF8Encoding8get_codeEj.exit

_ZNK2OT7ArrayOfINS_7NumTypeILb1EhLj1EEES2_EixEi.exit.i.i: ; preds = %bb.c
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !181
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.j = zext nneg i32 %i.f to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !180
  %i.m = zext i8 %i.l to i32
  br label %_ZNK3CFF8Encoding8get_codeEj.exit

bb.d:                                             ; preds = %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !181
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 4 uses
  %.sroa.0.0.copyload.i26.i.i = load i8, ptr %i.n, align 1, !tbaa !97
  %.not29.i.i = icmp eq i8 %.sroa.0.0.copyload.i26.i.i, 0
  br i1 %.not29.i.i, label %_ZNK3CFF8Encoding8get_codeEj.exit, label %_ZNK2OT7ArrayOfIN3CFF15Encoding1_RangeENS_7NumTypeILb1EhLj1EEEEixEi.exit.lr.ph.i.i

_ZNK2OT7ArrayOfIN3CFF15Encoding1_RangeENS_7NumTypeILb1EhLj1EEEEixEi.exit.lr.ph.i.i: ; preds = %bb.d
  %i.o = add i32 %1, -1
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 2 uses
  br label %_ZNK2OT7ArrayOfIN3CFF15Encoding1_RangeENS_7NumTypeILb1EhLj1EEEEixEi.exit.i.i

_ZNK2OT7ArrayOfIN3CFF15Encoding1_RangeENS_7NumTypeILb1EhLj1EEEEixEi.exit.i.i: ; preds = %_ZNK2OT7ArrayOfIN3CFF15Encoding1_RangeENS_7NumTypeILb1EhLj1EEEEixEi.exit21.i.i, %_ZNK2OT7ArrayOfIN3CFF15Encoding1_RangeENS_7NumTypeILb1EhLj1EEEEixEi.exit.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %_ZNK2OT7ArrayOfIN3CFF15Encoding1_RangeENS_7NumTypeILb1EhLj1EEEEixEi.exit.lr.ph.i.i ], [ %indvars.iv.next.i.i, %_ZNK2OT7ArrayOfIN3CFF15Encoding1_RangeENS_7NumTypeILb1EhLj1EEEEixEi.exit21.i.i ] ; 5 uses
  %.01527.i.i = phi i32 [ %i.o, %_ZNK2OT7ArrayOfIN3CFF15Encoding1_RangeENS_7NumTypeILb1EhLj1EEEEixEi.exit.lr.ph.i.i ], [ %i.ab, %_ZNK2OT7ArrayOfIN3CFF15Encoding1_RangeENS_7NumTypeILb1EhLj1EEEEixEi.exit21.i.i ] ; 3 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !181
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %indvars.iv.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %i.s = load i8, ptr %i.r, align 1, !tbaa !180
  %i.t = zext i8 %i.s to i32
  %.not.i.i = icmp ugt i32 %.01527.i.i, %i.t
  %i.u = load i8, ptr %i.n, align 1, !tbaa !180
  %i.v = zext i8 %i.u to i64                      ; 2 uses
  %.not.i19.i.i = icmp samesign ult i64 %indvars.iv.i.i, %i.v ; 2 uses
  br i1 %.not.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_ZNK2OT7ArrayOfIN3CFF15Encoding1_RangeENS_7NumTypeILb1EhLj1EEEEixEi.exit.i.i
  br i1 %.not.i19.i.i, label %bb.f, label %bb.i, !prof !82

bb.f:                                             ; preds = %bb.e
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !181
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %indvars.iv.i.i
  br label %bb.i

bb.g:                                             ; preds = %_ZNK2OT7ArrayOfIN3CFF15Encoding1_RangeENS_7NumTypeILb1EhLj1EEEEixEi.exit.i.i
  br i1 %.not.i19.i.i, label %bb.h, label %_ZNK2OT7ArrayOfIN3CFF15Encoding1_RangeENS_7NumTypeILb1EhLj1EEEEixEi.exit21.i.i, !prof !82

bb.h:                                             ; preds = %bb.g
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !181
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %indvars.iv.i.i
  %.sroa.0.0.copyload.i.pre.i.i = load i8, ptr %i.n, align 1, !tbaa !97
  %.pre34.i.i = zext i8 %.sroa.0.0.copyload.i.pre.i.i to i64
  br label %_ZNK2OT7ArrayOfIN3CFF15Encoding1_RangeENS_7NumTypeILb1EhLj1EEEEixEi.exit21.i.i

_ZNK2OT7ArrayOfIN3CFF15Encoding1_RangeENS_7NumTypeILb1EhLj1EEEEixEi.exit21.i.i: ; preds = %bb.h, %bb.g
  %.pre-phi35.i.i = phi i64 [ %i.v, %bb.g ], [ %.pre34.i.i, %bb.h ]
  %.0.i20.i.i = phi ptr [ @_hb_NullPool, %bb.g ], [ %i.x, %bb.h ]
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i20.i.i, i64 1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !180
  %i.aa = zext i8 %i.z to i32
  %.neg.i.i = xor i32 %i.aa, -1
  %i.ab = add i32 %.01527.i.i, %.neg.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ac = icmp samesign ult i64 %indvars.iv.next.i.i, %.pre-phi35.i.i
  br i1 %i.ac, label %_ZNK2OT7ArrayOfIN3CFF15Encoding1_RangeENS_7NumTypeILb1EhLj1EEEEixEi.exit.i.i, label %_ZNK3CFF8Encoding8get_codeEj.exit, !llvm.loop !790

bb.i:                                             ; preds = %bb.f, %bb.e
  %.0.i17.i.i = phi ptr [ %i.w, %bb.f ], [ @_hb_NullPool, %bb.e ]
  %i.ad = load i8, ptr %.0.i17.i.i, align 1, !tbaa !180
  %i.ae = zext i8 %i.ad to i32
  %i.af = add nuw nsw i32 %.01527.i.i, %i.ae      ; 2 uses
  %i.ag = icmp samesign ult i32 %i.af, 256
  %i.ah = select i1 %i.ag, i32 %i.af, i32 -1, !prof !82
  br label %_ZNK3CFF8Encoding8get_codeEj.exit

bb.j:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !319 ; 2 uses
  %.not.i = icmp eq ptr %i.aj, @_hb_NullPool
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !320
  %i.am = tail call noundef i32 @_ZNK3CFF7Charset7get_sidEjjPNS_11code_pair_tE(ptr noundef nonnull align 1 dereferenceable(5) %i.aj, i32 noundef %1, i32 noundef %i.al, ptr noundef %2)
  br label %_ZNK2OT4cff119accelerator_templ_tIN3CFF32cff1_private_dict_opset_subset_tENS2_31cff1_private_dict_values_base_tINS2_8op_str_tEEEE12glyph_to_sidEjPNS2_11code_pair_tE.exit

bb.l:                                             ; preds = %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !255
  switch i32 %i.ao, label %_ZNK3CFF8Encoding8get_codeEj.exit [
    i32 0, label %bb.m
    i32 1, label %bb.n
    i32 2, label %bb.o
  ]

bb.m:                                             ; preds = %bb.l
  %i.ap = icmp ult i32 %1, 229
  br i1 %i.ap, label %_ZNK2OT4cff119accelerator_templ_tIN3CFF32cff1_private_dict_opset_subset_tENS2_31cff1_private_dict_values_base_tINS2_8op_str_tEEEE12glyph_to_sidEjPNS2_11code_pair_tE.exit, label %_ZNK3CFF8Encoding8get_codeEj.exit

bb.n:                                             ; preds = %bb.l
  %i.aq = tail call noundef i32 @_ZN2OT4cff129lookup_expert_charset_for_sidEj(i32 noundef %1) #10
  br label %_ZNK2OT4cff119accelerator_templ_tIN3CFF32cff1_private_dict_opset_subset_tENS2_31cff1_private_dict_values_base_tINS2_8op_str_tEEEE12glyph_to_sidEjPNS2_11code_pair_tE.exit

bb.o:                                             ; preds = %bb.l
  %i.ar = tail call noundef i32 @_ZN2OT4cff136lookup_expert_subset_charset_for_sidEj(i32 noundef %1) #10
  br label %_ZNK2OT4cff119accelerator_templ_tIN3CFF32cff1_private_dict_opset_subset_tENS2_31cff1_private_dict_values_base_tINS2_8op_str_tEEEE12glyph_to_sidEjPNS2_11code_pair_tE.exit

_ZNK2OT4cff119accelerator_templ_tIN3CFF32cff1_private_dict_opset_subset_tENS2_31cff1_private_dict_values_base_tINS2_8op_str_tEEEE12glyph_to_sidEjPNS2_11code_pair_tE.exit: ; preds = %bb.m, %bb.k, %bb.n, %bb.o
  %.08.i = phi i32 [ %i.am, %bb.k ], [ %i.aq, %bb.n ], [ %i.ar, %bb.o ], [ %1, %bb.m ] ; 3 uses
  %i.as = icmp eq i32 %.08.i, 0
  br i1 %i.as, label %_ZNK3CFF8Encoding8get_codeEj.exit, label %bb.p

bb.p:                                             ; preds = %_ZNK2OT4cff119accelerator_templ_tIN3CFF32cff1_private_dict_opset_subset_tENS2_31cff1_private_dict_values_base_tINS2_8op_str_tEEEE12glyph_to_sidEjPNS2_11code_pair_tE.exit
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.au = load i32, ptr %i.at, align 8, !tbaa !260
  switch i32 %i.au, label %_ZNK3CFF8Encoding8get_codeEj.exit [
    i32 0, label %bb.q
    i32 1, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  %i.av = tail call noundef i32 @_ZN2OT4cff133lookup_standard_encoding_for_codeEj(i32 noundef %.08.i) #10
  br label %_ZNK3CFF8Encoding8get_codeEj.exit

bb.r:                                             ; preds = %bb.p
  %i.aw = tail call noundef i32 @_ZN2OT4cff131lookup_expert_encoding_for_codeEj(i32 noundef %.08.i) #10
  br label %_ZNK3CFF8Encoding8get_codeEj.exit

_ZNK3CFF8Encoding8get_codeEj.exit:                ; preds = %_ZNK2OT7ArrayOfIN3CFF15Encoding1_RangeENS_7NumTypeILb1EhLj1EEEEixEi.exit21.i.i, %bb.m, %bb.l, %bb.i, %bb.d, %_ZNK2OT7ArrayOfINS_7NumTypeILb1EhLj1EEES2_EixEi.exit.i.i, %bb.c, %bb.b, %_ZNK2OT4cff119accelerator_templ_tIN3CFF32cff1_private_dict_opset_subset_tENS2_31cff1_private_dict_values_base_tINS2_8op_str_tEEEE12glyph_to_sidEjPNS2_11code_pair_tE.exit, %bb.p, %bb.r, %bb.q
  %.1 = phi i32 [ %i.aw, %bb.r ], [ 0, %_ZNK2OT4cff119accelerator_templ_tIN3CFF32cff1_private_dict_opset_subset_tENS2_31cff1_private_dict_values_base_tINS2_8op_str_tEEEE12glyph_to_sidEjPNS2_11code_pair_tE.exit ], [ 0, %bb.p ], [ %i.av, %bb.q ], [ -1, %bb.c ], [ 0, %bb.b ], [ %i.m, %_ZNK2OT7ArrayOfINS_7NumTypeILb1EhLj1EEES2_EixEi.exit.i.i ], [ %i.ah, %bb.i ], [ -1, %bb.d ], [ 0, %bb.m ], [ 0, %bb.l ], [ -1, %_ZNK2OT7ArrayOfIN3CFF15Encoding1_RangeENS_7NumTypeILb1EhLj1EEEEixEi.exit21.i.i ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK3CFF8Encoding20get_supplement_codesEjR11hb_vector_tIjLb0EE(ptr noundef nonnull align 1 dereferenceable(4) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 4 uses
  store i32 0, ptr %i.a, align 4, !tbaa !184
  %i.b = load i8, ptr %0, align 1, !tbaa !180     ; 2 uses
  %i.c = icmp slt i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZNK3CFF15CFF1SuppEncData9get_codesEjR11hb_vector_tIjLb0EE.exit

bb.b:                                             ; preds = %bb.a
  %i.d = and i8 %i.b, 127
  switch i8 %i.d, label %_ZNK3CFF8Encoding11suppEncDataEv.exit [
    i8 0, label %bb.c
    i8 1, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !181
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.sroa.0.0.copyload.i.i = load i8, ptr %i.e, align 1, !tbaa !97 ; 2 uses
  %.not.i.not.i = icmp eq i8 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not.i.not.i, label %_ZNK2OT7ArrayOfINS_7NumTypeILb1EhLj1EEES2_EixEi.exit.i, label %bb.d, !prof !86

bb.d:                                             ; preds = %bb.c
  %i.f = zext i8 %.sroa.0.0.copyload.i.i to i64
  %3 = add nuw nsw i64 %i.f, 4294967295
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !181
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %5 = and i64 %3, 4294967295
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 %5
  br label %_ZNK2OT7ArrayOfINS_7NumTypeILb1EhLj1EEES2_EixEi.exit.i

_ZNK2OT7ArrayOfINS_7NumTypeILb1EhLj1EEES2_EixEi.exit.i: ; preds = %bb.d, %bb.c
  %.0.i.i = phi ptr [ %i.g, %bb.d ], [ @_hb_NullPool, %bb.c ]
  %i.h = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1
  br label %_ZNK3CFF8Encoding11suppEncDataEv.exit

bb.e:                                             ; preds = %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !181
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.sroa.0.0.copyload.i2.i = load i8, ptr %i.i, align 1, !tbaa !97 ; 2 uses
  %.not.i3.not.i = icmp eq i8 %.sroa.0.0.copyload.i2.i, 0
  br i1 %.not.i3.not.i, label %_ZNK2OT7ArrayOfIN3CFF15Encoding1_RangeENS_7NumTypeILb1EhLj1EEEEixEi.exit.i, label %bb.f, !prof !86

bb.f:                                             ; preds = %bb.e
  %i.j = zext i8 %.sroa.0.0.copyload.i2.i to i64
  %6 = add nuw nsw i64 %i.j, 4294967295
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !181
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %8 = and i64 %6, 4294967295
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %7, i64 %8
  br label %_ZNK2OT7ArrayOfIN3CFF15Encoding1_RangeENS_7NumTypeILb1EhLj1EEEEixEi.exit.i

_ZNK2OT7ArrayOfIN3CFF15Encoding1_RangeENS_7NumTypeILb1EhLj1EEEEixEi.exit.i: ; preds = %bb.f, %bb.e
  %.0.i4.i = phi ptr [ %i.k, %bb.f ], [ @_hb_NullPool, %bb.e ]
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 2
  br label %_ZNK3CFF8Encoding11suppEncDataEv.exit

_ZNK3CFF8Encoding11suppEncDataEv.exit:            ; preds = %bb.b, %_ZNK2OT7ArrayOfINS_7NumTypeILb1EhLj1EEES2_EixEi.exit.i, %_ZNK2OT7ArrayOfIN3CFF15Encoding1_RangeENS_7NumTypeILb1EhLj1EEEEixEi.exit.i
  %.0.i = phi ptr [ %i.l, %_ZNK2OT7ArrayOfIN3CFF15Encoding1_RangeENS_7NumTypeILb1EhLj1EEEEixEi.exit.i ], [ %i.h, %_ZNK2OT7ArrayOfINS_7NumTypeILb1EhLj1EEES2_EixEi.exit.i ], [ @_hb_NullPool, %bb.b ] ; 5 uses
  %.sroa.0.0.copyload.i11.i = load i8, ptr %.0.i, align 1, !tbaa !97
  %.not.i = icmp eq i8 %.sroa.0.0.copyload.i11.i, 0
  br i1 %.not.i, label %_ZNK3CFF15CFF1SuppEncData9get_codesEjR11hb_vector_tIjLb0EE.exit, label %_ZNK2OT7ArrayOfIN3CFF12SuppEncodingENS_7NumTypeILb1EhLj1EEEEixEi.exit.lr.ph.i

_ZNK2OT7ArrayOfIN3CFF12SuppEncodingENS_7NumTypeILb1EhLj1EEEEixEi.exit.lr.ph.i: ; preds = %_ZNK3CFF8Encoding11suppEncDataEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  %i.n = load i32, ptr @_hb_NullPool, align 16
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %_ZNK2OT7ArrayOfIN3CFF12SuppEncodingENS_7NumTypeILb1EhLj1EEEEixEi.exit.i

_ZNK2OT7ArrayOfIN3CFF12SuppEncodingENS_7NumTypeILb1EhLj1EEEEixEi.exit.i: ; preds = %_ZN11hb_vector_tIjLb0EE4pushIJRKN2OT7NumTypeILb1EhLj1EEEEEEPjDpOT_.exit.i, %_ZNK2OT7ArrayOfIN3CFF12SuppEncodingENS_7NumTypeILb1EhLj1EEEEixEi.exit.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %_ZNK2OT7ArrayOfIN3CFF12SuppEncodingENS_7NumTypeILb1EhLj1EEEEixEi.exit.lr.ph.i ], [ %indvars.iv.next.i, %_ZN11hb_vector_tIjLb0EE4pushIJRKN2OT7NumTypeILb1EhLj1EEEEEEPjDpOT_.exit.i ] ; 4 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !181
  %i.p = getelementptr inbounds nuw [3 x i8], ptr %.0.i, i64 %indvars.iv.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  %i.r = load i16, ptr %i.q, align 1, !tbaa !183
  %i.s = tail call noundef i16 @llvm.bswap.i16(i16 %i.r)
  %i.t = zext i16 %i.s to i32
  %i.u = icmp eq i32 %1, %i.t
  br i1 %i.u, label %bb.g, label %_ZN11hb_vector_tIjLb0EE4pushIJRKN2OT7NumTypeILb1EhLj1EEEEEEPjDpOT_.exit.i

bb.g:                                             ; preds = %_ZNK2OT7ArrayOfIN3CFF12SuppEncodingENS_7NumTypeILb1EhLj1EEEEixEi.exit.i
  %i.v = load i8, ptr %.0.i, align 1, !tbaa !180
  %i.w = zext i8 %i.v to i64
  %.not.i6.i = icmp samesign ult i64 %indvars.iv.i, %i.w
  br i1 %.not.i6.i, label %bb.h, label %_ZNK2OT7ArrayOfIN3CFF12SuppEncodingENS_7NumTypeILb1EhLj1EEEEixEi.exit8.i, !prof !82

bb.h:                                             ; preds = %bb.g
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !181
  %i.x = getelementptr inbounds nuw [3 x i8], ptr %i.m, i64 %indvars.iv.i
  br label %_ZNK2OT7ArrayOfIN3CFF12SuppEncodingENS_7NumTypeILb1EhLj1EEEEixEi.exit8.i

_ZNK2OT7ArrayOfIN3CFF12SuppEncodingENS_7NumTypeILb1EhLj1EEEEixEi.exit8.i: ; preds = %bb.h, %bb.g
  %.0.i7.i = phi ptr [ %i.x, %bb.h ], [ @_hb_NullPool, %bb.g ]
  %i.y = load i32, ptr %i.a, align 4, !tbaa !184  ; 3 uses
  %i.z = load i32, ptr %2, align 8, !tbaa !185
  %.not.i9.i = icmp slt i32 %i.y, %i.z
  br i1 %.not.i9.i, label %.critedge.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNK2OT7ArrayOfIN3CFF12SuppEncodingENS_7NumTypeILb1EhLj1EEEEixEi.exit8.i
  %i.aa = add i32 %i.y, 1
  %i.ab = tail call noundef zeroext i1 @_ZN11hb_vector_tIjLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %i.aa, i1 noundef zeroext false)
  br i1 %i.ab, label %..critedge_crit_edge.i.i, label %bb.j, !prof !82

..critedge_crit_edge.i.i:                         ; preds = %bb.i
  %.pre.i.i = load i32, ptr %i.a, align 4, !tbaa !184
  br label %.critedge.i.i

bb.j:                                             ; preds = %bb.i
  store i32 %i.n, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIjLb0EE4pushIJRKN2OT7NumTypeILb1EhLj1EEEEEEPjDpOT_.exit.i

.critedge.i.i:                                    ; preds = %..critedge_crit_edge.i.i, %_ZNK2OT7ArrayOfIN3CFF12SuppEncodingENS_7NumTypeILb1EhLj1EEEEixEi.exit8.i
  %i.ac = phi i32 [ %.pre.i.i, %..critedge_crit_edge.i.i ], [ %i.y, %_ZNK2OT7ArrayOfIN3CFF12SuppEncodingENS_7NumTypeILb1EhLj1EEEEixEi.exit8.i ] ; 2 uses
  %i.ad = load ptr, ptr %i.o, align 8, !tbaa !186
  %i.ae = add i32 %i.ac, 1
  store i32 %i.ae, ptr %i.a, align 4, !tbaa !184
  %i.af = zext i32 %i.ac to i64
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.af
  %i.ah = load i8, ptr %.0.i7.i, align 1, !tbaa !180
  %i.ai = zext i8 %i.ah to i32
  store i32 %i.ai, ptr %i.ag, align 4, !tbaa !116
  br label %_ZN11hb_vector_tIjLb0EE4pushIJRKN2OT7NumTypeILb1EhLj1EEEEEEPjDpOT_.exit.i

_ZN11hb_vector_tIjLb0EE4pushIJRKN2OT7NumTypeILb1EhLj1EEEEEEPjDpOT_.exit.i: ; preds = %.critedge.i.i, %bb.j, %_ZNK2OT7ArrayOfIN3CFF12SuppEncodingENS_7NumTypeILb1EhLj1EEEEixEi.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.sroa.0.0.copyload.i.i3 = load i8, ptr %.0.i, align 1, !tbaa !97
  %i.aj = zext i8 %.sroa.0.0.copyload.i.i3 to i64
  %i.ak = icmp samesign ult i64 %indvars.iv.next.i, %i.aj
  br i1 %i.ak, label %_ZNK2OT7ArrayOfIN3CFF12SuppEncodingENS_7NumTypeILb1EhLj1EEEEixEi.exit.i, label %_ZNK3CFF15CFF1SuppEncData9get_codesEjR11hb_vector_tIjLb0EE.exit, !llvm.loop !791

_ZNK3CFF15CFF1SuppEncData9get_codesEjR11hb_vector_tIjLb0EE.exit: ; preds = %_ZN11hb_vector_tIjLb0EE4pushIJRKN2OT7NumTypeILb1EhLj1EEEEEEPjDpOT_.exit.i, %_ZNK3CFF8Encoding11suppEncDataEv.exit, %bb.a
  ret void
}

declare hidden noundef i32 @_ZN2OT4cff133lookup_standard_encoding_for_codeEj(i32 noundef) local_unnamed_addr #2

declare hidden noundef i32 @_ZN2OT4cff131lookup_expert_encoding_for_codeEj(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11hb_vector_tIN3CFF27cff1_font_dict_values_mod_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !291    ; 7 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.n, label %bb.b, !prof !86

bb.b:                                             ; preds = %bb.a
  br i1 %2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !116
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %1, i32 %i.d) ; 3 uses
  %.not19 = icmp ugt i32 %.sroa.speculated, %i.a
  %i.e = lshr i32 %i.a, 2
  %.not20 = icmp ult i32 %.sroa.speculated, %i.e
  %or.cond = or i1 %.not19, %.not20
  br i1 %or.cond, label %.thread, label %bb.n

bb.d:                                             ; preds = %bb.b
  %.not = icmp ugt i32 %1, %i.a
  br i1 %.not, label %.preheader, label %bb.n, !prof !86

.preheader:                                       ; preds = %bb.d, %.preheader
  %.043 = phi i32 [ %i.h, %.preheader ], [ %i.a, %bb.d ] ; 2 uses
  %i.f = lshr i32 %.043, 1
  %i.g = add i32 %.043, 8
  %i.h = add i32 %i.g, %i.f                       ; 3 uses
  %i.i = icmp ugt i32 %1, %i.h
  br i1 %i.i, label %.preheader, label %.thread, !llvm.loop !792

.thread:                                          ; preds = %.preheader, %bb.c
  %.138 = phi i32 [ %.sroa.speculated, %bb.c ], [ %i.h, %.preheader ] ; 6 uses
  %i.j = icmp ugt i32 %.138, 178956970
  br i1 %i.j, label %.critedge, label %bb.e, !prof !86

.critedge:                                        ; preds = %.thread
  %i.k = xor i32 %i.a, -1
  br label %.sink.split

bb.e:                                             ; preds = %.thread
  %.not.i.i = icmp eq i32 %.138, 0
  %.not49 = icmp eq i32 %i.a, 0                   ; 2 uses
  br i1 %.not.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  br i1 %.not49, label %_ZN11hb_vector_tIN3CFF27cff1_font_dict_values_mod_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !135
  tail call void @hb_free(ptr noundef %i.m) #10
  br label %_ZN11hb_vector_tIN3CFF27cff1_font_dict_values_mod_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread

bb.h:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !135  ; 2 uses
  br i1 %.not49, label %bb.i, label %_ZN11hb_vector_tIN3CFF27cff1_font_dict_values_mod_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit

bb.i:                                             ; preds = %bb.h
  %.not9.i.i = icmp eq ptr %i.o, null
  br i1 %.not9.i.i, label %_ZN11hb_vector_tIN3CFF27cff1_font_dict_values_mod_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = zext nneg i32 %.138 to i64
  %i.q = mul nuw nsw i64 %i.p, 24
  %i.r = tail call ptr @hb_malloc(i64 noundef %i.q) #10 ; 4 uses
  %.not10.i.i = icmp eq ptr %i.r, null
  br i1 %.not10.i.i, label %_ZN11hb_vector_tIN3CFF27cff1_font_dict_values_mod_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53, label %bb.k, !prof !86

bb.k:                                             ; preds = %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !134  ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i, label %_ZN11hb_vector_tIN3CFF27cff1_font_dict_values_mod_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread, label %bb.l, !prof !86

bb.l:                                             ; preds = %bb.k
  %i.u = zext i32 %i.t to i64
  %i.v = mul nuw nsw i64 %i.u, 24
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !135
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr readonly align 1 %i.w, i64 %i.v, i1 false), !alias.scope !796
  br label %_ZN11hb_vector_tIN3CFF27cff1_font_dict_values_mod_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread

_ZN11hb_vector_tIN3CFF27cff1_font_dict_values_mod_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit: ; preds = %bb.h, %bb.i
  %i.x = phi ptr [ null, %bb.i ], [ %i.o, %bb.h ]
  %i.y = zext nneg i32 %.138 to i64
  %i.z = mul nuw nsw i64 %i.y, 24
  %i.aa = tail call ptr @hb_realloc(ptr noundef %i.x, i64 noundef %i.z) #10 ; 2 uses
  %.not22 = icmp eq ptr %i.aa, null
  br i1 %.not22, label %_ZN11hb_vector_tIN3CFF27cff1_font_dict_values_mod_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53, label %_ZN11hb_vector_tIN3CFF27cff1_font_dict_values_mod_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread, !prof !304

_ZN11hb_vector_tIN3CFF27cff1_font_dict_values_mod_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53: ; preds = %bb.j, %_ZN11hb_vector_tIN3CFF27cff1_font_dict_values_mod_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit
  %i.ab = load i32, ptr %0, align 8, !tbaa !291   ; 2 uses
  %.not23 = icmp ugt i32 %.138, %i.ab
  br i1 %.not23, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN11hb_vector_tIN3CFF27cff1_font_dict_values_mod_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53
  %i.ac = xor i32 %i.ab, -1
  br label %.sink.split

_ZN11hb_vector_tIN3CFF27cff1_font_dict_values_mod_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread: ; preds = %bb.l, %bb.k, %bb.g, %bb.f, %_ZN11hb_vector_tIN3CFF27cff1_font_dict_values_mod_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit
  %.1.i.i42 = phi ptr [ %i.aa, %_ZN11hb_vector_tIN3CFF27cff1_font_dict_values_mod_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit ], [ null, %bb.f ], [ null, %bb.g ], [ %i.r, %bb.k ], [ %i.r, %bb.l ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.1.i.i42, ptr %i.ad, align 8, !tbaa !135
  br label %.sink.split

.sink.split:                                      ; preds = %.critedge, %_ZN11hb_vector_tIN3CFF27cff1_font_dict_values_mod_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread, %bb.m
  %.sink = phi i32 [ %i.ac, %bb.m ], [ %.138, %_ZN11hb_vector_tIN3CFF27cff1_font_dict_values_mod_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread ], [ %i.k, %.critedge ]
  %.3.ph = phi i1 [ false, %bb.m ], [ true, %_ZN11hb_vector_tIN3CFF27cff1_font_dict_values_mod_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread ], [ false, %.critedge ]
  store i32 %.sink, ptr %0, align 8, !tbaa !291
  br label %bb.n
end_hunk_0
