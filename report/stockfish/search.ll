inline.NumInlined: 4324
inline.NumDeleted: 1738
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 72
begin_hunk_0_@_ZN9Stockfish6Search6WorkerC2ERNS0_11SharedStateESt10unique_ptrINS0_14ISearchManagerESt14default_deleteIS5_EEmmmNS_25NumaReplicatedAccessTokenE:bb.a
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 152
  %i.fu = load i8, ptr %i.ft, align 8, !tbaa !125
  switch i8 %i.fu, label %bb.g [
    i8 -1, label %bb.e
    i8 2, label %_ZNK9Stockfish28LazyNumaReplicatedSystemWideINS_4Eval4NNUE8NetworksEEixENS_25NumaReplicatedAccessTokenE.exit
    i8 1, label %bb.f
  ]

bb.e:                                             ; preds = %_ZN9Stockfish4Eval4NNUE16AccumulatorStackC2Ev.exit
  tail call void @abort() #37
  unreachable

bb.f:                                             ; preds = %_ZN9Stockfish4Eval4NNUE16AccumulatorStackC2Ev.exit
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fs, i64 56
  br label %_ZNK9Stockfish28LazyNumaReplicatedSystemWideINS_4Eval4NNUE8NetworksEEixENS_25NumaReplicatedAccessTokenE.exit

bb.g:                                             ; preds = %_ZN9Stockfish4Eval4NNUE16AccumulatorStackC2Ev.exit
  unreachable

_ZNK9Stockfish28LazyNumaReplicatedSystemWideINS_4Eval4NNUE8NetworksEEixENS_25NumaReplicatedAccessTokenE.exit: ; preds = %_ZN9Stockfish4Eval4NNUE16AccumulatorStackC2Ev.exit, %bb.f
  %.0.i.i.i.in.i.i = phi ptr [ %i.fv, %bb.f ], [ %i.fs, %_ZN9Stockfish4Eval4NNUE16AccumulatorStackC2Ev.exit ]
  %.0.i.i.i.i.i = load ptr, ptr %.0.i.i.i.in.i.i, align 8, !tbaa !127 ; 17 uses
  br label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.loopexit.i.i.i, %_ZNK9Stockfish28LazyNumaReplicatedSystemWideINS_4Eval4NNUE8NetworksEEixENS_25NumaReplicatedAccessTokenE.exit
  %.0.idx20.i.i.i = phi i64 [ 0, %_ZNK9Stockfish28LazyNumaReplicatedSystemWideINS_4Eval4NNUE8NetworksEEixENS_25NumaReplicatedAccessTokenE.exit ], [ %.0.add.i.i.i.7, %.loopexit.i.i.i ] ; 9 uses
  %.0.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %i.fp, i64 %.0.idx20.i.i.i ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(2176) %.0.ptr.i.i.i, ptr noundef nonnull align 64 dereferenceable(137849344) %.0.i.i.i.i.i, i64 2048, i1 false), !tbaa.struct !129
  %i.fw = getelementptr inbounds nuw i8, ptr %.0.ptr.i.i.i, i64 2048
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(128) %i.fw, i8 0, i64 128, i1 false)
  %i.fx = getelementptr inbounds nuw i8, ptr %.0.ptr.i.i.i, i64 2176
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(2176) %i.fx, ptr noundef nonnull align 64 dereferenceable(137849344) %.0.i.i.i.i.i, i64 2048, i1 false), !tbaa.struct !129
  %i.fy = getelementptr inbounds nuw i8, ptr %.0.ptr.i.i.i, i64 4224
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(128) %i.fy, i8 0, i64 128, i1 false)
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fp, i64 %.0.idx20.i.i.i ; 4 uses
  %.0.ptr.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.fz, i64 4352
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(2176) %.0.ptr.i.i.i.1, ptr noundef nonnull align 64 dereferenceable(137849344) %.0.i.i.i.i.i, i64 2048, i1 false), !tbaa.struct !129
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 6400
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(128) %i.ga, i8 0, i64 128, i1 false)
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fz, i64 6528
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(2176) %i.gb, ptr noundef nonnull align 64 dereferenceable(137849344) %.0.i.i.i.i.i, i64 2048, i1 false), !tbaa.struct !129
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fz, i64 8576
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(128) %i.gc, i8 0, i64 128, i1 false)
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fp, i64 %.0.idx20.i.i.i ; 4 uses
  %.0.ptr.i.i.i.2 = getelementptr inbounds nuw i8, ptr %i.gd, i64 8704
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(2176) %.0.ptr.i.i.i.2, ptr noundef nonnull align 64 dereferenceable(137849344) %.0.i.i.i.i.i, i64 2048, i1 false), !tbaa.struct !129
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 10752
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(128) %i.ge, i8 0, i64 128, i1 false)
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gd, i64 10880
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(2176) %i.gf, ptr noundef nonnull align 64 dereferenceable(137849344) %.0.i.i.i.i.i, i64 2048, i1 false), !tbaa.struct !129
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gd, i64 12928
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(128) %i.gg, i8 0, i64 128, i1 false)
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fp, i64 %.0.idx20.i.i.i ; 4 uses
  %.0.ptr.i.i.i.3 = getelementptr inbounds nuw i8, ptr %i.gh, i64 13056
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(2176) %.0.ptr.i.i.i.3, ptr noundef nonnull align 64 dereferenceable(137849344) %.0.i.i.i.i.i, i64 2048, i1 false), !tbaa.struct !129
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 15104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(128) %i.gi, i8 0, i64 128, i1 false)
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gh, i64 15232
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(2176) %i.gj, ptr noundef nonnull align 64 dereferenceable(137849344) %.0.i.i.i.i.i, i64 2048, i1 false), !tbaa.struct !129
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gh, i64 17280
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(128) %i.gk, i8 0, i64 128, i1 false)
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fp, i64 %.0.idx20.i.i.i ; 4 uses
  %.0.ptr.i.i.i.4 = getelementptr inbounds nuw i8, ptr %i.gl, i64 17408
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(2176) %.0.ptr.i.i.i.4, ptr noundef nonnull align 64 dereferenceable(137849344) %.0.i.i.i.i.i, i64 2048, i1 false), !tbaa.struct !129
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 19456
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(128) %i.gm, i8 0, i64 128, i1 false)
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 19584
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(2176) %i.gn, ptr noundef nonnull align 64 dereferenceable(137849344) %.0.i.i.i.i.i, i64 2048, i1 false), !tbaa.struct !129
  %i.go = getelementptr inbounds nuw i8, ptr %i.gl, i64 21632
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(128) %i.go, i8 0, i64 128, i1 false)
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fp, i64 %.0.idx20.i.i.i ; 4 uses
  %.0.ptr.i.i.i.5 = getelementptr inbounds nuw i8, ptr %i.gp, i64 21760
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(2176) %.0.ptr.i.i.i.5, ptr noundef nonnull align 64 dereferenceable(137849344) %.0.i.i.i.i.i, i64 2048, i1 false), !tbaa.struct !129
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 23808
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(128) %i.gq, i8 0, i64 128, i1 false)
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gp, i64 23936
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(2176) %i.gr, ptr noundef nonnull align 64 dereferenceable(137849344) %.0.i.i.i.i.i, i64 2048, i1 false), !tbaa.struct !129
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gp, i64 25984
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(128) %i.gs, i8 0, i64 128, i1 false)
  %i.gt = getelementptr inbounds nuw i8, ptr %i.fp, i64 %.0.idx20.i.i.i ; 4 uses
  %.0.ptr.i.i.i.6 = getelementptr inbounds nuw i8, ptr %i.gt, i64 26112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(2176) %.0.ptr.i.i.i.6, ptr noundef nonnull align 64 dereferenceable(137849344) %.0.i.i.i.i.i, i64 2048, i1 false), !tbaa.struct !129
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 28160
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(128) %i.gu, i8 0, i64 128, i1 false)
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gt, i64 28288
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(2176) %i.gv, ptr noundef nonnull align 64 dereferenceable(137849344) %.0.i.i.i.i.i, i64 2048, i1 false), !tbaa.struct !129
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gt, i64 30336
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(128) %i.gw, i8 0, i64 128, i1 false)
  %.0.add.i.i.i.7 = add nuw nsw i64 %.0.idx20.i.i.i, 34816 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.fp, i64 %.0.idx20.i.i.i ; 4 uses
  %.0.ptr.i.i.i.7 = getelementptr inbounds nuw i8, ptr %i.gx, i64 30464
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(2176) %.0.ptr.i.i.i.7, ptr noundef nonnull align 64 dereferenceable(137849344) %.0.i.i.i.i.i, i64 2048, i1 false), !tbaa.struct !129
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 32512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(128) %i.gy, i8 0, i64 128, i1 false)
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gx, i64 32640
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(2176) %i.gz, ptr noundef nonnull align 64 dereferenceable(137849344) %.0.i.i.i.i.i, i64 2048, i1 false), !tbaa.struct !129
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gx, i64 34688
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(128) %i.ha, i8 0, i64 128, i1 false)
  %.not.i.i.i.7 = icmp eq i64 %.0.add.i.i.i.7, 278528
  br i1 %.not.i.i.i.7, label %_ZN9Stockfish4Eval4NNUE17AccumulatorCaches5CacheILj1024EE5clearINS1_7NetworkINS1_19NetworkArchitectureILj1024ELi15ELi32EEENS1_18FeatureTransformerILj1024EEEEEEEvRKT_.exit.i.i, label %.loopexit.i.i.i

_ZN9Stockfish4Eval4NNUE17AccumulatorCaches5CacheILj1024EE5clearINS1_7NetworkINS1_19NetworkArchitectureILj1024ELi15ELi32EEENS1_18FeatureTransformerILj1024EEEEEEEvRKT_.exit.i.i: ; preds = %.loopexit.i.i.i
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 14230144 ; 8 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 131331904 ; 16 uses
  br label %.loopexit.i3.i.i

.loopexit.i3.i.i:                                 ; preds = %.loopexit.i3.i.i, %_ZN9Stockfish4Eval4NNUE17AccumulatorCaches5CacheILj1024EE5clearINS1_7NetworkINS1_19NetworkArchitectureILj1024ELi15ELi32EEENS1_18FeatureTransformerILj1024EEEEEEEvRKT_.exit.i.i
  %.0.idx20.i4.i.i = phi i64 [ 0, %_ZN9Stockfish4Eval4NNUE17AccumulatorCaches5CacheILj1024EE5clearINS1_7NetworkINS1_19NetworkArchitectureILj1024ELi15ELi32EEENS1_18FeatureTransformerILj1024EEEEEEEvRKT_.exit.i.i ], [ %.0.add.i5.i.i.7, %.loopexit.i3.i.i ] ; 9 uses
  %.0.ptr.i6.i.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 %.0.idx20.i4.i.i ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(384) %.0.ptr.i6.i.i, ptr noundef nonnull align 64 dereferenceable(6517429) %i.hc, i64 256, i1 false), !tbaa.struct !131
  %i.hd = getelementptr inbounds nuw i8, ptr %.0.ptr.i6.i.i, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(128) %i.hd, i8 0, i64 128, i1 false)
  %i.he = getelementptr inbounds nuw i8, ptr %.0.ptr.i6.i.i, i64 384
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(384) %i.he, ptr noundef nonnull align 64 dereferenceable(6517429) %i.hc, i64 256, i1 false), !tbaa.struct !131
  %i.hf = getelementptr inbounds nuw i8, ptr %.0.ptr.i6.i.i, i64 640
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(128) %i.hf, i8 0, i64 128, i1 false)
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hb, i64 %.0.idx20.i4.i.i ; 4 uses
  %.0.ptr.i6.i.i.1 = getelementptr inbounds nuw i8, ptr %i.hg, i64 768
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(384) %.0.ptr.i6.i.i.1, ptr noundef nonnull align 64 dereferenceable(6517429) %i.hc, i64 256, i1 false), !tbaa.struct !131
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 1024
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(128) %i.hh, i8 0, i64 128, i1 false)
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hg, i64 1152
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(384) %i.hi, ptr noundef nonnull align 64 dereferenceable(6517429) %i.hc, i64 256, i1 false), !tbaa.struct !131
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hg, i64 1408
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(128) %i.hj, i8 0, i64 128, i1 false)
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hb, i64 %.0.idx20.i4.i.i ; 4 uses
  %.0.ptr.i6.i.i.2 = getelementptr inbounds nuw i8, ptr %i.hk, i64 1536
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(384) %.0.ptr.i6.i.i.2, ptr noundef nonnull align 64 dereferenceable(6517429) %i.hc, i64 256, i1 false), !tbaa.struct !131
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 1792
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(128) %i.hl, i8 0, i64 128, i1 false)
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hk, i64 1920
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(384) %i.hm, ptr noundef nonnull align 64 dereferenceable(6517429) %i.hc, i64 256, i1 false), !tbaa.struct !131
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hk, i64 2176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(128) %i.hn, i8 0, i64 128, i1 false)
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hb, i64 %.0.idx20.i4.i.i ; 4 uses
  %.0.ptr.i6.i.i.3 = getelementptr inbounds nuw i8, ptr %i.ho, i64 2304
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(384) %.0.ptr.i6.i.i.3, ptr noundef nonnull align 64 dereferenceable(6517429) %i.hc, i64 256, i1 false), !tbaa.struct !131
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 2560
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(128) %i.hp, i8 0, i64 128, i1 false)
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ho, i64 2688
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(384) %i.hq, ptr noundef nonnull align 64 dereferenceable(6517429) %i.hc, i64 256, i1 false), !tbaa.struct !131
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ho, i64 2944
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(128) %i.hr, i8 0, i64 128, i1 false)
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hb, i64 %.0.idx20.i4.i.i ; 4 uses
  %.0.ptr.i6.i.i.4 = getelementptr inbounds nuw i8, ptr %i.hs, i64 3072
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(384) %.0.ptr.i6.i.i.4, ptr noundef nonnull align 64 dereferenceable(6517429) %i.hc, i64 256, i1 false), !tbaa.struct !131
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 3328
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(128) %i.ht, i8 0, i64 128, i1 false)
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hs, i64 3456
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(384) %i.hu, ptr noundef nonnull align 64 dereferenceable(6517429) %i.hc, i64 256, i1 false), !tbaa.struct !131
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hs, i64 3712
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(128) %i.hv, i8 0, i64 128, i1 false)
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hb, i64 %.0.idx20.i4.i.i ; 4 uses
  %.0.ptr.i6.i.i.5 = getelementptr inbounds nuw i8, ptr %i.hw, i64 3840
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(384) %.0.ptr.i6.i.i.5, ptr noundef nonnull align 64 dereferenceable(6517429) %i.hc, i64 256, i1 false), !tbaa.struct !131
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 4096
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(128) %i.hx, i8 0, i64 128, i1 false)
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hw, i64 4224
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(384) %i.hy, ptr noundef nonnull align 64 dereferenceable(6517429) %i.hc, i64 256, i1 false), !tbaa.struct !131
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hw, i64 4480
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(128) %i.hz, i8 0, i64 128, i1 false)
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hb, i64 %.0.idx20.i4.i.i ; 4 uses
  %.0.ptr.i6.i.i.6 = getelementptr inbounds nuw i8, ptr %i.ia, i64 4608
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(384) %.0.ptr.i6.i.i.6, ptr noundef nonnull align 64 dereferenceable(6517429) %i.hc, i64 256, i1 false), !tbaa.struct !131
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 4864
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(128) %i.ib, i8 0, i64 128, i1 false)
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ia, i64 4992
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(384) %i.ic, ptr noundef nonnull align 64 dereferenceable(6517429) %i.hc, i64 256, i1 false), !tbaa.struct !131
  %i.id = getelementptr inbounds nuw i8, ptr %i.ia, i64 5248
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(128) %i.id, i8 0, i64 128, i1 false)
  %.0.add.i5.i.i.7 = add nuw nsw i64 %.0.idx20.i4.i.i, 6144 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hb, i64 %.0.idx20.i4.i.i ; 4 uses
  %.0.ptr.i6.i.i.7 = getelementptr inbounds nuw i8, ptr %i.ie, i64 5376
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(384) %.0.ptr.i6.i.i.7, ptr noundef nonnull align 64 dereferenceable(6517429) %i.hc, i64 256, i1 false), !tbaa.struct !131
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 5632
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(128) %i.if, i8 0, i64 128, i1 false)
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ie, i64 5760
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(384) %i.ig, ptr noundef nonnull align 64 dereferenceable(6517429) %i.hc, i64 256, i1 false), !tbaa.struct !131
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ie, i64 6016
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(128) %i.ih, i8 0, i64 128, i1 false)
  %.not.i7.i.i.7 = icmp eq i64 %.0.add.i5.i.i.7, 49152
  br i1 %.not.i7.i.i.7, label %_ZN9Stockfish4Eval4NNUE17AccumulatorCachesC2INS1_8NetworksEEERKT_.exit, label %.loopexit.i3.i.i

_ZN9Stockfish4Eval4NNUE17AccumulatorCachesC2INS1_8NetworksEEERKT_.exit: ; preds = %.loopexit.i3.i.i
  tail call void @_ZN9Stockfish6Search6Worker5clearEv(ptr noundef nonnull align 64 dereferenceable(14279296) %0)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN9Stockfish6Search6Worker5clearEv(ptr noundef nonnull align 64 dereferenceable(14279296) %0) local_unnamed_addr #4 align 2 {
vector.ph:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.7, %vector.body ] ; 9 uses
  %i.c = shl nuw nsw i64 %index, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %i.c ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 192
  store <32 x i16> splat (i16 68), ptr %i.d, align 64, !tbaa !132
  store <32 x i16> splat (i16 68), ptr %i.e, align 64, !tbaa !132
  store <32 x i16> splat (i16 68), ptr %i.f, align 64, !tbaa !132
  store <32 x i16> splat (i16 68), ptr %i.g, align 64, !tbaa !132
  %index.next = shl nuw i64 %index, 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %index.next ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 256
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 320
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 384
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 448
  store <32 x i16> splat (i16 68), ptr %i.i, align 64, !tbaa !132
  store <32 x i16> splat (i16 68), ptr %i.j, align 64, !tbaa !132
  store <32 x i16> splat (i16 68), ptr %i.k, align 64, !tbaa !132
  store <32 x i16> splat (i16 68), ptr %i.l, align 64, !tbaa !132
  %index.next.1 = shl nuw i64 %index, 1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %index.next.1 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 512
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 576
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 640
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 704
  store <32 x i16> splat (i16 68), ptr %i.n, align 64, !tbaa !132
  store <32 x i16> splat (i16 68), ptr %i.o, align 64, !tbaa !132
  store <32 x i16> splat (i16 68), ptr %i.p, align 64, !tbaa !132
  store <32 x i16> splat (i16 68), ptr %i.q, align 64, !tbaa !132
  %index.next.2 = shl nuw i64 %index, 1
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %index.next.2 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 768
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 832
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 896
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 960
  store <32 x i16> splat (i16 68), ptr %i.s, align 64, !tbaa !132
  store <32 x i16> splat (i16 68), ptr %i.t, align 64, !tbaa !132
  store <32 x i16> splat (i16 68), ptr %i.u, align 64, !tbaa !132
  store <32 x i16> splat (i16 68), ptr %i.v, align 64, !tbaa !132
  %index.next.3 = shl nuw i64 %index, 1
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %index.next.3 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1024
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 1088
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 1152
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 1216
  store <32 x i16> splat (i16 68), ptr %i.x, align 64, !tbaa !132
  store <32 x i16> splat (i16 68), ptr %i.y, align 64, !tbaa !132
  store <32 x i16> splat (i16 68), ptr %i.z, align 64, !tbaa !132
  store <32 x i16> splat (i16 68), ptr %i.aa, align 64, !tbaa !132
  %index.next.4 = shl nuw i64 %index, 1
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 %index.next.4 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 1280
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 1344
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 1408
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 1472
  store <32 x i16> splat (i16 68), ptr %i.ac, align 64, !tbaa !132
  store <32 x i16> splat (i16 68), ptr %i.ad, align 64, !tbaa !132
  store <32 x i16> splat (i16 68), ptr %i.ae, align 64, !tbaa !132
  store <32 x i16> splat (i16 68), ptr %i.af, align 64, !tbaa !132
  %index.next.5 = shl nuw i64 %index, 1
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %index.next.5 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1536
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 1600
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 1664
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 1728
  store <32 x i16> splat (i16 68), ptr %i.ah, align 64, !tbaa !132
  store <32 x i16> splat (i16 68), ptr %i.ai, align 64, !tbaa !132
  store <32 x i16> splat (i16 68), ptr %i.aj, align 64, !tbaa !132
  store <32 x i16> splat (i16 68), ptr %i.ak, align 64, !tbaa !132
  %index.next.6 = shl nuw i64 %index, 1
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 %index.next.6 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 1792
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 1856
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 1920
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 1984
  store <32 x i16> splat (i16 68), ptr %i.am, align 64, !tbaa !132
  store <32 x i16> splat (i16 68), ptr %i.an, align 64, !tbaa !132
  store <32 x i16> splat (i16 68), ptr %i.ao, align 64, !tbaa !132
  store <32 x i16> splat (i16 68), ptr %i.ap, align 64, !tbaa !132
  %index.next.7 = add nuw nsw i64 %index, 1024    ; 2 uses
  %i.aq = icmp eq i64 %index.next.7, 65536
  br i1 %i.aq, label %_ZN9Stockfish10MultiArrayINS_10StatsEntryIsLi7183ELb0EEELm65536EJEE4fillIiEEvRKT_.exit.i, label %vector.body, !llvm.loop !134

_ZN9Stockfish10MultiArrayINS_10StatsEntryIsLi7183ELb0EEELm65536EJEE4fillIiEEvRKT_.exit.i: ; preds = %vector.body
  %.0.ptr10.1.i = getelementptr inbounds nuw i8, ptr %0, i64 131072 ; 8 uses
  br label %vector.body163

vector.body163:                                   ; preds = %vector.body163, %_ZN9Stockfish10MultiArrayINS_10StatsEntryIsLi7183ELb0EEELm65536EJEE4fillIiEEvRKT_.exit.i
  %index164 = phi i64 [ 0, %_ZN9Stockfish10MultiArrayINS_10StatsEntryIsLi7183ELb0EEELm65536EJEE4fillIiEEvRKT_.exit.i ], [ %index.next165.7, %vector.body163 ] ; 9 uses
  %i.ar = shl nuw nsw i64 %index164, 1
  %i.as = getelementptr inbounds nuw i8, ptr %.0.ptr10.1.i, i64 %i.ar ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 64
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 128
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 192
  store <32 x i16> splat (i16 68), ptr %i.as, align 64, !tbaa !132
  store <32 x i16> splat (i16 68), ptr %i.at, align 64, !tbaa !132
  store <32 x i16> splat (i16 68), ptr %i.au, align 64, !tbaa !132
  store <32 x i16> splat (i16 68), ptr %i.av, align 64, !tbaa !132
  %index.next165 = shl nuw i64 %index164, 1
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.ptr10.1.i, i64 %index.next165 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 256
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 320
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 384
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 448
  store <32 x i16> splat (i16 68), ptr %i.ax, align 64, !tbaa !132
  store <32 x i16> splat (i16 68), ptr %i.ay, align 64, !tbaa !132
  store <32 x i16> splat (i16 68), ptr %i.az, align 64, !tbaa !132
  store <32 x i16> splat (i16 68), ptr %i.ba, align 64, !tbaa !132
  %index.next165.1 = shl nuw i64 %index164, 1
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.ptr10.1.i, i64 %index.next165.1 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 512
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 576
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 640
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 704
  store <32 x i16> splat (i16 68), ptr %i.bc, align 64, !tbaa !132
  store <32 x i16> splat (i16 68), ptr %i.bd, align 64, !tbaa !132
  store <32 x i16> splat (i16 68), ptr %i.be, align 64, !tbaa !132
  store <32 x i16> splat (i16 68), ptr %i.bf, align 64, !tbaa !132
  %index.next165.2 = shl nuw i64 %index164, 1
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.ptr10.1.i, i64 %index.next165.2 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 768
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 832
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 896
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 960
  store <32 x i16> splat (i16 68), ptr %i.bh, align 64, !tbaa !132
  store <32 x i16> splat (i16 68), ptr %i.bi, align 64, !tbaa !132
  store <32 x i16> splat (i16 68), ptr %i.bj, align 64, !tbaa !132
  store <32 x i16> splat (i16 68), ptr %i.bk, align 64, !tbaa !132
  %index.next165.3 = shl nuw i64 %index164, 1
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.ptr10.1.i, i64 %index.next165.3 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 1024
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 1088
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 1152
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 1216
  store <32 x i16> splat (i16 68), ptr %i.bm, align 64, !tbaa !132
  store <32 x i16> splat (i16 68), ptr %i.bn, align 64, !tbaa !132
  store <32 x i16> splat (i16 68), ptr %i.bo, align 64, !tbaa !132
  store <32 x i16> splat (i16 68), ptr %i.bp, align 64, !tbaa !132
  %index.next165.4 = shl nuw i64 %index164, 1
  %i.bq = getelementptr inbounds nuw i8, ptr %.0.ptr10.1.i, i64 %index.next165.4 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 1280
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 1344
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 1408
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 1472
  store <32 x i16> splat (i16 68), ptr %i.br, align 64, !tbaa !132
  store <32 x i16> splat (i16 68), ptr %i.bs, align 64, !tbaa !132
  store <32 x i16> splat (i16 68), ptr %i.bt, align 64, !tbaa !132
  store <32 x i16> splat (i16 68), ptr %i.bu, align 64, !tbaa !132
  %index.next165.5 = shl nuw i64 %index164, 1
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.ptr10.1.i, i64 %index.next165.5 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 1536
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 1600
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 1664
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 1728
  store <32 x i16> splat (i16 68), ptr %i.bw, align 64, !tbaa !132
  store <32 x i16> splat (i16 68), ptr %i.bx, align 64, !tbaa !132
  store <32 x i16> splat (i16 68), ptr %i.by, align 64, !tbaa !132
  store <32 x i16> splat (i16 68), ptr %i.bz, align 64, !tbaa !132
  %index.next165.6 = shl nuw i64 %index164, 1
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.ptr10.1.i, i64 %index.next165.6 ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 1792
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 1856
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 1920
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 1984
  store <32 x i16> splat (i16 68), ptr %i.cb, align 64, !tbaa !132
  store <32 x i16> splat (i16 68), ptr %i.cc, align 64, !tbaa !132
  store <32 x i16> splat (i16 68), ptr %i.cd, align 64, !tbaa !132
  store <32 x i16> splat (i16 68), ptr %i.ce, align 64, !tbaa !132
  %index.next165.7 = add nuw nsw i64 %index164, 1024 ; 2 uses
  %i.cf = icmp eq i64 %index.next165.7, 65536
  br i1 %i.cf, label %_ZN9Stockfish10MultiArrayINS_10StatsEntryIsLi7183ELb0EEELm2EJLm65536EEE4fillIiEEvRKT_.exit, label %vector.body163, !llvm.loop !137

_ZN9Stockfish10MultiArrayINS_10StatsEntryIsLi7183ELb0EEELm2EJLm65536EEE4fillIiEEvRKT_.exit: ; preds = %vector.body163
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 917504
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  store i32 -689, ptr %i.b, align 4, !tbaa !138
  call void @_ZN9Stockfish10MultiArrayINS_10StatsEntryIsLi10692ELb0EEELm16EJLm64ELm8EEE4fillIiEEvRKT_(ptr noundef nonnull align 2 dereferenceable(16384) %i.cg, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 11419656 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !139, !nonnull !48, !align !49 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 11421128 ; 2 uses
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !112 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 11421136 ; 2 uses
  %i.cm = load i64, ptr %i.cl, align 16, !tbaa !113 ; 4 uses
  %i.cn = load i64, ptr %i.ci, align 8, !tbaa !140 ; 3 uses
  %i.co = mul i64 %i.cn, %i.ck
  %i.cp = udiv i64 %i.co, %i.cm                   ; 5 uses
  %i.cq = add i64 %i.ck, 1                        ; 3 uses
  %i.cr = icmp eq i64 %i.cq, %i.cm
  br i1 %i.cr, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZN9Stockfish10MultiArrayINS_10StatsEntryIsLi7183ELb0EEELm2EJLm65536EEE4fillIiEEvRKT_.exit
  %i.cs = mul i64 %i.cn, %i.cq
  %i.ct = udiv i64 %i.cs, %i.cm
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZN9Stockfish10MultiArrayINS_10StatsEntryIsLi7183ELb0EEELm2EJLm65536EEE4fillIiEEvRKT_.exit
  %i.cu = phi i64 [ %i.ct, %bb.a ], [ %i.cn, %_ZN9Stockfish10MultiArrayINS_10StatsEntryIsLi7183ELb0EEELm2EJLm65536EEE4fillIiEEvRKT_.exit ] ; 4 uses
  %i.cv = icmp ult i64 %i.cp, %i.cu
  br i1 %i.cv, label %.lr.ph.i, label %_ZN9Stockfish8DynStatsINS_10MultiArrayINS_16CorrectionBundleIsLi1024EEELm2EJEEELi65536EE11clear_rangeEimm.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ci, i64 8 ; 9 uses
  %i.cx = sub nuw i64 %i.cu, %i.cp
  %xtraiter = and i64 %i.cx, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i, %.prol.preheader
  %.012.i.prol = phi i64 [ %i.cy, %.prol.preheader ], [ %i.cp, %.lr.ph.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i ]
  %i.cy = add nuw i64 %.012.i.prol, 1             ; 2 uses
  %i.cz = load ptr, ptr %i.cw, align 8, !tbaa !149
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %i.cz, i64 %.012.i.prol ; 8 uses
  store atomic i16 0, ptr %i.da monotonic, align 2
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 2
  store atomic i16 0, ptr %i.db monotonic, align 2
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 4
  store atomic i16 0, ptr %i.dc monotonic, align 2
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 6
  store atomic i16 0, ptr %i.dd monotonic, align 2
  %.0.ptr.1.i.i.prol = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store atomic i16 0, ptr %.0.ptr.1.i.i.prol monotonic, align 2
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 10
  store atomic i16 0, ptr %i.de monotonic, align 2
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 12
  store atomic i16 0, ptr %i.df monotonic, align 2
  %i.dg = getelementptr inbounds nuw i8, ptr %i.da, i64 14
  store atomic i16 0, ptr %i.dg monotonic, align 2
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !150

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i
  %.012.i.unr = phi i64 [ %i.cp, %.lr.ph.i ], [ %i.cy, %.prol.preheader ]
  %i.dh = sub i64 %i.cp, %i.cu
  %i.di = icmp ugt i64 %i.dh, -8
  br i1 %i.di, label %_ZN9Stockfish8DynStatsINS_10MultiArrayINS_16CorrectionBundleIsLi1024EEELm2EJEEELi65536EE11clear_rangeEimm.exit.loopexit, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %.lr.ph.i.new
  %.012.i = phi i64 [ %i.ft, %.lr.ph.i.new ], [ %.012.i.unr, %.prol.loopexit ] ; 9 uses
  %i.dj = load ptr, ptr %i.cw, align 8, !tbaa !149
  %i.dk = getelementptr inbounds nuw [16 x i8], ptr %i.dj, i64 %.012.i ; 8 uses
  store atomic i16 0, ptr %i.dk monotonic, align 2
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 2
  store atomic i16 0, ptr %i.dl monotonic, align 2
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 4
  store atomic i16 0, ptr %i.dm monotonic, align 2
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 6
  store atomic i16 0, ptr %i.dn monotonic, align 2
  %.0.ptr.1.i.i = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store atomic i16 0, ptr %.0.ptr.1.i.i monotonic, align 2
  %i.do = getelementptr inbounds nuw i8, ptr %i.dk, i64 10
  store atomic i16 0, ptr %i.do monotonic, align 2
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dk, i64 12
  store atomic i16 0, ptr %i.dp monotonic, align 2
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dk, i64 14
  store atomic i16 0, ptr %i.dq monotonic, align 2
  %i.dr = load ptr, ptr %i.cw, align 8, !tbaa !149
  %i.ds = getelementptr inbounds nuw [16 x i8], ptr %i.dr, i64 %.012.i ; 8 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  store atomic i16 0, ptr %i.dt monotonic, align 2
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 18
  store atomic i16 0, ptr %i.du monotonic, align 2
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 20
  store atomic i16 0, ptr %i.dv monotonic, align 2
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ds, i64 22
  store atomic i16 0, ptr %i.dw monotonic, align 2
  %.0.ptr.1.i.i.1 = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  store atomic i16 0, ptr %.0.ptr.1.i.i.1 monotonic, align 2
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ds, i64 26
  store atomic i16 0, ptr %i.dx monotonic, align 2
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ds, i64 28
  store atomic i16 0, ptr %i.dy monotonic, align 2
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ds, i64 30
  store atomic i16 0, ptr %i.dz monotonic, align 2
  %i.ea = load ptr, ptr %i.cw, align 8, !tbaa !149
  %i.eb = getelementptr inbounds nuw [16 x i8], ptr %i.ea, i64 %.012.i ; 8 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 32
  store atomic i16 0, ptr %i.ec monotonic, align 2
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 34
  store atomic i16 0, ptr %i.ed monotonic, align 2
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 36
  store atomic i16 0, ptr %i.ee monotonic, align 2
  %i.ef = getelementptr inbounds nuw i8, ptr %i.eb, i64 38
  store atomic i16 0, ptr %i.ef monotonic, align 2
  %.0.ptr.1.i.i.2 = getelementptr inbounds nuw i8, ptr %i.eb, i64 40
  store atomic i16 0, ptr %.0.ptr.1.i.i.2 monotonic, align 2
  %i.eg = getelementptr inbounds nuw i8, ptr %i.eb, i64 42
  store atomic i16 0, ptr %i.eg monotonic, align 2
end_hunk_0
begin_hunk_1_@_ZN9Stockfish6Search6Worker19iterative_deepeningEv:iter.check
  %wide.gep.9 = getelementptr inbounds nuw [56 x i8], ptr %i.l, <16 x i64> <i64 144, i64 145, i64 146, i64 147, i64 148, i64 149, i64 150, i64 151, i64 152, i64 153, i64 154, i64 155, i64 156, i64 157, i64 158, i64 159>
  %wide.gep466.9 = getelementptr inbounds nuw i8, <16 x ptr> %wide.gep.9, i64 24
  call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> <i32 144, i32 145, i32 146, i32 147, i32 148, i32 149, i32 150, i32 151, i32 152, i32 153, i32 154, i32 155, i32 156, i32 157, i32 158, i32 159>, <16 x ptr> align 8 %wide.gep466.9, <16 x i1> splat (i1 true)), !tbaa !253
  %wide.gep.10 = getelementptr inbounds nuw [56 x i8], ptr %i.l, <16 x i64> <i64 160, i64 161, i64 162, i64 163, i64 164, i64 165, i64 166, i64 167, i64 168, i64 169, i64 170, i64 171, i64 172, i64 173, i64 174, i64 175>
  %wide.gep466.10 = getelementptr inbounds nuw i8, <16 x ptr> %wide.gep.10, i64 24
  call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> <i32 160, i32 161, i32 162, i32 163, i32 164, i32 165, i32 166, i32 167, i32 168, i32 169, i32 170, i32 171, i32 172, i32 173, i32 174, i32 175>, <16 x ptr> align 8 %wide.gep466.10, <16 x i1> splat (i1 true)), !tbaa !253
  %wide.gep.11 = getelementptr inbounds nuw [56 x i8], ptr %i.l, <16 x i64> <i64 176, i64 177, i64 178, i64 179, i64 180, i64 181, i64 182, i64 183, i64 184, i64 185, i64 186, i64 187, i64 188, i64 189, i64 190, i64 191>
  %wide.gep466.11 = getelementptr inbounds nuw i8, <16 x ptr> %wide.gep.11, i64 24
  call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> <i32 176, i32 177, i32 178, i32 179, i32 180, i32 181, i32 182, i32 183, i32 184, i32 185, i32 186, i32 187, i32 188, i32 189, i32 190, i32 191>, <16 x ptr> align 8 %wide.gep466.11, <16 x i1> splat (i1 true)), !tbaa !253
  %wide.gep.12 = getelementptr inbounds nuw [56 x i8], ptr %i.l, <16 x i64> <i64 192, i64 193, i64 194, i64 195, i64 196, i64 197, i64 198, i64 199, i64 200, i64 201, i64 202, i64 203, i64 204, i64 205, i64 206, i64 207>
  %wide.gep466.12 = getelementptr inbounds nuw i8, <16 x ptr> %wide.gep.12, i64 24
  call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> <i32 192, i32 193, i32 194, i32 195, i32 196, i32 197, i32 198, i32 199, i32 200, i32 201, i32 202, i32 203, i32 204, i32 205, i32 206, i32 207>, <16 x ptr> align 8 %wide.gep466.12, <16 x i1> splat (i1 true)), !tbaa !253
  %wide.gep.13 = getelementptr inbounds nuw [56 x i8], ptr %i.l, <16 x i64> <i64 208, i64 209, i64 210, i64 211, i64 212, i64 213, i64 214, i64 215, i64 216, i64 217, i64 218, i64 219, i64 220, i64 221, i64 222, i64 223>
  %wide.gep466.13 = getelementptr inbounds nuw i8, <16 x ptr> %wide.gep.13, i64 24
  call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> <i32 208, i32 209, i32 210, i32 211, i32 212, i32 213, i32 214, i32 215, i32 216, i32 217, i32 218, i32 219, i32 220, i32 221, i32 222, i32 223>, <16 x ptr> align 8 %wide.gep466.13, <16 x i1> splat (i1 true)), !tbaa !253
  %wide.gep.14 = getelementptr inbounds nuw [56 x i8], ptr %i.l, <16 x i64> <i64 224, i64 225, i64 226, i64 227, i64 228, i64 229, i64 230, i64 231, i64 232, i64 233, i64 234, i64 235, i64 236, i64 237, i64 238, i64 239>
  %wide.gep466.14 = getelementptr inbounds nuw i8, <16 x ptr> %wide.gep.14, i64 24
  call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> <i32 224, i32 225, i32 226, i32 227, i32 228, i32 229, i32 230, i32 231, i32 232, i32 233, i32 234, i32 235, i32 236, i32 237, i32 238, i32 239>, <16 x ptr> align 8 %wide.gep466.14, <16 x i1> splat (i1 true)), !tbaa !253
  %wide.gep474 = getelementptr inbounds nuw [56 x i8], ptr %i.l, <8 x i64> <i64 240, i64 241, i64 242, i64 243, i64 244, i64 245, i64 246, i64 247>
  %wide.gep475 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep474, i64 24
  call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> <i32 240, i32 241, i32 242, i32 243, i32 244, i32 245, i32 246, i32 247>, <8 x ptr> align 8 %wide.gep475, <8 x i1> splat (i1 true)), !tbaa !253
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 14304
  store i32 248, ptr %i.aj, align 16, !tbaa !253
  %i.ak = icmp eq i64 %i.c, 0
  %i.al = select i1 %i.ak, ptr %i.e, ptr null     ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 11419840
  store ptr %1, ptr %i.l, align 8, !tbaa !254
  %i.an = icmp ne ptr %i.al, null                 ; 7 uses
  br i1 %i.an, label %bb.a, label %._crit_edge.i.i

bb.a:                                             ; preds = %iter.check
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !239 ; 2 uses
  %i.aq = icmp eq i32 %i.ap, 32001
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  br i1 %i.aq, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ar, i8 0, i64 16, i1 false)
  br label %._crit_edge.i.i

bb.c:                                             ; preds = %bb.a
  %i.as = insertelement <4 x i32> poison, i32 %i.ap, i64 0
  %i.at = shufflevector <4 x i32> %i.as, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %i.at, ptr %i.ar, align 8, !tbaa !138
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.b, %bb.c, %iter.check
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 11422200 ; 4 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !173, !nonnull !48, !align !49
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.aw, ptr %4, align 8, !tbaa !225
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.aw, ptr noundef nonnull align 1 dereferenceable(7) @.str.4, i64 7, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 7, ptr %i.ax, align 8, !tbaa !228
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 23
  store i8 0, ptr %i.ay, align 1, !tbaa !130
  %i.az = call noundef nonnull align 8 dereferenceable(152) ptr @_ZNK9Stockfish10OptionsMapixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %i.av, ptr noundef nonnull align 8 dereferenceable(32) %4) #33
  %i.ba = call noundef i32 @_ZNK9Stockfish6OptioncviEv(ptr noundef nonnull align 8 dereferenceable(152) %i.az) #33
  %i.bb = sext i32 %i.ba to i64                   ; 2 uses
  %i.bc = load ptr, ptr %4, align 8, !tbaa !230   ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.aw
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %._crit_edge.i.i
  %i.be = load i64, ptr %i.aw, align 8, !tbaa !130
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bf) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %._crit_edge.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  %i.bg = load ptr, ptr %i.au, align 8, !tbaa !173, !nonnull !48, !align !49
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.bh, ptr %6, align 8, !tbaa !225
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.bh, ptr noundef nonnull align 1 dereferenceable(11) @.str, i64 11, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 11, ptr %i.bi, align 8, !tbaa !228
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 27
  store i8 0, ptr %i.bj, align 1, !tbaa !130
  %i.bk = call noundef nonnull align 8 dereferenceable(152) ptr @_ZNK9Stockfish10OptionsMapixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %i.bg, ptr noundef nonnull align 8 dereferenceable(32) %6) #33
  %i.bl = call noundef i32 @_ZNK9Stockfish6OptioncviEv(ptr noundef nonnull align 8 dereferenceable(152) %i.bk) #33 ; 2 uses
  %i.bm = load ptr, ptr %i.au, align 8, !tbaa !173, !nonnull !48, !align !49
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.bn, ptr %7, align 8, !tbaa !225
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store i64 17, ptr %i.a, align 8, !tbaa !25
  %i.bo = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #33 ; 2 uses
  store ptr %i.bo, ptr %7, align 8, !tbaa !230
  %i.bp = load i64, ptr %i.a, align 8, !tbaa !25  ; 3 uses
  store i64 %i.bp, ptr %i.bn, align 8, !tbaa !130
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.bo, ptr noundef nonnull align 1 dereferenceable(17) @.str.2, i64 17, i1 false)
  %i.bq = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.bp, ptr %i.bq, align 8, !tbaa !228
  %i.br = load ptr, ptr %7, align 8, !tbaa !230
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bp
  store i8 0, ptr %i.bs, align 1, !tbaa !130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  %i.bt = call noundef nonnull align 8 dereferenceable(152) ptr @_ZNK9Stockfish10OptionsMapixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %i.bm, ptr noundef nonnull align 8 dereferenceable(32) %7) #33
  %i.bu = call noundef i32 @_ZNK9Stockfish6OptioncviEv(ptr noundef nonnull align 8 dereferenceable(152) %i.bt) #33
  %.not.not = icmp eq i32 %i.bu, 0
  br i1 %.not.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210, label %._crit_edge.i.i206

._crit_edge.i.i206:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bv = load ptr, ptr %i.au, align 8, !tbaa !173, !nonnull !48, !align !49
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  %i.bw = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  store ptr %i.bw, ptr %8, align 8, !tbaa !225
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.bw, ptr noundef nonnull align 1 dereferenceable(7) @.str.3, i64 7, i1 false)
  %i.bx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 7, ptr %i.bx, align 8, !tbaa !228
  %i.by = getelementptr inbounds nuw i8, ptr %8, i64 23
  store i8 0, ptr %i.by, align 1, !tbaa !130
  %i.bz = call noundef nonnull align 8 dereferenceable(152) ptr @_ZNK9Stockfish10OptionsMapixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %i.bv, ptr noundef nonnull align 8 dereferenceable(32) %8) #33
  %i.ca = call noundef i32 @_ZNK9Stockfish6OptioncviEv(ptr noundef nonnull align 8 dereferenceable(152) %i.bz) #33 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i16 0, ptr %i.cb, align 8
  %.not.i = icmp eq i32 %i.ca, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge.i.i206
  %i.cc = add nsw i32 %i.ca, -1320
  %i.cd = sitofp i32 %i.cc to double
  %i.ce = fdiv double %i.cd, 1.870000e+03         ; 3 uses
  %i.cf = call double @llvm.fmuladd.f64(double %i.ce, double 3.724730e+01, double -4.085250e+01)
  %i.cg = call double @llvm.fmuladd.f64(double %i.cf, double %i.ce, double 2.229430e+01)
  %i.ch = call double @llvm.fmuladd.f64(double %i.cg, double %i.ce, double -3.114380e-01) ; 2 uses
  %i.ci = fcmp olt double %i.ch, 0.000000e+00
  %i.cj = select i1 %i.ci, double 0.000000e+00, double %i.ch ; 2 uses
  %i.ck = fcmp ogt double %i.cj, 1.900000e+01
  %.sroa.speculated.i = select i1 %i.ck, double 1.900000e+01, double %i.cj
  br label %_ZN9Stockfish6Search5SkillC2Eii.exit

bb.e:                                             ; preds = %._crit_edge.i.i206
  %i.cl = sitofp i32 %i.bl to double
  br label %_ZN9Stockfish6Search5SkillC2Eii.exit

_ZN9Stockfish6Search5SkillC2Eii.exit:             ; preds = %bb.d, %bb.e
  %storemerge.i = phi double [ %.sroa.speculated.i, %bb.d ], [ %i.cl, %bb.e ] ; 2 uses
  store double %storemerge.i, ptr %5, align 8, !tbaa !255
  %i.cm = load ptr, ptr %8, align 8, !tbaa !230   ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %i.bw
  br i1 %i.cn, label %.critedge190, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208: ; preds = %_ZN9Stockfish6Search5SkillC2Eii.exit
  %i.co = load i64, ptr %i.bw, align 8, !tbaa !130
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.cp) #38
  br label %.critedge190

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i16 0, ptr %i.cq, align 8
  %i.cr = sitofp i32 %i.bl to double              ; 2 uses
  store double %i.cr, ptr %5, align 8, !tbaa !255
  br label %.critedge192

.critedge190:                                     ; preds = %_ZN9Stockfish6Search5SkillC2Eii.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  br label %.critedge192

.critedge192:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210, %.critedge190
  %i.cs = phi double [ %i.cr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210 ], [ %storemerge.i, %.critedge190 ]
  %i.ct = load ptr, ptr %7, align 8, !tbaa !230   ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.bn
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit214, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i212

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i212: ; preds = %.critedge192
  %i.cv = load i64, ptr %i.bn, align 8, !tbaa !130
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cw) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit214

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit214: ; preds = %.critedge192, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i212
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  %i.cx = load ptr, ptr %6, align 8, !tbaa !230   ; 2 uses
  %i.cy = icmp eq ptr %i.cx, %i.bh
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i215

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i215: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit214
  %i.cz = load i64, ptr %i.bh, align 8, !tbaa !130
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.da) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit214, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i215
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 11421080 ; 15 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 11421088 ; 6 uses
  %i.dd = load ptr, ptr %i.dc, align 32, !tbaa !193
  %i.de = load ptr, ptr %i.db, align 8, !tbaa !233
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 262144 ; 8 uses
  br label %vector.body480

vector.body480:                                   ; preds = %vector.body480, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217
  %index481 = phi i64 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217 ], [ %index.next482.7, %vector.body480 ] ; 9 uses
  %i.dg = shl nuw nsw i64 %index481, 1
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.dg ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 64
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 128
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 192
  store <32 x i16> splat (i16 97), ptr %i.dh, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.di, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.dj, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.dk, align 64, !tbaa !132
  %index.next482 = shl nuw i64 %index481, 1
  %i.dl = getelementptr inbounds nuw i8, ptr %i.df, i64 %index.next482 ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 256
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 320
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 384
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 448
  store <32 x i16> splat (i16 97), ptr %i.dm, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.dn, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.do, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.dp, align 64, !tbaa !132
  %index.next482.1 = shl nuw i64 %index481, 1
  %i.dq = getelementptr inbounds nuw i8, ptr %i.df, i64 %index.next482.1 ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 512
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 576
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 640
  %i.du = getelementptr inbounds nuw i8, ptr %i.dq, i64 704
  store <32 x i16> splat (i16 97), ptr %i.dr, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.ds, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.dt, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.du, align 64, !tbaa !132
  %index.next482.2 = shl nuw i64 %index481, 1
  %i.dv = getelementptr inbounds nuw i8, ptr %i.df, i64 %index.next482.2 ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 768
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 832
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 896
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 960
  store <32 x i16> splat (i16 97), ptr %i.dw, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.dx, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.dy, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.dz, align 64, !tbaa !132
  %index.next482.3 = shl nuw i64 %index481, 1
  %i.ea = getelementptr inbounds nuw i8, ptr %i.df, i64 %index.next482.3 ; 4 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 1024
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 1088
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 1152
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ea, i64 1216
  store <32 x i16> splat (i16 97), ptr %i.eb, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.ec, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.ed, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.ee, align 64, !tbaa !132
  %index.next482.4 = shl nuw i64 %index481, 1
  %i.ef = getelementptr inbounds nuw i8, ptr %i.df, i64 %index.next482.4 ; 4 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 1280
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 1344
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 1408
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ef, i64 1472
  store <32 x i16> splat (i16 97), ptr %i.eg, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.eh, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.ei, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.ej, align 64, !tbaa !132
  %index.next482.5 = shl nuw i64 %index481, 1
  %i.ek = getelementptr inbounds nuw i8, ptr %i.df, i64 %index.next482.5 ; 4 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 1536
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 1600
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 1664
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ek, i64 1728
  store <32 x i16> splat (i16 97), ptr %i.el, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.em, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.en, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.eo, align 64, !tbaa !132
  %index.next482.6 = shl nuw i64 %index481, 1
  %i.ep = getelementptr inbounds nuw i8, ptr %i.df, i64 %index.next482.6 ; 4 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 1792
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 1856
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 1920
  %i.et = getelementptr inbounds nuw i8, ptr %i.ep, i64 1984
  store <32 x i16> splat (i16 97), ptr %i.eq, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.er, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.es, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.et, align 64, !tbaa !132
  %index.next482.7 = add nuw nsw i64 %index481, 1024 ; 2 uses
  %i.eu = icmp eq i64 %index.next482.7, 65536
  br i1 %i.eu, label %_ZN9Stockfish10MultiArrayINS_10StatsEntryIsLi7183ELb0EEELm65536EJEE4fillIiEEvRKT_.exit.i, label %vector.body480, !llvm.loop !257

_ZN9Stockfish10MultiArrayINS_10StatsEntryIsLi7183ELb0EEELm65536EJEE4fillIiEEvRKT_.exit.i: ; preds = %vector.body480
  %.0.ptr10.1.i = getelementptr inbounds nuw i8, ptr %0, i64 393216 ; 8 uses
  br label %vector.body485

vector.body485:                                   ; preds = %vector.body485, %_ZN9Stockfish10MultiArrayINS_10StatsEntryIsLi7183ELb0EEELm65536EJEE4fillIiEEvRKT_.exit.i
  %index486 = phi i64 [ 0, %_ZN9Stockfish10MultiArrayINS_10StatsEntryIsLi7183ELb0EEELm65536EJEE4fillIiEEvRKT_.exit.i ], [ %index.next487.7, %vector.body485 ] ; 9 uses
  %i.ev = shl nuw nsw i64 %index486, 1
  %i.ew = getelementptr inbounds nuw i8, ptr %.0.ptr10.1.i, i64 %i.ev ; 4 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 64
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 128
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 192
  store <32 x i16> splat (i16 97), ptr %i.ew, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.ex, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.ey, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.ez, align 64, !tbaa !132
  %index.next487 = shl nuw i64 %index486, 1
  %i.fa = getelementptr inbounds nuw i8, ptr %.0.ptr10.1.i, i64 %index.next487 ; 4 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 256
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 320
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 384
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fa, i64 448
  store <32 x i16> splat (i16 97), ptr %i.fb, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.fc, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.fd, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.fe, align 64, !tbaa !132
  %index.next487.1 = shl nuw i64 %index486, 1
  %i.ff = getelementptr inbounds nuw i8, ptr %.0.ptr10.1.i, i64 %index.next487.1 ; 4 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 512
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 576
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ff, i64 640
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ff, i64 704
  store <32 x i16> splat (i16 97), ptr %i.fg, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.fh, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.fi, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.fj, align 64, !tbaa !132
  %index.next487.2 = shl nuw i64 %index486, 1
  %i.fk = getelementptr inbounds nuw i8, ptr %.0.ptr10.1.i, i64 %index.next487.2 ; 4 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 768
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fk, i64 832
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fk, i64 896
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fk, i64 960
  store <32 x i16> splat (i16 97), ptr %i.fl, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.fm, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.fn, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.fo, align 64, !tbaa !132
  %index.next487.3 = shl nuw i64 %index486, 1
  %i.fp = getelementptr inbounds nuw i8, ptr %.0.ptr10.1.i, i64 %index.next487.3 ; 4 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 1024
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 1088
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 1152
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fp, i64 1216
  store <32 x i16> splat (i16 97), ptr %i.fq, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.fr, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.fs, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.ft, align 64, !tbaa !132
  %index.next487.4 = shl nuw i64 %index486, 1
  %i.fu = getelementptr inbounds nuw i8, ptr %.0.ptr10.1.i, i64 %index.next487.4 ; 4 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 1280
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fu, i64 1344
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fu, i64 1408
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fu, i64 1472
  store <32 x i16> splat (i16 97), ptr %i.fv, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.fw, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.fx, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.fy, align 64, !tbaa !132
  %index.next487.5 = shl nuw i64 %index486, 1
  %i.fz = getelementptr inbounds nuw i8, ptr %.0.ptr10.1.i, i64 %index.next487.5 ; 4 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 1536
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fz, i64 1600
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fz, i64 1664
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fz, i64 1728
  store <32 x i16> splat (i16 97), ptr %i.ga, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.gb, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.gc, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.gd, align 64, !tbaa !132
  %index.next487.6 = shl nuw i64 %index486, 1
  %i.ge = getelementptr inbounds nuw i8, ptr %.0.ptr10.1.i, i64 %index.next487.6 ; 4 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 1792
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 1856
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 1920
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ge, i64 1984
  store <32 x i16> splat (i16 97), ptr %i.gf, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.gg, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.gh, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.gi, align 64, !tbaa !132
  %index.next487.7 = add nuw nsw i64 %index486, 1024 ; 2 uses
  %i.gj = icmp eq i64 %index.next487.7, 65536
  br i1 %i.gj, label %_ZN9Stockfish10MultiArrayINS_10StatsEntryIsLi7183ELb0EEELm65536EJEE4fillIiEEvRKT_.exit.1.i, label %vector.body485, !llvm.loop !258

_ZN9Stockfish10MultiArrayINS_10StatsEntryIsLi7183ELb0EEELm65536EJEE4fillIiEEvRKT_.exit.1.i: ; preds = %vector.body485
  %.0.ptr10.2.i = getelementptr inbounds nuw i8, ptr %0, i64 524288 ; 8 uses
  br label %vector.body490

vector.body490:                                   ; preds = %vector.body490, %_ZN9Stockfish10MultiArrayINS_10StatsEntryIsLi7183ELb0EEELm65536EJEE4fillIiEEvRKT_.exit.1.i
  %index491 = phi i64 [ 0, %_ZN9Stockfish10MultiArrayINS_10StatsEntryIsLi7183ELb0EEELm65536EJEE4fillIiEEvRKT_.exit.1.i ], [ %index.next492.7, %vector.body490 ] ; 9 uses
  %i.gk = shl nuw nsw i64 %index491, 1
  %i.gl = getelementptr inbounds nuw i8, ptr %.0.ptr10.2.i, i64 %i.gk ; 4 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 64
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 128
  %i.go = getelementptr inbounds nuw i8, ptr %i.gl, i64 192
  store <32 x i16> splat (i16 97), ptr %i.gl, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.gm, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.gn, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.go, align 64, !tbaa !132
  %index.next492 = shl nuw i64 %index491, 1
  %i.gp = getelementptr inbounds nuw i8, ptr %.0.ptr10.2.i, i64 %index.next492 ; 4 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 256
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gp, i64 320
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gp, i64 384
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gp, i64 448
  store <32 x i16> splat (i16 97), ptr %i.gq, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.gr, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.gs, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.gt, align 64, !tbaa !132
  %index.next492.1 = shl nuw i64 %index491, 1
  %i.gu = getelementptr inbounds nuw i8, ptr %.0.ptr10.2.i, i64 %index.next492.1 ; 4 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 512
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gu, i64 576
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gu, i64 640
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gu, i64 704
  store <32 x i16> splat (i16 97), ptr %i.gv, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.gw, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.gx, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.gy, align 64, !tbaa !132
  %index.next492.2 = shl nuw i64 %index491, 1
  %i.gz = getelementptr inbounds nuw i8, ptr %.0.ptr10.2.i, i64 %index.next492.2 ; 4 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 768
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gz, i64 832
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gz, i64 896
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gz, i64 960
  store <32 x i16> splat (i16 97), ptr %i.ha, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.hb, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.hc, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.hd, align 64, !tbaa !132
  %index.next492.3 = shl nuw i64 %index491, 1
  %i.he = getelementptr inbounds nuw i8, ptr %.0.ptr10.2.i, i64 %index.next492.3 ; 4 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 1024
  %i.hg = getelementptr inbounds nuw i8, ptr %i.he, i64 1088
  %i.hh = getelementptr inbounds nuw i8, ptr %i.he, i64 1152
  %i.hi = getelementptr inbounds nuw i8, ptr %i.he, i64 1216
  store <32 x i16> splat (i16 97), ptr %i.hf, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.hg, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.hh, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.hi, align 64, !tbaa !132
  %index.next492.4 = shl nuw i64 %index491, 1
  %i.hj = getelementptr inbounds nuw i8, ptr %.0.ptr10.2.i, i64 %index.next492.4 ; 4 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 1280
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hj, i64 1344
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hj, i64 1408
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hj, i64 1472
  store <32 x i16> splat (i16 97), ptr %i.hk, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.hl, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.hm, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.hn, align 64, !tbaa !132
  %index.next492.5 = shl nuw i64 %index491, 1
  %i.ho = getelementptr inbounds nuw i8, ptr %.0.ptr10.2.i, i64 %index.next492.5 ; 4 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 1536
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ho, i64 1600
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ho, i64 1664
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ho, i64 1728
  store <32 x i16> splat (i16 97), ptr %i.hp, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.hq, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.hr, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.hs, align 64, !tbaa !132
  %index.next492.6 = shl nuw i64 %index491, 1
  %i.ht = getelementptr inbounds nuw i8, ptr %.0.ptr10.2.i, i64 %index.next492.6 ; 4 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 1792
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ht, i64 1856
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ht, i64 1920
  %i.hx = getelementptr inbounds nuw i8, ptr %i.ht, i64 1984
  store <32 x i16> splat (i16 97), ptr %i.hu, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.hv, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.hw, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.hx, align 64, !tbaa !132
  %index.next492.7 = add nuw nsw i64 %index491, 1024 ; 2 uses
  %i.hy = icmp eq i64 %index.next492.7, 65536
  br i1 %i.hy, label %_ZN9Stockfish10MultiArrayINS_10StatsEntryIsLi7183ELb0EEELm65536EJEE4fillIiEEvRKT_.exit.2.i, label %vector.body490, !llvm.loop !259

_ZN9Stockfish10MultiArrayINS_10StatsEntryIsLi7183ELb0EEELm65536EJEE4fillIiEEvRKT_.exit.2.i: ; preds = %vector.body490
  %.0.ptr10.3.i = getelementptr inbounds nuw i8, ptr %0, i64 655360 ; 8 uses
  br label %vector.body495

vector.body495:                                   ; preds = %vector.body495, %_ZN9Stockfish10MultiArrayINS_10StatsEntryIsLi7183ELb0EEELm65536EJEE4fillIiEEvRKT_.exit.2.i
  %index496 = phi i64 [ 0, %_ZN9Stockfish10MultiArrayINS_10StatsEntryIsLi7183ELb0EEELm65536EJEE4fillIiEEvRKT_.exit.2.i ], [ %index.next497.7, %vector.body495 ] ; 9 uses
  %i.hz = shl nuw nsw i64 %index496, 1
  %i.ia = getelementptr inbounds nuw i8, ptr %.0.ptr10.3.i, i64 %i.hz ; 4 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 64
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ia, i64 128
  %i.id = getelementptr inbounds nuw i8, ptr %i.ia, i64 192
  store <32 x i16> splat (i16 97), ptr %i.ia, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.ib, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.ic, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.id, align 64, !tbaa !132
  %index.next497 = shl nuw i64 %index496, 1
  %i.ie = getelementptr inbounds nuw i8, ptr %.0.ptr10.3.i, i64 %index.next497 ; 4 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 256
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ie, i64 320
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ie, i64 384
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ie, i64 448
  store <32 x i16> splat (i16 97), ptr %i.if, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.ig, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.ih, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.ii, align 64, !tbaa !132
  %index.next497.1 = shl nuw i64 %index496, 1
  %i.ij = getelementptr inbounds nuw i8, ptr %.0.ptr10.3.i, i64 %index.next497.1 ; 4 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 512
  %i.il = getelementptr inbounds nuw i8, ptr %i.ij, i64 576
  %i.im = getelementptr inbounds nuw i8, ptr %i.ij, i64 640
  %i.in = getelementptr inbounds nuw i8, ptr %i.ij, i64 704
  store <32 x i16> splat (i16 97), ptr %i.ik, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.il, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.im, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.in, align 64, !tbaa !132
  %index.next497.2 = shl nuw i64 %index496, 1
  %i.io = getelementptr inbounds nuw i8, ptr %.0.ptr10.3.i, i64 %index.next497.2 ; 4 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 768
  %i.iq = getelementptr inbounds nuw i8, ptr %i.io, i64 832
  %i.ir = getelementptr inbounds nuw i8, ptr %i.io, i64 896
  %i.is = getelementptr inbounds nuw i8, ptr %i.io, i64 960
  store <32 x i16> splat (i16 97), ptr %i.ip, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.iq, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.ir, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.is, align 64, !tbaa !132
  %index.next497.3 = shl nuw i64 %index496, 1
  %i.it = getelementptr inbounds nuw i8, ptr %.0.ptr10.3.i, i64 %index.next497.3 ; 4 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 1024
  %i.iv = getelementptr inbounds nuw i8, ptr %i.it, i64 1088
  %i.iw = getelementptr inbounds nuw i8, ptr %i.it, i64 1152
  %i.ix = getelementptr inbounds nuw i8, ptr %i.it, i64 1216
  store <32 x i16> splat (i16 97), ptr %i.iu, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.iv, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.iw, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.ix, align 64, !tbaa !132
  %index.next497.4 = shl nuw i64 %index496, 1
  %i.iy = getelementptr inbounds nuw i8, ptr %.0.ptr10.3.i, i64 %index.next497.4 ; 4 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 1280
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iy, i64 1344
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iy, i64 1408
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iy, i64 1472
  store <32 x i16> splat (i16 97), ptr %i.iz, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.ja, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.jb, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.jc, align 64, !tbaa !132
  %index.next497.5 = shl nuw i64 %index496, 1
  %i.jd = getelementptr inbounds nuw i8, ptr %.0.ptr10.3.i, i64 %index.next497.5 ; 4 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 1536
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jd, i64 1600
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jd, i64 1664
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jd, i64 1728
  store <32 x i16> splat (i16 97), ptr %i.je, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.jf, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.jg, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.jh, align 64, !tbaa !132
  %index.next497.6 = shl nuw i64 %index496, 1
  %i.ji = getelementptr inbounds nuw i8, ptr %.0.ptr10.3.i, i64 %index.next497.6 ; 4 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 1792
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ji, i64 1856
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ji, i64 1920
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ji, i64 1984
  store <32 x i16> splat (i16 97), ptr %i.jj, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.jk, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.jl, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.jm, align 64, !tbaa !132
  %index.next497.7 = add nuw nsw i64 %index496, 1024 ; 2 uses
  %i.jn = icmp eq i64 %index.next497.7, 65536
  br i1 %i.jn, label %_ZN9Stockfish10MultiArrayINS_10StatsEntryIsLi7183ELb0EEELm65536EJEE4fillIiEEvRKT_.exit.3.i, label %vector.body495, !llvm.loop !260

_ZN9Stockfish10MultiArrayINS_10StatsEntryIsLi7183ELb0EEELm65536EJEE4fillIiEEvRKT_.exit.3.i: ; preds = %vector.body495
  %.0.ptr10.4.i = getelementptr inbounds nuw i8, ptr %0, i64 786432 ; 8 uses
  br label %vector.body500

vector.body500:                                   ; preds = %vector.body500, %_ZN9Stockfish10MultiArrayINS_10StatsEntryIsLi7183ELb0EEELm65536EJEE4fillIiEEvRKT_.exit.3.i
  %index501 = phi i64 [ 0, %_ZN9Stockfish10MultiArrayINS_10StatsEntryIsLi7183ELb0EEELm65536EJEE4fillIiEEvRKT_.exit.3.i ], [ %index.next502.7, %vector.body500 ] ; 9 uses
  %i.jo = shl nuw nsw i64 %index501, 1
  %i.jp = getelementptr inbounds nuw i8, ptr %.0.ptr10.4.i, i64 %i.jo ; 4 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 64
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jp, i64 128
  %i.js = getelementptr inbounds nuw i8, ptr %i.jp, i64 192
  store <32 x i16> splat (i16 97), ptr %i.jp, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.jq, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.jr, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.js, align 64, !tbaa !132
  %index.next502 = shl nuw i64 %index501, 1
  %i.jt = getelementptr inbounds nuw i8, ptr %.0.ptr10.4.i, i64 %index.next502 ; 4 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 256
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jt, i64 320
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jt, i64 384
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jt, i64 448
  store <32 x i16> splat (i16 97), ptr %i.ju, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.jv, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.jw, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.jx, align 64, !tbaa !132
  %index.next502.1 = shl nuw i64 %index501, 1
  %i.jy = getelementptr inbounds nuw i8, ptr %.0.ptr10.4.i, i64 %index.next502.1 ; 4 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 512
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jy, i64 576
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jy, i64 640
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jy, i64 704
  store <32 x i16> splat (i16 97), ptr %i.jz, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.ka, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.kb, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.kc, align 64, !tbaa !132
  %index.next502.2 = shl nuw i64 %index501, 1
  %i.kd = getelementptr inbounds nuw i8, ptr %.0.ptr10.4.i, i64 %index.next502.2 ; 4 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 768
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kd, i64 832
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kd, i64 896
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kd, i64 960
  store <32 x i16> splat (i16 97), ptr %i.ke, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.kf, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.kg, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.kh, align 64, !tbaa !132
  %index.next502.3 = shl nuw i64 %index501, 1
  %i.ki = getelementptr inbounds nuw i8, ptr %.0.ptr10.4.i, i64 %index.next502.3 ; 4 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 1024
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ki, i64 1088
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ki, i64 1152
  %i.km = getelementptr inbounds nuw i8, ptr %i.ki, i64 1216
  store <32 x i16> splat (i16 97), ptr %i.kj, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.kk, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.kl, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.km, align 64, !tbaa !132
  %index.next502.4 = shl nuw i64 %index501, 1
  %i.kn = getelementptr inbounds nuw i8, ptr %.0.ptr10.4.i, i64 %index.next502.4 ; 4 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 1280
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kn, i64 1344
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kn, i64 1408
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kn, i64 1472
  store <32 x i16> splat (i16 97), ptr %i.ko, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.kp, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.kq, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.kr, align 64, !tbaa !132
  %index.next502.5 = shl nuw i64 %index501, 1
  %i.ks = getelementptr inbounds nuw i8, ptr %.0.ptr10.4.i, i64 %index.next502.5 ; 4 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 1536
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ks, i64 1600
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ks, i64 1664
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ks, i64 1728
  store <32 x i16> splat (i16 97), ptr %i.kt, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.ku, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.kv, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.kw, align 64, !tbaa !132
  %index.next502.6 = shl nuw i64 %index501, 1
  %i.kx = getelementptr inbounds nuw i8, ptr %.0.ptr10.4.i, i64 %index.next502.6 ; 4 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 1792
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kx, i64 1856
  %i.la = getelementptr inbounds nuw i8, ptr %i.kx, i64 1920
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kx, i64 1984
  store <32 x i16> splat (i16 97), ptr %i.ky, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.kz, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.la, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.lb, align 64, !tbaa !132
  %index.next502.7 = add nuw nsw i64 %index501, 1024 ; 2 uses
  %i.lc = icmp eq i64 %index.next502.7, 65536
  br i1 %i.lc, label %vector.body505, label %vector.body500, !llvm.loop !261

vector.body505:                                   ; preds = %vector.body500, %vector.body505
  %index506 = phi i64 [ %index.next507.3, %vector.body505 ], [ 0, %vector.body500 ] ; 5 uses
  %i.ld = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index506 ; 2 uses
  %wide.load = load <32 x i16>, ptr %i.ld, align 64, !tbaa !132
  %i.le = sext <32 x i16> %wide.load to <32 x i32>
  %i.lf = mul nsw <32 x i32> %i.le, splat (i32 3)
  %i.lg = add nsw <32 x i32> %i.lf, splat (i32 -204)
  %i.lh = sdiv <32 x i32> %i.lg, splat (i32 4)
  %i.li = trunc nsw <32 x i32> %i.lh to <32 x i16>
  %i.lj = add nsw <32 x i16> %i.li, splat (i16 68)
  store <32 x i16> %i.lj, ptr %i.ld, align 64, !tbaa !132
  %i.lk = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index506
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 64 ; 2 uses
  %wide.load.1 = load <32 x i16>, ptr %i.ll, align 64, !tbaa !132
  %i.lm = sext <32 x i16> %wide.load.1 to <32 x i32>
  %i.ln = mul nsw <32 x i32> %i.lm, splat (i32 3)
  %i.lo = add nsw <32 x i32> %i.ln, splat (i32 -204)
  %i.lp = sdiv <32 x i32> %i.lo, splat (i32 4)
  %i.lq = trunc nsw <32 x i32> %i.lp to <32 x i16>
  %i.lr = add nsw <32 x i16> %i.lq, splat (i16 68)
  store <32 x i16> %i.lr, ptr %i.ll, align 64, !tbaa !132
  %i.ls = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index506
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 128 ; 2 uses
  %wide.load.2 = load <32 x i16>, ptr %i.lt, align 64, !tbaa !132
  %i.lu = sext <32 x i16> %wide.load.2 to <32 x i32>
  %i.lv = mul nsw <32 x i32> %i.lu, splat (i32 3)
  %i.lw = add nsw <32 x i32> %i.lv, splat (i32 -204)
  %i.lx = sdiv <32 x i32> %i.lw, splat (i32 4)
  %i.ly = trunc nsw <32 x i32> %i.lx to <32 x i16>
  %i.lz = add nsw <32 x i16> %i.ly, splat (i16 68)
  store <32 x i16> %i.lz, ptr %i.lt, align 64, !tbaa !132
  %i.ma = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index506
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 192 ; 2 uses
  %wide.load.3 = load <32 x i16>, ptr %i.mb, align 64, !tbaa !132
  %i.mc = sext <32 x i16> %wide.load.3 to <32 x i32>
  %i.md = mul nsw <32 x i32> %i.mc, splat (i32 3)
  %i.me = add nsw <32 x i32> %i.md, splat (i32 -204)
  %i.mf = sdiv <32 x i32> %i.me, splat (i32 4)
  %i.mg = trunc nsw <32 x i32> %i.mf to <32 x i16>
  %i.mh = add nsw <32 x i16> %i.mg, splat (i16 68)
  store <32 x i16> %i.mh, ptr %i.mb, align 64, !tbaa !132
  %index.next507.3 = add nuw nsw i64 %index506, 128 ; 2 uses
  %i.mi = icmp eq i64 %index.next507.3, 65536
  br i1 %i.mi, label %middle.block508, label %vector.body505, !llvm.loop !262

.lr.ph393:                                        ; preds = %middle.block514
  %i.mj = getelementptr inbounds nuw i8, ptr %0, i64 11422208 ; 17 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %0, i64 11419748
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 11419792 ; 4 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %0, i64 11419784 ; 6 uses
  %.not397 = icmp eq i64 %.sroa.speculated305, 0
  %i.mn = getelementptr inbounds nuw i8, ptr %0, i64 11419824
  %i.mo = getelementptr inbounds nuw i8, ptr %0, i64 11419832 ; 2 uses
  %i.mp = zext i8 %i.k to i64
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %i.mo, i64 %i.mp
  %i.mr = xor i8 %i.k, 1
  %i.ms = zext i8 %i.mr to i64
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %i.mo, i64 %i.ms
  %i.mu = getelementptr inbounds nuw i8, ptr %0, i64 11421112
  %i.mv = icmp eq i64 %.sroa.speculated305, 1
  %or.cond3 = select i1 %i.an, i1 %i.mv, i1 false
  %i.mw = getelementptr inbounds nuw i8, ptr %0, i64 11419800 ; 3 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %0, i64 11422216 ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %i.mz = getelementptr inbounds nuw i8, ptr %0, i64 11421108 ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %0, i64 11419752
  %i.nb = getelementptr inbounds nuw i8, ptr %0, i64 11419688
  %i.nc = getelementptr inbounds nuw i8, ptr %0, i64 11419696
  %i.nd = getelementptr inbounds nuw i8, ptr %i.al, i64 96 ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.e, i64 92
  %i.nf = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.nh = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.al, i64 60
  br label %bb.f

middle.block508:                                  ; preds = %vector.body505
  %i.nj = getelementptr inbounds nuw i8, ptr %0, i64 131072 ; 4 uses
  br label %vector.body510

vector.body510:                                   ; preds = %vector.body510, %middle.block508
  %index511 = phi i64 [ 0, %middle.block508 ], [ %index.next513.3, %vector.body510 ] ; 5 uses
  %i.nk = getelementptr inbounds nuw [2 x i8], ptr %i.nj, i64 %index511 ; 2 uses
  %wide.load512 = load <32 x i16>, ptr %i.nk, align 64, !tbaa !132
  %i.nl = sext <32 x i16> %wide.load512 to <32 x i32>
  %i.nm = mul nsw <32 x i32> %i.nl, splat (i32 3)
  %i.nn = add nsw <32 x i32> %i.nm, splat (i32 -204)
  %i.no = sdiv <32 x i32> %i.nn, splat (i32 4)
  %i.np = trunc nsw <32 x i32> %i.no to <32 x i16>
  %i.nq = add nsw <32 x i16> %i.np, splat (i16 68)
  store <32 x i16> %i.nq, ptr %i.nk, align 64, !tbaa !132
  %i.nr = getelementptr inbounds nuw [2 x i8], ptr %i.nj, i64 %index511
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 64 ; 2 uses
  %wide.load512.1 = load <32 x i16>, ptr %i.ns, align 64, !tbaa !132
  %i.nt = sext <32 x i16> %wide.load512.1 to <32 x i32>
  %i.nu = mul nsw <32 x i32> %i.nt, splat (i32 3)
  %i.nv = add nsw <32 x i32> %i.nu, splat (i32 -204)
  %i.nw = sdiv <32 x i32> %i.nv, splat (i32 4)
  %i.nx = trunc nsw <32 x i32> %i.nw to <32 x i16>
  %i.ny = add nsw <32 x i16> %i.nx, splat (i16 68)
  store <32 x i16> %i.ny, ptr %i.ns, align 64, !tbaa !132
  %i.nz = getelementptr inbounds nuw [2 x i8], ptr %i.nj, i64 %index511
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 128 ; 2 uses
  %wide.load512.2 = load <32 x i16>, ptr %i.oa, align 64, !tbaa !132
  %i.ob = sext <32 x i16> %wide.load512.2 to <32 x i32>
  %i.oc = mul nsw <32 x i32> %i.ob, splat (i32 3)
  %i.od = add nsw <32 x i32> %i.oc, splat (i32 -204)
  %i.oe = sdiv <32 x i32> %i.od, splat (i32 4)
  %i.of = trunc nsw <32 x i32> %i.oe to <32 x i16>
  %i.og = add nsw <32 x i16> %i.of, splat (i16 68)
  store <32 x i16> %i.og, ptr %i.oa, align 64, !tbaa !132
  %i.oh = getelementptr inbounds nuw [2 x i8], ptr %i.nj, i64 %index511
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 192 ; 2 uses
  %wide.load512.3 = load <32 x i16>, ptr %i.oi, align 64, !tbaa !132
  %i.oj = sext <32 x i16> %wide.load512.3 to <32 x i32>
  %i.ok = mul nsw <32 x i32> %i.oj, splat (i32 3)
  %i.ol = add nsw <32 x i32> %i.ok, splat (i32 -204)
  %i.om = sdiv <32 x i32> %i.ol, splat (i32 4)
end_hunk_1
