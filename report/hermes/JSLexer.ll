inline.NumInlined: 2539
inline.NumDeleted: 512
begin_hunk_0_@_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE:bb.a
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %.sroa.0248.0 = phi ptr [ undef, %bb.a ], [ %.sroa.0248.1, %.backedge ] ; 16 uses
  %i.ai = load ptr, ptr %i.h, align 8, !tbaa !19  ; 133 uses
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !66
  switch i8 %i.aj, label %_ZN6hermes6parser12_GLOBAL__N_133matchUnicodeLineTerminatorOffset1EPKc.exit.thread [
end_hunk_0
begin_hunk_1_@_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE:bb.a
  br label %.backedge

.backedge:                                        ; preds = %.critedge, %bb.ey, %_ZN6hermes6parser7JSLexer10errorRangeEN4llvh5SMLocERKNS2_5TwineE.exit107, %_ZN6hermes6parser7JSLexer10errorRangeEN4llvh5SMLocERKNS2_5TwineE.exit97, %bb.g, %bb.bw, %bb.by, %bb.bz, %bb.cb, %bb.ce, %bb.cg, %bb.ch, %bb.cp, %_ZN6hermes6parser7JSLexer10errorRangeEN4llvh5SMLocERKNS2_5TwineE.exit, %_ZN6hermes6parser7JSLexer21scanPrivateIdentifierEv.exit, %bb.el
  %.sroa.0248.1 = phi ptr [ %.sroa.0248.0, %bb.ey ], [ %i.mi, %_ZN6hermes6parser7JSLexer10errorRangeEN4llvh5SMLocERKNS2_5TwineE.exit97 ], [ %.sroa.0248.0, %_ZN6hermes6parser7JSLexer10errorRangeEN4llvh5SMLocERKNS2_5TwineE.exit107 ], [ %.sroa.0248.0, %bb.g ], [ %.sroa.0248.0, %bb.bw ], [ %.sroa.0248.0, %bb.by ], [ %.sroa.0248.0, %bb.bz ], [ %.sroa.0248.0, %bb.el ], [ %.sroa.0248.0, %bb.cb ], [ %.sroa.0248.0, %bb.ce ], [ %.sroa.0248.0, %bb.cg ], [ %.sroa.0248.0, %bb.ch ], [ %.sroa.0248.0, %bb.cp ], [ %.sroa.0248.0, %_ZN6hermes6parser7JSLexer21scanPrivateIdentifierEv.exit ], [ %.sroa.0248.0, %_ZN6hermes6parser7JSLexer10errorRangeEN4llvh5SMLocERKNS2_5TwineE.exit ], [ %.sroa.0248.0, %.critedge ]
  br label %bb.b, !llvm.loop !126

bb.h:                                             ; preds = %bb.b
end_hunk_1
begin_hunk_2_@_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE:bb.a
_ZN4llvhplERKNS_5TwineES2_.exit95:                ; preds = %bb.ez
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  %11 = ptrtoint ptr %.sroa.0248.0 to i64
  %.sroa.0248.0.insert.mask = and i64 %11, -256
  %.sroa.0248.0.insert.insert = or disjoint i64 %.sroa.0248.0.insert.mask, %.sroa.0248.0.insert.ext
  %i.mi = inttoptr i64 %.sroa.0248.0.insert.insert to ptr ; 2 uses
  store ptr @.str.49, ptr %9, align 8, !tbaa !66, !alias.scope !150
  store ptr %i.mi, ptr %i.ac, align 8, !tbaa !66, !alias.scope !150
  store i8 3, ptr %i.ad, align 8, !tbaa !71, !alias.scope !150
end_hunk_2
begin_hunk_3_@_ZN6hermes6parser7JSLexer28consumeUnicodeEscapeOptionalEv:bb.a

_ZN6hermes6parser7JSLexer10consumeHexEjb.exit:    ; preds = %bb.g, %.critedge.i.3, %bb.a, %bb.c, %bb.s, %bb.p, %bb.m, %bb.k, %_ZN6hermes6parser7JSLexer10consumeHexEjb.exit.sink.split, %_ZN6hermes6parser7JSLexer22consumeBracedCodePointEb.exit
  %storemerge = phi ptr [ %i.aa, %_ZN6hermes6parser7JSLexer22consumeBracedCodePointEb.exit ], [ %i.bk, %.critedge.i.3 ], [ %i.b, %bb.a ], [ %i.b, %bb.k ], [ %i.b, %bb.c ], [ %i.b, %bb.s ], [ %i.b, %bb.p ], [ %i.b, %bb.m ], [ %i.b, %_ZN6hermes6parser7JSLexer10consumeHexEjb.exit.sink.split ], [ %i.b, %bb.g ]
  %.sroa.011.2 = phi i32 [ %.1.ph.us.i, %_ZN6hermes6parser7JSLexer22consumeBracedCodePointEb.exit ], [ %i.bj, %.critedge.i.3 ], [ undef, %bb.a ], [ 0, %bb.k ], [ 0, %bb.c ], [ 0, %bb.s ], [ 0, %bb.p ], [ 0, %bb.m ], [ 0, %_ZN6hermes6parser7JSLexer10consumeHexEjb.exit.sink.split ], [ 0, %bb.g ]
  %.sroa.3.2 = phi i64 [ 4294967296, %_ZN6hermes6parser7JSLexer22consumeBracedCodePointEb.exit ], [ 4294967296, %.critedge.i.3 ], [ 0, %bb.a ], [ 0, %bb.k ], [ 0, %bb.c ], [ 0, %bb.s ], [ 0, %bb.p ], [ 0, %bb.m ], [ 0, %_ZN6hermes6parser7JSLexer10consumeHexEjb.exit.sink.split ], [ 0, %bb.g ]
  store ptr %storemerge, ptr %i.a, align 8, !tbaa !19
  %.sroa.011.0.insert.ext = zext i32 %.sroa.011.2 to i64
  %.sroa.011.0.insert.insert = or disjoint i64 %.sroa.3.2, %.sroa.011.0.insert.ext
end_hunk_3
begin_hunk_4_@_ZN6hermes17parseIntWithRadixILb1EN4llvh8ArrayRefIcEEEENS_8OptValueIdEET0_i:bb.a

.outer:                                           ; preds = %.outer.backedge, %.preheader
  %.072.ph = phi double [ 0.000000e+00, %.preheader ], [ %.072.ph.be, %.outer.backedge ] ; 9 uses
  %.057.ph = phi i8 [ 0, %.preheader ], [ %.057.ph.be, %.outer.backedge ] ; 8 uses
  %.055.ph = phi i8 [ 0, %.preheader ], [ %.055.ph.be, %.outer.backedge ] ; 9 uses
  %.052.ph = phi i32 [ 0, %.preheader ], [ %.052.ph.be, %.outer.backedge ] ; 3 uses
  %.049.ph = phi ptr [ %0, %.preheader ], [ %.251, %.outer.backedge ] ; 3 uses
  %.046.ph = phi i64 [ 0, %.preheader ], [ %.3, %.outer.backedge ]
  %.044.ph = phi i64 [ 0, %.preheader ], [ %i.ba, %.outer.backedge ] ; 2 uses
  %.042.ph = phi double [ 0.000000e+00, %.preheader ], [ %.042.ph.be, %.outer.backedge ] ; 9 uses
  %.041.ph.a = phi i64 [ 53, %.preheader ], [ %.041.ph.be, %.outer.backedge ] ; 7 uses
  %i.an = icmp eq i64 %.044.ph, 0
  br i1 %i.an, label %.lr.ph.split.us, label %.loopexit

.lr.ph.split.us:                                  ; preds = %.outer
  %i.ao = icmp eq ptr %.049.ph, %i.a
  br i1 %i.ao, label %.split.us, label %.lr.ph102

.lr.ph102:                                        ; preds = %.lr.ph.split.us, %bb.i
  %.04993.us101 = phi ptr [ %.150.us, %bb.i ], [ %.049.ph, %.lr.ph.split.us ] ; 3 uses
  %i.ap = load i8, ptr %.04993.us101, align 1, !tbaa !66 ; 3 uses
  %i.aq = icmp eq i8 %i.ap, 95
  br i1 %i.aq, label %bb.i, label %.thread80, !prof !62, !llvm.loop !309
end_hunk_4
begin_hunk_5_@_ZN6hermes17parseIntWithRadixILb1EN4llvh8ArrayRefIcEEEENS_8OptValueIdEET0_i:bb.a
  br i1 %i.ar, label %.split.us, label %.lr.ph102

.split.us:                                        ; preds = %.lr.ph.split.us, %bb.i
  switch i32 %.052.ph, label %_ZN6hermes23parseIntWithRadixDigitsILb1EN4llvh8ArrayRefIcEEZNS_17parseIntWithRadixILb1ES3_EENS_8OptValueIdEET0_iEUlhE_EEbS7_iT1_.exit [
    i32 4, label %bb.r
    i32 3, label %bb.q
  ]
end_hunk_5
begin_hunk_6_@_ZN6hermes17parseIntWithRadixILb1EN4llvh8ArrayRefIcEEEENS_8OptValueIdEET0_i:bb.a
  br label %.loopexit

.loopexit:                                        ; preds = %.outer, %.thread80
  %.251 = phi ptr [ %.15084, %.thread80 ], [ %.049.ph, %.outer ]
  %.3 = phi i64 [ %.147, %.thread80 ], [ %.046.ph, %.outer ] ; 2 uses
  %.2 = phi i64 [ %i.am, %.thread80 ], [ %.044.ph, %.outer ] ; 2 uses
  %i.ax = and i64 %.2, %.3
  %i.ay = icmp ne i64 %i.ax, 0                    ; 4 uses
  %i.az = zext i1 %i.ay to i8                     ; 2 uses
  %i.ba = lshr i64 %.2, 1
  switch i32 %.052.ph, label %.outer.backedge [
    i32 0, label %bb.j
    i32 1, label %bb.l
    i32 2, label %bb.n
end_hunk_6
begin_hunk_7_@_ZN6hermes17parseIntWithRadixILb1EN4llvh8ArrayRefIcEEEENS_8OptValueIdEET0_i:bb.a
  br i1 %i.ay, label %bb.k, label %.outer.backedge

bb.k:                                             ; preds = %bb.j
  %i.bb = add i64 %.041.ph.a, -1
  br label %.outer.backedge

bb.l:                                             ; preds = %.loopexit
  %i.bc = fmul double %.072.ph, 2.000000e+00
  %i.bd = uitofp i1 %i.ay to double
  %i.be = fadd double %i.bc, %i.bd                ; 2 uses
  %i.bf = add i64 %.041.ph.a, -1                  ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %bb.m, label %.outer.backedge

.outer.backedge:                                  ; preds = %bb.l, %bb.m, %bb.j, %bb.k, %bb.p, %bb.o, %bb.n, %.loopexit
  %.072.ph.be = phi double [ %.072.ph, %.loopexit ], [ 1.000000e+00, %bb.k ], [ %.072.ph, %bb.j ], [ %i.be, %bb.m ], [ %i.be, %bb.l ], [ %.072.ph, %bb.n ], [ %.072.ph, %bb.o ], [ %.072.ph, %bb.p ]
  %.057.ph.be = phi i8 [ %.057.ph, %.loopexit ], [ %.057.ph, %bb.k ], [ %.057.ph, %bb.j ], [ %i.az, %bb.m ], [ %.057.ph, %bb.l ], [ %.057.ph, %bb.n ], [ %.057.ph, %bb.o ], [ %.057.ph, %bb.p ]
  %.055.ph.be = phi i8 [ %.055.ph, %.loopexit ], [ %.055.ph, %bb.k ], [ %.055.ph, %bb.j ], [ %.055.ph, %bb.m ], [ %.055.ph, %bb.l ], [ %i.az, %bb.n ], [ %.055.ph, %bb.o ], [ %.055.ph, %bb.p ]
  %.052.ph.be = phi i32 [ %.052.ph, %.loopexit ], [ 1, %bb.k ], [ 0, %bb.j ], [ 2, %bb.m ], [ 1, %bb.l ], [ 3, %bb.n ], [ %spec.select, %bb.o ], [ 4, %bb.p ]
  %.042.ph.be = phi double [ %.042.ph, %.loopexit ], [ %.042.ph, %bb.k ], [ %.042.ph, %bb.j ], [ %.042.ph, %bb.m ], [ %.042.ph, %bb.l ], [ 2.000000e+00, %bb.n ], [ %i.bh, %bb.o ], [ %i.bi, %bb.p ]
  %.041.ph.be = phi i64 [ %.041.ph.a, %.loopexit ], [ %i.bb, %bb.k ], [ %.041.ph.a, %bb.j ], [ 0, %bb.m ], [ %i.bf, %bb.l ], [ %.041.ph.a, %bb.n ], [ %.041.ph.a, %bb.o ], [ %.041.ph.a, %bb.p ]
  br label %.outer, !llvm.loop !309

bb.m:                                             ; preds = %bb.l
end_hunk_7
begin_hunk_8_@_ZN6hermes17parseIntWithRadixILb1EN4llvh8ArrayRefIcEEEENS_8OptValueIdEET0_i:bb.a

bb.o:                                             ; preds = %.loopexit
  %spec.select = select i1 %i.ay, i32 4, i32 3
  %i.bh = fmul double %.042.ph, 2.000000e+00
  br label %.outer.backedge

bb.p:                                             ; preds = %.loopexit
  %i.bi = fmul double %.042.ph, 2.000000e+00
  br label %.outer.backedge

bb.q:                                             ; preds = %.split.us
  %i.bj = trunc nuw i8 %.055.ph to i1
  %i.bk = uitofp nneg i8 %.057.ph to double
  %i.bl = select i1 %i.bj, double %i.bk, double 0.000000e+00
  %i.bm = fadd double %.072.ph, %i.bl
  %i.bn = fmul double %i.bm, %.042.ph
  br label %_ZN6hermes23parseIntWithRadixDigitsILb1EN4llvh8ArrayRefIcEEZNS_17parseIntWithRadixILb1ES3_EENS_8OptValueIdEET0_iEUlhE_EEbS7_iT1_.exit

bb.r:                                             ; preds = %.split.us
  %i.bo = uitofp nneg i8 %.055.ph to double
  %i.bp = fadd double %.072.ph, %i.bo
  %i.bq = fmul double %i.bp, %.042.ph
  br label %_ZN6hermes23parseIntWithRadixDigitsILb1EN4llvh8ArrayRefIcEEZNS_17parseIntWithRadixILb1ES3_EENS_8OptValueIdEET0_iEUlhE_EEbS7_iT1_.exit

_ZN6hermes23parseIntWithRadixDigitsILb1EN4llvh8ArrayRefIcEEZNS_17parseIntWithRadixILb1ES3_EENS_8OptValueIdEET0_iEUlhE_EEbS7_iT1_.exit: ; preds = %bb.g, %bb.h, %bb.a, %.loopexit88, %bb.r, %bb.q, %.split.us, %bb.b
end_hunk_8
begin_hunk_9_@_ZN4llvh12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E18moveFromOldBucketsEPSC_SF_:bb.a
  %.019 = phi ptr [ %i.bd, %bb.f ], [ %1, %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E9initEmptyEv.exit ] ; 6 uses
  %i.u = load i32, ptr %.019, align 4, !tbaa !3   ; 5 uses
  %switch = icmp ugt i32 %i.u, -3
  br i1 %switch, label %bb.f, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %3 = load ptr, ptr %0, align 8, !tbaa !285      ; 2 uses
  %4 = load i32, ptr %i.d, align 8, !tbaa !286    ; 2 uses
  %5 = icmp ne i32 %4, 0
  tail call void @llvm.assume(i1 %5)
  %i.v = mul i32 %i.u, 37
  %i.w = add i32 %4, -1                           ; 2 uses
  %.02744.i.i = and i32 %i.w, %i.v                ; 2 uses
  %i.x = zext i32 %.02744.i.i to i64
  %i.y = getelementptr inbounds nuw [40 x i8], ptr %3, i64 %i.x ; 3 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !3    ; 2 uses
  %i.aa = icmp eq i32 %i.u, %i.z
  br i1 %i.aa, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E15LookupBucketForIjEEbRKT_RPSC_.exit, label %.lr.ph.i.i, !prof !287
end_hunk_9
begin_hunk_10_@_ZN4llvh12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E18moveFromOldBucketsEPSC_SF_:bb.a
  %i.ai = add i32 %.02546.i.i, %.02747.i.i
  %.027.i.i = and i32 %i.ai, %i.w                 ; 2 uses
  %i.aj = zext i32 %.027.i.i to i64
  %i.ak = getelementptr inbounds nuw [40 x i8], ptr %3, i64 %i.aj ; 3 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !3  ; 2 uses
  %i.am = icmp eq i32 %i.u, %i.al
  br i1 %i.am, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E15LookupBucketForIjEEbRKT_RPSC_.exit, label %.lr.ph.i.i, !prof !288, !llvm.loop !289

_ZN4llvh12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E15LookupBucketForIjEEbRKT_RPSC_.exit: ; preds = %bb.d, %bb.b, %bb.c
  %.sink.i.i = phi ptr [ %i.ae, %bb.c ], [ %i.y, %bb.b ], [ %i.ak, %bb.d ] ; 4 uses
  store i32 %i.u, ptr %.sink.i.i, align 4, !tbaa !3
  %i.an = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.019, i64 8 ; 2 uses
end_hunk_10
