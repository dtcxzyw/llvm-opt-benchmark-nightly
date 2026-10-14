Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/harfbuzz?download=true
inline.NumInlined: 35471
inline.NumDeleted: 12449
loop-unroll.NumCompletelyUnrolled: 169
loop-unroll.NumRuntimeUnrolled: 273
loop-unroll.NumUnrolled: 472
begin_hunk_0_@_ZNK3AAT21SubtableGlyphCoverage8sanitizeEP21hb_sanitize_context_tj:bb.a
  %.not.i.i.i = icmp ugt i64 %i.g, %i.j
  br i1 %.not.i.i.i, label %_ZNK21hb_sanitize_context_t11check_arrayIN2OT14UnsizedArrayOfINS1_8OffsetToINS2_INS1_7NumTypeILb1EhLj1EEEEENS4_ILb1EjLj4EEEvLb0EEEEEEEbPKT_j.exit.thread, label %bb.c, !prof !711

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !504
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = sub i64 %i.m, %i.e
  %i.o = trunc i64 %i.n to i32
  %.not12.i.i.i = icmp ugt i32 %i.a, %i.o
  br i1 %.not12.i.i.i, label %_ZNK21hb_sanitize_context_t11check_arrayIN2OT14UnsizedArrayOfINS1_8OffsetToINS2_INS1_7NumTypeILb1EhLj1EEEEENS4_ILb1EjLj4EEEvLb0EEEEEEEbPKT_j.exit.thread, label %_ZNK21hb_sanitize_context_t11check_arrayIN2OT14UnsizedArrayOfINS1_8OffsetToINS2_INS1_7NumTypeILb1EhLj1EEEEENS4_ILb1EjLj4EEEvLb0EEEEEEEbPKT_j.exit, !prof !711

_ZNK21hb_sanitize_context_t11check_arrayIN2OT14UnsizedArrayOfINS1_8OffsetToINS2_INS1_7NumTypeILb1EhLj1EEEEENS4_ILb1EjLj4EEEvLb0EEEEEEEbPKT_j.exit: ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 4 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !508
  %i.r = sub i32 %i.q, %i.a                       ; 2 uses
  store i32 %i.r, ptr %i.p, align 4, !tbaa !508
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %bb.d, label %_ZNK21hb_sanitize_context_t11check_arrayIN2OT14UnsizedArrayOfINS1_8OffsetToINS2_INS1_7NumTypeILb1EhLj1EEEEENS4_ILb1EjLj4EEEvLb0EEEEEEEbPKT_j.exit.thread, !prof !672

bb.d:                                             ; preds = %_ZNK21hb_sanitize_context_t11check_arrayIN2OT14UnsizedArrayOfINS1_8OffsetToINS2_INS1_7NumTypeILb1EhLj1EEEEENS4_ILb1EjLj4EEEvLb0EEEEEEEbPKT_j.exit
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.u = load i32, ptr %i.t, align 8, !tbaa !497
  %i.v = add i32 %i.u, 7
  %i.w = lshr i32 %i.v, 3                         ; 2 uses
  %.not31.not = icmp eq i32 %2, 0
  br i1 %.not31.not, label %_ZNK21hb_sanitize_context_t11check_arrayIN2OT14UnsizedArrayOfINS1_8OffsetToINS2_INS1_7NumTypeILb1EhLj1EEEEENS4_ILb1EjLj4EEEvLb0EEEEEEEbPKT_j.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.i
  %i.x = phi i32 [ %i.i, %.lr.ph ], [ %i.az, %bb.i ] ; 2 uses
  %i.y = phi ptr [ %i.d, %.lr.ph ], [ %i.ba, %bb.i ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 3 uses
  %i.aa = load i32, ptr %i.z, align 1, !tbaa !278
  %i.ab = tail call noundef i32 @llvm.bswap.i32(i32 %i.aa)
  %i.ac = add i32 %i.ab, 1
  %or.cond = icmp ult i32 %i.ac, 2
  br i1 %or.cond, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.y to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = zext i32 %i.x to i64
  %.not.i.not = icmp ugt i64 %i.ag, %i.ah
  br i1 %.not.i.not, label %_ZNK21hb_sanitize_context_t11check_arrayIN2OT14UnsizedArrayOfINS1_8OffsetToINS2_INS1_7NumTypeILb1EhLj1EEEEENS4_ILb1EjLj4EEEvLb0EEEEEEEbPKT_j.exit.thread, label %bb.g, !prof !267

bb.g:                                             ; preds = %bb.f
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.ai = load i32, ptr %i.z, align 1, !tbaa !278
  %i.aj = tail call noundef i32 @llvm.bswap.i32(i32 %i.ai)
  %i.ak = zext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 %i.ak
  %i.am = load ptr, ptr %i.c, align 8, !tbaa !505 ; 2 uses
  %i.an = ptrtoint ptr %i.al to i64               ; 2 uses
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = load i32, ptr %i.h, align 8, !tbaa !506 ; 2 uses
  %i.ar = zext i32 %i.aq to i64
  %.not.i.i.i.i.i.i = icmp ugt i64 %i.ap, %i.ar
  br i1 %.not.i.i.i.i.i.i, label %_ZNK21hb_sanitize_context_t11check_arrayIN2OT14UnsizedArrayOfINS1_8OffsetToINS2_INS1_7NumTypeILb1EhLj1EEEEENS4_ILb1EjLj4EEEvLb0EEEEEEEbPKT_j.exit.thread, label %bb.h, !prof !711

bb.h:                                             ; preds = %bb.g
  %i.as = load ptr, ptr %i.k, align 8, !tbaa !504
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = sub i64 %i.at, %i.an
  %i.av = trunc i64 %i.au to i32
  %.not12.i.i.i.i.i.i = icmp ugt i32 %i.w, %i.av
  br i1 %.not12.i.i.i.i.i.i, label %_ZNK21hb_sanitize_context_t11check_arrayIN2OT14UnsizedArrayOfINS1_8OffsetToINS2_INS1_7NumTypeILb1EhLj1EEEEENS4_ILb1EjLj4EEEvLb0EEEEEEEbPKT_j.exit.thread, label %_ZNK2OT8OffsetToINS_14UnsizedArrayOfINS_7NumTypeILb1EhLj1EEEEENS2_ILb1EjLj4EEEvLb0EE8sanitizeIJRjEEEbP21hb_sanitize_context_tPKvDpOT_.exit, !prof !711

_ZNK2OT8OffsetToINS_14UnsizedArrayOfINS_7NumTypeILb1EhLj1EEEEENS2_ILb1EjLj4EEEvLb0EE8sanitizeIJRjEEEbP21hb_sanitize_context_tPKvDpOT_.exit: ; preds = %bb.h
  %i.aw = load i32, ptr %i.p, align 4, !tbaa !508
  %i.ax = sub i32 %i.aw, %i.w                     ; 2 uses
  store i32 %i.ax, ptr %i.p, align 4, !tbaa !508
  %i.ay = icmp sgt i32 %i.ax, 0
  br i1 %i.ay, label %bb.i, label %_ZNK21hb_sanitize_context_t11check_arrayIN2OT14UnsizedArrayOfINS1_8OffsetToINS2_INS1_7NumTypeILb1EhLj1EEEEENS4_ILb1EjLj4EEEvLb0EEEEEEEbPKT_j.exit.thread, !prof !672

bb.i:                                             ; preds = %bb.e, %_ZNK2OT8OffsetToINS_14UnsizedArrayOfINS_7NumTypeILb1EhLj1EEEEENS2_ILb1EjLj4EEEvLb0EE8sanitizeIJRjEEEbP21hb_sanitize_context_tPKvDpOT_.exit
  %i.az = phi i32 [ %i.x, %bb.e ], [ %i.aq, %_ZNK2OT8OffsetToINS_14UnsizedArrayOfINS_7NumTypeILb1EhLj1EEEEENS2_ILb1EjLj4EEEvLb0EE8sanitizeIJRjEEEbP21hb_sanitize_context_tPKvDpOT_.exit ]
  %i.ba = phi ptr [ %i.y, %bb.e ], [ %i.am, %_ZNK2OT8OffsetToINS_14UnsizedArrayOfINS_7NumTypeILb1EhLj1EEEEENS2_ILb1EjLj4EEEvLb0EE8sanitizeIJRjEEEbP21hb_sanitize_context_tPKvDpOT_.exit ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZNK21hb_sanitize_context_t11check_arrayIN2OT14UnsizedArrayOfINS1_8OffsetToINS2_INS1_7NumTypeILb1EhLj1EEEEENS4_ILb1EjLj4EEEvLb0EEEEEEEbPKT_j.exit.thread, label %bb.e, !llvm.loop !198

_ZNK21hb_sanitize_context_t11check_arrayIN2OT14UnsizedArrayOfINS1_8OffsetToINS2_INS1_7NumTypeILb1EhLj1EEEEENS4_ILb1EjLj4EEEvLb0EEEEEEEbPKT_j.exit.thread: ; preds = %bb.i, %_ZNK2OT8OffsetToINS_14UnsizedArrayOfINS_7NumTypeILb1EhLj1EEEEENS2_ILb1EjLj4EEEvLb0EE8sanitizeIJRjEEEbP21hb_sanitize_context_tPKvDpOT_.exit, %bb.f, %bb.g, %bb.h, %bb.d, %bb.b, %bb.c, %bb.a, %_ZNK21hb_sanitize_context_t11check_arrayIN2OT14UnsizedArrayOfINS1_8OffsetToINS2_INS1_7NumTypeILb1EhLj1EEEEENS4_ILb1EjLj4EEEvLb0EEEEEEEbPKT_j.exit
  %.4 = phi i1 [ false, %_ZNK21hb_sanitize_context_t11check_arrayIN2OT14UnsizedArrayOfINS1_8OffsetToINS2_INS1_7NumTypeILb1EhLj1EEEEENS4_ILb1EjLj4EEEvLb0EEEEEEEbPKT_j.exit ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.a ], [ true, %bb.d ], [ false, %bb.g ], [ false, %bb.f ], [ false, %_ZNK2OT8OffsetToINS_14UnsizedArrayOfINS_7NumTypeILb1EhLj1EEEEENS2_ILb1EjLj4EEEvLb0EE8sanitizeIJRjEEEbP21hb_sanitize_context_tPKvDpOT_.exit ], [ true, %bb.i ], [ false, %bb.h ]
  ret i1 %.4
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK3AAT13ChainSubtableINS_13ExtendedTypesEE8dispatchI21hb_sanitize_context_tJEEENT_8return_tEPS5_DpOT0_(ptr noundef nonnull align 1 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 1, !tbaa !278
  %i.c = lshr i32 %i.b, 24
  %trunc = trunc nuw i32 %i.c to i8
  switch i8 %trunc, label %_ZN21hb_sanitize_context_t8dispatchIN3AAT16LigatureSubtableINS1_13ExtendedTypesEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 4, label %bb.i
    i8 5, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = tail call noundef zeroext i1 @_ZNK3AAT10StateTableINS_13ExtendedTypesEvE8sanitizeEP21hb_sanitize_context_tPj(ptr noundef nonnull align 1 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(62) %1, ptr noundef null)
  br label %_ZN21hb_sanitize_context_t8dispatchIN3AAT16LigatureSubtableINS1_13ExtendedTypesEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit

bb.c:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = tail call noundef zeroext i1 @_ZNK3AAT18ContextualSubtableINS_13ExtendedTypesEE8sanitizeEP21hb_sanitize_context_t(ptr noundef nonnull align 1 dereferenceable(20) %i.f, ptr noundef nonnull align 8 dereferenceable(62) %1)
  br label %_ZN21hb_sanitize_context_t8dispatchIN3AAT16LigatureSubtableINS1_13ExtendedTypesEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit

bb.d:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !505
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = load i32, ptr %i.n, align 8, !tbaa !506
  %i.p = zext i32 %i.o to i64
  %.not4.i.i.i = icmp ugt i64 %i.m, %i.p
  br i1 %.not4.i.i.i, label %_ZN21hb_sanitize_context_t8dispatchIN3AAT16LigatureSubtableINS1_13ExtendedTypesEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.r = tail call noundef zeroext i1 @_ZNK3AAT10StateTableINS_13ExtendedTypesENS_13LigatureEntryILb1EE9EntryDataEE8sanitizeEP21hb_sanitize_context_tPj(ptr noundef nonnull align 1 dereferenceable(28) %i.q, ptr noundef nonnull align 8 dereferenceable(62) %1, ptr noundef null)
  br i1 %i.r, label %bb.f, label %_ZN21hb_sanitize_context_t8dispatchIN3AAT16LigatureSubtableINS1_13ExtendedTypesEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit

bb.f:                                             ; preds = %bb.e
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.t = load i32, ptr %i.s, align 1, !tbaa !278
  %.not.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i, label %_ZN21hb_sanitize_context_t8dispatchIN3AAT16LigatureSubtableINS1_13ExtendedTypesEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = load i32, ptr %i.u, align 1, !tbaa !278
  %.not3.i.i.i = icmp eq i32 %i.v, 0
  br i1 %.not3.i.i.i, label %_ZN21hb_sanitize_context_t8dispatchIN3AAT16LigatureSubtableINS1_13ExtendedTypesEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.x = load i32, ptr %i.w, align 1, !tbaa !278
  %i.y = icmp ne i32 %i.x, 0
  br label %_ZN21hb_sanitize_context_t8dispatchIN3AAT16LigatureSubtableINS1_13ExtendedTypesEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit

bb.i:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.aa = tail call noundef zeroext i1 @_ZNK3AAT6LookupIN2OT11HBGlyphID16EE8sanitizeEP21hb_sanitize_context_t(ptr noundef nonnull align 1 dereferenceable(13) %i.z, ptr noundef nonnull align 8 dereferenceable(62) %1)
  br label %_ZN21hb_sanitize_context_t8dispatchIN3AAT16LigatureSubtableINS1_13ExtendedTypesEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit

bb.j:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !505
  %i.ae = ptrtoint ptr %i.ab to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !506
  %i.aj = zext i32 %i.ai to i64
  %.not.i.i.i7 = icmp ugt i64 %i.ag, %i.aj
  br i1 %.not.i.i.i7, label %_ZN21hb_sanitize_context_t8dispatchIN3AAT16LigatureSubtableINS1_13ExtendedTypesEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.al = tail call noundef zeroext i1 @_ZNK3AAT10StateTableINS_13ExtendedTypesENS_17InsertionSubtableIS1_E9EntryDataEE8sanitizeEP21hb_sanitize_context_tPj(ptr noundef nonnull align 1 dereferenceable(20) %i.ak, ptr noundef nonnull align 8 dereferenceable(62) %1, ptr noundef null)
  br i1 %i.al, label %bb.l, label %_ZN21hb_sanitize_context_t8dispatchIN3AAT16LigatureSubtableINS1_13ExtendedTypesEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit

bb.l:                                             ; preds = %bb.k
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.an = load i32, ptr %i.am, align 1, !tbaa !278
  %i.ao = icmp ne i32 %i.an, 0
  br label %_ZN21hb_sanitize_context_t8dispatchIN3AAT16LigatureSubtableINS1_13ExtendedTypesEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit

_ZN21hb_sanitize_context_t8dispatchIN3AAT16LigatureSubtableINS1_13ExtendedTypesEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit: ; preds = %bb.l, %bb.k, %bb.j, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.a, %bb.i, %bb.c, %bb.b
  %.0 = phi i1 [ false, %bb.d ], [ %i.e, %bb.b ], [ %i.g, %bb.c ], [ true, %bb.a ], [ %i.aa, %bb.i ], [ false, %bb.g ], [ false, %bb.f ], [ %i.y, %bb.h ], [ false, %bb.e ], [ %i.ao, %bb.l ], [ false, %bb.k ], [ false, %bb.j ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK3AAT10StateTableINS_13ExtendedTypesEvE8sanitizeEP21hb_sanitize_context_tPj(ptr noundef nonnull align 1 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !505
  %i.d = ptrtoint ptr %i.a to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !506
  %i.i = zext i32 %i.h to i64
  %.not154 = icmp ugt i64 %i.f, %i.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br i1 %.not154, label %.critedge, label %bb.b, !prof !267

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.k = load i32, ptr %0, align 1, !tbaa !278
  %i.l = tail call noundef i32 @llvm.bswap.i32(i32 %i.k)
  %i.m = icmp ugt i32 %i.l, 3
  br i1 %i.m, label %bb.c, label %.critedge, !prof !268

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !505
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = load i32, ptr %i.g, align 8, !tbaa !506
  %i.t = zext i32 %i.s to i64
  %.not.i.not = icmp ugt i64 %i.r, %i.t
  br i1 %.not.i.not, label %.critedge, label %_ZNK2OT8OffsetToIN3AAT6LookupINS_7NumTypeILb1EtLj2EEEEENS3_ILb1EjLj4EEEvLb0EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit, !prof !267

_ZNK2OT8OffsetToIN3AAT6LookupINS_7NumTypeILb1EtLj2EEEEENS3_ILb1EjLj4EEEvLb0EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit: ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.v = load i32, ptr %i.u, align 1, !tbaa !278
  %i.w = tail call noundef i32 @llvm.bswap.i32(i32 %i.v)
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %i.x
  %i.z = tail call noundef zeroext i1 @_ZNK3AAT6LookupIN2OT7NumTypeILb1EtLj2EEEE8sanitizeEP21hb_sanitize_context_t(ptr noundef nonnull align 1 dereferenceable(13) %i.y, ptr noundef nonnull align 8 dereferenceable(62) %1)
  br i1 %i.z, label %bb.d, label %.critedge, !prof !672

bb.d:                                             ; preds = %_ZNK2OT8OffsetToIN3AAT6LookupINS_7NumTypeILb1EtLj2EEEEENS3_ILb1EjLj4EEEvLb0EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit
  %i.aa = load i32, ptr %i.n, align 1, !tbaa !278
  %i.ab = tail call noundef i32 @llvm.bswap.i32(i32 %i.aa)
  %i.ac = zext i32 %i.ab to i64                   ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %i.ac ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.af = load i32, ptr %i.ae, align 1, !tbaa !278
  %i.ag = tail call noundef i32 @llvm.bswap.i32(i32 %i.af)
  %i.ah = zext i32 %i.ag to i64                   ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %i.ah ; 3 uses
  %i.aj = load i32, ptr %0, align 1, !tbaa !278
  %i.ak = tail call noundef i32 @llvm.bswap.i32(i32 %i.aj) ; 5 uses
  %i.al = icmp slt i32 %i.ak, 0
  br i1 %i.al, label %.critedge, label %bb.e, !prof !267

bb.e:                                             ; preds = %bb.d
  %i.am = shl nuw i32 %i.ak, 1
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 6 uses
  %i.ao = ptrtoint ptr %i.ad to i64               ; 2 uses
  %i.ap = ptrtoint ptr %i.ai to i64               ; 2 uses
  %3 = ptrtoaddr ptr %0 to i64                    ; 3 uses
  %invariant.op = add i64 %3, %i.ac
  %invariant.op215 = add i64 %invariant.op, 2
  %invariant.op217 = add i64 %3, %i.ac
  %i.aq = xor i64 %3, -1
  %4 = ptrtoaddr ptr %0 to i64                    ; 3 uses
  %invariant.op218 = add i64 %4, %i.ah
  %invariant.op220 = add i64 %invariant.op218, 4
  %invariant.op222 = add i64 %4, %i.ah
  %i.ar = xor i64 %4, -1
  br label %.loopexit156

.loopexit:                                        ; preds = %.lr.ph167, %bb.n
  %.1146.lcssa = phi i32 [ %.0145172, %bb.n ], [ %.sroa.speculated, %.lr.ph167 ] ; 2 uses
  %.not183 = icmp sgt i32 %.264, %.1146.lcssa
  br i1 %.not183, label %bb.o, label %.loopexit156, !llvm.loop !5453

.loopexit156:                                     ; preds = %.loopexit, %bb.e
  %.062174 = phi i32 [ 0, %bb.e ], [ %.264, %.loopexit ] ; 4 uses
  %.0145172 = phi i32 [ 0, %bb.e ], [ %.1146.lcssa, %.loopexit ] ; 6 uses
  %.0147170 = phi i32 [ 0, %bb.e ], [ %.5150, %.loopexit ] ; 7 uses
  %.not78 = icmp sgt i32 %.062174, %.0145172
  br i1 %.not78, label %.loopexit184, label %bb.f

bb.f:                                             ; preds = %.loopexit156
  %i.as = add nuw nsw i32 %.0145172, 1            ; 6 uses
  %i.at = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.as, i32 %i.am) ; 2 uses
  %i.au = extractvalue { i32, i1 } %i.at, 0       ; 2 uses
  %i.av = extractvalue { i32, i1 } %i.at, 1
  br i1 %i.av, label %.critedge, label %bb.g, !prof !711

bb.g:                                             ; preds = %bb.f
  %i.aw = load ptr, ptr %i.b, align 8, !tbaa !505
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = sub i64 %i.ao, %i.ax
  %i.az = load i32, ptr %i.g, align 8, !tbaa !506
  %i.ba = zext i32 %i.az to i64
  %.not.i.i83 = icmp ugt i64 %i.ay, %i.ba
  br i1 %.not.i.i83, label %.critedge, label %bb.h, !prof !711

bb.h:                                             ; preds = %bb.g
  %i.bb = load ptr, ptr %i.j, align 8, !tbaa !504
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = sub i64 %i.bc, %i.ao
  %i.be = trunc i64 %i.bd to i32
  %.not12.i.i84 = icmp ugt i32 %i.au, %i.be
  br i1 %.not12.i.i84, label %.critedge, label %_ZNK21hb_sanitize_context_t11check_rangeIN2OT7NumTypeILb1EtLj2EEEEEbPKT_jj.exit85, !prof !711

_ZNK21hb_sanitize_context_t11check_rangeIN2OT7NumTypeILb1EtLj2EEEEEbPKT_jj.exit85: ; preds = %bb.h
  %i.bf = load i32, ptr %i.an, align 4, !tbaa !508
  %i.bg = sub i32 %i.bf, %i.au                    ; 3 uses
  store i32 %i.bg, ptr %i.an, align 4, !tbaa !508
  %i.bh = icmp sgt i32 %i.bg, 0
  br i1 %i.bh, label %bb.i, label %.critedge, !prof !672

bb.i:                                             ; preds = %_ZNK21hb_sanitize_context_t11check_rangeIN2OT7NumTypeILb1EtLj2EEEEEbPKT_jj.exit85
  %i.bi = xor i32 %.0145172, -1
  %.neg79 = add nsw i32 %.062174, %i.bi
  %i.bj = add i32 %.neg79, %i.bg                  ; 2 uses
  store i32 %i.bj, ptr %i.an, align 4, !tbaa !508
  %i.bk = icmp slt i32 %i.bj, 1
  br i1 %i.bk, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bl = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.as, i32 %i.ak)
  %i.bm = extractvalue { i32, i1 } %i.bl, 1
  br i1 %i.bm, label %.critedge, label %bb.k, !prof !267

bb.k:                                             ; preds = %bb.j
  %i.bn = mul i32 %i.as, %i.ak
  %i.bo = zext i32 %i.bn to i64
  %.idx80 = shl nuw nsw i64 %i.bo, 1              ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.idx80
  %i.bq = mul i32 %.062174, %i.ak
  %i.br = zext i32 %i.bq to i64
  %.idx = shl nuw nsw i64 %i.br, 1                ; 4 uses
  %i.bs = icmp samesign ult i64 %.idx, %.idx80
  br i1 %i.bs, label %.lr.ph162.preheader, label %.loopexit184

.lr.ph162.preheader:                              ; preds = %bb.k
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.idx ; 3 uses
  %.reass216 = add i64 %.idx, %invariant.op215
  %.reass = add i64 %.idx80, %invariant.op217
  %i.bu = tail call i64 @llvm.umax.i64(i64 %.reass216, i64 %.reass)
  %i.bv = add i64 %i.bu, %i.aq
  %i.bw = add nuw nsw i64 %.idx, %i.ac
  %i.bx = sub i64 %i.bv, %i.bw                    ; 2 uses
  %i.by = lshr i64 %i.bx, 1
  %i.bz = add nuw i64 %i.by, 1                    ; 2 uses
  %min.iters.check190 = icmp ult i64 %i.bx, 14
  br i1 %min.iters.check190, label %.lr.ph162.preheader208, label %vector.ph191

vector.ph191:                                     ; preds = %.lr.ph162.preheader
  %n.vec192 = and i64 %i.bz, -8                   ; 3 uses
  %i.ca = shl i64 %n.vec192, 1
  %i.cb = getelementptr i8, ptr %i.bt, i64 %i.ca
  %broadcast.splatinsert193 = insertelement <4 x i32> poison, i32 %.0147170, i64 0
  %broadcast.splat194 = shufflevector <4 x i32> %broadcast.splatinsert193, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body195

vector.body195:                                   ; preds = %vector.body195, %vector.ph191
  %index196 = phi i64 [ 0, %vector.ph191 ], [ %index.next201, %vector.body195 ] ; 2 uses
  %vec.phi197 = phi <4 x i32> [ %broadcast.splat194, %vector.ph191 ], [ %i.ck, %vector.body195 ]
  %vec.phi198 = phi <4 x i32> [ %broadcast.splat194, %vector.ph191 ], [ %i.cl, %vector.body195 ]
  %i.cc = shl i64 %index196, 1
  %next.gep199 = getelementptr i8, ptr %i.bt, i64 %i.cc ; 2 uses
  %i.cd = getelementptr i8, ptr %next.gep199, i64 8
  %wide.load = load <4 x i16>, ptr %next.gep199, align 1, !tbaa !283
  %wide.load200 = load <4 x i16>, ptr %i.cd, align 1, !tbaa !283
  %i.ce = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %wide.load)
  %i.cf = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %wide.load200)
  %i.cg = zext <4 x i16> %i.ce to <4 x i32>
  %i.ch = zext <4 x i16> %i.cf to <4 x i32>
  %i.ci = add nuw nsw <4 x i32> %i.cg, splat (i32 1)
  %i.cj = add nuw nsw <4 x i32> %i.ch, splat (i32 1)
  %i.ck = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi197, <4 x i32> %i.ci) ; 2 uses
  %i.cl = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi198, <4 x i32> %i.cj) ; 2 uses
  %index.next201 = add nuw i64 %index196, 8       ; 2 uses
  %i.cm = icmp eq i64 %index.next201, %n.vec192
  br i1 %i.cm, label %middle.block202, label %vector.body195, !llvm.loop !5454

middle.block202:                                  ; preds = %vector.body195
  %rdx.minmax203 = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.ck, <4 x i32> %i.cl)
  %i.cn = tail call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %rdx.minmax203) ; 2 uses
  %cmp.n = icmp eq i64 %i.bz, %n.vec192
  br i1 %cmp.n, label %.loopexit184, label %.lr.ph162.preheader208

.lr.ph162.preheader208:                           ; preds = %.lr.ph162.preheader, %middle.block202
  %.058161.ph = phi ptr [ %i.bt, %.lr.ph162.preheader ], [ %i.cb, %middle.block202 ]
  %.4160.ph = phi i32 [ %.0147170, %.lr.ph162.preheader ], [ %i.cn, %middle.block202 ]
  br label %.lr.ph162

.lr.ph162:                                        ; preds = %.lr.ph162.preheader208, %.lr.ph162
  %.058161 = phi ptr [ %i.cs, %.lr.ph162 ], [ %.058161.ph, %.lr.ph162.preheader208 ] ; 2 uses
  %.4160 = phi i32 [ %.sroa.speculated100, %.lr.ph162 ], [ %.4160.ph, %.lr.ph162.preheader208 ]
  %i.co = load i16, ptr %.058161, align 1, !tbaa !283
  %i.cp = tail call noundef i16 @llvm.bswap.i16(i16 %i.co)
  %i.cq = zext i16 %i.cp to i32
  %i.cr = add nuw nsw i32 %i.cq, 1
  %.sroa.speculated100 = tail call i32 @llvm.umax.i32(i32 %.4160, i32 %i.cr) ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.058161, i64 2 ; 2 uses
  %i.ct = icmp ult ptr %i.cs, %i.bp
  br i1 %i.ct, label %.lr.ph162, label %.loopexit184, !llvm.loop !5455

.loopexit184:                                     ; preds = %.lr.ph162, %middle.block202, %.loopexit156, %bb.k
  %.5150 = phi i32 [ %.0147170, %.loopexit156 ], [ %.0147170, %bb.k ], [ %i.cn, %middle.block202 ], [ %.sroa.speculated100, %.lr.ph162 ] ; 6 uses
  %.264 = phi i32 [ %.062174, %.loopexit156 ], [ %i.as, %bb.k ], [ %i.as, %middle.block202 ], [ %i.as, %.lr.ph162 ] ; 2 uses
  %i.cu = shl nuw nsw i32 %.5150, 2               ; 2 uses
  %i.cv = load ptr, ptr %i.b, align 8, !tbaa !505
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = sub i64 %i.ap, %i.cw
  %i.cy = load i32, ptr %i.g, align 8, !tbaa !506
  %i.cz = zext i32 %i.cy to i64
  %.not.i.i.i = icmp ugt i64 %i.cx, %i.cz
  br i1 %.not.i.i.i, label %.critedge, label %bb.l, !prof !711

bb.l:                                             ; preds = %.loopexit184
  %i.da = load ptr, ptr %i.j, align 8, !tbaa !504
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = sub i64 %i.db, %i.ap
  %i.dd = trunc i64 %i.dc to i32
  %.not12.i.i.i = icmp ugt i32 %i.cu, %i.dd
  br i1 %.not12.i.i.i, label %.critedge, label %_ZNK21hb_sanitize_context_t11check_arrayIN3AAT5EntryIvEEEEbPKT_j.exit, !prof !711

_ZNK21hb_sanitize_context_t11check_arrayIN3AAT5EntryIvEEEEbPKT_j.exit: ; preds = %bb.l
  %i.de = load i32, ptr %i.an, align 4, !tbaa !508
  %i.df = sub i32 %i.de, %i.cu                    ; 3 uses
  store i32 %i.df, ptr %i.an, align 4, !tbaa !508
  %i.dg = icmp sgt i32 %i.df, 0
  br i1 %i.dg, label %bb.m, label %.critedge, !prof !672

bb.m:                                             ; preds = %_ZNK21hb_sanitize_context_t11check_arrayIN3AAT5EntryIvEEEEbPKT_j.exit
  %.neg81 = sub nsw i32 %.0147170, %.5150
  %i.dh = add i32 %i.df, %.neg81                  ; 2 uses
  store i32 %i.dh, ptr %i.an, align 4, !tbaa !508
  %i.di = icmp slt i32 %i.dh, 1
  br i1 %i.di, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dj = zext i32 %.5150 to i64                  ; 2 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.dj
  %i.dl = icmp ult i32 %.0147170, %.5150
  br i1 %i.dl, label %.lr.ph167.preheader, label %.loopexit

.lr.ph167.preheader:                              ; preds = %bb.n
  %i.dm = zext i32 %.0147170 to i64               ; 2 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.dm ; 4 uses
  %i.do = shl nuw nsw i64 %i.dm, 2                ; 2 uses
  %.reass221 = add i64 %i.do, %invariant.op220
  %i.dp = shl nuw nsw i64 %i.dj, 2
  %.reass223 = add i64 %i.dp, %invariant.op222
  %i.dq = tail call i64 @llvm.umax.i64(i64 %.reass221, i64 %.reass223)
  %i.dr = add i64 %i.dq, %i.ar
  %i.ds = add nuw nsw i64 %i.do, %i.ah
  %i.dt = sub i64 %i.dr, %i.ds                    ; 2 uses
  %min.iters.check = icmp ult i64 %i.dt, 32
  br i1 %min.iters.check, label %.lr.ph167.preheader207, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph167.preheader
  %i.du = lshr i64 %i.dt, 2
  %i.dv = add nuw nsw i64 %i.du, 1                ; 2 uses
  %i.dw = and i64 %i.dv, 7                        ; 2 uses
  %i.dx = icmp eq i64 %i.dw, 0
  %i.dy = select i1 %i.dx, i64 8, i64 %i.dw
  %n.vec = sub nsw i64 %i.dv, %i.dy               ; 2 uses
  %i.dz = shl i64 %n.vec, 2
  %i.ea = getelementptr i8, ptr %i.dn, i64 %i.dz
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.0145172, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body
end_hunk_0
begin_hunk_1_@_ZNK3AAT13LookupFormat4IN2OT7NumTypeILb1EtLj2EEEE8sanitizeEP21hb_sanitize_context_t:bb.a
  %i.cc = load i16, ptr %i.cb, align 1, !tbaa !283
  %i.cd = tail call noundef i16 @llvm.bswap.i16(i16 %i.cc) ; 2 uses
  %i.ce = load i16, ptr %.0.i5, align 1, !tbaa !283
  %i.cf = tail call noundef i16 @llvm.bswap.i16(i16 %i.ce) ; 2 uses
  %.not.i6 = icmp ugt i16 %i.cd, %i.cf
  br i1 %.not.i6, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_7NumTypeILb1EtLj2EEEEEE8sanitizeIJPKNS1_13LookupFormat4IS4_EEEEEbP21hb_sanitize_context_tDpOT_.exit, label %bb.m, !prof !711

bb.m:                                             ; preds = %bb.l
  %i.cg = load ptr, ptr %i.c, align 8, !tbaa !505
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = sub i64 %i.bw, %i.ch
  %i.cj = load i32, ptr %i.h, align 8, !tbaa !506
  %i.ck = zext i32 %i.cj to i64
  %.not.i.not.i = icmp ugt i64 %i.ci, %i.ck
  br i1 %.not.i.not.i, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_7NumTypeILb1EtLj2EEEEEE8sanitizeIJPKNS1_13LookupFormat4IS4_EEEEEbP21hb_sanitize_context_tDpOT_.exit, label %bb.n, !prof !267

bb.n:                                             ; preds = %bb.m
  %narrow.i = sub nuw i16 %i.cf, %i.cd
  %i.cl = zext i16 %narrow.i to i32
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.cm = shl nuw nsw i32 %i.cl, 1
  %i.cn = add nuw nsw i32 %i.cm, 2                ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.0.i5, i64 4
  %i.cp = load i16, ptr %i.co, align 1, !tbaa !283
  %i.cq = tail call noundef i16 @llvm.bswap.i16(i16 %i.cp)
  %i.cr = zext i16 %i.cq to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 %i.cr
  %i.ct = load ptr, ptr %i.c, align 8, !tbaa !505
  %i.cu = ptrtoint ptr %i.cs to i64               ; 2 uses
  %i.cv = ptrtoint ptr %i.ct to i64
  %i.cw = sub i64 %i.cu, %i.cv
  %i.cx = load i32, ptr %i.h, align 8, !tbaa !506
  %i.cy = zext i32 %i.cx to i64
  %.not.i.i.i.i.i.i.i = icmp ugt i64 %i.cw, %i.cy
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_7NumTypeILb1EtLj2EEEEEE8sanitizeIJPKNS1_13LookupFormat4IS4_EEEEEbP21hb_sanitize_context_tDpOT_.exit, label %bb.o, !prof !711

bb.o:                                             ; preds = %bb.n
  %i.cz = load ptr, ptr %i.y, align 8, !tbaa !504
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = sub i64 %i.da, %i.cu
  %i.dc = trunc i64 %i.db to i32
  %.not12.i.i.i.i.i.i.i = icmp ugt i32 %i.cn, %i.dc
  br i1 %.not12.i.i.i.i.i.i.i, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_7NumTypeILb1EtLj2EEEEEE8sanitizeIJPKNS1_13LookupFormat4IS4_EEEEEbP21hb_sanitize_context_tDpOT_.exit, label %_ZNK3AAT18LookupSegmentArrayIN2OT7NumTypeILb1EtLj2EEEE8sanitizeEP21hb_sanitize_context_tPKv.exit, !prof !711

_ZNK3AAT18LookupSegmentArrayIN2OT7NumTypeILb1EtLj2EEEE8sanitizeEP21hb_sanitize_context_tPKv.exit: ; preds = %bb.o
  %i.dd = load i32, ptr %i.ad, align 4, !tbaa !508
  %i.de = sub i32 %i.dd, %i.cn                    ; 2 uses
  store i32 %i.de, ptr %i.ad, align 4, !tbaa !508
  %i.df = icmp sgt i32 %i.de, 0
  br i1 %i.df, label %bb.h, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_7NumTypeILb1EtLj2EEEEEE8sanitizeIJPKNS1_13LookupFormat4IS4_EEEEEbP21hb_sanitize_context_tDpOT_.exit, !prof !672

_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_7NumTypeILb1EtLj2EEEEEE8sanitizeIJPKNS1_13LookupFormat4IS4_EEEEEbP21hb_sanitize_context_tDpOT_.exit: ; preds = %bb.h, %_ZNK3AAT18LookupSegmentArrayIN2OT7NumTypeILb1EtLj2EEEE8sanitizeEP21hb_sanitize_context_tPKv.exit, %bb.l, %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_7NumTypeILb1EtLj2EEEEEEixEi.exit, %bb.m, %bb.n, %bb.o, %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_7NumTypeILb1EtLj2EEEEEE10get_lengthEv.exit, %bb.c, %bb.d, %bb.a, %bb.b, %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_7NumTypeILb1EtLj2EEEEEE16sanitize_shallowEP21hb_sanitize_context_t.exit
  %.2.i = phi i1 [ false, %bb.c ], [ false, %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_7NumTypeILb1EtLj2EEEEEE16sanitize_shallowEP21hb_sanitize_context_t.exit ], [ false, %bb.d ], [ false, %bb.b ], [ false, %bb.a ], [ true, %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_7NumTypeILb1EtLj2EEEEEE10get_lengthEv.exit ], [ false, %bb.n ], [ false, %bb.m ], [ false, %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_7NumTypeILb1EtLj2EEEEEEixEi.exit ], [ false, %bb.l ], [ false, %_ZNK3AAT18LookupSegmentArrayIN2OT7NumTypeILb1EtLj2EEEE8sanitizeEP21hb_sanitize_context_tPKv.exit ], [ true, %bb.h ], [ false, %bb.o ]
  ret i1 %.2.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK3AAT18ContextualSubtableINS_13ExtendedTypesEE8sanitizeEP21hb_sanitize_context_t(ptr noundef nonnull align 1 dereferenceable(20) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  store i32 0, ptr %i.a, align 4, !tbaa !324
  %i.b = call noundef zeroext i1 @_ZNK3AAT10StateTableINS_13ExtendedTypesENS_18ContextualSubtableIS1_E9EntryDataEE8sanitizeEP21hb_sanitize_context_tPj(ptr noundef nonnull align 1 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull %i.a)
  br i1 %i.b, label %bb.b, label %_ZNK2OT8OffsetToINS_23UnsizedListOfOffset16ToIN3AAT6LookupINS_11HBGlyphID16EEENS_7NumTypeILb1EjLj4EEEvLb0EEES7_vLb0EE8sanitizeIJRjEEEbP21hb_sanitize_context_tPKvDpOT_.exit, !prof !268

bb.b:                                             ; preds = %bb.a
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 1, !tbaa !278
  %i.e = call noundef i32 @llvm.bswap.i32(i32 %i.d)
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %i.f
  %i.h = load i32, ptr %i.a, align 4, !tbaa !324  ; 2 uses
  %.not32 = icmp eq i32 %i.h, 0
  br i1 %.not32, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %wide.trip.count = zext i32 %i.h to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %.029.lcssa = phi i32 [ 0, %bb.b ], [ %.2, %.lr.ph ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !505
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !506
  %i.q = zext i32 %i.p to i64
  %.not.i.not = icmp ugt i64 %i.n, %i.q
  br i1 %.not.i.not, label %_ZNK2OT8OffsetToINS_23UnsizedListOfOffset16ToIN3AAT6LookupINS_11HBGlyphID16EEENS_7NumTypeILb1EjLj4EEEvLb0EEES7_vLb0EE8sanitizeIJRjEEEbP21hb_sanitize_context_tPKvDpOT_.exit, label %bb.c, !prof !267

bb.c:                                             ; preds = %._crit_edge
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.s = load i32, ptr %i.r, align 1, !tbaa !278
  %i.t = call noundef i32 @llvm.bswap.i32(i32 %i.s)
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %i.u ; 3 uses
  %i.w = shl nuw nsw i32 %.029.lcssa, 2           ; 2 uses
  %i.x = load ptr, ptr %i.j, align 8, !tbaa !505
  %i.y = ptrtoint ptr %i.v to i64                 ; 2 uses
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = load i32, ptr %i.o, align 8, !tbaa !506
  %i.ac = zext i32 %i.ab to i64
  %.not.i.i.i.i.i.i.i = icmp ugt i64 %i.aa, %i.ac
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNK2OT8OffsetToINS_23UnsizedListOfOffset16ToIN3AAT6LookupINS_11HBGlyphID16EEENS_7NumTypeILb1EjLj4EEEvLb0EEES7_vLb0EE8sanitizeIJRjEEEbP21hb_sanitize_context_tPKvDpOT_.exit, label %bb.d, !prof !711

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !504
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = sub i64 %i.af, %i.y
  %i.ah = trunc i64 %i.ag to i32
  %.not12.i.i.i.i.i.i.i = icmp ugt i32 %i.w, %i.ah
  br i1 %.not12.i.i.i.i.i.i.i, label %_ZNK2OT8OffsetToINS_23UnsizedListOfOffset16ToIN3AAT6LookupINS_11HBGlyphID16EEENS_7NumTypeILb1EjLj4EEEvLb0EEES7_vLb0EE8sanitizeIJRjEEEbP21hb_sanitize_context_tPKvDpOT_.exit, label %_ZNK2OT14UnsizedArrayOfINS_8OffsetToIN3AAT6LookupINS_11HBGlyphID16EEENS_7NumTypeILb1EjLj4EEEvLb0EEEE16sanitize_shallowEP21hb_sanitize_context_tj.exit.i.i.i, !prof !711

_ZNK2OT14UnsizedArrayOfINS_8OffsetToIN3AAT6LookupINS_11HBGlyphID16EEENS_7NumTypeILb1EjLj4EEEvLb0EEEE16sanitize_shallowEP21hb_sanitize_context_tj.exit.i.i.i: ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !508
  %i.ak = sub i32 %i.aj, %i.w                     ; 2 uses
  store i32 %i.ak, ptr %i.ai, align 4, !tbaa !508
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %bb.e, label %_ZNK2OT8OffsetToINS_23UnsizedListOfOffset16ToIN3AAT6LookupINS_11HBGlyphID16EEENS_7NumTypeILb1EjLj4EEEvLb0EEES7_vLb0EE8sanitizeIJRjEEEbP21hb_sanitize_context_tPKvDpOT_.exit, !prof !672

bb.e:                                             ; preds = %_ZNK2OT14UnsizedArrayOfINS_8OffsetToIN3AAT6LookupINS_11HBGlyphID16EEENS_7NumTypeILb1EjLj4EEEvLb0EEEE16sanitize_shallowEP21hb_sanitize_context_tj.exit.i.i.i
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %.not.i6.not.i.i.i = icmp eq i32 %.029.lcssa, 0
  br i1 %.not.i6.not.i.i.i, label %_ZNK2OT8OffsetToINS_23UnsizedListOfOffset16ToIN3AAT6LookupINS_11HBGlyphID16EEENS_7NumTypeILb1EjLj4EEEvLb0EEES7_vLb0EE8sanitizeIJRjEEEbP21hb_sanitize_context_tPKvDpOT_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e
  %wide.trip.count.i.i.i = zext nneg i32 %.029.lcssa to i64
  br label %bb.g

bb.f:                                             ; preds = %_ZN21hb_sanitize_context_t8dispatchIN2OT8OffsetToIN3AAT6LookupINS1_11HBGlyphID16EEENS1_7NumTypeILb1EjLj4EEEvLb0EEEJPKNS1_23UnsizedListOfOffset16ToIS6_S8_vLb0EEEEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSG_.exit.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %_ZNK2OT8OffsetToINS_23UnsizedListOfOffset16ToIN3AAT6LookupINS_11HBGlyphID16EEENS_7NumTypeILb1EjLj4EEEvLb0EEES7_vLb0EE8sanitizeIJRjEEEbP21hb_sanitize_context_tPKvDpOT_.exit, label %bb.g, !llvm.loop !5459

bb.g:                                             ; preds = %bb.f, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.f ] ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.i.i.i ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.ao = load ptr, ptr %i.j, align 8, !tbaa !505
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = load i32, ptr %i.o, align 8, !tbaa !506
  %i.at = zext i32 %i.as to i64
  %.not.i.not.i.i.i.i.i = icmp ugt i64 %i.ar, %i.at
  br i1 %.not.i.not.i.i.i.i.i, label %_ZNK2OT8OffsetToINS_23UnsizedListOfOffset16ToIN3AAT6LookupINS_11HBGlyphID16EEENS_7NumTypeILb1EjLj4EEEvLb0EEES7_vLb0EE8sanitizeIJRjEEEbP21hb_sanitize_context_tPKvDpOT_.exit, label %_ZN21hb_sanitize_context_t8dispatchIN2OT8OffsetToIN3AAT6LookupINS1_11HBGlyphID16EEENS1_7NumTypeILb1EjLj4EEEvLb0EEEJPKNS1_23UnsizedListOfOffset16ToIS6_S8_vLb0EEEEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSG_.exit.i.i.i, !prof !267

_ZN21hb_sanitize_context_t8dispatchIN2OT8OffsetToIN3AAT6LookupINS1_11HBGlyphID16EEENS1_7NumTypeILb1EjLj4EEEvLb0EEEJPKNS1_23UnsizedListOfOffset16ToIS6_S8_vLb0EEEEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSG_.exit.i.i.i: ; preds = %bb.g
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.au = load i32, ptr %i.am, align 1, !tbaa !278
  %i.av = call noundef i32 @llvm.bswap.i32(i32 %i.au)
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.aw
  %i.ay = call noundef zeroext i1 @_ZNK3AAT6LookupIN2OT11HBGlyphID16EE8sanitizeEP21hb_sanitize_context_t(ptr noundef nonnull align 1 dereferenceable(13) %i.ax, ptr noundef nonnull align 8 dereferenceable(62) %1)
  br i1 %i.ay, label %bb.f, label %_ZNK2OT8OffsetToINS_23UnsizedListOfOffset16ToIN3AAT6LookupINS_11HBGlyphID16EEENS_7NumTypeILb1EjLj4EEEvLb0EEES7_vLb0EE8sanitizeIJRjEEEbP21hb_sanitize_context_tPKvDpOT_.exit, !prof !672

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.02930 = phi i32 [ 0, %.lr.ph.preheader ], [ %.2, %.lr.ph ] ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.bb = load i16, ptr %i.ba, align 1, !tbaa !283 ; 2 uses
  %i.bc = call noundef i16 @llvm.bswap.i16(i16 %i.bb)
  %i.bd = zext i16 %i.bc to i32
  %.not = icmp eq i16 %i.bb, -1
  %i.be = add nuw nsw i32 %i.bd, 1
  %.sroa.speculated18 = call i32 @llvm.umax.i32(i32 %.02930, i32 %i.be)
  %.1 = select i1 %.not, i32 %.02930, i32 %.sroa.speculated18 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.az, i64 6
  %i.bg = load i16, ptr %i.bf, align 1, !tbaa !283 ; 2 uses
  %i.bh = call noundef i16 @llvm.bswap.i16(i16 %i.bg)
  %i.bi = zext i16 %i.bh to i32
  %.not12 = icmp eq i16 %i.bg, -1
  %i.bj = add nuw nsw i32 %i.bi, 1
  %.sroa.speculated = call i32 @llvm.umax.i32(i32 %.1, i32 %i.bj)
  %.2 = select i1 %.not12, i32 %.1, i32 %.sroa.speculated ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !5460

_ZNK2OT8OffsetToINS_23UnsizedListOfOffset16ToIN3AAT6LookupINS_11HBGlyphID16EEENS_7NumTypeILb1EjLj4EEEvLb0EEES7_vLb0EE8sanitizeIJRjEEEbP21hb_sanitize_context_tPKvDpOT_.exit: ; preds = %bb.f, %bb.g, %_ZN21hb_sanitize_context_t8dispatchIN2OT8OffsetToIN3AAT6LookupINS1_11HBGlyphID16EEENS1_7NumTypeILb1EjLj4EEEvLb0EEEJPKNS1_23UnsizedListOfOffset16ToIS6_S8_vLb0EEEEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSG_.exit.i.i.i, %._crit_edge, %bb.c, %bb.d, %_ZNK2OT14UnsizedArrayOfINS_8OffsetToIN3AAT6LookupINS_11HBGlyphID16EEENS_7NumTypeILb1EjLj4EEEvLb0EEEE16sanitize_shallowEP21hb_sanitize_context_tj.exit.i.i.i, %bb.e, %bb.a
  %.011 = phi i1 [ false, %bb.a ], [ false, %._crit_edge ], [ false, %bb.c ], [ false, %_ZNK2OT14UnsizedArrayOfINS_8OffsetToIN3AAT6LookupINS_11HBGlyphID16EEENS_7NumTypeILb1EjLj4EEEvLb0EEEE16sanitize_shallowEP21hb_sanitize_context_tj.exit.i.i.i ], [ false, %bb.d ], [ true, %bb.e ], [ false, %bb.g ], [ true, %bb.f ], [ false, %_ZN21hb_sanitize_context_t8dispatchIN2OT8OffsetToIN3AAT6LookupINS1_11HBGlyphID16EEENS1_7NumTypeILb1EjLj4EEEvLb0EEEJPKNS1_23UnsizedListOfOffset16ToIS6_S8_vLb0EEEEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSG_.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  ret i1 %.011
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK3AAT10StateTableINS_13ExtendedTypesENS_18ContextualSubtableIS1_E9EntryDataEE8sanitizeEP21hb_sanitize_context_tPj(ptr noundef nonnull align 1 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !505
  %i.d = ptrtoint ptr %i.a to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !506
  %i.i = zext i32 %i.h to i64
  %.not154 = icmp ugt i64 %i.f, %i.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br i1 %.not154, label %.critedge, label %bb.b, !prof !267

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.k = load i32, ptr %0, align 1, !tbaa !278
  %i.l = tail call noundef i32 @llvm.bswap.i32(i32 %i.k)
  %i.m = icmp ugt i32 %i.l, 3
  br i1 %i.m, label %bb.c, label %.critedge, !prof !268

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !505
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = load i32, ptr %i.g, align 8, !tbaa !506
  %i.t = zext i32 %i.s to i64
  %.not.i.not = icmp ugt i64 %i.r, %i.t
  br i1 %.not.i.not, label %.critedge, label %_ZNK2OT8OffsetToIN3AAT6LookupINS_7NumTypeILb1EtLj2EEEEENS3_ILb1EjLj4EEEvLb0EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit, !prof !267

_ZNK2OT8OffsetToIN3AAT6LookupINS_7NumTypeILb1EtLj2EEEEENS3_ILb1EjLj4EEEvLb0EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit: ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.v = load i32, ptr %i.u, align 1, !tbaa !278
  %i.w = tail call noundef i32 @llvm.bswap.i32(i32 %i.v)
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %i.x
  %i.z = tail call noundef zeroext i1 @_ZNK3AAT6LookupIN2OT7NumTypeILb1EtLj2EEEE8sanitizeEP21hb_sanitize_context_t(ptr noundef nonnull align 1 dereferenceable(13) %i.y, ptr noundef nonnull align 8 dereferenceable(62) %1)
  br i1 %i.z, label %bb.d, label %.critedge, !prof !672

bb.d:                                             ; preds = %_ZNK2OT8OffsetToIN3AAT6LookupINS_7NumTypeILb1EtLj2EEEEENS3_ILb1EjLj4EEEvLb0EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit
  %i.aa = load i32, ptr %i.n, align 1, !tbaa !278
  %i.ab = tail call noundef i32 @llvm.bswap.i32(i32 %i.aa)
  %i.ac = zext i32 %i.ab to i64                   ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %i.ac ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.af = load i32, ptr %i.ae, align 1, !tbaa !278
  %i.ag = tail call noundef i32 @llvm.bswap.i32(i32 %i.af)
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %i.ah ; 3 uses
  %i.aj = load i32, ptr %0, align 1, !tbaa !278
  %i.ak = tail call noundef i32 @llvm.bswap.i32(i32 %i.aj) ; 5 uses
  %i.al = icmp slt i32 %i.ak, 0
  br i1 %i.al, label %.critedge, label %bb.e, !prof !267

bb.e:                                             ; preds = %bb.d
  %i.am = shl nuw i32 %i.ak, 1
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 6 uses
  %i.ao = ptrtoint ptr %i.ad to i64               ; 2 uses
  %i.ap = ptrtoint ptr %i.ai to i64               ; 2 uses
  %3 = ptrtoaddr ptr %0 to i64                    ; 3 uses
  %invariant.op = add i64 %3, %i.ac
  %invariant.op190 = add i64 %invariant.op, 2
  %invariant.op192 = add i64 %3, %i.ac
  %i.aq = xor i64 %3, -1
  br label %.loopexit156

.loopexit:                                        ; preds = %.lr.ph167, %bb.n
  %.1146.lcssa = phi i32 [ %.0145172, %bb.n ], [ %.sroa.speculated, %.lr.ph167 ] ; 2 uses
  %.not183 = icmp sgt i32 %.264, %.1146.lcssa
  br i1 %.not183, label %bb.o, label %.loopexit156, !llvm.loop !5461

.loopexit156:                                     ; preds = %.loopexit, %bb.e
  %.062174 = phi i32 [ 0, %bb.e ], [ %.264, %.loopexit ] ; 4 uses
  %.0145172 = phi i32 [ 0, %bb.e ], [ %.1146.lcssa, %.loopexit ] ; 5 uses
  %.0147170 = phi i32 [ 0, %bb.e ], [ %.5150, %.loopexit ] ; 7 uses
  %.not78 = icmp sgt i32 %.062174, %.0145172
  br i1 %.not78, label %.loopexit184, label %bb.f

bb.f:                                             ; preds = %.loopexit156
  %i.ar = add nuw nsw i32 %.0145172, 1            ; 6 uses
  %i.as = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.ar, i32 %i.am) ; 2 uses
  %i.at = extractvalue { i32, i1 } %i.as, 0       ; 2 uses
  %i.au = extractvalue { i32, i1 } %i.as, 1
  br i1 %i.au, label %.critedge, label %bb.g, !prof !711

bb.g:                                             ; preds = %bb.f
  %i.av = load ptr, ptr %i.b, align 8, !tbaa !505
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = sub i64 %i.ao, %i.aw
  %i.ay = load i32, ptr %i.g, align 8, !tbaa !506
  %i.az = zext i32 %i.ay to i64
  %.not.i.i83 = icmp ugt i64 %i.ax, %i.az
  br i1 %.not.i.i83, label %.critedge, label %bb.h, !prof !711

bb.h:                                             ; preds = %bb.g
  %i.ba = load ptr, ptr %i.j, align 8, !tbaa !504
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = sub i64 %i.bb, %i.ao
  %i.bd = trunc i64 %i.bc to i32
  %.not12.i.i84 = icmp ugt i32 %i.at, %i.bd
  br i1 %.not12.i.i84, label %.critedge, label %_ZNK21hb_sanitize_context_t11check_rangeIN2OT7NumTypeILb1EtLj2EEEEEbPKT_jj.exit85, !prof !711

_ZNK21hb_sanitize_context_t11check_rangeIN2OT7NumTypeILb1EtLj2EEEEEbPKT_jj.exit85: ; preds = %bb.h
  %i.be = load i32, ptr %i.an, align 4, !tbaa !508
  %i.bf = sub i32 %i.be, %i.at                    ; 3 uses
  store i32 %i.bf, ptr %i.an, align 4, !tbaa !508
  %i.bg = icmp sgt i32 %i.bf, 0
  br i1 %i.bg, label %bb.i, label %.critedge, !prof !672

bb.i:                                             ; preds = %_ZNK21hb_sanitize_context_t11check_rangeIN2OT7NumTypeILb1EtLj2EEEEEbPKT_jj.exit85
  %i.bh = xor i32 %.0145172, -1
  %.neg79 = add nsw i32 %.062174, %i.bh
  %i.bi = add i32 %.neg79, %i.bf                  ; 2 uses
  store i32 %i.bi, ptr %i.an, align 4, !tbaa !508
  %i.bj = icmp slt i32 %i.bi, 1
  br i1 %i.bj, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bk = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.ar, i32 %i.ak)
  %i.bl = extractvalue { i32, i1 } %i.bk, 1
  br i1 %i.bl, label %.critedge, label %bb.k, !prof !267

bb.k:                                             ; preds = %bb.j
  %i.bm = mul i32 %i.ar, %i.ak
  %i.bn = zext i32 %i.bm to i64
  %.idx80 = shl nuw nsw i64 %i.bn, 1              ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.idx80
  %i.bp = mul i32 %.062174, %i.ak
  %i.bq = zext i32 %i.bp to i64
  %.idx = shl nuw nsw i64 %i.bq, 1                ; 4 uses
  %i.br = icmp samesign ult i64 %.idx, %.idx80
  br i1 %i.br, label %.lr.ph162.preheader, label %.loopexit184

.lr.ph162.preheader:                              ; preds = %bb.k
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.idx ; 3 uses
  %.reass191 = add i64 %.idx, %invariant.op190
  %.reass = add i64 %.idx80, %invariant.op192
  %i.bt = tail call i64 @llvm.umax.i64(i64 %.reass191, i64 %.reass)
  %i.bu = add i64 %i.bt, %i.aq
  %i.bv = add nuw nsw i64 %.idx, %i.ac
  %i.bw = sub i64 %i.bu, %i.bv                    ; 2 uses
  %i.bx = lshr i64 %i.bw, 1
  %i.by = add nuw i64 %i.bx, 1                    ; 2 uses
  %min.iters.check = icmp ult i64 %i.bw, 14
  br i1 %min.iters.check, label %.lr.ph162.preheader187, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph162.preheader
  %n.vec = and i64 %i.by, -8                      ; 3 uses
  %i.bz = shl i64 %n.vec, 1
  %i.ca = getelementptr i8, ptr %i.bs, i64 %i.bz
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.0147170, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.cj, %vector.body ]
  %vec.phi185 = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.ck, %vector.body ]
  %i.cb = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.bs, i64 %i.cb ; 2 uses
  %i.cc = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <4 x i16>, ptr %next.gep, align 1, !tbaa !283
  %wide.load186 = load <4 x i16>, ptr %i.cc, align 1, !tbaa !283
  %i.cd = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %wide.load)
  %i.ce = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %wide.load186)
  %i.cf = zext <4 x i16> %i.cd to <4 x i32>
  %i.cg = zext <4 x i16> %i.ce to <4 x i32>
  %i.ch = add nuw nsw <4 x i32> %i.cf, splat (i32 1)
  %i.ci = add nuw nsw <4 x i32> %i.cg, splat (i32 1)
  %i.cj = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi, <4 x i32> %i.ch) ; 2 uses
  %i.ck = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi185, <4 x i32> %i.ci) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cl = icmp eq i64 %index.next, %n.vec
  br i1 %i.cl, label %middle.block, label %vector.body, !llvm.loop !5462

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.cj, <4 x i32> %i.ck)
  %i.cm = tail call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %i.by, %n.vec
  br i1 %cmp.n, label %.loopexit184, label %.lr.ph162.preheader187

.lr.ph162.preheader187:                           ; preds = %.lr.ph162.preheader, %middle.block
  %.058161.ph = phi ptr [ %i.bs, %.lr.ph162.preheader ], [ %i.ca, %middle.block ]
  %.4160.ph = phi i32 [ %.0147170, %.lr.ph162.preheader ], [ %i.cm, %middle.block ]
  br label %.lr.ph162

.lr.ph162:                                        ; preds = %.lr.ph162.preheader187, %.lr.ph162
  %.058161 = phi ptr [ %i.cr, %.lr.ph162 ], [ %.058161.ph, %.lr.ph162.preheader187 ] ; 2 uses
  %.4160 = phi i32 [ %.sroa.speculated100, %.lr.ph162 ], [ %.4160.ph, %.lr.ph162.preheader187 ]
  %i.cn = load i16, ptr %.058161, align 1, !tbaa !283
  %i.co = tail call noundef i16 @llvm.bswap.i16(i16 %i.cn)
  %i.cp = zext i16 %i.co to i32
  %i.cq = add nuw nsw i32 %i.cp, 1
  %.sroa.speculated100 = tail call i32 @llvm.umax.i32(i32 %.4160, i32 %i.cq) ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.058161, i64 2 ; 2 uses
  %i.cs = icmp ult ptr %i.cr, %i.bo
  br i1 %i.cs, label %.lr.ph162, label %.loopexit184, !llvm.loop !5463

.loopexit184:                                     ; preds = %.lr.ph162, %middle.block, %.loopexit156, %bb.k
  %.5150 = phi i32 [ %.0147170, %.loopexit156 ], [ %.0147170, %bb.k ], [ %i.cm, %middle.block ], [ %.sroa.speculated100, %.lr.ph162 ] ; 6 uses
  %.264 = phi i32 [ %.062174, %.loopexit156 ], [ %i.ar, %bb.k ], [ %i.ar, %middle.block ], [ %i.ar, %.lr.ph162 ] ; 2 uses
  %i.ct = shl nuw nsw i32 %.5150, 3               ; 2 uses
  %i.cu = load ptr, ptr %i.b, align 8, !tbaa !505
  %i.cv = ptrtoint ptr %i.cu to i64
  %i.cw = sub i64 %i.ap, %i.cv
  %i.cx = load i32, ptr %i.g, align 8, !tbaa !506
  %i.cy = zext i32 %i.cx to i64
  %.not.i.i.i = icmp ugt i64 %i.cw, %i.cy
  br i1 %.not.i.i.i, label %.critedge, label %bb.l, !prof !711

bb.l:                                             ; preds = %.loopexit184
  %i.cz = load ptr, ptr %i.j, align 8, !tbaa !504
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = sub i64 %i.da, %i.ap
  %i.dc = trunc i64 %i.db to i32
  %.not12.i.i.i = icmp ugt i32 %i.ct, %i.dc
  br i1 %.not12.i.i.i, label %.critedge, label %_ZNK21hb_sanitize_context_t11check_arrayIN3AAT5EntryINS1_18ContextualSubtableINS1_13ExtendedTypesEE9EntryDataEEEEEbPKT_j.exit, !prof !711

_ZNK21hb_sanitize_context_t11check_arrayIN3AAT5EntryINS1_18ContextualSubtableINS1_13ExtendedTypesEE9EntryDataEEEEEbPKT_j.exit: ; preds = %bb.l
  %i.dd = load i32, ptr %i.an, align 4, !tbaa !508
  %i.de = sub i32 %i.dd, %i.ct                    ; 3 uses
  store i32 %i.de, ptr %i.an, align 4, !tbaa !508
  %i.df = icmp sgt i32 %i.de, 0
  br i1 %i.df, label %bb.m, label %.critedge, !prof !672

bb.m:                                             ; preds = %_ZNK21hb_sanitize_context_t11check_arrayIN3AAT5EntryINS1_18ContextualSubtableINS1_13ExtendedTypesEE9EntryDataEEEEEbPKT_j.exit
  %.neg81 = sub nsw i32 %.0147170, %.5150
  %i.dg = add i32 %i.de, %.neg81                  ; 2 uses
  store i32 %i.dg, ptr %i.an, align 4, !tbaa !508
  %i.dh = icmp slt i32 %i.dg, 1
  br i1 %i.dh, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.di = zext nneg i32 %.5150 to i64
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.di
  %i.dk = icmp ult i32 %.0147170, %.5150
  br i1 %i.dk, label %.lr.ph167.preheader, label %.loopexit

.lr.ph167.preheader:                              ; preds = %bb.n
  %i.dl = zext nneg i32 %.0147170 to i64
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.dl
  br label %.lr.ph167

.lr.ph167:                                        ; preds = %.lr.ph167.preheader, %.lr.ph167
  %.0166 = phi ptr [ %i.dq, %.lr.ph167 ], [ %i.dm, %.lr.ph167.preheader ] ; 2 uses
  %.1146164 = phi i32 [ %.sroa.speculated, %.lr.ph167 ], [ %.0145172, %.lr.ph167.preheader ]
  %i.dn = load i16, ptr %.0166, align 1, !tbaa !283
  %i.do = tail call noundef i16 @llvm.bswap.i16(i16 %i.dn)
  %i.dp = zext i16 %i.do to i32
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %.1146164, i32 %i.dp) ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.0166, i64 8 ; 2 uses
  %i.dr = icmp ult ptr %i.dq, %i.dj
  br i1 %i.dr, label %.lr.ph167, label %.loopexit, !llvm.loop !5464

bb.o:                                             ; preds = %.loopexit
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %.critedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 %.5150, ptr %2, align 4, !tbaa !324
end_hunk_1
begin_hunk_2_@_ZNK3AAT13LookupFormat4IN2OT11HBGlyphID16EE8sanitizeEP21hb_sanitize_context_t:bb.a
  %.not.i2 = icmp ugt i64 %i.g, %i.j
  br i1 %.not.i2, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_11HBGlyphID16EEEE8sanitizeIJPKNS1_13LookupFormat4IS3_EEEEEbP21hb_sanitize_context_tDpOT_.exit, label %bb.b, !prof !711

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.k = load i16, ptr %i.a, align 1, !tbaa !283
  %i.l = tail call noundef i16 @llvm.bswap.i16(i16 %i.k) ; 2 uses
  %i.m = icmp ugt i16 %i.l, 5
  br i1 %i.m, label %bb.c, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_11HBGlyphID16EEEE8sanitizeIJPKNS1_13LookupFormat4IS3_EEEEEbP21hb_sanitize_context_tDpOT_.exit, !prof !525

bb.c:                                             ; preds = %bb.b
  %i.n = zext i16 %i.l to i32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.p = load i16, ptr %i.o, align 1, !tbaa !283
  %i.q = tail call noundef i16 @llvm.bswap.i16(i16 %i.p)
  %i.r = zext i16 %i.q to i32
  %i.s = mul nuw i32 %i.r, %i.n                   ; 2 uses
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !505
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = sub i64 %i.e, %i.u
  %i.w = load i32, ptr %i.h, align 8, !tbaa !506
  %i.x = zext i32 %i.w to i64
  %.not.i.i.i = icmp ugt i64 %i.v, %i.x
  br i1 %.not.i.i.i, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_11HBGlyphID16EEEE8sanitizeIJPKNS1_13LookupFormat4IS3_EEEEEbP21hb_sanitize_context_tDpOT_.exit, label %bb.d, !prof !711

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !504
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.e
  %i.ac = trunc i64 %i.ab to i32
  %.not12.i.i.i = icmp ugt i32 %i.s, %i.ac
  br i1 %.not12.i.i.i, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_11HBGlyphID16EEEE8sanitizeIJPKNS1_13LookupFormat4IS3_EEEEEbP21hb_sanitize_context_tDpOT_.exit, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_11HBGlyphID16EEEE16sanitize_shallowEP21hb_sanitize_context_t.exit, !prof !711

_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_11HBGlyphID16EEEE16sanitize_shallowEP21hb_sanitize_context_t.exit: ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 4 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !508
  %i.af = sub i32 %i.ae, %i.s                     ; 2 uses
  store i32 %i.af, ptr %i.ad, align 4, !tbaa !508
  %i.ag = icmp sgt i32 %i.af, 0
  br i1 %i.ag, label %bb.e, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_11HBGlyphID16EEEE8sanitizeIJPKNS1_13LookupFormat4IS3_EEEEEbP21hb_sanitize_context_tDpOT_.exit, !prof !672

bb.e:                                             ; preds = %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_11HBGlyphID16EEEE16sanitize_shallowEP21hb_sanitize_context_t.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.ah = load i16, ptr %i.o, align 1, !tbaa !283 ; 2 uses
  %i.ai = tail call noundef i16 @llvm.bswap.i16(i16 %i.ah) ; 2 uses
  %.not.i.i = icmp eq i16 %i.ah, 0
  br i1 %.not.i.i, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_11HBGlyphID16EEEE10get_lengthEv.exit, label %bb.f, !prof !267

bb.f:                                             ; preds = %bb.e
  %i.aj = zext i16 %i.ai to i64
  %i.ak = add nuw nsw i64 %i.aj, 4294967295
  %i.al = load i16, ptr %i.a, align 1, !tbaa !283
  %i.am = tail call noundef i16 @llvm.bswap.i16(i16 %i.al)
  %i.an = zext i16 %i.am to i64
  %i.ao = mul nuw nsw i64 %i.ak, %i.an
  %i.ap = and i64 %i.ao, 4294967295
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ap ; 2 uses
  %i.ar = load i16, ptr %i.aq, align 1, !tbaa !283
  %.not9.i.i = icmp eq i16 %i.ar, -1
  br i1 %.not9.i.i, label %bb.g, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_11HBGlyphID16EEEE10get_lengthEv.exit

bb.g:                                             ; preds = %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 2
  %i.at = load i16, ptr %i.as, align 1, !tbaa !283
  %.not9.1.i.i = icmp eq i16 %i.at, -1
  %i.au = sext i1 %.not9.1.i.i to i32
  br label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_11HBGlyphID16EEEE10get_lengthEv.exit

_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_11HBGlyphID16EEEE10get_lengthEv.exit: ; preds = %bb.e, %bb.f, %bb.g
  %.2.i.i = phi i32 [ 0, %bb.e ], [ 0, %bb.f ], [ %i.au, %bb.g ]
  %i.av = zext i16 %i.ai to i32
  %i.aw = add nsw i32 %.2.i.i, %i.av              ; 2 uses
  %.not.i11.not = icmp eq i32 %i.aw, 0
  br i1 %.not.i11.not, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_11HBGlyphID16EEEE8sanitizeIJPKNS1_13LookupFormat4IS3_EEEEEbP21hb_sanitize_context_tDpOT_.exit, label %.lr.ph

bb.h:                                             ; preds = %_ZNK3AAT18LookupSegmentArrayIN2OT11HBGlyphID16EE8sanitizeEP21hb_sanitize_context_tPKv.exit
  %i.ax = add nuw i32 %.0.i12, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.ax, %i.aw
  br i1 %exitcond.not, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_11HBGlyphID16EEEE8sanitizeIJPKNS1_13LookupFormat4IS3_EEEEEbP21hb_sanitize_context_tDpOT_.exit, label %.lr.ph, !llvm.loop !5465

.lr.ph:                                           ; preds = %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_11HBGlyphID16EEEE10get_lengthEv.exit, %bb.h
  %.0.i12 = phi i32 [ %i.ax, %bb.h ], [ 0, %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_11HBGlyphID16EEEE10get_lengthEv.exit ] ; 3 uses
  %i.ay = load i16, ptr %i.o, align 1, !tbaa !283 ; 2 uses
  %i.az = tail call noundef i16 @llvm.bswap.i16(i16 %i.ay) ; 2 uses
  %.not.i.i.i3 = icmp eq i16 %i.ay, 0
  br i1 %.not.i.i.i3, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_11HBGlyphID16EEEE10get_lengthEv.exit.i, label %bb.i, !prof !267

bb.i:                                             ; preds = %.lr.ph
  %i.ba = zext i16 %i.az to i64
  %i.bb = add nuw nsw i64 %i.ba, 4294967295
  %i.bc = load i16, ptr %i.a, align 1, !tbaa !283
  %i.bd = tail call noundef i16 @llvm.bswap.i16(i16 %i.bc)
  %i.be = zext i16 %i.bd to i64
  %i.bf = mul nuw nsw i64 %i.bb, %i.be
  %i.bg = and i64 %i.bf, 4294967295
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bg ; 2 uses
  %i.bi = load i16, ptr %i.bh, align 1, !tbaa !283
  %.not9.i.i.i = icmp eq i16 %i.bi, -1
  br i1 %.not9.i.i.i, label %bb.j, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_11HBGlyphID16EEEE10get_lengthEv.exit.i

bb.j:                                             ; preds = %bb.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 2
  %i.bk = load i16, ptr %i.bj, align 1, !tbaa !283
  %.not9.1.i.i.i = icmp eq i16 %i.bk, -1
  %i.bl = sext i1 %.not9.1.i.i.i to i32
  br label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_11HBGlyphID16EEEE10get_lengthEv.exit.i

_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_11HBGlyphID16EEEE10get_lengthEv.exit.i: ; preds = %bb.j, %bb.i, %.lr.ph
  %.2.i.i.i = phi i32 [ 0, %.lr.ph ], [ 0, %bb.i ], [ %i.bl, %bb.j ]
  %i.bm = zext i16 %i.az to i32
  %i.bn = add nsw i32 %.2.i.i.i, %i.bm
  %.not.i4 = icmp ult i32 %.0.i12, %i.bn
  br i1 %.not.i4, label %bb.k, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_11HBGlyphID16EEEEixEi.exit, !prof !268

bb.k:                                             ; preds = %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_11HBGlyphID16EEEE10get_lengthEv.exit.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.bo = load i16, ptr %i.a, align 1, !tbaa !283
  %i.bp = tail call noundef i16 @llvm.bswap.i16(i16 %i.bo)
  %i.bq = zext i16 %i.bp to i32
  %i.br = mul i32 %.0.i12, %i.bq
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bs
  br label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_11HBGlyphID16EEEEixEi.exit

_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_11HBGlyphID16EEEEixEi.exit: ; preds = %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_11HBGlyphID16EEEE10get_lengthEv.exit.i, %bb.k
  %.0.i5 = phi ptr [ %i.bt, %bb.k ], [ @_hb_NullPool, %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_11HBGlyphID16EEEE10get_lengthEv.exit.i ] ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.i5, i64 6
  %i.bv = load ptr, ptr %i.c, align 8, !tbaa !505
  %i.bw = ptrtoint ptr %i.bu to i64               ; 2 uses
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = sub i64 %i.bw, %i.bx
  %i.bz = load i32, ptr %i.h, align 8, !tbaa !506
  %i.ca = zext i32 %i.bz to i64
  %.not7.i = icmp ugt i64 %i.by, %i.ca
  br i1 %.not7.i, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_11HBGlyphID16EEEE8sanitizeIJPKNS1_13LookupFormat4IS3_EEEEEbP21hb_sanitize_context_tDpOT_.exit, label %bb.l, !prof !711

bb.l:                                             ; preds = %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_11HBGlyphID16EEEEixEi.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.i5, i64 2
  %i.cc = load i16, ptr %i.cb, align 1, !tbaa !283
  %i.cd = tail call noundef i16 @llvm.bswap.i16(i16 %i.cc) ; 2 uses
  %i.ce = load i16, ptr %.0.i5, align 1, !tbaa !283
  %i.cf = tail call noundef i16 @llvm.bswap.i16(i16 %i.ce) ; 2 uses
  %.not.i6 = icmp ugt i16 %i.cd, %i.cf
  br i1 %.not.i6, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_11HBGlyphID16EEEE8sanitizeIJPKNS1_13LookupFormat4IS3_EEEEEbP21hb_sanitize_context_tDpOT_.exit, label %bb.m, !prof !711

bb.m:                                             ; preds = %bb.l
  %i.cg = load ptr, ptr %i.c, align 8, !tbaa !505
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = sub i64 %i.bw, %i.ch
  %i.cj = load i32, ptr %i.h, align 8, !tbaa !506
  %i.ck = zext i32 %i.cj to i64
  %.not.i.not.i = icmp ugt i64 %i.ci, %i.ck
  br i1 %.not.i.not.i, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_11HBGlyphID16EEEE8sanitizeIJPKNS1_13LookupFormat4IS3_EEEEEbP21hb_sanitize_context_tDpOT_.exit, label %bb.n, !prof !267

bb.n:                                             ; preds = %bb.m
  %narrow.i = sub nuw i16 %i.cf, %i.cd
  %i.cl = zext i16 %narrow.i to i32
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.cm = shl nuw nsw i32 %i.cl, 1
  %i.cn = add nuw nsw i32 %i.cm, 2                ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.0.i5, i64 4
  %i.cp = load i16, ptr %i.co, align 1, !tbaa !283
  %i.cq = tail call noundef i16 @llvm.bswap.i16(i16 %i.cp)
  %i.cr = zext i16 %i.cq to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 %i.cr
  %i.ct = load ptr, ptr %i.c, align 8, !tbaa !505
  %i.cu = ptrtoint ptr %i.cs to i64               ; 2 uses
  %i.cv = ptrtoint ptr %i.ct to i64
  %i.cw = sub i64 %i.cu, %i.cv
  %i.cx = load i32, ptr %i.h, align 8, !tbaa !506
  %i.cy = zext i32 %i.cx to i64
  %.not.i.i.i.i.i.i.i = icmp ugt i64 %i.cw, %i.cy
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_11HBGlyphID16EEEE8sanitizeIJPKNS1_13LookupFormat4IS3_EEEEEbP21hb_sanitize_context_tDpOT_.exit, label %bb.o, !prof !711

bb.o:                                             ; preds = %bb.n
  %i.cz = load ptr, ptr %i.y, align 8, !tbaa !504
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = sub i64 %i.da, %i.cu
  %i.dc = trunc i64 %i.db to i32
  %.not12.i.i.i.i.i.i.i = icmp ugt i32 %i.cn, %i.dc
  br i1 %.not12.i.i.i.i.i.i.i, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_11HBGlyphID16EEEE8sanitizeIJPKNS1_13LookupFormat4IS3_EEEEEbP21hb_sanitize_context_tDpOT_.exit, label %_ZNK3AAT18LookupSegmentArrayIN2OT11HBGlyphID16EE8sanitizeEP21hb_sanitize_context_tPKv.exit, !prof !711

_ZNK3AAT18LookupSegmentArrayIN2OT11HBGlyphID16EE8sanitizeEP21hb_sanitize_context_tPKv.exit: ; preds = %bb.o
  %i.dd = load i32, ptr %i.ad, align 4, !tbaa !508
  %i.de = sub i32 %i.dd, %i.cn                    ; 2 uses
  store i32 %i.de, ptr %i.ad, align 4, !tbaa !508
  %i.df = icmp sgt i32 %i.de, 0
  br i1 %i.df, label %bb.h, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_11HBGlyphID16EEEE8sanitizeIJPKNS1_13LookupFormat4IS3_EEEEEbP21hb_sanitize_context_tDpOT_.exit, !prof !672

_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_11HBGlyphID16EEEE8sanitizeIJPKNS1_13LookupFormat4IS3_EEEEEbP21hb_sanitize_context_tDpOT_.exit: ; preds = %bb.h, %_ZNK3AAT18LookupSegmentArrayIN2OT11HBGlyphID16EE8sanitizeEP21hb_sanitize_context_tPKv.exit, %bb.l, %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_11HBGlyphID16EEEEixEi.exit, %bb.m, %bb.n, %bb.o, %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_11HBGlyphID16EEEE10get_lengthEv.exit, %bb.c, %bb.d, %bb.a, %bb.b, %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_11HBGlyphID16EEEE16sanitize_shallowEP21hb_sanitize_context_t.exit
  %.2.i = phi i1 [ false, %bb.c ], [ false, %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_11HBGlyphID16EEEE16sanitize_shallowEP21hb_sanitize_context_t.exit ], [ false, %bb.d ], [ false, %bb.b ], [ false, %bb.a ], [ true, %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_11HBGlyphID16EEEE10get_lengthEv.exit ], [ false, %bb.n ], [ false, %bb.m ], [ false, %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_11HBGlyphID16EEEEixEi.exit ], [ false, %bb.l ], [ false, %_ZNK3AAT18LookupSegmentArrayIN2OT11HBGlyphID16EE8sanitizeEP21hb_sanitize_context_tPKv.exit ], [ true, %bb.h ], [ false, %bb.o ]
  ret i1 %.2.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK3AAT10StateTableINS_13ExtendedTypesENS_13LigatureEntryILb1EE9EntryDataEE8sanitizeEP21hb_sanitize_context_tPj(ptr noundef nonnull align 1 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !505
  %i.d = ptrtoint ptr %i.a to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !506
  %i.i = zext i32 %i.h to i64
  %.not154 = icmp ugt i64 %i.f, %i.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br i1 %.not154, label %.critedge, label %bb.b, !prof !267

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.k = load i32, ptr %0, align 1, !tbaa !278
  %i.l = tail call noundef i32 @llvm.bswap.i32(i32 %i.k)
  %i.m = icmp ugt i32 %i.l, 3
  br i1 %i.m, label %bb.c, label %.critedge, !prof !268

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !505
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = load i32, ptr %i.g, align 8, !tbaa !506
  %i.t = zext i32 %i.s to i64
  %.not.i.not = icmp ugt i64 %i.r, %i.t
  br i1 %.not.i.not, label %.critedge, label %_ZNK2OT8OffsetToIN3AAT6LookupINS_7NumTypeILb1EtLj2EEEEENS3_ILb1EjLj4EEEvLb0EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit, !prof !267

_ZNK2OT8OffsetToIN3AAT6LookupINS_7NumTypeILb1EtLj2EEEEENS3_ILb1EjLj4EEEvLb0EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit: ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.v = load i32, ptr %i.u, align 1, !tbaa !278
  %i.w = tail call noundef i32 @llvm.bswap.i32(i32 %i.v)
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %i.x
  %i.z = tail call noundef zeroext i1 @_ZNK3AAT6LookupIN2OT7NumTypeILb1EtLj2EEEE8sanitizeEP21hb_sanitize_context_t(ptr noundef nonnull align 1 dereferenceable(13) %i.y, ptr noundef nonnull align 8 dereferenceable(62) %1)
  br i1 %i.z, label %bb.d, label %.critedge, !prof !672

bb.d:                                             ; preds = %_ZNK2OT8OffsetToIN3AAT6LookupINS_7NumTypeILb1EtLj2EEEEENS3_ILb1EjLj4EEEvLb0EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit
  %i.aa = load i32, ptr %i.n, align 1, !tbaa !278
  %i.ab = tail call noundef i32 @llvm.bswap.i32(i32 %i.aa)
  %i.ac = zext i32 %i.ab to i64                   ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %i.ac ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.af = load i32, ptr %i.ae, align 1, !tbaa !278
  %i.ag = tail call noundef i32 @llvm.bswap.i32(i32 %i.af)
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %i.ah ; 3 uses
  %i.aj = load i32, ptr %0, align 1, !tbaa !278
  %i.ak = tail call noundef i32 @llvm.bswap.i32(i32 %i.aj) ; 5 uses
  %i.al = icmp slt i32 %i.ak, 0
  br i1 %i.al, label %.critedge, label %bb.e, !prof !267

bb.e:                                             ; preds = %bb.d
  %i.am = shl nuw i32 %i.ak, 1
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 6 uses
  %i.ao = ptrtoint ptr %i.ad to i64               ; 2 uses
  %i.ap = ptrtoint ptr %i.ai to i64               ; 2 uses
  %3 = ptrtoaddr ptr %0 to i64                    ; 3 uses
  %invariant.op = add i64 %3, %i.ac
  %invariant.op190 = add i64 %invariant.op, 2
  %invariant.op192 = add i64 %3, %i.ac
  %i.aq = xor i64 %3, -1
  br label %.loopexit156

.loopexit:                                        ; preds = %.lr.ph167, %bb.n
  %.1146.lcssa = phi i32 [ %.0145172, %bb.n ], [ %.sroa.speculated, %.lr.ph167 ] ; 2 uses
  %.not183 = icmp sgt i32 %.264, %.1146.lcssa
  br i1 %.not183, label %bb.o, label %.loopexit156, !llvm.loop !5466

.loopexit156:                                     ; preds = %.loopexit, %bb.e
  %.062174 = phi i32 [ 0, %bb.e ], [ %.264, %.loopexit ] ; 4 uses
  %.0145172 = phi i32 [ 0, %bb.e ], [ %.1146.lcssa, %.loopexit ] ; 5 uses
  %.0147170 = phi i32 [ 0, %bb.e ], [ %.5150, %.loopexit ] ; 7 uses
  %.not78 = icmp sgt i32 %.062174, %.0145172
  br i1 %.not78, label %.loopexit184, label %bb.f

bb.f:                                             ; preds = %.loopexit156
  %i.ar = add nuw nsw i32 %.0145172, 1            ; 6 uses
  %i.as = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.ar, i32 %i.am) ; 2 uses
  %i.at = extractvalue { i32, i1 } %i.as, 0       ; 2 uses
  %i.au = extractvalue { i32, i1 } %i.as, 1
  br i1 %i.au, label %.critedge, label %bb.g, !prof !711

bb.g:                                             ; preds = %bb.f
  %i.av = load ptr, ptr %i.b, align 8, !tbaa !505
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = sub i64 %i.ao, %i.aw
  %i.ay = load i32, ptr %i.g, align 8, !tbaa !506
  %i.az = zext i32 %i.ay to i64
  %.not.i.i83 = icmp ugt i64 %i.ax, %i.az
  br i1 %.not.i.i83, label %.critedge, label %bb.h, !prof !711

bb.h:                                             ; preds = %bb.g
  %i.ba = load ptr, ptr %i.j, align 8, !tbaa !504
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = sub i64 %i.bb, %i.ao
  %i.bd = trunc i64 %i.bc to i32
  %.not12.i.i84 = icmp ugt i32 %i.at, %i.bd
  br i1 %.not12.i.i84, label %.critedge, label %_ZNK21hb_sanitize_context_t11check_rangeIN2OT7NumTypeILb1EtLj2EEEEEbPKT_jj.exit85, !prof !711

_ZNK21hb_sanitize_context_t11check_rangeIN2OT7NumTypeILb1EtLj2EEEEEbPKT_jj.exit85: ; preds = %bb.h
  %i.be = load i32, ptr %i.an, align 4, !tbaa !508
  %i.bf = sub i32 %i.be, %i.at                    ; 3 uses
  store i32 %i.bf, ptr %i.an, align 4, !tbaa !508
  %i.bg = icmp sgt i32 %i.bf, 0
  br i1 %i.bg, label %bb.i, label %.critedge, !prof !672

bb.i:                                             ; preds = %_ZNK21hb_sanitize_context_t11check_rangeIN2OT7NumTypeILb1EtLj2EEEEEbPKT_jj.exit85
  %i.bh = xor i32 %.0145172, -1
  %.neg79 = add nsw i32 %.062174, %i.bh
  %i.bi = add i32 %.neg79, %i.bf                  ; 2 uses
  store i32 %i.bi, ptr %i.an, align 4, !tbaa !508
  %i.bj = icmp slt i32 %i.bi, 1
  br i1 %i.bj, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bk = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.ar, i32 %i.ak)
  %i.bl = extractvalue { i32, i1 } %i.bk, 1
  br i1 %i.bl, label %.critedge, label %bb.k, !prof !267

bb.k:                                             ; preds = %bb.j
  %i.bm = mul i32 %i.ar, %i.ak
  %i.bn = zext i32 %i.bm to i64
  %.idx80 = shl nuw nsw i64 %i.bn, 1              ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.idx80
  %i.bp = mul i32 %.062174, %i.ak
  %i.bq = zext i32 %i.bp to i64
  %.idx = shl nuw nsw i64 %i.bq, 1                ; 4 uses
  %i.br = icmp samesign ult i64 %.idx, %.idx80
  br i1 %i.br, label %.lr.ph162.preheader, label %.loopexit184

.lr.ph162.preheader:                              ; preds = %bb.k
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.idx ; 3 uses
  %.reass191 = add i64 %.idx, %invariant.op190
  %.reass = add i64 %.idx80, %invariant.op192
  %i.bt = tail call i64 @llvm.umax.i64(i64 %.reass191, i64 %.reass)
  %i.bu = add i64 %i.bt, %i.aq
  %i.bv = add nuw nsw i64 %.idx, %i.ac
  %i.bw = sub i64 %i.bu, %i.bv                    ; 2 uses
  %i.bx = lshr i64 %i.bw, 1
  %i.by = add nuw i64 %i.bx, 1                    ; 2 uses
  %min.iters.check = icmp ult i64 %i.bw, 14
  br i1 %min.iters.check, label %.lr.ph162.preheader187, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph162.preheader
  %n.vec = and i64 %i.by, -8                      ; 3 uses
  %i.bz = shl i64 %n.vec, 1
  %i.ca = getelementptr i8, ptr %i.bs, i64 %i.bz
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.0147170, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.cj, %vector.body ]
  %vec.phi185 = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.ck, %vector.body ]
  %i.cb = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.bs, i64 %i.cb ; 2 uses
  %i.cc = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <4 x i16>, ptr %next.gep, align 1, !tbaa !283
  %wide.load186 = load <4 x i16>, ptr %i.cc, align 1, !tbaa !283
  %i.cd = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %wide.load)
  %i.ce = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %wide.load186)
  %i.cf = zext <4 x i16> %i.cd to <4 x i32>
  %i.cg = zext <4 x i16> %i.ce to <4 x i32>
  %i.ch = add nuw nsw <4 x i32> %i.cf, splat (i32 1)
  %i.ci = add nuw nsw <4 x i32> %i.cg, splat (i32 1)
  %i.cj = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi, <4 x i32> %i.ch) ; 2 uses
  %i.ck = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi185, <4 x i32> %i.ci) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cl = icmp eq i64 %index.next, %n.vec
  br i1 %i.cl, label %middle.block, label %vector.body, !llvm.loop !5467

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.cj, <4 x i32> %i.ck)
  %i.cm = tail call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %i.by, %n.vec
  br i1 %cmp.n, label %.loopexit184, label %.lr.ph162.preheader187

.lr.ph162.preheader187:                           ; preds = %.lr.ph162.preheader, %middle.block
  %.058161.ph = phi ptr [ %i.bs, %.lr.ph162.preheader ], [ %i.ca, %middle.block ]
  %.4160.ph = phi i32 [ %.0147170, %.lr.ph162.preheader ], [ %i.cm, %middle.block ]
  br label %.lr.ph162

.lr.ph162:                                        ; preds = %.lr.ph162.preheader187, %.lr.ph162
  %.058161 = phi ptr [ %i.cr, %.lr.ph162 ], [ %.058161.ph, %.lr.ph162.preheader187 ] ; 2 uses
  %.4160 = phi i32 [ %.sroa.speculated100, %.lr.ph162 ], [ %.4160.ph, %.lr.ph162.preheader187 ]
  %i.cn = load i16, ptr %.058161, align 1, !tbaa !283
  %i.co = tail call noundef i16 @llvm.bswap.i16(i16 %i.cn)
  %i.cp = zext i16 %i.co to i32
  %i.cq = add nuw nsw i32 %i.cp, 1
  %.sroa.speculated100 = tail call i32 @llvm.umax.i32(i32 %.4160, i32 %i.cq) ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.058161, i64 2 ; 2 uses
  %i.cs = icmp ult ptr %i.cr, %i.bo
  br i1 %i.cs, label %.lr.ph162, label %.loopexit184, !llvm.loop !5468

.loopexit184:                                     ; preds = %.lr.ph162, %middle.block, %.loopexit156, %bb.k
  %.5150 = phi i32 [ %.0147170, %.loopexit156 ], [ %.0147170, %bb.k ], [ %i.cm, %middle.block ], [ %.sroa.speculated100, %.lr.ph162 ] ; 6 uses
  %.264 = phi i32 [ %.062174, %.loopexit156 ], [ %i.ar, %bb.k ], [ %i.ar, %middle.block ], [ %i.ar, %.lr.ph162 ] ; 2 uses
  %i.ct = mul i32 %.5150, 6                       ; 2 uses
  %i.cu = load ptr, ptr %i.b, align 8, !tbaa !505
  %i.cv = ptrtoint ptr %i.cu to i64
  %i.cw = sub i64 %i.ap, %i.cv
  %i.cx = load i32, ptr %i.g, align 8, !tbaa !506
  %i.cy = zext i32 %i.cx to i64
  %.not.i.i.i = icmp ugt i64 %i.cw, %i.cy
  br i1 %.not.i.i.i, label %.critedge, label %bb.l, !prof !711

bb.l:                                             ; preds = %.loopexit184
  %i.cz = load ptr, ptr %i.j, align 8, !tbaa !504
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = sub i64 %i.da, %i.ap
  %i.dc = trunc i64 %i.db to i32
  %.not12.i.i.i = icmp ugt i32 %i.ct, %i.dc
  br i1 %.not12.i.i.i, label %.critedge, label %_ZNK21hb_sanitize_context_t11check_arrayIN3AAT5EntryINS1_13LigatureEntryILb1EE9EntryDataEEEEEbPKT_j.exit, !prof !711

_ZNK21hb_sanitize_context_t11check_arrayIN3AAT5EntryINS1_13LigatureEntryILb1EE9EntryDataEEEEEbPKT_j.exit: ; preds = %bb.l
  %i.dd = load i32, ptr %i.an, align 4, !tbaa !508
  %i.de = sub i32 %i.dd, %i.ct                    ; 3 uses
  store i32 %i.de, ptr %i.an, align 4, !tbaa !508
  %i.df = icmp sgt i32 %i.de, 0
  br i1 %i.df, label %bb.m, label %.critedge, !prof !672

bb.m:                                             ; preds = %_ZNK21hb_sanitize_context_t11check_arrayIN3AAT5EntryINS1_13LigatureEntryILb1EE9EntryDataEEEEEbPKT_j.exit
  %.neg81 = sub nsw i32 %.0147170, %.5150
  %i.dg = add i32 %i.de, %.neg81                  ; 2 uses
  store i32 %i.dg, ptr %i.an, align 4, !tbaa !508
  %i.dh = icmp slt i32 %i.dg, 1
  br i1 %i.dh, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.di = zext nneg i32 %.5150 to i64
  %i.dj = getelementptr inbounds nuw [6 x i8], ptr %i.ai, i64 %i.di
  %i.dk = icmp ult i32 %.0147170, %.5150
  br i1 %i.dk, label %.lr.ph167.preheader, label %.loopexit

.lr.ph167.preheader:                              ; preds = %bb.n
  %i.dl = zext nneg i32 %.0147170 to i64
  %i.dm = getelementptr inbounds nuw [6 x i8], ptr %i.ai, i64 %i.dl
  br label %.lr.ph167

.lr.ph167:                                        ; preds = %.lr.ph167.preheader, %.lr.ph167
  %.0166 = phi ptr [ %i.dq, %.lr.ph167 ], [ %i.dm, %.lr.ph167.preheader ] ; 2 uses
  %.1146164 = phi i32 [ %.sroa.speculated, %.lr.ph167 ], [ %.0145172, %.lr.ph167.preheader ]
  %i.dn = load i16, ptr %.0166, align 1, !tbaa !283
  %i.do = tail call noundef i16 @llvm.bswap.i16(i16 %i.dn)
  %i.dp = zext i16 %i.do to i32
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %.1146164, i32 %i.dp) ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.0166, i64 6 ; 2 uses
  %i.dr = icmp ult ptr %i.dq, %i.dj
  br i1 %i.dr, label %.lr.ph167, label %.loopexit, !llvm.loop !5469

bb.o:                                             ; preds = %.loopexit
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %.critedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 %.5150, ptr %2, align 4, !tbaa !324
  br label %.critedge

.critedge:                                        ; preds = %.loopexit184, %bb.l, %bb.g, %bb.h, %bb.f, %_ZNK21hb_sanitize_context_t11check_rangeIN2OT7NumTypeILb1EtLj2EEEEEbPKT_jj.exit85, %bb.i, %bb.j, %_ZNK21hb_sanitize_context_t11check_arrayIN3AAT5EntryINS1_13LigatureEntryILb1EE9EntryDataEEEEEbPKT_j.exit, %bb.m, %bb.c, %bb.p, %bb.o, %bb.d, %_ZNK2OT8OffsetToIN3AAT6LookupINS_7NumTypeILb1EtLj2EEEEENS3_ILb1EjLj4EEEvLb0EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit, %bb.a, %bb.b
  %.7 = phi i1 [ false, %bb.d ], [ false, %_ZNK2OT8OffsetToIN3AAT6LookupINS_7NumTypeILb1EtLj2EEEEENS3_ILb1EjLj4EEEvLb0EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit ], [ true, %bb.o ], [ false, %bb.b ], [ false, %bb.a ], [ true, %bb.p ], [ false, %bb.c ], [ false, %bb.m ], [ false, %_ZNK21hb_sanitize_context_t11check_arrayIN3AAT5EntryINS1_13LigatureEntryILb1EE9EntryDataEEEEEbPKT_j.exit ], [ false, %bb.j ], [ false, %bb.i ], [ false, %_ZNK21hb_sanitize_context_t11check_rangeIN2OT7NumTypeILb1EtLj2EEEEEbPKT_jj.exit85 ], [ false, %bb.f ], [ false, %bb.h ], [ false, %bb.g ], [ false, %bb.l ], [ false, %.loopexit184 ]
  ret i1 %.7
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK3AAT10StateTableINS_13ExtendedTypesENS_17InsertionSubtableIS1_E9EntryDataEE8sanitizeEP21hb_sanitize_context_tPj(ptr noundef nonnull align 1 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !505
  %i.d = ptrtoint ptr %i.a to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !506
  %i.i = zext i32 %i.h to i64
  %.not154 = icmp ugt i64 %i.f, %i.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br i1 %.not154, label %.critedge, label %bb.b, !prof !267

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.k = load i32, ptr %0, align 1, !tbaa !278
  %i.l = tail call noundef i32 @llvm.bswap.i32(i32 %i.k)
  %i.m = icmp ugt i32 %i.l, 3
  br i1 %i.m, label %bb.c, label %.critedge, !prof !268

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !505
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = load i32, ptr %i.g, align 8, !tbaa !506
  %i.t = zext i32 %i.s to i64
  %.not.i.not = icmp ugt i64 %i.r, %i.t
  br i1 %.not.i.not, label %.critedge, label %_ZNK2OT8OffsetToIN3AAT6LookupINS_7NumTypeILb1EtLj2EEEEENS3_ILb1EjLj4EEEvLb0EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit, !prof !267

_ZNK2OT8OffsetToIN3AAT6LookupINS_7NumTypeILb1EtLj2EEEEENS3_ILb1EjLj4EEEvLb0EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit: ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.v = load i32, ptr %i.u, align 1, !tbaa !278
  %i.w = tail call noundef i32 @llvm.bswap.i32(i32 %i.v)
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %i.x
  %i.z = tail call noundef zeroext i1 @_ZNK3AAT6LookupIN2OT7NumTypeILb1EtLj2EEEE8sanitizeEP21hb_sanitize_context_t(ptr noundef nonnull align 1 dereferenceable(13) %i.y, ptr noundef nonnull align 8 dereferenceable(62) %1)
  br i1 %i.z, label %bb.d, label %.critedge, !prof !672

bb.d:                                             ; preds = %_ZNK2OT8OffsetToIN3AAT6LookupINS_7NumTypeILb1EtLj2EEEEENS3_ILb1EjLj4EEEvLb0EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit
  %i.aa = load i32, ptr %i.n, align 1, !tbaa !278
  %i.ab = tail call noundef i32 @llvm.bswap.i32(i32 %i.aa)
  %i.ac = zext i32 %i.ab to i64                   ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %i.ac ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.af = load i32, ptr %i.ae, align 1, !tbaa !278
  %i.ag = tail call noundef i32 @llvm.bswap.i32(i32 %i.af)
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %i.ah ; 3 uses
  %i.aj = load i32, ptr %0, align 1, !tbaa !278
  %i.ak = tail call noundef i32 @llvm.bswap.i32(i32 %i.aj) ; 5 uses
  %i.al = icmp slt i32 %i.ak, 0
  br i1 %i.al, label %.critedge, label %bb.e, !prof !267

bb.e:                                             ; preds = %bb.d
  %i.am = shl nuw i32 %i.ak, 1
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 6 uses
  %i.ao = ptrtoint ptr %i.ad to i64               ; 2 uses
  %i.ap = ptrtoint ptr %i.ai to i64               ; 2 uses
  %3 = ptrtoaddr ptr %0 to i64                    ; 3 uses
  %invariant.op = add i64 %3, %i.ac
  %invariant.op190 = add i64 %invariant.op, 2
  %invariant.op192 = add i64 %3, %i.ac
  %i.aq = xor i64 %3, -1
  br label %.loopexit156

.loopexit:                                        ; preds = %.lr.ph167, %bb.n
  %.1146.lcssa = phi i32 [ %.0145172, %bb.n ], [ %.sroa.speculated, %.lr.ph167 ] ; 2 uses
  %.not183 = icmp sgt i32 %.264, %.1146.lcssa
  br i1 %.not183, label %bb.o, label %.loopexit156, !llvm.loop !5470

.loopexit156:                                     ; preds = %.loopexit, %bb.e
  %.062174 = phi i32 [ 0, %bb.e ], [ %.264, %.loopexit ] ; 4 uses
  %.0145172 = phi i32 [ 0, %bb.e ], [ %.1146.lcssa, %.loopexit ] ; 5 uses
  %.0147170 = phi i32 [ 0, %bb.e ], [ %.5150, %.loopexit ] ; 7 uses
  %.not78 = icmp sgt i32 %.062174, %.0145172
  br i1 %.not78, label %.loopexit184, label %bb.f

bb.f:                                             ; preds = %.loopexit156
  %i.ar = add nuw nsw i32 %.0145172, 1            ; 6 uses
  %i.as = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.ar, i32 %i.am) ; 2 uses
  %i.at = extractvalue { i32, i1 } %i.as, 0       ; 2 uses
  %i.au = extractvalue { i32, i1 } %i.as, 1
  br i1 %i.au, label %.critedge, label %bb.g, !prof !711

bb.g:                                             ; preds = %bb.f
  %i.av = load ptr, ptr %i.b, align 8, !tbaa !505
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = sub i64 %i.ao, %i.aw
  %i.ay = load i32, ptr %i.g, align 8, !tbaa !506
  %i.az = zext i32 %i.ay to i64
  %.not.i.i83 = icmp ugt i64 %i.ax, %i.az
  br i1 %.not.i.i83, label %.critedge, label %bb.h, !prof !711

bb.h:                                             ; preds = %bb.g
  %i.ba = load ptr, ptr %i.j, align 8, !tbaa !504
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = sub i64 %i.bb, %i.ao
  %i.bd = trunc i64 %i.bc to i32
  %.not12.i.i84 = icmp ugt i32 %i.at, %i.bd
  br i1 %.not12.i.i84, label %.critedge, label %_ZNK21hb_sanitize_context_t11check_rangeIN2OT7NumTypeILb1EtLj2EEEEEbPKT_jj.exit85, !prof !711

_ZNK21hb_sanitize_context_t11check_rangeIN2OT7NumTypeILb1EtLj2EEEEEbPKT_jj.exit85: ; preds = %bb.h
  %i.be = load i32, ptr %i.an, align 4, !tbaa !508
  %i.bf = sub i32 %i.be, %i.at                    ; 3 uses
  store i32 %i.bf, ptr %i.an, align 4, !tbaa !508
  %i.bg = icmp sgt i32 %i.bf, 0
  br i1 %i.bg, label %bb.i, label %.critedge, !prof !672

bb.i:                                             ; preds = %_ZNK21hb_sanitize_context_t11check_rangeIN2OT7NumTypeILb1EtLj2EEEEEbPKT_jj.exit85
  %i.bh = xor i32 %.0145172, -1
  %.neg79 = add nsw i32 %.062174, %i.bh
  %i.bi = add i32 %.neg79, %i.bf                  ; 2 uses
  store i32 %i.bi, ptr %i.an, align 4, !tbaa !508
  %i.bj = icmp slt i32 %i.bi, 1
  br i1 %i.bj, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bk = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.ar, i32 %i.ak)
  %i.bl = extractvalue { i32, i1 } %i.bk, 1
  br i1 %i.bl, label %.critedge, label %bb.k, !prof !267

bb.k:                                             ; preds = %bb.j
  %i.bm = mul i32 %i.ar, %i.ak
  %i.bn = zext i32 %i.bm to i64
  %.idx80 = shl nuw nsw i64 %i.bn, 1              ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.idx80
  %i.bp = mul i32 %.062174, %i.ak
  %i.bq = zext i32 %i.bp to i64
  %.idx = shl nuw nsw i64 %i.bq, 1                ; 4 uses
  %i.br = icmp samesign ult i64 %.idx, %.idx80
  br i1 %i.br, label %.lr.ph162.preheader, label %.loopexit184

.lr.ph162.preheader:                              ; preds = %bb.k
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.idx ; 3 uses
  %.reass191 = add i64 %.idx, %invariant.op190
  %.reass = add i64 %.idx80, %invariant.op192
  %i.bt = tail call i64 @llvm.umax.i64(i64 %.reass191, i64 %.reass)
  %i.bu = add i64 %i.bt, %i.aq
  %i.bv = add nuw nsw i64 %.idx, %i.ac
  %i.bw = sub i64 %i.bu, %i.bv                    ; 2 uses
  %i.bx = lshr i64 %i.bw, 1
  %i.by = add nuw i64 %i.bx, 1                    ; 2 uses
  %min.iters.check = icmp ult i64 %i.bw, 14
  br i1 %min.iters.check, label %.lr.ph162.preheader187, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph162.preheader
  %n.vec = and i64 %i.by, -8                      ; 3 uses
  %i.bz = shl i64 %n.vec, 1
  %i.ca = getelementptr i8, ptr %i.bs, i64 %i.bz
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.0147170, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.cj, %vector.body ]
  %vec.phi185 = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.ck, %vector.body ]
  %i.cb = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.bs, i64 %i.cb ; 2 uses
  %i.cc = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <4 x i16>, ptr %next.gep, align 1, !tbaa !283
  %wide.load186 = load <4 x i16>, ptr %i.cc, align 1, !tbaa !283
  %i.cd = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %wide.load)
  %i.ce = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %wide.load186)
  %i.cf = zext <4 x i16> %i.cd to <4 x i32>
  %i.cg = zext <4 x i16> %i.ce to <4 x i32>
  %i.ch = add nuw nsw <4 x i32> %i.cf, splat (i32 1)
  %i.ci = add nuw nsw <4 x i32> %i.cg, splat (i32 1)
  %i.cj = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi, <4 x i32> %i.ch) ; 2 uses
  %i.ck = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi185, <4 x i32> %i.ci) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cl = icmp eq i64 %index.next, %n.vec
  br i1 %i.cl, label %middle.block, label %vector.body, !llvm.loop !5471

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.cj, <4 x i32> %i.ck)
  %i.cm = tail call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %i.by, %n.vec
  br i1 %cmp.n, label %.loopexit184, label %.lr.ph162.preheader187

.lr.ph162.preheader187:                           ; preds = %.lr.ph162.preheader, %middle.block
  %.058161.ph = phi ptr [ %i.bs, %.lr.ph162.preheader ], [ %i.ca, %middle.block ]
  %.4160.ph = phi i32 [ %.0147170, %.lr.ph162.preheader ], [ %i.cm, %middle.block ]
  br label %.lr.ph162

.lr.ph162:                                        ; preds = %.lr.ph162.preheader187, %.lr.ph162
  %.058161 = phi ptr [ %i.cr, %.lr.ph162 ], [ %.058161.ph, %.lr.ph162.preheader187 ] ; 2 uses
  %.4160 = phi i32 [ %.sroa.speculated100, %.lr.ph162 ], [ %.4160.ph, %.lr.ph162.preheader187 ]
  %i.cn = load i16, ptr %.058161, align 1, !tbaa !283
  %i.co = tail call noundef i16 @llvm.bswap.i16(i16 %i.cn)
  %i.cp = zext i16 %i.co to i32
  %i.cq = add nuw nsw i32 %i.cp, 1
  %.sroa.speculated100 = tail call i32 @llvm.umax.i32(i32 %.4160, i32 %i.cq) ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.058161, i64 2 ; 2 uses
  %i.cs = icmp ult ptr %i.cr, %i.bo
  br i1 %i.cs, label %.lr.ph162, label %.loopexit184, !llvm.loop !5472

.loopexit184:                                     ; preds = %.lr.ph162, %middle.block, %.loopexit156, %bb.k
  %.5150 = phi i32 [ %.0147170, %.loopexit156 ], [ %.0147170, %bb.k ], [ %i.cm, %middle.block ], [ %.sroa.speculated100, %.lr.ph162 ] ; 6 uses
  %.264 = phi i32 [ %.062174, %.loopexit156 ], [ %i.ar, %bb.k ], [ %i.ar, %middle.block ], [ %i.ar, %.lr.ph162 ] ; 2 uses
  %i.ct = shl nuw nsw i32 %.5150, 3               ; 2 uses
  %i.cu = load ptr, ptr %i.b, align 8, !tbaa !505
  %i.cv = ptrtoint ptr %i.cu to i64
  %i.cw = sub i64 %i.ap, %i.cv
  %i.cx = load i32, ptr %i.g, align 8, !tbaa !506
  %i.cy = zext i32 %i.cx to i64
  %.not.i.i.i = icmp ugt i64 %i.cw, %i.cy
  br i1 %.not.i.i.i, label %.critedge, label %bb.l, !prof !711

bb.l:                                             ; preds = %.loopexit184
  %i.cz = load ptr, ptr %i.j, align 8, !tbaa !504
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = sub i64 %i.da, %i.ap
  %i.dc = trunc i64 %i.db to i32
  %.not12.i.i.i = icmp ugt i32 %i.ct, %i.dc
  br i1 %.not12.i.i.i, label %.critedge, label %_ZNK21hb_sanitize_context_t11check_arrayIN3AAT5EntryINS1_17InsertionSubtableINS1_13ExtendedTypesEE9EntryDataEEEEEbPKT_j.exit, !prof !711

_ZNK21hb_sanitize_context_t11check_arrayIN3AAT5EntryINS1_17InsertionSubtableINS1_13ExtendedTypesEE9EntryDataEEEEEbPKT_j.exit: ; preds = %bb.l
  %i.dd = load i32, ptr %i.an, align 4, !tbaa !508
  %i.de = sub i32 %i.dd, %i.ct                    ; 3 uses
  store i32 %i.de, ptr %i.an, align 4, !tbaa !508
  %i.df = icmp sgt i32 %i.de, 0
  br i1 %i.df, label %bb.m, label %.critedge, !prof !672

bb.m:                                             ; preds = %_ZNK21hb_sanitize_context_t11check_arrayIN3AAT5EntryINS1_17InsertionSubtableINS1_13ExtendedTypesEE9EntryDataEEEEEbPKT_j.exit
  %.neg81 = sub nsw i32 %.0147170, %.5150
  %i.dg = add i32 %i.de, %.neg81                  ; 2 uses
  store i32 %i.dg, ptr %i.an, align 4, !tbaa !508
  %i.dh = icmp slt i32 %i.dg, 1
  br i1 %i.dh, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.di = zext nneg i32 %.5150 to i64
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.di
  %i.dk = icmp ult i32 %.0147170, %.5150
  br i1 %i.dk, label %.lr.ph167.preheader, label %.loopexit

.lr.ph167.preheader:                              ; preds = %bb.n
  %i.dl = zext nneg i32 %.0147170 to i64
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.dl
  br label %.lr.ph167

.lr.ph167:                                        ; preds = %.lr.ph167.preheader, %.lr.ph167
  %.0166 = phi ptr [ %i.dq, %.lr.ph167 ], [ %i.dm, %.lr.ph167.preheader ] ; 2 uses
  %.1146164 = phi i32 [ %.sroa.speculated, %.lr.ph167 ], [ %.0145172, %.lr.ph167.preheader ]
  %i.dn = load i16, ptr %.0166, align 1, !tbaa !283
  %i.do = tail call noundef i16 @llvm.bswap.i16(i16 %i.dn)
  %i.dp = zext i16 %i.do to i32
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %.1146164, i32 %i.dp) ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.0166, i64 8 ; 2 uses
  %i.dr = icmp ult ptr %i.dq, %i.dj
  br i1 %i.dr, label %.lr.ph167, label %.loopexit, !llvm.loop !5473

bb.o:                                             ; preds = %.loopexit
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %.critedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 %.5150, ptr %2, align 4, !tbaa !324
end_hunk_2
begin_hunk_3_@_ZNK3AAT5ChainINS_13ObsoleteTypesEE8sanitizeEP21hb_sanitize_context_tj:bb.a
bb.i:                                             ; preds = %bb.h
  %i.bk = load ptr, ptr %i.t, align 8, !tbaa !504
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = sub i64 %i.bl, %i.bf
  %i.bn = trunc i64 %i.bm to i32
  %.not12.i.i = icmp ugt i32 %i.bc, %i.bn
  br i1 %.not12.i.i, label %_ZNK21hb_sanitize_context_t11check_rangeEPKvj.exit.thread, label %_ZNK21hb_sanitize_context_t11check_rangeEPKvj.exit.i

_ZNK21hb_sanitize_context_t11check_rangeEPKvj.exit.i: ; preds = %bb.i
  %i.bo = load i32, ptr %i.y, align 4, !tbaa !508
  %i.bp = sub i32 %i.bo, %i.bc                    ; 2 uses
  store i32 %i.bp, ptr %i.y, align 4, !tbaa !508
  %i.bq = icmp sgt i32 %i.bp, 0
  br i1 %i.bq, label %_ZNK3AAT13ChainSubtableINS_13ObsoleteTypesEE8sanitizeEP21hb_sanitize_context_t.exit, label %_ZNK21hb_sanitize_context_t11check_rangeEPKvj.exit.thread

_ZNK3AAT13ChainSubtableINS_13ObsoleteTypesEE8sanitizeEP21hb_sanitize_context_t.exit: ; preds = %_ZNK21hb_sanitize_context_t11check_rangeEPKvj.exit.i
  %i.br = tail call noundef zeroext i1 @_ZNK3AAT13ChainSubtableINS_13ObsoleteTypesEE8dispatchI21hb_sanitize_context_tJEEENT_8return_tEPS5_DpOT0_(ptr noundef nonnull align 1 dereferenceable(22) %.01833, ptr noundef nonnull %1)
  br i1 %i.br, label %bb.j, label %_ZNK21hb_sanitize_context_t11check_rangeEPKvj.exit.thread

bb.j:                                             ; preds = %_ZNK3AAT13ChainSubtableINS_13ObsoleteTypesEE8sanitizeEP21hb_sanitize_context_t.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.bs = load i16, ptr %.01833, align 1, !tbaa !283
  %i.bt = tail call noundef i16 @llvm.bswap.i16(i16 %i.bs)
  %i.bu = zext i16 %i.bt to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %.01833, i64 %i.bu ; 2 uses
  %i.bw = add nuw nsw i32 %.034, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.bw, %i.as
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !5496

._crit_edge:                                      ; preds = %bb.j, %bb.f
  %.018.lcssa = phi ptr [ %i.ao, %bb.f ], [ %i.bv, %bb.j ]
  %i.bx = icmp ugt i32 %2, 2
  br i1 %i.bx, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge
  %i.by = tail call noundef zeroext i1 @_ZNK3AAT21SubtableGlyphCoverage8sanitizeEP21hb_sanitize_context_tj(ptr noundef nonnull align 1 dereferenceable(4) %.018.lcssa, ptr noundef nonnull %1, i32 noundef %i.as)
  br i1 %i.by, label %bb.l, label %_ZNK21hb_sanitize_context_t11check_rangeEPKvj.exit.thread

bb.l:                                             ; preds = %bb.k, %._crit_edge
  br label %_ZNK21hb_sanitize_context_t11check_rangeEPKvj.exit.thread

_ZNK21hb_sanitize_context_t11check_rangeEPKvj.exit.thread: ; preds = %bb.h, %bb.i, %bb.g, %_ZNK21hb_sanitize_context_t11check_rangeEPKvj.exit.i, %.lr.ph, %_ZNK3AAT13ChainSubtableINS_13ObsoleteTypesEE8sanitizeEP21hb_sanitize_context_t.exit, %bb.e, %bb.c, %bb.d, %_ZNK21hb_sanitize_context_t11check_arrayIN3AAT7FeatureEEEbPKT_j.exit, %bb.a, %bb.b, %_ZNK21hb_sanitize_context_t11check_rangeEPKvj.exit, %bb.l, %bb.k
  %.3 = phi i1 [ false, %bb.e ], [ false, %bb.a ], [ true, %bb.l ], [ false, %bb.k ], [ false, %_ZNK21hb_sanitize_context_t11check_arrayIN3AAT7FeatureEEEbPKT_j.exit ], [ false, %_ZNK21hb_sanitize_context_t11check_rangeEPKvj.exit ], [ false, %bb.b ], [ false, %bb.c ], [ false, %bb.d ], [ false, %_ZNK3AAT13ChainSubtableINS_13ObsoleteTypesEE8sanitizeEP21hb_sanitize_context_t.exit ], [ false, %.lr.ph ], [ false, %_ZNK21hb_sanitize_context_t11check_rangeEPKvj.exit.i ], [ false, %bb.g ], [ false, %bb.i ], [ false, %bb.h ]
  ret i1 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK3AAT13ChainSubtableINS_13ObsoleteTypesEE8dispatchI21hb_sanitize_context_tJEEENT_8return_tEPS5_DpOT0_(ptr noundef nonnull align 1 dereferenceable(22) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.c = load i16, ptr %i.b, align 1, !tbaa !283
  %i.d = lshr i16 %i.c, 8
  %trunc = trunc nuw i16 %i.d to i8
  switch i8 %trunc, label %_ZN21hb_sanitize_context_t8dispatchIN3AAT16LigatureSubtableINS1_13ObsoleteTypesEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.g
    i8 4, label %bb.l
    i8 5, label %bb.m
  ]

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = tail call noundef zeroext i1 @_ZNK3AAT10StateTableINS_13ObsoleteTypesEvE8sanitizeEP21hb_sanitize_context_tPj(ptr noundef nonnull align 1 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(62) %1, ptr noundef null)
  br label %_ZN21hb_sanitize_context_t8dispatchIN3AAT16LigatureSubtableINS1_13ObsoleteTypesEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit

bb.c:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  store i32 0, ptr %i.a, align 4, !tbaa !324
  %i.h = call noundef zeroext i1 @_ZNK3AAT10StateTableINS_13ObsoleteTypesENS_18ContextualSubtableIS1_E9EntryDataEE8sanitizeEP21hb_sanitize_context_tPj(ptr noundef nonnull align 1 dereferenceable(10) %i.g, ptr noundef nonnull align 8 dereferenceable(62) %1, ptr noundef nonnull %i.a)
  br i1 %i.h, label %bb.d, label %_ZN21hb_sanitize_context_t8dispatchIN3AAT18ContextualSubtableINS1_13ObsoleteTypesEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit, !prof !268

bb.d:                                             ; preds = %bb.c
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !505
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !506
  %i.q = zext i32 %i.p to i64
  %.not.i.not.i.i.i = icmp ugt i64 %i.n, %i.q
  br i1 %.not.i.not.i.i.i, label %_ZN21hb_sanitize_context_t8dispatchIN3AAT18ContextualSubtableINS1_13ObsoleteTypesEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit, label %bb.e, !prof !267

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.s = load i16, ptr %i.r, align 1, !tbaa !283
  %i.t = call noundef i16 @llvm.bswap.i16(i16 %i.s)
  %i.u = zext i16 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.u
  %i.w = load ptr, ptr %i.j, align 8, !tbaa !505
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = load i32, ptr %i.o, align 8, !tbaa !506
  %i.ab = zext i32 %i.aa to i64
  %.not.i.i.i.i.i.i.i.i.i.i = icmp ugt i64 %i.z, %i.ab
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN21hb_sanitize_context_t8dispatchIN3AAT18ContextualSubtableINS1_13ObsoleteTypesEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit, label %_ZNK2OT14UnsizedArrayOfINS_8OffsetToIN3AAT6LookupINS_11HBGlyphID16EEENS_7NumTypeILb1EtLj2EEEvLb0EEEE16sanitize_shallowEP21hb_sanitize_context_tj.exit.i.i.i.i.i.i, !prof !711

_ZNK2OT14UnsizedArrayOfINS_8OffsetToIN3AAT6LookupINS_11HBGlyphID16EEENS_7NumTypeILb1EtLj2EEEvLb0EEEE16sanitize_shallowEP21hb_sanitize_context_tj.exit.i.i.i.i.i.i: ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !508
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %bb.f, label %_ZN21hb_sanitize_context_t8dispatchIN3AAT18ContextualSubtableINS1_13ObsoleteTypesEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit, !prof !672

bb.f:                                             ; preds = %_ZNK2OT14UnsizedArrayOfINS_8OffsetToIN3AAT6LookupINS_11HBGlyphID16EEENS_7NumTypeILb1EtLj2EEEvLb0EEEE16sanitize_shallowEP21hb_sanitize_context_tj.exit.i.i.i.i.i.i
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  br label %_ZN21hb_sanitize_context_t8dispatchIN3AAT18ContextualSubtableINS1_13ObsoleteTypesEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit

_ZN21hb_sanitize_context_t8dispatchIN3AAT18ContextualSubtableINS1_13ObsoleteTypesEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit: ; preds = %bb.c, %bb.d, %bb.e, %_ZNK2OT14UnsizedArrayOfINS_8OffsetToIN3AAT6LookupINS_11HBGlyphID16EEENS_7NumTypeILb1EtLj2EEEvLb0EEEE16sanitize_shallowEP21hb_sanitize_context_tj.exit.i.i.i.i.i.i, %bb.f
  %.0.i.i.i = phi i1 [ false, %bb.c ], [ false, %bb.d ], [ false, %bb.e ], [ false, %_ZNK2OT14UnsizedArrayOfINS_8OffsetToIN3AAT6LookupINS_11HBGlyphID16EEENS_7NumTypeILb1EtLj2EEEvLb0EEEE16sanitize_shallowEP21hb_sanitize_context_tj.exit.i.i.i.i.i.i ], [ true, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  br label %_ZN21hb_sanitize_context_t8dispatchIN3AAT16LigatureSubtableINS1_13ObsoleteTypesEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit

bb.g:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !505
  %i.ai = ptrtoint ptr %i.af to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.am = load i32, ptr %i.al, align 8, !tbaa !506
  %i.an = zext i32 %i.am to i64
  %.not4.i.i.i = icmp ugt i64 %i.ak, %i.an
  br i1 %.not4.i.i.i, label %_ZN21hb_sanitize_context_t8dispatchIN3AAT16LigatureSubtableINS1_13ObsoleteTypesEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ap = tail call noundef zeroext i1 @_ZNK3AAT10StateTableINS_13ObsoleteTypesEvE8sanitizeEP21hb_sanitize_context_tPj(ptr noundef nonnull align 1 dereferenceable(14) %i.ao, ptr noundef nonnull align 8 dereferenceable(62) %1, ptr noundef null)
  br i1 %i.ap, label %bb.i, label %_ZN21hb_sanitize_context_t8dispatchIN3AAT16LigatureSubtableINS1_13ObsoleteTypesEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit

bb.i:                                             ; preds = %bb.h
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ar = load i16, ptr %i.aq, align 1, !tbaa !283
  %.not.i.i.i = icmp eq i16 %i.ar, 0
  br i1 %.not.i.i.i, label %_ZN21hb_sanitize_context_t8dispatchIN3AAT16LigatureSubtableINS1_13ObsoleteTypesEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.at = load i16, ptr %i.as, align 1, !tbaa !283
  %.not3.i.i.i = icmp eq i16 %i.at, 0
  br i1 %.not3.i.i.i, label %_ZN21hb_sanitize_context_t8dispatchIN3AAT16LigatureSubtableINS1_13ObsoleteTypesEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.av = load i16, ptr %i.au, align 1, !tbaa !283
  %i.aw = icmp ne i16 %i.av, 0
  br label %_ZN21hb_sanitize_context_t8dispatchIN3AAT16LigatureSubtableINS1_13ObsoleteTypesEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit

bb.l:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ay = tail call noundef zeroext i1 @_ZNK3AAT6LookupIN2OT11HBGlyphID16EE8sanitizeEP21hb_sanitize_context_t(ptr noundef nonnull align 1 dereferenceable(13) %i.ax, ptr noundef nonnull align 8 dereferenceable(62) %1)
  br label %_ZN21hb_sanitize_context_t8dispatchIN3AAT16LigatureSubtableINS1_13ObsoleteTypesEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit

bb.m:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !505
  %i.bc = ptrtoint ptr %i.az to i64
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !506
  %i.bh = zext i32 %i.bg to i64
  %.not.i.i.i7 = icmp ugt i64 %i.be, %i.bh
  br i1 %.not.i.i.i7, label %_ZN21hb_sanitize_context_t8dispatchIN3AAT16LigatureSubtableINS1_13ObsoleteTypesEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bj = tail call noundef zeroext i1 @_ZNK3AAT10StateTableINS_13ObsoleteTypesENS_17InsertionSubtableIS1_E9EntryDataEE8sanitizeEP21hb_sanitize_context_tPj(ptr noundef nonnull align 1 dereferenceable(10) %i.bi, ptr noundef nonnull align 8 dereferenceable(62) %1, ptr noundef null)
  br i1 %i.bj, label %bb.o, label %_ZN21hb_sanitize_context_t8dispatchIN3AAT16LigatureSubtableINS1_13ObsoleteTypesEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit

bb.o:                                             ; preds = %bb.n
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bl = load i16, ptr %i.bk, align 1, !tbaa !283
  %i.bm = icmp ne i16 %i.bl, 0
  br label %_ZN21hb_sanitize_context_t8dispatchIN3AAT16LigatureSubtableINS1_13ObsoleteTypesEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit

_ZN21hb_sanitize_context_t8dispatchIN3AAT16LigatureSubtableINS1_13ObsoleteTypesEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit: ; preds = %bb.o, %bb.n, %bb.m, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.a, %bb.l, %_ZN21hb_sanitize_context_t8dispatchIN3AAT18ContextualSubtableINS1_13ObsoleteTypesEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit, %bb.b
  %.0 = phi i1 [ false, %bb.g ], [ %i.f, %bb.b ], [ %.0.i.i.i, %_ZN21hb_sanitize_context_t8dispatchIN3AAT18ContextualSubtableINS1_13ObsoleteTypesEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit ], [ true, %bb.a ], [ %i.ay, %bb.l ], [ false, %bb.j ], [ false, %bb.i ], [ %i.aw, %bb.k ], [ false, %bb.h ], [ %i.bm, %bb.o ], [ false, %bb.n ], [ false, %bb.m ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK3AAT10StateTableINS_13ObsoleteTypesEvE8sanitizeEP21hb_sanitize_context_tPj(ptr noundef nonnull align 1 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !505
  %i.d = ptrtoint ptr %i.a to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !506
  %i.i = zext i32 %i.h to i64
  %.not155 = icmp ugt i64 %i.f, %i.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  br i1 %.not155, label %.critedge, label %bb.b, !prof !267

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.k = load i16, ptr %0, align 1, !tbaa !283
  %i.l = tail call noundef i16 @llvm.bswap.i16(i16 %i.k)
  %i.m = icmp ugt i16 %i.l, 3
  br i1 %i.m, label %bb.c, label %.critedge, !prof !268

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !505
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = load i32, ptr %i.g, align 8, !tbaa !506
  %i.t = zext i32 %i.s to i64
  %.not.i.not = icmp ugt i64 %i.r, %i.t
  br i1 %.not.i.not, label %.critedge, label %bb.d, !prof !267

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 2
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.v = load i16, ptr %i.u, align 1, !tbaa !283
  %i.w = tail call noundef i16 @llvm.bswap.i16(i16 %i.v)
  %i.x = zext i16 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %i.x ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !505
  %i.ab = ptrtoint ptr %i.z to i64                ; 3 uses
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = load i32, ptr %i.g, align 8, !tbaa !506
  %i.af = zext i32 %i.ae to i64
  %.not.i.i.i = icmp ugt i64 %i.ad, %i.af
  br i1 %.not.i.i.i, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 2
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.ah = load i16, ptr %i.ag, align 1, !tbaa !283
  %i.ai = tail call noundef i16 @llvm.bswap.i16(i16 %i.ah)
  %i.aj = zext i16 %i.ai to i32                   ; 2 uses
  %i.ak = load ptr, ptr %i.b, align 8, !tbaa !505
  %i.al = ptrtoint ptr %i.ak to i64               ; 4 uses
  %i.am = sub i64 %i.ab, %i.al
  %i.an = load i32, ptr %i.g, align 8, !tbaa !506
  %i.ao = zext i32 %i.an to i64                   ; 4 uses
  %.not.i.i.i.i.i.i = icmp ugt i64 %i.am, %i.ao
  br i1 %.not.i.i.i.i.i.i, label %.critedge, label %bb.f, !prof !711

bb.f:                                             ; preds = %bb.e
  %i.ap = load ptr, ptr %i.j, align 8, !tbaa !504
  %i.aq = ptrtoint ptr %i.ap to i64               ; 4 uses
  %i.ar = sub i64 %i.aq, %i.ab
  %i.as = trunc i64 %i.ar to i32
  %.not12.i.i.i.i.i.i = icmp ugt i32 %i.aj, %i.as
  br i1 %.not12.i.i.i.i.i.i, label %.critedge, label %_ZNK2OT8OffsetToIN3AAT10ClassTableINS_7NumTypeILb1EhLj1EEEEENS3_ILb1EtLj2EEEvLb0EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit, !prof !711

_ZNK2OT8OffsetToIN3AAT10ClassTableINS_7NumTypeILb1EhLj1EEEEENS3_ILb1EtLj2EEEvLb0EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit: ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 8 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !508
  %i.av = sub i32 %i.au, %i.aj                    ; 3 uses
  store i32 %i.av, ptr %i.at, align 4, !tbaa !508
  %i.aw = icmp slt i32 %i.av, 1
  br i1 %i.aw, label %.critedge, label %bb.g, !prof !318

bb.g:                                             ; preds = %_ZNK2OT8OffsetToIN3AAT10ClassTableINS_7NumTypeILb1EhLj1EEEEENS3_ILb1EtLj2EEEvLb0EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit
  %i.ax = load i16, ptr %i.n, align 1, !tbaa !283
  %i.ay = tail call noundef i16 @llvm.bswap.i16(i16 %i.ax) ; 2 uses
  %i.az = zext i16 %i.ay to i64                   ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 %i.az ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.bc = load i16, ptr %i.bb, align 1, !tbaa !283
  %i.bd = tail call noundef i16 @llvm.bswap.i16(i16 %i.bc)
  %i.be = zext i16 %i.bd to i64                   ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 %i.be ; 3 uses
  %i.bg = load i16, ptr %0, align 1, !tbaa !283
  %i.bh = tail call noundef i16 @llvm.bswap.i16(i16 %i.bg)
  %i.bi = zext i16 %i.bh to i32                   ; 8 uses
  %i.bj = ptrtoint ptr %i.ba to i64               ; 2 uses
  %i.bk = ptrtoint ptr %i.bf to i64               ; 2 uses
  %i.bl = zext i16 %i.ay to i32                   ; 2 uses
  %i.bm = sub i64 %i.bj, %i.al
  %.not.i.i82 = icmp ugt i64 %i.bm, %i.ao
  %i.bn = sub i64 %i.aq, %i.bj
  %i.bo = trunc i64 %i.bn to i32
  %i.bp = sub i64 %i.bk, %i.al
  %.not.i.i.i86 = icmp ugt i64 %i.bp, %i.ao
  %i.bq = sub i64 %i.aq, %i.bk
  %i.br = trunc i64 %i.bq to i32
  %3 = ptrtoaddr ptr %0 to i64                    ; 2 uses
  %i.bs = add i64 %3, %i.az                       ; 2 uses
  %invariant.op = add i64 %i.bs, 1
  %i.bt = add i64 %3, %i.az
  %4 = ptrtoaddr ptr %0 to i64                    ; 3 uses
  %invariant.op238 = add i64 %4, %i.be
  %invariant.op240 = add i64 %invariant.op238, 4
  %invariant.op242 = add i64 %4, %i.be
  %i.bu = xor i64 %4, -1
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.bl, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert194 = insertelement <4 x i32> poison, i32 %i.bi, i64 0
  %broadcast.splat195 = shufflevector <4 x i32> %broadcast.splatinsert194, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %bb.h

.loopexit:                                        ; preds = %.lr.ph168, %bb.p
  %.1146.lcssa = phi i32 [ %.0145173, %bb.p ], [ %.sroa.speculated, %.lr.ph168 ] ; 2 uses
  %.1144.lcssa = phi i32 [ %.0143174, %bb.p ], [ %.sroa.speculated92, %.lr.ph168 ] ; 2 uses
  %i.bv = icmp slt i32 %.1144.lcssa, %.2          ; 2 uses
  %i.bw = icmp sle i32 %.264, %.1146.lcssa
  %i.bx = select i1 %i.bv, i1 true, i1 %i.bw
  br i1 %i.bx, label %bb.h, label %bb.q, !llvm.loop !5497

bb.h:                                             ; preds = %bb.g, %.loopexit
  %i.by = phi i32 [ %i.av, %bb.g ], [ %i.eb, %.loopexit ] ; 2 uses
  %i.bz = phi i1 [ false, %bb.g ], [ %i.bv, %.loopexit ]
  %.061176 = phi i32 [ 0, %bb.g ], [ %.2, %.loopexit ] ; 2 uses
  %.062175 = phi i32 [ 0, %bb.g ], [ %.264, %.loopexit ] ; 4 uses
  %.0143174 = phi i32 [ 0, %bb.g ], [ %.1144.lcssa, %.loopexit ] ; 8 uses
  %.0145173 = phi i32 [ 0, %bb.g ], [ %.1146.lcssa, %.loopexit ] ; 6 uses
  %.0147171 = phi i32 [ 0, %bb.g ], [ %.5150, %.loopexit ] ; 7 uses
  br i1 %i.bz, label %bb.i, label %.loopexit157

bb.i:                                             ; preds = %bb.h
  %i.ca = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.0143174, i32 %i.bi)
  %i.cb = extractvalue { i32, i1 } %i.ca, 1
  br i1 %i.cb, label %.critedge, label %bb.j, !prof !267

bb.j:                                             ; preds = %bb.i
  %i.cc = mul i32 %.0143174, %i.bi                ; 2 uses
  %i.cd = mul i32 %.0143174, %i.bi                ; 2 uses
  %i.ce = sub i32 0, %i.cd
  %i.cf = zext i32 %i.cc to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.cf
  %i.ch = ptrtoint ptr %i.cg to i64               ; 2 uses
  %i.ci = sub i64 %i.ch, %i.al
  %.not.i.i = icmp ugt i64 %i.ci, %i.ao
  %i.cj = sub i64 %i.aq, %i.ch
  %i.ck = trunc i64 %i.cj to i32
  %.not12.i.i = icmp ugt i32 %i.ce, %i.ck
  %or.cond191 = or i1 %.not.i.i, %.not12.i.i
  br i1 %or.cond191, label %.critedge, label %_ZNK21hb_sanitize_context_t11check_rangeIN2OT7NumTypeILb1EhLj1EEEEEbPKT_jj.exit, !prof !1876

_ZNK21hb_sanitize_context_t11check_rangeIN2OT7NumTypeILb1EhLj1EEEEEbPKT_jj.exit: ; preds = %bb.j
  %i.cl = add i32 %i.by, %i.cd                    ; 3 uses
  store i32 %i.cl, ptr %i.at, align 4, !tbaa !508
  %i.cm = icmp sgt i32 %i.cl, 0
  br i1 %i.cm, label %bb.k, label %.critedge, !prof !672

bb.k:                                             ; preds = %_ZNK21hb_sanitize_context_t11check_rangeIN2OT7NumTypeILb1EhLj1EEEEEbPKT_jj.exit
  %.neg = sub nsw i32 %.0143174, %.061176
  %i.cn = add i32 %i.cl, %.neg                    ; 3 uses
  store i32 %i.cn, ptr %i.at, align 4, !tbaa !508
  %i.co = icmp sgt i32 %i.cn, 0
  %.not77 = icmp eq i32 %i.cc, 0
  %or.cond = and i1 %.not77, %i.co
  br i1 %or.cond, label %.loopexit157, label %.critedge, !prof !704

.loopexit157:                                     ; preds = %bb.k, %bb.h
  %i.cp = phi i32 [ %i.by, %bb.h ], [ %i.cn, %bb.k ] ; 2 uses
  %.2 = phi i32 [ %.061176, %bb.h ], [ %.0143174, %bb.k ] ; 2 uses
  %.not78 = icmp sgt i32 %.062175, %.0145173
  br i1 %.not78, label %.loopexit189, label %bb.l

bb.l:                                             ; preds = %.loopexit157
  %i.cq = add nuw nsw i32 %.0145173, 1            ; 5 uses
  %i.cr = mul i32 %i.cq, %i.bi                    ; 2 uses
  %.not12.i.i83 = icmp ugt i32 %i.cr, %i.bo
  %or.cond192 = select i1 %.not.i.i82, i1 true, i1 %.not12.i.i83, !prof !1876
  br i1 %or.cond192, label %.critedge, label %_ZNK21hb_sanitize_context_t11check_rangeIN2OT7NumTypeILb1EhLj1EEEEEbPKT_jj.exit84, !prof !1876

_ZNK21hb_sanitize_context_t11check_rangeIN2OT7NumTypeILb1EhLj1EEEEEbPKT_jj.exit84: ; preds = %bb.l
  %i.cs = sub i32 %i.cp, %i.cr                    ; 3 uses
  store i32 %i.cs, ptr %i.at, align 4, !tbaa !508
  %i.ct = icmp sgt i32 %i.cs, 0
  br i1 %i.ct, label %bb.m, label %.critedge, !prof !672

bb.m:                                             ; preds = %_ZNK21hb_sanitize_context_t11check_rangeIN2OT7NumTypeILb1EhLj1EEEEEbPKT_jj.exit84
  %i.cu = xor i32 %.0145173, -1
  %.neg79 = add nsw i32 %.062175, %i.cu
  %i.cv = add i32 %.neg79, %i.cs                  ; 5 uses
  store i32 %i.cv, ptr %i.at, align 4, !tbaa !508
  %i.cw = icmp slt i32 %i.cv, 1
  br i1 %i.cw, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cx = mul nuw i32 %i.cq, %i.bi                ; 2 uses
  %i.cy = zext i32 %i.cx to i64                   ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.cy
  %i.da = mul nuw i32 %.062175, %i.bi             ; 2 uses
  %i.db = icmp ult i32 %i.da, %i.cx
  br i1 %i.db, label %.lr.ph163.preheader, label %.loopexit189

.lr.ph163.preheader:                              ; preds = %bb.n
  %i.dc = zext i32 %i.da to i64                   ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.dc ; 3 uses
  %.reass = add i64 %i.dc, %invariant.op
  %i.de = add i64 %i.bs, %i.cy
  %i.df = tail call i64 @llvm.umax.i64(i64 %.reass, i64 %i.de)
  %i.dg = add i64 %i.bt, %i.dc
  %i.dh = sub i64 %i.df, %i.dg                    ; 3 uses
  %min.iters.check209 = icmp ult i64 %i.dh, 8
  br i1 %min.iters.check209, label %.lr.ph163.preheader227, label %vector.ph210

vector.ph210:                                     ; preds = %.lr.ph163.preheader
  %n.vec211 = and i64 %i.dh, -8                   ; 3 uses
  %i.di = getelementptr i8, ptr %i.dd, i64 %n.vec211
  %broadcast.splatinsert212 = insertelement <4 x i32> poison, i32 %.0147171, i64 0
  %broadcast.splat213 = shufflevector <4 x i32> %broadcast.splatinsert212, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body214

vector.body214:                                   ; preds = %vector.body214, %vector.ph210
  %index215 = phi i64 [ 0, %vector.ph210 ], [ %index.next220, %vector.body214 ] ; 2 uses
  %vec.phi216 = phi <4 x i32> [ %broadcast.splat213, %vector.ph210 ], [ %i.do, %vector.body214 ]
  %vec.phi217 = phi <4 x i32> [ %broadcast.splat213, %vector.ph210 ], [ %i.dp, %vector.body214 ]
  %next.gep218 = getelementptr i8, ptr %i.dd, i64 %index215 ; 2 uses
  %i.dj = getelementptr i8, ptr %next.gep218, i64 4
  %wide.load = load <4 x i8>, ptr %next.gep218, align 1, !tbaa !303
  %wide.load219 = load <4 x i8>, ptr %i.dj, align 1, !tbaa !303
  %i.dk = zext <4 x i8> %wide.load to <4 x i32>
  %i.dl = zext <4 x i8> %wide.load219 to <4 x i32>
  %i.dm = add nuw nsw <4 x i32> %i.dk, splat (i32 1)
  %i.dn = add nuw nsw <4 x i32> %i.dl, splat (i32 1)
  %i.do = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi216, <4 x i32> %i.dm) ; 2 uses
  %i.dp = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi217, <4 x i32> %i.dn) ; 2 uses
  %index.next220 = add nuw i64 %index215, 8       ; 2 uses
  %i.dq = icmp eq i64 %index.next220, %n.vec211
  br i1 %i.dq, label %middle.block221, label %vector.body214, !llvm.loop !5498

middle.block221:                                  ; preds = %vector.body214
  %rdx.minmax222 = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.do, <4 x i32> %i.dp)
  %i.dr = tail call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %rdx.minmax222) ; 2 uses
  %cmp.n = icmp eq i64 %i.dh, %n.vec211
  br i1 %cmp.n, label %.loopexit189, label %.lr.ph163.preheader227

.lr.ph163.preheader227:                           ; preds = %.lr.ph163.preheader, %middle.block221
  %.058162.ph = phi ptr [ %i.dd, %.lr.ph163.preheader ], [ %i.di, %middle.block221 ]
  %.4161.ph = phi i32 [ %.0147171, %.lr.ph163.preheader ], [ %i.dr, %middle.block221 ]
  br label %.lr.ph163

.lr.ph163:                                        ; preds = %.lr.ph163.preheader227, %.lr.ph163
  %.058162 = phi ptr [ %i.dv, %.lr.ph163 ], [ %.058162.ph, %.lr.ph163.preheader227 ] ; 2 uses
  %.4161 = phi i32 [ %.sroa.speculated100, %.lr.ph163 ], [ %.4161.ph, %.lr.ph163.preheader227 ]
  %i.ds = load i8, ptr %.058162, align 1, !tbaa !303
  %i.dt = zext i8 %i.ds to i32
  %i.du = add nuw nsw i32 %i.dt, 1
  %.sroa.speculated100 = tail call i32 @llvm.umax.i32(i32 %.4161, i32 %i.du) ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.058162, i64 1 ; 2 uses
  %i.dw = icmp ult ptr %i.dv, %i.cz
  br i1 %i.dw, label %.lr.ph163, label %.loopexit189, !llvm.loop !5499

.loopexit189:                                     ; preds = %.lr.ph163, %middle.block221, %.loopexit157, %bb.n
  %i.dx = phi i32 [ %i.cp, %.loopexit157 ], [ %i.cv, %bb.n ], [ %i.cv, %middle.block221 ], [ %i.cv, %.lr.ph163 ]
  %.5150 = phi i32 [ %.0147171, %.loopexit157 ], [ %.0147171, %bb.n ], [ %i.dr, %middle.block221 ], [ %.sroa.speculated100, %.lr.ph163 ] ; 6 uses
  %.264 = phi i32 [ %.062175, %.loopexit157 ], [ %i.cq, %bb.n ], [ %i.cq, %middle.block221 ], [ %i.cq, %.lr.ph163 ] ; 2 uses
  %i.dy = shl nuw nsw i32 %.5150, 2               ; 2 uses
  %.not12.i.i.i = icmp ugt i32 %i.dy, %i.br
  %or.cond193 = select i1 %.not.i.i.i86, i1 true, i1 %.not12.i.i.i, !prof !1876
  br i1 %or.cond193, label %.critedge, label %_ZNK21hb_sanitize_context_t11check_arrayIN3AAT5EntryIvEEEEbPKT_j.exit, !prof !1876

_ZNK21hb_sanitize_context_t11check_arrayIN3AAT5EntryIvEEEEbPKT_j.exit: ; preds = %.loopexit189
  %i.dz = sub nsw i32 %i.dx, %i.dy                ; 3 uses
  store i32 %i.dz, ptr %i.at, align 4, !tbaa !508
  %i.ea = icmp sgt i32 %i.dz, 0
  br i1 %i.ea, label %bb.o, label %.critedge, !prof !672

bb.o:                                             ; preds = %_ZNK21hb_sanitize_context_t11check_arrayIN3AAT5EntryIvEEEEbPKT_j.exit
  %.neg80 = sub nsw i32 %.0147171, %.5150
  %i.eb = add i32 %i.dz, %.neg80                  ; 3 uses
  store i32 %i.eb, ptr %i.at, align 4, !tbaa !508
  %i.ec = icmp slt i32 %i.eb, 1
  br i1 %i.ec, label %.critedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ed = zext i32 %.5150 to i64                  ; 2 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.ed
  %i.ef = icmp ult i32 %.0147171, %.5150
  br i1 %i.ef, label %.lr.ph168.preheader, label %.loopexit

.lr.ph168.preheader:                              ; preds = %bb.p
  %i.eg = zext i32 %.0147171 to i64               ; 2 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.eg ; 4 uses
  %i.ei = shl nuw nsw i64 %i.eg, 2                ; 2 uses
  %.reass241 = add i64 %i.ei, %invariant.op240
  %i.ej = shl nuw nsw i64 %i.ed, 2
  %.reass243 = add i64 %i.ej, %invariant.op242
  %i.ek = tail call i64 @llvm.umax.i64(i64 %.reass241, i64 %.reass243)
  %i.el = add i64 %i.ek, %i.bu
  %i.em = add nuw nsw i64 %i.ei, %i.be
  %i.en = sub i64 %i.el, %i.em                    ; 2 uses
  %min.iters.check = icmp ult i64 %i.en, 32
  br i1 %min.iters.check, label %.lr.ph168.preheader226, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph168.preheader
  %i.eo = lshr i64 %i.en, 2
  %i.ep = add nuw nsw i64 %i.eo, 1                ; 2 uses
  %i.eq = and i64 %i.ep, 7                        ; 2 uses
  %i.er = icmp eq i64 %i.eq, 0
  %i.es = select i1 %i.er, i64 8, i64 %i.eq
  %n.vec = sub nsw i64 %i.ep, %i.es               ; 2 uses
  %i.et = shl i64 %n.vec, 2
  %i.eu = getelementptr i8, ptr %i.eh, i64 %i.et
  %broadcast.splatinsert196 = insertelement <4 x i32> poison, i32 %.0143174, i64 0
  %broadcast.splat197 = shufflevector <4 x i32> %broadcast.splatinsert196, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert198 = insertelement <4 x i32> poison, i32 %.0145173, i64 0
  %broadcast.splat199 = shufflevector <4 x i32> %broadcast.splatinsert198, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %broadcast.splat197, %vector.ph ], [ %i.fh, %vector.body ]
  %vec.phi200 = phi <4 x i32> [ %broadcast.splat197, %vector.ph ], [ %i.fi, %vector.body ]
  %vec.phi201 = phi <4 x i32> [ %broadcast.splat199, %vector.ph ], [ %i.fj, %vector.body ]
  %vec.phi202 = phi <4 x i32> [ %broadcast.splat199, %vector.ph ], [ %i.fk, %vector.body ]
  %i.ev = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.eh, i64 %i.ev
  %i.ew = getelementptr i8, ptr %i.eh, i64 %i.ev
  %next.gep203 = getelementptr i8, ptr %i.ew, i64 16
  %wide.vec = load <8 x i16>, ptr %next.gep, align 1, !tbaa !283
  %wide.vec204 = load <8 x i16>, ptr %next.gep203, align 1, !tbaa !283
  %wide.vec.fr = freeze <8 x i16> %wide.vec
  %i.ex = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.vec.fr)
  %i.ey = bitcast <8 x i16> %i.ex to <4 x i32>
  %i.ez = and <4 x i32> %i.ey, splat (i32 65535)
  %wide.vec204.fr = freeze <8 x i16> %wide.vec204
  %i.fa = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.vec204.fr)
  %i.fb = bitcast <8 x i16> %i.fa to <4 x i32>
  %i.fc = and <4 x i32> %i.fb, splat (i32 65535)
  %i.fd = sub nsw <4 x i32> %i.ez, %broadcast.splat
  %i.fe = sub nsw <4 x i32> %i.fc, %broadcast.splat
  %i.ff = sdiv <4 x i32> %i.fd, %broadcast.splat195 ; 2 uses
  %i.fg = sdiv <4 x i32> %i.fe, %broadcast.splat195 ; 2 uses
  %i.fh = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %vec.phi, <4 x i32> %i.ff) ; 2 uses
  %i.fi = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %vec.phi200, <4 x i32> %i.fg) ; 2 uses
  %i.fj = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi201, <4 x i32> %i.ff) ; 2 uses
  %i.fk = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi202, <4 x i32> %i.fg) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fl = icmp eq i64 %index.next, %n.vec
  br i1 %i.fl, label %middle.block, label %vector.body, !llvm.loop !5500

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.fh, <4 x i32> %i.fi)
  %i.fm = tail call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %rdx.minmax)
  %rdx.minmax206 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.fj, <4 x i32> %i.fk)
  %i.fn = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax206)
  br label %.lr.ph168.preheader226

.lr.ph168.preheader226:                           ; preds = %.lr.ph168.preheader, %middle.block
  %.0167.ph = phi ptr [ %i.eh, %.lr.ph168.preheader ], [ %i.eu, %middle.block ]
  %.1144166.ph = phi i32 [ %.0143174, %.lr.ph168.preheader ], [ %i.fm, %middle.block ]
  %.1146165.ph = phi i32 [ %.0145173, %.lr.ph168.preheader ], [ %i.fn, %middle.block ]
  br label %.lr.ph168

.lr.ph168:                                        ; preds = %.lr.ph168.preheader226, %.lr.ph168
  %.0167 = phi ptr [ %i.ft, %.lr.ph168 ], [ %.0167.ph, %.lr.ph168.preheader226 ] ; 2 uses
  %.1144166 = phi i32 [ %.sroa.speculated92, %.lr.ph168 ], [ %.1144166.ph, %.lr.ph168.preheader226 ]
  %.1146165 = phi i32 [ %.sroa.speculated, %.lr.ph168 ], [ %.1146165.ph, %.lr.ph168.preheader226 ]
  %i.fo = load i16, ptr %.0167, align 1, !tbaa !283
  %i.fp = tail call noundef i16 @llvm.bswap.i16(i16 %i.fo)
  %i.fq = zext i16 %i.fp to i32
  %i.fr = sub nsw i32 %i.fq, %i.bl
  %i.fs = sdiv i32 %i.fr, %i.bi                   ; 2 uses
  %.sroa.speculated92 = tail call i32 @llvm.smin.i32(i32 %.1144166, i32 %i.fs) ; 2 uses
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %.1146165, i32 %i.fs) ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.0167, i64 4 ; 2 uses
  %i.fu = icmp ult ptr %i.ft, %i.ee
  br i1 %i.fu, label %.lr.ph168, label %.loopexit, !llvm.loop !5501

bb.q:                                             ; preds = %.loopexit
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %.critedge, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i32 %.5150, ptr %2, align 4, !tbaa !324
  br label %.critedge

.critedge:                                        ; preds = %.loopexit189, %bb.l, %bb.j, %bb.i, %_ZNK21hb_sanitize_context_t11check_rangeIN2OT7NumTypeILb1EhLj1EEEEEbPKT_jj.exit, %bb.k, %_ZNK21hb_sanitize_context_t11check_rangeIN2OT7NumTypeILb1EhLj1EEEEEbPKT_jj.exit84, %bb.m, %_ZNK21hb_sanitize_context_t11check_arrayIN3AAT5EntryIvEEEEbPKT_j.exit, %bb.o, %bb.f, %bb.e, %bb.d, %bb.c, %bb.r, %bb.q, %_ZNK2OT8OffsetToIN3AAT10ClassTableINS_7NumTypeILb1EhLj1EEEEENS3_ILb1EtLj2EEEvLb0EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit, %bb.a, %bb.b
  %.7 = phi i1 [ false, %bb.a ], [ false, %_ZNK2OT8OffsetToIN3AAT10ClassTableINS_7NumTypeILb1EhLj1EEEEENS3_ILb1EtLj2EEEvLb0EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit ], [ false, %bb.c ], [ true, %bb.q ], [ false, %bb.b ], [ true, %bb.r ], [ false, %bb.f ], [ false, %bb.d ], [ false, %bb.e ], [ false, %bb.o ], [ false, %_ZNK21hb_sanitize_context_t11check_arrayIN3AAT5EntryIvEEEEbPKT_j.exit ], [ false, %bb.m ], [ false, %_ZNK21hb_sanitize_context_t11check_rangeIN2OT7NumTypeILb1EhLj1EEEEEbPKT_jj.exit84 ], [ false, %bb.k ], [ false, %_ZNK21hb_sanitize_context_t11check_rangeIN2OT7NumTypeILb1EhLj1EEEEEbPKT_jj.exit ], [ false, %bb.i ], [ false, %bb.j ], [ false, %bb.l ], [ false, %.loopexit189 ]
  ret i1 %.7
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK3AAT10StateTableINS_13ObsoleteTypesENS_18ContextualSubtableIS1_E9EntryDataEE8sanitizeEP21hb_sanitize_context_tPj(ptr noundef nonnull align 1 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !505
  %i.d = ptrtoint ptr %i.a to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !506
  %i.i = zext i32 %i.h to i64
  %.not155 = icmp ugt i64 %i.f, %i.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  br i1 %.not155, label %.critedge, label %bb.b, !prof !267

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.k = load i16, ptr %0, align 1, !tbaa !283
  %i.l = tail call noundef i16 @llvm.bswap.i16(i16 %i.k)
  %i.m = icmp ugt i16 %i.l, 3
  br i1 %i.m, label %bb.c, label %.critedge, !prof !268

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !505
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = load i32, ptr %i.g, align 8, !tbaa !506
  %i.t = zext i32 %i.s to i64
  %.not.i.not = icmp ugt i64 %i.r, %i.t
  br i1 %.not.i.not, label %.critedge, label %bb.d, !prof !267

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 2
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.v = load i16, ptr %i.u, align 1, !tbaa !283
  %i.w = tail call noundef i16 @llvm.bswap.i16(i16 %i.v)
  %i.x = zext i16 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %i.x ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !505
  %i.ab = ptrtoint ptr %i.z to i64                ; 3 uses
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = load i32, ptr %i.g, align 8, !tbaa !506
  %i.af = zext i32 %i.ae to i64
  %.not.i.i.i = icmp ugt i64 %i.ad, %i.af
  br i1 %.not.i.i.i, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 2
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.ah = load i16, ptr %i.ag, align 1, !tbaa !283
  %i.ai = tail call noundef i16 @llvm.bswap.i16(i16 %i.ah)
  %i.aj = zext i16 %i.ai to i32                   ; 2 uses
  %i.ak = load ptr, ptr %i.b, align 8, !tbaa !505
  %i.al = ptrtoint ptr %i.ak to i64               ; 4 uses
  %i.am = sub i64 %i.ab, %i.al
  %i.an = load i32, ptr %i.g, align 8, !tbaa !506
  %i.ao = zext i32 %i.an to i64                   ; 4 uses
  %.not.i.i.i.i.i.i = icmp ugt i64 %i.am, %i.ao
  br i1 %.not.i.i.i.i.i.i, label %.critedge, label %bb.f, !prof !711

bb.f:                                             ; preds = %bb.e
  %i.ap = load ptr, ptr %i.j, align 8, !tbaa !504
  %i.aq = ptrtoint ptr %i.ap to i64               ; 4 uses
  %i.ar = sub i64 %i.aq, %i.ab
  %i.as = trunc i64 %i.ar to i32
  %.not12.i.i.i.i.i.i = icmp ugt i32 %i.aj, %i.as
  br i1 %.not12.i.i.i.i.i.i, label %.critedge, label %_ZNK2OT8OffsetToIN3AAT10ClassTableINS_7NumTypeILb1EhLj1EEEEENS3_ILb1EtLj2EEEvLb0EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit, !prof !711

_ZNK2OT8OffsetToIN3AAT10ClassTableINS_7NumTypeILb1EhLj1EEEEENS3_ILb1EtLj2EEEvLb0EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit: ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 8 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !508
  %i.av = sub i32 %i.au, %i.aj                    ; 3 uses
  store i32 %i.av, ptr %i.at, align 4, !tbaa !508
  %i.aw = icmp slt i32 %i.av, 1
  br i1 %i.aw, label %.critedge, label %bb.g, !prof !318

bb.g:                                             ; preds = %_ZNK2OT8OffsetToIN3AAT10ClassTableINS_7NumTypeILb1EhLj1EEEEENS3_ILb1EtLj2EEEvLb0EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit
  %i.ax = load i16, ptr %i.n, align 1, !tbaa !283
  %i.ay = tail call noundef i16 @llvm.bswap.i16(i16 %i.ax) ; 2 uses
  %i.az = zext i16 %i.ay to i64                   ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 %i.az ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.bc = load i16, ptr %i.bb, align 1, !tbaa !283
  %i.bd = tail call noundef i16 @llvm.bswap.i16(i16 %i.bc)
  %i.be = zext i16 %i.bd to i64                   ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 %i.be ; 3 uses
  %i.bg = load i16, ptr %0, align 1, !tbaa !283
  %i.bh = tail call noundef i16 @llvm.bswap.i16(i16 %i.bg)
  %i.bi = zext i16 %i.bh to i32                   ; 8 uses
  %i.bj = ptrtoint ptr %i.ba to i64               ; 2 uses
  %i.bk = ptrtoint ptr %i.bf to i64               ; 2 uses
  %i.bl = zext i16 %i.ay to i32                   ; 2 uses
  %i.bm = sub i64 %i.bj, %i.al
  %.not.i.i82 = icmp ugt i64 %i.bm, %i.ao
  %i.bn = sub i64 %i.aq, %i.bj
  %i.bo = trunc i64 %i.bn to i32
  %i.bp = sub i64 %i.bk, %i.al
  %.not.i.i.i86 = icmp ugt i64 %i.bp, %i.ao
  %i.bq = sub i64 %i.aq, %i.bk
  %i.br = trunc i64 %i.bq to i32
  %3 = ptrtoaddr ptr %0 to i64                    ; 2 uses
  %i.bs = add i64 %3, %i.az                       ; 2 uses
  %invariant.op = add i64 %i.bs, 1
  %i.bt = add i64 %3, %i.az
  %4 = ptrtoaddr ptr %0 to i64                    ; 3 uses
  %invariant.op241 = add i64 %4, %i.be
  %invariant.op243 = add i64 %invariant.op241, 8
  %invariant.op245 = add i64 %4, %i.be
  %i.bu = xor i64 %4, -1
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.bl, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert194 = insertelement <4 x i32> poison, i32 %i.bi, i64 0
  %broadcast.splat195 = shufflevector <4 x i32> %broadcast.splatinsert194, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %bb.h

.loopexit:                                        ; preds = %.lr.ph168, %bb.p
  %.1146.lcssa = phi i32 [ %.0145173, %bb.p ], [ %.sroa.speculated, %.lr.ph168 ] ; 2 uses
  %.1144.lcssa = phi i32 [ %.0143174, %bb.p ], [ %.sroa.speculated92, %.lr.ph168 ] ; 2 uses
  %i.bv = icmp slt i32 %.1144.lcssa, %.2          ; 2 uses
  %i.bw = icmp sle i32 %.264, %.1146.lcssa
  %i.bx = select i1 %i.bv, i1 true, i1 %i.bw
  br i1 %i.bx, label %bb.h, label %bb.q, !llvm.loop !5502

bb.h:                                             ; preds = %bb.g, %.loopexit
  %i.by = phi i32 [ %i.av, %bb.g ], [ %i.eb, %.loopexit ] ; 2 uses
  %i.bz = phi i1 [ false, %bb.g ], [ %i.bv, %.loopexit ]
  %.061176 = phi i32 [ 0, %bb.g ], [ %.2, %.loopexit ] ; 2 uses
  %.062175 = phi i32 [ 0, %bb.g ], [ %.264, %.loopexit ] ; 4 uses
  %.0143174 = phi i32 [ 0, %bb.g ], [ %.1144.lcssa, %.loopexit ] ; 8 uses
  %.0145173 = phi i32 [ 0, %bb.g ], [ %.1146.lcssa, %.loopexit ] ; 6 uses
  %.0147171 = phi i32 [ 0, %bb.g ], [ %.5150, %.loopexit ] ; 7 uses
  br i1 %i.bz, label %bb.i, label %.loopexit157

bb.i:                                             ; preds = %bb.h
  %i.ca = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.0143174, i32 %i.bi)
  %i.cb = extractvalue { i32, i1 } %i.ca, 1
  br i1 %i.cb, label %.critedge, label %bb.j, !prof !267

bb.j:                                             ; preds = %bb.i
  %i.cc = mul i32 %.0143174, %i.bi                ; 2 uses
  %i.cd = mul i32 %.0143174, %i.bi                ; 2 uses
  %i.ce = sub i32 0, %i.cd
  %i.cf = zext i32 %i.cc to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.cf
  %i.ch = ptrtoint ptr %i.cg to i64               ; 2 uses
  %i.ci = sub i64 %i.ch, %i.al
  %.not.i.i = icmp ugt i64 %i.ci, %i.ao
  %i.cj = sub i64 %i.aq, %i.ch
  %i.ck = trunc i64 %i.cj to i32
  %.not12.i.i = icmp ugt i32 %i.ce, %i.ck
  %or.cond191 = or i1 %.not.i.i, %.not12.i.i
  br i1 %or.cond191, label %.critedge, label %_ZNK21hb_sanitize_context_t11check_rangeIN2OT7NumTypeILb1EhLj1EEEEEbPKT_jj.exit, !prof !1876

_ZNK21hb_sanitize_context_t11check_rangeIN2OT7NumTypeILb1EhLj1EEEEEbPKT_jj.exit: ; preds = %bb.j
  %i.cl = add i32 %i.by, %i.cd                    ; 3 uses
  store i32 %i.cl, ptr %i.at, align 4, !tbaa !508
  %i.cm = icmp sgt i32 %i.cl, 0
  br i1 %i.cm, label %bb.k, label %.critedge, !prof !672

bb.k:                                             ; preds = %_ZNK21hb_sanitize_context_t11check_rangeIN2OT7NumTypeILb1EhLj1EEEEEbPKT_jj.exit
  %.neg = sub nsw i32 %.0143174, %.061176
  %i.cn = add i32 %i.cl, %.neg                    ; 3 uses
  store i32 %i.cn, ptr %i.at, align 4, !tbaa !508
  %i.co = icmp sgt i32 %i.cn, 0
  %.not77 = icmp eq i32 %i.cc, 0
  %or.cond = and i1 %.not77, %i.co
  br i1 %or.cond, label %.loopexit157, label %.critedge, !prof !704

.loopexit157:                                     ; preds = %bb.k, %bb.h
  %i.cp = phi i32 [ %i.by, %bb.h ], [ %i.cn, %bb.k ] ; 2 uses
  %.2 = phi i32 [ %.061176, %bb.h ], [ %.0143174, %bb.k ] ; 2 uses
  %.not78 = icmp sgt i32 %.062175, %.0145173
  br i1 %.not78, label %.loopexit189, label %bb.l

bb.l:                                             ; preds = %.loopexit157
  %i.cq = add nuw nsw i32 %.0145173, 1            ; 5 uses
  %i.cr = mul i32 %i.cq, %i.bi                    ; 2 uses
  %.not12.i.i83 = icmp ugt i32 %i.cr, %i.bo
  %or.cond192 = select i1 %.not.i.i82, i1 true, i1 %.not12.i.i83, !prof !1876
  br i1 %or.cond192, label %.critedge, label %_ZNK21hb_sanitize_context_t11check_rangeIN2OT7NumTypeILb1EhLj1EEEEEbPKT_jj.exit84, !prof !1876

_ZNK21hb_sanitize_context_t11check_rangeIN2OT7NumTypeILb1EhLj1EEEEEbPKT_jj.exit84: ; preds = %bb.l
  %i.cs = sub i32 %i.cp, %i.cr                    ; 3 uses
  store i32 %i.cs, ptr %i.at, align 4, !tbaa !508
  %i.ct = icmp sgt i32 %i.cs, 0
  br i1 %i.ct, label %bb.m, label %.critedge, !prof !672

bb.m:                                             ; preds = %_ZNK21hb_sanitize_context_t11check_rangeIN2OT7NumTypeILb1EhLj1EEEEEbPKT_jj.exit84
  %i.cu = xor i32 %.0145173, -1
  %.neg79 = add nsw i32 %.062175, %i.cu
  %i.cv = add i32 %.neg79, %i.cs                  ; 5 uses
  store i32 %i.cv, ptr %i.at, align 4, !tbaa !508
  %i.cw = icmp slt i32 %i.cv, 1
  br i1 %i.cw, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cx = mul nuw i32 %i.cq, %i.bi                ; 2 uses
  %i.cy = zext i32 %i.cx to i64                   ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.cy
  %i.da = mul nuw i32 %.062175, %i.bi             ; 2 uses
  %i.db = icmp ult i32 %i.da, %i.cx
  br i1 %i.db, label %.lr.ph163.preheader, label %.loopexit189

.lr.ph163.preheader:                              ; preds = %bb.n
  %i.dc = zext i32 %i.da to i64                   ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.dc ; 3 uses
  %.reass = add i64 %i.dc, %invariant.op
  %i.de = add i64 %i.bs, %i.cy
  %i.df = tail call i64 @llvm.umax.i64(i64 %.reass, i64 %i.de)
  %i.dg = add i64 %i.bt, %i.dc
  %i.dh = sub i64 %i.df, %i.dg                    ; 3 uses
  %min.iters.check213 = icmp ult i64 %i.dh, 8
  br i1 %min.iters.check213, label %.lr.ph163.preheader230, label %vector.ph214

vector.ph214:                                     ; preds = %.lr.ph163.preheader
  %n.vec215 = and i64 %i.dh, -8                   ; 3 uses
  %i.di = getelementptr i8, ptr %i.dd, i64 %n.vec215
  %broadcast.splatinsert216 = insertelement <4 x i32> poison, i32 %.0147171, i64 0
  %broadcast.splat217 = shufflevector <4 x i32> %broadcast.splatinsert216, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body218

vector.body218:                                   ; preds = %vector.body218, %vector.ph214
  %index219 = phi i64 [ 0, %vector.ph214 ], [ %index.next224, %vector.body218 ] ; 2 uses
  %vec.phi220 = phi <4 x i32> [ %broadcast.splat217, %vector.ph214 ], [ %i.do, %vector.body218 ]
  %vec.phi221 = phi <4 x i32> [ %broadcast.splat217, %vector.ph214 ], [ %i.dp, %vector.body218 ]
  %next.gep222 = getelementptr i8, ptr %i.dd, i64 %index219 ; 2 uses
  %i.dj = getelementptr i8, ptr %next.gep222, i64 4
  %wide.load = load <4 x i8>, ptr %next.gep222, align 1, !tbaa !303
  %wide.load223 = load <4 x i8>, ptr %i.dj, align 1, !tbaa !303
  %i.dk = zext <4 x i8> %wide.load to <4 x i32>
  %i.dl = zext <4 x i8> %wide.load223 to <4 x i32>
  %i.dm = add nuw nsw <4 x i32> %i.dk, splat (i32 1)
  %i.dn = add nuw nsw <4 x i32> %i.dl, splat (i32 1)
  %i.do = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi220, <4 x i32> %i.dm) ; 2 uses
  %i.dp = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi221, <4 x i32> %i.dn) ; 2 uses
  %index.next224 = add nuw i64 %index219, 8       ; 2 uses
  %i.dq = icmp eq i64 %index.next224, %n.vec215
  br i1 %i.dq, label %middle.block225, label %vector.body218, !llvm.loop !5503

middle.block225:                                  ; preds = %vector.body218
  %rdx.minmax226 = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.do, <4 x i32> %i.dp)
  %i.dr = tail call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %rdx.minmax226) ; 2 uses
  %cmp.n = icmp eq i64 %i.dh, %n.vec215
  br i1 %cmp.n, label %.loopexit189, label %.lr.ph163.preheader230

.lr.ph163.preheader230:                           ; preds = %.lr.ph163.preheader, %middle.block225
  %.058162.ph = phi ptr [ %i.dd, %.lr.ph163.preheader ], [ %i.di, %middle.block225 ]
  %.4161.ph = phi i32 [ %.0147171, %.lr.ph163.preheader ], [ %i.dr, %middle.block225 ]
  br label %.lr.ph163

.lr.ph163:                                        ; preds = %.lr.ph163.preheader230, %.lr.ph163
  %.058162 = phi ptr [ %i.dv, %.lr.ph163 ], [ %.058162.ph, %.lr.ph163.preheader230 ] ; 2 uses
  %.4161 = phi i32 [ %.sroa.speculated100, %.lr.ph163 ], [ %.4161.ph, %.lr.ph163.preheader230 ]
  %i.ds = load i8, ptr %.058162, align 1, !tbaa !303
  %i.dt = zext i8 %i.ds to i32
  %i.du = add nuw nsw i32 %i.dt, 1
  %.sroa.speculated100 = tail call i32 @llvm.umax.i32(i32 %.4161, i32 %i.du) ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.058162, i64 1 ; 2 uses
  %i.dw = icmp ult ptr %i.dv, %i.cz
  br i1 %i.dw, label %.lr.ph163, label %.loopexit189, !llvm.loop !5504

.loopexit189:                                     ; preds = %.lr.ph163, %middle.block225, %.loopexit157, %bb.n
  %i.dx = phi i32 [ %i.cp, %.loopexit157 ], [ %i.cv, %bb.n ], [ %i.cv, %middle.block225 ], [ %i.cv, %.lr.ph163 ]
  %.5150 = phi i32 [ %.0147171, %.loopexit157 ], [ %.0147171, %bb.n ], [ %i.dr, %middle.block225 ], [ %.sroa.speculated100, %.lr.ph163 ] ; 6 uses
  %.264 = phi i32 [ %.062175, %.loopexit157 ], [ %i.cq, %bb.n ], [ %i.cq, %middle.block225 ], [ %i.cq, %.lr.ph163 ] ; 2 uses
  %i.dy = shl nuw nsw i32 %.5150, 3               ; 2 uses
  %.not12.i.i.i = icmp ugt i32 %i.dy, %i.br
  %or.cond193 = select i1 %.not.i.i.i86, i1 true, i1 %.not12.i.i.i, !prof !1876
  br i1 %or.cond193, label %.critedge, label %_ZNK21hb_sanitize_context_t11check_arrayIN3AAT5EntryINS1_18ContextualSubtableINS1_13ObsoleteTypesEE9EntryDataEEEEEbPKT_j.exit, !prof !1876

_ZNK21hb_sanitize_context_t11check_arrayIN3AAT5EntryINS1_18ContextualSubtableINS1_13ObsoleteTypesEE9EntryDataEEEEEbPKT_j.exit: ; preds = %.loopexit189
  %i.dz = sub nsw i32 %i.dx, %i.dy                ; 3 uses
  store i32 %i.dz, ptr %i.at, align 4, !tbaa !508
  %i.ea = icmp sgt i32 %i.dz, 0
  br i1 %i.ea, label %bb.o, label %.critedge, !prof !672

bb.o:                                             ; preds = %_ZNK21hb_sanitize_context_t11check_arrayIN3AAT5EntryINS1_18ContextualSubtableINS1_13ObsoleteTypesEE9EntryDataEEEEEbPKT_j.exit
  %.neg80 = sub nsw i32 %.0147171, %.5150
  %i.eb = add i32 %i.dz, %.neg80                  ; 3 uses
  store i32 %i.eb, ptr %i.at, align 4, !tbaa !508
  %i.ec = icmp slt i32 %i.eb, 1
  br i1 %i.ec, label %.critedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ed = zext i32 %.5150 to i64                  ; 2 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.ed
  %i.ef = icmp ult i32 %.0147171, %.5150
  br i1 %i.ef, label %.lr.ph168.preheader, label %.loopexit

.lr.ph168.preheader:                              ; preds = %bb.p
  %i.eg = zext i32 %.0147171 to i64               ; 2 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.eg ; 10 uses
  %i.ei = shl nuw nsw i64 %i.eg, 3                ; 2 uses
  %.reass244 = add i64 %i.ei, %invariant.op243
  %i.ej = shl nuw nsw i64 %i.ed, 3
  %.reass246 = add i64 %i.ej, %invariant.op245
  %i.ek = tail call i64 @llvm.umax.i64(i64 %.reass244, i64 %.reass246)
  %i.el = add i64 %i.ek, %i.bu
  %i.em = add nuw nsw i64 %i.ei, %i.be
  %i.en = sub i64 %i.el, %i.em                    ; 2 uses
  %min.iters.check = icmp ult i64 %i.en, 64
  br i1 %min.iters.check, label %.lr.ph168.preheader229, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph168.preheader
  %i.eo = lshr i64 %i.en, 3
  %i.ep = add nuw nsw i64 %i.eo, 1                ; 2 uses
  %i.eq = and i64 %i.ep, 7                        ; 2 uses
  %i.er = icmp eq i64 %i.eq, 0
  %i.es = select i1 %i.er, i64 8, i64 %i.eq
  %n.vec = sub nsw i64 %i.ep, %i.es               ; 2 uses
  %i.et = shl i64 %n.vec, 3
  %i.eu = getelementptr i8, ptr %i.eh, i64 %i.et
  %broadcast.splatinsert196 = insertelement <4 x i32> poison, i32 %.0143174, i64 0
  %broadcast.splat197 = shufflevector <4 x i32> %broadcast.splatinsert196, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert198 = insertelement <4 x i32> poison, i32 %.0145173, i64 0
  %broadcast.splat199 = shufflevector <4 x i32> %broadcast.splatinsert198, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %broadcast.splat197, %vector.ph ], [ %i.gb, %vector.body ]
  %vec.phi200 = phi <4 x i32> [ %broadcast.splat197, %vector.ph ], [ %i.gc, %vector.body ]
  %vec.phi201 = phi <4 x i32> [ %broadcast.splat199, %vector.ph ], [ %i.gd, %vector.body ]
  %vec.phi202 = phi <4 x i32> [ %broadcast.splat199, %vector.ph ], [ %i.ge, %vector.body ]
  %i.ev = shl i64 %index, 3                       ; 8 uses
  %next.gep = getelementptr i8, ptr %i.eh, i64 %i.ev
  %i.ew = getelementptr i8, ptr %i.eh, i64 %i.ev
  %next.gep203 = getelementptr i8, ptr %i.ew, i64 8
  %i.ex = getelementptr i8, ptr %i.eh, i64 %i.ev
  %next.gep204 = getelementptr i8, ptr %i.ex, i64 16
  %i.ey = getelementptr i8, ptr %i.eh, i64 %i.ev
  %next.gep205 = getelementptr i8, ptr %i.ey, i64 24
  %i.ez = getelementptr i8, ptr %i.eh, i64 %i.ev
  %next.gep206 = getelementptr i8, ptr %i.ez, i64 32
  %i.fa = getelementptr i8, ptr %i.eh, i64 %i.ev
  %next.gep207 = getelementptr i8, ptr %i.fa, i64 40
  %i.fb = getelementptr i8, ptr %i.eh, i64 %i.ev
  %next.gep208 = getelementptr i8, ptr %i.fb, i64 48
  %i.fc = getelementptr i8, ptr %i.eh, i64 %i.ev
  %next.gep209 = getelementptr i8, ptr %i.fc, i64 56
  %i.fd = load i16, ptr %next.gep, align 1, !tbaa !283
  %i.fe = load i16, ptr %next.gep203, align 1, !tbaa !283
  %i.ff = load i16, ptr %next.gep204, align 1, !tbaa !283
  %i.fg = load i16, ptr %next.gep205, align 1, !tbaa !283
  %i.fh = insertelement <4 x i16> poison, i16 %i.fd, i64 0
  %i.fi = insertelement <4 x i16> %i.fh, i16 %i.fe, i64 1
  %i.fj = insertelement <4 x i16> %i.fi, i16 %i.ff, i64 2
  %i.fk = insertelement <4 x i16> %i.fj, i16 %i.fg, i64 3
  %i.fl = load i16, ptr %next.gep206, align 1, !tbaa !283
  %i.fm = load i16, ptr %next.gep207, align 1, !tbaa !283
  %i.fn = load i16, ptr %next.gep208, align 1, !tbaa !283
  %i.fo = load i16, ptr %next.gep209, align 1, !tbaa !283
  %i.fp = insertelement <4 x i16> poison, i16 %i.fl, i64 0
  %i.fq = insertelement <4 x i16> %i.fp, i16 %i.fm, i64 1
  %i.fr = insertelement <4 x i16> %i.fq, i16 %i.fn, i64 2
  %i.fs = insertelement <4 x i16> %i.fr, i16 %i.fo, i64 3
  %i.ft = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %i.fk)
  %i.fu = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %i.fs)
  %i.fv = zext <4 x i16> %i.ft to <4 x i32>
  %i.fw = zext <4 x i16> %i.fu to <4 x i32>
  %i.fx = sub nsw <4 x i32> %i.fv, %broadcast.splat
  %i.fy = sub nsw <4 x i32> %i.fw, %broadcast.splat
  %i.fz = sdiv <4 x i32> %i.fx, %broadcast.splat195 ; 2 uses
  %i.ga = sdiv <4 x i32> %i.fy, %broadcast.splat195 ; 2 uses
  %i.gb = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %vec.phi, <4 x i32> %i.fz) ; 2 uses
  %i.gc = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %vec.phi200, <4 x i32> %i.ga) ; 2 uses
  %i.gd = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi201, <4 x i32> %i.fz) ; 2 uses
  %i.ge = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi202, <4 x i32> %i.ga) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.gf = icmp eq i64 %index.next, %n.vec
  br i1 %i.gf, label %middle.block, label %vector.body, !llvm.loop !5505

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.gb, <4 x i32> %i.gc)
  %i.gg = tail call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %rdx.minmax)
  %rdx.minmax210 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.gd, <4 x i32> %i.ge)
  %i.gh = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax210)
  br label %.lr.ph168.preheader229

.lr.ph168.preheader229:                           ; preds = %.lr.ph168.preheader, %middle.block
  %.0167.ph = phi ptr [ %i.eh, %.lr.ph168.preheader ], [ %i.eu, %middle.block ]
  %.1144166.ph = phi i32 [ %.0143174, %.lr.ph168.preheader ], [ %i.gg, %middle.block ]
  %.1146165.ph = phi i32 [ %.0145173, %.lr.ph168.preheader ], [ %i.gh, %middle.block ]
  br label %.lr.ph168

.lr.ph168:                                        ; preds = %.lr.ph168.preheader229, %.lr.ph168
  %.0167 = phi ptr [ %i.gn, %.lr.ph168 ], [ %.0167.ph, %.lr.ph168.preheader229 ] ; 2 uses
  %.1144166 = phi i32 [ %.sroa.speculated92, %.lr.ph168 ], [ %.1144166.ph, %.lr.ph168.preheader229 ]
  %.1146165 = phi i32 [ %.sroa.speculated, %.lr.ph168 ], [ %.1146165.ph, %.lr.ph168.preheader229 ]
  %i.gi = load i16, ptr %.0167, align 1, !tbaa !283
  %i.gj = tail call noundef i16 @llvm.bswap.i16(i16 %i.gi)
  %i.gk = zext i16 %i.gj to i32
  %i.gl = sub nsw i32 %i.gk, %i.bl
  %i.gm = sdiv i32 %i.gl, %i.bi                   ; 2 uses
  %.sroa.speculated92 = tail call i32 @llvm.smin.i32(i32 %.1144166, i32 %i.gm) ; 2 uses
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %.1146165, i32 %i.gm) ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.0167, i64 8 ; 2 uses
  %i.go = icmp ult ptr %i.gn, %i.ee
  br i1 %i.go, label %.lr.ph168, label %.loopexit, !llvm.loop !5506

bb.q:                                             ; preds = %.loopexit
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %.critedge, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i32 %.5150, ptr %2, align 4, !tbaa !324
  br label %.critedge

.critedge:                                        ; preds = %.loopexit189, %bb.l, %bb.j, %bb.i, %_ZNK21hb_sanitize_context_t11check_rangeIN2OT7NumTypeILb1EhLj1EEEEEbPKT_jj.exit, %bb.k, %_ZNK21hb_sanitize_context_t11check_rangeIN2OT7NumTypeILb1EhLj1EEEEEbPKT_jj.exit84, %bb.m, %_ZNK21hb_sanitize_context_t11check_arrayIN3AAT5EntryINS1_18ContextualSubtableINS1_13ObsoleteTypesEE9EntryDataEEEEEbPKT_j.exit, %bb.o, %bb.f, %bb.e, %bb.d, %bb.c, %bb.r, %bb.q, %_ZNK2OT8OffsetToIN3AAT10ClassTableINS_7NumTypeILb1EhLj1EEEEENS3_ILb1EtLj2EEEvLb0EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit, %bb.a, %bb.b
  %.7 = phi i1 [ false, %bb.a ], [ false, %_ZNK2OT8OffsetToIN3AAT10ClassTableINS_7NumTypeILb1EhLj1EEEEENS3_ILb1EtLj2EEEvLb0EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit ], [ false, %bb.c ], [ true, %bb.q ], [ false, %bb.b ], [ true, %bb.r ], [ false, %bb.f ], [ false, %bb.d ], [ false, %bb.e ], [ false, %bb.o ], [ false, %_ZNK21hb_sanitize_context_t11check_arrayIN3AAT5EntryINS1_18ContextualSubtableINS1_13ObsoleteTypesEE9EntryDataEEEEEbPKT_j.exit ], [ false, %bb.m ], [ false, %_ZNK21hb_sanitize_context_t11check_rangeIN2OT7NumTypeILb1EhLj1EEEEEbPKT_jj.exit84 ], [ false, %bb.k ], [ false, %_ZNK21hb_sanitize_context_t11check_rangeIN2OT7NumTypeILb1EhLj1EEEEEbPKT_jj.exit ], [ false, %bb.i ], [ false, %bb.j ], [ false, %bb.l ], [ false, %.loopexit189 ]
  ret i1 %.7
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK3AAT10StateTableINS_13ObsoleteTypesENS_17InsertionSubtableIS1_E9EntryDataEE8sanitizeEP21hb_sanitize_context_tPj(ptr noundef nonnull align 1 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !505
  %i.d = ptrtoint ptr %i.a to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !506
  %i.i = zext i32 %i.h to i64
  %.not155 = icmp ugt i64 %i.f, %i.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  br i1 %.not155, label %.critedge, label %bb.b, !prof !267

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.k = load i16, ptr %0, align 1, !tbaa !283
  %i.l = tail call noundef i16 @llvm.bswap.i16(i16 %i.k)
  %i.m = icmp ugt i16 %i.l, 3
  br i1 %i.m, label %bb.c, label %.critedge, !prof !268

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !505
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = load i32, ptr %i.g, align 8, !tbaa !506
  %i.t = zext i32 %i.s to i64
  %.not.i.not = icmp ugt i64 %i.r, %i.t
  br i1 %.not.i.not, label %.critedge, label %bb.d, !prof !267

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 2
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.v = load i16, ptr %i.u, align 1, !tbaa !283
  %i.w = tail call noundef i16 @llvm.bswap.i16(i16 %i.v)
  %i.x = zext i16 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %i.x ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !505
  %i.ab = ptrtoint ptr %i.z to i64                ; 3 uses
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = load i32, ptr %i.g, align 8, !tbaa !506
  %i.af = zext i32 %i.ae to i64
  %.not.i.i.i = icmp ugt i64 %i.ad, %i.af
  br i1 %.not.i.i.i, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 2
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.ah = load i16, ptr %i.ag, align 1, !tbaa !283
  %i.ai = tail call noundef i16 @llvm.bswap.i16(i16 %i.ah)
  %i.aj = zext i16 %i.ai to i32                   ; 2 uses
  %i.ak = load ptr, ptr %i.b, align 8, !tbaa !505
  %i.al = ptrtoint ptr %i.ak to i64               ; 4 uses
  %i.am = sub i64 %i.ab, %i.al
  %i.an = load i32, ptr %i.g, align 8, !tbaa !506
  %i.ao = zext i32 %i.an to i64                   ; 4 uses
  %.not.i.i.i.i.i.i = icmp ugt i64 %i.am, %i.ao
  br i1 %.not.i.i.i.i.i.i, label %.critedge, label %bb.f, !prof !711

bb.f:                                             ; preds = %bb.e
  %i.ap = load ptr, ptr %i.j, align 8, !tbaa !504
  %i.aq = ptrtoint ptr %i.ap to i64               ; 4 uses
  %i.ar = sub i64 %i.aq, %i.ab
  %i.as = trunc i64 %i.ar to i32
  %.not12.i.i.i.i.i.i = icmp ugt i32 %i.aj, %i.as
  br i1 %.not12.i.i.i.i.i.i, label %.critedge, label %_ZNK2OT8OffsetToIN3AAT10ClassTableINS_7NumTypeILb1EhLj1EEEEENS3_ILb1EtLj2EEEvLb0EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit, !prof !711

_ZNK2OT8OffsetToIN3AAT10ClassTableINS_7NumTypeILb1EhLj1EEEEENS3_ILb1EtLj2EEEvLb0EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit: ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 8 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !508
  %i.av = sub i32 %i.au, %i.aj                    ; 3 uses
  store i32 %i.av, ptr %i.at, align 4, !tbaa !508
  %i.aw = icmp slt i32 %i.av, 1
  br i1 %i.aw, label %.critedge, label %bb.g, !prof !318

bb.g:                                             ; preds = %_ZNK2OT8OffsetToIN3AAT10ClassTableINS_7NumTypeILb1EhLj1EEEEENS3_ILb1EtLj2EEEvLb0EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit
  %i.ax = load i16, ptr %i.n, align 1, !tbaa !283
  %i.ay = tail call noundef i16 @llvm.bswap.i16(i16 %i.ax) ; 2 uses
  %i.az = zext i16 %i.ay to i64                   ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 %i.az ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.bc = load i16, ptr %i.bb, align 1, !tbaa !283
  %i.bd = tail call noundef i16 @llvm.bswap.i16(i16 %i.bc)
  %i.be = zext i16 %i.bd to i64                   ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 %i.be ; 3 uses
  %i.bg = load i16, ptr %0, align 1, !tbaa !283
  %i.bh = tail call noundef i16 @llvm.bswap.i16(i16 %i.bg)
  %i.bi = zext i16 %i.bh to i32                   ; 8 uses
  %i.bj = ptrtoint ptr %i.ba to i64               ; 2 uses
  %i.bk = ptrtoint ptr %i.bf to i64               ; 2 uses
  %i.bl = zext i16 %i.ay to i32                   ; 2 uses
  %i.bm = sub i64 %i.bj, %i.al
  %.not.i.i82 = icmp ugt i64 %i.bm, %i.ao
  %i.bn = sub i64 %i.aq, %i.bj
  %i.bo = trunc i64 %i.bn to i32
  %i.bp = sub i64 %i.bk, %i.al
  %.not.i.i.i86 = icmp ugt i64 %i.bp, %i.ao
  %i.bq = sub i64 %i.aq, %i.bk
  %i.br = trunc i64 %i.bq to i32
  %3 = ptrtoaddr ptr %0 to i64                    ; 2 uses
  %i.bs = add i64 %3, %i.az                       ; 2 uses
  %invariant.op = add i64 %i.bs, 1
  %i.bt = add i64 %3, %i.az
  %4 = ptrtoaddr ptr %0 to i64                    ; 3 uses
  %invariant.op241 = add i64 %4, %i.be
  %invariant.op243 = add i64 %invariant.op241, 8
  %invariant.op245 = add i64 %4, %i.be
  %i.bu = xor i64 %4, -1
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.bl, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert194 = insertelement <4 x i32> poison, i32 %i.bi, i64 0
  %broadcast.splat195 = shufflevector <4 x i32> %broadcast.splatinsert194, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %bb.h

.loopexit:                                        ; preds = %.lr.ph168, %bb.p
  %.1146.lcssa = phi i32 [ %.0145173, %bb.p ], [ %.sroa.speculated, %.lr.ph168 ] ; 2 uses
  %.1144.lcssa = phi i32 [ %.0143174, %bb.p ], [ %.sroa.speculated92, %.lr.ph168 ] ; 2 uses
  %i.bv = icmp slt i32 %.1144.lcssa, %.2          ; 2 uses
  %i.bw = icmp sle i32 %.264, %.1146.lcssa
  %i.bx = select i1 %i.bv, i1 true, i1 %i.bw
  br i1 %i.bx, label %bb.h, label %bb.q, !llvm.loop !5507

bb.h:                                             ; preds = %bb.g, %.loopexit
  %i.by = phi i32 [ %i.av, %bb.g ], [ %i.eb, %.loopexit ] ; 2 uses
  %i.bz = phi i1 [ false, %bb.g ], [ %i.bv, %.loopexit ]
  %.061176 = phi i32 [ 0, %bb.g ], [ %.2, %.loopexit ] ; 2 uses
  %.062175 = phi i32 [ 0, %bb.g ], [ %.264, %.loopexit ] ; 4 uses
  %.0143174 = phi i32 [ 0, %bb.g ], [ %.1144.lcssa, %.loopexit ] ; 8 uses
  %.0145173 = phi i32 [ 0, %bb.g ], [ %.1146.lcssa, %.loopexit ] ; 6 uses
  %.0147171 = phi i32 [ 0, %bb.g ], [ %.5150, %.loopexit ] ; 7 uses
  br i1 %i.bz, label %bb.i, label %.loopexit157

bb.i:                                             ; preds = %bb.h
  %i.ca = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.0143174, i32 %i.bi)
  %i.cb = extractvalue { i32, i1 } %i.ca, 1
  br i1 %i.cb, label %.critedge, label %bb.j, !prof !267

bb.j:                                             ; preds = %bb.i
  %i.cc = mul i32 %.0143174, %i.bi                ; 2 uses
  %i.cd = mul i32 %.0143174, %i.bi                ; 2 uses
  %i.ce = sub i32 0, %i.cd
  %i.cf = zext i32 %i.cc to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.cf
  %i.ch = ptrtoint ptr %i.cg to i64               ; 2 uses
  %i.ci = sub i64 %i.ch, %i.al
  %.not.i.i = icmp ugt i64 %i.ci, %i.ao
  %i.cj = sub i64 %i.aq, %i.ch
  %i.ck = trunc i64 %i.cj to i32
  %.not12.i.i = icmp ugt i32 %i.ce, %i.ck
  %or.cond191 = or i1 %.not.i.i, %.not12.i.i
  br i1 %or.cond191, label %.critedge, label %_ZNK21hb_sanitize_context_t11check_rangeIN2OT7NumTypeILb1EhLj1EEEEEbPKT_jj.exit, !prof !1876

_ZNK21hb_sanitize_context_t11check_rangeIN2OT7NumTypeILb1EhLj1EEEEEbPKT_jj.exit: ; preds = %bb.j
  %i.cl = add i32 %i.by, %i.cd                    ; 3 uses
  store i32 %i.cl, ptr %i.at, align 4, !tbaa !508
  %i.cm = icmp sgt i32 %i.cl, 0
  br i1 %i.cm, label %bb.k, label %.critedge, !prof !672

bb.k:                                             ; preds = %_ZNK21hb_sanitize_context_t11check_rangeIN2OT7NumTypeILb1EhLj1EEEEEbPKT_jj.exit
  %.neg = sub nsw i32 %.0143174, %.061176
  %i.cn = add i32 %i.cl, %.neg                    ; 3 uses
  store i32 %i.cn, ptr %i.at, align 4, !tbaa !508
  %i.co = icmp sgt i32 %i.cn, 0
  %.not77 = icmp eq i32 %i.cc, 0
  %or.cond = and i1 %.not77, %i.co
  br i1 %or.cond, label %.loopexit157, label %.critedge, !prof !704

.loopexit157:                                     ; preds = %bb.k, %bb.h
  %i.cp = phi i32 [ %i.by, %bb.h ], [ %i.cn, %bb.k ] ; 2 uses
  %.2 = phi i32 [ %.061176, %bb.h ], [ %.0143174, %bb.k ] ; 2 uses
  %.not78 = icmp sgt i32 %.062175, %.0145173
  br i1 %.not78, label %.loopexit189, label %bb.l

bb.l:                                             ; preds = %.loopexit157
  %i.cq = add nuw nsw i32 %.0145173, 1            ; 5 uses
  %i.cr = mul i32 %i.cq, %i.bi                    ; 2 uses
  %.not12.i.i83 = icmp ugt i32 %i.cr, %i.bo
  %or.cond192 = select i1 %.not.i.i82, i1 true, i1 %.not12.i.i83, !prof !1876
  br i1 %or.cond192, label %.critedge, label %_ZNK21hb_sanitize_context_t11check_rangeIN2OT7NumTypeILb1EhLj1EEEEEbPKT_jj.exit84, !prof !1876

_ZNK21hb_sanitize_context_t11check_rangeIN2OT7NumTypeILb1EhLj1EEEEEbPKT_jj.exit84: ; preds = %bb.l
  %i.cs = sub i32 %i.cp, %i.cr                    ; 3 uses
  store i32 %i.cs, ptr %i.at, align 4, !tbaa !508
  %i.ct = icmp sgt i32 %i.cs, 0
  br i1 %i.ct, label %bb.m, label %.critedge, !prof !672

bb.m:                                             ; preds = %_ZNK21hb_sanitize_context_t11check_rangeIN2OT7NumTypeILb1EhLj1EEEEEbPKT_jj.exit84
  %i.cu = xor i32 %.0145173, -1
  %.neg79 = add nsw i32 %.062175, %i.cu
  %i.cv = add i32 %.neg79, %i.cs                  ; 5 uses
  store i32 %i.cv, ptr %i.at, align 4, !tbaa !508
  %i.cw = icmp slt i32 %i.cv, 1
  br i1 %i.cw, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cx = mul nuw i32 %i.cq, %i.bi                ; 2 uses
  %i.cy = zext i32 %i.cx to i64                   ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.cy
  %i.da = mul nuw i32 %.062175, %i.bi             ; 2 uses
  %i.db = icmp ult i32 %i.da, %i.cx
  br i1 %i.db, label %.lr.ph163.preheader, label %.loopexit189

.lr.ph163.preheader:                              ; preds = %bb.n
  %i.dc = zext i32 %i.da to i64                   ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.dc ; 3 uses
  %.reass = add i64 %i.dc, %invariant.op
  %i.de = add i64 %i.bs, %i.cy
  %i.df = tail call i64 @llvm.umax.i64(i64 %.reass, i64 %i.de)
  %i.dg = add i64 %i.bt, %i.dc
  %i.dh = sub i64 %i.df, %i.dg                    ; 3 uses
  %min.iters.check213 = icmp ult i64 %i.dh, 8
  br i1 %min.iters.check213, label %.lr.ph163.preheader230, label %vector.ph214

vector.ph214:                                     ; preds = %.lr.ph163.preheader
  %n.vec215 = and i64 %i.dh, -8                   ; 3 uses
  %i.di = getelementptr i8, ptr %i.dd, i64 %n.vec215
  %broadcast.splatinsert216 = insertelement <4 x i32> poison, i32 %.0147171, i64 0
  %broadcast.splat217 = shufflevector <4 x i32> %broadcast.splatinsert216, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body218

vector.body218:                                   ; preds = %vector.body218, %vector.ph214
  %index219 = phi i64 [ 0, %vector.ph214 ], [ %index.next224, %vector.body218 ] ; 2 uses
  %vec.phi220 = phi <4 x i32> [ %broadcast.splat217, %vector.ph214 ], [ %i.do, %vector.body218 ]
  %vec.phi221 = phi <4 x i32> [ %broadcast.splat217, %vector.ph214 ], [ %i.dp, %vector.body218 ]
  %next.gep222 = getelementptr i8, ptr %i.dd, i64 %index219 ; 2 uses
  %i.dj = getelementptr i8, ptr %next.gep222, i64 4
  %wide.load = load <4 x i8>, ptr %next.gep222, align 1, !tbaa !303
  %wide.load223 = load <4 x i8>, ptr %i.dj, align 1, !tbaa !303
  %i.dk = zext <4 x i8> %wide.load to <4 x i32>
  %i.dl = zext <4 x i8> %wide.load223 to <4 x i32>
  %i.dm = add nuw nsw <4 x i32> %i.dk, splat (i32 1)
  %i.dn = add nuw nsw <4 x i32> %i.dl, splat (i32 1)
  %i.do = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi220, <4 x i32> %i.dm) ; 2 uses
  %i.dp = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi221, <4 x i32> %i.dn) ; 2 uses
  %index.next224 = add nuw i64 %index219, 8       ; 2 uses
  %i.dq = icmp eq i64 %index.next224, %n.vec215
  br i1 %i.dq, label %middle.block225, label %vector.body218, !llvm.loop !5508

middle.block225:                                  ; preds = %vector.body218
  %rdx.minmax226 = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.do, <4 x i32> %i.dp)
  %i.dr = tail call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %rdx.minmax226) ; 2 uses
  %cmp.n = icmp eq i64 %i.dh, %n.vec215
  br i1 %cmp.n, label %.loopexit189, label %.lr.ph163.preheader230

.lr.ph163.preheader230:                           ; preds = %.lr.ph163.preheader, %middle.block225
  %.058162.ph = phi ptr [ %i.dd, %.lr.ph163.preheader ], [ %i.di, %middle.block225 ]
  %.4161.ph = phi i32 [ %.0147171, %.lr.ph163.preheader ], [ %i.dr, %middle.block225 ]
  br label %.lr.ph163

.lr.ph163:                                        ; preds = %.lr.ph163.preheader230, %.lr.ph163
  %.058162 = phi ptr [ %i.dv, %.lr.ph163 ], [ %.058162.ph, %.lr.ph163.preheader230 ] ; 2 uses
  %.4161 = phi i32 [ %.sroa.speculated100, %.lr.ph163 ], [ %.4161.ph, %.lr.ph163.preheader230 ]
  %i.ds = load i8, ptr %.058162, align 1, !tbaa !303
  %i.dt = zext i8 %i.ds to i32
  %i.du = add nuw nsw i32 %i.dt, 1
  %.sroa.speculated100 = tail call i32 @llvm.umax.i32(i32 %.4161, i32 %i.du) ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.058162, i64 1 ; 2 uses
  %i.dw = icmp ult ptr %i.dv, %i.cz
  br i1 %i.dw, label %.lr.ph163, label %.loopexit189, !llvm.loop !5509

.loopexit189:                                     ; preds = %.lr.ph163, %middle.block225, %.loopexit157, %bb.n
  %i.dx = phi i32 [ %i.cp, %.loopexit157 ], [ %i.cv, %bb.n ], [ %i.cv, %middle.block225 ], [ %i.cv, %.lr.ph163 ]
  %.5150 = phi i32 [ %.0147171, %.loopexit157 ], [ %.0147171, %bb.n ], [ %i.dr, %middle.block225 ], [ %.sroa.speculated100, %.lr.ph163 ] ; 6 uses
  %.264 = phi i32 [ %.062175, %.loopexit157 ], [ %i.cq, %bb.n ], [ %i.cq, %middle.block225 ], [ %i.cq, %.lr.ph163 ] ; 2 uses
  %i.dy = shl nuw nsw i32 %.5150, 3               ; 2 uses
  %.not12.i.i.i = icmp ugt i32 %i.dy, %i.br
  %or.cond193 = select i1 %.not.i.i.i86, i1 true, i1 %.not12.i.i.i, !prof !1876
  br i1 %or.cond193, label %.critedge, label %_ZNK21hb_sanitize_context_t11check_arrayIN3AAT5EntryINS1_17InsertionSubtableINS1_13ObsoleteTypesEE9EntryDataEEEEEbPKT_j.exit, !prof !1876

_ZNK21hb_sanitize_context_t11check_arrayIN3AAT5EntryINS1_17InsertionSubtableINS1_13ObsoleteTypesEE9EntryDataEEEEEbPKT_j.exit: ; preds = %.loopexit189
  %i.dz = sub nsw i32 %i.dx, %i.dy                ; 3 uses
  store i32 %i.dz, ptr %i.at, align 4, !tbaa !508
  %i.ea = icmp sgt i32 %i.dz, 0
  br i1 %i.ea, label %bb.o, label %.critedge, !prof !672

bb.o:                                             ; preds = %_ZNK21hb_sanitize_context_t11check_arrayIN3AAT5EntryINS1_17InsertionSubtableINS1_13ObsoleteTypesEE9EntryDataEEEEEbPKT_j.exit
  %.neg80 = sub nsw i32 %.0147171, %.5150
  %i.eb = add i32 %i.dz, %.neg80                  ; 3 uses
  store i32 %i.eb, ptr %i.at, align 4, !tbaa !508
  %i.ec = icmp slt i32 %i.eb, 1
  br i1 %i.ec, label %.critedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ed = zext i32 %.5150 to i64                  ; 2 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.ed
  %i.ef = icmp ult i32 %.0147171, %.5150
  br i1 %i.ef, label %.lr.ph168.preheader, label %.loopexit

.lr.ph168.preheader:                              ; preds = %bb.p
  %i.eg = zext i32 %.0147171 to i64               ; 2 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.eg ; 10 uses
  %i.ei = shl nuw nsw i64 %i.eg, 3                ; 2 uses
  %.reass244 = add i64 %i.ei, %invariant.op243
  %i.ej = shl nuw nsw i64 %i.ed, 3
  %.reass246 = add i64 %i.ej, %invariant.op245
  %i.ek = tail call i64 @llvm.umax.i64(i64 %.reass244, i64 %.reass246)
  %i.el = add i64 %i.ek, %i.bu
  %i.em = add nuw nsw i64 %i.ei, %i.be
  %i.en = sub i64 %i.el, %i.em                    ; 2 uses
  %min.iters.check = icmp ult i64 %i.en, 64
  br i1 %min.iters.check, label %.lr.ph168.preheader229, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph168.preheader
  %i.eo = lshr i64 %i.en, 3
  %i.ep = add nuw nsw i64 %i.eo, 1                ; 2 uses
  %i.eq = and i64 %i.ep, 7                        ; 2 uses
  %i.er = icmp eq i64 %i.eq, 0
  %i.es = select i1 %i.er, i64 8, i64 %i.eq
end_hunk_3
begin_hunk_4_@_ZNK3AAT9KerxTableINS_4kerxEE8sanitizeEP21hb_sanitize_context_t:bb.a

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK3AAT12KerxSubTable8dispatchI21hb_sanitize_context_tJEEENT_8return_tEPS3_DpOT0_(ptr noundef nonnull align 1 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 1, !tbaa !278
  %i.c = lshr i32 %i.b, 24
  %trunc = trunc nuw i32 %i.c to i8
  switch i8 %trunc, label %_ZN21hb_sanitize_context_t8dispatchIN3AAT19KerxSubTableFormat0INS1_18KerxSubTableHeaderEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit [
    i8 0, label %bb.b
    i8 1, label %bb.f
    i8 2, label %bb.h
    i8 4, label %bb.m
    i8 6, label %bb.o
  ]

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !505
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !506
  %i.l = zext i32 %i.k to i64
  %.not.i.i.i.i = icmp ugt i64 %i.i, %i.l
  br i1 %.not.i.i.i.i, label %_ZN21hb_sanitize_context_t8dispatchIN3AAT19KerxSubTableFormat0INS1_18KerxSubTableHeaderEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit, label %bb.c, !prof !711

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.n = load i32, ptr %i.m, align 1, !tbaa !278
  %i.o = tail call noundef i32 @llvm.bswap.i32(i32 %i.n)
  %i.p = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.o, i32 6) ; 2 uses
  %i.q = extractvalue { i32, i1 } %i.p, 0         ; 2 uses
  %i.r = extractvalue { i32, i1 } %i.p, 1
  br i1 %i.r, label %_ZN21hb_sanitize_context_t8dispatchIN3AAT19KerxSubTableFormat0INS1_18KerxSubTableHeaderEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit, label %bb.d, !prof !267

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.t = load ptr, ptr %i.e, align 8, !tbaa !505
  %i.u = ptrtoint ptr %i.s to i64                 ; 2 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = load i32, ptr %i.j, align 8, !tbaa !506
  %i.y = zext i32 %i.x to i64
  %.not.i.i.i.i.i.i = icmp ugt i64 %i.w, %i.y
  br i1 %.not.i.i.i.i.i.i, label %_ZN21hb_sanitize_context_t8dispatchIN3AAT19KerxSubTableFormat0INS1_18KerxSubTableHeaderEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit, label %bb.e, !prof !711

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !504
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %i.u
  %i.ad = trunc i64 %i.ac to i32
  %.not12.i.i.i.i.i.i = icmp ugt i32 %i.q, %i.ad
  br i1 %.not12.i.i.i.i.i.i, label %_ZN21hb_sanitize_context_t8dispatchIN3AAT19KerxSubTableFormat0INS1_18KerxSubTableHeaderEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit, label %_ZNK2OT7ArrayOfIN3AAT8KernPairENS_15BinSearchHeaderINS_7NumTypeILb1EjLj4EEEEEE16sanitize_shallowEP21hb_sanitize_context_t.exit.i.i.i, !prof !711

_ZNK2OT7ArrayOfIN3AAT8KernPairENS_15BinSearchHeaderINS_7NumTypeILb1EjLj4EEEEEE16sanitize_shallowEP21hb_sanitize_context_t.exit.i.i.i: ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !508
  %i.ag = sub i32 %i.af, %i.q                     ; 2 uses
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !508
  %i.ah = icmp sgt i32 %i.ag, 0
  br label %_ZN21hb_sanitize_context_t8dispatchIN3AAT19KerxSubTableFormat0INS1_18KerxSubTableHeaderEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit

bb.f:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !505
  %i.al = ptrtoint ptr %i.ai to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !506
  %i.aq = zext i32 %i.ap to i64
  %.not.i.i.i = icmp ugt i64 %i.an, %i.aq
  br i1 %.not.i.i.i, label %_ZN21hb_sanitize_context_t8dispatchIN3AAT19KerxSubTableFormat0INS1_18KerxSubTableHeaderEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit, label %bb.g, !prof !267

bb.g:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.as = tail call noundef zeroext i1 @_ZNK3AAT10StateTableINS_13ExtendedTypesENS_12Format1EntryILb1EE9EntryDataEE8sanitizeEP21hb_sanitize_context_tPj(ptr noundef nonnull align 1 dereferenceable(16) %i.ar, ptr noundef nonnull align 8 dereferenceable(62) %1, ptr noundef null)
  br label %_ZN21hb_sanitize_context_t8dispatchIN3AAT19KerxSubTableFormat0INS1_18KerxSubTableHeaderEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit

bb.h:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !505
  %i.aw = ptrtoint ptr %i.at to i64
  %i.ax = ptrtoint ptr %i.av to i64               ; 2 uses
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !506
  %i.bb = zext i32 %i.ba to i64                   ; 2 uses
  %.not.i.i.i7 = icmp ugt i64 %i.ay, %i.bb
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = sub i64 %i.be, %i.ax
  %.not.i6.not.i.i.i = icmp ugt i64 %i.bf, %i.bb
  %or.cond.i.i.i = select i1 %.not.i.i.i7, i1 true, i1 %.not.i6.not.i.i.i, !prof !408
  br i1 %or.cond.i.i.i, label %_ZN21hb_sanitize_context_t8dispatchIN3AAT19KerxSubTableFormat0INS1_18KerxSubTableHeaderEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit, label %_ZNK2OT8OffsetToIN3AAT6LookupINS_7NumTypeILb1EtLj2EEEEENS3_ILb1EjLj4EEEvLb0EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit5.i.i.i, !prof !408

_ZNK2OT8OffsetToIN3AAT6LookupINS_7NumTypeILb1EtLj2EEEEENS3_ILb1EjLj4EEEvLb0EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit5.i.i.i: ; preds = %bb.h
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.bh = load i32, ptr %i.bg, align 1, !tbaa !278
  %i.bi = tail call noundef i32 @llvm.bswap.i32(i32 %i.bh)
  %i.bj = zext i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 %i.bj
  %i.bl = tail call noundef zeroext i1 @_ZNK3AAT6LookupIN2OT7NumTypeILb1EtLj2EEEE8sanitizeEP21hb_sanitize_context_t(ptr noundef nonnull align 1 dereferenceable(13) %i.bk, ptr noundef nonnull align 8 dereferenceable(62) %1)
  br i1 %i.bl, label %bb.i, label %_ZN21hb_sanitize_context_t8dispatchIN3AAT19KerxSubTableFormat0INS1_18KerxSubTableHeaderEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit, !prof !672

bb.i:                                             ; preds = %_ZNK2OT8OffsetToIN3AAT6LookupINS_7NumTypeILb1EtLj2EEEEENS3_ILb1EjLj4EEEvLb0EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit5.i.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bn = load ptr, ptr %i.au, align 8, !tbaa !505
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = load i32, ptr %i.az, align 8, !tbaa !506
  %i.bs = zext i32 %i.br to i64
  %.not.i7.not.i.i.i = icmp ugt i64 %i.bq, %i.bs
  br i1 %.not.i7.not.i.i.i, label %_ZN21hb_sanitize_context_t8dispatchIN3AAT19KerxSubTableFormat0INS1_18KerxSubTableHeaderEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit, label %_ZNK2OT8OffsetToIN3AAT6LookupINS_7NumTypeILb1EtLj2EEEEENS3_ILb1EjLj4EEEvLb0EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.i.i.i, !prof !267

_ZNK2OT8OffsetToIN3AAT6LookupINS_7NumTypeILb1EtLj2EEEEENS3_ILb1EjLj4EEEvLb0EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.i.i.i: ; preds = %bb.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.bt = load i32, ptr %i.bd, align 1, !tbaa !278
  %i.bu = tail call noundef i32 @llvm.bswap.i32(i32 %i.bt)
  %i.bv = zext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 %i.bv
  %i.bx = tail call noundef zeroext i1 @_ZNK3AAT6LookupIN2OT7NumTypeILb1EtLj2EEEE8sanitizeEP21hb_sanitize_context_t(ptr noundef nonnull align 1 dereferenceable(13) %i.bw, ptr noundef nonnull align 8 dereferenceable(62) %1)
  br i1 %i.bx, label %bb.j, label %_ZN21hb_sanitize_context_t8dispatchIN3AAT19KerxSubTableFormat0INS1_18KerxSubTableHeaderEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit, !prof !672

bb.j:                                             ; preds = %_ZNK2OT8OffsetToIN3AAT6LookupINS_7NumTypeILb1EtLj2EEEEENS3_ILb1EjLj4EEEvLb0EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.i.i.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.by = load i32, ptr %i.bm, align 1, !tbaa !278
  %i.bz = tail call noundef i32 @llvm.bswap.i32(i32 %i.by) ; 2 uses
  %i.ca = load ptr, ptr %i.au, align 8, !tbaa !505
  %i.cb = ptrtoint ptr %0 to i64                  ; 2 uses
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = sub i64 %i.cb, %i.cc
  %i.ce = load i32, ptr %i.az, align 8, !tbaa !506
  %i.cf = zext i32 %i.ce to i64
  %.not.i.i.i.i8 = icmp ugt i64 %i.cd, %i.cf
  br i1 %.not.i.i.i.i8, label %_ZN21hb_sanitize_context_t8dispatchIN3AAT19KerxSubTableFormat0INS1_18KerxSubTableHeaderEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cg = load ptr, ptr %i.bc, align 8, !tbaa !504
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = sub i64 %i.ch, %i.cb
  %i.cj = trunc i64 %i.ci to i32
  %.not12.i.i.i.i = icmp ugt i32 %i.bz, %i.cj
  br i1 %.not12.i.i.i.i, label %_ZN21hb_sanitize_context_t8dispatchIN3AAT19KerxSubTableFormat0INS1_18KerxSubTableHeaderEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !508
  %i.cm = sub i32 %i.cl, %i.bz                    ; 2 uses
  store i32 %i.cm, ptr %i.ck, align 4, !tbaa !508
  %i.cn = icmp sgt i32 %i.cm, 0
  br label %_ZN21hb_sanitize_context_t8dispatchIN3AAT19KerxSubTableFormat0INS1_18KerxSubTableHeaderEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit

bb.m:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !505
  %i.cr = ptrtoint ptr %i.co to i64
  %i.cs = ptrtoint ptr %i.cq to i64
  %i.ct = sub i64 %i.cr, %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !506
  %i.cw = zext i32 %i.cv to i64
  %.not.i.i.i9 = icmp ugt i64 %i.ct, %i.cw
  br i1 %.not.i.i.i9, label %_ZN21hb_sanitize_context_t8dispatchIN3AAT19KerxSubTableFormat0INS1_18KerxSubTableHeaderEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit, label %bb.n, !prof !267

bb.n:                                             ; preds = %bb.m
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.cy = tail call noundef zeroext i1 @_ZNK3AAT10StateTableINS_13ExtendedTypesENS_19KerxSubTableFormat4INS_18KerxSubTableHeaderEE9EntryDataEE8sanitizeEP21hb_sanitize_context_tPj(ptr noundef nonnull align 1 dereferenceable(16) %i.cx, ptr noundef nonnull align 8 dereferenceable(62) %1, ptr noundef null)
  br label %_ZN21hb_sanitize_context_t8dispatchIN3AAT19KerxSubTableFormat0INS1_18KerxSubTableHeaderEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit

bb.o:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.cz = tail call noundef zeroext i1 @_ZNK3AAT19KerxSubTableFormat6INS_18KerxSubTableHeaderEE8sanitizeEP21hb_sanitize_context_t(ptr noundef nonnull align 1 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(62) %1)
  br label %_ZN21hb_sanitize_context_t8dispatchIN3AAT19KerxSubTableFormat0INS1_18KerxSubTableHeaderEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit

_ZN21hb_sanitize_context_t8dispatchIN3AAT19KerxSubTableFormat0INS1_18KerxSubTableHeaderEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit: ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %_ZNK2OT8OffsetToIN3AAT6LookupINS_7NumTypeILb1EtLj2EEEEENS3_ILb1EjLj4EEEvLb0EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.i.i.i, %bb.i, %_ZNK2OT8OffsetToIN3AAT6LookupINS_7NumTypeILb1EtLj2EEEEENS3_ILb1EjLj4EEEvLb0EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit5.i.i.i, %bb.h, %bb.g, %bb.f, %_ZNK2OT7ArrayOfIN3AAT8KernPairENS_15BinSearchHeaderINS_7NumTypeILb1EjLj4EEEEEE16sanitize_shallowEP21hb_sanitize_context_t.exit.i.i.i, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a, %bb.o
  %.0 = phi i1 [ %i.cz, %bb.o ], [ true, %bb.a ], [ false, %bb.e ], [ %i.as, %bb.g ], [ %i.cn, %bb.l ], [ false, %bb.d ], [ %i.ah, %_ZNK2OT7ArrayOfIN3AAT8KernPairENS_15BinSearchHeaderINS_7NumTypeILb1EjLj4EEEEEE16sanitize_shallowEP21hb_sanitize_context_t.exit.i.i.i ], [ false, %bb.b ], [ false, %bb.c ], [ false, %bb.f ], [ false, %bb.i ], [ false, %_ZNK2OT8OffsetToIN3AAT6LookupINS_7NumTypeILb1EtLj2EEEEENS3_ILb1EjLj4EEEvLb0EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.i.i.i ], [ false, %_ZNK2OT8OffsetToIN3AAT6LookupINS_7NumTypeILb1EtLj2EEEEENS3_ILb1EjLj4EEEvLb0EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit5.i.i.i ], [ false, %bb.h ], [ false, %bb.k ], [ false, %bb.j ], [ false, %bb.m ], [ %i.cy, %bb.n ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK3AAT10StateTableINS_13ExtendedTypesENS_12Format1EntryILb1EE9EntryDataEE8sanitizeEP21hb_sanitize_context_tPj(ptr noundef nonnull align 1 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !505
  %i.d = ptrtoint ptr %i.a to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !506
  %i.i = zext i32 %i.h to i64
  %.not154 = icmp ugt i64 %i.f, %i.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br i1 %.not154, label %.critedge, label %bb.b, !prof !267

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.k = load i32, ptr %0, align 1, !tbaa !278
  %i.l = tail call noundef i32 @llvm.bswap.i32(i32 %i.k)
  %i.m = icmp ugt i32 %i.l, 3
  br i1 %i.m, label %bb.c, label %.critedge, !prof !268

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !505
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = load i32, ptr %i.g, align 8, !tbaa !506
  %i.t = zext i32 %i.s to i64
  %.not.i.not = icmp ugt i64 %i.r, %i.t
  br i1 %.not.i.not, label %.critedge, label %_ZNK2OT8OffsetToIN3AAT6LookupINS_7NumTypeILb1EtLj2EEEEENS3_ILb1EjLj4EEEvLb0EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit, !prof !267

_ZNK2OT8OffsetToIN3AAT6LookupINS_7NumTypeILb1EtLj2EEEEENS3_ILb1EjLj4EEEvLb0EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit: ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.v = load i32, ptr %i.u, align 1, !tbaa !278
  %i.w = tail call noundef i32 @llvm.bswap.i32(i32 %i.v)
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %i.x
  %i.z = tail call noundef zeroext i1 @_ZNK3AAT6LookupIN2OT7NumTypeILb1EtLj2EEEE8sanitizeEP21hb_sanitize_context_t(ptr noundef nonnull align 1 dereferenceable(13) %i.y, ptr noundef nonnull align 8 dereferenceable(62) %1)
  br i1 %i.z, label %bb.d, label %.critedge, !prof !672

bb.d:                                             ; preds = %_ZNK2OT8OffsetToIN3AAT6LookupINS_7NumTypeILb1EtLj2EEEEENS3_ILb1EjLj4EEEvLb0EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit
  %i.aa = load i32, ptr %i.n, align 1, !tbaa !278
  %i.ab = tail call noundef i32 @llvm.bswap.i32(i32 %i.aa)
  %i.ac = zext i32 %i.ab to i64                   ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %i.ac ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.af = load i32, ptr %i.ae, align 1, !tbaa !278
  %i.ag = tail call noundef i32 @llvm.bswap.i32(i32 %i.af)
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %i.ah ; 3 uses
  %i.aj = load i32, ptr %0, align 1, !tbaa !278
  %i.ak = tail call noundef i32 @llvm.bswap.i32(i32 %i.aj) ; 5 uses
  %i.al = icmp slt i32 %i.ak, 0
  br i1 %i.al, label %.critedge, label %bb.e, !prof !267

bb.e:                                             ; preds = %bb.d
  %i.am = shl nuw i32 %i.ak, 1
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 6 uses
  %i.ao = ptrtoint ptr %i.ad to i64               ; 2 uses
  %i.ap = ptrtoint ptr %i.ai to i64               ; 2 uses
  %3 = ptrtoaddr ptr %0 to i64                    ; 3 uses
  %invariant.op = add i64 %3, %i.ac
  %invariant.op190 = add i64 %invariant.op, 2
  %invariant.op192 = add i64 %3, %i.ac
  %i.aq = xor i64 %3, -1
  br label %.loopexit156

.loopexit:                                        ; preds = %.lr.ph167, %bb.n
  %.1146.lcssa = phi i32 [ %.0145172, %bb.n ], [ %.sroa.speculated, %.lr.ph167 ] ; 2 uses
  %.not183 = icmp sgt i32 %.264, %.1146.lcssa
  br i1 %.not183, label %bb.o, label %.loopexit156, !llvm.loop !5712

.loopexit156:                                     ; preds = %.loopexit, %bb.e
  %.062174 = phi i32 [ 0, %bb.e ], [ %.264, %.loopexit ] ; 4 uses
  %.0145172 = phi i32 [ 0, %bb.e ], [ %.1146.lcssa, %.loopexit ] ; 5 uses
  %.0147170 = phi i32 [ 0, %bb.e ], [ %.5150, %.loopexit ] ; 7 uses
  %.not78 = icmp sgt i32 %.062174, %.0145172
  br i1 %.not78, label %.loopexit184, label %bb.f

bb.f:                                             ; preds = %.loopexit156
  %i.ar = add nuw nsw i32 %.0145172, 1            ; 6 uses
  %i.as = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.ar, i32 %i.am) ; 2 uses
  %i.at = extractvalue { i32, i1 } %i.as, 0       ; 2 uses
  %i.au = extractvalue { i32, i1 } %i.as, 1
  br i1 %i.au, label %.critedge, label %bb.g, !prof !711

bb.g:                                             ; preds = %bb.f
  %i.av = load ptr, ptr %i.b, align 8, !tbaa !505
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = sub i64 %i.ao, %i.aw
  %i.ay = load i32, ptr %i.g, align 8, !tbaa !506
  %i.az = zext i32 %i.ay to i64
  %.not.i.i83 = icmp ugt i64 %i.ax, %i.az
  br i1 %.not.i.i83, label %.critedge, label %bb.h, !prof !711

bb.h:                                             ; preds = %bb.g
  %i.ba = load ptr, ptr %i.j, align 8, !tbaa !504
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = sub i64 %i.bb, %i.ao
  %i.bd = trunc i64 %i.bc to i32
  %.not12.i.i84 = icmp ugt i32 %i.at, %i.bd
  br i1 %.not12.i.i84, label %.critedge, label %_ZNK21hb_sanitize_context_t11check_rangeIN2OT7NumTypeILb1EtLj2EEEEEbPKT_jj.exit85, !prof !711

_ZNK21hb_sanitize_context_t11check_rangeIN2OT7NumTypeILb1EtLj2EEEEEbPKT_jj.exit85: ; preds = %bb.h
  %i.be = load i32, ptr %i.an, align 4, !tbaa !508
  %i.bf = sub i32 %i.be, %i.at                    ; 3 uses
  store i32 %i.bf, ptr %i.an, align 4, !tbaa !508
  %i.bg = icmp sgt i32 %i.bf, 0
  br i1 %i.bg, label %bb.i, label %.critedge, !prof !672

bb.i:                                             ; preds = %_ZNK21hb_sanitize_context_t11check_rangeIN2OT7NumTypeILb1EtLj2EEEEEbPKT_jj.exit85
  %i.bh = xor i32 %.0145172, -1
  %.neg79 = add nsw i32 %.062174, %i.bh
  %i.bi = add i32 %.neg79, %i.bf                  ; 2 uses
  store i32 %i.bi, ptr %i.an, align 4, !tbaa !508
  %i.bj = icmp slt i32 %i.bi, 1
  br i1 %i.bj, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bk = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.ar, i32 %i.ak)
  %i.bl = extractvalue { i32, i1 } %i.bk, 1
  br i1 %i.bl, label %.critedge, label %bb.k, !prof !267

bb.k:                                             ; preds = %bb.j
  %i.bm = mul i32 %i.ar, %i.ak
  %i.bn = zext i32 %i.bm to i64
  %.idx80 = shl nuw nsw i64 %i.bn, 1              ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.idx80
  %i.bp = mul i32 %.062174, %i.ak
  %i.bq = zext i32 %i.bp to i64
  %.idx = shl nuw nsw i64 %i.bq, 1                ; 4 uses
  %i.br = icmp samesign ult i64 %.idx, %.idx80
  br i1 %i.br, label %.lr.ph162.preheader, label %.loopexit184

.lr.ph162.preheader:                              ; preds = %bb.k
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.idx ; 3 uses
  %.reass191 = add i64 %.idx, %invariant.op190
  %.reass = add i64 %.idx80, %invariant.op192
  %i.bt = tail call i64 @llvm.umax.i64(i64 %.reass191, i64 %.reass)
  %i.bu = add i64 %i.bt, %i.aq
  %i.bv = add nuw nsw i64 %.idx, %i.ac
  %i.bw = sub i64 %i.bu, %i.bv                    ; 2 uses
  %i.bx = lshr i64 %i.bw, 1
  %i.by = add nuw i64 %i.bx, 1                    ; 2 uses
  %min.iters.check = icmp ult i64 %i.bw, 14
  br i1 %min.iters.check, label %.lr.ph162.preheader187, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph162.preheader
  %n.vec = and i64 %i.by, -8                      ; 3 uses
  %i.bz = shl i64 %n.vec, 1
  %i.ca = getelementptr i8, ptr %i.bs, i64 %i.bz
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.0147170, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.cj, %vector.body ]
  %vec.phi185 = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.ck, %vector.body ]
  %i.cb = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.bs, i64 %i.cb ; 2 uses
  %i.cc = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <4 x i16>, ptr %next.gep, align 1, !tbaa !283
  %wide.load186 = load <4 x i16>, ptr %i.cc, align 1, !tbaa !283
  %i.cd = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %wide.load)
  %i.ce = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %wide.load186)
  %i.cf = zext <4 x i16> %i.cd to <4 x i32>
  %i.cg = zext <4 x i16> %i.ce to <4 x i32>
  %i.ch = add nuw nsw <4 x i32> %i.cf, splat (i32 1)
  %i.ci = add nuw nsw <4 x i32> %i.cg, splat (i32 1)
  %i.cj = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi, <4 x i32> %i.ch) ; 2 uses
  %i.ck = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi185, <4 x i32> %i.ci) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cl = icmp eq i64 %index.next, %n.vec
  br i1 %i.cl, label %middle.block, label %vector.body, !llvm.loop !5713

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.cj, <4 x i32> %i.ck)
  %i.cm = tail call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %i.by, %n.vec
  br i1 %cmp.n, label %.loopexit184, label %.lr.ph162.preheader187

.lr.ph162.preheader187:                           ; preds = %.lr.ph162.preheader, %middle.block
  %.058161.ph = phi ptr [ %i.bs, %.lr.ph162.preheader ], [ %i.ca, %middle.block ]
  %.4160.ph = phi i32 [ %.0147170, %.lr.ph162.preheader ], [ %i.cm, %middle.block ]
  br label %.lr.ph162

.lr.ph162:                                        ; preds = %.lr.ph162.preheader187, %.lr.ph162
  %.058161 = phi ptr [ %i.cr, %.lr.ph162 ], [ %.058161.ph, %.lr.ph162.preheader187 ] ; 2 uses
  %.4160 = phi i32 [ %.sroa.speculated100, %.lr.ph162 ], [ %.4160.ph, %.lr.ph162.preheader187 ]
  %i.cn = load i16, ptr %.058161, align 1, !tbaa !283
  %i.co = tail call noundef i16 @llvm.bswap.i16(i16 %i.cn)
  %i.cp = zext i16 %i.co to i32
  %i.cq = add nuw nsw i32 %i.cp, 1
  %.sroa.speculated100 = tail call i32 @llvm.umax.i32(i32 %.4160, i32 %i.cq) ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.058161, i64 2 ; 2 uses
  %i.cs = icmp ult ptr %i.cr, %i.bo
  br i1 %i.cs, label %.lr.ph162, label %.loopexit184, !llvm.loop !5714

.loopexit184:                                     ; preds = %.lr.ph162, %middle.block, %.loopexit156, %bb.k
  %.5150 = phi i32 [ %.0147170, %.loopexit156 ], [ %.0147170, %bb.k ], [ %i.cm, %middle.block ], [ %.sroa.speculated100, %.lr.ph162 ] ; 6 uses
  %.264 = phi i32 [ %.062174, %.loopexit156 ], [ %i.ar, %bb.k ], [ %i.ar, %middle.block ], [ %i.ar, %.lr.ph162 ] ; 2 uses
  %i.ct = mul i32 %.5150, 6                       ; 2 uses
  %i.cu = load ptr, ptr %i.b, align 8, !tbaa !505
  %i.cv = ptrtoint ptr %i.cu to i64
  %i.cw = sub i64 %i.ap, %i.cv
  %i.cx = load i32, ptr %i.g, align 8, !tbaa !506
  %i.cy = zext i32 %i.cx to i64
  %.not.i.i.i = icmp ugt i64 %i.cw, %i.cy
  br i1 %.not.i.i.i, label %.critedge, label %bb.l, !prof !711

bb.l:                                             ; preds = %.loopexit184
  %i.cz = load ptr, ptr %i.j, align 8, !tbaa !504
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = sub i64 %i.da, %i.ap
  %i.dc = trunc i64 %i.db to i32
  %.not12.i.i.i = icmp ugt i32 %i.ct, %i.dc
  br i1 %.not12.i.i.i, label %.critedge, label %_ZNK21hb_sanitize_context_t11check_arrayIN3AAT5EntryINS1_12Format1EntryILb1EE9EntryDataEEEEEbPKT_j.exit, !prof !711

_ZNK21hb_sanitize_context_t11check_arrayIN3AAT5EntryINS1_12Format1EntryILb1EE9EntryDataEEEEEbPKT_j.exit: ; preds = %bb.l
  %i.dd = load i32, ptr %i.an, align 4, !tbaa !508
  %i.de = sub i32 %i.dd, %i.ct                    ; 3 uses
  store i32 %i.de, ptr %i.an, align 4, !tbaa !508
  %i.df = icmp sgt i32 %i.de, 0
  br i1 %i.df, label %bb.m, label %.critedge, !prof !672

bb.m:                                             ; preds = %_ZNK21hb_sanitize_context_t11check_arrayIN3AAT5EntryINS1_12Format1EntryILb1EE9EntryDataEEEEEbPKT_j.exit
  %.neg81 = sub nsw i32 %.0147170, %.5150
  %i.dg = add i32 %i.de, %.neg81                  ; 2 uses
  store i32 %i.dg, ptr %i.an, align 4, !tbaa !508
  %i.dh = icmp slt i32 %i.dg, 1
  br i1 %i.dh, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.di = zext nneg i32 %.5150 to i64
  %i.dj = getelementptr inbounds nuw [6 x i8], ptr %i.ai, i64 %i.di
  %i.dk = icmp ult i32 %.0147170, %.5150
  br i1 %i.dk, label %.lr.ph167.preheader, label %.loopexit

.lr.ph167.preheader:                              ; preds = %bb.n
  %i.dl = zext nneg i32 %.0147170 to i64
  %i.dm = getelementptr inbounds nuw [6 x i8], ptr %i.ai, i64 %i.dl
  br label %.lr.ph167

.lr.ph167:                                        ; preds = %.lr.ph167.preheader, %.lr.ph167
  %.0166 = phi ptr [ %i.dq, %.lr.ph167 ], [ %i.dm, %.lr.ph167.preheader ] ; 2 uses
  %.1146164 = phi i32 [ %.sroa.speculated, %.lr.ph167 ], [ %.0145172, %.lr.ph167.preheader ]
  %i.dn = load i16, ptr %.0166, align 1, !tbaa !283
  %i.do = tail call noundef i16 @llvm.bswap.i16(i16 %i.dn)
  %i.dp = zext i16 %i.do to i32
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %.1146164, i32 %i.dp) ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.0166, i64 6 ; 2 uses
  %i.dr = icmp ult ptr %i.dq, %i.dj
  br i1 %i.dr, label %.lr.ph167, label %.loopexit, !llvm.loop !5715

bb.o:                                             ; preds = %.loopexit
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %.critedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 %.5150, ptr %2, align 4, !tbaa !324
  br label %.critedge

.critedge:                                        ; preds = %.loopexit184, %bb.l, %bb.g, %bb.h, %bb.f, %_ZNK21hb_sanitize_context_t11check_rangeIN2OT7NumTypeILb1EtLj2EEEEEbPKT_jj.exit85, %bb.i, %bb.j, %_ZNK21hb_sanitize_context_t11check_arrayIN3AAT5EntryINS1_12Format1EntryILb1EE9EntryDataEEEEEbPKT_j.exit, %bb.m, %bb.c, %bb.p, %bb.o, %bb.d, %_ZNK2OT8OffsetToIN3AAT6LookupINS_7NumTypeILb1EtLj2EEEEENS3_ILb1EjLj4EEEvLb0EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit, %bb.a, %bb.b
  %.7 = phi i1 [ false, %bb.d ], [ false, %_ZNK2OT8OffsetToIN3AAT6LookupINS_7NumTypeILb1EtLj2EEEEENS3_ILb1EjLj4EEEvLb0EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit ], [ true, %bb.o ], [ false, %bb.b ], [ false, %bb.a ], [ true, %bb.p ], [ false, %bb.c ], [ false, %bb.m ], [ false, %_ZNK21hb_sanitize_context_t11check_arrayIN3AAT5EntryINS1_12Format1EntryILb1EE9EntryDataEEEEEbPKT_j.exit ], [ false, %bb.j ], [ false, %bb.i ], [ false, %_ZNK21hb_sanitize_context_t11check_rangeIN2OT7NumTypeILb1EtLj2EEEEEbPKT_jj.exit85 ], [ false, %bb.f ], [ false, %bb.h ], [ false, %bb.g ], [ false, %bb.l ], [ false, %.loopexit184 ]
  ret i1 %.7
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK3AAT10StateTableINS_13ExtendedTypesENS_19KerxSubTableFormat4INS_18KerxSubTableHeaderEE9EntryDataEE8sanitizeEP21hb_sanitize_context_tPj(ptr noundef nonnull align 1 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !505
  %i.d = ptrtoint ptr %i.a to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !506
  %i.i = zext i32 %i.h to i64
  %.not154 = icmp ugt i64 %i.f, %i.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br i1 %.not154, label %.critedge, label %bb.b, !prof !267

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.k = load i32, ptr %0, align 1, !tbaa !278
  %i.l = tail call noundef i32 @llvm.bswap.i32(i32 %i.k)
  %i.m = icmp ugt i32 %i.l, 3
  br i1 %i.m, label %bb.c, label %.critedge, !prof !268

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !505
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = load i32, ptr %i.g, align 8, !tbaa !506
  %i.t = zext i32 %i.s to i64
  %.not.i.not = icmp ugt i64 %i.r, %i.t
  br i1 %.not.i.not, label %.critedge, label %_ZNK2OT8OffsetToIN3AAT6LookupINS_7NumTypeILb1EtLj2EEEEENS3_ILb1EjLj4EEEvLb0EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit, !prof !267

_ZNK2OT8OffsetToIN3AAT6LookupINS_7NumTypeILb1EtLj2EEEEENS3_ILb1EjLj4EEEvLb0EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit: ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.v = load i32, ptr %i.u, align 1, !tbaa !278
  %i.w = tail call noundef i32 @llvm.bswap.i32(i32 %i.v)
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %i.x
  %i.z = tail call noundef zeroext i1 @_ZNK3AAT6LookupIN2OT7NumTypeILb1EtLj2EEEE8sanitizeEP21hb_sanitize_context_t(ptr noundef nonnull align 1 dereferenceable(13) %i.y, ptr noundef nonnull align 8 dereferenceable(62) %1)
  br i1 %i.z, label %bb.d, label %.critedge, !prof !672

bb.d:                                             ; preds = %_ZNK2OT8OffsetToIN3AAT6LookupINS_7NumTypeILb1EtLj2EEEEENS3_ILb1EjLj4EEEvLb0EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit
  %i.aa = load i32, ptr %i.n, align 1, !tbaa !278
  %i.ab = tail call noundef i32 @llvm.bswap.i32(i32 %i.aa)
  %i.ac = zext i32 %i.ab to i64                   ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %i.ac ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.af = load i32, ptr %i.ae, align 1, !tbaa !278
  %i.ag = tail call noundef i32 @llvm.bswap.i32(i32 %i.af)
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %i.ah ; 3 uses
  %i.aj = load i32, ptr %0, align 1, !tbaa !278
  %i.ak = tail call noundef i32 @llvm.bswap.i32(i32 %i.aj) ; 5 uses
  %i.al = icmp slt i32 %i.ak, 0
  br i1 %i.al, label %.critedge, label %bb.e, !prof !267

bb.e:                                             ; preds = %bb.d
  %i.am = shl nuw i32 %i.ak, 1
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 6 uses
  %i.ao = ptrtoint ptr %i.ad to i64               ; 2 uses
  %i.ap = ptrtoint ptr %i.ai to i64               ; 2 uses
  %3 = ptrtoaddr ptr %0 to i64                    ; 3 uses
  %invariant.op = add i64 %3, %i.ac
  %invariant.op190 = add i64 %invariant.op, 2
  %invariant.op192 = add i64 %3, %i.ac
  %i.aq = xor i64 %3, -1
  br label %.loopexit156

.loopexit:                                        ; preds = %.lr.ph167, %bb.n
  %.1146.lcssa = phi i32 [ %.0145172, %bb.n ], [ %.sroa.speculated, %.lr.ph167 ] ; 2 uses
  %.not183 = icmp sgt i32 %.264, %.1146.lcssa
  br i1 %.not183, label %bb.o, label %.loopexit156, !llvm.loop !5716

.loopexit156:                                     ; preds = %.loopexit, %bb.e
  %.062174 = phi i32 [ 0, %bb.e ], [ %.264, %.loopexit ] ; 4 uses
  %.0145172 = phi i32 [ 0, %bb.e ], [ %.1146.lcssa, %.loopexit ] ; 5 uses
  %.0147170 = phi i32 [ 0, %bb.e ], [ %.5150, %.loopexit ] ; 7 uses
  %.not78 = icmp sgt i32 %.062174, %.0145172
  br i1 %.not78, label %.loopexit184, label %bb.f

bb.f:                                             ; preds = %.loopexit156
  %i.ar = add nuw nsw i32 %.0145172, 1            ; 6 uses
  %i.as = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.ar, i32 %i.am) ; 2 uses
  %i.at = extractvalue { i32, i1 } %i.as, 0       ; 2 uses
  %i.au = extractvalue { i32, i1 } %i.as, 1
  br i1 %i.au, label %.critedge, label %bb.g, !prof !711

bb.g:                                             ; preds = %bb.f
  %i.av = load ptr, ptr %i.b, align 8, !tbaa !505
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = sub i64 %i.ao, %i.aw
  %i.ay = load i32, ptr %i.g, align 8, !tbaa !506
  %i.az = zext i32 %i.ay to i64
  %.not.i.i83 = icmp ugt i64 %i.ax, %i.az
  br i1 %.not.i.i83, label %.critedge, label %bb.h, !prof !711

bb.h:                                             ; preds = %bb.g
  %i.ba = load ptr, ptr %i.j, align 8, !tbaa !504
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = sub i64 %i.bb, %i.ao
  %i.bd = trunc i64 %i.bc to i32
  %.not12.i.i84 = icmp ugt i32 %i.at, %i.bd
  br i1 %.not12.i.i84, label %.critedge, label %_ZNK21hb_sanitize_context_t11check_rangeIN2OT7NumTypeILb1EtLj2EEEEEbPKT_jj.exit85, !prof !711

_ZNK21hb_sanitize_context_t11check_rangeIN2OT7NumTypeILb1EtLj2EEEEEbPKT_jj.exit85: ; preds = %bb.h
  %i.be = load i32, ptr %i.an, align 4, !tbaa !508
  %i.bf = sub i32 %i.be, %i.at                    ; 3 uses
  store i32 %i.bf, ptr %i.an, align 4, !tbaa !508
  %i.bg = icmp sgt i32 %i.bf, 0
  br i1 %i.bg, label %bb.i, label %.critedge, !prof !672

bb.i:                                             ; preds = %_ZNK21hb_sanitize_context_t11check_rangeIN2OT7NumTypeILb1EtLj2EEEEEbPKT_jj.exit85
  %i.bh = xor i32 %.0145172, -1
  %.neg79 = add nsw i32 %.062174, %i.bh
  %i.bi = add i32 %.neg79, %i.bf                  ; 2 uses
  store i32 %i.bi, ptr %i.an, align 4, !tbaa !508
  %i.bj = icmp slt i32 %i.bi, 1
  br i1 %i.bj, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bk = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.ar, i32 %i.ak)
  %i.bl = extractvalue { i32, i1 } %i.bk, 1
  br i1 %i.bl, label %.critedge, label %bb.k, !prof !267

bb.k:                                             ; preds = %bb.j
  %i.bm = mul i32 %i.ar, %i.ak
  %i.bn = zext i32 %i.bm to i64
  %.idx80 = shl nuw nsw i64 %i.bn, 1              ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.idx80
  %i.bp = mul i32 %.062174, %i.ak
  %i.bq = zext i32 %i.bp to i64
  %.idx = shl nuw nsw i64 %i.bq, 1                ; 4 uses
  %i.br = icmp samesign ult i64 %.idx, %.idx80
  br i1 %i.br, label %.lr.ph162.preheader, label %.loopexit184

.lr.ph162.preheader:                              ; preds = %bb.k
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.idx ; 3 uses
  %.reass191 = add i64 %.idx, %invariant.op190
  %.reass = add i64 %.idx80, %invariant.op192
  %i.bt = tail call i64 @llvm.umax.i64(i64 %.reass191, i64 %.reass)
  %i.bu = add i64 %i.bt, %i.aq
  %i.bv = add nuw nsw i64 %.idx, %i.ac
  %i.bw = sub i64 %i.bu, %i.bv                    ; 2 uses
  %i.bx = lshr i64 %i.bw, 1
  %i.by = add nuw i64 %i.bx, 1                    ; 2 uses
  %min.iters.check = icmp ult i64 %i.bw, 14
  br i1 %min.iters.check, label %.lr.ph162.preheader187, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph162.preheader
  %n.vec = and i64 %i.by, -8                      ; 3 uses
  %i.bz = shl i64 %n.vec, 1
  %i.ca = getelementptr i8, ptr %i.bs, i64 %i.bz
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.0147170, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.cj, %vector.body ]
  %vec.phi185 = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.ck, %vector.body ]
  %i.cb = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.bs, i64 %i.cb ; 2 uses
  %i.cc = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <4 x i16>, ptr %next.gep, align 1, !tbaa !283
  %wide.load186 = load <4 x i16>, ptr %i.cc, align 1, !tbaa !283
  %i.cd = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %wide.load)
  %i.ce = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %wide.load186)
  %i.cf = zext <4 x i16> %i.cd to <4 x i32>
  %i.cg = zext <4 x i16> %i.ce to <4 x i32>
  %i.ch = add nuw nsw <4 x i32> %i.cf, splat (i32 1)
  %i.ci = add nuw nsw <4 x i32> %i.cg, splat (i32 1)
  %i.cj = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi, <4 x i32> %i.ch) ; 2 uses
  %i.ck = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi185, <4 x i32> %i.ci) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cl = icmp eq i64 %index.next, %n.vec
  br i1 %i.cl, label %middle.block, label %vector.body, !llvm.loop !5717

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.cj, <4 x i32> %i.ck)
  %i.cm = tail call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %i.by, %n.vec
  br i1 %cmp.n, label %.loopexit184, label %.lr.ph162.preheader187

.lr.ph162.preheader187:                           ; preds = %.lr.ph162.preheader, %middle.block
  %.058161.ph = phi ptr [ %i.bs, %.lr.ph162.preheader ], [ %i.ca, %middle.block ]
  %.4160.ph = phi i32 [ %.0147170, %.lr.ph162.preheader ], [ %i.cm, %middle.block ]
  br label %.lr.ph162

.lr.ph162:                                        ; preds = %.lr.ph162.preheader187, %.lr.ph162
  %.058161 = phi ptr [ %i.cr, %.lr.ph162 ], [ %.058161.ph, %.lr.ph162.preheader187 ] ; 2 uses
  %.4160 = phi i32 [ %.sroa.speculated100, %.lr.ph162 ], [ %.4160.ph, %.lr.ph162.preheader187 ]
  %i.cn = load i16, ptr %.058161, align 1, !tbaa !283
  %i.co = tail call noundef i16 @llvm.bswap.i16(i16 %i.cn)
  %i.cp = zext i16 %i.co to i32
  %i.cq = add nuw nsw i32 %i.cp, 1
  %.sroa.speculated100 = tail call i32 @llvm.umax.i32(i32 %.4160, i32 %i.cq) ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.058161, i64 2 ; 2 uses
  %i.cs = icmp ult ptr %i.cr, %i.bo
  br i1 %i.cs, label %.lr.ph162, label %.loopexit184, !llvm.loop !5718

.loopexit184:                                     ; preds = %.lr.ph162, %middle.block, %.loopexit156, %bb.k
  %.5150 = phi i32 [ %.0147170, %.loopexit156 ], [ %.0147170, %bb.k ], [ %i.cm, %middle.block ], [ %.sroa.speculated100, %.lr.ph162 ] ; 6 uses
  %.264 = phi i32 [ %.062174, %.loopexit156 ], [ %i.ar, %bb.k ], [ %i.ar, %middle.block ], [ %i.ar, %.lr.ph162 ] ; 2 uses
  %i.ct = mul i32 %.5150, 6                       ; 2 uses
  %i.cu = load ptr, ptr %i.b, align 8, !tbaa !505
  %i.cv = ptrtoint ptr %i.cu to i64
  %i.cw = sub i64 %i.ap, %i.cv
  %i.cx = load i32, ptr %i.g, align 8, !tbaa !506
  %i.cy = zext i32 %i.cx to i64
  %.not.i.i.i = icmp ugt i64 %i.cw, %i.cy
  br i1 %.not.i.i.i, label %.critedge, label %bb.l, !prof !711

bb.l:                                             ; preds = %.loopexit184
  %i.cz = load ptr, ptr %i.j, align 8, !tbaa !504
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = sub i64 %i.da, %i.ap
  %i.dc = trunc i64 %i.db to i32
  %.not12.i.i.i = icmp ugt i32 %i.ct, %i.dc
  br i1 %.not12.i.i.i, label %.critedge, label %_ZNK21hb_sanitize_context_t11check_arrayIN3AAT5EntryINS1_19KerxSubTableFormat4INS1_18KerxSubTableHeaderEE9EntryDataEEEEEbPKT_j.exit, !prof !711

_ZNK21hb_sanitize_context_t11check_arrayIN3AAT5EntryINS1_19KerxSubTableFormat4INS1_18KerxSubTableHeaderEE9EntryDataEEEEEbPKT_j.exit: ; preds = %bb.l
  %i.dd = load i32, ptr %i.an, align 4, !tbaa !508
  %i.de = sub i32 %i.dd, %i.ct                    ; 3 uses
  store i32 %i.de, ptr %i.an, align 4, !tbaa !508
  %i.df = icmp sgt i32 %i.de, 0
  br i1 %i.df, label %bb.m, label %.critedge, !prof !672

bb.m:                                             ; preds = %_ZNK21hb_sanitize_context_t11check_arrayIN3AAT5EntryINS1_19KerxSubTableFormat4INS1_18KerxSubTableHeaderEE9EntryDataEEEEEbPKT_j.exit
  %.neg81 = sub nsw i32 %.0147170, %.5150
  %i.dg = add i32 %i.de, %.neg81                  ; 2 uses
  store i32 %i.dg, ptr %i.an, align 4, !tbaa !508
  %i.dh = icmp slt i32 %i.dg, 1
  br i1 %i.dh, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.di = zext nneg i32 %.5150 to i64
  %i.dj = getelementptr inbounds nuw [6 x i8], ptr %i.ai, i64 %i.di
  %i.dk = icmp ult i32 %.0147170, %.5150
  br i1 %i.dk, label %.lr.ph167.preheader, label %.loopexit

.lr.ph167.preheader:                              ; preds = %bb.n
  %i.dl = zext nneg i32 %.0147170 to i64
  %i.dm = getelementptr inbounds nuw [6 x i8], ptr %i.ai, i64 %i.dl
  br label %.lr.ph167

.lr.ph167:                                        ; preds = %.lr.ph167.preheader, %.lr.ph167
  %.0166 = phi ptr [ %i.dq, %.lr.ph167 ], [ %i.dm, %.lr.ph167.preheader ] ; 2 uses
  %.1146164 = phi i32 [ %.sroa.speculated, %.lr.ph167 ], [ %.0145172, %.lr.ph167.preheader ]
  %i.dn = load i16, ptr %.0166, align 1, !tbaa !283
  %i.do = tail call noundef i16 @llvm.bswap.i16(i16 %i.dn)
  %i.dp = zext i16 %i.do to i32
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %.1146164, i32 %i.dp) ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.0166, i64 6 ; 2 uses
  %i.dr = icmp ult ptr %i.dq, %i.dj
  br i1 %i.dr, label %.lr.ph167, label %.loopexit, !llvm.loop !5719

bb.o:                                             ; preds = %.loopexit
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %.critedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 %.5150, ptr %2, align 4, !tbaa !324
end_hunk_4
