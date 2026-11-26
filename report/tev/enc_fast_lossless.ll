Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/enc_fast_lossless?download=true
inline.NumInlined: 4106
inline.NumDeleted: 1186
loop-unroll.NumCompletelyUnrolled: 195
loop-unroll.NumRuntimeUnrolled: 120
loop-unroll.NumUnrolled: 336
begin_hunk_0_@_ZZN22default_implementation12_GLOBAL__N_19LLPrepareINS0_14MoreThan14BitsEEEP25JxlFastLosslessFrameState26JxlChunkedFrameInputSourcemmT_mbiiENKUlmmmE_clEmmm:bb.a

bb.v:                                             ; preds = %bb.u
  %i.adn = add i64 %.sroa.speculated.i.i.i.i, %.sink.i.i55.i
  br label %_ZN22default_implementation12_GLOBAL__N_119ChannelRowProcessorINS0_20ChunkSampleCollectorINS0_14MoreThan14BitsEEES3_E12ProcessChunkEPKiS7_S7_S7_m.exit.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.u, %bb.t
  %i.ado = phi i64 [ 0, %bb.u ], [ %.sink.i.i55.i, %bb.t ]
  %i.adp = add i64 %i.ado, %.sroa.speculated.i.i.i.i ; 2 uses
  %i.adq = icmp ugt i64 %i.adp, 7
  br i1 %i.adq, label %_ZN22default_implementation12_GLOBAL__N_120ChunkSampleCollectorINS0_14MoreThan14BitsEE3RleEmPm.exit.i.i.i.i, label %.lr.ph.i.i.i.i

_ZN22default_implementation12_GLOBAL__N_120ChunkSampleCollectorINS0_14MoreThan14BitsEE3RleEmPm.exit.i.i.i.i: ; preds = %._crit_edge.i.i.i.i
  %i.adr = load ptr, ptr %i.aam, align 8, !tbaa !1325
  %i.ads = load ptr, ptr %i.aal, align 8, !tbaa !1324 ; 5 uses
  %i.adt = load i64, ptr %i.ads, align 8, !tbaa !68
  %i.adu = add i64 %i.adt, 1
  store i64 %i.adu, ptr %i.ads, align 8, !tbaa !68
  %i.adv = trunc i64 %i.adp to i32
  %i.adw = add i32 %i.adv, -8                     ; 3 uses
  %i.adx = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.adw, i1 true)
  %i.ady = icmp ult i32 %i.adw, 16
  %i.adz = sub nuw nsw i32 43, %i.adx
  %i.aea = select i1 %i.ady, i32 %i.adw, i32 %i.adz
  %i.aeb = zext i32 %i.aea to i64
  %i.aec = getelementptr inbounds nuw [8 x i8], ptr %i.adr, i64 %i.aeb ; 2 uses
  %i.aed = load i64, ptr %i.aec, align 8, !tbaa !68
  %i.aee = add i64 %i.aed, 1
  store i64 %i.aee, ptr %i.aec, align 8, !tbaa !68
  br i1 %.not.i.i.i.i, label %.lr.ph61.i.i.i.i.preheader, label %_ZN22default_implementation12_GLOBAL__N_119ChannelRowProcessorINS0_20ChunkSampleCollectorINS0_14MoreThan14BitsEEES3_E12ProcessChunkEPKiS7_S7_S7_m.exit.i.i.i

.lr.ph61.i.i.i.i.preheader:                       ; preds = %_ZN22default_implementation12_GLOBAL__N_120ChunkSampleCollectorINS0_14MoreThan14BitsEE3RleEmPm.exit.i.i.i.i
  %.neg = add nuw nsw i64 %.sroa.speculated.i.i.i.i, 1
  %xtraiter543 = and i64 %.sroa.speculated.i.i.i.i, 1
  %lcmp.mod544.not = icmp eq i64 %xtraiter543, 0
  br i1 %lcmp.mod544.not, label %.lr.ph61.i.i.i.i.prol.loopexit, label %.lr.ph61.i.i.i.i.prol

.lr.ph61.i.i.i.i.prol:                            ; preds = %.lr.ph61.i.i.i.i.preheader
  %i.aef = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.speculated.i.i.i.i
  %i.aeg = load i32, ptr %i.aef, align 4, !tbaa !94
  %i.aeh = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.aeg, i1 false)
  %i.aei = sub nuw nsw i32 32, %i.aeh
  %i.aej = zext nneg i32 %i.aei to i64
  %i.aek = getelementptr inbounds nuw [8 x i8], ptr %i.ads, i64 %i.aej ; 2 uses
  %i.ael = load i64, ptr %i.aek, align 8, !tbaa !68
  %i.aem = add i64 %i.ael, 1
  store i64 %i.aem, ptr %i.aek, align 8, !tbaa !68
  %i.aen = add nuw nsw i64 %.sroa.speculated.i.i.i.i, 1
  br label %.lr.ph61.i.i.i.i.prol.loopexit

.lr.ph61.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph61.i.i.i.i.prol, %.lr.ph61.i.i.i.i.preheader
  %.0.i3960.i.i.i.i.unr = phi i64 [ %.sroa.speculated.i.i.i.i, %.lr.ph61.i.i.i.i.preheader ], [ %i.aen, %.lr.ph61.i.i.i.i.prol ]
  %i.aeo = icmp eq i64 %.sroa.speculated.i.i.i, %.neg
  br i1 %i.aeo, label %_ZN22default_implementation12_GLOBAL__N_119ChannelRowProcessorINS0_20ChunkSampleCollectorINS0_14MoreThan14BitsEEES3_E12ProcessChunkEPKiS7_S7_S7_m.exit.i.i.i, label %.lr.ph61.i.i.i.i

.lr.ph61.i.i.i.i:                                 ; preds = %.lr.ph61.i.i.i.i.prol.loopexit, %.lr.ph61.i.i.i.i
  %.0.i3960.i.i.i.i = phi i64 [ %i.afg, %.lr.ph61.i.i.i.i ], [ %.0.i3960.i.i.i.i.unr, %.lr.ph61.i.i.i.i.prol.loopexit ] ; 3 uses
  %i.aep = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0.i3960.i.i.i.i
  %i.aeq = load i32, ptr %i.aep, align 4, !tbaa !94
  %i.aer = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.aeq, i1 false)
  %i.aes = sub nuw nsw i32 32, %i.aer
  %i.aet = zext nneg i32 %i.aes to i64
  %i.aeu = getelementptr inbounds nuw [8 x i8], ptr %i.ads, i64 %i.aet ; 2 uses
  %i.aev = load i64, ptr %i.aeu, align 8, !tbaa !68
  %i.aew = add i64 %i.aev, 1
  store i64 %i.aew, ptr %i.aeu, align 8, !tbaa !68
  %i.aex = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0.i3960.i.i.i.i
  %i.aey = getelementptr inbounds nuw i8, ptr %i.aex, i64 4
  %i.aez = load i32, ptr %i.aey, align 4, !tbaa !94
  %i.afa = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.aez, i1 false)
  %i.afb = sub nuw nsw i32 32, %i.afa
  %i.afc = zext nneg i32 %i.afb to i64
  %i.afd = getelementptr inbounds nuw [8 x i8], ptr %i.ads, i64 %i.afc ; 2 uses
  %i.afe = load i64, ptr %i.afd, align 8, !tbaa !68
  %i.aff = add i64 %i.afe, 1
  store i64 %i.aff, ptr %i.afd, align 8, !tbaa !68
  %i.afg = add nuw nsw i64 %.0.i3960.i.i.i.i, 2   ; 2 uses
  %exitcond63.not.i.i.i.i.1 = icmp eq i64 %i.afg, %.sroa.speculated.i.i.i
  br i1 %exitcond63.not.i.i.i.i.1, label %_ZN22default_implementation12_GLOBAL__N_119ChannelRowProcessorINS0_20ChunkSampleCollectorINS0_14MoreThan14BitsEEES3_E12ProcessChunkEPKiS7_S7_S7_m.exit.i.i.i, label %.lr.ph61.i.i.i.i, !llvm.loop !1303

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge.i.i.i.i
  %i.afh = load ptr, ptr %i.aal, align 8, !tbaa !1324 ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %.lr.ph.i.i.i.i
  %.0.i59.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.afz, %bb.w ] ; 3 uses
  %i.afi = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0.i59.i.i.i.i
  %i.afj = load i32, ptr %i.afi, align 8, !tbaa !94
  %i.afk = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.afj, i1 false)
  %i.afl = sub nuw nsw i32 32, %i.afk
  %i.afm = zext nneg i32 %i.afl to i64
  %i.afn = getelementptr inbounds nuw [8 x i8], ptr %i.afh, i64 %i.afm ; 2 uses
  %i.afo = load i64, ptr %i.afn, align 8, !tbaa !68
  %i.afp = add i64 %i.afo, 1
  store i64 %i.afp, ptr %i.afn, align 8, !tbaa !68
  %i.afq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0.i59.i.i.i.i
  %i.afr = getelementptr inbounds nuw i8, ptr %i.afq, i64 4
  %i.afs = load i32, ptr %i.afr, align 4, !tbaa !94
  %i.aft = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.afs, i1 false)
  %i.afu = sub nuw nsw i32 32, %i.aft
  %i.afv = zext nneg i32 %i.afu to i64
  %i.afw = getelementptr inbounds nuw [8 x i8], ptr %i.afh, i64 %i.afv ; 2 uses
  %i.afx = load i64, ptr %i.afw, align 8, !tbaa !68
  %i.afy = add i64 %i.afx, 1
  store i64 %i.afy, ptr %i.afw, align 8, !tbaa !68
  %i.afz = add nuw nsw i64 %.0.i59.i.i.i.i, 2     ; 2 uses
  %exitcond.not.i.i.i.i.1 = icmp eq i64 %i.afz, %.sroa.speculated.i.i.i
  br i1 %exitcond.not.i.i.i.i.1, label %_ZN22default_implementation12_GLOBAL__N_119ChannelRowProcessorINS0_20ChunkSampleCollectorINS0_14MoreThan14BitsEEES3_E12ProcessChunkEPKiS7_S7_S7_m.exit.i.i.i, label %bb.w, !llvm.loop !1303

_ZN22default_implementation12_GLOBAL__N_119ChannelRowProcessorINS0_20ChunkSampleCollectorINS0_14MoreThan14BitsEEES3_E12ProcessChunkEPKiS7_S7_S7_m.exit.i.i.i: ; preds = %bb.w, %.lr.ph61.i.i.i.i.prol.loopexit, %.lr.ph61.i.i.i.i, %_ZN22default_implementation12_GLOBAL__N_120ChunkSampleCollectorINS0_14MoreThan14BitsEE3RleEmPm.exit.i.i.i.i, %bb.v
  %.sink.i.i54.i = phi i64 [ 0, %.lr.ph61.i.i.i.i.prol.loopexit ], [ %i.adn, %bb.v ], [ 0, %_ZN22default_implementation12_GLOBAL__N_120ChunkSampleCollectorINS0_14MoreThan14BitsEE3RleEmPm.exit.i.i.i.i ], [ 0, %.lr.ph61.i.i.i.i ], [ %.sink.i.i55.i, %bb.w ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %i.aga = add nuw nsw i64 %.015.i113.i.i, 8      ; 2 uses
  %i.agb = icmp samesign ult i64 %i.aga, %i.aa
  br i1 %i.agb, label %bb.t, label %_ZN22default_implementation12_GLOBAL__N_119ChannelRowProcessorINS0_20ChunkSampleCollectorINS0_14MoreThan14BitsEEES3_E10ProcessRowEPKiS7_S7_S7_m.exit.loopexit.i.i, !llvm.loop !1304

_ZN22default_implementation12_GLOBAL__N_119ChannelRowProcessorINS0_20ChunkSampleCollectorINS0_14MoreThan14BitsEEES3_E10ProcessRowEPKiS7_S7_S7_m.exit.loopexit.i.i: ; preds = %_ZN22default_implementation12_GLOBAL__N_119ChannelRowProcessorINS0_20ChunkSampleCollectorINS0_14MoreThan14BitsEEES3_E12ProcessChunkEPKiS7_S7_S7_m.exit.i.i.i
  store i64 %.sink.i.i54.i, ptr %.phi.trans.insert.i.i.i.i, align 8
  %i.agc = add nuw nsw i64 %.075127.i.i, 1        ; 2 uses
  %exitcond145.not.i.i = icmp eq i64 %i.agc, %i.ar
  br i1 %exitcond145.not.i.i, label %.loopexit.i.i, label %.lr.ph.i112.i.i, !llvm.loop !1305

.loopexit.i.i:                                    ; preds = %_ZN22default_implementation12_GLOBAL__N_119ChannelRowProcessorINS0_20ChunkSampleCollectorINS0_14MoreThan14BitsEEES3_E10ProcessRowEPKiS7_S7_S7_m.exit.loopexit.i.i, %._crit_edge126.i.i, %_ZN22default_implementation12_GLOBAL__N_110FillRowG16ILb1EiEEvPKhmPT0_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  %i.agd = add nuw i64 %.078129.i.i, 1
  %exitcond146.not.i.i = icmp eq i64 %.078129.i.i, %i.ac
  br i1 %exitcond146.not.i.i, label %.preheader.i.i, label %bb.c, !llvm.loop !1306

bb.x:                                             ; preds = %.preheader.i.i
  %i.age = ptrtoint ptr %.sroa.0.0 to i64
  %i.agf = sub i64 %.sroa.8.0, %i.age
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0, i64 noundef %i.agf) #39
  br label %_ZN22default_implementation12_GLOBAL__N_116ProcessImageAreaINS0_19ChannelRowProcessorINS0_20ChunkSampleCollectorINS0_14MoreThan14BitsEEES4_EES4_EEvPKhmmmmmmT0_mbPT_.exit.i

_ZN22default_implementation12_GLOBAL__N_116ProcessImageAreaINS0_19ChannelRowProcessorINS0_20ChunkSampleCollectorINS0_14MoreThan14BitsEEES4_EES4_EEvPKhmmmmmmT0_mbPT_.exit.i: ; preds = %bb.x, %.preheader.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  br label %_ZN22default_implementation12_GLOBAL__N_114CollectSamplesINS0_14MoreThan14BitsEEEvPKhmmmmmPA19_mPA33_mbbT_mbPKs.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.03953.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.agr, %.lr.ph.i ] ; 6 uses
  %niter536 = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter536.next.1, %.lr.ph.i ]
  %i.agg = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %.03953.i ; 3 uses
  %i.agh = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %.03953.i
  store ptr %i.agg, ptr %i.agh, align 16, !tbaa !1322
  %i.agi = getelementptr inbounds nuw [152 x i8], ptr %i.ae, i64 %.03953.i
  store ptr %i.agi, ptr %i.agg, align 16, !tbaa !1324
  %i.agj = getelementptr inbounds nuw [264 x i8], ptr %i.ag, i64 %.03953.i
  %i.agk = getelementptr inbounds nuw i8, ptr %i.agg, i64 8
  store ptr %i.agj, ptr %i.agk, align 8, !tbaa !1325
  %i.agl = or disjoint i64 %.03953.i, 1           ; 4 uses
  %i.agm = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %i.agl ; 3 uses
  %i.agn = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %i.agl
  store ptr %i.agm, ptr %i.agn, align 16, !tbaa !1322
  %i.ago = getelementptr inbounds nuw [152 x i8], ptr %i.ae, i64 %i.agl
  store ptr %i.ago, ptr %i.agm, align 16, !tbaa !1324
  %i.agp = getelementptr inbounds nuw [264 x i8], ptr %i.ag, i64 %i.agl
  %i.agq = getelementptr inbounds nuw i8, ptr %i.agm, i64 8
  store ptr %i.agp, ptr %i.agq, align 8, !tbaa !1325
  %i.agr = add nuw nsw i64 %.03953.i, 2           ; 2 uses
  %niter536.next.1 = add nuw i64 %niter536, 2     ; 2 uses
  %niter536.ncmp.1 = icmp eq i64 %niter536.next.1, %unroll_iter535
  br i1 %niter536.ncmp.1, label %_ZNSt3__16vectorINS_5arrayINS1_IiLm336EEELm2EEENS_9allocatorIS3_EEE18__construct_at_endEm.exit.i.i.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !1307

_ZN22default_implementation12_GLOBAL__N_114CollectSamplesINS0_14MoreThan14BitsEEEvPKhmmmmmPA19_mPA33_mbbT_mbPKs.exit: ; preds = %._crit_edge58.i, %_ZN22default_implementation12_GLOBAL__N_116ProcessImageAreaINS0_19ChannelRowProcessorINS0_20ChunkSampleCollectorINS0_14MoreThan14BitsEEES4_EES4_EEvPKhmmmmmmT0_mbPT_.exit.i
  %i.ags = load ptr, ptr %i.n, align 8, !tbaa !1311, !nonnull !121, !align !176 ; 2 uses
  %i.agt = getelementptr inbounds nuw i8, ptr %i.ags, i64 40
  %i.agu = load ptr, ptr %i.agt, align 8, !tbaa !107
  %i.agv = load ptr, ptr %i.ags, align 8, !tbaa !106
  call void %i.agu(ptr noundef %i.agv, ptr noundef %i.s) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #37
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @"_ZZ27JxlFastLosslessProcessFrameEN3$_08__invokeEPvS0_PFvS0_mEm"(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #5 align 2 {
bb.a:
  %.not.i = icmp eq i64 %3, 0
  br i1 %.not.i, label %"_ZZ27JxlFastLosslessProcessFrameENK3$_0clEPvS0_PFvS0_mEm.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.01.i = phi i64 [ %i.a, %.lr.ph.i ], [ 0, %bb.a ] ; 2 uses
  tail call void %2(ptr noundef %1, i64 noundef %.01.i) #36, !inline_history !1366
  %i.a = add nuw i64 %.01.i, 1                    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.a, %3
  br i1 %exitcond.not.i, label %"_ZZ27JxlFastLosslessProcessFrameENK3$_0clEPvS0_PFvS0_mEm.exit", label %.lr.ph.i, !llvm.loop !1367

"_ZZ27JxlFastLosslessProcessFrameENK3$_0clEPvS0_PFvS0_mEm.exit": ; preds = %.lr.ph.i, %bb.a
  ret void
}

declare i32 @_ZN32JxlEncoderOutputProcessorWrapper4SeekEm(ptr noundef nonnull align 8 dereferenceable(88), i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNSt3__16vectorINS_5arrayIN12_GLOBAL__N_19BitWriterELm4EEENS_9allocatorIS4_EEE6resizeEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !47    ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %.val9 = load ptr, ptr %i.a, align 8, !tbaa !48 ; 14 uses
  %i.b = ptrtoint ptr %.val9 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = sdiv exact i64 %i.d, 160
  switch i64 %i.e, label %bb.h [
    i64 0, label %bb.b
    i64 1, label %_ZNSt3__16vectorINS_5arrayIN12_GLOBAL__N_19BitWriterELm4EEENS_9allocatorIS4_EEE8__appendEm.exit
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !89
  %.not.i = icmp eq ptr %i.g, %.val9
  br i1 %.not.i, label %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_5arrayIN12_GLOBAL__N_19BitWriterELm4EEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS9_m.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.val9, i64 8
  store i64 0, ptr %.val9, align 8
  store ptr @free, ptr %i.h, align 8, !tbaa !120
  %i.i = getelementptr inbounds nuw i8, ptr %.val9, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %.val9, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i8 0, i64 32, i1 false)
  store ptr @free, ptr %i.j, align 8, !tbaa !120
  %i.k = getelementptr inbounds nuw i8, ptr %.val9, i64 56
  %i.l = getelementptr inbounds nuw i8, ptr %.val9, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, i8 0, i64 32, i1 false)
  store ptr @free, ptr %i.l, align 8, !tbaa !120
  %i.m = getelementptr inbounds nuw i8, ptr %.val9, i64 96
  %i.n = getelementptr inbounds nuw i8, ptr %.val9, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, i8 0, i64 32, i1 false)
  store ptr @free, ptr %i.n, align 8, !tbaa !120
  %i.o = getelementptr inbounds nuw i8, ptr %.val9, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, i8 0, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %.val9, i64 160
  store ptr %i.p, ptr %i.a, align 8, !tbaa !48
  br label %_ZNSt3__16vectorINS_5arrayIN12_GLOBAL__N_19BitWriterELm4EEENS_9allocatorIS4_EEE8__appendEm.exit

_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_5arrayIN12_GLOBAL__N_19BitWriterELm4EEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS9_m.exit.i.i: ; preds = %bb.b
  %i.q = tail call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #40 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.d ; 12 uses
  %1 = getelementptr inbounds nuw i8, ptr %i.q, i64 160 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 0, ptr %i.r, align 8
  store ptr @free, ptr %i.s, align 8, !tbaa !120
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.t, i8 0, i64 32, i1 false)
  store ptr @free, ptr %i.u, align 8, !tbaa !120
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.v, i8 0, i64 32, i1 false)
  store ptr @free, ptr %i.w, align 8, !tbaa !120
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 96
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.x, i8 0, i64 32, i1 false)
  store ptr @free, ptr %i.y, align 8, !tbaa !120
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, i8 0, i64 24, i1 false)
  %.sroa.0.0.ptr.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 160 ; 2 uses
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !48  ; 3 uses
  %i.ab = load ptr, ptr %0, align 8, !tbaa !47    ; 6 uses
  %.not14.i.i.i = icmp eq ptr %i.aa, %i.ab
  br i1 %.not14.i.i.i, label %_ZNSt3__16vectorINS_5arrayIN12_GLOBAL__N_19BitWriterELm4EEENS_9allocatorIS4_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS4_RS6_EE.exit.thread.i, label %.lr.ph.i.i.i

_ZNSt3__16vectorINS_5arrayIN12_GLOBAL__N_19BitWriterELm4EEENS_9allocatorIS4_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS4_RS6_EE.exit.thread.i: ; preds = %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_5arrayIN12_GLOBAL__N_19BitWriterELm4EEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS9_m.exit.i.i
  store ptr %i.r, ptr %0, align 8, !tbaa !89
  store ptr %.sroa.0.0.ptr.i.i, ptr %i.a, align 8, !tbaa !89
  %i.ac = load ptr, ptr %i.f, align 8, !tbaa !89
  store ptr %1, ptr %i.f, align 8, !tbaa !89
  br label %_ZNSt3__114__split_bufferINS_5arrayIN12_GLOBAL__N_19BitWriterELm4EEERNS_9allocatorIS4_EEE5clearB8nn180100Ev.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_5arrayIN12_GLOBAL__N_19BitWriterELm4EEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS9_m.exit.i.i, %.lr.ph.i.i.i
  %.val416.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i ], [ %i.r, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_5arrayIN12_GLOBAL__N_19BitWriterELm4EEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS9_m.exit.i.i ] ; 12 uses
  %.sroa.111.015.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i ], [ %i.aa, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_5arrayIN12_GLOBAL__N_19BitWriterELm4EEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS9_m.exit.i.i ] ; 12 uses
  %i.ad = getelementptr inbounds i8, ptr %.val416.i.i.i, i64 -160 ; 3 uses
  %i.ae = getelementptr inbounds i8, ptr %.sroa.111.015.i.i.i, i64 -160 ; 4 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !71
  store ptr null, ptr %i.ae, align 8, !tbaa !71
  %i.ag = getelementptr inbounds i8, ptr %.sroa.111.015.i.i.i, i64 -152
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !1372
  %i.ah = getelementptr inbounds i8, ptr %.val416.i.i.i, i64 -152
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !72
  store ptr %i.ai, ptr %i.ah, align 8, !tbaa !120
  %i.aj = getelementptr inbounds i8, ptr %.val416.i.i.i, i64 -144
  %i.ak = getelementptr inbounds i8, ptr %.sroa.111.015.i.i.i, i64 -144
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i64 24, i1 false)
  %i.al = getelementptr inbounds i8, ptr %.val416.i.i.i, i64 -120
  %i.am = getelementptr inbounds i8, ptr %.sroa.111.015.i.i.i, i64 -120 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !71
  store ptr null, ptr %i.am, align 8, !tbaa !71
  %i.ao = getelementptr inbounds i8, ptr %.sroa.111.015.i.i.i, i64 -112
  store ptr %i.an, ptr %i.al, align 8, !tbaa !1372
  %i.ap = getelementptr inbounds i8, ptr %.val416.i.i.i, i64 -112
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !72
  store ptr %i.aq, ptr %i.ap, align 8, !tbaa !120
  %i.ar = getelementptr inbounds i8, ptr %.val416.i.i.i, i64 -104
  %i.as = getelementptr inbounds i8, ptr %.sroa.111.015.i.i.i, i64 -104
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %i.as, i64 24, i1 false)
  %i.at = getelementptr inbounds i8, ptr %.val416.i.i.i, i64 -80
  %i.au = getelementptr inbounds i8, ptr %.sroa.111.015.i.i.i, i64 -80 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !71
  store ptr null, ptr %i.au, align 8, !tbaa !71
  %i.aw = getelementptr inbounds i8, ptr %.sroa.111.015.i.i.i, i64 -72
  store ptr %i.av, ptr %i.at, align 8, !tbaa !1372
  %i.ax = getelementptr inbounds i8, ptr %.val416.i.i.i, i64 -72
  %i.ay = load ptr, ptr %i.aw, align 8, !tbaa !72
  store ptr %i.ay, ptr %i.ax, align 8, !tbaa !120
  %i.az = getelementptr inbounds i8, ptr %.val416.i.i.i, i64 -64
  %i.ba = getelementptr inbounds i8, ptr %.sroa.111.015.i.i.i, i64 -64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.az, ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i64 24, i1 false)
  %i.bb = getelementptr inbounds i8, ptr %.val416.i.i.i, i64 -40
  %i.bc = getelementptr inbounds i8, ptr %.sroa.111.015.i.i.i, i64 -40 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !71
  store ptr null, ptr %i.bc, align 8, !tbaa !71
  %i.be = getelementptr inbounds i8, ptr %.sroa.111.015.i.i.i, i64 -32
  store ptr %i.bd, ptr %i.bb, align 8, !tbaa !1372
  %i.bf = getelementptr inbounds i8, ptr %.val416.i.i.i, i64 -32
  %i.bg = load ptr, ptr %i.be, align 8, !tbaa !72
  store ptr %i.bg, ptr %i.bf, align 8, !tbaa !120
  %i.bh = getelementptr inbounds i8, ptr %.val416.i.i.i, i64 -24
  %i.bi = getelementptr inbounds i8, ptr %.sroa.111.015.i.i.i, i64 -24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, ptr noundef nonnull align 8 dereferenceable(24) %i.bi, i64 24, i1 false)
  %.not.i.i.i = icmp eq ptr %i.ae, %i.ab
  br i1 %.not.i.i.i, label %_ZNSt3__16vectorINS_5arrayIN12_GLOBAL__N_19BitWriterELm4EEENS_9allocatorIS4_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS4_RS6_EE.exit.i, label %.lr.ph.i.i.i, !llvm.loop !1368

_ZNSt3__16vectorINS_5arrayIN12_GLOBAL__N_19BitWriterELm4EEENS_9allocatorIS4_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS4_RS6_EE.exit.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ad, ptr %0, align 8, !tbaa !89
  store ptr %.sroa.0.0.ptr.i.i, ptr %i.a, align 8, !tbaa !89
  %i.bj = load ptr, ptr %i.f, align 8, !tbaa !89
  store ptr %1, ptr %i.f, align 8, !tbaa !89
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_5arrayIN12_GLOBAL__N_19BitWriterELm4EEEEEE7destroyB8nn180100IS5_vEEvRS6_PT_.exit.i.i.i.i.i, %_ZNSt3__16vectorINS_5arrayIN12_GLOBAL__N_19BitWriterELm4EEENS_9allocatorIS4_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS4_RS6_EE.exit.i
  %i.bk = phi ptr [ %i.bl, %_ZNSt3__116allocator_traitsINS_9allocatorINS_5arrayIN12_GLOBAL__N_19BitWriterELm4EEEEEE7destroyB8nn180100IS5_vEEvRS6_PT_.exit.i.i.i.i.i ], [ %i.aa, %_ZNSt3__16vectorINS_5arrayIN12_GLOBAL__N_19BitWriterELm4EEENS_9allocatorIS4_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS4_RS6_EE.exit.i ] ; 8 uses
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 -160 ; 4 uses
  %i.bm = getelementptr inbounds i8, ptr %i.bk, i64 -40 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !71 ; 2 uses
  store ptr null, ptr %i.bm, align 8, !tbaa !71
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN12_GLOBAL__N_19BitWriterD2Ev.exit.i.i.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bo = getelementptr inbounds i8, ptr %i.bk, i64 -32
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !72
  tail call void %i.bp(ptr noundef nonnull %i.bn) #36, !inline_history !1369
  br label %_ZN12_GLOBAL__N_19BitWriterD2Ev.exit.i.i.i.i.i.i.i.i

_ZN12_GLOBAL__N_19BitWriterD2Ev.exit.i.i.i.i.i.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %i.bq = getelementptr inbounds i8, ptr %i.bk, i64 -80 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !71 ; 2 uses
  store ptr null, ptr %i.bq, align 8, !tbaa !71
  %.not.i.i.i.1.i.i.i.i.i.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i.1.i.i.i.i.i.i.i.i, label %_ZN12_GLOBAL__N_19BitWriterD2Ev.exit.1.i.i.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZN12_GLOBAL__N_19BitWriterD2Ev.exit.i.i.i.i.i.i.i.i
  %i.bs = getelementptr inbounds i8, ptr %i.bk, i64 -72
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !72
  tail call void %i.bt(ptr noundef nonnull %i.br) #36, !inline_history !1369
  br label %_ZN12_GLOBAL__N_19BitWriterD2Ev.exit.1.i.i.i.i.i.i.i.i

_ZN12_GLOBAL__N_19BitWriterD2Ev.exit.1.i.i.i.i.i.i.i.i: ; preds = %bb.d, %_ZN12_GLOBAL__N_19BitWriterD2Ev.exit.i.i.i.i.i.i.i.i
  %i.bu = getelementptr inbounds i8, ptr %i.bk, i64 -120 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !71 ; 2 uses
  store ptr null, ptr %i.bu, align 8, !tbaa !71
  %.not.i.i.i.2.i.i.i.i.i.i.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i.2.i.i.i.i.i.i.i.i, label %_ZN12_GLOBAL__N_19BitWriterD2Ev.exit.2.i.i.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZN12_GLOBAL__N_19BitWriterD2Ev.exit.1.i.i.i.i.i.i.i.i
  %i.bw = getelementptr inbounds i8, ptr %i.bk, i64 -112
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !72
  tail call void %i.bx(ptr noundef nonnull %i.bv) #36, !inline_history !1369
  br label %_ZN12_GLOBAL__N_19BitWriterD2Ev.exit.2.i.i.i.i.i.i.i.i

_ZN12_GLOBAL__N_19BitWriterD2Ev.exit.2.i.i.i.i.i.i.i.i: ; preds = %bb.e, %_ZN12_GLOBAL__N_19BitWriterD2Ev.exit.1.i.i.i.i.i.i.i.i
  %i.by = load ptr, ptr %i.bl, align 8, !tbaa !71 ; 2 uses
  store ptr null, ptr %i.bl, align 8, !tbaa !71
  %.not.i.i.i.3.i.i.i.i.i.i.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i.3.i.i.i.i.i.i.i.i, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_5arrayIN12_GLOBAL__N_19BitWriterELm4EEEEEE7destroyB8nn180100IS5_vEEvRS6_PT_.exit.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZN12_GLOBAL__N_19BitWriterD2Ev.exit.2.i.i.i.i.i.i.i.i
  %i.bz = getelementptr inbounds i8, ptr %i.bk, i64 -152
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !72
  tail call void %i.ca(ptr noundef nonnull %i.by) #36, !inline_history !1369
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_5arrayIN12_GLOBAL__N_19BitWriterELm4EEEEEE7destroyB8nn180100IS5_vEEvRS6_PT_.exit.i.i.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorINS_5arrayIN12_GLOBAL__N_19BitWriterELm4EEEEEE7destroyB8nn180100IS5_vEEvRS6_PT_.exit.i.i.i.i.i: ; preds = %bb.f, %_ZN12_GLOBAL__N_19BitWriterD2Ev.exit.2.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i = icmp eq ptr %i.ab, %i.bl
  br i1 %.not.i.i.i.i.i, label %_ZNSt3__114__split_bufferINS_5arrayIN12_GLOBAL__N_19BitWriterELm4EEERNS_9allocatorIS4_EEE5clearB8nn180100Ev.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1370

_ZNSt3__114__split_bufferINS_5arrayIN12_GLOBAL__N_19BitWriterELm4EEERNS_9allocatorIS4_EEE5clearB8nn180100Ev.exit.i.i: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_5arrayIN12_GLOBAL__N_19BitWriterELm4EEEEEE7destroyB8nn180100IS5_vEEvRS6_PT_.exit.i.i.i.i.i, %_ZNSt3__16vectorINS_5arrayIN12_GLOBAL__N_19BitWriterELm4EEENS_9allocatorIS4_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS4_RS6_EE.exit.thread.i
  %i.cb = phi ptr [ %i.ac, %_ZNSt3__16vectorINS_5arrayIN12_GLOBAL__N_19BitWriterELm4EEENS_9allocatorIS4_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS4_RS6_EE.exit.thread.i ], [ %i.bj, %_ZNSt3__116allocator_traitsINS_9allocatorINS_5arrayIN12_GLOBAL__N_19BitWriterELm4EEEEEE7destroyB8nn180100IS5_vEEvRS6_PT_.exit.i.i.i.i.i ]
  %.not.i11.i = icmp eq ptr %i.ab, null
  br i1 %.not.i11.i, label %_ZNSt3__16vectorINS_5arrayIN12_GLOBAL__N_19BitWriterELm4EEENS_9allocatorIS4_EEE8__appendEm.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt3__114__split_bufferINS_5arrayIN12_GLOBAL__N_19BitWriterELm4EEERNS_9allocatorIS4_EEE5clearB8nn180100Ev.exit.i.i
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = ptrtoint ptr %i.ab to i64
  %i.ce = sub i64 %i.cc, %i.cd
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.ce) #39
  br label %_ZNSt3__16vectorINS_5arrayIN12_GLOBAL__N_19BitWriterELm4EEENS_9allocatorIS4_EEE8__appendEm.exit

bb.h:                                             ; preds = %bb.a
  %i.cf = getelementptr inbounds nuw i8, ptr %.val, i64 160 ; 3 uses
  %.not6.i.i = icmp eq ptr %i.cf, %.val9
  br i1 %.not6.i.i, label %_ZNSt3__16vectorINS_5arrayIN12_GLOBAL__N_19BitWriterELm4EEENS_9allocatorIS4_EEE17__destruct_at_endB8nn180100EPS4_.exit, label %.lr.ph.i.i10

.lr.ph.i.i10:                                     ; preds = %bb.h, %_ZNSt3__116allocator_traitsINS_9allocatorINS_5arrayIN12_GLOBAL__N_19BitWriterELm4EEEEEE7destroyB8nn180100IS5_vEEvRS6_PT_.exit.i.i
  %.07.i.i = phi ptr [ %i.cg, %_ZNSt3__116allocator_traitsINS_9allocatorINS_5arrayIN12_GLOBAL__N_19BitWriterELm4EEEEEE7destroyB8nn180100IS5_vEEvRS6_PT_.exit.i.i ], [ %.val9, %bb.h ] ; 8 uses
  %i.cg = getelementptr inbounds i8, ptr %.07.i.i, i64 -160 ; 4 uses
  %i.ch = getelementptr inbounds i8, ptr %.07.i.i, i64 -40 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !71 ; 2 uses
  store ptr null, ptr %i.ch, align 8, !tbaa !71
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ci, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN12_GLOBAL__N_19BitWriterD2Ev.exit.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i10
  %i.cj = getelementptr inbounds i8, ptr %.07.i.i, i64 -32
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !72
  tail call void %i.ck(ptr noundef nonnull %i.ci) #36, !inline_history !1371
  br label %_ZN12_GLOBAL__N_19BitWriterD2Ev.exit.i.i.i.i.i

_ZN12_GLOBAL__N_19BitWriterD2Ev.exit.i.i.i.i.i:   ; preds = %bb.i, %.lr.ph.i.i10
  %i.cl = getelementptr inbounds i8, ptr %.07.i.i, i64 -80 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !71 ; 2 uses
  store ptr null, ptr %i.cl, align 8, !tbaa !71
  %.not.i.i.i.1.i.i.i.i.i = icmp eq ptr %i.cm, null
  br i1 %.not.i.i.i.1.i.i.i.i.i, label %_ZN12_GLOBAL__N_19BitWriterD2Ev.exit.1.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %_ZN12_GLOBAL__N_19BitWriterD2Ev.exit.i.i.i.i.i
  %i.cn = getelementptr inbounds i8, ptr %.07.i.i, i64 -72
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !72
  tail call void %i.co(ptr noundef nonnull %i.cm) #36, !inline_history !1371
  br label %_ZN12_GLOBAL__N_19BitWriterD2Ev.exit.1.i.i.i.i.i

_ZN12_GLOBAL__N_19BitWriterD2Ev.exit.1.i.i.i.i.i: ; preds = %bb.j, %_ZN12_GLOBAL__N_19BitWriterD2Ev.exit.i.i.i.i.i
  %i.cp = getelementptr inbounds i8, ptr %.07.i.i, i64 -120 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !71 ; 2 uses
  store ptr null, ptr %i.cp, align 8, !tbaa !71
  %.not.i.i.i.2.i.i.i.i.i = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i.2.i.i.i.i.i, label %_ZN12_GLOBAL__N_19BitWriterD2Ev.exit.2.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZN12_GLOBAL__N_19BitWriterD2Ev.exit.1.i.i.i.i.i
  %i.cr = getelementptr inbounds i8, ptr %.07.i.i, i64 -112
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !72
  tail call void %i.cs(ptr noundef nonnull %i.cq) #36, !inline_history !1371
  br label %_ZN12_GLOBAL__N_19BitWriterD2Ev.exit.2.i.i.i.i.i

_ZN12_GLOBAL__N_19BitWriterD2Ev.exit.2.i.i.i.i.i: ; preds = %bb.k, %_ZN12_GLOBAL__N_19BitWriterD2Ev.exit.1.i.i.i.i.i
  %i.ct = load ptr, ptr %i.cg, align 8, !tbaa !71 ; 2 uses
  store ptr null, ptr %i.cg, align 8, !tbaa !71
  %.not.i.i.i.3.i.i.i.i.i = icmp eq ptr %i.ct, null
  br i1 %.not.i.i.i.3.i.i.i.i.i, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_5arrayIN12_GLOBAL__N_19BitWriterELm4EEEEEE7destroyB8nn180100IS5_vEEvRS6_PT_.exit.i.i, label %bb.l

bb.l:                                             ; preds = %_ZN12_GLOBAL__N_19BitWriterD2Ev.exit.2.i.i.i.i.i
  %i.cu = getelementptr inbounds i8, ptr %.07.i.i, i64 -152
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !72
  tail call void %i.cv(ptr noundef nonnull %i.ct) #36, !inline_history !1371
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_5arrayIN12_GLOBAL__N_19BitWriterELm4EEEEEE7destroyB8nn180100IS5_vEEvRS6_PT_.exit.i.i

_ZNSt3__116allocator_traitsINS_9allocatorINS_5arrayIN12_GLOBAL__N_19BitWriterELm4EEEEEE7destroyB8nn180100IS5_vEEvRS6_PT_.exit.i.i: ; preds = %bb.l, %_ZN12_GLOBAL__N_19BitWriterD2Ev.exit.2.i.i.i.i.i
  %.not.i.i = icmp eq ptr %i.cf, %i.cg
  br i1 %.not.i.i, label %_ZNSt3__16vectorINS_5arrayIN12_GLOBAL__N_19BitWriterELm4EEENS_9allocatorIS4_EEE17__destruct_at_endB8nn180100EPS4_.exit, label %.lr.ph.i.i10, !llvm.loop !1

_ZNSt3__16vectorINS_5arrayIN12_GLOBAL__N_19BitWriterELm4EEENS_9allocatorIS4_EEE17__destruct_at_endB8nn180100EPS4_.exit: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_5arrayIN12_GLOBAL__N_19BitWriterELm4EEEEEE7destroyB8nn180100IS5_vEEvRS6_PT_.exit.i.i, %bb.h
  store ptr %i.cf, ptr %i.a, align 8, !tbaa !48
  br label %_ZNSt3__16vectorINS_5arrayIN12_GLOBAL__N_19BitWriterELm4EEENS_9allocatorIS4_EEE8__appendEm.exit

_ZNSt3__16vectorINS_5arrayIN12_GLOBAL__N_19BitWriterELm4EEENS_9allocatorIS4_EEE8__appendEm.exit: ; preds = %bb.g, %_ZNSt3__114__split_bufferINS_5arrayIN12_GLOBAL__N_19BitWriterELm4EEERNS_9allocatorIS4_EEE5clearB8nn180100Ev.exit.i.i, %.lr.ph.i.i, %bb.a, %_ZNSt3__16vectorINS_5arrayIN12_GLOBAL__N_19BitWriterELm4EEENS_9allocatorIS4_EEE17__destruct_at_endB8nn180100EPS4_.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZZN4AVX212_GLOBAL__N_19LLProcessINS0_9UpTo8BitsEEEN3jxl6StatusEP25JxlFastLosslessFrameStatebT_PvPFvS8_S8_PFvS8_mEmEP32JxlEncoderOutputProcessorWrapperENUlS8_mE_8__invokeES8_m(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) #5 align 2 {
bb.a:
  tail call fastcc void @_ZZN4AVX212_GLOBAL__N_19LLProcessINS0_9UpTo8BitsEEEN3jxl6StatusEP25JxlFastLosslessFrameStatebT_PvPFvS8_S8_PFvS8_mEmEP32JxlEncoderOutputProcessorWrapperENKUlS8_mE_clES8_m(ptr noundef %0, i64 noundef %1) #38
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZZN4AVX212_GLOBAL__N_19LLProcessINS0_9UpTo8BitsEEEN3jxl6StatusEP25JxlFastLosslessFrameStatebT_PvPFvS8_S8_PFvS8_mEmEP32JxlEncoderOutputProcessorWrapperENKUlS8_mE_clES8_m(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) unnamed_addr #12 align 2 {
bb.a:
  %i.a = alloca [4 x ptr], align 16               ; 17 uses
  %i.b = alloca [4 x ptr], align 16               ; 13 uses
  %2 = alloca [4 x %"struct.AVX2::(anonymous namespace)::ChunkEncoder"], align 64 ; 11 uses
  %3 = alloca [4 x %"struct.AVX2::(anonymous namespace)::ChannelRowProcessor.87"], align 16 ; 9 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !1418, !nonnull !121, !align !176
  %i.e = load i64, ptr %i.d, align 8, !tbaa !68
  %i.f = add i64 %i.e, %1                         ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1419, !nonnull !121, !align !176
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !151  ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.k = load i64, ptr %i.j, align 8, !tbaa !125  ; 2 uses
  %i.l = urem i64 %i.f, %i.k
  %i.m = udiv i64 %i.f, %i.k
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %i.o = load i64, ptr %i.n, align 8, !tbaa !127
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %i.q = load i64, ptr %i.p, align 8, !tbaa !128
  %i.r = mul i64 %i.q, %i.o
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1420, !nonnull !121
  %i.u = load i8, ptr %i.t, align 1, !tbaa !95, !range !108, !noundef !121
  %i.v = trunc nuw i8 %i.u to i1
  %i.w = add i64 %i.f, 2
  %i.x = add i64 %i.w, %i.r
  %i.y = select i1 %i.v, i64 0, i64 %i.x          ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !123 ; 2 uses
  %i.ab = shl i64 %i.l, 8                         ; 3 uses
  %i.ac = sub i64 %i.aa, %i.ab                    ; 2 uses
  %.sroa.speculated35.i = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 256) ; 38 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !124 ; 2 uses
  %i.af = shl i64 %i.m, 8                         ; 3 uses
  %i.ag = sub i64 %i.ae, %i.af
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.ag, i64 256) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37
  %.sroa.07.0.copyload.i = load ptr, ptr %i.i, align 8, !tbaa !72 ; 2 uses
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.59.0.copyload.i = load ptr, ptr %.sroa.59.0..sroa_idx.i, align 8, !tbaa !72
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %.sroa.610.0.copyload.i = load ptr, ptr %.sroa.610.0..sroa_idx.i, align 8, !tbaa !72
  %i.ah = call noundef ptr %.sroa.59.0.copyload.i(ptr noundef %.sroa.07.0.copyload.i, i64 noundef %i.ab, i64 noundef %i.af, i64 noundef %.sroa.speculated35.i, i64 noundef %.sroa.speculated.i, ptr noundef nonnull %i.c) #36, !inline_history !1373 ; 11 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1421, !nonnull !121
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !95, !range !108, !noundef !121
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.b, label %bb.c
end_hunk_0
