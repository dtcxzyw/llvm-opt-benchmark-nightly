Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/DAGCombiner?download=true
inline.NumInlined: 30676
inline.NumDeleted: 6198
loop-unroll.NumCompletelyUnrolled: 42
loop-unroll.NumRuntimeUnrolled: 70
loop-unroll.NumUnrolled: 112
begin_hunk_0_@_ZN12_GLOBAL__N_111DAGCombiner9visitFSUBEPN4llvm6SDNodeE:bb.a
  br i1 %.not203.a, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.ac = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197
  call void @llvm.lifetime.start.p0(ptr nonnull %95) #36
  store ptr %.sroa.0155.0.copyload, ptr %95, align 8, !tbaa !74
  %.sroa.11.0..sroa_idx165 = getelementptr inbounds nuw i8, ptr %95, i64 8
  store i32 %.sroa.11.0.copyload, ptr %.sroa.11.0..sroa_idx165, align 8, !tbaa !198
  %i.ad = getelementptr inbounds nuw i8, ptr %95, i64 16
  store ptr %.sroa.0141.0.copyload, ptr %i.ad, align 8, !tbaa !74
  %.sroa.15.0..sroa_idx151 = getelementptr inbounds nuw i8, ptr %95, i64 24
  store i32 %.sroa.15.0.copyload, ptr %.sroa.15.0..sroa_idx151, align 8, !tbaa !198
  store ptr %95, ptr %94, align 8, !tbaa !383
  %i.ae = getelementptr inbounds nuw i8, ptr %94, i64 8
  store i64 2, ptr %i.ae, align 8, !tbaa !384
  %i.af = call { ptr, i32 } @_ZN4llvm12SelectionDAG22FoldConstantArithmeticEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEENS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920) %i.ac, i32 noundef 100, ptr noundef nonnull align 8 dereferenceable(12) %92, i16 %.sroa.0.0.copyload.i, ptr %.sroa.21.0.copyload.i, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %94, i32 0) #36 ; 2 uses
  %.fca.0.extract65 = extractvalue { ptr, i32 } %i.af, 0 ; 2 uses
  %.fca.1.extract66 = extractvalue { ptr, i32 } %i.af, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %95) #36
  %.not204.a = icmp eq ptr %.fca.0.extract65, null
  br i1 %.not204.a, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.ag = load i16, ptr %91, align 8, !tbaa !387  ; 2 uses
  %.not.i = icmp eq i16 %i.ag, 0
  br i1 %.not.i, label %_ZNK4llvm3EVT8isVectorEv.exit, label %.split

.split:                                           ; preds = %bb.c
  %i.ah = add i16 %i.ag, -19
  %spec.select.i.i = icmp ult i16 %i.ah, 197
  br i1 %spec.select.i.i, label %bb.d, label %bb.e

_ZNK4llvm3EVT8isVectorEv.exit:                    ; preds = %bb.c
  %i.ai = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %91) #37
  br i1 %i.ai, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.split, %_ZNK4llvm3EVT8isVectorEv.exit
  %i.aj = call fastcc { ptr, i32 } @_ZN12_GLOBAL__N_111DAGCombiner14SimplifyVBinOpEPN4llvm6SDNodeERKNS1_5SDLocE(ptr noundef nonnull align 8 dereferenceable(952) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(12) %92) ; 2 uses
  %.fca.0.extract61 = extractvalue { ptr, i32 } %i.aj, 0 ; 2 uses
  %.fca.1.extract62 = extractvalue { ptr, i32 } %i.aj, 1
  %.not205.a = icmp eq ptr %.fca.0.extract61, null
  br i1 %.not205.a, label %bb.e, label %.critedge

bb.e:                                             ; preds = %.split, %bb.d, %_ZNK4llvm3EVT8isVectorEv.exit
  %i.ak = call fastcc { ptr, i32 } @_ZN12_GLOBAL__N_111DAGCombiner19foldBinOpIntoSelectEPN4llvm6SDNodeE(ptr noundef nonnull align 8 dereferenceable(952) %0, ptr noundef nonnull %1) ; 2 uses
  %.fca.0.extract57 = extractvalue { ptr, i32 } %i.ak, 0 ; 2 uses
  %.fca.1.extract58 = extractvalue { ptr, i32 } %i.ak, 1
  %.not206.a = icmp eq ptr %.fca.0.extract57, null
  br i1 %.not206.a, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %i.k, i64 88
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !660 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !75
  %.not.i.i.i.i.i = icmp eq ptr %i.ao, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8
  %.0.i.i.i.i.i = select i1 %.not.i.i.i.i.i, ptr %i.aq, ptr %i.an
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 20
  %i.as = load i8, ptr %i.ar, align 4             ; 2 uses
  %i.at = and i8 %i.as, 7
  %i.au = icmp eq i8 %i.at, 3
  br i1 %i.au, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.av = and i8 %i.as, 8
  %.not207.a = icmp eq i8 %i.av, 0
  br i1 %.not207.a, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197
  %i.ax = call noundef zeroext i1 @_ZNK4llvm12SelectionDAG22canIgnoreSignBitOfZeroENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.aw, ptr nonnull %1, i32 0) #36
  br i1 %i.ax, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.f
  %i.ay = icmp eq ptr %.sroa.0155.0.copyload, %.sroa.0141.0.copyload
  %i.az = icmp eq i32 %.sroa.11.0.copyload, %.sroa.15.0.copyload
  %i.ba = select i1 %i.ay, i1 %i.az, i1 false
  %i.bb = and i32 %.sroa.0.0.copyload.i115, 32
  %i.bc = icmp ne i32 %i.bb, 0
  %or.cond = select i1 %i.ba, i1 %i.bc, i1 false
  br i1 %or.cond, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bd = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197
  %.sroa.054.0.copyload = load i16, ptr %91, align 8, !tbaa !214
  %.sroa.256.0.copyload = load ptr, ptr %i.n, align 8, !tbaa !216
  %i.be = call { ptr, i32 } @_ZN4llvm12SelectionDAG13getConstantFPEdRKNS_5SDLocENS_3EVTEb(ptr noundef nonnull align 8 dereferenceable(920) %i.bd, double noundef 0.000000e+00, ptr noundef nonnull align 8 dereferenceable(12) %92, i16 %.sroa.054.0.copyload, ptr %.sroa.256.0.copyload, i1 noundef zeroext false) #36 ; 2 uses
  %.fca.0.extract50 = extractvalue { ptr, i32 } %i.be, 0
  %.fca.1.extract51 = extractvalue { ptr, i32 } %i.be, 1
  br label %.critedge

bb.l:                                             ; preds = %bb.j
  %.not112 = icmp eq ptr %i.j, null
  br i1 %.not112, label %_ZNK4llvm12DenormalModeeqES0_.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !660 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !75
  %.not.i.i.i.i.i116 = icmp eq ptr %i.bi, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8
  %.0.i.i.i.i.i117 = select i1 %.not.i.i.i.i.i116, ptr %i.bk, ptr %i.bh
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i117, i64 20
  %i.bm = load i8, ptr %i.bl, align 4             ; 2 uses
  %i.bn = and i8 %i.bm, 7
  %i.bo = icmp eq i8 %i.bn, 3
  br i1 %i.bo, label %bb.n, label %_ZNK4llvm12DenormalModeeqES0_.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.bp = and i8 %i.bm, 8
  %.not208.a = icmp eq i8 %i.bp, 0
  br i1 %.not208.a, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bq = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197
  %i.br = call noundef zeroext i1 @_ZNK4llvm12SelectionDAG22canIgnoreSignBitOfZeroENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.bq, ptr nonnull %1, i32 0) #36
  br i1 %i.br, label %bb.p, label %_ZNK4llvm12DenormalModeeqES0_.exit.thread

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bs = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197
  %.sroa.047.0.copyload = load i16, ptr %91, align 8, !tbaa !214
  %.sroa.249.0.copyload = load ptr, ptr %i.n, align 8, !tbaa !216
  %i.bt = call i16 @_ZNK4llvm12SelectionDAG15getDenormalModeENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.bs, i16 %.sroa.047.0.copyload, ptr %.sroa.249.0.copyload)
  %or.cond200.a = icmp eq i16 %i.bt, 0
  br i1 %or.cond200.a, label %bb.q, label %_ZNK4llvm12DenormalModeeqES0_.exit.thread

bb.q:                                             ; preds = %bb.p
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !347, !nonnull !53, !align !197 ; 2 uses
  %i.bw = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 33 ; 2 uses
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !324, !range !52, !noundef !53
  %i.bz = trunc nuw i8 %i.by to i1
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 35
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !329, !range !52, !noundef !53
  %i.cc = trunc nuw i8 %i.cb to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #36
  store i32 2, ptr %i.d, align 4, !tbaa !662
  %i.cd = load ptr, ptr %i.bv, align 8, !tbaa !45
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 2296
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = call { ptr, i32 } %i.cf(ptr noundef nonnull align 8 dereferenceable(518435) %i.bv, ptr %.sroa.0141.0.copyload, i32 %.sroa.15.0.copyload, ptr noundef nonnull align 8 dereferenceable(920) %i.bw, i1 noundef zeroext %i.bz, i1 noundef zeroext %i.cc, ptr noundef nonnull align 4 dereferenceable(4) %i.d, i32 noundef 0) #36, !inline_history !8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #36
  %.fca.0.extract39 = extractvalue { ptr, i32 } %i.cg, 0 ; 2 uses
  %.fca.1.extract40 = extractvalue { ptr, i32 } %i.cg, 1
  %.not209 = icmp eq ptr %.fca.0.extract39, null
  br i1 %.not209, label %bb.r, label %.critedge

bb.r:                                             ; preds = %bb.q
  %i.ch = load i8, ptr %i.bx, align 1, !tbaa !324, !range !52, !noundef !53
  %i.ci = trunc nuw i8 %i.ch to i1
  %.sroa.033.0.copyload.pre = load i16, ptr %91, align 8, !tbaa !214 ; 4 uses
  %.sroa.235.0.copyload.pre = load ptr, ptr %i.n, align 8, !tbaa !216 ; 2 uses
  br i1 %i.ci, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.cj = load ptr, ptr %i.bu, align 8, !tbaa !347, !nonnull !53, !align !197 ; 2 uses
  %.not.i.i.i = icmp eq i16 %.sroa.033.0.copyload.pre, 1
  %i.ck = icmp eq ptr %.sroa.235.0.copyload.pre, null
  %.not4.i.i = select i1 %.not.i.i.i, i1 %i.ck, i1 false
  br i1 %.not4.i.i, label %_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not.i.i = icmp eq i16 %.sroa.033.0.copyload.pre, 0
  br i1 %.not.i.i, label %_ZNK4llvm12DenormalModeeqES0_.exit.thread, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i

_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i: ; preds = %bb.t
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 112
  %i.cm = zext i16 %.sroa.033.0.copyload.pre to i64 ; 2 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.cm
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !398
  %.not.i120.not = icmp eq ptr %i.co, null
  br i1 %.not.i120.not, label %_ZNK4llvm12DenormalModeeqES0_.exit.thread, label %_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit

_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit: ; preds = %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i, %bb.s
  %.pre-phi.i = phi i64 [ %i.cm, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i ], [ 1, %bb.s ]
  %i.cp = getelementptr inbounds nuw [537 x i8], ptr %i.cj, i64 %.pre-phi.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 6444
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !400
  %i.cs = icmp eq i8 %i.cr, 0
  br i1 %i.cs, label %bb.u, label %_ZNK4llvm12DenormalModeeqES0_.exit.thread

bb.u:                                             ; preds = %_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit, %bb.r
  %i.ct = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197
  store ptr %.sroa.0141.0.copyload, ptr %96, align 8, !tbaa !74
  %.sroa.15.0..sroa_idx149 = getelementptr inbounds nuw i8, ptr %96, i64 8
  store <2 x i32> %i.i, ptr %.sroa.15.0..sroa_idx149, align 8
  %i.cu = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.ct, i32 noundef 260, ptr noundef nonnull align 8 dereferenceable(12) %92, i16 %.sroa.033.0.copyload.pre, ptr %.sroa.235.0.copyload.pre, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %96) #36 ; 2 uses
  %.fca.0.extract29 = extractvalue { ptr, i32 } %i.cu, 0
  %.fca.1.extract30 = extractvalue { ptr, i32 } %i.cu, 1
  br label %.critedge

_ZNK4llvm12DenormalModeeqES0_.exit.thread:        ; preds = %bb.t, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i, %_ZNK4llvm18TargetLoweringBase16isOperationLegalEjNS_3EVTE.exit, %bb.p, %bb.o, %bb.m, %bb.l
  %i.cv = and i32 %.sroa.0.0.copyload.i115, 2176
  %or.cond202 = icmp eq i32 %i.cv, 2176
  br i1 %or.cond202, label %bb.v, label %bb.aa

bb.v:                                             ; preds = %_ZNK4llvm12DenormalModeeqES0_.exit.thread
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.0141.0.copyload, i64 24
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !72
  %i.cy = icmp eq i32 %i.cx, 99
  br i1 %i.cy, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %bb.v
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.0141.0.copyload, i64 40
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !204 ; 6 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !193
  %i.dc = icmp eq ptr %.sroa.0155.0.copyload, %i.db
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.de = load i32, ptr %i.dd, align 8
  %i.df = icmp eq i32 %.sroa.11.0.copyload, %i.de
  %i.dg = select i1 %i.dc, i1 %i.df, i1 false
  br i1 %i.dg, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dh = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197
  %.sroa.026.0.copyload = load i16, ptr %91, align 8, !tbaa !214
  %.sroa.228.0.copyload = load ptr, ptr %i.n, align 8, !tbaa !216
  %i.di = getelementptr inbounds nuw i8, ptr %i.da, i64 40
  %i.dj = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.dh, i32 noundef 260, ptr noundef nonnull align 8 dereferenceable(12) %92, i16 %.sroa.026.0.copyload, ptr %.sroa.228.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.di) #36 ; 2 uses
  %.fca.0.extract22 = extractvalue { ptr, i32 } %i.dj, 0
  %.fca.1.extract23 = extractvalue { ptr, i32 } %i.dj, 1
  br label %.critedge

bb.y:                                             ; preds = %bb.w
  %i.dk = getelementptr inbounds nuw i8, ptr %i.da, i64 40
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !193
  %i.dm = icmp eq ptr %.sroa.0155.0.copyload, %i.dl
  %i.dn = getelementptr inbounds nuw i8, ptr %i.da, i64 48
  %i.do = load i32, ptr %i.dn, align 8
  %i.dp = icmp eq i32 %.sroa.11.0.copyload, %i.do
  %i.dq = select i1 %i.dm, i1 %i.dp, i1 false
  br i1 %i.dq, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.dr = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197
  %.sroa.019.0.copyload = load i16, ptr %91, align 8, !tbaa !214
  %.sroa.221.0.copyload = load ptr, ptr %i.n, align 8, !tbaa !216
  %i.ds = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.dr, i32 noundef 260, ptr noundef nonnull align 8 dereferenceable(12) %92, i16 %.sroa.019.0.copyload, ptr %.sroa.221.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.da) #36 ; 2 uses
  %.fca.0.extract15 = extractvalue { ptr, i32 } %i.ds, 0
  %.fca.1.extract16 = extractvalue { ptr, i32 } %i.ds, 1
  br label %.critedge

bb.aa:                                            ; preds = %bb.y, %bb.v, %_ZNK4llvm12DenormalModeeqES0_.exit.thread
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 14 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !347, !nonnull !53, !align !197 ; 2 uses
  %i.dv = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 33 ; 3 uses
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !324, !range !52, !noundef !53
  %i.dy = trunc nuw i8 %i.dx to i1
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 35
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !329, !range !52, !noundef !53
  %i.eb = trunc nuw i8 %i.ea to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #36
  store i32 2, ptr %i.c, align 4, !tbaa !662
  %i.ec = load ptr, ptr %i.du, align 8, !tbaa !45
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 2296
  %i.ee = load ptr, ptr %i.ed, align 8
  %i.ef = call { ptr, i32 } %i.ee(ptr noundef nonnull align 8 dereferenceable(518435) %i.du, ptr %.sroa.0141.0.copyload, i32 %.sroa.15.0.copyload, ptr noundef nonnull align 8 dereferenceable(920) %i.dv, i1 noundef zeroext %i.dy, i1 noundef zeroext %i.eb, ptr noundef nonnull align 4 dereferenceable(4) %i.c, i32 noundef 0) #36, !inline_history !8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #36
  %.fca.0.extract9 = extractvalue { ptr, i32 } %i.ef, 0 ; 2 uses
  %.not210 = icmp eq ptr %.fca.0.extract9, null
  br i1 %.not210, label %.critedge114, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.fca.1.extract10 = extractvalue { ptr, i32 } %i.ef, 1
  %i.eg = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197
  %.sroa.06.0.copyload = load i16, ptr %91, align 8, !tbaa !214
  %.sroa.28.0.copyload = load ptr, ptr %i.n, align 8, !tbaa !216
  store ptr %.sroa.0155.0.copyload, ptr %97, align 8, !tbaa !74
  %.sroa.11.0..sroa_idx163 = getelementptr inbounds nuw i8, ptr %97, i64 8
  store <2 x i32> %i.g, ptr %.sroa.11.0..sroa_idx163, align 8
  store ptr %.fca.0.extract9, ptr %98, align 8, !tbaa !74
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %98, i64 8
  store i32 %.fca.1.extract10, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !198
  %i.eh = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.eg, i32 noundef 99, ptr noundef nonnull align 8 dereferenceable(12) %92, i16 %.sroa.06.0.copyload, ptr %.sroa.28.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %97, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %98) #36 ; 2 uses
  %.fca.0.extract2 = extractvalue { ptr, i32 } %i.eh, 0
  %.fca.1.extract3 = extractvalue { ptr, i32 } %i.eh, 1
  br label %.critedge

.critedge114:                                     ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  call void @llvm.lifetime.start.p0(ptr nonnull %24)
  call void @llvm.lifetime.start.p0(ptr nonnull %25)
  call void @llvm.lifetime.start.p0(ptr nonnull %26)
  call void @llvm.lifetime.start.p0(ptr nonnull %27)
  call void @llvm.lifetime.start.p0(ptr nonnull %28)
  call void @llvm.lifetime.start.p0(ptr nonnull %29)
  call void @llvm.lifetime.start.p0(ptr nonnull %30)
  call void @llvm.lifetime.start.p0(ptr nonnull %31)
  call void @llvm.lifetime.start.p0(ptr nonnull %32)
  call void @llvm.lifetime.start.p0(ptr nonnull %33)
  call void @llvm.lifetime.start.p0(ptr nonnull %34)
  call void @llvm.lifetime.start.p0(ptr nonnull %35)
  call void @llvm.lifetime.start.p0(ptr nonnull %36)
  call void @llvm.lifetime.start.p0(ptr nonnull %37)
  call void @llvm.lifetime.start.p0(ptr nonnull %38)
  call void @llvm.lifetime.start.p0(ptr nonnull %39)
  call void @llvm.lifetime.start.p0(ptr nonnull %40)
  call void @llvm.lifetime.start.p0(ptr nonnull %41)
  call void @llvm.lifetime.start.p0(ptr nonnull %42)
  call void @llvm.lifetime.start.p0(ptr nonnull %43)
  call void @llvm.lifetime.start.p0(ptr nonnull %44)
  call void @llvm.lifetime.start.p0(ptr nonnull %45)
  call void @llvm.lifetime.start.p0(ptr nonnull %46)
  call void @llvm.lifetime.start.p0(ptr nonnull %47)
  call void @llvm.lifetime.start.p0(ptr nonnull %48)
  call void @llvm.lifetime.start.p0(ptr nonnull %49)
  call void @llvm.lifetime.start.p0(ptr nonnull %50)
  call void @llvm.lifetime.start.p0(ptr nonnull %51)
  call void @llvm.lifetime.start.p0(ptr nonnull %52)
  call void @llvm.lifetime.start.p0(ptr nonnull %53)
  call void @llvm.lifetime.start.p0(ptr nonnull %54)
  call void @llvm.lifetime.start.p0(ptr nonnull %55)
  call void @llvm.lifetime.start.p0(ptr nonnull %56)
  call void @llvm.lifetime.start.p0(ptr nonnull %57)
  call void @llvm.lifetime.start.p0(ptr nonnull %58)
  call void @llvm.lifetime.start.p0(ptr nonnull %59)
  call void @llvm.lifetime.start.p0(ptr nonnull %60)
  call void @llvm.lifetime.start.p0(ptr nonnull %61)
  call void @llvm.lifetime.start.p0(ptr nonnull %62)
  call void @llvm.lifetime.start.p0(ptr nonnull %63)
  call void @llvm.lifetime.start.p0(ptr nonnull %64)
  call void @llvm.lifetime.start.p0(ptr nonnull %65)
  call void @llvm.lifetime.start.p0(ptr nonnull %66)
  call void @llvm.lifetime.start.p0(ptr nonnull %67)
  call void @llvm.lifetime.start.p0(ptr nonnull %68)
  call void @llvm.lifetime.start.p0(ptr nonnull %69)
  call void @llvm.lifetime.start.p0(ptr nonnull %70)
  call void @llvm.lifetime.start.p0(ptr nonnull %71)
  call void @llvm.lifetime.start.p0(ptr nonnull %72)
  call void @llvm.lifetime.start.p0(ptr nonnull %73)
  call void @llvm.lifetime.start.p0(ptr nonnull %74)
  call void @llvm.lifetime.start.p0(ptr nonnull %75)
  call void @llvm.lifetime.start.p0(ptr nonnull %76)
  call void @llvm.lifetime.start.p0(ptr nonnull %77)
  call void @llvm.lifetime.start.p0(ptr nonnull %78)
  call void @llvm.lifetime.start.p0(ptr nonnull %79)
  call void @llvm.lifetime.start.p0(ptr nonnull %80)
  call void @llvm.lifetime.start.p0(ptr nonnull %81)
  call void @llvm.lifetime.start.p0(ptr nonnull %82)
  call void @llvm.lifetime.start.p0(ptr nonnull %83)
  call void @llvm.lifetime.start.p0(ptr nonnull %84)
  call void @llvm.lifetime.start.p0(ptr nonnull %85)
  call void @llvm.lifetime.start.p0(ptr nonnull %86)
  call void @llvm.lifetime.start.p0(ptr nonnull %87)
  call void @llvm.lifetime.start.p0(ptr nonnull %88)
  call void @llvm.lifetime.start.p0(ptr nonnull %89)
  call void @llvm.lifetime.start.p0(ptr nonnull %90)
  %i.ei = load ptr, ptr %i.e, align 8, !tbaa !204 ; 6 uses
  %.sroa.0875.0.copyload.i = load ptr, ptr %i.ei, align 8, !tbaa !74 ; 23 uses
  %.sroa.40.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %.sroa.40.0.copyload.i = load i32, ptr %.sroa.40.0..sroa_idx.i, align 8, !tbaa !198 ; 6 uses
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ei, i64 12
  %.sroa.47.0.copyload.i = load i32, ptr %.sroa.47.0..sroa_idx.i, align 4 ; 4 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 40
  %.sroa.0823.0.copyload.i = load ptr, ptr %i.ej, align 8, !tbaa !74 ; 26 uses
  %.sroa.34.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ei, i64 48
  %.sroa.34.0.copyload.i = load i32, ptr %.sroa.34.0..sroa_idx.i, align 8, !tbaa !198 ; 9 uses
  %.sroa.41.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ei, i64 52
  %.sroa.41.0.copyload.i = load i32, ptr %.sroa.41.0..sroa_idx.i, align 4 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #36
  %i.ek = load ptr, ptr %i.l, align 8, !tbaa !212 ; 2 uses
  %.sroa.0.0.copyload.i.i121 = load i16, ptr %i.ek, align 8, !tbaa !214 ; 11 uses
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !216 ; 9 uses
  store i16 %.sroa.0.0.copyload.i.i121, ptr %10, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 39 uses
  store ptr %.sroa.21.0.copyload.i.i, ptr %i.el, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #36
  %i.em = load i64, ptr %i.o, align 8, !tbaa !352
  store i64 %i.em, ptr %11, align 8, !tbaa !352
  %i.en = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.eo = load i32, ptr %i.r, align 4, !tbaa !351
  store i32 %i.eo, ptr %i.en, align 8, !tbaa !396
  %i.ep = load ptr, ptr %0, align 8, !tbaa !102, !nonnull !53, !align !197 ; 2 uses
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !663, !nonnull !53, !align !197
  %i.er = load i8, ptr %i.dw, align 1, !tbaa !324, !range !52, !noundef !53
  %i.es = trunc nuw i8 %i.er to i1
  br i1 %i.es, label %bb.ac, label %..split_crit_edge.i

bb.ac:                                            ; preds = %.critedge114
  %i.et = load ptr, ptr %i.dt, align 8, !tbaa !347, !nonnull !53, !align !197 ; 2 uses
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !45
end_hunk_0
