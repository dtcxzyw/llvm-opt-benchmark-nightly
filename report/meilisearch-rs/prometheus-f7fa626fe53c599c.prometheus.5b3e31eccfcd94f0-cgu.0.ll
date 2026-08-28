Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/prometheus-f7fa626fe53c599c.prometheus.5b3e31eccfcd94f0-cgu.0?download=true
inline.NumInlined: 2378
inline.NumDeleted: 1121
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZN10prometheus9histogram17LocalHistogramVec17with_label_values17h2bc25ffe7926355aE:bb.a
  %.sroa.57.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.mt, i64 -48
  store i64 %i.lc, ptr %.sroa.57.0..sroa_idx.i, align 8, !noalias !2901
  %.sroa.68.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.mt, i64 -40
  store ptr %i.lo, ptr %.sroa.68.0..sroa_idx.i, align 8, !noalias !2901
  %.sroa.79.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.mt, i64 -32
  store i64 %i.lc, ptr %.sroa.79.0..sroa_idx.i, align 8, !noalias !2901
  %.sroa.810.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.mt, i64 -24
  store ptr %.sroa.9.25.i.ptr.i.i, ptr %.sroa.810.0..sroa_idx.i, align 8, !noalias !2901
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.mt, i64 -16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !2902
  %i.mz = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.na = load i64, ptr %i.mz, align 8, !alias.scope !2892, !noalias !2895, !noundef !11
  %i.nb = add i64 %i.na, 1
  store i64 %i.nb, ptr %i.mz, align 8, !alias.scope !2892, !noalias !2895
  br label %"_ZN3std11collections4hash3map18Entry$LT$K$C$V$GT$14or_insert_with17h6bc9a2122482ac74E.exit"

bb.bh:                                            ; preds = %.lr.ph.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %"_ZN3std11collections4hash3map18Entry$LT$K$C$V$GT$14or_insert_with17h6bc9a2122482ac74E.exit"

"_ZN3std11collections4hash3map18Entry$LT$K$C$V$GT$14or_insert_with17h6bc9a2122482ac74E.exit": ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14insert_no_grow17h371d9d331d941299E.exit.i", %bb.bh
  %.pn.i = phi ptr [ %i.mt, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14insert_no_grow17h371d9d331d941299E.exit.i" ], [ %i.ch, %bb.bh ]
  %.sroa.01.0.i = getelementptr inbounds i8, ptr %.pn.i, i64 -56
  ret ptr %.sroa.01.0.i
}

; Function Attrs: nonlazybind uwtable
define void @_ZN10prometheus9histogram17LocalHistogramVec19remove_label_values17h94e3928f8ae3e756E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [64 x i8], align 8                ; 12 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = load ptr, ptr %1, align 8, !nonnull !11, !noundef !11
  %i.i = getelementptr i8, ptr %i.h, i64 104
  %.val = load i64, ptr %i.i, align 8, !noundef !11 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2903)
  %i.j = icmp ult i64 %.val, 384307168202282326
  tail call void @llvm.assume(i1 %i.j)
  %.not.i = icmp eq i64 %3, %.val
  br i1 %.not.i, label %bb.b, label %"_ZN10prometheus3vec22MetricVecCore$LT$T$GT$17hash_label_values17h2ff007cab32022a9E.exit"

bb.b:                                             ; preds = %bb.a
  %.idx.i = shl nuw nsw i64 %3, 4
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i ; 2 uses
  %i.l = icmp eq i64 %3, 0                        ; 2 uses
  br i1 %i.l, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %"_ZN53_$LT$fnv..FnvHasher$u20$as$u20$core..hash..Hasher$GT$5write17he11455c4820aeed4E.exit.i"
  %.sroa.03.03.i = phi ptr [ %i.m, %"_ZN53_$LT$fnv..FnvHasher$u20$as$u20$core..hash..Hasher$GT$5write17he11455c4820aeed4E.exit.i" ], [ %2, %bb.b ] ; 3 uses
  %.sroa.0.02.i = phi i64 [ %.sroa.0.0.lcssa.i.i, %"_ZN53_$LT$fnv..FnvHasher$u20$as$u20$core..hash..Hasher$GT$5write17he11455c4820aeed4E.exit.i" ], [ -3750763034362895579, %bb.b ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.03.03.i, i64 16 ; 2 uses
  %.sroa.03.0.val.i = load ptr, ptr %.sroa.03.03.i, align 8, !alias.scope !2903, !noalias !2906, !nonnull !11, !align !983, !noundef !11 ; 3 uses
  %i.n = getelementptr i8, ptr %.sroa.03.03.i, i64 8
  %.sroa.03.0.val5.i = load i64, ptr %i.n, align 8, !alias.scope !2903, !noalias !2906, !noundef !11 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.03.0.val.i, i64 %.sroa.03.0.val5.i
  %i.p = icmp samesign eq i64 %.sroa.03.0.val5.i, 0
  br i1 %i.p, label %"_ZN53_$LT$fnv..FnvHasher$u20$as$u20$core..hash..Hasher$GT$5write17he11455c4820aeed4E.exit.i", label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i
  %xtraiter = and i64 %.sroa.03.0.val5.i, 7       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.sroa.0.06.i.i.prol = phi i64 [ %i.u, %.lr.ph.i.i.prol ], [ %.sroa.0.02.i, %.lr.ph.i.i.preheader ]
  %.sroa.04.05.i.i.prol = phi ptr [ %i.q, %.lr.ph.i.i.prol ], [ %.sroa.03.0.val.i, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i.i.prol, i64 1 ; 2 uses
  %i.r = load i8, ptr %.sroa.04.05.i.i.prol, align 1, !alias.scope !2908, !noalias !2911, !noundef !11
  %i.s = zext i8 %i.r to i64
  %i.t = xor i64 %.sroa.0.06.i.i.prol, %i.s
  %i.u = mul i64 %i.t, 1099511628211              ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !2913

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.lcssa92.unr = phi i64 [ poison, %.lr.ph.i.i.preheader ], [ %i.u, %.lr.ph.i.i.prol ]
  %.sroa.0.06.i.i.unr = phi i64 [ %.sroa.0.02.i, %.lr.ph.i.i.preheader ], [ %i.u, %.lr.ph.i.i.prol ]
  %.sroa.04.05.i.i.unr = phi ptr [ %.sroa.03.0.val.i, %.lr.ph.i.i.preheader ], [ %i.q, %.lr.ph.i.i.prol ]
  %i.v = icmp ult i64 %.sroa.03.0.val5.i, 8
  br i1 %i.v, label %"_ZN53_$LT$fnv..FnvHasher$u20$as$u20$core..hash..Hasher$GT$5write17he11455c4820aeed4E.exit.i", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.sroa.0.06.i.i = phi i64 [ %i.bj, %.lr.ph.i.i ], [ %.sroa.0.06.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.04.05.i.i = phi ptr [ %i.bf, %.lr.ph.i.i ], [ %.sroa.04.05.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i.i, i64 1
  %i.x = load i8, ptr %.sroa.04.05.i.i, align 1, !alias.scope !2908, !noalias !2911, !noundef !11
  %i.y = zext i8 %i.x to i64
  %i.z = xor i64 %.sroa.0.06.i.i, %i.y
  %i.aa = mul i64 %i.z, 1099511628211
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i.i, i64 2
  %i.ac = load i8, ptr %i.w, align 1, !alias.scope !2908, !noalias !2911, !noundef !11
  %i.ad = zext i8 %i.ac to i64
  %i.ae = xor i64 %i.aa, %i.ad
  %i.af = mul i64 %i.ae, 1099511628211
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i.i, i64 3
  %i.ah = load i8, ptr %i.ab, align 1, !alias.scope !2908, !noalias !2911, !noundef !11
  %i.ai = zext i8 %i.ah to i64
  %i.aj = xor i64 %i.af, %i.ai
  %i.ak = mul i64 %i.aj, 1099511628211
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i.i, i64 4
  %i.am = load i8, ptr %i.ag, align 1, !alias.scope !2908, !noalias !2911, !noundef !11
  %i.an = zext i8 %i.am to i64
  %i.ao = xor i64 %i.ak, %i.an
  %i.ap = mul i64 %i.ao, 1099511628211
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i.i, i64 5
  %i.ar = load i8, ptr %i.al, align 1, !alias.scope !2908, !noalias !2911, !noundef !11
  %i.as = zext i8 %i.ar to i64
  %i.at = xor i64 %i.ap, %i.as
  %i.au = mul i64 %i.at, 1099511628211
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i.i, i64 6
  %i.aw = load i8, ptr %i.aq, align 1, !alias.scope !2908, !noalias !2911, !noundef !11
  %i.ax = zext i8 %i.aw to i64
  %i.ay = xor i64 %i.au, %i.ax
  %i.az = mul i64 %i.ay, 1099511628211
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i.i, i64 7
  %i.bb = load i8, ptr %i.av, align 1, !alias.scope !2908, !noalias !2911, !noundef !11
  %i.bc = zext i8 %i.bb to i64
  %i.bd = xor i64 %i.az, %i.bc
  %i.be = mul i64 %i.bd, 1099511628211
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i.i, i64 8 ; 2 uses
  %i.bg = load i8, ptr %i.ba, align 1, !alias.scope !2908, !noalias !2911, !noundef !11
  %i.bh = zext i8 %i.bg to i64
  %i.bi = xor i64 %i.be, %i.bh
  %i.bj = mul i64 %i.bi, 1099511628211            ; 2 uses
  %i.bk = icmp eq ptr %i.bf, %i.o
  br i1 %i.bk, label %"_ZN53_$LT$fnv..FnvHasher$u20$as$u20$core..hash..Hasher$GT$5write17he11455c4820aeed4E.exit.i", label %.lr.ph.i.i

"_ZN53_$LT$fnv..FnvHasher$u20$as$u20$core..hash..Hasher$GT$5write17he11455c4820aeed4E.exit.i": ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %.lr.ph.i
  %.sroa.0.0.lcssa.i.i = phi i64 [ %.sroa.0.02.i, %.lr.ph.i ], [ %.lcssa92.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.bj, %.lr.ph.i.i ] ; 2 uses
  %i.bl = icmp eq ptr %i.m, %i.k
  br i1 %i.bl, label %.loopexit, label %.lr.ph.i

"_ZN10prometheus3vec22MetricVecCore$LT$T$GT$17hash_label_values17h2ff007cab32022a9E.exit": ; preds = %bb.a
  store i64 -9223372036854775807, ptr %0, align 8
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.val, ptr %.sroa.212.0..sroa_idx, align 8
  %.sroa.313.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %.sroa.313.0..sroa_idx, align 8
  br label %bb.al

.loopexit:                                        ; preds = %"_ZN53_$LT$fnv..FnvHasher$u20$as$u20$core..hash..Hasher$GT$5write17he11455c4820aeed4E.exit.i", %bb.b
  %.sroa.6.0.ph = phi i64 [ -3750763034362895579, %bb.b ], [ %.sroa.0.0.lcssa.i.i, %"_ZN53_$LT$fnv..FnvHasher$u20$as$u20$core..hash..Hasher$GT$5write17he11455c4820aeed4E.exit.i" ] ; 2 uses
  store i64 %.sroa.6.0.ph, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2914)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2917)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2919)
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val.i.i = load i64, ptr %i.bn, align 8, !alias.scope !2922, !noalias !2923, !noundef !11
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val1.i.i = load i64, ptr %i.bo, align 8, !alias.scope !2922, !noalias !2923, !noundef !11
  %i.bp = call fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17hccfa02af68edd295E(i64 %.val.i.i, i64 %.val1.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g), !noalias !2927 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2928)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2931)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2934)
  %i.bq = lshr i64 %i.bp, 57
  %i.br = trunc nuw nsw i64 %i.bq to i8
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !alias.scope !2937, !noalias !2938, !noundef !11 ; 3 uses
  %i.bu = load ptr, ptr %i.bm, align 8, !alias.scope !2937, !noalias !2938, !nonnull !11, !noundef !11 ; 4 uses
  %.sroa.0.0.vec.insert.i.i.i.i.i = insertelement <16 x i8> poison, i8 %i.br, i64 0
  %.sroa.0.15.vec.insert.i.i.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.loopexit
  %.sroa.9.0.i.i.i.i.i = phi i64 [ 0, %.loopexit ], [ %i.cl, %bb.e ]
  %.pn.i.i.i.i = phi i64 [ %i.bp, %.loopexit ], [ %i.cm, %bb.e ]
  %.sroa.01.0.i.i.i.i.i = and i64 %.pn.i.i.i.i, %i.bt ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.sroa.01.0.i.i.i.i.i
  %.sroa.0.0.copyload.i26.i.i.i.i = load <16 x i8>, ptr %i.bv, align 1, !noalias !2942 ; 2 uses
  %i.bw = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i, %.sroa.0.15.vec.insert.i.i.i.i.i
  %i.bx = bitcast <16 x i1> %i.bw to i16          ; 2 uses
  %.not.i.not32.i.i.i.i = icmp eq i16 %i.bx, 0
  br i1 %.not.i.not32.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %bb.d
  %.sroa.06.0.i33.i.i.i.i = phi i16 [ %i.ck, %bb.d ], [ %i.bx, %bb.c ] ; 3 uses
  %i.by = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i.i.i, i1 true)
  %i.bz = zext nneg i16 %i.by to i64
  %i.ca = add i64 %.sroa.01.0.i.i.i.i.i, %i.bz
  %i.cb = and i64 %i.ca, %i.bt                    ; 3 uses
  %i.cc = sub nsw i64 0, %i.cb
  %i.cd = getelementptr inbounds [64 x i8], ptr %i.bu, i64 %i.cc ; 2 uses
  %i.ce = getelementptr inbounds i8, ptr %i.cd, i64 -64
  %.val3.i.i.i.i.i = load i64, ptr %i.ce, align 8, !noalias !2945, !noundef !11
  %i.cf = icmp eq i64 %.sroa.6.0.ph, %.val3.i.i.i.i.i
  br i1 %i.cf, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17hd10c28ab3d69a8cbE.exit.i.i.i", label %bb.d, !prof !321

._crit_edge.i.i.i.i:                              ; preds = %bb.d, %bb.c
  %i.cg = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i, splat (i8 -1)
  %i.ch = bitcast <16 x i1> %i.cg to i16
  %i.ci = icmp eq i16 %i.ch, 0
  br i1 %i.ci, label %bb.e, label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6remove17h915ff267e54b34c0E.exit", !prof !151

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cj = add i16 %.sroa.06.0.i33.i.i.i.i, -1
  %i.ck = and i16 %i.cj, %.sroa.06.0.i33.i.i.i.i  ; 2 uses
  %.not.i.not.i.i.i.i = icmp eq i16 %i.ck, 0
  br i1 %.not.i.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.cl = add i64 %.sroa.9.0.i.i.i.i.i, 16        ; 2 uses
  %i.cm = add i64 %.sroa.01.0.i.i.i.i.i, %i.cl
  br label %bb.c

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17hd10c28ab3d69a8cbE.exit.i.i.i": ; preds = %.lr.ph.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2948)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2951)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2954)
  %i.cn = add nsw i64 %i.cb, -16
  %i.co = and i64 %i.cn, %i.bt
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.co ; 2 uses
  %.sroa.0.0.copyload.i24.i.i.i.i.i.i = load <16 x i8>, ptr %i.cp, align 1, !noalias !2957
  %i.cq = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i.i, splat (i8 -1)
  %i.cr = bitcast <16 x i1> %i.cq to i16
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.cb ; 2 uses
  %.sroa.0.0.copyload.i825.i.i.i.i.i.i = load <16 x i8>, ptr %i.cs, align 1, !noalias !2961
  %i.ct = icmp eq <16 x i8> %.sroa.0.0.copyload.i825.i.i.i.i.i.i, splat (i8 -1)
  %i.cu = bitcast <16 x i1> %i.ct to i16
  %i.cv = tail call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 %i.cr, i1 false)
  %i.cw = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cu, i1 false)
  %narrow.i.i.i.i.i.i = add nuw nsw i16 %i.cw, %i.cv
  %i.cx = icmp samesign ugt i16 %narrow.i.i.i.i.i.i, 15
  br i1 %i.cx, label %bb.g, label %bb.f

bb.f:                                             ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17hd10c28ab3d69a8cbE.exit.i.i.i"
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.cz = load i64, ptr %i.cy, align 8, !alias.scope !2964, !noalias !2965, !noundef !11
  %i.da = add i64 %i.cz, 1
  store i64 %i.da, ptr %i.cy, align 8, !alias.scope !2964, !noalias !2965
  br label %bb.g

"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6remove17h915ff267e54b34c0E.exit": ; preds = %._crit_edge.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2966)
  br label %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$prometheus..histogram..LocalHistogram$GT$$GT$17hf53102e7c6ecf39dE.exit"

bb.g:                                             ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17hd10c28ab3d69a8cbE.exit.i.i.i", %bb.f
  %.sroa.0.0.i.i.i.i.i.i = phi i8 [ -1, %bb.f ], [ -128, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17hd10c28ab3d69a8cbE.exit.i.i.i" ] ; 2 uses
  store i8 %.sroa.0.0.i.i.i.i.i.i, ptr %i.cs, align 1, !noalias !2969
  %i.db = getelementptr i8, ptr %i.cp, i64 16
  store i8 %.sroa.0.0.i.i.i.i.i.i, ptr %i.db, align 1, !noalias !2969
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.dd = load i64, ptr %i.dc, align 8, !alias.scope !2964, !noalias !2965, !noundef !11
  %i.de = add i64 %i.dd, -1
  store i64 %i.de, ptr %i.dc, align 8, !alias.scope !2964, !noalias !2965
  %i.df = getelementptr inbounds i8, ptr %i.cd, i64 -56
  %i.dg = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.dg, ptr noundef nonnull align 8 dereferenceable(56) %i.df, i64 56, i1 false), !noalias !2970
  store i64 1, ptr %i.f, align 8, !alias.scope !2914, !noalias !2970
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2971)
  %i.dh = load i64, ptr %i.dg, align 8, !noundef !11
  %i.di = icmp eq i64 %i.dh, 0
  br i1 %i.di, label %bb.h, label %bb.q, !prof !321

bb.h:                                             ; preds = %bb.g
  store i64 -1, ptr %i.dg, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2974)
  %i.dj = getelementptr inbounds nuw i8, ptr %i.f, i64 48 ; 3 uses
  %i.dk = load i64, ptr %i.dj, align 8, !alias.scope !2974, !noundef !11 ; 2 uses
  %i.dl = icmp eq i64 %i.dk, 0
  br i1 %i.dl, label %"_ZN79_$LT$prometheus..histogram..LocalHistogram$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8d33dc75f7d92d92E.exit.i.i", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dm = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.dn = load ptr, ptr %i.dm, align 8, !alias.scope !2974, !nonnull !11, !noundef !11 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 264
  %i.dp = atomicrmw add ptr %i.do, i64 %i.dk acquire, align 8, !noalias !2974
  %.lobit.i.i = lshr i64 %i.dp, 63
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 152
  %i.dr = getelementptr inbounds nuw [40 x i8], ptr %i.dq, i64 %.lobit.i.i ; 4 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !alias.scope !2974, !nonnull !11, !noundef !11 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  %i.dv = load i64, ptr %i.du, align 8, !alias.scope !2974, !noundef !11 ; 2 uses
  %.idx.i.i17 = shl nuw nsw i64 %i.dv, 3
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 %.idx.i.i17
  %i.dx = icmp eq i64 %i.dv, 0
  br i1 %i.dx, label %._crit_edge.i.i, label %.lr.ph.i.i18

.lr.ph.i.i18:                                     ; preds = %bb.i
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  br label %bb.j

bb.j:                                             ; preds = %bb.n, %.lr.ph.i.i18
  %.sroa.0.018.i.i = phi ptr [ %i.dt, %.lr.ph.i.i18 ], [ %i.ea, %bb.n ] ; 2 uses
  %.sroa.7.017.i.i = phi i64 [ 0, %.lr.ph.i.i18 ], [ %i.eb, %bb.n ] ; 4 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i, i64 8 ; 2 uses
  %i.eb = add nuw nsw i64 %.sroa.7.017.i.i, 1
  %i.ec = load i64, ptr %.sroa.0.018.i.i, align 8, !noalias !2974, !noundef !11 ; 2 uses
  %.not9.i.i = icmp eq i64 %i.ec, 0
  br i1 %.not9.i.i, label %bb.n, label %bb.m

._crit_edge.i.i:                                  ; preds = %bb.n, %bb.i
  %i.ed = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.ee = load double, ptr %i.ed, align 8, !alias.scope !2974, !noundef !11
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dr, i64 24 ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %._crit_edge.i.i
  %i.eg = load atomic i64, ptr %i.ef acquire, align 8, !noalias !2974 ; 2 uses
  %i.eh = bitcast i64 %i.eg to double
  %i.ei = fadd double %i.ee, %i.eh
  %i.ej = bitcast double %i.ei to i64
  %i.ek = cmpxchg weak ptr %i.ef, i64 %i.eg, i64 %i.ej release monotonic, align 8, !noalias !2974
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.ek, 1
  br i1 %.sroa.18.0.in.i.i.i, label %bb.l, label %bb.k

bb.l:                                             ; preds = %bb.k
  %i.el = load i64, ptr %i.dj, align 8, !alias.scope !2974, !noundef !11
  %i.em = getelementptr inbounds nuw i8, ptr %i.dr, i64 32
  %i.en = atomicrmw add ptr %i.em, i64 %i.el release, align 8, !noalias !2974 ; 0 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2977)
  %i.eo = load i64, ptr %i.du, align 8, !alias.scope !2980, !noundef !11 ; 2 uses
  %i.ep = icmp eq i64 %i.eo, 0
  br i1 %i.ep, label %_ZN10prometheus9histogram18LocalHistogramCore5clear17h7c840d29e37456dfE.exit.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.l
  %.idx.i.i.i = shl i64 %i.eo, 3
  %i.eq = load ptr, ptr %i.ds, align 8, !alias.scope !2980, !nonnull !11, !noundef !11
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.eq, i8 0, i64 %.idx.i.i.i, i1 false), !noalias !2980
  br label %_ZN10prometheus9histogram18LocalHistogramCore5clear17h7c840d29e37456dfE.exit.i.i

_ZN10prometheus9histogram18LocalHistogramCore5clear17h7c840d29e37456dfE.exit.i.i: ; preds = %.lr.ph.preheader.i.i.i, %bb.l
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dj, i8 0, i64 16, i1 false), !alias.scope !2980
  %.pre.i = load i64, ptr %i.dg, align 8
  %i.er = add i64 %.pre.i, 1
  br label %"_ZN79_$LT$prometheus..histogram..LocalHistogram$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8d33dc75f7d92d92E.exit.i.i"

bb.m:                                             ; preds = %bb.j
  %i.es = load i64, ptr %i.dy, align 8, !noalias !2974, !noundef !11 ; 2 uses
  %i.et = icmp ult i64 %.sroa.7.017.i.i, %i.es
  br i1 %i.et, label %bb.o, label %bb.p

bb.n:                                             ; preds = %bb.o, %bb.j
  %i.eu = icmp eq ptr %i.ea, %i.dw
  br i1 %i.eu, label %._crit_edge.i.i, label %bb.j

bb.o:                                             ; preds = %bb.m
  %i.ev = load ptr, ptr %i.dz, align 8, !noalias !2974, !nonnull !11, !noundef !11
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %.sroa.7.017.i.i
  %i.ex = atomicrmw add ptr %i.ew, i64 %i.ec monotonic, align 8, !noalias !2974 ; 0 uses
  br label %bb.n

bb.p:                                             ; preds = %bb.m
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.7.017.i.i, i64 noundef %i.es, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @138) #45
          to label %.noexc.i unwind label %bb.r

.noexc.i:                                         ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.g
  invoke void @_ZN4core4cell22panic_already_borrowed17h1421a3fb924cdd88E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @130) #45
          to label %.noexc unwind label %bb.s

.noexc:                                           ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.ey = landingpad { ptr, i32 }
          cleanup
  store i64 0, ptr %i.dg, align 8
  br label %.body

bb.s:                                             ; preds = %bb.q
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %.body

common.resume:                                    ; preds = %bb.ac, %bb.ad, %.body
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.jd, %bb.ad ], [ %i.jd, %bb.ac ]
  resume { ptr, i32 } %common.resume.op

.body:                                            ; preds = %bb.r, %bb.s
  %eh.lpad-body = phi { ptr, i32 } [ %i.ez, %bb.s ], [ %i.ey, %bb.r ]
  call fastcc void @"_ZN4core3ptr89drop_in_place$LT$core..cell..RefCell$LT$prometheus..histogram..LocalHistogramCore$GT$$GT$17hb72706719e9d710fE"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.dg) #46
  br label %common.resume

"_ZN79_$LT$prometheus..histogram..LocalHistogram$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8d33dc75f7d92d92E.exit.i.i": ; preds = %_ZN10prometheus9histogram18LocalHistogramCore5clear17h7c840d29e37456dfE.exit.i.i, %bb.h
  %i.fa = phi i64 [ %i.er, %_ZN10prometheus9histogram18LocalHistogramCore5clear17h7c840d29e37456dfE.exit.i.i ], [ 0, %bb.h ]
  store i64 %i.fa, ptr %i.dg, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2981)
  %i.fb = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2984)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2987)
  %i.fc = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2990)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2993)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2996)
  %i.fd = load ptr, ptr %i.fc, align 8, !alias.scope !2999, !nonnull !11, !noundef !11
  %i.fe = atomicrmw sub ptr %i.fd, i64 1 release, align 8, !noalias !2999
  %i.ff = icmp eq i64 %i.fe, 1
  br i1 %i.ff, label %bb.t, label %"_ZN4core3ptr53drop_in_place$LT$prometheus..histogram..Histogram$GT$17hf3cd97dddc14c963E.exit.i.i.i.i.i"

bb.t:                                             ; preds = %"_ZN79_$LT$prometheus..histogram..LocalHistogram$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8d33dc75f7d92d92E.exit.i.i"
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h63390e65b165830cE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.fc)
  br label %"_ZN4core3ptr53drop_in_place$LT$prometheus..histogram..Histogram$GT$17hf3cd97dddc14c963E.exit.i.i.i.i.i"

"_ZN4core3ptr53drop_in_place$LT$prometheus..histogram..Histogram$GT$17hf3cd97dddc14c963E.exit.i.i.i.i.i": ; preds = %bb.t, %"_ZN79_$LT$prometheus..histogram..LocalHistogram$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8d33dc75f7d92d92E.exit.i.i"
  %.val.i.i.i.i.i = load i64, ptr %i.fb, align 8, !alias.scope !3000 ; 2 uses
  %i.fg = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.fg, label %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$prometheus..histogram..LocalHistogram$GT$$GT$17hf53102e7c6ecf39dE.exit", label %bb.u

bb.u:                                             ; preds = %"_ZN4core3ptr53drop_in_place$LT$prometheus..histogram..Histogram$GT$17hf3cd97dddc14c963E.exit.i.i.i.i.i"
  %i.fh = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.val1.i.i.i.i.i = load ptr, ptr %i.fh, align 8, !alias.scope !3000, !nonnull !11, !noundef !11
  %i.fi = shl nuw i64 %.val.i.i.i.i.i, 3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %i.fi, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !3000
  br label %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$prometheus..histogram..LocalHistogram$GT$$GT$17hf53102e7c6ecf39dE.exit"

"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$prometheus..histogram..LocalHistogram$GT$$GT$17hf53102e7c6ecf39dE.exit": ; preds = %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6remove17h915ff267e54b34c0E.exit", %"_ZN4core3ptr53drop_in_place$LT$prometheus..histogram..Histogram$GT$17hf3cd97dddc14c963E.exit.i.i.i.i.i", %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.fj = load ptr, ptr %1, align 8, !nonnull !11, !noundef !11 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3001)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3004)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %2, ptr %i.e, align 8, !noalias !3006
  %i.fk = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %3, ptr %i.fk, align 8, !noalias !3006
  %i.fl = getelementptr i8, ptr %i.fj, i64 104
  %.val.i = load i64, ptr %i.fl, align 8, !noalias !3006, !noundef !11 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3007)
  %i.fm = icmp ult i64 %.val.i, 384307168202282326
  tail call void @llvm.assume(i1 %i.fm)
  %.not.i.i = icmp eq i64 %3, %.val.i
  br i1 %.not.i.i, label %bb.v, label %"_ZN10prometheus3vec22MetricVecCore$LT$T$GT$17hash_label_values17h2ff007cab32022a9E.exit.i"

bb.v:                                             ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$prometheus..histogram..LocalHistogram$GT$$GT$17hf53102e7c6ecf39dE.exit"
  br i1 %i.l, label %.loopexit.i, label %.lr.ph.i.i14

.lr.ph.i.i14:                                     ; preds = %bb.v, %"_ZN53_$LT$fnv..FnvHasher$u20$as$u20$core..hash..Hasher$GT$5write17he11455c4820aeed4E.exit.i.i"
  %.sroa.03.03.i.i = phi ptr [ %i.fn, %"_ZN53_$LT$fnv..FnvHasher$u20$as$u20$core..hash..Hasher$GT$5write17he11455c4820aeed4E.exit.i.i" ], [ %2, %bb.v ] ; 3 uses
  %.sroa.0.02.i.i = phi i64 [ %.sroa.0.0.lcssa.i.i.i, %"_ZN53_$LT$fnv..FnvHasher$u20$as$u20$core..hash..Hasher$GT$5write17he11455c4820aeed4E.exit.i.i" ], [ -3750763034362895579, %bb.v ] ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.03.03.i.i, i64 16 ; 2 uses
  %.sroa.03.0.val.i.i = load ptr, ptr %.sroa.03.03.i.i, align 8, !alias.scope !3010, !noalias !3011, !nonnull !11, !align !983, !noundef !11 ; 3 uses
  %i.fo = getelementptr i8, ptr %.sroa.03.03.i.i, i64 8
  %.sroa.03.0.val5.i.i = load i64, ptr %i.fo, align 8, !alias.scope !3010, !noalias !3011, !noundef !11 ; 4 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.03.0.val.i.i, i64 %.sroa.03.0.val5.i.i
  %i.fq = icmp samesign eq i64 %.sroa.03.0.val5.i.i, 0
  br i1 %i.fq, label %"_ZN53_$LT$fnv..FnvHasher$u20$as$u20$core..hash..Hasher$GT$5write17he11455c4820aeed4E.exit.i.i", label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i.i14
  %xtraiter93 = and i64 %.sroa.03.0.val5.i.i, 7   ; 2 uses
  %lcmp.mod94.not = icmp eq i64 %xtraiter93, 0
  br i1 %lcmp.mod94.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.sroa.0.06.i.i.i.prol = phi i64 [ %i.fv, %.lr.ph.i.i.i.prol ], [ %.sroa.0.02.i.i, %.lr.ph.i.i.i.preheader ]
  %.sroa.04.05.i.i.i.prol = phi ptr [ %i.fr, %.lr.ph.i.i.i.prol ], [ %.sroa.03.0.val.i.i, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %prol.iter95 = phi i64 [ %prol.iter95.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i.i.i.prol, i64 1 ; 2 uses
  %i.fs = load i8, ptr %.sroa.04.05.i.i.i.prol, align 1, !alias.scope !3013, !noalias !3016, !noundef !11
  %i.ft = zext i8 %i.fs to i64
  %i.fu = xor i64 %.sroa.0.06.i.i.i.prol, %i.ft
  %i.fv = mul i64 %i.fu, 1099511628211            ; 3 uses
  %prol.iter95.next = add i64 %prol.iter95, 1     ; 2 uses
  %prol.iter95.cmp.not = icmp eq i64 %prol.iter95.next, %xtraiter93
  br i1 %prol.iter95.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !3018

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa85.unr = phi i64 [ poison, %.lr.ph.i.i.i.preheader ], [ %i.fv, %.lr.ph.i.i.i.prol ]
  %.sroa.0.06.i.i.i.unr = phi i64 [ %.sroa.0.02.i.i, %.lr.ph.i.i.i.preheader ], [ %i.fv, %.lr.ph.i.i.i.prol ]
  %.sroa.04.05.i.i.i.unr = phi ptr [ %.sroa.03.0.val.i.i, %.lr.ph.i.i.i.preheader ], [ %i.fr, %.lr.ph.i.i.i.prol ]
  %i.fw = icmp ult i64 %.sroa.03.0.val5.i.i, 8
  br i1 %i.fw, label %"_ZN53_$LT$fnv..FnvHasher$u20$as$u20$core..hash..Hasher$GT$5write17he11455c4820aeed4E.exit.i.i", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.sroa.0.06.i.i.i = phi i64 [ %i.hk, %.lr.ph.i.i.i ], [ %.sroa.0.06.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %.sroa.04.05.i.i.i = phi ptr [ %i.hg, %.lr.ph.i.i.i ], [ %.sroa.04.05.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i.i.i, i64 1
  %i.fy = load i8, ptr %.sroa.04.05.i.i.i, align 1, !alias.scope !3013, !noalias !3016, !noundef !11
  %i.fz = zext i8 %i.fy to i64
  %i.ga = xor i64 %.sroa.0.06.i.i.i, %i.fz
  %i.gb = mul i64 %i.ga, 1099511628211
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i.i.i, i64 2
  %i.gd = load i8, ptr %i.fx, align 1, !alias.scope !3013, !noalias !3016, !noundef !11
  %i.ge = zext i8 %i.gd to i64
  %i.gf = xor i64 %i.gb, %i.ge
  %i.gg = mul i64 %i.gf, 1099511628211
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i.i.i, i64 3
  %i.gi = load i8, ptr %i.gc, align 1, !alias.scope !3013, !noalias !3016, !noundef !11
  %i.gj = zext i8 %i.gi to i64
  %i.gk = xor i64 %i.gg, %i.gj
  %i.gl = mul i64 %i.gk, 1099511628211
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i.i.i, i64 4
  %i.gn = load i8, ptr %i.gh, align 1, !alias.scope !3013, !noalias !3016, !noundef !11
  %i.go = zext i8 %i.gn to i64
  %i.gp = xor i64 %i.gl, %i.go
  %i.gq = mul i64 %i.gp, 1099511628211
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i.i.i, i64 5
  %i.gs = load i8, ptr %i.gm, align 1, !alias.scope !3013, !noalias !3016, !noundef !11
  %i.gt = zext i8 %i.gs to i64
  %i.gu = xor i64 %i.gq, %i.gt
  %i.gv = mul i64 %i.gu, 1099511628211
  %i.gw = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i.i.i, i64 6
  %i.gx = load i8, ptr %i.gr, align 1, !alias.scope !3013, !noalias !3016, !noundef !11
  %i.gy = zext i8 %i.gx to i64
  %i.gz = xor i64 %i.gv, %i.gy
  %i.ha = mul i64 %i.gz, 1099511628211
  %i.hb = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i.i.i, i64 7
  %i.hc = load i8, ptr %i.gw, align 1, !alias.scope !3013, !noalias !3016, !noundef !11
  %i.hd = zext i8 %i.hc to i64
  %i.he = xor i64 %i.ha, %i.hd
  %i.hf = mul i64 %i.he, 1099511628211
  %i.hg = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i.i.i, i64 8 ; 2 uses
  %i.hh = load i8, ptr %i.hb, align 1, !alias.scope !3013, !noalias !3016, !noundef !11
  %i.hi = zext i8 %i.hh to i64
  %i.hj = xor i64 %i.hf, %i.hi
  %i.hk = mul i64 %i.hj, 1099511628211            ; 2 uses
  %i.hl = icmp eq ptr %i.hg, %i.fp
  br i1 %i.hl, label %"_ZN53_$LT$fnv..FnvHasher$u20$as$u20$core..hash..Hasher$GT$5write17he11455c4820aeed4E.exit.i.i", label %.lr.ph.i.i.i

"_ZN53_$LT$fnv..FnvHasher$u20$as$u20$core..hash..Hasher$GT$5write17he11455c4820aeed4E.exit.i.i": ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %.lr.ph.i.i14
  %.sroa.0.0.lcssa.i.i.i = phi i64 [ %.sroa.0.02.i.i, %.lr.ph.i.i14 ], [ %.lcssa85.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.hk, %.lr.ph.i.i.i ] ; 2 uses
  %i.hm = icmp eq ptr %i.fn, %i.k
  br i1 %i.hm, label %.loopexit.i, label %.lr.ph.i.i14

"_ZN10prometheus3vec22MetricVecCore$LT$T$GT$17hash_label_values17h2ff007cab32022a9E.exit.i": ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$prometheus..histogram..LocalHistogram$GT$$GT$17hf53102e7c6ecf39dE.exit"
  store i64 -9223372036854775807, ptr %0, align 8, !alias.scope !3001, !noalias !3004
  %.sroa.212.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.val.i, ptr %.sroa.212.0..sroa_idx.i, align 8, !alias.scope !3001, !noalias !3004
  %.sroa.313.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %.sroa.313.0..sroa_idx.i, align 8, !alias.scope !3001, !noalias !3004
  br label %"_ZN10prometheus3vec22MetricVecCore$LT$T$GT$19delete_label_values17h89887be6cb6c315aE.exit"

.loopexit.i:                                      ; preds = %"_ZN53_$LT$fnv..FnvHasher$u20$as$u20$core..hash..Hasher$GT$5write17he11455c4820aeed4E.exit.i.i", %bb.v
  %.sroa.6.0.ph.i = phi i64 [ -3750763034362895579, %bb.v ], [ %.sroa.0.0.lcssa.i.i.i, %"_ZN53_$LT$fnv..FnvHasher$u20$as$u20$core..hash..Hasher$GT$5write17he11455c4820aeed4E.exit.i.i" ] ; 3 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.fj, i64 320 ; 8 uses
  %i.ho = cmpxchg weak ptr %i.hn, i64 0, i64 8 acquire monotonic, align 8, !noalias !3006
  %i.hp = extractvalue { i64, i1 } %i.ho, 1
  br i1 %i.hp, label %bb.x, label %bb.w, !prof !321

bb.w:                                             ; preds = %.loopexit.i
  %i.hq = tail call noundef zeroext i1 @_ZN11parking_lot10raw_rwlock9RawRwLock19lock_exclusive_slow17h7176b9c020b90d6eE(ptr noundef nonnull align 8 %i.hn, i64 undef, i32 noundef 1000000000), !noalias !3001 ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.loopexit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3006
  %i.hr = getelementptr inbounds nuw i8, ptr %i.fj, i64 328
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3019)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3022)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3025)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3028)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3031)
  %i.hs = lshr i64 %.sroa.6.0.ph.i, 57
  %i.ht = trunc nuw nsw i64 %i.hs to i8
  %i.hu = getelementptr inbounds nuw i8, ptr %i.fj, i64 336
  %i.hv = load i64, ptr %i.hu, align 8, !alias.scope !3034, !noalias !3035, !noundef !11 ; 3 uses
  %i.hw = load ptr, ptr %i.hr, align 8, !alias.scope !3034, !noalias !3035, !nonnull !11, !noundef !11 ; 4 uses
  %.sroa.0.0.vec.insert.i.i.i.i.i.i = insertelement <16 x i8> poison, i8 %i.ht, i64 0
  %.sroa.0.15.vec.insert.i.i.i.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.y

bb.y:                                             ; preds = %bb.aa, %bb.x
  %.sroa.9.0.i.i.i.i.i.i = phi i64 [ 0, %bb.x ], [ %i.in, %bb.aa ]
  %.pn.i.i.i.i.i = phi i64 [ %.sroa.6.0.ph.i, %bb.x ], [ %i.io, %bb.aa ]
  %.sroa.01.0.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i, %i.hv ; 3 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 %.sroa.01.0.i.i.i.i.i.i
  %.sroa.0.0.copyload.i26.i.i.i.i.i = load <16 x i8>, ptr %i.hx, align 1, !noalias !3038 ; 2 uses
  %i.hy = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i, %.sroa.0.15.vec.insert.i.i.i.i.i.i
  %i.hz = bitcast <16 x i1> %i.hy to i16          ; 2 uses
  %.not.i.not32.i.i.i.i.i = icmp eq i16 %i.hz, 0
  br i1 %.not.i.not32.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.y, %bb.z
  %.sroa.06.0.i33.i.i.i.i.i = phi i16 [ %i.im, %bb.z ], [ %i.hz, %bb.y ] ; 3 uses
  %i.ia = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i.i.i.i, i1 true)
  %i.ib = zext nneg i16 %i.ia to i64
  %i.ic = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.ib
  %i.id = and i64 %i.ic, %i.hv                    ; 3 uses
  %i.ie = sub nsw i64 0, %i.id
  %i.if = getelementptr inbounds [16 x i8], ptr %i.hw, i64 %i.ie ; 2 uses
  %i.ig = getelementptr inbounds i8, ptr %i.if, i64 -16
  %.val3.i.i.i.i.i.i = load i64, ptr %i.ig, align 8, !noalias !3041, !noundef !11
  %i.ih = icmp eq i64 %.sroa.6.0.ph.i, %.val3.i.i.i.i.i.i
  br i1 %i.ih, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h239c928eb3537d2aE.exit.i.i.i.i", label %bb.z, !prof !321

._crit_edge.i.i.i.i.i:                            ; preds = %bb.z, %bb.y
  %i.ii = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i, splat (i8 -1)
  %i.ij = bitcast <16 x i1> %i.ii to i16
  %i.ik = icmp eq i16 %i.ij, 0
  br i1 %i.ik, label %bb.aa, label %bb.ah, !prof !151

bb.z:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.il = add i16 %.sroa.06.0.i33.i.i.i.i.i, -1
  %i.im = and i16 %i.il, %.sroa.06.0.i33.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i = icmp eq i16 %i.im, 0
  br i1 %.not.i.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.aa:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.in = add i64 %.sroa.9.0.i.i.i.i.i.i, 16      ; 2 uses
  %i.io = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.in
  br label %bb.y

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h239c928eb3537d2aE.exit.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3044)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3047)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3050)
  %i.ip = add nsw i64 %i.id, -16
  %i.iq = and i64 %i.ip, %i.hv
  %i.ir = getelementptr inbounds nuw i8, ptr %i.hw, i64 %i.iq ; 2 uses
  %.sroa.0.0.copyload.i24.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.ir, align 1, !noalias !3053
  %i.is = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i.i.i, splat (i8 -1)
  %i.it = bitcast <16 x i1> %i.is to i16
  %i.iu = getelementptr inbounds nuw i8, ptr %i.hw, i64 %i.id ; 2 uses
  %.sroa.0.0.copyload.i825.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.iu, align 1, !noalias !3057
  %i.iv = icmp eq <16 x i8> %.sroa.0.0.copyload.i825.i.i.i.i.i.i.i, splat (i8 -1)
  %i.iw = bitcast <16 x i1> %i.iv to i16
  %i.ix = tail call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 %i.it, i1 false)
  %i.iy = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.iw, i1 false)
end_hunk_0
begin_hunk_1_@_ZN4core3fmt5Write10write_char17h3bea0b4b2dc1aab8E:bb.a
  br i1 %i.af, label %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h2280dbfc9f9b8b86E.exit.i", label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h05baf183f9a1ee21E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.ad)
          to label %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h2280dbfc9f9b8b86E.exit.i" unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ac, ptr %i.ad, align 8, !alias.scope !3670, !noalias !3673
  resume { ptr, i32 } %i.ag

"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h2280dbfc9f9b8b86E.exit.i": ; preds = %bb.i, %bb.h
  store ptr %i.ac, ptr %i.ad, align 8, !alias.scope !3670, !noalias !3673
  br label %"_ZN81_$LT$std..io..default_write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17ha28d37b4ed59fb70E.exit"

"_ZN81_$LT$std..io..default_write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17ha28d37b4ed59fb70E.exit": ; preds = %_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE.exit, %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h2280dbfc9f9b8b86E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %.not.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_ZN4core3fmt5Write9write_fmt17hf2144b8fc8a9d889E(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #1 {
"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h831dcb02ec4781edE.exit":
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3678
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(48) %1, i64 48, i1 false), !noalias !3682
  %i.b = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @167, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !3683, !inline_history !3684
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3678
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_ZN4core3fmt5Write9write_fmt17hf3eb61ee3e3c8df2E(ptr noalias noundef align 8 dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h527410278e4fa6afE.exit":
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3685
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(48) %1, i64 48, i1 false), !noalias !3689
  %i.b = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @155, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !3690, !inline_history !3691
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3685
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h1f0d4763b0547967E"(ptr noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [32 x i8], align 16               ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3692)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !3692, !nonnull !11, !noundef !11 ; 2 uses
  %i.i = atomicrmw add ptr %i.h, i64 1 monotonic, align 8, !noalias !3692
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = invoke noundef ptr @_ZN3std6thread7current11set_current17h5eeebeaeabfcb333E(ptr noundef nonnull %i.h)
          to label %bb.f unwind label %bb.e       ; 3 uses

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17he510d1bcedf19652E.exit23.i": ; preds = %.body.i, %bb.j, %bb.i, %bb.e
  %.pn.i = phi { ptr, i32 } [ %i.ax, %.body.i ], [ %i.o, %bb.e ], [ %i.v, %bb.j ], [ %i.v, %bb.i ]
  %.sroa.015.0.i = phi i1 [ false, %.body.i ], [ %.sroa.014.1.i, %bb.e ], [ true, %bb.j ], [ true, %bb.i ]
  %.sroa.014.0.i = phi i1 [ true, %.body.i ], [ %.sroa.014.1.i, %bb.e ], [ true, %bb.j ], [ true, %bb.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !3695)
  call void @llvm.experimental.noalias.scope.decl(metadata !3698)
  call void @llvm.experimental.noalias.scope.decl(metadata !3701)
  call void @llvm.experimental.noalias.scope.decl(metadata !3704)
  %i.l = load ptr, ptr %i.g, align 8, !alias.scope !3707, !nonnull !11, !noundef !11
  %i.m = atomicrmw sub ptr %i.l, i64 1 release, align 8, !noalias !3708
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.d, label %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17he510d1bcedf19652E.exit.i"

bb.d:                                             ; preds = %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17he510d1bcedf19652E.exit23.i"
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h27d24a5837f84932E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17he510d1bcedf19652E.exit.i" unwind label %bb.n

bb.e:                                             ; preds = %bb.y, %bb.p, %bb.h, %bb.b
  %.sroa.014.1.i = phi i1 [ false, %bb.y ], [ true, %bb.p ], [ true, %bb.h ], [ true, %bb.b ] ; 2 uses
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17he510d1bcedf19652E.exit23.i"

bb.f:                                             ; preds = %bb.b
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3692
  store ptr %i.k, ptr %i.f, align 8, !noalias !3692
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3692
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3692
  store ptr @165, ptr %i.d, align 8, !noalias !3692
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %i.p, align 8, !noalias !3692
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr null, ptr %i.q, align 8, !noalias !3692
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.r, align 8, !noalias !3692
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 0, ptr %i.s, align 8, !noalias !3692
  %i.t = invoke fastcc noundef ptr @_ZN3std2io5Write9write_fmt17he4b32540b8739b68E(ptr noalias noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address) dereferenceable(48) %i.d)
          to label %bb.k unwind label %bb.i       ; 2 uses

bb.h:                                             ; preds = %bb.f
  %i.u = invoke { ptr, i64 } @_ZN3std6thread6Thread5cname17he71b88de2caa7a2cE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g)
          to label %bb.o unwind label %bb.e       ; 2 uses

bb.i:                                             ; preds = %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h2280dbfc9f9b8b86E.exit.i", %bb.l, %bb.g
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !3709
  %i.x = icmp eq i64 %i.w, 1
  br i1 %i.x, label %bb.j, label %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17he510d1bcedf19652E.exit23.i"

bb.j:                                             ; preds = %bb.i
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h27d24a5837f84932E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17he510d1bcedf19652E.exit23.i" unwind label %bb.n

bb.k:                                             ; preds = %bb.g
  store ptr %i.t, ptr %i.e, align 8, !noalias !3692
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3692
  %i.y = icmp eq ptr %i.t, null
  br i1 %i.y, label %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h2280dbfc9f9b8b86E.exit.i", label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h05baf183f9a1ee21E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.e)
          to label %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h2280dbfc9f9b8b86E.exit.i" unwind label %bb.i

"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h2280dbfc9f9b8b86E.exit.i": ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3692
  invoke void @_ZN3std7process5abort17h97870e46d5a4dcf2E() #45
          to label %bb.m unwind label %bb.i

bb.m:                                             ; preds = %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h2280dbfc9f9b8b86E.exit.i"
  unreachable

bb.n:                                             ; preds = %bb.ac, %bb.aa, %bb.j, %bb.d
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47
  unreachable

bb.o:                                             ; preds = %bb.h
  %i.aa = extractvalue { ptr, i64 } %i.u, 0       ; 2 uses
  %.not20.i = icmp eq ptr %i.aa, null
  br i1 %.not20.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ab = extractvalue { ptr, i64 } %i.u, 1
  invoke void @_ZN3std3sys6thread4unix8set_name17h1d999c55f7e4a211E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.aa, i64 noundef %i.ab)
          to label %bb.q unwind label %bb.e

bb.q:                                             ; preds = %bb.p, %bb.o
  %.sroa.541.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.8.0..sroa_idx34.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3692
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.8.0..sroa_idx34.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.541.0..sroa_idx.i, i64 16, i1 false)
  %i.ac = load <2 x ptr>, ptr %0, align 8, !alias.scope !3692
  store <2 x ptr> %i.ac, ptr %i.b, align 16, !noalias !3692
  invoke void @_ZN3std3sys9backtrace28__rust_begin_short_backtrace17hbeefa7f41978d40dE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.b)
          to label %.noexc29.i unwind label %bb.r

.noexc29.i:                                       ; preds = %bb.q
  invoke void @_ZN3std3sys9backtrace28__rust_begin_short_backtrace17hb1650257a91a4561E()
          to label %.noexc30.i unwind label %bb.r

.noexc30.i:                                       ; preds = %.noexc29.i
  unreachable

bb.r:                                             ; preds = %.noexc29.i, %bb.q
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  %i.af = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr noundef %i.ae)
          to label %_ZN3std9panicking12catch_unwind8do_catch17ha4ad95355fb6e220E.exit.i unwind label %bb.s ; 2 uses

bb.s:                                             ; preds = %bb.r
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #47
  unreachable

_ZN3std9panicking12catch_unwind8do_catch17ha4ad95355fb6e220E.exit.i: ; preds = %bb.r
  %i.ah = extractvalue { ptr, ptr } %i.af, 0      ; 2 uses
  %i.ai = extractvalue { ptr, ptr } %i.af, 1      ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !3692, !nonnull !11, !noundef !11 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3718)
  %i.am = load i64, ptr %i.al, align 8, !range !977, !alias.scope !3718, !noundef !11
  %1 = trunc nuw i64 %i.am to i1
  br i1 %1, label %bb.t, label %"_ZN4core3ptr158drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$$GT$17hbdcfb43301ad52c6E.exit.i"

bb.t:                                             ; preds = %_ZN3std9panicking12catch_unwind8do_catch17ha4ad95355fb6e220E.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 32 ; 2 uses
  %.val.i.i = load ptr, ptr %i.an, align 8, !alias.scope !3718, !align !983, !noundef !11 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 40 ; 2 uses
  %.val1.i.i = load ptr, ptr %i.ao, align 8, !alias.scope !3718 ; 6 uses
  %i.ap = icmp eq ptr %.val.i.i, null
  br i1 %i.ap, label %"_ZN4core3ptr158drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$$GT$17hbdcfb43301ad52c6E.exit.i", label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  %i.aq = load ptr, ptr %.val1.i.i, align 8, !invariant.load !11, !noalias !3718 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  invoke void %i.aq(ptr noundef nonnull %.val.i.i)
          to label %bb.w unwind label %bb.x, !noalias !3718

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.ar = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !range !121, !invariant.load !11, !noalias !3718 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.au = load i64, ptr %i.at, align 8, !range !1608, !invariant.load !11, !noalias !3718 ; 2 uses
  %i.av = icmp ult i64 %i.au, -9223372036854775807
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = icmp eq i64 %i.as, 0
  br i1 %i.aw, label %"_ZN4core3ptr158drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$$GT$17hbdcfb43301ad52c6E.exit.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i": ; preds = %bb.w
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.as, i64 noundef range(i64 1, -9223372036854775807) %i.au) #42, !noalias !3718
  br label %"_ZN4core3ptr158drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$$GT$17hbdcfb43301ad52c6E.exit.i"

bb.x:                                             ; preds = %bb.v
  %i.ax = landingpad { ptr, i32 }
          cleanup
  %i.ay = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !range !121, !invariant.load !11, !noalias !3718 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !range !1608, !invariant.load !11, !noalias !3718 ; 2 uses
  %i.bc = icmp ult i64 %i.bb, -9223372036854775807
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = icmp eq i64 %i.az, 0
  br i1 %i.bd, label %.body.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i": ; preds = %bb.x
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.az, i64 noundef range(i64 1, -9223372036854775807) %i.bb) #42, !noalias !3718
  br label %.body.i

.body.i:                                          ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i", %bb.x
  store i64 1, ptr %i.al, align 8
  store ptr %i.ah, ptr %i.an, align 8
  store ptr %i.ai, ptr %i.ao, align 8
  br label %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17he510d1bcedf19652E.exit23.i"

"_ZN4core3ptr158drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$$GT$17hbdcfb43301ad52c6E.exit.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i", %bb.w, %bb.t, %_ZN3std9panicking12catch_unwind8do_catch17ha4ad95355fb6e220E.exit.i
  store i64 1, ptr %i.al, align 8
  %.sroa.58.0..sroa_idx9.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  store ptr %i.ah, ptr %.sroa.58.0..sroa_idx9.i, align 8
  %.sroa.611.0..sroa_idx12.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  store ptr %i.ai, ptr %.sroa.611.0..sroa_idx12.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3692
  %i.be = load ptr, ptr %i.aj, align 8, !alias.scope !3692, !nonnull !11, !noundef !11 ; 2 uses
  store ptr %i.be, ptr %i.c, align 8, !noalias !3692
  %i.bf = atomicrmw sub ptr %i.be, i64 1 release, align 8, !noalias !3721
  %i.bg = icmp eq i64 %i.bf, 1
  br i1 %i.bg, label %bb.y, label %"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17h8c315e7a537f0cb2E.exit.i"

bb.y:                                             ; preds = %"_ZN4core3ptr158drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$$GT$17hbdcfb43301ad52c6E.exit.i"
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hc2b278c9f910b7ddE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.c)
          to label %"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17h8c315e7a537f0cb2E.exit.i" unwind label %bb.e

"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17h8c315e7a537f0cb2E.exit.i": ; preds = %bb.y, %"_ZN4core3ptr158drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$$GT$17hbdcfb43301ad52c6E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3692
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3726)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3729)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3732)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3735)
  %i.bh = load ptr, ptr %i.g, align 8, !alias.scope !3738, !nonnull !11, !noundef !11
  %i.bi = atomicrmw sub ptr %i.bh, i64 1 release, align 8, !noalias !3739
  %i.bj = icmp eq i64 %i.bi, 1
  br i1 %i.bj, label %bb.z, label %"_ZN3std6thread7Builder16spawn_unchecked_28_$u7b$$u7b$closure$u7d$$u7d$17had01a8c380e29a51E.exit"

bb.z:                                             ; preds = %"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17h8c315e7a537f0cb2E.exit.i"
  fence acquire
  tail call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h27d24a5837f84932E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g)
  br label %"_ZN3std6thread7Builder16spawn_unchecked_28_$u7b$$u7b$closure$u7d$$u7d$17had01a8c380e29a51E.exit"

"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17he510d1bcedf19652E.exit.i": ; preds = %bb.d, %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17he510d1bcedf19652E.exit23.i"
  br i1 %.sroa.015.0.i, label %bb.aa, label %.critedge.i

.critedge.i:                                      ; preds = %bb.aa, %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17he510d1bcedf19652E.exit.i"
  br i1 %.sroa.014.0.i, label %bb.ab, label %"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17h8c315e7a537f0cb2E.exit28.i"

bb.aa:                                            ; preds = %"_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17he510d1bcedf19652E.exit.i"
  invoke fastcc void @"_ZN4core3ptr60drop_in_place$LT$std..thread..spawnhook..ChildSpawnHooks$GT$17h026cb879cbebff88E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %0) #46
          to label %.critedge.i unwind label %bb.n

"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17h8c315e7a537f0cb2E.exit28.i": ; preds = %bb.ac, %bb.ab, %.critedge.i
  resume { ptr, i32 } %.pn.i

bb.ab:                                            ; preds = %.critedge.i
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3740)
  call void @llvm.experimental.noalias.scope.decl(metadata !3743)
  %i.bl = load ptr, ptr %i.bk, align 8, !alias.scope !3746, !nonnull !11, !noundef !11
  %i.bm = atomicrmw sub ptr %i.bl, i64 1 release, align 8, !noalias !3747
  %i.bn = icmp eq i64 %i.bm, 1
  br i1 %i.bn, label %bb.ac, label %"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17h8c315e7a537f0cb2E.exit28.i"

bb.ac:                                            ; preds = %bb.ab
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hc2b278c9f910b7ddE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.bk)
          to label %"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17h8c315e7a537f0cb2E.exit28.i" unwind label %bb.n

"_ZN3std6thread7Builder16spawn_unchecked_28_$u7b$$u7b$closure$u7d$$u7d$17had01a8c380e29a51E.exit": ; preds = %"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17h8c315e7a537f0cb2E.exit.i", %bb.z
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core3ops8function6FnOnce9call_once17h1ccd0ce01f8f4e72E(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8             ; 5 uses
  %i.b = getelementptr i8, ptr %0, i64 16
  %.val2 = load ptr, ptr %i.b, align 8, !nonnull !11, !align !16, !noundef !11 ; 5 uses
  %i.c = load ptr, ptr %.val2, align 8, !invariant.load !11 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.c(ptr noundef nonnull %.val)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !121, !invariant.load !11 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !1608, !invariant.load !11 ; 2 uses
  %i.h = icmp ult i64 %i.g, -9223372036854775807
  tail call void @llvm.assume(i1 %i.h)
  %i.i = icmp eq i64 %i.e, 0
  br i1 %i.i, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h6eec3ea013caca0bE.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i": ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) %i.g) #42
  br label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h6eec3ea013caca0bE.exit"

bb.d:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !121, !invariant.load !11 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.n = load i64, ptr %i.m, align 8, !range !1608, !invariant.load !11 ; 2 uses
  %i.o = icmp ult i64 %i.n, -9223372036854775807
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp eq i64 %i.l, 0
  br i1 %i.p, label %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h369abc605acbbcc6E.exit5.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i": ; preds = %bb.d
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) %i.n) #42
  br label %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h369abc605acbbcc6E.exit5.i.i.i"

"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h369abc605acbbcc6E.exit5.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i", %bb.d
  resume { ptr, i32 } %i.j

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h6eec3ea013caca0bE.exit": ; preds = %bb.c, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i"
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core3ops8function6FnOnce9call_once17h7ddf9c38e6ecfcabE(ptr nofree noundef captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3748)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3751)
  invoke void @_ZN10prometheus9histogram14LocalHistogram5flush17hdb1db605921cf2e1E(ptr noundef nonnull align 8 dereferenceable(56) %i.a)
          to label %"_ZN79_$LT$prometheus..histogram..LocalHistogram$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8d33dc75f7d92d92E.exit.i.i.i" unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call fastcc void @"_ZN4core3ptr89drop_in_place$LT$core..cell..RefCell$LT$prometheus..histogram..LocalHistogramCore$GT$$GT$17hb72706719e9d710fE"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a) #46
  resume { ptr, i32 } %i.b

"_ZN79_$LT$prometheus..histogram..LocalHistogram$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8d33dc75f7d92d92E.exit.i.i.i": ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3754)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3757)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3760)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3763)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3766)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3769)
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !3772, !nonnull !11, !noundef !11
  %i.f = atomicrmw sub ptr %i.e, i64 1 release, align 8, !noalias !3772
end_hunk_1
begin_hunk_2_@"_ZN4core3ptr169drop_in_place$LT$std..thread..Builder..spawn_unchecked_$LT$prometheus..timer..ensure_updater..$u7b$$u7b$closure$u7d$$u7d$$C$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hbd3f3a422ba7e536E":bb.a
bb.i:                                             ; preds = %bb.e, %bb.c
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47
  unreachable

"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17h8c315e7a537f0cb2E.exit": ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %.pn2
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr177drop_in_place$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$u2b$core..marker..Send$GT$$GT$$GT$17h88c8cb60664859e7E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !11, !noundef !11 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !11 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4087)
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3ac70e30a9ea3f8cE.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %"_ZN4core3ptr154drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$u2b$core..marker..Send$GT$$GT$17h81362ead84159eb9E.exit.i.i"
  %.sroa.0.010.i.i = phi i64 [ %i.e, %"_ZN4core3ptr154drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$u2b$core..marker..Send$GT$$GT$17h81362ead84159eb9E.exit.i.i" ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %.sroa.0.010.i.i ; 2 uses
  %i.e = add nuw i64 %.sroa.0.010.i.i, 1          ; 4 uses
  %.val8.i.i = load ptr, ptr %i.d, align 8, !alias.scope !4087 ; 5 uses
  %i.f = getelementptr i8, ptr %i.d, i64 8
  %.val9.i.i = load ptr, ptr %i.f, align 8, !alias.scope !4087, !nonnull !11, !align !16, !noundef !11 ; 5 uses
  %i.g = load ptr, ptr %.val9.i.i, align 8, !invariant.load !11, !noalias !4087 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i.i) ]
  invoke void %i.g(ptr noundef nonnull %.val8.i.i)
          to label %bb.c unwind label %bb.d, !noalias !4087

bb.c:                                             ; preds = %bb.b, %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.val9.i.i, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !121, !invariant.load !11, !noalias !4087 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.val9.i.i, i64 16
  %i.k = load i64, ptr %i.j, align 8, !range !1608, !invariant.load !11, !noalias !4087 ; 2 uses
  %i.l = icmp ult i64 %i.k, -9223372036854775807
  tail call void @llvm.assume(i1 %i.l)
  %i.m = icmp eq i64 %i.i, 0
  br i1 %i.m, label %"_ZN4core3ptr154drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$u2b$core..marker..Send$GT$$GT$17h81362ead84159eb9E.exit.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i": ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i.i, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) %i.k) #42, !noalias !4087
  br label %"_ZN4core3ptr154drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$u2b$core..marker..Send$GT$$GT$17h81362ead84159eb9E.exit.i.i"

bb.d:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = getelementptr inbounds nuw i8, ptr %.val9.i.i, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !121, !invariant.load !11, !noalias !4087 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.val9.i.i, i64 16
  %i.r = load i64, ptr %i.q, align 8, !range !1608, !invariant.load !11, !noalias !4087 ; 2 uses
  %i.s = icmp ult i64 %i.r, -9223372036854775807
  tail call void @llvm.assume(i1 %i.s)
  %i.t = icmp eq i64 %i.p, 0
  br i1 %i.t, label %.body.i.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i": ; preds = %bb.d
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i.i, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) %i.r) #42, !noalias !4087
  br label %.body.i.i

"_ZN4core3ptr154drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$u2b$core..marker..Send$GT$$GT$17h81362ead84159eb9E.exit.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i", %bb.c
  %i.u = icmp eq i64 %i.e, %.val1
  br i1 %i.u, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3ac70e30a9ea3f8cE.exit", label %.lr.ph.i.i

bb.e:                                             ; preds = %.lr.ph
  %i.v = add i64 %.sroa.0.1.i.i22, 1              ; 2 uses
  %i.w = icmp eq i64 %i.v, %.val1
  br i1 %i.w, label %.body, label %.lr.ph

.body.i.i:                                        ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i", %bb.d
  %i.x = icmp eq i64 %i.e, %.val1
  br i1 %i.x, label %.body, label %.lr.ph

.lr.ph:                                           ; preds = %.body.i.i, %bb.e
  %.sroa.0.1.i.i22 = phi i64 [ %i.v, %bb.e ], [ %i.e, %.body.i.i ] ; 2 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %.sroa.0.1.i.i22 ; 2 uses
  %.val.i.i = load ptr, ptr %i.y, align 8, !alias.scope !4087
  %i.z = getelementptr i8, ptr %i.y, i64 8
  %.val7.i.i = load ptr, ptr %i.z, align 8, !alias.scope !4087, !nonnull !11, !align !16, !noundef !11
  invoke fastcc void @"_ZN4core3ptr154drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$u2b$core..marker..Send$GT$$GT$17h81362ead84159eb9E"(ptr %.val.i.i, ptr nonnull %.val7.i.i) #46
          to label %bb.e unwind label %bb.f, !noalias !4087

bb.f:                                             ; preds = %.lr.ph
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47, !noalias !4087
  unreachable

.body:                                            ; preds = %bb.e, %.body.i.i
  %.val4 = load i64, ptr %0, align 8, !range !121, !noundef !11 ; 2 uses
  %i.ab = icmp eq i64 %.val4, 0
  br i1 %i.ab, label %"_ZN4core3ptr184drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..boxed..Box$LT$dyn$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$u2b$core..marker..Send$GT$$GT$$GT$17h3c89efa58aca9447E.exit", label %bb.g

bb.g:                                             ; preds = %.body
  %i.ac = shl nuw i64 %.val4, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.ac, i64 noundef range(i64 1, -9223372036854775807) 8) #42
  br label %"_ZN4core3ptr184drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..boxed..Box$LT$dyn$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$u2b$core..marker..Send$GT$$GT$$GT$17h3c89efa58aca9447E.exit"

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3ac70e30a9ea3f8cE.exit": ; preds = %"_ZN4core3ptr154drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$u2b$core..marker..Send$GT$$GT$17h81362ead84159eb9E.exit.i.i", %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !121, !noundef !11 ; 2 uses
  %i.ad = icmp eq i64 %.val2, 0
  br i1 %i.ad, label %"_ZN4core3ptr184drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..boxed..Box$LT$dyn$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$u2b$core..marker..Send$GT$$GT$$GT$17h3c89efa58aca9447E.exit6", label %bb.h

bb.h:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3ac70e30a9ea3f8cE.exit"
  %i.ae = shl nuw i64 %.val2, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.ae, i64 noundef range(i64 1, -9223372036854775807) 8) #42
  br label %"_ZN4core3ptr184drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..boxed..Box$LT$dyn$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$u2b$core..marker..Send$GT$$GT$$GT$17h3c89efa58aca9447E.exit6"

"_ZN4core3ptr184drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..boxed..Box$LT$dyn$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$u2b$core..marker..Send$GT$$GT$$GT$17h3c89efa58aca9447E.exit6": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3ac70e30a9ea3f8cE.exit", %bb.h
  ret void

"_ZN4core3ptr184drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..boxed..Box$LT$dyn$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$u2b$core..marker..Send$GT$$GT$$GT$17h3c89efa58aca9447E.exit": ; preds = %bb.g, %.body
  resume { ptr, i32 } %i.n
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr181drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..rehash_in_place..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h2032f093ad8cc711E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4090)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !4090, !noundef !11 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !4090
  %.val2.i = load ptr, ptr %0, align 8, !alias.scope !4090 ; 10 uses
  %.not.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i, label %"_ZN88_$LT$hashbrown..scopeguard..ScopeGuard$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7dacab9cfbe22a2bE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %i.c = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noalias !4090, !noundef !11 ; 2 uses
  %.not4.i.i = icmp eq i64 %i.d, -1
  br i1 %.not4.i.i, label %"_ZN88_$LT$hashbrown..scopeguard..ScopeGuard$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7dacab9cfbe22a2bE.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i.i
  %.sroa.0.03.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.f, %bb.e ] ; 5 uses
  %i.f = add nuw i64 %.sroa.0.03.i.i, 1
  %i.g = load ptr, ptr %.val2.i, align 8, !noalias !4090, !nonnull !11, !noundef !11
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.0.03.i.i ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !noalias !4090, !noundef !11
  %i.j = icmp eq i8 %i.i, -128
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.neg.i.i = xor i64 %.sroa.0.03.i.i, -1
  %i.k = add i64 %.sroa.0.03.i.i, -16
  %i.l = load i64, ptr %i.c, align 8, !noalias !4090, !noundef !11
  %i.m = and i64 %i.l, %i.k
  store i8 -1, ptr %i.h, align 1, !noalias !4090
  %i.n = load ptr, ptr %.val2.i, align 8, !noalias !4090, !nonnull !11, !noundef !11
  %i.o = getelementptr i8, ptr %i.n, i64 %i.m
  %i.p = getelementptr i8, ptr %i.o, i64 16
  store i8 -1, ptr %i.p, align 1, !noalias !4090
  %i.q = load ptr, ptr %.val2.i, align 8, !noalias !4090, !nonnull !11, !noundef !11
  %.neg4.i.i = mul i64 %.val1.i, %.neg.i.i
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 %.neg4.i.i
  tail call void %.val.i(ptr noundef nonnull %i.r), !noalias !4090, !inline_history !4093
  %i.s = load i64, ptr %i.e, align 8, !noalias !4090, !noundef !11
  %i.t = add i64 %i.s, -1
  store i64 %i.t, ptr %i.e, align 8, !noalias !4090
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %exitcond.not.i.i = icmp eq i64 %.sroa.0.03.i.i, %i.d
  br i1 %exitcond.not.i.i, label %"_ZN88_$LT$hashbrown..scopeguard..ScopeGuard$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7dacab9cfbe22a2bE.exit", label %bb.c

"_ZN88_$LT$hashbrown..scopeguard..ScopeGuard$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7dacab9cfbe22a2bE.exit": ; preds = %bb.e, %bb.a, %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8
  %i.v = load i64, ptr %i.u, align 8, !noalias !4090, !noundef !11 ; 3 uses
  %i.w = icmp ult i64 %i.v, 8
  %i.x = add i64 %i.v, 1
  %i.y = lshr i64 %i.x, 3
  %i.z = mul nuw i64 %i.y, 7
  %.sroa.03.0.i.i = select i1 %i.w, i64 %i.v, i64 %i.z
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !noalias !4090, !noundef !11
  %i.ac = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16
  %i.ad = sub i64 %.sroa.03.0.i.i, %i.ab
  store i64 %i.ad, ptr %i.ac, align 8, !noalias !4090
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr188drop_in_place$LT$core..cell..UnsafeCell$LT$core..option..Option$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$$GT$$GT$17h9929b7e319e07129E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4094)
  %i.a = load i64, ptr %0, align 8, !range !977, !alias.scope !4094, !noundef !11
  %1 = trunc nuw i64 %i.a to i1
  br i1 %1, label %bb.b, label %"_ZN4core3ptr158drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$$GT$17hbdcfb43301ad52c6E.exit"

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.b, align 8, !alias.scope !4094, !align !983, !noundef !11 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load ptr, ptr %i.c, align 8, !alias.scope !4094 ; 6 uses
  %i.d = icmp eq ptr %.val.i, null
  br i1 %i.d, label %"_ZN4core3ptr158drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$$GT$17hbdcfb43301ad52c6E.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i) ]
  %i.e = load ptr, ptr %.val1.i, align 8, !invariant.load !11, !noalias !4094 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void %i.e(ptr noundef nonnull %.val.i)
          to label %bb.e unwind label %bb.f, !noalias !4094

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !121, !invariant.load !11, !noalias !4094 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.i = load i64, ptr %i.h, align 8, !range !1608, !invariant.load !11, !noalias !4094 ; 2 uses
  %i.j = icmp ult i64 %i.i, -9223372036854775807
  tail call void @llvm.assume(i1 %i.j)
  %i.k = icmp eq i64 %i.g, 0
  br i1 %i.k, label %"_ZN4core3ptr158drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$$GT$17hbdcfb43301ad52c6E.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i": ; preds = %bb.e
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) %i.i) #42, !noalias !4094
  br label %"_ZN4core3ptr158drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$$GT$17hbdcfb43301ad52c6E.exit"

bb.f:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !121, !invariant.load !11, !noalias !4094 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !1608, !invariant.load !11, !noalias !4094 ; 2 uses
  %i.q = icmp ult i64 %i.p, -9223372036854775807
  tail call void @llvm.assume(i1 %i.q)
  %i.r = icmp eq i64 %i.n, 0
  br i1 %i.r, label %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3c733cb9b033a181E.exit5.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i": ; preds = %bb.f
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) %i.p) #42, !noalias !4094
  br label %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3c733cb9b033a181E.exit5.i.i.i"

"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3c733cb9b033a181E.exit5.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i", %bb.f
  resume { ptr, i32 } %i.l

"_ZN4core3ptr158drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$$GT$17hbdcfb43301ad52c6E.exit": ; preds = %bb.a, %bb.b, %bb.e, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i"
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @_ZN4core3ptr19swap_nonoverlapping17h957ee2e35ee099ddE(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull captures(none) %1, i64 noundef range(i64 8, 65) %2) unnamed_addr #11 {
bb.a:
  %i.a = lshr i64 %2, 3                           ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4097)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4100)
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %0, align 1, !alias.scope !4097, !noalias !4100
  %.sroa.02.0.copyload.i.i.i = load i64, ptr %1, align 1, !alias.scope !4100, !noalias !4097
  store i64 %.sroa.02.0.copyload.i.i.i, ptr %0, align 1, !alias.scope !4097, !noalias !4100
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %1, align 1, !alias.scope !4100, !noalias !4097
  %exitcond.not.i.i = icmp eq i64 %i.a, 1
  br i1 %exitcond.not.i.i, label %_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17h1eee304549b9ce9dE.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4102)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4104)
  %.sroa.0.0.copyload.i.i.i.1 = load i64, ptr %i.b, align 1, !alias.scope !4102, !noalias !4104
  %.sroa.02.0.copyload.i.i.i.1 = load i64, ptr %i.c, align 1, !alias.scope !4104, !noalias !4102
  store i64 %.sroa.02.0.copyload.i.i.i.1, ptr %i.b, align 1, !alias.scope !4102, !noalias !4104
  store i64 %.sroa.0.0.copyload.i.i.i.1, ptr %i.c, align 1, !alias.scope !4104, !noalias !4102
  %exitcond.not.i.i.1 = icmp eq i64 %i.a, 2
  br i1 %exitcond.not.i.i.1, label %_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17h1eee304549b9ce9dE.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4106)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4108)
  %.sroa.0.0.copyload.i.i.i.2 = load i64, ptr %i.d, align 1, !alias.scope !4106, !noalias !4108
  %.sroa.02.0.copyload.i.i.i.2 = load i64, ptr %i.e, align 1, !alias.scope !4108, !noalias !4106
  store i64 %.sroa.02.0.copyload.i.i.i.2, ptr %i.d, align 1, !alias.scope !4106, !noalias !4108
  store i64 %.sroa.0.0.copyload.i.i.i.2, ptr %i.e, align 1, !alias.scope !4108, !noalias !4106
  %exitcond.not.i.i.2 = icmp eq i64 %i.a, 3
  br i1 %exitcond.not.i.i.2, label %_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17h1eee304549b9ce9dE.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4110)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4112)
  %.sroa.0.0.copyload.i.i.i.3 = load i64, ptr %i.f, align 1, !alias.scope !4110, !noalias !4112
  %.sroa.02.0.copyload.i.i.i.3 = load i64, ptr %i.g, align 1, !alias.scope !4112, !noalias !4110
  store i64 %.sroa.02.0.copyload.i.i.i.3, ptr %i.f, align 1, !alias.scope !4110, !noalias !4112
  store i64 %.sroa.0.0.copyload.i.i.i.3, ptr %i.g, align 1, !alias.scope !4112, !noalias !4110
  %exitcond.not.i.i.3 = icmp eq i64 %i.a, 4
  br i1 %exitcond.not.i.i.3, label %_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17h1eee304549b9ce9dE.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4114)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4116)
  %.sroa.0.0.copyload.i.i.i.4 = load i64, ptr %i.h, align 1, !alias.scope !4114, !noalias !4116
  %.sroa.02.0.copyload.i.i.i.4 = load i64, ptr %i.i, align 1, !alias.scope !4116, !noalias !4114
  store i64 %.sroa.02.0.copyload.i.i.i.4, ptr %i.h, align 1, !alias.scope !4114, !noalias !4116
  store i64 %.sroa.0.0.copyload.i.i.i.4, ptr %i.i, align 1, !alias.scope !4116, !noalias !4114
  %exitcond.not.i.i.4 = icmp eq i64 %i.a, 5
  br i1 %exitcond.not.i.i.4, label %_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17h1eee304549b9ce9dE.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4118)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4120)
  %.sroa.0.0.copyload.i.i.i.5 = load i64, ptr %i.j, align 1, !alias.scope !4118, !noalias !4120
  %.sroa.02.0.copyload.i.i.i.5 = load i64, ptr %i.k, align 1, !alias.scope !4120, !noalias !4118
  store i64 %.sroa.02.0.copyload.i.i.i.5, ptr %i.j, align 1, !alias.scope !4118, !noalias !4120
  store i64 %.sroa.0.0.copyload.i.i.i.5, ptr %i.k, align 1, !alias.scope !4120, !noalias !4118
  %exitcond.not.i.i.5 = icmp eq i64 %i.a, 6
  br i1 %exitcond.not.i.i.5, label %_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17h1eee304549b9ce9dE.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4122)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4124)
  %.sroa.0.0.copyload.i.i.i.6 = load i64, ptr %i.l, align 1, !alias.scope !4122, !noalias !4124
  %.sroa.02.0.copyload.i.i.i.6 = load i64, ptr %i.m, align 1, !alias.scope !4124, !noalias !4122
  store i64 %.sroa.02.0.copyload.i.i.i.6, ptr %i.l, align 1, !alias.scope !4122, !noalias !4124
  store i64 %.sroa.0.0.copyload.i.i.i.6, ptr %i.m, align 1, !alias.scope !4124, !noalias !4122
  %exitcond.not.i.i.6 = icmp eq i64 %i.a, 7
  br i1 %exitcond.not.i.i.6, label %_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17h1eee304549b9ce9dE.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4126)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4128)
  %.sroa.0.0.copyload.i.i.i.7 = load i64, ptr %i.n, align 1, !alias.scope !4126, !noalias !4128
  %.sroa.02.0.copyload.i.i.i.7 = load i64, ptr %i.o, align 1, !alias.scope !4128, !noalias !4126
  store i64 %.sroa.02.0.copyload.i.i.i.7, ptr %i.n, align 1, !alias.scope !4126, !noalias !4128
  store i64 %.sroa.0.0.copyload.i.i.i.7, ptr %i.o, align 1, !alias.scope !4128, !noalias !4126
  br label %_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17h1eee304549b9ce9dE.exit.i

_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17h1eee304549b9ce9dE.exit.i: ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %i.p = and i64 %2, 7                            ; 2 uses
  %.not.i = icmp eq i64 %i.p, 0
  br i1 %.not.i, label %_ZN4core3ptr25swap_nonoverlapping_bytes17h2566d41837ce52f6E.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17h1eee304549b9ce9dE.exit.i
  %i.q = and i64 %2, 120                          ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %i.q ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %i.q ; 4 uses
  %i.t = icmp samesign ult i64 %i.p, 4
  br i1 %i.t, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4130)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4133)
  %.sroa.0.0.copyload.i.i4.i = load i32, ptr %i.r, align 1, !alias.scope !4130, !noalias !4133
  %.sroa.02.0.copyload.i.i5.i = load i32, ptr %i.s, align 1, !alias.scope !4133, !noalias !4130
  store i32 %.sroa.02.0.copyload.i.i5.i, ptr %i.r, align 1, !alias.scope !4130, !noalias !4133
  store i32 %.sroa.0.0.copyload.i.i4.i, ptr %i.s, align 1, !alias.scope !4133, !noalias !4130
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.0.0.i.i = phi i64 [ 0, %bb.i ], [ 4, %bb.j ] ; 4 uses
  %i.u = and i64 %2, 2
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 %.sroa.0.0.i.i ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.0.0.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4135)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4138)
  %.sroa.0.0.copyload.i9.i.i = load i16, ptr %i.w, align 1, !alias.scope !4135, !noalias !4138
  %.sroa.02.0.copyload.i10.i.i = load i16, ptr %i.x, align 1, !alias.scope !4138, !noalias !4135
  store i16 %.sroa.02.0.copyload.i10.i.i, ptr %i.w, align 1, !alias.scope !4135, !noalias !4138
  store i16 %.sroa.0.0.copyload.i9.i.i, ptr %i.x, align 1, !alias.scope !4138, !noalias !4135
  %i.y = or disjoint i64 %.sroa.0.0.i.i, 2
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.0.1.i.i = phi i64 [ %.sroa.0.0.i.i, %bb.k ], [ %i.y, %bb.l ] ; 2 uses
  %3 = trunc i64 %2 to i1
  br i1 %3, label %bb.n, label %_ZN4core3ptr25swap_nonoverlapping_bytes17h2566d41837ce52f6E.exit

bb.n:                                             ; preds = %bb.m
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 %.sroa.0.1.i.i ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.0.1.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4140)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4143)
  %.sroa.0.0.copyload.i11.i.i = load i8, ptr %i.z, align 1, !alias.scope !4140, !noalias !4143
  %.sroa.02.0.copyload.i12.i.i = load i8, ptr %i.aa, align 1, !alias.scope !4143, !noalias !4140
  store i8 %.sroa.02.0.copyload.i12.i.i, ptr %i.z, align 1, !alias.scope !4140, !noalias !4143
  store i8 %.sroa.0.0.copyload.i11.i.i, ptr %i.aa, align 1, !alias.scope !4143, !noalias !4140
  br label %_ZN4core3ptr25swap_nonoverlapping_bytes17h2566d41837ce52f6E.exit

_ZN4core3ptr25swap_nonoverlapping_bytes17h2566d41837ce52f6E.exit: ; preds = %_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17h1eee304549b9ce9dE.exit.i, %bb.m, %bb.n
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr309drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$LP$usize$C$$RF$mut$u20$hashbrown..raw..RawTable$LT$$LP$alloc..string..String$C$alloc..string..String$RP$$GT$$RP$$C$hashbrown..raw..RawTable$LT$$LP$alloc..string..String$C$alloc..string..String$RP$$GT$..clone_from_impl..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hdbea385cfa3eb949E"(i64 %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %.not.i.i = icmp eq i64 %.0.val, 0
  br i1 %.not.i.i, label %"_ZN88_$LT$hashbrown..scopeguard..ScopeGuard$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hafb8ecd375ec3a5dE.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  br label %bb.b

bb.b:                                             ; preds = %"_ZN4core3ptr74drop_in_place$LT$$LP$alloc..string..String$C$alloc..string..String$RP$$GT$17hb77e3c826e0084c2E.exit.i.i", %.lr.ph.i.i
  %.sroa.0.01.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.a, %"_ZN4core3ptr74drop_in_place$LT$$LP$alloc..string..String$C$alloc..string..String$RP$$GT$17hb77e3c826e0084c2E.exit.i.i" ] ; 3 uses
  %i.a = add nuw i64 %.sroa.0.01.i.i, 1           ; 2 uses
  %i.b = load ptr, ptr %.8.val, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.0.01.i.i
  %i.d = load i8, ptr %i.c, align 1, !noundef !11
  %i.e = icmp sgt i8 %i.d, -1
  br i1 %i.e, label %bb.c, label %"_ZN4core3ptr74drop_in_place$LT$$LP$alloc..string..String$C$alloc..string..String$RP$$GT$17hb77e3c826e0084c2E.exit.i.i"

bb.c:                                             ; preds = %bb.b
  %i.f = sub nsw i64 0, %.sroa.0.01.i.i
  %i.g = getelementptr inbounds [48 x i8], ptr %i.b, i64 %i.f ; 4 uses
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4145)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4148)
  %.val.i.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !4151 ; 2 uses
  %i.i = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.i, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds i8, ptr %i.g, i64 -40
  %.val1.i.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !4151, !nonnull !11, !noundef !11
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !4151
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i": ; preds = %bb.d, %bb.c
  %i.k = getelementptr inbounds i8, ptr %i.g, i64 -24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4152)
  %.val.i4.i.i.i = load i64, ptr %i.k, align 8, !alias.scope !4155 ; 2 uses
  %i.l = icmp eq i64 %.val.i4.i.i.i, 0
  br i1 %i.l, label %"_ZN4core3ptr74drop_in_place$LT$$LP$alloc..string..String$C$alloc..string..String$RP$$GT$17hb77e3c826e0084c2E.exit.i.i", label %bb.e

bb.e:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i"
  %i.m = getelementptr inbounds i8, ptr %i.g, i64 -16
  %.val1.i5.i.i.i = load ptr, ptr %i.m, align 8, !alias.scope !4155, !nonnull !11, !noundef !11
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i5.i.i.i, i64 noundef %.val.i4.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !4155
  br label %"_ZN4core3ptr74drop_in_place$LT$$LP$alloc..string..String$C$alloc..string..String$RP$$GT$17hb77e3c826e0084c2E.exit.i.i"

"_ZN4core3ptr74drop_in_place$LT$$LP$alloc..string..String$C$alloc..string..String$RP$$GT$17hb77e3c826e0084c2E.exit.i.i": ; preds = %bb.e, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i", %bb.b
  %exitcond.not.i.i = icmp eq i64 %i.a, %.0.val
  br i1 %exitcond.not.i.i, label %"_ZN88_$LT$hashbrown..scopeguard..ScopeGuard$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hafb8ecd375ec3a5dE.exit", label %bb.b

"_ZN88_$LT$hashbrown..scopeguard..ScopeGuard$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hafb8ecd375ec3a5dE.exit": ; preds = %"_ZN4core3ptr74drop_in_place$LT$$LP$alloc..string..String$C$alloc..string..String$RP$$GT$17hb77e3c826e0084c2E.exit.i.i", %bb.a
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h9421efc9c4552544E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !11, !noundef !11
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #42
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h9421efc9c4552544E.exit"

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h9421efc9c4552544E.exit": ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h05baf183f9a1ee21E"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !11, !noundef !11 ; 4 uses
  %i.a = ptrtoint ptr %.val to i64
  %i.b = and i64 %i.a, 3
  switch i64 %i.b, label %default.unreachable [
    i64 2, label %"_ZN4core3ptr57drop_in_place$LT$std..io..error..repr_bitpacked..Repr$GT$17h4b0c6e1e4042697bE.exit"
    i64 3, label %bb.b
    i64 0, label %"_ZN4core3ptr57drop_in_place$LT$std..io..error..repr_bitpacked..Repr$GT$17h4b0c6e1e4042697bE.exit"
    i64 1, label %bb.c
  ], !prof !3539

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ult ptr %.val, inttoptr (i64 180388626432 to ptr)
  tail call void @llvm.assume(i1 %i.c)
  br label %"_ZN4core3ptr57drop_in_place$LT$std..io..error..repr_bitpacked..Repr$GT$17h4b0c6e1e4042697bE.exit"

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %.val, i64 -1      ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.d) ]
  %.val.i.i.i.i = load ptr, ptr %i.d, align 8     ; 5 uses
  %i.e = getelementptr i8, ptr %.val, i64 7
  %.val1.i.i.i.i = load ptr, ptr %i.e, align 8, !nonnull !11, !align !16, !noundef !11 ; 5 uses
  %i.f = load ptr, ptr %.val1.i.i.i.i, align 8, !invariant.load !11 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  invoke void %i.f(ptr noundef nonnull %.val.i.i.i.i)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !121, !invariant.load !11 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !1608, !invariant.load !11 ; 2 uses
  %i.k = icmp ult i64 %i.j, -9223372036854775807
  tail call void @llvm.assume(i1 %i.k)
  %i.l = icmp eq i64 %i.h, 0
  br i1 %i.l, label %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17he37e7549e3f4d685E.exit.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i": ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) %i.j) #42
  br label %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17he37e7549e3f4d685E.exit.i.i.i"

bb.f:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !121, !invariant.load !11 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.q = load i64, ptr %i.p, align 8, !range !1608, !invariant.load !11 ; 2 uses
  %i.r = icmp ult i64 %i.q, -9223372036854775807
  tail call void @llvm.assume(i1 %i.r)
  %i.s = icmp eq i64 %i.o, 0
  br i1 %i.s, label %bb.g, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i": ; preds = %bb.f
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) %i.q) #42
  br label %bb.g

bb.g:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i", %bb.f
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef 24, i64 noundef 8) #42
  resume { ptr, i32 } %i.m

"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17he37e7549e3f4d685E.exit.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i", %bb.e
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef 24, i64 noundef 8) #42
  br label %"_ZN4core3ptr57drop_in_place$LT$std..io..error..repr_bitpacked..Repr$GT$17h4b0c6e1e4042697bE.exit"

"_ZN4core3ptr57drop_in_place$LT$std..io..error..repr_bitpacked..Repr$GT$17h4b0c6e1e4042697bE.exit": ; preds = %bb.a, %bb.a, %bb.b, %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17he37e7549e3f4d685E.exit.i.i.i"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr43drop_in_place$LT$procfs_core..ProcError$GT$17h9239a85932bb9657E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !318, !noundef !11 ; 4 uses
  %i.b = xor i64 %i.a, -9223372036854775808
  %i.c = icmp slt i64 %i.a, 0
  %i.d = select i1 %i.c, i64 %i.b, i64 5
  switch i64 %i.d, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.a, 0
  br i1 %i.e, label %"_ZN4core3ptr47drop_in_place$LT$procfs_core..InternalError$GT$17h2ac0bbbd4f26f132E.exit", label %"_ZN4core3ptr47drop_in_place$LT$procfs_core..InternalError$GT$17h2ac0bbbd4f26f132E.exit.sink.split"

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val10 = load i64, ptr %i.f, align 8, !range !21, !noundef !11 ; 2 uses
  %switch = icmp sgt i64 %.val10, 0
  br i1 %switch, label %"_ZN4core3ptr47drop_in_place$LT$procfs_core..InternalError$GT$17h2ac0bbbd4f26f132E.exit.sink.split", label %"_ZN4core3ptr47drop_in_place$LT$procfs_core..InternalError$GT$17h2ac0bbbd4f26f132E.exit"

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val8 = load i64, ptr %i.g, align 8, !range !21, !noundef !11 ; 2 uses
  %switch16 = icmp sgt i64 %.val8, 0
  br i1 %switch16, label %"_ZN4core3ptr47drop_in_place$LT$procfs_core..InternalError$GT$17h2ac0bbbd4f26f132E.exit.sink.split", label %"_ZN4core3ptr47drop_in_place$LT$procfs_core..InternalError$GT$17h2ac0bbbd4f26f132E.exit"

bb.e:                                             ; preds = %bb.a
end_hunk_2
begin_hunk_3_@"_ZN4core3ptr46drop_in_place$LT$prometheus..proto..Metric$GT$17he18995900ba8ff64E":bb.a

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val1.i.i.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !4234, !noalias !4222, !nonnull !11, !noundef !11
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !4235
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i.i": ; preds = %bb.b, %.lr.ph.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4236)
  %.val.i4.i.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !4239, !noalias !4222 ; 2 uses
  %i.i = icmp eq i64 %.val.i4.i.i.i.i, 0
  br i1 %i.i, label %"_ZN4core3ptr49drop_in_place$LT$prometheus..proto..LabelPair$GT$17h4ad7e82123feee92E.exit.i.i.i", label %bb.c

bb.c:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i.i"
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.val1.i5.i.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !4239, !noalias !4222, !nonnull !11, !noundef !11
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i5.i.i.i.i, i64 noundef %.val.i4.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !4240
  br label %"_ZN4core3ptr49drop_in_place$LT$prometheus..proto..LabelPair$GT$17h4ad7e82123feee92E.exit.i.i.i"

"_ZN4core3ptr49drop_in_place$LT$prometheus..proto..LabelPair$GT$17h4ad7e82123feee92E.exit.i.i.i": ; preds = %bb.c, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit.i.i.i.i"
  %i.k = icmp eq i64 %i.e, %.val1.i
  br i1 %i.k, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2e5c08286dacd60fE.exit.i", label %.lr.ph.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2e5c08286dacd60fE.exit.i": ; preds = %"_ZN4core3ptr49drop_in_place$LT$prometheus..proto..LabelPair$GT$17h4ad7e82123feee92E.exit.i.i.i", %bb.a
  %.val2.i = load i64, ptr %0, align 8, !range !121, !alias.scope !4222, !noundef !11 ; 2 uses
  %i.l = icmp eq i64 %.val2.i, 0
  br i1 %i.l, label %"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..LabelPair$GT$$GT$17h452144939ac00129E.exit", label %bb.d

bb.d:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2e5c08286dacd60fE.exit.i"
  %i.m = mul nuw i64 %.val2.i, 48
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !4222
  br label %"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..LabelPair$GT$$GT$17h452144939ac00129E.exit"

"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..LabelPair$GT$$GT$17h452144939ac00129E.exit": ; preds = %bb.d, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2e5c08286dacd60fE.exit.i"
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4241)
  %.val.i4 = load i64, ptr %i.n, align 8, !alias.scope !4241 ; 2 uses
  %i.o = icmp eq i64 %.val.i4, 0
  br i1 %i.o, label %"_ZN4core3ptr47drop_in_place$LT$prometheus..proto..Summary$GT$17he1b58800c48222c1E.exit6", label %bb.e

bb.e:                                             ; preds = %"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..LabelPair$GT$$GT$17h452144939ac00129E.exit"
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1.i5 = load ptr, ptr %i.p, align 8, !alias.scope !4241, !nonnull !11, !noundef !11
  %i.q = shl nuw i64 %.val.i4, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i5, i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !4241
  br label %"_ZN4core3ptr47drop_in_place$LT$prometheus..proto..Summary$GT$17he1b58800c48222c1E.exit6"

"_ZN4core3ptr47drop_in_place$LT$prometheus..proto..Summary$GT$17he1b58800c48222c1E.exit6": ; preds = %bb.e, %"_ZN4core3ptr72drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..LabelPair$GT$$GT$17h452144939ac00129E.exit"
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4244)
  %.val.i9 = load i64, ptr %i.r, align 8, !alias.scope !4244 ; 2 uses
  %i.s = icmp eq i64 %.val.i9, 0
  br i1 %i.s, label %"_ZN4core3ptr49drop_in_place$LT$prometheus..proto..Histogram$GT$17h61354a0ccb31280cE.exit11", label %bb.f

bb.f:                                             ; preds = %"_ZN4core3ptr47drop_in_place$LT$prometheus..proto..Summary$GT$17he1b58800c48222c1E.exit6"
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val1.i10 = load ptr, ptr %i.t, align 8, !alias.scope !4244, !nonnull !11, !noundef !11
  %i.u = shl nuw i64 %.val.i9, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i10, i64 noundef %i.u, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !4244
  br label %"_ZN4core3ptr49drop_in_place$LT$prometheus..proto..Histogram$GT$17h61354a0ccb31280cE.exit11"

"_ZN4core3ptr49drop_in_place$LT$prometheus..proto..Histogram$GT$17h61354a0ccb31280cE.exit11": ; preds = %"_ZN4core3ptr47drop_in_place$LT$prometheus..proto..Summary$GT$17he1b58800c48222c1E.exit6", %bb.f
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @"_ZN4core3ptr47drop_in_place$LT$prometheus..proto..Summary$GT$17he1b58800c48222c1E"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %"_ZN4core3ptr71drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..Quantile$GT$$GT$17h9476325a16755b6fE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !11, !noundef !11
  %i.c = shl nuw i64 %.val, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #42
  br label %"_ZN4core3ptr71drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..Quantile$GT$$GT$17h9476325a16755b6fE.exit"

"_ZN4core3ptr71drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..Quantile$GT$$GT$17h9476325a16755b6fE.exit": ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @"_ZN4core3ptr49drop_in_place$LT$prometheus..proto..Histogram$GT$17h61354a0ccb31280cE"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %"_ZN4core3ptr69drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..Bucket$GT$$GT$17h7f53ec5f3c3548b7E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !11, !noundef !11
  %i.c = shl nuw i64 %.val, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #42
  br label %"_ZN4core3ptr69drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..Bucket$GT$$GT$17h7f53ec5f3c3548b7E.exit"

"_ZN4core3ptr69drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..Bucket$GT$$GT$17h7f53ec5f3c3548b7E.exit": ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr49drop_in_place$LT$prometheus..proto..LabelPair$GT$17h4ad7e82123feee92E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4247)
  %.val.i = load i64, ptr %0, align 8, !alias.scope !4247 ; 2 uses
  %i.a = icmp eq i64 %.val.i, 0
  br i1 %i.a, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load ptr, ptr %i.b, align 8, !alias.scope !4247, !nonnull !11, !noundef !11
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !4247
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit": ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4250)
  %.val.i4 = load i64, ptr %i.c, align 8, !alias.scope !4250 ; 2 uses
  %i.d = icmp eq i64 %.val.i4, 0
  br i1 %i.d, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit6", label %bb.c

bb.c:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit"
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1.i5 = load ptr, ptr %i.e, align 8, !alias.scope !4250, !nonnull !11, !noundef !11
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i5, i64 noundef %.val.i4, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !4250
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit6"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit6": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit", %bb.c
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr52drop_in_place$LT$prometheus..proto..MetricFamily$GT$17h59a553868dd65940E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4253)
  %.val.i = load i64, ptr %0, align 8, !alias.scope !4253 ; 2 uses
  %i.a = icmp eq i64 %.val.i, 0
  br i1 %i.a, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load ptr, ptr %i.b, align 8, !alias.scope !4253, !nonnull !11, !noundef !11
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !4253
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit": ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4256)
  %.val.i5 = load i64, ptr %i.c, align 8, !alias.scope !4256 ; 2 uses
  %i.d = icmp eq i64 %.val.i5, 0
  br i1 %i.d, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit7", label %bb.c

bb.c:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit"
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1.i6 = load ptr, ptr %i.e, align 8, !alias.scope !4256, !nonnull !11, !noundef !11
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i6, i64 noundef %.val.i5, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !4256
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit7"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit7": ; preds = %bb.c, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit"
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4259)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val.i8 = load ptr, ptr %i.g, align 8, !alias.scope !4259, !nonnull !11, !noundef !11 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val1.i9 = load i64, ptr %i.h, align 8, !alias.scope !4259, !noundef !11 ; 2 uses
  %i.i = icmp eq i64 %.val1.i9, 0
  br i1 %i.i, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbe17f4167629f79fE.exit.i", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit7", %.lr.ph.i.i.i
  %.sroa.0.07.i.i.i = phi i64 [ %i.k, %.lr.ph.i.i.i ], [ 0, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit7" ] ; 2 uses
  %i.j = getelementptr inbounds nuw [136 x i8], ptr %.val.i8, i64 %.sroa.0.07.i.i.i
  %i.k = add nuw i64 %.sroa.0.07.i.i.i, 1         ; 2 uses
  tail call fastcc void @"_ZN4core3ptr46drop_in_place$LT$prometheus..proto..Metric$GT$17he18995900ba8ff64E"(ptr noalias noundef readonly align 8 dereferenceable(136) %i.j), !noalias !4259
  %i.l = icmp eq i64 %i.k, %.val1.i9
  br i1 %i.l, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbe17f4167629f79fE.exit.i", label %.lr.ph.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbe17f4167629f79fE.exit.i": ; preds = %.lr.ph.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7c42ccfc1fff1c35E.exit7"
  %.val2.i = load i64, ptr %i.f, align 8, !range !121, !alias.scope !4259, !noundef !11 ; 2 uses
  %i.m = icmp eq i64 %.val2.i, 0
  br i1 %i.m, label %"_ZN4core3ptr69drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..Metric$GT$$GT$17ha758383b1a45b7ccE.exit", label %bb.d

bb.d:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbe17f4167629f79fE.exit.i"
  %i.n = mul nuw i64 %.val2.i, 136
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i8, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !4259
  br label %"_ZN4core3ptr69drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..Metric$GT$$GT$17ha758383b1a45b7ccE.exit"

"_ZN4core3ptr69drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..Metric$GT$$GT$17ha758383b1a45b7ccE.exit": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbe17f4167629f79fE.exit.i", %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr56drop_in_place$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$17h7361105333ceb6e1E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4262)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !range !977, !alias.scope !4262, !noundef !11
  %i.f = trunc nuw i64 %i.e to i1                 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !4262, !align !983 ; 5 uses
  %i.i = icmp ne ptr %i.h, null
  %.sroa.0.0.i = select i1 %i.f, i1 %i.i, i1 false
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4265)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4268)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4271)
  br i1 %i.f, label %bb.b, label %.thread.i

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !4274 ; 6 uses
  %i.k = icmp eq ptr %i.h, null
  br i1 %i.k, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i.i.i.i) ]
  %i.l = load ptr, ptr %.val1.i.i.i.i.i.i, align 8, !invariant.load !11, !noalias !4274 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void %i.l(ptr noundef nonnull %i.h)
          to label %bb.e unwind label %bb.f, !noalias !4274

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !121, !invariant.load !11, !noalias !4274 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !1608, !invariant.load !11, !noalias !4274 ; 2 uses
  %i.q = icmp ult i64 %i.p, -9223372036854775807
  tail call void @llvm.assume(i1 %i.q)
  %i.r = icmp eq i64 %i.n, 0
  br i1 %i.r, label %.thread.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i": ; preds = %bb.e
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.h, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) %i.p) #42, !noalias !4274
  br label %.thread.i

bb.f:                                             ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  %i.t = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !121, !invariant.load !11, !noalias !4274 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i, i64 16
  %i.w = load i64, ptr %i.v, align 8, !range !1608, !invariant.load !11, !noalias !4274 ; 2 uses
  %i.x = icmp ult i64 %i.w, -9223372036854775807
  tail call void @llvm.assume(i1 %i.x)
  %i.y = icmp eq i64 %i.u, 0
  br i1 %i.y, label %.body.i.i.i.i.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i.i": ; preds = %bb.f
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.h, i64 noundef %i.u, i64 noundef range(i64 1, -9223372036854775807) %i.w) #42, !noalias !4274
  br label %.body.i.i.i.i.i

.body.i.i.i.i.i:                                  ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i.i", %bb.f
  store i64 0, ptr %i.d, align 8, !alias.scope !4275
  %i.z = extractvalue { ptr, i32 } %i.s, 0
  %i.aa = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h90994b58fc656da7E(ptr noundef %i.z)
          to label %bb.h unwind label %bb.g, !noalias !4262 ; 2 uses

bb.g:                                             ; preds = %.body.i.i.i.i.i
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking19panic_cannot_unwind17hebe3a4840b691755E() #47, !noalias !4262
  unreachable

.thread.i:                                        ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i", %bb.e, %bb.b, %bb.a
  store i64 0, ptr %i.d, align 8, !alias.scope !4275
  br label %"_ZN4core3ptr130drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$17h3a5279352e9f46efE.exit.i"

bb.h:                                             ; preds = %.body.i.i.i.i.i
  %i.ac = extractvalue { ptr, ptr } %i.aa, 0      ; 2 uses
  %i.ad = extractvalue { ptr, ptr } %i.aa, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ad) ]
  %.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.i, label %"_ZN4core3ptr130drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$17h3a5279352e9f46efE.exit.i", label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4262
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4262
  store ptr @295, ptr %i.b, align 8, !noalias !4262
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.ae, align 8, !noalias !4262
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.af, align 8, !noalias !4262
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ag, align 8, !noalias !4262
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.ah, align 8, !noalias !4262
  %i.ai = invoke fastcc noundef ptr @_ZN3std2io5Write9write_fmt17he4b32540b8739b68E(ptr noalias noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address) dereferenceable(48) %i.b)
          to label %bb.k unwind label %bb.j, !noalias !4262 ; 2 uses

"_ZN4core3ptr130drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$17h3a5279352e9f46efE.exit.i": ; preds = %bb.h, %.thread.i
  %i.aj = load ptr, ptr %0, align 8, !alias.scope !4262, !noundef !11 ; 4 uses
  %.not3.i = icmp eq ptr %i.aj, null
  br i1 %.not3.i, label %"_ZN4core3ptr188drop_in_place$LT$core..cell..UnsafeCell$LT$core..option..Option$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$$GT$$GT$17h9929b7e319e07129E.exit", label %bb.o

bb.j:                                             ; preds = %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h2280dbfc9f9b8b86E.exit.i", %bb.l, %bb.i
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @"_ZN4core3ptr130drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$17h3a5279352e9f46efE"(ptr nonnull %i.ac, ptr nonnull %i.ad) #46
          to label %.body unwind label %bb.n, !noalias !4262

bb.k:                                             ; preds = %bb.i
  store ptr %i.ai, ptr %i.c, align 8, !noalias !4262
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4262
  %i.al = icmp eq ptr %i.ai, null
  br i1 %i.al, label %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h2280dbfc9f9b8b86E.exit.i", label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h05baf183f9a1ee21E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.c)
          to label %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h2280dbfc9f9b8b86E.exit.i" unwind label %bb.j, !noalias !4262

"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h2280dbfc9f9b8b86E.exit.i": ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4262
  invoke void @_ZN3std7process5abort17h97870e46d5a4dcf2E() #45
          to label %bb.m unwind label %bb.j, !noalias !4262

bb.m:                                             ; preds = %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h2280dbfc9f9b8b86E.exit.i"
  unreachable

bb.n:                                             ; preds = %bb.j
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47, !noalias !4262
  unreachable

bb.o:                                             ; preds = %"_ZN4core3ptr130drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$17h3a5279352e9f46efE.exit.i"
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  invoke void @_ZN3std6thread6scoped9ScopeData29decrement_num_running_threads17h5b616571e567f281E(ptr noundef nonnull align 8 %i.an, i1 noundef zeroext %.sroa.0.0.i)
          to label %bb.r unwind label %.body.thread

.body.thread:                                     ; preds = %bb.o
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.body:                                            ; preds = %bb.j
  %.pre = load ptr, ptr %0, align 8, !alias.scope !4276 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4276)
  %i.ap = icmp eq ptr %.pre, null
  br i1 %i.ap, label %"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17h0230a60a422f1754E.exit", label %bb.p

bb.p:                                             ; preds = %.body.thread, %.body
  %eh.lpad-body16 = phi { ptr, i32 } [ %i.ao, %.body.thread ], [ %i.ak, %.body ] ; 2 uses
  %i.aq = phi ptr [ %i.aj, %.body.thread ], [ %.pre, %.body ]
  %i.ar = atomicrmw sub ptr %i.aq, i64 1 release, align 8, !noalias !4279
  %i.as = icmp eq i64 %i.ar, 1
  br i1 %i.as, label %bb.q, label %"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17h0230a60a422f1754E.exit"

bb.q:                                             ; preds = %bb.p
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17he03e6eff33bf44f1E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %0)
          to label %"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17h0230a60a422f1754E.exit" unwind label %bb.u

bb.r:                                             ; preds = %bb.o
  %i.at = atomicrmw sub ptr %i.aj, i64 1 release, align 8, !noalias !4284
  %i.au = icmp eq i64 %i.at, 1
  br i1 %i.au, label %bb.s, label %"_ZN4core3ptr188drop_in_place$LT$core..cell..UnsafeCell$LT$core..option..Option$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$$GT$$GT$17h9929b7e319e07129E.exit"

bb.s:                                             ; preds = %bb.r
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17he03e6eff33bf44f1E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %0)
          to label %"_ZN4core3ptr188drop_in_place$LT$core..cell..UnsafeCell$LT$core..option..Option$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$$GT$$GT$17h9929b7e319e07129E.exit" unwind label %bb.t

"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17h0230a60a422f1754E.exit": ; preds = %bb.p, %.body, %bb.q, %bb.t
  %.pn = phi { ptr, i32 } [ %i.av, %bb.t ], [ %eh.lpad-body16, %bb.q ], [ %i.ak, %.body ], [ %eh.lpad-body16, %bb.p ]
  invoke fastcc void @"_ZN4core3ptr188drop_in_place$LT$core..cell..UnsafeCell$LT$core..option..Option$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$$GT$$GT$17h9929b7e319e07129E"(ptr noalias noundef align 8 dereferenceable(24) %i.d) #46
          to label %common.resume unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17h0230a60a422f1754E.exit"

common.resume:                                    ; preds = %"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17h0230a60a422f1754E.exit"
  resume { ptr, i32 } %.pn

"_ZN4core3ptr188drop_in_place$LT$core..cell..UnsafeCell$LT$core..option..Option$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$$GT$$GT$17h9929b7e319e07129E.exit": ; preds = %bb.s, %bb.r, %"_ZN4core3ptr130drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$17h3a5279352e9f46efE.exit.i"
  ret void

bb.u:                                             ; preds = %bb.q, %"_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17h0230a60a422f1754E.exit"
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #47
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr57drop_in_place$LT$prometheus..histogram..HistogramCore$GT$17h4744720c4f627421E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(256) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  tail call void @"_ZN4core3ptr43drop_in_place$LT$prometheus..desc..Desc$GT$17he873026ac95ca17bE"(ptr noalias noundef nonnull align 8 dereferenceable(112) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4291)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.val.i = load ptr, ptr %i.b, align 8, !alias.scope !4291, !nonnull !11, !noundef !11 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.val1.i = load i64, ptr %i.c, align 8, !alias.scope !4291, !noundef !11 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4294)
  %i.d = icmp eq i64 %.val1.i, 0
  br i1 %i.d, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2e5c08286dacd60fE.exit.i", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %"_ZN4core3ptr49drop_in_place$LT$prometheus..proto..LabelPair$GT$17h4ad7e82123feee92E.exit.i.i.i"
  %.sroa.0.07.i.i.i = phi i64 [ %i.f, %"_ZN4core3ptr49drop_in_place$LT$prometheus..proto..LabelPair$GT$17h4ad7e82123feee92E.exit.i.i.i" ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [48 x i8], ptr %.val.i, i64 %.sroa.0.07.i.i.i ; 4 uses
  %i.f = add nuw i64 %.sroa.0.07.i.i.i, 1         ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN4core5slice4sort6stable5drift4sort17h74797ff540af3e53E:bb.a
_ZN4core5slice4sort6stable5drift10create_run17h0730ab6f06c02ac8E.exit: ; preds = %bb.m, %bb.n, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hbcb8079bcdf46e39E.exit"
  %.sroa.0.0.i34 = phi i64 [ %i.au, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hbcb8079bcdf46e39E.exit" ], [ %i.as, %bb.n ], [ %i.aq, %bb.m ] ; 2 uses
  %i.bm = lshr i64 %.sroa.018.0, 1
  %i.bn = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl i64 %.sroa.09.0, 1                ; 2 uses
  %i.bo = sub i64 %factor, %i.bm
  %i.bp = add i64 %i.bn, %factor
  %i.bq = mul i64 %i.bo, %.sroa.0.0
  %i.br = mul i64 %i.bp, %.sroa.0.0
  %i.bs = xor i64 %i.br, %i.bq
  %i.bt = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bs, i1 false)
  %i.bu = trunc nuw nsw i64 %i.bt to i8
  br label %bb.p

bb.p:                                             ; preds = %bb.f, %_ZN4core5slice4sort6stable5drift10create_run17h0730ab6f06c02ac8E.exit
  %.sroa.026.0 = phi i8 [ %i.bu, %_ZN4core5slice4sort6stable5drift10create_run17h0730ab6f06c02ac8E.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.023.0 = phi i64 [ %.sroa.0.0.i34, %_ZN4core5slice4sort6stable5drift10create_run17h0730ab6f06c02ac8E.exit ], [ 1, %bb.f ] ; 2 uses
  %i.bv = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.bv, label %.lr.ph69, label %._crit_edge

.lr.ph69:                                         ; preds = %bb.p
  %i.bw = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph69, %_ZN4core5slice4sort6stable5drift13logical_merge17hd1ba5d6e41661e40E.exit
  %.sroa.02.168 = phi i64 [ %.sroa.02.0, %.lr.ph69 ], [ %i.bx, %_ZN4core5slice4sort6stable5drift13logical_merge17hd1ba5d6e41661e40E.exit ] ; 2 uses
  %.sroa.018.167 = phi i64 [ %.sroa.018.0, %.lr.ph69 ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17hd1ba5d6e41661e40E.exit ] ; 4 uses
  %i.bx = add i64 %.sroa.02.168, -1               ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !noundef !11
  %.not29 = icmp ult i8 %i.bz, %.sroa.026.0
  br i1 %.not29, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17hd1ba5d6e41661e40E.exit, %bb.q, %bb.p
  %.sroa.018.1.lcssa = phi i64 [ %.sroa.018.0, %bb.p ], [ %.sroa.018.167, %bb.q ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17hd1ba5d6e41661e40E.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.p ], [ %.sroa.02.168, %bb.q ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17hd1ba5d6e41661e40E.exit ] ; 3 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.018.1.lcssa, ptr %i.ca, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.026.0, ptr %i.cb, align 1
  br i1 %i.k, label %bb.z, label %bb.aa

bb.r:                                             ; preds = %bb.q
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bx
  %i.cd = load i64, ptr %i.cc, align 8, !noundef !11 ; 3 uses
  %i.ce = lshr i64 %i.cd, 1                       ; 8 uses
  %i.cf = lshr i64 %.sroa.018.167, 1              ; 6 uses
  %i.cg = add nuw i64 %i.ce, %i.cf                ; 4 uses
  %i.ch = sub i64 %.sroa.09.0, %i.cg
  %i.ci = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.ch ; 6 uses
  %i.cj = icmp ugt i64 %i.cg, %3
  %i.ck = trunc i64 %.sroa.018.167 to i1
  %i.cl = or i64 %i.cd, %.sroa.018.167
  %i.cm = trunc i64 %i.cl to i1
  %or.cond3.i = or i1 %i.cj, %i.cm
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cn = trunc i64 %i.cd to i1
  br i1 %i.cn, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.co = shl i64 %i.cg, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17hd1ba5d6e41661e40E.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.ck, label %bb.w, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h476593a00dee33f2E.exit35"

bb.v:                                             ; preds = %bb.s
  %i.cp = or i64 %i.ce, 1
  %i.cq = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.cp, i1 true)
  %i.cr = trunc nuw nsw i64 %i.cq to i32
  %i.cs = shl nuw nsw i32 %i.cr, 1
  %i.ct = xor i32 %i.cs, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h04eba19435942347E(ptr noalias noundef nonnull align 8 %i.ci, i64 noundef %i.ce, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.ct, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) null, ptr noalias noundef nonnull align 1 %5), !inline_history !4935
  br label %bb.u

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h476593a00dee33f2E.exit35": ; preds = %bb.u
  %i.cu = getelementptr inbounds nuw [48 x i8], ptr %i.ci, i64 %i.ce
  %i.cv = or i64 %i.cf, 1
  %i.cw = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.cv, i1 true)
  %i.cx = trunc nuw nsw i64 %i.cw to i32
  %i.cy = shl nuw nsw i32 %i.cx, 1
  %i.cz = xor i32 %i.cy, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h04eba19435942347E(ptr noalias noundef nonnull align 8 %i.cu, i64 noundef %i.cf, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.cz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) null, ptr noalias noundef nonnull align 1 %5), !inline_history !4935
  br label %bb.w

bb.w:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h476593a00dee33f2E.exit35", %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4936)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4939)
  %i.da = icmp eq i64 %i.ce, 0
  %i.db = icmp eq i64 %i.cf, 0
  %or.cond.i = or i1 %i.db, %i.da
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17hfe4cbe0aeaaf4f75E.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.sroa.0.0.i.i36 = tail call i64 @llvm.umin.i64(i64 %i.cf, i64 range(i64 0, -9223372036854775808) %i.ce) ; 2 uses
  %i.dc = icmp ult i64 %3, %.sroa.0.0.i.i36
  br i1 %i.dc, label %_ZN4core5slice4sort6stable5merge5merge17hfe4cbe0aeaaf4f75E.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dd = getelementptr inbounds nuw [48 x i8], ptr %i.ci, i64 %i.ce ; 3 uses
  %.not.i37 = icmp samesign ugt i64 %i.ce, %i.cf  ; 2 uses
  %.16.i = select i1 %.not.i37, ptr %i.dd, ptr %i.ci
  %i.de = mul i64 %.sroa.0.0.i.i36, 48            ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %.16.i, i64 %i.de, i1 false), !alias.scope !4941
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 %i.de ; 3 uses
  br i1 %.not.i37, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %bb.y, %.preheader.i
  %i.dg = phi ptr [ %i.dw, %.preheader.i ], [ %i.df, %bb.y ] ; 3 uses
  %i.dh = phi ptr [ %i.dv, %.preheader.i ], [ %i.dd, %bb.y ] ; 3 uses
  %.sroa.0.0.i17.i = phi ptr [ %i.dk, %.preheader.i ], [ %i.bw, %bb.y ]
  %i.di = getelementptr inbounds i8, ptr %i.dh, i64 -48 ; 2 uses
  %i.dj = getelementptr inbounds i8, ptr %i.dg, i64 -48 ; 2 uses
  %i.dk = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -48 ; 2 uses
  %i.dl = getelementptr i8, ptr %i.dg, i64 -40
  %.val.i.i = load ptr, ptr %i.dl, align 8, !alias.scope !4942, !noalias !4945, !nonnull !11, !noundef !11
  %i.dm = getelementptr i8, ptr %i.dg, i64 -32
  %.val10.i.i = load i64, ptr %i.dm, align 8, !alias.scope !4942, !noalias !4945, !noundef !11 ; 2 uses
  %i.dn = getelementptr i8, ptr %i.dh, i64 -40
  %.val11.i.i = load ptr, ptr %i.dn, align 8, !alias.scope !4949, !noalias !4950, !nonnull !11, !noundef !11
  %i.do = getelementptr i8, ptr %i.dh, i64 -32
  %.val12.i.i = load i64, ptr %i.do, align 8, !alias.scope !4949, !noalias !4950, !noundef !11 ; 2 uses
  %..i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val10.i.i, i64 %.val12.i.i)
  %i.dp = sub i64 %.val10.i.i, %.val12.i.i
  %i.dq = tail call i32 @memcmp(ptr nonnull readonly %.val.i.i, ptr nonnull readonly %.val11.i.i, i64 %..i.i.i.i.i.i), !noalias !4951 ; 2 uses
  %i.dr = sext i32 %i.dq to i64
  %i.ds = icmp eq i32 %i.dq, 0
  %spec.store.select.i.i.i.i.i.i = select i1 %i.ds, i64 %i.dp, i64 %i.dr ; 2 uses
  %i.dt = icmp sgt i64 %spec.store.select.i.i.i.i.i.i, -1 ; 2 uses
  %..i.i = select i1 %i.dt, ptr %i.dj, ptr %i.di
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dk, ptr noundef nonnull align 8 dereferenceable(48) %..i.i, i64 48, i1 false), !alias.scope !4941, !noalias !4955
  %i.du = zext i1 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [48 x i8], ptr %i.di, i64 %i.du ; 3 uses
  %spec.store.select.i.i.i.i.lobit.i.i = lshr i64 %spec.store.select.i.i.i.i.i.i, 63
  %i.dw = getelementptr inbounds nuw [48 x i8], ptr %i.dj, i64 %spec.store.select.i.i.i.i.lobit.i.i ; 3 uses
  %i.dx = icmp eq ptr %i.dv, %i.ci
  %i.dy = icmp eq ptr %i.dw, %2
  %or.cond.i.i = select i1 %i.dx, i1 true, i1 %i.dy
  br i1 %or.cond.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hab118b92de39e22cE.exit.i", label %.preheader.i

.lr.ph.i.i:                                       ; preds = %bb.y, %.lr.ph.i.i
  %i.dz = phi ptr [ %i.en, %.lr.ph.i.i ], [ %i.ci, %bb.y ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.em, %.lr.ph.i.i ], [ %i.dd, %bb.y ] ; 4 uses
  %i.ea = phi ptr [ %i.el, %.lr.ph.i.i ], [ %2, %bb.y ] ; 4 uses
  %i.eb = getelementptr i8, ptr %.sroa.0.02.i.i, i64 8
  %.sroa.0.0.val.i.i = load ptr, ptr %i.eb, align 8, !alias.scope !4956, !noalias !4959, !nonnull !11, !noundef !11
  %i.ec = getelementptr i8, ptr %.sroa.0.02.i.i, i64 16
  %.sroa.0.0.val6.i.i = load i64, ptr %i.ec, align 8, !alias.scope !4956, !noalias !4959, !noundef !11 ; 2 uses
  %i.ed = getelementptr i8, ptr %i.ea, i64 8
  %.val.i19.i = load ptr, ptr %i.ed, align 8, !alias.scope !4963, !noalias !4964, !nonnull !11, !noundef !11
  %i.ee = getelementptr i8, ptr %i.ea, i64 16
  %.val7.i.i = load i64, ptr %i.ee, align 8, !alias.scope !4963, !noalias !4964, !noundef !11 ; 2 uses
  %..i.i.i.i.i20.i = tail call i64 @llvm.umin.i64(i64 %.sroa.0.0.val6.i.i, i64 %.val7.i.i)
  %i.ef = sub i64 %.sroa.0.0.val6.i.i, %.val7.i.i
  %i.eg = tail call i32 @memcmp(ptr nonnull readonly %.sroa.0.0.val.i.i, ptr nonnull readonly %.val.i19.i, i64 %..i.i.i.i.i20.i), !noalias !4965 ; 2 uses
  %i.eh = sext i32 %i.eg to i64
  %i.ei = icmp eq i32 %i.eg, 0
  %spec.store.select.i.i.i.i.i21.i = select i1 %i.ei, i64 %i.ef, i64 %i.eh ; 2 uses
  %i.ej = icmp sgt i64 %spec.store.select.i.i.i.i.i21.i, -1 ; 2 uses
  %spec.select.i.i = select i1 %i.ej, ptr %i.ea, ptr %.sroa.0.02.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dz, ptr noundef nonnull align 8 dereferenceable(48) %spec.select.i.i, i64 48, i1 false), !alias.scope !4941, !noalias !4969
  %i.ek = zext i1 %i.ej to i64
  %i.el = getelementptr inbounds nuw [48 x i8], ptr %i.ea, i64 %i.ek ; 3 uses
  %spec.store.select.i.i.i.i.lobit.i22.i = lshr i64 %spec.store.select.i.i.i.i.i21.i, 63
  %i.em = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.02.i.i, i64 %spec.store.select.i.i.i.i.lobit.i22.i ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.dz, i64 48 ; 2 uses
  %i.eo = icmp ne ptr %i.el, %i.df
  %i.ep = icmp ne ptr %i.em, %i.bw
  %or.cond.i23.i = select i1 %i.eo, i1 %i.ep, i1 false
  br i1 %or.cond.i23.i, label %.lr.ph.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hab118b92de39e22cE.exit.i"

"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hab118b92de39e22cE.exit.i": ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.dv, %.preheader.i ], [ %i.en, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.dw, %.preheader.i ], [ %i.df, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.el, %.lr.ph.i.i ] ; 2 uses
  %i.eq = ptrtoint ptr %.sroa.7.0.i to i64
  %i.er = ptrtoint ptr %.sroa.0.1.i to i64
  %i.es = sub nuw i64 %i.eq, %i.er
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.es, i1 false), !alias.scope !4941, !noalias !4970
  br label %_ZN4core5slice4sort6stable5merge5merge17hfe4cbe0aeaaf4f75E.exit

_ZN4core5slice4sort6stable5merge5merge17hfe4cbe0aeaaf4f75E.exit: ; preds = %bb.w, %bb.x, %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hab118b92de39e22cE.exit.i"
  %i.et = shl i64 %i.cg, 1
  %i.eu = or disjoint i64 %i.et, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17hd1ba5d6e41661e40E.exit

_ZN4core5slice4sort6stable5drift13logical_merge17hd1ba5d6e41661e40E.exit: ; preds = %bb.t, %_ZN4core5slice4sort6stable5merge5merge17hfe4cbe0aeaaf4f75E.exit
  %.sroa.0.0.i = phi i64 [ %i.eu, %_ZN4core5slice4sort6stable5merge5merge17hfe4cbe0aeaaf4f75E.exit ], [ %i.co, %bb.t ] ; 2 uses
  %i.ev = icmp ugt i64 %i.bx, 1
  br i1 %i.ev, label %bb.q, label %._crit_edge

bb.z:                                             ; preds = %._crit_edge
  %i.ew = add i64 %.sroa.02.1.lcssa, 1
  %i.ex = lshr i64 %.sroa.023.0, 1
  %i.ey = add i64 %i.ex, %.sroa.09.0
  br label %bb.f

bb.aa:                                            ; preds = %._crit_edge
  %6 = trunc i64 %.sroa.018.1.lcssa to i1
  br i1 %6, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ez = or i64 %1, 1
  %i.fa = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ez, i1 true)
  %i.fb = trunc nuw nsw i64 %i.fa to i32
  %i.fc = shl nuw nsw i32 %i.fb, 1
  %i.fd = xor i32 %i.fc, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h04eba19435942347E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.fd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) null, ptr noalias noundef nonnull align 1 %5), !inline_history !4935
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.a, %bb.ac
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17he05662b2bf0a3395E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp ult i64 %1, 2
  br i1 %i.c, label %bb.aw, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h43164af9ba479437E(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.as, %bb.e
  %.sroa.018.0 = phi i64 [ 1, %bb.e ], [ %.sroa.023.0, %bb.as ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.ju, %bb.as ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.js, %bb.as ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h988d16c668be86a9E.exit", label %bb.y

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h988d16c668be86a9E.exit": ; preds = %bb.f
  %i.l = sub nuw i64 %1, %.sroa.09.0              ; 12 uses
  %i.m = getelementptr inbounds nuw [136 x i8], ptr %0, i64 %.sroa.09.0 ; 13 uses
  %.not.i33 = icmp ult i64 %i.l, %.sroa.01.0
  br i1 %.not.i33, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17ha1aef9a3e60d6f04E.exit.i, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h988d16c668be86a9E.exit"
  br i1 %4, label %bb.w, label %bb.v

bb.h:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h988d16c668be86a9E.exit"
  %i.n = icmp ult i64 %i.l, 2
  br i1 %i.n, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hb89b271422530c35E.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4975)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4978)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4980), !noalias !4983
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4987), !noalias !4983
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 152
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !4989, !noalias !4990, !noundef !11 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !4991, !noalias !4992, !noundef !11 ; 2 uses
  %.not.i.i57 = icmp eq i64 %i.p, %i.r
  br i1 %.not.i.i57, label %bb.j, label %.split

bb.j:                                             ; preds = %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !4991, !noalias !4992, !nonnull !11, !noundef !11
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 144
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !4989, !noalias !4990, !nonnull !11, !noundef !11
  %exitcond.not.i.i60192 = icmp eq i64 %i.p, 0
  br i1 %exitcond.not.i.i60192, label %.split72.a, label %.lr.ph195

.split:                                           ; preds = %bb.i
  %i.w = icmp ult i64 %i.p, %i.r
  br i1 %i.w, label %.preheader, label %.preheader86

bb.k:                                             ; preds = %bb.l
  %i.x = add i64 %.sroa.9.0.i.i59193, 1           ; 2 uses
  %exitcond.not.i.i60 = icmp eq i64 %i.x, %i.p
  br i1 %exitcond.not.i.i60, label %.split72.a, label %.lr.ph195

.lr.ph195:                                        ; preds = %bb.j, %bb.k
  %.sroa.9.0.i.i59193 = phi i64 [ %i.x, %bb.k ], [ 0, %bb.j ] ; 3 uses
  %i.y = getelementptr inbounds nuw [48 x i8], ptr %i.v, i64 %.sroa.9.0.i.i59193 ; 2 uses
  %i.z = getelementptr inbounds nuw [48 x i8], ptr %i.t, i64 %.sroa.9.0.i.i59193 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.ac = load i64, ptr %i.ab, align 8, !noalias !4993, !noundef !11 ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.af = load i64, ptr %i.ae, align 8, !noalias !4993, !noundef !11 ; 2 uses
  %.not16.i.i61 = icmp eq i64 %i.ac, %i.af
  %.pre.i.i62 = load ptr, ptr %i.aa, align 8, !noalias !4993 ; 2 uses
  %.pre14.i.i63 = load ptr, ptr %i.ad, align 8, !noalias !4993 ; 2 uses
  br i1 %.not16.i.i61, label %bb.l, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0a92db54ff3bb355E.exit69"

.split72.a:                                       ; preds = %bb.k, %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %i.m, i64 264
  %i.ah = load i64, ptr %i.ag, align 8, !alias.scope !4989, !noalias !4990, !noundef !11
  %i.ai = getelementptr inbounds nuw i8, ptr %i.m, i64 128
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !4991, !noalias !4992, !noundef !11
  %i.ak = icmp slt i64 %i.ah, %i.aj
  br i1 %i.ak, label %.preheader, label %.preheader86

.preheader:                                       ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0a92db54ff3bb355E.exit69", %.split, %.split72.a
  %.not115 = icmp eq i64 %i.l, 2
  br i1 %.not115, label %_ZN4core5slice4sort6shared17find_existing_run17ha1aef9a3e60d6f04E.exit.i, label %.lr.ph101.preheader

.lr.ph101.preheader:                              ; preds = %.preheader
  %umax127 = tail call i64 @llvm.umax.i64(i64 %i.l, i64 3) ; 2 uses
  br label %.lr.ph101

bb.l:                                             ; preds = %.lr.ph195
  %bcmp.i.i67 = tail call i32 @bcmp(ptr nonnull %.pre.i.i62, ptr nonnull %.pre14.i.i63, i64 %i.ac), !noalias !4993
  %.not17.i.i68 = icmp eq i32 %bcmp.i.i67, 0
  br i1 %.not17.i.i68, label %bb.k, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0a92db54ff3bb355E.exit69"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0a92db54ff3bb355E.exit69": ; preds = %.lr.ph195, %bb.l
  %.lcssa.i.i64 = phi i64 [ %i.af, %.lr.ph195 ], [ %i.ac, %bb.l ] ; 2 uses
  %i.al = sub i64 %i.ac, %.lcssa.i.i64
  %..i.i65 = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 %.lcssa.i.i64)
  %i.am = tail call i32 @memcmp(ptr nonnull %.pre.i.i62, ptr nonnull %.pre14.i.i63, i64 %..i.i65), !noalias !4993 ; 2 uses
  %i.an = sext i32 %i.am to i64
  %i.ao = icmp eq i32 %i.am, 0
  %spec.store.select.i.i66 = select i1 %i.ao, i64 %i.al, i64 %i.an
  %i.ap = icmp slt i64 %spec.store.select.i.i66, 0
  br i1 %i.ap, label %.preheader, label %.preheader86

.preheader86:                                     ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0a92db54ff3bb355E.exit69", %.split, %.split72.a
  %.not114 = icmp eq i64 %i.l, 2
  br i1 %.not114, label %_ZN4core5slice4sort6shared17find_existing_run17ha1aef9a3e60d6f04E.exit.i, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader86
  %umax = tail call i64 @llvm.umax.i64(i64 %i.l, i64 3) ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.p
  %i.aq = phi i64 [ %i.aw, %bb.p ], [ %i.p, %.lr.ph.preheader ] ; 4 uses
  %.sroa.01.0.i.i96 = phi i64 [ %i.bv, %bb.p ], [ 2, %.lr.ph.preheader ] ; 6 uses
  %i.ar = getelementptr inbounds nuw [136 x i8], ptr %i.m, i64 %.sroa.01.0.i.i96 ; 3 uses
  %i.as = add i64 %.sroa.01.0.i.i96, -1           ; 2 uses
  %i.at = icmp ult i64 %i.as, %i.l
  tail call void @llvm.assume(i1 %i.at)
  %i.au = getelementptr inbounds nuw [136 x i8], ptr %i.m, i64 %i.as ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4994)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4997)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4999), !noalias !4983
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5002), !noalias !4983
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !5004, !noalias !5005, !noundef !11 ; 3 uses
  %.not.i.i44 = icmp eq i64 %i.aw, %i.aq
  br i1 %.not.i.i44, label %bb.m, label %.split73.a

bb.m:                                             ; preds = %.lr.ph
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !5006, !noalias !5007, !nonnull !11, !noundef !11
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !alias.scope !5004, !noalias !5005, !nonnull !11, !noundef !11
  %exitcond.not.i.i47196 = icmp eq i64 %i.aq, 0
  br i1 %exitcond.not.i.i47196, label %.split74.a, label %.lr.ph199

.split73.a:                                       ; preds = %.lr.ph
  %i.bb = icmp ult i64 %i.aw, %i.aq
  br i1 %i.bb, label %_ZN4core5slice4sort6shared17find_existing_run17ha1aef9a3e60d6f04E.exit.i, label %bb.p

bb.n:                                             ; preds = %bb.o
  %i.bc = add i64 %.sroa.9.0.i.i46197, 1          ; 2 uses
  %exitcond.not.i.i47 = icmp eq i64 %i.bc, %i.aq
  br i1 %exitcond.not.i.i47, label %.split74.a, label %.lr.ph199

.lr.ph199:                                        ; preds = %bb.m, %bb.n
  %.sroa.9.0.i.i46197 = phi i64 [ %i.bc, %bb.n ], [ 0, %bb.m ] ; 3 uses
  %i.bd = getelementptr inbounds nuw [48 x i8], ptr %i.ba, i64 %.sroa.9.0.i.i46197 ; 2 uses
  %i.be = getelementptr inbounds nuw [48 x i8], ptr %i.ay, i64 %.sroa.9.0.i.i46197 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  %i.bh = load i64, ptr %i.bg, align 8, !noalias !5008, !noundef !11 ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  %i.bk = load i64, ptr %i.bj, align 8, !noalias !5008, !noundef !11 ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN4core5slice4sort6stable5drift4sort17he05662b2bf0a3395E:bb.a
  %i.gp = phi ptr [ %i.hx, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0a92db54ff3bb355E.exit.i.i" ], [ %i.gl, %bb.ah ] ; 4 uses
  %.sroa.0.0.i17.i = phi ptr [ %i.gs, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0a92db54ff3bb355E.exit.i.i" ], [ %i.fe, %bb.ah ]
  %i.gq = getelementptr inbounds i8, ptr %i.gp, i64 -136 ; 2 uses
  %i.gr = getelementptr inbounds i8, ptr %i.go, i64 -136 ; 2 uses
  %i.gs = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -136 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5098)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5101)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5103)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5106)
  %i.gt = getelementptr inbounds i8, ptr %i.go, i64 -120
  %i.gu = load i64, ptr %i.gt, align 8, !alias.scope !5108, !noalias !5109, !noundef !11 ; 4 uses
  %i.gv = getelementptr inbounds i8, ptr %i.gp, i64 -120
  %i.gw = load i64, ptr %i.gv, align 8, !alias.scope !5112, !noalias !5113, !noundef !11 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.gu, %i.gw
  br i1 %.not.i.i.i.i, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %.preheader.i
  %i.gx = getelementptr inbounds i8, ptr %i.gp, i64 -128
  %i.gy = load ptr, ptr %i.gx, align 8, !alias.scope !5112, !noalias !5113, !nonnull !11, !noundef !11
  %i.gz = getelementptr inbounds i8, ptr %i.go, i64 -128
  %i.ha = load ptr, ptr %i.gz, align 8, !alias.scope !5108, !noalias !5109, !nonnull !11, !noundef !11
  %exitcond.not.i.i.i.i208 = icmp eq i64 %i.gu, 0
  br i1 %exitcond.not.i.i.i.i208, label %._crit_edge212, label %.lr.ph211

bb.aj:                                            ; preds = %.preheader.i
  %i.hb = icmp ult i64 %i.gu, %i.gw
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0a92db54ff3bb355E.exit.i.i"

bb.ak:                                            ; preds = %bb.al
  %i.hc = add i64 %.sroa.9.0.i.i.i.i209, 1        ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.hc, %i.gu
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge212, label %.lr.ph211

.lr.ph211:                                        ; preds = %bb.ai, %bb.ak
  %.sroa.9.0.i.i.i.i209 = phi i64 [ %i.hc, %bb.ak ], [ 0, %bb.ai ] ; 3 uses
  %i.hd = getelementptr inbounds nuw [48 x i8], ptr %i.ha, i64 %.sroa.9.0.i.i.i.i209 ; 2 uses
  %i.he = getelementptr inbounds nuw [48 x i8], ptr %i.gy, i64 %.sroa.9.0.i.i.i.i209 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hd, i64 32
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hd, i64 40
  %i.hh = load i64, ptr %i.hg, align 8, !noalias !5114, !noundef !11 ; 5 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.he, i64 32
  %i.hj = getelementptr inbounds nuw i8, ptr %i.he, i64 40
  %i.hk = load i64, ptr %i.hj, align 8, !noalias !5114, !noundef !11 ; 2 uses
  %.not16.i.i.i.i = icmp eq i64 %i.hh, %i.hk
  %.pre.i.i.i.i = load ptr, ptr %i.hf, align 8, !noalias !5114 ; 2 uses
  %.pre14.i.i.i.i = load ptr, ptr %i.hi, align 8, !noalias !5114 ; 2 uses
  br i1 %.not16.i.i.i.i, label %bb.al, label %bb.am

._crit_edge212:                                   ; preds = %bb.ak, %bb.ai
  %i.hl = getelementptr inbounds i8, ptr %i.go, i64 -8
  %i.hm = load i64, ptr %i.hl, align 8, !alias.scope !5108, !noalias !5109, !noundef !11
  %i.hn = getelementptr inbounds i8, ptr %i.gp, i64 -8
  %i.ho = load i64, ptr %i.hn, align 8, !alias.scope !5112, !noalias !5113, !noundef !11
  %i.hp = icmp slt i64 %i.hm, %i.ho
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0a92db54ff3bb355E.exit.i.i"

bb.al:                                            ; preds = %.lr.ph211
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr nonnull %.pre.i.i.i.i, ptr nonnull %.pre14.i.i.i.i, i64 %i.hh), !noalias !5114
  %.not17.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %.not17.i.i.i.i, label %bb.ak, label %bb.am

bb.am:                                            ; preds = %bb.al, %.lr.ph211
  %.lcssa.i.i.i.i = phi i64 [ %i.hk, %.lr.ph211 ], [ %i.hh, %bb.al ] ; 2 uses
  %i.hq = sub i64 %i.hh, %.lcssa.i.i.i.i
  %..i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.hh, i64 %.lcssa.i.i.i.i)
  %i.hr = tail call i32 @memcmp(ptr nonnull %.pre.i.i.i.i, ptr nonnull %.pre14.i.i.i.i, i64 %..i.i.i.i), !noalias !5114 ; 2 uses
  %i.hs = sext i32 %i.hr to i64
  %i.ht = icmp eq i32 %i.hr, 0
  %spec.store.select.i.i.i.i = select i1 %i.ht, i64 %i.hq, i64 %i.hs
  %i.hu = icmp slt i64 %spec.store.select.i.i.i.i, 0
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0a92db54ff3bb355E.exit.i.i"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0a92db54ff3bb355E.exit.i.i": ; preds = %bb.am, %._crit_edge212, %bb.aj
  %.sroa.0.0.i.i.i.i = phi i1 [ %i.hb, %bb.aj ], [ %i.hu, %bb.am ], [ %i.hp, %._crit_edge212 ] ; 3 uses
  %..i.i = select i1 %.sroa.0.0.i.i.i.i, ptr %i.gq, ptr %i.gr
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.gs, ptr noundef nonnull align 8 dereferenceable(136) %..i.i, i64 136, i1 false), !alias.scope !5097, !noalias !5115
  %i.hv = xor i1 %.sroa.0.0.i.i.i.i, true
  %i.hw = zext i1 %i.hv to i64
  %i.hx = getelementptr inbounds nuw [136 x i8], ptr %i.gq, i64 %i.hw ; 3 uses
  %i.hy = zext i1 %.sroa.0.0.i.i.i.i to i64
  %i.hz = getelementptr inbounds nuw [136 x i8], ptr %i.gr, i64 %i.hy ; 3 uses
  %i.ia = icmp eq ptr %i.hx, %i.fq
  %i.ib = icmp eq ptr %i.hz, %2
  %or.cond.i.i = select i1 %i.ia, i1 true, i1 %i.ib
  br i1 %or.cond.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h5a51311461b1cb49E.exit.i", label %.preheader.i

.lr.ph.i.i:                                       ; preds = %bb.ah, %bb.ar
  %i.ic = phi ptr [ %i.jj, %bb.ar ], [ %i.fq, %bb.ah ] ; 2 uses
  %.sroa.0.05.i.i = phi ptr [ %i.ji, %bb.ar ], [ %i.gl, %bb.ah ] ; 7 uses
  %i.id = phi ptr [ %i.jh, %bb.ar ], [ %2, %bb.ah ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5116)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5119)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5121)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5124)
  %i.ie = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i, i64 16
  %i.if = load i64, ptr %i.ie, align 8, !alias.scope !5126, !noalias !5127, !noundef !11 ; 4 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.id, i64 16
  %i.ih = load i64, ptr %i.ig, align 8, !alias.scope !5130, !noalias !5131, !noundef !11 ; 2 uses
  %.not.i.i.i19.i = icmp eq i64 %i.if, %i.ih
  br i1 %.not.i.i.i19.i, label %bb.an, label %.split.i.i

bb.an:                                            ; preds = %.lr.ph.i.i
  %i.ii = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  %i.ij = load ptr, ptr %i.ii, align 8, !alias.scope !5130, !noalias !5131, !nonnull !11, !noundef !11
  %i.ik = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i, i64 8
  %i.il = load ptr, ptr %i.ik, align 8, !alias.scope !5126, !noalias !5127, !nonnull !11, !noundef !11
  %exitcond.not.i.i.i22.i204 = icmp eq i64 %i.if, 0
  br i1 %exitcond.not.i.i.i22.i204, label %.split3.i.i, label %.lr.ph207

.split.i.i:                                       ; preds = %.lr.ph.i.i
  %i.im = icmp ult i64 %i.if, %i.ih
  br i1 %i.im, label %bb.ar, label %bb.aq

bb.ao:                                            ; preds = %bb.ap
  %i.in = add i64 %.sroa.9.0.i.i.i21.i205, 1      ; 2 uses
  %exitcond.not.i.i.i22.i = icmp eq i64 %i.in, %i.if
  br i1 %exitcond.not.i.i.i22.i, label %.split3.i.i, label %.lr.ph207

.lr.ph207:                                        ; preds = %bb.an, %bb.ao
  %.sroa.9.0.i.i.i21.i205 = phi i64 [ %i.in, %bb.ao ], [ 0, %bb.an ] ; 3 uses
  %i.io = getelementptr inbounds nuw [48 x i8], ptr %i.il, i64 %.sroa.9.0.i.i.i21.i205 ; 2 uses
  %i.ip = getelementptr inbounds nuw [48 x i8], ptr %i.ij, i64 %.sroa.9.0.i.i.i21.i205 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.io, i64 32
  %i.ir = getelementptr inbounds nuw i8, ptr %i.io, i64 40
  %i.is = load i64, ptr %i.ir, align 8, !noalias !5132, !noundef !11 ; 5 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.ip, i64 32
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ip, i64 40
  %i.iv = load i64, ptr %i.iu, align 8, !noalias !5132, !noundef !11 ; 2 uses
  %.not16.i.i.i23.i = icmp eq i64 %i.is, %i.iv
  %.pre.i.i.i24.i = load ptr, ptr %i.iq, align 8, !noalias !5132 ; 2 uses
  %.pre14.i.i.i25.i = load ptr, ptr %i.it, align 8, !noalias !5132 ; 2 uses
  br i1 %.not16.i.i.i23.i, label %bb.ap, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0a92db54ff3bb355E.exit.i26.i"

.split3.i.i:                                      ; preds = %bb.ao, %bb.an
  %i.iw = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i, i64 128
  %i.ix = load i64, ptr %i.iw, align 8, !alias.scope !5126, !noalias !5127, !noundef !11
  %i.iy = getelementptr inbounds nuw i8, ptr %i.id, i64 128
  %i.iz = load i64, ptr %i.iy, align 8, !alias.scope !5130, !noalias !5131, !noundef !11
  %i.ja = icmp slt i64 %i.ix, %i.iz
  br i1 %i.ja, label %bb.ar, label %bb.aq

bb.ap:                                            ; preds = %.lr.ph207
  %bcmp.i.i.i30.i = tail call i32 @bcmp(ptr nonnull %.pre.i.i.i24.i, ptr nonnull %.pre14.i.i.i25.i, i64 %i.is), !noalias !5132
  %.not17.i.i.i31.i = icmp eq i32 %bcmp.i.i.i30.i, 0
  br i1 %.not17.i.i.i31.i, label %bb.ao, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0a92db54ff3bb355E.exit.i26.i"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0a92db54ff3bb355E.exit.i26.i": ; preds = %bb.ap, %.lr.ph207
  %.lcssa.i.i.i27.i = phi i64 [ %i.iv, %.lr.ph207 ], [ %i.is, %bb.ap ] ; 2 uses
  %i.jb = sub i64 %i.is, %.lcssa.i.i.i27.i
  %..i.i.i28.i = tail call i64 @llvm.umin.i64(i64 %i.is, i64 %.lcssa.i.i.i27.i)
  %i.jc = tail call i32 @memcmp(ptr nonnull %.pre.i.i.i24.i, ptr nonnull %.pre14.i.i.i25.i, i64 %..i.i.i28.i), !noalias !5132 ; 2 uses
  %i.jd = sext i32 %i.jc to i64
  %i.je = icmp eq i32 %i.jc, 0
  %spec.store.select.i.i.i29.i = select i1 %i.je, i64 %i.jb, i64 %i.jd
  %i.jf = icmp slt i64 %spec.store.select.i.i.i29.i, 0
  br i1 %i.jf, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0a92db54ff3bb355E.exit.i26.i", %.split3.i.i, %.split.i.i
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0a92db54ff3bb355E.exit.i26.i", %.split3.i.i, %.split.i.i
  %i.jg = phi i64 [ 1, %bb.aq ], [ 0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0a92db54ff3bb355E.exit.i26.i" ], [ 0, %.split.i.i ], [ 0, %.split3.i.i ]
  %.sroa.0.0.i.i2.i.i = phi i64 [ 0, %bb.aq ], [ 1, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0a92db54ff3bb355E.exit.i26.i" ], [ 1, %.split.i.i ], [ 1, %.split3.i.i ]
  %.sroa.05.0.i.i = phi ptr [ %i.id, %bb.aq ], [ %.sroa.0.05.i.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0a92db54ff3bb355E.exit.i26.i" ], [ %.sroa.0.05.i.i, %.split.i.i ], [ %.sroa.0.05.i.i, %.split3.i.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.ic, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.05.0.i.i, i64 136, i1 false), !alias.scope !5097, !noalias !5133
  %i.jh = getelementptr inbounds nuw [136 x i8], ptr %i.id, i64 %i.jg ; 3 uses
  %i.ji = getelementptr inbounds nuw [136 x i8], ptr %.sroa.0.05.i.i, i64 %.sroa.0.0.i.i2.i.i ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ic, i64 136 ; 2 uses
  %i.jk = icmp ne ptr %i.jh, %i.gn
  %i.jl = icmp ne ptr %i.ji, %i.fe
  %or.cond.i20.i = select i1 %i.jk, i1 %i.jl, i1 false
  br i1 %or.cond.i20.i, label %.lr.ph.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h5a51311461b1cb49E.exit.i"

"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h5a51311461b1cb49E.exit.i": ; preds = %bb.ar, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0a92db54ff3bb355E.exit.i.i"
  %.sroa.13.1.i = phi ptr [ %i.hx, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0a92db54ff3bb355E.exit.i.i" ], [ %i.jj, %bb.ar ]
  %.sroa.7.0.i = phi ptr [ %i.hz, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0a92db54ff3bb355E.exit.i.i" ], [ %i.gn, %bb.ar ]
  %.sroa.0.1.i = phi ptr [ %2, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0a92db54ff3bb355E.exit.i.i" ], [ %i.jh, %bb.ar ] ; 2 uses
  %i.jm = ptrtoint ptr %.sroa.7.0.i to i64
  %i.jn = ptrtoint ptr %.sroa.0.1.i to i64
  %i.jo = sub nuw i64 %i.jm, %i.jn
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.jo, i1 false), !alias.scope !5097, !noalias !5134
  br label %_ZN4core5slice4sort6stable5merge5merge17h6bd7b0186c0c4202E.exit

_ZN4core5slice4sort6stable5merge5merge17h6bd7b0186c0c4202E.exit: ; preds = %bb.af, %bb.ag, %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h5a51311461b1cb49E.exit.i"
  %i.jp = shl i64 %i.fo, 1
  %i.jq = or disjoint i64 %i.jp, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17hd74224262ce0f067E.exit

_ZN4core5slice4sort6stable5drift13logical_merge17hd74224262ce0f067E.exit: ; preds = %bb.ac, %_ZN4core5slice4sort6stable5merge5merge17h6bd7b0186c0c4202E.exit
  %.sroa.0.0.i = phi i64 [ %i.jq, %_ZN4core5slice4sort6stable5merge5merge17h6bd7b0186c0c4202E.exit ], [ %i.fw, %bb.ac ] ; 2 uses
  %i.jr = icmp ugt i64 %i.ff, 1
  br i1 %i.jr, label %bb.z, label %._crit_edge

bb.as:                                            ; preds = %._crit_edge
  %i.js = add i64 %.sroa.02.1.lcssa, 1
  %i.jt = lshr i64 %.sroa.023.0, 1
  %i.ju = add i64 %i.jt, %.sroa.09.0
  br label %bb.f

bb.at:                                            ; preds = %._crit_edge
  %6 = trunc i64 %.sroa.018.1.lcssa to i1
  br i1 %6, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.jv = or i64 %1, 1
  %i.jw = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.jv, i1 true)
  %i.jx = trunc nuw nsw i64 %i.jw to i32
  %i.jy = shl nuw nsw i32 %i.jx, 1
  %i.jz = xor i32 %i.jy, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h1c66bcc47c969732E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.jz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(136) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !5091
  br label %bb.av

bb.av:                                            ; preds = %bb.at, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.aw

bb.aw:                                            ; preds = %bb.a, %bb.av
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable9quicksort9quicksort17h04eba19435942347E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %4, ptr noalias noundef readonly align 8 captures(address) dereferenceable_or_null(48) %5, ptr noalias nofree noundef nonnull readnone align 1 captures(none) %6) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [48 x i8], align 8                ; 6 uses
  %i.c = icmp ult i64 %1, 33
  br i1 %i.c, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h476593a00dee33f2E.exit"
  %.sroa.0.0.ph106 = phi ptr [ %i.hn, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h476593a00dee33f2E.exit" ], [ %0, %bb.a ] ; 21 uses
  %.sroa.15.0.ph105 = phi i64 [ %i.gy, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h476593a00dee33f2E.exit" ], [ %1, %bb.a ] ; 2 uses
  %.sroa.023.0.ph104 = phi i32 [ %i.de, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h476593a00dee33f2E.exit" ], [ %4, %bb.a ] ; 2 uses
  %.sroa.026.0.ph103 = phi ptr [ null, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h476593a00dee33f2E.exit" ], [ %5, %bb.a ] ; 3 uses
  %i.d = getelementptr i8, ptr %.sroa.0.0.ph106, i64 8
  %i.e = getelementptr i8, ptr %.sroa.0.0.ph106, i64 16
  %i.f = ptrtoint ptr %.sroa.0.0.ph106 to i64
  %.not = icmp eq ptr %.sroa.026.0.ph103, null
  %i.g = getelementptr i8, ptr %.sroa.026.0.ph103, i64 8
  %i.h = getelementptr i8, ptr %.sroa.026.0.ph103, i64 16
  %i.i = icmp eq i32 %.sroa.023.0.ph104, 0
  br i1 %i.i, label %.lr.ph._crit_edge, label %.lr.ph250

bb.b:                                             ; preds = %bb.ak
  %i.j = icmp eq i32 %i.de, 0
  br i1 %i.j, label %.lr.ph._crit_edge, label %.lr.ph250

.outer._crit_edge:                                ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h476593a00dee33f2E.exit", %bb.ak, %bb.a
  %.sroa.0.0.ph.lcssa97 = phi ptr [ %.sroa.0.0.ph106, %bb.ak ], [ %0, %bb.a ], [ %i.hn, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h476593a00dee33f2E.exit" ] ; 7 uses
  %.sroa.15.0.lcssa = phi i64 [ %.sroa.11.1.lcssa.i, %bb.ak ], [ %1, %bb.a ], [ %i.gy, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h476593a00dee33f2E.exit" ] ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5139)
  %i.k = icmp samesign ult i64 %.sroa.15.0.lcssa, 2
  br i1 %i.k, label %_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17hc2ab61341424f072E.exit, label %bb.c

bb.c:                                             ; preds = %.outer._crit_edge
  %i.l = add nuw nsw i64 %.sroa.15.0.lcssa, 16
  %i.m = icmp ult i64 %3, %i.l
  br i1 %i.m, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = lshr i64 %.sroa.15.0.lcssa, 1            ; 6 uses
  %i.o = icmp samesign ugt i64 %.sroa.15.0.lcssa, 7
  %i.p = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.ph.lcssa97, i64 %i.n ; 3 uses
  %i.q = getelementptr [48 x i8], ptr %2, i64 %i.n ; 8 uses
  br i1 %i.o, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  call void @llvm.trap()
  unreachable

bb.f:                                             ; preds = %bb.d
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17hd1156519dcdd7d58E(ptr noundef nonnull align 8 %.sroa.0.0.ph.lcssa97, ptr noundef nonnull align 8 %2)
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17hd1156519dcdd7d58E(ptr noundef %i.p, ptr noundef %i.q)
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.0.ph.lcssa97, i64 48, i1 false), !alias.scope !5142
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.q, ptr noundef nonnull align 8 dereferenceable(48) %i.p, i64 48, i1 false), !alias.scope !5142
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.0.0.i = phi i64 [ 4, %bb.f ], [ 1, %bb.g ] ; 6 uses
  %i.r = sub nuw nsw i64 %.sroa.15.0.lcssa, %i.n  ; 2 uses
  %i.s = icmp samesign ult i64 %.sroa.0.0.i, %i.n
  br i1 %i.s, label %.lr.ph.preheader.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h495ed47b245a20abE.exit.i, %bb.h
  %i.t = icmp samesign ult i64 %.sroa.0.0.i, %i.r
  br i1 %i.t, label %.lr.ph.preheader.1.i, label %.loopexit.1.i

.lr.ph.preheader.1.i:                             ; preds = %.loopexit.i
  %.sroa.08.18.1.i = add nuw nsw i64 %.sroa.0.0.i, 1
  br label %.lr.ph.1.i

.lr.ph.1.i:                                       ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h495ed47b245a20abE.exit.1.i, %.lr.ph.preheader.1.i
  %.sroa.08.110.1.i = phi i64 [ %.sroa.08.1.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h495ed47b245a20abE.exit.1.i ], [ %.sroa.08.18.1.i, %.lr.ph.preheader.1.i ] ; 3 uses
  %.sroa.08.09.1.i = phi i64 [ %.sroa.08.110.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h495ed47b245a20abE.exit.1.i ], [ %.sroa.0.0.i, %.lr.ph.preheader.1.i ] ; 3 uses
  %i.u = getelementptr inbounds nuw [48 x i8], ptr %i.p, i64 %.sroa.08.09.1.i ; 2 uses
  %.idx276 = mul nuw nsw i64 %.sroa.08.09.1.i, 48
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx276 ; 10 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.v, ptr noundef nonnull align 8 dereferenceable(48) %i.u, i64 48, i1 false), !alias.scope !5142
  %i.w = getelementptr i8, ptr %i.v, i64 8
  %.val11.i.1.i = load ptr, ptr %i.w, align 8, !alias.scope !5144, !noalias !5147, !nonnull !11, !noundef !11 ; 3 uses
  %i.x = getelementptr i8, ptr %i.v, i64 16
  %.val12.i.1.i = load i64, ptr %i.x, align 8, !alias.scope !5144, !noalias !5147, !noundef !11 ; 5 uses
  %i.y = getelementptr i8, ptr %i.v, i64 -40
  %.val13.i.1.i = load ptr, ptr %i.y, align 8, !alias.scope !5149, !noalias !5150, !nonnull !11, !noundef !11
  %i.z = getelementptr i8, ptr %i.v, i64 -32
  %.val14.i.1.i = load i64, ptr %i.z, align 8, !alias.scope !5149, !noalias !5150, !noundef !11 ; 2 uses
  %..i.i.i.i.i29.1.i = call i64 @llvm.umin.i64(i64 %.val12.i.1.i, i64 %.val14.i.1.i)
  %i.aa = sub i64 %.val12.i.1.i, %.val14.i.1.i
  %i.ab = call i32 @memcmp(ptr nonnull readonly %.val11.i.1.i, ptr nonnull readonly %.val13.i.1.i, i64 %..i.i.i.i.i29.1.i), !noalias !5151 ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp eq i32 %i.ab, 0
  %spec.store.select.i.i.i.i.i30.1.i = select i1 %i.ad, i64 %i.aa, i64 %i.ac
  %i.ae = icmp slt i64 %spec.store.select.i.i.i.i.i30.1.i, 0
  br i1 %i.ae, label %bb.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h495ed47b245a20abE.exit.1.i

bb.i:                                             ; preds = %.lr.ph.1.i
  %.sroa.08.0.copyload.i.1.i = load i64, ptr %i.v, align 8, !alias.scope !5155, !noalias !5139
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %.sroa.0.0.i31.1.i265 = getelementptr inbounds i8, ptr %i.v, i64 -48 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.v, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.0.i31.1.i265, i64 48, i1 false), !alias.scope !5155, !noalias !5139
  %i.ag = icmp eq i64 %.sroa.08.09.1.i, 1
  br i1 %i.ag, label %._crit_edge270, label %.lr.ph269

bb.j:                                             ; preds = %.lr.ph269
  %.sroa.0.0.i31.1.i = getelementptr inbounds i8, ptr %.sroa.0.0.i31.1.i267, i64 -48 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.0.i31.1.i267, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.0.i31.1.i, i64 48, i1 false), !alias.scope !5155, !noalias !5139
  %i.ah = icmp eq ptr %.sroa.0.0.i31.1.i, %i.q
  br i1 %i.ah, label %._crit_edge270, label %.lr.ph269

.lr.ph269:                                        ; preds = %bb.i, %bb.j
  %.sroa.0.0.i31.1.i267 = phi ptr [ %.sroa.0.0.i31.1.i, %bb.j ], [ %.sroa.0.0.i31.1.i265, %bb.i ] ; 5 uses
  %.sroa.5.0.i.1.i266 = phi ptr [ %.sroa.0.0.i31.1.i267, %bb.j ], [ %i.v, %bb.i ] ; 3 uses
  %i.ai = getelementptr i8, ptr %.sroa.5.0.i.1.i266, i64 -88
  %.val9.i.1.i = load ptr, ptr %i.ai, align 8, !alias.scope !5149, !noalias !5150, !nonnull !11, !noundef !11
  %i.aj = getelementptr i8, ptr %.sroa.5.0.i.1.i266, i64 -80
  %.val10.i.1.i = load i64, ptr %i.aj, align 8, !alias.scope !5149, !noalias !5150, !noundef !11 ; 2 uses
  %..i.i.i.i15.i.1.i = call i64 @llvm.umin.i64(i64 %.val12.i.1.i, i64 %.val10.i.1.i)
  %i.ak = sub i64 %.val12.i.1.i, %.val10.i.1.i
  %i.al = call i32 @memcmp(ptr nonnull readonly %.val11.i.1.i, ptr nonnull readonly %.val9.i.1.i, i64 %..i.i.i.i15.i.1.i), !noalias !5156 ; 2 uses
  %i.am = sext i32 %i.al to i64
  %i.an = icmp eq i32 %i.al, 0
  %spec.store.select.i.i.i.i16.i.1.i = select i1 %i.an, i64 %i.ak, i64 %i.am
  %i.ao = icmp slt i64 %spec.store.select.i.i.i.i16.i.1.i, 0
  br i1 %i.ao, label %bb.j, label %._crit_edge270

._crit_edge270:                                   ; preds = %bb.j, %.lr.ph269, %bb.i
  %.sroa.5.0.i.1.i.lcssa = phi ptr [ %i.v, %bb.i ], [ %.sroa.0.0.i31.1.i267, %bb.j ], [ %.sroa.5.0.i.1.i266, %.lr.ph269 ] ; 3 uses
  %.sroa.0.0.i31.lcssa.1.i = phi ptr [ %i.q, %bb.i ], [ %i.q, %bb.j ], [ %.sroa.0.0.i31.1.i267, %.lr.ph269 ]
  store i64 %.sroa.08.0.copyload.i.1.i, ptr %.sroa.0.0.i31.lcssa.1.i, align 8, !alias.scope !5155, !noalias !5160
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.1.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.1.i.lcssa, i64 -40
  store ptr %.val11.i.1.i, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.1.i, align 8, !alias.scope !5155, !noalias !5160
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.1.i.lcssa, i64 -32
  store i64 %.val12.i.1.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1.i, align 8, !alias.scope !5155, !noalias !5160
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.1.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.1.i.lcssa, i64 -24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.1.i, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !alias.scope !5142
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h495ed47b245a20abE.exit.1.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h495ed47b245a20abE.exit.1.i: ; preds = %._crit_edge270, %.lr.ph.1.i
  %i.ap = icmp samesign ult i64 %.sroa.08.110.1.i, %i.r ; 2 uses
  %i.aq = zext i1 %i.ap to i64
  %.sroa.08.1.1.i = add nuw i64 %.sroa.08.110.1.i, %i.aq
  br i1 %i.ap, label %.lr.ph.1.i, label %.loopexit.1.i

.loopexit.1.i:                                    ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h495ed47b245a20abE.exit.1.i, %.loopexit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !5165)
  %i.ar = add nsw i64 %.sroa.15.0.lcssa, -1       ; 2 uses
  %i.as = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.ph.lcssa97, i64 %i.ar
  %i.at = getelementptr inbounds nuw [48 x i8], ptr %2, i64 %i.ar
  %i.au = getelementptr i8, ptr %i.q, i64 -48
  br label %.lr.ph.i.i

.lr.ph.preheader.i:                               ; preds = %bb.h
  %.sroa.08.18.i = add nuw nsw i64 %.sroa.0.0.i, 1
  br label %.lr.ph.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %i.av = getelementptr i8, ptr %i.bv, i64 48     ; 2 uses
  %i.aw = getelementptr i8, ptr %i.bu, i64 48
  %7 = trunc i64 %.sroa.15.0.lcssa to i1
  br i1 %7, label %bb.k, label %bb.l

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.loopexit.1.i
  %.sroa.0.010.i.i = phi ptr [ %i.bj, %.lr.ph.i.i ], [ %2, %.loopexit.1.i ] ; 4 uses
  %.sroa.06.09.i.i = phi ptr [ %i.bh, %.lr.ph.i.i ], [ %i.q, %.loopexit.1.i ] ; 4 uses
  %.sroa.010.08.i.i = phi ptr [ %i.bk, %.lr.ph.i.i ], [ %.sroa.0.0.ph.lcssa97, %.loopexit.1.i ] ; 2 uses
  %.sroa.013.07.i.i = phi ptr [ %i.bv, %.lr.ph.i.i ], [ %i.au, %.loopexit.1.i ] ; 4 uses
  %.sroa.015.06.i.i = phi ptr [ %i.bu, %.lr.ph.i.i ], [ %i.at, %.loopexit.1.i ] ; 4 uses
  %.sroa.017.05.i.i = phi ptr [ %i.bw, %.lr.ph.i.i ], [ %i.as, %.loopexit.1.i ] ; 2 uses
  %.sroa.018.04.i.i = phi i64 [ %i.ax, %.lr.ph.i.i ], [ 0, %.loopexit.1.i ]
  %i.ax = add nuw nsw i64 %.sroa.018.04.i.i, 1    ; 2 uses
  %i.ay = getelementptr i8, ptr %.sroa.06.09.i.i, i64 8
  %.sroa.06.0.val.i.i = load ptr, ptr %i.ay, align 8, !alias.scope !5168, !noalias !5171, !nonnull !11, !noundef !11
  %i.az = getelementptr i8, ptr %.sroa.06.09.i.i, i64 16
  %.sroa.06.0.val24.i.i = load i64, ptr %i.az, align 8, !alias.scope !5168, !noalias !5171, !noundef !11 ; 2 uses
  %i.ba = getelementptr i8, ptr %.sroa.0.010.i.i, i64 8
  %.sroa.0.0.val.i.i = load ptr, ptr %i.ba, align 8, !alias.scope !5173, !noalias !5174, !nonnull !11, !noundef !11
  %i.bb = getelementptr i8, ptr %.sroa.0.010.i.i, i64 16
  %.sroa.0.0.val25.i.i = load i64, ptr %i.bb, align 8, !alias.scope !5173, !noalias !5174, !noundef !11 ; 2 uses
  %..i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.06.0.val24.i.i, i64 %.sroa.0.0.val25.i.i)
  %i.bc = sub i64 %.sroa.06.0.val24.i.i, %.sroa.0.0.val25.i.i
  %i.bd = call i32 @memcmp(ptr nonnull readonly %.sroa.06.0.val.i.i, ptr nonnull readonly %.sroa.0.0.val.i.i, i64 %..i.i.i.i.i.i), !noalias !5175 ; 2 uses
  %i.be = sext i32 %i.bd to i64
  %i.bf = icmp eq i32 %i.bd, 0
  %spec.store.select.i.i.i.i.i.i = select i1 %i.bf, i64 %i.bc, i64 %i.be ; 2 uses
  %i.bg = icmp sgt i64 %spec.store.select.i.i.i.i.i.i, -1 ; 2 uses
  %..i23.i.i = select i1 %i.bg, ptr %.sroa.0.010.i.i, ptr %.sroa.06.09.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.010.08.i.i, ptr noundef nonnull align 8 dereferenceable(48) %..i23.i.i, i64 48, i1 false), !alias.scope !5142, !noalias !5179
  %spec.store.select.i.i.i.i.lobit.i.i = lshr i64 %spec.store.select.i.i.i.i.i.i, 63
  %i.bh = getelementptr inbounds nuw [48 x i8], ptr %.sroa.06.09.i.i, i64 %spec.store.select.i.i.i.i.lobit.i.i ; 4 uses
  %i.bi = zext i1 %i.bg to i64
  %i.bj = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.010.i.i, i64 %i.bi ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.010.08.i.i, i64 48 ; 2 uses
  %i.bl = getelementptr i8, ptr %.sroa.015.06.i.i, i64 8
  %.sroa.015.0.val.i.i = load ptr, ptr %i.bl, align 8, !alias.scope !5168, !noalias !5171, !nonnull !11, !noundef !11
  %i.bm = getelementptr i8, ptr %.sroa.015.06.i.i, i64 16
  %.sroa.015.0.val26.i.i = load i64, ptr %i.bm, align 8, !alias.scope !5168, !noalias !5171, !noundef !11 ; 2 uses
  %i.bn = getelementptr i8, ptr %.sroa.013.07.i.i, i64 8
  %.sroa.013.0.val.i.i = load ptr, ptr %i.bn, align 8, !alias.scope !5173, !noalias !5174, !nonnull !11, !noundef !11
  %i.bo = getelementptr i8, ptr %.sroa.013.07.i.i, i64 16
  %.sroa.013.0.val27.i.i = load i64, ptr %i.bo, align 8, !alias.scope !5173, !noalias !5174, !noundef !11 ; 2 uses
  %..i.i.i.i28.i.i = call i64 @llvm.umin.i64(i64 %.sroa.015.0.val26.i.i, i64 %.sroa.013.0.val27.i.i)
  %i.bp = sub i64 %.sroa.015.0.val26.i.i, %.sroa.013.0.val27.i.i
  %i.bq = call i32 @memcmp(ptr nonnull readonly %.sroa.015.0.val.i.i, ptr nonnull readonly %.sroa.013.0.val.i.i, i64 %..i.i.i.i28.i.i), !noalias !5183 ; 2 uses
  %i.br = sext i32 %i.bq to i64
  %i.bs = icmp eq i32 %i.bq, 0
  %spec.store.select.i.i.i.i29.i.i = select i1 %i.bs, i64 %i.bp, i64 %i.br ; 2 uses
  %i.bt = icmp sgt i64 %spec.store.select.i.i.i.i29.i.i, -1 ; 2 uses
  %..i.i.i = select i1 %i.bt, ptr %.sroa.015.06.i.i, ptr %.sroa.013.07.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.017.05.i.i, ptr noundef nonnull align 8 dereferenceable(48) %..i.i.i, i64 48, i1 false), !alias.scope !5142, !noalias !5187
  %.neg.i.i.i = sext i1 %i.bt to i64
  %i.bu = getelementptr [48 x i8], ptr %.sroa.015.06.i.i, i64 %.neg.i.i.i ; 2 uses
  %spec.store.select.i.i.i.i29.lobit.i.i = ashr i64 %spec.store.select.i.i.i.i29.i.i, 63
  %i.bv = getelementptr [48 x i8], ptr %.sroa.013.07.i.i, i64 %spec.store.select.i.i.i.i29.lobit.i.i ; 2 uses
  %i.bw = getelementptr inbounds i8, ptr %.sroa.017.05.i.i, i64 -48
  %exitcond.not.i.i = icmp eq i64 %i.ax, %i.n
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.bx = icmp ult ptr %i.bj, %i.av               ; 3 uses
  %.sroa.0.0..sroa.06.0.i.i = select i1 %i.bx, ptr %i.bj, ptr %i.bh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bk, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.0..sroa.06.0.i.i, i64 48, i1 false), !alias.scope !5142
  %i.by = zext i1 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [48 x i8], ptr %i.bj, i64 %i.by
  %i.ca = xor i1 %i.bx, true
  %i.cb = zext i1 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [48 x i8], ptr %i.bh, i64 %i.cb
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i
  %.sroa.06.1.i.i = phi ptr [ %i.bh, %._crit_edge.i.i ], [ %i.cc, %bb.k ]
  %.sroa.0.1.i.i = phi ptr [ %i.bj, %._crit_edge.i.i ], [ %i.bz, %bb.k ]
  %i.cd = icmp ne ptr %.sroa.0.1.i.i, %i.av
  %i.ce = icmp ne ptr %.sroa.06.1.i.i, %i.aw
  %or.cond.i.i = select i1 %i.cd, i1 true, i1 %i.ce, !prof !5191
  br i1 %or.cond.i.i, label %bb.m, label %_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17hc2ab61341424f072E.exit, !prof !5191

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17h481967bb377c264aE() #45
          to label %.noexc.i unwind label %bb.n, !noalias !5139

.noexc.i:                                         ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.m
  %i.cf = landingpad { ptr, i32 }
          cleanup
  %i.cg = mul nuw nsw i64 %.sroa.15.0.lcssa, 48
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph.lcssa97, ptr nonnull align 8 %2, i64 %i.cg, i1 false), !alias.scope !5142, !noalias !5192
  resume { ptr, i32 } %i.cf

.lr.ph.i:                                         ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h495ed47b245a20abE.exit.i, %.lr.ph.preheader.i
  %.sroa.08.110.i = phi i64 [ %.sroa.08.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h495ed47b245a20abE.exit.i ], [ %.sroa.08.18.i, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.08.09.i = phi i64 [ %.sroa.08.110.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h495ed47b245a20abE.exit.i ], [ %.sroa.0.0.i, %.lr.ph.preheader.i ] ; 3 uses
  %i.ch = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.ph.lcssa97, i64 %.sroa.08.09.i ; 2 uses
  %.idx = mul nuw nsw i64 %.sroa.08.09.i, 48
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 10 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ci, ptr noundef nonnull align 8 dereferenceable(48) %i.ch, i64 48, i1 false), !alias.scope !5142
  %i.cj = getelementptr i8, ptr %i.ci, i64 8
  %.val11.i.i = load ptr, ptr %i.cj, align 8, !alias.scope !5144, !noalias !5147, !nonnull !11, !noundef !11 ; 3 uses
  %i.ck = getelementptr i8, ptr %i.ci, i64 16
  %.val12.i.i = load i64, ptr %i.ck, align 8, !alias.scope !5144, !noalias !5147, !noundef !11 ; 5 uses
  %i.cl = getelementptr i8, ptr %i.ci, i64 -40
  %.val13.i.i = load ptr, ptr %i.cl, align 8, !alias.scope !5149, !noalias !5150, !nonnull !11, !noundef !11
  %i.cm = getelementptr i8, ptr %i.ci, i64 -32
  %.val14.i.i = load i64, ptr %i.cm, align 8, !alias.scope !5149, !noalias !5150, !noundef !11 ; 2 uses
  %..i.i.i.i.i29.i = call i64 @llvm.umin.i64(i64 %.val12.i.i, i64 %.val14.i.i)
  %i.cn = sub i64 %.val12.i.i, %.val14.i.i
  %i.co = call i32 @memcmp(ptr nonnull readonly %.val11.i.i, ptr nonnull readonly %.val13.i.i, i64 %..i.i.i.i.i29.i), !noalias !5151 ; 2 uses
  %i.cp = sext i32 %i.co to i64
  %i.cq = icmp eq i32 %i.co, 0
  %spec.store.select.i.i.i.i.i30.i = select i1 %i.cq, i64 %i.cn, i64 %i.cp
  %i.cr = icmp slt i64 %spec.store.select.i.i.i.i.i30.i, 0
  br i1 %i.cr, label %bb.o, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h495ed47b245a20abE.exit.i

bb.o:                                             ; preds = %.lr.ph.i
  %.sroa.08.0.copyload.i.i = load i64, ptr %i.ci, align 8, !alias.scope !5155, !noalias !5139
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %.sroa.0.0.i31.i254 = getelementptr inbounds i8, ptr %i.ci, i64 -48 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ci, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.0.i31.i254, i64 48, i1 false), !alias.scope !5155, !noalias !5139
  %i.ct = icmp eq i64 %.sroa.08.09.i, 1
  br i1 %i.ct, label %._crit_edge259, label %.lr.ph258

bb.p:                                             ; preds = %.lr.ph258
  %.sroa.0.0.i31.i = getelementptr inbounds i8, ptr %.sroa.0.0.i31.i256, i64 -48 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.0.i31.i256, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.0.i31.i, i64 48, i1 false), !alias.scope !5155, !noalias !5139
  %i.cu = icmp eq ptr %.sroa.0.0.i31.i, %2
  br i1 %i.cu, label %._crit_edge259, label %.lr.ph258

.lr.ph258:                                        ; preds = %bb.o, %bb.p
  %.sroa.0.0.i31.i256 = phi ptr [ %.sroa.0.0.i31.i, %bb.p ], [ %.sroa.0.0.i31.i254, %bb.o ] ; 5 uses
  %.sroa.5.0.i.i255 = phi ptr [ %.sroa.0.0.i31.i256, %bb.p ], [ %i.ci, %bb.o ] ; 3 uses
  %i.cv = getelementptr i8, ptr %.sroa.5.0.i.i255, i64 -88
  %.val9.i.i = load ptr, ptr %i.cv, align 8, !alias.scope !5149, !noalias !5150, !nonnull !11, !noundef !11
  %i.cw = getelementptr i8, ptr %.sroa.5.0.i.i255, i64 -80
  %.val10.i.i = load i64, ptr %i.cw, align 8, !alias.scope !5149, !noalias !5150, !noundef !11 ; 2 uses
  %..i.i.i.i15.i.i = call i64 @llvm.umin.i64(i64 %.val12.i.i, i64 %.val10.i.i)
  %i.cx = sub i64 %.val12.i.i, %.val10.i.i
  %i.cy = call i32 @memcmp(ptr nonnull readonly %.val11.i.i, ptr nonnull readonly %.val9.i.i, i64 %..i.i.i.i15.i.i), !noalias !5156 ; 2 uses
  %i.cz = sext i32 %i.cy to i64
  %i.da = icmp eq i32 %i.cy, 0
  %spec.store.select.i.i.i.i16.i.i = select i1 %i.da, i64 %i.cx, i64 %i.cz
  %i.db = icmp slt i64 %spec.store.select.i.i.i.i16.i.i, 0
  br i1 %i.db, label %bb.p, label %._crit_edge259

._crit_edge259:                                   ; preds = %bb.p, %.lr.ph258, %bb.o
  %.sroa.5.0.i.i.lcssa = phi ptr [ %i.ci, %bb.o ], [ %.sroa.0.0.i31.i256, %bb.p ], [ %.sroa.5.0.i.i255, %.lr.ph258 ] ; 3 uses
  %.sroa.0.0.i31.lcssa.i = phi ptr [ %2, %bb.o ], [ %2, %bb.p ], [ %.sroa.0.0.i31.i256, %.lr.ph258 ]
  store i64 %.sroa.08.0.copyload.i.i, ptr %.sroa.0.0.i31.lcssa.i, align 8, !alias.scope !5155, !noalias !5160
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.i.lcssa, i64 -40
  store ptr %.val11.i.i, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.i, align 8, !alias.scope !5155, !noalias !5160
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.i.lcssa, i64 -32
  store i64 %.val12.i.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.i, align 8, !alias.scope !5155, !noalias !5160
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.i.lcssa, i64 -24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.cs, i64 24, i1 false), !alias.scope !5142
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h495ed47b245a20abE.exit.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h495ed47b245a20abE.exit.i: ; preds = %._crit_edge259, %.lr.ph.i
  %i.dc = icmp samesign ult i64 %.sroa.08.110.i, %i.n ; 2 uses
  %i.dd = zext i1 %i.dc to i64
  %.sroa.08.1.i = add nuw i64 %.sroa.08.110.i, %i.dd
  br i1 %i.dc, label %.lr.ph.i, label %.loopexit.i

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.15.099.lcssa = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.15.0.ph105, %.lr.ph ]
  call fastcc void @_ZN4core5slice4sort6stable5drift4sort17h74797ff540af3e53E(ptr noalias noundef nonnull align 8 %.sroa.0.0.ph106, i64 noundef %.sroa.15.099.lcssa, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias noundef nonnull align 1 %6)
  br label %_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17hc2ab61341424f072E.exit

.lr.ph250:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.023.098249 = phi i32 [ %i.de, %bb.b ], [ %.sroa.023.0.ph104, %.lr.ph ]
  %.sroa.15.099248 = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.15.0.ph105, %.lr.ph ] ; 21 uses
  %i.de = add i32 %.sroa.023.098249, -1           ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5197)
  %i.df = lshr i64 %.sroa.15.099248, 3            ; 3 uses
  %.idx.i = mul nuw nsw i64 %i.df, 192
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph106, i64 %.idx.i ; 4 uses
  %.idx2.i = mul nuw i64 %i.df, 336
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph106, i64 %.idx2.i ; 4 uses
  %i.di = icmp ult i64 %.sroa.15.099248, 64
  br i1 %i.di, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph250
  %i.dj = call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h7ab9fbe2f26d17d6E(ptr noundef nonnull readonly align 8 %.sroa.0.0.ph106, ptr noundef readonly %i.dg, ptr noundef readonly %i.dh, i64 noundef %i.df)
  br label %bb.t

bb.r:                                             ; preds = %.lr.ph250
  %.val10.i = load ptr, ptr %i.d, align 8, !alias.scope !5200, !noalias !5203, !nonnull !11, !noundef !11 ; 2 uses
  %.val11.i = load i64, ptr %i.e, align 8, !alias.scope !5200, !noalias !5203, !noundef !11 ; 4 uses
  %i.dk = getelementptr i8, ptr %i.dg, i64 8
  %.val12.i = load ptr, ptr %i.dk, align 8, !alias.scope !5205, !noalias !5206, !nonnull !11, !noundef !11 ; 2 uses
  %i.dl = getelementptr i8, ptr %i.dg, i64 16
  %.val13.i = load i64, ptr %i.dl, align 8, !alias.scope !5205, !noalias !5206, !noundef !11 ; 4 uses
  %..i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.val11.i, i64 %.val13.i)
  %i.dm = sub i64 %.val11.i, %.val13.i
  %i.dn = call i32 @memcmp(ptr nonnull readonly %.val10.i, ptr nonnull readonly %.val12.i, i64 %..i.i.i.i.i), !noalias !5207 ; 2 uses
  %i.do = sext i32 %i.dn to i64
  %i.dp = icmp eq i32 %i.dn, 0
  %spec.store.select.i.i.i.i.i = select i1 %i.dp, i64 %i.dm, i64 %i.do ; 2 uses
  %i.dq = getelementptr i8, ptr %i.dh, i64 8
  %.val8.i = load ptr, ptr %i.dq, align 8, !alias.scope !5205, !noalias !5206, !nonnull !11, !noundef !11 ; 2 uses
  %i.dr = getelementptr i8, ptr %i.dh, i64 16
  %.val9.i = load i64, ptr %i.dr, align 8, !alias.scope !5205, !noalias !5206, !noundef !11 ; 4 uses
  %..i.i.i.i14.i = call i64 @llvm.umin.i64(i64 %.val11.i, i64 %.val9.i)
  %i.ds = sub i64 %.val11.i, %.val9.i
  %i.dt = call i32 @memcmp(ptr nonnull readonly %.val10.i, ptr nonnull readonly %.val8.i, i64 %..i.i.i.i14.i), !noalias !5211 ; 2 uses
  %i.du = sext i32 %i.dt to i64
  %i.dv = icmp eq i32 %i.dt, 0
  %spec.store.select.i.i.i.i15.i = select i1 %i.dv, i64 %i.ds, i64 %i.du
  %i.dw = xor i64 %spec.store.select.i.i.i.i15.i, %spec.store.select.i.i.i.i.i
  %i.dx = icmp slt i64 %i.dw, 0
  br i1 %i.dx, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %..i.i.i.i16.i = call i64 @llvm.umin.i64(i64 %.val13.i, i64 %.val9.i)
  %i.dy = sub i64 %.val13.i, %.val9.i
  %i.dz = call i32 @memcmp(ptr nonnull readonly %.val12.i, ptr nonnull readonly %.val8.i, i64 %..i.i.i.i16.i), !noalias !5215 ; 2 uses
  %i.ea = sext i32 %i.dz to i64
  %i.eb = icmp eq i32 %i.dz, 0
  %spec.store.select.i.i.i.i17.i = select i1 %i.eb, i64 %i.dy, i64 %i.ea
  %i.ec = xor i64 %spec.store.select.i.i.i.i17.i, %spec.store.select.i.i.i.i.i
  %i.ed = icmp slt i64 %i.ec, 0
  %..i.i = select i1 %i.ed, ptr %i.dh, ptr %i.dg
  br label %bb.t

_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17hc2ab61341424f072E.exit: ; preds = %.outer._crit_edge.thread, %bb.l, %.outer._crit_edge, %.lr.ph._crit_edge
  ret void

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %.sroa.0.0.i.sink.i = phi ptr [ %i.dj, %bb.q ], [ %.sroa.0.0.ph106, %bb.r ], [ %..i.i, %bb.s ]
  %i.ee = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.ef = sub nuw i64 %i.ee, %i.f                 ; 2 uses
  %.sroa.0.0.i38 = udiv exact i64 %i.ef, 48       ; 3 uses
  %i.eg = icmp ult i64 %.sroa.0.0.i38, %.sroa.15.099248
  call void @llvm.assume(i1 %i.eg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph106, i64 %i.ef ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.eh, i64 48, i1 false)
  br i1 %.not, label %.critedge, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.sroa.026.0.val = load ptr, ptr %i.g, align 8, !alias.scope !4712, !noalias !4715, !nonnull !11, !noundef !11
  %.sroa.026.0.val36 = load i64, ptr %i.h, align 8, !alias.scope !4712, !noalias !4715, !noundef !11 ; 2 uses
  %i.ei = getelementptr i8, ptr %i.eh, i64 8
  %.val = load ptr, ptr %i.ei, align 8, !alias.scope !4715, !noalias !4712, !nonnull !11, !noundef !11
  %i.ej = getelementptr i8, ptr %i.eh, i64 16
  %.val37 = load i64, ptr %i.ej, align 8, !alias.scope !4715, !noalias !4712, !noundef !11 ; 2 uses
  %..i.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.026.0.val36, i64 %.val37)
  %i.ek = sub i64 %.sroa.026.0.val36, %.val37
  %i.el = call i32 @memcmp(ptr nonnull readonly %.sroa.026.0.val, ptr nonnull readonly %.val, i64 %..i.i.i.i), !noalias !5219 ; 2 uses
  %i.em = sext i32 %i.el to i64
  %i.en = icmp eq i32 %i.el, 0
  %spec.store.select.i.i.i.i = select i1 %i.en, i64 %i.ek, i64 %i.em
  %i.eo = icmp sgt i64 %spec.store.select.i.i.i.i, -1
  br i1 %i.eo, label %.critedge35, label %.critedge

.critedge:                                        ; preds = %bb.t, %bb.u
  call void @llvm.experimental.noalias.scope.decl(metadata !5223)
  call void @llvm.experimental.noalias.scope.decl(metadata !5226)
  %.not68 = icmp ult i64 %3, %.sroa.15.099248
  br i1 %.not68, label %bb.w, label %bb.v, !prof !5191

bb.v:                                             ; preds = %.critedge
  %i.ep = getelementptr [48 x i8], ptr %2, i64 %.sroa.15.099248 ; 4 uses
  %i.eq = getelementptr i8, ptr %i.eh, i64 8
  %i.er = getelementptr i8, ptr %i.eh, i64 16
  br label %bb.x

bb.w:                                             ; preds = %.critedge
  call void @llvm.trap()
  unreachable

bb.x:                                             ; preds = %bb.y, %bb.v
  %.sroa.19.0.i = phi ptr [ %i.ep, %bb.v ], [ %i.fh, %bb.y ] ; 2 uses
  %.sroa.11.0.i = phi i64 [ 0, %bb.v ], [ %.sroa.11.1.lcssa.i, %bb.y ] ; 2 uses
  %.sroa.5.0.i = phi ptr [ %.sroa.0.0.ph106, %bb.v ], [ %i.fj, %bb.y ] ; 3 uses
  %.sroa.02.0.i = phi i64 [ %.sroa.0.0.i38, %bb.v ], [ %.sroa.15.099248, %bb.y ] ; 2 uses
  %i.es = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.ph106, i64 %.sroa.02.0.i ; 2 uses
  %i.et = icmp ult ptr %.sroa.5.0.i, %i.es
  br i1 %i.et, label %.lr.ph.i39, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i39, %bb.x
  %.sroa.19.1.lcssa.i = phi ptr [ %.sroa.19.0.i, %bb.x ], [ %i.fc, %.lr.ph.i39 ]
  %.sroa.11.1.lcssa.i = phi i64 [ %.sroa.11.0.i, %bb.x ], [ %i.fe, %.lr.ph.i39 ] ; 14 uses
  %.sroa.5.1.lcssa.i = phi ptr [ %.sroa.5.0.i, %bb.x ], [ %i.ff, %.lr.ph.i39 ] ; 2 uses
  %i.eu = icmp eq i64 %.sroa.02.0.i, %.sroa.15.099248
  br i1 %i.eu, label %bb.z, label %bb.y

.lr.ph.i39:                                       ; preds = %bb.x, %.lr.ph.i39
  %.sroa.5.111.i = phi ptr [ %i.ff, %.lr.ph.i39 ], [ %.sroa.5.0.i, %bb.x ] ; 4 uses
  %.sroa.11.110.i = phi i64 [ %i.fe, %.lr.ph.i39 ], [ %.sroa.11.0.i, %bb.x ] ; 2 uses
  %.sroa.19.19.i = phi ptr [ %i.fc, %.lr.ph.i39 ], [ %.sroa.19.0.i, %bb.x ]
  %i.ev = getelementptr i8, ptr %.sroa.5.111.i, i64 8
  %.val.i = load ptr, ptr %i.ev, align 8, !alias.scope !5228, !noalias !5231, !nonnull !11, !noundef !11
  %i.ew = getelementptr i8, ptr %.sroa.5.111.i, i64 16
  %.val24.i = load i64, ptr %i.ew, align 8, !alias.scope !5228, !noalias !5231, !noundef !11 ; 2 uses
  %.val25.i = load ptr, ptr %i.eq, align 8, !alias.scope !5233, !noalias !5234, !nonnull !11, !noundef !11
  %.val26.i = load i64, ptr %i.er, align 8, !alias.scope !5233, !noalias !5234, !noundef !11 ; 2 uses
  %..i.i.i.i.i40 = call i64 @llvm.umin.i64(i64 %.val24.i, i64 %.val26.i)
  %i.ex = sub i64 %.val24.i, %.val26.i
  %i.ey = call i32 @memcmp(ptr nonnull readonly %.val.i, ptr nonnull readonly %.val25.i, i64 %..i.i.i.i.i40), !noalias !5235 ; 2 uses
  %i.ez = sext i32 %i.ey to i64
  %i.fa = icmp eq i32 %i.ey, 0
  %spec.store.select.i.i.i.i.i41 = select i1 %i.fa, i64 %i.ex, i64 %i.ez ; 2 uses
  %i.fb = icmp slt i64 %spec.store.select.i.i.i.i.i41, 0
  %i.fc = getelementptr inbounds i8, ptr %.sroa.19.19.i, i64 -48 ; 3 uses
  %.sroa.01.0.i.i = select i1 %i.fb, ptr %2, ptr %i.fc
  %i.fd = getelementptr inbounds nuw [48 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.11.110.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.fd, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.111.i, i64 48, i1 false), !alias.scope !5239, !noalias !5240
  %spec.store.select.i.i.i.i.lobit.i = lshr i64 %spec.store.select.i.i.i.i.i41, 63
  %i.fe = add i64 %spec.store.select.i.i.i.i.lobit.i, %.sroa.11.110.i ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i, i64 48 ; 3 uses
  %i.fg = icmp ult ptr %i.ff, %i.es
  br i1 %i.fg, label %.lr.ph.i39, label %._crit_edge.i

bb.y:                                             ; preds = %._crit_edge.i
  %i.fh = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i, i64 -48 ; 2 uses
  %i.fi = getelementptr inbounds nuw [48 x i8], ptr %i.fh, i64 %.sroa.11.1.lcssa.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.fi, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.1.lcssa.i, i64 48, i1 false), !alias.scope !5239, !noalias !5243
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i, i64 48
  br label %bb.x

bb.z:                                             ; preds = %._crit_edge.i
  %i.fk = mul i64 %.sroa.11.1.lcssa.i, 48
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph106, ptr nonnull align 8 %2, i64 %i.fk, i1 false), !alias.scope !5239
  %i.fl = sub i64 %.sroa.15.099248, %.sroa.11.1.lcssa.i ; 4 uses
  %.not18.i = icmp eq i64 %.sroa.15.099248, %.sroa.11.1.lcssa.i
  br i1 %.not18.i, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h838a58db020e8be1E.exit, label %.lr.ph16.i

.lr.ph16.i:                                       ; preds = %bb.z
  %i.fm = getelementptr [48 x i8], ptr %.sroa.0.0.ph106, i64 %.sroa.11.1.lcssa.i ; 3 uses
  %.neg = add i64 %.sroa.11.1.lcssa.i, 1
  %i.fn = icmp eq i64 %.sroa.15.099248, %.neg
  br i1 %i.fn, label %.epil.preheader, label %.lr.ph16.i.new

.lr.ph16.i.new:                                   ; preds = %.lr.ph16.i
  %unroll_iter = and i64 %i.fl, -2
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.lr.ph16.i.new
  %.sroa.04.014.i = phi i64 [ 0, %.lr.ph16.i.new ], [ %i.fr, %bb.aa ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph16.i.new ], [ %niter.next.1, %bb.aa ]
  %i.fo = xor i64 %.sroa.04.014.i, -1
  %i.fp = getelementptr [48 x i8], ptr %i.ep, i64 %i.fo
  %i.fq = getelementptr [48 x i8], ptr %i.fm, i64 %.sroa.04.014.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.fq, ptr noundef nonnull align 8 dereferenceable(48) %i.fp, i64 48, i1 false), !alias.scope !5239
  %i.fr = add nuw i64 %.sroa.04.014.i, 2          ; 2 uses
  %i.fs = xor i64 %.sroa.04.014.i, -2
  %i.ft = getelementptr [48 x i8], ptr %i.ep, i64 %i.fs
  %i.fu = getelementptr [48 x i8], ptr %i.fm, i64 %.sroa.04.014.i
  %i.fv = getelementptr i8, ptr %i.fu, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.fv, ptr noundef nonnull align 8 dereferenceable(48) %i.ft, i64 48, i1 false), !alias.scope !5239
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h838a58db020e8be1E.exit.loopexit.unr-lcssa, label %bb.aa

_ZN4core5slice4sort6stable9quicksort16stable_partition17h838a58db020e8be1E.exit.loopexit.unr-lcssa: ; preds = %bb.aa
  %lcmp.mod.not = trunc i64 %i.fl to i1
  br i1 %lcmp.mod.not, label %.epil.preheader, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h838a58db020e8be1E.exit

.epil.preheader:                                  ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h838a58db020e8be1E.exit.loopexit.unr-lcssa, %.lr.ph16.i
  %.sroa.04.014.i.epil.init = phi i64 [ 0, %.lr.ph16.i ], [ %i.fr, %_ZN4core5slice4sort6stable9quicksort16stable_partition17h838a58db020e8be1E.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod336 = trunc i64 %i.fl to i1
  call void @llvm.assume(i1 %lcmp.mod336)
  %i.fw = xor i64 %.sroa.04.014.i.epil.init, -1
  %i.fx = getelementptr [48 x i8], ptr %i.ep, i64 %i.fw
  %i.fy = getelementptr [48 x i8], ptr %i.fm, i64 %.sroa.04.014.i.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.fy, ptr noundef nonnull align 8 dereferenceable(48) %i.fx, i64 48, i1 false), !alias.scope !5239
  br label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h838a58db020e8be1E.exit

_ZN4core5slice4sort6stable9quicksort16stable_partition17h838a58db020e8be1E.exit: ; preds = %.epil.preheader, %_ZN4core5slice4sort6stable9quicksort16stable_partition17h838a58db020e8be1E.exit.loopexit.unr-lcssa, %bb.z
  %i.fz = icmp eq i64 %.sroa.11.1.lcssa.i, 0
  br i1 %i.fz, label %.critedge35, label %bb.ab

bb.ab:                                            ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h838a58db020e8be1E.exit
  %.not33 = icmp ugt i64 %.sroa.11.1.lcssa.i, %.sroa.15.099248
  br i1 %.not33, label %bb.aj, label %bb.ak, !prof !151

.critedge35:                                      ; preds = %bb.u, %_ZN4core5slice4sort6stable9quicksort16stable_partition17h838a58db020e8be1E.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !5246)
  call void @llvm.experimental.noalias.scope.decl(metadata !5249)
  %.not69 = icmp ult i64 %3, %.sroa.15.099248
  br i1 %.not69, label %bb.ad, label %bb.ac, !prof !5191

bb.ac:                                            ; preds = %.critedge35
  %i.ga = getelementptr [48 x i8], ptr %2, i64 %.sroa.15.099248 ; 4 uses
  %i.gb = getelementptr i8, ptr %i.eh, i64 8
  %i.gc = getelementptr i8, ptr %i.eh, i64 16
  br label %bb.ae

bb.ad:                                            ; preds = %.critedge35
  call void @llvm.trap()
  unreachable

bb.ae:                                            ; preds = %bb.af, %bb.ac
  %.sroa.19.0.i44 = phi ptr [ %i.ga, %bb.ac ], [ %i.gt, %bb.af ] ; 2 uses
  %.sroa.11.0.i45 = phi i64 [ 0, %bb.ac ], [ %i.gv, %bb.af ] ; 2 uses
  %.sroa.5.0.i46 = phi ptr [ %.sroa.0.0.ph106, %bb.ac ], [ %i.gw, %bb.af ] ; 3 uses
  %.sroa.02.0.i47 = phi i64 [ %.sroa.0.0.i38, %bb.ac ], [ %.sroa.15.099248, %bb.af ] ; 2 uses
  %i.gd = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.ph106, i64 %.sroa.02.0.i47 ; 2 uses
  %i.ge = icmp ult ptr %.sroa.5.0.i46, %i.gd
  br i1 %i.ge, label %.lr.ph.i56, label %._crit_edge.i48

._crit_edge.i48:                                  ; preds = %.lr.ph.i56, %bb.ae
  %.sroa.19.1.lcssa.i49 = phi ptr [ %.sroa.19.0.i44, %bb.ae ], [ %i.gn, %.lr.ph.i56 ]
  %.sroa.11.1.lcssa.i50 = phi i64 [ %.sroa.11.0.i45, %bb.ae ], [ %i.gq, %.lr.ph.i56 ] ; 10 uses
  %.sroa.5.1.lcssa.i51 = phi ptr [ %.sroa.5.0.i46, %bb.ae ], [ %i.gr, %.lr.ph.i56 ] ; 2 uses
  %i.gf = icmp eq i64 %.sroa.02.0.i47, %.sroa.15.099248
  br i1 %i.gf, label %bb.ag, label %bb.af

.lr.ph.i56:                                       ; preds = %bb.ae, %.lr.ph.i56
  %.sroa.5.111.i57 = phi ptr [ %i.gr, %.lr.ph.i56 ], [ %.sroa.5.0.i46, %bb.ae ] ; 4 uses
  %.sroa.11.110.i58 = phi i64 [ %i.gq, %.lr.ph.i56 ], [ %.sroa.11.0.i45, %bb.ae ] ; 2 uses
  %.sroa.19.19.i59 = phi ptr [ %i.gn, %.lr.ph.i56 ], [ %.sroa.19.0.i44, %bb.ae ]
  %i.gg = getelementptr i8, ptr %.sroa.5.111.i57, i64 8
  %.val.i60 = load ptr, ptr %i.gg, align 8, !alias.scope !5251, !noalias !5254, !nonnull !11, !noundef !11
  %i.gh = getelementptr i8, ptr %.sroa.5.111.i57, i64 16
  %.val24.i61 = load i64, ptr %i.gh, align 8, !alias.scope !5251, !noalias !5254, !noundef !11 ; 2 uses
  %.val25.i62 = load ptr, ptr %i.gb, align 8, !alias.scope !5256, !noalias !5257, !nonnull !11, !noundef !11
  %.val26.i63 = load i64, ptr %i.gc, align 8, !alias.scope !5256, !noalias !5257, !noundef !11 ; 2 uses
  %..i.i.i.i.i.i64 = call i64 @llvm.umin.i64(i64 %.val26.i63, i64 %.val24.i61)
  %i.gi = sub i64 %.val26.i63, %.val24.i61
  %i.gj = call i32 @memcmp(ptr nonnull readonly %.val25.i62, ptr nonnull readonly %.val.i60, i64 %..i.i.i.i.i.i64), !noalias !5258 ; 2 uses
  %i.gk = sext i32 %i.gj to i64
  %i.gl = icmp eq i32 %i.gj, 0
  %spec.store.select.i.i.i.i.i.i65 = select i1 %i.gl, i64 %i.gi, i64 %i.gk
  %i.gm = icmp sgt i64 %spec.store.select.i.i.i.i.i.i65, -1 ; 2 uses
  %i.gn = getelementptr inbounds i8, ptr %.sroa.19.19.i59, i64 -48 ; 3 uses
  %.sroa.01.0.i.i66 = select i1 %i.gm, ptr %2, ptr %i.gn
  %i.go = getelementptr inbounds nuw [48 x i8], ptr %.sroa.01.0.i.i66, i64 %.sroa.11.110.i58
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.go, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.111.i57, i64 48, i1 false), !alias.scope !5262, !noalias !5263
  %i.gp = zext i1 %i.gm to i64
  %i.gq = add i64 %.sroa.11.110.i58, %i.gp        ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i57, i64 48 ; 3 uses
  %i.gs = icmp ult ptr %i.gr, %i.gd
  br i1 %i.gs, label %.lr.ph.i56, label %._crit_edge.i48

bb.af:                                            ; preds = %._crit_edge.i48
  %i.gt = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i49, i64 -48
  %i.gu = getelementptr inbounds nuw [48 x i8], ptr %2, i64 %.sroa.11.1.lcssa.i50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.gu, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.1.lcssa.i51, i64 48, i1 false), !alias.scope !5262, !noalias !5266
  %i.gv = add i64 %.sroa.11.1.lcssa.i50, 1
  %i.gw = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i51, i64 48
  br label %bb.ae

bb.ag:                                            ; preds = %._crit_edge.i48
  %i.gx = mul i64 %.sroa.11.1.lcssa.i50, 48
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph106, ptr nonnull align 8 %2, i64 %i.gx, i1 false), !alias.scope !5262
  %i.gy = sub i64 %.sroa.15.099248, %.sroa.11.1.lcssa.i50 ; 6 uses
  %.not18.i52 = icmp eq i64 %.sroa.15.099248, %.sroa.11.1.lcssa.i50
  br i1 %.not18.i52, label %.outer._crit_edge.thread, label %.lr.ph16.i53

.lr.ph16.i53:                                     ; preds = %bb.ag
  %i.gz = getelementptr [48 x i8], ptr %.sroa.0.0.ph106, i64 %.sroa.11.1.lcssa.i50 ; 3 uses
  %.neg349 = add i64 %.sroa.11.1.lcssa.i50, 1
  %i.ha = icmp eq i64 %.sroa.15.099248, %.neg349
  br i1 %i.ha, label %.epil.preheader337, label %.lr.ph16.i53.new

.lr.ph16.i53.new:                                 ; preds = %.lr.ph16.i53
  %unroll_iter347 = and i64 %i.gy, -2
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %.lr.ph16.i53.new
  %.sroa.04.014.i54 = phi i64 [ 0, %.lr.ph16.i53.new ], [ %i.he, %bb.ah ] ; 5 uses
  %niter348 = phi i64 [ 0, %.lr.ph16.i53.new ], [ %niter348.next.1, %bb.ah ]
  %i.hb = xor i64 %.sroa.04.014.i54, -1
  %i.hc = getelementptr [48 x i8], ptr %i.ga, i64 %i.hb
  %i.hd = getelementptr [48 x i8], ptr %i.gz, i64 %.sroa.04.014.i54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.hd, ptr noundef nonnull align 8 dereferenceable(48) %i.hc, i64 48, i1 false), !alias.scope !5262
  %i.he = add nuw i64 %.sroa.04.014.i54, 2        ; 2 uses
  %i.hf = xor i64 %.sroa.04.014.i54, -2
  %i.hg = getelementptr [48 x i8], ptr %i.ga, i64 %i.hf
  %i.hh = getelementptr [48 x i8], ptr %i.gz, i64 %.sroa.04.014.i54
  %i.hi = getelementptr i8, ptr %i.hh, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.hi, ptr noundef nonnull align 8 dereferenceable(48) %i.hg, i64 48, i1 false), !alias.scope !5262
  %niter348.next.1 = add i64 %niter348, 2         ; 2 uses
  %niter348.ncmp.1 = icmp eq i64 %niter348.next.1, %unroll_iter347
  br i1 %niter348.ncmp.1, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h7b4ef1812dbcbf4fE.exit.unr-lcssa, label %bb.ah

_ZN4core5slice4sort6stable9quicksort16stable_partition17h7b4ef1812dbcbf4fE.exit.unr-lcssa: ; preds = %bb.ah
  %lcmp.mod345.not = trunc i64 %i.gy to i1
  br i1 %lcmp.mod345.not, label %.epil.preheader337, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h7b4ef1812dbcbf4fE.exit

.epil.preheader337:                               ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h7b4ef1812dbcbf4fE.exit.unr-lcssa, %.lr.ph16.i53
  %.sroa.04.014.i54.epil.init = phi i64 [ 0, %.lr.ph16.i53 ], [ %i.he, %_ZN4core5slice4sort6stable9quicksort16stable_partition17h7b4ef1812dbcbf4fE.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod346 = trunc i64 %i.gy to i1
  call void @llvm.assume(i1 %lcmp.mod346)
  %i.hj = xor i64 %.sroa.04.014.i54.epil.init, -1
  %i.hk = getelementptr [48 x i8], ptr %i.ga, i64 %i.hj
  %i.hl = getelementptr [48 x i8], ptr %i.gz, i64 %.sroa.04.014.i54.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.hl, ptr noundef nonnull align 8 dereferenceable(48) %i.hk, i64 48, i1 false), !alias.scope !5262
  br label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h7b4ef1812dbcbf4fE.exit

_ZN4core5slice4sort6stable9quicksort16stable_partition17h7b4ef1812dbcbf4fE.exit: ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h7b4ef1812dbcbf4fE.exit.unr-lcssa, %.epil.preheader337
  %i.hm = icmp ugt i64 %.sroa.11.1.lcssa.i50, %.sroa.15.099248
  br i1 %i.hm, label %bb.ai, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h476593a00dee33f2E.exit", !prof !151

.outer._crit_edge.thread:                         ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17hc2ab61341424f072E.exit

bb.ai:                                            ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h7b4ef1812dbcbf4fE.exit
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %.sroa.11.1.lcssa.i50, i64 noundef %.sroa.15.099248, i64 noundef %.sroa.15.099248, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @185) #45, !noalias !5269
  unreachable

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h476593a00dee33f2E.exit": ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h7b4ef1812dbcbf4fE.exit
  %i.hn = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.ph106, i64 %.sroa.11.1.lcssa.i50 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ho = icmp ult i64 %i.gy, 33
  br i1 %i.ho, label %.outer._crit_edge, label %.lr.ph

bb.aj:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @182, ptr %i.a, align 8
  %i.hp = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.hp, align 8
  %i.hq = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.hq, align 8
  %i.hr = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.hr, align 8
  %i.hs = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.hs, align 8
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @184) #45
  unreachable

bb.ak:                                            ; preds = %bb.ab
  %i.ht = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.ph106, i64 %.sroa.11.1.lcssa.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph106) ]
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h04eba19435942347E(ptr noalias noundef nonnull align 8 %i.ht, i64 noundef %i.fl, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.de, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) %i.b, ptr noalias noundef nonnull align 1 %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.hu = icmp ult i64 %.sroa.11.1.lcssa.i, 33
  br i1 %i.hu, label %.outer._crit_edge, label %bb.b
}

; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable9quicksort9quicksort17h1c66bcc47c969732E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %4, ptr noalias noundef readonly align 8 captures(address) dereferenceable_or_null(136) %5, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %6) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [136 x i8], align 8               ; 6 uses
  %i.c = icmp ult i64 %1, 33
  br i1 %i.c, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h988d16c668be86a9E.exit"
  %.sroa.0.0.ph133 = phi ptr [ %i.lz, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h988d16c668be86a9E.exit" ], [ %0, %bb.a ] ; 22 uses
  %.sroa.15.0.ph132 = phi i64 [ %i.lk, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h988d16c668be86a9E.exit" ], [ %1, %bb.a ] ; 2 uses
  %.sroa.023.0.ph131 = phi i32 [ %i.dh, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h988d16c668be86a9E.exit" ], [ %4, %bb.a ] ; 2 uses
  %.sroa.026.0.ph130 = phi ptr [ null, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h988d16c668be86a9E.exit" ], [ %5, %bb.a ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph133, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph133, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph133, i64 128 ; 2 uses
  %i.g = ptrtoint ptr %.sroa.0.0.ph133 to i64
  %.not = icmp eq ptr %.sroa.026.0.ph130, null
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.026.0.ph130, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.026.0.ph130, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.026.0.ph130, i64 128
  %i.k = icmp eq i32 %.sroa.023.0.ph131, 0
  br i1 %i.k, label %.lr.ph._crit_edge, label %.lr.ph364

bb.b:                                             ; preds = %bb.bs
  %i.l = icmp eq i32 %i.dh, 0
  br i1 %i.l, label %.lr.ph._crit_edge, label %.lr.ph364

.outer._crit_edge:                                ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h988d16c668be86a9E.exit", %bb.bs, %bb.a
  %.sroa.0.0.ph.lcssa124 = phi ptr [ %.sroa.0.0.ph133, %bb.bs ], [ %0, %bb.a ], [ %i.lz, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h988d16c668be86a9E.exit" ] ; 7 uses
  %.sroa.15.0.lcssa = phi i64 [ %.sroa.11.1.lcssa.i, %bb.bs ], [ %1, %bb.a ], [ %i.lk, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h988d16c668be86a9E.exit" ] ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5272)
  call void @llvm.experimental.noalias.scope.decl(metadata !5275)
  %i.m = icmp samesign ult i64 %.sroa.15.0.lcssa, 2
  br i1 %i.m, label %_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h349116586d53f114E.exit, label %bb.c

bb.c:                                             ; preds = %.outer._crit_edge
  %i.n = add nuw nsw i64 %.sroa.15.0.lcssa, 16
  %i.o = icmp ult i64 %3, %i.n
  br i1 %i.o, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = lshr i64 %.sroa.15.0.lcssa, 1            ; 6 uses
  %i.q = icmp samesign ugt i64 %.sroa.15.0.lcssa, 7
  %i.r = getelementptr inbounds nuw [136 x i8], ptr %.sroa.0.0.ph.lcssa124, i64 %i.p ; 3 uses
  %i.s = getelementptr [136 x i8], ptr %2, i64 %i.p ; 6 uses
  br i1 %i.q, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  call void @llvm.trap()
  unreachable

bb.f:                                             ; preds = %bb.d
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17hbc2f094d82873eabE(ptr noundef nonnull align 8 %.sroa.0.0.ph.lcssa124, ptr noundef nonnull align 8 %2)
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17hbc2f094d82873eabE(ptr noundef %i.r, ptr noundef %i.s)
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %2, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.0.0.ph.lcssa124, i64 136, i1 false), !alias.scope !5277
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.s, ptr noundef nonnull align 8 dereferenceable(136) %i.r, i64 136, i1 false), !alias.scope !5277
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.0.0.i = phi i64 [ 4, %bb.f ], [ 1, %bb.g ] ; 4 uses
  %i.t = sub nuw nsw i64 %.sroa.15.0.lcssa, %i.p  ; 2 uses
  %i.u = icmp samesign ult i64 %.sroa.0.0.i, %i.p
  br i1 %i.u, label %.lr.ph.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.i, %bb.h
  %i.v = icmp samesign ult i64 %.sroa.0.0.i, %i.t
  br i1 %i.v, label %.lr.ph.1.i, label %.loopexit.1.i

.lr.ph.1.i:                                       ; preds = %.loopexit.i, %.lr.ph.1.i
  %.sroa.08.010.1.i = phi i64 [ %i.w, %.lr.ph.1.i ], [ %.sroa.0.0.i, %.loopexit.i ] ; 3 uses
  %i.w = add nuw nsw i64 %.sroa.08.010.1.i, 1     ; 2 uses
  %i.x = getelementptr inbounds nuw [136 x i8], ptr %i.r, i64 %.sroa.08.010.1.i
  %i.y = getelementptr inbounds nuw [136 x i8], ptr %i.s, i64 %.sroa.08.010.1.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.y, ptr noundef nonnull align 8 dereferenceable(136) %i.x, i64 136, i1 false), !alias.scope !5277
  call fastcc void @_ZN4core5slice4sort6shared9smallsort11insert_tail17hc9f094d554a45734E(ptr noundef %i.s, ptr noundef %i.y), !noalias !5272
  %exitcond.1.not.i = icmp eq i64 %i.w, %i.t
  br i1 %exitcond.1.not.i, label %.loopexit.1.i, label %.lr.ph.1.i

.loopexit.1.i:                                    ; preds = %.lr.ph.1.i, %.loopexit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !5278)
  %i.z = add nsw i64 %.sroa.15.0.lcssa, -1        ; 2 uses
  %i.aa = getelementptr inbounds nuw [136 x i8], ptr %.sroa.0.0.ph.lcssa124, i64 %i.z
  %i.ab = getelementptr inbounds nuw [136 x i8], ptr %2, i64 %i.z
  %i.ac = getelementptr i8, ptr %i.s, i64 -136
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0a92db54ff3bb355E.exit36.i.i"
  %i.ad = getelementptr i8, ptr %i.cs, i64 136    ; 2 uses
  %i.ae = getelementptr i8, ptr %i.cr, i64 136
  %7 = trunc i64 %.sroa.15.0.lcssa to i1
  br i1 %7, label %bb.s, label %bb.t

.lr.ph.i.i:                                       ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0a92db54ff3bb355E.exit36.i.i", %.loopexit.1.i
  %.sroa.0.014.i.i = phi ptr [ %i.bm, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0a92db54ff3bb355E.exit36.i.i" ], [ %2, %.loopexit.1.i ] ; 5 uses
  %.sroa.06.012.i.i = phi ptr [ %i.bk, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0a92db54ff3bb355E.exit36.i.i" ], [ %i.s, %.loopexit.1.i ] ; 5 uses
  %.sroa.010.011.i.i = phi ptr [ %i.bn, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0a92db54ff3bb355E.exit36.i.i" ], [ %.sroa.0.0.ph.lcssa124, %.loopexit.1.i ] ; 2 uses
  %.sroa.013.09.i.i = phi ptr [ %i.cs, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0a92db54ff3bb355E.exit36.i.i" ], [ %i.ac, %.loopexit.1.i ] ; 5 uses
  %.sroa.015.07.i.i = phi ptr [ %i.cr, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0a92db54ff3bb355E.exit36.i.i" ], [ %i.ab, %.loopexit.1.i ] ; 5 uses
  %.sroa.017.06.i.i = phi ptr [ %i.ct, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0a92db54ff3bb355E.exit36.i.i" ], [ %i.aa, %.loopexit.1.i ] ; 2 uses
  %.sroa.018.05.i.i = phi i64 [ %i.af, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0a92db54ff3bb355E.exit36.i.i" ], [ 0, %.loopexit.1.i ]
  %i.af = add nuw nsw i64 %.sroa.018.05.i.i, 1    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5281)
  call void @llvm.experimental.noalias.scope.decl(metadata !5284)
  call void @llvm.experimental.noalias.scope.decl(metadata !5286)
  call void @llvm.experimental.noalias.scope.decl(metadata !5289)
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.06.012.i.i, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !alias.scope !5291, !noalias !5292, !noundef !11 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.014.i.i, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !5293, !noalias !5294, !noundef !11 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.ah, %i.aj
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.014.i.i, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !5293, !noalias !5294, !nonnull !11, !noundef !11
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.06.012.i.i, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !5291, !noalias !5292, !nonnull !11, !noundef !11
  %exitcond.not.i.i.i.i374 = icmp eq i64 %i.ah, 0
  br i1 %exitcond.not.i.i.i.i374, label %._crit_edge378, label %.lr.ph377

bb.j:                                             ; preds = %.lr.ph.i.i
  %i.ao = icmp ult i64 %i.ah, %i.aj
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0a92db54ff3bb355E.exit.i.i"

bb.k:                                             ; preds = %bb.l
  %i.ap = add i64 %.sroa.9.0.i.i.i.i375, 1        ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ap, %i.ah
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge378, label %.lr.ph377

.lr.ph377:                                        ; preds = %bb.i, %bb.k
  %.sroa.9.0.i.i.i.i375 = phi i64 [ %i.ap, %bb.k ], [ 0, %bb.i ] ; 3 uses
  %i.aq = getelementptr inbounds nuw [48 x i8], ptr %i.an, i64 %.sroa.9.0.i.i.i.i375 ; 2 uses
  %i.ar = getelementptr inbounds nuw [48 x i8], ptr %i.al, i64 %.sroa.9.0.i.i.i.i375 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %i.au = load i64, ptr %i.at, align 8, !noalias !5295, !noundef !11 ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  %i.ax = load i64, ptr %i.aw, align 8, !noalias !5295, !noundef !11 ; 2 uses
  %.not16.i.i.i.i = icmp eq i64 %i.au, %i.ax
  %.pre.i.i.i.i = load ptr, ptr %i.as, align 8, !noalias !5295 ; 2 uses
  %.pre14.i.i.i.i = load ptr, ptr %i.av, align 8, !noalias !5295 ; 2 uses
  br i1 %.not16.i.i.i.i, label %bb.l, label %bb.m

._crit_edge378:                                   ; preds = %bb.k, %bb.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.06.012.i.i, i64 128
  %i.az = load i64, ptr %i.ay, align 8, !alias.scope !5291, !noalias !5292, !noundef !11
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.014.i.i, i64 128
  %i.bb = load i64, ptr %i.ba, align 8, !alias.scope !5293, !noalias !5294, !noundef !11
  %i.bc = icmp slt i64 %i.az, %i.bb
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0a92db54ff3bb355E.exit.i.i"

bb.l:                                             ; preds = %.lr.ph377
  %bcmp.i.i.i.i = call i32 @bcmp(ptr nonnull %.pre.i.i.i.i, ptr nonnull %.pre14.i.i.i.i, i64 %i.au), !noalias !5295
  %.not17.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %.not17.i.i.i.i, label %bb.k, label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph377
  %.lcssa.i.i.i.i = phi i64 [ %i.ax, %.lr.ph377 ], [ %i.au, %bb.l ] ; 2 uses
  %i.bd = sub i64 %i.au, %.lcssa.i.i.i.i
  %..i.i.i.i = call i64 @llvm.umin.i64(i64 %i.au, i64 %.lcssa.i.i.i.i)
  %i.be = call i32 @memcmp(ptr nonnull %.pre.i.i.i.i, ptr nonnull %.pre14.i.i.i.i, i64 %..i.i.i.i), !noalias !5295 ; 2 uses
  %i.bf = sext i32 %i.be to i64
  %i.bg = icmp eq i32 %i.be, 0
  %spec.store.select.i.i.i.i = select i1 %i.bg, i64 %i.bd, i64 %i.bf
  %i.bh = icmp slt i64 %spec.store.select.i.i.i.i, 0
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0a92db54ff3bb355E.exit.i.i"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0a92db54ff3bb355E.exit.i.i": ; preds = %bb.m, %._crit_edge378, %bb.j
  %.sroa.0.0.i.i.i.i = phi i1 [ %i.ao, %bb.j ], [ %i.bh, %bb.m ], [ %i.bc, %._crit_edge378 ] ; 3 uses
  %..i23.i.i = select i1 %.sroa.0.0.i.i.i.i, ptr %.sroa.06.012.i.i, ptr %.sroa.0.014.i.i
  %i.bi = xor i1 %.sroa.0.0.i.i.i.i, true
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.010.011.i.i, ptr noundef nonnull align 8 dereferenceable(136) %..i23.i.i, i64 136, i1 false), !alias.scope !5277, !noalias !5296
  %i.bj = zext i1 %.sroa.0.0.i.i.i.i to i64
  %i.bk = getelementptr inbounds nuw [136 x i8], ptr %.sroa.06.012.i.i, i64 %i.bj ; 4 uses
  %i.bl = zext i1 %i.bi to i64
  %i.bm = getelementptr inbounds nuw [136 x i8], ptr %.sroa.0.014.i.i, i64 %i.bl ; 5 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.010.011.i.i, i64 136 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5300)
  call void @llvm.experimental.noalias.scope.decl(metadata !5303)
  call void @llvm.experimental.noalias.scope.decl(metadata !5305)
  call void @llvm.experimental.noalias.scope.decl(metadata !5308)
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.015.07.i.i, i64 16
  %i.bp = load i64, ptr %i.bo, align 8, !alias.scope !5310, !noalias !5311, !noundef !11 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.013.09.i.i, i64 16
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !5312, !noalias !5313, !noundef !11 ; 2 uses
  %.not.i.i24.i.i = icmp eq i64 %i.bp, %i.br
  br i1 %.not.i.i24.i.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0a92db54ff3bb355E.exit.i.i"
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.013.09.i.i, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !alias.scope !5312, !noalias !5313, !nonnull !11, !noundef !11
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.015.07.i.i, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !alias.scope !5310, !noalias !5311, !nonnull !11, !noundef !11
  %exitcond.not.i.i27.i.i379 = icmp eq i64 %i.bp, 0
  br i1 %exitcond.not.i.i27.i.i379, label %._crit_edge383, label %.lr.ph382

bb.o:                                             ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0a92db54ff3bb355E.exit.i.i"
  %i.bw = icmp ult i64 %i.bp, %i.br
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0a92db54ff3bb355E.exit36.i.i"

bb.p:                                             ; preds = %bb.q
  %i.bx = add i64 %.sroa.9.0.i.i26.i.i380, 1      ; 2 uses
  %exitcond.not.i.i27.i.i = icmp eq i64 %i.bx, %i.bp
  br i1 %exitcond.not.i.i27.i.i, label %._crit_edge383, label %.lr.ph382

.lr.ph382:                                        ; preds = %bb.n, %bb.p
  %.sroa.9.0.i.i26.i.i380 = phi i64 [ %i.bx, %bb.p ], [ 0, %bb.n ] ; 3 uses
  %i.by = getelementptr inbounds nuw [48 x i8], ptr %i.bv, i64 %.sroa.9.0.i.i26.i.i380 ; 2 uses
  %i.bz = getelementptr inbounds nuw [48 x i8], ptr %i.bt, i64 %.sroa.9.0.i.i26.i.i380 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  %i.cc = load i64, ptr %i.cb, align 8, !noalias !5314, !noundef !11 ; 5 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 40
  %i.cf = load i64, ptr %i.ce, align 8, !noalias !5314, !noundef !11 ; 2 uses
  %.not16.i.i28.i.i = icmp eq i64 %i.cc, %i.cf
  %.pre.i.i29.i.i = load ptr, ptr %i.ca, align 8, !noalias !5314 ; 2 uses
  %.pre14.i.i30.i.i = load ptr, ptr %i.cd, align 8, !noalias !5314 ; 2 uses
  br i1 %.not16.i.i28.i.i, label %bb.q, label %bb.r

._crit_edge383:                                   ; preds = %bb.p, %bb.n
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.015.07.i.i, i64 128
  %i.ch = load i64, ptr %i.cg, align 8, !alias.scope !5310, !noalias !5311, !noundef !11
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.013.09.i.i, i64 128
  %i.cj = load i64, ptr %i.ci, align 8, !alias.scope !5312, !noalias !5313, !noundef !11
  %i.ck = icmp slt i64 %i.ch, %i.cj
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0a92db54ff3bb355E.exit36.i.i"

bb.q:                                             ; preds = %.lr.ph382
  %bcmp.i.i34.i.i = call i32 @bcmp(ptr nonnull %.pre.i.i29.i.i, ptr nonnull %.pre14.i.i30.i.i, i64 %i.cc), !noalias !5314
  %.not17.i.i35.i.i = icmp eq i32 %bcmp.i.i34.i.i, 0
  br i1 %.not17.i.i35.i.i, label %bb.p, label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph382
  %.lcssa.i.i31.i.i = phi i64 [ %i.cf, %.lr.ph382 ], [ %i.cc, %bb.q ] ; 2 uses
  %i.cl = sub i64 %i.cc, %.lcssa.i.i31.i.i
  %..i.i32.i.i = call i64 @llvm.umin.i64(i64 %i.cc, i64 %.lcssa.i.i31.i.i)
  %i.cm = call i32 @memcmp(ptr nonnull %.pre.i.i29.i.i, ptr nonnull %.pre14.i.i30.i.i, i64 %..i.i32.i.i), !noalias !5314 ; 2 uses
  %i.cn = sext i32 %i.cm to i64
  %i.co = icmp eq i32 %i.cm, 0
  %spec.store.select.i.i33.i.i = select i1 %i.co, i64 %i.cl, i64 %i.cn
  %i.cp = icmp slt i64 %spec.store.select.i.i33.i.i, 0
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0a92db54ff3bb355E.exit36.i.i"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0a92db54ff3bb355E.exit36.i.i": ; preds = %bb.r, %._crit_edge383, %bb.o
  %.sroa.0.0.i.i25.i.i = phi i1 [ %i.bw, %bb.o ], [ %i.cp, %bb.r ], [ %i.ck, %._crit_edge383 ] ; 3 uses
  %..i.i.i = select i1 %.sroa.0.0.i.i25.i.i, ptr %.sroa.013.09.i.i, ptr %.sroa.015.07.i.i
  %i.cq = xor i1 %.sroa.0.0.i.i25.i.i, true
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.017.06.i.i, ptr noundef nonnull align 8 dereferenceable(136) %..i.i.i, i64 136, i1 false), !alias.scope !5277, !noalias !5315
  %.neg.i.i.i = sext i1 %i.cq to i64
  %i.cr = getelementptr [136 x i8], ptr %.sroa.015.07.i.i, i64 %.neg.i.i.i ; 2 uses
  %.neg15.i.i.i = sext i1 %.sroa.0.0.i.i25.i.i to i64
  %i.cs = getelementptr [136 x i8], ptr %.sroa.013.09.i.i, i64 %.neg15.i.i.i ; 2 uses
  %i.ct = getelementptr inbounds i8, ptr %.sroa.017.06.i.i, i64 -136
  %exitcond.not.i.i = icmp eq i64 %i.af, %i.p
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.s:                                             ; preds = %._crit_edge.i.i
  %i.cu = icmp ult ptr %i.bm, %i.ad               ; 3 uses
  %.sroa.0.0..sroa.06.0.i.i = select i1 %i.cu, ptr %i.bm, ptr %i.bk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.bn, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.0.0..sroa.06.0.i.i, i64 136, i1 false), !alias.scope !5277
  %i.cv = zext i1 %i.cu to i64
  %i.cw = getelementptr inbounds nuw [136 x i8], ptr %i.bm, i64 %i.cv
  %i.cx = xor i1 %i.cu, true
  %i.cy = zext i1 %i.cx to i64
  %i.cz = getelementptr inbounds nuw [136 x i8], ptr %i.bk, i64 %i.cy
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge.i.i
  %.sroa.06.1.i.i = phi ptr [ %i.bk, %._crit_edge.i.i ], [ %i.cz, %bb.s ]
  %.sroa.0.1.i.i = phi ptr [ %i.bm, %._crit_edge.i.i ], [ %i.cw, %bb.s ]
  %i.da = icmp ne ptr %.sroa.0.1.i.i, %i.ad
  %i.db = icmp ne ptr %.sroa.06.1.i.i, %i.ae
  %or.cond.i.i = select i1 %i.da, i1 true, i1 %i.db, !prof !5191
  br i1 %or.cond.i.i, label %bb.u, label %_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h349116586d53f114E.exit, !prof !5191

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17h481967bb377c264aE() #45
          to label %.noexc.i unwind label %bb.v, !noalias !5277

.noexc.i:                                         ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %bb.u
  %i.dc = landingpad { ptr, i32 }
          cleanup
  %i.dd = mul nuw nsw i64 %.sroa.15.0.lcssa, 136
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph.lcssa124, ptr nonnull align 8 %2, i64 %i.dd, i1 false), !alias.scope !5277, !noalias !5319
  resume { ptr, i32 } %i.dc

end_hunk_5
begin_hunk_6_@_ZN4core5slice4sort6stable9quicksort9quicksort17h1c66bcc47c969732E:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph133, i64 %i.gl ; 10 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.b, ptr noundef nonnull align 8 dereferenceable(136) %i.gn, i64 136, i1 false)
  br i1 %.not, label %.critedge, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.experimental.noalias.scope.decl(metadata !5372)
  call void @llvm.experimental.noalias.scope.decl(metadata !5375)
  call void @llvm.experimental.noalias.scope.decl(metadata !5377)
  call void @llvm.experimental.noalias.scope.decl(metadata !5380)
  %i.go = load i64, ptr %i.h, align 8, !alias.scope !5382, !noalias !5383, !noundef !11 ; 4 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  %i.gq = load i64, ptr %i.gp, align 8, !alias.scope !5383, !noalias !5382, !noundef !11 ; 2 uses
  %.not.i.i = icmp eq i64 %i.go, %i.gq
  br i1 %.not.i.i, label %bb.aq, label %.split

bb.aq:                                            ; preds = %bb.ap
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.gs = load ptr, ptr %i.gr, align 8, !alias.scope !5383, !noalias !5382, !nonnull !11, !noundef !11
  %i.gt = load ptr, ptr %i.i, align 8, !alias.scope !5382, !noalias !5383, !nonnull !11, !noundef !11
  %exitcond.not.i.i38353 = icmp eq i64 %i.go, 0
  br i1 %exitcond.not.i.i38353, label %.split235, label %.lr.ph356

.split:                                           ; preds = %bb.ap
  %i.gu = icmp ult i64 %i.go, %i.gq
  br i1 %i.gu, label %.critedge, label %.critedge35

bb.ar:                                            ; preds = %bb.as
  %i.gv = add i64 %.sroa.9.0.i.i354, 1            ; 2 uses
  %exitcond.not.i.i38 = icmp eq i64 %i.gv, %i.go
  br i1 %exitcond.not.i.i38, label %.split235, label %.lr.ph356

.lr.ph356:                                        ; preds = %bb.aq, %bb.ar
  %.sroa.9.0.i.i354 = phi i64 [ %i.gv, %bb.ar ], [ 0, %bb.aq ] ; 3 uses
  %i.gw = getelementptr inbounds nuw [48 x i8], ptr %i.gt, i64 %.sroa.9.0.i.i354 ; 2 uses
  %i.gx = getelementptr inbounds nuw [48 x i8], ptr %i.gs, i64 %.sroa.9.0.i.i354 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gw, i64 32
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gw, i64 40
  %i.ha = load i64, ptr %i.gz, align 8, !noalias !5384, !noundef !11 ; 5 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gx, i64 32
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gx, i64 40
  %i.hd = load i64, ptr %i.hc, align 8, !noalias !5384, !noundef !11 ; 2 uses
  %.not16.i.i = icmp eq i64 %i.ha, %i.hd
  %.pre.i.i = load ptr, ptr %i.gy, align 8, !noalias !5384 ; 2 uses
  %.pre14.i.i = load ptr, ptr %i.hb, align 8, !noalias !5384 ; 2 uses
  br i1 %.not16.i.i, label %bb.as, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0a92db54ff3bb355E.exit"

.split235:                                        ; preds = %bb.ar, %bb.aq
  %i.he = load i64, ptr %i.j, align 8, !alias.scope !5382, !noalias !5383, !noundef !11
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gn, i64 128
  %i.hg = load i64, ptr %i.hf, align 8, !alias.scope !5383, !noalias !5382, !noundef !11
  %i.hh = icmp slt i64 %i.he, %i.hg
  br i1 %i.hh, label %.critedge, label %.critedge35

bb.as:                                            ; preds = %.lr.ph356
  %bcmp.i.i = call i32 @bcmp(ptr nonnull %.pre.i.i, ptr nonnull %.pre14.i.i, i64 %i.ha), !noalias !5384
  %.not17.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not17.i.i, label %bb.ar, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0a92db54ff3bb355E.exit"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0a92db54ff3bb355E.exit": ; preds = %.lr.ph356, %bb.as
  %.lcssa.i.i = phi i64 [ %i.hd, %.lr.ph356 ], [ %i.ha, %bb.as ] ; 2 uses
  %i.hi = sub i64 %i.ha, %.lcssa.i.i
  %..i.i39 = call i64 @llvm.umin.i64(i64 %i.ha, i64 %.lcssa.i.i)
  %i.hj = call i32 @memcmp(ptr nonnull %.pre.i.i, ptr nonnull %.pre14.i.i, i64 %..i.i39), !noalias !5384 ; 2 uses
  %i.hk = sext i32 %i.hj to i64
  %i.hl = icmp eq i32 %i.hj, 0
  %spec.store.select.i.i = select i1 %i.hl, i64 %i.hi, i64 %i.hk
  %i.hm = icmp slt i64 %spec.store.select.i.i, 0
  br i1 %i.hm, label %.critedge, label %.critedge35

.critedge:                                        ; preds = %.split235, %.split, %bb.ao, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0a92db54ff3bb355E.exit"
  call void @llvm.experimental.noalias.scope.decl(metadata !5385)
  call void @llvm.experimental.noalias.scope.decl(metadata !5388)
  %.not87 = icmp ult i64 %3, %.sroa.15.0126362
  br i1 %.not87, label %bb.au, label %bb.at, !prof !5191

bb.at:                                            ; preds = %.critedge
  %i.hn = getelementptr [136 x i8], ptr %2, i64 %.sroa.15.0126362 ; 4 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  %i.hp = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.hq = getelementptr inbounds nuw i8, ptr %i.gn, i64 128
  br label %bb.av

bb.au:                                            ; preds = %.critedge
  call void @llvm.trap()
  unreachable

bb.av:                                            ; preds = %bb.bb, %bb.at
  %.sroa.19.0.i = phi ptr [ %i.hn, %bb.at ], [ %i.iz, %bb.bb ] ; 2 uses
  %.sroa.11.0.i = phi i64 [ 0, %bb.at ], [ %.sroa.11.1.lcssa.i, %bb.bb ] ; 2 uses
  %.sroa.5.0.i = phi ptr [ %.sroa.0.0.ph133, %bb.at ], [ %i.jb, %bb.bb ] ; 3 uses
  %.sroa.02.0.i = phi i64 [ %.sroa.0.0.i36, %bb.at ], [ %.sroa.15.0126362, %bb.bb ] ; 2 uses
  %i.hr = getelementptr inbounds nuw [136 x i8], ptr %.sroa.0.0.ph133, i64 %.sroa.02.0.i ; 2 uses
  %i.hs = icmp ult ptr %.sroa.5.0.i, %i.hr
  br i1 %i.hs, label %.lr.ph.i41, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0a92db54ff3bb355E.exit.i43", %bb.av
  %.sroa.19.1.lcssa.i = phi ptr [ %.sroa.19.0.i, %bb.av ], [ %i.it, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0a92db54ff3bb355E.exit.i43" ]
  %.sroa.11.1.lcssa.i = phi i64 [ %.sroa.11.0.i, %bb.av ], [ %i.iw, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0a92db54ff3bb355E.exit.i43" ] ; 14 uses
  %.sroa.5.1.lcssa.i = phi ptr [ %.sroa.5.0.i, %bb.av ], [ %i.ix, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0a92db54ff3bb355E.exit.i43" ] ; 2 uses
  %i.ht = icmp eq i64 %.sroa.02.0.i, %.sroa.15.0126362
  br i1 %i.ht, label %bb.bc, label %bb.bb

.lr.ph.i41:                                       ; preds = %bb.av, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0a92db54ff3bb355E.exit.i43"
  %.sroa.5.111.i = phi ptr [ %i.ix, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0a92db54ff3bb355E.exit.i43" ], [ %.sroa.5.0.i, %bb.av ] ; 5 uses
  %.sroa.11.110.i = phi i64 [ %i.iw, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0a92db54ff3bb355E.exit.i43" ], [ %.sroa.11.0.i, %bb.av ] ; 2 uses
  %.sroa.19.19.i = phi ptr [ %i.it, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0a92db54ff3bb355E.exit.i43" ], [ %.sroa.19.0.i, %bb.av ]
  call void @llvm.experimental.noalias.scope.decl(metadata !5390)
  call void @llvm.experimental.noalias.scope.decl(metadata !5393)
  call void @llvm.experimental.noalias.scope.decl(metadata !5395)
  call void @llvm.experimental.noalias.scope.decl(metadata !5398)
  %i.hu = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i, i64 16
  %i.hv = load i64, ptr %i.hu, align 8, !alias.scope !5400, !noalias !5401, !noundef !11 ; 4 uses
  %i.hw = load i64, ptr %i.ho, align 8, !alias.scope !5402, !noalias !5403, !noundef !11 ; 2 uses
  %.not.i.i.i42 = icmp eq i64 %i.hv, %i.hw
  br i1 %.not.i.i.i42, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %.lr.ph.i41
  %i.hx = load ptr, ptr %i.hp, align 8, !alias.scope !5402, !noalias !5403, !nonnull !11, !noundef !11
  %i.hy = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i, i64 8
  %i.hz = load ptr, ptr %i.hy, align 8, !alias.scope !5400, !noalias !5401, !nonnull !11, !noundef !11
  %exitcond.not.i.i.i46357 = icmp eq i64 %i.hv, 0
  br i1 %exitcond.not.i.i.i46357, label %._crit_edge361, label %.lr.ph360

bb.ax:                                            ; preds = %.lr.ph.i41
  %i.ia = icmp ult i64 %i.hv, %i.hw
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0a92db54ff3bb355E.exit.i43"

bb.ay:                                            ; preds = %bb.az
  %i.ib = add i64 %.sroa.9.0.i.i.i45358, 1        ; 2 uses
  %exitcond.not.i.i.i46 = icmp eq i64 %i.ib, %i.hv
  br i1 %exitcond.not.i.i.i46, label %._crit_edge361, label %.lr.ph360

.lr.ph360:                                        ; preds = %bb.aw, %bb.ay
  %.sroa.9.0.i.i.i45358 = phi i64 [ %i.ib, %bb.ay ], [ 0, %bb.aw ] ; 3 uses
  %i.ic = getelementptr inbounds nuw [48 x i8], ptr %i.hz, i64 %.sroa.9.0.i.i.i45358 ; 2 uses
  %i.id = getelementptr inbounds nuw [48 x i8], ptr %i.hx, i64 %.sroa.9.0.i.i.i45358 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ic, i64 32
  %i.if = getelementptr inbounds nuw i8, ptr %i.ic, i64 40
  %i.ig = load i64, ptr %i.if, align 8, !noalias !5404, !noundef !11 ; 5 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.id, i64 32
  %i.ii = getelementptr inbounds nuw i8, ptr %i.id, i64 40
  %i.ij = load i64, ptr %i.ii, align 8, !noalias !5404, !noundef !11 ; 2 uses
  %.not16.i.i.i47 = icmp eq i64 %i.ig, %i.ij
  %.pre.i.i.i48 = load ptr, ptr %i.ie, align 8, !noalias !5404 ; 2 uses
  %.pre14.i.i.i49 = load ptr, ptr %i.ih, align 8, !noalias !5404 ; 2 uses
  br i1 %.not16.i.i.i47, label %bb.az, label %bb.ba

._crit_edge361:                                   ; preds = %bb.ay, %bb.aw
  %i.ik = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i, i64 128
  %i.il = load i64, ptr %i.ik, align 8, !alias.scope !5400, !noalias !5401, !noundef !11
  %i.im = load i64, ptr %i.hq, align 8, !alias.scope !5402, !noalias !5403, !noundef !11
  %i.in = icmp slt i64 %i.il, %i.im
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0a92db54ff3bb355E.exit.i43"

bb.az:                                            ; preds = %.lr.ph360
  %bcmp.i.i.i53 = call i32 @bcmp(ptr nonnull %.pre.i.i.i48, ptr nonnull %.pre14.i.i.i49, i64 %i.ig), !noalias !5404
  %.not17.i.i.i54 = icmp eq i32 %bcmp.i.i.i53, 0
  br i1 %.not17.i.i.i54, label %bb.ay, label %bb.ba

bb.ba:                                            ; preds = %bb.az, %.lr.ph360
  %.lcssa.i.i.i50 = phi i64 [ %i.ij, %.lr.ph360 ], [ %i.ig, %bb.az ] ; 2 uses
  %i.io = sub i64 %i.ig, %.lcssa.i.i.i50
  %..i.i.i51 = call i64 @llvm.umin.i64(i64 %i.ig, i64 %.lcssa.i.i.i50)
  %i.ip = call i32 @memcmp(ptr nonnull %.pre.i.i.i48, ptr nonnull %.pre14.i.i.i49, i64 %..i.i.i51), !noalias !5404 ; 2 uses
  %i.iq = sext i32 %i.ip to i64
  %i.ir = icmp eq i32 %i.ip, 0
  %spec.store.select.i.i.i52 = select i1 %i.ir, i64 %i.io, i64 %i.iq
  %i.is = icmp slt i64 %spec.store.select.i.i.i52, 0
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0a92db54ff3bb355E.exit.i43"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0a92db54ff3bb355E.exit.i43": ; preds = %bb.ba, %._crit_edge361, %bb.ax
  %.sroa.0.0.i.i.i44 = phi i1 [ %i.ia, %bb.ax ], [ %i.is, %bb.ba ], [ %i.in, %._crit_edge361 ] ; 2 uses
  %i.it = getelementptr inbounds i8, ptr %.sroa.19.19.i, i64 -136 ; 3 uses
  %.sroa.01.0.i.i = select i1 %.sroa.0.0.i.i.i44, ptr %2, ptr %i.it
  %i.iu = getelementptr inbounds nuw [136 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.11.110.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.iu, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.5.111.i, i64 136, i1 false), !alias.scope !5405, !noalias !5406
  %i.iv = zext i1 %.sroa.0.0.i.i.i44 to i64
  %i.iw = add i64 %.sroa.11.110.i, %i.iv          ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i, i64 136 ; 3 uses
  %i.iy = icmp ult ptr %i.ix, %i.hr
  br i1 %i.iy, label %.lr.ph.i41, label %._crit_edge.i

bb.bb:                                            ; preds = %._crit_edge.i
  %i.iz = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i, i64 -136 ; 2 uses
  %i.ja = getelementptr inbounds nuw [136 x i8], ptr %i.iz, i64 %.sroa.11.1.lcssa.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.ja, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.5.1.lcssa.i, i64 136, i1 false), !alias.scope !5405, !noalias !5409
  %i.jb = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i, i64 136
  br label %bb.av

bb.bc:                                            ; preds = %._crit_edge.i
  %i.jc = mul i64 %.sroa.11.1.lcssa.i, 136
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph133, ptr nonnull align 8 %2, i64 %i.jc, i1 false), !alias.scope !5405
  %i.jd = sub i64 %.sroa.15.0126362, %.sroa.11.1.lcssa.i ; 4 uses
  %.not18.i = icmp eq i64 %.sroa.15.0126362, %.sroa.11.1.lcssa.i
  br i1 %.not18.i, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17hfbaa229836c03ab4E.exit, label %.lr.ph16.i

.lr.ph16.i:                                       ; preds = %bb.bc
  %i.je = getelementptr [136 x i8], ptr %.sroa.0.0.ph133, i64 %.sroa.11.1.lcssa.i ; 3 uses
  %.neg = add i64 %.sroa.11.1.lcssa.i, 1
  %i.jf = icmp eq i64 %.sroa.15.0126362, %.neg
  br i1 %i.jf, label %.epil.preheader, label %.lr.ph16.i.new

.lr.ph16.i.new:                                   ; preds = %.lr.ph16.i
  %unroll_iter = and i64 %i.jd, -2
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bd, %.lr.ph16.i.new
  %.sroa.04.014.i = phi i64 [ 0, %.lr.ph16.i.new ], [ %i.jj, %bb.bd ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph16.i.new ], [ %niter.next.1, %bb.bd ]
  %i.jg = xor i64 %.sroa.04.014.i, -1
  %i.jh = getelementptr [136 x i8], ptr %i.hn, i64 %i.jg
  %i.ji = getelementptr [136 x i8], ptr %i.je, i64 %.sroa.04.014.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.ji, ptr noundef nonnull align 8 dereferenceable(136) %i.jh, i64 136, i1 false), !alias.scope !5405
  %i.jj = add nuw i64 %.sroa.04.014.i, 2          ; 2 uses
  %i.jk = xor i64 %.sroa.04.014.i, -2
  %i.jl = getelementptr [136 x i8], ptr %i.hn, i64 %i.jk
  %i.jm = getelementptr [136 x i8], ptr %i.je, i64 %.sroa.04.014.i
  %i.jn = getelementptr i8, ptr %i.jm, i64 136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.jn, ptr noundef nonnull align 8 dereferenceable(136) %i.jl, i64 136, i1 false), !alias.scope !5405
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17hfbaa229836c03ab4E.exit.loopexit.unr-lcssa, label %bb.bd

_ZN4core5slice4sort6stable9quicksort16stable_partition17hfbaa229836c03ab4E.exit.loopexit.unr-lcssa: ; preds = %bb.bd
  %lcmp.mod.not = trunc i64 %i.jd to i1
  br i1 %lcmp.mod.not, label %.epil.preheader, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17hfbaa229836c03ab4E.exit

.epil.preheader:                                  ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17hfbaa229836c03ab4E.exit.loopexit.unr-lcssa, %.lr.ph16.i
  %.sroa.04.014.i.epil.init = phi i64 [ 0, %.lr.ph16.i ], [ %i.jj, %_ZN4core5slice4sort6stable9quicksort16stable_partition17hfbaa229836c03ab4E.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod475 = trunc i64 %i.jd to i1
  call void @llvm.assume(i1 %lcmp.mod475)
  %i.jo = xor i64 %.sroa.04.014.i.epil.init, -1
  %i.jp = getelementptr [136 x i8], ptr %i.hn, i64 %i.jo
  %i.jq = getelementptr [136 x i8], ptr %i.je, i64 %.sroa.04.014.i.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.jq, ptr noundef nonnull align 8 dereferenceable(136) %i.jp, i64 136, i1 false), !alias.scope !5405
  br label %_ZN4core5slice4sort6stable9quicksort16stable_partition17hfbaa229836c03ab4E.exit

_ZN4core5slice4sort6stable9quicksort16stable_partition17hfbaa229836c03ab4E.exit: ; preds = %.epil.preheader, %_ZN4core5slice4sort6stable9quicksort16stable_partition17hfbaa229836c03ab4E.exit.loopexit.unr-lcssa, %bb.bc
  %i.jr = icmp eq i64 %.sroa.11.1.lcssa.i, 0
  br i1 %i.jr, label %.critedge35, label %bb.be

bb.be:                                            ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17hfbaa229836c03ab4E.exit
  %.not33 = icmp ugt i64 %.sroa.11.1.lcssa.i, %.sroa.15.0126362
  br i1 %.not33, label %bb.br, label %bb.bs, !prof !151

.critedge35:                                      ; preds = %.split235, %.split, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h0a92db54ff3bb355E.exit", %_ZN4core5slice4sort6stable9quicksort16stable_partition17hfbaa229836c03ab4E.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !5412)
  call void @llvm.experimental.noalias.scope.decl(metadata !5415)
  %.not88 = icmp ult i64 %3, %.sroa.15.0126362
  br i1 %.not88, label %bb.bg, label %bb.bf, !prof !5191

bb.bf:                                            ; preds = %.critedge35
  %i.js = getelementptr [136 x i8], ptr %2, i64 %.sroa.15.0126362 ; 4 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  %i.ju = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.jv = getelementptr inbounds nuw i8, ptr %i.gn, i64 128
  br label %bb.bh

bb.bg:                                            ; preds = %.critedge35
  call void @llvm.trap()
  unreachable

bb.bh:                                            ; preds = %bb.bn, %bb.bf
  %.sroa.19.0.i57 = phi ptr [ %i.js, %bb.bf ], [ %i.lf, %bb.bn ] ; 2 uses
  %.sroa.11.0.i58 = phi i64 [ 0, %bb.bf ], [ %i.lh, %bb.bn ] ; 2 uses
  %.sroa.5.0.i59 = phi ptr [ %.sroa.0.0.ph133, %bb.bf ], [ %i.li, %bb.bn ] ; 3 uses
  %.sroa.02.0.i60 = phi i64 [ %.sroa.0.0.i36, %bb.bf ], [ %.sroa.15.0126362, %bb.bn ] ; 2 uses
  %i.jw = getelementptr inbounds nuw [136 x i8], ptr %.sroa.0.0.ph133, i64 %.sroa.02.0.i60 ; 2 uses
  %i.jx = icmp ult ptr %.sroa.5.0.i59, %i.jw
  br i1 %i.jx, label %.lr.ph.i69, label %._crit_edge.i61

._crit_edge.i61:                                  ; preds = %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h66218f7bd18d4dd6E.exit.i", %bb.bh
  %.sroa.19.1.lcssa.i62 = phi ptr [ %.sroa.19.0.i57, %bb.bh ], [ %i.kz, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h66218f7bd18d4dd6E.exit.i" ]
  %.sroa.11.1.lcssa.i63 = phi i64 [ %.sroa.11.0.i58, %bb.bh ], [ %i.lc, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h66218f7bd18d4dd6E.exit.i" ] ; 10 uses
  %.sroa.5.1.lcssa.i64 = phi ptr [ %.sroa.5.0.i59, %bb.bh ], [ %i.ld, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h66218f7bd18d4dd6E.exit.i" ] ; 2 uses
  %i.jy = icmp eq i64 %.sroa.02.0.i60, %.sroa.15.0126362
  br i1 %i.jy, label %bb.bo, label %bb.bn

.lr.ph.i69:                                       ; preds = %bb.bh, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h66218f7bd18d4dd6E.exit.i"
  %.sroa.5.111.i70 = phi ptr [ %i.ld, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h66218f7bd18d4dd6E.exit.i" ], [ %.sroa.5.0.i59, %bb.bh ] ; 5 uses
  %.sroa.11.110.i71 = phi i64 [ %i.lc, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h66218f7bd18d4dd6E.exit.i" ], [ %.sroa.11.0.i58, %bb.bh ] ; 2 uses
  %.sroa.19.19.i72 = phi ptr [ %i.kz, %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h66218f7bd18d4dd6E.exit.i" ], [ %.sroa.19.0.i57, %bb.bh ]
  call void @llvm.experimental.noalias.scope.decl(metadata !5417)
  call void @llvm.experimental.noalias.scope.decl(metadata !5420)
  call void @llvm.experimental.noalias.scope.decl(metadata !5422)
  call void @llvm.experimental.noalias.scope.decl(metadata !5425)
  call void @llvm.experimental.noalias.scope.decl(metadata !5427)
  call void @llvm.experimental.noalias.scope.decl(metadata !5430)
  %i.jz = load i64, ptr %i.jt, align 8, !alias.scope !5432, !noalias !5433, !noundef !11 ; 4 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i70, i64 16
  %i.kb = load i64, ptr %i.ka, align 8, !alias.scope !5434, !noalias !5435, !noundef !11 ; 2 uses
  %.not.i.i.i.i73 = icmp eq i64 %i.jz, %i.kb
  br i1 %.not.i.i.i.i73, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %.lr.ph.i69
  %i.kc = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i70, i64 8
  %i.kd = load ptr, ptr %i.kc, align 8, !alias.scope !5434, !noalias !5435, !nonnull !11, !noundef !11
  %i.ke = load ptr, ptr %i.ju, align 8, !alias.scope !5432, !noalias !5433, !nonnull !11, !noundef !11
  %exitcond.not.i.i.i.i77369 = icmp eq i64 %i.jz, 0
  br i1 %exitcond.not.i.i.i.i77369, label %._crit_edge373, label %.lr.ph372

bb.bj:                                            ; preds = %.lr.ph.i69
  %i.kf = icmp ult i64 %i.jz, %i.kb
  br label %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h66218f7bd18d4dd6E.exit.i"

bb.bk:                                            ; preds = %bb.bl
  %i.kg = add i64 %.sroa.9.0.i.i.i.i76370, 1      ; 2 uses
  %exitcond.not.i.i.i.i77 = icmp eq i64 %i.kg, %i.jz
  br i1 %exitcond.not.i.i.i.i77, label %._crit_edge373, label %.lr.ph372

.lr.ph372:                                        ; preds = %bb.bi, %bb.bk
  %.sroa.9.0.i.i.i.i76370 = phi i64 [ %i.kg, %bb.bk ], [ 0, %bb.bi ] ; 3 uses
  %i.kh = getelementptr inbounds nuw [48 x i8], ptr %i.ke, i64 %.sroa.9.0.i.i.i.i76370 ; 2 uses
  %i.ki = getelementptr inbounds nuw [48 x i8], ptr %i.kd, i64 %.sroa.9.0.i.i.i.i76370 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kh, i64 32
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kh, i64 40
  %i.kl = load i64, ptr %i.kk, align 8, !noalias !5436, !noundef !11 ; 5 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.ki, i64 32
  %i.kn = getelementptr inbounds nuw i8, ptr %i.ki, i64 40
  %i.ko = load i64, ptr %i.kn, align 8, !noalias !5436, !noundef !11 ; 2 uses
  %.not16.i.i.i.i78 = icmp eq i64 %i.kl, %i.ko
  %.pre.i.i.i.i79 = load ptr, ptr %i.kj, align 8, !noalias !5436 ; 2 uses
  %.pre14.i.i.i.i80 = load ptr, ptr %i.km, align 8, !noalias !5436 ; 2 uses
  br i1 %.not16.i.i.i.i78, label %bb.bl, label %bb.bm

._crit_edge373:                                   ; preds = %bb.bk, %bb.bi
  %i.kp = load i64, ptr %i.jv, align 8, !alias.scope !5432, !noalias !5433, !noundef !11
  %i.kq = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i70, i64 128
  %i.kr = load i64, ptr %i.kq, align 8, !alias.scope !5434, !noalias !5435, !noundef !11
  %i.ks = icmp slt i64 %i.kp, %i.kr
  br label %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h66218f7bd18d4dd6E.exit.i"

bb.bl:                                            ; preds = %.lr.ph372
  %bcmp.i.i.i.i84 = call i32 @bcmp(ptr nonnull %.pre.i.i.i.i79, ptr nonnull %.pre14.i.i.i.i80, i64 %i.kl), !noalias !5436
  %.not17.i.i.i.i85 = icmp eq i32 %bcmp.i.i.i.i84, 0
  br i1 %.not17.i.i.i.i85, label %bb.bk, label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %.lr.ph372
  %.lcssa.i.i.i.i81 = phi i64 [ %i.ko, %.lr.ph372 ], [ %i.kl, %bb.bl ] ; 2 uses
  %i.kt = sub i64 %i.kl, %.lcssa.i.i.i.i81
  %..i.i.i.i82 = call i64 @llvm.umin.i64(i64 %i.kl, i64 %.lcssa.i.i.i.i81)
  %i.ku = call i32 @memcmp(ptr nonnull %.pre.i.i.i.i79, ptr nonnull %.pre14.i.i.i.i80, i64 %..i.i.i.i82), !noalias !5436 ; 2 uses
  %i.kv = sext i32 %i.ku to i64
  %i.kw = icmp eq i32 %i.ku, 0
  %spec.store.select.i.i.i.i83 = select i1 %i.kw, i64 %i.kt, i64 %i.kv
  %i.kx = icmp slt i64 %spec.store.select.i.i.i.i83, 0
  br label %"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h66218f7bd18d4dd6E.exit.i"

"_ZN4core5slice4sort6stable9quicksort9quicksort28_$u7b$$u7b$closure$u7d$$u7d$17h66218f7bd18d4dd6E.exit.i": ; preds = %bb.bm, %._crit_edge373, %bb.bj
  %.sroa.0.0.i.i.i.i74 = phi i1 [ %i.kf, %bb.bj ], [ %i.kx, %bb.bm ], [ %i.ks, %._crit_edge373 ] ; 2 uses
  %i.ky = xor i1 %.sroa.0.0.i.i.i.i74, true
  %i.kz = getelementptr inbounds i8, ptr %.sroa.19.19.i72, i64 -136 ; 3 uses
  %.sroa.01.0.i.i75 = select i1 %.sroa.0.0.i.i.i.i74, ptr %i.kz, ptr %2
  %i.la = getelementptr inbounds nuw [136 x i8], ptr %.sroa.01.0.i.i75, i64 %.sroa.11.110.i71
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.la, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.5.111.i70, i64 136, i1 false), !alias.scope !5437, !noalias !5438
  %i.lb = zext i1 %i.ky to i64
  %i.lc = add i64 %.sroa.11.110.i71, %i.lb        ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i70, i64 136 ; 3 uses
  %i.le = icmp ult ptr %i.ld, %i.jw
  br i1 %i.le, label %.lr.ph.i69, label %._crit_edge.i61

bb.bn:                                            ; preds = %._crit_edge.i61
  %i.lf = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i62, i64 -136
  %i.lg = getelementptr inbounds nuw [136 x i8], ptr %2, i64 %.sroa.11.1.lcssa.i63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.lg, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.5.1.lcssa.i64, i64 136, i1 false), !alias.scope !5437, !noalias !5441
  %i.lh = add i64 %.sroa.11.1.lcssa.i63, 1
  %i.li = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i64, i64 136
  br label %bb.bh

bb.bo:                                            ; preds = %._crit_edge.i61
  %i.lj = mul i64 %.sroa.11.1.lcssa.i63, 136
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph133, ptr nonnull align 8 %2, i64 %i.lj, i1 false), !alias.scope !5437
  %i.lk = sub i64 %.sroa.15.0126362, %.sroa.11.1.lcssa.i63 ; 6 uses
  %.not18.i65 = icmp eq i64 %.sroa.15.0126362, %.sroa.11.1.lcssa.i63
  br i1 %.not18.i65, label %.outer._crit_edge.thread, label %.lr.ph16.i66

.lr.ph16.i66:                                     ; preds = %bb.bo
  %i.ll = getelementptr [136 x i8], ptr %.sroa.0.0.ph133, i64 %.sroa.11.1.lcssa.i63 ; 3 uses
  %.neg488 = add i64 %.sroa.11.1.lcssa.i63, 1
  %i.lm = icmp eq i64 %.sroa.15.0126362, %.neg488
  br i1 %i.lm, label %.epil.preheader476, label %.lr.ph16.i66.new

.lr.ph16.i66.new:                                 ; preds = %.lr.ph16.i66
  %unroll_iter486 = and i64 %i.lk, -2
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bp, %.lr.ph16.i66.new
  %.sroa.04.014.i67 = phi i64 [ 0, %.lr.ph16.i66.new ], [ %i.lq, %bb.bp ] ; 5 uses
  %niter487 = phi i64 [ 0, %.lr.ph16.i66.new ], [ %niter487.next.1, %bb.bp ]
  %i.ln = xor i64 %.sroa.04.014.i67, -1
  %i.lo = getelementptr [136 x i8], ptr %i.js, i64 %i.ln
  %i.lp = getelementptr [136 x i8], ptr %i.ll, i64 %.sroa.04.014.i67
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.lp, ptr noundef nonnull align 8 dereferenceable(136) %i.lo, i64 136, i1 false), !alias.scope !5437
  %i.lq = add nuw i64 %.sroa.04.014.i67, 2        ; 2 uses
  %i.lr = xor i64 %.sroa.04.014.i67, -2
  %i.ls = getelementptr [136 x i8], ptr %i.js, i64 %i.lr
  %i.lt = getelementptr [136 x i8], ptr %i.ll, i64 %.sroa.04.014.i67
  %i.lu = getelementptr i8, ptr %i.lt, i64 136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.lu, ptr noundef nonnull align 8 dereferenceable(136) %i.ls, i64 136, i1 false), !alias.scope !5437
  %niter487.next.1 = add i64 %niter487, 2         ; 2 uses
  %niter487.ncmp.1 = icmp eq i64 %niter487.next.1, %unroll_iter486
  br i1 %niter487.ncmp.1, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h81e0e267793e5247E.exit.unr-lcssa, label %bb.bp

_ZN4core5slice4sort6stable9quicksort16stable_partition17h81e0e267793e5247E.exit.unr-lcssa: ; preds = %bb.bp
  %lcmp.mod484.not = trunc i64 %i.lk to i1
  br i1 %lcmp.mod484.not, label %.epil.preheader476, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h81e0e267793e5247E.exit

.epil.preheader476:                               ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h81e0e267793e5247E.exit.unr-lcssa, %.lr.ph16.i66
  %.sroa.04.014.i67.epil.init = phi i64 [ 0, %.lr.ph16.i66 ], [ %i.lq, %_ZN4core5slice4sort6stable9quicksort16stable_partition17h81e0e267793e5247E.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod485 = trunc i64 %i.lk to i1
  call void @llvm.assume(i1 %lcmp.mod485)
  %i.lv = xor i64 %.sroa.04.014.i67.epil.init, -1
  %i.lw = getelementptr [136 x i8], ptr %i.js, i64 %i.lv
  %i.lx = getelementptr [136 x i8], ptr %i.ll, i64 %.sroa.04.014.i67.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.lx, ptr noundef nonnull align 8 dereferenceable(136) %i.lw, i64 136, i1 false), !alias.scope !5437
  br label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h81e0e267793e5247E.exit

_ZN4core5slice4sort6stable9quicksort16stable_partition17h81e0e267793e5247E.exit: ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h81e0e267793e5247E.exit.unr-lcssa, %.epil.preheader476
  %i.ly = icmp ugt i64 %.sroa.11.1.lcssa.i63, %.sroa.15.0126362
  br i1 %i.ly, label %bb.bq, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h988d16c668be86a9E.exit", !prof !151

.outer._crit_edge.thread:                         ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h349116586d53f114E.exit

bb.bq:                                            ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h81e0e267793e5247E.exit
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %.sroa.11.1.lcssa.i63, i64 noundef %.sroa.15.0126362, i64 noundef %.sroa.15.0126362, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @185) #45, !noalias !5444
  unreachable

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h988d16c668be86a9E.exit": ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h81e0e267793e5247E.exit
  %i.lz = getelementptr inbounds nuw [136 x i8], ptr %.sroa.0.0.ph133, i64 %.sroa.11.1.lcssa.i63 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ma = icmp ult i64 %i.lk, 33
  br i1 %i.ma, label %.outer._crit_edge, label %.lr.ph

bb.br:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @182, ptr %i.a, align 8
  %i.mb = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.mb, align 8
  %i.mc = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.mc, align 8
  %i.md = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.md, align 8
  %i.me = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.me, align 8
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @184) #45
  unreachable

bb.bs:                                            ; preds = %bb.be
  %i.mf = getelementptr inbounds nuw [136 x i8], ptr %.sroa.0.0.ph133, i64 %.sroa.11.1.lcssa.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph133) ]
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h1c66bcc47c969732E(ptr noalias noundef nonnull align 8 %i.mf, i64 noundef %i.jd, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.dh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(136) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.mg = icmp ult i64 %.sroa.11.1.lcssa.i, 33
  br i1 %i.mg, label %.outer._crit_edge, label %bb.b
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 1 ptr @"_ZN4spin4once17Once$LT$T$C$R$GT$18try_call_once_slow17h004ca37d1eed6459E"() unnamed_addr #18 personality ptr @rust_eh_personality {
bb.a:
  %i.a = cmpxchg ptr @"_ZN81_$LT$prometheus..timer..UPDATER_IS_RUNNING$u20$as$u20$core..ops..deref..Deref$GT$5deref11__stability4LAZY17hd26fed9711c3be5eE", i8 0, i8 1 acquire acquire, align 1 ; 2 uses
  %.sroa.18.0.in.i10 = extractvalue { i8, i1 } %i.a, 1
  br i1 %.sroa.18.0.in.i10, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %"_ZN4spin4once17Once$LT$T$C$R$GT$4poll17h1c13d4ceec220830E.exit.thread"
  %.pn = phi { i8, i1 } [ %i.b, %"_ZN4spin4once17Once$LT$T$C$R$GT$4poll17h1c13d4ceec220830E.exit.thread" ], [ %i.a, %bb.a ]
  %.sroa.01.0.i12 = extractvalue { i8, i1 } %.pn, 0
  switch i8 %.sroa.01.0.i12, label %default.unreachable [
    i8 0, label %"_ZN4spin4once17Once$LT$T$C$R$GT$4poll17h1c13d4ceec220830E.exit.thread"
    i8 1, label %.preheader
    i8 2, label %"_ZN4spin4once17Once$LT$T$C$R$GT$4poll17h1c13d4ceec220830E.exit"
    i8 3, label %bb.d
  ], !prof !5447

._crit_edge:                                      ; preds = %"_ZN4spin4once17Once$LT$T$C$R$GT$4poll17h1c13d4ceec220830E.exit.thread", %bb.a
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @"_ZN81_$LT$prometheus..timer..UPDATER_IS_RUNNING$u20$as$u20$core..ops..deref..Deref$GT$5deref11__stability4LAZY17hd26fed9711c3be5eE", i64 1), align 1
  store atomic i8 2, ptr @"_ZN81_$LT$prometheus..timer..UPDATER_IS_RUNNING$u20$as$u20$core..ops..deref..Deref$GT$5deref11__stability4LAZY17hd26fed9711c3be5eE" release, align 1
  br label %"_ZN4spin4once17Once$LT$T$C$R$GT$4poll17h1c13d4ceec220830E.exit"

"_ZN4spin4once17Once$LT$T$C$R$GT$4poll17h1c13d4ceec220830E.exit": ; preds = %.lr.ph, %.preheader, %._crit_edge
  ret ptr getelementptr inbounds nuw (i8, ptr @"_ZN81_$LT$prometheus..timer..UPDATER_IS_RUNNING$u20$as$u20$core..ops..deref..Deref$GT$5deref11__stability4LAZY17hd26fed9711c3be5eE", i64 1)

default.unreachable:                              ; preds = %.lr.ph
  unreachable

"_ZN4spin4once17Once$LT$T$C$R$GT$4poll17h1c13d4ceec220830E.exit.thread": ; preds = %.preheader, %.lr.ph
  %i.b = cmpxchg ptr @"_ZN81_$LT$prometheus..timer..UPDATER_IS_RUNNING$u20$as$u20$core..ops..deref..Deref$GT$5deref11__stability4LAZY17hd26fed9711c3be5eE", i8 0, i8 1 acquire acquire, align 1 ; 2 uses
  %.sroa.18.0.in.i = extractvalue { i8, i1 } %i.b, 1
  br i1 %.sroa.18.0.in.i, label %._crit_edge, label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %bb.b
  %i.c = load atomic i8, ptr @"_ZN81_$LT$prometheus..timer..UPDATER_IS_RUNNING$u20$as$u20$core..ops..deref..Deref$GT$5deref11__stability4LAZY17hd26fed9711c3be5eE" acquire, align 1 ; 2 uses
  %i.d = icmp ult i8 %i.c, 4
  tail call void @llvm.assume(i1 %i.d)
  switch i8 %i.c, label %default.unreachable15 [
    i8 0, label %"_ZN4spin4once17Once$LT$T$C$R$GT$4poll17h1c13d4ceec220830E.exit.thread"
    i8 1, label %bb.b
    i8 2, label %"_ZN4spin4once17Once$LT$T$C$R$GT$4poll17h1c13d4ceec220830E.exit"
    i8 3, label %bb.c
  ], !prof !5447

default.unreachable15:                            ; preds = %.preheader
  unreachable

bb.b:                                             ; preds = %.preheader
  tail call void @llvm.x86.sse2.pause() #42
  br label %.preheader

bb.c:                                             ; preds = %.preheader
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @196, i64 noundef 38, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @197) #45
  unreachable

bb.d:                                             ; preds = %.lr.ph
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @193, i64 noundef 13, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @195) #45
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 dereferenceable(8) ptr @"_ZN4spin4once17Once$LT$T$C$R$GT$18try_call_once_slow17h0f93d9e76f2b9f74E"() unnamed_addr #18 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = cmpxchg ptr getelementptr inbounds nuw (i8, ptr @"_ZN82_$LT$prometheus..registry..DEFAULT_REGISTRY$u20$as$u20$core..ops..deref..Deref$GT$5deref11__stability4LAZY17h268aad8f4b3e9ebdE", i64 8), i8 0, i8 1 acquire acquire, align 1 ; 2 uses
  %.sroa.18.0.in.i10 = extractvalue { i8, i1 } %i.f, 1
  br i1 %.sroa.18.0.in.i10, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %"_ZN4spin4once17Once$LT$T$C$R$GT$4poll17hc2ffb134b2c2e50bE.exit.thread"
  %.pn = phi { i8, i1 } [ %i.t, %"_ZN4spin4once17Once$LT$T$C$R$GT$4poll17hc2ffb134b2c2e50bE.exit.thread" ], [ %i.f, %bb.a ]
  %.sroa.01.0.i12 = extractvalue { i8, i1 } %.pn, 0
  switch i8 %.sroa.01.0.i12, label %default.unreachable [
    i8 0, label %"_ZN4spin4once17Once$LT$T$C$R$GT$4poll17hc2ffb134b2c2e50bE.exit.thread"
    i8 1, label %.preheader
    i8 2, label %"_ZN4spin4once17Once$LT$T$C$R$GT$4poll17hc2ffb134b2c2e50bE.exit"
    i8 3, label %bb.q
  ], !prof !5447

._crit_edge:                                      ; preds = %"_ZN4spin4once17Once$LT$T$C$R$GT$4poll17hc2ffb134b2c2e50bE.exit.thread", %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr getelementptr inbounds nuw (i8, ptr @"_ZN82_$LT$prometheus..registry..DEFAULT_REGISTRY$u20$as$u20$core..ops..deref..Deref$GT$5deref11__stability4LAZY17h268aad8f4b3e9ebdE", i64 8), ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.g = invoke fastcc noundef nonnull ptr @"_ZN68_$LT$alloc..sync..Arc$LT$T$GT$$u20$as$u20$core..default..Default$GT$7default17h4d3dd46e6944d6d8E"()
          to label %.noexc unwind label %bb.l     ; 3 uses

.noexc:                                           ; preds = %._crit_edge
  store ptr %i.g, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_ZN10prometheus17process_collector16ProcessCollector8for_self17hab9b02288a1e1827E(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.a)
          to label %.noexc.i.i unwind label %bb.d

.noexc.i.i:                                       ; preds = %.noexc
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !5448
  %i.h = tail call noundef align 8 dereferenceable_or_null(88) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 88, i64 noundef 8) #42, !noalias !5448 ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.b, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h62344bcfc41a55f0E.exit.i.i.i", !prof !151

bb.b:                                             ; preds = %.noexc.i.i
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 88) #45
          to label %.noexc.i.i.i unwind label %bb.c, !noalias !5454

.noexc.i.i.i:                                     ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @"_ZN4core3ptr68drop_in_place$LT$prometheus..process_collector..ProcessCollector$GT$17h40a6a75fac1340cfE"(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.a) #46, !noalias !5454
  br label %.body.i.i.i

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h62344bcfc41a55f0E.exit.i.i.i": ; preds = %.noexc.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.h, ptr noundef nonnull align 8 dereferenceable(88) %i.a, i64 88, i1 false), !noalias !5454
  invoke void @_ZN10prometheus8registry8Registry8register17h1f532ff5185040d5E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d, ptr noundef nonnull align 1 %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @116)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h62344bcfc41a55f0E.exit.i.i.i", %.noexc
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.h, %bb.d, %bb.c
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.j, %bb.c ], [ %i.k, %bb.d ], [ %i.o, %bb.h ] ; 2 uses
  %i.l = atomicrmw sub ptr %i.g, i64 1 release, align 8, !noalias !5455
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.e, label %.body

bb.e:                                             ; preds = %.body.i.i.i
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17habf4c9d95c4e59b9E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.d)
          to label %.body unwind label %bb.k

bb.f:                                             ; preds = %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h62344bcfc41a55f0E.exit.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5462)
  %i.n = load i64, ptr %i.c, align 8, !range !318, !alias.scope !5462, !noundef !11
  %.not.i.i.i.i = icmp eq i64 %i.n, -9223372036854775804
  br i1 %.not.i.i.i.i, label %bb.m, label %bb.g, !prof !321

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5462
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @191, i64 noundef 43, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @190, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @311) #45
          to label %bb.i unwind label %bb.h, !noalias !5462
end_hunk_6
begin_hunk_7_@"_ZN98_$LT$prometheus..process_collector..ProcessCollector$u20$as$u20$prometheus..metrics..Collector$GT$7collect17h11e04a2df0f1d8f3E":bb.a
"_ZN136_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$alloc..vec..into_iter..IntoIter$LT$T$GT$$GT$$GT$11spec_extend17h01b349a7b98fbcf1E.exit123": ; preds = %bb.br, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.experimental.noalias.scope.decl(metadata !6680)
  %i.hh = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %.val4.i = load i32, ptr %i.hh, align 8, !range !477, !alias.scope !6680, !noundef !11
  %i.hi = call noundef i32 @close(i32 noundef %.val4.i) #42, !noalias !6680 ; 0 uses
  %.val.i124 = load i64, ptr %i.v, align 8, !alias.scope !6680 ; 2 uses
  %i.hj = icmp eq i64 %.val.i124, 0
  br i1 %i.hj, label %"_ZN4core3ptr45drop_in_place$LT$procfs..process..Process$GT$17h125faeb72ee222ddE.exit", label %bb.bs

bb.bs:                                            ; preds = %"_ZN136_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$alloc..vec..into_iter..IntoIter$LT$T$GT$$GT$$GT$11spec_extend17h01b349a7b98fbcf1E.exit123"
  %i.hk = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.val1.i125 = load ptr, ptr %i.hk, align 8, !alias.scope !6680, !nonnull !11, !noundef !11
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i125, i64 noundef %.val.i124, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !6680
  br label %"_ZN4core3ptr45drop_in_place$LT$procfs..process..Process$GT$17h125faeb72ee222ddE.exit"

"_ZN4core3ptr45drop_in_place$LT$procfs..process..Process$GT$17h125faeb72ee222ddE.exit": ; preds = %bb.bs, %"_ZN136_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$alloc..vec..into_iter..IntoIter$LT$T$GT$$GT$$GT$11spec_extend17h01b349a7b98fbcf1E.exit123", %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  ret void

bb.bt:                                            ; preds = %bb.j
  call fastcc void @"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$prometheus..proto..MetricFamily$GT$$GT$17h9ea4378102ccfcf3E"(ptr noalias noundef align 8 dereferenceable(24) %i.r) #46
  br label %.thread169

bb.bu:                                            ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.hl, align 8
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.hm, align 8
  call fastcc void @"_ZN4core3ptr43drop_in_place$LT$procfs_core..ProcError$GT$17h9239a85932bb9657E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %"_ZN4core3ptr45drop_in_place$LT$procfs..process..Process$GT$17h125faeb72ee222ddE.exit"
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h5b937d6ada5a72b2E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.val = load i64, ptr %i.b, align 8, !noundef !11
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val8 = load i64, ptr %i.c, align 8, !noundef !11
  %i.d = call fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17hccfa02af68edd295E(i64 %.val, i64 %.val8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a) ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !6683, !noalias !6688, !noundef !11
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.b, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hb0c5619dd44aa70bE.exit.i", !prof !151

bb.b:                                             ; preds = %bb.a
  %i.h = tail call { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h0f17c4ed12d1935bE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, i1 noundef zeroext true), !noalias !6692 ; 0 uses
  br label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hb0c5619dd44aa70bE.exit.i"

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hb0c5619dd44aa70bE.exit.i": ; preds = %bb.b, %bb.a
  %.val.i = load ptr, ptr %0, align 8, !alias.scope !6693, !noalias !6694, !nonnull !11, !noundef !11 ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val7.i = load i64, ptr %i.i, align 8, !alias.scope !6693, !noalias !6694, !noundef !11 ; 4 uses
  %i.j = lshr i64 %i.d, 57
  %i.k = trunc nuw nsw i64 %i.j to i8             ; 3 uses
  %.sroa.0.0.vec.insert.i.i.i = insertelement <16 x i8> poison, i8 %i.k, i64 0
  %.sroa.0.15.vec.insert.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hb0c5619dd44aa70bE.exit.i"
  %.pn.i.i = phi i64 [ %i.d, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hb0c5619dd44aa70bE.exit.i" ], [ %i.aj, %bb.f ]
  %.sroa.6.0.i.i = phi i64 [ undef, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hb0c5619dd44aa70bE.exit.i" ], [ %.sroa.6.120.i.i, %bb.f ]
  %.sroa.01.0.i.i = phi i64 [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hb0c5619dd44aa70bE.exit.i" ], [ %.sroa.01.122.i.i, %bb.f ]
  %i.l = phi i64 [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hb0c5619dd44aa70bE.exit.i" ], [ %i.ai, %bb.f ]
  %.sroa.0.017.i.i = and i64 %.pn.i.i, %.val7.i   ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.017.i.i
  %.sroa.0.0.copyload.i24.i.i = load <16 x i8>, ptr %i.m, align 1, !noalias !6695 ; 3 uses
  %i.n = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, %.sroa.0.15.vec.insert.i.i.i
  %i.o = bitcast <16 x i1> %i.n to i16            ; 2 uses
  %.not25.i.i = icmp eq i16 %i.o, 0
  br i1 %.not25.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  %.sroa.05.026.i.i = phi i16 [ %i.y, %bb.d ], [ %i.o, %bb.c ] ; 3 uses
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.026.i.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = add i64 %.sroa.0.017.i.i, %i.q
  %i.s = and i64 %i.r, %.val7.i
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr inbounds [8 x i8], ptr %.val.i, i64 %i.t
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -8
  %.val3.i.i = load i64, ptr %i.v, align 8, !noalias !6698, !noundef !11
  %i.w = icmp eq i64 %1, %.val3.i.i
  br i1 %i.w, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot17hf29a18ea3efdda3aE.exit", label %bb.d, !prof !321

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  %.not13.i.i = icmp eq i64 %.sroa.01.0.i.i, 1
  br i1 %.not13.i.i, label %.thread.i.i, label %bb.e, !prof !151

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.x = add i16 %.sroa.05.026.i.i, -1
  %i.y = and i16 %i.x, %.sroa.05.026.i.i          ; 2 uses
  %.not.i.i = icmp eq i16 %i.y, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.z = icmp slt <16 x i8> %.sroa.0.0.copyload.i24.i.i, zeroinitializer
  %i.aa = bitcast <16 x i1> %i.z to i16           ; 2 uses
  %.not.not.i.not.i.i = icmp eq i16 %i.aa, 0      ; 2 uses
  %i.ab = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.aa, i1 true)
  %i.ac = zext nneg i16 %i.ab to i64
  %.sroa.6.0.i.i.i = select i1 %.not.not.i.not.i.i, i64 undef, i64 %i.ac
  %i.ad = add i64 %.sroa.6.0.i.i.i, %.sroa.0.017.i.i
  %i.ae = and i64 %i.ad, %.val7.i
  br i1 %.not.not.i.not.i.i, label %bb.f, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.e, %._crit_edge.i.i
  %.sroa.6.121.i.i = phi i64 [ %i.ae, %bb.e ], [ %.sroa.6.0.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.af = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, splat (i8 -1)
  %i.ag = bitcast <16 x i1> %i.af to i16
  %i.ah = icmp eq i16 %i.ag, 0
  br i1 %i.ah, label %bb.f, label %bb.g, !prof !151

bb.f:                                             ; preds = %.thread.i.i, %bb.e
  %.sroa.01.122.i.i = phi i64 [ 1, %.thread.i.i ], [ 0, %bb.e ]
  %.sroa.6.120.i.i = phi i64 [ %.sroa.6.121.i.i, %.thread.i.i ], [ undef, %bb.e ]
  %i.ai = add i64 %i.l, 16                        ; 2 uses
  %i.aj = add i64 %i.ai, %.sroa.0.017.i.i
  br label %bb.c

bb.g:                                             ; preds = %.thread.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.6.121.i.i
  %i.al = load i8, ptr %i.ak, align 1, !noalias !6692, !noundef !11 ; 2 uses
  %i.am = icmp sgt i8 %i.al, -1
  br i1 %i.am, label %bb.h, label %bb.i, !prof !151

bb.h:                                             ; preds = %bb.g
  %.val2.i.i.i = load <16 x i8>, ptr %.val.i, align 16, !noalias !6692
  %i.an = icmp slt <16 x i8> %.val2.i.i.i, zeroinitializer
  %i.ao = bitcast <16 x i1> %i.an to i16          ; 2 uses
  %i.ap = icmp ne i16 %i.ao, 0
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ao, i1 true)
  %i.ar = zext nneg i16 %i.aq to i64              ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.ar
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !noalias !6701
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.as = phi i8 [ %.pre, %bb.h ], [ %i.al, %bb.g ]
  %.sroa.3.0.i.ph.i = phi i64 [ %i.ar, %bb.h ], [ %.sroa.6.121.i.i, %bb.g ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6701)
  %i.at = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.3.0.i.ph.i
  %i.au = and i8 %i.as, 1
  %i.av = zext nneg i8 %i.au to i64
  %i.aw = add i64 %.sroa.3.0.i.ph.i, -16
  %i.ax = and i64 %i.aw, %.val7.i
  store i8 %i.k, ptr %i.at, align 1, !noalias !6701
  %i.ay = getelementptr i8, ptr %.val.i, i64 %i.ax
  %i.az = getelementptr i8, ptr %i.ay, i64 16
  store i8 %i.k, ptr %i.az, align 1, !noalias !6701
  %i.ba = load <2 x i64>, ptr %i.e, align 8, !alias.scope !6701
  %i.bb = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.av, i64 0
  %i.bc = sub <2 x i64> %i.ba, %i.bb
  store <2 x i64> %i.bc, ptr %i.e, align 8, !alias.scope !6701
  %i.bd = sub nsw i64 0, %.sroa.3.0.i.ph.i
  %i.be = getelementptr inbounds [8 x i8], ptr %.val.i, i64 %i.bd
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 -8
  store i64 %1, ptr %i.bf, align 8, !noalias !6701
  br label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot17hf29a18ea3efdda3aE.exit"

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot17hf29a18ea3efdda3aE.exit": ; preds = %.lr.ph.i.i, %bb.i
  %.sroa.0.0 = phi i1 [ false, %bb.i ], [ true, %.lr.ph.i.i ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN9hashbrown3raw13RawTableInner15rehash_in_place17h6243273e76fbd181E(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 %1, ptr nofree readonly captures(none) %.40.val, i64 noundef range(i64 8, 65) %2, ptr noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %.val13 = load ptr, ptr %0, align 8             ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.val14 = load i64, ptr %i.b, align 8, !noundef !11
  %i.c = add i64 %.val14, 1                       ; 7 uses
  %.not6.i = icmp eq i64 %i.c, 0
  br i1 %.not6.i, label %_ZN9hashbrown3raw13RawTableInner23prepare_rehash_in_place17he54fe5d713f70050E.exit.thread20, label %.lr.ph.i

_ZN9hashbrown3raw13RawTableInner23prepare_rehash_in_place17he54fe5d713f70050E.exit.thread20: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13) ]
  %i.d = getelementptr inbounds nuw i8, ptr %.val13, i64 16
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.d, ptr nonnull align 1 %.val13, i64 %i.c, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %._crit_edge

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = lshr i64 %i.c, 4
  %i.f = and i64 %i.c, 15
  %.not9.i.i.i = icmp ne i64 %i.f, 0
  %i.g = zext i1 %.not9.i.i.i to i64
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.e, %i.g  ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13) ]
  %i.h = icmp eq i64 %.sroa.05.0.i.i.i, 1
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950
  br label %bb.b

._crit_edge.i.unr-lcssa:                          ; preds = %bb.b
  %lcmp.mod.not = trunc i64 %.sroa.05.0.i.i.i to i1
  br i1 %lcmp.mod.not, label %.epil.preheader, label %._crit_edge.i

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i
  %.sroa.0.08.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.r, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod40 = trunc i64 %.sroa.05.0.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod40)
  %i.i = getelementptr inbounds nuw i8, ptr %.val13, i64 %.sroa.0.08.i.epil.init ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.i, align 16
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7)
  %i.j = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>
  %i.k = or <2 x i64> %i.j, splat (i64 -9187201950435737472)
  store <2 x i64> %i.k, ptr %i.i, align 16
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %. = tail call i64 @llvm.umax.i64(i64 %i.c, i64 16)
  %.29 = tail call i64 @llvm.umin.i64(i64 %i.c, i64 16)
  %i.n = getelementptr inbounds nuw i8, ptr %.val13, i64 %.
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull align 1 %.val13, i64 %.29, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %3, ptr %i.l, align 8
  store i64 %2, ptr %i.m, align 8
  store ptr %0, ptr %i.a, align 8
  br label %.lr.ph

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.new
  %.sroa.0.08.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.r, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.b ]
  %i.o = getelementptr inbounds nuw i8, ptr %.val13, i64 %.sroa.0.08.i ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.o, align 16
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7)
  %i.p = bitcast <16 x i8> %.lobit.i.i to <2 x i64>
  %i.q = or <2 x i64> %i.p, splat (i64 -9187201950435737472)
  store <2 x i64> %i.q, ptr %i.o, align 16
  %i.r = add i64 %.sroa.0.08.i, 32                ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val13, i64 %.sroa.0.08.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.t, align 16
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7)
  %i.u = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>
  %i.v = or <2 x i64> %i.u, splat (i64 -9187201950435737472)
  store <2 x i64> %i.v, ptr %i.t, align 16
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %bb.b

.lr.ph:                                           ; preds = %._crit_edge.i, %bb.l
  %.sroa.0.17 = phi i64 [ %.sroa.0.1, %bb.l ], [ 1, %._crit_edge.i ] ; 3 uses
  %.sroa.0.06 = phi i64 [ %.sroa.0.17, %bb.l ], [ 0, %._crit_edge.i ] ; 8 uses
  %i.w = load ptr, ptr %0, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %.sroa.0.06
  %i.y = load i8, ptr %i.x, align 1, !noundef !11
  %.not = icmp eq i8 %i.y, -128
  br i1 %.not, label %bb.c, label %bb.l

._crit_edge.loopexit:                             ; preds = %bb.l
  %.pre = load i64, ptr %i.b, align 8             ; 2 uses
  %.pre13 = add i64 %.pre, 1
  %i.z = lshr i64 %.pre13, 3
  %i.aa = mul nuw i64 %i.z, 7
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZN9hashbrown3raw13RawTableInner23prepare_rehash_in_place17he54fe5d713f70050E.exit.thread20, %._crit_edge.loopexit
  %.pre-phi = phi i64 [ %i.aa, %._crit_edge.loopexit ], [ 0, %_ZN9hashbrown3raw13RawTableInner23prepare_rehash_in_place17he54fe5d713f70050E.exit.thread20 ]
  %i.ab = phi i64 [ %.pre, %._crit_edge.loopexit ], [ -1, %_ZN9hashbrown3raw13RawTableInner23prepare_rehash_in_place17he54fe5d713f70050E.exit.thread20 ] ; 2 uses
  %i.ac = icmp ult i64 %i.ab, 8
  %.sroa.06.0 = select i1 %i.ac, i64 %i.ab, i64 %.pre-phi
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !11
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = sub i64 %.sroa.06.0, %i.ae
  store i64 %i.ag, ptr %i.af, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.c:                                             ; preds = %.lr.ph
  %.neg = xor i64 %.sroa.0.06, -1
  %.neg9 = mul i64 %2, %.neg
  %i.ah = getelementptr inbounds i8, ptr %i.w, i64 %.neg9 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.k, %bb.c
  %i.ai = invoke noundef i64 %.40.val(ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.sroa.0.06)
          to label %bb.f unwind label %bb.e       ; 3 uses

bb.e:                                             ; preds = %bb.d
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr181drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..rehash_in_place..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h2032f093ad8cc711E"(ptr noalias noundef align 8 dereferenceable(24) %i.a) #46
          to label %bb.n unwind label %bb.m

bb.f:                                             ; preds = %bb.d
  %.val = load ptr, ptr %0, align 8, !nonnull !11, !noundef !11 ; 7 uses
  %.val12 = load i64, ptr %i.b, align 8, !noundef !11 ; 6 uses
  %.sroa.0.04.i = and i64 %.val12, %i.ai          ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.04.i
  %.sroa.0.0.copyload.i35.i = load <16 x i8>, ptr %i.ak, align 1, !noalias !6704
  %i.al = icmp slt <16 x i8> %.sroa.0.0.copyload.i35.i, zeroinitializer
  %i.am = bitcast <16 x i1> %i.al to i16          ; 2 uses
  %.not.not.i.not6.i = icmp eq i16 %i.am, 0
  br i1 %.not.not.i.not6.i, label %.lr.ph.i16, label %._crit_edge.i15, !prof !2388

.lr.ph.i16:                                       ; preds = %bb.f, %.lr.ph.i16
  %.sroa.0.07.i = phi i64 [ %.sroa.0.0.i, %.lr.ph.i16 ], [ %.sroa.0.04.i, %bb.f ]
  %i.an = phi i64 [ %i.ao, %.lr.ph.i16 ], [ 0, %bb.f ]
  %i.ao = add i64 %i.an, 16                       ; 2 uses
  %i.ap = add i64 %i.ao, %.sroa.0.07.i
  %.sroa.0.0.i = and i64 %i.ap, %.val12           ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i
  %.sroa.0.0.copyload.i3.i = load <16 x i8>, ptr %i.aq, align 1, !noalias !6704
  %i.ar = icmp slt <16 x i8> %.sroa.0.0.copyload.i3.i, zeroinitializer
  %i.as = bitcast <16 x i1> %i.ar to i16          ; 2 uses
  %.not.not.i.not.i = icmp eq i16 %i.as, 0
  br i1 %.not.not.i.not.i, label %.lr.ph.i16, label %._crit_edge.i15, !prof !2389

._crit_edge.i15:                                  ; preds = %.lr.ph.i16, %bb.f
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.04.i, %bb.f ], [ %.sroa.0.0.i, %.lr.ph.i16 ]
  %.lcssa.i = phi i16 [ %i.am, %bb.f ], [ %i.as, %.lr.ph.i16 ]
  %i.at = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.au = zext nneg i16 %i.at to i64
  %i.av = add i64 %.sroa.0.0.lcssa.i, %i.au
  %i.aw = and i64 %i.av, %.val12                  ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.val, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !noundef !11
  %i.az = icmp sgt i8 %i.ay, -1
  br i1 %i.az, label %bb.g, label %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17h8e144e2bab241514E.exit, !prof !151

bb.g:                                             ; preds = %._crit_edge.i15
  %.val2.i.i = load <16 x i8>, ptr %.val, align 16
  %i.ba = icmp slt <16 x i8> %.val2.i.i, zeroinitializer
  %i.bb = bitcast <16 x i1> %i.ba to i16          ; 2 uses
  %i.bc = icmp ne i16 %i.bb, 0
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bb, i1 true)
  %i.be = zext nneg i16 %i.bd to i64
  br label %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17h8e144e2bab241514E.exit

_ZN9hashbrown3raw13RawTableInner16find_insert_slot17h8e144e2bab241514E.exit: ; preds = %bb.g, %._crit_edge.i15
  %.sroa.0.0.i5.i = phi i64 [ %i.be, %bb.g ], [ %i.aw, %._crit_edge.i15 ] ; 4 uses
  %i.bf = sub i64 %.sroa.0.06, %.sroa.0.04.i
  %i.bg = sub i64 %.sroa.0.0.i5.i, %.sroa.0.04.i
  %i.bh = xor i64 %i.bg, %i.bf
  %.unshifted = and i64 %i.bh, %.val12
  %i.bi = icmp ult i64 %.unshifted, 16
  br i1 %i.bi, label %bb.i, label %bb.h, !prof !321

bb.h:                                             ; preds = %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17h8e144e2bab241514E.exit
  %.neg10 = xor i64 %.sroa.0.0.i5.i, -1
  %.neg11 = mul i64 %2, %.neg10
  %i.bj = getelementptr inbounds i8, ptr %.val, i64 %.neg11 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i5.i ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1, !noundef !11
  %i.bm = lshr i64 %i.ai, 57
  %i.bn = trunc nuw nsw i64 %i.bm to i8           ; 2 uses
  %i.bo = add i64 %.sroa.0.0.i5.i, -16
  %i.bp = and i64 %i.bo, %.val12
  store i8 %i.bn, ptr %i.bk, align 1
  %i.bq = load ptr, ptr %0, align 8, !nonnull !11, !noundef !11
  %i.br = getelementptr i8, ptr %i.bq, i64 %i.bp
  %i.bs = getelementptr i8, ptr %i.br, i64 16
  store i8 %i.bn, ptr %i.bs, align 1
  %i.bt = icmp eq i8 %i.bl, -1
  br i1 %i.bt, label %bb.j, label %bb.k

bb.i:                                             ; preds = %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17h8e144e2bab241514E.exit
  %i.bu = lshr i64 %i.ai, 57
  %i.bv = trunc nuw nsw i64 %i.bu to i8           ; 2 uses
  %i.bw = add i64 %.sroa.0.06, -16
  %i.bx = and i64 %.val12, %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.06
  store i8 %i.bv, ptr %i.by, align 1
  %i.bz = load ptr, ptr %0, align 8, !nonnull !11, !noundef !11
  %i.ca = getelementptr i8, ptr %i.bz, i64 %i.bx
  %i.cb = getelementptr i8, ptr %i.ca, i64 16
  store i8 %i.bv, ptr %i.cb, align 1
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.cc = add i64 %.sroa.0.06, -16
  %i.cd = load i64, ptr %i.b, align 8, !noundef !11
  %i.ce = and i64 %i.cd, %i.cc
  %i.cf = load ptr, ptr %0, align 8, !nonnull !11, !noundef !11
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.sroa.0.06
  store i8 -1, ptr %i.cg, align 1
  %i.ch = load ptr, ptr %0, align 8, !nonnull !11, !noundef !11
  %i.ci = getelementptr i8, ptr %i.ch, i64 %i.ce
  %i.cj = getelementptr i8, ptr %i.ci, i64 16
  store i8 -1, ptr %i.cj, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bj, ptr noundef nonnull align 1 dereferenceable(1) %i.ah, i64 %2, i1 false)
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  tail call fastcc void @_ZN4core3ptr19swap_nonoverlapping17h957ee2e35ee099ddE(ptr noundef %i.ah, ptr noundef %i.bj, i64 noundef %2)
  br label %bb.d

bb.l:                                             ; preds = %.lr.ph, %bb.j, %bb.i
  %i.ck = icmp ult i64 %.sroa.0.17, %i.c          ; 2 uses
  %i.cl = zext i1 %i.ck to i64
  %.sroa.0.1 = add nuw i64 %.sroa.0.17, %i.cl
end_hunk_7
begin_hunk_8_@llvm.abs.i64
!2766 = distinct !{!2766, !2767, !"_ZN9hashbrown3raw13RawTableInner10find_inner17heffc17b8df0c496cE: argument 0"}
!2767 = distinct !{!2767, !"_ZN9hashbrown3raw13RawTableInner10find_inner17heffc17b8df0c496cE"}
!2768 = !{!2766, !2763, !2760}
!2769 = !{!2770, !2771, !2740, !2742, !2743, !2735, !2737}
!2770 = distinct !{!2770, !2767, !"_ZN9hashbrown3raw13RawTableInner10find_inner17heffc17b8df0c496cE: argument 1"}
!2771 = distinct !{!2771, !2764, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h239c928eb3537d2aE: argument 1"}
!2772 = !{!2773, !2766, !2770, !2763, !2771, !2760, !2740, !2742, !2743, !2735, !2737}
!2773 = distinct !{!2773, !2774, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817ha3de055b02dafe96E: argument 0"}
!2774 = distinct !{!2774, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817ha3de055b02dafe96E"}
!2775 = !{!2776, !2766, !2770, !2763, !2771, !2760, !2740, !2742, !2743, !2735, !2737}
!2776 = distinct !{!2776, !2777, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h86ffba110f823273E: argument 0"}
!2777 = distinct !{!2777, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h86ffba110f823273E"}
!2778 = !{!2779, !2781, !2740, !2742, !2743, !2735, !2737}
!2779 = distinct !{!2779, !2780, !"_ZN10prometheus3vec22MetricVecCore$LT$T$GT$20get_or_create_metric17h421b17f61cc6d4d5E: argument 0"}
!2780 = distinct !{!2780, !"_ZN10prometheus3vec22MetricVecCore$LT$T$GT$20get_or_create_metric17h421b17f61cc6d4d5E"}
!2781 = distinct !{!2781, !2780, !"_ZN10prometheus3vec22MetricVecCore$LT$T$GT$20get_or_create_metric17h421b17f61cc6d4d5E: argument 1"}
!2782 = !{!2783}
!2783 = distinct !{!2783, !2784, !"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h73de27ed7cea4db3E: argument 0"}
!2784 = distinct !{!2784, !"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h73de27ed7cea4db3E"}
!2785 = !{!2786}
!2786 = distinct !{!2786, !2787, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h239c928eb3537d2aE: argument 0"}
!2787 = distinct !{!2787, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h239c928eb3537d2aE"}
!2788 = !{!2789}
!2789 = distinct !{!2789, !2790, !"_ZN9hashbrown3raw13RawTableInner10find_inner17heffc17b8df0c496cE: argument 0"}
!2790 = distinct !{!2790, !"_ZN9hashbrown3raw13RawTableInner10find_inner17heffc17b8df0c496cE"}
!2791 = !{!2789, !2786, !2783}
!2792 = !{!2793, !2794, !2779, !2781, !2740, !2742, !2743, !2735, !2737}
!2793 = distinct !{!2793, !2790, !"_ZN9hashbrown3raw13RawTableInner10find_inner17heffc17b8df0c496cE: argument 1"}
!2794 = distinct !{!2794, !2787, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h239c928eb3537d2aE: argument 1"}
!2795 = !{!2796, !2789, !2793, !2786, !2794, !2783, !2779, !2781, !2740, !2742, !2743, !2735, !2737}
!2796 = distinct !{!2796, !2797, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817ha3de055b02dafe96E: argument 0"}
!2797 = distinct !{!2797, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817ha3de055b02dafe96E"}
!2798 = !{!2799, !2789, !2793, !2786, !2794, !2783, !2779, !2781, !2740, !2742, !2743, !2735, !2737}
!2799 = distinct !{!2799, !2800, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h86ffba110f823273E: argument 0"}
!2800 = distinct !{!2800, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h86ffba110f823273E"}
!2801 = !{!2779, !2740, !2735, !2737}
!2802 = !{!2803, !2805, !2807, !2779, !2781, !2740, !2742, !2743, !2735, !2737}
!2803 = distinct !{!2803, !2804, !"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h718ff5f739986611E: argument 0"}
!2804 = distinct !{!2804, !"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h718ff5f739986611E"}
!2805 = distinct !{!2805, !2806, !"_ZN4core3ptr81drop_in_place$LT$alloc..sync..Arc$LT$prometheus..histogram..HistogramCore$GT$$GT$17h07a15bccc72a220bE: argument 0"}
!2806 = distinct !{!2806, !"_ZN4core3ptr81drop_in_place$LT$alloc..sync..Arc$LT$prometheus..histogram..HistogramCore$GT$$GT$17h07a15bccc72a220bE"}
!2807 = distinct !{!2807, !2808, !"_ZN4core3ptr53drop_in_place$LT$prometheus..histogram..Histogram$GT$17hf3cd97dddc14c963E: argument 0"}
!2808 = distinct !{!2808, !"_ZN4core3ptr53drop_in_place$LT$prometheus..histogram..Histogram$GT$17hf3cd97dddc14c963E"}
!2809 = !{!2810}
!2810 = distinct !{!2810, !2811, !"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h5fffc54ecc66b450E: argument 0"}
!2811 = distinct !{!2811, !"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h5fffc54ecc66b450E"}
!2812 = !{!2810, !2779, !2781, !2740, !2742, !2743, !2735, !2737}
!2813 = !{!2814, !2816, !2810}
!2814 = distinct !{!2814, !2815, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h231075ca935d9c7aE: argument 0"}
!2815 = distinct !{!2815, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h231075ca935d9c7aE"}
!2816 = distinct !{!2816, !2817, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot17h0ea24b62e0770e5dE: argument 0"}
!2817 = distinct !{!2817, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot17h0ea24b62e0770e5dE"}
!2818 = !{!2819, !2820, !2821, !2779, !2781, !2740, !2742, !2743, !2735, !2737}
!2819 = distinct !{!2819, !2815, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h231075ca935d9c7aE: argument 1"}
!2820 = distinct !{!2820, !2817, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot17h0ea24b62e0770e5dE: argument 1"}
!2821 = distinct !{!2821, !2817, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot17h0ea24b62e0770e5dE: argument 2"}
!2822 = !{!2816, !2810}
!2823 = !{!2820, !2821, !2779, !2781, !2740, !2742, !2743, !2735, !2737}
!2824 = !{!2825, !2820, !2779, !2781, !2740, !2742, !2743, !2735, !2737}
!2825 = distinct !{!2825, !2826, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817ha3de055b02dafe96E: argument 0"}
!2826 = distinct !{!2826, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817ha3de055b02dafe96E"}
!2827 = !{!2828, !2820, !2779, !2781, !2740, !2742, !2743, !2735, !2737}
!2828 = distinct !{!2828, !2829, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h96d71ca899a13651E: argument 0"}
!2829 = distinct !{!2829, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h96d71ca899a13651E"}
!2830 = !{!2820, !2779, !2781, !2740, !2742, !2743, !2735, !2737}
!2831 = !{!2832, !2779, !2781, !2740, !2742, !2743, !2735, !2737}
!2832 = distinct !{!2832, !2833, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14insert_in_slot17h8cfe789a911fc03eE: argument 0"}
!2833 = distinct !{!2833, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14insert_in_slot17h8cfe789a911fc03eE"}
!2834 = !{!2832}
!2835 = !{!2832, !2810}
!2836 = !{!2837, !2839, !2841, !2810, !2779, !2781, !2740, !2742, !2743, !2735, !2737}
!2837 = distinct !{!2837, !2838, !"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h718ff5f739986611E: argument 0"}
!2838 = distinct !{!2838, !"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h718ff5f739986611E"}
!2839 = distinct !{!2839, !2840, !"_ZN4core3ptr81drop_in_place$LT$alloc..sync..Arc$LT$prometheus..histogram..HistogramCore$GT$$GT$17h07a15bccc72a220bE: argument 0"}
!2840 = distinct !{!2840, !"_ZN4core3ptr81drop_in_place$LT$alloc..sync..Arc$LT$prometheus..histogram..HistogramCore$GT$$GT$17h07a15bccc72a220bE"}
!2841 = distinct !{!2841, !2842, !"_ZN4core3ptr53drop_in_place$LT$prometheus..histogram..Histogram$GT$17hf3cd97dddc14c963E: argument 0"}
!2842 = distinct !{!2842, !"_ZN4core3ptr53drop_in_place$LT$prometheus..histogram..Histogram$GT$17hf3cd97dddc14c963E"}
!2843 = !{!2844, !2846, !2848, !2850, !2779, !2781, !2740, !2742, !2743, !2735, !2737}
!2844 = distinct !{!2844, !2845, !"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h718ff5f739986611E: argument 0"}
!2845 = distinct !{!2845, !"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h718ff5f739986611E"}
!2846 = distinct !{!2846, !2847, !"_ZN4core3ptr81drop_in_place$LT$alloc..sync..Arc$LT$prometheus..histogram..HistogramCore$GT$$GT$17h07a15bccc72a220bE: argument 0"}
!2847 = distinct !{!2847, !"_ZN4core3ptr81drop_in_place$LT$alloc..sync..Arc$LT$prometheus..histogram..HistogramCore$GT$$GT$17h07a15bccc72a220bE"}
!2848 = distinct !{!2848, !2849, !"_ZN4core3ptr53drop_in_place$LT$prometheus..histogram..Histogram$GT$17hf3cd97dddc14c963E: argument 0"}
!2849 = distinct !{!2849, !"_ZN4core3ptr53drop_in_place$LT$prometheus..histogram..Histogram$GT$17hf3cd97dddc14c963E"}
!2850 = distinct !{!2850, !2851, !"_ZN4core3ptr81drop_in_place$LT$core..option..Option$LT$prometheus..histogram..Histogram$GT$$GT$17h436e4398484f60b7E: argument 0"}
!2851 = distinct !{!2851, !"_ZN4core3ptr81drop_in_place$LT$core..option..Option$LT$prometheus..histogram..Histogram$GT$$GT$17h436e4398484f60b7E"}
!2852 = !{!2853, !2743, !2735, !2737}
!2853 = distinct !{!2853, !2854, !"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h1a12b56b9c6d870fE: argument 0"}
!2854 = distinct !{!2854, !"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h1a12b56b9c6d870fE"}
!2855 = !{!2743, !2735, !2737}
!2856 = !{!2857, !2859, !2735, !2737}
!2857 = distinct !{!2857, !2858, !"_ZN10prometheus9histogram9Histogram5local17hde3ce61224017615E: argument 0"}
!2858 = distinct !{!2858, !"_ZN10prometheus9histogram9Histogram5local17hde3ce61224017615E"}
!2859 = distinct !{!2859, !2858, !"_ZN10prometheus9histogram9Histogram5local17hde3ce61224017615E: argument 1"}
!2860 = !{!2861, !2857, !2859, !2735, !2737}
!2861 = distinct !{!2861, !2862, !"_ZN10prometheus9histogram14LocalHistogram3new17hdd75ab166e17ecb7E: argument 0"}
!2862 = distinct !{!2862, !"_ZN10prometheus9histogram14LocalHistogram3new17hdd75ab166e17ecb7E"}
!2863 = !{!2864, !2861, !2857, !2859, !2735, !2737}
!2864 = distinct !{!2864, !2865, !"_ZN10prometheus9histogram18LocalHistogramCore3new17hded7c3c304013169E: argument 0"}
!2865 = distinct !{!2865, !"_ZN10prometheus9histogram18LocalHistogramCore3new17hded7c3c304013169E"}
!2866 = !{!2867, !2869, !2864, !2861, !2857, !2859, !2735, !2737}
!2867 = distinct !{!2867, !2868, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h1de69abea780020cE: argument 0"}
!2868 = distinct !{!2868, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h1de69abea780020cE"}
!2869 = distinct !{!2869, !2870, !"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h4ecfe51341529628E: argument 0"}
!2870 = distinct !{!2870, !"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h4ecfe51341529628E"}
!2871 = !{!2872, !2874, !2876, !2864, !2861, !2857, !2859, !2735, !2737}
!2872 = distinct !{!2872, !2873, !"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h718ff5f739986611E: argument 0"}
!2873 = distinct !{!2873, !"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h718ff5f739986611E"}
!2874 = distinct !{!2874, !2875, !"_ZN4core3ptr81drop_in_place$LT$alloc..sync..Arc$LT$prometheus..histogram..HistogramCore$GT$$GT$17h07a15bccc72a220bE: argument 0"}
!2875 = distinct !{!2875, !"_ZN4core3ptr81drop_in_place$LT$alloc..sync..Arc$LT$prometheus..histogram..HistogramCore$GT$$GT$17h07a15bccc72a220bE"}
!2876 = distinct !{!2876, !2877, !"_ZN4core3ptr53drop_in_place$LT$prometheus..histogram..Histogram$GT$17hf3cd97dddc14c963E: argument 0"}
!2877 = distinct !{!2877, !"_ZN4core3ptr53drop_in_place$LT$prometheus..histogram..Histogram$GT$17hf3cd97dddc14c963E"}
!2878 = !{!2879, !2881, !2883, !2735, !2737}
!2879 = distinct !{!2879, !2880, !"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h718ff5f739986611E: argument 0"}
!2880 = distinct !{!2880, !"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h718ff5f739986611E"}
!2881 = distinct !{!2881, !2882, !"_ZN4core3ptr81drop_in_place$LT$alloc..sync..Arc$LT$prometheus..histogram..HistogramCore$GT$$GT$17h07a15bccc72a220bE: argument 0"}
!2882 = distinct !{!2882, !"_ZN4core3ptr81drop_in_place$LT$alloc..sync..Arc$LT$prometheus..histogram..HistogramCore$GT$$GT$17h07a15bccc72a220bE"}
!2883 = distinct !{!2883, !2884, !"_ZN4core3ptr53drop_in_place$LT$prometheus..histogram..Histogram$GT$17hf3cd97dddc14c963E: argument 0"}
!2884 = distinct !{!2884, !"_ZN4core3ptr53drop_in_place$LT$prometheus..histogram..Histogram$GT$17hf3cd97dddc14c963E"}
!2885 = !{!2886, !2888, !2890, !2735, !2737}
!2886 = distinct !{!2886, !2887, !"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h718ff5f739986611E: argument 0"}
!2887 = distinct !{!2887, !"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h718ff5f739986611E"}
!2888 = distinct !{!2888, !2889, !"_ZN4core3ptr81drop_in_place$LT$alloc..sync..Arc$LT$prometheus..histogram..HistogramCore$GT$$GT$17h07a15bccc72a220bE: argument 0"}
!2889 = distinct !{!2889, !"_ZN4core3ptr81drop_in_place$LT$alloc..sync..Arc$LT$prometheus..histogram..HistogramCore$GT$$GT$17h07a15bccc72a220bE"}
!2890 = distinct !{!2890, !2891, !"_ZN4core3ptr53drop_in_place$LT$prometheus..histogram..Histogram$GT$17hf3cd97dddc14c963E: argument 0"}
!2891 = distinct !{!2891, !"_ZN4core3ptr53drop_in_place$LT$prometheus..histogram..Histogram$GT$17hf3cd97dddc14c963E"}
!2892 = !{!2893}
!2893 = distinct !{!2893, !2894, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14insert_no_grow17h371d9d331d941299E: argument 0"}
!2894 = distinct !{!2894, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14insert_no_grow17h371d9d331d941299E"}
!2895 = !{!2896, !2737}
!2896 = distinct !{!2896, !2894, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14insert_no_grow17h371d9d331d941299E: argument 1"}
!2897 = !{!2898, !2893, !2896, !2737}
!2898 = distinct !{!2898, !2899, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817ha3de055b02dafe96E: argument 0"}
!2899 = distinct !{!2899, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817ha3de055b02dafe96E"}
!2900 = !{!2893, !2896, !2737}
!2901 = !{!2893, !2737}
!2902 = !{!2737}
!2903 = !{!2904}
!2904 = distinct !{!2904, !2905, !"_ZN10prometheus3vec22MetricVecCore$LT$T$GT$17hash_label_values17h2ff007cab32022a9E: argument 1"}
!2905 = distinct !{!2905, !"_ZN10prometheus3vec22MetricVecCore$LT$T$GT$17hash_label_values17h2ff007cab32022a9E"}
!2906 = !{!2907}
!2907 = distinct !{!2907, !2905, !"_ZN10prometheus3vec22MetricVecCore$LT$T$GT$17hash_label_values17h2ff007cab32022a9E: argument 0"}
!2908 = !{!2909}
!2909 = distinct !{!2909, !2910, !"_ZN53_$LT$fnv..FnvHasher$u20$as$u20$core..hash..Hasher$GT$5write17he11455c4820aeed4E: argument 1"}
!2910 = distinct !{!2910, !"_ZN53_$LT$fnv..FnvHasher$u20$as$u20$core..hash..Hasher$GT$5write17he11455c4820aeed4E"}
!2911 = !{!2912, !2907, !2904}
!2912 = distinct !{!2912, !2910, !"_ZN53_$LT$fnv..FnvHasher$u20$as$u20$core..hash..Hasher$GT$5write17he11455c4820aeed4E: argument 0"}
!2913 = distinct !{!2913, !619}
!2914 = !{!2915}
!2915 = distinct !{!2915, !2916, !"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6remove17h915ff267e54b34c0E: argument 0"}
!2916 = distinct !{!2916, !"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6remove17h915ff267e54b34c0E"}
!2917 = !{!2918}
!2918 = distinct !{!2918, !2916, !"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6remove17h915ff267e54b34c0E: argument 1"}
!2919 = !{!2920}
!2920 = distinct !{!2920, !2921, !"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$12remove_entry17h03f395c68661c524E: argument 1"}
!2921 = distinct !{!2921, !"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$12remove_entry17h03f395c68661c524E"}
!2922 = !{!2920, !2918}
!2923 = !{!2924, !2925, !2915, !2926}
!2924 = distinct !{!2924, !2921, !"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$12remove_entry17h03f395c68661c524E: argument 0"}
!2925 = distinct !{!2925, !2921, !"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$12remove_entry17h03f395c68661c524E: argument 2"}
!2926 = distinct !{!2926, !2916, !"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6remove17h915ff267e54b34c0E: argument 2"}
!2927 = !{!2924, !2920, !2915, !2918}
!2928 = !{!2929}
!2929 = distinct !{!2929, !2930, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$12remove_entry17h9b19d016deecacb3E: argument 1"}
!2930 = distinct !{!2930, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$12remove_entry17h9b19d016deecacb3E"}
!2931 = !{!2932}
!2932 = distinct !{!2932, !2933, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17hd10c28ab3d69a8cbE: argument 0"}
!2933 = distinct !{!2933, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17hd10c28ab3d69a8cbE"}
!2934 = !{!2935}
!2935 = distinct !{!2935, !2936, !"_ZN9hashbrown3raw13RawTableInner10find_inner17heffc17b8df0c496cE: argument 0"}
!2936 = distinct !{!2936, !"_ZN9hashbrown3raw13RawTableInner10find_inner17heffc17b8df0c496cE"}
!2937 = !{!2935, !2932, !2929, !2920, !2918}
!2938 = !{!2939, !2940, !2941, !2924, !2925, !2915, !2926}
!2939 = distinct !{!2939, !2936, !"_ZN9hashbrown3raw13RawTableInner10find_inner17heffc17b8df0c496cE: argument 1"}
!2940 = distinct !{!2940, !2933, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17hd10c28ab3d69a8cbE: argument 1"}
!2941 = distinct !{!2941, !2930, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$12remove_entry17h9b19d016deecacb3E: argument 0"}
!2942 = !{!2943, !2935, !2939, !2932, !2940, !2941, !2929, !2924, !2920, !2925, !2915, !2918, !2926}
!2943 = distinct !{!2943, !2944, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817ha3de055b02dafe96E: argument 0"}
!2944 = distinct !{!2944, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817ha3de055b02dafe96E"}
!2945 = !{!2946, !2935, !2939, !2932, !2940, !2941, !2929, !2924, !2920, !2925, !2915, !2918, !2926}
!2946 = distinct !{!2946, !2947, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h6408d098cd62da61E: argument 0"}
!2947 = distinct !{!2947, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h6408d098cd62da61E"}
!2948 = !{!2949}
!2949 = distinct !{!2949, !2950, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$6remove17hb890ded7b6e10388E: argument 1"}
!2950 = distinct !{!2950, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$6remove17hb890ded7b6e10388E"}
!2951 = !{!2952}
!2952 = distinct !{!2952, !2953, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$13erase_no_drop17hb3fa595288863b69E: argument 0"}
!2953 = distinct !{!2953, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$13erase_no_drop17hb3fa595288863b69E"}
!2954 = !{!2955}
!2955 = distinct !{!2955, !2956, !"_ZN9hashbrown3raw13RawTableInner5erase17h75e87ac1c717ae58E: argument 0"}
!2956 = distinct !{!2956, !"_ZN9hashbrown3raw13RawTableInner5erase17h75e87ac1c717ae58E"}
!2957 = !{!2958, !2955, !2952, !2960, !2949, !2941, !2929, !2924, !2920, !2925, !2915, !2918, !2926}
!2958 = distinct !{!2958, !2959, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817ha3de055b02dafe96E: argument 0"}
!2959 = distinct !{!2959, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817ha3de055b02dafe96E"}
!2960 = distinct !{!2960, !2950, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$6remove17hb890ded7b6e10388E: argument 0"}
!2961 = !{!2962, !2955, !2952, !2960, !2949, !2941, !2929, !2924, !2920, !2925, !2915, !2918, !2926}
!2962 = distinct !{!2962, !2963, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817ha3de055b02dafe96E: argument 0"}
!2963 = distinct !{!2963, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817ha3de055b02dafe96E"}
!2964 = !{!2955, !2952, !2949, !2929, !2920, !2918}
!2965 = !{!2960, !2941, !2924, !2925, !2915, !2926}
!2966 = !{!2967}
!2967 = distinct !{!2967, !2968, !"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$prometheus..histogram..LocalHistogram$GT$$GT$17hf53102e7c6ecf39dE: argument 0"}
!2968 = distinct !{!2968, !"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$prometheus..histogram..LocalHistogram$GT$$GT$17hf53102e7c6ecf39dE"}
!2969 = !{!2955, !2952, !2960, !2949, !2941, !2929, !2924, !2920, !2925, !2915, !2918, !2926}
!2970 = !{!2918, !2926}
!2971 = !{!2972}
!2972 = distinct !{!2972, !2973, !"_ZN4core3ptr58drop_in_place$LT$prometheus..histogram..LocalHistogram$GT$17h935c9d3ed0e934bcE: argument 0"}
!2973 = distinct !{!2973, !"_ZN4core3ptr58drop_in_place$LT$prometheus..histogram..LocalHistogram$GT$17h935c9d3ed0e934bcE"}
!2974 = !{!2975}
!2975 = distinct !{!2975, !2976, !"_ZN10prometheus9histogram18LocalHistogramCore5flush17h90354324b30c82d3E: argument 0"}
!2976 = distinct !{!2976, !"_ZN10prometheus9histogram18LocalHistogramCore5flush17h90354324b30c82d3E"}
!2977 = !{!2978}
!2978 = distinct !{!2978, !2979, !"_ZN10prometheus9histogram18LocalHistogramCore5clear17h7c840d29e37456dfE: argument 0"}
!2979 = distinct !{!2979, !"_ZN10prometheus9histogram18LocalHistogramCore5clear17h7c840d29e37456dfE"}
!2980 = !{!2978, !2975}
!2981 = !{!2982}
!2982 = distinct !{!2982, !2983, !"_ZN4core3ptr89drop_in_place$LT$core..cell..RefCell$LT$prometheus..histogram..LocalHistogramCore$GT$$GT$17hb72706719e9d710fE: argument 0"}
!2983 = distinct !{!2983, !"_ZN4core3ptr89drop_in_place$LT$core..cell..RefCell$LT$prometheus..histogram..LocalHistogramCore$GT$$GT$17hb72706719e9d710fE"}
!2984 = !{!2985}
!2985 = distinct !{!2985, !2986, !"_ZN4core3ptr92drop_in_place$LT$core..cell..UnsafeCell$LT$prometheus..histogram..LocalHistogramCore$GT$$GT$17hd5540192089e0e35E: argument 0"}
!2986 = distinct !{!2986, !"_ZN4core3ptr92drop_in_place$LT$core..cell..UnsafeCell$LT$prometheus..histogram..LocalHistogramCore$GT$$GT$17hd5540192089e0e35E"}
!2987 = !{!2988}
!2988 = distinct !{!2988, !2989, !"_ZN4core3ptr62drop_in_place$LT$prometheus..histogram..LocalHistogramCore$GT$17h2e614f16702a1897E: argument 0"}
!2989 = distinct !{!2989, !"_ZN4core3ptr62drop_in_place$LT$prometheus..histogram..LocalHistogramCore$GT$17h2e614f16702a1897E"}
!2990 = !{!2991}
!2991 = distinct !{!2991, !2992, !"_ZN4core3ptr53drop_in_place$LT$prometheus..histogram..Histogram$GT$17hf3cd97dddc14c963E: argument 0"}
!2992 = distinct !{!2992, !"_ZN4core3ptr53drop_in_place$LT$prometheus..histogram..Histogram$GT$17hf3cd97dddc14c963E"}
!2993 = !{!2994}
!2994 = distinct !{!2994, !2995, !"_ZN4core3ptr81drop_in_place$LT$alloc..sync..Arc$LT$prometheus..histogram..HistogramCore$GT$$GT$17h07a15bccc72a220bE: argument 0"}
!2995 = distinct !{!2995, !"_ZN4core3ptr81drop_in_place$LT$alloc..sync..Arc$LT$prometheus..histogram..HistogramCore$GT$$GT$17h07a15bccc72a220bE"}
!2996 = !{!2997}
!2997 = distinct !{!2997, !2998, !"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h718ff5f739986611E: argument 0"}
!2998 = distinct !{!2998, !"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h718ff5f739986611E"}
!2999 = !{!2997, !2994, !2991, !2988, !2985, !2982, !2972, !2967}
!3000 = !{!2988, !2985, !2982, !2972, !2967}
!3001 = !{!3002}
!3002 = distinct !{!3002, !3003, !"_ZN10prometheus3vec22MetricVecCore$LT$T$GT$19delete_label_values17h89887be6cb6c315aE: argument 0"}
!3003 = distinct !{!3003, !"_ZN10prometheus3vec22MetricVecCore$LT$T$GT$19delete_label_values17h89887be6cb6c315aE"}
!3004 = !{!3005}
!3005 = distinct !{!3005, !3003, !"_ZN10prometheus3vec22MetricVecCore$LT$T$GT$19delete_label_values17h89887be6cb6c315aE: argument 1"}
!3006 = !{!3002, !3005}
!3007 = !{!3008}
!3008 = distinct !{!3008, !3009, !"_ZN10prometheus3vec22MetricVecCore$LT$T$GT$17hash_label_values17h2ff007cab32022a9E: argument 1"}
!3009 = distinct !{!3009, !"_ZN10prometheus3vec22MetricVecCore$LT$T$GT$17hash_label_values17h2ff007cab32022a9E"}
!3010 = !{!3008, !3005}
!3011 = !{!3012, !3002}
!3012 = distinct !{!3012, !3009, !"_ZN10prometheus3vec22MetricVecCore$LT$T$GT$17hash_label_values17h2ff007cab32022a9E: argument 0"}
!3013 = !{!3014}
!3014 = distinct !{!3014, !3015, !"_ZN53_$LT$fnv..FnvHasher$u20$as$u20$core..hash..Hasher$GT$5write17he11455c4820aeed4E: argument 1"}
!3015 = distinct !{!3015, !"_ZN53_$LT$fnv..FnvHasher$u20$as$u20$core..hash..Hasher$GT$5write17he11455c4820aeed4E"}
!3016 = !{!3017, !3012, !3008, !3002}
!3017 = distinct !{!3017, !3015, !"_ZN53_$LT$fnv..FnvHasher$u20$as$u20$core..hash..Hasher$GT$5write17he11455c4820aeed4E: argument 0"}
!3018 = distinct !{!3018, !619}
!3019 = !{!3020}
!3020 = distinct !{!3020, !3021, !"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6remove17h8e0002b18801008cE: argument 0"}
!3021 = distinct !{!3021, !"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6remove17h8e0002b18801008cE"}
!3022 = !{!3023}
!3023 = distinct !{!3023, !3024, !"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$12remove_entry17h078ec4cda9d4e312E: argument 0"}
!3024 = distinct !{!3024, !"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$12remove_entry17h078ec4cda9d4e312E"}
!3025 = !{!3026}
!3026 = distinct !{!3026, !3027, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$12remove_entry17h1d90af38ffc4b99dE: argument 0"}
!3027 = distinct !{!3027, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$12remove_entry17h1d90af38ffc4b99dE"}
!3028 = !{!3029}
!3029 = distinct !{!3029, !3030, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h239c928eb3537d2aE: argument 0"}
!3030 = distinct !{!3030, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h239c928eb3537d2aE"}
!3031 = !{!3032}
!3032 = distinct !{!3032, !3033, !"_ZN9hashbrown3raw13RawTableInner10find_inner17heffc17b8df0c496cE: argument 0"}
!3033 = distinct !{!3033, !"_ZN9hashbrown3raw13RawTableInner10find_inner17heffc17b8df0c496cE"}
!3034 = !{!3032, !3029, !3026, !3023, !3020}
!3035 = !{!3036, !3037, !3002, !3005}
!3036 = distinct !{!3036, !3033, !"_ZN9hashbrown3raw13RawTableInner10find_inner17heffc17b8df0c496cE: argument 1"}
!3037 = distinct !{!3037, !3030, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h239c928eb3537d2aE: argument 1"}
!3038 = !{!3039, !3032, !3036, !3029, !3037, !3026, !3023, !3020, !3002}
!3039 = distinct !{!3039, !3040, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817ha3de055b02dafe96E: argument 0"}
!3040 = distinct !{!3040, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817ha3de055b02dafe96E"}
!3041 = !{!3042, !3032, !3036, !3029, !3037, !3026, !3023, !3020, !3002}
!3042 = distinct !{!3042, !3043, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h86ffba110f823273E: argument 0"}
!3043 = distinct !{!3043, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h86ffba110f823273E"}
!3044 = !{!3045}
!3045 = distinct !{!3045, !3046, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$6remove17h535e6691c662815cE: argument 1"}
!3046 = distinct !{!3046, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$6remove17h535e6691c662815cE"}
!3047 = !{!3048}
!3048 = distinct !{!3048, !3049, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$13erase_no_drop17h507617a6180ad724E: argument 0"}
!3049 = distinct !{!3049, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$13erase_no_drop17h507617a6180ad724E"}
!3050 = !{!3051}
!3051 = distinct !{!3051, !3052, !"_ZN9hashbrown3raw13RawTableInner5erase17h75e87ac1c717ae58E: argument 0"}
!3052 = distinct !{!3052, !"_ZN9hashbrown3raw13RawTableInner5erase17h75e87ac1c717ae58E"}
!3053 = !{!3054, !3051, !3048, !3056, !3045, !3026, !3023, !3020, !3002}
!3054 = distinct !{!3054, !3055, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817ha3de055b02dafe96E: argument 0"}
!3055 = distinct !{!3055, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817ha3de055b02dafe96E"}
!3056 = distinct !{!3056, !3046, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$6remove17h535e6691c662815cE: argument 0"}
!3057 = !{!3058, !3051, !3048, !3056, !3045, !3026, !3023, !3020, !3002}
!3058 = distinct !{!3058, !3059, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817ha3de055b02dafe96E: argument 0"}
!3059 = distinct !{!3059, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817ha3de055b02dafe96E"}
!3060 = !{!3051, !3048, !3045, !3026, !3023, !3020}
!3061 = !{!3056, !3002, !3005}
!3062 = !{!3051, !3048, !3056, !3045, !3026, !3023, !3020, !3002}
!3063 = !{!3056, !3045, !3026, !3023, !3020, !3002}
!3064 = !{!3065, !3067, !3069, !3071, !3002}
!3065 = distinct !{!3065, !3066, !"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h718ff5f739986611E: argument 0"}
!3066 = distinct !{!3066, !"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h718ff5f739986611E"}
!3067 = distinct !{!3067, !3068, !"_ZN4core3ptr81drop_in_place$LT$alloc..sync..Arc$LT$prometheus..histogram..HistogramCore$GT$$GT$17h07a15bccc72a220bE: argument 0"}
!3068 = distinct !{!3068, !"_ZN4core3ptr81drop_in_place$LT$alloc..sync..Arc$LT$prometheus..histogram..HistogramCore$GT$$GT$17h07a15bccc72a220bE"}
!3069 = distinct !{!3069, !3070, !"_ZN4core3ptr53drop_in_place$LT$prometheus..histogram..Histogram$GT$17hf3cd97dddc14c963E: argument 0"}
!3070 = distinct !{!3070, !"_ZN4core3ptr53drop_in_place$LT$prometheus..histogram..Histogram$GT$17hf3cd97dddc14c963E"}
!3071 = distinct !{!3071, !3072, !"_ZN4core3ptr81drop_in_place$LT$core..option..Option$LT$prometheus..histogram..Histogram$GT$$GT$17h436e4398484f60b7E: argument 0"}
!3072 = distinct !{!3072, !"_ZN4core3ptr81drop_in_place$LT$core..option..Option$LT$prometheus..histogram..Histogram$GT$$GT$17h436e4398484f60b7E"}
!3073 = !{!3074, !3076, !3077, !3079, !3002, !3005}
!3074 = distinct !{!3074, !3075, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17he442234b07d6e6dfE: argument 0"}
!3075 = distinct !{!3075, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17he442234b07d6e6dfE"}
!3076 = distinct !{!3076, !3075, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17he442234b07d6e6dfE: argument 1"}
!3077 = distinct !{!3077, !3078, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17h7c13b3c9b79e4c00E: argument 0"}
!3078 = distinct !{!3078, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17h7c13b3c9b79e4c00E"}
!3079 = distinct !{!3079, !3078, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17h7c13b3c9b79e4c00E: argument 1"}
!3080 = !{!3074, !3077, !3002, !3005}
!3081 = !{!3082, !3084, !3086}
!3082 = distinct !{!3082, !3083, !"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2f506f4e73919b1dE: argument 0"}
!3083 = distinct !{!3083, !"_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2f506f4e73919b1dE"}
!3084 = distinct !{!3084, !3085, !"_ZN4core3ptr125drop_in_place$LT$alloc..sync..Arc$LT$prometheus..vec..MetricVecCore$LT$prometheus..histogram..HistogramVecBuilder$GT$$GT$$GT$17h9b878d0cba0e50f0E: argument 0"}
!3085 = distinct !{!3085, !"_ZN4core3ptr125drop_in_place$LT$alloc..sync..Arc$LT$prometheus..vec..MetricVecCore$LT$prometheus..histogram..HistogramVecBuilder$GT$$GT$$GT$17h9b878d0cba0e50f0E"}
!3086 = distinct !{!3086, !3087, !"_ZN4core3ptr97drop_in_place$LT$prometheus..vec..MetricVec$LT$prometheus..histogram..HistogramVecBuilder$GT$$GT$17h37eee8b8dd9e97fdE: argument 0"}
!3087 = distinct !{!3087, !"_ZN4core3ptr97drop_in_place$LT$prometheus..vec..MetricVec$LT$prometheus..histogram..HistogramVecBuilder$GT$$GT$17h37eee8b8dd9e97fdE"}
!3088 = !{!3089, !3091, !3093, !3095}
!3089 = distinct !{!3089, !3090, !"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$11get_or_init17hf4da554f1e3ef4ddE: argument 0"}
!3090 = distinct !{!3090, !"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$11get_or_init17hf4da554f1e3ef4ddE"}
!3091 = distinct !{!3091, !3092, !"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17hafaeeb4f66dff27bE: argument 0"}
!3092 = distinct !{!3092, !"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17hafaeeb4f66dff27bE"}
!3093 = distinct !{!3093, !3094, !"_ZN4core3ops8function6FnOnce9call_once17h2bb1aa571bc69d16E: argument 0"}
!3094 = distinct !{!3094, !"_ZN4core3ops8function6FnOnce9call_once17h2bb1aa571bc69d16E"}
!3095 = distinct !{!3095, !3096, !"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17ha4a0bc70bf56f4b9E: argument 0"}
!3096 = distinct !{!3096, !"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17ha4a0bc70bf56f4b9E"}
!3097 = !{!3095}
!3098 = !{!3099, !3095}
!3099 = distinct !{!3099, !3100, !"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h086057ffb1640e00E: argument 0"}
!3100 = distinct !{!3100, !"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h086057ffb1640e00E"}
!3101 = !{!3102}
!3102 = distinct !{!3102, !3103, !"_ZN9hashbrown3map24HashMap$LT$K$C$V$C$S$GT$24with_capacity_and_hasher17hbc4153e2437b9a37E: argument 0"}
!3103 = distinct !{!3103, !"_ZN9hashbrown3map24HashMap$LT$K$C$V$C$S$GT$24with_capacity_and_hasher17hbc4153e2437b9a37E"}
!3104 = !{!3105}
!3105 = distinct !{!3105, !3106, !"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$4iter17hdf81397603b978a8E: argument 1"}
!3106 = distinct !{!3106, !"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$4iter17hdf81397603b978a8E"}
!3107 = !{!3108}
!3108 = distinct !{!3108, !3106, !"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$4iter17hdf81397603b978a8E: argument 0"}
!3109 = !{!3110, !3108, !3105}
!3110 = distinct !{!3110, !3111, !"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$3new17h71acdf80554ece30E: argument 0"}
!3111 = distinct !{!3111, !"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$3new17h71acdf80554ece30E"}
!3112 = !{!3113, !3115}
!3113 = distinct !{!3113, !3114, !"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hfe9db75a75a43140E: argument 0"}
!3114 = distinct !{!3114, !"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hfe9db75a75a43140E"}
!3115 = distinct !{!3115, !3116, !"_ZN92_$LT$hashbrown..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h03d8a01f1f0c9a80E: argument 0"}
!3116 = distinct !{!3116, !"_ZN92_$LT$hashbrown..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h03d8a01f1f0c9a80E"}
!3117 = !{!3118}
!3118 = distinct !{!3118, !3119, !"_ZN10prometheus9histogram19LocalHistogramTimer7observe17h95fabe4e735ea936E: argument 0"}
!3119 = distinct !{!3119, !"_ZN10prometheus9histogram19LocalHistogramTimer7observe17h95fabe4e735ea936E"}
!3120 = !{!3121}
!3121 = distinct !{!3121, !3122, !"_ZN10prometheus9histogram7Instant7elapsed17hec7dd57573316194E: argument 0"}
!3122 = distinct !{!3122, !"_ZN10prometheus9histogram7Instant7elapsed17hec7dd57573316194E"}
!3123 = !{!3121, !3118}
!3124 = !{!3125}
!3125 = distinct !{!3125, !3126, !"_ZN10prometheus9histogram18LocalHistogramCore7observe17h0e62b718a100e0c1E: argument 0"}
!3126 = distinct !{!3126, !"_ZN10prometheus9histogram18LocalHistogramCore7observe17h0e62b718a100e0c1E"}
!3127 = !{!3125, !3118}
!3128 = !{!3129, !3131}
!3129 = distinct !{!3129, !3130, !"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17h8a228672509b2223E: argument 0"}
!3130 = distinct !{!3130, !"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17h8a228672509b2223E"}
!3131 = distinct !{!3131, !3132, !"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold9enumerate28_$u7b$$u7b$closure$u7d$$u7d$17h81b269be608633a0E: argument 0"}
!3132 = distinct !{!3132, !"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold9enumerate28_$u7b$$u7b$closure$u7d$$u7d$17h81b269be608633a0E"}
!3133 = !{!3134, !3136, !3137, !3125, !3118}
!3134 = distinct !{!3134, !3135, !"_ZN4core4iter6traits8iterator8Iterator8try_fold17h675a0a0fe8accc43E: argument 0"}
!3135 = distinct !{!3135, !"_ZN4core4iter6traits8iterator8Iterator8try_fold17h675a0a0fe8accc43E"}
!3136 = distinct !{!3136, !3135, !"_ZN4core4iter6traits8iterator8Iterator8try_fold17h675a0a0fe8accc43E: argument 1"}
!3137 = distinct !{!3137, !3135, !"_ZN4core4iter6traits8iterator8Iterator8try_fold17h675a0a0fe8accc43E: argument 2"}
!3138 = !{!3139}
!3139 = distinct !{!3139, !3140, !"_ZN10prometheus9histogram19LocalHistogramTimer7observe17h95fabe4e735ea936E: argument 0"}
!3140 = distinct !{!3140, !"_ZN10prometheus9histogram19LocalHistogramTimer7observe17h95fabe4e735ea936E"}
!3141 = !{!3142}
!3142 = distinct !{!3142, !3143, !"_ZN10prometheus9histogram7Instant7elapsed17hec7dd57573316194E: argument 0"}
!3143 = distinct !{!3143, !"_ZN10prometheus9histogram7Instant7elapsed17hec7dd57573316194E"}
!3144 = !{!3142, !3139}
!3145 = !{!3146}
!3146 = distinct !{!3146, !3147, !"_ZN10prometheus9histogram7Instant7elapsed17hec7dd57573316194E: argument 0"}
!3147 = distinct !{!3147, !"_ZN10prometheus9histogram7Instant7elapsed17hec7dd57573316194E"}
!3148 = !{!3149}
!3149 = distinct !{!3149, !3150, !"_ZN10prometheus9histogram18LocalHistogramCore7observe17h0e62b718a100e0c1E: argument 0"}
!3150 = distinct !{!3150, !"_ZN10prometheus9histogram18LocalHistogramCore7observe17h0e62b718a100e0c1E"}
!3151 = !{!3152, !3154}
!3152 = distinct !{!3152, !3153, !"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17h8a228672509b2223E: argument 0"}
!3153 = distinct !{!3153, !"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17h8a228672509b2223E"}
!3154 = distinct !{!3154, !3155, !"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold9enumerate28_$u7b$$u7b$closure$u7d$$u7d$17h81b269be608633a0E: argument 0"}
!3155 = distinct !{!3155, !"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold9enumerate28_$u7b$$u7b$closure$u7d$$u7d$17h81b269be608633a0E"}
!3156 = !{!3157, !3159, !3160, !3149}
!3157 = distinct !{!3157, !3158, !"_ZN4core4iter6traits8iterator8Iterator8try_fold17h675a0a0fe8accc43E: argument 0"}
!3158 = distinct !{!3158, !"_ZN4core4iter6traits8iterator8Iterator8try_fold17h675a0a0fe8accc43E"}
!3159 = distinct !{!3159, !3158, !"_ZN4core4iter6traits8iterator8Iterator8try_fold17h675a0a0fe8accc43E: argument 1"}
!3160 = distinct !{!3160, !3158, !"_ZN4core4iter6traits8iterator8Iterator8try_fold17h675a0a0fe8accc43E: argument 2"}
!3161 = !{!3162, !3164, !3165, !3167}
!3162 = distinct !{!3162, !3163, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17he442234b07d6e6dfE: argument 0"}
!3163 = distinct !{!3163, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17he442234b07d6e6dfE"}
!3164 = distinct !{!3164, !3163, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17he442234b07d6e6dfE: argument 1"}
!3165 = distinct !{!3165, !3166, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17h7c13b3c9b79e4c00E: argument 0"}
!3166 = distinct !{!3166, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17h7c13b3c9b79e4c00E"}
!3167 = distinct !{!3167, !3166, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17h7c13b3c9b79e4c00E: argument 1"}
!3168 = !{!3162, !3165}
!3169 = !{!3170, !3172, !3173, !3175}
!3170 = distinct !{!3170, !3171, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17he442234b07d6e6dfE: argument 0"}
!3171 = distinct !{!3171, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17he442234b07d6e6dfE"}
!3172 = distinct !{!3172, !3171, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17he442234b07d6e6dfE: argument 1"}
!3173 = distinct !{!3173, !3174, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17h7c13b3c9b79e4c00E: argument 0"}
!3174 = distinct !{!3174, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17h7c13b3c9b79e4c00E"}
!3175 = distinct !{!3175, !3174, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17h7c13b3c9b79e4c00E: argument 1"}
!3176 = !{!3170, !3173}
!3177 = !{!3178, !3180}
!3178 = distinct !{!3178, !3179, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h1de69abea780020cE: argument 0"}
!3179 = distinct !{!3179, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h1de69abea780020cE"}
!3180 = distinct !{!3180, !3181, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4c5b8c4aa4b3e4beE: argument 0"}
!3181 = distinct !{!3181, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4c5b8c4aa4b3e4beE"}
!3182 = !{!3183, !3185, !3186, !3188}
!3183 = distinct !{!3183, !3184, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17he442234b07d6e6dfE: argument 0"}
!3184 = distinct !{!3184, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17he442234b07d6e6dfE"}
!3185 = distinct !{!3185, !3184, !"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17he442234b07d6e6dfE: argument 1"}
!3186 = distinct !{!3186, !3187, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17h7c13b3c9b79e4c00E: argument 0"}
!3187 = distinct !{!3187, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17h7c13b3c9b79e4c00E"}
!3188 = distinct !{!3188, !3187, !"_ZN4core6option15Option$LT$T$GT$11map_or_else17h7c13b3c9b79e4c00E: argument 1"}
!3189 = !{!3183, !3186}
!3190 = !{!3191}
!3191 = distinct !{!3191, !3192, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hf3f3dcc688baf282E: argument 0"}
!3192 = distinct !{!3192, !"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hf3f3dcc688baf282E"}
!3193 = !{!3194, !3196, !3198, !3200}
!3194 = distinct !{!3194, !3195, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h1de69abea780020cE: argument 0"}
!3195 = distinct !{!3195, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h1de69abea780020cE"}
!3196 = distinct !{!3196, !3197, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4c5b8c4aa4b3e4beE: argument 0"}
!3197 = distinct !{!3197, !"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4c5b8c4aa4b3e4beE"}
!3198 = distinct !{!3198, !3199, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h3be054707b38382fE: argument 0"}
!3199 = distinct !{!3199, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h3be054707b38382fE"}
!3200 = distinct !{!3200, !3199, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h3be054707b38382fE: argument 1"}
end_hunk_8
