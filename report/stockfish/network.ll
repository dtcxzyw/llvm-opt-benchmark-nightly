Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stockfish/original/network?download=true
inline.NumInlined: 1222
inline.NumDeleted: 483
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 64
begin_hunk_0_@_ZNK9Stockfish4Eval4NNUE7NetworkINS1_19NetworkArchitectureILj128ELi15ELi32EEENS1_18FeatureTransformerILj128EEEE16get_content_hashEv:bb.a
  %i.wl = add nuw i64 %.09.i.i.i13.i.i, 8         ; 2 uses
  %niter66.next.7 = add nuw i64 %niter66, 8       ; 2 uses
  %niter66.ncmp.7 = icmp eq i64 %niter66.next.7, %unroll_iter65
  br i1 %niter66.ncmp.7, label %_ZNKSt4hashIN9Stockfish11FixedStringILm256EEEEclERKS2_.exit.loopexit.i16.i.i.unr-lcssa, label %.lr.ph.i.i.i12.i.i, !llvm.loop !1

_ZNKSt4hashIN9Stockfish11FixedStringILm256EEEEclERKS2_.exit.loopexit.i16.i.i.unr-lcssa: ; preds = %.lr.ph.i.i.i12.i.i
  %lcmp.mod62.not = icmp eq i64 %xtraiter60, 0
  br i1 %lcmp.mod62.not, label %_ZNKSt4hashIN9Stockfish11FixedStringILm256EEEEclERKS2_.exit.loopexit.i16.i.i, label %.lr.ph.i.i.i12.i.i.epil.preheader

.lr.ph.i.i.i12.i.i.epil.preheader:                ; preds = %_ZNKSt4hashIN9Stockfish11FixedStringILm256EEEEclERKS2_.exit.loopexit.i16.i.i.unr-lcssa, %.lr.ph.i.i.i12.i.i.preheader
  %.09.i.i.i13.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i12.i.i.preheader ], [ %i.wl, %_ZNKSt4hashIN9Stockfish11FixedStringILm256EEEEclERKS2_.exit.loopexit.i16.i.i.unr-lcssa ]
  %.078.i.i.i14.i.i.epil.init = phi i64 [ -3750763034362895579, %.lr.ph.i.i.i12.i.i.preheader ], [ %i.wk, %_ZNKSt4hashIN9Stockfish11FixedStringILm256EEEEclERKS2_.exit.loopexit.i16.i.i.unr-lcssa ]
  %lcmp.mod64 = icmp ne i64 %xtraiter60, 0
  tail call void @llvm.assume(i1 %lcmp.mod64)
  br label %.lr.ph.i.i.i12.i.i.epil

.lr.ph.i.i.i12.i.i.epil:                          ; preds = %.lr.ph.i.i.i12.i.i.epil, %.lr.ph.i.i.i12.i.i.epil.preheader
  %.09.i.i.i13.i.i.epil = phi i64 [ %i.wr, %.lr.ph.i.i.i12.i.i.epil ], [ %.09.i.i.i13.i.i.epil.init, %.lr.ph.i.i.i12.i.i.epil.preheader ] ; 2 uses
  %.078.i.i.i14.i.i.epil = phi i64 [ %i.wq, %.lr.ph.i.i.i12.i.i.epil ], [ %.078.i.i.i14.i.i.epil.init, %.lr.ph.i.i.i12.i.i.epil.preheader ]
  %epil.iter61 = phi i64 [ %epil.iter61.next, %.lr.ph.i.i.i12.i.i.epil ], [ 0, %.lr.ph.i.i.i12.i.i.epil.preheader ]
  %i.wm = getelementptr inbounds nuw i8, ptr %i.um, i64 %.09.i.i.i13.i.i.epil
  %i.wn = load i8, ptr %i.wm, align 1, !tbaa !95
  %i.wo = sext i8 %i.wn to i64
  %i.wp = xor i64 %.078.i.i.i14.i.i.epil, %i.wo
  %i.wq = mul i64 %i.wp, 1099511628211            ; 2 uses
  %i.wr = add nuw i64 %.09.i.i.i13.i.i.epil, 1
  %epil.iter61.next = add i64 %epil.iter61, 1     ; 2 uses
  %epil.iter61.cmp.not = icmp eq i64 %epil.iter61.next, %xtraiter60
  br i1 %epil.iter61.cmp.not, label %_ZNKSt4hashIN9Stockfish11FixedStringILm256EEEEclERKS2_.exit.loopexit.i16.i.i, label %.lr.ph.i.i.i12.i.i.epil, !llvm.loop !336

_ZNKSt4hashIN9Stockfish11FixedStringILm256EEEEclERKS2_.exit.loopexit.i16.i.i: ; preds = %.lr.ph.i.i.i12.i.i.epil, %_ZNKSt4hashIN9Stockfish11FixedStringILm256EEEEclERKS2_.exit.loopexit.i16.i.i.unr-lcssa
  %.lcssa = phi i64 [ %i.wk, %_ZNKSt4hashIN9Stockfish11FixedStringILm256EEEEclERKS2_.exit.loopexit.i16.i.i.unr-lcssa ], [ %i.wq, %.lr.ph.i.i.i12.i.i.epil ]
  %i.ws = add i64 %.lcssa, 2654435769
  br label %_ZN9Stockfish12hash_combineINS_4Eval4NNUE8EvalFileEEEvRmRKT_.exit

_ZN9Stockfish12hash_combineINS_4Eval4NNUE8EvalFileEEEvRmRKT_.exit: ; preds = %_ZN9Stockfish12hash_combineINS_11FixedStringILm256EEEEEvRmRKT_.exit10.i.i, %_ZNKSt4hashIN9Stockfish11FixedStringILm256EEEEclERKS2_.exit.loopexit.i16.i.i
  %.07.lcssa.i.i.i17.i.i = phi i64 [ -3750763031708459810, %_ZN9Stockfish12hash_combineINS_11FixedStringILm256EEEEEvRmRKT_.exit10.i.i ], [ %i.ws, %_ZNKSt4hashIN9Stockfish11FixedStringILm256EEEEclERKS2_.exit.loopexit.i16.i.i ]
  %i.wt = shl i64 %.07.lcssa.i.i.i.i.i, 6
  %i.wu = lshr i64 %.07.lcssa.i.i.i.i.i, 2
  %i.wv = add i64 %i.wu, %i.wt
  %i.ww = add i64 %i.wv, %.07.lcssa.i.i.i9.i.i
  %i.wx = xor i64 %i.ww, %.07.lcssa.i.i.i.i.i     ; 3 uses
  %i.wy = shl i64 %i.wx, 6
  %i.wz = lshr i64 %i.wx, 2
  %i.xa = add i64 %i.wz, %i.wy
  %i.xb = add i64 %i.xa, %.07.lcssa.i.i.i17.i.i
  %i.xc = xor i64 %i.xb, %i.wx
  %i.xd = shl i64 %i.px, 6
  %i.xe = lshr i64 %i.px, 2
  %i.xf = add i64 %i.xd, 2654435769
  %i.xg = add i64 %i.xf, %i.xe
  %i.xh = add i64 %i.xg, %i.xc
  %i.xi = xor i64 %i.xh, %i.px                    ; 3 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %0, i64 6517424
  %i.xk = load i32, ptr %i.xj, align 16, !tbaa !191
  %i.xl = sext i32 %i.xk to i64
  %i.xm = add nsw i64 %i.xl, 2654435769
  %i.xn = shl i64 %i.xi, 6
  %i.xo = add i64 %i.xm, %i.xn
  %i.xp = lshr i64 %i.xi, 2
  %i.xq = add i64 %i.xo, %i.xp
  %i.xr = xor i64 %i.xq, %i.xi
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZN9Stockfish12hash_combineINS_4Eval4NNUE8EvalFileEEEvRmRKT_.exit
  %.0 = phi i64 [ %i.xr, %_ZN9Stockfish12hash_combineINS_4Eval4NNUE8EvalFileEEEvRmRKT_.exit ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local void @_ZNK9Stockfish4Eval4NNUE7NetworkINS1_19NetworkArchitectureILj128ELi15ELi32EEENS1_18FeatureTransformerILj128EEEE8evaluateERKNS_8PositionERNS1_16AccumulatorStackERNS1_17AccumulatorCaches5CacheILj128EEE(ptr dead_on_unwind noalias writable sret(%"class.std::tuple") align 4 %0, ptr noundef nonnull align 64 dereferenceable(6517429) %1, ptr noundef nonnull align 8 dereferenceable(1048) %2, ptr noundef nonnull align 64 dereferenceable(2529288) %3, ptr noundef nonnull align 64 dereferenceable(49152) %4) local_unnamed_addr #4 comdat align 2 !guid !340 {
bb.a:
  %i.a = alloca [32 x i16], align 16              ; 6 uses
  %i.b = alloca [128 x i8], align 64              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.d = load i32, ptr %i.c, align 8, !tbaa !162
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 176
  %i.f = load i32, ptr %i.e, align 8, !tbaa !162
  %i.g = add i32 %i.d, -1
  %i.h = add i32 %i.g, %i.f
  %i.i = sdiv i32 %i.h, 4
  tail call void @_ZN9Stockfish4Eval4NNUE16AccumulatorStack8evaluateILj128EEEvRKNS_8PositionERKNS1_18FeatureTransformerIXT_EEERNS1_17AccumulatorCaches5CacheIXT_EEE(ptr noundef nonnull align 64 dereferenceable(2529288) %3, ptr noundef nonnull align 8 dereferenceable(1048) %2, ptr noundef nonnull align 64 dereferenceable(6488448) %1, ptr noundef nonnull align 64 dereferenceable(49152) %4) #19
  %i.j = tail call noundef nonnull align 64 dereferenceable(4871) ptr @_ZNK9Stockfish4Eval4NNUE16AccumulatorStack6latestINS1_8Features11HalfKAv2_hmEEERKNS1_16AccumulatorStateIT_EEv(ptr noundef nonnull align 64 dereferenceable(2529288) %3) #19 ; 2 uses
  %i.k = tail call noundef nonnull align 64 dereferenceable(5280) ptr @_ZNK9Stockfish4Eval4NNUE16AccumulatorStack6latestINS1_8Features11FullThreatsEEERKNS1_16AccumulatorStateIT_EEv(ptr noundef nonnull align 64 dereferenceable(2529288) %3) #19 ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 620
  %i.m = load i8, ptr %i.l, align 4, !tbaa !175   ; 2 uses
  %i.n = xor i8 %i.m, 1
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 4224 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 4736 ; 2 uses
  %i.q = zext i8 %i.m to i64                      ; 2 uses
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.q
  %i.s = sext i32 %i.i to i64                     ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !162
  %i.v = zext i8 %i.n to i64                      ; 2 uses
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.v
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.s
  %i.y = load i32, ptr %i.x, align 4, !tbaa !162
  %i.z = getelementptr inbounds nuw [256 x i8], ptr %i.o, i64 %i.q ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 128
  %i.ab = load <32 x i16>, ptr %i.z, align 64, !tbaa !95
  %i.ac = tail call <32 x i16> @llvm.smax.v32i16(<32 x i16> %i.ab, <32 x i16> zeroinitializer)
  %i.ad = tail call <32 x i16> @llvm.umin.v32i16(<32 x i16> %i.ac, <32 x i16> splat (i16 254))
  %i.ae = shl nuw nsw <32 x i16> %i.ad, splat (i16 7)
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  %i.ag = load <32 x i16>, ptr %i.af, align 64, !tbaa !95
  %i.ah = tail call <32 x i16> @llvm.smax.v32i16(<32 x i16> %i.ag, <32 x i16> zeroinitializer)
  %i.ai = tail call <32 x i16> @llvm.umin.v32i16(<32 x i16> %i.ah, <32 x i16> splat (i16 254))
  %i.aj = shl nuw nsw <32 x i16> %i.ai, splat (i16 7)
  %i.ak = load <32 x i16>, ptr %i.aa, align 64, !tbaa !95
  %i.al = tail call <32 x i16> @llvm.smin.v32i16(<32 x i16> %i.ak, <32 x i16> splat (i16 254))
  %i.am = getelementptr inbounds nuw i8, ptr %i.z, i64 192
  %i.an = load <32 x i16>, ptr %i.am, align 64, !tbaa !95
  %i.ao = tail call <32 x i16> @llvm.smin.v32i16(<32 x i16> %i.an, <32 x i16> splat (i16 254))
  %i.ap = tail call <32 x i16> @llvm.smulh.v32i16(<32 x i16> %i.ae, <32 x i16> %i.al)
  %i.aq = tail call <32 x i16> @llvm.smulh.v32i16(<32 x i16> %i.aj, <32 x i16> %i.ao)
  %i.ar = tail call <64 x i8> @llvm.x86.avx512.packuswb.512(<32 x i16> %i.ap, <32 x i16> %i.aq) ; 2 uses
  store <64 x i8> %i.ar, ptr %i.b, align 64, !tbaa !95
  %i.as = getelementptr inbounds nuw [256 x i8], ptr %i.o, i64 %i.v ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 128
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.av = load <32 x i16>, ptr %i.as, align 64, !tbaa !95
  %i.aw = tail call <32 x i16> @llvm.smax.v32i16(<32 x i16> %i.av, <32 x i16> zeroinitializer)
  %i.ax = tail call <32 x i16> @llvm.umin.v32i16(<32 x i16> %i.aw, <32 x i16> splat (i16 254))
  %i.ay = shl nuw nsw <32 x i16> %i.ax, splat (i16 7)
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 64
  %i.ba = load <32 x i16>, ptr %i.az, align 64, !tbaa !95
  %i.bb = tail call <32 x i16> @llvm.smax.v32i16(<32 x i16> %i.ba, <32 x i16> zeroinitializer)
  %i.bc = tail call <32 x i16> @llvm.umin.v32i16(<32 x i16> %i.bb, <32 x i16> splat (i16 254))
  %i.bd = shl nuw nsw <32 x i16> %i.bc, splat (i16 7)
  %i.be = load <32 x i16>, ptr %i.at, align 64, !tbaa !95
  %i.bf = tail call <32 x i16> @llvm.smin.v32i16(<32 x i16> %i.be, <32 x i16> splat (i16 254))
  %i.bg = getelementptr inbounds nuw i8, ptr %i.as, i64 192
  %i.bh = load <32 x i16>, ptr %i.bg, align 64, !tbaa !95
  %i.bi = tail call <32 x i16> @llvm.smin.v32i16(<32 x i16> %i.bh, <32 x i16> splat (i16 254))
  %i.bj = tail call <32 x i16> @llvm.smulh.v32i16(<32 x i16> %i.ay, <32 x i16> %i.bf)
  %i.bk = tail call <32 x i16> @llvm.smulh.v32i16(<32 x i16> %i.bd, <32 x i16> %i.bi)
  %i.bl = tail call <64 x i8> @llvm.x86.avx512.packuswb.512(<32 x i16> %i.bj, <32 x i16> %i.bk) ; 2 uses
  store <64 x i8> %i.bl, ptr %i.au, align 64, !tbaa !95
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 6488448
  %i.bn = getelementptr inbounds [3520 x i8], ptr %i.bm, i64 %i.s ; 22 uses
  %i.bo = load i8, ptr @_ZGVZNK9Stockfish4Eval4NNUE19NetworkArchitectureILj128ELi15ELi32EE9propagateEPKhE6buffer, align 8
  %i.bp = icmp eq i8 %i.bo, 0
  %i.bq = bitcast <64 x i8> %i.ar to <16 x i32>
  %i.br = bitcast <64 x i8> %i.bl to <16 x i32>
  br i1 %i.bp, label %bb.b, label %bb.c, !prof !163

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(576) @_ZZNK9Stockfish4Eval4NNUE19NetworkArchitectureILj128ELi15ELi32EE9propagateEPKhE6buffer, i8 0, i64 576, i1 false)
  store i8 1, ptr @_ZGVZNK9Stockfish4Eval4NNUE19NetworkArchitectureILj128ELi15ELi32EE9propagateEPKhE6buffer, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.bs = tail call <32 x i16> @llvm.x86.avx512.packusdw.512(<16 x i32> %i.bq, <16 x i32> %i.br)
  %i.bt = icmp ne <32 x i16> %i.bs, zeroinitializer ; 2 uses
  %i.bu = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> <i16 0, i16 1, i16 2, i16 3, i16 16, i16 17, i16 18, i16 19, i16 4, i16 5, i16 6, i16 7, i16 20, i16 21, i16 22, i16 23, i16 8, i16 9, i16 10, i16 11, i16 24, i16 25, i16 26, i16 27, i16 12, i16 13, i16 14, i16 15, i16 28, i16 29, i16 30, i16 31>, <32 x i16> zeroinitializer, <32 x i1> %i.bt)
  store <32 x i16> %i.bu, ptr %i.a, align 16, !tbaa !95, !alias.scope !341
  %i.bv = load <16 x i32>, ptr %i.bn, align 64, !tbaa !95 ; 2 uses
  %i.bw = bitcast <32 x i1> %i.bt to i32
  %i.bx = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.bw) ; 2 uses
  %i.by = shl nuw nsw i32 %i.bx, 1
  %.idx.i.i = zext nneg i32 %i.by to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx.i.i ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bn, i64 64 ; 4 uses
  %i.cb = getelementptr inbounds i8, ptr %i.bz, i64 -4
  %i.cc = icmp samesign ugt i32 %i.bx, 2
  br i1 %i.cc, label %.critedge73.i.i, label %.critedge75.i.i

.critedge73.i.i:                                  ; preds = %bb.c, %.critedge73.i.i
  %i.cd = phi <16 x i32> [ %i.dj, %.critedge73.i.i ], [ zeroinitializer, %bb.c ]
  %i.ce = phi <16 x i32> [ %i.dh, %.critedge73.i.i ], [ zeroinitializer, %bb.c ]
  %.07081.i.i = phi ptr [ %i.cm, %.critedge73.i.i ], [ %i.a, %bb.c ] ; 4 uses
  %i.cf = phi <16 x i32> [ %i.df, %.critedge73.i.i ], [ %i.bv, %bb.c ]
  %i.cg = getelementptr inbounds nuw i8, ptr %.07081.i.i, i64 2
  %i.ch = load i16, ptr %.07081.i.i, align 2, !tbaa !194
  %i.ci = zext i16 %i.ch to i64                   ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.07081.i.i, i64 4
  %i.ck = load i16, ptr %i.cg, align 2, !tbaa !194
  %i.cl = zext i16 %i.ck to i64                   ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.07081.i.i, i64 6 ; 3 uses
  %i.cn = load i16, ptr %i.cj, align 2, !tbaa !194
  %i.co = zext i16 %i.cn to i64                   ; 2 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ci
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !162
  %i.cr = insertelement <16 x i32> poison, i32 %i.cq, i64 0
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.cl
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !162
  %i.cu = insertelement <16 x i32> poison, i32 %i.ct, i64 0
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.co
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !162
  %i.cx = insertelement <16 x i32> poison, i32 %i.cw, i64 0
  %i.cy = shl nuw nsw i64 %i.ci, 6
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.cy
  %i.da = shl nuw nsw i64 %i.cl, 6
  %i.db = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.da
  %i.dc = shl nuw nsw i64 %i.co, 6
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.dc
  %i.de = load <64 x i8>, ptr %i.cz, align 64, !tbaa !95
  %5 = bitcast <16 x i32> %i.cr to <64 x i8>
  %6 = shufflevector <64 x i8> %5, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.df = call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.cf, <64 x i8> %6, <64 x i8> %i.de) ; 2 uses
  %i.dg = load <64 x i8>, ptr %i.db, align 64, !tbaa !95
  %7 = bitcast <16 x i32> %i.cu to <64 x i8>
  %8 = shufflevector <64 x i8> %7, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.dh = call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.ce, <64 x i8> %8, <64 x i8> %i.dg) ; 2 uses
  %i.di = load <64 x i8>, ptr %i.dd, align 64, !tbaa !95
  %9 = bitcast <16 x i32> %i.cx to <64 x i8>
  %10 = shufflevector <64 x i8> %9, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.dj = call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.cd, <64 x i8> %10, <64 x i8> %i.di) ; 2 uses
  %i.dk = icmp ult ptr %i.cm, %i.cb
  br i1 %i.dk, label %.critedge73.i.i, label %.critedge75.i.loopexit.i, !llvm.loop !3

.critedge75.i.loopexit.i:                         ; preds = %.critedge73.i.i
  %i.dl = add <16 x i32> %i.dj, %i.dh
  br label %.critedge75.i.i

.critedge75.i.i:                                  ; preds = %.critedge75.i.loopexit.i, %bb.c
  %.lcssa.i.i = phi <16 x i32> [ %i.bv, %bb.c ], [ %i.df, %.critedge75.i.loopexit.i ]
  %.070.lcssa.i.i = phi ptr [ %i.a, %bb.c ], [ %i.cm, %.critedge75.i.loopexit.i ] ; 2 uses
  %i.dm = phi <16 x i32> [ zeroinitializer, %bb.c ], [ %i.dl, %.critedge75.i.loopexit.i ]
  %i.dn = add <16 x i32> %i.dm, %.lcssa.i.i       ; 2 uses
  %i.do = icmp ult ptr %.070.lcssa.i.i, %i.bz
  br i1 %i.do, label %.critedge77.i.i, label %_ZNK9Stockfish4Eval4NNUE19NetworkArchitectureILj128ELi15ELi32EE9propagateEPKh.exit

.critedge77.i.i:                                  ; preds = %.critedge75.i.i, %.critedge77.i.i
  %.189.i.i = phi ptr [ %i.dp, %.critedge77.i.i ], [ %.070.lcssa.i.i, %.critedge75.i.i ] ; 2 uses
  %storemerge88.i.i = phi <16 x i32> [ %i.dy, %.critedge77.i.i ], [ %i.dn, %.critedge75.i.i ]
  %i.dp = getelementptr inbounds nuw i8, ptr %.189.i.i, i64 2 ; 2 uses
  %i.dq = load i16, ptr %.189.i.i, align 2, !tbaa !194
  %i.dr = zext i16 %i.dq to i64                   ; 2 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.dr
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !162
  %i.du = insertelement <16 x i32> poison, i32 %i.dt, i64 0
  %i.dv = shl nuw nsw i64 %i.dr, 6
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.dv
  %i.dx = load <64 x i8>, ptr %i.dw, align 64, !tbaa !95
  %11 = bitcast <16 x i32> %i.du to <64 x i8>
  %12 = shufflevector <64 x i8> %11, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.dy = call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %storemerge88.i.i, <64 x i8> %12, <64 x i8> %i.dx) ; 2 uses
  %i.dz = icmp ult ptr %i.dp, %i.bz
  br i1 %i.dz, label %.critedge77.i.i, label %_ZNK9Stockfish4Eval4NNUE19NetworkArchitectureILj128ELi15ELi32EE9propagateEPKh.exit, !llvm.loop !4

_ZNK9Stockfish4Eval4NNUE19NetworkArchitectureILj128ELi15ELi32EE9propagateEPKh.exit: ; preds = %.critedge77.i.i, %.critedge75.i.i
  %.sroa.0.1.in.i.i = phi <16 x i32> [ %i.dn, %.critedge75.i.i ], [ %i.dy, %.critedge77.i.i ] ; 3 uses
  %i.ea = call align 64 ptr @llvm.threadlocal.address.p0(ptr align 64 @_ZZNK9Stockfish4Eval4NNUE19NetworkArchitectureILj128ELi15ELi32EE9propagateEPKhE6buffer) ; 16 uses
  store <16 x i32> %.sroa.0.1.in.i.i, ptr %i.ea, align 64, !tbaa !95
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 128 ; 2 uses
  %i.ec = shufflevector <16 x i32> %.sroa.0.1.in.i.i, <16 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %bc.i = bitcast <16 x i32> %.sroa.0.1.in.i.i to <4 x i128> ; 3 uses
  %i.ed = extractelement <4 x i128> %bc.i, i64 1
  %i.ee = bitcast i128 %i.ed to <4 x i32>         ; 2 uses
  %i.ef = call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ec, <4 x i32> %i.ee) ; 2 uses
  %i.eg = extractelement <4 x i128> %bc.i, i64 2
  %i.eh = bitcast i128 %i.eg to <4 x i32>         ; 2 uses
  %i.ei = extractelement <4 x i128> %bc.i, i64 3
  %i.ej = bitcast i128 %i.ei to <4 x i32>         ; 2 uses
  %i.ek = call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.eh, <4 x i32> %i.ej) ; 2 uses
  %i.el = call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.ef, <8 x i16> %i.ef)
  %i.em = lshr <8 x i16> %i.el, splat (i16 3)
  %i.en = call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.ek, <8 x i16> %i.ek)
  %i.eo = lshr <8 x i16> %i.en, splat (i16 3)
  %i.ep = call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.em, <8 x i16> %i.eo)
  store <16 x i8> %i.ep, ptr %i.eb, align 64, !tbaa !95
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ea, i64 192 ; 2 uses
  %i.er = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.ec, <4 x i32> %i.ee)
  %i.es = lshr <8 x i16> %i.er, splat (i16 6)
  %i.et = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.eh, <4 x i32> %i.ej)
  %i.eu = lshr <8 x i16> %i.et, splat (i16 6)
  %i.ev = call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.es, <8 x i16> %i.eu)
  store <16 x i8> %i.ev, ptr %i.eq, align 64, !tbaa !95
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ea, i64 143
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.ew, ptr noundef nonnull align 64 dereferenceable(15) %i.eq, i64 15, i1 false)
  %i.ex = getelementptr inbounds nuw i8, ptr %i.bn, i64 2176
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ea, i64 256
  %.sroa.0.0.copyload.i.i = load <16 x i32>, ptr %i.ex, align 64, !tbaa !95
  %.sroa.20.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 2240
  %.sroa.20.0.copyload.i.i = load <16 x i32>, ptr %.sroa.20.0..sroa_idx.i.i, align 64, !tbaa !95
  %i.ez = getelementptr inbounds nuw i8, ptr %i.bn, i64 2304
  %i.fa = load <1 x i32>, ptr %i.eb, align 64
  %i.fb = shufflevector <1 x i32> %i.fa, <1 x i32> poison, <16 x i32> zeroinitializer
  %i.fc = bitcast <16 x i32> %i.fb to <64 x i8>   ; 2 uses
  %i.fd = load <64 x i8>, ptr %i.ez, align 64, !tbaa !95
  %i.fe = call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %.sroa.0.0.copyload.i.i, <64 x i8> %i.fc, <64 x i8> %i.fd)
  %i.ff = getelementptr inbounds nuw i8, ptr %i.bn, i64 2368
  %i.fg = load <64 x i8>, ptr %i.ff, align 64, !tbaa !95
  %i.fh = call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %.sroa.20.0.copyload.i.i, <64 x i8> %i.fc, <64 x i8> %i.fg)
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ea, i64 132
  %i.fj = load <1 x i32>, ptr %i.fi, align 4
  %i.fk = shufflevector <1 x i32> %i.fj, <1 x i32> poison, <16 x i32> zeroinitializer
  %i.fl = getelementptr inbounds nuw i8, ptr %i.bn, i64 2432
  %i.fm = bitcast <16 x i32> %i.fk to <64 x i8>   ; 2 uses
  %i.fn = load <64 x i8>, ptr %i.fl, align 64, !tbaa !95
  %i.fo = call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.fe, <64 x i8> %i.fm, <64 x i8> %i.fn)
  %i.fp = getelementptr inbounds nuw i8, ptr %i.bn, i64 2496
  %i.fq = load <64 x i8>, ptr %i.fp, align 64, !tbaa !95
  %i.fr = call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.fh, <64 x i8> %i.fm, <64 x i8> %i.fq)
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ea, i64 136
  %i.ft = load <1 x i32>, ptr %i.fs, align 8
  %i.fu = shufflevector <1 x i32> %i.ft, <1 x i32> poison, <16 x i32> zeroinitializer
  %i.fv = getelementptr inbounds nuw i8, ptr %i.bn, i64 2560
  %i.fw = bitcast <16 x i32> %i.fu to <64 x i8>   ; 2 uses
  %i.fx = load <64 x i8>, ptr %i.fv, align 64, !tbaa !95
  %i.fy = call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.fo, <64 x i8> %i.fw, <64 x i8> %i.fx)
  %i.fz = getelementptr inbounds nuw i8, ptr %i.bn, i64 2624
  %i.ga = load <64 x i8>, ptr %i.fz, align 64, !tbaa !95
  %i.gb = call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.fr, <64 x i8> %i.fw, <64 x i8> %i.ga)
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ea, i64 140
  %i.gd = load <1 x i32>, ptr %i.gc, align 4
  %i.ge = shufflevector <1 x i32> %i.gd, <1 x i32> poison, <16 x i32> zeroinitializer
  %i.gf = getelementptr inbounds nuw i8, ptr %i.bn, i64 2688
  %i.gg = bitcast <16 x i32> %i.ge to <64 x i8>   ; 2 uses
  %i.gh = load <64 x i8>, ptr %i.gf, align 64, !tbaa !95
  %i.gi = call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.fy, <64 x i8> %i.gg, <64 x i8> %i.gh)
  %i.gj = getelementptr inbounds nuw i8, ptr %i.bn, i64 2752
  %i.gk = load <64 x i8>, ptr %i.gj, align 64, !tbaa !95
  %i.gl = call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.gb, <64 x i8> %i.gg, <64 x i8> %i.gk)
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ea, i64 144
  %i.gn = load <1 x i32>, ptr %i.gm, align 16
  %i.go = shufflevector <1 x i32> %i.gn, <1 x i32> poison, <16 x i32> zeroinitializer
  %i.gp = getelementptr inbounds nuw i8, ptr %i.bn, i64 2816
  %i.gq = bitcast <16 x i32> %i.go to <64 x i8>   ; 2 uses
  %i.gr = load <64 x i8>, ptr %i.gp, align 64, !tbaa !95
  %i.gs = call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.gi, <64 x i8> %i.gq, <64 x i8> %i.gr)
  %i.gt = getelementptr inbounds nuw i8, ptr %i.bn, i64 2880
  %i.gu = load <64 x i8>, ptr %i.gt, align 64, !tbaa !95
  %i.gv = call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.gl, <64 x i8> %i.gq, <64 x i8> %i.gu)
  %i.gw = getelementptr inbounds nuw i8, ptr %i.ea, i64 148
  %i.gx = load <1 x i32>, ptr %i.gw, align 4
  %i.gy = shufflevector <1 x i32> %i.gx, <1 x i32> poison, <16 x i32> zeroinitializer
  %i.gz = getelementptr inbounds nuw i8, ptr %i.bn, i64 2944
  %i.ha = bitcast <16 x i32> %i.gy to <64 x i8>   ; 2 uses
  %i.hb = load <64 x i8>, ptr %i.gz, align 64, !tbaa !95
  %i.hc = call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.gs, <64 x i8> %i.ha, <64 x i8> %i.hb)
  %i.hd = getelementptr inbounds nuw i8, ptr %i.bn, i64 3008
  %i.he = load <64 x i8>, ptr %i.hd, align 64, !tbaa !95
  %i.hf = call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.gv, <64 x i8> %i.ha, <64 x i8> %i.he)
  %i.hg = getelementptr inbounds nuw i8, ptr %i.ea, i64 152
  %i.hh = load <1 x i32>, ptr %i.hg, align 8
  %i.hi = shufflevector <1 x i32> %i.hh, <1 x i32> poison, <16 x i32> zeroinitializer
  %i.hj = getelementptr inbounds nuw i8, ptr %i.bn, i64 3072
  %i.hk = bitcast <16 x i32> %i.hi to <64 x i8>   ; 2 uses
  %i.hl = load <64 x i8>, ptr %i.hj, align 64, !tbaa !95
  %i.hm = call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.hc, <64 x i8> %i.hk, <64 x i8> %i.hl)
  %i.hn = getelementptr inbounds nuw i8, ptr %i.bn, i64 3136
  %i.ho = load <64 x i8>, ptr %i.hn, align 64, !tbaa !95
  %i.hp = call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.hf, <64 x i8> %i.hk, <64 x i8> %i.ho)
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ea, i64 156
  %i.hr = load <1 x i32>, ptr %i.hq, align 4
  %i.hs = shufflevector <1 x i32> %i.hr, <1 x i32> poison, <16 x i32> zeroinitializer
  %i.ht = getelementptr inbounds nuw i8, ptr %i.bn, i64 3200
  %i.hu = bitcast <16 x i32> %i.hs to <64 x i8>   ; 2 uses
  %i.hv = load <64 x i8>, ptr %i.ht, align 64, !tbaa !95
  %i.hw = call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.hm, <64 x i8> %i.hu, <64 x i8> %i.hv) ; 3 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.bn, i64 3264
  %i.hy = load <64 x i8>, ptr %i.hx, align 64, !tbaa !95
  %i.hz = call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.hp, <64 x i8> %i.hu, <64 x i8> %i.hy) ; 3 uses
  store <16 x i32> %i.hw, ptr %i.ey, align 64, !tbaa !95
  %.sroa.20.0..sroa_idx43.i.i = getelementptr inbounds nuw i8, ptr %i.ea, i64 320
  store <16 x i32> %i.hz, ptr %.sroa.20.0..sroa_idx43.i.i, align 64, !tbaa !95
  %i.ia = getelementptr inbounds nuw i8, ptr %i.ea, i64 384
  %i.ib = shufflevector <16 x i32> %i.hw, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %bc14.i = bitcast <16 x i32> %i.hw to <2 x i256>
  %i.ic = extractelement <2 x i256> %bc14.i, i64 1
  %i.id = bitcast i256 %i.ic to <8 x i32>
  %i.ie = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.ib, <8 x i32> %i.id)
  %i.if = lshr <16 x i16> %i.ie, splat (i16 6)
  %i.ig = shufflevector <16 x i32> %i.hz, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %bc15.i = bitcast <16 x i32> %i.hz to <2 x i256>
  %i.ih = extractelement <2 x i256> %bc15.i, i64 1
  %i.ii = bitcast i256 %i.ih to <8 x i32>
  %i.ij = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.ig, <8 x i32> %i.ii)
  %i.ik = lshr <16 x i16> %i.ij, splat (i16 6)
  %i.il = call <32 x i8> @llvm.x86.avx2.packsswb(<16 x i16> %i.if, <16 x i16> %i.ik)
  %i.im = bitcast <32 x i8> %i.il to <8 x i32>
  %i.in = shufflevector <8 x i32> %i.im, <8 x i32> poison, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7> ; 2 uses
  store <8 x i32> %i.in, ptr %i.ia, align 64, !tbaa !95
  %i.io = getelementptr inbounds nuw i8, ptr %i.bn, i64 3392
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ea, i64 448
  %i.iq = getelementptr inbounds nuw i8, ptr %i.bn, i64 3456
  %.cast.i = bitcast <8 x i32> %i.in to <32 x i8>
  %i.ir = load <32 x i8>, ptr %i.iq, align 64, !tbaa !95
  %i.is = call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> zeroinitializer, <32 x i8> %.cast.i, <32 x i8> %i.ir)
  %i.it = load i32, ptr %i.io, align 64, !tbaa !162
  %i.iu = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.is)
  %i.iv = add nsw i32 %i.iu, %i.it                ; 2 uses
  store i32 %i.iv, ptr %i.ip, align 64, !tbaa !162
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ea, i64 60
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !162
  %i.iy = mul nsw i32 %i.ix, 150
  %i.iz = sdiv i32 %i.iy, 127
  %i.ja = sub nsw i32 %i.u, %i.y
  %i.jb = add nsw i32 %i.iv, %i.iz
  %i.jc = insertelement <2 x i32> poison, i32 %i.jb, i64 0
  %i.jd = insertelement <2 x i32> %i.jc, i32 %i.ja, i64 1
  %i.je = sdiv <2 x i32> %i.jd, <i32 16, i32 32>
  store <2 x i32> %i.je, ptr %0, align 4, !tbaa !162
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local void @_ZNK9Stockfish4Eval4NNUE7NetworkINS1_19NetworkArchitectureILj128ELi15ELi32EEENS1_18FeatureTransformerILj128EEEE6verifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt8functionIFvSt17basic_string_viewIcSB_EEE(ptr noundef nonnull align 64 dereferenceable(6517429) %0, ptr noundef align 8 %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 !guid !378 {
bb.a:
  %3 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %4 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator", align 1    ; 3 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::allocator", align 1   ; 3 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::allocator", align 1   ; 3 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::allocator", align 1   ; 3 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
end_hunk_0
begin_hunk_1_@_ZNK9Stockfish4Eval4NNUE7NetworkINS1_19NetworkArchitectureILj128ELi15ELi32EEENS1_18FeatureTransformerILj128EEEE6verifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt8functionIFvSt17basic_string_viewIcSB_EEE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #19
  %i.vn = load ptr, ptr %41, align 8, !tbaa !118  ; 2 uses
  %i.vo = icmp eq ptr %i.vn, %i.fj
  br i1 %i.vo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i236

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i236: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235
  %i.vp = load i64, ptr %i.fj, align 8, !tbaa !95
  %i.vq = add i64 %i.vp, 1
  call void @_ZdlPvm(ptr noundef %i.vn, i64 noundef %i.vq) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i236
  %i.vr = load ptr, ptr %42, align 8, !tbaa !118  ; 2 uses
  %i.vs = icmp eq ptr %i.vr, %i.eu
  br i1 %i.vs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238
  %i.vt = load i64, ptr %i.eu, align 8, !tbaa !95
  %i.vu = add i64 %i.vt, 1
  call void @_ZdlPvm(ptr noundef %i.vr, i64 noundef %i.vu) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #19
  br label %bb.bc

bb.bc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241, %bb.m
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local void @_ZNK9Stockfish4Eval4NNUE7NetworkINS1_19NetworkArchitectureILj128ELi15ELi32EEENS1_18FeatureTransformerILj128EEEE14trace_evaluateERKNS_8PositionERNS1_16AccumulatorStackERNS1_17AccumulatorCaches5CacheILj128EEE(ptr dead_on_unwind noalias writable sret(%"struct.Stockfish::Eval::NNUE::NnueEvalTrace") align 8 %0, ptr noundef nonnull align 64 dereferenceable(6517429) %1, ptr noundef nonnull align 8 dereferenceable(1048) %2, ptr noundef nonnull align 64 dereferenceable(2529288) %3, ptr noundef nonnull align 64 dereferenceable(49152) %4) local_unnamed_addr #4 comdat align 2 !guid !400 {
bb.a:
  %i.a = alloca [32 x i16], align 16              ; 6 uses
  %i.b = alloca [128 x i8], align 64              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, i8 0, i64 64, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.d = load i32, ptr %i.c, align 8, !tbaa !162
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 176
  %i.f = load i32, ptr %i.e, align 8, !tbaa !162
  %i.g = add i32 %i.d, -1
  %i.h = add i32 %i.g, %i.f
  %i.i = sdiv i32 %i.h, 4
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.j, ptr %i.k, align 8, !tbaa !181
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 620
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 6488448
  %i.o = tail call align 64 ptr @llvm.threadlocal.address.p0(ptr align 64 @_ZZNK9Stockfish4Eval4NNUE19NetworkArchitectureILj128ELi15ELi32EE9propagateEPKhE6buffer) ; 16 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 128 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 192 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 143
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 256
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 132
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 136
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 140
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 144
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 148
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 152
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 156
  %.sroa.20.0..sroa_idx43.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 320
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 384
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 448
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 60
  br label %bb.c

bb.b:                                             ; preds = %_ZNK9Stockfish4Eval4NNUE19NetworkArchitectureILj128ELi15ELi32EE9propagateEPKh.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  ret void

bb.c:                                             ; preds = %bb.a, %_ZNK9Stockfish4Eval4NNUE19NetworkArchitectureILj128ELi15ELi32EE9propagateEPKh.exit
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %_ZNK9Stockfish4Eval4NNUE19NetworkArchitectureILj128ELi15ELi32EE9propagateEPKh.exit ] ; 5 uses
  call void @_ZN9Stockfish4Eval4NNUE16AccumulatorStack8evaluateILj128EEEvRKNS_8PositionERKNS1_18FeatureTransformerIXT_EEERNS1_17AccumulatorCaches5CacheIXT_EEE(ptr noundef nonnull align 64 dereferenceable(2529288) %3, ptr noundef nonnull align 8 dereferenceable(1048) %2, ptr noundef nonnull align 64 dereferenceable(6488448) %1, ptr noundef nonnull align 64 dereferenceable(49152) %4) #19
  %i.ad = call noundef nonnull align 64 dereferenceable(4871) ptr @_ZNK9Stockfish4Eval4NNUE16AccumulatorStack6latestINS1_8Features11HalfKAv2_hmEEERKNS1_16AccumulatorStateIT_EEv(ptr noundef nonnull align 64 dereferenceable(2529288) %3) #19 ; 2 uses
  %i.ae = call noundef nonnull align 64 dereferenceable(5280) ptr @_ZNK9Stockfish4Eval4NNUE16AccumulatorStack6latestINS1_8Features11FullThreatsEEERKNS1_16AccumulatorStateIT_EEv(ptr noundef nonnull align 64 dereferenceable(2529288) %3) #19 ; 0 uses
  %i.af = load i8, ptr %i.l, align 4, !tbaa !175  ; 2 uses
  %i.ag = xor i8 %i.af, 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 4224 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 4736 ; 2 uses
  %i.aj = zext i8 %i.af to i64                    ; 2 uses
  %i.ak = getelementptr inbounds nuw [32 x i8], ptr %i.ai, i64 %i.aj
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv
  %i.am = load i32, ptr %i.al, align 4, !tbaa !162
  %i.an = zext i8 %i.ag to i64                    ; 2 uses
  %i.ao = getelementptr inbounds nuw [32 x i8], ptr %i.ai, i64 %i.an
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !162
  %i.ar = getelementptr inbounds nuw [256 x i8], ptr %i.ah, i64 %i.aj ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 128
  %i.at = load <32 x i16>, ptr %i.ar, align 64, !tbaa !95
  %i.au = call <32 x i16> @llvm.smax.v32i16(<32 x i16> %i.at, <32 x i16> zeroinitializer)
  %i.av = call <32 x i16> @llvm.umin.v32i16(<32 x i16> %i.au, <32 x i16> splat (i16 254))
  %i.aw = shl nuw nsw <32 x i16> %i.av, splat (i16 7)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 64
  %i.ay = load <32 x i16>, ptr %i.ax, align 64, !tbaa !95
  %i.az = call <32 x i16> @llvm.smax.v32i16(<32 x i16> %i.ay, <32 x i16> zeroinitializer)
  %i.ba = call <32 x i16> @llvm.umin.v32i16(<32 x i16> %i.az, <32 x i16> splat (i16 254))
  %i.bb = shl nuw nsw <32 x i16> %i.ba, splat (i16 7)
  %i.bc = load <32 x i16>, ptr %i.as, align 64, !tbaa !95
  %i.bd = call <32 x i16> @llvm.smin.v32i16(<32 x i16> %i.bc, <32 x i16> splat (i16 254))
  %i.be = getelementptr inbounds nuw i8, ptr %i.ar, i64 192
  %i.bf = load <32 x i16>, ptr %i.be, align 64, !tbaa !95
  %i.bg = call <32 x i16> @llvm.smin.v32i16(<32 x i16> %i.bf, <32 x i16> splat (i16 254))
  %i.bh = call <32 x i16> @llvm.smulh.v32i16(<32 x i16> %i.aw, <32 x i16> %i.bd)
  %i.bi = call <32 x i16> @llvm.smulh.v32i16(<32 x i16> %i.bb, <32 x i16> %i.bg)
  %i.bj = call <64 x i8> @llvm.x86.avx512.packuswb.512(<32 x i16> %i.bh, <32 x i16> %i.bi) ; 2 uses
  store <64 x i8> %i.bj, ptr %i.b, align 64, !tbaa !95
  %i.bk = getelementptr inbounds nuw [256 x i8], ptr %i.ah, i64 %i.an ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 128
  %i.bm = load <32 x i16>, ptr %i.bk, align 64, !tbaa !95
  %i.bn = call <32 x i16> @llvm.smax.v32i16(<32 x i16> %i.bm, <32 x i16> zeroinitializer)
  %i.bo = call <32 x i16> @llvm.umin.v32i16(<32 x i16> %i.bn, <32 x i16> splat (i16 254))
  %i.bp = shl nuw nsw <32 x i16> %i.bo, splat (i16 7)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 64
  %i.br = load <32 x i16>, ptr %i.bq, align 64, !tbaa !95
  %i.bs = call <32 x i16> @llvm.smax.v32i16(<32 x i16> %i.br, <32 x i16> zeroinitializer)
  %i.bt = call <32 x i16> @llvm.umin.v32i16(<32 x i16> %i.bs, <32 x i16> splat (i16 254))
  %i.bu = shl nuw nsw <32 x i16> %i.bt, splat (i16 7)
  %i.bv = load <32 x i16>, ptr %i.bl, align 64, !tbaa !95
  %i.bw = call <32 x i16> @llvm.smin.v32i16(<32 x i16> %i.bv, <32 x i16> splat (i16 254))
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bk, i64 192
  %i.by = load <32 x i16>, ptr %i.bx, align 64, !tbaa !95
  %i.bz = call <32 x i16> @llvm.smin.v32i16(<32 x i16> %i.by, <32 x i16> splat (i16 254))
  %i.ca = call <32 x i16> @llvm.smulh.v32i16(<32 x i16> %i.bp, <32 x i16> %i.bw)
  %i.cb = call <32 x i16> @llvm.smulh.v32i16(<32 x i16> %i.bu, <32 x i16> %i.bz)
  %i.cc = call <64 x i8> @llvm.x86.avx512.packuswb.512(<32 x i16> %i.ca, <32 x i16> %i.cb) ; 2 uses
  store <64 x i8> %i.cc, ptr %i.m, align 64, !tbaa !95
  %i.cd = sub nsw i32 %i.am, %i.aq
  %i.ce = getelementptr inbounds nuw [3520 x i8], ptr %i.n, i64 %indvars.iv ; 22 uses
  %i.cf = load i8, ptr @_ZGVZNK9Stockfish4Eval4NNUE19NetworkArchitectureILj128ELi15ELi32EE9propagateEPKhE6buffer, align 8
  %i.cg = icmp eq i8 %i.cf, 0
  %i.ch = bitcast <64 x i8> %i.bj to <16 x i32>
  %i.ci = bitcast <64 x i8> %i.cc to <16 x i32>
  br i1 %i.cg, label %bb.d, label %bb.e, !prof !163

bb.d:                                             ; preds = %bb.c
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(576) @_ZZNK9Stockfish4Eval4NNUE19NetworkArchitectureILj128ELi15ELi32EE9propagateEPKhE6buffer, i8 0, i64 576, i1 false)
  store i8 1, ptr @_ZGVZNK9Stockfish4Eval4NNUE19NetworkArchitectureILj128ELi15ELi32EE9propagateEPKhE6buffer, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.cj = call <32 x i16> @llvm.x86.avx512.packusdw.512(<16 x i32> %i.ch, <16 x i32> %i.ci)
  %i.ck = icmp ne <32 x i16> %i.cj, zeroinitializer ; 2 uses
  %i.cl = call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> <i16 0, i16 1, i16 2, i16 3, i16 16, i16 17, i16 18, i16 19, i16 4, i16 5, i16 6, i16 7, i16 20, i16 21, i16 22, i16 23, i16 8, i16 9, i16 10, i16 11, i16 24, i16 25, i16 26, i16 27, i16 12, i16 13, i16 14, i16 15, i16 28, i16 29, i16 30, i16 31>, <32 x i16> zeroinitializer, <32 x i1> %i.ck)
  store <32 x i16> %i.cl, ptr %i.a, align 16, !tbaa !95, !alias.scope !401
  %i.cm = load <16 x i32>, ptr %i.ce, align 64, !tbaa !95 ; 2 uses
  %i.cn = bitcast <32 x i1> %i.ck to i32
  %i.co = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.cn) ; 2 uses
  %i.cp = shl nuw nsw i32 %i.co, 1
  %.idx.i.i = zext nneg i32 %i.cp to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx.i.i ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ce, i64 64 ; 4 uses
  %i.cs = getelementptr inbounds i8, ptr %i.cq, i64 -4
  %i.ct = icmp samesign ugt i32 %i.co, 2
  br i1 %i.ct, label %.critedge73.i.i, label %.critedge75.i.i

.critedge73.i.i:                                  ; preds = %bb.e, %.critedge73.i.i
  %i.cu = phi <16 x i32> [ %i.ea, %.critedge73.i.i ], [ zeroinitializer, %bb.e ]
  %i.cv = phi <16 x i32> [ %i.dy, %.critedge73.i.i ], [ zeroinitializer, %bb.e ]
  %.07081.i.i = phi ptr [ %i.dd, %.critedge73.i.i ], [ %i.a, %bb.e ] ; 4 uses
  %i.cw = phi <16 x i32> [ %i.dw, %.critedge73.i.i ], [ %i.cm, %bb.e ]
  %i.cx = getelementptr inbounds nuw i8, ptr %.07081.i.i, i64 2
  %i.cy = load i16, ptr %.07081.i.i, align 2, !tbaa !194
  %i.cz = zext i16 %i.cy to i64                   ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.07081.i.i, i64 4
  %i.db = load i16, ptr %i.cx, align 2, !tbaa !194
  %i.dc = zext i16 %i.db to i64                   ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.07081.i.i, i64 6 ; 3 uses
  %i.de = load i16, ptr %i.da, align 2, !tbaa !194
  %i.df = zext i16 %i.de to i64                   ; 2 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.cz
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !162
  %i.di = insertelement <16 x i32> poison, i32 %i.dh, i64 0
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.dc
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !162
  %i.dl = insertelement <16 x i32> poison, i32 %i.dk, i64 0
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.df
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !162
  %i.do = insertelement <16 x i32> poison, i32 %i.dn, i64 0
  %i.dp = shl nuw nsw i64 %i.cz, 6
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.dp
  %i.dr = shl nuw nsw i64 %i.dc, 6
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.dr
  %i.dt = shl nuw nsw i64 %i.df, 6
  %i.du = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.dt
  %i.dv = load <64 x i8>, ptr %i.dq, align 64, !tbaa !95
  %5 = bitcast <16 x i32> %i.di to <64 x i8>
  %6 = shufflevector <64 x i8> %5, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.dw = call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.cw, <64 x i8> %6, <64 x i8> %i.dv) ; 2 uses
  %i.dx = load <64 x i8>, ptr %i.ds, align 64, !tbaa !95
  %7 = bitcast <16 x i32> %i.dl to <64 x i8>
  %8 = shufflevector <64 x i8> %7, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.dy = call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.cv, <64 x i8> %8, <64 x i8> %i.dx) ; 2 uses
  %i.dz = load <64 x i8>, ptr %i.du, align 64, !tbaa !95
  %9 = bitcast <16 x i32> %i.do to <64 x i8>
  %10 = shufflevector <64 x i8> %9, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.ea = call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.cu, <64 x i8> %10, <64 x i8> %i.dz) ; 2 uses
  %i.eb = icmp ult ptr %i.dd, %i.cs
  br i1 %i.eb, label %.critedge73.i.i, label %.critedge75.i.loopexit.i, !llvm.loop !3

.critedge75.i.loopexit.i:                         ; preds = %.critedge73.i.i
  %i.ec = add <16 x i32> %i.ea, %i.dy
  br label %.critedge75.i.i

.critedge75.i.i:                                  ; preds = %.critedge75.i.loopexit.i, %bb.e
  %.lcssa.i.i = phi <16 x i32> [ %i.cm, %bb.e ], [ %i.dw, %.critedge75.i.loopexit.i ]
  %.070.lcssa.i.i = phi ptr [ %i.a, %bb.e ], [ %i.dd, %.critedge75.i.loopexit.i ] ; 2 uses
  %i.ed = phi <16 x i32> [ zeroinitializer, %bb.e ], [ %i.ec, %.critedge75.i.loopexit.i ]
  %i.ee = add <16 x i32> %i.ed, %.lcssa.i.i       ; 2 uses
  %i.ef = icmp ult ptr %.070.lcssa.i.i, %i.cq
  br i1 %i.ef, label %.critedge77.i.i, label %_ZNK9Stockfish4Eval4NNUE19NetworkArchitectureILj128ELi15ELi32EE9propagateEPKh.exit

.critedge77.i.i:                                  ; preds = %.critedge75.i.i, %.critedge77.i.i
  %.189.i.i = phi ptr [ %i.eg, %.critedge77.i.i ], [ %.070.lcssa.i.i, %.critedge75.i.i ] ; 2 uses
  %storemerge88.i.i = phi <16 x i32> [ %i.ep, %.critedge77.i.i ], [ %i.ee, %.critedge75.i.i ]
  %i.eg = getelementptr inbounds nuw i8, ptr %.189.i.i, i64 2 ; 2 uses
  %i.eh = load i16, ptr %.189.i.i, align 2, !tbaa !194
  %i.ei = zext i16 %i.eh to i64                   ; 2 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ei
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !162
  %i.el = insertelement <16 x i32> poison, i32 %i.ek, i64 0
  %i.em = shl nuw nsw i64 %i.ei, 6
  %i.en = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.em
  %i.eo = load <64 x i8>, ptr %i.en, align 64, !tbaa !95
  %11 = bitcast <16 x i32> %i.el to <64 x i8>
  %12 = shufflevector <64 x i8> %11, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.ep = call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %storemerge88.i.i, <64 x i8> %12, <64 x i8> %i.eo) ; 2 uses
  %i.eq = icmp ult ptr %i.eg, %i.cq
  br i1 %i.eq, label %.critedge77.i.i, label %_ZNK9Stockfish4Eval4NNUE19NetworkArchitectureILj128ELi15ELi32EE9propagateEPKh.exit, !llvm.loop !4

_ZNK9Stockfish4Eval4NNUE19NetworkArchitectureILj128ELi15ELi32EE9propagateEPKh.exit: ; preds = %.critedge77.i.i, %.critedge75.i.i
  %.sroa.0.1.in.i.i = phi <16 x i32> [ %i.ee, %.critedge75.i.i ], [ %i.ep, %.critedge77.i.i ] ; 3 uses
  store <16 x i32> %.sroa.0.1.in.i.i, ptr %i.o, align 64, !tbaa !95
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.er = shufflevector <16 x i32> %.sroa.0.1.in.i.i, <16 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %bc.i = bitcast <16 x i32> %.sroa.0.1.in.i.i to <4 x i128> ; 3 uses
  %i.es = extractelement <4 x i128> %bc.i, i64 1
  %i.et = bitcast i128 %i.es to <4 x i32>         ; 2 uses
  %i.eu = call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.er, <4 x i32> %i.et) ; 2 uses
  %i.ev = extractelement <4 x i128> %bc.i, i64 2
  %i.ew = bitcast i128 %i.ev to <4 x i32>         ; 2 uses
  %i.ex = extractelement <4 x i128> %bc.i, i64 3
  %i.ey = bitcast i128 %i.ex to <4 x i32>         ; 2 uses
  %i.ez = call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ew, <4 x i32> %i.ey) ; 2 uses
  %i.fa = call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.eu, <8 x i16> %i.eu)
  %i.fb = lshr <8 x i16> %i.fa, splat (i16 3)
  %i.fc = call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.ez, <8 x i16> %i.ez)
  %i.fd = lshr <8 x i16> %i.fc, splat (i16 3)
  %i.fe = call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.fb, <8 x i16> %i.fd)
  store <16 x i8> %i.fe, ptr %i.p, align 64, !tbaa !95
  %i.ff = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.er, <4 x i32> %i.et)
  %i.fg = lshr <8 x i16> %i.ff, splat (i16 6)
  %i.fh = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.ew, <4 x i32> %i.ey)
  %i.fi = lshr <8 x i16> %i.fh, splat (i16 6)
  %i.fj = call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.fg, <8 x i16> %i.fi)
  store <16 x i8> %i.fj, ptr %i.q, align 64, !tbaa !95
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.r, ptr noundef nonnull align 64 dereferenceable(15) %i.q, i64 15, i1 false)
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ce, i64 2176
  %.sroa.0.0.copyload.i.i = load <16 x i32>, ptr %i.fk, align 64, !tbaa !95
  %.sroa.20.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 2240
  %.sroa.20.0.copyload.i.i = load <16 x i32>, ptr %.sroa.20.0..sroa_idx.i.i, align 64, !tbaa !95
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ce, i64 2304
  %i.fm = load <1 x i32>, ptr %i.p, align 64
  %i.fn = shufflevector <1 x i32> %i.fm, <1 x i32> poison, <16 x i32> zeroinitializer
  %i.fo = bitcast <16 x i32> %i.fn to <64 x i8>   ; 2 uses
  %i.fp = load <64 x i8>, ptr %i.fl, align 64, !tbaa !95
  %i.fq = call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %.sroa.0.0.copyload.i.i, <64 x i8> %i.fo, <64 x i8> %i.fp)
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ce, i64 2368
  %i.fs = load <64 x i8>, ptr %i.fr, align 64, !tbaa !95
  %i.ft = call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %.sroa.20.0.copyload.i.i, <64 x i8> %i.fo, <64 x i8> %i.fs)
  %i.fu = load <1 x i32>, ptr %i.t, align 4
  %i.fv = shufflevector <1 x i32> %i.fu, <1 x i32> poison, <16 x i32> zeroinitializer
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ce, i64 2432
  %i.fx = bitcast <16 x i32> %i.fv to <64 x i8>   ; 2 uses
  %i.fy = load <64 x i8>, ptr %i.fw, align 64, !tbaa !95
  %i.fz = call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.fq, <64 x i8> %i.fx, <64 x i8> %i.fy)
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ce, i64 2496
  %i.gb = load <64 x i8>, ptr %i.ga, align 64, !tbaa !95
  %i.gc = call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.ft, <64 x i8> %i.fx, <64 x i8> %i.gb)
  %i.gd = load <1 x i32>, ptr %i.u, align 8
  %i.ge = shufflevector <1 x i32> %i.gd, <1 x i32> poison, <16 x i32> zeroinitializer
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ce, i64 2560
  %i.gg = bitcast <16 x i32> %i.ge to <64 x i8>   ; 2 uses
  %i.gh = load <64 x i8>, ptr %i.gf, align 64, !tbaa !95
  %i.gi = call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.fz, <64 x i8> %i.gg, <64 x i8> %i.gh)
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ce, i64 2624
  %i.gk = load <64 x i8>, ptr %i.gj, align 64, !tbaa !95
  %i.gl = call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.gc, <64 x i8> %i.gg, <64 x i8> %i.gk)
  %i.gm = load <1 x i32>, ptr %i.v, align 4
  %i.gn = shufflevector <1 x i32> %i.gm, <1 x i32> poison, <16 x i32> zeroinitializer
  %i.go = getelementptr inbounds nuw i8, ptr %i.ce, i64 2688
  %i.gp = bitcast <16 x i32> %i.gn to <64 x i8>   ; 2 uses
  %i.gq = load <64 x i8>, ptr %i.go, align 64, !tbaa !95
  %i.gr = call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.gi, <64 x i8> %i.gp, <64 x i8> %i.gq)
  %i.gs = getelementptr inbounds nuw i8, ptr %i.ce, i64 2752
  %i.gt = load <64 x i8>, ptr %i.gs, align 64, !tbaa !95
  %i.gu = call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.gl, <64 x i8> %i.gp, <64 x i8> %i.gt)
  %i.gv = load <1 x i32>, ptr %i.w, align 16
  %i.gw = shufflevector <1 x i32> %i.gv, <1 x i32> poison, <16 x i32> zeroinitializer
  %i.gx = getelementptr inbounds nuw i8, ptr %i.ce, i64 2816
  %i.gy = bitcast <16 x i32> %i.gw to <64 x i8>   ; 2 uses
  %i.gz = load <64 x i8>, ptr %i.gx, align 64, !tbaa !95
  %i.ha = call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.gr, <64 x i8> %i.gy, <64 x i8> %i.gz)
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ce, i64 2880
  %i.hc = load <64 x i8>, ptr %i.hb, align 64, !tbaa !95
  %i.hd = call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.gu, <64 x i8> %i.gy, <64 x i8> %i.hc)
  %i.he = load <1 x i32>, ptr %i.x, align 4
  %i.hf = shufflevector <1 x i32> %i.he, <1 x i32> poison, <16 x i32> zeroinitializer
  %i.hg = getelementptr inbounds nuw i8, ptr %i.ce, i64 2944
  %i.hh = bitcast <16 x i32> %i.hf to <64 x i8>   ; 2 uses
  %i.hi = load <64 x i8>, ptr %i.hg, align 64, !tbaa !95
  %i.hj = call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.ha, <64 x i8> %i.hh, <64 x i8> %i.hi)
  %i.hk = getelementptr inbounds nuw i8, ptr %i.ce, i64 3008
  %i.hl = load <64 x i8>, ptr %i.hk, align 64, !tbaa !95
  %i.hm = call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.hd, <64 x i8> %i.hh, <64 x i8> %i.hl)
  %i.hn = load <1 x i32>, ptr %i.y, align 8
  %i.ho = shufflevector <1 x i32> %i.hn, <1 x i32> poison, <16 x i32> zeroinitializer
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ce, i64 3072
  %i.hq = bitcast <16 x i32> %i.ho to <64 x i8>   ; 2 uses
  %i.hr = load <64 x i8>, ptr %i.hp, align 64, !tbaa !95
  %i.hs = call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.hj, <64 x i8> %i.hq, <64 x i8> %i.hr)
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ce, i64 3136
  %i.hu = load <64 x i8>, ptr %i.ht, align 64, !tbaa !95
  %i.hv = call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.hm, <64 x i8> %i.hq, <64 x i8> %i.hu)
  %i.hw = load <1 x i32>, ptr %i.z, align 4
  %i.hx = shufflevector <1 x i32> %i.hw, <1 x i32> poison, <16 x i32> zeroinitializer
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ce, i64 3200
  %i.hz = bitcast <16 x i32> %i.hx to <64 x i8>   ; 2 uses
  %i.ia = load <64 x i8>, ptr %i.hy, align 64, !tbaa !95
  %i.ib = call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.hs, <64 x i8> %i.hz, <64 x i8> %i.ia) ; 3 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ce, i64 3264
  %i.id = load <64 x i8>, ptr %i.ic, align 64, !tbaa !95
  %i.ie = call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.hv, <64 x i8> %i.hz, <64 x i8> %i.id) ; 3 uses
  store <16 x i32> %i.ib, ptr %i.s, align 64, !tbaa !95
  store <16 x i32> %i.ie, ptr %.sroa.20.0..sroa_idx43.i.i, align 64, !tbaa !95
  %i.if = shufflevector <16 x i32> %i.ib, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %bc14.i = bitcast <16 x i32> %i.ib to <2 x i256>
  %i.ig = extractelement <2 x i256> %bc14.i, i64 1
  %i.ih = bitcast i256 %i.ig to <8 x i32>
  %i.ii = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.if, <8 x i32> %i.ih)
  %i.ij = lshr <16 x i16> %i.ii, splat (i16 6)
  %i.ik = shufflevector <16 x i32> %i.ie, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %bc15.i = bitcast <16 x i32> %i.ie to <2 x i256>
  %i.il = extractelement <2 x i256> %bc15.i, i64 1
  %i.im = bitcast i256 %i.il to <8 x i32>
  %i.in = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.ik, <8 x i32> %i.im)
  %i.io = lshr <16 x i16> %i.in, splat (i16 6)
  %i.ip = call <32 x i8> @llvm.x86.avx2.packsswb(<16 x i16> %i.ij, <16 x i16> %i.io)
  %i.iq = bitcast <32 x i8> %i.ip to <8 x i32>
  %i.ir = shufflevector <8 x i32> %i.iq, <8 x i32> poison, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7> ; 2 uses
  store <8 x i32> %i.ir, ptr %i.aa, align 64, !tbaa !95
  %i.is = getelementptr inbounds nuw i8, ptr %i.ce, i64 3392
  %i.it = getelementptr inbounds nuw i8, ptr %i.ce, i64 3456
  %.cast.i = bitcast <8 x i32> %i.ir to <32 x i8>
  %i.iu = load <32 x i8>, ptr %i.it, align 64, !tbaa !95
  %i.iv = call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> zeroinitializer, <32 x i8> %.cast.i, <32 x i8> %i.iu)
  %i.iw = load i32, ptr %i.is, align 64, !tbaa !162
  %i.ix = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.iv)
  %i.iy = add nsw i32 %i.ix, %i.iw                ; 2 uses
  store i32 %i.iy, ptr %i.ab, align 64, !tbaa !162
  %i.iz = load i32, ptr %i.ac, align 4, !tbaa !162
  %i.ja = mul nsw i32 %i.iz, 150
  %i.jb = sdiv i32 %i.ja, 127
  %i.jc = add nsw i32 %i.iy, %i.jb
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.je = insertelement <2 x i32> poison, i32 %i.cd, i64 0
  %i.jf = insertelement <2 x i32> %i.je, i32 %i.jc, i64 1
  %i.jg = sdiv <2 x i32> %i.jf, <i32 32, i32 16>
  %i.jh = shufflevector <2 x i32> %i.jg, <2 x i32> poison, <9 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 1>
  call void @llvm.masked.store.v9i32.p0(<9 x i32> %i.jh, ptr align 4 %i.jd, <9 x i1> <i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 true>), !tbaa !162
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !399
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN9Stockfish4Eval4NNUE7NetworkINS1_19NetworkArchitectureILj128ELi15ELi32EEENS1_18FeatureTransformerILj128EEEE4loadB5cxx11ERSi(ptr dead_on_unwind noalias writable sret(%"class.std::optional") align 8 %0, ptr noundef nonnull align 64 dereferenceable(6517429) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 !guid !404 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 6517428
  store i8 1, ptr %i.b, align 4, !tbaa !192
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.c, ptr %3, align 8, !tbaa !115
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %i.d, align 8, !tbaa !117
  store i8 0, ptr %i.c, align 8, !tbaa !95
  %i.e = call noundef zeroext i1 @_ZN9Stockfish4Eval4NNUE7NetworkINS1_19NetworkArchitectureILj128ELi15ELi32EEENS1_18FeatureTransformerILj128EEEE15read_parametersERSiRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 64 dereferenceable(6517429) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
  br i1 %i.e, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !405)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !115, !alias.scope !405
  %i.g = load ptr, ptr %3, align 8, !tbaa !118, !noalias !405 ; 2 uses
  %i.h = load i64, ptr %i.d, align 8, !tbaa !117, !noalias !405 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19, !noalias !405
  store i64 %i.h, ptr %i.a, align 8, !tbaa !97, !noalias !405
  %i.i = icmp ugt i64 %i.h, 15
  br i1 %i.i, label %bb.c, label %._crit_edge.i.i.i.i.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.j = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #19 ; 2 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !118, !alias.scope !405
  %i.k = load i64, ptr %i.a, align 8, !tbaa !97, !noalias !405
  store i64 %i.k, ptr %i.f, align 8, !tbaa !95, !alias.scope !405
  br label %._crit_edge.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.c, %bb.b
  %i.l = phi ptr [ %i.j, %bb.c ], [ %i.f, %bb.b ] ; 2 uses
  switch i64 %i.h, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZSt13make_optionalIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENSt9enable_ifIX18is_constructible_vINSt5decayIT_E4typeES9_EESt8optionalISB_EE4typeEOS9_.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.m = load i8, ptr %i.g, align 1, !tbaa !95
  store i8 %i.m, ptr %i.l, align 1, !tbaa !95
  br label %_ZSt13make_optionalIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENSt9enable_ifIX18is_constructible_vINSt5decayIT_E4typeES9_EESt8optionalISB_EE4typeEOS9_.exit

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr align 1 %i.g, i64 %i.h, i1 false)
  br label %_ZSt13make_optionalIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENSt9enable_ifIX18is_constructible_vINSt5decayIT_E4typeES9_EESt8optionalISB_EE4typeEOS9_.exit

_ZSt13make_optionalIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENSt9enable_ifIX18is_constructible_vINSt5decayIT_E4typeES9_EESt8optionalISB_EE4typeEOS9_.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i, %bb.d, %bb.e
end_hunk_1
begin_hunk_2_@_ZN9Stockfish17get_raw_data_hashIA16_iEEmRKT_:.lr.ph.i
  %i.ka = sext i8 %i.jz to i64
  %i.kb = xor i64 %i.jx, %i.ka
  %i.kc = mul i64 %i.kb, 1099511628211
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 58
  %i.ke = load i8, ptr %i.kd, align 2, !tbaa !95
  %i.kf = sext i8 %i.ke to i64
  %i.kg = xor i64 %i.kc, %i.kf
  %i.kh = mul i64 %i.kg, 1099511628211
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 59
  %i.kj = load i8, ptr %i.ki, align 1, !tbaa !95
  %i.kk = sext i8 %i.kj to i64
  %i.kl = xor i64 %i.kh, %i.kk
  %i.km = mul i64 %i.kl, 1099511628211
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.ko = load i8, ptr %i.kn, align 4, !tbaa !95
  %i.kp = sext i8 %i.ko to i64
  %i.kq = xor i64 %i.km, %i.kp
  %i.kr = mul i64 %i.kq, 1099511628211
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 61
  %i.kt = load i8, ptr %i.ks, align 1, !tbaa !95
  %i.ku = sext i8 %i.kt to i64
  %i.kv = xor i64 %i.kr, %i.ku
  %i.kw = mul i64 %i.kv, 1099511628211
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 62
  %i.ky = load i8, ptr %i.kx, align 2, !tbaa !95
  %i.kz = sext i8 %i.ky to i64
  %i.la = xor i64 %i.kw, %i.kz
  %i.lb = mul i64 %i.la, 1099511628211
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 63
  %i.ld = load i8, ptr %i.lc, align 1, !tbaa !95
  %i.le = sext i8 %i.ld to i64
  %i.lf = xor i64 %i.lb, %i.le
  %i.lg = mul i64 %i.lf, 1099511628211
  ret i64 %i.lg
}

; Function Attrs: nounwind
declare void @_ZN9Stockfish4Eval4NNUE16AccumulatorStack8evaluateILj1024EEEvRKNS_8PositionERKNS1_18FeatureTransformerIXT_EEERNS1_17AccumulatorCaches5CacheIXT_EEE(ptr noundef nonnull align 64 dereferenceable(2529288), ptr noundef nonnull align 8 dereferenceable(1048), ptr noundef nonnull align 64 dereferenceable(131188224), ptr noundef nonnull align 64 dereferenceable(278528)) local_unnamed_addr #7

; Function Attrs: nounwind
declare noundef nonnull align 64 dereferenceable(4871) ptr @_ZNK9Stockfish4Eval4NNUE16AccumulatorStack6latestINS1_8Features11HalfKAv2_hmEEERKNS1_16AccumulatorStateIT_EEv(ptr noundef nonnull align 64 dereferenceable(2529288)) local_unnamed_addr #7

; Function Attrs: nounwind
declare noundef nonnull align 64 dereferenceable(5280) ptr @_ZNK9Stockfish4Eval4NNUE16AccumulatorStack6latestINS1_8Features11FullThreatsEEERKNS1_16AccumulatorStateIT_EEv(ptr noundef nonnull align 64 dereferenceable(2529288)) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <32 x i16> @llvm.smax.v32i16(<32 x i16>, <32 x i16>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <32 x i16> @llvm.smin.v32i16(<32 x i16>, <32 x i16>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <64 x i8> @llvm.x86.avx512.packuswb.512(<32 x i16>, <32 x i16>) #13

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNK9Stockfish4Eval4NNUE6Layers26AffineTransformSparseInputILj1024ELj16EE9propagateEPKhPi(ptr noundef nonnull align 64 dereferenceable(16448) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 !guid !421 {
.critedge:
  %i.a = alloca [256 x i16], align 16             ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  tail call void @llvm.experimental.noalias.scope.decl(metadata !422)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !423)
  %i.b = load <16 x i32>, ptr %1, align 64, !tbaa !95, !alias.scope !422
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.d = load <16 x i32>, ptr %i.c, align 64, !tbaa !95, !alias.scope !422
  %i.e = tail call <32 x i16> @llvm.x86.avx512.packusdw.512(<16 x i32> %i.b, <16 x i32> %i.d)
  %i.f = icmp ne <32 x i16> %i.e, zeroinitializer ; 2 uses
  %i.g = bitcast <32 x i1> %i.f to i32
  %i.h = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> <i16 0, i16 1, i16 2, i16 3, i16 16, i16 17, i16 18, i16 19, i16 4, i16 5, i16 6, i16 7, i16 20, i16 21, i16 22, i16 23, i16 8, i16 9, i16 10, i16 11, i16 24, i16 25, i16 26, i16 27, i16 12, i16 13, i16 14, i16 15, i16 28, i16 29, i16 30, i16 31>, <32 x i16> zeroinitializer, <32 x i1> %i.f)
  store <32 x i16> %i.h, ptr %i.a, align 16, !tbaa !95, !alias.scope !423
  %i.i = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.g) ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.k = load <16 x i32>, ptr %i.j, align 64, !tbaa !95, !alias.scope !422
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.m = load <16 x i32>, ptr %i.l, align 64, !tbaa !95, !alias.scope !422
  %i.n = tail call <32 x i16> @llvm.x86.avx512.packusdw.512(<16 x i32> %i.k, <16 x i32> %i.m)
  %i.o = icmp ne <32 x i16> %i.n, zeroinitializer ; 2 uses
  %i.p = bitcast <32 x i1> %i.o to i32
  %i.q = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> <i16 32, i16 33, i16 34, i16 35, i16 48, i16 49, i16 50, i16 51, i16 36, i16 37, i16 38, i16 39, i16 52, i16 53, i16 54, i16 55, i16 40, i16 41, i16 42, i16 43, i16 56, i16 57, i16 58, i16 59, i16 44, i16 45, i16 46, i16 47, i16 60, i16 61, i16 62, i16 63>, <32 x i16> zeroinitializer, <32 x i1> %i.o)
  %i.r = zext nneg i32 %i.i to i64
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.r
  store <32 x i16> %i.q, ptr %i.s, align 2, !tbaa !95, !alias.scope !423
  %i.t = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.p)
  %i.u = add nuw nsw i32 %i.t, %i.i               ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.w = load <16 x i32>, ptr %i.v, align 64, !tbaa !95, !alias.scope !422
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.y = load <16 x i32>, ptr %i.x, align 64, !tbaa !95, !alias.scope !422
  %i.z = tail call <32 x i16> @llvm.x86.avx512.packusdw.512(<16 x i32> %i.w, <16 x i32> %i.y)
  %i.aa = icmp ne <32 x i16> %i.z, zeroinitializer ; 2 uses
  %i.ab = bitcast <32 x i1> %i.aa to i32
  %i.ac = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> <i16 64, i16 65, i16 66, i16 67, i16 80, i16 81, i16 82, i16 83, i16 68, i16 69, i16 70, i16 71, i16 84, i16 85, i16 86, i16 87, i16 72, i16 73, i16 74, i16 75, i16 88, i16 89, i16 90, i16 91, i16 76, i16 77, i16 78, i16 79, i16 92, i16 93, i16 94, i16 95>, <32 x i16> zeroinitializer, <32 x i1> %i.aa)
  %i.ad = zext nneg i32 %i.u to i64
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.ad
  store <32 x i16> %i.ac, ptr %i.ae, align 2, !tbaa !95, !alias.scope !423
  %i.af = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.ab)
  %i.ag = add nuw nsw i32 %i.af, %i.u             ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.ai = load <16 x i32>, ptr %i.ah, align 64, !tbaa !95, !alias.scope !422
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 448
  %i.ak = load <16 x i32>, ptr %i.aj, align 64, !tbaa !95, !alias.scope !422
  %i.al = tail call <32 x i16> @llvm.x86.avx512.packusdw.512(<16 x i32> %i.ai, <16 x i32> %i.ak)
  %i.am = icmp ne <32 x i16> %i.al, zeroinitializer ; 2 uses
  %i.an = bitcast <32 x i1> %i.am to i32
  %i.ao = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> <i16 96, i16 97, i16 98, i16 99, i16 112, i16 113, i16 114, i16 115, i16 100, i16 101, i16 102, i16 103, i16 116, i16 117, i16 118, i16 119, i16 104, i16 105, i16 106, i16 107, i16 120, i16 121, i16 122, i16 123, i16 108, i16 109, i16 110, i16 111, i16 124, i16 125, i16 126, i16 127>, <32 x i16> zeroinitializer, <32 x i1> %i.am)
  %i.ap = zext nneg i32 %i.ag to i64
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.ap
  store <32 x i16> %i.ao, ptr %i.aq, align 2, !tbaa !95, !alias.scope !423
  %i.ar = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.an)
  %i.as = add nuw nsw i32 %i.ar, %i.ag            ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 512
  %i.au = load <16 x i32>, ptr %i.at, align 64, !tbaa !95, !alias.scope !422
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 576
  %i.aw = load <16 x i32>, ptr %i.av, align 64, !tbaa !95, !alias.scope !422
  %i.ax = tail call <32 x i16> @llvm.x86.avx512.packusdw.512(<16 x i32> %i.au, <16 x i32> %i.aw)
  %i.ay = icmp ne <32 x i16> %i.ax, zeroinitializer ; 2 uses
  %i.az = bitcast <32 x i1> %i.ay to i32
  %i.ba = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> <i16 128, i16 129, i16 130, i16 131, i16 144, i16 145, i16 146, i16 147, i16 132, i16 133, i16 134, i16 135, i16 148, i16 149, i16 150, i16 151, i16 136, i16 137, i16 138, i16 139, i16 152, i16 153, i16 154, i16 155, i16 140, i16 141, i16 142, i16 143, i16 156, i16 157, i16 158, i16 159>, <32 x i16> zeroinitializer, <32 x i1> %i.ay)
  %i.bb = zext nneg i32 %i.as to i64
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.bb
  store <32 x i16> %i.ba, ptr %i.bc, align 2, !tbaa !95, !alias.scope !423
  %i.bd = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.az)
  %i.be = add nuw nsw i32 %i.bd, %i.as            ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 640
  %i.bg = load <16 x i32>, ptr %i.bf, align 64, !tbaa !95, !alias.scope !422
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 704
  %i.bi = load <16 x i32>, ptr %i.bh, align 64, !tbaa !95, !alias.scope !422
  %i.bj = tail call <32 x i16> @llvm.x86.avx512.packusdw.512(<16 x i32> %i.bg, <16 x i32> %i.bi)
  %i.bk = icmp ne <32 x i16> %i.bj, zeroinitializer ; 2 uses
  %i.bl = bitcast <32 x i1> %i.bk to i32
  %i.bm = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> <i16 160, i16 161, i16 162, i16 163, i16 176, i16 177, i16 178, i16 179, i16 164, i16 165, i16 166, i16 167, i16 180, i16 181, i16 182, i16 183, i16 168, i16 169, i16 170, i16 171, i16 184, i16 185, i16 186, i16 187, i16 172, i16 173, i16 174, i16 175, i16 188, i16 189, i16 190, i16 191>, <32 x i16> zeroinitializer, <32 x i1> %i.bk)
  %i.bn = zext nneg i32 %i.be to i64
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.bn
  store <32 x i16> %i.bm, ptr %i.bo, align 2, !tbaa !95, !alias.scope !423
  %i.bp = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.bl)
  %i.bq = add nuw nsw i32 %i.bp, %i.be            ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 768
  %i.bs = load <16 x i32>, ptr %i.br, align 64, !tbaa !95, !alias.scope !422
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 832
  %i.bu = load <16 x i32>, ptr %i.bt, align 64, !tbaa !95, !alias.scope !422
  %i.bv = tail call <32 x i16> @llvm.x86.avx512.packusdw.512(<16 x i32> %i.bs, <16 x i32> %i.bu)
  %i.bw = icmp ne <32 x i16> %i.bv, zeroinitializer ; 2 uses
  %i.bx = bitcast <32 x i1> %i.bw to i32
  %i.by = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> <i16 192, i16 193, i16 194, i16 195, i16 208, i16 209, i16 210, i16 211, i16 196, i16 197, i16 198, i16 199, i16 212, i16 213, i16 214, i16 215, i16 200, i16 201, i16 202, i16 203, i16 216, i16 217, i16 218, i16 219, i16 204, i16 205, i16 206, i16 207, i16 220, i16 221, i16 222, i16 223>, <32 x i16> zeroinitializer, <32 x i1> %i.bw)
  %i.bz = zext nneg i32 %i.bq to i64
  %i.ca = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.bz
  store <32 x i16> %i.by, ptr %i.ca, align 2, !tbaa !95, !alias.scope !423
  %i.cb = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.bx)
  %i.cc = add nuw nsw i32 %i.cb, %i.bq            ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 896
  %i.ce = load <16 x i32>, ptr %i.cd, align 64, !tbaa !95, !alias.scope !422
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 960
  %i.cg = load <16 x i32>, ptr %i.cf, align 64, !tbaa !95, !alias.scope !422
  %i.ch = tail call <32 x i16> @llvm.x86.avx512.packusdw.512(<16 x i32> %i.ce, <16 x i32> %i.cg)
  %i.ci = icmp ne <32 x i16> %i.ch, zeroinitializer ; 2 uses
  %i.cj = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> <i16 224, i16 225, i16 226, i16 227, i16 240, i16 241, i16 242, i16 243, i16 228, i16 229, i16 230, i16 231, i16 244, i16 245, i16 246, i16 247, i16 232, i16 233, i16 234, i16 235, i16 248, i16 249, i16 250, i16 251, i16 236, i16 237, i16 238, i16 239, i16 252, i16 253, i16 254, i16 255>, <32 x i16> zeroinitializer, <32 x i1> %i.ci)
  %i.ck = zext nneg i32 %i.cc to i64
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.ck
  store <32 x i16> %i.cj, ptr %i.cl, align 2, !tbaa !95, !alias.scope !423
  %i.cm = load <16 x i32>, ptr %0, align 64, !tbaa !95 ; 2 uses
  %i.cn = bitcast <32 x i1> %i.ci to i32
  %i.co = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.cn)
  %i.cp = add nuw nsw i32 %i.co, %i.cc            ; 2 uses
  %i.cq = zext nneg i32 %i.cp to i64
  %.idx = shl nuw nsw i64 %i.cq, 1
  %i.cr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.ct = getelementptr inbounds i8, ptr %i.cr, i64 -4
  %i.cu = icmp samesign ugt i32 %i.cp, 2
  br i1 %i.cu, label %.critedge73, label %.critedge75

.critedge73:                                      ; preds = %.critedge, %.critedge73
  %i.cv = phi <16 x i32> [ %i.eb, %.critedge73 ], [ zeroinitializer, %.critedge ]
  %i.cw = phi <16 x i32> [ %i.dz, %.critedge73 ], [ zeroinitializer, %.critedge ]
  %.07081 = phi ptr [ %i.de, %.critedge73 ], [ %i.a, %.critedge ] ; 4 uses
  %i.cx = phi <16 x i32> [ %i.dx, %.critedge73 ], [ %i.cm, %.critedge ]
  %i.cy = getelementptr inbounds nuw i8, ptr %.07081, i64 2
  %i.cz = load i16, ptr %.07081, align 2, !tbaa !194
  %i.da = zext i16 %i.cz to i64                   ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.07081, i64 4
  %i.dc = load i16, ptr %i.cy, align 2, !tbaa !194
  %i.dd = zext i16 %i.dc to i64                   ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.07081, i64 6 ; 3 uses
  %i.df = load i16, ptr %i.db, align 2, !tbaa !194
  %i.dg = zext i16 %i.df to i64                   ; 2 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.da
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !162
  %i.dj = insertelement <16 x i32> poison, i32 %i.di, i64 0
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.dd
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !162
  %i.dm = insertelement <16 x i32> poison, i32 %i.dl, i64 0
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.dg
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !162
  %i.dp = insertelement <16 x i32> poison, i32 %i.do, i64 0
  %i.dq = shl nuw nsw i64 %i.da, 6
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.dq
  %i.ds = shl nuw nsw i64 %i.dd, 6
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.ds
  %i.du = shl nuw nsw i64 %i.dg, 6
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.du
  %i.dw = load <64 x i8>, ptr %i.dr, align 64, !tbaa !95
  %3 = bitcast <16 x i32> %i.dj to <64 x i8>
  %4 = shufflevector <64 x i8> %3, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.dx = call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.cx, <64 x i8> %4, <64 x i8> %i.dw) ; 2 uses
  %i.dy = load <64 x i8>, ptr %i.dt, align 64, !tbaa !95
  %5 = bitcast <16 x i32> %i.dm to <64 x i8>
  %6 = shufflevector <64 x i8> %5, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.dz = call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.cw, <64 x i8> %6, <64 x i8> %i.dy) ; 2 uses
  %i.ea = load <64 x i8>, ptr %i.dv, align 64, !tbaa !95
  %7 = bitcast <16 x i32> %i.dp to <64 x i8>
  %8 = shufflevector <64 x i8> %7, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.eb = call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.cv, <64 x i8> %8, <64 x i8> %i.ea) ; 2 uses
  %i.ec = icmp ult ptr %i.de, %i.ct
  br i1 %i.ec, label %.critedge73, label %.critedge75, !llvm.loop !419

.critedge75:                                      ; preds = %.critedge73, %.critedge
  %.sroa.12.0 = phi <16 x i32> [ zeroinitializer, %.critedge ], [ %i.eb, %.critedge73 ]
  %.sroa.8.0 = phi <16 x i32> [ zeroinitializer, %.critedge ], [ %i.dz, %.critedge73 ]
  %.lcssa = phi <16 x i32> [ %i.cm, %.critedge ], [ %i.dx, %.critedge73 ]
  %.070.lcssa = phi ptr [ %i.a, %.critedge ], [ %i.de, %.critedge73 ] ; 2 uses
  %i.ed = add <16 x i32> %.sroa.8.0, %.lcssa
  %i.ee = add <16 x i32> %i.ed, %.sroa.12.0       ; 2 uses
  %i.ef = icmp ult ptr %.070.lcssa, %i.cr
  br i1 %i.ef, label %.critedge77, label %.critedge79

.critedge77:                                      ; preds = %.critedge75, %.critedge77
  %.189 = phi ptr [ %i.eg, %.critedge77 ], [ %.070.lcssa, %.critedge75 ] ; 2 uses
  %storemerge88 = phi <16 x i32> [ %i.ep, %.critedge77 ], [ %i.ee, %.critedge75 ]
  %i.eg = getelementptr inbounds nuw i8, ptr %.189, i64 2 ; 2 uses
  %i.eh = load i16, ptr %.189, align 2, !tbaa !194
  %i.ei = zext i16 %i.eh to i64                   ; 2 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ei
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !162
  %i.el = insertelement <16 x i32> poison, i32 %i.ek, i64 0
  %i.em = shl nuw nsw i64 %i.ei, 6
  %i.en = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.em
  %i.eo = load <64 x i8>, ptr %i.en, align 64, !tbaa !95
  %9 = bitcast <16 x i32> %i.el to <64 x i8>
  %10 = shufflevector <64 x i8> %9, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.ep = call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %storemerge88, <64 x i8> %10, <64 x i8> %i.eo) ; 2 uses
  %i.eq = icmp ult ptr %i.eg, %i.cr
  br i1 %i.eq, label %.critedge77, label %.critedge79, !llvm.loop !420

.critedge79:                                      ; preds = %.critedge77, %.critedge75
  %.sroa.0.1.in = phi <16 x i32> [ %i.ee, %.critedge75 ], [ %i.ep, %.critedge77 ]
  store <16 x i32> %.sroa.0.1.in, ptr %2, align 64, !tbaa !95
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <32 x i16> @llvm.x86.avx512.packusdw.512(<16 x i32>, <16 x i32>) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16>, <32 x i16>, <32 x i1>) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32>, <64 x i8>, <64 x i8>) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32>, <4 x i32>) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16>, <8 x i16>) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32>, <4 x i32>) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32>, <8 x i32>) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <32 x i8> @llvm.x86.avx2.packsswb(<16 x i16>, <16 x i16>) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32>, <32 x i8>, <32 x i8>) #13

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, i64 noundef, i8 noundef signext) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #10

; Function Attrs: cold nofree noreturn nounwind
declare void @_ZSt9terminatev() local_unnamed_addr #15

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9Stockfish4Eval4NNUE18FeatureTransformerILj1024EE15read_parametersERSi(ptr noundef nonnull align 64 dereferenceable(131188224) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 !guid !426 {
bb.a:
  %.sroa.0.i1.i = alloca [128 x i8], align 1      ; 13 uses
  %.sroa.0.i.i = alloca [128 x i8], align 1       ; 13 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca [17 x i8], align 16               ; 3 uses
  %2 = alloca %"struct.std::array.45", align 1    ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca [17 x i8], align 16               ; 3 uses
  %3 = alloca %"struct.std::array.45", align 1    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  %i.e = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.d, i64 noundef 17) #19 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  %i.f = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.c, i64 noundef 4) #19 ; 0 uses
  %i.g = load i32, ptr %i.c, align 4, !tbaa !162
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %.06.i = phi i32 [ %i.g, %bb.a ], [ %i.p, %bb.f ] ; 2 uses
  %.0.i = phi i32 [ 8192, %bb.a ], [ %i.l, %bb.f ] ; 2 uses
  %.034.i.i = phi i64 [ 0, %bb.a ], [ %.1.i.i, %bb.f ] ; 3 uses
  %.02233.i.i = phi i64 [ 0, %bb.a ], [ %.123.i.i, %bb.f ] ; 2 uses
  %.02432.i.i = phi i32 [ 0, %bb.a ], [ %.125.i.i, %bb.f ]
  %i.h = icmp eq i32 %.0.i, 8192
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = call i32 @llvm.umin.i32(i32 %.06.i, i32 8192)
  %.sroa.speculated.i.i = zext nneg i32 %i.i to i64
  %i.j = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 dereferenceable(8192) %3, i64 noundef %.sroa.speculated.i.i) #19 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = phi i32 [ 0, %bb.c ], [ %.0.i, %bb.b ]   ; 2 uses
  %i.l = add nuw nsw i32 %i.k, 1
  %i.m = zext nneg i32 %i.k to i64
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !95    ; 3 uses
  %i.p = add i32 %.06.i, -1
  %i.q = and i8 %i.o, 127
  %i.r = zext nneg i8 %i.q to i32
  %i.s = trunc i64 %.02233.i.i to i32
  %i.t = and i32 %i.s, 31
  %i.u = shl i32 %i.r, %i.t
  %sext.i.i = shl i32 %.02432.i.i, 16
  %i.v = ashr exact i32 %sext.i.i, 16
  %i.w = or i32 %i.u, %i.v                        ; 2 uses
  %i.x = add i64 %.02233.i.i, 7                   ; 3 uses
  %i.y = icmp sgt i8 %i.o, -1
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = icmp ugt i64 %i.x, 31
  %i.aa = icmp samesign ult i8 %i.o, 64
  %or.cond.i.i = or i1 %i.z, %i.aa
  %i.ab = trunc nuw nsw i64 %i.x to i32
  %notmask.i.i = shl nsw i32 -1, %i.ab
  %i.ac = select i1 %or.cond.i.i, i32 0, i32 %notmask.i.i
  %i.ad = or i32 %i.w, %i.ac
  %i.ae = trunc i32 %i.ad to i16
  %i.af = add nuw nsw i64 %.034.i.i, 1
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.034.i.i
  store i16 %i.ae, ptr %i.ag, align 2, !tbaa !194
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.125.i.i = phi i32 [ 0, %bb.e ], [ %i.w, %bb.d ]
  %.123.i.i = phi i64 [ 0, %bb.e ], [ %i.x, %bb.d ]
  %.1.i.i = phi i64 [ %i.af, %bb.e ], [ %.034.i.i, %bb.d ] ; 2 uses
  %i.ah = icmp ult i64 %.1.i.i, 1024
  br i1 %i.ah, label %bb.b, label %_ZN9Stockfish4Eval4NNUE12read_leb_128IJSt5arrayIsLm1024EEEEEvRSiDpRT_.exit, !llvm.loop !424

_ZN9Stockfish4Eval4NNUE12read_leb_128IJSt5arrayIsLm1024EEEEEvRSiDpRT_.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 46139392 ; 9 uses
  %i.aj = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.ai, i64 noundef 81772544) #19 ; 0 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 2048 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.al = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.b, i64 noundef 17) #19 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.am = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.a, i64 noundef 4) #19 ; 0 uses
  %i.an = load i32, ptr %i.a, align 4, !tbaa !162
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  br label %bb.g

bb.g:                                             ; preds = %bb.k, %_ZN9Stockfish4Eval4NNUE12read_leb_128IJSt5arrayIsLm1024EEEEEvRSiDpRT_.exit
  %.06.i6 = phi i32 [ %i.an, %_ZN9Stockfish4Eval4NNUE12read_leb_128IJSt5arrayIsLm1024EEEEEvRSiDpRT_.exit ], [ %i.aw, %bb.k ] ; 2 uses
  %.0.i7 = phi i32 [ 8192, %_ZN9Stockfish4Eval4NNUE12read_leb_128IJSt5arrayIsLm1024EEEEEvRSiDpRT_.exit ], [ %i.as, %bb.k ] ; 2 uses
  %.034.i.i8 = phi i64 [ 0, %_ZN9Stockfish4Eval4NNUE12read_leb_128IJSt5arrayIsLm1024EEEEEvRSiDpRT_.exit ], [ %.1.i.i14, %bb.k ] ; 3 uses
  %.02233.i.i9 = phi i64 [ 0, %_ZN9Stockfish4Eval4NNUE12read_leb_128IJSt5arrayIsLm1024EEEEEvRSiDpRT_.exit ], [ %.123.i.i13, %bb.k ] ; 2 uses
  %.02432.i.i10 = phi i32 [ 0, %_ZN9Stockfish4Eval4NNUE12read_leb_128IJSt5arrayIsLm1024EEEEEvRSiDpRT_.exit ], [ %.125.i.i12, %bb.k ]
  %i.ao = icmp eq i32 %.0.i7, 8192
  br i1 %i.ao, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ap = call i32 @llvm.umin.i32(i32 %.06.i6, i32 8192)
  %.sroa.speculated.i.i17 = zext nneg i32 %i.ap to i64
  %i.aq = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 dereferenceable(8192) %2, i64 noundef %.sroa.speculated.i.i17) #19 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ar = phi i32 [ 0, %bb.h ], [ %.0.i7, %bb.g ] ; 2 uses
  %i.as = add nuw nsw i32 %i.ar, 1
  %i.at = zext nneg i32 %i.ar to i64
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !95  ; 3 uses
  %i.aw = add i32 %.06.i6, -1
  %i.ax = and i8 %i.av, 127
  %i.ay = zext nneg i8 %i.ax to i32
  %i.az = trunc i64 %.02233.i.i9 to i32
  %i.ba = and i32 %i.az, 31
  %i.bb = shl i32 %i.ay, %i.ba
  %sext.i.i11 = shl i32 %.02432.i.i10, 16
  %i.bc = ashr exact i32 %sext.i.i11, 16
  %i.bd = or i32 %i.bb, %i.bc                     ; 2 uses
  %i.be = add i64 %.02233.i.i9, 7                 ; 3 uses
  %i.bf = icmp sgt i8 %i.av, -1
  br i1 %i.bf, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bg = icmp ugt i64 %i.be, 31
  %i.bh = icmp samesign ult i8 %i.av, 64
  %or.cond.i.i15 = or i1 %i.bg, %i.bh
  %i.bi = trunc nuw nsw i64 %i.be to i32
  %notmask.i.i16 = shl nsw i32 -1, %i.bi
  %i.bj = select i1 %or.cond.i.i15, i32 0, i32 %notmask.i.i16
  %i.bk = or i32 %i.bd, %i.bj
  %i.bl = trunc i32 %i.bk to i16
  %i.bm = add nuw nsw i64 %.034.i.i8, 1
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %.034.i.i8
  store i16 %i.bl, ptr %i.bn, align 2, !tbaa !194
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.125.i.i12 = phi i32 [ 0, %bb.j ], [ %i.bd, %bb.i ]
  %.123.i.i13 = phi i64 [ 0, %bb.j ], [ %i.be, %bb.i ]
  %.1.i.i14 = phi i64 [ %i.bm, %bb.j ], [ %.034.i.i8, %bb.i ] ; 2 uses
  %i.bo = icmp ult i64 %.1.i.i14, 23068672
  br i1 %i.bo, label %bb.g, label %_ZN9Stockfish4Eval4NNUE12read_leb_128IJSt5arrayIsLm23068672EEEEEvRSiDpRT_.exit, !llvm.loop !425

_ZN9Stockfish4Eval4NNUE12read_leb_128IJSt5arrayIsLm23068672EEEEEvRSiDpRT_.exit: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 128632832
end_hunk_2
