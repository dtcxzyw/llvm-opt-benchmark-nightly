Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/instruction-selector-x64?download=true
inline.NumInlined: 9610
inline.NumDeleted: 1506
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN2v88internal8compiler19InstructionSelector17VisitI8x16ShuffleENS1_10turboshaft7OpIndexE:bb.a
  %i.aj = load i8, ptr %i.a, align 1, !range !37, !noundef !35
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN2v88internal8compiler19InstructionSelector17SwapShuffleInputsERNS2_15SimdShuffleViewE(ptr noundef nonnull align 8 dereferenceable(752) %0, ptr noundef nonnull align 8 dereferenceable(48) %2) #25
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.al = load i8, ptr %i.c, align 1, !range !37, !noundef !35 ; 4 uses
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.d, label %_ZN2v88internal8compiler19InstructionSelector19CanonicalizeShuffleILi16ELi16EEEvRNS2_15SimdShuffleViewEPhPbQaaooeqT_L_ZNS0_L12kSimd128SizeEEeqT_L_ZNS0_L12kSimd256SizeEEeqrmT_T0_Li0E.exit

bb.d:                                             ; preds = %bb.c
  %i.an = load ptr, ptr %i.l, align 8             ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  store i32 %i.ao, ptr %i.ap, align 4
  br label %_ZN2v88internal8compiler19InstructionSelector19CanonicalizeShuffleILi16ELi16EEEvRNS2_15SimdShuffleViewEPhPbQaaooeqT_L_ZNS0_L12kSimd128SizeEEeqT_L_ZNS0_L12kSimd256SizeEEeqrmT_T0_Li0E.exit

_ZN2v88internal8compiler19InstructionSelector19CanonicalizeShuffleILi16ELi16EEEvRNS2_15SimdShuffleViewEPhPbQaaooeqT_L_ZNS0_L12kSimd128SizeEEeqT_L_ZNS0_L12kSimd256SizeEEeqrmT_T0_Li0E.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.aq = load ptr, ptr %i.j, align 8
  store ptr %i.aq, ptr %4, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %0, ptr %i.ar, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #25
  %i.as = call noundef zeroext i1 @_ZN2v88internal4wasm11SimdShuffle14TryMatchConcatEPKhPh(ptr noundef nonnull %i.b, ptr noundef nonnull %i.e) #25
  %i.at = load i8, ptr %i.c, align 1, !range !37, !noundef !35
  %i.au = trunc nuw i8 %i.at to i1                ; 2 uses
  br i1 %i.as, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN2v88internal8compiler19InstructionSelector19CanonicalizeShuffleILi16ELi16EEEvRNS2_15SimdShuffleViewEPhPbQaaooeqT_L_ZNS0_L12kSimd128SizeEEeqT_L_ZNS0_L12kSimd256SizeEEeqrmT_T0_Li0E.exit
  %i.av = call noundef zeroext i1 @_ZN2v88internal4wasm11SimdShuffle18TryMatch32x4RotateEPKhPhb(ptr noundef nonnull %i.b, ptr noundef nonnull %i.f, i1 noundef zeroext %i.au) #25
  br i1 %i.av, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aw = call noundef zeroext i8 @_ZN2v88internal4wasm11SimdShuffle12PackShuffle4EPh(ptr noundef nonnull %i.f) #25
  %i.ax = zext i8 %i.aw to i32
  store i32 %i.ax, ptr %i.d, align 16
  br label %.thread113

bb.g:                                             ; preds = %bb.e
  call void @_ZN2v88internal8compiler19InstructionSelector17SwapShuffleInputsERNS2_15SimdShuffleViewE(ptr noundef nonnull align 8 dereferenceable(752) %0, ptr noundef nonnull align 8 dereferenceable(48) %2) #25
  store i8 0, ptr %i.c, align 1
  %i.ay = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  %i.az = trunc i32 %i.ay to i8
  %i.ba = lshr i8 %i.az, 5
  %i.bb = load i8, ptr %i.e, align 1
  %i.bc = zext i8 %i.bb to i32
  store i32 %i.bc, ptr %i.d, align 16
  br label %.thread113

bb.h:                                             ; preds = %_ZN2v88internal8compiler19InstructionSelector19CanonicalizeShuffleILi16ELi16EEEvRNS2_15SimdShuffleViewEPhPbQaaooeqT_L_ZNS0_L12kSimd128SizeEEeqT_L_ZNS0_L12kSimd256SizeEEeqrmT_T0_Li0E.exit
  %i.bd = call noundef zeroext i1 @_ZN2v88internal4wasm11SimdShuffle19TryMatchArchShuffleILi16EEEbPKhbPPKNS1_12ShuffleEntryIXT_ENSt9enable_ifIXooeqT_L_ZNS0_L12kSimd128SizeEEeqT_L_ZNS0_L12kSimd256SizeEEEvE4typeEEEQooeqT_L_ZNS0_L12kSimd128SizeEEeqT_L_ZNS0_L12kSimd256SizeEE(ptr noundef nonnull %i.b, i1 noundef zeroext %i.au, ptr noundef nonnull %i.h)
  br i1 %i.bd, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.be = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load i32, ptr %i.bf, align 4            ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.bi = load i32, ptr %i.bh, align 4
  %i.bj = and i32 %i.bi, 32
  %.not235 = icmp eq i32 %i.bj, 0
  br i1 %.not235, label %bb.ax, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 22
  %i.bl = load i8, ptr %i.bk, align 2, !range !37, !noundef !35
  br label %bb.ax

bb.k:                                             ; preds = %bb.h
  %i.bm = call noundef zeroext i1 @_ZN2v88internal4wasm11SimdShuffle19TryMatch32x4ShuffleEPKhPh(ptr noundef nonnull %i.b, ptr noundef nonnull %i.f) #25
  br i1 %i.bm, label %bb.l, label %bb.t

bb.l:                                             ; preds = %bb.k
  %i.bn = call noundef zeroext i8 @_ZN2v88internal4wasm11SimdShuffle12PackShuffle4EPh(ptr noundef nonnull %i.f) #25 ; 2 uses
  %i.bo = load i8, ptr %i.c, align 1, !range !37, !noundef !35
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bq = call noundef zeroext i1 @_ZN2v88internal4wasm11SimdShuffle16TryMatchIdentityEPKh(ptr noundef nonnull %i.b) #25
  br i1 %i.bq, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.br = zext i8 %i.bn to i32
  store i32 %i.br, ptr %i.d, align 16
  br label %.thread

bb.o:                                             ; preds = %bb.l
  %i.bs = call noundef zeroext i1 @_ZN2v88internal4wasm11SimdShuffle13TryMatchBlendEPKh(ptr noundef nonnull %i.b) #25
  br i1 %i.bs, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bt = call noundef zeroext i8 @_ZN2v88internal4wasm11SimdShuffle10PackBlend4EPKh(ptr noundef nonnull %i.f) #25
  %i.bu = zext i8 %i.bt to i32
  store i32 %i.bu, ptr %i.d, align 16
  %i.bv = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  %i.bw = and i32 %i.bv, 32
  %i.bx = icmp ne i32 %i.bw, 0
  br label %.thread

bb.q:                                             ; preds = %bb.o
  %i.by = load <4 x i8>, ptr %i.f, align 4        ; 2 uses
  %i.bz = icmp ugt <4 x i8> %i.by, <i8 4, i8 4, i8 3, i8 3>
  %i.ca = icmp ult <4 x i8> %i.by, <i8 4, i8 4, i8 3, i8 3>
  %i.cb = shufflevector <4 x i1> %i.ca, <4 x i1> %i.bz, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.cc = freeze <4 x i1> %i.cb
  %i.cd = bitcast <4 x i1> %i.cc to i4
  %i.ce = icmp eq i4 %i.cd, -1
  br i1 %i.ce, label %bb.r, label %_ZN2v88internal8compiler12_GLOBAL__N_114TryMatchShufpsEPKh.exit.thread

bb.r:                                             ; preds = %bb.q
  %i.cf = call noundef zeroext i8 @_ZN2v88internal4wasm11SimdShuffle12PackShuffle4EPh(ptr noundef nonnull %i.f) #25
  %i.cg = zext i8 %i.cf to i32
  store i32 %i.cg, ptr %i.d, align 16
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ci = load i32, ptr %i.ch, align 4
  %i.cj = and i32 %i.ci, 32
  %i.ck = icmp ne i32 %i.cj, 0
  br label %.thread

_ZN2v88internal8compiler12_GLOBAL__N_114TryMatchShufpsEPKh.exit.thread: ; preds = %bb.q
  %i.cl = zext i8 %i.bn to i32
  store i32 %i.cl, ptr %i.d, align 16
  %i.cm = call noundef zeroext i8 @_ZN2v88internal4wasm11SimdShuffle10PackBlend4EPKh(ptr noundef nonnull %i.f) #25
  %i.cn = zext i8 %i.cm to i32
  %i.co = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 %i.cn, ptr %i.co, align 4
  br label %.thread

.thread:                                          ; preds = %bb.n, %bb.r, %_ZN2v88internal8compiler12_GLOBAL__N_114TryMatchShufpsEPKh.exit.thread, %bb.p
  %.082 = phi i32 [ 442, %bb.n ], [ 444, %bb.p ], [ 440, %bb.r ], [ 443, %_ZN2v88internal8compiler12_GLOBAL__N_114TryMatchShufpsEPKh.exit.thread ]
  %.075.shrunk = phi i1 [ true, %bb.n ], [ %i.bx, %bb.p ], [ %i.ck, %bb.r ], [ true, %_ZN2v88internal8compiler12_GLOBAL__N_114TryMatchShufpsEPKh.exit.thread ]
  %.0 = phi i32 [ 1, %bb.n ], [ 1, %bb.p ], [ 1, %bb.r ], [ 2, %_ZN2v88internal8compiler12_GLOBAL__N_114TryMatchShufpsEPKh.exit.thread ]
  %.075 = zext i1 %.075.shrunk to i8
  br label %.thread113

bb.s:                                             ; preds = %bb.m
  %i.cp = load ptr, ptr %i.p, align 8
  %i.cq = load ptr, ptr %i.l, align 8
  %i.cr = load i32, ptr %i.cq, align 4
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.cs
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.cu, align 4 ; 2 uses
  call void @_ZN2v88internal8compiler19InstructionSelector10MarkAsUsedENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %.sroa.0.0.copyload.i.i) #25
  call void @_ZN2v88internal8compiler19InstructionSelector13MarkAsDefinedENS1_10turboshaft7OpIndexE(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %1) #25
  call void @_ZN2v88internal8compiler19InstructionSelector9SetRenameENS1_10turboshaft7OpIndexES4_(ptr noundef nonnull align 8 dereferenceable(752) %0, i32 %1, i32 %.sroa.0.0.copyload.i.i) #25
  br label %bb.bd

bb.t:                                             ; preds = %bb.k
  %i.cv = call noundef zeroext i1 @_ZN2v88internal4wasm11SimdShuffle19TryMatch16x8ShuffleEPKhPh(ptr noundef nonnull %i.b, ptr noundef nonnull %i.g) #25
  br i1 %i.cv, label %bb.u, label %bb.ad

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #25
  %i.cw = call noundef zeroext i1 @_ZN2v88internal4wasm11SimdShuffle13TryMatchBlendEPKh(ptr noundef nonnull %i.b) #25
  br i1 %i.cw, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cx = call noundef zeroext i8 @_ZN2v88internal4wasm11SimdShuffle10PackBlend8EPKh(ptr noundef nonnull %i.g) #25
  %i.cy = zext i8 %i.cx to i32
  store i32 %i.cy, ptr %i.d, align 16
  %i.cz = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  %i.da = trunc i32 %i.cz to i8
  %i.db = lshr i8 %i.da, 5
  br label %bb.ac

bb.w:                                             ; preds = %bb.u
  %i.dc = load i8, ptr %i.b, align 16             ; 4 uses
  %i.dd = and i8 %i.dc, 1
  %.not.i = icmp eq i8 %i.dd, 0
  br i1 %.not.i, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.de = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.df = or disjoint i8 %i.dc, 1
  %i.dg = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.dh = load i8, ptr %i.dg, align 2
  %.not29.i = icmp eq i8 %i.dc, %i.dh
  %i.di = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  %i.dj = load <8 x i8>, ptr %i.b, align 16       ; 2 uses
  %i.dk = load <8 x i8>, ptr %i.di, align 1       ; 2 uses
  %i.dl = shufflevector <8 x i8> %i.dk, <8 x i8> %i.dj, <8 x i32> <i32 0, i32 1, i32 9, i32 8, i32 9, i32 8, i32 9, i32 8>
  %i.dm = shufflevector <8 x i8> %i.dj, <8 x i8> %i.dk, <8 x i32> <i32 1, i32 0, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dn = icmp eq <8 x i8> %i.dl, %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %i.b, i64 11
  %i.dp = load i8, ptr %i.de, align 1             ; 2 uses
  %i.dq = load <2 x i8>, ptr %i.b, align 16
  %i.dr = shufflevector <2 x i8> %i.dq, <2 x i8> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %.not28.i = icmp eq i8 %i.df, %i.dp
  %i.ds = load <4 x i8>, ptr %i.do, align 1
  %i.dt = icmp eq <4 x i8> %i.dr, %i.ds
  %i.du = getelementptr inbounds nuw i8, ptr %i.b, i64 15
  %i.dv = load i8, ptr %i.du, align 1
  %.not29.1.6.i = icmp eq i8 %i.dp, %i.dv
  %i.dw = freeze <8 x i1> %i.dn                   ; 2 uses
  %i.dx = freeze <4 x i1> %i.dt
  %i.dy = shufflevector <8 x i1> %i.dw, <8 x i1> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %rdx.op = and <4 x i1> %i.dy, %i.dx
  %i.dz = shufflevector <4 x i1> %rdx.op, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ea = shufflevector <8 x i1> %i.dz, <8 x i1> %i.dw, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.eb = bitcast <8 x i1> %i.ea to i8
  %i.ec = icmp eq i8 %i.eb, -1
  %op.rdx = select i1 %i.ec, i1 %.not28.i, i1 false
  %i.ed = select i1 %op.rdx, i1 %.not29.i, i1 false
  %op.rdx253 = select i1 %i.ed, i1 %.not29.1.6.i, i1 false
  br i1 %op.rdx253, label %bb.y, label %bb.z, !llvm.loop !823

bb.y:                                             ; preds = %bb.x
  %i.ee = lshr exact i8 %i.dc, 1
  %i.ef = zext nneg i8 %i.ee to i32
  store i32 %i.ef, ptr %i.d, align 16
  br label %bb.ac

bb.z:                                             ; preds = %bb.w, %bb.x
  %i.eg = call fastcc noundef zeroext i1 @_ZN2v88internal8compiler12_GLOBAL__N_123TryMatch16x8HalfShuffleEPhS3_(ptr noundef %i.g, ptr noundef %i.i)
  br i1 %i.eg, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.eh = load i8, ptr %i.c, align 1, !range !37, !noundef !35
  %i.ei = trunc nuw i8 %i.eh to i1
  %i.ej = select i1 %i.ei, i32 445, i32 446       ; 2 uses
  %i.ek = call noundef zeroext i8 @_ZN2v88internal4wasm11SimdShuffle12PackShuffle4EPh(ptr noundef nonnull %i.g) #25
  %i.el = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.em = call noundef zeroext i8 @_ZN2v88internal4wasm11SimdShuffle12PackShuffle4EPh(ptr noundef nonnull %i.el) #25
  %i.en = zext i8 %i.ek to i32
  store i32 %i.en, ptr %i.d, align 16
  %i.eo = zext i8 %i.em to i32
  %i.ep = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 %i.eo, ptr %i.ep, align 4
  %i.eq = load i8, ptr %i.c, align 1, !range !37, !noundef !35
  %i.er = trunc nuw i8 %i.eq to i1
  br i1 %i.er, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.es = load i8, ptr %i.i, align 1
  %i.et = zext i8 %i.es to i32
  %i.eu = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 %i.et, ptr %i.eu, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab, %bb.y, %bb.z, %bb.v
  %.284 = phi i32 [ 444, %bb.v ], [ 448, %bb.y ], [ 437, %bb.z ], [ %i.ej, %bb.ab ], [ %i.ej, %bb.aa ]
  %.277 = phi i8 [ %i.db, %bb.v ], [ %i.al, %bb.y ], [ %i.al, %bb.z ], [ 1, %bb.ab ], [ 1, %bb.aa ]
  %.3 = phi i32 [ 1, %bb.v ], [ 1, %bb.y ], [ 0, %bb.z ], [ 3, %bb.ab ], [ 2, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #25
  br label %bb.ax

bb.ad:                                            ; preds = %bb.t
  %i.ev = load i8, ptr %i.b, align 16             ; 6 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.b, i64 3 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.b, i64 5 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.b, i64 6 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.b, i64 7 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.fe = load <8 x i8>, ptr %i.ew, align 1
  %i.ff = insertelement <8 x i8> poison, i8 %i.ev, i64 0
  %i.fg = shufflevector <8 x i8> %i.ff, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.fh = icmp eq <8 x i8> %i.fg, %i.fe
  %i.fi = getelementptr inbounds nuw i8, ptr %i.b, i64 9 ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.b, i64 10 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.b, i64 11 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 2 uses
  %i.fm = load <4 x i8>, ptr %i.fi, align 1
  %i.fn = insertelement <4 x i8> poison, i8 %i.ev, i64 0
  %i.fo = shufflevector <4 x i8> %i.fn, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.fp = icmp eq <4 x i8> %i.fo, %i.fm
  %i.fq = getelementptr inbounds nuw i8, ptr %i.b, i64 13 ; 3 uses
  %i.fr = load i8, ptr %i.fq, align 1
  %.not.12.i = icmp eq i8 %i.ev, %i.fr
  %i.fs = getelementptr inbounds nuw i8, ptr %i.b, i64 14 ; 3 uses
  %i.ft = load i8, ptr %i.fs, align 2
  %.not.13.i = icmp eq i8 %i.ev, %i.ft
  %i.fu = getelementptr inbounds nuw i8, ptr %i.b, i64 15 ; 3 uses
  %i.fv = load i8, ptr %i.fu, align 1
  %.not.14.i = icmp eq i8 %i.ev, %i.fv
  %i.fw = freeze <8 x i1> %i.fh                   ; 2 uses
  %i.fx = freeze <4 x i1> %i.fp
  %i.fy = shufflevector <8 x i1> %i.fw, <8 x i1> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %rdx.op254 = and <4 x i1> %i.fy, %i.fx
  %i.fz = shufflevector <4 x i1> %rdx.op254, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ga = shufflevector <8 x i1> %i.fz, <8 x i1> %i.fw, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.gb = bitcast <8 x i1> %i.ga to i8
  %i.gc = icmp eq i8 %i.gb, -1
  %op.rdx255 = select i1 %i.gc, i1 %.not.12.i, i1 false
  %i.gd = select i1 %op.rdx255, i1 %.not.13.i, i1 false
  %op.rdx257 = select i1 %i.gd, i1 %.not.14.i, i1 false
  br i1 %op.rdx257, label %.thread113.thread145, label %bb.ae, !llvm.loop !824

.thread113.thread145:                             ; preds = %bb.ad
  %i.ge = zext i8 %i.ev to i32
  store i32 %i.ge, ptr %i.d, align 16
  %i.gf = load ptr, ptr %i.p, align 8
  %i.gg = load ptr, ptr %i.l, align 8
  %i.gh = load i32, ptr %i.gg, align 4
  %i.gi = sext i32 %i.gh to i64
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gf, i64 24
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %i.gi
  %.sroa.0.0.copyload.i.i96151 = load i32, ptr %i.gk, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  br label %.split

bb.ae:                                            ; preds = %bb.ad
  %i.gl = load ptr, ptr %i.p, align 8
  %i.gm = load ptr, ptr %i.l, align 8             ; 2 uses
  %i.gn = load i32, ptr %i.gm, align 4
  %i.go = sext i32 %i.gn to i64
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gl, i64 24 ; 2 uses
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %i.go
  %.sroa.0.0.copyload.i.i.i95 = load i32, ptr %i.gq, align 4
  %.val11.i = load ptr, ptr %0, align 8
  %i.gr = getelementptr i8, ptr %.val11.i, i64 8
  %.val11.val.i = load ptr, ptr %i.gr, align 8
  %i.gs = ptrtoint ptr %.val11.val.i to i64       ; 2 uses
  %i.gt = zext i32 %.sroa.0.0.copyload.i.i.i95 to i64
  %i.gu = add i64 %i.gs, %i.gt
  %i.gv = inttoptr i64 %i.gu to ptr               ; 2 uses
  %i.gw = load i8, ptr %i.gv, align 4
  %.not.i.i = icmp eq i8 %i.gw, 35
  br i1 %.not.i.i, label %bb.af, label %_ZN2v88internal8compiler12_GLOBAL__N_115IsV128ZeroConstEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit.i

bb.af:                                            ; preds = %bb.ae
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gv, i64 4
  %i.gy = load i128, ptr %i.gx, align 1
  %i.gz = icmp ne i128 0, %i.gy
  %i.ha = zext i1 %i.gz to i32
  %i.hb = icmp eq i32 %i.ha, 0
  br label %_ZN2v88internal8compiler12_GLOBAL__N_115IsV128ZeroConstEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit.i

_ZN2v88internal8compiler12_GLOBAL__N_115IsV128ZeroConstEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit.i: ; preds = %bb.af, %bb.ae
  %spec.select.i.i = phi i1 [ %i.hb, %bb.af ], [ false, %bb.ae ] ; 3 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gm, i64 4
  %i.hd = load i32, ptr %i.hc, align 4
  %i.he = sext i32 %i.hd to i64
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %i.he
  %.sroa.0.0.copyload.i.i12.i = load i32, ptr %i.hf, align 4
  %i.hg = zext i32 %.sroa.0.0.copyload.i.i12.i to i64
  %i.hh = add i64 %i.hg, %i.gs
  %i.hi = inttoptr i64 %i.hh to ptr               ; 2 uses
  %i.hj = load i8, ptr %i.hi, align 4
  %.not.i13.i = icmp eq i8 %i.hj, 35
  br i1 %.not.i13.i, label %.split247, label %_ZN2v88internal8compiler12_GLOBAL__N_115IsV128ZeroConstEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit16.i

.split247:                                        ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_115IsV128ZeroConstEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit.i
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hi, i64 4
  %i.hl = load i128, ptr %i.hk, align 1
  %i.hm = icmp ne i128 0, %i.hl
  %i.hn = zext i1 %i.hm to i32
  %i.ho = icmp eq i32 %i.hn, 0
  %i.hp = or i1 %spec.select.i.i, %i.ho
  br i1 %i.hp, label %bb.ag, label %.thread121

_ZN2v88internal8compiler12_GLOBAL__N_115IsV128ZeroConstEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit16.i: ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_115IsV128ZeroConstEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit.i
  br i1 %spec.select.i.i, label %.loopexit.loopexit.critedge, label %.thread121

bb.ag:                                            ; preds = %.split247
  store i8 1, ptr %i.c, align 1
  br i1 %spec.select.i.i, label %.loopexit.loopexit, label %.loopexit

.loopexit.loopexit.critedge:                      ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_115IsV128ZeroConstEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit16.i
  store i8 1, ptr %i.c, align 1
  br label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %.loopexit.loopexit.critedge, %bb.ag
  call void @_ZN2v88internal8compiler19InstructionSelector17SwapShuffleInputsERNS2_15SimdShuffleViewE(ptr noundef nonnull align 8 dereferenceable(752) %0, ptr noundef nonnull align 8 dereferenceable(48) %2) #25
  %i.hq = load <16 x i8>, ptr %i.b, align 16
  %i.hr = xor <16 x i8> %i.hq, splat (i8 16)
  store <16 x i8> %i.hr, ptr %i.b, align 16
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.ag
  %i.hs = call noundef zeroext i1 @_ZN2v88internal4wasm11SimdShuffle29TryMatchByteToDwordZeroExtendEPKh(ptr noundef nonnull %i.b) #25
  %i.ht = load i8, ptr %i.b, align 16             ; 2 uses
  br i1 %i.hs, label %.thread113.thread, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.loopexit
  %i.hu = icmp ugt i8 %i.ht, 15
  br i1 %i.hu, label %bb.ah, label %.preheader.1

.thread113.thread:                                ; preds = %.loopexit
  %i.hv = zext i8 %i.ht to i32
  store i32 %i.hv, ptr %i.d, align 16
  %i.hw = load ptr, ptr %i.p, align 8
  %i.hx = load ptr, ptr %i.l, align 8
  %i.hy = load i32, ptr %i.hx, align 4
  %i.hz = sext i32 %i.hy to i64
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hw, i64 24
end_hunk_0
