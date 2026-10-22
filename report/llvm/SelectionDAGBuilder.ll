Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SelectionDAGBuilder?download=true
inline.NumInlined: 16572
inline.NumDeleted: 6374
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 43
begin_hunk_0_@_ZN4llvm19SelectionDAGBuilder24EmitFuncArgumentDbgValueEPKNS_5ValueEPNS_15DILocalVariableEPNS_12DIExpressionEPNS_10DILocationENS0_24FuncArgumentDbgValueKindERKNS_7SDValueE:bb.a
.thread:                                          ; preds = %_ZNK4llvm10DILocation12getInlinedAtEv.exit.thread199, %bb.p, %bb.c, %bb.q, %_ZN4llvm11SmallVectorISt4pairINS_8RegisterENS_8TypeSizeEELj8EED2Ev.exit
  %.9 = phi i1 [ %.8, %_ZN4llvm11SmallVectorISt4pairINS_8RegisterENS_8TypeSizeEELj8EED2Ev.exit ], [ false, %bb.q ], [ %.not66, %bb.p ], [ false, %bb.c ], [ false, %_ZNK4llvm10DILocation12getInlinedAtEv.exit.thread199 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #34
  br label %bb.at

bb.at:                                            ; preds = %bb.a, %.thread
  %.10 = phi i1 [ %.9, %.thread ], [ false, %bb.a ]
  ret i1 %.10
}

declare noundef ptr @_ZN4llvm12SelectionDAG11getDbgValueEPNS_10DIVariableEPNS_12DIExpressionEPNS_6SDNodeEjbRKNS_8DebugLocEj(ptr noundef nonnull align 8 dereferenceable(920), ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #4

declare void @_ZN4llvm12SelectionDAG11AddDbgValueEPNS_10SDDbgValueEb(ptr noundef nonnull align 8 dereferenceable(920), ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm19SelectionDAGBuilder12visitDbgInfoERKNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(992) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %"class.llvm::iterator_range", align 8 ; 6 uses
  %3 = alloca %"class.llvm::SmallVector.577", align 8 ; 9 uses
  %4 = alloca %"class.llvm::iterator_range", align 8 ; 5 uses
  %5 = alloca %"class.llvm::SmallVector.588", align 8 ; 10 uses
  %6 = alloca %"class.llvm::iterator_range", align 8 ; 5 uses
  %7 = alloca %"class.llvm::DebugLoc", align 8    ; 4 uses
  %8 = alloca %"class.llvm::SmallVector.588", align 8 ; 10 uses
  %9 = alloca %"class.llvm::iterator_range.600", align 8 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !410, !nonnull !51, !align !346
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1430 ; 7 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1433, !noalias !1434 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1435, !noalias !1434 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 132
  %i.m = load i32, ptr %i.l, align 4, !tbaa !1436, !noalias !1434 ; 3 uses
  %i.n = icmp eq i32 %i.m, 0                      ; 2 uses
  br i1 %i.n, label %_ZNK4llvm15FunctionVarLocs10locs_beginEPKNS_11InstructionE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = add i32 %i.m, -1                         ; 2 uses
  %i.p = ptrtoint ptr %1 to i64
  %i.q = mul i64 %i.p, -4658895280553007687       ; 2 uses
  %i.r = lshr i64 %i.q, 31
  %i.s = xor i64 %i.r, %i.q
  %i.t = trunc i64 %i.s to i32
  %i.u = and i32 %i.o, %i.t                       ; 3 uses
  %i.v = zext i32 %i.u to i64                     ; 2 uses
  %i.w = lshr i64 %i.v, 5
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !73
  %i.z = and i32 %i.u, 31
  %i.aa = lshr i32 %i.y, %i.z
  %i.ab = trunc i32 %i.aa to i1
  br i1 %i.ab, label %.lr.ph.i.i.i, label %_ZNK4llvm15FunctionVarLocs10locs_beginEPKNS_11InstructionE.exit, !prof !552

.lr.ph.i.i.i:                                     ; preds = %bb.c, %bb.d
  %i.ac = phi i64 [ %i.ai, %bb.d ], [ %i.v, %bb.c ]
  %.017.i.i.i = phi i32 [ %i.ah, %bb.d ], [ %i.u, %bb.c ]
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.ac ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !566
  %i.af = icmp eq ptr %1, %i.ae
  br i1 %i.af, label %bb.e, label %bb.d, !prof !89

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.ag = add nuw i32 %.017.i.i.i, 1
  %i.ah = and i32 %i.ag, %i.o                     ; 3 uses
  %i.ai = zext i32 %i.ah to i64                   ; 2 uses
  %i.aj = lshr i64 %i.ai, 5
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !73
  %i.am = and i32 %i.ah, 31
  %i.an = lshr i32 %i.al, %i.am
  %i.ao = trunc i32 %i.an to i1
  br i1 %i.ao, label %.lr.ph.i.i.i, label %_ZNK4llvm15FunctionVarLocs10locs_beginEPKNS_11InstructionE.exit, !prof !553

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.aq = load i64, ptr %i.ap, align 4
  %i.ar = and i64 %i.aq, 4294967295
  br label %_ZNK4llvm15FunctionVarLocs10locs_beginEPKNS_11InstructionE.exit

_ZNK4llvm15FunctionVarLocs10locs_beginEPKNS_11InstructionE.exit: ; preds = %bb.d, %bb.b, %bb.c, %bb.e
  %.sroa.3.1.i.i = phi i64 [ %i.ar, %bb.e ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.d ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !54 ; 2 uses
  %i.au = getelementptr inbounds nuw [32 x i8], ptr %i.at, i64 %.sroa.3.1.i.i
  br i1 %i.n, label %_ZNK4llvm15FunctionVarLocs8locs_endEPKNS_11InstructionE.exit, label %bb.f

bb.f:                                             ; preds = %_ZNK4llvm15FunctionVarLocs10locs_beginEPKNS_11InstructionE.exit
  %i.av = add i32 %i.m, -1                        ; 2 uses
  %i.aw = ptrtoint ptr %1 to i64
  %i.ax = mul i64 %i.aw, -4658895280553007687     ; 2 uses
  %i.ay = lshr i64 %i.ax, 31
  %i.az = xor i64 %i.ay, %i.ax
  %i.ba = trunc i64 %i.az to i32
  %i.bb = and i32 %i.av, %i.ba                    ; 3 uses
  %i.bc = zext i32 %i.bb to i64                   ; 2 uses
  %i.bd = lshr i64 %i.bc, 5
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !73
  %i.bg = and i32 %i.bb, 31
  %i.bh = lshr i32 %i.bf, %i.bg
  %i.bi = trunc i32 %i.bh to i1
  br i1 %i.bi, label %.lr.ph.i.i.i83, label %_ZNK4llvm15FunctionVarLocs8locs_endEPKNS_11InstructionE.exit, !prof !552

.lr.ph.i.i.i83:                                   ; preds = %bb.f, %bb.g
  %i.bj = phi i64 [ %i.bp, %bb.g ], [ %i.bc, %bb.f ]
  %.017.i.i.i84 = phi i32 [ %i.bo, %bb.g ], [ %i.bb, %bb.f ]
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.bj ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !566
  %i.bm = icmp eq ptr %1, %i.bl
  br i1 %i.bm, label %bb.h, label %bb.g, !prof !89

bb.g:                                             ; preds = %.lr.ph.i.i.i83
  %i.bn = add nuw i32 %.017.i.i.i84, 1
  %i.bo = and i32 %i.bn, %i.av                    ; 3 uses
  %i.bp = zext i32 %i.bo to i64                   ; 2 uses
  %i.bq = lshr i64 %i.bp, 5
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !73
  %i.bt = and i32 %i.bo, 31
  %i.bu = lshr i32 %i.bs, %i.bt
  %i.bv = trunc i32 %i.bu to i1
  br i1 %i.bv, label %.lr.ph.i.i.i83, label %_ZNK4llvm15FunctionVarLocs8locs_endEPKNS_11InstructionE.exit, !prof !553

bb.h:                                             ; preds = %.lr.ph.i.i.i83
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bx = load i64, ptr %i.bw, align 4
  %i.by = lshr i64 %i.bx, 32
  br label %_ZNK4llvm15FunctionVarLocs8locs_endEPKNS_11InstructionE.exit

_ZNK4llvm15FunctionVarLocs8locs_endEPKNS_11InstructionE.exit: ; preds = %bb.g, %_ZNK4llvm15FunctionVarLocs10locs_beginEPKNS_11InstructionE.exit, %bb.f, %bb.h
  %.sroa.3.1.i.i80 = phi i64 [ %i.by, %bb.h ], [ 0, %_ZNK4llvm15FunctionVarLocs10locs_beginEPKNS_11InstructionE.exit ], [ 0, %bb.f ], [ 0, %bb.g ] ; 2 uses
  %i.bz = getelementptr inbounds nuw [32 x i8], ptr %i.at, i64 %.sroa.3.1.i.i80
  %.not76161 = icmp samesign eq i64 %.sroa.3.1.i.i, %.sroa.3.1.i.i80
  br i1 %.not76161, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK4llvm15FunctionVarLocs8locs_endEPKNS_11InstructionE.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 816 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 984
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.ck = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.z
  %.0162 = phi ptr [ %i.au, %.lr.ph ], [ %i.gh, %bb.z ] ; 7 uses
  %i.cl = load i32, ptr %.0162, align 8, !tbaa !1440
  %i.cm = zext i32 %i.cl to i64
  %i.cn = load ptr, ptr %i.g, align 8, !tbaa !54
  %i.co = getelementptr inbounds nuw [40 x i8], ptr %i.cn, i64 %i.cm
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !1445 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.0162, i64 8 ; 5 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !1446
  call void @_ZN4llvm19SelectionDAGBuilder21dropDanglingDebugInfoEPKNS_15DILocalVariableEPKNS_12DIExpressionE(ptr noundef nonnull align 8 dereferenceable(992) %0, ptr noundef %i.cp, ptr noundef %i.cr)
  %i.cs = getelementptr inbounds nuw i8, ptr %.0162, i64 24 ; 5 uses
  %i.ct = load ptr, ptr %i.cq, align 8, !tbaa !1446
  %i.cu = load ptr, ptr %i.cs, align 8, !tbaa !1447 ; 2 uses
  %i.cv = load i8, ptr %i.cu, align 4, !tbaa !1448 ; 2 uses
  %i.cw = icmp eq i8 %i.cv, 4
  br i1 %i.cw, label %_ZNK4llvm18RawLocationWrapper25getNumVariableLocationOpsEv.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cx = add i8 %i.cv, -5
  %switch.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.cx, 33
  br i1 %switch.i.i.i.i.i.i.i.i.i, label %_ZNK4llvm18RawLocationWrapper14isKillLocationEPKNS_12DIExpressionE.exit.thread, label %_ZNK4llvm18RawLocationWrapper25getNumVariableLocationOpsEv.exit.thread.i

_ZNK4llvm18RawLocationWrapper25getNumVariableLocationOpsEv.exit.i: ; preds = %bb.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 144
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !82
  %i.da = icmp eq i32 %i.cz, 0
  br i1 %i.da, label %bb.k, label %_ZNK4llvm18RawLocationWrapper25getNumVariableLocationOpsEv.exit.thread.i

bb.k:                                             ; preds = %_ZNK4llvm18RawLocationWrapper25getNumVariableLocationOpsEv.exit.i
  %i.db = call noundef zeroext i1 @_ZNK4llvm12DIExpression9isComplexEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ct) #34
  br i1 %i.db, label %_ZNK4llvm18RawLocationWrapper25getNumVariableLocationOpsEv.exit.thread.i, label %_ZNK4llvm18RawLocationWrapper14isKillLocationEPKNS_12DIExpressionE.exit.thread

_ZNK4llvm18RawLocationWrapper25getNumVariableLocationOpsEv.exit.thread.i: ; preds = %bb.k, %_ZNK4llvm18RawLocationWrapper25getNumVariableLocationOpsEv.exit.i, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  call void @_ZNK4llvm18RawLocationWrapper12location_opsEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::iterator_range") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.cs) #34
  %i.dc = load i64, ptr %2, align 8, !noalias !1449 ; 2 uses
  %i.dd = load i64, ptr %i.ca, align 8, !noalias !1450 ; 3 uses
  %.not3.i.i.i.i.i.i.i = icmp eq i64 %i.dc, %i.dd
  br i1 %.not3.i.i.i.i.i.i.i, label %.sink.split, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNK4llvm18RawLocationWrapper25getNumVariableLocationOpsEv.exit.thread.i, %bb.n
  %.sroa.01.0.copyload.i.i4.i.i.i.i.i.i.i = phi i64 [ %storemerge.i.i.i.i.i.i.i.i, %bb.n ], [ %i.dc, %_ZNK4llvm18RawLocationWrapper25getNumVariableLocationOpsEv.exit.thread.i ] ; 6 uses
  %i.de = and i64 %.sroa.01.0.copyload.i.i4.i.i.i.i.i.i.i, 4
  %i.df = icmp eq i64 %i.de, 0                    ; 2 uses
  br i1 %i.df, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.dg = inttoptr i64 %.sroa.01.0.copyload.i.i4.i.i.i.i.i.i.i to ptr
  br label %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm18RawLocationWrapper14isKillLocationEPKNS2_12DIExpressionEEUlPNS2_5ValueEE_EclINS2_20location_op_iteratorEEEbT_.exit.i.i.i.i.i.i.i

bb.m:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.dh = and i64 %.sroa.01.0.copyload.i.i4.i.i.i.i.i.i.i, -5
  %i.di = inttoptr i64 %i.dh to ptr
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !1452, !noalias !1453
  br label %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm18RawLocationWrapper14isKillLocationEPKNS2_12DIExpressionEEUlPNS2_5ValueEE_EclINS2_20location_op_iteratorEEEbT_.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm18RawLocationWrapper14isKillLocationEPKNS2_12DIExpressionEEUlPNS2_5ValueEE_EclINS2_20location_op_iteratorEEEbT_.exit.i.i.i.i.i.i.i: ; preds = %bb.m, %bb.l
  %i.dk = phi ptr [ %i.dg, %bb.l ], [ %i.dj, %bb.m ]
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 136
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !572, !noalias !1453
  %i.dn = load i8, ptr %i.dm, align 8, !tbaa !449, !noalias !1453
  %spec.select.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.dn, 2
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK4llvm18RawLocationWrapper14isKillLocationEPKNS_12DIExpressionE.exit, label %bb.n

bb.n:                                             ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm18RawLocationWrapper14isKillLocationEPKNS2_12DIExpressionEEUlPNS2_5ValueEE_EclINS2_20location_op_iteratorEEEbT_.exit.i.i.i.i.i.i.i
  %10 = and i64 %.sroa.01.0.copyload.i.i4.i.i.i.i.i.i.i, -5
  %11 = add nuw i64 %10, 12
  %storemerge.i.i.i.i.i.i.i.i.a = add nuw i64 %.sroa.01.0.copyload.i.i4.i.i.i.i.i.i.i, 144
  %storemerge.i.i.i.i.i.i.i.i = select i1 %i.df, i64 %storemerge.i.i.i.i.i.i.i.i.a, i64 %11 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %storemerge.i.i.i.i.i.i.i.i, %i.dd
  br i1 %.not.i.i.i.i.i.i.i, label %.sink.split, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1411

_ZNK4llvm18RawLocationWrapper14isKillLocationEPKNS_12DIExpressionE.exit: ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZNK4llvm18RawLocationWrapper14isKillLocationEPKNS2_12DIExpressionEEUlPNS2_5ValueEE_EclINS2_20location_op_iteratorEEEbT_.exit.i.i.i.i.i.i.i
  %.not149 = icmp eq i64 %i.dd, %.sroa.01.0.copyload.i.i4.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  br i1 %.not149, label %bb.o, label %_ZNK4llvm18RawLocationWrapper14isKillLocationEPKNS_12DIExpressionE.exit.thread

_ZNK4llvm18RawLocationWrapper14isKillLocationEPKNS_12DIExpressionE.exit.thread: ; preds = %bb.k, %bb.j, %_ZNK4llvm18RawLocationWrapper14isKillLocationEPKNS_12DIExpressionE.exit
  %i.do = load ptr, ptr %i.cq, align 8, !tbaa !1446
  %i.dp = getelementptr inbounds nuw i8, ptr %.0162, i64 16
  %.sroa.041.0.copyload = load ptr, ptr %i.dp, align 8, !tbaa !446
  %i.dq = load i32, ptr %i.cb, align 8, !tbaa !438
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34
  %i.dr = load ptr, ptr %i.cc, align 8, !tbaa !411
  %i.ds = call noundef ptr @_ZN4llvm4Type9getInt1TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.dr) #34
  %i.dt = call noundef ptr @_ZN4llvm11PoisonValue3getEPNS_4TypeE(ptr noundef %i.ds) #34
  store ptr %i.dt, ptr %i.c, align 8, !tbaa !448
  %i.du = call noundef ptr @_ZN4llvm12DIExpression24convertToUndefExpressionEPKS0_(ptr noundef %i.do) #34
  %i.dv = call noundef zeroext i1 @_ZN4llvm19SelectionDAGBuilder16handleDebugValueENS_8ArrayRefIPKNS_5ValueEEEPNS_15DILocalVariableEPNS_12DIExpressionENS_8DebugLocEjb(ptr noundef nonnull align 8 dereferenceable(992) %0, ptr nonnull %i.c, i64 1, ptr noundef %i.cp, ptr noundef %i.du, ptr %.sroa.041.0.copyload, i32 noundef %i.dq, i1 noundef zeroext false) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  br label %bb.z

.sink.split:                                      ; preds = %bb.n, %_ZNK4llvm18RawLocationWrapper25getNumVariableLocationOpsEv.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  br label %bb.o

bb.o:                                             ; preds = %.sink.split, %_ZNK4llvm18RawLocationWrapper14isKillLocationEPKNS_12DIExpressionE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  call void @_ZNK4llvm18RawLocationWrapper12location_opsEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::iterator_range") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.cs) #34
  store ptr %i.cd, ptr %3, align 8, !tbaa !54
  store i32 0, ptr %i.ce, align 8, !tbaa !82
  store i32 6, ptr %i.cf, align 4, !tbaa !77
  %i.dw = load i64, ptr %4, align 8, !noalias !1454 ; 3 uses
  %i.dx = load i64, ptr %i.cg, align 8, !noalias !1455 ; 3 uses
  %.not4.i.i.i = icmp eq i64 %i.dw, %i.dx
  br i1 %.not4.i.i.i, label %_ZN4llvm11SmallVectorIPNS_5ValueELj6EEC2INS_20location_op_iteratorEEERKNS_14iterator_rangeIT_EE.exit, label %.lr.ph.i.i.i85

.lr.ph.i.i.i85:                                   ; preds = %bb.o, %.lr.ph.i.i.i85
  %.sroa.01.0.copyload.i.i6.i.i.i = phi i64 [ %storemerge.i.i.i.i, %.lr.ph.i.i.i85 ], [ %i.dw, %bb.o ] ; 3 uses
  %.05.i.i.i = phi i64 [ %i.ea, %.lr.ph.i.i.i85 ], [ 0, %bb.o ] ; 2 uses
  %i.dy = and i64 %.sroa.01.0.copyload.i.i6.i.i.i, 4
  %i.dz = icmp eq i64 %i.dy, 0
  %12 = and i64 %.sroa.01.0.copyload.i.i6.i.i.i, -5
  %13 = add nuw i64 %12, 12
  %storemerge.i.i.i.i.a = add nuw i64 %.sroa.01.0.copyload.i.i6.i.i.i, 144
  %storemerge.i.i.i.i = select i1 %i.dz, i64 %storemerge.i.i.i.i.a, i64 %13 ; 2 uses
  %i.ea = add nuw nsw i64 %.05.i.i.i, 1           ; 3 uses
  %.not.i.i.i = icmp eq i64 %storemerge.i.i.i.i, %i.dx
  br i1 %.not.i.i.i, label %_ZSt10__distanceIN4llvm20location_op_iteratorEENSt15iterator_traitsIT_E15difference_typeES3_S3_St18input_iterator_tag.exit.i.i, label %.lr.ph.i.i.i85, !llvm.loop !1416

_ZSt10__distanceIN4llvm20location_op_iteratorEENSt15iterator_traitsIT_E15difference_typeES3_S3_St18input_iterator_tag.exit.i.i: ; preds = %.lr.ph.i.i.i85
  %i.eb = icmp samesign ugt i64 %.05.i.i.i, 5
  br i1 %i.eb, label %bb.p, label %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i

bb.p:                                             ; preds = %_ZSt10__distanceIN4llvm20location_op_iteratorEENSt15iterator_traitsIT_E15difference_typeES3_S3_St18input_iterator_tag.exit.i.i
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull %i.cd, i64 noundef %i.ea, i64 noundef 8) #34
  %.pre11.i.i = load i32, ptr %i.ce, align 8, !tbaa !82 ; 2 uses
  %.pre12.i.i = zext i32 %.pre11.i.i to i64
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !54
  br label %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i

.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i:             ; preds = %bb.p, %_ZSt10__distanceIN4llvm20location_op_iteratorEENSt15iterator_traitsIT_E15difference_typeES3_S3_St18input_iterator_tag.exit.i.i
  %i.ec = phi ptr [ %.pre.i, %bb.p ], [ %i.cd, %_ZSt10__distanceIN4llvm20location_op_iteratorEENSt15iterator_traitsIT_E15difference_typeES3_S3_St18input_iterator_tag.exit.i.i ] ; 2 uses
  %.pre-phi.i.ph.i = phi i64 [ %.pre12.i.i, %bb.p ], [ 0, %_ZSt10__distanceIN4llvm20location_op_iteratorEENSt15iterator_traitsIT_E15difference_typeES3_S3_St18input_iterator_tag.exit.i.i ]
  %.ph.i = phi i32 [ %.pre11.i.i, %bb.p ], [ 0, %_ZSt10__distanceIN4llvm20location_op_iteratorEENSt15iterator_traitsIT_E15difference_typeES3_S3_St18input_iterator_tag.exit.i.i ]
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %.pre-phi.i.ph.i
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %_ZN4llvm20location_op_iteratordeEv.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i
  %.sroa.02.0.i.i.i.i.i.i.i.i.i = phi i64 [ %storemerge.i.i.i.i.i.i.i.i.i.i.i, %_ZN4llvm20location_op_iteratordeEv.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.dw, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i ] ; 5 uses
  %.07.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.en, %_ZN4llvm20location_op_iteratordeEv.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.ed, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i ] ; 2 uses
  %i.ee = and i64 %.sroa.02.0.i.i.i.i.i.i.i.i.i, 4
  %i.ef = icmp eq i64 %i.ee, 0                    ; 2 uses
  br i1 %i.ef, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.eg = inttoptr i64 %.sroa.02.0.i.i.i.i.i.i.i.i.i to ptr
  br label %_ZN4llvm20location_op_iteratordeEv.exit.i.i.i.i.i.i.i.i.i.i

bb.r:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.eh = and i64 %.sroa.02.0.i.i.i.i.i.i.i.i.i, -5 ; 2 uses
  %i.ei = inttoptr i64 %i.eh to ptr
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !1452
  br label %_ZN4llvm20location_op_iteratordeEv.exit.i.i.i.i.i.i.i.i.i.i

_ZN4llvm20location_op_iteratordeEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.r, %bb.q
  %storemerge.v.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.eh, %bb.r ], [ %.sroa.02.0.i.i.i.i.i.i.i.i.i, %bb.q ]
  %i.ek = phi ptr [ %i.ej, %bb.r ], [ %i.eg, %bb.q ]
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 136
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !572
  store ptr %i.em, ptr %.07.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !448
  %i.en = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i.i, i64 8
  %14 = add nuw i64 %storemerge.v.i.i.i.i.i.i.i.i.i.i.i, 12
  %storemerge.i.i.i.i.i.i.i.i.i.i.i.a = add nuw i64 %.sroa.02.0.i.i.i.i.i.i.i.i.i, 144
  %storemerge.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.ef, i64 %storemerge.i.i.i.i.i.i.i.i.i.i.i.a, i64 %14 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %storemerge.i.i.i.i.i.i.i.i.i.i.i, %i.dx
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm15SmallVectorImplIPNS_5ValueEE6appendINS_20location_op_iteratorEvEEvT_S6_.exit.loopexit.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1417

_ZN4llvm15SmallVectorImplIPNS_5ValueEE6appendINS_20location_op_iteratorEvEEvT_S6_.exit.loopexit.i: ; preds = %_ZN4llvm20location_op_iteratordeEv.exit.i.i.i.i.i.i.i.i.i.i
  %i.eo = trunc i64 %i.ea to i32
  %i.ep = add i32 %.ph.i, %i.eo
  br label %_ZN4llvm11SmallVectorIPNS_5ValueELj6EEC2INS_20location_op_iteratorEEERKNS_14iterator_rangeIT_EE.exit

_ZN4llvm11SmallVectorIPNS_5ValueELj6EEC2INS_20location_op_iteratorEEERKNS_14iterator_rangeIT_EE.exit: ; preds = %bb.o, %_ZN4llvm15SmallVectorImplIPNS_5ValueEE6appendINS_20location_op_iteratorEvEEvT_S6_.exit.loopexit.i
  %i.eq = phi ptr [ %i.cd, %bb.o ], [ %i.ec, %_ZN4llvm15SmallVectorImplIPNS_5ValueEE6appendINS_20location_op_iteratorEvEEvT_S6_.exit.loopexit.i ]
  %i.er = phi i32 [ 0, %bb.o ], [ %i.ep, %_ZN4llvm15SmallVectorImplIPNS_5ValueEE6appendINS_20location_op_iteratorEvEEvT_S6_.exit.loopexit.i ] ; 2 uses
  store i32 %i.er, ptr %i.ce, align 8, !tbaa !82
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  %i.es = zext i32 %i.er to i64
  %i.et = load ptr, ptr %i.cq, align 8, !tbaa !1446
  %i.eu = getelementptr inbounds nuw i8, ptr %.0162, i64 16 ; 2 uses
  %.sroa.040.0.copyload = load ptr, ptr %i.eu, align 8, !tbaa !446
  %i.ev = load i32, ptr %i.cb, align 8, !tbaa !438
  %i.ew = load ptr, ptr %i.cs, align 8, !tbaa !1447
  %i.ex = load i8, ptr %i.ew, align 4, !tbaa !1448
  %i.ey = icmp eq i8 %i.ex, 4
  %i.ez = call noundef zeroext i1 @_ZN4llvm19SelectionDAGBuilder16handleDebugValueENS_8ArrayRefIPKNS_5ValueEEEPNS_15DILocalVariableEPNS_12DIExpressionENS_8DebugLocEjb(ptr noundef nonnull align 8 dereferenceable(992) %0, ptr %i.eq, i64 %i.es, ptr noundef %i.cp, ptr noundef %i.et, ptr %.sroa.040.0.copyload, i32 noundef %i.ev, i1 noundef zeroext %i.ey)
  br i1 %i.ez, label %bb.x, label %bb.s

bb.s:                                             ; preds = %_ZN4llvm11SmallVectorIPNS_5ValueELj6EEC2INS_20location_op_iteratorEEERKNS_14iterator_rangeIT_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  call void @_ZNK4llvm18RawLocationWrapper12location_opsEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::iterator_range") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.cs) #34
  store ptr %i.ch, ptr %5, align 8, !tbaa !54
  store i32 0, ptr %i.ci, align 8, !tbaa !82
  store i32 4, ptr %i.cj, align 4, !tbaa !77
  %i.fa = load i64, ptr %6, align 8, !noalias !1456 ; 3 uses
  %i.fb = load i64, ptr %i.ck, align 8, !noalias !1457 ; 3 uses
  %.not4.i.i.i86 = icmp eq i64 %i.fa, %i.fb
  br i1 %.not4.i.i.i86, label %_ZN4llvm11SmallVectorIPNS_5ValueELj4EEC2INS_20location_op_iteratorEEERKNS_14iterator_rangeIT_EE.exit, label %.lr.ph.i.i.i87

.lr.ph.i.i.i87:                                   ; preds = %bb.s, %.lr.ph.i.i.i87
  %.sroa.01.0.copyload.i.i6.i.i.i88 = phi i64 [ %storemerge.i.i.i.i90, %.lr.ph.i.i.i87 ], [ %i.fa, %bb.s ] ; 3 uses
  %.05.i.i.i89 = phi i64 [ %i.fe, %.lr.ph.i.i.i87 ], [ 0, %bb.s ] ; 2 uses
  %i.fc = and i64 %.sroa.01.0.copyload.i.i6.i.i.i88, 4
  %i.fd = icmp eq i64 %i.fc, 0
  %15 = and i64 %.sroa.01.0.copyload.i.i6.i.i.i88, -5
  %16 = add nuw i64 %15, 12
  %storemerge.i.i.i.i91 = add nuw i64 %.sroa.01.0.copyload.i.i6.i.i.i88, 144
  %storemerge.i.i.i.i90 = select i1 %i.fd, i64 %storemerge.i.i.i.i91, i64 %16 ; 2 uses
  %i.fe = add nuw nsw i64 %.05.i.i.i89, 1         ; 3 uses
  %.not.i.i.i92 = icmp eq i64 %storemerge.i.i.i.i90, %i.fb
  br i1 %.not.i.i.i92, label %_ZSt10__distanceIN4llvm20location_op_iteratorEENSt15iterator_traitsIT_E15difference_typeES3_S3_St18input_iterator_tag.exit.i.i93, label %.lr.ph.i.i.i87, !llvm.loop !1416

_ZSt10__distanceIN4llvm20location_op_iteratorEENSt15iterator_traitsIT_E15difference_typeES3_S3_St18input_iterator_tag.exit.i.i93: ; preds = %.lr.ph.i.i.i87
  %i.ff = icmp samesign ugt i64 %.05.i.i.i89, 3
  br i1 %i.ff, label %bb.t, label %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i94

bb.t:                                             ; preds = %_ZSt10__distanceIN4llvm20location_op_iteratorEENSt15iterator_traitsIT_E15difference_typeES3_S3_St18input_iterator_tag.exit.i.i93
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull %i.ch, i64 noundef %i.fe, i64 noundef 8) #34
  %.pre11.i.i105 = load i32, ptr %i.ci, align 8, !tbaa !82 ; 2 uses
  %.pre12.i.i106 = zext i32 %.pre11.i.i105 to i64
  %.pre.i107 = load ptr, ptr %5, align 8, !tbaa !54
  br label %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i94

.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i94:           ; preds = %bb.t, %_ZSt10__distanceIN4llvm20location_op_iteratorEENSt15iterator_traitsIT_E15difference_typeES3_S3_St18input_iterator_tag.exit.i.i93
  %i.fg = phi ptr [ %.pre.i107, %bb.t ], [ %i.ch, %_ZSt10__distanceIN4llvm20location_op_iteratorEENSt15iterator_traitsIT_E15difference_typeES3_S3_St18input_iterator_tag.exit.i.i93 ]
  %.pre-phi.i.ph.i95 = phi i64 [ %.pre12.i.i106, %bb.t ], [ 0, %_ZSt10__distanceIN4llvm20location_op_iteratorEENSt15iterator_traitsIT_E15difference_typeES3_S3_St18input_iterator_tag.exit.i.i93 ]
  %.ph.i96 = phi i32 [ %.pre11.i.i105, %bb.t ], [ 0, %_ZSt10__distanceIN4llvm20location_op_iteratorEENSt15iterator_traitsIT_E15difference_typeES3_S3_St18input_iterator_tag.exit.i.i93 ]
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %.pre-phi.i.ph.i95
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i97

.lr.ph.i.i.i.i.i.i.i.i.i.i97:                     ; preds = %_ZN4llvm20location_op_iteratordeEv.exit.i.i.i.i.i.i.i.i.i.i100, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i94
  %.sroa.02.0.i.i.i.i.i.i.i.i.i98 = phi i64 [ %storemerge.i.i.i.i.i.i.i.i.i.i.i101, %_ZN4llvm20location_op_iteratordeEv.exit.i.i.i.i.i.i.i.i.i.i100 ], [ %i.fa, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i94 ] ; 5 uses
  %.07.i.i.i.i.i.i.i.i.i.i99 = phi ptr [ %i.fr, %_ZN4llvm20location_op_iteratordeEv.exit.i.i.i.i.i.i.i.i.i.i100 ], [ %i.fh, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i94 ] ; 2 uses
  %i.fi = and i64 %.sroa.02.0.i.i.i.i.i.i.i.i.i98, 4
  %i.fj = icmp eq i64 %i.fi, 0                    ; 2 uses
  br i1 %i.fj, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i97
  %i.fk = inttoptr i64 %.sroa.02.0.i.i.i.i.i.i.i.i.i98 to ptr
  br label %_ZN4llvm20location_op_iteratordeEv.exit.i.i.i.i.i.i.i.i.i.i100

bb.v:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i97
  %i.fl = and i64 %.sroa.02.0.i.i.i.i.i.i.i.i.i98, -5 ; 2 uses
  %i.fm = inttoptr i64 %i.fl to ptr
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !1452
  br label %_ZN4llvm20location_op_iteratordeEv.exit.i.i.i.i.i.i.i.i.i.i100

_ZN4llvm20location_op_iteratordeEv.exit.i.i.i.i.i.i.i.i.i.i100: ; preds = %bb.v, %bb.u
  %storemerge.v.i.i.i.i.i.i.i.i.i.i.i101 = phi i64 [ %i.fl, %bb.v ], [ %.sroa.02.0.i.i.i.i.i.i.i.i.i98, %bb.u ]
  %i.fo = phi ptr [ %i.fn, %bb.v ], [ %i.fk, %bb.u ]
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 136
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !572
  store ptr %i.fq, ptr %.07.i.i.i.i.i.i.i.i.i.i99, align 8, !tbaa !448
  %i.fr = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i.i99, i64 8
  %17 = add nuw i64 %storemerge.v.i.i.i.i.i.i.i.i.i.i.i101, 12
  %storemerge.i.i.i.i.i.i.i.i.i.i.i102 = add nuw i64 %.sroa.02.0.i.i.i.i.i.i.i.i.i98, 144
  %storemerge.i.i.i.i.i.i.i.i.i.i.i101 = select i1 %i.fj, i64 %storemerge.i.i.i.i.i.i.i.i.i.i.i102, i64 %17 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i103 = icmp eq i64 %storemerge.i.i.i.i.i.i.i.i.i.i.i101, %i.fb
  br i1 %.not.i.i.i.i.i.i.i.i.i.i103, label %_ZN4llvm15SmallVectorImplIPNS_5ValueEE6appendINS_20location_op_iteratorEvEEvT_S6_.exit.loopexit.i104, label %.lr.ph.i.i.i.i.i.i.i.i.i.i97, !llvm.loop !1417

_ZN4llvm15SmallVectorImplIPNS_5ValueEE6appendINS_20location_op_iteratorEvEEvT_S6_.exit.loopexit.i104: ; preds = %_ZN4llvm20location_op_iteratordeEv.exit.i.i.i.i.i.i.i.i.i.i100
  %i.fs = trunc i64 %i.fe to i32
  %i.ft = add i32 %.ph.i96, %i.fs
  br label %_ZN4llvm11SmallVectorIPNS_5ValueELj4EEC2INS_20location_op_iteratorEEERKNS_14iterator_rangeIT_EE.exit

_ZN4llvm11SmallVectorIPNS_5ValueELj4EEC2INS_20location_op_iteratorEEERKNS_14iterator_rangeIT_EE.exit: ; preds = %bb.s, %_ZN4llvm15SmallVectorImplIPNS_5ValueEE6appendINS_20location_op_iteratorEvEEvT_S6_.exit.loopexit.i104
  %i.fu = phi i32 [ 0, %bb.s ], [ %i.ft, %_ZN4llvm15SmallVectorImplIPNS_5ValueEE6appendINS_20location_op_iteratorEvEEvT_S6_.exit.loopexit.i104 ] ; 2 uses
  store i32 %i.fu, ptr %i.ci, align 8, !tbaa !82
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  %i.fv = load i32, ptr %.0162, align 8, !tbaa !1440
  %i.fw = zext i32 %i.fv to i64
  %i.fx = load ptr, ptr %i.g, align 8, !tbaa !54
  %i.fy = getelementptr inbounds nuw [40 x i8], ptr %i.fx, i64 %i.fw
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !1445
  %i.ga = load ptr, ptr %i.cq, align 8, !tbaa !1446
  %i.gb = icmp ugt i32 %i.fu, 1
  %.sroa.039.0.copyload = load ptr, ptr %i.eu, align 8, !tbaa !446
  %i.gc = load i32, ptr %i.cb, align 8, !tbaa !438
  call void @_ZN4llvm19SelectionDAGBuilder20addDanglingDebugInfoERNS_15SmallVectorImplIPNS_5ValueEEEPNS_15DILocalVariableEPNS_12DIExpressionEbNS_8DebugLocEj(ptr noundef nonnull align 8 dereferenceable(992) %0, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %i.fz, ptr noundef %i.ga, i1 noundef zeroext %i.gb, ptr %.sroa.039.0.copyload, i32 noundef %i.gc)
  %i.gd = load ptr, ptr %5, align 8, !tbaa !54    ; 2 uses
  %i.ge = icmp eq ptr %i.gd, %i.ch
  br i1 %i.ge, label %_ZN4llvm11SmallVectorIPNS_5ValueELj4EED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %_ZN4llvm11SmallVectorIPNS_5ValueELj4EEC2INS_20location_op_iteratorEEERKNS_14iterator_rangeIT_EE.exit
  call void @free(ptr noundef %i.gd) #34
  br label %_ZN4llvm11SmallVectorIPNS_5ValueELj4EED2Ev.exit

_ZN4llvm11SmallVectorIPNS_5ValueELj4EED2Ev.exit:  ; preds = %_ZN4llvm11SmallVectorIPNS_5ValueELj4EEC2INS_20location_op_iteratorEEERKNS_14iterator_rangeIT_EE.exit, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  br label %bb.x

bb.x:                                             ; preds = %_ZN4llvm11SmallVectorIPNS_5ValueELj4EED2Ev.exit, %_ZN4llvm11SmallVectorIPNS_5ValueELj6EEC2INS_20location_op_iteratorEEERKNS_14iterator_rangeIT_EE.exit
  %i.gf = load ptr, ptr %3, align 8, !tbaa !54    ; 2 uses
  %i.gg = icmp eq ptr %i.gf, %i.cd
  br i1 %i.gg, label %_ZN4llvm11SmallVectorIPNS_5ValueELj6EED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @free(ptr noundef %i.gf) #34
  br label %_ZN4llvm11SmallVectorIPNS_5ValueELj6EED2Ev.exit

_ZN4llvm11SmallVectorIPNS_5ValueELj6EED2Ev.exit:  ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br label %bb.z

bb.z:                                             ; preds = %_ZN4llvm11SmallVectorIPNS_5ValueELj6EED2Ev.exit, %_ZNK4llvm18RawLocationWrapper14isKillLocationEPKNS_12DIExpressionE.exit.thread
  %i.gh = getelementptr inbounds nuw i8, ptr %.0162, i64 32 ; 2 uses
  %.not76 = icmp eq ptr %i.gh, %i.bz
  br i1 %.not76, label %.loopexit.loopexit, label %bb.i, !llvm.loop !1422

.loopexit.loopexit:                               ; preds = %bb.z
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !410
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 48
  %.pre199 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !1430
  %i.gi = icmp eq ptr %.pre199, null
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %_ZNK4llvm15FunctionVarLocs8locs_endEPKNS_11InstructionE.exit, %bb.a
  %.not77 = phi i1 [ %i.gi, %.loopexit.loopexit ], [ false, %_ZNK4llvm15FunctionVarLocs8locs_endEPKNS_11InstructionE.exit ], [ true, %bb.a ]
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !1458 ; 2 uses
  %.not.i.i = icmp eq ptr %i.gk, null
  br i1 %.not.i.i, label %_ZNK4llvm11Instruction17getDbgRecordRangeEv.exit, label %bb.aa

bb.aa:                                            ; preds = %.loopexit
  %i.gl = call { ptr, ptr } @_ZN4llvm9DbgMarker17getDbgRecordRangeEv(ptr noundef nonnull align 8 dereferenceable(24) %i.gk) #34
  br label %_ZNK4llvm11Instruction17getDbgRecordRangeEv.exit

_ZNK4llvm11Instruction17getDbgRecordRangeEv.exit: ; preds = %.loopexit, %bb.aa
  %.pn.i.i = phi { ptr, ptr } [ %i.gl, %bb.aa ], [ { ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm9DbgMarker14EmptyDbgMarkerE, i64 8), ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm9DbgMarker14EmptyDbgMarkerE, i64 8) }, %.loopexit ] ; 2 uses
  %i.gm = extractvalue { ptr, ptr } %.pn.i.i, 0   ; 2 uses
  %i.gn = extractvalue { ptr, ptr } %.pn.i.i, 1   ; 2 uses
  %.not150182 = icmp eq ptr %i.gm, %i.gn
  br i1 %.not150182, label %._crit_edge, label %.lr.ph184

.lr.ph184:                                        ; preds = %_ZNK4llvm11Instruction17getDbgRecordRangeEv.exit
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 816 ; 5 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.gs = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 984 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 928
  br label %bb.ab

._crit_edge:                                      ; preds = %_ZNK4llvm15SmallPtrSetImplIPKNS_17DbgVariableRecordEE8containsES3_.exit.thread145, %_ZNK4llvm11Instruction17getDbgRecordRangeEv.exit
  ret void

bb.ab:                                            ; preds = %.lr.ph184, %_ZNK4llvm15SmallPtrSetImplIPKNS_17DbgVariableRecordEE8containsES3_.exit.thread145
  %.sroa.0133.0183 = phi ptr [ %i.gm, %.lr.ph184 ], [ %i.lf, %_ZNK4llvm15SmallPtrSetImplIPKNS_17DbgVariableRecordEE8containsES3_.exit.thread145 ] ; 17 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.0133.0183, i64 32
  %i.gw = load i8, ptr %i.gv, align 8, !tbaa !1463
  %i.gx = icmp ne i8 %i.gw, 1
  %.not78151 = icmp eq ptr %.sroa.0133.0183, null
  %.not78 = or i1 %.not78151, %i.gx
  br i1 %.not78, label %.critedge, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gy = load ptr, ptr %i.d, align 8, !tbaa !410, !nonnull !51, !align !346
  %i.gz = getelementptr inbounds nuw i8, ptr %.sroa.0133.0183, i64 40
  %i.ha = call noundef ptr @_ZNK4llvm17DbgRecordParamRefINS_7DILabelEE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.gz) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %i.hb = getelementptr inbounds nuw i8, ptr %.sroa.0133.0183, i64 24
  %.sroa.0.0.copyload.i109 = load ptr, ptr %i.hb, align 8, !tbaa !446
  store ptr %.sroa.0.0.copyload.i109, ptr %7, align 8
  %i.hc = load i32, ptr %i.go, align 8, !tbaa !438
  %i.hd = call noundef ptr @_ZN4llvm12SelectionDAG11getDbgLabelEPNS_7DILabelERKNS_8DebugLocEj(ptr noundef nonnull align 8 dereferenceable(920) %i.gy, ptr noundef %i.ha, ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef %i.hc) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  %i.he = load ptr, ptr %i.d, align 8, !tbaa !410, !nonnull !51, !align !346
  call void @_ZN4llvm12SelectionDAG11AddDbgLabelEPNS_10SDDbgLabelE(ptr noundef nonnull align 8 dereferenceable(920) %i.he, ptr noundef %i.hd) #34
  br label %_ZNK4llvm15SmallPtrSetImplIPKNS_17DbgVariableRecordEE8containsES3_.exit.thread145

.critedge:                                        ; preds = %bb.ab
  br i1 %.not77, label %bb.ad, label %_ZNK4llvm15SmallPtrSetImplIPKNS_17DbgVariableRecordEE8containsES3_.exit.thread145

bb.ad:                                            ; preds = %.critedge
  %i.hf = getelementptr inbounds nuw i8, ptr %.sroa.0133.0183, i64 72
  %i.hg = call noundef ptr @_ZNK4llvm17DbgRecordParamRefINS_15DILocalVariableEE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.hf) #34 ; 6 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.0133.0183, i64 80
  %i.hi = call noundef ptr @_ZNK4llvm17DbgRecordParamRefINS_12DIExpressionEE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.hh) #34 ; 6 uses
  call void @_ZN4llvm19SelectionDAGBuilder21dropDanglingDebugInfoEPKNS_15DILocalVariableEPKNS_12DIExpressionE(ptr noundef nonnull align 8 dereferenceable(992) %0, ptr noundef %i.hg, ptr noundef %i.hi)
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.0133.0183, i64 64
  %i.hk = load i8, ptr %i.hj, align 8, !tbaa !1472
  %i.hl = icmp eq i8 %i.hk, 0
  br i1 %i.hl, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  %i.hm = load ptr, ptr %i.gu, align 8, !tbaa !469, !nonnull !51, !align !346 ; 3 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 824 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hm, i64 840
  %i.hp = load i8, ptr %i.ho, align 8, !tbaa !49, !range !50, !noundef !51
  %i.hq = trunc nuw i8 %i.hp to i1
  br i1 %i.hq, label %bb.af, label %_ZNK4llvm15SmallPtrSetImplIPKNS_17DbgVariableRecordEE8containsES3_.exit

bb.af:                                            ; preds = %bb.ae
  %i.hr = load ptr, ptr %i.hn, align 8, !tbaa !52 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hm, i64 836
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !583 ; 2 uses
  %i.hu = zext i32 %i.ht to i64
  %.idx.i.i = shl nuw nsw i64 %i.hu, 3
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hr, i64 %.idx.i.i
  %.not17.i.i = icmp eq i32 %i.ht, 0
  br i1 %.not17.i.i, label %_ZNK4llvm15SmallPtrSetImplIPKNS_17DbgVariableRecordEE8containsES3_.exit.thread, label %.lr.ph.i.i

bb.ag:                                            ; preds = %.lr.ph.i.i
  %i.hw = getelementptr inbounds nuw i8, ptr %.01218.i.i, i64 8 ; 2 uses
  %.not.i.i110 = icmp eq ptr %i.hw, %i.hv
  br i1 %.not.i.i110, label %_ZNK4llvm15SmallPtrSetImplIPKNS_17DbgVariableRecordEE8containsES3_.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.af, %bb.ag
  %.01218.i.i = phi ptr [ %i.hw, %bb.ag ], [ %i.hr, %bb.af ] ; 2 uses
  %i.hx = load ptr, ptr %.01218.i.i, align 8, !tbaa !548
  %.not15.i.i = icmp eq ptr %i.hx, %.sroa.0133.0183
  br i1 %.not15.i.i, label %_ZNK4llvm15SmallPtrSetImplIPKNS_17DbgVariableRecordEE8containsES3_.exit.thread145, label %bb.ag

_ZNK4llvm15SmallPtrSetImplIPKNS_17DbgVariableRecordEE8containsES3_.exit: ; preds = %bb.ae
  %i.hy = call noundef ptr @_ZNK4llvm19SmallPtrSetImplBase6doFindEPKv(ptr noundef nonnull align 8 dereferenceable(17) %i.hn, ptr noundef nonnull %.sroa.0133.0183) #34
  %.not153 = icmp eq ptr %i.hy, null
  br i1 %.not153, label %_ZNK4llvm15SmallPtrSetImplIPKNS_17DbgVariableRecordEE8containsES3_.exit.thread, label %_ZNK4llvm15SmallPtrSetImplIPKNS_17DbgVariableRecordEE8containsES3_.exit.thread145

_ZNK4llvm15SmallPtrSetImplIPKNS_17DbgVariableRecordEE8containsES3_.exit.thread: ; preds = %bb.ag, %bb.af, %_ZNK4llvm15SmallPtrSetImplIPKNS_17DbgVariableRecordEE8containsES3_.exit
  %i.hz = call noundef ptr @_ZNK4llvm17DbgVariableRecord21getVariableLocationOpEj(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.0133.0183, i32 noundef 0) #34
  %i.ia = getelementptr inbounds nuw i8, ptr %.sroa.0133.0183, i64 24
  %.sroa.0.0.copyload.i111 = load ptr, ptr %i.ia, align 8, !tbaa !446
  call void @_ZN4llvm19SelectionDAGBuilder18handleDebugDeclareEPNS_5ValueEPNS_15DILocalVariableEPNS_12DIExpressionENS_8DebugLocE(ptr noundef nonnull align 8 dereferenceable(992) %0, ptr noundef %i.hz, ptr noundef %i.hg, ptr noundef %i.hi, ptr %.sroa.0.0.copyload.i111)
  br label %_ZNK4llvm15SmallPtrSetImplIPKNS_17DbgVariableRecordEE8containsES3_.exit.thread145

bb.ah:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  call void @_ZNK4llvm17DbgVariableRecord12location_opsEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::iterator_range.600") align 8 %9, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.0133.0183) #34
  store ptr %i.gp, ptr %8, align 8, !tbaa !54
  store i32 0, ptr %i.gq, align 8, !tbaa !82
  store i32 4, ptr %i.gr, align 4, !tbaa !77
  %i.ib = load i64, ptr %9, align 8, !noalias !1473 ; 3 uses
  %i.ic = load i64, ptr %i.gs, align 8, !noalias !1474 ; 3 uses
  %.not5.i.i.i = icmp eq i64 %i.ib, %i.ic
  br i1 %.not5.i.i.i, label %_ZN4llvm11SmallVectorIPNS_5ValueELj4EEC2INS_17DbgVariableRecord20location_op_iteratorEEERKNS_14iterator_rangeIT_EE.exit.thread, label %.lr.ph.i.i.i112

_ZN4llvm11SmallVectorIPNS_5ValueELj4EEC2INS_17DbgVariableRecord20location_op_iteratorEEERKNS_14iterator_rangeIT_EE.exit.thread: ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  br label %bb.al

.lr.ph.i.i.i112:                                  ; preds = %bb.ah, %.lr.ph.i.i.i112
  %.sroa.01.0.copyload.i.i7.i.i.i = phi i64 [ %storemerge.i.i.i.i113, %.lr.ph.i.i.i112 ], [ %i.ib, %bb.ah ] ; 2 uses
  %.06.i.i.i = phi i64 [ %i.im, %.lr.ph.i.i.i112 ], [ 0, %bb.ah ] ; 2 uses
  %i.id = and i64 %.sroa.01.0.copyload.i.i7.i.i.i, 4
  %i.ie = icmp ne i64 %i.id, 0
  %i.if = and i64 %.sroa.01.0.copyload.i.i7.i.i.i, -5 ; 2 uses
  %i.ig = inttoptr i64 %i.if to ptr               ; 2 uses
  %.not3.i.i.i.i = icmp eq i64 %i.if, 0
  %.not.i.i.i.i = or i1 %i.ie, %.not3.i.i.i.i
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 144
  %i.ii = ptrtoint ptr %i.ih to i64
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %i.ik = ptrtoint ptr %i.ij to i64
  %i.il = or disjoint i64 %i.ik, 4
  %storemerge.i.i.i.i113 = select i1 %.not.i.i.i.i, i64 %i.il, i64 %i.ii ; 2 uses
  %i.im = add nuw nsw i64 %.06.i.i.i, 1           ; 3 uses
end_hunk_0
