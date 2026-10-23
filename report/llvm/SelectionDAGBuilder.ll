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
  %.sroa.01.0.copyload.i.i4.i.i.i.i.i.i.i = phi i64 [ %storemerge.i.i.i.i.i.i.i.i.a, %bb.n ], [ %i.dc, %_ZNK4llvm18RawLocationWrapper25getNumVariableLocationOpsEv.exit.thread.i ] ; 5 uses
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
  %storemerge.v.i.i.i.i.i.i.i.i = select i1 %i.df, i64 144, i64 8
  %storemerge.i.i.i.i.i.i.i.i.a = add nuw i64 %storemerge.v.i.i.i.i.i.i.i.i, %.sroa.01.0.copyload.i.i4.i.i.i.i.i.i.i ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %storemerge.i.i.i.i.i.i.i.i.a, %i.dd
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
  %.sroa.01.0.copyload.i.i6.i.i.i = phi i64 [ %storemerge.i.i.i.i.a, %.lr.ph.i.i.i85 ], [ %i.dw, %bb.o ] ; 2 uses
  %.05.i.i.i = phi i64 [ %i.ea, %.lr.ph.i.i.i85 ], [ 0, %bb.o ] ; 2 uses
  %i.dy = and i64 %.sroa.01.0.copyload.i.i6.i.i.i, 4
  %i.dz = icmp eq i64 %i.dy, 0
  %storemerge.v.i.i.i.i = select i1 %i.dz, i64 144, i64 8
  %storemerge.i.i.i.i.a = add nuw i64 %storemerge.v.i.i.i.i, %.sroa.01.0.copyload.i.i6.i.i.i ; 2 uses
  %i.ea = add nuw nsw i64 %.05.i.i.i, 1           ; 3 uses
  %.not.i.i.i = icmp eq i64 %storemerge.i.i.i.i.a, %i.dx
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
  %.sroa.02.0.i.i.i.i.i.i.i.i.i = phi i64 [ %storemerge.i.i.i.i.i.i.i.i.i.i.i.a, %_ZN4llvm20location_op_iteratordeEv.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.dw, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i ] ; 4 uses
  %.07.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.en, %_ZN4llvm20location_op_iteratordeEv.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.ed, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i ] ; 2 uses
  %i.ee = and i64 %.sroa.02.0.i.i.i.i.i.i.i.i.i, 4
  %i.ef = icmp eq i64 %i.ee, 0
  br i1 %i.ef, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.eg = inttoptr i64 %.sroa.02.0.i.i.i.i.i.i.i.i.i to ptr
  br label %_ZN4llvm20location_op_iteratordeEv.exit.i.i.i.i.i.i.i.i.i.i

bb.r:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.eh = and i64 %.sroa.02.0.i.i.i.i.i.i.i.i.i, -5
  %i.ei = inttoptr i64 %i.eh to ptr
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !1452
  br label %_ZN4llvm20location_op_iteratordeEv.exit.i.i.i.i.i.i.i.i.i.i

_ZN4llvm20location_op_iteratordeEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.r, %bb.q
  %storemerge.v.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 144, %bb.q ], [ 8, %bb.r ]
  %i.ek = phi ptr [ %i.eg, %bb.q ], [ %i.ej, %bb.r ]
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 136
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !572
  store ptr %i.em, ptr %.07.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !448
  %i.en = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i.i, i64 8
  %storemerge.i.i.i.i.i.i.i.i.i.i.i.a = add nuw i64 %storemerge.v.i.i.i.i.i.i.i.i.i.i.i, %.sroa.02.0.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %storemerge.i.i.i.i.i.i.i.i.i.i.i.a, %i.dx
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
  %.sroa.01.0.copyload.i.i6.i.i.i88 = phi i64 [ %storemerge.i.i.i.i91, %.lr.ph.i.i.i87 ], [ %i.fa, %bb.s ] ; 2 uses
  %.05.i.i.i89 = phi i64 [ %i.fe, %.lr.ph.i.i.i87 ], [ 0, %bb.s ] ; 2 uses
  %i.fc = and i64 %.sroa.01.0.copyload.i.i6.i.i.i88, 4
  %i.fd = icmp eq i64 %i.fc, 0
  %storemerge.v.i.i.i.i90 = select i1 %i.fd, i64 144, i64 8
  %storemerge.i.i.i.i91 = add nuw i64 %storemerge.v.i.i.i.i90, %.sroa.01.0.copyload.i.i6.i.i.i88 ; 2 uses
  %i.fe = add nuw nsw i64 %.05.i.i.i89, 1         ; 3 uses
  %.not.i.i.i92 = icmp eq i64 %storemerge.i.i.i.i91, %i.fb
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
  %.sroa.02.0.i.i.i.i.i.i.i.i.i98 = phi i64 [ %storemerge.i.i.i.i.i.i.i.i.i.i.i102, %_ZN4llvm20location_op_iteratordeEv.exit.i.i.i.i.i.i.i.i.i.i100 ], [ %i.fa, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i94 ] ; 4 uses
  %.07.i.i.i.i.i.i.i.i.i.i99 = phi ptr [ %i.fr, %_ZN4llvm20location_op_iteratordeEv.exit.i.i.i.i.i.i.i.i.i.i100 ], [ %i.fh, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i94 ] ; 2 uses
  %i.fi = and i64 %.sroa.02.0.i.i.i.i.i.i.i.i.i98, 4
  %i.fj = icmp eq i64 %i.fi, 0
  br i1 %i.fj, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i97
  %i.fk = inttoptr i64 %.sroa.02.0.i.i.i.i.i.i.i.i.i98 to ptr
  br label %_ZN4llvm20location_op_iteratordeEv.exit.i.i.i.i.i.i.i.i.i.i100

bb.v:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i97
  %i.fl = and i64 %.sroa.02.0.i.i.i.i.i.i.i.i.i98, -5
  %i.fm = inttoptr i64 %i.fl to ptr
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !1452
  br label %_ZN4llvm20location_op_iteratordeEv.exit.i.i.i.i.i.i.i.i.i.i100

_ZN4llvm20location_op_iteratordeEv.exit.i.i.i.i.i.i.i.i.i.i100: ; preds = %bb.v, %bb.u
  %storemerge.v.i.i.i.i.i.i.i.i.i.i.i101 = phi i64 [ 144, %bb.u ], [ 8, %bb.v ]
  %i.fo = phi ptr [ %i.fk, %bb.u ], [ %i.fn, %bb.v ]
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 136
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !572
  store ptr %i.fq, ptr %.07.i.i.i.i.i.i.i.i.i.i99, align 8, !tbaa !448
  %i.fr = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i.i99, i64 8
  %storemerge.i.i.i.i.i.i.i.i.i.i.i102 = add nuw i64 %storemerge.v.i.i.i.i.i.i.i.i.i.i.i101, %.sroa.02.0.i.i.i.i.i.i.i.i.i98 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i103 = icmp eq i64 %storemerge.i.i.i.i.i.i.i.i.i.i.i102, %i.fb
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
begin_hunk_1_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10AllocaInstEiNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E8moveFromERSA_:bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !73
  store i32 %i.aw, ptr %i.au, align 8, !tbaa !73
  %i.ax = shl nuw i32 1, %.lcssa.i
  %i.ay = load i32, ptr %i.as, align 4, !tbaa !73
  %i.az = or i32 %i.ay, %i.ax
  store i32 %i.az, ptr %i.as, align 4, !tbaa !73
  %i.ba = add i32 %.0.i14, -1
  %i.bb = and i32 %i.ba, %.0.i14                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bb, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !2943

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10AllocaInstEiNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E8moveFromERSA_ENKUljE_clEj.exit, %.lr.ph18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10AllocaInstEiNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_iEEEES7_iS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph18, !llvm.loop !2944

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10AllocaInstEiNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_iEEEES7_iS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !608
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10AllocaInstEiNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_iEEEES7_iS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10AllocaInstEiNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_iEEEES7_iS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10AllocaInstEiNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_iEEEES7_iS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bc = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10AllocaInstEiNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_iEEEES7_iS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !1290
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.be, ptr %i.bf, align 8, !tbaa !1290
  %i.bg = icmp eq i32 %i.bc, 0
  br i1 %i.bg, label %_ZN4llvm8DenseMapIPKNS_10AllocaInstEiNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10AllocaInstEiNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_iEEEES7_iS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.bh = zext i32 %i.bc to i64                   ; 2 uses
  %i.bi = shl nuw nsw i64 %i.bh, 4
  %i.bj = add nuw nsw i64 %i.bh, 31
  %i.bk = lshr i64 %i.bj, 3
  %i.bl = and i64 %i.bk, 1073741820
  %i.bm = add nuw nsw i64 %i.bl, %i.bi
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bm, i64 noundef 8) #34
  store i32 0, ptr %i.d, align 4, !tbaa !608
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPKNS_10AllocaInstEiNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEE4killEv.exit

_ZN4llvm8DenseMapIPKNS_10AllocaInstEiNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_iEEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_10AllocaInstEiNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_iEEEES7_iS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EE17_M_realloc_insertIJRPNS0_5ValueENS0_7SDValueEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(12) %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1083 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !1081   ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #36
  unreachable

_ZNKSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 56                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 164703072086692425)
  %i.l = select i1 %i.j, i64 164703072086692425, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 56
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #37 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 8 uses
  %i.r = load ptr, ptr %2, align 8, !tbaa !448    ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %3, align 8, !tbaa !202
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.2.0.copyload.i = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !73
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !554  ; 2 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !1104
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %.sroa.0.0.copyload.i, ptr %i.u, align 8, !tbaa !202
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i32 %.sroa.2.0.copyload.i, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !73
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr %i.t, ptr %i.v, align 8, !tbaa !1105
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store ptr %i.t, ptr %i.w, align 8, !tbaa !1106
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store i16 0, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 43
  store i8 0, ptr %i.y, align 1, !tbaa !1182
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  store ptr null, ptr %i.z, align 8, !tbaa !1107
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.0911.i.i.i, i64 56, i1 false), !alias.scope !2951
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aa, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !18

_ZNSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.ab, %.lr.ph.i.i.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 56 ; 2 uses
  %.not10.i.i.i17 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i17, label %_ZNSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit23, label %.lr.ph.i.i.i18

.lr.ph.i.i.i18:                                   ; preds = %_ZNSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %.lr.ph.i.i.i18
  %.012.i.i.i19 = phi ptr [ %i.ae, %.lr.ph.i.i.i18 ], [ %i.ac, %_ZNSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 2 uses
  %.0911.i.i.i20 = phi ptr [ %i.ad, %.lr.ph.i.i.i18 ], [ %1, %_ZNSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.012.i.i.i19, ptr noundef nonnull align 8 dereferenceable(56) %.0911.i.i.i20, i64 56, i1 false), !alias.scope !2952
  %i.ad = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 56 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 56 ; 2 uses
  %.not.i.i.i21 = icmp eq ptr %i.ad, %i.b
  br i1 %.not.i.i.i21, label %_ZNSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit23, label %.lr.ph.i.i.i18, !llvm.loop !18

_ZNSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit23: ; preds = %.lr.ph.i.i.i18, %_ZNSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i22 = phi ptr [ %i.ac, %_ZNSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.ae, %.lr.ph.i.i.i18 ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i24 = icmp eq ptr %i.c, null
  br i1 %.not.i24, label %_ZNSt12_Vector_baseIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit23
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1082
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.ah, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ai) #38
  br label %_ZNSt12_Vector_baseIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN4llvm18TargetLoweringBase12ArgListEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit23, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !1081
  store ptr %.0.lcssa.i.i.i22, ptr %i.a, align 8, !tbaa !1083
  %i.aj = getelementptr inbounds nuw [56 x i8], ptr %i.p, i64 %i.l
  store ptr %i.aj, ptr %i.af, align 8, !tbaa !1082
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc void @_ZN4llvm23SmallVectorTemplateBaseIZNS_19SelectionDAGBuilder18visitIntrinsicCallERKNS_8CallInstEjE18BranchFunnelTargetLb1EE15growAndPushBackERKS5_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #19 align 2 {
bb.a:
  %2 = alloca %struct.BranchFunnelTarget, align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !1229
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !82
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 24) #34
  %.val = load ptr, ptr %0, align 8, !tbaa !54
  %.val2 = load i32, ptr %i.a, align 8, !tbaa !82
  %i.f = zext i32 %.val2 to i64
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %i.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.h = load i32, ptr %i.a, align 8, !tbaa !82
  %i.i = add i32 %i.h, 1
  store i32 %i.i, ptr %i.a, align 8, !tbaa !82
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__introsort_loopIPZN4llvm19SelectionDAGBuilder18visitIntrinsicCallERKNS0_8CallInstEjE18BranchFunnelTargetlN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_18visitIntrinsicCallES4_jE3$_1EEEvT_SC_T0_T1_"(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #27 {
bb.a:
  %3 = alloca %struct.BranchFunnelTarget, align 8 ; 4 uses
  %4 = alloca %struct.BranchFunnelTarget, align 8 ; 4 uses
  %5 = alloca %struct.BranchFunnelTarget, align 8 ; 4 uses
  %6 = alloca %struct.BranchFunnelTarget, align 8 ; 4 uses
  %7 = alloca %struct.BranchFunnelTarget, align 8 ; 4 uses
  %8 = alloca %struct.BranchFunnelTarget, align 8 ; 4 uses
  %9 = alloca %struct.BranchFunnelTarget, align 8 ; 4 uses
  %.sroa.4.i.i5.i = alloca %"class.llvm::SDValue", align 8 ; 4 uses
  %.sroa.4.i.i.i = alloca %"class.llvm::SDValue", align 8 ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 3 uses
  %i.d = icmp sgt i64 %i.c, 384
  br i1 %i.d, label %.lr.ph, label %"_ZSt14__partial_sortIPZN4llvm19SelectionDAGBuilder18visitIntrinsicCallERKNS0_8CallInstEjE18BranchFunnelTargetN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_18visitIntrinsicCallES4_jE3$_1EEEvT_SC_SC_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph42

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIPZN4llvm19SelectionDAGBuilder18visitIntrinsicCallERKNS0_8CallInstEjE18BranchFunnelTargetN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_18visitIntrinsicCallES4_jE3$_1EEET_SC_SC_T0_.exit"
  %i.g = icmp eq i64 %i.bq, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph42, !llvm.loop !2953

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa38 = phi i64 [ %i.c, %.lr.ph ], [ %i.ce, %bb.b ]
  %.025.lcssa = phi ptr [ %1, %.lr.ph ], [ %.1.i.i, %bb.b ]
  %i.h = udiv exact i64 %.lcssa38, 24             ; 3 uses
  %i.i = add nsw i64 %i.h, -2                     ; 2 uses
  %i.j = lshr i64 %i.i, 1                         ; 3 uses
  %i.k = add nsw i64 %i.h, -1
  %i.l = lshr i64 %i.k, 1                         ; 2 uses
  %i.m = and i64 %i.h, 1
  %i.n = icmp eq i64 %i.m, 0
  %10 = or disjoint i64 %i.i, 1                   ; 2 uses
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %10
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.j
  br label %bb.c

bb.c:                                             ; preds = %"_ZSt13__adjust_heapIPZN4llvm19SelectionDAGBuilder18visitIntrinsicCallERKNS0_8CallInstEjE18BranchFunnelTargetlS5_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_18visitIntrinsicCallES4_jE3$_1EEEvT_T0_SD_T1_T2_.exit.i.i.i", %._crit_edge
  %.013.i.i.i = phi i64 [ %i.j, %._crit_edge ], [ %i.aj, %"_ZSt13__adjust_heapIPZN4llvm19SelectionDAGBuilder18visitIntrinsicCallERKNS0_8CallInstEjE18BranchFunnelTargetlS5_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_18visitIntrinsicCallES4_jE3$_1EEEvT_T0_SD_T1_T2_.exit.i.i.i" ] ; 8 uses
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.013.i.i.i ; 2 uses
  %.sroa.02.0.copyload.i.i.i = load i64, ptr %i.q, align 8, !tbaa !66 ; 2 uses
  %.sroa.43.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.43.0..sroa_idx.i.i.i, i64 16, i1 false)
  %i.r = icmp slt i64 %.013.i.i.i, %i.l
  br i1 %i.r, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.033.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.013.i.i.i, %bb.c ] ; 2 uses
  %i.s = shl i64 %.033.i.i.i.i, 1                 ; 3 uses
  %i.t = add i64 %i.s, 2                          ; 2 uses
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.t
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.s
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %.val.i.i.i.i = load i64, ptr %i.u, align 8, !tbaa !1225
  %.val28.i.i.i.i = load i64, ptr %i.w, align 8, !tbaa !1225
  %i.x = icmp slt i64 %.val.i.i.i.i, %.val28.i.i.i.i
  %i.y = or disjoint i64 %i.s, 1
  %spec.select.i.i.i.i = select i1 %i.x, i64 %i.y, i64 %i.t ; 4 uses
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.033.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false), !tbaa.struct !1229
  %i.ab = icmp slt i64 %spec.select.i.i.i.i, %i.l
  br i1 %i.ab, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !2954

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i = phi i64 [ %.013.i.i.i, %bb.c ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.ac = icmp eq i64 %.0.lcssa.i.i.i.i, %i.j
  %or.cond.i.i.i = select i1 %i.n, i1 %i.ac, i1 false
  br i1 %or.cond.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !tbaa.struct !1229
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i
  %.127.i.i.i.i = phi i64 [ %10, %bb.d ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.ad = icmp samesign ugt i64 %.127.i.i.i.i, %.013.i.i.i
  br i1 %i.ad, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIPZN4llvm19SelectionDAGBuilder18visitIntrinsicCallERKNS0_8CallInstEjE18BranchFunnelTargetlS5_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_18visitIntrinsicCallES4_jE3$_1EEEvT_T0_SD_T1_T2_.exit.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %bb.f
  %.0133.i.i.i.i.i = phi i64 [ %.048.i.i.i.i.i, %bb.f ], [ %.127.i.i.i.i, %bb.e ] ; 3 uses
  %.04.in.i.i.i.i.i = add nsw i64 %.0133.i.i.i.i.i, -1
  %.048.i.i.i.i.i = lshr i64 %.04.in.i.i.i.i.i, 1 ; 4 uses
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.048.i.i.i.i.i ; 2 uses
  %.val.i.i.i.i.i = load i64, ptr %i.ae, align 8, !tbaa !1225
  %i.af = icmp slt i64 %.val.i.i.i.i.i, %.sroa.02.0.copyload.i.i.i
  br i1 %i.af, label %bb.f, label %"_ZSt13__adjust_heapIPZN4llvm19SelectionDAGBuilder18visitIntrinsicCallERKNS0_8CallInstEjE18BranchFunnelTargetlS5_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_18visitIntrinsicCallES4_jE3$_1EEEvT_T0_SD_T1_T2_.exit.i.i.i"

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.0133.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false), !tbaa.struct !1229
  %i.ah = icmp samesign ugt i64 %.048.i.i.i.i.i, %.013.i.i.i
  br i1 %i.ah, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIPZN4llvm19SelectionDAGBuilder18visitIntrinsicCallERKNS0_8CallInstEjE18BranchFunnelTargetlS5_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_18visitIntrinsicCallES4_jE3$_1EEEvT_T0_SD_T1_T2_.exit.i.i.i", !llvm.loop !2955

"_ZSt13__adjust_heapIPZN4llvm19SelectionDAGBuilder18visitIntrinsicCallERKNS0_8CallInstEjE18BranchFunnelTargetlS5_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_18visitIntrinsicCallES4_jE3$_1EEEvT_T0_SD_T1_T2_.exit.i.i.i": ; preds = %bb.f, %.lr.ph.i.i.i.i.i, %bb.e
  %.013.lcssa.i.i.i.i.i = phi i64 [ %.127.i.i.i.i, %bb.e ], [ %.0133.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.048.i.i.i.i.i, %bb.f ]
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.013.lcssa.i.i.i.i.i ; 2 uses
  store i64 %.sroa.02.0.copyload.i.i.i, ptr %i.ai, align 8, !tbaa !66
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i)
  %.not.i.i.i = icmp eq i64 %.013.i.i.i, 0
  %i.aj = add nsw i64 %.013.i.i.i, -1
  br i1 %.not.i.i.i, label %.lr.ph.i6.i, label %bb.c, !llvm.loop !2956

.lr.ph.i6.i:                                      ; preds = %"_ZSt13__adjust_heapIPZN4llvm19SelectionDAGBuilder18visitIntrinsicCallERKNS0_8CallInstEjE18BranchFunnelTargetlS5_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_18visitIntrinsicCallES4_jE3$_1EEEvT_T0_SD_T1_T2_.exit.i.i.i", %"_ZSt10__pop_heapIPZN4llvm19SelectionDAGBuilder18visitIntrinsicCallERKNS0_8CallInstEjE18BranchFunnelTargetN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_18visitIntrinsicCallES4_jE3$_1EEEvT_SC_SC_RT0_.exit.i19.i"
  %.01.i.i = phi ptr [ %i.ak, %"_ZSt10__pop_heapIPZN4llvm19SelectionDAGBuilder18visitIntrinsicCallERKNS0_8CallInstEjE18BranchFunnelTargetN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_18visitIntrinsicCallES4_jE3$_1EEEvT_SC_SC_RT0_.exit.i19.i" ], [ %.025.lcssa, %"_ZSt13__adjust_heapIPZN4llvm19SelectionDAGBuilder18visitIntrinsicCallERKNS0_8CallInstEjE18BranchFunnelTargetlS5_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_18visitIntrinsicCallES4_jE3$_1EEEvT_T0_SD_T1_T2_.exit.i.i.i" ] ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %.01.i.i, i64 -24 ; 4 uses
  %.sroa.02.0.copyload.i.i7.i = load i64, ptr %i.ak, align 8, !tbaa !66 ; 2 uses
  %.sroa.43.0..sroa_idx.i.i8.i = getelementptr inbounds i8, ptr %.01.i.i, i64 -16
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i5.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i5.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.43.0..sroa_idx.i.i8.i, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !1229
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = sub i64 %i.al, %i.a                     ; 3 uses
  %i.an = sdiv exact i64 %i.am, 24                ; 3 uses
  %i.ao = add nsw i64 %i.an, -1
  %i.ap = sdiv i64 %i.ao, 2
  %i.aq = icmp sgt i64 %i.am, 48
  br i1 %i.aq, label %.lr.ph.i.i.i24.i, label %._crit_edge.i.i.i9.i

.lr.ph.i.i.i24.i:                                 ; preds = %.lr.ph.i6.i, %.lr.ph.i.i.i24.i
  %.033.i.i.i25.i = phi i64 [ %spec.select.i.i.i28.i, %.lr.ph.i.i.i24.i ], [ 0, %.lr.ph.i6.i ] ; 2 uses
  %i.ar = shl i64 %.033.i.i.i25.i, 1              ; 3 uses
  %i.as = add i64 %i.ar, 2                        ; 2 uses
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.as
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.ar
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %.val.i.i.i26.i = load i64, ptr %i.at, align 8, !tbaa !1225
  %.val28.i.i.i27.i = load i64, ptr %i.av, align 8, !tbaa !1225
  %i.aw = icmp slt i64 %.val.i.i.i26.i, %.val28.i.i.i27.i
  %i.ax = or disjoint i64 %i.ar, 1
  %spec.select.i.i.i28.i = select i1 %i.aw, i64 %i.ax, i64 %i.as ; 4 uses
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %spec.select.i.i.i28.i
  %i.az = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.033.i.i.i25.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.az, ptr noundef nonnull align 8 dereferenceable(24) %i.ay, i64 24, i1 false), !tbaa.struct !1229
  %i.ba = icmp slt i64 %spec.select.i.i.i28.i, %i.ap
  br i1 %i.ba, label %.lr.ph.i.i.i24.i, label %._crit_edge.i.i.i9.i, !llvm.loop !2954

._crit_edge.i.i.i9.i:                             ; preds = %.lr.ph.i.i.i24.i, %.lr.ph.i6.i
  %.0.lcssa.i.i.i10.i = phi i64 [ 0, %.lr.ph.i6.i ], [ %spec.select.i.i.i28.i, %.lr.ph.i.i.i24.i ] ; 5 uses
  %i.bb = and i64 %i.an, 1
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i9.i
  %i.bd = add nsw i64 %i.an, -2
  %i.be = ashr exact i64 %i.bd, 1
  %i.bf = icmp eq i64 %.0.lcssa.i.i.i10.i, %i.be
  br i1 %i.bf, label %.thread.i.i23.i, label %bb.h

.thread.i.i23.i:                                  ; preds = %bb.g
  %i.bg = shl nuw nsw i64 %.0.lcssa.i.i.i10.i, 1
  %i.bh = or disjoint i64 %i.bg, 1                ; 2 uses
  %i.bi = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.bh
  %i.bj = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.0.lcssa.i.i.i10.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef nonnull align 8 dereferenceable(24) %i.bi, i64 24, i1 false), !tbaa.struct !1229
  br label %.lr.ph.i.i.i.i14.i.preheader

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i9.i
  %.not.i.i11.i = icmp eq i64 %.0.lcssa.i.i.i10.i, 0
  br i1 %.not.i.i11.i, label %"_ZSt10__pop_heapIPZN4llvm19SelectionDAGBuilder18visitIntrinsicCallERKNS0_8CallInstEjE18BranchFunnelTargetN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_18visitIntrinsicCallES4_jE3$_1EEEvT_SC_SC_RT0_.exit.i19.i", label %.lr.ph.i.i.i.i14.i.preheader

.lr.ph.i.i.i.i14.i.preheader:                     ; preds = %bb.h, %.thread.i.i23.i
  %.0133.i.i.i.i15.i.ph = phi i64 [ %.0.lcssa.i.i.i10.i, %bb.h ], [ %i.bh, %.thread.i.i23.i ]
  br label %.lr.ph.i.i.i.i14.i

.lr.ph.i.i.i.i14.i:                               ; preds = %.lr.ph.i.i.i.i14.i.preheader, %bb.i
  %.0133.i.i.i.i15.i = phi i64 [ %.048.i.i.i.i17.i, %bb.i ], [ %.0133.i.i.i.i15.i.ph, %.lr.ph.i.i.i.i14.i.preheader ] ; 3 uses
  %.04.in.i.i.i.i16.i = add nsw i64 %.0133.i.i.i.i15.i, -1
  %.048.i.i.i.i17.i = lshr i64 %.04.in.i.i.i.i16.i, 1 ; 3 uses
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.048.i.i.i.i17.i ; 2 uses
  %.val.i.i.i.i18.i = load i64, ptr %i.bk, align 8, !tbaa !1225
  %i.bl = icmp slt i64 %.val.i.i.i.i18.i, %.sroa.02.0.copyload.i.i7.i
  br i1 %i.bl, label %bb.i, label %"_ZSt10__pop_heapIPZN4llvm19SelectionDAGBuilder18visitIntrinsicCallERKNS0_8CallInstEjE18BranchFunnelTargetN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_18visitIntrinsicCallES4_jE3$_1EEEvT_SC_SC_RT0_.exit.i19.i"

bb.i:                                             ; preds = %.lr.ph.i.i.i.i14.i
  %i.bm = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.0133.i.i.i.i15.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, ptr noundef nonnull align 8 dereferenceable(24) %i.bk, i64 24, i1 false), !tbaa.struct !1229
  %.not4.i.i22.i = icmp eq i64 %.048.i.i.i.i17.i, 0
  br i1 %.not4.i.i22.i, label %"_ZSt10__pop_heapIPZN4llvm19SelectionDAGBuilder18visitIntrinsicCallERKNS0_8CallInstEjE18BranchFunnelTargetN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_18visitIntrinsicCallES4_jE3$_1EEEvT_SC_SC_RT0_.exit.i19.i", label %.lr.ph.i.i.i.i14.i, !llvm.loop !2955

"_ZSt10__pop_heapIPZN4llvm19SelectionDAGBuilder18visitIntrinsicCallERKNS0_8CallInstEjE18BranchFunnelTargetN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_18visitIntrinsicCallES4_jE3$_1EEEvT_SC_SC_RT0_.exit.i19.i": ; preds = %bb.i, %.lr.ph.i.i.i.i14.i, %bb.h
  %.013.lcssa.i.i.i.i20.i = phi i64 [ 0, %bb.h ], [ %.0133.i.i.i.i15.i, %.lr.ph.i.i.i.i14.i ], [ 0, %bb.i ]
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.013.lcssa.i.i.i.i20.i ; 2 uses
  store i64 %.sroa.02.0.copyload.i.i7.i, ptr %i.bn, align 8, !tbaa !66
  %.sroa.5.0..sroa_idx.i.i.i21.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i.i21.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i5.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i5.i)
  %i.bo = icmp sgt i64 %i.am, 24
  br i1 %i.bo, label %.lr.ph.i6.i, label %"_ZSt14__partial_sortIPZN4llvm19SelectionDAGBuilder18visitIntrinsicCallERKNS0_8CallInstEjE18BranchFunnelTargetN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_18visitIntrinsicCallES4_jE3$_1EEEvT_SC_SC_T0_.exit", !llvm.loop !2957

.lr.ph42:                                         ; preds = %.lr.ph, %bb.b
  %.0172441 = phi i64 [ %i.bq, %bb.b ], [ %2, %.lr.ph ]
  %.02540 = phi ptr [ %.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %i.bp = phi i64 [ %i.ce, %bb.b ], [ %i.c, %.lr.ph ]
  %i.bq = add nsw i64 %.0172441, -1               ; 3 uses
  %i.br = udiv i64 %i.bp, 48
  %i.bs = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.br ; 5 uses
  %i.bt = getelementptr inbounds i8, ptr %.02540, i64 -24 ; 5 uses
  %.val29.i.i = load i64, ptr %i.e, align 8, !tbaa !1225 ; 3 uses
  %.val30.i.i = load i64, ptr %i.bs, align 8, !tbaa !1225 ; 3 uses
  %i.bu = icmp slt i64 %.val29.i.i, %.val30.i.i
  %.val28.i.i = load i64, ptr %i.bt, align 8, !tbaa !1225 ; 4 uses
  br i1 %i.bu, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.lr.ph42
  %i.bv = icmp slt i64 %.val30.i.i, %.val28.i.i
  br i1 %i.bv, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !1229
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.bs, i64 24, i1 false), !tbaa.struct !1229
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bs, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false), !tbaa.struct !1229
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %"_ZSt22__move_median_to_firstIPZN4llvm19SelectionDAGBuilder18visitIntrinsicCallERKNS0_8CallInstEjE18BranchFunnelTargetN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_18visitIntrinsicCallES4_jE3$_1EEEvT_SC_SC_SC_T0_.exit.i.preheader"

bb.l:                                             ; preds = %bb.j
  %i.bw = icmp slt i64 %.val29.i.i, %.val28.i.i
  br i1 %i.bw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !1229
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.bt, i64 24, i1 false), !tbaa.struct !1229
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bt, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !1229
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %"_ZSt22__move_median_to_firstIPZN4llvm19SelectionDAGBuilder18visitIntrinsicCallERKNS0_8CallInstEjE18BranchFunnelTargetN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_18visitIntrinsicCallES4_jE3$_1EEEvT_SC_SC_SC_T0_.exit.i.preheader"

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !1229
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !tbaa.struct !1229
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !1229
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %"_ZSt22__move_median_to_firstIPZN4llvm19SelectionDAGBuilder18visitIntrinsicCallERKNS0_8CallInstEjE18BranchFunnelTargetN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_18visitIntrinsicCallES4_jE3$_1EEEvT_SC_SC_SC_T0_.exit.i.preheader"

bb.o:                                             ; preds = %.lr.ph42
  %i.bx = icmp slt i64 %.val29.i.i, %.val28.i.i
  br i1 %i.bx, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !1229
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !tbaa.struct !1229
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !1229
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %"_ZSt22__move_median_to_firstIPZN4llvm19SelectionDAGBuilder18visitIntrinsicCallERKNS0_8CallInstEjE18BranchFunnelTargetN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_18visitIntrinsicCallES4_jE3$_1EEEvT_SC_SC_SC_T0_.exit.i.preheader"

bb.q:                                             ; preds = %bb.o
  %i.by = icmp slt i64 %.val30.i.i, %.val28.i.i
  br i1 %i.by, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !1229
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.bt, i64 24, i1 false), !tbaa.struct !1229
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bt, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !1229
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %"_ZSt22__move_median_to_firstIPZN4llvm19SelectionDAGBuilder18visitIntrinsicCallERKNS0_8CallInstEjE18BranchFunnelTargetN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_18visitIntrinsicCallES4_jE3$_1EEEvT_SC_SC_SC_T0_.exit.i.preheader"

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !1229
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.bs, i64 24, i1 false), !tbaa.struct !1229
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bs, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !1229
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %"_ZSt22__move_median_to_firstIPZN4llvm19SelectionDAGBuilder18visitIntrinsicCallERKNS0_8CallInstEjE18BranchFunnelTargetN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_18visitIntrinsicCallES4_jE3$_1EEEvT_SC_SC_SC_T0_.exit.i.preheader"

"_ZSt22__move_median_to_firstIPZN4llvm19SelectionDAGBuilder18visitIntrinsicCallERKNS0_8CallInstEjE18BranchFunnelTargetN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_18visitIntrinsicCallES4_jE3$_1EEEvT_SC_SC_SC_T0_.exit.i.preheader": ; preds = %bb.s, %bb.r, %bb.p, %bb.n, %bb.m, %bb.k
  br label %"_ZSt22__move_median_to_firstIPZN4llvm19SelectionDAGBuilder18visitIntrinsicCallERKNS0_8CallInstEjE18BranchFunnelTargetN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_18visitIntrinsicCallES4_jE3$_1EEEvT_SC_SC_SC_T0_.exit.i"

"_ZSt22__move_median_to_firstIPZN4llvm19SelectionDAGBuilder18visitIntrinsicCallERKNS0_8CallInstEjE18BranchFunnelTargetN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_18visitIntrinsicCallES4_jE3$_1EEEvT_SC_SC_SC_T0_.exit.i": ; preds = %"_ZSt22__move_median_to_firstIPZN4llvm19SelectionDAGBuilder18visitIntrinsicCallERKNS0_8CallInstEjE18BranchFunnelTargetN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_18visitIntrinsicCallES4_jE3$_1EEEvT_SC_SC_SC_T0_.exit.i.preheader", %bb.v
  %.013.i.i = phi ptr [ %.114.i.i, %bb.v ], [ %.02540, %"_ZSt22__move_median_to_firstIPZN4llvm19SelectionDAGBuilder18visitIntrinsicCallERKNS0_8CallInstEjE18BranchFunnelTargetN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_18visitIntrinsicCallES4_jE3$_1EEEvT_SC_SC_SC_T0_.exit.i.preheader" ]
  %.0.i.i = phi ptr [ %i.ca, %bb.v ], [ %i.e, %"_ZSt22__move_median_to_firstIPZN4llvm19SelectionDAGBuilder18visitIntrinsicCallERKNS0_8CallInstEjE18BranchFunnelTargetN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_18visitIntrinsicCallES4_jE3$_1EEEvT_SC_SC_SC_T0_.exit.i.preheader" ]
end_hunk_1
