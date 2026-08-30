Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/RISCVInsertVSETVLI?download=true
inline.NumInlined: 1961
inline.NumDeleted: 1010
begin_hunk_0_@_ZNK12_GLOBAL__N_118RISCVInsertVSETVLI14transferBeforeERN4llvm5RISCV11VSETVLIInfoERKNS1_12MachineInstrE:bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 18
  %i.ax = load i8, ptr %i.aw, align 2, !tbaa !364, !alias.scope !722
  %i.ay = zext i8 %i.ax to i32
  %i.az = call i16 @_ZN4llvm10RISCVVType16getSameRatioLMULEjj(i32 noundef %i.av, i32 noundef %i.ay) #18, !noalias !722 ; 2 uses
  %i.ba = and i16 %i.az, 256
  %.not8.i = icmp eq i16 %i.ba, 0
  br i1 %.not8.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.sroa.0.0.extract.trunc.i = trunc i16 %i.az to i8
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 17
  store i8 %.sroa.0.0.extract.trunc.i, ptr %i.bb, align 1, !tbaa !363, !alias.scope !722
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  store i8 2, ptr %i.ai, align 1, !tbaa !556, !noalias !722
  br label %_ZL14adjustIncomingRKN4llvm5RISCV11VSETVLIInfoES3_RNS0_14DemandedFieldsE.exit

_ZL14adjustIncomingRKN4llvm5RISCV11VSETVLIInfoES3_RNS0_14DemandedFieldsE.exit: ; preds = %bb.k, %bb.l, %bb.o
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !342
  %i.be = call noundef zeroext i1 @_ZNK4llvm5RISCV11VSETVLIInfo17hasEquallyZeroAVLERKS1_PKNS_13LiveIntervalsE(ptr noundef nonnull align 8 dereferenceable(20) %6, ptr noundef nonnull align 8 dereferenceable(20) %5, ptr noundef %i.bd)
  br i1 %i.be, label %bb.p, label %_ZNK4llvm5RISCV11VSETVLIInfo12hasSameVLMAXERKS1_.exit

bb.p:                                             ; preds = %_ZL14adjustIncomingRKN4llvm5RISCV11VSETVLIInfoES3_RNS0_14DemandedFieldsE.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 19
  %i.bg = load i8, ptr %i.bf, align 1
  %i.bh = lshr i8 %i.bg, 4
  %i.bi = and i8 %i.bh, 7                         ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 19
  %i.bk = load i8, ptr %i.bj, align 1
  %i.bl = lshr i8 %i.bk, 4
  %i.bm = and i8 %i.bl, 7
  %.not.i35 = icmp eq i8 %i.bi, %i.bm
  br i1 %.not.i35, label %bb.q, label %_ZNK4llvm5RISCV11VSETVLIInfo12hasSameVLMAXERKS1_.exit

bb.q:                                             ; preds = %bb.p
  %.not5.i = icmp eq i8 %i.bi, 0
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 18
  %i.bo = load i8, ptr %i.bn, align 2, !tbaa !364 ; 2 uses
  br i1 %.not5.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 18
  %i.bq = load i8, ptr %i.bp, align 2, !tbaa !364
  %i.br = icmp eq i8 %i.bo, %i.bq
  br label %_ZNK4llvm5RISCV11VSETVLIInfo12hasSameVLMAXERKS1_.exit

bb.s:                                             ; preds = %bb.q
  %i.bs = zext i8 %i.bo to i32
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 17
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !363
  %i.bv = call noundef i32 @_ZN4llvm10RISCVVType15getSEWLMULRatioEjNS0_5VLMULE(i32 noundef %i.bs, i8 noundef zeroext %i.bu) #18
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 18
  %i.bx = load i8, ptr %i.bw, align 2, !tbaa !364
  %i.by = zext i8 %i.bx to i32
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 17
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !363
  %i.cb = call noundef i32 @_ZN4llvm10RISCVVType15getSEWLMULRatioEjNS0_5VLMULE(i32 noundef %i.by, i8 noundef zeroext %i.ca) #18
  %i.cc = icmp eq i32 %i.bv, %i.cb
  br label %_ZNK4llvm5RISCV11VSETVLIInfo12hasSameVLMAXERKS1_.exit

_ZNK4llvm5RISCV11VSETVLIInfo12hasSameVLMAXERKS1_.exit: ; preds = %bb.s, %bb.r, %bb.p, %_ZL14adjustIncomingRKN4llvm5RISCV11VSETVLIInfoES3_RNS0_14DemandedFieldsE.exit
  %i.cd = phi i1 [ false, %_ZL14adjustIncomingRKN4llvm5RISCV11VSETVLIInfoES3_RNS0_14DemandedFieldsE.exit ], [ %i.cc, %bb.s ], [ %i.br, %bb.r ], [ false, %bb.p ]
  %i.ce = load i8, ptr %3, align 8, !tbaa !552, !range !18, !noundef !19
  %i.cf = trunc nuw i8 %i.ce to i1
  br i1 %i.cf, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZNK4llvm5RISCV11VSETVLIInfo12hasSameVLMAXERKS1_.exit
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !516, !range !18, !noundef !19
  %i.ci = trunc nuw i8 %i.ch to i1
  %.not = xor i1 %i.ci, true
  %or.cond = or i1 %i.cd, %.not
  br i1 %or.cond, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZNK4llvm5RISCV11VSETVLIInfo12hasSameVLMAXERKS1_.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ck = load i8, ptr %i.cj, align 8, !tbaa !361 ; 3 uses
  switch i8 %i.ck, label %bb.w [
    i8 4, label %_ZN4llvm5RISCV11VSETVLIInfo6setAVLERKS1_.exit
    i8 1, label %bb.v
    i8 3, label %_ZN4llvm5RISCV11VSETVLIInfo6setAVLERKS1_.exit
  ]

bb.v:                                             ; preds = %bb.u
  %i.cl = load ptr, ptr %6, align 8, !tbaa !349
  %i.cm = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.cm, align 8, !tbaa !433
  store ptr %i.cl, ptr %1, align 8, !tbaa !349
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %.sroa.0.0.copyload.i.i, ptr %i.cn, align 8, !tbaa !433
  br label %_ZN4llvm5RISCV11VSETVLIInfo6setAVLERKS1_.exit

bb.w:                                             ; preds = %bb.u
  %i.co = load i32, ptr %6, align 8, !tbaa !349
  store i32 %i.co, ptr %1, align 8, !tbaa !349
  br label %_ZN4llvm5RISCV11VSETVLIInfo6setAVLERKS1_.exit

_ZN4llvm5RISCV11VSETVLIInfo6setAVLERKS1_.exit:    ; preds = %bb.u, %bb.u, %bb.v, %bb.w
  %.sink.i = phi i8 [ 1, %bb.v ], [ 2, %bb.w ], [ %i.ck, %bb.u ], [ %i.ck, %bb.u ]
  store i8 %.sink.i, ptr %i.y, align 8, !tbaa !361
  br label %bb.x

bb.x:                                             ; preds = %_ZN4llvm5RISCV11VSETVLIInfo6setAVLERKS1_.exit, %bb.t
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 19 ; 3 uses
  %i.cq = load i8, ptr %i.cp, align 1             ; 4 uses
  %i.cr = and i8 %i.cq, 4
  %.not70 = icmp eq i8 %i.cr, 0
  br i1 %.not70, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.sroa.0.0.copyload = load ptr, ptr %6, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 12
  %.sroa.7.0.copyload = load i32, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !349
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 17
  %i.cs = load i8, ptr %i.y, align 8, !tbaa !361  ; 3 uses
  switch i8 %i.cs, label %bb.aa [
    i8 4, label %_ZN4llvm5RISCV11VSETVLIInfo6setAVLERKS1_.exit39
    i8 1, label %bb.z
    i8 3, label %_ZN4llvm5RISCV11VSETVLIInfo6setAVLERKS1_.exit39
  ]

bb.z:                                             ; preds = %bb.y
  %i.ct = load ptr, ptr %1, align 8, !tbaa !349
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i.i38 = load i32, ptr %i.cu, align 8, !tbaa !433
  br label %_ZN4llvm5RISCV11VSETVLIInfo6setAVLERKS1_.exit39

bb.aa:                                            ; preds = %bb.y
  %i.cv = load i32, ptr %1, align 8, !tbaa !349
  %i.cw = ptrtoint ptr %.sroa.0.0.copyload to i64
  %.sroa.0.0.insert.ext = zext i32 %i.cv to i64
  %.sroa.0.0.insert.mask = and i64 %i.cw, -4294967296
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.0.0.insert.mask, %.sroa.0.0.insert.ext
  %i.cx = inttoptr i64 %.sroa.0.0.insert.insert to ptr
  br label %_ZN4llvm5RISCV11VSETVLIInfo6setAVLERKS1_.exit39

_ZN4llvm5RISCV11VSETVLIInfo6setAVLERKS1_.exit39:  ; preds = %bb.y, %bb.y, %bb.z, %bb.aa
  %.sroa.0.0 = phi ptr [ %i.cx, %bb.aa ], [ %.sroa.0.0.copyload, %bb.y ], [ %i.ct, %bb.z ], [ %.sroa.0.0.copyload, %bb.y ]
  %.sroa.6.0 = phi i32 [ %.sroa.6.0.copyload, %bb.aa ], [ %.sroa.6.0.copyload, %bb.y ], [ %.sroa.0.0.copyload.i.i38, %bb.z ], [ %.sroa.6.0.copyload, %bb.y ]
  %.sink.i37 = phi i8 [ 2, %bb.aa ], [ %i.cs, %bb.y ], [ 1, %bb.z ], [ %i.cs, %bb.y ]
  store ptr %.sroa.0.0, ptr %1, align 8
  %.sroa.6.0..sroa_idx41 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx41, align 8
  %.sroa.7.0..sroa_idx43 = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %.sroa.7.0.copyload, ptr %.sroa.7.0..sroa_idx43, align 4, !tbaa !349
  store i8 %.sink.i37, ptr %i.y, align 8, !tbaa !350
  %.sroa.8.0..sroa_idx48 = getelementptr inbounds nuw i8, ptr %1, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.8.0..sroa_idx48, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.8.0..sroa_idx, i64 3, i1 false)
  br label %bb.ac

bb.ab:                                            ; preds = %bb.x
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.cz = load i8, ptr %i.cy, align 2, !tbaa !554
  %i.da = icmp ne i8 %i.cz, 0
  %i.db = load i8, ptr %i.ak, align 4, !range !18
  %i.dc = trunc nuw i8 %i.db to i1                ; 2 uses
  %or.cond4 = select i1 %i.da, i1 true, i1 %i.dc
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %6, i64 18
  %.sroa.gep49 = getelementptr inbounds nuw i8, ptr %1, i64 18 ; 2 uses
  %.sroa.sel = select i1 %or.cond4, ptr %.sroa.gep, ptr %.sroa.gep49
  %i.dd = load i8, ptr %.sroa.sel, align 2, !tbaa !364 ; 2 uses
  %i.de = load i8, ptr %i.ai, align 1, !tbaa !556
  %i.df = icmp ne i8 %i.de, 0
  %or.cond7 = select i1 %i.df, i1 true, i1 %i.dc
  %.sroa.gep50 = getelementptr inbounds nuw i8, ptr %6, i64 17
  %.sroa.gep51 = getelementptr inbounds nuw i8, ptr %1, i64 17 ; 2 uses
  %.sroa.sel52 = select i1 %or.cond7, ptr %.sroa.gep50, ptr %.sroa.gep51
  %i.dg = load i8, ptr %.sroa.sel52, align 1, !tbaa !363
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 5
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !725, !range !18, !noundef !19
  %i.dj = trunc nuw i8 %i.di to i1
  %.sroa.gep53 = getelementptr inbounds nuw i8, ptr %6, i64 19 ; 2 uses
  %.sroa.sel55 = select i1 %i.dj, ptr %.sroa.gep53, ptr %i.cp
  %i.dk = load i8, ptr %.sroa.sel55, align 1
  %i.dl = trunc i8 %i.dk to i1
  %i.dm = load i8, ptr %.sroa.gep53, align 1      ; 5 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 6
  %i.do = load i8, ptr %i.dn, align 2, !tbaa !726, !range !18, !noundef !19
  %i.dp = trunc nuw i8 %i.do to i1
  %i.dq = select i1 %i.dp, i8 %i.dm, i8 %i.cq
  %i.dr = and i8 %i.dq, 2
  %i.ds = icmp ne i8 %i.dr, 0
  %i.dt = and i8 %i.dm, 2
  %i.du = icmp ne i8 %i.dt, 0
  %i.dv = select i1 %i.ds, i1 true, i1 %i.du
  %i.dw = getelementptr inbounds nuw i8, ptr %3, i64 9
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !557, !range !18, !noundef !19
  %i.dy = trunc nuw i8 %i.dx to i1
  %i.dz = select i1 %i.dy, i8 %i.dm, i8 %i.cq
  %i.ea = and i8 %i.dz, 8
  %i.eb = icmp ne i8 %i.ea, 0
  %i.ec = icmp ult i8 %i.dd, 32
  %i.ed = and i1 %i.ec, %i.eb
  %i.ee = load i8, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !558, !range !18, !noundef !19
  %i.ef = trunc nuw i8 %i.ee to i1
  %i.eg = and i8 %i.dm, 112
  %narrow = select i1 %i.ef, i8 %i.eg, i8 0
  %i.eh = and i8 %i.dm, 1
  %i.ei = select i1 %i.dl, i8 1, i8 %i.eh
  store i8 %i.dg, ptr %.sroa.gep51, align 1, !tbaa !363
  store i8 %i.dd, ptr %.sroa.gep49, align 2, !tbaa !364
  %i.ej = and i8 %i.cq, -128
  %i.ek = select i1 %i.dv, i8 2, i8 0
  %i.el = select i1 %i.ed, i8 8, i8 0
  %i.em = or disjoint i8 %i.ei, %i.ej
  %i.en = or disjoint i8 %i.em, %i.ek
  %i.eo = or disjoint i8 %i.en, %i.el
  %i.ep = or disjoint i8 %i.eo, %narrow
  store i8 %i.ep, ptr %i.cp, align 1
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %_ZN4llvm5RISCV11VSETVLIInfo6setAVLERKS1_.exit39
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.ad

bb.ad:                                            ; preds = %_ZNK12_GLOBAL__N_118RISCVInsertVSETVLI11needVSETVLIERKN4llvm5RISCV14DemandedFieldsERKNS2_11VSETVLIInfoES8_.exit, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.ae

bb.ae:                                            ; preds = %bb.f, %bb.ad, %bb.e
  ret void
}

declare noundef zeroext i1 @_ZN4llvm14RISCVInstrInfo19isVectorConfigInstrERKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #6

declare noundef zeroext i1 @_ZN4llvm5RISCV12isVectorCopyEPKNS_18TargetRegisterInfoERKNS_12MachineInstrE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #6

declare noundef zeroext i1 @_ZN4llvm14RISCVInstrInfo24isXSfmmVectorConfigInstrERKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNK12_GLOBAL__N_118RISCVInsertVSETVLI13transferAfterERN4llvm5RISCV11VSETVLIInfoERKNS1_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(20) %1, ptr noundef nonnull align 8 dereferenceable(80) %2) unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %"class.llvm::RISCV::VSETVLIInfo", align 8 ; 4 uses
  %i.a = tail call noundef zeroext i1 @_ZN4llvm14RISCVInstrInfo19isVectorConfigInstrERKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(80) %2) #18
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @_ZNK4llvm5RISCV24RISCVVSETVLIInfoAnalysis17getInfoForVSETVLIERKNS_12MachineInstrE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::RISCV::VSETVLIInfo") align 8 %3, ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(80) %2) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef nonnull align 8 dereferenceable(20) %3, i64 20, i1 false), !tbaa.struct !416
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.s

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_ZN4llvm14RISCVInstrInfo28isXSfmmVectorConfigTMTKInstrERKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(80) %2) #18
  br i1 %i.c, label %bb.s, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call noundef zeroext i1 @_ZN4llvm14RISCVInstrInfo20isFaultOnlyFirstLoadERKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(80) %2) #18
  br i1 %i.d, label %bb.e, label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !342  ; 7 uses
  %.not = icmp eq ptr %i.f, null
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !499
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 36
  %i.j = load i32, ptr %i.i, align 4, !tbaa !349  ; 4 uses
  br i1 %.not, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = and i32 %i.j, 2147483647                 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 144 ; 3 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !64   ; 3 uses
  %i.n = icmp ugt i32 %i.m, %i.k
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 136 ; 3 uses
  br i1 %i.n, label %_ZNK4llvm13LiveIntervals11hasIntervalENS_8RegisterE.exit.i, label %bb.g

_ZNK4llvm13LiveIntervals11hasIntervalENS_8RegisterE.exit.i: ; preds = %bb.f
  %i.p = zext nneg i32 %i.k to i64                ; 2 uses
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !21   ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.p
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !520  ; 2 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZN4llvm13LiveIntervals31createAndComputeVirtRegIntervalENS_8RegisterE.exit.i, label %_ZN4llvm13LiveIntervals11getIntervalENS_8RegisterE.exit

bb.g:                                             ; preds = %bb.f
  %i.t = add nuw i32 %i.k, 1
  %i.u = zext i32 %i.t to i64                     ; 2 uses
  %i.v = zext nneg i32 %i.m to i64                ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 152 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !521  ; 2 uses
  %i.y = sub nuw nsw i64 %i.u, %i.v               ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 148
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !66
  %.not.i.i.i.i.i.not.i.i.i.i = icmp ult i32 %i.k, %i.aa
  br i1 %.not.i.i.i.i.i.not.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12LiveIntervalELb1EE28reserveForParamAndGetAddressERS2_m.exit.i.i.i.i.i.i.i, label %bb.h, !prof !67

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(25) %i.o, ptr noundef nonnull %i.w, i64 noundef %i.u, i64 noundef 8) #18
  %.pre.i.i.i.i.i.i.i = load i32, ptr %i.l, align 8, !tbaa !64 ; 2 uses
  %.pre.i.i.i.i.i.i = zext i32 %.pre.i.i.i.i.i.i.i to i64
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12LiveIntervalELb1EE28reserveForParamAndGetAddressERS2_m.exit.i.i.i.i.i.i.i

_ZN4llvm23SmallVectorTemplateBaseIPNS_12LiveIntervalELb1EE28reserveForParamAndGetAddressERS2_m.exit.i.i.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.pre-phi.i.i.i.i.i.i = phi i64 [ %i.v, %bb.g ], [ %.pre.i.i.i.i.i.i, %bb.h ]
  %i.ab = phi i32 [ %i.m, %bb.g ], [ %.pre.i.i.i.i.i.i.i, %bb.h ]
  %i.ac = load ptr, ptr %i.o, align 8, !tbaa !21  ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.pre-phi.i.i.i.i.i.i ; 4 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.y, 3
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i
  %i.af = and i32 %i.j, 2147483647
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = sub nsw i64 %i.ag, %i.v
  %i.ai = and i64 %i.ah, 2305843009213693951      ; 2 uses
  %i.aj = add nuw nsw i64 %i.ai, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ai, 3
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_12LiveIntervalELb1EE28reserveForParamAndGetAddressERS2_m.exit.i.i.i.i.i.i.i
  %n.vec = and i64 %i.aj, 4611686018427387900     ; 3 uses
  %i.ak = shl i64 %n.vec, 3
  %i.al = getelementptr i8, ptr %i.ad, i64 %i.ak
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %i.x, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.am = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.ad, i64 %i.am ; 2 uses
  %i.an = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %broadcast.splat, ptr %next.gep, align 8, !tbaa !520
  store <2 x ptr> %broadcast.splat, ptr %i.an, align 8, !tbaa !520
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !727

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aj, %n.vec
  br i1 %cmp.n, label %_ZN4llvm10IndexedMapIPNS_12LiveIntervalENS_20VirtReg2IndexFunctorEE6resizeEm.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader:       ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_12LiveIntervalELb1EE28reserveForParamAndGetAddressERS2_m.exit.i.i.i.i.i.i.i, %middle.block
  %.07.i.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.ad, %_ZN4llvm23SmallVectorTemplateBaseIPNS_12LiveIntervalELb1EE28reserveForParamAndGetAddressERS2_m.exit.i.i.i.i.i.i.i ], [ %i.al, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store ptr %i.x, ptr %.07.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !520
  %i.ap = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ap, %i.ae
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm10IndexedMapIPNS_12LiveIntervalENS_20VirtReg2IndexFunctorEE6resizeEm.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !728

_ZN4llvm10IndexedMapIPNS_12LiveIntervalENS_20VirtReg2IndexFunctorEE6resizeEm.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block
  %i.aq = trunc nuw i64 %i.y to i32
  %i.ar = add i32 %i.ab, %i.aq
  store i32 %i.ar, ptr %i.l, align 8, !tbaa !64
  %.pre.i = zext nneg i32 %i.k to i64
  br label %_ZN4llvm13LiveIntervals31createAndComputeVirtRegIntervalENS_8RegisterE.exit.i

_ZN4llvm13LiveIntervals31createAndComputeVirtRegIntervalENS_8RegisterE.exit.i: ; preds = %_ZN4llvm10IndexedMapIPNS_12LiveIntervalENS_20VirtReg2IndexFunctorEE6resizeEm.exit.i.i.i.i, %_ZNK4llvm13LiveIntervals11hasIntervalENS_8RegisterE.exit.i
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZN4llvm10IndexedMapIPNS_12LiveIntervalENS_20VirtReg2IndexFunctorEE6resizeEm.exit.i.i.i.i ], [ %i.p, %_ZNK4llvm13LiveIntervals11hasIntervalENS_8RegisterE.exit.i ]
  %i.as = phi ptr [ %i.ac, %_ZN4llvm10IndexedMapIPNS_12LiveIntervalENS_20VirtReg2IndexFunctorEE6resizeEm.exit.i.i.i.i ], [ %i.q, %_ZNK4llvm13LiveIntervals11hasIntervalENS_8RegisterE.exit.i ]
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %.pre-phi.i
  %i.au = tail call noundef nonnull align 8 dereferenceable(120) ptr @_ZN4llvm13LiveIntervals14createIntervalENS_8RegisterE(i32 %i.j) #18 ; 3 uses
  store ptr %i.au, ptr %i.at, align 8, !tbaa !520
  %i.av = tail call noundef zeroext i1 @_ZN4llvm13LiveIntervals22computeVirtRegIntervalERNS_12LiveIntervalE(ptr noundef nonnull align 8 dereferenceable(424) %i.f, ptr noundef nonnull align 8 dereferenceable(120) %i.au) #18 ; 0 uses
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !342
  br label %_ZN4llvm13LiveIntervals11getIntervalENS_8RegisterE.exit

_ZN4llvm13LiveIntervals11getIntervalENS_8RegisterE.exit: ; preds = %_ZNK4llvm13LiveIntervals11hasIntervalENS_8RegisterE.exit.i, %_ZN4llvm13LiveIntervals31createAndComputeVirtRegIntervalENS_8RegisterE.exit.i
  %i.aw = phi ptr [ %.pre, %_ZN4llvm13LiveIntervals31createAndComputeVirtRegIntervalENS_8RegisterE.exit.i ], [ %i.f, %_ZNK4llvm13LiveIntervals11hasIntervalENS_8RegisterE.exit.i ]
  %.0.i = phi ptr [ %i.au, %_ZN4llvm13LiveIntervals31createAndComputeVirtRegIntervalENS_8RegisterE.exit.i ], [ %i.s, %_ZNK4llvm13LiveIntervals11hasIntervalENS_8RegisterE.exit.i ] ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !440 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !480 ; 2 uses
  %i.bb = and i32 %i.ba, 4
  %.not2.i.i = icmp eq i32 %i.bb, 0
  br i1 %.not2.i.i, label %_ZN4llvm14getBundleStartENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4llvm13LiveIntervals11getIntervalENS_8RegisterE.exit, %.lr.ph.i.i
  %.sroa.0.03.i.i = phi ptr [ %i.bd, %.lr.ph.i.i ], [ %2, %_ZN4llvm13LiveIntervals11getIntervalENS_8RegisterE.exit ]
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.0.03.i.i, align 8
  %i.bc = and i64 %.0.copyload.i.i.i.i.i.i.i.i, -8
  %i.bd = inttoptr i64 %i.bc to ptr               ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 44
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !480
  %i.bg = and i32 %i.bf, 4
  %.not.i.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i, label %_ZN4llvm14getBundleStartENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i, label %.lr.ph.i.i, !llvm.loop !562

_ZN4llvm14getBundleStartENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i: ; preds = %.lr.ph.i.i, %_ZN4llvm13LiveIntervals11getIntervalENS_8RegisterE.exit
  %.sroa.0.0.lcssa.i.i = phi ptr [ %2, %_ZN4llvm13LiveIntervals11getIntervalENS_8RegisterE.exit ], [ %i.bd, %.lr.ph.i.i ] ; 3 uses
  %i.bh = and i32 %i.ba, 8
  %.not3.i.i = icmp eq i32 %i.bh, 0
  br i1 %.not3.i.i, label %_ZN4llvm12getBundleEndENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i, label %.lr.ph.i11.i

.lr.ph.i11.i:                                     ; preds = %_ZN4llvm14getBundleStartENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i, %.lr.ph.i11.i
  %.sroa.0.04.i.i = phi ptr [ %i.bj, %.lr.ph.i11.i ], [ %2, %_ZN4llvm14getBundleStartENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i.i, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !479 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 44
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !480
  %i.bm = and i32 %i.bl, 8
  %.not.i12.i = icmp eq i32 %i.bm, 0
  br i1 %.not.i12.i, label %_ZN4llvm12getBundleEndENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i, label %.lr.ph.i11.i, !llvm.loop !563

_ZN4llvm12getBundleEndENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i: ; preds = %.lr.ph.i11.i, %_ZN4llvm14getBundleStartENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i
  %.sroa.0.0.lcssa.i13.i = phi ptr [ %2, %_ZN4llvm14getBundleStartENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit.i ], [ %i.bj, %.lr.ph.i11.i ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i13.i, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !479 ; 3 uses
  %.not8.i.i = icmp eq ptr %.sroa.0.0.lcssa.i.i, %i.bo
  br i1 %.not8.i.i, label %_ZN4llvm28skipDebugInstructionsForwardINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEEEET_S7_S7_b.exit.i, label %.lr.ph.i14.i
end_hunk_0
