Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/harfbuzz?download=true
inline.NumInlined: 35471
inline.NumDeleted: 12449
loop-unroll.NumCompletelyUnrolled: 169
loop-unroll.NumRuntimeUnrolled: 274
loop-unroll.NumUnrolled: 473
begin_hunk_0_@_ZN21hb_sanitize_context_t9_dispatchIN2OT8OffsetToINS1_6Layout6Common8CoverageENS1_7NumTypeILb1EjLj4EEEvLb1EEEJPKNS1_20MarkGlyphSetsFormat1EEEEDTcldtfp_8sanitizefpTspclsr3stdE7forwardIT0_Efp1_EEERKT_11hb_priorityILj1EEDpOSC_:bb.a
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
  br i1 %i.z, label %.lr.ph.i.i.i.i, label %.loopexit.i, !llvm.loop !3720

bb.e:                                             ; preds = %bb.c, %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @_hb_CrapPool, i8 0, i64 24, i1 false)
  br label %_ZN11hb_vector_tI15hb_set_digest_tLb0EE4pushEv.exit

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i.i, %bb.d
  store i32 %i.o, ptr %i.g, align 4, !tbaa !1726
  %i.aa = load ptr, ptr %i.h, align 8, !tbaa !1727
  %i.ab = zext i32 %i.n to i64
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %i.ab
  br label %_ZN11hb_vector_tI15hb_set_digest_tLb0EE4pushEv.exit

_ZN11hb_vector_tI15hb_set_digest_tLb0EE4pushEv.exit: ; preds = %bb.e, %.loopexit.i
  %.0.i = phi ptr [ @_hb_CrapPool, %bb.e ], [ %i.ac, %.loopexit.i ] ; 10 uses
  %i.ad = load i16, ptr %.0.i.i, align 1, !tbaa !283
  %i.ae = tail call noundef i16 @llvm.bswap.i16(i16 %i.ad)
  switch i16 %i.ae, label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit [
    i16 1, label %bb.f
    i16 2, label %bb.h
  ]

bb.f:                                             ; preds = %_ZN11hb_vector_tI15hb_set_digest_tLb0EE4pushEv.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 2
  %i.ag = load i16, ptr %i.af, align 1, !tbaa !283 ; 2 uses
  %i.ah = tail call noundef i16 @llvm.bswap.i16(i16 %i.ag)
  %.sroa.4.8.extract.trunc.i.i = zext i16 %i.ah to i32
  %.not.i.i.i.i.i = icmp eq i16 %i.ag, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  %.promoted.i.i.i.i.i = load i64, ptr %.0.i, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.i, i64 16 ; 2 uses
  %.promoted9.i.i.i.i.i = load i64, ptr %i.aj, align 8, !tbaa !357
  %.promoted11.i.i.i.i.i = load i64, ptr %i.ak, align 8, !tbaa !357
  br label %bb.g

._crit_edge.i.i.i.i.i:                            ; preds = %bb.g
  store i64 %i.av, ptr %.0.i, align 8, !tbaa !357
  store i64 %i.az, ptr %i.aj, align 8, !tbaa !357
  store i64 %i.be, ptr %i.ak, align 8, !tbaa !357
  br label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit

bb.g:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i.i
  %i.al = phi i64 [ %.promoted11.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.be, %bb.g ]
  %i.am = phi i64 [ %.promoted9.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.az, %bb.g ]
  %.08.i.i.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i.i.i ], [ %i.bg, %bb.g ]
  %.067.i.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i ], [ %i.bf, %bb.g ] ; 2 uses
  %i.an = phi i64 [ %.promoted.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.av, %bb.g ]
  %i.ao = load i16, ptr %.067.i.i.i.i.i, align 1, !tbaa !283
  %i.ap = tail call noundef i16 @llvm.bswap.i16(i16 %i.ao)
  %i.aq = zext i16 %i.ap to i32                   ; 3 uses
  %i.ar = lshr i32 %i.aq, 4
  %i.as = and i32 %i.ar, 63
  %i.at = zext nneg i32 %i.as to i64
  %i.au = shl nuw i64 1, %i.at
  %i.av = or i64 %i.au, %i.an                     ; 2 uses
  %i.aw = and i32 %i.aq, 63
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = shl nuw i64 1, %i.ax
  %i.az = or i64 %i.ay, %i.am                     ; 2 uses
  %i.ba = lshr i32 %i.aq, 6
  %i.bb = and i32 %i.ba, 63
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = shl nuw i64 1, %i.bc
  %i.be = or i64 %i.bd, %i.al                     ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.067.i.i.i.i.i, i64 2
  %i.bg = add nuw i32 %.08.i.i.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i32 %i.bg, %.sroa.4.8.extract.trunc.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %bb.g, !llvm.loop !162

bb.h:                                             ; preds = %_ZN11hb_vector_tI15hb_set_digest_tLb0EE4pushEv.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.bh = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 2
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4 ; 3 uses
  %i.bj = load i16, ptr %i.bh, align 1, !tbaa !283 ; 2 uses
  %i.bk = tail call noundef i16 @llvm.bswap.i16(i16 %i.bj)
  %i.bl = zext i16 %i.bk to i64
  %.idx.i.i = mul nuw nsw i64 %i.bl, 6
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.idx.i.i ; 2 uses
  %.not14.i.i = icmp eq i16 %i.bj, 0
  br i1 %.not14.i.i, label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.h
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.i, i64 16 ; 3 uses
  %.0.i.promoted = load i64, ptr %.0.i, align 8, !tbaa !357 ; 2 uses
  %.promoted = load i64, ptr %i.bn, align 8, !tbaa !357 ; 2 uses
  %.promoted23 = load i64, ptr %i.bo, align 8, !tbaa !357 ; 2 uses
  %.not.i.i1124 = icmp ne i64 %.0.i.promoted, -1
  %.not.1.i.i25 = icmp ne i64 %.promoted, -1
  %.not.2.i.i26 = icmp ne i64 %.promoted23, -1
  %i.bp = select i1 %.not.2.i.i26, i1 true, i1 %.not.1.i.i25
  %spec.select.2.i.i27 = select i1 %i.bp, i1 true, i1 %.not.i.i1124
  br i1 %spec.select.2.i.i27, label %.preheader.preheader.i.i.preheader, label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit

.preheader.preheader.i.i.preheader:               ; preds = %.lr.ph.i.i.preheader
  %i.bq = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 6
  %i.br = load i16, ptr %i.bq, align 1, !tbaa !283
  %i.bs = tail call noundef i16 @llvm.bswap.i16(i16 %i.br)
  %i.bt = load i16, ptr %i.bi, align 1, !tbaa !283
  %i.bu = tail call noundef i16 @llvm.bswap.i16(i16 %i.bt)
  br label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %.preheader.preheader.i.i.preheader, %.lr.ph.i.i.backedge
  %.in = phi i16 [ %i.dr, %.lr.ph.i.i.backedge ], [ %i.bs, %.preheader.preheader.i.i.preheader ]
  %.in37 = phi i16 [ %i.do, %.lr.ph.i.i.backedge ], [ %i.bu, %.preheader.preheader.i.i.preheader ]
  %.01115.i.i30 = phi ptr [ %.01115.i.i.be, %.lr.ph.i.i.backedge ], [ %i.bi, %.preheader.preheader.i.i.preheader ] ; 3 uses
  %.sink.i.i2129 = phi i64 [ %.sink.i.i, %.lr.ph.i.i.backedge ], [ %.0.i.promoted, %.preheader.preheader.i.i.preheader ]
  %storemerge.i.i2228 = phi i64 [ %storemerge.i.i, %.lr.ph.i.i.backedge ], [ %.promoted, %.preheader.preheader.i.i.preheader ]
  %i.bv = phi i64 [ %i.dm, %.lr.ph.i.i.backedge ], [ %.promoted23, %.preheader.preheader.i.i.preheader ]
  %i.bw = zext i16 %.in37 to i32                  ; 4 uses
  %i.bx = zext i16 %.in to i32                    ; 4 uses
  %i.by = lshr i32 %i.bx, 4                       ; 2 uses
  %i.bz = lshr i32 %i.bw, 4                       ; 2 uses
  %i.ca = sub nsw i32 %i.by, %i.bz
  %i.cb = icmp ult i32 %i.ca, 63                  ; 2 uses
  br i1 %i.cb, label %bb.i, label %.preheader.1.i.i

bb.i:                                             ; preds = %.preheader.preheader.i.i
  %i.cc = and i32 %i.bz, 63
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = shl nuw i64 1, %i.cd                    ; 2 uses
  %i.cf = and i32 %i.by, 63
  %i.cg = zext nneg i32 %i.cf to i64              ; 2 uses
  %i.ch = shl nuw i64 1, %i.cg
  %i.ci = icmp ult i64 %i.ch, %i.ce
  %.neg.i.i = sext i1 %i.ci to i64
  %factor.i.i = shl i64 2, %i.cg
  %i.cj = sub i64 %factor.i.i, %i.ce
  %i.ck = add i64 %i.cj, %.neg.i.i
  %i.cl = or i64 %i.ck, %.sink.i.i2129
  br label %.preheader.1.i.i

.preheader.1.i.i:                                 ; preds = %bb.i, %.preheader.preheader.i.i
  %.sink.i.i = phi i64 [ %i.cl, %bb.i ], [ -1, %.preheader.preheader.i.i ] ; 4 uses
  %i.cm = sub nsw i32 %i.bx, %i.bw
  %i.cn = icmp ugt i32 %i.cm, 62
  br i1 %i.cn, label %.preheader.2.i.i, label %bb.j

bb.j:                                             ; preds = %.preheader.1.i.i
  %i.co = and i32 %i.bw, 63
  %i.cp = zext nneg i32 %i.co to i64
  %i.cq = shl nuw i64 1, %i.cp                    ; 2 uses
  %i.cr = and i32 %i.bx, 63
  %i.cs = zext nneg i32 %i.cr to i64              ; 2 uses
  %i.ct = shl nuw i64 1, %i.cs
  %i.cu = icmp ult i64 %i.ct, %i.cq
  %.neg.1.i.i = sext i1 %i.cu to i64
  %factor.1.i.i = shl i64 2, %i.cs
  %i.cv = sub i64 %factor.1.i.i, %i.cq
  %i.cw = add i64 %i.cv, %.neg.1.i.i
  %i.cx = or i64 %i.cw, %storemerge.i.i2228
  br label %.preheader.2.i.i

.preheader.2.i.i:                                 ; preds = %bb.j, %.preheader.1.i.i
  %storemerge.i.i = phi i64 [ %i.cx, %bb.j ], [ -1, %.preheader.1.i.i ] ; 4 uses
  %.3.1.i.i = phi i1 [ true, %bb.j ], [ %i.cb, %.preheader.1.i.i ]
  %i.cy = lshr i32 %i.bx, 6                       ; 2 uses
  %i.cz = lshr i32 %i.bw, 6                       ; 2 uses
  %i.da = sub nsw i32 %i.cy, %i.cz
  %i.db = icmp ugt i32 %i.da, 62
  br i1 %i.db, label %_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI15hb_set_digest_tEEbPT_.exit, label %_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI15hb_set_digest_tEEbPT_.exit.thread14

_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI15hb_set_digest_tEEbPT_.exit.thread14: ; preds = %.preheader.2.i.i
  %i.dc = and i32 %i.cz, 63
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = shl nuw i64 1, %i.dd                    ; 2 uses
  %i.df = and i32 %i.cy, 63
  %i.dg = zext nneg i32 %i.df to i64              ; 2 uses
  %i.dh = shl nuw i64 1, %i.dg
  %i.di = icmp ult i64 %i.dh, %i.de
  %.neg.2.i.i = sext i1 %i.di to i64
  %factor.2.i.i = shl i64 2, %i.dg
  %i.dj = sub i64 %factor.2.i.i, %i.de
  %i.dk = add i64 %i.dj, %.neg.2.i.i
  %i.dl = or i64 %i.dk, %i.bv                     ; 2 uses
  store i64 %i.dl, ptr %i.bo, align 8, !tbaa !357
  %.old = getelementptr inbounds nuw i8, ptr %.01115.i.i30, i64 6 ; 2 uses
  %.not.i.i.old = icmp eq ptr %.old, %i.bm
  br i1 %.not.i.i.old, label %_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI15hb_set_digest_tEEbPT_.exit.thread14._ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit.loopexit_crit_edge, label %.lr.ph.i.i.backedge

.lr.ph.i.i.backedge:                              ; preds = %_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI15hb_set_digest_tEEbPT_.exit.thread14, %_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI15hb_set_digest_tEEbPT_.exit
  %i.dm = phi i64 [ %i.dl, %_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI15hb_set_digest_tEEbPT_.exit.thread14 ], [ -1, %_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI15hb_set_digest_tEEbPT_.exit ] ; 2 uses
  %.01115.i.i.be = phi ptr [ %.old, %_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI15hb_set_digest_tEEbPT_.exit.thread14 ], [ %i.dt, %_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI15hb_set_digest_tEEbPT_.exit ] ; 2 uses
  %i.dn = load i16, ptr %.01115.i.i.be, align 1, !tbaa !283
  %i.do = tail call noundef i16 @llvm.bswap.i16(i16 %i.dn)
  %i.dp = getelementptr inbounds nuw i8, ptr %.01115.i.i30, i64 8
  %i.dq = load i16, ptr %i.dp, align 1, !tbaa !283
  %i.dr = tail call noundef i16 @llvm.bswap.i16(i16 %i.dq)
  %.not.i.i11 = icmp ne i64 %.sink.i.i, -1
  %.not.1.i.i = icmp ne i64 %storemerge.i.i, -1
  %.not.2.i.i = icmp ne i64 %i.dm, -1
  %i.ds = select i1 %.not.2.i.i, i1 true, i1 %.not.1.i.i
  %spec.select.2.i.i = select i1 %i.ds, i1 true, i1 %.not.i.i11
  br i1 %spec.select.2.i.i, label %.preheader.preheader.i.i, label %.lr.ph.i.i._ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit.loopexit_crit_edge

_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI15hb_set_digest_tEEbPT_.exit: ; preds = %.preheader.2.i.i
  store i64 -1, ptr %i.bo, align 8, !tbaa !357
  %i.dt = getelementptr inbounds nuw i8, ptr %.01115.i.i30, i64 6 ; 2 uses
  %.not.i.i = icmp ne ptr %i.dt, %i.bm
  %or.cond.not = select i1 %.3.1.i.i, i1 %.not.i.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i.i.backedge, label %_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI15hb_set_digest_tEEbPT_.exit._ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit.loopexit_crit_edge

_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI15hb_set_digest_tEEbPT_.exit._ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit.loopexit_crit_edge: ; preds = %_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI15hb_set_digest_tEEbPT_.exit
  store i64 %.sink.i.i, ptr %.0.i, align 8, !tbaa !357
  store i64 %storemerge.i.i, ptr %i.bn, align 8, !tbaa !357
  br label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit

_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI15hb_set_digest_tEEbPT_.exit.thread14._ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit.loopexit_crit_edge: ; preds = %_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI15hb_set_digest_tEEbPT_.exit.thread14
  store i64 %.sink.i.i, ptr %.0.i, align 8, !tbaa !357
  store i64 %storemerge.i.i, ptr %i.bn, align 8, !tbaa !357
  br label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit

.lr.ph.i.i._ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit.loopexit_crit_edge: ; preds = %.lr.ph.i.i.backedge
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.i, i8 -1, i64 16, i1 false)
  br label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit

_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit: ; preds = %.lr.ph.i.i.preheader, %_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI15hb_set_digest_tEEbPT_.exit._ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit.loopexit_crit_edge, %_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI15hb_set_digest_tEEbPT_.exit.thread14._ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit.loopexit_crit_edge, %.lr.ph.i.i._ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit.loopexit_crit_edge, %_ZN11hb_vector_tI15hb_set_digest_tLb0EE4pushEv.exit, %bb.f, %._crit_edge.i.i.i.i.i, %bb.h
  %i.du = getelementptr inbounds nuw i8, ptr %.036, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.du, %i.f
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI15hb_set_digest_tEEbPT_(ptr noundef nonnull align 1 dereferenceable(6) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 1, !tbaa !283
  %i.b = tail call noundef i16 @llvm.bswap.i16(i16 %i.a)
  %i.c = zext i16 %i.b to i32                     ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.e = load i16, ptr %i.d, align 1, !tbaa !283
  %i.f = tail call noundef i16 @llvm.bswap.i16(i16 %i.e)
  %i.g = zext i16 %i.f to i32                     ; 4 uses
  %i.h = load i64, ptr %1, align 8, !tbaa !357    ; 2 uses
  %.not.i = icmp ne i64 %i.h, -1
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !357  ; 2 uses
  %.not.1.i = icmp ne i64 %i.j, -1
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !357  ; 2 uses
  %.not.2.i = icmp ne i64 %i.l, -1
  %i.m = select i1 %.not.2.i, i1 true, i1 %.not.1.i
  %spec.select.2.i = select i1 %i.m, i1 true, i1 %.not.i
  br i1 %spec.select.2.i, label %.preheader.preheader.i, label %_ZN15hb_set_digest_t9add_rangeEjj.exit

.preheader.preheader.i:                           ; preds = %bb.a
  %i.n = lshr i32 %i.g, 4                         ; 2 uses
  %i.o = lshr i32 %i.c, 4                         ; 2 uses
  %i.p = sub nsw i32 %i.n, %i.o
  %i.q = icmp ult i32 %i.p, 63                    ; 2 uses
  br i1 %i.q, label %bb.b, label %.preheader.1.i

bb.b:                                             ; preds = %.preheader.preheader.i
  %i.r = and i32 %i.o, 63
  %i.s = zext nneg i32 %i.r to i64
  %i.t = shl nuw i64 1, %i.s                      ; 2 uses
  %i.u = and i32 %i.n, 63
  %i.v = zext nneg i32 %i.u to i64                ; 2 uses
  %i.w = shl nuw i64 1, %i.v
  %i.x = icmp ult i64 %i.w, %i.t
  %.neg.i = sext i1 %i.x to i64
  %factor.i = shl i64 2, %i.v
  %i.y = sub i64 %factor.i, %i.t
  %i.z = add i64 %i.y, %.neg.i
  %i.aa = or i64 %i.z, %i.h
  br label %.preheader.1.i

end_hunk_0
begin_hunk_1_@_ZN18hb_unicode_funcs_t17vertical_char_forEj:bb.a
    i32 65306, label %bb.i
    i32 65307, label %bb.j
    i32 65311, label %bb.k
    i32 65339, label %bb.l
    i32 65341, label %bb.m
    i32 65343, label %bb.n
    i32 65371, label %bb.o
    i32 65373, label %bb.p
  ]

bb.f:                                             ; preds = %bb.e
  br label %bb.r

bb.g:                                             ; preds = %bb.e
  br label %bb.r

bb.h:                                             ; preds = %bb.e
  br label %bb.r

bb.i:                                             ; preds = %bb.e
  br label %bb.r

bb.j:                                             ; preds = %bb.e
  br label %bb.r

bb.k:                                             ; preds = %bb.e
  br label %bb.r

bb.l:                                             ; preds = %bb.e
  br label %bb.r

bb.m:                                             ; preds = %bb.e
  br label %bb.r

bb.n:                                             ; preds = %bb.e
  br label %bb.r

bb.o:                                             ; preds = %bb.e
  br label %bb.r

bb.p:                                             ; preds = %bb.e
  br label %bb.r

bb.q:                                             ; preds = %bb.c, %bb.b, %bb.e, %bb.d, %bb.a
  br label %bb.r

switch.lookup:                                    ; preds = %bb.b
  %i.d = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table._ZN18hb_unicode_funcs_t17vertical_char_forEj, i64 %i.d
  %switch.load = load i16, ptr %switch.gep, align 2
  %switch.ext = zext i16 %switch.load to i32
  br label %bb.r

switch.lookup10:                                  ; preds = %bb.c
  %i.e = zext nneg i32 %switch.tableidx7 to i64
  %switch.gep13 = getelementptr inbounds nuw [2 x i8], ptr @switch.table._ZN18hb_unicode_funcs_t17vertical_char_forEj.1633, i64 %i.e
  %switch.load14 = load i16, ptr %switch.gep13, align 2
  %switch.ext15 = zext i16 %switch.load14 to i32
  br label %bb.r

bb.r:                                             ; preds = %switch.lookup10, %switch.lookup, %bb.e, %bb.d, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %.0 = phi i32 [ %0, %bb.q ], [ 65080, %bb.p ], [ 65045, %bb.e ], [ 65079, %bb.o ], [ 65075, %bb.n ], [ %switch.ext, %switch.lookup ], [ 65096, %bb.m ], [ 65095, %bb.l ], [ 65046, %bb.k ], [ 65044, %bb.j ], [ 65043, %bb.i ], [ 65040, %bb.h ], [ 65078, %bb.g ], [ 65077, %bb.f ], [ 65076, %bb.d ], [ %switch.ext15, %switch.lookup10 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN9hb_font_t35apply_glyph_h_origins_with_fallbackEP11hb_buffer_ti(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca [32 x %struct.anon.1583], align 16  ; 20 uses
  %4 = alloca %struct.hb_font_extents_t, align 4  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #63
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.b = load i32, ptr %i.a, align 8, !tbaa !607  ; 6 uses
  %.not93 = icmp eq i32 %i.b, 0
  br i1 %.not93, label %._crit_edge, label %.lr.ph92

.lr.ph92:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph92, %.thread
  %.091 = phi i32 [ %2, %.lr.ph92 ], [ %.178, %.thread ] ; 2 uses
  %.04790 = phi i1 [ false, %.lr.ph92 ], [ %.277, %.thread ] ; 5 uses
  %.05089 = phi i32 [ 0, %.lr.ph92 ], [ %.25276, %.thread ] ; 5 uses
  %.05487 = phi i32 [ 0, %.lr.ph92 ], [ %i.hi, %.thread ] ; 13 uses
  %i.n = sub i32 %i.b, %.05487                    ; 3 uses
  %.sroa.speculated = call i32 @llvm.umin.i32(i32 %i.n, i32 32) ; 12 uses
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !589
  %i.p = zext i32 %.05487 to i64                  ; 2 uses
  %i.q = getelementptr inbounds nuw [20 x i8], ptr %i.o, i64 %i.p
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !638  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 120
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !280
  %i.u = load ptr, ptr %i.f, align 8, !tbaa !639
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !641  ; 2 uses
  %.not.i57 = icmp eq ptr %i.w, null
  br i1 %.not.i57, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 88
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !962
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.z = phi ptr [ %i.y, %bb.c ], [ null, %bb.b ]
  %i.aa = call noundef i32 %i.t(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef %i.u, i32 noundef %.sroa.speculated, ptr noundef %i.q, i32 noundef 20, ptr noundef nonnull %3, i32 noundef 8, ptr noundef nonnull %i.d, i32 noundef 8, ptr noundef %i.z) #63, !inline_history !57
  %.not = icmp eq i32 %i.aa, 0
  br i1 %.not, label %bb.e, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.ab = load i32, ptr %i.g, align 8, !tbaa !951
  %i.ac = icmp slt i32 %i.ab, 0
  %i.ad = load i32, ptr %i.h, align 8, !tbaa !949 ; 2 uses
  %i.ae = sub nsw i32 0, %i.ad
  %i.af = select i1 %i.ac, i32 %i.ae, i32 %i.ad   ; 2 uses
  %i.ag = load i32, ptr %i.i, align 4, !tbaa !954
  %i.ah = icmp slt i32 %i.ag, 0
  %i.ai = load i32, ptr %i.j, align 4, !tbaa !1004 ; 2 uses
  %i.aj = sub nsw i32 0, %i.ai
  %i.ak = select i1 %i.ah, i32 %i.aj, i32 %i.ai   ; 2 uses
  %i.al = load i8, ptr %i.k, align 4, !tbaa !950, !range !380, !noundef !293
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %_ZN9hb_font_t19get_glyph_h_originsEjPKjjPijS2_jb.exit.thread, label %.lr.ph.split.i.preheader

.lr.ph.split.i.preheader:                         ; preds = %.lr.ph.i
  %i.an = add nsw i32 %.sroa.speculated, -1       ; 2 uses
  %i.ao = zext i32 %i.an to i64
  %i.ap = add nuw nsw i64 %i.ao, 1                ; 2 uses
  %min.iters.check131 = icmp ult i32 %i.an, 3
  br i1 %min.iters.check131, label %.lr.ph.split.i.preheader158, label %vector.ph132

vector.ph132:                                     ; preds = %.lr.ph.split.i.preheader
  %n.vec133 = and i64 %i.ap, 8589934588           ; 4 uses
  %i.aq = trunc i64 %n.vec133 to i32
  %i.ar = shl nuw nsw i64 %n.vec133, 3            ; 2 uses
  %i.as = getelementptr i8, ptr %3, i64 %i.ar
  %i.at = getelementptr i8, ptr %i.d, i64 %i.ar
  %broadcast.splatinsert134 = insertelement <2 x i32> poison, i32 %i.af, i64 0
  %broadcast.splat135 = shufflevector <2 x i32> %broadcast.splatinsert134, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert136 = insertelement <2 x i32> poison, i32 %i.ak, i64 0
  %broadcast.splat137 = shufflevector <2 x i32> %broadcast.splatinsert136, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body138

vector.body138:                                   ; preds = %vector.body138, %vector.ph132
  %index139 = phi i64 [ 0, %vector.ph132 ], [ %index.next150, %vector.body138 ] ; 2 uses
  %i.au = shl i64 %index139, 3                    ; 2 uses
  %next.gep140 = getelementptr i8, ptr %3, i64 %i.au ; 2 uses
  %i.av = getelementptr i8, ptr %3, i64 %i.au
  %next.gep141 = getelementptr i8, ptr %i.av, i64 16 ; 2 uses
  %wide.vec142 = load <4 x i32>, ptr %next.gep140, align 16, !tbaa !324 ; 2 uses
  %strided.vec143 = shufflevector <4 x i32> %wide.vec142, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec144 = shufflevector <4 x i32> %wide.vec142, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %wide.vec145 = load <4 x i32>, ptr %next.gep141, align 16, !tbaa !324 ; 2 uses
  %strided.vec146 = shufflevector <4 x i32> %wide.vec145, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec147 = shufflevector <4 x i32> %wide.vec145, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %i.aw = add nsw <2 x i32> %strided.vec143, %broadcast.splat135
  %i.ax = add nsw <2 x i32> %strided.vec146, %broadcast.splat135
  %i.ay = add nsw <2 x i32> %strided.vec144, %broadcast.splat137
  %i.az = add nsw <2 x i32> %strided.vec147, %broadcast.splat137
  %interleaved.vec148 = shufflevector <2 x i32> %i.aw, <2 x i32> %i.ay, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec148, ptr %next.gep140, align 16, !tbaa !324
  %interleaved.vec149 = shufflevector <2 x i32> %i.ax, <2 x i32> %i.az, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec149, ptr %next.gep141, align 16, !tbaa !324
  %index.next150 = add nuw i64 %index139, 4       ; 2 uses
  %i.ba = icmp eq i64 %index.next150, %n.vec133
  br i1 %i.ba, label %middle.block151, label %vector.body138, !llvm.loop !4327

middle.block151:                                  ; preds = %vector.body138
  %cmp.n152 = icmp eq i64 %i.ap, %n.vec133
  br i1 %cmp.n152, label %_ZN9hb_font_t19get_glyph_h_originsEjPKjjPijS2_jb.exit.thread, label %.lr.ph.split.i.preheader158

.lr.ph.split.i.preheader158:                      ; preds = %.lr.ph.split.i.preheader, %middle.block151
  %.027.i.ph = phi i32 [ 0, %.lr.ph.split.i.preheader ], [ %i.aq, %middle.block151 ]
  %.02226.i.ph = phi ptr [ %3, %.lr.ph.split.i.preheader ], [ %i.as, %middle.block151 ]
  %.02325.i.ph = phi ptr [ %i.d, %.lr.ph.split.i.preheader ], [ %i.at, %middle.block151 ]
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i.preheader158, %.lr.ph.split.i
  %.027.i = phi i32 [ %i.bh, %.lr.ph.split.i ], [ %.027.i.ph, %.lr.ph.split.i.preheader158 ]
  %.02226.i = phi ptr [ %i.bf, %.lr.ph.split.i ], [ %.02226.i.ph, %.lr.ph.split.i.preheader158 ] ; 3 uses
  %.02325.i = phi ptr [ %i.bg, %.lr.ph.split.i ], [ %.02325.i.ph, %.lr.ph.split.i.preheader158 ] ; 3 uses
  %i.bb = load i32, ptr %.02226.i, align 4, !tbaa !324
  %i.bc = add nsw i32 %i.bb, %i.af
  store i32 %i.bc, ptr %.02226.i, align 4, !tbaa !324
  %i.bd = load i32, ptr %.02325.i, align 4, !tbaa !324
  %i.be = add nsw i32 %i.bd, %i.ak
  store i32 %i.be, ptr %.02325.i, align 4, !tbaa !324
  %i.bf = getelementptr inbounds nuw i8, ptr %.02226.i, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %.02325.i, i64 8
  %i.bh = add nuw i32 %.027.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.bh, %.sroa.speculated
  br i1 %exitcond.not.i, label %_ZN9hb_font_t19get_glyph_h_originsEjPKjjPijS2_jb.exit.thread, label %.lr.ph.split.i, !llvm.loop !4328

bb.e:                                             ; preds = %bb.d
  %i.bi = load ptr, ptr %i.c, align 8, !tbaa !589
  %i.bj = getelementptr inbounds nuw [20 x i8], ptr %i.bi, i64 %i.p
  %i.bk = load ptr, ptr %i.e, align 8, !tbaa !638 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 128
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !280
  %i.bn = load ptr, ptr %i.f, align 8, !tbaa !639
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !641 ; 2 uses
  %.not.i58 = icmp eq ptr %i.bp, null
  br i1 %.not.i58, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 96
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !964
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bs = phi ptr [ %i.br, %bb.f ], [ null, %bb.e ]
  %i.bt = call noundef i32 %i.bm(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef %i.bn, i32 noundef %.sroa.speculated, ptr noundef %i.bj, i32 noundef 20, ptr noundef nonnull %3, i32 noundef 8, ptr noundef nonnull %i.d, i32 noundef 8, ptr noundef %i.bs) #63, !inline_history !60
  %i.bu = icmp ne i32 %i.bt, 0                    ; 2 uses
  %i.bv = load i8, ptr %i.l, align 8, !tbaa !965, !range !380, !noundef !293
  %i.bw = trunc nuw i8 %i.bv to i1
  %or.cond.i = and i1 %i.bu, %i.bw
  br i1 %or.cond.i, label %.lr.ph.i60, label %_ZN9hb_font_t19get_glyph_v_originsEjPKjjPijS2_jb.exit

.lr.ph.i60:                                       ; preds = %bb.g
  %i.bx = load i32, ptr %i.g, align 8, !tbaa !951
  %i.by = icmp slt i32 %i.bx, 0
  %i.bz = load i32, ptr %i.h, align 8, !tbaa !949 ; 2 uses
  %i.ca = sub nsw i32 0, %i.bz
  %i.cb = select i1 %i.by, i32 %i.ca, i32 %i.bz   ; 2 uses
  %i.cc = load i32, ptr %i.i, align 4, !tbaa !954
  %i.cd = icmp slt i32 %i.cc, 0
  %i.ce = load i32, ptr %i.j, align 4, !tbaa !1004 ; 2 uses
  %i.cf = sub nsw i32 0, %i.ce
  %i.cg = select i1 %i.cd, i32 %i.cf, i32 %i.ce   ; 2 uses
  %i.ch = load i8, ptr %i.k, align 4, !tbaa !950, !range !380, !noundef !293
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %_ZN9hb_font_t19get_glyph_v_originsEjPKjjPijS2_jb.exit.thread, label %.lr.ph.split.i61.preheader

.lr.ph.split.i61.preheader:                       ; preds = %.lr.ph.i60
  %i.cj = add nsw i32 %.sroa.speculated, -1       ; 2 uses
  %i.ck = zext i32 %i.cj to i64
  %i.cl = add nuw nsw i64 %i.ck, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.cj, 3
  br i1 %min.iters.check, label %.lr.ph.split.i61.preheader157, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.i61.preheader
  %n.vec = and i64 %i.cl, 8589934588              ; 4 uses
  %i.cm = trunc i64 %n.vec to i32
  %i.cn = shl nuw nsw i64 %n.vec, 3               ; 2 uses
  %i.co = getelementptr i8, ptr %3, i64 %i.cn
  %i.cp = getelementptr i8, ptr %i.d, i64 %i.cn
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %i.cb, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert120 = insertelement <2 x i32> poison, i32 %i.cg, i64 0
  %broadcast.splat121 = shufflevector <2 x i32> %broadcast.splatinsert120, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cq = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %3, i64 %i.cq ; 2 uses
  %i.cr = getelementptr i8, ptr %3, i64 %i.cq
  %next.gep122 = getelementptr i8, ptr %i.cr, i64 16 ; 2 uses
  %wide.vec = load <4 x i32>, ptr %next.gep, align 16, !tbaa !324 ; 2 uses
  %strided.vec = shufflevector <4 x i32> %wide.vec, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec123 = shufflevector <4 x i32> %wide.vec, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %wide.vec124 = load <4 x i32>, ptr %next.gep122, align 16, !tbaa !324 ; 2 uses
  %strided.vec125 = shufflevector <4 x i32> %wide.vec124, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec126 = shufflevector <4 x i32> %wide.vec124, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %i.cs = add nsw <2 x i32> %strided.vec, %broadcast.splat
  %i.ct = add nsw <2 x i32> %strided.vec125, %broadcast.splat
  %i.cu = add nsw <2 x i32> %strided.vec123, %broadcast.splat121
  %i.cv = add nsw <2 x i32> %strided.vec126, %broadcast.splat121
  %interleaved.vec = shufflevector <2 x i32> %i.cs, <2 x i32> %i.cu, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec, ptr %next.gep, align 16, !tbaa !324
  %interleaved.vec127 = shufflevector <2 x i32> %i.ct, <2 x i32> %i.cv, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec127, ptr %next.gep122, align 16, !tbaa !324
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cw = icmp eq i64 %index.next, %n.vec
  br i1 %i.cw, label %middle.block, label %vector.body, !llvm.loop !4329

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cl, %n.vec
  br i1 %cmp.n, label %_ZN9hb_font_t19get_glyph_v_originsEjPKjjPijS2_jb.exit.thread, label %.lr.ph.split.i61.preheader157

.lr.ph.split.i61.preheader157:                    ; preds = %.lr.ph.split.i61.preheader, %middle.block
  %.027.i62.ph = phi i32 [ 0, %.lr.ph.split.i61.preheader ], [ %i.cm, %middle.block ]
  %.02226.i63.ph = phi ptr [ %3, %.lr.ph.split.i61.preheader ], [ %i.co, %middle.block ]
  %.02325.i64.ph = phi ptr [ %i.d, %.lr.ph.split.i61.preheader ], [ %i.cp, %middle.block ]
  br label %.lr.ph.split.i61

.lr.ph.split.i61:                                 ; preds = %.lr.ph.split.i61.preheader157, %.lr.ph.split.i61
  %.027.i62 = phi i32 [ %i.dd, %.lr.ph.split.i61 ], [ %.027.i62.ph, %.lr.ph.split.i61.preheader157 ]
  %.02226.i63 = phi ptr [ %i.db, %.lr.ph.split.i61 ], [ %.02226.i63.ph, %.lr.ph.split.i61.preheader157 ] ; 3 uses
  %.02325.i64 = phi ptr [ %i.dc, %.lr.ph.split.i61 ], [ %.02325.i64.ph, %.lr.ph.split.i61.preheader157 ] ; 3 uses
  %i.cx = load i32, ptr %.02226.i63, align 4, !tbaa !324
  %i.cy = add nsw i32 %i.cx, %i.cb
  store i32 %i.cy, ptr %.02226.i63, align 4, !tbaa !324
  %i.cz = load i32, ptr %.02325.i64, align 4, !tbaa !324
  %i.da = add nsw i32 %i.cz, %i.cg
  store i32 %i.da, ptr %.02325.i64, align 4, !tbaa !324
  %i.db = getelementptr inbounds nuw i8, ptr %.02226.i63, i64 8
  %i.dc = getelementptr inbounds nuw i8, ptr %.02325.i64, i64 8
  %i.dd = add nuw i32 %.027.i62, 1                ; 2 uses
  %exitcond.not.i65 = icmp eq i32 %i.dd, %.sroa.speculated
  br i1 %exitcond.not.i65, label %_ZN9hb_font_t19get_glyph_v_originsEjPKjjPijS2_jb.exit.thread, label %.lr.ph.split.i61, !llvm.loop !4330

_ZN9hb_font_t19get_glyph_v_originsEjPKjjPijS2_jb.exit: ; preds = %bb.g
  br i1 %i.bu, label %_ZN9hb_font_t19get_glyph_v_originsEjPKjjPijS2_jb.exit.thread, label %.thread

_ZN9hb_font_t19get_glyph_v_originsEjPKjjPijS2_jb.exit.thread: ; preds = %.lr.ph.split.i61, %middle.block, %.lr.ph.i60, %_ZN9hb_font_t19get_glyph_v_originsEjPKjjPijS2_jb.exit
  br i1 %.04790, label %bb.l, label %bb.h

bb.h:                                             ; preds = %_ZN9hb_font_t19get_glyph_v_originsEjPKjjPijS2_jb.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #63
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %4, i8 0, i64 48, i1 false)
  %i.de = load ptr, ptr %i.e, align 8, !tbaa !638 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 32
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !280
  %i.dh = load ptr, ptr %i.f, align 8, !tbaa !639
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !641 ; 2 uses
  %.not.i.i = icmp eq ptr %i.dj, null
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !970
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.dl = phi ptr [ %i.dk, %bb.i ], [ null, %bb.h ]
  %i.dm = call noundef i32 %i.dg(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef %i.dh, ptr noundef nonnull %4, ptr noundef %i.dl) #63, !inline_history !151
  %.not.i66 = icmp eq i32 %i.dm, 0
  %i.dn = load i32, ptr %i.i, align 4, !tbaa !954 ; 2 uses
  br i1 %.not.i66, label %bb.k, label %_ZN9hb_font_t18get_font_h_extentsEP17hb_font_extents_tb.exit.i

_ZN9hb_font_t18get_font_h_extentsEP17hb_font_extents_tb.exit.i: ; preds = %bb.j
  %i.do = icmp slt i32 %i.dn, 0
  %i.dp = load i32, ptr %i.j, align 4, !tbaa !1004 ; 2 uses
  %i.dq = sub nsw i32 0, %i.dp
  %i.dr = select i1 %i.do, i32 %i.dq, i32 %i.dp
  %i.ds = load i32, ptr %4, align 4, !tbaa !1001
  %i.dt = add nsw i32 %i.ds, %i.dr
  br label %_ZN9hb_font_t27get_h_extents_with_fallbackEP17hb_font_extents_t.exit

bb.k:                                             ; preds = %bb.j
  %i.du = sitofp i32 %i.dn to double
  %i.dv = fmul nnan double %i.du, 8.000000e-01
  %i.dw = fptosi double %i.dv to i32
  br label %_ZN9hb_font_t27get_h_extents_with_fallbackEP17hb_font_extents_t.exit

_ZN9hb_font_t27get_h_extents_with_fallbackEP17hb_font_extents_t.exit: ; preds = %_ZN9hb_font_t18get_font_h_extentsEP17hb_font_extents_tb.exit.i, %bb.k
  %.sink.i = phi i32 [ %i.dw, %bb.k ], [ %i.dt, %_ZN9hb_font_t18get_font_h_extentsEP17hb_font_extents_tb.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #63
  br label %bb.l

bb.l:                                             ; preds = %_ZN9hb_font_t27get_h_extents_with_fallbackEP17hb_font_extents_t.exit, %_ZN9hb_font_t19get_glyph_v_originsEjPKjjPijS2_jb.exit.thread
  %.151 = phi i32 [ %.05089, %_ZN9hb_font_t19get_glyph_v_originsEjPKjjPijS2_jb.exit.thread ], [ %.sink.i, %_ZN9hb_font_t27get_h_extents_with_fallbackEP17hb_font_extents_t.exit ] ; 3 uses
  %.not94 = icmp eq i32 %i.b, %.05487
  br i1 %.not94, label %_ZN9hb_font_t19get_glyph_h_originsEjPKjjPijS2_jb.exit.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.l
  %wide.trip.count = zext nneg i32 %.sroa.speculated to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN9hb_font_t19get_glyph_h_advanceEjb.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZN9hb_font_t19get_glyph_h_advanceEjb.exit ] ; 3 uses
  %i.dx = load ptr, ptr %i.c, align 8, !tbaa !589
  %i.dy = trunc nuw nsw i64 %indvars.iv to i32
  %i.dz = add i32 %.05487, %i.dy
  %i.ea = zext i32 %i.dz to i64
  %i.eb = getelementptr inbounds nuw [20 x i8], ptr %i.dx, i64 %i.ea
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !637
  %i.ed = load ptr, ptr %i.e, align 8, !tbaa !638 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 72
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !280
  %i.eg = load ptr, ptr %i.f, align 8, !tbaa !639
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !641 ; 2 uses
  %.not.i67 = icmp eq ptr %i.ei, null
  br i1 %.not.i67, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 40
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !948
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph
  %i.el = phi ptr [ %i.ek, %bb.m ], [ null, %.lr.ph ]
  %i.em = call noundef i32 %i.ef(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef %i.eg, i32 noundef %i.ec, ptr noundef %i.el) #63, !inline_history !54 ; 4 uses
  %i.en = load i32, ptr %i.h, align 8, !tbaa !949 ; 3 uses
  %.not8.i = icmp eq i32 %i.en, 0
  br i1 %.not8.i, label %_ZN9hb_font_t19get_glyph_h_advanceEjb.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.eo = load i8, ptr %i.k, align 4, !tbaa !950, !range !380, !noundef !293
  %i.ep = trunc nuw i8 %i.eo to i1
  br i1 %i.ep, label %_ZN9hb_font_t19get_glyph_h_advanceEjb.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.eq = load i32, ptr %i.g, align 8, !tbaa !951
  %i.er = sub nsw i32 0, %i.en
  %i.es = icmp slt i32 %i.eq, 0
  %i.et = select i1 %i.es, i32 %i.er, i32 %i.en
  %.not9.i = icmp eq i32 %i.em, 0
  %i.eu = select i1 %.not9.i, i32 0, i32 %i.et
  %i.ev = add nsw i32 %i.eu, %i.em
  br label %_ZN9hb_font_t19get_glyph_h_advanceEjb.exit

_ZN9hb_font_t19get_glyph_h_advanceEjb.exit:       ; preds = %bb.n, %bb.o, %bb.p
  %.0.i = phi i32 [ %i.em, %bb.o ], [ %i.ev, %bb.p ], [ %i.em, %bb.n ]
  %.neg = sdiv i32 %.0.i, -2
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv ; 3 uses
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !4336
  %i.ey = add i32 %.neg, %i.ex
  store i32 %i.ey, ptr %i.ew, align 8, !tbaa !4336
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 4 ; 2 uses
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !4337
  %i.fb = sub nsw i32 %i.fa, %.151
  store i32 %i.fb, ptr %i.ez, align 4, !tbaa !4337
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZN9hb_font_t19get_glyph_h_originsEjPKjjPijS2_jb.exit.thread, label %.lr.ph, !llvm.loop !4331

_ZN9hb_font_t19get_glyph_h_originsEjPKjjPijS2_jb.exit.thread: ; preds = %.lr.ph.split.i, %_ZN9hb_font_t19get_glyph_h_advanceEjb.exit, %middle.block151, %bb.l, %.lr.ph.i
  %.252 = phi i32 [ %.05089, %.lr.ph.i ], [ %.151, %bb.l ], [ %.05089, %middle.block151 ], [ %.151, %_ZN9hb_font_t19get_glyph_h_advanceEjb.exit ], [ %.05089, %.lr.ph.split.i ] ; 7 uses
  %.2 = phi i1 [ %.04790, %.lr.ph.i ], [ true, %bb.l ], [ %.04790, %middle.block151 ], [ true, %_ZN9hb_font_t19get_glyph_h_advanceEjb.exit ], [ %.04790, %.lr.ph.split.i ] ; 7 uses
  switch i32 %.091, label %.thread [
    i32 1, label %.preheader
    i32 -1, label %.preheader79
  ]

.preheader79:                                     ; preds = %_ZN9hb_font_t19get_glyph_h_originsEjPKjjPijS2_jb.exit.thread
  %.not95 = icmp eq i32 %i.b, %.05487
  br i1 %.not95, label %.thread, label %.lr.ph84

.lr.ph84:                                         ; preds = %.preheader79
  %i.fc = load ptr, ptr %i.m, align 8, !tbaa !611 ; 3 uses
  %wide.trip.count103 = zext nneg i32 %.sroa.speculated to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count103, 1
  %i.fd = icmp eq i32 %i.n, 1
  br i1 %i.fd, label %.epil.preheader, label %.lr.ph84.new

.lr.ph84.new:                                     ; preds = %.lr.ph84
  %unroll_iter = and i64 %wide.trip.count103, 62
  br label %bb.r

.preheader:                                       ; preds = %_ZN9hb_font_t19get_glyph_h_originsEjPKjjPijS2_jb.exit.thread
  %.not96 = icmp eq i32 %i.b, %.05487
  br i1 %.not96, label %.thread, label %.lr.ph86

.lr.ph86:                                         ; preds = %.preheader
  %i.fe = load ptr, ptr %i.m, align 8, !tbaa !611 ; 3 uses
  %wide.trip.count108 = zext nneg i32 %.sroa.speculated to i64 ; 2 uses
  %xtraiter162 = and i64 %wide.trip.count108, 1
  %i.ff = icmp eq i32 %i.n, 1
  br i1 %i.ff, label %.epil.preheader161, label %.lr.ph86.new

.lr.ph86.new:                                     ; preds = %.lr.ph86
  %unroll_iter165 = and i64 %wide.trip.count108, 62
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.lr.ph86.new
  %indvars.iv105 = phi i64 [ 0, %.lr.ph86.new ], [ %indvars.iv.next106.1, %bb.q ] ; 4 uses
  %niter166 = phi i64 [ 0, %.lr.ph86.new ], [ %niter166.next.1, %bb.q ]
  %i.fg = trunc nuw nsw i64 %indvars.iv105 to i32
  %i.fh = add i32 %.05487, %i.fg
  %i.fi = zext i32 %i.fh to i64
  %i.fj = getelementptr inbounds nuw [20 x i8], ptr %i.fe, i64 %i.fi
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8 ; 2 uses
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv105
  %i.fm = load <2 x i32>, ptr %i.fl, align 16, !tbaa !324
  %i.fn = load <2 x i32>, ptr %i.fk, align 4, !tbaa !324
  %i.fo = add nsw <2 x i32> %i.fn, %i.fm
  store <2 x i32> %i.fo, ptr %i.fk, align 4, !tbaa !324
  %indvars.iv.next106 = or disjoint i64 %indvars.iv105, 1 ; 2 uses
  %i.fp = trunc nuw nsw i64 %indvars.iv.next106 to i32
  %i.fq = add i32 %.05487, %i.fp
  %i.fr = zext i32 %i.fq to i64
  %i.fs = getelementptr inbounds nuw [20 x i8], ptr %i.fe, i64 %i.fr
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 8 ; 2 uses
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next106
  %i.fv = load <2 x i32>, ptr %i.fu, align 8, !tbaa !324
  %i.fw = load <2 x i32>, ptr %i.ft, align 4, !tbaa !324
  %i.fx = add nsw <2 x i32> %i.fw, %i.fv
  store <2 x i32> %i.fx, ptr %i.ft, align 4, !tbaa !324
  %indvars.iv.next106.1 = add nuw nsw i64 %indvars.iv105, 2 ; 2 uses
  %niter166.next.1 = add i64 %niter166, 2         ; 2 uses
  %niter166.ncmp.1 = icmp eq i64 %niter166.next.1, %unroll_iter165
  br i1 %niter166.ncmp.1, label %.thread.loopexit.unr-lcssa, label %bb.q, !llvm.loop !4332

bb.r:                                             ; preds = %bb.r, %.lr.ph84.new
  %indvars.iv100 = phi i64 [ 0, %.lr.ph84.new ], [ %indvars.iv.next101.1, %bb.r ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph84.new ], [ %niter.next.1, %bb.r ]
  %i.fy = trunc nuw nsw i64 %indvars.iv100 to i32
  %i.fz = add i32 %.05487, %i.fy
  %i.ga = zext i32 %i.fz to i64
  %i.gb = getelementptr inbounds nuw [20 x i8], ptr %i.fc, i64 %i.ga
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 8 ; 2 uses
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv100
  %i.ge = load <2 x i32>, ptr %i.gd, align 16, !tbaa !324
  %i.gf = load <2 x i32>, ptr %i.gc, align 4, !tbaa !324
  %i.gg = sub nsw <2 x i32> %i.gf, %i.ge
  store <2 x i32> %i.gg, ptr %i.gc, align 4, !tbaa !324
end_hunk_1
begin_hunk_2_@_ZN9hb_font_t35apply_glyph_h_origins_with_fallbackEP11hb_buffer_ti:bb.a
  %i.gn = load <2 x i32>, ptr %i.gm, align 8, !tbaa !324
  %i.go = load <2 x i32>, ptr %i.gl, align 4, !tbaa !324
  %i.gp = sub nsw <2 x i32> %i.go, %i.gn
  store <2 x i32> %i.gp, ptr %i.gl, align 4, !tbaa !324
  %indvars.iv.next101.1 = add nuw nsw i64 %indvars.iv100, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.thread.loopexit156.unr-lcssa, label %bb.r, !llvm.loop !4333

.thread.loopexit.unr-lcssa:                       ; preds = %bb.q
  %lcmp.mod163.not = icmp eq i64 %xtraiter162, 0
  br i1 %lcmp.mod163.not, label %.thread, label %.epil.preheader161

.epil.preheader161:                               ; preds = %.thread.loopexit.unr-lcssa, %.lr.ph86
  %indvars.iv105.epil.init = phi i64 [ 0, %.lr.ph86 ], [ %indvars.iv.next106.1, %.thread.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod164 = trunc i32 %.sroa.speculated to i1
  call void @llvm.assume(i1 %lcmp.mod164)
  %i.gq = trunc nuw nsw i64 %indvars.iv105.epil.init to i32
  %i.gr = add i32 %.05487, %i.gq
  %i.gs = zext i32 %i.gr to i64
  %i.gt = getelementptr inbounds nuw [20 x i8], ptr %i.fe, i64 %i.gs
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 8 ; 2 uses
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv105.epil.init
  %i.gw = load <2 x i32>, ptr %i.gv, align 8, !tbaa !324
  %i.gx = load <2 x i32>, ptr %i.gu, align 4, !tbaa !324
  %i.gy = add nsw <2 x i32> %i.gx, %i.gw
  store <2 x i32> %i.gy, ptr %i.gu, align 4, !tbaa !324
  br label %.thread

.thread.loopexit156.unr-lcssa:                    ; preds = %bb.r
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.thread, label %.epil.preheader

.epil.preheader:                                  ; preds = %.thread.loopexit156.unr-lcssa, %.lr.ph84
  %indvars.iv100.epil.init = phi i64 [ 0, %.lr.ph84 ], [ %indvars.iv.next101.1, %.thread.loopexit156.unr-lcssa ] ; 2 uses
  %lcmp.mod160 = trunc i32 %.sroa.speculated to i1
  call void @llvm.assume(i1 %lcmp.mod160)
  %i.gz = trunc nuw nsw i64 %indvars.iv100.epil.init to i32
  %i.ha = add i32 %.05487, %i.gz
  %i.hb = zext i32 %i.ha to i64
  %i.hc = getelementptr inbounds nuw [20 x i8], ptr %i.fc, i64 %i.hb
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 8 ; 2 uses
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv100.epil.init
  %i.hf = load <2 x i32>, ptr %i.he, align 8, !tbaa !324
  %i.hg = load <2 x i32>, ptr %i.hd, align 4, !tbaa !324
  %i.hh = sub nsw <2 x i32> %i.hg, %i.hf
  store <2 x i32> %i.hh, ptr %i.hd, align 4, !tbaa !324
  br label %.thread

.thread:                                          ; preds = %.epil.preheader, %.thread.loopexit156.unr-lcssa, %.epil.preheader161, %.thread.loopexit.unr-lcssa, %.preheader79, %.preheader, %_ZN9hb_font_t19get_glyph_v_originsEjPKjjPijS2_jb.exit, %_ZN9hb_font_t19get_glyph_h_originsEjPKjjPijS2_jb.exit.thread
  %.178 = phi i32 [ 0, %_ZN9hb_font_t19get_glyph_v_originsEjPKjjPijS2_jb.exit ], [ 1, %.preheader ], [ %.091, %_ZN9hb_font_t19get_glyph_h_originsEjPKjjPijS2_jb.exit.thread ], [ -1, %.preheader79 ], [ 1, %.epil.preheader161 ], [ 1, %.thread.loopexit.unr-lcssa ], [ -1, %.thread.loopexit156.unr-lcssa ], [ -1, %.epil.preheader ]
  %.277 = phi i1 [ %.04790, %_ZN9hb_font_t19get_glyph_v_originsEjPKjjPijS2_jb.exit ], [ %.2, %.preheader ], [ %.2, %_ZN9hb_font_t19get_glyph_h_originsEjPKjjPijS2_jb.exit.thread ], [ %.2, %.preheader79 ], [ %.2, %.epil.preheader161 ], [ %.2, %.thread.loopexit.unr-lcssa ], [ %.2, %.thread.loopexit156.unr-lcssa ], [ %.2, %.epil.preheader ]
  %.25276 = phi i32 [ %.05089, %_ZN9hb_font_t19get_glyph_v_originsEjPKjjPijS2_jb.exit ], [ %.252, %.preheader ], [ %.252, %_ZN9hb_font_t19get_glyph_h_originsEjPKjjPijS2_jb.exit.thread ], [ %.252, %.preheader79 ], [ %.252, %.epil.preheader161 ], [ %.252, %.thread.loopexit.unr-lcssa ], [ %.252, %.thread.loopexit156.unr-lcssa ], [ %.252, %.epil.preheader ]
  %i.hi = add i32 %.sroa.speculated, %.05487      ; 2 uses
  %i.hj = icmp ult i32 %i.hi, %i.b
  br i1 %i.hj, label %bb.b, label %._crit_edge, !llvm.loop !4334

._crit_edge:                                      ; preds = %.thread, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #63
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN9hb_font_t35apply_glyph_v_origins_with_fallbackEP11hb_buffer_ti(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca [32 x %struct.anon.1584], align 16  ; 20 uses
  %4 = alloca %struct.hb_font_extents_t, align 4  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #63
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.b = load i32, ptr %i.a, align 8, !tbaa !607  ; 6 uses
  %.not94 = icmp eq i32 %i.b, 0
  br i1 %.not94, label %._crit_edge, label %.lr.ph93

.lr.ph93:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph93, %.thread
  %.092 = phi i32 [ %2, %.lr.ph93 ], [ %.179, %.thread ] ; 2 uses
  %.04791 = phi i1 [ false, %.lr.ph93 ], [ %.278, %.thread ] ; 6 uses
  %.05090 = phi i32 [ 0, %.lr.ph93 ], [ %.25277, %.thread ] ; 6 uses
  %.05488 = phi i32 [ 0, %.lr.ph93 ], [ %i.hi, %.thread ] ; 13 uses
  %i.n = sub i32 %i.b, %.05488                    ; 3 uses
  %.sroa.speculated = call i32 @llvm.umin.i32(i32 %i.n, i32 32) ; 12 uses
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !589
  %i.p = zext i32 %.05488 to i64                  ; 2 uses
  %i.q = getelementptr inbounds nuw [20 x i8], ptr %i.o, i64 %i.p
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !638  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 128
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !280
  %i.u = load ptr, ptr %i.f, align 8, !tbaa !639
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !641  ; 2 uses
  %.not.i57 = icmp eq ptr %i.w, null
  br i1 %.not.i57, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 96
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !964
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.z = phi ptr [ %i.y, %bb.c ], [ null, %bb.b ]
  %i.aa = call noundef i32 %i.t(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef %i.u, i32 noundef %.sroa.speculated, ptr noundef %i.q, i32 noundef 20, ptr noundef nonnull %3, i32 noundef 8, ptr noundef nonnull %i.d, i32 noundef 8, ptr noundef %i.z) #63, !inline_history !60
  %i.ab = icmp ne i32 %i.aa, 0                    ; 2 uses
  %i.ac = load i8, ptr %i.g, align 8, !tbaa !965, !range !380, !noundef !293
  %i.ad = trunc nuw i8 %i.ac to i1
  %or.cond.i = and i1 %i.ab, %i.ad
  br i1 %or.cond.i, label %.lr.ph.i, label %_ZN9hb_font_t19get_glyph_v_originsEjPKjjPijS2_jb.exit

.lr.ph.i:                                         ; preds = %bb.d
  %i.ae = load i32, ptr %i.h, align 8, !tbaa !951
  %i.af = icmp slt i32 %i.ae, 0
  %i.ag = load i32, ptr %i.i, align 8, !tbaa !949 ; 2 uses
  %i.ah = sub nsw i32 0, %i.ag
  %i.ai = select i1 %i.af, i32 %i.ah, i32 %i.ag   ; 2 uses
  %i.aj = load i32, ptr %i.j, align 4, !tbaa !954
  %i.ak = icmp slt i32 %i.aj, 0
  %i.al = load i32, ptr %i.k, align 4, !tbaa !1004 ; 2 uses
  %i.am = sub nsw i32 0, %i.al
  %i.an = select i1 %i.ak, i32 %i.am, i32 %i.al   ; 2 uses
  %i.ao = load i8, ptr %i.l, align 4, !tbaa !950, !range !380, !noundef !293
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %_ZN9hb_font_t19get_glyph_v_originsEjPKjjPijS2_jb.exit.thread, label %.lr.ph.split.i.preheader

.lr.ph.split.i.preheader:                         ; preds = %.lr.ph.i
  %i.aq = add nsw i32 %.sroa.speculated, -1       ; 2 uses
  %i.ar = zext i32 %i.aq to i64
  %i.as = add nuw nsw i64 %i.ar, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.aq, 3
  br i1 %min.iters.check, label %.lr.ph.split.i.preheader158, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.i.preheader
  %n.vec = and i64 %i.as, 8589934588              ; 4 uses
  %i.at = trunc i64 %n.vec to i32
  %i.au = shl nuw nsw i64 %n.vec, 3               ; 2 uses
  %i.av = getelementptr i8, ptr %3, i64 %i.au
  %i.aw = getelementptr i8, ptr %i.d, i64 %i.au
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %i.ai, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert121 = insertelement <2 x i32> poison, i32 %i.an, i64 0
  %broadcast.splat122 = shufflevector <2 x i32> %broadcast.splatinsert121, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %3, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %3, i64 %i.ax
  %next.gep123 = getelementptr i8, ptr %i.ay, i64 16 ; 2 uses
  %wide.vec = load <4 x i32>, ptr %next.gep, align 16, !tbaa !324 ; 2 uses
  %strided.vec = shufflevector <4 x i32> %wide.vec, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec124 = shufflevector <4 x i32> %wide.vec, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %wide.vec125 = load <4 x i32>, ptr %next.gep123, align 16, !tbaa !324 ; 2 uses
  %strided.vec126 = shufflevector <4 x i32> %wide.vec125, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec127 = shufflevector <4 x i32> %wide.vec125, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %i.az = add nsw <2 x i32> %strided.vec, %broadcast.splat
  %i.ba = add nsw <2 x i32> %strided.vec126, %broadcast.splat
  %i.bb = add nsw <2 x i32> %strided.vec124, %broadcast.splat122
  %i.bc = add nsw <2 x i32> %strided.vec127, %broadcast.splat122
  %interleaved.vec = shufflevector <2 x i32> %i.az, <2 x i32> %i.bb, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec, ptr %next.gep, align 16, !tbaa !324
  %interleaved.vec128 = shufflevector <2 x i32> %i.ba, <2 x i32> %i.bc, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec128, ptr %next.gep123, align 16, !tbaa !324
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !4338

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %_ZN9hb_font_t19get_glyph_v_originsEjPKjjPijS2_jb.exit.thread, label %.lr.ph.split.i.preheader158

.lr.ph.split.i.preheader158:                      ; preds = %.lr.ph.split.i.preheader, %middle.block
  %.027.i.ph = phi i32 [ 0, %.lr.ph.split.i.preheader ], [ %i.at, %middle.block ]
  %.02226.i.ph = phi ptr [ %3, %.lr.ph.split.i.preheader ], [ %i.av, %middle.block ]
  %.02325.i.ph = phi ptr [ %i.d, %.lr.ph.split.i.preheader ], [ %i.aw, %middle.block ]
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i.preheader158, %.lr.ph.split.i
  %.027.i = phi i32 [ %i.bk, %.lr.ph.split.i ], [ %.027.i.ph, %.lr.ph.split.i.preheader158 ]
  %.02226.i = phi ptr [ %i.bi, %.lr.ph.split.i ], [ %.02226.i.ph, %.lr.ph.split.i.preheader158 ] ; 3 uses
  %.02325.i = phi ptr [ %i.bj, %.lr.ph.split.i ], [ %.02325.i.ph, %.lr.ph.split.i.preheader158 ] ; 3 uses
  %i.be = load i32, ptr %.02226.i, align 4, !tbaa !324
  %i.bf = add nsw i32 %i.be, %i.ai
  store i32 %i.bf, ptr %.02226.i, align 4, !tbaa !324
  %i.bg = load i32, ptr %.02325.i, align 4, !tbaa !324
  %i.bh = add nsw i32 %i.bg, %i.an
  store i32 %i.bh, ptr %.02325.i, align 4, !tbaa !324
  %i.bi = getelementptr inbounds nuw i8, ptr %.02226.i, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %.02325.i, i64 8
  %i.bk = add nuw i32 %.027.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.bk, %.sroa.speculated
  br i1 %exitcond.not.i, label %_ZN9hb_font_t19get_glyph_v_originsEjPKjjPijS2_jb.exit.thread, label %.lr.ph.split.i, !llvm.loop !4339

_ZN9hb_font_t19get_glyph_v_originsEjPKjjPijS2_jb.exit: ; preds = %bb.d
  br i1 %i.ab, label %_ZN9hb_font_t19get_glyph_v_originsEjPKjjPijS2_jb.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZN9hb_font_t19get_glyph_v_originsEjPKjjPijS2_jb.exit
  %i.bl = load ptr, ptr %i.c, align 8, !tbaa !589
  %i.bm = getelementptr inbounds nuw [20 x i8], ptr %i.bl, i64 %i.p
  %i.bn = load ptr, ptr %i.e, align 8, !tbaa !638 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 120
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !280
  %i.bq = load ptr, ptr %i.f, align 8, !tbaa !639
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !641 ; 2 uses
  %.not.i58 = icmp eq ptr %i.bs, null
  br i1 %.not.i58, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 88
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !962
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bv = phi ptr [ %i.bu, %bb.f ], [ null, %bb.e ]
  %i.bw = call noundef i32 %i.bp(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef %i.bq, i32 noundef %.sroa.speculated, ptr noundef %i.bm, i32 noundef 20, ptr noundef nonnull %3, i32 noundef 8, ptr noundef nonnull %i.d, i32 noundef 8, ptr noundef %i.bv) #63, !inline_history !57
  %.not = icmp eq i32 %i.bw, 0
  br i1 %.not, label %.thread, label %.lr.ph.i61

.lr.ph.i61:                                       ; preds = %bb.g
  %i.bx = load i32, ptr %i.h, align 8, !tbaa !951
  %i.by = icmp slt i32 %i.bx, 0
  %i.bz = load i32, ptr %i.i, align 8, !tbaa !949 ; 2 uses
  %i.ca = sub nsw i32 0, %i.bz
  %i.cb = select i1 %i.by, i32 %i.ca, i32 %i.bz   ; 2 uses
  %i.cc = load i32, ptr %i.j, align 4, !tbaa !954
  %i.cd = icmp slt i32 %i.cc, 0
  %i.ce = load i32, ptr %i.k, align 4, !tbaa !1004 ; 2 uses
  %i.cf = sub nsw i32 0, %i.ce
  %i.cg = select i1 %i.cd, i32 %i.cf, i32 %i.ce   ; 2 uses
  %i.ch = load i8, ptr %i.l, align 4, !tbaa !950, !range !380, !noundef !293
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %.loopexit, label %.lr.ph.split.i62.preheader

.lr.ph.split.i62.preheader:                       ; preds = %.lr.ph.i61
  %i.cj = add nsw i32 %.sroa.speculated, -1       ; 2 uses
  %i.ck = zext i32 %i.cj to i64
  %i.cl = add nuw nsw i64 %i.ck, 1                ; 2 uses
  %min.iters.check132 = icmp ult i32 %i.cj, 3
  br i1 %min.iters.check132, label %.lr.ph.split.i62.preheader160, label %vector.ph133

vector.ph133:                                     ; preds = %.lr.ph.split.i62.preheader
  %n.vec134 = and i64 %i.cl, 8589934588           ; 4 uses
  %i.cm = trunc i64 %n.vec134 to i32
  %i.cn = shl nuw nsw i64 %n.vec134, 3            ; 2 uses
  %i.co = getelementptr i8, ptr %3, i64 %i.cn
  %i.cp = getelementptr i8, ptr %i.d, i64 %i.cn
  %broadcast.splatinsert135 = insertelement <2 x i32> poison, i32 %i.cb, i64 0
  %broadcast.splat136 = shufflevector <2 x i32> %broadcast.splatinsert135, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert137 = insertelement <2 x i32> poison, i32 %i.cg, i64 0
  %broadcast.splat138 = shufflevector <2 x i32> %broadcast.splatinsert137, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body139

vector.body139:                                   ; preds = %vector.body139, %vector.ph133
  %index140 = phi i64 [ 0, %vector.ph133 ], [ %index.next151, %vector.body139 ] ; 2 uses
  %i.cq = shl i64 %index140, 3                    ; 2 uses
  %next.gep141 = getelementptr i8, ptr %3, i64 %i.cq ; 2 uses
  %i.cr = getelementptr i8, ptr %3, i64 %i.cq
  %next.gep142 = getelementptr i8, ptr %i.cr, i64 16 ; 2 uses
  %wide.vec143 = load <4 x i32>, ptr %next.gep141, align 16, !tbaa !324 ; 2 uses
  %strided.vec144 = shufflevector <4 x i32> %wide.vec143, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec145 = shufflevector <4 x i32> %wide.vec143, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %wide.vec146 = load <4 x i32>, ptr %next.gep142, align 16, !tbaa !324 ; 2 uses
  %strided.vec147 = shufflevector <4 x i32> %wide.vec146, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec148 = shufflevector <4 x i32> %wide.vec146, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %i.cs = add nsw <2 x i32> %strided.vec144, %broadcast.splat136
  %i.ct = add nsw <2 x i32> %strided.vec147, %broadcast.splat136
  %i.cu = add nsw <2 x i32> %strided.vec145, %broadcast.splat138
  %i.cv = add nsw <2 x i32> %strided.vec148, %broadcast.splat138
  %interleaved.vec149 = shufflevector <2 x i32> %i.cs, <2 x i32> %i.cu, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec149, ptr %next.gep141, align 16, !tbaa !324
  %interleaved.vec150 = shufflevector <2 x i32> %i.ct, <2 x i32> %i.cv, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec150, ptr %next.gep142, align 16, !tbaa !324
  %index.next151 = add nuw i64 %index140, 4       ; 2 uses
  %i.cw = icmp eq i64 %index.next151, %n.vec134
  br i1 %i.cw, label %middle.block152, label %vector.body139, !llvm.loop !4340

middle.block152:                                  ; preds = %vector.body139
  %cmp.n153 = icmp eq i64 %i.cl, %n.vec134
  br i1 %cmp.n153, label %.loopexit, label %.lr.ph.split.i62.preheader160

.lr.ph.split.i62.preheader160:                    ; preds = %.lr.ph.split.i62.preheader, %middle.block152
  %.027.i63.ph = phi i32 [ 0, %.lr.ph.split.i62.preheader ], [ %i.cm, %middle.block152 ]
  %.02226.i64.ph = phi ptr [ %3, %.lr.ph.split.i62.preheader ], [ %i.co, %middle.block152 ]
  %.02325.i65.ph = phi ptr [ %i.d, %.lr.ph.split.i62.preheader ], [ %i.cp, %middle.block152 ]
  br label %.lr.ph.split.i62

.lr.ph.split.i62:                                 ; preds = %.lr.ph.split.i62.preheader160, %.lr.ph.split.i62
  %.027.i63 = phi i32 [ %i.dd, %.lr.ph.split.i62 ], [ %.027.i63.ph, %.lr.ph.split.i62.preheader160 ]
  %.02226.i64 = phi ptr [ %i.db, %.lr.ph.split.i62 ], [ %.02226.i64.ph, %.lr.ph.split.i62.preheader160 ] ; 3 uses
  %.02325.i65 = phi ptr [ %i.dc, %.lr.ph.split.i62 ], [ %.02325.i65.ph, %.lr.ph.split.i62.preheader160 ] ; 3 uses
  %i.cx = load i32, ptr %.02226.i64, align 4, !tbaa !324
  %i.cy = add nsw i32 %i.cx, %i.cb
  store i32 %i.cy, ptr %.02226.i64, align 4, !tbaa !324
  %i.cz = load i32, ptr %.02325.i65, align 4, !tbaa !324
  %i.da = add nsw i32 %i.cz, %i.cg
  store i32 %i.da, ptr %.02325.i65, align 4, !tbaa !324
  %i.db = getelementptr inbounds nuw i8, ptr %.02226.i64, i64 8
  %i.dc = getelementptr inbounds nuw i8, ptr %.02325.i65, i64 8
  %i.dd = add nuw i32 %.027.i63, 1                ; 2 uses
  %exitcond.not.i66 = icmp eq i32 %i.dd, %.sroa.speculated
  br i1 %exitcond.not.i66, label %.loopexit, label %.lr.ph.split.i62, !llvm.loop !4341

.loopexit:                                        ; preds = %.lr.ph.split.i62, %middle.block152, %.lr.ph.i61
  br i1 %.04791, label %bb.l, label %bb.h

bb.h:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #63
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %4, i8 0, i64 48, i1 false)
  %i.de = load ptr, ptr %i.e, align 8, !tbaa !638 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 32
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !280
  %i.dh = load ptr, ptr %i.f, align 8, !tbaa !639
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !641 ; 2 uses
  %.not.i.i = icmp eq ptr %i.dj, null
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !970
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.dl = phi ptr [ %i.dk, %bb.i ], [ null, %bb.h ]
  %i.dm = call noundef i32 %i.dg(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef %i.dh, ptr noundef nonnull %4, ptr noundef %i.dl) #63, !inline_history !151
  %.not.i67 = icmp eq i32 %i.dm, 0
  %i.dn = load i32, ptr %i.j, align 4, !tbaa !954 ; 2 uses
  br i1 %.not.i67, label %bb.k, label %_ZN9hb_font_t18get_font_h_extentsEP17hb_font_extents_tb.exit.i

_ZN9hb_font_t18get_font_h_extentsEP17hb_font_extents_tb.exit.i: ; preds = %bb.j
  %i.do = icmp slt i32 %i.dn, 0
  %i.dp = load i32, ptr %i.k, align 4, !tbaa !1004 ; 2 uses
  %i.dq = sub nsw i32 0, %i.dp
  %i.dr = select i1 %i.do, i32 %i.dq, i32 %i.dp
  %i.ds = load i32, ptr %4, align 4, !tbaa !1001
  %i.dt = add nsw i32 %i.ds, %i.dr
  br label %_ZN9hb_font_t27get_h_extents_with_fallbackEP17hb_font_extents_t.exit

bb.k:                                             ; preds = %bb.j
  %i.du = sitofp i32 %i.dn to double
  %i.dv = fmul nnan double %i.du, 8.000000e-01
  %i.dw = fptosi double %i.dv to i32
  br label %_ZN9hb_font_t27get_h_extents_with_fallbackEP17hb_font_extents_t.exit

_ZN9hb_font_t27get_h_extents_with_fallbackEP17hb_font_extents_t.exit: ; preds = %_ZN9hb_font_t18get_font_h_extentsEP17hb_font_extents_tb.exit.i, %bb.k
  %.sink.i = phi i32 [ %i.dw, %bb.k ], [ %i.dt, %_ZN9hb_font_t18get_font_h_extentsEP17hb_font_extents_tb.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #63
  br label %bb.l

bb.l:                                             ; preds = %_ZN9hb_font_t27get_h_extents_with_fallbackEP17hb_font_extents_t.exit, %.loopexit
  %.151 = phi i32 [ %.05090, %.loopexit ], [ %.sink.i, %_ZN9hb_font_t27get_h_extents_with_fallbackEP17hb_font_extents_t.exit ] ; 3 uses
  %.not95 = icmp eq i32 %i.b, %.05488
  br i1 %.not95, label %_ZN9hb_font_t19get_glyph_v_originsEjPKjjPijS2_jb.exit.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.l
  %wide.trip.count = zext nneg i32 %.sroa.speculated to i64
  %i.dx = insertelement <2 x i32> poison, i32 %.151, i64 1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN9hb_font_t19get_glyph_h_advanceEjb.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZN9hb_font_t19get_glyph_h_advanceEjb.exit ] ; 3 uses
  %i.dy = load ptr, ptr %i.c, align 8, !tbaa !589
  %i.dz = trunc nuw nsw i64 %indvars.iv to i32
  %i.ea = add i32 %.05488, %i.dz
  %i.eb = zext i32 %i.ea to i64
  %i.ec = getelementptr inbounds nuw [20 x i8], ptr %i.dy, i64 %i.eb
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !637
  %i.ee = load ptr, ptr %i.e, align 8, !tbaa !638 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 72
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !280
  %i.eh = load ptr, ptr %i.f, align 8, !tbaa !639
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !641 ; 2 uses
  %.not.i68 = icmp eq ptr %i.ej, null
  br i1 %.not.i68, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 40
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !948
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph
  %i.em = phi ptr [ %i.el, %bb.m ], [ null, %.lr.ph ]
  %i.en = call noundef i32 %i.eg(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef %i.eh, i32 noundef %i.ed, ptr noundef %i.em) #63, !inline_history !54 ; 4 uses
  %i.eo = load i32, ptr %i.i, align 8, !tbaa !949 ; 3 uses
  %.not8.i = icmp eq i32 %i.eo, 0
  br i1 %.not8.i, label %_ZN9hb_font_t19get_glyph_h_advanceEjb.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ep = load i8, ptr %i.l, align 4, !tbaa !950, !range !380, !noundef !293
  %i.eq = trunc nuw i8 %i.ep to i1
  br i1 %i.eq, label %_ZN9hb_font_t19get_glyph_h_advanceEjb.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.er = load i32, ptr %i.h, align 8, !tbaa !951
  %i.es = sub nsw i32 0, %i.eo
  %i.et = icmp slt i32 %i.er, 0
  %i.eu = select i1 %i.et, i32 %i.es, i32 %i.eo
  %.not9.i = icmp eq i32 %i.en, 0
  %i.ev = select i1 %.not9.i, i32 0, i32 %i.eu
  %i.ew = add nsw i32 %i.ev, %i.en
  br label %_ZN9hb_font_t19get_glyph_h_advanceEjb.exit

_ZN9hb_font_t19get_glyph_h_advanceEjb.exit:       ; preds = %bb.n, %bb.o, %bb.p
  %.0.i = phi i32 [ %i.en, %bb.o ], [ %i.ew, %bb.p ], [ %i.en, %bb.n ]
  %i.ex = sdiv i32 %.0.i, 2
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv ; 2 uses
  %i.ez = load <2 x i32>, ptr %i.ey, align 8, !tbaa !324
  %i.fa = insertelement <2 x i32> %i.dx, i32 %i.ex, i64 0
  %i.fb = add nsw <2 x i32> %i.ez, %i.fa
  store <2 x i32> %i.fb, ptr %i.ey, align 8, !tbaa !324
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZN9hb_font_t19get_glyph_v_originsEjPKjjPijS2_jb.exit.thread, label %.lr.ph, !llvm.loop !4342

_ZN9hb_font_t19get_glyph_v_originsEjPKjjPijS2_jb.exit.thread: ; preds = %_ZN9hb_font_t19get_glyph_h_advanceEjb.exit, %.lr.ph.split.i, %middle.block, %bb.l, %.lr.ph.i, %_ZN9hb_font_t19get_glyph_v_originsEjPKjjPijS2_jb.exit
  %.252 = phi i32 [ %.05090, %_ZN9hb_font_t19get_glyph_v_originsEjPKjjPijS2_jb.exit ], [ %.05090, %.lr.ph.i ], [ %.151, %bb.l ], [ %.05090, %middle.block ], [ %.05090, %.lr.ph.split.i ], [ %.151, %_ZN9hb_font_t19get_glyph_h_advanceEjb.exit ] ; 7 uses
  %.2 = phi i1 [ %.04791, %_ZN9hb_font_t19get_glyph_v_originsEjPKjjPijS2_jb.exit ], [ %.04791, %.lr.ph.i ], [ true, %bb.l ], [ %.04791, %middle.block ], [ %.04791, %.lr.ph.split.i ], [ true, %_ZN9hb_font_t19get_glyph_h_advanceEjb.exit ] ; 7 uses
  switch i32 %.092, label %.thread [
    i32 1, label %.preheader
    i32 -1, label %.preheader80
  ]

.preheader80:                                     ; preds = %_ZN9hb_font_t19get_glyph_v_originsEjPKjjPijS2_jb.exit.thread
  %.not96 = icmp eq i32 %i.b, %.05488
  br i1 %.not96, label %.thread, label %.lr.ph85

.lr.ph85:                                         ; preds = %.preheader80
  %i.fc = load ptr, ptr %i.m, align 8, !tbaa !611 ; 3 uses
  %wide.trip.count104 = zext nneg i32 %.sroa.speculated to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count104, 1
  %i.fd = icmp eq i32 %i.n, 1
  br i1 %i.fd, label %.epil.preheader, label %.lr.ph85.new

.lr.ph85.new:                                     ; preds = %.lr.ph85
  %unroll_iter = and i64 %wide.trip.count104, 62
  br label %bb.r

.preheader:                                       ; preds = %_ZN9hb_font_t19get_glyph_v_originsEjPKjjPijS2_jb.exit.thread
  %.not97 = icmp eq i32 %i.b, %.05488
  br i1 %.not97, label %.thread, label %.lr.ph87

.lr.ph87:                                         ; preds = %.preheader
  %i.fe = load ptr, ptr %i.m, align 8, !tbaa !611 ; 3 uses
  %wide.trip.count109 = zext nneg i32 %.sroa.speculated to i64 ; 2 uses
  %xtraiter163 = and i64 %wide.trip.count109, 1
  %i.ff = icmp eq i32 %i.n, 1
  br i1 %i.ff, label %.epil.preheader162, label %.lr.ph87.new

.lr.ph87.new:                                     ; preds = %.lr.ph87
  %unroll_iter166 = and i64 %wide.trip.count109, 62
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.lr.ph87.new
  %indvars.iv106 = phi i64 [ 0, %.lr.ph87.new ], [ %indvars.iv.next107.1, %bb.q ] ; 4 uses
  %niter167 = phi i64 [ 0, %.lr.ph87.new ], [ %niter167.next.1, %bb.q ]
  %i.fg = trunc nuw nsw i64 %indvars.iv106 to i32
  %i.fh = add i32 %.05488, %i.fg
  %i.fi = zext i32 %i.fh to i64
  %i.fj = getelementptr inbounds nuw [20 x i8], ptr %i.fe, i64 %i.fi
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8 ; 2 uses
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv106
  %i.fm = load <2 x i32>, ptr %i.fl, align 16, !tbaa !324
  %i.fn = load <2 x i32>, ptr %i.fk, align 4, !tbaa !324
  %i.fo = add nsw <2 x i32> %i.fn, %i.fm
  store <2 x i32> %i.fo, ptr %i.fk, align 4, !tbaa !324
  %indvars.iv.next107 = or disjoint i64 %indvars.iv106, 1 ; 2 uses
  %i.fp = trunc nuw nsw i64 %indvars.iv.next107 to i32
  %i.fq = add i32 %.05488, %i.fp
  %i.fr = zext i32 %i.fq to i64
  %i.fs = getelementptr inbounds nuw [20 x i8], ptr %i.fe, i64 %i.fr
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 8 ; 2 uses
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next107
  %i.fv = load <2 x i32>, ptr %i.fu, align 8, !tbaa !324
  %i.fw = load <2 x i32>, ptr %i.ft, align 4, !tbaa !324
  %i.fx = add nsw <2 x i32> %i.fw, %i.fv
  store <2 x i32> %i.fx, ptr %i.ft, align 4, !tbaa !324
  %indvars.iv.next107.1 = add nuw nsw i64 %indvars.iv106, 2 ; 2 uses
  %niter167.next.1 = add i64 %niter167, 2         ; 2 uses
  %niter167.ncmp.1 = icmp eq i64 %niter167.next.1, %unroll_iter166
  br i1 %niter167.ncmp.1, label %.thread.loopexit.unr-lcssa, label %bb.q, !llvm.loop !4343

bb.r:                                             ; preds = %bb.r, %.lr.ph85.new
  %indvars.iv101 = phi i64 [ 0, %.lr.ph85.new ], [ %indvars.iv.next102.1, %bb.r ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph85.new ], [ %niter.next.1, %bb.r ]
  %i.fy = trunc nuw nsw i64 %indvars.iv101 to i32
  %i.fz = add i32 %.05488, %i.fy
  %i.ga = zext i32 %i.fz to i64
  %i.gb = getelementptr inbounds nuw [20 x i8], ptr %i.fc, i64 %i.ga
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 8 ; 2 uses
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv101
  %i.ge = load <2 x i32>, ptr %i.gd, align 16, !tbaa !324
  %i.gf = load <2 x i32>, ptr %i.gc, align 4, !tbaa !324
  %i.gg = sub nsw <2 x i32> %i.gf, %i.ge
  store <2 x i32> %i.gg, ptr %i.gc, align 4, !tbaa !324
  %indvars.iv.next102 = or disjoint i64 %indvars.iv101, 1 ; 2 uses
  %i.gh = trunc nuw nsw i64 %indvars.iv.next102 to i32
  %i.gi = add i32 %.05488, %i.gh
  %i.gj = zext i32 %i.gi to i64
  %i.gk = getelementptr inbounds nuw [20 x i8], ptr %i.fc, i64 %i.gj
end_hunk_2
begin_hunk_3_@_ZNK2OT6Layout9GSUB_impl19SubstLookupSubTable8dispatchINS_33hb_accelerate_subtables_context_tEJEEENT_8return_tEPS5_jDpOT0_:bb.a
  %i.ar = load i16, ptr %.tr, align 1, !tbaa !283
  %i.as = tail call noundef i16 @llvm.bswap.i16(i16 %i.ar)
  switch i16 %i.as, label %_ZNK2OT6Layout9GSUB_impl11SingleSubst8dispatchINS_33hb_accelerate_subtables_context_tEJEEENT_8return_tEPS5_DpOT0_.exit [
    i16 1, label %bb.m
    i16 2, label %bb.n
    i16 3, label %bb.o
  ]

bb.m:                                             ; preds = %bb.l
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !1831 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !1830
  %i.ax = add i32 %i.au, 1
  store i32 %i.ax, ptr %i.at, align 8, !tbaa !1831
  %i.ay = zext i32 %i.au to i64
  %i.az = getelementptr inbounds nuw [64 x i8], ptr %i.aw, i64 %i.ay
  tail call void @_ZN2OT33hb_accelerate_subtables_context_t15hb_applicable_t4initINS_16ContextFormat1_4INS_6Layout10SmallTypesEEEEEvRKT_PFbPKvPNS_21hb_ot_apply_context_tEPvESG_PFbSD_NS_25hb_ot_subtable_cache_op_tEESE_(ptr noundef nonnull align 8 dereferenceable(64) %i.az, ptr noundef nonnull align 1 dereferenceable(10) %.tr, ptr noundef nonnull @_ZN2OT33hb_accelerate_subtables_context_t8apply_toINS_16ContextFormat1_4INS_6Layout10SmallTypesEEEEEbPKvPNS_21hb_ot_apply_context_tEPv, ptr noundef nonnull @_ZN2OT33hb_accelerate_subtables_context_t15apply_cached_toINS_16ContextFormat1_4INS_6Layout10SmallTypesEEEEEbPKvPNS_21hb_ot_apply_context_tEPv, ptr noundef nonnull @_ZN2OT33hb_accelerate_subtables_context_t13cache_func_toINS_16ContextFormat1_4INS_6Layout10SmallTypesEEEEEbPNS_21hb_ot_apply_context_tENS_25hb_ot_subtable_cache_op_tE, ptr noundef null)
  br label %_ZNK2OT6Layout9GSUB_impl11SingleSubst8dispatchINS_33hb_accelerate_subtables_context_tEJEEENT_8return_tEPS5_DpOT0_.exit

bb.n:                                             ; preds = %bb.l
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  tail call void @_ZN2OT33hb_accelerate_subtables_context_t8dispatchINS_16ContextFormat2_5INS_6Layout10SmallTypesEEEEE10hb_empty_tRKT_(ptr noundef nonnull align 8 dereferenceable(28) %1, ptr noundef nonnull align 1 dereferenceable(10) %.tr)
  br label %_ZNK2OT6Layout9GSUB_impl11SingleSubst8dispatchINS_33hb_accelerate_subtables_context_tEJEEENT_8return_tEPS5_DpOT0_.exit

bb.o:                                             ; preds = %bb.l
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !1831 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !1830
  %i.be = add i32 %i.bb, 1
  store i32 %i.be, ptr %i.ba, align 8, !tbaa !1831
  %i.bf = zext i32 %i.bb to i64
  %i.bg = getelementptr inbounds nuw [64 x i8], ptr %i.bd, i64 %i.bf
  tail call void @_ZN2OT33hb_accelerate_subtables_context_t15hb_applicable_t4initINS_14ContextFormat3EEEvRKT_PFbPKvPNS_21hb_ot_apply_context_tEPvESD_PFbSA_NS_25hb_ot_subtable_cache_op_tEESB_(ptr noundef nonnull align 8 dereferenceable(64) %i.bg, ptr noundef nonnull align 1 dereferenceable(10) %.tr, ptr noundef nonnull @_ZN2OT33hb_accelerate_subtables_context_t8apply_toINS_14ContextFormat3EEEbPKvPNS_21hb_ot_apply_context_tEPv, ptr noundef nonnull @_ZN2OT33hb_accelerate_subtables_context_t15apply_cached_toINS_14ContextFormat3EEEbPKvPNS_21hb_ot_apply_context_tEPv, ptr noundef nonnull @_ZN2OT33hb_accelerate_subtables_context_t13cache_func_toINS_14ContextFormat3EEEbPNS_21hb_ot_apply_context_tENS_25hb_ot_subtable_cache_op_tE, ptr noundef null)
  br label %_ZNK2OT6Layout9GSUB_impl11SingleSubst8dispatchINS_33hb_accelerate_subtables_context_tEJEEENT_8return_tEPS5_DpOT0_.exit

bb.p:                                             ; preds = %tailrecurse
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.bh = load i16, ptr %.tr, align 1, !tbaa !283
  %i.bi = tail call noundef i16 @llvm.bswap.i16(i16 %i.bh)
  switch i16 %i.bi, label %_ZNK2OT6Layout9GSUB_impl11SingleSubst8dispatchINS_33hb_accelerate_subtables_context_tEJEEENT_8return_tEPS5_DpOT0_.exit [
    i16 1, label %bb.q
    i16 2, label %bb.r
    i16 3, label %bb.s
  ]

bb.q:                                             ; preds = %bb.p
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !1831 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !1830
  %i.bn = add i32 %i.bk, 1
  store i32 %i.bn, ptr %i.bj, align 8, !tbaa !1831
  %i.bo = zext i32 %i.bk to i64
  %i.bp = getelementptr inbounds nuw [64 x i8], ptr %i.bm, i64 %i.bo
  tail call void @_ZN2OT33hb_accelerate_subtables_context_t15hb_applicable_t4initINS_21ChainContextFormat1_4INS_6Layout10SmallTypesEEEEEvRKT_PFbPKvPNS_21hb_ot_apply_context_tEPvESG_PFbSD_NS_25hb_ot_subtable_cache_op_tEESE_(ptr noundef nonnull align 8 dereferenceable(64) %i.bp, ptr noundef nonnull align 1 dereferenceable(20) %.tr, ptr noundef nonnull @_ZN2OT33hb_accelerate_subtables_context_t8apply_toINS_21ChainContextFormat1_4INS_6Layout10SmallTypesEEEEEbPKvPNS_21hb_ot_apply_context_tEPv, ptr noundef nonnull @_ZN2OT33hb_accelerate_subtables_context_t15apply_cached_toINS_21ChainContextFormat1_4INS_6Layout10SmallTypesEEEEEbPKvPNS_21hb_ot_apply_context_tEPv, ptr noundef nonnull @_ZN2OT33hb_accelerate_subtables_context_t13cache_func_toINS_21ChainContextFormat1_4INS_6Layout10SmallTypesEEEEEbPNS_21hb_ot_apply_context_tENS_25hb_ot_subtable_cache_op_tE, ptr noundef null)
  br label %_ZNK2OT6Layout9GSUB_impl11SingleSubst8dispatchINS_33hb_accelerate_subtables_context_tEJEEENT_8return_tEPS5_DpOT0_.exit

bb.r:                                             ; preds = %bb.p
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  tail call void @_ZN2OT33hb_accelerate_subtables_context_t8dispatchINS_21ChainContextFormat2_5INS_6Layout10SmallTypesEEEEE10hb_empty_tRKT_(ptr noundef nonnull align 8 dereferenceable(28) %1, ptr noundef nonnull align 1 dereferenceable(20) %.tr)
  br label %_ZNK2OT6Layout9GSUB_impl11SingleSubst8dispatchINS_33hb_accelerate_subtables_context_tEJEEENT_8return_tEPS5_DpOT0_.exit

bb.s:                                             ; preds = %bb.p
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !1831 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !1830
  %i.bu = add i32 %i.br, 1
  store i32 %i.bu, ptr %i.bq, align 8, !tbaa !1831
  %i.bv = zext i32 %i.br to i64
  %i.bw = getelementptr inbounds nuw [64 x i8], ptr %i.bt, i64 %i.bv
  tail call void @_ZN2OT33hb_accelerate_subtables_context_t15hb_applicable_t4initINS_19ChainContextFormat3EEEvRKT_PFbPKvPNS_21hb_ot_apply_context_tEPvESD_PFbSA_NS_25hb_ot_subtable_cache_op_tEESB_(ptr noundef nonnull align 8 dereferenceable(64) %i.bw, ptr noundef nonnull align 1 dereferenceable(20) %.tr, ptr noundef nonnull @_ZN2OT33hb_accelerate_subtables_context_t8apply_toINS_19ChainContextFormat3EEEbPKvPNS_21hb_ot_apply_context_tEPv, ptr noundef nonnull @_ZN2OT33hb_accelerate_subtables_context_t15apply_cached_toINS_19ChainContextFormat3EEEbPKvPNS_21hb_ot_apply_context_tEPv, ptr noundef nonnull @_ZN2OT33hb_accelerate_subtables_context_t13cache_func_toINS_19ChainContextFormat3EEEbPNS_21hb_ot_apply_context_tENS_25hb_ot_subtable_cache_op_tE, ptr noundef null)
  br label %_ZNK2OT6Layout9GSUB_impl11SingleSubst8dispatchINS_33hb_accelerate_subtables_context_tEJEEENT_8return_tEPS5_DpOT0_.exit

bb.t:                                             ; preds = %tailrecurse
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.bx = load i16, ptr %.tr, align 1, !tbaa !283
  %cond.i21 = icmp eq i16 %i.bx, 256
  br i1 %cond.i21, label %_ZNK2OT16ExtensionFormat1INS_6Layout9GSUB_impl14ExtensionSubstEE8dispatchINS_33hb_accelerate_subtables_context_tEJEEENT_8return_tEPS7_DpOT0_.exit.i, label %_ZNK2OT6Layout9GSUB_impl11SingleSubst8dispatchINS_33hb_accelerate_subtables_context_tEJEEENT_8return_tEPS5_DpOT0_.exit

_ZNK2OT16ExtensionFormat1INS_6Layout9GSUB_impl14ExtensionSubstEE8dispatchINS_33hb_accelerate_subtables_context_tEJEEENT_8return_tEPS7_DpOT0_.exit.i: ; preds = %bb.t
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !inline_history !4440, !srcloc !279
  %i.by = getelementptr inbounds nuw i8, ptr %.tr, i64 4
  %i.bz = load i32, ptr %i.by, align 1, !tbaa !278 ; 2 uses
  %i.ca = icmp eq i32 %i.bz, 0
  %i.cb = tail call i32 @llvm.bswap.i32(i32 %i.bz)
  %i.cc = zext i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %.tr, i64 %i.cc
  %.0.i.i.i.i = select i1 %i.ca, ptr @_hb_NullPool, ptr %i.cd, !prof !267
  %i.ce = getelementptr inbounds nuw i8, ptr %.tr, i64 2
  %i.cf = load i16, ptr %i.ce, align 1, !tbaa !283
  %i.cg = tail call noundef i16 @llvm.bswap.i16(i16 %i.cf)
  %i.ch = zext i16 %i.cg to i32
  br label %tailrecurse

bb.u:                                             ; preds = %tailrecurse
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.ci = load i16, ptr %.tr, align 1, !tbaa !283
  %cond.i11 = icmp eq i16 %i.ci, 256
  br i1 %cond.i11, label %bb.v, label %_ZNK2OT6Layout9GSUB_impl11SingleSubst8dispatchINS_33hb_accelerate_subtables_context_tEJEEENT_8return_tEPS5_DpOT0_.exit

bb.v:                                             ; preds = %bb.u
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !1831 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !1830
  %i.cn = add i32 %i.ck, 1
  store i32 %i.cn, ptr %i.cj, align 8, !tbaa !1831
  %i.co = zext i32 %i.ck to i64
  %i.cp = getelementptr inbounds nuw [64 x i8], ptr %i.cm, i64 %i.co
  tail call void @_ZN2OT33hb_accelerate_subtables_context_t15hb_applicable_t4initINS_6Layout9GSUB_impl30ReverseChainSingleSubstFormat1EEEvRKT_PFbPKvPNS_21hb_ot_apply_context_tEPvESF_PFbSC_NS_25hb_ot_subtable_cache_op_tEESD_(ptr noundef nonnull align 8 dereferenceable(64) %i.cp, ptr noundef nonnull align 1 dereferenceable(16) %.tr, ptr noundef nonnull @_ZN2OT33hb_accelerate_subtables_context_t8apply_toINS_6Layout9GSUB_impl30ReverseChainSingleSubstFormat1EEEbPKvPNS_21hb_ot_apply_context_tEPv, ptr noundef nonnull @_ZN2OT33hb_accelerate_subtables_context_t15apply_cached_toINS_6Layout9GSUB_impl30ReverseChainSingleSubstFormat1EEEbPKvPNS_21hb_ot_apply_context_tEPv, ptr noundef nonnull @_ZN2OT33hb_accelerate_subtables_context_t13cache_func_toINS_6Layout9GSUB_impl30ReverseChainSingleSubstFormat1EEEbPNS_21hb_ot_apply_context_tENS_25hb_ot_subtable_cache_op_tE, ptr noundef null)
  br label %_ZNK2OT6Layout9GSUB_impl11SingleSubst8dispatchINS_33hb_accelerate_subtables_context_tEJEEENT_8return_tEPS5_DpOT0_.exit

_ZNK2OT6Layout9GSUB_impl11SingleSubst8dispatchINS_33hb_accelerate_subtables_context_tEJEEENT_8return_tEPS5_DpOT0_.exit: ; preds = %bb.t, %tailrecurse, %bb.v, %bb.u, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %_ZN2OT33hb_accelerate_subtables_context_t8dispatchINS_6Layout9GSUB_impl22LigatureSubstFormat1_2INS2_10SmallTypesEEEEE10hb_empty_tRKT_.exit.i, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2OT33hb_accelerate_subtables_context_t15hb_applicable_t4initINS_6Layout9GSUB_impl20SingleSubstFormat1_3INS3_10SmallTypesEEEEEvRKT_PFbPKvPNS_21hb_ot_apply_context_tEPvESH_PFbSE_NS_25hb_ot_subtable_cache_op_tEESF_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 1 dereferenceable(6) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !1838
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !1835
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %i.b, align 8, !tbaa !1836
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %4, ptr %i.c, align 8, !tbaa !1839
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %5, ptr %i.d, align 8, !tbaa !1404
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false), !tbaa !357
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.g = load i16, ptr %i.f, align 1, !tbaa !283  ; 2 uses
  %i.h = icmp eq i16 %i.g, 0
  %i.i = tail call i16 @llvm.bswap.i16(i16 %i.g)
  %i.j = zext i16 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %i.j
  %.0.i.i.i = select i1 %i.h, ptr @_hb_NullPool, ptr %i.k, !prof !267 ; 5 uses
  %i.l = load i16, ptr %.0.i.i.i, align 1, !tbaa !283
  %i.m = tail call noundef i16 @llvm.bswap.i16(i16 %i.l)
  switch i16 %i.m, label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit [
    i16 1, label %bb.b
    i16 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 2
  %i.o = load i16, ptr %i.n, align 1, !tbaa !283  ; 2 uses
  %i.p = tail call noundef i16 @llvm.bswap.i16(i16 %i.o)
  %.sroa.4.8.extract.trunc.i.i = zext i16 %i.p to i32
  %.not.i.i.i.i.i = icmp eq i16 %i.o, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4
  %.promoted.i.i.i.i.i = load i64, ptr %i.e, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.promoted9.i.i.i.i.i = load i64, ptr %i.r, align 8, !tbaa !357
  %.promoted11.i.i.i.i.i = load i64, ptr %i.s, align 8, !tbaa !357
  br label %bb.c

._crit_edge.i.i.i.i.i:                            ; preds = %bb.c
  store i64 %i.ad, ptr %i.e, align 8, !tbaa !357
  store i64 %i.ah, ptr %i.r, align 8, !tbaa !357
  store i64 %i.am, ptr %i.s, align 8, !tbaa !357
  br label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %i.t = phi i64 [ %.promoted11.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.am, %bb.c ]
  %i.u = phi i64 [ %.promoted9.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.ah, %bb.c ]
  %.08.i.i.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i.i.i ], [ %i.ao, %bb.c ]
  %.067.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i ], [ %i.an, %bb.c ] ; 2 uses
  %i.v = phi i64 [ %.promoted.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.ad, %bb.c ]
  %i.w = load i16, ptr %.067.i.i.i.i.i, align 1, !tbaa !283
  %i.x = tail call noundef i16 @llvm.bswap.i16(i16 %i.w)
  %i.y = zext i16 %i.x to i32                     ; 3 uses
  %i.z = lshr i32 %i.y, 4
  %i.aa = and i32 %i.z, 63
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = shl nuw i64 1, %i.ab
  %i.ad = or i64 %i.ac, %i.v                      ; 2 uses
  %i.ae = and i32 %i.y, 63
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = shl nuw i64 1, %i.af
  %i.ah = or i64 %i.ag, %i.u                      ; 2 uses
  %i.ai = lshr i32 %i.y, 6
  %i.aj = and i32 %i.ai, 63
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = shl nuw i64 1, %i.ak
  %i.am = or i64 %i.al, %i.t                      ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.067.i.i.i.i.i, i64 2
  %i.ao = add nuw i32 %.08.i.i.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i32 %i.ao, %.sroa.4.8.extract.trunc.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %bb.c, !llvm.loop !162

bb.d:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 2
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4 ; 2 uses
  %i.ar = load i16, ptr %i.ap, align 1, !tbaa !283 ; 2 uses
  %i.as = tail call noundef i16 @llvm.bswap.i16(i16 %i.ar)
  %i.at = zext i16 %i.as to i64
  %.idx.i.i = mul nuw nsw i64 %i.at, 6
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.idx.i.i
  %.not14.i.i = icmp eq i16 %i.ar, 0
  br i1 %.not14.i.i, label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %.01115.i.i = phi ptr [ %i.aw, %.lr.ph.i.i ], [ %i.aq, %bb.d ] ; 2 uses
  %i.av = tail call noundef zeroext i1 @_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI15hb_set_digest_tEEbPT_(ptr noundef nonnull align 1 dereferenceable(6) %.01115.i.i, ptr noundef nonnull %i.e)
  %i.aw = getelementptr inbounds nuw i8, ptr %.01115.i.i, i64 6 ; 2 uses
  %.not.i.i = icmp ne ptr %i.aw, %i.au
  %or.cond.not = select i1 %i.av, i1 %.not.i.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i.i, label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit

_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit: ; preds = %.lr.ph.i.i, %bb.a, %bb.b, %._crit_edge.i.i.i.i.i, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT33hb_accelerate_subtables_context_t8apply_toINS_6Layout9GSUB_impl20SingleSubstFormat1_3INS2_10SmallTypesEEEEEbPKvPNS_21hb_ot_apply_context_tEPv(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1278 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !589
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 92
  %i.f = load i32, ptr %i.e, align 4, !tbaa !653
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [20 x i8], ptr %i.d, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !637  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.k = load i16, ptr %i.j, align 1, !tbaa !283  ; 2 uses
  %i.l = icmp eq i16 %i.k, 0
  %i.m = tail call i16 @llvm.bswap.i16(i16 %i.k)
  %i.n = zext i16 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %i.n
  %.0.i.i.i.i = select i1 %i.l, ptr @_hb_NullPool, ptr %i.o, !prof !267
  %i.p = tail call noundef i32 @_ZNK2OT6Layout6Common8Coverage12get_coverageEj(ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i.i.i, i32 noundef %i.i)
  %i.q = icmp ne i32 %i.p, -1                     ; 2 uses
  br i1 %i.q, label %bb.b, label %_ZN2OT33hb_accelerate_subtables_context_t6apply_INS_6Layout9GSUB_impl20SingleSubstFormat1_3INS2_10SmallTypesEEEEEN10_hb_head_tIbJDTclptfp_5applyfp0_EEEE4typeEPKT_PNS_21hb_ot_apply_context_tEPv11hb_priorityILj0EE.exit

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.s = load i16, ptr %i.r, align 1, !tbaa !283
  %i.t = tail call noundef i16 @llvm.bswap.i16(i16 %i.s)
  %.tr.i.i = trunc i32 %i.i to i16
  %.narrow.i.i = add i16 %i.t, %.tr.i.i
  %i.u = zext i16 %.narrow.i.i to i32
  tail call void @_ZN2OT21hb_ot_apply_context_t13replace_glyphEj(ptr noundef nonnull align 8 dereferenceable(384) %1, i32 noundef %i.u)
  br label %_ZN2OT33hb_accelerate_subtables_context_t6apply_INS_6Layout9GSUB_impl20SingleSubstFormat1_3INS2_10SmallTypesEEEEEN10_hb_head_tIbJDTclptfp_5applyfp0_EEEE4typeEPKT_PNS_21hb_ot_apply_context_tEPv11hb_priorityILj0EE.exit

_ZN2OT33hb_accelerate_subtables_context_t6apply_INS_6Layout9GSUB_impl20SingleSubstFormat1_3INS2_10SmallTypesEEEEEN10_hb_head_tIbJDTclptfp_5applyfp0_EEEE4typeEPKT_PNS_21hb_ot_apply_context_tEPv11hb_priorityILj0EE.exit: ; preds = %bb.a, %bb.b
  ret i1 %i.q
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT33hb_accelerate_subtables_context_t15apply_cached_toINS_6Layout9GSUB_impl20SingleSubstFormat1_3INS2_10SmallTypesEEEEEbPKvPNS_21hb_ot_apply_context_tEPv(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1278 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !589
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 92
  %i.f = load i32, ptr %i.e, align 4, !tbaa !653
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [20 x i8], ptr %i.d, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !637  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.k = load i16, ptr %i.j, align 1, !tbaa !283  ; 2 uses
  %i.l = icmp eq i16 %i.k, 0
  %i.m = tail call i16 @llvm.bswap.i16(i16 %i.k)
  %i.n = zext i16 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %i.n
  %.0.i.i.i.i = select i1 %i.l, ptr @_hb_NullPool, ptr %i.o, !prof !267
  %i.p = tail call noundef i32 @_ZNK2OT6Layout6Common8Coverage12get_coverageEj(ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i.i.i, i32 noundef %i.i)
  %i.q = icmp ne i32 %i.p, -1                     ; 2 uses
  br i1 %i.q, label %bb.b, label %_ZN2OT33hb_accelerate_subtables_context_t13apply_cached_INS_6Layout9GSUB_impl20SingleSubstFormat1_3INS2_10SmallTypesEEEEEN10_hb_head_tIbJDTclptfp_5applyfp0_EEEE4typeEPKT_PNS_21hb_ot_apply_context_tEPv11hb_priorityILj0EE.exit

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.s = load i16, ptr %i.r, align 1, !tbaa !283
  %i.t = tail call noundef i16 @llvm.bswap.i16(i16 %i.s)
  %.tr.i.i = trunc i32 %i.i to i16
  %.narrow.i.i = add i16 %i.t, %.tr.i.i
  %i.u = zext i16 %.narrow.i.i to i32
  tail call void @_ZN2OT21hb_ot_apply_context_t13replace_glyphEj(ptr noundef nonnull align 8 dereferenceable(384) %1, i32 noundef %i.u)
  br label %_ZN2OT33hb_accelerate_subtables_context_t13apply_cached_INS_6Layout9GSUB_impl20SingleSubstFormat1_3INS2_10SmallTypesEEEEEN10_hb_head_tIbJDTclptfp_5applyfp0_EEEE4typeEPKT_PNS_21hb_ot_apply_context_tEPv11hb_priorityILj0EE.exit

_ZN2OT33hb_accelerate_subtables_context_t13apply_cached_INS_6Layout9GSUB_impl20SingleSubstFormat1_3INS2_10SmallTypesEEEEEN10_hb_head_tIbJDTclptfp_5applyfp0_EEEE4typeEPKT_PNS_21hb_ot_apply_context_tEPv11hb_priorityILj0EE.exit: ; preds = %bb.a, %bb.b
  ret i1 %i.q
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT33hb_accelerate_subtables_context_t13cache_func_toINS_6Layout9GSUB_impl20SingleSubstFormat1_3INS2_10SmallTypesEEEEEbPNS_21hb_ot_apply_context_tENS_25hb_ot_subtable_cache_op_tE(ptr noundef %0, i32 noundef %1) #16 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2OT21hb_ot_apply_context_t13replace_glyphEj(ptr noundef nonnull align 8 dereferenceable(384) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN2OT21hb_ot_apply_context_t16_set_glyph_classEjjbb(ptr noundef nonnull align 8 dereferenceable(384) %0, i32 noundef %1, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1278 ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 100 ; 6 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !635
  %i.e = add i32 %i.d, 1                          ; 3 uses
  %.not.i.i.i.i = icmp eq i32 %i.e, 0
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.g = load i32, ptr %i.f, align 8
  %i.h = icmp ult i32 %i.e, %i.g
  %i.i = select i1 %.not.i.i.i.i, i1 true, i1 %i.h
  br i1 %i.i, label %_ZN11hb_buffer_t6ensureEj.exit.thread.i.i.i, label %_ZN11hb_buffer_t6ensureEj.exit.i.i.i, !prof !268

_ZN11hb_buffer_t6ensureEj.exit.i.i.i:             ; preds = %bb.a
  %i.j = tail call noundef zeroext i1 @_ZN11hb_buffer_t7enlargeEj(ptr noundef nonnull align 8 dereferenceable(276) %i.b, i32 noundef %i.e)
  br i1 %i.j, label %_ZN11hb_buffer_t6ensureEj.exit.thread.i.i.i, label %_ZN11hb_buffer_t13replace_glyphEj.exit, !prof !318

_ZN11hb_buffer_t6ensureEj.exit.thread.i.i.i:      ; preds = %_ZN11hb_buffer_t6ensureEj.exit.i.i.i, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 120 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !636
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !589  ; 2 uses
  %i.o = icmp eq ptr %i.l, %i.n
  br i1 %i.o, label %bb.b, label %bb.e

bb.b:                                             ; preds = %_ZN11hb_buffer_t6ensureEj.exit.thread.i.i.i
  %i.p = load i32, ptr %i.c, align 4, !tbaa !635  ; 3 uses
  %i.q = add i32 %i.p, 1
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 92
  %i.s = load i32, ptr %i.r, align 4, !tbaa !653
  %i.t = add i32 %i.s, 1
  %i.u = icmp ugt i32 %i.q, %i.t
  br i1 %i.u, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !611  ; 2 uses
  store ptr %i.w, ptr %i.k, align 8, !tbaa !636
  %.not.i4.i.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i4.i.i.i, label %bb.e, label %bb.d, !prof !267

bb.d:                                             ; preds = %bb.c
  %i.x = zext i32 %i.p to i64
  %i.y = mul nuw nsw i64 %i.x, 20
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr readonly align 1 %i.n, i64 %i.y, i1 false), !alias.scope !4444
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %_ZN11hb_buffer_t6ensureEj.exit.thread.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 92 ; 3 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !653 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !607
  %i.ad = icmp ult i32 %i.aa, %i.ac
  br i1 %i.ad, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ae = load ptr, ptr %i.m, align 8, !tbaa !589
  %i.af = zext i32 %i.aa to i64
  %i.ag = getelementptr inbounds nuw [20 x i8], ptr %i.ae, i64 %i.af
  %.pre.i.i = load ptr, ptr %i.k, align 8, !tbaa !636
  %.pre22.i.i = load i32, ptr %i.c, align 4, !tbaa !635
  br label %.lr.ph.i.i

bb.g:                                             ; preds = %bb.e
  %i.ah = load ptr, ptr %i.k, align 8, !tbaa !636 ; 2 uses
  %i.ai = load i32, ptr %i.c, align 4, !tbaa !635 ; 2 uses
  %narrow.i.i = tail call i32 @llvm.usub.sat.i32(i32 %i.ai, i32 1)
  %i.aj = zext i32 %narrow.i.i to i64
  %i.ak = getelementptr inbounds nuw [20 x i8], ptr %i.ah, i64 %i.aj
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g, %bb.f
  %i.al = phi i32 [ %.pre22.i.i, %bb.f ], [ %i.ai, %bb.g ]
  %i.am = phi ptr [ %.pre.i.i, %bb.f ], [ %i.ah, %bb.g ]
  %i.an = phi ptr [ %i.ag, %bb.f ], [ %i.ak, %bb.g ]
  %i.ao = zext i32 %i.al to i64
  %i.ap = getelementptr inbounds nuw [20 x i8], ptr %i.am, i64 %i.ao ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ap, ptr noundef nonnull align 4 dereferenceable(20) %i.an, i64 20, i1 false), !tbaa.struct !610
  store i32 %1, ptr %i.ap, align 4, !tbaa !637
  %.pre23.i.i = load i32, ptr %i.z, align 4, !tbaa !653
  %.pre24.i.i = load i32, ptr %i.c, align 4, !tbaa !635
  %i.aq = add i32 %.pre23.i.i, 1
  store i32 %i.aq, ptr %i.z, align 4, !tbaa !653
  %i.ar = add i32 %.pre24.i.i, 1
  store i32 %i.ar, ptr %i.c, align 4, !tbaa !635
  br label %_ZN11hb_buffer_t13replace_glyphEj.exit

_ZN11hb_buffer_t13replace_glyphEj.exit:           ; preds = %_ZN11hb_buffer_t6ensureEj.exit.i.i.i, %.lr.ph.i.i
  ret void
}
end_hunk_3
begin_hunk_4_@_ZN2OT21hb_ot_apply_context_t16_set_glyph_classEjjbb:bb.a
  br i1 %i.bs, label %_ZN2OT21hb_ot_apply_context_t22_set_glyph_class_propsER15hb_glyph_info_tjj.exit, label %bb.h, !prof !267

bb.h:                                             ; preds = %bb.g
  %i.bt = lshr i32 %1, 5
  %i.bu = and i32 %i.bt, 65528
  %i.bv = or disjoint i32 %i.bo, %i.bu
  %i.bw = trunc nuw i32 %i.bv to i16
  store atomic i16 %i.bw, ptr %i.bb monotonic, align 2
  br label %_ZN2OT21hb_ot_apply_context_t22_set_glyph_class_propsER15hb_glyph_info_tjj.exit

_ZN2OT21hb_ot_apply_context_t22_set_glyph_class_propsER15hb_glyph_info_tjj.exit: ; preds = %_ZNK10hb_cache_tILj21ELj3ELj8ELb1EE3getEjPj.exit.i.i, %bb.f, %bb.g, %bb.h
  %.0.i.i = phi i32 [ %i.bh, %_ZNK10hb_cache_tILj21ELj3ELj8ELb1EE3getEjPj.exit.i.i ], [ %i.bo, %bb.f ], [ %i.bo, %bb.g ], [ %i.bo, %bb.h ]
  %i.bx = and i32 %spec.select, 112
  %i.by = or i32 %.0.i.i, %i.bx
  br label %bb.k

bb.i:                                             ; preds = %bb.c
  %.not16 = icmp eq i32 %2, 0
  br i1 %.not16, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bz = and i32 %spec.select, 112
  %i.ca = or i32 %i.bz, %2
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %_ZN2OT21hb_ot_apply_context_t22_set_glyph_class_propsER15hb_glyph_info_tjj.exit
  %.sink21 = phi i32 [ %i.ca, %bb.j ], [ %i.by, %_ZN2OT21hb_ot_apply_context_t22_set_glyph_class_propsER15hb_glyph_info_tjj.exit ], [ %spec.select, %bb.i ]
  %i.cb = trunc i32 %.sink21 to i16
  store i16 %i.cb, ptr %i.an, align 4, !tbaa !280
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11hb_buffer_t13replace_glyphEj(ptr noundef nonnull align 8 dereferenceable(276) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 6 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !635
  %i.c = add i32 %i.b, 1                          ; 3 uses
  %.not.i.i.i = icmp eq i32 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = load i32, ptr %i.d, align 8
  %i.f = icmp ult i32 %i.c, %i.e
  %i.g = select i1 %.not.i.i.i, i1 true, i1 %i.f
  br i1 %i.g, label %_ZN11hb_buffer_t6ensureEj.exit.thread.i.i, label %_ZN11hb_buffer_t6ensureEj.exit.i.i, !prof !268

_ZN11hb_buffer_t6ensureEj.exit.i.i:               ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_ZN11hb_buffer_t7enlargeEj(ptr noundef nonnull align 8 dereferenceable(276) %0, i32 noundef %i.c)
  br i1 %i.h, label %_ZN11hb_buffer_t6ensureEj.exit.thread.i.i, label %_ZN11hb_buffer_t14replace_glyphsIjEEbjjPKT_.exit, !prof !318

_ZN11hb_buffer_t6ensureEj.exit.thread.i.i:        ; preds = %_ZN11hb_buffer_t6ensureEj.exit.i.i, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !636
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !589  ; 2 uses
  %i.m = icmp eq ptr %i.j, %i.l
  br i1 %i.m, label %bb.b, label %bb.e

bb.b:                                             ; preds = %_ZN11hb_buffer_t6ensureEj.exit.thread.i.i
  %i.n = load i32, ptr %i.a, align 4, !tbaa !635  ; 3 uses
  %i.o = add i32 %i.n, 1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.q = load i32, ptr %i.p, align 4, !tbaa !653
  %i.r = add i32 %i.q, 1
  %i.s = icmp ugt i32 %i.o, %i.r
  br i1 %i.s, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !611  ; 2 uses
  store ptr %i.u, ptr %i.i, align 8, !tbaa !636
  %.not.i4.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i4.i.i, label %bb.e, label %bb.d, !prof !267

bb.d:                                             ; preds = %bb.c
  %i.v = zext i32 %i.n to i64
  %i.w = mul nuw nsw i64 %i.v, 20
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.u, ptr readonly align 1 %i.l, i64 %i.w, i1 false), !alias.scope !4448
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %_ZN11hb_buffer_t6ensureEj.exit.thread.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 3 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !653  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !607
  %i.ab = icmp ult i32 %i.y, %i.aa
  br i1 %i.ab, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ac = load ptr, ptr %i.k, align 8, !tbaa !589
  %i.ad = zext i32 %i.y to i64
  %i.ae = getelementptr inbounds nuw [20 x i8], ptr %i.ac, i64 %i.ad
  %.pre.i = load ptr, ptr %i.i, align 8, !tbaa !636
  %.pre22.i = load i32, ptr %i.a, align 4, !tbaa !635
  br label %.lr.ph.i

bb.g:                                             ; preds = %bb.e
  %i.af = load ptr, ptr %i.i, align 8, !tbaa !636 ; 2 uses
  %i.ag = load i32, ptr %i.a, align 4, !tbaa !635 ; 2 uses
  %narrow.i = tail call i32 @llvm.usub.sat.i32(i32 %i.ag, i32 1)
  %i.ah = zext i32 %narrow.i to i64
  %i.ai = getelementptr inbounds nuw [20 x i8], ptr %i.af, i64 %i.ah
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %bb.f
  %i.aj = phi i32 [ %.pre22.i, %bb.f ], [ %i.ag, %bb.g ]
  %i.ak = phi ptr [ %.pre.i, %bb.f ], [ %i.af, %bb.g ]
  %i.al = phi ptr [ %i.ae, %bb.f ], [ %i.ai, %bb.g ]
  %i.am = zext i32 %i.aj to i64
  %i.an = getelementptr inbounds nuw [20 x i8], ptr %i.ak, i64 %i.am ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.an, ptr noundef nonnull align 4 dereferenceable(20) %i.al, i64 20, i1 false), !tbaa.struct !610
  store i32 %1, ptr %i.an, align 4, !tbaa !637
  %.pre23.i = load i32, ptr %i.x, align 4, !tbaa !653
  %.pre24.i = load i32, ptr %i.a, align 4, !tbaa !635
  %i.ao = add i32 %.pre23.i, 1
  store i32 %i.ao, ptr %i.x, align 4, !tbaa !653
  %i.ap = add i32 %.pre24.i, 1
  store i32 %i.ap, ptr %i.a, align 4, !tbaa !635
  br label %_ZN11hb_buffer_t14replace_glyphsIjEEbjjPKT_.exit

_ZN11hb_buffer_t14replace_glyphsIjEEbjjPKT_.exit: ; preds = %_ZN11hb_buffer_t6ensureEj.exit.i.i, %.lr.ph.i
  %i.aq = phi i1 [ true, %.lr.ph.i ], [ false, %_ZN11hb_buffer_t6ensureEj.exit.i.i ]
  ret i1 %i.aq
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2OT33hb_accelerate_subtables_context_t15hb_applicable_t4initINS_6Layout9GSUB_impl20SingleSubstFormat2_4INS3_10SmallTypesEEEEEvRKT_PFbPKvPNS_21hb_ot_apply_context_tEPvESH_PFbSE_NS_25hb_ot_subtable_cache_op_tEESF_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 1 dereferenceable(8) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !1838
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !1835
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %i.b, align 8, !tbaa !1836
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %4, ptr %i.c, align 8, !tbaa !1839
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %5, ptr %i.d, align 8, !tbaa !1404
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false), !tbaa !357
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.g = load i16, ptr %i.f, align 1, !tbaa !283  ; 2 uses
  %i.h = icmp eq i16 %i.g, 0
  %i.i = tail call i16 @llvm.bswap.i16(i16 %i.g)
  %i.j = zext i16 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %i.j
  %.0.i.i.i = select i1 %i.h, ptr @_hb_NullPool, ptr %i.k, !prof !267 ; 5 uses
  %i.l = load i16, ptr %.0.i.i.i, align 1, !tbaa !283
  %i.m = tail call noundef i16 @llvm.bswap.i16(i16 %i.l)
  switch i16 %i.m, label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit [
    i16 1, label %bb.b
    i16 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 2
  %i.o = load i16, ptr %i.n, align 1, !tbaa !283  ; 2 uses
  %i.p = tail call noundef i16 @llvm.bswap.i16(i16 %i.o)
  %.sroa.4.8.extract.trunc.i.i = zext i16 %i.p to i32
  %.not.i.i.i.i.i = icmp eq i16 %i.o, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4
  %.promoted.i.i.i.i.i = load i64, ptr %i.e, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.promoted9.i.i.i.i.i = load i64, ptr %i.r, align 8, !tbaa !357
  %.promoted11.i.i.i.i.i = load i64, ptr %i.s, align 8, !tbaa !357
  br label %bb.c

._crit_edge.i.i.i.i.i:                            ; preds = %bb.c
  store i64 %i.ad, ptr %i.e, align 8, !tbaa !357
  store i64 %i.ah, ptr %i.r, align 8, !tbaa !357
  store i64 %i.am, ptr %i.s, align 8, !tbaa !357
  br label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %i.t = phi i64 [ %.promoted11.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.am, %bb.c ]
  %i.u = phi i64 [ %.promoted9.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.ah, %bb.c ]
  %.08.i.i.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i.i.i ], [ %i.ao, %bb.c ]
  %.067.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i ], [ %i.an, %bb.c ] ; 2 uses
  %i.v = phi i64 [ %.promoted.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.ad, %bb.c ]
  %i.w = load i16, ptr %.067.i.i.i.i.i, align 1, !tbaa !283
  %i.x = tail call noundef i16 @llvm.bswap.i16(i16 %i.w)
  %i.y = zext i16 %i.x to i32                     ; 3 uses
  %i.z = lshr i32 %i.y, 4
  %i.aa = and i32 %i.z, 63
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = shl nuw i64 1, %i.ab
  %i.ad = or i64 %i.ac, %i.v                      ; 2 uses
  %i.ae = and i32 %i.y, 63
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = shl nuw i64 1, %i.af
  %i.ah = or i64 %i.ag, %i.u                      ; 2 uses
  %i.ai = lshr i32 %i.y, 6
  %i.aj = and i32 %i.ai, 63
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = shl nuw i64 1, %i.ak
  %i.am = or i64 %i.al, %i.t                      ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.067.i.i.i.i.i, i64 2
  %i.ao = add nuw i32 %.08.i.i.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i32 %i.ao, %.sroa.4.8.extract.trunc.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %bb.c, !llvm.loop !162

bb.d:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 2
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4 ; 2 uses
  %i.ar = load i16, ptr %i.ap, align 1, !tbaa !283 ; 2 uses
  %i.as = tail call noundef i16 @llvm.bswap.i16(i16 %i.ar)
  %i.at = zext i16 %i.as to i64
  %.idx.i.i = mul nuw nsw i64 %i.at, 6
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.idx.i.i
  %.not14.i.i = icmp eq i16 %i.ar, 0
  br i1 %.not14.i.i, label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %.01115.i.i = phi ptr [ %i.aw, %.lr.ph.i.i ], [ %i.aq, %bb.d ] ; 2 uses
  %i.av = tail call noundef zeroext i1 @_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI15hb_set_digest_tEEbPT_(ptr noundef nonnull align 1 dereferenceable(6) %.01115.i.i, ptr noundef nonnull %i.e)
  %i.aw = getelementptr inbounds nuw i8, ptr %.01115.i.i, i64 6 ; 2 uses
  %.not.i.i = icmp ne ptr %i.aw, %i.au
  %or.cond.not = select i1 %i.av, i1 %.not.i.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i.i, label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit

_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit: ; preds = %.lr.ph.i.i, %bb.a, %bb.b, %._crit_edge.i.i.i.i.i, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT33hb_accelerate_subtables_context_t8apply_toINS_6Layout9GSUB_impl20SingleSubstFormat2_4INS2_10SmallTypesEEEEEbPKvPNS_21hb_ot_apply_context_tEPv(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.b = load i16, ptr %i.a, align 1, !tbaa !283  ; 2 uses
  %i.c = icmp eq i16 %i.b, 0
  %i.d = tail call i16 @llvm.bswap.i16(i16 %i.b)
  %i.e = zext i16 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %i.e
  %.0.i.i.i.i = select i1 %i.c, ptr @_hb_NullPool, ptr %i.f, !prof !267
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1278 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !589
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 92
  %i.l = load i32, ptr %i.k, align 4, !tbaa !653
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [20 x i8], ptr %i.j, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !637
  %i.p = tail call noundef i32 @_ZNK2OT6Layout6Common8Coverage12get_coverageEj(ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i.i.i, i32 noundef %i.o) ; 3 uses
  %i.q = icmp eq i32 %i.p, -1
  br i1 %i.q, label %_ZN2OT33hb_accelerate_subtables_context_t6apply_INS_6Layout9GSUB_impl20SingleSubstFormat2_4INS2_10SmallTypesEEEEEN10_hb_head_tIbJDTclptfp_5applyfp0_EEEE4typeEPKT_PNS_21hb_ot_apply_context_tEPv11hb_priorityILj0EE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.s = load i16, ptr %i.r, align 1, !tbaa !283
  %i.t = tail call noundef i16 @llvm.bswap.i16(i16 %i.s)
  %i.u = zext i16 %i.t to i32
  %.not.i.i = icmp ult i32 %i.p, %i.u
  br i1 %.not.i.i, label %_ZNK2OT7ArrayOfINS_11HBGlyphID16ENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i, label %_ZN2OT33hb_accelerate_subtables_context_t6apply_INS_6Layout9GSUB_impl20SingleSubstFormat2_4INS2_10SmallTypesEEEEEN10_hb_head_tIbJDTclptfp_5applyfp0_EEEE4typeEPKT_PNS_21hb_ot_apply_context_tEPv11hb_priorityILj0EE.exit, !prof !268

_ZNK2OT7ArrayOfINS_11HBGlyphID16ENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i: ; preds = %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.w = zext nneg i32 %i.p to i64
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %i.w
  %i.y = load i16, ptr %i.x, align 1, !tbaa !283
  %i.z = tail call noundef i16 @llvm.bswap.i16(i16 %i.y)
  %i.aa = zext i16 %i.z to i32
  tail call void @_ZN2OT21hb_ot_apply_context_t13replace_glyphEj(ptr noundef nonnull align 8 dereferenceable(384) %1, i32 noundef %i.aa)
  br label %_ZN2OT33hb_accelerate_subtables_context_t6apply_INS_6Layout9GSUB_impl20SingleSubstFormat2_4INS2_10SmallTypesEEEEEN10_hb_head_tIbJDTclptfp_5applyfp0_EEEE4typeEPKT_PNS_21hb_ot_apply_context_tEPv11hb_priorityILj0EE.exit

_ZN2OT33hb_accelerate_subtables_context_t6apply_INS_6Layout9GSUB_impl20SingleSubstFormat2_4INS2_10SmallTypesEEEEEN10_hb_head_tIbJDTclptfp_5applyfp0_EEEE4typeEPKT_PNS_21hb_ot_apply_context_tEPv11hb_priorityILj0EE.exit: ; preds = %bb.a, %bb.b, %_ZNK2OT7ArrayOfINS_11HBGlyphID16ENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i
  %.0.i.i = phi i1 [ true, %_ZNK2OT7ArrayOfINS_11HBGlyphID16ENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i ], [ false, %bb.a ], [ false, %bb.b ]
  ret i1 %.0.i.i
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT33hb_accelerate_subtables_context_t15apply_cached_toINS_6Layout9GSUB_impl20SingleSubstFormat2_4INS2_10SmallTypesEEEEEbPKvPNS_21hb_ot_apply_context_tEPv(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.b = load i16, ptr %i.a, align 1, !tbaa !283  ; 2 uses
  %i.c = icmp eq i16 %i.b, 0
  %i.d = tail call i16 @llvm.bswap.i16(i16 %i.b)
  %i.e = zext i16 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %i.e
  %.0.i.i.i.i = select i1 %i.c, ptr @_hb_NullPool, ptr %i.f, !prof !267
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1278 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !589
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 92
  %i.l = load i32, ptr %i.k, align 4, !tbaa !653
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [20 x i8], ptr %i.j, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !637
  %i.p = tail call noundef i32 @_ZNK2OT6Layout6Common8Coverage12get_coverageEj(ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i.i.i, i32 noundef %i.o) ; 3 uses
  %i.q = icmp eq i32 %i.p, -1
  br i1 %i.q, label %_ZN2OT33hb_accelerate_subtables_context_t13apply_cached_INS_6Layout9GSUB_impl20SingleSubstFormat2_4INS2_10SmallTypesEEEEEN10_hb_head_tIbJDTclptfp_5applyfp0_EEEE4typeEPKT_PNS_21hb_ot_apply_context_tEPv11hb_priorityILj0EE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.s = load i16, ptr %i.r, align 1, !tbaa !283
  %i.t = tail call noundef i16 @llvm.bswap.i16(i16 %i.s)
  %i.u = zext i16 %i.t to i32
  %.not.i.i = icmp ult i32 %i.p, %i.u
  br i1 %.not.i.i, label %_ZNK2OT7ArrayOfINS_11HBGlyphID16ENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i, label %_ZN2OT33hb_accelerate_subtables_context_t13apply_cached_INS_6Layout9GSUB_impl20SingleSubstFormat2_4INS2_10SmallTypesEEEEEN10_hb_head_tIbJDTclptfp_5applyfp0_EEEE4typeEPKT_PNS_21hb_ot_apply_context_tEPv11hb_priorityILj0EE.exit, !prof !268

_ZNK2OT7ArrayOfINS_11HBGlyphID16ENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i: ; preds = %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.w = zext nneg i32 %i.p to i64
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %i.w
  %i.y = load i16, ptr %i.x, align 1, !tbaa !283
  %i.z = tail call noundef i16 @llvm.bswap.i16(i16 %i.y)
  %i.aa = zext i16 %i.z to i32
  tail call void @_ZN2OT21hb_ot_apply_context_t13replace_glyphEj(ptr noundef nonnull align 8 dereferenceable(384) %1, i32 noundef %i.aa)
  br label %_ZN2OT33hb_accelerate_subtables_context_t13apply_cached_INS_6Layout9GSUB_impl20SingleSubstFormat2_4INS2_10SmallTypesEEEEEN10_hb_head_tIbJDTclptfp_5applyfp0_EEEE4typeEPKT_PNS_21hb_ot_apply_context_tEPv11hb_priorityILj0EE.exit

_ZN2OT33hb_accelerate_subtables_context_t13apply_cached_INS_6Layout9GSUB_impl20SingleSubstFormat2_4INS2_10SmallTypesEEEEEN10_hb_head_tIbJDTclptfp_5applyfp0_EEEE4typeEPKT_PNS_21hb_ot_apply_context_tEPv11hb_priorityILj0EE.exit: ; preds = %bb.a, %bb.b, %_ZNK2OT7ArrayOfINS_11HBGlyphID16ENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i
  %.0.i.i = phi i1 [ true, %_ZNK2OT7ArrayOfINS_11HBGlyphID16ENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i ], [ false, %bb.a ], [ false, %bb.b ]
  ret i1 %.0.i.i
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT33hb_accelerate_subtables_context_t13cache_func_toINS_6Layout9GSUB_impl20SingleSubstFormat2_4INS2_10SmallTypesEEEEEbPNS_21hb_ot_apply_context_tENS_25hb_ot_subtable_cache_op_tE(ptr noundef %0, i32 noundef %1) #16 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2OT33hb_accelerate_subtables_context_t15hb_applicable_t4initINS_6Layout9GSUB_impl22MultipleSubstFormat1_2INS3_10SmallTypesEEEEEvRKT_PFbPKvPNS_21hb_ot_apply_context_tEPvESH_PFbSE_NS_25hb_ot_subtable_cache_op_tEESF_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 1 dereferenceable(8) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !1838
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !1835
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %i.b, align 8, !tbaa !1836
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %4, ptr %i.c, align 8, !tbaa !1839
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %5, ptr %i.d, align 8, !tbaa !1404
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false), !tbaa !357
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.g = load i16, ptr %i.f, align 1, !tbaa !283  ; 2 uses
  %i.h = icmp eq i16 %i.g, 0
  %i.i = tail call i16 @llvm.bswap.i16(i16 %i.g)
  %i.j = zext i16 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %i.j
  %.0.i.i.i = select i1 %i.h, ptr @_hb_NullPool, ptr %i.k, !prof !267 ; 5 uses
  %i.l = load i16, ptr %.0.i.i.i, align 1, !tbaa !283
  %i.m = tail call noundef i16 @llvm.bswap.i16(i16 %i.l)
  switch i16 %i.m, label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit [
    i16 1, label %bb.b
    i16 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 2
  %i.o = load i16, ptr %i.n, align 1, !tbaa !283  ; 2 uses
  %i.p = tail call noundef i16 @llvm.bswap.i16(i16 %i.o)
  %.sroa.4.8.extract.trunc.i.i = zext i16 %i.p to i32
  %.not.i.i.i.i.i = icmp eq i16 %i.o, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4
  %.promoted.i.i.i.i.i = load i64, ptr %i.e, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.promoted9.i.i.i.i.i = load i64, ptr %i.r, align 8, !tbaa !357
  %.promoted11.i.i.i.i.i = load i64, ptr %i.s, align 8, !tbaa !357
  br label %bb.c

._crit_edge.i.i.i.i.i:                            ; preds = %bb.c
  store i64 %i.ad, ptr %i.e, align 8, !tbaa !357
  store i64 %i.ah, ptr %i.r, align 8, !tbaa !357
  store i64 %i.am, ptr %i.s, align 8, !tbaa !357
  br label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %i.t = phi i64 [ %.promoted11.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.am, %bb.c ]
  %i.u = phi i64 [ %.promoted9.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.ah, %bb.c ]
  %.08.i.i.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i.i.i ], [ %i.ao, %bb.c ]
  %.067.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i ], [ %i.an, %bb.c ] ; 2 uses
  %i.v = phi i64 [ %.promoted.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.ad, %bb.c ]
  %i.w = load i16, ptr %.067.i.i.i.i.i, align 1, !tbaa !283
  %i.x = tail call noundef i16 @llvm.bswap.i16(i16 %i.w)
  %i.y = zext i16 %i.x to i32                     ; 3 uses
  %i.z = lshr i32 %i.y, 4
  %i.aa = and i32 %i.z, 63
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = shl nuw i64 1, %i.ab
  %i.ad = or i64 %i.ac, %i.v                      ; 2 uses
  %i.ae = and i32 %i.y, 63
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = shl nuw i64 1, %i.af
  %i.ah = or i64 %i.ag, %i.u                      ; 2 uses
  %i.ai = lshr i32 %i.y, 6
  %i.aj = and i32 %i.ai, 63
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = shl nuw i64 1, %i.ak
  %i.am = or i64 %i.al, %i.t                      ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.067.i.i.i.i.i, i64 2
  %i.ao = add nuw i32 %.08.i.i.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i32 %i.ao, %.sroa.4.8.extract.trunc.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %bb.c, !llvm.loop !162

bb.d:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 2
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4 ; 2 uses
  %i.ar = load i16, ptr %i.ap, align 1, !tbaa !283 ; 2 uses
  %i.as = tail call noundef i16 @llvm.bswap.i16(i16 %i.ar)
  %i.at = zext i16 %i.as to i64
  %.idx.i.i = mul nuw nsw i64 %i.at, 6
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.idx.i.i
  %.not14.i.i = icmp eq i16 %i.ar, 0
  br i1 %.not14.i.i, label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %.01115.i.i = phi ptr [ %i.aw, %.lr.ph.i.i ], [ %i.aq, %bb.d ] ; 2 uses
  %i.av = tail call noundef zeroext i1 @_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI15hb_set_digest_tEEbPT_(ptr noundef nonnull align 1 dereferenceable(6) %.01115.i.i, ptr noundef nonnull %i.e)
  %i.aw = getelementptr inbounds nuw i8, ptr %.01115.i.i, i64 6 ; 2 uses
  %.not.i.i = icmp ne ptr %i.aw, %i.au
  %or.cond.not = select i1 %i.av, i1 %.not.i.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i.i, label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit

_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit: ; preds = %.lr.ph.i.i, %bb.a, %bb.b, %._crit_edge.i.i.i.i.i, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT33hb_accelerate_subtables_context_t8apply_toINS_6Layout9GSUB_impl22MultipleSubstFormat1_2INS2_10SmallTypesEEEEEbPKvPNS_21hb_ot_apply_context_tEPv(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.b = load i16, ptr %i.a, align 1, !tbaa !283  ; 2 uses
  %i.c = icmp eq i16 %i.b, 0
  %i.d = tail call i16 @llvm.bswap.i16(i16 %i.b)
  %i.e = zext i16 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %i.e
  %.0.i.i.i.i = select i1 %i.c, ptr @_hb_NullPool, ptr %i.f, !prof !267
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1278 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !589
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 92
  %i.l = load i32, ptr %i.k, align 4, !tbaa !653
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [20 x i8], ptr %i.j, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !637
  %i.p = tail call noundef i32 @_ZNK2OT6Layout6Common8Coverage12get_coverageEj(ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i.i.i, i32 noundef %i.o) ; 3 uses
  %i.q = icmp eq i32 %i.p, -1
  br i1 %i.q, label %_ZN2OT33hb_accelerate_subtables_context_t6apply_INS_6Layout9GSUB_impl22MultipleSubstFormat1_2INS2_10SmallTypesEEEEEN10_hb_head_tIbJDTclptfp_5applyfp0_EEEE4typeEPKT_PNS_21hb_ot_apply_context_tEPv11hb_priorityILj0EE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.s = load i16, ptr %i.r, align 1, !tbaa !283
  %i.t = tail call noundef i16 @llvm.bswap.i16(i16 %i.s)
  %i.u = zext i16 %i.t to i32
  %.not.i.i.i = icmp ult i32 %i.p, %i.u
  br i1 %.not.i.i.i, label %bb.c, label %_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl8SequenceINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit.i.i, !prof !268

bb.c:                                             ; preds = %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.w = zext nneg i32 %i.p to i64
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %i.w
  br label %_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl8SequenceINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit.i.i

_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl8SequenceINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit.i.i: ; preds = %bb.c, %bb.b
  %.0.i.i.i = phi ptr [ %i.x, %bb.c ], [ @_hb_NullPool, %bb.b ]
  %i.y = load i16, ptr %.0.i.i.i, align 1, !tbaa !283 ; 2 uses
  %i.z = icmp eq i16 %i.y, 0
  %i.aa = tail call i16 @llvm.bswap.i16(i16 %i.y)
  %i.ab = zext i16 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %i.ab
  %.0.i.i6.i.i = select i1 %i.z, ptr @_hb_NullPool, ptr %i.ac, !prof !267
  %i.ad = tail call noundef zeroext i1 @_ZNK2OT6Layout9GSUB_impl8SequenceINS0_10SmallTypesEE5applyEPNS_21hb_ot_apply_context_tE(ptr noundef nonnull align 1 dereferenceable(4) %.0.i.i6.i.i, ptr noundef nonnull %1)
  br label %_ZN2OT33hb_accelerate_subtables_context_t6apply_INS_6Layout9GSUB_impl22MultipleSubstFormat1_2INS2_10SmallTypesEEEEEN10_hb_head_tIbJDTclptfp_5applyfp0_EEEE4typeEPKT_PNS_21hb_ot_apply_context_tEPv11hb_priorityILj0EE.exit

_ZN2OT33hb_accelerate_subtables_context_t6apply_INS_6Layout9GSUB_impl22MultipleSubstFormat1_2INS2_10SmallTypesEEEEEN10_hb_head_tIbJDTclptfp_5applyfp0_EEEE4typeEPKT_PNS_21hb_ot_apply_context_tEPv11hb_priorityILj0EE.exit: ; preds = %bb.a, %_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl8SequenceINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit.i.i
  %.0.i.i = phi i1 [ %i.ad, %_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl8SequenceINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit.i.i ], [ false, %bb.a ]
  ret i1 %.0.i.i
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT33hb_accelerate_subtables_context_t15apply_cached_toINS_6Layout9GSUB_impl22MultipleSubstFormat1_2INS2_10SmallTypesEEEEEbPKvPNS_21hb_ot_apply_context_tEPv(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.b = load i16, ptr %i.a, align 1, !tbaa !283  ; 2 uses
  %i.c = icmp eq i16 %i.b, 0
  %i.d = tail call i16 @llvm.bswap.i16(i16 %i.b)
  %i.e = zext i16 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %i.e
  %.0.i.i.i.i = select i1 %i.c, ptr @_hb_NullPool, ptr %i.f, !prof !267
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1278 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !589
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 92
  %i.l = load i32, ptr %i.k, align 4, !tbaa !653
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [20 x i8], ptr %i.j, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !637
  %i.p = tail call noundef i32 @_ZNK2OT6Layout6Common8Coverage12get_coverageEj(ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i.i.i, i32 noundef %i.o) ; 3 uses
  %i.q = icmp eq i32 %i.p, -1
  br i1 %i.q, label %_ZN2OT33hb_accelerate_subtables_context_t13apply_cached_INS_6Layout9GSUB_impl22MultipleSubstFormat1_2INS2_10SmallTypesEEEEEN10_hb_head_tIbJDTclptfp_5applyfp0_EEEE4typeEPKT_PNS_21hb_ot_apply_context_tEPv11hb_priorityILj0EE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.s = load i16, ptr %i.r, align 1, !tbaa !283
  %i.t = tail call noundef i16 @llvm.bswap.i16(i16 %i.s)
  %i.u = zext i16 %i.t to i32
  %.not.i.i.i = icmp ult i32 %i.p, %i.u
  br i1 %.not.i.i.i, label %bb.c, label %_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl8SequenceINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit.i.i, !prof !268

bb.c:                                             ; preds = %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.w = zext nneg i32 %i.p to i64
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %i.w
  br label %_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl8SequenceINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit.i.i

_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl8SequenceINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit.i.i: ; preds = %bb.c, %bb.b
  %.0.i.i.i = phi ptr [ %i.x, %bb.c ], [ @_hb_NullPool, %bb.b ]
  %i.y = load i16, ptr %.0.i.i.i, align 1, !tbaa !283 ; 2 uses
  %i.z = icmp eq i16 %i.y, 0
  %i.aa = tail call i16 @llvm.bswap.i16(i16 %i.y)
  %i.ab = zext i16 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %i.ab
  %.0.i.i6.i.i = select i1 %i.z, ptr @_hb_NullPool, ptr %i.ac, !prof !267
  %i.ad = tail call noundef zeroext i1 @_ZNK2OT6Layout9GSUB_impl8SequenceINS0_10SmallTypesEE5applyEPNS_21hb_ot_apply_context_tE(ptr noundef nonnull align 1 dereferenceable(4) %.0.i.i6.i.i, ptr noundef nonnull %1)
  br label %_ZN2OT33hb_accelerate_subtables_context_t13apply_cached_INS_6Layout9GSUB_impl22MultipleSubstFormat1_2INS2_10SmallTypesEEEEEN10_hb_head_tIbJDTclptfp_5applyfp0_EEEE4typeEPKT_PNS_21hb_ot_apply_context_tEPv11hb_priorityILj0EE.exit

_ZN2OT33hb_accelerate_subtables_context_t13apply_cached_INS_6Layout9GSUB_impl22MultipleSubstFormat1_2INS2_10SmallTypesEEEEEN10_hb_head_tIbJDTclptfp_5applyfp0_EEEE4typeEPKT_PNS_21hb_ot_apply_context_tEPv11hb_priorityILj0EE.exit: ; preds = %bb.a, %_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl8SequenceINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit.i.i
  %.0.i.i = phi i1 [ %i.ad, %_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl8SequenceINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit.i.i ], [ false, %bb.a ]
  ret i1 %.0.i.i
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT33hb_accelerate_subtables_context_t13cache_func_toINS_6Layout9GSUB_impl22MultipleSubstFormat1_2INS2_10SmallTypesEEEEEbPNS_21hb_ot_apply_context_tENS_25hb_ot_subtable_cache_op_tE(ptr noundef %0, i32 noundef %1) #16 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2OT6Layout9GSUB_impl8SequenceINS0_10SmallTypesEE5applyEPNS_21hb_ot_apply_context_tE(ptr noundef nonnull align 1 dereferenceable(4) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 1, !tbaa !283    ; 2 uses
  %i.b = tail call noundef i16 @llvm.bswap.i16(i16 %i.a) ; 2 uses
  switch i16 %i.b, label %bb.d [
    i16 1, label %bb.b
    i16 0, label %bb.c
  ], !prof !1425

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.d = load i16, ptr %i.c, align 1, !tbaa !283
  %i.e = tail call noundef i16 @llvm.bswap.i16(i16 %i.d)
  %i.f = zext i16 %i.e to i32
  tail call void @_ZN2OT21hb_ot_apply_context_t13replace_glyphEj(ptr noundef nonnull align 8 dereferenceable(384) %1, i32 noundef %i.f)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1278
  tail call void @_ZN11hb_buffer_t12delete_glyphEv(ptr noundef nonnull align 8 dereferenceable(276) %i.h)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1278 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 112
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !589
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 92
  %i.n = load i32, ptr %i.m, align 4, !tbaa !653
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [20 x i8], ptr %i.l, i64 %i.o ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 12
  %.val = load i16, ptr %i.q, align 4, !tbaa !280
  %i.r = lshr i16 %.val, 1
  %i.s = and i16 %i.r, 2
  %i.t = zext nneg i16 %i.s to i32                ; 2 uses
  %.not24 = icmp eq i16 %i.a, 0
  br i1 %.not24, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.u = getelementptr i8, ptr %i.p, i64 14
  %.val19 = load i8, ptr %i.u, align 2, !tbaa !280
  %.not = icmp ult i8 %.val19, 32
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %wide.trip.count31 = zext i16 %i.b to i64       ; 2 uses
  br i1 %.not, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %indvars.iv27 = phi i64 [ %indvars.iv.next28, %.lr.ph.split.us ], [ 0, %.lr.ph ] ; 3 uses
  %i.w = load ptr, ptr %i.i, align 8, !tbaa !1278 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 112
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !589
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 92
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !653
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [20 x i8], ptr %i.y, i64 %i.ab
  %i.ad = trunc i64 %indvars.iv27 to i8
end_hunk_4
begin_hunk_5_@_ZNK2OT6Layout9GSUB_impl8SequenceINS0_10SmallTypesEE5applyEPNS_21hb_ot_apply_context_tE:bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 14
  store i8 %i.ae, ptr %i.af, align 2, !tbaa !280
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %indvars.iv27
  %i.ah = load i16, ptr %i.ag, align 1, !tbaa !283
  %i.ai = tail call noundef i16 @llvm.bswap.i16(i16 %i.ah)
  %i.aj = zext i16 %i.ai to i32
  tail call void @_ZN2OT21hb_ot_apply_context_t26output_glyph_for_componentEjj(ptr noundef nonnull align 8 dereferenceable(384) %1, i32 noundef %i.aj, i32 noundef %i.t)
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1 ; 2 uses
  %exitcond32.not = icmp eq i64 %indvars.iv.next28, %wide.trip.count31
  br i1 %exitcond32.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !4449

._crit_edge:                                      ; preds = %.lr.ph.split, %.lr.ph.split.us, %bb.d
  %i.ak = load ptr, ptr %i.i, align 8, !tbaa !1278
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 92 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !653
  %i.an = add i32 %i.am, 1
  store i32 %i.an, ptr %i.al, align 4, !tbaa !653
  br label %bb.e

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.split ], [ 0, %.lr.ph ] ; 2 uses
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %indvars.iv
  %i.ap = load i16, ptr %i.ao, align 1, !tbaa !283
  %i.aq = tail call noundef i16 @llvm.bswap.i16(i16 %i.ap)
  %i.ar = zext i16 %i.aq to i32
  tail call void @_ZN2OT21hb_ot_apply_context_t26output_glyph_for_componentEjj(ptr noundef nonnull align 8 dereferenceable(384) %1, i32 noundef %i.ar, i32 noundef %i.t)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count31
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !4449

bb.e:                                             ; preds = %._crit_edge, %bb.c, %bb.b
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2OT21hb_ot_apply_context_t26output_glyph_for_componentEjj(ptr noundef nonnull align 8 dereferenceable(384) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN2OT21hb_ot_apply_context_t16_set_glyph_classEjjbb(ptr noundef nonnull align 8 dereferenceable(384) %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext false, i1 noundef zeroext true)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1278 ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 100 ; 6 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !635
  %i.e = add i32 %i.d, 1                          ; 3 uses
  %.not.i.i.i.i = icmp eq i32 %i.e, 0
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.g = load i32, ptr %i.f, align 8
  %i.h = icmp ult i32 %i.e, %i.g
  %i.i = select i1 %.not.i.i.i.i, i1 true, i1 %i.h
  br i1 %i.i, label %_ZN11hb_buffer_t6ensureEj.exit.thread.i.i.i, label %_ZN11hb_buffer_t6ensureEj.exit.i.i.i, !prof !268

_ZN11hb_buffer_t6ensureEj.exit.i.i.i:             ; preds = %bb.a
  %i.j = tail call noundef zeroext i1 @_ZN11hb_buffer_t7enlargeEj(ptr noundef nonnull align 8 dereferenceable(276) %i.b, i32 noundef %i.e)
  br i1 %i.j, label %_ZN11hb_buffer_t6ensureEj.exit.thread.i.i.i, label %_ZN11hb_buffer_t12output_glyphEj.exit, !prof !318

_ZN11hb_buffer_t6ensureEj.exit.thread.i.i.i:      ; preds = %_ZN11hb_buffer_t6ensureEj.exit.i.i.i, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 120 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !636
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !589  ; 2 uses
  %i.o = icmp eq ptr %i.l, %i.n
  br i1 %i.o, label %bb.b, label %bb.e

bb.b:                                             ; preds = %_ZN11hb_buffer_t6ensureEj.exit.thread.i.i.i
  %i.p = load i32, ptr %i.c, align 4, !tbaa !635  ; 3 uses
  %i.q = add i32 %i.p, 1
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 92
  %i.s = load i32, ptr %i.r, align 4, !tbaa !653
  %i.t = icmp ugt i32 %i.q, %i.s
  br i1 %i.t, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !611  ; 2 uses
  store ptr %i.v, ptr %i.k, align 8, !tbaa !636
  %.not.i4.i.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i4.i.i.i, label %bb.e, label %bb.d, !prof !267

bb.d:                                             ; preds = %bb.c
  %i.w = zext i32 %i.p to i64
  %i.x = mul nuw nsw i64 %i.w, 20
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr readonly align 1 %i.n, i64 %i.x, i1 false), !alias.scope !4453
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %_ZN11hb_buffer_t6ensureEj.exit.thread.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 92
  %i.z = load i32, ptr %i.y, align 4, !tbaa !653  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !607
  %i.ac = icmp ult i32 %i.z, %i.ab
  br i1 %i.ac, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = load ptr, ptr %i.m, align 8, !tbaa !589
  %i.ae = zext i32 %i.z to i64
  %i.af = getelementptr inbounds nuw [20 x i8], ptr %i.ad, i64 %i.ae
  %.pre.i.i = load ptr, ptr %i.k, align 8, !tbaa !636
  %.pre22.i.i = load i32, ptr %i.c, align 4, !tbaa !635
  br label %.lr.ph.i.i

bb.g:                                             ; preds = %bb.e
  %i.ag = load ptr, ptr %i.k, align 8, !tbaa !636 ; 2 uses
  %i.ah = load i32, ptr %i.c, align 4, !tbaa !635 ; 2 uses
  %narrow.i.i = tail call i32 @llvm.usub.sat.i32(i32 %i.ah, i32 1)
  %i.ai = zext i32 %narrow.i.i to i64
  %i.aj = getelementptr inbounds nuw [20 x i8], ptr %i.ag, i64 %i.ai
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g, %bb.f
  %i.ak = phi i32 [ %.pre22.i.i, %bb.f ], [ %i.ah, %bb.g ]
  %i.al = phi ptr [ %.pre.i.i, %bb.f ], [ %i.ag, %bb.g ]
  %i.am = phi ptr [ %i.af, %bb.f ], [ %i.aj, %bb.g ]
  %i.an = zext i32 %i.ak to i64
  %i.ao = getelementptr inbounds nuw [20 x i8], ptr %i.al, i64 %i.an ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ao, ptr noundef nonnull align 4 dereferenceable(20) %i.am, i64 20, i1 false), !tbaa.struct !610
  store i32 %1, ptr %i.ao, align 4, !tbaa !637
  %.pre24.i.i = load i32, ptr %i.c, align 4, !tbaa !635
  %i.ap = add i32 %.pre24.i.i, 1
  store i32 %i.ap, ptr %i.c, align 4, !tbaa !635
  br label %_ZN11hb_buffer_t12output_glyphEj.exit

_ZN11hb_buffer_t12output_glyphEj.exit:            ; preds = %_ZN11hb_buffer_t6ensureEj.exit.i.i.i, %.lr.ph.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2OT33hb_accelerate_subtables_context_t15hb_applicable_t4initINS_6Layout9GSUB_impl23AlternateSubstFormat1_2INS3_10SmallTypesEEEEEvRKT_PFbPKvPNS_21hb_ot_apply_context_tEPvESH_PFbSE_NS_25hb_ot_subtable_cache_op_tEESF_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 1 dereferenceable(8) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !1838
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !1835
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %i.b, align 8, !tbaa !1836
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %4, ptr %i.c, align 8, !tbaa !1839
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %5, ptr %i.d, align 8, !tbaa !1404
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false), !tbaa !357
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.g = load i16, ptr %i.f, align 1, !tbaa !283  ; 2 uses
  %i.h = icmp eq i16 %i.g, 0
  %i.i = tail call i16 @llvm.bswap.i16(i16 %i.g)
  %i.j = zext i16 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %i.j
  %.0.i.i.i = select i1 %i.h, ptr @_hb_NullPool, ptr %i.k, !prof !267 ; 5 uses
  %i.l = load i16, ptr %.0.i.i.i, align 1, !tbaa !283
  %i.m = tail call noundef i16 @llvm.bswap.i16(i16 %i.l)
  switch i16 %i.m, label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit [
    i16 1, label %bb.b
    i16 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 2
  %i.o = load i16, ptr %i.n, align 1, !tbaa !283  ; 2 uses
  %i.p = tail call noundef i16 @llvm.bswap.i16(i16 %i.o)
  %.sroa.4.8.extract.trunc.i.i = zext i16 %i.p to i32
  %.not.i.i.i.i.i = icmp eq i16 %i.o, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4
  %.promoted.i.i.i.i.i = load i64, ptr %i.e, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.promoted9.i.i.i.i.i = load i64, ptr %i.r, align 8, !tbaa !357
  %.promoted11.i.i.i.i.i = load i64, ptr %i.s, align 8, !tbaa !357
  br label %bb.c

._crit_edge.i.i.i.i.i:                            ; preds = %bb.c
  store i64 %i.ad, ptr %i.e, align 8, !tbaa !357
  store i64 %i.ah, ptr %i.r, align 8, !tbaa !357
  store i64 %i.am, ptr %i.s, align 8, !tbaa !357
  br label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %i.t = phi i64 [ %.promoted11.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.am, %bb.c ]
  %i.u = phi i64 [ %.promoted9.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.ah, %bb.c ]
  %.08.i.i.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i.i.i ], [ %i.ao, %bb.c ]
  %.067.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i ], [ %i.an, %bb.c ] ; 2 uses
  %i.v = phi i64 [ %.promoted.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.ad, %bb.c ]
  %i.w = load i16, ptr %.067.i.i.i.i.i, align 1, !tbaa !283
  %i.x = tail call noundef i16 @llvm.bswap.i16(i16 %i.w)
  %i.y = zext i16 %i.x to i32                     ; 3 uses
  %i.z = lshr i32 %i.y, 4
  %i.aa = and i32 %i.z, 63
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = shl nuw i64 1, %i.ab
  %i.ad = or i64 %i.ac, %i.v                      ; 2 uses
  %i.ae = and i32 %i.y, 63
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = shl nuw i64 1, %i.af
  %i.ah = or i64 %i.ag, %i.u                      ; 2 uses
  %i.ai = lshr i32 %i.y, 6
  %i.aj = and i32 %i.ai, 63
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = shl nuw i64 1, %i.ak
  %i.am = or i64 %i.al, %i.t                      ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.067.i.i.i.i.i, i64 2
  %i.ao = add nuw i32 %.08.i.i.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i32 %i.ao, %.sroa.4.8.extract.trunc.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %bb.c, !llvm.loop !162

bb.d:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 2
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4 ; 2 uses
  %i.ar = load i16, ptr %i.ap, align 1, !tbaa !283 ; 2 uses
  %i.as = tail call noundef i16 @llvm.bswap.i16(i16 %i.ar)
  %i.at = zext i16 %i.as to i64
  %.idx.i.i = mul nuw nsw i64 %i.at, 6
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.idx.i.i
  %.not14.i.i = icmp eq i16 %i.ar, 0
  br i1 %.not14.i.i, label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %.01115.i.i = phi ptr [ %i.aw, %.lr.ph.i.i ], [ %i.aq, %bb.d ] ; 2 uses
  %i.av = tail call noundef zeroext i1 @_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI15hb_set_digest_tEEbPT_(ptr noundef nonnull align 1 dereferenceable(6) %.01115.i.i, ptr noundef nonnull %i.e)
  %i.aw = getelementptr inbounds nuw i8, ptr %.01115.i.i, i64 6 ; 2 uses
  %.not.i.i = icmp ne ptr %i.aw, %i.au
  %or.cond.not = select i1 %i.av, i1 %.not.i.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i.i, label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit

_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit: ; preds = %.lr.ph.i.i, %bb.a, %bb.b, %._crit_edge.i.i.i.i.i, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT33hb_accelerate_subtables_context_t8apply_toINS_6Layout9GSUB_impl23AlternateSubstFormat1_2INS2_10SmallTypesEEEEEbPKvPNS_21hb_ot_apply_context_tEPv(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.b = load i16, ptr %i.a, align 1, !tbaa !283  ; 2 uses
  %i.c = icmp eq i16 %i.b, 0
  %i.d = tail call i16 @llvm.bswap.i16(i16 %i.b)
  %i.e = zext i16 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %i.e
  %.0.i.i.i.i = select i1 %i.c, ptr @_hb_NullPool, ptr %i.f, !prof !267
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1278 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !589
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 92
  %i.l = load i32, ptr %i.k, align 4, !tbaa !653
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [20 x i8], ptr %i.j, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !637
  %i.p = tail call noundef i32 @_ZNK2OT6Layout6Common8Coverage12get_coverageEj(ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i.i.i, i32 noundef %i.o) ; 3 uses
  %i.q = icmp eq i32 %i.p, -1
  br i1 %i.q, label %_ZN2OT33hb_accelerate_subtables_context_t6apply_INS_6Layout9GSUB_impl23AlternateSubstFormat1_2INS2_10SmallTypesEEEEEN10_hb_head_tIbJDTclptfp_5applyfp0_EEEE4typeEPKT_PNS_21hb_ot_apply_context_tEPv11hb_priorityILj0EE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.s = load i16, ptr %i.r, align 1, !tbaa !283
  %i.t = tail call noundef i16 @llvm.bswap.i16(i16 %i.s)
  %i.u = zext i16 %i.t to i32
  %.not.i.i.i = icmp ult i32 %i.p, %i.u
  br i1 %.not.i.i.i, label %bb.c, label %_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl12AlternateSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit.i.i, !prof !268

bb.c:                                             ; preds = %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.w = zext nneg i32 %i.p to i64
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %i.w
  br label %_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl12AlternateSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit.i.i

_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl12AlternateSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit.i.i: ; preds = %bb.c, %bb.b
  %.0.i.i.i = phi ptr [ %i.x, %bb.c ], [ @_hb_NullPool, %bb.b ]
  %i.y = load i16, ptr %.0.i.i.i, align 1, !tbaa !283 ; 2 uses
  %i.z = icmp eq i16 %i.y, 0
  %i.aa = tail call i16 @llvm.bswap.i16(i16 %i.y)
  %i.ab = zext i16 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %i.ab
  %.0.i.i6.i.i = select i1 %i.z, ptr @_hb_NullPool, ptr %i.ac, !prof !267
  %i.ad = tail call noundef zeroext i1 @_ZNK2OT6Layout9GSUB_impl12AlternateSetINS0_10SmallTypesEE5applyEPNS_21hb_ot_apply_context_tE(ptr noundef nonnull align 1 dereferenceable(4) %.0.i.i6.i.i, ptr noundef nonnull %1)
  br label %_ZN2OT33hb_accelerate_subtables_context_t6apply_INS_6Layout9GSUB_impl23AlternateSubstFormat1_2INS2_10SmallTypesEEEEEN10_hb_head_tIbJDTclptfp_5applyfp0_EEEE4typeEPKT_PNS_21hb_ot_apply_context_tEPv11hb_priorityILj0EE.exit

_ZN2OT33hb_accelerate_subtables_context_t6apply_INS_6Layout9GSUB_impl23AlternateSubstFormat1_2INS2_10SmallTypesEEEEEN10_hb_head_tIbJDTclptfp_5applyfp0_EEEE4typeEPKT_PNS_21hb_ot_apply_context_tEPv11hb_priorityILj0EE.exit: ; preds = %bb.a, %_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl12AlternateSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit.i.i
  %.0.i.i = phi i1 [ %i.ad, %_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl12AlternateSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit.i.i ], [ false, %bb.a ]
  ret i1 %.0.i.i
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT33hb_accelerate_subtables_context_t15apply_cached_toINS_6Layout9GSUB_impl23AlternateSubstFormat1_2INS2_10SmallTypesEEEEEbPKvPNS_21hb_ot_apply_context_tEPv(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.b = load i16, ptr %i.a, align 1, !tbaa !283  ; 2 uses
  %i.c = icmp eq i16 %i.b, 0
  %i.d = tail call i16 @llvm.bswap.i16(i16 %i.b)
  %i.e = zext i16 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %i.e
  %.0.i.i.i.i = select i1 %i.c, ptr @_hb_NullPool, ptr %i.f, !prof !267
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1278 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !589
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 92
  %i.l = load i32, ptr %i.k, align 4, !tbaa !653
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [20 x i8], ptr %i.j, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !637
  %i.p = tail call noundef i32 @_ZNK2OT6Layout6Common8Coverage12get_coverageEj(ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i.i.i, i32 noundef %i.o) ; 3 uses
  %i.q = icmp eq i32 %i.p, -1
  br i1 %i.q, label %_ZN2OT33hb_accelerate_subtables_context_t13apply_cached_INS_6Layout9GSUB_impl23AlternateSubstFormat1_2INS2_10SmallTypesEEEEEN10_hb_head_tIbJDTclptfp_5applyfp0_EEEE4typeEPKT_PNS_21hb_ot_apply_context_tEPv11hb_priorityILj0EE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.s = load i16, ptr %i.r, align 1, !tbaa !283
  %i.t = tail call noundef i16 @llvm.bswap.i16(i16 %i.s)
  %i.u = zext i16 %i.t to i32
  %.not.i.i.i = icmp ult i32 %i.p, %i.u
  br i1 %.not.i.i.i, label %bb.c, label %_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl12AlternateSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit.i.i, !prof !268

bb.c:                                             ; preds = %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.w = zext nneg i32 %i.p to i64
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %i.w
  br label %_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl12AlternateSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit.i.i

_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl12AlternateSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit.i.i: ; preds = %bb.c, %bb.b
  %.0.i.i.i = phi ptr [ %i.x, %bb.c ], [ @_hb_NullPool, %bb.b ]
  %i.y = load i16, ptr %.0.i.i.i, align 1, !tbaa !283 ; 2 uses
  %i.z = icmp eq i16 %i.y, 0
  %i.aa = tail call i16 @llvm.bswap.i16(i16 %i.y)
  %i.ab = zext i16 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %i.ab
  %.0.i.i6.i.i = select i1 %i.z, ptr @_hb_NullPool, ptr %i.ac, !prof !267
  %i.ad = tail call noundef zeroext i1 @_ZNK2OT6Layout9GSUB_impl12AlternateSetINS0_10SmallTypesEE5applyEPNS_21hb_ot_apply_context_tE(ptr noundef nonnull align 1 dereferenceable(4) %.0.i.i6.i.i, ptr noundef nonnull %1)
  br label %_ZN2OT33hb_accelerate_subtables_context_t13apply_cached_INS_6Layout9GSUB_impl23AlternateSubstFormat1_2INS2_10SmallTypesEEEEEN10_hb_head_tIbJDTclptfp_5applyfp0_EEEE4typeEPKT_PNS_21hb_ot_apply_context_tEPv11hb_priorityILj0EE.exit

_ZN2OT33hb_accelerate_subtables_context_t13apply_cached_INS_6Layout9GSUB_impl23AlternateSubstFormat1_2INS2_10SmallTypesEEEEEN10_hb_head_tIbJDTclptfp_5applyfp0_EEEE4typeEPKT_PNS_21hb_ot_apply_context_tEPv11hb_priorityILj0EE.exit: ; preds = %bb.a, %_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl12AlternateSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit.i.i
  %.0.i.i = phi i1 [ %i.ad, %_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl12AlternateSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit.i.i ], [ false, %bb.a ]
  ret i1 %.0.i.i
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT33hb_accelerate_subtables_context_t13cache_func_toINS_6Layout9GSUB_impl23AlternateSubstFormat1_2INS2_10SmallTypesEEEEEbPNS_21hb_ot_apply_context_tENS_25hb_ot_subtable_cache_op_tE(ptr noundef %0, i32 noundef %1) #16 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2OT6Layout9GSUB_impl12AlternateSetINS0_10SmallTypesEE5applyEPNS_21hb_ot_apply_context_tE(ptr noundef nonnull align 1 dereferenceable(4) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 1, !tbaa !283    ; 2 uses
  %i.b = tail call noundef i16 @llvm.bswap.i16(i16 %i.a)
  %i.c = zext i16 %i.b to i32                     ; 2 uses
  %.not = icmp eq i16 %i.a, 0
  br i1 %.not, label %bb.i, label %bb.b, !prof !267

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1278 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !589
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 92
  %i.i = load i32, ptr %i.h, align 4, !tbaa !653
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [20 x i8], ptr %i.g, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !591
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 284
  %i.o = load i32, ptr %i.n, align 4, !tbaa !1265 ; 2 uses
  %i.p = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.o, i1 true)
  %i.q = and i32 %i.o, %i.m
  %i.r = lshr i32 %i.q, %i.p                      ; 2 uses
  %i.s = icmp eq i32 %i.r, 255
  br i1 %i.s, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.u = load i8, ptr %i.t, align 8, !tbaa !1270, !range !380, !noundef !293
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %i.x = load i32, ptr %i.w, align 8, !tbaa !607  ; 3 uses
  %i.y = add i32 %i.x, -256
  %i.z = icmp ult i32 %i.y, -257
  %i.aa = icmp ult i32 %i.x, 2
  %or.cond = or i1 %i.aa, %i.z
  br i1 %or.cond, label %_ZN11hb_buffer_t15unsafe_to_breakEjj.exit, label %bb.e, !prof !327

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN11hb_buffer_t21_set_glyph_flags_implEjjjbb(ptr noundef nonnull align 8 dereferenceable(276) %i.e, i32 noundef 3, i32 noundef 0, i32 noundef %i.x, i1 noundef zeroext true, i1 noundef zeroext false)
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !1278
  br label %_ZN11hb_buffer_t15unsafe_to_breakEjj.exit

_ZN11hb_buffer_t15unsafe_to_breakEjj.exit:        ; preds = %bb.d, %bb.e
  %i.ab = phi ptr [ %i.e, %bb.d ], [ %.pre, %bb.e ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 212 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !656
  %i.ae = mul i32 %i.ad, 48271
  %i.af = urem i32 %i.ae, 2147483647              ; 2 uses
  store i32 %i.af, ptr %i.ac, align 4, !tbaa !656
  %i.ag = urem i32 %i.af, %i.c
  %i.ah = add nuw nsw i32 %i.ag, 1
  br label %bb.f

bb.f:                                             ; preds = %_ZN11hb_buffer_t15unsafe_to_breakEjj.exit, %bb.c, %bb.b
  %.0 = phi i32 [ %i.ah, %_ZN11hb_buffer_t15unsafe_to_breakEjj.exit ], [ 255, %bb.c ], [ %i.r, %bb.b ]
  %i.ai = add i32 %.0, -1                         ; 3 uses
  %.not22 = icmp ult i32 %i.ai, %i.c
  br i1 %.not22, label %bb.g, label %bb.i, !prof !268

bb.g:                                             ; preds = %bb.f
  %i.aj = load i16, ptr %0, align 1, !tbaa !283
  %i.ak = tail call noundef i16 @llvm.bswap.i16(i16 %i.aj)
  %i.al = zext i16 %i.ak to i32
  %.not.i = icmp samesign ult i32 %i.ai, %i.al
  br i1 %.not.i, label %bb.h, label %_ZNK2OT7ArrayOfINS_11HBGlyphID16ENS_7NumTypeILb1EtLj2EEEEixEi.exit, !prof !268

bb.h:                                             ; preds = %bb.g
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.an = zext nneg i32 %i.ai to i64
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.an
  br label %_ZNK2OT7ArrayOfINS_11HBGlyphID16ENS_7NumTypeILb1EtLj2EEEEixEi.exit

_ZNK2OT7ArrayOfINS_11HBGlyphID16ENS_7NumTypeILb1EtLj2EEEEixEi.exit: ; preds = %bb.g, %bb.h
  %.0.i = phi ptr [ %i.ao, %bb.h ], [ @_hb_NullPool, %bb.g ]
  %i.ap = load i16, ptr %.0.i, align 1, !tbaa !283
  %i.aq = tail call noundef i16 @llvm.bswap.i16(i16 %i.ap)
  %i.ar = zext i16 %i.aq to i32
  tail call void @_ZN2OT21hb_ot_apply_context_t13replace_glyphEj(ptr noundef nonnull align 8 dereferenceable(384) %1, i32 noundef %i.ar)
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.a, %_ZNK2OT7ArrayOfINS_11HBGlyphID16ENS_7NumTypeILb1EtLj2EEEEixEi.exit
  %.1 = phi i1 [ true, %_ZNK2OT7ArrayOfINS_11HBGlyphID16ENS_7NumTypeILb1EtLj2EEEEixEi.exit ], [ false, %bb.a ], [ false, %bb.f ]
  ret i1 %.1
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #22

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2OT33hb_accelerate_subtables_context_t15hb_applicable_t4initINS_6Layout9GSUB_impl22LigatureSubstFormat1_2INS3_10SmallTypesEEEEEvRKT_PFbPKvPNS_21hb_ot_apply_context_tEPvESH_PFbSE_NS_25hb_ot_subtable_cache_op_tEESF_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 1 dereferenceable(8) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !1838
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !1835
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %i.b, align 8, !tbaa !1836
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %4, ptr %i.c, align 8, !tbaa !1839
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %5, ptr %i.d, align 8, !tbaa !1404
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false), !tbaa !357
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.g = load i16, ptr %i.f, align 1, !tbaa !283  ; 2 uses
  %i.h = icmp eq i16 %i.g, 0
  %i.i = tail call i16 @llvm.bswap.i16(i16 %i.g)
  %i.j = zext i16 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %i.j
  %.0.i.i.i = select i1 %i.h, ptr @_hb_NullPool, ptr %i.k, !prof !267 ; 5 uses
  %i.l = load i16, ptr %.0.i.i.i, align 1, !tbaa !283
  %i.m = tail call noundef i16 @llvm.bswap.i16(i16 %i.l)
  switch i16 %i.m, label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit [
    i16 1, label %bb.b
    i16 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 2
  %i.o = load i16, ptr %i.n, align 1, !tbaa !283  ; 2 uses
  %i.p = tail call noundef i16 @llvm.bswap.i16(i16 %i.o)
  %.sroa.4.8.extract.trunc.i.i = zext i16 %i.p to i32
  %.not.i.i.i.i.i = icmp eq i16 %i.o, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4
  %.promoted.i.i.i.i.i = load i64, ptr %i.e, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.promoted9.i.i.i.i.i = load i64, ptr %i.r, align 8, !tbaa !357
  %.promoted11.i.i.i.i.i = load i64, ptr %i.s, align 8, !tbaa !357
  br label %bb.c

._crit_edge.i.i.i.i.i:                            ; preds = %bb.c
  store i64 %i.ad, ptr %i.e, align 8, !tbaa !357
  store i64 %i.ah, ptr %i.r, align 8, !tbaa !357
  store i64 %i.am, ptr %i.s, align 8, !tbaa !357
  br label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %i.t = phi i64 [ %.promoted11.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.am, %bb.c ]
  %i.u = phi i64 [ %.promoted9.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.ah, %bb.c ]
  %.08.i.i.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i.i.i ], [ %i.ao, %bb.c ]
  %.067.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i ], [ %i.an, %bb.c ] ; 2 uses
  %i.v = phi i64 [ %.promoted.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.ad, %bb.c ]
  %i.w = load i16, ptr %.067.i.i.i.i.i, align 1, !tbaa !283
  %i.x = tail call noundef i16 @llvm.bswap.i16(i16 %i.w)
  %i.y = zext i16 %i.x to i32                     ; 3 uses
  %i.z = lshr i32 %i.y, 4
  %i.aa = and i32 %i.z, 63
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = shl nuw i64 1, %i.ab
  %i.ad = or i64 %i.ac, %i.v                      ; 2 uses
  %i.ae = and i32 %i.y, 63
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = shl nuw i64 1, %i.af
  %i.ah = or i64 %i.ag, %i.u                      ; 2 uses
  %i.ai = lshr i32 %i.y, 6
  %i.aj = and i32 %i.ai, 63
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = shl nuw i64 1, %i.ak
  %i.am = or i64 %i.al, %i.t                      ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.067.i.i.i.i.i, i64 2
  %i.ao = add nuw i32 %.08.i.i.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i32 %i.ao, %.sroa.4.8.extract.trunc.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %bb.c, !llvm.loop !162

bb.d:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 2
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4 ; 2 uses
  %i.ar = load i16, ptr %i.ap, align 1, !tbaa !283 ; 2 uses
  %i.as = tail call noundef i16 @llvm.bswap.i16(i16 %i.ar)
  %i.at = zext i16 %i.as to i64
  %.idx.i.i = mul nuw nsw i64 %i.at, 6
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.idx.i.i
  %.not14.i.i = icmp eq i16 %i.ar, 0
  br i1 %.not14.i.i, label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %.01115.i.i = phi ptr [ %i.aw, %.lr.ph.i.i ], [ %i.aq, %bb.d ] ; 2 uses
  %i.av = tail call noundef zeroext i1 @_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI15hb_set_digest_tEEbPT_(ptr noundef nonnull align 1 dereferenceable(6) %.01115.i.i, ptr noundef nonnull %i.e)
  %i.aw = getelementptr inbounds nuw i8, ptr %.01115.i.i, i64 6 ; 2 uses
  %.not.i.i = icmp ne ptr %i.aw, %i.au
  %or.cond.not = select i1 %i.av, i1 %.not.i.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i.i, label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit

_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit: ; preds = %.lr.ph.i.i, %bb.a, %bb.b, %._crit_edge.i.i.i.i.i, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT33hb_accelerate_subtables_context_t8apply_toINS_6Layout9GSUB_impl22LigatureSubstFormat1_2INS2_10SmallTypesEEEEEbPKvPNS_21hb_ot_apply_context_tEPv(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16 comdat align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK2OT6Layout9GSUB_impl22LigatureSubstFormat1_2INS0_10SmallTypesEE5applyEPNS_21hb_ot_apply_context_tEPv(ptr noundef nonnull align 1 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2)
  ret i1 %i.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT33hb_accelerate_subtables_context_t15apply_cached_toINS_6Layout9GSUB_impl22LigatureSubstFormat1_2INS2_10SmallTypesEEEEEbPKvPNS_21hb_ot_apply_context_tEPv(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16 comdat align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK2OT6Layout9GSUB_impl22LigatureSubstFormat1_2INS0_10SmallTypesEE5applyEPNS_21hb_ot_apply_context_tEPv(ptr noundef nonnull align 1 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2)
  ret i1 %i.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT33hb_accelerate_subtables_context_t13cache_func_toINS_6Layout9GSUB_impl22LigatureSubstFormat1_2INS2_10SmallTypesEEEEEbPNS_21hb_ot_apply_context_tENS_25hb_ot_subtable_cache_op_tE(ptr noundef %0, i32 noundef %1) #16 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK2OT6Layout9GSUB_impl22LigatureSubstFormat1_2INS0_10SmallTypesEE21external_cache_createEv(ptr noundef nonnull align 1 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noalias noundef dereferenceable_or_null(536) ptr @malloc(i64 noundef 536) #65 ; 13 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %"_ZorI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_6Layout9GSUB_impl11LigatureSetINS4_10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS5_22LigatureSubstFormat1_2IS7_EEEL24hb_function_sortedness_t0ELPv0EE10hb_apply_tIZNKSJ_21external_cache_createEvEUlRKS8_E_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSW_6item_tEEE5valueEvE4typeELSO_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISW_Efp_EEEOSW_OS11_.exit", label %.preheader, !prof !267

.preheader:                                       ; preds = %bb.a, %.preheader
  %.0.idx8.i = phi i64 [ %.0.add.i.7, %.preheader ], [ 0, %bb.a ] ; 9 uses
  %.0.ptr.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %.0.idx8.i
  store atomic i16 -1, ptr %.0.ptr.i monotonic, align 2
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 %.0.idx8.i
  %.0.ptr.i.1 = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store atomic i16 -1, ptr %.0.ptr.i.1 monotonic, align 2
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 %.0.idx8.i
  %.0.ptr.i.2 = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store atomic i16 -1, ptr %.0.ptr.i.2 monotonic, align 2
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %.0.idx8.i
  %.0.ptr.i.3 = getelementptr inbounds nuw i8, ptr %i.d, i64 6
  store atomic i16 -1, ptr %.0.ptr.i.3 monotonic, align 2
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 %.0.idx8.i
  %.0.ptr.i.4 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store atomic i16 -1, ptr %.0.ptr.i.4 monotonic, align 2
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 %.0.idx8.i
  %.0.ptr.i.5 = getelementptr inbounds nuw i8, ptr %i.f, i64 10
  store atomic i16 -1, ptr %.0.ptr.i.5 monotonic, align 2
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 %.0.idx8.i
  %.0.ptr.i.6 = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store atomic i16 -1, ptr %.0.ptr.i.6 monotonic, align 2
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %.0.idx8.i
  %.0.ptr.i.7 = getelementptr inbounds nuw i8, ptr %i.h, i64 14
  store atomic i16 -1, ptr %.0.ptr.i.7 monotonic, align 2
  %.0.add.i.7 = add nuw nsw i64 %.0.idx8.i, 16    ; 2 uses
  %.not.i.7 = icmp eq i64 %.0.add.i.7, 512
  br i1 %.not.i.7, label %_ZN10hb_cache_tILj16ELj8ELj8ELb1EE5clearEv.exit, label %.preheader

_ZN10hb_cache_tILj16ELj8ELj8ELb1EE5clearEv.exit:  ; preds = %.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 512 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false), !tbaa !357
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = load i16, ptr %i.j, align 1, !tbaa !283  ; 2 uses
  %.not5.i.i = icmp eq i16 %i.k, 0
  br i1 %.not5.i.i, label %"_ZorI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_6Layout9GSUB_impl11LigatureSetINS4_10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS5_22LigatureSubstFormat1_2IS7_EEEL24hb_function_sortedness_t0ELPv0EE10hb_apply_tIZNKSJ_21external_cache_createEvEUlRKS8_E_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSW_6item_tEEE5valueEvE4typeELSO_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISW_Efp_EEEOSW_OS11_.exit", label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_ZN10hb_cache_tILj16ELj8ELj8ELb1EE5clearEv.exit
  %i.l = tail call noundef i16 @llvm.bswap.i16(i16 %i.k)
  %.sroa.427.8.extract.trunc = zext i16 %i.l to i32
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 520
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 528
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %"_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_6Layout9GSUB_impl11LigatureSetINS4_10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS5_22LigatureSubstFormat1_2IS7_EEEL24hb_function_sortedness_t0ELPv0EERKS8_EppEv.exit.i.i", %.lr.ph.i.preheader.i
  %i.p = phi i64 [ %i.be, %"_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_6Layout9GSUB_impl11LigatureSetINS4_10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS5_22LigatureSubstFormat1_2IS7_EEEL24hb_function_sortedness_t0ELPv0EERKS8_EppEv.exit.i.i" ], [ 0, %.lr.ph.i.preheader.i ] ; 2 uses
  %i.q = phi i64 [ %i.bf, %"_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_6Layout9GSUB_impl11LigatureSetINS4_10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS5_22LigatureSubstFormat1_2IS7_EEEL24hb_function_sortedness_t0ELPv0EERKS8_EppEv.exit.i.i" ], [ 0, %.lr.ph.i.preheader.i ] ; 2 uses
  %i.r = phi i64 [ %i.bg, %"_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_6Layout9GSUB_impl11LigatureSetINS4_10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS5_22LigatureSubstFormat1_2IS7_EEEL24hb_function_sortedness_t0ELPv0EERKS8_EppEv.exit.i.i" ], [ 0, %.lr.ph.i.preheader.i ] ; 2 uses
  %.val36.i.i = phi i32 [ %i.bh, %"_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_6Layout9GSUB_impl11LigatureSetINS4_10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS5_22LigatureSubstFormat1_2IS7_EEEL24hb_function_sortedness_t0ELPv0EERKS8_EppEv.exit.i.i" ], [ %.sroa.427.8.extract.trunc, %.lr.ph.i.preheader.i ]
  %i.s = phi ptr [ %i.bi, %"_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_6Layout9GSUB_impl11LigatureSetINS4_10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS5_22LigatureSubstFormat1_2IS7_EEEL24hb_function_sortedness_t0ELPv0EERKS8_EppEv.exit.i.i" ], [ %i.m, %.lr.ph.i.preheader.i ] ; 2 uses
  %.val1.i.i.i.i = load i16, ptr %i.s, align 1, !tbaa !283 ; 2 uses
  %i.t = icmp eq i16 %.val1.i.i.i.i, 0
  %i.u = tail call i16 @llvm.bswap.i16(i16 %.val1.i.i.i.i)
  %i.v = zext i16 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %i.v
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.t, ptr @_hb_NullPool, ptr %i.w, !prof !267 ; 3 uses
  %i.x = load i16, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !tbaa !283 ; 2 uses
  %.not8.i.i.i.i.i.i.i.i = icmp eq i16 %i.x, 0
  br i1 %.not8.i.i.i.i.i.i.i.i, label %"_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_6Layout9GSUB_impl11LigatureSetINS4_10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS5_22LigatureSubstFormat1_2IS7_EEEL24hb_function_sortedness_t0ELPv0EERKS8_EppEv.exit.i.i", label %.lr.ph.i.preheader.i.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i.i.i:                 ; preds = %.lr.ph.i.i
  %i.y = tail call noundef i16 @llvm.bswap.i16(i16 %i.x)
  %.sroa.423.8.extract.trunc.i.i.i.i.i.i = zext i16 %i.y to i32
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %"_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_6Layout9GSUB_impl8LigatureINS4_10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS5_11LigatureSetIS7_EEEL24hb_function_sortedness_t0ELPv0EERKS8_EppEv.exit.i.i.i.i.i.i.i.i", %.lr.ph.i.preheader.i.i.i.i.i.i.i
  %i.z = phi i64 [ %i.ba, %"_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_6Layout9GSUB_impl8LigatureINS4_10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS5_11LigatureSetIS7_EEEL24hb_function_sortedness_t0ELPv0EERKS8_EppEv.exit.i.i.i.i.i.i.i.i" ], [ %i.p, %.lr.ph.i.preheader.i.i.i.i.i.i.i ]
  %i.aa = phi i64 [ %i.bb, %"_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_6Layout9GSUB_impl8LigatureINS4_10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS5_11LigatureSetIS7_EEEL24hb_function_sortedness_t0ELPv0EERKS8_EppEv.exit.i.i.i.i.i.i.i.i" ], [ %i.q, %.lr.ph.i.preheader.i.i.i.i.i.i.i ]
  %i.ab = phi i64 [ %i.bc, %"_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_6Layout9GSUB_impl8LigatureINS4_10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS5_11LigatureSetIS7_EEEL24hb_function_sortedness_t0ELPv0EERKS8_EppEv.exit.i.i.i.i.i.i.i.i" ], [ %i.r, %.lr.ph.i.preheader.i.i.i.i.i.i.i ]
  %.val69.i.i.i.i.i.i.i.i = phi i32 [ %i.bd, %"_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_6Layout9GSUB_impl8LigatureINS4_10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS5_11LigatureSetIS7_EEEL24hb_function_sortedness_t0ELPv0EERKS8_EppEv.exit.i.i.i.i.i.i.i.i" ], [ %.sroa.423.8.extract.trunc.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i.i ]
  %.pn.i.i.i.i.i.i = phi ptr [ %i.ac, %"_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_6Layout9GSUB_impl8LigatureINS4_10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS5_11LigatureSetIS7_EEEL24hb_function_sortedness_t0ELPv0EERKS8_EppEv.exit.i.i.i.i.i.i.i.i" ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i.i, i64 2 ; 2 uses
  %.val1.i.i.i.i.i.i.i.i.i.i = load i16, ptr %i.ac, align 1, !tbaa !283 ; 2 uses
  %i.ad = icmp eq i16 %.val1.i.i.i.i.i.i.i.i.i.i, 0
  %i.ae = tail call i16 @llvm.bswap.i16(i16 %.val1.i.i.i.i.i.i.i.i.i.i)
  %i.af = zext i16 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.af
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.ad, ptr @_hb_NullPool, ptr %i.ag, !prof !267 ; 2 uses
  %i.ah = getelementptr i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 2
  %.val2.i.i.i.i.i.i.i.i = load i16, ptr %i.ah, align 1, !tbaa !283
  %i.ai = and i16 %.val2.i.i.i.i.i.i.i.i, -257
  %.not.i.i.i.i4.i.i.i.i.i.i.i.i = icmp eq i16 %i.ai, 0
  br i1 %.not.i.i.i.i4.i.i.i.i.i.i.i.i, label %bb.b, label %bb.c, !prof !267

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 -1, i64 24, i1 false)
  br label %"_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_6Layout9GSUB_impl8LigatureINS4_10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS5_11LigatureSetIS7_EEEL24hb_function_sortedness_t0ELPv0EERKS8_EppEv.exit.i.i.i.i.i.i.i.i"

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.aj = getelementptr i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 4
  %.val3.i.i.i.i.i.i.i.i = load i16, ptr %i.aj, align 1
  %i.ak = tail call noundef i16 @llvm.bswap.i16(i16 %.val3.i.i.i.i.i.i.i.i)
  %i.al = zext i16 %i.ak to i32                   ; 3 uses
  %i.am = lshr i32 %i.al, 4
  %i.an = and i32 %i.am, 63
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = shl nuw i64 1, %i.ao
  %i.aq = or i64 %i.ap, %i.ab                     ; 2 uses
  store i64 %i.aq, ptr %i.i, align 8, !tbaa !357
  %i.ar = and i32 %i.al, 63
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = shl nuw i64 1, %i.as
  %i.au = or i64 %i.at, %i.aa                     ; 2 uses
  store i64 %i.au, ptr %i.n, align 8, !tbaa !357
  %i.av = lshr i32 %i.al, 6
  %i.aw = and i32 %i.av, 63
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = shl nuw i64 1, %i.ax
  %i.az = or i64 %i.ay, %i.z                      ; 2 uses
  store i64 %i.az, ptr %i.o, align 8, !tbaa !357
  br label %"_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_6Layout9GSUB_impl8LigatureINS4_10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS5_11LigatureSetIS7_EEEL24hb_function_sortedness_t0ELPv0EERKS8_EppEv.exit.i.i.i.i.i.i.i.i"

"_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_6Layout9GSUB_impl8LigatureINS4_10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS5_11LigatureSetIS7_EEEL24hb_function_sortedness_t0ELPv0EERKS8_EppEv.exit.i.i.i.i.i.i.i.i": ; preds = %bb.c, %bb.b
  %i.ba = phi i64 [ %i.az, %bb.c ], [ -1, %bb.b ] ; 2 uses
  %i.bb = phi i64 [ %i.au, %bb.c ], [ -1, %bb.b ] ; 2 uses
  %i.bc = phi i64 [ %i.aq, %bb.c ], [ -1, %bb.b ] ; 2 uses
  %i.bd = add i32 %.val69.i.i.i.i.i.i.i.i, -1     ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.bd, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %"_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_6Layout9GSUB_impl11LigatureSetINS4_10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS5_22LigatureSubstFormat1_2IS7_EEEL24hb_function_sortedness_t0ELPv0EERKS8_EppEv.exit.i.i", label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !4454

"_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_6Layout9GSUB_impl11LigatureSetINS4_10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS5_22LigatureSubstFormat1_2IS7_EEEL24hb_function_sortedness_t0ELPv0EERKS8_EppEv.exit.i.i": ; preds = %"_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_6Layout9GSUB_impl8LigatureINS4_10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS5_11LigatureSetIS7_EEEL24hb_function_sortedness_t0ELPv0EERKS8_EppEv.exit.i.i.i.i.i.i.i.i", %.lr.ph.i.i
  %i.be = phi i64 [ %i.p, %.lr.ph.i.i ], [ %i.ba, %"_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_6Layout9GSUB_impl8LigatureINS4_10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS5_11LigatureSetIS7_EEEL24hb_function_sortedness_t0ELPv0EERKS8_EppEv.exit.i.i.i.i.i.i.i.i" ]
  %i.bf = phi i64 [ %i.q, %.lr.ph.i.i ], [ %i.bb, %"_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_6Layout9GSUB_impl8LigatureINS4_10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS5_11LigatureSetIS7_EEEL24hb_function_sortedness_t0ELPv0EERKS8_EppEv.exit.i.i.i.i.i.i.i.i" ]
  %i.bg = phi i64 [ %i.r, %.lr.ph.i.i ], [ %i.bc, %"_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_6Layout9GSUB_impl8LigatureINS4_10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS5_11LigatureSetIS7_EEEL24hb_function_sortedness_t0ELPv0EERKS8_EppEv.exit.i.i.i.i.i.i.i.i" ]
  %i.bh = add i32 %.val36.i.i, -1                 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  %.not.i.i = icmp eq i32 %i.bh, 0
  br i1 %.not.i.i, label %"_ZorI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_6Layout9GSUB_impl11LigatureSetINS4_10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS5_22LigatureSubstFormat1_2IS7_EEEL24hb_function_sortedness_t0ELPv0EE10hb_apply_tIZNKSJ_21external_cache_createEvEUlRKS8_E_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSW_6item_tEEE5valueEvE4typeELSO_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISW_Efp_EEEOSW_OS11_.exit", label %.lr.ph.i.i, !llvm.loop !4455

"_ZorI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_6Layout9GSUB_impl11LigatureSetINS4_10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS5_22LigatureSubstFormat1_2IS7_EEEL24hb_function_sortedness_t0ELPv0EE10hb_apply_tIZNKSJ_21external_cache_createEvEUlRKS8_E_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSW_6item_tEEE5valueEvE4typeELSO_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISW_Efp_EEEOSW_OS11_.exit": ; preds = %"_ZNR9hb_iter_tI13hb_map_iter_tI10hb_array_tIKN2OT8OffsetToINS2_6Layout9GSUB_impl11LigatureSetINS4_10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEE12hb_partial_tILj2EPK4$_51PKNS5_22LigatureSubstFormat1_2IS7_EEEL24hb_function_sortedness_t0ELPv0EERKS8_EppEv.exit.i.i", %_ZN10hb_cache_tILj16ELj8ELj8ELb1EE5clearEv.exit, %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2OT6Layout9GSUB_impl22LigatureSubstFormat1_2INS0_10SmallTypesEE5applyEPNS_21hb_ot_apply_context_tEPv(ptr noundef nonnull align 1 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1278 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.d = load i16, ptr %i.c, align 1, !tbaa !283  ; 2 uses
  %i.e = icmp eq i16 %i.d, 0
  %i.f = tail call i16 @llvm.bswap.i16(i16 %i.d)
  %i.g = zext i16 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g
  %.0.i.i = select i1 %i.e, ptr @_hb_NullPool, ptr %i.h, !prof !267 ; 2 uses
end_hunk_5
begin_hunk_6_@_ZN2OT21hb_ot_apply_context_t27replace_glyph_with_ligatureEjj:bb.a
  %i.ai = load i32, ptr %i.c, align 4, !tbaa !635 ; 2 uses
  %narrow.i.i = tail call i32 @llvm.usub.sat.i32(i32 %i.ai, i32 1)
  %i.aj = zext i32 %narrow.i.i to i64
  %i.ak = getelementptr inbounds nuw [20 x i8], ptr %i.ah, i64 %i.aj
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g, %bb.f
  %i.al = phi i32 [ %.pre22.i.i, %bb.f ], [ %i.ai, %bb.g ]
  %i.am = phi ptr [ %.pre.i.i, %bb.f ], [ %i.ah, %bb.g ]
  %i.an = phi ptr [ %i.ag, %bb.f ], [ %i.ak, %bb.g ]
  %i.ao = zext i32 %i.al to i64
  %i.ap = getelementptr inbounds nuw [20 x i8], ptr %i.am, i64 %i.ao ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ap, ptr noundef nonnull align 4 dereferenceable(20) %i.an, i64 20, i1 false), !tbaa.struct !610
  store i32 %1, ptr %i.ap, align 4, !tbaa !637
  %.pre23.i.i = load i32, ptr %i.z, align 4, !tbaa !653
  %.pre24.i.i = load i32, ptr %i.c, align 4, !tbaa !635
  %i.aq = add i32 %.pre23.i.i, 1
  store i32 %i.aq, ptr %i.z, align 4, !tbaa !653
  %i.ar = add i32 %.pre24.i.i, 1
  store i32 %i.ar, ptr %i.c, align 4, !tbaa !635
  br label %_ZN11hb_buffer_t13replace_glyphEj.exit

_ZN11hb_buffer_t13replace_glyphEj.exit:           ; preds = %_ZN11hb_buffer_t6ensureEj.exit.i.i.i, %.lr.ph.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2OT33hb_accelerate_subtables_context_t8dispatchINS_16ContextFormat2_5INS_6Layout10SmallTypesEEEEE10hb_empty_tRKT_(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 1 dereferenceable(10) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !1831 ; 3 uses
  %i.c = icmp ult i32 %i.b, 8
  br i1 %i.c, label %bb.b, label %_ZN2OT33hb_accelerate_subtables_context_t21external_cache_createINS_16ContextFormat2_5INS_6Layout10SmallTypesEEEEEDTcldtfp_21external_cache_createEERKT_11hb_priorityILj1EE.exit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias noundef dereferenceable_or_null(256) ptr @malloc(i64 noundef 256) #65 ; 10 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZN2OT33hb_accelerate_subtables_context_t21external_cache_createINS_16ContextFormat2_5INS_6Layout10SmallTypesEEEEEDTcldtfp_21external_cache_createEERKT_11hb_priorityILj1EE.exit, label %.preheader.i.i, !prof !267

.preheader.i.i:                                   ; preds = %bb.b, %.preheader.i.i
  %.0.idx8.i.i.i = phi i64 [ %.0.add.i.i.i.7, %.preheader.i.i ], [ 0, %bb.b ] ; 9 uses
  %.0.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 %.0.idx8.i.i.i
  store atomic i8 -1, ptr %.0.ptr.i.i.i monotonic, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %.0.idx8.i.i.i
  %.0.ptr.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  store atomic i8 -1, ptr %.0.ptr.i.i.i.1 monotonic, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 %.0.idx8.i.i.i
  %.0.ptr.i.i.i.2 = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  store atomic i8 -1, ptr %.0.ptr.i.i.i.2 monotonic, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.0.idx8.i.i.i
  %.0.ptr.i.i.i.3 = getelementptr inbounds nuw i8, ptr %i.g, i64 3
  store atomic i8 -1, ptr %.0.ptr.i.i.i.3 monotonic, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 %.0.idx8.i.i.i
  %.0.ptr.i.i.i.4 = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store atomic i8 -1, ptr %.0.ptr.i.i.i.4 monotonic, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 %.0.idx8.i.i.i
  %.0.ptr.i.i.i.5 = getelementptr inbounds nuw i8, ptr %i.i, i64 5
  store atomic i8 -1, ptr %.0.ptr.i.i.i.5 monotonic, align 1
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 %.0.idx8.i.i.i
  %.0.ptr.i.i.i.6 = getelementptr inbounds nuw i8, ptr %i.j, i64 6
  store atomic i8 -1, ptr %.0.ptr.i.i.i.6 monotonic, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 %.0.idx8.i.i.i
  %.0.ptr.i.i.i.7 = getelementptr inbounds nuw i8, ptr %i.k, i64 7
  store atomic i8 -1, ptr %.0.ptr.i.i.i.7 monotonic, align 1
  %.0.add.i.i.i.7 = add nuw nsw i64 %.0.idx8.i.i.i, 8 ; 2 uses
  %.not.i.i.i.7 = icmp eq i64 %.0.add.i.i.i.7, 256
  br i1 %.not.i.i.i.7, label %_ZN2OT33hb_accelerate_subtables_context_t21external_cache_createINS_16ContextFormat2_5INS_6Layout10SmallTypesEEEEEDTcldtfp_21external_cache_createEERKT_11hb_priorityILj1EE.exit, label %.preheader.i.i

_ZN2OT33hb_accelerate_subtables_context_t21external_cache_createINS_16ContextFormat2_5INS_6Layout10SmallTypesEEEEEDTcldtfp_21external_cache_createEERKT_11hb_priorityILj1EE.exit: ; preds = %.preheader.i.i, %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %i.d, %.preheader.i.i ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1830
  %i.n = add i32 %i.b, 1
  store i32 %i.n, ptr %i.a, align 8, !tbaa !1831
  %i.o = zext i32 %i.b to i64
  %i.p = getelementptr inbounds nuw [64 x i8], ptr %i.m, i64 %i.o
  tail call void @_ZN2OT33hb_accelerate_subtables_context_t15hb_applicable_t4initINS_16ContextFormat2_5INS_6Layout10SmallTypesEEEEEvRKT_PFbPKvPNS_21hb_ot_apply_context_tEPvESG_PFbSD_NS_25hb_ot_subtable_cache_op_tEESE_(ptr noundef nonnull align 8 dereferenceable(64) %i.p, ptr noundef nonnull align 1 dereferenceable(10) %1, ptr noundef nonnull @_ZN2OT33hb_accelerate_subtables_context_t8apply_toINS_16ContextFormat2_5INS_6Layout10SmallTypesEEEEEbPKvPNS_21hb_ot_apply_context_tEPv, ptr noundef nonnull @_ZN2OT33hb_accelerate_subtables_context_t15apply_cached_toINS_16ContextFormat2_5INS_6Layout10SmallTypesEEEEEbPKvPNS_21hb_ot_apply_context_tEPv, ptr noundef nonnull @_ZN2OT33hb_accelerate_subtables_context_t13cache_func_toINS_16ContextFormat2_5INS_6Layout10SmallTypesEEEEEbPNS_21hb_ot_apply_context_tENS_25hb_ot_subtable_cache_op_tE, ptr noundef %.0)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.r = load i16, ptr %i.q, align 1, !tbaa !283  ; 2 uses
  %i.s = icmp eq i16 %i.r, 0
  %i.t = tail call i16 @llvm.bswap.i16(i16 %i.r)
  %i.u = zext i16 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %i.u
  %.0.i.i.i.i = select i1 %i.s, ptr @_hb_NullPool, ptr %i.v, !prof !267 ; 2 uses
  %i.w = load i16, ptr %.0.i.i.i.i, align 1, !tbaa !283
  %i.x = tail call noundef i16 @llvm.bswap.i16(i16 %i.w)
  switch i16 %i.x, label %_ZN2OT33hb_accelerate_subtables_context_t10cache_costINS_16ContextFormat2_5INS_6Layout10SmallTypesEEEEEDTcldtfp_10cache_costEERKT_11hb_priorityILj1EE.exit.thread [
    i16 1, label %bb.c
    i16 2, label %bb.d
  ]

bb.c:                                             ; preds = %_ZN2OT33hb_accelerate_subtables_context_t21external_cache_createINS_16ContextFormat2_5INS_6Layout10SmallTypesEEEEEDTcldtfp_21external_cache_createEERKT_11hb_priorityILj1EE.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  br label %_ZN2OT33hb_accelerate_subtables_context_t10cache_costINS_16ContextFormat2_5INS_6Layout10SmallTypesEEEEEDTcldtfp_10cache_costEERKT_11hb_priorityILj1EE.exit

bb.d:                                             ; preds = %_ZN2OT33hb_accelerate_subtables_context_t21external_cache_createINS_16ContextFormat2_5INS_6Layout10SmallTypesEEEEEDTcldtfp_21external_cache_createEERKT_11hb_priorityILj1EE.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 2
  %i.z = load i16, ptr %i.y, align 1, !tbaa !283
  %i.aa = tail call noundef i16 @llvm.bswap.i16(i16 %i.z)
  %i.ab = zext i16 %i.aa to i32
  %i.ac = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ab, i1 false)
  %narrow.i.i.i.i.i = sub nuw nsw i32 32, %i.ac
  br label %_ZN2OT33hb_accelerate_subtables_context_t10cache_costINS_16ContextFormat2_5INS_6Layout10SmallTypesEEEEEDTcldtfp_10cache_costEERKT_11hb_priorityILj1EE.exit

_ZN2OT33hb_accelerate_subtables_context_t10cache_costINS_16ContextFormat2_5INS_6Layout10SmallTypesEEEEEDTcldtfp_10cache_costEERKT_11hb_priorityILj1EE.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i = phi i32 [ %narrow.i.i.i.i.i, %bb.d ], [ 1, %bb.c ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !1833
  %i.af = icmp ugt i32 %.0.i.i.i, %i.ae
  br i1 %i.af, label %bb.e, label %_ZN2OT33hb_accelerate_subtables_context_t10cache_costINS_16ContextFormat2_5INS_6Layout10SmallTypesEEEEEDTcldtfp_10cache_costEERKT_11hb_priorityILj1EE.exit.thread

bb.e:                                             ; preds = %_ZN2OT33hb_accelerate_subtables_context_t10cache_costINS_16ContextFormat2_5INS_6Layout10SmallTypesEEEEEDTcldtfp_10cache_costEERKT_11hb_priorityILj1EE.exit
  %i.ag = load i32, ptr %i.a, align 8, !tbaa !1831
  %i.ah = add i32 %i.ag, -1
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !1832
  store i32 %.0.i.i.i, ptr %i.ad, align 8, !tbaa !1833
  br label %_ZN2OT33hb_accelerate_subtables_context_t10cache_costINS_16ContextFormat2_5INS_6Layout10SmallTypesEEEEEDTcldtfp_10cache_costEERKT_11hb_priorityILj1EE.exit.thread

_ZN2OT33hb_accelerate_subtables_context_t10cache_costINS_16ContextFormat2_5INS_6Layout10SmallTypesEEEEEDTcldtfp_10cache_costEERKT_11hb_priorityILj1EE.exit.thread: ; preds = %_ZN2OT33hb_accelerate_subtables_context_t21external_cache_createINS_16ContextFormat2_5INS_6Layout10SmallTypesEEEEEDTcldtfp_21external_cache_createEERKT_11hb_priorityILj1EE.exit, %bb.e, %_ZN2OT33hb_accelerate_subtables_context_t10cache_costINS_16ContextFormat2_5INS_6Layout10SmallTypesEEEEEDTcldtfp_10cache_costEERKT_11hb_priorityILj1EE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2OT33hb_accelerate_subtables_context_t15hb_applicable_t4initINS_16ContextFormat1_4INS_6Layout10SmallTypesEEEEEvRKT_PFbPKvPNS_21hb_ot_apply_context_tEPvESG_PFbSD_NS_25hb_ot_subtable_cache_op_tEESE_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 1 dereferenceable(8) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !1838
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !1835
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %i.b, align 8, !tbaa !1836
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %4, ptr %i.c, align 8, !tbaa !1839
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %5, ptr %i.d, align 8, !tbaa !1404
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false), !tbaa !357
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.g = load i16, ptr %i.f, align 1, !tbaa !283  ; 2 uses
  %i.h = icmp eq i16 %i.g, 0
  %i.i = tail call i16 @llvm.bswap.i16(i16 %i.g)
  %i.j = zext i16 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %i.j
  %.0.i.i.i = select i1 %i.h, ptr @_hb_NullPool, ptr %i.k, !prof !267 ; 5 uses
  %i.l = load i16, ptr %.0.i.i.i, align 1, !tbaa !283
  %i.m = tail call noundef i16 @llvm.bswap.i16(i16 %i.l)
  switch i16 %i.m, label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit [
    i16 1, label %bb.b
    i16 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 2
  %i.o = load i16, ptr %i.n, align 1, !tbaa !283  ; 2 uses
  %i.p = tail call noundef i16 @llvm.bswap.i16(i16 %i.o)
  %.sroa.4.8.extract.trunc.i.i = zext i16 %i.p to i32
  %.not.i.i.i.i.i = icmp eq i16 %i.o, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4
  %.promoted.i.i.i.i.i = load i64, ptr %i.e, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.promoted9.i.i.i.i.i = load i64, ptr %i.r, align 8, !tbaa !357
  %.promoted11.i.i.i.i.i = load i64, ptr %i.s, align 8, !tbaa !357
  br label %bb.c

._crit_edge.i.i.i.i.i:                            ; preds = %bb.c
  store i64 %i.ad, ptr %i.e, align 8, !tbaa !357
  store i64 %i.ah, ptr %i.r, align 8, !tbaa !357
  store i64 %i.am, ptr %i.s, align 8, !tbaa !357
  br label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %i.t = phi i64 [ %.promoted11.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.am, %bb.c ]
  %i.u = phi i64 [ %.promoted9.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.ah, %bb.c ]
  %.08.i.i.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i.i.i ], [ %i.ao, %bb.c ]
  %.067.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i ], [ %i.an, %bb.c ] ; 2 uses
  %i.v = phi i64 [ %.promoted.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.ad, %bb.c ]
  %i.w = load i16, ptr %.067.i.i.i.i.i, align 1, !tbaa !283
  %i.x = tail call noundef i16 @llvm.bswap.i16(i16 %i.w)
  %i.y = zext i16 %i.x to i32                     ; 3 uses
  %i.z = lshr i32 %i.y, 4
  %i.aa = and i32 %i.z, 63
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = shl nuw i64 1, %i.ab
  %i.ad = or i64 %i.ac, %i.v                      ; 2 uses
  %i.ae = and i32 %i.y, 63
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = shl nuw i64 1, %i.af
  %i.ah = or i64 %i.ag, %i.u                      ; 2 uses
  %i.ai = lshr i32 %i.y, 6
  %i.aj = and i32 %i.ai, 63
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = shl nuw i64 1, %i.ak
  %i.am = or i64 %i.al, %i.t                      ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.067.i.i.i.i.i, i64 2
  %i.ao = add nuw i32 %.08.i.i.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i32 %i.ao, %.sroa.4.8.extract.trunc.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %bb.c, !llvm.loop !162

bb.d:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 2
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4 ; 2 uses
  %i.ar = load i16, ptr %i.ap, align 1, !tbaa !283 ; 2 uses
  %i.as = tail call noundef i16 @llvm.bswap.i16(i16 %i.ar)
  %i.at = zext i16 %i.as to i64
  %.idx.i.i = mul nuw nsw i64 %i.at, 6
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.idx.i.i
  %.not14.i.i = icmp eq i16 %i.ar, 0
  br i1 %.not14.i.i, label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %.01115.i.i = phi ptr [ %i.aw, %.lr.ph.i.i ], [ %i.aq, %bb.d ] ; 2 uses
  %i.av = tail call noundef zeroext i1 @_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI15hb_set_digest_tEEbPT_(ptr noundef nonnull align 1 dereferenceable(6) %.01115.i.i, ptr noundef nonnull %i.e)
  %i.aw = getelementptr inbounds nuw i8, ptr %.01115.i.i, i64 6 ; 2 uses
  %.not.i.i = icmp ne ptr %i.aw, %i.au
  %or.cond.not = select i1 %i.av, i1 %.not.i.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i.i, label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit

_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit: ; preds = %.lr.ph.i.i, %bb.a, %bb.b, %._crit_edge.i.i.i.i.i, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT33hb_accelerate_subtables_context_t8apply_toINS_16ContextFormat1_4INS_6Layout10SmallTypesEEEEEbPKvPNS_21hb_ot_apply_context_tEPv(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16 comdat align 2 {
bb.a:
  %3 = alloca %"struct.OT::ContextApplyLookupContext", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.b = load i16, ptr %i.a, align 1, !tbaa !283  ; 2 uses
  %i.c = icmp eq i16 %i.b, 0
  %i.d = tail call i16 @llvm.bswap.i16(i16 %i.b)
  %i.e = zext i16 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %i.e
  %.0.i.i.i.i = select i1 %i.c, ptr @_hb_NullPool, ptr %i.f, !prof !267
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1278 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !589
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 92
  %i.l = load i32, ptr %i.k, align 4, !tbaa !653
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [20 x i8], ptr %i.j, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !637
  %i.p = tail call noundef i32 @_ZNK2OT6Layout6Common8Coverage12get_coverageEj(ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i.i.i, i32 noundef %i.o) ; 3 uses
  %i.q = icmp eq i32 %i.p, -1
  br i1 %i.q, label %_ZN2OT33hb_accelerate_subtables_context_t6apply_INS_16ContextFormat1_4INS_6Layout10SmallTypesEEEEEN10_hb_head_tIbJDTclptfp_5applyfp0_EEEE4typeEPKT_PNS_21hb_ot_apply_context_tEPv11hb_priorityILj0EE.exit, label %bb.b, !prof !268

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.s = load i16, ptr %i.r, align 1, !tbaa !283
  %i.t = tail call noundef i16 @llvm.bswap.i16(i16 %i.s)
  %i.u = zext i16 %i.t to i32
  %.not.i.i.i = icmp ult i32 %i.p, %i.u
  br i1 %.not.i.i.i, label %bb.c, label %_ZNK2OT7ArrayOfINS_8OffsetToINS_7RuleSetINS_6Layout10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES7_EixEi.exit.i.i, !prof !268

bb.c:                                             ; preds = %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.w = zext nneg i32 %i.p to i64
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %i.w
  br label %_ZNK2OT7ArrayOfINS_8OffsetToINS_7RuleSetINS_6Layout10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES7_EixEi.exit.i.i

_ZNK2OT7ArrayOfINS_8OffsetToINS_7RuleSetINS_6Layout10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES7_EixEi.exit.i.i: ; preds = %bb.c, %bb.b
  %.0.i.i.i = phi ptr [ %i.x, %bb.c ], [ @_hb_NullPool, %bb.b ]
  %i.y = load i16, ptr %.0.i.i.i, align 1, !tbaa !283 ; 2 uses
  %i.z = icmp eq i16 %i.y, 0
  %i.aa = tail call i16 @llvm.bswap.i16(i16 %i.y)
  %i.ab = zext i16 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %i.ab
  %.0.i.i7.i.i = select i1 %i.z, ptr @_hb_NullPool, ptr %i.ac, !prof !267
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) @__const._ZNK2OT16ContextFormat1_4INS_6Layout10SmallTypesEE5applyEPNS_21hb_ot_apply_context_tE.lookup_context, i64 16, i1 false)
  %i.ad = call noundef zeroext i1 @_ZNK2OT7RuleSetINS_6Layout10SmallTypesEE5applyEPNS_21hb_ot_apply_context_tERKNS_25ContextApplyLookupContextE(ptr noundef nonnull align 1 dereferenceable(4) %.0.i.i7.i.i, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #63
  br label %_ZN2OT33hb_accelerate_subtables_context_t6apply_INS_16ContextFormat1_4INS_6Layout10SmallTypesEEEEEN10_hb_head_tIbJDTclptfp_5applyfp0_EEEE4typeEPKT_PNS_21hb_ot_apply_context_tEPv11hb_priorityILj0EE.exit

_ZN2OT33hb_accelerate_subtables_context_t6apply_INS_16ContextFormat1_4INS_6Layout10SmallTypesEEEEEN10_hb_head_tIbJDTclptfp_5applyfp0_EEEE4typeEPKT_PNS_21hb_ot_apply_context_tEPv11hb_priorityILj0EE.exit: ; preds = %bb.a, %_ZNK2OT7ArrayOfINS_8OffsetToINS_7RuleSetINS_6Layout10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES7_EixEi.exit.i.i
  %.0.i.i = phi i1 [ %i.ad, %_ZNK2OT7ArrayOfINS_8OffsetToINS_7RuleSetINS_6Layout10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES7_EixEi.exit.i.i ], [ false, %bb.a ]
  ret i1 %.0.i.i
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT33hb_accelerate_subtables_context_t15apply_cached_toINS_16ContextFormat1_4INS_6Layout10SmallTypesEEEEEbPKvPNS_21hb_ot_apply_context_tEPv(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16 comdat align 2 {
bb.a:
  %3 = alloca %"struct.OT::ContextApplyLookupContext", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.b = load i16, ptr %i.a, align 1, !tbaa !283  ; 2 uses
  %i.c = icmp eq i16 %i.b, 0
  %i.d = tail call i16 @llvm.bswap.i16(i16 %i.b)
  %i.e = zext i16 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %i.e
  %.0.i.i.i.i = select i1 %i.c, ptr @_hb_NullPool, ptr %i.f, !prof !267
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1278 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !589
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 92
  %i.l = load i32, ptr %i.k, align 4, !tbaa !653
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [20 x i8], ptr %i.j, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !637
  %i.p = tail call noundef i32 @_ZNK2OT6Layout6Common8Coverage12get_coverageEj(ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i.i.i, i32 noundef %i.o) ; 3 uses
  %i.q = icmp eq i32 %i.p, -1
  br i1 %i.q, label %_ZN2OT33hb_accelerate_subtables_context_t13apply_cached_INS_16ContextFormat1_4INS_6Layout10SmallTypesEEEEEN10_hb_head_tIbJDTclptfp_5applyfp0_EEEE4typeEPKT_PNS_21hb_ot_apply_context_tEPv11hb_priorityILj0EE.exit, label %bb.b, !prof !268

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.s = load i16, ptr %i.r, align 1, !tbaa !283
  %i.t = tail call noundef i16 @llvm.bswap.i16(i16 %i.s)
  %i.u = zext i16 %i.t to i32
  %.not.i.i.i = icmp ult i32 %i.p, %i.u
  br i1 %.not.i.i.i, label %bb.c, label %_ZNK2OT7ArrayOfINS_8OffsetToINS_7RuleSetINS_6Layout10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES7_EixEi.exit.i.i, !prof !268

bb.c:                                             ; preds = %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.w = zext nneg i32 %i.p to i64
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %i.w
  br label %_ZNK2OT7ArrayOfINS_8OffsetToINS_7RuleSetINS_6Layout10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES7_EixEi.exit.i.i

_ZNK2OT7ArrayOfINS_8OffsetToINS_7RuleSetINS_6Layout10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES7_EixEi.exit.i.i: ; preds = %bb.c, %bb.b
  %.0.i.i.i = phi ptr [ %i.x, %bb.c ], [ @_hb_NullPool, %bb.b ]
  %i.y = load i16, ptr %.0.i.i.i, align 1, !tbaa !283 ; 2 uses
  %i.z = icmp eq i16 %i.y, 0
  %i.aa = tail call i16 @llvm.bswap.i16(i16 %i.y)
  %i.ab = zext i16 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %i.ab
  %.0.i.i7.i.i = select i1 %i.z, ptr @_hb_NullPool, ptr %i.ac, !prof !267
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) @__const._ZNK2OT16ContextFormat1_4INS_6Layout10SmallTypesEE5applyEPNS_21hb_ot_apply_context_tE.lookup_context, i64 16, i1 false)
  %i.ad = call noundef zeroext i1 @_ZNK2OT7RuleSetINS_6Layout10SmallTypesEE5applyEPNS_21hb_ot_apply_context_tERKNS_25ContextApplyLookupContextE(ptr noundef nonnull align 1 dereferenceable(4) %.0.i.i7.i.i, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #63
  br label %_ZN2OT33hb_accelerate_subtables_context_t13apply_cached_INS_16ContextFormat1_4INS_6Layout10SmallTypesEEEEEN10_hb_head_tIbJDTclptfp_5applyfp0_EEEE4typeEPKT_PNS_21hb_ot_apply_context_tEPv11hb_priorityILj0EE.exit

_ZN2OT33hb_accelerate_subtables_context_t13apply_cached_INS_16ContextFormat1_4INS_6Layout10SmallTypesEEEEEN10_hb_head_tIbJDTclptfp_5applyfp0_EEEE4typeEPKT_PNS_21hb_ot_apply_context_tEPv11hb_priorityILj0EE.exit: ; preds = %bb.a, %_ZNK2OT7ArrayOfINS_8OffsetToINS_7RuleSetINS_6Layout10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES7_EixEi.exit.i.i
  %.0.i.i = phi i1 [ %i.ad, %_ZNK2OT7ArrayOfINS_8OffsetToINS_7RuleSetINS_6Layout10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES7_EixEi.exit.i.i ], [ false, %bb.a ]
  ret i1 %.0.i.i
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT33hb_accelerate_subtables_context_t13cache_func_toINS_16ContextFormat1_4INS_6Layout10SmallTypesEEEEEbPNS_21hb_ot_apply_context_tENS_25hb_ot_subtable_cache_op_tE(ptr noundef %0, i32 noundef %1) #16 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2OT7RuleSetINS_6Layout10SmallTypesEE5applyEPNS_21hb_ot_apply_context_tERKNS_25ContextApplyLookupContextE(ptr noundef nonnull align 1 dereferenceable(4) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %3 = alloca %struct.hb_map_iter_t.1627, align 8 ; 10 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !1844
  %i.b = load i16, ptr %0, align 1, !tbaa !283    ; 2 uses
  %i.c = tail call noundef i16 @llvm.bswap.i16(i16 %i.b) ; 2 uses
  %i.d = zext i16 %i.c to i32                     ; 4 uses
  %i.e = icmp ult i16 %i.c, 5
  br i1 %i.e, label %_ZN11hb_buffer_t16unsafe_to_concatEjj.exit, label %bb.c

_ZN11hb_buffer_t16unsafe_to_concatEjj.exitthread-pre-split: ; preds = %_ZNK2OT20MarkGlyphSetsFormat16coversEjj.exit.i.i, %bb.d, %_ZNK2OT4GDEF19get_mark_glyph_setsEv.exit.i, %bb.r, %.split, %bb.t, %bb.ac, %bb.o, %bb.z, %bb.y, %bb.x, %bb.w, %bb.i, %bb.h, %bb.g
  %.pr = load i16, ptr %0, align 1, !tbaa !283
  br label %_ZN11hb_buffer_t16unsafe_to_concatEjj.exit

_ZN11hb_buffer_t16unsafe_to_concatEjj.exit:       ; preds = %_ZN11hb_buffer_t16unsafe_to_concatEjj.exitthread-pre-split, %bb.a
  %i.f = phi i16 [ %.pr, %_ZN11hb_buffer_t16unsafe_to_concatEjj.exitthread-pre-split ], [ %i.b, %bb.a ] ; 2 uses
  %.not5.not.i.i = icmp eq i16 %i.f, 0
  br i1 %.not5.not.i.i, label %_ZN11hb_buffer_t16unsafe_to_concatEjj.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN11hb_buffer_t16unsafe_to_concatEjj.exit
  %i.g = tail call noundef i16 @llvm.bswap.i16(i16 %i.f)
  %.sroa.4213.8.extract.trunc = zext i16 %i.g to i32
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i
  %.pn = phi ptr [ %0, %.lr.ph.i.i ], [ %.sroa.0.07.i.i, %bb.b ]
  %.sroa.6.06.i.i = phi i32 [ %.sroa.4213.8.extract.trunc, %.lr.ph.i.i ], [ %i.aa, %bb.b ]
  %.sroa.0.07.i.i = getelementptr inbounds nuw i8, ptr %.pn, i64 2 ; 2 uses
  %.val1.i.i.i.i.i.i = load i16, ptr %.sroa.0.07.i.i, align 1, !tbaa !283 ; 2 uses
  %i.i = icmp eq i16 %.val1.i.i.i.i.i.i, 0
  %i.j = tail call i16 @llvm.bswap.i16(i16 %.val1.i.i.i.i.i.i)
  %i.k = zext i16 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %i.k
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.i, ptr @_hb_NullPool, ptr %i.l, !prof !267 ; 3 uses
  %.val1.val.i.i.i.i = load ptr, ptr %2, align 8
  %.val1.val2.i.i.i.i = load ptr, ptr %i.h, align 8
  %i.m = load i16, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !tbaa !283 ; 2 uses
  %i.n = tail call noundef i16 @llvm.bswap.i16(i16 %i.m)
  %i.o = zext i16 %i.n to i32                     ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.m, 0
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.q = shl nuw nsw i32 %i.o, 1
  %i.r = add nsw i32 %i.q, -2
  %i.s = zext nneg i32 %i.r to i64
  %i.t = select i1 %.not.i.i.i.i.i.i.i.i.i.i, i64 0, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 2
  %i.w = load i16, ptr %i.v, align 1, !tbaa !283
end_hunk_6
begin_hunk_7_@_ZN2OTL12apply_lookupEPNS_21hb_ot_apply_context_tEjjPKNS_12LookupRecordEj:bb.a
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %i.by
  %.pre173 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !324 ; 3 uses
  %i.ee = xor i64 %i.by, -1
  %i.ef = add nsw i64 %i.ee, %wide.trip.count161  ; 3 uses
  %min.iters.check199 = icmp ult i64 %i.ef, 8
  br i1 %min.iters.check199, label %scalar.ph198.preheader, label %vector.ph200

vector.ph200:                                     ; preds = %.lr.ph140
  %n.vec201 = and i64 %i.ef, -8                   ; 4 uses
  %i.eg = trunc i64 %n.vec201 to i32
  %i.eh = add i32 %.pre173, %i.eg
  %i.ei = add nsw i64 %i.ed, %n.vec201
  %broadcast.splatinsert202 = insertelement <4 x i32> poison, i32 %.pre173, i64 0
  %broadcast.splat203 = shufflevector <4 x i32> %broadcast.splatinsert202, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add <4 x i32> %broadcast.splat203, <i32 0, i32 1, i32 2, i32 3>
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %i.ed
  br label %vector.body204

vector.body204:                                   ; preds = %vector.body204, %vector.ph200
  %index205 = phi i64 [ 0, %vector.ph200 ], [ %index.next206, %vector.body204 ] ; 2 uses
  %vec.ind = phi <4 x i32> [ %induction, %vector.ph200 ], [ %vec.ind.next, %vector.body204 ] ; 3 uses
  %i.ek = add <4 x i32> %vec.ind, splat (i32 1)
  %i.el = add <4 x i32> %vec.ind, splat (i32 5)
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %index205 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  store <4 x i32> %i.ek, ptr %i.em, align 4, !tbaa !324
  store <4 x i32> %i.el, ptr %i.en, align 4, !tbaa !324
  %index.next206 = add nuw i64 %index205, 8       ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.eo = icmp eq i64 %index.next206, %n.vec201
  br i1 %i.eo, label %middle.block207, label %vector.body204, !llvm.loop !4495

middle.block207:                                  ; preds = %vector.body204
  %cmp.n208 = icmp eq i64 %i.ef, %n.vec201
  br i1 %cmp.n208, label %.preheader, label %scalar.ph198.preheader

scalar.ph198.preheader:                           ; preds = %.lr.ph140, %middle.block207
  %.ph = phi i32 [ %.pre173, %.lr.ph140 ], [ %i.eh, %middle.block207 ]
  %indvars.iv158.ph = phi i64 [ %i.ed, %.lr.ph140 ], [ %i.ei, %middle.block207 ]
  br label %scalar.ph198

.preheader:                                       ; preds = %scalar.ph198, %middle.block207, %.critedge112
  %i.ep = icmp ult i32 %i.ea, %.pre-phi
  br i1 %i.ep, label %.lr.ph142, label %_ZN2OT21hb_ot_apply_context_t7recurseEj.exit.thread

.lr.ph142:                                        ; preds = %.preheader
  %i.eq = load ptr, ptr %i.bc, align 8, !tbaa !1843 ; 2 uses
  %i.er = zext i32 %i.ea to i64                   ; 4 uses
  %wide.trip.count166 = zext i32 %.pre-phi to i64 ; 2 uses
  %i.es = sub nsw i64 %wide.trip.count166, %i.er  ; 3 uses
  %min.iters.check185 = icmp ult i64 %i.es, 8
  br i1 %min.iters.check185, label %scalar.ph184.preheader, label %vector.ph186

vector.ph186:                                     ; preds = %.lr.ph142
  %n.vec187 = and i64 %i.es, -8                   ; 3 uses
  %i.et = add nsw i64 %n.vec187, %i.er
  %broadcast.splatinsert188 = insertelement <4 x i32> poison, i32 %.1125, i64 0
  %broadcast.splat189 = shufflevector <4 x i32> %broadcast.splatinsert188, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.eq, i64 %i.er
  br label %vector.body190

vector.body190:                                   ; preds = %vector.body190, %vector.ph186
  %index191 = phi i64 [ 0, %vector.ph186 ], [ %index.next194, %vector.body190 ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index191 ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %gep, i64 16 ; 2 uses
  %wide.load192 = load <4 x i32>, ptr %gep, align 4, !tbaa !324
  %wide.load193 = load <4 x i32>, ptr %i.eu, align 4, !tbaa !324
  %i.ev = add <4 x i32> %wide.load192, %broadcast.splat189
  %i.ew = add <4 x i32> %wide.load193, %broadcast.splat189
  store <4 x i32> %i.ev, ptr %gep, align 4, !tbaa !324
  store <4 x i32> %i.ew, ptr %i.eu, align 4, !tbaa !324
  %index.next194 = add nuw i64 %index191, 8       ; 2 uses
  %i.ex = icmp eq i64 %index.next194, %n.vec187
  br i1 %i.ex, label %middle.block195, label %vector.body190, !llvm.loop !4496

middle.block195:                                  ; preds = %vector.body190
  %cmp.n196 = icmp eq i64 %i.es, %n.vec187
  br i1 %cmp.n196, label %_ZN2OT21hb_ot_apply_context_t7recurseEj.exit.thread, label %scalar.ph184.preheader

scalar.ph184.preheader:                           ; preds = %.lr.ph142, %middle.block195
  %indvars.iv163.ph = phi i64 [ %i.er, %.lr.ph142 ], [ %i.et, %middle.block195 ]
  br label %scalar.ph184

scalar.ph198:                                     ; preds = %scalar.ph198.preheader, %scalar.ph198
  %i.ey = phi i32 [ %i.ez, %scalar.ph198 ], [ %.ph, %scalar.ph198.preheader ]
  %indvars.iv158 = phi i64 [ %indvars.iv.next159, %scalar.ph198 ], [ %indvars.iv158.ph, %scalar.ph198.preheader ] ; 2 uses
  %i.ez = add i32 %i.ey, 1                        ; 2 uses
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %indvars.iv158
  store i32 %i.ez, ptr %i.fa, align 4, !tbaa !324
  %indvars.iv.next159 = add nuw nsw i64 %indvars.iv158, 1 ; 2 uses
  %exitcond162.not = icmp eq i64 %indvars.iv.next159, %wide.trip.count161
  br i1 %exitcond162.not, label %.preheader, label %scalar.ph198, !llvm.loop !4497

scalar.ph184:                                     ; preds = %scalar.ph184.preheader, %scalar.ph184
  %indvars.iv163 = phi i64 [ %indvars.iv.next164, %scalar.ph184 ], [ %indvars.iv163.ph, %scalar.ph184.preheader ] ; 2 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %indvars.iv163 ; 2 uses
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !324
  %i.fd = add i32 %i.fc, %.1125
  store i32 %i.fd, ptr %i.fb, align 4, !tbaa !324
  %indvars.iv.next164 = add nuw nsw i64 %indvars.iv163, 1 ; 2 uses
  %exitcond167.not = icmp eq i64 %indvars.iv.next164, %wide.trip.count166
  br i1 %exitcond167.not, label %_ZN2OT21hb_ot_apply_context_t7recurseEj.exit.thread, label %scalar.ph184, !llvm.loop !4498

_ZN2OT21hb_ot_apply_context_t7recurseEj.exit.thread.sink.split: ; preds = %bb.h, %bb.g
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ck, i64 88
  store i8 0, ptr %i.fe, align 8, !tbaa !586
  br label %_ZN2OT21hb_ot_apply_context_t7recurseEj.exit.thread

_ZN2OT21hb_ot_apply_context_t7recurseEj.exit.thread: ; preds = %scalar.ph184, %middle.block195, %_ZN2OT21hb_ot_apply_context_t7recurseEj.exit.thread.sink.split, %.preheader, %bb.c, %bb.d, %_ZN2OT21hb_ot_apply_context_t7recurseEj.exit, %bb.i
  %.596.ph = phi i32 [ %.pre-phi, %.preheader ], [ %.091143, %bb.i ], [ %.091143, %_ZN2OT21hb_ot_apply_context_t7recurseEj.exit ], [ %.091143, %bb.c ], [ %.091143, %bb.d ], [ %.091143, %_ZN2OT21hb_ot_apply_context_t7recurseEj.exit.thread.sink.split ], [ %.pre-phi, %middle.block195 ], [ %.pre-phi, %scalar.ph184 ]
  %.590.ph = phi i32 [ %.186, %.preheader ], [ %.085144, %bb.i ], [ %.085144, %_ZN2OT21hb_ot_apply_context_t7recurseEj.exit ], [ %.085144, %bb.c ], [ %.085144, %bb.d ], [ %.085144, %_ZN2OT21hb_ot_apply_context_t7recurseEj.exit.thread.sink.split ], [ %.186, %middle.block195 ], [ %.186, %scalar.ph184 ] ; 2 uses
  %indvars.iv.next169 = add nuw nsw i64 %indvars.iv168, 1 ; 2 uses
  %exitcond172.not = icmp eq i64 %indvars.iv.next169, %wide.trip.count171
  br i1 %exitcond172.not, label %._crit_edge, label %bb.b, !llvm.loop !4499

._crit_edge:                                      ; preds = %bb.e, %bb.f, %bb.k, %_ZN2OT21hb_ot_apply_context_t7recurseEj.exit.thread, %bb.b, %.preheader137
  %.6.ph = phi i32 [ %i.j, %.preheader137 ], [ %.085144, %bb.f ], [ %.590.ph, %_ZN2OT21hb_ot_apply_context_t7recurseEj.exit.thread ], [ %.186, %bb.k ], [ %.085144, %bb.b ], [ %.085144, %bb.e ]
  %i.ff = tail call noundef zeroext i1 @_ZN11hb_buffer_t7move_toEj(ptr noundef nonnull align 8 dereferenceable(276) %i.b, i32 noundef %.6.ph) ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %bb.m, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2OT33hb_accelerate_subtables_context_t15hb_applicable_t4initINS_16ContextFormat2_5INS_6Layout10SmallTypesEEEEEvRKT_PFbPKvPNS_21hb_ot_apply_context_tEPvESG_PFbSD_NS_25hb_ot_subtable_cache_op_tEESE_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 1 dereferenceable(10) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !1838
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !1835
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %i.b, align 8, !tbaa !1836
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %4, ptr %i.c, align 8, !tbaa !1839
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %5, ptr %i.d, align 8, !tbaa !1404
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false), !tbaa !357
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.g = load i16, ptr %i.f, align 1, !tbaa !283  ; 2 uses
  %i.h = icmp eq i16 %i.g, 0
  %i.i = tail call i16 @llvm.bswap.i16(i16 %i.g)
  %i.j = zext i16 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %i.j
  %.0.i.i.i = select i1 %i.h, ptr @_hb_NullPool, ptr %i.k, !prof !267 ; 5 uses
  %i.l = load i16, ptr %.0.i.i.i, align 1, !tbaa !283
  %i.m = tail call noundef i16 @llvm.bswap.i16(i16 %i.l)
  switch i16 %i.m, label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit [
    i16 1, label %bb.b
    i16 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 2
  %i.o = load i16, ptr %i.n, align 1, !tbaa !283  ; 2 uses
  %i.p = tail call noundef i16 @llvm.bswap.i16(i16 %i.o)
  %.sroa.4.8.extract.trunc.i.i = zext i16 %i.p to i32
  %.not.i.i.i.i.i = icmp eq i16 %i.o, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4
  %.promoted.i.i.i.i.i = load i64, ptr %i.e, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.promoted9.i.i.i.i.i = load i64, ptr %i.r, align 8, !tbaa !357
  %.promoted11.i.i.i.i.i = load i64, ptr %i.s, align 8, !tbaa !357
  br label %bb.c

._crit_edge.i.i.i.i.i:                            ; preds = %bb.c
  store i64 %i.ad, ptr %i.e, align 8, !tbaa !357
  store i64 %i.ah, ptr %i.r, align 8, !tbaa !357
  store i64 %i.am, ptr %i.s, align 8, !tbaa !357
  br label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %i.t = phi i64 [ %.promoted11.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.am, %bb.c ]
  %i.u = phi i64 [ %.promoted9.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.ah, %bb.c ]
  %.08.i.i.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i.i.i ], [ %i.ao, %bb.c ]
  %.067.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i ], [ %i.an, %bb.c ] ; 2 uses
  %i.v = phi i64 [ %.promoted.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.ad, %bb.c ]
  %i.w = load i16, ptr %.067.i.i.i.i.i, align 1, !tbaa !283
  %i.x = tail call noundef i16 @llvm.bswap.i16(i16 %i.w)
  %i.y = zext i16 %i.x to i32                     ; 3 uses
  %i.z = lshr i32 %i.y, 4
  %i.aa = and i32 %i.z, 63
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = shl nuw i64 1, %i.ab
  %i.ad = or i64 %i.ac, %i.v                      ; 2 uses
  %i.ae = and i32 %i.y, 63
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = shl nuw i64 1, %i.af
  %i.ah = or i64 %i.ag, %i.u                      ; 2 uses
  %i.ai = lshr i32 %i.y, 6
  %i.aj = and i32 %i.ai, 63
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = shl nuw i64 1, %i.ak
  %i.am = or i64 %i.al, %i.t                      ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.067.i.i.i.i.i, i64 2
  %i.ao = add nuw i32 %.08.i.i.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i32 %i.ao, %.sroa.4.8.extract.trunc.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %bb.c, !llvm.loop !162

bb.d:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 2
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4 ; 2 uses
  %i.ar = load i16, ptr %i.ap, align 1, !tbaa !283 ; 2 uses
  %i.as = tail call noundef i16 @llvm.bswap.i16(i16 %i.ar)
  %i.at = zext i16 %i.as to i64
  %.idx.i.i = mul nuw nsw i64 %i.at, 6
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.idx.i.i
  %.not14.i.i = icmp eq i16 %i.ar, 0
  br i1 %.not14.i.i, label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %.01115.i.i = phi ptr [ %i.aw, %.lr.ph.i.i ], [ %i.aq, %bb.d ] ; 2 uses
  %i.av = tail call noundef zeroext i1 @_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI15hb_set_digest_tEEbPT_(ptr noundef nonnull align 1 dereferenceable(6) %.01115.i.i, ptr noundef nonnull %i.e)
  %i.aw = getelementptr inbounds nuw i8, ptr %.01115.i.i, i64 6 ; 2 uses
  %.not.i.i = icmp ne ptr %i.aw, %i.au
  %or.cond.not = select i1 %i.av, i1 %.not.i.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i.i, label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit

_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit: ; preds = %.lr.ph.i.i, %bb.a, %bb.b, %._crit_edge.i.i.i.i.i, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT33hb_accelerate_subtables_context_t8apply_toINS_16ContextFormat2_5INS_6Layout10SmallTypesEEEEEbPKvPNS_21hb_ot_apply_context_tEPv(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16 comdat align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK2OT16ContextFormat2_5INS_6Layout10SmallTypesEE6_applyEPNS_21hb_ot_apply_context_tEbPv(ptr noundef nonnull align 1 dereferenceable(10) %0, ptr noundef %1, i1 noundef zeroext false, ptr noundef %2)
  ret i1 %i.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT33hb_accelerate_subtables_context_t15apply_cached_toINS_16ContextFormat2_5INS_6Layout10SmallTypesEEEEEbPKvPNS_21hb_ot_apply_context_tEPv(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16 comdat align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK2OT16ContextFormat2_5INS_6Layout10SmallTypesEE6_applyEPNS_21hb_ot_apply_context_tEbPv(ptr noundef nonnull align 1 dereferenceable(10) %0, ptr noundef %1, i1 noundef zeroext true, ptr noundef %2)
  ret i1 %i.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT33hb_accelerate_subtables_context_t13cache_func_toINS_16ContextFormat2_5INS_6Layout10SmallTypesEEEEEbPNS_21hb_ot_apply_context_tENS_25hb_ot_subtable_cache_op_tE(ptr noundef %0, i32 noundef %1) #16 comdat align 2 {
bb.a:
  switch i32 %1, label %_ZN2OT33hb_accelerate_subtables_context_t11cache_func_INS_16ContextFormat2_5INS_6Layout10SmallTypesEEEEEN10_hb_head_tIbJDTclsrT_10cache_funcfp_fp0_EEEE4typeEPNS_21hb_ot_apply_context_tENS_25hb_ot_subtable_cache_op_tE11hb_priorityILj1EE.exit [
    i32 0, label %bb.b
    i32 1, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1278 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 208 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !654   ; 2 uses
  %i.e = and i8 %i.d, 8
  %.not.i.i.i.i = icmp eq i8 %i.e, 0
  br i1 %.not.i.i.i.i, label %bb.c, label %_ZN2OT33hb_accelerate_subtables_context_t11cache_func_INS_16ContextFormat2_5INS_6Layout10SmallTypesEEEEEN10_hb_head_tIbJDTclsrT_10cache_funcfp_fp0_EEEE4typeEPNS_21hb_ot_apply_context_tENS_25hb_ot_subtable_cache_op_tE11hb_priorityILj1EE.exit

bb.c:                                             ; preds = %bb.b
  %i.f = or disjoint i8 %i.d, 8
  store i8 %i.f, ptr %i.c, align 8, !tbaa !654
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.i = load i32, ptr %i.h, align 8, !tbaa !607  ; 3 uses
  %.not.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.c
  %wide.trip.count.i.i.i = zext i32 %i.i to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 3 uses
  %i.j = icmp ult i32 %i.i, 4
  br i1 %i.j, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.preheader.i.i.i.new

.lr.ph.preheader.i.i.i.new:                       ; preds = %.lr.ph.preheader.i.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 4294967292
  br label %.lr.ph.i.i.i

._crit_edge.i.i.i.loopexit.unr-lcssa:             ; preds = %.lr.ph.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %._crit_edge.i.i.i.loopexit.unr-lcssa, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i.3, %._crit_edge.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod1 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod1)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %indvars.iv.i.i.i.epil = phi i64 [ %indvars.iv.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ], [ %indvars.iv.next.i.i.i.epil, %.lr.ph.i.i.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.i.epil ]
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !662
  %i.l = getelementptr inbounds nuw [20 x i8], ptr %i.k, i64 %indvars.iv.i.i.i.epil
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 15
  store i8 -1, ptr %i.m, align 1, !tbaa !280
  %indvars.iv.next.i.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !4500

._crit_edge.i.i.i:                                ; preds = %._crit_edge.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 308
  store i32 255, ptr %i.n, align 4, !tbaa !1719
  br label %_ZN2OT33hb_accelerate_subtables_context_t11cache_func_INS_16ContextFormat2_5INS_6Layout10SmallTypesEEEEEN10_hb_head_tIbJDTclsrT_10cache_funcfp_fp0_EEEE4typeEPNS_21hb_ot_apply_context_tENS_25hb_ot_subtable_cache_op_tE11hb_priorityILj1EE.exit

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i.new ], [ %indvars.iv.next.i.i.i.3, %.lr.ph.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i.i.new ], [ %niter.next.3, %.lr.ph.i.i.i ]
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !662
  %i.p = getelementptr inbounds nuw [20 x i8], ptr %i.o, i64 %indvars.iv.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 15
  store i8 -1, ptr %i.q, align 1, !tbaa !280
  %i.r = load ptr, ptr %i.g, align 8, !tbaa !662
  %i.s = getelementptr inbounds nuw [20 x i8], ptr %i.r, i64 %indvars.iv.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 35
  store i8 -1, ptr %i.t, align 1, !tbaa !280
  %i.u = load ptr, ptr %i.g, align 8, !tbaa !662
  %i.v = getelementptr inbounds nuw [20 x i8], ptr %i.u, i64 %indvars.iv.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 55
  store i8 -1, ptr %i.w, align 1, !tbaa !280
  %i.x = load ptr, ptr %i.g, align 8, !tbaa !662
  %i.y = getelementptr inbounds nuw [20 x i8], ptr %i.x, i64 %indvars.iv.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 75
  store i8 -1, ptr %i.z, align 1, !tbaa !280
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i, !llvm.loop !182

bb.d:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 308
  store i32 -1, ptr %i.aa, align 4, !tbaa !1719
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1278
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 208 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !654
  %i.af = and i8 %i.ae, -9
  store i8 %i.af, ptr %i.ad, align 8, !tbaa !654
  br label %_ZN2OT33hb_accelerate_subtables_context_t11cache_func_INS_16ContextFormat2_5INS_6Layout10SmallTypesEEEEEN10_hb_head_tIbJDTclsrT_10cache_funcfp_fp0_EEEE4typeEPNS_21hb_ot_apply_context_tENS_25hb_ot_subtable_cache_op_tE11hb_priorityILj1EE.exit

_ZN2OT33hb_accelerate_subtables_context_t11cache_func_INS_16ContextFormat2_5INS_6Layout10SmallTypesEEEEEN10_hb_head_tIbJDTclsrT_10cache_funcfp_fp0_EEEE4typeEPNS_21hb_ot_apply_context_tENS_25hb_ot_subtable_cache_op_tE11hb_priorityILj1EE.exit: ; preds = %bb.a, %bb.b, %._crit_edge.i.i.i, %bb.d
  %.012.i.i.i = phi i1 [ false, %bb.a ], [ true, %._crit_edge.i.i.i ], [ false, %bb.d ], [ false, %bb.b ]
  ret i1 %.012.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2OT16ContextFormat2_5INS_6Layout10SmallTypesEE6_applyEPNS_21hb_ot_apply_context_tEbPv(ptr noundef nonnull align 1 dereferenceable(10) %0, ptr noundef %1, i1 noundef zeroext %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"struct.OT::ContextApplyLookupContext", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.b = load i16, ptr %i.a, align 1, !tbaa !283  ; 2 uses
  %i.c = icmp eq i16 %i.b, 0
  %i.d = tail call i16 @llvm.bswap.i16(i16 %i.b)
  %i.e = zext i16 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %i.e
  %.0.i.i = select i1 %i.c, ptr @_hb_NullPool, ptr %i.f, !prof !267 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1278 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !589
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 92
  %i.l = load i32, ptr %i.k, align 4, !tbaa !653
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [20 x i8], ptr %i.j, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !637  ; 5 uses
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %.critedge.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = and i32 %i.o, 255
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 %i.q ; 3 uses
  %i.s = load atomic i8, ptr %i.r monotonic, align 1 ; 2 uses
  %i.t = lshr i8 %i.s, 1
  %i.u = zext nneg i8 %i.t to i32
  %i.v = lshr i32 %i.o, 8
  %.not.i.i = icmp eq i32 %i.v, %i.u
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.w = and i8 %i.s, 1
  %i.x = zext nneg i8 %i.w to i32
  %i.y = sub nsw i32 0, %i.x
  br label %_ZNK2OT6Layout6Common8Coverage19get_coverage_binaryEjP10hb_cache_tILj14ELj1ELj8ELb1EE.exit

bb.d:                                             ; preds = %bb.b
  %i.z = tail call noundef i32 @_ZNK2OT6Layout6Common8Coverage12get_coverageEj(ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i, i32 noundef %i.o)
  %i.aa = icmp eq i32 %i.z, -1
  %i.ab = lshr i32 %i.o, 7
  %i.ac = trunc i32 %i.ab to i8                   ; 2 uses
  br i1 %i.aa, label %_ZNK2OT6Layout6Common8Coverage19get_coverage_binaryEjP10hb_cache_tILj14ELj1ELj8ELb1EE.exit.thread, label %_ZNK2OT6Layout6Common8Coverage19get_coverage_binaryEjP10hb_cache_tILj14ELj1ELj8ELb1EE.exit.thread28

_ZNK2OT6Layout6Common8Coverage19get_coverage_binaryEjP10hb_cache_tILj14ELj1ELj8ELb1EE.exit.thread: ; preds = %bb.d
  %i.ad = or i8 %i.ac, 1
  store atomic i8 %i.ad, ptr %i.r monotonic, align 1
  br label %bb.u

_ZNK2OT6Layout6Common8Coverage19get_coverage_binaryEjP10hb_cache_tILj14ELj1ELj8ELb1EE.exit.thread28: ; preds = %bb.d
  %i.ae = and i8 %i.ac, -2
  store atomic i8 %i.ae, ptr %i.r monotonic, align 1
  br label %bb.e
end_hunk_7
begin_hunk_8_@_ZNK2OT16ContextFormat2_5INS_6Layout10SmallTypesEE6_applyEPNS_21hb_ot_apply_context_tEbPv:bb.a
  ret i1 %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZN2OTL18match_class_cachedER15hb_glyph_info_tjPKv(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(20) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 15 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !280   ; 2 uses
  %.not.i = icmp eq i8 %i.b, -1
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = zext i8 %i.b to i32
  br label %_ZN2OTL16get_class_cachedERKNS_8ClassDefER15hb_glyph_info_t.exit

bb.c:                                             ; preds = %bb.a
  %i.d = load i32, ptr %0, align 4, !tbaa !637    ; 3 uses
  %i.e = load i16, ptr %2, align 1, !tbaa !283
  %i.f = tail call noundef i16 @llvm.bswap.i16(i16 %i.e)
  switch i16 %i.f, label %_ZNK2OT8ClassDef9get_classEj.exit.thread.i [
    i16 1, label %bb.d
    i16 2, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.i = load i16, ptr %i.h, align 1, !tbaa !283
  %i.j = tail call noundef i16 @llvm.bswap.i16(i16 %i.i)
  %i.k = zext i16 %i.j to i32
  %i.l = sub i32 %i.d, %i.k                       ; 2 uses
  %i.m = load i16, ptr %i.g, align 1, !tbaa !283
  %i.n = tail call noundef i16 @llvm.bswap.i16(i16 %i.m)
  %i.o = zext i16 %i.n to i32
  %.not.i.i.i.i = icmp ult i32 %i.l, %i.o
  br i1 %.not.i.i.i.i, label %bb.e, label %_ZNK2OT8ClassDef9get_classEj.exit.i, !prof !268

bb.e:                                             ; preds = %bb.d
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.q = zext nneg i32 %i.l to i64
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %i.q
  br label %_ZNK2OT8ClassDef9get_classEj.exit.i

bb.f:                                             ; preds = %bb.c
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.u = load i16, ptr %i.s, align 1, !tbaa !283  ; 2 uses
  %.not1.i.i.i.i.not.i.i.i.i = icmp eq i16 %i.u, 0
  br i1 %.not1.i.i.i.i.not.i.i.i.i, label %_ZNK2OT17ClassDefFormat2_4INS_6Layout10SmallTypesEE9get_classEj.exit.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i:                 ; preds = %bb.f
  %i.v = tail call noundef i16 @llvm.bswap.i16(i16 %i.u)
  %.sroa.4.8.extract.trunc.i.i.i.i = zext i16 %i.v to i32
  %i.w = add nsw i32 %.sroa.4.8.extract.trunc.i.i.i.i, -1
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.h, %.lr.ph.preheader.i.i.i.i.i.i.i.i
  %.0203.i.i.i.i.i.i.i.i = phi i32 [ %.2.i.i.i.i.i.i.i.i, %bb.h ], [ %i.w, %.lr.ph.preheader.i.i.i.i.i.i.i.i ] ; 2 uses
  %.0212.i.i.i.i.i.i.i.i = phi i32 [ %.223.i.i.i.i.i.i.i.i, %bb.h ], [ 0, %.lr.ph.preheader.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.x = add i32 %.0212.i.i.i.i.i.i.i.i, %.0203.i.i.i.i.i.i.i.i
  %i.y = lshr i32 %i.x, 1                         ; 3 uses
  %i.z = zext nneg i32 %i.y to i64                ; 2 uses
  %i.aa = mul nuw nsw i64 %i.z, 6
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.aa ; 2 uses
  %i.ac = load i16, ptr %i.ab, align 1, !tbaa !283
  %i.ad = tail call noundef i16 @llvm.bswap.i16(i16 %i.ac)
  %i.ae = zext i16 %i.ad to i32
  %i.af = icmp ult i32 %i.d, %i.ae
  br i1 %i.af, label %_ZL14_hb_cmp_methodIjKN2OT6Layout6Common11RangeRecordINS1_10SmallTypesEEEJEEiPKvS8_DpT1_.exit.thread.i.i.i.i.i.i.i.i, label %_ZL14_hb_cmp_methodIjKN2OT6Layout6Common11RangeRecordINS1_10SmallTypesEEEJEEiPKvS8_DpT1_.exit.i.i.i.i.i.i.i.i

_ZL14_hb_cmp_methodIjKN2OT6Layout6Common11RangeRecordINS1_10SmallTypesEEEJEEiPKvS8_DpT1_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  %i.ah = load i16, ptr %i.ag, align 1, !tbaa !283
  %i.ai = tail call noundef i16 @llvm.bswap.i16(i16 %i.ah)
  %i.aj = zext i16 %i.ai to i32
  %.not.i.i.not.i.i.i.i.i.i.i.i = icmp ugt i32 %i.d, %i.aj
  br i1 %.not.i.i.not.i.i.i.i.i.i.i.i, label %bb.g, label %_ZNK17hb_sorted_array_tIKN2OT6Layout6Common11RangeRecordINS1_10SmallTypesEEEE5bfindIjEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i

_ZL14_hb_cmp_methodIjKN2OT6Layout6Common11RangeRecordINS1_10SmallTypesEEEJEEiPKvS8_DpT1_.exit.thread.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.ak = add nsw i32 %i.y, -1
  br label %bb.h

bb.g:                                             ; preds = %_ZL14_hb_cmp_methodIjKN2OT6Layout6Common11RangeRecordINS1_10SmallTypesEEEJEEiPKvS8_DpT1_.exit.i.i.i.i.i.i.i.i
  %i.al = add nuw nsw i32 %i.y, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZL14_hb_cmp_methodIjKN2OT6Layout6Common11RangeRecordINS1_10SmallTypesEEEJEEiPKvS8_DpT1_.exit.thread.i.i.i.i.i.i.i.i
  %.223.i.i.i.i.i.i.i.i = phi i32 [ %i.al, %bb.g ], [ %.0212.i.i.i.i.i.i.i.i, %_ZL14_hb_cmp_methodIjKN2OT6Layout6Common11RangeRecordINS1_10SmallTypesEEEJEEiPKvS8_DpT1_.exit.thread.i.i.i.i.i.i.i.i ] ; 2 uses
  %.2.i.i.i.i.i.i.i.i = phi i32 [ %.0203.i.i.i.i.i.i.i.i, %bb.g ], [ %i.ak, %_ZL14_hb_cmp_methodIjKN2OT6Layout6Common11RangeRecordINS1_10SmallTypesEEEJEEiPKvS8_DpT1_.exit.thread.i.i.i.i.i.i.i.i ] ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i = icmp sgt i32 %.223.i.i.i.i.i.i.i.i, %.2.i.i.i.i.i.i.i.i
  br i1 %.not.not.i.i.i.i.i.i.i.i, label %_ZNK2OT17ClassDefFormat2_4INS_6Layout10SmallTypesEE9get_classEj.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !4

_ZNK17hb_sorted_array_tIKN2OT6Layout6Common11RangeRecordINS1_10SmallTypesEEEE5bfindIjEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i: ; preds = %_ZL14_hb_cmp_methodIjKN2OT6Layout6Common11RangeRecordINS1_10SmallTypesEEEJEEiPKvS8_DpT1_.exit.i.i.i.i.i.i.i.i
  %i.am = getelementptr inbounds nuw [6 x i8], ptr %i.t, i64 %i.z
  br label %_ZNK2OT17ClassDefFormat2_4INS_6Layout10SmallTypesEE9get_classEj.exit.i.i

_ZNK2OT17ClassDefFormat2_4INS_6Layout10SmallTypesEE9get_classEj.exit.i.i: ; preds = %bb.h, %_ZNK17hb_sorted_array_tIKN2OT6Layout6Common11RangeRecordINS1_10SmallTypesEEEE5bfindIjEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i, %bb.f
  %i.an = phi ptr [ %i.am, %_ZNK17hb_sorted_array_tIKN2OT6Layout6Common11RangeRecordINS1_10SmallTypesEEEE5bfindIjEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i ], [ @_hb_Null_OT_RangeRecord, %bb.f ], [ @_hb_Null_OT_RangeRecord, %bb.h ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  br label %_ZNK2OT8ClassDef9get_classEj.exit.i

_ZNK2OT8ClassDef9get_classEj.exit.i:              ; preds = %bb.d, %bb.e, %_ZNK2OT17ClassDefFormat2_4INS_6Layout10SmallTypesEE9get_classEj.exit.i.i
  %.sink.in.i = phi ptr [ %i.ao, %_ZNK2OT17ClassDefFormat2_4INS_6Layout10SmallTypesEE9get_classEj.exit.i.i ], [ %i.r, %bb.e ], [ @_hb_NullPool, %bb.d ]
  %.sink.i = load i16, ptr %.sink.in.i, align 1, !tbaa !283
  %i.ap = tail call noundef i16 @llvm.bswap.i16(i16 %.sink.i) ; 2 uses
  %.0.i.i = zext i16 %i.ap to i32                 ; 2 uses
  %i.aq = icmp ult i16 %i.ap, 255
  br i1 %i.aq, label %_ZNK2OT8ClassDef9get_classEj.exit.thread.i, label %_ZN2OTL16get_class_cachedERKNS_8ClassDefER15hb_glyph_info_t.exit, !prof !1851

_ZNK2OT8ClassDef9get_classEj.exit.thread.i:       ; preds = %_ZNK2OT8ClassDef9get_classEj.exit.i, %bb.c
  %.0.i13.i = phi i32 [ %.0.i.i, %_ZNK2OT8ClassDef9get_classEj.exit.i ], [ 0, %bb.c ] ; 2 uses
  %i.ar = trunc nuw i32 %.0.i13.i to i8
  store i8 %i.ar, ptr %i.a, align 1, !tbaa !280
  br label %_ZN2OTL16get_class_cachedERKNS_8ClassDefER15hb_glyph_info_t.exit

_ZN2OTL16get_class_cachedERKNS_8ClassDefER15hb_glyph_info_t.exit: ; preds = %bb.b, %_ZNK2OT8ClassDef9get_classEj.exit.i, %_ZNK2OT8ClassDef9get_classEj.exit.thread.i
  %.0.i = phi i32 [ %i.c, %bb.b ], [ %.0.i13.i, %_ZNK2OT8ClassDef9get_classEj.exit.thread.i ], [ %.0.i.i, %_ZNK2OT8ClassDef9get_classEj.exit.i ]
  %i.as = icmp eq i32 %.0.i, %1
  ret i1 %i.as
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2OT33hb_accelerate_subtables_context_t15hb_applicable_t4initINS_14ContextFormat3EEEvRKT_PFbPKvPNS_21hb_ot_apply_context_tEPvESD_PFbSA_NS_25hb_ot_subtable_cache_op_tEESB_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 1 dereferenceable(8) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !1838
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !1835
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %i.b, align 8, !tbaa !1836
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %4, ptr %i.c, align 8, !tbaa !1839
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %5, ptr %i.d, align 8, !tbaa !1404
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false), !tbaa !357
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.g = load i16, ptr %i.f, align 1, !tbaa !283  ; 2 uses
  %i.h = icmp eq i16 %i.g, 0
  %i.i = tail call i16 @llvm.bswap.i16(i16 %i.g)
  %i.j = zext i16 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %i.j
  %.0.i.i.i = select i1 %i.h, ptr @_hb_NullPool, ptr %i.k, !prof !267 ; 5 uses
  %i.l = load i16, ptr %.0.i.i.i, align 1, !tbaa !283
  %i.m = tail call noundef i16 @llvm.bswap.i16(i16 %i.l)
  switch i16 %i.m, label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit [
    i16 1, label %bb.b
    i16 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 2
  %i.o = load i16, ptr %i.n, align 1, !tbaa !283  ; 2 uses
  %i.p = tail call noundef i16 @llvm.bswap.i16(i16 %i.o)
  %.sroa.4.8.extract.trunc.i.i = zext i16 %i.p to i32
  %.not.i.i.i.i.i = icmp eq i16 %i.o, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4
  %.promoted.i.i.i.i.i = load i64, ptr %i.e, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.promoted9.i.i.i.i.i = load i64, ptr %i.r, align 8, !tbaa !357
  %.promoted11.i.i.i.i.i = load i64, ptr %i.s, align 8, !tbaa !357
  br label %bb.c

._crit_edge.i.i.i.i.i:                            ; preds = %bb.c
  store i64 %i.ad, ptr %i.e, align 8, !tbaa !357
  store i64 %i.ah, ptr %i.r, align 8, !tbaa !357
  store i64 %i.am, ptr %i.s, align 8, !tbaa !357
  br label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %i.t = phi i64 [ %.promoted11.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.am, %bb.c ]
  %i.u = phi i64 [ %.promoted9.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.ah, %bb.c ]
  %.08.i.i.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i.i.i ], [ %i.ao, %bb.c ]
  %.067.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i ], [ %i.an, %bb.c ] ; 2 uses
  %i.v = phi i64 [ %.promoted.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.ad, %bb.c ]
  %i.w = load i16, ptr %.067.i.i.i.i.i, align 1, !tbaa !283
  %i.x = tail call noundef i16 @llvm.bswap.i16(i16 %i.w)
  %i.y = zext i16 %i.x to i32                     ; 3 uses
  %i.z = lshr i32 %i.y, 4
  %i.aa = and i32 %i.z, 63
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = shl nuw i64 1, %i.ab
  %i.ad = or i64 %i.ac, %i.v                      ; 2 uses
  %i.ae = and i32 %i.y, 63
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = shl nuw i64 1, %i.af
  %i.ah = or i64 %i.ag, %i.u                      ; 2 uses
  %i.ai = lshr i32 %i.y, 6
  %i.aj = and i32 %i.ai, 63
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = shl nuw i64 1, %i.ak
  %i.am = or i64 %i.al, %i.t                      ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.067.i.i.i.i.i, i64 2
  %i.ao = add nuw i32 %.08.i.i.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i32 %i.ao, %.sroa.4.8.extract.trunc.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %bb.c, !llvm.loop !162

bb.d:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 2
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4 ; 2 uses
  %i.ar = load i16, ptr %i.ap, align 1, !tbaa !283 ; 2 uses
  %i.as = tail call noundef i16 @llvm.bswap.i16(i16 %i.ar)
  %i.at = zext i16 %i.as to i64
  %.idx.i.i = mul nuw nsw i64 %i.at, 6
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.idx.i.i
  %.not14.i.i = icmp eq i16 %i.ar, 0
  br i1 %.not14.i.i, label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %.01115.i.i = phi ptr [ %i.aw, %.lr.ph.i.i ], [ %i.aq, %bb.d ] ; 2 uses
  %i.av = tail call noundef zeroext i1 @_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI15hb_set_digest_tEEbPT_(ptr noundef nonnull align 1 dereferenceable(6) %.01115.i.i, ptr noundef nonnull %i.e)
  %i.aw = getelementptr inbounds nuw i8, ptr %.01115.i.i, i64 6 ; 2 uses
  %.not.i.i = icmp ne ptr %i.aw, %i.au
  %or.cond.not = select i1 %i.av, i1 %.not.i.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i.i, label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit

_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit: ; preds = %.lr.ph.i.i, %bb.a, %bb.b, %._crit_edge.i.i.i.i.i, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT33hb_accelerate_subtables_context_t8apply_toINS_14ContextFormat3EEEbPKvPNS_21hb_ot_apply_context_tEPv(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 2 uses
  %i.b = load i16, ptr %i.a, align 1, !tbaa !283  ; 2 uses
  %i.c = icmp eq i16 %i.b, 0
  %i.d = tail call i16 @llvm.bswap.i16(i16 %i.b)
  %i.e = zext i16 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %i.e
  %.0.i.i.i.i = select i1 %i.c, ptr @_hb_NullPool, ptr %i.f, !prof !267
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1278 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !589
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 92
  %i.l = load i32, ptr %i.k, align 4, !tbaa !653
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [20 x i8], ptr %i.j, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !637
  %i.p = tail call noundef i32 @_ZNK2OT6Layout6Common8Coverage12get_coverageEj(ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i.i.i, i32 noundef %i.o)
  %i.q = icmp eq i32 %i.p, -1
  br i1 %i.q, label %_ZN2OT33hb_accelerate_subtables_context_t6apply_INS_14ContextFormat3EEEN10_hb_head_tIbJDTclptfp_5applyfp0_EEEE4typeEPKT_PNS_21hb_ot_apply_context_tEPv11hb_priorityILj0EE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.s = load i16, ptr %i.r, align 1, !tbaa !283
  %i.t = tail call noundef i16 @llvm.bswap.i16(i16 %i.s)
  %i.u = zext i16 %i.t to i32                     ; 2 uses
  %i.v = shl nuw nsw i32 %i.u, 1
  %i.w = zext nneg i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.aa = load i16, ptr %i.z, align 1, !tbaa !283
  %i.ab = tail call noundef i16 @llvm.bswap.i16(i16 %i.aa)
  %i.ac = zext i16 %i.ab to i32
  %i.ad = tail call fastcc noundef zeroext i1 @_ZN2OTL20context_apply_lookupINS_7NumTypeILb1EtLj2EEEEEbPNS_21hb_ot_apply_context_tEjPKT_jPKNS_12LookupRecordERKNS_25ContextApplyLookupContextE(ptr noundef nonnull %1, i32 noundef %i.u, ptr noundef %i.y, i32 noundef %i.ac, ptr noundef nonnull %i.x, ptr nonnull @_ZN2OTL14match_coverageER15hb_glyph_info_tjPKv, ptr nonnull align 1 dereferenceable(8) %0)
  br label %_ZN2OT33hb_accelerate_subtables_context_t6apply_INS_14ContextFormat3EEEN10_hb_head_tIbJDTclptfp_5applyfp0_EEEE4typeEPKT_PNS_21hb_ot_apply_context_tEPv11hb_priorityILj0EE.exit

_ZN2OT33hb_accelerate_subtables_context_t6apply_INS_14ContextFormat3EEEN10_hb_head_tIbJDTclptfp_5applyfp0_EEEE4typeEPKT_PNS_21hb_ot_apply_context_tEPv11hb_priorityILj0EE.exit: ; preds = %bb.a, %bb.b
  %.0.i.i = phi i1 [ %i.ad, %bb.b ], [ false, %bb.a ]
  ret i1 %.0.i.i
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT33hb_accelerate_subtables_context_t15apply_cached_toINS_14ContextFormat3EEEbPKvPNS_21hb_ot_apply_context_tEPv(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 2 uses
  %i.b = load i16, ptr %i.a, align 1, !tbaa !283  ; 2 uses
  %i.c = icmp eq i16 %i.b, 0
  %i.d = tail call i16 @llvm.bswap.i16(i16 %i.b)
  %i.e = zext i16 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %i.e
  %.0.i.i.i.i = select i1 %i.c, ptr @_hb_NullPool, ptr %i.f, !prof !267
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1278 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !589
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 92
  %i.l = load i32, ptr %i.k, align 4, !tbaa !653
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [20 x i8], ptr %i.j, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !637
  %i.p = tail call noundef i32 @_ZNK2OT6Layout6Common8Coverage12get_coverageEj(ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i.i.i, i32 noundef %i.o)
  %i.q = icmp eq i32 %i.p, -1
  br i1 %i.q, label %_ZN2OT33hb_accelerate_subtables_context_t13apply_cached_INS_14ContextFormat3EEEN10_hb_head_tIbJDTclptfp_5applyfp0_EEEE4typeEPKT_PNS_21hb_ot_apply_context_tEPv11hb_priorityILj0EE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.s = load i16, ptr %i.r, align 1, !tbaa !283
  %i.t = tail call noundef i16 @llvm.bswap.i16(i16 %i.s)
  %i.u = zext i16 %i.t to i32                     ; 2 uses
  %i.v = shl nuw nsw i32 %i.u, 1
  %i.w = zext nneg i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.aa = load i16, ptr %i.z, align 1, !tbaa !283
  %i.ab = tail call noundef i16 @llvm.bswap.i16(i16 %i.aa)
  %i.ac = zext i16 %i.ab to i32
  %i.ad = tail call fastcc noundef zeroext i1 @_ZN2OTL20context_apply_lookupINS_7NumTypeILb1EtLj2EEEEEbPNS_21hb_ot_apply_context_tEjPKT_jPKNS_12LookupRecordERKNS_25ContextApplyLookupContextE(ptr noundef nonnull %1, i32 noundef %i.u, ptr noundef %i.y, i32 noundef %i.ac, ptr noundef nonnull %i.x, ptr nonnull @_ZN2OTL14match_coverageER15hb_glyph_info_tjPKv, ptr nonnull align 1 dereferenceable(8) %0)
  br label %_ZN2OT33hb_accelerate_subtables_context_t13apply_cached_INS_14ContextFormat3EEEN10_hb_head_tIbJDTclptfp_5applyfp0_EEEE4typeEPKT_PNS_21hb_ot_apply_context_tEPv11hb_priorityILj0EE.exit

_ZN2OT33hb_accelerate_subtables_context_t13apply_cached_INS_14ContextFormat3EEEN10_hb_head_tIbJDTclptfp_5applyfp0_EEEE4typeEPKT_PNS_21hb_ot_apply_context_tEPv11hb_priorityILj0EE.exit: ; preds = %bb.a, %bb.b
  %.0.i.i = phi i1 [ %i.ad, %bb.b ], [ false, %bb.a ]
  ret i1 %.0.i.i
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT33hb_accelerate_subtables_context_t13cache_func_toINS_14ContextFormat3EEEbPNS_21hb_ot_apply_context_tENS_25hb_ot_subtable_cache_op_tE(ptr noundef %0, i32 noundef %1) #16 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2OT33hb_accelerate_subtables_context_t8dispatchINS_21ChainContextFormat2_5INS_6Layout10SmallTypesEEEEE10hb_empty_tRKT_(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 1 dereferenceable(14) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !1831 ; 3 uses
  %i.c = icmp ult i32 %i.b, 8
  br i1 %i.c, label %bb.b, label %_ZN2OT33hb_accelerate_subtables_context_t21external_cache_createINS_21ChainContextFormat2_5INS_6Layout10SmallTypesEEEEEDTcldtfp_21external_cache_createEERKT_11hb_priorityILj1EE.exit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias noundef dereferenceable_or_null(256) ptr @malloc(i64 noundef 256) #65 ; 10 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZN2OT33hb_accelerate_subtables_context_t21external_cache_createINS_21ChainContextFormat2_5INS_6Layout10SmallTypesEEEEEDTcldtfp_21external_cache_createEERKT_11hb_priorityILj1EE.exit, label %.preheader.i.i, !prof !267

.preheader.i.i:                                   ; preds = %bb.b, %.preheader.i.i
  %.0.idx8.i.i.i = phi i64 [ %.0.add.i.i.i.7, %.preheader.i.i ], [ 0, %bb.b ] ; 9 uses
  %.0.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 %.0.idx8.i.i.i
  store atomic i8 -1, ptr %.0.ptr.i.i.i monotonic, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %.0.idx8.i.i.i
  %.0.ptr.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  store atomic i8 -1, ptr %.0.ptr.i.i.i.1 monotonic, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 %.0.idx8.i.i.i
  %.0.ptr.i.i.i.2 = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  store atomic i8 -1, ptr %.0.ptr.i.i.i.2 monotonic, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.0.idx8.i.i.i
  %.0.ptr.i.i.i.3 = getelementptr inbounds nuw i8, ptr %i.g, i64 3
  store atomic i8 -1, ptr %.0.ptr.i.i.i.3 monotonic, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 %.0.idx8.i.i.i
  %.0.ptr.i.i.i.4 = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store atomic i8 -1, ptr %.0.ptr.i.i.i.4 monotonic, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 %.0.idx8.i.i.i
  %.0.ptr.i.i.i.5 = getelementptr inbounds nuw i8, ptr %i.i, i64 5
  store atomic i8 -1, ptr %.0.ptr.i.i.i.5 monotonic, align 1
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 %.0.idx8.i.i.i
  %.0.ptr.i.i.i.6 = getelementptr inbounds nuw i8, ptr %i.j, i64 6
  store atomic i8 -1, ptr %.0.ptr.i.i.i.6 monotonic, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 %.0.idx8.i.i.i
  %.0.ptr.i.i.i.7 = getelementptr inbounds nuw i8, ptr %i.k, i64 7
  store atomic i8 -1, ptr %.0.ptr.i.i.i.7 monotonic, align 1
  %.0.add.i.i.i.7 = add nuw nsw i64 %.0.idx8.i.i.i, 8 ; 2 uses
  %.not.i.i.i.7 = icmp eq i64 %.0.add.i.i.i.7, 256
  br i1 %.not.i.i.i.7, label %_ZN2OT33hb_accelerate_subtables_context_t21external_cache_createINS_21ChainContextFormat2_5INS_6Layout10SmallTypesEEEEEDTcldtfp_21external_cache_createEERKT_11hb_priorityILj1EE.exit, label %.preheader.i.i

_ZN2OT33hb_accelerate_subtables_context_t21external_cache_createINS_21ChainContextFormat2_5INS_6Layout10SmallTypesEEEEEDTcldtfp_21external_cache_createEERKT_11hb_priorityILj1EE.exit: ; preds = %.preheader.i.i, %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %i.d, %.preheader.i.i ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1830
  %i.n = add i32 %i.b, 1
  store i32 %i.n, ptr %i.a, align 8, !tbaa !1831
  %i.o = zext i32 %i.b to i64
  %i.p = getelementptr inbounds nuw [64 x i8], ptr %i.m, i64 %i.o
  tail call void @_ZN2OT33hb_accelerate_subtables_context_t15hb_applicable_t4initINS_21ChainContextFormat2_5INS_6Layout10SmallTypesEEEEEvRKT_PFbPKvPNS_21hb_ot_apply_context_tEPvESG_PFbSD_NS_25hb_ot_subtable_cache_op_tEESE_(ptr noundef nonnull align 8 dereferenceable(64) %i.p, ptr noundef nonnull align 1 dereferenceable(14) %1, ptr noundef nonnull @_ZN2OT33hb_accelerate_subtables_context_t8apply_toINS_21ChainContextFormat2_5INS_6Layout10SmallTypesEEEEEbPKvPNS_21hb_ot_apply_context_tEPv, ptr noundef nonnull @_ZN2OT33hb_accelerate_subtables_context_t15apply_cached_toINS_21ChainContextFormat2_5INS_6Layout10SmallTypesEEEEEbPKvPNS_21hb_ot_apply_context_tEPv, ptr noundef nonnull @_ZN2OT33hb_accelerate_subtables_context_t13cache_func_toINS_21ChainContextFormat2_5INS_6Layout10SmallTypesEEEEEbPNS_21hb_ot_apply_context_tENS_25hb_ot_subtable_cache_op_tE, ptr noundef %.0)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.r = load i16, ptr %i.q, align 1, !tbaa !283  ; 2 uses
  %i.s = icmp eq i16 %i.r, 0
  %i.t = tail call i16 @llvm.bswap.i16(i16 %i.r)
  %i.u = zext i16 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %i.u
  %.0.i.i.i.i = select i1 %i.s, ptr @_hb_NullPool, ptr %i.v, !prof !267 ; 2 uses
  %i.w = load i16, ptr %.0.i.i.i.i, align 1, !tbaa !283
  %i.x = tail call noundef i16 @llvm.bswap.i16(i16 %i.w)
  switch i16 %i.x, label %_ZNK2OT8ClassDef4costEv.exit.i.i [
    i16 1, label %bb.c
    i16 2, label %bb.d
  ]

bb.c:                                             ; preds = %_ZN2OT33hb_accelerate_subtables_context_t21external_cache_createINS_21ChainContextFormat2_5INS_6Layout10SmallTypesEEEEEDTcldtfp_21external_cache_createEERKT_11hb_priorityILj1EE.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  br label %_ZNK2OT8ClassDef4costEv.exit.i.i

bb.d:                                             ; preds = %_ZN2OT33hb_accelerate_subtables_context_t21external_cache_createINS_21ChainContextFormat2_5INS_6Layout10SmallTypesEEEEEDTcldtfp_21external_cache_createEERKT_11hb_priorityILj1EE.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 2
  %i.z = load i16, ptr %i.y, align 1, !tbaa !283
  %i.aa = tail call noundef i16 @llvm.bswap.i16(i16 %i.z)
  %i.ab = zext i16 %i.aa to i32
  %i.ac = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ab, i1 false)
  %narrow.i.i.i.i.i = sub nuw nsw i32 32, %i.ac
  br label %_ZNK2OT8ClassDef4costEv.exit.i.i

_ZNK2OT8ClassDef4costEv.exit.i.i:                 ; preds = %bb.d, %bb.c, %_ZN2OT33hb_accelerate_subtables_context_t21external_cache_createINS_21ChainContextFormat2_5INS_6Layout10SmallTypesEEEEEDTcldtfp_21external_cache_createEERKT_11hb_priorityILj1EE.exit
  %.0.i.i.i = phi i32 [ %narrow.i.i.i.i.i, %bb.d ], [ 1, %bb.c ], [ 0, %_ZN2OT33hb_accelerate_subtables_context_t21external_cache_createINS_21ChainContextFormat2_5INS_6Layout10SmallTypesEEEEEDTcldtfp_21external_cache_createEERKT_11hb_priorityILj1EE.exit ]
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load i16, ptr %i.ad, align 1, !tbaa !283 ; 2 uses
  %i.af = icmp eq i16 %i.ae, 0
  %i.ag = tail call i16 @llvm.bswap.i16(i16 %i.ae)
  %i.ah = zext i16 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %i.ah
  %.0.i.i1.i.i = select i1 %i.af, ptr @_hb_NullPool, ptr %i.ai, !prof !267 ; 2 uses
  %i.aj = load i16, ptr %.0.i.i1.i.i, align 1, !tbaa !283
  %i.ak = tail call noundef i16 @llvm.bswap.i16(i16 %i.aj)
  switch i16 %i.ak, label %_ZN2OT33hb_accelerate_subtables_context_t10cache_costINS_21ChainContextFormat2_5INS_6Layout10SmallTypesEEEEEDTcldtfp_10cache_costEERKT_11hb_priorityILj1EE.exit [
    i16 1, label %bb.e
    i16 2, label %bb.f
  ]

bb.e:                                             ; preds = %_ZNK2OT8ClassDef4costEv.exit.i.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  br label %_ZN2OT33hb_accelerate_subtables_context_t10cache_costINS_21ChainContextFormat2_5INS_6Layout10SmallTypesEEEEEDTcldtfp_10cache_costEERKT_11hb_priorityILj1EE.exit

bb.f:                                             ; preds = %_ZNK2OT8ClassDef4costEv.exit.i.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.al = getelementptr inbounds nuw i8, ptr %.0.i.i1.i.i, i64 2
  %i.am = load i16, ptr %i.al, align 1, !tbaa !283
  %i.an = tail call noundef i16 @llvm.bswap.i16(i16 %i.am)
  %i.ao = zext i16 %i.an to i32
  %i.ap = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ao, i1 false)
  %narrow.i.i.i2.i.i = sub nuw nsw i32 32, %i.ap
  br label %_ZN2OT33hb_accelerate_subtables_context_t10cache_costINS_21ChainContextFormat2_5INS_6Layout10SmallTypesEEEEEDTcldtfp_10cache_costEERKT_11hb_priorityILj1EE.exit

_ZN2OT33hb_accelerate_subtables_context_t10cache_costINS_21ChainContextFormat2_5INS_6Layout10SmallTypesEEEEEDTcldtfp_10cache_costEERKT_11hb_priorityILj1EE.exit: ; preds = %_ZNK2OT8ClassDef4costEv.exit.i.i, %bb.e, %bb.f
  %.0.i3.i.i = phi i32 [ %narrow.i.i.i2.i.i, %bb.f ], [ 1, %bb.e ], [ 0, %_ZNK2OT8ClassDef4costEv.exit.i.i ]
  %i.aq = add nuw nsw i32 %.0.i3.i.i, %.0.i.i.i   ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !1833
  %i.at = icmp ugt i32 %i.aq, %i.as
  br i1 %i.at, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN2OT33hb_accelerate_subtables_context_t10cache_costINS_21ChainContextFormat2_5INS_6Layout10SmallTypesEEEEEDTcldtfp_10cache_costEERKT_11hb_priorityILj1EE.exit
  %i.au = load i32, ptr %i.a, align 8, !tbaa !1831
  %i.av = add i32 %i.au, -1
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !1832
  store i32 %i.aq, ptr %i.ar, align 8, !tbaa !1833
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN2OT33hb_accelerate_subtables_context_t10cache_costINS_21ChainContextFormat2_5INS_6Layout10SmallTypesEEEEEDTcldtfp_10cache_costEERKT_11hb_priorityILj1EE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2OT33hb_accelerate_subtables_context_t15hb_applicable_t4initINS_21ChainContextFormat1_4INS_6Layout10SmallTypesEEEEEvRKT_PFbPKvPNS_21hb_ot_apply_context_tEPvESG_PFbSD_NS_25hb_ot_subtable_cache_op_tEESE_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 1 dereferenceable(8) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !1838
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !1835
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %i.b, align 8, !tbaa !1836
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %4, ptr %i.c, align 8, !tbaa !1839
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %5, ptr %i.d, align 8, !tbaa !1404
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false), !tbaa !357
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.g = load i16, ptr %i.f, align 1, !tbaa !283  ; 2 uses
  %i.h = icmp eq i16 %i.g, 0
  %i.i = tail call i16 @llvm.bswap.i16(i16 %i.g)
  %i.j = zext i16 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %i.j
  %.0.i.i.i = select i1 %i.h, ptr @_hb_NullPool, ptr %i.k, !prof !267 ; 5 uses
  %i.l = load i16, ptr %.0.i.i.i, align 1, !tbaa !283
  %i.m = tail call noundef i16 @llvm.bswap.i16(i16 %i.l)
  switch i16 %i.m, label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit [
    i16 1, label %bb.b
    i16 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 2
  %i.o = load i16, ptr %i.n, align 1, !tbaa !283  ; 2 uses
  %i.p = tail call noundef i16 @llvm.bswap.i16(i16 %i.o)
  %.sroa.4.8.extract.trunc.i.i = zext i16 %i.p to i32
  %.not.i.i.i.i.i = icmp eq i16 %i.o, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4
  %.promoted.i.i.i.i.i = load i64, ptr %i.e, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.promoted9.i.i.i.i.i = load i64, ptr %i.r, align 8, !tbaa !357
  %.promoted11.i.i.i.i.i = load i64, ptr %i.s, align 8, !tbaa !357
  br label %bb.c

._crit_edge.i.i.i.i.i:                            ; preds = %bb.c
  store i64 %i.ad, ptr %i.e, align 8, !tbaa !357
  store i64 %i.ah, ptr %i.r, align 8, !tbaa !357
  store i64 %i.am, ptr %i.s, align 8, !tbaa !357
  br label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %i.t = phi i64 [ %.promoted11.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.am, %bb.c ]
  %i.u = phi i64 [ %.promoted9.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.ah, %bb.c ]
  %.08.i.i.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i.i.i ], [ %i.ao, %bb.c ]
  %.067.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i ], [ %i.an, %bb.c ] ; 2 uses
  %i.v = phi i64 [ %.promoted.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.ad, %bb.c ]
  %i.w = load i16, ptr %.067.i.i.i.i.i, align 1, !tbaa !283
  %i.x = tail call noundef i16 @llvm.bswap.i16(i16 %i.w)
  %i.y = zext i16 %i.x to i32                     ; 3 uses
  %i.z = lshr i32 %i.y, 4
  %i.aa = and i32 %i.z, 63
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = shl nuw i64 1, %i.ab
  %i.ad = or i64 %i.ac, %i.v                      ; 2 uses
  %i.ae = and i32 %i.y, 63
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = shl nuw i64 1, %i.af
  %i.ah = or i64 %i.ag, %i.u                      ; 2 uses
  %i.ai = lshr i32 %i.y, 6
  %i.aj = and i32 %i.ai, 63
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = shl nuw i64 1, %i.ak
  %i.am = or i64 %i.al, %i.t                      ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.067.i.i.i.i.i, i64 2
  %i.ao = add nuw i32 %.08.i.i.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i32 %i.ao, %.sroa.4.8.extract.trunc.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %bb.c, !llvm.loop !162

bb.d:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 2
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4 ; 2 uses
  %i.ar = load i16, ptr %i.ap, align 1, !tbaa !283 ; 2 uses
  %i.as = tail call noundef i16 @llvm.bswap.i16(i16 %i.ar)
  %i.at = zext i16 %i.as to i64
  %.idx.i.i = mul nuw nsw i64 %i.at, 6
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.idx.i.i
  %.not14.i.i = icmp eq i16 %i.ar, 0
  br i1 %.not14.i.i, label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %.01115.i.i = phi ptr [ %i.aw, %.lr.ph.i.i ], [ %i.aq, %bb.d ] ; 2 uses
  %i.av = tail call noundef zeroext i1 @_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI15hb_set_digest_tEEbPT_(ptr noundef nonnull align 1 dereferenceable(6) %.01115.i.i, ptr noundef nonnull %i.e)
  %i.aw = getelementptr inbounds nuw i8, ptr %.01115.i.i, i64 6 ; 2 uses
  %.not.i.i = icmp ne ptr %i.aw, %i.au
  %or.cond.not = select i1 %i.av, i1 %.not.i.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i.i, label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit

_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit: ; preds = %.lr.ph.i.i, %bb.a, %bb.b, %._crit_edge.i.i.i.i.i, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT33hb_accelerate_subtables_context_t8apply_toINS_21ChainContextFormat1_4INS_6Layout10SmallTypesEEEEEbPKvPNS_21hb_ot_apply_context_tEPv(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16 comdat align 2 {
bb.a:
  %3 = alloca %"struct.OT::ChainContextApplyLookupContext", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.b = load i16, ptr %i.a, align 1, !tbaa !283  ; 2 uses
  %i.c = icmp eq i16 %i.b, 0
  %i.d = tail call i16 @llvm.bswap.i16(i16 %i.b)
  %i.e = zext i16 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %i.e
  %.0.i.i.i.i = select i1 %i.c, ptr @_hb_NullPool, ptr %i.f, !prof !267
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1278 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !589
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 92
  %i.l = load i32, ptr %i.k, align 4, !tbaa !653
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [20 x i8], ptr %i.j, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !637
  %i.p = tail call noundef i32 @_ZNK2OT6Layout6Common8Coverage12get_coverageEj(ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i.i.i, i32 noundef %i.o) ; 3 uses
  %i.q = icmp eq i32 %i.p, -1
  br i1 %i.q, label %_ZN2OT33hb_accelerate_subtables_context_t6apply_INS_21ChainContextFormat1_4INS_6Layout10SmallTypesEEEEEN10_hb_head_tIbJDTclptfp_5applyfp0_EEEE4typeEPKT_PNS_21hb_ot_apply_context_tEPv11hb_priorityILj0EE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.s = load i16, ptr %i.r, align 1, !tbaa !283
  %i.t = tail call noundef i16 @llvm.bswap.i16(i16 %i.s)
  %i.u = zext i16 %i.t to i32
  %.not.i.i.i = icmp ult i32 %i.p, %i.u
  br i1 %.not.i.i.i, label %bb.c, label %_ZNK2OT7ArrayOfINS_8OffsetToINS_12ChainRuleSetINS_6Layout10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES7_EixEi.exit.i.i, !prof !268

bb.c:                                             ; preds = %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.w = zext nneg i32 %i.p to i64
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %i.w
  br label %_ZNK2OT7ArrayOfINS_8OffsetToINS_12ChainRuleSetINS_6Layout10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES7_EixEi.exit.i.i

_ZNK2OT7ArrayOfINS_8OffsetToINS_12ChainRuleSetINS_6Layout10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES7_EixEi.exit.i.i: ; preds = %bb.c, %bb.b
  %.0.i.i.i = phi ptr [ %i.x, %bb.c ], [ @_hb_NullPool, %bb.b ]
  %i.y = load i16, ptr %.0.i.i.i, align 1, !tbaa !283 ; 2 uses
  %i.z = icmp eq i16 %i.y, 0
  %i.aa = tail call i16 @llvm.bswap.i16(i16 %i.y)
  %i.ab = zext i16 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %i.ab
  %.0.i.i7.i.i = select i1 %i.z, ptr @_hb_NullPool, ptr %i.ac, !prof !267
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) @__const._ZNK2OT21ChainContextFormat1_4INS_6Layout10SmallTypesEE5applyEPNS_21hb_ot_apply_context_tE.lookup_context, i64 48, i1 false)
  %i.ad = call noundef zeroext i1 @_ZNK2OT12ChainRuleSetINS_6Layout10SmallTypesEE5applyEPNS_21hb_ot_apply_context_tERKNS_30ChainContextApplyLookupContextE(ptr noundef nonnull align 1 dereferenceable(4) %.0.i.i7.i.i, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(48) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #63
  br label %_ZN2OT33hb_accelerate_subtables_context_t6apply_INS_21ChainContextFormat1_4INS_6Layout10SmallTypesEEEEEN10_hb_head_tIbJDTclptfp_5applyfp0_EEEE4typeEPKT_PNS_21hb_ot_apply_context_tEPv11hb_priorityILj0EE.exit

_ZN2OT33hb_accelerate_subtables_context_t6apply_INS_21ChainContextFormat1_4INS_6Layout10SmallTypesEEEEEN10_hb_head_tIbJDTclptfp_5applyfp0_EEEE4typeEPKT_PNS_21hb_ot_apply_context_tEPv11hb_priorityILj0EE.exit: ; preds = %bb.a, %_ZNK2OT7ArrayOfINS_8OffsetToINS_12ChainRuleSetINS_6Layout10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES7_EixEi.exit.i.i
  %.0.i.i = phi i1 [ %i.ad, %_ZNK2OT7ArrayOfINS_8OffsetToINS_12ChainRuleSetINS_6Layout10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES7_EixEi.exit.i.i ], [ false, %bb.a ]
  ret i1 %.0.i.i
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT33hb_accelerate_subtables_context_t15apply_cached_toINS_21ChainContextFormat1_4INS_6Layout10SmallTypesEEEEEbPKvPNS_21hb_ot_apply_context_tEPv(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16 comdat align 2 {
bb.a:
  %3 = alloca %"struct.OT::ChainContextApplyLookupContext", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.b = load i16, ptr %i.a, align 1, !tbaa !283  ; 2 uses
  %i.c = icmp eq i16 %i.b, 0
  %i.d = tail call i16 @llvm.bswap.i16(i16 %i.b)
  %i.e = zext i16 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %i.e
  %.0.i.i.i.i = select i1 %i.c, ptr @_hb_NullPool, ptr %i.f, !prof !267
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1278 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !589
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 92
  %i.l = load i32, ptr %i.k, align 4, !tbaa !653
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [20 x i8], ptr %i.j, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !637
  %i.p = tail call noundef i32 @_ZNK2OT6Layout6Common8Coverage12get_coverageEj(ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i.i.i, i32 noundef %i.o) ; 3 uses
  %i.q = icmp eq i32 %i.p, -1
  br i1 %i.q, label %_ZN2OT33hb_accelerate_subtables_context_t13apply_cached_INS_21ChainContextFormat1_4INS_6Layout10SmallTypesEEEEEN10_hb_head_tIbJDTclptfp_5applyfp0_EEEE4typeEPKT_PNS_21hb_ot_apply_context_tEPv11hb_priorityILj0EE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.s = load i16, ptr %i.r, align 1, !tbaa !283
  %i.t = tail call noundef i16 @llvm.bswap.i16(i16 %i.s)
  %i.u = zext i16 %i.t to i32
  %.not.i.i.i = icmp ult i32 %i.p, %i.u
  br i1 %.not.i.i.i, label %bb.c, label %_ZNK2OT7ArrayOfINS_8OffsetToINS_12ChainRuleSetINS_6Layout10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES7_EixEi.exit.i.i, !prof !268

bb.c:                                             ; preds = %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.w = zext nneg i32 %i.p to i64
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %i.w
  br label %_ZNK2OT7ArrayOfINS_8OffsetToINS_12ChainRuleSetINS_6Layout10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES7_EixEi.exit.i.i

_ZNK2OT7ArrayOfINS_8OffsetToINS_12ChainRuleSetINS_6Layout10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES7_EixEi.exit.i.i: ; preds = %bb.c, %bb.b
  %.0.i.i.i = phi ptr [ %i.x, %bb.c ], [ @_hb_NullPool, %bb.b ]
  %i.y = load i16, ptr %.0.i.i.i, align 1, !tbaa !283 ; 2 uses
  %i.z = icmp eq i16 %i.y, 0
  %i.aa = tail call i16 @llvm.bswap.i16(i16 %i.y)
  %i.ab = zext i16 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %i.ab
  %.0.i.i7.i.i = select i1 %i.z, ptr @_hb_NullPool, ptr %i.ac, !prof !267
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) @__const._ZNK2OT21ChainContextFormat1_4INS_6Layout10SmallTypesEE5applyEPNS_21hb_ot_apply_context_tE.lookup_context, i64 48, i1 false)
  %i.ad = call noundef zeroext i1 @_ZNK2OT12ChainRuleSetINS_6Layout10SmallTypesEE5applyEPNS_21hb_ot_apply_context_tERKNS_30ChainContextApplyLookupContextE(ptr noundef nonnull align 1 dereferenceable(4) %.0.i.i7.i.i, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(48) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #63
  br label %_ZN2OT33hb_accelerate_subtables_context_t13apply_cached_INS_21ChainContextFormat1_4INS_6Layout10SmallTypesEEEEEN10_hb_head_tIbJDTclptfp_5applyfp0_EEEE4typeEPKT_PNS_21hb_ot_apply_context_tEPv11hb_priorityILj0EE.exit

_ZN2OT33hb_accelerate_subtables_context_t13apply_cached_INS_21ChainContextFormat1_4INS_6Layout10SmallTypesEEEEEN10_hb_head_tIbJDTclptfp_5applyfp0_EEEE4typeEPKT_PNS_21hb_ot_apply_context_tEPv11hb_priorityILj0EE.exit: ; preds = %bb.a, %_ZNK2OT7ArrayOfINS_8OffsetToINS_12ChainRuleSetINS_6Layout10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES7_EixEi.exit.i.i
  %.0.i.i = phi i1 [ %i.ad, %_ZNK2OT7ArrayOfINS_8OffsetToINS_12ChainRuleSetINS_6Layout10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES7_EixEi.exit.i.i ], [ false, %bb.a ]
  ret i1 %.0.i.i
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT33hb_accelerate_subtables_context_t13cache_func_toINS_21ChainContextFormat1_4INS_6Layout10SmallTypesEEEEEbPNS_21hb_ot_apply_context_tENS_25hb_ot_subtable_cache_op_tE(ptr noundef %0, i32 noundef %1) #16 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2OT12ChainRuleSetINS_6Layout10SmallTypesEE5applyEPNS_21hb_ot_apply_context_tERKNS_30ChainContextApplyLookupContextE(ptr noundef nonnull align 1 dereferenceable(4) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(48) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %3 = alloca %struct.hb_map_iter_t.1647, align 8 ; 6 uses
  %4 = alloca %struct.hb_map_iter_t.1274, align 8 ; 7 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !1844
  %i.b = load i16, ptr %0, align 1, !tbaa !283    ; 2 uses
  %i.c = tail call noundef i16 @llvm.bswap.i16(i16 %i.b) ; 2 uses
  %i.d = zext i16 %i.c to i32                     ; 4 uses
  %i.e = icmp ult i16 %i.c, 5
  br i1 %i.e, label %_ZN11hb_buffer_t16unsafe_to_concatEjj.exit, label %bb.b

_ZN11hb_buffer_t16unsafe_to_concatEjj.exitthread-pre-split: ; preds = %_ZNK2OT20MarkGlyphSetsFormat16coversEjj.exit.i.i, %bb.c, %_ZNK2OT4GDEF19get_mark_glyph_setsEv.exit.i, %bb.q, %.split, %bb.s, %bb.ab, %bb.n, %bb.y, %bb.x, %bb.w, %bb.v, %bb.h, %bb.g, %bb.f
  %.pr = load i16, ptr %0, align 1, !tbaa !283
  br label %_ZN11hb_buffer_t16unsafe_to_concatEjj.exit

_ZN11hb_buffer_t16unsafe_to_concatEjj.exit:       ; preds = %_ZN11hb_buffer_t16unsafe_to_concatEjj.exitthread-pre-split, %bb.a
  %i.f = phi i16 [ %.pr, %_ZN11hb_buffer_t16unsafe_to_concatEjj.exitthread-pre-split ], [ %i.b, %bb.a ] ; 2 uses
  %.not5.not.i.i = icmp eq i16 %i.f, 0
  br i1 %.not5.not.i.i, label %_ZN11hb_buffer_t16unsafe_to_concatEjj.exit.thread, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZN11hb_buffer_t16unsafe_to_concatEjj.exit
  %i.g = tail call noundef i16 @llvm.bswap.i16(i16 %i.f)
  %.sroa.4233.8.extract.trunc = zext i16 %i.g to i32
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader
  %.sroa.0.07.i.i.pn = phi ptr [ %.sroa.0.07.i.i, %.lr.ph.i.i ], [ %0, %.lr.ph.i.i.preheader ]
  %.sroa.6.06.i.i = phi i32 [ %i.ao, %.lr.ph.i.i ], [ %.sroa.4233.8.extract.trunc, %.lr.ph.i.i.preheader ]
  %.sroa.0.07.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.pn, i64 2 ; 2 uses
  %.val1.i.i.i.i.i.i = load i16, ptr %.sroa.0.07.i.i, align 1, !tbaa !283 ; 2 uses
  %i.h = icmp eq i16 %.val1.i.i.i.i.i.i, 0
  %i.i = tail call i16 @llvm.bswap.i16(i16 %.val1.i.i.i.i.i.i)
  %i.j = zext i16 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %i.j
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.h, ptr @_hb_NullPool, ptr %i.k, !prof !267 ; 3 uses
  %i.l = load i16, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !tbaa !283
  %i.m = tail call noundef i16 @llvm.bswap.i16(i16 %i.l) ; 2 uses
  %i.n = zext i16 %i.m to i64
  %i.o = shl nuw nsw i64 %i.n, 1
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.o ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 2 ; 2 uses
  %i.r = load i16, ptr %i.q, align 1, !tbaa !283  ; 2 uses
  %i.s = tail call noundef i16 @llvm.bswap.i16(i16 %i.r) ; 2 uses
  %i.t = zext i16 %i.s to i64
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.r, 0
  %i.u = shl nuw nsw i64 %i.t, 1
  %i.v = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 2, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.v ; 3 uses
  %i.x = load i16, ptr %i.w, align 1, !tbaa !283
end_hunk_8
begin_hunk_9_@_ZN2OT19skipping_iterator_tINS_21hb_ot_apply_context_tEE4prevEPj:bb.a
  %.fr60 = freeze i16 %i.ci                       ; 4 uses
  %i.cj = and i16 %.fr60, 32
  %.not.i28 = icmp eq i16 %i.cj, 0
  br i1 %.not.i28, label %_ZNK2OT9matcher_t8may_skipINS_21hb_ot_apply_context_tEEENS0_10may_skip_tEPKT_RK15hb_glyph_info_t.exit, label %_ZL35_hb_glyph_info_is_default_ignorablePK15hb_glyph_info_t.exit

_ZL35_hb_glyph_info_is_default_ignorablePK15hb_glyph_info_t.exit: ; preds = %_ZNK2OT21hb_ot_apply_context_t20check_glyph_propertyEPK15hb_glyph_info_tj.exit.thread34
  %.val.i = load i16, ptr %i.y, align 4, !tbaa !280
  %i.ck = and i16 %.val.i, 16
  %.not2.i = icmp eq i16 %i.ck, 0
  br i1 %.not2.i, label %bb.n, label %_ZNK2OT9matcher_t8may_skipINS_21hb_ot_apply_context_tEEENS0_10may_skip_tEPKT_RK15hb_glyph_info_t.exit

bb.n:                                             ; preds = %_ZL35_hb_glyph_info_is_default_ignorablePK15hb_glyph_info_t.exit
  %i.cl = load i8, ptr %i.i, align 8, !tbaa !1291, !range !380, !noundef !293
  %i.cm = trunc nuw i8 %i.cl to i1
  %i.cn = and i16 %.fr60, 543
  %i.co = icmp ne i16 %i.cn, 513
  %or.cond52.not = or i1 %i.co, %i.cm
  br i1 %or.cond52.not, label %bb.o, label %_ZNK2OT9matcher_t8may_skipINS_21hb_ot_apply_context_tEEENS0_10may_skip_tEPKT_RK15hb_glyph_info_t.exit

bb.o:                                             ; preds = %bb.n
  %i.cp = load i8, ptr %i.j, align 1, !tbaa !1292, !range !380, !noundef !293
  %i.cq = trunc nuw i8 %i.cp to i1
  %i.cr = and i16 %.fr60, 287
  %i.cs = icmp ne i16 %i.cr, 257
  %or.cond55.not = or i1 %i.cs, %i.cq
  br i1 %or.cond55.not, label %bb.p, label %_ZNK2OT9matcher_t8may_skipINS_21hb_ot_apply_context_tEEENS0_10may_skip_tEPKT_RK15hb_glyph_info_t.exit

bb.p:                                             ; preds = %bb.o
  %i.ct = load i8, ptr %i.k, align 2, !tbaa !1293, !range !380, !noundef !293
  %i.cu = trunc nuw i8 %i.ct to i1
  %i.cv = and i16 %.fr60, 64
  %.not59 = icmp eq i16 %i.cv, 0
  %or.cond61 = or i1 %.not59, %i.cu
  %not.or.cond61 = xor i1 %or.cond61, true
  br label %_ZNK2OT9matcher_t8may_skipINS_21hb_ot_apply_context_tEEENS0_10may_skip_tEPKT_RK15hb_glyph_info_t.exit

_ZNK2OT9matcher_t8may_skipINS_21hb_ot_apply_context_tEEENS0_10may_skip_tEPKT_RK15hb_glyph_info_t.exit: ; preds = %bb.p, %bb.o, %bb.n, %_ZNK2OT21hb_ot_apply_context_t20check_glyph_propertyEPK15hb_glyph_info_tj.exit.thread34, %_ZL35_hb_glyph_info_is_default_ignorablePK15hb_glyph_info_t.exit
  %i.cw = phi i1 [ true, %_ZNK2OT21hb_ot_apply_context_t20check_glyph_propertyEPK15hb_glyph_info_tj.exit.thread34 ], [ %not.or.cond61, %bb.p ], [ true, %bb.o ], [ true, %bb.n ], [ true, %_ZL35_hb_glyph_info_is_default_ignorablePK15hb_glyph_info_t.exit ] ; 2 uses
  %i.cx = load ptr, ptr %i.l, align 8, !tbaa !1721 ; 3 uses
  %.not.i15 = icmp eq ptr %i.cx, null
  br i1 %.not.i15, label %_ZN2OT19skipping_iterator_tINS_21hb_ot_apply_context_tEE14get_glyph_dataEv.exit, label %bb.q

bb.q:                                             ; preds = %_ZNK2OT9matcher_t8may_skipINS_21hb_ot_apply_context_tEEENS0_10may_skip_tEPKT_RK15hb_glyph_info_t.exit
  %i.cy = load i16, ptr %i.cx, align 1, !tbaa !283
  %i.cz = tail call noundef i16 @llvm.bswap.i16(i16 %i.cy)
  %i.da = zext i16 %i.cz to i32
  br label %_ZN2OT19skipping_iterator_tINS_21hb_ot_apply_context_tEE14get_glyph_dataEv.exit

_ZN2OT19skipping_iterator_tINS_21hb_ot_apply_context_tEE14get_glyph_dataEv.exit: ; preds = %_ZNK2OT9matcher_t8may_skipINS_21hb_ot_apply_context_tEEENS0_10may_skip_tEPKT_RK15hb_glyph_info_t.exit, %bb.q
  %.0.i16 = phi i32 [ %i.da, %bb.q ], [ 0, %_ZNK2OT9matcher_t8may_skipINS_21hb_ot_apply_context_tEEENS0_10may_skip_tEPKT_RK15hb_glyph_info_t.exit ]
  %i.db = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !591
  %i.dd = load i32, ptr %i.m, align 4, !tbaa !1294
  %i.de = and i32 %i.dd, %i.dc
  %.not.i12 = icmp eq i32 %i.de, 0
  br i1 %.not.i12, label %_ZNK2OT9matcher_t9may_matchER15hb_glyph_info_tj.exit.thread.thread, label %bb.r

bb.r:                                             ; preds = %_ZN2OT19skipping_iterator_tINS_21hb_ot_apply_context_tEE14get_glyph_dataEv.exit
  %i.df = load i8, ptr %i.n, align 1, !tbaa !1295, !range !380, !noundef !293
  %i.dg = trunc nuw i8 %i.df to i1
  br i1 %i.dg, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.dh = load i8, ptr %i.o, align 4, !tbaa !1296 ; 2 uses
  %.not7.i = icmp eq i8 %i.dh, 0
  %i.di = getelementptr inbounds nuw i8, ptr %i.v, i64 15
  %i.dj = load i8, ptr %i.di, align 1
  %.not8.i = icmp eq i8 %i.dh, %i.dj
  %or.cond.i14 = select i1 %.not7.i, i1 true, i1 %.not8.i
  br i1 %or.cond.i14, label %bb.t, label %_ZNK2OT9matcher_t9may_matchER15hb_glyph_info_tj.exit.thread.thread

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.dk = load ptr, ptr %i.p, align 8, !tbaa !1722 ; 2 uses
  %.not9.i = icmp eq ptr %i.dk, null
  br i1 %.not9.i, label %_ZNK2OT9matcher_t9may_matchER15hb_glyph_info_tj.exit.thread, label %_ZNK2OT9matcher_t9may_matchER15hb_glyph_info_tj.exit

_ZNK2OT9matcher_t9may_matchER15hb_glyph_info_tj.exit: ; preds = %bb.t
  %i.dl = load ptr, ptr %i.q, align 8, !tbaa !1723
  %i.dm = tail call noundef zeroext i1 %i.dk(ptr noundef nonnull align 4 dereferenceable(20) %i.v, i32 noundef %.0.i16, ptr noundef %i.dl) #63, !inline_history !160
  br i1 %i.dm, label %_ZNK2OT9matcher_t9may_matchER15hb_glyph_info_tj.exit._ZN2OT19skipping_iterator_tINS_21hb_ot_apply_context_tEE5matchER15hb_glyph_info_t.exit.thread_crit_edge, label %_ZNK2OT9matcher_t9may_matchER15hb_glyph_info_tj.exit.thread.thread

_ZNK2OT9matcher_t9may_matchER15hb_glyph_info_tj.exit._ZN2OT19skipping_iterator_tINS_21hb_ot_apply_context_tEE5matchER15hb_glyph_info_t.exit.thread_crit_edge: ; preds = %_ZNK2OT9matcher_t9may_matchER15hb_glyph_info_tj.exit
  %.pre = load ptr, ptr %i.l, align 8, !tbaa !1721
  br label %_ZN2OT19skipping_iterator_tINS_21hb_ot_apply_context_tEE5matchER15hb_glyph_info_t.exit.thread

_ZNK2OT9matcher_t9may_matchER15hb_glyph_info_tj.exit.thread.thread: ; preds = %_ZNK2OT9matcher_t9may_matchER15hb_glyph_info_tj.exit, %bb.s, %_ZN2OT19skipping_iterator_tINS_21hb_ot_apply_context_tEE14get_glyph_dataEv.exit
  br i1 %i.cw, label %_ZN2OT19skipping_iterator_tINS_21hb_ot_apply_context_tEE5matchER15hb_glyph_info_t.exit.thread47, label %.critedge62.backedge

_ZNK2OT9matcher_t9may_matchER15hb_glyph_info_tj.exit.thread: ; preds = %bb.t
  br i1 %i.cw, label %_ZN2OT19skipping_iterator_tINS_21hb_ot_apply_context_tEE5matchER15hb_glyph_info_t.exit.thread, label %.critedge62.backedge

_ZN2OT19skipping_iterator_tINS_21hb_ot_apply_context_tEE5matchER15hb_glyph_info_t.exit.thread: ; preds = %_ZNK2OT9matcher_t9may_matchER15hb_glyph_info_tj.exit.thread, %_ZNK2OT9matcher_t9may_matchER15hb_glyph_info_tj.exit._ZN2OT19skipping_iterator_tINS_21hb_ot_apply_context_tEE5matchER15hb_glyph_info_t.exit.thread_crit_edge
  %i.dn = phi ptr [ %.pre, %_ZNK2OT9matcher_t9may_matchER15hb_glyph_info_tj.exit._ZN2OT19skipping_iterator_tINS_21hb_ot_apply_context_tEE5matchER15hb_glyph_info_t.exit.thread_crit_edge ], [ %i.cx, %_ZNK2OT9matcher_t9may_matchER15hb_glyph_info_tj.exit.thread ] ; 2 uses
  %.not.i = icmp eq ptr %i.dn, null
  br i1 %.not.i, label %_ZN2OT19skipping_iterator_tINS_21hb_ot_apply_context_tEE18advance_glyph_dataEv.exit, label %bb.u

bb.u:                                             ; preds = %_ZN2OT19skipping_iterator_tINS_21hb_ot_apply_context_tEE5matchER15hb_glyph_info_t.exit.thread
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 2
  store ptr %i.do, ptr %i.l, align 8, !tbaa !1721
  br label %_ZN2OT19skipping_iterator_tINS_21hb_ot_apply_context_tEE18advance_glyph_dataEv.exit

_ZN2OT19skipping_iterator_tINS_21hb_ot_apply_context_tEE5matchER15hb_glyph_info_t.exit.thread47: ; preds = %_ZNK2OT9matcher_t9may_matchER15hb_glyph_info_tj.exit.thread.thread
  %.not10 = icmp eq ptr %1, null
  br i1 %.not10, label %_ZN2OT19skipping_iterator_tINS_21hb_ot_apply_context_tEE18advance_glyph_dataEv.exit, label %bb.v

bb.v:                                             ; preds = %_ZN2OT19skipping_iterator_tINS_21hb_ot_apply_context_tEE5matchER15hb_glyph_info_t.exit.thread47
  %i.dp = load i32, ptr %0, align 8, !tbaa !324
  %i.dq = tail call i32 @llvm.usub.sat.i32(i32 %i.dp, i32 1)
  store i32 %i.dq, ptr %1, align 4, !tbaa !324
  br label %_ZN2OT19skipping_iterator_tINS_21hb_ot_apply_context_tEE18advance_glyph_dataEv.exit

.critedge62._crit_edge:                           ; preds = %.critedge62.backedge, %bb.a
  %.not9 = icmp eq ptr %1, null
  br i1 %.not9, label %_ZN2OT19skipping_iterator_tINS_21hb_ot_apply_context_tEE18advance_glyph_dataEv.exit, label %bb.w

bb.w:                                             ; preds = %.critedge62._crit_edge
  store i32 0, ptr %1, align 4, !tbaa !324
  br label %_ZN2OT19skipping_iterator_tINS_21hb_ot_apply_context_tEE18advance_glyph_dataEv.exit

_ZN2OT19skipping_iterator_tINS_21hb_ot_apply_context_tEE18advance_glyph_dataEv.exit: ; preds = %bb.u, %_ZN2OT19skipping_iterator_tINS_21hb_ot_apply_context_tEE5matchER15hb_glyph_info_t.exit.thread, %.critedge62._crit_edge, %bb.w, %_ZN2OT19skipping_iterator_tINS_21hb_ot_apply_context_tEE5matchER15hb_glyph_info_t.exit.thread47, %bb.v
  %.0 = phi i1 [ false, %.critedge62._crit_edge ], [ false, %_ZN2OT19skipping_iterator_tINS_21hb_ot_apply_context_tEE5matchER15hb_glyph_info_t.exit.thread47 ], [ false, %bb.v ], [ false, %bb.w ], [ true, %_ZN2OT19skipping_iterator_tINS_21hb_ot_apply_context_tEE5matchER15hb_glyph_info_t.exit.thread ], [ true, %bb.u ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2OT33hb_accelerate_subtables_context_t15hb_applicable_t4initINS_21ChainContextFormat2_5INS_6Layout10SmallTypesEEEEEvRKT_PFbPKvPNS_21hb_ot_apply_context_tEPvESG_PFbSD_NS_25hb_ot_subtable_cache_op_tEESE_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 1 dereferenceable(14) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !1838
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !1835
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %i.b, align 8, !tbaa !1836
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %4, ptr %i.c, align 8, !tbaa !1839
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %5, ptr %i.d, align 8, !tbaa !1404
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false), !tbaa !357
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.g = load i16, ptr %i.f, align 1, !tbaa !283  ; 2 uses
  %i.h = icmp eq i16 %i.g, 0
  %i.i = tail call i16 @llvm.bswap.i16(i16 %i.g)
  %i.j = zext i16 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %i.j
  %.0.i.i.i = select i1 %i.h, ptr @_hb_NullPool, ptr %i.k, !prof !267 ; 5 uses
  %i.l = load i16, ptr %.0.i.i.i, align 1, !tbaa !283
  %i.m = tail call noundef i16 @llvm.bswap.i16(i16 %i.l)
  switch i16 %i.m, label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit [
    i16 1, label %bb.b
    i16 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 2
  %i.o = load i16, ptr %i.n, align 1, !tbaa !283  ; 2 uses
  %i.p = tail call noundef i16 @llvm.bswap.i16(i16 %i.o)
  %.sroa.4.8.extract.trunc.i.i = zext i16 %i.p to i32
  %.not.i.i.i.i.i = icmp eq i16 %i.o, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4
  %.promoted.i.i.i.i.i = load i64, ptr %i.e, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.promoted9.i.i.i.i.i = load i64, ptr %i.r, align 8, !tbaa !357
  %.promoted11.i.i.i.i.i = load i64, ptr %i.s, align 8, !tbaa !357
  br label %bb.c

._crit_edge.i.i.i.i.i:                            ; preds = %bb.c
  store i64 %i.ad, ptr %i.e, align 8, !tbaa !357
  store i64 %i.ah, ptr %i.r, align 8, !tbaa !357
  store i64 %i.am, ptr %i.s, align 8, !tbaa !357
  br label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %i.t = phi i64 [ %.promoted11.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.am, %bb.c ]
  %i.u = phi i64 [ %.promoted9.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.ah, %bb.c ]
  %.08.i.i.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i.i.i ], [ %i.ao, %bb.c ]
  %.067.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i ], [ %i.an, %bb.c ] ; 2 uses
  %i.v = phi i64 [ %.promoted.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.ad, %bb.c ]
  %i.w = load i16, ptr %.067.i.i.i.i.i, align 1, !tbaa !283
  %i.x = tail call noundef i16 @llvm.bswap.i16(i16 %i.w)
  %i.y = zext i16 %i.x to i32                     ; 3 uses
  %i.z = lshr i32 %i.y, 4
  %i.aa = and i32 %i.z, 63
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = shl nuw i64 1, %i.ab
  %i.ad = or i64 %i.ac, %i.v                      ; 2 uses
  %i.ae = and i32 %i.y, 63
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = shl nuw i64 1, %i.af
  %i.ah = or i64 %i.ag, %i.u                      ; 2 uses
  %i.ai = lshr i32 %i.y, 6
  %i.aj = and i32 %i.ai, 63
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = shl nuw i64 1, %i.ak
  %i.am = or i64 %i.al, %i.t                      ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.067.i.i.i.i.i, i64 2
  %i.ao = add nuw i32 %.08.i.i.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i32 %i.ao, %.sroa.4.8.extract.trunc.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %bb.c, !llvm.loop !162

bb.d:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 2
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4 ; 2 uses
  %i.ar = load i16, ptr %i.ap, align 1, !tbaa !283 ; 2 uses
  %i.as = tail call noundef i16 @llvm.bswap.i16(i16 %i.ar)
  %i.at = zext i16 %i.as to i64
  %.idx.i.i = mul nuw nsw i64 %i.at, 6
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.idx.i.i
  %.not14.i.i = icmp eq i16 %i.ar, 0
  br i1 %.not14.i.i, label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %.01115.i.i = phi ptr [ %i.aw, %.lr.ph.i.i ], [ %i.aq, %bb.d ] ; 2 uses
  %i.av = tail call noundef zeroext i1 @_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI15hb_set_digest_tEEbPT_(ptr noundef nonnull align 1 dereferenceable(6) %.01115.i.i, ptr noundef nonnull %i.e)
  %i.aw = getelementptr inbounds nuw i8, ptr %.01115.i.i, i64 6 ; 2 uses
  %.not.i.i = icmp ne ptr %i.aw, %i.au
  %or.cond.not = select i1 %i.av, i1 %.not.i.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i.i, label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit

_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit: ; preds = %.lr.ph.i.i, %bb.a, %bb.b, %._crit_edge.i.i.i.i.i, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT33hb_accelerate_subtables_context_t8apply_toINS_21ChainContextFormat2_5INS_6Layout10SmallTypesEEEEEbPKvPNS_21hb_ot_apply_context_tEPv(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16 comdat align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK2OT21ChainContextFormat2_5INS_6Layout10SmallTypesEE6_applyEPNS_21hb_ot_apply_context_tEbPv(ptr noundef nonnull align 1 dereferenceable(14) %0, ptr noundef %1, i1 noundef zeroext false, ptr noundef %2)
  ret i1 %i.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT33hb_accelerate_subtables_context_t15apply_cached_toINS_21ChainContextFormat2_5INS_6Layout10SmallTypesEEEEEbPKvPNS_21hb_ot_apply_context_tEPv(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16 comdat align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK2OT21ChainContextFormat2_5INS_6Layout10SmallTypesEE6_applyEPNS_21hb_ot_apply_context_tEbPv(ptr noundef nonnull align 1 dereferenceable(14) %0, ptr noundef %1, i1 noundef zeroext true, ptr noundef %2)
  ret i1 %i.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT33hb_accelerate_subtables_context_t13cache_func_toINS_21ChainContextFormat2_5INS_6Layout10SmallTypesEEEEEbPNS_21hb_ot_apply_context_tENS_25hb_ot_subtable_cache_op_tE(ptr noundef %0, i32 noundef %1) #16 comdat align 2 {
bb.a:
  switch i32 %1, label %_ZN2OT33hb_accelerate_subtables_context_t11cache_func_INS_21ChainContextFormat2_5INS_6Layout10SmallTypesEEEEEN10_hb_head_tIbJDTclsrT_10cache_funcfp_fp0_EEEE4typeEPNS_21hb_ot_apply_context_tENS_25hb_ot_subtable_cache_op_tE11hb_priorityILj1EE.exit [
    i32 0, label %bb.b
    i32 1, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1278 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 208 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !654   ; 2 uses
  %i.e = and i8 %i.d, 8
  %.not.i.i.i.i = icmp eq i8 %i.e, 0
  br i1 %.not.i.i.i.i, label %bb.c, label %_ZN2OT33hb_accelerate_subtables_context_t11cache_func_INS_21ChainContextFormat2_5INS_6Layout10SmallTypesEEEEEN10_hb_head_tIbJDTclsrT_10cache_funcfp_fp0_EEEE4typeEPNS_21hb_ot_apply_context_tENS_25hb_ot_subtable_cache_op_tE11hb_priorityILj1EE.exit

bb.c:                                             ; preds = %bb.b
  %i.f = or disjoint i8 %i.d, 8
  store i8 %i.f, ptr %i.c, align 8, !tbaa !654
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.i = load i32, ptr %i.h, align 8, !tbaa !607  ; 3 uses
  %.not.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.c
  %wide.trip.count.i.i.i = zext i32 %i.i to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 3 uses
  %i.j = icmp ult i32 %i.i, 4
  br i1 %i.j, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.preheader.i.i.i.new

.lr.ph.preheader.i.i.i.new:                       ; preds = %.lr.ph.preheader.i.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 4294967292
  br label %.lr.ph.i.i.i

._crit_edge.i.i.i.loopexit.unr-lcssa:             ; preds = %.lr.ph.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %._crit_edge.i.i.i.loopexit.unr-lcssa, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i.3, %._crit_edge.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod1 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod1)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %indvars.iv.i.i.i.epil = phi i64 [ %indvars.iv.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ], [ %indvars.iv.next.i.i.i.epil, %.lr.ph.i.i.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.i.epil ]
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !662
  %i.l = getelementptr inbounds nuw [20 x i8], ptr %i.k, i64 %indvars.iv.i.i.i.epil
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 15
  store i8 -1, ptr %i.m, align 1, !tbaa !280
  %indvars.iv.next.i.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !4531

._crit_edge.i.i.i:                                ; preds = %._crit_edge.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 308
  store i32 255, ptr %i.n, align 4, !tbaa !1719
  br label %_ZN2OT33hb_accelerate_subtables_context_t11cache_func_INS_21ChainContextFormat2_5INS_6Layout10SmallTypesEEEEEN10_hb_head_tIbJDTclsrT_10cache_funcfp_fp0_EEEE4typeEPNS_21hb_ot_apply_context_tENS_25hb_ot_subtable_cache_op_tE11hb_priorityILj1EE.exit

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i.new ], [ %indvars.iv.next.i.i.i.3, %.lr.ph.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i.i.new ], [ %niter.next.3, %.lr.ph.i.i.i ]
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !662
  %i.p = getelementptr inbounds nuw [20 x i8], ptr %i.o, i64 %indvars.iv.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 15
  store i8 -1, ptr %i.q, align 1, !tbaa !280
  %i.r = load ptr, ptr %i.g, align 8, !tbaa !662
  %i.s = getelementptr inbounds nuw [20 x i8], ptr %i.r, i64 %indvars.iv.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 35
  store i8 -1, ptr %i.t, align 1, !tbaa !280
  %i.u = load ptr, ptr %i.g, align 8, !tbaa !662
  %i.v = getelementptr inbounds nuw [20 x i8], ptr %i.u, i64 %indvars.iv.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 55
  store i8 -1, ptr %i.w, align 1, !tbaa !280
  %i.x = load ptr, ptr %i.g, align 8, !tbaa !662
  %i.y = getelementptr inbounds nuw [20 x i8], ptr %i.x, i64 %indvars.iv.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 75
  store i8 -1, ptr %i.z, align 1, !tbaa !280
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i, !llvm.loop !182

bb.d:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 308
  store i32 -1, ptr %i.aa, align 4, !tbaa !1719
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1278
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 208 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !654
  %i.af = and i8 %i.ae, -9
  store i8 %i.af, ptr %i.ad, align 8, !tbaa !654
  br label %_ZN2OT33hb_accelerate_subtables_context_t11cache_func_INS_21ChainContextFormat2_5INS_6Layout10SmallTypesEEEEEN10_hb_head_tIbJDTclsrT_10cache_funcfp_fp0_EEEE4typeEPNS_21hb_ot_apply_context_tENS_25hb_ot_subtable_cache_op_tE11hb_priorityILj1EE.exit

_ZN2OT33hb_accelerate_subtables_context_t11cache_func_INS_21ChainContextFormat2_5INS_6Layout10SmallTypesEEEEEN10_hb_head_tIbJDTclsrT_10cache_funcfp_fp0_EEEE4typeEPNS_21hb_ot_apply_context_tENS_25hb_ot_subtable_cache_op_tE11hb_priorityILj1EE.exit: ; preds = %bb.a, %bb.b, %._crit_edge.i.i.i, %bb.d
  %.012.i.i.i = phi i1 [ false, %bb.a ], [ true, %._crit_edge.i.i.i ], [ false, %bb.d ], [ false, %bb.b ]
  ret i1 %.012.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2OT21ChainContextFormat2_5INS_6Layout10SmallTypesEE6_applyEPNS_21hb_ot_apply_context_tEbPv(ptr noundef nonnull align 1 dereferenceable(14) %0, ptr noundef %1, i1 noundef zeroext %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"struct.OT::ChainContextApplyLookupContext", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.b = load i16, ptr %i.a, align 1, !tbaa !283  ; 2 uses
  %i.c = icmp eq i16 %i.b, 0
  %i.d = tail call i16 @llvm.bswap.i16(i16 %i.b)
  %i.e = zext i16 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %i.e
  %.0.i.i = select i1 %i.c, ptr @_hb_NullPool, ptr %i.f, !prof !267 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1278 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !589
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 92
  %i.l = load i32, ptr %i.k, align 4, !tbaa !653
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [20 x i8], ptr %i.j, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !637  ; 5 uses
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %.critedge.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = and i32 %i.o, 255
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 %i.q ; 3 uses
  %i.s = load atomic i8, ptr %i.r monotonic, align 1 ; 2 uses
  %i.t = lshr i8 %i.s, 1
  %i.u = zext nneg i8 %i.t to i32
  %i.v = lshr i32 %i.o, 8
  %.not.i.i = icmp eq i32 %i.v, %i.u
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.w = and i8 %i.s, 1
  %i.x = zext nneg i8 %i.w to i32
  %i.y = sub nsw i32 0, %i.x
  br label %_ZNK2OT6Layout6Common8Coverage19get_coverage_binaryEjP10hb_cache_tILj14ELj1ELj8ELb1EE.exit

bb.d:                                             ; preds = %bb.b
  %i.z = tail call noundef i32 @_ZNK2OT6Layout6Common8Coverage12get_coverageEj(ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i, i32 noundef %i.o)
  %i.aa = icmp eq i32 %i.z, -1
  %i.ab = lshr i32 %i.o, 7
  %i.ac = trunc i32 %i.ab to i8                   ; 2 uses
  br i1 %i.aa, label %_ZNK2OT6Layout6Common8Coverage19get_coverage_binaryEjP10hb_cache_tILj14ELj1ELj8ELb1EE.exit.thread, label %_ZNK2OT6Layout6Common8Coverage19get_coverage_binaryEjP10hb_cache_tILj14ELj1ELj8ELb1EE.exit.thread38

_ZNK2OT6Layout6Common8Coverage19get_coverage_binaryEjP10hb_cache_tILj14ELj1ELj8ELb1EE.exit.thread: ; preds = %bb.d
  %i.ad = or i8 %i.ac, 1
  store atomic i8 %i.ad, ptr %i.r monotonic, align 1
  br label %bb.u

_ZNK2OT6Layout6Common8Coverage19get_coverage_binaryEjP10hb_cache_tILj14ELj1ELj8ELb1EE.exit.thread38: ; preds = %bb.d
  %i.ae = and i8 %i.ac, -2
  store atomic i8 %i.ae, ptr %i.r monotonic, align 1
  br label %bb.e
end_hunk_9
begin_hunk_10_@_ZN2OTL19match_class_cached2ER15hb_glyph_info_tjPKv:bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.j = load i16, ptr %i.i, align 1, !tbaa !283
  %i.k = tail call noundef i16 @llvm.bswap.i16(i16 %i.j)
  %i.l = zext i16 %i.k to i32
  %i.m = sub i32 %i.e, %i.l                       ; 2 uses
  %i.n = load i16, ptr %i.h, align 1, !tbaa !283
  %i.o = tail call noundef i16 @llvm.bswap.i16(i16 %i.n)
  %i.p = zext i16 %i.o to i32
  %.not.i.i.i.i = icmp ult i32 %i.m, %i.p
  br i1 %.not.i.i.i.i, label %bb.e, label %_ZNK2OT8ClassDef9get_classEj.exit.i, !prof !268

bb.e:                                             ; preds = %bb.d
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.r = zext nneg i32 %i.m to i64
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.r
  br label %_ZNK2OT8ClassDef9get_classEj.exit.i

bb.f:                                             ; preds = %bb.c
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.v = load i16, ptr %i.t, align 1, !tbaa !283  ; 2 uses
  %.not1.i.i.i.i.not.i.i.i.i = icmp eq i16 %i.v, 0
  br i1 %.not1.i.i.i.i.not.i.i.i.i, label %_ZNK2OT17ClassDefFormat2_4INS_6Layout10SmallTypesEE9get_classEj.exit.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i:                 ; preds = %bb.f
  %i.w = tail call noundef i16 @llvm.bswap.i16(i16 %i.v)
  %.sroa.4.8.extract.trunc.i.i.i.i = zext i16 %i.w to i32
  %i.x = add nsw i32 %.sroa.4.8.extract.trunc.i.i.i.i, -1
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.h, %.lr.ph.preheader.i.i.i.i.i.i.i.i
  %.0203.i.i.i.i.i.i.i.i = phi i32 [ %.2.i.i.i.i.i.i.i.i, %bb.h ], [ %i.x, %.lr.ph.preheader.i.i.i.i.i.i.i.i ] ; 2 uses
  %.0212.i.i.i.i.i.i.i.i = phi i32 [ %.223.i.i.i.i.i.i.i.i, %bb.h ], [ 0, %.lr.ph.preheader.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.y = add i32 %.0212.i.i.i.i.i.i.i.i, %.0203.i.i.i.i.i.i.i.i
  %i.z = lshr i32 %i.y, 1                         ; 3 uses
  %i.aa = zext nneg i32 %i.z to i64               ; 2 uses
  %i.ab = mul nuw nsw i64 %i.aa, 6
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.ab ; 2 uses
  %i.ad = load i16, ptr %i.ac, align 1, !tbaa !283
  %i.ae = tail call noundef i16 @llvm.bswap.i16(i16 %i.ad)
  %i.af = zext i16 %i.ae to i32
  %i.ag = icmp ult i32 %i.e, %i.af
  br i1 %i.ag, label %_ZL14_hb_cmp_methodIjKN2OT6Layout6Common11RangeRecordINS1_10SmallTypesEEEJEEiPKvS8_DpT1_.exit.thread.i.i.i.i.i.i.i.i, label %_ZL14_hb_cmp_methodIjKN2OT6Layout6Common11RangeRecordINS1_10SmallTypesEEEJEEiPKvS8_DpT1_.exit.i.i.i.i.i.i.i.i

_ZL14_hb_cmp_methodIjKN2OT6Layout6Common11RangeRecordINS1_10SmallTypesEEEJEEiPKvS8_DpT1_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 2
  %i.ai = load i16, ptr %i.ah, align 1, !tbaa !283
  %i.aj = tail call noundef i16 @llvm.bswap.i16(i16 %i.ai)
  %i.ak = zext i16 %i.aj to i32
  %.not.i.i.not.i.i.i.i.i.i.i.i = icmp ugt i32 %i.e, %i.ak
  br i1 %.not.i.i.not.i.i.i.i.i.i.i.i, label %bb.g, label %_ZNK17hb_sorted_array_tIKN2OT6Layout6Common11RangeRecordINS1_10SmallTypesEEEE5bfindIjEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i

_ZL14_hb_cmp_methodIjKN2OT6Layout6Common11RangeRecordINS1_10SmallTypesEEEJEEiPKvS8_DpT1_.exit.thread.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.al = add nsw i32 %i.z, -1
  br label %bb.h

bb.g:                                             ; preds = %_ZL14_hb_cmp_methodIjKN2OT6Layout6Common11RangeRecordINS1_10SmallTypesEEEJEEiPKvS8_DpT1_.exit.i.i.i.i.i.i.i.i
  %i.am = add nuw nsw i32 %i.z, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZL14_hb_cmp_methodIjKN2OT6Layout6Common11RangeRecordINS1_10SmallTypesEEEJEEiPKvS8_DpT1_.exit.thread.i.i.i.i.i.i.i.i
  %.223.i.i.i.i.i.i.i.i = phi i32 [ %i.am, %bb.g ], [ %.0212.i.i.i.i.i.i.i.i, %_ZL14_hb_cmp_methodIjKN2OT6Layout6Common11RangeRecordINS1_10SmallTypesEEEJEEiPKvS8_DpT1_.exit.thread.i.i.i.i.i.i.i.i ] ; 2 uses
  %.2.i.i.i.i.i.i.i.i = phi i32 [ %.0203.i.i.i.i.i.i.i.i, %bb.g ], [ %i.al, %_ZL14_hb_cmp_methodIjKN2OT6Layout6Common11RangeRecordINS1_10SmallTypesEEEJEEiPKvS8_DpT1_.exit.thread.i.i.i.i.i.i.i.i ] ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i = icmp sgt i32 %.223.i.i.i.i.i.i.i.i, %.2.i.i.i.i.i.i.i.i
  br i1 %.not.not.i.i.i.i.i.i.i.i, label %_ZNK2OT17ClassDefFormat2_4INS_6Layout10SmallTypesEE9get_classEj.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !4

_ZNK17hb_sorted_array_tIKN2OT6Layout6Common11RangeRecordINS1_10SmallTypesEEEE5bfindIjEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i: ; preds = %_ZL14_hb_cmp_methodIjKN2OT6Layout6Common11RangeRecordINS1_10SmallTypesEEEJEEiPKvS8_DpT1_.exit.i.i.i.i.i.i.i.i
  %i.an = getelementptr inbounds nuw [6 x i8], ptr %i.u, i64 %i.aa
  br label %_ZNK2OT17ClassDefFormat2_4INS_6Layout10SmallTypesEE9get_classEj.exit.i.i

_ZNK2OT17ClassDefFormat2_4INS_6Layout10SmallTypesEE9get_classEj.exit.i.i: ; preds = %bb.h, %_ZNK17hb_sorted_array_tIKN2OT6Layout6Common11RangeRecordINS1_10SmallTypesEEEE5bfindIjEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i, %bb.f
  %i.ao = phi ptr [ %i.an, %_ZNK17hb_sorted_array_tIKN2OT6Layout6Common11RangeRecordINS1_10SmallTypesEEEE5bfindIjEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i ], [ @_hb_Null_OT_RangeRecord, %bb.f ], [ @_hb_Null_OT_RangeRecord, %bb.h ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  br label %_ZNK2OT8ClassDef9get_classEj.exit.i

_ZNK2OT8ClassDef9get_classEj.exit.i:              ; preds = %bb.d, %bb.e, %_ZNK2OT17ClassDefFormat2_4INS_6Layout10SmallTypesEE9get_classEj.exit.i.i
  %.sink.in.i = phi ptr [ %i.ap, %_ZNK2OT17ClassDefFormat2_4INS_6Layout10SmallTypesEE9get_classEj.exit.i.i ], [ %i.s, %bb.e ], [ @_hb_NullPool, %bb.d ]
  %.sink.i = load i16, ptr %.sink.in.i, align 1, !tbaa !283
  %i.aq = tail call noundef i16 @llvm.bswap.i16(i16 %.sink.i) ; 2 uses
  %.0.i.i = zext i16 %i.aq to i32                 ; 2 uses
  %i.ar = icmp ult i16 %i.aq, 15
  br i1 %i.ar, label %_ZNK2OT8ClassDef9get_classEj.exit._ZNK2OT8ClassDef9get_classEj.exit.thread_crit_edge.i, label %_ZN2OTL17get_class_cached2ERKNS_8ClassDefER15hb_glyph_info_t.exit, !prof !1851

_ZNK2OT8ClassDef9get_classEj.exit._ZNK2OT8ClassDef9get_classEj.exit.thread_crit_edge.i: ; preds = %_ZNK2OT8ClassDef9get_classEj.exit.i
  %.pre.i = load i8, ptr %i.a, align 1, !tbaa !280
  br label %_ZNK2OT8ClassDef9get_classEj.exit.thread.i

_ZNK2OT8ClassDef9get_classEj.exit.thread.i:       ; preds = %_ZNK2OT8ClassDef9get_classEj.exit._ZNK2OT8ClassDef9get_classEj.exit.thread_crit_edge.i, %bb.c
  %i.as = phi i8 [ %.pre.i, %_ZNK2OT8ClassDef9get_classEj.exit._ZNK2OT8ClassDef9get_classEj.exit.thread_crit_edge.i ], [ %i.b, %bb.c ]
  %.0.i14.i = phi i32 [ %.0.i.i, %_ZNK2OT8ClassDef9get_classEj.exit._ZNK2OT8ClassDef9get_classEj.exit.thread_crit_edge.i ], [ 0, %bb.c ] ; 2 uses
  %i.at = and i8 %i.as, 15
  %.tr.i = trunc nuw nsw i32 %.0.i14.i to i8
  %i.au = shl nuw i8 %.tr.i, 4
  %i.av = or disjoint i8 %i.au, %i.at
  store i8 %i.av, ptr %i.a, align 1, !tbaa !280
  br label %_ZN2OTL17get_class_cached2ERKNS_8ClassDefER15hb_glyph_info_t.exit

_ZN2OTL17get_class_cached2ERKNS_8ClassDefER15hb_glyph_info_t.exit: ; preds = %bb.b, %_ZNK2OT8ClassDef9get_classEj.exit.i, %_ZNK2OT8ClassDef9get_classEj.exit.thread.i
  %.0.i = phi i32 [ %i.d, %bb.b ], [ %.0.i14.i, %_ZNK2OT8ClassDef9get_classEj.exit.thread.i ], [ %.0.i.i, %_ZNK2OT8ClassDef9get_classEj.exit.i ]
  %i.aw = icmp eq i32 %.0.i, %1
  ret i1 %i.aw
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2OT33hb_accelerate_subtables_context_t15hb_applicable_t4initINS_19ChainContextFormat3EEEvRKT_PFbPKvPNS_21hb_ot_apply_context_tEPvESD_PFbSA_NS_25hb_ot_subtable_cache_op_tEESB_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 1 dereferenceable(20) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !1838
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !1835
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %i.b, align 8, !tbaa !1836
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %4, ptr %i.c, align 8, !tbaa !1839
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %5, ptr %i.d, align 8, !tbaa !1404
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false), !tbaa !357
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.g = load i16, ptr %i.f, align 1, !tbaa !283
  %i.h = tail call noundef i16 @llvm.bswap.i16(i16 %i.g)
  %i.i = zext i16 %i.h to i64
  %i.j = shl nuw nsw i64 %i.i, 1
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.j ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  %i.m = load i16, ptr %i.l, align 1, !tbaa !283
  %.not.i.not.i = icmp eq i16 %i.m, 0
  br i1 %.not.i.not.i, label %_ZNK2OT19ChainContextFormat312get_coverageEv.exit, label %bb.b, !prof !267

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  br label %_ZNK2OT19ChainContextFormat312get_coverageEv.exit

_ZNK2OT19ChainContextFormat312get_coverageEv.exit: ; preds = %bb.a, %bb.b
  %.0.i.i = phi ptr [ %i.n, %bb.b ], [ @_hb_NullPool, %bb.a ]
  %i.o = load i16, ptr %.0.i.i, align 1, !tbaa !283 ; 2 uses
  %i.p = icmp eq i16 %i.o, 0
  %i.q = tail call i16 @llvm.bswap.i16(i16 %i.o)
  %i.r = zext i16 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %i.r
  %.0.i.i.i = select i1 %i.p, ptr @_hb_NullPool, ptr %i.s, !prof !267 ; 5 uses
  %i.t = load i16, ptr %.0.i.i.i, align 1, !tbaa !283
  %i.u = tail call noundef i16 @llvm.bswap.i16(i16 %i.t)
  switch i16 %i.u, label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit [
    i16 1, label %bb.c
    i16 2, label %bb.e
  ]

bb.c:                                             ; preds = %_ZNK2OT19ChainContextFormat312get_coverageEv.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 2
  %i.w = load i16, ptr %i.v, align 1, !tbaa !283  ; 2 uses
  %i.x = tail call noundef i16 @llvm.bswap.i16(i16 %i.w)
  %.sroa.4.8.extract.trunc.i.i = zext i16 %i.x to i32
  %.not.i.i.i.i.i = icmp eq i16 %i.w, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4
  %.promoted.i.i.i.i.i = load i64, ptr %i.e, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.promoted9.i.i.i.i.i = load i64, ptr %i.z, align 8, !tbaa !357
  %.promoted11.i.i.i.i.i = load i64, ptr %i.aa, align 8, !tbaa !357
  br label %bb.d

._crit_edge.i.i.i.i.i:                            ; preds = %bb.d
  store i64 %i.al, ptr %i.e, align 8, !tbaa !357
  store i64 %i.ap, ptr %i.z, align 8, !tbaa !357
  store i64 %i.au, ptr %i.aa, align 8, !tbaa !357
  br label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %i.ab = phi i64 [ %.promoted11.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.au, %bb.d ]
  %i.ac = phi i64 [ %.promoted9.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.ap, %bb.d ]
  %.08.i.i.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i.i.i ], [ %i.aw, %bb.d ]
  %.067.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i ], [ %i.av, %bb.d ] ; 2 uses
  %i.ad = phi i64 [ %.promoted.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.al, %bb.d ]
  %i.ae = load i16, ptr %.067.i.i.i.i.i, align 1, !tbaa !283
  %i.af = tail call noundef i16 @llvm.bswap.i16(i16 %i.ae)
  %i.ag = zext i16 %i.af to i32                   ; 3 uses
  %i.ah = lshr i32 %i.ag, 4
  %i.ai = and i32 %i.ah, 63
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = shl nuw i64 1, %i.aj
  %i.al = or i64 %i.ak, %i.ad                     ; 2 uses
  %i.am = and i32 %i.ag, 63
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = shl nuw i64 1, %i.an
  %i.ap = or i64 %i.ao, %i.ac                     ; 2 uses
  %i.aq = lshr i32 %i.ag, 6
  %i.ar = and i32 %i.aq, 63
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = shl nuw i64 1, %i.as
  %i.au = or i64 %i.at, %i.ab                     ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.067.i.i.i.i.i, i64 2
  %i.aw = add nuw i32 %.08.i.i.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i32 %i.aw, %.sroa.4.8.extract.trunc.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %bb.d, !llvm.loop !162

bb.e:                                             ; preds = %_ZNK2OT19ChainContextFormat312get_coverageEv.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 2
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4 ; 2 uses
  %i.az = load i16, ptr %i.ax, align 1, !tbaa !283 ; 2 uses
  %i.ba = tail call noundef i16 @llvm.bswap.i16(i16 %i.az)
  %i.bb = zext i16 %i.ba to i64
  %.idx.i.i = mul nuw nsw i64 %i.bb, 6
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.idx.i.i
  %.not14.i.i = icmp eq i16 %i.az, 0
  br i1 %.not14.i.i, label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %.lr.ph.i.i
  %.01115.i.i = phi ptr [ %i.be, %.lr.ph.i.i ], [ %i.ay, %bb.e ] ; 2 uses
  %i.bd = tail call noundef zeroext i1 @_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI15hb_set_digest_tEEbPT_(ptr noundef nonnull align 1 dereferenceable(6) %.01115.i.i, ptr noundef nonnull %i.e)
  %i.be = getelementptr inbounds nuw i8, ptr %.01115.i.i, i64 6 ; 2 uses
  %.not.i.i = icmp ne ptr %i.be, %i.bc
  %or.cond.not = select i1 %i.bd, i1 %.not.i.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i.i, label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit

_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit: ; preds = %.lr.ph.i.i, %_ZNK2OT19ChainContextFormat312get_coverageEv.exit, %bb.c, %._crit_edge.i.i.i.i.i, %bb.e
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT33hb_accelerate_subtables_context_t8apply_toINS_19ChainContextFormat3EEEbPKvPNS_21hb_ot_apply_context_tEPv(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16 comdat align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK2OT19ChainContextFormat35applyEPNS_21hb_ot_apply_context_tE(ptr noundef nonnull align 1 dereferenceable(20) %0, ptr noundef %1)
  ret i1 %i.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT33hb_accelerate_subtables_context_t15apply_cached_toINS_19ChainContextFormat3EEEbPKvPNS_21hb_ot_apply_context_tEPv(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16 comdat align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK2OT19ChainContextFormat35applyEPNS_21hb_ot_apply_context_tE(ptr noundef nonnull align 1 dereferenceable(20) %0, ptr noundef %1)
  ret i1 %i.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT33hb_accelerate_subtables_context_t13cache_func_toINS_19ChainContextFormat3EEEbPNS_21hb_ot_apply_context_tENS_25hb_ot_subtable_cache_op_tE(ptr noundef %0, i32 noundef %1) #16 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2OT19ChainContextFormat35applyEPNS_21hb_ot_apply_context_tE(ptr noundef nonnull align 1 dereferenceable(20) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"struct.OT::ChainContextApplyLookupContext", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 3 uses
  %i.b = load i16, ptr %i.a, align 1, !tbaa !283
  %i.c = tail call noundef i16 @llvm.bswap.i16(i16 %i.b)
  %i.d = zext i16 %i.c to i64
  %i.e = shl nuw nsw i64 %i.d, 1
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.e ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 2 ; 3 uses
  %i.h = load i16, ptr %i.g, align 1, !tbaa !283
  %.not.i.not = icmp eq i16 %i.h, 0
  br i1 %.not.i.not, label %_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EEES6_EixEi.exit, label %bb.b, !prof !267

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  br label %_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EEES6_EixEi.exit

_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EEES6_EixEi.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.i, %bb.b ], [ @_hb_NullPool, %bb.a ]
  %i.j = load i16, ptr %.0.i, align 1, !tbaa !283 ; 2 uses
  %i.k = icmp eq i16 %i.j, 0
  %i.l = tail call i16 @llvm.bswap.i16(i16 %i.j)
  %i.m = zext i16 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %i.m
  %.0.i.i = select i1 %i.k, ptr @_hb_NullPool, ptr %i.n, !prof !267
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1278 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 112
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !589
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 92
  %i.t = load i32, ptr %i.s, align 4, !tbaa !653
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [20 x i8], ptr %i.r, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !637
  %i.x = tail call noundef i32 @_ZNK2OT6Layout6Common8Coverage12get_coverageEj(ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i, i32 noundef %i.w)
  %i.y = icmp eq i32 %i.x, -1
  br i1 %i.y, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EEES6_EixEi.exit
  %i.z = load i16, ptr %i.g, align 1, !tbaa !283
  %i.aa = tail call noundef i16 @llvm.bswap.i16(i16 %i.z) ; 2 uses
  %i.ab = zext i16 %i.aa to i64
  %i.ac = shl nuw nsw i64 %i.ab, 1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ac ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 2 ; 2 uses
  %i.af = load i16, ptr %i.ae, align 1, !tbaa !283
  %i.ag = tail call noundef i16 @llvm.bswap.i16(i16 %i.af) ; 2 uses
  %i.ah = zext i16 %i.ag to i64
  %i.ai = shl nuw nsw i64 %i.ah, 1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ai ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) @constinit.119, i64 24, i1 false), !tbaa.struct !4532
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %0, ptr %i.al, align 8, !tbaa !330
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %0, ptr %i.am, align 8, !tbaa !330
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %0, ptr %i.an, align 8, !tbaa !330
  %i.ao = load i16, ptr %i.a, align 1, !tbaa !283
  %i.ap = tail call noundef i16 @llvm.bswap.i16(i16 %i.ao)
  %i.aq = zext i16 %i.ap to i32
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.as = zext i16 %i.aa to i32
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 6
  %i.au = zext i16 %i.ag to i32
  %i.av = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.aw = load i16, ptr %i.ak, align 1, !tbaa !283
  %i.ax = tail call noundef i16 @llvm.bswap.i16(i16 %i.aw)
  %i.ay = zext i16 %i.ax to i32
  %i.az = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.ba = call fastcc noundef zeroext i1 @_ZN2OTL26chain_context_apply_lookupINS_7NumTypeILb1EtLj2EEEEEbPNS_21hb_ot_apply_context_tEjPKT_jS7_jS7_jPKNS_12LookupRecordERKNS_30ChainContextApplyLookupContextE(ptr noundef nonnull %1, i32 noundef %i.aq, ptr noundef %i.ar, i32 noundef %i.as, ptr noundef %i.at, i32 noundef %i.au, ptr noundef %i.av, i32 noundef %i.ay, ptr noundef %i.az, ptr noundef nonnull align 8 dereferenceable(48) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #63
  br label %bb.d

bb.d:                                             ; preds = %_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EEES6_EixEi.exit, %bb.c
  %.0 = phi i1 [ %i.ba, %bb.c ], [ false, %_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EEES6_EixEi.exit ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2OT33hb_accelerate_subtables_context_t15hb_applicable_t4initINS_6Layout9GSUB_impl30ReverseChainSingleSubstFormat1EEEvRKT_PFbPKvPNS_21hb_ot_apply_context_tEPvESF_PFbSC_NS_25hb_ot_subtable_cache_op_tEESD_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 1 dereferenceable(16) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !1838
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !1835
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %i.b, align 8, !tbaa !1836
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %4, ptr %i.c, align 8, !tbaa !1839
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %5, ptr %i.d, align 8, !tbaa !1404
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false), !tbaa !357
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.g = load i16, ptr %i.f, align 1, !tbaa !283  ; 2 uses
  %i.h = icmp eq i16 %i.g, 0
  %i.i = tail call i16 @llvm.bswap.i16(i16 %i.g)
  %i.j = zext i16 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %i.j
  %.0.i.i.i = select i1 %i.h, ptr @_hb_NullPool, ptr %i.k, !prof !267 ; 5 uses
  %i.l = load i16, ptr %.0.i.i.i, align 1, !tbaa !283
  %i.m = tail call noundef i16 @llvm.bswap.i16(i16 %i.l)
  switch i16 %i.m, label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit [
    i16 1, label %bb.b
    i16 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 2
  %i.o = load i16, ptr %i.n, align 1, !tbaa !283  ; 2 uses
  %i.p = tail call noundef i16 @llvm.bswap.i16(i16 %i.o)
  %.sroa.4.8.extract.trunc.i.i = zext i16 %i.p to i32
  %.not.i.i.i.i.i = icmp eq i16 %i.o, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4
  %.promoted.i.i.i.i.i = load i64, ptr %i.e, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.promoted9.i.i.i.i.i = load i64, ptr %i.r, align 8, !tbaa !357
  %.promoted11.i.i.i.i.i = load i64, ptr %i.s, align 8, !tbaa !357
  br label %bb.c

._crit_edge.i.i.i.i.i:                            ; preds = %bb.c
  store i64 %i.ad, ptr %i.e, align 8, !tbaa !357
  store i64 %i.ah, ptr %i.r, align 8, !tbaa !357
  store i64 %i.am, ptr %i.s, align 8, !tbaa !357
  br label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %i.t = phi i64 [ %.promoted11.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.am, %bb.c ]
  %i.u = phi i64 [ %.promoted9.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.ah, %bb.c ]
  %.08.i.i.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i.i.i ], [ %i.ao, %bb.c ]
  %.067.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i ], [ %i.an, %bb.c ] ; 2 uses
  %i.v = phi i64 [ %.promoted.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.ad, %bb.c ]
  %i.w = load i16, ptr %.067.i.i.i.i.i, align 1, !tbaa !283
  %i.x = tail call noundef i16 @llvm.bswap.i16(i16 %i.w)
  %i.y = zext i16 %i.x to i32                     ; 3 uses
  %i.z = lshr i32 %i.y, 4
  %i.aa = and i32 %i.z, 63
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = shl nuw i64 1, %i.ab
  %i.ad = or i64 %i.ac, %i.v                      ; 2 uses
  %i.ae = and i32 %i.y, 63
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = shl nuw i64 1, %i.af
  %i.ah = or i64 %i.ag, %i.u                      ; 2 uses
  %i.ai = lshr i32 %i.y, 6
  %i.aj = and i32 %i.ai, 63
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = shl nuw i64 1, %i.ak
  %i.am = or i64 %i.al, %i.t                      ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.067.i.i.i.i.i, i64 2
  %i.ao = add nuw i32 %.08.i.i.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i32 %i.ao, %.sroa.4.8.extract.trunc.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %bb.c, !llvm.loop !162

bb.d:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 2
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4 ; 2 uses
  %i.ar = load i16, ptr %i.ap, align 1, !tbaa !283 ; 2 uses
  %i.as = tail call noundef i16 @llvm.bswap.i16(i16 %i.ar)
  %i.at = zext i16 %i.as to i64
  %.idx.i.i = mul nuw nsw i64 %i.at, 6
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.idx.i.i
  %.not14.i.i = icmp eq i16 %i.ar, 0
  br i1 %.not14.i.i, label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %.01115.i.i = phi ptr [ %i.aw, %.lr.ph.i.i ], [ %i.aq, %bb.d ] ; 2 uses
  %i.av = tail call noundef zeroext i1 @_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI15hb_set_digest_tEEbPT_(ptr noundef nonnull align 1 dereferenceable(6) %.01115.i.i, ptr noundef nonnull %i.e)
  %i.aw = getelementptr inbounds nuw i8, ptr %.01115.i.i, i64 6 ; 2 uses
  %.not.i.i = icmp ne ptr %i.aw, %i.au
  %or.cond.not = select i1 %i.av, i1 %.not.i.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i.i, label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit

_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit: ; preds = %.lr.ph.i.i, %bb.a, %bb.b, %._crit_edge.i.i.i.i.i, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT33hb_accelerate_subtables_context_t8apply_toINS_6Layout9GSUB_impl30ReverseChainSingleSubstFormat1EEEbPKvPNS_21hb_ot_apply_context_tEPv(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16 comdat align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK2OT6Layout9GSUB_impl30ReverseChainSingleSubstFormat15applyEPNS_21hb_ot_apply_context_tE(ptr noundef nonnull align 1 dereferenceable(16) %0, ptr noundef %1)
  ret i1 %i.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT33hb_accelerate_subtables_context_t15apply_cached_toINS_6Layout9GSUB_impl30ReverseChainSingleSubstFormat1EEEbPKvPNS_21hb_ot_apply_context_tEPv(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16 comdat align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK2OT6Layout9GSUB_impl30ReverseChainSingleSubstFormat15applyEPNS_21hb_ot_apply_context_tE(ptr noundef nonnull align 1 dereferenceable(16) %0, ptr noundef %1)
  ret i1 %i.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT33hb_accelerate_subtables_context_t13cache_func_toINS_6Layout9GSUB_impl30ReverseChainSingleSubstFormat1EEEbPNS_21hb_ot_apply_context_tENS_25hb_ot_subtable_cache_op_tE(ptr noundef %0, i32 noundef %1) #16 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2OT6Layout9GSUB_impl30ReverseChainSingleSubstFormat15applyEPNS_21hb_ot_apply_context_tE(ptr noundef nonnull align 1 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.d = load i16, ptr %i.c, align 1, !tbaa !283  ; 2 uses
  %i.e = icmp eq i16 %i.d, 0
  %i.f = tail call i16 @llvm.bswap.i16(i16 %i.d)
  %i.g = zext i16 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g
  %.0.i.i = select i1 %i.e, ptr @_hb_NullPool, ptr %i.h, !prof !267
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 7 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1278 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 112
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !589
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 92
  %i.n = load i32, ptr %i.m, align 4, !tbaa !653
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [20 x i8], ptr %i.l, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !637
  %i.r = tail call noundef i32 @_ZNK2OT6Layout6Common8Coverage12get_coverageEj(ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i, i32 noundef %i.q) ; 4 uses
  %i.s = icmp eq i32 %i.r, -1
  br i1 %i.s, label %_ZN11hb_buffer_t31unsafe_to_concat_from_outbufferEjj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.u = load i32, ptr %i.t, align 8, !tbaa !1850
  %.not = icmp eq i32 %i.u, 64
  br i1 %.not, label %bb.c, label %_ZN11hb_buffer_t31unsafe_to_concat_from_outbufferEjj.exit, !prof !268

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.w = load i16, ptr %i.v, align 1, !tbaa !283  ; 2 uses
  %i.x = tail call noundef i16 @llvm.bswap.i16(i16 %i.w) ; 2 uses
  %i.y = zext i16 %i.x to i64
  %i.z = shl nuw nsw i64 %i.y, 1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.z ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 2 ; 3 uses
  %i.ac = load i16, ptr %i.ab, align 1, !tbaa !283 ; 2 uses
  %i.ad = tail call noundef i16 @llvm.bswap.i16(i16 %i.ac) ; 2 uses
  %i.ae = zext i16 %i.ad to i64
  %i.af = shl nuw nsw i64 %i.ae, 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.af ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 2 ; 2 uses
  %i.ai = load i16, ptr %i.ah, align 1, !tbaa !283
  %i.aj = tail call noundef i16 @llvm.bswap.i16(i16 %i.ai)
  %i.ak = zext i16 %i.aj to i32
  %.not18 = icmp ult i32 %i.r, %i.ak
  br i1 %.not18, label %bb.d, label %_ZN11hb_buffer_t31unsafe_to_concat_from_outbufferEjj.exit, !prof !268

bb.d:                                             ; preds = %bb.c
  %i.al = zext i16 %i.x to i32
  %.not.i19 = icmp eq i16 %i.w, 0
  br i1 %.not.i19, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.am = load ptr, ptr %i.i, align 8, !tbaa !1278 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 89
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !634, !range !380, !noundef !293
  %i.ap = trunc nuw i8 %i.ao to i1
  %.in.v.i = select i1 %i.ap, i64 100, i64 92
  %.in.i = getelementptr inbounds nuw i8, ptr %i.am, i64 %.in.v.i
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.as = load ptr, ptr %i.i, align 8, !tbaa !1278 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 89
  %i.au = load i8, ptr %i.at, align 1, !tbaa !634, !range !380, !noundef !293
  %i.av = trunc nuw i8 %i.au to i1
  %.in.v.i26 = select i1 %i.av, i64 100, i64 92
  %.in.i27 = getelementptr inbounds nuw i8, ptr %i.as, i64 %.in.v.i26
  %i.aw = load i32, ptr %.in.i27, align 4, !tbaa !324
  store i32 %i.aw, ptr %i.ar, align 8, !tbaa !1366
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !1287
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 160
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !1278 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 112
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !589
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 92
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !653
  %i.bf = zext i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw [20 x i8], ptr %i.bc, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 15
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !280
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 100
  store i8 %i.bi, ptr %i.bj, align 4, !tbaa !1840
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 104
  store ptr @_ZN2OTL14match_coverageER15hb_glyph_info_tjPKv, ptr %i.bk, align 8, !tbaa !1722
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 112
  store ptr %0, ptr %i.bl, align 8, !tbaa !1723
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 120
  store ptr %i.aq, ptr %i.bm, align 8, !tbaa !1721
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.h
  %.0.i2181 = phi i32 [ 0, %bb.f ], [ %i.bo, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #63
  %i.bn = call noundef zeroext i1 @_ZN2OT19skipping_iterator_tINS_21hb_ot_apply_context_tEE4prevEPj(ptr noundef nonnull align 8 dereferenceable(60) %i.ar, ptr noundef nonnull %i.a)
  br i1 %i.bn, label %bb.h, label %_ZN2OTL15match_backtrackINS_7NumTypeILb1EtLj2EEEEEbPNS_21hb_ot_apply_context_tEjPKT_PFbR15hb_glyph_info_tjPKvESB_Pj.exit

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #63
  %i.bo = add nuw nsw i32 %.0.i2181, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.bo, %i.al
  br i1 %exitcond.not, label %.loopexit.loopexit, label %bb.g, !llvm.loop !184

_ZN2OTL15match_backtrackINS_7NumTypeILb1EtLj2EEEEEbPNS_21hb_ot_apply_context_tEjPKT_PFbR15hb_glyph_info_tjPKvESB_Pj.exit: ; preds = %bb.g
  %i.bp = load i32, ptr %i.a, align 4, !tbaa !324
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #63
  br label %bb.p

.loopexit.loopexit:                               ; preds = %bb.h
  %.pre = load i16, ptr %i.ab, align 1, !tbaa !283 ; 2 uses
  %.pre85 = load ptr, ptr %i.i, align 8, !tbaa !1278
  %.pre86 = call noundef i16 @llvm.bswap.i16(i16 %.pre)
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.e
  %.pre-phi = phi i16 [ %.pre86, %.loopexit.loopexit ], [ %i.ad, %bb.e ]
  %i.bq = phi ptr [ %.pre85, %.loopexit.loopexit ], [ %i.am, %bb.e ]
  %i.br = phi i16 [ %.pre, %.loopexit.loopexit ], [ %i.ac, %bb.e ]
  %.3.ph.in = phi ptr [ %i.ar, %.loopexit.loopexit ], [ %.in.i, %bb.e ]
  %.3.ph = load i32, ptr %.3.ph.in, align 4, !tbaa !324 ; 3 uses
  %i.bs = zext i16 %.pre-phi to i32
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 92
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !653 ; 2 uses
  %.not.i = icmp eq i16 %i.br, 0
  br i1 %.not.i, label %bb.m, label %bb.i

bb.i:                                             ; preds = %.loopexit
  %i.bv = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  store i32 %i.bu, ptr %i.bw, align 8, !tbaa !1366
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !1287
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 160
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !1278 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 96
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !607
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 128
  store i32 %i.cc, ptr %i.cd, align 8, !tbaa !1288
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 112
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !589
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ca, i64 92
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !653
  %i.ci = zext i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [20 x i8], ptr %i.cf, i64 %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 15
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !280
end_hunk_10
begin_hunk_11_@_ZL15reorder_myanmarPK18hb_ot_shape_plan_tP9hb_font_tP11hb_buffer_t:bb.a
.lr.ph.preheader.i.i:                             ; preds = %bb.j
  %i.ap = zext i32 %.0124169.i.i to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZL20is_consonant_myanmarRK15hb_glyph_info_t.exit.thread.i.i, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %i.ap, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %_ZL20is_consonant_myanmarRK15hb_glyph_info_t.exit.thread.i.i ] ; 3 uses
  %i.aq = getelementptr inbounds nuw [20 x i8], ptr %i.u, i64 %indvars.iv.i.i ; 2 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 12
  %.val.i.i = load i16, ptr %i.ar, align 4, !tbaa !280
  %i.as = and i16 %.val.i.i, 32
  %.not.i.i.i.i = icmp eq i16 %i.as, 0
  br i1 %.not.i.i.i.i, label %_ZL20is_consonant_myanmarRK15hb_glyph_info_t.exit.i.i, label %_ZL20is_consonant_myanmarRK15hb_glyph_info_t.exit.thread.i.i

_ZL20is_consonant_myanmarRK15hb_glyph_info_t.exit.i.i: ; preds = %.lr.ph.i.i
  %i.at = getelementptr i8, ptr %i.aq, i64 18
  %.val138.i.i = load i8, ptr %i.at, align 2      ; 2 uses
  %i.au = icmp ult i8 %.val138.i.i, 32
  %i.av = zext nneg i8 %.val138.i.i to i32
  %i.aw = shl nuw i32 1, %i.av
  %i.ax = and i32 %i.aw, 297990
  %i.ay = icmp ne i32 %i.ax, 0
  %i.az = select i1 %i.au, i1 %i.ay, i1 false
  br i1 %i.az, label %_ZL20is_consonant_myanmarRK15hb_glyph_info_t.exit._crit_edge.loopexit.split.loop.exit.i.i, label %_ZL20is_consonant_myanmarRK15hb_glyph_info_t.exit.thread.i.i

_ZL20is_consonant_myanmarRK15hb_glyph_info_t.exit.thread.i.i: ; preds = %_ZL20is_consonant_myanmarRK15hb_glyph_info_t.exit.i.i, %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %lftr.wideiv.i.i = trunc i64 %indvars.iv.next.i.i to i32
  %exitcond.not.i.i = icmp eq i32 %.034, %lftr.wideiv.i.i
  br i1 %exitcond.not.i.i, label %_ZL20is_consonant_myanmarRK15hb_glyph_info_t.exit._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !4649

_ZL20is_consonant_myanmarRK15hb_glyph_info_t.exit._crit_edge.loopexit.split.loop.exit.i.i: ; preds = %_ZL20is_consonant_myanmarRK15hb_glyph_info_t.exit.i.i
  %i.ba = trunc nuw i64 %indvars.iv.i.i to i32
  br label %_ZL20is_consonant_myanmarRK15hb_glyph_info_t.exit._crit_edge.i.i

_ZL20is_consonant_myanmarRK15hb_glyph_info_t.exit._crit_edge.i.i: ; preds = %_ZL20is_consonant_myanmarRK15hb_glyph_info_t.exit.thread.i.i, %_ZL20is_consonant_myanmarRK15hb_glyph_info_t.exit._crit_edge.loopexit.split.loop.exit.i.i, %bb.j
  %.2128.i.i = phi i32 [ %.02133, %bb.j ], [ %i.ba, %_ZL20is_consonant_myanmarRK15hb_glyph_info_t.exit._crit_edge.loopexit.split.loop.exit.i.i ], [ %.02133, %_ZL20is_consonant_myanmarRK15hb_glyph_info_t.exit.thread.i.i ] ; 4 uses
  %i.bb = add i32 %.0125168.i.i, %.02133          ; 4 uses
  %i.bc = icmp ult i32 %.02133, %i.bb
  br i1 %i.bc, label %.lr.ph176.preheader.i.i, label %.preheader.i.i

.lr.ph176.preheader.i.i:                          ; preds = %_ZL20is_consonant_myanmarRK15hb_glyph_info_t.exit._crit_edge.i.i
  %wide.trip.count.i.i = zext i32 %i.bb to i64    ; 3 uses
  %i.bd = sub nsw i64 %wide.trip.count.i.i, %i.v
  %xtraiter = and i64 %i.bd, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph176.i.i.prol.loopexit, label %.lr.ph176.i.i.prol

.lr.ph176.i.i.prol:                               ; preds = %.lr.ph176.preheader.i.i, %.lr.ph176.i.i.prol
  %indvars.iv201.i.i.prol = phi i64 [ %indvars.iv.next202.i.i.prol, %.lr.ph176.i.i.prol ], [ %i.v, %.lr.ph176.preheader.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph176.i.i.prol ], [ 0, %.lr.ph176.preheader.i.i ]
  %i.be = getelementptr inbounds nuw [20 x i8], ptr %i.u, i64 %indvars.iv201.i.i.prol
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 19
  store i8 5, ptr %i.bf, align 1, !tbaa !280
  %indvars.iv.next202.i.i.prol = add nuw nsw i64 %indvars.iv201.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph176.i.i.prol.loopexit, label %.lr.ph176.i.i.prol, !llvm.loop !4650

.lr.ph176.i.i.prol.loopexit:                      ; preds = %.lr.ph176.i.i.prol, %.lr.ph176.preheader.i.i
  %indvars.iv201.i.i.unr = phi i64 [ %i.v, %.lr.ph176.preheader.i.i ], [ %indvars.iv.next202.i.i.prol, %.lr.ph176.i.i.prol ]
  %i.bg = sub nsw i64 %i.v, %wide.trip.count.i.i
  %i.bh = icmp ugt i64 %i.bg, -8
  br i1 %i.bh, label %.preheader.i.i, label %.lr.ph176.i.i

.preheader.i.i:                                   ; preds = %.lr.ph176.i.i.prol.loopexit, %.lr.ph176.i.i, %_ZL20is_consonant_myanmarRK15hb_glyph_info_t.exit._crit_edge.i.i
  %.0120.lcssa.i.i = phi i32 [ %.02133, %_ZL20is_consonant_myanmarRK15hb_glyph_info_t.exit._crit_edge.i.i ], [ %i.bb, %.lr.ph176.i.i ], [ %i.bb, %.lr.ph176.i.i.prol.loopexit ] ; 3 uses
  %i.bi = icmp ult i32 %.0120.lcssa.i.i, %.2128.i.i
  br i1 %i.bi, label %.lr.ph179.preheader.i.i, label %._crit_edge180.i.i

.lr.ph179.preheader.i.i:                          ; preds = %.preheader.i.i
  %i.bj = zext i32 %.0120.lcssa.i.i to i64        ; 4 uses
  %wide.trip.count208.i.i = zext i32 %.2128.i.i to i64 ; 3 uses
  %i.bk = sub nsw i64 %wide.trip.count208.i.i, %i.bj
  %xtraiter72 = and i64 %i.bk, 7                  ; 2 uses
  %lcmp.mod73.not = icmp eq i64 %xtraiter72, 0
  br i1 %lcmp.mod73.not, label %.lr.ph179.i.i.prol.loopexit, label %.lr.ph179.i.i.prol

.lr.ph179.i.i.prol:                               ; preds = %.lr.ph179.preheader.i.i, %.lr.ph179.i.i.prol
  %indvars.iv205.i.i.prol = phi i64 [ %indvars.iv.next206.i.i.prol, %.lr.ph179.i.i.prol ], [ %i.bj, %.lr.ph179.preheader.i.i ] ; 2 uses
  %prol.iter74 = phi i64 [ %prol.iter74.next, %.lr.ph179.i.i.prol ], [ 0, %.lr.ph179.preheader.i.i ]
  %i.bl = getelementptr inbounds nuw [20 x i8], ptr %i.u, i64 %indvars.iv205.i.i.prol
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 19
  store i8 3, ptr %i.bm, align 1, !tbaa !280
  %indvars.iv.next206.i.i.prol = add nuw nsw i64 %indvars.iv205.i.i.prol, 1 ; 2 uses
  %prol.iter74.next = add i64 %prol.iter74, 1     ; 2 uses
  %prol.iter74.cmp.not = icmp eq i64 %prol.iter74.next, %xtraiter72
  br i1 %prol.iter74.cmp.not, label %.lr.ph179.i.i.prol.loopexit, label %.lr.ph179.i.i.prol, !llvm.loop !4651

.lr.ph179.i.i.prol.loopexit:                      ; preds = %.lr.ph179.i.i.prol, %.lr.ph179.preheader.i.i
  %indvars.iv205.i.i.unr = phi i64 [ %i.bj, %.lr.ph179.preheader.i.i ], [ %indvars.iv.next206.i.i.prol, %.lr.ph179.i.i.prol ]
  %i.bn = sub nsw i64 %i.bj, %wide.trip.count208.i.i
  %i.bo = icmp ugt i64 %i.bn, -8
  br i1 %i.bo, label %._crit_edge180.i.i, label %.lr.ph179.i.i

.lr.ph176.i.i:                                    ; preds = %.lr.ph176.i.i.prol.loopexit, %.lr.ph176.i.i
  %indvars.iv201.i.i = phi i64 [ %indvars.iv.next202.i.i.7, %.lr.ph176.i.i ], [ %indvars.iv201.i.i.unr, %.lr.ph176.i.i.prol.loopexit ] ; 9 uses
  %i.bp = getelementptr inbounds nuw [20 x i8], ptr %i.u, i64 %indvars.iv201.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 19
  store i8 5, ptr %i.bq, align 1, !tbaa !280
  %i.br = getelementptr inbounds nuw [20 x i8], ptr %i.u, i64 %indvars.iv201.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 39
  store i8 5, ptr %i.bs, align 1, !tbaa !280
  %i.bt = getelementptr inbounds nuw [20 x i8], ptr %i.u, i64 %indvars.iv201.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 59
  store i8 5, ptr %i.bu, align 1, !tbaa !280
  %i.bv = getelementptr inbounds nuw [20 x i8], ptr %i.u, i64 %indvars.iv201.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 79
  store i8 5, ptr %i.bw, align 1, !tbaa !280
  %i.bx = getelementptr inbounds nuw [20 x i8], ptr %i.u, i64 %indvars.iv201.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 99
  store i8 5, ptr %i.by, align 1, !tbaa !280
  %i.bz = getelementptr inbounds nuw [20 x i8], ptr %i.u, i64 %indvars.iv201.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 119
  store i8 5, ptr %i.ca, align 1, !tbaa !280
  %i.cb = getelementptr inbounds nuw [20 x i8], ptr %i.u, i64 %indvars.iv201.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 139
  store i8 5, ptr %i.cc, align 1, !tbaa !280
  %i.cd = getelementptr inbounds nuw [20 x i8], ptr %i.u, i64 %indvars.iv201.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 159
  store i8 5, ptr %i.ce, align 1, !tbaa !280
  %indvars.iv.next202.i.i.7 = add nuw nsw i64 %indvars.iv201.i.i, 8 ; 2 uses
  %exitcond204.not.i.i.7 = icmp eq i64 %indvars.iv.next202.i.i.7, %wide.trip.count.i.i
  br i1 %exitcond204.not.i.i.7, label %.preheader.i.i, label %.lr.ph176.i.i, !llvm.loop !4652

.lr.ph179.i.i:                                    ; preds = %.lr.ph179.i.i.prol.loopexit, %.lr.ph179.i.i
  %indvars.iv205.i.i = phi i64 [ %indvars.iv.next206.i.i.7, %.lr.ph179.i.i ], [ %indvars.iv205.i.i.unr, %.lr.ph179.i.i.prol.loopexit ] ; 9 uses
  %i.cf = getelementptr inbounds nuw [20 x i8], ptr %i.u, i64 %indvars.iv205.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 19
  store i8 3, ptr %i.cg, align 1, !tbaa !280
  %i.ch = getelementptr inbounds nuw [20 x i8], ptr %i.u, i64 %indvars.iv205.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 39
  store i8 3, ptr %i.ci, align 1, !tbaa !280
  %i.cj = getelementptr inbounds nuw [20 x i8], ptr %i.u, i64 %indvars.iv205.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 59
  store i8 3, ptr %i.ck, align 1, !tbaa !280
  %i.cl = getelementptr inbounds nuw [20 x i8], ptr %i.u, i64 %indvars.iv205.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 79
  store i8 3, ptr %i.cm, align 1, !tbaa !280
  %i.cn = getelementptr inbounds nuw [20 x i8], ptr %i.u, i64 %indvars.iv205.i.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 99
  store i8 3, ptr %i.co, align 1, !tbaa !280
  %i.cp = getelementptr inbounds nuw [20 x i8], ptr %i.u, i64 %indvars.iv205.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 119
  store i8 3, ptr %i.cq, align 1, !tbaa !280
  %i.cr = getelementptr inbounds nuw [20 x i8], ptr %i.u, i64 %indvars.iv205.i.i
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 139
  store i8 3, ptr %i.cs, align 1, !tbaa !280
  %i.ct = getelementptr inbounds nuw [20 x i8], ptr %i.u, i64 %indvars.iv205.i.i
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 159
  store i8 3, ptr %i.cu, align 1, !tbaa !280
  %indvars.iv.next206.i.i.7 = add nuw nsw i64 %indvars.iv205.i.i, 8 ; 2 uses
  %exitcond209.not.i.i.7 = icmp eq i64 %indvars.iv.next206.i.i.7, %wide.trip.count208.i.i
  br i1 %exitcond209.not.i.i.7, label %._crit_edge180.i.i, label %.lr.ph179.i.i, !llvm.loop !4653

._crit_edge180.i.i:                               ; preds = %.lr.ph179.i.i.prol.loopexit, %.lr.ph179.i.i, %.preheader.i.i
  %.1121.lcssa.i.i = phi i32 [ %.0120.lcssa.i.i, %.preheader.i.i ], [ %.2128.i.i, %.lr.ph179.i.i ], [ %.2128.i.i, %.lr.ph179.i.i.prol.loopexit ] ; 4 uses
  %i.cv = icmp ult i32 %.1121.lcssa.i.i, %.034
  br i1 %i.cv, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge180.i.i
  %i.cw = zext i32 %.1121.lcssa.i.i to i64
  %i.cx = getelementptr inbounds nuw [20 x i8], ptr %i.u, i64 %i.cw
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 19
  store i8 4, ptr %i.cy, align 1, !tbaa !280
  %i.cz = add nuw i32 %.1121.lcssa.i.i, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge180.i.i
  %.2122.i.i = phi i32 [ %i.cz, %bb.k ], [ %.1121.lcssa.i.i, %._crit_edge180.i.i ] ; 2 uses
  %i.da = icmp ult i32 %.2122.i.i, %.034
  br i1 %i.da, label %.lr.ph185.preheader.i.i, label %._crit_edge186.i.i

.lr.ph185.preheader.i.i:                          ; preds = %bb.l
  %i.db = zext i32 %.2122.i.i to i64
  %wide.trip.count213.i.i = zext i32 %.034 to i64
  br label %.lr.ph185.i.i

.lr.ph185.i.i:                                    ; preds = %bb.w, %.lr.ph185.preheader.i.i
  %indvars.iv210.i.i = phi i64 [ %i.db, %.lr.ph185.preheader.i.i ], [ %indvars.iv.next211.i.i, %bb.w ] ; 3 uses
  %.0118183.i.i = phi i32 [ 5, %.lr.ph185.preheader.i.i ], [ %.1119.i.i, %bb.w ] ; 7 uses
  %i.dc = getelementptr inbounds nuw [20 x i8], ptr %i.u, i64 %indvars.iv210.i.i ; 6 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 18
  %i.de = load i8, ptr %i.dd, align 2, !tbaa !280 ; 3 uses
  switch i8 %i.de, label %bb.p [
    i8 36, label %bb.m
    i8 22, label %bb.n
    i8 40, label %bb.o
  ]

bb.m:                                             ; preds = %.lr.ph185.i.i
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 19
  store i8 3, ptr %i.df, align 1, !tbaa !280
  br label %bb.w

bb.n:                                             ; preds = %.lr.ph185.i.i
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dc, i64 19
  store i8 2, ptr %i.dg, align 1, !tbaa !280
  br label %bb.w

bb.o:                                             ; preds = %.lr.ph185.i.i
  %i.dh = add nuw i64 %indvars.iv210.i.i, 4294967295
  %i.di = and i64 %i.dh, 4294967295
  %i.dj = getelementptr inbounds nuw [20 x i8], ptr %i.u, i64 %i.di
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 19
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !280
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dc, i64 19
  store i8 %i.dl, ptr %i.dm, align 1, !tbaa !280
  br label %bb.w

bb.p:                                             ; preds = %.lr.ph185.i.i
  %i.dn = icmp eq i32 %.0118183.i.i, 5
  %i.do = icmp eq i8 %i.de, 21                    ; 2 uses
  %or.cond.i.i = and i1 %i.dn, %i.do
  br i1 %or.cond.i.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dc, i64 19
  store i8 8, ptr %i.dp, align 1, !tbaa !280
  br label %bb.w

bb.r:                                             ; preds = %bb.p
  %i.dq = icmp eq i32 %.0118183.i.i, 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dc, i64 19 ; 4 uses
  br i1 %i.dq, label %bb.s, label %.critedge136.i.i

bb.s:                                             ; preds = %bb.r
  %i.ds = icmp eq i8 %i.de, 9
  br i1 %i.ds, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i8 7, ptr %i.dr, align 1, !tbaa !280
  br label %bb.w

bb.u:                                             ; preds = %bb.s
  br i1 %i.do, label %bb.v, label %.critedge.i.i

bb.v:                                             ; preds = %bb.u
  store i8 8, ptr %i.dr, align 1, !tbaa !280
  br label %bb.w

.critedge.i.i:                                    ; preds = %bb.u
  store i8 9, ptr %i.dr, align 1, !tbaa !280
  br label %bb.w

.critedge136.i.i:                                 ; preds = %bb.r
  %i.dt = trunc nuw nsw i32 %.0118183.i.i to i8
  store i8 %i.dt, ptr %i.dr, align 1, !tbaa !280
  br label %bb.w

bb.w:                                             ; preds = %.critedge136.i.i, %.critedge.i.i, %bb.v, %bb.t, %bb.q, %bb.o, %bb.n, %bb.m
  %.1119.i.i = phi i32 [ %.0118183.i.i, %bb.m ], [ %.0118183.i.i, %bb.n ], [ %.0118183.i.i, %bb.o ], [ 8, %bb.q ], [ 8, %bb.t ], [ 8, %bb.v ], [ 9, %.critedge.i.i ], [ %.0118183.i.i, %.critedge136.i.i ]
  %indvars.iv.next211.i.i = add nuw nsw i64 %indvars.iv210.i.i, 1 ; 2 uses
  %exitcond214.not.i.i = icmp eq i64 %indvars.iv.next211.i.i, %wide.trip.count213.i.i
  br i1 %exitcond214.not.i.i, label %._crit_edge186.i.i, label %.lr.ph185.i.i, !llvm.loop !4654

._crit_edge186.i.i:                               ; preds = %bb.w, %bb.l
  %.02122.i.i.i = add nuw i32 %.02133, 1          ; 2 uses
  %i.du = icmp ult i32 %.02122.i.i.i, %.034
  br i1 %i.du, label %.preheader.lr.ph.i.i.i, label %_ZN11hb_buffer_t4sortEjjPFiPK15hb_glyph_info_tS2_E.exit.i.i

.preheader.lr.ph.i.i.i:                           ; preds = %._crit_edge186.i.i
  %i.dv = zext i32 %.02122.i.i.i to i64
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.ae, %.preheader.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %i.dv, %.preheader.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.ae ] ; 7 uses
  %.021.in23.i.i.i = phi i32 [ %.02133, %.preheader.lr.ph.i.i.i ], [ %i.dw, %bb.ae ]
  %i.dw = trunc nuw i64 %indvars.iv.i.i.i to i32  ; 3 uses
  %umin.i.i.i = tail call i32 @llvm.umin.i32(i32 %.02133, i32 %i.dw) ; 2 uses
  %i.dx = icmp samesign ugt i64 %indvars.iv.i.i.i, %i.v
  br i1 %i.dx, label %.lr.ph62.preheader, label %.critedge.i.i.i

.lr.ph62.preheader:                               ; preds = %.preheader.i.i.i
  %i.dy = load ptr, ptr %i.o, align 8, !tbaa !589 ; 2 uses
  %i.dz = getelementptr inbounds nuw [20 x i8], ptr %i.dy, i64 %indvars.iv.i.i.i
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 19
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !280
  br label %.lr.ph62

bb.x:                                             ; preds = %.lr.ph62
  %i.ec = icmp ugt i64 %i.ed, %i.v
  br i1 %i.ec, label %.lr.ph62, label %.critedge.i.i.i, !llvm.loop !28

.lr.ph62:                                         ; preds = %.lr.ph62.preheader, %bb.x
  %indvars.iv25.i.i.i61 = phi i64 [ %i.ed, %bb.x ], [ %indvars.iv.i.i.i, %.lr.ph62.preheader ] ; 2 uses
  %i.ed = add nsw i64 %indvars.iv25.i.i.i61, -1   ; 3 uses
  %i.ee = getelementptr inbounds nuw [20 x i8], ptr %i.dy, i64 %i.ed
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 19
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !280
  %i.eh = icmp ugt i8 %i.eg, %i.eb
  br i1 %i.eh, label %bb.x, label %.critedge.split.loop.exit31.i.i.i, !llvm.loop !28

.critedge.split.loop.exit31.i.i.i:                ; preds = %.lr.ph62
  %i.ei = trunc nuw i64 %indvars.iv25.i.i.i61 to i32
  br label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %bb.x, %.preheader.i.i.i, %.critedge.split.loop.exit31.i.i.i
  %.0.lcssa.i.i.i = phi i32 [ %i.ei, %.critedge.split.loop.exit31.i.i.i ], [ %umin.i.i.i, %.preheader.i.i.i ], [ %umin.i.i.i, %bb.x ] ; 7 uses
  %i.ej = zext i32 %.0.lcssa.i.i.i to i64         ; 3 uses
  %i.ek = icmp eq i64 %indvars.iv.i.i.i, %i.ej
  br i1 %i.ek, label %bb.ae, label %bb.y

bb.y:                                             ; preds = %.critedge.i.i.i
  %i.el = add i32 %.021.in23.i.i.i, 2             ; 4 uses
  %i.em = sub i32 %i.el, %.0.lcssa.i.i.i          ; 2 uses
  %i.en = icmp ult i32 %i.em, 2
  br i1 %i.en, label %_ZN11hb_buffer_t14merge_clustersEjj.exit.i.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.eo = load i32, ptr %i.p, align 4, !tbaa !609
  %.not.i.i139.i.i = icmp ugt i32 %i.eo, 1
  br i1 %.not.i.i139.i.i, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.ep = icmp ne i32 %i.el, -1
  %i.eq = icmp ugt i32 %i.em, 255
  %i.er = and i1 %i.ep, %i.eq
  br i1 %i.er, label %_ZN11hb_buffer_t14merge_clustersEjj.exit.i.i.i, label %bb.ab, !prof !267

bb.ab:                                            ; preds = %bb.aa
  %i.es = load i32, ptr %i.c, align 8, !tbaa !324
  %.sroa.speculated.i.i.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.el, i32 %i.es) ; 2 uses
  %i.et = sub i32 %.sroa.speculated.i.i.i.i.i, %.0.lcssa.i.i.i
  %i.eu = icmp ult i32 %i.et, 2
  br i1 %i.eu, label %_ZN11hb_buffer_t14merge_clustersEjj.exit.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @_ZN11hb_buffer_t21_set_glyph_flags_implEjjjbb(ptr noundef nonnull align 8 dereferenceable(276) %2, i32 noundef 3, i32 noundef %.0.lcssa.i.i.i, i32 noundef %.sroa.speculated.i.i.i.i.i, i1 noundef zeroext true, i1 noundef zeroext false)
  br label %_ZN11hb_buffer_t14merge_clustersEjj.exit.i.i.i

bb.ad:                                            ; preds = %bb.z
  tail call void @_ZN11hb_buffer_t19merge_clusters_implEjj(ptr noundef nonnull align 8 dereferenceable(276) %2, i32 noundef %.0.lcssa.i.i.i, i32 noundef %i.el)
  br label %_ZN11hb_buffer_t14merge_clustersEjj.exit.i.i.i

_ZN11hb_buffer_t14merge_clustersEjj.exit.i.i.i:   ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.ev = load ptr, ptr %i.o, align 8, !tbaa !589 ; 3 uses
  %i.ew = getelementptr inbounds nuw [20 x i8], ptr %i.ev, i64 %indvars.iv.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %7, ptr noundef nonnull align 4 dereferenceable(20) %i.ew, i64 20, i1 false), !tbaa.struct !610
  %i.ex = add i32 %.0.lcssa.i.i.i, 1
  %i.ey = zext i32 %i.ex to i64
  %i.ez = getelementptr inbounds nuw [20 x i8], ptr %i.ev, i64 %i.ey
  %i.fa = getelementptr inbounds nuw [20 x i8], ptr %i.ev, i64 %i.ej
  %i.fb = sub i32 %i.dw, %.0.lcssa.i.i.i
  %i.fc = zext i32 %i.fb to i64
  %i.fd = mul nuw nsw i64 %i.fc, 20
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ez, ptr align 4 %i.fa, i64 %i.fd, i1 false)
  %i.fe = load ptr, ptr %i.o, align 8, !tbaa !589
  %i.ff = getelementptr inbounds nuw [20 x i8], ptr %i.fe, i64 %i.ej
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ff, ptr noundef nonnull align 4 dereferenceable(20) %7, i64 20, i1 false), !tbaa.struct !610
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.ae

bb.ae:                                            ; preds = %_ZN11hb_buffer_t14merge_clustersEjj.exit.i.i.i, %.critedge.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %lftr.wideiv.i.i.i = trunc i64 %indvars.iv.next.i.i.i to i32
  %exitcond.not.i.i.i = icmp eq i32 %.034, %lftr.wideiv.i.i.i
  br i1 %exitcond.not.i.i.i, label %_ZN11hb_buffer_t4sortEjjPFiPK15hb_glyph_info_tS2_E.exit.i.i, label %.preheader.i.i.i, !llvm.loop !29

_ZN11hb_buffer_t4sortEjjPFiPK15hb_glyph_info_tS2_E.exit.i.i: ; preds = %bb.ae, %._crit_edge186.i.i
  %i.fg = icmp ult i32 %.02133, %.034
  br i1 %i.fg, label %.lr.ph190.preheader.i.i, label %_ZL24reorder_syllable_myanmarPK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj.exit

.lr.ph190.preheader.i.i:                          ; preds = %_ZN11hb_buffer_t4sortEjjPFiPK15hb_glyph_info_tS2_E.exit.i.i
  %wide.trip.count218.i.i = zext i32 %.034 to i64 ; 3 uses
  %i.fh = sub nsw i64 %wide.trip.count218.i.i, %i.v
  %xtraiter75 = and i64 %i.fh, 1
  %lcmp.mod76.not = icmp eq i64 %xtraiter75, 0
  br i1 %lcmp.mod76.not, label %.lr.ph190.i.i.prol.loopexit, label %.lr.ph190.i.i.prol

.lr.ph190.i.i.prol:                               ; preds = %.lr.ph190.preheader.i.i
  %i.fi = getelementptr inbounds nuw [20 x i8], ptr %i.u, i64 %i.v
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 19
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !280
  %i.fl = icmp eq i8 %i.fk, 2                     ; 2 uses
  %.2.i.i.prol = select i1 %i.fl, i32 %.02133, i32 %.034 ; 2 uses
  %.1115.i.i.prol = select i1 %i.fl, i32 %.02133, i32 %.034 ; 2 uses
  %indvars.iv.next216.i.i.prol = add nuw nsw i64 %i.v, 1
  br label %.lr.ph190.i.i.prol.loopexit

.lr.ph190.i.i.prol.loopexit:                      ; preds = %.lr.ph190.i.i.prol, %.lr.ph190.preheader.i.i
  %.2.i.i.lcssa.unr = phi i32 [ poison, %.lr.ph190.preheader.i.i ], [ %.2.i.i.prol, %.lr.ph190.i.i.prol ]
  %.1115.i.i.lcssa.unr = phi i32 [ poison, %.lr.ph190.preheader.i.i ], [ %.1115.i.i.prol, %.lr.ph190.i.i.prol ]
  %indvars.iv215.i.i.unr = phi i64 [ %i.v, %.lr.ph190.preheader.i.i ], [ %indvars.iv.next216.i.i.prol, %.lr.ph190.i.i.prol ]
  %.0114188.i.i.unr = phi i32 [ %.034, %.lr.ph190.preheader.i.i ], [ %.1115.i.i.prol, %.lr.ph190.i.i.prol ]
  %.0116187.i.i.unr = phi i32 [ %.034, %.lr.ph190.preheader.i.i ], [ %.2.i.i.prol, %.lr.ph190.i.i.prol ]
  %i.fm = add nsw i64 %wide.trip.count218.i.i, -1
  %i.fn = icmp eq i64 %i.fm, %i.v
  br i1 %i.fn, label %._crit_edge191.i.i, label %.lr.ph190.i.i

._crit_edge191.i.i:                               ; preds = %.lr.ph190.i.i, %.lr.ph190.i.i.prol.loopexit
  %.2.i.i.lcssa = phi i32 [ %.2.i.i.lcssa.unr, %.lr.ph190.i.i.prol.loopexit ], [ %.2.i.i.1, %.lr.ph190.i.i ] ; 5 uses
  %.1115.i.i.lcssa = phi i32 [ %.1115.i.i.lcssa.unr, %.lr.ph190.i.i.prol.loopexit ], [ %.1115.i.i.1, %.lr.ph190.i.i ] ; 3 uses
  %i.fo = icmp ult i32 %.2.i.i.lcssa, %.1115.i.i.lcssa
  br i1 %i.fo, label %bb.af, label %_ZL24reorder_syllable_myanmarPK18hb_ot_shape_plan_tP9hb_face_tP11hb_buffer_tjj.exit

.lr.ph190.i.i:                                    ; preds = %.lr.ph190.i.i.prol.loopexit, %.lr.ph190.i.i
  %indvars.iv215.i.i = phi i64 [ %indvars.iv.next216.i.i.1, %.lr.ph190.i.i ], [ %indvars.iv215.i.i.unr, %.lr.ph190.i.i.prol.loopexit ] ; 4 uses
  %.0114188.i.i = phi i32 [ %.1115.i.i.1, %.lr.ph190.i.i ], [ %.0114188.i.i.unr, %.lr.ph190.i.i.prol.loopexit ]
  %.0116187.i.i = phi i32 [ %.2.i.i.1, %.lr.ph190.i.i ], [ %.0116187.i.i.unr, %.lr.ph190.i.i.prol.loopexit ] ; 2 uses
  %i.fp = getelementptr inbounds nuw [20 x i8], ptr %i.u, i64 %indvars.iv215.i.i
end_hunk_11
begin_hunk_12_@_ZNK2OT6Layout9GPOS_impl7PairPos8dispatchINS_33hb_accelerate_subtables_context_tEJEEENT_8return_tEPS5_DpOT0_:bb.a
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !1831 ; 3 uses
  %i.u = icmp ult i32 %i.t, 8
  br i1 %i.u, label %bb.e, label %_ZN2OT33hb_accelerate_subtables_context_t8dispatchINS_6Layout9GPOS_impl16PairPosFormat2_4INS2_10SmallTypesEEEEE10hb_empty_tRKT_.exit

bb.e:                                             ; preds = %bb.d
  %i.v = tail call noalias noundef dereferenceable_or_null(1536) ptr @malloc(i64 noundef 1536) #65 ; 12 uses
  %.not.i.i.i5 = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i5, label %_ZN2OT33hb_accelerate_subtables_context_t8dispatchINS_6Layout9GPOS_impl16PairPosFormat2_4INS2_10SmallTypesEEEEE10hb_empty_tRKT_.exit, label %.preheader.i.i.i6, !prof !267

.preheader.i.i.i6:                                ; preds = %bb.e, %.preheader.i.i.i6
  %.0.idx8.i.i.i.i7 = phi i64 [ %.0.add.i.i.i.i9.7, %.preheader.i.i.i6 ], [ 0, %bb.e ] ; 9 uses
  %.0.ptr.i.i.i.i8 = getelementptr inbounds nuw i8, ptr %i.v, i64 %.0.idx8.i.i.i.i7
  store atomic i16 -1, ptr %.0.ptr.i.i.i.i8 monotonic, align 2
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %.0.idx8.i.i.i.i7
  %.0.ptr.i.i.i.i8.1 = getelementptr inbounds nuw i8, ptr %i.w, i64 2
  store atomic i16 -1, ptr %.0.ptr.i.i.i.i8.1 monotonic, align 2
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %.0.idx8.i.i.i.i7
  %.0.ptr.i.i.i.i8.2 = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store atomic i16 -1, ptr %.0.ptr.i.i.i.i8.2 monotonic, align 2
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 %.0.idx8.i.i.i.i7
  %.0.ptr.i.i.i.i8.3 = getelementptr inbounds nuw i8, ptr %i.y, i64 6
  store atomic i16 -1, ptr %.0.ptr.i.i.i.i8.3 monotonic, align 2
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 %.0.idx8.i.i.i.i7
  %.0.ptr.i.i.i.i8.4 = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store atomic i16 -1, ptr %.0.ptr.i.i.i.i8.4 monotonic, align 2
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 %.0.idx8.i.i.i.i7
  %.0.ptr.i.i.i.i8.5 = getelementptr inbounds nuw i8, ptr %i.aa, i64 10
  store atomic i16 -1, ptr %.0.ptr.i.i.i.i8.5 monotonic, align 2
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 %.0.idx8.i.i.i.i7
  %.0.ptr.i.i.i.i8.6 = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  store atomic i16 -1, ptr %.0.ptr.i.i.i.i8.6 monotonic, align 2
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 %.0.idx8.i.i.i.i7
  %.0.ptr.i.i.i.i8.7 = getelementptr inbounds nuw i8, ptr %i.ac, i64 14
  store atomic i16 -1, ptr %.0.ptr.i.i.i.i8.7 monotonic, align 2
  %.0.add.i.i.i.i9.7 = add nuw nsw i64 %.0.idx8.i.i.i.i7, 16 ; 2 uses
  %.not.i.i.i.i10.7 = icmp eq i64 %.0.add.i.i.i.i9.7, 512
  br i1 %.not.i.i.i.i10.7, label %_ZN10hb_cache_tILj16ELj8ELj8ELb1EE5clearEv.exit.i.i.i, label %.preheader.i.i.i6

_ZN10hb_cache_tILj16ELj8ELj8ELb1EE5clearEv.exit.i.i.i: ; preds = %.preheader.i.i.i6
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 512 ; 8 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %_ZN10hb_cache_tILj16ELj8ELj8ELb1EE5clearEv.exit.i.i.i
  %.0.idx8.i5.i.i.i = phi i64 [ 0, %_ZN10hb_cache_tILj16ELj8ELj8ELb1EE5clearEv.exit.i.i.i ], [ %.0.add.i7.i.i.i.7, %bb.f ] ; 9 uses
  %.0.ptr.i6.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.0.idx8.i5.i.i.i
  store atomic i16 -1, ptr %.0.ptr.i6.i.i.i monotonic, align 2
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.0.idx8.i5.i.i.i
  %.0.ptr.i6.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.ae, i64 2
  store atomic i16 -1, ptr %.0.ptr.i6.i.i.i.1 monotonic, align 2
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.0.idx8.i5.i.i.i
  %.0.ptr.i6.i.i.i.2 = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  store atomic i16 -1, ptr %.0.ptr.i6.i.i.i.2 monotonic, align 2
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.0.idx8.i5.i.i.i
  %.0.ptr.i6.i.i.i.3 = getelementptr inbounds nuw i8, ptr %i.ag, i64 6
  store atomic i16 -1, ptr %.0.ptr.i6.i.i.i.3 monotonic, align 2
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.0.idx8.i5.i.i.i
  %.0.ptr.i6.i.i.i.4 = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store atomic i16 -1, ptr %.0.ptr.i6.i.i.i.4 monotonic, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.0.idx8.i5.i.i.i
  %.0.ptr.i6.i.i.i.5 = getelementptr inbounds nuw i8, ptr %i.ai, i64 10
  store atomic i16 -1, ptr %.0.ptr.i6.i.i.i.5 monotonic, align 2
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.0.idx8.i5.i.i.i
  %.0.ptr.i6.i.i.i.6 = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  store atomic i16 -1, ptr %.0.ptr.i6.i.i.i.6 monotonic, align 2
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.0.idx8.i5.i.i.i
  %.0.ptr.i6.i.i.i.7 = getelementptr inbounds nuw i8, ptr %i.ak, i64 14
  store atomic i16 -1, ptr %.0.ptr.i6.i.i.i.7 monotonic, align 2
  %.0.add.i7.i.i.i.7 = add nuw nsw i64 %.0.idx8.i5.i.i.i, 16 ; 2 uses
  %.not.i8.i.i.i.7 = icmp eq i64 %.0.add.i7.i.i.i.7, 512
  br i1 %.not.i8.i.i.i.7, label %_ZN10hb_cache_tILj16ELj8ELj8ELb1EE5clearEv.exit9.i.i.i, label %bb.f

_ZN10hb_cache_tILj16ELj8ELj8ELb1EE5clearEv.exit9.i.i.i: ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 1024 ; 8 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %_ZN10hb_cache_tILj16ELj8ELj8ELb1EE5clearEv.exit9.i.i.i
  %.0.idx8.i10.i.i.i = phi i64 [ 0, %_ZN10hb_cache_tILj16ELj8ELj8ELb1EE5clearEv.exit9.i.i.i ], [ %.0.add.i12.i.i.i.7, %bb.g ] ; 9 uses
  %.0.ptr.i11.i.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 %.0.idx8.i10.i.i.i
  store atomic i16 -1, ptr %.0.ptr.i11.i.i.i monotonic, align 2
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %.0.idx8.i10.i.i.i
  %.0.ptr.i11.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.am, i64 2
  store atomic i16 -1, ptr %.0.ptr.i11.i.i.i.1 monotonic, align 2
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 %.0.idx8.i10.i.i.i
  %.0.ptr.i11.i.i.i.2 = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  store atomic i16 -1, ptr %.0.ptr.i11.i.i.i.2 monotonic, align 2
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 %.0.idx8.i10.i.i.i
  %.0.ptr.i11.i.i.i.3 = getelementptr inbounds nuw i8, ptr %i.ao, i64 6
  store atomic i16 -1, ptr %.0.ptr.i11.i.i.i.3 monotonic, align 2
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 %.0.idx8.i10.i.i.i
  %.0.ptr.i11.i.i.i.4 = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store atomic i16 -1, ptr %.0.ptr.i11.i.i.i.4 monotonic, align 2
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 %.0.idx8.i10.i.i.i
  %.0.ptr.i11.i.i.i.5 = getelementptr inbounds nuw i8, ptr %i.aq, i64 10
  store atomic i16 -1, ptr %.0.ptr.i11.i.i.i.5 monotonic, align 2
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 %.0.idx8.i10.i.i.i
  %.0.ptr.i11.i.i.i.6 = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  store atomic i16 -1, ptr %.0.ptr.i11.i.i.i.6 monotonic, align 2
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 %.0.idx8.i10.i.i.i
  %.0.ptr.i11.i.i.i.7 = getelementptr inbounds nuw i8, ptr %i.as, i64 14
  store atomic i16 -1, ptr %.0.ptr.i11.i.i.i.7 monotonic, align 2
  %.0.add.i12.i.i.i.7 = add nuw nsw i64 %.0.idx8.i10.i.i.i, 16 ; 2 uses
  %.not.i13.i.i.i.7 = icmp eq i64 %.0.add.i12.i.i.i.7, 512
  br i1 %.not.i13.i.i.i.7, label %_ZN2OT33hb_accelerate_subtables_context_t8dispatchINS_6Layout9GPOS_impl16PairPosFormat2_4INS2_10SmallTypesEEEEE10hb_empty_tRKT_.exit, label %bb.g

_ZN2OT33hb_accelerate_subtables_context_t8dispatchINS_6Layout9GPOS_impl16PairPosFormat2_4INS2_10SmallTypesEEEEE10hb_empty_tRKT_.exit: ; preds = %bb.g, %bb.d, %bb.e
  %.0.i4 = phi ptr [ null, %bb.d ], [ null, %bb.e ], [ %i.v, %bb.g ]
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !1830
  %i.av = add i32 %i.t, 1
  store i32 %i.av, ptr %i.s, align 8, !tbaa !1831
  %i.aw = zext i32 %i.t to i64
  %i.ax = getelementptr inbounds nuw [64 x i8], ptr %i.au, i64 %i.aw
  tail call void @_ZN2OT33hb_accelerate_subtables_context_t15hb_applicable_t4initINS_6Layout9GPOS_impl16PairPosFormat2_4INS3_10SmallTypesEEEEEvRKT_PFbPKvPNS_21hb_ot_apply_context_tEPvESH_PFbSE_NS_25hb_ot_subtable_cache_op_tEESF_(ptr noundef nonnull align 8 dereferenceable(64) %i.ax, ptr noundef nonnull align 1 dereferenceable(18) %0, ptr noundef nonnull @_ZN2OT33hb_accelerate_subtables_context_t8apply_toINS_6Layout9GPOS_impl16PairPosFormat2_4INS2_10SmallTypesEEEEEbPKvPNS_21hb_ot_apply_context_tEPv, ptr noundef nonnull @_ZN2OT33hb_accelerate_subtables_context_t15apply_cached_toINS_6Layout9GPOS_impl16PairPosFormat2_4INS2_10SmallTypesEEEEEbPKvPNS_21hb_ot_apply_context_tEPv, ptr noundef nonnull @_ZN2OT33hb_accelerate_subtables_context_t13cache_func_toINS_6Layout9GPOS_impl16PairPosFormat2_4INS2_10SmallTypesEEEEEbPNS_21hb_ot_apply_context_tENS_25hb_ot_subtable_cache_op_tE, ptr noundef %.0.i4)
  br label %bb.h

bb.h:                                             ; preds = %_ZN2OT33hb_accelerate_subtables_context_t8dispatchINS_6Layout9GPOS_impl16PairPosFormat1_3INS2_10SmallTypesEEEEE10hb_empty_tRKT_.exit, %_ZN2OT33hb_accelerate_subtables_context_t8dispatchINS_6Layout9GPOS_impl16PairPosFormat2_4INS2_10SmallTypesEEEEE10hb_empty_tRKT_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2OT33hb_accelerate_subtables_context_t15hb_applicable_t4initINS_6Layout9GPOS_impl16SinglePosFormat1EEEvRKT_PFbPKvPNS_21hb_ot_apply_context_tEPvESF_PFbSC_NS_25hb_ot_subtable_cache_op_tEESD_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 1 dereferenceable(8) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !1838
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !1835
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %i.b, align 8, !tbaa !1836
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %4, ptr %i.c, align 8, !tbaa !1839
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %5, ptr %i.d, align 8, !tbaa !1404
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false), !tbaa !357
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.g = load i16, ptr %i.f, align 1, !tbaa !283  ; 2 uses
  %i.h = icmp eq i16 %i.g, 0
  %i.i = tail call i16 @llvm.bswap.i16(i16 %i.g)
  %i.j = zext i16 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %i.j
  %.0.i.i.i = select i1 %i.h, ptr @_hb_NullPool, ptr %i.k, !prof !267 ; 5 uses
  %i.l = load i16, ptr %.0.i.i.i, align 1, !tbaa !283
  %i.m = tail call noundef i16 @llvm.bswap.i16(i16 %i.l)
  switch i16 %i.m, label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit [
    i16 1, label %bb.b
    i16 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 2
  %i.o = load i16, ptr %i.n, align 1, !tbaa !283  ; 2 uses
  %i.p = tail call noundef i16 @llvm.bswap.i16(i16 %i.o)
  %.sroa.4.8.extract.trunc.i.i = zext i16 %i.p to i32
  %.not.i.i.i.i.i = icmp eq i16 %i.o, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4
  %.promoted.i.i.i.i.i = load i64, ptr %i.e, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.promoted9.i.i.i.i.i = load i64, ptr %i.r, align 8, !tbaa !357
  %.promoted11.i.i.i.i.i = load i64, ptr %i.s, align 8, !tbaa !357
  br label %bb.c

._crit_edge.i.i.i.i.i:                            ; preds = %bb.c
  store i64 %i.ad, ptr %i.e, align 8, !tbaa !357
  store i64 %i.ah, ptr %i.r, align 8, !tbaa !357
  store i64 %i.am, ptr %i.s, align 8, !tbaa !357
  br label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %i.t = phi i64 [ %.promoted11.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.am, %bb.c ]
  %i.u = phi i64 [ %.promoted9.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.ah, %bb.c ]
  %.08.i.i.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i.i.i ], [ %i.ao, %bb.c ]
  %.067.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i ], [ %i.an, %bb.c ] ; 2 uses
  %i.v = phi i64 [ %.promoted.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.ad, %bb.c ]
  %i.w = load i16, ptr %.067.i.i.i.i.i, align 1, !tbaa !283
  %i.x = tail call noundef i16 @llvm.bswap.i16(i16 %i.w)
  %i.y = zext i16 %i.x to i32                     ; 3 uses
  %i.z = lshr i32 %i.y, 4
  %i.aa = and i32 %i.z, 63
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = shl nuw i64 1, %i.ab
  %i.ad = or i64 %i.ac, %i.v                      ; 2 uses
  %i.ae = and i32 %i.y, 63
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = shl nuw i64 1, %i.af
  %i.ah = or i64 %i.ag, %i.u                      ; 2 uses
  %i.ai = lshr i32 %i.y, 6
  %i.aj = and i32 %i.ai, 63
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = shl nuw i64 1, %i.ak
  %i.am = or i64 %i.al, %i.t                      ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.067.i.i.i.i.i, i64 2
  %i.ao = add nuw i32 %.08.i.i.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i32 %i.ao, %.sroa.4.8.extract.trunc.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %bb.c, !llvm.loop !162

bb.d:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 2
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4 ; 2 uses
  %i.ar = load i16, ptr %i.ap, align 1, !tbaa !283 ; 2 uses
  %i.as = tail call noundef i16 @llvm.bswap.i16(i16 %i.ar)
  %i.at = zext i16 %i.as to i64
  %.idx.i.i = mul nuw nsw i64 %i.at, 6
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.idx.i.i
  %.not14.i.i = icmp eq i16 %i.ar, 0
  br i1 %.not14.i.i, label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %.01115.i.i = phi ptr [ %i.aw, %.lr.ph.i.i ], [ %i.aq, %bb.d ] ; 2 uses
  %i.av = tail call noundef zeroext i1 @_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI15hb_set_digest_tEEbPT_(ptr noundef nonnull align 1 dereferenceable(6) %.01115.i.i, ptr noundef nonnull %i.e)
  %i.aw = getelementptr inbounds nuw i8, ptr %.01115.i.i, i64 6 ; 2 uses
  %.not.i.i = icmp ne ptr %i.aw, %i.au
  %or.cond.not = select i1 %i.av, i1 %.not.i.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i.i, label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit

_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit: ; preds = %.lr.ph.i.i, %bb.a, %bb.b, %._crit_edge.i.i.i.i.i, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT33hb_accelerate_subtables_context_t8apply_toINS_6Layout9GPOS_impl16SinglePosFormat1EEEbPKvPNS_21hb_ot_apply_context_tEPv(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1278 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.d = load i16, ptr %i.c, align 1, !tbaa !283  ; 2 uses
  %i.e = icmp eq i16 %i.d, 0
  %i.f = tail call i16 @llvm.bswap.i16(i16 %i.d)
  %i.g = zext i16 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g
  %.0.i.i.i.i = select i1 %i.e, ptr @_hb_NullPool, ptr %i.h, !prof !267
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !589
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 92 ; 4 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !653
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [20 x i8], ptr %i.j, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !637
  %i.p = tail call noundef i32 @_ZNK2OT6Layout6Common8Coverage12get_coverageEj(ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i.i.i, i32 noundef %i.o)
  %i.q = icmp ne i32 %i.p, -1                     ; 2 uses
  br i1 %i.q, label %bb.b, label %_ZN2OT33hb_accelerate_subtables_context_t6apply_INS_6Layout9GPOS_impl16SinglePosFormat1EEEN10_hb_head_tIbJDTclptfp_5applyfp0_EEEE4typeEPKT_PNS_21hb_ot_apply_context_tEPv11hb_priorityILj0EE.exit

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !611
  %i.v = load i32, ptr %i.k, align 4, !tbaa !653
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [20 x i8], ptr %i.u, i64 %i.w
  %i.y = tail call noundef zeroext i1 @_ZNK2OT6Layout9GPOS_impl11ValueFormat11apply_valueEPNS_21hb_ot_apply_context_tEPKNS1_9ValueBaseEPKNS_7NumTypeILb1EtLj2EEER19hb_glyph_position_t(ptr noundef nonnull align 1 dereferenceable(2) %i.r, ptr noundef nonnull %1, ptr noundef nonnull align 1 dereferenceable(8) %0, ptr noundef nonnull %i.s, ptr noundef nonnull align 4 dereferenceable(20) %i.x) ; 0 uses
  %i.z = load i32, ptr %i.k, align 4, !tbaa !653
  %i.aa = add i32 %i.z, 1
  store i32 %i.aa, ptr %i.k, align 4, !tbaa !653
  br label %_ZN2OT33hb_accelerate_subtables_context_t6apply_INS_6Layout9GPOS_impl16SinglePosFormat1EEEN10_hb_head_tIbJDTclptfp_5applyfp0_EEEE4typeEPKT_PNS_21hb_ot_apply_context_tEPv11hb_priorityILj0EE.exit

_ZN2OT33hb_accelerate_subtables_context_t6apply_INS_6Layout9GPOS_impl16SinglePosFormat1EEEN10_hb_head_tIbJDTclptfp_5applyfp0_EEEE4typeEPKT_PNS_21hb_ot_apply_context_tEPv11hb_priorityILj0EE.exit: ; preds = %bb.a, %bb.b
  ret i1 %i.q
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT33hb_accelerate_subtables_context_t15apply_cached_toINS_6Layout9GPOS_impl16SinglePosFormat1EEEbPKvPNS_21hb_ot_apply_context_tEPv(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1278 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.d = load i16, ptr %i.c, align 1, !tbaa !283  ; 2 uses
  %i.e = icmp eq i16 %i.d, 0
  %i.f = tail call i16 @llvm.bswap.i16(i16 %i.d)
  %i.g = zext i16 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g
  %.0.i.i.i.i = select i1 %i.e, ptr @_hb_NullPool, ptr %i.h, !prof !267
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !589
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 92 ; 4 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !653
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [20 x i8], ptr %i.j, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !637
  %i.p = tail call noundef i32 @_ZNK2OT6Layout6Common8Coverage12get_coverageEj(ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i.i.i, i32 noundef %i.o)
  %i.q = icmp ne i32 %i.p, -1                     ; 2 uses
  br i1 %i.q, label %bb.b, label %_ZN2OT33hb_accelerate_subtables_context_t13apply_cached_INS_6Layout9GPOS_impl16SinglePosFormat1EEEN10_hb_head_tIbJDTclptfp_5applyfp0_EEEE4typeEPKT_PNS_21hb_ot_apply_context_tEPv11hb_priorityILj0EE.exit

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !611
  %i.v = load i32, ptr %i.k, align 4, !tbaa !653
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [20 x i8], ptr %i.u, i64 %i.w
  %i.y = tail call noundef zeroext i1 @_ZNK2OT6Layout9GPOS_impl11ValueFormat11apply_valueEPNS_21hb_ot_apply_context_tEPKNS1_9ValueBaseEPKNS_7NumTypeILb1EtLj2EEER19hb_glyph_position_t(ptr noundef nonnull align 1 dereferenceable(2) %i.r, ptr noundef nonnull %1, ptr noundef nonnull align 1 dereferenceable(8) %0, ptr noundef nonnull %i.s, ptr noundef nonnull align 4 dereferenceable(20) %i.x) ; 0 uses
  %i.z = load i32, ptr %i.k, align 4, !tbaa !653
  %i.aa = add i32 %i.z, 1
  store i32 %i.aa, ptr %i.k, align 4, !tbaa !653
  br label %_ZN2OT33hb_accelerate_subtables_context_t13apply_cached_INS_6Layout9GPOS_impl16SinglePosFormat1EEEN10_hb_head_tIbJDTclptfp_5applyfp0_EEEE4typeEPKT_PNS_21hb_ot_apply_context_tEPv11hb_priorityILj0EE.exit

_ZN2OT33hb_accelerate_subtables_context_t13apply_cached_INS_6Layout9GPOS_impl16SinglePosFormat1EEEN10_hb_head_tIbJDTclptfp_5applyfp0_EEEE4typeEPKT_PNS_21hb_ot_apply_context_tEPv11hb_priorityILj0EE.exit: ; preds = %bb.a, %bb.b
  ret i1 %i.q
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT33hb_accelerate_subtables_context_t13cache_func_toINS_6Layout9GPOS_impl16SinglePosFormat1EEEbPNS_21hb_ot_apply_context_tENS_25hb_ot_subtable_cache_op_tE(ptr noundef %0, i32 noundef %1) #16 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2OT6Layout9GPOS_impl11ValueFormat11apply_valueEPNS_21hb_ot_apply_context_tEPKNS1_9ValueBaseEPKNS_7NumTypeILb1EtLj2EEER19hb_glyph_position_t(ptr noundef nonnull align 1 dereferenceable(2) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 4 dereferenceable(20) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 1, !tbaa !283    ; 3 uses
  %i.b = tail call noundef i16 @llvm.bswap.i16(i16 %i.a)
  %i.c = zext i16 %i.b to i32                     ; 8 uses
  %.not83 = icmp eq i16 %i.a, 0
  br i1 %.not83, label %bb.aj, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1712 ; 12 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.g = load i32, ptr %i.f, align 8, !tbaa !1717
  %i.h = and i32 %i.g, -2
  %i.i = icmp eq i32 %i.h, 4                      ; 4 uses
  %i.j = and i32 %i.c, 1
  %.not84 = icmp eq i32 %i.j, 0
  br i1 %.not84, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.l = load i16, ptr %3, align 1, !tbaa !283    ; 2 uses
  %i.m = icmp ne i16 %i.l, 0
  %i.n = tail call noundef i16 @llvm.bswap.i16(i16 %i.l)
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %i.p = load i64, ptr %i.o, align 8, !tbaa !1048
  %i.q = sext i16 %i.n to i64
  %i.r = mul nsw i64 %i.p, %i.q
  %i.s = add nsw i64 %i.r, 32768
  %i.t = lshr i64 %i.s, 16
  %i.u = trunc i64 %i.t to i32
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !644
  %i.x = add nsw i32 %i.w, %i.u
  store i32 %i.x, ptr %i.v, align 4, !tbaa !644
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i1 [ false, %bb.b ], [ %i.m, %bb.c ]  ; 2 uses
  %.079 = phi ptr [ %3, %bb.b ], [ %i.k, %bb.c ]  ; 3 uses
  %i.y = and i32 %i.c, 2
  %.not85 = icmp eq i32 %i.y, 0
  br i1 %.not85, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %.079, i64 2
  %i.aa = load i16, ptr %.079, align 1, !tbaa !283 ; 2 uses
  %i.ab = icmp ne i16 %i.aa, 0
  %i.ac = or i1 %.0, %i.ab
  %i.ad = tail call noundef i16 @llvm.bswap.i16(i16 %i.aa)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !1047
  %i.ag = sext i16 %i.ad to i64
  %i.ah = mul nsw i64 %i.af, %i.ag
  %i.ai = add nsw i64 %i.ah, 32768
  %i.aj = lshr i64 %i.ai, 16
  %i.ak = trunc i64 %i.aj to i32
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !645
  %i.an = add nsw i32 %i.am, %i.ak
  store i32 %i.an, ptr %i.al, align 4, !tbaa !645
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.1 = phi i1 [ %.0, %bb.d ], [ %i.ac, %bb.e ]   ; 3 uses
  %.180 = phi ptr [ %.079, %bb.d ], [ %i.z, %bb.e ] ; 3 uses
  %i.ao = and i32 %i.c, 4
  %.not86 = icmp eq i32 %i.ao, 0
  br i1 %.not86, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %i.i, label %bb.h, label %bb.i, !prof !268

bb.h:                                             ; preds = %bb.g
  %i.ap = load i16, ptr %.180, align 1, !tbaa !283 ; 2 uses
  %i.aq = icmp ne i16 %i.ap, 0
  %i.ar = or i1 %.1, %i.aq
  %i.as = tail call noundef i16 @llvm.bswap.i16(i16 %i.ap)
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %i.au = load i64, ptr %i.at, align 8, !tbaa !1048
  %i.av = sext i16 %i.as to i64
  %i.aw = mul nsw i64 %i.au, %i.av
  %i.ax = add nsw i64 %i.aw, 32768
  %i.ay = lshr i64 %i.ax, 16
end_hunk_12
begin_hunk_13_@_ZNK2OT6Layout9GPOS_impl11ValueFormat11apply_valueEPNS_21hb_ot_apply_context_tEPKNS1_9ValueBaseEPKNS_7NumTypeILb1EtLj2EEER19hb_glyph_position_t:bb.a

bb.ac:                                            ; preds = %bb.ab
  %or.cond3 = select i1 %i.i, i1 %i.bz, i1 false
  br i1 %or.cond3, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.eu = load i16, ptr %.5, align 1, !tbaa !283
  %i.ev = icmp ne i16 %i.eu, 0
  %i.ew = or i1 %.9, %i.ev
  %i.ex = getelementptr inbounds nuw i8, ptr %.5, i64 2
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !505
  %i.fa = ptrtoint ptr %i.ex to i64
  %i.fb = ptrtoint ptr %i.ez to i64
  %i.fc = sub i64 %i.fa, %i.fb
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !506
  %i.ff = zext i32 %i.fe to i64
  %.not.i.not.i101 = icmp ugt i64 %i.fc, %i.ff
  br i1 %.not.i.not.i101, label %_ZN2OT6Layout9GPOS_impl11ValueFormat10get_deviceEPKNS_7NumTypeILb1EtLj2EEEPbPKNS1_9ValueBaseER21hb_sanitize_context_t.exit106, label %bb.ae, !prof !267

bb.ae:                                            ; preds = %bb.ad
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.fg = load i16, ptr %.5, align 1, !tbaa !283  ; 2 uses
  %i.fh = icmp eq i16 %i.fg, 0
  br i1 %i.fh, label %_ZNK2OT8OffsetToINS_6DeviceENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread.i104, label %_ZNK2OT8OffsetToINS_6DeviceENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.i102

_ZNK2OT8OffsetToINS_6DeviceENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.i102: ; preds = %bb.ae
  %i.fi = tail call noundef i16 @llvm.bswap.i16(i16 %i.fg)
  %i.fj = zext i16 %i.fi to i64
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 %i.fj
  %i.fl = tail call noundef zeroext i1 @_ZNK2OT6Device8sanitizeEP21hb_sanitize_context_t(ptr noundef nonnull align 1 dereferenceable(8) %i.fk, ptr noundef nonnull align 8 dereferenceable(62) %i.et)
  br i1 %i.fl, label %_ZNK2OT8OffsetToINS_6DeviceENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread.i104, label %_ZN2OT6Layout9GPOS_impl11ValueFormat10get_deviceEPKNS_7NumTypeILb1EtLj2EEEPbPKNS1_9ValueBaseER21hb_sanitize_context_t.exit106, !prof !672

_ZNK2OT8OffsetToINS_6DeviceENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread.i104: ; preds = %_ZNK2OT8OffsetToINS_6DeviceENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.i102, %bb.ae
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.fm = load i16, ptr %.5, align 1, !tbaa !283  ; 2 uses
  %i.fn = icmp eq i16 %i.fm, 0
  %i.fo = tail call i16 @llvm.bswap.i16(i16 %i.fm)
  %i.fp = zext i16 %i.fo to i64
  %i.fq = getelementptr inbounds nuw i8, ptr %2, i64 %i.fp
  %.0.i.i.i105 = select i1 %i.fn, ptr @_hb_NullPool, ptr %i.fq, !prof !267
  br label %_ZN2OT6Layout9GPOS_impl11ValueFormat10get_deviceEPKNS_7NumTypeILb1EtLj2EEEPbPKNS1_9ValueBaseER21hb_sanitize_context_t.exit106

_ZN2OT6Layout9GPOS_impl11ValueFormat10get_deviceEPKNS_7NumTypeILb1EtLj2EEEPbPKNS1_9ValueBaseER21hb_sanitize_context_t.exit106: ; preds = %bb.ad, %_ZNK2OT8OffsetToINS_6DeviceENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.i102, %_ZNK2OT8OffsetToINS_6DeviceENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread.i104
  %.0.i103 = phi ptr [ %.0.i.i.i105, %_ZNK2OT8OffsetToINS_6DeviceENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread.i104 ], [ @_hb_NullPool, %_ZNK2OT8OffsetToINS_6DeviceENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.i102 ], [ @_hb_NullPool, %bb.ad ]
  %i.fr = tail call noundef i32 @_ZNK2OT6Device11get_x_deltaEP9hb_font_tRKNS_18ItemVariationStoreEPNS_17hb_scalar_cache_tE(ptr noundef nonnull align 1 dereferenceable(8) %.0.i103, ptr noundef nonnull %i.e, ptr noundef nonnull align 1 dereferenceable(12) %i.ch, ptr noundef %i.cj)
  %i.fs = load i32, ptr %4, align 4, !tbaa !617
  %i.ft = add nsw i32 %i.fs, %i.fr
  store i32 %i.ft, ptr %4, align 4, !tbaa !617
  br label %bb.af

bb.af:                                            ; preds = %_ZN2OT6Layout9GPOS_impl11ValueFormat10get_deviceEPKNS_7NumTypeILb1EtLj2EEEPbPKNS1_9ValueBaseER21hb_sanitize_context_t.exit106, %bb.ac
  %.10 = phi i1 [ %i.ew, %_ZN2OT6Layout9GPOS_impl11ValueFormat10get_deviceEPKNS_7NumTypeILb1EtLj2EEEPbPKNS1_9ValueBaseER21hb_sanitize_context_t.exit106 ], [ %.9, %bb.ac ]
  %i.fu = getelementptr inbounds nuw i8, ptr %.5, i64 2
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ab
  %.11 = phi i1 [ %.9, %bb.ab ], [ %.10, %bb.af ] ; 2 uses
  %.6 = phi ptr [ %.5, %bb.ab ], [ %i.fu, %bb.af ] ; 4 uses
  %i.fv = and i32 %i.c, 128
  %.not93 = icmp ne i32 %i.fv, 0
  %.not = xor i1 %i.i, true
  %or.cond5 = and i1 %i.cf, %.not
  %or.cond94 = select i1 %.not93, i1 %or.cond5, i1 false
  br i1 %or.cond94, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.fx = load i16, ptr %.6, align 1, !tbaa !283
  %i.fy = icmp ne i16 %i.fx, 0
  %i.fz = or i1 %.11, %i.fy
  %i.ga = getelementptr inbounds nuw i8, ptr %.6, i64 2
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !505
  %i.gd = ptrtoint ptr %i.ga to i64
  %i.ge = ptrtoint ptr %i.gc to i64
  %i.gf = sub i64 %i.gd, %i.ge
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.gh = load i32, ptr %i.gg, align 8, !tbaa !506
  %i.gi = zext i32 %i.gh to i64
  %.not.i.not.i107 = icmp ugt i64 %i.gf, %i.gi
  br i1 %.not.i.not.i107, label %_ZN2OT6Layout9GPOS_impl11ValueFormat10get_deviceEPKNS_7NumTypeILb1EtLj2EEEPbPKNS1_9ValueBaseER21hb_sanitize_context_t.exit112, label %bb.ai, !prof !267

bb.ai:                                            ; preds = %bb.ah
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.gj = load i16, ptr %.6, align 1, !tbaa !283  ; 2 uses
  %i.gk = icmp eq i16 %i.gj, 0
  br i1 %i.gk, label %_ZNK2OT8OffsetToINS_6DeviceENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread.i110, label %_ZNK2OT8OffsetToINS_6DeviceENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.i108

_ZNK2OT8OffsetToINS_6DeviceENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.i108: ; preds = %bb.ai
  %i.gl = tail call noundef i16 @llvm.bswap.i16(i16 %i.gj)
  %i.gm = zext i16 %i.gl to i64
  %i.gn = getelementptr inbounds nuw i8, ptr %2, i64 %i.gm
  %i.go = tail call noundef zeroext i1 @_ZNK2OT6Device8sanitizeEP21hb_sanitize_context_t(ptr noundef nonnull align 1 dereferenceable(8) %i.gn, ptr noundef nonnull align 8 dereferenceable(62) %i.fw)
  br i1 %i.go, label %_ZNK2OT8OffsetToINS_6DeviceENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread.i110, label %_ZN2OT6Layout9GPOS_impl11ValueFormat10get_deviceEPKNS_7NumTypeILb1EtLj2EEEPbPKNS1_9ValueBaseER21hb_sanitize_context_t.exit112, !prof !672

_ZNK2OT8OffsetToINS_6DeviceENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread.i110: ; preds = %_ZNK2OT8OffsetToINS_6DeviceENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.i108, %bb.ai
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.gp = load i16, ptr %.6, align 1, !tbaa !283  ; 2 uses
  %i.gq = icmp eq i16 %i.gp, 0
  %i.gr = tail call i16 @llvm.bswap.i16(i16 %i.gp)
  %i.gs = zext i16 %i.gr to i64
  %i.gt = getelementptr inbounds nuw i8, ptr %2, i64 %i.gs
  %.0.i.i.i111 = select i1 %i.gq, ptr @_hb_NullPool, ptr %i.gt, !prof !267
  br label %_ZN2OT6Layout9GPOS_impl11ValueFormat10get_deviceEPKNS_7NumTypeILb1EtLj2EEEPbPKNS1_9ValueBaseER21hb_sanitize_context_t.exit112

_ZN2OT6Layout9GPOS_impl11ValueFormat10get_deviceEPKNS_7NumTypeILb1EtLj2EEEPbPKNS1_9ValueBaseER21hb_sanitize_context_t.exit112: ; preds = %bb.ah, %_ZNK2OT8OffsetToINS_6DeviceENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.i108, %_ZNK2OT8OffsetToINS_6DeviceENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread.i110
  %.0.i109 = phi ptr [ %.0.i.i.i111, %_ZNK2OT8OffsetToINS_6DeviceENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread.i110 ], [ @_hb_NullPool, %_ZNK2OT8OffsetToINS_6DeviceENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.i108 ], [ @_hb_NullPool, %bb.ah ]
  %i.gu = tail call noundef i32 @_ZNK2OT6Device11get_y_deltaEP9hb_font_tRKNS_18ItemVariationStoreEPNS_17hb_scalar_cache_tE(ptr noundef nonnull align 1 dereferenceable(8) %.0.i109, ptr noundef nonnull %i.e, ptr noundef nonnull align 1 dereferenceable(12) %i.ch, ptr noundef %i.cj)
  %i.gv = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !619
  %i.gx = sub nsw i32 %i.gw, %i.gu
  store i32 %i.gx, ptr %i.gv, align 4, !tbaa !619
  br label %bb.aj

bb.aj:                                            ; preds = %bb.n, %bb.ag, %_ZN2OT6Layout9GPOS_impl11ValueFormat10get_deviceEPKNS_7NumTypeILb1EtLj2EEEPbPKNS1_9ValueBaseER21hb_sanitize_context_t.exit112, %bb.r, %bb.a
  %.12 = phi i1 [ false, %bb.a ], [ %i.fz, %_ZN2OT6Layout9GPOS_impl11ValueFormat10get_deviceEPKNS_7NumTypeILb1EtLj2EEEPbPKNS1_9ValueBaseER21hb_sanitize_context_t.exit112 ], [ %.11, %bb.ag ], [ %.5124, %bb.r ], [ %.5124, %bb.n ]
  ret i1 %.12
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2OT33hb_accelerate_subtables_context_t15hb_applicable_t4initINS_6Layout9GPOS_impl16SinglePosFormat2EEEvRKT_PFbPKvPNS_21hb_ot_apply_context_tEPvESF_PFbSC_NS_25hb_ot_subtable_cache_op_tEESD_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 1 dereferenceable(10) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !1838
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !1835
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %i.b, align 8, !tbaa !1836
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %4, ptr %i.c, align 8, !tbaa !1839
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %5, ptr %i.d, align 8, !tbaa !1404
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false), !tbaa !357
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.g = load i16, ptr %i.f, align 1, !tbaa !283  ; 2 uses
  %i.h = icmp eq i16 %i.g, 0
  %i.i = tail call i16 @llvm.bswap.i16(i16 %i.g)
  %i.j = zext i16 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %i.j
  %.0.i.i.i = select i1 %i.h, ptr @_hb_NullPool, ptr %i.k, !prof !267 ; 5 uses
  %i.l = load i16, ptr %.0.i.i.i, align 1, !tbaa !283
  %i.m = tail call noundef i16 @llvm.bswap.i16(i16 %i.l)
  switch i16 %i.m, label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit [
    i16 1, label %bb.b
    i16 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 2
  %i.o = load i16, ptr %i.n, align 1, !tbaa !283  ; 2 uses
  %i.p = tail call noundef i16 @llvm.bswap.i16(i16 %i.o)
  %.sroa.4.8.extract.trunc.i.i = zext i16 %i.p to i32
  %.not.i.i.i.i.i = icmp eq i16 %i.o, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4
  %.promoted.i.i.i.i.i = load i64, ptr %i.e, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.promoted9.i.i.i.i.i = load i64, ptr %i.r, align 8, !tbaa !357
  %.promoted11.i.i.i.i.i = load i64, ptr %i.s, align 8, !tbaa !357
  br label %bb.c

._crit_edge.i.i.i.i.i:                            ; preds = %bb.c
  store i64 %i.ad, ptr %i.e, align 8, !tbaa !357
  store i64 %i.ah, ptr %i.r, align 8, !tbaa !357
  store i64 %i.am, ptr %i.s, align 8, !tbaa !357
  br label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %i.t = phi i64 [ %.promoted11.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.am, %bb.c ]
  %i.u = phi i64 [ %.promoted9.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.ah, %bb.c ]
  %.08.i.i.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i.i.i ], [ %i.ao, %bb.c ]
  %.067.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i ], [ %i.an, %bb.c ] ; 2 uses
  %i.v = phi i64 [ %.promoted.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.ad, %bb.c ]
  %i.w = load i16, ptr %.067.i.i.i.i.i, align 1, !tbaa !283
  %i.x = tail call noundef i16 @llvm.bswap.i16(i16 %i.w)
  %i.y = zext i16 %i.x to i32                     ; 3 uses
  %i.z = lshr i32 %i.y, 4
  %i.aa = and i32 %i.z, 63
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = shl nuw i64 1, %i.ab
  %i.ad = or i64 %i.ac, %i.v                      ; 2 uses
  %i.ae = and i32 %i.y, 63
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = shl nuw i64 1, %i.af
  %i.ah = or i64 %i.ag, %i.u                      ; 2 uses
  %i.ai = lshr i32 %i.y, 6
  %i.aj = and i32 %i.ai, 63
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = shl nuw i64 1, %i.ak
  %i.am = or i64 %i.al, %i.t                      ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.067.i.i.i.i.i, i64 2
  %i.ao = add nuw i32 %.08.i.i.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i32 %i.ao, %.sroa.4.8.extract.trunc.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %bb.c, !llvm.loop !162

bb.d:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 2
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4 ; 2 uses
  %i.ar = load i16, ptr %i.ap, align 1, !tbaa !283 ; 2 uses
  %i.as = tail call noundef i16 @llvm.bswap.i16(i16 %i.ar)
  %i.at = zext i16 %i.as to i64
  %.idx.i.i = mul nuw nsw i64 %i.at, 6
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.idx.i.i
  %.not14.i.i = icmp eq i16 %i.ar, 0
  br i1 %.not14.i.i, label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %.01115.i.i = phi ptr [ %i.aw, %.lr.ph.i.i ], [ %i.aq, %bb.d ] ; 2 uses
  %i.av = tail call noundef zeroext i1 @_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI15hb_set_digest_tEEbPT_(ptr noundef nonnull align 1 dereferenceable(6) %.01115.i.i, ptr noundef nonnull %i.e)
  %i.aw = getelementptr inbounds nuw i8, ptr %.01115.i.i, i64 6 ; 2 uses
  %.not.i.i = icmp ne ptr %i.aw, %i.au
  %or.cond.not = select i1 %i.av, i1 %.not.i.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i.i, label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit

_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit: ; preds = %.lr.ph.i.i, %bb.a, %bb.b, %._crit_edge.i.i.i.i.i, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT33hb_accelerate_subtables_context_t8apply_toINS_6Layout9GPOS_impl16SinglePosFormat2EEEbPKvPNS_21hb_ot_apply_context_tEPv(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1278 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.d = load i16, ptr %i.c, align 1, !tbaa !283  ; 2 uses
  %i.e = icmp eq i16 %i.d, 0
  %i.f = tail call i16 @llvm.bswap.i16(i16 %i.d)
  %i.g = zext i16 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g
  %.0.i.i.i.i = select i1 %i.e, ptr @_hb_NullPool, ptr %i.h, !prof !267
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !589
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 92 ; 4 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !653
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [20 x i8], ptr %i.j, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !637
  %i.p = tail call noundef i32 @_ZNK2OT6Layout6Common8Coverage12get_coverageEj(ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i.i.i, i32 noundef %i.o) ; 3 uses
  %i.q = icmp eq i32 %i.p, -1
  br i1 %i.q, label %_ZN2OT33hb_accelerate_subtables_context_t6apply_INS_6Layout9GPOS_impl16SinglePosFormat2EEEN10_hb_head_tIbJDTclptfp_5applyfp0_EEEE4typeEPKT_PNS_21hb_ot_apply_context_tEPv11hb_priorityILj0EE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.s = load i16, ptr %i.r, align 1, !tbaa !283
  %i.t = tail call noundef i16 @llvm.bswap.i16(i16 %i.s)
  %i.u = zext i16 %i.t to i32
  %.not.i.i = icmp ult i32 %i.p, %i.u
  br i1 %.not.i.i, label %bb.c, label %_ZN2OT33hb_accelerate_subtables_context_t6apply_INS_6Layout9GPOS_impl16SinglePosFormat2EEEN10_hb_head_tIbJDTclptfp_5applyfp0_EEEE4typeEPKT_PNS_21hb_ot_apply_context_tEPv11hb_priorityILj0EE.exit, !prof !268

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i16, ptr %i.v, align 1, !tbaa !283
  %i.y = lshr i16 %i.x, 8
  %i.z = zext nneg i16 %i.y to i32                ; 2 uses
  %i.aa = and i32 %i.z, 15
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr @_ZZL12hb_popcount8hE9popcount4, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !280
  %i.ae = zext i8 %i.ad to i32
  %i.af = lshr i32 %i.z, 4
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr @_ZZL12hb_popcount8hE9popcount4, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !280
  %i.aj = zext i8 %i.ai to i32
  %i.ak = add nuw nsw i32 %i.aj, %i.ae
  %i.al = mul nuw nsw i32 %i.ak, %i.p
  %i.am = zext nneg i32 %i.al to i64
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !611
  %i.aq = load i32, ptr %i.k, align 4, !tbaa !653
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [20 x i8], ptr %i.ap, i64 %i.ar
  %i.at = tail call noundef zeroext i1 @_ZNK2OT6Layout9GPOS_impl11ValueFormat11apply_valueEPNS_21hb_ot_apply_context_tEPKNS1_9ValueBaseEPKNS_7NumTypeILb1EtLj2EEER19hb_glyph_position_t(ptr noundef nonnull align 1 dereferenceable(2) %i.v, ptr noundef nonnull %1, ptr noundef nonnull align 1 dereferenceable(10) %0, ptr noundef nonnull %i.an, ptr noundef nonnull align 4 dereferenceable(20) %i.as) ; 0 uses
  %i.au = load i32, ptr %i.k, align 4, !tbaa !653
  %i.av = add i32 %i.au, 1
  store i32 %i.av, ptr %i.k, align 4, !tbaa !653
  br label %_ZN2OT33hb_accelerate_subtables_context_t6apply_INS_6Layout9GPOS_impl16SinglePosFormat2EEEN10_hb_head_tIbJDTclptfp_5applyfp0_EEEE4typeEPKT_PNS_21hb_ot_apply_context_tEPv11hb_priorityILj0EE.exit

_ZN2OT33hb_accelerate_subtables_context_t6apply_INS_6Layout9GPOS_impl16SinglePosFormat2EEEN10_hb_head_tIbJDTclptfp_5applyfp0_EEEE4typeEPKT_PNS_21hb_ot_apply_context_tEPv11hb_priorityILj0EE.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.0.i.i = phi i1 [ true, %bb.c ], [ false, %bb.a ], [ false, %bb.b ]
  ret i1 %.0.i.i
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT33hb_accelerate_subtables_context_t15apply_cached_toINS_6Layout9GPOS_impl16SinglePosFormat2EEEbPKvPNS_21hb_ot_apply_context_tEPv(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1278 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.d = load i16, ptr %i.c, align 1, !tbaa !283  ; 2 uses
  %i.e = icmp eq i16 %i.d, 0
  %i.f = tail call i16 @llvm.bswap.i16(i16 %i.d)
  %i.g = zext i16 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g
  %.0.i.i.i.i = select i1 %i.e, ptr @_hb_NullPool, ptr %i.h, !prof !267
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !589
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 92 ; 4 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !653
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [20 x i8], ptr %i.j, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !637
  %i.p = tail call noundef i32 @_ZNK2OT6Layout6Common8Coverage12get_coverageEj(ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i.i.i, i32 noundef %i.o) ; 3 uses
  %i.q = icmp eq i32 %i.p, -1
  br i1 %i.q, label %_ZN2OT33hb_accelerate_subtables_context_t13apply_cached_INS_6Layout9GPOS_impl16SinglePosFormat2EEEN10_hb_head_tIbJDTclptfp_5applyfp0_EEEE4typeEPKT_PNS_21hb_ot_apply_context_tEPv11hb_priorityILj0EE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.s = load i16, ptr %i.r, align 1, !tbaa !283
  %i.t = tail call noundef i16 @llvm.bswap.i16(i16 %i.s)
  %i.u = zext i16 %i.t to i32
  %.not.i.i = icmp ult i32 %i.p, %i.u
  br i1 %.not.i.i, label %bb.c, label %_ZN2OT33hb_accelerate_subtables_context_t13apply_cached_INS_6Layout9GPOS_impl16SinglePosFormat2EEEN10_hb_head_tIbJDTclptfp_5applyfp0_EEEE4typeEPKT_PNS_21hb_ot_apply_context_tEPv11hb_priorityILj0EE.exit, !prof !268

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i16, ptr %i.v, align 1, !tbaa !283
  %i.y = lshr i16 %i.x, 8
  %i.z = zext nneg i16 %i.y to i32                ; 2 uses
  %i.aa = and i32 %i.z, 15
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr @_ZZL12hb_popcount8hE9popcount4, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !280
  %i.ae = zext i8 %i.ad to i32
  %i.af = lshr i32 %i.z, 4
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr @_ZZL12hb_popcount8hE9popcount4, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !280
  %i.aj = zext i8 %i.ai to i32
  %i.ak = add nuw nsw i32 %i.aj, %i.ae
  %i.al = mul nuw nsw i32 %i.ak, %i.p
  %i.am = zext nneg i32 %i.al to i64
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !611
  %i.aq = load i32, ptr %i.k, align 4, !tbaa !653
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [20 x i8], ptr %i.ap, i64 %i.ar
  %i.at = tail call noundef zeroext i1 @_ZNK2OT6Layout9GPOS_impl11ValueFormat11apply_valueEPNS_21hb_ot_apply_context_tEPKNS1_9ValueBaseEPKNS_7NumTypeILb1EtLj2EEER19hb_glyph_position_t(ptr noundef nonnull align 1 dereferenceable(2) %i.v, ptr noundef nonnull %1, ptr noundef nonnull align 1 dereferenceable(10) %0, ptr noundef nonnull %i.an, ptr noundef nonnull align 4 dereferenceable(20) %i.as) ; 0 uses
  %i.au = load i32, ptr %i.k, align 4, !tbaa !653
  %i.av = add i32 %i.au, 1
  store i32 %i.av, ptr %i.k, align 4, !tbaa !653
  br label %_ZN2OT33hb_accelerate_subtables_context_t13apply_cached_INS_6Layout9GPOS_impl16SinglePosFormat2EEEN10_hb_head_tIbJDTclptfp_5applyfp0_EEEE4typeEPKT_PNS_21hb_ot_apply_context_tEPv11hb_priorityILj0EE.exit

_ZN2OT33hb_accelerate_subtables_context_t13apply_cached_INS_6Layout9GPOS_impl16SinglePosFormat2EEEN10_hb_head_tIbJDTclptfp_5applyfp0_EEEE4typeEPKT_PNS_21hb_ot_apply_context_tEPv11hb_priorityILj0EE.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.0.i.i = phi i1 [ true, %bb.c ], [ false, %bb.a ], [ false, %bb.b ]
  ret i1 %.0.i.i
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT33hb_accelerate_subtables_context_t13cache_func_toINS_6Layout9GPOS_impl16SinglePosFormat2EEEbPNS_21hb_ot_apply_context_tENS_25hb_ot_subtable_cache_op_tE(ptr noundef %0, i32 noundef %1) #16 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2OT33hb_accelerate_subtables_context_t15hb_applicable_t4initINS_6Layout9GPOS_impl16PairPosFormat1_3INS3_10SmallTypesEEEEEvRKT_PFbPKvPNS_21hb_ot_apply_context_tEPvESH_PFbSE_NS_25hb_ot_subtable_cache_op_tEESF_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 1 dereferenceable(12) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !1838
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !1835
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %i.b, align 8, !tbaa !1836
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %4, ptr %i.c, align 8, !tbaa !1839
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %5, ptr %i.d, align 8, !tbaa !1404
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false), !tbaa !357
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.g = load i16, ptr %i.f, align 1, !tbaa !283  ; 2 uses
  %i.h = icmp eq i16 %i.g, 0
  %i.i = tail call i16 @llvm.bswap.i16(i16 %i.g)
  %i.j = zext i16 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %i.j
  %.0.i.i.i = select i1 %i.h, ptr @_hb_NullPool, ptr %i.k, !prof !267 ; 5 uses
  %i.l = load i16, ptr %.0.i.i.i, align 1, !tbaa !283
  %i.m = tail call noundef i16 @llvm.bswap.i16(i16 %i.l)
  switch i16 %i.m, label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit [
    i16 1, label %bb.b
    i16 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 2
  %i.o = load i16, ptr %i.n, align 1, !tbaa !283  ; 2 uses
  %i.p = tail call noundef i16 @llvm.bswap.i16(i16 %i.o)
  %.sroa.4.8.extract.trunc.i.i = zext i16 %i.p to i32
  %.not.i.i.i.i.i = icmp eq i16 %i.o, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4
  %.promoted.i.i.i.i.i = load i64, ptr %i.e, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.promoted9.i.i.i.i.i = load i64, ptr %i.r, align 8, !tbaa !357
  %.promoted11.i.i.i.i.i = load i64, ptr %i.s, align 8, !tbaa !357
  br label %bb.c

._crit_edge.i.i.i.i.i:                            ; preds = %bb.c
  store i64 %i.ad, ptr %i.e, align 8, !tbaa !357
  store i64 %i.ah, ptr %i.r, align 8, !tbaa !357
  store i64 %i.am, ptr %i.s, align 8, !tbaa !357
  br label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %i.t = phi i64 [ %.promoted11.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.am, %bb.c ]
  %i.u = phi i64 [ %.promoted9.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.ah, %bb.c ]
  %.08.i.i.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i.i.i ], [ %i.ao, %bb.c ]
  %.067.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i ], [ %i.an, %bb.c ] ; 2 uses
  %i.v = phi i64 [ %.promoted.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.ad, %bb.c ]
  %i.w = load i16, ptr %.067.i.i.i.i.i, align 1, !tbaa !283
  %i.x = tail call noundef i16 @llvm.bswap.i16(i16 %i.w)
  %i.y = zext i16 %i.x to i32                     ; 3 uses
  %i.z = lshr i32 %i.y, 4
  %i.aa = and i32 %i.z, 63
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = shl nuw i64 1, %i.ab
  %i.ad = or i64 %i.ac, %i.v                      ; 2 uses
  %i.ae = and i32 %i.y, 63
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = shl nuw i64 1, %i.af
  %i.ah = or i64 %i.ag, %i.u                      ; 2 uses
  %i.ai = lshr i32 %i.y, 6
  %i.aj = and i32 %i.ai, 63
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = shl nuw i64 1, %i.ak
  %i.am = or i64 %i.al, %i.t                      ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.067.i.i.i.i.i, i64 2
  %i.ao = add nuw i32 %.08.i.i.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i32 %i.ao, %.sroa.4.8.extract.trunc.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %bb.c, !llvm.loop !162

bb.d:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 2
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4 ; 2 uses
  %i.ar = load i16, ptr %i.ap, align 1, !tbaa !283 ; 2 uses
  %i.as = tail call noundef i16 @llvm.bswap.i16(i16 %i.ar)
  %i.at = zext i16 %i.as to i64
  %.idx.i.i = mul nuw nsw i64 %i.at, 6
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.idx.i.i
  %.not14.i.i = icmp eq i16 %i.ar, 0
  br i1 %.not14.i.i, label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %.01115.i.i = phi ptr [ %i.aw, %.lr.ph.i.i ], [ %i.aq, %bb.d ] ; 2 uses
  %i.av = tail call noundef zeroext i1 @_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI15hb_set_digest_tEEbPT_(ptr noundef nonnull align 1 dereferenceable(6) %.01115.i.i, ptr noundef nonnull %i.e)
  %i.aw = getelementptr inbounds nuw i8, ptr %.01115.i.i, i64 6 ; 2 uses
  %.not.i.i = icmp ne ptr %i.aw, %i.au
  %or.cond.not = select i1 %i.av, i1 %.not.i.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i.i, label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit

_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit: ; preds = %.lr.ph.i.i, %bb.a, %bb.b, %._crit_edge.i.i.i.i.i, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT33hb_accelerate_subtables_context_t8apply_toINS_6Layout9GPOS_impl16PairPosFormat1_3INS2_10SmallTypesEEEEEbPKvPNS_21hb_ot_apply_context_tEPv(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16 comdat align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK2OT6Layout9GPOS_impl16PairPosFormat1_3INS0_10SmallTypesEE5applyEPNS_21hb_ot_apply_context_tEPv(ptr noundef nonnull align 1 dereferenceable(12) %0, ptr noundef %1, ptr noundef %2)
  ret i1 %i.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT33hb_accelerate_subtables_context_t15apply_cached_toINS_6Layout9GPOS_impl16PairPosFormat1_3INS2_10SmallTypesEEEEEbPKvPNS_21hb_ot_apply_context_tEPv(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16 comdat align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK2OT6Layout9GPOS_impl16PairPosFormat1_3INS0_10SmallTypesEE5applyEPNS_21hb_ot_apply_context_tEPv(ptr noundef nonnull align 1 dereferenceable(12) %0, ptr noundef %1, ptr noundef %2)
  ret i1 %i.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT33hb_accelerate_subtables_context_t13cache_func_toINS_6Layout9GPOS_impl16PairPosFormat1_3INS2_10SmallTypesEEEEEbPNS_21hb_ot_apply_context_tENS_25hb_ot_subtable_cache_op_tE(ptr noundef %0, i32 noundef %1) #16 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2OT6Layout9GPOS_impl16PairPosFormat1_3INS0_10SmallTypesEE5applyEPNS_21hb_ot_apply_context_tEPv(ptr noundef nonnull align 1 dereferenceable(12) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1278 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.e = load i16, ptr %i.d, align 1, !tbaa !283  ; 2 uses
  %i.f = icmp eq i16 %i.e, 0
  %i.g = tail call i16 @llvm.bswap.i16(i16 %i.e)
  %i.h = zext i16 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %i.h
  %.0.i.i = select i1 %i.f, ptr @_hb_NullPool, ptr %i.i, !prof !267 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 112 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !589
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 92 ; 3 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !653
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [20 x i8], ptr %i.k, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !637  ; 6 uses
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %_ZNK2OT6Layout6Common8Coverage12get_coverageEjP10hb_cache_tILj16ELj8ELj8ELb1EE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = and i32 %i.p, 255
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.r ; 3 uses
  %i.t = load atomic i16, ptr %i.s monotonic, align 2 ; 2 uses
  %i.u = zext i16 %i.t to i32                     ; 2 uses
  %i.v = icmp ne i16 %i.t, -1
  %.not.unshifted.i.i = xor i32 %i.p, %i.u
  %.not.i.i = icmp ult i32 %.not.unshifted.i.i, 256
  %or.cond.i.i = and i1 %i.v, %.not.i.i
  br i1 %or.cond.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.w = and i32 %i.u, 255                        ; 2 uses
  %.not16.i = icmp eq i32 %i.w, 255
  br i1 %.not16.i, label %_ZNK2OT6Layout6Common8Coverage12get_coverageEjP10hb_cache_tILj16ELj8ELj8ELb1EE.exit.thread32, label %_ZNK2OT6Layout6Common8Coverage12get_coverageEjP10hb_cache_tILj16ELj8ELj8ELb1EE.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.x = tail call noundef i32 @_ZNK2OT6Layout6Common8Coverage12get_coverageEj(ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i, i32 noundef %i.p) ; 5 uses
  %i.y = icmp eq i32 %i.x, -1
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = trunc i32 %i.p to i16
  %i.aa = or i16 %i.z, 255
  store atomic i16 %i.aa, ptr %i.s monotonic, align 2
  br label %_ZNK2OT6Layout6Common8Coverage12get_coverageEjP10hb_cache_tILj16ELj8ELj8ELb1EE.exit.thread32

bb.f:                                             ; preds = %bb.d
  %i.ab = icmp ult i32 %i.x, 255
  br i1 %i.ab, label %bb.g, label %_ZNK2OT6Layout6Common8Coverage12get_coverageEjP10hb_cache_tILj16ELj8ELj8ELb1EE.exit.thread, !prof !268

bb.g:                                             ; preds = %bb.f
  %i.ac = and i32 %i.p, 65280
  %i.ad = or disjoint i32 %i.x, %i.ac
  %i.ae = trunc nuw i32 %i.ad to i16
  store atomic i16 %i.ae, ptr %i.s monotonic, align 2
  br label %_ZNK2OT6Layout6Common8Coverage12get_coverageEjP10hb_cache_tILj16ELj8ELj8ELb1EE.exit.thread

_ZNK2OT6Layout6Common8Coverage12get_coverageEjP10hb_cache_tILj16ELj8ELj8ELb1EE.exit: ; preds = %bb.a
  %i.af = tail call noundef i32 @_ZNK2OT6Layout6Common8Coverage12get_coverageEj(ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i, i32 noundef %i.p) ; 2 uses
  %i.ag = icmp eq i32 %i.af, -1
  br i1 %i.ag, label %_ZNK2OT6Layout6Common8Coverage12get_coverageEjP10hb_cache_tILj16ELj8ELj8ELb1EE.exit.thread32, label %_ZNK2OT6Layout6Common8Coverage12get_coverageEjP10hb_cache_tILj16ELj8ELj8ELb1EE.exit.thread

_ZNK2OT6Layout6Common8Coverage12get_coverageEjP10hb_cache_tILj16ELj8ELj8ELb1EE.exit.thread: ; preds = %bb.g, %bb.f, %bb.c, %_ZNK2OT6Layout6Common8Coverage12get_coverageEjP10hb_cache_tILj16ELj8ELj8ELb1EE.exit
  %.0.i30 = phi i32 [ %i.af, %_ZNK2OT6Layout6Common8Coverage12get_coverageEjP10hb_cache_tILj16ELj8ELj8ELb1EE.exit ], [ %i.x, %bb.g ], [ %i.x, %bb.f ], [ %i.w, %bb.c ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ai = load i32, ptr %i.l, align 4, !tbaa !653
  store i32 %i.ai, ptr %i.ah, align 8, !tbaa !1366
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #63
  %i.aj = call noundef zeroext i1 @_ZN2OT19skipping_iterator_tINS_21hb_ot_apply_context_tEE4nextEPj(ptr noundef nonnull align 8 dereferenceable(60) %i.ah, ptr noundef nonnull %i.a)
  br i1 %i.aj, label %bb.k, label %bb.h, !prof !268

bb.h:                                             ; preds = %_ZNK2OT6Layout6Common8Coverage12get_coverageEjP10hb_cache_tILj16ELj8ELj8ELb1EE.exit.thread
  %i.ak = load i32, ptr %i.l, align 4, !tbaa !653 ; 3 uses
  %i.al = load i32, ptr %i.a, align 4, !tbaa !324 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.an = load i32, ptr %i.am, align 8, !tbaa !587
  %i.ao = and i32 %i.an, 64
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %_ZN11hb_buffer_t16unsafe_to_concatEjj.exit, label %bb.i, !prof !268

bb.i:                                             ; preds = %bb.h
  %i.aq = icmp ne i32 %i.al, -1
  %i.ar = sub i32 %i.al, %i.ak
  %i.as = icmp ugt i32 %i.ar, 255
  %i.at = and i1 %i.aq, %i.as
  br i1 %i.at, label %_ZN11hb_buffer_t16unsafe_to_concatEjj.exit, label %bb.j, !prof !267

bb.j:                                             ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.av = load i32, ptr %i.au, align 8, !tbaa !324
  %.sroa.speculated = call i32 @llvm.umin.i32(i32 %i.al, i32 %i.av) ; 2 uses
  %i.aw = icmp ult i32 %i.ak, %.sroa.speculated
  br i1 %i.aw, label %.lr.ph.i, label %_ZN11hb_buffer_t16unsafe_to_concatEjj.exit

.lr.ph.i:                                         ; preds = %bb.j
  %i.ax = load ptr, ptr %i.j, align 8, !tbaa !589 ; 5 uses
  %i.ay = zext i32 %i.ak to i64                   ; 4 uses
  %wide.trip.count.i = zext i32 %.sroa.speculated to i64 ; 3 uses
  %i.az = sub nsw i64 %wide.trip.count.i, %i.ay
  %xtraiter = and i64 %i.az, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i, %.prol.preheader
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.prol.preheader ], [ %i.ay, %.lr.ph.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i ]
  %i.ba = getelementptr inbounds nuw [20 x i8], ptr %i.ax, i64 %indvars.iv.i.prol
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 4 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !591
  %i.bd = or i32 %i.bc, 2
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !591
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !5972

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i
  %indvars.iv.i.unr = phi i64 [ %i.ay, %.lr.ph.i ], [ %indvars.iv.next.i.prol, %.prol.preheader ]
  %i.be = sub nsw i64 %i.ay, %wide.trip.count.i
  %i.bf = icmp ugt i64 %i.be, -4
  br i1 %i.bf, label %_ZN11hb_buffer_t16unsafe_to_concatEjj.exit, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i.new ], [ %indvars.iv.i.unr, %.prol.loopexit ] ; 5 uses
  %i.bg = getelementptr inbounds nuw [20 x i8], ptr %i.ax, i64 %indvars.iv.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 4 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !591
  %i.bj = or i32 %i.bi, 2
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !591
  %i.bk = getelementptr inbounds nuw [20 x i8], ptr %i.ax, i64 %indvars.iv.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !591
  %i.bn = or i32 %i.bm, 2
  store i32 %i.bn, ptr %i.bl, align 4, !tbaa !591
  %i.bo = getelementptr inbounds nuw [20 x i8], ptr %i.ax, i64 %indvars.iv.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 44 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !591
  %i.br = or i32 %i.bq, 2
  store i32 %i.br, ptr %i.bp, align 4, !tbaa !591
  %i.bs = getelementptr inbounds nuw [20 x i8], ptr %i.ax, i64 %indvars.iv.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 64 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !591
  %i.bv = or i32 %i.bu, 2
  store i32 %i.bv, ptr %i.bt, align 4, !tbaa !591
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %_ZN11hb_buffer_t16unsafe_to_concatEjj.exit, label %.lr.ph.i.new, !llvm.loop !16

end_hunk_13
begin_hunk_14_@_ZNK2OT6Layout9GPOS_impl7PairSetINS0_10SmallTypesEE5applyEPNS_21hb_ot_apply_context_tEPKNS1_11ValueFormatEj:bb.a
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !324
  %.sroa.speculated.i = tail call i32 @llvm.umin.i32(i32 %i.bx, i32 %i.cd) ; 2 uses
  %i.ce = sub i32 %.sroa.speculated.i, %i.bw
  %i.cf = icmp ult i32 %i.ce, 2
  br i1 %i.cf, label %_ZN11hb_buffer_t15unsafe_to_breakEjj.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN11hb_buffer_t21_set_glyph_flags_implEjjjbb(ptr noundef nonnull align 8 dereferenceable(276) %i.b, i32 noundef 3, i32 noundef %i.bw, i32 noundef %.sroa.speculated.i, i1 noundef zeroext true, i1 noundef zeroext false)
  br label %_ZN11hb_buffer_t15unsafe_to_breakEjj.exit

_ZN11hb_buffer_t15unsafe_to_breakEjj.exit:        ; preds = %bb.j, %bb.i, %bb.h
  br i1 %.not4564, label %_ZN11hb_buffer_t15unsafe_to_breakEjj.exit49, label %_ZN11hb_buffer_t15unsafe_to_breakEjj.exit.thread56

_ZN11hb_buffer_t15unsafe_to_breakEjj.exit.thread56: ; preds = %.split._ZN11hb_buffer_t15unsafe_to_breakEjj.exit.thread56_crit_edge, %_ZN11hb_buffer_t15unsafe_to_breakEjj.exit
  %.pre-phi = phi i32 [ %.pre, %.split._ZN11hb_buffer_t15unsafe_to_breakEjj.exit.thread56_crit_edge ], [ %i.bx, %_ZN11hb_buffer_t15unsafe_to_breakEjj.exit ] ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 92
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !653 ; 3 uses
  %i.ci = add i32 %3, 2                           ; 3 uses
  %i.cj = icmp ne i32 %i.ci, -1
  %i.ck = sub i32 %i.ci, %i.ch
  %i.cl = icmp ugt i32 %i.ck, 255
  %i.cm = and i1 %i.cj, %i.cl
  br i1 %i.cm, label %_ZN11hb_buffer_t15unsafe_to_breakEjj.exit49, label %bb.k, !prof !267

bb.k:                                             ; preds = %_ZN11hb_buffer_t15unsafe_to_breakEjj.exit.thread56
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !324
  %.sroa.speculated.i47 = tail call i32 @llvm.umin.i32(i32 %i.ci, i32 %i.co) ; 2 uses
  %i.cp = sub i32 %.sroa.speculated.i47, %i.ch
  %i.cq = icmp ult i32 %i.cp, 2
  br i1 %i.cq, label %_ZN11hb_buffer_t15unsafe_to_breakEjj.exit49, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN11hb_buffer_t21_set_glyph_flags_implEjjjbb(ptr noundef nonnull align 8 dereferenceable(276) %i.b, i32 noundef 3, i32 noundef %i.ch, i32 noundef %.sroa.speculated.i47, i1 noundef zeroext true, i1 noundef zeroext false)
  br label %_ZN11hb_buffer_t15unsafe_to_breakEjj.exit49

_ZN11hb_buffer_t15unsafe_to_breakEjj.exit49:      ; preds = %.thread, %bb.g, %bb.l, %bb.k, %_ZN11hb_buffer_t15unsafe_to_breakEjj.exit.thread56, %_ZN11hb_buffer_t15unsafe_to_breakEjj.exit
  %.0 = phi i32 [ %.pre-phi, %bb.l ], [ %3, %_ZN11hb_buffer_t15unsafe_to_breakEjj.exit ], [ %.pre-phi, %_ZN11hb_buffer_t15unsafe_to_breakEjj.exit.thread56 ], [ %.pre-phi, %bb.k ], [ %3, %bb.g ], [ %3, %.thread ]
  %i.cr = getelementptr inbounds nuw i8, ptr %i.b, i64 92
  store i32 %.0, ptr %i.cr, align 4, !tbaa !653
  br label %_ZN11hb_buffer_t16unsafe_to_concatEjj.exit

.loopexit:                                        ; preds = %bb.e, %bb.a
  %i.cs = getelementptr inbounds nuw i8, ptr %i.b, i64 92
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !653 ; 3 uses
  %i.cu = add i32 %3, 1                           ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !587
  %i.cx = and i32 %i.cw, 64
  %i.cy = icmp eq i32 %i.cx, 0
  br i1 %i.cy, label %_ZN11hb_buffer_t16unsafe_to_concatEjj.exit, label %bb.m, !prof !268

bb.m:                                             ; preds = %.loopexit
  %i.cz = icmp ne i32 %i.cu, -1
  %i.da = sub i32 %i.cu, %i.ct
  %i.db = icmp ugt i32 %i.da, 255
  %i.dc = and i1 %i.cz, %i.db
  br i1 %i.dc, label %_ZN11hb_buffer_t16unsafe_to_concatEjj.exit, label %bb.n, !prof !267

bb.n:                                             ; preds = %bb.m
  %i.dd = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !324
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %i.cu, i32 %i.de) ; 2 uses
  %i.df = icmp ult i32 %i.ct, %.sroa.speculated
  br i1 %i.df, label %.lr.ph.i, label %_ZN11hb_buffer_t16unsafe_to_concatEjj.exit

.lr.ph.i:                                         ; preds = %bb.n
  %i.dg = zext i32 %i.ct to i64                   ; 4 uses
  %wide.trip.count.i = zext i32 %.sroa.speculated to i64 ; 3 uses
  %i.dh = sub nsw i64 %wide.trip.count.i, %i.dg
  %xtraiter = and i64 %i.dh, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i, %.prol.preheader
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.prol.preheader ], [ %i.dg, %.lr.ph.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i ]
  %i.di = getelementptr inbounds nuw [20 x i8], ptr %i.ak, i64 %indvars.iv.i.prol
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 4 ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !591
  %i.dl = or i32 %i.dk, 2
  store i32 %i.dl, ptr %i.dj, align 4, !tbaa !591
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !5974

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i
  %indvars.iv.i.unr = phi i64 [ %i.dg, %.lr.ph.i ], [ %indvars.iv.next.i.prol, %.prol.preheader ]
  %i.dm = sub nsw i64 %i.dg, %wide.trip.count.i
  %i.dn = icmp ugt i64 %i.dm, -4
  br i1 %i.dn, label %_ZN11hb_buffer_t16unsafe_to_concatEjj.exit, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i.new ], [ %indvars.iv.i.unr, %.prol.loopexit ] ; 5 uses
  %i.do = getelementptr inbounds nuw [20 x i8], ptr %i.ak, i64 %indvars.iv.i
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 4 ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !591
  %i.dr = or i32 %i.dq, 2
  store i32 %i.dr, ptr %i.dp, align 4, !tbaa !591
  %i.ds = getelementptr inbounds nuw [20 x i8], ptr %i.ak, i64 %indvars.iv.i
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 24 ; 2 uses
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !591
  %i.dv = or i32 %i.du, 2
  store i32 %i.dv, ptr %i.dt, align 4, !tbaa !591
  %i.dw = getelementptr inbounds nuw [20 x i8], ptr %i.ak, i64 %indvars.iv.i
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 44 ; 2 uses
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !591
  %i.dz = or i32 %i.dy, 2
  store i32 %i.dz, ptr %i.dx, align 4, !tbaa !591
  %i.ea = getelementptr inbounds nuw [20 x i8], ptr %i.ak, i64 %indvars.iv.i
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 64 ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !591
  %i.ed = or i32 %i.ec, 2
  store i32 %i.ed, ptr %i.eb, align 4, !tbaa !591
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %_ZN11hb_buffer_t16unsafe_to_concatEjj.exit, label %.lr.ph.i.new, !llvm.loop !16

_ZN11hb_buffer_t16unsafe_to_concatEjj.exit:       ; preds = %.prol.loopexit, %.lr.ph.i.new, %.loopexit, %bb.n, %bb.m, %_ZN11hb_buffer_t15unsafe_to_breakEjj.exit49
  %.042 = phi i1 [ true, %_ZN11hb_buffer_t15unsafe_to_breakEjj.exit49 ], [ false, %bb.m ], [ false, %bb.n ], [ false, %.loopexit ], [ false, %.lr.ph.i.new ], [ false, %.prol.loopexit ]
  ret i1 %.042
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2OT33hb_accelerate_subtables_context_t15hb_applicable_t4initINS_6Layout9GPOS_impl16PairPosFormat2_4INS3_10SmallTypesEEEEEvRKT_PFbPKvPNS_21hb_ot_apply_context_tEPvESH_PFbSE_NS_25hb_ot_subtable_cache_op_tEESF_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 1 dereferenceable(18) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !1838
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !1835
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %i.b, align 8, !tbaa !1836
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %4, ptr %i.c, align 8, !tbaa !1839
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %5, ptr %i.d, align 8, !tbaa !1404
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false), !tbaa !357
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.g = load i16, ptr %i.f, align 1, !tbaa !283  ; 2 uses
  %i.h = icmp eq i16 %i.g, 0
  %i.i = tail call i16 @llvm.bswap.i16(i16 %i.g)
  %i.j = zext i16 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %i.j
  %.0.i.i.i = select i1 %i.h, ptr @_hb_NullPool, ptr %i.k, !prof !267 ; 5 uses
  %i.l = load i16, ptr %.0.i.i.i, align 1, !tbaa !283
  %i.m = tail call noundef i16 @llvm.bswap.i16(i16 %i.l)
  switch i16 %i.m, label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit [
    i16 1, label %bb.b
    i16 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 2
  %i.o = load i16, ptr %i.n, align 1, !tbaa !283  ; 2 uses
  %i.p = tail call noundef i16 @llvm.bswap.i16(i16 %i.o)
  %.sroa.4.8.extract.trunc.i.i = zext i16 %i.p to i32
  %.not.i.i.i.i.i = icmp eq i16 %i.o, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4
  %.promoted.i.i.i.i.i = load i64, ptr %i.e, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.promoted9.i.i.i.i.i = load i64, ptr %i.r, align 8, !tbaa !357
  %.promoted11.i.i.i.i.i = load i64, ptr %i.s, align 8, !tbaa !357
  br label %bb.c

._crit_edge.i.i.i.i.i:                            ; preds = %bb.c
  store i64 %i.ad, ptr %i.e, align 8, !tbaa !357
  store i64 %i.ah, ptr %i.r, align 8, !tbaa !357
  store i64 %i.am, ptr %i.s, align 8, !tbaa !357
  br label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %i.t = phi i64 [ %.promoted11.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.am, %bb.c ]
  %i.u = phi i64 [ %.promoted9.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.ah, %bb.c ]
  %.08.i.i.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i.i.i ], [ %i.ao, %bb.c ]
  %.067.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i ], [ %i.an, %bb.c ] ; 2 uses
  %i.v = phi i64 [ %.promoted.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.ad, %bb.c ]
  %i.w = load i16, ptr %.067.i.i.i.i.i, align 1, !tbaa !283
  %i.x = tail call noundef i16 @llvm.bswap.i16(i16 %i.w)
  %i.y = zext i16 %i.x to i32                     ; 3 uses
  %i.z = lshr i32 %i.y, 4
  %i.aa = and i32 %i.z, 63
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = shl nuw i64 1, %i.ab
  %i.ad = or i64 %i.ac, %i.v                      ; 2 uses
  %i.ae = and i32 %i.y, 63
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = shl nuw i64 1, %i.af
  %i.ah = or i64 %i.ag, %i.u                      ; 2 uses
  %i.ai = lshr i32 %i.y, 6
  %i.aj = and i32 %i.ai, 63
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = shl nuw i64 1, %i.ak
  %i.am = or i64 %i.al, %i.t                      ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.067.i.i.i.i.i, i64 2
  %i.ao = add nuw i32 %.08.i.i.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i32 %i.ao, %.sroa.4.8.extract.trunc.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %bb.c, !llvm.loop !162

bb.d:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 2
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4 ; 2 uses
  %i.ar = load i16, ptr %i.ap, align 1, !tbaa !283 ; 2 uses
  %i.as = tail call noundef i16 @llvm.bswap.i16(i16 %i.ar)
  %i.at = zext i16 %i.as to i64
  %.idx.i.i = mul nuw nsw i64 %i.at, 6
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.idx.i.i
  %.not14.i.i = icmp eq i16 %i.ar, 0
  br i1 %.not14.i.i, label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %.01115.i.i = phi ptr [ %i.aw, %.lr.ph.i.i ], [ %i.aq, %bb.d ] ; 2 uses
  %i.av = tail call noundef zeroext i1 @_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI15hb_set_digest_tEEbPT_(ptr noundef nonnull align 1 dereferenceable(6) %.01115.i.i, ptr noundef nonnull %i.e)
  %i.aw = getelementptr inbounds nuw i8, ptr %.01115.i.i, i64 6 ; 2 uses
  %.not.i.i = icmp ne ptr %i.aw, %i.au
  %or.cond.not = select i1 %i.av, i1 %.not.i.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i.i, label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit

_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit: ; preds = %.lr.ph.i.i, %bb.a, %bb.b, %._crit_edge.i.i.i.i.i, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT33hb_accelerate_subtables_context_t8apply_toINS_6Layout9GPOS_impl16PairPosFormat2_4INS2_10SmallTypesEEEEEbPKvPNS_21hb_ot_apply_context_tEPv(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16 comdat align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK2OT6Layout9GPOS_impl16PairPosFormat2_4INS0_10SmallTypesEE5applyEPNS_21hb_ot_apply_context_tEPv(ptr noundef nonnull align 1 dereferenceable(18) %0, ptr noundef %1, ptr noundef %2)
  ret i1 %i.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT33hb_accelerate_subtables_context_t15apply_cached_toINS_6Layout9GPOS_impl16PairPosFormat2_4INS2_10SmallTypesEEEEEbPKvPNS_21hb_ot_apply_context_tEPv(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16 comdat align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK2OT6Layout9GPOS_impl16PairPosFormat2_4INS0_10SmallTypesEE5applyEPNS_21hb_ot_apply_context_tEPv(ptr noundef nonnull align 1 dereferenceable(18) %0, ptr noundef %1, ptr noundef %2)
  ret i1 %i.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT33hb_accelerate_subtables_context_t13cache_func_toINS_6Layout9GPOS_impl16PairPosFormat2_4INS2_10SmallTypesEEEEEbPNS_21hb_ot_apply_context_tENS_25hb_ot_subtable_cache_op_tE(ptr noundef %0, i32 noundef %1) #16 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2OT6Layout9GPOS_impl16PairPosFormat2_4INS0_10SmallTypesEE5applyEPNS_21hb_ot_apply_context_tEPv(ptr noundef nonnull align 1 dereferenceable(18) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1278 ; 14 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.e = load i16, ptr %i.d, align 1, !tbaa !283  ; 2 uses
  %i.f = icmp eq i16 %i.e, 0
  %i.g = tail call i16 @llvm.bswap.i16(i16 %i.e)
  %i.h = zext i16 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %i.h
  %.0.i.i = select i1 %i.f, ptr @_hb_NullPool, ptr %i.i, !prof !267 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 112 ; 6 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !589
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 92 ; 10 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !653
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [20 x i8], ptr %i.k, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !637  ; 6 uses
  %.not = icmp eq ptr %2, null                    ; 3 uses
  br i1 %.not, label %_ZNK2OT6Layout6Common8Coverage12get_coverageEjP10hb_cache_tILj16ELj8ELj8ELb1EE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = and i32 %i.p, 255
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.r ; 3 uses
  %i.t = load atomic i16, ptr %i.s monotonic, align 2 ; 2 uses
  %i.u = zext i16 %i.t to i32                     ; 2 uses
  %i.v = icmp ne i16 %i.t, -1
  %.not.unshifted.i.i = xor i32 %i.p, %i.u
  %.not.i.i = icmp ult i32 %.not.unshifted.i.i, 256
  %or.cond.i.i = and i1 %i.v, %.not.i.i
  br i1 %or.cond.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.w = and i32 %i.u, 255
  %.not16.i = icmp eq i32 %i.w, 255
  br i1 %.not16.i, label %_ZNK2OT6Layout6Common8Coverage12get_coverageEjP10hb_cache_tILj16ELj8ELj8ELb1EE.exit.thread114, label %_ZNK2OT6Layout6Common8Coverage12get_coverageEjP10hb_cache_tILj16ELj8ELj8ELb1EE.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.x = tail call noundef i32 @_ZNK2OT6Layout6Common8Coverage12get_coverageEj(ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i, i32 noundef %i.p) ; 3 uses
  %i.y = icmp eq i32 %i.x, -1
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = trunc i32 %i.p to i16
  %i.aa = or i16 %i.z, 255
  store atomic i16 %i.aa, ptr %i.s monotonic, align 2
  br label %_ZNK2OT6Layout6Common8Coverage12get_coverageEjP10hb_cache_tILj16ELj8ELj8ELb1EE.exit.thread114

bb.f:                                             ; preds = %bb.d
  %i.ab = icmp ult i32 %i.x, 255
  br i1 %i.ab, label %bb.g, label %_ZNK2OT6Layout6Common8Coverage12get_coverageEjP10hb_cache_tILj16ELj8ELj8ELb1EE.exit.thread, !prof !268

bb.g:                                             ; preds = %bb.f
  %i.ac = and i32 %i.p, 65280
  %i.ad = or disjoint i32 %i.x, %i.ac
  %i.ae = trunc nuw i32 %i.ad to i16
  store atomic i16 %i.ae, ptr %i.s monotonic, align 2
  br label %_ZNK2OT6Layout6Common8Coverage12get_coverageEjP10hb_cache_tILj16ELj8ELj8ELb1EE.exit.thread

_ZNK2OT6Layout6Common8Coverage12get_coverageEjP10hb_cache_tILj16ELj8ELj8ELb1EE.exit: ; preds = %bb.a
  %i.af = tail call noundef i32 @_ZNK2OT6Layout6Common8Coverage12get_coverageEj(ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i, i32 noundef %i.p)
  %i.ag = icmp eq i32 %i.af, -1
  br i1 %i.ag, label %_ZNK2OT6Layout6Common8Coverage12get_coverageEjP10hb_cache_tILj16ELj8ELj8ELb1EE.exit.thread114, label %_ZNK2OT6Layout6Common8Coverage12get_coverageEjP10hb_cache_tILj16ELj8ELj8ELb1EE.exit.thread

_ZNK2OT6Layout6Common8Coverage12get_coverageEjP10hb_cache_tILj16ELj8ELj8ELb1EE.exit.thread: ; preds = %bb.g, %bb.f, %bb.c, %_ZNK2OT6Layout6Common8Coverage12get_coverageEjP10hb_cache_tILj16ELj8ELj8ELb1EE.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 10 uses
  %i.ai = load i32, ptr %i.l, align 4, !tbaa !653
  store i32 %i.ai, ptr %i.ah, align 8, !tbaa !1366
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #63
  %i.aj = call noundef zeroext i1 @_ZN2OT19skipping_iterator_tINS_21hb_ot_apply_context_tEE4nextEPj(ptr noundef nonnull align 8 dereferenceable(60) %i.ah, ptr noundef nonnull %i.a)
  br i1 %i.aj, label %bb.k, label %bb.h, !prof !268

bb.h:                                             ; preds = %_ZNK2OT6Layout6Common8Coverage12get_coverageEjP10hb_cache_tILj16ELj8ELj8ELb1EE.exit.thread
  %i.ak = load i32, ptr %i.l, align 4, !tbaa !653 ; 3 uses
  %i.al = load i32, ptr %i.a, align 4, !tbaa !324 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.an = load i32, ptr %i.am, align 8, !tbaa !587
  %i.ao = and i32 %i.an, 64
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %_ZN11hb_buffer_t16unsafe_to_concatEjj.exit66, label %bb.i, !prof !268

bb.i:                                             ; preds = %bb.h
  %i.aq = icmp ne i32 %i.al, -1
  %i.ar = sub i32 %i.al, %i.ak
  %i.as = icmp ugt i32 %i.ar, 255
  %i.at = and i1 %i.aq, %i.as
  br i1 %i.at, label %_ZN11hb_buffer_t16unsafe_to_concatEjj.exit66, label %bb.j, !prof !267

bb.j:                                             ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.av = load i32, ptr %i.au, align 8, !tbaa !324
  %.sroa.speculated108 = call i32 @llvm.umin.i32(i32 %i.al, i32 %i.av) ; 2 uses
  %i.aw = icmp ult i32 %i.ak, %.sroa.speculated108
  br i1 %i.aw, label %.lr.ph.i, label %_ZN11hb_buffer_t16unsafe_to_concatEjj.exit66

.lr.ph.i:                                         ; preds = %bb.j
  %i.ax = load ptr, ptr %i.j, align 8, !tbaa !589 ; 5 uses
  %i.ay = zext i32 %i.ak to i64                   ; 4 uses
  %wide.trip.count.i = zext i32 %.sroa.speculated108 to i64 ; 3 uses
  %i.az = sub nsw i64 %wide.trip.count.i, %i.ay
  %xtraiter = and i64 %i.az, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i, %.prol.preheader
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.prol.preheader ], [ %i.ay, %.lr.ph.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i ]
  %i.ba = getelementptr inbounds nuw [20 x i8], ptr %i.ax, i64 %indvars.iv.i.prol
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 4 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !591
  %i.bd = or i32 %i.bc, 2
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !591
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !5975

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i
  %indvars.iv.i.unr = phi i64 [ %i.ay, %.lr.ph.i ], [ %indvars.iv.next.i.prol, %.prol.preheader ]
  %i.be = sub nsw i64 %i.ay, %wide.trip.count.i
  %i.bf = icmp ugt i64 %i.be, -4
  br i1 %i.bf, label %_ZN11hb_buffer_t16unsafe_to_concatEjj.exit66, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i.new ], [ %indvars.iv.i.unr, %.prol.loopexit ] ; 5 uses
  %i.bg = getelementptr inbounds nuw [20 x i8], ptr %i.ax, i64 %indvars.iv.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 4 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !591
  %i.bj = or i32 %i.bi, 2
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !591
  %i.bk = getelementptr inbounds nuw [20 x i8], ptr %i.ax, i64 %indvars.iv.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !591
  %i.bn = or i32 %i.bm, 2
  store i32 %i.bn, ptr %i.bl, align 4, !tbaa !591
  %i.bo = getelementptr inbounds nuw [20 x i8], ptr %i.ax, i64 %indvars.iv.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 44 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !591
  %i.br = or i32 %i.bq, 2
  store i32 %i.br, ptr %i.bp, align 4, !tbaa !591
  %i.bs = getelementptr inbounds nuw [20 x i8], ptr %i.ax, i64 %indvars.iv.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 64 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !591
  %i.bv = or i32 %i.bu, 2
  store i32 %i.bv, ptr %i.bt, align 4, !tbaa !591
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %_ZN11hb_buffer_t16unsafe_to_concatEjj.exit66, label %.lr.ph.i.new, !llvm.loop !16

bb.k:                                             ; preds = %_ZNK2OT6Layout6Common8Coverage12get_coverageEjP10hb_cache_tILj16ELj8ELj8ELb1EE.exit.thread
end_hunk_14
begin_hunk_15_@_ZNK2OT8ClassDef9get_classEjP10hb_cache_tILj16ELj8ELj8ELb1EE:bb.a
  %i.av = tail call noundef i16 @llvm.bswap.i16(i16 %i.au)
  br label %bb.h

bb.h:                                             ; preds = %_ZNK2OT17ClassDefFormat2_4INS_6Layout10SmallTypesEE9get_classEj.exit.i, %_ZNK2OT17ClassDefFormat1_3INS_6Layout10SmallTypesEE9get_classEj.exit.i, %_ZNK10hb_cache_tILj16ELj8ELj8ELb1EE3getEjPj.exit
  %.0.shrunk.i = phi i16 [ %i.av, %_ZNK2OT17ClassDefFormat2_4INS_6Layout10SmallTypesEE9get_classEj.exit.i ], [ %i.w, %_ZNK2OT17ClassDefFormat1_3INS_6Layout10SmallTypesEE9get_classEj.exit.i ], [ 0, %_ZNK10hb_cache_tILj16ELj8ELj8ELb1EE3getEjPj.exit ] ; 3 uses
  %.0.i = zext i16 %.0.shrunk.i to i32            ; 2 uses
  %i.aw = icmp ugt i32 %1, 65535
  %i.ax = icmp ugt i16 %.0.shrunk.i, 255
  %i.ay = or i1 %i.aw, %i.ax
  br i1 %i.ay, label %_ZN10hb_cache_tILj16ELj8ELj8ELb1EE3setEjj.exit, label %bb.i, !prof !267

bb.i:                                             ; preds = %bb.h
  %i.az = trunc nuw i32 %1 to i16
  %i.ba = and i16 %i.az, -256
  %i.bb = or disjoint i16 %.0.shrunk.i, %i.ba
  store atomic i16 %i.bb, ptr %i.c monotonic, align 2
  br label %_ZN10hb_cache_tILj16ELj8ELj8ELb1EE3setEjj.exit

.critedge:                                        ; preds = %bb.a
  %i.bc = load i16, ptr %0, align 1, !tbaa !283
  %i.bd = tail call noundef i16 @llvm.bswap.i16(i16 %i.bc)
  switch i16 %i.bd, label %_ZNK2OT8ClassDef9get_classEj.exit28 [
    i16 1, label %bb.j
    i16 2, label %bb.l
  ]

bb.j:                                             ; preds = %.critedge
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.bg = load i16, ptr %i.bf, align 1, !tbaa !283
  %i.bh = tail call noundef i16 @llvm.bswap.i16(i16 %i.bg)
  %i.bi = zext i16 %i.bh to i32
  %i.bj = sub i32 %1, %i.bi                       ; 2 uses
  %i.bk = load i16, ptr %i.be, align 1, !tbaa !283
  %i.bl = tail call noundef i16 @llvm.bswap.i16(i16 %i.bk)
  %i.bm = zext i16 %i.bl to i32
  %.not.i.i.i25 = icmp ult i32 %i.bj, %i.bm
  br i1 %.not.i.i.i25, label %bb.k, label %_ZNK2OT17ClassDefFormat1_3INS_6Layout10SmallTypesEE9get_classEj.exit.i26, !prof !268

bb.k:                                             ; preds = %bb.j
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.bo = zext nneg i32 %i.bj to i64
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %i.bn, i64 %i.bo
  br label %_ZNK2OT17ClassDefFormat1_3INS_6Layout10SmallTypesEE9get_classEj.exit.i26

_ZNK2OT17ClassDefFormat1_3INS_6Layout10SmallTypesEE9get_classEj.exit.i26: ; preds = %bb.k, %bb.j
  %.0.i.i.i27 = phi ptr [ %i.bp, %bb.k ], [ @_hb_NullPool, %bb.j ]
  %i.bq = load i16, ptr %.0.i.i.i27, align 1, !tbaa !283
  %i.br = tail call noundef i16 @llvm.bswap.i16(i16 %i.bq)
  br label %_ZNK2OT8ClassDef9get_classEj.exit28

bb.l:                                             ; preds = %.critedge
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.bu = load i16, ptr %i.bs, align 1, !tbaa !283 ; 2 uses
  %.not1.i.i.i.i.not.i.i.i9 = icmp eq i16 %i.bu, 0
  br i1 %.not1.i.i.i.i.not.i.i.i9, label %_ZNK2OT17ClassDefFormat2_4INS_6Layout10SmallTypesEE9get_classEj.exit.i18, label %.lr.ph.preheader.i.i.i.i.i.i.i10

.lr.ph.preheader.i.i.i.i.i.i.i10:                 ; preds = %bb.l
  %i.bv = tail call noundef i16 @llvm.bswap.i16(i16 %i.bu)
  %.sroa.4.8.extract.trunc.i.i.i11 = zext i16 %i.bv to i32
  %i.bw = add nsw i32 %.sroa.4.8.extract.trunc.i.i.i11, -1
  br label %.lr.ph.i.i.i.i.i.i.i12

.lr.ph.i.i.i.i.i.i.i12:                           ; preds = %bb.n, %.lr.ph.preheader.i.i.i.i.i.i.i10
  %.0203.i.i.i.i.i.i.i13 = phi i32 [ %.2.i.i.i.i.i.i.i22, %bb.n ], [ %i.bw, %.lr.ph.preheader.i.i.i.i.i.i.i10 ] ; 2 uses
  %.0212.i.i.i.i.i.i.i14 = phi i32 [ %.223.i.i.i.i.i.i.i21, %bb.n ], [ 0, %.lr.ph.preheader.i.i.i.i.i.i.i10 ] ; 2 uses
  %i.bx = add i32 %.0212.i.i.i.i.i.i.i14, %.0203.i.i.i.i.i.i.i13
  %i.by = lshr i32 %i.bx, 1                       ; 3 uses
  %i.bz = zext nneg i32 %i.by to i64              ; 2 uses
  %i.ca = mul nuw nsw i64 %i.bz, 6
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.ca ; 2 uses
  %i.cc = load i16, ptr %i.cb, align 1, !tbaa !283
  %i.cd = tail call noundef i16 @llvm.bswap.i16(i16 %i.cc)
  %i.ce = zext i16 %i.cd to i32
  %i.cf = icmp ult i32 %1, %i.ce
  br i1 %i.cf, label %_ZL14_hb_cmp_methodIjKN2OT6Layout6Common11RangeRecordINS1_10SmallTypesEEEJEEiPKvS8_DpT1_.exit.thread.i.i.i.i.i.i.i24, label %_ZL14_hb_cmp_methodIjKN2OT6Layout6Common11RangeRecordINS1_10SmallTypesEEEJEEiPKvS8_DpT1_.exit.i.i.i.i.i.i.i15

_ZL14_hb_cmp_methodIjKN2OT6Layout6Common11RangeRecordINS1_10SmallTypesEEEJEEiPKvS8_DpT1_.exit.i.i.i.i.i.i.i15: ; preds = %.lr.ph.i.i.i.i.i.i.i12
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 2
  %i.ch = load i16, ptr %i.cg, align 1, !tbaa !283
  %i.ci = tail call noundef i16 @llvm.bswap.i16(i16 %i.ch)
  %i.cj = zext i16 %i.ci to i32
  %.not.i.i.not.i.i.i.i.i.i.i16 = icmp ugt i32 %1, %i.cj
  br i1 %.not.i.i.not.i.i.i.i.i.i.i16, label %bb.m, label %_ZNK17hb_sorted_array_tIKN2OT6Layout6Common11RangeRecordINS1_10SmallTypesEEEE5bfindIjEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i17

_ZL14_hb_cmp_methodIjKN2OT6Layout6Common11RangeRecordINS1_10SmallTypesEEEJEEiPKvS8_DpT1_.exit.thread.i.i.i.i.i.i.i24: ; preds = %.lr.ph.i.i.i.i.i.i.i12
  %i.ck = add nsw i32 %i.by, -1
  br label %bb.n

bb.m:                                             ; preds = %_ZL14_hb_cmp_methodIjKN2OT6Layout6Common11RangeRecordINS1_10SmallTypesEEEJEEiPKvS8_DpT1_.exit.i.i.i.i.i.i.i15
  %i.cl = add nuw nsw i32 %i.by, 1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZL14_hb_cmp_methodIjKN2OT6Layout6Common11RangeRecordINS1_10SmallTypesEEEJEEiPKvS8_DpT1_.exit.thread.i.i.i.i.i.i.i24
  %.223.i.i.i.i.i.i.i21 = phi i32 [ %i.cl, %bb.m ], [ %.0212.i.i.i.i.i.i.i14, %_ZL14_hb_cmp_methodIjKN2OT6Layout6Common11RangeRecordINS1_10SmallTypesEEEJEEiPKvS8_DpT1_.exit.thread.i.i.i.i.i.i.i24 ] ; 2 uses
  %.2.i.i.i.i.i.i.i22 = phi i32 [ %.0203.i.i.i.i.i.i.i13, %bb.m ], [ %i.ck, %_ZL14_hb_cmp_methodIjKN2OT6Layout6Common11RangeRecordINS1_10SmallTypesEEEJEEiPKvS8_DpT1_.exit.thread.i.i.i.i.i.i.i24 ] ; 2 uses
  %.not.not.i.i.i.i.i.i.i23 = icmp sgt i32 %.223.i.i.i.i.i.i.i21, %.2.i.i.i.i.i.i.i22
  br i1 %.not.not.i.i.i.i.i.i.i23, label %_ZNK2OT17ClassDefFormat2_4INS_6Layout10SmallTypesEE9get_classEj.exit.i18, label %.lr.ph.i.i.i.i.i.i.i12, !llvm.loop !4

_ZNK17hb_sorted_array_tIKN2OT6Layout6Common11RangeRecordINS1_10SmallTypesEEEE5bfindIjEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i17: ; preds = %_ZL14_hb_cmp_methodIjKN2OT6Layout6Common11RangeRecordINS1_10SmallTypesEEEJEEiPKvS8_DpT1_.exit.i.i.i.i.i.i.i15
  %i.cm = getelementptr inbounds nuw [6 x i8], ptr %i.bt, i64 %i.bz
  br label %_ZNK2OT17ClassDefFormat2_4INS_6Layout10SmallTypesEE9get_classEj.exit.i18

_ZNK2OT17ClassDefFormat2_4INS_6Layout10SmallTypesEE9get_classEj.exit.i18: ; preds = %bb.n, %_ZNK17hb_sorted_array_tIKN2OT6Layout6Common11RangeRecordINS1_10SmallTypesEEEE5bfindIjEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i17, %bb.l
  %i.cn = phi ptr [ %i.cm, %_ZNK17hb_sorted_array_tIKN2OT6Layout6Common11RangeRecordINS1_10SmallTypesEEEE5bfindIjEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i17 ], [ @_hb_Null_OT_RangeRecord, %bb.l ], [ @_hb_Null_OT_RangeRecord, %bb.n ]
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  %i.cp = load i16, ptr %i.co, align 1, !tbaa !283
  %i.cq = tail call noundef i16 @llvm.bswap.i16(i16 %i.cp)
  br label %_ZNK2OT8ClassDef9get_classEj.exit28

_ZNK2OT8ClassDef9get_classEj.exit28:              ; preds = %.critedge, %_ZNK2OT17ClassDefFormat1_3INS_6Layout10SmallTypesEE9get_classEj.exit.i26, %_ZNK2OT17ClassDefFormat2_4INS_6Layout10SmallTypesEE9get_classEj.exit.i18
  %.0.shrunk.i19 = phi i16 [ %i.cq, %_ZNK2OT17ClassDefFormat2_4INS_6Layout10SmallTypesEE9get_classEj.exit.i18 ], [ %i.br, %_ZNK2OT17ClassDefFormat1_3INS_6Layout10SmallTypesEE9get_classEj.exit.i26 ], [ 0, %.critedge ]
  %.0.i20 = zext i16 %.0.shrunk.i19 to i32
  br label %_ZN10hb_cache_tILj16ELj8ELj8ELb1EE3setEjj.exit

_ZN10hb_cache_tILj16ELj8ELj8ELb1EE3setEjj.exit:   ; preds = %bb.i, %bb.h, %_ZNK10hb_cache_tILj16ELj8ELj8ELb1EE3getEjPj.exit.thread, %_ZNK2OT8ClassDef9get_classEj.exit28
  %.0 = phi i32 [ %.0.i20, %_ZNK2OT8ClassDef9get_classEj.exit28 ], [ %i.g, %_ZNK10hb_cache_tILj16ELj8ELj8ELb1EE3getEjPj.exit.thread ], [ %.0.i, %bb.h ], [ %.0.i, %bb.i ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2OT33hb_accelerate_subtables_context_t15hb_applicable_t4initINS_6Layout9GPOS_impl17CursivePosFormat1EEEvRKT_PFbPKvPNS_21hb_ot_apply_context_tEPvESF_PFbSC_NS_25hb_ot_subtable_cache_op_tEESD_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 1 dereferenceable(10) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !1838
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !1835
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %i.b, align 8, !tbaa !1836
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %4, ptr %i.c, align 8, !tbaa !1839
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %5, ptr %i.d, align 8, !tbaa !1404
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false), !tbaa !357
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.g = load i16, ptr %i.f, align 1, !tbaa !283  ; 2 uses
  %i.h = icmp eq i16 %i.g, 0
  %i.i = tail call i16 @llvm.bswap.i16(i16 %i.g)
  %i.j = zext i16 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %i.j
  %.0.i.i.i = select i1 %i.h, ptr @_hb_NullPool, ptr %i.k, !prof !267 ; 5 uses
  %i.l = load i16, ptr %.0.i.i.i, align 1, !tbaa !283
  %i.m = tail call noundef i16 @llvm.bswap.i16(i16 %i.l)
  switch i16 %i.m, label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit [
    i16 1, label %bb.b
    i16 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 2
  %i.o = load i16, ptr %i.n, align 1, !tbaa !283  ; 2 uses
  %i.p = tail call noundef i16 @llvm.bswap.i16(i16 %i.o)
  %.sroa.4.8.extract.trunc.i.i = zext i16 %i.p to i32
  %.not.i.i.i.i.i = icmp eq i16 %i.o, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4
  %.promoted.i.i.i.i.i = load i64, ptr %i.e, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.promoted9.i.i.i.i.i = load i64, ptr %i.r, align 8, !tbaa !357
  %.promoted11.i.i.i.i.i = load i64, ptr %i.s, align 8, !tbaa !357
  br label %bb.c

._crit_edge.i.i.i.i.i:                            ; preds = %bb.c
  store i64 %i.ad, ptr %i.e, align 8, !tbaa !357
  store i64 %i.ah, ptr %i.r, align 8, !tbaa !357
  store i64 %i.am, ptr %i.s, align 8, !tbaa !357
  br label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %i.t = phi i64 [ %.promoted11.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.am, %bb.c ]
  %i.u = phi i64 [ %.promoted9.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.ah, %bb.c ]
  %.08.i.i.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i.i.i ], [ %i.ao, %bb.c ]
  %.067.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i ], [ %i.an, %bb.c ] ; 2 uses
  %i.v = phi i64 [ %.promoted.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.ad, %bb.c ]
  %i.w = load i16, ptr %.067.i.i.i.i.i, align 1, !tbaa !283
  %i.x = tail call noundef i16 @llvm.bswap.i16(i16 %i.w)
  %i.y = zext i16 %i.x to i32                     ; 3 uses
  %i.z = lshr i32 %i.y, 4
  %i.aa = and i32 %i.z, 63
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = shl nuw i64 1, %i.ab
  %i.ad = or i64 %i.ac, %i.v                      ; 2 uses
  %i.ae = and i32 %i.y, 63
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = shl nuw i64 1, %i.af
  %i.ah = or i64 %i.ag, %i.u                      ; 2 uses
  %i.ai = lshr i32 %i.y, 6
  %i.aj = and i32 %i.ai, 63
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = shl nuw i64 1, %i.ak
  %i.am = or i64 %i.al, %i.t                      ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.067.i.i.i.i.i, i64 2
  %i.ao = add nuw i32 %.08.i.i.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i32 %i.ao, %.sroa.4.8.extract.trunc.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %bb.c, !llvm.loop !162

bb.d:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 2
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4 ; 2 uses
  %i.ar = load i16, ptr %i.ap, align 1, !tbaa !283 ; 2 uses
  %i.as = tail call noundef i16 @llvm.bswap.i16(i16 %i.ar)
  %i.at = zext i16 %i.as to i64
  %.idx.i.i = mul nuw nsw i64 %i.at, 6
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.idx.i.i
  %.not14.i.i = icmp eq i16 %i.ar, 0
  br i1 %.not14.i.i, label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %.01115.i.i = phi ptr [ %i.aw, %.lr.ph.i.i ], [ %i.aq, %bb.d ] ; 2 uses
  %i.av = tail call noundef zeroext i1 @_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI15hb_set_digest_tEEbPT_(ptr noundef nonnull align 1 dereferenceable(6) %.01115.i.i, ptr noundef nonnull %i.e)
  %i.aw = getelementptr inbounds nuw i8, ptr %.01115.i.i, i64 6 ; 2 uses
  %.not.i.i = icmp ne ptr %i.aw, %i.au
  %or.cond.not = select i1 %i.av, i1 %.not.i.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i.i, label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit

_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit: ; preds = %.lr.ph.i.i, %bb.a, %bb.b, %._crit_edge.i.i.i.i.i, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT33hb_accelerate_subtables_context_t8apply_toINS_6Layout9GPOS_impl17CursivePosFormat1EEEbPKvPNS_21hb_ot_apply_context_tEPv(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16 comdat align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK2OT6Layout9GPOS_impl17CursivePosFormat15applyEPNS_21hb_ot_apply_context_tE(ptr noundef nonnull align 1 dereferenceable(10) %0, ptr noundef %1)
  ret i1 %i.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT33hb_accelerate_subtables_context_t15apply_cached_toINS_6Layout9GPOS_impl17CursivePosFormat1EEEbPKvPNS_21hb_ot_apply_context_tEPv(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16 comdat align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK2OT6Layout9GPOS_impl17CursivePosFormat15applyEPNS_21hb_ot_apply_context_tE(ptr noundef nonnull align 1 dereferenceable(10) %0, ptr noundef %1)
  ret i1 %i.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT33hb_accelerate_subtables_context_t13cache_func_toINS_6Layout9GPOS_impl17CursivePosFormat1EEEbPNS_21hb_ot_apply_context_tENS_25hb_ot_subtable_cache_op_tE(ptr noundef %0, i32 noundef %1) #16 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2OT6Layout9GPOS_impl17CursivePosFormat15applyEPNS_21hb_ot_apply_context_tE(ptr noundef nonnull align 1 dereferenceable(10) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca float, align 4                    ; 6 uses
  %i.c = alloca float, align 4                    ; 6 uses
  %i.d = alloca float, align 4                    ; 6 uses
  %i.e = alloca float, align 4                    ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1278 ; 13 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.j = load i16, ptr %i.i, align 1, !tbaa !283  ; 2 uses
  %i.k = icmp eq i16 %i.j, 0
  %i.l = tail call i16 @llvm.bswap.i16(i16 %i.j)
  %i.m = zext i16 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %i.m
  %.0.i.i = select i1 %i.k, ptr @_hb_NullPool, ptr %i.n, !prof !267
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 112 ; 4 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !589
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 92 ; 7 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !653
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [20 x i8], ptr %i.p, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !637
  %i.v = tail call noundef i32 @_ZNK2OT6Layout6Common8Coverage12get_coverageEj(ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i, i32 noundef %i.u) ; 2 uses
  %i.w = load i16, ptr %i.h, align 1, !tbaa !283
  %i.x = tail call noundef i16 @llvm.bswap.i16(i16 %i.w)
  %i.y = zext i16 %i.x to i32
  %.not.i = icmp ult i32 %i.v, %i.y
  br i1 %.not.i, label %bb.b, label %_ZNK2OT7ArrayOfINS_6Layout9GPOS_impl15EntryExitRecordENS_7NumTypeILb1EtLj2EEEEixEi.exit, !prof !268

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.aa = zext nneg i32 %i.v to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.aa
  br label %_ZNK2OT7ArrayOfINS_6Layout9GPOS_impl15EntryExitRecordENS_7NumTypeILb1EtLj2EEEEixEi.exit

_ZNK2OT7ArrayOfINS_6Layout9GPOS_impl15EntryExitRecordENS_7NumTypeILb1EtLj2EEEEixEi.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.ab, %bb.b ], [ @_hb_NullPool, %bb.a ] ; 4 uses
  %i.ac = load i16, ptr %.0.i, align 1, !tbaa !283
  %.not = icmp eq i16 %i.ac, 0
  br i1 %.not, label %_ZNK2OT8OffsetToINS_6Layout9GPOS_impl6AnchorENS_7NumTypeILb1EtLj2EEENS2_17CursivePosFormat1ELb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKS6_DpOT_.exit133.thread170, label %bb.c

bb.c:                                             ; preds = %_ZNK2OT7ArrayOfINS_6Layout9GPOS_impl15EntryExitRecordENS_7NumTypeILb1EtLj2EEEEixEi.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i, i64 2
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !505
  %i.ah = ptrtoint ptr %i.ae to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !506
  %i.am = zext i32 %i.al to i64
  %.not.i136.not = icmp ugt i64 %i.aj, %i.am
  br i1 %.not.i136.not, label %_ZNK2OT8OffsetToINS_6Layout9GPOS_impl6AnchorENS_7NumTypeILb1EtLj2EEENS2_17CursivePosFormat1ELb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKS6_DpOT_.exit133.thread170, label %bb.d, !prof !267

bb.d:                                             ; preds = %bb.c
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.an = load i16, ptr %.0.i, align 1, !tbaa !283 ; 2 uses
  %i.ao = icmp eq i16 %i.an, 0
  br i1 %i.ao, label %_ZNK2OT8OffsetToINS_6Layout9GPOS_impl6AnchorENS_7NumTypeILb1EtLj2EEENS2_17CursivePosFormat1ELb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKS6_DpOT_.exit133.thread, label %_ZNK2OT8OffsetToINS_6Layout9GPOS_impl6AnchorENS_7NumTypeILb1EtLj2EEENS2_17CursivePosFormat1ELb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKS6_DpOT_.exit133

_ZNK2OT8OffsetToINS_6Layout9GPOS_impl6AnchorENS_7NumTypeILb1EtLj2EEENS2_17CursivePosFormat1ELb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKS6_DpOT_.exit133: ; preds = %bb.d
  %i.ap = tail call noundef i16 @llvm.bswap.i16(i16 %i.an)
  %i.aq = zext i16 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %i.aq
  %i.as = tail call noundef zeroext i1 @_ZNK2OT6Layout9GPOS_impl6Anchor8sanitizeEP21hb_sanitize_context_t(ptr noundef nonnull align 1 dereferenceable(10) %i.ar, ptr noundef nonnull align 8 dereferenceable(62) %i.ad)
  br i1 %i.as, label %_ZNK2OT8OffsetToINS_6Layout9GPOS_impl6AnchorENS_7NumTypeILb1EtLj2EEENS2_17CursivePosFormat1ELb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKS6_DpOT_.exit133.thread, label %_ZNK2OT8OffsetToINS_6Layout9GPOS_impl6AnchorENS_7NumTypeILb1EtLj2EEENS2_17CursivePosFormat1ELb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKS6_DpOT_.exit133.thread170, !prof !672

_ZNK2OT8OffsetToINS_6Layout9GPOS_impl6AnchorENS_7NumTypeILb1EtLj2EEENS2_17CursivePosFormat1ELb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKS6_DpOT_.exit133.thread: ; preds = %bb.d, %_ZNK2OT8OffsetToINS_6Layout9GPOS_impl6AnchorENS_7NumTypeILb1EtLj2EEENS2_17CursivePosFormat1ELb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKS6_DpOT_.exit133
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.au = load i32, ptr %i.q, align 4, !tbaa !653
  store i32 %i.au, ptr %i.at, align 8, !tbaa !1366
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #63
  %i.av = call noundef zeroext i1 @_ZN2OT19skipping_iterator_tINS_21hb_ot_apply_context_tEE4prevEPj(ptr noundef nonnull align 8 dereferenceable(60) %i.at, ptr noundef nonnull %i.a)
  br i1 %i.av, label %bb.h, label %bb.e, !prof !268

bb.e:                                             ; preds = %_ZNK2OT8OffsetToINS_6Layout9GPOS_impl6AnchorENS_7NumTypeILb1EtLj2EEENS2_17CursivePosFormat1ELb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKS6_DpOT_.exit133.thread
  %i.aw = load i32, ptr %i.a, align 4, !tbaa !324 ; 2 uses
  %i.ax = load i32, ptr %i.q, align 4, !tbaa !653
  %i.ay = add i32 %i.ax, 1                        ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !587
  %i.bb = and i32 %i.ba, 64
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %_ZN11hb_buffer_t31unsafe_to_concat_from_outbufferEjj.exit135, label %bb.f, !prof !268

bb.f:                                             ; preds = %bb.e
  %i.bd = icmp ne i32 %i.ay, -1
  %i.be = sub i32 %i.ay, %i.aw
  %i.bf = icmp ugt i32 %i.be, 255
  %i.bg = and i1 %i.bd, %i.bf
  br i1 %i.bg, label %_ZN11hb_buffer_t31unsafe_to_concat_from_outbufferEjj.exit135, label %bb.g, !prof !267

bb.g:                                             ; preds = %bb.f
  %i.bh = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !324
  %.sroa.speculated166 = call i32 @llvm.umin.i32(i32 %i.ay, i32 %i.bi)
  call void @_ZN11hb_buffer_t21_set_glyph_flags_implEjjjbb(ptr noundef nonnull align 8 dereferenceable(276) %i.g, i32 noundef 2, i32 noundef %i.aw, i32 noundef %.sroa.speculated166, i1 noundef zeroext false, i1 noundef zeroext true)
  br label %_ZN11hb_buffer_t31unsafe_to_concat_from_outbufferEjj.exit135

bb.h:                                             ; preds = %_ZNK2OT8OffsetToINS_6Layout9GPOS_impl6AnchorENS_7NumTypeILb1EtLj2EEENS2_17CursivePosFormat1ELb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKS6_DpOT_.exit133.thread
  %i.bj = load i16, ptr %i.i, align 1, !tbaa !283 ; 2 uses
  %i.bk = icmp eq i16 %i.bj, 0
  %i.bl = call i16 @llvm.bswap.i16(i16 %i.bj)
  %i.bm = zext i16 %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 %i.bm
  %.0.i.i138 = select i1 %i.bk, ptr @_hb_NullPool, ptr %i.bn, !prof !267
  %i.bo = load ptr, ptr %i.o, align 8, !tbaa !589
  %i.bp = load i32, ptr %i.at, align 8, !tbaa !1366
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw [20 x i8], ptr %i.bo, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !637
  %i.bt = call noundef i32 @_ZNK2OT6Layout6Common8Coverage12get_coverageEj(ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i138, i32 noundef %i.bs) ; 2 uses
  %i.bu = load i16, ptr %i.h, align 1, !tbaa !283
  %i.bv = call noundef i16 @llvm.bswap.i16(i16 %i.bu)
  %i.bw = zext i16 %i.bv to i32
  %.not.i139 = icmp ult i32 %i.bt, %i.bw
  br i1 %.not.i139, label %bb.i, label %_ZNK2OT7ArrayOfINS_6Layout9GPOS_impl15EntryExitRecordENS_7NumTypeILb1EtLj2EEEEixEi.exit141, !prof !268

bb.i:                                             ; preds = %bb.h
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.by = zext nneg i32 %i.bt to i64
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.by
  br label %_ZNK2OT7ArrayOfINS_6Layout9GPOS_impl15EntryExitRecordENS_7NumTypeILb1EtLj2EEEEixEi.exit141

_ZNK2OT7ArrayOfINS_6Layout9GPOS_impl15EntryExitRecordENS_7NumTypeILb1EtLj2EEEEixEi.exit141: ; preds = %bb.h, %bb.i
  %.0.i140 = phi ptr [ %i.bz, %bb.i ], [ @_hb_NullPool, %bb.h ] ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.i140, i64 2 ; 3 uses
  %i.cb = load i16, ptr %i.ca, align 1, !tbaa !283
  %.not130 = icmp eq i16 %i.cb, 0
  br i1 %.not130, label %_ZNK2OT8OffsetToINS_6Layout9GPOS_impl6AnchorENS_7NumTypeILb1EtLj2EEENS2_17CursivePosFormat1ELb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKS6_DpOT_.exit.thread171, label %bb.j

bb.j:                                             ; preds = %_ZNK2OT7ArrayOfINS_6Layout9GPOS_impl15EntryExitRecordENS_7NumTypeILb1EtLj2EEEEixEi.exit141
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.i140, i64 4
  %i.cd = load ptr, ptr %i.af, align 8, !tbaa !505
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = load i32, ptr %i.ak, align 8, !tbaa !506
  %i.ci = zext i32 %i.ch to i64
  %.not.i142.not = icmp ugt i64 %i.cg, %i.ci
  br i1 %.not.i142.not, label %_ZNK2OT8OffsetToINS_6Layout9GPOS_impl6AnchorENS_7NumTypeILb1EtLj2EEENS2_17CursivePosFormat1ELb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKS6_DpOT_.exit.thread171, label %bb.k, !prof !267

bb.k:                                             ; preds = %bb.j
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
end_hunk_15
begin_hunk_16_@_ZNK2OT6Layout9GPOS_impl13AnchorFormat310get_anchorEPNS_21hb_ot_apply_context_tEjPfS5_:bb.a
  store float %i.n, ptr %4, align 4, !tbaa !304
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.p = load i32, ptr %i.o, align 8, !tbaa !1065
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.r = load i8, ptr %i.q, align 8, !tbaa !1064, !range !380, !noundef !293
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.c, label %_ZNK2OT8OffsetToINS_6DeviceENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit21.thread28

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !505
  %i.y = ptrtoint ptr %i.v to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !506
  %i.ad = zext i32 %i.ac to i64
  %.not.i.not = icmp ugt i64 %i.aa, %i.ad
  br i1 %.not.i.not, label %_ZNK2OT8OffsetToINS_6DeviceENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit21.thread28, label %bb.d, !prof !267

bb.d:                                             ; preds = %bb.c
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.ae = load i16, ptr %i.t, align 1, !tbaa !283 ; 2 uses
  %i.af = icmp eq i16 %i.ae, 0
  br i1 %i.af, label %_ZNK2OT8OffsetToINS_6DeviceENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit21.thread, label %_ZNK2OT8OffsetToINS_6DeviceENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit21

_ZNK2OT8OffsetToINS_6DeviceENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit21: ; preds = %bb.d
  %i.ag = tail call noundef i16 @llvm.bswap.i16(i16 %i.ae)
  %i.ah = zext i16 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %i.ah
  %i.aj = tail call noundef zeroext i1 @_ZNK2OT6Device8sanitizeEP21hb_sanitize_context_t(ptr noundef nonnull align 1 dereferenceable(8) %i.ai, ptr noundef nonnull align 8 dereferenceable(62) %i.u)
  br i1 %i.aj, label %_ZNK2OT8OffsetToINS_6DeviceENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit21.thread, label %_ZNK2OT8OffsetToINS_6DeviceENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit21.thread28

_ZNK2OT8OffsetToINS_6DeviceENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit21.thread: ; preds = %bb.d, %_ZNK2OT8OffsetToINS_6DeviceENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit21
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.ak = load i16, ptr %i.t, align 1, !tbaa !283 ; 2 uses
  %i.al = icmp eq i16 %i.ak, 0
  %i.am = tail call i16 @llvm.bswap.i16(i16 %i.ak)
  %i.an = zext i16 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 %i.an
  %.0.i.i = select i1 %i.al, ptr @_hb_NullPool, ptr %i.ao, !prof !267
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !2072, !nonnull !293
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1716
  %i.at = tail call noundef i32 @_ZNK2OT6Device11get_x_deltaEP9hb_font_tRKNS_18ItemVariationStoreEPNS_17hb_scalar_cache_tE(ptr noundef nonnull align 1 dereferenceable(8) %.0.i.i, ptr noundef nonnull %i.b, ptr noundef nonnull align 1 dereferenceable(12) %i.aq, ptr noundef %i.as)
  %i.au = sitofp i32 %i.at to float
  %i.av = load float, ptr %3, align 4, !tbaa !304
  %i.aw = fadd float %i.av, %i.au
  store float %i.aw, ptr %3, align 4, !tbaa !304
  br label %_ZNK2OT8OffsetToINS_6DeviceENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit21.thread28

_ZNK2OT8OffsetToINS_6DeviceENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit21.thread28: ; preds = %bb.c, %_ZNK2OT8OffsetToINS_6DeviceENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit21.thread, %_ZNK2OT8OffsetToINS_6DeviceENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit21, %bb.b
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 108
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !1066
  %.not20 = icmp eq i32 %i.ay, 0
  br i1 %.not20, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNK2OT8OffsetToINS_6DeviceENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit21.thread28
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.ba = load i8, ptr %i.az, align 8, !tbaa !1064, !range !380, !noundef !293
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.f, label %_ZNK2OT8OffsetToINS_6DeviceENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread29

bb.f:                                             ; preds = %bb.e, %_ZNK2OT8OffsetToINS_6DeviceENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit21.thread28
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !505
  %i.bh = ptrtoint ptr %i.be to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !506
  %i.bm = zext i32 %i.bl to i64
  %.not.i22.not = icmp ugt i64 %i.bj, %i.bm
  br i1 %.not.i22.not, label %_ZNK2OT8OffsetToINS_6DeviceENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread29, label %bb.g, !prof !267

bb.g:                                             ; preds = %bb.f
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.bn = load i16, ptr %i.bc, align 1, !tbaa !283 ; 2 uses
  %i.bo = icmp eq i16 %i.bn, 0
  br i1 %i.bo, label %_ZNK2OT8OffsetToINS_6DeviceENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread, label %_ZNK2OT8OffsetToINS_6DeviceENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit

_ZNK2OT8OffsetToINS_6DeviceENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit: ; preds = %bb.g
  %i.bp = tail call noundef i16 @llvm.bswap.i16(i16 %i.bn)
  %i.bq = zext i16 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 %i.bq
  %i.bs = tail call noundef zeroext i1 @_ZNK2OT6Device8sanitizeEP21hb_sanitize_context_t(ptr noundef nonnull align 1 dereferenceable(8) %i.br, ptr noundef nonnull align 8 dereferenceable(62) %i.bd)
  br i1 %i.bs, label %_ZNK2OT8OffsetToINS_6DeviceENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread, label %_ZNK2OT8OffsetToINS_6DeviceENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread29

_ZNK2OT8OffsetToINS_6DeviceENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread: ; preds = %bb.g, %_ZNK2OT8OffsetToINS_6DeviceENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.bt = load i16, ptr %i.bc, align 1, !tbaa !283 ; 2 uses
  %i.bu = icmp eq i16 %i.bt, 0
  %i.bv = tail call i16 @llvm.bswap.i16(i16 %i.bt)
  %i.bw = zext i16 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 %i.bw
  %.0.i.i24 = select i1 %i.bu, ptr @_hb_NullPool, ptr %i.bx, !prof !267
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !2072, !nonnull !293
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !1716
  %i.cc = tail call noundef i32 @_ZNK2OT6Device11get_y_deltaEP9hb_font_tRKNS_18ItemVariationStoreEPNS_17hb_scalar_cache_tE(ptr noundef nonnull align 1 dereferenceable(8) %.0.i.i24, ptr noundef nonnull %i.b, ptr noundef nonnull align 1 dereferenceable(12) %i.bz, ptr noundef %i.cb)
  %i.cd = sitofp i32 %i.cc to float
  %i.ce = load float, ptr %4, align 4, !tbaa !304
  %i.cf = fadd float %i.ce, %i.cd
  store float %i.cf, ptr %4, align 4, !tbaa !304
  br label %_ZNK2OT8OffsetToINS_6DeviceENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread29

_ZNK2OT8OffsetToINS_6DeviceENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread29: ; preds = %bb.f, %_ZNK2OT8OffsetToINS_6DeviceENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread, %_ZNK2OT8OffsetToINS_6DeviceENS_7NumTypeILb1EtLj2EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2OT33hb_accelerate_subtables_context_t15hb_applicable_t4initINS_6Layout9GPOS_impl20MarkBasePosFormat1_2INS3_10SmallTypesEEEEEvRKT_PFbPKvPNS_21hb_ot_apply_context_tEPvESH_PFbSE_NS_25hb_ot_subtable_cache_op_tEESF_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 1 dereferenceable(12) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !1838
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !1835
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %i.b, align 8, !tbaa !1836
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %4, ptr %i.c, align 8, !tbaa !1839
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %5, ptr %i.d, align 8, !tbaa !1404
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false), !tbaa !357
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.g = load i16, ptr %i.f, align 1, !tbaa !283  ; 2 uses
  %i.h = icmp eq i16 %i.g, 0
  %i.i = tail call i16 @llvm.bswap.i16(i16 %i.g)
  %i.j = zext i16 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %i.j
  %.0.i.i.i = select i1 %i.h, ptr @_hb_NullPool, ptr %i.k, !prof !267 ; 5 uses
  %i.l = load i16, ptr %.0.i.i.i, align 1, !tbaa !283
  %i.m = tail call noundef i16 @llvm.bswap.i16(i16 %i.l)
  switch i16 %i.m, label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit [
    i16 1, label %bb.b
    i16 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 2
  %i.o = load i16, ptr %i.n, align 1, !tbaa !283  ; 2 uses
  %i.p = tail call noundef i16 @llvm.bswap.i16(i16 %i.o)
  %.sroa.4.8.extract.trunc.i.i = zext i16 %i.p to i32
  %.not.i.i.i.i.i = icmp eq i16 %i.o, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4
  %.promoted.i.i.i.i.i = load i64, ptr %i.e, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.promoted9.i.i.i.i.i = load i64, ptr %i.r, align 8, !tbaa !357
  %.promoted11.i.i.i.i.i = load i64, ptr %i.s, align 8, !tbaa !357
  br label %bb.c

._crit_edge.i.i.i.i.i:                            ; preds = %bb.c
  store i64 %i.ad, ptr %i.e, align 8, !tbaa !357
  store i64 %i.ah, ptr %i.r, align 8, !tbaa !357
  store i64 %i.am, ptr %i.s, align 8, !tbaa !357
  br label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %i.t = phi i64 [ %.promoted11.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.am, %bb.c ]
  %i.u = phi i64 [ %.promoted9.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.ah, %bb.c ]
  %.08.i.i.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i.i.i ], [ %i.ao, %bb.c ]
  %.067.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i ], [ %i.an, %bb.c ] ; 2 uses
  %i.v = phi i64 [ %.promoted.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.ad, %bb.c ]
  %i.w = load i16, ptr %.067.i.i.i.i.i, align 1, !tbaa !283
  %i.x = tail call noundef i16 @llvm.bswap.i16(i16 %i.w)
  %i.y = zext i16 %i.x to i32                     ; 3 uses
  %i.z = lshr i32 %i.y, 4
  %i.aa = and i32 %i.z, 63
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = shl nuw i64 1, %i.ab
  %i.ad = or i64 %i.ac, %i.v                      ; 2 uses
  %i.ae = and i32 %i.y, 63
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = shl nuw i64 1, %i.af
  %i.ah = or i64 %i.ag, %i.u                      ; 2 uses
  %i.ai = lshr i32 %i.y, 6
  %i.aj = and i32 %i.ai, 63
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = shl nuw i64 1, %i.ak
  %i.am = or i64 %i.al, %i.t                      ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.067.i.i.i.i.i, i64 2
  %i.ao = add nuw i32 %.08.i.i.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i32 %i.ao, %.sroa.4.8.extract.trunc.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %bb.c, !llvm.loop !162

bb.d:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 2
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4 ; 2 uses
  %i.ar = load i16, ptr %i.ap, align 1, !tbaa !283 ; 2 uses
  %i.as = tail call noundef i16 @llvm.bswap.i16(i16 %i.ar)
  %i.at = zext i16 %i.as to i64
  %.idx.i.i = mul nuw nsw i64 %i.at, 6
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.idx.i.i
  %.not14.i.i = icmp eq i16 %i.ar, 0
  br i1 %.not14.i.i, label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %.01115.i.i = phi ptr [ %i.aw, %.lr.ph.i.i ], [ %i.aq, %bb.d ] ; 2 uses
  %i.av = tail call noundef zeroext i1 @_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI15hb_set_digest_tEEbPT_(ptr noundef nonnull align 1 dereferenceable(6) %.01115.i.i, ptr noundef nonnull %i.e)
  %i.aw = getelementptr inbounds nuw i8, ptr %.01115.i.i, i64 6 ; 2 uses
  %.not.i.i = icmp ne ptr %i.aw, %i.au
  %or.cond.not = select i1 %i.av, i1 %.not.i.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i.i, label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit

_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit: ; preds = %.lr.ph.i.i, %bb.a, %bb.b, %._crit_edge.i.i.i.i.i, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT33hb_accelerate_subtables_context_t8apply_toINS_6Layout9GPOS_impl20MarkBasePosFormat1_2INS2_10SmallTypesEEEEEbPKvPNS_21hb_ot_apply_context_tEPv(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16 comdat align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK2OT6Layout9GPOS_impl20MarkBasePosFormat1_2INS0_10SmallTypesEE5applyEPNS_21hb_ot_apply_context_tE(ptr noundef nonnull align 1 dereferenceable(12) %0, ptr noundef %1)
  ret i1 %i.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT33hb_accelerate_subtables_context_t15apply_cached_toINS_6Layout9GPOS_impl20MarkBasePosFormat1_2INS2_10SmallTypesEEEEEbPKvPNS_21hb_ot_apply_context_tEPv(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16 comdat align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK2OT6Layout9GPOS_impl20MarkBasePosFormat1_2INS0_10SmallTypesEE5applyEPNS_21hb_ot_apply_context_tE(ptr noundef nonnull align 1 dereferenceable(12) %0, ptr noundef %1)
  ret i1 %i.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT33hb_accelerate_subtables_context_t13cache_func_toINS_6Layout9GPOS_impl20MarkBasePosFormat1_2INS2_10SmallTypesEEEEEbPNS_21hb_ot_apply_context_tENS_25hb_ot_subtable_cache_op_tE(ptr noundef %0, i32 noundef %1) #16 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2OT6Layout9GPOS_impl20MarkBasePosFormat1_2INS0_10SmallTypesEE5applyEPNS_21hb_ot_apply_context_tE(ptr noundef nonnull align 1 dereferenceable(12) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1278 ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.d = load i16, ptr %i.c, align 1, !tbaa !283  ; 2 uses
  %i.e = icmp eq i16 %i.d, 0
  %i.f = tail call i16 @llvm.bswap.i16(i16 %i.d)
  %i.g = zext i16 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g
  %.0.i.i = select i1 %i.e, ptr @_hb_NullPool, ptr %i.h, !prof !267
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !589
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 92 ; 4 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !653
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [20 x i8], ptr %i.j, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !637
  %i.p = tail call noundef i32 @_ZNK2OT6Layout6Common8Coverage12get_coverageEj(ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i, i32 noundef %i.o) ; 2 uses
  %i.q = icmp eq i32 %i.p, -1
  br i1 %i.q, label %_ZN11hb_buffer_t31unsafe_to_concat_from_outbufferEjj.exit68, label %bb.b, !prof !268

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  store i32 8, ptr %i.r, align 8, !tbaa !2073
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 316 ; 4 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !1267 ; 2 uses
  %i.u = load i32, ptr %i.k, align 4, !tbaa !653  ; 3 uses
  %i.v = icmp ugt i32 %i.t, %i.u
  br i1 %i.v, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.s, align 4, !tbaa !1267
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 312
  store i32 -1, ptr %i.w, align 8, !tbaa !1266
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.x = phi i32 [ 0, %bb.c ], [ %i.t, %bb.b ]
  %i.y = icmp ugt i32 %i.u, %i.x
  br i1 %i.y, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 33
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 34
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 35
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %_ZNK2OT9matcher_t8may_skipINS_21hb_ot_apply_context_tEEENS0_10may_skip_tEPKT_RK15hb_glyph_info_t.exit.thread
  %.042125 = phi i32 [ %i.u, %.lr.ph ], [ %i.al, %_ZNK2OT9matcher_t8may_skipINS_21hb_ot_apply_context_tEEENS0_10may_skip_tEPKT_RK15hb_glyph_info_t.exit.thread ]
  %i.ak = load ptr, ptr %i.i, align 8, !tbaa !589
  %i.al = add i32 %.042125, -1                    ; 5 uses
  %i.am = zext i32 %i.al to i64                   ; 2 uses
  %i.an = getelementptr inbounds nuw [20 x i8], ptr %i.ak, i64 %i.am ; 6 uses
  %i.ao = load ptr, ptr %i.z, align 8, !tbaa !1287 ; 2 uses
  %i.ap = load i32, ptr %i.r, align 8, !tbaa !1289 ; 4 uses
  %i.aq = getelementptr i8, ptr %i.an, i64 12     ; 2 uses
  %.val = load i16, ptr %i.aq, align 4, !tbaa !280
  %i.ar = zext i16 %.val to i32                   ; 3 uses
  %i.as = and i32 %i.ap, 14
  %i.at = and i32 %i.as, %i.ar
  %.not.i59 = icmp eq i32 %i.at, 0
  br i1 %.not.i59, label %bb.f, label %_ZNK2OT9matcher_t8may_skipINS_21hb_ot_apply_context_tEEENS0_10may_skip_tEPKT_RK15hb_glyph_info_t.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.au = and i32 %i.ar, 8
  %.not8.i61 = icmp eq i32 %i.au, 0
  br i1 %.not8.i61, label %_ZNK2OT21hb_ot_apply_context_t20check_glyph_propertyEPK15hb_glyph_info_tj.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.av = and i32 %i.ap, 16
  %.not.i62 = icmp eq i32 %i.av, 0
  br i1 %.not.i62, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aw = lshr i32 %i.ap, 16                      ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ao, i64 248
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !1279, !nonnull !293, !align !294
  %i.az = load i32, ptr %i.an, align 4, !tbaa !637 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !1720
  %i.bc = zext nneg i32 %i.aw to i64
  %i.bd = getelementptr inbounds nuw [24 x i8], ptr %i.bb, i64 %i.bc ; 3 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !357
  %i.bf = lshr i32 %i.az, 4
  %i.bg = and i32 %i.bf, 63
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = shl nuw i64 1, %i.bh
  %i.bj = and i64 %i.bi, %i.be
  %.not.i66 = icmp eq i64 %i.bj, 0
  br i1 %.not.i66, label %_ZNK2OT9matcher_t8may_skipINS_21hb_ot_apply_context_tEEENS0_10may_skip_tEPKT_RK15hb_glyph_info_t.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !357
  %i.bm = and i32 %i.az, 63
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = shl nuw i64 1, %i.bn
  %i.bp = and i64 %i.bo, %i.bl
  %.not.i66.1 = icmp eq i64 %i.bp, 0
  br i1 %.not.i66.1, label %_ZNK2OT9matcher_t8may_skipINS_21hb_ot_apply_context_tEEENS0_10may_skip_tEPKT_RK15hb_glyph_info_t.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !357
  %i.bs = lshr i32 %i.az, 6
  %i.bt = and i32 %i.bs, 63
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = shl nuw i64 1, %i.bu
  %i.bw = and i64 %i.bv, %i.br
  %.not.i66.2 = icmp eq i64 %i.bw, 0
  br i1 %.not.i66.2, label %_ZNK2OT9matcher_t8may_skipINS_21hb_ot_apply_context_tEEENS0_10may_skip_tEPKT_RK15hb_glyph_info_t.exit.thread, label %.split

.split:                                           ; preds = %bb.j
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ao, i64 240
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !1715, !nonnull !293
  %i.bz = tail call noundef zeroext i1 @_ZNK2OT4GDEF15mark_set_coversEjj(ptr noundef nonnull align 1 dereferenceable(18) %i.by, i32 noundef %i.aw, i32 noundef %i.az)
  br i1 %i.bz, label %_ZNK2OT21hb_ot_apply_context_t20check_glyph_propertyEPK15hb_glyph_info_tj.exit.thread, label %_ZNK2OT9matcher_t8may_skipINS_21hb_ot_apply_context_tEEENS0_10may_skip_tEPKT_RK15hb_glyph_info_t.exit.thread

bb.k:                                             ; preds = %bb.g
  %i.ca = and i32 %i.ap, 65280                    ; 2 uses
  %.not11.i = icmp eq i32 %i.ca, 0
  %i.cb = and i32 %i.ar, 65280
  %i.cc = icmp eq i32 %i.ca, %i.cb
  %or.cond = or i1 %.not11.i, %i.cc
  br i1 %or.cond, label %_ZNK2OT21hb_ot_apply_context_t20check_glyph_propertyEPK15hb_glyph_info_tj.exit.thread, label %_ZNK2OT9matcher_t8may_skipINS_21hb_ot_apply_context_tEEENS0_10may_skip_tEPKT_RK15hb_glyph_info_t.exit.thread

_ZNK2OT21hb_ot_apply_context_t20check_glyph_propertyEPK15hb_glyph_info_tj.exit.thread: ; preds = %bb.k, %bb.f, %.split
  %i.cd = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ce = load i16, ptr %i.cd, align 4, !tbaa !280
  %.fr121 = freeze i16 %i.ce                      ; 4 uses
  %i.cf = and i16 %.fr121, 32
  %.not.i72 = icmp eq i16 %i.cf, 0
  br i1 %.not.i72, label %_ZNK2OT9matcher_t8may_skipINS_21hb_ot_apply_context_tEEENS0_10may_skip_tEPKT_RK15hb_glyph_info_t.exit, label %_ZL35_hb_glyph_info_is_default_ignorablePK15hb_glyph_info_t.exit

_ZL35_hb_glyph_info_is_default_ignorablePK15hb_glyph_info_t.exit: ; preds = %_ZNK2OT21hb_ot_apply_context_t20check_glyph_propertyEPK15hb_glyph_info_tj.exit.thread
  %.val.i = load i16, ptr %i.aq, align 4, !tbaa !280
  %i.cg = and i16 %.val.i, 16
  %.not2.i = icmp eq i16 %i.cg, 0
  br i1 %.not2.i, label %bb.l, label %_ZNK2OT9matcher_t8may_skipINS_21hb_ot_apply_context_tEEENS0_10may_skip_tEPKT_RK15hb_glyph_info_t.exit

bb.l:                                             ; preds = %_ZL35_hb_glyph_info_is_default_ignorablePK15hb_glyph_info_t.exit
  %i.ch = load i8, ptr %i.aa, align 8, !tbaa !1291, !range !380, !noundef !293
  %i.ci = trunc nuw i8 %i.ch to i1
end_hunk_16
begin_hunk_17_@_ZNK2OT6Layout9GPOS_impl9MarkArray5applyEPNS_21hb_ot_apply_context_tEjjRKNS1_12AnchorMatrixEjj:bb.a
  %i.bx = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !607
  %i.bz = getelementptr inbounds nuw i8, ptr %i.f, i64 56 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !614
  %i.cb = and i32 %i.ca, -2
  %i.cc = icmp eq i32 %i.cb, 4
  %i.cd = getelementptr inbounds nuw [20 x i8], ptr %i.bw, i64 %i.bs ; 2 uses
  %.in.v.i = select i1 %i.cc, i64 12, i64 8       ; 2 uses
  %.in.i = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.in.v.i
  %i.ce = load i32, ptr %.in.i, align 4, !tbaa !324 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 18
  %i.cg = load i8, ptr %i.cf, align 2, !tbaa !280
  %i.ch = and i8 %i.cg, 2
  %.not36.i = icmp eq i8 %i.ch, 0
  br i1 %.not36.i, label %_ZN2OT6Layout9GPOS_implL20resolve_cross_offsetEPK19hb_glyph_position_tjj14hb_direction_t.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN11hb_buffer_t15unsafe_to_breakEjj.exit
  %invariant.gep.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 %.in.v.i
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %.lr.ph.i
  %i.ci = phi i64 [ %i.bs, %.lr.ph.i ], [ %i.co, %bb.j ]
  %.02338.i = phi i32 [ %i.ce, %.lr.ph.i ], [ %i.cq, %bb.j ] ; 3 uses
  %.02537.i = phi i32 [ %6, %.lr.ph.i ], [ %i.cn, %bb.j ]
  %i.cj = getelementptr inbounds nuw [20 x i8], ptr %i.bw, i64 %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = load i16, ptr %i.ck, align 4, !tbaa !280 ; 2 uses
  %.not30.i = icmp eq i16 %i.cl, 0
  br i1 %.not30.i, label %_ZN2OT6Layout9GPOS_implL20resolve_cross_offsetEPK19hb_glyph_position_tjj14hb_direction_t.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cm = sext i16 %i.cl to i32
  %i.cn = add nsw i32 %.02537.i, %i.cm            ; 3 uses
  %.not31.i = icmp ult i32 %i.cn, %i.by
  br i1 %.not31.i, label %bb.j, label %_ZN2OT6Layout9GPOS_implL20resolve_cross_offsetEPK19hb_glyph_position_tjj14hb_direction_t.exit, !prof !268

bb.j:                                             ; preds = %bb.i
  %i.co = zext i32 %i.cn to i64                   ; 3 uses
  %gep.i = getelementptr inbounds nuw [20 x i8], ptr %invariant.gep.i, i64 %i.co
  %i.cp = load i32, ptr %gep.i, align 4, !tbaa !324
  %i.cq = add nsw i32 %i.cp, %.02338.i            ; 2 uses
  %i.cr = getelementptr inbounds nuw [20 x i8], ptr %i.bw, i64 %i.co
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 18
  %i.ct = load i8, ptr %i.cs, align 2, !tbaa !280
  %i.cu = and i8 %i.ct, 2
  %.not.i42 = icmp eq i8 %i.cu, 0
  br i1 %.not.i42, label %_ZN2OT6Layout9GPOS_implL20resolve_cross_offsetEPK19hb_glyph_position_tjj14hb_direction_t.exit, label %bb.h

_ZN2OT6Layout9GPOS_implL20resolve_cross_offsetEPK19hb_glyph_position_tjj14hb_direction_t.exit: ; preds = %bb.h, %bb.i, %bb.j, %_ZN11hb_buffer_t15unsafe_to_breakEjj.exit
  %.023.lcssa.i = phi i32 [ %i.ce, %_ZN11hb_buffer_t15unsafe_to_breakEjj.exit ], [ %i.cq, %bb.j ], [ %.02338.i, %bb.h ], [ %.02338.i, %bb.i ] ; 2 uses
  %i.cv = load i32, ptr %i.ba, align 4, !tbaa !653 ; 2 uses
  %i.cw = zext i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [20 x i8], ptr %i.bw, i64 %i.cw ; 4 uses
  %i.cy = sub nsw i32 %6, %i.cv                   ; 2 uses
  %i.cz = trunc i32 %i.cy to i16
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 16 ; 2 uses
  store i16 %i.cz, ptr %i.da, align 4, !tbaa !280
  %sext = shl i32 %i.cy, 16
  %i.db = ashr exact i32 %sext, 16
  %i.dc = load i32, ptr %i.ba, align 4, !tbaa !653
  %i.dd = sub nsw i32 %6, %i.dc
  %.not = icmp eq i32 %i.db, %i.dd
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN2OT6Layout9GPOS_implL20resolve_cross_offsetEPK19hb_glyph_position_tjj14hb_direction_t.exit
  store i16 0, ptr %i.da, align 4, !tbaa !280
  br label %bb.p

bb.l:                                             ; preds = %_ZN2OT6Layout9GPOS_implL20resolve_cross_offsetEPK19hb_glyph_position_tjj14hb_direction_t.exit
  %i.de = getelementptr inbounds nuw i8, ptr %i.cx, i64 18
  store i8 1, ptr %i.de, align 2, !tbaa !280
  %i.df = load float, ptr %i.c, align 4, !tbaa !304
  %i.dg = load float, ptr %i.a, align 4, !tbaa !304
  %i.dh = fsub float %i.df, %i.dg
  %i.di = fadd float %i.dh, 5.000000e-01
  %i.dj = call noundef float @llvm.floor.f32(float %i.di)
  %i.dk = fptosi float %i.dj to i32               ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cx, i64 8 ; 2 uses
  store i32 %i.dk, ptr %i.dl, align 4, !tbaa !644
  %i.dm = load float, ptr %i.d, align 4, !tbaa !304
  %i.dn = load float, ptr %i.b, align 4, !tbaa !304
  %i.do = fsub float %i.dm, %i.dn
  %i.dp = fadd float %i.do, 5.000000e-01
  %i.dq = call noundef float @llvm.floor.f32(float %i.dp)
  %i.dr = fptosi float %i.dq to i32               ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cx, i64 12 ; 2 uses
  store i32 %i.dr, ptr %i.ds, align 4, !tbaa !645
  %i.dt = load i32, ptr %i.bz, align 8, !tbaa !614
  %i.du = and i32 %i.dt, -2
  %i.dv = icmp eq i32 %i.du, 4
  br i1 %i.dv, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.dw = add nsw i32 %.023.lcssa.i, %i.dr
  store i32 %i.dw, ptr %i.ds, align 4, !tbaa !645
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.dx = add nsw i32 %.023.lcssa.i, %i.dk
  store i32 %i.dx, ptr %i.dl, align 4, !tbaa !644
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.dy = getelementptr inbounds nuw i8, ptr %i.f, i64 216 ; 2 uses
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !1367
  %i.ea = or i32 %i.dz, 8
  store i32 %i.ea, ptr %i.dy, align 8, !tbaa !1367
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.k
  %i.eb = load i32, ptr %i.ba, align 4, !tbaa !653
  %i.ec = add i32 %i.eb, 1
  store i32 %i.ec, ptr %i.ba, align 4, !tbaa !653
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #63
  br label %_ZNK2OT6Layout9GPOS_impl12AnchorMatrix10get_anchorEPNS_21hb_ot_apply_context_tEjjjPb.exit.thread

_ZNK2OT6Layout9GPOS_impl12AnchorMatrix10get_anchorEPNS_21hb_ot_apply_context_tEjjjPb.exit.thread: ; preds = %_ZNK2OT8OffsetToINS_6Layout9GPOS_impl6AnchorENS_7NumTypeILb1EtLj2EEENS2_12AnchorMatrixELb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKS6_DpOT_.exit.i, %bb.c, %_ZNK2OT7ArrayOfINS_6Layout9GPOS_impl10MarkRecordENS_7NumTypeILb1EtLj2EEEEixEi.exit, %_ZNK2OT6Layout9GPOS_impl12AnchorMatrix10get_anchorEPNS_21hb_ot_apply_context_tEjjjPb.exit, %bb.p
  %.0 = phi i1 [ true, %bb.p ], [ false, %_ZNK2OT6Layout9GPOS_impl12AnchorMatrix10get_anchorEPNS_21hb_ot_apply_context_tEjjjPb.exit ], [ false, %_ZNK2OT7ArrayOfINS_6Layout9GPOS_impl10MarkRecordENS_7NumTypeILb1EtLj2EEEEixEi.exit ], [ false, %bb.c ], [ false, %_ZNK2OT8OffsetToINS_6Layout9GPOS_impl6AnchorENS_7NumTypeILb1EtLj2EEENS2_12AnchorMatrixELb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKS6_DpOT_.exit.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2OT33hb_accelerate_subtables_context_t15hb_applicable_t4initINS_6Layout9GPOS_impl19MarkLigPosFormat1_2INS3_10SmallTypesEEEEEvRKT_PFbPKvPNS_21hb_ot_apply_context_tEPvESH_PFbSE_NS_25hb_ot_subtable_cache_op_tEESF_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 1 dereferenceable(12) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !1838
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !1835
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %i.b, align 8, !tbaa !1836
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %4, ptr %i.c, align 8, !tbaa !1839
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %5, ptr %i.d, align 8, !tbaa !1404
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false), !tbaa !357
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.g = load i16, ptr %i.f, align 1, !tbaa !283  ; 2 uses
  %i.h = icmp eq i16 %i.g, 0
  %i.i = tail call i16 @llvm.bswap.i16(i16 %i.g)
  %i.j = zext i16 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %i.j
  %.0.i.i.i = select i1 %i.h, ptr @_hb_NullPool, ptr %i.k, !prof !267 ; 5 uses
  %i.l = load i16, ptr %.0.i.i.i, align 1, !tbaa !283
  %i.m = tail call noundef i16 @llvm.bswap.i16(i16 %i.l)
  switch i16 %i.m, label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit [
    i16 1, label %bb.b
    i16 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 2
  %i.o = load i16, ptr %i.n, align 1, !tbaa !283  ; 2 uses
  %i.p = tail call noundef i16 @llvm.bswap.i16(i16 %i.o)
  %.sroa.4.8.extract.trunc.i.i = zext i16 %i.p to i32
  %.not.i.i.i.i.i = icmp eq i16 %i.o, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4
  %.promoted.i.i.i.i.i = load i64, ptr %i.e, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.promoted9.i.i.i.i.i = load i64, ptr %i.r, align 8, !tbaa !357
  %.promoted11.i.i.i.i.i = load i64, ptr %i.s, align 8, !tbaa !357
  br label %bb.c

._crit_edge.i.i.i.i.i:                            ; preds = %bb.c
  store i64 %i.ad, ptr %i.e, align 8, !tbaa !357
  store i64 %i.ah, ptr %i.r, align 8, !tbaa !357
  store i64 %i.am, ptr %i.s, align 8, !tbaa !357
  br label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %i.t = phi i64 [ %.promoted11.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.am, %bb.c ]
  %i.u = phi i64 [ %.promoted9.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.ah, %bb.c ]
  %.08.i.i.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i.i.i ], [ %i.ao, %bb.c ]
  %.067.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i ], [ %i.an, %bb.c ] ; 2 uses
  %i.v = phi i64 [ %.promoted.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.ad, %bb.c ]
  %i.w = load i16, ptr %.067.i.i.i.i.i, align 1, !tbaa !283
  %i.x = tail call noundef i16 @llvm.bswap.i16(i16 %i.w)
  %i.y = zext i16 %i.x to i32                     ; 3 uses
  %i.z = lshr i32 %i.y, 4
  %i.aa = and i32 %i.z, 63
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = shl nuw i64 1, %i.ab
  %i.ad = or i64 %i.ac, %i.v                      ; 2 uses
  %i.ae = and i32 %i.y, 63
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = shl nuw i64 1, %i.af
  %i.ah = or i64 %i.ag, %i.u                      ; 2 uses
  %i.ai = lshr i32 %i.y, 6
  %i.aj = and i32 %i.ai, 63
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = shl nuw i64 1, %i.ak
  %i.am = or i64 %i.al, %i.t                      ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.067.i.i.i.i.i, i64 2
  %i.ao = add nuw i32 %.08.i.i.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i32 %i.ao, %.sroa.4.8.extract.trunc.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %bb.c, !llvm.loop !162

bb.d:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 2
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4 ; 2 uses
  %i.ar = load i16, ptr %i.ap, align 1, !tbaa !283 ; 2 uses
  %i.as = tail call noundef i16 @llvm.bswap.i16(i16 %i.ar)
  %i.at = zext i16 %i.as to i64
  %.idx.i.i = mul nuw nsw i64 %i.at, 6
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.idx.i.i
  %.not14.i.i = icmp eq i16 %i.ar, 0
  br i1 %.not14.i.i, label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %.01115.i.i = phi ptr [ %i.aw, %.lr.ph.i.i ], [ %i.aq, %bb.d ] ; 2 uses
  %i.av = tail call noundef zeroext i1 @_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI15hb_set_digest_tEEbPT_(ptr noundef nonnull align 1 dereferenceable(6) %.01115.i.i, ptr noundef nonnull %i.e)
  %i.aw = getelementptr inbounds nuw i8, ptr %.01115.i.i, i64 6 ; 2 uses
  %.not.i.i = icmp ne ptr %i.aw, %i.au
  %or.cond.not = select i1 %i.av, i1 %.not.i.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i.i, label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit

_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit: ; preds = %.lr.ph.i.i, %bb.a, %bb.b, %._crit_edge.i.i.i.i.i, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT33hb_accelerate_subtables_context_t8apply_toINS_6Layout9GPOS_impl19MarkLigPosFormat1_2INS2_10SmallTypesEEEEEbPKvPNS_21hb_ot_apply_context_tEPv(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16 comdat align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK2OT6Layout9GPOS_impl19MarkLigPosFormat1_2INS0_10SmallTypesEE5applyEPNS_21hb_ot_apply_context_tE(ptr noundef nonnull align 1 dereferenceable(12) %0, ptr noundef %1)
  ret i1 %i.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT33hb_accelerate_subtables_context_t15apply_cached_toINS_6Layout9GPOS_impl19MarkLigPosFormat1_2INS2_10SmallTypesEEEEEbPKvPNS_21hb_ot_apply_context_tEPv(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16 comdat align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK2OT6Layout9GPOS_impl19MarkLigPosFormat1_2INS0_10SmallTypesEE5applyEPNS_21hb_ot_apply_context_tE(ptr noundef nonnull align 1 dereferenceable(12) %0, ptr noundef %1)
  ret i1 %i.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT33hb_accelerate_subtables_context_t13cache_func_toINS_6Layout9GPOS_impl19MarkLigPosFormat1_2INS2_10SmallTypesEEEEEbPNS_21hb_ot_apply_context_tENS_25hb_ot_subtable_cache_op_tE(ptr noundef %0, i32 noundef %1) #16 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2OT6Layout9GPOS_impl19MarkLigPosFormat1_2INS0_10SmallTypesEE5applyEPNS_21hb_ot_apply_context_tE(ptr noundef nonnull align 1 dereferenceable(12) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1278 ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.d = load i16, ptr %i.c, align 1, !tbaa !283  ; 2 uses
  %i.e = icmp eq i16 %i.d, 0
  %i.f = tail call i16 @llvm.bswap.i16(i16 %i.d)
  %i.g = zext i16 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g
  %.0.i.i = select i1 %i.e, ptr @_hb_NullPool, ptr %i.h, !prof !267
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 5 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !589
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 92 ; 6 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !653
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [20 x i8], ptr %i.j, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !637
  %i.p = tail call noundef i32 @_ZNK2OT6Layout6Common8Coverage12get_coverageEj(ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i, i32 noundef %i.o) ; 2 uses
  %i.q = icmp eq i32 %i.p, -1
  br i1 %i.q, label %_ZN11hb_buffer_t31unsafe_to_concat_from_outbufferEjj.exit90, label %bb.b, !prof !268

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  store i32 8, ptr %i.r, align 8, !tbaa !2073
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 316 ; 4 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !1267 ; 2 uses
  %i.u = load i32, ptr %i.k, align 4, !tbaa !653  ; 3 uses
  %i.v = icmp ugt i32 %i.t, %i.u
  br i1 %i.v, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.s, align 4, !tbaa !1267
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 312
  store i32 -1, ptr %i.w, align 8, !tbaa !1266
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.x = phi i32 [ 0, %bb.c ], [ %i.t, %bb.b ]
  %i.y = icmp ugt i32 %i.u, %i.x
  br i1 %i.y, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 33
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 34
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 35
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %_ZNK2OT9matcher_t8may_skipINS_21hb_ot_apply_context_tEEENS0_10may_skip_tEPKT_RK15hb_glyph_info_t.exit.thread
  %.060181 = phi i32 [ %i.u, %.lr.ph ], [ %i.al, %_ZNK2OT9matcher_t8may_skipINS_21hb_ot_apply_context_tEEENS0_10may_skip_tEPKT_RK15hb_glyph_info_t.exit.thread ]
  %i.ak = load ptr, ptr %i.i, align 8, !tbaa !589
  %i.al = add i32 %.060181, -1                    ; 4 uses
  %i.am = zext i32 %i.al to i64                   ; 2 uses
  %i.an = getelementptr inbounds nuw [20 x i8], ptr %i.ak, i64 %i.am ; 6 uses
  %i.ao = load ptr, ptr %i.z, align 8, !tbaa !1287 ; 2 uses
  %i.ap = load i32, ptr %i.r, align 8, !tbaa !1289 ; 4 uses
  %i.aq = getelementptr i8, ptr %i.an, i64 12     ; 2 uses
  %.val = load i16, ptr %i.aq, align 4, !tbaa !280
  %i.ar = zext i16 %.val to i32                   ; 3 uses
  %i.as = and i32 %i.ap, 14
  %i.at = and i32 %i.as, %i.ar
  %.not.i79 = icmp eq i32 %i.at, 0
  br i1 %.not.i79, label %bb.f, label %_ZNK2OT9matcher_t8may_skipINS_21hb_ot_apply_context_tEEENS0_10may_skip_tEPKT_RK15hb_glyph_info_t.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.au = and i32 %i.ar, 8
  %.not8.i81 = icmp eq i32 %i.au, 0
  br i1 %.not8.i81, label %_ZNK2OT21hb_ot_apply_context_t20check_glyph_propertyEPK15hb_glyph_info_tj.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.av = and i32 %i.ap, 16
  %.not.i82 = icmp eq i32 %i.av, 0
  br i1 %.not.i82, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aw = lshr i32 %i.ap, 16                      ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ao, i64 248
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !1279, !nonnull !293, !align !294
  %i.az = load i32, ptr %i.an, align 4, !tbaa !637 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !1720
  %i.bc = zext nneg i32 %i.aw to i64
  %i.bd = getelementptr inbounds nuw [24 x i8], ptr %i.bb, i64 %i.bc ; 3 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !357
  %i.bf = lshr i32 %i.az, 4
  %i.bg = and i32 %i.bf, 63
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = shl nuw i64 1, %i.bh
  %i.bj = and i64 %i.bi, %i.be
  %.not.i86 = icmp eq i64 %i.bj, 0
  br i1 %.not.i86, label %_ZNK2OT9matcher_t8may_skipINS_21hb_ot_apply_context_tEEENS0_10may_skip_tEPKT_RK15hb_glyph_info_t.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !357
  %i.bm = and i32 %i.az, 63
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = shl nuw i64 1, %i.bn
  %i.bp = and i64 %i.bo, %i.bl
  %.not.i86.1 = icmp eq i64 %i.bp, 0
  br i1 %.not.i86.1, label %_ZNK2OT9matcher_t8may_skipINS_21hb_ot_apply_context_tEEENS0_10may_skip_tEPKT_RK15hb_glyph_info_t.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !357
  %i.bs = lshr i32 %i.az, 6
  %i.bt = and i32 %i.bs, 63
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = shl nuw i64 1, %i.bu
  %i.bw = and i64 %i.bv, %i.br
  %.not.i86.2 = icmp eq i64 %i.bw, 0
  br i1 %.not.i86.2, label %_ZNK2OT9matcher_t8may_skipINS_21hb_ot_apply_context_tEEENS0_10may_skip_tEPKT_RK15hb_glyph_info_t.exit.thread, label %.split

.split:                                           ; preds = %bb.j
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ao, i64 240
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !1715, !nonnull !293
  %i.bz = tail call noundef zeroext i1 @_ZNK2OT4GDEF15mark_set_coversEjj(ptr noundef nonnull align 1 dereferenceable(18) %i.by, i32 noundef %i.aw, i32 noundef %i.az)
  br i1 %i.bz, label %_ZNK2OT21hb_ot_apply_context_t20check_glyph_propertyEPK15hb_glyph_info_tj.exit.thread, label %_ZNK2OT9matcher_t8may_skipINS_21hb_ot_apply_context_tEEENS0_10may_skip_tEPKT_RK15hb_glyph_info_t.exit.thread

bb.k:                                             ; preds = %bb.g
  %i.ca = and i32 %i.ap, 65280                    ; 2 uses
  %.not11.i = icmp eq i32 %i.ca, 0
  %i.cb = and i32 %i.ar, 65280
  %i.cc = icmp eq i32 %i.ca, %i.cb
  %or.cond167 = or i1 %.not11.i, %i.cc
  br i1 %or.cond167, label %_ZNK2OT21hb_ot_apply_context_t20check_glyph_propertyEPK15hb_glyph_info_tj.exit.thread, label %_ZNK2OT9matcher_t8may_skipINS_21hb_ot_apply_context_tEEENS0_10may_skip_tEPKT_RK15hb_glyph_info_t.exit.thread

_ZNK2OT21hb_ot_apply_context_t20check_glyph_propertyEPK15hb_glyph_info_tj.exit.thread: ; preds = %bb.k, %bb.f, %.split
  %i.cd = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ce = load i16, ptr %i.cd, align 4, !tbaa !280
  %.fr177 = freeze i16 %i.ce                      ; 4 uses
  %i.cf = and i16 %.fr177, 32
  %.not.i98 = icmp eq i16 %i.cf, 0
  br i1 %.not.i98, label %_ZNK2OT9matcher_t8may_skipINS_21hb_ot_apply_context_tEEENS0_10may_skip_tEPKT_RK15hb_glyph_info_t.exit, label %_ZL35_hb_glyph_info_is_default_ignorablePK15hb_glyph_info_t.exit

_ZL35_hb_glyph_info_is_default_ignorablePK15hb_glyph_info_t.exit: ; preds = %_ZNK2OT21hb_ot_apply_context_t20check_glyph_propertyEPK15hb_glyph_info_tj.exit.thread
  %.val.i = load i16, ptr %i.aq, align 4, !tbaa !280
  %i.cg = and i16 %.val.i, 16
  %.not2.i = icmp eq i16 %i.cg, 0
  br i1 %.not2.i, label %bb.l, label %_ZNK2OT9matcher_t8may_skipINS_21hb_ot_apply_context_tEEENS0_10may_skip_tEPKT_RK15hb_glyph_info_t.exit

bb.l:                                             ; preds = %_ZL35_hb_glyph_info_is_default_ignorablePK15hb_glyph_info_t.exit
  %i.ch = load i8, ptr %i.aa, align 8, !tbaa !1291, !range !380, !noundef !293
  %i.ci = trunc nuw i8 %i.ch to i1
end_hunk_17
begin_hunk_18_@_ZNK2OT6Layout9GPOS_impl19MarkLigPosFormat1_2INS0_10SmallTypesEE5applyEPNS_21hb_ot_apply_context_tE:bb.a
bb.y:                                             ; preds = %bb.x
  %i.fh = icmp ne i32 %i.fc, -1
  %i.fi = sub i32 %i.fc, %i.ee
  %i.fj = icmp ugt i32 %i.fi, 255
  %i.fk = and i1 %i.fh, %i.fj
  br i1 %i.fk, label %_ZN11hb_buffer_t31unsafe_to_concat_from_outbufferEjj.exit90, label %bb.z, !prof !267

bb.z:                                             ; preds = %bb.y
  %i.fl = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.fm = load i32, ptr %i.fl, align 8, !tbaa !324
  %.sroa.speculated139 = tail call i32 @llvm.umin.i32(i32 %i.fc, i32 %i.fm)
  tail call void @_ZN11hb_buffer_t21_set_glyph_flags_implEjjjbb(ptr noundef nonnull align 8 dereferenceable(276) %i.b, i32 noundef 2, i32 noundef %i.ee, i32 noundef %.sroa.speculated139, i1 noundef zeroext false, i1 noundef zeroext true)
  br label %_ZN11hb_buffer_t31unsafe_to_concat_from_outbufferEjj.exit90

bb.aa:                                            ; preds = %bb.w
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.fo = load i16, ptr %i.fn, align 1, !tbaa !283 ; 2 uses
  %i.fp = icmp eq i16 %i.fo, 0
  %i.fq = tail call i16 @llvm.bswap.i16(i16 %i.fo)
  %i.fr = zext i16 %i.fq to i64
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 %i.fr
  %.0.i.i105 = select i1 %i.fp, ptr @_hb_NullPool, ptr %i.fs, !prof !267 ; 3 uses
  %i.ft = load i16, ptr %.0.i.i105, align 1, !tbaa !283
  %i.fu = tail call noundef i16 @llvm.bswap.i16(i16 %i.ft)
  %i.fv = zext i16 %i.fu to i32
  %.not.i106 = icmp ult i32 %i.ez, %i.fv
  br i1 %.not.i106, label %bb.ab, label %_ZNK2OT16List16OfOffsetToINS_6Layout9GPOS_impl12AnchorMatrixENS_7NumTypeILb1EtLj2EEEEixEi.exit, !prof !268

bb.ab:                                            ; preds = %bb.aa
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.fw = getelementptr inbounds nuw i8, ptr %.0.i.i105, i64 2
  %i.fx = zext nneg i32 %i.ez to i64
  %i.fy = getelementptr inbounds nuw [2 x i8], ptr %i.fw, i64 %i.fx
  %i.fz = load i16, ptr %i.fy, align 1, !tbaa !283 ; 2 uses
  %i.ga = icmp eq i16 %i.fz, 0
  %i.gb = tail call i16 @llvm.bswap.i16(i16 %i.fz)
  %i.gc = zext i16 %i.gb to i64
  %i.gd = getelementptr inbounds nuw i8, ptr %.0.i.i105, i64 %i.gc
  %.0.i.i.i = select i1 %i.ga, ptr @_hb_NullPool, ptr %i.gd, !prof !267
  br label %_ZNK2OT16List16OfOffsetToINS_6Layout9GPOS_impl12AnchorMatrixENS_7NumTypeILb1EtLj2EEEEixEi.exit

_ZNK2OT16List16OfOffsetToINS_6Layout9GPOS_impl12AnchorMatrixENS_7NumTypeILb1EtLj2EEEEixEi.exit: ; preds = %bb.aa, %bb.ab
  %.0.i107 = phi ptr [ %.0.i.i.i, %bb.ab ], [ @_hb_NullPool, %bb.aa ] ; 2 uses
  %i.ge = load i16, ptr %.0.i107, align 1, !tbaa !283 ; 2 uses
  %i.gf = tail call noundef i16 @llvm.bswap.i16(i16 %i.ge)
  %i.gg = zext i16 %i.gf to i32                   ; 3 uses
  %.not = icmp eq i16 %i.ge, 0
  br i1 %.not, label %bb.ac, label %bb.af, !prof !267

bb.ac:                                            ; preds = %_ZNK2OT16List16OfOffsetToINS_6Layout9GPOS_impl12AnchorMatrixENS_7NumTypeILb1EtLj2EEEEixEi.exit
  %i.gh = load i32, ptr %i.k, align 4, !tbaa !653
  %i.gi = add i32 %i.gh, 1                        ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.gk = load i32, ptr %i.gj, align 8, !tbaa !587
  %i.gl = and i32 %i.gk, 64
  %i.gm = icmp eq i32 %i.gl, 0
  br i1 %i.gm, label %_ZN11hb_buffer_t31unsafe_to_concat_from_outbufferEjj.exit90, label %bb.ad, !prof !268

bb.ad:                                            ; preds = %bb.ac
  %i.gn = icmp ne i32 %i.gi, -1
  %i.go = sub i32 %i.gi, %i.ee
  %i.gp = icmp ugt i32 %i.go, 255
  %i.gq = and i1 %i.gn, %i.gp
  br i1 %i.gq, label %_ZN11hb_buffer_t31unsafe_to_concat_from_outbufferEjj.exit90, label %bb.ae, !prof !267

bb.ae:                                            ; preds = %bb.ad
  %i.gr = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.gs = load i32, ptr %i.gr, align 8, !tbaa !324
  %.sroa.speculated132 = tail call i32 @llvm.umin.i32(i32 %i.gi, i32 %i.gs)
  tail call void @_ZN11hb_buffer_t21_set_glyph_flags_implEjjjbb(ptr noundef nonnull align 8 dereferenceable(276) %i.b, i32 noundef 2, i32 noundef %i.ee, i32 noundef %.sroa.speculated132, i1 noundef zeroext false, i1 noundef zeroext true)
  br label %_ZN11hb_buffer_t31unsafe_to_concat_from_outbufferEjj.exit90

bb.af:                                            ; preds = %_ZNK2OT16List16OfOffsetToINS_6Layout9GPOS_impl12AnchorMatrixENS_7NumTypeILb1EtLj2EEEEixEi.exit
  %i.gt = load ptr, ptr %i.i, align 8, !tbaa !589 ; 2 uses
  %i.gu = getelementptr inbounds nuw [20 x i8], ptr %i.gt, i64 %i.ew
  %i.gv = getelementptr i8, ptr %i.gu, i64 14
  %.val95 = load i8, ptr %i.gv, align 2, !tbaa !280
  %i.gw = lshr i8 %.val95, 5                      ; 2 uses
  %i.gx = load i32, ptr %i.k, align 4, !tbaa !653
  %i.gy = zext i32 %i.gx to i64
  %i.gz = getelementptr inbounds nuw [20 x i8], ptr %i.gt, i64 %i.gy
  %i.ha = getelementptr i8, ptr %i.gz, i64 14
  %.val94 = load i8, ptr %i.ha, align 2, !tbaa !280 ; 3 uses
  %i.hb = and i8 %.val94, 16
  %.not.i109 = icmp eq i8 %i.hb, 0
  %i.hc = and i8 %.val94, 15
  %narrow.i = select i1 %.not.i109, i8 %i.hc, i8 0 ; 2 uses
  %.0.i110 = zext nneg i8 %narrow.i to i32
  %.not69 = icmp eq i8 %i.gw, 0
  br i1 %.not69, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hd = lshr i8 %.val94, 5
  %i.he = icmp eq i8 %i.gw, %i.hd
  %i.hf = icmp ne i8 %narrow.i, 0
  %or.cond = and i1 %i.he, %i.hf
  br i1 %or.cond, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %i.gg, i32 %.0.i110)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.af, %bb.ag, %bb.ah
  %.0.in = phi i32 [ %.sroa.speculated, %bb.ah ], [ %i.gg, %bb.ag ], [ %i.gg, %bb.af ]
  %.0 = add nsw i32 %.0.in, -1
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hh = load i16, ptr %i.hg, align 1, !tbaa !283 ; 2 uses
  %i.hi = icmp eq i16 %i.hh, 0
  %i.hj = tail call i16 @llvm.bswap.i16(i16 %i.hh)
  %i.hk = zext i16 %i.hj to i64
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 %i.hk
  %.0.i.i115 = select i1 %i.hi, ptr @_hb_NullPool, ptr %i.hl, !prof !267
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.hn = load i16, ptr %i.hm, align 1, !tbaa !283
  %i.ho = tail call noundef i16 @llvm.bswap.i16(i16 %i.hn)
  %i.hp = zext i16 %i.ho to i32
  %i.hq = tail call noundef zeroext i1 @_ZNK2OT6Layout9GPOS_impl9MarkArray5applyEPNS_21hb_ot_apply_context_tEjjRKNS1_12AnchorMatrixEjj(ptr noundef nonnull align 1 dereferenceable(6) %.0.i.i115, ptr noundef nonnull %1, i32 noundef %i.p, i32 noundef %.0, ptr noundef nonnull align 1 dereferenceable(4) %.0.i107, i32 noundef %i.hp, i32 noundef %i.ee)
  br label %_ZN11hb_buffer_t31unsafe_to_concat_from_outbufferEjj.exit90

_ZN11hb_buffer_t31unsafe_to_concat_from_outbufferEjj.exit90: ; preds = %bb.ai, %bb.ad, %bb.ae, %bb.ac, %bb.x, %bb.z, %bb.y, %bb.t, %bb.v, %bb.u, %bb.a
  %.3 = phi i1 [ false, %bb.x ], [ false, %bb.a ], [ false, %bb.t ], [ false, %bb.u ], [ false, %bb.v ], [ false, %bb.y ], [ false, %bb.z ], [ %i.hq, %bb.ai ], [ false, %bb.ad ], [ false, %bb.ae ], [ false, %bb.ac ]
  ret i1 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2OT33hb_accelerate_subtables_context_t15hb_applicable_t4initINS_6Layout9GPOS_impl20MarkMarkPosFormat1_2INS3_10SmallTypesEEEEEvRKT_PFbPKvPNS_21hb_ot_apply_context_tEPvESH_PFbSE_NS_25hb_ot_subtable_cache_op_tEESF_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 1 dereferenceable(12) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !1838
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !1835
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %i.b, align 8, !tbaa !1836
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %4, ptr %i.c, align 8, !tbaa !1839
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %5, ptr %i.d, align 8, !tbaa !1404
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false), !tbaa !357
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.g = load i16, ptr %i.f, align 1, !tbaa !283  ; 2 uses
  %i.h = icmp eq i16 %i.g, 0
  %i.i = tail call i16 @llvm.bswap.i16(i16 %i.g)
  %i.j = zext i16 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %i.j
  %.0.i.i.i = select i1 %i.h, ptr @_hb_NullPool, ptr %i.k, !prof !267 ; 5 uses
  %i.l = load i16, ptr %.0.i.i.i, align 1, !tbaa !283
  %i.m = tail call noundef i16 @llvm.bswap.i16(i16 %i.l)
  switch i16 %i.m, label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit [
    i16 1, label %bb.b
    i16 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 2
  %i.o = load i16, ptr %i.n, align 1, !tbaa !283  ; 2 uses
  %i.p = tail call noundef i16 @llvm.bswap.i16(i16 %i.o)
  %.sroa.4.8.extract.trunc.i.i = zext i16 %i.p to i32
  %.not.i.i.i.i.i = icmp eq i16 %i.o, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4
  %.promoted.i.i.i.i.i = load i64, ptr %i.e, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.promoted9.i.i.i.i.i = load i64, ptr %i.r, align 8, !tbaa !357
  %.promoted11.i.i.i.i.i = load i64, ptr %i.s, align 8, !tbaa !357
  br label %bb.c

._crit_edge.i.i.i.i.i:                            ; preds = %bb.c
  store i64 %i.ad, ptr %i.e, align 8, !tbaa !357
  store i64 %i.ah, ptr %i.r, align 8, !tbaa !357
  store i64 %i.am, ptr %i.s, align 8, !tbaa !357
  br label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %i.t = phi i64 [ %.promoted11.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.am, %bb.c ]
  %i.u = phi i64 [ %.promoted9.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.ah, %bb.c ]
  %.08.i.i.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i.i.i ], [ %i.ao, %bb.c ]
  %.067.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i ], [ %i.an, %bb.c ] ; 2 uses
  %i.v = phi i64 [ %.promoted.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.ad, %bb.c ]
  %i.w = load i16, ptr %.067.i.i.i.i.i, align 1, !tbaa !283
  %i.x = tail call noundef i16 @llvm.bswap.i16(i16 %i.w)
  %i.y = zext i16 %i.x to i32                     ; 3 uses
  %i.z = lshr i32 %i.y, 4
  %i.aa = and i32 %i.z, 63
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = shl nuw i64 1, %i.ab
  %i.ad = or i64 %i.ac, %i.v                      ; 2 uses
  %i.ae = and i32 %i.y, 63
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = shl nuw i64 1, %i.af
  %i.ah = or i64 %i.ag, %i.u                      ; 2 uses
  %i.ai = lshr i32 %i.y, 6
  %i.aj = and i32 %i.ai, 63
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = shl nuw i64 1, %i.ak
  %i.am = or i64 %i.al, %i.t                      ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.067.i.i.i.i.i, i64 2
  %i.ao = add nuw i32 %.08.i.i.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i32 %i.ao, %.sroa.4.8.extract.trunc.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %bb.c, !llvm.loop !162

bb.d:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !279
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 2
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4 ; 2 uses
  %i.ar = load i16, ptr %i.ap, align 1, !tbaa !283 ; 2 uses
  %i.as = tail call noundef i16 @llvm.bswap.i16(i16 %i.ar)
  %i.at = zext i16 %i.as to i64
  %.idx.i.i = mul nuw nsw i64 %i.at, 6
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.idx.i.i
  %.not14.i.i = icmp eq i16 %i.ar, 0
  br i1 %.not14.i.i, label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %.01115.i.i = phi ptr [ %i.aw, %.lr.ph.i.i ], [ %i.aq, %bb.d ] ; 2 uses
  %i.av = tail call noundef zeroext i1 @_ZNK2OT6Layout6Common11RangeRecordINS0_10SmallTypesEE16collect_coverageI15hb_set_digest_tEEbPT_(ptr noundef nonnull align 1 dereferenceable(6) %.01115.i.i, ptr noundef nonnull %i.e)
  %i.aw = getelementptr inbounds nuw i8, ptr %.01115.i.i, i64 6 ; 2 uses
  %.not.i.i = icmp ne ptr %i.aw, %i.au
  %or.cond.not = select i1 %i.av, i1 %.not.i.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i.i, label %_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit

_ZNK2OT6Layout6Common8Coverage16collect_coverageI15hb_set_digest_tEEbPT_.exit: ; preds = %.lr.ph.i.i, %bb.a, %bb.b, %._crit_edge.i.i.i.i.i, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT33hb_accelerate_subtables_context_t8apply_toINS_6Layout9GPOS_impl20MarkMarkPosFormat1_2INS2_10SmallTypesEEEEEbPKvPNS_21hb_ot_apply_context_tEPv(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16 comdat align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK2OT6Layout9GPOS_impl20MarkMarkPosFormat1_2INS0_10SmallTypesEE5applyEPNS_21hb_ot_apply_context_tE(ptr noundef nonnull align 1 dereferenceable(12) %0, ptr noundef %1)
  ret i1 %i.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT33hb_accelerate_subtables_context_t15apply_cached_toINS_6Layout9GPOS_impl20MarkMarkPosFormat1_2INS2_10SmallTypesEEEEEbPKvPNS_21hb_ot_apply_context_tEPv(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16 comdat align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK2OT6Layout9GPOS_impl20MarkMarkPosFormat1_2INS0_10SmallTypesEE5applyEPNS_21hb_ot_apply_context_tE(ptr noundef nonnull align 1 dereferenceable(12) %0, ptr noundef %1)
  ret i1 %i.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2OT33hb_accelerate_subtables_context_t13cache_func_toINS_6Layout9GPOS_impl20MarkMarkPosFormat1_2INS2_10SmallTypesEEEEEbPNS_21hb_ot_apply_context_tENS_25hb_ot_subtable_cache_op_tE(ptr noundef %0, i32 noundef %1) #16 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2OT6Layout9GPOS_impl20MarkMarkPosFormat1_2INS0_10SmallTypesEE5applyEPNS_21hb_ot_apply_context_tE(ptr noundef nonnull align 1 dereferenceable(12) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1278 ; 14 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.e = load i16, ptr %i.d, align 1, !tbaa !283  ; 2 uses
  %i.f = icmp eq i16 %i.e, 0
  %i.g = tail call i16 @llvm.bswap.i16(i16 %i.e)
  %i.h = zext i16 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %i.h
  %.0.i.i = select i1 %i.f, ptr @_hb_NullPool, ptr %i.i, !prof !267
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 112 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !589
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 92 ; 5 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !653
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [20 x i8], ptr %i.k, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !637
  %i.q = tail call noundef i32 @_ZNK2OT6Layout6Common8Coverage12get_coverageEj(ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i, i32 noundef %i.p) ; 2 uses
  %i.r = icmp eq i32 %i.q, -1
  br i1 %i.r, label %bb.v, label %bb.b, !prof !268

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.t = load i32, ptr %i.l, align 4, !tbaa !653
  store i32 %i.t, ptr %i.s, align 8, !tbaa !1366
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 292
  %i.v = load i32, ptr %i.u, align 4, !tbaa !1286
  %i.w = and i32 %i.v, -15
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 %i.w, ptr %i.x, align 8, !tbaa !2073
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #63
  %i.y = call noundef zeroext i1 @_ZN2OT19skipping_iterator_tINS_21hb_ot_apply_context_tEE4prevEPj(ptr noundef nonnull align 8 dereferenceable(60) %i.s, ptr noundef nonnull %i.a)
  br i1 %i.y, label %bb.f, label %bb.c, !prof !268

bb.c:                                             ; preds = %bb.b
  %i.z = load i32, ptr %i.a, align 4, !tbaa !324  ; 2 uses
  %i.aa = load i32, ptr %i.l, align 4, !tbaa !653
  %i.ab = add i32 %i.aa, 1                        ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !587
  %i.ae = and i32 %i.ad, 64
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %_ZN11hb_buffer_t31unsafe_to_concat_from_outbufferEjj.exit60, label %bb.d, !prof !268

bb.d:                                             ; preds = %bb.c
  %i.ag = icmp ne i32 %i.ab, -1
  %i.ah = sub i32 %i.ab, %i.z
  %i.ai = icmp ugt i32 %i.ah, 255
  %i.aj = and i1 %i.ag, %i.ai
  br i1 %i.aj, label %_ZN11hb_buffer_t31unsafe_to_concat_from_outbufferEjj.exit60, label %bb.e, !prof !267

bb.e:                                             ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !324
  %.sroa.speculated105 = call i32 @llvm.umin.i32(i32 %i.ab, i32 %i.al)
  call void @_ZN11hb_buffer_t21_set_glyph_flags_implEjjjbb(ptr noundef nonnull align 8 dereferenceable(276) %i.c, i32 noundef 2, i32 noundef %i.z, i32 noundef %.sroa.speculated105, i1 noundef zeroext false, i1 noundef zeroext true)
  br label %_ZN11hb_buffer_t31unsafe_to_concat_from_outbufferEjj.exit60

bb.f:                                             ; preds = %bb.b
  %i.am = load ptr, ptr %i.j, align 8, !tbaa !589 ; 2 uses
  %i.an = load i32, ptr %i.s, align 8, !tbaa !1366 ; 6 uses
  %i.ao = zext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw [20 x i8], ptr %i.am, i64 %i.ao ; 3 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 12
  %.val64 = load i16, ptr %i.aq, align 4, !tbaa !280
  %i.ar = and i16 %.val64, 8
  %.not = icmp eq i16 %i.ar, 0
  %i.as = load i32, ptr %i.l, align 4, !tbaa !653 ; 3 uses
  br i1 %.not, label %bb.g, label %bb.j, !prof !268

bb.g:                                             ; preds = %bb.f
  %i.at = add i32 %i.as, 1                        ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.av = load i32, ptr %i.au, align 8, !tbaa !587
  %i.aw = and i32 %i.av, 64
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %_ZN11hb_buffer_t31unsafe_to_concat_from_outbufferEjj.exit60, label %bb.h, !prof !268

bb.h:                                             ; preds = %bb.g
  %i.ay = icmp ne i32 %i.at, -1
  %i.az = sub i32 %i.at, %i.an
  %i.ba = icmp ugt i32 %i.az, 255
  %i.bb = and i1 %i.ay, %i.ba
  br i1 %i.bb, label %_ZN11hb_buffer_t31unsafe_to_concat_from_outbufferEjj.exit60, label %bb.i, !prof !267

bb.i:                                             ; preds = %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !324
  %.sroa.speculated98 = call i32 @llvm.umin.i32(i32 %i.at, i32 %i.bd)
  call void @_ZN11hb_buffer_t21_set_glyph_flags_implEjjjbb(ptr noundef nonnull align 8 dereferenceable(276) %i.c, i32 noundef 2, i32 noundef %i.an, i32 noundef %.sroa.speculated98, i1 noundef zeroext false, i1 noundef zeroext true)
  br label %_ZN11hb_buffer_t31unsafe_to_concat_from_outbufferEjj.exit60

bb.j:                                             ; preds = %bb.f
  %i.be = zext i32 %i.as to i64
  %i.bf = getelementptr inbounds nuw [20 x i8], ptr %i.am, i64 %i.be
  %i.bg = getelementptr i8, ptr %i.bf, i64 14
  %.val61 = load i8, ptr %i.bg, align 2, !tbaa !280 ; 3 uses
  %i.bh = lshr i8 %.val61, 5                      ; 2 uses
  %i.bi = getelementptr i8, ptr %i.ap, i64 14
  %.val = load i8, ptr %i.bi, align 2, !tbaa !280 ; 3 uses
  %i.bj = lshr i8 %.val, 5                        ; 2 uses
  %i.bk = and i8 %.val61, 16
  %.not.i66 = icmp eq i8 %i.bk, 0
  %i.bl = and i8 %.val61, 15
  %narrow.i = select i1 %.not.i66, i8 %i.bl, i8 0 ; 2 uses
  %i.bm = and i8 %.val, 16
  %.not.i67 = icmp eq i8 %i.bm, 0
  %i.bn = and i8 %.val, 15
  %narrow.i68 = select i1 %.not.i67, i8 %i.bn, i8 0 ; 2 uses
  %i.bo = icmp eq i8 %i.bh, %i.bj
  %i.bp = icmp eq i8 %i.bh, 0                     ; 2 uses
  br i1 %i.bo, label %bb.k, label %bb.l, !prof !268

bb.k:                                             ; preds = %bb.j
  %i.bq = icmp eq i8 %narrow.i, %narrow.i68
  %or.cond54 = or i1 %i.bp, %i.bq
  br i1 %or.cond54, label %bb.q, label %bb.n

bb.l:                                             ; preds = %bb.j
  %i.br = icmp ne i8 %narrow.i, 0
  %or.cond = or i1 %i.bp, %i.br
  br i1 %or.cond, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.bs = icmp eq i8 %i.bj, 0
  %i.bt = icmp ne i8 %narrow.i68, 0
  %or.cond3 = or i1 %i.bs, %i.bt
  br i1 %or.cond3, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.k, %bb.m
  %i.bu = add i32 %i.as, 1                        ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !587
  %i.bx = and i32 %i.bw, 64
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %_ZN11hb_buffer_t31unsafe_to_concat_from_outbufferEjj.exit60, label %bb.o, !prof !268

bb.o:                                             ; preds = %bb.n
  %i.bz = icmp ne i32 %i.bu, -1
  %i.ca = sub i32 %i.bu, %i.an
  %i.cb = icmp ugt i32 %i.ca, 255
  %i.cc = and i1 %i.bz, %i.cb
  br i1 %i.cc, label %_ZN11hb_buffer_t31unsafe_to_concat_from_outbufferEjj.exit60, label %bb.p, !prof !267

bb.p:                                             ; preds = %bb.o
  %i.cd = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !324
  %.sroa.speculated91 = call i32 @llvm.umin.i32(i32 %i.bu, i32 %i.ce)
  call void @_ZN11hb_buffer_t21_set_glyph_flags_implEjjjbb(ptr noundef nonnull align 8 dereferenceable(276) %i.c, i32 noundef 2, i32 noundef %i.an, i32 noundef %.sroa.speculated91, i1 noundef zeroext false, i1 noundef zeroext true)
  br label %_ZN11hb_buffer_t31unsafe_to_concat_from_outbufferEjj.exit60
end_hunk_18
