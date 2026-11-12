Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/harfbuzz?download=true
inline.NumInlined: 35466
inline.NumDeleted: 12449
loop-unroll.NumCompletelyUnrolled: 167
loop-unroll.NumRuntimeUnrolled: 271
loop-unroll.NumUnrolled: 468
begin_hunk_0_@_ZNK3AAT5ChainINS_13ExtendedTypesEE8sanitizeEP21hb_sanitize_context_tj:bb.a

bb.g:                                             ; preds = %_ZNK21hb_sanitize_context_t11check_arrayIN3AAT7FeatureEEEbPKT_j.exit
  %i.ao = zext i32 %i.ag to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ao ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ar = load i32, ptr %i.aq, align 1, !tbaa !276 ; 2 uses
  %i.as = tail call noundef i32 @llvm.bswap.i32(i32 %i.ar) ; 2 uses
  %.not32.not = icmp eq i32 %i.ar, 0
  br i1 %.not32.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %bb.k
  %.034 = phi i32 [ %i.bv, %bb.k ], [ 0, %bb.g ]
  %.01833 = phi ptr [ %i.bu, %bb.k ], [ %i.ap, %bb.g ] ; 6 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.01833, i64 4
  %i.au = load ptr, ptr %i.b, align 8, !tbaa !503
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = load i32, ptr %i.g, align 8, !tbaa !504
  %i.az = zext i32 %i.ay to i64
  %.not.i23 = icmp ugt i64 %i.ax, %i.az
  br i1 %.not.i23, label %_ZNK21hb_sanitize_context_t11check_rangeEPKvj.exit.thread, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !277
  %i.ba = load i32, ptr %.01833, align 1, !tbaa !276
  %i.bb = tail call noundef i32 @llvm.bswap.i32(i32 %i.ba) ; 3 uses
  %i.bc = icmp ugt i32 %i.bb, 11
  br i1 %i.bc, label %bb.i, label %_ZNK21hb_sanitize_context_t11check_rangeEPKvj.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.bd = load ptr, ptr %i.b, align 8, !tbaa !503
  %i.be = ptrtoint ptr %.01833 to i64             ; 2 uses
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = load i32, ptr %i.g, align 8, !tbaa !504
  %i.bi = zext i32 %i.bh to i64
  %.not.i.i = icmp ugt i64 %i.bg, %i.bi
  br i1 %.not.i.i, label %_ZNK21hb_sanitize_context_t11check_rangeEPKvj.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bj = load ptr, ptr %i.t, align 8, !tbaa !502
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = sub i64 %i.bk, %i.be
  %i.bm = trunc i64 %i.bl to i32
  %.not12.i.i = icmp ugt i32 %i.bb, %i.bm
  br i1 %.not12.i.i, label %_ZNK21hb_sanitize_context_t11check_rangeEPKvj.exit.thread, label %_ZNK21hb_sanitize_context_t11check_rangeEPKvj.exit.i

_ZNK21hb_sanitize_context_t11check_rangeEPKvj.exit.i: ; preds = %bb.j
  %i.bn = load i32, ptr %i.y, align 4, !tbaa !506
  %i.bo = sub i32 %i.bn, %i.bb                    ; 2 uses
  store i32 %i.bo, ptr %i.y, align 4, !tbaa !506
  %i.bp = icmp sgt i32 %i.bo, 0
  br i1 %i.bp, label %_ZNK3AAT13ChainSubtableINS_13ExtendedTypesEE8sanitizeEP21hb_sanitize_context_t.exit, label %_ZNK21hb_sanitize_context_t11check_rangeEPKvj.exit.thread

_ZNK3AAT13ChainSubtableINS_13ExtendedTypesEE8sanitizeEP21hb_sanitize_context_t.exit: ; preds = %_ZNK21hb_sanitize_context_t11check_rangeEPKvj.exit.i
  %i.bq = tail call noundef zeroext i1 @_ZNK3AAT13ChainSubtableINS_13ExtendedTypesEE8dispatchI21hb_sanitize_context_tJEEENT_8return_tEPS5_DpOT0_(ptr noundef nonnull align 1 dereferenceable(40) %.01833, ptr noundef nonnull %1)
  br i1 %i.bq, label %bb.k, label %_ZNK21hb_sanitize_context_t11check_rangeEPKvj.exit.thread

bb.k:                                             ; preds = %_ZNK3AAT13ChainSubtableINS_13ExtendedTypesEE8sanitizeEP21hb_sanitize_context_t.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !277
  %i.br = load i32, ptr %.01833, align 1, !tbaa !276
  %i.bs = tail call noundef i32 @llvm.bswap.i32(i32 %i.br)
  %i.bt = zext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %.01833, i64 %i.bt ; 2 uses
  %i.bv = add nuw i32 %.034, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.bv, %i.as
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !5444

._crit_edge:                                      ; preds = %bb.k, %bb.g
  %.018.lcssa = phi ptr [ %i.ap, %bb.g ], [ %i.bu, %bb.k ]
  %i.bw = icmp ugt i32 %2, 2
  br i1 %i.bw, label %bb.l, label %bb.m

bb.l:                                             ; preds = %._crit_edge
  %i.bx = tail call noundef zeroext i1 @_ZNK3AAT21SubtableGlyphCoverage8sanitizeEP21hb_sanitize_context_tj(ptr noundef nonnull align 1 dereferenceable(4) %.018.lcssa, ptr noundef nonnull %1, i32 noundef %i.as)
  br i1 %i.bx, label %bb.m, label %_ZNK21hb_sanitize_context_t11check_rangeEPKvj.exit.thread

bb.m:                                             ; preds = %bb.l, %._crit_edge
  br label %_ZNK21hb_sanitize_context_t11check_rangeEPKvj.exit.thread

_ZNK21hb_sanitize_context_t11check_rangeEPKvj.exit.thread: ; preds = %bb.i, %bb.j, %bb.h, %_ZNK21hb_sanitize_context_t11check_rangeEPKvj.exit.i, %.lr.ph, %_ZNK3AAT13ChainSubtableINS_13ExtendedTypesEE8sanitizeEP21hb_sanitize_context_t.exit, %bb.f, %bb.e, %bb.c, %bb.d, %_ZNK21hb_sanitize_context_t11check_arrayIN3AAT7FeatureEEEbPKT_j.exit, %bb.a, %bb.b, %_ZNK21hb_sanitize_context_t11check_rangeEPKvj.exit, %bb.m, %bb.l
  %.3 = phi i1 [ false, %bb.f ], [ false, %bb.a ], [ true, %bb.m ], [ false, %bb.l ], [ false, %_ZNK21hb_sanitize_context_t11check_arrayIN3AAT7FeatureEEEbPKT_j.exit ], [ false, %_ZNK21hb_sanitize_context_t11check_rangeEPKvj.exit ], [ false, %bb.b ], [ false, %bb.c ], [ false, %bb.d ], [ false, %bb.e ], [ false, %_ZNK3AAT13ChainSubtableINS_13ExtendedTypesEE8sanitizeEP21hb_sanitize_context_t.exit ], [ false, %.lr.ph ], [ false, %_ZNK21hb_sanitize_context_t11check_rangeEPKvj.exit.i ], [ false, %bb.h ], [ false, %bb.j ], [ false, %bb.i ]
  ret i1 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK3AAT21SubtableGlyphCoverage8sanitizeEP21hb_sanitize_context_tj(ptr noundef nonnull align 1 dereferenceable(4) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = shl nuw i32 %2, 2                        ; 2 uses
  %i.b = icmp ugt i32 %2, 1073741823
  br i1 %i.b, label %_ZNK21hb_sanitize_context_t11check_arrayIN2OT14UnsizedArrayOfINS1_8OffsetToINS2_INS1_7NumTypeILb1EhLj1EEEEENS4_ILb1EjLj4EEEvLb0EEEEEEEbPKT_j.exit.thread, label %bb.b, !prof !709

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !503  ; 2 uses
  %i.e = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !504  ; 2 uses
  %i.j = zext i32 %i.i to i64
  %.not.i.i.i = icmp ugt i64 %i.g, %i.j
  br i1 %.not.i.i.i, label %_ZNK21hb_sanitize_context_t11check_arrayIN2OT14UnsizedArrayOfINS1_8OffsetToINS2_INS1_7NumTypeILb1EhLj1EEEEENS4_ILb1EjLj4EEEvLb0EEEEEEEbPKT_j.exit.thread, label %bb.c, !prof !709

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !502
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = sub i64 %i.m, %i.e
  %i.o = trunc i64 %i.n to i32
  %.not12.i.i.i = icmp ugt i32 %i.a, %i.o
  br i1 %.not12.i.i.i, label %_ZNK21hb_sanitize_context_t11check_arrayIN2OT14UnsizedArrayOfINS1_8OffsetToINS2_INS1_7NumTypeILb1EhLj1EEEEENS4_ILb1EjLj4EEEvLb0EEEEEEEbPKT_j.exit.thread, label %_ZNK21hb_sanitize_context_t11check_arrayIN2OT14UnsizedArrayOfINS1_8OffsetToINS2_INS1_7NumTypeILb1EhLj1EEEEENS4_ILb1EjLj4EEEvLb0EEEEEEEbPKT_j.exit, !prof !709

_ZNK21hb_sanitize_context_t11check_arrayIN2OT14UnsizedArrayOfINS1_8OffsetToINS2_INS1_7NumTypeILb1EhLj1EEEEENS4_ILb1EjLj4EEEvLb0EEEEEEEbPKT_j.exit: ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 4 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !506
  %i.r = sub i32 %i.q, %i.a                       ; 2 uses
  store i32 %i.r, ptr %i.p, align 4, !tbaa !506
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %bb.d, label %_ZNK21hb_sanitize_context_t11check_arrayIN2OT14UnsizedArrayOfINS1_8OffsetToINS2_INS1_7NumTypeILb1EhLj1EEEEENS4_ILb1EjLj4EEEvLb0EEEEEEEbPKT_j.exit.thread, !prof !670

bb.d:                                             ; preds = %_ZNK21hb_sanitize_context_t11check_arrayIN2OT14UnsizedArrayOfINS1_8OffsetToINS2_INS1_7NumTypeILb1EhLj1EEEEENS4_ILb1EjLj4EEEvLb0EEEEEEEbPKT_j.exit
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.u = load i32, ptr %i.t, align 8, !tbaa !495
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
  %i.aa = load i32, ptr %i.z, align 1, !tbaa !276
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
  br i1 %.not.i.not, label %_ZNK21hb_sanitize_context_t11check_arrayIN2OT14UnsizedArrayOfINS1_8OffsetToINS2_INS1_7NumTypeILb1EhLj1EEEEENS4_ILb1EjLj4EEEvLb0EEEEEEEbPKT_j.exit.thread, label %bb.g, !prof !265

bb.g:                                             ; preds = %bb.f
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !277
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !277
  %i.ai = load i32, ptr %i.z, align 1, !tbaa !276
  %i.aj = tail call noundef i32 @llvm.bswap.i32(i32 %i.ai)
  %i.ak = zext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 %i.ak
  %i.am = load ptr, ptr %i.c, align 8, !tbaa !503 ; 2 uses
  %i.an = ptrtoint ptr %i.al to i64               ; 2 uses
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = load i32, ptr %i.h, align 8, !tbaa !504 ; 2 uses
  %i.ar = zext i32 %i.aq to i64
  %.not.i.i.i.i.i.i = icmp ugt i64 %i.ap, %i.ar
  br i1 %.not.i.i.i.i.i.i, label %_ZNK21hb_sanitize_context_t11check_arrayIN2OT14UnsizedArrayOfINS1_8OffsetToINS2_INS1_7NumTypeILb1EhLj1EEEEENS4_ILb1EjLj4EEEvLb0EEEEEEEbPKT_j.exit.thread, label %bb.h, !prof !709

bb.h:                                             ; preds = %bb.g
  %i.as = load ptr, ptr %i.k, align 8, !tbaa !502
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = sub i64 %i.at, %i.an
  %i.av = trunc i64 %i.au to i32
  %.not12.i.i.i.i.i.i = icmp ugt i32 %i.w, %i.av
  br i1 %.not12.i.i.i.i.i.i, label %_ZNK21hb_sanitize_context_t11check_arrayIN2OT14UnsizedArrayOfINS1_8OffsetToINS2_INS1_7NumTypeILb1EhLj1EEEEENS4_ILb1EjLj4EEEvLb0EEEEEEEbPKT_j.exit.thread, label %_ZNK2OT8OffsetToINS_14UnsizedArrayOfINS_7NumTypeILb1EhLj1EEEEENS2_ILb1EjLj4EEEvLb0EE8sanitizeIJRjEEEbP21hb_sanitize_context_tPKvDpOT_.exit, !prof !709

_ZNK2OT8OffsetToINS_14UnsizedArrayOfINS_7NumTypeILb1EhLj1EEEEENS2_ILb1EjLj4EEEvLb0EE8sanitizeIJRjEEEbP21hb_sanitize_context_tPKvDpOT_.exit: ; preds = %bb.h
  %i.aw = load i32, ptr %i.p, align 4, !tbaa !506
  %i.ax = sub i32 %i.aw, %i.w                     ; 2 uses
  store i32 %i.ax, ptr %i.p, align 4, !tbaa !506
  %i.ay = icmp sgt i32 %i.ax, 0
  br i1 %i.ay, label %bb.i, label %_ZNK21hb_sanitize_context_t11check_arrayIN2OT14UnsizedArrayOfINS1_8OffsetToINS2_INS1_7NumTypeILb1EhLj1EEEEENS4_ILb1EjLj4EEEvLb0EEEEEEEbPKT_j.exit.thread, !prof !670

bb.i:                                             ; preds = %bb.e, %_ZNK2OT8OffsetToINS_14UnsizedArrayOfINS_7NumTypeILb1EhLj1EEEEENS2_ILb1EjLj4EEEvLb0EE8sanitizeIJRjEEEbP21hb_sanitize_context_tPKvDpOT_.exit
  %i.az = phi i32 [ %i.x, %bb.e ], [ %i.aq, %_ZNK2OT8OffsetToINS_14UnsizedArrayOfINS_7NumTypeILb1EhLj1EEEEENS2_ILb1EjLj4EEEvLb0EE8sanitizeIJRjEEEbP21hb_sanitize_context_tPKvDpOT_.exit ]
  %i.ba = phi ptr [ %i.y, %bb.e ], [ %i.am, %_ZNK2OT8OffsetToINS_14UnsizedArrayOfINS_7NumTypeILb1EhLj1EEEEENS2_ILb1EjLj4EEEvLb0EE8sanitizeIJRjEEEbP21hb_sanitize_context_tPKvDpOT_.exit ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZNK21hb_sanitize_context_t11check_arrayIN2OT14UnsizedArrayOfINS1_8OffsetToINS2_INS1_7NumTypeILb1EhLj1EEEEENS4_ILb1EjLj4EEEvLb0EEEEEEEbPKT_j.exit.thread, label %bb.e, !llvm.loop !196

_ZNK21hb_sanitize_context_t11check_arrayIN2OT14UnsizedArrayOfINS1_8OffsetToINS2_INS1_7NumTypeILb1EhLj1EEEEENS4_ILb1EjLj4EEEvLb0EEEEEEEbPKT_j.exit.thread: ; preds = %bb.i, %_ZNK2OT8OffsetToINS_14UnsizedArrayOfINS_7NumTypeILb1EhLj1EEEEENS2_ILb1EjLj4EEEvLb0EE8sanitizeIJRjEEEbP21hb_sanitize_context_tPKvDpOT_.exit, %bb.f, %bb.g, %bb.h, %bb.d, %bb.b, %bb.c, %bb.a, %_ZNK21hb_sanitize_context_t11check_arrayIN2OT14UnsizedArrayOfINS1_8OffsetToINS2_INS1_7NumTypeILb1EhLj1EEEEENS4_ILb1EjLj4EEEvLb0EEEEEEEbPKT_j.exit
  %.4 = phi i1 [ false, %_ZNK21hb_sanitize_context_t11check_arrayIN2OT14UnsizedArrayOfINS1_8OffsetToINS2_INS1_7NumTypeILb1EhLj1EEEEENS4_ILb1EjLj4EEEvLb0EEEEEEEbPKT_j.exit ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.a ], [ true, %bb.d ], [ false, %bb.g ], [ false, %bb.f ], [ false, %_ZNK2OT8OffsetToINS_14UnsizedArrayOfINS_7NumTypeILb1EhLj1EEEEENS2_ILb1EjLj4EEEvLb0EE8sanitizeIJRjEEEbP21hb_sanitize_context_tPKvDpOT_.exit ], [ true, %bb.i ], [ false, %bb.h ]
  ret i1 %.4
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK3AAT13ChainSubtableINS_13ExtendedTypesEE8dispatchI21hb_sanitize_context_tJEEENT_8return_tEPS5_DpOT0_(ptr noundef nonnull align 1 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 7
  %trunc = load i8, ptr %i.a, align 1, !tbaa !276
  switch i8 %trunc, label %_ZN21hb_sanitize_context_t8dispatchIN3AAT16LigatureSubtableINS1_13ExtendedTypesEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 4, label %bb.i
    i8 5, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !277
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.c = tail call noundef zeroext i1 @_ZNK3AAT10StateTableINS_13ExtendedTypesEvE8sanitizeEP21hb_sanitize_context_tPj(ptr noundef nonnull align 1 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(62) %1, ptr noundef null)
  br label %_ZN21hb_sanitize_context_t8dispatchIN3AAT16LigatureSubtableINS1_13ExtendedTypesEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit

bb.c:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !277
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = tail call noundef zeroext i1 @_ZNK3AAT18ContextualSubtableINS_13ExtendedTypesEE8sanitizeEP21hb_sanitize_context_t(ptr noundef nonnull align 1 dereferenceable(20) %i.d, ptr noundef nonnull align 8 dereferenceable(62) %1)
  br label %_ZN21hb_sanitize_context_t8dispatchIN3AAT16LigatureSubtableINS1_13ExtendedTypesEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit

bb.d:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !277
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !503
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !504
  %i.n = zext i32 %i.m to i64
  %.not4.i.i.i = icmp ugt i64 %i.k, %i.n
  br i1 %.not4.i.i.i, label %_ZN21hb_sanitize_context_t8dispatchIN3AAT16LigatureSubtableINS1_13ExtendedTypesEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.p = tail call noundef zeroext i1 @_ZNK3AAT10StateTableINS_13ExtendedTypesENS_13LigatureEntryILb1EE9EntryDataEE8sanitizeEP21hb_sanitize_context_tPj(ptr noundef nonnull align 1 dereferenceable(28) %i.o, ptr noundef nonnull align 8 dereferenceable(62) %1, ptr noundef null)
  br i1 %i.p, label %bb.f, label %_ZN21hb_sanitize_context_t8dispatchIN3AAT16LigatureSubtableINS1_13ExtendedTypesEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit

bb.f:                                             ; preds = %bb.e
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !277
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.r = load i32, ptr %i.q, align 1, !tbaa !276
  %.not.i.i.i = icmp eq i32 %i.r, 0
  br i1 %.not.i.i.i, label %_ZN21hb_sanitize_context_t8dispatchIN3AAT16LigatureSubtableINS1_13ExtendedTypesEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = load i32, ptr %i.s, align 1, !tbaa !276
  %.not3.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not3.i.i.i, label %_ZN21hb_sanitize_context_t8dispatchIN3AAT16LigatureSubtableINS1_13ExtendedTypesEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.v = load i32, ptr %i.u, align 1, !tbaa !276
  %i.w = icmp ne i32 %i.v, 0
  br label %_ZN21hb_sanitize_context_t8dispatchIN3AAT16LigatureSubtableINS1_13ExtendedTypesEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit

bb.i:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !277
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.y = tail call noundef zeroext i1 @_ZNK3AAT6LookupIN2OT11HBGlyphID16EE8sanitizeEP21hb_sanitize_context_t(ptr noundef nonnull align 1 dereferenceable(13) %i.x, ptr noundef nonnull align 8 dereferenceable(62) %1)
  br label %_ZN21hb_sanitize_context_t8dispatchIN3AAT16LigatureSubtableINS1_13ExtendedTypesEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit

bb.j:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !277
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !503
  %i.ac = ptrtoint ptr %i.z to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !504
  %i.ah = zext i32 %i.ag to i64
  %.not.i.i.i7 = icmp ugt i64 %i.ae, %i.ah
  br i1 %.not.i.i.i7, label %_ZN21hb_sanitize_context_t8dispatchIN3AAT16LigatureSubtableINS1_13ExtendedTypesEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.aj = tail call noundef zeroext i1 @_ZNK3AAT10StateTableINS_13ExtendedTypesENS_17InsertionSubtableIS1_E9EntryDataEE8sanitizeEP21hb_sanitize_context_tPj(ptr noundef nonnull align 1 dereferenceable(20) %i.ai, ptr noundef nonnull align 8 dereferenceable(62) %1, ptr noundef null)
  br i1 %i.aj, label %bb.l, label %_ZN21hb_sanitize_context_t8dispatchIN3AAT16LigatureSubtableINS1_13ExtendedTypesEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit

bb.l:                                             ; preds = %bb.k
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !277
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.al = load i32, ptr %i.ak, align 1, !tbaa !276
  %i.am = icmp ne i32 %i.al, 0
  br label %_ZN21hb_sanitize_context_t8dispatchIN3AAT16LigatureSubtableINS1_13ExtendedTypesEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit

_ZN21hb_sanitize_context_t8dispatchIN3AAT16LigatureSubtableINS1_13ExtendedTypesEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit: ; preds = %bb.l, %bb.k, %bb.j, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.a, %bb.i, %bb.c, %bb.b
  %.0 = phi i1 [ false, %bb.d ], [ %i.c, %bb.b ], [ %i.e, %bb.c ], [ true, %bb.a ], [ %i.y, %bb.i ], [ false, %bb.g ], [ false, %bb.f ], [ %i.w, %bb.h ], [ false, %bb.e ], [ %i.am, %bb.l ], [ false, %bb.k ], [ false, %bb.j ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK3AAT10StateTableINS_13ExtendedTypesEvE8sanitizeEP21hb_sanitize_context_tPj(ptr noundef nonnull align 1 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !503
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !504
  %i.j = zext i32 %i.i to i64
  %.not154 = icmp ugt i64 %i.g, %i.j
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br i1 %.not154, label %.critedge, label %bb.b, !prof !265

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !277
  %i.l = load i32, ptr %0, align 1, !tbaa !276
  %i.m = tail call noundef i32 @llvm.bswap.i32(i32 %i.l)
  %i.n = icmp ugt i32 %i.m, 3
  br i1 %i.n, label %bb.c, label %.critedge, !prof !266

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !503
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = load i32, ptr %i.h, align 8, !tbaa !504
  %i.u = zext i32 %i.t to i64
  %.not.i.not = icmp ugt i64 %i.s, %i.u
  br i1 %.not.i.not, label %.critedge, label %_ZNK2OT8OffsetToIN3AAT6LookupINS_7NumTypeILb1EtLj2EEEEENS3_ILb1EjLj4EEEvLb0EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit, !prof !265

_ZNK2OT8OffsetToIN3AAT6LookupINS_7NumTypeILb1EtLj2EEEEENS3_ILb1EjLj4EEEvLb0EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit: ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !277
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !277
  %i.w = load i32, ptr %i.v, align 1, !tbaa !276
  %i.x = tail call noundef i32 @llvm.bswap.i32(i32 %i.w)
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %i.y
  %i.aa = tail call noundef zeroext i1 @_ZNK3AAT6LookupIN2OT7NumTypeILb1EtLj2EEEE8sanitizeEP21hb_sanitize_context_t(ptr noundef nonnull align 1 dereferenceable(13) %i.z, ptr noundef nonnull align 8 dereferenceable(62) %1)
  br i1 %i.aa, label %bb.d, label %.critedge, !prof !670

bb.d:                                             ; preds = %_ZNK2OT8OffsetToIN3AAT6LookupINS_7NumTypeILb1EtLj2EEEEENS3_ILb1EjLj4EEEvLb0EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit
  %i.ab = load i32, ptr %i.o, align 1, !tbaa !276
  %i.ac = tail call noundef i32 @llvm.bswap.i32(i32 %i.ab)
  %i.ad = zext i32 %i.ac to i64                   ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %i.ad ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ag = load i32, ptr %i.af, align 1, !tbaa !276
  %i.ah = tail call noundef i32 @llvm.bswap.i32(i32 %i.ag)
  %i.ai = zext i32 %i.ah to i64                   ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %i.ai ; 3 uses
  %i.ak = load i32, ptr %0, align 1, !tbaa !276
  %i.al = tail call noundef i32 @llvm.bswap.i32(i32 %i.ak) ; 5 uses
  %i.am = icmp slt i32 %i.al, 0
  br i1 %i.am, label %.critedge, label %bb.e, !prof !265

bb.e:                                             ; preds = %bb.d
  %i.an = shl nuw i32 %i.al, 1
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 6 uses
  %i.ap = ptrtoint ptr %i.ae to i64               ; 2 uses
  %i.aq = ptrtoint ptr %i.aj to i64               ; 2 uses
  %invariant.op = add i64 %i.a, %i.ad
  %invariant.op215 = add i64 %invariant.op, 2
  %invariant.op217 = add i64 %i.a, %i.ad
  %i.ar = xor i64 %i.a, -1
  %invariant.op218 = add i64 %i.a, %i.ai
  %invariant.op220 = add i64 %invariant.op218, 4
  %invariant.op222 = add i64 %i.a, %i.ai
  %i.as = xor i64 %i.a, -1
  br label %.loopexit156

.loopexit:                                        ; preds = %.lr.ph167, %bb.n
  %.1146.lcssa = phi i32 [ %.0145172, %bb.n ], [ %.sroa.speculated, %.lr.ph167 ] ; 2 uses
  %.not183 = icmp sgt i32 %.264, %.1146.lcssa
  br i1 %.not183, label %bb.o, label %.loopexit156, !llvm.loop !5445

.loopexit156:                                     ; preds = %.loopexit, %bb.e
  %.062174 = phi i32 [ 0, %bb.e ], [ %.264, %.loopexit ] ; 4 uses
  %.0145172 = phi i32 [ 0, %bb.e ], [ %.1146.lcssa, %.loopexit ] ; 6 uses
  %.0147170 = phi i32 [ 0, %bb.e ], [ %.5150, %.loopexit ] ; 7 uses
  %.not78 = icmp sgt i32 %.062174, %.0145172
  br i1 %.not78, label %.loopexit184, label %bb.f

bb.f:                                             ; preds = %.loopexit156
  %i.at = add nuw nsw i32 %.0145172, 1            ; 6 uses
  %i.au = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.at, i32 %i.an) ; 2 uses
  %i.av = extractvalue { i32, i1 } %i.au, 0       ; 2 uses
  %i.aw = extractvalue { i32, i1 } %i.au, 1
  br i1 %i.aw, label %.critedge, label %bb.g, !prof !709

bb.g:                                             ; preds = %bb.f
  %i.ax = load ptr, ptr %i.c, align 8, !tbaa !503
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = sub i64 %i.ap, %i.ay
  %i.ba = load i32, ptr %i.h, align 8, !tbaa !504
  %i.bb = zext i32 %i.ba to i64
  %.not.i.i83 = icmp ugt i64 %i.az, %i.bb
  br i1 %.not.i.i83, label %.critedge, label %bb.h, !prof !709

bb.h:                                             ; preds = %bb.g
end_hunk_0
begin_hunk_1_@_ZN21hb_sanitize_context_t13sanitize_blobIN3AAT4mortEEEP9hb_blob_tS4_:bb.a
  br i1 %.not6.i.i.i, label %bb.t, label %hb_blob_make_immutable.exit

bb.t:                                             ; preds = %_ZL24hb_object_should_destroyI9hb_blob_tEbPT_.exit.i.i
  store atomic i32 -57005, ptr %1 monotonic, align 4
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bs = load atomic ptr, ptr %i.br acquire, align 8 ; 5 uses
  %.not.i.i3.i.i = icmp eq ptr %i.bs, null
  br i1 %.not.i.i3.i.i, label %_ZL14hb_object_finiI9hb_blob_tEvPT_.exit.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 40
  tail call void @_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4finiERS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, ptr noundef nonnull align 8 dereferenceable(56) %i.bs)
  %i.bu = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(56) %i.bs) #59 ; 0 uses
  tail call void @free(ptr noundef nonnull %i.bs) #59
  store atomic ptr null, ptr %i.br monotonic, align 8
  br label %_ZL14hb_object_finiI9hb_blob_tEvPT_.exit.i.i.i

_ZL14hb_object_finiI9hb_blob_tEvPT_.exit.i.i.i:   ; preds = %bb.u, %bb.t
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !507 ; 2 uses
  %.not.i.i.i.i.i11 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i.i.i11, label %_ZL17hb_object_destroyI9hb_blob_tEbPT_.exit.i, label %bb.v

bb.v:                                             ; preds = %_ZL14hb_object_finiI9hb_blob_tEvPT_.exit.i.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !508
  tail call void %i.bw(ptr noundef %i.by) #59, !inline_history !9
  br label %_ZL17hb_object_destroyI9hb_blob_tEbPT_.exit.i

_ZL17hb_object_destroyI9hb_blob_tEbPT_.exit.i:    ; preds = %bb.v, %_ZL14hb_object_finiI9hb_blob_tEvPT_.exit.i.i.i
  tail call void @free(ptr noundef nonnull %1) #59
  br label %hb_blob_make_immutable.exit

hb_blob_make_immutable.exit:                      ; preds = %_ZL17hb_object_destroyI9hb_blob_tEbPT_.exit.i, %_ZL24hb_object_should_destroyI9hb_blob_tEbPT_.exit.i.i, %bb.s, %bb.r, %bb.q, %bb.p, %bb.f
  %.1 = phi ptr [ %1, %bb.f ], [ %1, %bb.q ], [ %1, %bb.p ], [ @_hb_NullPool, %bb.r ], [ @_hb_NullPool, %bb.s ], [ @_hb_NullPool, %_ZL24hb_object_should_destroyI9hb_blob_tEbPT_.exit.i.i ], [ @_hb_NullPool, %_ZL17hb_object_destroyI9hb_blob_tEbPT_.exit.i ]
  ret ptr %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK3AAT5ChainINS_13ObsoleteTypesEE8sanitizeEP21hb_sanitize_context_tj(ptr noundef nonnull align 1 dereferenceable(24) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !503
  %i.d = ptrtoint ptr %i.a to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !504
  %i.i = zext i32 %i.h to i64
  %.not30 = icmp ugt i64 %i.f, %i.i
  br i1 %.not30, label %_ZNK21hb_sanitize_context_t11check_rangeEPKvj.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !277
  %i.k = load i32, ptr %i.j, align 1, !tbaa !276
  %i.l = tail call noundef i32 @llvm.bswap.i32(i32 %i.k) ; 3 uses
  %i.m = icmp ugt i32 %i.l, 11
  br i1 %i.m, label %bb.c, label %_ZNK21hb_sanitize_context_t11check_rangeEPKvj.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !503
  %i.o = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.q = sub i64 %i.o, %i.p
  %i.r = load i32, ptr %i.g, align 8, !tbaa !504
  %i.s = zext i32 %i.r to i64                     ; 2 uses
  %.not.i = icmp ugt i64 %i.q, %i.s
  br i1 %.not.i, label %_ZNK21hb_sanitize_context_t11check_rangeEPKvj.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !502
  %i.v = ptrtoint ptr %i.u to i64                 ; 2 uses
  %i.w = sub i64 %i.v, %i.o
  %i.x = trunc i64 %i.w to i32
  %.not12.i = icmp ugt i32 %i.l, %i.x
  br i1 %.not12.i, label %_ZNK21hb_sanitize_context_t11check_rangeEPKvj.exit.thread, label %_ZNK21hb_sanitize_context_t11check_rangeEPKvj.exit

_ZNK21hb_sanitize_context_t11check_rangeEPKvj.exit: ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 5 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !506
  %i.aa = sub i32 %i.z, %i.l                      ; 3 uses
  store i32 %i.aa, ptr %i.y, align 4, !tbaa !506
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %bb.e, label %_ZNK21hb_sanitize_context_t11check_rangeEPKvj.exit.thread

bb.e:                                             ; preds = %_ZNK21hb_sanitize_context_t11check_rangeEPKvj.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.ad = load i16, ptr %i.a, align 1, !tbaa !281
  %i.ae = tail call noundef i16 @llvm.bswap.i16(i16 %i.ad)
  %i.af = zext i16 %i.ae to i32
  %i.ag = mul nuw nsw i32 %i.af, 12               ; 3 uses
  %i.ah = ptrtoint ptr %i.ac to i64               ; 2 uses
  %i.ai = sub i64 %i.ah, %i.p
  %.not.i.i.i = icmp ugt i64 %i.ai, %i.s
  %i.aj = sub i64 %i.v, %i.ah
  %i.ak = trunc i64 %i.aj to i32
  %.not12.i.i.i = icmp ugt i32 %i.ag, %i.ak
  %or.cond = select i1 %.not.i.i.i, i1 true, i1 %.not12.i.i.i
  br i1 %or.cond, label %_ZNK21hb_sanitize_context_t11check_rangeEPKvj.exit.thread, label %_ZNK21hb_sanitize_context_t11check_arrayIN3AAT7FeatureEEEbPKT_j.exit

_ZNK21hb_sanitize_context_t11check_arrayIN3AAT7FeatureEEEbPKT_j.exit: ; preds = %bb.e
  %i.al = sub nsw i32 %i.aa, %i.ag                ; 2 uses
  store i32 %i.al, ptr %i.y, align 4, !tbaa !506
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %bb.f, label %_ZNK21hb_sanitize_context_t11check_rangeEPKvj.exit.thread

bb.f:                                             ; preds = %_ZNK21hb_sanitize_context_t11check_arrayIN3AAT7FeatureEEEbPKT_j.exit
  %i.an = zext nneg i32 %i.ag to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.an ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.aq = load i16, ptr %i.ap, align 1, !tbaa !281 ; 2 uses
  %i.ar = tail call noundef i16 @llvm.bswap.i16(i16 %i.aq)
  %i.as = zext i16 %i.ar to i32                   ; 2 uses
  %.not32.not = icmp eq i16 %i.aq, 0
  br i1 %.not32.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %bb.j
  %.034 = phi i32 [ %i.bw, %bb.j ], [ 0, %bb.f ]
  %.01833 = phi ptr [ %i.bv, %bb.j ], [ %i.ao, %bb.f ] ; 6 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.01833, i64 2
  %i.au = load ptr, ptr %i.b, align 8, !tbaa !503
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = load i32, ptr %i.g, align 8, !tbaa !504
  %i.az = zext i32 %i.ay to i64
  %.not.i23 = icmp ugt i64 %i.ax, %i.az
  br i1 %.not.i23, label %_ZNK21hb_sanitize_context_t11check_rangeEPKvj.exit.thread, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !277
  %i.ba = load i16, ptr %.01833, align 1, !tbaa !281
  %i.bb = tail call noundef i16 @llvm.bswap.i16(i16 %i.ba) ; 2 uses
  %i.bc = zext i16 %i.bb to i32                   ; 2 uses
  %i.bd = icmp ugt i16 %i.bb, 7
  br i1 %i.bd, label %bb.h, label %_ZNK21hb_sanitize_context_t11check_rangeEPKvj.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.be = load ptr, ptr %i.b, align 8, !tbaa !503
  %i.bf = ptrtoint ptr %.01833 to i64             ; 2 uses
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = load i32, ptr %i.g, align 8, !tbaa !504
  %i.bj = zext i32 %i.bi to i64
  %.not.i.i = icmp ugt i64 %i.bh, %i.bj
  br i1 %.not.i.i, label %_ZNK21hb_sanitize_context_t11check_rangeEPKvj.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bk = load ptr, ptr %i.t, align 8, !tbaa !502
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = sub i64 %i.bl, %i.bf
  %i.bn = trunc i64 %i.bm to i32
  %.not12.i.i = icmp ugt i32 %i.bc, %i.bn
  br i1 %.not12.i.i, label %_ZNK21hb_sanitize_context_t11check_rangeEPKvj.exit.thread, label %_ZNK21hb_sanitize_context_t11check_rangeEPKvj.exit.i

_ZNK21hb_sanitize_context_t11check_rangeEPKvj.exit.i: ; preds = %bb.i
  %i.bo = load i32, ptr %i.y, align 4, !tbaa !506
  %i.bp = sub i32 %i.bo, %i.bc                    ; 2 uses
  store i32 %i.bp, ptr %i.y, align 4, !tbaa !506
  %i.bq = icmp sgt i32 %i.bp, 0
  br i1 %i.bq, label %_ZNK3AAT13ChainSubtableINS_13ObsoleteTypesEE8sanitizeEP21hb_sanitize_context_t.exit, label %_ZNK21hb_sanitize_context_t11check_rangeEPKvj.exit.thread

_ZNK3AAT13ChainSubtableINS_13ObsoleteTypesEE8sanitizeEP21hb_sanitize_context_t.exit: ; preds = %_ZNK21hb_sanitize_context_t11check_rangeEPKvj.exit.i
  %i.br = tail call noundef zeroext i1 @_ZNK3AAT13ChainSubtableINS_13ObsoleteTypesEE8dispatchI21hb_sanitize_context_tJEEENT_8return_tEPS5_DpOT0_(ptr noundef nonnull align 1 dereferenceable(22) %.01833, ptr noundef nonnull %1)
  br i1 %i.br, label %bb.j, label %_ZNK21hb_sanitize_context_t11check_rangeEPKvj.exit.thread

bb.j:                                             ; preds = %_ZNK3AAT13ChainSubtableINS_13ObsoleteTypesEE8sanitizeEP21hb_sanitize_context_t.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !277
  %i.bs = load i16, ptr %.01833, align 1, !tbaa !281
  %i.bt = tail call noundef i16 @llvm.bswap.i16(i16 %i.bs)
  %i.bu = zext i16 %i.bt to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %.01833, i64 %i.bu ; 2 uses
  %i.bw = add nuw nsw i32 %.034, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.bw, %i.as
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !5488

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
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 3
  %trunc = load i8, ptr %i.b, align 1, !tbaa !281
  switch i8 %trunc, label %_ZN21hb_sanitize_context_t8dispatchIN3AAT16LigatureSubtableINS1_13ObsoleteTypesEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.g
    i8 4, label %bb.l
    i8 5, label %bb.m
  ]

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !277
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = tail call noundef zeroext i1 @_ZNK3AAT10StateTableINS_13ObsoleteTypesEvE8sanitizeEP21hb_sanitize_context_tPj(ptr noundef nonnull align 1 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(62) %1, ptr noundef null)
  br label %_ZN21hb_sanitize_context_t8dispatchIN3AAT16LigatureSubtableINS1_13ObsoleteTypesEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit

bb.c:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !277
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  store i32 0, ptr %i.a, align 4, !tbaa !322
  %i.f = call noundef zeroext i1 @_ZNK3AAT10StateTableINS_13ObsoleteTypesENS_18ContextualSubtableIS1_E9EntryDataEE8sanitizeEP21hb_sanitize_context_tPj(ptr noundef nonnull align 1 dereferenceable(10) %i.e, ptr noundef nonnull align 8 dereferenceable(62) %1, ptr noundef nonnull %i.a)
  br i1 %i.f, label %bb.d, label %_ZN21hb_sanitize_context_t8dispatchIN3AAT18ContextualSubtableINS1_13ObsoleteTypesEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit, !prof !266

bb.d:                                             ; preds = %bb.c
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !277
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !503
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !504
  %i.o = zext i32 %i.n to i64
  %.not.i.not.i.i.i = icmp ugt i64 %i.l, %i.o
  br i1 %.not.i.not.i.i.i, label %_ZN21hb_sanitize_context_t8dispatchIN3AAT18ContextualSubtableINS1_13ObsoleteTypesEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit, label %bb.e, !prof !265

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !277
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !277
  %i.q = load i16, ptr %i.p, align 1, !tbaa !281
  %i.r = call noundef i16 @llvm.bswap.i16(i16 %i.q)
  %i.s = zext i16 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.s
  %i.u = load ptr, ptr %i.h, align 8, !tbaa !503
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = load i32, ptr %i.m, align 8, !tbaa !504
  %i.z = zext i32 %i.y to i64
  %.not.i.i.i.i.i.i.i.i.i.i = icmp ugt i64 %i.x, %i.z
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN21hb_sanitize_context_t8dispatchIN3AAT18ContextualSubtableINS1_13ObsoleteTypesEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit, label %_ZNK2OT14UnsizedArrayOfINS_8OffsetToIN3AAT6LookupINS_11HBGlyphID16EEENS_7NumTypeILb1EtLj2EEEvLb0EEEE16sanitize_shallowEP21hb_sanitize_context_tj.exit.i.i.i.i.i.i, !prof !709

_ZNK2OT14UnsizedArrayOfINS_8OffsetToIN3AAT6LookupINS_11HBGlyphID16EEENS_7NumTypeILb1EtLj2EEEvLb0EEEE16sanitize_shallowEP21hb_sanitize_context_tj.exit.i.i.i.i.i.i: ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !506
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %bb.f, label %_ZN21hb_sanitize_context_t8dispatchIN3AAT18ContextualSubtableINS1_13ObsoleteTypesEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit, !prof !670

bb.f:                                             ; preds = %_ZNK2OT14UnsizedArrayOfINS_8OffsetToIN3AAT6LookupINS_11HBGlyphID16EEENS_7NumTypeILb1EtLj2EEEvLb0EEEE16sanitize_shallowEP21hb_sanitize_context_tj.exit.i.i.i.i.i.i
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !277
  br label %_ZN21hb_sanitize_context_t8dispatchIN3AAT18ContextualSubtableINS1_13ObsoleteTypesEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit

_ZN21hb_sanitize_context_t8dispatchIN3AAT18ContextualSubtableINS1_13ObsoleteTypesEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit: ; preds = %bb.c, %bb.d, %bb.e, %_ZNK2OT14UnsizedArrayOfINS_8OffsetToIN3AAT6LookupINS_11HBGlyphID16EEENS_7NumTypeILb1EtLj2EEEvLb0EEEE16sanitize_shallowEP21hb_sanitize_context_tj.exit.i.i.i.i.i.i, %bb.f
  %.0.i.i.i = phi i1 [ false, %bb.c ], [ false, %bb.d ], [ false, %bb.e ], [ false, %_ZNK2OT14UnsizedArrayOfINS_8OffsetToIN3AAT6LookupINS_11HBGlyphID16EEENS_7NumTypeILb1EtLj2EEEvLb0EEEE16sanitize_shallowEP21hb_sanitize_context_tj.exit.i.i.i.i.i.i ], [ true, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  br label %_ZN21hb_sanitize_context_t8dispatchIN3AAT16LigatureSubtableINS1_13ObsoleteTypesEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit

bb.g:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !277
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !503
  %i.ag = ptrtoint ptr %i.ad to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !504
  %i.al = zext i32 %i.ak to i64
  %.not4.i.i.i = icmp ugt i64 %i.ai, %i.al
  br i1 %.not4.i.i.i, label %_ZN21hb_sanitize_context_t8dispatchIN3AAT16LigatureSubtableINS1_13ObsoleteTypesEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = tail call noundef zeroext i1 @_ZNK3AAT10StateTableINS_13ObsoleteTypesEvE8sanitizeEP21hb_sanitize_context_tPj(ptr noundef nonnull align 1 dereferenceable(14) %i.am, ptr noundef nonnull align 8 dereferenceable(62) %1, ptr noundef null)
  br i1 %i.an, label %bb.i, label %_ZN21hb_sanitize_context_t8dispatchIN3AAT16LigatureSubtableINS1_13ObsoleteTypesEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit

bb.i:                                             ; preds = %bb.h
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !277
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ap = load i16, ptr %i.ao, align 1, !tbaa !281
  %.not.i.i.i = icmp eq i16 %i.ap, 0
  br i1 %.not.i.i.i, label %_ZN21hb_sanitize_context_t8dispatchIN3AAT16LigatureSubtableINS1_13ObsoleteTypesEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.ar = load i16, ptr %i.aq, align 1, !tbaa !281
  %.not3.i.i.i = icmp eq i16 %i.ar, 0
  br i1 %.not3.i.i.i, label %_ZN21hb_sanitize_context_t8dispatchIN3AAT16LigatureSubtableINS1_13ObsoleteTypesEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.at = load i16, ptr %i.as, align 1, !tbaa !281
  %i.au = icmp ne i16 %i.at, 0
  br label %_ZN21hb_sanitize_context_t8dispatchIN3AAT16LigatureSubtableINS1_13ObsoleteTypesEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit

bb.l:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !277
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aw = tail call noundef zeroext i1 @_ZNK3AAT6LookupIN2OT11HBGlyphID16EE8sanitizeEP21hb_sanitize_context_t(ptr noundef nonnull align 1 dereferenceable(13) %i.av, ptr noundef nonnull align 8 dereferenceable(62) %1)
  br label %_ZN21hb_sanitize_context_t8dispatchIN3AAT16LigatureSubtableINS1_13ObsoleteTypesEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit

bb.m:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !277
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !503
  %i.ba = ptrtoint ptr %i.ax to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !504
  %i.bf = zext i32 %i.be to i64
  %.not.i.i.i7 = icmp ugt i64 %i.bc, %i.bf
  br i1 %.not.i.i.i7, label %_ZN21hb_sanitize_context_t8dispatchIN3AAT16LigatureSubtableINS1_13ObsoleteTypesEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bh = tail call noundef zeroext i1 @_ZNK3AAT10StateTableINS_13ObsoleteTypesENS_17InsertionSubtableIS1_E9EntryDataEE8sanitizeEP21hb_sanitize_context_tPj(ptr noundef nonnull align 1 dereferenceable(10) %i.bg, ptr noundef nonnull align 8 dereferenceable(62) %1, ptr noundef null)
  br i1 %i.bh, label %bb.o, label %_ZN21hb_sanitize_context_t8dispatchIN3AAT16LigatureSubtableINS1_13ObsoleteTypesEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit

bb.o:                                             ; preds = %bb.n
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !277
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bj = load i16, ptr %i.bi, align 1, !tbaa !281
  %i.bk = icmp ne i16 %i.bj, 0
  br label %_ZN21hb_sanitize_context_t8dispatchIN3AAT16LigatureSubtableINS1_13ObsoleteTypesEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit

_ZN21hb_sanitize_context_t8dispatchIN3AAT16LigatureSubtableINS1_13ObsoleteTypesEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit: ; preds = %bb.o, %bb.n, %bb.m, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.a, %bb.l, %_ZN21hb_sanitize_context_t8dispatchIN3AAT18ContextualSubtableINS1_13ObsoleteTypesEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit, %bb.b
  %.0 = phi i1 [ false, %bb.g ], [ %i.d, %bb.b ], [ %.0.i.i.i, %_ZN21hb_sanitize_context_t8dispatchIN3AAT18ContextualSubtableINS1_13ObsoleteTypesEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit ], [ true, %bb.a ], [ %i.aw, %bb.l ], [ false, %bb.j ], [ false, %bb.i ], [ %i.au, %bb.k ], [ false, %bb.h ], [ %i.bk, %bb.o ], [ false, %bb.n ], [ false, %bb.m ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK3AAT10StateTableINS_13ObsoleteTypesEvE8sanitizeEP21hb_sanitize_context_tPj(ptr noundef nonnull align 1 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !503
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !504
  %i.j = zext i32 %i.i to i64
  %.not155 = icmp ugt i64 %i.g, %i.j
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  br i1 %.not155, label %.critedge, label %bb.b, !prof !265

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !277
  %i.l = load i16, ptr %0, align 1, !tbaa !281
  %i.m = tail call noundef i16 @llvm.bswap.i16(i16 %i.l)
  %i.n = icmp ugt i16 %i.m, 3
  br i1 %i.n, label %bb.c, label %.critedge, !prof !266

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !503
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = load i32, ptr %i.h, align 8, !tbaa !504
  %i.u = zext i32 %i.t to i64
  %.not.i.not = icmp ugt i64 %i.s, %i.u
  br i1 %.not.i.not, label %.critedge, label %bb.d, !prof !265

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 2
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !277
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !277
  %i.w = load i16, ptr %i.v, align 1, !tbaa !281
  %i.x = tail call noundef i16 @llvm.bswap.i16(i16 %i.w)
  %i.y = zext i16 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %i.y ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ab = load ptr, ptr %i.c, align 8, !tbaa !503
  %i.ac = ptrtoint ptr %i.aa to i64               ; 3 uses
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = load i32, ptr %i.h, align 8, !tbaa !504
  %i.ag = zext i32 %i.af to i64
  %.not.i.i.i = icmp ugt i64 %i.ae, %i.ag
  br i1 %.not.i.i.i, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 2
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !277
  %i.ai = load i16, ptr %i.ah, align 1, !tbaa !281
end_hunk_1
begin_hunk_2_@_ZNK3AAT5ChainINS_13ExtendedTypesEE5applyEPNS_22hb_aat_apply_context_tEPKNS_33hb_aat_layout_chain_accelerator_tE:bb.a
.lr.ph.preheader.i6.i.i.i:                        ; preds = %bb.n
  %i.eo = lshr i32 %.sroa.speculated.i5.i.i.i, 1
  %zext1.i.i = zext nneg i32 %i.eo to i64
  br label %.lr.ph.i8.i.i.i

.lr.ph.i8.i.i.i:                                  ; preds = %.lr.ph.i8.i.i.i, %.lr.ph.preheader.i6.i.i.i
  %indvars.iv.i9.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i6.i.i.i ], [ %indvars.iv.next.i12.i.i.i, %.lr.ph.i8.i.i.i ] ; 2 uses
  %.0.in17.i10.i.i.i = phi i32 [ %.sroa.speculated.i5.i.i.i, %.lr.ph.preheader.i6.i.i.i ], [ %.0.i11.i.i.i, %.lr.ph.i8.i.i.i ]
  %.0.i11.i.i.i = add i32 %.0.in17.i10.i.i.i, -1  ; 2 uses
  %i.ep = zext i32 %.0.i11.i.i.i to i64
  %i.eq = getelementptr inbounds nuw [20 x i8], ptr %i.el, i64 %i.ep ; 2 uses
  %i.er = getelementptr inbounds nuw [20 x i8], ptr %i.el, i64 %indvars.iv.i9.i.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %5, ptr noundef nonnull align 4 dereferenceable(20) %i.eq, i64 20, i1 false), !tbaa.struct !610
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.eq, ptr noundef nonnull align 4 dereferenceable(20) %i.er, i64 20, i1 false), !tbaa.struct !610
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.er, ptr noundef nonnull align 4 dereferenceable(20) %5, i64 20, i1 false), !tbaa.struct !610
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %indvars.iv.next.i12.i.i.i = add nuw nsw i64 %indvars.iv.i9.i.i.i, 1 ; 2 uses
  %i.es = icmp eq i64 %indvars.iv.next.i12.i.i.i, %zext1.i.i
  br i1 %i.es, label %_ZN3AAT22hb_aat_apply_context_t14reverse_bufferEv.exit, label %.lr.ph.i8.i.i.i, !llvm.loop !23

_ZN3AAT22hb_aat_apply_context_t14reverse_bufferEv.exit: ; preds = %.lr.ph.i8.i.i.i, %_ZN10hb_array_tI15hb_glyph_info_tE7reverseEjj.exit.i.i.i, %bb.n
  %i.et = load i8, ptr %i.u, align 4, !tbaa !1674, !range !378, !noundef !291
  %i.eu = xor i8 %i.et, 1
  store i8 %i.eu, ptr %i.u, align 4, !tbaa !1674
  br label %bb.o

bb.o:                                             ; preds = %_ZN3AAT22hb_aat_apply_context_t14reverse_bufferEv.exit, %bb.l
  %i.ev = tail call noundef zeroext i1 @_ZNK3AAT13ChainSubtableINS_13ExtendedTypesEE8dispatchINS_22hb_aat_apply_context_tEJEEENT_8return_tEPS5_DpOT0_(ptr noundef nonnull align 1 dereferenceable(40) %.04794, ptr noundef nonnull %1) ; 0 uses
  %i.ew = load ptr, ptr %i.l, align 8, !tbaa !492
  %i.ex = load ptr, ptr %i.s, align 8, !tbaa !490
  %i.ey = load i32, ptr %i.t, align 8, !tbaa !591
  %i.ez = tail call noundef zeroext i1 (ptr, ptr, ptr, ...) @_ZN11hb_buffer_t7messageEP9hb_font_tPKcz(ptr noundef nonnull align 8 dereferenceable(276) %i.ew, ptr noundef %i.ex, ptr noundef nonnull @.str.369, i32 noundef %i.ey) ; 0 uses
  %i.fa = load ptr, ptr %i.l, align 8, !tbaa !492
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 88
  %i.fc = load i8, ptr %i.fb, align 8, !tbaa !584, !range !378, !noundef !291
  %i.fd = trunc nuw i8 %i.fc to i1
  br i1 %i.fd, label %"_ZNK4$_54clI13hb_map_iter_tI17hb_sorted_array_tIKN12hb_aat_map_t13range_flags_tEEZNK3AAT5ChainINS7_13ExtendedTypesEE5applyEPNS7_22hb_aat_apply_context_tEPKNS7_33hb_aat_layout_chain_accelerator_tEEUlS4_E_L24hb_function_sortedness_t0ELPv0EERK3$_8SM_TnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELSI_0EEEbOSO_OT0_OT1_.exit.thread", label %.critedge, !prof !266

"_ZNK4$_54clI13hb_map_iter_tI17hb_sorted_array_tIKN12hb_aat_map_t13range_flags_tEEZNK3AAT5ChainINS7_13ExtendedTypesEE5applyEPNS7_22hb_aat_apply_context_tEPKNS7_33hb_aat_layout_chain_accelerator_tEEUlS4_E_L24hb_function_sortedness_t0ELPv0EERK3$_8SM_TnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELSI_0EEEbOSO_OT0_OT1_.exit.thread": ; preds = %_ZNR9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIKN12hb_aat_map_t13range_flags_tEEZNK3AAT5ChainINS6_13ExtendedTypesEE5applyEPNS6_22hb_aat_apply_context_tEPKNS6_33hb_aat_layout_chain_accelerator_tEEUlS3_E_L24hb_function_sortedness_t0ELPv0EEbEppEv.exit.i, %.lr.ph.split, %bb.o, %bb.k, %bb.b, %_ZNK3AAT22hb_aat_apply_context_t25buffer_intersects_machineEv.exit.thread
  %i.fe = load i32, ptr %.04794, align 1, !tbaa !276
  %i.ff = tail call noundef i32 @llvm.bswap.i32(i32 %i.fe)
  %i.fg = zext i32 %i.ff to i64
  %i.fh = getelementptr inbounds nuw i8, ptr %.04794, i64 %i.fg
  %i.fi = load i32, ptr %i.t, align 8, !tbaa !591
  %i.fj = add i32 %i.fi, 1
  store i32 %i.fj, ptr %i.t, align 8, !tbaa !591
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %.lr.ph.split, !llvm.loop !5512

.critedge:                                        ; preds = %"_ZNK4$_54clI13hb_map_iter_tI17hb_sorted_array_tIKN12hb_aat_map_t13range_flags_tEEZNK3AAT5ChainINS7_13ExtendedTypesEE5applyEPNS7_22hb_aat_apply_context_tEPKNS7_33hb_aat_layout_chain_accelerator_tEEUlS4_E_L24hb_function_sortedness_t0ELPv0EERK3$_8SM_TnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELSI_0EEEbOSO_OT0_OT1_.exit.thread", %bb.o, %.lr.ph.split.us, %bb.a
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 140 ; 3 uses
  %i.fl = load i8, ptr %i.fk, align 4, !tbaa !1674, !range !378, !noundef !291
  %i.fm = trunc nuw i8 %i.fl to i1
  br i1 %i.fm, label %bb.p, label %bb.r

bb.p:                                             ; preds = %.critedge
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !492 ; 4 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 96 ; 2 uses
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !605 ; 4 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fo, i64 112
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !587 ; 2 uses
  %i.ft = icmp ult i32 %i.fq, 2
  br i1 %i.ft, label %_ZN10hb_array_tI15hb_glyph_info_tE7reverseEjj.exit.i.i.i69, label %.lr.ph.preheader.i.i.i.i62

.lr.ph.preheader.i.i.i.i62:                       ; preds = %bb.p
  %i.fu = lshr i32 %i.fq, 1
  %zext.i.i63 = zext nneg i32 %i.fu to i64
  br label %.lr.ph.i.i.i.i64

.lr.ph.i.i.i.i64:                                 ; preds = %.lr.ph.i.i.i.i64, %.lr.ph.preheader.i.i.i.i62
  %indvars.iv.i.i.i.i65 = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i62 ], [ %indvars.iv.next.i.i.i.i68, %.lr.ph.i.i.i.i64 ] ; 2 uses
  %.0.in17.i.i.i.i66 = phi i32 [ %i.fq, %.lr.ph.preheader.i.i.i.i62 ], [ %.0.i.i.i.i67, %.lr.ph.i.i.i.i64 ]
  %.0.i.i.i.i67 = add i32 %.0.in17.i.i.i.i66, -1  ; 2 uses
  %i.fv = zext i32 %.0.i.i.i.i67 to i64
  %i.fw = getelementptr inbounds nuw [20 x i8], ptr %i.fs, i64 %i.fv ; 2 uses
  %i.fx = getelementptr inbounds nuw [20 x i8], ptr %i.fs, i64 %indvars.iv.i.i.i.i65 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %4, ptr noundef nonnull align 4 dereferenceable(20) %i.fw, i64 20, i1 false), !tbaa.struct !608
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.fw, ptr noundef nonnull align 4 dereferenceable(20) %i.fx, i64 20, i1 false), !tbaa.struct !608
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.fx, ptr noundef nonnull align 4 dereferenceable(20) %4, i64 20, i1 false), !tbaa.struct !608
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %indvars.iv.next.i.i.i.i68 = add nuw nsw i64 %indvars.iv.i.i.i.i65, 1 ; 2 uses
  %i.fy = icmp eq i64 %indvars.iv.next.i.i.i.i68, %zext.i.i63
  br i1 %i.fy, label %_ZN10hb_array_tI15hb_glyph_info_tE7reverseEjj.exit.i.i.i69, label %.lr.ph.i.i.i.i64, !llvm.loop !22

_ZN10hb_array_tI15hb_glyph_info_tE7reverseEjj.exit.i.i.i69: ; preds = %.lr.ph.i.i.i.i64, %bb.p
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fo, i64 90
  %i.ga = load i8, ptr %i.fz, align 2, !tbaa !630, !range !378, !noundef !291
  %i.gb = trunc nuw i8 %i.ga to i1
  br i1 %i.gb, label %bb.q, label %_ZN3AAT22hb_aat_apply_context_t14reverse_bufferEv.exit78

bb.q:                                             ; preds = %_ZN10hb_array_tI15hb_glyph_info_tE7reverseEjj.exit.i.i.i69
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fo, i64 128
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !609 ; 2 uses
  %i.ge = load i32, ptr %i.fp, align 8, !tbaa !605
  %.sroa.speculated.i5.i.i.i70 = tail call i32 @llvm.umin.i32(i32 %i.fq, i32 %i.ge) ; 3 uses
  %i.gf = icmp ult i32 %.sroa.speculated.i5.i.i.i70, 2
  br i1 %i.gf, label %_ZN3AAT22hb_aat_apply_context_t14reverse_bufferEv.exit78, label %.lr.ph.preheader.i6.i.i.i71

.lr.ph.preheader.i6.i.i.i71:                      ; preds = %bb.q
  %i.gg = lshr i32 %.sroa.speculated.i5.i.i.i70, 1
  %zext1.i.i72 = zext nneg i32 %i.gg to i64
  br label %.lr.ph.i8.i.i.i73

.lr.ph.i8.i.i.i73:                                ; preds = %.lr.ph.i8.i.i.i73, %.lr.ph.preheader.i6.i.i.i71
  %indvars.iv.i9.i.i.i74 = phi i64 [ 0, %.lr.ph.preheader.i6.i.i.i71 ], [ %indvars.iv.next.i12.i.i.i77, %.lr.ph.i8.i.i.i73 ] ; 2 uses
  %.0.in17.i10.i.i.i75 = phi i32 [ %.sroa.speculated.i5.i.i.i70, %.lr.ph.preheader.i6.i.i.i71 ], [ %.0.i11.i.i.i76, %.lr.ph.i8.i.i.i73 ]
  %.0.i11.i.i.i76 = add i32 %.0.in17.i10.i.i.i75, -1 ; 2 uses
  %i.gh = zext i32 %.0.i11.i.i.i76 to i64
  %i.gi = getelementptr inbounds nuw [20 x i8], ptr %i.gd, i64 %i.gh ; 2 uses
  %i.gj = getelementptr inbounds nuw [20 x i8], ptr %i.gd, i64 %indvars.iv.i9.i.i.i74 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %3, ptr noundef nonnull align 4 dereferenceable(20) %i.gi, i64 20, i1 false), !tbaa.struct !610
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.gi, ptr noundef nonnull align 4 dereferenceable(20) %i.gj, i64 20, i1 false), !tbaa.struct !610
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.gj, ptr noundef nonnull align 4 dereferenceable(20) %3, i64 20, i1 false), !tbaa.struct !610
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %indvars.iv.next.i12.i.i.i77 = add nuw nsw i64 %indvars.iv.i9.i.i.i74, 1 ; 2 uses
  %i.gk = icmp eq i64 %indvars.iv.next.i12.i.i.i77, %zext1.i.i72
  br i1 %i.gk, label %_ZN3AAT22hb_aat_apply_context_t14reverse_bufferEv.exit78, label %.lr.ph.i8.i.i.i73, !llvm.loop !23

_ZN3AAT22hb_aat_apply_context_t14reverse_bufferEv.exit78: ; preds = %.lr.ph.i8.i.i.i73, %_ZN10hb_array_tI15hb_glyph_info_tE7reverseEjj.exit.i.i.i69, %bb.q
  %i.gl = load i8, ptr %i.fk, align 4, !tbaa !1674, !range !378, !noundef !291
  %i.gm = xor i8 %i.gl, 1
  store i8 %i.gm, ptr %i.fk, align 4, !tbaa !1674
  br label %bb.r

bb.r:                                             ; preds = %_ZN3AAT22hb_aat_apply_context_t14reverse_bufferEv.exit78, %.critedge
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN3AAT33hb_aat_layout_chain_accelerator_t6createINS_5ChainINS_13ExtendedTypesEEEEEPS0_RKT_j(ptr noundef nonnull align 1 dereferenceable(28) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"struct.AAT::hb_accelerate_subtables_context_t", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 1, !tbaa !276  ; 2 uses
  %i.c = tail call noundef i32 @llvm.bswap.i32(i32 %i.b) ; 3 uses
  %i.d = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.c, i32 560) ; 2 uses
  %i.e = extractvalue { i32, i1 } %i.d, 1
  br i1 %i.e, label %bb.d, label %bb.b, !prof !265

bb.b:                                             ; preds = %bb.a
  %i.f = extractvalue { i32, i1 } %i.d, 0
  %i.g = or disjoint i32 %i.f, 8
  %i.h = zext i32 %i.g to i64
  %i.i = tail call noalias noundef ptr @calloc(i64 noundef 1, i64 noundef %i.h) #60 ; 4 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.d, label %bb.c, !prof !265

bb.c:                                             ; preds = %bb.b
  store i32 %i.c, ptr %i.i, align 8, !tbaa !1928
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #59
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i32 0, ptr %2, align 8, !tbaa !1932
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.j, ptr %i.k, align 8, !tbaa !1935
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %1, ptr %i.l, align 8, !tbaa !1936
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 0, ptr %i.m, align 4, !tbaa !1937
  %.not11.not.i = icmp eq i32 %i.b, 0
  br i1 %.not11.not.i, label %_ZNK3AAT5ChainINS_13ExtendedTypesEE8dispatchINS_33hb_accelerate_subtables_context_tEJEEENT_8return_tEPS5_DpOT0_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load i32, ptr %i.o, align 1, !tbaa !276
  %i.q = tail call noundef i32 @llvm.bswap.i32(i32 %i.p)
  %i.r = mul i32 %i.q, 12
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.s
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.0813.i = phi i32 [ %i.y, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ]
  %.0912.i = phi ptr [ %i.x, %.lr.ph.i ], [ %i.t, %.lr.ph.preheader.i ] ; 3 uses
  call void @_ZNK3AAT13ChainSubtableINS_13ExtendedTypesEE8dispatchINS_33hb_accelerate_subtables_context_tEJEEENT_8return_tEPS5_DpOT0_(ptr noundef nonnull align 1 dereferenceable(40) %.0912.i, ptr noundef nonnull %2)
  %i.u = load i32, ptr %.0912.i, align 1, !tbaa !276
  %i.v = call noundef i32 @llvm.bswap.i32(i32 %i.u)
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %.0912.i, i64 %i.w
  %i.y = add nuw i32 %.0813.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.y, %i.c
  br i1 %exitcond.not.i, label %_ZNK3AAT5ChainINS_13ExtendedTypesEE8dispatchINS_33hb_accelerate_subtables_context_tEJEEENT_8return_tEPS5_DpOT0_.exit, label %.lr.ph.i, !llvm.loop !5513

_ZNK3AAT5ChainINS_13ExtendedTypesEE8dispatchINS_33hb_accelerate_subtables_context_tEJEEENT_8return_tEPS5_DpOT0_.exit: ; preds = %.lr.ph.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #59
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %_ZNK3AAT5ChainINS_13ExtendedTypesEE8dispatchINS_33hb_accelerate_subtables_context_tEJEEENT_8return_tEPS5_DpOT0_.exit, %bb.a
  %.2 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %i.i, %_ZNK3AAT5ChainINS_13ExtendedTypesEE8dispatchINS_33hb_accelerate_subtables_context_tEJEEENT_8return_tEPS5_DpOT0_.exit ]
  ret ptr %.2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK3AAT13ChainSubtableINS_13ExtendedTypesEE8dispatchINS_33hb_accelerate_subtables_context_tEJEEENT_8return_tEPS5_DpOT0_(ptr noundef nonnull align 1 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 7
  %trunc = load i8, ptr %i.a, align 1, !tbaa !276
  switch i8 %trunc, label %_ZN3AAT33hb_accelerate_subtables_context_t8dispatchINS_21RearrangementSubtableINS_13ExtendedTypesEEEEE10hb_empty_tRKT_.exit [
    i8 0, label %bb.b
    i8 1, label %bb.d
    i8 2, label %bb.f
    i8 4, label %bb.h
    i8 5, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !277
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1935
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !1937 ; 2 uses
  %i.g = add i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 4, !tbaa !1937
  %i.h = zext i32 %i.f to i64
  %i.i = getelementptr inbounds nuw [560 x i8], ptr %i.d, i64 %i.h ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load i32, ptr %i.j, align 8, !tbaa !1936
  store i8 1, ptr %i.i, align 8, !tbaa !548
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  store i32 0, ptr %i.l, align 4, !tbaa !547
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store atomic i32 0, ptr %i.m monotonic, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, i8 0, i64 32, i1 false)
  tail call void @_ZNK3AAT10StateTableINS_13ExtendedTypesEvE22collect_initial_glyphsI12hb_bit_set_tNS_21RearrangementSubtableIS1_EEEEvRT_jRKT0_(ptr noundef nonnull align 1 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(560) %i.i, i32 noundef %i.k, ptr noundef nonnull align 1 dereferenceable(16) %i.b)
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 8 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.0.idx8.i.i.i = phi i64 [ 0, %bb.b ], [ %.0.add.i.i.i.7, %bb.c ] ; 9 uses
  %.0.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 %.0.idx8.i.i.i
  store atomic i16 -1, ptr %.0.ptr.i.i.i monotonic, align 2
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %.0.idx8.i.i.i
  %.0.ptr.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  store atomic i16 -1, ptr %.0.ptr.i.i.i.1 monotonic, align 2
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %.0.idx8.i.i.i
  %.0.ptr.i.i.i.2 = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  store atomic i16 -1, ptr %.0.ptr.i.i.i.2 monotonic, align 2
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %.0.idx8.i.i.i
  %.0.ptr.i.i.i.3 = getelementptr inbounds nuw i8, ptr %i.r, i64 6
  store atomic i16 -1, ptr %.0.ptr.i.i.i.3 monotonic, align 2
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 %.0.idx8.i.i.i
  %.0.ptr.i.i.i.4 = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store atomic i16 -1, ptr %.0.ptr.i.i.i.4 monotonic, align 2
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 %.0.idx8.i.i.i
  %.0.ptr.i.i.i.5 = getelementptr inbounds nuw i8, ptr %i.t, i64 10
  store atomic i16 -1, ptr %.0.ptr.i.i.i.5 monotonic, align 2
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 %.0.idx8.i.i.i
  %.0.ptr.i.i.i.6 = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store atomic i16 -1, ptr %.0.ptr.i.i.i.6 monotonic, align 2
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 %.0.idx8.i.i.i
  %.0.ptr.i.i.i.7 = getelementptr inbounds nuw i8, ptr %i.v, i64 14
  store atomic i16 -1, ptr %.0.ptr.i.i.i.7 monotonic, align 2
  %.0.add.i.i.i.7 = add nuw nsw i64 %.0.idx8.i.i.i, 16 ; 2 uses
  %.not.i.i.i.7 = icmp eq i64 %.0.add.i.i.i.7, 512
  br i1 %.not.i.i.i.7, label %_ZN3AAT33hb_accelerate_subtables_context_t8dispatchINS_21RearrangementSubtableINS_13ExtendedTypesEEEEE10hb_empty_tRKT_.exit, label %bb.c

bb.d:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !277
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1935
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !1937 ; 2 uses
  %i.ab = add i32 %i.aa, 1
  store i32 %i.ab, ptr %i.z, align 4, !tbaa !1937
  %i.ac = zext i32 %i.aa to i64
  %i.ad = getelementptr inbounds nuw [560 x i8], ptr %i.y, i64 %i.ac ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !1936
  store i8 1, ptr %i.ad, align 8, !tbaa !548
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  store i32 0, ptr %i.ag, align 4, !tbaa !547
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store atomic i32 0, ptr %i.ah monotonic, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, i8 0, i64 32, i1 false)
  tail call void @_ZNK3AAT10StateTableINS_13ExtendedTypesENS_18ContextualSubtableIS1_E9EntryDataEE22collect_initial_glyphsI12hb_bit_set_tS3_EEvRT_jRKT0_(ptr noundef nonnull align 1 dereferenceable(20) %i.w, ptr noundef nonnull align 8 dereferenceable(560) %i.ad, i32 noundef %i.af, ptr noundef nonnull align 1 dereferenceable(20) %i.w)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 48 ; 8 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.0.idx8.i.i.i6 = phi i64 [ 0, %bb.d ], [ %.0.add.i.i.i8.7, %bb.e ] ; 9 uses
  %.0.ptr.i.i.i7 = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.0.idx8.i.i.i6
  store atomic i16 -1, ptr %.0.ptr.i.i.i7 monotonic, align 2
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.0.idx8.i.i.i6
  %.0.ptr.i.i.i7.1 = getelementptr inbounds nuw i8, ptr %i.ak, i64 2
  store atomic i16 -1, ptr %.0.ptr.i.i.i7.1 monotonic, align 2
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.0.idx8.i.i.i6
  %.0.ptr.i.i.i7.2 = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  store atomic i16 -1, ptr %.0.ptr.i.i.i7.2 monotonic, align 2
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.0.idx8.i.i.i6
  %.0.ptr.i.i.i7.3 = getelementptr inbounds nuw i8, ptr %i.am, i64 6
  store atomic i16 -1, ptr %.0.ptr.i.i.i7.3 monotonic, align 2
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.0.idx8.i.i.i6
  %.0.ptr.i.i.i7.4 = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store atomic i16 -1, ptr %.0.ptr.i.i.i7.4 monotonic, align 2
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.0.idx8.i.i.i6
  %.0.ptr.i.i.i7.5 = getelementptr inbounds nuw i8, ptr %i.ao, i64 10
  store atomic i16 -1, ptr %.0.ptr.i.i.i7.5 monotonic, align 2
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.0.idx8.i.i.i6
  %.0.ptr.i.i.i7.6 = getelementptr inbounds nuw i8, ptr %i.ap, i64 12
  store atomic i16 -1, ptr %.0.ptr.i.i.i7.6 monotonic, align 2
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.0.idx8.i.i.i6
  %.0.ptr.i.i.i7.7 = getelementptr inbounds nuw i8, ptr %i.aq, i64 14
  store atomic i16 -1, ptr %.0.ptr.i.i.i7.7 monotonic, align 2
  %.0.add.i.i.i8.7 = add nuw nsw i64 %.0.idx8.i.i.i6, 16 ; 2 uses
  %.not.i.i.i9.7 = icmp eq i64 %.0.add.i.i.i8.7, 512
  br i1 %.not.i.i.i9.7, label %_ZN3AAT33hb_accelerate_subtables_context_t8dispatchINS_21RearrangementSubtableINS_13ExtendedTypesEEEEE10hb_empty_tRKT_.exit, label %bb.e

bb.f:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !277
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !1935
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !1937 ; 2 uses
  %i.aw = add i32 %i.av, 1
  store i32 %i.aw, ptr %i.au, align 4, !tbaa !1937
  %i.ax = zext i32 %i.av to i64
  %i.ay = getelementptr inbounds nuw [560 x i8], ptr %i.at, i64 %i.ax ; 6 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !1936
  store i8 1, ptr %i.ay, align 8, !tbaa !548
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  store i32 0, ptr %i.bb, align 4, !tbaa !547
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store atomic i32 0, ptr %i.bc monotonic, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bd, i8 0, i64 32, i1 false)
  tail call void @_ZNK3AAT10StateTableINS_13ExtendedTypesENS_13LigatureEntryILb1EE9EntryDataEE22collect_initial_glyphsI12hb_bit_set_tNS_16LigatureSubtableIS1_EEEEvRT_jRKT0_(ptr noundef nonnull align 1 dereferenceable(28) %i.ar, ptr noundef nonnull align 8 dereferenceable(560) %i.ay, i32 noundef %i.ba, ptr noundef nonnull align 1 dereferenceable(28) %i.ar)
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 48 ; 8 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %.0.idx8.i.i.i10 = phi i64 [ 0, %bb.f ], [ %.0.add.i.i.i12.7, %bb.g ] ; 9 uses
  %.0.ptr.i.i.i11 = getelementptr inbounds nuw i8, ptr %i.be, i64 %.0.idx8.i.i.i10
  store atomic i16 -1, ptr %.0.ptr.i.i.i11 monotonic, align 2
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %.0.idx8.i.i.i10
  %.0.ptr.i.i.i11.1 = getelementptr inbounds nuw i8, ptr %i.bf, i64 2
  store atomic i16 -1, ptr %.0.ptr.i.i.i11.1 monotonic, align 2
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 %.0.idx8.i.i.i10
  %.0.ptr.i.i.i11.2 = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  store atomic i16 -1, ptr %.0.ptr.i.i.i11.2 monotonic, align 2
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 %.0.idx8.i.i.i10
  %.0.ptr.i.i.i11.3 = getelementptr inbounds nuw i8, ptr %i.bh, i64 6
  store atomic i16 -1, ptr %.0.ptr.i.i.i11.3 monotonic, align 2
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 %.0.idx8.i.i.i10
  %.0.ptr.i.i.i11.4 = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store atomic i16 -1, ptr %.0.ptr.i.i.i11.4 monotonic, align 2
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 %.0.idx8.i.i.i10
  %.0.ptr.i.i.i11.5 = getelementptr inbounds nuw i8, ptr %i.bj, i64 10
  store atomic i16 -1, ptr %.0.ptr.i.i.i11.5 monotonic, align 2
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 %.0.idx8.i.i.i10
  %.0.ptr.i.i.i11.6 = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  store atomic i16 -1, ptr %.0.ptr.i.i.i11.6 monotonic, align 2
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 %.0.idx8.i.i.i10
  %.0.ptr.i.i.i11.7 = getelementptr inbounds nuw i8, ptr %i.bl, i64 14
  store atomic i16 -1, ptr %.0.ptr.i.i.i11.7 monotonic, align 2
  %.0.add.i.i.i12.7 = add nuw nsw i64 %.0.idx8.i.i.i10, 16 ; 2 uses
  %.not.i.i.i13.7 = icmp eq i64 %.0.add.i.i.i12.7, 512
  br i1 %.not.i.i.i13.7, label %_ZN3AAT33hb_accelerate_subtables_context_t8dispatchINS_21RearrangementSubtableINS_13ExtendedTypesEEEEE10hb_empty_tRKT_.exit, label %bb.g

bb.h:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !277
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !1935
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !1937 ; 2 uses
  %i.br = add i32 %i.bq, 1
  store i32 %i.br, ptr %i.bp, align 4, !tbaa !1937
  %i.bs = zext i32 %i.bq to i64
  %i.bt = getelementptr inbounds nuw [560 x i8], ptr %i.bo, i64 %i.bs ; 6 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !1936
  store i8 1, ptr %i.bt, align 8, !tbaa !548
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  store i32 0, ptr %i.bw, align 4, !tbaa !547
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store atomic i32 0, ptr %i.bx monotonic, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.by, i8 0, i64 32, i1 false)
  tail call void @_ZNK3AAT6LookupIN2OT11HBGlyphID16EE14collect_glyphsI12hb_bit_set_tEEvRT_j(ptr noundef nonnull align 1 dereferenceable(13) %i.bm, ptr noundef nonnull align 8 dereferenceable(560) %i.bt, i32 noundef %i.bv)
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bt, i64 48 ; 8 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %.0.idx8.i.i.i14 = phi i64 [ 0, %bb.h ], [ %.0.add.i.i.i16.7, %bb.i ] ; 9 uses
  %.0.ptr.i.i.i15 = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.0.idx8.i.i.i14
  store atomic i16 -1, ptr %.0.ptr.i.i.i15 monotonic, align 2
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.0.idx8.i.i.i14
  %.0.ptr.i.i.i15.1 = getelementptr inbounds nuw i8, ptr %i.ca, i64 2
  store atomic i16 -1, ptr %.0.ptr.i.i.i15.1 monotonic, align 2
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.0.idx8.i.i.i14
  %.0.ptr.i.i.i15.2 = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
end_hunk_2
begin_hunk_3_@_ZNK3AAT13LookupFormat4IN2OT11HBGlyphID16EE14collect_glyphsI12hb_bit_set_tEEvRT_:bb.a
  ret void

bb.d:                                             ; preds = %.lr.ph, %_ZNK3AAT18LookupSegmentArrayIN2OT11HBGlyphID16EE14collect_glyphsI12hb_bit_set_tEEvRT_.exit
  %.05 = phi i32 [ 0, %.lr.ph ], [ %i.az, %_ZNK3AAT18LookupSegmentArrayIN2OT11HBGlyphID16EE14collect_glyphsI12hb_bit_set_tEEvRT_.exit ] ; 3 uses
  %i.u = load i16, ptr %i.b, align 1, !tbaa !281  ; 2 uses
  %i.v = tail call noundef i16 @llvm.bswap.i16(i16 %i.u) ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.u, 0
  br i1 %.not.i.i.i, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_11HBGlyphID16EEEE10get_lengthEv.exit.i, label %bb.e, !prof !265

bb.e:                                             ; preds = %bb.d
  %i.w = zext i16 %i.v to i64
  %i.x = add nuw nsw i64 %i.w, 4294967295
  %i.y = load i16, ptr %i.a, align 1, !tbaa !281
  %i.z = tail call noundef i16 @llvm.bswap.i16(i16 %i.y)
  %i.aa = zext i16 %i.z to i64
  %i.ab = mul nuw nsw i64 %i.x, %i.aa
  %i.ac = and i64 %i.ab, 4294967295
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ac ; 2 uses
  %i.ae = load i16, ptr %i.ad, align 1, !tbaa !281
  %.not9.i.i.i = icmp eq i16 %i.ae, -1
  br i1 %.not9.i.i.i, label %bb.f, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_11HBGlyphID16EEEE10get_lengthEv.exit.i

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 2
  %i.ag = load i16, ptr %i.af, align 1, !tbaa !281
  %.not9.1.i.i.i = icmp eq i16 %i.ag, -1
  %i.ah = sext i1 %.not9.1.i.i.i to i32
  br label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_11HBGlyphID16EEEE10get_lengthEv.exit.i

_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_11HBGlyphID16EEEE10get_lengthEv.exit.i: ; preds = %bb.f, %bb.e, %bb.d
  %.2.i.i.i = phi i32 [ 0, %bb.d ], [ 0, %bb.e ], [ %i.ah, %bb.f ]
  %i.ai = zext i16 %i.v to i32
  %i.aj = add nsw i32 %.2.i.i.i, %i.ai
  %.not.i = icmp ult i32 %.05, %i.aj
  br i1 %.not.i, label %bb.g, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_11HBGlyphID16EEEEixEi.exit, !prof !266

bb.g:                                             ; preds = %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_11HBGlyphID16EEEE10get_lengthEv.exit.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !277
  %i.ak = load i16, ptr %i.a, align 1, !tbaa !281
  %i.al = tail call noundef i16 @llvm.bswap.i16(i16 %i.ak)
  %i.am = zext i16 %i.al to i32
  %i.an = mul i32 %.05, %i.am
  %i.ao = zext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ao
  br label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_11HBGlyphID16EEEEixEi.exit

_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_11HBGlyphID16EEEEixEi.exit: ; preds = %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_11HBGlyphID16EEEE10get_lengthEv.exit.i, %bb.g
  %.0.i = phi ptr [ %i.ap, %bb.g ], [ @_hb_NullPool, %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_11HBGlyphID16EEEE10get_lengthEv.exit.i ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i, i64 2
  %i.ar = load i16, ptr %i.aq, align 1, !tbaa !281 ; 2 uses
  %i.as = icmp eq i16 %i.ar, -1
  br i1 %i.as, label %_ZNK3AAT18LookupSegmentArrayIN2OT11HBGlyphID16EE14collect_glyphsI12hb_bit_set_tEEvRT_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_11HBGlyphID16EEEEixEi.exit
  %i.at = tail call noundef i16 @llvm.bswap.i16(i16 %i.ar)
  %i.au = zext i16 %i.at to i32
  %i.av = load i16, ptr %.0.i, align 1, !tbaa !281
  %i.aw = tail call noundef i16 @llvm.bswap.i16(i16 %i.av)
  %i.ax = zext i16 %i.aw to i32
  %i.ay = tail call noundef zeroext i1 @_ZN12hb_bit_set_t9add_rangeEjj(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.au, i32 noundef %i.ax) ; 0 uses
  br label %_ZNK3AAT18LookupSegmentArrayIN2OT11HBGlyphID16EE14collect_glyphsI12hb_bit_set_tEEvRT_.exit

_ZNK3AAT18LookupSegmentArrayIN2OT11HBGlyphID16EE14collect_glyphsI12hb_bit_set_tEEvRT_.exit: ; preds = %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_11HBGlyphID16EEEEixEi.exit, %bb.h
  %i.az = add nuw i32 %.05, 1                     ; 2 uses
  %exitcond.not = icmp eq i32 %i.az, %i.s
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !5541
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK3AAT10StateTableINS_13ExtendedTypesENS_17InsertionSubtableIS1_E9EntryDataEE22collect_initial_glyphsI12hb_bit_set_tS3_EEvRT_jRKT0_(ptr noundef nonnull align 1 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %2, ptr noundef nonnull align 1 dereferenceable(20) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %struct.hb_bit_page_t, align 8      ; 6 uses
  %i.a = load i32, ptr %0, align 1, !tbaa !276    ; 2 uses
  %i.b = tail call noundef i32 @llvm.bswap.i32(i32 %i.a) ; 2 uses
  %i.c = icmp ugt i32 %i.b, 512
  br i1 %i.c, label %bb.b, label %bb.c, !prof !265

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 1, !tbaa !276
  %i.f = tail call noundef i32 @llvm.bswap.i32(i32 %i.e)
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g
  tail call void @_ZNK3AAT6LookupIN2OT7NumTypeILb1EtLj2EEEE14collect_glyphsI12hb_bit_set_tEEvRT_j(ptr noundef nonnull align 1 dereferenceable(13) %i.h, ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %2)
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #59
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.i, i8 0, i64 64, i1 false), !tbaa !1238
  %.not23 = icmp eq i32 %i.a, 0
  br i1 %.not23, label %._crit_edge.thread, label %_ZNK3AAT10StateTableINS_13ExtendedTypesENS_17InsertionSubtableIS1_E9EntryDataEE9get_entryEij.exit.lr.ph

._crit_edge.thread:                               ; preds = %bb.c
  store i32 0, ptr %4, align 8
  br label %bb.h

_ZNK3AAT10StateTableINS_13ExtendedTypesENS_17InsertionSubtableIS1_E9EntryDataEE9get_entryEij.exit.lr.ph: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i32, ptr %i.j, align 1, !tbaa !276
  %i.l = tail call noundef i32 @llvm.bswap.i32(i32 %i.k)
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.p = load i32, ptr %i.o, align 1, !tbaa !276
  %i.q = tail call noundef i32 @llvm.bswap.i32(i32 %i.p)
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 %i.r
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %_ZNK3AAT10StateTableINS_13ExtendedTypesENS_17InsertionSubtableIS1_E9EntryDataEE9get_entryEij.exit

._crit_edge:                                      ; preds = %_ZNK3AAT17InsertionSubtableINS_13ExtendedTypesEE13is_actionableERKNS_5EntryINS2_9EntryDataEEE.exit.thread19
  %.pre = load i64, ptr %i.i, align 8, !tbaa !1238
  %i.t = and i64 %.pre, 4
  %i.u = icmp eq i64 %i.t, 0
  store i32 %i.ar, ptr %4, align 8
  br i1 %i.u, label %bb.h, label %bb.g

_ZNK3AAT10StateTableINS_13ExtendedTypesENS_17InsertionSubtableIS1_E9EntryDataEE9get_entryEij.exit: ; preds = %_ZNK3AAT10StateTableINS_13ExtendedTypesENS_17InsertionSubtableIS1_E9EntryDataEE9get_entryEij.exit.lr.ph, %_ZNK3AAT17InsertionSubtableINS_13ExtendedTypesEE13is_actionableERKNS_5EntryINS2_9EntryDataEEE.exit.thread19
  %indvars.iv = phi i64 [ 0, %_ZNK3AAT10StateTableINS_13ExtendedTypesENS_17InsertionSubtableIS1_E9EntryDataEE9get_entryEij.exit.lr.ph ], [ %indvars.iv.next, %_ZNK3AAT17InsertionSubtableINS_13ExtendedTypesEE13is_actionableERKNS_5EntryINS2_9EntryDataEEE.exit.thread19 ] ; 4 uses
  %i.v = phi i32 [ 0, %_ZNK3AAT10StateTableINS_13ExtendedTypesENS_17InsertionSubtableIS1_E9EntryDataEE9get_entryEij.exit.lr.ph ], [ %i.ar, %_ZNK3AAT17InsertionSubtableINS_13ExtendedTypesEE13is_actionableERKNS_5EntryINS2_9EntryDataEEE.exit.thread19 ] ; 2 uses
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %indvars.iv
  %i.x = load i16, ptr %i.w, align 1, !tbaa !281
  %i.y = tail call noundef i16 @llvm.bswap.i16(i16 %i.x)
  %i.z = zext i16 %i.y to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.z ; 4 uses
  %i.ab = load i16, ptr %i.aa, align 1, !tbaa !281
  %i.ac = icmp eq i16 %i.ab, 0
  br i1 %i.ac, label %bb.d, label %_ZNK3AAT17InsertionSubtableINS_13ExtendedTypesEE13is_actionableERKNS_5EntryINS2_9EntryDataEEE.exit.thread

bb.d:                                             ; preds = %_ZNK3AAT10StateTableINS_13ExtendedTypesENS_17InsertionSubtableIS1_E9EntryDataEE9get_entryEij.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 2
  %i.ae = load i16, ptr %i.ad, align 1, !tbaa !281 ; 2 uses
  %.mask.i = and i16 %i.ae, 128
  %.not20 = icmp eq i16 %.mask.i, 0
  br i1 %.not20, label %bb.e, label %_ZNK3AAT17InsertionSubtableINS_13ExtendedTypesEE13is_actionableERKNS_5EntryINS2_9EntryDataEEE.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.af = and i16 %i.ae, -253
  %.not.i17 = icmp eq i16 %i.af, 0
  br i1 %.not.i17, label %_ZNK3AAT17InsertionSubtableINS_13ExtendedTypesEE13is_actionableERKNS_5EntryINS2_9EntryDataEEE.exit.thread19, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.ah = load i16, ptr %i.ag, align 1, !tbaa !281
  %.not3.i = icmp eq i16 %i.ah, -1
  br i1 %.not3.i, label %_ZNK3AAT17InsertionSubtableINS_13ExtendedTypesEE13is_actionableERKNS_5EntryINS2_9EntryDataEEE.exit, label %_ZNK3AAT17InsertionSubtableINS_13ExtendedTypesEE13is_actionableERKNS_5EntryINS2_9EntryDataEEE.exit.thread

_ZNK3AAT17InsertionSubtableINS_13ExtendedTypesEE13is_actionableERKNS_5EntryINS2_9EntryDataEEE.exit: ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 6
  %i.aj = load i16, ptr %i.ai, align 1, !tbaa !281
  %.not21 = icmp eq i16 %i.aj, -1
  br i1 %.not21, label %_ZNK3AAT17InsertionSubtableINS_13ExtendedTypesEE13is_actionableERKNS_5EntryINS2_9EntryDataEEE.exit.thread19, label %_ZNK3AAT17InsertionSubtableINS_13ExtendedTypesEE13is_actionableERKNS_5EntryINS2_9EntryDataEEE.exit.thread

_ZNK3AAT17InsertionSubtableINS_13ExtendedTypesEE13is_actionableERKNS_5EntryINS2_9EntryDataEEE.exit.thread: ; preds = %bb.f, %_ZNK3AAT17InsertionSubtableINS_13ExtendedTypesEE13is_actionableERKNS_5EntryINS2_9EntryDataEEE.exit, %bb.d, %_ZNK3AAT10StateTableINS_13ExtendedTypesENS_17InsertionSubtableIS1_E9EntryDataEE9get_entryEij.exit
  %i.ak = and i64 %indvars.iv, 63
  %i.al = shl nuw i64 1, %i.ak
  %i.am = lshr i64 %indvars.iv, 6
  %i.an = and i64 %i.am, 7
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.an ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !1238
  %i.aq = or i64 %i.ap, %i.al
  store i64 %i.aq, ptr %i.ao, align 8, !tbaa !1238
  br label %_ZNK3AAT17InsertionSubtableINS_13ExtendedTypesEE13is_actionableERKNS_5EntryINS2_9EntryDataEEE.exit.thread19

_ZNK3AAT17InsertionSubtableINS_13ExtendedTypesEE13is_actionableERKNS_5EntryINS2_9EntryDataEEE.exit.thread19: ; preds = %bb.e, %_ZNK3AAT17InsertionSubtableINS_13ExtendedTypesEE13is_actionableERKNS_5EntryINS2_9EntryDataEEE.exit, %_ZNK3AAT17InsertionSubtableINS_13ExtendedTypesEE13is_actionableERKNS_5EntryINS2_9EntryDataEEE.exit.thread
  %i.ar = phi i32 [ %i.v, %bb.e ], [ %i.v, %_ZNK3AAT17InsertionSubtableINS_13ExtendedTypesEE13is_actionableERKNS_5EntryINS2_9EntryDataEEE.exit ], [ -1, %_ZNK3AAT17InsertionSubtableINS_13ExtendedTypesEE13is_actionableERKNS_5EntryINS2_9EntryDataEEE.exit.thread ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %_ZNK3AAT10StateTableINS_13ExtendedTypesENS_17InsertionSubtableIS1_E9EntryDataEE9get_entryEij.exit, !llvm.loop !5542

bb.g:                                             ; preds = %._crit_edge
  tail call void @_ZN12hb_bit_set_t3addEj(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef 65535)
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge.thread, %bb.g, %._crit_edge
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.at = load i32, ptr %i.as, align 1, !tbaa !276
  %i.au = tail call noundef i32 @llvm.bswap.i32(i32 %i.at)
  %i.av = zext i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 %i.av
  call void @_ZNK3AAT6LookupIN2OT7NumTypeILb1EtLj2EEEE23collect_glyphs_filteredI12hb_bit_set_t13hb_bit_page_tEEvRT_jRKT0_(ptr noundef nonnull align 1 dereferenceable(13) %i.aw, ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(72) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #59
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK3AAT13ChainSubtableINS_13ExtendedTypesEE8dispatchINS_22hb_aat_apply_context_tEJEEENT_8return_tEPS5_DpOT0_(ptr noundef nonnull align 1 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"struct.AAT::InsertionSubtable<AAT::ExtendedTypes>::driver_context_t", align 8 ; 9 uses
  %3 = alloca %"struct.AAT::StateTableDriver.1858", align 8 ; 5 uses
  %4 = alloca %"struct.AAT::LigatureSubtable<AAT::ExtendedTypes>::driver_context_t", align 8 ; 11 uses
  %5 = alloca %"struct.AAT::StateTableDriver.1856", align 8 ; 5 uses
  %6 = alloca %"struct.AAT::ContextualSubtable<AAT::ExtendedTypes>::driver_context_t", align 8 ; 10 uses
  %7 = alloca %"struct.AAT::StateTableDriver.1854", align 8 ; 5 uses
  %8 = alloca %"struct.AAT::RearrangementSubtable<AAT::ExtendedTypes>::driver_context_t", align 8 ; 8 uses
  %9 = alloca %"struct.AAT::StateTableDriver.1852", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 7
  %trunc = load i8, ptr %i.a, align 1, !tbaa !276
  switch i8 %trunc, label %bb.k [
    i8 0, label %bb.b
    i8 1, label %bb.d
    i8 2, label %bb.f
    i8 4, label %bb.h
    i8 5, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !277
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #59
  store i8 0, ptr %8, align 8, !tbaa !5543
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.b, ptr %i.c, align 8, !tbaa !5544
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 0, ptr %i.d, align 8, !tbaa !1940
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i32 0, ptr %i.e, align 4, !tbaa !1941
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #59
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !491  ; 2 uses
  store ptr %i.b, ptr %9, align 8, !tbaa !5545
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load atomic i32, ptr %i.h monotonic, align 4 ; 2 uses
  %i.j = icmp eq i32 %i.i, -1
  br i1 %i.j, label %bb.c, label %_ZN3AAT22hb_aat_apply_context_t8dispatchINS_21RearrangementSubtableINS_13ExtendedTypesEEEJEEEbRKT_DpOT0_.exit, !prof !265

bb.c:                                             ; preds = %bb.b
  %i.k = tail call noundef i32 @_ZNK9hb_face_t15load_num_glyphsEv(ptr noundef nonnull align 8 dereferenceable(448) %i.g), !inline_history !7
  br label %_ZN3AAT22hb_aat_apply_context_t8dispatchINS_21RearrangementSubtableINS_13ExtendedTypesEEEJEEEbRKT_DpOT0_.exit

_ZN3AAT22hb_aat_apply_context_t8dispatchINS_21RearrangementSubtableINS_13ExtendedTypesEEEJEEEbRKT_DpOT0_.exit: ; preds = %bb.b, %bb.c
  %.0.i.i.i.i = phi i32 [ %i.k, %bb.c ], [ %i.i, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %.0.i.i.i.i, ptr %i.l, align 8, !tbaa !1944
  call void @_ZN3AAT16StateTableDriverINS_13ExtendedTypesEvNS_21RearrangementSubtableIS1_E5FlagsEE5driveINS3_16driver_context_tEEEvPT_PNS_22hb_aat_apply_context_tE(ptr noundef nonnull align 8 dereferenceable(12) %9, ptr noundef nonnull %8, ptr noundef nonnull align 8 dereferenceable(180) %1)
  %i.m = load i8, ptr %8, align 8, !tbaa !568, !range !378, !noundef !291
  %i.n = trunc nuw i8 %i.m to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #59
  br label %bb.k

bb.d:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !277
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #59
  store i8 0, ptr %6, align 8, !tbaa !1948
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %1, ptr %i.p, align 8, !tbaa !1949
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.o, ptr %i.q, align 8, !tbaa !5546
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i8 0, ptr %i.r, align 8, !tbaa !1950
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 28
  store i32 0, ptr %i.s, align 4, !tbaa !1951
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.v = load i32, ptr %i.u, align 1, !tbaa !276
  %i.w = tail call noundef i32 @llvm.bswap.i32(i32 %i.v)
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.x
  store ptr %i.y, ptr %i.t, align 8, !tbaa !5547
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #59
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !491 ; 2 uses
  store ptr %i.o, ptr %7, align 8, !tbaa !5548
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load atomic i32, ptr %i.ab monotonic, align 4 ; 2 uses
  %i.ad = icmp eq i32 %i.ac, -1
  br i1 %i.ad, label %bb.e, label %_ZN3AAT22hb_aat_apply_context_t8dispatchINS_18ContextualSubtableINS_13ExtendedTypesEEEJEEEbRKT_DpOT0_.exit, !prof !265

bb.e:                                             ; preds = %bb.d
  %i.ae = tail call noundef i32 @_ZNK9hb_face_t15load_num_glyphsEv(ptr noundef nonnull align 8 dereferenceable(448) %i.aa), !inline_history !7
  br label %_ZN3AAT22hb_aat_apply_context_t8dispatchINS_18ContextualSubtableINS_13ExtendedTypesEEEJEEEbRKT_DpOT0_.exit

_ZN3AAT22hb_aat_apply_context_t8dispatchINS_18ContextualSubtableINS_13ExtendedTypesEEEJEEEbRKT_DpOT0_.exit: ; preds = %bb.d, %bb.e
  %.0.i.i.i.i7 = phi i32 [ %i.ae, %bb.e ], [ %i.ac, %bb.d ]
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %.0.i.i.i.i7, ptr %i.af, align 8, !tbaa !1954
  call void @_ZN3AAT16StateTableDriverINS_13ExtendedTypesENS_18ContextualSubtableIS1_E9EntryDataENS3_5FlagsEE5driveINS3_16driver_context_tEEEvPT_PNS_22hb_aat_apply_context_tE(ptr noundef nonnull align 8 dereferenceable(12) %7, ptr noundef nonnull %6, ptr noundef nonnull align 8 dereferenceable(180) %1)
  %i.ag = load i8, ptr %6, align 8, !tbaa !568, !range !378, !noundef !291
  %i.ah = trunc nuw i8 %i.ag to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #59
  br label %bb.k

bb.f:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !277
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #59
  store i8 0, ptr %4, align 8, !tbaa !5549
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %1, ptr %i.aj, align 8, !tbaa !1960
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.ai, ptr %i.ak, align 8, !tbaa !5550
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.an = load i32, ptr %i.am, align 1, !tbaa !276
  %i.ao = tail call noundef i32 @llvm.bswap.i32(i32 %i.an)
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ap
  store ptr %i.aq, ptr %i.al, align 8, !tbaa !1961
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.at = load i32, ptr %i.as, align 1, !tbaa !276
  %i.au = tail call noundef i32 @llvm.bswap.i32(i32 %i.at)
  %i.av = zext i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.av
  store ptr %i.aw, ptr %i.ar, align 8, !tbaa !1962
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.az = load i32, ptr %i.ay, align 1, !tbaa !276
  %i.ba = tail call noundef i32 @llvm.bswap.i32(i32 %i.az)
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bb
  store ptr %i.bc, ptr %i.ax, align 8, !tbaa !1963
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i32 0, ptr %i.bd, align 8, !tbaa !1964
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #59
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !491 ; 2 uses
  store ptr %i.ai, ptr %5, align 8, !tbaa !5551
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bh = load atomic i32, ptr %i.bg monotonic, align 4 ; 2 uses
  %i.bi = icmp eq i32 %i.bh, -1
  br i1 %i.bi, label %bb.g, label %_ZN3AAT22hb_aat_apply_context_t8dispatchINS_16LigatureSubtableINS_13ExtendedTypesEEEJEEEbRKT_DpOT0_.exit, !prof !265

bb.g:                                             ; preds = %bb.f
  %i.bj = tail call noundef i32 @_ZNK9hb_face_t15load_num_glyphsEv(ptr noundef nonnull align 8 dereferenceable(448) %i.bf), !inline_history !7
  br label %_ZN3AAT22hb_aat_apply_context_t8dispatchINS_16LigatureSubtableINS_13ExtendedTypesEEEJEEEbRKT_DpOT0_.exit

_ZN3AAT22hb_aat_apply_context_t8dispatchINS_16LigatureSubtableINS_13ExtendedTypesEEEJEEEbRKT_DpOT0_.exit: ; preds = %bb.f, %bb.g
  %.0.i.i.i.i8 = phi i32 [ %i.bj, %bb.g ], [ %i.bh, %bb.f ]
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %.0.i.i.i.i8, ptr %i.bk, align 8, !tbaa !1967
  call void @_ZN3AAT16StateTableDriverINS_13ExtendedTypesENS_13LigatureEntryILb1EE9EntryDataENS_16LigatureSubtableIS1_E5FlagsEE5driveINS6_16driver_context_tEEEvPT_PNS_22hb_aat_apply_context_tE(ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef nonnull %4, ptr noundef nonnull align 8 dereferenceable(180) %1)
  %i.bl = load i8, ptr %4, align 8, !tbaa !568, !range !378, !noundef !291
  %i.bm = trunc nuw i8 %i.bl to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #59
  br label %bb.k

bb.h:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !277
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bo = tail call noundef zeroext i1 @_ZNK3AAT21NoncontextualSubtableINS_13ExtendedTypesEE5applyEPNS_22hb_aat_apply_context_tE(ptr noundef nonnull align 1 dereferenceable(13) %i.bn, ptr noundef nonnull align 8 dereferenceable(180) %1)
  br label %bb.k

bb.i:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !277
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #59
  store i8 0, ptr %2, align 8, !tbaa !1970
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %1, ptr %i.bq, align 8, !tbaa !1971
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.bp, ptr %i.br, align 8, !tbaa !5552
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 0, ptr %i.bs, align 8, !tbaa !1972
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.bv = load i32, ptr %i.bu, align 1, !tbaa !276
  %i.bw = tail call noundef i32 @llvm.bswap.i32(i32 %i.bv)
  %i.bx = zext i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bx
  store ptr %i.by, ptr %i.bt, align 8, !tbaa !1963
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #59
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !491 ; 2 uses
  store ptr %i.bp, ptr %3, align 8, !tbaa !5553
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cc = load atomic i32, ptr %i.cb monotonic, align 4 ; 2 uses
  %i.cd = icmp eq i32 %i.cc, -1
  br i1 %i.cd, label %bb.j, label %_ZN3AAT22hb_aat_apply_context_t8dispatchINS_17InsertionSubtableINS_13ExtendedTypesEEEJEEEbRKT_DpOT0_.exit, !prof !265

bb.j:                                             ; preds = %bb.i
  %i.ce = tail call noundef i32 @_ZNK9hb_face_t15load_num_glyphsEv(ptr noundef nonnull align 8 dereferenceable(448) %i.ca), !inline_history !7
  br label %_ZN3AAT22hb_aat_apply_context_t8dispatchINS_17InsertionSubtableINS_13ExtendedTypesEEEJEEEbRKT_DpOT0_.exit

_ZN3AAT22hb_aat_apply_context_t8dispatchINS_17InsertionSubtableINS_13ExtendedTypesEEEJEEEbRKT_DpOT0_.exit: ; preds = %bb.i, %bb.j
  %.0.i.i.i.i9 = phi i32 [ %i.ce, %bb.j ], [ %i.cc, %bb.i ]
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.0.i.i.i.i9, ptr %i.cf, align 8, !tbaa !1975
  call void @_ZN3AAT16StateTableDriverINS_13ExtendedTypesENS_17InsertionSubtableIS1_E9EntryDataENS3_5FlagsEE5driveINS3_16driver_context_tEEEvPT_PNS_22hb_aat_apply_context_tE(ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(180) %1)
  %i.cg = load i8, ptr %2, align 8, !tbaa !568, !range !378, !noundef !291
  %i.ch = trunc nuw i8 %i.cg to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #59
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %_ZN3AAT22hb_aat_apply_context_t8dispatchINS_17InsertionSubtableINS_13ExtendedTypesEEEJEEEbRKT_DpOT0_.exit, %bb.h, %_ZN3AAT22hb_aat_apply_context_t8dispatchINS_16LigatureSubtableINS_13ExtendedTypesEEEJEEEbRKT_DpOT0_.exit, %_ZN3AAT22hb_aat_apply_context_t8dispatchINS_18ContextualSubtableINS_13ExtendedTypesEEEJEEEbRKT_DpOT0_.exit, %_ZN3AAT22hb_aat_apply_context_t8dispatchINS_21RearrangementSubtableINS_13ExtendedTypesEEEJEEEbRKT_DpOT0_.exit
  %.0 = phi i1 [ %i.ch, %_ZN3AAT22hb_aat_apply_context_t8dispatchINS_17InsertionSubtableINS_13ExtendedTypesEEEJEEEbRKT_DpOT0_.exit ], [ %i.n, %_ZN3AAT22hb_aat_apply_context_t8dispatchINS_21RearrangementSubtableINS_13ExtendedTypesEEEJEEEbRKT_DpOT0_.exit ], [ %i.ah, %_ZN3AAT22hb_aat_apply_context_t8dispatchINS_18ContextualSubtableINS_13ExtendedTypesEEEJEEEbRKT_DpOT0_.exit ], [ %i.bm, %_ZN3AAT22hb_aat_apply_context_t8dispatchINS_16LigatureSubtableINS_13ExtendedTypesEEEJEEEbRKT_DpOT0_.exit ], [ %i.bo, %bb.h ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3AAT16StateTableDriverINS_13ExtendedTypesEvNS_21RearrangementSubtableIS1_E5FlagsEE5driveINS3_16driver_context_tEEEvPT_PNS_22hb_aat_apply_context_tE(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32
end_hunk_3
begin_hunk_4_@_ZNK3AAT5ChainINS_13ObsoleteTypesEE5applyEPNS_22hb_aat_apply_context_tEPKNS_33hb_aat_layout_chain_accelerator_tE:bb.a
  %i.eo = load i32, ptr %i.dz, align 8, !tbaa !605
  %.sroa.speculated.i5.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.ea, i32 %i.eo) ; 3 uses
  %i.ep = icmp ult i32 %.sroa.speculated.i5.i.i.i, 2
  br i1 %i.ep, label %_ZN3AAT22hb_aat_apply_context_t14reverse_bufferEv.exit, label %.lr.ph.preheader.i6.i.i.i

.lr.ph.preheader.i6.i.i.i:                        ; preds = %bb.n
  %i.eq = lshr i32 %.sroa.speculated.i5.i.i.i, 1
  %zext1.i.i = zext nneg i32 %i.eq to i64
  br label %.lr.ph.i8.i.i.i

.lr.ph.i8.i.i.i:                                  ; preds = %.lr.ph.i8.i.i.i, %.lr.ph.preheader.i6.i.i.i
  %indvars.iv.i9.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i6.i.i.i ], [ %indvars.iv.next.i12.i.i.i, %.lr.ph.i8.i.i.i ] ; 2 uses
  %.0.in17.i10.i.i.i = phi i32 [ %.sroa.speculated.i5.i.i.i, %.lr.ph.preheader.i6.i.i.i ], [ %.0.i11.i.i.i, %.lr.ph.i8.i.i.i ]
  %.0.i11.i.i.i = add i32 %.0.in17.i10.i.i.i, -1  ; 2 uses
  %i.er = zext i32 %.0.i11.i.i.i to i64
  %i.es = getelementptr inbounds nuw [20 x i8], ptr %i.en, i64 %i.er ; 2 uses
  %i.et = getelementptr inbounds nuw [20 x i8], ptr %i.en, i64 %indvars.iv.i9.i.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %5, ptr noundef nonnull align 4 dereferenceable(20) %i.es, i64 20, i1 false), !tbaa.struct !610
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.es, ptr noundef nonnull align 4 dereferenceable(20) %i.et, i64 20, i1 false), !tbaa.struct !610
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.et, ptr noundef nonnull align 4 dereferenceable(20) %5, i64 20, i1 false), !tbaa.struct !610
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %indvars.iv.next.i12.i.i.i = add nuw nsw i64 %indvars.iv.i9.i.i.i, 1 ; 2 uses
  %i.eu = icmp eq i64 %indvars.iv.next.i12.i.i.i, %zext1.i.i
  br i1 %i.eu, label %_ZN3AAT22hb_aat_apply_context_t14reverse_bufferEv.exit, label %.lr.ph.i8.i.i.i, !llvm.loop !23

_ZN3AAT22hb_aat_apply_context_t14reverse_bufferEv.exit: ; preds = %.lr.ph.i8.i.i.i, %_ZN10hb_array_tI15hb_glyph_info_tE7reverseEjj.exit.i.i.i, %bb.n
  %i.ev = load i8, ptr %i.v, align 4, !tbaa !1674, !range !378, !noundef !291
  %i.ew = xor i8 %i.ev, 1
  store i8 %i.ew, ptr %i.v, align 4, !tbaa !1674
  br label %bb.o

bb.o:                                             ; preds = %_ZN3AAT22hb_aat_apply_context_t14reverse_bufferEv.exit, %bb.l
  %i.ex = tail call noundef zeroext i1 @_ZNK3AAT13ChainSubtableINS_13ObsoleteTypesEE8dispatchINS_22hb_aat_apply_context_tEJEEENT_8return_tEPS5_DpOT0_(ptr noundef nonnull align 1 dereferenceable(22) %.04794, ptr noundef nonnull %1) ; 0 uses
  %i.ey = load ptr, ptr %i.m, align 8, !tbaa !492
  %i.ez = load ptr, ptr %i.t, align 8, !tbaa !490
  %i.fa = load i32, ptr %i.u, align 8, !tbaa !591
  %i.fb = tail call noundef zeroext i1 (ptr, ptr, ptr, ...) @_ZN11hb_buffer_t7messageEP9hb_font_tPKcz(ptr noundef nonnull align 8 dereferenceable(276) %i.ey, ptr noundef %i.ez, ptr noundef nonnull @.str.369, i32 noundef %i.fa) ; 0 uses
  %i.fc = load ptr, ptr %i.m, align 8, !tbaa !492
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 88
  %i.fe = load i8, ptr %i.fd, align 8, !tbaa !584, !range !378, !noundef !291
  %i.ff = trunc nuw i8 %i.fe to i1
  br i1 %i.ff, label %"_ZNK4$_54clI13hb_map_iter_tI17hb_sorted_array_tIKN12hb_aat_map_t13range_flags_tEEZNK3AAT5ChainINS7_13ObsoleteTypesEE5applyEPNS7_22hb_aat_apply_context_tEPKNS7_33hb_aat_layout_chain_accelerator_tEEUlS4_E_L24hb_function_sortedness_t0ELPv0EERK3$_8SM_TnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELSI_0EEEbOSO_OT0_OT1_.exit.thread", label %.critedge, !prof !266

"_ZNK4$_54clI13hb_map_iter_tI17hb_sorted_array_tIKN12hb_aat_map_t13range_flags_tEEZNK3AAT5ChainINS7_13ObsoleteTypesEE5applyEPNS7_22hb_aat_apply_context_tEPKNS7_33hb_aat_layout_chain_accelerator_tEEUlS4_E_L24hb_function_sortedness_t0ELPv0EERK3$_8SM_TnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELSI_0EEEbOSO_OT0_OT1_.exit.thread": ; preds = %_ZNR9hb_iter_tI13hb_map_iter_tI17hb_sorted_array_tIKN12hb_aat_map_t13range_flags_tEEZNK3AAT5ChainINS6_13ObsoleteTypesEE5applyEPNS6_22hb_aat_apply_context_tEPKNS6_33hb_aat_layout_chain_accelerator_tEEUlS3_E_L24hb_function_sortedness_t0ELPv0EEbEppEv.exit.i, %.lr.ph.split, %bb.o, %bb.k, %bb.b, %_ZNK3AAT22hb_aat_apply_context_t25buffer_intersects_machineEv.exit.thread
  %i.fg = load i16, ptr %.04794, align 1, !tbaa !281
  %i.fh = tail call noundef i16 @llvm.bswap.i16(i16 %i.fg)
  %i.fi = zext i16 %i.fh to i64
  %i.fj = getelementptr inbounds nuw i8, ptr %.04794, i64 %i.fi
  %i.fk = load i32, ptr %i.u, align 8, !tbaa !591
  %i.fl = add i32 %i.fk, 1
  store i32 %i.fl, ptr %i.u, align 8, !tbaa !591
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %.lr.ph.split, !llvm.loop !5626

.critedge:                                        ; preds = %"_ZNK4$_54clI13hb_map_iter_tI17hb_sorted_array_tIKN12hb_aat_map_t13range_flags_tEEZNK3AAT5ChainINS7_13ObsoleteTypesEE5applyEPNS7_22hb_aat_apply_context_tEPKNS7_33hb_aat_layout_chain_accelerator_tEEUlS4_E_L24hb_function_sortedness_t0ELPv0EERK3$_8SM_TnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELSI_0EEEbOSO_OT0_OT1_.exit.thread", %bb.o, %.lr.ph.split.us, %bb.a
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 140 ; 3 uses
  %i.fn = load i8, ptr %i.fm, align 4, !tbaa !1674, !range !378, !noundef !291
  %i.fo = trunc nuw i8 %i.fn to i1
  br i1 %i.fo, label %bb.p, label %bb.r

bb.p:                                             ; preds = %.critedge
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !492 ; 4 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 96 ; 2 uses
  %i.fs = load i32, ptr %i.fr, align 8, !tbaa !605 ; 4 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fq, i64 112
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !587 ; 2 uses
  %i.fv = icmp ult i32 %i.fs, 2
  br i1 %i.fv, label %_ZN10hb_array_tI15hb_glyph_info_tE7reverseEjj.exit.i.i.i69, label %.lr.ph.preheader.i.i.i.i62

.lr.ph.preheader.i.i.i.i62:                       ; preds = %bb.p
  %i.fw = lshr i32 %i.fs, 1
  %zext.i.i63 = zext nneg i32 %i.fw to i64
  br label %.lr.ph.i.i.i.i64

.lr.ph.i.i.i.i64:                                 ; preds = %.lr.ph.i.i.i.i64, %.lr.ph.preheader.i.i.i.i62
  %indvars.iv.i.i.i.i65 = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i62 ], [ %indvars.iv.next.i.i.i.i68, %.lr.ph.i.i.i.i64 ] ; 2 uses
  %.0.in17.i.i.i.i66 = phi i32 [ %i.fs, %.lr.ph.preheader.i.i.i.i62 ], [ %.0.i.i.i.i67, %.lr.ph.i.i.i.i64 ]
  %.0.i.i.i.i67 = add i32 %.0.in17.i.i.i.i66, -1  ; 2 uses
  %i.fx = zext i32 %.0.i.i.i.i67 to i64
  %i.fy = getelementptr inbounds nuw [20 x i8], ptr %i.fu, i64 %i.fx ; 2 uses
  %i.fz = getelementptr inbounds nuw [20 x i8], ptr %i.fu, i64 %indvars.iv.i.i.i.i65 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %4, ptr noundef nonnull align 4 dereferenceable(20) %i.fy, i64 20, i1 false), !tbaa.struct !608
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.fy, ptr noundef nonnull align 4 dereferenceable(20) %i.fz, i64 20, i1 false), !tbaa.struct !608
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.fz, ptr noundef nonnull align 4 dereferenceable(20) %4, i64 20, i1 false), !tbaa.struct !608
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %indvars.iv.next.i.i.i.i68 = add nuw nsw i64 %indvars.iv.i.i.i.i65, 1 ; 2 uses
  %i.ga = icmp eq i64 %indvars.iv.next.i.i.i.i68, %zext.i.i63
  br i1 %i.ga, label %_ZN10hb_array_tI15hb_glyph_info_tE7reverseEjj.exit.i.i.i69, label %.lr.ph.i.i.i.i64, !llvm.loop !22

_ZN10hb_array_tI15hb_glyph_info_tE7reverseEjj.exit.i.i.i69: ; preds = %.lr.ph.i.i.i.i64, %bb.p
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fq, i64 90
  %i.gc = load i8, ptr %i.gb, align 2, !tbaa !630, !range !378, !noundef !291
  %i.gd = trunc nuw i8 %i.gc to i1
  br i1 %i.gd, label %bb.q, label %_ZN3AAT22hb_aat_apply_context_t14reverse_bufferEv.exit78

bb.q:                                             ; preds = %_ZN10hb_array_tI15hb_glyph_info_tE7reverseEjj.exit.i.i.i69
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fq, i64 128
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !609 ; 2 uses
  %i.gg = load i32, ptr %i.fr, align 8, !tbaa !605
  %.sroa.speculated.i5.i.i.i70 = tail call i32 @llvm.umin.i32(i32 %i.fs, i32 %i.gg) ; 3 uses
  %i.gh = icmp ult i32 %.sroa.speculated.i5.i.i.i70, 2
  br i1 %i.gh, label %_ZN3AAT22hb_aat_apply_context_t14reverse_bufferEv.exit78, label %.lr.ph.preheader.i6.i.i.i71

.lr.ph.preheader.i6.i.i.i71:                      ; preds = %bb.q
  %i.gi = lshr i32 %.sroa.speculated.i5.i.i.i70, 1
  %zext1.i.i72 = zext nneg i32 %i.gi to i64
  br label %.lr.ph.i8.i.i.i73

.lr.ph.i8.i.i.i73:                                ; preds = %.lr.ph.i8.i.i.i73, %.lr.ph.preheader.i6.i.i.i71
  %indvars.iv.i9.i.i.i74 = phi i64 [ 0, %.lr.ph.preheader.i6.i.i.i71 ], [ %indvars.iv.next.i12.i.i.i77, %.lr.ph.i8.i.i.i73 ] ; 2 uses
  %.0.in17.i10.i.i.i75 = phi i32 [ %.sroa.speculated.i5.i.i.i70, %.lr.ph.preheader.i6.i.i.i71 ], [ %.0.i11.i.i.i76, %.lr.ph.i8.i.i.i73 ]
  %.0.i11.i.i.i76 = add i32 %.0.in17.i10.i.i.i75, -1 ; 2 uses
  %i.gj = zext i32 %.0.i11.i.i.i76 to i64
  %i.gk = getelementptr inbounds nuw [20 x i8], ptr %i.gf, i64 %i.gj ; 2 uses
  %i.gl = getelementptr inbounds nuw [20 x i8], ptr %i.gf, i64 %indvars.iv.i9.i.i.i74 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %3, ptr noundef nonnull align 4 dereferenceable(20) %i.gk, i64 20, i1 false), !tbaa.struct !610
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.gk, ptr noundef nonnull align 4 dereferenceable(20) %i.gl, i64 20, i1 false), !tbaa.struct !610
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.gl, ptr noundef nonnull align 4 dereferenceable(20) %3, i64 20, i1 false), !tbaa.struct !610
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %indvars.iv.next.i12.i.i.i77 = add nuw nsw i64 %indvars.iv.i9.i.i.i74, 1 ; 2 uses
  %i.gm = icmp eq i64 %indvars.iv.next.i12.i.i.i77, %zext1.i.i72
  br i1 %i.gm, label %_ZN3AAT22hb_aat_apply_context_t14reverse_bufferEv.exit78, label %.lr.ph.i8.i.i.i73, !llvm.loop !23

_ZN3AAT22hb_aat_apply_context_t14reverse_bufferEv.exit78: ; preds = %.lr.ph.i8.i.i.i73, %_ZN10hb_array_tI15hb_glyph_info_tE7reverseEjj.exit.i.i.i69, %bb.q
  %i.gn = load i8, ptr %i.fm, align 4, !tbaa !1674, !range !378, !noundef !291
  %i.go = xor i8 %i.gn, 1
  store i8 %i.go, ptr %i.fm, align 4, !tbaa !1674
  br label %bb.r

bb.r:                                             ; preds = %_ZN3AAT22hb_aat_apply_context_t14reverse_bufferEv.exit78, %.critedge
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN3AAT33hb_aat_layout_chain_accelerator_t6createINS_5ChainINS_13ObsoleteTypesEEEEEPS0_RKT_j(ptr noundef nonnull align 1 dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"struct.AAT::hb_accelerate_subtables_context_t", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.b = load i16, ptr %i.a, align 1, !tbaa !281  ; 2 uses
  %i.c = tail call noundef i16 @llvm.bswap.i16(i16 %i.b)
  %i.d = zext i16 %i.c to i32                     ; 3 uses
  %i.e = mul nuw nsw i32 %i.d, 560
  %i.f = or disjoint i32 %i.e, 8
  %i.g = zext nneg i32 %i.f to i64
  %i.h = tail call noalias noundef ptr @calloc(i64 noundef 1, i64 noundef %i.g) #60 ; 4 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.c, label %bb.b, !prof !265

bb.b:                                             ; preds = %bb.a
  store i32 %i.d, ptr %i.h, align 8, !tbaa !1928
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #59
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i32 0, ptr %2, align 8, !tbaa !1932
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.i, ptr %i.j, align 8, !tbaa !1935
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %1, ptr %i.k, align 8, !tbaa !1936
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 0, ptr %i.l, align 4, !tbaa !1937
  %.not11.not.i = icmp eq i16 %i.b, 0
  br i1 %.not11.not.i, label %_ZNK3AAT5ChainINS_13ObsoleteTypesEE8dispatchINS_33hb_accelerate_subtables_context_tEJEEENT_8return_tEPS5_DpOT0_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load i16, ptr %i.n, align 1, !tbaa !281
  %i.p = tail call noundef i16 @llvm.bswap.i16(i16 %i.o)
  %i.q = zext i16 %i.p to i64
  %i.r = mul nuw nsw i64 %i.q, 12
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.r
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.0813.i = phi i32 [ %i.x, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ]
  %.0912.i = phi ptr [ %i.w, %.lr.ph.i ], [ %i.s, %.lr.ph.preheader.i ] ; 3 uses
  call void @_ZNK3AAT13ChainSubtableINS_13ObsoleteTypesEE8dispatchINS_33hb_accelerate_subtables_context_tEJEEENT_8return_tEPS5_DpOT0_(ptr noundef nonnull align 1 dereferenceable(22) %.0912.i, ptr noundef nonnull %2)
  %i.t = load i16, ptr %.0912.i, align 1, !tbaa !281
  %i.u = call noundef i16 @llvm.bswap.i16(i16 %i.t)
  %i.v = zext i16 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %.0912.i, i64 %i.v
  %i.x = add nuw nsw i32 %.0813.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.x, %i.d
  br i1 %exitcond.not.i, label %_ZNK3AAT5ChainINS_13ObsoleteTypesEE8dispatchINS_33hb_accelerate_subtables_context_tEJEEENT_8return_tEPS5_DpOT0_.exit, label %.lr.ph.i, !llvm.loop !5627

_ZNK3AAT5ChainINS_13ObsoleteTypesEE8dispatchINS_33hb_accelerate_subtables_context_tEJEEENT_8return_tEPS5_DpOT0_.exit: ; preds = %.lr.ph.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #59
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %_ZNK3AAT5ChainINS_13ObsoleteTypesEE8dispatchINS_33hb_accelerate_subtables_context_tEJEEENT_8return_tEPS5_DpOT0_.exit
  ret ptr %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK3AAT13ChainSubtableINS_13ObsoleteTypesEE8dispatchINS_33hb_accelerate_subtables_context_tEJEEENT_8return_tEPS5_DpOT0_(ptr noundef nonnull align 1 dereferenceable(22) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3
  %trunc = load i8, ptr %i.a, align 1, !tbaa !281
  switch i8 %trunc, label %_ZN3AAT33hb_accelerate_subtables_context_t8dispatchINS_21RearrangementSubtableINS_13ObsoleteTypesEEEEE10hb_empty_tRKT_.exit [
    i8 0, label %bb.b
    i8 1, label %bb.d
    i8 2, label %bb.f
    i8 4, label %bb.h
    i8 5, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !277
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1935
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !1937 ; 2 uses
  %i.g = add i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 4, !tbaa !1937
  %i.h = zext i32 %i.f to i64
  %i.i = getelementptr inbounds nuw [560 x i8], ptr %i.d, i64 %i.h ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load i32, ptr %i.j, align 8, !tbaa !1936
  store i8 1, ptr %i.i, align 8, !tbaa !548
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  store i32 0, ptr %i.l, align 4, !tbaa !547
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store atomic i32 0, ptr %i.m monotonic, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, i8 0, i64 32, i1 false)
  tail call void @_ZNK3AAT10StateTableINS_13ObsoleteTypesEvE22collect_initial_glyphsI12hb_bit_set_tNS_21RearrangementSubtableIS1_EEEEvRT_jRKT0_(ptr noundef nonnull align 1 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(560) %i.i, i32 noundef %i.k, ptr noundef nonnull align 1 dereferenceable(8) %i.b)
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 8 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.0.idx8.i.i.i = phi i64 [ 0, %bb.b ], [ %.0.add.i.i.i.7, %bb.c ] ; 9 uses
  %.0.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 %.0.idx8.i.i.i
  store atomic i16 -1, ptr %.0.ptr.i.i.i monotonic, align 2
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %.0.idx8.i.i.i
  %.0.ptr.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  store atomic i16 -1, ptr %.0.ptr.i.i.i.1 monotonic, align 2
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %.0.idx8.i.i.i
  %.0.ptr.i.i.i.2 = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  store atomic i16 -1, ptr %.0.ptr.i.i.i.2 monotonic, align 2
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %.0.idx8.i.i.i
  %.0.ptr.i.i.i.3 = getelementptr inbounds nuw i8, ptr %i.r, i64 6
  store atomic i16 -1, ptr %.0.ptr.i.i.i.3 monotonic, align 2
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 %.0.idx8.i.i.i
  %.0.ptr.i.i.i.4 = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store atomic i16 -1, ptr %.0.ptr.i.i.i.4 monotonic, align 2
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 %.0.idx8.i.i.i
  %.0.ptr.i.i.i.5 = getelementptr inbounds nuw i8, ptr %i.t, i64 10
  store atomic i16 -1, ptr %.0.ptr.i.i.i.5 monotonic, align 2
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 %.0.idx8.i.i.i
  %.0.ptr.i.i.i.6 = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store atomic i16 -1, ptr %.0.ptr.i.i.i.6 monotonic, align 2
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 %.0.idx8.i.i.i
  %.0.ptr.i.i.i.7 = getelementptr inbounds nuw i8, ptr %i.v, i64 14
  store atomic i16 -1, ptr %.0.ptr.i.i.i.7 monotonic, align 2
  %.0.add.i.i.i.7 = add nuw nsw i64 %.0.idx8.i.i.i, 16 ; 2 uses
  %.not.i.i.i.7 = icmp eq i64 %.0.add.i.i.i.7, 512
  br i1 %.not.i.i.i.7, label %_ZN3AAT33hb_accelerate_subtables_context_t8dispatchINS_21RearrangementSubtableINS_13ObsoleteTypesEEEEE10hb_empty_tRKT_.exit, label %bb.c

bb.d:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !277
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1935
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !1937 ; 2 uses
  %i.ab = add i32 %i.aa, 1
  store i32 %i.ab, ptr %i.z, align 4, !tbaa !1937
  %i.ac = zext i32 %i.aa to i64
  %i.ad = getelementptr inbounds nuw [560 x i8], ptr %i.y, i64 %i.ac ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !1936
  store i8 1, ptr %i.ad, align 8, !tbaa !548
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  store i32 0, ptr %i.ag, align 4, !tbaa !547
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store atomic i32 0, ptr %i.ah monotonic, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, i8 0, i64 32, i1 false)
  tail call void @_ZNK3AAT10StateTableINS_13ObsoleteTypesENS_18ContextualSubtableIS1_E9EntryDataEE22collect_initial_glyphsI12hb_bit_set_tS3_EEvRT_jRKT0_(ptr noundef nonnull align 1 dereferenceable(10) %i.w, ptr noundef nonnull align 8 dereferenceable(560) %i.ad, i32 noundef %i.af, ptr noundef nonnull align 1 dereferenceable(10) %i.w)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 48 ; 8 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.0.idx8.i.i.i6 = phi i64 [ 0, %bb.d ], [ %.0.add.i.i.i8.7, %bb.e ] ; 9 uses
  %.0.ptr.i.i.i7 = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.0.idx8.i.i.i6
  store atomic i16 -1, ptr %.0.ptr.i.i.i7 monotonic, align 2
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.0.idx8.i.i.i6
  %.0.ptr.i.i.i7.1 = getelementptr inbounds nuw i8, ptr %i.ak, i64 2
  store atomic i16 -1, ptr %.0.ptr.i.i.i7.1 monotonic, align 2
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.0.idx8.i.i.i6
  %.0.ptr.i.i.i7.2 = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  store atomic i16 -1, ptr %.0.ptr.i.i.i7.2 monotonic, align 2
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.0.idx8.i.i.i6
  %.0.ptr.i.i.i7.3 = getelementptr inbounds nuw i8, ptr %i.am, i64 6
  store atomic i16 -1, ptr %.0.ptr.i.i.i7.3 monotonic, align 2
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.0.idx8.i.i.i6
  %.0.ptr.i.i.i7.4 = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store atomic i16 -1, ptr %.0.ptr.i.i.i7.4 monotonic, align 2
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.0.idx8.i.i.i6
  %.0.ptr.i.i.i7.5 = getelementptr inbounds nuw i8, ptr %i.ao, i64 10
  store atomic i16 -1, ptr %.0.ptr.i.i.i7.5 monotonic, align 2
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.0.idx8.i.i.i6
  %.0.ptr.i.i.i7.6 = getelementptr inbounds nuw i8, ptr %i.ap, i64 12
  store atomic i16 -1, ptr %.0.ptr.i.i.i7.6 monotonic, align 2
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.0.idx8.i.i.i6
  %.0.ptr.i.i.i7.7 = getelementptr inbounds nuw i8, ptr %i.aq, i64 14
  store atomic i16 -1, ptr %.0.ptr.i.i.i7.7 monotonic, align 2
  %.0.add.i.i.i8.7 = add nuw nsw i64 %.0.idx8.i.i.i6, 16 ; 2 uses
  %.not.i.i.i9.7 = icmp eq i64 %.0.add.i.i.i8.7, 512
  br i1 %.not.i.i.i9.7, label %_ZN3AAT33hb_accelerate_subtables_context_t8dispatchINS_21RearrangementSubtableINS_13ObsoleteTypesEEEEE10hb_empty_tRKT_.exit, label %bb.e

bb.f:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !277
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !1935
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !1937 ; 2 uses
  %i.aw = add i32 %i.av, 1
  store i32 %i.aw, ptr %i.au, align 4, !tbaa !1937
  %i.ax = zext i32 %i.av to i64
  %i.ay = getelementptr inbounds nuw [560 x i8], ptr %i.at, i64 %i.ax ; 6 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !1936
  store i8 1, ptr %i.ay, align 8, !tbaa !548
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  store i32 0, ptr %i.bb, align 4, !tbaa !547
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store atomic i32 0, ptr %i.bc monotonic, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bd, i8 0, i64 32, i1 false)
  tail call void @_ZNK3AAT10StateTableINS_13ObsoleteTypesEvE22collect_initial_glyphsI12hb_bit_set_tNS_16LigatureSubtableIS1_EEEEvRT_jRKT0_(ptr noundef nonnull align 1 dereferenceable(14) %i.ar, ptr noundef nonnull align 8 dereferenceable(560) %i.ay, i32 noundef %i.ba, ptr noundef nonnull align 1 dereferenceable(14) %i.ar)
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 48 ; 8 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %.0.idx8.i.i.i10 = phi i64 [ 0, %bb.f ], [ %.0.add.i.i.i12.7, %bb.g ] ; 9 uses
  %.0.ptr.i.i.i11 = getelementptr inbounds nuw i8, ptr %i.be, i64 %.0.idx8.i.i.i10
  store atomic i16 -1, ptr %.0.ptr.i.i.i11 monotonic, align 2
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %.0.idx8.i.i.i10
  %.0.ptr.i.i.i11.1 = getelementptr inbounds nuw i8, ptr %i.bf, i64 2
  store atomic i16 -1, ptr %.0.ptr.i.i.i11.1 monotonic, align 2
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 %.0.idx8.i.i.i10
  %.0.ptr.i.i.i11.2 = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  store atomic i16 -1, ptr %.0.ptr.i.i.i11.2 monotonic, align 2
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 %.0.idx8.i.i.i10
  %.0.ptr.i.i.i11.3 = getelementptr inbounds nuw i8, ptr %i.bh, i64 6
  store atomic i16 -1, ptr %.0.ptr.i.i.i11.3 monotonic, align 2
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 %.0.idx8.i.i.i10
  %.0.ptr.i.i.i11.4 = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store atomic i16 -1, ptr %.0.ptr.i.i.i11.4 monotonic, align 2
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 %.0.idx8.i.i.i10
  %.0.ptr.i.i.i11.5 = getelementptr inbounds nuw i8, ptr %i.bj, i64 10
  store atomic i16 -1, ptr %.0.ptr.i.i.i11.5 monotonic, align 2
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 %.0.idx8.i.i.i10
  %.0.ptr.i.i.i11.6 = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  store atomic i16 -1, ptr %.0.ptr.i.i.i11.6 monotonic, align 2
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 %.0.idx8.i.i.i10
  %.0.ptr.i.i.i11.7 = getelementptr inbounds nuw i8, ptr %i.bl, i64 14
  store atomic i16 -1, ptr %.0.ptr.i.i.i11.7 monotonic, align 2
  %.0.add.i.i.i12.7 = add nuw nsw i64 %.0.idx8.i.i.i10, 16 ; 2 uses
  %.not.i.i.i13.7 = icmp eq i64 %.0.add.i.i.i12.7, 512
  br i1 %.not.i.i.i13.7, label %_ZN3AAT33hb_accelerate_subtables_context_t8dispatchINS_21RearrangementSubtableINS_13ObsoleteTypesEEEEE10hb_empty_tRKT_.exit, label %bb.g

bb.h:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !277
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !1935
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !1937 ; 2 uses
  %i.br = add i32 %i.bq, 1
  store i32 %i.br, ptr %i.bp, align 4, !tbaa !1937
  %i.bs = zext i32 %i.bq to i64
  %i.bt = getelementptr inbounds nuw [560 x i8], ptr %i.bo, i64 %i.bs ; 6 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !1936
  store i8 1, ptr %i.bt, align 8, !tbaa !548
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  store i32 0, ptr %i.bw, align 4, !tbaa !547
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store atomic i32 0, ptr %i.bx monotonic, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.by, i8 0, i64 32, i1 false)
  tail call void @_ZNK3AAT6LookupIN2OT11HBGlyphID16EE14collect_glyphsI12hb_bit_set_tEEvRT_j(ptr noundef nonnull align 1 dereferenceable(13) %i.bm, ptr noundef nonnull align 8 dereferenceable(560) %i.bt, i32 noundef %i.bv)
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bt, i64 48 ; 8 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %.0.idx8.i.i.i14 = phi i64 [ 0, %bb.h ], [ %.0.add.i.i.i16.7, %bb.i ] ; 9 uses
  %.0.ptr.i.i.i15 = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.0.idx8.i.i.i14
  store atomic i16 -1, ptr %.0.ptr.i.i.i15 monotonic, align 2
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.0.idx8.i.i.i14
  %.0.ptr.i.i.i15.1 = getelementptr inbounds nuw i8, ptr %i.ca, i64 2
  store atomic i16 -1, ptr %.0.ptr.i.i.i15.1 monotonic, align 2
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.0.idx8.i.i.i14
  %.0.ptr.i.i.i15.2 = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
end_hunk_4
begin_hunk_5_@_ZNK3AAT10StateTableINS_13ObsoleteTypesEvE22collect_initial_glyphsI12hb_bit_set_tNS_16LigatureSubtableIS1_EEEEvRT_jRKT0_:bb.a
bb.i:                                             ; preds = %bb.h
  %i.bl = load i16, ptr %i.av, align 1, !tbaa !281
  %i.bm = tail call noundef i16 @llvm.bswap.i16(i16 %i.bl)
  %i.bn = zext i16 %i.bm to i32
  %i.bo = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.bp = add nuw nsw i32 %i.bn, %i.bo
  tail call void @_ZN12hb_bit_set_t3addEj(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.bp)
  %.pre.i = load i16, ptr %i.aw, align 1, !tbaa !281
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bq = phi i16 [ %i.az, %bb.h ], [ %.pre.i, %bb.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.br = tail call noundef i16 @llvm.bswap.i16(i16 %i.bq)
  %i.bs = zext i16 %i.br to i64
  %i.bt = icmp samesign ult i64 %indvars.iv.next.i, %i.bs
  br i1 %i.bt, label %bb.h, label %_ZNK3AAT10ClassTableIN2OT7NumTypeILb1EhLj1EEEE23collect_glyphs_filteredI12hb_bit_set_t13hb_bit_page_tEEvRT_jRKT0_.exit, !llvm.loop !200

_ZNK3AAT10ClassTableIN2OT7NumTypeILb1EhLj1EEEE23collect_glyphs_filteredI12hb_bit_set_t13hb_bit_page_tEEvRT_jRKT0_.exit: ; preds = %bb.j, %._crit_edge.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #59
  br label %bb.k

bb.k:                                             ; preds = %_ZNK3AAT10ClassTableIN2OT7NumTypeILb1EhLj1EEEE23collect_glyphs_filteredI12hb_bit_set_t13hb_bit_page_tEEvRT_jRKT0_.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK3AAT10StateTableINS_13ObsoleteTypesENS_17InsertionSubtableIS1_E9EntryDataEE22collect_initial_glyphsI12hb_bit_set_tS3_EEvRT_jRKT0_(ptr noundef nonnull align 1 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %2, ptr noundef nonnull align 1 dereferenceable(10) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %struct.hb_bit_page_t, align 8      ; 3 uses
  %i.a = load i16, ptr %0, align 1, !tbaa !281    ; 2 uses
  %i.b = tail call noundef i16 @llvm.bswap.i16(i16 %i.a) ; 3 uses
  %i.c = zext i16 %i.b to i32
  %i.d = icmp ugt i16 %i.b, 512
  br i1 %i.d, label %bb.b, label %bb.c, !prof !265

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.f = load i16, ptr %i.e, align 1, !tbaa !281
  %i.g = tail call noundef i16 @llvm.bswap.i16(i16 %i.f)
  %i.h = zext i16 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %i.h
  tail call void @_ZNK3AAT10ClassTableIN2OT7NumTypeILb1EhLj1EEEE14collect_glyphsI12hb_bit_set_tEEvRT_j(ptr noundef nonnull align 1 dereferenceable(5) %i.i, ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %2)
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #59
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.j, i8 0, i64 64, i1 false), !tbaa !1238
  %.not24 = icmp eq i16 %i.a, 0
  br i1 %.not24, label %._crit_edge.thread, label %_ZNK3AAT10StateTableINS_13ObsoleteTypesENS_17InsertionSubtableIS1_E9EntryDataEE9get_entryEij.exit.lr.ph

_ZNK3AAT10StateTableINS_13ObsoleteTypesENS_17InsertionSubtableIS1_E9EntryDataEE9get_entryEij.exit.lr.ph: ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.l = load i16, ptr %i.k, align 1, !tbaa !281
  %i.m = tail call noundef i16 @llvm.bswap.i16(i16 %i.l) ; 2 uses
  %i.n = zext i16 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.q = load i16, ptr %i.p, align 1, !tbaa !281
  %i.r = tail call noundef i16 @llvm.bswap.i16(i16 %i.q)
  %i.s = zext i16 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %i.s
  %i.u = zext i16 %i.m to i32
  %wide.trip.count = zext nneg i16 %i.b to i64
  br label %_ZNK3AAT10StateTableINS_13ObsoleteTypesENS_17InsertionSubtableIS1_E9EntryDataEE9get_entryEij.exit

._crit_edge:                                      ; preds = %_ZNK3AAT17InsertionSubtableINS_13ObsoleteTypesEE13is_actionableERKNS_5EntryINS2_9EntryDataEEE.exit.thread20
  %.pre = load i64, ptr %i.j, align 8, !tbaa !1238
  %i.v = and i64 %.pre, 4
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %._crit_edge.thread, label %bb.g

_ZNK3AAT10StateTableINS_13ObsoleteTypesENS_17InsertionSubtableIS1_E9EntryDataEE9get_entryEij.exit: ; preds = %_ZNK3AAT10StateTableINS_13ObsoleteTypesENS_17InsertionSubtableIS1_E9EntryDataEE9get_entryEij.exit.lr.ph, %_ZNK3AAT17InsertionSubtableINS_13ObsoleteTypesEE13is_actionableERKNS_5EntryINS2_9EntryDataEEE.exit.thread20
  %indvars.iv = phi i64 [ 0, %_ZNK3AAT10StateTableINS_13ObsoleteTypesENS_17InsertionSubtableIS1_E9EntryDataEE9get_entryEij.exit.lr.ph ], [ %indvars.iv.next, %_ZNK3AAT17InsertionSubtableINS_13ObsoleteTypesEE13is_actionableERKNS_5EntryINS2_9EntryDataEEE.exit.thread20 ] ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 %indvars.iv
  %i.y = load i8, ptr %i.x, align 1, !tbaa !301
  %i.z = zext i8 %i.y to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.z ; 4 uses
  %i.ab = load i16, ptr %i.aa, align 1, !tbaa !281
  %i.ac = tail call noundef i16 @llvm.bswap.i16(i16 %i.ab)
  %i.ad = zext i16 %i.ac to i32
  %i.ae = sub nsw i32 %i.ad, %i.u
  %i.af = sdiv i32 %i.ae, %i.c
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.d, label %_ZNK3AAT17InsertionSubtableINS_13ObsoleteTypesEE13is_actionableERKNS_5EntryINS2_9EntryDataEEE.exit.thread

bb.d:                                             ; preds = %_ZNK3AAT10StateTableINS_13ObsoleteTypesENS_17InsertionSubtableIS1_E9EntryDataEE9get_entryEij.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 2
  %i.ai = load i16, ptr %i.ah, align 1, !tbaa !281 ; 2 uses
  %.mask.i = and i16 %i.ai, 128
  %.not21 = icmp eq i16 %.mask.i, 0
  br i1 %.not21, label %bb.e, label %_ZNK3AAT17InsertionSubtableINS_13ObsoleteTypesEE13is_actionableERKNS_5EntryINS2_9EntryDataEEE.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.aj = and i16 %i.ai, -253
  %.not.i17 = icmp eq i16 %i.aj, 0
  br i1 %.not.i17, label %_ZNK3AAT17InsertionSubtableINS_13ObsoleteTypesEE13is_actionableERKNS_5EntryINS2_9EntryDataEEE.exit.thread20, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.al = load i16, ptr %i.ak, align 1, !tbaa !281
  %.not3.i = icmp eq i16 %i.al, -1
  br i1 %.not3.i, label %_ZNK3AAT17InsertionSubtableINS_13ObsoleteTypesEE13is_actionableERKNS_5EntryINS2_9EntryDataEEE.exit, label %_ZNK3AAT17InsertionSubtableINS_13ObsoleteTypesEE13is_actionableERKNS_5EntryINS2_9EntryDataEEE.exit.thread

_ZNK3AAT17InsertionSubtableINS_13ObsoleteTypesEE13is_actionableERKNS_5EntryINS2_9EntryDataEEE.exit: ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %i.aa, i64 6
  %i.an = load i16, ptr %i.am, align 1, !tbaa !281
  %.not22 = icmp eq i16 %i.an, -1
  br i1 %.not22, label %_ZNK3AAT17InsertionSubtableINS_13ObsoleteTypesEE13is_actionableERKNS_5EntryINS2_9EntryDataEEE.exit.thread20, label %_ZNK3AAT17InsertionSubtableINS_13ObsoleteTypesEE13is_actionableERKNS_5EntryINS2_9EntryDataEEE.exit.thread

_ZNK3AAT17InsertionSubtableINS_13ObsoleteTypesEE13is_actionableERKNS_5EntryINS2_9EntryDataEEE.exit.thread: ; preds = %bb.f, %_ZNK3AAT17InsertionSubtableINS_13ObsoleteTypesEE13is_actionableERKNS_5EntryINS2_9EntryDataEEE.exit, %bb.d, %_ZNK3AAT10StateTableINS_13ObsoleteTypesENS_17InsertionSubtableIS1_E9EntryDataEE9get_entryEij.exit
  %i.ao = and i64 %indvars.iv, 63
  %i.ap = shl nuw i64 1, %i.ao
  %i.aq = lshr i64 %indvars.iv, 6
  %i.ar = and i64 %i.aq, 7
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.ar ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !1238
  %i.au = or i64 %i.at, %i.ap
  store i64 %i.au, ptr %i.as, align 8, !tbaa !1238
  br label %_ZNK3AAT17InsertionSubtableINS_13ObsoleteTypesEE13is_actionableERKNS_5EntryINS2_9EntryDataEEE.exit.thread20

_ZNK3AAT17InsertionSubtableINS_13ObsoleteTypesEE13is_actionableERKNS_5EntryINS2_9EntryDataEEE.exit.thread20: ; preds = %bb.e, %_ZNK3AAT17InsertionSubtableINS_13ObsoleteTypesEE13is_actionableERKNS_5EntryINS2_9EntryDataEEE.exit, %_ZNK3AAT17InsertionSubtableINS_13ObsoleteTypesEE13is_actionableERKNS_5EntryINS2_9EntryDataEEE.exit.thread
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %_ZNK3AAT10StateTableINS_13ObsoleteTypesENS_17InsertionSubtableIS1_E9EntryDataEE9get_entryEij.exit, !llvm.loop !5632

bb.g:                                             ; preds = %._crit_edge
  tail call void @_ZN12hb_bit_set_t3addEj(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef 65535)
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.c, %bb.g, %._crit_edge
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.aw = load i16, ptr %i.av, align 1, !tbaa !281
  %i.ax = tail call noundef i16 @llvm.bswap.i16(i16 %i.aw)
  %i.ay = zext i16 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 %i.ay ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 2 ; 2 uses
  %i.bb = load i16, ptr %i.ba, align 1, !tbaa !281 ; 2 uses
  %.not7.i = icmp eq i16 %i.bb, 0
  br i1 %.not7.i, label %_ZNK3AAT10ClassTableIN2OT7NumTypeILb1EhLj1EEEE23collect_glyphs_filteredI12hb_bit_set_t13hb_bit_page_tEEvRT_jRKT0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge.thread
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %.lr.ph.i
  %i.bd = phi i16 [ %i.bb, %.lr.ph.i ], [ %i.bu, %bb.j ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.j ] ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 %indvars.iv.i
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !301
  %i.bg = zext i8 %i.bf to i32                    ; 2 uses
  %i.bh = lshr i32 %i.bg, 6
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.bi
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !1238
  %i.bl = and i32 %i.bg, 63
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = shl nuw i64 1, %i.bm
  %i.bo = and i64 %i.bn, %i.bk
  %.not.i18 = icmp eq i64 %i.bo, 0
  br i1 %.not.i18, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bp = load i16, ptr %i.az, align 1, !tbaa !281
  %i.bq = tail call noundef i16 @llvm.bswap.i16(i16 %i.bp)
  %i.br = zext i16 %i.bq to i32
  %i.bs = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.bt = add nuw nsw i32 %i.br, %i.bs
  tail call void @_ZN12hb_bit_set_t3addEj(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.bt)
  %.pre.i = load i16, ptr %i.ba, align 1, !tbaa !281
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bu = phi i16 [ %i.bd, %bb.h ], [ %.pre.i, %bb.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bv = tail call noundef i16 @llvm.bswap.i16(i16 %i.bu)
  %i.bw = zext i16 %i.bv to i64
  %i.bx = icmp samesign ult i64 %indvars.iv.next.i, %i.bw
  br i1 %i.bx, label %bb.h, label %_ZNK3AAT10ClassTableIN2OT7NumTypeILb1EhLj1EEEE23collect_glyphs_filteredI12hb_bit_set_t13hb_bit_page_tEEvRT_jRKT0_.exit, !llvm.loop !200

_ZNK3AAT10ClassTableIN2OT7NumTypeILb1EhLj1EEEE23collect_glyphs_filteredI12hb_bit_set_t13hb_bit_page_tEEvRT_jRKT0_.exit: ; preds = %bb.j, %._crit_edge.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #59
  br label %bb.k

bb.k:                                             ; preds = %_ZNK3AAT10ClassTableIN2OT7NumTypeILb1EhLj1EEEE23collect_glyphs_filteredI12hb_bit_set_t13hb_bit_page_tEEvRT_jRKT0_.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK3AAT13ChainSubtableINS_13ObsoleteTypesEE8dispatchINS_22hb_aat_apply_context_tEJEEENT_8return_tEPS5_DpOT0_(ptr noundef nonnull align 1 dereferenceable(22) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"struct.AAT::InsertionSubtable<AAT::ObsoleteTypes>::driver_context_t", align 8 ; 9 uses
  %3 = alloca %"struct.AAT::StateTableDriver.1872", align 8 ; 5 uses
  %4 = alloca %"struct.AAT::LigatureSubtable<AAT::ObsoleteTypes>::driver_context_t", align 8 ; 11 uses
  %5 = alloca %"struct.AAT::StateTableDriver.1870", align 8 ; 5 uses
  %6 = alloca %"struct.AAT::ContextualSubtable<AAT::ObsoleteTypes>::driver_context_t", align 8 ; 10 uses
  %7 = alloca %"struct.AAT::StateTableDriver.1868", align 8 ; 5 uses
  %8 = alloca %"struct.AAT::RearrangementSubtable<AAT::ObsoleteTypes>::driver_context_t", align 8 ; 8 uses
  %9 = alloca %"struct.AAT::StateTableDriver.1866", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3
  %trunc = load i8, ptr %i.a, align 1, !tbaa !281
  switch i8 %trunc, label %bb.k [
    i8 0, label %bb.b
    i8 1, label %bb.d
    i8 2, label %bb.f
    i8 4, label %bb.h
    i8 5, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !277
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #59
  store i8 0, ptr %8, align 8, !tbaa !5633
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.b, ptr %i.c, align 8, !tbaa !5634
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 0, ptr %i.d, align 8, !tbaa !1979
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i32 0, ptr %i.e, align 4, !tbaa !1980
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #59
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !491  ; 2 uses
  store ptr %i.b, ptr %9, align 8, !tbaa !1697
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load atomic i32, ptr %i.h monotonic, align 4 ; 2 uses
  %i.j = icmp eq i32 %i.i, -1
  br i1 %i.j, label %bb.c, label %_ZN3AAT22hb_aat_apply_context_t8dispatchINS_21RearrangementSubtableINS_13ObsoleteTypesEEEJEEEbRKT_DpOT0_.exit, !prof !265

bb.c:                                             ; preds = %bb.b
  %i.k = tail call noundef i32 @_ZNK9hb_face_t15load_num_glyphsEv(ptr noundef nonnull align 8 dereferenceable(448) %i.g), !inline_history !7
  br label %_ZN3AAT22hb_aat_apply_context_t8dispatchINS_21RearrangementSubtableINS_13ObsoleteTypesEEEJEEEbRKT_DpOT0_.exit

_ZN3AAT22hb_aat_apply_context_t8dispatchINS_21RearrangementSubtableINS_13ObsoleteTypesEEEJEEEbRKT_DpOT0_.exit: ; preds = %bb.b, %bb.c
  %.0.i.i.i.i = phi i32 [ %i.k, %bb.c ], [ %i.i, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %.0.i.i.i.i, ptr %i.l, align 8, !tbaa !5635
  call void @_ZN3AAT16StateTableDriverINS_13ObsoleteTypesEvNS_21RearrangementSubtableIS1_E5FlagsEE5driveINS3_16driver_context_tEEEvPT_PNS_22hb_aat_apply_context_tE(ptr noundef nonnull align 8 dereferenceable(12) %9, ptr noundef nonnull %8, ptr noundef nonnull align 8 dereferenceable(180) %1)
  %i.m = load i8, ptr %8, align 8, !tbaa !568, !range !378, !noundef !291
  %i.n = trunc nuw i8 %i.m to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #59
  br label %bb.k

bb.d:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !277
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #59
  store i8 0, ptr %6, align 8, !tbaa !1985
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %1, ptr %i.p, align 8, !tbaa !1986
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.o, ptr %i.q, align 8, !tbaa !1987
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i8 0, ptr %i.r, align 8, !tbaa !1988
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 28
  store i32 0, ptr %i.s, align 4, !tbaa !1989
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load i16, ptr %i.u, align 1, !tbaa !281
  %i.w = tail call noundef i16 @llvm.bswap.i16(i16 %i.v)
  %i.x = zext i16 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.x
  store ptr %i.y, ptr %i.t, align 8, !tbaa !5636
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #59
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !491 ; 2 uses
  store ptr %i.o, ptr %7, align 8, !tbaa !5637
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load atomic i32, ptr %i.ab monotonic, align 4 ; 2 uses
  %i.ad = icmp eq i32 %i.ac, -1
  br i1 %i.ad, label %bb.e, label %_ZN3AAT22hb_aat_apply_context_t8dispatchINS_18ContextualSubtableINS_13ObsoleteTypesEEEJEEEbRKT_DpOT0_.exit, !prof !265

bb.e:                                             ; preds = %bb.d
  %i.ae = tail call noundef i32 @_ZNK9hb_face_t15load_num_glyphsEv(ptr noundef nonnull align 8 dereferenceable(448) %i.aa), !inline_history !7
  br label %_ZN3AAT22hb_aat_apply_context_t8dispatchINS_18ContextualSubtableINS_13ObsoleteTypesEEEJEEEbRKT_DpOT0_.exit

_ZN3AAT22hb_aat_apply_context_t8dispatchINS_18ContextualSubtableINS_13ObsoleteTypesEEEJEEEbRKT_DpOT0_.exit: ; preds = %bb.d, %bb.e
  %.0.i.i.i.i7 = phi i32 [ %i.ae, %bb.e ], [ %i.ac, %bb.d ]
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %.0.i.i.i.i7, ptr %i.af, align 8, !tbaa !5638
  call void @_ZN3AAT16StateTableDriverINS_13ObsoleteTypesENS_18ContextualSubtableIS1_E9EntryDataENS3_5FlagsEE5driveINS3_16driver_context_tEEEvPT_PNS_22hb_aat_apply_context_tE(ptr noundef nonnull align 8 dereferenceable(12) %7, ptr noundef nonnull %6, ptr noundef nonnull align 8 dereferenceable(180) %1)
  %i.ag = load i8, ptr %6, align 8, !tbaa !568, !range !378, !noundef !291
  %i.ah = trunc nuw i8 %i.ag to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #59
  br label %bb.k

bb.f:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !277
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #59
  store i8 0, ptr %4, align 8, !tbaa !5639
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %1, ptr %i.aj, align 8, !tbaa !1994
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.ai, ptr %i.ak, align 8, !tbaa !1995
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.an = load i16, ptr %i.am, align 1, !tbaa !281
  %i.ao = tail call noundef i16 @llvm.bswap.i16(i16 %i.an)
  %i.ap = zext i16 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ap
  store ptr %i.aq, ptr %i.al, align 8, !tbaa !1961
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.at = load i16, ptr %i.as, align 1, !tbaa !281
  %i.au = tail call noundef i16 @llvm.bswap.i16(i16 %i.at)
  %i.av = zext i16 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.av
  store ptr %i.aw, ptr %i.ar, align 8, !tbaa !1962
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.az = load i16, ptr %i.ay, align 1, !tbaa !281
  %i.ba = tail call noundef i16 @llvm.bswap.i16(i16 %i.az)
  %i.bb = zext i16 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bb
  store ptr %i.bc, ptr %i.ax, align 8, !tbaa !1963
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i32 0, ptr %i.bd, align 8, !tbaa !1996
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #59
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !491 ; 2 uses
  store ptr %i.ai, ptr %5, align 8, !tbaa !1697
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bh = load atomic i32, ptr %i.bg monotonic, align 4 ; 2 uses
  %i.bi = icmp eq i32 %i.bh, -1
  br i1 %i.bi, label %bb.g, label %_ZN3AAT22hb_aat_apply_context_t8dispatchINS_16LigatureSubtableINS_13ObsoleteTypesEEEJEEEbRKT_DpOT0_.exit, !prof !265

bb.g:                                             ; preds = %bb.f
  %i.bj = tail call noundef i32 @_ZNK9hb_face_t15load_num_glyphsEv(ptr noundef nonnull align 8 dereferenceable(448) %i.bf), !inline_history !7
  br label %_ZN3AAT22hb_aat_apply_context_t8dispatchINS_16LigatureSubtableINS_13ObsoleteTypesEEEJEEEbRKT_DpOT0_.exit

_ZN3AAT22hb_aat_apply_context_t8dispatchINS_16LigatureSubtableINS_13ObsoleteTypesEEEJEEEbRKT_DpOT0_.exit: ; preds = %bb.f, %bb.g
  %.0.i.i.i.i8 = phi i32 [ %i.bj, %bb.g ], [ %i.bh, %bb.f ]
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %.0.i.i.i.i8, ptr %i.bk, align 8, !tbaa !5640
  call void @_ZN3AAT16StateTableDriverINS_13ObsoleteTypesEvNS_16LigatureSubtableIS1_E5FlagsEE5driveINS3_16driver_context_tEEEvPT_PNS_22hb_aat_apply_context_tE(ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef nonnull %4, ptr noundef nonnull align 8 dereferenceable(180) %1)
  %i.bl = load i8, ptr %4, align 8, !tbaa !568, !range !378, !noundef !291
  %i.bm = trunc nuw i8 %i.bl to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #59
  br label %bb.k

bb.h:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !277
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bo = tail call noundef zeroext i1 @_ZNK3AAT21NoncontextualSubtableINS_13ObsoleteTypesEE5applyEPNS_22hb_aat_apply_context_tE(ptr noundef nonnull align 1 dereferenceable(13) %i.bn, ptr noundef nonnull align 8 dereferenceable(180) %1)
  br label %bb.k

bb.i:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !277
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #59
  store i8 0, ptr %2, align 8, !tbaa !2000
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %1, ptr %i.bq, align 8, !tbaa !2001
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.bp, ptr %i.br, align 8, !tbaa !5641
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 0, ptr %i.bs, align 8, !tbaa !2002
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bv = load i16, ptr %i.bu, align 1, !tbaa !281
  %i.bw = tail call noundef i16 @llvm.bswap.i16(i16 %i.bv)
  %i.bx = zext i16 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bx
  store ptr %i.by, ptr %i.bt, align 8, !tbaa !1963
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #59
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !491 ; 2 uses
  store ptr %i.bp, ptr %3, align 8, !tbaa !5642
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cc = load atomic i32, ptr %i.cb monotonic, align 4 ; 2 uses
  %i.cd = icmp eq i32 %i.cc, -1
  br i1 %i.cd, label %bb.j, label %_ZN3AAT22hb_aat_apply_context_t8dispatchINS_17InsertionSubtableINS_13ObsoleteTypesEEEJEEEbRKT_DpOT0_.exit, !prof !265

bb.j:                                             ; preds = %bb.i
  %i.ce = tail call noundef i32 @_ZNK9hb_face_t15load_num_glyphsEv(ptr noundef nonnull align 8 dereferenceable(448) %i.ca), !inline_history !7
  br label %_ZN3AAT22hb_aat_apply_context_t8dispatchINS_17InsertionSubtableINS_13ObsoleteTypesEEEJEEEbRKT_DpOT0_.exit

_ZN3AAT22hb_aat_apply_context_t8dispatchINS_17InsertionSubtableINS_13ObsoleteTypesEEEJEEEbRKT_DpOT0_.exit: ; preds = %bb.i, %bb.j
  %.0.i.i.i.i9 = phi i32 [ %i.ce, %bb.j ], [ %i.cc, %bb.i ]
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.0.i.i.i.i9, ptr %i.cf, align 8, !tbaa !5643
  call void @_ZN3AAT16StateTableDriverINS_13ObsoleteTypesENS_17InsertionSubtableIS1_E9EntryDataENS3_5FlagsEE5driveINS3_16driver_context_tEEEvPT_PNS_22hb_aat_apply_context_tE(ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(180) %1)
  %i.cg = load i8, ptr %2, align 8, !tbaa !568, !range !378, !noundef !291
  %i.ch = trunc nuw i8 %i.cg to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #59
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %_ZN3AAT22hb_aat_apply_context_t8dispatchINS_17InsertionSubtableINS_13ObsoleteTypesEEEJEEEbRKT_DpOT0_.exit, %bb.h, %_ZN3AAT22hb_aat_apply_context_t8dispatchINS_16LigatureSubtableINS_13ObsoleteTypesEEEJEEEbRKT_DpOT0_.exit, %_ZN3AAT22hb_aat_apply_context_t8dispatchINS_18ContextualSubtableINS_13ObsoleteTypesEEEJEEEbRKT_DpOT0_.exit, %_ZN3AAT22hb_aat_apply_context_t8dispatchINS_21RearrangementSubtableINS_13ObsoleteTypesEEEJEEEbRKT_DpOT0_.exit
  %.0 = phi i1 [ %i.ch, %_ZN3AAT22hb_aat_apply_context_t8dispatchINS_17InsertionSubtableINS_13ObsoleteTypesEEEJEEEbRKT_DpOT0_.exit ], [ %i.n, %_ZN3AAT22hb_aat_apply_context_t8dispatchINS_21RearrangementSubtableINS_13ObsoleteTypesEEEJEEEbRKT_DpOT0_.exit ], [ %i.ah, %_ZN3AAT22hb_aat_apply_context_t8dispatchINS_18ContextualSubtableINS_13ObsoleteTypesEEEJEEEbRKT_DpOT0_.exit ], [ %i.bm, %_ZN3AAT22hb_aat_apply_context_t8dispatchINS_16LigatureSubtableINS_13ObsoleteTypesEEEJEEEbRKT_DpOT0_.exit ], [ %i.bo, %bb.h ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3AAT16StateTableDriverINS_13ObsoleteTypesEvNS_21RearrangementSubtableIS1_E5FlagsEE5driveINS3_16driver_context_tEEEvPT_PNS_22hb_aat_apply_context_tE(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32
end_hunk_5
begin_hunk_6_@_ZNK3AAT9KerxTableINS_4kerxEE8sanitizeEP21hb_sanitize_context_t:bb.a
  %i.bj = and i64 %i.bf, 4294967295
  %.not.i = icmp ugt i64 %i.bi, %i.bj
  br i1 %.not.i, label %_ZNK3AAT12KerxSubTable8sanitizeEP21hb_sanitize_context_t.exit.thread, label %bb.k, !prof !709

bb.k:                                             ; preds = %_ZN25hb_sanitize_with_object_tC2IPKN3AAT12KerxSubTableEEEP21hb_sanitize_context_tRKT_.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !277
  %i.bk = load i32, ptr %.02560, align 1, !tbaa !276
  %i.bl = tail call noundef i32 @llvm.bswap.i32(i32 %i.bk) ; 3 uses
  %i.bm = icmp ugt i32 %i.bl, 11
  br i1 %i.bm, label %bb.l, label %_ZNK3AAT12KerxSubTable8sanitizeEP21hb_sanitize_context_t.exit.thread, !prof !523

bb.l:                                             ; preds = %bb.k
  %i.bn = load ptr, ptr %i.b, align 8, !tbaa !503
  %i.bo = ptrtoint ptr %.02560 to i64             ; 2 uses
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = load i32, ptr %i.g, align 8, !tbaa !504
  %i.bs = zext i32 %i.br to i64
  %.not.i.i33 = icmp ugt i64 %i.bq, %i.bs
  br i1 %.not.i.i33, label %_ZNK3AAT12KerxSubTable8sanitizeEP21hb_sanitize_context_t.exit.thread, label %bb.m, !prof !709

bb.m:                                             ; preds = %bb.l
  %i.bt = load ptr, ptr %i.y, align 8, !tbaa !502
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = sub i64 %i.bu, %i.bo
  %i.bw = trunc i64 %i.bv to i32
  %.not12.i.i = icmp ugt i32 %i.bl, %i.bw
  br i1 %.not12.i.i, label %_ZNK3AAT12KerxSubTable8sanitizeEP21hb_sanitize_context_t.exit.thread, label %_ZNK21hb_sanitize_context_t11check_rangeEPKvj.exit.i, !prof !709

_ZNK21hb_sanitize_context_t11check_rangeEPKvj.exit.i: ; preds = %bb.m
  %i.bx = load i32, ptr %i.z, align 4, !tbaa !506
  %i.by = sub i32 %i.bx, %i.bl                    ; 2 uses
  store i32 %i.by, ptr %i.z, align 4, !tbaa !506
  %i.bz = icmp sgt i32 %i.by, 0
  br i1 %i.bz, label %_ZNK3AAT12KerxSubTable8sanitizeEP21hb_sanitize_context_t.exit, label %_ZNK3AAT12KerxSubTable8sanitizeEP21hb_sanitize_context_t.exit.thread, !prof !523

_ZNK3AAT12KerxSubTable8sanitizeEP21hb_sanitize_context_t.exit: ; preds = %_ZNK21hb_sanitize_context_t11check_rangeEPKvj.exit.i
  %i.ca = tail call noundef zeroext i1 @_ZNK3AAT12KerxSubTable8dispatchI21hb_sanitize_context_tJEEENT_8return_tEPS3_DpOT0_(ptr noundef nonnull align 1 dereferenceable(36) %.02560, ptr noundef nonnull %1)
  br i1 %i.ca, label %bb.n, label %_ZNK3AAT12KerxSubTable8sanitizeEP21hb_sanitize_context_t.exit.thread, !prof !670

bb.n:                                             ; preds = %_ZNK3AAT12KerxSubTable8sanitizeEP21hb_sanitize_context_t.exit
  %i.cb = load i32, ptr %.02560, align 1, !tbaa !276
  %i.cc = tail call noundef i32 @llvm.bswap.i32(i32 %i.cb)
  %i.cd = zext i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw i8, ptr %.02560, i64 %i.cd
  br label %_ZNK3AAT12KerxSubTable8sanitizeEP21hb_sanitize_context_t.exit.thread

_ZNK3AAT12KerxSubTable8sanitizeEP21hb_sanitize_context_t.exit.thread: ; preds = %bb.l, %bb.m, %bb.k, %_ZNK21hb_sanitize_context_t11check_rangeEPKvj.exit.i, %_ZN25hb_sanitize_with_object_tC2IPKN3AAT12KerxSubTableEEEP21hb_sanitize_context_tRKT_.exit, %_ZNK3AAT12KerxSubTable8sanitizeEP21hb_sanitize_context_t.exit, %bb.n
  %.0.i41 = phi i1 [ true, %bb.n ], [ false, %_ZNK3AAT12KerxSubTable8sanitizeEP21hb_sanitize_context_t.exit ], [ false, %_ZN25hb_sanitize_with_object_tC2IPKN3AAT12KerxSubTableEEEP21hb_sanitize_context_tRKT_.exit ], [ false, %_ZNK21hb_sanitize_context_t11check_rangeEPKvj.exit.i ], [ false, %bb.k ], [ false, %bb.m ], [ false, %bb.l ]
  %.1 = phi ptr [ %i.ce, %bb.n ], [ %.02560, %_ZNK3AAT12KerxSubTable8sanitizeEP21hb_sanitize_context_t.exit ], [ %.02560, %_ZN25hb_sanitize_with_object_tC2IPKN3AAT12KerxSubTableEEEP21hb_sanitize_context_tRKT_.exit ], [ %.02560, %_ZNK21hb_sanitize_context_t11check_rangeEPKvj.exit.i ], [ %.02560, %bb.k ], [ %.02560, %bb.m ], [ %.02560, %bb.l ] ; 2 uses
  %i.cf = load ptr, ptr %i.x, align 8, !tbaa !494 ; 3 uses
  %.not.i.i34 = icmp eq ptr %i.cf, null
  br i1 %.not.i.i34, label %._crit_edge.i.i, label %bb.o

._crit_edge.i.i:                                  ; preds = %_ZNK3AAT12KerxSubTable8sanitizeEP21hb_sanitize_context_t.exit.thread
  %.pre.i.i = load ptr, ptr %i.y, align 8, !tbaa !502
  %.pre2.i.i = load ptr, ptr %i.b, align 8, !tbaa !503
  br label %_ZN25hb_sanitize_with_object_tD2Ev.exit

bb.o:                                             ; preds = %_ZNK3AAT12KerxSubTable8sanitizeEP21hb_sanitize_context_t.exit.thread
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !273 ; 3 uses
  store ptr %i.ch, ptr %i.b, align 8, !tbaa !503
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !274
  %i.ck = zext i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.ck ; 2 uses
  store ptr %i.cl, ptr %i.y, align 8, !tbaa !502
  br label %_ZN25hb_sanitize_with_object_tD2Ev.exit

_ZN25hb_sanitize_with_object_tD2Ev.exit:          ; preds = %._crit_edge.i.i, %bb.o
  %i.cm = phi ptr [ %.pre2.i.i, %._crit_edge.i.i ], [ %i.ch, %bb.o ] ; 3 uses
  %i.cn = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.cl, %bb.o ]
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = ptrtoint ptr %i.cm to i64
  %i.cq = sub i64 %i.co, %i.cp
  %i.cr = trunc i64 %i.cq to i32                  ; 3 uses
  store i32 %i.cr, ptr %i.g, align 8, !tbaa !504
  br i1 %.0.i41, label %bb.e, label %.critedge

._crit_edge.loopexit:                             ; preds = %bb.e
  %.pre = load i16, ptr %0, align 1, !tbaa !281
  %.pre64 = tail call noundef i16 @llvm.bswap.i16(i16 %.pre)
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.d
  %.pre-phi = phi i16 [ %.pre64, %._crit_edge.loopexit ], [ %i.k, %bb.d ]
  %i.cs = phi i32 [ %i.cr, %._crit_edge.loopexit ], [ %i.r, %bb.d ] ; 2 uses
  %i.ct = phi ptr [ %i.cm, %._crit_edge.loopexit ], [ %i.n, %bb.d ] ; 2 uses
  %.025.lcssa = phi ptr [ %.1, %._crit_edge.loopexit ], [ %i.m, %bb.d ] ; 3 uses
  %i.cu = icmp ugt i16 %.pre-phi, 2
  br i1 %i.cu, label %bb.p, label %.critedge

bb.p:                                             ; preds = %._crit_edge
  %i.cv = shl nuw i32 %i.v, 2                     ; 2 uses
  %i.cw = icmp ugt i32 %i.v, 1073741823
  br i1 %i.cw, label %.critedge, label %bb.q, !prof !709

bb.q:                                             ; preds = %bb.p
  %i.cx = ptrtoint ptr %.025.lcssa to i64         ; 2 uses
  %i.cy = ptrtoint ptr %i.ct to i64
  %i.cz = sub i64 %i.cx, %i.cy
  %i.da = zext i32 %i.cs to i64
  %.not.i.i.i.i = icmp ugt i64 %i.cz, %i.da
  br i1 %.not.i.i.i.i, label %.critedge, label %bb.r, !prof !709

bb.r:                                             ; preds = %bb.q
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !502
  %i.dd = ptrtoint ptr %i.dc to i64
  %i.de = sub i64 %i.dd, %i.cx
  %i.df = trunc i64 %i.de to i32
  %.not12.i.i.i.i = icmp ugt i32 %i.cv, %i.df
  br i1 %.not12.i.i.i.i, label %.critedge, label %_ZNK21hb_sanitize_context_t11check_arrayIN2OT14UnsizedArrayOfINS1_8OffsetToINS2_INS1_7NumTypeILb1EhLj1EEEEENS4_ILb1EjLj4EEEvLb0EEEEEEEbPKT_j.exit.i, !prof !709

_ZNK21hb_sanitize_context_t11check_arrayIN2OT14UnsizedArrayOfINS1_8OffsetToINS2_INS1_7NumTypeILb1EhLj1EEEEENS4_ILb1EjLj4EEEvLb0EEEEEEEbPKT_j.exit.i: ; preds = %bb.r
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 4 uses
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !506
  %i.di = sub i32 %i.dh, %i.cv                    ; 2 uses
  store i32 %i.di, ptr %i.dg, align 4, !tbaa !506
  %i.dj = icmp sgt i32 %i.di, 0
  br i1 %i.dj, label %bb.s, label %.critedge, !prof !670

bb.s:                                             ; preds = %_ZNK21hb_sanitize_context_t11check_arrayIN2OT14UnsizedArrayOfINS1_8OffsetToINS2_INS1_7NumTypeILb1EhLj1EEEEENS4_ILb1EjLj4EEEvLb0EEEEEEEbPKT_j.exit.i
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !495
  %i.dm = add i32 %i.dl, 7
  %i.dn = lshr i32 %i.dm, 3                       ; 2 uses
  br i1 %.not58.not, label %.critedge, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.s
  %wide.trip.count.i = zext nneg i32 %i.v to i64
  br label %bb.t

bb.t:                                             ; preds = %bb.x, %.lr.ph.i
  %i.do = phi i32 [ %i.cs, %.lr.ph.i ], [ %i.eq, %bb.x ] ; 2 uses
  %i.dp = phi ptr [ %i.ct, %.lr.ph.i ], [ %i.er, %bb.x ] ; 2 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.x ] ; 2 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %.025.lcssa, i64 %indvars.iv.i ; 3 uses
  %i.dr = load i32, ptr %i.dq, align 1, !tbaa !276
  %i.ds = tail call noundef i32 @llvm.bswap.i32(i32 %i.dr)
  %i.dt = add i32 %i.ds, 1
  %or.cond.i = icmp ult i32 %i.dt, 2
  br i1 %or.cond.i, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.du = getelementptr inbounds nuw i8, ptr %i.dq, i64 4
  %i.dv = ptrtoint ptr %i.du to i64
  %i.dw = ptrtoint ptr %i.dp to i64
  %i.dx = sub i64 %i.dv, %i.dw
  %i.dy = zext i32 %i.do to i64
  %.not.i.not.i = icmp ugt i64 %i.dx, %i.dy
  br i1 %.not.i.not.i, label %.critedge, label %bb.v, !prof !265

bb.v:                                             ; preds = %bb.u
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !277
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !277
  %i.dz = load i32, ptr %i.dq, align 1, !tbaa !276
  %i.ea = tail call noundef i32 @llvm.bswap.i32(i32 %i.dz)
  %i.eb = zext i32 %i.ea to i64
  %i.ec = getelementptr inbounds nuw i8, ptr %.025.lcssa, i64 %i.eb
  %i.ed = load ptr, ptr %i.b, align 8, !tbaa !503 ; 2 uses
  %i.ee = ptrtoint ptr %i.ec to i64               ; 2 uses
  %i.ef = ptrtoint ptr %i.ed to i64
  %i.eg = sub i64 %i.ee, %i.ef
  %i.eh = load i32, ptr %i.g, align 8, !tbaa !504 ; 2 uses
  %i.ei = zext i32 %i.eh to i64
  %.not.i.i.i.i.i.i.i = icmp ugt i64 %i.eg, %i.ei
  br i1 %.not.i.i.i.i.i.i.i, label %.critedge, label %bb.w, !prof !709

bb.w:                                             ; preds = %bb.v
  %i.ej = load ptr, ptr %i.db, align 8, !tbaa !502
  %i.ek = ptrtoint ptr %i.ej to i64
  %i.el = sub i64 %i.ek, %i.ee
  %i.em = trunc i64 %i.el to i32
  %.not12.i.i.i.i.i.i.i = icmp ugt i32 %i.dn, %i.em
  br i1 %.not12.i.i.i.i.i.i.i, label %.critedge, label %_ZNK2OT8OffsetToINS_14UnsizedArrayOfINS_7NumTypeILb1EhLj1EEEEENS2_ILb1EjLj4EEEvLb0EE8sanitizeIJRjEEEbP21hb_sanitize_context_tPKvDpOT_.exit.i, !prof !709

_ZNK2OT8OffsetToINS_14UnsizedArrayOfINS_7NumTypeILb1EhLj1EEEEENS2_ILb1EjLj4EEEvLb0EE8sanitizeIJRjEEEbP21hb_sanitize_context_tPKvDpOT_.exit.i: ; preds = %bb.w
  %i.en = load i32, ptr %i.dg, align 4, !tbaa !506
  %i.eo = sub i32 %i.en, %i.dn                    ; 2 uses
  store i32 %i.eo, ptr %i.dg, align 4, !tbaa !506
  %i.ep = icmp sgt i32 %i.eo, 0
  br i1 %i.ep, label %bb.x, label %.critedge, !prof !670

bb.x:                                             ; preds = %_ZNK2OT8OffsetToINS_14UnsizedArrayOfINS_7NumTypeILb1EhLj1EEEEENS2_ILb1EjLj4EEEvLb0EE8sanitizeIJRjEEEbP21hb_sanitize_context_tPKvDpOT_.exit.i, %bb.t
  %i.eq = phi i32 [ %i.do, %bb.t ], [ %i.eh, %_ZNK2OT8OffsetToINS_14UnsizedArrayOfINS_7NumTypeILb1EhLj1EEEEENS2_ILb1EjLj4EEEvLb0EE8sanitizeIJRjEEEbP21hb_sanitize_context_tPKvDpOT_.exit.i ]
  %i.er = phi ptr [ %i.dp, %bb.t ], [ %i.ed, %_ZNK2OT8OffsetToINS_14UnsizedArrayOfINS_7NumTypeILb1EhLj1EEEEENS2_ILb1EjLj4EEEvLb0EE8sanitizeIJRjEEEbP21hb_sanitize_context_tPKvDpOT_.exit.i ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.critedge, label %bb.t, !llvm.loop !196

.critedge:                                        ; preds = %_ZN25hb_sanitize_with_object_tD2Ev.exit, %bb.f, %bb.w, %_ZNK2OT8OffsetToINS_14UnsizedArrayOfINS_7NumTypeILb1EhLj1EEEEENS2_ILb1EjLj4EEEvLb0EE8sanitizeIJRjEEEbP21hb_sanitize_context_tPKvDpOT_.exit.i, %bb.u, %bb.v, %bb.x, %bb.p, %bb.q, %bb.r, %_ZNK21hb_sanitize_context_t11check_arrayIN2OT14UnsizedArrayOfINS1_8OffsetToINS2_INS1_7NumTypeILb1EhLj1EEEEENS4_ILb1EjLj4EEEvLb0EEEEEEEbPKT_j.exit.i, %._crit_edge, %bb.s, %bb.c, %bb.a, %bb.b
  %.6 = phi i1 [ false, %bb.q ], [ true, %._crit_edge ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.a ], [ true, %bb.s ], [ false, %bb.p ], [ true, %bb.x ], [ false, %_ZNK21hb_sanitize_context_t11check_arrayIN2OT14UnsizedArrayOfINS1_8OffsetToINS2_INS1_7NumTypeILb1EhLj1EEEEENS4_ILb1EjLj4EEEvLb0EEEEEEEbPKT_j.exit.i ], [ false, %bb.r ], [ false, %bb.w ], [ false, %_ZNK2OT8OffsetToINS_14UnsizedArrayOfINS_7NumTypeILb1EhLj1EEEEENS2_ILb1EjLj4EEEvLb0EE8sanitizeIJRjEEEbP21hb_sanitize_context_tPKvDpOT_.exit.i ], [ false, %bb.u ], [ false, %bb.v ], [ false, %bb.f ], [ false, %_ZN25hb_sanitize_with_object_tD2Ev.exit ]
  ret i1 %.6
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK3AAT12KerxSubTable8dispatchI21hb_sanitize_context_tJEEENT_8return_tEPS3_DpOT0_(ptr noundef nonnull align 1 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 7
  %trunc = load i8, ptr %i.a, align 1, !tbaa !276
  switch i8 %trunc, label %_ZN21hb_sanitize_context_t8dispatchIN3AAT19KerxSubTableFormat0INS1_18KerxSubTableHeaderEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit [
    i8 0, label %bb.b
    i8 1, label %bb.f
    i8 2, label %bb.h
    i8 4, label %bb.m
    i8 6, label %bb.o
  ]

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !277
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !503
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !504
  %i.j = zext i32 %i.i to i64
  %.not.i.i.i.i = icmp ugt i64 %i.g, %i.j
  br i1 %.not.i.i.i.i, label %_ZN21hb_sanitize_context_t8dispatchIN3AAT19KerxSubTableFormat0INS1_18KerxSubTableHeaderEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit, label %bb.c, !prof !709

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !277
  %i.l = load i32, ptr %i.k, align 1, !tbaa !276
  %i.m = tail call noundef i32 @llvm.bswap.i32(i32 %i.l)
  %i.n = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.m, i32 6) ; 2 uses
  %i.o = extractvalue { i32, i1 } %i.n, 0         ; 2 uses
  %i.p = extractvalue { i32, i1 } %i.n, 1
  br i1 %i.p, label %_ZN21hb_sanitize_context_t8dispatchIN3AAT19KerxSubTableFormat0INS1_18KerxSubTableHeaderEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit, label %bb.d, !prof !265

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !503
  %i.s = ptrtoint ptr %i.q to i64                 ; 2 uses
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = load i32, ptr %i.h, align 8, !tbaa !504
  %i.w = zext i32 %i.v to i64
  %.not.i.i.i.i.i.i = icmp ugt i64 %i.u, %i.w
  br i1 %.not.i.i.i.i.i.i, label %_ZN21hb_sanitize_context_t8dispatchIN3AAT19KerxSubTableFormat0INS1_18KerxSubTableHeaderEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit, label %bb.e, !prof !709

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !502
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = sub i64 %i.z, %i.s
  %i.ab = trunc i64 %i.aa to i32
  %.not12.i.i.i.i.i.i = icmp ugt i32 %i.o, %i.ab
  br i1 %.not12.i.i.i.i.i.i, label %_ZN21hb_sanitize_context_t8dispatchIN3AAT19KerxSubTableFormat0INS1_18KerxSubTableHeaderEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit, label %_ZNK2OT7ArrayOfIN3AAT8KernPairENS_15BinSearchHeaderINS_7NumTypeILb1EjLj4EEEEEE16sanitize_shallowEP21hb_sanitize_context_t.exit.i.i.i, !prof !709

_ZNK2OT7ArrayOfIN3AAT8KernPairENS_15BinSearchHeaderINS_7NumTypeILb1EjLj4EEEEEE16sanitize_shallowEP21hb_sanitize_context_t.exit.i.i.i: ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !506
  %i.ae = sub i32 %i.ad, %i.o                     ; 2 uses
  store i32 %i.ae, ptr %i.ac, align 4, !tbaa !506
  %i.af = icmp sgt i32 %i.ae, 0
  br label %_ZN21hb_sanitize_context_t8dispatchIN3AAT19KerxSubTableFormat0INS1_18KerxSubTableHeaderEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit

bb.f:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !277
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !503
  %i.aj = ptrtoint ptr %i.ag to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.an = load i32, ptr %i.am, align 8, !tbaa !504
  %i.ao = zext i32 %i.an to i64
  %.not.i.i.i = icmp ugt i64 %i.al, %i.ao
  br i1 %.not.i.i.i, label %_ZN21hb_sanitize_context_t8dispatchIN3AAT19KerxSubTableFormat0INS1_18KerxSubTableHeaderEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit, label %bb.g, !prof !265

bb.g:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.aq = tail call noundef zeroext i1 @_ZNK3AAT10StateTableINS_13ExtendedTypesENS_12Format1EntryILb1EE9EntryDataEE8sanitizeEP21hb_sanitize_context_tPj(ptr noundef nonnull align 1 dereferenceable(16) %i.ap, ptr noundef nonnull align 8 dereferenceable(62) %1, ptr noundef null)
  br label %_ZN21hb_sanitize_context_t8dispatchIN3AAT19KerxSubTableFormat0INS1_18KerxSubTableHeaderEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit

bb.h:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !277
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !503
  %i.au = ptrtoint ptr %i.ar to i64
  %i.av = ptrtoint ptr %i.at to i64               ; 2 uses
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !504
  %i.az = zext i32 %i.ay to i64                   ; 2 uses
  %.not.i.i.i7 = icmp ugt i64 %i.aw, %i.az
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = sub i64 %i.bc, %i.av
  %.not.i6.not.i.i.i = icmp ugt i64 %i.bd, %i.az
  %or.cond.i.i.i = select i1 %.not.i.i.i7, i1 true, i1 %.not.i6.not.i.i.i, !prof !406
  br i1 %or.cond.i.i.i, label %_ZN21hb_sanitize_context_t8dispatchIN3AAT19KerxSubTableFormat0INS1_18KerxSubTableHeaderEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit, label %_ZNK2OT8OffsetToIN3AAT6LookupINS_7NumTypeILb1EtLj2EEEEENS3_ILb1EjLj4EEEvLb0EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit5.i.i.i, !prof !406

_ZNK2OT8OffsetToIN3AAT6LookupINS_7NumTypeILb1EtLj2EEEEENS3_ILb1EjLj4EEEvLb0EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit5.i.i.i: ; preds = %bb.h
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !277
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !277
  %i.bf = load i32, ptr %i.be, align 1, !tbaa !276
  %i.bg = tail call noundef i32 @llvm.bswap.i32(i32 %i.bf)
  %i.bh = zext i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 %i.bh
  %i.bj = tail call noundef zeroext i1 @_ZNK3AAT6LookupIN2OT7NumTypeILb1EtLj2EEEE8sanitizeEP21hb_sanitize_context_t(ptr noundef nonnull align 1 dereferenceable(13) %i.bi, ptr noundef nonnull align 8 dereferenceable(62) %1)
  br i1 %i.bj, label %bb.i, label %_ZN21hb_sanitize_context_t8dispatchIN3AAT19KerxSubTableFormat0INS1_18KerxSubTableHeaderEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit, !prof !670

bb.i:                                             ; preds = %_ZNK2OT8OffsetToIN3AAT6LookupINS_7NumTypeILb1EtLj2EEEEENS3_ILb1EjLj4EEEvLb0EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit5.i.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bl = load ptr, ptr %i.as, align 8, !tbaa !503
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = load i32, ptr %i.ax, align 8, !tbaa !504
  %i.bq = zext i32 %i.bp to i64
  %.not.i7.not.i.i.i = icmp ugt i64 %i.bo, %i.bq
  br i1 %.not.i7.not.i.i.i, label %_ZN21hb_sanitize_context_t8dispatchIN3AAT19KerxSubTableFormat0INS1_18KerxSubTableHeaderEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit, label %_ZNK2OT8OffsetToIN3AAT6LookupINS_7NumTypeILb1EtLj2EEEEENS3_ILb1EjLj4EEEvLb0EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.i.i.i, !prof !265

_ZNK2OT8OffsetToIN3AAT6LookupINS_7NumTypeILb1EtLj2EEEEENS3_ILb1EjLj4EEEvLb0EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.i.i.i: ; preds = %bb.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !277
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !277
  %i.br = load i32, ptr %i.bb, align 1, !tbaa !276
  %i.bs = tail call noundef i32 @llvm.bswap.i32(i32 %i.br)
  %i.bt = zext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 %i.bt
  %i.bv = tail call noundef zeroext i1 @_ZNK3AAT6LookupIN2OT7NumTypeILb1EtLj2EEEE8sanitizeEP21hb_sanitize_context_t(ptr noundef nonnull align 1 dereferenceable(13) %i.bu, ptr noundef nonnull align 8 dereferenceable(62) %1)
  br i1 %i.bv, label %bb.j, label %_ZN21hb_sanitize_context_t8dispatchIN3AAT19KerxSubTableFormat0INS1_18KerxSubTableHeaderEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit, !prof !670

bb.j:                                             ; preds = %_ZNK2OT8OffsetToIN3AAT6LookupINS_7NumTypeILb1EtLj2EEEEENS3_ILb1EjLj4EEEvLb0EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.i.i.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !277
  %i.bw = load i32, ptr %i.bk, align 1, !tbaa !276
  %i.bx = tail call noundef i32 @llvm.bswap.i32(i32 %i.bw) ; 2 uses
  %i.by = load ptr, ptr %i.as, align 8, !tbaa !503
  %i.bz = ptrtoint ptr %0 to i64                  ; 2 uses
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = sub i64 %i.bz, %i.ca
  %i.cc = load i32, ptr %i.ax, align 8, !tbaa !504
  %i.cd = zext i32 %i.cc to i64
  %.not.i.i.i.i8 = icmp ugt i64 %i.cb, %i.cd
  br i1 %.not.i.i.i.i8, label %_ZN21hb_sanitize_context_t8dispatchIN3AAT19KerxSubTableFormat0INS1_18KerxSubTableHeaderEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ce = load ptr, ptr %i.ba, align 8, !tbaa !502
  %i.cf = ptrtoint ptr %i.ce to i64
  %i.cg = sub i64 %i.cf, %i.bz
  %i.ch = trunc i64 %i.cg to i32
  %.not12.i.i.i.i = icmp ugt i32 %i.bx, %i.ch
  br i1 %.not12.i.i.i.i, label %_ZN21hb_sanitize_context_t8dispatchIN3AAT19KerxSubTableFormat0INS1_18KerxSubTableHeaderEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !506
  %i.ck = sub i32 %i.cj, %i.bx                    ; 2 uses
  store i32 %i.ck, ptr %i.ci, align 4, !tbaa !506
  %i.cl = icmp sgt i32 %i.ck, 0
  br label %_ZN21hb_sanitize_context_t8dispatchIN3AAT19KerxSubTableFormat0INS1_18KerxSubTableHeaderEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit

bb.m:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !277
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !503
  %i.cp = ptrtoint ptr %i.cm to i64
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = sub i64 %i.cp, %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !504
  %i.cu = zext i32 %i.ct to i64
  %.not.i.i.i9 = icmp ugt i64 %i.cr, %i.cu
  br i1 %.not.i.i.i9, label %_ZN21hb_sanitize_context_t8dispatchIN3AAT19KerxSubTableFormat0INS1_18KerxSubTableHeaderEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit, label %bb.n, !prof !265

bb.n:                                             ; preds = %bb.m
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.cw = tail call noundef zeroext i1 @_ZNK3AAT10StateTableINS_13ExtendedTypesENS_19KerxSubTableFormat4INS_18KerxSubTableHeaderEE9EntryDataEE8sanitizeEP21hb_sanitize_context_tPj(ptr noundef nonnull align 1 dereferenceable(16) %i.cv, ptr noundef nonnull align 8 dereferenceable(62) %1, ptr noundef null)
  br label %_ZN21hb_sanitize_context_t8dispatchIN3AAT19KerxSubTableFormat0INS1_18KerxSubTableHeaderEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit

bb.o:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !277
  %i.cx = tail call noundef zeroext i1 @_ZNK3AAT19KerxSubTableFormat6INS_18KerxSubTableHeaderEE8sanitizeEP21hb_sanitize_context_t(ptr noundef nonnull align 1 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(62) %1)
  br label %_ZN21hb_sanitize_context_t8dispatchIN3AAT19KerxSubTableFormat0INS1_18KerxSubTableHeaderEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit

_ZN21hb_sanitize_context_t8dispatchIN3AAT19KerxSubTableFormat0INS1_18KerxSubTableHeaderEEEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS7_.exit: ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %_ZNK2OT8OffsetToIN3AAT6LookupINS_7NumTypeILb1EtLj2EEEEENS3_ILb1EjLj4EEEvLb0EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.i.i.i, %bb.i, %_ZNK2OT8OffsetToIN3AAT6LookupINS_7NumTypeILb1EtLj2EEEEENS3_ILb1EjLj4EEEvLb0EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit5.i.i.i, %bb.h, %bb.g, %bb.f, %_ZNK2OT7ArrayOfIN3AAT8KernPairENS_15BinSearchHeaderINS_7NumTypeILb1EjLj4EEEEEE16sanitize_shallowEP21hb_sanitize_context_t.exit.i.i.i, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a, %bb.o
  %.0 = phi i1 [ %i.cx, %bb.o ], [ true, %bb.a ], [ false, %bb.e ], [ %i.aq, %bb.g ], [ %i.cl, %bb.l ], [ false, %bb.d ], [ %i.af, %_ZNK2OT7ArrayOfIN3AAT8KernPairENS_15BinSearchHeaderINS_7NumTypeILb1EjLj4EEEEEE16sanitize_shallowEP21hb_sanitize_context_t.exit.i.i.i ], [ false, %bb.b ], [ false, %bb.c ], [ false, %bb.f ], [ false, %bb.i ], [ false, %_ZNK2OT8OffsetToIN3AAT6LookupINS_7NumTypeILb1EtLj2EEEEENS3_ILb1EjLj4EEEvLb0EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.i.i.i ], [ false, %_ZNK2OT8OffsetToIN3AAT6LookupINS_7NumTypeILb1EtLj2EEEEENS3_ILb1EjLj4EEEvLb0EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit5.i.i.i ], [ false, %bb.h ], [ false, %bb.k ], [ false, %bb.j ], [ false, %bb.m ], [ %i.cw, %bb.n ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK3AAT10StateTableINS_13ExtendedTypesENS_12Format1EntryILb1EE9EntryDataEE8sanitizeEP21hb_sanitize_context_tPj(ptr noundef nonnull align 1 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !503
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
end_hunk_6
begin_hunk_7_@_ZNK3AAT13LookupFormat4IN2OT7NumTypeILb1EjLj4EEEE8sanitizeEP21hb_sanitize_context_t:bb.a
  %.not.i2 = icmp ugt i64 %i.g, %i.j
  br i1 %.not.i2, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_7NumTypeILb1EjLj4EEEEEE8sanitizeIJPKNS1_13LookupFormat4IS4_EEEEEbP21hb_sanitize_context_tDpOT_.exit, label %bb.b, !prof !709

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !277
  %i.k = load i16, ptr %i.a, align 1, !tbaa !281
  %i.l = tail call noundef i16 @llvm.bswap.i16(i16 %i.k) ; 2 uses
  %i.m = icmp ugt i16 %i.l, 5
  br i1 %i.m, label %bb.c, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_7NumTypeILb1EjLj4EEEEEE8sanitizeIJPKNS1_13LookupFormat4IS4_EEEEEbP21hb_sanitize_context_tDpOT_.exit, !prof !523

bb.c:                                             ; preds = %bb.b
  %i.n = zext i16 %i.l to i32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.p = load i16, ptr %i.o, align 1, !tbaa !281
  %i.q = tail call noundef i16 @llvm.bswap.i16(i16 %i.p)
  %i.r = zext i16 %i.q to i32
  %i.s = mul nuw i32 %i.r, %i.n                   ; 2 uses
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !503
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = sub i64 %i.e, %i.u
  %i.w = load i32, ptr %i.h, align 8, !tbaa !504
  %i.x = zext i32 %i.w to i64
  %.not.i.i.i = icmp ugt i64 %i.v, %i.x
  br i1 %.not.i.i.i, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_7NumTypeILb1EjLj4EEEEEE8sanitizeIJPKNS1_13LookupFormat4IS4_EEEEEbP21hb_sanitize_context_tDpOT_.exit, label %bb.d, !prof !709

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !502
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.e
  %i.ac = trunc i64 %i.ab to i32
  %.not12.i.i.i = icmp ugt i32 %i.s, %i.ac
  br i1 %.not12.i.i.i, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_7NumTypeILb1EjLj4EEEEEE8sanitizeIJPKNS1_13LookupFormat4IS4_EEEEEbP21hb_sanitize_context_tDpOT_.exit, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_7NumTypeILb1EjLj4EEEEEE16sanitize_shallowEP21hb_sanitize_context_t.exit, !prof !709

_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_7NumTypeILb1EjLj4EEEEEE16sanitize_shallowEP21hb_sanitize_context_t.exit: ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 4 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !506
  %i.af = sub i32 %i.ae, %i.s                     ; 2 uses
  store i32 %i.af, ptr %i.ad, align 4, !tbaa !506
  %i.ag = icmp sgt i32 %i.af, 0
  br i1 %i.ag, label %bb.e, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_7NumTypeILb1EjLj4EEEEEE8sanitizeIJPKNS1_13LookupFormat4IS4_EEEEEbP21hb_sanitize_context_tDpOT_.exit, !prof !670

bb.e:                                             ; preds = %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_7NumTypeILb1EjLj4EEEEEE16sanitize_shallowEP21hb_sanitize_context_t.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !277
  %i.ah = load i16, ptr %i.o, align 1, !tbaa !281 ; 2 uses
  %i.ai = tail call noundef i16 @llvm.bswap.i16(i16 %i.ah) ; 2 uses
  %.not.i.i = icmp eq i16 %i.ah, 0
  br i1 %.not.i.i, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_7NumTypeILb1EjLj4EEEEEE10get_lengthEv.exit, label %bb.f, !prof !265

bb.f:                                             ; preds = %bb.e
  %i.aj = zext i16 %i.ai to i64
  %i.ak = add nuw nsw i64 %i.aj, 4294967295
  %i.al = load i16, ptr %i.a, align 1, !tbaa !281
  %i.am = tail call noundef i16 @llvm.bswap.i16(i16 %i.al)
  %i.an = zext i16 %i.am to i64
  %i.ao = mul nuw nsw i64 %i.ak, %i.an
  %i.ap = and i64 %i.ao, 4294967295
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ap ; 2 uses
  %i.ar = load i16, ptr %i.aq, align 1, !tbaa !281
  %.not9.i.i = icmp eq i16 %i.ar, -1
  br i1 %.not9.i.i, label %bb.g, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_7NumTypeILb1EjLj4EEEEEE10get_lengthEv.exit

bb.g:                                             ; preds = %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 2
  %i.at = load i16, ptr %i.as, align 1, !tbaa !281
  %.not9.1.i.i = icmp eq i16 %i.at, -1
  %i.au = sext i1 %.not9.1.i.i to i32
  br label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_7NumTypeILb1EjLj4EEEEEE10get_lengthEv.exit

_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_7NumTypeILb1EjLj4EEEEEE10get_lengthEv.exit: ; preds = %bb.e, %bb.f, %bb.g
  %.2.i.i = phi i32 [ 0, %bb.e ], [ 0, %bb.f ], [ %i.au, %bb.g ]
  %i.av = zext i16 %i.ai to i32
  %i.aw = add nsw i32 %.2.i.i, %i.av              ; 2 uses
  %.not.i11.not = icmp eq i32 %i.aw, 0
  br i1 %.not.i11.not, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_7NumTypeILb1EjLj4EEEEEE8sanitizeIJPKNS1_13LookupFormat4IS4_EEEEEbP21hb_sanitize_context_tDpOT_.exit, label %.lr.ph

bb.h:                                             ; preds = %_ZNK3AAT18LookupSegmentArrayIN2OT7NumTypeILb1EjLj4EEEE8sanitizeEP21hb_sanitize_context_tPKv.exit
  %i.ax = add nuw i32 %.0.i12, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.ax, %i.aw
  br i1 %exitcond.not, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_7NumTypeILb1EjLj4EEEEEE8sanitizeIJPKNS1_13LookupFormat4IS4_EEEEEbP21hb_sanitize_context_tDpOT_.exit, label %.lr.ph, !llvm.loop !5712

.lr.ph:                                           ; preds = %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_7NumTypeILb1EjLj4EEEEEE10get_lengthEv.exit, %bb.h
  %.0.i12 = phi i32 [ %i.ax, %bb.h ], [ 0, %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_7NumTypeILb1EjLj4EEEEEE10get_lengthEv.exit ] ; 3 uses
  %i.ay = load i16, ptr %i.o, align 1, !tbaa !281 ; 2 uses
  %i.az = tail call noundef i16 @llvm.bswap.i16(i16 %i.ay) ; 2 uses
  %.not.i.i.i3 = icmp eq i16 %i.ay, 0
  br i1 %.not.i.i.i3, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_7NumTypeILb1EjLj4EEEEEE10get_lengthEv.exit.i, label %bb.i, !prof !265

bb.i:                                             ; preds = %.lr.ph
  %i.ba = zext i16 %i.az to i64
  %i.bb = add nuw nsw i64 %i.ba, 4294967295
  %i.bc = load i16, ptr %i.a, align 1, !tbaa !281
  %i.bd = tail call noundef i16 @llvm.bswap.i16(i16 %i.bc)
  %i.be = zext i16 %i.bd to i64
  %i.bf = mul nuw nsw i64 %i.bb, %i.be
  %i.bg = and i64 %i.bf, 4294967295
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bg ; 2 uses
  %i.bi = load i16, ptr %i.bh, align 1, !tbaa !281
  %.not9.i.i.i = icmp eq i16 %i.bi, -1
  br i1 %.not9.i.i.i, label %bb.j, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_7NumTypeILb1EjLj4EEEEEE10get_lengthEv.exit.i

bb.j:                                             ; preds = %bb.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 2
  %i.bk = load i16, ptr %i.bj, align 1, !tbaa !281
  %.not9.1.i.i.i = icmp eq i16 %i.bk, -1
  %i.bl = sext i1 %.not9.1.i.i.i to i32
  br label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_7NumTypeILb1EjLj4EEEEEE10get_lengthEv.exit.i

_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_7NumTypeILb1EjLj4EEEEEE10get_lengthEv.exit.i: ; preds = %bb.j, %bb.i, %.lr.ph
  %.2.i.i.i = phi i32 [ 0, %.lr.ph ], [ 0, %bb.i ], [ %i.bl, %bb.j ]
  %i.bm = zext i16 %i.az to i32
  %i.bn = add nsw i32 %.2.i.i.i, %i.bm
  %.not.i4 = icmp ult i32 %.0.i12, %i.bn
  br i1 %.not.i4, label %bb.k, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_7NumTypeILb1EjLj4EEEEEEixEi.exit, !prof !266

bb.k:                                             ; preds = %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_7NumTypeILb1EjLj4EEEEEE10get_lengthEv.exit.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !277
  %i.bo = load i16, ptr %i.a, align 1, !tbaa !281
  %i.bp = tail call noundef i16 @llvm.bswap.i16(i16 %i.bo)
  %i.bq = zext i16 %i.bp to i32
  %i.br = mul i32 %.0.i12, %i.bq
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bs
  br label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_7NumTypeILb1EjLj4EEEEEEixEi.exit

_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_7NumTypeILb1EjLj4EEEEEEixEi.exit: ; preds = %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_7NumTypeILb1EjLj4EEEEEE10get_lengthEv.exit.i, %bb.k
  %.0.i5 = phi ptr [ %i.bt, %bb.k ], [ @_hb_NullPool, %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_7NumTypeILb1EjLj4EEEEEE10get_lengthEv.exit.i ] ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.i5, i64 6
  %i.bv = load ptr, ptr %i.c, align 8, !tbaa !503
  %i.bw = ptrtoint ptr %i.bu to i64               ; 2 uses
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = sub i64 %i.bw, %i.bx
  %i.bz = load i32, ptr %i.h, align 8, !tbaa !504
  %i.ca = zext i32 %i.bz to i64
  %.not7.i = icmp ugt i64 %i.by, %i.ca
  br i1 %.not7.i, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_7NumTypeILb1EjLj4EEEEEE8sanitizeIJPKNS1_13LookupFormat4IS4_EEEEEbP21hb_sanitize_context_tDpOT_.exit, label %bb.l, !prof !709

bb.l:                                             ; preds = %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_7NumTypeILb1EjLj4EEEEEEixEi.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !277
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.i5, i64 2
  %i.cc = load i16, ptr %i.cb, align 1, !tbaa !281
  %i.cd = tail call noundef i16 @llvm.bswap.i16(i16 %i.cc) ; 2 uses
  %i.ce = load i16, ptr %.0.i5, align 1, !tbaa !281
  %i.cf = tail call noundef i16 @llvm.bswap.i16(i16 %i.ce) ; 2 uses
  %.not.i6 = icmp ugt i16 %i.cd, %i.cf
  br i1 %.not.i6, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_7NumTypeILb1EjLj4EEEEEE8sanitizeIJPKNS1_13LookupFormat4IS4_EEEEEbP21hb_sanitize_context_tDpOT_.exit, label %bb.m, !prof !709

bb.m:                                             ; preds = %bb.l
  %i.cg = load ptr, ptr %i.c, align 8, !tbaa !503
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = sub i64 %i.bw, %i.ch
  %i.cj = load i32, ptr %i.h, align 8, !tbaa !504
  %i.ck = zext i32 %i.cj to i64
  %.not.i.not.i = icmp ugt i64 %i.ci, %i.ck
  br i1 %.not.i.not.i, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_7NumTypeILb1EjLj4EEEEEE8sanitizeIJPKNS1_13LookupFormat4IS4_EEEEEbP21hb_sanitize_context_tDpOT_.exit, label %bb.n, !prof !265

bb.n:                                             ; preds = %bb.m
  %narrow.i = sub nuw i16 %i.cf, %i.cd
  %i.cl = zext i16 %narrow.i to i32
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !277
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !277
  %i.cm = shl nuw nsw i32 %i.cl, 2
  %i.cn = add nuw nsw i32 %i.cm, 4                ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.0.i5, i64 4
  %i.cp = load i16, ptr %i.co, align 1, !tbaa !281
  %i.cq = tail call noundef i16 @llvm.bswap.i16(i16 %i.cp)
  %i.cr = zext i16 %i.cq to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 %i.cr
  %i.ct = load ptr, ptr %i.c, align 8, !tbaa !503
  %i.cu = ptrtoint ptr %i.cs to i64               ; 2 uses
  %i.cv = ptrtoint ptr %i.ct to i64
  %i.cw = sub i64 %i.cu, %i.cv
  %i.cx = load i32, ptr %i.h, align 8, !tbaa !504
  %i.cy = zext i32 %i.cx to i64
  %.not.i.i.i.i.i.i.i = icmp ugt i64 %i.cw, %i.cy
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_7NumTypeILb1EjLj4EEEEEE8sanitizeIJPKNS1_13LookupFormat4IS4_EEEEEbP21hb_sanitize_context_tDpOT_.exit, label %bb.o, !prof !709

bb.o:                                             ; preds = %bb.n
  %i.cz = load ptr, ptr %i.y, align 8, !tbaa !502
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = sub i64 %i.da, %i.cu
  %i.dc = trunc i64 %i.db to i32
  %.not12.i.i.i.i.i.i.i = icmp ugt i32 %i.cn, %i.dc
  br i1 %.not12.i.i.i.i.i.i.i, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_7NumTypeILb1EjLj4EEEEEE8sanitizeIJPKNS1_13LookupFormat4IS4_EEEEEbP21hb_sanitize_context_tDpOT_.exit, label %_ZNK3AAT18LookupSegmentArrayIN2OT7NumTypeILb1EjLj4EEEE8sanitizeEP21hb_sanitize_context_tPKv.exit, !prof !709

_ZNK3AAT18LookupSegmentArrayIN2OT7NumTypeILb1EjLj4EEEE8sanitizeEP21hb_sanitize_context_tPKv.exit: ; preds = %bb.o
  %i.dd = load i32, ptr %i.ad, align 4, !tbaa !506
  %i.de = sub i32 %i.dd, %i.cn                    ; 2 uses
  store i32 %i.de, ptr %i.ad, align 4, !tbaa !506
  %i.df = icmp sgt i32 %i.de, 0
  br i1 %i.df, label %bb.h, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_7NumTypeILb1EjLj4EEEEEE8sanitizeIJPKNS1_13LookupFormat4IS4_EEEEEbP21hb_sanitize_context_tDpOT_.exit, !prof !670

_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_7NumTypeILb1EjLj4EEEEEE8sanitizeIJPKNS1_13LookupFormat4IS4_EEEEEbP21hb_sanitize_context_tDpOT_.exit: ; preds = %bb.h, %_ZNK3AAT18LookupSegmentArrayIN2OT7NumTypeILb1EjLj4EEEE8sanitizeEP21hb_sanitize_context_tPKv.exit, %bb.l, %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_7NumTypeILb1EjLj4EEEEEEixEi.exit, %bb.m, %bb.n, %bb.o, %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_7NumTypeILb1EjLj4EEEEEE10get_lengthEv.exit, %bb.c, %bb.d, %bb.a, %bb.b, %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_7NumTypeILb1EjLj4EEEEEE16sanitize_shallowEP21hb_sanitize_context_t.exit
  %.2.i = phi i1 [ false, %bb.c ], [ false, %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_7NumTypeILb1EjLj4EEEEEE16sanitize_shallowEP21hb_sanitize_context_t.exit ], [ false, %bb.d ], [ false, %bb.b ], [ false, %bb.a ], [ true, %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_7NumTypeILb1EjLj4EEEEEE10get_lengthEv.exit ], [ false, %bb.n ], [ false, %bb.m ], [ false, %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_7NumTypeILb1EjLj4EEEEEEixEi.exit ], [ false, %bb.l ], [ false, %_ZNK3AAT18LookupSegmentArrayIN2OT7NumTypeILb1EjLj4EEEE8sanitizeEP21hb_sanitize_context_tPKv.exit ], [ true, %bb.h ], [ false, %bb.o ]
  ret i1 %.2.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK3AAT12KerxSubTable14collect_glyphsI12hb_bit_set_tEEvRT_S4_j(ptr noundef nonnull align 1 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 7
  %trunc = load i8, ptr %i.a, align 1, !tbaa !276
  switch i8 %trunc, label %_ZNK3AAT19KerxSubTableFormat0INS_18KerxSubTableHeaderEE14collect_glyphsI12hb_bit_set_tEEvRT_S6_j.exit [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 4, label %bb.e
    i8 6, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !277
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.d = load i32, ptr %i.b, align 1, !tbaa !276  ; 2 uses
  %i.e = tail call noundef i32 @llvm.bswap.i32(i32 %i.d)
  %i.f = zext i32 %i.e to i64
  %.idx.i = mul nuw nsw i64 %i.f, 6
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx.i
  %.not11.i = icmp eq i32 %i.d, 0
  br i1 %.not11.i, label %_ZNK3AAT19KerxSubTableFormat0INS_18KerxSubTableHeaderEE14collect_glyphsI12hb_bit_set_tEEvRT_S6_j.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.012.i = phi ptr [ %i.o, %.lr.ph.i ], [ %i.c, %bb.b ] ; 3 uses
  %i.h = load i16, ptr %.012.i, align 1, !tbaa !281
  %i.i = tail call noundef i16 @llvm.bswap.i16(i16 %i.h)
  %i.j = zext i16 %i.i to i32
  tail call void @_ZN12hb_bit_set_t3addEj(ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %.012.i, i64 2
  %i.l = load i16, ptr %i.k, align 1, !tbaa !281
  %i.m = tail call noundef i16 @llvm.bswap.i16(i16 %i.l)
  %i.n = zext i16 %i.m to i32
  tail call void @_ZN12hb_bit_set_t3addEj(ptr noundef nonnull align 8 dereferenceable(48) %2, i32 noundef %i.n)
  %i.o = getelementptr inbounds nuw i8, ptr %.012.i, i64 6 ; 2 uses
  %.not.i = icmp eq ptr %i.o, %i.g
  br i1 %.not.i, label %_ZNK3AAT19KerxSubTableFormat0INS_18KerxSubTableHeaderEE14collect_glyphsI12hb_bit_set_tEEvRT_S6_j.exit, label %.lr.ph.i

bb.c:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !277
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 12
  tail call void @_ZNK3AAT10StateTableINS_13ExtendedTypesENS_12Format1EntryILb1EE9EntryDataEE22collect_initial_glyphsI12hb_bit_set_tNS_19KerxSubTableFormat1INS_18KerxSubTableHeaderEEEEEvRT_jRKT0_(ptr noundef nonnull align 1 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %3, ptr noundef nonnull align 1 dereferenceable(32) %0)
  br label %_ZNK3AAT19KerxSubTableFormat0INS_18KerxSubTableHeaderEE14collect_glyphsI12hb_bit_set_tEEvRT_S6_j.exit

bb.d:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !277
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i32, ptr %i.q, align 1, !tbaa !276
  %i.s = tail call noundef i32 @llvm.bswap.i32(i32 %i.r)
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %i.t
  tail call void @_ZNK3AAT6LookupIN2OT7NumTypeILb1EtLj2EEEE14collect_glyphsI12hb_bit_set_tEEvRT_j(ptr noundef nonnull align 1 dereferenceable(13) %i.u, ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %3)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.w = load i32, ptr %i.v, align 1, !tbaa !276
  %i.x = tail call noundef i32 @llvm.bswap.i32(i32 %i.w)
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %i.y
  tail call void @_ZNK3AAT6LookupIN2OT7NumTypeILb1EtLj2EEEE14collect_glyphsI12hb_bit_set_tEEvRT_j(ptr noundef nonnull align 1 dereferenceable(13) %i.z, ptr noundef nonnull align 8 dereferenceable(48) %2, i32 noundef %3)
  br label %_ZNK3AAT19KerxSubTableFormat0INS_18KerxSubTableHeaderEE14collect_glyphsI12hb_bit_set_tEEvRT_S6_j.exit

bb.e:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !277
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 12
  tail call void @_ZNK3AAT10StateTableINS_13ExtendedTypesENS_19KerxSubTableFormat4INS_18KerxSubTableHeaderEE9EntryDataEE22collect_initial_glyphsI12hb_bit_set_tS4_EEvRT_jRKT0_(ptr noundef nonnull align 1 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %3, ptr noundef nonnull align 1 dereferenceable(32) %0)
  br label %_ZNK3AAT19KerxSubTableFormat0INS_18KerxSubTableHeaderEE14collect_glyphsI12hb_bit_set_tEEvRT_S6_j.exit

bb.f:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !277
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ac = load i32, ptr %i.ab, align 1, !tbaa !276
  %i.ad = and i32 %i.ac, 16777216
  %.not.i16 = icmp eq i32 %i.ad, 0
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.af = load i32, ptr %i.ae, align 1, !tbaa !276
  %i.ag = tail call noundef i32 @llvm.bswap.i32(i32 %i.af)
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %i.ah ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br i1 %.not.i16, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZNK3AAT6LookupIN2OT7NumTypeILb1EjLj4EEEE14collect_glyphsI12hb_bit_set_tEEvRT_j(ptr noundef nonnull align 1 dereferenceable(13) %i.ai, ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %3)
  %i.ak = load i32, ptr %i.aj, align 1, !tbaa !276
  %i.al = tail call noundef i32 @llvm.bswap.i32(i32 %i.ak)
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 %i.am
  tail call void @_ZNK3AAT6LookupIN2OT7NumTypeILb1EjLj4EEEE14collect_glyphsI12hb_bit_set_tEEvRT_j(ptr noundef nonnull align 1 dereferenceable(13) %i.an, ptr noundef nonnull align 8 dereferenceable(48) %2, i32 noundef %3)
  br label %_ZNK3AAT19KerxSubTableFormat0INS_18KerxSubTableHeaderEE14collect_glyphsI12hb_bit_set_tEEvRT_S6_j.exit

bb.h:                                             ; preds = %bb.f
  tail call void @_ZNK3AAT6LookupIN2OT7NumTypeILb1EtLj2EEEE14collect_glyphsI12hb_bit_set_tEEvRT_j(ptr noundef nonnull align 1 dereferenceable(13) %i.ai, ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %3)
  %i.ao = load i32, ptr %i.aj, align 1, !tbaa !276
  %i.ap = tail call noundef i32 @llvm.bswap.i32(i32 %i.ao)
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %i.aq
  tail call void @_ZNK3AAT6LookupIN2OT7NumTypeILb1EtLj2EEEE14collect_glyphsI12hb_bit_set_tEEvRT_j(ptr noundef nonnull align 1 dereferenceable(13) %i.ar, ptr noundef nonnull align 8 dereferenceable(48) %2, i32 noundef %3)
  br label %_ZNK3AAT19KerxSubTableFormat0INS_18KerxSubTableHeaderEE14collect_glyphsI12hb_bit_set_tEEvRT_S6_j.exit

_ZNK3AAT19KerxSubTableFormat0INS_18KerxSubTableHeaderEE14collect_glyphsI12hb_bit_set_tEEvRT_S6_j.exit: ; preds = %.lr.ph.i, %bb.h, %bb.g, %bb.b, %bb.a, %bb.e, %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11hb_vector_tIN3AAT32kern_subtable_accelerator_data_tELb0EE11resize_fullEibb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %_ZN11hb_vector_tIN3AAT32kern_subtable_accelerator_data_tELb0EE5allocEjb.exit.thread17, label %bb.b, !prof !265

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !2006   ; 6 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %_ZN11hb_vector_tIN3AAT32kern_subtable_accelerator_data_tELb0EE5allocEjb.exit.thread17, label %bb.c, !prof !265

bb.c:                                             ; preds = %bb.b
  br i1 %3, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !322
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %1, i32 %i.e) ; 3 uses
  %.not19.i = icmp ugt i32 %.sroa.speculated.i, %i.b
  %i.f = lshr i32 %i.b, 2
  %.not20.i = icmp ult i32 %.sroa.speculated.i, %i.f
  %or.cond.i = or i1 %.not19.i, %.not20.i
  br i1 %or.cond.i, label %.thread.i, label %_ZN11hb_vector_tIN3AAT32kern_subtable_accelerator_data_tELb0EE5allocEjb.exit.thread

bb.e:                                             ; preds = %bb.c
  %.not.i = icmp samesign ugt i32 %1, %i.b
  br i1 %.not.i, label %.preheader.i, label %_ZN11hb_vector_tIN3AAT32kern_subtable_accelerator_data_tELb0EE5allocEjb.exit.thread, !prof !265

.preheader.i:                                     ; preds = %bb.e, %.preheader.i
  %.039.i = phi i32 [ %i.i, %.preheader.i ], [ %i.b, %bb.e ] ; 2 uses
  %i.g = lshr i32 %.039.i, 1
  %i.h = add nuw i32 %.039.i, 8
  %i.i = add nuw i32 %i.h, %i.g                   ; 3 uses
  %i.j = icmp ugt i32 %1, %i.i
  br i1 %i.j, label %.preheader.i, label %.thread.i, !llvm.loop !5713

.thread.i:                                        ; preds = %.preheader.i, %bb.d
  %.138.i = phi i32 [ %.sroa.speculated.i, %bb.d ], [ %i.i, %.preheader.i ] ; 5 uses
  %i.k = icmp ugt i32 %.138.i, 7064090
  br i1 %i.k, label %_ZN11hb_vector_tIN3AAT32kern_subtable_accelerator_data_tELb0EE5allocEjb.exit.thread20, label %bb.f, !prof !265

bb.f:                                             ; preds = %.thread.i
  %i.l = tail call noundef ptr @_ZN11hb_vector_tIN3AAT32kern_subtable_accelerator_data_tELb0EE12_malloc_moveEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %.138.i) ; 2 uses
  %.not21.i = icmp ne i32 %.138.i, 0
  %.not22.i = icmp eq ptr %i.l, null
  %spec.select.i = and i1 %.not21.i, %.not22.i
  br i1 %spec.select.i, label %bb.g, label %_ZN11hb_vector_tIN3AAT32kern_subtable_accelerator_data_tELb0EE5allocEjb.exit, !prof !265

bb.g:                                             ; preds = %bb.f
  %i.m = load i32, ptr %0, align 8, !tbaa !2006   ; 2 uses
  %.not23.i = icmp ugt i32 %.138.i, %i.m
  br i1 %.not23.i, label %_ZN11hb_vector_tIN3AAT32kern_subtable_accelerator_data_tELb0EE5allocEjb.exit.thread20, label %_ZN11hb_vector_tIN3AAT32kern_subtable_accelerator_data_tELb0EE5allocEjb.exit.thread

_ZN11hb_vector_tIN3AAT32kern_subtable_accelerator_data_tELb0EE5allocEjb.exit.thread20: ; preds = %bb.g, %.thread.i
  %.sink.i.ph.in = phi i32 [ %i.b, %.thread.i ], [ %i.m, %bb.g ]
  %.sink.i.ph = xor i32 %.sink.i.ph.in, -1
  store i32 %.sink.i.ph, ptr %0, align 8, !tbaa !2006
  br label %_ZN11hb_vector_tIN3AAT32kern_subtable_accelerator_data_tELb0EE5allocEjb.exit.thread17

_ZN11hb_vector_tIN3AAT32kern_subtable_accelerator_data_tELb0EE5allocEjb.exit: ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.n, align 8, !tbaa !2005
  store i32 %.138.i, ptr %0, align 8, !tbaa !2006
  br label %_ZN11hb_vector_tIN3AAT32kern_subtable_accelerator_data_tELb0EE5allocEjb.exit.thread

_ZN11hb_vector_tIN3AAT32kern_subtable_accelerator_data_tELb0EE5allocEjb.exit.thread: ; preds = %bb.g, %bb.e, %bb.d, %_ZN11hb_vector_tIN3AAT32kern_subtable_accelerator_data_tELb0EE5allocEjb.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !1677 ; 3 uses
  %i.q = icmp ugt i32 %1, %i.p
  br i1 %i.q, label %bb.h, label %bb.j

bb.h:                                             ; preds = %_ZN11hb_vector_tIN3AAT32kern_subtable_accelerator_data_tELb0EE5allocEjb.exit.thread
  br i1 %2, label %.lr.ph.i, label %_ZN11hb_vector_tIN3AAT32kern_subtable_accelerator_data_tELb0EE11grow_vectorIS1_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit

.lr.ph.i:                                         ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.i

bb.i:                                             ; preds = %_ZN3AAT32kern_subtable_accelerator_data_tC2Ev.exit.i, %.lr.ph.i
  %i.s = phi i32 [ %i.p, %.lr.ph.i ], [ %i.ai, %_ZN3AAT32kern_subtable_accelerator_data_tC2Ev.exit.i ]
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !2005
  %i.u = zext nneg i32 %i.s to i64
  %i.v = getelementptr inbounds nuw [608 x i8], ptr %i.t, i64 %i.u ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(608) %i.v, i8 0, i64 64, i1 false)
  store i8 1, ptr %i.v, align 8, !tbaa !548
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.w, i8 0, i64 32, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  store i8 1, ptr %i.x, align 8, !tbaa !548
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 96 ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(544) %i.y, i8 0, i64 544, i1 false)
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i, %bb.i
  %.0.idx8.i.i.i.i = phi i64 [ 0, %bb.i ], [ %.0.add.i.i.i.i.7, %.preheader.i.i.i ] ; 9 uses
  %.0.ptr.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 %.0.idx8.i.i.i.i
  store atomic i16 -1, ptr %.0.ptr.i.i.i.i monotonic, align 2
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %.0.idx8.i.i.i.i
  %.0.ptr.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.aa, i64 2
  store atomic i16 -1, ptr %.0.ptr.i.i.i.i.1 monotonic, align 2
end_hunk_7
