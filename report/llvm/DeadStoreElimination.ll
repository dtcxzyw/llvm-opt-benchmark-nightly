Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/DeadStoreElimination?download=true
inline.NumInlined: 6808
inline.NumDeleted: 3855
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN12_GLOBAL__N_18DSEState17eliminateDeadDefsERKNS_16MemoryDefWrapperE:bb.a
  br label %bb.c

bb.c:                                             ; preds = %.thread270.i, %.lr.ph369.i
  %indvars.iv437.i = phi i64 [ 0, %.lr.ph369.i ], [ %indvars.iv.next438.i, %.thread270.i ] ; 2 uses
  %.0172366.i = phi i8 [ 0, %.lr.ph369.i ], [ %.10281.i, %.thread270.i ] ; 14 uses
  %.0179364.i = phi i32 [ %i.et, %.lr.ph369.i ], [ %.1180280.i, %.thread270.i ] ; 9 uses
  %.0185363.i = phi i32 [ %i.es, %.lr.ph369.i ], [ %.1186279.i, %.thread270.i ] ; 6 uses
  %.0193361.i = phi i32 [ %i.er, %.lr.ph369.i ], [ %.1194278.i, %.thread270.i ] ; 9 uses
  %i.ff = load ptr, ptr %i.z, align 8, !tbaa !34
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %indvars.iv437.i
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !126 ; 7 uses
  %i.fi = load i8, ptr %i.ag, align 8, !tbaa !42, !range !43, !noundef !44
  %i.fj = trunc nuw i8 %i.fi to i1
  br i1 %i.fj, label %bb.d, label %_ZNK4llvm15SmallPtrSetImplIPNS_12MemoryAccessEE8containsEPKS1_.exit.i

bb.d:                                             ; preds = %bb.c
  %i.fk = load ptr, ptr %39, align 8, !tbaa !45   ; 2 uses
  %i.fl = load i32, ptr %i.af, align 4, !tbaa !49 ; 2 uses
  %i.fm = zext i32 %i.fl to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.fm, 3
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fk, i64 %.idx.i.i.i
  %.not17.i.i.i = icmp eq i32 %i.fl, 0
  br i1 %.not17.i.i.i, label %_ZNK4llvm15SmallPtrSetImplIPNS_12MemoryAccessEE8containsEPKS1_.exit.thread.i, label %.lr.ph.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.fo = getelementptr inbounds nuw i8, ptr %.01218.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.fo, %i.fn
  br i1 %.not.i.i.i, label %_ZNK4llvm15SmallPtrSetImplIPNS_12MemoryAccessEE8containsEPKS1_.exit.thread.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %bb.e
  %.01218.i.i.i = phi ptr [ %i.fo, %bb.e ], [ %i.fk, %bb.d ] ; 2 uses
  %i.fp = load ptr, ptr %.01218.i.i.i, align 8, !tbaa !50
  %.not15.i.i.i = icmp eq ptr %i.fp, %i.fh
  br i1 %.not15.i.i.i, label %.thread270.i, label %bb.e

_ZNK4llvm15SmallPtrSetImplIPNS_12MemoryAccessEE8containsEPKS1_.exit.i: ; preds = %bb.c
  %i.fq = call noundef ptr @_ZNK4llvm19SmallPtrSetImplBase6doFindEPKv(ptr noundef nonnull align 8 dereferenceable(17) %39, ptr noundef %i.fh) #19
  %.not282.i = icmp eq ptr %i.fq, null
  br i1 %.not282.i, label %_ZNK4llvm15SmallPtrSetImplIPNS_12MemoryAccessEE8containsEPKS1_.exit.thread.i, label %.thread270.i

_ZNK4llvm15SmallPtrSetImplIPNS_12MemoryAccessEE8containsEPKS1_.exit.thread.i: ; preds = %bb.e, %_ZNK4llvm15SmallPtrSetImplIPNS_12MemoryAccessEE8containsEPKS1_.exit.i, %bb.d
  %i.fr = load ptr, ptr %i.eu, align 8, !tbaa !207 ; 18 uses
  %i.fs = load ptr, ptr %i.fb, align 8, !tbaa !209 ; 19 uses
  %i.ft = load ptr, ptr %i.fc, align 8, !tbaa !210 ; 3 uses
  %i.fu = load i8, ptr %i.ft, align 8, !tbaa !129
  switch i8 %i.fu, label %_ZNK12_GLOBAL__N_18DSEState19isMemTerminatorInstEPN4llvm11InstructionE.exit.i [
    i8 88, label %_ZN4llvm8dyn_castINS_8CallBaseENS_11InstructionEEEDcPT0_.exit.i.i
    i8 36, label %_ZN4llvm8dyn_castINS_8CallBaseENS_11InstructionEEEDcPT0_.exit.i.i
    i8 42, label %_ZN4llvm8dyn_castINS_8CallBaseENS_11InstructionEEEDcPT0_.exit.i.i
  ]

_ZN4llvm8dyn_castINS_8CallBaseENS_11InstructionEEEDcPT0_.exit.i.i: ; preds = %_ZNK4llvm15SmallPtrSetImplIPNS_12MemoryAccessEE8containsEPKS1_.exit.thread.i, %_ZNK4llvm15SmallPtrSetImplIPNS_12MemoryAccessEE8containsEPKS1_.exit.thread.i, %_ZNK4llvm15SmallPtrSetImplIPNS_12MemoryAccessEE8containsEPKS1_.exit.thread.i
  %i.fv = call noundef i32 @_ZNK4llvm8CallBase14getIntrinsicIDEv(ptr noundef nonnull align 8 dereferenceable(88) %i.ft) #19
  %i.fw = icmp eq i32 %i.fv, 220
  br i1 %i.fw, label %_ZNK12_GLOBAL__N_18DSEState19isMemTerminatorInstEPN4llvm11InstructionE.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm8dyn_castINS_8CallBaseENS_11InstructionEEEDcPT0_.exit.i.i
  %i.fx = load ptr, ptr %i.ah, align 8, !tbaa !167, !nonnull !44, !align !168
  %i.fy = call noundef ptr @_ZN4llvm15getFreedOperandEPKNS_8CallBaseEPKNS_17TargetLibraryInfoE(ptr noundef nonnull %i.ft, ptr noundef nonnull %i.fx) #19
  %i.fz = icmp ne ptr %i.fy, null
  br label %_ZNK12_GLOBAL__N_18DSEState19isMemTerminatorInstEPN4llvm11InstructionE.exit.i

_ZNK12_GLOBAL__N_18DSEState19isMemTerminatorInstEPN4llvm11InstructionE.exit.i: ; preds = %bb.f, %_ZN4llvm8dyn_castINS_8CallBaseENS_11InstructionEEEDcPT0_.exit.i.i, %_ZNK4llvm15SmallPtrSetImplIPNS_12MemoryAccessEE8containsEPKS1_.exit.thread.i
  %i.ga = phi i1 [ %i.fz, %bb.f ], [ true, %_ZN4llvm8dyn_castINS_8CallBaseENS_11InstructionEEEDcPT0_.exit.i.i ], [ false, %_ZNK4llvm15SmallPtrSetImplIPNS_12MemoryAccessEE8containsEPKS1_.exit.thread.i ]
  %i.gb = load i8, ptr %i.fd, align 8, !tbaa !208, !range !43, !noundef !44
  %i.gc = trunc nuw i8 %i.gb to i1
  %i.gd = icmp eq i32 %.0193361.i, 0
  %i.ge = icmp eq i32 %.0185363.i, 0
  %or.cond526.i.i = select i1 %i.gd, i1 true, i1 %i.ge
  br i1 %or.cond526.i.i, label %.thread270.i, label %bb.g

bb.g:                                             ; preds = %_ZNK12_GLOBAL__N_18DSEState19isMemTerminatorInstEPN4llvm11InstructionE.exit.i
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fr, i64 72 ; 2 uses
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !193 ; 5 uses
  %i.gh = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL17OptimizeMemorySSA, i64 120), align 8, !tbaa !173, !range !43, !noundef !44
  %i.gi = trunc nuw i8 %i.gh to i1
  br i1 %i.gi, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.gj = load i8, ptr %i.fr, align 8, !tbaa !129
  %i.gk = icmp eq i8 %i.gj, 27
  %.1.v.i.i.i.i.i = select i1 %i.gk, i64 -32, i64 -64
  %.1.i.i.i.i.i = getelementptr inbounds i8, ptr %i.fr, i64 %.1.v.i.i.i.i.i
  %i.gl = load ptr, ptr %.1.i.i.i.i.i, align 8, !tbaa !236
  %i.gm = icmp eq ptr %i.gl, %i.fh
  br i1 %i.gm, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.gn = call noundef zeroext i1 @_ZNK4llvm11Instruction17mayReadFromMemoryEv(ptr noundef nonnull align 8 dereferenceable(72) %i.gg) #20
  %i.go = xor i1 %i.gn, true
  %i.gp = zext i1 %i.go to i8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.gq = phi i8 [ 0, %bb.h ], [ 0, %bb.g ], [ %i.gp, %bb.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #19
  store i8 0, ptr %i.ai, align 8, !tbaa !137
  %i.gr = load ptr, ptr %i.aj, align 8, !tbaa !242, !nonnull !44, !align !168
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 104
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !126
  %i.gu = icmp eq ptr %i.fh, %i.gt
  br i1 %i.gu, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.j
  %i.gv = getelementptr inbounds nuw i8, ptr %i.fr, i64 64
  %.not.i167.i.i = icmp eq ptr %i.fs, null
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gg, i64 40 ; 3 uses
  %i.gx = getelementptr inbounds i8, ptr %i.fr, i64 -32 ; 2 uses
  %i.gy = getelementptr inbounds i8, ptr %i.fr, i64 -16 ; 3 uses
  %i.gz = getelementptr inbounds i8, ptr %i.fr, i64 -24 ; 4 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.fr, i64 84
  %i.hb = icmp ult i32 %.0179364.i, 2
  %i.hc = ptrtoint ptr %i.fs to i64
  %i.hd = mul i64 %i.hc, -4658895280553007687     ; 2 uses
  %i.he = lshr i64 %i.hd, 31
  %i.hf = xor i64 %i.he, %i.hd
  %i.hg = trunc i64 %i.hf to i32                  ; 2 uses
  br label %bb.s

._crit_edge.i.i:                                  ; preds = %_ZL10canSkipDefPN4llvm9MemoryDefEb.exit.thread.i.i, %bb.j
  %.5190.i = phi i32 [ %.0185363.i, %bb.j ], [ %.4189.i, %_ZL10canSkipDefPN4llvm9MemoryDefEb.exit.thread.i.i ] ; 3 uses
  %.0432.lcssa.i.i = phi ptr [ %i.fh, %bb.j ], [ %i.sa, %_ZL10canSkipDefPN4llvm9MemoryDefEb.exit.thread.i.i ] ; 5 uses
  %.0120.lcssa.i.i = phi i8 [ %i.gq, %bb.j ], [ %.4.ph.i.i, %_ZL10canSkipDefPN4llvm9MemoryDefEb.exit.thread.i.i ]
  %i.hh = trunc nuw i8 %.0120.lcssa.i.i to i1
  br i1 %i.hh, label %bb.k, label %_ZN12_GLOBAL__N_18DSEState15getDomMemoryDefEPN4llvm9MemoryDefEPNS1_12MemoryAccessERKNS1_14MemoryLocationEPKNS1_5ValueERjSC_bSC_b.exit.thread226.i

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.hi = load i8, ptr %i.fr, align 8, !tbaa !129
  %i.hj = icmp eq i8 %i.hi, 27
  %.1.v.i.i.i164.i.i = select i1 %i.hj, i64 -32, i64 -64
  %.1.i.i.i165.i.i = getelementptr inbounds i8, ptr %i.fr, i64 %.1.v.i.i.i164.i.i
  %i.hk = load ptr, ptr %.1.i.i.i165.i.i, align 8, !tbaa !236
  %.not149.i.i = icmp eq ptr %.0432.lcssa.i.i, %i.hk
  br i1 %.not149.i.i, label %_ZN12_GLOBAL__N_18DSEState15getDomMemoryDefEPN4llvm9MemoryDefEPNS1_12MemoryAccessERKNS1_14MemoryLocationEPKNS1_5ValueERjSC_bSC_b.exit.thread226.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.hl = getelementptr inbounds i8, ptr %i.fr, i64 -32 ; 2 uses
  %i.hm = getelementptr inbounds i8, ptr %i.fr, i64 -16 ; 3 uses
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !315 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.hn, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ho = getelementptr inbounds i8, ptr %i.fr, i64 -24 ; 2 uses
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !249 ; 3 uses
  store ptr %i.hp, ptr %i.hn, align 8, !tbaa !316
  %.not2.i.i.i.i.i.i.i = icmp eq ptr %i.hp, null
  br i1 %.not2.i.i.i.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 16
  store ptr %i.hn, ptr %i.hq, align 8, !tbaa !315
  store ptr null, ptr %i.ho, align 8, !tbaa !249
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  store ptr null, ptr %i.hm, align 8, !tbaa !315
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l
  store ptr %.0432.lcssa.i.i, ptr %i.hl, align 8, !tbaa !236
  %.pre.i.i.i = load i8, ptr %.0432.lcssa.i.i, align 8, !tbaa !129 ; 2 uses
  %i.hr = icmp ugt i8 %.pre.i.i.i, 10
  br i1 %i.hr, label %bb.q, label %_ZN4llvm9MemoryDef12setOptimizedEPNS_12MemoryAccessE.exit.i.i

bb.q:                                             ; preds = %bb.p
  %i.hs = getelementptr inbounds nuw i8, ptr %.0432.lcssa.i.i, i64 16 ; 3 uses
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !316 ; 3 uses
  %i.hu = getelementptr inbounds i8, ptr %i.fr, i64 -24 ; 2 uses
  store ptr %i.ht, ptr %i.hu, align 8, !tbaa !249
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ht, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ht, i64 16
  store ptr %i.hu, ptr %i.hv, align 8, !tbaa !315
  br label %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i.i.i.i

_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i.i.i.i:  ; preds = %bb.r, %bb.q
  store ptr %i.hs, ptr %i.hm, align 8, !tbaa !315
  store ptr %i.hl, ptr %i.hs, align 8, !tbaa !316
  br label %_ZN4llvm9MemoryDef12setOptimizedEPNS_12MemoryAccessE.exit.i.i

_ZN4llvm9MemoryDef12setOptimizedEPNS_12MemoryAccessE.exit.i.i: ; preds = %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i.i.i.i, %bb.p
  %i.hw = icmp eq i8 %.pre.i.i.i, 28
  %.1.in.v.i.i.i.i = select i1 %i.hw, i64 80, i64 72
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0432.lcssa.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i76.i = load i32, ptr %.1.in.i.i.i.i, align 8, !tbaa !111
  %i.hx = getelementptr inbounds nuw i8, ptr %i.fr, i64 84
  store i32 %.1.i.i.i76.i, ptr %i.hx, align 4, !tbaa !244
  br label %_ZN12_GLOBAL__N_18DSEState15getDomMemoryDefEPN4llvm9MemoryDefEPNS1_12MemoryAccessERKNS1_14MemoryLocationEPKNS1_5ValueERjSC_bSC_b.exit.thread226.i

bb.s:                                             ; preds = %_ZL10canSkipDefPN4llvm9MemoryDefEb.exit.thread.i.i, %.lr.ph.i.i
  %.2187.i = phi i32 [ %.0185363.i, %.lr.ph.i.i ], [ %.4189.i, %_ZL10canSkipDefPN4llvm9MemoryDefEb.exit.thread.i.i ] ; 3 uses
  %.0120585.i.i = phi i8 [ %i.gq, %.lr.ph.i.i ], [ %.4.ph.i.i, %_ZL10canSkipDefPN4llvm9MemoryDefEb.exit.thread.i.i ]
  %.0432583.i.i = phi ptr [ %i.fh, %.lr.ph.i.i ], [ %i.sa, %_ZL10canSkipDefPN4llvm9MemoryDefEb.exit.thread.i.i ] ; 19 uses
  %i.hy = load ptr, ptr %i.gv, align 8, !tbaa !856
  %i.hz = getelementptr inbounds nuw i8, ptr %.0432583.i.i, i64 64
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !856
  %i.ib = icmp eq ptr %i.hy, %i.ia
  %.val528.i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL23MemorySSASameBBStepCost, i64 120), align 8
  %.val529.i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL24MemorySSAOtherBBStepCost, i64 120), align 8
  %42 = select i1 %i.ib, i32 %.val528.i.i, i32 %.val529.i.i ; 2 uses
  %.not139.i.i = icmp ugt i32 %.2187.i, %42
  br i1 %.not139.i.i, label %bb.t, label %_ZN12_GLOBAL__N_18DSEState15getDomMemoryDefEPN4llvm9MemoryDefEPNS1_12MemoryAccessERKNS1_14MemoryLocationEPKNS1_5ValueERjSC_bSC_b.exit.thread226.i

bb.t:                                             ; preds = %bb.s
  %i.ic = sub nuw i32 %.2187.i, %42               ; 34 uses
  %i.id = load i8, ptr %.0432583.i.i, align 8, !tbaa !129
  %i.ie = icmp eq i8 %i.id, 29
  br i1 %i.ie, label %_ZN12_GLOBAL__N_18DSEState15getDomMemoryDefEPN4llvm9MemoryDefEPNS1_12MemoryAccessERKNS1_14MemoryLocationEPKNS1_5ValueERjSC_bSC_b.exit.thread234.i, label %bb.u

_ZN12_GLOBAL__N_18DSEState15getDomMemoryDefEPN4llvm9MemoryDefEPNS1_12MemoryAccessERKNS1_14MemoryLocationEPKNS1_5ValueERjSC_bSC_b.exit.thread234.i: ; preds = %bb.t
  %i.if = getelementptr inbounds nuw i8, ptr %.0432583.i.i, i64 64
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #19
  br label %bb.fk

bb.u:                                             ; preds = %bb.t
  %i.ig = getelementptr inbounds nuw i8, ptr %.0432583.i.i, i64 72 ; 3 uses
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !193 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #19
  %i.ii = call noundef zeroext i1 @_ZN4llvm20isNotVisibleOnUnwindEPKNS_5ValueERb(ptr noundef %i.fs, ptr noundef nonnull align 1 dereferenceable(1) %i.m) #19
  br i1 %i.ii, label %bb.v, label %_ZN12_GLOBAL__N_18DSEState27isInvisibleToCallerOnUnwindEPKN4llvm5ValueE.exit.i.i

bb.v:                                             ; preds = %bb.u
  %i.ij = load i8, ptr %i.m, align 1, !tbaa !201, !range !43, !noundef !44
  %i.ik = trunc nuw i8 %i.ij to i1
  br i1 %i.ik, label %bb.w, label %_ZN12_GLOBAL__N_18DSEState27isInvisibleToCallerOnUnwindEPKN4llvm5ValueE.exit.i.i

bb.w:                                             ; preds = %bb.v
  %i.il = load ptr, ptr %i.ak, align 8, !tbaa !275, !noalias !857 ; 3 uses
  %i.im = load ptr, ptr %i.ct, align 8, !tbaa !317, !noalias !857 ; 3 uses
  %i.in = load i32, ptr %i.cu, align 4, !tbaa !274, !noalias !857 ; 4 uses
  %i.io = icmp eq i32 %i.in, 0
  br i1 %i.io, label %.loopexit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ip = add i32 %i.in, -1                       ; 2 uses
  %i.iq = and i32 %i.ip, %i.hg                    ; 3 uses
  %i.ir = zext i32 %i.iq to i64                   ; 2 uses
  %i.is = getelementptr inbounds nuw [16 x i8], ptr %i.il, i64 %i.ir ; 2 uses
  %i.it = lshr i64 %i.ir, 5
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %i.it
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !111, !noalias !858
  %i.iw = and i32 %i.iq, 31
  %i.ix = lshr i32 %i.iv, %i.iw
  %i.iy = trunc i32 %i.ix to i1
  br i1 %i.iy, label %.lr.ph.i.i89, label %.loopexit.i, !prof !120

.lr.ph.i.i89:                                     ; preds = %bb.x, %bb.y
  %i.iz = phi ptr [ %i.jf, %bb.y ], [ %i.is, %bb.x ] ; 2 uses
  %.024.i.i90 = phi i32 [ %i.jd, %bb.y ], [ %i.iq, %bb.x ]
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !122, !noalias !858
  %i.jb = icmp eq ptr %i.fs, %i.ja
  br i1 %i.jb, label %._crit_edge.i.i.i, label %bb.y, !prof !123

bb.y:                                             ; preds = %.lr.ph.i.i89
  %i.jc = add nuw i32 %.024.i.i90, 1
  %i.jd = and i32 %i.jc, %i.ip                    ; 3 uses
  %i.je = zext i32 %i.jd to i64                   ; 2 uses
  %i.jf = getelementptr inbounds nuw [16 x i8], ptr %i.il, i64 %i.je ; 2 uses
  %i.jg = lshr i64 %i.je, 5
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %i.jg
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !111, !noalias !858
  %i.jj = and i32 %i.jd, 31
  %i.jk = lshr i32 %i.ji, %i.jj
  %i.jl = trunc i32 %i.jk to i1
  br i1 %i.jl, label %.lr.ph.i.i89, label %.loopexit.i, !prof !124, !llvm.loop !6

.loopexit.i:                                      ; preds = %bb.y, %bb.x, %bb.w
  %.lcssa28.sink.i.ph.i = phi ptr [ %i.is, %bb.x ], [ null, %bb.w ], [ %i.jf, %bb.y ]
  %i.jm = load i32, ptr %i.cv, align 8, !tbaa !318, !noalias !858
  %i.jn = shl i32 %i.jm, 2
  %i.jo = add i32 %i.jn, 4
  %i.jp = mul i32 %i.in, 3
  %.not.i.i86 = icmp ult i32 %i.jo, %i.jp
  br i1 %.not.i.i86, label %.loopexit, label %bb.z, !prof !123

bb.z:                                             ; preds = %.loopexit.i
  %i.jq = shl i32 %i.in, 1
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEbNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_bEEEES4_bS6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %i.ak, i32 noundef %i.jq), !noalias !858
  %i.jr = load ptr, ptr %i.ak, align 8, !tbaa !275, !noalias !859 ; 6 uses
  %i.js = load ptr, ptr %i.ct, align 8, !tbaa !317, !noalias !859 ; 6 uses
  %i.jt = load i32, ptr %i.cu, align 4, !tbaa !274, !noalias !859 ; 2 uses
  %i.ju = icmp eq i32 %i.jt, 0
  br i1 %i.ju, label %.loopexit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.jv = add i32 %i.jt, -1                       ; 2 uses
  %i.jw = and i32 %i.jv, %i.hg                    ; 3 uses
  %i.jx = zext i32 %i.jw to i64                   ; 2 uses
  %i.jy = getelementptr inbounds nuw [16 x i8], ptr %i.jr, i64 %i.jx ; 2 uses
  %i.jz = lshr i64 %i.jx, 5
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.jz
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !111, !noalias !858
  %i.kc = and i32 %i.jw, 31
  %i.kd = lshr i32 %i.kb, %i.kc
  %i.ke = trunc i32 %i.kd to i1
  br i1 %i.ke, label %.lr.ph.i93, label %.loopexit, !prof !120

.lr.ph.i93:                                       ; preds = %bb.aa, %bb.ab
  %i.kf = phi ptr [ %i.kl, %bb.ab ], [ %i.jy, %bb.aa ] ; 2 uses
  %.024.i = phi i32 [ %i.kj, %bb.ab ], [ %i.jw, %bb.aa ]
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !122, !noalias !858
  %i.kh = icmp eq ptr %i.fs, %i.kg
  br i1 %i.kh, label %.loopexit, label %bb.ab, !prof !123

bb.ab:                                            ; preds = %.lr.ph.i93
  %i.ki = add nuw i32 %.024.i, 1
  %i.kj = and i32 %i.ki, %i.jv                    ; 3 uses
  %i.kk = zext i32 %i.kj to i64                   ; 2 uses
  %i.kl = getelementptr inbounds nuw [16 x i8], ptr %i.jr, i64 %i.kk ; 2 uses
  %i.km = lshr i64 %i.kk, 5
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.km
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !111, !noalias !858
  %i.kp = and i32 %i.kj, 31
  %i.kq = lshr i32 %i.ko, %i.kp
  %i.kr = trunc i32 %i.kq to i1
  br i1 %i.kr, label %.lr.ph.i93, label %.loopexit, !prof !124, !llvm.loop !6

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i89
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  %.pre.i166.i.i = load i8, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !178, !range !43
  %i.ks = trunc nuw i8 %.pre.i166.i.i to i1
  br label %_ZN12_GLOBAL__N_18DSEState27isInvisibleToCallerOnUnwindEPKN4llvm5ValueE.exit.i.i

.loopexit:                                        ; preds = %.lr.ph.i93, %bb.ab, %.loopexit.i, %bb.z, %bb.aa
  %i.kt = phi ptr [ %i.il, %.loopexit.i ], [ %i.jr, %bb.z ], [ %i.jr, %bb.aa ], [ %i.jr, %bb.ab ], [ %i.jr, %.lr.ph.i93 ]
  %i.ku = phi ptr [ %i.im, %.loopexit.i ], [ %i.js, %bb.z ], [ %i.js, %bb.aa ], [ %i.js, %bb.ab ], [ %i.js, %.lr.ph.i93 ]
  %i.kv = phi ptr [ %.lcssa28.sink.i.ph.i, %.loopexit.i ], [ null, %bb.z ], [ %i.jy, %bb.aa ], [ %i.kf, %.lr.ph.i93 ], [ %i.kl, %bb.ab ] ; 3 uses
  %i.kw = ptrtoint ptr %i.kv to i64
  %i.kx = ptrtoint ptr %i.kt to i64
  %i.ky = sub i64 %i.kw, %i.kx
  %i.kz = ashr exact i64 %i.ky, 4                 ; 2 uses
  %i.la = trunc i64 %i.kz to i32
  %i.lb = and i32 %i.la, 31
  %i.lc = shl nuw i32 1, %i.lb
  %i.ld = lshr i64 %i.kz, 5
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.ku, i64 %i.ld ; 2 uses
  %i.lf = load i32, ptr %i.le, align 4, !tbaa !111, !noalias !858
  %i.lg = or i32 %i.lc, %i.lf
  store i32 %i.lg, ptr %i.le, align 4, !tbaa !111, !noalias !858
  %i.lh = load i32, ptr %i.cv, align 8, !tbaa !318, !noalias !858
  %i.li = add i32 %i.lh, 1
  store i32 %i.li, ptr %i.cv, align 8, !tbaa !318, !noalias !858
  store ptr %i.fs, ptr %i.kv, align 8, !tbaa !122, !noalias !858
  %i.lj = getelementptr inbounds nuw i8, ptr %i.kv, i64 8 ; 2 uses
  store i8 1, ptr %i.lj, align 8, !tbaa !201, !noalias !858
  %i.lk = call i16 @_ZN4llvm20PointerMayBeCapturedEPKNS_5ValueENS_17CaptureComponentsENS_12function_refIFbS3_EEEj(ptr noundef %i.fs, i8 noundef zeroext 12, ptr nonnull @_ZN4llvm12function_refIFbNS_17CaptureComponentsEEE11callback_fnIS2_EEblS1_, i64 ptrtoint (ptr @_ZN4llvm16capturesAnythingENS_17CaptureComponentsE to i64), i32 noundef 0) #19
  %i.ll = and i16 %i.lk, 255
  %i.lm = icmp ne i16 %i.ll, 0                    ; 2 uses
  %i.ln = zext i1 %i.lm to i8
  store i8 %i.ln, ptr %i.lj, align 8, !tbaa !178
  br label %_ZN12_GLOBAL__N_18DSEState27isInvisibleToCallerOnUnwindEPKN4llvm5ValueE.exit.i.i

_ZN12_GLOBAL__N_18DSEState27isInvisibleToCallerOnUnwindEPKN4llvm5ValueE.exit.i.i: ; preds = %.loopexit, %._crit_edge.i.i.i, %bb.v, %bb.u
  %i.lo = phi i1 [ false, %bb.v ], [ true, %bb.u ], [ %i.ks, %._crit_edge.i.i.i ], [ %i.lm, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #19
  %.val156.i.i = load ptr, ptr %i.ig, align 8, !tbaa !193 ; 5 uses
  %i.lp = load i8, ptr %.val156.i.i, align 8, !tbaa !129
  switch i8 %i.lp, label %.critedge.i.i.i [
    i8 88, label %_ZN4llvm8dyn_castINS_8CallBaseENS_11InstructionEEEDcPT0_.exit.i.i.i
    i8 36, label %_ZN4llvm8dyn_castINS_8CallBaseENS_11InstructionEEEDcPT0_.exit.i.i.i
    i8 42, label %_ZN4llvm8dyn_castINS_8CallBaseENS_11InstructionEEEDcPT0_.exit.i.i.i
  ]

_ZN4llvm8dyn_castINS_8CallBaseENS_11InstructionEEEDcPT0_.exit.i.i.i: ; preds = %_ZN12_GLOBAL__N_18DSEState27isInvisibleToCallerOnUnwindEPKN4llvm5ValueE.exit.i.i, %_ZN12_GLOBAL__N_18DSEState27isInvisibleToCallerOnUnwindEPKN4llvm5ValueE.exit.i.i, %_ZN12_GLOBAL__N_18DSEState27isInvisibleToCallerOnUnwindEPKN4llvm5ValueE.exit.i.i
  %i.lq = call noundef zeroext i1 @_ZNK4llvm8CallBase30onlyAccessesInaccessibleMemoryEv(ptr noundef nonnull align 8 dereferenceable(88) %.val156.i.i) #19
  br i1 %i.lq, label %_ZL10canSkipDefPN4llvm9MemoryDefEb.exit.thread.i.i, label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %_ZN4llvm8dyn_castINS_8CallBaseENS_11InstructionEEEDcPT0_.exit.i.i.i, %_ZN12_GLOBAL__N_18DSEState27isInvisibleToCallerOnUnwindEPKN4llvm5ValueE.exit.i.i
  %i.lr = call noundef zeroext i1 @_ZNK4llvm11Instruction8mayThrowEb(ptr noundef nonnull align 8 dereferenceable(72) %.val156.i.i, i1 noundef zeroext false) #20
  %.not.i.i75.i = xor i1 %i.lr, true
  %or.cond.i.i.i = or i1 %i.lo, %.not.i.i75.i
  br i1 %or.cond.i.i.i, label %bb.ac, label %_ZL10canSkipDefPN4llvm9MemoryDefEb.exit.thread.i.i

bb.ac:                                            ; preds = %.critedge.i.i.i
  %i.ls = load i8, ptr %.val156.i.i, align 8, !tbaa !129
  switch i8 %i.ls, label %_ZL10canSkipDefPN4llvm9MemoryDefEb.exit.i.i [
    i8 66, label %_ZL10canSkipDefPN4llvm9MemoryDefEb.exit.thread.i.i
    i8 88, label %bb.ad
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.lt = getelementptr inbounds i8, ptr %.val156.i.i, i64 -32
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !236 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.lu, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZL10canSkipDefPN4llvm9MemoryDefEb.exit.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.lv = load i8, ptr %i.lu, align 8, !tbaa !129
  %i.lw = icmp eq i8 %i.lv, 14
  br i1 %i.lw, label %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_11InstructionEvE10isPossibleERKS3_.exit.i.i.i.i.i.i, label %_ZL10canSkipDefPN4llvm9MemoryDefEb.exit.i.i

_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_11InstructionEvE10isPossibleERKS3_.exit.i.i.i.i.i.i: ; preds = %bb.ae
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lu, i64 32
  %i.ly = load i32, ptr %i.lx, align 8
  %i.lz = and i32 %i.ly, 8192
  %.not.i.i.i.i.i.i = icmp eq i32 %i.lz, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZL10canSkipDefPN4llvm9MemoryDefEb.exit.i.i, label %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit.i.i.i.i

_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit.i.i.i.i: ; preds = %_ZN4llvm14CastIsPossibleINS_13IntrinsicInstEPNS_11InstructionEvE10isPossibleERKS3_.exit.i.i.i.i.i.i
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lu, i64 36
  %i.mb = load i32, ptr %i.ma, align 4, !tbaa !237
  switch i32 %i.mb, label %_ZL10canSkipDefPN4llvm9MemoryDefEb.exit.i.i [
    i32 221, label %_ZL10canSkipDefPN4llvm9MemoryDefEb.exit.thread.i.i
    i32 220, label %_ZL10canSkipDefPN4llvm9MemoryDefEb.exit.thread.i.i
    i32 214, label %_ZL10canSkipDefPN4llvm9MemoryDefEb.exit.thread.i.i
end_hunk_0
