Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/InterpolatingCompilationDatabase?download=true
inline.NumInlined: 1807
inline.NumDeleted: 847
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK5clang7tooling12_GLOBAL__N_132InterpolatingCompilationDatabase18getCompileCommandsEN4llvm9StringRefE:bb.a
  %i.er = add i32 %i.eq, 4
  %i.es = mul i32 %i.dl, 3
  %.not.i.i68.i.i = icmp ult i32 %i.er, %i.es
  br i1 %.not.i.i68.i.i, label %.loopexit.i._ZN4llvm12DenseMapBaseINS_8DenseMapImiNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImiEEEEmiS3_S6_E22findBucketForInsertionImEEPS6_RKT_SA_.exit.i_crit_edge.i.i, label %bb.t, !prof !81

.loopexit.i._ZN4llvm12DenseMapBaseINS_8DenseMapImiNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImiEEEEmiS3_S6_E22findBucketForInsertionImEEPS6_RKT_SA_.exit.i_crit_edge.i.i: ; preds = %.loopexit.i.i.i
  %.pre102.i.i = load i64, ptr %i.dk, align 8, !tbaa !48
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapImiNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImiEEEEmiS3_S6_E22findBucketForInsertionImEEPS6_RKT_SA_.exit.i.i.i

bb.t:                                             ; preds = %.loopexit.i.i.i
  %i.et = shl i32 %i.dl, 1
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapImiNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImiEEEEmiS3_S6_E4growEj(ptr noundef nonnull align 8 dereferenceable(1) %10, i32 noundef %i.et)
  %i.eu = load ptr, ptr %10, align 8, !tbaa !93, !alias.scope !230, !noalias !232 ; 5 uses
  %i.ev = load ptr, ptr %i.bu, align 8, !tbaa !94, !alias.scope !230, !noalias !232 ; 5 uses
  %i.ew = load i32, ptr %i.bv, align 4, !tbaa !95, !alias.scope !230, !noalias !232 ; 2 uses
  %i.ex = icmp ne i32 %i.ew, 0
  call void @llvm.assume(i1 %i.ex)
  %i.ey = add i32 %i.ew, -1                       ; 2 uses
  %i.ez = load i64, ptr %i.dk, align 8, !tbaa !48 ; 5 uses
  %i.fa = mul i64 %i.ez, -4658895280553007687     ; 2 uses
  %i.fb = lshr i64 %i.fa, 31
  %i.fc = xor i64 %i.fb, %i.fa
  %i.fd = trunc i64 %i.fc to i32
  %i.fe = and i32 %i.ey, %i.fd                    ; 3 uses
  %i.ff = zext i32 %i.fe to i64                   ; 2 uses
  %i.fg = getelementptr inbounds nuw [16 x i8], ptr %i.eu, i64 %i.ff ; 2 uses
  %i.fh = lshr i64 %i.ff, 5
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %i.fh
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !82
  %i.fk = and i32 %i.fe, 31
  %i.fl = lshr i32 %i.fj, %i.fk
  %i.fm = trunc i32 %i.fl to i1
  br i1 %i.fm, label %.lr.ph.i71.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapImiNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImiEEEEmiS3_S6_E22findBucketForInsertionImEEPS6_RKT_SA_.exit.i.i.i, !prof !96

.lr.ph.i71.i.i:                                   ; preds = %bb.t, %bb.u
  %i.fn = phi ptr [ %i.ft, %bb.u ], [ %i.fg, %bb.t ] ; 2 uses
  %.024.i.i.i = phi i32 [ %i.fr, %bb.u ], [ %i.fe, %bb.t ]
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !48
  %i.fp = icmp eq i64 %i.ez, %i.fo
  br i1 %i.fp, label %_ZN4llvm12DenseMapBaseINS_8DenseMapImiNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImiEEEEmiS3_S6_E22findBucketForInsertionImEEPS6_RKT_SA_.exit.i.i.i, label %bb.u, !prof !81

bb.u:                                             ; preds = %.lr.ph.i71.i.i
  %i.fq = add nuw i32 %.024.i.i.i, 1
  %i.fr = and i32 %i.fq, %i.ey                    ; 3 uses
  %i.fs = zext i32 %i.fr to i64                   ; 2 uses
  %i.ft = getelementptr inbounds nuw [16 x i8], ptr %i.eu, i64 %i.fs ; 2 uses
  %i.fu = lshr i64 %i.fs, 5
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %i.fu
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !82
  %i.fx = and i32 %i.fr, 31
  %i.fy = lshr i32 %i.fw, %i.fx
  %i.fz = trunc i32 %i.fy to i1
  br i1 %i.fz, label %.lr.ph.i71.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapImiNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImiEEEEmiS3_S6_E22findBucketForInsertionImEEPS6_RKT_SA_.exit.i.i.i, !prof !97, !llvm.loop !4

_ZN4llvm12DenseMapBaseINS_8DenseMapImiNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImiEEEEmiS3_S6_E22findBucketForInsertionImEEPS6_RKT_SA_.exit.i.i.i: ; preds = %bb.u, %.lr.ph.i71.i.i, %bb.t, %.loopexit.i._ZN4llvm12DenseMapBaseINS_8DenseMapImiNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImiEEEEmiS3_S6_E22findBucketForInsertionImEEPS6_RKT_SA_.exit.i_crit_edge.i.i
  %i.ga = phi i64 [ %.pre102.i.i, %.loopexit.i._ZN4llvm12DenseMapBaseINS_8DenseMapImiNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImiEEEEmiS3_S6_E22findBucketForInsertionImEEPS6_RKT_SA_.exit.i_crit_edge.i.i ], [ %i.ez, %bb.t ], [ %i.ez, %.lr.ph.i71.i.i ], [ %i.ez, %bb.u ]
  %i.gb = phi ptr [ %i.di, %.loopexit.i._ZN4llvm12DenseMapBaseINS_8DenseMapImiNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImiEEEEmiS3_S6_E22findBucketForInsertionImEEPS6_RKT_SA_.exit.i_crit_edge.i.i ], [ %i.ev, %bb.t ], [ %i.ev, %.lr.ph.i71.i.i ], [ %i.ev, %bb.u ] ; 2 uses
  %i.gc = phi ptr [ %i.dj, %.loopexit.i._ZN4llvm12DenseMapBaseINS_8DenseMapImiNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImiEEEEmiS3_S6_E22findBucketForInsertionImEEPS6_RKT_SA_.exit.i_crit_edge.i.i ], [ %i.eu, %bb.t ], [ %i.eu, %.lr.ph.i71.i.i ], [ %i.eu, %bb.u ] ; 2 uses
  %i.gd = phi ptr [ %.lcssa28.sink.i.ph.i.i.i, %.loopexit.i._ZN4llvm12DenseMapBaseINS_8DenseMapImiNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImiEEEEmiS3_S6_E22findBucketForInsertionImEEPS6_RKT_SA_.exit.i_crit_edge.i.i ], [ %i.fg, %bb.t ], [ %i.ft, %bb.u ], [ %i.fn, %.lr.ph.i71.i.i ] ; 4 uses
  %i.ge = ptrtoint ptr %i.gd to i64
  %i.gf = ptrtoint ptr %i.gc to i64
  %i.gg = sub i64 %i.ge, %i.gf
  %i.gh = ashr exact i64 %i.gg, 4                 ; 2 uses
  %i.gi = trunc i64 %i.gh to i32
  %i.gj = and i32 %i.gi, 31
  %i.gk = shl nuw i32 1, %i.gj
  %i.gl = lshr i64 %i.gh, 5
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %i.gl ; 2 uses
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !82
  %i.go = or i32 %i.gk, %i.gn
  store i32 %i.go, ptr %i.gm, align 4, !tbaa !82
  %i.gp = load i32, ptr %i.bw, align 8, !tbaa !98, !alias.scope !230
  %i.gq = add i32 %i.gp, 1
  store i32 %i.gq, ptr %i.bw, align 8, !tbaa !98, !alias.scope !230
  store i64 %i.ga, ptr %i.gd, align 8, !tbaa !48
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  store i32 0, ptr %i.gr, align 8, !tbaa !82
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapImiNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImiEEEEmiS3_S6_E24lookupOrInsertIntoBucketIRKmJEEESt4pairIPS6_bEOT_DpOT0_.exit.i.i

_ZN4llvm12DenseMapBaseINS_8DenseMapImiNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImiEEEEmiS3_S6_E24lookupOrInsertIntoBucketIRKmJEEESt4pairIPS6_bEOT_DpOT0_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %.pre103.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !82
  %i.gs = add nsw i32 %.pre103.i.i, 1
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapImiNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImiEEEEmiS3_S6_E24lookupOrInsertIntoBucketIRKmJEEESt4pairIPS6_bEOT_DpOT0_.exit.i.i

_ZN4llvm12DenseMapBaseINS_8DenseMapImiNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImiEEEEmiS3_S6_E24lookupOrInsertIntoBucketIRKmJEEESt4pairIPS6_bEOT_DpOT0_.exit.i.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapImiNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImiEEEEmiS3_S6_E24lookupOrInsertIntoBucketIRKmJEEESt4pairIPS6_bEOT_DpOT0_.exit.loopexit.i.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapImiNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImiEEEEmiS3_S6_E22findBucketForInsertionImEEPS6_RKT_SA_.exit.i.i.i
  %i.gt = phi i32 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapImiNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImiEEEEmiS3_S6_E22findBucketForInsertionImEEPS6_RKT_SA_.exit.i.i.i ], [ %i.gs, %_ZN4llvm12DenseMapBaseINS_8DenseMapImiNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImiEEEEmiS3_S6_E24lookupOrInsertIntoBucketIRKmJEEESt4pairIPS6_bEOT_DpOT0_.exit.loopexit.i.i ]
  %i.gu = phi ptr [ %i.gb, %_ZN4llvm12DenseMapBaseINS_8DenseMapImiNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImiEEEEmiS3_S6_E22findBucketForInsertionImEEPS6_RKT_SA_.exit.i.i.i ], [ %i.di, %_ZN4llvm12DenseMapBaseINS_8DenseMapImiNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImiEEEEmiS3_S6_E24lookupOrInsertIntoBucketIRKmJEEESt4pairIPS6_bEOT_DpOT0_.exit.loopexit.i.i ]
  %i.gv = phi ptr [ %i.gc, %_ZN4llvm12DenseMapBaseINS_8DenseMapImiNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImiEEEEmiS3_S6_E22findBucketForInsertionImEEPS6_RKT_SA_.exit.i.i.i ], [ %i.dj, %_ZN4llvm12DenseMapBaseINS_8DenseMapImiNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImiEEEEmiS3_S6_E24lookupOrInsertIntoBucketIRKmJEEESt4pairIPS6_bEOT_DpOT0_.exit.loopexit.i.i ]
  %.sroa.0.0.i.i.i = phi ptr [ %i.gd, %_ZN4llvm12DenseMapBaseINS_8DenseMapImiNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImiEEEEmiS3_S6_E22findBucketForInsertionImEEPS6_RKT_SA_.exit.i.i.i ], [ %i.ec, %_ZN4llvm12DenseMapBaseINS_8DenseMapImiNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImiEEEEmiS3_S6_E24lookupOrInsertIntoBucketIRKmJEEESt4pairIPS6_bEOT_DpOT0_.exit.loopexit.i.i ]
  %i.gw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 8
  store i32 %i.gt, ptr %i.gw, align 4, !tbaa !82
  %i.gx = getelementptr inbounds nuw i8, ptr %.03.i57.i.i, i64 24 ; 2 uses
  %.not.i59.i.i = icmp eq ptr %i.gx, %i.dh
  br i1 %.not.i59.i.i, label %_ZZNK5clang7tooling12_GLOBAL__N_19FileIndex15scoreCandidatesEN4llvm9StringRefEENKUliNS3_8ArrayRefISt4pairIS4_mEEEE_clEiS8_.exit60.i.i, label %.lr.ph.i56.i.i

_ZZNK5clang7tooling12_GLOBAL__N_19FileIndex15scoreCandidatesEN4llvm9StringRefEENKUliNS3_8ArrayRefISt4pairIS4_mEEEE_clEiS8_.exit60.i.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapImiNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImiEEEEmiS3_S6_E24lookupOrInsertIntoBucketIRKmJEEESt4pairIPS6_bEOT_DpOT0_.exit.i.i, %bb.q
  %i.gy = getelementptr inbounds nuw i8, ptr %.04296.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.gy, %i.br
  br i1 %.not.i.i, label %._crit_edge.i.i, label %bb.q

_ZN4llvmneENS_9StringRefES0_.exit.thread.i.i:     ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i, %._crit_edge.i.i
  %i.gz = load ptr, ptr %i.g, align 8, !tbaa !32, !noalias !230 ; 2 uses
  %i.ha = load ptr, ptr %i.h, align 8, !tbaa !33, !noalias !230
  %i.hb = ptrtoint ptr %i.ha to i64
  %i.hc = ptrtoint ptr %i.gz to i64
  %i.hd = sub i64 %i.hb, %i.hc
  %i.he = sdiv exact i64 %i.hd, 24
  %i.hf = call fastcc { ptr, i64 } @_ZNK5clang7tooling12_GLOBAL__N_19FileIndex11indexLookupILb1EEEN4llvm8ArrayRefISt4pairINS4_9StringRefEmEEES7_S9_(ptr %.sroa.080.0.lcssa.i.i, i64 %.sroa.7.0.lcssa.i.i, ptr %i.gz, i64 %i.he) ; 2 uses
  %i.hg = extractvalue { ptr, i64 } %i.hf, 0      ; 2 uses
  %i.hh = extractvalue { ptr, i64 } %i.hf, 1      ; 2 uses
  %.idx.i61.i.i = mul nuw nsw i64 %i.hh, 24
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hg, i64 %.idx.i61.i.i
  %.not2.i62.i.i = icmp eq i64 %i.hh, 0
  br i1 %.not2.i62.i.i, label %_ZZNK5clang7tooling12_GLOBAL__N_19FileIndex15scoreCandidatesEN4llvm9StringRefEENKUliNS3_8ArrayRefISt4pairIS4_mEEEE_clEiS8_.exit67.i.i, label %.lr.ph.i63.i.i

.lr.ph.i63.i.i:                                   ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.thread.i.i, %.lr.ph.i63.i.i
  %.03.i64.i.i = phi ptr [ %i.ho, %.lr.ph.i63.i.i ], [ %i.hg, %_ZN4llvmneENS_9StringRefES0_.exit.thread.i.i ] ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.03.i64.i.i, i64 16
  %i.hk = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapImiNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImiEEEEmiS3_S6_E24lookupOrInsertIntoBucketIRKmJEEESt4pairIPS6_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(1) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.hj)
  %.fca.0.extract.i.i65.i.i = extractvalue { ptr, i8 } %i.hk, 0
  %i.hl = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i65.i.i, i64 8 ; 2 uses
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !82
  %i.hn = add nsw i32 %i.hm, 1
  store i32 %i.hn, ptr %i.hl, align 4, !tbaa !82
  %i.ho = getelementptr inbounds nuw i8, ptr %.03.i64.i.i, i64 24 ; 2 uses
  %.not.i66.i.i = icmp eq ptr %i.ho, %i.hi
  br i1 %.not.i66.i.i, label %_ZZNK5clang7tooling12_GLOBAL__N_19FileIndex15scoreCandidatesEN4llvm9StringRefEENKUliNS3_8ArrayRefISt4pairIS4_mEEEE_clEiS8_.exit67.i.i, label %.lr.ph.i63.i.i

_ZZNK5clang7tooling12_GLOBAL__N_19FileIndex15scoreCandidatesEN4llvm9StringRefEENKUliNS3_8ArrayRefISt4pairIS4_mEEEE_clEiS8_.exit67.i.i: ; preds = %.lr.ph.i63.i.i, %_ZN4llvmneENS_9StringRefES0_.exit.thread.i.i, %_ZN4llvmneENS_9StringRefES0_.exit.i.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19, !noalias !230
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19, !noalias !230
  %i.hp = load ptr, ptr %4, align 8, !tbaa !25, !noalias !230 ; 2 uses
  %i.hq = icmp eq ptr %i.hp, %i.ae
  br i1 %i.hq, label %_ZNK5clang7tooling12_GLOBAL__N_19FileIndex15scoreCandidatesEN4llvm9StringRefE.exit.i, label %bb.v

bb.v:                                             ; preds = %_ZZNK5clang7tooling12_GLOBAL__N_19FileIndex15scoreCandidatesEN4llvm9StringRefEENKUliNS3_8ArrayRefISt4pairIS4_mEEEE_clEiS8_.exit67.i.i
  call void @free(ptr noundef %i.hp) #19
  br label %_ZNK5clang7tooling12_GLOBAL__N_19FileIndex15scoreCandidatesEN4llvm9StringRefE.exit.i

_ZNK5clang7tooling12_GLOBAL__N_19FileIndex15scoreCandidatesEN4llvm9StringRefE.exit.i: ; preds = %bb.v, %_ZZNK5clang7tooling12_GLOBAL__N_19FileIndex15scoreCandidatesEN4llvm9StringRefEENKUliNS3_8ArrayRefISt4pairIS4_mEEEE_clEiS8_.exit67.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19, !noalias !230
  %i.hr = load ptr, ptr %9, align 8, !tbaa !42    ; 6 uses
  %i.hs = load i64, ptr %i.z, align 8, !tbaa !44  ; 7 uses
  %i.ht = load ptr, ptr %10, align 8, !tbaa !93, !noalias !233 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !94, !noalias !233 ; 4 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %10, i64 20
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !95, !noalias !233 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.hz = load i32, ptr %i.hy, align 8, !tbaa !98, !noalias !233
  %i.ia = icmp eq i32 %i.hz, 0
  %i.ib = zext i32 %i.hx to i64                   ; 4 uses
  %.idx118.i.i = shl nuw nsw i64 %i.ib, 4         ; 3 uses
  %.not.i.not.i.i.i.i = icmp eq i32 %i.hx, 0      ; 2 uses
  %or.cond62.i.i = select i1 %i.ia, i1 true, i1 %.not.i.not.i.i.i.i
  br i1 %or.cond62.i.i, label %._crit_edge.thread.i.i, label %bb.w

bb.w:                                             ; preds = %_ZNK5clang7tooling12_GLOBAL__N_19FileIndex15scoreCandidatesEN4llvm9StringRefE.exit.i
  %i.ic = add nuw nsw i64 %i.ib, 31
  %i.id = lshr i64 %i.ic, 5                       ; 4 uses
  %i.ie = load i32, ptr %i.hv, align 4, !tbaa !82, !noalias !234 ; 2 uses
  %i.if = icmp eq i32 %i.ie, 0
  br i1 %i.if, label %.lr.ph.i.i.i.i.i.preheader, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapImiNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImiEEEEmiS3_S6_E5beginEv.exit.i.i

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.w
  %i.ig = icmp eq i64 %i.id, 1
  br i1 %i.ig, label %._crit_edge.thread.i.i, label %.lr.ph

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph
  %i.ih = add nuw nsw i64 %i.ij, 1                ; 2 uses
  %i.ii = icmp eq i64 %i.ih, %i.id
  br i1 %i.ii, label %._crit_edge.thread.i.i, label %.lr.ph, !llvm.loop !218

.lr.ph:                                           ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %i.ij = phi i64 [ %i.ih, %.lr.ph.i.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.hv, i64 %i.ij
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !82, !noalias !234 ; 2 uses
  %i.im = icmp eq i32 %i.il, 0
  br i1 %i.im, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.loopexit.i.i.i.i, !llvm.loop !218

._crit_edge.i.loopexit.i.i.i.i:                   ; preds = %.lr.ph
  %i.in = shl i64 %i.ij, 9
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapImiNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImiEEEEmiS3_S6_E5beginEv.exit.i.i

_ZNK4llvm12DenseMapBaseINS_8DenseMapImiNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImiEEEEmiS3_S6_E5beginEv.exit.i.i: ; preds = %._crit_edge.i.loopexit.i.i.i.i, %bb.w
  %.012.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.w ], [ %i.in, %._crit_edge.i.loopexit.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i = phi i32 [ %i.ie, %bb.w ], [ %i.il, %._crit_edge.i.loopexit.i.i.i.i ]
  %i.io = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i.i, i1 true)
  %i.ip = shl nuw nsw i32 %i.io, 4
  %.idx.i2.i = zext nneg i32 %i.ip to i64
  %i.iq = or disjoint i64 %.012.lcssa.i.i.i.i.i, %.idx.i2.i ; 2 uses
  %.not6370.i.i = icmp eq i64 %i.iq, %.idx118.i.i
  br i1 %.not6370.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i3.i

.lr.ph.i3.i:                                      ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapImiNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImiEEEEmiS3_S6_E5beginEv.exit.i.i
  %i.ir = getelementptr inbounds nuw i8, ptr %1, i64 152
  br label %bb.x

._crit_edge.i7.i:                                 ; preds = %_ZN4llvm16DenseMapIteratorImiNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImiEELb1EEppEv.exit.i.i, %_ZN5clang7tooling12_GLOBAL__N_114matchingPrefixEN4llvm9StringRefES3_.exit45.i.i, %.lr.ph.i.i.i8.i.preheader, %.lr.ph.i.i.i8.i
  %i.is = icmp eq i64 %.sroa.051.1.i.i, -1
  br i1 %i.is, label %._crit_edge.thread.i.i, label %_ZNK5clang7tooling12_GLOBAL__N_19FileIndex10pickWinnerERKN4llvm8DenseMapImiNS3_12DenseMapInfoImvEENS3_6detail12DenseMapPairImiEEEENS3_9StringRefENS_6driver5types2IDE.exit.i

bb.x:                                             ; preds = %_ZN4llvm16DenseMapIteratorImiNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImiEELb1EEppEv.exit.i.i, %.lr.ph.i3.i
  %.sroa.12.075.i.i = phi i64 [ 0, %.lr.ph.i3.i ], [ %.sroa.12.1.i.i, %_ZN4llvm16DenseMapIteratorImiNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImiEELb1EEppEv.exit.i.i ] ; 6 uses
  %.pn.i.i = phi i64 [ %i.iq, %.lr.ph.i3.i ], [ %i.kp, %_ZN4llvm16DenseMapIteratorImiNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImiEELb1EEppEv.exit.i.i ] ; 2 uses
  %.sroa.053.073.i.i = phi i64 [ -1, %.lr.ph.i3.i ], [ %.sroa.051.1.i.i, %_ZN4llvm16DenseMapIteratorImiNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImiEELb1EEppEv.exit.i.i ] ; 5 uses
  %.sroa.7.072.i.i = phi i8 [ 0, %.lr.ph.i3.i ], [ %.sroa.7.1.i.i, %_ZN4llvm16DenseMapIteratorImiNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImiEELb1EEppEv.exit.i.i ] ; 5 uses
  %.sroa.956.071.i.i = phi i32 [ 0, %.lr.ph.i3.i ], [ %.sroa.954.1.i.i, %_ZN4llvm16DenseMapIteratorImiNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImiEELb1EEppEv.exit.i.i ] ; 6 uses
  %.sroa.050.074.i.i = getelementptr i8, ptr %i.ht, i64 %.pn.i.i ; 2 uses
  %i.it = load i64, ptr %.sroa.050.074.i.i, align 8, !tbaa !236 ; 7 uses
  br i1 %i.w, label %.thread.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.iu = load ptr, ptr %i.ir, align 8, !tbaa !36
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.iu, i64 %i.it
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !52
  %i.ix = icmp eq i32 %.0.i, %i.iw                ; 2 uses
  %i.iy = zext i1 %i.ix to i8
  %.not.i4.i = xor i1 %i.ix, true
  %i.iz = trunc nuw i8 %.sroa.7.072.i.i to i1
  %or.cond.i.i = select i1 %.not.i4.i, i1 %i.iz, i1 false
  br i1 %or.cond.i.i, label %_ZN5clang7tooling12_GLOBAL__N_114matchingPrefixEN4llvm9StringRefES3_.exit45.i.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.y, %bb.x
  %i.ja = phi i8 [ %i.iy, %bb.y ], [ 1, %bb.x ]   ; 4 uses
  %.in.i.i = getelementptr inbounds nuw i8, ptr %.sroa.050.074.i.i, i64 8
  %i.jb = load i32, ptr %.in.i.i, align 8, !tbaa !237 ; 5 uses
  %i.jc = icmp eq i8 %.sroa.7.072.i.i, %i.ja
  br i1 %i.jc, label %bb.z, label %.thread._crit_edge.i.i

.thread._crit_edge.i.i:                           ; preds = %.thread.i.i
  %.pre.i5.i = load ptr, ptr %i.g, align 8, !tbaa !32
  br label %bb.ae

bb.z:                                             ; preds = %.thread.i.i
  %i.jd = icmp slt i32 %i.jb, %.sroa.956.071.i.i
  br i1 %i.jd, label %_ZN5clang7tooling12_GLOBAL__N_114matchingPrefixEN4llvm9StringRefES3_.exit45.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.je = icmp eq i32 %i.jb, %.sroa.956.071.i.i
  %.pre83.i.i = load ptr, ptr %i.g, align 8, !tbaa !32 ; 3 uses
  br i1 %i.je, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.jf = getelementptr inbounds nuw [24 x i8], ptr %.pre83.i.i, i64 %i.it ; 2 uses
  %.sroa.07.0.copyload.i.i = load ptr, ptr %i.jf, align 8, !tbaa !47
  %.sroa.28.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.jf, i64 8
  %.sroa.28.0.copyload.i.i = load i64, ptr %.sroa.28.0..sroa_idx.i.i, align 8, !tbaa !48
  %.sroa.speculated.i.i9.i = call i64 @llvm.umin.i64(i64 %.sroa.28.0.copyload.i.i, i64 %i.hs) ; 3 uses
  %.not1117.not.i.i.i = icmp eq i64 %.sroa.speculated.i.i9.i, 0
  br i1 %.not1117.not.i.i.i, label %_ZN5clang7tooling12_GLOBAL__N_114matchingPrefixEN4llvm9StringRefES3_.exit.i.i, label %.lr.ph.i.i10.i

.lr.ph.i.i10.i:                                   ; preds = %bb.ab, %bb.ac
  %.0918.i.i.i = phi i64 [ %i.jk, %bb.ac ], [ 0, %bb.ab ] ; 4 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.hr, i64 %.0918.i.i.i
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !46
  %i.ji = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload.i.i, i64 %.0918.i.i.i
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !46
  %.not.i.i11.i = icmp eq i8 %i.jh, %i.jj
  br i1 %.not.i.i11.i, label %bb.ac, label %_ZN5clang7tooling12_GLOBAL__N_114matchingPrefixEN4llvm9StringRefES3_.exit.i.i

bb.ac:                                            ; preds = %.lr.ph.i.i10.i
  %i.jk = add nuw i64 %.0918.i.i.i, 1             ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.jk, %.sroa.speculated.i.i9.i
  br i1 %exitcond.not.i.i.i, label %_ZN5clang7tooling12_GLOBAL__N_114matchingPrefixEN4llvm9StringRefES3_.exit.i.i, label %.lr.ph.i.i10.i, !llvm.loop !219

_ZN5clang7tooling12_GLOBAL__N_114matchingPrefixEN4llvm9StringRefES3_.exit.i.i: ; preds = %bb.ac, %.lr.ph.i.i10.i, %bb.ab
  %.09.lcssa.i.i.i = phi i64 [ 0, %bb.ab ], [ %.sroa.speculated.i.i9.i, %bb.ac ], [ %.0918.i.i.i, %.lr.ph.i.i10.i ] ; 2 uses
  %i.jl = icmp ult i64 %.09.lcssa.i.i.i, %.sroa.12.075.i.i
  br i1 %i.jl, label %_ZN5clang7tooling12_GLOBAL__N_114matchingPrefixEN4llvm9StringRefES3_.exit45.i.i, label %bb.ad

bb.ad:                                            ; preds = %_ZN5clang7tooling12_GLOBAL__N_114matchingPrefixEN4llvm9StringRefES3_.exit.i.i
  %i.jm = icmp eq i64 %.09.lcssa.i.i.i, %.sroa.12.075.i.i
  %i.jn = icmp ugt i64 %i.it, %.sroa.053.073.i.i
  %or.cond35.i.i = select i1 %i.jm, i1 %i.jn, i1 false
  br i1 %or.cond35.i.i, label %_ZN5clang7tooling12_GLOBAL__N_114matchingPrefixEN4llvm9StringRefES3_.exit45.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.aa, %.thread._crit_edge.i.i
  %i.jo = phi ptr [ %.pre.i5.i, %.thread._crit_edge.i.i ], [ %.pre83.i.i, %bb.aa ], [ %.pre83.i.i, %bb.ad ]
  %i.jp = getelementptr inbounds nuw [24 x i8], ptr %i.jo, i64 %i.it ; 2 uses
  %.sroa.03.0.copyload.i.i = load ptr, ptr %i.jp, align 8, !tbaa !47
  %.sroa.24.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.jp, i64 8
  %.sroa.24.0.copyload.i.i = load i64, ptr %.sroa.24.0..sroa_idx.i.i, align 8, !tbaa !48
  %.sroa.speculated.i36.i.i = call i64 @llvm.umin.i64(i64 %.sroa.24.0.copyload.i.i, i64 %i.hs) ; 3 uses
  %.not1117.not.i37.i.i = icmp eq i64 %.sroa.speculated.i36.i.i, 0
  br i1 %.not1117.not.i37.i.i, label %_ZN5clang7tooling12_GLOBAL__N_114matchingPrefixEN4llvm9StringRefES3_.exit45.i.i, label %.lr.ph.i38.i.i

.lr.ph.i38.i.i:                                   ; preds = %bb.ae, %bb.af
  %.0918.i39.i.i = phi i64 [ %i.ju, %bb.af ], [ 0, %bb.ae ] ; 4 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.hr, i64 %.0918.i39.i.i
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !46
  %i.js = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i.i, i64 %.0918.i39.i.i
  %i.jt = load i8, ptr %i.js, align 1, !tbaa !46
  %.not.i40.i.i = icmp eq i8 %i.jr, %i.jt
  br i1 %.not.i40.i.i, label %bb.af, label %_ZN5clang7tooling12_GLOBAL__N_114matchingPrefixEN4llvm9StringRefES3_.exit45.i.i

bb.af:                                            ; preds = %.lr.ph.i38.i.i
  %i.ju = add nuw i64 %.0918.i39.i.i, 1           ; 2 uses
  %exitcond.not.i44.i.i = icmp eq i64 %i.ju, %.sroa.speculated.i36.i.i
  br i1 %exitcond.not.i44.i.i, label %_ZN5clang7tooling12_GLOBAL__N_114matchingPrefixEN4llvm9StringRefES3_.exit45.i.i, label %.lr.ph.i38.i.i, !llvm.loop !219

_ZN5clang7tooling12_GLOBAL__N_114matchingPrefixEN4llvm9StringRefES3_.exit45.i.i: ; preds = %bb.af, %.lr.ph.i38.i.i, %bb.ae, %bb.ad, %_ZN5clang7tooling12_GLOBAL__N_114matchingPrefixEN4llvm9StringRefES3_.exit.i.i, %bb.z, %bb.y
  %.sroa.954.1.i.i = phi i32 [ %.sroa.956.071.i.i, %bb.y ], [ %.sroa.956.071.i.i, %bb.z ], [ %.sroa.956.071.i.i, %_ZN5clang7tooling12_GLOBAL__N_114matchingPrefixEN4llvm9StringRefES3_.exit.i.i ], [ %.sroa.956.071.i.i, %bb.ad ], [ %i.jb, %bb.ae ], [ %i.jb, %.lr.ph.i38.i.i ], [ %i.jb, %bb.af ]
  %.sroa.7.1.i.i = phi i8 [ 1, %bb.y ], [ %.sroa.7.072.i.i, %bb.z ], [ %.sroa.7.072.i.i, %_ZN5clang7tooling12_GLOBAL__N_114matchingPrefixEN4llvm9StringRefES3_.exit.i.i ], [ %.sroa.7.072.i.i, %bb.ad ], [ %i.ja, %bb.ae ], [ %i.ja, %.lr.ph.i38.i.i ], [ %i.ja, %bb.af ]
  %.sroa.051.1.i.i = phi i64 [ %.sroa.053.073.i.i, %bb.y ], [ %.sroa.053.073.i.i, %bb.z ], [ %.sroa.053.073.i.i, %_ZN5clang7tooling12_GLOBAL__N_114matchingPrefixEN4llvm9StringRefES3_.exit.i.i ], [ %.sroa.053.073.i.i, %bb.ad ], [ %i.it, %bb.ae ], [ %i.it, %.lr.ph.i38.i.i ], [ %i.it, %bb.af ] ; 3 uses
  %.sroa.12.1.i.i = phi i64 [ %.sroa.12.075.i.i, %bb.y ], [ %.sroa.12.075.i.i, %bb.z ], [ %.sroa.12.075.i.i, %_ZN5clang7tooling12_GLOBAL__N_114matchingPrefixEN4llvm9StringRefES3_.exit.i.i ], [ %.sroa.12.075.i.i, %bb.ad ], [ 0, %bb.ae ], [ %.sroa.speculated.i36.i.i, %bb.af ], [ %.0918.i39.i.i, %.lr.ph.i38.i.i ]
  %i.jv = add i64 %.pn.i.i, 16
  %i.jw = ashr exact i64 %i.jv, 4                 ; 3 uses
  %.not.i.i.i6.i = icmp ult i64 %i.jw, %i.ib
  br i1 %.not.i.i.i6.i, label %bb.ag, label %._crit_edge.i7.i

bb.ag:                                            ; preds = %_ZN5clang7tooling12_GLOBAL__N_114matchingPrefixEN4llvm9StringRefES3_.exit45.i.i
  %i.jx = lshr i64 %i.jw, 5                       ; 3 uses
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.hv, i64 %i.jx
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !82
  %i.ka = trunc nuw i64 %i.jw to i32
  %i.kb = and i32 %i.ka, 31
  %i.kc = shl nsw i32 -1, %i.kb
  %i.kd = and i32 %i.jz, %i.kc                    ; 2 uses
  %i.ke = icmp eq i32 %i.kd, 0
  br i1 %i.ke, label %.lr.ph.i.i.i8.i.preheader, label %_ZN4llvm16DenseMapIteratorImiNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImiEELb1EEppEv.exit.i.i

.lr.ph.i.i.i8.i.preheader:                        ; preds = %bb.ag
  %i.kf = add nuw nsw i64 %i.jx, 1                ; 2 uses
  %i.kg = icmp eq i64 %i.kf, %i.id
  br i1 %i.kg, label %._crit_edge.i7.i, label %.lr.ph145

.lr.ph.i.i.i8.i:                                  ; preds = %.lr.ph145
  %i.kh = add i64 %i.kj, 1                        ; 2 uses
  %i.ki = icmp eq i64 %i.kh, %i.id
  br i1 %i.ki, label %._crit_edge.i7.i, label %.lr.ph145, !llvm.loop !218

.lr.ph145:                                        ; preds = %.lr.ph.i.i.i8.i.preheader, %.lr.ph.i.i.i8.i
  %i.kj = phi i64 [ %i.kh, %.lr.ph.i.i.i8.i ], [ %i.kf, %.lr.ph.i.i.i8.i.preheader ] ; 3 uses
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.hv, i64 %i.kj
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !82 ; 2 uses
  %i.km = icmp eq i32 %i.kl, 0
  br i1 %i.km, label %.lr.ph.i.i.i8.i, label %_ZN4llvm16DenseMapIteratorImiNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImiEELb1EEppEv.exit.i.i, !llvm.loop !218

_ZN4llvm16DenseMapIteratorImiNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImiEELb1EEppEv.exit.i.i: ; preds = %.lr.ph145, %bb.ag
  %.012.lcssa.i.i.i.i = phi i64 [ %i.jx, %bb.ag ], [ %i.kj, %.lr.ph145 ]
  %.0.lcssa.i.i.i.i = phi i32 [ %i.kd, %bb.ag ], [ %i.kl, %.lr.ph145 ]
  %i.kn = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i, i1 true)
  %.idx.i.i.i.i = shl i64 %.012.lcssa.i.i.i.i, 9
  %i.ko = shl nuw nsw i32 %i.kn, 4
  %.idx119.i.i = zext nneg i32 %i.ko to i64
  %i.kp = or disjoint i64 %.idx.i.i.i.i, %.idx119.i.i ; 2 uses
  %.not63.i.i = icmp eq i64 %i.kp, %.idx118.i.i
  br i1 %.not63.i.i, label %._crit_edge.i7.i, label %bb.x

._crit_edge.thread.i.i:                           ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader, %._crit_edge.i7.i, %_ZNK4llvm12DenseMapBaseINS_8DenseMapImiNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImiEEEEmiS3_S6_E5beginEv.exit.i.i, %_ZNK5clang7tooling12_GLOBAL__N_19FileIndex15scoreCandidatesEN4llvm9StringRefE.exit.i
  %i.kq = load ptr, ptr %i.g, align 8, !tbaa !32  ; 6 uses
  %i.kr = load ptr, ptr %i.h, align 8, !tbaa !33  ; 3 uses
  %.not.i.i46.i.i = icmp eq ptr %i.kr, %i.kq
  br i1 %.not.i.i46.i.i, label %_ZNK5clang7tooling12_GLOBAL__N_19FileIndex12longestMatchEN4llvm9StringRefENS3_8ArrayRefISt4pairIS4_mEEE.exit.i.i, label %_ZSt9__advanceIPKSt4pairIN4llvm9StringRefEmElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.preheader.i.i

_ZSt9__advanceIPKSt4pairIN4llvm9StringRefEmElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.preheader.i.i: ; preds = %._crit_edge.thread.i.i
  %i.ks = ptrtoint ptr %i.kr to i64
  %i.kt = ptrtoint ptr %i.kq to i64
  %i.ku = sub i64 %i.ks, %i.kt
  %i.kv = sdiv exact i64 %i.ku, 24
  br label %_ZSt9__advanceIPKSt4pairIN4llvm9StringRefEmElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4llvm9StringRefEmElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i: ; preds = %.thread22.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4llvm9StringRefEmElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.preheader.i.i
  %.029.i.i.i.i.i.i = phi i64 [ %i.lh, %.thread22.i.i.i.i.i.i ], [ %i.kv, %_ZSt9__advanceIPKSt4pairIN4llvm9StringRefEmElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.preheader.i.i ] ; 2 uses
  %.01128.i.i.i.i.i.i = phi ptr [ %i.lg, %.thread22.i.i.i.i.i.i ], [ %i.kq, %_ZSt9__advanceIPKSt4pairIN4llvm9StringRefEmElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.preheader.i.i ] ; 4 uses
  %i.kw = lshr i64 %.029.i.i.i.i.i.i, 1           ; 5 uses
  %i.kx = getelementptr inbounds nuw [24 x i8], ptr %.01128.i.i.i.i.i.i, i64 %i.kw ; 3 uses
  %.sroa.26.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.kx, i64 8
  %.sroa.26.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.26.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !tbaa !48, !noalias !238 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.hs, i64 %.sroa.26.0.copyload.i.i.i.i.i.i.i.i) ; 2 uses
  %i.ky = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ky, label %.thread.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4llvm9StringRefEmElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i
  %.sroa.05.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.kx, align 8, !tbaa !47, !noalias !238
  %i.kz = call i32 @memcmp(ptr noundef %.sroa.05.0.copyload.i.i.i.i.i.i.i.i, ptr noundef readonly %i.hr, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i.i.i.i) #22, !noalias !238
  %.fr.i.i.i.i.i.i.i.i.i.i = freeze i32 %i.kz     ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %.fr.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i, label %.thread.i.i.thread.i.i.i.i.i.i.i.i, label %_ZN4llvmltENS_9StringRefES0_.exit.i.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i.i.i.i:                      ; preds = %_ZSt9__advanceIPKSt4pairIN4llvm9StringRefEmElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i
  %i.la = icmp ult i64 %.sroa.26.0.copyload.i.i.i.i.i.i.i.i, %i.hs
  br i1 %i.la, label %.thread.i.i.i.i.i.i, label %.thread22.i.i.i.i.i.i

.thread.i.i.thread.i.i.i.i.i.i.i.i:               ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i
  %i.lb = icmp ult i64 %.sroa.26.0.copyload.i.i.i.i.i.i.i.i, %i.hs
  br i1 %i.lb, label %.thread.i.i.i.i.i.i, label %.thread22.i.i.i.i.i.i

_ZN4llvmltENS_9StringRefES0_.exit.i.i.i.i.i.i.i.i: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i
  %i.lc = icmp slt i32 %.fr.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.lc, label %.thread.i.i.i.i.i.i, label %.thread22.i.i.i.i.i.i

.thread.i.i.i.i.i.i:                              ; preds = %_ZN4llvmltENS_9StringRefES0_.exit.i.i.i.i.i.i.i.i, %.thread.i.i.thread.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i.i.i.i
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kx, i64 24
  %i.le = xor i64 %i.kw, -1
  %i.lf = add nsw i64 %.029.i.i.i.i.i.i, %i.le
  br label %.thread22.i.i.i.i.i.i

.thread22.i.i.i.i.i.i:                            ; preds = %.thread.i.i.i.i.i.i, %_ZN4llvmltENS_9StringRefES0_.exit.i.i.i.i.i.i.i.i, %.thread.i.i.thread.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i.i.i.i
  %i.lg = phi ptr [ %.01128.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i.i.i.i ], [ %i.ld, %.thread.i.i.i.i.i.i ], [ %.01128.i.i.i.i.i.i, %_ZN4llvmltENS_9StringRefES0_.exit.i.i.i.i.i.i.i.i ], [ %.01128.i.i.i.i.i.i, %.thread.i.i.thread.i.i.i.i.i.i.i.i ] ; 9 uses
  %i.lh = phi i64 [ %i.kw, %.thread.i.i.i.i.i.i.i.i.i.i ], [ %i.lf, %.thread.i.i.i.i.i.i ], [ %i.kw, %_ZN4llvmltENS_9StringRefES0_.exit.i.i.i.i.i.i.i.i ], [ %i.kw, %.thread.i.i.thread.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.li = icmp sgt i64 %i.lh, 0
  br i1 %i.li, label %_ZSt9__advanceIPKSt4pairIN4llvm9StringRefEmElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRNS_8ArrayRefISt4pairINS_9StringRefEmEEES4_EEDaOT_OT0_.exit.i.i.i, !llvm.loop !222

_ZN4llvm11lower_boundIRNS_8ArrayRefISt4pairINS_9StringRefEmEEES4_EEDaOT_OT0_.exit.i.i.i: ; preds = %.thread22.i.i.i.i.i.i
  %i.lj = icmp eq ptr %i.lg, %i.kq
  br i1 %i.lj, label %_ZNK5clang7tooling12_GLOBAL__N_19FileIndex12longestMatchEN4llvm9StringRefENS3_8ArrayRefISt4pairIS4_mEEE.exit.i.i, label %bb.ah

bb.ah:                                            ; preds = %_ZN4llvm11lower_boundIRNS_8ArrayRefISt4pairINS_9StringRefEmEEES4_EEDaOT_OT0_.exit.i.i.i
  %i.lk = icmp eq ptr %i.lg, %i.kr
  br i1 %i.lk, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ll = getelementptr inbounds i8, ptr %i.lg, i64 -24
  br label %_ZNK5clang7tooling12_GLOBAL__N_19FileIndex12longestMatchEN4llvm9StringRefENS3_8ArrayRefISt4pairIS4_mEEE.exit.i.i

bb.aj:                                            ; preds = %bb.ah
  %.sroa.03.0.copyload.i.i.i = load ptr, ptr %i.lg, align 8, !tbaa !47, !noalias !238
  %.sroa.24.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.lg, i64 8
  %.sroa.24.0.copyload.i.i.i = load i64, ptr %.sroa.24.0..sroa_idx.i.i.i, align 8, !tbaa !48, !noalias !238
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.24.0.copyload.i.i.i, i64 %i.hs) ; 3 uses
  %.not1117.not.i.i.i.i = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %.not1117.not.i.i.i.i, label %_ZN5clang7tooling12_GLOBAL__N_114matchingPrefixEN4llvm9StringRefES3_.exit.i.i.i, label %.lr.ph.i.i47.i.i

.lr.ph.i.i47.i.i:                                 ; preds = %bb.aj, %bb.ak
  %.0918.i.i.i.i = phi i64 [ %i.lq, %bb.ak ], [ 0, %bb.aj ] ; 4 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.hr, i64 %.0918.i.i.i.i
  %i.ln = load i8, ptr %i.lm, align 1, !tbaa !46, !noalias !238
  %i.lo = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i.i.i, i64 %.0918.i.i.i.i
  %i.lp = load i8, ptr %i.lo, align 1, !tbaa !46, !noalias !238
  %.not.i15.i.i.i = icmp eq i8 %i.ln, %i.lp
  br i1 %.not.i15.i.i.i, label %bb.ak, label %_ZN5clang7tooling12_GLOBAL__N_114matchingPrefixEN4llvm9StringRefES3_.exit.i.i.i

bb.ak:                                            ; preds = %.lr.ph.i.i47.i.i
  %i.lq = add nuw i64 %.0918.i.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.lq, %.sroa.speculated.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %_ZN5clang7tooling12_GLOBAL__N_114matchingPrefixEN4llvm9StringRefES3_.exit.i.i.i, label %.lr.ph.i.i47.i.i, !llvm.loop !219

_ZN5clang7tooling12_GLOBAL__N_114matchingPrefixEN4llvm9StringRefES3_.exit.i.i.i: ; preds = %bb.ak, %.lr.ph.i.i47.i.i, %bb.aj
  %.09.lcssa.i.i.i.i = phi i64 [ 0, %bb.aj ], [ %.0918.i.i.i.i, %.lr.ph.i.i47.i.i ], [ %.sroa.speculated.i.i.i.i, %bb.ak ]
  %i.lr = getelementptr inbounds i8, ptr %i.lg, i64 -24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.lr, align 8, !tbaa !47, !noalias !238
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %i.lg, i64 -16
  %.sroa.2.0.copyload.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !48, !noalias !238
  %.sroa.speculated.i16.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i.i.i, i64 %i.hs) ; 3 uses
  %.not1117.not.i17.i.i.i = icmp eq i64 %.sroa.speculated.i16.i.i.i, 0
  br i1 %.not1117.not.i17.i.i.i, label %_ZN5clang7tooling12_GLOBAL__N_114matchingPrefixEN4llvm9StringRefES3_.exit25.i.i.i, label %.lr.ph.i18.i.i.i

.lr.ph.i18.i.i.i:                                 ; preds = %_ZN5clang7tooling12_GLOBAL__N_114matchingPrefixEN4llvm9StringRefES3_.exit.i.i.i, %bb.al
  %.0918.i19.i.i.i = phi i64 [ %i.lw, %bb.al ], [ 0, %_ZN5clang7tooling12_GLOBAL__N_114matchingPrefixEN4llvm9StringRefES3_.exit.i.i.i ] ; 4 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.hr, i64 %.0918.i19.i.i.i
  %i.lt = load i8, ptr %i.ls, align 1, !tbaa !46, !noalias !238
  %i.lu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 %.0918.i19.i.i.i
  %i.lv = load i8, ptr %i.lu, align 1, !tbaa !46, !noalias !238
  %.not.i20.i.i.i = icmp eq i8 %i.lt, %i.lv
  br i1 %.not.i20.i.i.i, label %bb.al, label %_ZN5clang7tooling12_GLOBAL__N_114matchingPrefixEN4llvm9StringRefES3_.exit25.i.i.i

bb.al:                                            ; preds = %.lr.ph.i18.i.i.i
  %i.lw = add nuw i64 %.0918.i19.i.i.i, 1         ; 2 uses
  %exitcond.not.i24.i.i.i = icmp eq i64 %i.lw, %.sroa.speculated.i16.i.i.i
  br i1 %exitcond.not.i24.i.i.i, label %_ZN5clang7tooling12_GLOBAL__N_114matchingPrefixEN4llvm9StringRefES3_.exit25.i.i.i, label %.lr.ph.i18.i.i.i, !llvm.loop !219

_ZN5clang7tooling12_GLOBAL__N_114matchingPrefixEN4llvm9StringRefES3_.exit25.i.i.i: ; preds = %bb.al, %.lr.ph.i18.i.i.i, %_ZN5clang7tooling12_GLOBAL__N_114matchingPrefixEN4llvm9StringRefES3_.exit.i.i.i
  %.09.lcssa.i21.i.i.i = phi i64 [ 0, %_ZN5clang7tooling12_GLOBAL__N_114matchingPrefixEN4llvm9StringRefES3_.exit.i.i.i ], [ %.0918.i19.i.i.i, %.lr.ph.i18.i.i.i ], [ %.sroa.speculated.i16.i.i.i, %bb.al ]
  %i.lx = icmp ugt i64 %.09.lcssa.i.i.i.i, %.09.lcssa.i21.i.i.i
  %..i.i.i = select i1 %i.lx, ptr %i.lg, ptr %i.lr
  br label %_ZNK5clang7tooling12_GLOBAL__N_19FileIndex12longestMatchEN4llvm9StringRefENS3_8ArrayRefISt4pairIS4_mEEE.exit.i.i

_ZNK5clang7tooling12_GLOBAL__N_19FileIndex12longestMatchEN4llvm9StringRefENS3_8ArrayRefISt4pairIS4_mEEE.exit.i.i: ; preds = %_ZN5clang7tooling12_GLOBAL__N_114matchingPrefixEN4llvm9StringRefES3_.exit25.i.i.i, %bb.ai, %_ZN4llvm11lower_boundIRNS_8ArrayRefISt4pairINS_9StringRefEmEEES4_EEDaOT_OT0_.exit.i.i.i, %._crit_edge.thread.i.i
  %..sink.i.i.i = phi ptr [ %..i.i.i, %_ZN5clang7tooling12_GLOBAL__N_114matchingPrefixEN4llvm9StringRefES3_.exit25.i.i.i ], [ %i.ll, %bb.ai ], [ %i.kq, %._crit_edge.thread.i.i ], [ %i.kq, %_ZN4llvm11lower_boundIRNS_8ArrayRefISt4pairINS_9StringRefEmEEES4_EEDaOT_OT0_.exit.i.i.i ]
  %.sroa.3.0...sink.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %..sink.i.i.i, i64 16
  %.sroa.3.0.copyload.i.i = load i64, ptr %.sroa.3.0...sink.i.sroa_idx.i.i, align 8
  br label %_ZNK5clang7tooling12_GLOBAL__N_19FileIndex10pickWinnerERKN4llvm8DenseMapImiNS3_12DenseMapInfoImvEENS3_6detail12DenseMapPairImiEEEENS3_9StringRefENS_6driver5types2IDE.exit.i

_ZNK5clang7tooling12_GLOBAL__N_19FileIndex10pickWinnerERKN4llvm8DenseMapImiNS3_12DenseMapInfoImvEENS3_6detail12DenseMapPairImiEEEENS3_9StringRefENS_6driver5types2IDE.exit.i: ; preds = %_ZNK5clang7tooling12_GLOBAL__N_19FileIndex12longestMatchEN4llvm9StringRefENS3_8ArrayRefISt4pairIS4_mEEE.exit.i.i, %._crit_edge.i7.i
  %.sroa.058.0.i.i = phi i64 [ %.sroa.3.0.copyload.i.i, %_ZNK5clang7tooling12_GLOBAL__N_19FileIndex12longestMatchEN4llvm9StringRefENS3_8ArrayRefISt4pairIS4_mEEE.exit.i.i ], [ %.sroa.051.1.i.i, %._crit_edge.i7.i ]
  %i.ly = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.lz = getelementptr inbounds nuw [32 x i8], ptr %i.ly, i64 %.sroa.058.0.i.i ; 2 uses
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !42
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lz, i64 8
  %i.mc = load i64, ptr %i.mb, align 8, !tbaa !44
  br i1 %.not.i.not.i.i.i.i, label %_ZN4llvm8DenseMapImiNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImiEEED2Ev.exit.i, label %bb.am

bb.am:                                            ; preds = %_ZNK5clang7tooling12_GLOBAL__N_19FileIndex10pickWinnerERKN4llvm8DenseMapImiNS3_12DenseMapInfoImvEENS3_6detail12DenseMapPairImiEEEENS3_9StringRefENS_6driver5types2IDE.exit.i
  %i.md = add nuw nsw i64 %i.ib, 31
  %i.me = lshr i64 %i.md, 3
  %i.mf = and i64 %i.me, 1073741820
  %i.mg = add nuw nsw i64 %i.mf, %.idx118.i.i
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ht, i64 noundef %i.mg, i64 noundef 8) #19
  %.pre.i = load ptr, ptr %9, align 8, !tbaa !42
  br label %_ZN4llvm8DenseMapImiNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImiEEED2Ev.exit.i

_ZN4llvm8DenseMapImiNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImiEEED2Ev.exit.i: ; preds = %bb.am, %_ZNK5clang7tooling12_GLOBAL__N_19FileIndex10pickWinnerERKN4llvm8DenseMapImiNS3_12DenseMapInfoImvEENS3_6detail12DenseMapPairImiEEEENS3_9StringRefENS_6driver5types2IDE.exit.i
  %i.mh = phi ptr [ %i.hr, %_ZNK5clang7tooling12_GLOBAL__N_19FileIndex10pickWinnerERKN4llvm8DenseMapImiNS3_12DenseMapInfoImvEENS3_6detail12DenseMapPairImiEEEENS3_9StringRefENS_6driver5types2IDE.exit.i ], [ %.pre.i, %bb.am ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  %i.mi = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.mj = icmp eq ptr %i.mh, %i.mi
  br i1 %i.mj, label %_ZNK5clang7tooling12_GLOBAL__N_19FileIndex11chooseProxyEN4llvm9StringRefENS_6driver5types2IDE.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN4llvm8DenseMapImiNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImiEEED2Ev.exit.i
  %i.mk = load i64, ptr %i.mi, align 8, !tbaa !46
  %i.ml = add i64 %i.mk, 1
  call void @_ZdlPvm(ptr noundef %i.mh, i64 noundef %i.ml) #21
  br label %_ZNK5clang7tooling12_GLOBAL__N_19FileIndex11chooseProxyEN4llvm9StringRefENS_6driver5types2IDE.exit

_ZNK5clang7tooling12_GLOBAL__N_19FileIndex11chooseProxyEN4llvm9StringRefENS_6driver5types2IDE.exit: ; preds = %_ZN4llvm8DenseMapImiNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImiEEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.mm = load ptr, ptr %i.v, align 8, !tbaa !18
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 16
  %i.mo = load ptr, ptr %i.mn, align 8
  call void %i.mo(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.85") align 8 %12, ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr %i.ma, i64 %i.mc) #19
  %i.mp = load ptr, ptr %12, align 8, !tbaa !225  ; 25 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !225
  %i.ms = icmp eq ptr %i.mp, %i.mr
  br i1 %i.ms, label %.thread, label %bb.an

.thread:                                          ; preds = %_ZNK5clang7tooling12_GLOBAL__N_19FileIndex11chooseProxyEN4llvm9StringRefENS_6driver5types2IDE.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %_ZSt8_DestroyIPN5clang7tooling14CompileCommandEEvT_S4_.exit.i

bb.an:                                            ; preds = %_ZNK5clang7tooling12_GLOBAL__N_19FileIndex11chooseProxyEN4llvm9StringRefENS_6driver5types2IDE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  %i.mt = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 3 uses
  store ptr %i.mt, ptr %14, align 8, !tbaa !55
  %i.mu = load ptr, ptr %i.mp, align 8, !tbaa !42 ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mp, i64 16 ; 5 uses
  %i.mw = icmp eq ptr %i.mu, %i.mv
  br i1 %i.mw, label %bb.ao, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.ao:                                            ; preds = %bb.an
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mp, i64 8
  %i.my = load i64, ptr %i.mx, align 8, !tbaa !44 ; 3 uses
  %i.mz = icmp ult i64 %i.my, 16
  call void @llvm.assume(i1 %i.mz)
  %i.na = add nuw nsw i64 %i.my, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.mt, ptr noundef nonnull align 8 dereferenceable(1) %i.mv, i64 %i.na, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.an
  store ptr %i.mu, ptr %14, align 8, !tbaa !42
  %i.nb = load i64, ptr %i.mv, align 8, !tbaa !46
  store i64 %i.nb, ptr %i.mt, align 8, !tbaa !46
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.mp, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.ao
  %i.nc = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.my, %bb.ao ]
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mp, i64 8
  %i.ne = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 %i.nc, ptr %i.ne, align 8, !tbaa !44
  store ptr %i.mv, ptr %i.mp, align 8, !tbaa !42
  store i64 0, ptr %i.nd, align 8, !tbaa !44
  store i8 0, ptr %i.mv, align 8, !tbaa !46
  %i.nf = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.mp, i64 32 ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %14, i64 48 ; 3 uses
  store ptr %i.nh, ptr %i.nf, align 8, !tbaa !55
  %i.ni = load ptr, ptr %i.ng, align 8, !tbaa !42 ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.mp, i64 48 ; 5 uses
  %i.nk = icmp eq ptr %i.ni, %i.nj
  br i1 %i.nk, label %bb.ap, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i

bb.ap:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.nl = getelementptr inbounds nuw i8, ptr %i.mp, i64 40
  %i.nm = load i64, ptr %i.nl, align 8, !tbaa !44 ; 3 uses
  %i.nn = icmp ult i64 %i.nm, 16
  call void @llvm.assume(i1 %i.nn)
  %i.no = add nuw nsw i64 %i.nm, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.nh, ptr noundef nonnull align 8 dereferenceable(1) %i.nj, i64 %i.no, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  store ptr %i.ni, ptr %i.nf, align 8, !tbaa !42
  %i.np = load i64, ptr %i.nj, align 8, !tbaa !46
  store i64 %i.np, ptr %i.nh, align 8, !tbaa !46
  %.phi.trans.insert53 = getelementptr inbounds nuw i8, ptr %i.mp, i64 40
  %.pre54 = load i64, ptr %.phi.trans.insert53, align 8, !tbaa !44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i, %bb.ap
  %i.nq = phi i64 [ %.pre54, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i ], [ %i.nm, %bb.ap ]
  %i.nr = getelementptr inbounds nuw i8, ptr %i.mp, i64 40
  %i.ns = getelementptr inbounds nuw i8, ptr %14, i64 40
  store i64 %i.nq, ptr %i.ns, align 8, !tbaa !44
  store ptr %i.nj, ptr %i.ng, align 8, !tbaa !42
  store i64 0, ptr %i.nr, align 8, !tbaa !44
  store i8 0, ptr %i.nj, align 8, !tbaa !46
  %i.nt = getelementptr inbounds nuw i8, ptr %14, i64 64
  %i.nu = getelementptr inbounds nuw i8, ptr %i.mp, i64 64 ; 2 uses
  %i.nv = load <2 x ptr>, ptr %i.nu, align 8, !tbaa !22
  store <2 x ptr> %i.nv, ptr %i.nt, align 8, !tbaa !22
  %i.nw = getelementptr inbounds nuw i8, ptr %14, i64 80
  %i.nx = getelementptr inbounds nuw i8, ptr %i.mp, i64 80
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !54
  store ptr %i.ny, ptr %i.nw, align 8, !tbaa !54
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.nu, i8 0, i64 24, i1 false)
  %i.nz = getelementptr inbounds nuw i8, ptr %14, i64 88 ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %i.mp, i64 88 ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %14, i64 104 ; 3 uses
  store ptr %i.ob, ptr %i.nz, align 8, !tbaa !55
  %i.oc = load ptr, ptr %i.oa, align 8, !tbaa !42 ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.mp, i64 104 ; 5 uses
  %i.oe = icmp eq ptr %i.oc, %i.od
  br i1 %i.oe, label %bb.aq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i

bb.aq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i
  %i.of = getelementptr inbounds nuw i8, ptr %i.mp, i64 96
  %i.og = load i64, ptr %i.of, align 8, !tbaa !44 ; 3 uses
  %i.oh = icmp ult i64 %i.og, 16
  call void @llvm.assume(i1 %i.oh)
  %i.oi = add nuw nsw i64 %i.og, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ob, ptr noundef nonnull align 8 dereferenceable(1) %i.od, i64 %i.oi, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit9.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i
  store ptr %i.oc, ptr %i.nz, align 8, !tbaa !42
  %i.oj = load i64, ptr %i.od, align 8, !tbaa !46
  store i64 %i.oj, ptr %i.ob, align 8, !tbaa !46
  %.phi.trans.insert55 = getelementptr inbounds nuw i8, ptr %i.mp, i64 96
  %.pre56 = load i64, ptr %.phi.trans.insert55, align 8, !tbaa !44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit9.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit9.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i, %bb.aq
  %i.ok = phi i64 [ %.pre56, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i ], [ %i.og, %bb.aq ]
  %i.ol = getelementptr inbounds nuw i8, ptr %i.mp, i64 96
  %i.om = getelementptr inbounds nuw i8, ptr %14, i64 96
  store i64 %i.ok, ptr %i.om, align 8, !tbaa !44
  store ptr %i.od, ptr %i.oa, align 8, !tbaa !42
  store i64 0, ptr %i.ol, align 8, !tbaa !44
  store i8 0, ptr %i.od, align 8, !tbaa !46
  %i.on = getelementptr inbounds nuw i8, ptr %14, i64 120 ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.mp, i64 120 ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %14, i64 136 ; 3 uses
  store ptr %i.op, ptr %i.on, align 8, !tbaa !55
  %i.oq = load ptr, ptr %i.oo, align 8, !tbaa !42 ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.mp, i64 136 ; 5 uses
  %i.os = icmp eq ptr %i.oq, %i.or
  br i1 %i.os, label %bb.ar, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i10.i

bb.ar:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit9.i
  %i.ot = getelementptr inbounds nuw i8, ptr %i.mp, i64 128
  %i.ou = load i64, ptr %i.ot, align 8, !tbaa !44 ; 3 uses
  %i.ov = icmp ult i64 %i.ou, 16
  call void @llvm.assume(i1 %i.ov)
  %i.ow = add nuw nsw i64 %i.ou, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.op, ptr noundef nonnull align 8 dereferenceable(1) %i.or, i64 %i.ow, i1 false)
  br label %bb.as

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i10.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit9.i
  store ptr %i.oq, ptr %i.on, align 8, !tbaa !42
  %i.ox = load i64, ptr %i.or, align 8, !tbaa !46
  store i64 %i.ox, ptr %i.op, align 8, !tbaa !46
  %.phi.trans.insert57 = getelementptr inbounds nuw i8, ptr %i.mp, i64 128
  %.pre58 = load i64, ptr %.phi.trans.insert57, align 8, !tbaa !44
  br label %bb.as

bb.as:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i10.i, %bb.ar
  %i.oy = phi i64 [ %i.ou, %bb.ar ], [ %.pre58, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i10.i ]
  %i.oz = getelementptr inbounds nuw i8, ptr %i.mp, i64 128
  %i.pa = getelementptr inbounds nuw i8, ptr %14, i64 128
  store i64 %i.oy, ptr %i.pa, align 8, !tbaa !44
  store ptr %i.or, ptr %i.oo, align 8, !tbaa !42
  store i64 0, ptr %i.oz, align 8, !tbaa !44
  store i8 0, ptr %i.or, align 8, !tbaa !46
  call void @_ZN5clang7tooling22transferCompileCommandENS0_14CompileCommandEN4llvm9StringRefE(ptr dead_on_unwind nonnull writable sret(%"struct.clang::tooling::CompileCommand") align 8 %13, ptr nofree noundef nonnull align 8 dereferenceable(152) %14, ptr %2, i64 %3)
  %i.pb = call noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #18 ; 3 uses
  store ptr %i.pb, ptr %0, align 8, !tbaa !227
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 152 ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.pc, ptr %i.pd, align 8, !tbaa !229
  call void @_ZN5clang7tooling14CompileCommandC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(152) %i.pb, ptr noundef nonnull align 8 dereferenceable(152) %13)
  %i.pe = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.pc, ptr %i.pe, align 8, !tbaa !228
end_hunk_0
