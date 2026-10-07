Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/harfbuzz?download=true
inline.NumInlined: 35471
inline.NumDeleted: 12449
loop-unroll.NumCompletelyUnrolled: 169
loop-unroll.NumRuntimeUnrolled: 274
loop-unroll.NumUnrolled: 473
begin_hunk_0_@_ZNK2OT8LigGlyph8sanitizeEP21hb_sanitize_context_t:bb.a
  %i.bz = load i32, ptr %i.g, align 8, !tbaa !506
  %i.ca = zext i32 %i.bz to i64
  %.not = icmp ugt i64 %i.by, %i.ca
  br i1 %.not, label %_ZNK2OT7ArrayOfINS_8OffsetToINS_10CaretValueENS_7NumTypeILb1EtLj2EEEvLb1EEES4_E8sanitizeIJPKNS_8LigGlyphEEEEbP21hb_sanitize_context_tDpOT_.exit, label %_ZN21hb_sanitize_context_t9_dispatchIN2OT8OffsetToINS1_10CaretValueENS1_7NumTypeILb1EtLj2EEEvLb1EEEJPKNS1_8LigGlyphEEEEDTcldtfp_8sanitizefpTspclsr3stdE7forwardIT0_Efp1_EEERKT_11hb_priorityILj1EEDpOSA_.exit.thread, !prof !318

_ZN21hb_sanitize_context_t9_dispatchIN2OT8OffsetToINS1_10CaretValueENS1_7NumTypeILb1EtLj2EEEvLb1EEEJPKNS1_8LigGlyphEEEEDTcldtfp_8sanitizefpTspclsr3stdE7forwardIT0_Efp1_EEERKT_11hb_priorityILj1EEDpOSA_.exit.thread: ; preds = %bb.i, %bb.g, %bb.e, %.split9, %.split, %_ZN21hb_sanitize_context_t9_dispatchIN2OT8OffsetToINS1_10CaretValueENS1_7NumTypeILb1EtLj2EEEvLb1EEEJPKNS1_8LigGlyphEEEEDTcldtfp_8sanitizefpTspclsr3stdE7forwardIT0_Efp1_EEERKT_11hb_priorityILj1EEDpOSA_.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZNK2OT7ArrayOfINS_8OffsetToINS_10CaretValueENS_7NumTypeILb1EtLj2EEEvLb1EEES4_E8sanitizeIJPKNS_8LigGlyphEEEEbP21hb_sanitize_context_tDpOT_.exit, label %.lr.ph, !llvm.loop !3720

_ZNK2OT7ArrayOfINS_8OffsetToINS_10CaretValueENS_7NumTypeILb1EtLj2EEEvLb1EEES4_E8sanitizeIJPKNS_8LigGlyphEEEEbP21hb_sanitize_context_tDpOT_.exit: ; preds = %_ZN21hb_sanitize_context_t9_dispatchIN2OT8OffsetToINS1_10CaretValueENS1_7NumTypeILb1EtLj2EEEvLb1EEEJPKNS1_8LigGlyphEEEEDTcldtfp_8sanitizefpTspclsr3stdE7forwardIT0_Efp1_EEERKT_11hb_priorityILj1EEDpOSA_.exit.thread, %_ZN21hb_sanitize_context_t9_dispatchIN2OT8OffsetToINS1_10CaretValueENS1_7NumTypeILb1EtLj2EEEvLb1EEEJPKNS1_8LigGlyphEEEEDTcldtfp_8sanitizefpTspclsr3stdE7forwardIT0_Efp1_EEERKT_11hb_priorityILj1EEDpOSA_.exit, %.split, %.split9, %.lr.ph, %bb.h, %bb.f, %bb.d, %bb.b, %bb.c, %bb.a, %_ZNK2OT7ArrayOfINS_8OffsetToINS_10CaretValueENS_7NumTypeILb1EtLj2EEEvLb1EEES4_E16sanitize_shallowEP21hb_sanitize_context_t.exit
  %.2.i = phi i1 [ false, %bb.b ], [ false, %_ZNK2OT7ArrayOfINS_8OffsetToINS_10CaretValueENS_7NumTypeILb1EtLj2EEEvLb1EEES4_E16sanitize_shallowEP21hb_sanitize_context_t.exit ], [ false, %bb.c ], [ false, %bb.a ], [ true, %bb.d ], [ false, %bb.h ], [ false, %.lr.ph ], [ false, %.split9 ], [ false, %.split ], [ false, %_ZN21hb_sanitize_context_t9_dispatchIN2OT8OffsetToINS1_10CaretValueENS1_7NumTypeILb1EtLj2EEEvLb1EEEJPKNS1_8LigGlyphEEEEDTcldtfp_8sanitizefpTspclsr3stdE7forwardIT0_Efp1_EEERKT_11hb_priorityILj1EEDpOSA_.exit ], [ true, %_ZN21hb_sanitize_context_t9_dispatchIN2OT8OffsetToINS1_10CaretValueENS1_7NumTypeILb1EtLj2EEEvLb1EEEJPKNS1_8LigGlyphEEEEDTcldtfp_8sanitizefpTspclsr3stdE7forwardIT0_Efp1_EEERKT_11hb_priorityILj1EEDpOSA_.exit.thread ], [ false, %bb.f ]
  ret i1 %.2.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2OT6Device8sanitizeEP21hb_sanitize_context_t(ptr noundef nonnull align 1 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !505
  %i.e = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !506
  %i.j = zext i32 %i.i to i64
  %.not = icmp ugt i64 %i.g, %i.j
  br i1 %.not, label %_ZNK2OT13HintingDevice8sanitizeEP21hb_sanitize_context_t.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load i16, ptr %i.a, align 1, !tbaa !283
  %i.l = tail call noundef i16 @llvm.bswap.i16(i16 %i.k)
  switch i16 %i.l, label %_ZNK2OT13HintingDevice8sanitizeEP21hb_sanitize_context_t.exit [
    i16 1, label %bb.c
    i16 2, label %bb.c
    i16 3, label %bb.c
    i16 -32768, label %bb.i
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !505
  %i.n = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.o = sub i64 %i.e, %i.n
  %i.p = load i32, ptr %i.h, align 8, !tbaa !506
  %i.q = zext i32 %i.p to i64                     ; 2 uses
  %.not.i = icmp ugt i64 %i.o, %i.q
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  br i1 %.not.i, label %_ZNK2OT13HintingDevice8sanitizeEP21hb_sanitize_context_t.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = load i16, ptr %i.a, align 1, !tbaa !283
  %i.t = tail call noundef i16 @llvm.bswap.i16(i16 %i.s) ; 2 uses
  %i.u = add i16 %i.t, -4
  %or.cond.i.i = icmp ult i16 %i.u, -3
  br i1 %or.cond.i.i, label %_ZNK2OT13HintingDevice8get_sizeEv.exit.i, label %bb.e, !prof !408

bb.e:                                             ; preds = %bb.d
  %i.v = load i16, ptr %0, align 1, !tbaa !283
  %i.w = tail call noundef i16 @llvm.bswap.i16(i16 %i.v) ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.y = load i16, ptr %i.x, align 1, !tbaa !283
  %i.z = tail call noundef i16 @llvm.bswap.i16(i16 %i.y) ; 2 uses
  %i.aa = icmp ugt i16 %i.w, %i.z
  br i1 %i.aa, label %_ZNK2OT13HintingDevice8get_sizeEv.exit.i, label %bb.f, !prof !267

bb.f:                                             ; preds = %bb.e
  %narrow.i.i = sub nuw i16 %i.z, %i.w
  %i.ab = zext i16 %narrow.i.i to i32
  %narrow5.i.i = sub nuw nsw i16 4, %i.t
  %i.ac = zext nneg i16 %narrow5.i.i to i32
  %i.ad = lshr i32 %i.ab, %i.ac
  %i.ae = shl nuw nsw i32 %i.ad, 1
  %i.af = add nuw nsw i32 %i.ae, 8
  br label %_ZNK2OT13HintingDevice8get_sizeEv.exit.i

_ZNK2OT13HintingDevice8get_sizeEv.exit.i:         ; preds = %bb.f, %bb.e, %bb.d
  %.0.i.i = phi i32 [ %i.af, %bb.f ], [ 6, %bb.e ], [ 6, %bb.d ] ; 2 uses
  %i.ag = ptrtoint ptr %0 to i64                  ; 2 uses
  %i.ah = sub i64 %i.ag, %i.n
  %.not.i.i = icmp ugt i64 %i.ah, %i.q
  br i1 %.not.i.i, label %_ZNK2OT13HintingDevice8sanitizeEP21hb_sanitize_context_t.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK2OT13HintingDevice8get_sizeEv.exit.i
  %i.ai = load ptr, ptr %i.r, align 8, !tbaa !504
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = sub i64 %i.aj, %i.ag
  %i.al = trunc i64 %i.ak to i32
  %.not12.i.i = icmp ugt i32 %.0.i.i, %i.al
  br i1 %.not12.i.i, label %_ZNK2OT13HintingDevice8sanitizeEP21hb_sanitize_context_t.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !508
  %i.ao = sub i32 %i.an, %.0.i.i                  ; 2 uses
  store i32 %i.ao, ptr %i.am, align 4, !tbaa !508
  %i.ap = icmp sgt i32 %i.ao, 0
  br label %_ZNK2OT13HintingDevice8sanitizeEP21hb_sanitize_context_t.exit

bb.i:                                             ; preds = %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.aq = load ptr, ptr %i.c, align 8, !tbaa !505
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = sub i64 %i.e, %i.ar
  %i.at = load i32, ptr %i.h, align 8, !tbaa !506
  %i.au = zext i32 %i.at to i64
  %i.av = icmp ule i64 %i.as, %i.au
  br label %_ZNK2OT13HintingDevice8sanitizeEP21hb_sanitize_context_t.exit

_ZNK2OT13HintingDevice8sanitizeEP21hb_sanitize_context_t.exit: ; preds = %bb.h, %bb.g, %_ZNK2OT13HintingDevice8get_sizeEv.exit.i, %bb.c, %bb.b, %bb.a, %bb.i
  %.0 = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ %i.av, %bb.i ], [ false, %bb.c ], [ false, %bb.g ], [ false, %_ZNK2OT13HintingDevice8get_sizeEv.exit.i ], [ %i.ap, %bb.h ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN21hb_sanitize_context_t8dispatchIN2OT13MarkGlyphSetsEJEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS5_(ptr noundef nonnull align 8 dereferenceable(62) %0, ptr noundef nonnull align 1 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !505
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !506
  %i.j = zext i32 %i.i to i64
  %.not.i.i = icmp ugt i64 %i.g, %i.j
  br i1 %.not.i.i, label %_ZN21hb_sanitize_context_t9_dispatchIN2OT13MarkGlyphSetsEJEEEDTcldtfp_8sanitizefpTspclsr3stdE7forwardIT0_Efp1_EEERKT_11hb_priorityILj1EEDpOS3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.k = load i16, ptr %1, align 1, !tbaa !283
  %cond.i.i = icmp eq i16 %i.k, 256
  br i1 %cond.i.i, label %bb.c, label %_ZN21hb_sanitize_context_t9_dispatchIN2OT13MarkGlyphSetsEJEEEDTcldtfp_8sanitizefpTspclsr3stdE7forwardIT0_Efp1_EEERKT_11hb_priorityILj1EEDpOS3_.exit

bb.c:                                             ; preds = %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #63
  store ptr %1, ptr %i.a, align 8, !tbaa !1725
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !505
  %i.n = ptrtoint ptr %i.l to i64                 ; 3 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = load i32, ptr %i.h, align 8, !tbaa !506
  %i.r = zext i32 %i.q to i64
  %.not.i2.i.i.i = icmp ugt i64 %i.p, %i.r
  br i1 %.not.i2.i.i.i, label %_ZNK2OT20MarkGlyphSetsFormat18sanitizeEP21hb_sanitize_context_t.exit.i.i, label %bb.d, !prof !711

bb.d:                                             ; preds = %bb.c
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.s = load i16, ptr %i.b, align 1, !tbaa !283
  %i.t = tail call noundef i16 @llvm.bswap.i16(i16 %i.s)
  %i.u = zext i16 %i.t to i32
  %i.v = shl nuw nsw i32 %i.u, 2                  ; 2 uses
  %i.w = load ptr, ptr %i.c, align 8, !tbaa !505
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.n, %i.x
  %i.z = load i32, ptr %i.h, align 8, !tbaa !506
  %i.aa = zext i32 %i.z to i64
  %.not.i.i.i.i.i.i = icmp ugt i64 %i.y, %i.aa
  br i1 %.not.i.i.i.i.i.i, label %_ZNK2OT20MarkGlyphSetsFormat18sanitizeEP21hb_sanitize_context_t.exit.i.i, label %bb.e, !prof !711

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !504
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = sub i64 %i.ad, %i.n
  %i.af = trunc i64 %i.ae to i32
  %.not12.i.i.i.i.i.i = icmp ugt i32 %i.v, %i.af
  br i1 %.not12.i.i.i.i.i.i, label %_ZNK2OT20MarkGlyphSetsFormat18sanitizeEP21hb_sanitize_context_t.exit.i.i, label %_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EjLj4EEEvLb1EEENS5_ILb1EtLj2EEEE16sanitize_shallowEP21hb_sanitize_context_t.exit.i.i.i, !prof !711

_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EjLj4EEEvLb1EEENS5_ILb1EtLj2EEEE16sanitize_shallowEP21hb_sanitize_context_t.exit.i.i.i: ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !508
  %i.ai = sub i32 %i.ah, %i.v                     ; 2 uses
  store i32 %i.ai, ptr %i.ag, align 4, !tbaa !508
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %bb.f, label %_ZNK2OT20MarkGlyphSetsFormat18sanitizeEP21hb_sanitize_context_t.exit.i.i, !prof !672

bb.f:                                             ; preds = %_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EjLj4EEEvLb1EEENS5_ILb1EtLj2EEEE16sanitize_shallowEP21hb_sanitize_context_t.exit.i.i.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.ak = load i16, ptr %i.b, align 1, !tbaa !283 ; 2 uses
  %.not.i7.not.i.i.i = icmp eq i16 %i.ak, 0
  br i1 %.not.i7.not.i.i.i, label %_ZNK2OT20MarkGlyphSetsFormat18sanitizeEP21hb_sanitize_context_t.exit.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.f
  %i.al = tail call noundef i16 @llvm.bswap.i16(i16 %i.ak)
  %wide.trip.count.i.i.i = zext i16 %i.al to i64
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i.i.i
  %i.an = call noundef zeroext i1 @_ZN21hb_sanitize_context_t9_dispatchIN2OT8OffsetToINS1_6Layout6Common8CoverageENS1_7NumTypeILb1EjLj4EEEvLb1EEEJPKNS1_20MarkGlyphSetsFormat1EEEEDTcldtfp_8sanitizefpTspclsr3stdE7forwardIT0_Efp1_EEERKT_11hb_priorityILj1EEDpOSC_(ptr noundef nonnull align 8 dereferenceable(62) %0, ptr noundef nonnull align 1 dereferenceable(4) %i.am, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp ne i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  %or.cond.not = select i1 %i.an, i1 %exitcond.not.i.i.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i.i.i, label %_ZNK2OT20MarkGlyphSetsFormat18sanitizeEP21hb_sanitize_context_t.exit.i.i, !prof !704, !llvm.loop !3721

_ZNK2OT20MarkGlyphSetsFormat18sanitizeEP21hb_sanitize_context_t.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.f, %_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EjLj4EEEvLb1EEENS5_ILb1EtLj2EEEE16sanitize_shallowEP21hb_sanitize_context_t.exit.i.i.i, %bb.e, %bb.d, %bb.c
  %.2.i.i.i.i = phi i1 [ false, %bb.d ], [ false, %_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EjLj4EEEvLb1EEENS5_ILb1EtLj2EEEE16sanitize_shallowEP21hb_sanitize_context_t.exit.i.i.i ], [ false, %bb.e ], [ false, %bb.c ], [ true, %bb.f ], [ %i.an, %.lr.ph.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #63
  br label %_ZN21hb_sanitize_context_t9_dispatchIN2OT13MarkGlyphSetsEJEEEDTcldtfp_8sanitizefpTspclsr3stdE7forwardIT0_Efp1_EEERKT_11hb_priorityILj1EEDpOS3_.exit

_ZN21hb_sanitize_context_t9_dispatchIN2OT13MarkGlyphSetsEJEEEDTcldtfp_8sanitizefpTspclsr3stdE7forwardIT0_Efp1_EEERKT_11hb_priorityILj1EEDpOS3_.exit: ; preds = %bb.a, %bb.b, %_ZNK2OT20MarkGlyphSetsFormat18sanitizeEP21hb_sanitize_context_t.exit.i.i
  %.0.i.i = phi i1 [ %.2.i.i.i.i, %_ZNK2OT20MarkGlyphSetsFormat18sanitizeEP21hb_sanitize_context_t.exit.i.i ], [ false, %bb.a ], [ true, %bb.b ]
  ret i1 %.0.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN21hb_sanitize_context_t9_dispatchIN2OT8OffsetToINS1_6Layout6Common8CoverageENS1_7NumTypeILb1EjLj4EEEvLb1EEEJPKNS1_20MarkGlyphSetsFormat1EEEEDTcldtfp_8sanitizefpTspclsr3stdE7forwardIT0_Efp1_EEERKT_11hb_priorityILj1EEDpOSC_(ptr noundef nonnull align 8 dereferenceable(62) %0, ptr noundef nonnull align 1 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !1725
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !505
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !506
  %i.j = zext i32 %i.i to i64
  %.not.i.not = icmp ugt i64 %i.g, %i.j
  br i1 %.not.i.not, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit, label %bb.b, !prof !267

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.k = load i32, ptr %1, align 1, !tbaa !278    ; 2 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = tail call noundef i32 @llvm.bswap.i32(i32 %i.k)
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.n ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 2 ; 3 uses
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !505
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = load i32, ptr %i.h, align 8, !tbaa !506
  %i.v = zext i32 %i.u to i64
  %.not.i.i = icmp ugt i64 %i.t, %i.v
  br i1 %.not.i.i, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.w = load i16, ptr %i.o, align 1, !tbaa !283
  %i.x = tail call noundef i16 @llvm.bswap.i16(i16 %i.w)
  switch i16 %i.x, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit [
    i16 1, label %bb.e
    i16 2, label %bb.h
  ]

bb.e:                                             ; preds = %bb.d
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.z = load ptr, ptr %i.c, align 8, !tbaa !505
  %i.aa = ptrtoint ptr %i.y to i64                ; 3 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = load i32, ptr %i.h, align 8, !tbaa !506
  %i.ae = zext i32 %i.ad to i64
  %.not.i.i.i.i = icmp ugt i64 %i.ac, %i.ae
  br i1 %.not.i.i.i.i, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit, label %bb.f, !prof !711

bb.f:                                             ; preds = %bb.e
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.af = load ptr, ptr %i.c, align 8, !tbaa !505
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %i.aa, %i.ag
  %i.ai = load i32, ptr %i.h, align 8, !tbaa !506
  %i.aj = zext i32 %i.ai to i64
  %.not.i.i.i.i.i.i = icmp ugt i64 %i.ah, %i.aj
  br i1 %.not.i.i.i.i.i.i, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit, label %bb.g, !prof !711

bb.g:                                             ; preds = %bb.f
  %i.ak = load i16, ptr %i.p, align 1, !tbaa !283
  %i.al = tail call noundef i16 @llvm.bswap.i16(i16 %i.ak)
  %i.am = zext i16 %i.al to i32
  %i.an = shl nuw nsw i32 %i.am, 1                ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !504
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = sub i64 %i.aq, %i.aa
  %i.as = trunc i64 %i.ar to i32
  %.not12.i.i.i.i.i.i = icmp ugt i32 %i.an, %i.as
  br i1 %.not12.i.i.i.i.i.i, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit, label %_ZNK2OT6Layout6Common8Coverage8sanitizeEP21hb_sanitize_context_t.exit.sink.split.i.i, !prof !711

bb.h:                                             ; preds = %bb.d
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.at = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.au = load ptr, ptr %i.c, align 8, !tbaa !505
  %i.av = ptrtoint ptr %i.at to i64               ; 3 uses
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = load i32, ptr %i.h, align 8, !tbaa !506
  %i.az = zext i32 %i.ay to i64
  %.not.i.i2.i.i = icmp ugt i64 %i.ax, %i.az
  br i1 %.not.i.i2.i.i, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit, label %bb.i, !prof !711

bb.i:                                             ; preds = %bb.h
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.ba = load ptr, ptr %i.c, align 8, !tbaa !505
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = sub i64 %i.av, %i.bb
  %i.bd = load i32, ptr %i.h, align 8, !tbaa !506
  %i.be = zext i32 %i.bd to i64
  %.not.i.i.i.i3.i.i = icmp ugt i64 %i.bc, %i.be
  br i1 %.not.i.i.i.i3.i.i, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit, label %bb.j, !prof !711

bb.j:                                             ; preds = %bb.i
  %i.bf = load i16, ptr %i.p, align 1, !tbaa !283
  %i.bg = tail call noundef i16 @llvm.bswap.i16(i16 %i.bf)
  %i.bh = zext i16 %i.bg to i32
  %i.bi = mul nuw nsw i32 %i.bh, 6                ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !504
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = sub i64 %i.bl, %i.av
  %i.bn = trunc i64 %i.bm to i32
  %.not12.i.i.i.i4.i.i = icmp ugt i32 %i.bi, %i.bn
  br i1 %.not12.i.i.i.i4.i.i, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit, label %_ZNK2OT6Layout6Common8Coverage8sanitizeEP21hb_sanitize_context_t.exit.sink.split.i.i, !prof !711

_ZNK2OT6Layout6Common8Coverage8sanitizeEP21hb_sanitize_context_t.exit.sink.split.i.i: ; preds = %bb.j, %bb.g
  %.sink13.i.i = phi i32 [ %i.an, %bb.g ], [ %i.bi, %bb.j ]
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !508
  %i.bq = sub i32 %i.bp, %.sink13.i.i             ; 2 uses
  store i32 %i.bq, ptr %i.bo, align 4, !tbaa !508
  %i.br = icmp sgt i32 %i.bq, 0
  br label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit

_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit: ; preds = %_ZNK2OT6Layout6Common8Coverage8sanitizeEP21hb_sanitize_context_t.exit.sink.split.i.i, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.a, %bb.b
  %i.bs = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ false, %bb.c ], [ true, %bb.d ], [ false, %bb.g ], [ false, %bb.f ], [ false, %bb.h ], [ false, %bb.e ], [ false, %bb.i ], [ false, %bb.j ], [ %i.br, %_ZNK2OT6Layout6Common8Coverage8sanitizeEP21hb_sanitize_context_t.exit.sink.split.i.i ]
  ret i1 %i.bs
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2OT20MarkGlyphSetsFormat116collect_coverageI15hb_set_digest_tEEvR11hb_vector_tIT_Lb0EE(ptr noundef nonnull align 1 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.c = load i16, ptr %i.a, align 1, !tbaa !283  ; 2 uses
  %i.d = tail call noundef i16 @llvm.bswap.i16(i16 %i.c)
  %i.e = zext i16 %i.d to i64
  %.idx = shl nuw nsw i64 %i.e, 2
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %.not35 = icmp eq i16 %i.c, 0
  br i1 %.not35, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit
  %.036 = phi ptr [ %i.b, %.lr.ph ], [ %i.du, %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit ] ; 2 uses
  %i.i = load i32, ptr %.036, align 1, !tbaa !278 ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  %i.k = tail call i32 @llvm.bswap.i32(i32 %i.i)
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %i.l
  %.0.i.i = select i1 %i.j, ptr @_hb_NullPool, ptr %i.m, !prof !267 ; 6 uses
  %i.n = load i32, ptr %i.g, align 4, !tbaa !1726 ; 2 uses
  %i.o = add i32 %i.n, 1                          ; 5 uses
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %bb.e, label %bb.c, !prof !267

bb.c:                                             ; preds = %bb.b
  %i.q = tail call noundef zeroext i1 @_ZN11hb_vector_tI15hb_set_digest_tLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %i.o, i1 noundef zeroext false)
  br i1 %i.q, label %bb.d, label %bb.e, !prof !525

bb.d:                                             ; preds = %bb.c
  %i.r = load i32, ptr %i.g, align 4, !tbaa !1726 ; 2 uses
  %i.s = icmp ugt i32 %i.o, %i.r
  br i1 %i.s, label %.lr.ph.i.i.i.i, label %.loopexit.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %.lr.ph.i.i.i.i
  %i.t = phi i32 [ %i.y, %.lr.ph.i.i.i.i ], [ %i.r, %bb.d ]
  %i.u = load ptr, ptr %i.h, align 8, !tbaa !1727
  %i.v = zext nneg i32 %i.t to i64
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %i.v
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, i8 0, i64 24, i1 false)
  %i.x = load i32, ptr %i.g, align 4, !tbaa !1726
  %i.y = add i32 %i.x, 1                          ; 3 uses
  store i32 %i.y, ptr %i.g, align 4, !tbaa !1726
  %i.z = icmp ult i32 %i.y, %i.o
  br i1 %i.z, label %.lr.ph.i.i.i.i, label %.loopexit.i, !llvm.loop !3722

bb.e:                                             ; preds = %bb.c, %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @_hb_CrapPool, i8 0, i64 24, i1 false)
  br label %_ZN11hb_vector_tI15hb_set_digest_tLb0EE4pushEv.exit
end_hunk_0
begin_hunk_1_@_ZNK2OT21ChainContextFormat2_5INS_6Layout10SmallTypesEE14collect_glyphsEPNS_27hb_collect_glyphs_context_tE:bb.a
bb.au:                                            ; preds = %bb.at
  %i.is = load i32, ptr %i.cl, align 4, !tbaa !547 ; 2 uses
  %.not.i.i.i.i451 = icmp eq i32 %i.is, 0
  br i1 %.not.i.i.i.i451, label %_ZN11hb_vector_tI13hb_bit_page_tLb0EE5allocEjb.exit457, label %bb.av, !prof !267

bb.av:                                            ; preds = %bb.au
  %i.it = zext i32 %i.is to i64
  %i.iu = mul nuw nsw i64 %i.it, 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ir, ptr nonnull readonly align 1 %i.io, i64 %i.iu, i1 false), !alias.scope !3986
  br label %_ZN11hb_vector_tI13hb_bit_page_tLb0EE5allocEjb.exit457

_ZN11hb_vector_tI13hb_bit_page_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.i440: ; preds = %bb.as, %bb.ar
  %i.iv = phi ptr [ null, %bb.as ], [ %i.io, %bb.ar ]
  %i.iw = zext nneg i32 %.138.i437 to i64
  %i.ix = mul nuw nsw i64 %i.iw, 72
  %i.iy = tail call noalias noundef ptr @realloc(ptr noundef %i.iv, i64 noundef %i.ix) #66 ; 2 uses
  %.not22.i441 = icmp eq ptr %i.iy, null
  br i1 %.not22.i441, label %_ZN11hb_vector_tI13hb_bit_page_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread54.i447, label %_ZN11hb_vector_tI13hb_bit_page_tLb0EE5allocEjb.exit457, !prof !319

_ZN11hb_vector_tI13hb_bit_page_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread54.i447: ; preds = %_ZN11hb_vector_tI13hb_bit_page_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.i440, %bb.at
  %i.iz = load i32, ptr %i.cm, align 8, !tbaa !554 ; 2 uses
  %.not23.i448 = icmp ugt i32 %.138.i437, %i.iz
  br i1 %.not23.i448, label %_ZN11hb_vector_tI13hb_bit_page_tLb0EE5allocEjb.exit457.thread528, label %_ZN11hb_vector_tI13hb_bit_page_tLb0EE5allocEjb.exit457.thread

_ZN11hb_vector_tI13hb_bit_page_tLb0EE5allocEjb.exit457.thread528: ; preds = %_ZN11hb_vector_tI13hb_bit_page_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread54.i447, %.thread.i436
  %.sink.i445.ph.in = phi i32 [ %i.ie, %.thread.i436 ], [ %i.iz, %_ZN11hb_vector_tI13hb_bit_page_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread54.i447 ]
  %.sink.i445.ph = xor i32 %.sink.i445.ph.in, -1
  store i32 %.sink.i445.ph, ptr %i.cm, align 8, !tbaa !554
  br label %_ZN12hb_bit_set_t6resizeEjbb.exit

_ZN11hb_vector_tI13hb_bit_page_tLb0EE5allocEjb.exit457: ; preds = %bb.ap, %bb.aq, %bb.au, %bb.av, %_ZN11hb_vector_tI13hb_bit_page_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.i440
  %.1.i.i42.i443 = phi ptr [ %i.iy, %_ZN11hb_vector_tI13hb_bit_page_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.i440 ], [ null, %bb.ap ], [ null, %bb.aq ], [ %i.ir, %bb.au ], [ %i.ir, %bb.av ]
  store ptr %.1.i.i42.i443, ptr %i.cn, align 8, !tbaa !555
  store i32 %.138.i437, ptr %i.cm, align 8, !tbaa !554
  br label %_ZN11hb_vector_tI13hb_bit_page_tLb0EE5allocEjb.exit457.thread

_ZN11hb_vector_tI13hb_bit_page_tLb0EE5allocEjb.exit457.thread: ; preds = %_ZN11hb_vector_tI13hb_bit_page_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread54.i447, %bb.an, %bb.am, %_ZN11hb_vector_tI13hb_bit_page_tLb0EE5allocEjb.exit457
  %i.ja = load i32, ptr %i.cl, align 4, !tbaa !547 ; 2 uses
  %i.jb = icmp ugt i32 %i.ic, %i.ja
  br i1 %i.jb, label %.lr.ph.i.i293, label %_ZN11hb_vector_tI13hb_bit_page_tLb0EE11grow_vectorIS0_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i

.lr.ph.i.i293:                                    ; preds = %_ZN11hb_vector_tI13hb_bit_page_tLb0EE5allocEjb.exit457.thread
  %i.jc = load ptr, ptr %i.cn, align 8, !tbaa !555 ; 5 uses
  %i.jd = zext i32 %i.ja to i64                   ; 4 uses
  %wide.trip.count.i.i294 = zext nneg i32 %i.ic to i64 ; 3 uses
  %i.je = sub nsw i64 %wide.trip.count.i.i294, %i.jd
  %xtraiter1044 = and i64 %i.je, 3                ; 2 uses
  %lcmp.mod1045.not = icmp eq i64 %xtraiter1044, 0
  br i1 %lcmp.mod1045.not, label %.prol.loopexit1043, label %.prol.preheader1042

.prol.preheader1042:                              ; preds = %.lr.ph.i.i293, %.prol.preheader1042
  %indvars.iv.i.i295.prol = phi i64 [ %indvars.iv.next.i.i296.prol, %.prol.preheader1042 ], [ %i.jd, %.lr.ph.i.i293 ] ; 2 uses
  %prol.iter1046 = phi i64 [ %prol.iter1046.next, %.prol.preheader1042 ], [ 0, %.lr.ph.i.i293 ]
  %i.jf = getelementptr inbounds nuw [72 x i8], ptr %i.jc, i64 %indvars.iv.i.i295.prol ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.jg, i8 0, i64 64, i1 false), !tbaa !1240
  store i32 0, ptr %i.jf, align 8, !tbaa !1507
  %indvars.iv.next.i.i296.prol = add nuw nsw i64 %indvars.iv.i.i295.prol, 1 ; 2 uses
  %prol.iter1046.next = add i64 %prol.iter1046, 1 ; 2 uses
  %prol.iter1046.cmp.not = icmp eq i64 %prol.iter1046.next, %xtraiter1044
  br i1 %prol.iter1046.cmp.not, label %.prol.loopexit1043, label %.prol.preheader1042, !llvm.loop !3948

.prol.loopexit1043:                               ; preds = %.prol.preheader1042, %.lr.ph.i.i293
  %indvars.iv.i.i295.unr = phi i64 [ %i.jd, %.lr.ph.i.i293 ], [ %indvars.iv.next.i.i296.prol, %.prol.preheader1042 ]
  %i.jh = sub nsw i64 %i.jd, %wide.trip.count.i.i294
  %i.ji = icmp ugt i64 %i.jh, -4
  br i1 %i.ji, label %_ZN11hb_vector_tI13hb_bit_page_tLb0EE11grow_vectorIS0_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i, label %.lr.ph.i.i293.new

.lr.ph.i.i293.new:                                ; preds = %.prol.loopexit1043, %.lr.ph.i.i293.new
  %indvars.iv.i.i295 = phi i64 [ %indvars.iv.next.i.i296.3, %.lr.ph.i.i293.new ], [ %indvars.iv.i.i295.unr, %.prol.loopexit1043 ] ; 5 uses
  %i.jj = getelementptr inbounds nuw [72 x i8], ptr %i.jc, i64 %indvars.iv.i.i295 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.jk, i8 0, i64 64, i1 false), !tbaa !1240
  store i32 0, ptr %i.jj, align 8, !tbaa !1507
  %i.jl = getelementptr inbounds nuw [72 x i8], ptr %i.jc, i64 %indvars.iv.i.i295 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 72
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jl, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.jn, i8 0, i64 64, i1 false), !tbaa !1240
  store i32 0, ptr %i.jm, align 8, !tbaa !1507
  %i.jo = getelementptr inbounds nuw [72 x i8], ptr %i.jc, i64 %indvars.iv.i.i295 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 144
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jo, i64 152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.jq, i8 0, i64 64, i1 false), !tbaa !1240
  store i32 0, ptr %i.jp, align 8, !tbaa !1507
  %i.jr = getelementptr inbounds nuw [72 x i8], ptr %i.jc, i64 %indvars.iv.i.i295 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 216
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jr, i64 224
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.jt, i8 0, i64 64, i1 false), !tbaa !1240
  store i32 0, ptr %i.js, align 8, !tbaa !1507
  %indvars.iv.next.i.i296.3 = add nuw nsw i64 %indvars.iv.i.i295, 4 ; 2 uses
  %exitcond.not.i.i297.3 = icmp eq i64 %indvars.iv.next.i.i296.3, %wide.trip.count.i.i294
  br i1 %exitcond.not.i.i297.3, label %_ZN11hb_vector_tI13hb_bit_page_tLb0EE11grow_vectorIS0_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i, label %.lr.ph.i.i293.new, !llvm.loop !142

_ZN11hb_vector_tI13hb_bit_page_tLb0EE11grow_vectorIS0_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i: ; preds = %.prol.loopexit1043, %.lr.ph.i.i293.new, %_ZN11hb_vector_tI13hb_bit_page_tLb0EE5allocEjb.exit457.thread
  store i32 %i.ic, ptr %i.cl, align 4, !tbaa !547
  br label %_ZN12hb_bit_set_t6resizeEjbb.exit

_ZN12hb_bit_set_t6resizeEjbb.exit:                ; preds = %bb.ak, %_ZN11hb_vector_tI13hb_bit_page_tLb0EE11grow_vectorIS0_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i, %.critedge.i, %_ZN11hb_vector_tI13hb_bit_page_tLb0EE5allocEjb.exit457.thread528
  store i8 0, ptr %i.cf, align 8, !tbaa !550
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i

bb.aw:                                            ; preds = %_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5allocEjb.exit.thread, %bb.ai, %bb.aj
  store i32 %i.fl, ptr %i.cj, align 4, !tbaa !548
  %i.ju = load ptr, ptr %i.cn, align 8, !tbaa !1236
  %i.jv = zext i32 %i.fa to i64                   ; 2 uses
  %i.jw = getelementptr inbounds nuw [72 x i8], ptr %i.ju, i64 %i.jv ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.jx, i8 0, i64 64, i1 false), !tbaa !1240
  store i32 0, ptr %i.jw, align 8, !tbaa !1507
  %i.jy = load ptr, ptr %i.ck, align 8, !tbaa !1232
  %i.jz = zext nneg i32 %storemerge.i.i.ph.sink.i.i.ph.i.i to i64 ; 3 uses
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.jy, i64 %i.jz ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  %i.kc = sub i32 %i.fa, %storemerge.i.i.ph.sink.i.i.ph.i.i
  %i.kd = shl i32 %i.kc, 3
  %i.ke = zext i32 %i.kd to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.kb, ptr align 4 %i.ka, i64 %i.ke, i1 false)
  %i.kf = load ptr, ptr %i.ck, align 8, !tbaa !1232 ; 2 uses
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %i.kf, i64 %i.jz
  %.sroa.5.0.insert.shift.i.i = shl nuw i64 %i.jv, 32
  %.sroa.0.0.insert.ext.i.i = zext nneg i32 %i.es to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.5.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.kg, align 4, !tbaa !324
  br label %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i

_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i: ; preds = %bb.r, %bb.aw
  %.pre-phi.i.i = phi i64 [ %i.jz, %bb.aw ], [ %i.fe, %bb.r ]
  %i.kh = phi ptr [ %i.kf, %bb.aw ], [ %i.ew, %bb.r ]
  %storemerge.i.i.ph.sink.i.i17.i.i = phi i32 [ %storemerge.i.i.ph.sink.i.i.ph.i.i, %bb.aw ], [ %i.fd, %bb.r ]
  store atomic i32 %storemerge.i.i.ph.sink.i.i17.i.i, ptr %i.ci monotonic, align 8
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.kh, i64 %.pre-phi.i.i
  br label %_ZN12hb_bit_set_t8page_forEjb.exit.i

_ZN12hb_bit_set_t8page_forEjb.exit.i:             ; preds = %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i, %bb.p
  %.sink29.i.i = phi ptr [ %i.ki, %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i ], [ %i.ey, %bb.p ]
  %.sink.i.i = load ptr, ptr %i.cn, align 8, !tbaa !1236 ; 2 uses
  %.not.i = icmp eq ptr %.sink.i.i, null
  br i1 %.not.i, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i, label %bb.ax, !prof !1610

bb.ax:                                            ; preds = %_ZN12hb_bit_set_t8page_forEjb.exit.i
  %i.kj = getelementptr inbounds nuw i8, ptr %.sink29.i.i, i64 4
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !1238
  %i.kl = zext i32 %i.kk to i64
  %i.km = getelementptr inbounds nuw [72 x i8], ptr %.sink.i.i, i64 %i.kl ; 2 uses
  %i.kn = and i32 %i.dd, 63
  %i.ko = zext nneg i32 %i.kn to i64
  %i.kp = shl nuw i64 1, %i.ko
  %i.kq = getelementptr inbounds nuw i8, ptr %i.km, i64 8
  %i.kr = lshr i32 %i.dd, 6
  %i.ks = and i32 %i.kr, 7
  %i.kt = zext nneg i32 %i.ks to i64
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %i.kq, i64 %i.kt ; 2 uses
  %i.kv = load i64, ptr %i.ku, align 8, !tbaa !1240
  %i.kw = or i64 %i.kv, %i.kp
  store i64 %i.kw, ptr %i.ku, align 8, !tbaa !1240
  store i32 -1, ptr %i.km, align 8, !tbaa !1507
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i

_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i: ; preds = %bb.l, %bb.ax, %_ZN12hb_bit_set_t8page_forEjb.exit.i, %bb.n, %_ZN12hb_bit_set_t6resizeEjbb.exit, %bb.m, %_ZN12hb_bit_set_t8page_forEjb.exit.i175, %._crit_edge.i.i164, %bb.f, %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_EixEi.exit.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZNK2OT8ClassDef13collect_classI8hb_set_tEEbPT_j.exit, label %bb.c, !llvm.loop !163

bb.ay:                                            ; preds = %_ZNR9hb_iter_tI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEERS4_EppEv.exit.i.i.i.i.i.i.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.kx = load i16, ptr %i.al, align 1, !tbaa !283 ; 2 uses
  %i.ky = tail call noundef i16 @llvm.bswap.i16(i16 %i.kx)
  %i.kz = zext i16 %i.ky to i64
  %.idx.i.i = mul nuw nsw i64 %i.kz, 6
  %i.la = getelementptr inbounds nuw i8, ptr %i.am, i64 %.idx.i.i ; 2 uses
  %.not16.i.i = icmp eq i16 %i.kx, 0
  br i1 %.not16.i.i, label %_ZNK2OT8ClassDef13collect_classI8hb_set_tEEbPT_j.exit, label %.lr.ph.i5.i

.lr.ph.i5.i:                                      ; preds = %bb.ay, %.lr.ph.i5.i.backedge
  %.01317.i.i = phi ptr [ %.01317.i.i.be, %.lr.ph.i5.i.backedge ], [ %i.am, %bb.ay ] ; 5 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %.01317.i.i, i64 4
  %i.lc = load i16, ptr %i.lb, align 1, !tbaa !283
  %i.ld = icmp eq i16 %.val.i.i.i.i.i.i.i, %i.lc
  br i1 %i.ld, label %bb.az, label %.critedge.i.i

bb.az:                                            ; preds = %.lr.ph.i5.i
  %i.le = load i16, ptr %.01317.i.i, align 1, !tbaa !283
  %i.lf = tail call noundef i16 @llvm.bswap.i16(i16 %i.le)
  %i.lg = zext i16 %i.lf to i32                   ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %.01317.i.i, i64 2
  %i.li = load i16, ptr %i.lh, align 1, !tbaa !283
  %i.lj = tail call noundef i16 @llvm.bswap.i16(i16 %i.li)
  %i.lk = zext i16 %i.lj to i32                   ; 2 uses
  %i.ll = load i8, ptr %i.cg, align 8, !tbaa !946, !range !380, !noundef !293
  %i.lm = trunc nuw i8 %i.ll to i1
  br i1 %i.lm, label %_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI8hb_set_tEEbPT_.exit.thread.i.i, label %_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI8hb_set_tEEbPT_.exit.i.i, !prof !267

_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI8hb_set_tEEbPT_.exit.thread.i.i: ; preds = %bb.az
  tail call void @_ZN12hb_bit_set_t9del_rangeEjj(ptr noundef nonnull align 8 dereferenceable(49) %i.cf, i32 noundef %i.lg, i32 noundef %i.lk)
  br label %.critedge.i.i

_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI8hb_set_tEEbPT_.exit.i.i: ; preds = %bb.az
  %i.ln = tail call noundef zeroext i1 @_ZN12hb_bit_set_t9add_rangeEjj(ptr noundef nonnull align 8 dereferenceable(49) %i.cf, i32 noundef %i.lg, i32 noundef %i.lk)
  %i.lo = getelementptr inbounds nuw i8, ptr %.01317.i.i, i64 6 ; 2 uses
  %.not.i6.i = icmp ne ptr %i.lo, %i.la
  %or.cond.not = select i1 %i.ln, i1 %.not.i6.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i5.i.backedge, label %_ZNK2OT8ClassDef13collect_classI8hb_set_tEEbPT_j.exit, !prof !3987

.critedge.i.i:                                    ; preds = %_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI8hb_set_tEEbPT_.exit.thread.i.i, %.lr.ph.i5.i
  %.old = getelementptr inbounds nuw i8, ptr %.01317.i.i, i64 6 ; 2 uses
  %.not.i6.i.old = icmp eq ptr %.old, %i.la
  br i1 %.not.i6.i.old, label %_ZNK2OT8ClassDef13collect_classI8hb_set_tEEbPT_j.exit, label %.lr.ph.i5.i.backedge

.lr.ph.i5.i.backedge:                             ; preds = %.critedge.i.i, %_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI8hb_set_tEEbPT_.exit.i.i
  %.01317.i.i.be = phi ptr [ %i.lo, %_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI8hb_set_tEEbPT_.exit.i.i ], [ %.old, %.critedge.i.i ]
  br label %.lr.ph.i5.i

_ZNK2OT8ClassDef13collect_classI8hb_set_tEEbPT_j.exit: ; preds = %_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI8hb_set_tEEbPT_.exit.i.i, %.critedge.i.i, %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i, %_ZNR9hb_iter_tI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEERS4_EppEv.exit.i.i.i.i.i.i.i, %bb.b, %bb.ay
  %i.lp = add i32 %.sroa.4.06.i.i.i.i.i.i.i, -1   ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.lp, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN2OTL13collect_arrayINS_7NumTypeILb1EtLj2EEEEEvPNS_27hb_collect_glyphs_context_tEP8hb_set_tjPKT_PFvS6_jPKvESB_.exit.i.i.i.i, label %_ZNR9hb_iter_tI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEERS4_EppEv.exit.i.i.i.i.i.i.i, !llvm.loop !164

_ZN2OTL13collect_arrayINS_7NumTypeILb1EtLj2EEEEEvPNS_27hb_collect_glyphs_context_tEP8hb_set_tjPKT_PFvS6_jPKvESB_.exit.i.i.i.i: ; preds = %_ZNK2OT8ClassDef13collect_classI8hb_set_tEEbPT_j.exit, %"_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_9ChainRuleINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_12ChainRuleSetIS6_EEEL24hb_function_sortedness_t0ELPv0EERKS7_EppEv.exit.i.i.i.i.i.i.i.i"
  %.not5.i.i.i21.i.i.i.i = icmp ult i16 %i.bn, 2
  br i1 %.not5.i.i.i21.i.i.i.i, label %_ZN2OTL13collect_arrayINS_7NumTypeILb1EtLj2EEEEEvPNS_27hb_collect_glyphs_context_tEP8hb_set_tjPKT_PFvS6_jPKvESB_.exit27.i.i.i.i, label %_ZNR9hb_iter_tI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEERS4_EppEv.exit.i.i.i22.preheader.i.i.i.i

_ZNR9hb_iter_tI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEERS4_EppEv.exit.i.i.i22.preheader.i.i.i.i: ; preds = %_ZN2OTL13collect_arrayINS_7NumTypeILb1EtLj2EEEEEvPNS_27hb_collect_glyphs_context_tEP8hb_set_tjPKT_PFvS6_jPKvESB_.exit.i.i.i.i
  %i.lq = load ptr, ptr %i.g, align 8, !tbaa !1756 ; 10 uses
  %i.lr = add nsw i32 %i.by, -1
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lq, i64 16 ; 4 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lq, i64 64 ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lq, i64 20 ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lq, i64 24 ; 4 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lq, i64 36 ; 6 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lq, i64 40 ; 7 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lq, i64 52 ; 8 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lq, i64 48 ; 8 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lq, i64 56 ; 10 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lq, i64 32 ; 4 uses
  br label %_ZNR9hb_iter_tI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEERS4_EppEv.exit.i.i.i22.i.i.i.i

_ZNR9hb_iter_tI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEERS4_EppEv.exit.i.i.i22.i.i.i.i: ; preds = %_ZNK2OT8ClassDef13collect_classI8hb_set_tEEbPT_j.exit141, %_ZNR9hb_iter_tI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEERS4_EppEv.exit.i.i.i22.preheader.i.i.i.i
  %.sroa.0.07.i.i.i23.i.i.i.i = phi ptr [ %i.vd, %_ZNK2OT8ClassDef13collect_classI8hb_set_tEEbPT_j.exit141 ], [ %i.bz, %_ZNR9hb_iter_tI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEERS4_EppEv.exit.i.i.i22.preheader.i.i.i.i ] ; 2 uses
  %.sroa.4.06.i.i.i24.i.i.i.i = phi i32 [ %i.vc, %_ZNK2OT8ClassDef13collect_classI8hb_set_tEEbPT_j.exit141 ], [ %i.lr, %_ZNR9hb_iter_tI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEERS4_EppEv.exit.i.i.i22.preheader.i.i.i.i ]
  %.val.i.i.i25.i.i.i.i = load i16, ptr %.sroa.0.07.i.i.i23.i.i.i.i, align 1, !tbaa !283 ; 2 uses
  %i.mc = load i16, ptr %.0.i.i15, align 1, !tbaa !283
  %i.md = tail call noundef i16 @llvm.bswap.i16(i16 %i.mc)
  switch i16 %i.md, label %_ZNK2OT8ClassDef13collect_classI8hb_set_tEEbPT_j.exit141 [
    i16 1, label %bb.ba
    i16 2, label %bb.cx
  ]

bb.ba:                                            ; preds = %_ZNR9hb_iter_tI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEERS4_EppEv.exit.i.i.i22.i.i.i.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.me = load i16, ptr %i.ap, align 1, !tbaa !283 ; 2 uses
  %.not.i.i131 = icmp eq i16 %i.me, 0
  br i1 %.not.i.i131, label %_ZNK2OT8ClassDef13collect_classI8hb_set_tEEbPT_j.exit141, label %.lr.ph.i.i132

.lr.ph.i.i132:                                    ; preds = %bb.ba
  %i.mf = tail call noundef i16 @llvm.bswap.i16(i16 %i.me)
  %wide.trip.count.i.i133 = zext i16 %i.mf to i64
  br label %bb.bb

bb.bb:                                            ; preds = %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i138, %.lr.ph.i.i132
  %indvars.iv.i.i134 = phi i64 [ 0, %.lr.ph.i.i132 ], [ %indvars.iv.next.i.i139, %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i138 ] ; 4 uses
  %i.mg = load i16, ptr %i.ap, align 1, !tbaa !283
  %i.mh = tail call noundef i16 @llvm.bswap.i16(i16 %i.mg)
  %i.mi = zext i16 %i.mh to i64
  %.not.i.i.i135 = icmp samesign ult i64 %indvars.iv.i.i134, %i.mi
  br i1 %.not.i.i.i135, label %bb.bc, label %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_EixEi.exit.i.i136, !prof !268

bb.bc:                                            ; preds = %bb.bb
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.mj = getelementptr inbounds nuw [2 x i8], ptr %i.aq, i64 %indvars.iv.i.i134
  br label %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_EixEi.exit.i.i136

_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_EixEi.exit.i.i136: ; preds = %bb.bc, %bb.bb
  %.0.i.i.i137 = phi ptr [ %i.mj, %bb.bc ], [ @_hb_NullPool, %bb.bb ]
  %i.mk = load i16, ptr %.0.i.i.i137, align 1, !tbaa !283
  %i.ml = icmp eq i16 %.val.i.i.i25.i.i.i.i, %i.mk
  br i1 %i.ml, label %bb.bd, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i138

bb.bd:                                            ; preds = %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_EixEi.exit.i.i136
  %i.mm = load i16, ptr %i.ao, align 1, !tbaa !283
  %i.mn = tail call noundef i16 @llvm.bswap.i16(i16 %i.mm)
  %i.mo = zext i16 %i.mn to i32
  %i.mp = trunc nuw nsw i64 %indvars.iv.i.i134 to i32
  %i.mq = add i32 %i.mo, %i.mp                    ; 7 uses
  %i.mr = load i8, ptr %i.lt, align 8, !tbaa !946, !range !380, !noundef !293
  %i.ms = trunc nuw i8 %i.mr to i1
  %i.mt = load i8, ptr %i.ls, align 8, !tbaa !550, !range !380, !noundef !293
  %i.mu = trunc nuw i8 %i.mt to i1                ; 2 uses
  br i1 %i.ms, label %bb.be, label %bb.bm, !prof !267

bb.be:                                            ; preds = %bb.bd
  br i1 %i.mu, label %bb.bf, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i138, !prof !268

bb.bf:                                            ; preds = %bb.be
  %i.mv = lshr i32 %i.mq, 9                       ; 3 uses
  %i.mw = load atomic i32, ptr %i.lv monotonic, align 8 ; 2 uses
  %i.mx = load i32, ptr %i.lw, align 4, !tbaa !1233 ; 3 uses
  %i.my = icmp ult i32 %i.mw, %i.mx
  %i.mz = load ptr, ptr %i.lx, align 8, !tbaa !553 ; 3 uses
  br i1 %i.my, label %bb.bg, label %._crit_edge.i.i206, !prof !268

bb.bg:                                            ; preds = %bb.bf
  %i.na = zext i32 %i.mw to i64                   ; 2 uses
  %i.nb = getelementptr inbounds nuw [8 x i8], ptr %i.mz, i64 %i.na
  %i.nc = load i32, ptr %i.nb, align 4, !tbaa !1235
  %.not.i.i221 = icmp eq i32 %i.nc, %i.mv
  br i1 %.not.i.i221, label %_ZN12hb_bit_set_t8page_forEjb.exit.i217, label %._crit_edge.i.i206

._crit_edge.i.i206:                               ; preds = %bb.bg, %bb.bf
  %.not1.i.i.i.i.i.i207 = icmp sgt i32 %i.mx, 0
  br i1 %.not1.i.i.i.i.i.i207, label %.lr.ph.preheader.i.i.i.i.i.i208, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i138

.lr.ph.preheader.i.i.i.i.i.i208:                  ; preds = %._crit_edge.i.i206
  %i.nd = add nsw i32 %i.mx, -1
  br label %.lr.ph.i.i.i.i.i.i209

.lr.ph.i.i.i.i.i.i209:                            ; preds = %bb.bk, %.lr.ph.preheader.i.i.i.i.i.i208
  %.0203.i.i.i.i.i.i210 = phi i32 [ %.2.i.i.i.i.i.i214, %bb.bk ], [ %i.nd, %.lr.ph.preheader.i.i.i.i.i.i208 ] ; 2 uses
  %.0212.i.i.i.i.i.i211 = phi i32 [ %.223.i.i.i.i.i.i213, %bb.bk ], [ 0, %.lr.ph.preheader.i.i.i.i.i.i208 ] ; 2 uses
  %i.ne = add i32 %.0212.i.i.i.i.i.i211, %.0203.i.i.i.i.i.i210
  %i.nf = lshr i32 %i.ne, 1                       ; 4 uses
  %i.ng = zext nneg i32 %i.nf to i64              ; 2 uses
  %i.nh = shl nuw nsw i64 %i.ng, 3
  %i.ni = getelementptr inbounds nuw i8, ptr %i.mz, i64 %i.nh
  %i.nj = load i32, ptr %i.ni, align 4, !tbaa !1235 ; 2 uses
  %i.nk = icmp slt i32 %i.mv, %i.nj
  br i1 %i.nk, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %.lr.ph.i.i.i.i.i.i209
  %i.nl = add nsw i32 %i.nf, -1
  br label %bb.bk

bb.bi:                                            ; preds = %.lr.ph.i.i.i.i.i.i209
  %.not28.i.i.i.i.i.i212 = icmp eq i32 %i.mv, %i.nj
  br i1 %.not28.i.i.i.i.i.i212, label %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i216, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.nm = add nuw nsw i32 %i.nf, 1
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bh
  %.223.i.i.i.i.i.i213 = phi i32 [ %i.nm, %bb.bj ], [ %.0212.i.i.i.i.i.i211, %bb.bh ] ; 2 uses
  %.2.i.i.i.i.i.i214 = phi i32 [ %.0203.i.i.i.i.i.i210, %bb.bj ], [ %i.nl, %bb.bh ] ; 2 uses
  %.not.not.i.i.i.i.i.i215 = icmp sgt i32 %.223.i.i.i.i.i.i213, %.2.i.i.i.i.i.i214
  br i1 %.not.not.i.i.i.i.i.i215, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i138, label %.lr.ph.i.i.i.i.i.i209, !llvm.loop !135

_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i216: ; preds = %bb.bi
  store atomic i32 %i.nf, ptr %i.lv monotonic, align 8
  br label %_ZN12hb_bit_set_t8page_forEjb.exit.i217

_ZN12hb_bit_set_t8page_forEjb.exit.i217:          ; preds = %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i216, %bb.bg
  %i.nn = phi i64 [ %i.ng, %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i216 ], [ %i.na, %bb.bg ]
  %.sink.i.i219 = load ptr, ptr %i.ma, align 8, !tbaa !1236 ; 2 uses
  %.not.i220 = icmp eq ptr %.sink.i.i219, null
  br i1 %.not.i220, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i138, label %bb.bl

bb.bl:                                            ; preds = %_ZN12hb_bit_set_t8page_forEjb.exit.i217
  %i.no = getelementptr inbounds nuw [8 x i8], ptr %i.mz, i64 %i.nn
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 4
  %i.nq = load i32, ptr %i.np, align 4, !tbaa !1238
  %i.nr = zext i32 %i.nq to i64
  %i.ns = getelementptr inbounds nuw [72 x i8], ptr %.sink.i.i219, i64 %i.nr ; 2 uses
  store i32 -1, ptr %i.lu, align 4, !tbaa !549
  %i.nt = and i32 %i.mq, 63
  %i.nu = zext nneg i32 %i.nt to i64
  %i.nv = shl nuw i64 1, %i.nu
  %i.nw = xor i64 %i.nv, -1
  %i.nx = getelementptr inbounds nuw i8, ptr %i.ns, i64 8
  %i.ny = lshr i32 %i.mq, 6
  %i.nz = and i32 %i.ny, 7
  %i.oa = zext nneg i32 %i.nz to i64
  %i.ob = getelementptr inbounds nuw [8 x i8], ptr %i.nx, i64 %i.oa ; 2 uses
  %i.oc = load i64, ptr %i.ob, align 8, !tbaa !1240
  %i.od = and i64 %i.oc, %i.nw
  store i64 %i.od, ptr %i.ob, align 8, !tbaa !1240
  store i32 -1, ptr %i.ns, align 8, !tbaa !1507
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i138

bb.bm:                                            ; preds = %bb.bd
  %i.oe = icmp ne i32 %i.mq, -1
  %or.cond.not.i180 = and i1 %i.oe, %i.mu
  br i1 %or.cond.not.i180, label %bb.bn, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i138, !prof !707

bb.bn:                                            ; preds = %bb.bm
  store i32 -1, ptr %i.lu, align 4, !tbaa !549
  %i.of = lshr i32 %i.mq, 9                       ; 4 uses
  %i.og = load atomic i32, ptr %i.lv monotonic, align 8 ; 2 uses
  %i.oh = load i32, ptr %i.lw, align 4, !tbaa !1233 ; 3 uses
  %i.oi = icmp ult i32 %i.og, %i.oh
  %i.oj = load ptr, ptr %i.lx, align 8, !tbaa !553 ; 3 uses
  br i1 %i.oi, label %bb.bo, label %._crit_edge.i.i181, !prof !268

bb.bo:                                            ; preds = %bb.bn
  %i.ok = zext i32 %i.og to i64
  %i.ol = getelementptr inbounds nuw [8 x i8], ptr %i.oj, i64 %i.ok ; 2 uses
  %i.om = load i32, ptr %i.ol, align 4, !tbaa !1235
  %.not.i.i204 = icmp eq i32 %i.om, %i.of
  br i1 %.not.i.i204, label %_ZN12hb_bit_set_t8page_forEjb.exit.i191, label %._crit_edge.i.i181

._crit_edge.i.i181:                               ; preds = %bb.bo, %bb.bn
  %i.on = load i32, ptr %i.ly, align 4, !tbaa !546 ; 5 uses
  %.not1.i.i.i.i.i.i182 = icmp sgt i32 %i.oh, 0
end_hunk_1
begin_hunk_2_@_ZNK2OT21ChainContextFormat2_5INS_6Layout10SmallTypesEE14collect_glyphsEPNS_27hb_collect_glyphs_context_tE:bb.a
bb.ct:                                            ; preds = %bb.cs
  %i.sf = load i32, ptr %i.ly, align 4, !tbaa !547 ; 2 uses
  %.not.i.i.i.i477 = icmp eq i32 %i.sf, 0
  br i1 %.not.i.i.i.i477, label %_ZN11hb_vector_tI13hb_bit_page_tLb0EE5allocEjb.exit483, label %bb.cu, !prof !267

bb.cu:                                            ; preds = %bb.ct
  %i.sg = zext i32 %i.sf to i64
  %i.sh = mul nuw nsw i64 %i.sg, 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.se, ptr nonnull readonly align 1 %i.sb, i64 %i.sh, i1 false), !alias.scope !3990
  br label %_ZN11hb_vector_tI13hb_bit_page_tLb0EE5allocEjb.exit483

_ZN11hb_vector_tI13hb_bit_page_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.i466: ; preds = %bb.cr, %bb.cq
  %i.si = phi ptr [ null, %bb.cr ], [ %i.sb, %bb.cq ]
  %i.sj = zext nneg i32 %.138.i463 to i64
  %i.sk = mul nuw nsw i64 %i.sj, 72
  %i.sl = tail call noalias noundef ptr @realloc(ptr noundef %i.si, i64 noundef %i.sk) #66 ; 2 uses
  %.not22.i467 = icmp eq ptr %i.sl, null
  br i1 %.not22.i467, label %_ZN11hb_vector_tI13hb_bit_page_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread54.i473, label %_ZN11hb_vector_tI13hb_bit_page_tLb0EE5allocEjb.exit483, !prof !319

_ZN11hb_vector_tI13hb_bit_page_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread54.i473: ; preds = %_ZN11hb_vector_tI13hb_bit_page_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.i466, %bb.cs
  %i.sm = load i32, ptr %i.lz, align 8, !tbaa !554 ; 2 uses
  %.not23.i474 = icmp ugt i32 %.138.i463, %i.sm
  br i1 %.not23.i474, label %_ZN11hb_vector_tI13hb_bit_page_tLb0EE5allocEjb.exit483.thread550, label %_ZN11hb_vector_tI13hb_bit_page_tLb0EE5allocEjb.exit483.thread

_ZN11hb_vector_tI13hb_bit_page_tLb0EE5allocEjb.exit483.thread550: ; preds = %_ZN11hb_vector_tI13hb_bit_page_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread54.i473, %.thread.i462
  %.sink.i471.ph.in = phi i32 [ %i.rr, %.thread.i462 ], [ %i.sm, %_ZN11hb_vector_tI13hb_bit_page_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread54.i473 ]
  %.sink.i471.ph = xor i32 %.sink.i471.ph.in, -1
  store i32 %.sink.i471.ph, ptr %i.lz, align 8, !tbaa !554
  br label %_ZN12hb_bit_set_t6resizeEjbb.exit279

_ZN11hb_vector_tI13hb_bit_page_tLb0EE5allocEjb.exit483: ; preds = %bb.co, %bb.cp, %bb.ct, %bb.cu, %_ZN11hb_vector_tI13hb_bit_page_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.i466
  %.1.i.i42.i469 = phi ptr [ %i.sl, %_ZN11hb_vector_tI13hb_bit_page_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.i466 ], [ null, %bb.co ], [ null, %bb.cp ], [ %i.se, %bb.ct ], [ %i.se, %bb.cu ]
  store ptr %.1.i.i42.i469, ptr %i.ma, align 8, !tbaa !555
  store i32 %.138.i463, ptr %i.lz, align 8, !tbaa !554
  br label %_ZN11hb_vector_tI13hb_bit_page_tLb0EE5allocEjb.exit483.thread

_ZN11hb_vector_tI13hb_bit_page_tLb0EE5allocEjb.exit483.thread: ; preds = %_ZN11hb_vector_tI13hb_bit_page_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread54.i473, %bb.cm, %bb.cl, %_ZN11hb_vector_tI13hb_bit_page_tLb0EE5allocEjb.exit483
  %i.sn = load i32, ptr %i.ly, align 4, !tbaa !547 ; 2 uses
  %i.so = icmp ugt i32 %i.rp, %i.sn
  br i1 %i.so, label %.lr.ph.i.i322, label %_ZN11hb_vector_tI13hb_bit_page_tLb0EE11grow_vectorIS0_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i321

.lr.ph.i.i322:                                    ; preds = %_ZN11hb_vector_tI13hb_bit_page_tLb0EE5allocEjb.exit483.thread
  %i.sp = load ptr, ptr %i.ma, align 8, !tbaa !555 ; 5 uses
  %i.sq = zext i32 %i.sn to i64                   ; 4 uses
  %wide.trip.count.i.i323 = zext nneg i32 %i.rp to i64 ; 3 uses
  %i.sr = sub nsw i64 %wide.trip.count.i.i323, %i.sq
  %xtraiter1054 = and i64 %i.sr, 3                ; 2 uses
  %lcmp.mod1055.not = icmp eq i64 %xtraiter1054, 0
  br i1 %lcmp.mod1055.not, label %.prol.loopexit1053, label %.prol.preheader1052

.prol.preheader1052:                              ; preds = %.lr.ph.i.i322, %.prol.preheader1052
  %indvars.iv.i.i324.prol = phi i64 [ %indvars.iv.next.i.i325.prol, %.prol.preheader1052 ], [ %i.sq, %.lr.ph.i.i322 ] ; 2 uses
  %prol.iter1056 = phi i64 [ %prol.iter1056.next, %.prol.preheader1052 ], [ 0, %.lr.ph.i.i322 ]
  %i.ss = getelementptr inbounds nuw [72 x i8], ptr %i.sp, i64 %indvars.iv.i.i324.prol ; 2 uses
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.st, i8 0, i64 64, i1 false), !tbaa !1240
  store i32 0, ptr %i.ss, align 8, !tbaa !1507
  %indvars.iv.next.i.i325.prol = add nuw nsw i64 %indvars.iv.i.i324.prol, 1 ; 2 uses
  %prol.iter1056.next = add i64 %prol.iter1056, 1 ; 2 uses
  %prol.iter1056.cmp.not = icmp eq i64 %prol.iter1056.next, %xtraiter1054
  br i1 %prol.iter1056.cmp.not, label %.prol.loopexit1053, label %.prol.preheader1052, !llvm.loop !3959

.prol.loopexit1053:                               ; preds = %.prol.preheader1052, %.lr.ph.i.i322
  %indvars.iv.i.i324.unr = phi i64 [ %i.sq, %.lr.ph.i.i322 ], [ %indvars.iv.next.i.i325.prol, %.prol.preheader1052 ]
  %i.su = sub nsw i64 %i.sq, %wide.trip.count.i.i323
  %i.sv = icmp ugt i64 %i.su, -4
  br i1 %i.sv, label %_ZN11hb_vector_tI13hb_bit_page_tLb0EE11grow_vectorIS0_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i321, label %.lr.ph.i.i322.new

.lr.ph.i.i322.new:                                ; preds = %.prol.loopexit1053, %.lr.ph.i.i322.new
  %indvars.iv.i.i324 = phi i64 [ %indvars.iv.next.i.i325.3, %.lr.ph.i.i322.new ], [ %indvars.iv.i.i324.unr, %.prol.loopexit1053 ] ; 5 uses
  %i.sw = getelementptr inbounds nuw [72 x i8], ptr %i.sp, i64 %indvars.iv.i.i324 ; 2 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sw, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.sx, i8 0, i64 64, i1 false), !tbaa !1240
  store i32 0, ptr %i.sw, align 8, !tbaa !1507
  %i.sy = getelementptr inbounds nuw [72 x i8], ptr %i.sp, i64 %indvars.iv.i.i324 ; 2 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sy, i64 72
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sy, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ta, i8 0, i64 64, i1 false), !tbaa !1240
  store i32 0, ptr %i.sz, align 8, !tbaa !1507
  %i.tb = getelementptr inbounds nuw [72 x i8], ptr %i.sp, i64 %indvars.iv.i.i324 ; 2 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 144
  %i.td = getelementptr inbounds nuw i8, ptr %i.tb, i64 152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.td, i8 0, i64 64, i1 false), !tbaa !1240
  store i32 0, ptr %i.tc, align 8, !tbaa !1507
  %i.te = getelementptr inbounds nuw [72 x i8], ptr %i.sp, i64 %indvars.iv.i.i324 ; 2 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %i.te, i64 216
  %i.tg = getelementptr inbounds nuw i8, ptr %i.te, i64 224
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.tg, i8 0, i64 64, i1 false), !tbaa !1240
  store i32 0, ptr %i.tf, align 8, !tbaa !1507
  %indvars.iv.next.i.i325.3 = add nuw nsw i64 %indvars.iv.i.i324, 4 ; 2 uses
  %exitcond.not.i.i326.3 = icmp eq i64 %indvars.iv.next.i.i325.3, %wide.trip.count.i.i323
  br i1 %exitcond.not.i.i326.3, label %_ZN11hb_vector_tI13hb_bit_page_tLb0EE11grow_vectorIS0_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i321, label %.lr.ph.i.i322.new, !llvm.loop !142

_ZN11hb_vector_tI13hb_bit_page_tLb0EE11grow_vectorIS0_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i321: ; preds = %.prol.loopexit1053, %.lr.ph.i.i322.new, %_ZN11hb_vector_tI13hb_bit_page_tLb0EE5allocEjb.exit483.thread
  store i32 %i.rp, ptr %i.ly, align 4, !tbaa !547
  br label %_ZN12hb_bit_set_t6resizeEjbb.exit279

_ZN12hb_bit_set_t6resizeEjbb.exit279:             ; preds = %bb.cj, %_ZN11hb_vector_tI13hb_bit_page_tLb0EE11grow_vectorIS0_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i321, %.critedge.i269, %_ZN11hb_vector_tI13hb_bit_page_tLb0EE5allocEjb.exit483.thread550
  store i8 0, ptr %i.ls, align 8, !tbaa !550
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i138

bb.cv:                                            ; preds = %_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5allocEjb.exit349.thread, %bb.ch, %bb.ci
  store i32 %i.oy, ptr %i.lw, align 4, !tbaa !548
  %i.th = load ptr, ptr %i.ma, align 8, !tbaa !1236
  %i.ti = zext i32 %i.on to i64                   ; 2 uses
  %i.tj = getelementptr inbounds nuw [72 x i8], ptr %i.th, i64 %i.ti ; 2 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.tk, i8 0, i64 64, i1 false), !tbaa !1240
  store i32 0, ptr %i.tj, align 8, !tbaa !1507
  %i.tl = load ptr, ptr %i.lx, align 8, !tbaa !1232
  %i.tm = zext nneg i32 %storemerge.i.i.ph.sink.i.i.ph.i.i184 to i64 ; 3 uses
  %i.tn = getelementptr inbounds nuw [8 x i8], ptr %i.tl, i64 %i.tm ; 2 uses
  %i.to = getelementptr inbounds nuw i8, ptr %i.tn, i64 8
  %i.tp = sub i32 %i.on, %storemerge.i.i.ph.sink.i.i.ph.i.i184
  %i.tq = shl i32 %i.tp, 3
  %i.tr = zext i32 %i.tq to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.to, ptr align 4 %i.tn, i64 %i.tr, i1 false)
  %i.ts = load ptr, ptr %i.lx, align 8, !tbaa !1232 ; 2 uses
  %i.tt = getelementptr inbounds nuw [8 x i8], ptr %i.ts, i64 %i.tm
  %.sroa.5.0.insert.shift.i.i185 = shl nuw i64 %i.ti, 32
  %.sroa.0.0.insert.ext.i.i186 = zext nneg i32 %i.of to i64
  %.sroa.0.0.insert.insert.i.i187 = or disjoint i64 %.sroa.5.0.insert.shift.i.i185, %.sroa.0.0.insert.ext.i.i186
  store i64 %.sroa.0.0.insert.insert.i.i187, ptr %i.tt, align 4, !tbaa !324
  br label %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i188

_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i188: ; preds = %bb.bq, %bb.cv
  %.pre-phi.i.i189 = phi i64 [ %i.tm, %bb.cv ], [ %i.or, %bb.bq ]
  %i.tu = phi ptr [ %i.ts, %bb.cv ], [ %i.oj, %bb.bq ]
  %storemerge.i.i.ph.sink.i.i17.i.i190 = phi i32 [ %storemerge.i.i.ph.sink.i.i.ph.i.i184, %bb.cv ], [ %i.oq, %bb.bq ]
  store atomic i32 %storemerge.i.i.ph.sink.i.i17.i.i190, ptr %i.lv monotonic, align 8
  %i.tv = getelementptr inbounds nuw [8 x i8], ptr %i.tu, i64 %.pre-phi.i.i189
  br label %_ZN12hb_bit_set_t8page_forEjb.exit.i191

_ZN12hb_bit_set_t8page_forEjb.exit.i191:          ; preds = %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i188, %bb.bo
  %.sink29.i.i192 = phi ptr [ %i.tv, %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i188 ], [ %i.ol, %bb.bo ]
  %.sink.i.i194 = load ptr, ptr %i.ma, align 8, !tbaa !1236 ; 2 uses
  %.not.i195 = icmp eq ptr %.sink.i.i194, null
  br i1 %.not.i195, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i138, label %bb.cw, !prof !1610

bb.cw:                                            ; preds = %_ZN12hb_bit_set_t8page_forEjb.exit.i191
  %i.tw = getelementptr inbounds nuw i8, ptr %.sink29.i.i192, i64 4
  %i.tx = load i32, ptr %i.tw, align 4, !tbaa !1238
  %i.ty = zext i32 %i.tx to i64
  %i.tz = getelementptr inbounds nuw [72 x i8], ptr %.sink.i.i194, i64 %i.ty ; 2 uses
  %i.ua = and i32 %i.mq, 63
  %i.ub = zext nneg i32 %i.ua to i64
  %i.uc = shl nuw i64 1, %i.ub
  %i.ud = getelementptr inbounds nuw i8, ptr %i.tz, i64 8
  %i.ue = lshr i32 %i.mq, 6
  %i.uf = and i32 %i.ue, 7
  %i.ug = zext nneg i32 %i.uf to i64
  %i.uh = getelementptr inbounds nuw [8 x i8], ptr %i.ud, i64 %i.ug ; 2 uses
  %i.ui = load i64, ptr %i.uh, align 8, !tbaa !1240
  %i.uj = or i64 %i.ui, %i.uc
  store i64 %i.uj, ptr %i.uh, align 8, !tbaa !1240
  store i32 -1, ptr %i.tz, align 8, !tbaa !1507
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i138

_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i138: ; preds = %bb.bk, %bb.cw, %_ZN12hb_bit_set_t8page_forEjb.exit.i191, %bb.bm, %_ZN12hb_bit_set_t6resizeEjbb.exit279, %bb.bl, %_ZN12hb_bit_set_t8page_forEjb.exit.i217, %._crit_edge.i.i206, %bb.be, %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_EixEi.exit.i.i136
  %indvars.iv.next.i.i139 = add nuw nsw i64 %indvars.iv.i.i134, 1 ; 2 uses
  %exitcond.not.i.i140 = icmp eq i64 %indvars.iv.next.i.i139, %wide.trip.count.i.i133
  br i1 %exitcond.not.i.i140, label %_ZNK2OT8ClassDef13collect_classI8hb_set_tEEbPT_j.exit141, label %bb.bb, !llvm.loop !163

bb.cx:                                            ; preds = %_ZNR9hb_iter_tI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEERS4_EppEv.exit.i.i.i22.i.i.i.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.uk = load i16, ptr %i.ao, align 1, !tbaa !283 ; 2 uses
  %i.ul = tail call noundef i16 @llvm.bswap.i16(i16 %i.uk)
  %i.um = zext i16 %i.ul to i64
  %.idx.i.i122 = mul nuw nsw i64 %i.um, 6
  %i.un = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.idx.i.i122 ; 2 uses
  %.not16.i.i123 = icmp eq i16 %i.uk, 0
  br i1 %.not16.i.i123, label %_ZNK2OT8ClassDef13collect_classI8hb_set_tEEbPT_j.exit141, label %.lr.ph.i5.i124

.lr.ph.i5.i124:                                   ; preds = %bb.cx, %.lr.ph.i5.i124.backedge
  %.01317.i.i125 = phi ptr [ %.01317.i.i125.be, %.lr.ph.i5.i124.backedge ], [ %i.ap, %bb.cx ] ; 5 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %.01317.i.i125, i64 4
  %i.up = load i16, ptr %i.uo, align 1, !tbaa !283
  %i.uq = icmp eq i16 %.val.i.i.i25.i.i.i.i, %i.up
  br i1 %i.uq, label %bb.cy, label %.critedge.i.i126

bb.cy:                                            ; preds = %.lr.ph.i5.i124
  %i.ur = load i16, ptr %.01317.i.i125, align 1, !tbaa !283
  %i.us = tail call noundef i16 @llvm.bswap.i16(i16 %i.ur)
  %i.ut = zext i16 %i.us to i32                   ; 2 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %.01317.i.i125, i64 2
  %i.uv = load i16, ptr %i.uu, align 1, !tbaa !283
  %i.uw = tail call noundef i16 @llvm.bswap.i16(i16 %i.uv)
  %i.ux = zext i16 %i.uw to i32                   ; 2 uses
  %i.uy = load i8, ptr %i.lt, align 8, !tbaa !946, !range !380, !noundef !293
  %i.uz = trunc nuw i8 %i.uy to i1
  br i1 %i.uz, label %_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI8hb_set_tEEbPT_.exit.thread.i.i130, label %_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI8hb_set_tEEbPT_.exit.i.i129, !prof !267

_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI8hb_set_tEEbPT_.exit.thread.i.i130: ; preds = %bb.cy
  tail call void @_ZN12hb_bit_set_t9del_rangeEjj(ptr noundef nonnull align 8 dereferenceable(49) %i.ls, i32 noundef %i.ut, i32 noundef %i.ux)
  br label %.critedge.i.i126

_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI8hb_set_tEEbPT_.exit.i.i129: ; preds = %bb.cy
  %i.va = tail call noundef zeroext i1 @_ZN12hb_bit_set_t9add_rangeEjj(ptr noundef nonnull align 8 dereferenceable(49) %i.ls, i32 noundef %i.ut, i32 noundef %i.ux)
  %i.vb = getelementptr inbounds nuw i8, ptr %.01317.i.i125, i64 6 ; 2 uses
  %.not.i6.i127 = icmp ne ptr %i.vb, %i.un
  %or.cond578.not = select i1 %i.va, i1 %.not.i6.i127, i1 false
  br i1 %or.cond578.not, label %.lr.ph.i5.i124.backedge, label %_ZNK2OT8ClassDef13collect_classI8hb_set_tEEbPT_j.exit141, !prof !3987

.critedge.i.i126:                                 ; preds = %_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI8hb_set_tEEbPT_.exit.thread.i.i130, %.lr.ph.i5.i124
  %.old577 = getelementptr inbounds nuw i8, ptr %.01317.i.i125, i64 6 ; 2 uses
  %.not.i6.i127.old = icmp eq ptr %.old577, %i.un
  br i1 %.not.i6.i127.old, label %_ZNK2OT8ClassDef13collect_classI8hb_set_tEEbPT_j.exit141, label %.lr.ph.i5.i124.backedge

.lr.ph.i5.i124.backedge:                          ; preds = %.critedge.i.i126, %_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI8hb_set_tEEbPT_.exit.i.i129
  %.01317.i.i125.be = phi ptr [ %i.vb, %_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI8hb_set_tEEbPT_.exit.i.i129 ], [ %.old577, %.critedge.i.i126 ]
  br label %.lr.ph.i5.i124

_ZNK2OT8ClassDef13collect_classI8hb_set_tEEbPT_j.exit141: ; preds = %_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI8hb_set_tEEbPT_.exit.i.i129, %.critedge.i.i126, %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i138, %_ZNR9hb_iter_tI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEERS4_EppEv.exit.i.i.i22.i.i.i.i, %bb.ba, %bb.cx
  %i.vc = add nsw i32 %.sroa.4.06.i.i.i24.i.i.i.i, -1 ; 2 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i23.i.i.i.i, i64 2
  %.not.i.i.i26.i.i.i.i = icmp eq i32 %i.vc, 0
  br i1 %.not.i.i.i26.i.i.i.i, label %_ZN2OTL13collect_arrayINS_7NumTypeILb1EtLj2EEEEEvPNS_27hb_collect_glyphs_context_tEP8hb_set_tjPKT_PFvS6_jPKvESB_.exit27.i.i.i.i, label %_ZNR9hb_iter_tI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEERS4_EppEv.exit.i.i.i22.i.i.i.i, !llvm.loop !164

_ZN2OTL13collect_arrayINS_7NumTypeILb1EtLj2EEEEEvPNS_27hb_collect_glyphs_context_tEP8hb_set_tjPKT_PFvS6_jPKvESB_.exit27.i.i.i.i: ; preds = %_ZNK2OT8ClassDef13collect_classI8hb_set_tEEbPT_j.exit141, %_ZN2OTL13collect_arrayINS_7NumTypeILb1EtLj2EEEEEvPNS_27hb_collect_glyphs_context_tEP8hb_set_tjPKT_PFvS6_jPKvESB_.exit.i.i.i.i
  %.not5.i.i.i28.i.i.i.i = icmp eq i16 %i.bs, 0
  br i1 %.not5.i.i.i28.i.i.i.i, label %_ZN2OTL13collect_arrayINS_7NumTypeILb1EtLj2EEEEEvPNS_27hb_collect_glyphs_context_tEP8hb_set_tjPKT_PFvS6_jPKvESB_.exit34.i.i.i.i, label %_ZNR9hb_iter_tI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEERS4_EppEv.exit.i.i.i29.i.i.i.i.preheader

_ZNR9hb_iter_tI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEERS4_EppEv.exit.i.i.i29.i.i.i.i.preheader: ; preds = %_ZN2OTL13collect_arrayINS_7NumTypeILb1EtLj2EEEEEvPNS_27hb_collect_glyphs_context_tEP8hb_set_tjPKT_PFvS6_jPKvESB_.exit27.i.i.i.i
  %i.ve = load ptr, ptr %i.ag, align 8, !tbaa !1777 ; 10 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ve, i64 16 ; 4 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %i.ve, i64 64 ; 2 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %i.ve, i64 20 ; 2 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %i.ve, i64 24 ; 4 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %i.ve, i64 36 ; 6 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %i.ve, i64 40 ; 7 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %i.ve, i64 52 ; 8 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %i.ve, i64 48 ; 8 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %i.ve, i64 56 ; 10 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %i.ve, i64 32 ; 4 uses
  br label %_ZNR9hb_iter_tI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEERS4_EppEv.exit.i.i.i29.i.i.i.i

_ZNR9hb_iter_tI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEERS4_EppEv.exit.i.i.i29.i.i.i.i: ; preds = %_ZNR9hb_iter_tI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEERS4_EppEv.exit.i.i.i29.i.i.i.i.preheader, %_ZNK2OT8ClassDef13collect_classI8hb_set_tEEbPT_j.exit161
  %.sroa.0.07.i.i.i30.i.pn.i.i.i = phi ptr [ %.sroa.0.07.i.i.i30.i.i.i.i, %_ZNK2OT8ClassDef13collect_classI8hb_set_tEEbPT_j.exit161 ], [ %i.br, %_ZNR9hb_iter_tI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEERS4_EppEv.exit.i.i.i29.i.i.i.i.preheader ]
  %.sroa.4.06.i.i.i31.i.i.i.i = phi i32 [ %i.aep, %_ZNK2OT8ClassDef13collect_classI8hb_set_tEEbPT_j.exit161 ], [ %i.ca, %_ZNR9hb_iter_tI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEERS4_EppEv.exit.i.i.i29.i.i.i.i.preheader ]
  %.sroa.0.07.i.i.i30.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i30.i.pn.i.i.i, i64 2 ; 2 uses
  %.val.i.i.i32.i.i.i.i = load i16, ptr %.sroa.0.07.i.i.i30.i.i.i.i, align 1, !tbaa !283 ; 2 uses
  %i.vp = load i16, ptr %.0.i.i16, align 1, !tbaa !283
  %i.vq = tail call noundef i16 @llvm.bswap.i16(i16 %i.vp)
  switch i16 %i.vq, label %_ZNK2OT8ClassDef13collect_classI8hb_set_tEEbPT_j.exit161 [
    i16 1, label %bb.cz
    i16 2, label %bb.ew
  ]

bb.cz:                                            ; preds = %_ZNR9hb_iter_tI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEERS4_EppEv.exit.i.i.i29.i.i.i.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.vr = load i16, ptr %i.as, align 1, !tbaa !283 ; 2 uses
  %.not.i.i151 = icmp eq i16 %i.vr, 0
  br i1 %.not.i.i151, label %_ZNK2OT8ClassDef13collect_classI8hb_set_tEEbPT_j.exit161, label %.lr.ph.i.i152

.lr.ph.i.i152:                                    ; preds = %bb.cz
  %i.vs = tail call noundef i16 @llvm.bswap.i16(i16 %i.vr)
  %wide.trip.count.i.i153 = zext i16 %i.vs to i64
  br label %bb.da

bb.da:                                            ; preds = %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i158, %.lr.ph.i.i152
  %indvars.iv.i.i154 = phi i64 [ 0, %.lr.ph.i.i152 ], [ %indvars.iv.next.i.i159, %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i158 ] ; 4 uses
  %i.vt = load i16, ptr %i.as, align 1, !tbaa !283
  %i.vu = tail call noundef i16 @llvm.bswap.i16(i16 %i.vt)
  %i.vv = zext i16 %i.vu to i64
  %.not.i.i.i155 = icmp samesign ult i64 %indvars.iv.i.i154, %i.vv
  br i1 %.not.i.i.i155, label %bb.db, label %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_EixEi.exit.i.i156, !prof !268

bb.db:                                            ; preds = %bb.da
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.vw = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %indvars.iv.i.i154
  br label %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_EixEi.exit.i.i156

_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_EixEi.exit.i.i156: ; preds = %bb.db, %bb.da
  %.0.i.i.i157 = phi ptr [ %i.vw, %bb.db ], [ @_hb_NullPool, %bb.da ]
  %i.vx = load i16, ptr %.0.i.i.i157, align 1, !tbaa !283
  %i.vy = icmp eq i16 %.val.i.i.i32.i.i.i.i, %i.vx
  br i1 %i.vy, label %bb.dc, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i158

bb.dc:                                            ; preds = %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_EixEi.exit.i.i156
  %i.vz = load i16, ptr %i.ar, align 1, !tbaa !283
  %i.wa = tail call noundef i16 @llvm.bswap.i16(i16 %i.vz)
  %i.wb = zext i16 %i.wa to i32
  %i.wc = trunc nuw nsw i64 %indvars.iv.i.i154 to i32
  %i.wd = add i32 %i.wb, %i.wc                    ; 7 uses
  %i.we = load i8, ptr %i.vg, align 8, !tbaa !946, !range !380, !noundef !293
  %i.wf = trunc nuw i8 %i.we to i1
  %i.wg = load i8, ptr %i.vf, align 8, !tbaa !550, !range !380, !noundef !293
  %i.wh = trunc nuw i8 %i.wg to i1                ; 2 uses
  br i1 %i.wf, label %bb.dd, label %bb.dl, !prof !267

bb.dd:                                            ; preds = %bb.dc
  br i1 %i.wh, label %bb.de, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i158, !prof !268

bb.de:                                            ; preds = %bb.dd
  %i.wi = lshr i32 %i.wd, 9                       ; 3 uses
  %i.wj = load atomic i32, ptr %i.vi monotonic, align 8 ; 2 uses
  %i.wk = load i32, ptr %i.vj, align 4, !tbaa !1233 ; 3 uses
  %i.wl = icmp ult i32 %i.wj, %i.wk
  %i.wm = load ptr, ptr %i.vk, align 8, !tbaa !553 ; 3 uses
  br i1 %i.wl, label %bb.df, label %._crit_edge.i.i249, !prof !268

bb.df:                                            ; preds = %bb.de
  %i.wn = zext i32 %i.wj to i64                   ; 2 uses
  %i.wo = getelementptr inbounds nuw [8 x i8], ptr %i.wm, i64 %i.wn
  %i.wp = load i32, ptr %i.wo, align 4, !tbaa !1235
  %.not.i.i264 = icmp eq i32 %i.wp, %i.wi
  br i1 %.not.i.i264, label %_ZN12hb_bit_set_t8page_forEjb.exit.i260, label %._crit_edge.i.i249

._crit_edge.i.i249:                               ; preds = %bb.df, %bb.de
  %.not1.i.i.i.i.i.i250 = icmp sgt i32 %i.wk, 0
  br i1 %.not1.i.i.i.i.i.i250, label %.lr.ph.preheader.i.i.i.i.i.i251, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i158

.lr.ph.preheader.i.i.i.i.i.i251:                  ; preds = %._crit_edge.i.i249
  %i.wq = add nsw i32 %i.wk, -1
  br label %.lr.ph.i.i.i.i.i.i252

.lr.ph.i.i.i.i.i.i252:                            ; preds = %bb.dj, %.lr.ph.preheader.i.i.i.i.i.i251
  %.0203.i.i.i.i.i.i253 = phi i32 [ %.2.i.i.i.i.i.i257, %bb.dj ], [ %i.wq, %.lr.ph.preheader.i.i.i.i.i.i251 ] ; 2 uses
  %.0212.i.i.i.i.i.i254 = phi i32 [ %.223.i.i.i.i.i.i256, %bb.dj ], [ 0, %.lr.ph.preheader.i.i.i.i.i.i251 ] ; 2 uses
  %i.wr = add i32 %.0212.i.i.i.i.i.i254, %.0203.i.i.i.i.i.i253
  %i.ws = lshr i32 %i.wr, 1                       ; 4 uses
  %i.wt = zext nneg i32 %i.ws to i64              ; 2 uses
  %i.wu = shl nuw nsw i64 %i.wt, 3
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wm, i64 %i.wu
  %i.ww = load i32, ptr %i.wv, align 4, !tbaa !1235 ; 2 uses
  %i.wx = icmp slt i32 %i.wi, %i.ww
  br i1 %i.wx, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %.lr.ph.i.i.i.i.i.i252
  %i.wy = add nsw i32 %i.ws, -1
  br label %bb.dj

bb.dh:                                            ; preds = %.lr.ph.i.i.i.i.i.i252
  %.not28.i.i.i.i.i.i255 = icmp eq i32 %i.wi, %i.ww
  br i1 %.not28.i.i.i.i.i.i255, label %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i259, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.wz = add nuw nsw i32 %i.ws, 1
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dg
  %.223.i.i.i.i.i.i256 = phi i32 [ %i.wz, %bb.di ], [ %.0212.i.i.i.i.i.i254, %bb.dg ] ; 2 uses
  %.2.i.i.i.i.i.i257 = phi i32 [ %.0203.i.i.i.i.i.i253, %bb.di ], [ %i.wy, %bb.dg ] ; 2 uses
  %.not.not.i.i.i.i.i.i258 = icmp sgt i32 %.223.i.i.i.i.i.i256, %.2.i.i.i.i.i.i257
  br i1 %.not.not.i.i.i.i.i.i258, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i158, label %.lr.ph.i.i.i.i.i.i252, !llvm.loop !135

_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i259: ; preds = %bb.dh
  store atomic i32 %i.ws, ptr %i.vi monotonic, align 8
  br label %_ZN12hb_bit_set_t8page_forEjb.exit.i260

_ZN12hb_bit_set_t8page_forEjb.exit.i260:          ; preds = %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i259, %bb.df
  %i.xa = phi i64 [ %i.wt, %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i259 ], [ %i.wn, %bb.df ]
  %.sink.i.i262 = load ptr, ptr %i.vn, align 8, !tbaa !1236 ; 2 uses
  %.not.i263 = icmp eq ptr %.sink.i.i262, null
  br i1 %.not.i263, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i158, label %bb.dk

bb.dk:                                            ; preds = %_ZN12hb_bit_set_t8page_forEjb.exit.i260
  %i.xb = getelementptr inbounds nuw [8 x i8], ptr %i.wm, i64 %i.xa
  %i.xc = getelementptr inbounds nuw i8, ptr %i.xb, i64 4
  %i.xd = load i32, ptr %i.xc, align 4, !tbaa !1238
  %i.xe = zext i32 %i.xd to i64
  %i.xf = getelementptr inbounds nuw [72 x i8], ptr %.sink.i.i262, i64 %i.xe ; 2 uses
  store i32 -1, ptr %i.vh, align 4, !tbaa !549
  %i.xg = and i32 %i.wd, 63
  %i.xh = zext nneg i32 %i.xg to i64
  %i.xi = shl nuw i64 1, %i.xh
  %i.xj = xor i64 %i.xi, -1
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xf, i64 8
  %i.xl = lshr i32 %i.wd, 6
  %i.xm = and i32 %i.xl, 7
  %i.xn = zext nneg i32 %i.xm to i64
  %i.xo = getelementptr inbounds nuw [8 x i8], ptr %i.xk, i64 %i.xn ; 2 uses
  %i.xp = load i64, ptr %i.xo, align 8, !tbaa !1240
  %i.xq = and i64 %i.xp, %i.xj
  store i64 %i.xq, ptr %i.xo, align 8, !tbaa !1240
  store i32 -1, ptr %i.xf, align 8, !tbaa !1507
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i158

bb.dl:                                            ; preds = %bb.dc
  %i.xr = icmp ne i32 %i.wd, -1
  %or.cond.not.i223 = and i1 %i.xr, %i.wh
  br i1 %or.cond.not.i223, label %bb.dm, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i158, !prof !707

bb.dm:                                            ; preds = %bb.dl
  store i32 -1, ptr %i.vh, align 4, !tbaa !549
  %i.xs = lshr i32 %i.wd, 9                       ; 4 uses
  %i.xt = load atomic i32, ptr %i.vi monotonic, align 8 ; 2 uses
  %i.xu = load i32, ptr %i.vj, align 4, !tbaa !1233 ; 3 uses
  %i.xv = icmp ult i32 %i.xt, %i.xu
  %i.xw = load ptr, ptr %i.vk, align 8, !tbaa !553 ; 3 uses
  br i1 %i.xv, label %bb.dn, label %._crit_edge.i.i224, !prof !268

bb.dn:                                            ; preds = %bb.dm
  %i.xx = zext i32 %i.xt to i64
  %i.xy = getelementptr inbounds nuw [8 x i8], ptr %i.xw, i64 %i.xx ; 2 uses
  %i.xz = load i32, ptr %i.xy, align 4, !tbaa !1235
  %.not.i.i247 = icmp eq i32 %i.xz, %i.xs
  br i1 %.not.i.i247, label %_ZN12hb_bit_set_t8page_forEjb.exit.i234, label %._crit_edge.i.i224

._crit_edge.i.i224:                               ; preds = %bb.dn, %bb.dm
  %i.ya = load i32, ptr %i.vl, align 4, !tbaa !546 ; 5 uses
end_hunk_2
begin_hunk_3_@_ZNK2OT21ChainContextFormat2_5INS_6Layout10SmallTypesEE14collect_glyphsEPNS_27hb_collect_glyphs_context_tE:bb.a
bb.es:                                            ; preds = %bb.er
  %i.abs = load i32, ptr %i.vl, align 4, !tbaa !547 ; 2 uses
  %.not.i.i.i.i503 = icmp eq i32 %i.abs, 0
  br i1 %.not.i.i.i.i503, label %_ZN11hb_vector_tI13hb_bit_page_tLb0EE5allocEjb.exit509, label %bb.et, !prof !267

bb.et:                                            ; preds = %bb.es
  %i.abt = zext i32 %i.abs to i64
  %i.abu = mul nuw nsw i64 %i.abt, 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.abr, ptr nonnull readonly align 1 %i.abo, i64 %i.abu, i1 false), !alias.scope !3993
  br label %_ZN11hb_vector_tI13hb_bit_page_tLb0EE5allocEjb.exit509

_ZN11hb_vector_tI13hb_bit_page_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.i492: ; preds = %bb.eq, %bb.ep
  %i.abv = phi ptr [ null, %bb.eq ], [ %i.abo, %bb.ep ]
  %i.abw = zext nneg i32 %.138.i489 to i64
  %i.abx = mul nuw nsw i64 %i.abw, 72
  %i.aby = tail call noalias noundef ptr @realloc(ptr noundef %i.abv, i64 noundef %i.abx) #66 ; 2 uses
  %.not22.i493 = icmp eq ptr %i.aby, null
  br i1 %.not22.i493, label %_ZN11hb_vector_tI13hb_bit_page_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread54.i499, label %_ZN11hb_vector_tI13hb_bit_page_tLb0EE5allocEjb.exit509, !prof !319

_ZN11hb_vector_tI13hb_bit_page_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread54.i499: ; preds = %_ZN11hb_vector_tI13hb_bit_page_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.i492, %bb.er
  %i.abz = load i32, ptr %i.vm, align 8, !tbaa !554 ; 2 uses
  %.not23.i500 = icmp ugt i32 %.138.i489, %i.abz
  br i1 %.not23.i500, label %_ZN11hb_vector_tI13hb_bit_page_tLb0EE5allocEjb.exit509.thread572, label %_ZN11hb_vector_tI13hb_bit_page_tLb0EE5allocEjb.exit509.thread

_ZN11hb_vector_tI13hb_bit_page_tLb0EE5allocEjb.exit509.thread572: ; preds = %_ZN11hb_vector_tI13hb_bit_page_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread54.i499, %.thread.i488
  %.sink.i497.ph.in = phi i32 [ %i.abe, %.thread.i488 ], [ %i.abz, %_ZN11hb_vector_tI13hb_bit_page_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread54.i499 ]
  %.sink.i497.ph = xor i32 %.sink.i497.ph.in, -1
  store i32 %.sink.i497.ph, ptr %i.vm, align 8, !tbaa !554
  br label %_ZN12hb_bit_set_t6resizeEjbb.exit292

_ZN11hb_vector_tI13hb_bit_page_tLb0EE5allocEjb.exit509: ; preds = %bb.en, %bb.eo, %bb.es, %bb.et, %_ZN11hb_vector_tI13hb_bit_page_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.i492
  %.1.i.i42.i495 = phi ptr [ %i.aby, %_ZN11hb_vector_tI13hb_bit_page_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.i492 ], [ null, %bb.en ], [ null, %bb.eo ], [ %i.abr, %bb.es ], [ %i.abr, %bb.et ]
  store ptr %.1.i.i42.i495, ptr %i.vn, align 8, !tbaa !555
  store i32 %.138.i489, ptr %i.vm, align 8, !tbaa !554
  br label %_ZN11hb_vector_tI13hb_bit_page_tLb0EE5allocEjb.exit509.thread

_ZN11hb_vector_tI13hb_bit_page_tLb0EE5allocEjb.exit509.thread: ; preds = %_ZN11hb_vector_tI13hb_bit_page_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread54.i499, %bb.el, %bb.ek, %_ZN11hb_vector_tI13hb_bit_page_tLb0EE5allocEjb.exit509
  %i.aca = load i32, ptr %i.vl, align 4, !tbaa !547 ; 2 uses
  %i.acb = icmp ugt i32 %i.abc, %i.aca
  br i1 %i.acb, label %.lr.ph.i.i378, label %_ZN11hb_vector_tI13hb_bit_page_tLb0EE11grow_vectorIS0_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i377

.lr.ph.i.i378:                                    ; preds = %_ZN11hb_vector_tI13hb_bit_page_tLb0EE5allocEjb.exit509.thread
  %i.acc = load ptr, ptr %i.vn, align 8, !tbaa !555 ; 5 uses
  %i.acd = zext i32 %i.aca to i64                 ; 4 uses
  %wide.trip.count.i.i379 = zext nneg i32 %i.abc to i64 ; 3 uses
  %i.ace = sub nsw i64 %wide.trip.count.i.i379, %i.acd
  %xtraiter1064 = and i64 %i.ace, 3               ; 2 uses
  %lcmp.mod1065.not = icmp eq i64 %xtraiter1064, 0
  br i1 %lcmp.mod1065.not, label %.prol.loopexit1063, label %.prol.preheader1062

.prol.preheader1062:                              ; preds = %.lr.ph.i.i378, %.prol.preheader1062
  %indvars.iv.i.i380.prol = phi i64 [ %indvars.iv.next.i.i381.prol, %.prol.preheader1062 ], [ %i.acd, %.lr.ph.i.i378 ] ; 2 uses
  %prol.iter1066 = phi i64 [ %prol.iter1066.next, %.prol.preheader1062 ], [ 0, %.lr.ph.i.i378 ]
  %i.acf = getelementptr inbounds nuw [72 x i8], ptr %i.acc, i64 %indvars.iv.i.i380.prol ; 2 uses
  %i.acg = getelementptr inbounds nuw i8, ptr %i.acf, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.acg, i8 0, i64 64, i1 false), !tbaa !1240
  store i32 0, ptr %i.acf, align 8, !tbaa !1507
  %indvars.iv.next.i.i381.prol = add nuw nsw i64 %indvars.iv.i.i380.prol, 1 ; 2 uses
  %prol.iter1066.next = add i64 %prol.iter1066, 1 ; 2 uses
  %prol.iter1066.cmp.not = icmp eq i64 %prol.iter1066.next, %xtraiter1064
  br i1 %prol.iter1066.cmp.not, label %.prol.loopexit1063, label %.prol.preheader1062, !llvm.loop !3970

.prol.loopexit1063:                               ; preds = %.prol.preheader1062, %.lr.ph.i.i378
  %indvars.iv.i.i380.unr = phi i64 [ %i.acd, %.lr.ph.i.i378 ], [ %indvars.iv.next.i.i381.prol, %.prol.preheader1062 ]
  %i.ach = sub nsw i64 %i.acd, %wide.trip.count.i.i379
  %i.aci = icmp ugt i64 %i.ach, -4
  br i1 %i.aci, label %_ZN11hb_vector_tI13hb_bit_page_tLb0EE11grow_vectorIS0_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i377, label %.lr.ph.i.i378.new

.lr.ph.i.i378.new:                                ; preds = %.prol.loopexit1063, %.lr.ph.i.i378.new
  %indvars.iv.i.i380 = phi i64 [ %indvars.iv.next.i.i381.3, %.lr.ph.i.i378.new ], [ %indvars.iv.i.i380.unr, %.prol.loopexit1063 ] ; 5 uses
  %i.acj = getelementptr inbounds nuw [72 x i8], ptr %i.acc, i64 %indvars.iv.i.i380 ; 2 uses
  %i.ack = getelementptr inbounds nuw i8, ptr %i.acj, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ack, i8 0, i64 64, i1 false), !tbaa !1240
  store i32 0, ptr %i.acj, align 8, !tbaa !1507
  %i.acl = getelementptr inbounds nuw [72 x i8], ptr %i.acc, i64 %indvars.iv.i.i380 ; 2 uses
  %i.acm = getelementptr inbounds nuw i8, ptr %i.acl, i64 72
  %i.acn = getelementptr inbounds nuw i8, ptr %i.acl, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.acn, i8 0, i64 64, i1 false), !tbaa !1240
  store i32 0, ptr %i.acm, align 8, !tbaa !1507
  %i.aco = getelementptr inbounds nuw [72 x i8], ptr %i.acc, i64 %indvars.iv.i.i380 ; 2 uses
  %i.acp = getelementptr inbounds nuw i8, ptr %i.aco, i64 144
  %i.acq = getelementptr inbounds nuw i8, ptr %i.aco, i64 152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.acq, i8 0, i64 64, i1 false), !tbaa !1240
  store i32 0, ptr %i.acp, align 8, !tbaa !1507
  %i.acr = getelementptr inbounds nuw [72 x i8], ptr %i.acc, i64 %indvars.iv.i.i380 ; 2 uses
  %i.acs = getelementptr inbounds nuw i8, ptr %i.acr, i64 216
  %i.act = getelementptr inbounds nuw i8, ptr %i.acr, i64 224
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.act, i8 0, i64 64, i1 false), !tbaa !1240
  store i32 0, ptr %i.acs, align 8, !tbaa !1507
  %indvars.iv.next.i.i381.3 = add nuw nsw i64 %indvars.iv.i.i380, 4 ; 2 uses
  %exitcond.not.i.i382.3 = icmp eq i64 %indvars.iv.next.i.i381.3, %wide.trip.count.i.i379
  br i1 %exitcond.not.i.i382.3, label %_ZN11hb_vector_tI13hb_bit_page_tLb0EE11grow_vectorIS0_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i377, label %.lr.ph.i.i378.new, !llvm.loop !142

_ZN11hb_vector_tI13hb_bit_page_tLb0EE11grow_vectorIS0_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i377: ; preds = %.prol.loopexit1063, %.lr.ph.i.i378.new, %_ZN11hb_vector_tI13hb_bit_page_tLb0EE5allocEjb.exit509.thread
  store i32 %i.abc, ptr %i.vl, align 4, !tbaa !547
  br label %_ZN12hb_bit_set_t6resizeEjbb.exit292

_ZN12hb_bit_set_t6resizeEjbb.exit292:             ; preds = %bb.ei, %_ZN11hb_vector_tI13hb_bit_page_tLb0EE11grow_vectorIS0_TnPN12hb_enable_ifIXntsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i377, %.critedge.i282, %_ZN11hb_vector_tI13hb_bit_page_tLb0EE5allocEjb.exit509.thread572
  store i8 0, ptr %i.vf, align 8, !tbaa !550
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i158

bb.eu:                                            ; preds = %_ZN11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5allocEjb.exit405.thread, %bb.eg, %bb.eh
  store i32 %i.yl, ptr %i.vj, align 4, !tbaa !548
  %i.acu = load ptr, ptr %i.vn, align 8, !tbaa !1236
  %i.acv = zext i32 %i.ya to i64                  ; 2 uses
  %i.acw = getelementptr inbounds nuw [72 x i8], ptr %i.acu, i64 %i.acv ; 2 uses
  %i.acx = getelementptr inbounds nuw i8, ptr %i.acw, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.acx, i8 0, i64 64, i1 false), !tbaa !1240
  store i32 0, ptr %i.acw, align 8, !tbaa !1507
  %i.acy = load ptr, ptr %i.vk, align 8, !tbaa !1232
  %i.acz = zext nneg i32 %storemerge.i.i.ph.sink.i.i.ph.i.i227 to i64 ; 3 uses
  %i.ada = getelementptr inbounds nuw [8 x i8], ptr %i.acy, i64 %i.acz ; 2 uses
  %i.adb = getelementptr inbounds nuw i8, ptr %i.ada, i64 8
  %i.adc = sub i32 %i.ya, %storemerge.i.i.ph.sink.i.i.ph.i.i227
  %i.add = shl i32 %i.adc, 3
  %i.ade = zext i32 %i.add to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.adb, ptr align 4 %i.ada, i64 %i.ade, i1 false)
  %i.adf = load ptr, ptr %i.vk, align 8, !tbaa !1232 ; 2 uses
  %i.adg = getelementptr inbounds nuw [8 x i8], ptr %i.adf, i64 %i.acz
  %.sroa.5.0.insert.shift.i.i228 = shl nuw i64 %i.acv, 32
  %.sroa.0.0.insert.ext.i.i229 = zext nneg i32 %i.xs to i64
  %.sroa.0.0.insert.insert.i.i230 = or disjoint i64 %.sroa.5.0.insert.shift.i.i228, %.sroa.0.0.insert.ext.i.i229
  store i64 %.sroa.0.0.insert.insert.i.i230, ptr %i.adg, align 4, !tbaa !324
  br label %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i231

_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i231: ; preds = %bb.dp, %bb.eu
  %.pre-phi.i.i232 = phi i64 [ %i.acz, %bb.eu ], [ %i.ye, %bb.dp ]
  %i.adh = phi ptr [ %i.adf, %bb.eu ], [ %i.xw, %bb.dp ]
  %storemerge.i.i.ph.sink.i.i17.i.i233 = phi i32 [ %storemerge.i.i.ph.sink.i.i.ph.i.i227, %bb.eu ], [ %i.yd, %bb.dp ]
  store atomic i32 %storemerge.i.i.ph.sink.i.i17.i.i233, ptr %i.vi monotonic, align 8
  %i.adi = getelementptr inbounds nuw [8 x i8], ptr %i.adh, i64 %.pre-phi.i.i232
  br label %_ZN12hb_bit_set_t8page_forEjb.exit.i234

_ZN12hb_bit_set_t8page_forEjb.exit.i234:          ; preds = %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i231, %bb.dn
  %.sink29.i.i235 = phi ptr [ %i.adi, %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i231 ], [ %i.xy, %bb.dn ]
  %.sink.i.i237 = load ptr, ptr %i.vn, align 8, !tbaa !1236 ; 2 uses
  %.not.i238 = icmp eq ptr %.sink.i.i237, null
  br i1 %.not.i238, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i158, label %bb.ev, !prof !1610

bb.ev:                                            ; preds = %_ZN12hb_bit_set_t8page_forEjb.exit.i234
  %i.adj = getelementptr inbounds nuw i8, ptr %.sink29.i.i235, i64 4
  %i.adk = load i32, ptr %i.adj, align 4, !tbaa !1238
  %i.adl = zext i32 %i.adk to i64
  %i.adm = getelementptr inbounds nuw [72 x i8], ptr %.sink.i.i237, i64 %i.adl ; 2 uses
  %i.adn = and i32 %i.wd, 63
  %i.ado = zext nneg i32 %i.adn to i64
  %i.adp = shl nuw i64 1, %i.ado
  %i.adq = getelementptr inbounds nuw i8, ptr %i.adm, i64 8
  %i.adr = lshr i32 %i.wd, 6
  %i.ads = and i32 %i.adr, 7
  %i.adt = zext nneg i32 %i.ads to i64
  %i.adu = getelementptr inbounds nuw [8 x i8], ptr %i.adq, i64 %i.adt ; 2 uses
  %i.adv = load i64, ptr %i.adu, align 8, !tbaa !1240
  %i.adw = or i64 %i.adv, %i.adp
  store i64 %i.adw, ptr %i.adu, align 8, !tbaa !1240
  store i32 -1, ptr %i.adm, align 8, !tbaa !1507
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i158

_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i158: ; preds = %bb.dj, %bb.ev, %_ZN12hb_bit_set_t8page_forEjb.exit.i234, %bb.dl, %_ZN12hb_bit_set_t6resizeEjbb.exit292, %bb.dk, %_ZN12hb_bit_set_t8page_forEjb.exit.i260, %._crit_edge.i.i249, %bb.dd, %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_EixEi.exit.i.i156
  %indvars.iv.next.i.i159 = add nuw nsw i64 %indvars.iv.i.i154, 1 ; 2 uses
  %exitcond.not.i.i160 = icmp eq i64 %indvars.iv.next.i.i159, %wide.trip.count.i.i153
  br i1 %exitcond.not.i.i160, label %_ZNK2OT8ClassDef13collect_classI8hb_set_tEEbPT_j.exit161, label %bb.da, !llvm.loop !163

bb.ew:                                            ; preds = %_ZNR9hb_iter_tI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEERS4_EppEv.exit.i.i.i29.i.i.i.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.adx = load i16, ptr %i.ar, align 1, !tbaa !283 ; 2 uses
  %i.ady = tail call noundef i16 @llvm.bswap.i16(i16 %i.adx)
  %i.adz = zext i16 %i.ady to i64
  %.idx.i.i142 = mul nuw nsw i64 %i.adz, 6
  %i.aea = getelementptr inbounds nuw i8, ptr %i.as, i64 %.idx.i.i142 ; 2 uses
  %.not16.i.i143 = icmp eq i16 %i.adx, 0
  br i1 %.not16.i.i143, label %_ZNK2OT8ClassDef13collect_classI8hb_set_tEEbPT_j.exit161, label %.lr.ph.i5.i144

.lr.ph.i5.i144:                                   ; preds = %bb.ew, %.lr.ph.i5.i144.backedge
  %.01317.i.i145 = phi ptr [ %.01317.i.i145.be, %.lr.ph.i5.i144.backedge ], [ %i.as, %bb.ew ] ; 5 uses
  %i.aeb = getelementptr inbounds nuw i8, ptr %.01317.i.i145, i64 4
  %i.aec = load i16, ptr %i.aeb, align 1, !tbaa !283
  %i.aed = icmp eq i16 %.val.i.i.i32.i.i.i.i, %i.aec
  br i1 %i.aed, label %bb.ex, label %.critedge.i.i146

bb.ex:                                            ; preds = %.lr.ph.i5.i144
  %i.aee = load i16, ptr %.01317.i.i145, align 1, !tbaa !283
  %i.aef = tail call noundef i16 @llvm.bswap.i16(i16 %i.aee)
  %i.aeg = zext i16 %i.aef to i32                 ; 2 uses
  %i.aeh = getelementptr inbounds nuw i8, ptr %.01317.i.i145, i64 2
  %i.aei = load i16, ptr %i.aeh, align 1, !tbaa !283
  %i.aej = tail call noundef i16 @llvm.bswap.i16(i16 %i.aei)
  %i.aek = zext i16 %i.aej to i32                 ; 2 uses
  %i.ael = load i8, ptr %i.vg, align 8, !tbaa !946, !range !380, !noundef !293
  %i.aem = trunc nuw i8 %i.ael to i1
  br i1 %i.aem, label %_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI8hb_set_tEEbPT_.exit.thread.i.i150, label %_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI8hb_set_tEEbPT_.exit.i.i149, !prof !267

_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI8hb_set_tEEbPT_.exit.thread.i.i150: ; preds = %bb.ex
  tail call void @_ZN12hb_bit_set_t9del_rangeEjj(ptr noundef nonnull align 8 dereferenceable(49) %i.vf, i32 noundef %i.aeg, i32 noundef %i.aek)
  br label %.critedge.i.i146

_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI8hb_set_tEEbPT_.exit.i.i149: ; preds = %bb.ex
  %i.aen = tail call noundef zeroext i1 @_ZN12hb_bit_set_t9add_rangeEjj(ptr noundef nonnull align 8 dereferenceable(49) %i.vf, i32 noundef %i.aeg, i32 noundef %i.aek)
  %i.aeo = getelementptr inbounds nuw i8, ptr %.01317.i.i145, i64 6 ; 2 uses
  %.not.i6.i147 = icmp ne ptr %i.aeo, %i.aea
  %or.cond581.not = select i1 %i.aen, i1 %.not.i6.i147, i1 false
  br i1 %or.cond581.not, label %.lr.ph.i5.i144.backedge, label %_ZNK2OT8ClassDef13collect_classI8hb_set_tEEbPT_j.exit161, !prof !3987

.critedge.i.i146:                                 ; preds = %_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI8hb_set_tEEbPT_.exit.thread.i.i150, %.lr.ph.i5.i144
  %.old580 = getelementptr inbounds nuw i8, ptr %.01317.i.i145, i64 6 ; 2 uses
  %.not.i6.i147.old = icmp eq ptr %.old580, %i.aea
  br i1 %.not.i6.i147.old, label %_ZNK2OT8ClassDef13collect_classI8hb_set_tEEbPT_j.exit161, label %.lr.ph.i5.i144.backedge

.lr.ph.i5.i144.backedge:                          ; preds = %.critedge.i.i146, %_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI8hb_set_tEEbPT_.exit.i.i149
  %.01317.i.i145.be = phi ptr [ %i.aeo, %_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI8hb_set_tEEbPT_.exit.i.i149 ], [ %.old580, %.critedge.i.i146 ]
  br label %.lr.ph.i5.i144

_ZNK2OT8ClassDef13collect_classI8hb_set_tEEbPT_j.exit161: ; preds = %_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI8hb_set_tEEbPT_.exit.i.i149, %.critedge.i.i146, %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i.i158, %_ZNR9hb_iter_tI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEERS4_EppEv.exit.i.i.i29.i.i.i.i, %bb.cz, %bb.ew
  %i.aep = add i32 %.sroa.4.06.i.i.i31.i.i.i.i, -1 ; 2 uses
  %.not.i.i.i33.i.i.i.i = icmp eq i32 %i.aep, 0
  br i1 %.not.i.i.i33.i.i.i.i, label %_ZN2OTL13collect_arrayINS_7NumTypeILb1EtLj2EEEEEvPNS_27hb_collect_glyphs_context_tEP8hb_set_tjPKT_PFvS6_jPKvESB_.exit34.i.i.i.i, label %_ZNR9hb_iter_tI10hb_array_tIKN2OT7NumTypeILb1EtLj2EEEERS4_EppEv.exit.i.i.i29.i.i.i.i, !llvm.loop !164

_ZN2OTL13collect_arrayINS_7NumTypeILb1EtLj2EEEEEvPNS_27hb_collect_glyphs_context_tEP8hb_set_tjPKT_PFvS6_jPKvESB_.exit34.i.i.i.i: ; preds = %_ZNK2OT8ClassDef13collect_classI8hb_set_tEEbPT_j.exit161, %_ZN2OTL13collect_arrayINS_7NumTypeILb1EtLj2EEEEEvPNS_27hb_collect_glyphs_context_tEP8hb_set_tjPKT_PFvS6_jPKvESB_.exit27.i.i.i.i
  %.not.i.i.i.i.i = icmp eq i16 %i.cb, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK2OT9ChainRuleINS_6Layout10SmallTypesEE14collect_glyphsEPNS_27hb_collect_glyphs_context_tERNS_38ChainContextCollectGlyphsLookupContextE.exit.i.i, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZN2OTL13collect_arrayINS_7NumTypeILb1EtLj2EEEEEvPNS_27hb_collect_glyphs_context_tEP8hb_set_tjPKT_PFvS6_jPKvESB_.exit34.i.i.i.i
  %wide.trip.count.i.i.i.i.i = zext i16 %i.cc to i64
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN2OT27hb_collect_glyphs_context_t7recurseEj.exit.i.i, %.lr.ph.preheader.i.i.i.i.i
  %indvars.iv.i.i.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i, %_ZN2OT27hb_collect_glyphs_context_t7recurseEj.exit.i.i ] ; 2 uses
  %i.aeq = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv.i.i.i.i.i
  %i.aer = getelementptr inbounds nuw i8, ptr %i.aeq, i64 6
  %i.aes = load i16, ptr %i.aer, align 1, !tbaa !283
  %i.aet = tail call noundef i16 @llvm.bswap.i16(i16 %i.aes)
  %i.aeu = zext i16 %i.aet to i32                 ; 8 uses
  %i.aev = load i32, ptr %i.ah, align 8, !tbaa !1196
  %i.aew = icmp eq i32 %i.aev, 0
  %i.aex = load ptr, ptr %i.ai, align 8
  %.not.i.i.i = icmp eq ptr %i.aex, null
  %i.aey = select i1 %i.aew, i1 true, i1 %.not.i.i.i, !prof !267
  %i.aez = load ptr, ptr %i.aj, align 8
  %i.afa = icmp eq ptr %i.aez, @_hb_NullPool
  %or.cond.i.i.i = select i1 %i.aey, i1 true, i1 %i.afa, !prof !327
  br i1 %or.cond.i.i.i, label %_ZN2OT27hb_collect_glyphs_context_t7recurseEj.exit.i.i, label %bb.ey, !prof !327

bb.ey:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.afb = load ptr, ptr %i.ak, align 8, !tbaa !1195 ; 5 uses
  %i.afc = lshr i32 %i.aeu, 9                     ; 10 uses
  %i.afd = getelementptr inbounds nuw i8, ptr %i.afb, i64 24 ; 2 uses
  %i.afe = load atomic i32, ptr %i.afd monotonic, align 4 ; 2 uses
  %i.aff = getelementptr inbounds nuw i8, ptr %i.afb, i64 36
  %i.afg = load i32, ptr %i.aff, align 4, !tbaa !1233 ; 3 uses
  %i.afh = icmp ult i32 %i.afe, %i.afg
  %i.afi = getelementptr inbounds nuw i8, ptr %i.afb, i64 40
  %i.afj = load ptr, ptr %i.afi, align 8, !tbaa !553 ; 3 uses
  br i1 %i.afh, label %bb.ez, label %._crit_edge.i.i.i.i.i.i.i.i.i, !prof !268

bb.ez:                                            ; preds = %bb.ey
  %i.afk = zext i32 %i.afe to i64                 ; 2 uses
  %i.afl = getelementptr inbounds nuw [8 x i8], ptr %i.afj, i64 %i.afk
  %i.afm = load i32, ptr %i.afl, align 4, !tbaa !1235
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.afm, %i.afc
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.ez, %bb.ey
  %.not1.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %i.afg, 0
  br i1 %.not1.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i:       ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.afn = add nsw i32 %i.afg, -1
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.fd, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.0203.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.2.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.fd ], [ %i.afn, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.0212.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.223.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.fd ], [ 0, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.afo = add i32 %.0212.i.i.i.i.i.i.i.i.i.i.i.i.i, %.0203.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.afp = lshr i32 %i.afo, 1                     ; 4 uses
  %i.afq = zext nneg i32 %i.afp to i64            ; 2 uses
  %i.afr = shl nuw nsw i64 %i.afq, 3
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afj, i64 %i.afr
  %i.aft = load i32, ptr %i.afs, align 4, !tbaa !1235 ; 2 uses
  %i.afu = icmp slt i32 %i.afc, %i.aft
  br i1 %i.afu, label %bb.fa, label %bb.fb

bb.fa:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.afv = add nsw i32 %i.afp, -1
  br label %bb.fd

bb.fb:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.not28.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.afc, %i.aft
  br i1 %.not28.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i.i.i, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.afw = add nuw nsw i32 %i.afp, 1
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %bb.fa
  %.223.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.afw, %bb.fc ], [ %.0212.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.fa ] ; 2 uses
  %.2.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.0203.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.fc ], [ %i.afv, %bb.fa ] ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %.223.i.i.i.i.i.i.i.i.i.i.i.i.i, %.2.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !135

_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.fb
  store atomic i32 %i.afp, ptr %i.afd monotonic, align 8
  br label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i

_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i.i.i, %bb.ez
  %i.afx = phi i64 [ %i.afq, %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i.i.i ], [ %i.afk, %bb.ez ]
  %.sink.in.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.afb, i64 56
  %.sink.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sink.in.i.i.i.i.i.i.i.i.i, align 8, !tbaa !1236 ; 2 uses
  %.not.i.i.i.i.i.i5.i.i = icmp eq ptr %.sink.i.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i5.i.i, label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit.i.i.i, label %bb.fe

bb.fe:                                            ; preds = %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i
  %i.afy = getelementptr inbounds nuw [8 x i8], ptr %i.afj, i64 %i.afx
  %i.afz = getelementptr inbounds nuw i8, ptr %i.afy, i64 4
  %i.aga = load i32, ptr %i.afz, align 4, !tbaa !1238
  %i.agb = zext i32 %i.aga to i64
  %i.agc = getelementptr inbounds nuw [72 x i8], ptr %.sink.i.i.i.i.i.i.i.i.i, i64 %i.agb
  %i.agd = getelementptr inbounds nuw i8, ptr %i.agc, i64 8
  %i.age = lshr i32 %i.aeu, 6
  %i.agf = and i32 %i.age, 7
  %i.agg = zext nneg i32 %i.agf to i64
  %i.agh = getelementptr inbounds nuw [8 x i8], ptr %i.agd, i64 %i.agg
  %i.agi = load i64, ptr %i.agh, align 8, !tbaa !1240
  %i.agj = and i32 %i.aeu, 63
  %i.agk = zext nneg i32 %i.agj to i64
  %i.agl = lshr i64 %i.agi, %i.agk
  %i.agm = trunc i64 %i.agl to i8
  %i.agn = and i8 %i.agm, 1
  br label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit.i.i.i

_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit.i.i.i: ; preds = %bb.fd, %bb.fe, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i = phi i8 [ %i.agn, %bb.fe ], [ 0, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i ], [ 0, %._crit_edge.i.i.i.i.i.i.i.i.i ], [ 0, %bb.fd ]
  %i.ago = getelementptr inbounds nuw i8, ptr %i.afb, i64 64
  %i.agp = load i8, ptr %i.ago, align 8, !tbaa !946, !range !380, !noundef !293
  %.not8.i.i.i = icmp eq i8 %i.agp, %.0.i.i.i.i.i.i.i.i
  br i1 %.not8.i.i.i, label %bb.ff, label %_ZN2OT27hb_collect_glyphs_context_t7recurseEj.exit.i.i

bb.ff:                                            ; preds = %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE3hasEj.exit.i.i.i
  %i.agq = load ptr, ptr %i.ag, align 8, !tbaa !1777
  store ptr @_hb_NullPool, ptr %i.ag, align 8, !tbaa !1777
  %i.agr = load i32, ptr %i.ah, align 8, !tbaa !1196
  %i.ags = add i32 %i.agr, -1
  store i32 %i.ags, ptr %i.ah, align 8, !tbaa !1196
  %i.agt = load ptr, ptr %i.ai, align 8, !tbaa !1194
  %i.agu = load <2 x ptr>, ptr %i.af, align 8, !tbaa !1193
  store <2 x ptr> <ptr @_hb_NullPool, ptr @_hb_NullPool>, ptr %i.af, align 8, !tbaa !1193
  tail call void %i.agt(ptr noundef nonnull align 8 dereferenceable(68) %1, i32 noundef %i.aeu) #63, !inline_history !3971
  %i.agv = load i32, ptr %i.ah, align 8, !tbaa !1196
  %i.agw = add i32 %i.agv, 1
  store i32 %i.agw, ptr %i.ah, align 8, !tbaa !1196
  store <2 x ptr> %i.agu, ptr %i.af, align 8, !tbaa !1193
  store ptr %i.agq, ptr %i.ag, align 8, !tbaa !1777
  %i.agx = load ptr, ptr %i.ak, align 8, !tbaa !1195 ; 22 uses
  %i.agy = getelementptr inbounds nuw i8, ptr %i.agx, i64 16 ; 2 uses
  %i.agz = getelementptr inbounds nuw i8, ptr %i.agx, i64 64
  %i.aha = load i8, ptr %i.agz, align 8, !tbaa !946, !range !380, !noundef !293
  %i.ahb = trunc nuw i8 %i.aha to i1
  %i.ahc = load i8, ptr %i.agy, align 8, !tbaa !550, !range !380, !noundef !293
  %i.ahd = trunc nuw i8 %i.ahc to i1              ; 2 uses
  br i1 %i.ahb, label %bb.fg, label %bb.fo, !prof !267

bb.fg:                                            ; preds = %bb.ff
  br i1 %i.ahd, label %bb.fh, label %_ZN2OT27hb_collect_glyphs_context_t7recurseEj.exit.i.i, !prof !268

bb.fh:                                            ; preds = %bb.fg
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.agx, i64 24 ; 2 uses
  %i.ahf = load atomic i32, ptr %i.ahe monotonic, align 8 ; 2 uses
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.agx, i64 36
  %i.ahh = load i32, ptr %i.ahg, align 4, !tbaa !1233 ; 3 uses
  %i.ahi = icmp ult i32 %i.ahf, %i.ahh
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.agx, i64 40
  %i.ahk = load ptr, ptr %i.ahj, align 8, !tbaa !553 ; 3 uses
  br i1 %i.ahi, label %bb.fi, label %._crit_edge.i.i7.i.i, !prof !268

bb.fi:                                            ; preds = %bb.fh
  %i.ahl = zext i32 %i.ahf to i64                 ; 2 uses
  %i.ahm = getelementptr inbounds nuw [8 x i8], ptr %i.ahk, i64 %i.ahl
  %i.ahn = load i32, ptr %i.ahm, align 4, !tbaa !1235
  %.not.i.i22.i.i = icmp eq i32 %i.ahn, %i.afc
  br i1 %.not.i.i22.i.i, label %_ZN12hb_bit_set_t8page_forEjb.exit.i18.i.i, label %._crit_edge.i.i7.i.i

._crit_edge.i.i7.i.i:                             ; preds = %bb.fi, %bb.fh
  %.not1.i.i.i.i.i.i8.i.i = icmp sgt i32 %i.ahh, 0
  br i1 %.not1.i.i.i.i.i.i8.i.i, label %.lr.ph.preheader.i.i.i.i.i.i9.i.i, label %_ZN2OT27hb_collect_glyphs_context_t7recurseEj.exit.i.i

.lr.ph.preheader.i.i.i.i.i.i9.i.i:                ; preds = %._crit_edge.i.i7.i.i
  %i.aho = add nsw i32 %i.ahh, -1
  br label %.lr.ph.i.i.i.i.i.i10.i.i

.lr.ph.i.i.i.i.i.i10.i.i:                         ; preds = %bb.fm, %.lr.ph.preheader.i.i.i.i.i.i9.i.i
  %.0203.i.i.i.i.i.i11.i.i = phi i32 [ %.2.i.i.i.i.i.i15.i.i, %bb.fm ], [ %i.aho, %.lr.ph.preheader.i.i.i.i.i.i9.i.i ] ; 2 uses
  %.0212.i.i.i.i.i.i12.i.i = phi i32 [ %.223.i.i.i.i.i.i14.i.i, %bb.fm ], [ 0, %.lr.ph.preheader.i.i.i.i.i.i9.i.i ] ; 2 uses
  %i.ahp = add i32 %.0212.i.i.i.i.i.i12.i.i, %.0203.i.i.i.i.i.i11.i.i
  %i.ahq = lshr i32 %i.ahp, 1                     ; 4 uses
  %i.ahr = zext nneg i32 %i.ahq to i64            ; 2 uses
  %i.ahs = shl nuw nsw i64 %i.ahr, 3
  %i.aht = getelementptr inbounds nuw i8, ptr %i.ahk, i64 %i.ahs
  %i.ahu = load i32, ptr %i.aht, align 4, !tbaa !1235 ; 2 uses
  %i.ahv = icmp slt i32 %i.afc, %i.ahu
  br i1 %i.ahv, label %bb.fj, label %bb.fk

bb.fj:                                            ; preds = %.lr.ph.i.i.i.i.i.i10.i.i
end_hunk_3
begin_hunk_4_@_ZNK2OT6Layout9GPOS_impl17PosLookupSubTable8dispatchINS_27hb_collect_glyphs_context_tEJEEENT_8return_tEPS5_jDpOT0_:bb.a

_ZNK2OT16ExtensionFormat1INS_6Layout9GPOS_impl12ExtensionPosEE8dispatchINS_27hb_collect_glyphs_context_tEJEEENT_8return_tEPS7_DpOT0_.exit.i: ; preds = %bb.x
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !inline_history !3999, !srcloc !279
  %i.cc = getelementptr inbounds nuw i8, ptr %.tr, i64 4
  %i.cd = load i32, ptr %i.cc, align 1, !tbaa !278 ; 2 uses
  %i.ce = icmp eq i32 %i.cd, 0
  %i.cf = tail call i32 @llvm.bswap.i32(i32 %i.cd)
  %i.cg = zext i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %.tr, i64 %i.cg
  %.0.i.i.i.i = select i1 %i.ce, ptr @_hb_NullPool, ptr %i.ch, !prof !267
  %i.ci = getelementptr inbounds nuw i8, ptr %.tr, i64 2
  %i.cj = load i16, ptr %i.ci, align 1, !tbaa !283
  %i.ck = tail call noundef i16 @llvm.bswap.i16(i16 %i.cj)
  %i.cl = zext i16 %i.ck to i32
  br label %tailrecurse

_ZNK2OT6Layout9GPOS_impl9SinglePos8dispatchINS_27hb_collect_glyphs_context_tEJEEENT_8return_tEPS5_DpOT0_.exit: ; preds = %bb.x, %tailrecurse, %bb.w, %bb.v, %bb.u, %bb.t, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %.sink.split.i, %bb.b, %bb.s
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2OT6Layout9GPOS_impl16PairPosFormat1_3INS0_10SmallTypesEE14collect_glyphsEPNS_27hb_collect_glyphs_context_tE(ptr noundef nonnull align 1 dereferenceable(12) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.b = load i16, ptr %i.a, align 1, !tbaa !283  ; 2 uses
  %i.c = icmp eq i16 %i.b, 0
  %i.d = tail call i16 @llvm.bswap.i16(i16 %i.b)
  %i.e = zext i16 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %i.e
  %.0.i.i = select i1 %i.c, ptr @_hb_NullPool, ptr %i.f, !prof !267
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1756
  %i.i = tail call noundef zeroext i1 @_ZNK2OT6Layout6Common8Coverage16collect_coverageI8hb_set_tEEbPT_(ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i, ptr noundef %i.h)
  br i1 %i.i, label %bb.b, label %.loopexit, !prof !268

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load i16, ptr %i.j, align 1, !tbaa !283  ; 2 uses
  %.not = icmp eq i16 %i.k, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = tail call noundef i16 @llvm.bswap.i16(i16 %i.k)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 6
  %wide.trip.count = zext i16 %i.l to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout9GPOS_impl7PairSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout9GPOS_impl7PairSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit ] ; 3 uses
  %i.p = load i16, ptr %i.j, align 1, !tbaa !283
  %i.q = tail call noundef i16 @llvm.bswap.i16(i16 %i.p)
  %i.r = zext i16 %i.q to i64
  %.not.i = icmp samesign ult i64 %indvars.iv, %i.r
  br i1 %.not.i, label %bb.d, label %_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout9GPOS_impl7PairSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit, !prof !268

bb.d:                                             ; preds = %bb.c
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %indvars.iv
  br label %_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout9GPOS_impl7PairSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit

_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout9GPOS_impl7PairSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit: ; preds = %bb.c, %bb.d
  %.0.i = phi ptr [ %i.s, %bb.d ], [ @_hb_NullPool, %bb.c ]
  %i.t = load i16, ptr %.0.i, align 1, !tbaa !283 ; 2 uses
  %i.u = icmp eq i16 %i.t, 0
  %i.v = tail call i16 @llvm.bswap.i16(i16 %i.t)
  %i.w = zext i16 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %i.w
  %.0.i.i6 = select i1 %i.u, ptr @_hb_NullPool, ptr %i.x, !prof !267 ; 2 uses
  %i.y = load i16, ptr %i.n, align 1, !tbaa !283
  %i.z = lshr i16 %i.y, 8
  %i.aa = zext nneg i16 %i.z to i32               ; 2 uses
  %i.ab = and i32 %i.aa, 15
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr @_ZZL12hb_popcount8hE9popcount4, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !280
  %i.af = zext i8 %i.ae to i32
  %i.ag = lshr i32 %i.aa, 4
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr @_ZZL12hb_popcount8hE9popcount4, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !280
  %i.ak = zext i8 %i.aj to i32
  %i.al = load i16, ptr %i.o, align 1, !tbaa !283
  %i.am = lshr i16 %i.al, 8
  %i.an = zext nneg i16 %i.am to i32              ; 2 uses
  %i.ao = and i32 %i.an, 15
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr @_ZZL12hb_popcount8hE9popcount4, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !280
  %i.as = zext i8 %i.ar to i32
  %i.at = lshr i32 %i.an, 4
  %i.au = zext nneg i32 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr @_ZZL12hb_popcount8hE9popcount4, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !280
  %i.ax = zext i8 %i.aw to i32
  %i.ay = add nuw nsw i32 %i.ak, %i.af
  %i.az = add nuw nsw i32 %i.ay, %i.as
  %i.ba = add nuw nsw i32 %i.az, %i.ax
  %i.bb = shl nuw nsw i32 %i.ba, 1
  %i.bc = add nuw nsw i32 %i.bb, 2
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.i.i6, i64 2
  %i.be = load ptr, ptr %i.g, align 8, !tbaa !1756 ; 2 uses
  %i.bf = load i16, ptr %.0.i.i6, align 1, !tbaa !283
  %i.bg = tail call noundef i16 @llvm.bswap.i16(i16 %i.bf)
  %i.bh = zext i16 %i.bg to i32
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 64
  %i.bk = load i8, ptr %i.bj, align 8, !tbaa !946, !range !380, !noundef !293
  %i.bl = trunc nuw i8 %i.bk to i1
  %not..i.i.i = xor i1 %i.bl, true
  tail call void @_ZN12hb_bit_set_t9set_arrayIN2OT11HBGlyphID16EEEvbPKT_jj(ptr noundef nonnull align 8 dereferenceable(49) %i.bi, i1 noundef zeroext %not..i.i.i, ptr noundef nonnull %i.bd, i32 noundef %i.bh, i32 noundef %i.bc)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.c, !llvm.loop !4000

.loopexit:                                        ; preds = %_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout9GPOS_impl7PairSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2OT6Layout9GPOS_impl16PairPosFormat2_4INS0_10SmallTypesEE14collect_glyphsEPNS_27hb_collect_glyphs_context_tE(ptr noundef nonnull align 1 dereferenceable(18) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.b = load i16, ptr %i.a, align 1, !tbaa !283  ; 2 uses
  %i.c = icmp eq i16 %i.b, 0
  %i.d = tail call i16 @llvm.bswap.i16(i16 %i.b)
  %i.e = zext i16 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %i.e
  %.0.i.i = select i1 %i.c, ptr @_hb_NullPool, ptr %i.f, !prof !267
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1756
  %i.i = tail call noundef zeroext i1 @_ZNK2OT6Layout6Common8Coverage16collect_coverageI8hb_set_tEEbPT_(ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i, ptr noundef %i.h)
  br i1 %i.i, label %bb.b, label %_ZNK2OT8ClassDef16collect_coverageI8hb_set_tEEbPT_.exit, !prof !268

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.k = load i16, ptr %i.j, align 1, !tbaa !283  ; 2 uses
  %i.l = icmp eq i16 %i.k, 0
  %i.m = tail call i16 @llvm.bswap.i16(i16 %i.k)
  %i.n = zext i16 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %i.n
  %.0.i.i3 = select i1 %i.l, ptr @_hb_NullPool, ptr %i.o, !prof !267 ; 4 uses
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !1756 ; 3 uses
  %i.q = load i16, ptr %.0.i.i3, align 1, !tbaa !283
  %i.r = tail call noundef i16 @llvm.bswap.i16(i16 %i.q)
  switch i16 %i.r, label %_ZNK2OT8ClassDef16collect_coverageI8hb_set_tEEbPT_.exit [
    i16 1, label %bb.c
    i16 2, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.s = tail call noundef zeroext i1 @_ZNK2OT17ClassDefFormat1_3INS_6Layout10SmallTypesEE16collect_coverageI8hb_set_tEEbPT_(ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i3, ptr noundef %i.p) ; 0 uses
  br label %_ZNK2OT8ClassDef16collect_coverageI8hb_set_tEEbPT_.exit

bb.d:                                             ; preds = %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.i3, i64 2
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i.i3, i64 4 ; 2 uses
  %i.v = load i16, ptr %i.t, align 1, !tbaa !283  ; 2 uses
  %i.w = tail call noundef i16 @llvm.bswap.i16(i16 %i.v)
  %i.x = zext i16 %i.w to i64
  %.idx.i.i = mul nuw nsw i64 %i.x, 6
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx.i.i ; 2 uses
  %.not16.i.i = icmp eq i16 %i.v, 0
  br i1 %.not16.i.i, label %_ZNK2OT8ClassDef16collect_coverageI8hb_set_tEEbPT_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.lr.ph.i.i
  %.01217.i.i = phi ptr [ %i.u, %.lr.ph.i.i ], [ %.01217.i.i.be, %.backedge.backedge ] ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.01217.i.i, i64 4
  %i.ac = load i16, ptr %i.ab, align 1, !tbaa !283
  %.not15.i.i = icmp eq i16 %i.ac, 0
  br i1 %.not15.i.i, label %.critedge.i.i, label %bb.e

bb.e:                                             ; preds = %.backedge
  %i.ad = load i16, ptr %.01217.i.i, align 1, !tbaa !283
  %i.ae = tail call noundef i16 @llvm.bswap.i16(i16 %i.ad)
  %i.af = zext i16 %i.ae to i32                   ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.01217.i.i, i64 2
  %i.ah = load i16, ptr %i.ag, align 1, !tbaa !283
  %i.ai = tail call noundef i16 @llvm.bswap.i16(i16 %i.ah)
  %i.aj = zext i16 %i.ai to i32                   ; 2 uses
  %i.ak = load i8, ptr %i.aa, align 8, !tbaa !946, !range !380, !noundef !293
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI8hb_set_tEEbPT_.exit.thread.i.i, label %_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI8hb_set_tEEbPT_.exit.i.i, !prof !267

_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI8hb_set_tEEbPT_.exit.thread.i.i: ; preds = %bb.e
  tail call void @_ZN12hb_bit_set_t9del_rangeEjj(ptr noundef nonnull align 8 dereferenceable(49) %i.z, i32 noundef %i.af, i32 noundef %i.aj)
  br label %.critedge.i.i

_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI8hb_set_tEEbPT_.exit.i.i: ; preds = %bb.e
  %i.am = tail call noundef zeroext i1 @_ZN12hb_bit_set_t9add_rangeEjj(ptr noundef nonnull align 8 dereferenceable(49) %i.z, i32 noundef %i.af, i32 noundef %i.aj)
  %i.an = getelementptr inbounds nuw i8, ptr %.01217.i.i, i64 6 ; 2 uses
  %.not.i.i = icmp ne ptr %i.an, %i.y
  %or.cond.not = select i1 %i.am, i1 %.not.i.i, i1 false
  br i1 %or.cond.not, label %.backedge.backedge, label %_ZNK2OT8ClassDef16collect_coverageI8hb_set_tEEbPT_.exit, !prof !4001

.critedge.i.i:                                    ; preds = %_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI8hb_set_tEEbPT_.exit.thread.i.i, %.backedge
  %.old = getelementptr inbounds nuw i8, ptr %.01217.i.i, i64 6 ; 2 uses
  %.not.i.i.old = icmp eq ptr %.old, %i.y
  br i1 %.not.i.i.old, label %_ZNK2OT8ClassDef16collect_coverageI8hb_set_tEEbPT_.exit, label %.backedge.backedge

.backedge.backedge:                               ; preds = %.critedge.i.i, %_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI8hb_set_tEEbPT_.exit.i.i
  %.01217.i.i.be = phi ptr [ %.old, %.critedge.i.i ], [ %i.an, %_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI8hb_set_tEEbPT_.exit.i.i ]
  br label %.backedge

_ZNK2OT8ClassDef16collect_coverageI8hb_set_tEEbPT_.exit: ; preds = %.critedge.i.i, %_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI8hb_set_tEEbPT_.exit.i.i, %bb.d, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2OT17ClassDefFormat1_3INS_6Layout10SmallTypesEE16collect_coverageI8hb_set_tEEbPT_(ptr noundef nonnull align 1 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i16, ptr %i.a, align 1, !tbaa !283  ; 2 uses
  %i.c = tail call noundef i16 @llvm.bswap.i16(i16 %i.b) ; 2 uses
  %i.d = zext i16 %i.c to i32                     ; 2 uses
  %.not2327.not = icmp eq i16 %i.b, 0
  br i1 %.not2327.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 64
  %wide.trip.count = zext i16 %i.c to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.pre-phi, %bb.g ] ; 6 uses
  %.01828 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.g ] ; 3 uses
  %i.i = load i16, ptr %i.a, align 1, !tbaa !283
  %i.j = tail call noundef i16 @llvm.bswap.i16(i16 %i.i)
  %i.k = zext i16 %i.j to i64
  %.not.i = icmp samesign ult i64 %indvars.iv, %i.k
  br i1 %.not.i, label %bb.c, label %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_EixEi.exit, !prof !268

bb.c:                                             ; preds = %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv
  br label %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_EixEi.exit

_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_EixEi.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.l, %bb.c ], [ @_hb_NullPool, %bb.b ]
  %i.m = load i16, ptr %.0.i, align 1, !tbaa !283
  %.not = icmp eq i16 %i.m, 0
  br i1 %.not, label %bb.d, label %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_EixEi.exit._crit_edge

_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_EixEi.exit._crit_edge: ; preds = %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_EixEi.exit
  %.pre = add nuw nsw i64 %indvars.iv, 1
  br label %bb.g

bb.d:                                             ; preds = %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_EixEi.exit
  %i.n = zext i32 %.01828 to i64
  %.not22 = icmp eq i64 %indvars.iv, %i.n
  br i1 %.not22, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load i16, ptr %i.f, align 1, !tbaa !283
  %i.p = tail call noundef i16 @llvm.bswap.i16(i16 %i.o)
  %i.q = zext i16 %i.p to i32                     ; 2 uses
  %i.r = add i32 %.01828, %i.q                    ; 2 uses
  %i.s = trunc nuw nsw i64 %indvars.iv to i32
  %i.t = add i32 %i.s, %i.q                       ; 2 uses
  %i.u = load i8, ptr %i.h, align 8, !tbaa !946, !range !380, !noundef !293
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE9add_rangeEjj.exit.thread, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE9add_rangeEjj.exit, !prof !267

_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE9add_rangeEjj.exit.thread: ; preds = %bb.e
  tail call void @_ZN12hb_bit_set_t9del_rangeEjj(ptr noundef nonnull align 8 dereferenceable(49) %i.g, i32 noundef %i.r, i32 noundef %i.t)
  br label %bb.f

_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE9add_rangeEjj.exit: ; preds = %bb.e
  %i.w = tail call noundef zeroext i1 @_ZN12hb_bit_set_t9add_rangeEjj(ptr noundef nonnull align 8 dereferenceable(49) %i.g, i32 noundef %i.r, i32 noundef %i.t)
  br i1 %i.w, label %bb.f, label %.loopexit, !prof !4003

bb.f:                                             ; preds = %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE9add_rangeEjj.exit.thread, %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE9add_rangeEjj.exit, %bb.d
  %i.x = add nuw nsw i64 %indvars.iv, 1           ; 2 uses
  %i.y = trunc nuw nsw i64 %i.x to i32
  br label %bb.g

bb.g:                                             ; preds = %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_EixEi.exit._crit_edge, %bb.f
  %indvars.iv.next.pre-phi = phi i64 [ %.pre, %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_EixEi.exit._crit_edge ], [ %i.x, %bb.f ] ; 2 uses
  %.1 = phi i32 [ %.01828, %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_EixEi.exit._crit_edge ], [ %i.y, %bb.f ] ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.pre-phi, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.b, !llvm.loop !4002

.critedge:                                        ; preds = %bb.g, %bb.a
  %.018.lcssa = phi i32 [ 0, %bb.a ], [ %.1, %bb.g ] ; 2 uses
  %.not24 = icmp eq i32 %.018.lcssa, %i.d
  br i1 %.not24, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.critedge
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.aa = load i16, ptr %i.z, align 1, !tbaa !283
  %i.ab = tail call noundef i16 @llvm.bswap.i16(i16 %i.aa)
  %i.ac = zext i16 %i.ab to i32                   ; 2 uses
  %i.ad = add i32 %.018.lcssa, %i.ac              ; 2 uses
  %i.ae = add nuw nsw i32 %i.ac, %i.d             ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !946, !range !380, !noundef !293
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE9add_rangeEjj.exit25.thread, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE9add_rangeEjj.exit25, !prof !267

_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE9add_rangeEjj.exit25.thread: ; preds = %bb.h
  tail call void @_ZN12hb_bit_set_t9del_rangeEjj(ptr noundef nonnull align 8 dereferenceable(49) %i.af, i32 noundef %i.ad, i32 noundef %i.ae)
  br label %bb.i

_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE9add_rangeEjj.exit25: ; preds = %bb.h
  %i.aj = tail call noundef zeroext i1 @_ZN12hb_bit_set_t9add_rangeEjj(ptr noundef nonnull align 8 dereferenceable(49) %i.af, i32 noundef %i.ad, i32 noundef %i.ae)
  br i1 %i.aj, label %bb.i, label %.loopexit, !prof !1755

bb.i:                                             ; preds = %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE9add_rangeEjj.exit25.thread, %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE9add_rangeEjj.exit25, %.critedge
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE9add_rangeEjj.exit, %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE9add_rangeEjj.exit25, %bb.i
  %.120 = phi i1 [ false, %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE9add_rangeEjj.exit25 ], [ true, %bb.i ], [ false, %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE9add_rangeEjj.exit ]
  ret i1 %.120
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2OT9Condition8evaluateINS_21ItemVarStoreInstancerEEEbPKijPT_(ptr noundef nonnull align 1 dereferenceable(8) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.o, %bb.a
  %accumulator.tr = phi i1 [ false, %bb.a ], [ %i.ds, %bb.o ] ; 2 uses
  %.tr = phi ptr [ %0, %bb.a ], [ %.0.i.i20, %bb.o ] ; 16 uses
  %i.a = load i16, ptr %.tr, align 1, !tbaa !283
  %i.b = tail call noundef i16 @llvm.bswap.i16(i16 %i.a)
  switch i16 %i.b, label %_ZNK2OT18ConditionAxisRange8evaluateINS_21ItemVarStoreInstancerEEEbPKijPT_.exit [
    i16 1, label %bb.b
    i16 2, label %bb.f
    i16 3, label %bb.k
    i16 4, label %bb.m
    i16 5, label %bb.o
  ]

bb.b:                                             ; preds = %tailrecurse
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.c = getelementptr inbounds nuw i8, ptr %.tr, i64 2
  %i.d = load i16, ptr %i.c, align 1, !tbaa !283
  %i.e = tail call noundef i16 @llvm.bswap.i16(i16 %i.d) ; 2 uses
  %i.f = zext i16 %i.e to i32
  %i.g = icmp ugt i32 %2, %i.f
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = zext i16 %i.e to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !tbaa !324
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = phi i32 [ %i.j, %bb.c ], [ 0, %bb.b ]    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.tr, i64 4
  %i.m = load i16, ptr %i.l, align 1, !tbaa !283
  %i.n = tail call noundef i16 @llvm.bswap.i16(i16 %i.m)
  %i.o = sext i16 %i.n to i32
  %.not.i = icmp slt i32 %i.k, %i.o
  br i1 %.not.i, label %_ZNK2OT18ConditionAxisRange8evaluateINS_21ItemVarStoreInstancerEEEbPKijPT_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %.tr, i64 6
  %i.q = load i16, ptr %i.p, align 1, !tbaa !283
  %i.r = tail call noundef i16 @llvm.bswap.i16(i16 %i.q)
  %i.s = sext i16 %i.r to i32
  %i.t = icmp sle i32 %i.k, %i.s
  br label %_ZNK2OT18ConditionAxisRange8evaluateINS_21ItemVarStoreInstancerEEEbPKijPT_.exit

bb.f:                                             ; preds = %tailrecurse
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.u = getelementptr inbounds nuw i8, ptr %.tr, i64 2
  %i.v = load i16, ptr %i.u, align 1, !tbaa !283
  %i.w = getelementptr inbounds nuw i8, ptr %.tr, i64 4
  %i.x = load i32, ptr %i.w, align 1, !tbaa !278  ; 2 uses
  %i.y = tail call noundef i32 @llvm.bswap.i32(i32 %i.x) ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !1540
  %i.ac = icmp ne i32 %i.ab, 0
  %i.ad = icmp ne i32 %i.x, -1
  %or.cond.not.i.i.i = and i1 %i.ad, %i.ac
  br i1 %or.cond.not.i.i.i, label %bb.g, label %_ZNK2OT14ConditionValue8evaluateINS_21ItemVarStoreInstancerEEEbPKijPT_.exit

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1200 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = tail call noundef i32 @_ZNK2OT16DeltaSetIndexMap3mapEj(ptr noundef nonnull align 1 dereferenceable(7) %i.af, i32 noundef %i.y)
  br label %bb.i
end_hunk_4
begin_hunk_5_@_ZNK2OT23MathTopAccentAttachment8sanitizeEP21hb_sanitize_context_t:bb.a
  br i1 %exitcond.not, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread13, label %.lr.ph, !llvm.loop !4277

_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread13: ; preds = %.lr.ph, %_ZN21hb_sanitize_context_t8dispatchIN2OT15MathValueRecordEJPKNS1_23MathTopAccentAttachmentEEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS8_.exit, %_ZN21hb_sanitize_context_t8dispatchIN2OT15MathValueRecordEJPKNS1_23MathTopAccentAttachmentEEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS8_.exit.thread, %bb.n, %_ZNK2OT7ArrayOfINS_15MathValueRecordENS_7NumTypeILb1EtLj2EEEE16sanitize_shallowEP21hb_sanitize_context_t.exit, %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread, %bb.m, %bb.l, %bb.k, %bb.j, %bb.f, %bb.i, %bb.g, %bb.h, %bb.d, %bb.b, %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit, %bb.a
  %i.dg = phi i1 [ false, %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit ], [ false, %bb.a ], [ false, %bb.k ], [ false, %bb.b ], [ false, %bb.d ], [ false, %bb.h ], [ false, %bb.g ], [ false, %bb.i ], [ false, %bb.f ], [ false, %bb.j ], [ false, %bb.l ], [ false, %_ZNK2OT7ArrayOfINS_15MathValueRecordENS_7NumTypeILb1EtLj2EEEE16sanitize_shallowEP21hb_sanitize_context_t.exit ], [ false, %bb.m ], [ false, %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread ], [ true, %bb.n ], [ false, %.lr.ph ], [ false, %_ZN21hb_sanitize_context_t8dispatchIN2OT15MathValueRecordEJPKNS1_23MathTopAccentAttachmentEEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS8_.exit ], [ true, %_ZN21hb_sanitize_context_t8dispatchIN2OT15MathValueRecordEJPKNS1_23MathTopAccentAttachmentEEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOS8_.exit.thread ]
  ret i1 %i.dg
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2OT12MathKernInfo8sanitizeEP21hb_sanitize_context_t(ptr noundef nonnull align 1 dereferenceable(12) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !505
  %i.d = ptrtoint ptr %i.a to i64                 ; 4 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 8 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !506
  %i.i = zext i32 %i.h to i64                     ; 2 uses
  %.not = icmp ugt i64 %i.f, %i.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  br i1 %.not, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread12, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 3 uses
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.e
  %.not.i4.not = icmp ugt i64 %i.m, %i.i
  br i1 %.not.i4.not, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread12, label %bb.c, !prof !267

bb.c:                                             ; preds = %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.n = load i16, ptr %0, align 1, !tbaa !283    ; 2 uses
  %i.o = icmp eq i16 %i.n, 0
  %.pre22 = load ptr, ptr %i.b, align 8, !tbaa !505 ; 2 uses
  %.pre24 = load i32, ptr %i.g, align 8, !tbaa !506 ; 2 uses
  br i1 %i.o, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = tail call noundef i16 @llvm.bswap.i16(i16 %i.n)
  %i.q = zext i16 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %i.q ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 2 ; 3 uses
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %.pre22 to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = zext i32 %.pre24 to i64
  %.not.i.i = icmp ugt i64 %i.v, %i.w
  br i1 %.not.i.i, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread12, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.x = load i16, ptr %i.r, align 1, !tbaa !283
  %i.y = tail call noundef i16 @llvm.bswap.i16(i16 %i.x)
  switch i16 %i.y, label %._ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread_crit_edge [
    i16 1, label %bb.f
    i16 2, label %bb.i
  ]

._ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread_crit_edge: ; preds = %bb.e
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !505
  %.pre23 = load i32, ptr %i.g, align 8, !tbaa !506
  br label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread

bb.f:                                             ; preds = %bb.e
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !505
  %i.ab = ptrtoint ptr %i.z to i64                ; 3 uses
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = load i32, ptr %i.g, align 8, !tbaa !506
  %i.af = zext i32 %i.ae to i64
  %.not.i.i.i.i = icmp ugt i64 %i.ad, %i.af
  br i1 %.not.i.i.i.i, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread12, label %bb.g, !prof !711

bb.g:                                             ; preds = %bb.f
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.ag = load ptr, ptr %i.b, align 8, !tbaa !505 ; 2 uses
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.ab, %i.ah
  %i.aj = load i32, ptr %i.g, align 8, !tbaa !506 ; 2 uses
  %i.ak = zext i32 %i.aj to i64
  %.not.i.i.i.i.i.i = icmp ugt i64 %i.ai, %i.ak
  br i1 %.not.i.i.i.i.i.i, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread12, label %bb.h, !prof !711

bb.h:                                             ; preds = %bb.g
  %i.al = load i16, ptr %i.s, align 1, !tbaa !283
  %i.am = tail call noundef i16 @llvm.bswap.i16(i16 %i.al)
  %i.an = zext i16 %i.am to i32
  %i.ao = shl nuw nsw i32 %i.an, 1                ; 2 uses
  %i.ap = load ptr, ptr %i.j, align 8, !tbaa !504
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = sub i64 %i.aq, %i.ab
  %i.as = trunc i64 %i.ar to i32
  %.not12.i.i.i.i.i.i = icmp ugt i32 %i.ao, %i.as
  br i1 %.not12.i.i.i.i.i.i, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread12, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit, !prof !711

bb.i:                                             ; preds = %bb.e
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.at = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.au = load ptr, ptr %i.b, align 8, !tbaa !505
  %i.av = ptrtoint ptr %i.at to i64               ; 3 uses
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = load i32, ptr %i.g, align 8, !tbaa !506
  %i.az = zext i32 %i.ay to i64
  %.not.i.i2.i.i = icmp ugt i64 %i.ax, %i.az
  br i1 %.not.i.i2.i.i, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread12, label %bb.j, !prof !711

bb.j:                                             ; preds = %bb.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.ba = load ptr, ptr %i.b, align 8, !tbaa !505 ; 2 uses
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = sub i64 %i.av, %i.bb
  %i.bd = load i32, ptr %i.g, align 8, !tbaa !506 ; 2 uses
  %i.be = zext i32 %i.bd to i64
  %.not.i.i.i.i3.i.i = icmp ugt i64 %i.bc, %i.be
  br i1 %.not.i.i.i.i3.i.i, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread12, label %bb.k, !prof !711

bb.k:                                             ; preds = %bb.j
  %i.bf = load i16, ptr %i.s, align 1, !tbaa !283
  %i.bg = tail call noundef i16 @llvm.bswap.i16(i16 %i.bf)
  %i.bh = zext i16 %i.bg to i32
  %i.bi = mul nuw nsw i32 %i.bh, 6                ; 2 uses
  %i.bj = load ptr, ptr %i.j, align 8, !tbaa !504
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = sub i64 %i.bk, %i.av
  %i.bm = trunc i64 %i.bl to i32
  %.not12.i.i.i.i4.i.i = icmp ugt i32 %i.bi, %i.bm
  br i1 %.not12.i.i.i.i4.i.i, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread12, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit, !prof !711

_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit: ; preds = %bb.h, %bb.k
  %i.bn = phi i32 [ %i.aj, %bb.h ], [ %i.bd, %bb.k ]
  %i.bo = phi ptr [ %i.ag, %bb.h ], [ %i.ba, %bb.k ]
  %.sink13.i.i = phi i32 [ %i.ao, %bb.h ], [ %i.bi, %bb.k ]
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !508
  %i.br = sub i32 %i.bq, %.sink13.i.i             ; 2 uses
  store i32 %i.br, ptr %i.bp, align 4, !tbaa !508
  %i.bs = icmp sgt i32 %i.br, 0
  br i1 %i.bs, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread12

_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread: ; preds = %._ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread_crit_edge, %bb.c, %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit
  %i.bt = phi i32 [ %.pre23, %._ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread_crit_edge ], [ %.pre24, %bb.c ], [ %i.bn, %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit ]
  %i.bu = phi ptr [ %.pre, %._ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread_crit_edge ], [ %.pre22, %bb.c ], [ %i.bo, %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit ]
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = sub i64 %i.d, %i.bv
  %i.bx = zext i32 %i.bt to i64
  %.not.i5 = icmp ugt i64 %i.bw, %i.bx
  br i1 %.not.i5, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread12, label %bb.l, !prof !711

bb.l:                                             ; preds = %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.by = load i16, ptr %i.k, align 1, !tbaa !283
  %i.bz = tail call noundef i16 @llvm.bswap.i16(i16 %i.by)
  %i.ca = zext i16 %i.bz to i32
  %i.cb = shl nuw nsw i32 %i.ca, 3                ; 2 uses
  %i.cc = load ptr, ptr %i.b, align 8, !tbaa !505
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = sub i64 %i.d, %i.cd
  %i.cf = load i32, ptr %i.g, align 8, !tbaa !506
  %i.cg = zext i32 %i.cf to i64
  %.not.i.i.i = icmp ugt i64 %i.ce, %i.cg
  br i1 %.not.i.i.i, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread12, label %bb.m, !prof !711

bb.m:                                             ; preds = %bb.l
  %i.ch = load ptr, ptr %i.j, align 8, !tbaa !504
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = sub i64 %i.ci, %i.d
  %i.ck = trunc i64 %i.cj to i32
  %.not12.i.i.i = icmp ugt i32 %i.cb, %i.ck
  br i1 %.not12.i.i.i, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread12, label %_ZNK2OT7ArrayOfINS_18MathKernInfoRecordENS_7NumTypeILb1EtLj2EEEE16sanitize_shallowEP21hb_sanitize_context_t.exit, !prof !711

_ZNK2OT7ArrayOfINS_18MathKernInfoRecordENS_7NumTypeILb1EtLj2EEEE16sanitize_shallowEP21hb_sanitize_context_t.exit: ; preds = %bb.m
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !508
  %i.cn = sub i32 %i.cm, %i.cb                    ; 2 uses
  store i32 %i.cn, ptr %i.cl, align 4, !tbaa !508
  %i.co = icmp sgt i32 %i.cn, 0
  br i1 %i.co, label %bb.n, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread12, !prof !672

bb.n:                                             ; preds = %_ZNK2OT7ArrayOfINS_18MathKernInfoRecordENS_7NumTypeILb1EtLj2EEEE16sanitize_shallowEP21hb_sanitize_context_t.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.cp = load i16, ptr %i.k, align 1, !tbaa !283 ; 2 uses
  %.not.i17.not = icmp eq i16 %i.cp, 0
  br i1 %.not.i17.not, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread12, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.n
  %i.cq = tail call noundef i16 @llvm.bswap.i16(i16 %i.cp)
  %wide.trip.count = zext i16 %i.cq to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.cs = tail call noundef zeroext i1 @_ZNK2OT18MathKernInfoRecord8sanitizeEP21hb_sanitize_context_tPKv(ptr noundef nonnull align 1 dereferenceable(8) %i.cr, ptr noundef nonnull align 8 dereferenceable(62) %1, ptr noundef nonnull %0) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp ne i64 %indvars.iv.next, %wide.trip.count
  %or.cond.not = select i1 %i.cs, i1 %exitcond.not, i1 false
  br i1 %or.cond.not, label %.lr.ph, label %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread12, !prof !704, !llvm.loop !4278

_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread12: ; preds = %.lr.ph, %bb.n, %_ZNK2OT7ArrayOfINS_18MathKernInfoRecordENS_7NumTypeILb1EtLj2EEEE16sanitize_shallowEP21hb_sanitize_context_t.exit, %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread, %bb.m, %bb.l, %bb.k, %bb.j, %bb.f, %bb.i, %bb.g, %bb.h, %bb.d, %bb.b, %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit, %bb.a
  %i.ct = phi i1 [ false, %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit ], [ false, %bb.a ], [ false, %bb.k ], [ false, %bb.b ], [ false, %bb.d ], [ false, %bb.h ], [ false, %bb.g ], [ false, %bb.i ], [ false, %bb.f ], [ false, %bb.j ], [ false, %bb.l ], [ false, %_ZNK2OT7ArrayOfINS_18MathKernInfoRecordENS_7NumTypeILb1EtLj2EEEE16sanitize_shallowEP21hb_sanitize_context_t.exit ], [ false, %bb.m ], [ false, %_ZNK2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread ], [ true, %bb.n ], [ %i.cs, %.lr.ph ]
  ret i1 %i.ct
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2OT18MathKernInfoRecord8sanitizeEP21hb_sanitize_context_tPKv(ptr noundef nonnull align 1 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 16 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 16 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !505
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = load i32, ptr %i.b, align 8, !tbaa !506
  %i.k = zext i32 %i.j to i64
  %.not.i.not = icmp ugt i64 %i.i, %i.k
  br i1 %.not.i.not, label %.thread16, label %bb.b, !prof !267

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.l = load i16, ptr %0, align 1, !tbaa !283    ; 2 uses
  %i.m = icmp eq i16 %i.l, 0
  br i1 %i.m, label %_ZNK2OT8OffsetToINS_8MathKernENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = tail call noundef i16 @llvm.bswap.i16(i16 %i.l)
  %i.o = zext i16 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 %i.o ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 2 ; 2 uses
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !505
  %i.s = ptrtoint ptr %i.q to i64                 ; 3 uses
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = load i32, ptr %i.b, align 8, !tbaa !506
  %i.w = zext i32 %i.v to i64
  %.not.i.i.i = icmp ugt i64 %i.u, %i.w
  br i1 %.not.i.i.i, label %.thread16, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.x = load i16, ptr %i.p, align 1, !tbaa !283
  %i.y = tail call noundef i16 @llvm.bswap.i16(i16 %i.x) ; 2 uses
  %i.z = zext i16 %i.y to i32
  %i.aa = shl nuw nsw i32 %i.z, 3
  %i.ab = or disjoint i32 %i.aa, 4                ; 2 uses
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !505
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = sub i64 %i.s, %i.ad
  %i.af = load i32, ptr %i.b, align 8, !tbaa !506
  %i.ag = zext i32 %i.af to i64
  %.not.i.i.i.i.i.i = icmp ugt i64 %i.ae, %i.ag
  br i1 %.not.i.i.i.i.i.i, label %.thread16, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = load ptr, ptr %i.c, align 8, !tbaa !504
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = sub i64 %i.ai, %i.s
  %i.ak = trunc i64 %i.aj to i32
  %.not12.i.i.i.i.i.i = icmp ugt i32 %i.ab, %i.ak
  br i1 %.not12.i.i.i.i.i.i, label %.thread16, label %_ZNK21hb_sanitize_context_t11check_arrayIN2OT15MathValueRecordEEEbPKT_j.exit.i.i.i

_ZNK21hb_sanitize_context_t11check_arrayIN2OT15MathValueRecordEEEbPKT_j.exit.i.i.i: ; preds = %bb.e
  %i.al = load i32, ptr %i.d, align 4, !tbaa !508
  %i.am = sub i32 %i.al, %i.ab                    ; 2 uses
  store i32 %i.am, ptr %i.d, align 4, !tbaa !508
  %i.an = icmp sgt i32 %i.am, 0
  br i1 %i.an, label %bb.f, label %.thread16

bb.f:                                             ; preds = %_ZNK21hb_sanitize_context_t11check_arrayIN2OT15MathValueRecordEEEbPKT_j.exit.i.i.i
  %i.ao = zext i16 %i.y to i64
  %i.ap = shl nuw nsw i64 %i.ao, 1
  br label %bb.g

bb.g:                                             ; preds = %_ZNK2OT15MathValueRecord8sanitizeEP21hb_sanitize_context_tPKv.exit.thread.i.i.i.i, %bb.f
  %indvars.iv.i.i.i.i = phi i64 [ 0, %bb.f ], [ %indvars.iv.next.i.i.i.i, %_ZNK2OT15MathValueRecord8sanitizeEP21hb_sanitize_context_tPKv.exit.thread.i.i.i.i ] ; 3 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.i.i.i.i ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.as = load ptr, ptr %i.a, align 8, !tbaa !505
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = load i32, ptr %i.b, align 8, !tbaa !506
  %i.ax = zext i32 %i.aw to i64
  %.not.i.i.i.i.i = icmp ugt i64 %i.av, %i.ax
  br i1 %.not.i.i.i.i.i, label %.thread16, label %bb.h, !prof !327

bb.h:                                             ; preds = %bb.g
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aq, i64 2
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.az = load i16, ptr %i.ay, align 1, !tbaa !283 ; 2 uses
  %i.ba = icmp eq i16 %i.az, 0
  br i1 %i.ba, label %_ZNK2OT15MathValueRecord8sanitizeEP21hb_sanitize_context_tPKv.exit.thread.i.i.i.i, label %_ZNK2OT15MathValueRecord8sanitizeEP21hb_sanitize_context_tPKv.exit.i.i.i.i

_ZNK2OT15MathValueRecord8sanitizeEP21hb_sanitize_context_tPKv.exit.i.i.i.i: ; preds = %bb.h
  %i.bb = tail call noundef i16 @llvm.bswap.i16(i16 %i.az)
  %i.bc = zext i16 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.bc
  %i.be = tail call noundef zeroext i1 @_ZNK2OT6Device8sanitizeEP21hb_sanitize_context_t(ptr noundef nonnull align 1 dereferenceable(8) %i.bd, ptr noundef nonnull align 8 dereferenceable(62) %1)
  br i1 %i.be, label %_ZNK2OT15MathValueRecord8sanitizeEP21hb_sanitize_context_tPKv.exit.thread.i.i.i.i, label %.thread16

_ZNK2OT15MathValueRecord8sanitizeEP21hb_sanitize_context_tPKv.exit.thread.i.i.i.i: ; preds = %_ZNK2OT15MathValueRecord8sanitizeEP21hb_sanitize_context_tPKv.exit.i.i.i.i, %bb.h
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1
  %exitcond.i.i.i.i = icmp eq i64 %indvars.iv.i.i.i.i, %i.ap
  br i1 %exitcond.i.i.i.i, label %_ZNK2OT8OffsetToINS_8MathKernENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread, label %bb.g, !llvm.loop !4279

_ZNK2OT8OffsetToINS_8MathKernENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread: ; preds = %_ZNK2OT15MathValueRecord8sanitizeEP21hb_sanitize_context_tPKv.exit.thread.i.i.i.i, %bb.b
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bg = load ptr, ptr %i.a, align 8, !tbaa !505
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = load i32, ptr %i.b, align 8, !tbaa !506
  %i.bl = zext i32 %i.bk to i64
  %.not.i.not.1 = icmp ugt i64 %i.bj, %i.bl
  br i1 %.not.i.not.1, label %.thread16, label %bb.i, !prof !267

bb.i:                                             ; preds = %_ZNK2OT8OffsetToINS_8MathKernENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.bm = load i16, ptr %i.e, align 1, !tbaa !283 ; 2 uses
  %i.bn = icmp eq i16 %i.bm, 0
  br i1 %i.bn, label %_ZNK2OT8OffsetToINS_8MathKernENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread.1, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bo = tail call noundef i16 @llvm.bswap.i16(i16 %i.bm)
  %i.bp = zext i16 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 %i.bp ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 2 ; 2 uses
  %i.bs = load ptr, ptr %i.a, align 8, !tbaa !505
  %i.bt = ptrtoint ptr %i.br to i64               ; 3 uses
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = load i32, ptr %i.b, align 8, !tbaa !506
  %i.bx = zext i32 %i.bw to i64
  %.not.i.i.i.1 = icmp ugt i64 %i.bv, %i.bx
  br i1 %.not.i.i.i.1, label %.thread16, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.by = load i16, ptr %i.bq, align 1, !tbaa !283
  %i.bz = tail call noundef i16 @llvm.bswap.i16(i16 %i.by) ; 2 uses
  %i.ca = zext i16 %i.bz to i32
  %i.cb = shl nuw nsw i32 %i.ca, 3
  %i.cc = or disjoint i32 %i.cb, 4                ; 2 uses
  %i.cd = load ptr, ptr %i.a, align 8, !tbaa !505
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = sub i64 %i.bt, %i.ce
  %i.cg = load i32, ptr %i.b, align 8, !tbaa !506
  %i.ch = zext i32 %i.cg to i64
  %.not.i.i.i.i.i.i.1 = icmp ugt i64 %i.cf, %i.ch
  br i1 %.not.i.i.i.i.i.i.1, label %.thread16, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ci = load ptr, ptr %i.c, align 8, !tbaa !504
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = sub i64 %i.cj, %i.bt
  %i.cl = trunc i64 %i.ck to i32
  %.not12.i.i.i.i.i.i.1 = icmp ugt i32 %i.cc, %i.cl
  br i1 %.not12.i.i.i.i.i.i.1, label %.thread16, label %_ZNK21hb_sanitize_context_t11check_arrayIN2OT15MathValueRecordEEEbPKT_j.exit.i.i.i.1

_ZNK21hb_sanitize_context_t11check_arrayIN2OT15MathValueRecordEEEbPKT_j.exit.i.i.i.1: ; preds = %bb.l
  %i.cm = load i32, ptr %i.d, align 4, !tbaa !508
  %i.cn = sub i32 %i.cm, %i.cc                    ; 2 uses
  store i32 %i.cn, ptr %i.d, align 4, !tbaa !508
  %i.co = icmp sgt i32 %i.cn, 0
  br i1 %i.co, label %bb.m, label %.thread16

bb.m:                                             ; preds = %_ZNK21hb_sanitize_context_t11check_arrayIN2OT15MathValueRecordEEEbPKT_j.exit.i.i.i.1
  %i.cp = zext i16 %i.bz to i64
  %i.cq = shl nuw nsw i64 %i.cp, 1
  br label %bb.n

bb.n:                                             ; preds = %_ZNK2OT15MathValueRecord8sanitizeEP21hb_sanitize_context_tPKv.exit.thread.i.i.i.i.1, %bb.m
  %indvars.iv.i.i.i.i.1 = phi i64 [ 0, %bb.m ], [ %indvars.iv.next.i.i.i.i.1, %_ZNK2OT15MathValueRecord8sanitizeEP21hb_sanitize_context_tPKv.exit.thread.i.i.i.i.1 ] ; 3 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv.i.i.i.i.1 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 4
  %i.ct = load ptr, ptr %i.a, align 8, !tbaa !505
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = ptrtoint ptr %i.ct to i64
  %i.cw = sub i64 %i.cu, %i.cv
  %i.cx = load i32, ptr %i.b, align 8, !tbaa !506
  %i.cy = zext i32 %i.cx to i64
  %.not.i.i.i.i.i.1 = icmp ugt i64 %i.cw, %i.cy
  br i1 %.not.i.i.i.i.i.1, label %.thread16, label %bb.o, !prof !327

bb.o:                                             ; preds = %bb.n
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cr, i64 2
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.da = load i16, ptr %i.cz, align 1, !tbaa !283 ; 2 uses
  %i.db = icmp eq i16 %i.da, 0
  br i1 %i.db, label %_ZNK2OT15MathValueRecord8sanitizeEP21hb_sanitize_context_tPKv.exit.thread.i.i.i.i.1, label %_ZNK2OT15MathValueRecord8sanitizeEP21hb_sanitize_context_tPKv.exit.i.i.i.i.1
end_hunk_5
begin_hunk_6_@"_ZN2OT8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EE19serialize_serializeIJR13hb_map_iter_tI13hb_zip_iter_tI17hb_sorted_array_tINS_11HBGlyphID16EE10hb_array_tISB_EERK3$_6L24hb_function_sortedness_t1ELPv0EEEEEbP22hb_serialize_context_tDpOT_":bb.a
  %i.cg = load ptr, ptr %i.e, align 8, !tbaa !901 ; 4 uses
  %i.ch = ptrtoint ptr %i.cf to i64               ; 2 uses
  %i.ci = ptrtoint ptr %i.cg to i64               ; 2 uses
  %i.cj = sub i64 %i.ch, %i.ci                    ; 4 uses
  %i.ck = icmp ugt i64 %i.cj, 2147483647
  br i1 %i.ck, label %.sink.split, label %bb.t, !prof !267

bb.t:                                             ; preds = %bb.s
  %i.cl = load ptr, ptr %i.k, align 8, !tbaa !902
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = sub i64 %i.cm, %i.ci
  %i.co = icmp slt i64 %i.cn, %i.cj
  br i1 %i.co, label %.sink.split, label %bb.u, !prof !267

bb.u:                                             ; preds = %bb.t
  %.not.i.i.i.not.i.i.i = icmp eq ptr %i.cf, %i.cg
  br i1 %.not.i.i.i.not.i.i.i, label %_ZL9hb_memsetPvij.exit.i.i.i.i.i, label %bb.v, !prof !327

bb.v:                                             ; preds = %bb.u
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.cg, i8 0, i64 %i.cj, i1 false)
  %.pre.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !901
  br label %_ZL9hb_memsetPvij.exit.i.i.i.i.i

_ZL9hb_memsetPvij.exit.i.i.i.i.i:                 ; preds = %bb.v, %bb.u
  %i.cp = phi ptr [ %.pre.i.i.i.i.i, %bb.v ], [ %i.cg, %bb.u ] ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.cj ; 5 uses
  store ptr %i.cq, ptr %i.e, align 8, !tbaa !901
  %i.cr = icmp eq ptr %i.cp, null
  br i1 %i.cr, label %bb.av, label %"_ZNK9hb_iter_tI13hb_map_iter_tI13hb_zip_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EE10hb_array_tIS4_EERK3$_6L24hb_function_sortedness_t1ELPv0EERS4_E3endEv.exit.i.i", !prof !267

"_ZNK9hb_iter_tI13hb_map_iter_tI13hb_zip_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EE10hb_array_tIS4_EERK3$_6L24hb_function_sortedness_t1ELPv0EERS4_E3endEv.exit.i.i": ; preds = %_ZL9hb_memsetPvij.exit.i.i.i.i.i
  %i.cs = shl i64 %.sroa.2.0.copyload, 1
  %.idx.i.i = and i64 %i.cs, 8589934590
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.010.0.copyload, i64 %.idx.i.i ; 2 uses
  %i.cu = and i64 %.sroa.2.0.copyload.i.i.i.i2.i.i.i.i.i.fr.i, 4294967295
  %i.cv = getelementptr inbounds nuw [2 x i8], ptr %.sroa.3.0.copyload, i64 %i.cu ; 2 uses
  br i1 %.not.i.i.i77.i.not43, label %"_ZNK13hb_map_iter_tI13hb_zip_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EE10hb_array_tIS3_EERK3$_6L24hb_function_sortedness_t1ELPv0EEneERKSD_.exit.thread.i.i", label %"_ZNK13hb_map_iter_tI13hb_zip_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EE10hb_array_tIS3_EERK3$_6L24hb_function_sortedness_t1ELPv0EEneERKSD_.exit.i.i"

"_ZNK13hb_map_iter_tI13hb_zip_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EE10hb_array_tIS3_EERK3$_6L24hb_function_sortedness_t1ELPv0EEneERKSD_.exit.i.i": ; preds = %"_ZNK9hb_iter_tI13hb_map_iter_tI13hb_zip_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EE10hb_array_tIS4_EERK3$_6L24hb_function_sortedness_t1ELPv0EERS4_E3endEv.exit.i.i", %_ZNR9hb_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EERS2_EppEv.exit.i.i.i.i.i.i
  %.026126.i.i = phi i32 [ %i.ee, %_ZNR9hb_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EERS2_EppEv.exit.i.i.i.i.i.i ], [ -2, %"_ZNK9hb_iter_tI13hb_map_iter_tI13hb_zip_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EE10hb_array_tIS4_EERK3$_6L24hb_function_sortedness_t1ELPv0EERS4_E3endEv.exit.i.i" ]
  %.028125.i.i = phi i32 [ %spec.select.i.i, %_ZNR9hb_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EERS2_EppEv.exit.i.i.i.i.i.i ], [ 0, %"_ZNK9hb_iter_tI13hb_map_iter_tI13hb_zip_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EE10hb_array_tIS4_EERK3$_6L24hb_function_sortedness_t1ELPv0EERS4_E3endEv.exit.i.i" ] ; 2 uses
  %.sroa.16110.0124.i.i = phi i32 [ %.sroa.16110.1.i.i, %_ZNR9hb_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EERS2_EppEv.exit.i.i.i.i.i.i ], [ %.sroa.7.sroa.0.0.extract.trunc, %"_ZNK9hb_iter_tI13hb_map_iter_tI13hb_zip_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EE10hb_array_tIS4_EERK3$_6L24hb_function_sortedness_t1ELPv0EERS4_E3endEv.exit.i.i" ] ; 2 uses
  %.sroa.0101.0123.i.i = phi ptr [ %.sroa.0101.1.i.i, %_ZNR9hb_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EERS2_EppEv.exit.i.i.i.i.i.i ], [ %.sroa.010.0.copyload, %"_ZNK9hb_iter_tI13hb_map_iter_tI13hb_zip_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EE10hb_array_tIS4_EERK3$_6L24hb_function_sortedness_t1ELPv0EERS4_E3endEv.exit.i.i" ] ; 3 uses
  %.sroa.7104.0122.i.i = phi i32 [ %.sroa.7104.1.i.i, %_ZNR9hb_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EERS2_EppEv.exit.i.i.i.i.i.i ], [ %.sroa.4.sroa.0.0.extract.trunc, %"_ZNK9hb_iter_tI13hb_map_iter_tI13hb_zip_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EE10hb_array_tIS4_EERK3$_6L24hb_function_sortedness_t1ELPv0EERS4_E3endEv.exit.i.i" ] ; 3 uses
  %.sroa.13108.0121.i.i = phi ptr [ %.sroa.13108.1.i.i, %_ZNR9hb_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EERS2_EppEv.exit.i.i.i.i.i.i ], [ %.sroa.3.0.copyload, %"_ZNK9hb_iter_tI13hb_map_iter_tI13hb_zip_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EE10hb_array_tIS4_EERK3$_6L24hb_function_sortedness_t1ELPv0EERS4_E3endEv.exit.i.i" ] ; 2 uses
  %.not.i3.i.i.i.i = icmp ne ptr %.sroa.13108.0121.i.i, %i.cv
  %i.cw = icmp ne i32 %.sroa.16110.0124.i.i, 0    ; 3 uses
  %i.cx = select i1 %.not.i3.i.i.i.i, i1 true, i1 %i.cw
  br i1 %i.cx, label %bb.ae, label %"_ZNK13hb_map_iter_tI13hb_zip_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EE10hb_array_tIS3_EERK3$_6L24hb_function_sortedness_t1ELPv0EEneERKSD_.exit.thread.i.i"

"_ZNK13hb_map_iter_tI13hb_zip_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EE10hb_array_tIS3_EERK3$_6L24hb_function_sortedness_t1ELPv0EEneERKSD_.exit.thread.i.i": ; preds = %_ZNR9hb_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EERS2_EppEv.exit.i.i.i.i.i.i, %"_ZNK13hb_map_iter_tI13hb_zip_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EE10hb_array_tIS3_EERK3$_6L24hb_function_sortedness_t1ELPv0EEneERKSD_.exit.i.i", %"_ZNK9hb_iter_tI13hb_map_iter_tI13hb_zip_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EE10hb_array_tIS4_EERK3$_6L24hb_function_sortedness_t1ELPv0EERS4_E3endEv.exit.i.i"
  %.028.lcssa.i.i = phi i32 [ 0, %"_ZNK9hb_iter_tI13hb_map_iter_tI13hb_zip_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EE10hb_array_tIS4_EERK3$_6L24hb_function_sortedness_t1ELPv0EERS4_E3endEv.exit.i.i" ], [ %spec.select.i.i, %_ZNR9hb_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EERS2_EppEv.exit.i.i.i.i.i.i ], [ %.028125.i.i, %"_ZNK13hb_map_iter_tI13hb_zip_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EE10hb_array_tIS3_EERK3$_6L24hb_function_sortedness_t1ELPv0EEneERKSD_.exit.i.i" ] ; 4 uses
  %i.cy = load i32, ptr %i.b, align 4, !tbaa !900
  %.not11.i.i.i.i.i33.i = icmp eq i32 %i.cy, 0
  br i1 %.not11.i.i.i.i.i33.i, label %bb.w, label %bb.av, !prof !268

bb.w:                                             ; preds = %"_ZNK13hb_map_iter_tI13hb_zip_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EE10hb_array_tIS3_EERK3$_6L24hb_function_sortedness_t1ELPv0EEneERKSD_.exit.thread.i.i"
  %i.cz = ptrtoint ptr %i.cq to i64               ; 2 uses
  %i.da = sub i64 %i.ch, %i.cz                    ; 4 uses
  %i.db = icmp ugt i64 %i.da, 2147483647
  br i1 %i.db, label %.sink.split, label %bb.x, !prof !267

bb.x:                                             ; preds = %bb.w
  %i.dc = load ptr, ptr %i.k, align 8, !tbaa !902
  %i.dd = ptrtoint ptr %i.dc to i64
  %i.de = sub i64 %i.dd, %i.cz
  %i.df = icmp slt i64 %i.de, %i.da
  br i1 %i.df, label %.sink.split, label %bb.y, !prof !267

bb.y:                                             ; preds = %bb.x
  %.not.i.i.i.not.i.i.i.i.i = icmp eq ptr %i.cf, %i.cq
  br i1 %.not.i.i.i.not.i.i.i.i.i, label %_ZL9hb_memsetPvij.exit.i.i.i.i.i.i.i, label %bb.z, !prof !327

bb.z:                                             ; preds = %bb.y
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.cq, i8 0, i64 %i.da, i1 false)
  %.pre.i.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !901
  br label %_ZL9hb_memsetPvij.exit.i.i.i.i.i.i.i

_ZL9hb_memsetPvij.exit.i.i.i.i.i.i.i:             ; preds = %bb.z, %bb.y
  %i.dg = phi ptr [ %.pre.i.i.i.i.i.i.i, %bb.z ], [ %i.cq, %bb.y ] ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.da
  store ptr %i.dh, ptr %i.e, align 8, !tbaa !901
  %i.di = icmp eq ptr %i.dg, null
  br i1 %i.di, label %bb.av, label %_ZN22hb_serialize_context_t10extend_minIN2OT7ArrayOfINS1_6Layout6Common11RangeRecordINS3_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEEEEEPT_SC_.exit.i.i.i.i, !prof !267

_ZN22hb_serialize_context_t10extend_minIN2OT7ArrayOfINS1_6Layout6Common11RangeRecordINS3_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEEEEEPT_SC_.exit.i.i.i.i: ; preds = %_ZL9hb_memsetPvij.exit.i.i.i.i.i.i.i
  %i.dj = trunc i32 %.028.lcssa.i.i to i16
  %i.dk = tail call i16 @llvm.bswap.i16(i16 %i.dj)
  store i16 %i.dk, ptr %i.d, align 1, !tbaa !280
  %.not.i.i.i.i.i.i = icmp ult i32 %.028.lcssa.i.i, 65536
  %.pr.i.i.i.i = load i32, ptr %i.b, align 4, !tbaa !900 ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %_ZN22hb_serialize_context_t12check_assignIN2OT7NumTypeILb1EtLj2EEERjEEbRT_OT0_20hb_serialize_error_t.exit.i.i.i.i, label %_ZN22hb_serialize_context_t12check_assignIN2OT7NumTypeILb1EtLj2EEERjEEbRT_OT0_20hb_serialize_error_t.exit.thread.i.i.i.i

_ZN22hb_serialize_context_t12check_assignIN2OT7NumTypeILb1EtLj2EEERjEEbRT_OT0_20hb_serialize_error_t.exit.thread.i.i.i.i: ; preds = %_ZN22hb_serialize_context_t10extend_minIN2OT7ArrayOfINS1_6Layout6Common11RangeRecordINS3_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEEEEEPT_SC_.exit.i.i.i.i
  %i.dl = or i32 %.pr.i.i.i.i, 16
  br label %.sink.split

_ZN22hb_serialize_context_t12check_assignIN2OT7NumTypeILb1EtLj2EEERjEEbRT_OT0_20hb_serialize_error_t.exit.i.i.i.i: ; preds = %_ZN22hb_serialize_context_t10extend_minIN2OT7ArrayOfINS1_6Layout6Common11RangeRecordINS3_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEEEEEPT_SC_.exit.i.i.i.i
  %.not11.i.i.i.i.i = icmp eq i32 %.pr.i.i.i.i, 0
  br i1 %.not11.i.i.i.i.i, label %bb.aa, label %bb.av, !prof !672

bb.aa:                                            ; preds = %_ZN22hb_serialize_context_t12check_assignIN2OT7NumTypeILb1EtLj2EEERjEEbRT_OT0_20hb_serialize_error_t.exit.i.i.i.i
  %narrow.i.i.i.i = mul nuw nsw i32 %.028.lcssa.i.i, 6
  %i.dm = zext nneg i32 %narrow.i.i.i.i to i64
  %i.dn = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 2 ; 2 uses
  %i.dp = load ptr, ptr %i.e, align 8, !tbaa !901 ; 4 uses
  %i.dq = ptrtoint ptr %i.do to i64
  %i.dr = ptrtoint ptr %i.dp to i64               ; 2 uses
  %i.ds = sub i64 %i.dq, %i.dr                    ; 4 uses
  %i.dt = icmp ugt i64 %i.ds, 2147483647
  br i1 %i.dt, label %.sink.split, label %bb.ab, !prof !267

bb.ab:                                            ; preds = %bb.aa
  %i.du = load ptr, ptr %i.k, align 8, !tbaa !902
  %i.dv = ptrtoint ptr %i.du to i64
  %i.dw = sub i64 %i.dv, %i.dr
  %i.dx = icmp slt i64 %i.dw, %i.ds
  br i1 %i.dx, label %.sink.split, label %bb.ac, !prof !267

bb.ac:                                            ; preds = %bb.ab
  %.not.i.i.i.i.not.i.i.i = icmp eq ptr %i.do, %i.dp
  br i1 %.not.i.i.i.i.not.i.i.i, label %_ZL9hb_memsetPvij.exit.i.i.i.i.i.i, label %bb.ad, !prof !327

bb.ad:                                            ; preds = %bb.ac
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.dp, i8 0, i64 %i.ds, i1 false)
  %.pre.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !901
  br label %_ZL9hb_memsetPvij.exit.i.i.i.i.i.i

_ZL9hb_memsetPvij.exit.i.i.i.i.i.i:               ; preds = %bb.ad, %bb.ac
  %i.dy = phi ptr [ %.pre.i.i.i.i.i.i, %bb.ad ], [ %i.dp, %bb.ac ] ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.ds
  store ptr %i.dz, ptr %i.e, align 8, !tbaa !901
  %i.ea = icmp eq ptr %i.dy, null
  br i1 %i.ea, label %bb.av, label %_ZN2OT13SortedArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEE9serializeEP22hb_serialize_context_tj.exit.i.i, !prof !267

bb.ae:                                            ; preds = %"_ZNK13hb_map_iter_tI13hb_zip_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EE10hb_array_tIS3_EERK3$_6L24hb_function_sortedness_t1ELPv0EEneERKSD_.exit.i.i"
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %.sroa.7104.0122.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNK9hb_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EERS2_EdeEv.exit.i.i.i.i.thread.i.i, label %_ZNK9hb_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EERS2_EdeEv.exit.i.i.i.i.i.i, !prof !267

_ZNK9hb_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EERS2_EdeEv.exit.i.i.i.i.i.i: ; preds = %bb.ae
  br i1 %i.cw, label %_ZNR9hb_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EERS2_EppEv.exit.i.i.i.i.i.i, label %_ZNK9hb_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EERS2_EdeEv.exit.i.i.i.i.thread.i.thread.i, !prof !525

_ZNK9hb_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EERS2_EdeEv.exit.i.i.i.i.thread.i.thread.i: ; preds = %_ZNK9hb_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EERS2_EdeEv.exit.i.i.i.i.i.i
  store i16 0, ptr @_hb_CrapPool, align 16
  br label %_ZNR9hb_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EERS2_EppEv.exit.i.i.i.i.i.i

_ZNK9hb_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EERS2_EdeEv.exit.i.i.i.i.thread.i.i: ; preds = %bb.ae
  store i16 0, ptr @_hb_CrapPool, align 16
  br i1 %i.cw, label %_ZNR9hb_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EERS2_EppEv.exit.i.i.i.i.i.i, label %bb.af, !prof !672

bb.af:                                            ; preds = %_ZNK9hb_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EERS2_EdeEv.exit.i.i.i.i.thread.i.i
  br label %_ZNR9hb_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EERS2_EppEv.exit.i.i.i.i.i.i

_ZNR9hb_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EERS2_EppEv.exit.i.i.i.i.i.i: ; preds = %bb.af, %_ZNK9hb_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EERS2_EdeEv.exit.i.i.i.i.thread.i.i, %_ZNK9hb_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EERS2_EdeEv.exit.i.i.i.i.thread.i.thread.i, %_ZNK9hb_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EERS2_EdeEv.exit.i.i.i.i.i.i
  %.sroa.0101.1.idx.i.i = phi i64 [ 2, %_ZNK9hb_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EERS2_EdeEv.exit.i.i.i.i.i.i ], [ 0, %_ZNK9hb_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EERS2_EdeEv.exit.i.i.i.i.thread.i.i ], [ 2, %_ZNK9hb_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EERS2_EdeEv.exit.i.i.i.i.thread.i.thread.i ], [ 0, %bb.af ]
  %.not.i.i1.i.i.i.i156.i.i = phi i64 [ 2, %_ZNK9hb_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EERS2_EdeEv.exit.i.i.i.i.i.i ], [ 2, %_ZNK9hb_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EERS2_EdeEv.exit.i.i.i.i.thread.i.i ], [ 0, %_ZNK9hb_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EERS2_EdeEv.exit.i.i.i.i.thread.i.thread.i ], [ 0, %bb.af ]
  %.0.i.i.i.i.i.i154.i.i = phi ptr [ %.sroa.0101.0123.i.i, %_ZNK9hb_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EERS2_EdeEv.exit.i.i.i.i.i.i ], [ @_hb_CrapPool, %_ZNK9hb_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EERS2_EdeEv.exit.i.i.i.i.thread.i.i ], [ %.sroa.0101.0123.i.i, %_ZNK9hb_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EERS2_EdeEv.exit.i.i.i.i.thread.i.thread.i ], [ @_hb_CrapPool, %bb.af ]
  %i.eb = load i16, ptr %.0.i.i.i.i.i.i154.i.i, align 1
  %i.ec = add nsw i32 %.026126.i.i, 1
  %i.ed = tail call noundef i16 @llvm.bswap.i16(i16 %i.eb)
  %i.ee = zext i16 %i.ed to i32                   ; 2 uses
  %.not35.i.i = icmp ne i32 %i.ec, %i.ee
  %i.ef = zext i1 %.not35.i.i to i32
  %spec.select.i.i = add i32 %.028125.i.i, %i.ef  ; 2 uses
  %.sroa.7104.1.i.i = tail call i32 @llvm.usub.sat.i32(i32 %.sroa.7104.0122.i.i, i32 1)
  %.sroa.0101.1.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0101.0123.i.i, i64 %.sroa.0101.1.idx.i.i ; 2 uses
  %.sroa.13108.1.i.i = getelementptr inbounds nuw i8, ptr %.sroa.13108.0121.i.i, i64 %.not.i.i1.i.i.i.i156.i.i
  %.sroa.16110.1.i.i = tail call i32 @llvm.usub.sat.i32(i32 %.sroa.16110.0124.i.i, i32 1)
  %.not.i.i.i.i.i = icmp ne ptr %.sroa.0101.1.i.i, %i.ct
  %i.eg = icmp ugt i32 %.sroa.7104.0122.i.i, 1
  %i.eh = select i1 %.not.i.i.i.i.i, i1 true, i1 %i.eg
  br i1 %i.eh, label %"_ZNK13hb_map_iter_tI13hb_zip_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EE10hb_array_tIS3_EERK3$_6L24hb_function_sortedness_t1ELPv0EEneERKSD_.exit.i.i", label %"_ZNK13hb_map_iter_tI13hb_zip_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EE10hb_array_tIS3_EERK3$_6L24hb_function_sortedness_t1ELPv0EEneERKSD_.exit.thread.i.i"

_ZN2OT13SortedArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEE9serializeEP22hb_serialize_context_tj.exit.i.i: ; preds = %_ZL9hb_memsetPvij.exit.i.i.i.i.i.i
  %.not31.i.i = icmp eq i32 %.028.lcssa.i.i, 0
  %brmerge = or i1 %.not.i.i.i77.i.not43, %.not31.i.i
  br i1 %brmerge, label %"_ZN2OT6Layout6Common8Coverage9serializeI13hb_map_iter_tI13hb_zip_iter_tI17hb_sorted_array_tINS_11HBGlyphID16EE10hb_array_tIS7_EERK3$_6L24hb_function_sortedness_t1ELPv0EETnPN12hb_enable_ifIXaasr15hb_is_source_ofIT_jEE5valuesrSJ_18is_sorted_iteratorEvE4typeELSG_0EEEbP22hb_serialize_context_tSJ_.exit", label %"_ZNK13hb_map_iter_tI13hb_zip_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EE10hb_array_tIS3_EERK3$_6L24hb_function_sortedness_t1ELPv0EEneERKSD_.exit67.i.i"

"_ZNK13hb_map_iter_tI13hb_zip_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EE10hb_array_tIS3_EERK3$_6L24hb_function_sortedness_t1ELPv0EEneERKSD_.exit67.i.i": ; preds = %_ZN2OT13SortedArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEE9serializeEP22hb_serialize_context_tj.exit.i.i, %_ZNR9hb_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EERS2_EppEv.exit.i.i.i.i74.i.i
  %.021136.i.i = phi i32 [ %.2.i.i, %_ZNR9hb_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EERS2_EppEv.exit.i.i.i.i74.i.i ], [ 0, %_ZN2OT13SortedArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEE9serializeEP22hb_serialize_context_tj.exit.i.i ] ; 3 uses
  %.023135.i.i = phi i32 [ %.124.i.i, %_ZNR9hb_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EERS2_EppEv.exit.i.i.i.i74.i.i ], [ -1, %_ZN2OT13SortedArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEE9serializeEP22hb_serialize_context_tj.exit.i.i ] ; 3 uses
  %.025134.i.i = phi i16 [ %i.ex, %_ZNR9hb_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EERS2_EppEv.exit.i.i.i.i74.i.i ], [ 0, %_ZN2OT13SortedArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEE9serializeEP22hb_serialize_context_tj.exit.i.i ] ; 2 uses
  %.127133.i.i = phi i32 [ %i.eo, %_ZNR9hb_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EERS2_EppEv.exit.i.i.i.i74.i.i ], [ -2, %_ZN2OT13SortedArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEE9serializeEP22hb_serialize_context_tj.exit.i.i ] ; 2 uses
  %.sroa.084.0132.i.i = phi ptr [ %.sroa.084.1.i.i, %_ZNR9hb_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EERS2_EppEv.exit.i.i.i.i74.i.i ], [ %.sroa.010.0.copyload, %_ZN2OT13SortedArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEE9serializeEP22hb_serialize_context_tj.exit.i.i ] ; 3 uses
  %.sroa.7.0131.i.i = phi i32 [ %.sroa.7.1.i.i, %_ZNR9hb_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EERS2_EppEv.exit.i.i.i.i74.i.i ], [ %.sroa.4.sroa.0.0.extract.trunc, %_ZN2OT13SortedArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEE9serializeEP22hb_serialize_context_tj.exit.i.i ] ; 3 uses
  %.sroa.13.0130.i.i = phi ptr [ %.sroa.13.1.i.i, %_ZNR9hb_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EERS2_EppEv.exit.i.i.i.i74.i.i ], [ %.sroa.3.0.copyload, %_ZN2OT13SortedArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEE9serializeEP22hb_serialize_context_tj.exit.i.i ] ; 2 uses
  %.sroa.16.0129.i.i = phi i32 [ %.sroa.16.1.i.i, %_ZNR9hb_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EERS2_EppEv.exit.i.i.i.i74.i.i ], [ %.sroa.7.sroa.0.0.extract.trunc, %_ZN2OT13SortedArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEE9serializeEP22hb_serialize_context_tj.exit.i.i ] ; 2 uses
  %.not.i3.i.i66.i.i = icmp ne ptr %.sroa.13.0130.i.i, %i.cv
  %i.ei = icmp ne i32 %.sroa.16.0129.i.i, 0       ; 3 uses
  %i.ej = select i1 %.not.i3.i.i66.i.i, i1 true, i1 %i.ei
  br i1 %i.ej, label %bb.ag, label %"_ZNK13hb_map_iter_tI13hb_zip_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EE10hb_array_tIS3_EERK3$_6L24hb_function_sortedness_t1ELPv0EEneERKSD_.exit67.thread.i.i"

"_ZNK13hb_map_iter_tI13hb_zip_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EE10hb_array_tIS3_EERK3$_6L24hb_function_sortedness_t1ELPv0EEneERKSD_.exit67.thread.i.i": ; preds = %_ZNR9hb_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EERS2_EppEv.exit.i.i.i.i74.i.i, %"_ZNK13hb_map_iter_tI13hb_zip_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EE10hb_array_tIS3_EERK3$_6L24hb_function_sortedness_t1ELPv0EEneERKSD_.exit67.i.i"
  %.021.lcssa.ph.i.i = phi i32 [ %.021136.i.i, %"_ZNK13hb_map_iter_tI13hb_zip_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EE10hb_array_tIS3_EERK3$_6L24hb_function_sortedness_t1ELPv0EEneERKSD_.exit67.i.i" ], [ %.2.i.i, %_ZNR9hb_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EERS2_EppEv.exit.i.i.i.i74.i.i ]
  %i.ek = icmp eq i32 %.021.lcssa.ph.i.i, 0
  br i1 %i.ek, label %"_ZN2OT6Layout6Common8Coverage9serializeI13hb_map_iter_tI13hb_zip_iter_tI17hb_sorted_array_tINS_11HBGlyphID16EE10hb_array_tIS7_EERK3$_6L24hb_function_sortedness_t1ELPv0EETnPN12hb_enable_ifIXaasr15hb_is_source_ofIT_jEE5valuesrSJ_18is_sorted_iteratorEvE4typeELSG_0EEEbP22hb_serialize_context_tSJ_.exit", label %bb.ak, !prof !1837

bb.ag:                                            ; preds = %"_ZNK13hb_map_iter_tI13hb_zip_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EE10hb_array_tIS3_EERK3$_6L24hb_function_sortedness_t1ELPv0EEneERKSD_.exit67.i.i"
  %.not.i.i.i.i.i.i68.not.i.i = icmp ne i32 %.sroa.7.0131.i.i, 0 ; 3 uses
  %brmerge.not.i = select i1 %.not.i.i.i.i.i.i68.not.i.i, i1 %i.ei, i1 false
  br i1 %brmerge.not.i, label %bb.ah, label %_ZNK9hb_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EERS2_EdeEv.exit.i.i.i.i69.thread.i.i, !prof !4434

_ZNK9hb_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EERS2_EdeEv.exit.i.i.i.i69.thread.i.i: ; preds = %bb.ag
  %_hb_CrapPool.mux.i = select i1 %.not.i.i.i.i.i.i68.not.i.i, ptr %.sroa.084.0132.i.i, ptr @_hb_CrapPool, !prof !4435
  store i16 0, ptr @_hb_CrapPool, align 16
  br label %bb.ah

bb.ah:                                            ; preds = %_ZNK9hb_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EERS2_EdeEv.exit.i.i.i.i69.thread.i.i, %bb.ag
  %.0.i.i.i.i.i.i70162.i.i = phi ptr [ %.sroa.084.0132.i.i, %bb.ag ], [ %_hb_CrapPool.mux.i, %_ZNK9hb_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EERS2_EdeEv.exit.i.i.i.i69.thread.i.i ]
  %i.el = load i16, ptr %.0.i.i.i.i.i.i70162.i.i, align 1 ; 3 uses
  %i.em = add nsw i32 %.127133.i.i, 1             ; 2 uses
  %i.en = tail call noundef i16 @llvm.bswap.i16(i16 %i.el)
  %i.eo = zext i16 %i.en to i32                   ; 3 uses
  %.not33.i.i = icmp eq i32 %i.em, %i.eo
  br i1 %.not33.i.i, label %._ZNR9hb_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EERS2_EppEv.exit.i.i.i.i74_crit_edge.i.i, label %bb.ai

._ZNR9hb_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EERS2_EppEv.exit.i.i.i.i74_crit_edge.i.i: ; preds = %bb.ah
  %.pre.i.i = zext i32 %.023135.i.i to i64
  br label %_ZNR9hb_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EERS2_EppEv.exit.i.i.i.i74.i.i

bb.ai:                                            ; preds = %bb.ah
  %.not34.i.i = icmp ne i32 %.127133.i.i, -2
  %i.ep = icmp ugt i32 %i.em, %i.eo
  %or.cond.i.i = and i1 %.not34.i.i, %i.ep
  br i1 %or.cond.i.i, label %bb.aj, label %.critedge.i.i, !prof !956

bb.aj:                                            ; preds = %bb.ai
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.aj, %bb.ai
  %.122.i.i = phi i32 [ 1, %bb.aj ], [ %.021136.i.i, %bb.ai ]
  %i.eq = add i32 %.023135.i.i, 1                 ; 2 uses
  %i.er = zext i32 %i.eq to i64                   ; 2 uses
  %i.es = getelementptr inbounds nuw [6 x i8], ptr %i.cf, i64 %i.er ; 2 uses
  store i16 %i.el, ptr %i.es, align 1
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 4
  %i.eu = tail call i16 @llvm.bswap.i16(i16 %.025134.i.i)
  store i16 %i.eu, ptr %i.et, align 1, !tbaa !280
  br label %_ZNR9hb_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EERS2_EppEv.exit.i.i.i.i74.i.i

_ZNR9hb_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EERS2_EppEv.exit.i.i.i.i74.i.i: ; preds = %.critedge.i.i, %._ZNR9hb_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EERS2_EppEv.exit.i.i.i.i74_crit_edge.i.i
  %.pre-phi.i.i = phi i64 [ %.pre.i.i, %._ZNR9hb_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EERS2_EppEv.exit.i.i.i.i74_crit_edge.i.i ], [ %i.er, %.critedge.i.i ]
  %.124.i.i = phi i32 [ %.023135.i.i, %._ZNR9hb_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EERS2_EppEv.exit.i.i.i.i74_crit_edge.i.i ], [ %i.eq, %.critedge.i.i ]
  %.2.i.i = phi i32 [ %.021136.i.i, %._ZNR9hb_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EERS2_EppEv.exit.i.i.i.i74_crit_edge.i.i ], [ %.122.i.i, %.critedge.i.i ] ; 2 uses
  %i.ev = getelementptr inbounds nuw [6 x i8], ptr %i.a, i64 %.pre-phi.i.i
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 6
  store i16 %i.el, ptr %i.ew, align 1
  %i.ex = add i16 %.025134.i.i, 1
  %.sroa.7.1.i.i = tail call i32 @llvm.usub.sat.i32(i32 %.sroa.7.0131.i.i, i32 1)
  %.sroa.084.1.idx.i.i = select i1 %.not.i.i.i.i.i.i68.not.i.i, i64 2, i64 0, !prof !268
  %.sroa.084.1.i.i = getelementptr inbounds nuw i8, ptr %.sroa.084.0132.i.i, i64 %.sroa.084.1.idx.i.i ; 2 uses
  %.sroa.16.1.i.i = tail call i32 @llvm.usub.sat.i32(i32 %.sroa.16.0129.i.i, i32 1)
  %.sroa.13.1.idx.i.i = select i1 %i.ei, i64 2, i64 0, !prof !268
  %.sroa.13.1.i.i = getelementptr inbounds nuw i8, ptr %.sroa.13.0130.i.i, i64 %.sroa.13.1.idx.i.i
  %.not.i.i.i65.i.i = icmp ne ptr %.sroa.084.1.i.i, %i.ct
  %i.ey = icmp ugt i32 %.sroa.7.0131.i.i, 1
  %i.ez = select i1 %.not.i.i.i65.i.i, i1 true, i1 %i.ey
  br i1 %i.ez, label %"_ZNK13hb_map_iter_tI13hb_zip_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EE10hb_array_tIS3_EERK3$_6L24hb_function_sortedness_t1ELPv0EEneERKSD_.exit67.i.i", label %"_ZNK13hb_map_iter_tI13hb_zip_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EE10hb_array_tIS3_EERK3$_6L24hb_function_sortedness_t1ELPv0EEneERKSD_.exit67.thread.i.i"

bb.ak:                                            ; preds = %"_ZNK13hb_map_iter_tI13hb_zip_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EE10hb_array_tIS3_EERK3$_6L24hb_function_sortedness_t1ELPv0EEneERKSD_.exit67.thread.i.i"
  %i.fa = load i16, ptr %i.d, align 1, !tbaa !283 ; 2 uses
  %.not.i.i34.i = icmp eq i16 %i.fa, 0
  br i1 %.not.i.i34.i, label %"_ZN2OT6Layout6Common8Coverage9serializeI13hb_map_iter_tI13hb_zip_iter_tI17hb_sorted_array_tINS_11HBGlyphID16EE10hb_array_tIS7_EERK3$_6L24hb_function_sortedness_t1ELPv0EETnPN12hb_enable_ifIXaasr15hb_is_source_ofIT_jEE5valuesrSJ_18is_sorted_iteratorEvE4typeELSG_0EEEbP22hb_serialize_context_tSJ_.exit", label %bb.al, !prof !267

bb.al:                                            ; preds = %bb.ak
  %i.fb = tail call noundef i16 @llvm.bswap.i16(i16 %i.fa)
  %i.fc = zext i16 %i.fb to i64
  tail call void @qsort(ptr noundef nonnull %i.cf, i64 noundef range(i64 1, 4294967296) %i.fc, i64 noundef range(i64 0, 4294967296) 6, ptr noundef nonnull @_ZN2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE9cmp_rangeEPKvS6_) #63
  br label %"_ZN2OT6Layout6Common8Coverage9serializeI13hb_map_iter_tI13hb_zip_iter_tI17hb_sorted_array_tINS_11HBGlyphID16EE10hb_array_tIS7_EERK3$_6L24hb_function_sortedness_t1ELPv0EETnPN12hb_enable_ifIXaasr15hb_is_source_ofIT_jEE5valuesrSJ_18is_sorted_iteratorEvE4typeELSG_0EEEbP22hb_serialize_context_tSJ_.exit"

"_ZN2OT6Layout6Common8Coverage9serializeI13hb_map_iter_tI13hb_zip_iter_tI17hb_sorted_array_tINS_11HBGlyphID16EE10hb_array_tIS7_EERK3$_6L24hb_function_sortedness_t1ELPv0EETnPN12hb_enable_ifIXaasr15hb_is_source_ofIT_jEE5valuesrSJ_18is_sorted_iteratorEvE4typeELSG_0EEEbP22hb_serialize_context_tSJ_.exit": ; preds = %"_ZNR9hb_iter_tI13hb_map_iter_tI13hb_zip_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EE10hb_array_tIS4_EERK3$_6L24hb_function_sortedness_t1ELPv0EERS4_EppEv.exit.i.i.i.i", %_ZN2OT13SortedArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEE9serializeEP22hb_serialize_context_tj.exit.i.i, %bb.al, %bb.ak, %"_ZNK13hb_map_iter_tI13hb_zip_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EE10hb_array_tIS3_EERK3$_6L24hb_function_sortedness_t1ELPv0EEneERKSD_.exit67.thread.i.i", %_ZN2OT7ArrayOfINS_11HBGlyphID16ENS_7NumTypeILb1EtLj2EEEE9serializeEP22hb_serialize_context_tjb.exit.preheader.i.i.i.i
  %i.fd = tail call noundef i32 @_ZN22hb_serialize_context_t8pop_packEb(ptr noundef nonnull align 8 dereferenceable(144) %1, i1 noundef zeroext true) ; 2 uses
  %i.fe = load i32, ptr %i.b, align 4, !tbaa !900
  %i.ff = icmp ne i32 %i.fe, 0
  %i.fg = icmp eq i32 %i.fd, 0
  %or.cond.not.i = or i1 %i.fg, %i.ff
  br i1 %or.cond.not.i, label %_ZN22hb_serialize_context_t8add_linkIN2OT8OffsetToINS1_6Layout6Common8CoverageENS1_7NumTypeILb1EtLj2EEEvLb1EEEEEvRT_jNS_8whence_tEj.exit, label %bb.am, !prof !327

bb.am:                                            ; preds = %"_ZN2OT6Layout6Common8Coverage9serializeI13hb_map_iter_tI13hb_zip_iter_tI17hb_sorted_array_tINS_11HBGlyphID16EE10hb_array_tIS7_EERK3$_6L24hb_function_sortedness_t1ELPv0EETnPN12hb_enable_ifIXaasr15hb_is_source_ofIT_jEE5valuesrSJ_18is_sorted_iteratorEvE4typeELSG_0EEEbP22hb_serialize_context_tSJ_.exit"
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !913 ; 4 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 20 ; 3 uses
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !1581 ; 2 uses
  %i.fl = add i32 %i.fk, 1                        ; 5 uses
  %i.fm = icmp slt i32 %i.fl, 0
  br i1 %i.fm, label %bb.ar, label %bb.an, !prof !267

bb.an:                                            ; preds = %bb.am
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  %i.fo = tail call noundef zeroext i1 @_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.fn, i32 noundef %i.fl, i1 noundef zeroext false)
  br i1 %i.fo, label %bb.ao, label %bb.ar, !prof !525

bb.ao:                                            ; preds = %bb.an
  %i.fp = load i32, ptr %i.fj, align 4, !tbaa !1581 ; 3 uses
  %i.fq = icmp ugt i32 %i.fl, %i.fp
  br i1 %i.fq, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %bb.ao
  %i.fr = sub nuw nsw i32 %i.fl, %i.fp
  %i.fs = mul i32 %i.fr, 12                       ; 2 uses
  %.not.i.i.i.i.i.i9 = icmp eq i32 %i.fs, 0
  br i1 %.not.i.i.i.i.i.i9, label %bb.as, label %bb.aq, !prof !267

bb.aq:                                            ; preds = %bb.ap
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fi, i64 24
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !1582
  %i.fv = zext nneg i32 %i.fp to i64
  %i.fw = getelementptr inbounds nuw [12 x i8], ptr %i.fu, i64 %i.fv
  %i.fx = zext i32 %i.fs to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.fw, i8 0, i64 %i.fx, i1 false)
  br label %bb.as

bb.ar:                                            ; preds = %bb.an, %bb.am
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) @_hb_CrapPool, i8 0, i64 12, i1 false)
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i

bb.as:                                            ; preds = %bb.aq, %bb.ap, %bb.ao
  store i32 %i.fl, ptr %i.fj, align 4, !tbaa !1581
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fi, i64 24
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !1582
  %i.ga = zext i32 %i.fk to i64
  %i.gb = getelementptr inbounds nuw [12 x i8], ptr %i.fz, i64 %i.ga
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i

_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i: ; preds = %bb.as, %bb.ar
  %.0.i.i = phi ptr [ @_hb_CrapPool, %bb.ar ], [ %i.gb, %bb.as ] ; 5 uses
  %i.gc = load ptr, ptr %i.fh, align 8, !tbaa !913
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  %i.ge = load i32, ptr %i.gd, align 8, !tbaa !1580
  %i.gf = icmp slt i32 %i.ge, 0
  br i1 %i.gf, label %bb.at, label %bb.au

bb.at:                                            ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i
  %i.gg = load i32, ptr %i.b, align 4, !tbaa !900
  %i.gh = or i32 %i.gg, 1
  store i32 %i.gh, ptr %i.b, align 4, !tbaa !900
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i
  %i.gi = load i32, ptr %.0.i.i, align 4
  %i.gj = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  store i32 %i.fd, ptr %i.gj, align 4, !tbaa !1589
  %i.gk = and i32 %i.gi, -64
  %i.gl = or disjoint i32 %i.gk, 2
  store i32 %i.gl, ptr %.0.i.i, align 4
  %i.gm = load ptr, ptr %i.fh, align 8, !tbaa !913
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !917
  %i.go = ptrtoint ptr %0 to i64
  %i.gp = ptrtoint ptr %i.gn to i64
  %i.gq = sub i64 %i.go, %i.gp
  %i.gr = trunc i64 %i.gq to i32
  %i.gs = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  store i32 %i.gr, ptr %i.gs, align 4, !tbaa !1590
  store i32 2, ptr %.0.i.i, align 4
  br label %_ZN22hb_serialize_context_t8add_linkIN2OT8OffsetToINS1_6Layout6Common8CoverageENS1_7NumTypeILb1EtLj2EEEvLb1EEEEEvRT_jNS_8whence_tEj.exit

.sink.split:                                      ; preds = %bb.aa, %bb.ab, %bb.w, %bb.x, %bb.s, %bb.t, %bb.i, %bb.j, %_ZN22hb_serialize_context_t12check_assignIN2OT7NumTypeILb1EtLj2EEERjEEbRT_OT0_20hb_serialize_error_t.exit.thread.i.i.i.i.i, %bb.m, %bb.n, %bb.b, %bb.c, %_ZN22hb_serialize_context_t12check_assignIN2OT7NumTypeILb1EtLj2EEERjEEbRT_OT0_20hb_serialize_error_t.exit.thread.i.i.i.i
  %.sink = phi i32 [ 4, %bb.w ], [ 4, %bb.b ], [ 4, %bb.m ], [ 4, %bb.s ], [ %i.dl, %_ZN22hb_serialize_context_t12check_assignIN2OT7NumTypeILb1EtLj2EEERjEEbRT_OT0_20hb_serialize_error_t.exit.thread.i.i.i.i ], [ 4, %bb.c ], [ 4, %bb.i ], [ %i.ax, %_ZN22hb_serialize_context_t12check_assignIN2OT7NumTypeILb1EtLj2EEERjEEbRT_OT0_20hb_serialize_error_t.exit.thread.i.i.i.i.i ], [ 4, %bb.j ], [ 4, %bb.n ], [ 4, %bb.t ], [ 4, %bb.x ], [ 4, %bb.ab ], [ 4, %bb.aa ]
  store i32 %.sink, ptr %i.b, align 4, !tbaa !900
  br label %bb.av

bb.av:                                            ; preds = %.sink.split, %_ZL9hb_memsetPvij.exit.i.i.i.i, %bb.a, %_ZL9hb_memsetPvij.exit.i.i.i.i.i.i.i.i, %bb.o, %bb.h, %_ZN22hb_serialize_context_t12check_assignIN2OT7NumTypeILb1EtLj2EEERjEEbRT_OT0_20hb_serialize_error_t.exit.i.i.i.i.i, %_ZL9hb_memsetPvij.exit.i.i.i.i.i.i.i, %bb.r, %_ZL9hb_memsetPvij.exit.i.i.i.i.i, %"_ZNK13hb_map_iter_tI13hb_zip_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EE10hb_array_tIS3_EERK3$_6L24hb_function_sortedness_t1ELPv0EEneERKSD_.exit.thread.i.i", %_ZN22hb_serialize_context_t12check_assignIN2OT7NumTypeILb1EtLj2EEERjEEbRT_OT0_20hb_serialize_error_t.exit.i.i.i.i, %_ZL9hb_memsetPvij.exit.i.i.i.i.i.i
  tail call void @_ZN22hb_serialize_context_t11pop_discardEv(ptr noundef nonnull align 8 dereferenceable(144) %1)
  br label %_ZN22hb_serialize_context_t8add_linkIN2OT8OffsetToINS1_6Layout6Common8CoverageENS1_7NumTypeILb1EtLj2EEEvLb1EEEEEvRT_jNS_8whence_tEj.exit

_ZN22hb_serialize_context_t8add_linkIN2OT8OffsetToINS1_6Layout6Common8CoverageENS1_7NumTypeILb1EtLj2EEEvLb1EEEEEvRT_jNS_8whence_tEj.exit: ; preds = %bb.au, %"_ZN2OT6Layout6Common8Coverage9serializeI13hb_map_iter_tI13hb_zip_iter_tI17hb_sorted_array_tINS_11HBGlyphID16EE10hb_array_tIS7_EERK3$_6L24hb_function_sortedness_t1ELPv0EETnPN12hb_enable_ifIXaasr15hb_is_source_ofIT_jEE5valuesrSJ_18is_sorted_iteratorEvE4typeELSG_0EEEbP22hb_serialize_context_tSJ_.exit", %bb.av
  %.122.i19 = phi i1 [ false, %bb.av ], [ true, %"_ZN2OT6Layout6Common8Coverage9serializeI13hb_map_iter_tI13hb_zip_iter_tI17hb_sorted_array_tINS_11HBGlyphID16EE10hb_array_tIS7_EERK3$_6L24hb_function_sortedness_t1ELPv0EETnPN12hb_enable_ifIXaasr15hb_is_source_ofIT_jEE5valuesrSJ_18is_sorted_iteratorEvE4typeELSG_0EEEbP22hb_serialize_context_tSJ_.exit" ], [ true, %bb.au ]
  ret i1 %.122.i19
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull ptr @_ZN22hb_serialize_context_t4pushIN2OT6Layout6Common8CoverageEEEPT_v(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !900
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %_ZN22hb_serialize_context_t13check_successEb20hb_serialize_error_t.exit, !prof !268

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1572 ; 4 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.c, label %_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9, !prof !267

_ZN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE5allocEv.exit.thread9: ; preds = %bb.b
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !908
  store ptr %i.f, ptr %i.d, align 8, !tbaa !1572
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, i8 0, i64 56, i1 false)
  br label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.i = load i32, ptr %i.h, align 4, !tbaa !1585
  %i.j = add i32 %i.i, 1
  %i.k = tail call noundef zeroext i1 @_ZN11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i32 noundef %i.j, i1 noundef zeroext false)
  br i1 %i.k, label %bb.d, label %bb.f, !prof !268

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #63
  %i.l = tail call noalias noundef dereferenceable_or_null(1792) ptr @malloc(i64 noundef 1792) #65 ; 2 uses
  store ptr %i.l, ptr %i.a, align 8, !tbaa !1576
  %.not5.i = icmp eq ptr %i.l, null
end_hunk_6
begin_hunk_7_@_ZN21hb_sanitize_context_t13sanitize_blobIN2OT4STATEEEP9hb_blob_tS4_:bb.a
  %i.ar = load atomic i8, ptr %i.aq monotonic, align 1, !range !380, !noundef !293
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.m, label %hb_blob_make_immutable.exit

bb.m:                                             ; preds = %bb.l
  store atomic i8 0, ptr %i.aq monotonic, align 1
  br label %hb_blob_make_immutable.exit

bb.n:                                             ; preds = %_ZN21hb_sanitize_context_t14end_processingEv.exit
  br i1 %.not.i.i.i.i, label %hb_blob_make_immutable.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.at = load atomic i32, ptr %1 monotonic, align 4 ; 0 uses
  %i.au = load atomic i32, ptr %1 monotonic, align 4
  %.not.i7.i.i.i10 = icmp eq i32 %i.au, 0
  br i1 %.not.i7.i.i.i10, label %hb_blob_make_immutable.exit, label %_ZL24hb_object_should_destroyI9hb_blob_tEbPT_.exit.i.i, !prof !267

_ZL24hb_object_should_destroyI9hb_blob_tEbPT_.exit.i.i: ; preds = %bb.o
  %i.av = atomicrmw add ptr %1, i32 -1 acq_rel, align 4
  %.not6.i.i.i = icmp eq i32 %i.av, 1
  br i1 %.not6.i.i.i, label %bb.p, label %hb_blob_make_immutable.exit

bb.p:                                             ; preds = %_ZL24hb_object_should_destroyI9hb_blob_tEbPT_.exit.i.i
  store atomic i32 -57005, ptr %1 monotonic, align 4
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ax = load atomic ptr, ptr %i.aw acquire, align 8 ; 5 uses
  %.not.i.i3.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i3.i.i, label %_ZL14hb_object_finiI9hb_blob_tEvPT_.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  tail call void @_ZN17hb_lockable_set_tIN20hb_user_data_array_t19hb_user_data_item_tE10hb_mutex_tE4finiERS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, ptr noundef nonnull align 8 dereferenceable(56) %i.ax)
  %i.az = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(56) %i.ax) #63 ; 0 uses
  tail call void @free(ptr noundef nonnull %i.ax) #63
  store atomic ptr null, ptr %i.aw monotonic, align 8
  br label %_ZL14hb_object_finiI9hb_blob_tEvPT_.exit.i.i.i

_ZL14hb_object_finiI9hb_blob_tEvPT_.exit.i.i.i:   ; preds = %bb.q, %bb.p
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !509 ; 2 uses
  %.not.i.i.i.i.i11 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i.i.i11, label %_ZL17hb_object_destroyI9hb_blob_tEbPT_.exit.i, label %bb.r

bb.r:                                             ; preds = %_ZL14hb_object_finiI9hb_blob_tEvPT_.exit.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !510
  tail call void %i.bb(ptr noundef %i.bd) #63, !inline_history !9
  br label %_ZL17hb_object_destroyI9hb_blob_tEbPT_.exit.i

_ZL17hb_object_destroyI9hb_blob_tEbPT_.exit.i:    ; preds = %bb.r, %_ZL14hb_object_finiI9hb_blob_tEvPT_.exit.i.i.i
  tail call void @free(ptr noundef nonnull %1) #63
  br label %hb_blob_make_immutable.exit

hb_blob_make_immutable.exit:                      ; preds = %_ZL17hb_object_destroyI9hb_blob_tEbPT_.exit.i, %_ZL24hb_object_should_destroyI9hb_blob_tEbPT_.exit.i.i, %bb.o, %bb.n, %bb.m, %bb.l, %bb.f
  %.1 = phi ptr [ %1, %bb.f ], [ %1, %bb.m ], [ %1, %bb.l ], [ @_hb_NullPool, %bb.n ], [ @_hb_NullPool, %bb.o ], [ @_hb_NullPool, %_ZL24hb_object_should_destroyI9hb_blob_tEbPT_.exit.i.i ], [ @_hb_NullPool, %_ZL17hb_object_destroyI9hb_blob_tEbPT_.exit.i ]
  ret ptr %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2OT4STAT8sanitizeEP21hb_sanitize_context_t(ptr noundef nonnull align 1 dereferenceable(20) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !505
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !506
  %i.j = zext i32 %i.i to i64
  %.not13 = icmp ugt i64 %i.g, %i.j
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #63
  br i1 %.not13, label %_ZNK2OT8OffsetToINS_14UnsizedArrayOfINS_14StatAxisRecordEEENS_7NumTypeILb1EjLj4EEEvLb0EE8sanitizeIJRKNS4_ILb1EtLj2EEEEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread, label %bb.b, !prof !267

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.l = load i16, ptr %0, align 1, !tbaa !283
  %i.m = icmp eq i16 %i.l, 256
  br i1 %i.m, label %bb.c, label %_ZNK2OT8OffsetToINS_14UnsizedArrayOfINS_14StatAxisRecordEEENS_7NumTypeILb1EjLj4EEEvLb0EE8sanitizeIJRKNS4_ILb1EtLj2EEEEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread, !prof !268

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.o = load i16, ptr %i.n, align 1, !tbaa !283
  %.not = icmp eq i16 %i.o, 0
  br i1 %.not, label %_ZNK2OT8OffsetToINS_14UnsizedArrayOfINS_14StatAxisRecordEEENS_7NumTypeILb1EjLj4EEEvLb0EE8sanitizeIJRKNS4_ILb1EtLj2EEEEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread, label %bb.d, !prof !267

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !505
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = load i32, ptr %i.h, align 8, !tbaa !506
  %i.v = zext i32 %i.u to i64
  %.not.i.not = icmp ugt i64 %i.t, %i.v
  br i1 %.not.i.not, label %_ZNK2OT8OffsetToINS_14UnsizedArrayOfINS_14StatAxisRecordEEENS_7NumTypeILb1EjLj4EEEvLb0EE8sanitizeIJRKNS4_ILb1EtLj2EEEEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread, label %bb.e, !prof !267

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 6
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.y = load i32, ptr %i.w, align 1, !tbaa !278
  %i.z = tail call noundef i32 @llvm.bswap.i32(i32 %i.y)
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 %i.aa
  %i.ac = load i16, ptr %i.x, align 1, !tbaa !283
  %i.ad = tail call noundef i16 @llvm.bswap.i16(i16 %i.ac)
  %i.ae = zext i16 %i.ad to i32
  %i.af = shl nuw nsw i32 %i.ae, 3                ; 2 uses
  %i.ag = load ptr, ptr %i.c, align 8, !tbaa !505
  %i.ah = ptrtoint ptr %i.ab to i64               ; 2 uses
  %i.ai = ptrtoint ptr %i.ag to i64               ; 2 uses
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = load i32, ptr %i.h, align 8, !tbaa !506
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %.not.i.i.i.i.i.i = icmp ugt i64 %i.aj, %i.al
  br i1 %.not.i.i.i.i.i.i, label %_ZNK2OT8OffsetToINS_14UnsizedArrayOfINS_14StatAxisRecordEEENS_7NumTypeILb1EjLj4EEEvLb0EE8sanitizeIJRKNS4_ILb1EtLj2EEEEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread, label %bb.f, !prof !711

bb.f:                                             ; preds = %bb.e
  %i.am = load ptr, ptr %i.k, align 8, !tbaa !504
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = sub i64 %i.an, %i.ah
  %i.ap = trunc i64 %i.ao to i32
  %.not12.i.i.i.i.i.i = icmp ugt i32 %i.af, %i.ap
  br i1 %.not12.i.i.i.i.i.i, label %_ZNK2OT8OffsetToINS_14UnsizedArrayOfINS_14StatAxisRecordEEENS_7NumTypeILb1EjLj4EEEvLb0EE8sanitizeIJRKNS4_ILb1EtLj2EEEEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread, label %_ZNK2OT8OffsetToINS_14UnsizedArrayOfINS_14StatAxisRecordEEENS_7NumTypeILb1EjLj4EEEvLb0EE8sanitizeIJRKNS4_ILb1EtLj2EEEEEEbP21hb_sanitize_context_tPKvDpOT_.exit, !prof !711

_ZNK2OT8OffsetToINS_14UnsizedArrayOfINS_14StatAxisRecordEEENS_7NumTypeILb1EjLj4EEEvLb0EE8sanitizeIJRKNS4_ILb1EtLj2EEEEEEbP21hb_sanitize_context_tPKvDpOT_.exit: ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 4 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !508
  %i.as = sub i32 %i.ar, %i.af                    ; 2 uses
  store i32 %i.as, ptr %i.aq, align 4, !tbaa !508
  %i.at = icmp sgt i32 %i.as, 0
  br i1 %i.at, label %bb.g, label %_ZNK2OT8OffsetToINS_14UnsizedArrayOfINS_14StatAxisRecordEEENS_7NumTypeILb1EjLj4EEEvLb0EE8sanitizeIJRKNS4_ILb1EtLj2EEEEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread, !prof !672

bb.g:                                             ; preds = %_ZNK2OT8OffsetToINS_14UnsizedArrayOfINS_14StatAxisRecordEEENS_7NumTypeILb1EjLj4EEEvLb0EE8sanitizeIJRKNS4_ILb1EtLj2EEEEEEbP21hb_sanitize_context_tPKvDpOT_.exit
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 14 ; 2 uses
  %i.av = load i32, ptr %i.au, align 1, !tbaa !278
  %i.aw = tail call noundef i32 @llvm.bswap.i32(i32 %i.av)
  %i.ax = zext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 %i.ax
  store ptr %i.ay, ptr %i.a, align 8, !tbaa !1927
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = sub i64 %i.ba, %i.ai
  %.not.i4.not = icmp ugt i64 %i.bb, %i.al
  br i1 %.not.i4.not, label %_ZNK2OT8OffsetToINS_14UnsizedArrayOfINS_14StatAxisRecordEEENS_7NumTypeILb1EjLj4EEEvLb0EE8sanitizeIJRKNS4_ILb1EtLj2EEEEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread, label %bb.h, !prof !267

bb.h:                                             ; preds = %bb.g
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.bc = load i32, ptr %i.au, align 1, !tbaa !278
  %i.bd = tail call noundef i32 @llvm.bswap.i32(i32 %i.bc)
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 %i.be ; 2 uses
  %i.bg = load i16, ptr %i.p, align 1, !tbaa !283 ; 2 uses
  %i.bh = tail call noundef i16 @llvm.bswap.i16(i16 %i.bg) ; 2 uses
  %i.bi = zext i16 %i.bh to i32
  %i.bj = shl nuw nsw i32 %i.bi, 1                ; 2 uses
  %i.bk = load ptr, ptr %i.c, align 8, !tbaa !505
  %i.bl = ptrtoint ptr %i.bf to i64               ; 2 uses
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = load i32, ptr %i.h, align 8, !tbaa !506
  %i.bp = zext i32 %i.bo to i64
  %.not.i.i.i.i.i.i5 = icmp ugt i64 %i.bn, %i.bp
  br i1 %.not.i.i.i.i.i.i5, label %_ZNK2OT8OffsetToINS_14UnsizedArrayOfINS_14StatAxisRecordEEENS_7NumTypeILb1EjLj4EEEvLb0EE8sanitizeIJRKNS4_ILb1EtLj2EEEEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread, label %bb.i, !prof !711

bb.i:                                             ; preds = %bb.h
  %i.bq = load ptr, ptr %i.k, align 8, !tbaa !504
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = sub i64 %i.br, %i.bl
  %i.bt = trunc i64 %i.bs to i32
  %.not12.i.i.i.i.i.i6 = icmp ugt i32 %i.bj, %i.bt
  br i1 %.not12.i.i.i.i.i.i6, label %_ZNK2OT8OffsetToINS_14UnsizedArrayOfINS_14StatAxisRecordEEENS_7NumTypeILb1EjLj4EEEvLb0EE8sanitizeIJRKNS4_ILb1EtLj2EEEEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread, label %_ZNK2OT14UnsizedArrayOfINS_8OffsetToINS_9AxisValueENS_7NumTypeILb1EtLj2EEEvLb1EEEE16sanitize_shallowEP21hb_sanitize_context_tj.exit.i.i, !prof !711

_ZNK2OT14UnsizedArrayOfINS_8OffsetToINS_9AxisValueENS_7NumTypeILb1EtLj2EEEvLb1EEEE16sanitize_shallowEP21hb_sanitize_context_tj.exit.i.i: ; preds = %bb.i
  %i.bu = load i32, ptr %i.aq, align 4, !tbaa !508
  %i.bv = sub i32 %i.bu, %i.bj                    ; 2 uses
  store i32 %i.bv, ptr %i.aq, align 4, !tbaa !508
  %i.bw = icmp sgt i32 %i.bv, 0
  br i1 %i.bw, label %bb.j, label %_ZNK2OT8OffsetToINS_14UnsizedArrayOfINS_14StatAxisRecordEEENS_7NumTypeILb1EjLj4EEEvLb0EE8sanitizeIJRKNS4_ILb1EtLj2EEEEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread, !prof !672

bb.j:                                             ; preds = %_ZNK2OT14UnsizedArrayOfINS_8OffsetToINS_9AxisValueENS_7NumTypeILb1EtLj2EEEvLb1EEEE16sanitize_shallowEP21hb_sanitize_context_tj.exit.i.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %.not.i6.not.i.i = icmp eq i16 %i.bg, 0
  br i1 %.not.i6.not.i.i, label %_ZNK2OT8OffsetToINS_14UnsizedArrayOfINS_14StatAxisRecordEEENS_7NumTypeILb1EjLj4EEEvLb0EE8sanitizeIJRKNS4_ILb1EtLj2EEEEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.j
  %wide.trip.count.i.i = zext i16 %i.bh to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %i.bf, i64 %indvars.iv.i.i
  %i.by = call noundef zeroext i1 @_ZN21hb_sanitize_context_t9_dispatchIN2OT8OffsetToINS1_9AxisValueENS1_7NumTypeILb1EtLj2EEEvLb1EEEJPKNS1_20AxisValueOffsetArrayEEEEDTcldtfp_8sanitizefpTspclsr3stdE7forwardIT0_Efp1_EEERKT_11hb_priorityILj1EEDpOSA_(ptr noundef nonnull align 8 dereferenceable(62) %1, ptr noundef nonnull align 1 dereferenceable(2) %i.bx, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp ne i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  %or.cond.not = select i1 %i.by, i1 %exitcond.not.i.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i.i, label %_ZNK2OT8OffsetToINS_14UnsizedArrayOfINS_14StatAxisRecordEEENS_7NumTypeILb1EjLj4EEEvLb0EE8sanitizeIJRKNS4_ILb1EtLj2EEEEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread, !prof !704, !llvm.loop !5450

_ZNK2OT8OffsetToINS_14UnsizedArrayOfINS_14StatAxisRecordEEENS_7NumTypeILb1EjLj4EEEvLb0EE8sanitizeIJRKNS4_ILb1EtLj2EEEEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread: ; preds = %.lr.ph.i.i, %bb.g, %bb.h, %bb.i, %_ZNK2OT14UnsizedArrayOfINS_8OffsetToINS_9AxisValueENS_7NumTypeILb1EtLj2EEEvLb1EEEE16sanitize_shallowEP21hb_sanitize_context_tj.exit.i.i, %bb.j, %bb.f, %bb.e, %bb.d, %_ZNK2OT8OffsetToINS_14UnsizedArrayOfINS_14StatAxisRecordEEENS_7NumTypeILb1EjLj4EEEvLb0EE8sanitizeIJRKNS4_ILb1EtLj2EEEEEEbP21hb_sanitize_context_tPKvDpOT_.exit, %bb.c, %bb.b, %bb.a
  %i.bz = phi i1 [ false, %_ZNK2OT8OffsetToINS_14UnsizedArrayOfINS_14StatAxisRecordEEENS_7NumTypeILb1EjLj4EEEvLb0EE8sanitizeIJRKNS4_ILb1EtLj2EEEEEEbP21hb_sanitize_context_tPKvDpOT_.exit ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.f ], [ false, %bb.a ], [ false, %bb.d ], [ false, %bb.e ], [ false, %bb.g ], [ false, %bb.h ], [ false, %_ZNK2OT14UnsizedArrayOfINS_8OffsetToINS_9AxisValueENS_7NumTypeILb1EtLj2EEEvLb1EEEE16sanitize_shallowEP21hb_sanitize_context_tj.exit.i.i ], [ false, %bb.i ], [ true, %bb.j ], [ %i.by, %.lr.ph.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #63
  ret i1 %i.bz
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN21hb_sanitize_context_t9_dispatchIN2OT8OffsetToINS1_9AxisValueENS1_7NumTypeILb1EtLj2EEEvLb1EEEJPKNS1_20AxisValueOffsetArrayEEEEDTcldtfp_8sanitizefpTspclsr3stdE7forwardIT0_Efp1_EEERKT_11hb_priorityILj1EEDpOSA_(ptr noundef nonnull align 8 dereferenceable(62) %0, ptr noundef nonnull align 1 dereferenceable(2) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !1927
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !505
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !506
  %i.j = zext i32 %i.i to i64
  %.not.i.not = icmp ugt i64 %i.g, %i.j
  br i1 %.not.i.not, label %_ZNK2OT8OffsetToINS_9AxisValueENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit, label %bb.b, !prof !267

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.k = load i16, ptr %1, align 1, !tbaa !283    ; 2 uses
  %i.l = icmp eq i16 %i.k, 0
  br i1 %i.l, label %_ZNK2OT8OffsetToINS_9AxisValueENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = tail call noundef i16 @llvm.bswap.i16(i16 %i.k)
  %i.n = zext i16 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.n ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 2 ; 2 uses
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !505
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = load i32, ptr %i.h, align 8, !tbaa !506
  %i.v = zext i32 %i.u to i64
  %.not.i.i.i = icmp ugt i64 %i.t, %i.v
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  br i1 %.not.i.i.i, label %_ZNK2OT8OffsetToINS_9AxisValueENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit, label %bb.d, !prof !267

bb.d:                                             ; preds = %bb.c
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.x = load i16, ptr %i.o, align 1, !tbaa !283
  %i.y = tail call noundef i16 @llvm.bswap.i16(i16 %i.x)
  switch i16 %i.y, label %_ZNK2OT8OffsetToINS_9AxisValueENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit [
    i16 1, label %bb.e
    i16 2, label %bb.f
    i16 3, label %bb.g
    i16 4, label %bb.h
  ]

bb.e:                                             ; preds = %bb.d
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %i.aa = load ptr, ptr %i.c, align 8, !tbaa !505
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = load i32, ptr %i.h, align 8, !tbaa !506
  %i.af = zext i32 %i.ae to i64
  %i.ag = icmp ule i64 %i.ad, %i.af
  br label %_ZNK2OT8OffsetToINS_9AxisValueENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit

bb.f:                                             ; preds = %bb.d
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.ah = getelementptr inbounds nuw i8, ptr %i.o, i64 20
  %i.ai = load ptr, ptr %i.c, align 8, !tbaa !505
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = load i32, ptr %i.h, align 8, !tbaa !506
  %i.an = zext i32 %i.am to i64
  %i.ao = icmp ule i64 %i.al, %i.an
  br label %_ZNK2OT8OffsetToINS_9AxisValueENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit

bb.g:                                             ; preds = %bb.d
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.ap = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.aq = load ptr, ptr %i.c, align 8, !tbaa !505
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = load i32, ptr %i.h, align 8, !tbaa !506
  %i.av = zext i32 %i.au to i64
  %i.aw = icmp ule i64 %i.at, %i.av
  br label %_ZNK2OT8OffsetToINS_9AxisValueENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit

bb.h:                                             ; preds = %bb.d
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.ax = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ay = load ptr, ptr %i.c, align 8, !tbaa !505
  %i.az = ptrtoint ptr %i.ax to i64               ; 3 uses
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = load i32, ptr %i.h, align 8, !tbaa !506
  %i.bd = zext i32 %i.bc to i64
  %.not.i.i.i.i = icmp ugt i64 %i.bb, %i.bd
  br i1 %.not.i.i.i.i, label %_ZNK2OT8OffsetToINS_9AxisValueENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit, label %bb.i, !prof !267

bb.i:                                             ; preds = %bb.h
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.be = load i16, ptr %i.p, align 1, !tbaa !283
  %i.bf = tail call noundef i16 @llvm.bswap.i16(i16 %i.be)
  %i.bg = zext i16 %i.bf to i32
  %i.bh = mul nuw nsw i32 %i.bg, 6                ; 2 uses
  %i.bi = load ptr, ptr %i.c, align 8, !tbaa !505
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = sub i64 %i.az, %i.bj
  %i.bl = load i32, ptr %i.h, align 8, !tbaa !506
  %i.bm = zext i32 %i.bl to i64
  %.not.i.i.i.i.i.i.i.i = icmp ugt i64 %i.bk, %i.bm
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNK2OT8OffsetToINS_9AxisValueENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit, label %bb.j, !prof !711

bb.j:                                             ; preds = %bb.i
  %i.bn = load ptr, ptr %i.w, align 8, !tbaa !504
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = sub i64 %i.bo, %i.az
  %i.bq = trunc i64 %i.bp to i32
  %.not12.i.i.i.i.i.i.i.i = icmp ugt i32 %i.bh, %i.bq
  br i1 %.not12.i.i.i.i.i.i.i.i, label %_ZNK2OT8OffsetToINS_9AxisValueENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit, label %_ZNK2OT14UnsizedArrayOfINS_15AxisValueRecordEE16sanitize_shallowEP21hb_sanitize_context_tj.exit.i.i.i.i, !prof !711

_ZNK2OT14UnsizedArrayOfINS_15AxisValueRecordEE16sanitize_shallowEP21hb_sanitize_context_tj.exit.i.i.i.i: ; preds = %bb.j
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !508
  %i.bt = sub i32 %i.bs, %i.bh                    ; 2 uses
  store i32 %i.bt, ptr %i.br, align 4, !tbaa !508
  %i.bu = icmp sgt i32 %i.bt, 0
  br label %_ZNK2OT8OffsetToINS_9AxisValueENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit

_ZNK2OT8OffsetToINS_9AxisValueENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit: ; preds = %_ZNK2OT14UnsizedArrayOfINS_15AxisValueRecordEE16sanitize_shallowEP21hb_sanitize_context_tj.exit.i.i.i.i, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.a, %bb.b
  %i.bv = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ true, %bb.d ], [ false, %bb.c ], [ %i.ag, %bb.e ], [ %i.ao, %bb.f ], [ %i.aw, %bb.g ], [ false, %bb.h ], [ false, %bb.i ], [ %i.bu, %_ZNK2OT14UnsizedArrayOfINS_15AxisValueRecordEE16sanitize_shallowEP21hb_sanitize_context_tj.exit.i.i.i.i ], [ false, %bb.j ]
  ret i1 %i.bv
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK17hb_data_wrapper_tI9hb_face_tLj29EE11call_createIN3AAT18morx_accelerator_tE21hb_face_lazy_loader_tIS4_Lj29EEEEPT_v(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -232
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !266
  %i.c = tail call noalias noundef dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #64 ; 3 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZN16hb_lazy_loader_tIN3AAT18morx_accelerator_tE21hb_face_lazy_loader_tIS1_Lj29EE9hb_face_tLj29ES1_E6createEPS4_.exit, label %bb.b, !prof !267

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3AAT8mortmorxINS_4morxENS_13ExtendedTypesELj1836020344EE13accelerator_tC2EP9hb_face_t(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef %i.b)
  br label %_ZN16hb_lazy_loader_tIN3AAT18morx_accelerator_tE21hb_face_lazy_loader_tIS1_Lj29EE9hb_face_tLj29ES1_E6createEPS4_.exit

_ZN16hb_lazy_loader_tIN3AAT18morx_accelerator_tE21hb_face_lazy_loader_tIS1_Lj29EE9hb_face_tLj29ES1_E6createEPS4_.exit: ; preds = %bb.a, %bb.b
  ret ptr %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN16hb_lazy_loader_tIN3AAT18morx_accelerator_tE21hb_face_lazy_loader_tIS1_Lj29EE9hb_face_tLj29ES1_E10do_destroyEPS1_(ptr noundef %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, null
  %.not3 = icmp eq ptr %0, @_hb_NullPool
  %or.cond = or i1 %.not, %.not3
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3AAT8mortmorxINS_4morxENS_13ExtendedTypesELj1836020344EE13accelerator_tD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #63
  tail call void @free(ptr noundef nonnull %0) #63
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3AAT8mortmorxINS_4morxENS_13ExtendedTypesELj1836020344EE13accelerator_tC2EP9hb_face_t(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %struct.hb_sanitize_context_t, align 8 ; 9 uses
  store ptr null, ptr %0, align 8, !tbaa !272
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.a, align 8, !tbaa !1928
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #63
  store i32 0, ptr %2, align 8, !tbaa !495
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  store ptr null, ptr %i.c, align 8, !tbaa !496
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.b, i8 0, i64 33, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 61
  store i8 0, ptr %i.f, align 1, !tbaa !499
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load atomic i32, ptr %i.g monotonic, align 4 ; 2 uses
  %i.i = icmp eq i32 %i.h, -1
  br i1 %i.i, label %bb.b, label %bb.c, !prof !267

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef i32 @_ZNK9hb_face_t15load_num_glyphsEv(ptr noundef nonnull align 8 dereferenceable(448) %1), !inline_history !152
  br label %bb.c

end_hunk_7
begin_hunk_8_@_ZNK3AAT13LookupFormat2IN2OT8OffsetToINS1_7ArrayOfINS_6AnchorENS1_7NumTypeILb1EjLj4EEEEENS5_ILb1EtLj2EEEvLb0EEEE8sanitizeEP21hb_sanitize_context_tPKv:bb.a
  %i.bz = load i32, ptr %i.h, align 8, !tbaa !506
  %i.ca = zext i32 %i.bz to i64
  %.not.i6 = icmp ugt i64 %i.by, %i.ca
  br i1 %.not.i6, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT19LookupSegmentSingleINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE8sanitizeIJRPKvEEEbP21hb_sanitize_context_tDpOT_.exit, label %bb.l, !prof !327

bb.l:                                             ; preds = %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT19LookupSegmentSingleINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEEixEi.exit
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.i5, i64 4
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.cc = load i16, ptr %i.cb, align 1, !tbaa !283
  %i.cd = tail call noundef i16 @llvm.bswap.i16(i16 %i.cc)
  %i.ce = zext i16 %i.cd to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 %i.ce ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  %i.ch = load ptr, ptr %i.c, align 8, !tbaa !505
  %i.ci = ptrtoint ptr %i.cg to i64               ; 3 uses
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = sub i64 %i.ci, %i.cj
  %i.cl = load i32, ptr %i.h, align 8, !tbaa !506
  %i.cm = zext i32 %i.cl to i64
  %.not.i.i.i.i = icmp ugt i64 %i.ck, %i.cm
  br i1 %.not.i.i.i.i, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT19LookupSegmentSingleINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE8sanitizeIJRPKvEEEbP21hb_sanitize_context_tDpOT_.exit, label %bb.m, !prof !711

bb.m:                                             ; preds = %bb.l
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.cn = load i32, ptr %i.cf, align 1, !tbaa !278
  %i.co = tail call noundef i32 @llvm.bswap.i32(i32 %i.cn) ; 2 uses
  %i.cp = shl nuw i32 %i.co, 2                    ; 2 uses
  %i.cq = icmp ugt i32 %i.co, 1073741823
  br i1 %i.cq, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT19LookupSegmentSingleINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE8sanitizeIJRPKvEEEbP21hb_sanitize_context_tDpOT_.exit, label %bb.n, !prof !267

bb.n:                                             ; preds = %bb.m
  %i.cr = load ptr, ptr %i.c, align 8, !tbaa !505
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = sub i64 %i.ci, %i.cs
  %i.cu = load i32, ptr %i.h, align 8, !tbaa !506
  %i.cv = zext i32 %i.cu to i64
  %.not.i.i.i.i.i.i = icmp ugt i64 %i.ct, %i.cv
  br i1 %.not.i.i.i.i.i.i, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT19LookupSegmentSingleINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE8sanitizeIJRPKvEEEbP21hb_sanitize_context_tDpOT_.exit, label %bb.o, !prof !711

bb.o:                                             ; preds = %bb.n
  %i.cw = load ptr, ptr %i.y, align 8, !tbaa !504
  %i.cx = ptrtoint ptr %i.cw to i64
  %i.cy = sub i64 %i.cx, %i.ci
  %i.cz = trunc i64 %i.cy to i32
  %.not12.i.i.i.i.i.i = icmp ugt i32 %i.cp, %i.cz
  br i1 %.not12.i.i.i.i.i.i, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT19LookupSegmentSingleINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE8sanitizeIJRPKvEEEbP21hb_sanitize_context_tDpOT_.exit, label %_ZNK3AAT19LookupSegmentSingleIN2OT8OffsetToINS1_7ArrayOfINS_6AnchorENS1_7NumTypeILb1EjLj4EEEEENS5_ILb1EtLj2EEEvLb0EEEE8sanitizeEP21hb_sanitize_context_tPKv.exit, !prof !711

_ZNK3AAT19LookupSegmentSingleIN2OT8OffsetToINS1_7ArrayOfINS_6AnchorENS1_7NumTypeILb1EjLj4EEEEENS5_ILb1EtLj2EEEvLb0EEEE8sanitizeEP21hb_sanitize_context_tPKv.exit: ; preds = %bb.o
  %i.da = load i32, ptr %i.ad, align 4, !tbaa !508
  %i.db = sub i32 %i.da, %i.cp                    ; 2 uses
  store i32 %i.db, ptr %i.ad, align 4, !tbaa !508
  %i.dc = icmp sgt i32 %i.db, 0
  br i1 %i.dc, label %bb.h, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT19LookupSegmentSingleINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE8sanitizeIJRPKvEEEbP21hb_sanitize_context_tDpOT_.exit, !prof !672

_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT19LookupSegmentSingleINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE8sanitizeIJRPKvEEEbP21hb_sanitize_context_tDpOT_.exit: ; preds = %bb.h, %_ZNK3AAT19LookupSegmentSingleIN2OT8OffsetToINS1_7ArrayOfINS_6AnchorENS1_7NumTypeILb1EjLj4EEEEENS5_ILb1EtLj2EEEvLb0EEEE8sanitizeEP21hb_sanitize_context_tPKv.exit, %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT19LookupSegmentSingleINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEEixEi.exit, %bb.o, %bb.n, %bb.l, %bb.m, %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT19LookupSegmentSingleINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE10get_lengthEv.exit, %bb.c, %bb.d, %bb.a, %bb.b, %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT19LookupSegmentSingleINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE16sanitize_shallowEP21hb_sanitize_context_t.exit
  %.2.i = phi i1 [ false, %bb.c ], [ false, %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT19LookupSegmentSingleINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE16sanitize_shallowEP21hb_sanitize_context_t.exit ], [ false, %bb.d ], [ false, %bb.b ], [ false, %bb.a ], [ true, %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT19LookupSegmentSingleINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE10get_lengthEv.exit ], [ false, %bb.l ], [ false, %bb.n ], [ false, %bb.o ], [ false, %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT19LookupSegmentSingleINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEEixEi.exit ], [ false, %_ZNK3AAT19LookupSegmentSingleIN2OT8OffsetToINS1_7ArrayOfINS_6AnchorENS1_7NumTypeILb1EjLj4EEEEENS5_ILb1EtLj2EEEvLb0EEEE8sanitizeEP21hb_sanitize_context_tPKv.exit ], [ true, %bb.h ], [ false, %bb.m ]
  ret i1 %.2.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK3AAT13LookupFormat4IN2OT8OffsetToINS1_7ArrayOfINS_6AnchorENS1_7NumTypeILb1EjLj4EEEEENS5_ILb1EtLj2EEEvLb0EEEE8sanitizeEP21hb_sanitize_context_tPKv(ptr noundef nonnull align 1 dereferenceable(13) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  store ptr %2, ptr %i.a, align 8, !tbaa !330
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !505
  %i.f = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !506
  %i.k = zext i32 %i.j to i64
  %.not.i2 = icmp ugt i64 %i.h, %i.k
  br i1 %.not.i2, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE8sanitizeIJPKNS1_13LookupFormat4ISA_EERPKvEEEbP21hb_sanitize_context_tDpOT_.exit, label %bb.b, !prof !711

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.l = load i16, ptr %i.b, align 1, !tbaa !283
  %i.m = tail call noundef i16 @llvm.bswap.i16(i16 %i.l) ; 2 uses
  %i.n = icmp ugt i16 %i.m, 5
  br i1 %i.n, label %bb.c, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE8sanitizeIJPKNS1_13LookupFormat4ISA_EERPKvEEEbP21hb_sanitize_context_tDpOT_.exit, !prof !525

bb.c:                                             ; preds = %bb.b
  %i.o = zext i16 %i.m to i32
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.q = load i16, ptr %i.p, align 1, !tbaa !283
  %i.r = tail call noundef i16 @llvm.bswap.i16(i16 %i.q)
  %i.s = zext i16 %i.r to i32
  %i.t = mul nuw i32 %i.s, %i.o                   ; 2 uses
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !505
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.f, %i.v
  %i.x = load i32, ptr %i.i, align 8, !tbaa !506
  %i.y = zext i32 %i.x to i64
  %.not.i.i.i = icmp ugt i64 %i.w, %i.y
  br i1 %.not.i.i.i, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE8sanitizeIJPKNS1_13LookupFormat4ISA_EERPKvEEEbP21hb_sanitize_context_tDpOT_.exit, label %bb.d, !prof !711

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !504
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %i.f
  %i.ad = trunc i64 %i.ac to i32
  %.not12.i.i.i = icmp ugt i32 %i.t, %i.ad
  br i1 %.not12.i.i.i, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE8sanitizeIJPKNS1_13LookupFormat4ISA_EERPKvEEEbP21hb_sanitize_context_tDpOT_.exit, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE16sanitize_shallowEP21hb_sanitize_context_t.exit, !prof !711

_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE16sanitize_shallowEP21hb_sanitize_context_t.exit: ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !508
  %i.ag = sub i32 %i.af, %i.t                     ; 2 uses
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !508
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %bb.e, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE8sanitizeIJPKNS1_13LookupFormat4ISA_EERPKvEEEbP21hb_sanitize_context_tDpOT_.exit, !prof !672

bb.e:                                             ; preds = %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE16sanitize_shallowEP21hb_sanitize_context_t.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.ai = load i16, ptr %i.p, align 1, !tbaa !283 ; 2 uses
  %i.aj = tail call noundef i16 @llvm.bswap.i16(i16 %i.ai) ; 2 uses
  %.not.i.i = icmp eq i16 %i.ai, 0
  br i1 %.not.i.i, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE10get_lengthEv.exit, label %bb.f, !prof !267

bb.f:                                             ; preds = %bb.e
  %i.ak = zext i16 %i.aj to i64
  %i.al = add nuw nsw i64 %i.ak, 4294967295
  %i.am = load i16, ptr %i.b, align 1, !tbaa !283
  %i.an = tail call noundef i16 @llvm.bswap.i16(i16 %i.am)
  %i.ao = zext i16 %i.an to i64
  %i.ap = mul nuw nsw i64 %i.al, %i.ao
  %i.aq = and i64 %i.ap, 4294967295
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.aq ; 2 uses
  %i.as = load i16, ptr %i.ar, align 1, !tbaa !283
  %.not9.i.i = icmp eq i16 %i.as, -1
  br i1 %.not9.i.i, label %bb.g, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE10get_lengthEv.exit

bb.g:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 2
  %i.au = load i16, ptr %i.at, align 1, !tbaa !283
  %.not9.1.i.i = icmp eq i16 %i.au, -1
  %i.av = sext i1 %.not9.1.i.i to i32
  br label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE10get_lengthEv.exit

_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE10get_lengthEv.exit: ; preds = %bb.e, %bb.f, %bb.g
  %.2.i.i = phi i32 [ 0, %bb.e ], [ 0, %bb.f ], [ %i.av, %bb.g ]
  %i.aw = zext i16 %i.aj to i32
  %i.ax = add nsw i32 %.2.i.i, %i.aw              ; 2 uses
  %.not.i10.not = icmp eq i32 %i.ax, 0
  br i1 %.not.i10.not, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE8sanitizeIJPKNS1_13LookupFormat4ISA_EERPKvEEEbP21hb_sanitize_context_tDpOT_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE10get_lengthEv.exit, %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEEixEi.exit
  %.0.i11 = phi i32 [ %i.bv, %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEEixEi.exit ], [ 0, %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE10get_lengthEv.exit ] ; 3 uses
  %i.ay = load i16, ptr %i.p, align 1, !tbaa !283 ; 2 uses
  %i.az = call noundef i16 @llvm.bswap.i16(i16 %i.ay) ; 2 uses
  %.not.i.i.i3 = icmp eq i16 %i.ay, 0
  br i1 %.not.i.i.i3, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE10get_lengthEv.exit.i, label %bb.h, !prof !267

bb.h:                                             ; preds = %.lr.ph
  %i.ba = zext i16 %i.az to i64
  %i.bb = add nuw nsw i64 %i.ba, 4294967295
  %i.bc = load i16, ptr %i.b, align 1, !tbaa !283
  %i.bd = call noundef i16 @llvm.bswap.i16(i16 %i.bc)
  %i.be = zext i16 %i.bd to i64
  %i.bf = mul nuw nsw i64 %i.bb, %i.be
  %i.bg = and i64 %i.bf, 4294967295
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bg ; 2 uses
  %i.bi = load i16, ptr %i.bh, align 1, !tbaa !283
  %.not9.i.i.i = icmp eq i16 %i.bi, -1
  br i1 %.not9.i.i.i, label %bb.i, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE10get_lengthEv.exit.i

bb.i:                                             ; preds = %bb.h
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 2
  %i.bk = load i16, ptr %i.bj, align 1, !tbaa !283
  %.not9.1.i.i.i = icmp eq i16 %i.bk, -1
  %i.bl = sext i1 %.not9.1.i.i.i to i32
  br label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE10get_lengthEv.exit.i

_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE10get_lengthEv.exit.i: ; preds = %bb.i, %bb.h, %.lr.ph
  %.2.i.i.i = phi i32 [ 0, %.lr.ph ], [ 0, %bb.h ], [ %i.bl, %bb.i ]
  %i.bm = zext i16 %i.az to i32
  %i.bn = add nsw i32 %.2.i.i.i, %i.bm
  %.not.i4 = icmp ult i32 %.0.i11, %i.bn
  br i1 %.not.i4, label %bb.j, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEEixEi.exit, !prof !268

bb.j:                                             ; preds = %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE10get_lengthEv.exit.i
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.bo = load i16, ptr %i.b, align 1, !tbaa !283
  %i.bp = call noundef i16 @llvm.bswap.i16(i16 %i.bo)
  %i.bq = zext i16 %i.bp to i32
  %i.br = mul i32 %.0.i11, %i.bq
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bs
  br label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEEixEi.exit

_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEEixEi.exit: ; preds = %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE10get_lengthEv.exit.i, %bb.j
  %.0.i5 = phi ptr [ %i.bt, %bb.j ], [ @_hb_NullPool, %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE10get_lengthEv.exit.i ]
  %i.bu = call noundef zeroext i1 @_ZNK3AAT18LookupSegmentArrayIN2OT8OffsetToINS1_7ArrayOfINS_6AnchorENS1_7NumTypeILb1EjLj4EEEEENS5_ILb1EtLj2EEEvLb0EEEE8sanitizeIJRPKvEEEbP21hb_sanitize_context_tSD_DpOT_(ptr noundef nonnull align 1 dereferenceable(6) %.0.i5, ptr noundef %1, ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  %i.bv = add nuw i32 %.0.i11, 1                  ; 2 uses
  %exitcond.not = icmp ne i32 %i.bv, %i.ax
  %or.cond.not = select i1 %i.bu, i1 %exitcond.not, i1 false
  br i1 %or.cond.not, label %.lr.ph, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE8sanitizeIJPKNS1_13LookupFormat4ISA_EERPKvEEEbP21hb_sanitize_context_tDpOT_.exit, !prof !704, !llvm.loop !5737

_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE8sanitizeIJPKNS1_13LookupFormat4ISA_EERPKvEEEbP21hb_sanitize_context_tDpOT_.exit: ; preds = %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEEixEi.exit, %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE10get_lengthEv.exit, %bb.c, %bb.d, %bb.a, %bb.b, %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE16sanitize_shallowEP21hb_sanitize_context_t.exit
  %.2.i = phi i1 [ false, %bb.c ], [ false, %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE16sanitize_shallowEP21hb_sanitize_context_t.exit ], [ false, %bb.d ], [ false, %bb.b ], [ false, %bb.a ], [ true, %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE10get_lengthEv.exit ], [ %i.bu, %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT18LookupSegmentArrayINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEEixEi.exit ]
  ret i1 %.2.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK3AAT13LookupFormat6IN2OT8OffsetToINS1_7ArrayOfINS_6AnchorENS1_7NumTypeILb1EjLj4EEEEENS5_ILb1EtLj2EEEvLb0EEEE8sanitizeEP21hb_sanitize_context_tPKv(ptr noundef nonnull align 1 dereferenceable(13) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !505
  %i.e = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !506
  %i.j = zext i32 %i.i to i64
  %.not.i2 = icmp ugt i64 %i.g, %i.j
  br i1 %.not.i2, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE8sanitizeIJRPKvEEEbP21hb_sanitize_context_tDpOT_.exit, label %bb.b, !prof !711

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.k = load i16, ptr %i.a, align 1, !tbaa !283
  %i.l = tail call noundef i16 @llvm.bswap.i16(i16 %i.k) ; 2 uses
  %i.m = icmp ugt i16 %i.l, 3
  br i1 %i.m, label %bb.c, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE8sanitizeIJRPKvEEEbP21hb_sanitize_context_tDpOT_.exit, !prof !525

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
  br i1 %.not.i.i.i, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE8sanitizeIJRPKvEEEbP21hb_sanitize_context_tDpOT_.exit, label %bb.d, !prof !711

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !504
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.e
  %i.ac = trunc i64 %i.ab to i32
  %.not12.i.i.i = icmp ugt i32 %i.s, %i.ac
  br i1 %.not12.i.i.i, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE8sanitizeIJRPKvEEEbP21hb_sanitize_context_tDpOT_.exit, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE16sanitize_shallowEP21hb_sanitize_context_t.exit, !prof !711

_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE16sanitize_shallowEP21hb_sanitize_context_t.exit: ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 4 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !508
  %i.af = sub i32 %i.ae, %i.s                     ; 2 uses
  store i32 %i.af, ptr %i.ad, align 4, !tbaa !508
  %i.ag = icmp sgt i32 %i.af, 0
  br i1 %i.ag, label %bb.e, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE8sanitizeIJRPKvEEEbP21hb_sanitize_context_tDpOT_.exit, !prof !672

bb.e:                                             ; preds = %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE16sanitize_shallowEP21hb_sanitize_context_t.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.ah = load i16, ptr %i.o, align 1, !tbaa !283 ; 2 uses
  %i.ai = tail call noundef i16 @llvm.bswap.i16(i16 %i.ah) ; 2 uses
  %.not.i.i = icmp eq i16 %i.ah, 0
  br i1 %.not.i.i, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE10get_lengthEv.exit, label %bb.f, !prof !267

bb.f:                                             ; preds = %bb.e
  %i.aj = zext i16 %i.ai to i64
  %i.ak = add nuw nsw i64 %i.aj, 4294967295
  %i.al = load i16, ptr %i.a, align 1, !tbaa !283
  %i.am = tail call noundef i16 @llvm.bswap.i16(i16 %i.al)
  %i.an = zext i16 %i.am to i64
  %i.ao = mul nuw nsw i64 %i.ak, %i.an
  %i.ap = and i64 %i.ao, 4294967295
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ap
  %i.ar = load i16, ptr %i.aq, align 1, !tbaa !283
  %.not9.not.i.i = icmp eq i16 %i.ar, -1
  %i.as = sext i1 %.not9.not.i.i to i32
  br label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE10get_lengthEv.exit

_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE10get_lengthEv.exit: ; preds = %bb.e, %bb.f
  %.2.i.i = phi i32 [ 0, %bb.e ], [ %i.as, %bb.f ]
  %i.at = zext i16 %i.ai to i32
  %i.au = add nsw i32 %.2.i.i, %i.at              ; 2 uses
  %.not.i11.not = icmp eq i32 %i.au, 0
  br i1 %.not.i11.not, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE8sanitizeIJRPKvEEEbP21hb_sanitize_context_tDpOT_.exit, label %.lr.ph

bb.g:                                             ; preds = %_ZNK3AAT12LookupSingleIN2OT8OffsetToINS1_7ArrayOfINS_6AnchorENS1_7NumTypeILb1EjLj4EEEEENS5_ILb1EtLj2EEEvLb0EEEE8sanitizeEP21hb_sanitize_context_tPKv.exit
  %i.av = add nuw i32 %.0.i12, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.av, %i.au
  br i1 %exitcond.not, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE8sanitizeIJRPKvEEEbP21hb_sanitize_context_tDpOT_.exit, label %.lr.ph, !llvm.loop !5738

.lr.ph:                                           ; preds = %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE10get_lengthEv.exit, %bb.g
  %.0.i12 = phi i32 [ %i.av, %bb.g ], [ 0, %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE10get_lengthEv.exit ] ; 3 uses
  %i.aw = load i16, ptr %i.o, align 1, !tbaa !283 ; 2 uses
  %i.ax = tail call noundef i16 @llvm.bswap.i16(i16 %i.aw) ; 2 uses
  %.not.i.i.i3 = icmp eq i16 %i.aw, 0
  br i1 %.not.i.i.i3, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE10get_lengthEv.exit.i, label %bb.h, !prof !267

bb.h:                                             ; preds = %.lr.ph
  %i.ay = zext i16 %i.ax to i64
  %i.az = add nuw nsw i64 %i.ay, 4294967295
  %i.ba = load i16, ptr %i.a, align 1, !tbaa !283
  %i.bb = tail call noundef i16 @llvm.bswap.i16(i16 %i.ba)
  %i.bc = zext i16 %i.bb to i64
  %i.bd = mul nuw nsw i64 %i.az, %i.bc
  %i.be = and i64 %i.bd, 4294967295
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.be
  %i.bg = load i16, ptr %i.bf, align 1, !tbaa !283
  %.not9.not.i.i.i = icmp eq i16 %i.bg, -1
  %i.bh = sext i1 %.not9.not.i.i.i to i32
  br label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE10get_lengthEv.exit.i

_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE10get_lengthEv.exit.i: ; preds = %bb.h, %.lr.ph
  %.2.i.i.i = phi i32 [ 0, %.lr.ph ], [ %i.bh, %bb.h ]
  %i.bi = zext i16 %i.ax to i32
  %i.bj = add nsw i32 %.2.i.i.i, %i.bi
  %.not.i4 = icmp ult i32 %.0.i12, %i.bj
  br i1 %.not.i4, label %bb.i, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEEixEi.exit, !prof !268

bb.i:                                             ; preds = %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE10get_lengthEv.exit.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.bk = load i16, ptr %i.a, align 1, !tbaa !283
  %i.bl = tail call noundef i16 @llvm.bswap.i16(i16 %i.bk)
  %i.bm = zext i16 %i.bl to i32
  %i.bn = mul i32 %.0.i12, %i.bm
  %i.bo = zext i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bo
  br label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEEixEi.exit

_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEEixEi.exit: ; preds = %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE10get_lengthEv.exit.i, %bb.i
  %.0.i5 = phi ptr [ %i.bp, %bb.i ], [ @_hb_NullPool, %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE10get_lengthEv.exit.i ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.0.i5, i64 4
  %i.br = load ptr, ptr %i.c, align 8, !tbaa !505
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = load i32, ptr %i.h, align 8, !tbaa !506
  %i.bw = zext i32 %i.bv to i64
  %.not.i6 = icmp ugt i64 %i.bu, %i.bw
  br i1 %.not.i6, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE8sanitizeIJRPKvEEEbP21hb_sanitize_context_tDpOT_.exit, label %bb.j, !prof !327

bb.j:                                             ; preds = %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEEixEi.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.i5, i64 2
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.by = load i16, ptr %i.bx, align 1, !tbaa !283
  %i.bz = tail call noundef i16 @llvm.bswap.i16(i16 %i.by)
  %i.ca = zext i16 %i.bz to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 %i.ca ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  %i.cd = load ptr, ptr %i.c, align 8, !tbaa !505
  %i.ce = ptrtoint ptr %i.cc to i64               ; 3 uses
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = load i32, ptr %i.h, align 8, !tbaa !506
  %i.ci = zext i32 %i.ch to i64
  %.not.i.i.i.i = icmp ugt i64 %i.cg, %i.ci
  br i1 %.not.i.i.i.i, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE8sanitizeIJRPKvEEEbP21hb_sanitize_context_tDpOT_.exit, label %bb.k, !prof !711

bb.k:                                             ; preds = %bb.j
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.cj = load i32, ptr %i.cb, align 1, !tbaa !278
  %i.ck = tail call noundef i32 @llvm.bswap.i32(i32 %i.cj) ; 2 uses
  %i.cl = shl nuw i32 %i.ck, 2                    ; 2 uses
  %i.cm = icmp ugt i32 %i.ck, 1073741823
  br i1 %i.cm, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE8sanitizeIJRPKvEEEbP21hb_sanitize_context_tDpOT_.exit, label %bb.l, !prof !267

bb.l:                                             ; preds = %bb.k
  %i.cn = load ptr, ptr %i.c, align 8, !tbaa !505
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = sub i64 %i.ce, %i.co
  %i.cq = load i32, ptr %i.h, align 8, !tbaa !506
  %i.cr = zext i32 %i.cq to i64
  %.not.i.i.i.i.i.i = icmp ugt i64 %i.cp, %i.cr
  br i1 %.not.i.i.i.i.i.i, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE8sanitizeIJRPKvEEEbP21hb_sanitize_context_tDpOT_.exit, label %bb.m, !prof !711

bb.m:                                             ; preds = %bb.l
  %i.cs = load ptr, ptr %i.y, align 8, !tbaa !504
  %i.ct = ptrtoint ptr %i.cs to i64
  %i.cu = sub i64 %i.ct, %i.ce
  %i.cv = trunc i64 %i.cu to i32
  %.not12.i.i.i.i.i.i = icmp ugt i32 %i.cl, %i.cv
  br i1 %.not12.i.i.i.i.i.i, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE8sanitizeIJRPKvEEEbP21hb_sanitize_context_tDpOT_.exit, label %_ZNK3AAT12LookupSingleIN2OT8OffsetToINS1_7ArrayOfINS_6AnchorENS1_7NumTypeILb1EjLj4EEEEENS5_ILb1EtLj2EEEvLb0EEEE8sanitizeEP21hb_sanitize_context_tPKv.exit, !prof !711

_ZNK3AAT12LookupSingleIN2OT8OffsetToINS1_7ArrayOfINS_6AnchorENS1_7NumTypeILb1EjLj4EEEEENS5_ILb1EtLj2EEEvLb0EEEE8sanitizeEP21hb_sanitize_context_tPKv.exit: ; preds = %bb.m
  %i.cw = load i32, ptr %i.ad, align 4, !tbaa !508
  %i.cx = sub i32 %i.cw, %i.cl                    ; 2 uses
  store i32 %i.cx, ptr %i.ad, align 4, !tbaa !508
  %i.cy = icmp sgt i32 %i.cx, 0
  br i1 %i.cy, label %bb.g, label %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE8sanitizeIJRPKvEEEbP21hb_sanitize_context_tDpOT_.exit, !prof !672

_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE8sanitizeIJRPKvEEEbP21hb_sanitize_context_tDpOT_.exit: ; preds = %bb.g, %_ZNK3AAT12LookupSingleIN2OT8OffsetToINS1_7ArrayOfINS_6AnchorENS1_7NumTypeILb1EjLj4EEEEENS5_ILb1EtLj2EEEvLb0EEEE8sanitizeEP21hb_sanitize_context_tPKv.exit, %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEEixEi.exit, %bb.m, %bb.l, %bb.j, %bb.k, %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE10get_lengthEv.exit, %bb.c, %bb.d, %bb.a, %bb.b, %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE16sanitize_shallowEP21hb_sanitize_context_t.exit
  %.2.i = phi i1 [ false, %bb.c ], [ false, %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE16sanitize_shallowEP21hb_sanitize_context_t.exit ], [ false, %bb.d ], [ false, %bb.b ], [ false, %bb.a ], [ true, %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEE10get_lengthEv.exit ], [ false, %bb.j ], [ false, %bb.l ], [ false, %bb.m ], [ false, %_ZNK2OT24VarSizedBinSearchArrayOfIN3AAT12LookupSingleINS_8OffsetToINS_7ArrayOfINS1_6AnchorENS_7NumTypeILb1EjLj4EEEEENS6_ILb1EtLj2EEEvLb0EEEEEEixEi.exit ], [ false, %_ZNK3AAT12LookupSingleIN2OT8OffsetToINS1_7ArrayOfINS_6AnchorENS1_7NumTypeILb1EjLj4EEEEENS5_ILb1EtLj2EEEvLb0EEEE8sanitizeEP21hb_sanitize_context_tPKv.exit ], [ true, %bb.g ], [ false, %bb.k ]
  ret i1 %.2.i
}

end_hunk_8
begin_hunk_9_@_ZNK2OT12CmapSubtable8sanitizeEP21hb_sanitize_context_t:bb.a
  %i.ca = zext i32 %i.bz to i64
  %.not.i11 = icmp ugt i64 %i.by, %i.ca
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 16
  br i1 %.not.i11, label %_ZNK2OT19CmapSubtableFormat48sanitizeEP21hb_sanitize_context_t.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.cd = load i32, ptr %i.cc, align 1, !tbaa !278
  %i.ce = tail call noundef i32 @llvm.bswap.i32(i32 %i.cd) ; 2 uses
  %i.cf = shl nuw i32 %i.ce, 1                    ; 2 uses
  %i.cg = icmp slt i32 %i.ce, 0
  br i1 %i.cg, label %_ZNK2OT19CmapSubtableFormat48sanitizeEP21hb_sanitize_context_t.exit, label %bb.m, !prof !267

bb.m:                                             ; preds = %bb.l
  %i.ch = load ptr, ptr %i.b, align 8, !tbaa !505
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = sub i64 %i.bw, %i.ci
  %i.ck = load i32, ptr %i.g, align 8, !tbaa !506
  %i.cl = zext i32 %i.ck to i64
  %.not.i.i.i.i12 = icmp ugt i64 %i.cj, %i.cl
  br i1 %.not.i.i.i.i12, label %_ZNK2OT19CmapSubtableFormat48sanitizeEP21hb_sanitize_context_t.exit, label %bb.n, !prof !711

bb.n:                                             ; preds = %bb.m
  %i.cm = load ptr, ptr %i.cb, align 8, !tbaa !504
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = sub i64 %i.cn, %i.bw
  %i.cp = trunc i64 %i.co to i32
  %.not12.i.i.i.i13 = icmp ugt i32 %i.cf, %i.cp
  br i1 %.not12.i.i.i.i13, label %_ZNK2OT19CmapSubtableFormat48sanitizeEP21hb_sanitize_context_t.exit, label %_ZNK2OT7ArrayOfINS_11HBGlyphID16ENS_7NumTypeILb1EjLj4EEEE16sanitize_shallowEP21hb_sanitize_context_t.exit.i, !prof !711

_ZNK2OT7ArrayOfINS_11HBGlyphID16ENS_7NumTypeILb1EjLj4EEEE16sanitize_shallowEP21hb_sanitize_context_t.exit.i: ; preds = %bb.n
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !508
  %i.cs = sub i32 %i.cr, %i.cf                    ; 2 uses
  store i32 %i.cs, ptr %i.cq, align 4, !tbaa !508
  %i.ct = icmp sgt i32 %i.cs, 0
  br label %_ZNK2OT19CmapSubtableFormat48sanitizeEP21hb_sanitize_context_t.exit

bb.o:                                             ; preds = %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cv = load ptr, ptr %i.b, align 8, !tbaa !505
  %i.cw = ptrtoint ptr %i.cu to i64               ; 3 uses
  %i.cx = ptrtoint ptr %i.cv to i64
  %i.cy = sub i64 %i.cw, %i.cx
  %i.cz = load i32, ptr %i.g, align 8, !tbaa !506
  %i.da = zext i32 %i.cz to i64
  %.not.i14 = icmp ugt i64 %i.cy, %i.da
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 16
  br i1 %.not.i14, label %_ZNK2OT19CmapSubtableFormat48sanitizeEP21hb_sanitize_context_t.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 12
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.dd = load i32, ptr %i.dc, align 1, !tbaa !278
  %i.de = tail call noundef i32 @llvm.bswap.i32(i32 %i.dd)
  %i.df = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.de, i32 12) ; 2 uses
  %i.dg = extractvalue { i32, i1 } %i.df, 0       ; 2 uses
  %i.dh = extractvalue { i32, i1 } %i.df, 1
  br i1 %i.dh, label %_ZNK2OT19CmapSubtableFormat48sanitizeEP21hb_sanitize_context_t.exit, label %bb.q, !prof !267

bb.q:                                             ; preds = %bb.p
  %i.di = load ptr, ptr %i.b, align 8, !tbaa !505
  %i.dj = ptrtoint ptr %i.di to i64
  %i.dk = sub i64 %i.cw, %i.dj
  %i.dl = load i32, ptr %i.g, align 8, !tbaa !506
  %i.dm = zext i32 %i.dl to i64
  %.not.i.i.i.i15 = icmp ugt i64 %i.dk, %i.dm
  br i1 %.not.i.i.i.i15, label %_ZNK2OT19CmapSubtableFormat48sanitizeEP21hb_sanitize_context_t.exit, label %bb.r, !prof !711

bb.r:                                             ; preds = %bb.q
  %i.dn = load ptr, ptr %i.db, align 8, !tbaa !504
  %i.do = ptrtoint ptr %i.dn to i64
  %i.dp = sub i64 %i.do, %i.cw
  %i.dq = trunc i64 %i.dp to i32
  %.not12.i.i.i.i16 = icmp ugt i32 %i.dg, %i.dq
  br i1 %.not12.i.i.i.i16, label %_ZNK2OT19CmapSubtableFormat48sanitizeEP21hb_sanitize_context_t.exit, label %_ZNK2OT7ArrayOfINS_21CmapSubtableLongGroupENS_7NumTypeILb1EjLj4EEEE16sanitize_shallowEP21hb_sanitize_context_t.exit.i, !prof !711

_ZNK2OT7ArrayOfINS_21CmapSubtableLongGroupENS_7NumTypeILb1EjLj4EEEE16sanitize_shallowEP21hb_sanitize_context_t.exit.i: ; preds = %bb.r
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !508
  %i.dt = sub i32 %i.ds, %i.dg                    ; 2 uses
  store i32 %i.dt, ptr %i.dr, align 4, !tbaa !508
  %i.du = icmp sgt i32 %i.dt, 0
  br label %_ZNK2OT19CmapSubtableFormat48sanitizeEP21hb_sanitize_context_t.exit

bb.s:                                             ; preds = %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dw = load ptr, ptr %i.b, align 8, !tbaa !505
  %i.dx = ptrtoint ptr %i.dv to i64               ; 3 uses
  %i.dy = ptrtoint ptr %i.dw to i64
  %i.dz = sub i64 %i.dx, %i.dy
  %i.ea = load i32, ptr %i.g, align 8, !tbaa !506
  %i.eb = zext i32 %i.ea to i64
  %.not.i17 = icmp ugt i64 %i.dz, %i.eb
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 16
  br i1 %.not.i17, label %_ZNK2OT19CmapSubtableFormat48sanitizeEP21hb_sanitize_context_t.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 12
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.ee = load i32, ptr %i.ed, align 1, !tbaa !278
  %i.ef = tail call noundef i32 @llvm.bswap.i32(i32 %i.ee)
  %i.eg = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.ef, i32 12) ; 2 uses
  %i.eh = extractvalue { i32, i1 } %i.eg, 0       ; 2 uses
  %i.ei = extractvalue { i32, i1 } %i.eg, 1
  br i1 %i.ei, label %_ZNK2OT19CmapSubtableFormat48sanitizeEP21hb_sanitize_context_t.exit, label %bb.u, !prof !267

bb.u:                                             ; preds = %bb.t
  %i.ej = load ptr, ptr %i.b, align 8, !tbaa !505
  %i.ek = ptrtoint ptr %i.ej to i64
  %i.el = sub i64 %i.dx, %i.ek
  %i.em = load i32, ptr %i.g, align 8, !tbaa !506
  %i.en = zext i32 %i.em to i64
  %.not.i.i.i.i18 = icmp ugt i64 %i.el, %i.en
  br i1 %.not.i.i.i.i18, label %_ZNK2OT19CmapSubtableFormat48sanitizeEP21hb_sanitize_context_t.exit, label %bb.v, !prof !711

bb.v:                                             ; preds = %bb.u
  %i.eo = load ptr, ptr %i.ec, align 8, !tbaa !504
  %i.ep = ptrtoint ptr %i.eo to i64
  %i.eq = sub i64 %i.ep, %i.dx
  %i.er = trunc i64 %i.eq to i32
  %.not12.i.i.i.i19 = icmp ugt i32 %i.eh, %i.er
  br i1 %.not12.i.i.i.i19, label %_ZNK2OT19CmapSubtableFormat48sanitizeEP21hb_sanitize_context_t.exit, label %_ZNK2OT7ArrayOfINS_21CmapSubtableLongGroupENS_7NumTypeILb1EjLj4EEEE16sanitize_shallowEP21hb_sanitize_context_t.exit.i20, !prof !711

_ZNK2OT7ArrayOfINS_21CmapSubtableLongGroupENS_7NumTypeILb1EjLj4EEEE16sanitize_shallowEP21hb_sanitize_context_t.exit.i20: ; preds = %bb.v
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.et = load i32, ptr %i.es, align 4, !tbaa !508
  %i.eu = sub i32 %i.et, %i.eh                    ; 2 uses
  store i32 %i.eu, ptr %i.es, align 4, !tbaa !508
  %i.ev = icmp sgt i32 %i.eu, 0
  br label %_ZNK2OT19CmapSubtableFormat48sanitizeEP21hb_sanitize_context_t.exit

bb.w:                                             ; preds = %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.ex = load ptr, ptr %i.b, align 8, !tbaa !505
  %i.ey = ptrtoint ptr %i.ew to i64               ; 3 uses
  %i.ez = ptrtoint ptr %i.ex to i64
  %i.fa = sub i64 %i.ey, %i.ez
  %i.fb = load i32, ptr %i.g, align 8, !tbaa !506
  %i.fc = zext i32 %i.fb to i64
  %.not.i21 = icmp ugt i64 %i.fa, %i.fc
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 16
  br i1 %.not.i21, label %_ZNK2OT19CmapSubtableFormat48sanitizeEP21hb_sanitize_context_t.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 2 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.ff = load i32, ptr %i.fe, align 1, !tbaa !278
  %i.fg = tail call noundef i32 @llvm.bswap.i32(i32 %i.ff)
  %i.fh = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.fg, i32 11) ; 2 uses
  %i.fi = extractvalue { i32, i1 } %i.fh, 0       ; 2 uses
  %i.fj = extractvalue { i32, i1 } %i.fh, 1
  br i1 %i.fj, label %_ZNK2OT19CmapSubtableFormat48sanitizeEP21hb_sanitize_context_t.exit, label %bb.y, !prof !267

bb.y:                                             ; preds = %bb.x
  %i.fk = load ptr, ptr %i.b, align 8, !tbaa !505
  %i.fl = ptrtoint ptr %i.fk to i64
  %i.fm = sub i64 %i.ey, %i.fl
  %i.fn = load i32, ptr %i.g, align 8, !tbaa !506
  %i.fo = zext i32 %i.fn to i64
  %.not.i.i.i.i22 = icmp ugt i64 %i.fm, %i.fo
  br i1 %.not.i.i.i.i22, label %_ZNK2OT19CmapSubtableFormat48sanitizeEP21hb_sanitize_context_t.exit, label %bb.z, !prof !711

bb.z:                                             ; preds = %bb.y
  %i.fp = load ptr, ptr %i.fd, align 8, !tbaa !504
  %i.fq = ptrtoint ptr %i.fp to i64
  %i.fr = sub i64 %i.fq, %i.ey
  %i.fs = trunc i64 %i.fr to i32
  %.not12.i.i.i.i23 = icmp ugt i32 %i.fi, %i.fs
  br i1 %.not12.i.i.i.i23, label %_ZNK2OT19CmapSubtableFormat48sanitizeEP21hb_sanitize_context_t.exit, label %_ZNK2OT7ArrayOfINS_23VariationSelectorRecordENS_7NumTypeILb1EjLj4EEEE16sanitize_shallowEP21hb_sanitize_context_t.exit.i, !prof !711

_ZNK2OT7ArrayOfINS_23VariationSelectorRecordENS_7NumTypeILb1EjLj4EEEE16sanitize_shallowEP21hb_sanitize_context_t.exit.i: ; preds = %bb.z
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !508
  %i.fv = sub i32 %i.fu, %i.fi                    ; 2 uses
  store i32 %i.fv, ptr %i.ft, align 4, !tbaa !508
  %i.fw = icmp sgt i32 %i.fv, 0
  br i1 %i.fw, label %bb.aa, label %_ZNK2OT19CmapSubtableFormat48sanitizeEP21hb_sanitize_context_t.exit, !prof !672

bb.aa:                                            ; preds = %_ZNK2OT7ArrayOfINS_23VariationSelectorRecordENS_7NumTypeILb1EjLj4EEEE16sanitize_shallowEP21hb_sanitize_context_t.exit.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.fx = load i32, ptr %i.fe, align 1, !tbaa !278 ; 2 uses
  %.not.i8.not.i = icmp eq i32 %i.fx, 0
  br i1 %.not.i8.not.i, label %_ZNK2OT19CmapSubtableFormat48sanitizeEP21hb_sanitize_context_t.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.aa
  %i.fy = tail call noundef i32 @llvm.bswap.i32(i32 %i.fx)
  %wide.trip.count.i = zext i32 %i.fy to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %i.fz = getelementptr inbounds nuw [11 x i8], ptr %i.ew, i64 %indvars.iv.i
  %i.ga = tail call noundef zeroext i1 @_ZNK2OT23VariationSelectorRecord8sanitizeEP21hb_sanitize_context_tPKv(ptr noundef nonnull align 1 dereferenceable(11) %i.fz, ptr noundef nonnull align 8 dereferenceable(62) %1, ptr noundef nonnull align 1 dereferenceable(21) %0) ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp ne i64 %indvars.iv.next.i, %wide.trip.count.i
  %or.cond.not = select i1 %i.ga, i1 %exitcond.not.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i, label %_ZNK2OT19CmapSubtableFormat48sanitizeEP21hb_sanitize_context_t.exit, !prof !704, !llvm.loop !5822

_ZNK2OT19CmapSubtableFormat48sanitizeEP21hb_sanitize_context_t.exit: ; preds = %.lr.ph.i, %bb.aa, %_ZNK2OT7ArrayOfINS_23VariationSelectorRecordENS_7NumTypeILb1EjLj4EEEE16sanitize_shallowEP21hb_sanitize_context_t.exit.i, %bb.z, %bb.y, %bb.x, %bb.w, %_ZNK2OT7ArrayOfINS_21CmapSubtableLongGroupENS_7NumTypeILb1EjLj4EEEE16sanitize_shallowEP21hb_sanitize_context_t.exit.i20, %bb.v, %bb.u, %bb.t, %bb.s, %_ZNK2OT7ArrayOfINS_21CmapSubtableLongGroupENS_7NumTypeILb1EjLj4EEEE16sanitize_shallowEP21hb_sanitize_context_t.exit.i, %bb.r, %bb.q, %bb.p, %bb.o, %_ZNK2OT7ArrayOfINS_11HBGlyphID16ENS_7NumTypeILb1EjLj4EEEE16sanitize_shallowEP21hb_sanitize_context_t.exit.i, %bb.n, %bb.m, %bb.l, %bb.k, %_ZNK2OT7ArrayOfINS_11HBGlyphID16ENS_7NumTypeILb1EtLj2EEEE16sanitize_shallowEP21hb_sanitize_context_t.exit.i, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.b, %bb.a, %bb.c
  %.0 = phi i1 [ false, %bb.a ], [ %i.s, %bb.c ], [ true, %bb.b ], [ %i.at, %bb.g ], [ false, %bb.j ], [ false, %bb.l ], [ false, %bb.p ], [ false, %bb.t ], [ false, %bb.d ], [ false, %bb.f ], [ false, %bb.e ], [ false, %bb.h ], [ false, %bb.i ], [ %i.bt, %_ZNK2OT7ArrayOfINS_11HBGlyphID16ENS_7NumTypeILb1EtLj2EEEE16sanitize_shallowEP21hb_sanitize_context_t.exit.i ], [ false, %bb.k ], [ false, %bb.m ], [ %i.ct, %_ZNK2OT7ArrayOfINS_11HBGlyphID16ENS_7NumTypeILb1EjLj4EEEE16sanitize_shallowEP21hb_sanitize_context_t.exit.i ], [ false, %bb.n ], [ false, %bb.o ], [ false, %bb.q ], [ %i.du, %_ZNK2OT7ArrayOfINS_21CmapSubtableLongGroupENS_7NumTypeILb1EjLj4EEEE16sanitize_shallowEP21hb_sanitize_context_t.exit.i ], [ false, %bb.r ], [ false, %bb.s ], [ false, %bb.u ], [ %i.ev, %_ZNK2OT7ArrayOfINS_21CmapSubtableLongGroupENS_7NumTypeILb1EjLj4EEEE16sanitize_shallowEP21hb_sanitize_context_t.exit.i20 ], [ false, %bb.v ], [ false, %bb.w ], [ false, %bb.y ], [ false, %_ZNK2OT7ArrayOfINS_23VariationSelectorRecordENS_7NumTypeILb1EjLj4EEEE16sanitize_shallowEP21hb_sanitize_context_t.exit.i ], [ false, %bb.z ], [ true, %bb.aa ], [ false, %bb.x ], [ %i.ga, %.lr.ph.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2OT23VariationSelectorRecord8sanitizeEP21hb_sanitize_context_tPKv(ptr noundef nonnull align 1 dereferenceable(11) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !505
  %i.d = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !506
  %i.i = zext i32 %i.h to i64                     ; 2 uses
  %.not = icmp ugt i64 %i.f, %i.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 7 ; 2 uses
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.e
  %.not.i.not = icmp ugt i64 %i.m, %i.i
  %or.cond = select i1 %.not, i1 true, i1 %.not.i.not, !prof !327
  br i1 %or.cond, label %_ZNK2OT8OffsetToINS_10DefaultUVSENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread15, label %bb.b, !prof !327

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 3
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.o = load i32, ptr %i.n, align 1, !tbaa !278  ; 2 uses
  %i.p = icmp eq i32 %i.o, 0
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !505 ; 2 uses
  %.pre20 = load i32, ptr %i.g, align 8, !tbaa !506 ; 2 uses
  br i1 %i.p, label %._ZNK2OT8OffsetToINS_10DefaultUVSENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread_crit_edge, label %bb.c

._ZNK2OT8OffsetToINS_10DefaultUVSENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread_crit_edge: ; preds = %bb.b
  %.pre21 = ptrtoint ptr %.pre to i64
  %.pre22 = zext i32 %.pre20 to i64
  br label %_ZNK2OT8OffsetToINS_10DefaultUVSENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.q = tail call noundef i32 @llvm.bswap.i32(i32 %i.o)
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 %i.r ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.u = ptrtoint ptr %i.t to i64                 ; 3 uses
  %i.v = ptrtoint ptr %.pre to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = zext i32 %.pre20 to i64
  %.not.i.i.i = icmp ugt i64 %i.w, %i.x
  br i1 %.not.i.i.i, label %_ZNK2OT8OffsetToINS_10DefaultUVSENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread15, label %bb.d, !prof !711

bb.d:                                             ; preds = %bb.c
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.y = load i32, ptr %i.s, align 1, !tbaa !278
  %i.z = tail call noundef i32 @llvm.bswap.i32(i32 %i.y) ; 2 uses
  %i.aa = shl nuw i32 %i.z, 2                     ; 2 uses
  %i.ab = icmp ugt i32 %i.z, 1073741823
  br i1 %i.ab, label %_ZNK2OT8OffsetToINS_10DefaultUVSENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread15, label %bb.e, !prof !267

bb.e:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr %i.b, align 8, !tbaa !505
  %i.ad = ptrtoint ptr %i.ac to i64               ; 2 uses
  %i.ae = sub i64 %i.u, %i.ad
  %i.af = load i32, ptr %i.g, align 8, !tbaa !506
  %i.ag = zext i32 %i.af to i64                   ; 2 uses
  %.not.i.i.i.i.i = icmp ugt i64 %i.ae, %i.ag
  br i1 %.not.i.i.i.i.i, label %_ZNK2OT8OffsetToINS_10DefaultUVSENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread15, label %bb.f, !prof !711

bb.f:                                             ; preds = %bb.e
  %i.ah = load ptr, ptr %i.j, align 8, !tbaa !504
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = sub i64 %i.ai, %i.u
  %i.ak = trunc i64 %i.aj to i32
  %.not12.i.i.i.i.i = icmp ugt i32 %i.aa, %i.ak
  br i1 %.not12.i.i.i.i.i, label %_ZNK2OT8OffsetToINS_10DefaultUVSENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread15, label %_ZNK2OT8OffsetToINS_10DefaultUVSENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit, !prof !711

_ZNK2OT8OffsetToINS_10DefaultUVSENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit: ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !508
  %i.an = sub i32 %i.am, %i.aa                    ; 2 uses
  store i32 %i.an, ptr %i.al, align 4, !tbaa !508
  %i.ao = icmp sgt i32 %i.an, 0
  br i1 %i.ao, label %_ZNK2OT8OffsetToINS_10DefaultUVSENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread, label %_ZNK2OT8OffsetToINS_10DefaultUVSENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread15

_ZNK2OT8OffsetToINS_10DefaultUVSENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread: ; preds = %._ZNK2OT8OffsetToINS_10DefaultUVSENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread_crit_edge, %_ZNK2OT8OffsetToINS_10DefaultUVSENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit
  %.pre-phi23 = phi i64 [ %.pre22, %._ZNK2OT8OffsetToINS_10DefaultUVSENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread_crit_edge ], [ %i.ag, %_ZNK2OT8OffsetToINS_10DefaultUVSENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit ]
  %.pre-phi = phi i64 [ %.pre21, %._ZNK2OT8OffsetToINS_10DefaultUVSENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread_crit_edge ], [ %i.ad, %_ZNK2OT8OffsetToINS_10DefaultUVSENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit ]
  %i.ap = sub i64 %i.d, %.pre-phi
  %.not.i6.not = icmp ugt i64 %i.ap, %.pre-phi23
  br i1 %.not.i6.not, label %_ZNK2OT8OffsetToINS_10DefaultUVSENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread15, label %bb.g, !prof !267

bb.g:                                             ; preds = %_ZNK2OT8OffsetToINS_10DefaultUVSENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.aq = load i32, ptr %i.k, align 1, !tbaa !278 ; 2 uses
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %_ZNK2OT8OffsetToINS_10DefaultUVSENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread15, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = tail call noundef i32 @llvm.bswap.i32(i32 %i.aq)
  %i.at = zext i32 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 %i.at ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.aw = load ptr, ptr %i.b, align 8, !tbaa !505
  %i.ax = ptrtoint ptr %i.av to i64               ; 3 uses
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = load i32, ptr %i.g, align 8, !tbaa !506
  %i.bb = zext i32 %i.ba to i64
  %.not.i.i.i7 = icmp ugt i64 %i.az, %i.bb
  br i1 %.not.i.i.i7, label %_ZNK2OT8OffsetToINS_10DefaultUVSENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread15, label %bb.i, !prof !711

bb.i:                                             ; preds = %bb.h
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.bc = load i32, ptr %i.au, align 1, !tbaa !278
  %i.bd = tail call noundef i32 @llvm.bswap.i32(i32 %i.bc)
  %i.be = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.bd, i32 5) ; 2 uses
  %i.bf = extractvalue { i32, i1 } %i.be, 0       ; 2 uses
  %i.bg = extractvalue { i32, i1 } %i.be, 1
  br i1 %i.bg, label %_ZNK2OT8OffsetToINS_10DefaultUVSENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread15, label %bb.j, !prof !267

bb.j:                                             ; preds = %bb.i
  %i.bh = load ptr, ptr %i.b, align 8, !tbaa !505
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.ax, %i.bi
  %i.bk = load i32, ptr %i.g, align 8, !tbaa !506
  %i.bl = zext i32 %i.bk to i64
  %.not.i.i.i.i.i8 = icmp ugt i64 %i.bj, %i.bl
  br i1 %.not.i.i.i.i.i8, label %_ZNK2OT8OffsetToINS_10DefaultUVSENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread15, label %bb.k, !prof !711

bb.k:                                             ; preds = %bb.j
  %i.bm = load ptr, ptr %i.j, align 8, !tbaa !504
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = sub i64 %i.bn, %i.ax
  %i.bp = trunc i64 %i.bo to i32
  %.not12.i.i.i.i.i9 = icmp ugt i32 %i.bf, %i.bp
  br i1 %.not12.i.i.i.i.i9, label %_ZNK2OT8OffsetToINS_10DefaultUVSENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread15, label %_ZNK2OT7ArrayOfINS_10UVSMappingENS_7NumTypeILb1EjLj4EEEE16sanitize_shallowEP21hb_sanitize_context_t.exit.i.i, !prof !711

_ZNK2OT7ArrayOfINS_10UVSMappingENS_7NumTypeILb1EjLj4EEEE16sanitize_shallowEP21hb_sanitize_context_t.exit.i.i: ; preds = %bb.k
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !508
  %i.bs = sub i32 %i.br, %i.bf                    ; 2 uses
  store i32 %i.bs, ptr %i.bq, align 4, !tbaa !508
  %i.bt = icmp sgt i32 %i.bs, 0
  br label %_ZNK2OT8OffsetToINS_10DefaultUVSENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread15

_ZNK2OT8OffsetToINS_10DefaultUVSENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread15: ; preds = %bb.g, %_ZNK2OT8OffsetToINS_10DefaultUVSENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread, %bb.h, %bb.i, %bb.j, %bb.k, %_ZNK2OT7ArrayOfINS_10UVSMappingENS_7NumTypeILb1EjLj4EEEE16sanitize_shallowEP21hb_sanitize_context_t.exit.i.i, %bb.f, %bb.d, %bb.c, %bb.e, %_ZNK2OT8OffsetToINS_10DefaultUVSENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit, %bb.a
  %i.bu = phi i1 [ false, %_ZNK2OT8OffsetToINS_10DefaultUVSENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit ], [ false, %bb.a ], [ false, %bb.d ], [ false, %bb.f ], [ false, %bb.e ], [ false, %bb.c ], [ false, %_ZNK2OT8OffsetToINS_10DefaultUVSENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread ], [ true, %bb.g ], [ false, %bb.j ], [ %i.bt, %_ZNK2OT7ArrayOfINS_10UVSMappingENS_7NumTypeILb1EjLj4EEEE16sanitize_shallowEP21hb_sanitize_context_t.exit.i.i ], [ false, %bb.h ], [ false, %bb.i ], [ false, %bb.k ]
  ret i1 %i.bu
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2OT19CmapSubtableFormat413accelerator_t9get_glyphEjPj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1602
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load i32, ptr %i.b, align 8, !tbaa !1601 ; 4 uses
  %i.d = add i32 %i.c, 1
  %i.e = zext i32 %i.d to i64
  %.not5.i.i = icmp sgt i32 %i.c, 0
  br i1 %.not5.i.i, label %.lr.ph.preheader.i.i, label %.critedge

.lr.ph.preheader.i.i:                             ; preds = %bb.a
  %i.f = add nsw i32 %i.c, -1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.preheader.i.i
  %.0217.i.i = phi i32 [ %.2.i.i, %bb.d ], [ %i.f, %.lr.ph.preheader.i.i ] ; 2 uses
  %.0226.i.i = phi i32 [ %.224.i.i, %bb.d ], [ 0, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.g = add i32 %.0226.i.i, %.0217.i.i           ; 2 uses
  %i.h = lshr i32 %i.g, 1                         ; 3 uses
  %i.i = and i32 %i.g, -2
  %i.j = zext i32 %i.i to i64                     ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.j ; 2 uses
  %i.l = load i16, ptr %i.k, align 1, !tbaa !283
  %i.m = tail call noundef i16 @llvm.bswap.i16(i16 %i.l)
  %i.n = zext i16 %i.m to i32
  %i.o = icmp ugt i32 %1, %i.n
  br i1 %i.o, label %bb.c, label %_ZL14_hb_cmp_methodIjZNK2OT19CmapSubtableFormat413accelerator_t9get_glyphEjPjE11CustomRangeJjEEiPKvS6_DpT1_.exit.i.i

_ZL14_hb_cmp_methodIjZNK2OT19CmapSubtableFormat413accelerator_t9get_glyphEjPjE11CustomRangeJjEEiPKvS6_DpT1_.exit.i.i: ; preds = %.lr.ph.i.i
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.e
  %i.q = load i16, ptr %i.p, align 1, !tbaa !283
  %i.r = tail call noundef i16 @llvm.bswap.i16(i16 %i.q)
  %i.s = zext i16 %i.r to i32
  %i.t = icmp samesign ult i32 %1, %i.s
  br i1 %i.t, label %bb.b, label %_ZL10hb_bsearchIKN2OT7NumTypeILb1EtLj2EEEjJjEEPT_RKT0_S5_mmPFiPKvSA_DpT1_ESC_.exit

bb.b:                                             ; preds = %_ZL14_hb_cmp_methodIjZNK2OT19CmapSubtableFormat413accelerator_t9get_glyphEjPjE11CustomRangeJjEEiPKvS6_DpT1_.exit.i.i
  %i.u = add nsw i32 %i.h, -1
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.v = add nuw nsw i32 %i.h, 1
  br label %bb.d

end_hunk_9
begin_hunk_10_@_ZNK2OT6MinMax8sanitizeEP21hb_sanitize_context_t:bb.a
.split43:                                         ; preds = %bb.e
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.ac = load ptr, ptr %i.b, align 8, !tbaa !505
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = load i32, ptr %i.g, align 8, !tbaa !506
  %i.ah = zext i32 %i.ag to i64
  %.not47 = icmp ugt i64 %i.af, %i.ah
  br i1 %.not47, label %_ZNK2OT8OffsetToINS_9BaseCoordENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit5.thread23, label %_ZNK2OT8OffsetToINS_9BaseCoordENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit5.thread, !prof !318

.split:                                           ; preds = %bb.e
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.ai = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.aj = load ptr, ptr %i.b, align 8, !tbaa !505
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = load i32, ptr %i.g, align 8, !tbaa !506
  %i.ao = zext i32 %i.an to i64
  %.not46 = icmp ugt i64 %i.am, %i.ao
  br i1 %.not46, label %_ZNK2OT8OffsetToINS_9BaseCoordENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit5.thread23, label %_ZNK2OT8OffsetToINS_9BaseCoordENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit5.thread, !prof !318

bb.f:                                             ; preds = %bb.e
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.ap = getelementptr inbounds nuw i8, ptr %i.r, i64 6
  %i.aq = load ptr, ptr %i.b, align 8, !tbaa !505
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = load i32, ptr %i.g, align 8, !tbaa !506
  %i.av = zext i32 %i.au to i64
  %.not.i.i.i.i = icmp ugt i64 %i.at, %i.av
  br i1 %.not.i.i.i.i, label %_ZNK2OT8OffsetToINS_9BaseCoordENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit5.thread23, label %bb.g, !prof !408

bb.g:                                             ; preds = %bb.f
  %i.aw = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.ax = load i16, ptr %i.aw, align 1, !tbaa !283 ; 2 uses
  %i.ay = icmp eq i16 %i.ax, 0
  br i1 %i.ay, label %_ZNK2OT8OffsetToINS_9BaseCoordENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit5.thread, label %_ZNK2OT8OffsetToINS_9BaseCoordENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit5

_ZNK2OT8OffsetToINS_9BaseCoordENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit5: ; preds = %bb.g
  %i.az = tail call noundef i16 @llvm.bswap.i16(i16 %i.ax)
  %i.ba = zext i16 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ba
  %i.bc = tail call noundef zeroext i1 @_ZNK2OT6Device8sanitizeEP21hb_sanitize_context_t(ptr noundef nonnull align 1 dereferenceable(8) %i.bb, ptr noundef nonnull align 8 dereferenceable(62) %1)
  br i1 %i.bc, label %_ZNK2OT8OffsetToINS_9BaseCoordENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit5.thread, label %_ZNK2OT8OffsetToINS_9BaseCoordENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit5.thread23, !prof !672

_ZNK2OT8OffsetToINS_9BaseCoordENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit5.thread: ; preds = %.split43, %.split, %bb.g, %bb.c, %_ZNK2OT8OffsetToINS_9BaseCoordENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit5
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.be = load ptr, ptr %i.b, align 8, !tbaa !505
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = load i32, ptr %i.g, align 8, !tbaa !506
  %i.bj = zext i32 %i.bi to i64
  %.not.i7.not = icmp ugt i64 %i.bh, %i.bj
  br i1 %.not.i7.not, label %_ZNK2OT8OffsetToINS_9BaseCoordENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit5.thread23, label %bb.h, !prof !267

bb.h:                                             ; preds = %_ZNK2OT8OffsetToINS_9BaseCoordENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit5.thread
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.bk = load i16, ptr %i.k, align 1, !tbaa !283 ; 2 uses
  %i.bl = icmp eq i16 %i.bk, 0
  br i1 %i.bl, label %_ZNK2OT8OffsetToINS_9BaseCoordENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bm = tail call noundef i16 @llvm.bswap.i16(i16 %i.bk)
  %i.bn = zext i16 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 %i.bn ; 7 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 2
  %i.bq = load ptr, ptr %i.b, align 8, !tbaa !505
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = load i32, ptr %i.g, align 8, !tbaa !506
  %i.bv = zext i32 %i.bu to i64
  %.not.i.i.i9 = icmp ugt i64 %i.bt, %i.bv
  br i1 %.not.i.i.i9, label %_ZNK2OT8OffsetToINS_9BaseCoordENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit5.thread23, label %bb.j, !prof !267

bb.j:                                             ; preds = %bb.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.bw = load i16, ptr %i.bo, align 1, !tbaa !283
  %i.bx = tail call noundef i16 @llvm.bswap.i16(i16 %i.bw)
  switch i16 %i.bx, label %_ZNK2OT8OffsetToINS_9BaseCoordENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit5.thread23 [
    i16 1, label %.split45
    i16 2, label %.split44
    i16 3, label %bb.k
  ]

.split45:                                         ; preds = %bb.j
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.by = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.bz = load ptr, ptr %i.b, align 8, !tbaa !505
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = sub i64 %i.ca, %i.cb
  %i.cd = load i32, ptr %i.g, align 8, !tbaa !506
  %i.ce = zext i32 %i.cd to i64
  %.not49 = icmp ugt i64 %i.cc, %i.ce
  br i1 %.not49, label %_ZNK2OT8OffsetToINS_9BaseCoordENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit5.thread23, label %_ZNK2OT8OffsetToINS_9BaseCoordENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread, !prof !318

.split44:                                         ; preds = %bb.j
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.cg = load ptr, ptr %i.b, align 8, !tbaa !505
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = sub i64 %i.ch, %i.ci
  %i.ck = load i32, ptr %i.g, align 8, !tbaa !506
  %i.cl = zext i32 %i.ck to i64
  %.not48 = icmp ugt i64 %i.cj, %i.cl
  br i1 %.not48, label %_ZNK2OT8OffsetToINS_9BaseCoordENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit5.thread23, label %_ZNK2OT8OffsetToINS_9BaseCoordENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread, !prof !318

bb.k:                                             ; preds = %bb.j
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bo, i64 6
  %i.cn = load ptr, ptr %i.b, align 8, !tbaa !505
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = sub i64 %i.co, %i.cp
  %i.cr = load i32, ptr %i.g, align 8, !tbaa !506
  %i.cs = zext i32 %i.cr to i64
  %.not.i.i.i.i10 = icmp ugt i64 %i.cq, %i.cs
  br i1 %.not.i.i.i.i10, label %_ZNK2OT8OffsetToINS_9BaseCoordENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit5.thread23, label %bb.l, !prof !408

bb.l:                                             ; preds = %bb.k
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.cu = load i16, ptr %i.ct, align 1, !tbaa !283 ; 2 uses
  %i.cv = icmp eq i16 %i.cu, 0
  br i1 %i.cv, label %_ZNK2OT8OffsetToINS_9BaseCoordENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread, label %_ZNK2OT8OffsetToINS_9BaseCoordENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit

_ZNK2OT8OffsetToINS_9BaseCoordENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit: ; preds = %bb.l
  %i.cw = tail call noundef i16 @llvm.bswap.i16(i16 %i.cu)
  %i.cx = zext i16 %i.cw to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.cx
  %i.cz = tail call noundef zeroext i1 @_ZNK2OT6Device8sanitizeEP21hb_sanitize_context_t(ptr noundef nonnull align 1 dereferenceable(8) %i.cy, ptr noundef nonnull align 8 dereferenceable(62) %1)
  br i1 %i.cz, label %_ZNK2OT8OffsetToINS_9BaseCoordENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread, label %_ZNK2OT8OffsetToINS_9BaseCoordENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit5.thread23, !prof !672

_ZNK2OT8OffsetToINS_9BaseCoordENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread: ; preds = %.split45, %.split44, %bb.l, %bb.h, %_ZNK2OT8OffsetToINS_9BaseCoordENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit
  %i.da = load ptr, ptr %i.b, align 8, !tbaa !505
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = sub i64 %i.d, %i.db
  %i.dd = load i32, ptr %i.g, align 8, !tbaa !506
  %i.de = zext i32 %i.dd to i64
  %.not.i13 = icmp ugt i64 %i.dc, %i.de
  br i1 %.not.i13, label %_ZNK2OT8OffsetToINS_9BaseCoordENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit5.thread23, label %bb.m, !prof !711

bb.m:                                             ; preds = %_ZNK2OT8OffsetToINS_9BaseCoordENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.df = load i16, ptr %i.bd, align 1, !tbaa !283
  %i.dg = tail call noundef i16 @llvm.bswap.i16(i16 %i.df)
  %i.dh = zext i16 %i.dg to i32
  %i.di = shl nuw nsw i32 %i.dh, 3                ; 2 uses
  %i.dj = load ptr, ptr %i.b, align 8, !tbaa !505
  %i.dk = ptrtoint ptr %i.dj to i64
  %i.dl = sub i64 %i.d, %i.dk
  %i.dm = load i32, ptr %i.g, align 8, !tbaa !506
  %i.dn = zext i32 %i.dm to i64
  %.not.i.i.i14 = icmp ugt i64 %i.dl, %i.dn
  br i1 %.not.i.i.i14, label %_ZNK2OT8OffsetToINS_9BaseCoordENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit5.thread23, label %bb.n, !prof !711

bb.n:                                             ; preds = %bb.m
  %i.do = load ptr, ptr %i.j, align 8, !tbaa !504
  %i.dp = ptrtoint ptr %i.do to i64
  %i.dq = sub i64 %i.dp, %i.d
  %i.dr = trunc i64 %i.dq to i32
  %.not12.i.i.i = icmp ugt i32 %i.di, %i.dr
  br i1 %.not12.i.i.i, label %_ZNK2OT8OffsetToINS_9BaseCoordENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit5.thread23, label %_ZNK2OT7ArrayOfINS_16FeatMinMaxRecordENS_7NumTypeILb1EtLj2EEEE16sanitize_shallowEP21hb_sanitize_context_t.exit, !prof !711

_ZNK2OT7ArrayOfINS_16FeatMinMaxRecordENS_7NumTypeILb1EtLj2EEEE16sanitize_shallowEP21hb_sanitize_context_t.exit: ; preds = %bb.n
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !508
  %i.du = sub i32 %i.dt, %i.di                    ; 2 uses
  store i32 %i.du, ptr %i.ds, align 4, !tbaa !508
  %i.dv = icmp sgt i32 %i.du, 0
  br i1 %i.dv, label %bb.o, label %_ZNK2OT8OffsetToINS_9BaseCoordENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit5.thread23, !prof !672

bb.o:                                             ; preds = %_ZNK2OT7ArrayOfINS_16FeatMinMaxRecordENS_7NumTypeILb1EtLj2EEEE16sanitize_shallowEP21hb_sanitize_context_t.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.dw = load i16, ptr %i.bd, align 1, !tbaa !283 ; 2 uses
  %.not.i33.not = icmp eq i16 %i.dw, 0
  br i1 %.not.i33.not, label %_ZNK2OT8OffsetToINS_9BaseCoordENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit5.thread23, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.o
  %i.dx = tail call noundef i16 @llvm.bswap.i16(i16 %i.dw)
  %wide.trip.count = zext i16 %i.dx to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.dz = tail call noundef zeroext i1 @_ZNK2OT16FeatMinMaxRecord8sanitizeEP21hb_sanitize_context_tPKv(ptr noundef nonnull align 1 dereferenceable(8) %i.dy, ptr noundef nonnull align 8 dereferenceable(62) %1, ptr noundef nonnull %0) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp ne i64 %indvars.iv.next, %wide.trip.count
  %or.cond.not = select i1 %i.dz, i1 %exitcond.not, i1 false
  br i1 %or.cond.not, label %.lr.ph, label %_ZNK2OT8OffsetToINS_9BaseCoordENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit5.thread23, !prof !704, !llvm.loop !5992

_ZNK2OT8OffsetToINS_9BaseCoordENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit5.thread23: ; preds = %.lr.ph, %.split45, %.split44, %.split43, %.split, %bb.o, %_ZNK2OT7ArrayOfINS_16FeatMinMaxRecordENS_7NumTypeILb1EtLj2EEEE16sanitize_shallowEP21hb_sanitize_context_t.exit, %_ZNK2OT8OffsetToINS_9BaseCoordENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread, %bb.n, %bb.m, %bb.k, %bb.i, %bb.j, %_ZNK2OT8OffsetToINS_9BaseCoordENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit5.thread, %bb.f, %bb.d, %bb.e, %bb.b, %_ZNK2OT8OffsetToINS_9BaseCoordENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit, %_ZNK2OT8OffsetToINS_9BaseCoordENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit5, %bb.a
  %i.ea = phi i1 [ false, %_ZNK2OT8OffsetToINS_9BaseCoordENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit ], [ false, %_ZNK2OT8OffsetToINS_9BaseCoordENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit5 ], [ false, %bb.a ], [ false, %bb.k ], [ false, %_ZNK2OT8OffsetToINS_9BaseCoordENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit5.thread ], [ false, %bb.b ], [ false, %bb.f ], [ false, %bb.e ], [ false, %bb.d ], [ false, %bb.j ], [ false, %bb.i ], [ false, %bb.m ], [ false, %_ZNK2OT7ArrayOfINS_16FeatMinMaxRecordENS_7NumTypeILb1EtLj2EEEE16sanitize_shallowEP21hb_sanitize_context_t.exit ], [ false, %bb.n ], [ false, %_ZNK2OT8OffsetToINS_9BaseCoordENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread ], [ true, %bb.o ], [ false, %.split45 ], [ false, %.split ], [ false, %.split43 ], [ false, %.split44 ], [ %i.dz, %.lr.ph ]
  ret i1 %i.ea
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2OT16FeatMinMaxRecord8sanitizeEP21hb_sanitize_context_tPKv(ptr noundef nonnull align 1 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 10 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !505
  %i.d = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 10 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !506
  %i.i = zext i32 %i.h to i64                     ; 2 uses
  %.not = icmp ugt i64 %i.f, %i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 2 uses
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = sub i64 %i.k, %i.e
  %.not.i.not = icmp ugt i64 %i.l, %i.i
  %or.cond = select i1 %.not, i1 true, i1 %.not.i.not, !prof !408
  br i1 %or.cond, label %_ZNK2OT8OffsetToINS_9BaseCoordENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit6.thread17, label %bb.b, !prof !408

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.n = load i16, ptr %i.m, align 1, !tbaa !283  ; 2 uses
  %i.o = icmp eq i16 %i.n, 0
  br i1 %i.o, label %_ZNK2OT8OffsetToINS_9BaseCoordENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit6.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = tail call noundef i16 @llvm.bswap.i16(i16 %i.n)
  %i.q = zext i16 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 %i.q ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !505
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = load i32, ptr %i.g, align 8, !tbaa !506
  %i.y = zext i32 %i.x to i64
  %.not.i.i.i = icmp ugt i64 %i.w, %i.y
  br i1 %.not.i.i.i, label %_ZNK2OT8OffsetToINS_9BaseCoordENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit6.thread17, label %bb.d, !prof !267

bb.d:                                             ; preds = %bb.c
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.z = load i16, ptr %i.r, align 1, !tbaa !283
  %i.aa = tail call noundef i16 @llvm.bswap.i16(i16 %i.z)
  switch i16 %i.aa, label %_ZNK2OT8OffsetToINS_9BaseCoordENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit6.thread17 [
    i16 1, label %.split27
    i16 2, label %.split
    i16 3, label %bb.e
  ]

.split27:                                         ; preds = %bb.d
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.ac = load ptr, ptr %i.b, align 8, !tbaa !505
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = load i32, ptr %i.g, align 8, !tbaa !506
  %i.ah = zext i32 %i.ag to i64
  %.not29 = icmp ugt i64 %i.af, %i.ah
  br i1 %.not29, label %_ZNK2OT8OffsetToINS_9BaseCoordENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit6.thread17, label %_ZNK2OT8OffsetToINS_9BaseCoordENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit6.thread, !prof !318

.split:                                           ; preds = %bb.d
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.ai = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.aj = load ptr, ptr %i.b, align 8, !tbaa !505
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = load i32, ptr %i.g, align 8, !tbaa !506
  %i.ao = zext i32 %i.an to i64
  %.not28 = icmp ugt i64 %i.am, %i.ao
  br i1 %.not28, label %_ZNK2OT8OffsetToINS_9BaseCoordENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit6.thread17, label %_ZNK2OT8OffsetToINS_9BaseCoordENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit6.thread, !prof !318

bb.e:                                             ; preds = %bb.d
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.ap = getelementptr inbounds nuw i8, ptr %i.r, i64 6
  %i.aq = load ptr, ptr %i.b, align 8, !tbaa !505
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = load i32, ptr %i.g, align 8, !tbaa !506
  %i.av = zext i32 %i.au to i64
  %.not.i.i.i.i = icmp ugt i64 %i.at, %i.av
  br i1 %.not.i.i.i.i, label %_ZNK2OT8OffsetToINS_9BaseCoordENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit6.thread17, label %bb.f, !prof !408

bb.f:                                             ; preds = %bb.e
  %i.aw = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.ax = load i16, ptr %i.aw, align 1, !tbaa !283 ; 2 uses
  %i.ay = icmp eq i16 %i.ax, 0
  br i1 %i.ay, label %_ZNK2OT8OffsetToINS_9BaseCoordENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit6.thread, label %_ZNK2OT8OffsetToINS_9BaseCoordENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit6

_ZNK2OT8OffsetToINS_9BaseCoordENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit6: ; preds = %bb.f
  %i.az = tail call noundef i16 @llvm.bswap.i16(i16 %i.ax)
  %i.ba = zext i16 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ba
  %i.bc = tail call noundef zeroext i1 @_ZNK2OT6Device8sanitizeEP21hb_sanitize_context_t(ptr noundef nonnull align 1 dereferenceable(8) %i.bb, ptr noundef nonnull align 8 dereferenceable(62) %1)
  br i1 %i.bc, label %_ZNK2OT8OffsetToINS_9BaseCoordENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit6.thread, label %_ZNK2OT8OffsetToINS_9BaseCoordENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit6.thread17, !prof !672

_ZNK2OT8OffsetToINS_9BaseCoordENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit6.thread: ; preds = %.split27, %.split, %bb.f, %bb.b, %_ZNK2OT8OffsetToINS_9BaseCoordENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit6
  %i.bd = load ptr, ptr %i.b, align 8, !tbaa !505
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = sub i64 %i.d, %i.be
  %i.bg = load i32, ptr %i.g, align 8, !tbaa !506
  %i.bh = zext i32 %i.bg to i64
  %.not.i7.not = icmp ugt i64 %i.bf, %i.bh
  br i1 %.not.i7.not, label %_ZNK2OT8OffsetToINS_9BaseCoordENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit6.thread17, label %bb.g, !prof !267

bb.g:                                             ; preds = %_ZNK2OT8OffsetToINS_9BaseCoordENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit6.thread
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.bi = load i16, ptr %i.j, align 1, !tbaa !283 ; 2 uses
  %i.bj = icmp eq i16 %i.bi, 0
  br i1 %i.bj, label %_ZNK2OT8OffsetToINS_9BaseCoordENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit6.thread17, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bk = tail call noundef i16 @llvm.bswap.i16(i16 %i.bi)
  %i.bl = zext i16 %i.bk to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 %i.bl ; 7 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 2
  %i.bo = load ptr, ptr %i.b, align 8, !tbaa !505
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = load i32, ptr %i.g, align 8, !tbaa !506
  %i.bt = zext i32 %i.bs to i64
  %.not.i.i.i9 = icmp ugt i64 %i.br, %i.bt
  br i1 %.not.i.i.i9, label %_ZNK2OT8OffsetToINS_9BaseCoordENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit6.thread17, label %bb.i, !prof !267

bb.i:                                             ; preds = %bb.h
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.bu = load i16, ptr %i.bm, align 1, !tbaa !283
  %i.bv = tail call noundef i16 @llvm.bswap.i16(i16 %i.bu)
  switch i16 %i.bv, label %_ZNK2OT8OffsetToINS_9BaseCoordENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit6.thread17 [
    i16 1, label %bb.j
    i16 2, label %bb.k
    i16 3, label %bb.l
  ]

bb.j:                                             ; preds = %bb.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.bx = load ptr, ptr %i.b, align 8, !tbaa !505
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = load i32, ptr %i.g, align 8, !tbaa !506
  %i.cc = zext i32 %i.cb to i64
  %i.cd = icmp ule i64 %i.ca, %i.cc
  br label %_ZNK2OT8OffsetToINS_9BaseCoordENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit6.thread17

bb.k:                                             ; preds = %bb.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.cf = load ptr, ptr %i.b, align 8, !tbaa !505
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = sub i64 %i.cg, %i.ch
  %i.cj = load i32, ptr %i.g, align 8, !tbaa !506
  %i.ck = zext i32 %i.cj to i64
  %i.cl = icmp ule i64 %i.ci, %i.ck
  br label %_ZNK2OT8OffsetToINS_9BaseCoordENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit6.thread17

bb.l:                                             ; preds = %bb.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bm, i64 6
  %i.cn = load ptr, ptr %i.b, align 8, !tbaa !505
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = sub i64 %i.co, %i.cp
  %i.cr = load i32, ptr %i.g, align 8, !tbaa !506
  %i.cs = zext i32 %i.cr to i64
  %.not.i.i.i.i10 = icmp ugt i64 %i.cq, %i.cs
  br i1 %.not.i.i.i.i10, label %_ZNK2OT8OffsetToINS_9BaseCoordENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit6.thread17, label %bb.m, !prof !408

bb.m:                                             ; preds = %bb.l
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.cu = load i16, ptr %i.ct, align 1, !tbaa !283 ; 2 uses
  %i.cv = icmp eq i16 %i.cu, 0
  br i1 %i.cv, label %_ZNK2OT8OffsetToINS_9BaseCoordENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit6.thread17, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cw = tail call noundef i16 @llvm.bswap.i16(i16 %i.cu)
  %i.cx = zext i16 %i.cw to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.cx
  %i.cz = tail call noundef zeroext i1 @_ZNK2OT6Device8sanitizeEP21hb_sanitize_context_t(ptr noundef nonnull align 1 dereferenceable(8) %i.cy, ptr noundef nonnull align 8 dereferenceable(62) %1)
  br label %_ZNK2OT8OffsetToINS_9BaseCoordENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit6.thread17
end_hunk_10
begin_hunk_11_@llvm.vector.reduce.smax.v4i32
!4234 = distinct !{!4234, !305}
!4235 = distinct !{!4235, !305}
!4236 = distinct !{!4236, !305}
!4237 = distinct !{!4237, !305}
!4238 = distinct !{!4238, !305}
!4239 = distinct !{!4239, !305}
!4240 = distinct !{!4240, !305}
!4241 = distinct !{!4241, !305}
!4242 = distinct !{!4242, !305}
!4243 = distinct !{!4243, !305}
!4244 = distinct !{null, null}
!4245 = distinct !{null, null}
!4246 = distinct !{null, null, null}
!4247 = distinct !{null, null, null, null, null, null}
!4248 = distinct !{null, null}
!4249 = distinct !{null, null, null, null, null}
!4250 = distinct !{!4250, !305}
!4251 = distinct !{null, null}
!4252 = distinct !{null, null, null, null, null}
!4253 = distinct !{!4253, !305}
!4254 = distinct !{!4254, !305}
!4255 = distinct !{ptr @_ZN13hb_blob_ptr_tIN2OT6Layout4GSUBEE7destroyEv, ptr @hb_blob_destroy, null, null, null, null}
!4256 = distinct !{!4256, !305}
!4257 = distinct !{null, ptr @hb_face_reference_table, null}
!4258 = distinct !{!4258, !305}
!4259 = distinct !{!4259, !305}
!4260 = distinct !{!4260, !305}
!4261 = distinct !{null}
!4262 = distinct !{!4262, !306, !307}
!4263 = distinct !{!4263, !307, !306}
!4264 = distinct !{!4264, !305}
!4265 = distinct !{!4265, !305}
!4266 = distinct !{!4266, !305}
!4267 = distinct !{!4267, !305}
!4268 = distinct !{ptr @_ZN13hb_blob_ptr_tIN2OT6Layout4GPOSEE7destroyEv, ptr @hb_blob_destroy, null, null, null, null}
!4269 = distinct !{!4269, !305}
!4270 = distinct !{!4270, !305}
!4271 = distinct !{!4271, !305}
!4272 = distinct !{!4272, !305}
!4273 = distinct !{null, ptr @hb_blob_destroy, null, null, null, null}
!4274 = distinct !{null, ptr @hb_face_reference_table, null}
!4275 = distinct !{!4275, !305}
!4276 = distinct !{!4276, !305}
!4277 = distinct !{!4277, !305}
!4278 = distinct !{!4278, !305}
!4279 = distinct !{!4279, !305}
!4280 = distinct !{!4280, !305}
!4281 = distinct !{!4281, !305}
!4282 = distinct !{!4282, !305}
!4283 = !{!"_ZTS29hb_ot_math_glyph_part_flags_t", !223, i64 0}
!4284 = !{!"_ZTS23hb_ot_math_glyph_part_t", !224, i64 0, !224, i64 4, !224, i64 8, !224, i64 12, !4283, i64 16}
!4285 = !{!4284, !224, i64 0}
!4286 = !{!4284, !224, i64 4}
!4287 = !{!4284, !224, i64 8}
!4288 = !{!4284, !224, i64 12}
!4289 = !{!4284, !4283, i64 16}
!4290 = distinct !{!4290, !305}
!4291 = distinct !{!4291, !305}
!4292 = distinct !{null, null}
!4293 = distinct !{!4293, !305}
!4294 = distinct !{!4294, !305}
!4295 = !{!1364, !515, i64 0}
!4296 = distinct !{!4296, i1 false, !"_ZL9hb_memcpyPvPKvm"}
!4297 = distinct !{!4297, !4296, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!4298 = distinct !{!4298, !4296, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!4299 = distinct !{!4299, i1 false, !"_ZL9hb_memcpyPvPKvm"}
!4300 = distinct !{!4300, !4299, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!4301 = distinct !{!4301, !4299, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!4302 = distinct !{!4302, i1 false, !"_ZL9hb_memcpyPvPKvm"}
!4303 = distinct !{!4303, !4302, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!4304 = distinct !{!4304, !4302, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!4305 = distinct !{!4305, i1 false, !"_ZL9hb_memcpyPvPKvm"}
!4306 = distinct !{!4306, !4305, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!4307 = distinct !{!4307, !4305, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!4308 = distinct !{!4308, i1 false, !"_ZL9hb_memcpyPvPKvm"}
!4309 = distinct !{!4309, !4308, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!4310 = distinct !{!4310, !4308, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!4311 = !{!1372, !227, i64 32}
!4312 = !{!4298, !4297}
!4313 = !{!4301, !4300}
!4314 = !{!4304, !4303}
!4315 = !{!4307, !4306}
!4316 = !{!4310, !4309}
!4317 = distinct !{!4317, i1 false, !"_ZL9hb_memcpyPvPKvm"}
!4318 = distinct !{!4318, !4317, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!4319 = distinct !{!4319, !4317, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!4320 = !{!4319, !4318}
!4321 = distinct !{!4321, i1 false, !"_ZL9hb_memcpyPvPKvm"}
!4322 = distinct !{!4322, !4321, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!4323 = distinct !{!4323, !4321, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!4324 = distinct !{!4324, !305}
!4325 = !{!4323, !4322}
!4326 = distinct !{null, null}
!4327 = distinct !{!4327, !305}
!4328 = distinct !{!4328, !305}
!4329 = distinct !{!4329, !305, !306, !307}
!4330 = distinct !{!4330, !305, !307, !306}
!4331 = distinct !{!4331, !305, !306, !307}
!4332 = distinct !{!4332, !305, !307, !306}
!4333 = distinct !{!4333, !305}
!4334 = distinct !{!4334, !305}
!4335 = distinct !{!4335, !305}
!4336 = distinct !{!4336, !305}
!4337 = !{!"_ZTSZN9hb_font_t35apply_glyph_h_origins_with_fallbackEP11hb_buffer_tiEUt_", !224, i64 0, !224, i64 4}
!4338 = !{!4337, !224, i64 0}
!4339 = !{!4337, !224, i64 4}
!4340 = distinct !{!4340, !305, !306, !307}
!4341 = distinct !{!4341, !305, !307, !306}
!4342 = distinct !{!4342, !305, !306, !307}
!4343 = distinct !{!4343, !305, !307, !306}
!4344 = distinct !{!4344, !305}
!4345 = distinct !{!4345, !305}
!4346 = distinct !{!4346, !305}
!4347 = distinct !{!4347, !305}
!4348 = distinct !{!4348, !305}
!4349 = distinct !{!4349, !305}
!4350 = distinct !{null, null, null, ptr @hb_font_get_glyph, null}
!4351 = distinct !{!4351, !305}
!4352 = distinct !{!4352, !305}
!4353 = distinct !{!4353, !305}
!4354 = distinct !{!4354, i1 false, !"_ZL9hb_memcpyPvPKvm"}
!4355 = distinct !{!4355, !4354, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!4356 = distinct !{!4356, !4354, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!4357 = distinct !{!4357, i1 false, !"_ZL9hb_memcpyPvPKvm"}
!4358 = distinct !{!4358, !4357, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!4359 = distinct !{!4359, !4357, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!4360 = distinct !{!4360, i1 false, !"_ZL9hb_memcpyPvPKvm"}
!4361 = distinct !{!4361, !4360, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!4362 = distinct !{!4362, !4360, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!4363 = distinct !{null, null, null, ptr @hb_font_get_glyph, null}
!4364 = distinct !{null, null, null, ptr @hb_font_get_nominal_glyph, null}
!4365 = distinct !{!4365, i1 false, !"_ZL9hb_memcpyPvPKvm"}
!4366 = distinct !{!4366, !4365, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!4367 = distinct !{!4367, !4365, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!4368 = distinct !{!4368, i1 false, !"_ZL9hb_memcpyPvPKvm"}
!4369 = distinct !{!4369, !4368, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!4370 = distinct !{!4370, !4368, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!4371 = distinct !{!4371, i1 false, !"_ZL9hb_memcpyPvPKvm"}
!4372 = distinct !{!4372, !4371, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!4373 = distinct !{!4373, !4371, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!4374 = distinct !{!4374, !305}
!4375 = distinct !{!4375, !305}
!4376 = distinct !{null, null, null, ptr @hb_font_get_glyph, null}
!4377 = distinct !{!4377, !305}
!4378 = distinct !{!4378, !305}
!4379 = distinct !{null, null, null, ptr @hb_font_get_nominal_glyph, null}
!4380 = distinct !{!4380, !305}
!4381 = distinct !{!4381, i1 false, !"_ZL9hb_memcpyPvPKvm"}
!4382 = distinct !{!4382, !4381, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!4383 = distinct !{!4383, !4381, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!4384 = distinct !{!4384, i1 false, !"_ZL9hb_memcpyPvPKvm"}
!4385 = distinct !{!4385, !4384, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!4386 = distinct !{!4386, !4384, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!4387 = distinct !{!4387, i1 false, !"_ZL9hb_memcpyPvPKvm"}
!4388 = distinct !{!4388, !4387, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!4389 = distinct !{!4389, !4387, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!4390 = distinct !{null, null, null, ptr @hb_font_get_glyph, null}
!4391 = distinct !{null, null, null, ptr @hb_font_get_nominal_glyph, null}
!4392 = distinct !{!4392, i1 false, !"_ZL9hb_memcpyPvPKvm"}
!4393 = distinct !{!4393, !4392, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!4394 = distinct !{!4394, !4392, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!4395 = distinct !{!4395, i1 false, !"_ZL9hb_memcpyPvPKvm"}
!4396 = distinct !{!4396, !4395, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!4397 = distinct !{!4397, !4395, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!4398 = distinct !{!4398, i1 false, !"_ZL9hb_memcpyPvPKvm"}
!4399 = distinct !{!4399, !4398, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!4400 = distinct !{!4400, !4398, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!4401 = distinct !{!4401, !305, !1183}
!4402 = !{!4356, !4355}
!4403 = !{!4359, !4358}
!4404 = !{!4362, !4361}
!4405 = !{!4367, !4366}
!4406 = !{!4370, !4369}
!4407 = !{!4373, !4372}
!4408 = !{!"_ZTS14ligature_set_t", !281, i64 0, !223, i64 2}
!4409 = !{!4408, !281, i64 0}
!4410 = !{!"_ZTSN14ligature_set_t16ligature_pairs_tE", !223, i64 0, !281, i64 2}
!4411 = !{!4410, !281, i64 2}
!4412 = !{!4383, !4382}
!4413 = !{!4386, !4385}
!4414 = !{!4389, !4388}
!4415 = !{!4394, !4393}
!4416 = !{!4397, !4396}
!4417 = !{!4400, !4399}
!4418 = distinct !{!4418, !305}
!4419 = distinct !{!4419, !305}
!4420 = distinct !{!4420, i1 false, !"_ZNK4$_29clIR17hb_sorted_array_tIN2OT11HBGlyphID16EER10hb_array_tIS3_ETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISA_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISB_EEE4iterEEEOSA_OSB_"}
!4421 = distinct !{!4421, !4420, !"_ZNK4$_29clIR17hb_sorted_array_tIN2OT11HBGlyphID16EER10hb_array_tIS3_ETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISA_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISB_EEE4iterEEEOSA_OSB_: argument 0"}
!4422 = !{!4421}
!4423 = distinct !{!4423, !305}
!4424 = !{!"_ZTS10hb_array_tIN2OT11HBGlyphID16EE", !1771, i64 0, !224, i64 8, !224, i64 12}
!4425 = !{!4424, !224, i64 8}
!4426 = !{!4424, !1771, i64 0}
!4427 = distinct !{!4427, i1 false, !"_ZorI13hb_zip_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EE10hb_array_tIS3_EE21hb_map_iter_factory_tIRK3$_6L24hb_function_sortedness_t1EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSF_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISF_Efp_EEEOSF_OSL_"}
!4428 = distinct !{!4428, !4427, !"_ZorI13hb_zip_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EE10hb_array_tIS3_EE21hb_map_iter_factory_tIRK3$_6L24hb_function_sortedness_t1EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSF_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISF_Efp_EEEOSF_OSL_: argument 0"}
!4429 = distinct !{!4429, i1 false, !"_ZN21hb_map_iter_factory_tIRK3$_6L24hb_function_sortedness_t1EEclI13hb_zip_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EE10hb_array_tIS9_EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSF_6item_tEEE5valueEvE4typeELPv0EEE13hb_map_iter_tISF_S2_LS3_1ELDnEESF_"}
!4430 = distinct !{!4430, !4429, !"_ZN21hb_map_iter_factory_tIRK3$_6L24hb_function_sortedness_t1EEclI13hb_zip_iter_tI17hb_sorted_array_tIN2OT11HBGlyphID16EE10hb_array_tIS9_EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSF_6item_tEEE5valueEvE4typeELPv0EEE13hb_map_iter_tISF_S2_LS3_1ELDnEESF_: argument 0"}
!4431 = distinct !{!4431, !305}
!4432 = !{!4430, !4428}
!4433 = distinct !{!4433, !305}
!4434 = !{!"branch_weights", i32 -102759400, i32 4193255}
!4435 = !{!"branch_weights", i32 2000, i32 1}
!4436 = distinct !{!4436, !305}
!4437 = distinct !{!4437, !305}
!4438 = distinct !{!4438, !305}
!4439 = distinct !{!4439, !305}
!4440 = distinct !{!4440, !306, !307}
!4441 = distinct !{!4441, !307, !306}
!4442 = distinct !{null}
!4443 = distinct !{!4443, i1 false, !"_ZL9hb_memcpyPvPKvm"}
!4444 = distinct !{!4444, !4443, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!4445 = distinct !{!4445, !4443, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!4446 = !{!4445, !4444}
!4447 = distinct !{!4447, i1 false, !"_ZL9hb_memcpyPvPKvm"}
!4448 = distinct !{!4448, !4447, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!4449 = distinct !{!4449, !4447, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!4450 = !{!4449, !4448}
!4451 = distinct !{!4451, !305}
!4452 = distinct !{!4452, i1 false, !"_ZL9hb_memcpyPvPKvm"}
!4453 = distinct !{!4453, !4452, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!4454 = distinct !{!4454, !4452, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!4455 = !{!4454, !4453}
!4456 = distinct !{!4456, !305}
!4457 = distinct !{!4457, !305}
!4458 = distinct !{!4458, !305}
!4459 = distinct !{!4459, !481}
!4460 = distinct !{!4460, !305}
!4461 = distinct !{!4461, !481}
!4462 = distinct !{!4462, !305}
!4463 = distinct !{!4463, !305}
!4464 = distinct !{!4464, !481}
!4465 = distinct !{!4465, !305}
!4466 = distinct !{!4466, !305}
!4467 = distinct !{!4467, !305}
!4468 = distinct !{!4468, !305}
!4469 = distinct !{!4469, i1 false, !"_ZL9hb_memcpyPvPKvm"}
!4470 = distinct !{!4470, !4469, !"_ZL9hb_memcpyPvPKvm: argument 1"}
!4471 = distinct !{!4471, !4469, !"_ZL9hb_memcpyPvPKvm: argument 0"}
!4472 = !{!4471, !4470}
!4473 = distinct !{!4473, !305}
!4474 = distinct !{!4474, i1 false, !"_ZorI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_4RuleINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_7RuleSetIS6_EEEL24hb_function_sortedness_t0ELPv0EE24hb_filter_iter_factory_tIZNKSI_5applyEPNS2_21hb_ot_apply_context_tERKNS2_25ContextApplyLookupContextEEUlRKS7_E0_RK3$_8ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS13_6item_tEEE5valueEvE4typeELSN_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS13_Efp_EEEOS13_OS18_"}
!4475 = distinct !{!4475, !4474, !"_ZorI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_4RuleINS2_6Layout10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS2_7RuleSetIS6_EEEL24hb_function_sortedness_t0ELPv0EE24hb_filter_iter_factory_tIZNKSI_5applyEPNS2_21hb_ot_apply_context_tERKNS2_25ContextApplyLookupContextEEUlRKS7_E0_RK3$_8ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS13_6item_tEEE5valueEvE4typeELSN_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS13_Efp_EEEOS13_OS18_: argument 0"}
!4476 = distinct !{!4476, i1 false, !"_ZN24hb_filter_iter_factory_tIZNK2OT7RuleSetINS0_6Layout10SmallTypesEE5applyEPNS0_21hb_ot_apply_context_tERKNS0_25ContextApplyLookupContextEEUlRKNS0_4RuleIS3_EEE0_RK3$_8EclI13hb_map_iter_tI10hb_array_tIKNS0_8OffsetToISB_NS0_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKS4_EL24hb_function_sortedness_t0ELPv0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS13_6item_tEEE5valueEvE4typeELS10_0EEE16hb_filter_iter_tIS13_SE_SH_LDnEES13_"}
!4477 = distinct !{!4477, !4476, !"_ZN24hb_filter_iter_factory_tIZNK2OT7RuleSetINS0_6Layout10SmallTypesEE5applyEPNS0_21hb_ot_apply_context_tERKNS0_25ContextApplyLookupContextEEUlRKNS0_4RuleIS3_EEE0_RK3$_8EclI13hb_map_iter_tI10hb_array_tIKNS0_8OffsetToISB_NS0_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKS4_EL24hb_function_sortedness_t0ELPv0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS13_6item_tEEE5valueEvE4typeELS10_0EEE16hb_filter_iter_tIS13_SE_SH_LDnEES13_: argument 0"}
!4478 = distinct !{!4478, !305}
!4479 = distinct !{!4479, i1 false, !"_ZorI16hb_filter_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS3_4RuleINS3_6Layout10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS3_7RuleSetIS7_EEEL24hb_function_sortedness_t0ELPv0EEZNKSJ_5applyEPNS3_21hb_ot_apply_context_tERKNS3_25ContextApplyLookupContextEEUlRKS8_E0_RK3$_8LSO_0EE21hb_map_iter_factory_tIZNKSJ_5applyESR_SU_EUlSW_E1_LSN_0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS16_6item_tEEE5valueEvE4typeELSO_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS16_Efp_EEEOS16_OS1B_"}
!4480 = distinct !{!4480, !4479, !"_ZorI16hb_filter_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS3_4RuleINS3_6Layout10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS3_7RuleSetIS7_EEEL24hb_function_sortedness_t0ELPv0EEZNKSJ_5applyEPNS3_21hb_ot_apply_context_tERKNS3_25ContextApplyLookupContextEEUlRKS8_E0_RK3$_8LSO_0EE21hb_map_iter_factory_tIZNKSJ_5applyESR_SU_EUlSW_E1_LSN_0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS16_6item_tEEE5valueEvE4typeELSO_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS16_Efp_EEEOS16_OS1B_: argument 0"}
!4481 = distinct !{!4481, i1 false, !"_ZN21hb_map_iter_factory_tIZNK2OT7RuleSetINS0_6Layout10SmallTypesEE5applyEPNS0_21hb_ot_apply_context_tERKNS0_25ContextApplyLookupContextEEUlRKNS0_4RuleIS3_EEE1_L24hb_function_sortedness_t0EEclI16hb_filter_iter_tI13hb_map_iter_tI10hb_array_tIKNS0_8OffsetToISB_NS0_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKS4_ELSF_0ELPv0EEZNKS4_5applyES6_S9_EUlSD_E0_RK3$_8LSY_0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS16_6item_tEEE5valueEvE4typeELSY_0EEESJ_IS16_SE_LSF_0ELDnEES16_"}
!4482 = distinct !{!4482, !4481, !"_ZN21hb_map_iter_factory_tIZNK2OT7RuleSetINS0_6Layout10SmallTypesEE5applyEPNS0_21hb_ot_apply_context_tERKNS0_25ContextApplyLookupContextEEUlRKNS0_4RuleIS3_EEE1_L24hb_function_sortedness_t0EEclI16hb_filter_iter_tI13hb_map_iter_tI10hb_array_tIKNS0_8OffsetToISB_NS0_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKS4_ELSF_0ELPv0EEZNKS4_5applyES6_S9_EUlSD_E0_RK3$_8LSY_0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS16_6item_tEEE5valueEvE4typeELSY_0EEESJ_IS16_SE_LSF_0ELDnEES16_: argument 0"}
!4483 = distinct !{!4483, !481}
!4484 = distinct !{!4484, !305}
!4485 = distinct !{!4485, !305}
!4486 = distinct !{!4486, !481}
!4487 = !{!4477, !4475}
!4488 = !{!4482, !4480}
!4489 = !{!"p1 _ZTSN2OT25ContextApplyLookupContextE", !227, i64 0}
!4490 = !{!4489, !4489, i64 0}
!4491 = !{!1848, !227, i64 0}
!4492 = distinct !{!4492, !305}
!4493 = distinct !{!4493, !305}
!4494 = distinct !{!4494, !481}
!4495 = distinct !{!4495, !305, !307, !306}
!4496 = distinct !{null}
!4497 = distinct !{!4497, !305, !306, !307}
!4498 = distinct !{!4498, !305, !306, !307}
!4499 = distinct !{!4499, !305, !307, !306}
!4500 = distinct !{!4500, !305, !307, !306}
!4501 = distinct !{!4501, !305}
!4502 = distinct !{!4502, !481}
!4503 = !{!1847, !227, i64 0}
!4504 = distinct !{!4504, !305}
!4505 = distinct !{!4505, i1 false, !"_ZorI10hb_array_tIKN2OT8OffsetToINS1_9ChainRuleINS1_6Layout10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEEE21hb_map_iter_factory_tI12hb_partial_tILj2EPK4$_51PKNS1_12ChainRuleSetIS5_EEEL24hb_function_sortedness_t0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSP_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISP_Efp_EEEOSP_OSV_"}
!4506 = distinct !{!4506, !4505, !"_ZorI10hb_array_tIKN2OT8OffsetToINS1_9ChainRuleINS1_6Layout10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEEE21hb_map_iter_factory_tI12hb_partial_tILj2EPK4$_51PKNS1_12ChainRuleSetIS5_EEEL24hb_function_sortedness_t0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSP_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISP_Efp_EEEOSP_OSV_: argument 0"}
!4507 = distinct !{!4507, i1 false, !"_ZN21hb_map_iter_factory_tI12hb_partial_tILj2EPK4$_51PKN2OT12ChainRuleSetINS4_6Layout10SmallTypesEEEEL24hb_function_sortedness_t0EEclI10hb_array_tIKNS4_8OffsetToINS4_9ChainRuleIS7_EENS4_7NumTypeILb1EtLj2EEEvLb1EEEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSP_6item_tEEE5valueEvE4typeELPv0EEE13hb_map_iter_tISP_SB_LSC_0ELDnEESP_"}
!4508 = distinct !{!4508, !4507, !"_ZN21hb_map_iter_factory_tI12hb_partial_tILj2EPK4$_51PKN2OT12ChainRuleSetINS4_6Layout10SmallTypesEEEEL24hb_function_sortedness_t0EEclI10hb_array_tIKNS4_8OffsetToINS4_9ChainRuleIS7_EENS4_7NumTypeILb1EtLj2EEEvLb1EEEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSP_6item_tEEE5valueEvE4typeELPv0EEE13hb_map_iter_tISP_SB_LSC_0ELDnEESP_: argument 0"}
!4509 = distinct !{!4509, i1 false, !"_ZorI16hb_filter_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS3_9ChainRuleINS3_6Layout10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS3_12ChainRuleSetIS7_EEEL24hb_function_sortedness_t0ELPv0EEZNKSJ_5applyEPNS3_21hb_ot_apply_context_tERKNS3_30ChainContextApplyLookupContextEEUlRKS8_E0_RK3$_8LSO_0EE21hb_map_iter_factory_tIZNKSJ_5applyESR_SU_EUlSW_E1_LSN_0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS16_6item_tEEE5valueEvE4typeELSO_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS16_Efp_EEEOS16_OS1B_"}
!4510 = distinct !{!4510, !4509, !"_ZorI16hb_filter_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS3_9ChainRuleINS3_6Layout10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS3_12ChainRuleSetIS7_EEEL24hb_function_sortedness_t0ELPv0EEZNKSJ_5applyEPNS3_21hb_ot_apply_context_tERKNS3_30ChainContextApplyLookupContextEEUlRKS8_E0_RK3$_8LSO_0EE21hb_map_iter_factory_tIZNKSJ_5applyESR_SU_EUlSW_E1_LSN_0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS16_6item_tEEE5valueEvE4typeELSO_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS16_Efp_EEEOS16_OS1B_: argument 0"}
!4511 = distinct !{!4511, i1 false, !"_ZN21hb_map_iter_factory_tIZNK2OT12ChainRuleSetINS0_6Layout10SmallTypesEE5applyEPNS0_21hb_ot_apply_context_tERKNS0_30ChainContextApplyLookupContextEEUlRKNS0_9ChainRuleIS3_EEE1_L24hb_function_sortedness_t0EEclI16hb_filter_iter_tI13hb_map_iter_tI10hb_array_tIKNS0_8OffsetToISB_NS0_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKS4_ELSF_0ELPv0EEZNKS4_5applyES6_S9_EUlSD_E0_RK3$_8LSY_0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS16_6item_tEEE5valueEvE4typeELSY_0EEESJ_IS16_SE_LSF_0ELDnEES16_"}
!4512 = distinct !{!4512, !4511, !"_ZN21hb_map_iter_factory_tIZNK2OT12ChainRuleSetINS0_6Layout10SmallTypesEE5applyEPNS0_21hb_ot_apply_context_tERKNS0_30ChainContextApplyLookupContextEEUlRKNS0_9ChainRuleIS3_EEE1_L24hb_function_sortedness_t0EEclI16hb_filter_iter_tI13hb_map_iter_tI10hb_array_tIKNS0_8OffsetToISB_NS0_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKS4_ELSF_0ELPv0EEZNKS4_5applyES6_S9_EUlSD_E0_RK3$_8LSY_0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS16_6item_tEEE5valueEvE4typeELSY_0EEESJ_IS16_SE_LSF_0ELDnEES16_: argument 0"}
!4513 = distinct !{!4513, !481}
!4514 = distinct !{!4514, !305}
!4515 = distinct !{!4515, !305}
!4516 = distinct !{!4516, !481}
!4517 = !{!4508, !4506}
!4518 = !{!4512, !4510}
!4519 = !{!"p1 _ZTSN2OT30ChainContextApplyLookupContextE", !227, i64 0}
!4520 = !{!4519, !4519, i64 0}
!4521 = distinct !{!4521, !305}
!4522 = distinct !{!4522, i1 false, !"_ZN24hb_filter_iter_factory_tIZNK2OT12ChainRuleSetINS0_6Layout10SmallTypesEE5applyEPNS0_21hb_ot_apply_context_tERKNS0_30ChainContextApplyLookupContextEEUlRKNS0_9ChainRuleIS3_EEE0_RK3$_8EclI13hb_map_iter_tI10hb_array_tIKNS0_8OffsetToISB_NS0_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKS4_EL24hb_function_sortedness_t0ELPv0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS13_6item_tEEE5valueEvE4typeELS10_0EEE16hb_filter_iter_tIS13_SE_SH_LDnEES13_"}
!4523 = distinct !{!4523, !4522, !"_ZN24hb_filter_iter_factory_tIZNK2OT12ChainRuleSetINS0_6Layout10SmallTypesEE5applyEPNS0_21hb_ot_apply_context_tERKNS0_30ChainContextApplyLookupContextEEUlRKNS0_9ChainRuleIS3_EEE0_RK3$_8EclI13hb_map_iter_tI10hb_array_tIKNS0_8OffsetToISB_NS0_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKS4_EL24hb_function_sortedness_t0ELPv0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS13_6item_tEEE5valueEvE4typeELS10_0EEE16hb_filter_iter_tIS13_SE_SH_LDnEES13_: argument 0"}
!4524 = distinct !{!4524, !305}
!4525 = !{!4523}
!4526 = !{!1852, !227, i64 0}
!4527 = !{!"p1 _ZTSN2OT8OffsetToINS_9ChainRuleINS_6Layout10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEE", !227, i64 0}
!4528 = !{!"_ZTS10hb_array_tIKN2OT8OffsetToINS0_9ChainRuleINS0_6Layout10SmallTypesEEENS0_7NumTypeILb1EtLj2EEEvLb1EEEE", !4527, i64 0, !224, i64 8, !224, i64 12}
!4529 = !{!4528, !224, i64 8}
!4530 = !{!4528, !224, i64 12}
!4531 = !{!4528, !4527, i64 0}
!4532 = distinct !{!4532, !481}
!4533 = distinct !{!4533, !481}
!4534 = !{i64 0, i64 24, !280}
!4535 = distinct !{!4535, !305}
!4536 = distinct !{null, null, null}
!4537 = distinct !{!4537, !305}
!4538 = distinct !{!4538, !305}
!4539 = distinct !{!4539, !305}
!4540 = distinct !{!4540, !305}
!4541 = distinct !{!4541, !481}
!4542 = distinct !{!4542, !305}
!4543 = distinct !{!4543, !305}
!4544 = distinct !{!4544, !305}
!4545 = distinct !{!4545, !305}
!4546 = distinct !{!4546, !305}
!4547 = distinct !{!4547, !481}
!4548 = distinct !{!4548, !305}
!4549 = distinct !{!4549, !305}
!4550 = distinct !{!4550, !305}
!4551 = distinct !{!4551, !305}
!4552 = distinct !{!4552, !305}
!4553 = distinct !{!4553, !305}
!4554 = distinct !{!4554, !305}
!4555 = distinct !{!4555, !305}
!4556 = distinct !{!4556, !305}
!4557 = distinct !{!4557, !481}
!4558 = distinct !{!4558, !305}
!4559 = distinct !{!4559, !305}
!4560 = distinct !{!4560, !481}
!4561 = distinct !{!4561, !481}
!4562 = distinct !{!4562, !305}
!4563 = distinct !{!4563, !305}
!4564 = distinct !{!4564, !305, !664}
!4565 = distinct !{!4565, !305}
!4566 = distinct !{!4566, !305}
!4567 = distinct !{!4567, !305}
!4568 = distinct !{!4568, !305}
!4569 = !{!1418, !224, i64 8}
!4570 = !{!1411, !1257, i64 0}
!4571 = !{!1411, !224, i64 8}
!4572 = !{!1418, !1416, i64 16}
!4573 = !{!1418, !1417, i64 20}
!4574 = distinct !{!4574, !305}
!4575 = distinct !{!4575, !305}
!4576 = distinct !{!4576, !305}
!4577 = distinct !{!4577, !305}
!4578 = distinct !{!4578, !305}
!4579 = distinct !{!4579, !305}
!4580 = distinct !{!4580, !305}
!4581 = distinct !{!4581, !305}
!4582 = distinct !{!4582, !305}
!4583 = distinct !{!4583, !305}
!4584 = distinct !{!4584, !305}
!4585 = distinct !{!4585, !305}
!4586 = distinct !{!4586, !305}
!4587 = distinct !{!4587, !305}
!4588 = distinct !{!4588, !305}
!4589 = distinct !{!4589, !305}
!4590 = distinct !{!4590, !305}
!4591 = distinct !{!4591, !305}
!4592 = distinct !{!4592, !305}
!4593 = distinct !{!4593, !305}
!4594 = !{!1418, !1415, i64 12}
!4595 = distinct !{!4595, !481}
!4596 = distinct !{!4596, !305}
!4597 = distinct !{!4597, !481}
!4598 = distinct !{!4598, !305}
!4599 = distinct !{!4599, !481}
!4600 = distinct !{!4600, !305}
!4601 = distinct !{!4601, !481}
!4602 = distinct !{!4602, !305}
!4603 = distinct !{!4603, !481}
!4604 = distinct !{!4604, !305}
!4605 = distinct !{!4605, !481}
!4606 = distinct !{!4606, !305}
!4607 = distinct !{!4607, !481}
!4608 = distinct !{!4608, !305}
!4609 = distinct !{!4609, !481}
!4610 = distinct !{!4610, !305}
!4611 = distinct !{!4611, !481}
!4612 = distinct !{!4612, !305}
!4613 = distinct !{!4613, !481}
!4614 = distinct !{!4614, !305}
!4615 = distinct !{!4615, !481}
!4616 = distinct !{!4616, !305}
!4617 = distinct !{!4617, !481}
!4618 = distinct !{!4618, !305}
!4619 = distinct !{!4619, !481}
!4620 = distinct !{!4620, !305}
!4621 = distinct !{!4621, !481}
!4622 = distinct !{!4622, !305}
!4623 = distinct !{!4623, !481}
!4624 = distinct !{!4624, !305}
!4625 = distinct !{!4625, !481}
!4626 = distinct !{!4626, !305}
!4627 = distinct !{!4627, !305}
!4628 = distinct !{!4628, !481}
!4629 = distinct !{!4629, !305}
!4630 = distinct !{!4630, !481}
!4631 = distinct !{!4631, !305}
!4632 = distinct !{!4632, !305}
!4633 = distinct !{!4633, !305}
!4634 = distinct !{!4634, !481}
!4635 = distinct !{!4635, !305}
end_hunk_11
