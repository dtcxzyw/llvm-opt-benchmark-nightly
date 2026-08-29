Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/harfbuzz?download=true
inline.NumInlined: 35471
inline.NumDeleted: 12449
loop-unroll.NumCompletelyUnrolled: 169
loop-unroll.NumRuntimeUnrolled: 288
loop-unroll.NumUnrolled: 487
begin_hunk_0_@_ZNK2OT6Layout9GSUB_impl20SingleSubstFormat2_4INS0_10SmallTypesEE7closureEPNS_20hb_closure_context_tE:bb.a
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = zext i32 %i.k to i64
  %i.o = getelementptr inbounds nuw [72 x i8], ptr %i.m, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  %.0.i = select i1 %.not.i, ptr %i.q, ptr %i.o   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.s = load i16, ptr %i.r, align 1, !tbaa !62
  %i.t = tail call noundef i16 @llvm.bswap.i16(i16 %i.s)
  %i.u = zext i16 %i.t to i32
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i, i64 16 ; 3 uses
  %i.w = tail call noundef i32 @_ZNK23hb_bit_set_invertible_t14get_populationEv(ptr noundef nonnull align 8 dereferenceable(49) %i.v)
  %i.x = shl i32 %i.w, 2
  %i.y = icmp ult i32 %i.x, %i.u
  br i1 %i.y, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #63
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZN23hb_bit_set_invertible_t6iter_tC2ERKS_b(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(49) %i.v, i1 noundef zeroext true)
  %.fca.0.load.i.i.i = load ptr, ptr %3, align 8
  %.fca.1.gep.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.fca.1.load.i.i.i = load i64, ptr %.fca.1.gep.i.i.i, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  store ptr %.fca.0.load.i.i.i, ptr %4, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  store i64 %.fca.1.load.i.i.i, ptr %i.z, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @_ZN23hb_bit_set_invertible_t6iter_tC2ERKS_b(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(49) %i.v, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.aa = trunc i64 %.fca.1.load.i.i.i to i32     ; 2 uses
  %.not2627 = icmp eq i32 %i.aa, -1
  br i1 %.not2627, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  br label %bb.c

._crit_edge:                                      ; preds = %_ZNR9hb_iter_tIN23hb_bit_set_invertible_t6iter_tEjEppEv.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #63
  br label %bb.v

bb.c:                                             ; preds = %.lr.ph, %_ZNR9hb_iter_tIN23hb_bit_set_invertible_t6iter_tEjEppEv.exit
  %i.af = phi i32 [ %i.aa, %.lr.ph ], [ %i.bi, %_ZNR9hb_iter_tIN23hb_bit_set_invertible_t6iter_tEjEppEv.exit ]
  %i.ag = call noundef i32 @_ZNK2OT6Layout6Common8Coverage12get_coverageEj(ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i, i32 noundef %i.af) ; 3 uses
  %i.ah = icmp eq i32 %i.ag, -1
  br i1 %i.ah, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ai = load i16, ptr %i.r, align 1, !tbaa !62
  %i.aj = call noundef i16 @llvm.bswap.i16(i16 %i.ai)
  %i.ak = zext i16 %i.aj to i32
  %.not = icmp ult i32 %i.ag, %i.ak
  br i1 %.not, label %bb.e, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit

bb.e:                                             ; preds = %bb.d
  %i.al = zext nneg i32 %i.ag to i64
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.al
  %i.an = load i16, ptr %i.am, align 1, !tbaa !62
  %i.ao = call noundef i16 @llvm.bswap.i16(i16 %i.an)
  %i.ap = zext i16 %i.ao to i32                   ; 2 uses
  %i.aq = load i8, ptr %i.ad, align 8, !tbaa !1166, !range !220, !noundef !74
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.f, label %bb.g, !prof !48

bb.f:                                             ; preds = %bb.e
  call void @_ZN12hb_bit_set_t3delEj(ptr noundef nonnull align 8 dereferenceable(49) %i.ac, i32 noundef %i.ap)
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit

bb.g:                                             ; preds = %bb.e
  call void @_ZN12hb_bit_set_t3addEj(ptr noundef nonnull align 8 dereferenceable(49) %i.ac, i32 noundef %i.ap)
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit

_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit: ; preds = %bb.g, %bb.f, %bb.c, %bb.d
  %i.as = load ptr, ptr %4, align 8, !tbaa !1637  ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  %i.au = load i8, ptr %i.at, align 8, !tbaa !1166, !range !220, !noundef !74
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.i, label %bb.h, !prof !48

bb.h:                                             ; preds = %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit
  %i.aw = call noundef zeroext i1 @_ZNK12hb_bit_set_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(49) %i.as, ptr noundef nonnull %i.z) ; 0 uses
  br label %_ZNK23hb_bit_set_invertible_t4nextEPj.exit.i.i

bb.i:                                             ; preds = %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #63
  %i.ax = load i32, ptr %i.z, align 8, !tbaa !139 ; 5 uses
  store i32 %i.ax, ptr %i.a, align 4, !tbaa !139
  %i.ay = icmp eq i32 %i.ax, -2
  br i1 %i.ay, label %bb.j, label %bb.k, !prof !48

bb.j:                                             ; preds = %bb.i
  store i32 -1, ptr %i.z, align 8, !tbaa !139
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #63
  store i32 %i.ax, ptr %i.b, align 4, !tbaa !139
  %i.az = call noundef zeroext i1 @_ZNK12hb_bit_set_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(49) %i.as, ptr noundef nonnull %i.b) ; 0 uses
  %i.ba = add i32 %i.ax, 1                        ; 2 uses
  %i.bb = load i32, ptr %i.b, align 4, !tbaa !139
  %i.bc = icmp ult i32 %i.ba, %i.bb
  br i1 %i.bc, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 %i.ax, ptr %i.b, align 4, !tbaa !139
  %i.bd = call noundef zeroext i1 @_ZNK12hb_bit_set_t10next_rangeEPjS0_(ptr noundef nonnull align 8 dereferenceable(49) %i.as, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 0 uses
  %i.be = load i32, ptr %i.b, align 4, !tbaa !139
  %i.bf = add i32 %i.be, 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sink.i.i.i = phi i32 [ %i.bf, %bb.l ], [ %i.ba, %bb.k ]
  store i32 %.sink.i.i.i, ptr %i.z, align 8, !tbaa !139
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #63
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #63
  br label %_ZNK23hb_bit_set_invertible_t4nextEPj.exit.i.i

_ZNK23hb_bit_set_invertible_t4nextEPj.exit.i.i:   ; preds = %bb.n, %bb.h
  %i.bg = load i32, ptr %i.ae, align 4, !tbaa !1640 ; 2 uses
  %.not.i.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i, label %_ZNR9hb_iter_tIN23hb_bit_set_invertible_t6iter_tEjEppEv.exit, label %bb.o, !prof !48

bb.o:                                             ; preds = %_ZNK23hb_bit_set_invertible_t4nextEPj.exit.i.i
  %i.bh = add i32 %i.bg, -1
  store i32 %i.bh, ptr %i.ae, align 4, !tbaa !1640
  br label %_ZNR9hb_iter_tIN23hb_bit_set_invertible_t6iter_tEjEppEv.exit

_ZNR9hb_iter_tIN23hb_bit_set_invertible_t6iter_tEjEppEv.exit: ; preds = %_ZNK23hb_bit_set_invertible_t4nextEPj.exit.i.i, %bb.o
  %i.bi = load i32, ptr %i.z, align 8, !tbaa !1641 ; 2 uses
  %.not26 = icmp eq i32 %i.bi, -1
  br i1 %.not26, label %._crit_edge, label %bb.c

bb.p:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #63
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #63
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #63
  %i.bj = load i16, ptr %.0.i.i, align 1, !tbaa !62, !noalias !3717
  %i.bk = tail call noundef i16 @llvm.bswap.i16(i16 %i.bj) ; 2 uses
  switch i16 %i.bk, label %"_ZNK4$_29clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_11HBGlyphID16ENS1_7NumTypeILb1EtLj2EEEEETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISF_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISG_EEE4iterEEEOSF_OSG_.exit" [
    i16 1, label %bb.q
    i16 2, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !noalias !3717, !srcloc !60
  br label %"_ZNK4$_29clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_11HBGlyphID16ENS1_7NumTypeILb1EtLj2EEEEETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISF_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISG_EEE4iterEEEOSF_OSG_.exit"

bb.r:                                             ; preds = %bb.p
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !noalias !3717, !srcloc !60
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 2 ; 4 uses
  %i.bm = load i16, ptr %i.bl, align 1, !tbaa !62, !noalias !3717
  %.not.i.i.i.i.i = icmp eq i16 %i.bm, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i, label %bb.s, !prof !787

bb.s:                                             ; preds = %bb.r
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !noalias !3717, !srcloc !60
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4 ; 3 uses
  %i.bo = load i16, ptr %i.bn, align 1, !tbaa !62, !noalias !3717
  %i.bp = tail call noundef i16 @llvm.bswap.i16(i16 %i.bo) ; 3 uses
  %.pre8.i.i.i.i.i = load i16, ptr %i.bl, align 1, !tbaa !62, !noalias !3717
  %i.bq = icmp eq i16 %.pre8.i.i.i.i.i, 0
  br i1 %i.bq, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i, !prof !124

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i: ; preds = %bb.s
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !noalias !3717, !srcloc !60
  %.pre11.i.i.i.i.i = load i16, ptr %i.bl, align 1, !tbaa !62, !noalias !3717
  %i.br = icmp eq i16 %.pre11.i.i.i.i.i, 0
  %i.bs = load i16, ptr %i.bn, align 1, !tbaa !62, !noalias !3717
  %i.bt = tail call noundef i16 @llvm.bswap.i16(i16 %i.bs) ; 2 uses
  br i1 %i.br, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i, label %bb.t, !prof !124

bb.t:                                             ; preds = %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !noalias !3717, !srcloc !60
  br label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i: ; preds = %bb.t, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i, %bb.s, %bb.r
  %.sroa.11.0.shrunk.i = phi i16 [ %i.bp, %bb.t ], [ %i.bp, %bb.s ], [ %i.bp, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i ], [ 0, %bb.r ]
  %i.bu = phi i16 [ %i.bt, %bb.t ], [ 256, %bb.s ], [ %i.bt, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i ], [ 256, %bb.r ]
  %.0.i6.i.i.i.i.i = phi ptr [ %i.bn, %bb.t ], [ @_hb_Null_OT_RangeRecord, %bb.s ], [ @_hb_Null_OT_RangeRecord, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i ], [ @_hb_Null_OT_RangeRecord, %bb.r ]
  %.sroa.11.0.i = zext i16 %.sroa.11.0.shrunk.i to i32
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.i6.i.i.i.i.i, i64 2
  %i.bw = load i16, ptr %i.bv, align 1, !tbaa !62, !noalias !3717
  %i.bx = tail call noundef i16 @llvm.bswap.i16(i16 %i.bw)
  %i.by = icmp ugt i16 %i.bu, %i.bx
  br i1 %i.by, label %bb.u, label %"_ZNK4$_29clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_11HBGlyphID16ENS1_7NumTypeILb1EtLj2EEEEETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISF_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISG_EEE4iterEEEOSF_OSG_.exit", !prof !48

bb.u:                                             ; preds = %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i
  %i.bz = load i16, ptr %i.bl, align 1, !tbaa !62, !noalias !3717
  %i.ca = tail call noundef i16 @llvm.bswap.i16(i16 %i.bz)
  %i.cb = zext i16 %i.ca to i32
  br label %"_ZNK4$_29clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_11HBGlyphID16ENS1_7NumTypeILb1EtLj2EEEEETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISF_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISG_EEE4iterEEEOSF_OSG_.exit"

"_ZNK4$_29clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_11HBGlyphID16ENS1_7NumTypeILb1EtLj2EEEEETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISF_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISG_EEE4iterEEEOSF_OSG_.exit": ; preds = %bb.p, %bb.q, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i, %bb.u
  %.sroa.7.0.i = phi i32 [ 0, %bb.p ], [ 0, %bb.q ], [ %i.cb, %bb.u ], [ 0, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i ]
  %.sroa.11.1.i = phi i32 [ 0, %bb.p ], [ 0, %bb.q ], [ 0, %bb.u ], [ %.sroa.11.0.i, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i ]
  %.sroa.52.0.i = phi ptr [ null, %bb.p ], [ %.0.i.i, %bb.q ], [ %.0.i.i, %bb.u ], [ %.0.i.i, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i ]
  %i.cc = zext i16 %i.bk to i32
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.ce = load i16, ptr %i.r, align 1, !tbaa !62, !noalias !3724
  %i.cf = tail call noundef i16 @llvm.bswap.i16(i16 %i.ce)
  %.sroa.2.8.insert.ext.i.i.i.i.i = zext i16 %i.cf to i64
  store i32 %i.cc, ptr %7, align 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 0, ptr %.sroa.424.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %.sroa.52.0.i, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 %.sroa.7.0.i, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 20
  store i32 0, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i32 %.sroa.11.1.i, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 28
  store i32 0, ptr %.sroa.9.0..sroa_idx, align 4
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %i.cd, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i64 %.sroa.2.8.insert.ext.i.i.i.i.i, ptr %.sroa.11.0..sroa_idx, align 8
  call fastcc void @"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_11HBGlyphID16EEE24hb_filter_iter_factory_tIRK8hb_set_tRK3$_6ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSK_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISK_Efp_EEEOSK_OSQ_"(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull align 8 dereferenceable(48) %7, ptr nonnull %.0.i, ptr nonnull @_ZL8hb_first)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull readonly align 8 dereferenceable(64) %6, i64 64, i1 false)
  %i.cg = getelementptr inbounds nuw i8, ptr %5, i64 64
  store ptr @_ZL9hb_second, ptr %i.cg, align 8, !tbaa !3725, !alias.scope !3727
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 24
  call fastcc void @"_ZorI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_11HBGlyphID16EEERK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSJ_0EE9hb_sink_tIRSD_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSU_6item_tEEE5valueEvE4typeELSJ_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISU_Efp_EEEOSU_OSZ_"(ptr noundef nonnull align 8 dereferenceable(72) %5, ptr nonnull %i.ch)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #63
  br label %bb.v

bb.v:                                             ; preds = %"_ZNK4$_29clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_11HBGlyphID16ENS1_7NumTypeILb1EtLj2EEEEETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISF_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISG_EEE4iterEEEOSF_OSG_.exit", %._crit_edge
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @"_ZorI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_11HBGlyphID16EEERK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSJ_0EE9hb_sink_tIRSD_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSU_6item_tEEE5valueEvE4typeELSJ_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISU_Efp_EEEOSU_OSZ_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr %.0.val) unnamed_addr #16 {
bb.a:
  %.sroa.03.0.copyload = load i32, ptr %0, align 8 ; 3 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8 ; 3 uses
  %.sroa.1111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.1111.0.copyload = load ptr, ptr %.sroa.1111.0..sroa_idx, align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload, i64 2 ; 7 uses
  %i.b = icmp eq i32 %.sroa.03.0.copyload, 1      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload, i64 4 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.1111.0.copyload, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.1111.0.copyload, i64 36
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.1111.0.copyload, i64 40
  %.sink.in.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.1111.0.copyload, i64 56
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.1111.0.copyload, i64 64
  %i.h = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 64
  %.sroa.03.0.copyload.off = add i32 %.sroa.03.0.copyload, -1
  %switch = icmp ult i32 %.sroa.03.0.copyload.off, 2
  br i1 %switch, label %.split.preheader, label %"_ZN9hb_sink_tIR8hb_set_tEclI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS7_11HBGlyphID16EEERKS0_RK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSM_0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSU_6item_tEEE5valueEvE4typeELSM_0EEEvSU_.exit.split"

.split.preheader:                                 ; preds = %bb.a
  %.sroa.99.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.99.0.copyload = load i32, ptr %.sroa.99.0..sroa_idx, align 8 ; 2 uses
  %.sroa.88.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.88.0.copyload = load ptr, ptr %.sroa.88.0..sroa_idx, align 8
  %.sroa.66.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.66.0.copyload = load i32, ptr %.sroa.66.0..sroa_idx, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.55.0.copyload = load i32, ptr %.sroa.55.0..sroa_idx, align 4
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.44.0.copyload = load i32, ptr %.sroa.44.0..sroa_idx, align 8 ; 2 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63
  %i.j = load i16, ptr %i.a, align 1, !tbaa !62
  %i.k = tail call noundef i16 @llvm.bswap.i16(i16 %i.j)
  %i.l = zext i16 %i.k to i32
  %i.m = icmp ult i32 %.sroa.44.0.copyload, %i.l
  %i.n = icmp ne i32 %.sroa.99.0.copyload, 0
  %or.cond.i83 = select i1 %i.m, i1 %i.n, i1 false
  br i1 %or.cond.i83, label %.lr.ph, label %"_ZN9hb_sink_tIR8hb_set_tEclI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS7_11HBGlyphID16EEERKS0_RK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSM_0EETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSU_6item_tEEE5valueEvE4typeELSM_0EEEvSU_.exit.split"

.lr.ph:                                           ; preds = %.split.preheader, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_11HBGlyphID16EEERK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSJ_0EERSA_EppEv.exit.i"
  %i.o = phi i32 [ %i.dn, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_11HBGlyphID16EEERK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSJ_0EERSA_EppEv.exit.i" ], [ %.sroa.44.0.copyload, %.split.preheader ] ; 3 uses
  %i.p = phi i32 [ %i.dk, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_11HBGlyphID16EEERK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSJ_0EERSA_EppEv.exit.i" ], [ %.sroa.99.0.copyload, %.split.preheader ] ; 2 uses
  %.lcssa1727.i86 = phi ptr [ %i.dl, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_11HBGlyphID16EEERK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSJ_0EERSA_EppEv.exit.i" ], [ %.sroa.88.0.copyload, %.split.preheader ] ; 3 uses
  %.lcssa1129.i85 = phi i32 [ %i.dm, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_11HBGlyphID16EEERK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSJ_0EERSA_EppEv.exit.i" ], [ %.sroa.66.0.copyload, %.split.preheader ] ; 2 uses
  %.lcssa1930.i84 = phi i32 [ %i.do, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_11HBGlyphID16EEERK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSJ_0EERSA_EppEv.exit.i" ], [ %.sroa.55.0.copyload, %.split.preheader ] ; 2 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63
  br i1 %i.b, label %bb.b, label %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_11HBGlyphID16EEERK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSJ_0EERSA_EdeEv.exit.i"

bb.b:                                             ; preds = %.lr.ph
  %i.q = load i16, ptr %i.a, align 1, !tbaa !62
  %i.r = tail call noundef i16 @llvm.bswap.i16(i16 %i.q)
  %i.s = zext i16 %i.r to i32
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp samesign ult i32 %i.o, %i.s
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.c, label %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_11HBGlyphID16EEERK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSJ_0EERSA_EdeEv.exit.i", !prof !49

bb.c:                                             ; preds = %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  br label %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_11HBGlyphID16EEERK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSJ_0EERSA_EdeEv.exit.i"

"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_11HBGlyphID16EEERK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSJ_0EERSA_EdeEv.exit.i": ; preds = %bb.c, %bb.b, %.lr.ph
  %i.t = load i16, ptr %.lcssa1727.i86, align 1, !tbaa !62
  %i.u = tail call noundef i16 @llvm.bswap.i16(i16 %i.t)
  %i.v = zext i16 %i.u to i32                     ; 2 uses
  %i.w = load i8, ptr %i.i, align 8, !tbaa !1166, !range !220, !noundef !74
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.d, label %bb.e, !prof !48

bb.d:                                             ; preds = %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_11HBGlyphID16EEERK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSJ_0EERSA_EdeEv.exit.i"
  tail call void @_ZN12hb_bit_set_t3delEj(ptr noundef nonnull align 8 dereferenceable(49) %i.h, i32 noundef %i.v)
  br label %_ZN8hb_set_tlsEj.exit.i.preheader

bb.e:                                             ; preds = %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_11HBGlyphID16EEERK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSJ_0EERSA_EdeEv.exit.i"
  tail call void @_ZN12hb_bit_set_t3addEj(ptr noundef nonnull align 8 dereferenceable(49) %i.h, i32 noundef %i.v)
  br label %_ZN8hb_set_tlsEj.exit.i.preheader

_ZN8hb_set_tlsEj.exit.i.preheader:                ; preds = %bb.e, %bb.d
  br label %_ZN8hb_set_tlsEj.exit.i

_ZN8hb_set_tlsEj.exit.i:                          ; preds = %_ZN8hb_set_tlsEj.exit.i.preheader, %"_ZNK4$_35clIRK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS5_OS6_.exit.i.i.i.i.i"
  %i.y = phi i32 [ %i.bm, %"_ZNK4$_35clIRK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS5_OS6_.exit.i.i.i.i.i" ], [ %.lcssa1930.i84, %_ZN8hb_set_tlsEj.exit.i.preheader ] ; 4 uses
  %i.z = phi ptr [ %i.bn, %"_ZNK4$_35clIRK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS5_OS6_.exit.i.i.i.i.i" ], [ %.lcssa1727.i86, %_ZN8hb_set_tlsEj.exit.i.preheader ]
  %i.aa = phi i32 [ %i.bj, %"_ZNK4$_35clIRK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS5_OS6_.exit.i.i.i.i.i" ], [ %i.p, %_ZN8hb_set_tlsEj.exit.i.preheader ] ; 5 uses
  %i.ab = phi i32 [ %i.bl, %"_ZNK4$_35clIRK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS5_OS6_.exit.i.i.i.i.i" ], [ %i.o, %_ZN8hb_set_tlsEj.exit.i.preheader ] ; 5 uses
  %i.ac = phi i32 [ %i.bk, %"_ZNK4$_35clIRK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS5_OS6_.exit.i.i.i.i.i" ], [ %.lcssa1129.i85, %_ZN8hb_set_tlsEj.exit.i.preheader ] ; 3 uses
  switch i32 %.sroa.03.0.copyload, label %_ZNR9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEppEv.exit.i.i [
    i32 1, label %_ZNR9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEppEv.exit.i.thread60.i
    i32 2, label %bb.f
  ]

_ZNR9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEppEv.exit.i.thread60.i: ; preds = %_ZN8hb_set_tlsEj.exit.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.ad = add nuw nsw i32 %i.ab, 1
  %.not.i.i.i61.i.not = icmp eq i32 %i.aa, 0
  %.idx62.i = select i1 %.not.i.i.i61.i.not, i64 0, i64 2, !prof !48
  %i.ae = tail call i32 @llvm.usub.sat.i32(i32 %i.aa, i32 1)
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  br label %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i.i1.i

bb.f:                                             ; preds = %_ZN8hb_set_tlsEj.exit.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.af = load i16, ptr %i.a, align 1, !tbaa !62
  %i.ag = tail call noundef i16 @llvm.bswap.i16(i16 %i.af)
  %i.ah = zext i16 %i.ag to i32
  %.not.i.i.i.i.i.i = icmp ult i32 %i.ab, %i.ah
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i.i.i.i, !prof !49

bb.g:                                             ; preds = %bb.f
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.ai = zext nneg i32 %i.ab to i64
  %i.aj = getelementptr inbounds nuw [6 x i8], ptr %i.c, i64 %i.ai
  br label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i.i.i.i

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi ptr [ %i.aj, %bb.g ], [ @_hb_Null_OT_RangeRecord, %bb.f ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 2
  %i.al = load i16, ptr %i.ak, align 1, !tbaa !62
  %i.am = tail call noundef i16 @llvm.bswap.i16(i16 %i.al)
  %i.an = zext i16 %i.am to i32
  %.not.i.i.i.i3.i = icmp ult i32 %i.ac, %i.an
  br i1 %.not.i.i.i.i3.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i.i.i.i
  %i.ao = add nuw nsw i32 %i.ab, 1                ; 4 uses
  %i.ap = load i16, ptr %i.a, align 1, !tbaa !62
  %i.aq = tail call noundef i16 @llvm.bswap.i16(i16 %i.ap)
  %i.ar = zext i16 %i.aq to i32                   ; 2 uses
  %i.as = icmp ult i32 %i.ao, %i.ar
  br i1 %i.as, label %bb.i, label %_ZNR9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEppEv.exit.i.thread.i

bb.i:                                             ; preds = %bb.h
  %i.at = zext nneg i32 %i.ao to i64              ; 2 uses
  %i.au = getelementptr inbounds nuw [6 x i8], ptr %i.c, i64 %i.at
  %i.av = load i16, ptr %i.au, align 1, !tbaa !62
  %i.aw = tail call noundef i16 @llvm.bswap.i16(i16 %i.av)
  %i.ax = zext i16 %i.aw to i32
  %i.ay = getelementptr inbounds nuw [6 x i8], ptr %.sroa.3.0.copyload, i64 %i.at
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load i16, ptr %i.az, align 1, !tbaa !62
  %i.bb = tail call noundef i16 @llvm.bswap.i16(i16 %i.ba)
  %i.bc = zext i16 %i.bb to i32                   ; 3 uses
  %i.bd = add i32 %i.y, 1
  %.not1.i.i.i.i.i = icmp eq i32 %i.bd, %i.bc
  br i1 %.not1.i.i.i.i.i, label %_ZNR9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEppEv.exit.i.thread.i, label %.sink.split.i.i.i.i.i, !prof !49

bb.j:                                             ; preds = %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i.i.i.i
  %i.be = add i32 %i.y, 1
  %i.bf = add nuw nsw i32 %i.ac, 1
  br label %_ZNR9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEppEv.exit.i.thread.i

.sink.split.i.i.i.i.i:                            ; preds = %bb.i
  br label %_ZNR9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEppEv.exit.i.thread.i

_ZNR9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEppEv.exit.i.thread.i: ; preds = %.sink.split.i.i.i.i.i, %bb.j, %bb.i, %bb.h
  %.ph.i = phi i32 [ %i.bc, %.sink.split.i.i.i.i.i ], [ %i.be, %bb.j ], [ %i.y, %bb.h ], [ %i.bc, %bb.i ]
  %.ph56.i = phi i32 [ %i.ar, %.sink.split.i.i.i.i.i ], [ %i.ab, %bb.j ], [ %i.ao, %bb.h ], [ %i.ao, %bb.i ]
  %.ph57.i = phi i32 [ 0, %.sink.split.i.i.i.i.i ], [ %i.bf, %bb.j ], [ 0, %bb.h ], [ %i.ax, %bb.i ]
  %.not.i.i.i58.i.not = icmp eq i32 %i.aa, 0
  %.idx59.i = select i1 %.not.i.i.i58.i.not, i64 0, i64 2, !prof !48
  %i.bg = tail call i32 @llvm.usub.sat.i32(i32 %i.aa, i32 1)
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
end_hunk_0
begin_hunk_1_@"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_11HBGlyphID16EEE24hb_filter_iter_factory_tIRK8hb_set_tRK3$_6ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSK_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISK_Efp_EEEOSK_OSQ_":bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !3741, !alias.scope !3736 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.t = load i32, ptr %i.e, align 8, !tbaa !3444, !alias.scope !3736 ; 2 uses
  %i.u = load i16, ptr %i.s, align 1, !tbaa !62
  %i.v = tail call noundef i16 @llvm.bswap.i16(i16 %i.u)
  %i.w = zext i16 %i.v to i32
  %.not.i.i.i.i.i.i.i.i.i = icmp ult i32 %i.t, %i.w
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.g, label %_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i, !prof !49

bb.g:                                             ; preds = %bb.f
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.y = zext nneg i32 %i.t to i64
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %i.y
  br label %_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i

_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i.i.i = phi ptr [ %i.z, %bb.g ], [ @_hb_NullPool, %bb.f ]
  %i.aa = load i16, ptr %.0.i.i.i.i.i.i.i.i.i, align 1, !tbaa !62
  %i.ab = tail call noundef i16 @llvm.bswap.i16(i16 %i.aa)
  %i.ac = zext i16 %i.ab to i32
  br label %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_11HBGlyphID16EEE9hb_pair_tIjRS8_EEdeEv.exit.i.i

bb.h:                                             ; preds = %bb.e
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.ad = load i32, ptr %i.f, align 8, !tbaa !3447, !alias.scope !3736
  br label %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_11HBGlyphID16EEE9hb_pair_tIjRS8_EEdeEv.exit.i.i

_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_11HBGlyphID16EEE9hb_pair_tIjRS8_EEdeEv.exit.i.i: ; preds = %bb.h, %_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i, %bb.e
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ad, %bb.h ], [ %i.ac, %_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i ], [ 0, %bb.e ] ; 3 uses
  %i.ae = lshr i32 %.0.i.i.i.i.i.i.i, 9           ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 2 uses
  %i.ag = load atomic i32, ptr %i.af monotonic, align 4 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.p, i64 36
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !1699 ; 3 uses
  %i.aj = icmp ult i32 %i.ag, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !416 ; 3 uses
  br i1 %i.aj, label %bb.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, !prof !49

bb.i:                                             ; preds = %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_11HBGlyphID16EEE9hb_pair_tIjRS8_EEdeEv.exit.i.i
  %i.am = zext i32 %i.ag to i64                   ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !1700
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ao, %i.ae
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.i, %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_11HBGlyphID16EEE9hb_pair_tIjRS8_EEdeEv.exit.i.i
  %.not1.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %i.ai, 0
  br i1 %.not1.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZNK4$_35clIRK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS5_OS6_.exit.i.i"

.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i:     ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.ap = add nsw i32 %i.ai, -1
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %bb.m, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.0203.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.m ], [ %i.ap, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.0212.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.223.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.m ], [ 0, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.aq = add i32 %.0212.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.0203.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ar = lshr i32 %i.aq, 1                       ; 4 uses
  %i.as = zext nneg i32 %i.ar to i64              ; 2 uses
  %i.at = shl nuw nsw i64 %i.as, 3
  %i.au = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !1700 ; 2 uses
  %i.aw = icmp slt i32 %i.ae, %i.av
  br i1 %i.aw, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ax = add nsw i32 %i.ar, -1
  br label %bb.m

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.not28.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ae, %i.av
  br i1 %.not28.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ay = add nuw nsw i32 %i.ar, 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j
  %.223.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ay, %bb.l ], [ %.0212.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.j ] ; 2 uses
  %.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.0203.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.l ], [ %i.ax, %bb.j ] ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %.223.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZNK4$_35clIRK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS5_OS6_.exit.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !2478

_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.k
  store atomic i32 %i.ar, ptr %i.af monotonic, align 8
  br label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i

_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i.i.i.i, %bb.i
  %i.az = phi i64 [ %i.as, %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.am, %bb.i ]
  %.sink.in.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %.sink.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sink.in.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !1702 ; 2 uses
  %.not.i.i.i.i.i.i.i6.i.i = icmp eq ptr %.sink.i.i.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i6.i.i, label %"_ZNK4$_35clIRK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS5_OS6_.exit.i.i", label %bb.n

bb.n:                                             ; preds = %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !1705
  %i.bd = zext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw [72 x i8], ptr %.sink.i.i.i.i.i.i.i.i.i.i, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = lshr i32 %.0.i.i.i.i.i.i.i, 6
  %i.bh = and i32 %i.bg, 7
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bi
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !1706
  %i.bl = and i32 %.0.i.i.i.i.i.i.i, 63
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = lshr i64 %i.bk, %i.bm
  %i.bo = trunc i64 %i.bn to i8
  %i.bp = and i8 %i.bo, 1
  br label %"_ZNK4$_35clIRK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS5_OS6_.exit.i.i"

"_ZNK4$_35clIRK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS5_OS6_.exit.i.i": ; preds = %bb.m, %bb.n, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i5.i.i = phi i8 [ %i.bp, %bb.n ], [ 0, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i ], [ 0, %._crit_edge.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.m ]
  %i.bq = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.br = load i8, ptr %i.bq, align 8, !tbaa !1166, !range !220, !noundef !74
  %.not8.i.i = icmp eq i8 %i.br, %.0.i.i.i.i.i.i.i5.i.i
  br i1 %.not8.i.i, label %bb.o, label %"_ZN24hb_filter_iter_factory_tIRK8hb_set_tRK3$_6EclI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS9_11HBGlyphID16EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSK_6item_tEEE5valueEvE4typeELPv0EEE16hb_filter_iter_tISK_S2_S5_LDnEESK_.exit"

bb.o:                                             ; preds = %"_ZNK4$_35clIRK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS5_OS6_.exit.i.i"
  tail call void @_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS0_11HBGlyphID16EEE8__next__Ev(ptr noundef nonnull align 8 dereferenceable(64) %0)
  br label %bb.b, !llvm.loop !3742

"_ZN24hb_filter_iter_factory_tIRK8hb_set_tRK3$_6EclI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS9_11HBGlyphID16EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSK_6item_tEEE5valueEvE4typeELPv0EEE16hb_filter_iter_tISK_S2_S5_LDnEESK_.exit": ; preds = %bb.b, %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i, %_ZNK9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_11HBGlyphID16EEE9hb_pair_tIjRS8_EEcvbEv.exit.i.i, %"_ZNK4$_35clIRK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS5_OS6_.exit.i.i"
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2OT6Layout9GSUB_impl22MultipleSubstFormat1_2INS0_10SmallTypesEE7closureEPNS_20hb_closure_context_tE(ptr noundef nonnull align 1 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.b = load i16, ptr %i.a, align 1, !tbaa !62   ; 2 uses
  %i.c = icmp eq i16 %i.b, 0
  %i.d = tail call i16 @llvm.bswap.i16(i16 %i.b)
  %i.e = zext i16 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %i.e
  %.0.i.i = select i1 %i.c, ptr @_hb_NullPool, ptr %i.f, !prof !48 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.h = load i16, ptr %.0.i.i, align 1, !tbaa !62, !noalias !3743
  %.fr93 = freeze i16 %i.h                        ; 2 uses
  %i.i = tail call noundef i16 @llvm.bswap.i16(i16 %.fr93) ; 4 uses
  switch i16 %i.i, label %"_ZNK4$_29clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS2_9GSUB_impl8SequenceINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEESE_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISK_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISL_EEE4iterEEEOSK_OSL_.exit" [
    i16 1, label %bb.b
    i16 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !noalias !3743, !srcloc !60
  br label %"_ZNK4$_29clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS2_9GSUB_impl8SequenceINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEESE_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISK_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISL_EEE4iterEEEOSK_OSL_.exit"

bb.c:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !noalias !3743, !srcloc !60
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 2 ; 4 uses
  %i.k = load i16, ptr %i.j, align 1, !tbaa !62, !noalias !3743
  %.not.i.i.i.i.i = icmp eq i16 %i.k, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i, label %bb.d, !prof !787

bb.d:                                             ; preds = %bb.c
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !noalias !3743, !srcloc !60
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4 ; 3 uses
  %i.m = load i16, ptr %i.l, align 1, !tbaa !62, !noalias !3743
  %i.n = tail call noundef i16 @llvm.bswap.i16(i16 %i.m) ; 3 uses
  %.pre8.i.i.i.i.i = load i16, ptr %i.j, align 1, !tbaa !62, !noalias !3743
  %i.o = icmp eq i16 %.pre8.i.i.i.i.i, 0
  br i1 %i.o, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i, !prof !124

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i: ; preds = %bb.d
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !noalias !3743, !srcloc !60
  %.pre11.i.i.i.i.i = load i16, ptr %i.j, align 1, !tbaa !62, !noalias !3743
  %i.p = icmp eq i16 %.pre11.i.i.i.i.i, 0
  %i.q = load i16, ptr %i.l, align 1, !tbaa !62, !noalias !3743
  %i.r = tail call noundef i16 @llvm.bswap.i16(i16 %i.q) ; 2 uses
  br i1 %i.p, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i, label %bb.e, !prof !124

bb.e:                                             ; preds = %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !noalias !3743, !srcloc !60
  br label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i: ; preds = %bb.e, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i, %bb.d, %bb.c
  %.sroa.11.0.shrunk.i = phi i16 [ %i.n, %bb.e ], [ %i.n, %bb.d ], [ %i.n, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i ], [ 0, %bb.c ]
  %i.s = phi i16 [ %i.r, %bb.e ], [ 256, %bb.d ], [ %i.r, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i ], [ 256, %bb.c ]
  %.0.i6.i.i.i.i.i = phi ptr [ %i.l, %bb.e ], [ @_hb_Null_OT_RangeRecord, %bb.d ], [ @_hb_Null_OT_RangeRecord, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i ], [ @_hb_Null_OT_RangeRecord, %bb.c ]
  %.sroa.11.0.i = zext i16 %.sroa.11.0.shrunk.i to i32
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i6.i.i.i.i.i, i64 2
  %i.u = load i16, ptr %i.t, align 1, !tbaa !62, !noalias !3743
  %i.v = tail call noundef i16 @llvm.bswap.i16(i16 %i.u)
  %i.w = icmp ugt i16 %i.s, %i.v
  br i1 %i.w, label %bb.f, label %"_ZNK4$_29clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS2_9GSUB_impl8SequenceINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEESE_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISK_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISL_EEE4iterEEEOSK_OSL_.exit", !prof !48

bb.f:                                             ; preds = %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i
  %i.x = load i16, ptr %i.j, align 1, !tbaa !62, !noalias !3743
  %i.y = tail call noundef i16 @llvm.bswap.i16(i16 %i.x)
  %i.z = zext i16 %i.y to i32
  br label %"_ZNK4$_29clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS2_9GSUB_impl8SequenceINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEESE_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISK_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISL_EEE4iterEEEOSK_OSL_.exit"

"_ZNK4$_29clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS2_9GSUB_impl8SequenceINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEESE_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISK_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISL_EEE4iterEEEOSK_OSL_.exit": ; preds = %bb.a, %bb.b, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i, %bb.f
  %.sroa.7.0.i = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.z, %bb.f ], [ 0, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i ]
  %.sroa.11.1.i = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.f ], [ %.sroa.11.0.i, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i ]
  %.sroa.52.0.i = phi ptr [ null, %bb.a ], [ %.0.i.i, %bb.b ], [ %.0.i.i, %bb.f ], [ %.0.i.i, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i ] ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.ab = load i16, ptr %i.g, align 1, !tbaa !62, !noalias !3750
  %i.ac = tail call noundef i16 @llvm.bswap.i16(i16 %i.ab)
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !1693 ; 2 uses
  %.not.i = icmp eq i32 %i.ae, 0
  %i.af = add i32 %i.ae, -1
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = zext i32 %i.af to i64
  %i.aj = getelementptr inbounds nuw [72 x i8], ptr %i.ah, i64 %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  %.0.i = select i1 %.not.i, ptr %i.al, ptr %i.aj ; 5 uses
  %.sroa.37.sroa.0.0.extract.trunc = zext i16 %i.ac to i32
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.52.0.i, i64 2 ; 11 uses
  %i.an = icmp eq i16 %.fr93, 256                 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.52.0.i, i64 4 ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i, i64 24 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i, i64 36 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i, i64 40 ; 2 uses
  %.sink.in.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.i, i64 56 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.0.i, i64 64 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS0_8OffsetToINS1_9GSUB_impl8SequenceINS1_10SmallTypesEEENS0_7NumTypeILb1EtLj2EEEvLb1EEEEE8__next__Ev.exit, %"_ZNK4$_29clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS2_9GSUB_impl8SequenceINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEESE_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISK_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISL_EEE4iterEEEOSK_OSL_.exit"
  %.sroa.37.sroa.0.0 = phi i32 [ %.sroa.37.sroa.0.0.extract.trunc, %"_ZNK4$_29clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS2_9GSUB_impl8SequenceINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEESE_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISK_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISL_EEE4iterEEEOSK_OSL_.exit" ], [ %i.dr, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS0_8OffsetToINS1_9GSUB_impl8SequenceINS1_10SmallTypesEEENS0_7NumTypeILb1EtLj2EEEvLb1EEEEE8__next__Ev.exit ] ; 4 uses
  %.sroa.34.0 = phi ptr [ %i.aa, %"_ZNK4$_29clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS2_9GSUB_impl8SequenceINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEESE_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISK_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISL_EEE4iterEEEOSK_OSL_.exit" ], [ %i.ds, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS0_8OffsetToINS1_9GSUB_impl8SequenceINS1_10SmallTypesEEENS0_7NumTypeILb1EtLj2EEEvLb1EEEEE8__next__Ev.exit ] ; 2 uses
  %.sroa.27.0 = phi i32 [ %.sroa.11.1.i, %"_ZNK4$_29clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS2_9GSUB_impl8SequenceINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEESE_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISK_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISL_EEE4iterEEEOSK_OSL_.exit" ], [ %.sroa.27.1, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS0_8OffsetToINS1_9GSUB_impl8SequenceINS1_10SmallTypesEEENS0_7NumTypeILb1EtLj2EEEvLb1EEEEE8__next__Ev.exit ] ; 6 uses
  %.sroa.22.0 = phi i32 [ 0, %"_ZNK4$_29clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS2_9GSUB_impl8SequenceINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEESE_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISK_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISL_EEE4iterEEEOSK_OSL_.exit" ], [ %.sroa.22.2, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS0_8OffsetToINS1_9GSUB_impl8SequenceINS1_10SmallTypesEEENS0_7NumTypeILb1EtLj2EEEvLb1EEEEE8__next__Ev.exit ] ; 6 uses
  %.sroa.13.0 = phi i32 [ %.sroa.7.0.i, %"_ZNK4$_29clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS2_9GSUB_impl8SequenceINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEESE_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISK_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISL_EEE4iterEEEOSK_OSL_.exit" ], [ %.sroa.13.2, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS0_8OffsetToINS1_9GSUB_impl8SequenceINS1_10SmallTypesEEENS0_7NumTypeILb1EtLj2EEEvLb1EEEEE8__next__Ev.exit ] ; 11 uses
  switch i16 %i.i, label %"_ZorI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS4_9GSUB_impl8SequenceINS4_10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSQ_0EE12hb_partial_tILj2EPK4$_51PKNSA_22MultipleSubstFormat1_2ISC_EEELSV_0ELSQ_0EE10hb_apply_tIZNKS12_7closureEPNS3_20hb_closure_context_tEEUlRKSD_E_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS1F_6item_tEEE5valueEvE4typeELSQ_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS1F_Efp_EEEOS1F_OS1K_.exit" [
    i16 1, label %bb.h
    i16 2, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  br label %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  br label %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i

_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %i.at = load i16, ptr %i.am, align 1, !tbaa !62
  %i.au = tail call noundef i16 @llvm.bswap.i16(i16 %i.at)
  %i.av = zext i16 %i.au to i32
  %i.aw = icmp uge i32 %.sroa.13.0, %i.av
  %.not.i.i.i = icmp eq i32 %.sroa.37.sroa.0.0, 0
  %or.cond = select i1 %i.aw, i1 true, i1 %.not.i.i.i
  br i1 %or.cond, label %.split.i.preheader, label %bb.j

bb.j:                                             ; preds = %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63
  br i1 %i.an, label %bb.k, label %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_8OffsetToINS2_9GSUB_impl8SequenceINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEEEE9hb_pair_tIjRSF_EEdeEv.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.ax = load i16, ptr %i.am, align 1, !tbaa !62
  %i.ay = tail call noundef i16 @llvm.bswap.i16(i16 %i.ax)
  %i.az = zext i16 %i.ay to i32
  %.not.i.i.i.i.i.i.i.i.i.i = icmp samesign ult i32 %.sroa.13.0, %i.az
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.l, label %_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i.i, !prof !49

bb.l:                                             ; preds = %bb.k
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.ba = zext nneg i32 %.sroa.13.0 to i64
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.ao, i64 %i.ba
  br label %_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i.i

_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bb, %bb.l ], [ @_hb_NullPool, %bb.k ]
  %i.bc = load i16, ptr %.0.i.i.i.i.i.i.i.i.i.i, align 1, !tbaa !62
  %i.bd = tail call noundef i16 @llvm.bswap.i16(i16 %i.bc)
  %i.be = zext i16 %i.bd to i32
  br label %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_8OffsetToINS2_9GSUB_impl8SequenceINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEEEE9hb_pair_tIjRSF_EEdeEv.exit.i.i.i

_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_8OffsetToINS2_9GSUB_impl8SequenceINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEEEE9hb_pair_tIjRSF_EEdeEv.exit.i.i.i: ; preds = %bb.j, %_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.be, %_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i.i ], [ %.sroa.27.0, %bb.j ] ; 3 uses
  %i.bf = lshr i32 %.0.i.i.i.i.i.i.i.i, 9         ; 3 uses
  %i.bg = load atomic i32, ptr %i.ap monotonic, align 4 ; 2 uses
  %i.bh = load i32, ptr %i.aq, align 4, !tbaa !1699 ; 3 uses
  %i.bi = icmp ult i32 %i.bg, %i.bh
  %i.bj = load ptr, ptr %i.ar, align 8, !tbaa !416 ; 3 uses
  br i1 %i.bi, label %bb.m, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, !prof !49

bb.m:                                             ; preds = %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_8OffsetToINS2_9GSUB_impl8SequenceINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEEEE9hb_pair_tIjRSF_EEdeEv.exit.i.i.i
  %i.bk = zext i32 %i.bg to i64                   ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !1700
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.bm, %i.bf
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %bb.m, %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_8OffsetToINS2_9GSUB_impl8SequenceINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEEEE9hb_pair_tIjRSF_EEdeEv.exit.i.i.i
  %.not1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %i.bh, 0
  br i1 %.not1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZNK4$_35clIRK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS5_OS6_.exit.i.i.i"

.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:   ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i
  %i.bn = add nsw i32 %i.bh, -1
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %bb.q, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.0203.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.q ], [ %i.bn, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.0212.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.223.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.q ], [ 0, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.bo = add i32 %.0212.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.0203.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bp = lshr i32 %i.bo, 1                       ; 4 uses
  %i.bq = zext nneg i32 %i.bp to i64              ; 2 uses
  %i.br = shl nuw nsw i64 %i.bq, 3
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.br
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !1700 ; 2 uses
  %i.bu = icmp slt i32 %i.bf, %i.bt
  br i1 %i.bu, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bv = add nsw i32 %i.bp, -1
  br label %bb.q

bb.o:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.not28.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.bf, %i.bt
  br i1 %.not28.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bw = add nuw nsw i32 %i.bp, 1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n
  %.223.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bw, %bb.p ], [ %.0212.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.n ] ; 2 uses
  %.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.0203.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.p ], [ %i.bv, %bb.n ] ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %.223.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZNK4$_35clIRK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS5_OS6_.exit.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !2478

_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.o
  store atomic i32 %i.bp, ptr %i.ap monotonic, align 8
  br label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i.i

_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.m
  %i.bx = phi i64 [ %i.bq, %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bk, %bb.m ]
  %.sink.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sink.in.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !1702 ; 2 uses
  %.not.i.i.i.i.i.i.i6.i.i.i = icmp eq ptr %.sink.i.i.i.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i6.i.i.i, label %"_ZNK4$_35clIRK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS5_OS6_.exit.i.i.i", label %bb.r

bb.r:                                             ; preds = %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i.i
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !1705
  %i.cb = zext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [72 x i8], ptr %.sink.i.i.i.i.i.i.i.i.i.i.i, i64 %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = lshr i32 %.0.i.i.i.i.i.i.i.i, 6
  %i.cf = and i32 %i.ce, 7
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.cg
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !1706
  %i.cj = and i32 %.0.i.i.i.i.i.i.i.i, 63
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = lshr i64 %i.ci, %i.ck
  %i.cm = trunc i64 %i.cl to i8
  %i.cn = and i8 %i.cm, 1
  br label %"_ZNK4$_35clIRK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS5_OS6_.exit.i.i.i"

"_ZNK4$_35clIRK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS5_OS6_.exit.i.i.i": ; preds = %bb.q, %bb.r, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i5.i.i.i = phi i8 [ %i.cn, %bb.r ], [ 0, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i.i ], [ 0, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.q ]
  %i.co = load i8, ptr %i.as, align 8, !tbaa !1166, !range !220, !noundef !74
  %.not8.i.i.i = icmp eq i8 %i.co, %.0.i.i.i.i.i.i.i5.i.i.i
  br i1 %.not8.i.i.i, label %bb.s, label %"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_8OffsetToINS2_9GSUB_impl8SequenceINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEEEE24hb_filter_iter_factory_tIRK8hb_set_tRK3$_6ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSR_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISR_Efp_EEEOSR_OSX_.exit"

bb.s:                                             ; preds = %"_ZNK4$_35clIRK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS5_OS6_.exit.i.i.i"
  switch i16 %i.i, label %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS0_8OffsetToINS1_9GSUB_impl8SequenceINS1_10SmallTypesEEENS0_7NumTypeILb1EtLj2EEEvLb1EEEEE8__next__Ev.exit [
    i16 1, label %bb.t
    i16 2, label %bb.u
  ]

bb.t:                                             ; preds = %bb.s
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.cp = add nuw nsw i32 %.sroa.13.0, 1
  br label %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS0_8OffsetToINS1_9GSUB_impl8SequenceINS1_10SmallTypesEEENS0_7NumTypeILb1EtLj2EEEvLb1EEEEE8__next__Ev.exit

bb.u:                                             ; preds = %bb.s
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.cq = load i16, ptr %i.am, align 1, !tbaa !62
  %i.cr = tail call noundef i16 @llvm.bswap.i16(i16 %i.cq)
  %i.cs = zext i16 %i.cr to i32
  %.not.i.i.i.i.i14 = icmp ult i32 %.sroa.13.0, %i.cs
  br i1 %.not.i.i.i.i.i14, label %bb.v, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i.i.i, !prof !49

bb.v:                                             ; preds = %bb.u
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.ct = zext nneg i32 %.sroa.13.0 to i64
  %i.cu = getelementptr inbounds nuw [6 x i8], ptr %i.ao, i64 %i.ct
  br label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i.i.i

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i.i.i: ; preds = %bb.v, %bb.u
  %.0.i.i.i.i.i = phi ptr [ %i.cu, %bb.v ], [ @_hb_Null_OT_RangeRecord, %bb.u ]
  %i.cv = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 2
  %i.cw = load i16, ptr %i.cv, align 1, !tbaa !62
  %i.cx = tail call noundef i16 @llvm.bswap.i16(i16 %i.cw)
  %i.cy = zext i16 %i.cx to i32
  %.not.i.i.i.i = icmp ult i32 %.sroa.27.0, %i.cy
  br i1 %.not.i.i.i.i, label %bb.y, label %bb.w

end_hunk_1
begin_hunk_2_@_ZNK2OT6Layout9GSUB_impl22MultipleSubstFormat1_2INS0_10SmallTypesEE7closureEPNS_20hb_closure_context_tE:bb.a
  %.not.i.i.i.i.i.i.i.i.us = icmp ult i32 %i.es, 2
  %or.cond6.i.i.us = select i1 %i.gh, i1 true, i1 %.not.i.i.i.i.i.i.i.i.us
  br i1 %or.cond6.i.i.us, label %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS4_9GSUB_impl8SequenceINS4_10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSQ_0EE12hb_partial_tILj2EPK4$_51PKNSA_22MultipleSubstFormat1_2ISC_EEELSV_0ELSQ_0EERKSD_EppEv.exit.i.i.loopexit.us", label %bb.ah

bb.ah:                                            ; preds = %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i.i.i.i1.i.i.us
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63
  br i1 %i.an, label %bb.ai, label %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_8OffsetToINS2_9GSUB_impl8SequenceINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEEEE9hb_pair_tIjRSF_EEdeEv.exit.i.i.i.i.i.i.i.i.us

bb.ai:                                            ; preds = %bb.ah
  %i.gi = load i16, ptr %i.am, align 1, !tbaa !62
  %i.gj = tail call noundef i16 @llvm.bswap.i16(i16 %i.gi)
  %i.gk = zext i16 %i.gj to i32
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i2.i.i.us = icmp samesign ult i32 %i.gb, %i.gk
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i2.i.i.us, label %bb.aj, label %_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.us, !prof !49

bb.aj:                                            ; preds = %bb.ai
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.gl = zext nneg i32 %i.gb to i64
  %i.gm = getelementptr inbounds nuw [2 x i8], ptr %i.ao, i64 %i.gl
  br label %_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.us

_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.us: ; preds = %bb.aj, %bb.ai
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us = phi ptr [ %i.gm, %bb.aj ], [ @_hb_NullPool, %bb.ai ]
  %i.gn = load i16, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us, align 1, !tbaa !62
  %i.go = tail call noundef i16 @llvm.bswap.i16(i16 %i.gn)
  %i.gp = zext i16 %i.go to i32
  br label %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_8OffsetToINS2_9GSUB_impl8SequenceINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEEEE9hb_pair_tIjRSF_EEdeEv.exit.i.i.i.i.i.i.i.i.us

_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_8OffsetToINS2_9GSUB_impl8SequenceINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEEEE9hb_pair_tIjRSF_EEdeEv.exit.i.i.i.i.i.i.i.i.us: ; preds = %_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.us, %bb.ah
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.us = phi i32 [ %i.gp, %_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.us ], [ %i.ga, %bb.ah ] ; 3 uses
  %i.gq = lshr i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.us, 9 ; 3 uses
  %i.gr = load atomic i32, ptr %i.ap monotonic, align 4 ; 2 uses
  %i.gs = load i32, ptr %i.aq, align 4, !tbaa !1699 ; 3 uses
  %i.gt = icmp ult i32 %i.gr, %i.gs
  %i.gu = load ptr, ptr %i.ar, align 8, !tbaa !416 ; 3 uses
  br i1 %i.gt, label %bb.ak, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us, !prof !49

bb.ak:                                            ; preds = %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_8OffsetToINS2_9GSUB_impl8SequenceINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEEEE9hb_pair_tIjRSF_EEdeEv.exit.i.i.i.i.i.i.i.i.us
  %i.gv = zext i32 %i.gr to i64                   ; 2 uses
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %i.gv
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !1700
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us = icmp eq i32 %i.gx, %i.gq
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us, label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us:   ; preds = %bb.ak, %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_8OffsetToINS2_9GSUB_impl8SequenceINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEEEE9hb_pair_tIjRSF_EEdeEv.exit.i.i.i.i.i.i.i.i.us
  %.not1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us = icmp sgt i32 %i.gs, 0
  br i1 %.not1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us, label %"_ZNK4$_35clIRK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS5_OS6_.exit.i.i.i.i.i.i.i.i.us"

.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us
  %i.gy = add nsw i32 %i.gs, -1
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us: ; preds = %bb.ao, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us
  %.0203.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us = phi i32 [ %.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us, %bb.ao ], [ %i.gy, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us ] ; 2 uses
  %.0212.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us = phi i32 [ %.223.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us, %bb.ao ], [ 0, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us ] ; 2 uses
  %i.gz = add i32 %.0212.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us, %.0203.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us
  %i.ha = lshr i32 %i.gz, 1                       ; 4 uses
  %i.hb = zext nneg i32 %i.ha to i64              ; 2 uses
  %i.hc = shl nuw nsw i64 %i.hb, 3
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gu, i64 %i.hc
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !1700 ; 2 uses
  %i.hf = icmp slt i32 %i.gq, %i.he
  br i1 %i.hf, label %bb.an, label %bb.al

bb.al:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us
  %.not28.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us = icmp eq i32 %i.gq, %i.he
  br i1 %.not28.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us, label %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.hg = add nuw nsw i32 %i.ha, 1
  br label %bb.ao

bb.an:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us
  %i.hh = add nsw i32 %i.ha, -1
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.223.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us = phi i32 [ %i.hg, %bb.am ], [ %.0212.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us, %bb.an ] ; 2 uses
  %.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us = phi i32 [ %.0203.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us, %bb.am ], [ %i.hh, %bb.an ] ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us = icmp sgt i32 %.223.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us, %.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us, label %"_ZNK4$_35clIRK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS5_OS6_.exit.i.i.i.i.i.i.i.i.us", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us, !llvm.loop !2478

_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us: ; preds = %bb.al
  store atomic i32 %i.ha, ptr %i.ap monotonic, align 8
  br label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us

_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us: ; preds = %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us, %bb.ak
  %i.hi = phi i64 [ %i.hb, %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us ], [ %i.gv, %bb.ak ]
  %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us = load ptr, ptr %.sink.in.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !1702 ; 2 uses
  %.not.i.i.i.i.i.i.i3.i.i.i.i.i.i.i.i.us = icmp eq ptr %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us, null
  br i1 %.not.i.i.i.i.i.i.i3.i.i.i.i.i.i.i.i.us, label %"_ZNK4$_35clIRK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS5_OS6_.exit.i.i.i.i.i.i.i.i.us", label %bb.ap

bb.ap:                                            ; preds = %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %i.hi
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 4
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !1705
  %i.hm = zext i32 %i.hl to i64
  %i.hn = getelementptr inbounds nuw [72 x i8], ptr %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us, i64 %i.hm
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  %i.hp = lshr i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.us, 6
  %i.hq = and i32 %i.hp, 7
  %i.hr = zext nneg i32 %i.hq to i64
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.ho, i64 %i.hr
  %i.ht = load i64, ptr %i.hs, align 8, !tbaa !1706
  %i.hu = and i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.us, 63
  %i.hv = zext nneg i32 %i.hu to i64
  %i.hw = lshr i64 %i.ht, %i.hv
  %i.hx = trunc i64 %i.hw to i8
  %i.hy = and i8 %i.hx, 1
  br label %"_ZNK4$_35clIRK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS5_OS6_.exit.i.i.i.i.i.i.i.i.us"

"_ZNK4$_35clIRK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS5_OS6_.exit.i.i.i.i.i.i.i.i.us": ; preds = %bb.ao, %bb.ap, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us
  %.0.i.i.i.i.i.i.i2.i.i.i.i.i.i.i.i.us = phi i8 [ %i.hy, %bb.ap ], [ 0, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us ], [ 0, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us ], [ 0, %bb.ao ]
  %i.hz = load i8, ptr %i.as, align 8, !tbaa !1166, !range !220, !noundef !74
  %.not5.i.i.i.i.i.i.i.i.us = icmp eq i8 %i.hz, %.0.i.i.i.i.i.i.i2.i.i.i.i.i.i.i.i.us
  br i1 %.not5.i.i.i.i.i.i.i.i.us, label %bb.ab, label %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS4_9GSUB_impl8SequenceINS4_10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSQ_0EE12hb_partial_tILj2EPK4$_51PKNSA_22MultipleSubstFormat1_2ISC_EEELSV_0ELSQ_0EERKSD_EppEv.exit.i.i.loopexit.us", !llvm.loop !3752

"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS4_9GSUB_impl8SequenceINS4_10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSQ_0EE12hb_partial_tILj2EPK4$_51PKNSA_22MultipleSubstFormat1_2ISC_EEELSV_0ELSQ_0EERKSD_EppEv.exit.i.i.loopexit.us": ; preds = %"_ZNK4$_35clIRK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS5_OS6_.exit.i.i.i.i.i.i.i.i.us", %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i.i.i.i1.i.i.us
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63
  %i.ia = load i16, ptr %i.am, align 1, !tbaa !62
  %i.ib = tail call noundef i16 @llvm.bswap.i16(i16 %i.ia)
  %i.ic = zext i16 %i.ib to i32
  %i.id = icmp ult i32 %i.gb, %i.ic
  %i.ie = icmp ne i32 %i.fz, 0
  %or.cond.i.i.us = select i1 %i.id, i1 %i.ie, i1 false
  br i1 %or.cond.i.i.us, label %.lr.ph.split.us, label %"_ZorI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS4_9GSUB_impl8SequenceINS4_10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSQ_0EE12hb_partial_tILj2EPK4$_51PKNSA_22MultipleSubstFormat1_2ISC_EEELSV_0ELSQ_0EE10hb_apply_tIZNKS12_7closureEPNS3_20hb_closure_context_tEEUlRKSD_E_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS1F_6item_tEEE5valueEvE4typeELSQ_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS1F_Efp_EEEOS1F_OS1K_.exit", !llvm.loop !3753

"_ZorI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS4_9GSUB_impl8SequenceINS4_10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSQ_0EE12hb_partial_tILj2EPK4$_51PKNSA_22MultipleSubstFormat1_2ISC_EEELSV_0ELSQ_0EE10hb_apply_tIZNKS12_7closureEPNS3_20hb_closure_context_tEEUlRKSD_E_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS1F_6item_tEEE5valueEvE4typeELSQ_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS1F_Efp_EEEOS1F_OS1K_.exit": ; preds = %bb.g, %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS4_9GSUB_impl8SequenceINS4_10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSQ_0EE12hb_partial_tILj2EPK4$_51PKNSA_22MultipleSubstFormat1_2ISC_EEELSV_0ELSQ_0EERKSD_EppEv.exit.i.i.loopexit.us", %.split.i.preheader, %"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_8OffsetToINS2_9GSUB_impl8SequenceINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEEEE24hb_filter_iter_factory_tIRK8hb_set_tRK3$_6ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSR_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISR_Efp_EEEOSR_OSX_.exit"
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2OT6Layout9GSUB_impl23AlternateSubstFormat1_2INS0_10SmallTypesEE7closureEPNS_20hb_closure_context_tE(ptr noundef nonnull align 1 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.b = load i16, ptr %i.a, align 1, !tbaa !62   ; 2 uses
  %i.c = icmp eq i16 %i.b, 0
  %i.d = tail call i16 @llvm.bswap.i16(i16 %i.b)
  %i.e = zext i16 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %i.e
  %.0.i.i = select i1 %i.c, ptr @_hb_NullPool, ptr %i.f, !prof !48 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.h = load i16, ptr %.0.i.i, align 1, !tbaa !62, !noalias !3754
  %.fr93 = freeze i16 %i.h                        ; 2 uses
  %i.i = tail call noundef i16 @llvm.bswap.i16(i16 %.fr93) ; 4 uses
  switch i16 %i.i, label %"_ZNK4$_29clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS2_9GSUB_impl12AlternateSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEESE_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISK_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISL_EEE4iterEEEOSK_OSL_.exit" [
    i16 1, label %bb.b
    i16 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !noalias !3754, !srcloc !60
  br label %"_ZNK4$_29clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS2_9GSUB_impl12AlternateSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEESE_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISK_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISL_EEE4iterEEEOSK_OSL_.exit"

bb.c:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !noalias !3754, !srcloc !60
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 2 ; 4 uses
  %i.k = load i16, ptr %i.j, align 1, !tbaa !62, !noalias !3754
  %.not.i.i.i.i.i = icmp eq i16 %i.k, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i, label %bb.d, !prof !787

bb.d:                                             ; preds = %bb.c
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !noalias !3754, !srcloc !60
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4 ; 3 uses
  %i.m = load i16, ptr %i.l, align 1, !tbaa !62, !noalias !3754
  %i.n = tail call noundef i16 @llvm.bswap.i16(i16 %i.m) ; 3 uses
  %.pre8.i.i.i.i.i = load i16, ptr %i.j, align 1, !tbaa !62, !noalias !3754
  %i.o = icmp eq i16 %.pre8.i.i.i.i.i, 0
  br i1 %i.o, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i, !prof !124

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i: ; preds = %bb.d
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !noalias !3754, !srcloc !60
  %.pre11.i.i.i.i.i = load i16, ptr %i.j, align 1, !tbaa !62, !noalias !3754
  %i.p = icmp eq i16 %.pre11.i.i.i.i.i, 0
  %i.q = load i16, ptr %i.l, align 1, !tbaa !62, !noalias !3754
  %i.r = tail call noundef i16 @llvm.bswap.i16(i16 %i.q) ; 2 uses
  br i1 %i.p, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i, label %bb.e, !prof !124

bb.e:                                             ; preds = %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !noalias !3754, !srcloc !60
  br label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i: ; preds = %bb.e, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i, %bb.d, %bb.c
  %.sroa.11.0.shrunk.i = phi i16 [ %i.n, %bb.e ], [ %i.n, %bb.d ], [ %i.n, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i ], [ 0, %bb.c ]
  %i.s = phi i16 [ %i.r, %bb.e ], [ 256, %bb.d ], [ %i.r, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i ], [ 256, %bb.c ]
  %.0.i6.i.i.i.i.i = phi ptr [ %i.l, %bb.e ], [ @_hb_Null_OT_RangeRecord, %bb.d ], [ @_hb_Null_OT_RangeRecord, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i ], [ @_hb_Null_OT_RangeRecord, %bb.c ]
  %.sroa.11.0.i = zext i16 %.sroa.11.0.shrunk.i to i32
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i6.i.i.i.i.i, i64 2
  %i.u = load i16, ptr %i.t, align 1, !tbaa !62, !noalias !3754
  %i.v = tail call noundef i16 @llvm.bswap.i16(i16 %i.u)
  %i.w = icmp ugt i16 %i.s, %i.v
  br i1 %i.w, label %bb.f, label %"_ZNK4$_29clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS2_9GSUB_impl12AlternateSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEESE_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISK_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISL_EEE4iterEEEOSK_OSL_.exit", !prof !48

bb.f:                                             ; preds = %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i
  %i.x = load i16, ptr %i.j, align 1, !tbaa !62, !noalias !3754
  %i.y = tail call noundef i16 @llvm.bswap.i16(i16 %i.x)
  %i.z = zext i16 %i.y to i32
  br label %"_ZNK4$_29clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS2_9GSUB_impl12AlternateSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEESE_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISK_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISL_EEE4iterEEEOSK_OSL_.exit"

"_ZNK4$_29clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS2_9GSUB_impl12AlternateSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEESE_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISK_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISL_EEE4iterEEEOSK_OSL_.exit": ; preds = %bb.a, %bb.b, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i, %bb.f
  %.sroa.7.0.i = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.z, %bb.f ], [ 0, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i ]
  %.sroa.11.1.i = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.f ], [ %.sroa.11.0.i, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i ]
  %.sroa.52.0.i = phi ptr [ null, %bb.a ], [ %.0.i.i, %bb.b ], [ %.0.i.i, %bb.f ], [ %.0.i.i, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i ] ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.ab = load i16, ptr %i.g, align 1, !tbaa !62, !noalias !3761
  %i.ac = tail call noundef i16 @llvm.bswap.i16(i16 %i.ab)
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !1693 ; 2 uses
  %.not.i = icmp eq i32 %i.ae, 0
  %i.af = add i32 %i.ae, -1
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = zext i32 %i.af to i64
  %i.aj = getelementptr inbounds nuw [72 x i8], ptr %i.ah, i64 %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  %.0.i = select i1 %.not.i, ptr %i.al, ptr %i.aj ; 5 uses
  %.sroa.37.sroa.0.0.extract.trunc = zext i16 %i.ac to i32
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.52.0.i, i64 2 ; 11 uses
  %i.an = icmp eq i16 %.fr93, 256                 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.52.0.i, i64 4 ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i, i64 24 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i, i64 36 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i, i64 40 ; 2 uses
  %.sink.in.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.i, i64 56 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.0.i, i64 64 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS0_8OffsetToINS1_9GSUB_impl12AlternateSetINS1_10SmallTypesEEENS0_7NumTypeILb1EtLj2EEEvLb1EEEEE8__next__Ev.exit, %"_ZNK4$_29clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS2_9GSUB_impl12AlternateSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEESE_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISK_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISL_EEE4iterEEEOSK_OSL_.exit"
  %.sroa.37.sroa.0.0 = phi i32 [ %.sroa.37.sroa.0.0.extract.trunc, %"_ZNK4$_29clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS2_9GSUB_impl12AlternateSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEESE_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISK_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISL_EEE4iterEEEOSK_OSL_.exit" ], [ %i.dr, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS0_8OffsetToINS1_9GSUB_impl12AlternateSetINS1_10SmallTypesEEENS0_7NumTypeILb1EtLj2EEEvLb1EEEEE8__next__Ev.exit ] ; 4 uses
  %.sroa.34.0 = phi ptr [ %i.aa, %"_ZNK4$_29clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS2_9GSUB_impl12AlternateSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEESE_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISK_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISL_EEE4iterEEEOSK_OSL_.exit" ], [ %i.ds, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS0_8OffsetToINS1_9GSUB_impl12AlternateSetINS1_10SmallTypesEEENS0_7NumTypeILb1EtLj2EEEvLb1EEEEE8__next__Ev.exit ] ; 2 uses
  %.sroa.27.0 = phi i32 [ %.sroa.11.1.i, %"_ZNK4$_29clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS2_9GSUB_impl12AlternateSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEESE_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISK_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISL_EEE4iterEEEOSK_OSL_.exit" ], [ %.sroa.27.1, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS0_8OffsetToINS1_9GSUB_impl12AlternateSetINS1_10SmallTypesEEENS0_7NumTypeILb1EtLj2EEEvLb1EEEEE8__next__Ev.exit ] ; 6 uses
  %.sroa.22.0 = phi i32 [ 0, %"_ZNK4$_29clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS2_9GSUB_impl12AlternateSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEESE_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISK_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISL_EEE4iterEEEOSK_OSL_.exit" ], [ %.sroa.22.2, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS0_8OffsetToINS1_9GSUB_impl12AlternateSetINS1_10SmallTypesEEENS0_7NumTypeILb1EtLj2EEEvLb1EEEEE8__next__Ev.exit ] ; 6 uses
  %.sroa.13.0 = phi i32 [ %.sroa.7.0.i, %"_ZNK4$_29clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS2_9GSUB_impl12AlternateSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEESE_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISK_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISL_EEE4iterEEEOSK_OSL_.exit" ], [ %.sroa.13.2, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS0_8OffsetToINS1_9GSUB_impl12AlternateSetINS1_10SmallTypesEEENS0_7NumTypeILb1EtLj2EEEvLb1EEEEE8__next__Ev.exit ] ; 11 uses
  switch i16 %i.i, label %"_ZorI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS4_9GSUB_impl12AlternateSetINS4_10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSQ_0EE12hb_partial_tILj2EPK4$_51PKNSA_23AlternateSubstFormat1_2ISC_EEELSV_0ELSQ_0EE10hb_apply_tIZNKS12_7closureEPNS3_20hb_closure_context_tEEUlRKSD_E_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS1F_6item_tEEE5valueEvE4typeELSQ_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS1F_Efp_EEEOS1F_OS1K_.exit" [
    i16 1, label %bb.h
    i16 2, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  br label %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  br label %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i

_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %i.at = load i16, ptr %i.am, align 1, !tbaa !62
  %i.au = tail call noundef i16 @llvm.bswap.i16(i16 %i.at)
  %i.av = zext i16 %i.au to i32
  %i.aw = icmp uge i32 %.sroa.13.0, %i.av
  %.not.i.i.i = icmp eq i32 %.sroa.37.sroa.0.0, 0
  %or.cond = select i1 %i.aw, i1 true, i1 %.not.i.i.i
  br i1 %or.cond, label %.split.i.preheader, label %bb.j

bb.j:                                             ; preds = %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63
  br i1 %i.an, label %bb.k, label %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_8OffsetToINS2_9GSUB_impl12AlternateSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEEEE9hb_pair_tIjRSF_EEdeEv.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.ax = load i16, ptr %i.am, align 1, !tbaa !62
  %i.ay = tail call noundef i16 @llvm.bswap.i16(i16 %i.ax)
  %i.az = zext i16 %i.ay to i32
  %.not.i.i.i.i.i.i.i.i.i.i = icmp samesign ult i32 %.sroa.13.0, %i.az
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.l, label %_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i.i, !prof !49

bb.l:                                             ; preds = %bb.k
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.ba = zext nneg i32 %.sroa.13.0 to i64
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.ao, i64 %i.ba
  br label %_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i.i

_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bb, %bb.l ], [ @_hb_NullPool, %bb.k ]
  %i.bc = load i16, ptr %.0.i.i.i.i.i.i.i.i.i.i, align 1, !tbaa !62
  %i.bd = tail call noundef i16 @llvm.bswap.i16(i16 %i.bc)
  %i.be = zext i16 %i.bd to i32
  br label %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_8OffsetToINS2_9GSUB_impl12AlternateSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEEEE9hb_pair_tIjRSF_EEdeEv.exit.i.i.i

_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_8OffsetToINS2_9GSUB_impl12AlternateSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEEEE9hb_pair_tIjRSF_EEdeEv.exit.i.i.i: ; preds = %bb.j, %_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.be, %_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i.i ], [ %.sroa.27.0, %bb.j ] ; 3 uses
  %i.bf = lshr i32 %.0.i.i.i.i.i.i.i.i, 9         ; 3 uses
  %i.bg = load atomic i32, ptr %i.ap monotonic, align 4 ; 2 uses
  %i.bh = load i32, ptr %i.aq, align 4, !tbaa !1699 ; 3 uses
  %i.bi = icmp ult i32 %i.bg, %i.bh
  %i.bj = load ptr, ptr %i.ar, align 8, !tbaa !416 ; 3 uses
  br i1 %i.bi, label %bb.m, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, !prof !49

bb.m:                                             ; preds = %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_8OffsetToINS2_9GSUB_impl12AlternateSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEEEE9hb_pair_tIjRSF_EEdeEv.exit.i.i.i
  %i.bk = zext i32 %i.bg to i64                   ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !1700
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.bm, %i.bf
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %bb.m, %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_8OffsetToINS2_9GSUB_impl12AlternateSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEEEE9hb_pair_tIjRSF_EEdeEv.exit.i.i.i
  %.not1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %i.bh, 0
  br i1 %.not1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZNK4$_35clIRK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS5_OS6_.exit.i.i.i"

.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:   ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i
  %i.bn = add nsw i32 %i.bh, -1
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %bb.q, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.0203.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.q ], [ %i.bn, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.0212.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.223.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.q ], [ 0, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.bo = add i32 %.0212.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.0203.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bp = lshr i32 %i.bo, 1                       ; 4 uses
  %i.bq = zext nneg i32 %i.bp to i64              ; 2 uses
  %i.br = shl nuw nsw i64 %i.bq, 3
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.br
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !1700 ; 2 uses
  %i.bu = icmp slt i32 %i.bf, %i.bt
  br i1 %i.bu, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bv = add nsw i32 %i.bp, -1
  br label %bb.q

bb.o:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.not28.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.bf, %i.bt
  br i1 %.not28.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bw = add nuw nsw i32 %i.bp, 1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n
  %.223.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bw, %bb.p ], [ %.0212.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.n ] ; 2 uses
  %.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.0203.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.p ], [ %i.bv, %bb.n ] ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %.223.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZNK4$_35clIRK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS5_OS6_.exit.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !2478

_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.o
  store atomic i32 %i.bp, ptr %i.ap monotonic, align 8
  br label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i.i

_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.m
  %i.bx = phi i64 [ %i.bq, %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bk, %bb.m ]
  %.sink.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sink.in.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !1702 ; 2 uses
  %.not.i.i.i.i.i.i.i6.i.i.i = icmp eq ptr %.sink.i.i.i.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i6.i.i.i, label %"_ZNK4$_35clIRK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS5_OS6_.exit.i.i.i", label %bb.r

bb.r:                                             ; preds = %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i.i
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !1705
  %i.cb = zext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [72 x i8], ptr %.sink.i.i.i.i.i.i.i.i.i.i.i, i64 %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = lshr i32 %.0.i.i.i.i.i.i.i.i, 6
  %i.cf = and i32 %i.ce, 7
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.cg
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !1706
  %i.cj = and i32 %.0.i.i.i.i.i.i.i.i, 63
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = lshr i64 %i.ci, %i.ck
  %i.cm = trunc i64 %i.cl to i8
  %i.cn = and i8 %i.cm, 1
  br label %"_ZNK4$_35clIRK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS5_OS6_.exit.i.i.i"

"_ZNK4$_35clIRK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS5_OS6_.exit.i.i.i": ; preds = %bb.q, %bb.r, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i5.i.i.i = phi i8 [ %i.cn, %bb.r ], [ 0, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i.i ], [ 0, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.q ]
  %i.co = load i8, ptr %i.as, align 8, !tbaa !1166, !range !220, !noundef !74
  %.not8.i.i.i = icmp eq i8 %i.co, %.0.i.i.i.i.i.i.i5.i.i.i
  br i1 %.not8.i.i.i, label %bb.s, label %"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_8OffsetToINS2_9GSUB_impl12AlternateSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEEEE24hb_filter_iter_factory_tIRK8hb_set_tRK3$_6ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSR_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISR_Efp_EEEOSR_OSX_.exit"

bb.s:                                             ; preds = %"_ZNK4$_35clIRK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS5_OS6_.exit.i.i.i"
  switch i16 %i.i, label %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS0_8OffsetToINS1_9GSUB_impl12AlternateSetINS1_10SmallTypesEEENS0_7NumTypeILb1EtLj2EEEvLb1EEEEE8__next__Ev.exit [
    i16 1, label %bb.t
    i16 2, label %bb.u
  ]

bb.t:                                             ; preds = %bb.s
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.cp = add nuw nsw i32 %.sroa.13.0, 1
  br label %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS0_8OffsetToINS1_9GSUB_impl12AlternateSetINS1_10SmallTypesEEENS0_7NumTypeILb1EtLj2EEEvLb1EEEEE8__next__Ev.exit

bb.u:                                             ; preds = %bb.s
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.cq = load i16, ptr %i.am, align 1, !tbaa !62
  %i.cr = tail call noundef i16 @llvm.bswap.i16(i16 %i.cq)
  %i.cs = zext i16 %i.cr to i32
  %.not.i.i.i.i.i14 = icmp ult i32 %.sroa.13.0, %i.cs
  br i1 %.not.i.i.i.i.i14, label %bb.v, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i.i.i, !prof !49

bb.v:                                             ; preds = %bb.u
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.ct = zext nneg i32 %.sroa.13.0 to i64
  %i.cu = getelementptr inbounds nuw [6 x i8], ptr %i.ao, i64 %i.ct
  br label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i.i.i

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i.i.i: ; preds = %bb.v, %bb.u
  %.0.i.i.i.i.i = phi ptr [ %i.cu, %bb.v ], [ @_hb_Null_OT_RangeRecord, %bb.u ]
  %i.cv = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 2
  %i.cw = load i16, ptr %i.cv, align 1, !tbaa !62
  %i.cx = tail call noundef i16 @llvm.bswap.i16(i16 %i.cw)
  %i.cy = zext i16 %i.cx to i32
  %.not.i.i.i.i = icmp ult i32 %.sroa.27.0, %i.cy
  br i1 %.not.i.i.i.i, label %bb.y, label %bb.w

end_hunk_2
begin_hunk_3_@_ZNK2OT6Layout9GSUB_impl23AlternateSubstFormat1_2INS0_10SmallTypesEE7closureEPNS_20hb_closure_context_tE:bb.a
  %i.gh = icmp uge i32 %i.gb, %i.gg
  %.not.i.i.i.i.i.i.i.i.us = icmp ult i32 %i.es, 2
  %or.cond6.i.i.us = select i1 %i.gh, i1 true, i1 %.not.i.i.i.i.i.i.i.i.us
  br i1 %or.cond6.i.i.us, label %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS4_9GSUB_impl12AlternateSetINS4_10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSQ_0EE12hb_partial_tILj2EPK4$_51PKNSA_23AlternateSubstFormat1_2ISC_EEELSV_0ELSQ_0EERKSD_EppEv.exit.i.i.loopexit.us", label %bb.ah

bb.ah:                                            ; preds = %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i.i.i.i1.i.i.us
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63
  br i1 %i.an, label %bb.ai, label %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_8OffsetToINS2_9GSUB_impl12AlternateSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEEEE9hb_pair_tIjRSF_EEdeEv.exit.i.i.i.i.i.i.i.i.us

bb.ai:                                            ; preds = %bb.ah
  %i.gi = load i16, ptr %i.am, align 1, !tbaa !62
  %i.gj = tail call noundef i16 @llvm.bswap.i16(i16 %i.gi)
  %i.gk = zext i16 %i.gj to i32
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i2.i.i.us = icmp samesign ult i32 %i.gb, %i.gk
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i2.i.i.us, label %bb.aj, label %_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.us, !prof !49

bb.aj:                                            ; preds = %bb.ai
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.gl = zext nneg i32 %i.gb to i64
  %i.gm = getelementptr inbounds nuw [2 x i8], ptr %i.ao, i64 %i.gl
  br label %_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.us

_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.us: ; preds = %bb.aj, %bb.ai
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us = phi ptr [ %i.gm, %bb.aj ], [ @_hb_NullPool, %bb.ai ]
  %i.gn = load i16, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us, align 1, !tbaa !62
  %i.go = tail call noundef i16 @llvm.bswap.i16(i16 %i.gn)
  %i.gp = zext i16 %i.go to i32
  br label %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_8OffsetToINS2_9GSUB_impl12AlternateSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEEEE9hb_pair_tIjRSF_EEdeEv.exit.i.i.i.i.i.i.i.i.us

_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_8OffsetToINS2_9GSUB_impl12AlternateSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEEEE9hb_pair_tIjRSF_EEdeEv.exit.i.i.i.i.i.i.i.i.us: ; preds = %_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.us, %bb.ah
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.us = phi i32 [ %i.gp, %_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.us ], [ %i.ga, %bb.ah ] ; 3 uses
  %i.gq = lshr i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.us, 9 ; 3 uses
  %i.gr = load atomic i32, ptr %i.ap monotonic, align 4 ; 2 uses
  %i.gs = load i32, ptr %i.aq, align 4, !tbaa !1699 ; 3 uses
  %i.gt = icmp ult i32 %i.gr, %i.gs
  %i.gu = load ptr, ptr %i.ar, align 8, !tbaa !416 ; 3 uses
  br i1 %i.gt, label %bb.ak, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us, !prof !49

bb.ak:                                            ; preds = %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_8OffsetToINS2_9GSUB_impl12AlternateSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEEEE9hb_pair_tIjRSF_EEdeEv.exit.i.i.i.i.i.i.i.i.us
  %i.gv = zext i32 %i.gr to i64                   ; 2 uses
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %i.gv
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !1700
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us = icmp eq i32 %i.gx, %i.gq
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us, label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us:   ; preds = %bb.ak, %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_8OffsetToINS2_9GSUB_impl12AlternateSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEEEE9hb_pair_tIjRSF_EEdeEv.exit.i.i.i.i.i.i.i.i.us
  %.not1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us = icmp sgt i32 %i.gs, 0
  br i1 %.not1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us, label %"_ZNK4$_35clIRK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS5_OS6_.exit.i.i.i.i.i.i.i.i.us"

.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us
  %i.gy = add nsw i32 %i.gs, -1
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us: ; preds = %bb.ao, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us
  %.0203.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us = phi i32 [ %.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us, %bb.ao ], [ %i.gy, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us ] ; 2 uses
  %.0212.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us = phi i32 [ %.223.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us, %bb.ao ], [ 0, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us ] ; 2 uses
  %i.gz = add i32 %.0212.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us, %.0203.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us
  %i.ha = lshr i32 %i.gz, 1                       ; 4 uses
  %i.hb = zext nneg i32 %i.ha to i64              ; 2 uses
  %i.hc = shl nuw nsw i64 %i.hb, 3
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gu, i64 %i.hc
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !1700 ; 2 uses
  %i.hf = icmp slt i32 %i.gq, %i.he
  br i1 %i.hf, label %bb.an, label %bb.al

bb.al:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us
  %.not28.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us = icmp eq i32 %i.gq, %i.he
  br i1 %.not28.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us, label %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.hg = add nuw nsw i32 %i.ha, 1
  br label %bb.ao

bb.an:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us
  %i.hh = add nsw i32 %i.ha, -1
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.223.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us = phi i32 [ %i.hg, %bb.am ], [ %.0212.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us, %bb.an ] ; 2 uses
  %.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us = phi i32 [ %.0203.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us, %bb.am ], [ %i.hh, %bb.an ] ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us = icmp sgt i32 %.223.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us, %.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us, label %"_ZNK4$_35clIRK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS5_OS6_.exit.i.i.i.i.i.i.i.i.us", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us, !llvm.loop !2478

_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us: ; preds = %bb.al
  store atomic i32 %i.ha, ptr %i.ap monotonic, align 8
  br label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us

_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us: ; preds = %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us, %bb.ak
  %i.hi = phi i64 [ %i.hb, %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us ], [ %i.gv, %bb.ak ]
  %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us = load ptr, ptr %.sink.in.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !1702 ; 2 uses
  %.not.i.i.i.i.i.i.i3.i.i.i.i.i.i.i.i.us = icmp eq ptr %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us, null
  br i1 %.not.i.i.i.i.i.i.i3.i.i.i.i.i.i.i.i.us, label %"_ZNK4$_35clIRK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS5_OS6_.exit.i.i.i.i.i.i.i.i.us", label %bb.ap

bb.ap:                                            ; preds = %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %i.hi
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 4
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !1705
  %i.hm = zext i32 %i.hl to i64
  %i.hn = getelementptr inbounds nuw [72 x i8], ptr %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us, i64 %i.hm
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  %i.hp = lshr i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.us, 6
  %i.hq = and i32 %i.hp, 7
  %i.hr = zext nneg i32 %i.hq to i64
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.ho, i64 %i.hr
  %i.ht = load i64, ptr %i.hs, align 8, !tbaa !1706
  %i.hu = and i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.us, 63
  %i.hv = zext nneg i32 %i.hu to i64
  %i.hw = lshr i64 %i.ht, %i.hv
  %i.hx = trunc i64 %i.hw to i8
  %i.hy = and i8 %i.hx, 1
  br label %"_ZNK4$_35clIRK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS5_OS6_.exit.i.i.i.i.i.i.i.i.us"

"_ZNK4$_35clIRK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS5_OS6_.exit.i.i.i.i.i.i.i.i.us": ; preds = %bb.ao, %bb.ap, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us
  %.0.i.i.i.i.i.i.i2.i.i.i.i.i.i.i.i.us = phi i8 [ %i.hy, %bb.ap ], [ 0, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us ], [ 0, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us ], [ 0, %bb.ao ]
  %i.hz = load i8, ptr %i.as, align 8, !tbaa !1166, !range !220, !noundef !74
  %.not5.i.i.i.i.i.i.i.i.us = icmp eq i8 %i.hz, %.0.i.i.i.i.i.i.i2.i.i.i.i.i.i.i.i.us
  br i1 %.not5.i.i.i.i.i.i.i.i.us, label %bb.ab, label %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS4_9GSUB_impl12AlternateSetINS4_10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSQ_0EE12hb_partial_tILj2EPK4$_51PKNSA_23AlternateSubstFormat1_2ISC_EEELSV_0ELSQ_0EERKSD_EppEv.exit.i.i.loopexit.us", !llvm.loop !3763

"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS4_9GSUB_impl12AlternateSetINS4_10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSQ_0EE12hb_partial_tILj2EPK4$_51PKNSA_23AlternateSubstFormat1_2ISC_EEELSV_0ELSQ_0EERKSD_EppEv.exit.i.i.loopexit.us": ; preds = %"_ZNK4$_35clIRK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS5_OS6_.exit.i.i.i.i.i.i.i.i.us", %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i.i.i.i1.i.i.us
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63
  %i.ia = load i16, ptr %i.am, align 1, !tbaa !62
  %i.ib = tail call noundef i16 @llvm.bswap.i16(i16 %i.ia)
  %i.ic = zext i16 %i.ib to i32
  %i.id = icmp ult i32 %i.gb, %i.ic
  %i.ie = icmp ne i32 %i.fz, 0
  %or.cond.i.i.us = select i1 %i.id, i1 %i.ie, i1 false
  br i1 %or.cond.i.i.us, label %.lr.ph.split.us, label %"_ZorI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS4_9GSUB_impl12AlternateSetINS4_10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSQ_0EE12hb_partial_tILj2EPK4$_51PKNSA_23AlternateSubstFormat1_2ISC_EEELSV_0ELSQ_0EE10hb_apply_tIZNKS12_7closureEPNS3_20hb_closure_context_tEEUlRKSD_E_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS1F_6item_tEEE5valueEvE4typeELSQ_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS1F_Efp_EEEOS1F_OS1K_.exit", !llvm.loop !3764

"_ZorI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS4_9GSUB_impl12AlternateSetINS4_10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSQ_0EE12hb_partial_tILj2EPK4$_51PKNSA_23AlternateSubstFormat1_2ISC_EEELSV_0ELSQ_0EE10hb_apply_tIZNKS12_7closureEPNS3_20hb_closure_context_tEEUlRKSD_E_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS1F_6item_tEEE5valueEvE4typeELSQ_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS1F_Efp_EEEOS1F_OS1K_.exit": ; preds = %bb.g, %"_ZNR9hb_iter_tI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS4_9GSUB_impl12AlternateSetINS4_10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSQ_0EE12hb_partial_tILj2EPK4$_51PKNSA_23AlternateSubstFormat1_2ISC_EEELSV_0ELSQ_0EERKSD_EppEv.exit.i.i.loopexit.us", %.split.i.preheader, %"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_8OffsetToINS2_9GSUB_impl12AlternateSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEEEE24hb_filter_iter_factory_tIRK8hb_set_tRK3$_6ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSR_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISR_Efp_EEEOSR_OSX_.exit"
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2OT6Layout9GSUB_impl22LigatureSubstFormat1_2INS0_10SmallTypesEE7closureEPNS_20hb_closure_context_tE(ptr noundef nonnull align 1 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.b = load i16, ptr %i.a, align 1, !tbaa !62   ; 2 uses
  %i.c = icmp eq i16 %i.b, 0
  %i.d = tail call i16 @llvm.bswap.i16(i16 %i.b)
  %i.e = zext i16 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %i.e
  %.0.i.i = select i1 %i.c, ptr @_hb_NullPool, ptr %i.f, !prof !48 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.h = load i16, ptr %.0.i.i, align 1, !tbaa !62, !noalias !3765 ; 2 uses
  %i.i = tail call noundef i16 @llvm.bswap.i16(i16 %i.h) ; 4 uses
  switch i16 %i.i, label %"_ZNK4$_29clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS2_9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEESE_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISK_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISL_EEE4iterEEEOSK_OSL_.exit" [
    i16 1, label %bb.b
    i16 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !noalias !3765, !srcloc !60
  br label %"_ZNK4$_29clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS2_9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEESE_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISK_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISL_EEE4iterEEEOSK_OSL_.exit"

bb.c:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !noalias !3765, !srcloc !60
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 2 ; 4 uses
  %i.k = load i16, ptr %i.j, align 1, !tbaa !62, !noalias !3765
  %.not.i.i.i.i.i = icmp eq i16 %i.k, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i, label %bb.d, !prof !787

bb.d:                                             ; preds = %bb.c
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !noalias !3765, !srcloc !60
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4 ; 3 uses
  %i.m = load i16, ptr %i.l, align 1, !tbaa !62, !noalias !3765
  %i.n = tail call noundef i16 @llvm.bswap.i16(i16 %i.m) ; 3 uses
  %.pre8.i.i.i.i.i = load i16, ptr %i.j, align 1, !tbaa !62, !noalias !3765
  %i.o = icmp eq i16 %.pre8.i.i.i.i.i, 0
  br i1 %i.o, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i, !prof !124

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i: ; preds = %bb.d
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !noalias !3765, !srcloc !60
  %.pre11.i.i.i.i.i = load i16, ptr %i.j, align 1, !tbaa !62, !noalias !3765
  %i.p = icmp eq i16 %.pre11.i.i.i.i.i, 0
  %i.q = load i16, ptr %i.l, align 1, !tbaa !62, !noalias !3765
  %i.r = tail call noundef i16 @llvm.bswap.i16(i16 %i.q) ; 2 uses
  br i1 %i.p, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i, label %bb.e, !prof !124

bb.e:                                             ; preds = %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !noalias !3765, !srcloc !60
  br label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i: ; preds = %bb.e, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i, %bb.d, %bb.c
  %.sroa.11.0.shrunk.i = phi i16 [ %i.n, %bb.e ], [ %i.n, %bb.d ], [ %i.n, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i ], [ 0, %bb.c ]
  %i.s = phi i16 [ %i.r, %bb.e ], [ 256, %bb.d ], [ %i.r, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i ], [ 256, %bb.c ]
  %.0.i6.i.i.i.i.i = phi ptr [ %i.l, %bb.e ], [ @_hb_Null_OT_RangeRecord, %bb.d ], [ @_hb_Null_OT_RangeRecord, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i ], [ @_hb_Null_OT_RangeRecord, %bb.c ]
  %.sroa.11.0.i = zext i16 %.sroa.11.0.shrunk.i to i32
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i6.i.i.i.i.i, i64 2
  %i.u = load i16, ptr %i.t, align 1, !tbaa !62, !noalias !3765
  %i.v = tail call noundef i16 @llvm.bswap.i16(i16 %i.u)
  %i.w = icmp ugt i16 %i.s, %i.v
  br i1 %i.w, label %bb.f, label %"_ZNK4$_29clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS2_9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEESE_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISK_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISL_EEE4iterEEEOSK_OSL_.exit", !prof !48

bb.f:                                             ; preds = %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i
  %i.x = load i16, ptr %i.j, align 1, !tbaa !62, !noalias !3765
  %i.y = tail call noundef i16 @llvm.bswap.i16(i16 %i.x)
  %i.z = zext i16 %i.y to i32
  br label %"_ZNK4$_29clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS2_9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEESE_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISK_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISL_EEE4iterEEEOSK_OSL_.exit"

"_ZNK4$_29clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS2_9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEESE_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISK_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISL_EEE4iterEEEOSK_OSL_.exit": ; preds = %bb.a, %bb.b, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i, %bb.f
  %.sroa.7.0.i = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.z, %bb.f ], [ 0, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i ]
  %.sroa.11.1.i = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.f ], [ %.sroa.11.0.i, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i ]
  %.sroa.52.0.i = phi ptr [ null, %bb.a ], [ %.0.i.i, %bb.b ], [ %.0.i.i, %bb.f ], [ %.0.i.i, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i ] ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.ab = load i16, ptr %i.g, align 1, !tbaa !62, !noalias !3772
  %i.ac = tail call noundef i16 @llvm.bswap.i16(i16 %i.ab)
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !1693 ; 2 uses
  %.not.i = icmp eq i32 %i.ae, 0
  %i.af = add i32 %i.ae, -1
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = zext i32 %i.af to i64
  %i.aj = getelementptr inbounds nuw [72 x i8], ptr %i.ah, i64 %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8
  %.0.i = select i1 %.not.i, ptr %i.al, ptr %i.aj ; 5 uses
  %.sroa.37.sroa.0.0.extract.trunc = zext i16 %i.ac to i32
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.52.0.i, i64 2 ; 11 uses
  %i.an = icmp eq i16 %i.h, 256                   ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.52.0.i, i64 4 ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i, i64 24 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i, i64 36 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i, i64 40 ; 2 uses
  %.sink.in.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.i, i64 56 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.0.i, i64 64 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS0_8OffsetToINS1_9GSUB_impl11LigatureSetINS1_10SmallTypesEEENS0_7NumTypeILb1EtLj2EEEvLb1EEEEE8__next__Ev.exit, %"_ZNK4$_29clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS2_9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEESE_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISK_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISL_EEE4iterEEEOSK_OSL_.exit"
  %.sroa.37.sroa.0.0 = phi i32 [ %.sroa.37.sroa.0.0.extract.trunc, %"_ZNK4$_29clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS2_9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEESE_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISK_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISL_EEE4iterEEEOSK_OSL_.exit" ], [ %i.dr, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS0_8OffsetToINS1_9GSUB_impl11LigatureSetINS1_10SmallTypesEEENS0_7NumTypeILb1EtLj2EEEvLb1EEEEE8__next__Ev.exit ] ; 4 uses
  %.sroa.34.0 = phi ptr [ %i.aa, %"_ZNK4$_29clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS2_9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEESE_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISK_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISL_EEE4iterEEEOSK_OSL_.exit" ], [ %i.ds, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS0_8OffsetToINS1_9GSUB_impl11LigatureSetINS1_10SmallTypesEEENS0_7NumTypeILb1EtLj2EEEvLb1EEEEE8__next__Ev.exit ] ; 2 uses
  %.sroa.27.0 = phi i32 [ %.sroa.11.1.i, %"_ZNK4$_29clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS2_9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEESE_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISK_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISL_EEE4iterEEEOSK_OSL_.exit" ], [ %.sroa.27.1, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS0_8OffsetToINS1_9GSUB_impl11LigatureSetINS1_10SmallTypesEEENS0_7NumTypeILb1EtLj2EEEvLb1EEEEE8__next__Ev.exit ] ; 6 uses
  %.sroa.22.0 = phi i32 [ 0, %"_ZNK4$_29clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS2_9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEESE_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISK_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISL_EEE4iterEEEOSK_OSL_.exit" ], [ %.sroa.22.2, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS0_8OffsetToINS1_9GSUB_impl11LigatureSetINS1_10SmallTypesEEENS0_7NumTypeILb1EtLj2EEEvLb1EEEEE8__next__Ev.exit ] ; 6 uses
  %.sroa.13.0 = phi i32 [ %.sroa.7.0.i, %"_ZNK4$_29clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_8OffsetToINS2_9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEESE_EETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISK_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISL_EEE4iterEEEOSK_OSL_.exit" ], [ %.sroa.13.2, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS0_8OffsetToINS1_9GSUB_impl11LigatureSetINS1_10SmallTypesEEENS0_7NumTypeILb1EtLj2EEEvLb1EEEEE8__next__Ev.exit ] ; 11 uses
  switch i16 %i.i, label %"_ZorI13hb_map_iter_tIS0_I16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_8OffsetToINS4_9GSUB_impl11LigatureSetINS4_10SmallTypesEEENS3_7NumTypeILb1EtLj2EEEvLb1EEEEERK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSQ_0EE12hb_partial_tILj2EPK4$_51PKNSA_22LigatureSubstFormat1_2ISC_EEELSV_0ELSQ_0EE10hb_apply_tIZNKS12_7closureEPNS3_20hb_closure_context_tEEUlRKSD_E_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS1F_6item_tEEE5valueEvE4typeELSQ_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardIS1F_Efp_EEEOS1F_OS1K_.exit" [
    i16 1, label %bb.h
    i16 2, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  br label %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  br label %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i

_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %i.at = load i16, ptr %i.am, align 1, !tbaa !62
  %i.au = tail call noundef i16 @llvm.bswap.i16(i16 %i.at)
  %i.av = zext i16 %i.au to i32
  %i.aw = icmp uge i32 %.sroa.13.0, %i.av
  %.not.i.i.i = icmp eq i32 %.sroa.37.sroa.0.0, 0
  %or.cond = select i1 %i.aw, i1 true, i1 %.not.i.i.i
  br i1 %or.cond, label %.split.i.preheader, label %bb.j

bb.j:                                             ; preds = %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63
  br i1 %i.an, label %bb.k, label %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_8OffsetToINS2_9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEEEE9hb_pair_tIjRSF_EEdeEv.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.ax = load i16, ptr %i.am, align 1, !tbaa !62
  %i.ay = tail call noundef i16 @llvm.bswap.i16(i16 %i.ax)
  %i.az = zext i16 %i.ay to i32
  %.not.i.i.i.i.i.i.i.i.i.i = icmp samesign ult i32 %.sroa.13.0, %i.az
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.l, label %_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i.i, !prof !49

bb.l:                                             ; preds = %bb.k
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.ba = zext nneg i32 %.sroa.13.0 to i64
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.ao, i64 %i.ba
  br label %_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i.i

_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bb, %bb.l ], [ @_hb_NullPool, %bb.k ]
  %i.bc = load i16, ptr %.0.i.i.i.i.i.i.i.i.i.i, align 1, !tbaa !62
  %i.bd = tail call noundef i16 @llvm.bswap.i16(i16 %i.bc)
  %i.be = zext i16 %i.bd to i32
  br label %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_8OffsetToINS2_9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEEEE9hb_pair_tIjRSF_EEdeEv.exit.i.i.i

_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_8OffsetToINS2_9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEEEE9hb_pair_tIjRSF_EEdeEv.exit.i.i.i: ; preds = %bb.j, %_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.be, %_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i.i ], [ %.sroa.27.0, %bb.j ] ; 3 uses
  %i.bf = lshr i32 %.0.i.i.i.i.i.i.i.i, 9         ; 3 uses
  %i.bg = load atomic i32, ptr %i.ap monotonic, align 4 ; 2 uses
  %i.bh = load i32, ptr %i.aq, align 4, !tbaa !1699 ; 3 uses
  %i.bi = icmp ult i32 %i.bg, %i.bh
  %i.bj = load ptr, ptr %i.ar, align 8, !tbaa !416 ; 3 uses
  br i1 %i.bi, label %bb.m, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, !prof !49

bb.m:                                             ; preds = %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_8OffsetToINS2_9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEEEE9hb_pair_tIjRSF_EEdeEv.exit.i.i.i
  %i.bk = zext i32 %i.bg to i64                   ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !1700
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.bm, %i.bf
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %bb.m, %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_8OffsetToINS2_9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEEEE9hb_pair_tIjRSF_EEdeEv.exit.i.i.i
  %.not1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %i.bh, 0
  br i1 %.not1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZNK4$_35clIRK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS5_OS6_.exit.i.i.i"

.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:   ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i
  %i.bn = add nsw i32 %i.bh, -1
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %bb.q, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.0203.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.q ], [ %i.bn, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.0212.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.223.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.q ], [ 0, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.bo = add i32 %.0212.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.0203.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bp = lshr i32 %i.bo, 1                       ; 4 uses
  %i.bq = zext nneg i32 %i.bp to i64              ; 2 uses
  %i.br = shl nuw nsw i64 %i.bq, 3
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.br
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !1700 ; 2 uses
  %i.bu = icmp slt i32 %i.bf, %i.bt
  br i1 %i.bu, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bv = add nsw i32 %i.bp, -1
  br label %bb.q

bb.o:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.not28.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.bf, %i.bt
  br i1 %.not28.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bw = add nuw nsw i32 %i.bp, 1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n
  %.223.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bw, %bb.p ], [ %.0212.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.n ] ; 2 uses
  %.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.0203.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.p ], [ %i.bv, %bb.n ] ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %.223.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZNK4$_35clIRK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS5_OS6_.exit.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !2478

_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.o
  store atomic i32 %i.bp, ptr %i.ap monotonic, align 8
  br label %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i.i

_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.m
  %i.bx = phi i64 [ %i.bq, %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIS1_Lb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bk, %bb.m ]
  %.sink.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sink.in.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !1702 ; 2 uses
  %.not.i.i.i.i.i.i.i6.i.i.i = icmp eq ptr %.sink.i.i.i.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i6.i.i.i, label %"_ZNK4$_35clIRK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS5_OS6_.exit.i.i.i", label %bb.r

bb.r:                                             ; preds = %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i.i
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !1705
  %i.cb = zext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [72 x i8], ptr %.sink.i.i.i.i.i.i.i.i.i.i.i, i64 %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = lshr i32 %.0.i.i.i.i.i.i.i.i, 6
  %i.cf = and i32 %i.ce, 7
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.cg
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !1706
  %i.cj = and i32 %.0.i.i.i.i.i.i.i.i, 63
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = lshr i64 %i.ci, %i.ck
  %i.cm = trunc i64 %i.cl to i8
  %i.cn = and i8 %i.cm, 1
  br label %"_ZNK4$_35clIRK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS5_OS6_.exit.i.i.i"

"_ZNK4$_35clIRK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS5_OS6_.exit.i.i.i": ; preds = %bb.q, %bb.r, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i5.i.i.i = phi i8 [ %i.cn, %bb.r ], [ 0, %_ZNK12hb_bit_set_t8page_forEj.exit.i.i.i.i.i.i.i.i.i.i ], [ 0, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.q ]
  %i.co = load i8, ptr %i.as, align 8, !tbaa !1166, !range !220, !noundef !74
  %.not8.i.i.i = icmp eq i8 %i.co, %.0.i.i.i.i.i.i.i5.i.i.i
  br i1 %.not8.i.i.i, label %bb.s, label %"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_8OffsetToINS2_9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS1_7NumTypeILb1EtLj2EEEvLb1EEEEE24hb_filter_iter_factory_tIRK8hb_set_tRK3$_6ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSR_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISR_Efp_EEEOSR_OSX_.exit"

bb.s:                                             ; preds = %"_ZNK4$_35clIRK8hb_set_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS5_OS6_.exit.i.i.i"
  switch i16 %i.i, label %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS0_8OffsetToINS1_9GSUB_impl11LigatureSetINS1_10SmallTypesEEENS0_7NumTypeILb1EtLj2EEEvLb1EEEEE8__next__Ev.exit [
    i16 1, label %bb.t
    i16 2, label %bb.u
  ]

bb.t:                                             ; preds = %bb.s
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.cp = add nuw nsw i32 %.sroa.13.0, 1
  br label %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS0_8OffsetToINS1_9GSUB_impl11LigatureSetINS1_10SmallTypesEEENS0_7NumTypeILb1EtLj2EEEvLb1EEEEE8__next__Ev.exit

bb.u:                                             ; preds = %bb.s
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.cq = load i16, ptr %i.am, align 1, !tbaa !62
  %i.cr = tail call noundef i16 @llvm.bswap.i16(i16 %i.cq)
  %i.cs = zext i16 %i.cr to i32
  %.not.i.i.i.i.i15 = icmp ult i32 %.sroa.13.0, %i.cs
  br i1 %.not.i.i.i.i.i15, label %bb.v, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i.i.i, !prof !49

bb.v:                                             ; preds = %bb.u
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.ct = zext nneg i32 %.sroa.13.0 to i64
  %i.cu = getelementptr inbounds nuw [6 x i8], ptr %i.ao, i64 %i.ct
  br label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i.i.i

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i.i.i: ; preds = %bb.v, %bb.u
  %.0.i.i.i.i.i = phi ptr [ %i.cu, %bb.v ], [ @_hb_Null_OT_RangeRecord, %bb.u ]
  %i.cv = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 2
  %i.cw = load i16, ptr %i.cv, align 1, !tbaa !62
  %i.cx = tail call noundef i16 @llvm.bswap.i16(i16 %i.cw)
  %i.cy = zext i16 %i.cx to i32
  %.not.i.i.i.i16 = icmp ult i32 %.sroa.27.0, %i.cy
  br i1 %.not.i.i.i.i16, label %bb.y, label %bb.w

end_hunk_3
begin_hunk_4_@_ZNK2OT19ChainContextFormat37closureEPNS_20hb_closure_context_tE:bb.a
_ZN2OTL19intersects_coverageEPK8hb_set_tjPKvPv.exit: ; preds = %bb.n, %bb.o
  %.0.i.i33 = phi i1 [ %i.dh, %bb.o ], [ %i.dg, %bb.n ] ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.01523.i.i.i, i64 2 ; 2 uses
  %.not.i.i.i = icmp ne ptr %i.di, %i.cy
  %or.cond.not.i.i = select i1 %.0.i.i33, i1 %.not.i.i.i, i1 false
  br i1 %or.cond.not.i.i, label %.lr.ph.i.i.i, label %_ZN2OTL18array_is_subset_ofINS_7NumTypeILb1EtLj2EEEEEbPK8hb_set_tjPKT_PFbS5_jPKvPvESA_SB_.exit.i.i

_ZN2OTL18array_is_subset_ofINS_7NumTypeILb1EtLj2EEEEEbPK8hb_set_tjPKT_PFbS5_jPKvPvESA_SB_.exit.i.i: ; preds = %.lr.ph.i.i.i, %_ZN2OTL19intersects_coverageEPK8hb_set_tjPKvPv.exit, %_ZNK2OT6Layout6Common8Coverage13intersect_setIR8hb_set_tTnPN12hb_enable_ifIXsr13hb_is_sink_ofIT_jEE5valueEvE4typeELPv0EEEvRKS4_OS7_.exit
  %.not.lcssa.i.i.i = phi i1 [ true, %_ZNK2OT6Layout6Common8Coverage13intersect_setIR8hb_set_tTnPN12hb_enable_ifIXsr13hb_is_sink_ofIT_jEE5valueEvE4typeELPv0EEEvRKS4_OS7_.exit ], [ false, %.lr.ph.i.i.i ], [ %.0.i.i33, %_ZN2OTL19intersects_coverageEPK8hb_set_tjPKvPv.exit ] ; 2 uses
  %i.dj = tail call i32 @llvm.usub.sat.i32(i32 %i.cq, i32 1)
  %i.dk = shl nuw nsw i32 %i.dj, 1
  %.idx.i23.i.i = zext nneg i32 %i.dk to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.idx.i23.i.i
  %.not22.i24.i.i = icmp ult i16 %i.cc, 2
  br i1 %.not22.i24.i.i, label %_ZN2OTL18array_is_subset_ofINS_7NumTypeILb1EtLj2EEEEEbPK8hb_set_tjPKT_PFbS5_jPKvPvESA_SB_.exit29.i.i, label %.lr.ph.i25.i.i

bb.p:                                             ; preds = %.split44, %_ZN2OTL19intersects_coverageEPK8hb_set_tjPKvPv.exit36
  %i.dm = getelementptr inbounds nuw i8, ptr %.01523.i26.i.i, i64 2 ; 2 uses
  %.not.i28.i.i = icmp eq ptr %i.dm, %i.dl
  br i1 %.not.i28.i.i, label %_ZN2OTL18array_is_subset_ofINS_7NumTypeILb1EtLj2EEEEEbPK8hb_set_tjPKT_PFbS5_jPKvPvESA_SB_.exit29.i.i, label %.lr.ph.i25.i.i

.lr.ph.i25.i.i:                                   ; preds = %_ZN2OTL18array_is_subset_ofINS_7NumTypeILb1EtLj2EEEEEbPK8hb_set_tjPKT_PFbS5_jPKvPvESA_SB_.exit.i.i, %bb.p
  %.01523.i26.i.i = phi ptr [ %i.dm, %bb.p ], [ %i.cr, %_ZN2OTL18array_is_subset_ofINS_7NumTypeILb1EtLj2EEEEEbPK8hb_set_tjPKT_PFbS5_jPKvPvESA_SB_.exit.i.i ] ; 2 uses
  %i.dn = load i16, ptr %.01523.i26.i.i, align 1, !tbaa !62 ; 2 uses
  %i.do = tail call noundef i16 @llvm.bswap.i16(i16 %i.dn)
  %i.dp = icmp eq i16 %i.dn, 0
  %i.dq = zext i16 %i.do to i64
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 %i.dq
  %.0.i.i.i34 = select i1 %i.dp, ptr @_hb_NullPool, ptr %i.dr, !prof !48 ; 3 uses
  %i.ds = load i16, ptr %.0.i.i.i34, align 1, !tbaa !62
  %i.dt = tail call noundef i16 @llvm.bswap.i16(i16 %i.ds)
  switch i16 %i.dt, label %_ZN2OTL18array_is_subset_ofINS_7NumTypeILb1EtLj2EEEEEbPK8hb_set_tjPKT_PFbS5_jPKvPvESA_SB_.exit29.i.i [
    i16 1, label %_ZN2OTL19intersects_coverageEPK8hb_set_tjPKvPv.exit36
    i16 2, label %.split44
  ]

.split44:                                         ; preds = %.lr.ph.i25.i.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.du = tail call noundef zeroext i1 @_ZNK2OT6Layout6Common17CoverageFormat2_4INS0_10SmallTypesEE10intersectsEPK8hb_set_t(ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i.i34, ptr noundef %i.cx)
  br i1 %i.du, label %bb.p, label %_ZN2OTL18array_is_subset_ofINS_7NumTypeILb1EtLj2EEEEEbPK8hb_set_tjPKT_PFbS5_jPKvPvESA_SB_.exit29.i.i

_ZN2OTL19intersects_coverageEPK8hb_set_tjPKvPv.exit36: ; preds = %.lr.ph.i25.i.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.dv = tail call noundef zeroext i1 @_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE10intersectsEPK8hb_set_t(ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i.i34, ptr noundef %i.cx)
  br i1 %i.dv, label %bb.p, label %_ZN2OTL18array_is_subset_ofINS_7NumTypeILb1EtLj2EEEEEbPK8hb_set_tjPKT_PFbS5_jPKvPvESA_SB_.exit29.i.i

_ZN2OTL18array_is_subset_ofINS_7NumTypeILb1EtLj2EEEEEbPK8hb_set_tjPKT_PFbS5_jPKvPvESA_SB_.exit29.i.i: ; preds = %.lr.ph.i25.i.i, %.split44, %bb.p, %_ZN2OTL19intersects_coverageEPK8hb_set_tjPKvPv.exit36, %_ZN2OTL18array_is_subset_ofINS_7NumTypeILb1EtLj2EEEEEbPK8hb_set_tjPKT_PFbS5_jPKvPvESA_SB_.exit.i.i
  %.not.lcssa.i27.i.i = phi i1 [ %.not.lcssa.i.i.i, %_ZN2OTL18array_is_subset_ofINS_7NumTypeILb1EtLj2EEEEEbPK8hb_set_tjPKT_PFbS5_jPKvPvESA_SB_.exit.i.i ], [ false, %.lr.ph.i25.i.i ], [ false, %.split44 ], [ false, %_ZN2OTL19intersects_coverageEPK8hb_set_tjPKvPv.exit36 ], [ %.not.lcssa.i.i.i, %bb.p ]
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.ck
  %.not22.i32.i.i = icmp eq i16 %i.ch, 0
  br i1 %.not22.i32.i.i, label %_ZN2OTL24chain_context_intersectsINS_7NumTypeILb1EtLj2EEEEEbPK8hb_set_tjPKT_jS8_jS8_RNS_32ChainContextClosureLookupContextE.exit.i, label %.lr.ph.i33.i.i

bb.q:                                             ; preds = %.split46, %_ZN2OTL19intersects_coverageEPK8hb_set_tjPKvPv.exit39
  %i.dx = getelementptr inbounds nuw i8, ptr %.01523.i34.i.i, i64 2 ; 2 uses
  %.not.i36.i.i = icmp eq ptr %i.dx, %i.dw
  br i1 %.not.i36.i.i, label %_ZN2OTL24chain_context_intersectsINS_7NumTypeILb1EtLj2EEEEEbPK8hb_set_tjPKT_jS8_jS8_RNS_32ChainContextClosureLookupContextE.exit.i, label %.lr.ph.i33.i.i

.lr.ph.i33.i.i:                                   ; preds = %_ZN2OTL18array_is_subset_ofINS_7NumTypeILb1EtLj2EEEEEbPK8hb_set_tjPKT_PFbS5_jPKvPvESA_SB_.exit29.i.i, %bb.q
  %.01523.i34.i.i = phi ptr [ %i.dx, %bb.q ], [ %i.cs, %_ZN2OTL18array_is_subset_ofINS_7NumTypeILb1EtLj2EEEEEbPK8hb_set_tjPKT_PFbS5_jPKvPvESA_SB_.exit29.i.i ] ; 2 uses
  %i.dy = load i16, ptr %.01523.i34.i.i, align 1, !tbaa !62 ; 2 uses
  %i.dz = tail call noundef i16 @llvm.bswap.i16(i16 %i.dy)
  %i.ea = icmp eq i16 %i.dy, 0
  %i.eb = zext i16 %i.dz to i64
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 %i.eb
  %.0.i.i.i37 = select i1 %i.ea, ptr @_hb_NullPool, ptr %i.ec, !prof !48 ; 3 uses
  %i.ed = load i16, ptr %.0.i.i.i37, align 1, !tbaa !62
  %i.ee = tail call noundef i16 @llvm.bswap.i16(i16 %i.ed)
  switch i16 %i.ee, label %_ZN2OTL28chain_context_closure_lookupINS_7NumTypeILb1EtLj2EEEEEvPNS_20hb_closure_context_tEjPKT_jS7_jS7_jPKNS_12LookupRecordEjRNS_32ChainContextClosureLookupContextE.exit [
    i16 1, label %_ZN2OTL19intersects_coverageEPK8hb_set_tjPKvPv.exit39
    i16 2, label %.split46
  ]

.split46:                                         ; preds = %.lr.ph.i33.i.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.ef = tail call noundef zeroext i1 @_ZNK2OT6Layout6Common17CoverageFormat2_4INS0_10SmallTypesEE10intersectsEPK8hb_set_t(ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i.i37, ptr noundef %i.cx)
  br i1 %i.ef, label %bb.q, label %_ZN2OTL28chain_context_closure_lookupINS_7NumTypeILb1EtLj2EEEEEvPNS_20hb_closure_context_tEjPKT_jS7_jS7_jPKNS_12LookupRecordEjRNS_32ChainContextClosureLookupContextE.exit

_ZN2OTL19intersects_coverageEPK8hb_set_tjPKvPv.exit39: ; preds = %.lr.ph.i33.i.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.eg = tail call noundef zeroext i1 @_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE10intersectsEPK8hb_set_t(ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i.i37, ptr noundef %i.cx)
  br i1 %i.eg, label %bb.q, label %_ZN2OTL28chain_context_closure_lookupINS_7NumTypeILb1EtLj2EEEEEvPNS_20hb_closure_context_tEjPKT_jS7_jS7_jPKNS_12LookupRecordEjRNS_32ChainContextClosureLookupContextE.exit

_ZN2OTL24chain_context_intersectsINS_7NumTypeILb1EtLj2EEEEEbPK8hb_set_tjPKT_jS8_jS8_RNS_32ChainContextClosureLookupContextE.exit.i: ; preds = %bb.q, %_ZN2OTL18array_is_subset_ofINS_7NumTypeILb1EtLj2EEEEEbPK8hb_set_tjPKT_PFbS5_jPKvPvESA_SB_.exit29.i.i
  br i1 %.not.lcssa.i27.i.i, label %bb.r, label %_ZN2OTL28chain_context_closure_lookupINS_7NumTypeILb1EtLj2EEEEEvPNS_20hb_closure_context_tEjPKT_jS7_jS7_jPKNS_12LookupRecordEjRNS_32ChainContextClosureLookupContextE.exit

bb.r:                                             ; preds = %_ZN2OTL24chain_context_intersectsINS_7NumTypeILb1EtLj2EEEEEbPK8hb_set_tjPKT_jS8_jS8_RNS_32ChainContextClosureLookupContextE.exit.i
  tail call fastcc void @_ZN2OTL31context_closure_recurse_lookupsINS_7NumTypeILb1EtLj2EEEEEvPNS_20hb_closure_context_tEjPKT_jPKNS_12LookupRecordEjNS_13ContextFormatEPKvPFvPK8hb_set_tSD_jPSE_PvESI_(ptr noundef nonnull %1, i32 noundef %i.cq, ptr noundef nonnull %i.cr, i32 noundef %i.cv, ptr noundef nonnull readonly %i.cw, i32 noundef 0, i32 noundef 3, ptr noundef nonnull %0, ptr noundef nonnull @_ZN2OTL27intersected_coverage_glyphsEPK8hb_set_tPKvjPS0_Pv, ptr noundef null)
  br label %_ZN2OTL28chain_context_closure_lookupINS_7NumTypeILb1EtLj2EEEEEvPNS_20hb_closure_context_tEjPKT_jS7_jS7_jPKNS_12LookupRecordEjRNS_32ChainContextClosureLookupContextE.exit

_ZN2OTL28chain_context_closure_lookupINS_7NumTypeILb1EtLj2EEEEEvPNS_20hb_closure_context_tEjPKT_jS7_jS7_jPKNS_12LookupRecordEjRNS_32ChainContextClosureLookupContextE.exit: ; preds = %.lr.ph.i33.i.i, %.split46, %_ZN2OTL19intersects_coverageEPK8hb_set_tjPKvPv.exit39, %_ZN2OTL24chain_context_intersectsINS_7NumTypeILb1EtLj2EEEEEbPK8hb_set_tjPKT_jS8_jS8_RNS_32ChainContextClosureLookupContextE.exit.i, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.eh = load i32, ptr %i.v, align 4, !tbaa !1693
  %.not25 = icmp eq i32 %i.eh, 0
  br i1 %.not25, label %_ZN2OT20hb_closure_context_t19pop_cur_done_glyphsEv.exit, label %bb.s

bb.s:                                             ; preds = %_ZN2OTL28chain_context_closure_lookupINS_7NumTypeILb1EtLj2EEEEEvPNS_20hb_closure_context_tEjPKT_jS7_jS7_jPKNS_12LookupRecordEjRNS_32ChainContextClosureLookupContextE.exit
  call void @_ZN11hb_vector_tI8hb_set_tLb0EE3popEv(ptr dead_on_unwind nonnull writable sret(%struct.hb_set_t) align 8 %2, ptr noundef nonnull align 8 dereferenceable(16) %i.u)
  call void @_ZN14hb_sparseset_tI23hb_bit_set_invertible_tED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %2) #63
  br label %_ZN2OT20hb_closure_context_t19pop_cur_done_glyphsEv.exit

_ZN2OT20hb_closure_context_t19pop_cur_done_glyphsEv.exit: ; preds = %_ZN2OTL28chain_context_closure_lookupINS_7NumTypeILb1EtLj2EEEEEvPNS_20hb_closure_context_tEjPKT_jS7_jS7_jPKNS_12LookupRecordEjRNS_32ChainContextClosureLookupContextE.exit, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %_ZNK2OT6Layout6Common8Coverage10intersectsEPK8hb_set_t.exit.thread

_ZNK2OT6Layout6Common8Coverage10intersectsEPK8hb_set_t.exit.thread: ; preds = %_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EEES6_EixEi.exit, %.split, %_ZN2OT20hb_closure_context_t19pop_cur_done_glyphsEv.exit, %_ZN2OT20hb_closure_context_t22push_cur_active_glyphsEv.exit, %_ZNK2OT6Layout6Common8Coverage10intersectsEPK8hb_set_t.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2OT6Layout9GSUB_impl30ReverseChainSingleSubstFormat17closureEPNS_20hb_closure_context_tE(ptr noundef nonnull align 1 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %struct.hb_map_iter_t.1348, align 8 ; 5 uses
  %3 = alloca %struct.hb_filter_iter_t.1350, align 8 ; 4 uses
  %4 = alloca %struct.hb_zip_iter_t, align 8      ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1685
  %i.c = tail call noundef zeroext i1 @_ZNK2OT6Layout9GSUB_impl30ReverseChainSingleSubstFormat110intersectsEPK8hb_set_t(ptr noundef nonnull align 1 dereferenceable(16) %0, ptr noundef %i.b)
  br i1 %i.c, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.e = load i16, ptr %i.d, align 1, !tbaa !62
  %i.f = tail call noundef i16 @llvm.bswap.i16(i16 %i.e)
  %i.g = zext i16 %i.f to i64
  %i.h = shl nuw nsw i64 %i.g, 1
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 2 ; 2 uses
  %i.k = load i16, ptr %i.j, align 1, !tbaa !62
  %i.l = tail call noundef i16 @llvm.bswap.i16(i16 %i.k)
  %i.m = zext i16 %i.l to i64
  %i.n = shl nuw nsw i64 %i.m, 1
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.n ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 2
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #63
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #63
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #63
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.r = load i16, ptr %i.q, align 1, !tbaa !62   ; 2 uses
  %i.s = icmp eq i16 %i.r, 0
  %i.t = tail call i16 @llvm.bswap.i16(i16 %i.r)
  %i.u = zext i16 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %i.u
  %.0.i.i = select i1 %i.s, ptr @_hb_NullPool, ptr %i.v, !prof !48 ; 6 uses
  %i.w = load i16, ptr %.0.i.i, align 1, !tbaa !62, !noalias !3890
  %i.x = tail call noundef i16 @llvm.bswap.i16(i16 %i.w) ; 2 uses
  switch i16 %i.x, label %"_ZNK4$_29clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_11HBGlyphID16ENS1_7NumTypeILb1EtLj2EEEEETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISF_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISG_EEE4iterEEEOSF_OSG_.exit" [
    i16 1, label %bb.c
    i16 2, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !noalias !3890, !srcloc !60
  br label %"_ZNK4$_29clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_11HBGlyphID16ENS1_7NumTypeILb1EtLj2EEEEETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISF_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISG_EEE4iterEEEOSF_OSG_.exit"

bb.d:                                             ; preds = %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !noalias !3890, !srcloc !60
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 2 ; 4 uses
  %i.z = load i16, ptr %i.y, align 1, !tbaa !62, !noalias !3890
  %.not.i.i.i.i.i = icmp eq i16 %i.z, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i, label %bb.e, !prof !787

bb.e:                                             ; preds = %bb.d
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !noalias !3890, !srcloc !60
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4 ; 3 uses
  %i.ab = load i16, ptr %i.aa, align 1, !tbaa !62, !noalias !3890
  %i.ac = tail call noundef i16 @llvm.bswap.i16(i16 %i.ab) ; 3 uses
  %.pre8.i.i.i.i.i = load i16, ptr %i.y, align 1, !tbaa !62, !noalias !3890
  %i.ad = icmp eq i16 %.pre8.i.i.i.i.i, 0
  br i1 %i.ad, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i, !prof !124

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i: ; preds = %bb.e
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !noalias !3890, !srcloc !60
  %.pre11.i.i.i.i.i = load i16, ptr %i.y, align 1, !tbaa !62, !noalias !3890
  %i.ae = icmp eq i16 %.pre11.i.i.i.i.i, 0
  %i.af = load i16, ptr %i.aa, align 1, !tbaa !62, !noalias !3890
  %i.ag = tail call noundef i16 @llvm.bswap.i16(i16 %i.af) ; 2 uses
  br i1 %i.ae, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i, label %bb.f, !prof !124

bb.f:                                             ; preds = %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !noalias !3890, !srcloc !60
  br label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i: ; preds = %bb.f, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i, %bb.e, %bb.d
  %.sroa.11.0.shrunk.i = phi i16 [ %i.ac, %bb.f ], [ %i.ac, %bb.e ], [ %i.ac, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i ], [ 0, %bb.d ]
  %i.ah = phi i16 [ %i.ag, %bb.f ], [ 256, %bb.e ], [ %i.ag, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i ], [ 256, %bb.d ]
  %.0.i6.i.i.i.i.i = phi ptr [ %i.aa, %bb.f ], [ @_hb_Null_OT_RangeRecord, %bb.e ], [ @_hb_Null_OT_RangeRecord, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i ], [ @_hb_Null_OT_RangeRecord, %bb.d ]
  %.sroa.11.0.i = zext i16 %.sroa.11.0.shrunk.i to i32
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i6.i.i.i.i.i, i64 2
  %i.aj = load i16, ptr %i.ai, align 1, !tbaa !62, !noalias !3890
  %i.ak = tail call noundef i16 @llvm.bswap.i16(i16 %i.aj)
  %i.al = icmp ugt i16 %i.ah, %i.ak
  br i1 %i.al, label %bb.g, label %"_ZNK4$_29clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_11HBGlyphID16ENS1_7NumTypeILb1EtLj2EEEEETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISF_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISG_EEE4iterEEEOSF_OSG_.exit", !prof !48

bb.g:                                             ; preds = %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i
  %i.am = load i16, ptr %i.y, align 1, !tbaa !62, !noalias !3890
  %i.an = tail call noundef i16 @llvm.bswap.i16(i16 %i.am)
  %i.ao = zext i16 %i.an to i32
  br label %"_ZNK4$_29clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_11HBGlyphID16ENS1_7NumTypeILb1EtLj2EEEEETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISF_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISG_EEE4iterEEEOSF_OSG_.exit"

"_ZNK4$_29clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_11HBGlyphID16ENS1_7NumTypeILb1EtLj2EEEEETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISF_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISG_EEE4iterEEEOSF_OSG_.exit": ; preds = %bb.b, %bb.c, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i, %bb.g
  %.sroa.7.0.i = phi i32 [ 0, %bb.b ], [ 0, %bb.c ], [ %i.ao, %bb.g ], [ 0, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i ]
  %.sroa.11.1.i = phi i32 [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.g ], [ %.sroa.11.0.i, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i ]
  %.sroa.52.0.i = phi ptr [ null, %bb.b ], [ %.0.i.i, %bb.c ], [ %.0.i.i, %bb.g ], [ %.0.i.i, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i ]
  %i.ap = zext i16 %i.x to i32
  %i.aq = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.ar = load i16, ptr %i.p, align 1, !tbaa !62, !noalias !3897
  %i.as = tail call noundef i16 @llvm.bswap.i16(i16 %i.ar)
  %.sroa.2.8.insert.ext.i.i.i.i.i = zext i16 %i.as to i64
  store i32 %i.ap, ptr %4, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 0, ptr %.sroa.412.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.sroa.52.0.i, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %.sroa.7.0.i, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 0, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 %.sroa.11.1.i, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 28
  store i32 0, ptr %.sroa.9.0..sroa_idx, align 4
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.aq, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 %.sroa.2.8.insert.ext.i.i.i.i.i, ptr %.sroa.11.0..sroa_idx, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.au = load i32, ptr %i.at, align 4, !tbaa !1693 ; 2 uses
  %.not.i = icmp eq i32 %i.au, 0
  %i.av = add i32 %i.au, -1
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = zext i32 %i.av to i64
  %i.az = getelementptr inbounds nuw [72 x i8], ptr %i.ax, i64 %i.ay
  %i.ba = load ptr, ptr %i.a, align 8
  %.0.i = select i1 %.not.i, ptr %i.ba, ptr %i.az
  call fastcc void @"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_11HBGlyphID16EEE24hb_filter_iter_factory_tIRK8hb_set_tRK3$_6ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSK_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISK_Efp_EEEOSK_OSQ_"(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef nonnull align 8 dereferenceable(48) %4, ptr %.0.i, ptr nonnull @_ZL8hb_first)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull readonly align 8 dereferenceable(64) %3, i64 64, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 64
  store ptr @_ZL9hb_second, ptr %i.bb, align 8, !tbaa !3725, !alias.scope !3898
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 24
  call fastcc void @"_ZorI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS3_11HBGlyphID16EEERK8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t0ELSJ_0EE9hb_sink_tIRSD_ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSU_6item_tEEE5valueEvE4typeELSJ_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISU_Efp_EEEOSU_OSZ_"(ptr noundef nonnull align 8 dereferenceable(72) %2, ptr nonnull %i.bc)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #63
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %"_ZNK4$_29clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_11HBGlyphID16ENS1_7NumTypeILb1EtLj2EEEEETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISF_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISG_EEE4iterEEEOSF_OSG_.exit"
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2OT6Layout9GSUB_impl30ReverseChainSingleSubstFormat110intersectsEPK8hb_set_t(ptr noundef nonnull align 1 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.b = load i16, ptr %i.a, align 1, !tbaa !62   ; 2 uses
  %i.c = icmp eq i16 %i.b, 0
  %i.d = tail call i16 @llvm.bswap.i16(i16 %i.b)
  %i.e = zext i16 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %i.e
  %.0.i.i = select i1 %i.c, ptr @_hb_NullPool, ptr %i.f, !prof !48 ; 3 uses
  %i.g = load i16, ptr %.0.i.i, align 1, !tbaa !62
  %i.h = tail call noundef i16 @llvm.bswap.i16(i16 %i.g)
  switch i16 %i.h, label %_ZNK2OT6Layout6Common8Coverage10intersectsEPK8hb_set_t.exit.thread [
    i16 1, label %_ZNK2OT6Layout6Common8Coverage10intersectsEPK8hb_set_t.exit
    i16 2, label %.split
  ]

.split:                                           ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.i = tail call noundef zeroext i1 @_ZNK2OT6Layout6Common17CoverageFormat2_4INS0_10SmallTypesEE10intersectsEPK8hb_set_t(ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i, ptr noundef %1)
  br i1 %i.i, label %bb.b, label %_ZNK2OT6Layout6Common8Coverage10intersectsEPK8hb_set_t.exit.thread

_ZNK2OT6Layout6Common8Coverage10intersectsEPK8hb_set_t.exit: ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.j = tail call noundef zeroext i1 @_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE10intersectsEPK8hb_set_t(ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i, ptr noundef %1)
  br i1 %i.j, label %bb.b, label %_ZNK2OT6Layout6Common8Coverage10intersectsEPK8hb_set_t.exit.thread

bb.b:                                             ; preds = %.split, %_ZNK2OT6Layout6Common8Coverage10intersectsEPK8hb_set_t.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.l = load i16, ptr %i.k, align 1, !tbaa !62   ; 2 uses
  %i.m = tail call noundef i16 @llvm.bswap.i16(i16 %i.l) ; 2 uses
  %i.n = zext i16 %i.m to i64
  %i.o = shl nuw nsw i64 %i.n, 1
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.o ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 2 ; 2 uses
  %.not40.not = icmp eq i16 %i.l, 0
  br i1 %.not40.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 6
  %wide.trip.count = zext i16 %i.m to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %i.s = load i16, ptr %i.k, align 1, !tbaa !62
  %i.t = tail call noundef i16 @llvm.bswap.i16(i16 %i.s)
  %i.u = zext i16 %i.t to i64
  %.not.i = icmp samesign ult i64 %indvars.iv, %i.u
  br i1 %.not.i, label %bb.d, label %_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EEES6_EixEi.exit, !prof !49

bb.d:                                             ; preds = %bb.c
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %indvars.iv
  br label %_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EEES6_EixEi.exit

_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EEES6_EixEi.exit: ; preds = %bb.c, %bb.d
  %.0.i22 = phi ptr [ %i.v, %bb.d ], [ @_hb_NullPool, %bb.c ]
  %i.w = load i16, ptr %.0.i22, align 1, !tbaa !62 ; 2 uses
  %i.x = icmp eq i16 %i.w, 0
  %i.y = tail call i16 @llvm.bswap.i16(i16 %i.w)
  %i.z = zext i16 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %i.z
  %.0.i.i23 = select i1 %i.x, ptr @_hb_NullPool, ptr %i.aa, !prof !48 ; 3 uses
  %i.ab = load i16, ptr %.0.i.i23, align 1, !tbaa !62
  %i.ac = tail call noundef i16 @llvm.bswap.i16(i16 %i.ab)
  switch i16 %i.ac, label %_ZNK2OT6Layout6Common8Coverage10intersectsEPK8hb_set_t.exit.thread [
    i16 1, label %_ZNK2OT6Layout6Common8Coverage10intersectsEPK8hb_set_t.exit25
    i16 2, label %.split36
  ]

.split36:                                         ; preds = %_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EEES6_EixEi.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.ad = tail call noundef zeroext i1 @_ZNK2OT6Layout6Common17CoverageFormat2_4INS0_10SmallTypesEE10intersectsEPK8hb_set_t(ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i23, ptr noundef %1)
  br i1 %i.ad, label %bb.e, label %_ZNK2OT6Layout6Common8Coverage10intersectsEPK8hb_set_t.exit.thread

_ZNK2OT6Layout6Common8Coverage10intersectsEPK8hb_set_t.exit25: ; preds = %_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EEES6_EixEi.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.ae = tail call noundef zeroext i1 @_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE10intersectsEPK8hb_set_t(ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i23, ptr noundef %1)
  br i1 %i.ae, label %bb.e, label %_ZNK2OT6Layout6Common8Coverage10intersectsEPK8hb_set_t.exit.thread

bb.e:                                             ; preds = %.split36, %_ZNK2OT6Layout6Common8Coverage10intersectsEPK8hb_set_t.exit25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.c, !llvm.loop !3903

.critedge:                                        ; preds = %bb.e, %bb.b
  %i.af = load i16, ptr %i.q, align 1, !tbaa !62  ; 2 uses
  %.not2142 = icmp eq i16 %i.af, 0
  br i1 %.not2142, label %_ZNK2OT6Layout6Common8Coverage10intersectsEPK8hb_set_t.exit.thread, label %.lr.ph44

.lr.ph44:                                         ; preds = %.critedge
  %i.ag = tail call noundef i16 @llvm.bswap.i16(i16 %i.af)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %wide.trip.count54 = zext i16 %i.ag to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph44, %bb.h
  %indvars.iv50 = phi i64 [ 0, %.lr.ph44 ], [ %indvars.iv.next51, %bb.h ] ; 3 uses
  %i.ai = load i16, ptr %i.q, align 1, !tbaa !62
  %i.aj = tail call noundef i16 @llvm.bswap.i16(i16 %i.ai)
  %i.ak = zext i16 %i.aj to i64
  %.not.i26 = icmp samesign ult i64 %indvars.iv50, %i.ak
  br i1 %.not.i26, label %bb.g, label %_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EEES6_EixEi.exit28, !prof !49

bb.g:                                             ; preds = %bb.f
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %indvars.iv50
  br label %_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EEES6_EixEi.exit28

_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EEES6_EixEi.exit28: ; preds = %bb.f, %bb.g
  %.0.i27 = phi ptr [ %i.al, %bb.g ], [ @_hb_NullPool, %bb.f ]
  %i.am = load i16, ptr %.0.i27, align 1, !tbaa !62 ; 2 uses
  %i.an = icmp eq i16 %i.am, 0
  %i.ao = tail call i16 @llvm.bswap.i16(i16 %i.am)
  %i.ap = zext i16 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 %i.ap
  %.0.i.i29 = select i1 %i.an, ptr @_hb_NullPool, ptr %i.aq, !prof !48 ; 3 uses
  %i.ar = load i16, ptr %.0.i.i29, align 1, !tbaa !62
  %i.as = tail call noundef i16 @llvm.bswap.i16(i16 %i.ar)
  switch i16 %i.as, label %_ZNK2OT6Layout6Common8Coverage10intersectsEPK8hb_set_t.exit.thread [
    i16 1, label %_ZNK2OT6Layout6Common8Coverage10intersectsEPK8hb_set_t.exit31
    i16 2, label %.split38
  ]

.split38:                                         ; preds = %_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EEES6_EixEi.exit28
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.at = tail call noundef zeroext i1 @_ZNK2OT6Layout6Common17CoverageFormat2_4INS0_10SmallTypesEE10intersectsEPK8hb_set_t(ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i29, ptr noundef %1)
  br i1 %i.at, label %bb.h, label %_ZNK2OT6Layout6Common8Coverage10intersectsEPK8hb_set_t.exit.thread

_ZNK2OT6Layout6Common8Coverage10intersectsEPK8hb_set_t.exit31: ; preds = %_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EEES6_EixEi.exit28
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.au = tail call noundef zeroext i1 @_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE10intersectsEPK8hb_set_t(ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i29, ptr noundef %1)
  br i1 %i.au, label %bb.h, label %_ZNK2OT6Layout6Common8Coverage10intersectsEPK8hb_set_t.exit.thread

bb.h:                                             ; preds = %.split38, %_ZNK2OT6Layout6Common8Coverage10intersectsEPK8hb_set_t.exit31
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1 ; 2 uses
  %exitcond55.not = icmp eq i64 %indvars.iv.next51, %wide.trip.count54
  br i1 %exitcond55.not, label %_ZNK2OT6Layout6Common8Coverage10intersectsEPK8hb_set_t.exit.thread, label %bb.f, !llvm.loop !3904

_ZNK2OT6Layout6Common8Coverage10intersectsEPK8hb_set_t.exit.thread: ; preds = %_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EEES6_EixEi.exit, %_ZNK2OT6Layout6Common8Coverage10intersectsEPK8hb_set_t.exit25, %.split36, %_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EEES6_EixEi.exit28, %.split38, %_ZNK2OT6Layout6Common8Coverage10intersectsEPK8hb_set_t.exit31, %bb.h, %.critedge, %bb.a, %.split, %_ZNK2OT6Layout6Common8Coverage10intersectsEPK8hb_set_t.exit
  %.3 = phi i1 [ false, %_ZNK2OT6Layout6Common8Coverage10intersectsEPK8hb_set_t.exit ], [ false, %.split ], [ true, %.critedge ], [ false, %bb.a ], [ true, %bb.h ], [ false, %_ZNK2OT6Layout6Common8Coverage10intersectsEPK8hb_set_t.exit31 ], [ false, %.split38 ], [ false, %_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EEES6_EixEi.exit28 ], [ false, %.split36 ], [ false, %_ZNK2OT6Layout6Common8Coverage10intersectsEPK8hb_set_t.exit25 ], [ false, %_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout6Common8CoverageENS_7NumTypeILb1EtLj2EEEvLb1EEES6_EixEi.exit ]
  ret i1 %.3
}

; Function Attrs: mustprogress nofree nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN2OT6LayoutL28propagate_attachment_offsetsEP19hb_glyph_position_tjj14hb_direction_tj(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #38 {
bb.a:
  %i.a = zext i32 %2 to i64                       ; 8 uses
  %i.b = getelementptr inbounds nuw [20 x i8], ptr %0, i64 %i.a ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.d = load i16, ptr %i.c, align 4, !tbaa !61   ; 3 uses
  %i.e = sext i16 %i.d to i32                     ; 4 uses
end_hunk_4
begin_hunk_5_@_ZN12hb_hashmap_tIjjLb1EE13set_with_hashIRKjjEEbOT_jOT0_b:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !1421
  %.not34 = icmp ult i32 %i.g, %i.i
  br i1 %.not34, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef zeroext i1 @_ZN12hb_hashmap_tIjjLb1EE5allocEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef 0)
  br i1 %i.j, label %.critedge, label %bb.k, !prof !49

.critedge:                                        ; preds = %bb.b, %bb.c
  %i.k = and i32 %2, 1073741823                   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !1418
  %i.n = urem i32 %i.k, %i.m                      ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1417 ; 3 uses
  %i.q = zext nneg i32 %i.n to i64
  %i.r = getelementptr inbounds nuw [12 x i8], ptr %i.p, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = load i32, ptr %i.s, align 4              ; 2 uses
  %i.u = and i32 %i.t, 2
  %.not44 = icmp eq i32 %i.u, 0
  br i1 %.not44, label %.loopexit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge
  %i.v = load i32, ptr %1, align 4, !tbaa !139
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %i.w = phi i32 [ %i.t, %.lr.ph ], [ %i.aj, %bb.f ]
  %i.x = phi ptr [ %i.r, %.lr.ph ], [ %i.ah, %bb.f ]
  %.048 = phi i32 [ 0, %.lr.ph ], [ %i.ac, %bb.f ] ; 2 uses
  %.02946 = phi i32 [ %i.n, %.lr.ph ], [ %i.af, %bb.f ] ; 3 uses
  %.03045 = phi i32 [ -1, %.lr.ph ], [ %spec.select, %bb.f ] ; 3 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !139
  %i.z = icmp eq i32 %i.y, %i.v
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  br i1 %4, label %.loopexit, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.aa = trunc i32 %i.w to i1
  %i.ab = icmp ne i32 %.03045, -1
  %or.cond.not = select i1 %i.aa, i1 true, i1 %i.ab
  %spec.select = select i1 %or.cond.not, i32 %.03045, i32 %.02946 ; 2 uses
  %i.ac = add i32 %.048, 1                        ; 3 uses
  %i.ad = add i32 %i.ac, %.02946
  %i.ae = load i32, ptr %i.h, align 4, !tbaa !1421
  %i.af = and i32 %i.ae, %i.ad                    ; 3 uses
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [12 x i8], ptr %i.p, i64 %i.ag ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.aj = load i32, ptr %i.ai, align 4            ; 2 uses
  %i.ak = and i32 %i.aj, 2
  %.not = icmp eq i32 %i.ak, 0
  br i1 %.not, label %.loopexit, label %bb.d, !llvm.loop !6006

.loopexit:                                        ; preds = %bb.f, %bb.e
  %.03043 = phi i32 [ %.03045, %bb.e ], [ %spec.select, %bb.f ]
  %.02941 = phi i32 [ %.02946, %bb.e ], [ %i.af, %bb.f ]
  %.02839 = phi i32 [ %.048, %bb.e ], [ %i.ac, %bb.f ]
  %.03043.fr = freeze i32 %.03043                 ; 2 uses
  %i.al = icmp eq i32 %.03043.fr, -1
  %spec.select67 = select i1 %i.al, i32 %.02941, i32 %.03043.fr
  br label %.loopexit.thread

.loopexit.thread:                                 ; preds = %.loopexit, %.critedge
  %.0283961 = phi i32 [ %.02839, %.loopexit ], [ 0, %.critedge ]
  %i.am = phi i32 [ %spec.select67, %.loopexit ], [ %i.n, %.critedge ]
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [12 x i8], ptr %i.p, i64 %i.an ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4 ; 3 uses
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = and i32 %i.aq, 2
  %.not36 = icmp eq i32 %i.ar, 0
  br i1 %.not36, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.loopexit.thread
  %i.as = load i32, ptr %i.d, align 8, !tbaa !1422
  %i.at = add i32 %i.as, -1
  store i32 %i.at, ptr %i.d, align 8, !tbaa !1422
  %i.au = load i32, ptr %i.ap, align 4
  %i.av = and i32 %i.au, 1
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !1420
  %i.ay = sub i32 %i.ax, %i.av
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !1420
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.loopexit.thread
  %i.az = load i32, ptr %1, align 4, !tbaa !139
  store i32 %i.az, ptr %i.ao, align 4, !tbaa !1436
  %i.ba = load i32, ptr %3, align 4, !tbaa !139
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !1433
  %i.bc = shl nuw i32 %i.k, 2
  %i.bd = or disjoint i32 %i.bc, 3
  store i32 %i.bd, ptr %i.ap, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.bf = load <2 x i32>, ptr %i.be, align 4, !tbaa !139
  %i.bg = add <2 x i32> %i.bf, splat (i32 1)      ; 2 uses
  store <2 x i32> %i.bg, ptr %i.be, align 4, !tbaa !139
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !1634
  %i.bj = zext i16 %i.bi to i32
  %i.bk = icmp ugt i32 %.0283961, %i.bj
  br i1 %i.bk, label %bb.i, label %bb.k, !prof !48

bb.i:                                             ; preds = %bb.h
  %i.bl = extractelement <2 x i32> %i.bg, i64 1
  %i.bm = shl i32 %i.bl, 3
  %i.bn = load i32, ptr %i.h, align 4, !tbaa !1421 ; 2 uses
  %i.bo = icmp ugt i32 %i.bm, %i.bn
  br i1 %i.bo, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bp = add i32 %i.bn, -8
  %i.bq = tail call noundef zeroext i1 @_ZN12hb_hashmap_tIjjLb1EE5allocEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %i.bp) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %bb.j, %bb.i, %bb.h, %bb.c, %bb.a
  %.132 = phi i1 [ false, %bb.c ], [ false, %bb.a ], [ false, %bb.e ], [ true, %bb.j ], [ true, %bb.i ], [ true, %bb.h ]
  ret i1 %.132
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2OT6Layout9GSUB_impl20SingleSubstFormat2_4INS0_10SmallTypesEE24collect_glyph_alternatesEP8hb_map_tS6_(ptr noundef nonnull align 1 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  %3 = alloca %struct.hb_zip_iter_t, align 8      ; 12 uses
  %4 = alloca %struct.hb_apply_t.1988, align 8    ; 5 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !1795
  store ptr %2, ptr %i.b, align 8, !tbaa !1795
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #63
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.d = load i16, ptr %i.c, align 1, !tbaa !62   ; 2 uses
  %i.e = icmp eq i16 %i.d, 0
  %i.f = tail call i16 @llvm.bswap.i16(i16 %i.d)
  %i.g = zext i16 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g
  %.0.i.i = select i1 %i.e, ptr @_hb_NullPool, ptr %i.h, !prof !48 ; 6 uses
  %i.i = load i16, ptr %.0.i.i, align 1, !tbaa !62, !noalias !6007
  %i.j = tail call noundef i16 @llvm.bswap.i16(i16 %i.i) ; 2 uses
  switch i16 %i.j, label %"_ZNK4$_29clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_11HBGlyphID16ENS1_7NumTypeILb1EtLj2EEEEETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISF_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISG_EEE4iterEEEOSF_OSG_.exit" [
    i16 1, label %bb.b
    i16 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !noalias !6007, !srcloc !60
  br label %"_ZNK4$_29clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_11HBGlyphID16ENS1_7NumTypeILb1EtLj2EEEEETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISF_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISG_EEE4iterEEEOSF_OSG_.exit"

bb.c:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !noalias !6007, !srcloc !60
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 2 ; 4 uses
  %i.l = load i16, ptr %i.k, align 1, !tbaa !62, !noalias !6007
  %.not.i.i.i.i.i = icmp eq i16 %i.l, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i, label %bb.d, !prof !787

bb.d:                                             ; preds = %bb.c
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !noalias !6007, !srcloc !60
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4 ; 3 uses
  %i.n = load i16, ptr %i.m, align 1, !tbaa !62, !noalias !6007
  %i.o = tail call noundef i16 @llvm.bswap.i16(i16 %i.n) ; 3 uses
  %.pre8.i.i.i.i.i = load i16, ptr %i.k, align 1, !tbaa !62, !noalias !6007
  %i.p = icmp eq i16 %.pre8.i.i.i.i.i, 0
  br i1 %i.p, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i, !prof !124

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i: ; preds = %bb.d
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !noalias !6007, !srcloc !60
  %.pre11.i.i.i.i.i = load i16, ptr %i.k, align 1, !tbaa !62, !noalias !6007
  %i.q = icmp eq i16 %.pre11.i.i.i.i.i, 0
  %i.r = load i16, ptr %i.m, align 1, !tbaa !62, !noalias !6007
  %i.s = tail call noundef i16 @llvm.bswap.i16(i16 %i.r) ; 2 uses
  br i1 %i.q, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i, label %bb.e, !prof !124

bb.e:                                             ; preds = %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !noalias !6007, !srcloc !60
  br label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i: ; preds = %bb.e, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i, %bb.d, %bb.c
  %.sroa.11.0.shrunk.i = phi i16 [ %i.o, %bb.e ], [ %i.o, %bb.d ], [ %i.o, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i ], [ 0, %bb.c ]
  %i.t = phi i16 [ %i.s, %bb.e ], [ 256, %bb.d ], [ %i.s, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i ], [ 256, %bb.c ]
  %.0.i6.i.i.i.i.i = phi ptr [ %i.m, %bb.e ], [ @_hb_Null_OT_RangeRecord, %bb.d ], [ @_hb_Null_OT_RangeRecord, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i.i.i ], [ @_hb_Null_OT_RangeRecord, %bb.c ]
  %.sroa.11.0.i = zext i16 %.sroa.11.0.shrunk.i to i32
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i6.i.i.i.i.i, i64 2
  %i.v = load i16, ptr %i.u, align 1, !tbaa !62, !noalias !6007
  %i.w = tail call noundef i16 @llvm.bswap.i16(i16 %i.v)
  %i.x = icmp ugt i16 %i.t, %i.w
  br i1 %i.x, label %bb.f, label %"_ZNK4$_29clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_11HBGlyphID16ENS1_7NumTypeILb1EtLj2EEEEETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISF_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISG_EEE4iterEEEOSF_OSG_.exit", !prof !48

bb.f:                                             ; preds = %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i
  %i.y = load i16, ptr %i.k, align 1, !tbaa !62, !noalias !6007
  %i.z = tail call noundef i16 @llvm.bswap.i16(i16 %i.y)
  %i.aa = zext i16 %i.z to i32
  br label %"_ZNK4$_29clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_11HBGlyphID16ENS1_7NumTypeILb1EtLj2EEEEETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISF_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISG_EEE4iterEEEOSF_OSG_.exit"

"_ZNK4$_29clIRKN2OT6Layout6Common8CoverageERKNS1_7ArrayOfINS1_11HBGlyphID16ENS1_7NumTypeILb1EtLj2EEEEETnPN12hb_enable_ifIXaasr14hb_is_iterableIT_EE5valuesr14hb_is_iterableIT0_EE5valueEvE4typeELPv0EEE13hb_zip_iter_tIDTcldtclL_ZL8hb_derefEcl10hb_declvalISF_EEE4iterEEDTcldtclL_ZL8hb_derefEcl10hb_declvalISG_EEE4iterEEEOSF_OSG_.exit": ; preds = %bb.a, %bb.b, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i, %bb.f
  %.sroa.7.0.i = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.aa, %bb.f ], [ 0, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i ]
  %.sroa.11.1.i = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.f ], [ %.sroa.11.0.i, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i ]
  %.sroa.52.0.i = phi ptr [ null, %bb.a ], [ %.0.i.i, %bb.b ], [ %.0.i.i, %bb.f ], [ %.0.i.i, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i.i.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ac = zext i16 %i.j to i32
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.ae = load i16, ptr %i.ab, align 1, !tbaa !62, !noalias !6014
  %i.af = tail call noundef i16 @llvm.bswap.i16(i16 %i.ae)
  %.sroa.2.8.insert.ext.i.i.i.i.i = zext i16 %i.af to i64
  store i32 %i.ac, ptr %3, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %.sroa.43.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.sroa.52.0.i, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %.sroa.7.0.i, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 0, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 %.sroa.11.1.i, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i32 0, ptr %.sroa.9.0..sroa_idx, align 4
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.ad, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 %.sroa.2.8.insert.ext.i.i.i.i.i, ptr %.sroa.11.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #63
  store ptr %i.a, ptr %4, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.b, ptr %i.ag, align 8
  call void @_ZN10hb_apply_tIZNK2OT6Layout9GSUB_impl20SingleSubstFormat2_4INS1_10SmallTypesEE24collect_glyph_alternatesEP8hb_map_tS7_EUlRK9hb_pair_tIjjEE_EclI13hb_zip_iter_tINS1_6Common8Coverage6iter_tE10hb_array_tIKNS0_11HBGlyphID16EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSP_6item_tEEE5valueEvE4typeELPv0EEEvSP_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull byval(%struct.hb_zip_iter_t) align 8 %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #63
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN10hb_apply_tIZNK2OT6Layout9GSUB_impl20SingleSubstFormat2_4INS1_10SmallTypesEE24collect_glyph_alternatesEP8hb_map_tS7_EUlRK9hb_pair_tIjjEE_EclI13hb_zip_iter_tINS1_6Common8Coverage6iter_tE10hb_array_tIKNS0_11HBGlyphID16EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSP_6item_tEEE5valueEvE4typeELPv0EEEvSP_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef byval(%struct.hb_zip_iter_t) align 8 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %"_ZNK4$_33clIRZNK2OT6Layout9GSUB_impl20SingleSubstFormat2_4INS2_10SmallTypesEE24collect_glyph_alternatesEP8hb_map_tS8_EUlRK9hb_pair_tIjjEE_JS9_IjRKNS1_11HBGlyphID16EEEEEDTcl4implclsr3stdE7forwardIT_Efp_Ecv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEEOSJ_DpOSM_.exit", %bb.a
  %i.l = load i32, ptr %1, align 8, !tbaa !3430
  switch i32 %i.l, label %_ZNK9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_11HBGlyphID16EEE9hb_pair_tIjRS8_EEcvbEv.exit.thread [
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  br label %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i

bb.d:                                             ; preds = %bb.b
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  br label %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i

_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i: ; preds = %bb.d, %bb.c
  %i.m = load i32, ptr %i.g, align 8, !tbaa !139
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !170
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 2
  %i.p = load i16, ptr %i.o, align 1, !tbaa !62
  %i.q = call noundef i16 @llvm.bswap.i16(i16 %i.p)
  %i.r = zext i16 %i.q to i32
  %i.s = icmp ult i32 %i.m, %i.r
  %i.t = load i32, ptr %i.h, align 8
  %i.u = icmp ne i32 %i.t, 0
  %or.cond = select i1 %i.s, i1 %i.u, i1 false
  br i1 %or.cond, label %bb.e, label %_ZNK9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_11HBGlyphID16EEE9hb_pair_tIjRS8_EEcvbEv.exit.thread

bb.e:                                             ; preds = %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i
  %i.v = load i32, ptr %1, align 8, !tbaa !3430
  switch i32 %i.v, label %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_11HBGlyphID16EEE9hb_pair_tIjRS8_EEdeEv.exit [
    i32 1, label %bb.f
    i32 2, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.w = load ptr, ptr %i.f, align 8, !tbaa !3741 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 2
  %i.y = load i32, ptr %i.g, align 8, !tbaa !3444 ; 2 uses
  %i.z = load i16, ptr %i.x, align 1, !tbaa !62
  %i.aa = call noundef i16 @llvm.bswap.i16(i16 %i.z)
  %i.ab = zext i16 %i.aa to i32
  %.not.i.i.i.i.i.i.i = icmp ult i32 %i.y, %i.ab
  br i1 %.not.i.i.i.i.i.i.i, label %bb.g, label %_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i, !prof !49

bb.g:                                             ; preds = %bb.f
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.ad = zext nneg i32 %i.y to i64
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.ac, i64 %i.ad
  br label %_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i

_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i = phi ptr [ %i.ae, %bb.g ], [ @_hb_NullPool, %bb.f ]
  %i.af = load i16, ptr %.0.i.i.i.i.i.i.i, align 1, !tbaa !62
  %i.ag = call noundef i16 @llvm.bswap.i16(i16 %i.af)
  %i.ah = zext i16 %i.ag to i32
  br label %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_11HBGlyphID16EEE9hb_pair_tIjRS8_EEdeEv.exit

bb.h:                                             ; preds = %bb.e
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #63, !srcloc !60
  %i.ai = load i32, ptr %i.i, align 8, !tbaa !3447
  br label %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_11HBGlyphID16EEE9hb_pair_tIjRS8_EEdeEv.exit

_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_11HBGlyphID16EEE9hb_pair_tIjRS8_EEdeEv.exit: ; preds = %bb.e, %_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i, %bb.h
  %.0.i.i.i.i.i = phi i32 [ %i.ai, %bb.h ], [ %i.ah, %_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i ], [ 0, %bb.e ] ; 10 uses
  %i.aj = load i32, ptr %i.h, align 8, !tbaa !3453
  %.not.i.i.i.i = icmp eq i32 %i.aj, 0
  %i.ak = load ptr, ptr %i.j, align 8
  %spec.select.i.i.i.i = select i1 %.not.i.i.i.i, ptr @_hb_NullPool, ptr %i.ak, !prof !48
  %.val = load ptr, ptr %0, align 8, !tbaa !6015
  %.val1 = load ptr, ptr %i.k, align 8, !tbaa !6017
  %.val.val = load ptr, ptr %.val, align 8, !tbaa !1795 ; 4 uses
  %.val1.val = load ptr, ptr %.val1, align 8, !tbaa !1795
  %.val3.val = load i16, ptr %spec.select.i.i.i.i, align 1, !tbaa !62
  %i.al = call noundef i16 @llvm.bswap.i16(i16 %.val3.val)
  %.sroa.4.0.extract.trunc.i.i = zext i16 %i.al to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %.0.i.i.i.i.i, ptr %i.a, align 4, !tbaa !139
  store i32 %.sroa.4.0.extract.trunc.i.i, ptr %i.b, align 4, !tbaa !139
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 0, ptr %i.c, align 4, !tbaa !139
  %i.am = getelementptr inbounds nuw i8, ptr %.val.val, i64 40
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !1417 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i.i, label %"_ZNK4$_33clIRZNK2OT6Layout9GSUB_impl20SingleSubstFormat2_4INS2_10SmallTypesEE24collect_glyph_alternatesEP8hb_map_tS8_EUlRK9hb_pair_tIjjEE_JS9_IjRKNS1_11HBGlyphID16EEEEEDTcl4implclsr3stdE7forwardIT_Efp_Ecv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEEOSJ_DpOSM_.exit", label %bb.i

bb.i:                                             ; preds = %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_11HBGlyphID16EEE9hb_pair_tIjRS8_EEdeEv.exit
  %i.ao = mul i32 %.0.i.i.i.i.i, 506952113
  %i.ap = and i32 %i.ao, 1073741823
  %i.aq = getelementptr inbounds nuw i8, ptr %.val.val, i64 32
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !1418
  %i.as = urem i32 %i.ap, %i.ar                   ; 2 uses
  %i.at = zext nneg i32 %i.as to i64              ; 2 uses
  %i.au = getelementptr inbounds nuw [12 x i8], ptr %i.an, i64 %i.at ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.aw = load i32, ptr %i.av, align 4            ; 2 uses
  %i.ax = and i32 %i.aw, 2
  %.not15.i.i.i.i.i.i.i = icmp eq i32 %i.ax, 0
  br i1 %.not15.i.i.i.i.i.i.i, label %"_ZNK4$_33clIRZNK2OT6Layout9GSUB_impl20SingleSubstFormat2_4INS2_10SmallTypesEE24collect_glyph_alternatesEP8hb_map_tS8_EUlRK9hb_pair_tIjjEE_JS9_IjRKNS1_11HBGlyphID16EEEEEDTcl4implclsr3stdE7forwardIT_Efp_Ecv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEEOSJ_DpOSM_.exit", label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.val.val, i64 28
  %i.az = load i32, ptr %i.ay, align 4
  %i.ba = load i32, ptr %i.au, align 4, !tbaa !139
  %i.bb = icmp eq i32 %i.ba, %.0.i.i.i.i.i
  br i1 %i.bb, label %_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bc = load i32, ptr %i.bi, align 4, !tbaa !139
  %i.bd = icmp eq i32 %i.bc, %.0.i.i.i.i.i
  br i1 %i.bd, label %_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1419

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.j
  %.01016.i20.i.i.i.i.i.i = phi i32 [ %i.bg, %bb.j ], [ %i.as, %.lr.ph.i.i.i.i.i.i.i ]
  %.017.i19.i.i.i.i.i.i = phi i32 [ %i.be, %bb.j ], [ 0, %.lr.ph.i.i.i.i.i.i.i ]
  %i.be = add i32 %.017.i19.i.i.i.i.i.i, 1        ; 2 uses
  %i.bf = add i32 %i.be, %.01016.i20.i.i.i.i.i.i
  %i.bg = and i32 %i.bf, %i.az                    ; 2 uses
  %i.bh = zext i32 %i.bg to i64                   ; 2 uses
  %i.bi = getelementptr inbounds nuw [12 x i8], ptr %i.an, i64 %i.bh ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %i.bk = load i32, ptr %i.bj, align 4            ; 2 uses
  %i.bl = and i32 %i.bk, 2
  %.not.i.i.i.i.i.i.i4 = icmp eq i32 %i.bl, 0
  br i1 %.not.i.i.i.i.i.i.i4, label %"_ZNK4$_33clIRZNK2OT6Layout9GSUB_impl20SingleSubstFormat2_4INS2_10SmallTypesEE24collect_glyph_alternatesEP8hb_map_tS8_EUlRK9hb_pair_tIjjEE_JS9_IjRKNS1_11HBGlyphID16EEEEEDTcl4implclsr3stdE7forwardIT_Efp_Ecv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEEOSJ_DpOSM_.exit", label %bb.j, !llvm.loop !1419

_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i.i.i.i.i: ; preds = %bb.j, %.lr.ph.i.i.i.i.i.i.i
  %.lcssa17.i.i.i.i.i.i = phi i32 [ %i.aw, %.lr.ph.i.i.i.i.i.i.i ], [ %i.bk, %bb.j ]
  %i.bm = phi i64 [ %i.at, %.lr.ph.i.i.i.i.i.i.i ], [ %i.bh, %bb.j ]
  %i.bn = trunc i32 %.lcssa17.i.i.i.i.i.i to i1
  br i1 %i.bn, label %bb.k, label %"_ZNK4$_33clIRZNK2OT6Layout9GSUB_impl20SingleSubstFormat2_4INS2_10SmallTypesEE24collect_glyph_alternatesEP8hb_map_tS8_EUlRK9hb_pair_tIjjEE_JS9_IjRKNS1_11HBGlyphID16EEEEEDTcl4implclsr3stdE7forwardIT_Efp_Ecv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEEOSJ_DpOSM_.exit"

bb.k:                                             ; preds = %_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i.i.i.i.i
  %i.bo = getelementptr inbounds nuw [12 x i8], ptr %i.an, i64 %i.bm
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 2 uses
  %.pre.i.i.i.i = load i32, ptr %i.bp, align 4, !tbaa !139
  %i.bq = shl i32 %.pre.i.i.i.i, 24
  %i.br = or i32 %i.bq, %.0.i.i.i.i.i
  br label %"_ZNK4$_33clIRZNK2OT6Layout9GSUB_impl20SingleSubstFormat2_4INS2_10SmallTypesEE24collect_glyph_alternatesEP8hb_map_tS8_EUlRK9hb_pair_tIjjEE_JS9_IjRKNS1_11HBGlyphID16EEEEEDTcl4implclsr3stdE7forwardIT_Efp_Ecv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEEOSJ_DpOSM_.exit"

"_ZNK4$_33clIRZNK2OT6Layout9GSUB_impl20SingleSubstFormat2_4INS2_10SmallTypesEE24collect_glyph_alternatesEP8hb_map_tS8_EUlRK9hb_pair_tIjjEE_JS9_IjRKNS1_11HBGlyphID16EEEEEDTcl4implclsr3stdE7forwardIT_Efp_Ecv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEEOSJ_DpOSM_.exit": ; preds = %.lr.ph.i.i.i.i.i.i, %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_11HBGlyphID16EEE9hb_pair_tIjRS8_EEdeEv.exit, %bb.i, %_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i.i.i.i.i, %bb.k
  %i.bs = phi i32 [ %.0.i.i.i.i.i, %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_11HBGlyphID16EEE9hb_pair_tIjRS8_EEdeEv.exit ], [ %.0.i.i.i.i.i, %bb.i ], [ %i.br, %bb.k ], [ %.0.i.i.i.i.i, %_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i.i.i.i.i ], [ %.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %.0.i.i.i.i = phi ptr [ %i.c, %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_11HBGlyphID16EEE9hb_pair_tIjRS8_EEdeEv.exit ], [ %i.c, %bb.i ], [ %i.bp, %bb.k ], [ %i.c, %_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i.i.i.i.i ], [ %i.c, %.lr.ph.i.i.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #63
  store i32 %i.bs, ptr %i.d, align 4, !tbaa !139
  %i.bt = mul i32 %i.bs, -1640531535
  %i.bu = call noundef zeroext i1 @_ZN12hb_hashmap_tIjjLb1EE13set_with_hashIjRjEEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %.val1.val, ptr noundef nonnull align 4 dereferenceable(4) %i.d, i32 noundef %i.bt, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i1 noundef zeroext true) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #63
end_hunk_5
