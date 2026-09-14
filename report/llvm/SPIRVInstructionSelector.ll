Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SPIRVInstructionSelector?download=true
inline.NumInlined: 7483
inline.NumDeleted: 2064
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK4llvm19SPIRVGlobalRegistry29retrieveScalarOrVectorIntTypeENS_13SPIRVTypeInstE
declare ptr @_ZNK4llvm19SPIRVGlobalRegistry29retrieveScalarOrVectorIntTypeENS_13SPIRVTypeInstE(ptr noundef nonnull align 8 dereferenceable(1416), ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_124SPIRVInstructionSelector19handle64BitOverflowEN4llvm8RegisterENS1_13SPIRVTypeInstERNS1_12MachineInstrES2_jSt8functionIFbS2_S3_S5_S2_jEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1488) %0, i32 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(80) %3, i32 %4, i32 noundef %5, ptr nofree noundef nonnull align 8 dereferenceable(32) %6) unnamed_addr #0 align 2 {
bb.a:
  %7 = alloca %"class.llvm::Register", align 4    ; 4 uses
  %8 = alloca %"class.llvm::SPIRVTypeInst", align 8 ; 4 uses
  %9 = alloca %"class.llvm::Register", align 4    ; 4 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %10 = alloca %"class.llvm::Register", align 4   ; 4 uses
  %11 = alloca %"class.llvm::SPIRVTypeInst", align 8 ; 4 uses
  %12 = alloca %"class.llvm::Register", align 4   ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %13 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %14 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %15 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %16 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %17 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %18 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %19 = alloca %"class.llvm::MachineIRBuilder", align 8 ; 16 uses
  %20 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %21 = alloca [2 x %"class.llvm::Register"], align 4 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 11 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !235, !nonnull !78, !align !236
  %i.e = tail call ptr @_ZNK4llvm19SPIRVGlobalRegistry29retrieveScalarOrVectorIntTypeENS_13SPIRVTypeInstE(ptr noundef nonnull align 8 dereferenceable(1416) %i.d, ptr %2) #20 ; 4 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !235, !nonnull !78, !align !236
  %i.g = tail call noundef i32 @_ZNK4llvm19SPIRVGlobalRegistry31getScalarOrVectorComponentCountENS_13SPIRVTypeInstE(ptr noundef nonnull align 8 dereferenceable(1416) %i.f, ptr %2) #20 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #20
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !308
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm16MachineIRBuilderE, i64 16), ptr %19, align 8, !tbaa !55
  %i.j = getelementptr inbounds nuw i8, ptr %19, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.j, i8 0, i64 88, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !351
  call void @_ZN4llvm16MachineIRBuilder5setMFERNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(96) %19, ptr noundef nonnull align 8 dereferenceable(1065) %i.l) #20
  %i.m = getelementptr inbounds nuw i8, ptr %19, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %19, i64 72
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !308
  store ptr %i.o, ptr %i.m, align 8, !tbaa !416
  %i.p = ptrtoint ptr %3 to i64
  store i64 %i.p, ptr %i.n, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.r = load i64, ptr %i.q, align 8, !tbaa !46   ; 3 uses
  %i.s = icmp ugt i64 %i.r, 7
  br i1 %i.s, label %bb.b, label %_ZNK4llvm12MachineInstr15getMMRAMetadataEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.t = and i64 %i.r, 7
  %.not.i.i87 = icmp eq i64 %i.t, 3
  %i.u = and i64 %i.r, -8
  %i.v = inttoptr i64 %i.u to ptr                 ; 21 uses
  br i1 %.not.i.i87, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 7
  %i.x = load i8, ptr %i.w, align 1, !tbaa !418, !range !77, !noundef !78
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.aa = load i32, ptr %i.v, align 8, !tbaa !419
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.ae = load i8, ptr %i.ad, align 4, !tbaa !420, !range !77, !noundef !78
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 5
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !421, !range !77, !noundef !78
  %narrow.i.i.i.i.i.i.i = add nuw nsw i8 %i.ag, %i.ae
  %i.ah = zext nneg i8 %narrow.i.i.i.i.i.i.i to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.v, i64 6
  %i.ak = load i8, ptr %i.aj, align 2, !tbaa !422, !range !77, !noundef !78
  %i.al = zext nneg i8 %i.ak to i64
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.al
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !423
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1.i.i.ph.ph = phi ptr [ %i.an, %bb.d ], [ null, %bb.c ]
  %i.ao = getelementptr inbounds nuw i8, ptr %19, i64 40
  store ptr %.1.i.i.ph.ph, ptr %i.ao, align 8, !tbaa !424
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 9
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !425, !range !77, !noundef !78
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.at = load i32, ptr %i.v, align 8, !tbaa !419
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.ax = load i8, ptr %i.aw, align 4, !tbaa !420, !range !77, !noundef !78
  %i.ay = getelementptr inbounds nuw i8, ptr %i.v, i64 5
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !421, !range !77, !noundef !78
  %narrow.i.i.i.i.i.i8.i = add nuw nsw i8 %i.az, %i.ax
  %i.ba = zext nneg i8 %narrow.i.i.i.i.i.i8.i to i64
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.v, i64 6
  %i.bd = load i8, ptr %i.bc, align 2, !tbaa !422, !range !77, !noundef !78
  %i.be = getelementptr inbounds nuw i8, ptr %i.v, i64 7
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !418, !range !77, !noundef !78
  %narrow.i.i.i = add nuw nsw i8 %i.bf, %i.bd
  %i.bg = zext nneg i8 %narrow.i.i.i to i64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.bg
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !423
  br label %bb.h

_ZNK4llvm12MachineInstr15getMMRAMetadataEv.exit.i: ; preds = %bb.a
  %i.bj = getelementptr inbounds nuw i8, ptr %19, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, i8 0, i64 16, i1 false)
  br label %_ZN4llvm16MachineIRBuilder8setInstrERNS_12MachineInstrE.exit

bb.g:                                             ; preds = %bb.b
  %i.bk = getelementptr inbounds nuw i8, ptr %19, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, i8 0, i64 16, i1 false)
  br label %_ZN4llvm16MachineIRBuilder8setInstrERNS_12MachineInstrE.exit

bb.h:                                             ; preds = %bb.f, %bb.e
  %.1.i6.i.ph.ph = phi ptr [ %i.bi, %bb.f ], [ null, %bb.e ]
  %i.bl = getelementptr inbounds nuw i8, ptr %19, i64 48
  store ptr %.1.i6.i.ph.ph, ptr %i.bl, align 8, !tbaa !426
  %i.bm = getelementptr inbounds nuw i8, ptr %i.v, i64 10
  %i.bn = load i8, ptr %i.bm, align 2, !tbaa !427, !range !77, !noundef !78
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %bb.i, label %_ZN4llvm16MachineIRBuilder8setInstrERNS_12MachineInstrE.exit

bb.i:                                             ; preds = %bb.h
  %i.bp = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.bq = load i32, ptr %i.v, align 8, !tbaa !419
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.bu = load i8, ptr %i.bt, align 4, !tbaa !420, !range !77, !noundef !78
  %i.bv = getelementptr inbounds nuw i8, ptr %i.v, i64 5
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !421, !range !77, !noundef !78
  %narrow.i.i.i.i.i.i.i.i.i = add nuw nsw i8 %i.bw, %i.bu
  %i.bx = zext nneg i8 %narrow.i.i.i.i.i.i.i.i.i to i64
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.v, i64 6
  %i.ca = load i8, ptr %i.bz, align 2, !tbaa !422, !range !77, !noundef !78
  %i.cb = getelementptr inbounds nuw i8, ptr %i.v, i64 7
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !418, !range !77, !noundef !78
  %narrow.i.i.i.i.i.i.i.i = add nuw nsw i8 %i.cc, %i.ca
  %i.cd = zext nneg i8 %narrow.i.i.i.i.i.i.i.i to i64
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.cg = load i8, ptr %i.cf, align 8, !tbaa !428, !range !77, !noundef !78
  %i.ch = zext nneg i8 %i.cg to i64
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.ch
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = add i64 %i.cj, 7
  %i.cl = and i64 %i.ck, -8
  %i.cm = inttoptr i64 %i.cl to ptr
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !429
  br label %_ZN4llvm16MachineIRBuilder8setInstrERNS_12MachineInstrE.exit

_ZN4llvm16MachineIRBuilder8setInstrERNS_12MachineInstrE.exit: ; preds = %bb.g, %_ZNK4llvm12MachineInstr15getMMRAMetadataEv.exit.i, %bb.h, %bb.i
  %.1.i9.i = phi ptr [ null, %_ZNK4llvm12MachineInstr15getMMRAMetadataEv.exit.i ], [ null, %bb.g ], [ %i.cn, %bb.i ], [ null, %bb.h ]
  %i.co = getelementptr inbounds nuw i8, ptr %19, i64 56
  store ptr %.1.i9.i, ptr %i.co, align 8, !tbaa !430
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %19, i64 32
  %i.cr = load i64, ptr %i.cp, align 8, !tbaa !381
  store i64 %i.cr, ptr %i.cq, align 8, !tbaa !381
  %i.cs = load ptr, ptr %i.c, align 8, !tbaa !235, !nonnull !78, !align !236
  %i.ct = call ptr @_ZN4llvm19SPIRVGlobalRegistry27getOrCreateSPIRVIntegerTypeEjRNS_16MachineIRBuilderE(ptr noundef nonnull align 8 dereferenceable(1416) %i.cs, i32 noundef 64, ptr noundef nonnull align 8 dereferenceable(96) %19) #20 ; 3 uses
  %i.cu = load ptr, ptr %i.c, align 8, !tbaa !235, !nonnull !78, !align !236
  %i.cv = call ptr @_ZN4llvm19SPIRVGlobalRegistry26getOrCreateSPIRVVectorTypeENS_13SPIRVTypeInstEjRNS_16MachineIRBuilderEb(ptr noundef nonnull align 8 dereferenceable(1416) %i.cu, ptr %i.ct, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(96) %19, i1 noundef zeroext false) #20 ; 2 uses
  %i.cw = load ptr, ptr %i.c, align 8, !tbaa !235, !nonnull !78, !align !236
  %i.cx = call ptr @_ZN4llvm19SPIRVGlobalRegistry26getOrCreateSPIRVVectorTypeENS_13SPIRVTypeInstEjRNS_16MachineIRBuilderEb(ptr noundef nonnull align 8 dereferenceable(1416) %i.cw, ptr %i.e, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(96) %19, i1 noundef zeroext false) #20 ; 2 uses
  %i.cy = icmp ugt i32 %i.g, 1
  br i1 %i.cy, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN4llvm16MachineIRBuilder8setInstrERNS_12MachineInstrE.exit
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %18, i64 4
  %i.de = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.df = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %17, i64 4
  %i.dh = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.di = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.dj = getelementptr inbounds nuw i8, ptr %16, i64 4
  %i.dk = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.dl = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.dm = getelementptr inbounds nuw i8, ptr %15, i64 4
  %i.dn = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.do = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.dp = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.dq = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.dr = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.du = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.dv = getelementptr inbounds nuw i8, ptr %6, i64 24
  %22 = zext i32 %i.g to i64
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN4llvm8RegisterESaIS1_EE9push_backERKS1_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIN4llvm8RegisterESaIS1_EE9push_backERKS1_.exit ] ; 3 uses
  %.sroa.0114.0141 = phi ptr [ null, %.lr.ph ], [ %.sroa.0114.3, %_ZNSt6vectorIN4llvm8RegisterESaIS1_EE9push_backERKS1_.exit ] ; 9 uses
  %.sroa.9.0140 = phi ptr [ null, %.lr.ph ], [ %.sroa.9.2, %_ZNSt6vectorIN4llvm8RegisterESaIS1_EE9push_backERKS1_.exit ] ; 6 uses
  %.sroa.16.0139 = phi ptr [ null, %.lr.ph ], [ %.sroa.16.3, %_ZNSt6vectorIN4llvm8RegisterESaIS1_EE9push_backERKS1_.exit ] ; 3 uses
  %23 = or disjoint i64 %indvars.iv, 1
  %i.dw = load ptr, ptr %i.cz, align 8, !tbaa !234
  %i.dx = load ptr, ptr %i.c, align 8, !tbaa !235, !nonnull !78, !align !236
  %i.dy = call noundef ptr @_ZNK4llvm19SPIRVGlobalRegistry11getRegClassENS_13SPIRVTypeInstE(ptr noundef nonnull align 8 dereferenceable(1416) %i.dx, ptr %i.cv) #20
  %i.dz = call i32 @_ZN4llvm19MachineRegisterInfo21createVirtualRegisterEPKNS_15MCRegisterClassENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520) %i.dw, ptr noundef %i.dy, ptr nonnull @.str, i64 0) #20 ; 2 uses
  %i.ea = load ptr, ptr %i.h, align 8, !tbaa !308
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #20
  %.sroa.026.0.copyload = load ptr, ptr %i.cp, align 8, !tbaa !381
  store ptr %.sroa.026.0.copyload, ptr %20, align 8, !tbaa !381
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.da, i8 0, i64 24, i1 false)
  %i.eb = load ptr, ptr %i.db, align 8, !tbaa !378, !nonnull !78, !align !236
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !384
  %i.ee = getelementptr inbounds i8, ptr %i.ed, i64 -27040
  %i.ef = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescE(ptr noundef nonnull align 8 dereferenceable(360) %i.ea, ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(32) %i.ee) ; 2 uses
  %i.eg = extractvalue { ptr, ptr } %i.ef, 0      ; 6 uses
  %i.eh = extractvalue { ptr, ptr } %i.ef, 1      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #20
  store ptr null, ptr %i.dc, align 8, !tbaa !50, !alias.scope !3803
  store i32 %i.dz, ptr %i.dd, align 4, !tbaa !46, !alias.scope !3803
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.de, i8 0, i64 16, i1 false), !alias.scope !3803
  store i32 16777216, ptr %18, align 8, !alias.scope !3803
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.eh, ptr noundef nonnull align 8 dereferenceable(1065) %i.eg, ptr noundef nonnull align 8 dereferenceable(32) %18) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  %i.ei = load ptr, ptr %i.c, align 8, !tbaa !235, !nonnull !78, !align !236
  %i.ej = call i32 @_ZNK4llvm19SPIRVGlobalRegistry14getSPIRVTypeIDENS_13SPIRVTypeInstE(ptr noundef nonnull align 8 dereferenceable(1416) %i.ei, ptr %i.cv) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  store ptr null, ptr %i.df, align 8, !tbaa !50, !alias.scope !3804
  store i32 %i.ej, ptr %i.dg, align 4, !tbaa !46, !alias.scope !3804
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dh, i8 0, i64 16, i1 false), !alias.scope !3804
  store i32 0, ptr %17, align 8, !alias.scope !3804
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.eh, ptr noundef nonnull align 8 dereferenceable(1065) %i.eg, ptr noundef nonnull align 8 dereferenceable(32) %17) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  store ptr null, ptr %i.di, align 8, !tbaa !50, !alias.scope !3805
  store i32 %4, ptr %i.dj, align 4, !tbaa !46, !alias.scope !3805
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dk, i8 0, i64 16, i1 false), !alias.scope !3805
  store i32 0, ptr %16, align 8, !alias.scope !3805
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.eh, ptr noundef nonnull align 8 dereferenceable(1065) %i.eg, ptr noundef nonnull align 8 dereferenceable(32) %16) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  store ptr null, ptr %i.dl, align 8, !tbaa !50, !alias.scope !3806
  store i32 %4, ptr %i.dm, align 4, !tbaa !46, !alias.scope !3806
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dn, i8 0, i64 16, i1 false), !alias.scope !3806
  store i32 0, ptr %15, align 8, !alias.scope !3806
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.eh, ptr noundef nonnull align 8 dereferenceable(1065) %i.eg, ptr noundef nonnull align 8 dereferenceable(32) %15) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  store i32 1, ptr %14, align 8, !alias.scope !3807
  store ptr null, ptr %i.do, align 8, !tbaa !50, !alias.scope !3807
  store i64 %indvars.iv, ptr %i.dp, align 8, !tbaa !46, !alias.scope !3807
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.eh, ptr noundef nonnull align 8 dereferenceable(1065) %i.eg, ptr noundef nonnull align 8 dereferenceable(32) %14) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  store i32 1, ptr %13, align 8, !alias.scope !3808
  store ptr null, ptr %i.dq, align 8, !tbaa !50, !alias.scope !3808
  store i64 %23, ptr %i.dr, align 8, !tbaa !46, !alias.scope !3808
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.eh, ptr noundef nonnull align 8 dereferenceable(1065) %i.eg, ptr noundef nonnull align 8 dereferenceable(32) %13) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  %i.ek = load ptr, ptr %i.db, align 8, !tbaa !378, !nonnull !78, !align !236
  %i.el = load ptr, ptr %i.ds, align 8, !tbaa !379, !nonnull !78, !align !236
  %i.em = load ptr, ptr %i.dt, align 8, !tbaa !380, !nonnull !78, !align !236
  call void @_ZN4llvm32constrainSelectedInstRegOperandsERNS_12MachineInstrERKNS_15TargetInstrInfoERKNS_18TargetRegisterInfoERKNS_16RegisterBankInfoE(ptr noundef nonnull align 8 dereferenceable(80) %i.eh, ptr noundef nonnull align 8 dereferenceable(112) %i.ek, ptr noundef nonnull align 8 dereferenceable(316) %i.el, ptr noundef nonnull align 8 dereferenceable(160) %i.em) #20
  %i.en = load ptr, ptr %i.cz, align 8, !tbaa !234
  %i.eo = load ptr, ptr %i.c, align 8, !tbaa !235, !nonnull !78, !align !236
  %i.ep = call noundef ptr @_ZNK4llvm19SPIRVGlobalRegistry11getRegClassENS_13SPIRVTypeInstE(ptr noundef nonnull align 8 dereferenceable(1416) %i.eo, ptr %i.cx) #20
  %i.eq = call i32 @_ZN4llvm19MachineRegisterInfo21createVirtualRegisterEPKNS_15MCRegisterClassENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520) %i.en, ptr noundef %i.ep, ptr nonnull @.str, i64 0) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.eq, ptr %10, align 4
  store ptr %i.cx, ptr %11, align 8
  store i32 %i.dz, ptr %12, align 4
  store i32 %5, ptr %i.b, align 4, !tbaa !76
  %i.er = load ptr, ptr %i.du, align 8, !tbaa !405
  %.not.i.i = icmp eq ptr %i.er, null
  br i1 %.not.i.i, label %bb.k, label %_ZNKSt8functionIFbN4llvm8RegisterENS0_13SPIRVTypeInstERNS0_12MachineInstrES1_jEEclES1_S2_S4_S1_j.exit

bb.k:                                             ; preds = %bb.j
  call void @_ZSt25__throw_bad_function_callv() #24
  unreachable

_ZNKSt8functionIFbN4llvm8RegisterENS0_13SPIRVTypeInstERNS0_12MachineInstrES1_jEEclES1_S2_S4_S1_j.exit: ; preds = %bb.j
  %i.es = load ptr, ptr %i.dv, align 8, !tbaa !763
  %i.et = call noundef zeroext i1 %i.es(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 4 dereferenceable(4) %10, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull align 4 dereferenceable(4) %12, ptr noundef nonnull align 4 dereferenceable(4) %i.b) #20, !inline_history !3791
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.et, label %bb.l, label %.critedge

bb.l:                                             ; preds = %_ZNKSt8functionIFbN4llvm8RegisterENS0_13SPIRVTypeInstERNS0_12MachineInstrES1_jEEclES1_S2_S4_S1_j.exit
  %.not.i = icmp eq ptr %.sroa.9.0140, %.sroa.16.0139
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i32 %i.eq, ptr %.sroa.9.0140, align 4, !tbaa !76
  br label %_ZNSt6vectorIN4llvm8RegisterESaIS1_EE9push_backERKS1_.exit

bb.n:                                             ; preds = %bb.l
  %i.eu = ptrtoint ptr %.sroa.9.0140 to i64       ; 2 uses
  %i.ev = ptrtoint ptr %.sroa.0114.0141 to i64    ; 3 uses
  %i.ew = sub i64 %i.eu, %i.ev                    ; 4 uses
  %i.ex = icmp eq i64 %i.ew, 9223372036854775804
  br i1 %i.ex, label %bb.o, label %_ZNKSt6vectorIN4llvm8RegisterESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.o:                                             ; preds = %bb.n
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #24
  unreachable

_ZNKSt6vectorIN4llvm8RegisterESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.n
  %i.ey = ashr exact i64 %i.ew, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ey, i64 1)
  %i.ez = add nsw i64 %.sroa.speculated.i.i.i, %i.ey ; 2 uses
  %i.fa = icmp ult i64 %i.ez, %i.ey
  %i.fb = call i64 @llvm.umin.i64(i64 %i.ez, i64 2305843009213693951)
  %i.fc = select i1 %i.fa, i64 2305843009213693951, i64 %i.fb ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.fc, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.fd = shl nuw nsw i64 %i.fc, 2
  %i.fe = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fd) #21 ; 8 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.ew
  store i32 %i.eq, ptr %i.ff, align 4, !tbaa !76
  %.not10.i.i.i.i.i = icmp eq ptr %.sroa.0114.0141, %.sroa.9.0140
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN4llvm8RegisterESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorIN4llvm8RegisterESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.fg = ptrtoaddr ptr %i.fe to i64
  %i.fh = add i64 %i.eu, -4
  %i.fi = sub i64 %i.fh, %i.ev                    ; 2 uses
  %i.fj = lshr i64 %i.fi, 2
  %i.fk = add nuw nsw i64 %i.fj, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.fi, 28
  %i.fl = sub i64 %i.ev, %i.fg
  %diff.check = icmp ugt i64 %i.fl, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader199, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.fk, 9223372036854775800     ; 3 uses
  %i.fm = shl i64 %n.vec, 2                       ; 2 uses
  %i.fn = getelementptr i8, ptr %i.fe, i64 %i.fm  ; 2 uses
  %i.fo = getelementptr i8, ptr %.sroa.0114.0141, i64 %i.fm
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fp = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.fe, i64 %i.fp ; 2 uses
  %next.gep177 = getelementptr i8, ptr %.sroa.0114.0141, i64 %i.fp ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3809)
  call void @llvm.experimental.noalias.scope.decl(metadata !3810)
  %i.fq = getelementptr i8, ptr %next.gep177, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep177, align 4, !tbaa !76, !alias.scope !3810, !noalias !3809
  %wide.load178 = load <4 x i32>, ptr %i.fq, align 4, !tbaa !76, !alias.scope !3810, !noalias !3809
  %i.fr = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !76, !alias.scope !3809, !noalias !3810
  store <4 x i32> %wide.load178, ptr %i.fr, align 4, !tbaa !76, !alias.scope !3809, !noalias !3810
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fs = icmp eq i64 %index.next, %n.vec
  br i1 %i.fs, label %middle.block, label %vector.body, !llvm.loop !3795

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fk, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN4llvm8RegisterESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader199

.lr.ph.i.i.i.i.i.preheader199:                    ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.fe, %.lr.ph.i.i.i.i.i.preheader ], [ %i.fn, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %.sroa.0114.0141, %.lr.ph.i.i.i.i.i.preheader ], [ %i.fo, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader199, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.fv, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader199 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.fu, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader199 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3809)
  call void @llvm.experimental.noalias.scope.decl(metadata !3810)
  %i.ft = load i32, ptr %.0911.i.i.i.i.i, align 4, !tbaa !76, !alias.scope !3810, !noalias !3809
  store i32 %i.ft, ptr %.012.i.i.i.i.i, align 4, !tbaa !76, !alias.scope !3809, !noalias !3810
  %i.fu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 4 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.fu, %.sroa.9.0140
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4llvm8RegisterESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !3796

_ZNSt6vectorIN4llvm8RegisterESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN4llvm8RegisterESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.fe, %_ZNKSt6vectorIN4llvm8RegisterESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.fn, %middle.block ], [ %i.fv, %.lr.ph.i.i.i.i.i ]
  %.not.i23.i.i = icmp eq ptr %.sroa.0114.0141, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN4llvm8RegisterESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIN4llvm8RegisterESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0114.0141, i64 noundef %i.ew) #22
  br label %_ZNSt6vectorIN4llvm8RegisterESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN4llvm8RegisterESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.p, %_ZNSt6vectorIN4llvm8RegisterESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %i.fc
  br label %_ZNSt6vectorIN4llvm8RegisterESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIN4llvm8RegisterESaIS1_EE9push_backERKS1_.exit: ; preds = %bb.m, %_ZNSt6vectorIN4llvm8RegisterESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %.sroa.16.3 = phi ptr [ %i.fw, %_ZNSt6vectorIN4llvm8RegisterESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.16.0139, %bb.m ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorIN4llvm8RegisterESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.9.0140, %bb.m ]
  %.sroa.0114.3 = phi ptr [ %i.fe, %_ZNSt6vectorIN4llvm8RegisterESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.0114.0141, %bb.m ] ; 2 uses
  %.sroa.9.2 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.pn, i64 4 ; 2 uses
  %indvars.iv.next = add nuw i64 %indvars.iv, 2   ; 3 uses
  %24 = or disjoint i64 %indvars.iv.next, 1
  %i.fx = icmp ult i64 %24, %22
  br i1 %i.fx, label %bb.j, label %._crit_edge.loopexit, !llvm.loop !3797

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorIN4llvm8RegisterESaIS1_EE9push_backERKS1_.exit
  %25 = trunc nuw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN4llvm16MachineIRBuilder8setInstrERNS_12MachineInstrE.exit
  %.sroa.16.0.lcssa = phi ptr [ null, %_ZN4llvm16MachineIRBuilder8setInstrERNS_12MachineInstrE.exit ], [ %.sroa.16.3, %._crit_edge.loopexit ] ; 7 uses
  %.sroa.9.0.lcssa = phi ptr [ null, %_ZN4llvm16MachineIRBuilder8setInstrERNS_12MachineInstrE.exit ], [ %.sroa.9.2, %._crit_edge.loopexit ] ; 4 uses
  %.sroa.0114.0.lcssa = phi ptr [ null, %_ZN4llvm16MachineIRBuilder8setInstrERNS_12MachineInstrE.exit ], [ %.sroa.0114.3, %._crit_edge.loopexit ] ; 10 uses
  %.062.lcssa = phi i32 [ 0, %_ZN4llvm16MachineIRBuilder8setInstrERNS_12MachineInstrE.exit ], [ %25, %._crit_edge.loopexit ]
  %.not = icmp eq i32 %.062.lcssa, %i.g
  br i1 %.not, label %_ZNSt6vectorIN4llvm8RegisterESaIS1_EE9push_backERKS1_.exit85, label %bb.q

bb.q:                                             ; preds = %._crit_edge
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !386, !nonnull !78, !align !236
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 519512
  %i.gb = load i32, ptr %i.ga, align 8, !tbaa !594
  %i.gc = icmp ne i32 %i.gb, 1
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !234
  %i.gf = load ptr, ptr %i.c, align 8, !tbaa !235, !nonnull !78, !align !236
  %i.gg = call noundef ptr @_ZNK4llvm19SPIRVGlobalRegistry11getRegClassENS_13SPIRVTypeInstE(ptr noundef nonnull align 8 dereferenceable(1416) %i.gf, ptr %i.ct) #20
  %i.gh = call i32 @_ZN4llvm19MachineRegisterInfo21createVirtualRegisterEPKNS_15MCRegisterClassENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520) %i.ge, ptr noundef %i.gg, ptr nonnull @.str, i64 0) #20 ; 2 uses
  %i.gi = load ptr, ptr %i.c, align 8, !tbaa !235, !nonnull !78, !align !236
  %i.gj = add i32 %i.g, -1
  %i.gk = zext i32 %i.gj to i64
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !378, !nonnull !78, !align !236
  %i.gn = call i32 @_ZN4llvm19SPIRVGlobalRegistry19getOrCreateConstIntEmRNS_12MachineInstrENS_13SPIRVTypeInstERKNS_14SPIRVInstrInfoEb(ptr noundef nonnull align 8 dereferenceable(1416) %i.gi, i64 noundef %i.gk, ptr noundef nonnull align 8 dereferenceable(80) %3, ptr %i.e, ptr noundef nonnull align 8 dereferenceable(432) %i.gm, i1 noundef zeroext %i.gc) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #20
  store i32 %4, ptr %21, align 4, !tbaa !76
  %i.go = getelementptr inbounds nuw i8, ptr %21, i64 4
  store i32 %i.gn, ptr %i.go, align 4, !tbaa !76
  call fastcc void @_ZNK12_GLOBAL__N_124SPIRVInstructionSelector16selectOpWithSrcsEN4llvm8RegisterENS1_13SPIRVTypeInstERNS1_12MachineInstrENS1_8ArrayRefIS2_EEj(ptr noundef nonnull align 8 dereferenceable(1488) %0, i32 %i.gh, ptr %i.ct, ptr noundef nonnull align 8 dereferenceable(80) %3, ptr nonnull %21, i64 2, i32 noundef 843)
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  %i.gp = load ptr, ptr %i.gd, align 8, !tbaa !234
  %i.gq = load ptr, ptr %i.c, align 8, !tbaa !235, !nonnull !78, !align !236
  %i.gr = call noundef ptr @_ZNK4llvm19SPIRVGlobalRegistry11getRegClassENS_13SPIRVTypeInstE(ptr noundef nonnull align 8 dereferenceable(1416) %i.gq, ptr %i.e) #20
  %i.gs = call i32 @_ZN4llvm19MachineRegisterInfo21createVirtualRegisterEPKNS_15MCRegisterClassENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520) %i.gp, ptr noundef %i.gr, ptr nonnull @.str, i64 0) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.gs, ptr %7, align 4
  store ptr %i.e, ptr %8, align 8
  store i32 %i.gh, ptr %9, align 4
  store i32 %5, ptr %i.a, align 4, !tbaa !76
  %i.gt = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !405
  %.not.i.i70 = icmp eq ptr %i.gu, null
  br i1 %.not.i.i70, label %bb.r, label %_ZNKSt8functionIFbN4llvm8RegisterENS0_13SPIRVTypeInstERNS0_12MachineInstrES1_jEEclES1_S2_S4_S1_j.exit71

bb.r:                                             ; preds = %bb.q
  call void @_ZSt25__throw_bad_function_callv() #24
  unreachable

_ZNKSt8functionIFbN4llvm8RegisterENS0_13SPIRVTypeInstERNS0_12MachineInstrES1_jEEclES1_S2_S4_S1_j.exit71: ; preds = %bb.q
  %i.gv = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !763
  %i.gx = call noundef zeroext i1 %i.gw(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull align 4 dereferenceable(4) %9, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #20, !inline_history !3791
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.gx, label %bb.s, label %.critedge

bb.s:                                             ; preds = %_ZNKSt8functionIFbN4llvm8RegisterENS0_13SPIRVTypeInstERNS0_12MachineInstrES1_jEEclES1_S2_S4_S1_j.exit71
  %.not.i72 = icmp eq ptr %.sroa.9.0.lcssa, %.sroa.16.0.lcssa
  br i1 %.not.i72, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i32 %i.gs, ptr %.sroa.9.0.lcssa, align 4, !tbaa !76
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.9.0.lcssa, i64 4
  br label %_ZNSt6vectorIN4llvm8RegisterESaIS1_EE9push_backERKS1_.exit85

bb.u:                                             ; preds = %bb.s
  %i.gz = ptrtoint ptr %.sroa.16.0.lcssa to i64   ; 2 uses
  %i.ha = ptrtoint ptr %.sroa.0114.0.lcssa to i64 ; 3 uses
  %i.hb = sub i64 %i.gz, %i.ha                    ; 4 uses
  %i.hc = icmp eq i64 %i.hb, 9223372036854775804
  br i1 %i.hc, label %bb.v, label %_ZNKSt6vectorIN4llvm8RegisterESaIS1_EE12_M_check_lenEmPKc.exit.i.i73

bb.v:                                             ; preds = %bb.u
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #24
  unreachable

_ZNKSt6vectorIN4llvm8RegisterESaIS1_EE12_M_check_lenEmPKc.exit.i.i73: ; preds = %bb.u
  %i.hd = ashr exact i64 %i.hb, 2                 ; 3 uses
  %.sroa.speculated.i.i.i74 = call i64 @llvm.umax.i64(i64 %i.hd, i64 1)
  %i.he = add nsw i64 %.sroa.speculated.i.i.i74, %i.hd ; 2 uses
  %i.hf = icmp ult i64 %i.he, %i.hd
  %i.hg = call i64 @llvm.umin.i64(i64 %i.he, i64 2305843009213693951)
  %i.hh = select i1 %i.hf, i64 2305843009213693951, i64 %i.hg ; 3 uses
  %.not.i.i.i75 = icmp ne i64 %i.hh, 0
  call void @llvm.assume(i1 %.not.i.i.i75)
  %i.hi = shl nuw nsw i64 %i.hh, 2
  %i.hj = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hi) #21 ; 8 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 %i.hb
  store i32 %i.gs, ptr %i.hk, align 4, !tbaa !76
  %.not10.i.i.i.i.i76 = icmp eq ptr %.sroa.0114.0.lcssa, %.sroa.16.0.lcssa
  br i1 %.not10.i.i.i.i.i76, label %_ZNSt6vectorIN4llvm8RegisterESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i81, label %.lr.ph.i.i.i.i.i77.preheader

.lr.ph.i.i.i.i.i77.preheader:                     ; preds = %_ZNKSt6vectorIN4llvm8RegisterESaIS1_EE12_M_check_lenEmPKc.exit.i.i73
  %i.hl = ptrtoaddr ptr %i.hj to i64
  %i.hm = add i64 %i.gz, -4
  %i.hn = sub i64 %i.hm, %i.ha                    ; 2 uses
  %i.ho = lshr i64 %i.hn, 2
  %i.hp = add nuw nsw i64 %i.ho, 1                ; 2 uses
  %min.iters.check183 = icmp ult i64 %i.hn, 44
  %i.hq = sub i64 %i.ha, %i.hl
  %diff.check181 = icmp ugt i64 %i.hq, -32
  %or.cond197 = or i1 %min.iters.check183, %diff.check181
  br i1 %or.cond197, label %.lr.ph.i.i.i.i.i77.preheader198, label %vector.ph184

vector.ph184:                                     ; preds = %.lr.ph.i.i.i.i.i77.preheader
  %n.vec185 = and i64 %i.hp, 9223372036854775800  ; 3 uses
  %i.hr = shl i64 %n.vec185, 2                    ; 2 uses
  %i.hs = getelementptr i8, ptr %i.hj, i64 %i.hr  ; 2 uses
  %i.ht = getelementptr i8, ptr %.sroa.0114.0.lcssa, i64 %i.hr
  br label %vector.body186

vector.body186:                                   ; preds = %vector.body186, %vector.ph184
  %index187 = phi i64 [ 0, %vector.ph184 ], [ %index.next192, %vector.body186 ] ; 2 uses
  %i.hu = shl i64 %index187, 2                    ; 2 uses
  %next.gep188.a = getelementptr i8, ptr %i.hj, i64 %i.hu ; 2 uses
  %next.gep189 = getelementptr i8, ptr %.sroa.0114.0.lcssa, i64 %i.hu ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3813)
  call void @llvm.experimental.noalias.scope.decl(metadata !3814)
  %i.hv = getelementptr i8, ptr %next.gep189, i64 16
  %wide.load190.a = load <4 x i32>, ptr %next.gep189, align 4, !tbaa !76, !alias.scope !3814, !noalias !3813
  %wide.load191 = load <4 x i32>, ptr %i.hv, align 4, !tbaa !76, !alias.scope !3814, !noalias !3813
  %i.hw = getelementptr i8, ptr %next.gep188.a, i64 16
  store <4 x i32> %wide.load190.a, ptr %next.gep188.a, align 4, !tbaa !76, !alias.scope !3813, !noalias !3814
  store <4 x i32> %wide.load191, ptr %i.hw, align 4, !tbaa !76, !alias.scope !3813, !noalias !3814
  %index.next192 = add nuw i64 %index187, 8       ; 2 uses
  %i.hx = icmp eq i64 %index.next192, %n.vec185
  br i1 %i.hx, label %middle.block193, label %vector.body186, !llvm.loop !3801

middle.block193:                                  ; preds = %vector.body186
  %cmp.n194 = icmp eq i64 %i.hp, %n.vec185
  br i1 %cmp.n194, label %_ZNSt6vectorIN4llvm8RegisterESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i81, label %.lr.ph.i.i.i.i.i77.preheader198

.lr.ph.i.i.i.i.i77.preheader198:                  ; preds = %.lr.ph.i.i.i.i.i77.preheader, %middle.block193
  %.012.i.i.i.i.i78.ph = phi ptr [ %i.hj, %.lr.ph.i.i.i.i.i77.preheader ], [ %i.hs, %middle.block193 ]
  %.0911.i.i.i.i.i79.ph = phi ptr [ %.sroa.0114.0.lcssa, %.lr.ph.i.i.i.i.i77.preheader ], [ %i.ht, %middle.block193 ]
  br label %.lr.ph.i.i.i.i.i77

.lr.ph.i.i.i.i.i77:                               ; preds = %.lr.ph.i.i.i.i.i77.preheader198, %.lr.ph.i.i.i.i.i77
  %.012.i.i.i.i.i78 = phi ptr [ %i.ia, %.lr.ph.i.i.i.i.i77 ], [ %.012.i.i.i.i.i78.ph, %.lr.ph.i.i.i.i.i77.preheader198 ] ; 2 uses
  %.0911.i.i.i.i.i79 = phi ptr [ %i.hz, %.lr.ph.i.i.i.i.i77 ], [ %.0911.i.i.i.i.i79.ph, %.lr.ph.i.i.i.i.i77.preheader198 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3813)
  call void @llvm.experimental.noalias.scope.decl(metadata !3814)
  %i.hy = load i32, ptr %.0911.i.i.i.i.i79, align 4, !tbaa !76, !alias.scope !3814, !noalias !3813
  store i32 %i.hy, ptr %.012.i.i.i.i.i78, align 4, !tbaa !76, !alias.scope !3813, !noalias !3814
  %i.hz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i79, i64 4 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i78, i64 4 ; 2 uses
  %.not.i.i.i.i.i80 = icmp eq ptr %i.hz, %.sroa.16.0.lcssa
  br i1 %.not.i.i.i.i.i80, label %_ZNSt6vectorIN4llvm8RegisterESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i81, label %.lr.ph.i.i.i.i.i77, !llvm.loop !3802

_ZNSt6vectorIN4llvm8RegisterESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i81: ; preds = %.lr.ph.i.i.i.i.i77, %middle.block193, %_ZNKSt6vectorIN4llvm8RegisterESaIS1_EE12_M_check_lenEmPKc.exit.i.i73
  %.0.lcssa.i.i.i.i.i82 = phi ptr [ %i.hj, %_ZNKSt6vectorIN4llvm8RegisterESaIS1_EE12_M_check_lenEmPKc.exit.i.i73 ], [ %i.hs, %middle.block193 ], [ %i.ia, %.lr.ph.i.i.i.i.i77 ]
  %i.ib = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i82, i64 4
  %.not.i23.i.i83 = icmp eq ptr %.sroa.0114.0.lcssa, null
  br i1 %.not.i23.i.i83, label %_ZNSt6vectorIN4llvm8RegisterESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i84, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIN4llvm8RegisterESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i81
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0114.0.lcssa, i64 noundef %i.hb) #22
  br label %_ZNSt6vectorIN4llvm8RegisterESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i84

_ZNSt6vectorIN4llvm8RegisterESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i84: ; preds = %bb.w, %_ZNSt6vectorIN4llvm8RegisterESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i81
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %i.hh
  br label %_ZNSt6vectorIN4llvm8RegisterESaIS1_EE9push_backERKS1_.exit85

_ZNSt6vectorIN4llvm8RegisterESaIS1_EE9push_backERKS1_.exit85: ; preds = %_ZNSt6vectorIN4llvm8RegisterESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i84, %bb.t, %._crit_edge
  %.sroa.16.1 = phi ptr [ %.sroa.16.0.lcssa, %._crit_edge ], [ %i.ic, %_ZNSt6vectorIN4llvm8RegisterESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i84 ], [ %.sroa.16.0.lcssa, %bb.t ]
  %.sroa.9.1 = phi ptr [ %.sroa.9.0.lcssa, %._crit_edge ], [ %i.ib, %_ZNSt6vectorIN4llvm8RegisterESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i84 ], [ %i.gy, %bb.t ]
  %.sroa.0114.1 = phi ptr [ %.sroa.0114.0.lcssa, %._crit_edge ], [ %i.hj, %_ZNSt6vectorIN4llvm8RegisterESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i84 ], [ %.sroa.0114.0.lcssa, %bb.t ] ; 3 uses
  %i.id = ptrtoint ptr %.sroa.9.1 to i64
  %i.ie = ptrtoint ptr %.sroa.0114.1 to i64
  %i.if = sub i64 %i.id, %i.ie
  %i.ig = ashr exact i64 %i.if, 2
  call fastcc void @_ZNK12_GLOBAL__N_124SPIRVInstructionSelector16selectOpWithSrcsEN4llvm8RegisterENS1_13SPIRVTypeInstERNS1_12MachineInstrENS1_8ArrayRefIS2_EEj(ptr noundef nonnull align 8 dereferenceable(1488) %0, i32 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(80) %3, ptr %.sroa.0114.1, i64 %i.ig, i32 noundef 428)
  br label %.critedge

.critedge:                                        ; preds = %_ZNKSt8functionIFbN4llvm8RegisterENS0_13SPIRVTypeInstERNS0_12MachineInstrES1_jEEclES1_S2_S4_S1_j.exit, %_ZNKSt8functionIFbN4llvm8RegisterENS0_13SPIRVTypeInstERNS0_12MachineInstrES1_jEEclES1_S2_S4_S1_j.exit71, %_ZNSt6vectorIN4llvm8RegisterESaIS1_EE9push_backERKS1_.exit85
  %.sroa.16.2 = phi ptr [ %.sroa.16.0.lcssa, %_ZNKSt8functionIFbN4llvm8RegisterENS0_13SPIRVTypeInstERNS0_12MachineInstrES1_jEEclES1_S2_S4_S1_j.exit71 ], [ %.sroa.16.1, %_ZNSt6vectorIN4llvm8RegisterESaIS1_EE9push_backERKS1_.exit85 ], [ %.sroa.16.0139, %_ZNKSt8functionIFbN4llvm8RegisterENS0_13SPIRVTypeInstERNS0_12MachineInstrES1_jEEclES1_S2_S4_S1_j.exit ]
  %.sroa.0114.2 = phi ptr [ %.sroa.0114.0.lcssa, %_ZNKSt8functionIFbN4llvm8RegisterENS0_13SPIRVTypeInstERNS0_12MachineInstrES1_jEEclES1_S2_S4_S1_j.exit71 ], [ %.sroa.0114.1, %_ZNSt6vectorIN4llvm8RegisterESaIS1_EE9push_backERKS1_.exit85 ], [ %.sroa.0114.0141, %_ZNKSt8functionIFbN4llvm8RegisterENS0_13SPIRVTypeInstERNS0_12MachineInstrES1_jEEclES1_S2_S4_S1_j.exit ] ; 3 uses
  %.4 = phi i1 [ false, %_ZNKSt8functionIFbN4llvm8RegisterENS0_13SPIRVTypeInstERNS0_12MachineInstrES1_jEEclES1_S2_S4_S1_j.exit71 ], [ true, %_ZNSt6vectorIN4llvm8RegisterESaIS1_EE9push_backERKS1_.exit85 ], [ false, %_ZNKSt8functionIFbN4llvm8RegisterENS0_13SPIRVTypeInstERNS0_12MachineInstrES1_jEEclES1_S2_S4_S1_j.exit ]
  %.not.i.i.i86 = icmp eq ptr %.sroa.0114.2, null
  br i1 %.not.i.i.i86, label %_ZNSt6vectorIN4llvm8RegisterESaIS1_EED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %.critedge
  %i.ih = ptrtoint ptr %.sroa.16.2 to i64
  %i.ii = ptrtoint ptr %.sroa.0114.2 to i64
  %i.ij = sub i64 %i.ih, %i.ii
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0114.2, i64 noundef %i.ij) #22
  br label %_ZNSt6vectorIN4llvm8RegisterESaIS1_EED2Ev.exit

_ZNSt6vectorIN4llvm8RegisterESaIS1_EED2Ev.exit:   ; preds = %.critedge, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  ret i1 %.4
}

declare i32 @_ZN4llvm19SPIRVGlobalRegistry22getOrCreateConstVectorEmRNS_12MachineInstrENS_13SPIRVTypeInstERKNS_14SPIRVInstrInfoEb(ptr noundef nonnull align 8 dereferenceable(1416), i64 noundef, ptr noundef nonnull align 8 dereferenceable(80), ptr, ptr noundef nonnull align 8 dereferenceable(432), i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbN4llvm8RegisterENS0_13SPIRVTypeInstERNS0_12MachineInstrES1_jEZNK12_GLOBAL__N_124SPIRVInstructionSelector19selectFirstBitSet64ES1_S2_S4_S1_jbE3$_0E9_M_invokeERKSt9_Any_dataOS1_OS2_S4_SD_Oj"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(80) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5) #0 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !3817
end_hunk_0
