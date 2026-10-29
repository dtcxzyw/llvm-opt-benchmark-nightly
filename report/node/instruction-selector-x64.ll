Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/instruction-selector-x64?download=true
inline.NumInlined: 9610
inline.NumDeleted: 1506
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN2v88internal8compiler19InstructionSelector17VisitI8x16ShuffleENS1_10turboshaft7OpIndexE:bb.a
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
  %i.at = load i8, ptr %i.c, align 1, !range !7, !noundef !5
  %i.au = trunc nuw i8 %i.at to i1                ; 2 uses
  br i1 %i.as, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN2v88internal8compiler19InstructionSelector19CanonicalizeShuffleILi16ELi16EEEvRNS2_15SimdShuffleViewEPhPbQaaooeqT_L_ZNS0_L12kSimd128SizeEEeqT_L_ZNS0_L12kSimd256SizeEEeqrmT_T0_Li0E.exit
  %i.av = call noundef zeroext i1 @_ZN2v88internal4wasm11SimdShuffle18TryMatch32x4RotateEPKhPhb(ptr noundef nonnull %i.b, ptr noundef nonnull %i.f, i1 noundef zeroext %i.au) #25
  br i1 %i.av, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aw = call noundef zeroext i8 @_ZN2v88internal4wasm11SimdShuffle12PackShuffle4EPh(ptr noundef nonnull %i.f) #25
  %i.ax = zext i8 %i.aw to i32
  store i32 %i.ax, ptr %i.d, align 16
  br label %.thread112

bb.g:                                             ; preds = %bb.e
  call void @_ZN2v88internal8compiler19InstructionSelector17SwapShuffleInputsERNS2_15SimdShuffleViewE(ptr noundef nonnull align 8 dereferenceable(752) %0, ptr noundef nonnull align 8 dereferenceable(48) %2) #25
  store i8 0, ptr %i.c, align 1
  %i.ay = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  %i.az = trunc i32 %i.ay to i8
  %i.ba = lshr i8 %i.az, 5
  %i.bb = load i8, ptr %i.e, align 1
  %i.bc = zext i8 %i.bb to i32
  store i32 %i.bc, ptr %i.d, align 16
  br label %.thread112

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
  %.not234 = icmp eq i32 %i.bj, 0
  br i1 %.not234, label %bb.aw, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 22
  %i.bl = load i8, ptr %i.bk, align 2, !range !7, !noundef !5
  br label %bb.aw

bb.k:                                             ; preds = %bb.h
  %i.bm = call noundef zeroext i1 @_ZN2v88internal4wasm11SimdShuffle19TryMatch32x4ShuffleEPKhPh(ptr noundef nonnull %i.b, ptr noundef nonnull %i.f) #25
  br i1 %i.bm, label %bb.l, label %bb.t

bb.l:                                             ; preds = %bb.k
  %i.bn = call noundef zeroext i8 @_ZN2v88internal4wasm11SimdShuffle12PackShuffle4EPh(ptr noundef nonnull %i.f) #25 ; 2 uses
  %i.bo = load i8, ptr %i.c, align 1, !range !7, !noundef !5
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
  br label %.thread112

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
  br label %bb.bc

bb.t:                                             ; preds = %bb.k
  %i.cv = call noundef zeroext i1 @_ZN2v88internal4wasm11SimdShuffle19TryMatch16x8ShuffleEPKhPh(ptr noundef nonnull %i.b, ptr noundef nonnull %i.g) #25
  br i1 %i.cv, label %bb.u, label %bb.ac

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
  br label %bb.ab

bb.w:                                             ; preds = %bb.u
  %i.dc = load i8, ptr %i.b, align 16             ; 5 uses
  %i.dd = and i8 %i.dc, 1
  %.not.i = icmp eq i8 %i.dd, 0
  br i1 %.not.i, label %.preheader34.i, label %bb.y

.preheader34.i:                                   ; preds = %bb.w
  %i.de = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.df = insertelement <2 x i8> poison, i8 %i.dc, i64 0 ; 2 uses
  %i.dg = shufflevector <2 x i8> %i.df, <2 x i8> poison, <8 x i32> zeroinitializer
  %i.dh = or disjoint <8 x i8> %i.dg, <i8 1, i8 0, i8 1, i8 0, i8 1, i8 0, i8 1, i8 0>
  %i.di = load <8 x i8>, ptr %i.de, align 1
  %i.dj = icmp eq <8 x i8> %i.dh, %i.di
  %i.dk = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  %i.dl = or disjoint i8 %i.dc, 1                 ; 2 uses
  %i.dm = shufflevector <2 x i8> %i.df, <2 x i8> poison, <4 x i32> zeroinitializer
  %i.dn = or disjoint <4 x i8> %i.dm, <i8 1, i8 0, i8 1, i8 0>
  %i.do = load <4 x i8>, ptr %i.dk, align 1
  %i.dp = icmp eq <4 x i8> %i.dn, %i.do
  %i.dq = getelementptr inbounds nuw i8, ptr %i.b, i64 13
  %i.dr = load i8, ptr %i.dq, align 1
  %.not29.1.5.i = icmp eq i8 %i.dl, %i.dr
  %i.ds = getelementptr inbounds nuw i8, ptr %i.b, i64 14
  %i.dt = load i8, ptr %i.ds, align 2
  %.not29.6.i = icmp eq i8 %i.dc, %i.dt
  %i.du = getelementptr inbounds nuw i8, ptr %i.b, i64 15
  %i.dv = load i8, ptr %i.du, align 1
  %.not29.1.6.i = icmp eq i8 %i.dl, %i.dv
  %i.dw = freeze <8 x i1> %i.dj                   ; 2 uses
  %i.dx = freeze <4 x i1> %i.dp
  %i.dy = shufflevector <8 x i1> %i.dw, <8 x i1> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %rdx.op = and <4 x i1> %i.dy, %i.dx
  %i.dz = shufflevector <4 x i1> %rdx.op, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ea = shufflevector <8 x i1> %i.dz, <8 x i1> %i.dw, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.eb = bitcast <8 x i1> %i.ea to i8
  %i.ec = icmp eq i8 %i.eb, -1
  %op.rdx = select i1 %i.ec, i1 %.not29.1.5.i, i1 false
  %7 = select i1 %op.rdx, i1 %.not29.6.i, i1 false
  %op.rdx252 = select i1 %7, i1 %.not29.1.6.i, i1 false
  br i1 %op.rdx252, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.preheader34.i
  %i.ed = lshr exact i8 %i.dc, 1
  %i.ee = zext nneg i8 %i.ed to i32
  store i32 %i.ee, ptr %i.d, align 16
  br label %bb.ab

bb.y:                                             ; preds = %bb.w, %.preheader34.i
  %i.ef = call fastcc noundef zeroext i1 @_ZN2v88internal8compiler12_GLOBAL__N_123TryMatch16x8HalfShuffleEPhS3_(ptr noundef %i.g, ptr noundef %i.i)
  br i1 %i.ef, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.eg = load i8, ptr %i.c, align 1, !range !7, !noundef !5
  %i.eh = trunc nuw i8 %i.eg to i1
  %i.ei = select i1 %i.eh, i32 445, i32 446       ; 2 uses
  %i.ej = call noundef zeroext i8 @_ZN2v88internal4wasm11SimdShuffle12PackShuffle4EPh(ptr noundef nonnull %i.g) #25
  %i.ek = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.el = call noundef zeroext i8 @_ZN2v88internal4wasm11SimdShuffle12PackShuffle4EPh(ptr noundef nonnull %i.ek) #25
  %i.em = zext i8 %i.ej to i32
  store i32 %i.em, ptr %i.d, align 16
  %i.en = zext i8 %i.el to i32
  %i.eo = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 %i.en, ptr %i.eo, align 4
  %i.ep = load i8, ptr %i.c, align 1, !range !7, !noundef !5
  %i.eq = trunc nuw i8 %i.ep to i1
  br i1 %i.eq, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.er = load i8, ptr %i.i, align 1
  %i.es = zext i8 %i.er to i32
  %i.et = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 %i.es, ptr %i.et, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa, %bb.x, %bb.y, %bb.v
  %.284 = phi i32 [ 444, %bb.v ], [ 448, %bb.x ], [ 437, %bb.y ], [ %i.ei, %bb.aa ], [ %i.ei, %bb.z ]
  %.277 = phi i8 [ %i.db, %bb.v ], [ %i.al, %bb.x ], [ %i.al, %bb.y ], [ 1, %bb.aa ], [ 1, %bb.z ]
  %.3 = phi i32 [ 1, %bb.v ], [ 1, %bb.x ], [ 0, %bb.y ], [ 3, %bb.aa ], [ 2, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #25
  br label %bb.aw

bb.ac:                                            ; preds = %bb.t
  %i.eu = load i8, ptr %i.b, align 16             ; 6 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.b, i64 3 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.b, i64 5 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.b, i64 6 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.b, i64 7 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.fd = load <8 x i8>, ptr %i.ev, align 1
  %i.fe = insertelement <8 x i8> poison, i8 %i.eu, i64 0
  %i.ff = shufflevector <8 x i8> %i.fe, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.fg = icmp eq <8 x i8> %i.ff, %i.fd
  %i.fh = getelementptr inbounds nuw i8, ptr %i.b, i64 9 ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.b, i64 10 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.b, i64 11 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 2 uses
  %i.fl = load <4 x i8>, ptr %i.fh, align 1
  %i.fm = insertelement <4 x i8> poison, i8 %i.eu, i64 0
  %i.fn = shufflevector <4 x i8> %i.fm, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.fo = icmp eq <4 x i8> %i.fn, %i.fl
  %i.fp = getelementptr inbounds nuw i8, ptr %i.b, i64 13 ; 3 uses
  %i.fq = load i8, ptr %i.fp, align 1
  %.not.12.i = icmp eq i8 %i.eu, %i.fq
  %i.fr = getelementptr inbounds nuw i8, ptr %i.b, i64 14 ; 3 uses
  %i.fs = load i8, ptr %i.fr, align 2
  %.not.13.i = icmp eq i8 %i.eu, %i.fs
  %i.ft = getelementptr inbounds nuw i8, ptr %i.b, i64 15 ; 3 uses
  %i.fu = load i8, ptr %i.ft, align 1
  %.not.14.i = icmp eq i8 %i.eu, %i.fu
  %i.fv = freeze <8 x i1> %i.fg                   ; 2 uses
  %i.fw = freeze <4 x i1> %i.fo
  %i.fx = shufflevector <8 x i1> %i.fv, <8 x i1> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %rdx.op253 = and <4 x i1> %i.fx, %i.fw
  %i.fy = shufflevector <4 x i1> %rdx.op253, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fz = shufflevector <8 x i1> %i.fy, <8 x i1> %i.fv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.ga = bitcast <8 x i1> %i.fz to i8
  %i.gb = icmp eq i8 %i.ga, -1
  %op.rdx254 = select i1 %i.gb, i1 %.not.12.i, i1 false
  %8 = select i1 %op.rdx254, i1 %.not.13.i, i1 false
  %op.rdx256 = select i1 %8, i1 %.not.14.i, i1 false
  br i1 %op.rdx256, label %.thread112.thread144, label %bb.ad

.thread112.thread144:                             ; preds = %bb.ac
  %i.gc = zext i8 %i.eu to i32
  store i32 %i.gc, ptr %i.d, align 16
  %i.gd = load ptr, ptr %i.p, align 8
  %i.ge = load ptr, ptr %i.l, align 8
  %i.gf = load i32, ptr %i.ge, align 4
  %i.gg = sext i32 %i.gf to i64
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gd, i64 24
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %i.gg
  %.sroa.0.0.copyload.i.i96150 = load i32, ptr %i.gi, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  br label %.split

bb.ad:                                            ; preds = %bb.ac
  %i.gj = load ptr, ptr %i.p, align 8
  %i.gk = load ptr, ptr %i.l, align 8             ; 2 uses
  %i.gl = load i32, ptr %i.gk, align 4
  %i.gm = sext i32 %i.gl to i64
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gj, i64 24 ; 2 uses
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %i.gm
  %.sroa.0.0.copyload.i.i.i95 = load i32, ptr %i.go, align 4
  %.val11.i = load ptr, ptr %0, align 8
  %i.gp = getelementptr i8, ptr %.val11.i, i64 8
  %.val11.val.i = load ptr, ptr %i.gp, align 8
  %i.gq = ptrtoint ptr %.val11.val.i to i64       ; 2 uses
  %i.gr = zext i32 %.sroa.0.0.copyload.i.i.i95 to i64
  %i.gs = add i64 %i.gq, %i.gr
  %i.gt = inttoptr i64 %i.gs to ptr               ; 2 uses
  %i.gu = load i8, ptr %i.gt, align 4
  %.not.i.i = icmp eq i8 %i.gu, 35
  br i1 %.not.i.i, label %bb.ae, label %_ZN2v88internal8compiler12_GLOBAL__N_115IsV128ZeroConstEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit.i

bb.ae:                                            ; preds = %bb.ad
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gt, i64 4
  %i.gw = load i128, ptr %i.gv, align 1
  %i.gx = icmp ne i128 0, %i.gw
  %i.gy = zext i1 %i.gx to i32
  %i.gz = icmp eq i32 %i.gy, 0
  br label %_ZN2v88internal8compiler12_GLOBAL__N_115IsV128ZeroConstEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit.i

_ZN2v88internal8compiler12_GLOBAL__N_115IsV128ZeroConstEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit.i: ; preds = %bb.ae, %bb.ad
  %spec.select.i.i = phi i1 [ %i.gz, %bb.ae ], [ false, %bb.ad ] ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gk, i64 4
  %i.hb = load i32, ptr %i.ha, align 4
  %i.hc = sext i32 %i.hb to i64
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %i.hc
  %.sroa.0.0.copyload.i.i12.i = load i32, ptr %i.hd, align 4
  %i.he = zext i32 %.sroa.0.0.copyload.i.i12.i to i64
  %i.hf = add i64 %i.he, %i.gq
  %i.hg = inttoptr i64 %i.hf to ptr               ; 2 uses
  %i.hh = load i8, ptr %i.hg, align 4
  %.not.i13.i = icmp eq i8 %i.hh, 35
  br i1 %.not.i13.i, label %.split246, label %_ZN2v88internal8compiler12_GLOBAL__N_115IsV128ZeroConstEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit16.i

.split246:                                        ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_115IsV128ZeroConstEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit.i
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hg, i64 4
  %i.hj = load i128, ptr %i.hi, align 1
  %i.hk = icmp ne i128 0, %i.hj
  %i.hl = zext i1 %i.hk to i32
  %i.hm = icmp eq i32 %i.hl, 0
  %i.hn = or i1 %spec.select.i.i, %i.hm
  br i1 %i.hn, label %bb.af, label %.thread120

_ZN2v88internal8compiler12_GLOBAL__N_115IsV128ZeroConstEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit16.i: ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_115IsV128ZeroConstEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit.i
  br i1 %spec.select.i.i, label %.loopexit.loopexit.critedge, label %.thread120

bb.af:                                            ; preds = %.split246
  store i8 1, ptr %i.c, align 1
  br i1 %spec.select.i.i, label %.loopexit.loopexit, label %.loopexit

.loopexit.loopexit.critedge:                      ; preds = %_ZN2v88internal8compiler12_GLOBAL__N_115IsV128ZeroConstEPNS1_19InstructionSelectorENS1_10turboshaft7OpIndexE.exit16.i
  store i8 1, ptr %i.c, align 1
  br label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %.loopexit.loopexit.critedge, %bb.af
  call void @_ZN2v88internal8compiler19InstructionSelector17SwapShuffleInputsERNS2_15SimdShuffleViewE(ptr noundef nonnull align 8 dereferenceable(752) %0, ptr noundef nonnull align 8 dereferenceable(48) %2) #25
  %i.ho = load <16 x i8>, ptr %i.b, align 16
  %i.hp = xor <16 x i8> %i.ho, splat (i8 16)
  store <16 x i8> %i.hp, ptr %i.b, align 16
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.af
  %i.hq = call noundef zeroext i1 @_ZN2v88internal4wasm11SimdShuffle29TryMatchByteToDwordZeroExtendEPKh(ptr noundef nonnull %i.b) #25
  %i.hr = load i8, ptr %i.b, align 16             ; 2 uses
  br i1 %i.hq, label %.thread112.thread, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.loopexit
  %i.hs = icmp ugt i8 %i.hr, 15
  br i1 %i.hs, label %bb.ag, label %.preheader.1

.thread112.thread:                                ; preds = %.loopexit
  %i.ht = zext i8 %i.hr to i32
  store i32 %i.ht, ptr %i.d, align 16
  %i.hu = load ptr, ptr %i.p, align 8
  %i.hv = load ptr, ptr %i.l, align 8
  %i.hw = load i32, ptr %i.hv, align 4
  %i.hx = sext i32 %i.hw to i64
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hu, i64 24
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.hy, i64 %i.hx
  %.sroa.0.0.copyload.i.i96133 = load i32, ptr %i.hz, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  br label %bb.ax

bb.ag:                                            ; preds = %.preheader.preheader
  store i8 -128, ptr %i.b, align 16
  br label %.preheader.1

.preheader.1:                                     ; preds = %.preheader.preheader, %bb.ag
  %i.ia = load i8, ptr %i.ev, align 1
  %i.ib = icmp ugt i8 %i.ia, 15
  br i1 %i.ib, label %bb.ah, label %.preheader.2

bb.ah:                                            ; preds = %.preheader.1
  store i8 -128, ptr %i.ev, align 1
  br label %.preheader.2

.preheader.2:                                     ; preds = %bb.ah, %.preheader.1
  %i.ic = load i8, ptr %i.ew, align 2
  %i.id = icmp ugt i8 %i.ic, 15
  br i1 %i.id, label %bb.ai, label %.preheader.3

bb.ai:                                            ; preds = %.preheader.2
  store i8 -128, ptr %i.ew, align 2
  br label %.preheader.3

.preheader.3:                                     ; preds = %bb.ai, %.preheader.2
  %i.ie = load i8, ptr %i.ex, align 1
  %i.if = icmp ugt i8 %i.ie, 15
  br i1 %i.if, label %bb.aj, label %.preheader.4

bb.aj:                                            ; preds = %.preheader.3
  store i8 -128, ptr %i.ex, align 1
  br label %.preheader.4

.preheader.4:                                     ; preds = %bb.aj, %.preheader.3
  %i.ig = load i8, ptr %i.ey, align 4
  %i.ih = icmp ugt i8 %i.ig, 15
  br i1 %i.ih, label %bb.ak, label %.preheader.5

bb.ak:                                            ; preds = %.preheader.4
  store i8 -128, ptr %i.ey, align 4
  br label %.preheader.5

.preheader.5:                                     ; preds = %bb.ak, %.preheader.4
  %i.ii = load i8, ptr %i.ez, align 1
  %i.ij = icmp ugt i8 %i.ii, 15
  br i1 %i.ij, label %bb.al, label %.preheader.6

bb.al:                                            ; preds = %.preheader.5
  store i8 -128, ptr %i.ez, align 1
  br label %.preheader.6

.preheader.6:                                     ; preds = %bb.al, %.preheader.5
  %i.ik = load i8, ptr %i.fa, align 2
  %i.il = icmp ugt i8 %i.ik, 15
  br i1 %i.il, label %bb.am, label %.preheader.7

bb.am:                                            ; preds = %.preheader.6
  store i8 -128, ptr %i.fa, align 2
  br label %.preheader.7

.preheader.7:                                     ; preds = %bb.am, %.preheader.6
  %i.im = load i8, ptr %i.fb, align 1
  %i.in = icmp ugt i8 %i.im, 15
  br i1 %i.in, label %bb.an, label %.preheader.8

bb.an:                                            ; preds = %.preheader.7
  store i8 -128, ptr %i.fb, align 1
  br label %.preheader.8

.preheader.8:                                     ; preds = %bb.an, %.preheader.7
  %i.io = load i8, ptr %i.fc, align 8
  %i.ip = icmp ugt i8 %i.io, 15
  br i1 %i.ip, label %bb.ao, label %.preheader.9

bb.ao:                                            ; preds = %.preheader.8
  store i8 -128, ptr %i.fc, align 8
  br label %.preheader.9

.preheader.9:                                     ; preds = %bb.ao, %.preheader.8
  %i.iq = load i8, ptr %i.fh, align 1
  %i.ir = icmp ugt i8 %i.iq, 15
  br i1 %i.ir, label %bb.ap, label %.preheader.10

bb.ap:                                            ; preds = %.preheader.9
  store i8 -128, ptr %i.fh, align 1
  br label %.preheader.10

.preheader.10:                                    ; preds = %bb.ap, %.preheader.9
  %i.is = load i8, ptr %i.fi, align 2
  %i.it = icmp ugt i8 %i.is, 15
  br i1 %i.it, label %bb.aq, label %.preheader.11

bb.aq:                                            ; preds = %.preheader.10
  store i8 -128, ptr %i.fi, align 2
  br label %.preheader.11

.preheader.11:                                    ; preds = %bb.aq, %.preheader.10
end_hunk_0
