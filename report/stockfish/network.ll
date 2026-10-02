Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stockfish/original/network?download=true
inline.NumInlined: 1222
inline.NumDeleted: 483
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 64
begin_hunk_0_@_ZNK9Stockfish4Eval4NNUE7NetworkINS1_19NetworkArchitectureILj1024ELi15ELi32EEENS1_18FeatureTransformerILj1024EEEE8evaluateERKNS_8PositionERNS1_16AccumulatorStackERNS1_17AccumulatorCaches5CacheILj1024EEE:bb.a
  %i.aj = call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.ag, <8 x i16> %i.ai)
  store <16 x i8> %i.aj, ptr %i.ae, align 64, !tbaa !62
  %i.ak = getelementptr inbounds nuw i8, ptr %i.o, i64 143
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.ak, ptr noundef nonnull align 64 dereferenceable(15) %i.ae, i64 15, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %i.n, i64 16512
  %i.am = getelementptr inbounds nuw i8, ptr %i.o, i64 256
  %.sroa.0.0.copyload.i.i = load <16 x i32>, ptr %i.al, align 64, !tbaa !62
  %.sroa.20.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16576
  %.sroa.20.0.copyload.i.i = load <16 x i32>, ptr %.sroa.20.0..sroa_idx.i.i, align 64, !tbaa !62
  %i.an = getelementptr inbounds nuw i8, ptr %i.n, i64 16640
  %i.ao = load <1 x i32>, ptr %i.p, align 64
  %i.ap = shufflevector <1 x i32> %i.ao, <1 x i32> poison, <16 x i32> zeroinitializer
  %i.aq = bitcast <16 x i32> %i.ap to <64 x i8>   ; 2 uses
  %i.ar = load <64 x i8>, ptr %i.an, align 64, !tbaa !62
  %i.as = call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %.sroa.0.0.copyload.i.i, <64 x i8> %i.aq, <64 x i8> %i.ar)
  %i.at = getelementptr inbounds nuw i8, ptr %i.n, i64 16704
  %i.au = load <64 x i8>, ptr %i.at, align 64, !tbaa !62
  %i.av = call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %.sroa.20.0.copyload.i.i, <64 x i8> %i.aq, <64 x i8> %i.au)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.o, i64 132
  %i.ax = load <1 x i32>, ptr %i.aw, align 4
  %i.ay = shufflevector <1 x i32> %i.ax, <1 x i32> poison, <16 x i32> zeroinitializer
  %i.az = getelementptr inbounds nuw i8, ptr %i.n, i64 16768
  %i.ba = bitcast <16 x i32> %i.ay to <64 x i8>   ; 2 uses
  %i.bb = load <64 x i8>, ptr %i.az, align 64, !tbaa !62
  %i.bc = call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.as, <64 x i8> %i.ba, <64 x i8> %i.bb)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.n, i64 16832
  %i.be = load <64 x i8>, ptr %i.bd, align 64, !tbaa !62
  %i.bf = call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.av, <64 x i8> %i.ba, <64 x i8> %i.be)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.o, i64 136
  %i.bh = load <1 x i32>, ptr %i.bg, align 8
  %i.bi = shufflevector <1 x i32> %i.bh, <1 x i32> poison, <16 x i32> zeroinitializer
  %i.bj = getelementptr inbounds nuw i8, ptr %i.n, i64 16896
  %i.bk = bitcast <16 x i32> %i.bi to <64 x i8>   ; 2 uses
  %i.bl = load <64 x i8>, ptr %i.bj, align 64, !tbaa !62
  %i.bm = call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.bc, <64 x i8> %i.bk, <64 x i8> %i.bl)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.n, i64 16960
  %i.bo = load <64 x i8>, ptr %i.bn, align 64, !tbaa !62
  %i.bp = call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.bf, <64 x i8> %i.bk, <64 x i8> %i.bo)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.o, i64 140
  %i.br = load <1 x i32>, ptr %i.bq, align 4
  %i.bs = shufflevector <1 x i32> %i.br, <1 x i32> poison, <16 x i32> zeroinitializer
  %i.bt = getelementptr inbounds nuw i8, ptr %i.n, i64 17024
  %i.bu = bitcast <16 x i32> %i.bs to <64 x i8>   ; 2 uses
  %i.bv = load <64 x i8>, ptr %i.bt, align 64, !tbaa !62
  %i.bw = call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.bm, <64 x i8> %i.bu, <64 x i8> %i.bv)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.n, i64 17088
  %i.by = load <64 x i8>, ptr %i.bx, align 64, !tbaa !62
  %i.bz = call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.bp, <64 x i8> %i.bu, <64 x i8> %i.by)
  %i.ca = getelementptr inbounds nuw i8, ptr %i.o, i64 144
  %i.cb = load <1 x i32>, ptr %i.ca, align 16
  %i.cc = shufflevector <1 x i32> %i.cb, <1 x i32> poison, <16 x i32> zeroinitializer
  %i.cd = getelementptr inbounds nuw i8, ptr %i.n, i64 17152
  %i.ce = bitcast <16 x i32> %i.cc to <64 x i8>   ; 2 uses
  %i.cf = load <64 x i8>, ptr %i.cd, align 64, !tbaa !62
  %i.cg = call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.bw, <64 x i8> %i.ce, <64 x i8> %i.cf)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.n, i64 17216
  %i.ci = load <64 x i8>, ptr %i.ch, align 64, !tbaa !62
  %i.cj = call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.bz, <64 x i8> %i.ce, <64 x i8> %i.ci)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.o, i64 148
  %i.cl = load <1 x i32>, ptr %i.ck, align 4
  %i.cm = shufflevector <1 x i32> %i.cl, <1 x i32> poison, <16 x i32> zeroinitializer
  %i.cn = getelementptr inbounds nuw i8, ptr %i.n, i64 17280
  %i.co = bitcast <16 x i32> %i.cm to <64 x i8>   ; 2 uses
  %i.cp = load <64 x i8>, ptr %i.cn, align 64, !tbaa !62
  %i.cq = call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.cg, <64 x i8> %i.co, <64 x i8> %i.cp)
  %i.cr = getelementptr inbounds nuw i8, ptr %i.n, i64 17344
  %i.cs = load <64 x i8>, ptr %i.cr, align 64, !tbaa !62
  %i.ct = call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.cj, <64 x i8> %i.co, <64 x i8> %i.cs)
  %i.cu = getelementptr inbounds nuw i8, ptr %i.o, i64 152
  %i.cv = load <1 x i32>, ptr %i.cu, align 8
  %i.cw = shufflevector <1 x i32> %i.cv, <1 x i32> poison, <16 x i32> zeroinitializer
  %i.cx = getelementptr inbounds nuw i8, ptr %i.n, i64 17408
  %i.cy = bitcast <16 x i32> %i.cw to <64 x i8>   ; 2 uses
  %i.cz = load <64 x i8>, ptr %i.cx, align 64, !tbaa !62
  %i.da = call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.cq, <64 x i8> %i.cy, <64 x i8> %i.cz)
  %i.db = getelementptr inbounds nuw i8, ptr %i.n, i64 17472
  %i.dc = load <64 x i8>, ptr %i.db, align 64, !tbaa !62
  %i.dd = call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.ct, <64 x i8> %i.cy, <64 x i8> %i.dc)
  %i.de = getelementptr inbounds nuw i8, ptr %i.o, i64 156
  %i.df = load <1 x i32>, ptr %i.de, align 4
  %i.dg = shufflevector <1 x i32> %i.df, <1 x i32> poison, <16 x i32> zeroinitializer
  %i.dh = getelementptr inbounds nuw i8, ptr %i.n, i64 17536
  %i.di = bitcast <16 x i32> %i.dg to <64 x i8>   ; 2 uses
  %i.dj = load <64 x i8>, ptr %i.dh, align 64, !tbaa !62
  %i.dk = call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.da, <64 x i8> %i.di, <64 x i8> %i.dj) ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.n, i64 17600
  %i.dm = load <64 x i8>, ptr %i.dl, align 64, !tbaa !62
  %i.dn = call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.dd, <64 x i8> %i.di, <64 x i8> %i.dm) ; 3 uses
  store <16 x i32> %i.dk, ptr %i.am, align 64, !tbaa !62
  %.sroa.20.0..sroa_idx43.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 320
  store <16 x i32> %i.dn, ptr %.sroa.20.0..sroa_idx43.i.i, align 64, !tbaa !62
  %i.do = getelementptr inbounds nuw i8, ptr %i.o, i64 384
  %i.dp = shufflevector <16 x i32> %i.dk, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %bc.i = bitcast <16 x i32> %i.dk to <2 x i256>
  %i.dq = extractelement <2 x i256> %bc.i, i64 1
  %i.dr = bitcast i256 %i.dq to <8 x i32>
  %i.ds = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.dp, <8 x i32> %i.dr)
  %i.dt = lshr <16 x i16> %i.ds, splat (i16 6)
  %i.du = shufflevector <16 x i32> %i.dn, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %bc3.i = bitcast <16 x i32> %i.dn to <2 x i256>
  %i.dv = extractelement <2 x i256> %bc3.i, i64 1
  %i.dw = bitcast i256 %i.dv to <8 x i32>
  %i.dx = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.du, <8 x i32> %i.dw)
  %i.dy = lshr <16 x i16> %i.dx, splat (i16 6)
  %i.dz = call <32 x i8> @llvm.x86.avx2.packsswb(<16 x i16> %i.dt, <16 x i16> %i.dy)
  %i.ea = bitcast <32 x i8> %i.dz to <8 x i32>
  %i.eb = shufflevector <8 x i32> %i.ea, <8 x i32> poison, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7> ; 2 uses
  store <8 x i32> %i.eb, ptr %i.do, align 64, !tbaa !62
  %i.ec = getelementptr inbounds nuw i8, ptr %i.n, i64 17728
  %i.ed = getelementptr inbounds nuw i8, ptr %i.o, i64 448
  %i.ee = getelementptr inbounds nuw i8, ptr %i.n, i64 17792
  %.cast.i = bitcast <8 x i32> %i.eb to <32 x i8>
  %i.ef = load <32 x i8>, ptr %i.ee, align 64, !tbaa !62
  %i.eg = call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> zeroinitializer, <32 x i8> %.cast.i, <32 x i8> %i.ef)
  %i.eh = load i32, ptr %i.ec, align 64, !tbaa !129
  %i.ei = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.eg)
  %i.ej = add nsw i32 %i.ei, %i.eh                ; 2 uses
  store i32 %i.ej, ptr %i.ed, align 64, !tbaa !129
  %i.ek = getelementptr inbounds nuw i8, ptr %i.o, i64 60
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !129
  %i.em = mul nsw i32 %i.el, 150
  %i.en = sdiv i32 %i.em, 127
  %i.eo = add nsw i32 %i.ej, %i.en
  %i.ep = insertelement <2 x i32> poison, i32 %i.eo, i64 0
  %i.eq = insertelement <2 x i32> %i.ep, i32 %i.i, i64 1
  %i.er = sdiv <2 x i32> %i.eq, splat (i32 16)
  store <2 x i32> %i.er, ptr %0, align 4, !tbaa !129
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK9Stockfish4Eval4NNUE18FeatureTransformerILj1024EE9transformERKNS_8PositionERNS1_16AccumulatorStackERNS1_17AccumulatorCaches5CacheILj1024EEEPhi(ptr noundef nonnull align 64 dereferenceable(131188224) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull align 64 dereferenceable(2529288) %2, ptr noundef nonnull align 64 dereferenceable(278528) %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZN9Stockfish4Eval4NNUE16AccumulatorStack8evaluateILj1024EEEvRKNS_8PositionERKNS1_18FeatureTransformerIXT_EEERNS1_17AccumulatorCaches5CacheIXT_EEE(ptr noundef nonnull align 64 dereferenceable(2529288) %2, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull align 64 dereferenceable(131188224) %0, ptr noundef nonnull align 64 dereferenceable(278528) %3) #19
  %i.a = tail call noundef nonnull align 64 dereferenceable(4871) ptr @_ZNK9Stockfish4Eval4NNUE16AccumulatorStack6latestINS1_8Features11HalfKAv2_hmEEERKNS1_16AccumulatorStateIT_EEv(ptr noundef nonnull align 64 dereferenceable(2529288) %2) #19 ; 2 uses
  %i.b = tail call noundef nonnull align 64 dereferenceable(5280) ptr @_ZNK9Stockfish4Eval4NNUE16AccumulatorStack6latestINS1_8Features11FullThreatsEEERKNS1_16AccumulatorStateIT_EEv(ptr noundef nonnull align 64 dereferenceable(2529288) %2) #19 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 620
  %i.d = load i8, ptr %i.c, align 4, !tbaa !142   ; 3 uses
  %i.e = xor i8 %i.d, 1                           ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 4096 ; 2 uses
  %i.g = zext i8 %i.d to i64                      ; 2 uses
  %i.h = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.g
  %i.i = sext i32 %5 to i64                       ; 4 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !129
  %i.l = zext i8 %i.e to i64                      ; 2 uses
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.l
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.i
  %i.o = load i32, ptr %i.n, align 4, !tbaa !129
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 4096 ; 2 uses
  %i.q = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.g
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.i
  %i.s = load i32, ptr %i.r, align 4, !tbaa !129
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.l
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.i
  %i.v = load i32, ptr %i.u, align 4, !tbaa !129
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.w = add i32 %i.k, %i.s
  %i.x = add i32 %i.o, %i.v
  %i.y = sub i32 %i.w, %i.x
  %i.z = sdiv i32 %i.y, 2
  ret i32 %i.z

bb.c:                                             ; preds = %bb.a, %bb.c
  %i.aa = phi i1 [ true, %bb.a ], [ false, %bb.c ]
  %indvars.iv.sroa.phi.sroa.speculated = phi i8 [ %i.d, %bb.a ], [ %i.e, %bb.c ]
  %indvars.iv = phi i64 [ 0, %bb.a ], [ 512, %bb.c ]
  %i.ab = zext i8 %indvars.iv.sroa.phi.sroa.speculated to i64 ; 2 uses
  %i.ac = getelementptr inbounds nuw [2048 x i8], ptr %i.a, i64 %i.ab ; 32 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 1024
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv ; 8 uses
  %i.af = getelementptr inbounds nuw [2048 x i8], ptr %i.b, i64 %i.ab ; 32 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1024
  %i.ah = load <32 x i16>, ptr %i.ac, align 64, !tbaa !62
  %i.ai = load <32 x i16>, ptr %i.af, align 64, !tbaa !62
  %i.aj = add <32 x i16> %i.ai, %i.ah
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  %i.al = load <32 x i16>, ptr %i.ak, align 64, !tbaa !62
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  %i.an = load <32 x i16>, ptr %i.am, align 64, !tbaa !62
  %i.ao = add <32 x i16> %i.an, %i.al
  %i.ap = load <32 x i16>, ptr %i.ad, align 64, !tbaa !62
  %i.aq = load <32 x i16>, ptr %i.ag, align 64, !tbaa !62
  %i.ar = add <32 x i16> %i.aq, %i.ap
  %i.as = getelementptr inbounds nuw i8, ptr %i.ac, i64 1088
  %i.at = load <32 x i16>, ptr %i.as, align 64, !tbaa !62
  %i.au = getelementptr inbounds nuw i8, ptr %i.af, i64 1088
  %i.av = load <32 x i16>, ptr %i.au, align 64, !tbaa !62
  %i.aw = add <32 x i16> %i.av, %i.at
  %i.ax = tail call <32 x i16> @llvm.smax.v32i16(<32 x i16> %i.aj, <32 x i16> zeroinitializer)
  %i.ay = tail call <32 x i16> @llvm.umin.v32i16(<32 x i16> %i.ax, <32 x i16> splat (i16 255))
  %i.az = shl nuw nsw <32 x i16> %i.ay, splat (i16 7)
  %i.ba = tail call <32 x i16> @llvm.smax.v32i16(<32 x i16> %i.ao, <32 x i16> zeroinitializer)
  %i.bb = tail call <32 x i16> @llvm.umin.v32i16(<32 x i16> %i.ba, <32 x i16> splat (i16 255))
  %i.bc = shl nuw nsw <32 x i16> %i.bb, splat (i16 7)
  %i.bd = tail call <32 x i16> @llvm.smin.v32i16(<32 x i16> %i.ar, <32 x i16> splat (i16 255))
  %i.be = tail call <32 x i16> @llvm.smin.v32i16(<32 x i16> %i.aw, <32 x i16> splat (i16 255))
  %6 = call <32 x i16> @llvm.smulh.v32i16(<32 x i16> %i.az, <32 x i16> %i.bd)
  %7 = call <32 x i16> @llvm.smulh.v32i16(<32 x i16> %i.bc, <32 x i16> %i.be)
  %i.bf = tail call <64 x i8> @llvm.x86.avx512.packuswb.512(<32 x i16> %6, <32 x i16> %7)
  store <64 x i8> %i.bf, ptr %i.ae, align 64, !tbaa !62
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ac, i64 128
  %i.bh = load <32 x i16>, ptr %i.bg, align 64, !tbaa !62
  %i.bi = getelementptr inbounds nuw i8, ptr %i.af, i64 128
  %i.bj = load <32 x i16>, ptr %i.bi, align 64, !tbaa !62
  %i.bk = add <32 x i16> %i.bj, %i.bh
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ac, i64 192
  %i.bm = load <32 x i16>, ptr %i.bl, align 64, !tbaa !62
  %i.bn = getelementptr inbounds nuw i8, ptr %i.af, i64 192
  %i.bo = load <32 x i16>, ptr %i.bn, align 64, !tbaa !62
  %i.bp = add <32 x i16> %i.bo, %i.bm
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ac, i64 1152
  %i.br = load <32 x i16>, ptr %i.bq, align 64, !tbaa !62
  %i.bs = getelementptr inbounds nuw i8, ptr %i.af, i64 1152
  %i.bt = load <32 x i16>, ptr %i.bs, align 64, !tbaa !62
  %i.bu = add <32 x i16> %i.bt, %i.br
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ac, i64 1216
  %i.bw = load <32 x i16>, ptr %i.bv, align 64, !tbaa !62
  %i.bx = getelementptr inbounds nuw i8, ptr %i.af, i64 1216
  %i.by = load <32 x i16>, ptr %i.bx, align 64, !tbaa !62
  %i.bz = add <32 x i16> %i.by, %i.bw
  %i.ca = tail call <32 x i16> @llvm.smax.v32i16(<32 x i16> %i.bk, <32 x i16> zeroinitializer)
  %i.cb = tail call <32 x i16> @llvm.umin.v32i16(<32 x i16> %i.ca, <32 x i16> splat (i16 255))
  %i.cc = shl nuw nsw <32 x i16> %i.cb, splat (i16 7)
  %i.cd = tail call <32 x i16> @llvm.smax.v32i16(<32 x i16> %i.bp, <32 x i16> zeroinitializer)
  %i.ce = tail call <32 x i16> @llvm.umin.v32i16(<32 x i16> %i.cd, <32 x i16> splat (i16 255))
  %i.cf = shl nuw nsw <32 x i16> %i.ce, splat (i16 7)
  %i.cg = tail call <32 x i16> @llvm.smin.v32i16(<32 x i16> %i.bu, <32 x i16> splat (i16 255))
  %i.ch = tail call <32 x i16> @llvm.smin.v32i16(<32 x i16> %i.bz, <32 x i16> splat (i16 255))
  %8 = call <32 x i16> @llvm.smulh.v32i16(<32 x i16> %i.cc, <32 x i16> %i.cg)
  %9 = call <32 x i16> @llvm.smulh.v32i16(<32 x i16> %i.cf, <32 x i16> %i.ch)
  %i.ci = tail call <64 x i8> @llvm.x86.avx512.packuswb.512(<32 x i16> %8, <32 x i16> %9)
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  store <64 x i8> %i.ci, ptr %i.cj, align 64, !tbaa !62
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ac, i64 256
  %i.cl = load <32 x i16>, ptr %i.ck, align 64, !tbaa !62
  %i.cm = getelementptr inbounds nuw i8, ptr %i.af, i64 256
  %i.cn = load <32 x i16>, ptr %i.cm, align 64, !tbaa !62
  %i.co = add <32 x i16> %i.cn, %i.cl
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ac, i64 320
  %i.cq = load <32 x i16>, ptr %i.cp, align 64, !tbaa !62
  %i.cr = getelementptr inbounds nuw i8, ptr %i.af, i64 320
  %i.cs = load <32 x i16>, ptr %i.cr, align 64, !tbaa !62
  %i.ct = add <32 x i16> %i.cs, %i.cq
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ac, i64 1280
  %i.cv = load <32 x i16>, ptr %i.cu, align 64, !tbaa !62
  %i.cw = getelementptr inbounds nuw i8, ptr %i.af, i64 1280
  %i.cx = load <32 x i16>, ptr %i.cw, align 64, !tbaa !62
  %i.cy = add <32 x i16> %i.cx, %i.cv
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ac, i64 1344
  %i.da = load <32 x i16>, ptr %i.cz, align 64, !tbaa !62
  %i.db = getelementptr inbounds nuw i8, ptr %i.af, i64 1344
  %i.dc = load <32 x i16>, ptr %i.db, align 64, !tbaa !62
  %i.dd = add <32 x i16> %i.dc, %i.da
  %i.de = tail call <32 x i16> @llvm.smax.v32i16(<32 x i16> %i.co, <32 x i16> zeroinitializer)
  %i.df = tail call <32 x i16> @llvm.umin.v32i16(<32 x i16> %i.de, <32 x i16> splat (i16 255))
  %i.dg = shl nuw nsw <32 x i16> %i.df, splat (i16 7)
  %i.dh = tail call <32 x i16> @llvm.smax.v32i16(<32 x i16> %i.ct, <32 x i16> zeroinitializer)
  %i.di = tail call <32 x i16> @llvm.umin.v32i16(<32 x i16> %i.dh, <32 x i16> splat (i16 255))
  %i.dj = shl nuw nsw <32 x i16> %i.di, splat (i16 7)
  %i.dk = tail call <32 x i16> @llvm.smin.v32i16(<32 x i16> %i.cy, <32 x i16> splat (i16 255))
  %i.dl = tail call <32 x i16> @llvm.smin.v32i16(<32 x i16> %i.dd, <32 x i16> splat (i16 255))
  %10 = call <32 x i16> @llvm.smulh.v32i16(<32 x i16> %i.dg, <32 x i16> %i.dk)
  %11 = call <32 x i16> @llvm.smulh.v32i16(<32 x i16> %i.dj, <32 x i16> %i.dl)
  %i.dm = tail call <64 x i8> @llvm.x86.avx512.packuswb.512(<32 x i16> %10, <32 x i16> %11)
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ae, i64 128
  store <64 x i8> %i.dm, ptr %i.dn, align 64, !tbaa !62
  %i.do = getelementptr inbounds nuw i8, ptr %i.ac, i64 384
  %i.dp = load <32 x i16>, ptr %i.do, align 64, !tbaa !62
  %i.dq = getelementptr inbounds nuw i8, ptr %i.af, i64 384
  %i.dr = load <32 x i16>, ptr %i.dq, align 64, !tbaa !62
  %i.ds = add <32 x i16> %i.dr, %i.dp
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ac, i64 448
  %i.du = load <32 x i16>, ptr %i.dt, align 64, !tbaa !62
  %i.dv = getelementptr inbounds nuw i8, ptr %i.af, i64 448
  %i.dw = load <32 x i16>, ptr %i.dv, align 64, !tbaa !62
  %i.dx = add <32 x i16> %i.dw, %i.du
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ac, i64 1408
  %i.dz = load <32 x i16>, ptr %i.dy, align 64, !tbaa !62
  %i.ea = getelementptr inbounds nuw i8, ptr %i.af, i64 1408
  %i.eb = load <32 x i16>, ptr %i.ea, align 64, !tbaa !62
  %i.ec = add <32 x i16> %i.eb, %i.dz
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ac, i64 1472
  %i.ee = load <32 x i16>, ptr %i.ed, align 64, !tbaa !62
  %i.ef = getelementptr inbounds nuw i8, ptr %i.af, i64 1472
  %i.eg = load <32 x i16>, ptr %i.ef, align 64, !tbaa !62
  %i.eh = add <32 x i16> %i.eg, %i.ee
  %i.ei = tail call <32 x i16> @llvm.smax.v32i16(<32 x i16> %i.ds, <32 x i16> zeroinitializer)
  %i.ej = tail call <32 x i16> @llvm.umin.v32i16(<32 x i16> %i.ei, <32 x i16> splat (i16 255))
  %i.ek = shl nuw nsw <32 x i16> %i.ej, splat (i16 7)
  %i.el = tail call <32 x i16> @llvm.smax.v32i16(<32 x i16> %i.dx, <32 x i16> zeroinitializer)
  %i.em = tail call <32 x i16> @llvm.umin.v32i16(<32 x i16> %i.el, <32 x i16> splat (i16 255))
  %i.en = shl nuw nsw <32 x i16> %i.em, splat (i16 7)
  %i.eo = tail call <32 x i16> @llvm.smin.v32i16(<32 x i16> %i.ec, <32 x i16> splat (i16 255))
  %i.ep = tail call <32 x i16> @llvm.smin.v32i16(<32 x i16> %i.eh, <32 x i16> splat (i16 255))
  %12 = call <32 x i16> @llvm.smulh.v32i16(<32 x i16> %i.ek, <32 x i16> %i.eo)
  %13 = call <32 x i16> @llvm.smulh.v32i16(<32 x i16> %i.en, <32 x i16> %i.ep)
  %i.eq = tail call <64 x i8> @llvm.x86.avx512.packuswb.512(<32 x i16> %12, <32 x i16> %13)
  %i.er = getelementptr inbounds nuw i8, ptr %i.ae, i64 192
  store <64 x i8> %i.eq, ptr %i.er, align 64, !tbaa !62
  %i.es = getelementptr inbounds nuw i8, ptr %i.ac, i64 512
  %i.et = load <32 x i16>, ptr %i.es, align 64, !tbaa !62
  %i.eu = getelementptr inbounds nuw i8, ptr %i.af, i64 512
  %i.ev = load <32 x i16>, ptr %i.eu, align 64, !tbaa !62
  %i.ew = add <32 x i16> %i.ev, %i.et
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ac, i64 576
  %i.ey = load <32 x i16>, ptr %i.ex, align 64, !tbaa !62
  %i.ez = getelementptr inbounds nuw i8, ptr %i.af, i64 576
  %i.fa = load <32 x i16>, ptr %i.ez, align 64, !tbaa !62
  %i.fb = add <32 x i16> %i.fa, %i.ey
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ac, i64 1536
  %i.fd = load <32 x i16>, ptr %i.fc, align 64, !tbaa !62
  %i.fe = getelementptr inbounds nuw i8, ptr %i.af, i64 1536
  %i.ff = load <32 x i16>, ptr %i.fe, align 64, !tbaa !62
  %i.fg = add <32 x i16> %i.ff, %i.fd
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ac, i64 1600
  %i.fi = load <32 x i16>, ptr %i.fh, align 64, !tbaa !62
  %i.fj = getelementptr inbounds nuw i8, ptr %i.af, i64 1600
  %i.fk = load <32 x i16>, ptr %i.fj, align 64, !tbaa !62
  %i.fl = add <32 x i16> %i.fk, %i.fi
  %i.fm = tail call <32 x i16> @llvm.smax.v32i16(<32 x i16> %i.ew, <32 x i16> zeroinitializer)
  %i.fn = tail call <32 x i16> @llvm.umin.v32i16(<32 x i16> %i.fm, <32 x i16> splat (i16 255))
  %i.fo = shl nuw nsw <32 x i16> %i.fn, splat (i16 7)
  %i.fp = tail call <32 x i16> @llvm.smax.v32i16(<32 x i16> %i.fb, <32 x i16> zeroinitializer)
  %i.fq = tail call <32 x i16> @llvm.umin.v32i16(<32 x i16> %i.fp, <32 x i16> splat (i16 255))
  %i.fr = shl nuw nsw <32 x i16> %i.fq, splat (i16 7)
  %i.fs = tail call <32 x i16> @llvm.smin.v32i16(<32 x i16> %i.fg, <32 x i16> splat (i16 255))
  %i.ft = tail call <32 x i16> @llvm.smin.v32i16(<32 x i16> %i.fl, <32 x i16> splat (i16 255))
  %14 = call <32 x i16> @llvm.smulh.v32i16(<32 x i16> %i.fo, <32 x i16> %i.fs)
  %15 = call <32 x i16> @llvm.smulh.v32i16(<32 x i16> %i.fr, <32 x i16> %i.ft)
  %i.fu = tail call <64 x i8> @llvm.x86.avx512.packuswb.512(<32 x i16> %14, <32 x i16> %15)
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ae, i64 256
  store <64 x i8> %i.fu, ptr %i.fv, align 64, !tbaa !62
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ac, i64 640
  %i.fx = load <32 x i16>, ptr %i.fw, align 64, !tbaa !62
  %i.fy = getelementptr inbounds nuw i8, ptr %i.af, i64 640
  %i.fz = load <32 x i16>, ptr %i.fy, align 64, !tbaa !62
  %i.ga = add <32 x i16> %i.fz, %i.fx
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ac, i64 704
  %i.gc = load <32 x i16>, ptr %i.gb, align 64, !tbaa !62
  %i.gd = getelementptr inbounds nuw i8, ptr %i.af, i64 704
  %i.ge = load <32 x i16>, ptr %i.gd, align 64, !tbaa !62
  %i.gf = add <32 x i16> %i.ge, %i.gc
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ac, i64 1664
  %i.gh = load <32 x i16>, ptr %i.gg, align 64, !tbaa !62
  %i.gi = getelementptr inbounds nuw i8, ptr %i.af, i64 1664
  %i.gj = load <32 x i16>, ptr %i.gi, align 64, !tbaa !62
  %i.gk = add <32 x i16> %i.gj, %i.gh
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ac, i64 1728
  %i.gm = load <32 x i16>, ptr %i.gl, align 64, !tbaa !62
  %i.gn = getelementptr inbounds nuw i8, ptr %i.af, i64 1728
  %i.go = load <32 x i16>, ptr %i.gn, align 64, !tbaa !62
  %i.gp = add <32 x i16> %i.go, %i.gm
  %i.gq = tail call <32 x i16> @llvm.smax.v32i16(<32 x i16> %i.ga, <32 x i16> zeroinitializer)
  %i.gr = tail call <32 x i16> @llvm.umin.v32i16(<32 x i16> %i.gq, <32 x i16> splat (i16 255))
  %i.gs = shl nuw nsw <32 x i16> %i.gr, splat (i16 7)
  %i.gt = tail call <32 x i16> @llvm.smax.v32i16(<32 x i16> %i.gf, <32 x i16> zeroinitializer)
  %i.gu = tail call <32 x i16> @llvm.umin.v32i16(<32 x i16> %i.gt, <32 x i16> splat (i16 255))
  %i.gv = shl nuw nsw <32 x i16> %i.gu, splat (i16 7)
  %i.gw = tail call <32 x i16> @llvm.smin.v32i16(<32 x i16> %i.gk, <32 x i16> splat (i16 255))
  %i.gx = tail call <32 x i16> @llvm.smin.v32i16(<32 x i16> %i.gp, <32 x i16> splat (i16 255))
  %16 = call <32 x i16> @llvm.smulh.v32i16(<32 x i16> %i.gs, <32 x i16> %i.gw)
  %17 = call <32 x i16> @llvm.smulh.v32i16(<32 x i16> %i.gv, <32 x i16> %i.gx)
  %i.gy = tail call <64 x i8> @llvm.x86.avx512.packuswb.512(<32 x i16> %16, <32 x i16> %17)
  %i.gz = getelementptr inbounds nuw i8, ptr %i.ae, i64 320
  store <64 x i8> %i.gy, ptr %i.gz, align 64, !tbaa !62
  %i.ha = getelementptr inbounds nuw i8, ptr %i.ac, i64 768
  %i.hb = load <32 x i16>, ptr %i.ha, align 64, !tbaa !62
  %i.hc = getelementptr inbounds nuw i8, ptr %i.af, i64 768
  %i.hd = load <32 x i16>, ptr %i.hc, align 64, !tbaa !62
  %i.he = add <32 x i16> %i.hd, %i.hb
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ac, i64 832
  %i.hg = load <32 x i16>, ptr %i.hf, align 64, !tbaa !62
  %i.hh = getelementptr inbounds nuw i8, ptr %i.af, i64 832
  %i.hi = load <32 x i16>, ptr %i.hh, align 64, !tbaa !62
  %i.hj = add <32 x i16> %i.hi, %i.hg
  %i.hk = getelementptr inbounds nuw i8, ptr %i.ac, i64 1792
  %i.hl = load <32 x i16>, ptr %i.hk, align 64, !tbaa !62
  %i.hm = getelementptr inbounds nuw i8, ptr %i.af, i64 1792
  %i.hn = load <32 x i16>, ptr %i.hm, align 64, !tbaa !62
  %i.ho = add <32 x i16> %i.hn, %i.hl
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ac, i64 1856
  %i.hq = load <32 x i16>, ptr %i.hp, align 64, !tbaa !62
  %i.hr = getelementptr inbounds nuw i8, ptr %i.af, i64 1856
  %i.hs = load <32 x i16>, ptr %i.hr, align 64, !tbaa !62
  %i.ht = add <32 x i16> %i.hs, %i.hq
  %i.hu = tail call <32 x i16> @llvm.smax.v32i16(<32 x i16> %i.he, <32 x i16> zeroinitializer)
  %i.hv = tail call <32 x i16> @llvm.umin.v32i16(<32 x i16> %i.hu, <32 x i16> splat (i16 255))
  %i.hw = shl nuw nsw <32 x i16> %i.hv, splat (i16 7)
  %i.hx = tail call <32 x i16> @llvm.smax.v32i16(<32 x i16> %i.hj, <32 x i16> zeroinitializer)
  %i.hy = tail call <32 x i16> @llvm.umin.v32i16(<32 x i16> %i.hx, <32 x i16> splat (i16 255))
  %i.hz = shl nuw nsw <32 x i16> %i.hy, splat (i16 7)
  %i.ia = tail call <32 x i16> @llvm.smin.v32i16(<32 x i16> %i.ho, <32 x i16> splat (i16 255))
  %i.ib = tail call <32 x i16> @llvm.smin.v32i16(<32 x i16> %i.ht, <32 x i16> splat (i16 255))
  %18 = call <32 x i16> @llvm.smulh.v32i16(<32 x i16> %i.hw, <32 x i16> %i.ia)
  %19 = call <32 x i16> @llvm.smulh.v32i16(<32 x i16> %i.hz, <32 x i16> %i.ib)
  %i.ic = tail call <64 x i8> @llvm.x86.avx512.packuswb.512(<32 x i16> %18, <32 x i16> %19)
  %i.id = getelementptr inbounds nuw i8, ptr %i.ae, i64 384
  store <64 x i8> %i.ic, ptr %i.id, align 64, !tbaa !62
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ac, i64 896
  %i.if = load <32 x i16>, ptr %i.ie, align 64, !tbaa !62
  %i.ig = getelementptr inbounds nuw i8, ptr %i.af, i64 896
  %i.ih = load <32 x i16>, ptr %i.ig, align 64, !tbaa !62
  %i.ii = add <32 x i16> %i.ih, %i.if
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ac, i64 960
  %i.ik = load <32 x i16>, ptr %i.ij, align 64, !tbaa !62
  %i.il = getelementptr inbounds nuw i8, ptr %i.af, i64 960
  %i.im = load <32 x i16>, ptr %i.il, align 64, !tbaa !62
  %i.in = add <32 x i16> %i.im, %i.ik
  %i.io = getelementptr inbounds nuw i8, ptr %i.ac, i64 1920
  %i.ip = load <32 x i16>, ptr %i.io, align 64, !tbaa !62
  %i.iq = getelementptr inbounds nuw i8, ptr %i.af, i64 1920
  %i.ir = load <32 x i16>, ptr %i.iq, align 64, !tbaa !62
  %i.is = add <32 x i16> %i.ir, %i.ip
  %i.it = getelementptr inbounds nuw i8, ptr %i.ac, i64 1984
  %i.iu = load <32 x i16>, ptr %i.it, align 64, !tbaa !62
  %i.iv = getelementptr inbounds nuw i8, ptr %i.af, i64 1984
  %i.iw = load <32 x i16>, ptr %i.iv, align 64, !tbaa !62
  %i.ix = add <32 x i16> %i.iw, %i.iu
  %i.iy = tail call <32 x i16> @llvm.smax.v32i16(<32 x i16> %i.ii, <32 x i16> zeroinitializer)
  %i.iz = tail call <32 x i16> @llvm.umin.v32i16(<32 x i16> %i.iy, <32 x i16> splat (i16 255))
  %i.ja = shl nuw nsw <32 x i16> %i.iz, splat (i16 7)
  %i.jb = tail call <32 x i16> @llvm.smax.v32i16(<32 x i16> %i.in, <32 x i16> zeroinitializer)
  %i.jc = tail call <32 x i16> @llvm.umin.v32i16(<32 x i16> %i.jb, <32 x i16> splat (i16 255))
  %i.jd = shl nuw nsw <32 x i16> %i.jc, splat (i16 7)
  %i.je = tail call <32 x i16> @llvm.smin.v32i16(<32 x i16> %i.is, <32 x i16> splat (i16 255))
  %i.jf = tail call <32 x i16> @llvm.smin.v32i16(<32 x i16> %i.ix, <32 x i16> splat (i16 255))
  %20 = call <32 x i16> @llvm.smulh.v32i16(<32 x i16> %i.ja, <32 x i16> %i.je)
  %21 = call <32 x i16> @llvm.smulh.v32i16(<32 x i16> %i.jd, <32 x i16> %i.jf)
  %i.jg = tail call <64 x i8> @llvm.x86.avx512.packuswb.512(<32 x i16> %20, <32 x i16> %21)
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ae, i64 448
  store <64 x i8> %i.jg, ptr %i.jh, align 64, !tbaa !62
  br i1 %i.aa, label %bb.c, label %bb.b, !llvm.loop !191
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local void @_ZNK9Stockfish4Eval4NNUE7NetworkINS1_19NetworkArchitectureILj1024ELi15ELi32EEENS1_18FeatureTransformerILj1024EEEE6verifyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt8functionIFvSt17basic_string_viewIcSB_EEE(ptr noundef nonnull align 64 dereferenceable(131331893) %0, ptr noundef align 8 %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 {
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
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %38 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %39 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %40 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %41 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %42 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %43 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %44 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %45 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %46 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %47 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !84
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 131331072
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 131331336
  %i.g = load i64, ptr %i.f, align 8, !tbaa !86
  %i.h = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 0, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(272) %i.e, i64 noundef %i.g) #19 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 131331072
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 131331344 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 131331608
  %i.l = load i64, ptr %i.k, align 8, !tbaa !86   ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  store ptr %i.m, ptr %5, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 %i.l, ptr %i.a, align 8, !tbaa !64
  %i.n = icmp ugt i64 %i.l, 15
  br i1 %i.n, label %bb.d, label %._crit_edge.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.o = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #19 ; 2 uses
  store ptr %i.o, ptr %5, align 8, !tbaa !85
  %i.p = load i64, ptr %i.a, align 8, !tbaa !64
  store i64 %i.p, ptr %i.m, align 8, !tbaa !62
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.d, %bb.c
  %i.q = phi ptr [ %i.o, %bb.d ], [ %i.m, %bb.c ] ; 2 uses
  switch i64 %i.l, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN9Stockfish11FixedStringILm256EEEvEERKT_RKS3_.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.r = load i8, ptr %i.j, align 16, !tbaa !62
  store i8 %i.r, ptr %i.q, align 1, !tbaa !62
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN9Stockfish11FixedStringILm256EEEvEERKT_RKS3_.exit

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr nonnull align 16 dereferenceable(272) %i.j, i64 %i.l, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN9Stockfish11FixedStringILm256EEEvEERKT_RKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN9Stockfish11FixedStringILm256EEEvEERKT_RKS3_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.e, %bb.f
  %i.s = load i64, ptr %i.a, align 8, !tbaa !64   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.s, ptr %i.t, align 8, !tbaa !84
  %i.u = load ptr, ptr %5, align 8, !tbaa !85
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  store i8 0, ptr %i.v, align 1, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.w = load i64, ptr %i.t, align 8, !tbaa !84   ; 4 uses
  %i.x = load i64, ptr %i.b, align 8, !tbaa !84
  %i.y = icmp eq i64 %i.w, %i.x
  br i1 %i.y, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN9Stockfish11FixedStringILm256EEEvEERKT_RKS3_.exit._ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN9Stockfish11FixedStringILm256EEEvEERKT_RKS3_.exit._ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN9Stockfish11FixedStringILm256EEEvEERKT_RKS3_.exit
  %.pre = load ptr, ptr %5, align 8, !tbaa !85
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN9Stockfish11FixedStringILm256EEEvEERKT_RKS3_.exit
  %i.z = icmp eq i64 %i.w, 0
  %.pre256 = load ptr, ptr %5, align 8, !tbaa !85 ; 3 uses
  br i1 %i.z, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = load ptr, ptr %1, align 8, !tbaa !85
  %bcmp.i.i = call i32 @bcmp(ptr %.pre256, ptr %i.aa, i64 %i.w)
  %i.ab = icmp ne i32 %bcmp.i.i, 0
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN9Stockfish11FixedStringILm256EEEvEERKT_RKS3_.exit._ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge, %bb.g, %bb.h
  %i.ac = phi ptr [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN9Stockfish11FixedStringILm256EEEvEERKT_RKS3_.exit._ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge ], [ %.pre256, %bb.h ], [ %.pre256, %bb.g ] ; 2 uses
  %i.ad = phi i1 [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN9Stockfish11FixedStringILm256EEEvEERKT_RKS3_.exit._ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge ], [ %i.ab, %bb.h ], [ false, %bb.g ]
  %i.ae = icmp eq ptr %i.ac, %i.m
  br i1 %i.ae, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.af = icmp ult i64 %i.w, 16
  call void @llvm.assume(i1 %i.af)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.ag = load i64, ptr %i.m, align 8, !tbaa !62
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ah) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !144
  %.not.i.i.not = icmp eq ptr %i.aj, null         ; 2 uses
  br i1 %i.ad, label %bb.i, label %bb.m

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  br i1 %.not.i.i.not, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull @.str.6, ptr noundef nonnull align 8 dereferenceable(32) %1)
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.7)
  %i.ak = load ptr, ptr %9, align 8, !tbaa !85    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.j
  %i.an = load i64, ptr %i.al, align 8, !tbaa !62
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.8, ptr noundef nonnull align 1 dereferenceable(1) %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN9Stockfish11FixedStringILm256EEEvEERKT_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(272) %i.i, ptr noundef nonnull align 1 dereferenceable(1) %14)
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull @.str.9, ptr noundef nonnull align 8 dereferenceable(32) %13)
  %i.ap = load ptr, ptr %13, align 8, !tbaa !85   ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !62
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

end_hunk_0
begin_hunk_1_@_ZNK9Stockfish4Eval4NNUE7NetworkINS1_19NetworkArchitectureILj128ELi15ELi32EEENS1_18FeatureTransformerILj128EEEE16get_content_hashEv:bb.a
  %.078.i.i.i6.i.i.epil = phi i64 [ %i.uj, %.lr.ph.i.i.i4.i.i.epil ], [ %.078.i.i.i6.i.i.epil.init, %.lr.ph.i.i.i4.i.i.epil.preheader ]
  %epil.iter54 = phi i64 [ %epil.iter54.next, %.lr.ph.i.i.i4.i.i.epil ], [ 0, %.lr.ph.i.i.i4.i.i.epil.preheader ]
  %i.uf = getelementptr inbounds nuw i8, ptr %i.sf, i64 %.09.i.i.i5.i.i.epil
  %i.ug = load i8, ptr %i.uf, align 1, !tbaa !62
  %i.uh = sext i8 %i.ug to i64
  %i.ui = xor i64 %.078.i.i.i6.i.i.epil, %i.uh
  %i.uj = mul i64 %i.ui, 1099511628211            ; 2 uses
  %i.uk = add nuw i64 %.09.i.i.i5.i.i.epil, 1
  %epil.iter54.next = add i64 %epil.iter54, 1     ; 2 uses
  %epil.iter54.cmp.not = icmp eq i64 %epil.iter54.next, %xtraiter53
  br i1 %epil.iter54.cmp.not, label %_ZNKSt4hashIN9Stockfish11FixedStringILm256EEEEclERKS2_.exit.loopexit.i8.i.i, label %.lr.ph.i.i.i4.i.i.epil, !llvm.loop !272

_ZNKSt4hashIN9Stockfish11FixedStringILm256EEEEclERKS2_.exit.loopexit.i8.i.i: ; preds = %.lr.ph.i.i.i4.i.i.epil, %_ZNKSt4hashIN9Stockfish11FixedStringILm256EEEEclERKS2_.exit.loopexit.i8.i.i.unr-lcssa
  %.lcssa46 = phi i64 [ %i.ud, %_ZNKSt4hashIN9Stockfish11FixedStringILm256EEEEclERKS2_.exit.loopexit.i8.i.i.unr-lcssa ], [ %i.uj, %.lr.ph.i.i.i4.i.i.epil ]
  %i.ul = add i64 %.lcssa46, 2654435769
  br label %_ZN9Stockfish12hash_combineINS_11FixedStringILm256EEEEEvRmRKT_.exit10.i.i

_ZN9Stockfish12hash_combineINS_11FixedStringILm256EEEEEvRmRKT_.exit10.i.i: ; preds = %_ZNKSt4hashIN9Stockfish11FixedStringILm256EEEEclERKS2_.exit.loopexit.i8.i.i, %_ZN9Stockfish12hash_combineINS_11FixedStringILm256EEEEEvRmRKT_.exit.i.i
  %.07.lcssa.i.i.i9.i.i = phi i64 [ -3750763031708459810, %_ZN9Stockfish12hash_combineINS_11FixedStringILm256EEEEEvRmRKT_.exit.i.i ], [ %i.ul, %_ZNKSt4hashIN9Stockfish11FixedStringILm256EEEEclERKS2_.exit.loopexit.i8.i.i ]
  %i.um = getelementptr inbounds nuw i8, ptr %0, i64 6517152 ; 9 uses
  %i.un = getelementptr inbounds nuw i8, ptr %0, i64 6517416
  %i.uo = load i64, ptr %i.un, align 8, !tbaa !86 ; 4 uses
  %.not.i.i.i11.i.i = icmp eq i64 %i.uo, 0
  br i1 %.not.i.i.i11.i.i, label %_ZN9Stockfish12hash_combineINS_4Eval4NNUE8EvalFileEEEvRmRKT_.exit, label %.lr.ph.i.i.i12.i.i.preheader

.lr.ph.i.i.i12.i.i.preheader:                     ; preds = %_ZN9Stockfish12hash_combineINS_11FixedStringILm256EEEEEvRmRKT_.exit10.i.i
  %xtraiter60 = and i64 %i.uo, 7                  ; 3 uses
  %i.up = icmp ult i64 %i.uo, 8
  br i1 %i.up, label %.lr.ph.i.i.i12.i.i.epil.preheader, label %.lr.ph.i.i.i12.i.i.preheader.new

.lr.ph.i.i.i12.i.i.preheader.new:                 ; preds = %.lr.ph.i.i.i12.i.i.preheader
  %unroll_iter65 = and i64 %i.uo, -8
  br label %.lr.ph.i.i.i12.i.i

.lr.ph.i.i.i12.i.i:                               ; preds = %.lr.ph.i.i.i12.i.i, %.lr.ph.i.i.i12.i.i.preheader.new
  %.09.i.i.i13.i.i = phi i64 [ 0, %.lr.ph.i.i.i12.i.i.preheader.new ], [ %i.wl, %.lr.ph.i.i.i12.i.i ] ; 9 uses
  %.078.i.i.i14.i.i = phi i64 [ -3750763034362895579, %.lr.ph.i.i.i12.i.i.preheader.new ], [ %i.wk, %.lr.ph.i.i.i12.i.i ]
  %niter66 = phi i64 [ 0, %.lr.ph.i.i.i12.i.i.preheader.new ], [ %niter66.next.7, %.lr.ph.i.i.i12.i.i ]
  %i.uq = getelementptr inbounds nuw i8, ptr %i.um, i64 %.09.i.i.i13.i.i
  %i.ur = load i8, ptr %i.uq, align 8, !tbaa !62
  %i.us = sext i8 %i.ur to i64
  %i.ut = xor i64 %.078.i.i.i14.i.i, %i.us
  %i.uu = mul i64 %i.ut, 1099511628211
  %i.uv = getelementptr inbounds nuw i8, ptr %i.um, i64 %.09.i.i.i13.i.i
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uv, i64 1
  %i.ux = load i8, ptr %i.uw, align 1, !tbaa !62
  %i.uy = sext i8 %i.ux to i64
  %i.uz = xor i64 %i.uu, %i.uy
  %i.va = mul i64 %i.uz, 1099511628211
  %i.vb = getelementptr inbounds nuw i8, ptr %i.um, i64 %.09.i.i.i13.i.i
  %i.vc = getelementptr inbounds nuw i8, ptr %i.vb, i64 2
  %i.vd = load i8, ptr %i.vc, align 2, !tbaa !62
  %i.ve = sext i8 %i.vd to i64
  %i.vf = xor i64 %i.va, %i.ve
  %i.vg = mul i64 %i.vf, 1099511628211
  %i.vh = getelementptr inbounds nuw i8, ptr %i.um, i64 %.09.i.i.i13.i.i
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vh, i64 3
  %i.vj = load i8, ptr %i.vi, align 1, !tbaa !62
  %i.vk = sext i8 %i.vj to i64
  %i.vl = xor i64 %i.vg, %i.vk
  %i.vm = mul i64 %i.vl, 1099511628211
  %i.vn = getelementptr inbounds nuw i8, ptr %i.um, i64 %.09.i.i.i13.i.i
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vn, i64 4
  %i.vp = load i8, ptr %i.vo, align 4, !tbaa !62
  %i.vq = sext i8 %i.vp to i64
  %i.vr = xor i64 %i.vm, %i.vq
  %i.vs = mul i64 %i.vr, 1099511628211
  %i.vt = getelementptr inbounds nuw i8, ptr %i.um, i64 %.09.i.i.i13.i.i
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vt, i64 5
  %i.vv = load i8, ptr %i.vu, align 1, !tbaa !62
  %i.vw = sext i8 %i.vv to i64
  %i.vx = xor i64 %i.vs, %i.vw
  %i.vy = mul i64 %i.vx, 1099511628211
  %i.vz = getelementptr inbounds nuw i8, ptr %i.um, i64 %.09.i.i.i13.i.i
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vz, i64 6
  %i.wb = load i8, ptr %i.wa, align 2, !tbaa !62
  %i.wc = sext i8 %i.wb to i64
  %i.wd = xor i64 %i.vy, %i.wc
  %i.we = mul i64 %i.wd, 1099511628211
  %i.wf = getelementptr inbounds nuw i8, ptr %i.um, i64 %.09.i.i.i13.i.i
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wf, i64 7
  %i.wh = load i8, ptr %i.wg, align 1, !tbaa !62
  %i.wi = sext i8 %i.wh to i64
  %i.wj = xor i64 %i.we, %i.wi
  %i.wk = mul i64 %i.wj, 1099511628211            ; 3 uses
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
  %i.wn = load i8, ptr %i.wm, align 1, !tbaa !62
  %i.wo = sext i8 %i.wn to i64
  %i.wp = xor i64 %.078.i.i.i14.i.i.epil, %i.wo
  %i.wq = mul i64 %i.wp, 1099511628211            ; 2 uses
  %i.wr = add nuw i64 %.09.i.i.i13.i.i.epil, 1
  %epil.iter61.next = add i64 %epil.iter61, 1     ; 2 uses
  %epil.iter61.cmp.not = icmp eq i64 %epil.iter61.next, %xtraiter60
  br i1 %epil.iter61.cmp.not, label %_ZNKSt4hashIN9Stockfish11FixedStringILm256EEEEclERKS2_.exit.loopexit.i16.i.i, label %.lr.ph.i.i.i12.i.i.epil, !llvm.loop !273

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
  %i.xk = load i32, ptr %i.xj, align 16, !tbaa !158
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
define weak_odr dso_local void @_ZNK9Stockfish4Eval4NNUE7NetworkINS1_19NetworkArchitectureILj128ELi15ELi32EEENS1_18FeatureTransformerILj128EEEE8evaluateERKNS_8PositionERNS1_16AccumulatorStackERNS1_17AccumulatorCaches5CacheILj128EEE(ptr dead_on_unwind noalias writable sret(%"class.std::tuple") align 4 %0, ptr noundef nonnull align 64 dereferenceable(6517429) %1, ptr noundef nonnull align 8 dereferenceable(1048) %2, ptr noundef nonnull align 64 dereferenceable(2529288) %3, ptr noundef nonnull align 64 dereferenceable(49152) %4) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = alloca [32 x i16], align 16              ; 6 uses
  %i.b = alloca [128 x i8], align 64              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.d = load i32, ptr %i.c, align 8, !tbaa !129
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 176
  %i.f = load i32, ptr %i.e, align 8, !tbaa !129
  %i.g = add i32 %i.d, -1
  %i.h = add i32 %i.g, %i.f
  %i.i = sdiv i32 %i.h, 4
  tail call void @_ZN9Stockfish4Eval4NNUE16AccumulatorStack8evaluateILj128EEEvRKNS_8PositionERKNS1_18FeatureTransformerIXT_EEERNS1_17AccumulatorCaches5CacheIXT_EEE(ptr noundef nonnull align 64 dereferenceable(2529288) %3, ptr noundef nonnull align 8 dereferenceable(1048) %2, ptr noundef nonnull align 64 dereferenceable(6488448) %1, ptr noundef nonnull align 64 dereferenceable(49152) %4) #19
  %i.j = tail call noundef nonnull align 64 dereferenceable(4871) ptr @_ZNK9Stockfish4Eval4NNUE16AccumulatorStack6latestINS1_8Features11HalfKAv2_hmEEERKNS1_16AccumulatorStateIT_EEv(ptr noundef nonnull align 64 dereferenceable(2529288) %3) #19 ; 2 uses
  %i.k = tail call noundef nonnull align 64 dereferenceable(5280) ptr @_ZNK9Stockfish4Eval4NNUE16AccumulatorStack6latestINS1_8Features11FullThreatsEEERKNS1_16AccumulatorStateIT_EEv(ptr noundef nonnull align 64 dereferenceable(2529288) %3) #19 ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 620
  %i.m = load i8, ptr %i.l, align 4, !tbaa !142   ; 2 uses
  %i.n = xor i8 %i.m, 1
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 4224 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 4736 ; 2 uses
  %i.q = zext i8 %i.m to i64                      ; 2 uses
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.q
  %i.s = sext i32 %i.i to i64                     ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !129
  %i.v = zext i8 %i.n to i64                      ; 2 uses
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.v
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.s
  %i.y = load i32, ptr %i.x, align 4, !tbaa !129
  %i.z = getelementptr inbounds nuw [256 x i8], ptr %i.o, i64 %i.q ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 128
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 192
  %i.ad = load <32 x i16>, ptr %i.z, align 64, !tbaa !62
  %i.ae = tail call <32 x i16> @llvm.smax.v32i16(<32 x i16> %i.ad, <32 x i16> zeroinitializer)
  %i.af = tail call <32 x i16> @llvm.umin.v32i16(<32 x i16> %i.ae, <32 x i16> splat (i16 254))
  %i.ag = shl nuw nsw <32 x i16> %i.af, splat (i16 7)
  %i.ah = load <32 x i16>, ptr %i.ab, align 64, !tbaa !62
  %i.ai = tail call <32 x i16> @llvm.smax.v32i16(<32 x i16> %i.ah, <32 x i16> zeroinitializer)
  %i.aj = tail call <32 x i16> @llvm.umin.v32i16(<32 x i16> %i.ai, <32 x i16> splat (i16 254))
  %i.ak = shl nuw nsw <32 x i16> %i.aj, splat (i16 7)
  %i.al = load <32 x i16>, ptr %i.aa, align 64, !tbaa !62
  %i.am = tail call <32 x i16> @llvm.smin.v32i16(<32 x i16> %i.al, <32 x i16> splat (i16 254))
  %i.an = load <32 x i16>, ptr %i.ac, align 64, !tbaa !62
  %i.ao = tail call <32 x i16> @llvm.smin.v32i16(<32 x i16> %i.an, <32 x i16> splat (i16 254))
  %5 = call <32 x i16> @llvm.smulh.v32i16(<32 x i16> %i.ag, <32 x i16> %i.am)
  %6 = call <32 x i16> @llvm.smulh.v32i16(<32 x i16> %i.ak, <32 x i16> %i.ao)
  %i.ap = tail call <64 x i8> @llvm.x86.avx512.packuswb.512(<32 x i16> %5, <32 x i16> %6) ; 2 uses
  store <64 x i8> %i.ap, ptr %i.b, align 64, !tbaa !62
  %i.aq = getelementptr inbounds nuw [256 x i8], ptr %i.o, i64 %i.v ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 128
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 64
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 192
  %i.av = load <32 x i16>, ptr %i.aq, align 64, !tbaa !62
  %i.aw = tail call <32 x i16> @llvm.smax.v32i16(<32 x i16> %i.av, <32 x i16> zeroinitializer)
  %i.ax = tail call <32 x i16> @llvm.umin.v32i16(<32 x i16> %i.aw, <32 x i16> splat (i16 254))
  %i.ay = shl nuw nsw <32 x i16> %i.ax, splat (i16 7)
  %i.az = load <32 x i16>, ptr %i.at, align 64, !tbaa !62
  %i.ba = tail call <32 x i16> @llvm.smax.v32i16(<32 x i16> %i.az, <32 x i16> zeroinitializer)
  %i.bb = tail call <32 x i16> @llvm.umin.v32i16(<32 x i16> %i.ba, <32 x i16> splat (i16 254))
  %i.bc = shl nuw nsw <32 x i16> %i.bb, splat (i16 7)
  %i.bd = load <32 x i16>, ptr %i.ar, align 64, !tbaa !62
  %i.be = tail call <32 x i16> @llvm.smin.v32i16(<32 x i16> %i.bd, <32 x i16> splat (i16 254))
  %i.bf = load <32 x i16>, ptr %i.au, align 64, !tbaa !62
  %i.bg = tail call <32 x i16> @llvm.smin.v32i16(<32 x i16> %i.bf, <32 x i16> splat (i16 254))
  %7 = call <32 x i16> @llvm.smulh.v32i16(<32 x i16> %i.ay, <32 x i16> %i.be)
  %8 = call <32 x i16> @llvm.smulh.v32i16(<32 x i16> %i.bc, <32 x i16> %i.bg)
  %i.bh = tail call <64 x i8> @llvm.x86.avx512.packuswb.512(<32 x i16> %7, <32 x i16> %8) ; 2 uses
  store <64 x i8> %i.bh, ptr %i.as, align 64, !tbaa !62
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 6488448
  %i.bj = getelementptr inbounds [3520 x i8], ptr %i.bi, i64 %i.s ; 22 uses
  %i.bk = load i8, ptr @_ZGVZNK9Stockfish4Eval4NNUE19NetworkArchitectureILj128ELi15ELi32EE9propagateEPKhE6buffer, align 8
  %i.bl = icmp eq i8 %i.bk, 0
  %i.bm = bitcast <64 x i8> %i.ap to <16 x i32>
  %i.bn = bitcast <64 x i8> %i.bh to <16 x i32>
  br i1 %i.bl, label %bb.b, label %bb.c, !prof !130

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(576) @_ZZNK9Stockfish4Eval4NNUE19NetworkArchitectureILj128ELi15ELi32EE9propagateEPKhE6buffer, i8 0, i64 576, i1 false)
  store i8 1, ptr @_ZGVZNK9Stockfish4Eval4NNUE19NetworkArchitectureILj128ELi15ELi32EE9propagateEPKhE6buffer, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.bo = tail call <32 x i16> @llvm.x86.avx512.packusdw.512(<16 x i32> %i.bm, <16 x i32> %i.bn)
  %i.bp = icmp ne <32 x i16> %i.bo, zeroinitializer ; 2 uses
  %i.bq = tail call <32 x i16> @llvm.x86.avx512.mask.compress.v32i16(<32 x i16> <i16 0, i16 1, i16 2, i16 3, i16 16, i16 17, i16 18, i16 19, i16 4, i16 5, i16 6, i16 7, i16 20, i16 21, i16 22, i16 23, i16 8, i16 9, i16 10, i16 11, i16 24, i16 25, i16 26, i16 27, i16 12, i16 13, i16 14, i16 15, i16 28, i16 29, i16 30, i16 31>, <32 x i16> zeroinitializer, <32 x i1> %i.bp)
  store <32 x i16> %i.bq, ptr %i.a, align 16, !tbaa !62, !alias.scope !277, !noalias !278
  %i.br = load <16 x i32>, ptr %i.bj, align 64, !tbaa !62 ; 2 uses
  %i.bs = bitcast <32 x i1> %i.bp to i32
  %i.bt = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.bs) ; 2 uses
  %i.bu = shl nuw nsw i32 %i.bt, 1
  %.idx.i.i = zext nneg i32 %i.bu to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx.i.i ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bj, i64 64 ; 4 uses
  %i.bx = getelementptr inbounds i8, ptr %i.bv, i64 -4
  %i.by = icmp samesign ugt i32 %i.bt, 2
  br i1 %i.by, label %.loopexit74.i.i, label %.preheader73.i.i

..preheader73_crit_edge.i.i:                      ; preds = %.loopexit74.i.i
  %i.bz = add <16 x i32> %i.dk, %i.dj
  br label %.preheader73.i.i

.preheader73.i.i:                                 ; preds = %..preheader73_crit_edge.i.i, %bb.c
  %.lcssa83.lcssa.i.i = phi <16 x i32> [ %i.di, %..preheader73_crit_edge.i.i ], [ %i.br, %bb.c ]
  %.070.lcssa.i.i = phi ptr [ %i.ch, %..preheader73_crit_edge.i.i ], [ %i.a, %bb.c ] ; 2 uses
  %invariant.op.i.i = phi <16 x i32> [ %i.bz, %..preheader73_crit_edge.i.i ], [ zeroinitializer, %bb.c ]
  %.reass.i.i = add <16 x i32> %invariant.op.i.i, %.lcssa83.lcssa.i.i ; 2 uses
  %i.ca = icmp ult ptr %.070.lcssa.i.i, %i.bv
  br i1 %i.ca, label %.lr.ph99.i.i, label %_ZNK9Stockfish4Eval4NNUE19NetworkArchitectureILj128ELi15ELi32EE9propagateEPKh.exit

.loopexit74.i.i:                                  ; preds = %bb.c, %.loopexit74.i.i
  %.lcssa8190.i.i = phi <16 x i32> [ %i.dk, %.loopexit74.i.i ], [ zeroinitializer, %bb.c ]
  %.lcssa7988.i.i = phi <16 x i32> [ %i.dj, %.loopexit74.i.i ], [ zeroinitializer, %bb.c ]
  %.07085.i.i = phi ptr [ %i.ch, %.loopexit74.i.i ], [ %i.a, %bb.c ] ; 4 uses
  %.lcssa8384.i.i = phi <16 x i32> [ %i.di, %.loopexit74.i.i ], [ %i.br, %bb.c ]
  %i.cb = getelementptr inbounds nuw i8, ptr %.07085.i.i, i64 2
  %i.cc = load i16, ptr %.07085.i.i, align 2, !tbaa !161
  %i.cd = zext i16 %i.cc to i64                   ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.07085.i.i, i64 4
  %i.cf = load i16, ptr %i.cb, align 2, !tbaa !161
  %i.cg = zext i16 %i.cf to i64                   ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.07085.i.i, i64 6 ; 3 uses
  %i.ci = load i16, ptr %i.ce, align 2, !tbaa !161
  %i.cj = zext i16 %i.ci to i64                   ; 2 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.cd
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !129
  %i.cm = insertelement <16 x i32> poison, i32 %i.cl, i64 0
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.cg
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !129
  %i.cp = insertelement <16 x i32> poison, i32 %i.co, i64 0
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.cj
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !129
  %i.cs = insertelement <16 x i32> poison, i32 %i.cr, i64 0
  %i.ct = shl nuw nsw i64 %i.cd, 6
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.ct
  %i.cv = shl nuw nsw i64 %i.cg, 6
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.cv
  %i.cx = shl nuw nsw i64 %i.cj, 6
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.cx
  %i.cz = load <64 x i8>, ptr %i.cu, align 64, !tbaa !62
  %i.da = bitcast <16 x i32> %i.cm to <64 x i8>
  %i.db = shufflevector <64 x i8> %i.da, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.dc = load <64 x i8>, ptr %i.cw, align 64, !tbaa !62
  %i.dd = bitcast <16 x i32> %i.cp to <64 x i8>
  %i.de = shufflevector <64 x i8> %i.dd, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.df = load <64 x i8>, ptr %i.cy, align 64, !tbaa !62
  %i.dg = bitcast <16 x i32> %i.cs to <64 x i8>
  %i.dh = shufflevector <64 x i8> %i.dg, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.di = call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %.lcssa8384.i.i, <64 x i8> %i.db, <64 x i8> %i.cz) ; 2 uses
  %i.dj = call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %.lcssa7988.i.i, <64 x i8> %i.de, <64 x i8> %i.dc) ; 2 uses
  %i.dk = call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %.lcssa8190.i.i, <64 x i8> %i.dh, <64 x i8> %i.df) ; 2 uses
  %i.dl = icmp ult ptr %i.ch, %i.bx
  br i1 %i.dl, label %.loopexit74.i.i, label %..preheader73_crit_edge.i.i, !llvm.loop !3

.lr.ph99.i.i:                                     ; preds = %.preheader73.i.i, %.lr.ph99.i.i
  %.198.i.i = phi ptr [ %i.dm, %.lr.ph99.i.i ], [ %.070.lcssa.i.i, %.preheader73.i.i ] ; 2 uses
  %.lcssa949697.i.i = phi <16 x i32> [ %i.dx, %.lr.ph99.i.i ], [ %.reass.i.i, %.preheader73.i.i ]
  %i.dm = getelementptr inbounds nuw i8, ptr %.198.i.i, i64 2 ; 2 uses
  %i.dn = load i16, ptr %.198.i.i, align 2, !tbaa !161
  %i.do = zext i16 %i.dn to i64                   ; 2 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.do
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !129
  %i.dr = insertelement <16 x i32> poison, i32 %i.dq, i64 0
  %i.ds = shl nuw nsw i64 %i.do, 6
  %i.dt = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.ds
  %i.du = load <64 x i8>, ptr %i.dt, align 64, !tbaa !62
  %i.dv = bitcast <16 x i32> %i.dr to <64 x i8>
  %i.dw = shufflevector <64 x i8> %i.dv, <64 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.dx = call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %.lcssa949697.i.i, <64 x i8> %i.dw, <64 x i8> %i.du) ; 2 uses
  %i.dy = icmp ult ptr %i.dm, %i.bv
  br i1 %i.dy, label %.lr.ph99.i.i, label %_ZNK9Stockfish4Eval4NNUE19NetworkArchitectureILj128ELi15ELi32EE9propagateEPKh.exit, !llvm.loop !4

_ZNK9Stockfish4Eval4NNUE19NetworkArchitectureILj128ELi15ELi32EE9propagateEPKh.exit: ; preds = %.lr.ph99.i.i, %.preheader73.i.i
  %.sroa.0.0.in.i.i = phi <16 x i32> [ %.reass.i.i, %.preheader73.i.i ], [ %i.dx, %.lr.ph99.i.i ] ; 3 uses
  %i.dz = call align 64 ptr @llvm.threadlocal.address.p0(ptr align 64 @_ZZNK9Stockfish4Eval4NNUE19NetworkArchitectureILj128ELi15ELi32EE9propagateEPKhE6buffer) ; 16 uses
  store <16 x i32> %.sroa.0.0.in.i.i, ptr %i.dz, align 64, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 128 ; 2 uses
  %i.eb = shufflevector <16 x i32> %.sroa.0.0.in.i.i, <16 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %bc.i = bitcast <16 x i32> %.sroa.0.0.in.i.i to <4 x i128> ; 3 uses
  %i.ec = extractelement <4 x i128> %bc.i, i64 1
  %i.ed = bitcast i128 %i.ec to <4 x i32>         ; 2 uses
  %i.ee = call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.eb, <4 x i32> %i.ed) ; 2 uses
  %i.ef = extractelement <4 x i128> %bc.i, i64 2
  %i.eg = bitcast i128 %i.ef to <4 x i32>         ; 2 uses
  %i.eh = extractelement <4 x i128> %bc.i, i64 3
  %i.ei = bitcast i128 %i.eh to <4 x i32>         ; 2 uses
  %i.ej = call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.eg, <4 x i32> %i.ei) ; 2 uses
  %i.ek = call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.ee, <8 x i16> %i.ee)
  %i.el = lshr <8 x i16> %i.ek, splat (i16 3)
  %i.em = call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.ej, <8 x i16> %i.ej)
  %i.en = lshr <8 x i16> %i.em, splat (i16 3)
  %i.eo = call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.el, <8 x i16> %i.en)
  store <16 x i8> %i.eo, ptr %i.ea, align 64, !tbaa !62
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dz, i64 192 ; 2 uses
  %i.eq = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.eb, <4 x i32> %i.ed)
  %i.er = lshr <8 x i16> %i.eq, splat (i16 6)
  %i.es = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.eg, <4 x i32> %i.ei)
  %i.et = lshr <8 x i16> %i.es, splat (i16 6)
  %i.eu = call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.er, <8 x i16> %i.et)
  store <16 x i8> %i.eu, ptr %i.ep, align 64, !tbaa !62
  %i.ev = getelementptr inbounds nuw i8, ptr %i.dz, i64 143
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.ev, ptr noundef nonnull align 64 dereferenceable(15) %i.ep, i64 15, i1 false)
  %i.ew = getelementptr inbounds nuw i8, ptr %i.bj, i64 2176
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dz, i64 256
  %.sroa.0.0.copyload.i.i = load <16 x i32>, ptr %i.ew, align 64, !tbaa !62
  %.sroa.20.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 2240
  %.sroa.20.0.copyload.i.i = load <16 x i32>, ptr %.sroa.20.0..sroa_idx.i.i, align 64, !tbaa !62
  %i.ey = getelementptr inbounds nuw i8, ptr %i.bj, i64 2304
  %i.ez = load <1 x i32>, ptr %i.ea, align 64
  %i.fa = shufflevector <1 x i32> %i.ez, <1 x i32> poison, <16 x i32> zeroinitializer
  %i.fb = bitcast <16 x i32> %i.fa to <64 x i8>   ; 2 uses
  %i.fc = load <64 x i8>, ptr %i.ey, align 64, !tbaa !62
  %i.fd = call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %.sroa.0.0.copyload.i.i, <64 x i8> %i.fb, <64 x i8> %i.fc)
  %i.fe = getelementptr inbounds nuw i8, ptr %i.bj, i64 2368
  %i.ff = load <64 x i8>, ptr %i.fe, align 64, !tbaa !62
  %i.fg = call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %.sroa.20.0.copyload.i.i, <64 x i8> %i.fb, <64 x i8> %i.ff)
  %i.fh = getelementptr inbounds nuw i8, ptr %i.dz, i64 132
  %i.fi = load <1 x i32>, ptr %i.fh, align 4
  %i.fj = shufflevector <1 x i32> %i.fi, <1 x i32> poison, <16 x i32> zeroinitializer
  %i.fk = getelementptr inbounds nuw i8, ptr %i.bj, i64 2432
  %i.fl = bitcast <16 x i32> %i.fj to <64 x i8>   ; 2 uses
  %i.fm = load <64 x i8>, ptr %i.fk, align 64, !tbaa !62
  %i.fn = call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.fd, <64 x i8> %i.fl, <64 x i8> %i.fm)
  %i.fo = getelementptr inbounds nuw i8, ptr %i.bj, i64 2496
  %i.fp = load <64 x i8>, ptr %i.fo, align 64, !tbaa !62
  %i.fq = call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.fg, <64 x i8> %i.fl, <64 x i8> %i.fp)
  %i.fr = getelementptr inbounds nuw i8, ptr %i.dz, i64 136
  %i.fs = load <1 x i32>, ptr %i.fr, align 8
  %i.ft = shufflevector <1 x i32> %i.fs, <1 x i32> poison, <16 x i32> zeroinitializer
  %i.fu = getelementptr inbounds nuw i8, ptr %i.bj, i64 2560
  %i.fv = bitcast <16 x i32> %i.ft to <64 x i8>   ; 2 uses
  %i.fw = load <64 x i8>, ptr %i.fu, align 64, !tbaa !62
  %i.fx = call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.fn, <64 x i8> %i.fv, <64 x i8> %i.fw)
  %i.fy = getelementptr inbounds nuw i8, ptr %i.bj, i64 2624
  %i.fz = load <64 x i8>, ptr %i.fy, align 64, !tbaa !62
  %i.ga = call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.fq, <64 x i8> %i.fv, <64 x i8> %i.fz)
  %i.gb = getelementptr inbounds nuw i8, ptr %i.dz, i64 140
  %i.gc = load <1 x i32>, ptr %i.gb, align 4
  %i.gd = shufflevector <1 x i32> %i.gc, <1 x i32> poison, <16 x i32> zeroinitializer
  %i.ge = getelementptr inbounds nuw i8, ptr %i.bj, i64 2688
  %i.gf = bitcast <16 x i32> %i.gd to <64 x i8>   ; 2 uses
  %i.gg = load <64 x i8>, ptr %i.ge, align 64, !tbaa !62
  %i.gh = call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.fx, <64 x i8> %i.gf, <64 x i8> %i.gg)
  %i.gi = getelementptr inbounds nuw i8, ptr %i.bj, i64 2752
  %i.gj = load <64 x i8>, ptr %i.gi, align 64, !tbaa !62
  %i.gk = call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.ga, <64 x i8> %i.gf, <64 x i8> %i.gj)
  %i.gl = getelementptr inbounds nuw i8, ptr %i.dz, i64 144
  %i.gm = load <1 x i32>, ptr %i.gl, align 16
  %i.gn = shufflevector <1 x i32> %i.gm, <1 x i32> poison, <16 x i32> zeroinitializer
  %i.go = getelementptr inbounds nuw i8, ptr %i.bj, i64 2816
  %i.gp = bitcast <16 x i32> %i.gn to <64 x i8>   ; 2 uses
  %i.gq = load <64 x i8>, ptr %i.go, align 64, !tbaa !62
  %i.gr = call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.gh, <64 x i8> %i.gp, <64 x i8> %i.gq)
  %i.gs = getelementptr inbounds nuw i8, ptr %i.bj, i64 2880
  %i.gt = load <64 x i8>, ptr %i.gs, align 64, !tbaa !62
  %i.gu = call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.gk, <64 x i8> %i.gp, <64 x i8> %i.gt)
  %i.gv = getelementptr inbounds nuw i8, ptr %i.dz, i64 148
  %i.gw = load <1 x i32>, ptr %i.gv, align 4
  %i.gx = shufflevector <1 x i32> %i.gw, <1 x i32> poison, <16 x i32> zeroinitializer
  %i.gy = getelementptr inbounds nuw i8, ptr %i.bj, i64 2944
  %i.gz = bitcast <16 x i32> %i.gx to <64 x i8>   ; 2 uses
  %i.ha = load <64 x i8>, ptr %i.gy, align 64, !tbaa !62
  %i.hb = call <16 x i32> @llvm.x86.avx512.vpdpbusd.512(<16 x i32> %i.gr, <64 x i8> %i.gz, <64 x i8> %i.ha)
  %i.hc = getelementptr inbounds nuw i8, ptr %i.bj, i64 3008
  %i.hd = load <64 x i8>, ptr %i.hc, align 64, !tbaa !62
end_hunk_1
begin_hunk_2_@_ZN9Stockfish4Eval4NNUE13write_leb_128IiLm180224EEEvRSoRKSt5arrayIT_XT0_EE:bb.a
bb.u:                                             ; preds = %bb.t
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02859
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 36
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !129
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %bb.u
  %.1.9 = phi i32 [ %i.bd, %bb.u ], [ %i.bj, %bb.v ]
  %.027.9 = phi i32 [ %i.bh, %bb.u ], [ %i.bi, %bb.v ] ; 2 uses
  %i.bi = ashr i32 %.027.9, 7                     ; 2 uses
  %i.bj = add i32 %.1.9, 1                        ; 2 uses
  %i.bk = shl i32 %.027.9, 25
  %sext.9 = ashr i32 %i.bk, 31
  %.not.9 = icmp eq i32 %i.bi, %sext.9
  br i1 %.not.9, label %bb.w, label %bb.v, !llvm.loop !385

bb.w:                                             ; preds = %bb.v
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02859
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 40
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !129
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %bb.w
  %.1.10 = phi i32 [ %i.bj, %bb.w ], [ %i.bp, %bb.x ]
  %.027.10 = phi i32 [ %i.bn, %bb.w ], [ %i.bo, %bb.x ] ; 2 uses
  %i.bo = ashr i32 %.027.10, 7                    ; 2 uses
  %i.bp = add i32 %.1.10, 1                       ; 3 uses
  %i.bq = shl i32 %.027.10, 25
  %sext.10 = ashr i32 %i.bq, 31
  %.not.10 = icmp eq i32 %i.bo, %sext.10
  br i1 %.not.10, label %bb.y, label %bb.x, !llvm.loop !385

bb.y:                                             ; preds = %bb.x
  %i.br = add nuw nsw i64 %.02859, 11             ; 2 uses
  %exitcond.not.10 = icmp eq i64 %i.br, 180224
  br i1 %exitcond.not.10, label %bb.b, label %bb.c, !llvm.loop !386

bb.z:                                             ; preds = %bb.af
  %i.bs = zext i32 %i.cd to i64
  %i.bt = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.b, i64 noundef %i.bs) #19 ; 0 uses
  br label %_ZZN9Stockfish4Eval4NNUE13write_leb_128IiLm180224EEEvRSoRKSt5arrayIT_XT0_EEENKUlvE_clEv.exit

_ZZN9Stockfish4Eval4NNUE13write_leb_128IiLm180224EEEvRSoRKSt5arrayIT_XT0_EEENKUlvE_clEv.exit: ; preds = %.thread, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  ret void

.backedge:                                        ; preds = %.backedge.backedge, %bb.b
  %.02662 = phi i64 [ 0, %bb.b ], [ %.02662.be, %.backedge.backedge ] ; 3 uses
  %.05261 = phi i32 [ 0, %bb.b ], [ %.05261.be, %.backedge.backedge ]
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02662
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !129
  br label %_ZZN9Stockfish4Eval4NNUE13write_leb_128IiLm180224EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit

_ZZN9Stockfish4Eval4NNUE13write_leb_128IiLm180224EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit: ; preds = %_ZZN9Stockfish4Eval4NNUE13write_leb_128IiLm180224EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit.backedge, %.backedge
  %.153 = phi i32 [ %.05261, %.backedge ], [ %.153.be, %_ZZN9Stockfish4Eval4NNUE13write_leb_128IiLm180224EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit.backedge ] ; 4 uses
  %.0 = phi i32 [ %i.bv, %.backedge ], [ %i.bx, %_ZZN9Stockfish4Eval4NNUE13write_leb_128IiLm180224EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit.backedge ] ; 3 uses
  %i.bw = trunc i32 %.0 to i8                     ; 2 uses
  %i.bx = ashr i32 %.0, 7                         ; 3 uses
  %i.by = and i32 %.0, 64
  %i.bz = icmp eq i32 %i.by, 0
  br i1 %i.bz, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZZN9Stockfish4Eval4NNUE13write_leb_128IiLm180224EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit
  %i.ca = icmp eq i32 %i.bx, 0
  br i1 %i.ca, label %bb.ac, label %bb.ad

bb.ab:                                            ; preds = %_ZZN9Stockfish4Eval4NNUE13write_leb_128IiLm180224EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit
  %i.cb = icmp eq i32 %i.bx, -1
  br i1 %i.cb, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.cc = and i8 %i.bw, 127
  %i.cd = add nuw i32 %.153, 1                    ; 3 uses
  %i.ce = zext i32 %.153 to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ce
  store i8 %i.cc, ptr %i.cf, align 1, !tbaa !62
  %i.cg = icmp eq i32 %i.cd, 4096
  br i1 %i.cg, label %.thread, label %bb.af

bb.ad:                                            ; preds = %bb.ab, %bb.aa
  %i.ch = or i8 %i.bw, -128
  %i.ci = add nuw i32 %.153, 1                    ; 2 uses
  %i.cj = zext i32 %.153 to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.cj
  store i8 %i.ch, ptr %i.ck, align 1, !tbaa !62
  %i.cl = icmp eq i32 %i.ci, 4096
  br i1 %i.cl, label %bb.ae, label %_ZZN9Stockfish4Eval4NNUE13write_leb_128IiLm180224EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit.backedge

bb.ae:                                            ; preds = %bb.ad
  %i.cm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.b, i64 noundef 4096) #19 ; 0 uses
  br label %_ZZN9Stockfish4Eval4NNUE13write_leb_128IiLm180224EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit.backedge

_ZZN9Stockfish4Eval4NNUE13write_leb_128IiLm180224EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit.backedge: ; preds = %bb.ae, %bb.ad
  %.153.be = phi i32 [ %i.ci, %bb.ad ], [ 0, %bb.ae ]
  br label %_ZZN9Stockfish4Eval4NNUE13write_leb_128IiLm180224EEEvRSoRKSt5arrayIT_XT0_EEENKUlhE_clEh.exit

bb.af:                                            ; preds = %bb.ac
  %i.cn = add nuw nsw i64 %.02662, 1              ; 2 uses
  %exitcond64.not = icmp eq i64 %i.cn, 180224
  br i1 %exitcond64.not, label %bb.z, label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.af, %.thread
  %.02662.be = phi i64 [ %i.cn, %bb.af ], [ %i.cp, %.thread ]
  %.05261.be = phi i32 [ %i.cd, %bb.af ], [ 0, %.thread ]
  br label %.backedge, !llvm.loop !387

.thread:                                          ; preds = %bb.ac
  %i.co = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.b, i64 noundef 4096) #19 ; 0 uses
  %i.cp = add nuw nsw i64 %.02662, 1              ; 2 uses
  %exitcond64.not70 = icmp eq i64 %i.cp, 180224
  br i1 %exitcond64.not70, label %_ZZN9Stockfish4Eval4NNUE13write_leb_128IiLm180224EEEvRSoRKSt5arrayIT_XT0_EEENKUlvE_clEv.exit, label %.backedge.backedge
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK9Stockfish4Eval4NNUE19NetworkArchitectureILj128ELi15ELi32EE16write_parametersERSo(ptr noundef nonnull align 64 dereferenceable(3520) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 64 dereferenceable(2112) %0, i64 noundef 64) #19 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.06.i = phi i32 [ 0, %bb.a ], [ %i.p, %bb.b ]  ; 4 uses
  %i.e = shl nuw nsw i32 %.06.i, 4
  %i.f = and i32 %i.e, 1984
  %i.g = lshr i32 %.06.i, 5
  %i.h = and i32 %i.g, 60
  %i.i = and i32 %.06.i, 3
  %i.j = or disjoint i32 %i.h, %i.i
  %i.k = or disjoint i32 %i.j, %i.f
  %i.l = zext nneg i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 %i.n, ptr %i.b, align 1, !tbaa !62
  %i.o = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.b, i64 noundef 1) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = add nuw nsw i32 %.06.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.p, 2048
  br i1 %exitcond.not.i, label %_ZNK9Stockfish4Eval4NNUE6Layers26AffineTransformSparseInputILj128ELj16EE16write_parametersERSo.exit, label %bb.b, !llvm.loop !388

_ZNK9Stockfish4Eval4NNUE6Layers26AffineTransformSparseInputILj128ELj16EE16write_parametersERSo.exit: ; preds = %bb.b
  %i.q = load ptr, ptr %1, align 8, !tbaa !93
  %i.r = getelementptr i8, ptr %i.q, i64 -24
  %i.s = load i64, ptr %i.r, align 8
  %i.t = getelementptr inbounds i8, ptr %1, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load i32, ptr %i.u, align 8, !tbaa !149
  %i.w = and i32 %i.v, 5
  %.not.i = icmp eq i32 %i.w, 0
  br i1 %.not.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %_ZNK9Stockfish4Eval4NNUE6Layers26AffineTransformSparseInputILj128ELj16EE16write_parametersERSo.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 2176
  %i.y = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 64 dereferenceable(1152) %i.x, i64 noundef 128) #19 ; 0 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 2304
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.06.i6 = phi i32 [ 0, %bb.c ], [ %i.al, %bb.d ] ; 4 uses
  %i.aa = shl nuw nsw i32 %.06.i6, 5
  %i.ab = and i32 %i.aa, 896
  %i.ac = lshr i32 %.06.i6, 3
  %i.ad = and i32 %i.ac, 124
  %i.ae = and i32 %.06.i6, 3
  %i.af = or disjoint i32 %i.ad, %i.ae
  %i.ag = or disjoint i32 %i.af, %i.ab
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.aj, ptr %i.a, align 1, !tbaa !62
  %i.ak = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 1) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.al = add nuw nsw i32 %.06.i6, 1              ; 2 uses
  %exitcond.not.i7 = icmp eq i32 %i.al, 1024
  br i1 %exitcond.not.i7, label %_ZNK9Stockfish4Eval4NNUE6Layers15AffineTransformILj30ELj32EE16write_parametersERSo.exit, label %bb.d, !llvm.loop !10

_ZNK9Stockfish4Eval4NNUE6Layers15AffineTransformILj30ELj32EE16write_parametersERSo.exit: ; preds = %bb.d
  %i.am = load ptr, ptr %1, align 8, !tbaa !93
  %i.an = getelementptr i8, ptr %i.am, i64 -24
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = getelementptr inbounds i8, ptr %1, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !149
  %i.as = and i32 %i.ar, 5
  %.not.i8 = icmp eq i32 %i.as, 0
  br i1 %.not.i8, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNK9Stockfish4Eval4NNUE6Layers15AffineTransformILj30ELj32EE16write_parametersERSo.exit
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 3392
  %i.au = call noundef zeroext i1 @_ZNK9Stockfish4Eval4NNUE6Layers15AffineTransformILj32ELj1EE16write_parametersERSo(ptr noundef nonnull align 64 dereferenceable(96) %i.at, ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNK9Stockfish4Eval4NNUE6Layers15AffineTransformILj30ELj32EE16write_parametersERSo.exit, %_ZNK9Stockfish4Eval4NNUE6Layers26AffineTransformSparseInputILj128ELj16EE16write_parametersERSo.exit
  %i.av = phi i1 [ false, %_ZNK9Stockfish4Eval4NNUE6Layers26AffineTransformSparseInputILj128ELj16EE16write_parametersERSo.exit ], [ false, %_ZNK9Stockfish4Eval4NNUE6Layers15AffineTransformILj30ELj32EE16write_parametersERSo.exit ], [ %i.au, %bb.e ]
  ret i1 %i.av
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <32 x i16> @llvm.umin.v32i16(<32 x i16>, <32 x i16>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v8i32(<8 x i32>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v9i32.p0(<9 x i32>, ptr captures(none), <9 x i1>) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <6 x i64> @llvm.masked.load.v6i64.p0(ptr captures(none), <6 x i1>, <6 x i64>) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <5 x i64> @llvm.masked.load.v5i64.p0(ptr captures(none), <5 x i1>, <5 x i64>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.smulh.v8i16(<8 x i16>, <8 x i16>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <32 x i16> @llvm.smulh.v32i16(<32 x i16>, <32 x i16>) #12

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #10 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #19 = { nounwind }
attributes #20 = { builtin nounwind allocsize(0) }
attributes #21 = { builtin nounwind }
attributes #22 = { noreturn nounwind }
attributes #23 = { cold noreturn nounwind }

!llvm.module.flags = !{!12, !13, !14, !15, !16}
!llvm.ident = !{!17}
!llvm.errno.tbaa = !{!22}

!0 = distinct !{null, null, null, null}
!1 = distinct !{!1, !127}
!2 = distinct !{null}
!3 = distinct !{!3, !127}
!4 = distinct !{!4, !127}
!5 = distinct !{!5, !127}
!6 = distinct !{!6, !127}
!7 = distinct !{!7, !127}
!8 = distinct !{!8, !127}
!9 = distinct !{!9, !127}
!10 = distinct !{!10, !127}
!11 = distinct !{!11, !127}
!12 = !{i32 8, !"PIC Level", i32 2}
!13 = !{i32 7, !"PIE Level", i32 2}
!14 = !{i32 7, !"uwtable", i32 2}
!15 = !{i32 1, !"ThinLTO", i32 0}
!16 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!17 = !{!"Ubuntu clang version 23.0.0 (++20260706082120+bf74249b5ecd-1~exp1~20260706082130.1707)"}
!18 = !{!"Simple C++ TBAA"}
!19 = !{!"omnipotent char", !18, i64 0}
!20 = !{!"int", !19, i64 0}
!21 = !{!"__libc_errno", !20, i64 0}
!22 = !{!21, !20, i64 0}
!23 = !{i64 16, !"_ZTSSt15basic_streambufIcSt11char_traitsIcEE"}
!24 = !{i64 32, !"_ZTSMSt15basic_streambufIcSt11char_traitsIcEEFvRKSt6localeE.virtual"}
!25 = !{i64 40, !"_ZTSMSt15basic_streambufIcSt11char_traitsIcEEFPS2_PclE.virtual"}
!26 = !{i64 48, !"_ZTSMSt15basic_streambufIcSt11char_traitsIcEEFSt4fposI11__mbstate_tElSt12_Ios_SeekdirSt13_Ios_OpenmodeE.virtual"}
!27 = !{i64 56, !"_ZTSMSt15basic_streambufIcSt11char_traitsIcEEFSt4fposI11__mbstate_tES5_St13_Ios_OpenmodeE.virtual"}
!28 = !{i64 64, !"_ZTSMSt15basic_streambufIcSt11char_traitsIcEEFivE.virtual"}
!29 = !{i64 72, !"_ZTSMSt15basic_streambufIcSt11char_traitsIcEEFlvE.virtual"}
!30 = !{i64 80, !"_ZTSMSt15basic_streambufIcSt11char_traitsIcEEFlPclE.virtual"}
!31 = !{i64 88, !"_ZTSMSt15basic_streambufIcSt11char_traitsIcEEFivE.virtual"}
!32 = !{i64 96, !"_ZTSMSt15basic_streambufIcSt11char_traitsIcEEFivE.virtual"}
!33 = !{i64 104, !"_ZTSMSt15basic_streambufIcSt11char_traitsIcEEFiiE.virtual"}
!34 = !{i64 112, !"_ZTSMSt15basic_streambufIcSt11char_traitsIcEEFlPKclE.virtual"}
!35 = !{i64 120, !"_ZTSMSt15basic_streambufIcSt11char_traitsIcEEFiiE.virtual"}
!36 = !{i64 16, !"_ZTSZN9Stockfish4Eval4NNUE7NetworkINS1_19NetworkArchitectureILj1024ELi15ELi32EEENS1_18FeatureTransformerILj1024EEEE13load_internalEvE12MemoryBuffer"}
!37 = !{i64 32, !"_ZTSMZN9Stockfish4Eval4NNUE7NetworkINS1_19NetworkArchitectureILj1024ELi15ELi32EEENS1_18FeatureTransformerILj1024EEEE13load_internalEvE12MemoryBufferFvRKSt6localeE.virtual"}
!38 = !{i64 40, !"_ZTSMZN9Stockfish4Eval4NNUE7NetworkINS1_19NetworkArchitectureILj1024ELi15ELi32EEENS1_18FeatureTransformerILj1024EEEE13load_internalEvE12MemoryBufferFPSt15basic_streambufIcSt11char_traitsIcEEPclE.virtual"}
!39 = !{i64 48, !"_ZTSMZN9Stockfish4Eval4NNUE7NetworkINS1_19NetworkArchitectureILj1024ELi15ELi32EEENS1_18FeatureTransformerILj1024EEEE13load_internalEvE12MemoryBufferFSt4fposI11__mbstate_tElSt12_Ios_SeekdirSt13_Ios_OpenmodeE.virtual"}
!40 = !{i64 56, !"_ZTSMZN9Stockfish4Eval4NNUE7NetworkINS1_19NetworkArchitectureILj1024ELi15ELi32EEENS1_18FeatureTransformerILj1024EEEE13load_internalEvE12MemoryBufferFSt4fposI11__mbstate_tESB_St13_Ios_OpenmodeE.virtual"}
!41 = !{i64 64, !"_ZTSMZN9Stockfish4Eval4NNUE7NetworkINS1_19NetworkArchitectureILj1024ELi15ELi32EEENS1_18FeatureTransformerILj1024EEEE13load_internalEvE12MemoryBufferFivE.virtual"}
!42 = !{i64 72, !"_ZTSMZN9Stockfish4Eval4NNUE7NetworkINS1_19NetworkArchitectureILj1024ELi15ELi32EEENS1_18FeatureTransformerILj1024EEEE13load_internalEvE12MemoryBufferFlvE.virtual"}
!43 = !{i64 80, !"_ZTSMZN9Stockfish4Eval4NNUE7NetworkINS1_19NetworkArchitectureILj1024ELi15ELi32EEENS1_18FeatureTransformerILj1024EEEE13load_internalEvE12MemoryBufferFlPclE.virtual"}
!44 = !{i64 88, !"_ZTSMZN9Stockfish4Eval4NNUE7NetworkINS1_19NetworkArchitectureILj1024ELi15ELi32EEENS1_18FeatureTransformerILj1024EEEE13load_internalEvE12MemoryBufferFivE.virtual"}
!45 = !{i64 96, !"_ZTSMZN9Stockfish4Eval4NNUE7NetworkINS1_19NetworkArchitectureILj1024ELi15ELi32EEENS1_18FeatureTransformerILj1024EEEE13load_internalEvE12MemoryBufferFivE.virtual"}
!46 = !{i64 104, !"_ZTSMZN9Stockfish4Eval4NNUE7NetworkINS1_19NetworkArchitectureILj1024ELi15ELi32EEENS1_18FeatureTransformerILj1024EEEE13load_internalEvE12MemoryBufferFiiE.virtual"}
!47 = !{i64 112, !"_ZTSMZN9Stockfish4Eval4NNUE7NetworkINS1_19NetworkArchitectureILj1024ELi15ELi32EEENS1_18FeatureTransformerILj1024EEEE13load_internalEvE12MemoryBufferFlPKclE.virtual"}
!48 = !{i64 120, !"_ZTSMZN9Stockfish4Eval4NNUE7NetworkINS1_19NetworkArchitectureILj1024ELi15ELi32EEENS1_18FeatureTransformerILj1024EEEE13load_internalEvE12MemoryBufferFiiE.virtual"}
!49 = !{i64 16, !"_ZTSZN9Stockfish4Eval4NNUE7NetworkINS1_19NetworkArchitectureILj128ELi15ELi32EEENS1_18FeatureTransformerILj128EEEE13load_internalEvE12MemoryBuffer"}
!50 = !{i64 32, !"_ZTSMZN9Stockfish4Eval4NNUE7NetworkINS1_19NetworkArchitectureILj128ELi15ELi32EEENS1_18FeatureTransformerILj128EEEE13load_internalEvE12MemoryBufferFvRKSt6localeE.virtual"}
!51 = !{i64 40, !"_ZTSMZN9Stockfish4Eval4NNUE7NetworkINS1_19NetworkArchitectureILj128ELi15ELi32EEENS1_18FeatureTransformerILj128EEEE13load_internalEvE12MemoryBufferFPSt15basic_streambufIcSt11char_traitsIcEEPclE.virtual"}
!52 = !{i64 48, !"_ZTSMZN9Stockfish4Eval4NNUE7NetworkINS1_19NetworkArchitectureILj128ELi15ELi32EEENS1_18FeatureTransformerILj128EEEE13load_internalEvE12MemoryBufferFSt4fposI11__mbstate_tElSt12_Ios_SeekdirSt13_Ios_OpenmodeE.virtual"}
!53 = !{i64 56, !"_ZTSMZN9Stockfish4Eval4NNUE7NetworkINS1_19NetworkArchitectureILj128ELi15ELi32EEENS1_18FeatureTransformerILj128EEEE13load_internalEvE12MemoryBufferFSt4fposI11__mbstate_tESB_St13_Ios_OpenmodeE.virtual"}
!54 = !{i64 64, !"_ZTSMZN9Stockfish4Eval4NNUE7NetworkINS1_19NetworkArchitectureILj128ELi15ELi32EEENS1_18FeatureTransformerILj128EEEE13load_internalEvE12MemoryBufferFivE.virtual"}
!55 = !{i64 72, !"_ZTSMZN9Stockfish4Eval4NNUE7NetworkINS1_19NetworkArchitectureILj128ELi15ELi32EEENS1_18FeatureTransformerILj128EEEE13load_internalEvE12MemoryBufferFlvE.virtual"}
!56 = !{i64 80, !"_ZTSMZN9Stockfish4Eval4NNUE7NetworkINS1_19NetworkArchitectureILj128ELi15ELi32EEENS1_18FeatureTransformerILj128EEEE13load_internalEvE12MemoryBufferFlPclE.virtual"}
!57 = !{i64 88, !"_ZTSMZN9Stockfish4Eval4NNUE7NetworkINS1_19NetworkArchitectureILj128ELi15ELi32EEENS1_18FeatureTransformerILj128EEEE13load_internalEvE12MemoryBufferFivE.virtual"}
!58 = !{i64 96, !"_ZTSMZN9Stockfish4Eval4NNUE7NetworkINS1_19NetworkArchitectureILj128ELi15ELi32EEENS1_18FeatureTransformerILj128EEEE13load_internalEvE12MemoryBufferFivE.virtual"}
!59 = !{i64 104, !"_ZTSMZN9Stockfish4Eval4NNUE7NetworkINS1_19NetworkArchitectureILj128ELi15ELi32EEENS1_18FeatureTransformerILj128EEEE13load_internalEvE12MemoryBufferFiiE.virtual"}
!60 = !{i64 112, !"_ZTSMZN9Stockfish4Eval4NNUE7NetworkINS1_19NetworkArchitectureILj128ELi15ELi32EEENS1_18FeatureTransformerILj128EEEE13load_internalEvE12MemoryBufferFlPKclE.virtual"}
!61 = !{i64 120, !"_ZTSMZN9Stockfish4Eval4NNUE7NetworkINS1_19NetworkArchitectureILj128ELi15ELi32EEENS1_18FeatureTransformerILj128EEEE13load_internalEvE12MemoryBufferFiiE.virtual"}
!62 = !{!19, !19, i64 0}
!63 = !{!"long", !19, i64 0}
!64 = !{!63, !63, i64 0}
!65 = !{i64 0, i64 257, !62, i64 264, i64 8, !64, i64 272, i64 257, !62, i64 536, i64 8, !64, i64 544, i64 257, !62, i64 808, i64 8, !64}
!66 = !{!"_ZTSSt5arrayIsLm1024EE", !19, i64 0}
!67 = !{!"_ZTSSt5arrayIsLm23068672EE", !19, i64 0}
!68 = !{!"_ZTSSt5arrayIaLm81772544EE", !19, i64 0}
!69 = !{!"_ZTSSt5arrayIiLm180224EE", !19, i64 0}
!70 = !{!"_ZTSSt5arrayIiLm638848EE", !19, i64 0}
!71 = !{!"_ZTSN9Stockfish4Eval4NNUE18FeatureTransformerILj1024EEE", !66, i64 0, !67, i64 2048, !68, i64 46139392, !69, i64 127911936, !70, i64 128632832}
!72 = !{!"_ZTSN9Stockfish11FixedStringILm256EEE", !19, i64 0, !63, i64 264}
!73 = !{!"_ZTSN9Stockfish4Eval4NNUE8EvalFileE", !72, i64 0, !72, i64 272, !72, i64 544}
!74 = !{!"_ZTSN9Stockfish4Eval4NNUE16EmbeddedNNUETypeE", !19, i64 0}
!75 = !{!"bool", !19, i64 0}
!76 = !{!"_ZTSN9Stockfish4Eval4NNUE7NetworkINS1_19NetworkArchitectureILj1024ELi15ELi32EEENS1_18FeatureTransformerILj1024EEEEE", !71, i64 0, !19, i64 131188224, !73, i64 131331072, !74, i64 131331888, !75, i64 131331892}
!77 = !{!76, !74, i64 131331888}
!78 = !{!76, !75, i64 131331892}
!79 = !{!"any pointer", !19, i64 0}
!80 = !{!"p1 omnipotent char", !79, i64 0}
!81 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !80, i64 0}
!82 = !{!81, !80, i64 0}
!83 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !81, i64 0, !63, i64 8, !19, i64 16}
!84 = !{!83, !63, i64 8}
!85 = !{!83, !80, i64 0}
!86 = !{!72, !63, i64 264}
!87 = !{!"_ZTSSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !19, i64 0, !75, i64 32}
!88 = !{!87, !75, i64 32}
!89 = !{i8 0, i8 2}
!90 = !{}
!91 = !{i64 0, i64 257, !62, i64 264, i64 8, !64}
!92 = !{!"vtable pointer", !18, i64 0}
!93 = !{!92, !92, i64 0}
!94 = !{!"_ZTSSi", !63, i64 8}
!95 = !{!94, !63, i64 8}
!96 = !{!"p1 _ZTSNSt6locale5_ImplE", !79, i64 0}
!97 = !{!"_ZTSSt6locale", !96, i64 0}
!98 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !80, i64 8, !80, i64 16, !80, i64 24, !80, i64 32, !80, i64 40, !80, i64 48, !97, i64 56}
!99 = !{!98, !80, i64 8}
!100 = !{!98, !80, i64 16}
!101 = !{!98, !80, i64 24}
!102 = !{!98, !80, i64 40}
!103 = !{!98, !80, i64 32}
!104 = !{!98, !80, i64 48}
!105 = !{!"_ZTSSt13_Ios_Fmtflags", !19, i64 0}
!106 = !{!"_ZTSSt12_Ios_Iostate", !19, i64 0}
!107 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !79, i64 0}
!108 = !{!"_ZTSNSt8ios_base6_WordsE", !79, i64 0, !63, i64 8}
!109 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !79, i64 0}
!110 = !{!"_ZTSSt8ios_base", !63, i64 8, !63, i64 16, !105, i64 24, !106, i64 28, !106, i64 32, !107, i64 40, !108, i64 48, !19, i64 64, !20, i64 192, !109, i64 200, !97, i64 208}
!111 = !{!"p1 _ZTSSo", !79, i64 0}
!112 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !79, i64 0}
!113 = !{!"p1 _ZTSSt5ctypeIcE", !79, i64 0}
!114 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !79, i64 0}
!115 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !79, i64 0}
!116 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !110, i64 0, !111, i64 216, !19, i64 224, !75, i64 225, !112, i64 232, !113, i64 240, !114, i64 248, !115, i64 256}
!117 = !{!116, !111, i64 216}
!118 = !{!116, !19, i64 224}
!119 = !{!116, !75, i64 225}
!120 = !{!116, !113, i64 240}
!121 = !{!"_ZTSNSt6locale5facetE", !20, i64 8}
!122 = !{!"p1 _ZTS15__locale_struct", !79, i64 0}
!123 = !{!"p1 int", !79, i64 0}
!124 = !{!"p1 short", !79, i64 0}
!125 = !{!"_ZTSSt5ctypeIcE", !121, i64 0, !122, i64 16, !75, i64 24, !123, i64 32, !123, i64 40, !124, i64 48, !19, i64 56, !19, i64 57, !19, i64 313, !19, i64 569}
!126 = !{!125, !19, i64 56}
!127 = !{!"llvm.loop.mustprogress"}
!128 = !{!"llvm.loop.unroll.disable"}
!129 = !{!20, !20, i64 0}
!130 = !{!"branch_weights", i32 1, i32 1023}
!131 = !{!"_ZTSSt5arrayIN9Stockfish5PieceELm64EE", !19, i64 0}
!132 = !{!"_ZTSSt5arrayImLm8EE", !19, i64 0}
!133 = !{!"_ZTSSt5arrayImLm2EE", !19, i64 0}
!134 = !{!"p1 _ZTSN9Stockfish9StateInfoE", !79, i64 0}
!135 = !{!"_ZTSN9Stockfish5ColorE", !19, i64 0}
!136 = !{!"_ZTSN9Stockfish5PieceE", !19, i64 0}
!137 = !{!"_ZTSN9Stockfish6SquareE", !19, i64 0}
!138 = !{!"_ZTSN9Stockfish10DirtyPieceE", !136, i64 0, !137, i64 1, !137, i64 2, !137, i64 3, !137, i64 4, !136, i64 5, !136, i64 6}
!139 = !{!"_ZTSN9Stockfish9ValueListINS_11DirtyThreatELm96EEE", !19, i64 0, !63, i64 384}
!140 = !{!"_ZTSN9Stockfish12DirtyThreatsE", !139, i64 0, !135, i64 392, !137, i64 393, !137, i64 394, !63, i64 400, !63, i64 408}
!141 = !{!"_ZTSN9Stockfish8PositionE", !131, i64 0, !132, i64 64, !133, i64 128, !19, i64 144, !19, i64 208, !19, i64 464, !19, i64 480, !134, i64 608, !20, i64 616, !135, i64 620, !75, i64 621, !138, i64 622, !140, i64 632}
!142 = !{!141, !135, i64 620}
!143 = !{!"_ZTSSt14_Function_base", !19, i64 0, !79, i64 16}
!144 = !{!143, !79, i64 16}
!145 = !{!"_ZTSSt8functionIFvSt17basic_string_viewIcSt11char_traitsIcEEEE", !143, i64 0, !79, i64 24}
!146 = !{!145, !79, i64 24}
!147 = !{!"_ZTSN9Stockfish4Eval4NNUE13NnueEvalTraceE", !19, i64 0, !19, i64 32, !63, i64 64}
!148 = !{!147, !63, i64 64}
!149 = !{!110, !106, i64 32}
!150 = !{!"_ZTSSt5arrayIsLm128EE", !19, i64 0}
!151 = !{!"_ZTSSt5arrayIsLm2883584EE", !19, i64 0}
!152 = !{!"_ZTSNSt14__array_traitsIaLm0EE5_TypeE"}
!153 = !{!"_ZTSSt5arrayIaLm0EE", !152, i64 0}
!154 = !{!"_ZTSNSt14__array_traitsIiLm0EE5_TypeE"}
!155 = !{!"_ZTSSt5arrayIiLm0EE", !154, i64 0}
!156 = !{!"_ZTSN9Stockfish4Eval4NNUE18FeatureTransformerILj128EEE", !150, i64 0, !151, i64 256, !153, i64 5767424, !69, i64 5767488, !155, i64 6488384}
!157 = !{!"_ZTSN9Stockfish4Eval4NNUE7NetworkINS1_19NetworkArchitectureILj128ELi15ELi32EEENS1_18FeatureTransformerILj128EEEEE", !156, i64 0, !19, i64 6488448, !73, i64 6516608, !74, i64 6517424, !75, i64 6517428}
!158 = !{!157, !74, i64 6517424}
!159 = !{!157, !75, i64 6517428}
!160 = !{!"short", !19, i64 0}
!161 = !{!160, !160, i64 0}
!162 = !{!"llvm.loop.isvectorized", i32 1}
!163 = !{!"llvm.loop.unroll.runtime.disable"}
!164 = distinct !{!164, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_"}
!165 = distinct !{!165, !164, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_: argument 0"}
!166 = distinct !{!166, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!167 = distinct !{!167, !166, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!168 = !{!165}
!169 = !{!167, !165}
!170 = distinct !{!170, !"_ZN12_GLOBAL__N_112get_embeddedEN9Stockfish4Eval4NNUE16EmbeddedNNUETypeE"}
end_hunk_2
