Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MemorySSAUpdater?download=true
inline.NumInlined: 5046
inline.NumDeleted: 2423
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN4llvm16MemorySSAUpdater18applyInsertUpdatesENS_8ArrayRefINS_3cfg6UpdateIPNS_10BasicBlockEEEEERNS_13DominatorTreeEPKNS_9GraphDiffIS5_Lb0EEE:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %i.b, ptr %i.e, align 8, !tbaa !892
  %i.f = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %3, ptr %i.f, align 8, !tbaa !893
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17
  %i.g = getelementptr inbounds nuw i8, ptr %13, i64 488 ; 7 uses
  store i32 1, ptr %13, align 8
  store i32 0, ptr %i.g, align 8
  %.idx = shl nuw nsw i64 %2, 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %.idx ; 2 uses
  %.not1051 = icmp eq i64 %2, 0                   ; 2 uses
  br i1 %.not1051, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %13, i64 24
  br label %bb.c

._crit_edge.loopexit:                             ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEZNS_16MemorySSAUpdater18applyInsertUpdatesENS_8ArrayRefINS_3cfg6UpdateIS3_EEEERNS_13DominatorTreeEPKNS_9GraphDiffIS3_Lb0EEEE8PredInfoLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SG_EEEES3_SG_SI_SL_EixERKS3_.exit
  %.pre = load i32, ptr %13, align 8, !noalias !894
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.l = phi i32 [ %.pre, %._crit_edge.loopexit ], [ 1, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #17
  %i.m = getelementptr inbounds nuw i8, ptr %14, i64 104 ; 9 uses
  store i32 1, ptr %14, align 8
  store i32 0, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #17
  %i.n = getelementptr inbounds nuw i8, ptr %15, i64 24 ; 13 uses
  store ptr %i.n, ptr %15, align 8, !tbaa !155
  %i.o = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 3 uses
  store i32 2, ptr %i.o, align 8, !tbaa !158
  %i.p = getelementptr inbounds nuw i8, ptr %15, i64 12 ; 4 uses
  store i32 0, ptr %i.p, align 4, !tbaa !156
  %i.q = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  store i8 1, ptr %i.q, align 8, !tbaa !152
  %i.r = and i32 %i.l, 1
  %.not.i.i.i.i = icmp eq i32 %i.r, 0             ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 8 uses
  %i.t = load ptr, ptr %i.s, align 8, !noalias !894
  %i.u = select i1 %.not.i.i.i.i, ptr %i.t, ptr %i.s
  %i.v = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  %i.w = load ptr, ptr %i.v, align 8, !noalias !894
  %i.x = select i1 %.not.i.i.i.i, ptr %i.w, ptr %i.g ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 4 uses
  %.val1.i = load i32, ptr %i.y, align 8, !noalias !894
  %i.z = select i1 %.not.i.i.i.i, i32 %.val1.i, i32 4 ; 2 uses
  %i.aa = icmp ult i32 %i.l, 2
  %i.ab = zext i32 %i.z to i64                    ; 4 uses
  %.idx1639 = mul nuw nsw i64 %i.ab, 120          ; 2 uses
  %.not.i.not.i.i = icmp eq i32 %i.z, 0
  %or.cond = select i1 %i.aa, i1 true, i1 %.not.i.not.i.i
  br i1 %or.cond, label %_ZNK4llvm15SmallPtrSetImplIPNS_10BasicBlockEE5beginEv.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.ac = add nuw nsw i64 %i.ab, 31
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = load i32, ptr %i.x, align 4, !tbaa !40, !noalias !895 ; 2 uses
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %.lr.ph.i.i.i.preheader, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEZNS_16MemorySSAUpdater18applyInsertUpdatesENS_8ArrayRefINS_3cfg6UpdateIS3_EEEERNS_13DominatorTreeEPKNS_9GraphDiffIS3_Lb0EEEE8PredInfoLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SG_EEEES3_SG_SI_SL_E5beginEv.exit

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %i.ag = icmp eq i64 %i.ad, 1
  br i1 %i.ag, label %_ZNK4llvm15SmallPtrSetImplIPNS_10BasicBlockEE5beginEv.exit, label %.lr.ph1752

.lr.ph.i.i.i:                                     ; preds = %.lr.ph1752
  %i.ah = add nuw nsw i64 %i.aj, 1                ; 2 uses
  %i.ai = icmp eq i64 %i.ah, %i.ad
  br i1 %i.ai, label %_ZNK4llvm15SmallPtrSetImplIPNS_10BasicBlockEE5beginEv.exit, label %.lr.ph1752, !llvm.loop !703

.lr.ph1752:                                       ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %i.aj = phi i64 [ %i.ah, %.lr.ph.i.i.i ], [ 1, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !40, !noalias !895 ; 2 uses
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %.lr.ph.i.i.i, label %._crit_edge.i.loopexit.i.i, !llvm.loop !703

._crit_edge.i.loopexit.i.i:                       ; preds = %.lr.ph1752
  %i.an = mul i64 %i.aj, 3840
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEZNS_16MemorySSAUpdater18applyInsertUpdatesENS_8ArrayRefINS_3cfg6UpdateIS3_EEEERNS_13DominatorTreeEPKNS_9GraphDiffIS3_Lb0EEEE8PredInfoLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SG_EEEES3_SG_SI_SL_E5beginEv.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEZNS_16MemorySSAUpdater18applyInsertUpdatesENS_8ArrayRefINS_3cfg6UpdateIS3_EEEERNS_13DominatorTreeEPKNS_9GraphDiffIS3_Lb0EEEE8PredInfoLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SG_EEEES3_SG_SI_SL_E5beginEv.exit: ; preds = %bb.b, %._crit_edge.i.loopexit.i.i
  %.012.lcssa.i.i.i = phi i64 [ 0, %bb.b ], [ %i.an, %._crit_edge.i.loopexit.i.i ]
  %.0.lcssa.i.i.i = phi i32 [ %i.ae, %bb.b ], [ %i.al, %._crit_edge.i.loopexit.i.i ]
  %i.ao = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i, i1 true)
  %narrow = mul nuw nsw i32 %i.ao, 120
  %.idx1638 = zext nneg i32 %narrow to i64
  %i.ap = add i64 %.012.lcssa.i.i.i, %.idx1638    ; 2 uses
  %.not9551074 = icmp eq i64 %i.ap, %.idx1639
  br i1 %.not9551074, label %_ZNK4llvm15SmallPtrSetImplIPNS_10BasicBlockEE5beginEv.exit, label %.lr.ph1076

.lr.ph1076:                                       ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEZNS_16MemorySSAUpdater18applyInsertUpdatesENS_8ArrayRefINS_3cfg6UpdateIS3_EEEERNS_13DominatorTreeEPKNS_9GraphDiffIS3_Lb0EEEE8PredInfoLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SG_EEEES3_SG_SI_SL_E5beginEv.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %14, i64 24 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.av = add nuw nsw i64 %i.ab, 31
  %i.aw = lshr i64 %i.av, 5                       ; 2 uses
  br label %bb.h

bb.c:                                             ; preds = %.lr.ph, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEZNS_16MemorySSAUpdater18applyInsertUpdatesENS_8ArrayRefINS_3cfg6UpdateIS3_EEEERNS_13DominatorTreeEPKNS_9GraphDiffIS3_Lb0EEEE8PredInfoLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SG_EEEES3_SG_SI_SL_EixERKS3_.exit
  %.01951052 = phi ptr [ %1, %.lr.ph ], [ %i.do, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEZNS_16MemorySSAUpdater18applyInsertUpdatesENS_8ArrayRefINS_3cfg6UpdateIS3_EEEERNS_13DominatorTreeEPKNS_9GraphDiffIS3_Lb0EEEE8PredInfoLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SG_EEEES3_SG_SI_SL_EixERKS3_.exit ] ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.01951052, i64 8
  %.0.copyload.i.i.i.i = load i64, ptr %i.ax, align 8
  %i.ay = and i64 %.0.copyload.i.i.i.i, -8        ; 2 uses
  %i.az = inttoptr i64 %i.ay to ptr               ; 3 uses
  %i.ba = load i32, ptr %13, align 8, !noalias !896 ; 2 uses
  %i.bb = and i32 %i.ba, 1                        ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.bb, 0          ; 3 uses
  %i.bc = load ptr, ptr %i.i, align 8, !noalias !896 ; 2 uses
  %i.bd = load ptr, ptr %i.j, align 8, !noalias !896 ; 2 uses
  %i.be = load i32, ptr %i.k, align 8, !noalias !896
  %.sink2.i.i.i.i.i = select i1 %.not.i.i.i.i.i, ptr %i.bc, ptr %i.i ; 2 uses
  %.sink1.i.i.i.i.i = select i1 %.not.i.i.i.i.i, ptr %i.bd, ptr %i.g ; 2 uses
  %.sink.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i32 %i.be, i32 4 ; 4 uses
  %i.bf = icmp eq i32 %.sink.i.i.i.i.i, 0
  br i1 %i.bf, label %.loopexit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bg = add i32 %.sink.i.i.i.i.i, -1            ; 2 uses
  %i.bh = mul i64 %i.ay, -4658895280553007687     ; 2 uses
  %i.bi = lshr i64 %i.bh, 31
  %i.bj = xor i64 %i.bi, %i.bh
  %i.bk = trunc i64 %i.bj to i32
  %i.bl = and i32 %i.bg, %i.bk                    ; 3 uses
  %i.bm = zext i32 %i.bl to i64                   ; 2 uses
  %i.bn = getelementptr inbounds nuw [120 x i8], ptr %.sink2.i.i.i.i.i, i64 %i.bm ; 2 uses
  %i.bo = lshr i64 %i.bm, 5
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i.i, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !40
  %i.br = and i32 %i.bl, 31
  %i.bs = lshr i32 %i.bq, %i.br
  %i.bt = trunc i32 %i.bs to i1
  br i1 %i.bt, label %.lr.ph.i.i.i255, label %.loopexit.i.i, !prof !41

.lr.ph.i.i.i255:                                  ; preds = %bb.d, %bb.e
  %i.bu = phi ptr [ %i.ca, %bb.e ], [ %i.bn, %bb.d ] ; 2 uses
  %.05.i.i.i = phi i32 [ %i.by, %bb.e ], [ %i.bl, %bb.d ]
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !43
  %i.bw = icmp eq ptr %i.bv, %i.az
  br i1 %i.bw, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEZNS_16MemorySSAUpdater18applyInsertUpdatesENS_8ArrayRefINS_3cfg6UpdateIS3_EEEERNS_13DominatorTreeEPKNS_9GraphDiffIS3_Lb0EEEE8PredInfoLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SG_EEEES3_SG_SI_SL_EixERKS3_.exit, label %bb.e, !prof !44

bb.e:                                             ; preds = %.lr.ph.i.i.i255
  %i.bx = add nuw i32 %.05.i.i.i, 1
  %i.by = and i32 %i.bx, %i.bg                    ; 3 uses
  %i.bz = zext i32 %i.by to i64                   ; 2 uses
  %i.ca = getelementptr inbounds nuw [120 x i8], ptr %.sink2.i.i.i.i.i, i64 %i.bz ; 2 uses
  %i.cb = lshr i64 %i.bz, 5
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i.i, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !40
  %i.ce = and i32 %i.by, 31
  %i.cf = lshr i32 %i.cd, %i.ce
  %i.cg = trunc i32 %i.cf to i1
  br i1 %i.cg, label %.lr.ph.i.i.i255, label %.loopexit.i.i, !prof !45, !llvm.loop !12

.loopexit.i.i:                                    ; preds = %bb.e, %bb.d, %bb.c
  %.lcssa9.sink.i.ph.i.i = phi ptr [ %i.bn, %bb.d ], [ null, %bb.c ], [ %i.ca, %bb.e ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa9.sink.i.ph.i.i, ptr %i.a, align 8, !tbaa !298
  %i.ch = shl i32 %i.ba, 1
  %i.ci = and i32 %i.ch, -4
  %i.cj = add i32 %i.ci, 4
  %i.ck = mul i32 %.sink.i.i.i.i.i, 3
  %.not.i.i.i = icmp ult i32 %i.cj, %i.ck
  br i1 %.not.i.i.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEZNS_16MemorySSAUpdater18applyInsertUpdatesENS_8ArrayRefINS_3cfg6UpdateIS3_EEEERNS_13DominatorTreeEPKNS_9GraphDiffIS3_Lb0EEEE8PredInfoLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SG_EEEES3_SG_SI_SL_E22findBucketForInsertionIS3_EEPSL_RKT_SP_.exit.i.i, label %bb.f, !prof !44

bb.f:                                             ; preds = %.loopexit.i.i
  %i.cl = shl i32 %.sink.i.i.i.i.i, 1
  call fastcc void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEZNS_16MemorySSAUpdater18applyInsertUpdatesENS_8ArrayRefINS_3cfg6UpdateIS3_EEEERNS_13DominatorTreeEPKNS_9GraphDiffIS3_Lb0EEEE8PredInfoLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SG_EEEES3_SG_SI_SL_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %13, i32 noundef %i.cl)
  call fastcc void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEZNS_16MemorySSAUpdater18applyInsertUpdatesENS_8ArrayRefINS_3cfg6UpdateIS3_EEEERNS_13DominatorTreeEPKNS_9GraphDiffIS3_Lb0EEEE8PredInfoLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SG_EEEES3_SG_SI_SL_E15LookupBucketForIS3_EEbRKT_RPSL_(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr %i.az, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pre.i.i.i = load i32, ptr %13, align 8
  %.pre8.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !298
  %.pre9.i.i.i = and i32 %.pre.i.i.i, 1
  %.pre.i.i = load ptr, ptr %i.j, align 8
  %.pre17.i.i = load ptr, ptr %i.i, align 8
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEZNS_16MemorySSAUpdater18applyInsertUpdatesENS_8ArrayRefINS_3cfg6UpdateIS3_EEEERNS_13DominatorTreeEPKNS_9GraphDiffIS3_Lb0EEEE8PredInfoLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SG_EEEES3_SG_SI_SL_E22findBucketForInsertionIS3_EEPSL_RKT_SP_.exit.i.i

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEZNS_16MemorySSAUpdater18applyInsertUpdatesENS_8ArrayRefINS_3cfg6UpdateIS3_EEEERNS_13DominatorTreeEPKNS_9GraphDiffIS3_Lb0EEEE8PredInfoLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SG_EEEES3_SG_SI_SL_E22findBucketForInsertionIS3_EEPSL_RKT_SP_.exit.i.i: ; preds = %bb.f, %.loopexit.i.i
  %i.cm = phi ptr [ %.pre17.i.i, %bb.f ], [ %i.bc, %.loopexit.i.i ]
  %i.cn = phi ptr [ %.pre.i.i, %bb.f ], [ %i.bd, %.loopexit.i.i ]
  %.pre-phi.i.i.i = phi i32 [ %.pre9.i.i.i, %bb.f ], [ %i.bb, %.loopexit.i.i ]
  %i.co = phi ptr [ %.pre8.i.i.i, %bb.f ], [ %.lcssa9.sink.i.ph.i.i, %.loopexit.i.i ] ; 11 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %.pre-phi.i.i.i, 0 ; 2 uses
  %i.cp = select i1 %.not.i.i.i.i.i.i, ptr %i.cn, ptr %i.g
  %i.cq = select i1 %.not.i.i.i.i.i.i, ptr %i.cm, ptr %i.i
  %i.cr = ptrtoint ptr %i.co to i64
  %i.cs = ptrtoint ptr %i.cq to i64
  %i.ct = sub i64 %i.cr, %i.cs
  %i.cu = sdiv exact i64 %i.ct, 120               ; 2 uses
  %i.cv = trunc i64 %i.cu to i32
  %i.cw = and i32 %i.cv, 31
  %i.cx = shl nuw i32 1, %i.cw
  %i.cy = lshr i64 %i.cu, 5
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.cy ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !40
  %i.db = or i32 %i.cx, %i.da
  store i32 %i.db, ptr %i.cz, align 4, !tbaa !40
  %.val.i.i.i.i = load i32, ptr %13, align 8      ; 2 uses
  %29 = and i32 %.val.i.i.i.i, -2
  %i.dc = add i32 %29, 2
  %30 = and i32 %.val.i.i.i.i, 1
  %31 = or disjoint i32 %i.dc, %30
  store i32 %31, ptr %13, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.az, ptr %i.co, align 8, !tbaa !43
  %i.dd = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.co, i64 32
  %i.df = getelementptr inbounds nuw i8, ptr %i.co, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.dd, i8 0, i64 112, i1 false)
  store ptr %i.df, ptr %i.de, align 8, !tbaa !148
  %i.dg = getelementptr inbounds nuw i8, ptr %i.co, i64 44
  store i32 2, ptr %i.dg, align 4, !tbaa !163
  %i.dh = getelementptr inbounds nuw i8, ptr %i.co, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.dh, i8 0, i64 24, i1 false)
  %i.di = getelementptr inbounds nuw i8, ptr %i.co, i64 88
  %i.dj = getelementptr inbounds nuw i8, ptr %i.co, i64 104
  store ptr %i.dj, ptr %i.di, align 8, !tbaa !148
  %i.dk = getelementptr inbounds nuw i8, ptr %i.co, i64 100
  store i32 2, ptr %i.dk, align 4, !tbaa !163
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEZNS_16MemorySSAUpdater18applyInsertUpdatesENS_8ArrayRefINS_3cfg6UpdateIS3_EEEERNS_13DominatorTreeEPKNS_9GraphDiffIS3_Lb0EEEE8PredInfoLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SG_EEEES3_SG_SI_SL_EixERKS3_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEZNS_16MemorySSAUpdater18applyInsertUpdatesENS_8ArrayRefINS_3cfg6UpdateIS3_EEEERNS_13DominatorTreeEPKNS_9GraphDiffIS3_Lb0EEEE8PredInfoLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SG_EEEES3_SG_SI_SL_EixERKS3_.exit: ; preds = %.lr.ph.i.i.i255, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEZNS_16MemorySSAUpdater18applyInsertUpdatesENS_8ArrayRefINS_3cfg6UpdateIS3_EEEERNS_13DominatorTreeEPKNS_9GraphDiffIS3_Lb0EEEE8PredInfoLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SG_EEEES3_SG_SI_SL_E22findBucketForInsertionIS3_EEPSL_RKT_SP_.exit.i.i
  %.sroa.0.0.i.i = phi ptr [ %i.co, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEZNS_16MemorySSAUpdater18applyInsertUpdatesENS_8ArrayRefINS_3cfg6UpdateIS3_EEEERNS_13DominatorTreeEPKNS_9GraphDiffIS3_Lb0EEEE8PredInfoLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SG_EEEES3_SG_SI_SL_E22findBucketForInsertionIS3_EEPSL_RKT_SP_.exit.i.i ], [ %i.bu, %.lr.ph.i.i.i255 ]
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  %i.dm = load ptr, ptr %.01951052, align 8, !tbaa !291
  store ptr %i.dm, ptr %i.c, align 8, !tbaa !43
  %i.dn = call noundef zeroext i1 @_ZN4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj2EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj2EE6insertERKS2_(ptr noundef nonnull align 8 dereferenceable(56) %i.dl, ptr noundef nonnull align 8 dereferenceable(8) %i.c) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  %i.do = getelementptr inbounds nuw i8, ptr %.01951052, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.do, %i.h
  br i1 %.not, label %._crit_edge.loopexit, label %bb.c

._crit_edge1077:                                  ; preds = %_ZN4llvm15SmallPtrSetImplIPNS_10BasicBlockEE6insertES2_.exit, %_ZN4llvm16DenseMapIteratorIPNS_10BasicBlockEZNS_16MemorySSAUpdater18applyInsertUpdatesENS_8ArrayRefINS_3cfg6UpdateIS2_EEEERNS_13DominatorTreeEPKNS_9GraphDiffIS2_Lb0EEEE8PredInfoNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SF_EELb0EEppEv.exit, %.lr.ph.i.i276.preheader, %.lr.ph.i.i276
  %.pre1281 = load ptr, ptr %15, align 8, !tbaa !155 ; 6 uses
  %.pre1282 = load i8, ptr %i.q, align 8, !tbaa !152, !range !153
  %.pre1283 = load i32, ptr %i.p, align 4
  %.pre1284 = load i32, ptr %i.o, align 8
  %i.dp = trunc nuw i8 %.pre1282 to i1
  %i.dq = select i1 %i.dp, i32 %.pre1283, i32 %.pre1284 ; 2 uses
  %.v.i.i.i = zext i32 %i.dq to i64               ; 3 uses
  %.idx.i = shl nuw nsw i64 %.v.i.i.i, 3
  %i.dr = getelementptr i8, ptr %.pre1281, i64 %.idx.i ; 5 uses
  %.not1.i.i.i.i.i = icmp eq i32 %i.dq, 0
  br i1 %.not1.i.i.i.i.i, label %_ZNK4llvm15SmallPtrSetImplIPNS_10BasicBlockEE5beginEv.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %._crit_edge1077, %bb.g
  %.sroa.0.0.i.i256 = phi ptr [ %i.du, %bb.g ], [ %.pre1281, %._crit_edge1077 ] ; 3 uses
  %i.ds = load ptr, ptr %.sroa.0.0.i.i256, align 8, !tbaa !157
  %i.dt = icmp eq ptr %i.ds, inttoptr (i64 -1 to ptr)
  br i1 %i.dt, label %bb.g, label %_ZNK4llvm15SmallPtrSetImplIPNS_10BasicBlockEE5beginEv.exit

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i256, i64 8 ; 2 uses
  %.not.i.i.i.i.i257 = icmp eq ptr %i.du, %i.dr
  br i1 %.not.i.i.i.i.i257, label %_ZNK4llvm15SmallPtrSetImplIPNS_10BasicBlockEE5beginEv.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !9

_ZNK4llvm15SmallPtrSetImplIPNS_10BasicBlockEE5beginEv.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.i.i, %bb.g, %.lr.ph.i.i.i.preheader, %._crit_edge, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEZNS_16MemorySSAUpdater18applyInsertUpdatesENS_8ArrayRefINS_3cfg6UpdateIS3_EEEERNS_13DominatorTreeEPKNS_9GraphDiffIS3_Lb0EEEE8PredInfoLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SG_EEEES3_SG_SI_SL_E5beginEv.exit, %._crit_edge1077
  %i.dv = phi ptr [ %i.dr, %._crit_edge1077 ], [ %i.n, %._crit_edge ], [ %i.dr, %.lr.ph.i.i.i.i.i ], [ %i.n, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEZNS_16MemorySSAUpdater18applyInsertUpdatesENS_8ArrayRefINS_3cfg6UpdateIS3_EEEERNS_13DominatorTreeEPKNS_9GraphDiffIS3_Lb0EEEE8PredInfoLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SG_EEEES3_SG_SI_SL_E5beginEv.exit ], [ %i.n, %.lr.ph.i.i.i.preheader ], [ %i.dr, %bb.g ], [ %i.n, %.lr.ph.i.i.i ] ; 2 uses
  %.v.i.i.i1512 = phi i64 [ 0, %._crit_edge1077 ], [ 0, %._crit_edge ], [ %.v.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEZNS_16MemorySSAUpdater18applyInsertUpdatesENS_8ArrayRefINS_3cfg6UpdateIS3_EEEERNS_13DominatorTreeEPKNS_9GraphDiffIS3_Lb0EEEE8PredInfoLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SG_EEEES3_SG_SI_SL_E5beginEv.exit ], [ 0, %.lr.ph.i.i.i.preheader ], [ %.v.i.i.i, %bb.g ], [ 0, %.lr.ph.i.i.i ]
  %i.dw = phi ptr [ %.pre1281, %._crit_edge1077 ], [ %i.n, %._crit_edge ], [ %.pre1281, %.lr.ph.i.i.i.i.i ], [ %i.n, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEZNS_16MemorySSAUpdater18applyInsertUpdatesENS_8ArrayRefINS_3cfg6UpdateIS3_EEEERNS_13DominatorTreeEPKNS_9GraphDiffIS3_Lb0EEEE8PredInfoLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SG_EEEES3_SG_SI_SL_E5beginEv.exit ], [ %i.n, %.lr.ph.i.i.i.preheader ], [ %.pre1281, %bb.g ], [ %i.n, %.lr.ph.i.i.i ]
  %.sroa.0.1.i.i = phi ptr [ %.pre1281, %._crit_edge1077 ], [ %i.n, %._crit_edge ], [ %.sroa.0.0.i.i256, %.lr.ph.i.i.i.i.i ], [ %i.n, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEZNS_16MemorySSAUpdater18applyInsertUpdatesENS_8ArrayRefINS_3cfg6UpdateIS3_EEEERNS_13DominatorTreeEPKNS_9GraphDiffIS3_Lb0EEEE8PredInfoLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SG_EEEES3_SG_SI_SL_E5beginEv.exit ], [ %i.n, %.lr.ph.i.i.i.preheader ], [ %i.dr, %bb.g ], [ %i.n, %.lr.ph.i.i.i ] ; 2 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %.v.i.i.i1512 ; 2 uses
  %.not9561078 = icmp eq ptr %.sroa.0.1.i.i, %i.dx
  br i1 %.not9561078, label %._crit_edge1081, label %.lr.ph1080.preheader

.lr.ph1080.preheader:                             ; preds = %_ZNK4llvm15SmallPtrSetImplIPNS_10BasicBlockEE5beginEv.exit
  %.pre1286 = load i32, ptr %13, align 8, !noalias !897
  br label %.lr.ph1080

bb.h:                                             ; preds = %.lr.ph1076, %_ZN4llvm16DenseMapIteratorIPNS_10BasicBlockEZNS_16MemorySSAUpdater18applyInsertUpdatesENS_8ArrayRefINS_3cfg6UpdateIS2_EEEERNS_13DominatorTreeEPKNS_9GraphDiffIS2_Lb0EEEE8PredInfoNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SF_EELb0EEppEv.exit
  %.pn = phi i64 [ %i.ap, %.lr.ph1076 ], [ %i.vo, %_ZN4llvm16DenseMapIteratorIPNS_10BasicBlockEZNS_16MemorySSAUpdater18applyInsertUpdatesENS_8ArrayRefINS_3cfg6UpdateIS2_EEEERNS_13DominatorTreeEPKNS_9GraphDiffIS2_Lb0EEEE8PredInfoNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SF_EELb0EEppEv.exit ] ; 2 uses
  %.sroa.0922.01075 = getelementptr i8, ptr %i.u, i64 %.pn ; 15 uses
  %i.dy = load ptr, ptr %.sroa.0922.01075, align 8, !tbaa !909 ; 8 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.0922.01075, i64 8
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.0922.01075, i64 64 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #17
  %i.eb = load ptr, ptr %i.b, align 8, !tbaa !292
  call void @_ZNK4llvm9GraphDiffIPNS_10BasicBlockELb0EE11getChildrenILb1EEENS_11SmallVectorIS2_Lj8EEES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallVector.222") align 8 %16, ptr noundef nonnull align 8 dereferenceable(696) %i.eb, ptr noundef %i.dy)
  %i.ec = load ptr, ptr %16, align 8, !tbaa !148  ; 3 uses
  %i.ed = load i32, ptr %i.aq, align 8, !tbaa !147 ; 2 uses
  %i.ee = zext i32 %i.ed to i64
  %.idx1167 = shl nuw nsw i64 %i.ee, 3
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 %.idx1167
  %.not2401069 = icmp eq i32 %i.ed, 0
  br i1 %.not2401069, label %._crit_edge1073, label %.lr.ph1072

.lr.ph1072:                                       ; preds = %bb.h
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.0922.01075, i64 24
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.0922.01075, i64 16
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.0922.01075, i64 28
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.0922.01075, i64 32
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.0922.01075, i64 40
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.0922.01075, i64 80 ; 6 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.0922.01075, i64 72 ; 4 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.0922.01075, i64 84 ; 4 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.0922.01075, i64 88 ; 5 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.0922.01075, i64 96 ; 7 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.0922.01075, i64 100 ; 2 uses
  %i.er = ptrtoint ptr %i.dy to i64
  %i.es = mul i64 %i.er, -4658895280553007687     ; 2 uses
  %i.et = lshr i64 %i.es, 31
  %i.eu = xor i64 %i.et, %i.es
  %i.ev = and i64 %i.eu, 4294967295               ; 2 uses
  br label %bb.j

._crit_edge1073.loopexit:                         ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit
  %.pre1279 = load ptr, ptr %16, align 8, !tbaa !148
  br label %._crit_edge1073

._crit_edge1073:                                  ; preds = %._crit_edge1073.loopexit, %bb.h
  %i.ew = phi ptr [ %.pre1279, %._crit_edge1073.loopexit ], [ %i.ec, %bb.h ] ; 2 uses
  %i.ex = icmp eq ptr %i.ew, %i.au
  br i1 %i.ex, label %_ZN4llvm11SmallVectorIPNS_10BasicBlockELj8EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge1073
  call void @free(ptr noundef %i.ew) #17
  br label %_ZN4llvm11SmallVectorIPNS_10BasicBlockELj8EED2Ev.exit

_ZN4llvm11SmallVectorIPNS_10BasicBlockELj8EED2Ev.exit: ; preds = %._crit_edge1073, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.0922.01075, i64 96
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !147
  %.not.i.i = icmp eq i32 %i.ez, 0
  br i1 %.not.i.i, label %bb.aw, label %_ZN4llvm15SmallPtrSetImplIPNS_10BasicBlockEE6insertES2_.exit

bb.j:                                             ; preds = %.lr.ph1072, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit
  %.02141070 = phi ptr [ %i.ec, %.lr.ph1072 ], [ %i.ui, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit ] ; 2 uses
  %i.fa = load ptr, ptr %.02141070, align 8, !tbaa !43 ; 30 uses
  %i.fb = load i32, ptr %i.eg, align 8, !tbaa !299
  %i.fc = icmp eq i32 %i.fb, 0
  br i1 %i.fc, label %bb.k, label %bb.t

bb.k:                                             ; preds = %bb.j
  %i.fd = load ptr, ptr %i.ej, align 8, !tbaa !148 ; 4 uses
  %i.fe = load i32, ptr %i.ek, align 8, !tbaa !147 ; 3 uses
  %i.ff = zext i32 %i.fe to i64                   ; 2 uses
  %.idx4.i.i599 = shl nuw nsw i64 %i.ff, 3        ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 %.idx4.i.i599
  %i.fh = lshr i64 %i.ff, 2                       ; 2 uses
  %.not.i.i600 = icmp eq i64 %i.fh, 0
  br i1 %.not.i.i600, label %._crit_edge.i.i.i.i.i606, label %.lr.ph.i.i.i.i.i601

.lr.ph.i.i.i.i.i601:                              ; preds = %bb.k
  %i.fi = and i64 %.idx4.i.i599, 34359738336
  %scevgep.i.i.i.i.i602 = getelementptr i8, ptr %i.fd, i64 %i.fi
  br label %bb.l

bb.l:                                             ; preds = %bb.p, %.lr.ph.i.i.i.i.i601
  %.047.i.i.i.i.i603 = phi i64 [ %i.fh, %.lr.ph.i.i.i.i.i601 ], [ %i.fv, %bb.p ] ; 2 uses
  %.02946.i.i.i.i.i604 = phi ptr [ %i.fd, %.lr.ph.i.i.i.i.i601 ], [ %i.fu, %bb.p ] ; 9 uses
  %i.fj = load ptr, ptr %.02946.i.i.i.i.i604, align 8, !tbaa !43
  %i.fk = icmp eq ptr %i.fj, %i.fa
  br i1 %i.fk, label %_ZNK4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj2EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj2EE8containsEPKS1_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.fl = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i604, i64 8
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !43
  %i.fn = icmp eq ptr %i.fm, %i.fa
  br i1 %i.fn, label %_ZNK4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj2EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj2EE8containsEPKS1_.exit.loopexit.split.loop.exit1624, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.fo = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i604, i64 16
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !43
  %i.fq = icmp eq ptr %i.fp, %i.fa
  br i1 %i.fq, label %_ZNK4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj2EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj2EE8containsEPKS1_.exit.loopexit.split.loop.exit1622, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fr = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i604, i64 24
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !43
  %i.ft = icmp eq ptr %i.fs, %i.fa
  br i1 %i.ft, label %_ZNK4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj2EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj2EE8containsEPKS1_.exit.loopexit.split.loop.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fu = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i604, i64 32
  %i.fv = add nsw i64 %.047.i.i.i.i.i603, -1
  %i.fw = icmp sgt i64 %.047.i.i.i.i.i603, 1
  br i1 %i.fw, label %bb.l, label %._crit_edge.loopexit.i.i.i.i.i605, !llvm.loop !13

._crit_edge.loopexit.i.i.i.i.i605:                ; preds = %bb.p
  %i.fx = and i32 %i.fe, 3
  br label %._crit_edge.i.i.i.i.i606

._crit_edge.i.i.i.i.i606:                         ; preds = %._crit_edge.loopexit.i.i.i.i.i605, %bb.k
  %.pre-phi56.i.i.i.i.i607 = phi i32 [ %i.fx, %._crit_edge.loopexit.i.i.i.i.i605 ], [ %i.fe, %bb.k ]
  %.029.lcssa.i.i.i.i.i608 = phi ptr [ %scevgep.i.i.i.i.i602, %._crit_edge.loopexit.i.i.i.i.i605 ], [ %i.fd, %bb.k ] ; 5 uses
  switch i32 %.pre-phi56.i.i.i.i.i607, label %_ZNK4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj2EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj2EE8containsEPKS1_.exit.thread939 [
    i32 3, label %bb.q
    i32 2, label %._crit_edge._crit_edge.i.i.i.i.i612
    i32 1, label %._crit_edge._crit_edge52.i.i.i.i.i609
  ]

bb.q:                                             ; preds = %._crit_edge.i.i.i.i.i606
  %i.fy = load ptr, ptr %.029.lcssa.i.i.i.i.i608, align 8, !tbaa !43
  %i.fz = icmp eq ptr %i.fy, %i.fa
  br i1 %i.fz, label %_ZNK4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj2EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj2EE8containsEPKS1_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ga = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i608, i64 8
  br label %._crit_edge._crit_edge.i.i.i.i.i612

._crit_edge._crit_edge.i.i.i.i.i612:              ; preds = %bb.r, %._crit_edge.i.i.i.i.i606
  %.1.i.i.i.i.i613 = phi ptr [ %i.ga, %bb.r ], [ %.029.lcssa.i.i.i.i.i608, %._crit_edge.i.i.i.i.i606 ] ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN4llvm16MemorySSAUpdater18applyInsertUpdatesENS_8ArrayRefINS_3cfg6UpdateIPNS_10BasicBlockEEEEERNS_13DominatorTreeEPKNS_9GraphDiffIS5_Lb0EEE:bb.a
  %i.ov = icmp eq ptr %i.fa, %i.ou
  br i1 %i.ov, label %.loopexit973, label %bb.ap, !prof !44

bb.ap:                                            ; preds = %.lr.ph.i777
  %i.ow = add nuw i32 %.024.i, 1
  %i.ox = and i32 %i.ow, %i.oe                    ; 3 uses
  %i.oy = zext i32 %i.ox to i64                   ; 2 uses
  %i.oz = getelementptr inbounds nuw [8 x i8], ptr %i.oa, i64 %i.oy ; 2 uses
  %i.pa = lshr i64 %i.oy, 5
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %i.ob, i64 %i.pa
  %i.pc = load i32, ptr %i.pb, align 4, !tbaa !40, !noalias !915
  %i.pd = and i32 %i.ox, 31
  %i.pe = lshr i32 %i.pc, %i.pd
  %i.pf = trunc i32 %i.pe to i1
  br i1 %i.pf, label %.lr.ph.i777, label %.loopexit973, !prof !45, !llvm.loop !15

.loopexit973:                                     ; preds = %.lr.ph.i777, %bb.ap, %.loopexit.i614, %bb.ao
  %i.pg = phi ptr [ %i.mq, %.loopexit.i614 ], [ %i.oa, %bb.ao ], [ %i.oa, %bb.ap ], [ %i.oa, %.lr.ph.i777 ]
  %i.ph = phi ptr [ %i.mr, %.loopexit.i614 ], [ %i.ob, %bb.ao ], [ %i.ob, %bb.ap ], [ %i.ob, %.lr.ph.i777 ]
  %i.pi = phi ptr [ %.lcssa28.sink.i.ph.i, %.loopexit.i614 ], [ %i.om, %bb.ao ], [ %i.ot, %.lr.ph.i777 ], [ %i.oz, %bb.ap ] ; 2 uses
  %i.pj = ptrtoint ptr %i.pi to i64
  %i.pk = ptrtoint ptr %i.pg to i64
  %i.pl = sub i64 %i.pj, %i.pk
  %i.pm = ashr exact i64 %i.pl, 3                 ; 2 uses
  %i.pn = trunc i64 %i.pm to i32
  %i.po = and i32 %i.pn, 31
  %i.pp = shl nuw i32 1, %i.po
  %i.pq = lshr i64 %i.pm, 5
  %i.pr = getelementptr inbounds nuw [4 x i8], ptr %i.ph, i64 %i.pq ; 2 uses
  %i.ps = load i32, ptr %i.pr, align 4, !tbaa !40, !noalias !915
  %i.pt = or i32 %i.pp, %i.ps
  store i32 %i.pt, ptr %i.pr, align 4, !tbaa !40, !noalias !915
  %i.pu = load i32, ptr %i.el, align 8, !tbaa !299, !noalias !915
  %i.pv = add i32 %i.pu, 1
  store i32 %i.pv, ptr %i.el, align 8, !tbaa !299, !noalias !915
  store ptr %i.fa, ptr %i.pi, align 8, !tbaa !43, !noalias !915
  %i.pw = load i32, ptr %i.ep, align 8, !tbaa !147 ; 2 uses
  %i.px = load i32, ptr %i.eq, align 4, !tbaa !163
  %.not.i9.i = icmp ult i32 %i.pw, %i.px
  br i1 %.not.i9.i, label %bb.ar, label %bb.aq, !prof !44

bb.aq:                                            ; preds = %.loopexit973
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_10BasicBlockELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.eo, ptr noundef %i.fa)
  br label %_ZN4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj2EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj2EE6insertERKS2_.exit

bb.ar:                                            ; preds = %.loopexit973
  %i.py = zext i32 %i.pw to i64
  %i.pz = load ptr, ptr %i.eo, align 8, !tbaa !148
  %i.qa = getelementptr inbounds nuw [8 x i8], ptr %i.pz, i64 %i.py
  store ptr %i.fa, ptr %i.qa, align 1
  %i.qb = load i32, ptr %i.ep, align 8, !tbaa !147
  %i.qc = add i32 %i.qb, 1
  store i32 %i.qc, ptr %i.ep, align 8, !tbaa !147
  br label %_ZN4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj2EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj2EE6insertERKS2_.exit

_ZN4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj2EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj2EE6insertERKS2_.exit: ; preds = %.lr.ph.i.i.i.i2.i, %.lr.ph.i.i618, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10BasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_.exit632, %bb.ar, %bb.aq, %_ZN4llvm23SmallVectorTemplateBaseIPNS_10BasicBlockELb1EE9push_backES2_.exit.i, %_ZN4llvm12is_containedIRNS_11SmallVectorIPNS_10BasicBlockELj2EEES3_EEbOT_RKT0_.exit.i, %_ZNK4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj2EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj2EE8containsEPKS1_.exit
  %i.qd = load i32, ptr %14, align 8, !noalias !917 ; 2 uses
  %i.qe = and i32 %i.qd, 1
  %.not.i.i.i.i633 = icmp eq i32 %i.qe, 0         ; 3 uses
  %i.qf = load ptr, ptr %i.ar, align 8, !noalias !917
  %i.qg = load ptr, ptr %i.as, align 8, !noalias !917
  %i.qh = load i32, ptr %i.at, align 8, !noalias !917
  %.sink2.i.i.i.i = select i1 %.not.i.i.i.i633, ptr %i.qf, ptr %i.ar ; 3 uses
  %.sink1.i.i.i.i = select i1 %.not.i.i.i.i633, ptr %i.qg, ptr %i.m ; 3 uses
  %.sink.i.i.i.i = select i1 %.not.i.i.i.i633, i32 %i.qh, i32 4 ; 4 uses
  %i.qi = icmp eq i32 %.sink.i.i.i.i, 0
  br i1 %i.qi, label %.loopexit.i634, label %bb.as

bb.as:                                            ; preds = %_ZN4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj2EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj2EE6insertERKS2_.exit
  %i.qj = add i32 %.sink.i.i.i.i, -1              ; 2 uses
  %i.qk = ptrtoint ptr %i.fa to i64
  %i.ql = mul i64 %i.qk, -4658895280553007687     ; 2 uses
  %i.qm = lshr i64 %i.ql, 31
  %i.qn = xor i64 %i.qm, %i.ql
  %i.qo = shl i64 %i.qn, 32
  %i.qp = or disjoint i64 %i.qo, %i.ev
  %i.qq = mul i64 %i.qp, -4658895280553007687     ; 2 uses
  %i.qr = lshr i64 %i.qq, 31
  %i.qs = xor i64 %i.qr, %i.qq
  %i.qt = trunc i64 %i.qs to i32
  %i.qu = and i32 %i.qj, %i.qt                    ; 3 uses
  %i.qv = zext i32 %i.qu to i64                   ; 2 uses
  %i.qw = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i.i, i64 %i.qv ; 2 uses
  %i.qx = lshr i64 %i.qv, 5
  %i.qy = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i, i64 %i.qx
  %i.qz = load i32, ptr %i.qy, align 4, !tbaa !40
  %i.ra = and i32 %i.qu, 31
  %i.rb = lshr i32 %i.qz, %i.ra
  %i.rc = trunc i32 %i.rb to i1
  br i1 %i.rc, label %.lr.ph.i.i645, label %.loopexit.i634, !prof !41

.lr.ph.i.i645:                                    ; preds = %bb.as, %bb.at
  %i.rd = phi ptr [ %i.rn, %bb.at ], [ %i.qw, %bb.as ] ; 4 uses
  %.024.i.i646 = phi i32 [ %i.rl, %bb.at ], [ %i.qu, %bb.as ]
  %i.re = load ptr, ptr %i.rd, align 8, !tbaa !302
  %i.rf = icmp eq ptr %i.fa, %i.re
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rd, i64 8
  %i.rh = load ptr, ptr %i.rg, align 8
  %i.ri = icmp eq ptr %i.dy, %i.rh
  %i.rj = select i1 %i.rf, i1 %i.ri, i1 false
  br i1 %i.rj, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit.loopexit, label %bb.at, !prof !44

bb.at:                                            ; preds = %.lr.ph.i.i645
  %i.rk = add nuw i32 %.024.i.i646, 1
  %i.rl = and i32 %i.rk, %i.qj                    ; 3 uses
  %i.rm = zext i32 %i.rl to i64                   ; 2 uses
  %i.rn = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i.i, i64 %i.rm ; 2 uses
  %i.ro = lshr i64 %i.rm, 5
  %i.rp = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i, i64 %i.ro
  %i.rq = load i32, ptr %i.rp, align 4, !tbaa !40
  %i.rr = and i32 %i.rl, 31
  %i.rs = lshr i32 %i.rq, %i.rr
  %i.rt = trunc i32 %i.rs to i1
  br i1 %i.rt, label %.lr.ph.i.i645, label %.loopexit.i634, !prof !45, !llvm.loop !16

.loopexit.i634:                                   ; preds = %bb.at, %bb.as, %_ZN4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj2EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj2EE6insertERKS2_.exit
  %.lcssa28.sink.i.ph.i635 = phi ptr [ %i.qw, %bb.as ], [ null, %_ZN4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj2EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj2EE6insertERKS2_.exit ], [ %i.rn, %bb.at ]
  %i.ru = shl i32 %i.qd, 1
  %i.rv = and i32 %i.ru, -4
  %i.rw = add i32 %i.rv, 4
  %i.rx = mul i32 %.sink.i.i.i.i, 3
  %.not.i.i636 = icmp ult i32 %i.rw, %i.rx
  br i1 %.not.i.i636, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i, label %bb.au, !prof !44

bb.au:                                            ; preds = %.loopexit.i634
  %i.ry = shl i32 %.sink.i.i.i.i, 1
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %14, i32 noundef %i.ry)
  %i.rz = load i32, ptr %14, align 8, !noalias !918
  %i.sa = and i32 %i.rz, 1
  %.not.i.i.i783 = icmp eq i32 %i.sa, 0           ; 3 uses
  %i.sb = load ptr, ptr %i.ar, align 8, !noalias !918
  %i.sc = load ptr, ptr %i.as, align 8, !noalias !918
  %i.sd = load i32, ptr %i.at, align 8, !noalias !918
  %.sink2.i.i.i = select i1 %.not.i.i.i783, ptr %i.sb, ptr %i.ar ; 5 uses
  %.sink1.i.i.i = select i1 %.not.i.i.i783, ptr %i.sc, ptr %i.m ; 5 uses
  %.sink.i.i.i = select i1 %.not.i.i.i783, i32 %i.sd, i32 4 ; 2 uses
  %i.se = icmp ne i32 %.sink.i.i.i, 0
  call void @llvm.assume(i1 %i.se)
  %i.sf = add i32 %.sink.i.i.i, -1                ; 2 uses
  %i.sg = ptrtoint ptr %i.fa to i64
  %i.sh = mul i64 %i.sg, -4658895280553007687     ; 2 uses
  %i.si = lshr i64 %i.sh, 31
  %i.sj = xor i64 %i.si, %i.sh
  %i.sk = shl i64 %i.sj, 32
  %i.sl = or disjoint i64 %i.sk, %i.ev
  %i.sm = mul i64 %i.sl, -4658895280553007687     ; 2 uses
  %i.sn = lshr i64 %i.sm, 31
  %i.so = xor i64 %i.sn, %i.sm
  %i.sp = trunc i64 %i.so to i32
  %i.sq = and i32 %i.sf, %i.sp                    ; 3 uses
  %i.sr = zext i32 %i.sq to i64                   ; 2 uses
  %i.ss = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i, i64 %i.sr ; 2 uses
  %i.st = lshr i64 %i.sr, 5
  %i.su = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.st
  %i.sv = load i32, ptr %i.su, align 4, !tbaa !40
  %i.sw = and i32 %i.sq, 31
  %i.sx = lshr i32 %i.sv, %i.sw
  %i.sy = trunc i32 %i.sx to i1
  br i1 %i.sy, label %.lr.ph.i786, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i, !prof !41

.lr.ph.i786:                                      ; preds = %bb.au, %bb.av
  %i.sz = phi ptr [ %i.tj, %bb.av ], [ %i.ss, %bb.au ] ; 3 uses
  %.024.i787 = phi i32 [ %i.th, %bb.av ], [ %i.sq, %bb.au ]
  %i.ta = load ptr, ptr %i.sz, align 8, !tbaa !302
  %i.tb = icmp eq ptr %i.fa, %i.ta
  %i.tc = getelementptr inbounds nuw i8, ptr %i.sz, i64 8
  %i.td = load ptr, ptr %i.tc, align 8
  %i.te = icmp eq ptr %i.dy, %i.td
  %i.tf = select i1 %i.tb, i1 %i.te, i1 false
  br i1 %i.tf, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i, label %bb.av, !prof !44

bb.av:                                            ; preds = %.lr.ph.i786
  %i.tg = add nuw i32 %.024.i787, 1
  %i.th = and i32 %i.tg, %i.sf                    ; 3 uses
  %i.ti = zext i32 %i.th to i64                   ; 2 uses
  %i.tj = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i, i64 %i.ti ; 2 uses
  %i.tk = lshr i64 %i.ti, 5
  %i.tl = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.tk
  %i.tm = load i32, ptr %i.tl, align 4, !tbaa !40
  %i.tn = and i32 %i.th, 31
  %i.to = lshr i32 %i.tm, %i.tn
  %i.tp = trunc i32 %i.to to i1
  br i1 %i.tp, label %.lr.ph.i786, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i, !prof !45, !llvm.loop !16

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i: ; preds = %bb.av, %.lr.ph.i786, %bb.au, %.loopexit.i634
  %.pre-phi1321 = phi ptr [ %.sink2.i.i.i.i, %.loopexit.i634 ], [ %.sink2.i.i.i, %bb.au ], [ %.sink2.i.i.i, %.lr.ph.i786 ], [ %.sink2.i.i.i, %bb.av ]
  %.pre-phi1320 = phi ptr [ %.sink1.i.i.i.i, %.loopexit.i634 ], [ %.sink1.i.i.i, %bb.au ], [ %.sink1.i.i.i, %.lr.ph.i786 ], [ %.sink1.i.i.i, %bb.av ]
  %i.tq = phi ptr [ %.lcssa28.sink.i.ph.i635, %.loopexit.i634 ], [ %i.ss, %bb.au ], [ %i.tj, %bb.av ], [ %i.sz, %.lr.ph.i786 ] ; 5 uses
  %i.tr = ptrtoint ptr %i.tq to i64
  %i.ts = ptrtoint ptr %.pre-phi1321 to i64
  %i.tt = sub i64 %i.tr, %i.ts
  %i.tu = sdiv exact i64 %i.tt, 24                ; 2 uses
  %i.tv = trunc i64 %i.tu to i32
  %i.tw = and i32 %i.tv, 31
  %i.tx = shl nuw i32 1, %i.tw
  %i.ty = lshr i64 %i.tu, 5
  %i.tz = getelementptr inbounds nuw [4 x i8], ptr %.pre-phi1320, i64 %i.ty ; 2 uses
  %i.ua = load i32, ptr %i.tz, align 4, !tbaa !40
  %i.ub = or i32 %i.tx, %i.ua
  store i32 %i.ub, ptr %i.tz, align 4, !tbaa !40
  %i.uc = load i32, ptr %14, align 8              ; 2 uses
  %32 = and i32 %i.uc, -2
  %i.ud = add i32 %32, 2
  %33 = and i32 %i.uc, 1
  %34 = or disjoint i32 %i.ud, %33
  store i32 %34, ptr %14, align 8
  store ptr %i.fa, ptr %i.tq, align 8
  %.sroa.6907.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.tq, i64 8
  store ptr %i.dy, ptr %.sroa.6907.0..sroa_idx, align 8
  %i.ue = getelementptr inbounds nuw i8, ptr %i.tq, i64 16
  store i32 0, ptr %i.ue, align 8, !tbaa !40
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit.loopexit: ; preds = %.lr.ph.i.i645
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.rd, i64 16
  %.pre1278 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !40
  %i.uf = add nsw i32 %.pre1278, 1
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit.loopexit, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i
  %i.ug = phi i32 [ 1, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i ], [ %i.uf, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit.loopexit ]
  %.sroa.0.0.i641 = phi ptr [ %i.tq, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i ], [ %i.rd, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit.loopexit ]
  %i.uh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i641, i64 16
  store i32 %i.ug, ptr %i.uh, align 4, !tbaa !40
  %i.ui = getelementptr inbounds nuw i8, ptr %.02141070, i64 8 ; 2 uses
  %.not240 = icmp eq ptr %i.ui, %i.ef
  br i1 %.not240, label %._crit_edge1073.loopexit, label %bb.j

bb.aw:                                            ; preds = %_ZN4llvm11SmallVectorIPNS_10BasicBlockELj8EED2Ev.exit
  %i.uj = load i8, ptr %i.q, align 8, !tbaa !152, !range !153, !noalias !919, !noundef !154
  %i.uk = trunc nuw i8 %i.uj to i1
  br i1 %i.uk, label %bb.ax, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i

bb.ax:                                            ; preds = %bb.aw
  %i.ul = load ptr, ptr %15, align 8, !tbaa !155, !noalias !919 ; 2 uses
  %i.um = load i32, ptr %i.p, align 4, !tbaa !156, !noalias !919 ; 4 uses
  %i.un = zext i32 %i.um to i64
  %.idx.i.i270 = shl nuw nsw i64 %i.un, 3
  %i.uo = getelementptr inbounds nuw i8, ptr %i.ul, i64 %.idx.i.i270 ; 2 uses
  %.not22.i.i = icmp eq i32 %i.um, 0
  br i1 %.not22.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i271

.lr.ph.i.i271:                                    ; preds = %bb.ax, %.critedge.i.i
  %.023.i.i = phi ptr [ %i.uq, %.critedge.i.i ], [ %i.ul, %bb.ax ] ; 2 uses
  %i.up = load ptr, ptr %.023.i.i, align 8, !tbaa !157, !noalias !919
  %.not15.i.i = icmp eq ptr %i.up, %i.dy
  br i1 %.not15.i.i, label %_ZN4llvm15SmallPtrSetImplIPNS_10BasicBlockEE6insertES2_.exit, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %.lr.ph.i.i271
  %i.uq = getelementptr inbounds nuw i8, ptr %.023.i.i, i64 8 ; 2 uses
  %.not.i.i272 = icmp eq ptr %i.uq, %i.uo
  br i1 %.not.i.i272, label %._crit_edge.i.i, label %.lr.ph.i.i271

._crit_edge.i.i:                                  ; preds = %.critedge.i.i, %bb.ax
  %i.ur = load i32, ptr %i.o, align 8, !tbaa !158, !noalias !919
  %i.us = icmp ult i32 %i.um, %i.ur
  br i1 %i.us, label %bb.ay, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i

bb.ay:                                            ; preds = %._crit_edge.i.i
  %i.ut = add nuw i32 %i.um, 1
  store i32 %i.ut, ptr %i.p, align 4, !tbaa !156, !noalias !919
  store ptr %i.dy, ptr %i.uo, align 8, !tbaa !157, !noalias !919
  br label %_ZN4llvm15SmallPtrSetImplIPNS_10BasicBlockEE6insertES2_.exit

_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i: ; preds = %._crit_edge.i.i, %bb.aw
  %i.uu = call { ptr, i8 } @_ZN4llvm19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(17) %15, ptr noundef %i.dy) #17, !noalias !919 ; 0 uses
  br label %_ZN4llvm15SmallPtrSetImplIPNS_10BasicBlockEE6insertES2_.exit

_ZN4llvm15SmallPtrSetImplIPNS_10BasicBlockEE6insertES2_.exit: ; preds = %.lr.ph.i.i271, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i, %bb.ay, %_ZN4llvm11SmallVectorIPNS_10BasicBlockELj8EED2Ev.exit
  %i.uv = add i64 %.pn, 120
  %i.uw = sdiv exact i64 %i.uv, 120               ; 3 uses
  %.not.i.i273 = icmp ult i64 %i.uw, %i.ab
  br i1 %.not.i.i273, label %bb.az, label %._crit_edge1077

bb.az:                                            ; preds = %_ZN4llvm15SmallPtrSetImplIPNS_10BasicBlockEE6insertES2_.exit
  %i.ux = lshr i64 %i.uw, 5                       ; 3 uses
  %i.uy = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.ux
  %i.uz = load i32, ptr %i.uy, align 4, !tbaa !40
  %i.va = trunc nuw i64 %i.uw to i32
  %i.vb = and i32 %i.va, 31
  %i.vc = shl nsw i32 -1, %i.vb
  %i.vd = and i32 %i.uz, %i.vc                    ; 2 uses
  %i.ve = icmp eq i32 %i.vd, 0
  br i1 %i.ve, label %.lr.ph.i.i276.preheader, label %_ZN4llvm16DenseMapIteratorIPNS_10BasicBlockEZNS_16MemorySSAUpdater18applyInsertUpdatesENS_8ArrayRefINS_3cfg6UpdateIS2_EEEERNS_13DominatorTreeEPKNS_9GraphDiffIS2_Lb0EEEE8PredInfoNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SF_EELb0EEppEv.exit

.lr.ph.i.i276.preheader:                          ; preds = %bb.az
  %i.vf = add nuw nsw i64 %i.ux, 1                ; 2 uses
  %i.vg = icmp eq i64 %i.vf, %i.aw
  br i1 %i.vg, label %._crit_edge1077, label %.lr.ph1753

.lr.ph.i.i276:                                    ; preds = %.lr.ph1753
  %i.vh = add i64 %i.vj, 1                        ; 2 uses
  %i.vi = icmp eq i64 %i.vh, %i.aw
  br i1 %i.vi, label %._crit_edge1077, label %.lr.ph1753, !llvm.loop !703

.lr.ph1753:                                       ; preds = %.lr.ph.i.i276.preheader, %.lr.ph.i.i276
  %i.vj = phi i64 [ %i.vh, %.lr.ph.i.i276 ], [ %i.vf, %.lr.ph.i.i276.preheader ] ; 3 uses
  %i.vk = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.vj
  %i.vl = load i32, ptr %i.vk, align 4, !tbaa !40 ; 2 uses
  %i.vm = icmp eq i32 %i.vl, 0
  br i1 %i.vm, label %.lr.ph.i.i276, label %_ZN4llvm16DenseMapIteratorIPNS_10BasicBlockEZNS_16MemorySSAUpdater18applyInsertUpdatesENS_8ArrayRefINS_3cfg6UpdateIS2_EEEERNS_13DominatorTreeEPKNS_9GraphDiffIS2_Lb0EEEE8PredInfoNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SF_EELb0EEppEv.exit, !llvm.loop !703

_ZN4llvm16DenseMapIteratorIPNS_10BasicBlockEZNS_16MemorySSAUpdater18applyInsertUpdatesENS_8ArrayRefINS_3cfg6UpdateIS2_EEEERNS_13DominatorTreeEPKNS_9GraphDiffIS2_Lb0EEEE8PredInfoNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SF_EELb0EEppEv.exit: ; preds = %.lr.ph1753, %bb.az
  %.012.lcssa.i.i = phi i64 [ %i.ux, %bb.az ], [ %i.vj, %.lr.ph1753 ]
  %.0.lcssa.i.i = phi i32 [ %i.vd, %bb.az ], [ %i.vl, %.lr.ph1753 ]
  %i.vn = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i, i1 true)
  %.idx.i.i275 = mul i64 %.012.lcssa.i.i, 3840
  %narrow1641 = mul nuw nsw i32 %i.vn, 120
  %.idx1640 = zext nneg i32 %narrow1641 to i64
  %i.vo = add i64 %.idx.i.i275, %.idx1640         ; 2 uses
  %.not955 = icmp eq i64 %i.vo, %.idx1639
  br i1 %.not955, label %._crit_edge1077, label %bb.h

._crit_edge1081:                                  ; preds = %_ZN4llvm19SmallPtrSetIteratorIPNS_10BasicBlockEEppEv.exit, %_ZNK4llvm15SmallPtrSetImplIPNS_10BasicBlockEE5beginEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #17
  %i.vp = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  store ptr %i.vp, ptr %17, align 8, !tbaa !148
  %i.vq = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 8 uses
  store i32 0, ptr %i.vq, align 8, !tbaa !147
  %i.vr = getelementptr inbounds nuw i8, ptr %17, i64 12 ; 3 uses
  store i32 16, ptr %i.vr, align 4, !tbaa !163
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #17
  %i.vs = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  store ptr %i.vs, ptr %18, align 8, !tbaa !148
  %i.vt = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 13 uses
  store i32 0, ptr %i.vt, align 8, !tbaa !147
  %i.vu = getelementptr inbounds nuw i8, ptr %18, i64 12 ; 3 uses
  store i32 8, ptr %i.vu, align 4, !tbaa !163
  br i1 %.not1051, label %._crit_edge1086, label %.lr.ph1085

.lr.ph1085:                                       ; preds = %._crit_edge1081
  %i.vv = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.vw = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.vx = ptrtoint ptr %19 to i64
  br label %bb.be

.lr.ph1080:                                       ; preds = %.lr.ph1080.preheader, %_ZN4llvm19SmallPtrSetIteratorIPNS_10BasicBlockEEppEv.exit
  %i.vy = phi i32 [ %i.xg, %_ZN4llvm19SmallPtrSetIteratorIPNS_10BasicBlockEEppEv.exit ], [ %.pre1286, %.lr.ph1080.preheader ] ; 4 uses
  %.sroa.0898.01079 = phi ptr [ %.sroa.0898.2, %_ZN4llvm19SmallPtrSetIteratorIPNS_10BasicBlockEEppEv.exit ], [ %.sroa.0.1.i.i, %.lr.ph1080.preheader ] ; 2 uses
  %i.vz = load ptr, ptr %.sroa.0898.01079, align 8, !tbaa !157 ; 2 uses
  %i.wa = and i32 %i.vy, 1
  %.not.i.i.i.i.i277 = icmp eq i32 %i.wa, 0       ; 3 uses
  %i.wb = load ptr, ptr %i.s, align 8, !noalias !897
  %i.wc = load ptr, ptr %i.v, align 8, !noalias !897
  %i.wd = load i32, ptr %i.y, align 8, !noalias !897
  %.sink2.i.i.i.i.i278 = select i1 %.not.i.i.i.i.i277, ptr %i.wb, ptr %i.s
  %.sink1.i.i.i.i.i279 = select i1 %.not.i.i.i.i.i277, ptr %i.wc, ptr %i.g ; 2 uses
  %.sink.i.i.i.i.i280 = select i1 %.not.i.i.i.i.i277, i32 %i.wd, i32 4 ; 2 uses
  %i.we = icmp eq i32 %.sink.i.i.i.i.i280, 0
  br i1 %i.we, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEZNS_16MemorySSAUpdater18applyInsertUpdatesENS_8ArrayRefINS_3cfg6UpdateIS3_EEEERNS_13DominatorTreeEPKNS_9GraphDiffIS3_Lb0EEEE8PredInfoLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SG_EEEES3_SG_SI_SL_E5eraseERKS3_.exit, label %bb.ba

bb.ba:                                            ; preds = %.lr.ph1080
  %i.wf = add i32 %.sink.i.i.i.i.i280, -1         ; 2 uses
  %i.wg = ptrtoint ptr %i.vz to i64
  %i.wh = mul i64 %i.wg, -4658895280553007687     ; 2 uses
  %i.wi = lshr i64 %i.wh, 31
  %i.wj = xor i64 %i.wi, %i.wh
  %i.wk = trunc i64 %i.wj to i32
  %i.wl = and i32 %i.wf, %i.wk                    ; 3 uses
  %i.wm = zext i32 %i.wl to i64                   ; 2 uses
  %i.wn = lshr i64 %i.wm, 5
  %i.wo = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i.i279, i64 %i.wn
  %i.wp = load i32, ptr %i.wo, align 4, !tbaa !40
  %i.wq = and i32 %i.wl, 31
  %i.wr = lshr i32 %i.wp, %i.wq
  %i.ws = trunc i32 %i.wr to i1
  br i1 %i.ws, label %.lr.ph.i.i.i281, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEZNS_16MemorySSAUpdater18applyInsertUpdatesENS_8ArrayRefINS_3cfg6UpdateIS3_EEEERNS_13DominatorTreeEPKNS_9GraphDiffIS3_Lb0EEEE8PredInfoLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SG_EEEES3_SG_SI_SL_E5eraseERKS3_.exit, !prof !41

.lr.ph.i.i.i281:                                  ; preds = %bb.ba, %bb.bb
  %i.wt = phi i64 [ %i.wz, %bb.bb ], [ %i.wm, %bb.ba ]
  %.03.i.i.i = phi i32 [ %i.wy, %bb.bb ], [ %i.wl, %bb.ba ]
  %i.wu = getelementptr inbounds nuw [120 x i8], ptr %.sink2.i.i.i.i.i278, i64 %i.wt ; 2 uses
  %i.wv = load ptr, ptr %i.wu, align 8, !tbaa !43
  %i.ww = icmp eq ptr %i.vz, %i.wv
  br i1 %i.ww, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEZNS_16MemorySSAUpdater18applyInsertUpdatesENS_8ArrayRefINS_3cfg6UpdateIS3_EEEERNS_13DominatorTreeEPKNS_9GraphDiffIS3_Lb0EEEE8PredInfoLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SG_EEEES3_SG_SI_SL_E6doFindIS3_EEPSL_RKT_.exit.i, label %bb.bb, !prof !44

bb.bb:                                            ; preds = %.lr.ph.i.i.i281
  %i.wx = add nuw i32 %.03.i.i.i, 1
  %i.wy = and i32 %i.wx, %i.wf                    ; 3 uses
  %i.wz = zext i32 %i.wy to i64                   ; 2 uses
  %i.xa = lshr i64 %i.wz, 5
  %i.xb = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i.i279, i64 %i.xa
  %i.xc = load i32, ptr %i.xb, align 4, !tbaa !40
  %i.xd = and i32 %i.wy, 31
  %i.xe = lshr i32 %i.xc, %i.xd
  %i.xf = trunc i32 %i.xe to i1
  br i1 %i.xf, label %.lr.ph.i.i.i281, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEZNS_16MemorySSAUpdater18applyInsertUpdatesENS_8ArrayRefINS_3cfg6UpdateIS3_EEEERNS_13DominatorTreeEPKNS_9GraphDiffIS3_Lb0EEEE8PredInfoLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SG_EEEES3_SG_SI_SL_E5eraseERKS3_.exit, !prof !45

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEZNS_16MemorySSAUpdater18applyInsertUpdatesENS_8ArrayRefINS_3cfg6UpdateIS3_EEEERNS_13DominatorTreeEPKNS_9GraphDiffIS3_Lb0EEEE8PredInfoLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SG_EEEES3_SG_SI_SL_E6doFindIS3_EEPSL_RKT_.exit.i: ; preds = %.lr.ph.i.i.i281
  call fastcc void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEZNS_16MemorySSAUpdater18applyInsertUpdatesENS_8ArrayRefINS_3cfg6UpdateIS3_EEEERNS_13DominatorTreeEPKNS_9GraphDiffIS3_Lb0EEEE8PredInfoLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SG_EEEES3_SG_SI_SL_E21eraseFromFilledBucketIZNSN_21eraseFromFilledBucketEPSL_EUlRSL_E_EEvSP_OT_(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull %i.wu)
  %.pre1285 = load i32, ptr %13, align 8, !noalias !897
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEZNS_16MemorySSAUpdater18applyInsertUpdatesENS_8ArrayRefINS_3cfg6UpdateIS3_EEEERNS_13DominatorTreeEPKNS_9GraphDiffIS3_Lb0EEEE8PredInfoLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SG_EEEES3_SG_SI_SL_E5eraseERKS3_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEZNS_16MemorySSAUpdater18applyInsertUpdatesENS_8ArrayRefINS_3cfg6UpdateIS3_EEEERNS_13DominatorTreeEPKNS_9GraphDiffIS3_Lb0EEEE8PredInfoLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SG_EEEES3_SG_SI_SL_E5eraseERKS3_.exit: ; preds = %bb.bb, %.lr.ph1080, %bb.ba, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEZNS_16MemorySSAUpdater18applyInsertUpdatesENS_8ArrayRefINS_3cfg6UpdateIS3_EEEERNS_13DominatorTreeEPKNS_9GraphDiffIS3_Lb0EEEE8PredInfoLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SG_EEEES3_SG_SI_SL_E6doFindIS3_EEPSL_RKT_.exit.i
  %i.xg = phi i32 [ %.pre1285, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEZNS_16MemorySSAUpdater18applyInsertUpdatesENS_8ArrayRefINS_3cfg6UpdateIS3_EEEERNS_13DominatorTreeEPKNS_9GraphDiffIS3_Lb0EEEE8PredInfoLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SG_EEEES3_SG_SI_SL_E6doFindIS3_EEPSL_RKT_.exit.i ], [ %i.vy, %.lr.ph1080 ], [ %i.vy, %bb.ba ], [ %i.vy, %bb.bb ]
  %i.xh = getelementptr inbounds nuw i8, ptr %.sroa.0898.01079, i64 8 ; 3 uses
  %.not1.i.i.i = icmp eq ptr %i.xh, %i.dv
  br i1 %.not1.i.i.i, label %_ZN4llvm19SmallPtrSetIteratorIPNS_10BasicBlockEEppEv.exit, label %.lr.ph.i.i.i282

.lr.ph.i.i.i282:                                  ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEZNS_16MemorySSAUpdater18applyInsertUpdatesENS_8ArrayRefINS_3cfg6UpdateIS3_EEEERNS_13DominatorTreeEPKNS_9GraphDiffIS3_Lb0EEEE8PredInfoLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SG_EEEES3_SG_SI_SL_E5eraseERKS3_.exit, %bb.bc
  %.sroa.0898.1 = phi ptr [ %i.xk, %bb.bc ], [ %i.xh, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEZNS_16MemorySSAUpdater18applyInsertUpdatesENS_8ArrayRefINS_3cfg6UpdateIS3_EEEERNS_13DominatorTreeEPKNS_9GraphDiffIS3_Lb0EEEE8PredInfoLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SG_EEEES3_SG_SI_SL_E5eraseERKS3_.exit ] ; 3 uses
  %i.xi = load ptr, ptr %.sroa.0898.1, align 8, !tbaa !157
  %i.xj = icmp eq ptr %i.xi, inttoptr (i64 -1 to ptr)
  br i1 %i.xj, label %bb.bc, label %_ZN4llvm19SmallPtrSetIteratorIPNS_10BasicBlockEEppEv.exit

bb.bc:                                            ; preds = %.lr.ph.i.i.i282
end_hunk_1
begin_hunk_2_@_ZN4llvm16MemorySSAUpdater18applyInsertUpdatesENS_8ArrayRefINS_3cfg6UpdateIPNS_10BasicBlockEEEEERNS_13DominatorTreeEPKNS_9GraphDiffIS5_Lb0EEE:bb.a
  %.1.i = phi ptr [ %i.agu, %.loopexit.loopexit.i ], [ %i.ags, %._crit_edge.loopexit.i ], [ null, %_ZNK4llvm9MemorySSA12getBlockDefsEPKNS_10BasicBlockE.exit.thread.i ]
  %i.agv = icmp eq ptr %i.agq, %i.yk
  br i1 %i.agv, label %_ZN4llvm11SmallVectorIPNS_10BasicBlockELj8EED2Ev.exit.i, label %bb.by

bb.by:                                            ; preds = %.loopexit.i
  call void @free(ptr noundef %i.agq) #17
  br label %_ZN4llvm11SmallVectorIPNS_10BasicBlockELj8EED2Ev.exit.i

_ZN4llvm11SmallVectorIPNS_10BasicBlockELj8EED2Ev.exit.i: ; preds = %bb.by, %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  %i.agw = getelementptr inbounds nuw i8, ptr %.032.i, i64 40
  %i.agx = load i32, ptr %i.agw, align 8, !tbaa !146
  %i.agy = add i32 %i.agx, 1                      ; 3 uses
  %i.agz = load i32, ptr %i.yl, align 8, !tbaa !147
  %i.aha = icmp ugt i32 %i.agz, %i.agy            ; 2 uses
  br i1 %.129.i, label %bb.cc, label %bb.bz

bb.bz:                                            ; preds = %_ZN4llvm11SmallVectorIPNS_10BasicBlockELj8EED2Ev.exit.i
  br i1 %i.aha, label %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE7getNodeEPKS1_.exit.i, label %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE7getNodeEPKS1_.exit.thread.i

_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE7getNodeEPKS1_.exit.i: ; preds = %bb.bz
  %i.ahb = zext i32 %i.agy to i64
  %i.ahc = load ptr, ptr %i.ym, align 8, !tbaa !148
  %i.ahd = getelementptr inbounds nuw [8 x i8], ptr %i.ahc, i64 %i.ahb
  %i.ahe = load ptr, ptr %i.ahd, align 8, !tbaa !150 ; 2 uses
  %.not45.i = icmp eq ptr %i.ahe, null
  br i1 %.not45.i, label %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE7getNodeEPKS1_.exit.thread.i, label %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE7getNodeEPKS1_.exit48.i

_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE7getNodeEPKS1_.exit.thread.i: ; preds = %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE7getNodeEPKS1_.exit.i, %bb.bz
  %i.ahf = load ptr, ptr %0, align 8, !tbaa !81
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.ahf, i64 104
  %i.ahh = load ptr, ptr %i.ahg, align 8, !tbaa !151
  br label %"_ZZN4llvm16MemorySSAUpdater18applyInsertUpdatesENS_8ArrayRefINS_3cfg6UpdateIPNS_10BasicBlockEEEEERNS_13DominatorTreeEPKNS_9GraphDiffIS5_Lb0EEEENK3$_0clES5_.exit"

_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE7getNodeEPKS1_.exit48.i: ; preds = %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE7getNodeEPKS1_.exit.i
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.ahe, i64 8
  %i.ahj = load ptr, ptr %i.ahi, align 8, !tbaa !303 ; 2 uses
  %.not46.i = icmp eq ptr %i.ahj, null
  br i1 %.not46.i, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE7getNodeEPKS1_.exit48.i
  %i.ahk = load ptr, ptr %i.ahj, align 8, !tbaa !248 ; 2 uses
  %.not47.i = icmp eq ptr %i.ahk, %.032.i
  br i1 %.not47.i, label %bb.cb, label %.backedge1785

bb.cb:                                            ; preds = %bb.ca, %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE7getNodeEPKS1_.exit48.i
  %i.ahl = load ptr, ptr %0, align 8, !tbaa !81
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.ahl, i64 104
  %i.ahn = load ptr, ptr %i.ahm, align 8, !tbaa !151
  br label %"_ZZN4llvm16MemorySSAUpdater18applyInsertUpdatesENS_8ArrayRefINS_3cfg6UpdateIPNS_10BasicBlockEEEEERNS_13DominatorTreeEPKNS_9GraphDiffIS5_Lb0EEEENK3$_0clES5_.exit"

bb.cc:                                            ; preds = %_ZN4llvm11SmallVectorIPNS_10BasicBlockELj8EED2Ev.exit.i
  br i1 %i.aha, label %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE7getNodeEPKS1_.exit49.i, label %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE7getNodeEPKS1_.exit49.thread.i

_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE7getNodeEPKS1_.exit49.i: ; preds = %bb.cc
  %i.aho = zext i32 %i.agy to i64
  %i.ahp = load ptr, ptr %i.ym, align 8, !tbaa !148
  %i.ahq = getelementptr inbounds nuw [8 x i8], ptr %i.ahp, i64 %i.aho
  %i.ahr = load ptr, ptr %i.ahq, align 8, !tbaa !150
  %.not44.i = icmp eq ptr %i.ahr, null
  br i1 %.not44.i, label %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE7getNodeEPKS1_.exit49.thread.i, label %.backedge1785

.backedge1785:                                    ; preds = %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE7getNodeEPKS1_.exit49.i, %bb.ca
  %.032.i.be = phi ptr [ %.1.i, %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE7getNodeEPKS1_.exit49.i ], [ %i.ahk, %bb.ca ]
  br label %bb.bu

_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE7getNodeEPKS1_.exit49.thread.i: ; preds = %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE7getNodeEPKS1_.exit49.i, %bb.cc
  %i.ahs = load ptr, ptr %0, align 8, !tbaa !81
  %i.aht = getelementptr inbounds nuw i8, ptr %i.ahs, i64 104
  %i.ahu = load ptr, ptr %i.aht, align 8, !tbaa !151
  br label %"_ZZN4llvm16MemorySSAUpdater18applyInsertUpdatesENS_8ArrayRefINS_3cfg6UpdateIPNS_10BasicBlockEEEEERNS_13DominatorTreeEPKNS_9GraphDiffIS5_Lb0EEEENK3$_0clES5_.exit"

"_ZZN4llvm16MemorySSAUpdater18applyInsertUpdatesENS_8ArrayRefINS_3cfg6UpdateIPNS_10BasicBlockEEEEERNS_13DominatorTreeEPKNS_9GraphDiffIS5_Lb0EEEENK3$_0clES5_.exit": ; preds = %bb.bx, %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE7getNodeEPKS1_.exit.thread.i, %bb.cb, %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE7getNodeEPKS1_.exit49.thread.i
  %.238.ph.i = phi ptr [ %i.ahu, %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE7getNodeEPKS1_.exit49.thread.i ], [ %i.ahh, %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE7getNodeEPKS1_.exit.thread.i ], [ %i.ahn, %bb.cb ], [ %i.ago, %bb.bx ]
  %i.ahv = load i32, ptr %20, align 8, !noalias !929 ; 2 uses
  %i.ahw = and i32 %i.ahv, 1
  %.not.i.i.i.i647 = icmp eq i32 %i.ahw, 0        ; 3 uses
  %i.ahx = load ptr, ptr %i.yn, align 8, !noalias !929
  %i.ahy = load ptr, ptr %i.yo, align 8, !noalias !929
  %i.ahz = load i32, ptr %i.yp, align 8, !noalias !929
  %.sink2.i.i.i.i648 = select i1 %.not.i.i.i.i647, ptr %i.ahx, ptr %i.yn ; 3 uses
  %.sink1.i.i.i.i649 = select i1 %.not.i.i.i.i647, ptr %i.ahy, ptr %i.yi ; 3 uses
  %.sink.i.i.i.i650 = select i1 %.not.i.i.i.i647, i32 %i.ahz, i32 4 ; 4 uses
  %i.aia = icmp eq i32 %.sink.i.i.i.i650, 0
  br i1 %i.aia, label %.loopexit.i651, label %bb.cd

bb.cd:                                            ; preds = %"_ZZN4llvm16MemorySSAUpdater18applyInsertUpdatesENS_8ArrayRefINS_3cfg6UpdateIPNS_10BasicBlockEEEEERNS_13DominatorTreeEPKNS_9GraphDiffIS5_Lb0EEEENK3$_0clES5_.exit"
  %i.aib = add i32 %.sink.i.i.i.i650, -1          ; 2 uses
  %i.aic = ptrtoint ptr %i.aex to i64
  %i.aid = mul i64 %i.aic, -4658895280553007687   ; 2 uses
  %i.aie = lshr i64 %i.aid, 31
  %i.aif = xor i64 %i.aie, %i.aid
  %i.aig = trunc i64 %i.aif to i32
  %i.aih = and i32 %i.aib, %i.aig                 ; 3 uses
  %i.aii = zext i32 %i.aih to i64                 ; 2 uses
  %i.aij = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i.i.i648, i64 %i.aii ; 2 uses
  %i.aik = lshr i64 %i.aii, 5
  %i.ail = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i649, i64 %i.aik
  %i.aim = load i32, ptr %i.ail, align 4, !tbaa !40
  %i.ain = and i32 %i.aih, 31
  %i.aio = lshr i32 %i.aim, %i.ain
  %i.aip = trunc i32 %i.aio to i1
  br i1 %i.aip, label %.lr.ph.i.i665, label %.loopexit.i651, !prof !41

.lr.ph.i.i665:                                    ; preds = %bb.cd, %bb.ce
  %i.aiq = phi ptr [ %i.aiw, %bb.ce ], [ %i.aij, %bb.cd ] ; 2 uses
  %.024.i.i666 = phi i32 [ %i.aiu, %bb.ce ], [ %i.aih, %bb.cd ]
  %i.air = load ptr, ptr %i.aiq, align 8, !tbaa !43
  %i.ais = icmp eq ptr %i.aex, %i.air
  br i1 %i.ais, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSA_bEOT_DpOT0_.exit, label %bb.ce, !prof !44

bb.ce:                                            ; preds = %.lr.ph.i.i665
  %i.ait = add nuw i32 %.024.i.i666, 1
  %i.aiu = and i32 %i.ait, %i.aib                 ; 3 uses
  %i.aiv = zext i32 %i.aiu to i64                 ; 2 uses
  %i.aiw = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i.i.i648, i64 %i.aiv ; 2 uses
  %i.aix = lshr i64 %i.aiv, 5
  %i.aiy = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i649, i64 %i.aix
  %i.aiz = load i32, ptr %i.aiy, align 4, !tbaa !40
  %i.aja = and i32 %i.aiu, 31
  %i.ajb = lshr i32 %i.aiz, %i.aja
  %i.ajc = trunc i32 %i.ajb to i1
  br i1 %i.ajc, label %.lr.ph.i.i665, label %.loopexit.i651, !prof !45, !llvm.loop !782

.loopexit.i651:                                   ; preds = %bb.ce, %bb.cd, %"_ZZN4llvm16MemorySSAUpdater18applyInsertUpdatesENS_8ArrayRefINS_3cfg6UpdateIPNS_10BasicBlockEEEEERNS_13DominatorTreeEPKNS_9GraphDiffIS5_Lb0EEEENK3$_0clES5_.exit"
  %.lcssa28.sink.i.ph.i652 = phi ptr [ %i.aij, %bb.cd ], [ null, %"_ZZN4llvm16MemorySSAUpdater18applyInsertUpdatesENS_8ArrayRefINS_3cfg6UpdateIPNS_10BasicBlockEEEEERNS_13DominatorTreeEPKNS_9GraphDiffIS5_Lb0EEEENK3$_0clES5_.exit" ], [ %i.aiw, %bb.ce ]
  %i.ajd = shl i32 %i.ahv, 1
  %i.aje = and i32 %i.ajd, -4
  %i.ajf = add i32 %i.aje, 4
  %i.ajg = mul i32 %.sink.i.i.i.i650, 3
  %.not.i.i653 = icmp ult i32 %i.ajf, %i.ajg
  br i1 %.not.i.i653, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit.i, label %bb.cf, !prof !44

bb.cf:                                            ; preds = %.loopexit.i651
  %i.ajh = shl i32 %.sink.i.i.i.i650, 1
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %20, i32 noundef %i.ajh)
  %i.aji = load i32, ptr %20, align 8, !noalias !930
  %i.ajj = and i32 %i.aji, 1
  %.not.i.i.i788 = icmp eq i32 %i.ajj, 0          ; 3 uses
  %i.ajk = load ptr, ptr %i.yn, align 8, !noalias !930
  %i.ajl = load ptr, ptr %i.yo, align 8, !noalias !930
  %i.ajm = load i32, ptr %i.yp, align 8, !noalias !930
  %.sink2.i.i.i789 = select i1 %.not.i.i.i788, ptr %i.ajk, ptr %i.yn ; 5 uses
  %.sink1.i.i.i790 = select i1 %.not.i.i.i788, ptr %i.ajl, ptr %i.yi ; 5 uses
  %.sink.i.i.i791 = select i1 %.not.i.i.i788, i32 %i.ajm, i32 4 ; 2 uses
  %i.ajn = icmp ne i32 %.sink.i.i.i791, 0
  call void @llvm.assume(i1 %i.ajn)
  %i.ajo = add i32 %.sink.i.i.i791, -1            ; 2 uses
  %i.ajp = ptrtoint ptr %i.aex to i64
  %i.ajq = mul i64 %i.ajp, -4658895280553007687   ; 2 uses
  %i.ajr = lshr i64 %i.ajq, 31
  %i.ajs = xor i64 %i.ajr, %i.ajq
  %i.ajt = trunc i64 %i.ajs to i32
  %i.aju = and i32 %i.ajo, %i.ajt                 ; 3 uses
  %i.ajv = zext i32 %i.aju to i64                 ; 2 uses
  %i.ajw = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i.i789, i64 %i.ajv ; 2 uses
  %i.ajx = lshr i64 %i.ajv, 5
  %i.ajy = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i790, i64 %i.ajx
  %i.ajz = load i32, ptr %i.ajy, align 4, !tbaa !40
  %i.aka = and i32 %i.aju, 31
  %i.akb = lshr i32 %i.ajz, %i.aka
  %i.akc = trunc i32 %i.akb to i1
  br i1 %i.akc, label %.lr.ph.i794, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit.i, !prof !41

.lr.ph.i794:                                      ; preds = %bb.cf, %bb.cg
  %i.akd = phi ptr [ %i.akj, %bb.cg ], [ %i.ajw, %bb.cf ] ; 2 uses
  %.024.i795 = phi i32 [ %i.akh, %bb.cg ], [ %i.aju, %bb.cf ]
  %i.ake = load ptr, ptr %i.akd, align 8, !tbaa !43
  %i.akf = icmp eq ptr %i.aex, %i.ake
  br i1 %i.akf, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit.i, label %bb.cg, !prof !44

bb.cg:                                            ; preds = %.lr.ph.i794
  %i.akg = add nuw i32 %.024.i795, 1
  %i.akh = and i32 %i.akg, %i.ajo                 ; 3 uses
  %i.aki = zext i32 %i.akh to i64                 ; 2 uses
  %i.akj = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i.i789, i64 %i.aki ; 2 uses
  %i.akk = lshr i64 %i.aki, 5
  %i.akl = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i790, i64 %i.akk
  %i.akm = load i32, ptr %i.akl, align 4, !tbaa !40
  %i.akn = and i32 %i.akh, 31
  %i.ako = lshr i32 %i.akm, %i.akn
  %i.akp = trunc i32 %i.ako to i1
  br i1 %i.akp, label %.lr.ph.i794, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit.i, !prof !45, !llvm.loop !782

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit.i: ; preds = %bb.cg, %.lr.ph.i794, %bb.cf, %.loopexit.i651
  %.pre-phi1319 = phi ptr [ %.sink2.i.i.i.i648, %.loopexit.i651 ], [ %.sink2.i.i.i789, %bb.cf ], [ %.sink2.i.i.i789, %.lr.ph.i794 ], [ %.sink2.i.i.i789, %bb.cg ]
  %.pre-phi1318 = phi ptr [ %.sink1.i.i.i.i649, %.loopexit.i651 ], [ %.sink1.i.i.i790, %bb.cf ], [ %.sink1.i.i.i790, %.lr.ph.i794 ], [ %.sink1.i.i.i790, %bb.cg ]
  %i.akq = phi ptr [ %.lcssa28.sink.i.ph.i652, %.loopexit.i651 ], [ %i.ajw, %bb.cf ], [ %i.akj, %bb.cg ], [ %i.akd, %.lr.ph.i794 ] ; 4 uses
  %i.akr = ptrtoint ptr %i.akq to i64
  %i.aks = ptrtoint ptr %.pre-phi1319 to i64
  %i.akt = sub i64 %i.akr, %i.aks
  %i.aku = ashr exact i64 %i.akt, 4               ; 2 uses
  %i.akv = trunc i64 %i.aku to i32
  %i.akw = and i32 %i.akv, 31
  %i.akx = shl nuw i32 1, %i.akw
  %i.aky = lshr i64 %i.aku, 5
  %i.akz = getelementptr inbounds nuw [4 x i8], ptr %.pre-phi1318, i64 %i.aky ; 2 uses
  %i.ala = load i32, ptr %i.akz, align 4, !tbaa !40
  %i.alb = or i32 %i.akx, %i.ala
  store i32 %i.alb, ptr %i.akz, align 4, !tbaa !40
  %i.alc = load i32, ptr %20, align 8             ; 2 uses
  %35 = and i32 %i.alc, -2
  %i.ald = add i32 %35, 2
  %36 = and i32 %i.alc, 1
  %37 = or disjoint i32 %i.ald, %36
  store i32 %37, ptr %20, align 8
  store ptr %i.aex, ptr %i.akq, align 8, !tbaa !43
  %i.ale = getelementptr inbounds nuw i8, ptr %i.akq, i64 8
  store ptr null, ptr %i.ale, align 8, !tbaa !151
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSA_bEOT_DpOT0_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSA_bEOT_DpOT0_.exit: ; preds = %.lr.ph.i.i665, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit.i
  %.sroa.0.0.i661 = phi ptr [ %i.akq, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit.i ], [ %i.aiq, %.lr.ph.i.i665 ]
  %i.alf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i661, i64 8
  store ptr %.238.ph.i, ptr %i.alf, align 8, !tbaa !151
  %i.alg = getelementptr inbounds nuw i8, ptr %.02121088, i64 8 ; 2 uses
  %.not232 = icmp eq ptr %i.alg, %i.ads
  br i1 %.not232, label %._crit_edge1091, label %.lr.ph1090

bb.ch:                                            ; preds = %_ZNK4llvm9MemorySSA15getMemoryAccessEPKNS_10BasicBlockE.exit314
  %i.alh = load ptr, ptr %i.adn, align 8, !tbaa !148 ; 2 uses
  %i.ali = load i32, ptr %i.adp, align 8, !tbaa !147 ; 2 uses
  %i.alj = zext i32 %i.ali to i64
  %.idx1169 = shl nuw nsw i64 %i.alj, 3
  %i.alk = getelementptr inbounds nuw i8, ptr %i.alh, i64 %.idx1169
  %.not2371098 = icmp eq i32 %i.ali, 0
  br i1 %.not2371098, label %.loopexit969, label %.lr.ph1101

.lr.ph1101:                                       ; preds = %bb.ch
  %i.all = and i64 %i.aed, 4294967295             ; 2 uses
  %i.alm = getelementptr inbounds nuw i8, ptr %i.aet, i64 76 ; 3 uses
  %i.aln = getelementptr inbounds i8, ptr %i.aet, i64 -8 ; 2 uses
  br label %bb.ci

bb.ci:                                            ; preds = %.lr.ph1101, %._crit_edge1097
  %.02111099 = phi ptr [ %i.alh, %.lr.ph1101 ], [ %i.ate, %._crit_edge1097 ] ; 2 uses
  %i.alo = load ptr, ptr %.02111099, align 8, !tbaa !43 ; 11 uses
  %i.alp = load i32, ptr %20, align 8, !noalias !931 ; 2 uses
  %i.alq = and i32 %i.alp, 1
  %.not.i.i.i.i667 = icmp eq i32 %i.alq, 0        ; 3 uses
  %i.alr = load ptr, ptr %i.yn, align 8, !noalias !931
  %i.als = load ptr, ptr %i.yo, align 8, !noalias !931
  %i.alt = load i32, ptr %i.yp, align 8, !noalias !931
  %.sink2.i.i.i.i668 = select i1 %.not.i.i.i.i667, ptr %i.alr, ptr %i.yn ; 3 uses
  %.sink1.i.i.i.i669 = select i1 %.not.i.i.i.i667, ptr %i.als, ptr %i.yi ; 3 uses
  %.sink.i.i.i.i670 = select i1 %.not.i.i.i.i667, i32 %i.alt, i32 4 ; 4 uses
  %i.alu = icmp eq i32 %.sink.i.i.i.i670, 0
  br i1 %i.alu, label %.loopexit.i671, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.alv = add i32 %.sink.i.i.i.i670, -1          ; 2 uses
  %i.alw = ptrtoint ptr %i.alo to i64
  %i.alx = mul i64 %i.alw, -4658895280553007687   ; 2 uses
  %i.aly = lshr i64 %i.alx, 31
  %i.alz = xor i64 %i.aly, %i.alx
  %i.ama = trunc i64 %i.alz to i32
  %i.amb = and i32 %i.alv, %i.ama                 ; 3 uses
  %i.amc = zext i32 %i.amb to i64                 ; 2 uses
  %i.amd = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i.i.i668, i64 %i.amc ; 2 uses
  %i.ame = lshr i64 %i.amc, 5
  %i.amf = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i669, i64 %i.ame
  %i.amg = load i32, ptr %i.amf, align 4, !tbaa !40
  %i.amh = and i32 %i.amb, 31
  %i.ami = lshr i32 %i.amg, %i.amh
  %i.amj = trunc i32 %i.ami to i1
  br i1 %i.amj, label %.lr.ph.i.i686, label %.loopexit.i671, !prof !41

.lr.ph.i.i686:                                    ; preds = %bb.cj, %bb.ck
  %i.amk = phi ptr [ %i.amq, %bb.ck ], [ %i.amd, %bb.cj ] ; 2 uses
  %.024.i.i687 = phi i32 [ %i.amo, %bb.ck ], [ %i.amb, %bb.cj ]
  %i.aml = load ptr, ptr %i.amk, align 8, !tbaa !43
  %i.amm = icmp eq ptr %i.alo, %i.aml
  br i1 %i.amm, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSA_bEOT_DpOT0_.exit688.loopexit, label %bb.ck, !prof !44

bb.ck:                                            ; preds = %.lr.ph.i.i686
  %i.amn = add nuw i32 %.024.i.i687, 1
  %i.amo = and i32 %i.amn, %i.alv                 ; 3 uses
  %i.amp = zext i32 %i.amo to i64                 ; 2 uses
  %i.amq = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i.i.i668, i64 %i.amp ; 2 uses
  %i.amr = lshr i64 %i.amp, 5
  %i.ams = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i669, i64 %i.amr
  %i.amt = load i32, ptr %i.ams, align 4, !tbaa !40
  %i.amu = and i32 %i.amo, 31
  %i.amv = lshr i32 %i.amt, %i.amu
  %i.amw = trunc i32 %i.amv to i1
  br i1 %i.amw, label %.lr.ph.i.i686, label %.loopexit.i671, !prof !45, !llvm.loop !782

.loopexit.i671:                                   ; preds = %bb.ck, %bb.cj, %bb.ci
  %.lcssa28.sink.i.ph.i672 = phi ptr [ %i.amd, %bb.cj ], [ null, %bb.ci ], [ %i.amq, %bb.ck ]
  %i.amx = shl i32 %i.alp, 1
  %i.amy = and i32 %i.amx, -4
  %i.amz = add i32 %i.amy, 4
  %i.ana = mul i32 %.sink.i.i.i.i670, 3
  %.not.i.i673 = icmp ult i32 %i.amz, %i.ana
  br i1 %.not.i.i673, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit.i679, label %bb.cl, !prof !44

bb.cl:                                            ; preds = %.loopexit.i671
  %i.anb = shl i32 %.sink.i.i.i.i670, 1
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %20, i32 noundef %i.anb)
  %i.anc = load i32, ptr %20, align 8, !noalias !932
  %i.and = and i32 %i.anc, 1
  %.not.i.i.i796 = icmp eq i32 %i.and, 0          ; 3 uses
  %i.ane = load ptr, ptr %i.yn, align 8, !noalias !932
  %i.anf = load ptr, ptr %i.yo, align 8, !noalias !932
  %i.ang = load i32, ptr %i.yp, align 8, !noalias !932
  %.sink2.i.i.i797 = select i1 %.not.i.i.i796, ptr %i.ane, ptr %i.yn ; 5 uses
  %.sink1.i.i.i798 = select i1 %.not.i.i.i796, ptr %i.anf, ptr %i.yi ; 5 uses
  %.sink.i.i.i799 = select i1 %.not.i.i.i796, i32 %i.ang, i32 4 ; 2 uses
  %i.anh = icmp ne i32 %.sink.i.i.i799, 0
  call void @llvm.assume(i1 %i.anh)
  %i.ani = add i32 %.sink.i.i.i799, -1            ; 2 uses
  %i.anj = ptrtoint ptr %i.alo to i64
  %i.ank = mul i64 %i.anj, -4658895280553007687   ; 2 uses
  %i.anl = lshr i64 %i.ank, 31
  %i.anm = xor i64 %i.anl, %i.ank
  %i.ann = trunc i64 %i.anm to i32
  %i.ano = and i32 %i.ani, %i.ann                 ; 3 uses
  %i.anp = zext i32 %i.ano to i64                 ; 2 uses
  %i.anq = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i.i797, i64 %i.anp ; 2 uses
  %i.anr = lshr i64 %i.anp, 5
  %i.ans = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i798, i64 %i.anr
  %i.ant = load i32, ptr %i.ans, align 4, !tbaa !40
  %i.anu = and i32 %i.ano, 31
  %i.anv = lshr i32 %i.ant, %i.anu
  %i.anw = trunc i32 %i.anv to i1
  br i1 %i.anw, label %.lr.ph.i802, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit.i679, !prof !41

.lr.ph.i802:                                      ; preds = %bb.cl, %bb.cm
  %i.anx = phi ptr [ %i.aod, %bb.cm ], [ %i.anq, %bb.cl ] ; 2 uses
  %.024.i803 = phi i32 [ %i.aob, %bb.cm ], [ %i.ano, %bb.cl ]
  %i.any = load ptr, ptr %i.anx, align 8, !tbaa !43
  %i.anz = icmp eq ptr %i.alo, %i.any
  br i1 %i.anz, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit.i679, label %bb.cm, !prof !44

bb.cm:                                            ; preds = %.lr.ph.i802
  %i.aoa = add nuw i32 %.024.i803, 1
  %i.aob = and i32 %i.aoa, %i.ani                 ; 3 uses
  %i.aoc = zext i32 %i.aob to i64                 ; 2 uses
  %i.aod = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i.i797, i64 %i.aoc ; 2 uses
  %i.aoe = lshr i64 %i.aoc, 5
  %i.aof = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i798, i64 %i.aoe
  %i.aog = load i32, ptr %i.aof, align 4, !tbaa !40
  %i.aoh = and i32 %i.aob, 31
  %i.aoi = lshr i32 %i.aog, %i.aoh
  %i.aoj = trunc i32 %i.aoi to i1
  br i1 %i.aoj, label %.lr.ph.i802, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit.i679, !prof !45, !llvm.loop !782

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit.i679: ; preds = %bb.cm, %.lr.ph.i802, %bb.cl, %.loopexit.i671
  %.pre-phi1315 = phi ptr [ %.sink2.i.i.i.i668, %.loopexit.i671 ], [ %.sink2.i.i.i797, %bb.cl ], [ %.sink2.i.i.i797, %.lr.ph.i802 ], [ %.sink2.i.i.i797, %bb.cm ]
  %.pre-phi1314 = phi ptr [ %.sink1.i.i.i.i669, %.loopexit.i671 ], [ %.sink1.i.i.i798, %bb.cl ], [ %.sink1.i.i.i798, %.lr.ph.i802 ], [ %.sink1.i.i.i798, %bb.cm ]
  %i.aok = phi ptr [ %.lcssa28.sink.i.ph.i672, %.loopexit.i671 ], [ %i.anq, %bb.cl ], [ %i.aod, %bb.cm ], [ %i.anx, %.lr.ph.i802 ] ; 3 uses
  %i.aol = ptrtoint ptr %i.aok to i64
  %i.aom = ptrtoint ptr %.pre-phi1315 to i64
  %i.aon = sub i64 %i.aol, %i.aom
  %i.aoo = ashr exact i64 %i.aon, 4               ; 2 uses
  %i.aop = trunc i64 %i.aoo to i32
  %i.aoq = and i32 %i.aop, 31
  %i.aor = shl nuw i32 1, %i.aoq
  %i.aos = lshr i64 %i.aoo, 5
  %i.aot = getelementptr inbounds nuw [4 x i8], ptr %.pre-phi1314, i64 %i.aos ; 2 uses
  %i.aou = load i32, ptr %i.aot, align 4, !tbaa !40
  %i.aov = or i32 %i.aor, %i.aou
  store i32 %i.aov, ptr %i.aot, align 4, !tbaa !40
  %i.aow = load i32, ptr %20, align 8             ; 2 uses
  %38 = and i32 %i.aow, -2
  %i.aox = add i32 %38, 2
  %39 = and i32 %i.aow, 1
  %40 = or disjoint i32 %i.aox, %39
  store i32 %40, ptr %20, align 8
  store ptr %i.alo, ptr %i.aok, align 8, !tbaa !43
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.aok, i64 8
  store ptr null, ptr %i.aoy, align 8, !tbaa !151
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSA_bEOT_DpOT0_.exit688

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSA_bEOT_DpOT0_.exit688.loopexit: ; preds = %.lr.ph.i.i686
  %.phi.trans.insert1287 = getelementptr inbounds nuw i8, ptr %i.amk, i64 8
  %.pre1288 = load ptr, ptr %.phi.trans.insert1287, align 8, !tbaa !151
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSA_bEOT_DpOT0_.exit688

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSA_bEOT_DpOT0_.exit688: ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSA_bEOT_DpOT0_.exit688.loopexit, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit.i679
  %i.aoz = phi ptr [ null, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit.i679 ], [ %.pre1288, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSA_bEOT_DpOT0_.exit688.loopexit ] ; 4 uses
  %i.apa = load i32, ptr %14, align 8, !noalias !933 ; 2 uses
  %i.apb = and i32 %i.apa, 1
  %.not.i.i.i.i689 = icmp eq i32 %i.apb, 0        ; 3 uses
  %i.apc = load ptr, ptr %i.yq, align 8, !noalias !933
  %i.apd = load ptr, ptr %i.yr, align 8, !noalias !933
  %i.ape = load i32, ptr %i.ys, align 8, !noalias !933
  %.sink2.i.i.i.i690 = select i1 %.not.i.i.i.i689, ptr %i.apc, ptr %i.yq ; 3 uses
  %.sink1.i.i.i.i691 = select i1 %.not.i.i.i.i689, ptr %i.apd, ptr %i.m ; 3 uses
  %.sink.i.i.i.i692 = select i1 %.not.i.i.i.i689, i32 %i.ape, i32 4 ; 4 uses
  %i.apf = icmp eq i32 %.sink.i.i.i.i692, 0
  br i1 %i.apf, label %.loopexit.i693, label %bb.cn

bb.cn:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSA_bEOT_DpOT0_.exit688
  %i.apg = add i32 %.sink.i.i.i.i692, -1          ; 2 uses
  %i.aph = ptrtoint ptr %i.alo to i64
  %i.api = mul i64 %i.aph, -4658895280553007687   ; 2 uses
  %i.apj = lshr i64 %i.api, 31
  %i.apk = xor i64 %i.apj, %i.api
  %i.apl = shl i64 %i.apk, 32
  %i.apm = or disjoint i64 %i.apl, %i.all
  %i.apn = mul i64 %i.apm, -4658895280553007687   ; 2 uses
  %i.apo = lshr i64 %i.apn, 31
  %i.app = xor i64 %i.apo, %i.apn
  %i.apq = trunc i64 %i.app to i32
  %i.apr = and i32 %i.apg, %i.apq                 ; 3 uses
  %i.aps = zext i32 %i.apr to i64                 ; 2 uses
  %i.apt = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i.i690, i64 %i.aps ; 2 uses
  %i.apu = lshr i64 %i.aps, 5
  %i.apv = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i691, i64 %i.apu
  %i.apw = load i32, ptr %i.apv, align 4, !tbaa !40
  %i.apx = and i32 %i.apr, 31
  %i.apy = lshr i32 %i.apw, %i.apx
  %i.apz = trunc i32 %i.apy to i1
  br i1 %i.apz, label %.lr.ph.i.i708, label %.loopexit.i693, !prof !41

.lr.ph.i.i708:                                    ; preds = %bb.cn, %bb.co
  %i.aqa = phi ptr [ %i.aqk, %bb.co ], [ %i.apt, %bb.cn ] ; 3 uses
  %.024.i.i709 = phi i32 [ %i.aqi, %bb.co ], [ %i.apr, %bb.cn ]
  %i.aqb = load ptr, ptr %i.aqa, align 8, !tbaa !302
  %i.aqc = icmp eq ptr %i.alo, %i.aqb
  %i.aqd = getelementptr inbounds nuw i8, ptr %i.aqa, i64 8
  %i.aqe = load ptr, ptr %i.aqd, align 8
  %i.aqf = icmp eq ptr %i.adm, %i.aqe
  %i.aqg = select i1 %i.aqc, i1 %i.aqf, i1 false
  br i1 %i.aqg, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit710, label %bb.co, !prof !44

bb.co:                                            ; preds = %.lr.ph.i.i708
  %i.aqh = add nuw i32 %.024.i.i709, 1
  %i.aqi = and i32 %i.aqh, %i.apg                 ; 3 uses
  %i.aqj = zext i32 %i.aqi to i64                 ; 2 uses
  %i.aqk = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i.i690, i64 %i.aqj ; 2 uses
  %i.aql = lshr i64 %i.aqj, 5
  %i.aqm = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i691, i64 %i.aql
  %i.aqn = load i32, ptr %i.aqm, align 4, !tbaa !40
  %i.aqo = and i32 %i.aqi, 31
  %i.aqp = lshr i32 %i.aqn, %i.aqo
  %i.aqq = trunc i32 %i.aqp to i1
  br i1 %i.aqq, label %.lr.ph.i.i708, label %.loopexit.i693, !prof !45, !llvm.loop !16

.loopexit.i693:                                   ; preds = %bb.co, %bb.cn, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSA_bEOT_DpOT0_.exit688
  %.lcssa28.sink.i.ph.i694 = phi ptr [ %i.apt, %bb.cn ], [ null, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSA_bEOT_DpOT0_.exit688 ], [ %i.aqk, %bb.co ]
  %i.aqr = shl i32 %i.apa, 1
  %i.aqs = and i32 %i.aqr, -4
  %i.aqt = add i32 %i.aqs, 4
  %i.aqu = mul i32 %.sink.i.i.i.i692, 3
  %.not.i.i695 = icmp ult i32 %i.aqt, %i.aqu
  br i1 %.not.i.i695, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit710.thread, label %bb.cp, !prof !44

bb.cp:                                            ; preds = %.loopexit.i693
  %i.aqv = shl i32 %.sink.i.i.i.i692, 1
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %14, i32 noundef %i.aqv)
  %i.aqw = load i32, ptr %14, align 8, !noalias !934
  %i.aqx = and i32 %i.aqw, 1
  %.not.i.i.i805 = icmp eq i32 %i.aqx, 0          ; 3 uses
  %i.aqy = load ptr, ptr %i.yq, align 8, !noalias !934
  %i.aqz = load ptr, ptr %i.yr, align 8, !noalias !934
  %i.ara = load i32, ptr %i.ys, align 8, !noalias !934
  %.sink2.i.i.i806 = select i1 %.not.i.i.i805, ptr %i.aqy, ptr %i.yq ; 5 uses
  %.sink1.i.i.i807 = select i1 %.not.i.i.i805, ptr %i.aqz, ptr %i.m ; 5 uses
  %.sink.i.i.i808 = select i1 %.not.i.i.i805, i32 %i.ara, i32 4 ; 2 uses
  %i.arb = icmp ne i32 %.sink.i.i.i808, 0
  call void @llvm.assume(i1 %i.arb)
  %i.arc = add i32 %.sink.i.i.i808, -1            ; 2 uses
  %i.ard = ptrtoint ptr %i.alo to i64
  %i.are = mul i64 %i.ard, -4658895280553007687   ; 2 uses
  %i.arf = lshr i64 %i.are, 31
  %i.arg = xor i64 %i.arf, %i.are
  %i.arh = shl i64 %i.arg, 32
  %i.ari = or disjoint i64 %i.arh, %i.all
  %i.arj = mul i64 %i.ari, -4658895280553007687   ; 2 uses
  %i.ark = lshr i64 %i.arj, 31
  %i.arl = xor i64 %i.ark, %i.arj
  %i.arm = trunc i64 %i.arl to i32
  %i.arn = and i32 %i.arc, %i.arm                 ; 3 uses
  %i.aro = zext i32 %i.arn to i64                 ; 2 uses
  %i.arp = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i806, i64 %i.aro ; 2 uses
  %i.arq = lshr i64 %i.aro, 5
  %i.arr = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i807, i64 %i.arq
  %i.ars = load i32, ptr %i.arr, align 4, !tbaa !40
  %i.art = and i32 %i.arn, 31
  %i.aru = lshr i32 %i.ars, %i.art
  %i.arv = trunc i32 %i.aru to i1
  br i1 %i.arv, label %.lr.ph.i811, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit710.thread, !prof !41

.lr.ph.i811:                                      ; preds = %bb.cp, %bb.cq
  %i.arw = phi ptr [ %i.asg, %bb.cq ], [ %i.arp, %bb.cp ] ; 3 uses
  %.024.i812 = phi i32 [ %i.ase, %bb.cq ], [ %i.arn, %bb.cp ]
  %i.arx = load ptr, ptr %i.arw, align 8, !tbaa !302
  %i.ary = icmp eq ptr %i.alo, %i.arx
  %i.arz = getelementptr inbounds nuw i8, ptr %i.arw, i64 8
  %i.asa = load ptr, ptr %i.arz, align 8
  %i.asb = icmp eq ptr %i.adm, %i.asa
  %i.asc = select i1 %i.ary, i1 %i.asb, i1 false
  br i1 %i.asc, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit710.thread, label %bb.cq, !prof !44

bb.cq:                                            ; preds = %.lr.ph.i811
  %i.asd = add nuw i32 %.024.i812, 1
  %i.ase = and i32 %i.asd, %i.arc                 ; 3 uses
  %i.asf = zext i32 %i.ase to i64                 ; 2 uses
  %i.asg = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i806, i64 %i.asf ; 2 uses
  %i.ash = lshr i64 %i.asf, 5
  %i.asi = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i807, i64 %i.ash
  %i.asj = load i32, ptr %i.asi, align 4, !tbaa !40
  %i.ask = and i32 %i.ase, 31
  %i.asl = lshr i32 %i.asj, %i.ask
  %i.asm = trunc i32 %i.asl to i1
  br i1 %i.asm, label %.lr.ph.i811, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit710.thread, !prof !45, !llvm.loop !16

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit710.thread: ; preds = %.lr.ph.i811, %bb.cq, %.loopexit.i693, %bb.cp
  %.pre-phi1317 = phi ptr [ %.sink2.i.i.i.i690, %.loopexit.i693 ], [ %.sink2.i.i.i806, %bb.cp ], [ %.sink2.i.i.i806, %bb.cq ], [ %.sink2.i.i.i806, %.lr.ph.i811 ]
  %.pre-phi1316 = phi ptr [ %.sink1.i.i.i.i691, %.loopexit.i693 ], [ %.sink1.i.i.i807, %bb.cp ], [ %.sink1.i.i.i807, %bb.cq ], [ %.sink1.i.i.i807, %.lr.ph.i811 ]
  %i.asn = phi ptr [ %.lcssa28.sink.i.ph.i694, %.loopexit.i693 ], [ %i.arp, %bb.cp ], [ %i.arw, %.lr.ph.i811 ], [ %i.asg, %bb.cq ] ; 4 uses
  %i.aso = ptrtoint ptr %i.asn to i64
  %i.asp = ptrtoint ptr %.pre-phi1317 to i64
  %i.asq = sub i64 %i.aso, %i.asp
  %i.asr = sdiv exact i64 %i.asq, 24              ; 2 uses
  %i.ass = trunc i64 %i.asr to i32
  %i.ast = and i32 %i.ass, 31
  %i.asu = shl nuw i32 1, %i.ast
  %i.asv = lshr i64 %i.asr, 5
  %i.asw = getelementptr inbounds nuw [4 x i8], ptr %.pre-phi1316, i64 %i.asv ; 2 uses
  %i.asx = load i32, ptr %i.asw, align 4, !tbaa !40
  %i.asy = or i32 %i.asu, %i.asx
  store i32 %i.asy, ptr %i.asw, align 4, !tbaa !40
  %i.asz = load i32, ptr %14, align 8             ; 2 uses
  %41 = and i32 %i.asz, -2
  %i.ata = add i32 %41, 2
  %42 = and i32 %i.asz, 1
  %43 = or disjoint i32 %i.ata, %42
  store i32 %43, ptr %14, align 8
  store ptr %i.alo, ptr %i.asn, align 8
  %.sroa.6873.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.asn, i64 8
  store ptr %i.adm, ptr %.sroa.6873.0..sroa_idx, align 8
  %i.atb = getelementptr inbounds nuw i8, ptr %i.asn, i64 16
  store i32 0, ptr %i.atb, align 8, !tbaa !40
  br label %._crit_edge1097

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit710: ; preds = %.lr.ph.i.i708
  %.phi.trans.insert1289 = getelementptr inbounds nuw i8, ptr %i.aqa, i64 16
  %.pre1290 = load i32, ptr %.phi.trans.insert1289, align 4, !tbaa !40 ; 2 uses
  %i.atc = icmp sgt i32 %.pre1290, 0
  br i1 %i.atc, label %.lr.ph1096, label %._crit_edge1097

.lr.ph1096:                                       ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit710
  %.not.i.i.i.i.i322 = icmp eq ptr %i.aoz, null
  %i.atd = getelementptr inbounds nuw i8, ptr %i.aoz, i64 16 ; 3 uses
  %.pre1291 = load i32, ptr %i.alm, align 4, !tbaa !184
  br label %bb.cr

._crit_edge1097:                                  ; preds = %_ZN4llvm9MemoryPhi11addIncomingEPNS_12MemoryAccessEPNS_10BasicBlockE.exit, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit710.thread, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit710
  %i.ate = getelementptr inbounds nuw i8, ptr %.02111099, i64 8 ; 2 uses
  %.not237 = icmp eq ptr %i.ate, %i.alk
  br i1 %.not237, label %.loopexit969, label %bb.ci

bb.cr:                                            ; preds = %.lr.ph1096, %_ZN4llvm9MemoryPhi11addIncomingEPNS_12MemoryAccessEPNS_10BasicBlockE.exit
  %i.atf = phi i32 [ %.pre1291, %.lr.ph1096 ], [ %i.aui, %_ZN4llvm9MemoryPhi11addIncomingEPNS_12MemoryAccessEPNS_10BasicBlockE.exit ] ; 3 uses
  %.02101095 = phi i32 [ 0, %.lr.ph1096 ], [ %i.aun, %_ZN4llvm9MemoryPhi11addIncomingEPNS_12MemoryAccessEPNS_10BasicBlockE.exit ]
  %i.atg = load i32, ptr %i.aeu, align 4          ; 2 uses
  %i.ath = and i32 %i.atg, 268435455
  %i.ati = icmp eq i32 %i.ath, %i.atf
  br i1 %i.ati, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.atj = lshr i32 %i.atf, 1
  %i.atk = add nuw nsw i32 %i.atj, %i.atf
  %.sroa.speculated.i.i = call i32 @llvm.umax.i32(i32 %i.atk, i32 2) ; 2 uses
  store i32 %.sroa.speculated.i.i, ptr %i.alm, align 4, !tbaa !184
  call void @_ZN4llvm4User15growHungoffUsesEjb(ptr noundef nonnull align 8 dereferenceable(80) %i.aet, i32 noundef %.sroa.speculated.i.i, i1 noundef zeroext true) #17
  %.pre.i323 = load i32, ptr %i.aeu, align 4
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %i.atl = phi i32 [ %.pre.i323, %bb.cs ], [ %i.atg, %bb.cr ] ; 2 uses
  %i.atm = add i32 %i.atl, 1
  %i.atn = and i32 %i.atm, 268435455              ; 2 uses
  %i.ato = and i32 %i.atl, -268435456
  %i.atp = or disjoint i32 %i.atn, %i.ato
  store i32 %i.atp, ptr %i.aeu, align 4
  %i.atq = add nsw i32 %i.atn, -1
  %i.atr = load ptr, ptr %i.aln, align 8, !tbaa !164
  %i.ats = zext i32 %i.atq to i64
  %i.att = getelementptr inbounds nuw [32 x i8], ptr %i.atr, i64 %i.ats ; 5 uses
  %i.atu = getelementptr inbounds nuw i8, ptr %i.att, i64 16 ; 3 uses
  %i.atv = load ptr, ptr %i.atu, align 8, !tbaa !189 ; 3 uses
  %.not.i.i.i.i.i.i321 = icmp eq ptr %i.atv, null
  br i1 %.not.i.i.i.i.i.i321, label %_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i.i, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.atw = getelementptr inbounds nuw i8, ptr %i.att, i64 8 ; 2 uses
  %i.atx = load ptr, ptr %i.atw, align 8, !tbaa !188 ; 3 uses
  store ptr %i.atx, ptr %i.atv, align 8, !tbaa !164
  %.not2.i.i.i.i.i.i = icmp eq ptr %i.atx, null
  br i1 %.not2.i.i.i.i.i.i, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.aty = getelementptr inbounds nuw i8, ptr %i.atx, i64 16
  store ptr %i.atv, ptr %i.aty, align 8, !tbaa !189
  store ptr null, ptr %i.atw, align 8, !tbaa !188
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  store ptr null, ptr %i.atu, align 8, !tbaa !189
  br label %_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i.i

_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i.i:    ; preds = %bb.cw, %bb.ct
  store ptr %i.aoz, ptr %i.att, align 8, !tbaa !185
  br i1 %.not.i.i.i.i.i322, label %_ZN4llvm9MemoryPhi11addIncomingEPNS_12MemoryAccessEPNS_10BasicBlockE.exit, label %bb.cx

bb.cx:                                            ; preds = %_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i.i
  %i.atz = load i8, ptr %i.aoz, align 8, !tbaa !190
  %i.aua = icmp ugt i8 %i.atz, 10
  br i1 %i.aua, label %bb.cy, label %_ZN4llvm9MemoryPhi11addIncomingEPNS_12MemoryAccessEPNS_10BasicBlockE.exit

bb.cy:                                            ; preds = %bb.cx
  %i.aub = load ptr, ptr %i.atd, align 8, !tbaa !164 ; 3 uses
  %i.auc = getelementptr inbounds nuw i8, ptr %i.att, i64 8 ; 2 uses
  store ptr %i.aub, ptr %i.auc, align 8, !tbaa !188
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.aub, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i.i.i, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.aud = getelementptr inbounds nuw i8, ptr %i.aub, i64 16
  store ptr %i.auc, ptr %i.aud, align 8, !tbaa !189
  br label %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i.i.i

_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i.i.i:    ; preds = %bb.cz, %bb.cy
  store ptr %i.atd, ptr %i.atu, align 8, !tbaa !189
  store ptr %i.att, ptr %i.atd, align 8, !tbaa !164
  br label %_ZN4llvm9MemoryPhi11addIncomingEPNS_12MemoryAccessEPNS_10BasicBlockE.exit

_ZN4llvm9MemoryPhi11addIncomingEPNS_12MemoryAccessEPNS_10BasicBlockE.exit: ; preds = %_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i.i, %bb.cx, %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i.i.i
  %i.aue = load i32, ptr %i.aeu, align 4
  %i.auf = and i32 %i.aue, 268435455
  %i.aug = add nsw i32 %i.auf, -1
  %i.auh = load ptr, ptr %i.aln, align 8, !tbaa !164
  %i.aui = load i32, ptr %i.alm, align 4, !tbaa !184 ; 2 uses
  %i.auj = zext i32 %i.aui to i64
  %i.auk = getelementptr inbounds nuw [32 x i8], ptr %i.auh, i64 %i.auj
  %i.aul = zext i32 %i.aug to i64
  %i.aum = getelementptr inbounds nuw [8 x i8], ptr %i.auk, i64 %i.aul
  store ptr %i.alo, ptr %i.aum, align 8, !tbaa !43
  %i.aun = add nuw nsw i32 %.02101095, 1          ; 2 uses
  %exitcond.not = icmp eq i32 %i.aun, %.pre1290
  br i1 %exitcond.not, label %._crit_edge1097, label %bb.cr, !llvm.loop !803

bb.da:                                            ; preds = %_ZNK4llvm9MemorySSA15getMemoryAccessEPKNS_10BasicBlockE.exit314
  %i.auo = getelementptr inbounds nuw i8, ptr %.sroa.0892.01123, i64 88 ; 2 uses
  %i.aup = load ptr, ptr %i.auo, align 8, !tbaa !148
  %i.auq = load ptr, ptr %i.aup, align 8, !tbaa !43
  %i.aur = call fastcc noundef ptr @"_ZZN4llvm16MemorySSAUpdater18applyInsertUpdatesENS_8ArrayRefINS_3cfg6UpdateIPNS_10BasicBlockEEEEERNS_13DominatorTreeEPKNS_9GraphDiffIS5_Lb0EEEENK3$_0clES5_"(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef %i.auq) ; 6 uses
  %i.aus = load i32, ptr %20, align 8, !noalias !935 ; 2 uses
  %i.aut = and i32 %i.aus, 1
  %.not.i.i.i.i324 = icmp eq i32 %i.aut, 0        ; 3 uses
  %i.auu = load ptr, ptr %i.yn, align 8, !noalias !935
  %i.auv = select i1 %.not.i.i.i.i324, ptr %i.auu, ptr %i.yn
  %i.auw = load ptr, ptr %i.yo, align 8, !noalias !935
  %i.aux = select i1 %.not.i.i.i.i324, ptr %i.auw, ptr %i.yi ; 4 uses
  %i.auy = load i32, ptr %i.yp, align 8, !noalias !935
  %i.auz = select i1 %.not.i.i.i.i324, i32 %i.auy, i32 4 ; 2 uses
  %i.ava = icmp ult i32 %i.aus, 2
  %i.avb = zext i32 %i.auz to i64                 ; 4 uses
  %.idx1646 = shl nuw nsw i64 %i.avb, 4           ; 2 uses
  %.not.i.not.i.i325 = icmp eq i32 %i.auz, 0
  %or.cond954 = select i1 %i.ava, i1 true, i1 %.not.i.not.i.i325
  br i1 %or.cond954, label %.thread, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.avc = add nuw nsw i64 %i.avb, 31
  %i.avd = lshr i64 %i.avc, 5                     ; 2 uses
  %i.ave = load i32, ptr %i.aux, align 4, !tbaa !40, !noalias !936 ; 2 uses
  %i.avf = icmp eq i32 %i.ave, 0
  br i1 %i.avf, label %.lr.ph.i.i.i330.preheader, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E5beginEv.exit

.lr.ph.i.i.i330.preheader:                        ; preds = %bb.db
  %i.avg = icmp eq i64 %i.avd, 1
  br i1 %i.avg, label %.thread, label %.lr.ph1755

.lr.ph.i.i.i330:                                  ; preds = %.lr.ph1755
  %i.avh = add nuw nsw i64 %i.avj, 1              ; 2 uses
  %i.avi = icmp eq i64 %i.avh, %i.avd
  br i1 %i.avi, label %.thread, label %.lr.ph1755, !llvm.loop !808

.lr.ph1755:                                       ; preds = %.lr.ph.i.i.i330.preheader, %.lr.ph.i.i.i330
  %i.avj = phi i64 [ %i.avh, %.lr.ph.i.i.i330 ], [ 1, %.lr.ph.i.i.i330.preheader ] ; 3 uses
  %i.avk = getelementptr inbounds nuw [4 x i8], ptr %i.aux, i64 %i.avj
  %i.avl = load i32, ptr %i.avk, align 4, !tbaa !40, !noalias !936 ; 2 uses
  %i.avm = icmp eq i32 %i.avl, 0
  br i1 %i.avm, label %.lr.ph.i.i.i330, label %._crit_edge.i.loopexit.i.i332, !llvm.loop !808

._crit_edge.i.loopexit.i.i332:                    ; preds = %.lr.ph1755
  %i.avn = shl i64 %i.avj, 9
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E5beginEv.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E5beginEv.exit: ; preds = %bb.db, %._crit_edge.i.loopexit.i.i332
  %.012.lcssa.i.i.i327 = phi i64 [ 0, %bb.db ], [ %i.avn, %._crit_edge.i.loopexit.i.i332 ]
  %.0.lcssa.i.i.i328 = phi i32 [ %i.ave, %bb.db ], [ %i.avl, %._crit_edge.i.loopexit.i.i332 ]
  %i.avo = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i328, i1 true)
  %i.avp = shl nuw nsw i32 %i.avo, 4
  %.idx1645 = zext nneg i32 %i.avp to i64
  %i.avq = or disjoint i64 %.012.lcssa.i.i.i327, %.idx1645 ; 2 uses
  %.not9621102 = icmp eq i64 %i.avq, %.idx1646
  br i1 %.not9621102, label %.thread, label %.lr.ph1105

.lr.ph1105:                                       ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E5beginEv.exit
  %i.avr = add nuw nsw i64 %i.avb, 31
  %i.avs = lshr i64 %i.avr, 5                     ; 2 uses
  br label %bb.dc

bb.dc:                                            ; preds = %.lr.ph1105, %_ZN4llvm16DenseMapIteratorIPNS_10BasicBlockEPNS_12MemoryAccessENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EELb0EEppEv.exit
  %.02071104 = phi i1 [ false, %.lr.ph1105 ], [ %.0207., %_ZN4llvm16DenseMapIteratorIPNS_10BasicBlockEPNS_12MemoryAccessENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EELb0EEppEv.exit ]
  %.pn1648 = phi i64 [ %i.avq, %.lr.ph1105 ], [ %i.awn, %_ZN4llvm16DenseMapIteratorIPNS_10BasicBlockEPNS_12MemoryAccessENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EELb0EEppEv.exit ] ; 2 uses
  %.sroa.0868.01103 = getelementptr i8, ptr %i.auv, i64 %.pn1648
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0868.01103, i64 8
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8
  %.not234 = icmp ne ptr %i.aur, %.sroa.3.0.copyload ; 2 uses
  %.0207. = select i1 %.not234, i1 true, i1 %.02071104 ; 2 uses
  br i1 %.not234, label %.critedge, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.avt = add i64 %.pn1648, 16
  %i.avu = ashr exact i64 %i.avt, 4               ; 3 uses
  %.not.i.i334 = icmp ult i64 %i.avu, %i.avb
  br i1 %.not.i.i334, label %bb.de, label %._crit_edge1106

bb.de:                                            ; preds = %bb.dd
  %i.avv = lshr i64 %i.avu, 5                     ; 3 uses
  %i.avw = getelementptr inbounds nuw [4 x i8], ptr %i.aux, i64 %i.avv
  %i.avx = load i32, ptr %i.avw, align 4, !tbaa !40
  %i.avy = trunc nuw i64 %i.avu to i32
  %i.avz = and i32 %i.avy, 31
end_hunk_2
begin_hunk_3_@_ZN4llvm16MemorySSAUpdater18applyInsertUpdatesENS_8ArrayRefINS_3cfg6UpdateIPNS_10BasicBlockEEEEERNS_13DominatorTreeEPKNS_9GraphDiffIS5_Lb0EEE:bb.a
  br i1 %i.awc, label %.lr.ph.i.i340.preheader, label %_ZN4llvm16DenseMapIteratorIPNS_10BasicBlockEPNS_12MemoryAccessENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EELb0EEppEv.exit

.lr.ph.i.i340.preheader:                          ; preds = %bb.de
  %i.awd = add nuw nsw i64 %i.avv, 1              ; 2 uses
  %i.awe = icmp eq i64 %i.awd, %i.avs
  br i1 %i.awe, label %._crit_edge1106, label %.lr.ph1756

.lr.ph.i.i340:                                    ; preds = %.lr.ph1756
  %i.awf = add i64 %i.awh, 1                      ; 2 uses
  %i.awg = icmp eq i64 %i.awf, %i.avs
  br i1 %i.awg, label %._crit_edge1106, label %.lr.ph1756, !llvm.loop !808

.lr.ph1756:                                       ; preds = %.lr.ph.i.i340.preheader, %.lr.ph.i.i340
  %i.awh = phi i64 [ %i.awf, %.lr.ph.i.i340 ], [ %i.awd, %.lr.ph.i.i340.preheader ] ; 3 uses
  %i.awi = getelementptr inbounds nuw [4 x i8], ptr %i.aux, i64 %i.awh
  %i.awj = load i32, ptr %i.awi, align 4, !tbaa !40 ; 2 uses
  %i.awk = icmp eq i32 %i.awj, 0
  br i1 %i.awk, label %.lr.ph.i.i340, label %_ZN4llvm16DenseMapIteratorIPNS_10BasicBlockEPNS_12MemoryAccessENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EELb0EEppEv.exit, !llvm.loop !808

_ZN4llvm16DenseMapIteratorIPNS_10BasicBlockEPNS_12MemoryAccessENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EELb0EEppEv.exit: ; preds = %.lr.ph1756, %bb.de
  %.012.lcssa.i.i337 = phi i64 [ %i.avv, %bb.de ], [ %i.awh, %.lr.ph1756 ]
  %.0.lcssa.i.i338 = phi i32 [ %i.awb, %bb.de ], [ %i.awj, %.lr.ph1756 ]
  %i.awl = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i338, i1 true)
  %.idx.i.i339 = shl i64 %.012.lcssa.i.i337, 9
  %i.awm = shl nuw nsw i32 %i.awl, 4
  %.idx1647 = zext nneg i32 %i.awm to i64
  %i.awn = or disjoint i64 %.idx.i.i339, %.idx1647 ; 2 uses
  %.not962 = icmp eq i64 %i.awn, %.idx1646
  br i1 %.not962, label %._crit_edge1106, label %bb.dc

._crit_edge1106:                                  ; preds = %bb.dd, %_ZN4llvm16DenseMapIteratorIPNS_10BasicBlockEPNS_12MemoryAccessENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EELb0EEppEv.exit, %.lr.ph.i.i340.preheader, %.lr.ph.i.i340
  br i1 %.0207., label %.critedge, label %.thread

.thread:                                          ; preds = %.lr.ph.i.i.i330, %.lr.ph.i.i.i330.preheader, %bb.da, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E5beginEv.exit, %._crit_edge1106
  call void @_ZN4llvm5Value18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.aet, ptr noundef %i.aur) #17
  call void @_ZN4llvm16MemorySSAUpdater18removeMemoryAccessEPNS_12MemoryAccessEb(ptr noundef nonnull align 8 dereferenceable(624) %0, ptr noundef nonnull %i.aet, i1 noundef zeroext false)
  br label %"_ZZN4llvm16MemorySSAUpdater18applyInsertUpdatesENS_8ArrayRefINS_3cfg6UpdateIPNS_10BasicBlockEEEEERNS_13DominatorTreeEPKNS_9GraphDiffIS5_Lb0EEEENK3$_2clES5_S5_RNS_15SmallVectorImplIS5_EE.exit"

.critedge:                                        ; preds = %bb.dc, %._crit_edge1106
  %i.awo = load ptr, ptr %i.adn, align 8, !tbaa !148 ; 2 uses
  %i.awp = load i32, ptr %i.adp, align 8, !tbaa !147 ; 2 uses
  %i.awq = zext i32 %i.awp to i64
  %.idx1170 = shl nuw nsw i64 %i.awq, 3
  %i.awr = getelementptr inbounds nuw i8, ptr %i.awo, i64 %.idx1170
  %.not2351111 = icmp eq i32 %i.awp, 0
  br i1 %.not2351111, label %._crit_edge1114, label %.lr.ph1113

.lr.ph1113:                                       ; preds = %.critedge
  %i.aws = and i64 %i.aed, 4294967295             ; 2 uses
  %i.awt = getelementptr inbounds nuw i8, ptr %i.aet, i64 76 ; 3 uses
  %i.awu = getelementptr inbounds i8, ptr %i.aet, i64 -8 ; 2 uses
  br label %bb.df

._crit_edge1114:                                  ; preds = %._crit_edge1110, %.critedge
  %i.awv = load ptr, ptr %i.auo, align 8, !tbaa !148 ; 2 uses
  %i.aww = getelementptr inbounds nuw i8, ptr %.sroa.0892.01123, i64 96
  %i.awx = load i32, ptr %i.aww, align 8, !tbaa !147 ; 2 uses
  %i.awy = zext i32 %i.awx to i64
  %.idx1171 = shl nuw nsw i64 %i.awy, 3
  %i.awz = getelementptr inbounds nuw i8, ptr %i.awv, i64 %.idx1171
  %.not2361118 = icmp eq i32 %i.awx, 0
  br i1 %.not2361118, label %.loopexit969, label %.lr.ph1121

.lr.ph1121:                                       ; preds = %._crit_edge1114
  %i.axa = and i64 %i.aed, 4294967295             ; 2 uses
  %i.axb = getelementptr inbounds nuw i8, ptr %i.aet, i64 76 ; 3 uses
  %i.axc = getelementptr inbounds i8, ptr %i.aet, i64 -8 ; 2 uses
  %.not.i.i.i.i.i357 = icmp eq ptr %i.aur, null
  %i.axd = getelementptr inbounds nuw i8, ptr %i.aur, i64 16 ; 3 uses
  br label %bb.dx

bb.df:                                            ; preds = %.lr.ph1113, %._crit_edge1110
  %.02061112 = phi ptr [ %i.awo, %.lr.ph1113 ], [ %i.beu, %._crit_edge1110 ] ; 2 uses
  %i.axe = load ptr, ptr %.02061112, align 8, !tbaa !43 ; 11 uses
  %i.axf = load i32, ptr %20, align 8, !noalias !937 ; 2 uses
  %i.axg = and i32 %i.axf, 1
  %.not.i.i.i.i711 = icmp eq i32 %i.axg, 0        ; 3 uses
  %i.axh = load ptr, ptr %i.yn, align 8, !noalias !937
  %i.axi = load ptr, ptr %i.yo, align 8, !noalias !937
  %i.axj = load i32, ptr %i.yp, align 8, !noalias !937
  %.sink2.i.i.i.i712 = select i1 %.not.i.i.i.i711, ptr %i.axh, ptr %i.yn ; 3 uses
  %.sink1.i.i.i.i713 = select i1 %.not.i.i.i.i711, ptr %i.axi, ptr %i.yi ; 3 uses
  %.sink.i.i.i.i714 = select i1 %.not.i.i.i.i711, i32 %i.axj, i32 4 ; 4 uses
  %i.axk = icmp eq i32 %.sink.i.i.i.i714, 0
  br i1 %i.axk, label %.loopexit.i715, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.axl = add i32 %.sink.i.i.i.i714, -1          ; 2 uses
  %i.axm = ptrtoint ptr %i.axe to i64
  %i.axn = mul i64 %i.axm, -4658895280553007687   ; 2 uses
  %i.axo = lshr i64 %i.axn, 31
  %i.axp = xor i64 %i.axo, %i.axn
  %i.axq = trunc i64 %i.axp to i32
  %i.axr = and i32 %i.axl, %i.axq                 ; 3 uses
  %i.axs = zext i32 %i.axr to i64                 ; 2 uses
  %i.axt = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i.i.i712, i64 %i.axs ; 2 uses
  %i.axu = lshr i64 %i.axs, 5
  %i.axv = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i713, i64 %i.axu
  %i.axw = load i32, ptr %i.axv, align 4, !tbaa !40
  %i.axx = and i32 %i.axr, 31
  %i.axy = lshr i32 %i.axw, %i.axx
  %i.axz = trunc i32 %i.axy to i1
  br i1 %i.axz, label %.lr.ph.i.i730, label %.loopexit.i715, !prof !41

.lr.ph.i.i730:                                    ; preds = %bb.dg, %bb.dh
  %i.aya = phi ptr [ %i.ayg, %bb.dh ], [ %i.axt, %bb.dg ] ; 2 uses
  %.024.i.i731 = phi i32 [ %i.aye, %bb.dh ], [ %i.axr, %bb.dg ]
  %i.ayb = load ptr, ptr %i.aya, align 8, !tbaa !43
  %i.ayc = icmp eq ptr %i.axe, %i.ayb
  br i1 %i.ayc, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSA_bEOT_DpOT0_.exit732.loopexit, label %bb.dh, !prof !44

bb.dh:                                            ; preds = %.lr.ph.i.i730
  %i.ayd = add nuw i32 %.024.i.i731, 1
  %i.aye = and i32 %i.ayd, %i.axl                 ; 3 uses
  %i.ayf = zext i32 %i.aye to i64                 ; 2 uses
  %i.ayg = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i.i.i712, i64 %i.ayf ; 2 uses
  %i.ayh = lshr i64 %i.ayf, 5
  %i.ayi = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i713, i64 %i.ayh
  %i.ayj = load i32, ptr %i.ayi, align 4, !tbaa !40
  %i.ayk = and i32 %i.aye, 31
  %i.ayl = lshr i32 %i.ayj, %i.ayk
  %i.aym = trunc i32 %i.ayl to i1
  br i1 %i.aym, label %.lr.ph.i.i730, label %.loopexit.i715, !prof !45, !llvm.loop !782

.loopexit.i715:                                   ; preds = %bb.dh, %bb.dg, %bb.df
  %.lcssa28.sink.i.ph.i716 = phi ptr [ %i.axt, %bb.dg ], [ null, %bb.df ], [ %i.ayg, %bb.dh ]
  %i.ayn = shl i32 %i.axf, 1
  %i.ayo = and i32 %i.ayn, -4
  %i.ayp = add i32 %i.ayo, 4
  %i.ayq = mul i32 %.sink.i.i.i.i714, 3
  %.not.i.i717 = icmp ult i32 %i.ayp, %i.ayq
  br i1 %.not.i.i717, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit.i723, label %bb.di, !prof !44

bb.di:                                            ; preds = %.loopexit.i715
  %i.ayr = shl i32 %.sink.i.i.i.i714, 1
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %20, i32 noundef %i.ayr)
  %i.ays = load i32, ptr %20, align 8, !noalias !938
  %i.ayt = and i32 %i.ays, 1
  %.not.i.i.i814 = icmp eq i32 %i.ayt, 0          ; 3 uses
  %i.ayu = load ptr, ptr %i.yn, align 8, !noalias !938
  %i.ayv = load ptr, ptr %i.yo, align 8, !noalias !938
  %i.ayw = load i32, ptr %i.yp, align 8, !noalias !938
  %.sink2.i.i.i815 = select i1 %.not.i.i.i814, ptr %i.ayu, ptr %i.yn ; 5 uses
  %.sink1.i.i.i816 = select i1 %.not.i.i.i814, ptr %i.ayv, ptr %i.yi ; 5 uses
  %.sink.i.i.i817 = select i1 %.not.i.i.i814, i32 %i.ayw, i32 4 ; 2 uses
  %i.ayx = icmp ne i32 %.sink.i.i.i817, 0
  call void @llvm.assume(i1 %i.ayx)
  %i.ayy = add i32 %.sink.i.i.i817, -1            ; 2 uses
  %i.ayz = ptrtoint ptr %i.axe to i64
  %i.aza = mul i64 %i.ayz, -4658895280553007687   ; 2 uses
  %i.azb = lshr i64 %i.aza, 31
  %i.azc = xor i64 %i.azb, %i.aza
  %i.azd = trunc i64 %i.azc to i32
  %i.aze = and i32 %i.ayy, %i.azd                 ; 3 uses
  %i.azf = zext i32 %i.aze to i64                 ; 2 uses
  %i.azg = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i.i815, i64 %i.azf ; 2 uses
  %i.azh = lshr i64 %i.azf, 5
  %i.azi = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i816, i64 %i.azh
  %i.azj = load i32, ptr %i.azi, align 4, !tbaa !40
  %i.azk = and i32 %i.aze, 31
  %i.azl = lshr i32 %i.azj, %i.azk
  %i.azm = trunc i32 %i.azl to i1
  br i1 %i.azm, label %.lr.ph.i820, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit.i723, !prof !41

.lr.ph.i820:                                      ; preds = %bb.di, %bb.dj
  %i.azn = phi ptr [ %i.azt, %bb.dj ], [ %i.azg, %bb.di ] ; 2 uses
  %.024.i821 = phi i32 [ %i.azr, %bb.dj ], [ %i.aze, %bb.di ]
  %i.azo = load ptr, ptr %i.azn, align 8, !tbaa !43
  %i.azp = icmp eq ptr %i.axe, %i.azo
  br i1 %i.azp, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit.i723, label %bb.dj, !prof !44

bb.dj:                                            ; preds = %.lr.ph.i820
  %i.azq = add nuw i32 %.024.i821, 1
  %i.azr = and i32 %i.azq, %i.ayy                 ; 3 uses
  %i.azs = zext i32 %i.azr to i64                 ; 2 uses
  %i.azt = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i.i815, i64 %i.azs ; 2 uses
  %i.azu = lshr i64 %i.azs, 5
  %i.azv = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i816, i64 %i.azu
  %i.azw = load i32, ptr %i.azv, align 4, !tbaa !40
  %i.azx = and i32 %i.azr, 31
  %i.azy = lshr i32 %i.azw, %i.azx
  %i.azz = trunc i32 %i.azy to i1
  br i1 %i.azz, label %.lr.ph.i820, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit.i723, !prof !45, !llvm.loop !782

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit.i723: ; preds = %bb.dj, %.lr.ph.i820, %bb.di, %.loopexit.i715
  %.pre-phi1311 = phi ptr [ %.sink2.i.i.i.i712, %.loopexit.i715 ], [ %.sink2.i.i.i815, %bb.di ], [ %.sink2.i.i.i815, %.lr.ph.i820 ], [ %.sink2.i.i.i815, %bb.dj ]
  %.pre-phi1310 = phi ptr [ %.sink1.i.i.i.i713, %.loopexit.i715 ], [ %.sink1.i.i.i816, %bb.di ], [ %.sink1.i.i.i816, %.lr.ph.i820 ], [ %.sink1.i.i.i816, %bb.dj ]
  %i.baa = phi ptr [ %.lcssa28.sink.i.ph.i716, %.loopexit.i715 ], [ %i.azg, %bb.di ], [ %i.azt, %bb.dj ], [ %i.azn, %.lr.ph.i820 ] ; 3 uses
  %i.bab = ptrtoint ptr %i.baa to i64
  %i.bac = ptrtoint ptr %.pre-phi1311 to i64
  %i.bad = sub i64 %i.bab, %i.bac
  %i.bae = ashr exact i64 %i.bad, 4               ; 2 uses
  %i.baf = trunc i64 %i.bae to i32
  %i.bag = and i32 %i.baf, 31
  %i.bah = shl nuw i32 1, %i.bag
  %i.bai = lshr i64 %i.bae, 5
  %i.baj = getelementptr inbounds nuw [4 x i8], ptr %.pre-phi1310, i64 %i.bai ; 2 uses
  %i.bak = load i32, ptr %i.baj, align 4, !tbaa !40
  %i.bal = or i32 %i.bah, %i.bak
  store i32 %i.bal, ptr %i.baj, align 4, !tbaa !40
  %i.bam = load i32, ptr %20, align 8             ; 2 uses
  %44 = and i32 %i.bam, -2
  %i.ban = add i32 %44, 2
  %45 = and i32 %i.bam, 1
  %46 = or disjoint i32 %i.ban, %45
  store i32 %46, ptr %20, align 8
  store ptr %i.axe, ptr %i.baa, align 8, !tbaa !43
  %i.bao = getelementptr inbounds nuw i8, ptr %i.baa, i64 8
  store ptr null, ptr %i.bao, align 8, !tbaa !151
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSA_bEOT_DpOT0_.exit732

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSA_bEOT_DpOT0_.exit732.loopexit: ; preds = %.lr.ph.i.i730
  %.phi.trans.insert1292 = getelementptr inbounds nuw i8, ptr %i.aya, i64 8
  %.pre1293 = load ptr, ptr %.phi.trans.insert1292, align 8, !tbaa !151
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSA_bEOT_DpOT0_.exit732

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSA_bEOT_DpOT0_.exit732: ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSA_bEOT_DpOT0_.exit732.loopexit, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit.i723
  %i.bap = phi ptr [ null, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit.i723 ], [ %.pre1293, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSA_bEOT_DpOT0_.exit732.loopexit ] ; 4 uses
  %i.baq = load i32, ptr %14, align 8, !noalias !939 ; 2 uses
  %i.bar = and i32 %i.baq, 1
  %.not.i.i.i.i733 = icmp eq i32 %i.bar, 0        ; 3 uses
  %i.bas = load ptr, ptr %i.yq, align 8, !noalias !939
  %i.bat = load ptr, ptr %i.yr, align 8, !noalias !939
  %i.bau = load i32, ptr %i.ys, align 8, !noalias !939
  %.sink2.i.i.i.i734 = select i1 %.not.i.i.i.i733, ptr %i.bas, ptr %i.yq ; 3 uses
  %.sink1.i.i.i.i735 = select i1 %.not.i.i.i.i733, ptr %i.bat, ptr %i.m ; 3 uses
  %.sink.i.i.i.i736 = select i1 %.not.i.i.i.i733, i32 %i.bau, i32 4 ; 4 uses
  %i.bav = icmp eq i32 %.sink.i.i.i.i736, 0
  br i1 %i.bav, label %.loopexit.i737, label %bb.dk

bb.dk:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSA_bEOT_DpOT0_.exit732
  %i.baw = add i32 %.sink.i.i.i.i736, -1          ; 2 uses
  %i.bax = ptrtoint ptr %i.axe to i64
  %i.bay = mul i64 %i.bax, -4658895280553007687   ; 2 uses
  %i.baz = lshr i64 %i.bay, 31
  %i.bba = xor i64 %i.baz, %i.bay
  %i.bbb = shl i64 %i.bba, 32
  %i.bbc = or disjoint i64 %i.bbb, %i.aws
  %i.bbd = mul i64 %i.bbc, -4658895280553007687   ; 2 uses
  %i.bbe = lshr i64 %i.bbd, 31
  %i.bbf = xor i64 %i.bbe, %i.bbd
  %i.bbg = trunc i64 %i.bbf to i32
  %i.bbh = and i32 %i.baw, %i.bbg                 ; 3 uses
  %i.bbi = zext i32 %i.bbh to i64                 ; 2 uses
  %i.bbj = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i.i734, i64 %i.bbi ; 2 uses
  %i.bbk = lshr i64 %i.bbi, 5
  %i.bbl = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i735, i64 %i.bbk
  %i.bbm = load i32, ptr %i.bbl, align 4, !tbaa !40
  %i.bbn = and i32 %i.bbh, 31
  %i.bbo = lshr i32 %i.bbm, %i.bbn
  %i.bbp = trunc i32 %i.bbo to i1
  br i1 %i.bbp, label %.lr.ph.i.i752, label %.loopexit.i737, !prof !41

.lr.ph.i.i752:                                    ; preds = %bb.dk, %bb.dl
  %i.bbq = phi ptr [ %i.bca, %bb.dl ], [ %i.bbj, %bb.dk ] ; 3 uses
  %.024.i.i753 = phi i32 [ %i.bby, %bb.dl ], [ %i.bbh, %bb.dk ]
  %i.bbr = load ptr, ptr %i.bbq, align 8, !tbaa !302
  %i.bbs = icmp eq ptr %i.axe, %i.bbr
  %i.bbt = getelementptr inbounds nuw i8, ptr %i.bbq, i64 8
  %i.bbu = load ptr, ptr %i.bbt, align 8
  %i.bbv = icmp eq ptr %i.adm, %i.bbu
  %i.bbw = select i1 %i.bbs, i1 %i.bbv, i1 false
  br i1 %i.bbw, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit754, label %bb.dl, !prof !44

bb.dl:                                            ; preds = %.lr.ph.i.i752
  %i.bbx = add nuw i32 %.024.i.i753, 1
  %i.bby = and i32 %i.bbx, %i.baw                 ; 3 uses
  %i.bbz = zext i32 %i.bby to i64                 ; 2 uses
  %i.bca = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i.i734, i64 %i.bbz ; 2 uses
  %i.bcb = lshr i64 %i.bbz, 5
  %i.bcc = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i735, i64 %i.bcb
  %i.bcd = load i32, ptr %i.bcc, align 4, !tbaa !40
  %i.bce = and i32 %i.bby, 31
  %i.bcf = lshr i32 %i.bcd, %i.bce
  %i.bcg = trunc i32 %i.bcf to i1
  br i1 %i.bcg, label %.lr.ph.i.i752, label %.loopexit.i737, !prof !45, !llvm.loop !16

.loopexit.i737:                                   ; preds = %bb.dl, %bb.dk, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSA_bEOT_DpOT0_.exit732
  %.lcssa28.sink.i.ph.i738 = phi ptr [ %i.bbj, %bb.dk ], [ null, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSA_bEOT_DpOT0_.exit732 ], [ %i.bca, %bb.dl ]
  %i.bch = shl i32 %i.baq, 1
  %i.bci = and i32 %i.bch, -4
  %i.bcj = add i32 %i.bci, 4
  %i.bck = mul i32 %.sink.i.i.i.i736, 3
  %.not.i.i739 = icmp ult i32 %i.bcj, %i.bck
  br i1 %.not.i.i739, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit754.thread, label %bb.dm, !prof !44

bb.dm:                                            ; preds = %.loopexit.i737
  %i.bcl = shl i32 %.sink.i.i.i.i736, 1
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %14, i32 noundef %i.bcl)
  %i.bcm = load i32, ptr %14, align 8, !noalias !940
  %i.bcn = and i32 %i.bcm, 1
  %.not.i.i.i823 = icmp eq i32 %i.bcn, 0          ; 3 uses
  %i.bco = load ptr, ptr %i.yq, align 8, !noalias !940
  %i.bcp = load ptr, ptr %i.yr, align 8, !noalias !940
  %i.bcq = load i32, ptr %i.ys, align 8, !noalias !940
  %.sink2.i.i.i824 = select i1 %.not.i.i.i823, ptr %i.bco, ptr %i.yq ; 5 uses
  %.sink1.i.i.i825 = select i1 %.not.i.i.i823, ptr %i.bcp, ptr %i.m ; 5 uses
  %.sink.i.i.i826 = select i1 %.not.i.i.i823, i32 %i.bcq, i32 4 ; 2 uses
  %i.bcr = icmp ne i32 %.sink.i.i.i826, 0
  call void @llvm.assume(i1 %i.bcr)
  %i.bcs = add i32 %.sink.i.i.i826, -1            ; 2 uses
  %i.bct = ptrtoint ptr %i.axe to i64
  %i.bcu = mul i64 %i.bct, -4658895280553007687   ; 2 uses
  %i.bcv = lshr i64 %i.bcu, 31
  %i.bcw = xor i64 %i.bcv, %i.bcu
  %i.bcx = shl i64 %i.bcw, 32
  %i.bcy = or disjoint i64 %i.bcx, %i.aws
  %i.bcz = mul i64 %i.bcy, -4658895280553007687   ; 2 uses
  %i.bda = lshr i64 %i.bcz, 31
  %i.bdb = xor i64 %i.bda, %i.bcz
  %i.bdc = trunc i64 %i.bdb to i32
  %i.bdd = and i32 %i.bcs, %i.bdc                 ; 3 uses
  %i.bde = zext i32 %i.bdd to i64                 ; 2 uses
  %i.bdf = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i824, i64 %i.bde ; 2 uses
  %i.bdg = lshr i64 %i.bde, 5
  %i.bdh = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i825, i64 %i.bdg
  %i.bdi = load i32, ptr %i.bdh, align 4, !tbaa !40
  %i.bdj = and i32 %i.bdd, 31
  %i.bdk = lshr i32 %i.bdi, %i.bdj
  %i.bdl = trunc i32 %i.bdk to i1
  br i1 %i.bdl, label %.lr.ph.i829, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit754.thread, !prof !41

.lr.ph.i829:                                      ; preds = %bb.dm, %bb.dn
  %i.bdm = phi ptr [ %i.bdw, %bb.dn ], [ %i.bdf, %bb.dm ] ; 3 uses
  %.024.i830 = phi i32 [ %i.bdu, %bb.dn ], [ %i.bdd, %bb.dm ]
  %i.bdn = load ptr, ptr %i.bdm, align 8, !tbaa !302
  %i.bdo = icmp eq ptr %i.axe, %i.bdn
  %i.bdp = getelementptr inbounds nuw i8, ptr %i.bdm, i64 8
  %i.bdq = load ptr, ptr %i.bdp, align 8
  %i.bdr = icmp eq ptr %i.adm, %i.bdq
  %i.bds = select i1 %i.bdo, i1 %i.bdr, i1 false
  br i1 %i.bds, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit754.thread, label %bb.dn, !prof !44

bb.dn:                                            ; preds = %.lr.ph.i829
  %i.bdt = add nuw i32 %.024.i830, 1
  %i.bdu = and i32 %i.bdt, %i.bcs                 ; 3 uses
  %i.bdv = zext i32 %i.bdu to i64                 ; 2 uses
  %i.bdw = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i824, i64 %i.bdv ; 2 uses
  %i.bdx = lshr i64 %i.bdv, 5
  %i.bdy = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i825, i64 %i.bdx
  %i.bdz = load i32, ptr %i.bdy, align 4, !tbaa !40
  %i.bea = and i32 %i.bdu, 31
  %i.beb = lshr i32 %i.bdz, %i.bea
  %i.bec = trunc i32 %i.beb to i1
  br i1 %i.bec, label %.lr.ph.i829, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit754.thread, !prof !45, !llvm.loop !16

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit754.thread: ; preds = %.lr.ph.i829, %bb.dn, %.loopexit.i737, %bb.dm
  %.pre-phi1313 = phi ptr [ %.sink2.i.i.i.i734, %.loopexit.i737 ], [ %.sink2.i.i.i824, %bb.dm ], [ %.sink2.i.i.i824, %bb.dn ], [ %.sink2.i.i.i824, %.lr.ph.i829 ]
  %.pre-phi1312 = phi ptr [ %.sink1.i.i.i.i735, %.loopexit.i737 ], [ %.sink1.i.i.i825, %bb.dm ], [ %.sink1.i.i.i825, %bb.dn ], [ %.sink1.i.i.i825, %.lr.ph.i829 ]
  %i.bed = phi ptr [ %.lcssa28.sink.i.ph.i738, %.loopexit.i737 ], [ %i.bdf, %bb.dm ], [ %i.bdm, %.lr.ph.i829 ], [ %i.bdw, %bb.dn ] ; 4 uses
  %i.bee = ptrtoint ptr %i.bed to i64
  %i.bef = ptrtoint ptr %.pre-phi1313 to i64
  %i.beg = sub i64 %i.bee, %i.bef
  %i.beh = sdiv exact i64 %i.beg, 24              ; 2 uses
  %i.bei = trunc i64 %i.beh to i32
  %i.bej = and i32 %i.bei, 31
  %i.bek = shl nuw i32 1, %i.bej
  %i.bel = lshr i64 %i.beh, 5
  %i.bem = getelementptr inbounds nuw [4 x i8], ptr %.pre-phi1312, i64 %i.bel ; 2 uses
  %i.ben = load i32, ptr %i.bem, align 4, !tbaa !40
  %i.beo = or i32 %i.bek, %i.ben
  store i32 %i.beo, ptr %i.bem, align 4, !tbaa !40
  %i.bep = load i32, ptr %14, align 8             ; 2 uses
  %47 = and i32 %i.bep, -2
  %i.beq = add i32 %47, 2
  %48 = and i32 %i.bep, 1
  %49 = or disjoint i32 %i.beq, %48
  store i32 %49, ptr %14, align 8
  store ptr %i.axe, ptr %i.bed, align 8
  %.sroa.6858.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bed, i64 8
  store ptr %i.adm, ptr %.sroa.6858.0..sroa_idx, align 8
  %i.ber = getelementptr inbounds nuw i8, ptr %i.bed, i64 16
  store i32 0, ptr %i.ber, align 8, !tbaa !40
  br label %._crit_edge1110

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit754: ; preds = %.lr.ph.i.i752
  %.phi.trans.insert1294 = getelementptr inbounds nuw i8, ptr %i.bbq, i64 16
  %.pre1295 = load i32, ptr %.phi.trans.insert1294, align 4, !tbaa !40 ; 2 uses
  %i.bes = icmp sgt i32 %.pre1295, 0
  br i1 %i.bes, label %.lr.ph1109, label %._crit_edge1110

.lr.ph1109:                                       ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit754
  %.not.i.i.i.i.i347 = icmp eq ptr %i.bap, null
  %i.bet = getelementptr inbounds nuw i8, ptr %i.bap, i64 16 ; 3 uses
  %.pre1296 = load i32, ptr %i.awt, align 4, !tbaa !184
  br label %bb.do

._crit_edge1110:                                  ; preds = %_ZN4llvm9MemoryPhi11addIncomingEPNS_12MemoryAccessEPNS_10BasicBlockE.exit352, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit754.thread, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit754
  %i.beu = getelementptr inbounds nuw i8, ptr %.02061112, i64 8 ; 2 uses
  %.not235 = icmp eq ptr %i.beu, %i.awr
  br i1 %.not235, label %._crit_edge1114, label %bb.df

bb.do:                                            ; preds = %.lr.ph1109, %_ZN4llvm9MemoryPhi11addIncomingEPNS_12MemoryAccessEPNS_10BasicBlockE.exit352
  %i.bev = phi i32 [ %.pre1296, %.lr.ph1109 ], [ %i.bfy, %_ZN4llvm9MemoryPhi11addIncomingEPNS_12MemoryAccessEPNS_10BasicBlockE.exit352 ] ; 3 uses
  %.02051108 = phi i32 [ 0, %.lr.ph1109 ], [ %i.bgd, %_ZN4llvm9MemoryPhi11addIncomingEPNS_12MemoryAccessEPNS_10BasicBlockE.exit352 ]
  %i.bew = load i32, ptr %i.aeu, align 4          ; 2 uses
  %i.bex = and i32 %i.bew, 268435455
  %i.bey = icmp eq i32 %i.bex, %i.bev
  br i1 %i.bey, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  %i.bez = lshr i32 %i.bev, 1
  %i.bfa = add nuw nsw i32 %i.bez, %i.bev
  %.sroa.speculated.i.i350 = call i32 @llvm.umax.i32(i32 %i.bfa, i32 2) ; 2 uses
  store i32 %.sroa.speculated.i.i350, ptr %i.awt, align 4, !tbaa !184
  call void @_ZN4llvm4User15growHungoffUsesEjb(ptr noundef nonnull align 8 dereferenceable(80) %i.aet, i32 noundef %.sroa.speculated.i.i350, i1 noundef zeroext true) #17
  %.pre.i351 = load i32, ptr %i.aeu, align 4
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.do
  %i.bfb = phi i32 [ %.pre.i351, %bb.dp ], [ %i.bew, %bb.do ] ; 2 uses
  %i.bfc = add i32 %i.bfb, 1
  %i.bfd = and i32 %i.bfc, 268435455              ; 2 uses
  %i.bfe = and i32 %i.bfb, -268435456
  %i.bff = or disjoint i32 %i.bfd, %i.bfe
  store i32 %i.bff, ptr %i.aeu, align 4
  %i.bfg = add nsw i32 %i.bfd, -1
  %i.bfh = load ptr, ptr %i.awu, align 8, !tbaa !164
  %i.bfi = zext i32 %i.bfg to i64
  %i.bfj = getelementptr inbounds nuw [32 x i8], ptr %i.bfh, i64 %i.bfi ; 5 uses
  %i.bfk = getelementptr inbounds nuw i8, ptr %i.bfj, i64 16 ; 3 uses
  %i.bfl = load ptr, ptr %i.bfk, align 8, !tbaa !189 ; 3 uses
  %.not.i.i.i.i.i.i344 = icmp eq ptr %i.bfl, null
  br i1 %.not.i.i.i.i.i.i344, label %_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i.i346, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.bfm = getelementptr inbounds nuw i8, ptr %i.bfj, i64 8 ; 2 uses
  %i.bfn = load ptr, ptr %i.bfm, align 8, !tbaa !188 ; 3 uses
  store ptr %i.bfn, ptr %i.bfl, align 8, !tbaa !164
  %.not2.i.i.i.i.i.i345 = icmp eq ptr %i.bfn, null
  br i1 %.not2.i.i.i.i.i.i345, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.bfo = getelementptr inbounds nuw i8, ptr %i.bfn, i64 16
  store ptr %i.bfl, ptr %i.bfo, align 8, !tbaa !189
  store ptr null, ptr %i.bfm, align 8, !tbaa !188
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dr
  store ptr null, ptr %i.bfk, align 8, !tbaa !189
  br label %_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i.i346

_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i.i346: ; preds = %bb.dt, %bb.dq
  store ptr %i.bap, ptr %i.bfj, align 8, !tbaa !185
  br i1 %.not.i.i.i.i.i347, label %_ZN4llvm9MemoryPhi11addIncomingEPNS_12MemoryAccessEPNS_10BasicBlockE.exit352, label %bb.du

bb.du:                                            ; preds = %_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i.i346
  %i.bfp = load i8, ptr %i.bap, align 8, !tbaa !190
  %i.bfq = icmp ugt i8 %i.bfp, 10
  br i1 %i.bfq, label %bb.dv, label %_ZN4llvm9MemoryPhi11addIncomingEPNS_12MemoryAccessEPNS_10BasicBlockE.exit352

bb.dv:                                            ; preds = %bb.du
  %i.bfr = load ptr, ptr %i.bet, align 8, !tbaa !164 ; 3 uses
  %i.bfs = getelementptr inbounds nuw i8, ptr %i.bfj, i64 8 ; 2 uses
  store ptr %i.bfr, ptr %i.bfs, align 8, !tbaa !188
  %.not.i.i.i.i.i.i.i348 = icmp eq ptr %i.bfr, null
  br i1 %.not.i.i.i.i.i.i.i348, label %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i.i.i349, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.bft = getelementptr inbounds nuw i8, ptr %i.bfr, i64 16
  store ptr %i.bfs, ptr %i.bft, align 8, !tbaa !189
  br label %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i.i.i349

_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i.i.i349: ; preds = %bb.dw, %bb.dv
  store ptr %i.bet, ptr %i.bfk, align 8, !tbaa !189
  store ptr %i.bfj, ptr %i.bet, align 8, !tbaa !164
  br label %_ZN4llvm9MemoryPhi11addIncomingEPNS_12MemoryAccessEPNS_10BasicBlockE.exit352

_ZN4llvm9MemoryPhi11addIncomingEPNS_12MemoryAccessEPNS_10BasicBlockE.exit352: ; preds = %_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i.i346, %bb.du, %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i.i.i349
  %i.bfu = load i32, ptr %i.aeu, align 4
  %i.bfv = and i32 %i.bfu, 268435455
  %i.bfw = add nsw i32 %i.bfv, -1
  %i.bfx = load ptr, ptr %i.awu, align 8, !tbaa !164
  %i.bfy = load i32, ptr %i.awt, align 4, !tbaa !184 ; 2 uses
  %i.bfz = zext i32 %i.bfy to i64
  %i.bga = getelementptr inbounds nuw [32 x i8], ptr %i.bfx, i64 %i.bfz
  %i.bgb = zext i32 %i.bfw to i64
  %i.bgc = getelementptr inbounds nuw [8 x i8], ptr %i.bga, i64 %i.bgb
  store ptr %i.axe, ptr %i.bgc, align 8, !tbaa !43
  %i.bgd = add nuw nsw i32 %.02051108, 1          ; 2 uses
  %exitcond1273.not = icmp eq i32 %i.bgd, %.pre1295
  br i1 %exitcond1273.not, label %._crit_edge1110, label %bb.do, !llvm.loop !825

bb.dx:                                            ; preds = %.lr.ph1121, %._crit_edge1117
  %.02041119 = phi ptr [ %i.awv, %.lr.ph1121 ], [ %i.bki, %._crit_edge1117 ] ; 2 uses
  %i.bge = load ptr, ptr %.02041119, align 8, !tbaa !43 ; 6 uses
  %i.bgf = load i32, ptr %14, align 8, !noalias !941 ; 2 uses
  %i.bgg = and i32 %i.bgf, 1
  %.not.i.i.i.i755 = icmp eq i32 %i.bgg, 0        ; 3 uses
  %i.bgh = load ptr, ptr %i.yq, align 8, !noalias !941
  %i.bgi = load ptr, ptr %i.yr, align 8, !noalias !941
  %i.bgj = load i32, ptr %i.ys, align 8, !noalias !941
  %.sink2.i.i.i.i756 = select i1 %.not.i.i.i.i755, ptr %i.bgh, ptr %i.yq ; 3 uses
  %.sink1.i.i.i.i757 = select i1 %.not.i.i.i.i755, ptr %i.bgi, ptr %i.m ; 3 uses
  %.sink.i.i.i.i758 = select i1 %.not.i.i.i.i755, i32 %i.bgj, i32 4 ; 4 uses
  %i.bgk = icmp eq i32 %.sink.i.i.i.i758, 0
  br i1 %i.bgk, label %.loopexit.i759, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.bgl = add i32 %.sink.i.i.i.i758, -1          ; 2 uses
  %i.bgm = ptrtoint ptr %i.bge to i64
  %i.bgn = mul i64 %i.bgm, -4658895280553007687   ; 2 uses
  %i.bgo = lshr i64 %i.bgn, 31
  %i.bgp = xor i64 %i.bgo, %i.bgn
  %i.bgq = shl i64 %i.bgp, 32
  %i.bgr = or disjoint i64 %i.bgq, %i.axa
  %i.bgs = mul i64 %i.bgr, -4658895280553007687   ; 2 uses
  %i.bgt = lshr i64 %i.bgs, 31
  %i.bgu = xor i64 %i.bgt, %i.bgs
  %i.bgv = trunc i64 %i.bgu to i32
  %i.bgw = and i32 %i.bgl, %i.bgv                 ; 3 uses
  %i.bgx = zext i32 %i.bgw to i64                 ; 2 uses
  %i.bgy = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i.i756, i64 %i.bgx ; 2 uses
  %i.bgz = lshr i64 %i.bgx, 5
  %i.bha = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i757, i64 %i.bgz
  %i.bhb = load i32, ptr %i.bha, align 4, !tbaa !40
  %i.bhc = and i32 %i.bgw, 31
  %i.bhd = lshr i32 %i.bhb, %i.bhc
  %i.bhe = trunc i32 %i.bhd to i1
  br i1 %i.bhe, label %.lr.ph.i.i774, label %.loopexit.i759, !prof !41

.lr.ph.i.i774:                                    ; preds = %bb.dy, %bb.dz
  %i.bhf = phi ptr [ %i.bhp, %bb.dz ], [ %i.bgy, %bb.dy ] ; 3 uses
  %.024.i.i775 = phi i32 [ %i.bhn, %bb.dz ], [ %i.bgw, %bb.dy ]
  %i.bhg = load ptr, ptr %i.bhf, align 8, !tbaa !302
  %i.bhh = icmp eq ptr %i.bge, %i.bhg
  %i.bhi = getelementptr inbounds nuw i8, ptr %i.bhf, i64 8
  %i.bhj = load ptr, ptr %i.bhi, align 8
  %i.bhk = icmp eq ptr %i.adm, %i.bhj
  %i.bhl = select i1 %i.bhh, i1 %i.bhk, i1 false
  br i1 %i.bhl, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit776, label %bb.dz, !prof !44

bb.dz:                                            ; preds = %.lr.ph.i.i774
  %i.bhm = add nuw i32 %.024.i.i775, 1
  %i.bhn = and i32 %i.bhm, %i.bgl                 ; 3 uses
  %i.bho = zext i32 %i.bhn to i64                 ; 2 uses
  %i.bhp = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i.i756, i64 %i.bho ; 2 uses
  %i.bhq = lshr i64 %i.bho, 5
  %i.bhr = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i757, i64 %i.bhq
  %i.bhs = load i32, ptr %i.bhr, align 4, !tbaa !40
  %i.bht = and i32 %i.bhn, 31
  %i.bhu = lshr i32 %i.bhs, %i.bht
  %i.bhv = trunc i32 %i.bhu to i1
  br i1 %i.bhv, label %.lr.ph.i.i774, label %.loopexit.i759, !prof !45, !llvm.loop !16

.loopexit.i759:                                   ; preds = %bb.dz, %bb.dy, %bb.dx
  %.lcssa28.sink.i.ph.i760 = phi ptr [ %i.bgy, %bb.dy ], [ null, %bb.dx ], [ %i.bhp, %bb.dz ]
  %i.bhw = shl i32 %i.bgf, 1
  %i.bhx = and i32 %i.bhw, -4
  %i.bhy = add i32 %i.bhx, 4
  %i.bhz = mul i32 %.sink.i.i.i.i758, 3
  %.not.i.i761 = icmp ult i32 %i.bhy, %i.bhz
  br i1 %.not.i.i761, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit776.thread, label %bb.ea, !prof !44

bb.ea:                                            ; preds = %.loopexit.i759
  %i.bia = shl i32 %.sink.i.i.i.i758, 1
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %14, i32 noundef %i.bia)
  %i.bib = load i32, ptr %14, align 8, !noalias !942
  %i.bic = and i32 %i.bib, 1
  %.not.i.i.i832 = icmp eq i32 %i.bic, 0          ; 3 uses
  %i.bid = load ptr, ptr %i.yq, align 8, !noalias !942
  %i.bie = load ptr, ptr %i.yr, align 8, !noalias !942
  %i.bif = load i32, ptr %i.ys, align 8, !noalias !942
  %.sink2.i.i.i833 = select i1 %.not.i.i.i832, ptr %i.bid, ptr %i.yq ; 5 uses
  %.sink1.i.i.i834 = select i1 %.not.i.i.i832, ptr %i.bie, ptr %i.m ; 5 uses
  %.sink.i.i.i835 = select i1 %.not.i.i.i832, i32 %i.bif, i32 4 ; 2 uses
  %i.big = icmp ne i32 %.sink.i.i.i835, 0
  call void @llvm.assume(i1 %i.big)
  %i.bih = add i32 %.sink.i.i.i835, -1            ; 2 uses
  %i.bii = ptrtoint ptr %i.bge to i64
  %i.bij = mul i64 %i.bii, -4658895280553007687   ; 2 uses
  %i.bik = lshr i64 %i.bij, 31
  %i.bil = xor i64 %i.bik, %i.bij
  %i.bim = shl i64 %i.bil, 32
  %i.bin = or disjoint i64 %i.bim, %i.axa
  %i.bio = mul i64 %i.bin, -4658895280553007687   ; 2 uses
  %i.bip = lshr i64 %i.bio, 31
  %i.biq = xor i64 %i.bip, %i.bio
  %i.bir = trunc i64 %i.biq to i32
  %i.bis = and i32 %i.bih, %i.bir                 ; 3 uses
  %i.bit = zext i32 %i.bis to i64                 ; 2 uses
  %i.biu = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i833, i64 %i.bit ; 2 uses
  %i.biv = lshr i64 %i.bit, 5
  %i.biw = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i834, i64 %i.biv
  %i.bix = load i32, ptr %i.biw, align 4, !tbaa !40
  %i.biy = and i32 %i.bis, 31
  %i.biz = lshr i32 %i.bix, %i.biy
  %i.bja = trunc i32 %i.biz to i1
  br i1 %i.bja, label %.lr.ph.i838, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit776.thread, !prof !41

.lr.ph.i838:                                      ; preds = %bb.ea, %bb.eb
  %i.bjb = phi ptr [ %i.bjl, %bb.eb ], [ %i.biu, %bb.ea ] ; 3 uses
  %.024.i839 = phi i32 [ %i.bjj, %bb.eb ], [ %i.bis, %bb.ea ]
  %i.bjc = load ptr, ptr %i.bjb, align 8, !tbaa !302
  %i.bjd = icmp eq ptr %i.bge, %i.bjc
  %i.bje = getelementptr inbounds nuw i8, ptr %i.bjb, i64 8
  %i.bjf = load ptr, ptr %i.bje, align 8
  %i.bjg = icmp eq ptr %i.adm, %i.bjf
  %i.bjh = select i1 %i.bjd, i1 %i.bjg, i1 false
  br i1 %i.bjh, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit776.thread, label %bb.eb, !prof !44

bb.eb:                                            ; preds = %.lr.ph.i838
  %i.bji = add nuw i32 %.024.i839, 1
  %i.bjj = and i32 %i.bji, %i.bih                 ; 3 uses
  %i.bjk = zext i32 %i.bjj to i64                 ; 2 uses
  %i.bjl = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i833, i64 %i.bjk ; 2 uses
  %i.bjm = lshr i64 %i.bjk, 5
  %i.bjn = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i834, i64 %i.bjm
  %i.bjo = load i32, ptr %i.bjn, align 4, !tbaa !40
  %i.bjp = and i32 %i.bjj, 31
  %i.bjq = lshr i32 %i.bjo, %i.bjp
  %i.bjr = trunc i32 %i.bjq to i1
  br i1 %i.bjr, label %.lr.ph.i838, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit776.thread, !prof !45, !llvm.loop !16

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit776.thread: ; preds = %.lr.ph.i838, %bb.eb, %.loopexit.i759, %bb.ea
  %.pre-phi1309 = phi ptr [ %.sink2.i.i.i.i756, %.loopexit.i759 ], [ %.sink2.i.i.i833, %bb.ea ], [ %.sink2.i.i.i833, %bb.eb ], [ %.sink2.i.i.i833, %.lr.ph.i838 ]
  %.pre-phi = phi ptr [ %.sink1.i.i.i.i757, %.loopexit.i759 ], [ %.sink1.i.i.i834, %bb.ea ], [ %.sink1.i.i.i834, %bb.eb ], [ %.sink1.i.i.i834, %.lr.ph.i838 ]
  %i.bjs = phi ptr [ %.lcssa28.sink.i.ph.i760, %.loopexit.i759 ], [ %i.biu, %bb.ea ], [ %i.bjb, %.lr.ph.i838 ], [ %i.bjl, %bb.eb ] ; 4 uses
  %i.bjt = ptrtoint ptr %i.bjs to i64
  %i.bju = ptrtoint ptr %.pre-phi1309 to i64
  %i.bjv = sub i64 %i.bjt, %i.bju
  %i.bjw = sdiv exact i64 %i.bjv, 24              ; 2 uses
  %i.bjx = trunc i64 %i.bjw to i32
  %i.bjy = and i32 %i.bjx, 31
  %i.bjz = shl nuw i32 1, %i.bjy
  %i.bka = lshr i64 %i.bjw, 5
  %i.bkb = getelementptr inbounds nuw [4 x i8], ptr %.pre-phi, i64 %i.bka ; 2 uses
  %i.bkc = load i32, ptr %i.bkb, align 4, !tbaa !40
  %i.bkd = or i32 %i.bjz, %i.bkc
  store i32 %i.bkd, ptr %i.bkb, align 4, !tbaa !40
  %i.bke = load i32, ptr %14, align 8             ; 2 uses
  %50 = and i32 %i.bke, -2
  %i.bkf = add i32 %50, 2
  %51 = and i32 %i.bke, 1
  %52 = or disjoint i32 %i.bkf, %51
  store i32 %52, ptr %14, align 8
  store ptr %i.bge, ptr %i.bjs, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bjs, i64 8
  store ptr %i.adm, ptr %.sroa.6.0..sroa_idx, align 8
  %i.bkg = getelementptr inbounds nuw i8, ptr %i.bjs, i64 16
  store i32 0, ptr %i.bkg, align 8, !tbaa !40
  br label %._crit_edge1117

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit776: ; preds = %.lr.ph.i.i774
  %.phi.trans.insert1297 = getelementptr inbounds nuw i8, ptr %i.bhf, i64 16
  %.pre1298 = load i32, ptr %.phi.trans.insert1297, align 4, !tbaa !40 ; 2 uses
  %i.bkh = icmp sgt i32 %.pre1298, 0
  br i1 %i.bkh, label %.lr.ph1116.preheader, label %._crit_edge1117

.lr.ph1116.preheader:                             ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit776
  %.pre1299 = load i32, ptr %i.axb, align 4, !tbaa !184
  br label %.lr.ph1116

._crit_edge1117:                                  ; preds = %_ZN4llvm9MemoryPhi11addIncomingEPNS_12MemoryAccessEPNS_10BasicBlockE.exit362, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit776.thread, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit776
  %i.bki = getelementptr inbounds nuw i8, ptr %.02041119, i64 8 ; 2 uses
  %.not236 = icmp eq ptr %i.bki, %i.awz
  br i1 %.not236, label %.loopexit969, label %bb.dx

.lr.ph1116:                                       ; preds = %.lr.ph1116.preheader, %_ZN4llvm9MemoryPhi11addIncomingEPNS_12MemoryAccessEPNS_10BasicBlockE.exit362
  %i.bkj = phi i32 [ %i.blm, %_ZN4llvm9MemoryPhi11addIncomingEPNS_12MemoryAccessEPNS_10BasicBlockE.exit362 ], [ %.pre1299, %.lr.ph1116.preheader ] ; 3 uses
  %.02031115 = phi i32 [ %i.blr, %_ZN4llvm9MemoryPhi11addIncomingEPNS_12MemoryAccessEPNS_10BasicBlockE.exit362 ], [ 0, %.lr.ph1116.preheader ]
  %i.bkk = load i32, ptr %i.aeu, align 4          ; 2 uses
  %i.bkl = and i32 %i.bkk, 268435455
  %i.bkm = icmp eq i32 %i.bkl, %i.bkj
  br i1 %i.bkm, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %.lr.ph1116
  %i.bkn = lshr i32 %i.bkj, 1
  %i.bko = add nuw nsw i32 %i.bkn, %i.bkj
  %.sroa.speculated.i.i360 = call i32 @llvm.umax.i32(i32 %i.bko, i32 2) ; 2 uses
  store i32 %.sroa.speculated.i.i360, ptr %i.axb, align 4, !tbaa !184
  call void @_ZN4llvm4User15growHungoffUsesEjb(ptr noundef nonnull align 8 dereferenceable(80) %i.aet, i32 noundef %.sroa.speculated.i.i360, i1 noundef zeroext true) #17
  %.pre.i361 = load i32, ptr %i.aeu, align 4
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %.lr.ph1116
  %i.bkp = phi i32 [ %.pre.i361, %bb.ec ], [ %i.bkk, %.lr.ph1116 ] ; 2 uses
  %i.bkq = add i32 %i.bkp, 1
  %i.bkr = and i32 %i.bkq, 268435455              ; 2 uses
  %i.bks = and i32 %i.bkp, -268435456
  %i.bkt = or disjoint i32 %i.bkr, %i.bks
  store i32 %i.bkt, ptr %i.aeu, align 4
  %i.bku = add nsw i32 %i.bkr, -1
  %i.bkv = load ptr, ptr %i.axc, align 8, !tbaa !164
  %i.bkw = zext i32 %i.bku to i64
  %i.bkx = getelementptr inbounds nuw [32 x i8], ptr %i.bkv, i64 %i.bkw ; 5 uses
  %i.bky = getelementptr inbounds nuw i8, ptr %i.bkx, i64 16 ; 3 uses
  %i.bkz = load ptr, ptr %i.bky, align 8, !tbaa !189 ; 3 uses
  %.not.i.i.i.i.i.i354 = icmp eq ptr %i.bkz, null
  br i1 %.not.i.i.i.i.i.i354, label %_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i.i356, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.bla = getelementptr inbounds nuw i8, ptr %i.bkx, i64 8 ; 2 uses
  %i.blb = load ptr, ptr %i.bla, align 8, !tbaa !188 ; 3 uses
  store ptr %i.blb, ptr %i.bkz, align 8, !tbaa !164
  %.not2.i.i.i.i.i.i355 = icmp eq ptr %i.blb, null
  br i1 %.not2.i.i.i.i.i.i355, label %bb.eg, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.blc = getelementptr inbounds nuw i8, ptr %i.blb, i64 16
  store ptr %i.bkz, ptr %i.blc, align 8, !tbaa !189
  store ptr null, ptr %i.bla, align 8, !tbaa !188
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %bb.ee
  store ptr null, ptr %i.bky, align 8, !tbaa !189
  br label %_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i.i356

_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i.i356: ; preds = %bb.eg, %bb.ed
  store ptr %i.aur, ptr %i.bkx, align 8, !tbaa !185
  br i1 %.not.i.i.i.i.i357, label %_ZN4llvm9MemoryPhi11addIncomingEPNS_12MemoryAccessEPNS_10BasicBlockE.exit362, label %bb.eh

bb.eh:                                            ; preds = %_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i.i356
  %i.bld = load i8, ptr %i.aur, align 8, !tbaa !190
  %i.ble = icmp ugt i8 %i.bld, 10
  br i1 %i.ble, label %bb.ei, label %_ZN4llvm9MemoryPhi11addIncomingEPNS_12MemoryAccessEPNS_10BasicBlockE.exit362

bb.ei:                                            ; preds = %bb.eh
  %i.blf = load ptr, ptr %i.axd, align 8, !tbaa !164 ; 3 uses
  %i.blg = getelementptr inbounds nuw i8, ptr %i.bkx, i64 8 ; 2 uses
  store ptr %i.blf, ptr %i.blg, align 8, !tbaa !188
  %.not.i.i.i.i.i.i.i358 = icmp eq ptr %i.blf, null
  br i1 %.not.i.i.i.i.i.i.i358, label %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i.i.i359, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.blh = getelementptr inbounds nuw i8, ptr %i.blf, i64 16
  store ptr %i.blg, ptr %i.blh, align 8, !tbaa !189
  br label %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i.i.i359

_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i.i.i359: ; preds = %bb.ej, %bb.ei
  store ptr %i.axd, ptr %i.bky, align 8, !tbaa !189
  store ptr %i.bkx, ptr %i.axd, align 8, !tbaa !164
  br label %_ZN4llvm9MemoryPhi11addIncomingEPNS_12MemoryAccessEPNS_10BasicBlockE.exit362

_ZN4llvm9MemoryPhi11addIncomingEPNS_12MemoryAccessEPNS_10BasicBlockE.exit362: ; preds = %_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i.i356, %bb.eh, %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i.i.i359
  %i.bli = load i32, ptr %i.aeu, align 4
  %i.blj = and i32 %i.bli, 268435455
  %i.blk = add nsw i32 %i.blj, -1
  %i.bll = load ptr, ptr %i.axc, align 8, !tbaa !164
  %i.blm = load i32, ptr %i.axb, align 4, !tbaa !184 ; 2 uses
  %i.bln = zext i32 %i.blm to i64
  %i.blo = getelementptr inbounds nuw [32 x i8], ptr %i.bll, i64 %i.bln
  %i.blp = zext i32 %i.blk to i64
  %i.blq = getelementptr inbounds nuw [8 x i8], ptr %i.blo, i64 %i.blp
  store ptr %i.bge, ptr %i.blq, align 8, !tbaa !43
  %i.blr = add nuw nsw i32 %.02031115, 1          ; 2 uses
  %exitcond1274.not = icmp eq i32 %i.blr, %.pre1298
  br i1 %exitcond1274.not, label %._crit_edge1117, label %.lr.ph1116, !llvm.loop !834

.loopexit969:                                     ; preds = %._crit_edge1097, %._crit_edge1117, %bb.ch, %._crit_edge1114
  %i.bls = getelementptr i8, ptr %.sroa.0892.01123, i64 88
  %.val250 = load ptr, ptr %i.bls, align 8, !tbaa !148 ; 3 uses
  %i.blt = getelementptr i8, ptr %.sroa.0892.01123, i64 96
  %.val251 = load i32, ptr %i.blt, align 8, !tbaa !147 ; 2 uses
  %i.blu = load ptr, ptr %.val250, align 8, !tbaa !43 ; 2 uses
  %i.blv = zext i32 %.val251 to i64
  %.idx.i363 = shl nuw nsw i64 %i.blv, 3
  %i.blw = getelementptr inbounds nuw i8, ptr %.val250, i64 %.idx.i363
  %.not1.i = icmp eq i32 %.val251, 0
  br i1 %.not1.i, label %"_ZZN4llvm16MemorySSAUpdater18applyInsertUpdatesENS_8ArrayRefINS_3cfg6UpdateIPNS_10BasicBlockEEEEERNS_13DominatorTreeEPKNS_9GraphDiffIS5_Lb0EEEENK3$_1clERKNS_14SmallSetVectorIS5_Lj2EEE.exit", label %.lr.ph.i364

.lr.ph.i364:                                      ; preds = %.loopexit969, %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE26findNearestCommonDominatorEPS1_S3_.exit.i
  %.03.i = phi ptr [ %.1.i.i, %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE26findNearestCommonDominatorEPS1_S3_.exit.i ], [ %i.blu, %.loopexit969 ] ; 3 uses
  %.0122.i = phi ptr [ %i.bng, %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE26findNearestCommonDominatorEPS1_S3_.exit.i ], [ %.val250, %.loopexit969 ] ; 2 uses
  %i.blx = load ptr, ptr %.0122.i, align 8, !tbaa !43 ; 2 uses
  %i.bly = getelementptr inbounds nuw i8, ptr %.03.i, i64 72
  %i.blz = load ptr, ptr %i.bly, align 8, !tbaa !943
  %i.bma = getelementptr inbounds nuw i8, ptr %i.blz, i64 88
  %i.bmb = load ptr, ptr %i.bma, align 8, !tbaa !223
  %i.bmc = getelementptr inbounds i8, ptr %i.bmb, i64 -24 ; 3 uses
  %i.bmd = icmp ne ptr %.03.i, %i.bmc
  %i.bme = icmp ne ptr %i.blx, %i.bmc
  %or.cond.not.i.i = and i1 %i.bmd, %i.bme
  br i1 %or.cond.not.i.i, label %bb.ek, label %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE26findNearestCommonDominatorEPS1_S3_.exit.i

bb.ek:                                            ; preds = %.lr.ph.i364
  %i.bmf = getelementptr inbounds nuw i8, ptr %.03.i, i64 40
  %i.bmg = load i32, ptr %i.bmf, align 8, !tbaa !146
  %i.bmh = add i32 %i.bmg, 1                      ; 2 uses
  %i.bmi = load i32, ptr %i.yl, align 8, !tbaa !147 ; 2 uses
  %i.bmj = icmp ugt i32 %i.bmi, %i.bmh
  br i1 %i.bmj, label %bb.el, label %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE7getNodeEPKS1_.exit.i.i

bb.el:                                            ; preds = %bb.ek
  %i.bmk = zext i32 %i.bmh to i64
  %i.bml = load ptr, ptr %i.ym, align 8, !tbaa !148
  %i.bmm = getelementptr inbounds nuw [8 x i8], ptr %i.bml, i64 %i.bmk
  %i.bmn = load ptr, ptr %i.bmm, align 8, !tbaa !150
  br label %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE7getNodeEPKS1_.exit.i.i

_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE7getNodeEPKS1_.exit.i.i: ; preds = %bb.el, %bb.ek
  %i.bmo = phi ptr [ %i.bmn, %bb.el ], [ null, %bb.ek ] ; 3 uses
  %i.bmp = getelementptr inbounds nuw i8, ptr %i.blx, i64 40
  %i.bmq = load i32, ptr %i.bmp, align 8, !tbaa !146
  %i.bmr = add i32 %i.bmq, 1                      ; 2 uses
  %i.bms = icmp ugt i32 %i.bmi, %i.bmr
  br i1 %i.bms, label %bb.em, label %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE7getNodeEPKS1_.exit14.i.i

bb.em:                                            ; preds = %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE7getNodeEPKS1_.exit.i.i
  %i.bmt = zext i32 %i.bmr to i64
  %i.bmu = load ptr, ptr %i.ym, align 8, !tbaa !148
  %i.bmv = getelementptr inbounds nuw [8 x i8], ptr %i.bmu, i64 %i.bmt
  %i.bmw = load ptr, ptr %i.bmv, align 8, !tbaa !150
  br label %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE7getNodeEPKS1_.exit14.i.i

_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE7getNodeEPKS1_.exit14.i.i: ; preds = %bb.em, %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE7getNodeEPKS1_.exit.i.i
  %i.bmx = phi ptr [ %i.bmw, %bb.em ], [ null, %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE7getNodeEPKS1_.exit.i.i ] ; 3 uses
  %.not26.i.i = icmp eq ptr %i.bmo, %i.bmx
  br i1 %.not26.i.i, label %._crit_edge.i.i369, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE7getNodeEPKS1_.exit14.i.i
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.bmx, i64 16
  %.pre.i.i366 = load i32, ptr %.phi.trans.insert.i.i, align 8, !tbaa !241
  br label %.lr.ph.i.i367

.lr.ph.i.i367:                                    ; preds = %.lr.ph.i.i367, %.lr.ph.preheader.i.i
  %i.bmy = phi i32 [ %i.bne, %.lr.ph.i.i367 ], [ %.pre.i.i366, %.lr.ph.preheader.i.i ] ; 2 uses
  %.028.i.i = phi ptr [ %spec.select23.i.i, %.lr.ph.i.i367 ], [ %i.bmx, %.lr.ph.preheader.i.i ] ; 2 uses
  %.02127.i.i = phi ptr [ %i.bnd, %.lr.ph.i.i367 ], [ %i.bmo, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.bmz = getelementptr inbounds nuw i8, ptr %.02127.i.i, i64 16
  %i.bna = load i32, ptr %i.bmz, align 8, !tbaa !241 ; 2 uses
  %i.bnb = icmp ult i32 %i.bna, %i.bmy            ; 2 uses
  %spec.select.i.i = select i1 %i.bnb, ptr %.028.i.i, ptr %.02127.i.i
  %spec.select23.i.i = select i1 %i.bnb, ptr %.02127.i.i, ptr %.028.i.i ; 2 uses
  %i.bnc = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 8
  %i.bnd = load ptr, ptr %i.bnc, align 8, !tbaa !303 ; 3 uses
  %.not.i.i368 = icmp eq ptr %i.bnd, %spec.select23.i.i
  %i.bne = call i32 @llvm.umin.i32(i32 %i.bna, i32 %i.bmy)
  br i1 %.not.i.i368, label %._crit_edge.i.i369, label %.lr.ph.i.i367, !llvm.loop !835

._crit_edge.i.i369:                               ; preds = %.lr.ph.i.i367, %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE7getNodeEPKS1_.exit14.i.i
  %.021.lcssa.i.i = phi ptr [ %i.bmo, %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE7getNodeEPKS1_.exit14.i.i ], [ %i.bnd, %.lr.ph.i.i367 ]
  %i.bnf = load ptr, ptr %.021.lcssa.i.i, align 8, !tbaa !248
  br label %_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE26findNearestCommonDominatorEPS1_S3_.exit.i

_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE26findNearestCommonDominatorEPS1_S3_.exit.i: ; preds = %._crit_edge.i.i369, %.lr.ph.i364
end_hunk_3
begin_hunk_4_@_ZNSt8_Rb_treeIN4llvm11AssertingVHINS0_9MemoryPhiEEES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE5eraseERKS3_:bb.a
  %.1.in.i30.i = getelementptr inbounds nuw i8, ptr %.012.i26.i, i64 %.1.in.v.i29.i
  %.1.i31.i = load ptr, ptr %.1.in.i30.i, align 8, !tbaa !201 ; 2 uses
  %.not.i32.i = icmp eq ptr %.1.i31.i, null
  br i1 %.not.i32.i, label %_ZNSt8_Rb_treeIN4llvm11AssertingVHINS0_9MemoryPhiEEES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE11equal_rangeERKS3_.exit, label %.lr.ph.i25.i, !llvm.loop !1227

bb.e:                                             ; preds = %bb.c, %bb.b
  %.sink.i = phi i64 [ 24, %bb.b ], [ 16, %bb.c ]
  %.123.i = phi ptr [ %.02243.i, %bb.b ], [ %.044.i, %bb.c ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.044.i, i64 %.sink.i
  %.0.i = load ptr, ptr %i.r, align 8, !tbaa !201 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %_ZNSt8_Rb_treeIN4llvm11AssertingVHINS0_9MemoryPhiEEES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE11equal_rangeERKS3_.exit, label %bb.b, !llvm.loop !1228

_ZNSt8_Rb_treeIN4llvm11AssertingVHINS0_9MemoryPhiEEES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE11equal_rangeERKS3_.exit: ; preds = %bb.e, %.lr.ph.i25.i, %bb.a, %_ZNSt8_Rb_treeIN4llvm11AssertingVHINS0_9MemoryPhiEEES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS3_EPSt18_Rb_tree_node_baseRKS3_.exit.i
  %.sroa.037.0.i = phi ptr [ %.08.lcssa.i.i, %.lr.ph.i25.i ], [ %.08.lcssa.i.i, %_ZNSt8_Rb_treeIN4llvm11AssertingVHINS0_9MemoryPhiEEES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS3_EPSt18_Rb_tree_node_baseRKS3_.exit.i ], [ %i.b, %bb.a ], [ %.123.i, %bb.e ] ; 3 uses
  %.sroa.3.0.i = phi ptr [ %.19.i28.i, %.lr.ph.i25.i ], [ %.02243.i, %_ZNSt8_Rb_treeIN4llvm11AssertingVHINS0_9MemoryPhiEEES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS3_EPSt18_Rb_tree_node_baseRKS3_.exit.i ], [ %i.b, %bb.a ], [ %.123.i, %bb.e ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !197  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !224
  %i.w = icmp eq ptr %.sroa.037.0.i, %i.v
  %i.x = icmp eq ptr %.sroa.3.0.i, %i.b
  %or.cond = select i1 %i.w, i1 %i.x, i1 false
  br i1 %or.cond, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %_ZNSt8_Rb_treeIN4llvm11AssertingVHINS0_9MemoryPhiEEES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE11equal_rangeERKS3_.exit
  tail call void @_ZNSt8_Rb_treeIN4llvm11AssertingVHINS0_9MemoryPhiEEES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %.041.i)
  store ptr null, ptr %i.a, align 8, !tbaa !200
  store ptr %i.b, ptr %i.u, align 8, !tbaa !224
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.b, ptr %i.y, align 8, !tbaa !225
  store i64 0, ptr %i.s, align 8, !tbaa !197
  br label %_ZNSt8_Rb_treeIN4llvm11AssertingVHINS0_9MemoryPhiEEES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE12_M_erase_auxESt23_Rb_tree_const_iteratorIS3_ESB_.exit

.critedge.i:                                      ; preds = %_ZNSt8_Rb_treeIN4llvm11AssertingVHINS0_9MemoryPhiEEES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE11equal_rangeERKS3_.exit
  %.not8.i = icmp eq ptr %.sroa.037.0.i, %.sroa.3.0.i
  br i1 %.not8.i, label %_ZNSt8_Rb_treeIN4llvm11AssertingVHINS0_9MemoryPhiEEES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE12_M_erase_auxESt23_Rb_tree_const_iteratorIS3_ESB_.exit, label %.lr.ph.i2

.lr.ph.i2:                                        ; preds = %.critedge.i, %.lr.ph.i2
  %.sroa.06.09.i = phi ptr [ %i.z, %.lr.ph.i2 ], [ %.sroa.037.0.i, %.critedge.i ] ; 2 uses
  %i.z = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.06.09.i) #19 ; 2 uses
  %i.aa = tail call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef %.sroa.06.09.i, ptr noundef nonnull align 8 dereferenceable(32) %i.b) #17
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef 40) #20
  %i.ab = load i64, ptr %i.s, align 8, !tbaa !197
  %i.ac = add i64 %i.ab, -1                       ; 2 uses
  store i64 %i.ac, ptr %i.s, align 8, !tbaa !197
  %.not.i3 = icmp eq ptr %i.z, %.sroa.3.0.i
  br i1 %.not.i3, label %_ZNSt8_Rb_treeIN4llvm11AssertingVHINS0_9MemoryPhiEEES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE12_M_erase_auxESt23_Rb_tree_const_iteratorIS3_ESB_.exit, label %.lr.ph.i2, !llvm.loop !1229

_ZNSt8_Rb_treeIN4llvm11AssertingVHINS0_9MemoryPhiEEES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE12_M_erase_auxESt23_Rb_tree_const_iteratorIS3_ESB_.exit: ; preds = %.lr.ph.i2, %bb.f, %.critedge.i
  %i.ad = phi i64 [ %i.t, %.critedge.i ], [ 0, %bb.f ], [ %i.ac, %.lr.ph.i2 ]
  %i.ae = sub i64 %i.t, %i.ad
  ret i64 %i.ae
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIN4llvm11AssertingVHINS0_9MemoryPhiEEES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !305
  tail call void @_ZNSt8_Rb_treeIN4llvm11AssertingVHINS0_9MemoryPhiEEES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !306  ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 40) #20
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1230

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nounwind
declare noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #11

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPKNS_10BasicBlockELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !147
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #17
  %i.f = load ptr, ptr %0, align 8, !tbaa !148
  %i.g = load i32, ptr %i.a, align 8, !tbaa !147
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !147
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !147
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_9MemoryPhiEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load i32, ptr %0, align 8, !noalias !1235 ; 2 uses
  %i.c = and i32 %i.b, 1                          ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.c, 0               ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !noalias !1235 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !noalias !1235 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i32, ptr %i.h, align 8, !noalias !1235
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.sink2.i.i.i = select i1 %.not.i.i.i, ptr %i.e, ptr %i.d ; 2 uses
  %.sink1.i.i.i = select i1 %.not.i.i.i, ptr %i.g, ptr %i.j ; 2 uses
  %.sink.i.i.i = select i1 %.not.i.i.i, i32 %i.i, i32 4 ; 4 uses
  %i.k = icmp eq i32 %.sink.i.i.i, 0
  br i1 %i.k, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = add i32 %.sink.i.i.i, -1                 ; 2 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !209    ; 2 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = mul i64 %i.n, -4658895280553007687       ; 2 uses
  %i.p = lshr i64 %i.o, 31
  %i.q = xor i64 %i.p, %i.o
  %i.r = trunc i64 %i.q to i32
  %i.s = and i32 %i.l, %i.r                       ; 3 uses
  %i.t = zext i32 %i.s to i64                     ; 2 uses
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i.i, i64 %i.t ; 2 uses
  %i.v = lshr i64 %i.t, 5
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !40
  %i.y = and i32 %i.s, 31
  %i.z = lshr i32 %i.x, %i.y
  %i.aa = trunc i32 %i.z to i1
  br i1 %i.aa, label %.lr.ph.i, label %.loopexit, !prof !41

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.ab = phi ptr [ %i.ah, %bb.c ], [ %i.u, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.af, %bb.c ], [ %i.s, %bb.b ]
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !209
  %i.ad = icmp eq ptr %i.m, %i.ac
  br i1 %i.ad, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_9MemoryPhiEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E15LookupBucketForIS3_EEbRKT_RPSA_.exit, label %bb.c, !prof !44

bb.c:                                             ; preds = %.lr.ph.i
  %i.ae = add nuw i32 %.024.i, 1
  %i.af = and i32 %i.ae, %i.l                     ; 3 uses
  %i.ag = zext i32 %i.af to i64                   ; 2 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i.i, i64 %i.ag ; 2 uses
  %i.ai = lshr i64 %i.ag, 5
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !40
  %i.al = and i32 %i.af, 31
  %i.am = lshr i32 %i.ak, %i.al
  %i.an = trunc i32 %i.am to i1
  br i1 %i.an, label %.lr.ph.i, label %.loopexit, !prof !45, !llvm.loop !21

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.u, %bb.b ], [ null, %bb.a ], [ %i.ah, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !311
  %i.ao = shl i32 %i.b, 1
  %i.ap = and i32 %i.ao, -4
  %i.aq = add i32 %i.ap, 4
  %i.ar = mul i32 %.sink.i.i.i, 3
  %.not.i = icmp ult i32 %i.aq, %i.ar
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_9MemoryPhiEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit, label %bb.d, !prof !44

bb.d:                                             ; preds = %.loopexit
  %i.as = shl i32 %.sink.i.i.i, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_9MemoryPhiEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.as)
  %i.at = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_9MemoryPhiEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E15LookupBucketForIS3_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load i32, ptr %0, align 8
  %.pre5.i = load ptr, ptr %i.a, align 8, !tbaa !311
  %.pre6.i = and i32 %.pre.i, 1
  %.pre = load ptr, ptr %i.f, align 8
  %.pre16 = load ptr, ptr %i.d, align 8
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_9MemoryPhiEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_9MemoryPhiEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit: ; preds = %.loopexit, %bb.d
  %i.au = phi ptr [ %.pre16, %bb.d ], [ %i.e, %.loopexit ]
  %i.av = phi ptr [ %.pre, %bb.d ], [ %i.g, %.loopexit ]
  %.pre-phi.i = phi i32 [ %.pre6.i, %bb.d ], [ %i.c, %.loopexit ]
  %i.aw = phi ptr [ %.pre5.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %.not.i.i.i.i = icmp eq i32 %.pre-phi.i, 0      ; 2 uses
  %i.ax = select i1 %.not.i.i.i.i, ptr %i.av, ptr %i.j
  %i.ay = select i1 %.not.i.i.i.i, ptr %i.au, ptr %i.d
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = ashr exact i64 %i.bb, 4                 ; 2 uses
  %i.bd = trunc i64 %i.bc to i32
  %i.be = and i32 %i.bd, 31
  %i.bf = shl nuw i32 1, %i.be
  %i.bg = lshr i64 %i.bc, 5
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.bg ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !40
  %i.bj = or i32 %i.bf, %i.bi
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !40
  %i.bk = load i32, ptr %0, align 8               ; 2 uses
  %2 = and i32 %i.bk, -2
  %i.bl = add i32 %2, 2
  %3 = and i32 %i.bk, 1
  %4 = or disjoint i32 %i.bl, %3
  store i32 %4, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bm = load ptr, ptr %1, align 8, !tbaa !209
  store ptr %i.bm, ptr %i.aw, align 8, !tbaa !209
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr null, ptr %i.bn, align 8, !tbaa !151
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_9MemoryPhiEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E15LookupBucketForIS3_EEbRKT_RPSA_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_9MemoryPhiEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E15LookupBucketForIS3_EEbRKT_RPSA_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_9MemoryPhiEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit
  %.sroa.0.0 = phi ptr [ %i.aw, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_9MemoryPhiEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit ], [ %i.ab, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_9MemoryPhiEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_9MemoryPhiEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E15LookupBucketForIS3_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !noalias !1240
  %i.b = and i32 %i.a, 1
  %.not.i.i = icmp eq i32 %i.b, 0                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !noalias !1240
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !noalias !1240
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i32, ptr %i.g, align 8, !noalias !1240
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sink2.i.i = select i1 %.not.i.i, ptr %i.d, ptr %i.c ; 2 uses
  %.sink1.i.i = select i1 %.not.i.i, ptr %i.f, ptr %i.i ; 2 uses
  %.sink.i.i = select i1 %.not.i.i, i32 %i.h, i32 4 ; 2 uses
  %i.j = icmp eq i32 %.sink.i.i, 0
  br i1 %i.j, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = add i32 %.sink.i.i, -1                   ; 2 uses
  %i.l = load ptr, ptr %1, align 8, !tbaa !209    ; 2 uses
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = mul i64 %i.m, -4658895280553007687       ; 2 uses
  %i.o = lshr i64 %i.n, 31
  %i.p = xor i64 %i.o, %i.n
  %i.q = trunc i64 %i.p to i32
  %i.r = and i32 %i.k, %i.q                       ; 3 uses
  %i.s = zext i32 %i.r to i64                     ; 2 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i, i64 %i.s ; 2 uses
  %i.u = lshr i64 %i.s, 5
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !40
  %i.x = and i32 %i.r, 31
  %i.y = lshr i32 %i.w, %i.x
  %i.z = trunc i32 %i.y to i1
  br i1 %i.z, label %.lr.ph, label %.thread, !prof !41

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.aa = phi ptr [ %i.ag, %bb.c ], [ %i.t, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.ae, %bb.c ], [ %i.r, %bb.b ]
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !209
  %i.ac = icmp eq ptr %i.l, %i.ab                 ; 3 uses
  br i1 %i.ac, label %.thread, label %bb.c, !prof !44

bb.c:                                             ; preds = %.lr.ph
  %i.ad = add nuw i32 %.024, 1
  %i.ae = and i32 %i.ad, %i.k                     ; 3 uses
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i, i64 %i.af ; 2 uses
  %i.ah = lshr i64 %i.af, 5
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !40
  %i.ak = and i32 %i.ae, 31
  %i.al = lshr i32 %i.aj, %i.ak
  %i.am = trunc i32 %i.al to i1
  br i1 %i.am, label %.lr.ph, label %.thread, !prof !45, !llvm.loop !21

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.t, %bb.b ], [ null, %bb.a ], [ %i.ag, %bb.c ], [ %i.aa, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ac, %bb.c ], [ %i.ac, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !311
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_9MemoryPhiEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallDenseMap.160", align 8 ; 16 uses
  %i.a = icmp ult i32 %1, 5                       ; 2 uses
  br i1 %i.a, label %_ZN4llvm13SmallDenseMapIPNS_9MemoryPhiEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17roundUpNumBucketsEj.exit.thread, label %_ZN4llvm13SmallDenseMapIPNS_9MemoryPhiEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17roundUpNumBucketsEj.exit

_ZN4llvm13SmallDenseMapIPNS_9MemoryPhiEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17roundUpNumBucketsEj.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 72
  br label %_ZN4llvm13SmallDenseMapIPNS_9MemoryPhiEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEC2EjNS_12DenseMapBaseISA_S2_S4_S6_S9_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIPNS_9MemoryPhiEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17roundUpNumBucketsEj.exit: ; preds = %bb.a
  %i.c = add i32 %1, -1
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = lshr i64 %i.d, 1
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 2
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 4
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 8
  %i.l = or i64 %i.k, %i.j                        ; 2 uses
  %i.m = lshr i64 %i.l, 16
  %i.n = or i64 %i.m, %i.l
  %i.o = trunc nuw i64 %i.n to i32
  %i.p = add i32 %i.o, 1
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.p, i32 64) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.q = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.r = shl nuw nsw i64 %i.q, 4                  ; 2 uses
  %i.s = add nuw nsw i64 %i.q, 31
  %i.t = lshr i64 %i.s, 3
  %i.u = and i64 %i.t, 1073741820                 ; 2 uses
  %i.v = add nuw nsw i64 %i.u, %i.r
  %i.w = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.v, i64 noundef 8) #17 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !272
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.r ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.y, ptr %i.z, align 8, !tbaa !272
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %.sroa.speculated.i, ptr %i.aa, align 8, !tbaa !272
  br label %_ZN4llvm13SmallDenseMapIPNS_9MemoryPhiEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEC2EjNS_12DenseMapBaseISA_S2_S4_S6_S9_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIPNS_9MemoryPhiEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEC2EjNS_12DenseMapBaseISA_S2_S4_S6_S9_E16ExactBucketCountE.exit: ; preds = %_ZN4llvm13SmallDenseMapIPNS_9MemoryPhiEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17roundUpNumBucketsEj.exit.thread, %_ZN4llvm13SmallDenseMapIPNS_9MemoryPhiEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17roundUpNumBucketsEj.exit
  %.0.i4 = phi i32 [ 4, %_ZN4llvm13SmallDenseMapIPNS_9MemoryPhiEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17roundUpNumBucketsEj.exit.thread ], [ %.sroa.speculated.i, %_ZN4llvm13SmallDenseMapIPNS_9MemoryPhiEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17roundUpNumBucketsEj.exit ] ; 3 uses
  %.sink.i = phi i32 [ 1, %_ZN4llvm13SmallDenseMapIPNS_9MemoryPhiEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17roundUpNumBucketsEj.exit.thread ], [ 0, %_ZN4llvm13SmallDenseMapIPNS_9MemoryPhiEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17roundUpNumBucketsEj.exit ]
  %i.ab = phi i64 [ 4, %_ZN4llvm13SmallDenseMapIPNS_9MemoryPhiEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17roundUpNumBucketsEj.exit.thread ], [ %i.u, %_ZN4llvm13SmallDenseMapIPNS_9MemoryPhiEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17roundUpNumBucketsEj.exit ]
  %i.ac = phi ptr [ %i.b, %_ZN4llvm13SmallDenseMapIPNS_9MemoryPhiEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17roundUpNumBucketsEj.exit.thread ], [ %i.y, %_ZN4llvm13SmallDenseMapIPNS_9MemoryPhiEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17roundUpNumBucketsEj.exit ]
  store i32 %.sink.i, ptr %2, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ac, i8 0, i64 %i.ab, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_9MemoryPhiEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(80) %0)
  %i.ad = load i32, ptr %2, align 8               ; 3 uses
  %i.ae = and i32 %i.ad, 1
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %_ZN4llvm13SmallDenseMapIPNS_9MemoryPhiEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE13maybeMoveFastEOSA_.exit.thread, label %_ZN4llvm13SmallDenseMapIPNS_9MemoryPhiEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE13maybeMoveFastEOSA_.exit

_ZN4llvm13SmallDenseMapIPNS_9MemoryPhiEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE13maybeMoveFastEOSA_.exit.thread: ; preds = %_ZN4llvm13SmallDenseMapIPNS_9MemoryPhiEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEC2EjNS_12DenseMapBaseISA_S2_S4_S6_S9_E16ExactBucketCountE.exit
  store i32 %i.ad, ptr %0, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !tbaa.struct !1241
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 0, ptr %i.ah, align 8, !tbaa !272
  br label %bb.b

_ZN4llvm13SmallDenseMapIPNS_9MemoryPhiEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE13maybeMoveFastEOSA_.exit: ; preds = %_ZN4llvm13SmallDenseMapIPNS_9MemoryPhiEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEC2EjNS_12DenseMapBaseISA_S2_S4_S6_S9_E16ExactBucketCountE.exit
  br i1 %i.a, label %.thread.i, label %_ZN4llvm13SmallDenseMapIPNS_9MemoryPhiEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE15allocateBucketsEj.exit.i

.thread.i:                                        ; preds = %_ZN4llvm13SmallDenseMapIPNS_9MemoryPhiEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE13maybeMoveFastEOSA_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_9MemoryPhiEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24initWithExactBucketCountEj.exit

_ZN4llvm13SmallDenseMapIPNS_9MemoryPhiEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE15allocateBucketsEj.exit.i: ; preds = %_ZN4llvm13SmallDenseMapIPNS_9MemoryPhiEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE13maybeMoveFastEOSA_.exit
  %i.aj = load i32, ptr %0, align 8
  %i.ak = and i32 %i.aj, -2
  store i32 %i.ak, ptr %0, align 8
  %i.al = zext i32 %.0.i4 to i64                  ; 2 uses
  %i.am = shl nuw nsw i64 %i.al, 4                ; 2 uses
  %i.an = add nuw nsw i64 %i.al, 31
  %i.ao = lshr i64 %i.an, 3
  %i.ap = and i64 %i.ao, 1073741820
  %i.aq = add nuw nsw i64 %i.ap, %i.am
  %i.ar = call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.aq, i64 noundef 8) #17 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !272
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.am ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.at, ptr %i.au, align 8, !tbaa !272
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.0.i4, ptr %i.av, align 8, !tbaa !272
  %.pre.i = load i32, ptr %0, align 8
  %.pre.fr.i = freeze i32 %.pre.i
  %i.aw = and i32 %.pre.fr.i, 1                   ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.aw, 0            ; 2 uses
  %i.ax = select i1 %.not.i.i.i.i, i32 %.0.i4, i32 4
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 72
  %spec.select.i = select i1 %.not.i.i.i.i, ptr %i.at, ptr %i.ay
  %i.az = zext i32 %i.ax to i64
  %i.ba = add nuw nsw i64 %i.az, 31
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = and i64 %i.bb, 1073741820
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_9MemoryPhiEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24initWithExactBucketCountEj.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_9MemoryPhiEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24initWithExactBucketCountEj.exit: ; preds = %.thread.i, %_ZN4llvm13SmallDenseMapIPNS_9MemoryPhiEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE15allocateBucketsEj.exit.i
  %.sink = phi i32 [ 1, %.thread.i ], [ %i.aw, %_ZN4llvm13SmallDenseMapIPNS_9MemoryPhiEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE15allocateBucketsEj.exit.i ]
  %i.bd = phi i64 [ 4, %.thread.i ], [ %i.bc, %_ZN4llvm13SmallDenseMapIPNS_9MemoryPhiEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE15allocateBucketsEj.exit.i ]
  %i.be = phi ptr [ %i.ai, %.thread.i ], [ %spec.select.i, %_ZN4llvm13SmallDenseMapIPNS_9MemoryPhiEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE15allocateBucketsEj.exit.i ]
  store i32 %.sink, ptr %0, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.be, i8 0, i64 %i.bd, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_9MemoryPhiEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(80) %2)
  %.pre = load i32, ptr %2, align 8
  br label %bb.b

bb.b:                                             ; preds = %_ZN4llvm13SmallDenseMapIPNS_9MemoryPhiEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE13maybeMoveFastEOSA_.exit.thread, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_9MemoryPhiEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24initWithExactBucketCountEj.exit
  %i.bf = phi i32 [ %i.ad, %_ZN4llvm13SmallDenseMapIPNS_9MemoryPhiEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE13maybeMoveFastEOSA_.exit.thread ], [ %.pre, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_9MemoryPhiEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24initWithExactBucketCountEj.exit ]
  %i.bg = and i32 %i.bf, 1
  %.not.i.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i, label %bb.c, label %_ZN4llvm13SmallDenseMapIPNS_9MemoryPhiEPNS_12MemoryAccessELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit
end_hunk_4
begin_hunk_5_@_ZSt22__move_median_to_firstIPN4llvm3cfg6UpdateIPNS0_10BasicBlockEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_15LegalizeUpdatesIS4_EEvNS0_8ArrayRefINS2_IT_EEEERNS0_15SmallVectorImplISD_EEbbEUlRKS5_SJ_E_EEEvSC_SC_SC_SC_T0_:bb.a
  %i.cr = icmp slt i32 %i.cp, %i.cq
  %i.cs = icmp sgt i32 %i.cp, %i.cq
  %i.ct = select i1 %i.co, i1 %i.cr, i1 %i.cs
  br i1 %i.ct, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !316
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !316
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !316
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !316
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !316
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !316
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.k, %bb.j, %bb.c, %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZSt21__unguarded_partitionIPN4llvm3cfg6UpdateIPNS0_10BasicBlockEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_15LegalizeUpdatesIS4_EEvNS0_8ArrayRefINS2_IT_EEEERNS0_15SmallVectorImplISD_EEbbEUlRKS5_SJ_E_EEESC_SC_SC_SC_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %5 = alloca %"class.llvm::cfg::Update", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 16 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.v, %bb.a
  %.013 = phi ptr [ %1, %bb.a ], [ %.114, %bb.v ]
  %.0 = phi ptr [ %0, %bb.a ], [ %i.in, %bb.v ]
  br label %bb.c

bb.c:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit, %bb.b
  %.1 = phi ptr [ %.0, %bb.b ], [ %i.in, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit ] ; 7 uses
  %i.f = load ptr, ptr %.1, align 8, !tbaa !291   ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.1, i64 8
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.g, align 8
  %i.h = and i64 %.0.copyload.i.i.i.i.i.i, -8     ; 3 uses
  %i.i = inttoptr i64 %i.h to ptr                 ; 3 uses
  %i.j = load i32, ptr %3, align 8, !noalias !1309 ; 3 uses
  %i.k = and i32 %i.j, 1                          ; 2 uses
  %.not.i.i.i.i19 = icmp eq i32 %i.k, 0           ; 3 uses
  %i.l = load ptr, ptr %i.a, align 8, !noalias !1309 ; 2 uses
  %i.m = load ptr, ptr %i.b, align 8, !noalias !1309 ; 2 uses
  %i.n = load i32, ptr %i.c, align 8, !noalias !1309 ; 2 uses
  %.sink2.i.i.i.i20 = select i1 %.not.i.i.i.i19, ptr %i.l, ptr %i.a ; 3 uses
  %.sink1.i.i.i.i21 = select i1 %.not.i.i.i.i19, ptr %i.m, ptr %i.d ; 3 uses
  %.sink.i.i.i.i22 = select i1 %.not.i.i.i.i19, i32 %i.n, i32 4 ; 4 uses
  %i.o = icmp eq i32 %.sink.i.i.i.i22, 0
  br i1 %i.o, label %.loopexit.i23, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = add i32 %.sink.i.i.i.i22, -1             ; 2 uses
  %i.q = ptrtoint ptr %i.f to i64
  %i.r = mul i64 %i.q, -4658895280553007687       ; 2 uses
  %i.s = lshr i64 %i.r, 31
  %i.t = xor i64 %i.s, %i.r
  %i.u = mul i64 %i.h, -4658895280553007687       ; 2 uses
  %i.v = lshr i64 %i.u, 31
  %i.w = xor i64 %i.v, %i.u
  %i.x = shl i64 %i.t, 32
  %i.y = and i64 %i.w, 4294967295
  %i.z = or disjoint i64 %i.y, %i.x
  %i.aa = mul i64 %i.z, -4658895280553007687      ; 2 uses
  %i.ab = lshr i64 %i.aa, 31
  %i.ac = xor i64 %i.ab, %i.aa
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = and i32 %i.p, %i.ad                     ; 3 uses
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i.i20, i64 %i.af ; 2 uses
  %i.ah = lshr i64 %i.af, 5
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i21, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !40
  %i.ak = and i32 %i.ae, 31
  %i.al = lshr i32 %i.aj, %i.ak
  %i.am = trunc i32 %i.al to i1
  br i1 %i.am, label %.lr.ph.i.i38, label %.loopexit.i23, !prof !41

.lr.ph.i.i38:                                     ; preds = %bb.d, %bb.e
  %i.an = phi ptr [ %i.ax, %bb.e ], [ %i.ag, %bb.d ] ; 3 uses
  %.024.i.i39 = phi i32 [ %i.av, %bb.e ], [ %i.ae, %bb.d ]
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !302
  %i.ap = icmp eq ptr %i.f, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = icmp eq ptr %i.ar, %i.i
  %i.at = select i1 %i.ap, i1 %i.as, i1 false
  br i1 %i.at, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit40, label %bb.e, !prof !44

bb.e:                                             ; preds = %.lr.ph.i.i38
  %i.au = add nuw i32 %.024.i.i39, 1
  %i.av = and i32 %i.au, %i.p                     ; 3 uses
  %i.aw = zext i32 %i.av to i64                   ; 2 uses
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i.i20, i64 %i.aw ; 2 uses
  %i.ay = lshr i64 %i.aw, 5
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i21, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !40
  %i.bb = and i32 %i.av, 31
  %i.bc = lshr i32 %i.ba, %i.bb
  %i.bd = trunc i32 %i.bc to i1
  br i1 %i.bd, label %.lr.ph.i.i38, label %.loopexit.i23, !prof !45, !llvm.loop !16

.loopexit.i23:                                    ; preds = %bb.e, %bb.d, %bb.c
  %.lcssa28.sink.i.ph.i24 = phi ptr [ %i.ag, %bb.d ], [ null, %bb.c ], [ %i.ax, %bb.e ]
  %i.be = shl i32 %i.j, 1
  %i.bf = and i32 %i.be, -4
  %i.bg = add i32 %i.bf, 4
  %i.bh = mul i32 %.sink.i.i.i.i22, 3
  %.not.i.i25 = icmp ult i32 %i.bg, %i.bh
  br i1 %.not.i.i25, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i31, label %bb.f, !prof !44

bb.f:                                             ; preds = %.loopexit.i23
  %i.bi = shl i32 %.sink.i.i.i.i22, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %3, i32 noundef %i.bi)
  %i.bj = load i32, ptr %3, align 8, !noalias !1310
  %i.bk = and i32 %i.bj, 1
  %.not.i.i.i85 = icmp eq i32 %i.bk, 0            ; 3 uses
  %i.bl = load ptr, ptr %i.a, align 8, !noalias !1310
  %i.bm = load ptr, ptr %i.b, align 8, !noalias !1310
  %i.bn = load i32, ptr %i.c, align 8, !noalias !1310
  %.sink2.i.i.i86 = select i1 %.not.i.i.i85, ptr %i.bl, ptr %i.a ; 5 uses
  %.sink1.i.i.i87 = select i1 %.not.i.i.i85, ptr %i.bm, ptr %i.d ; 5 uses
  %.sink.i.i.i88 = select i1 %.not.i.i.i85, i32 %i.bn, i32 4 ; 2 uses
  %i.bo = icmp ne i32 %.sink.i.i.i88, 0
  tail call void @llvm.assume(i1 %i.bo)
  %i.bp = add i32 %.sink.i.i.i88, -1              ; 2 uses
  %i.bq = ptrtoint ptr %i.f to i64
  %i.br = mul i64 %i.bq, -4658895280553007687     ; 2 uses
  %i.bs = lshr i64 %i.br, 31
  %i.bt = xor i64 %i.bs, %i.br
  %i.bu = mul i64 %i.h, -4658895280553007687      ; 2 uses
  %i.bv = lshr i64 %i.bu, 31
  %i.bw = xor i64 %i.bv, %i.bu
  %i.bx = shl i64 %i.bt, 32
  %i.by = and i64 %i.bw, 4294967295
  %i.bz = or disjoint i64 %i.by, %i.bx
  %i.ca = mul i64 %i.bz, -4658895280553007687     ; 2 uses
  %i.cb = lshr i64 %i.ca, 31
  %i.cc = xor i64 %i.cb, %i.ca
  %i.cd = trunc i64 %i.cc to i32
  %i.ce = and i32 %i.bp, %i.cd                    ; 3 uses
  %i.cf = zext i32 %i.ce to i64                   ; 2 uses
  %i.cg = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i86, i64 %i.cf ; 2 uses
  %i.ch = lshr i64 %i.cf, 5
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i87, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !40
  %i.ck = and i32 %i.ce, 31
  %i.cl = lshr i32 %i.cj, %i.ck
  %i.cm = trunc i32 %i.cl to i1
  br i1 %i.cm, label %.lr.ph.i91, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i31, !prof !41

.lr.ph.i91:                                       ; preds = %bb.f, %bb.g
  %i.cn = phi ptr [ %i.cx, %bb.g ], [ %i.cg, %bb.f ] ; 3 uses
  %.024.i92 = phi i32 [ %i.cv, %bb.g ], [ %i.ce, %bb.f ]
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !302
  %i.cp = icmp eq ptr %i.f, %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = icmp eq ptr %i.cr, %i.i
  %i.ct = select i1 %i.cp, i1 %i.cs, i1 false
  br i1 %i.ct, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i31, label %bb.g, !prof !44

bb.g:                                             ; preds = %.lr.ph.i91
  %i.cu = add nuw i32 %.024.i92, 1
  %i.cv = and i32 %i.cu, %i.bp                    ; 3 uses
  %i.cw = zext i32 %i.cv to i64                   ; 2 uses
  %i.cx = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i86, i64 %i.cw ; 2 uses
  %i.cy = lshr i64 %i.cw, 5
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i87, i64 %i.cy
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !40
  %i.db = and i32 %i.cv, 31
  %i.dc = lshr i32 %i.da, %i.db
  %i.dd = trunc i32 %i.dc to i1
  br i1 %i.dd, label %.lr.ph.i91, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i31, !prof !45, !llvm.loop !16

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i31: ; preds = %bb.g, %.lr.ph.i91, %bb.f, %.loopexit.i23
  %.pre-phi174 = phi ptr [ %.sink2.i.i.i.i20, %.loopexit.i23 ], [ %.sink2.i.i.i86, %bb.f ], [ %.sink2.i.i.i86, %.lr.ph.i91 ], [ %.sink2.i.i.i86, %bb.g ]
  %.pre-phi = phi ptr [ %.sink1.i.i.i.i21, %.loopexit.i23 ], [ %.sink1.i.i.i87, %bb.f ], [ %.sink1.i.i.i87, %.lr.ph.i91 ], [ %.sink1.i.i.i87, %bb.g ]
  %i.de = phi ptr [ %.lcssa28.sink.i.ph.i24, %.loopexit.i23 ], [ %i.cg, %bb.f ], [ %i.cx, %bb.g ], [ %i.cn, %.lr.ph.i91 ] ; 5 uses
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = ptrtoint ptr %.pre-phi174 to i64
  %i.dh = sub i64 %i.df, %i.dg
  %i.di = sdiv exact i64 %i.dh, 24                ; 2 uses
  %i.dj = trunc i64 %i.di to i32
  %i.dk = and i32 %i.dj, 31
  %i.dl = shl nuw i32 1, %i.dk
  %i.dm = lshr i64 %i.di, 5
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %.pre-phi, i64 %i.dm ; 2 uses
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !40
  %i.dp = or i32 %i.dl, %i.do
  store i32 %i.dp, ptr %i.dn, align 4, !tbaa !40
  %i.dq = load i32, ptr %3, align 8               ; 2 uses
  %6 = and i32 %i.dq, -2
  %i.dr = add i32 %6, 2
  %7 = and i32 %i.dq, 1
  %8 = or disjoint i32 %i.dr, %7
  store i32 %8, ptr %3, align 8
  store ptr %i.f, ptr %i.de, align 8
  %.sroa.6121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  store ptr %i.i, ptr %.sroa.6121.0..sroa_idx, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  store i32 0, ptr %i.ds, align 8, !tbaa !40
  %.pre = load i32, ptr %3, align 8, !noalias !1311 ; 2 uses
  %.pre164 = load ptr, ptr %i.a, align 8, !noalias !1311
  %.pre165 = load ptr, ptr %i.b, align 8, !noalias !1311
  %.pre166 = load i32, ptr %i.c, align 8, !noalias !1311
  %.pre175 = and i32 %.pre, 1
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit40

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit40: ; preds = %.lr.ph.i.i38, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i31
  %.pre-phi176 = phi i32 [ %.pre175, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i31 ], [ %i.k, %.lr.ph.i.i38 ]
  %i.dt = phi i32 [ %.pre166, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i31 ], [ %i.n, %.lr.ph.i.i38 ]
  %i.du = phi ptr [ %.pre165, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i31 ], [ %i.m, %.lr.ph.i.i38 ]
  %i.dv = phi ptr [ %.pre164, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i31 ], [ %i.l, %.lr.ph.i.i38 ]
  %i.dw = phi i32 [ %.pre, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i31 ], [ %i.j, %.lr.ph.i.i38 ]
  %.sroa.0.0.i34 = phi ptr [ %i.de, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i31 ], [ %i.an, %.lr.ph.i.i38 ]
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i34, i64 16
  %i.dy = load ptr, ptr %2, align 8, !tbaa !291   ; 5 uses
  %.0.copyload.i.i.i.i9.i.i = load i64, ptr %i.e, align 8
  %i.dz = and i64 %.0.copyload.i.i.i.i9.i.i, -8   ; 3 uses
  %i.ea = inttoptr i64 %i.dz to ptr               ; 3 uses
  %.not.i.i.i.i = icmp eq i32 %.pre-phi176, 0     ; 3 uses
  %.sink2.i.i.i.i = select i1 %.not.i.i.i.i, ptr %i.dv, ptr %i.a ; 3 uses
  %.sink1.i.i.i.i = select i1 %.not.i.i.i.i, ptr %i.du, ptr %i.d ; 3 uses
  %.sink.i.i.i.i = select i1 %.not.i.i.i.i, i32 %i.dt, i32 4 ; 4 uses
  %i.eb = icmp eq i32 %.sink.i.i.i.i, 0
  br i1 %i.eb, label %.loopexit.i, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit40
  %i.ec = add i32 %.sink.i.i.i.i, -1              ; 2 uses
  %i.ed = ptrtoint ptr %i.dy to i64
  %i.ee = mul i64 %i.ed, -4658895280553007687     ; 2 uses
  %i.ef = lshr i64 %i.ee, 31
  %i.eg = xor i64 %i.ef, %i.ee
  %i.eh = mul i64 %i.dz, -4658895280553007687     ; 2 uses
  %i.ei = lshr i64 %i.eh, 31
  %i.ej = xor i64 %i.ei, %i.eh
  %i.ek = shl i64 %i.eg, 32
  %i.el = and i64 %i.ej, 4294967295
  %i.em = or disjoint i64 %i.el, %i.ek
  %i.en = mul i64 %i.em, -4658895280553007687     ; 2 uses
  %i.eo = lshr i64 %i.en, 31
  %i.ep = xor i64 %i.eo, %i.en
  %i.eq = trunc i64 %i.ep to i32
  %i.er = and i32 %i.ec, %i.eq                    ; 3 uses
  %i.es = zext i32 %i.er to i64                   ; 2 uses
  %i.et = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i.i, i64 %i.es ; 2 uses
  %i.eu = lshr i64 %i.es, 5
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i, i64 %i.eu
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !40
  %i.ex = and i32 %i.er, 31
  %i.ey = lshr i32 %i.ew, %i.ex
  %i.ez = trunc i32 %i.ey to i1
  br i1 %i.ez, label %.lr.ph.i.i, label %.loopexit.i, !prof !41

.lr.ph.i.i:                                       ; preds = %bb.h, %bb.i
  %i.fa = phi ptr [ %i.fk, %bb.i ], [ %i.et, %bb.h ] ; 3 uses
  %.024.i.i = phi i32 [ %i.fi, %bb.i ], [ %i.er, %bb.h ]
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !302
  %i.fc = icmp eq ptr %i.dy, %i.fb
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fe = load ptr, ptr %i.fd, align 8
  %i.ff = icmp eq ptr %i.fe, %i.ea
  %i.fg = select i1 %i.fc, i1 %i.ff, i1 false
  br i1 %i.fg, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit.loopexit, label %bb.i, !prof !44

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.fh = add nuw i32 %.024.i.i, 1
  %i.fi = and i32 %i.fh, %i.ec                    ; 3 uses
  %i.fj = zext i32 %i.fi to i64                   ; 2 uses
  %i.fk = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i.i, i64 %i.fj ; 2 uses
  %i.fl = lshr i64 %i.fj, 5
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i, i64 %i.fl
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !40
  %i.fo = and i32 %i.fi, 31
  %i.fp = lshr i32 %i.fn, %i.fo
  %i.fq = trunc i32 %i.fp to i1
  br i1 %i.fq, label %.lr.ph.i.i, label %.loopexit.i, !prof !45, !llvm.loop !16

.loopexit.i:                                      ; preds = %bb.i, %bb.h, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit40
  %.lcssa28.sink.i.ph.i = phi ptr [ %i.et, %bb.h ], [ null, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit40 ], [ %i.fk, %bb.i ]
  %i.fr = shl i32 %i.dw, 1
  %i.fs = and i32 %i.fr, -4
  %i.ft = add i32 %i.fs, 4
  %i.fu = mul i32 %.sink.i.i.i.i, 3
  %.not.i.i = icmp ult i32 %i.ft, %i.fu
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i, label %bb.j, !prof !44

bb.j:                                             ; preds = %.loopexit.i
  %i.fv = shl i32 %.sink.i.i.i.i, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %3, i32 noundef %i.fv)
  %i.fw = load i32, ptr %3, align 8, !noalias !1312
  %i.fx = and i32 %i.fw, 1
  %.not.i.i.i = icmp eq i32 %i.fx, 0              ; 3 uses
  %i.fy = load ptr, ptr %i.a, align 8, !noalias !1312
  %i.fz = load ptr, ptr %i.b, align 8, !noalias !1312
  %i.ga = load i32, ptr %i.c, align 8, !noalias !1312
  %.sink2.i.i.i = select i1 %.not.i.i.i, ptr %i.fy, ptr %i.a ; 5 uses
  %.sink1.i.i.i = select i1 %.not.i.i.i, ptr %i.fz, ptr %i.d ; 5 uses
  %.sink.i.i.i = select i1 %.not.i.i.i, i32 %i.ga, i32 4 ; 2 uses
  %i.gb = icmp ne i32 %.sink.i.i.i, 0
  tail call void @llvm.assume(i1 %i.gb)
  %i.gc = add i32 %.sink.i.i.i, -1                ; 2 uses
  %i.gd = ptrtoint ptr %i.dy to i64
  %i.ge = mul i64 %i.gd, -4658895280553007687     ; 2 uses
  %i.gf = lshr i64 %i.ge, 31
  %i.gg = xor i64 %i.gf, %i.ge
  %i.gh = mul i64 %i.dz, -4658895280553007687     ; 2 uses
  %i.gi = lshr i64 %i.gh, 31
  %i.gj = xor i64 %i.gi, %i.gh
  %i.gk = shl i64 %i.gg, 32
  %i.gl = and i64 %i.gj, 4294967295
  %i.gm = or disjoint i64 %i.gl, %i.gk
  %i.gn = mul i64 %i.gm, -4658895280553007687     ; 2 uses
  %i.go = lshr i64 %i.gn, 31
  %i.gp = xor i64 %i.go, %i.gn
  %i.gq = trunc i64 %i.gp to i32
  %i.gr = and i32 %i.gc, %i.gq                    ; 3 uses
  %i.gs = zext i32 %i.gr to i64                   ; 2 uses
  %i.gt = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i, i64 %i.gs ; 2 uses
  %i.gu = lshr i64 %i.gs, 5
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.gu
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !40
  %i.gx = and i32 %i.gr, 31
  %i.gy = lshr i32 %i.gw, %i.gx
  %i.gz = trunc i32 %i.gy to i1
  br i1 %i.gz, label %.lr.ph.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i, !prof !41

.lr.ph.i:                                         ; preds = %bb.j, %bb.k
  %i.ha = phi ptr [ %i.hk, %bb.k ], [ %i.gt, %bb.j ] ; 3 uses
  %.024.i = phi i32 [ %i.hi, %bb.k ], [ %i.gr, %bb.j ]
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !302
  %i.hc = icmp eq ptr %i.dy, %i.hb
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  %i.he = load ptr, ptr %i.hd, align 8
  %i.hf = icmp eq ptr %i.he, %i.ea
  %i.hg = select i1 %i.hc, i1 %i.hf, i1 false
  br i1 %i.hg, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i, label %bb.k, !prof !44

bb.k:                                             ; preds = %.lr.ph.i
  %i.hh = add nuw i32 %.024.i, 1
  %i.hi = and i32 %i.hh, %i.gc                    ; 3 uses
  %i.hj = zext i32 %i.hi to i64                   ; 2 uses
  %i.hk = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i, i64 %i.hj ; 2 uses
  %i.hl = lshr i64 %i.hj, 5
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.hl
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !40
  %i.ho = and i32 %i.hi, 31
  %i.hp = lshr i32 %i.hn, %i.ho
  %i.hq = trunc i32 %i.hp to i1
  br i1 %i.hq, label %.lr.ph.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i, !prof !45, !llvm.loop !16

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i: ; preds = %bb.k, %.lr.ph.i, %bb.j, %.loopexit.i
  %.pre-phi178 = phi ptr [ %.sink2.i.i.i.i, %.loopexit.i ], [ %.sink2.i.i.i, %bb.j ], [ %.sink2.i.i.i, %.lr.ph.i ], [ %.sink2.i.i.i, %bb.k ]
  %.pre-phi177 = phi ptr [ %.sink1.i.i.i.i, %.loopexit.i ], [ %.sink1.i.i.i, %bb.j ], [ %.sink1.i.i.i, %.lr.ph.i ], [ %.sink1.i.i.i, %bb.k ]
  %i.hr = phi ptr [ %.lcssa28.sink.i.ph.i, %.loopexit.i ], [ %i.gt, %bb.j ], [ %i.hk, %bb.k ], [ %i.ha, %.lr.ph.i ] ; 4 uses
  %i.hs = ptrtoint ptr %i.hr to i64
  %i.ht = ptrtoint ptr %.pre-phi178 to i64
  %i.hu = sub i64 %i.hs, %i.ht
  %i.hv = sdiv exact i64 %i.hu, 24                ; 2 uses
  %i.hw = trunc i64 %i.hv to i32
  %i.hx = and i32 %i.hw, 31
  %i.hy = shl nuw i32 1, %i.hx
  %i.hz = lshr i64 %i.hv, 5
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %.pre-phi177, i64 %i.hz ; 2 uses
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !40
  %i.ic = or i32 %i.hy, %i.ib
  store i32 %i.ic, ptr %i.ia, align 4, !tbaa !40
  %i.id = load i32, ptr %3, align 8               ; 2 uses
  %9 = and i32 %i.id, -2
  %i.ie = add i32 %9, 2
  %10 = and i32 %i.id, 1
  %11 = or disjoint i32 %i.ie, %10
  store i32 %11, ptr %3, align 8
  store ptr %i.dy, ptr %i.hr, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  store ptr %i.ea, ptr %.sroa.6.0..sroa_idx, align 8
  %i.if = getelementptr inbounds nuw i8, ptr %i.hr, i64 16
  store i32 0, ptr %i.if, align 8, !tbaa !40
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit.loopexit: ; preds = %.lr.ph.i.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %.pre167 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !40
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit.loopexit, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i
  %i.ig = phi i32 [ 0, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i ], [ %.pre167, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit.loopexit ] ; 2 uses
  %i.ih = load i8, ptr %4, align 1, !tbaa !312, !range !153, !noundef !154
  %i.ii = trunc nuw i8 %i.ih to i1
  %i.ij = load i32, ptr %i.dx, align 4, !tbaa !40 ; 2 uses
  %i.ik = icmp slt i32 %i.ij, %i.ig
  %i.il = icmp sgt i32 %i.ij, %i.ig
  %i.im = select i1 %i.ii, i1 %i.ik, i1 %i.il
  %i.in = getelementptr inbounds nuw i8, ptr %.1, i64 16 ; 2 uses
  br i1 %i.im, label %bb.c, label %.preheader, !llvm.loop !1290

.preheader:                                       ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit62
  %.013.pn = phi ptr [ %.114, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit62 ], [ %.013, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit ] ; 2 uses
  %.114 = getelementptr inbounds i8, ptr %.013.pn, i64 -16 ; 6 uses
  %i.io = load ptr, ptr %2, align 8, !tbaa !291   ; 5 uses
  %.0.copyload.i.i.i.i.i.i15 = load i64, ptr %i.e, align 8
  %i.ip = and i64 %.0.copyload.i.i.i.i.i.i15, -8  ; 3 uses
  %i.iq = inttoptr i64 %i.ip to ptr               ; 3 uses
  %i.ir = load i32, ptr %3, align 8, !noalias !1313 ; 3 uses
  %i.is = and i32 %i.ir, 1                        ; 2 uses
  %.not.i.i.i.i63 = icmp eq i32 %i.is, 0          ; 3 uses
  %i.it = load ptr, ptr %i.a, align 8, !noalias !1313 ; 2 uses
  %i.iu = load ptr, ptr %i.b, align 8, !noalias !1313 ; 2 uses
  %i.iv = load i32, ptr %i.c, align 8, !noalias !1313 ; 2 uses
  %.sink2.i.i.i.i64 = select i1 %.not.i.i.i.i63, ptr %i.it, ptr %i.a ; 3 uses
  %.sink1.i.i.i.i65 = select i1 %.not.i.i.i.i63, ptr %i.iu, ptr %i.d ; 3 uses
  %.sink.i.i.i.i66 = select i1 %.not.i.i.i.i63, i32 %i.iv, i32 4 ; 4 uses
  %i.iw = icmp eq i32 %.sink.i.i.i.i66, 0
  br i1 %i.iw, label %.loopexit.i67, label %bb.l

bb.l:                                             ; preds = %.preheader
  %i.ix = add i32 %.sink.i.i.i.i66, -1            ; 2 uses
  %i.iy = ptrtoint ptr %i.io to i64
  %i.iz = mul i64 %i.iy, -4658895280553007687     ; 2 uses
  %i.ja = lshr i64 %i.iz, 31
  %i.jb = xor i64 %i.ja, %i.iz
  %i.jc = mul i64 %i.ip, -4658895280553007687     ; 2 uses
  %i.jd = lshr i64 %i.jc, 31
  %i.je = xor i64 %i.jd, %i.jc
  %i.jf = shl i64 %i.jb, 32
  %i.jg = and i64 %i.je, 4294967295
  %i.jh = or disjoint i64 %i.jg, %i.jf
  %i.ji = mul i64 %i.jh, -4658895280553007687     ; 2 uses
  %i.jj = lshr i64 %i.ji, 31
  %i.jk = xor i64 %i.jj, %i.ji
  %i.jl = trunc i64 %i.jk to i32
  %i.jm = and i32 %i.ix, %i.jl                    ; 3 uses
  %i.jn = zext i32 %i.jm to i64                   ; 2 uses
  %i.jo = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i.i64, i64 %i.jn ; 2 uses
  %i.jp = lshr i64 %i.jn, 5
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i65, i64 %i.jp
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !40
  %i.js = and i32 %i.jm, 31
  %i.jt = lshr i32 %i.jr, %i.js
  %i.ju = trunc i32 %i.jt to i1
  br i1 %i.ju, label %.lr.ph.i.i82, label %.loopexit.i67, !prof !41

.lr.ph.i.i82:                                     ; preds = %bb.l, %bb.m
  %i.jv = phi ptr [ %i.kf, %bb.m ], [ %i.jo, %bb.l ] ; 3 uses
  %.024.i.i83 = phi i32 [ %i.kd, %bb.m ], [ %i.jm, %bb.l ]
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !302
  %i.jx = icmp eq ptr %i.io, %i.jw
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  %i.jz = load ptr, ptr %i.jy, align 8
  %i.ka = icmp eq ptr %i.jz, %i.iq
  %i.kb = select i1 %i.jx, i1 %i.ka, i1 false
  br i1 %i.kb, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit84, label %bb.m, !prof !44

bb.m:                                             ; preds = %.lr.ph.i.i82
  %i.kc = add nuw i32 %.024.i.i83, 1
  %i.kd = and i32 %i.kc, %i.ix                    ; 3 uses
  %i.ke = zext i32 %i.kd to i64                   ; 2 uses
  %i.kf = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i.i64, i64 %i.ke ; 2 uses
  %i.kg = lshr i64 %i.ke, 5
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i65, i64 %i.kg
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !40
  %i.kj = and i32 %i.kd, 31
  %i.kk = lshr i32 %i.ki, %i.kj
  %i.kl = trunc i32 %i.kk to i1
  br i1 %i.kl, label %.lr.ph.i.i82, label %.loopexit.i67, !prof !45, !llvm.loop !16

.loopexit.i67:                                    ; preds = %bb.m, %bb.l, %.preheader
  %.lcssa28.sink.i.ph.i68 = phi ptr [ %i.jo, %bb.l ], [ null, %.preheader ], [ %i.kf, %bb.m ]
  %i.km = shl i32 %i.ir, 1
  %i.kn = and i32 %i.km, -4
  %i.ko = add i32 %i.kn, 4
  %i.kp = mul i32 %.sink.i.i.i.i66, 3
  %.not.i.i69 = icmp ult i32 %i.ko, %i.kp
  br i1 %.not.i.i69, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i75, label %bb.n, !prof !44

bb.n:                                             ; preds = %.loopexit.i67
  %i.kq = shl i32 %.sink.i.i.i.i66, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %3, i32 noundef %i.kq)
  %i.kr = load i32, ptr %3, align 8, !noalias !1314
  %i.ks = and i32 %i.kr, 1
  %.not.i.i.i103 = icmp eq i32 %i.ks, 0           ; 3 uses
  %i.kt = load ptr, ptr %i.a, align 8, !noalias !1314
  %i.ku = load ptr, ptr %i.b, align 8, !noalias !1314
  %i.kv = load i32, ptr %i.c, align 8, !noalias !1314
  %.sink2.i.i.i104 = select i1 %.not.i.i.i103, ptr %i.kt, ptr %i.a ; 5 uses
  %.sink1.i.i.i105 = select i1 %.not.i.i.i103, ptr %i.ku, ptr %i.d ; 5 uses
  %.sink.i.i.i106 = select i1 %.not.i.i.i103, i32 %i.kv, i32 4 ; 2 uses
  %i.kw = icmp ne i32 %.sink.i.i.i106, 0
  tail call void @llvm.assume(i1 %i.kw)
  %i.kx = add i32 %.sink.i.i.i106, -1             ; 2 uses
  %i.ky = ptrtoint ptr %i.io to i64
  %i.kz = mul i64 %i.ky, -4658895280553007687     ; 2 uses
  %i.la = lshr i64 %i.kz, 31
  %i.lb = xor i64 %i.la, %i.kz
  %i.lc = mul i64 %i.ip, -4658895280553007687     ; 2 uses
  %i.ld = lshr i64 %i.lc, 31
  %i.le = xor i64 %i.ld, %i.lc
  %i.lf = shl i64 %i.lb, 32
  %i.lg = and i64 %i.le, 4294967295
  %i.lh = or disjoint i64 %i.lg, %i.lf
  %i.li = mul i64 %i.lh, -4658895280553007687     ; 2 uses
  %i.lj = lshr i64 %i.li, 31
  %i.lk = xor i64 %i.lj, %i.li
  %i.ll = trunc i64 %i.lk to i32
  %i.lm = and i32 %i.kx, %i.ll                    ; 3 uses
  %i.ln = zext i32 %i.lm to i64                   ; 2 uses
  %i.lo = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i104, i64 %i.ln ; 2 uses
  %i.lp = lshr i64 %i.ln, 5
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i105, i64 %i.lp
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !40
  %i.ls = and i32 %i.lm, 31
  %i.lt = lshr i32 %i.lr, %i.ls
  %i.lu = trunc i32 %i.lt to i1
  br i1 %i.lu, label %.lr.ph.i109, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i75, !prof !41

.lr.ph.i109:                                      ; preds = %bb.n, %bb.o
  %i.lv = phi ptr [ %i.mf, %bb.o ], [ %i.lo, %bb.n ] ; 3 uses
  %.024.i110 = phi i32 [ %i.md, %bb.o ], [ %i.lm, %bb.n ]
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !302
  %i.lx = icmp eq ptr %i.io, %i.lw
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lv, i64 8
  %i.lz = load ptr, ptr %i.ly, align 8
  %i.ma = icmp eq ptr %i.lz, %i.iq
  %i.mb = select i1 %i.lx, i1 %i.ma, i1 false
  br i1 %i.mb, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i75, label %bb.o, !prof !44

bb.o:                                             ; preds = %.lr.ph.i109
  %i.mc = add nuw i32 %.024.i110, 1
  %i.md = and i32 %i.mc, %i.kx                    ; 3 uses
  %i.me = zext i32 %i.md to i64                   ; 2 uses
  %i.mf = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i104, i64 %i.me ; 2 uses
  %i.mg = lshr i64 %i.me, 5
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i105, i64 %i.mg
  %i.mi = load i32, ptr %i.mh, align 4, !tbaa !40
  %i.mj = and i32 %i.md, 31
  %i.mk = lshr i32 %i.mi, %i.mj
  %i.ml = trunc i32 %i.mk to i1
  br i1 %i.ml, label %.lr.ph.i109, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i75, !prof !45, !llvm.loop !16

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i75: ; preds = %bb.o, %.lr.ph.i109, %bb.n, %.loopexit.i67
  %.pre-phi180 = phi ptr [ %.sink2.i.i.i.i64, %.loopexit.i67 ], [ %.sink2.i.i.i104, %bb.n ], [ %.sink2.i.i.i104, %.lr.ph.i109 ], [ %.sink2.i.i.i104, %bb.o ]
  %.pre-phi179 = phi ptr [ %.sink1.i.i.i.i65, %.loopexit.i67 ], [ %.sink1.i.i.i105, %bb.n ], [ %.sink1.i.i.i105, %.lr.ph.i109 ], [ %.sink1.i.i.i105, %bb.o ]
  %i.mm = phi ptr [ %.lcssa28.sink.i.ph.i68, %.loopexit.i67 ], [ %i.lo, %bb.n ], [ %i.mf, %bb.o ], [ %i.lv, %.lr.ph.i109 ] ; 5 uses
  %i.mn = ptrtoint ptr %i.mm to i64
  %i.mo = ptrtoint ptr %.pre-phi180 to i64
  %i.mp = sub i64 %i.mn, %i.mo
  %i.mq = sdiv exact i64 %i.mp, 24                ; 2 uses
  %i.mr = trunc i64 %i.mq to i32
  %i.ms = and i32 %i.mr, 31
  %i.mt = shl nuw i32 1, %i.ms
  %i.mu = lshr i64 %i.mq, 5
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %.pre-phi179, i64 %i.mu ; 2 uses
  %i.mw = load i32, ptr %i.mv, align 4, !tbaa !40
  %i.mx = or i32 %i.mt, %i.mw
  store i32 %i.mx, ptr %i.mv, align 4, !tbaa !40
  %i.my = load i32, ptr %3, align 8               ; 2 uses
  %12 = and i32 %i.my, -2
  %i.mz = add i32 %12, 2
  %13 = and i32 %i.my, 1
  %14 = or disjoint i32 %i.mz, %13
  store i32 %14, ptr %3, align 8
  store ptr %i.io, ptr %i.mm, align 8
  %.sroa.6129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mm, i64 8
  store ptr %i.iq, ptr %.sroa.6129.0..sroa_idx, align 8
  %i.na = getelementptr inbounds nuw i8, ptr %i.mm, i64 16
  store i32 0, ptr %i.na, align 8, !tbaa !40
  %.pre168 = load i32, ptr %3, align 8, !noalias !1315 ; 2 uses
  %.pre169 = load ptr, ptr %i.a, align 8, !noalias !1315
  %.pre170 = load ptr, ptr %i.b, align 8, !noalias !1315
  %.pre171 = load i32, ptr %i.c, align 8, !noalias !1315
  %.pre181 = and i32 %.pre168, 1
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit84

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit84: ; preds = %.lr.ph.i.i82, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i75
  %.pre-phi182 = phi i32 [ %.pre181, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i75 ], [ %i.is, %.lr.ph.i.i82 ]
  %i.nb = phi i32 [ %.pre171, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i75 ], [ %i.iv, %.lr.ph.i.i82 ]
  %i.nc = phi ptr [ %.pre170, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i75 ], [ %i.iu, %.lr.ph.i.i82 ]
  %i.nd = phi ptr [ %.pre169, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i75 ], [ %i.it, %.lr.ph.i.i82 ]
  %i.ne = phi i32 [ %.pre168, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i75 ], [ %i.ir, %.lr.ph.i.i82 ]
  %.sroa.0.0.i78 = phi ptr [ %i.mm, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i75 ], [ %i.jv, %.lr.ph.i.i82 ]
  %i.nf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i78, i64 16
  %i.ng = load ptr, ptr %.114, align 8, !tbaa !291 ; 5 uses
  %i.nh = getelementptr inbounds i8, ptr %.013.pn, i64 -8
  %.0.copyload.i.i.i.i9.i.i17 = load i64, ptr %i.nh, align 8
  %i.ni = and i64 %.0.copyload.i.i.i.i9.i.i17, -8 ; 3 uses
  %i.nj = inttoptr i64 %i.ni to ptr               ; 3 uses
  %.not.i.i.i.i41 = icmp eq i32 %.pre-phi182, 0   ; 3 uses
  %.sink2.i.i.i.i42 = select i1 %.not.i.i.i.i41, ptr %i.nd, ptr %i.a ; 3 uses
  %.sink1.i.i.i.i43 = select i1 %.not.i.i.i.i41, ptr %i.nc, ptr %i.d ; 3 uses
  %.sink.i.i.i.i44 = select i1 %.not.i.i.i.i41, i32 %i.nb, i32 4 ; 4 uses
  %i.nk = icmp eq i32 %.sink.i.i.i.i44, 0
  br i1 %i.nk, label %.loopexit.i45, label %bb.p

bb.p:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit84
  %i.nl = add i32 %.sink.i.i.i.i44, -1            ; 2 uses
  %i.nm = ptrtoint ptr %i.ng to i64
  %i.nn = mul i64 %i.nm, -4658895280553007687     ; 2 uses
  %i.no = lshr i64 %i.nn, 31
  %i.np = xor i64 %i.no, %i.nn
  %i.nq = mul i64 %i.ni, -4658895280553007687     ; 2 uses
  %i.nr = lshr i64 %i.nq, 31
  %i.ns = xor i64 %i.nr, %i.nq
  %i.nt = shl i64 %i.np, 32
  %i.nu = and i64 %i.ns, 4294967295
  %i.nv = or disjoint i64 %i.nu, %i.nt
  %i.nw = mul i64 %i.nv, -4658895280553007687     ; 2 uses
  %i.nx = lshr i64 %i.nw, 31
  %i.ny = xor i64 %i.nx, %i.nw
  %i.nz = trunc i64 %i.ny to i32
  %i.oa = and i32 %i.nl, %i.nz                    ; 3 uses
  %i.ob = zext i32 %i.oa to i64                   ; 2 uses
  %i.oc = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i.i42, i64 %i.ob ; 2 uses
  %i.od = lshr i64 %i.ob, 5
  %i.oe = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i43, i64 %i.od
  %i.of = load i32, ptr %i.oe, align 4, !tbaa !40
  %i.og = and i32 %i.oa, 31
  %i.oh = lshr i32 %i.of, %i.og
  %i.oi = trunc i32 %i.oh to i1
  br i1 %i.oi, label %.lr.ph.i.i60, label %.loopexit.i45, !prof !41

.lr.ph.i.i60:                                     ; preds = %bb.p, %bb.q
  %i.oj = phi ptr [ %i.ot, %bb.q ], [ %i.oc, %bb.p ] ; 3 uses
  %.024.i.i61 = phi i32 [ %i.or, %bb.q ], [ %i.oa, %bb.p ]
  %i.ok = load ptr, ptr %i.oj, align 8, !tbaa !302
  %i.ol = icmp eq ptr %i.ng, %i.ok
  %i.om = getelementptr inbounds nuw i8, ptr %i.oj, i64 8
  %i.on = load ptr, ptr %i.om, align 8
  %i.oo = icmp eq ptr %i.on, %i.nj
  %i.op = select i1 %i.ol, i1 %i.oo, i1 false
  br i1 %i.op, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit62.loopexit, label %bb.q, !prof !44

bb.q:                                             ; preds = %.lr.ph.i.i60
  %i.oq = add nuw i32 %.024.i.i61, 1
  %i.or = and i32 %i.oq, %i.nl                    ; 3 uses
  %i.os = zext i32 %i.or to i64                   ; 2 uses
  %i.ot = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i.i42, i64 %i.os ; 2 uses
  %i.ou = lshr i64 %i.os, 5
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i43, i64 %i.ou
  %i.ow = load i32, ptr %i.ov, align 4, !tbaa !40
  %i.ox = and i32 %i.or, 31
  %i.oy = lshr i32 %i.ow, %i.ox
  %i.oz = trunc i32 %i.oy to i1
  br i1 %i.oz, label %.lr.ph.i.i60, label %.loopexit.i45, !prof !45, !llvm.loop !16

.loopexit.i45:                                    ; preds = %bb.q, %bb.p, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit84
  %.lcssa28.sink.i.ph.i46 = phi ptr [ %i.oc, %bb.p ], [ null, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit84 ], [ %i.ot, %bb.q ]
  %i.pa = shl i32 %i.ne, 1
  %i.pb = and i32 %i.pa, -4
  %i.pc = add i32 %i.pb, 4
  %i.pd = mul i32 %.sink.i.i.i.i44, 3
  %.not.i.i47 = icmp ult i32 %i.pc, %i.pd
  br i1 %.not.i.i47, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i53, label %bb.r, !prof !44

bb.r:                                             ; preds = %.loopexit.i45
  %i.pe = shl i32 %.sink.i.i.i.i44, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %3, i32 noundef %i.pe)
  %i.pf = load i32, ptr %3, align 8, !noalias !1316
  %i.pg = and i32 %i.pf, 1
  %.not.i.i.i94 = icmp eq i32 %i.pg, 0            ; 3 uses
  %i.ph = load ptr, ptr %i.a, align 8, !noalias !1316
  %i.pi = load ptr, ptr %i.b, align 8, !noalias !1316
  %i.pj = load i32, ptr %i.c, align 8, !noalias !1316
  %.sink2.i.i.i95 = select i1 %.not.i.i.i94, ptr %i.ph, ptr %i.a ; 5 uses
  %.sink1.i.i.i96 = select i1 %.not.i.i.i94, ptr %i.pi, ptr %i.d ; 5 uses
  %.sink.i.i.i97 = select i1 %.not.i.i.i94, i32 %i.pj, i32 4 ; 2 uses
  %i.pk = icmp ne i32 %.sink.i.i.i97, 0
  tail call void @llvm.assume(i1 %i.pk)
  %i.pl = add i32 %.sink.i.i.i97, -1              ; 2 uses
  %i.pm = ptrtoint ptr %i.ng to i64
  %i.pn = mul i64 %i.pm, -4658895280553007687     ; 2 uses
  %i.po = lshr i64 %i.pn, 31
  %i.pp = xor i64 %i.po, %i.pn
  %i.pq = mul i64 %i.ni, -4658895280553007687     ; 2 uses
  %i.pr = lshr i64 %i.pq, 31
  %i.ps = xor i64 %i.pr, %i.pq
  %i.pt = shl i64 %i.pp, 32
  %i.pu = and i64 %i.ps, 4294967295
  %i.pv = or disjoint i64 %i.pu, %i.pt
  %i.pw = mul i64 %i.pv, -4658895280553007687     ; 2 uses
  %i.px = lshr i64 %i.pw, 31
  %i.py = xor i64 %i.px, %i.pw
  %i.pz = trunc i64 %i.py to i32
  %i.qa = and i32 %i.pl, %i.pz                    ; 3 uses
  %i.qb = zext i32 %i.qa to i64                   ; 2 uses
  %i.qc = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i95, i64 %i.qb ; 2 uses
  %i.qd = lshr i64 %i.qb, 5
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i96, i64 %i.qd
  %i.qf = load i32, ptr %i.qe, align 4, !tbaa !40
  %i.qg = and i32 %i.qa, 31
  %i.qh = lshr i32 %i.qf, %i.qg
  %i.qi = trunc i32 %i.qh to i1
  br i1 %i.qi, label %.lr.ph.i100, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i53, !prof !41

.lr.ph.i100:                                      ; preds = %bb.r, %bb.s
  %i.qj = phi ptr [ %i.qt, %bb.s ], [ %i.qc, %bb.r ] ; 3 uses
  %.024.i101 = phi i32 [ %i.qr, %bb.s ], [ %i.qa, %bb.r ]
  %i.qk = load ptr, ptr %i.qj, align 8, !tbaa !302
  %i.ql = icmp eq ptr %i.ng, %i.qk
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qj, i64 8
  %i.qn = load ptr, ptr %i.qm, align 8
  %i.qo = icmp eq ptr %i.qn, %i.nj
  %i.qp = select i1 %i.ql, i1 %i.qo, i1 false
  br i1 %i.qp, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i53, label %bb.s, !prof !44

bb.s:                                             ; preds = %.lr.ph.i100
  %i.qq = add nuw i32 %.024.i101, 1
  %i.qr = and i32 %i.qq, %i.pl                    ; 3 uses
  %i.qs = zext i32 %i.qr to i64                   ; 2 uses
  %i.qt = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i95, i64 %i.qs ; 2 uses
  %i.qu = lshr i64 %i.qs, 5
  %i.qv = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i96, i64 %i.qu
  %i.qw = load i32, ptr %i.qv, align 4, !tbaa !40
  %i.qx = and i32 %i.qr, 31
  %i.qy = lshr i32 %i.qw, %i.qx
  %i.qz = trunc i32 %i.qy to i1
  br i1 %i.qz, label %.lr.ph.i100, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i53, !prof !45, !llvm.loop !16

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i53: ; preds = %bb.s, %.lr.ph.i100, %bb.r, %.loopexit.i45
  %.pre-phi184 = phi ptr [ %.sink2.i.i.i.i42, %.loopexit.i45 ], [ %.sink2.i.i.i95, %bb.r ], [ %.sink2.i.i.i95, %.lr.ph.i100 ], [ %.sink2.i.i.i95, %bb.s ]
  %.pre-phi183 = phi ptr [ %.sink1.i.i.i.i43, %.loopexit.i45 ], [ %.sink1.i.i.i96, %bb.r ], [ %.sink1.i.i.i96, %.lr.ph.i100 ], [ %.sink1.i.i.i96, %bb.s ]
  %i.ra = phi ptr [ %.lcssa28.sink.i.ph.i46, %.loopexit.i45 ], [ %i.qc, %bb.r ], [ %i.qt, %bb.s ], [ %i.qj, %.lr.ph.i100 ] ; 4 uses
  %i.rb = ptrtoint ptr %i.ra to i64
  %i.rc = ptrtoint ptr %.pre-phi184 to i64
  %i.rd = sub i64 %i.rb, %i.rc
  %i.re = sdiv exact i64 %i.rd, 24                ; 2 uses
  %i.rf = trunc i64 %i.re to i32
  %i.rg = and i32 %i.rf, 31
  %i.rh = shl nuw i32 1, %i.rg
  %i.ri = lshr i64 %i.re, 5
  %i.rj = getelementptr inbounds nuw [4 x i8], ptr %.pre-phi183, i64 %i.ri ; 2 uses
  %i.rk = load i32, ptr %i.rj, align 4, !tbaa !40
  %i.rl = or i32 %i.rh, %i.rk
  store i32 %i.rl, ptr %i.rj, align 4, !tbaa !40
  %i.rm = load i32, ptr %3, align 8               ; 2 uses
  %15 = and i32 %i.rm, -2
  %i.rn = add i32 %15, 2
  %16 = and i32 %i.rm, 1
  %17 = or disjoint i32 %i.rn, %16
  store i32 %17, ptr %3, align 8
  store ptr %i.ng, ptr %i.ra, align 8
  %.sroa.6125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ra, i64 8
  store ptr %i.nj, ptr %.sroa.6125.0..sroa_idx, align 8
  %i.ro = getelementptr inbounds nuw i8, ptr %i.ra, i64 16
  store i32 0, ptr %i.ro, align 8, !tbaa !40
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit62

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit62.loopexit: ; preds = %.lr.ph.i.i60
  %.phi.trans.insert172 = getelementptr inbounds nuw i8, ptr %i.oj, i64 16
  %.pre173 = load i32, ptr %.phi.trans.insert172, align 4, !tbaa !40
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit62

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit62: ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit62.loopexit, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i53
  %i.rp = phi i32 [ 0, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i53 ], [ %.pre173, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit62.loopexit ] ; 2 uses
  %i.rq = load i8, ptr %4, align 1, !tbaa !312, !range !153, !noundef !154
  %i.rr = trunc nuw i8 %i.rq to i1
  %i.rs = load i32, ptr %i.nf, align 4, !tbaa !40 ; 2 uses
  %i.rt = icmp slt i32 %i.rs, %i.rp
  %i.ru = icmp sgt i32 %i.rs, %i.rp
  %i.rv = select i1 %i.rr, i1 %i.rt, i1 %i.ru
  br i1 %i.rv, label %.preheader, label %bb.t, !llvm.loop !1307

bb.t:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit62
  %i.rw = icmp ult ptr %.1, %.114
  br i1 %i.rw, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  ret ptr %.1

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %.1, i64 16, i1 false), !tbaa.struct !316
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.1, ptr noundef nonnull align 8 dereferenceable(16) %.114, i64 16, i1 false), !tbaa.struct !316
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.114, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !316
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.b, !llvm.loop !1308
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #10

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt16__insertion_sortIPN4llvm3cfg6UpdateIPNS0_10BasicBlockEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_15LegalizeUpdatesIS4_EEvNS0_8ArrayRefINS2_IT_EEEERNS0_15SmallVectorImplISD_EEbbEUlRKS5_SJ_E_EEEvSC_SC_T0_(ptr noundef %0, ptr noundef %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %4 = alloca %"struct.std::pair.224", align 8    ; 5 uses
  %5 = alloca %"struct.std::pair.224", align 8    ; 5 uses
  %6 = alloca %"class.llvm::cfg::Update", align 8 ; 4 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.065 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not66 = icmp eq ptr %.065, %1
  br i1 %.not66, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 4 uses
  %i.i = ptrtoint ptr %0 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.r
  %.068 = phi ptr [ %.065, %.lr.ph ], [ %.0, %bb.r ] ; 7 uses
  %.pn67 = phi ptr [ %0, %.lr.ph ], [ %.068, %bb.r ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.j = load ptr, ptr %.068, align 8, !tbaa !291
  %i.k = getelementptr inbounds nuw i8, ptr %.pn67, i64 24 ; 2 uses
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.k, align 8
  %i.l = and i64 %.0.copyload.i.i.i.i.i.i, -8
  %i.m = inttoptr i64 %i.l to ptr
  store ptr %i.j, ptr %4, align 8, !tbaa !302
  store ptr %i.m, ptr %i.b, align 8, !tbaa !313
  %i.n = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(16) %4)
  %.fca.0.extract.i.i.i = extractvalue { ptr, i8 } %i.n, 0
  %i.o = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.p = load ptr, ptr %0, align 8, !tbaa !291
  %.0.copyload.i.i.i.i9.i.i = load i64, ptr %i.c, align 8
  %i.q = and i64 %.0.copyload.i.i.i.i9.i.i, -8
  %i.r = inttoptr i64 %i.q to ptr
  store ptr %i.p, ptr %5, align 8, !tbaa !302
  store ptr %i.r, ptr %i.d, align 8, !tbaa !313
  %i.s = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(16) %5)
  %.fca.0.extract.i10.i.i = extractvalue { ptr, i8 } %i.s, 0
  %i.t = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i10.i.i, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %i.u = load i8, ptr %3, align 1, !tbaa !312, !range !153, !noundef !154
  %i.v = trunc nuw i8 %i.u to i1
  %i.w = load i32, ptr %i.o, align 4, !tbaa !40   ; 2 uses
  %i.x = load i32, ptr %i.t, align 4, !tbaa !40   ; 2 uses
  %i.y = icmp slt i32 %i.w, %i.x
  %i.z = icmp sgt i32 %i.w, %i.x
  %i.aa = select i1 %i.v, i1 %i.y, i1 %i.z
  br i1 %i.aa, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %.068, i64 16, i1 false), !tbaa.struct !316
  %i.ab = ptrtoint ptr %.068 to i64
  %i.ac = sub i64 %i.ab, %i.i                     ; 3 uses
  %i.ad = ashr exact i64 %i.ac, 4                 ; 2 uses
  %i.ae = icmp sgt i64 %i.ad, 1
  br i1 %i.ae, label %bb.d, label %bb.e, !prof !44

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %.pn67, i64 32
  %i.ag = sub nsw i64 0, %i.ad
  %i.ah = getelementptr inbounds [16 x i8], ptr %i.af, i64 %i.ag
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ah, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.ac, i1 false)
  br label %_ZSt13move_backwardIPN4llvm3cfg6UpdateIPNS0_10BasicBlockEEES6_ET0_T_S8_S7_.exit

bb.e:                                             ; preds = %bb.c
  %i.ai = icmp eq i64 %i.ac, 16
  br i1 %i.ai, label %bb.f, label %_ZSt13move_backwardIPN4llvm3cfg6UpdateIPNS0_10BasicBlockEEES6_ET0_T_S8_S7_.exit

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %.pn67, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !316
  br label %_ZSt13move_backwardIPN4llvm3cfg6UpdateIPNS0_10BasicBlockEEES6_ET0_T_S8_S7_.exit

_ZSt13move_backwardIPN4llvm3cfg6UpdateIPNS0_10BasicBlockEEES6_ET0_T_S8_S7_.exit: ; preds = %bb.d, %bb.e, %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !316
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.r

bb.g:                                             ; preds = %bb.b
  %.sroa.0.0.copyload.i = load ptr, ptr %.068, align 8, !tbaa !43 ; 5 uses
  %.sroa.5.0.copyload.i = load i64, ptr %i.k, align 8, !tbaa !272 ; 2 uses
  %i.ak = and i64 %.sroa.5.0.copyload.i, -8       ; 2 uses
  %i.al = inttoptr i64 %i.ak to ptr               ; 3 uses
  %i.am = ptrtoint ptr %.sroa.0.0.copyload.i to i64
  %i.an = mul i64 %i.am, -4658895280553007687     ; 2 uses
  %i.ao = lshr i64 %i.an, 31
  %i.ap = xor i64 %i.ao, %i.an
  %i.aq = mul i64 %i.ak, -4658895280553007687     ; 2 uses
  %i.ar = lshr i64 %i.aq, 31
  %i.as = xor i64 %i.ar, %i.aq
  %i.at = shl i64 %i.ap, 32
  %i.au = and i64 %i.as, 4294967295
  %i.av = or disjoint i64 %i.au, %i.at
  %i.aw = mul i64 %i.av, -4658895280553007687     ; 2 uses
  %i.ax = lshr i64 %i.aw, 31
  %i.ay = xor i64 %i.ax, %i.aw
  %i.az = trunc i64 %i.ay to i32                  ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.q, %bb.g
  %.09.i = phi ptr [ %.068, %bb.g ], [ %.0.i, %bb.q ] ; 5 uses
  %.0.i = getelementptr inbounds i8, ptr %.09.i, i64 -16 ; 3 uses
  %i.ba = load i32, ptr %2, align 8, !noalias !1334 ; 3 uses
  %i.bb = and i32 %i.ba, 1                        ; 2 uses
  %.not.i.i.i.i20 = icmp eq i32 %i.bb, 0          ; 3 uses
  %i.bc = load ptr, ptr %i.e, align 8, !noalias !1334 ; 2 uses
  %i.bd = load ptr, ptr %i.f, align 8, !noalias !1334 ; 2 uses
  %i.be = load i32, ptr %i.g, align 8, !noalias !1334 ; 2 uses
  %.sink2.i.i.i.i21 = select i1 %.not.i.i.i.i20, ptr %i.bc, ptr %i.e ; 3 uses
  %.sink1.i.i.i.i22 = select i1 %.not.i.i.i.i20, ptr %i.bd, ptr %i.h ; 3 uses
  %.sink.i.i.i.i23 = select i1 %.not.i.i.i.i20, i32 %i.be, i32 4 ; 4 uses
  %i.bf = icmp eq i32 %.sink.i.i.i.i23, 0
  br i1 %i.bf, label %.loopexit.i24, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bg = add i32 %.sink.i.i.i.i23, -1            ; 2 uses
  %i.bh = and i32 %i.bg, %i.az                    ; 3 uses
  %i.bi = zext i32 %i.bh to i64                   ; 2 uses
  %i.bj = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i.i21, i64 %i.bi ; 2 uses
  %i.bk = lshr i64 %i.bi, 5
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i22, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !40
  %i.bn = and i32 %i.bh, 31
  %i.bo = lshr i32 %i.bm, %i.bn
  %i.bp = trunc i32 %i.bo to i1
  br i1 %i.bp, label %.lr.ph.i.i39, label %.loopexit.i24, !prof !41

.lr.ph.i.i39:                                     ; preds = %bb.i, %bb.j
  %i.bq = phi ptr [ %i.ca, %bb.j ], [ %i.bj, %bb.i ] ; 3 uses
  %.024.i.i40 = phi i32 [ %i.by, %bb.j ], [ %i.bh, %bb.i ]
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !302
  %i.bs = icmp eq ptr %.sroa.0.0.copyload.i, %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = icmp eq ptr %i.bu, %i.al
  %i.bw = select i1 %i.bs, i1 %i.bv, i1 false
  br i1 %i.bw, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit41, label %bb.j, !prof !44

bb.j:                                             ; preds = %.lr.ph.i.i39
  %i.bx = add nuw i32 %.024.i.i40, 1
  %i.by = and i32 %i.bx, %i.bg                    ; 3 uses
  %i.bz = zext i32 %i.by to i64                   ; 2 uses
  %i.ca = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i.i21, i64 %i.bz ; 2 uses
  %i.cb = lshr i64 %i.bz, 5
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i22, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !40
  %i.ce = and i32 %i.by, 31
  %i.cf = lshr i32 %i.cd, %i.ce
  %i.cg = trunc i32 %i.cf to i1
  br i1 %i.cg, label %.lr.ph.i.i39, label %.loopexit.i24, !prof !45, !llvm.loop !16

.loopexit.i24:                                    ; preds = %bb.j, %bb.i, %bb.h
  %.lcssa28.sink.i.ph.i25 = phi ptr [ %i.bj, %bb.i ], [ null, %bb.h ], [ %i.ca, %bb.j ]
  %i.ch = shl i32 %i.ba, 1
  %i.ci = and i32 %i.ch, -4
  %i.cj = add i32 %i.ci, 4
  %i.ck = mul i32 %.sink.i.i.i.i23, 3
  %.not.i.i26 = icmp ult i32 %i.cj, %i.ck
  br i1 %.not.i.i26, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i32, label %bb.k, !prof !44

bb.k:                                             ; preds = %.loopexit.i24
  %i.cl = shl i32 %.sink.i.i.i.i23, 1
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef %i.cl)
  %i.cm = load i32, ptr %2, align 8, !noalias !1335
  %i.cn = and i32 %i.cm, 1
  %.not.i.i.i42 = icmp eq i32 %i.cn, 0            ; 3 uses
  %i.co = load ptr, ptr %i.e, align 8, !noalias !1335
  %i.cp = load ptr, ptr %i.f, align 8, !noalias !1335
  %i.cq = load i32, ptr %i.g, align 8, !noalias !1335
  %.sink2.i.i.i43 = select i1 %.not.i.i.i42, ptr %i.co, ptr %i.e ; 5 uses
  %.sink1.i.i.i44 = select i1 %.not.i.i.i42, ptr %i.cp, ptr %i.h ; 5 uses
  %.sink.i.i.i45 = select i1 %.not.i.i.i42, i32 %i.cq, i32 4 ; 2 uses
  %i.cr = icmp ne i32 %.sink.i.i.i45, 0
  call void @llvm.assume(i1 %i.cr)
  %i.cs = add i32 %.sink.i.i.i45, -1              ; 2 uses
  %i.ct = and i32 %i.cs, %i.az                    ; 3 uses
  %i.cu = zext i32 %i.ct to i64                   ; 2 uses
  %i.cv = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i43, i64 %i.cu ; 2 uses
  %i.cw = lshr i64 %i.cu, 5
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i44, i64 %i.cw
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !40
  %i.cz = and i32 %i.ct, 31
  %i.da = lshr i32 %i.cy, %i.cz
  %i.db = trunc i32 %i.da to i1
  br i1 %i.db, label %.lr.ph.i48, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i32, !prof !41

.lr.ph.i48:                                       ; preds = %bb.k, %bb.l
  %i.dc = phi ptr [ %i.dm, %bb.l ], [ %i.cv, %bb.k ] ; 3 uses
  %.024.i49 = phi i32 [ %i.dk, %bb.l ], [ %i.ct, %bb.k ]
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !302
  %i.de = icmp eq ptr %.sroa.0.0.copyload.i, %i.dd
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = icmp eq ptr %i.dg, %i.al
  %i.di = select i1 %i.de, i1 %i.dh, i1 false
  br i1 %i.di, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i32, label %bb.l, !prof !44

bb.l:                                             ; preds = %.lr.ph.i48
  %i.dj = add nuw i32 %.024.i49, 1
  %i.dk = and i32 %i.dj, %i.cs                    ; 3 uses
  %i.dl = zext i32 %i.dk to i64                   ; 2 uses
  %i.dm = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i43, i64 %i.dl ; 2 uses
  %i.dn = lshr i64 %i.dl, 5
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i44, i64 %i.dn
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !40
  %i.dq = and i32 %i.dk, 31
  %i.dr = lshr i32 %i.dp, %i.dq
  %i.ds = trunc i32 %i.dr to i1
  br i1 %i.ds, label %.lr.ph.i48, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i32, !prof !45, !llvm.loop !16

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i32: ; preds = %bb.l, %.lr.ph.i48, %bb.k, %.loopexit.i24
  %.pre-phi79 = phi ptr [ %.sink2.i.i.i.i21, %.loopexit.i24 ], [ %.sink2.i.i.i43, %bb.k ], [ %.sink2.i.i.i43, %.lr.ph.i48 ], [ %.sink2.i.i.i43, %bb.l ]
  %.pre-phi = phi ptr [ %.sink1.i.i.i.i22, %.loopexit.i24 ], [ %.sink1.i.i.i44, %bb.k ], [ %.sink1.i.i.i44, %.lr.ph.i48 ], [ %.sink1.i.i.i44, %bb.l ]
  %i.dt = phi ptr [ %.lcssa28.sink.i.ph.i25, %.loopexit.i24 ], [ %i.cv, %bb.k ], [ %i.dm, %bb.l ], [ %i.dc, %.lr.ph.i48 ] ; 5 uses
  %i.du = ptrtoint ptr %i.dt to i64
  %i.dv = ptrtoint ptr %.pre-phi79 to i64
  %i.dw = sub i64 %i.du, %i.dv
  %i.dx = sdiv exact i64 %i.dw, 24                ; 2 uses
  %i.dy = trunc i64 %i.dx to i32
  %i.dz = and i32 %i.dy, 31
  %i.ea = shl nuw i32 1, %i.dz
  %i.eb = lshr i64 %i.dx, 5
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %.pre-phi, i64 %i.eb ; 2 uses
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !40
  %i.ee = or i32 %i.ea, %i.ed
  store i32 %i.ee, ptr %i.ec, align 4, !tbaa !40
  %i.ef = load i32, ptr %2, align 8               ; 2 uses
  %7 = and i32 %i.ef, -2
  %i.eg = add i32 %7, 2
  %8 = and i32 %i.ef, 1
  %9 = or disjoint i32 %i.eg, %8
  store i32 %9, ptr %2, align 8
  store ptr %.sroa.0.0.copyload.i, ptr %i.dt, align 8
  %.sroa.657.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  store ptr %i.al, ptr %.sroa.657.0..sroa_idx, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  store i32 0, ptr %i.eh, align 8, !tbaa !40
  %.pre = load i32, ptr %2, align 8, !noalias !1336 ; 2 uses
  %.pre75 = load ptr, ptr %i.e, align 8, !noalias !1336
  %.pre76 = load ptr, ptr %i.f, align 8, !noalias !1336
  %.pre77 = load i32, ptr %i.g, align 8, !noalias !1336
  %.pre80 = and i32 %.pre, 1
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit41

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit41: ; preds = %.lr.ph.i.i39, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i32
  %.pre-phi81 = phi i32 [ %.pre80, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i32 ], [ %i.bb, %.lr.ph.i.i39 ]
  %i.ei = phi i32 [ %.pre77, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i32 ], [ %i.be, %.lr.ph.i.i39 ]
  %i.ej = phi ptr [ %.pre76, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i32 ], [ %i.bd, %.lr.ph.i.i39 ]
  %i.ek = phi ptr [ %.pre75, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i32 ], [ %i.bc, %.lr.ph.i.i39 ]
  %i.el = phi i32 [ %.pre, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i32 ], [ %i.ba, %.lr.ph.i.i39 ]
  %.sroa.0.0.i35 = phi ptr [ %i.dt, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i32 ], [ %i.bq, %.lr.ph.i.i39 ]
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i35, i64 16
  %i.en = load ptr, ptr %.0.i, align 8, !tbaa !291 ; 5 uses
  %i.eo = getelementptr inbounds i8, ptr %.09.i, i64 -8
  %.0.copyload.i.i.i.i9.i.i.i = load i64, ptr %i.eo, align 8
  %i.ep = and i64 %.0.copyload.i.i.i.i9.i.i.i, -8 ; 3 uses
  %i.eq = inttoptr i64 %i.ep to ptr               ; 3 uses
  %.not.i.i.i.i = icmp eq i32 %.pre-phi81, 0      ; 3 uses
  %.sink2.i.i.i.i = select i1 %.not.i.i.i.i, ptr %i.ek, ptr %i.e ; 3 uses
  %.sink1.i.i.i.i = select i1 %.not.i.i.i.i, ptr %i.ej, ptr %i.h ; 3 uses
  %.sink.i.i.i.i = select i1 %.not.i.i.i.i, i32 %i.ei, i32 4 ; 4 uses
  %i.er = icmp eq i32 %.sink.i.i.i.i, 0
  br i1 %i.er, label %.loopexit.i, label %bb.m

bb.m:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit41
  %i.es = add i32 %.sink.i.i.i.i, -1              ; 2 uses
  %i.et = ptrtoint ptr %i.en to i64
  %i.eu = mul i64 %i.et, -4658895280553007687     ; 2 uses
  %i.ev = lshr i64 %i.eu, 31
  %i.ew = xor i64 %i.ev, %i.eu
  %i.ex = mul i64 %i.ep, -4658895280553007687     ; 2 uses
  %i.ey = lshr i64 %i.ex, 31
  %i.ez = xor i64 %i.ey, %i.ex
  %i.fa = shl i64 %i.ew, 32
  %i.fb = and i64 %i.ez, 4294967295
  %i.fc = or disjoint i64 %i.fb, %i.fa
  %i.fd = mul i64 %i.fc, -4658895280553007687     ; 2 uses
  %i.fe = lshr i64 %i.fd, 31
  %i.ff = xor i64 %i.fe, %i.fd
  %i.fg = trunc i64 %i.ff to i32
  %i.fh = and i32 %i.es, %i.fg                    ; 3 uses
  %i.fi = zext i32 %i.fh to i64                   ; 2 uses
  %i.fj = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i.i, i64 %i.fi ; 2 uses
  %i.fk = lshr i64 %i.fi, 5
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i, i64 %i.fk
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !40
  %i.fn = and i32 %i.fh, 31
  %i.fo = lshr i32 %i.fm, %i.fn
  %i.fp = trunc i32 %i.fo to i1
  br i1 %i.fp, label %.lr.ph.i.i, label %.loopexit.i, !prof !41

.lr.ph.i.i:                                       ; preds = %bb.m, %bb.n
  %i.fq = phi ptr [ %i.ga, %bb.n ], [ %i.fj, %bb.m ] ; 3 uses
  %.024.i.i = phi i32 [ %i.fy, %bb.n ], [ %i.fh, %bb.m ]
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !302
  %i.fs = icmp eq ptr %i.en, %i.fr
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.fu = load ptr, ptr %i.ft, align 8
  %i.fv = icmp eq ptr %i.fu, %i.eq
  %i.fw = select i1 %i.fs, i1 %i.fv, i1 false
  br i1 %i.fw, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit.loopexit, label %bb.n, !prof !44

bb.n:                                             ; preds = %.lr.ph.i.i
  %i.fx = add nuw i32 %.024.i.i, 1
  %i.fy = and i32 %i.fx, %i.es                    ; 3 uses
  %i.fz = zext i32 %i.fy to i64                   ; 2 uses
  %i.ga = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i.i, i64 %i.fz ; 2 uses
  %i.gb = lshr i64 %i.fz, 5
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i, i64 %i.gb
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !40
  %i.ge = and i32 %i.fy, 31
  %i.gf = lshr i32 %i.gd, %i.ge
  %i.gg = trunc i32 %i.gf to i1
  br i1 %i.gg, label %.lr.ph.i.i, label %.loopexit.i, !prof !45, !llvm.loop !16

.loopexit.i:                                      ; preds = %bb.n, %bb.m, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit41
  %.lcssa28.sink.i.ph.i = phi ptr [ %i.fj, %bb.m ], [ null, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit41 ], [ %i.ga, %bb.n ]
  %i.gh = shl i32 %i.el, 1
  %i.gi = and i32 %i.gh, -4
  %i.gj = add i32 %i.gi, 4
  %i.gk = mul i32 %.sink.i.i.i.i, 3
  %.not.i.i = icmp ult i32 %i.gj, %i.gk
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i, label %bb.o, !prof !44

bb.o:                                             ; preds = %.loopexit.i
  %i.gl = shl i32 %.sink.i.i.i.i, 1
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef %i.gl)
  %i.gm = load i32, ptr %2, align 8, !noalias !1337
  %i.gn = and i32 %i.gm, 1
  %.not.i.i.i = icmp eq i32 %i.gn, 0              ; 3 uses
  %i.go = load ptr, ptr %i.e, align 8, !noalias !1337
  %i.gp = load ptr, ptr %i.f, align 8, !noalias !1337
  %i.gq = load i32, ptr %i.g, align 8, !noalias !1337
  %.sink2.i.i.i = select i1 %.not.i.i.i, ptr %i.go, ptr %i.e ; 5 uses
  %.sink1.i.i.i = select i1 %.not.i.i.i, ptr %i.gp, ptr %i.h ; 5 uses
  %.sink.i.i.i = select i1 %.not.i.i.i, i32 %i.gq, i32 4 ; 2 uses
  %i.gr = icmp ne i32 %.sink.i.i.i, 0
  call void @llvm.assume(i1 %i.gr)
  %i.gs = add i32 %.sink.i.i.i, -1                ; 2 uses
  %i.gt = ptrtoint ptr %i.en to i64
  %i.gu = mul i64 %i.gt, -4658895280553007687     ; 2 uses
  %i.gv = lshr i64 %i.gu, 31
  %i.gw = xor i64 %i.gv, %i.gu
  %i.gx = mul i64 %i.ep, -4658895280553007687     ; 2 uses
  %i.gy = lshr i64 %i.gx, 31
  %i.gz = xor i64 %i.gy, %i.gx
  %i.ha = shl i64 %i.gw, 32
  %i.hb = and i64 %i.gz, 4294967295
  %i.hc = or disjoint i64 %i.hb, %i.ha
  %i.hd = mul i64 %i.hc, -4658895280553007687     ; 2 uses
  %i.he = lshr i64 %i.hd, 31
  %i.hf = xor i64 %i.he, %i.hd
  %i.hg = trunc i64 %i.hf to i32
  %i.hh = and i32 %i.gs, %i.hg                    ; 3 uses
  %i.hi = zext i32 %i.hh to i64                   ; 2 uses
  %i.hj = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i, i64 %i.hi ; 2 uses
  %i.hk = lshr i64 %i.hi, 5
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.hk
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !40
  %i.hn = and i32 %i.hh, 31
  %i.ho = lshr i32 %i.hm, %i.hn
  %i.hp = trunc i32 %i.ho to i1
  br i1 %i.hp, label %.lr.ph.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i, !prof !41

.lr.ph.i:                                         ; preds = %bb.o, %bb.p
  %i.hq = phi ptr [ %i.ia, %bb.p ], [ %i.hj, %bb.o ] ; 3 uses
  %.024.i = phi i32 [ %i.hy, %bb.p ], [ %i.hh, %bb.o ]
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !302
  %i.hs = icmp eq ptr %i.en, %i.hr
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  %i.hu = load ptr, ptr %i.ht, align 8
  %i.hv = icmp eq ptr %i.hu, %i.eq
  %i.hw = select i1 %i.hs, i1 %i.hv, i1 false
  br i1 %i.hw, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i, label %bb.p, !prof !44

bb.p:                                             ; preds = %.lr.ph.i
  %i.hx = add nuw i32 %.024.i, 1
  %i.hy = and i32 %i.hx, %i.gs                    ; 3 uses
  %i.hz = zext i32 %i.hy to i64                   ; 2 uses
  %i.ia = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i, i64 %i.hz ; 2 uses
  %i.ib = lshr i64 %i.hz, 5
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.ib
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !40
  %i.ie = and i32 %i.hy, 31
  %i.if = lshr i32 %i.id, %i.ie
  %i.ig = trunc i32 %i.if to i1
  br i1 %i.ig, label %.lr.ph.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i, !prof !45, !llvm.loop !16

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i: ; preds = %bb.p, %.lr.ph.i, %bb.o, %.loopexit.i
  %.pre-phi83 = phi ptr [ %.sink2.i.i.i.i, %.loopexit.i ], [ %.sink2.i.i.i, %bb.o ], [ %.sink2.i.i.i, %.lr.ph.i ], [ %.sink2.i.i.i, %bb.p ]
  %.pre-phi82 = phi ptr [ %.sink1.i.i.i.i, %.loopexit.i ], [ %.sink1.i.i.i, %bb.o ], [ %.sink1.i.i.i, %.lr.ph.i ], [ %.sink1.i.i.i, %bb.p ]
  %i.ih = phi ptr [ %.lcssa28.sink.i.ph.i, %.loopexit.i ], [ %i.hj, %bb.o ], [ %i.ia, %bb.p ], [ %i.hq, %.lr.ph.i ] ; 4 uses
  %i.ii = ptrtoint ptr %i.ih to i64
  %i.ij = ptrtoint ptr %.pre-phi83 to i64
  %i.ik = sub i64 %i.ii, %i.ij
  %i.il = sdiv exact i64 %i.ik, 24                ; 2 uses
  %i.im = trunc i64 %i.il to i32
  %i.in = and i32 %i.im, 31
  %i.io = shl nuw i32 1, %i.in
  %i.ip = lshr i64 %i.il, 5
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %.pre-phi82, i64 %i.ip ; 2 uses
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !40
  %i.is = or i32 %i.io, %i.ir
  store i32 %i.is, ptr %i.iq, align 4, !tbaa !40
  %i.it = load i32, ptr %2, align 8               ; 2 uses
  %10 = and i32 %i.it, -2
  %i.iu = add i32 %10, 2
  %11 = and i32 %i.it, 1
  %12 = or disjoint i32 %i.iu, %11
  store i32 %12, ptr %2, align 8
  store ptr %i.en, ptr %i.ih, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ih, i64 8
  store ptr %i.eq, ptr %.sroa.6.0..sroa_idx, align 8
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ih, i64 16
  store i32 0, ptr %i.iv, align 8, !tbaa !40
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit.loopexit: ; preds = %.lr.ph.i.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  %.pre78 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !40
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit.loopexit, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i
  %i.iw = phi i32 [ 0, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i ], [ %.pre78, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit.loopexit ] ; 2 uses
  %i.ix = load i8, ptr %3, align 1, !tbaa !312, !range !153, !noundef !154
  %i.iy = trunc nuw i8 %i.ix to i1
  %i.iz = load i32, ptr %i.em, align 4, !tbaa !40 ; 2 uses
  %i.ja = icmp slt i32 %i.iz, %i.iw
  %i.jb = icmp sgt i32 %i.iz, %i.iw
  %i.jc = select i1 %i.iy, i1 %i.ja, i1 %i.jb
  br i1 %i.jc, label %bb.q, label %_ZSt25__unguarded_linear_insertIPN4llvm3cfg6UpdateIPNS0_10BasicBlockEEEN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_15LegalizeUpdatesIS4_EEvNS0_8ArrayRefINS2_IT_EEEERNS0_15SmallVectorImplISD_EEbbEUlRKS5_SJ_E_EEEvSC_T0_.exit

bb.q:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.09.i, ptr noundef nonnull align 8 dereferenceable(16) %.0.i, i64 16, i1 false), !tbaa.struct !316
  br label %bb.h, !llvm.loop !22

_ZSt25__unguarded_linear_insertIPN4llvm3cfg6UpdateIPNS0_10BasicBlockEEEN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_15LegalizeUpdatesIS4_EEvNS0_8ArrayRefINS2_IT_EEEERNS0_15SmallVectorImplISD_EEbbEUlRKS5_SJ_E_EEEvSC_T0_.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit
  store ptr %.sroa.0.0.copyload.i, ptr %.09.i, align 8, !tbaa !43
  %.sroa.5.0..09.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.09.i, i64 8
  store i64 %.sroa.5.0.copyload.i, ptr %.sroa.5.0..09.sroa_idx.i, align 8, !tbaa !272
  br label %bb.r

bb.r:                                             ; preds = %_ZSt13move_backwardIPN4llvm3cfg6UpdateIPNS0_10BasicBlockEEES6_ET0_T_S8_S7_.exit, %_ZSt25__unguarded_linear_insertIPN4llvm3cfg6UpdateIPNS0_10BasicBlockEEEN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_15LegalizeUpdatesIS4_EEvNS0_8ArrayRefINS2_IT_EEEERNS0_15SmallVectorImplISD_EEbbEUlRKS5_SJ_E_EEEvSC_T0_.exit
  %.0 = getelementptr inbounds nuw i8, ptr %.068, i64 16 ; 2 uses
  %.not = icmp eq ptr %.0, %1
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !1333

.loopexit:                                        ; preds = %bb.r, %.preheader, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZSt26__unguarded_insertion_sortIPN4llvm3cfg6UpdateIPNS0_10BasicBlockEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_15LegalizeUpdatesIS4_EEvNS0_8ArrayRefINS2_IT_EEEERNS0_15SmallVectorImplISD_EEbbEUlRKS5_SJ_E_EEEvSC_SC_T0_(ptr noundef %0, ptr noundef %1, ptr %2, ptr %3) local_unnamed_addr #4 comdat {
bb.a:
  %.not54 = icmp eq ptr %0, %1
  br i1 %.not54, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 4 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZSt25__unguarded_linear_insertIPN4llvm3cfg6UpdateIPNS0_10BasicBlockEEEN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_15LegalizeUpdatesIS4_EEvNS0_8ArrayRefINS2_IT_EEEERNS0_15SmallVectorImplISD_EEbbEUlRKS5_SJ_E_EEEvSC_T0_.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZSt25__unguarded_linear_insertIPN4llvm3cfg6UpdateIPNS0_10BasicBlockEEEN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_15LegalizeUpdatesIS4_EEvNS0_8ArrayRefINS2_IT_EEEERNS0_15SmallVectorImplISD_EEbbEUlRKS5_SJ_E_EEEvSC_T0_.exit
  %.055 = phi ptr [ %0, %.lr.ph ], [ %i.hx, %_ZSt25__unguarded_linear_insertIPN4llvm3cfg6UpdateIPNS0_10BasicBlockEEEN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_15LegalizeUpdatesIS4_EEvNS0_8ArrayRefINS2_IT_EEEERNS0_15SmallVectorImplISD_EEbbEUlRKS5_SJ_E_EEEvSC_T0_.exit ] ; 4 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %.055, align 8, !tbaa !43 ; 5 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.055, i64 8
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !272 ; 2 uses
  %i.e = and i64 %.sroa.5.0.copyload.i, -8        ; 2 uses
  %i.f = inttoptr i64 %i.e to ptr                 ; 3 uses
  %i.g = ptrtoint ptr %.sroa.0.0.copyload.i to i64
  %i.h = mul i64 %i.g, -4658895280553007687       ; 2 uses
  %i.i = lshr i64 %i.h, 31
  %i.j = xor i64 %i.i, %i.h
  %i.k = mul i64 %i.e, -4658895280553007687       ; 2 uses
  %i.l = lshr i64 %i.k, 31
  %i.m = xor i64 %i.l, %i.k
  %i.n = shl i64 %i.j, 32
  %i.o = and i64 %i.m, 4294967295
  %i.p = or disjoint i64 %i.o, %i.n
  %i.q = mul i64 %i.p, -4658895280553007687       ; 2 uses
  %i.r = lshr i64 %i.q, 31
  %i.s = xor i64 %i.r, %i.q
  %i.t = trunc i64 %i.s to i32                    ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.l, %bb.b
  %.09.i = phi ptr [ %.055, %bb.b ], [ %.0.i, %bb.l ] ; 5 uses
  %.0.i = getelementptr inbounds i8, ptr %.09.i, i64 -16 ; 3 uses
  %i.u = load i32, ptr %2, align 8, !noalias !1355 ; 3 uses
  %i.v = and i32 %i.u, 1                          ; 2 uses
  %.not.i.i.i.i11 = icmp eq i32 %i.v, 0           ; 3 uses
  %i.w = load ptr, ptr %i.a, align 8, !noalias !1355 ; 2 uses
  %i.x = load ptr, ptr %i.b, align 8, !noalias !1355 ; 2 uses
  %i.y = load i32, ptr %i.c, align 8, !noalias !1355 ; 2 uses
  %.sink2.i.i.i.i12 = select i1 %.not.i.i.i.i11, ptr %i.w, ptr %i.a ; 3 uses
  %.sink1.i.i.i.i13 = select i1 %.not.i.i.i.i11, ptr %i.x, ptr %i.d ; 3 uses
  %.sink.i.i.i.i14 = select i1 %.not.i.i.i.i11, i32 %i.y, i32 4 ; 4 uses
  %i.z = icmp eq i32 %.sink.i.i.i.i14, 0
  br i1 %i.z, label %.loopexit.i15, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = add i32 %.sink.i.i.i.i14, -1            ; 2 uses
  %i.ab = and i32 %i.aa, %i.t                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i.i12, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i13, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !40
  %i.ah = and i32 %i.ab, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i.i30, label %.loopexit.i15, !prof !41

.lr.ph.i.i30:                                     ; preds = %bb.d, %bb.e
  %i.ak = phi ptr [ %i.au, %bb.e ], [ %i.ad, %bb.d ] ; 3 uses
  %.024.i.i31 = phi i32 [ %i.as, %bb.e ], [ %i.ab, %bb.d ]
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !302
  %i.am = icmp eq ptr %.sroa.0.0.copyload.i, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = icmp eq ptr %i.ao, %i.f
  %i.aq = select i1 %i.am, i1 %i.ap, i1 false
  br i1 %i.aq, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit32, label %bb.e, !prof !44

bb.e:                                             ; preds = %.lr.ph.i.i30
  %i.ar = add nuw i32 %.024.i.i31, 1
  %i.as = and i32 %i.ar, %i.aa                    ; 3 uses
  %i.at = zext i32 %i.as to i64                   ; 2 uses
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i.i12, i64 %i.at ; 2 uses
  %i.av = lshr i64 %i.at, 5
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i13, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !40
  %i.ay = and i32 %i.as, 31
  %i.az = lshr i32 %i.ax, %i.ay
  %i.ba = trunc i32 %i.az to i1
  br i1 %i.ba, label %.lr.ph.i.i30, label %.loopexit.i15, !prof !45, !llvm.loop !16

.loopexit.i15:                                    ; preds = %bb.e, %bb.d, %bb.c
  %.lcssa28.sink.i.ph.i16 = phi ptr [ %i.ad, %bb.d ], [ null, %bb.c ], [ %i.au, %bb.e ]
  %i.bb = shl i32 %i.u, 1
  %i.bc = and i32 %i.bb, -4
  %i.bd = add i32 %i.bc, 4
  %i.be = mul i32 %.sink.i.i.i.i14, 3
  %.not.i.i17 = icmp ult i32 %i.bd, %i.be
  br i1 %.not.i.i17, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i23, label %bb.f, !prof !44

bb.f:                                             ; preds = %.loopexit.i15
  %i.bf = shl i32 %.sink.i.i.i.i14, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef %i.bf)
  %i.bg = load i32, ptr %2, align 8, !noalias !1356
  %i.bh = and i32 %i.bg, 1
  %.not.i.i.i33 = icmp eq i32 %i.bh, 0            ; 3 uses
  %i.bi = load ptr, ptr %i.a, align 8, !noalias !1356
  %i.bj = load ptr, ptr %i.b, align 8, !noalias !1356
  %i.bk = load i32, ptr %i.c, align 8, !noalias !1356
  %.sink2.i.i.i34 = select i1 %.not.i.i.i33, ptr %i.bi, ptr %i.a ; 5 uses
  %.sink1.i.i.i35 = select i1 %.not.i.i.i33, ptr %i.bj, ptr %i.d ; 5 uses
  %.sink.i.i.i36 = select i1 %.not.i.i.i33, i32 %i.bk, i32 4 ; 2 uses
  %i.bl = icmp ne i32 %.sink.i.i.i36, 0
  tail call void @llvm.assume(i1 %i.bl)
  %i.bm = add i32 %.sink.i.i.i36, -1              ; 2 uses
  %i.bn = and i32 %i.bm, %i.t                     ; 3 uses
  %i.bo = zext i32 %i.bn to i64                   ; 2 uses
  %i.bp = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i34, i64 %i.bo ; 2 uses
  %i.bq = lshr i64 %i.bo, 5
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i35, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !40
  %i.bt = and i32 %i.bn, 31
  %i.bu = lshr i32 %i.bs, %i.bt
  %i.bv = trunc i32 %i.bu to i1
  br i1 %i.bv, label %.lr.ph.i39, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i23, !prof !41

.lr.ph.i39:                                       ; preds = %bb.f, %bb.g
  %i.bw = phi ptr [ %i.cg, %bb.g ], [ %i.bp, %bb.f ] ; 3 uses
  %.024.i40 = phi i32 [ %i.ce, %bb.g ], [ %i.bn, %bb.f ]
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !302
  %i.by = icmp eq ptr %.sroa.0.0.copyload.i, %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = icmp eq ptr %i.ca, %i.f
  %i.cc = select i1 %i.by, i1 %i.cb, i1 false
  br i1 %i.cc, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i23, label %bb.g, !prof !44

bb.g:                                             ; preds = %.lr.ph.i39
  %i.cd = add nuw i32 %.024.i40, 1
  %i.ce = and i32 %i.cd, %i.bm                    ; 3 uses
  %i.cf = zext i32 %i.ce to i64                   ; 2 uses
  %i.cg = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i34, i64 %i.cf ; 2 uses
  %i.ch = lshr i64 %i.cf, 5
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i35, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !40
  %i.ck = and i32 %i.ce, 31
  %i.cl = lshr i32 %i.cj, %i.ck
  %i.cm = trunc i32 %i.cl to i1
  br i1 %i.cm, label %.lr.ph.i39, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i23, !prof !45, !llvm.loop !16

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i23: ; preds = %bb.g, %.lr.ph.i39, %bb.f, %.loopexit.i15
  %.pre-phi66 = phi ptr [ %.sink2.i.i.i.i12, %.loopexit.i15 ], [ %.sink2.i.i.i34, %bb.f ], [ %.sink2.i.i.i34, %.lr.ph.i39 ], [ %.sink2.i.i.i34, %bb.g ]
  %.pre-phi = phi ptr [ %.sink1.i.i.i.i13, %.loopexit.i15 ], [ %.sink1.i.i.i35, %bb.f ], [ %.sink1.i.i.i35, %.lr.ph.i39 ], [ %.sink1.i.i.i35, %bb.g ]
  %i.cn = phi ptr [ %.lcssa28.sink.i.ph.i16, %.loopexit.i15 ], [ %i.bp, %bb.f ], [ %i.cg, %bb.g ], [ %i.bw, %.lr.ph.i39 ] ; 5 uses
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = ptrtoint ptr %.pre-phi66 to i64
  %i.cq = sub i64 %i.co, %i.cp
  %i.cr = sdiv exact i64 %i.cq, 24                ; 2 uses
  %i.cs = trunc i64 %i.cr to i32
  %i.ct = and i32 %i.cs, 31
  %i.cu = shl nuw i32 1, %i.ct
  %i.cv = lshr i64 %i.cr, 5
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %.pre-phi, i64 %i.cv ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !40
  %i.cy = or i32 %i.cu, %i.cx
  store i32 %i.cy, ptr %i.cw, align 4, !tbaa !40
  %i.cz = load i32, ptr %2, align 8               ; 2 uses
  %4 = and i32 %i.cz, -2
  %i.da = add i32 %4, 2
  %5 = and i32 %i.cz, 1
  %6 = or disjoint i32 %i.da, %5
  store i32 %6, ptr %2, align 8
  store ptr %.sroa.0.0.copyload.i, ptr %i.cn, align 8
  %.sroa.646.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store ptr %i.f, ptr %.sroa.646.0..sroa_idx, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  store i32 0, ptr %i.db, align 8, !tbaa !40
  %.pre = load i32, ptr %2, align 8, !noalias !1357 ; 2 uses
  %.pre62 = load ptr, ptr %i.a, align 8, !noalias !1357
  %.pre63 = load ptr, ptr %i.b, align 8, !noalias !1357
  %.pre64 = load i32, ptr %i.c, align 8, !noalias !1357
  %.pre67 = and i32 %.pre, 1
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit32

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit32: ; preds = %.lr.ph.i.i30, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i23
  %.pre-phi68 = phi i32 [ %.pre67, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i23 ], [ %i.v, %.lr.ph.i.i30 ]
  %i.dc = phi i32 [ %.pre64, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i23 ], [ %i.y, %.lr.ph.i.i30 ]
  %i.dd = phi ptr [ %.pre63, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i23 ], [ %i.x, %.lr.ph.i.i30 ]
  %i.de = phi ptr [ %.pre62, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i23 ], [ %i.w, %.lr.ph.i.i30 ]
  %i.df = phi i32 [ %.pre, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i23 ], [ %i.u, %.lr.ph.i.i30 ]
  %.sroa.0.0.i26 = phi ptr [ %i.cn, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i23 ], [ %i.ak, %.lr.ph.i.i30 ]
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i26, i64 16
  %i.dh = load ptr, ptr %.0.i, align 8, !tbaa !291 ; 5 uses
  %i.di = getelementptr inbounds i8, ptr %.09.i, i64 -8
  %.0.copyload.i.i.i.i9.i.i.i = load i64, ptr %i.di, align 8
  %i.dj = and i64 %.0.copyload.i.i.i.i9.i.i.i, -8 ; 3 uses
  %i.dk = inttoptr i64 %i.dj to ptr               ; 3 uses
  %.not.i.i.i.i = icmp eq i32 %.pre-phi68, 0      ; 3 uses
  %.sink2.i.i.i.i = select i1 %.not.i.i.i.i, ptr %i.de, ptr %i.a ; 3 uses
  %.sink1.i.i.i.i = select i1 %.not.i.i.i.i, ptr %i.dd, ptr %i.d ; 3 uses
  %.sink.i.i.i.i = select i1 %.not.i.i.i.i, i32 %i.dc, i32 4 ; 4 uses
  %i.dl = icmp eq i32 %.sink.i.i.i.i, 0
  br i1 %i.dl, label %.loopexit.i, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit32
  %i.dm = add i32 %.sink.i.i.i.i, -1              ; 2 uses
  %i.dn = ptrtoint ptr %i.dh to i64
  %i.do = mul i64 %i.dn, -4658895280553007687     ; 2 uses
  %i.dp = lshr i64 %i.do, 31
  %i.dq = xor i64 %i.dp, %i.do
  %i.dr = mul i64 %i.dj, -4658895280553007687     ; 2 uses
  %i.ds = lshr i64 %i.dr, 31
  %i.dt = xor i64 %i.ds, %i.dr
  %i.du = shl i64 %i.dq, 32
  %i.dv = and i64 %i.dt, 4294967295
  %i.dw = or disjoint i64 %i.dv, %i.du
  %i.dx = mul i64 %i.dw, -4658895280553007687     ; 2 uses
  %i.dy = lshr i64 %i.dx, 31
  %i.dz = xor i64 %i.dy, %i.dx
  %i.ea = trunc i64 %i.dz to i32
  %i.eb = and i32 %i.dm, %i.ea                    ; 3 uses
  %i.ec = zext i32 %i.eb to i64                   ; 2 uses
  %i.ed = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i.i, i64 %i.ec ; 2 uses
  %i.ee = lshr i64 %i.ec, 5
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i, i64 %i.ee
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !40
  %i.eh = and i32 %i.eb, 31
  %i.ei = lshr i32 %i.eg, %i.eh
  %i.ej = trunc i32 %i.ei to i1
  br i1 %i.ej, label %.lr.ph.i.i, label %.loopexit.i, !prof !41

.lr.ph.i.i:                                       ; preds = %bb.h, %bb.i
  %i.ek = phi ptr [ %i.eu, %bb.i ], [ %i.ed, %bb.h ] ; 3 uses
  %.024.i.i = phi i32 [ %i.es, %bb.i ], [ %i.eb, %bb.h ]
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !302
  %i.em = icmp eq ptr %i.dh, %i.el
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.eo = load ptr, ptr %i.en, align 8
  %i.ep = icmp eq ptr %i.eo, %i.dk
  %i.eq = select i1 %i.em, i1 %i.ep, i1 false
  br i1 %i.eq, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit.loopexit, label %bb.i, !prof !44

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.er = add nuw i32 %.024.i.i, 1
  %i.es = and i32 %i.er, %i.dm                    ; 3 uses
  %i.et = zext i32 %i.es to i64                   ; 2 uses
  %i.eu = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i.i, i64 %i.et ; 2 uses
  %i.ev = lshr i64 %i.et, 5
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i, i64 %i.ev
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !40
  %i.ey = and i32 %i.es, 31
  %i.ez = lshr i32 %i.ex, %i.ey
  %i.fa = trunc i32 %i.ez to i1
  br i1 %i.fa, label %.lr.ph.i.i, label %.loopexit.i, !prof !45, !llvm.loop !16

.loopexit.i:                                      ; preds = %bb.i, %bb.h, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit32
  %.lcssa28.sink.i.ph.i = phi ptr [ %i.ed, %bb.h ], [ null, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit32 ], [ %i.eu, %bb.i ]
  %i.fb = shl i32 %i.df, 1
  %i.fc = and i32 %i.fb, -4
  %i.fd = add i32 %i.fc, 4
  %i.fe = mul i32 %.sink.i.i.i.i, 3
  %.not.i.i = icmp ult i32 %i.fd, %i.fe
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i, label %bb.j, !prof !44

bb.j:                                             ; preds = %.loopexit.i
  %i.ff = shl i32 %.sink.i.i.i.i, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef %i.ff)
  %i.fg = load i32, ptr %2, align 8, !noalias !1358
  %i.fh = and i32 %i.fg, 1
  %.not.i.i.i = icmp eq i32 %i.fh, 0              ; 3 uses
  %i.fi = load ptr, ptr %i.a, align 8, !noalias !1358
  %i.fj = load ptr, ptr %i.b, align 8, !noalias !1358
  %i.fk = load i32, ptr %i.c, align 8, !noalias !1358
  %.sink2.i.i.i = select i1 %.not.i.i.i, ptr %i.fi, ptr %i.a ; 5 uses
  %.sink1.i.i.i = select i1 %.not.i.i.i, ptr %i.fj, ptr %i.d ; 5 uses
  %.sink.i.i.i = select i1 %.not.i.i.i, i32 %i.fk, i32 4 ; 2 uses
  %i.fl = icmp ne i32 %.sink.i.i.i, 0
  tail call void @llvm.assume(i1 %i.fl)
  %i.fm = add i32 %.sink.i.i.i, -1                ; 2 uses
  %i.fn = ptrtoint ptr %i.dh to i64
  %i.fo = mul i64 %i.fn, -4658895280553007687     ; 2 uses
  %i.fp = lshr i64 %i.fo, 31
  %i.fq = xor i64 %i.fp, %i.fo
  %i.fr = mul i64 %i.dj, -4658895280553007687     ; 2 uses
  %i.fs = lshr i64 %i.fr, 31
  %i.ft = xor i64 %i.fs, %i.fr
  %i.fu = shl i64 %i.fq, 32
  %i.fv = and i64 %i.ft, 4294967295
  %i.fw = or disjoint i64 %i.fv, %i.fu
  %i.fx = mul i64 %i.fw, -4658895280553007687     ; 2 uses
  %i.fy = lshr i64 %i.fx, 31
  %i.fz = xor i64 %i.fy, %i.fx
  %i.ga = trunc i64 %i.fz to i32
  %i.gb = and i32 %i.fm, %i.ga                    ; 3 uses
  %i.gc = zext i32 %i.gb to i64                   ; 2 uses
  %i.gd = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i, i64 %i.gc ; 2 uses
  %i.ge = lshr i64 %i.gc, 5
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.ge
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !40
  %i.gh = and i32 %i.gb, 31
  %i.gi = lshr i32 %i.gg, %i.gh
  %i.gj = trunc i32 %i.gi to i1
  br i1 %i.gj, label %.lr.ph.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i, !prof !41

.lr.ph.i:                                         ; preds = %bb.j, %bb.k
  %i.gk = phi ptr [ %i.gu, %bb.k ], [ %i.gd, %bb.j ] ; 3 uses
  %.024.i = phi i32 [ %i.gs, %bb.k ], [ %i.gb, %bb.j ]
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !302
  %i.gm = icmp eq ptr %i.dh, %i.gl
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.go = load ptr, ptr %i.gn, align 8
  %i.gp = icmp eq ptr %i.go, %i.dk
  %i.gq = select i1 %i.gm, i1 %i.gp, i1 false
  br i1 %i.gq, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i, label %bb.k, !prof !44

bb.k:                                             ; preds = %.lr.ph.i
  %i.gr = add nuw i32 %.024.i, 1
  %i.gs = and i32 %i.gr, %i.fm                    ; 3 uses
  %i.gt = zext i32 %i.gs to i64                   ; 2 uses
  %i.gu = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i, i64 %i.gt ; 2 uses
  %i.gv = lshr i64 %i.gt, 5
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.gv
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !40
  %i.gy = and i32 %i.gs, 31
  %i.gz = lshr i32 %i.gx, %i.gy
  %i.ha = trunc i32 %i.gz to i1
  br i1 %i.ha, label %.lr.ph.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i, !prof !45, !llvm.loop !16

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i: ; preds = %bb.k, %.lr.ph.i, %bb.j, %.loopexit.i
  %.pre-phi70 = phi ptr [ %.sink2.i.i.i.i, %.loopexit.i ], [ %.sink2.i.i.i, %bb.j ], [ %.sink2.i.i.i, %.lr.ph.i ], [ %.sink2.i.i.i, %bb.k ]
  %.pre-phi69 = phi ptr [ %.sink1.i.i.i.i, %.loopexit.i ], [ %.sink1.i.i.i, %bb.j ], [ %.sink1.i.i.i, %.lr.ph.i ], [ %.sink1.i.i.i, %bb.k ]
  %i.hb = phi ptr [ %.lcssa28.sink.i.ph.i, %.loopexit.i ], [ %i.gd, %bb.j ], [ %i.gu, %bb.k ], [ %i.gk, %.lr.ph.i ] ; 4 uses
  %i.hc = ptrtoint ptr %i.hb to i64
  %i.hd = ptrtoint ptr %.pre-phi70 to i64
  %i.he = sub i64 %i.hc, %i.hd
  %i.hf = sdiv exact i64 %i.he, 24                ; 2 uses
  %i.hg = trunc i64 %i.hf to i32
  %i.hh = and i32 %i.hg, 31
  %i.hi = shl nuw i32 1, %i.hh
  %i.hj = lshr i64 %i.hf, 5
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %.pre-phi69, i64 %i.hj ; 2 uses
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !40
  %i.hm = or i32 %i.hi, %i.hl
  store i32 %i.hm, ptr %i.hk, align 4, !tbaa !40
  %i.hn = load i32, ptr %2, align 8               ; 2 uses
  %7 = and i32 %i.hn, -2
  %i.ho = add i32 %7, 2
  %8 = and i32 %i.hn, 1
  %9 = or disjoint i32 %i.ho, %8
  store i32 %9, ptr %2, align 8
  store ptr %i.dh, ptr %i.hb, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  store ptr %i.dk, ptr %.sroa.6.0..sroa_idx, align 8
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  store i32 0, ptr %i.hp, align 8, !tbaa !40
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit.loopexit: ; preds = %.lr.ph.i.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %.pre65 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !40
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit.loopexit, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i
  %i.hq = phi i32 [ 0, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit.i ], [ %.pre65, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit.loopexit ] ; 2 uses
  %i.hr = load i8, ptr %3, align 1, !tbaa !312, !range !153, !noundef !154
  %i.hs = trunc nuw i8 %i.hr to i1
  %i.ht = load i32, ptr %i.dg, align 4, !tbaa !40 ; 2 uses
  %i.hu = icmp slt i32 %i.ht, %i.hq
  %i.hv = icmp sgt i32 %i.ht, %i.hq
  %i.hw = select i1 %i.hs, i1 %i.hu, i1 %i.hv
  br i1 %i.hw, label %bb.l, label %_ZSt25__unguarded_linear_insertIPN4llvm3cfg6UpdateIPNS0_10BasicBlockEEEN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_15LegalizeUpdatesIS4_EEvNS0_8ArrayRefINS2_IT_EEEERNS0_15SmallVectorImplISD_EEbbEUlRKS5_SJ_E_EEEvSC_T0_.exit

bb.l:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.09.i, ptr noundef nonnull align 8 dereferenceable(16) %.0.i, i64 16, i1 false), !tbaa.struct !316
  br label %bb.c, !llvm.loop !22

_ZSt25__unguarded_linear_insertIPN4llvm3cfg6UpdateIPNS0_10BasicBlockEEEN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_15LegalizeUpdatesIS4_EEvNS0_8ArrayRefINS2_IT_EEEERNS0_15SmallVectorImplISD_EEbbEUlRKS5_SJ_E_EEEvSC_T0_.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_.exit
  store ptr %.sroa.0.0.copyload.i, ptr %.09.i, align 8, !tbaa !43
  %.sroa.5.0..09.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.09.i, i64 8
  store i64 %.sroa.5.0.copyload.i, ptr %.sroa.5.0..09.sroa_idx.i, align 8, !tbaa !272
  %i.hx = getelementptr inbounds nuw i8, ptr %.055, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.hx, %1
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !1354
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS3_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPSB_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load i32, ptr %0, align 8, !noalias !1363 ; 2 uses
  %i.c = and i32 %i.b, 1                          ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.c, 0               ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !noalias !1363 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !noalias !1363 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i32, ptr %i.h, align 8, !noalias !1363
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %.sink2.i.i.i = select i1 %.not.i.i.i, ptr %i.e, ptr %i.d ; 2 uses
  %.sink1.i.i.i = select i1 %.not.i.i.i, ptr %i.g, ptr %i.j ; 2 uses
  %.sink.i.i.i = select i1 %.not.i.i.i, i32 %i.i, i32 4 ; 4 uses
  %i.k = icmp eq i32 %.sink.i.i.i, 0
  br i1 %i.k, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = add i32 %.sink.i.i.i, -1                 ; 2 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !43     ; 2 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = mul i64 %i.n, -4658895280553007687       ; 2 uses
  %i.p = lshr i64 %i.o, 31
  %i.q = xor i64 %i.p, %i.o
  %i.r = trunc i64 %i.q to i32
  %i.s = and i32 %i.l, %i.r                       ; 3 uses
  %i.t = zext i32 %i.s to i64                     ; 2 uses
  %i.u = getelementptr inbounds nuw [72 x i8], ptr %.sink2.i.i.i, i64 %i.t ; 2 uses
  %i.v = lshr i64 %i.t, 5
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !40
  %i.y = and i32 %i.s, 31
  %i.z = lshr i32 %i.x, %i.y
  %i.aa = trunc i32 %i.z to i1
  br i1 %i.aa, label %.lr.ph.i, label %.loopexit, !prof !41

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.ab = phi ptr [ %i.ah, %bb.c ], [ %i.u, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.af, %bb.c ], [ %i.s, %bb.b ]
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !43
  %i.ad = icmp eq ptr %i.m, %i.ac
  br i1 %i.ad, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS3_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E15LookupBucketForIS3_EEbRKT_RPSB_.exit, label %bb.c, !prof !44

bb.c:                                             ; preds = %.lr.ph.i
  %i.ae = add nuw i32 %.024.i, 1
  %i.af = and i32 %i.ae, %i.l                     ; 3 uses
  %i.ag = zext i32 %i.af to i64                   ; 2 uses
  %i.ah = getelementptr inbounds nuw [72 x i8], ptr %.sink2.i.i.i, i64 %i.ag ; 2 uses
  %i.ai = lshr i64 %i.ag, 5
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !40
  %i.al = and i32 %i.af, 31
  %i.am = lshr i32 %i.ak, %i.al
  %i.an = trunc i32 %i.am to i1
  br i1 %i.an, label %.lr.ph.i, label %.loopexit, !prof !45, !llvm.loop !23

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.u, %bb.b ], [ null, %bb.a ], [ %i.ah, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !318
  %i.ao = shl i32 %i.b, 1
  %i.ap = and i32 %i.ao, -4
  %i.aq = add i32 %i.ap, 4
  %i.ar = mul i32 %.sink.i.i.i, 3
  %.not.i = icmp ult i32 %i.aq, %i.ar
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS3_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E22findBucketForInsertionIS3_EEPSB_RKT_SF_.exit, label %bb.d, !prof !44

bb.d:                                             ; preds = %.loopexit
  %i.as = shl i32 %.sink.i.i.i, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS3_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.as)
  %i.at = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS3_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E15LookupBucketForIS3_EEbRKT_RPSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load i32, ptr %0, align 8
  %.pre5.i = load ptr, ptr %i.a, align 8, !tbaa !318
  %.pre6.i = and i32 %.pre.i, 1
  %.pre = load ptr, ptr %i.f, align 8
  %.pre16 = load ptr, ptr %i.d, align 8
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS3_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E22findBucketForInsertionIS3_EEPSB_RKT_SF_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS3_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E22findBucketForInsertionIS3_EEPSB_RKT_SF_.exit: ; preds = %.loopexit, %bb.d
  %i.au = phi ptr [ %.pre16, %bb.d ], [ %i.e, %.loopexit ]
  %i.av = phi ptr [ %.pre, %bb.d ], [ %i.g, %.loopexit ]
  %.pre-phi.i = phi i32 [ %.pre6.i, %bb.d ], [ %i.c, %.loopexit ]
  %i.aw = phi ptr [ %.pre5.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 11 uses
  %.not.i.i.i.i = icmp eq i32 %.pre-phi.i, 0      ; 2 uses
  %i.ax = select i1 %.not.i.i.i.i, ptr %i.av, ptr %i.j
  %i.ay = select i1 %.not.i.i.i.i, ptr %i.au, ptr %i.d
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = sdiv exact i64 %i.bb, 72                ; 2 uses
  %i.bd = trunc i64 %i.bc to i32
  %i.be = and i32 %i.bd, 31
  %i.bf = shl nuw i32 1, %i.be
  %i.bg = lshr i64 %i.bc, 5
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.bg ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !40
  %i.bj = or i32 %i.bf, %i.bi
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !40
  %i.bk = load i32, ptr %0, align 8               ; 2 uses
  %2 = and i32 %i.bk, -2
  %i.bl = add i32 %2, 2
  %3 = and i32 %i.bk, 1
  %4 = or disjoint i32 %i.bl, %3
  store i32 %4, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bm = load ptr, ptr %1, align 8, !tbaa !43
  store ptr %i.bm, ptr %i.aw, align 8, !tbaa !43
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bo, i8 0, i64 48, i1 false)
  %i.bp = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  store ptr %i.bp, ptr %i.bn, align 8, !tbaa !148
  %i.bq = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store i32 0, ptr %i.bq, align 8, !tbaa !147
  %i.br = getelementptr inbounds nuw i8, ptr %i.aw, i64 20
  store i32 2, ptr %i.br, align 4, !tbaa !163
  %.ptr.1.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  %i.bs = getelementptr inbounds nuw i8, ptr %i.aw, i64 56
  store ptr %i.bs, ptr %.ptr.1.i, align 8, !tbaa !148
  %i.bt = getelementptr inbounds nuw i8, ptr %i.aw, i64 52
  store i32 2, ptr %i.bt, align 4, !tbaa !163
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS3_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E15LookupBucketForIS3_EEbRKT_RPSB_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS3_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E15LookupBucketForIS3_EEbRKT_RPSB_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS3_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E22findBucketForInsertionIS3_EEPSB_RKT_SF_.exit
  %.sroa.0.0 = phi ptr [ %i.aw, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS3_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E22findBucketForInsertionIS3_EEPSB_RKT_SF_.exit ], [ %i.ab, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS3_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E22findBucketForInsertionIS3_EEPSB_RKT_SF_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS3_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E15LookupBucketForIS3_EEbRKT_RPSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !noalias !1368
  %i.b = and i32 %i.a, 1
  %.not.i.i = icmp eq i32 %i.b, 0                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !noalias !1368
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !noalias !1368
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i32, ptr %i.g, align 8, !noalias !1368
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 296
  %.sink2.i.i = select i1 %.not.i.i, ptr %i.d, ptr %i.c ; 2 uses
  %.sink1.i.i = select i1 %.not.i.i, ptr %i.f, ptr %i.i ; 2 uses
  %.sink.i.i = select i1 %.not.i.i, i32 %i.h, i32 4 ; 2 uses
  %i.j = icmp eq i32 %.sink.i.i, 0
  br i1 %i.j, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = add i32 %.sink.i.i, -1                   ; 2 uses
  %i.l = load ptr, ptr %1, align 8, !tbaa !43     ; 2 uses
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = mul i64 %i.m, -4658895280553007687       ; 2 uses
  %i.o = lshr i64 %i.n, 31
  %i.p = xor i64 %i.o, %i.n
  %i.q = trunc i64 %i.p to i32
  %i.r = and i32 %i.k, %i.q                       ; 3 uses
  %i.s = zext i32 %i.r to i64                     ; 2 uses
  %i.t = getelementptr inbounds nuw [72 x i8], ptr %.sink2.i.i, i64 %i.s ; 2 uses
  %i.u = lshr i64 %i.s, 5
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !40
  %i.x = and i32 %i.r, 31
  %i.y = lshr i32 %i.w, %i.x
  %i.z = trunc i32 %i.y to i1
  br i1 %i.z, label %.lr.ph, label %.thread, !prof !41

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.aa = phi ptr [ %i.ag, %bb.c ], [ %i.t, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.ae, %bb.c ], [ %i.r, %bb.b ]
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !43
  %i.ac = icmp eq ptr %i.l, %i.ab                 ; 3 uses
  br i1 %i.ac, label %.thread, label %bb.c, !prof !44

bb.c:                                             ; preds = %.lr.ph
  %i.ad = add nuw i32 %.024, 1
  %i.ae = and i32 %i.ad, %i.k                     ; 3 uses
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  %i.ag = getelementptr inbounds nuw [72 x i8], ptr %.sink2.i.i, i64 %i.af ; 2 uses
  %i.ah = lshr i64 %i.af, 5
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !40
  %i.ak = and i32 %i.ae, 31
  %i.al = lshr i32 %i.aj, %i.ak
  %i.am = trunc i32 %i.al to i1
  br i1 %i.am, label %.lr.ph, label %.thread, !prof !45, !llvm.loop !23

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.t, %bb.b ], [ null, %bb.a ], [ %i.ag, %bb.c ], [ %i.aa, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ac, %bb.c ], [ %i.ac, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !318
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS3_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallDenseMap.202", align 8 ; 14 uses
  %i.a = icmp ult i32 %1, 5                       ; 2 uses
  br i1 %i.a, label %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS2_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE17roundUpNumBucketsEj.exit.thread, label %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS2_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE17roundUpNumBucketsEj.exit

_ZN4llvm13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS2_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE17roundUpNumBucketsEj.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 296
  br label %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS2_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEEC2EjNS_12DenseMapBaseISB_S2_S5_S7_SA_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS2_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE17roundUpNumBucketsEj.exit: ; preds = %bb.a
  %i.c = add i32 %1, -1
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = lshr i64 %i.d, 1
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 2
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 4
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 8
  %i.l = or i64 %i.k, %i.j                        ; 2 uses
  %i.m = lshr i64 %i.l, 16
  %i.n = or i64 %i.m, %i.l
  %i.o = trunc nuw i64 %i.n to i32
  %i.p = add i32 %i.o, 1
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.p, i32 64) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.q = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.r = mul nuw nsw i64 %i.q, 72                 ; 2 uses
  %i.s = add nuw nsw i64 %i.q, 31
  %i.t = lshr i64 %i.s, 3
  %i.u = and i64 %i.t, 1073741820                 ; 2 uses
  %i.v = add nuw nsw i64 %i.u, %i.r
  %i.w = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.v, i64 noundef 8) #17 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !272
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.r ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.y, ptr %i.z, align 8, !tbaa !272
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %.sroa.speculated.i, ptr %i.aa, align 8, !tbaa !272
  br label %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS2_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEEC2EjNS_12DenseMapBaseISB_S2_S5_S7_SA_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS2_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEEC2EjNS_12DenseMapBaseISB_S2_S5_S7_SA_E16ExactBucketCountE.exit: ; preds = %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS2_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE17roundUpNumBucketsEj.exit.thread, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS2_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE17roundUpNumBucketsEj.exit
  %.0.i4 = phi i32 [ 4, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS2_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE17roundUpNumBucketsEj.exit.thread ], [ %.sroa.speculated.i, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS2_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE17roundUpNumBucketsEj.exit ] ; 3 uses
  %.sink.i = phi i32 [ 1, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS2_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE17roundUpNumBucketsEj.exit.thread ], [ 0, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS2_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE17roundUpNumBucketsEj.exit ]
  %i.ab = phi i64 [ 4, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS2_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE17roundUpNumBucketsEj.exit.thread ], [ %i.u, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS2_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE17roundUpNumBucketsEj.exit ]
  %i.ac = phi ptr [ %i.b, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS2_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE17roundUpNumBucketsEj.exit.thread ], [ %i.y, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS2_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE17roundUpNumBucketsEj.exit ]
  store i32 %.sink.i, ptr %2, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ac, i8 0, i64 %i.ab, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS3_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E8moveFromERSC_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(304) %0)
  %i.ad = load i32, ptr %2, align 8               ; 2 uses
  %i.ae = and i32 %i.ad, 1
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS2_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE13maybeMoveFastEOSB_.exit.thread, label %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS2_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE13maybeMoveFastEOSB_.exit

_ZN4llvm13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS2_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE13maybeMoveFastEOSB_.exit.thread: ; preds = %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS2_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEEC2EjNS_12DenseMapBaseISB_S2_S5_S7_SA_E16ExactBucketCountE.exit
  store i32 %i.ad, ptr %0, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !tbaa.struct !1369
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 0, ptr %i.ah, align 8, !tbaa !272
  br label %bb.b

_ZN4llvm13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS2_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE13maybeMoveFastEOSB_.exit: ; preds = %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS2_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEEC2EjNS_12DenseMapBaseISB_S2_S5_S7_SA_E16ExactBucketCountE.exit
  br i1 %i.a, label %.thread.i, label %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS2_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE15allocateBucketsEj.exit.i

.thread.i:                                        ; preds = %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS2_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE13maybeMoveFastEOSB_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 296
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS3_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E24initWithExactBucketCountEj.exit

_ZN4llvm13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS2_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE15allocateBucketsEj.exit.i: ; preds = %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS2_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE13maybeMoveFastEOSB_.exit
  %i.aj = load i32, ptr %0, align 8
  %i.ak = and i32 %i.aj, -2
  store i32 %i.ak, ptr %0, align 8
  %i.al = zext i32 %.0.i4 to i64                  ; 2 uses
  %i.am = mul nuw nsw i64 %i.al, 72               ; 2 uses
  %i.an = add nuw nsw i64 %i.al, 31
  %i.ao = lshr i64 %i.an, 3
  %i.ap = and i64 %i.ao, 1073741820
  %i.aq = add nuw nsw i64 %i.ap, %i.am
  %i.ar = call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.aq, i64 noundef 8) #17 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !272
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.am ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.at, ptr %i.au, align 8, !tbaa !272
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.0.i4, ptr %i.av, align 8, !tbaa !272
  %.pre.i = load i32, ptr %0, align 8
  %.pre.fr.i = freeze i32 %.pre.i
  %i.aw = and i32 %.pre.fr.i, 1                   ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.aw, 0            ; 2 uses
  %i.ax = select i1 %.not.i.i.i.i, i32 %.0.i4, i32 4
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 296
  %spec.select.i = select i1 %.not.i.i.i.i, ptr %i.at, ptr %i.ay
  %i.az = zext i32 %i.ax to i64
  %i.ba = add nuw nsw i64 %i.az, 31
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = and i64 %i.bb, 1073741820
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS3_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E24initWithExactBucketCountEj.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS3_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E24initWithExactBucketCountEj.exit: ; preds = %.thread.i, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS2_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE15allocateBucketsEj.exit.i
  %.sink = phi i32 [ 1, %.thread.i ], [ %i.aw, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS2_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE15allocateBucketsEj.exit.i ]
  %i.bd = phi i64 [ 4, %.thread.i ], [ %i.bc, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockENS_9GraphDiffIS2_Lb0EE14DeletesInsertsELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE15allocateBucketsEj.exit.i ]
end_hunk_5
begin_hunk_6_@_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEZNS_16MemorySSAUpdater18applyInsertUpdatesENS_8ArrayRefINS_3cfg6UpdateIS3_EEEERNS_13DominatorTreeEPKNS_9GraphDiffIS3_Lb0EEEE8PredInfoLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SG_EEEES3_SG_SI_SL_E8moveFromERSM_:bb.a
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.dt, i64 noundef %i.dz, i64 noundef 8) #17
  br label %_ZN4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj2EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj2EED2Ev.exit.i.i

_ZN4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj2EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj2EED2Ev.exit.i.i: ; preds = %bb.j, %_ZN4llvm11SmallVectorIPNS_10BasicBlockELj2EED2Ev.exit.i.i.i
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !148 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %i.ed = icmp eq ptr %i.eb, %i.ec
  br i1 %i.ed, label %_ZN4llvm11SmallVectorIPNS_10BasicBlockELj2EED2Ev.exit.i1.i.i, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj2EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj2EED2Ev.exit.i.i
  tail call void @free(ptr noundef %i.eb) #17
  br label %_ZN4llvm11SmallVectorIPNS_10BasicBlockELj2EED2Ev.exit.i1.i.i

_ZN4llvm11SmallVectorIPNS_10BasicBlockELj2EED2Ev.exit.i1.i.i: ; preds = %bb.k, %_ZN4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj2EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj2EED2Ev.exit.i.i
  %i.ee = load i32, ptr %i.bn, align 4, !tbaa !275 ; 2 uses
  %i.ef = icmp eq i32 %i.ee, 0
  br i1 %i.ef, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEZNS_16MemorySSAUpdater18applyInsertUpdatesENS_8ArrayRefINS_3cfg6UpdateIS3_EEEERNS_13DominatorTreeEPKNS_9GraphDiffIS3_Lb0EEEE8PredInfoLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SG_EEEES3_SG_SI_SL_E8moveFromERSM_ENKUljE_clEj.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm11SmallVectorIPNS_10BasicBlockELj2EED2Ev.exit.i1.i.i
  %i.eg = load ptr, ptr %i.bg, align 8, !tbaa !276
  %i.eh = zext i32 %i.ee to i64                   ; 2 uses
  %i.ei = shl nuw nsw i64 %i.eh, 3
  %i.ej = add nuw nsw i64 %i.eh, 31
  %i.ek = lshr i64 %i.ej, 3
  %i.el = and i64 %i.ek, 1073741820
  %i.em = add nuw nsw i64 %i.el, %i.ei
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.eg, i64 noundef %i.em, i64 noundef 8) #17
  br label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEZNS_16MemorySSAUpdater18applyInsertUpdatesENS_8ArrayRefINS_3cfg6UpdateIS3_EEEERNS_13DominatorTreeEPKNS_9GraphDiffIS3_Lb0EEEE8PredInfoLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SG_EEEES3_SG_SI_SL_E8moveFromERSM_ENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEZNS_16MemorySSAUpdater18applyInsertUpdatesENS_8ArrayRefINS_3cfg6UpdateIS3_EEEERNS_13DominatorTreeEPKNS_9GraphDiffIS3_Lb0EEEE8PredInfoLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SG_EEEES3_SG_SI_SL_E8moveFromERSM_ENKUljE_clEj.exit: ; preds = %_ZN4llvm11SmallVectorIPNS_10BasicBlockELj2EED2Ev.exit.i1.i.i, %bb.l
  %i.en = add i32 %.0.i44, -1
  %i.eo = and i32 %i.en, %.0.i44                  ; 2 uses
  %.not11.i = icmp eq i32 %i.eo, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1381

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEZNS_16MemorySSAUpdater18applyInsertUpdatesENS_8ArrayRefINS_3cfg6UpdateIS3_EEEERNS_13DominatorTreeEPKNS_9GraphDiffIS3_Lb0EEEE8PredInfoLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SG_EEEES3_SG_SI_SL_E8moveFromERSM_ENKUljE_clEj.exit, %.lr.ph48
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.z
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEZNS_16MemorySSAUpdater18applyInsertUpdatesENS_8ArrayRefINS_3cfg6UpdateIS6_EEEERNS_13DominatorTreeEPKNS_9GraphDiffIS6_Lb0EEEE8PredInfoLj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SJ_EEEES6_SJ_SL_SO_E8moveFromERSP_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph48, !llvm.loop !1382

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEZNS_16MemorySSAUpdater18applyInsertUpdatesENS_8ArrayRefINS_3cfg6UpdateIS6_EEEERNS_13DominatorTreeEPKNS_9GraphDiffIS6_Lb0EEEE8PredInfoLj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SJ_EEEES6_SJ_SL_SO_E8moveFromERSP_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.val10.pre = load i32, ptr %1, align 8
  %.pre54 = load i32, ptr %0, align 8
  %.pre55 = and i32 %.pre54, 1
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEZNS_16MemorySSAUpdater18applyInsertUpdatesENS_8ArrayRefINS_3cfg6UpdateIS6_EEEERNS_13DominatorTreeEPKNS_9GraphDiffIS6_Lb0EEEE8PredInfoLj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SJ_EEEES6_SJ_SL_SO_E8moveFromERSP_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEZNS_16MemorySSAUpdater18applyInsertUpdatesENS_8ArrayRefINS_3cfg6UpdateIS6_EEEERNS_13DominatorTreeEPKNS_9GraphDiffIS6_Lb0EEEE8PredInfoLj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SJ_EEEES6_SJ_SL_SO_E8moveFromERSP_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEZNS_16MemorySSAUpdater18applyInsertUpdatesENS_8ArrayRefINS_3cfg6UpdateIS6_EEEERNS_13DominatorTreeEPKNS_9GraphDiffIS6_Lb0EEEE8PredInfoLj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SJ_EEEES6_SJ_SL_SO_E8moveFromERSP_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %.pre-phi = phi i32 [ %.pre55, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEZNS_16MemorySSAUpdater18applyInsertUpdatesENS_8ArrayRefINS_3cfg6UpdateIS6_EEEERNS_13DominatorTreeEPKNS_9GraphDiffIS6_Lb0EEEE8PredInfoLj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SJ_EEEES6_SJ_SL_SO_E8moveFromERSP_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.m, %bb.a ]
  %.val10 = phi i32 [ %.val10.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEZNS_16MemorySSAUpdater18applyInsertUpdatesENS_8ArrayRefINS_3cfg6UpdateIS6_EEEERNS_13DominatorTreeEPKNS_9GraphDiffIS6_Lb0EEEE8PredInfoLj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SJ_EEEES6_SJ_SL_SO_E8moveFromERSP_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.a, %bb.a ]
  %i.ep = and i32 %.val10, -2
  %i.eq = or disjoint i32 %.pre-phi, %i.ep
  store i32 %i.eq, ptr %0, align 8
  %i.er = load i32, ptr %1, align 8               ; 3 uses
  %i.es = and i32 %i.er, 1
  %.not.i.i15 = icmp eq i32 %i.es, 0
  br i1 %.not.i.i15, label %bb.m, label %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEZNS_16MemorySSAUpdater18applyInsertUpdatesENS_8ArrayRefINS_3cfg6UpdateIS2_EEEERNS_13DominatorTreeEPKNS_9GraphDiffIS2_Lb0EEEE8PredInfoLj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SF_EEE4killEv.exit

bb.m:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEZNS_16MemorySSAUpdater18applyInsertUpdatesENS_8ArrayRefINS_3cfg6UpdateIS6_EEEERNS_13DominatorTreeEPKNS_9GraphDiffIS6_Lb0EEEE8PredInfoLj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SJ_EEEES6_SJ_SL_SO_E8moveFromERSP_EUljE_EEvPKjjT_.exit
  %i.et = load i32, ptr %i.j, align 8, !tbaa !272 ; 2 uses
  %i.eu = icmp eq i32 %i.et, 0
  br i1 %i.eu, label %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEZNS_16MemorySSAUpdater18applyInsertUpdatesENS_8ArrayRefINS_3cfg6UpdateIS2_EEEERNS_13DominatorTreeEPKNS_9GraphDiffIS2_Lb0EEEE8PredInfoLj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SF_EEE4killEv.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ev = load ptr, ptr %i.c, align 8, !tbaa !272
  %i.ew = zext i32 %i.et to i64                   ; 2 uses
  %i.ex = mul nuw nsw i64 %i.ew, 120
  %i.ey = add nuw nsw i64 %i.ew, 31
  %i.ez = lshr i64 %i.ey, 3
  %i.fa = and i64 %i.ez, 1073741820
  %i.fb = add nuw nsw i64 %i.fa, %i.ex
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ev, i64 noundef %i.fb, i64 noundef 8) #17
  %.pre.i = load i32, ptr %1, align 8
  br label %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEZNS_16MemorySSAUpdater18applyInsertUpdatesENS_8ArrayRefINS_3cfg6UpdateIS2_EEEERNS_13DominatorTreeEPKNS_9GraphDiffIS2_Lb0EEEE8PredInfoLj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SF_EEE4killEv.exit

_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEZNS_16MemorySSAUpdater18applyInsertUpdatesENS_8ArrayRefINS_3cfg6UpdateIS2_EEEERNS_13DominatorTreeEPKNS_9GraphDiffIS2_Lb0EEEE8PredInfoLj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_SF_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEZNS_16MemorySSAUpdater18applyInsertUpdatesENS_8ArrayRefINS_3cfg6UpdateIS6_EEEERNS_13DominatorTreeEPKNS_9GraphDiffIS6_Lb0EEEE8PredInfoLj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SJ_EEEES6_SJ_SL_SO_E8moveFromERSP_EUljE_EEvPKjjT_.exit, %bb.m, %bb.n
  %i.fc = phi i32 [ %i.er, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEZNS_16MemorySSAUpdater18applyInsertUpdatesENS_8ArrayRefINS_3cfg6UpdateIS6_EEEERNS_13DominatorTreeEPKNS_9GraphDiffIS6_Lb0EEEE8PredInfoLj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SJ_EEEES6_SJ_SL_SO_E8moveFromERSP_EUljE_EEvPKjjT_.exit ], [ %i.er, %bb.m ], [ %.pre.i, %bb.n ]
  %i.fd = and i32 %i.fc, -2
  store i32 %i.fd, ptr %1, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load i32, ptr %0, align 8, !noalias !1387 ; 2 uses
  %i.c = and i32 %i.b, 1                          ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.c, 0               ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !noalias !1387 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !noalias !1387 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i32, ptr %i.h, align 8, !noalias !1387
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %.sink2.i.i.i = select i1 %.not.i.i.i, ptr %i.e, ptr %i.d ; 2 uses
  %.sink1.i.i.i = select i1 %.not.i.i.i, ptr %i.g, ptr %i.j ; 2 uses
  %.sink.i.i.i = select i1 %.not.i.i.i, i32 %i.i, i32 4 ; 4 uses
  %i.k = icmp eq i32 %.sink.i.i.i, 0
  br i1 %i.k, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = add i32 %.sink.i.i.i, -1                 ; 2 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !302    ; 2 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = mul i64 %i.n, -4658895280553007687       ; 2 uses
  %i.p = lshr i64 %i.o, 31
  %i.q = xor i64 %i.p, %i.o
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !313  ; 2 uses
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = mul i64 %i.t, -4658895280553007687       ; 2 uses
  %i.v = lshr i64 %i.u, 31
  %i.w = xor i64 %i.v, %i.u
  %i.x = shl i64 %i.q, 32
  %i.y = and i64 %i.w, 4294967295
  %i.z = or disjoint i64 %i.y, %i.x
  %i.aa = mul i64 %i.z, -4658895280553007687      ; 2 uses
  %i.ab = lshr i64 %i.aa, 31
  %i.ac = xor i64 %i.ab, %i.aa
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = and i32 %i.l, %i.ad                     ; 3 uses
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i, i64 %i.af ; 2 uses
  %i.ah = lshr i64 %i.af, 5
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !40
  %i.ak = and i32 %i.ae, 31
  %i.al = lshr i32 %i.aj, %i.ak
  %i.am = trunc i32 %i.al to i1
  br i1 %i.am, label %.lr.ph.i, label %.loopexit, !prof !41

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.an = phi ptr [ %i.ax, %bb.c ], [ %i.ag, %bb.b ] ; 3 uses
  %.024.i = phi i32 [ %i.av, %bb.c ], [ %i.ae, %bb.b ]
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !302
  %i.ap = icmp eq ptr %i.m, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = icmp eq ptr %i.s, %i.ar
  %i.at = select i1 %i.ap, i1 %i.as, i1 false
  br i1 %i.at, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E15LookupBucketForIS5_EEbRKT_RPSA_.exit, label %bb.c, !prof !44

bb.c:                                             ; preds = %.lr.ph.i
  %i.au = add nuw i32 %.024.i, 1
  %i.av = and i32 %i.au, %i.l                     ; 3 uses
  %i.aw = zext i32 %i.av to i64                   ; 2 uses
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i.i, i64 %i.aw ; 2 uses
  %i.ay = lshr i64 %i.aw, 5
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !40
  %i.bb = and i32 %i.av, 31
  %i.bc = lshr i32 %i.ba, %i.bb
  %i.bd = trunc i32 %i.bc to i1
  br i1 %i.bd, label %.lr.ph.i, label %.loopexit, !prof !45, !llvm.loop !16

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.ag, %bb.b ], [ null, %bb.a ], [ %i.ax, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !315
  %i.be = shl i32 %i.b, 1
  %i.bf = and i32 %i.be, -4
  %i.bg = add i32 %i.bf, 4
  %i.bh = mul i32 %.sink.i.i.i, 3
  %.not.i = icmp ult i32 %i.bg, %i.bh
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit, label %bb.d, !prof !44

bb.d:                                             ; preds = %.loopexit
  %i.bi = shl i32 %.sink.i.i.i, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.bi)
  %i.bj = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E15LookupBucketForIS5_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load i32, ptr %0, align 8
  %.pre5.i = load ptr, ptr %i.a, align 8, !tbaa !315
  %.pre6.i = and i32 %.pre.i, 1
  %.pre = load ptr, ptr %i.f, align 8
  %.pre16 = load ptr, ptr %i.d, align 8
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit: ; preds = %.loopexit, %bb.d
  %i.bk = phi ptr [ %.pre16, %bb.d ], [ %i.e, %.loopexit ]
  %i.bl = phi ptr [ %.pre, %bb.d ], [ %i.g, %.loopexit ]
  %.pre-phi.i = phi i32 [ %.pre6.i, %bb.d ], [ %i.c, %.loopexit ]
  %i.bm = phi ptr [ %.pre5.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %.not.i.i.i.i = icmp eq i32 %.pre-phi.i, 0      ; 2 uses
  %i.bn = select i1 %.not.i.i.i.i, ptr %i.bl, ptr %i.j
  %i.bo = select i1 %.not.i.i.i.i, ptr %i.bk, ptr %i.d
  %i.bp = ptrtoint ptr %i.bm to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = sdiv exact i64 %i.br, 24                ; 2 uses
  %i.bt = trunc i64 %i.bs to i32
  %i.bu = and i32 %i.bt, 31
  %i.bv = shl nuw i32 1, %i.bu
  %i.bw = lshr i64 %i.bs, 5
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.bw ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !40
  %i.bz = or i32 %i.bv, %i.by
  store i32 %i.bz, ptr %i.bx, align 4, !tbaa !40
  %i.ca = load i32, ptr %0, align 8               ; 2 uses
  %2 = and i32 %i.ca, -2
  %i.cb = add i32 %2, 2
  %3 = and i32 %i.ca, 1
  %4 = or disjoint i32 %i.cb, %3
  store i32 %4, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store i32 0, ptr %i.cc, align 8, !tbaa !40
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E15LookupBucketForIS5_EEbRKT_RPSA_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E15LookupBucketForIS5_EEbRKT_RPSA_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit
  %.sroa.0.0 = phi ptr [ %i.bm, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit ], [ %i.an, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPNS_10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E15LookupBucketForIS5_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !noalias !1392
  %i.b = and i32 %i.a, 1
  %.not.i.i = icmp eq i32 %i.b, 0                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !noalias !1392
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !noalias !1392
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i32, ptr %i.g, align 8, !noalias !1392
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.sink2.i.i = select i1 %.not.i.i, ptr %i.d, ptr %i.c ; 2 uses
  %.sink1.i.i = select i1 %.not.i.i, ptr %i.f, ptr %i.i ; 2 uses
  %.sink.i.i = select i1 %.not.i.i, i32 %i.h, i32 4 ; 2 uses
  %i.j = icmp eq i32 %.sink.i.i, 0
  br i1 %i.j, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = add i32 %.sink.i.i, -1                   ; 2 uses
  %i.l = load ptr, ptr %1, align 8, !tbaa !302    ; 2 uses
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = mul i64 %i.m, -4658895280553007687       ; 2 uses
  %i.o = lshr i64 %i.n, 31
  %i.p = xor i64 %i.o, %i.n
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !313  ; 2 uses
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = mul i64 %i.s, -4658895280553007687       ; 2 uses
  %i.u = lshr i64 %i.t, 31
  %i.v = xor i64 %i.u, %i.t
  %i.w = shl i64 %i.p, 32
  %i.x = and i64 %i.v, 4294967295
  %i.y = or disjoint i64 %i.x, %i.w
  %i.z = mul i64 %i.y, -4658895280553007687       ; 2 uses
  %i.aa = lshr i64 %i.z, 31
  %i.ab = xor i64 %i.aa, %i.z
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = and i32 %i.k, %i.ac                     ; 3 uses
  %i.ae = zext i32 %i.ad to i64                   ; 2 uses
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i, i64 %i.ae ; 2 uses
  %i.ag = lshr i64 %i.ae, 5
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !40
  %i.aj = and i32 %i.ad, 31
  %i.ak = lshr i32 %i.ai, %i.aj
  %i.al = trunc i32 %i.ak to i1
  br i1 %i.al, label %.lr.ph, label %.thread, !prof !41

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.am = phi ptr [ %i.aw, %bb.c ], [ %i.af, %bb.b ] ; 3 uses
  %.024 = phi i32 [ %i.au, %bb.c ], [ %i.ad, %bb.b ]
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !302
  %i.ao = icmp eq ptr %i.l, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = icmp eq ptr %i.r, %i.aq
  %i.as = select i1 %i.ao, i1 %i.ar, i1 false     ; 3 uses
  br i1 %i.as, label %.thread, label %bb.c, !prof !44

bb.c:                                             ; preds = %.lr.ph
  %i.at = add nuw i32 %.024, 1
  %i.au = and i32 %i.at, %i.k                     ; 3 uses
  %i.av = zext i32 %i.au to i64                   ; 2 uses
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i.i, i64 %i.av ; 2 uses
  %i.ax = lshr i64 %i.av, 5
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !40
  %i.ba = and i32 %i.au, 31
  %i.bb = lshr i32 %i.az, %i.ba
  %i.bc = trunc i32 %i.bb to i1
  br i1 %i.bc, label %.lr.ph, label %.thread, !prof !45, !llvm.loop !16

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.af, %bb.b ], [ null, %bb.a ], [ %i.aw, %bb.c ], [ %i.am, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.as, %bb.c ], [ %i.as, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !315
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEZNS_16MemorySSAUpdater18applyInsertUpdatesENS_8ArrayRefINS_3cfg6UpdateIS3_EEEERNS_13DominatorTreeEPKNS_9GraphDiffIS3_Lb0EEEE8PredInfoLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SG_EEEES3_SG_SI_SL_E21eraseFromFilledBucketIZNSN_21eraseFromFilledBucketEPSL_EUlRSL_E_EEvSP_OT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1) unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !148  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZN4llvm11SmallVectorIPNS_10BasicBlockELj2EED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.d) #17
  br label %_ZN4llvm11SmallVectorIPNS_10BasicBlockELj2EED2Ev.exit.i.i

_ZN4llvm11SmallVectorIPNS_10BasicBlockELj2EED2Ev.exit.i.i: ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.h = load i32, ptr %i.g, align 4, !tbaa !275  ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_ZN4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj2EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj2EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorIPNS_10BasicBlockELj2EED2Ev.exit.i.i
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !276
  %i.k = zext i32 %i.h to i64                     ; 2 uses
  %i.l = shl nuw nsw i64 %i.k, 3
  %i.m = add nuw nsw i64 %i.k, 31
  %i.n = lshr i64 %i.m, 3
  %i.o = and i64 %i.n, 1073741820
  %i.p = add nuw nsw i64 %i.o, %i.l
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.j, i64 noundef %i.p, i64 noundef 8) #17
  br label %_ZN4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj2EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj2EED2Ev.exit.i

_ZN4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj2EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj2EED2Ev.exit.i: ; preds = %bb.c, %_ZN4llvm11SmallVectorIPNS_10BasicBlockELj2EED2Ev.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !148  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZN4llvm11SmallVectorIPNS_10BasicBlockELj2EED2Ev.exit.i1.i, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj2EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj2EED2Ev.exit.i
  tail call void @free(ptr noundef %i.r) #17
  br label %_ZN4llvm11SmallVectorIPNS_10BasicBlockELj2EED2Ev.exit.i1.i

_ZN4llvm11SmallVectorIPNS_10BasicBlockELj2EED2Ev.exit.i1.i: ; preds = %bb.d, %_ZN4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj2EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj2EED2Ev.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.v = load i32, ptr %i.u, align 4, !tbaa !275  ; 2 uses
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %_ZZN4llvm16MemorySSAUpdater18applyInsertUpdatesENS_8ArrayRefINS_3cfg6UpdateIPNS_10BasicBlockEEEEERNS_13DominatorTreeEPKNS_9GraphDiffIS5_Lb0EEEEN8PredInfoD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm11SmallVectorIPNS_10BasicBlockELj2EED2Ev.exit.i1.i
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !276
  %i.y = zext i32 %i.v to i64                     ; 2 uses
  %i.z = shl nuw nsw i64 %i.y, 3
  %i.aa = add nuw nsw i64 %i.y, 31
  %i.ab = lshr i64 %i.aa, 3
  %i.ac = and i64 %i.ab, 1073741820
  %i.ad = add nuw nsw i64 %i.ac, %i.z
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.x, i64 noundef %i.ad, i64 noundef 8) #17
  br label %_ZZN4llvm16MemorySSAUpdater18applyInsertUpdatesENS_8ArrayRefINS_3cfg6UpdateIPNS_10BasicBlockEEEEERNS_13DominatorTreeEPKNS_9GraphDiffIS5_Lb0EEEEN8PredInfoD2Ev.exit

_ZZN4llvm16MemorySSAUpdater18applyInsertUpdatesENS_8ArrayRefINS_3cfg6UpdateIPNS_10BasicBlockEEEEERNS_13DominatorTreeEPKNS_9GraphDiffIS5_Lb0EEEEN8PredInfoD2Ev.exit: ; preds = %_ZN4llvm11SmallVectorIPNS_10BasicBlockELj2EED2Ev.exit.i1.i, %bb.e
  %.val.i = load i32, ptr %0, align 8             ; 2 uses
  %i.ae = add i32 %.val.i, -2
  store i32 %i.ae, ptr %0, align 8
  %i.af = and i32 %.val.i, 1
  %.not.i.i.i = icmp eq i32 %i.af, 0              ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = select i1 %.not.i.i.i, ptr %i.ah, ptr %i.ag ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = select i1 %.not.i.i.i, ptr %i.al, ptr %i.aj ; 3 uses
  %i.an = getelementptr i8, ptr %0, i64 24
  %.val34 = load i32, ptr %i.an, align 8
  %i.ao = add i32 %.val34, -1
  %i.ap = select i1 %.not.i.i.i, i32 %i.ao, i32 3 ; 4 uses
  %i.aq = ptrtoint ptr %1 to i64
  %i.ar = ptrtoint ptr %i.ai to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = sdiv exact i64 %i.as, 120
  %i.au = trunc i64 %i.at to i32                  ; 3 uses
  %i.av = add i32 %i.au, 1
  %i.aw = and i32 %i.av, %i.ap                    ; 3 uses
  %i.ax = zext i32 %i.aw to i64                   ; 2 uses
  %i.ay = lshr i64 %i.ax, 5
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !40
  %i.bb = and i32 %i.aw, 31
  %i.bc = lshr i32 %i.ba, %i.bb
  %i.bd = trunc i32 %i.bc to i1
  br i1 %i.bd, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZZN4llvm16MemorySSAUpdater18applyInsertUpdatesENS_8ArrayRefINS_3cfg6UpdateIPNS_10BasicBlockEEEEERNS_13DominatorTreeEPKNS_9GraphDiffIS5_Lb0EEEEN8PredInfoD2Ev.exit, %_ZZN4llvm16MemorySSAUpdater18applyInsertUpdatesENS_8ArrayRefINS_3cfg6UpdateIPNS_10BasicBlockEEEEERNS_13DominatorTreeEPKNS_9GraphDiffIS5_Lb0EEEEN8PredInfoD2Ev.exit39
  %.pn = phi i64 [ %i.eb, %_ZZN4llvm16MemorySSAUpdater18applyInsertUpdatesENS_8ArrayRefINS_3cfg6UpdateIPNS_10BasicBlockEEEEERNS_13DominatorTreeEPKNS_9GraphDiffIS5_Lb0EEEEN8PredInfoD2Ev.exit39 ], [ %i.ax, %_ZZN4llvm16MemorySSAUpdater18applyInsertUpdatesENS_8ArrayRefINS_3cfg6UpdateIPNS_10BasicBlockEEEEERNS_13DominatorTreeEPKNS_9GraphDiffIS5_Lb0EEEEN8PredInfoD2Ev.exit ]
  %i.be = phi i32 [ %i.ea, %_ZZN4llvm16MemorySSAUpdater18applyInsertUpdatesENS_8ArrayRefINS_3cfg6UpdateIPNS_10BasicBlockEEEEERNS_13DominatorTreeEPKNS_9GraphDiffIS5_Lb0EEEEN8PredInfoD2Ev.exit39 ], [ %i.aw, %_ZZN4llvm16MemorySSAUpdater18applyInsertUpdatesENS_8ArrayRefINS_3cfg6UpdateIPNS_10BasicBlockEEEEERNS_13DominatorTreeEPKNS_9GraphDiffIS5_Lb0EEEEN8PredInfoD2Ev.exit ] ; 4 uses
  %.0334 = phi i32 [ %.2, %_ZZN4llvm16MemorySSAUpdater18applyInsertUpdatesENS_8ArrayRefINS_3cfg6UpdateIPNS_10BasicBlockEEEEERNS_13DominatorTreeEPKNS_9GraphDiffIS5_Lb0EEEEN8PredInfoD2Ev.exit39 ], [ %i.au, %_ZZN4llvm16MemorySSAUpdater18applyInsertUpdatesENS_8ArrayRefINS_3cfg6UpdateIPNS_10BasicBlockEEEEERNS_13DominatorTreeEPKNS_9GraphDiffIS5_Lb0EEEEN8PredInfoD2Ev.exit ] ; 3 uses
  %i.bf = getelementptr inbounds nuw [120 x i8], ptr %i.ai, i64 %.pn ; 17 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !43 ; 2 uses
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = mul i64 %i.bh, -4658895280553007687     ; 2 uses
  %i.bj = lshr i64 %i.bi, 31
  %i.bk = xor i64 %i.bj, %i.bi
  %i.bl = trunc i64 %i.bk to i32                  ; 2 uses
  %i.bm = sub i32 %.0334, %i.bl
end_hunk_6
