Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/harfbuzz?download=true
inline.NumInlined: 35471
inline.NumDeleted: 12449
loop-unroll.NumCompletelyUnrolled: 169
loop-unroll.NumRuntimeUnrolled: 273
loop-unroll.NumUnrolled: 472
begin_hunk_0_@_ZNK2OT13MathConstants9get_valueE21hb_ot_math_constant_tP9hb_font_t:bb.a
  %i.aa = lshr i64 %i.z, 16
  %i.ab = trunc i64 %i.aa to i32
  %i.ac = getelementptr i8, ptr %i.r, i64 -6
  %i.ad = load i16, ptr %i.ac, align 1, !tbaa !283 ; 2 uses
  %i.ae = icmp eq i16 %i.ad, 0
  %i.af = tail call i16 @llvm.bswap.i16(i16 %i.ad)
  %i.ag = zext i16 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %i.ag
  %.0.i.i.i = select i1 %i.ae, ptr @_hb_NullPool, ptr %i.ah, !prof !267
  %i.ai = tail call noundef i32 @_ZNK2OT6Device11get_x_deltaEP9hb_font_tRKNS_18ItemVariationStoreEPNS_17hb_scalar_cache_tE(ptr noundef nonnull align 1 dereferenceable(8) %.0.i.i.i, ptr noundef nonnull %2, ptr noundef nonnull align 1 dereferenceable(12) @_hb_NullPool, ptr noundef null)
  %i.aj = add nsw i32 %i.ai, %i.ab
  br label %bb.g

bb.e:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.ak = zext nneg i32 %1 to i64
  %i.al = getelementptr [4 x i8], ptr %0, i64 %i.ak ; 2 uses
  %i.am = getelementptr i8, ptr %i.al, i64 -8
  %i.an = load i16, ptr %i.am, align 1, !tbaa !283
  %i.ao = tail call noundef i16 @llvm.bswap.i16(i16 %i.an)
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !1047
  %i.ar = sext i16 %i.ao to i64
  %i.as = mul nsw i64 %i.aq, %i.ar
  %i.at = add nsw i64 %i.as, 32768
  %i.au = lshr i64 %i.at, 16
  %i.av = trunc i64 %i.au to i32
  %i.aw = getelementptr i8, ptr %i.al, i64 -6
  %i.ax = load i16, ptr %i.aw, align 1, !tbaa !283 ; 2 uses
  %i.ay = icmp eq i16 %i.ax, 0
  %i.az = tail call i16 @llvm.bswap.i16(i16 %i.ax)
  %i.ba = zext i16 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 %i.ba
  %.0.i.i.i9 = select i1 %i.ay, ptr @_hb_NullPool, ptr %i.bb, !prof !267
  %i.bc = tail call noundef i32 @_ZNK2OT6Device11get_y_deltaEP9hb_font_tRKNS_18ItemVariationStoreEPNS_17hb_scalar_cache_tE(ptr noundef nonnull align 1 dereferenceable(8) %.0.i.i.i9, ptr noundef nonnull %2, ptr noundef nonnull align 1 dereferenceable(12) @_hb_NullPool, ptr noundef null)
  %i.bd = add nsw i32 %i.bc, %i.av
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.bf = load i16, ptr %i.be, align 1, !tbaa !283
  %i.bg = tail call noundef i16 @llvm.bswap.i16(i16 %i.bf)
  %i.bh = sext i16 %i.bg to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ %i.bh, %bb.f ], [ %i.e, %bb.b ], [ %i.p, %bb.c ], [ %i.aj, %bb.d ], [ %i.bd, %bb.e ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK2OT23MathTopAccentAttachment9get_valueEjP9hb_font_t(ptr noundef nonnull align 1 dereferenceable(8) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 1, !tbaa !283    ; 2 uses
  %i.b = icmp eq i16 %i.a, 0
  %i.c = tail call i16 @llvm.bswap.i16(i16 %i.a)
  %i.d = zext i16 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %i.d
  %.0.i.i = select i1 %i.b, ptr @_hb_NullPool, ptr %i.e, !prof !267
  %i.f = tail call noundef i32 @_ZNK2OT6Layout6Common8Coverage12get_coverageEj(ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i, i32 noundef %1) ; 3 uses
  %i.g = icmp eq i32 %i.f, -1
  br i1 %i.g, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !638  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !280
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !639
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !641  ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !948
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.r = phi ptr [ %i.q, %bb.c ], [ null, %bb.b ]
  %i.s = tail call noundef i32 %i.k(ptr noundef nonnull align 8 dereferenceable(192) %2, ptr noundef %i.m, i32 noundef %1, ptr noundef %i.r) #59, !inline_history !54 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.u = load i32, ptr %i.t, align 8, !tbaa !949  ; 3 uses
  %.not8.i = icmp eq i32 %i.u, 0
  br i1 %.not8.i, label %_ZN9hb_font_t19get_glyph_h_advanceEjb.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.w = load i8, ptr %i.v, align 4, !tbaa !950, !range !380, !noundef !293
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %_ZN9hb_font_t19get_glyph_h_advanceEjb.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.z = load i32, ptr %i.y, align 8, !tbaa !951
  %i.aa = sub nsw i32 0, %i.u
  %i.ab = icmp slt i32 %i.z, 0
  %i.ac = select i1 %i.ab, i32 %i.aa, i32 %i.u
  %.not9.i = icmp eq i32 %i.s, 0
  %i.ad = select i1 %.not9.i, i32 0, i32 %i.ac
  %i.ae = add nsw i32 %i.ad, %i.s
  br label %_ZN9hb_font_t19get_glyph_h_advanceEjb.exit

_ZN9hb_font_t19get_glyph_h_advanceEjb.exit:       ; preds = %bb.d, %bb.e, %bb.f
  %.0.i = phi i32 [ %i.s, %bb.e ], [ %i.ae, %bb.f ], [ %i.s, %bb.d ]
  %i.af = sdiv i32 %.0.i, 2
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.ah = load i16, ptr %i.ag, align 1, !tbaa !283
  %i.ai = tail call noundef i16 @llvm.bswap.i16(i16 %i.ah)
  %i.aj = zext i16 %i.ai to i32
  %.not.i8 = icmp ult i32 %i.f, %i.aj
  br i1 %.not.i8, label %bb.h, label %_ZNK2OT7ArrayOfINS_15MathValueRecordENS_7NumTypeILb1EtLj2EEEEixEi.exit, !prof !268

bb.h:                                             ; preds = %bb.g
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #59, !srcloc !279
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.al = zext nneg i32 %i.f to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.al
  br label %_ZNK2OT7ArrayOfINS_15MathValueRecordENS_7NumTypeILb1EtLj2EEEEixEi.exit

_ZNK2OT7ArrayOfINS_15MathValueRecordENS_7NumTypeILb1EtLj2EEEEixEi.exit: ; preds = %bb.g, %bb.h
  %.0.i9 = phi ptr [ %i.am, %bb.h ], [ @_hb_NullPool, %bb.g ] ; 2 uses
  %i.an = load i16, ptr %.0.i9, align 1, !tbaa !283
  %i.ao = tail call noundef i16 @llvm.bswap.i16(i16 %i.an)
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !1048
  %i.ar = sext i16 %i.ao to i64
  %i.as = mul nsw i64 %i.aq, %i.ar
  %i.at = add nsw i64 %i.as, 32768
  %i.au = lshr i64 %i.at, 16
  %i.av = trunc i64 %i.au to i32
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.i9, i64 2
  %i.ax = load i16, ptr %i.aw, align 1, !tbaa !283 ; 2 uses
  %i.ay = icmp eq i16 %i.ax, 0
  %i.az = tail call i16 @llvm.bswap.i16(i16 %i.ax)
  %i.ba = zext i16 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 %i.ba
  %.0.i.i.i = select i1 %i.ay, ptr @_hb_NullPool, ptr %i.bb, !prof !267
  %i.bc = tail call noundef i32 @_ZNK2OT6Device11get_x_deltaEP9hb_font_tRKNS_18ItemVariationStoreEPNS_17hb_scalar_cache_tE(ptr noundef nonnull align 1 dereferenceable(8) %.0.i.i.i, ptr noundef nonnull %2, ptr noundef nonnull align 1 dereferenceable(12) @_hb_NullPool, ptr noundef null)
  %i.bd = add nsw i32 %i.bc, %i.av
  br label %bb.i

bb.i:                                             ; preds = %_ZNK2OT7ArrayOfINS_15MathValueRecordENS_7NumTypeILb1EtLj2EEEEixEi.exit, %_ZN9hb_font_t19get_glyph_h_advanceEjb.exit
  %.0 = phi i32 [ %i.af, %_ZN9hb_font_t19get_glyph_h_advanceEjb.exit ], [ %i.bd, %_ZNK2OT7ArrayOfINS_15MathValueRecordENS_7NumTypeILb1EtLj2EEEEixEi.exit ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK2OT8MathKern9get_valueEiP9hb_font_t(ptr noundef nonnull align 1 dereferenceable(6) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 3 uses
  %i.b = load i16, ptr %0, align 1, !tbaa !283    ; 2 uses
  %i.c = tail call noundef i16 @llvm.bswap.i16(i16 %i.b) ; 2 uses
  %.not32.i.not = icmp eq i16 %i.b, 0
  br i1 %.not32.i.not, label %_ZL15hb_bsearch_implIKN2OT15MathValueRecordEiJiP9hb_font_tPKNS0_8MathKernEEEbPjRKT0_PT_mmPFiPKvSF_DpT1_ESH_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.e = load i32, ptr %i.d, align 4, !tbaa !954
  %i.f = zext i16 %i.c to i32
  %i.g = add nsw i32 %i.f, -1                     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %.fr = freeze i32 %i.e
  %.inv9 = icmp slt i32 %.fr, 0
  br i1 %.inv9, label %.lr.ph.i.us, label %.lr.ph.i

.lr.ph.i.us:                                      ; preds = %.lr.ph.preheader.i, %bb.e
  %.02334.i.us = phi i32 [ %.2.i.us, %bb.e ], [ %i.g, %.lr.ph.preheader.i ] ; 2 uses
  %.02433.i.us = phi i32 [ %.226.i.us, %bb.e ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %i.i = add i32 %.02433.i.us, %.02334.i.us
  %i.j = lshr i32 %i.i, 1                         ; 4 uses
  %i.k = zext nneg i32 %i.j to i64
  %i.l = shl nuw nsw i64 %i.k, 2
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.l ; 2 uses
  %i.n = load i16, ptr %i.m, align 1, !tbaa !283
  %i.o = tail call noundef i16 @llvm.bswap.i16(i16 %i.n)
  %i.p = load i64, ptr %i.h, align 8, !tbaa !1047
  %i.q = sext i16 %i.o to i64
  %i.r = mul nsw i64 %i.p, %i.q
  %i.s = add nsw i64 %i.r, 32768
  %i.t = lshr i64 %i.s, 16
  %i.u = trunc i64 %i.t to i32
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  %i.w = load i16, ptr %i.v, align 1, !tbaa !283  ; 2 uses
  %i.x = icmp eq i16 %i.w, 0
  %i.y = tail call i16 @llvm.bswap.i16(i16 %i.w)
  %i.z = zext i16 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %i.z
  %.0.i.i.i.i.i.us = select i1 %i.x, ptr @_hb_NullPool, ptr %i.aa, !prof !267
  %i.ab = tail call noundef i32 @_ZNK2OT6Device11get_y_deltaEP9hb_font_tRKNS_18ItemVariationStoreEPNS_17hb_scalar_cache_tE(ptr noundef nonnull align 1 dereferenceable(8) %.0.i.i.i.i.i.us, ptr noundef nonnull %2, ptr noundef nonnull align 1 dereferenceable(12) @_hb_NullPool, ptr noundef null)
  %i.ac = add i32 %i.ab, %i.u                     ; 2 uses
  %.neg = sub i32 %i.ac, %1
  %i.ad = icmp slt i32 %.neg, 0
  br i1 %i.ad, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.us
  %.not31.i.us = icmp eq i32 %i.ac, %1
  br i1 %.not31.i.us, label %_ZL15hb_bsearch_implIKN2OT15MathValueRecordEiJiP9hb_font_tPKNS0_8MathKernEEEbPjRKT0_PT_mmPFiPKvSF_DpT1_ESH_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ae = add nuw nsw i32 %i.j, 1
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph.i.us
  %i.af = add nsw i32 %i.j, -1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.226.i.us = phi i32 [ %i.ae, %bb.c ], [ %.02433.i.us, %bb.d ] ; 3 uses
  %.2.i.us = phi i32 [ %.02334.i.us, %bb.c ], [ %i.af, %bb.d ] ; 2 uses
  %.not.not.i.us = icmp sgt i32 %.226.i.us, %.2.i.us
  br i1 %.not.not.i.us, label %_ZL15hb_bsearch_implIKN2OT15MathValueRecordEiJiP9hb_font_tPKNS0_8MathKernEEEbPjRKT0_PT_mmPFiPKvSF_DpT1_ESH_.exit, label %.lr.ph.i.us, !llvm.loop !4280

.lr.ph.i:                                         ; preds = %.lr.ph.preheader.i, %bb.i
  %.02334.i = phi i32 [ %.2.i, %bb.i ], [ %i.g, %.lr.ph.preheader.i ] ; 2 uses
  %.02433.i = phi i32 [ %.226.i, %bb.i ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %i.ag = add i32 %.02433.i, %.02334.i
  %i.ah = lshr i32 %i.ag, 1                       ; 4 uses
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = shl nuw nsw i64 %i.ai, 2
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aj ; 2 uses
  %i.al = load i16, ptr %i.ak, align 1, !tbaa !283
  %i.am = tail call noundef i16 @llvm.bswap.i16(i16 %i.al)
  %i.an = load i64, ptr %i.h, align 8, !tbaa !1047
  %i.ao = sext i16 %i.am to i64
  %i.ap = mul nsw i64 %i.an, %i.ao
  %i.aq = add nsw i64 %i.ap, 32768
  %i.ar = lshr i64 %i.aq, 16
  %i.as = trunc i64 %i.ar to i32
  %i.at = getelementptr inbounds nuw i8, ptr %i.ak, i64 2
  %i.au = load i16, ptr %i.at, align 1, !tbaa !283 ; 2 uses
  %i.av = icmp eq i16 %i.au, 0
  %i.aw = tail call i16 @llvm.bswap.i16(i16 %i.au)
  %i.ax = zext i16 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 %i.ax
  %.0.i.i.i.i.i = select i1 %i.av, ptr @_hb_NullPool, ptr %i.ay, !prof !267
  %i.az = tail call noundef i32 @_ZNK2OT6Device11get_y_deltaEP9hb_font_tRKNS_18ItemVariationStoreEPNS_17hb_scalar_cache_tE(ptr noundef nonnull align 1 dereferenceable(8) %.0.i.i.i.i.i, ptr noundef nonnull %2, ptr noundef nonnull align 1 dereferenceable(12) @_hb_NullPool, ptr noundef null)
  %i.ba = add i32 %i.az, %i.as                    ; 2 uses
  %i.bb = sub i32 %1, %i.ba
  %i.bc = icmp slt i32 %i.bb, 0
  br i1 %i.bc, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i
  %i.bd = add nsw i32 %i.ah, -1
  br label %bb.i

bb.g:                                             ; preds = %.lr.ph.i
  %.not31.i = icmp eq i32 %1, %i.ba
  br i1 %.not31.i, label %_ZL15hb_bsearch_implIKN2OT15MathValueRecordEiJiP9hb_font_tPKNS0_8MathKernEEEbPjRKT0_PT_mmPFiPKvSF_DpT1_ESH_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.be = add nuw nsw i32 %i.ah, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %.226.i = phi i32 [ %i.be, %bb.h ], [ %.02433.i, %bb.f ] ; 3 uses
  %.2.i = phi i32 [ %.02334.i, %bb.h ], [ %i.bd, %bb.f ] ; 2 uses
  %.not.not.i = icmp sgt i32 %.226.i, %.2.i
  br i1 %.not.not.i, label %_ZL15hb_bsearch_implIKN2OT15MathValueRecordEiJiP9hb_font_tPKNS0_8MathKernEEEbPjRKT0_PT_mmPFiPKvSF_DpT1_ESH_.exit, label %.lr.ph.i, !llvm.loop !4280

_ZL15hb_bsearch_implIKN2OT15MathValueRecordEiJiP9hb_font_tPKNS0_8MathKernEEEbPjRKT0_PT_mmPFiPKvSF_DpT1_ESH_.exit: ; preds = %bb.i, %bb.g, %bb.e, %bb.b, %bb.a
  %.not.lcssa.i = phi i32 [ 0, %bb.a ], [ 0, %bb.e ], [ 1, %bb.b ], [ 1, %bb.g ], [ 0, %bb.i ]
  %storemerge.i = phi i32 [ 0, %bb.a ], [ %.226.i.us, %bb.e ], [ %i.j, %bb.b ], [ %i.ah, %bb.g ], [ %.226.i, %bb.i ]
  %i.bf = zext i16 %i.c to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bf
  %i.bh = add nuw i32 %storemerge.i, %.not.lcssa.i
  %i.bi = zext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.bi ; 2 uses
  %i.bk = load i16, ptr %i.bj, align 1, !tbaa !283
  %i.bl = tail call noundef i16 @llvm.bswap.i16(i16 %i.bk)
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !1048
  %i.bo = sext i16 %i.bl to i64
  %i.bp = mul nsw i64 %i.bn, %i.bo
  %i.bq = add nsw i64 %i.bp, 32768
  %i.br = lshr i64 %i.bq, 16
  %i.bs = trunc i64 %i.br to i32
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bj, i64 2
  %i.bu = load i16, ptr %i.bt, align 1, !tbaa !283 ; 2 uses
  %i.bv = icmp eq i16 %i.bu, 0
  %i.bw = tail call i16 @llvm.bswap.i16(i16 %i.bu)
  %i.bx = zext i16 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 %i.bx
  %.0.i.i.i = select i1 %i.bv, ptr @_hb_NullPool, ptr %i.by, !prof !267
  %i.bz = tail call noundef i32 @_ZNK2OT6Device11get_x_deltaEP9hb_font_tRKNS_18ItemVariationStoreEPNS_17hb_scalar_cache_tE(ptr noundef nonnull align 1 dereferenceable(8) %.0.i.i.i, ptr noundef nonnull %2, ptr noundef nonnull align 1 dereferenceable(12) @_hb_NullPool, ptr noundef null)
  %i.ca = add nsw i32 %i.bz, %i.bs
  ret i32 %i.ca
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK2OT8MathKern11get_entriesEjPjP23hb_ot_math_kern_entry_tP9hb_font_t(ptr noundef nonnull align 1 dereferenceable(6) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.b = load i16, ptr %0, align 1, !tbaa !283
  %i.c = tail call noundef i16 @llvm.bswap.i16(i16 %i.b) ; 2 uses
  %i.d = zext i16 %i.c to i32
  %i.e = zext i16 %i.c to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.e
  %i.g = add nuw nsw i32 %i.d, 1                  ; 3 uses
  %i.h = icmp ne ptr %2, null
  %i.i = icmp ne ptr %3, null
  %or.cond = and i1 %i.h, %i.i
  br i1 %or.cond, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %.sroa.speculated33 = tail call i32 @llvm.umin.i32(i32 %1, i32 %i.g) ; 4 uses
  %i.j = load i32, ptr %2, align 4, !tbaa !324
  %i.k = add i32 %i.j, %.sroa.speculated33
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %i.k, i32 %i.g) ; 2 uses
  %i.l = sub nsw i32 %.sroa.speculated, %.sroa.speculated33
  store i32 %i.l, ptr %2, align 4, !tbaa !324
  %.not = icmp eq i32 %.sroa.speculated, %.sroa.speculated33
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 88
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.o = trunc nuw i64 %indvars.iv to i32
  %i.p = add i32 %.sroa.speculated33, %i.o        ; 2 uses
  %i.q = load i16, ptr %0, align 1, !tbaa !283
  %i.r = tail call noundef i16 @llvm.bswap.i16(i16 %i.q)
  %i.s = zext i16 %i.r to i32
  %i.t = icmp eq i32 %i.p, %i.s
  %.pre = zext i32 %i.p to i64                    ; 2 uses
  br i1 %i.t, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.pre ; 2 uses
  %i.v = load i16, ptr %i.u, align 1, !tbaa !283
  %i.w = tail call noundef i16 @llvm.bswap.i16(i16 %i.v)
  %i.x = load i64, ptr %i.m, align 8, !tbaa !1047
  %i.y = sext i16 %i.w to i64
  %i.z = mul nsw i64 %i.x, %i.y
  %i.aa = add nsw i64 %i.z, 32768
  %i.ab = lshr i64 %i.aa, 16
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  %i.ae = load i16, ptr %i.ad, align 1, !tbaa !283 ; 2 uses
  %i.af = icmp eq i16 %i.ae, 0
  %i.ag = tail call i16 @llvm.bswap.i16(i16 %i.ae)
  %i.ah = zext i16 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %i.ah
  %.0.i.i.i = select i1 %i.af, ptr @_hb_NullPool, ptr %i.ai, !prof !267
  %i.aj = tail call noundef i32 @_ZNK2OT6Device11get_y_deltaEP9hb_font_tRKNS_18ItemVariationStoreEPNS_17hb_scalar_cache_tE(ptr noundef nonnull align 1 dereferenceable(8) %.0.i.i.i, ptr noundef nonnull %4, ptr noundef nonnull align 1 dereferenceable(12) @_hb_NullPool, ptr noundef null)
  %i.ak = add nsw i32 %i.aj, %i.ac
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.d
  %.0 = phi i32 [ %i.ak, %bb.d ], [ 2147483647, %bb.c ]
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.pre ; 2 uses
  %i.am = load i16, ptr %i.al, align 1, !tbaa !283
  %i.an = tail call noundef i16 @llvm.bswap.i16(i16 %i.am)
  %i.ao = load i64, ptr %i.n, align 8, !tbaa !1048
  %i.ap = sext i16 %i.an to i64
  %i.aq = mul nsw i64 %i.ao, %i.ap
  %i.ar = add nsw i64 %i.aq, 32768
  %i.as = lshr i64 %i.ar, 16
  %i.at = trunc i64 %i.as to i32
  %i.au = getelementptr inbounds nuw i8, ptr %i.al, i64 2
  %i.av = load i16, ptr %i.au, align 1, !tbaa !283 ; 2 uses
  %i.aw = icmp eq i16 %i.av, 0
  %i.ax = tail call i16 @llvm.bswap.i16(i16 %i.av)
  %i.ay = zext i16 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 %i.ay
  %.0.i.i.i28 = select i1 %i.aw, ptr @_hb_NullPool, ptr %i.az, !prof !267
  %i.ba = tail call noundef i32 @_ZNK2OT6Device11get_x_deltaEP9hb_font_tRKNS_18ItemVariationStoreEPNS_17hb_scalar_cache_tE(ptr noundef nonnull align 1 dereferenceable(8) %.0.i.i.i28, ptr noundef nonnull %4, ptr noundef nonnull align 1 dereferenceable(12) @_hb_NullPool, ptr noundef null)
  %i.bb = add nsw i32 %i.ba, %i.at
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv ; 2 uses
  store i32 %.0, ptr %i.bc, align 4, !tbaa !324
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  store i32 %i.bb, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !324
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bd = load i32, ptr %2, align 4, !tbaa !324
  %i.be = zext i32 %i.bd to i64
  %i.bf = icmp samesign ult i64 %indvars.iv.next, %i.be
  br i1 %i.bf, label %bb.c, label %.loopexit, !llvm.loop !4281

.loopexit:                                        ; preds = %._crit_edge, %bb.b, %bb.a
  ret i32 %i.g
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK2OT17MathGlyphAssembly9get_partsE14hb_direction_tP9hb_font_tjPjP23hb_ot_math_glyph_part_tPi(ptr noundef nonnull align 1 dereferenceable(16) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp ne ptr %4, null
  %i.b = icmp ne ptr %5, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %_ZNK9hb_iter_tI13hb_zip_iter_tI10hb_array_tIKN2OT19MathGlyphPartRecordEES1_I23hb_ot_math_glyph_part_tEE9hb_pair_tIRS4_RS6_EE3endEv.exit, label %_ZNK13hb_zip_iter_tI10hb_array_tIKN2OT19MathGlyphPartRecordEES0_I23hb_ot_math_glyph_part_tEEneERKS7_.exit.thread

_ZNK9hb_iter_tI13hb_zip_iter_tI10hb_array_tIKN2OT19MathGlyphPartRecordEES1_I23hb_ot_math_glyph_part_tEE9hb_pair_tIRS4_RS6_EE3endEv.exit: ; preds = %bb.a
  %i.c = and i32 %1, -2
  %i.d = icmp eq i32 %i.c, 6
  %.in.v.i = select i1 %i.d, i64 96, i64 88
end_hunk_0
