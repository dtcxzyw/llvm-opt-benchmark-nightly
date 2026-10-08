Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ARMISelLowering?download=true
inline.NumInlined: 20230
inline.NumDeleted: 4242
loop-unroll.NumCompletelyUnrolled: 128
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 150
begin_hunk_0_@_ZNK4llvm17ARMTargetLowering10LowerBR_CCENS_7SDValueERNS_12SelectionDAGE:bb.a
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !98 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 461
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !194, !range !50, !noundef !51
  %i.bb = trunc nuw i8 %i.ba to i1
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 410
  %i.bd = load i8, ptr %i.bc, align 2, !range !50
  %i.be = trunc nuw i8 %i.bd to i1
  %not. = xor i1 %i.bb, true
  %i.bf = select i1 %not., i1 true, i1 %i.be
  br label %bb.g

bb.g:                                             ; preds = %_ZNK4llvm17ARMTargetLowering25isUnsupportedFloatingTypeENS_3EVTE.exit.thread, %bb.f
  %i.bg = phi i1 [ false, %_ZNK4llvm17ARMTargetLowering25isUnsupportedFloatingTypeENS_3EVTE.exit.thread ], [ %i.bf, %bb.f ]
  %i.bh = load i32, ptr %i.q, align 8, !tbaa !737
  %i.bi = icmp eq i32 %i.bh, 1
  br i1 %i.bi, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  %.sroa.0107.0.copyload = load ptr, ptr %13, align 8, !tbaa !374
  %.sroa.2108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  %.sroa.2108.0.copyload = load i32, ptr %.sroa.2108.0..sroa_idx, align 8, !tbaa !324
  %i.bj = call noundef zeroext i1 @_ZN4llvm13isOneConstantENS_7SDValueE(ptr %.sroa.0107.0.copyload, i32 %.sroa.2108.0.copyload) #38
  br i1 %i.bj, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.sroa.0104.0.copyload = load ptr, ptr %13, align 8, !tbaa !374
  %.sroa.2105.0.copyload = load i32, ptr %.sroa.2108.0..sroa_idx, align 8, !tbaa !324
  %i.bk = call noundef zeroext i1 @_ZN4llvm14isNullConstantENS_7SDValueE(ptr %.sroa.0104.0.copyload, i32 %.sroa.2105.0.copyload) #38
  br i1 %i.bk, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bl = add i32 %i.av, -79
  %or.cond7 = icmp ult i32 %i.bl, 4
  %or.cond9 = or i1 %or.cond7, %i.bg
  br i1 %or.cond9, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.bm = load i32, ptr %i.a, align 4, !tbaa !827
  switch i32 %i.bm, label %bb.o [
    i32 22, label %bb.l
    i32 17, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k, %bb.k
  %i.bn = load ptr, ptr %12, align 8, !tbaa !602  ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 48
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !352
  %.sroa.0.0.copyload.i = load i16, ptr %i.bp, align 8, !tbaa !58 ; 2 uses
  %.not.i = icmp eq i16 %.sroa.0.0.copyload.i, 0
  br i1 %.not.i, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit

_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit: ; preds = %bb.l
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.br = zext i16 %.sroa.0.0.copyload.i to i64
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.br
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !60
  %.not214 = icmp eq ptr %i.bt, null
  br i1 %.not214, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread, label %bb.m

bb.m:                                             ; preds = %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit
  store ptr null, ptr %16, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  store i32 0, ptr %i.bu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #38
  call void @_ZNK4llvm17ARMTargetLowering13getARMXALUOOpENS_7SDValueERNS_12SelectionDAGERS1_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.633") align 8 %17, ptr nonnull align 8 poison, ptr nonnull %i.bn, i32 0, ptr noundef nonnull align 8 dereferenceable(920) %3, ptr noundef nonnull align 8 dereferenceable(12) %16)
  %i.bv = getelementptr inbounds nuw i8, ptr %17, i64 16
  %.sroa.0203.0.copyload204 = load ptr, ptr %i.bv, align 8, !tbaa !374
  %.sroa.5205.0..sroa_idx206 = getelementptr inbounds nuw i8, ptr %17, i64 24
  %.sroa.5205.0.copyload207 = load i32, ptr %.sroa.5205.0..sroa_idx206, align 8, !tbaa !324
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #38
  %i.bw = load i32, ptr %i.a, align 4, !tbaa !827
  %.sroa.093.0.copyload = load ptr, ptr %13, align 8, !tbaa !374
  %.sroa.294.0.copyload = load i32, ptr %.sroa.2108.0..sroa_idx, align 8, !tbaa !324
  %i.bx = call noundef zeroext i1 @_ZN4llvm13isOneConstantENS_7SDValueE(ptr %.sroa.093.0.copyload, i32 %.sroa.294.0.copyload) #38
  %i.by = icmp ne i32 %i.bw, 22
  %.not149 = xor i1 %i.by, %i.bx
  br i1 %.not149, label %bb.n, label %switch.lookup

switch.lookup:                                    ; preds = %bb.m
  %.sroa.087.0.copyload = load ptr, ptr %16, align 8 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.087.0.copyload, i64 88
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !795 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 24 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !698
  %i.ce = icmp ult i32 %i.cd, 65
  %i.cf = load ptr, ptr %i.cb, align 8
  %spec.select.i.i.i.i = select i1 %i.ce, ptr %i.cb, ptr %i.cf
  %.0.i.i.i.i = load i64, ptr %spec.select.i.i.i.i, align 8, !tbaa !204
  %i.cg = and i64 %.0.i.i.i.i, 4294967295
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZL16CanInvertMVEVCMPN4llvm7SDValueE, i64 %i.cg
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #38
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.087.0.copyload, i64 72
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !764
  store i64 %i.ci, ptr %10, align 8, !tbaa !764
  %i.cj = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.087.0.copyload, i64 68
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !765
  store i32 %i.cl, ptr %i.cj, align 8, !tbaa !766
  %i.cm = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef %switch.ext, ptr noundef nonnull align 8 dereferenceable(12) %10, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #38 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #38
  %.fca.0.extract83 = extractvalue { ptr, i32 } %i.cm, 0
  %.fca.1.extract84 = extractvalue { ptr, i32 } %i.cm, 1
  store ptr %.fca.0.extract83, ptr %16, align 8
  store i32 %.fca.1.extract84, ptr %i.bu, align 8
  br label %bb.n

bb.n:                                             ; preds = %switch.lookup, %bb.m
  store ptr %.sroa.0203.0.copyload204, ptr %18, align 8, !tbaa !374
  %.sroa.5205.0..sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i32 %.sroa.5205.0.copyload207, ptr %.sroa.5205.0..sroa_idx, align 8, !tbaa !324
  %i.cn = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 544, ptr noundef nonnull align 8 dereferenceable(12) %15, i16 1, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %11, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %14, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %16, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %18) #38 ; 2 uses
  %.fca.0.extract79 = extractvalue { ptr, i32 } %i.cn, 0
  %.fca.1.extract80 = extractvalue { ptr, i32 } %i.cn, 1
  br label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread

bb.o:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.g
  %i.co = load ptr, ptr %12, align 8, !tbaa !602  ; 2 uses
  %i.cp = load i32, ptr %i.q, align 8, !tbaa !737 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 48
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !352
  %i.cs = zext i32 %i.cp to i64
  %i.ct = getelementptr inbounds nuw [16 x i8], ptr %i.cr, i64 %i.cs ; 2 uses
  %.sroa.0.0.copyload.i.i162 = load i16, ptr %i.ct, align 8, !tbaa !58
  %.sroa.21.0..sroa_idx.i.i163 = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %.sroa.21.0.copyload.i.i164 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i163, align 8, !tbaa !353
  %.not.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i162, 7
  %i.cu = icmp eq ptr %.sroa.21.0.copyload.i.i164, null
  %.not4.i = select i1 %.not.i.i, i1 %i.cu, i1 false
  br i1 %.not4.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store ptr null, ptr %19, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i32 0, ptr %i.cv, align 8
  %.sroa.070.0.copyload = load ptr, ptr %13, align 8, !tbaa !374
  %.sroa.271.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 8
  %.sroa.271.0.copyload = load i32, ptr %.sroa.271.0..sroa_idx, align 8, !tbaa !324
  %i.cw = load i32, ptr %i.a, align 4, !tbaa !827
  %i.cx = call { ptr, i32 } @_ZNK4llvm17ARMTargetLowering9getARMCmpENS_7SDValueES1_NS_3ISD8CondCodeERS1_RNS_12SelectionDAGERKNS_5SDLocE(ptr noundef nonnull align 8 dereferenceable(518466) %0, ptr nonnull %i.co, i32 %i.cp, ptr %.sroa.070.0.copyload, i32 %.sroa.271.0.copyload, i32 noundef %i.cw, ptr noundef nonnull align 8 dereferenceable(12) %19, ptr noundef nonnull align 8 dereferenceable(920) %3, ptr noundef nonnull align 8 dereferenceable(12) %15) ; 2 uses
  %.fca.0.extract66 = extractvalue { ptr, i32 } %i.cx, 0
  %.fca.1.extract67 = extractvalue { ptr, i32 } %i.cx, 1
  store ptr %.fca.0.extract66, ptr %20, align 8, !tbaa !374
  %.sroa.477.0..sroa_idx = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i32 %.fca.1.extract67, ptr %.sroa.477.0..sroa_idx, align 8, !tbaa !324
  %i.cy = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 544, ptr noundef nonnull align 8 dereferenceable(12) %15, i16 1, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %11, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %14, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %19, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %20) #38 ; 2 uses
  %.fca.0.extract62 = extractvalue { ptr, i32 } %i.cy, 0
  %.fca.1.extract63 = extractvalue { ptr, i32 } %i.cy, 1
  br label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread

bb.q:                                             ; preds = %bb.o
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.0.0.copyload.i167 = load i32, ptr %i.cz, align 4, !tbaa !324
  %i.da = and i32 %.sroa.0.0.copyload.i167, 32
  %.not215 = icmp eq i32 %i.da, 0
  br i1 %.not215, label %.critedgethread-pre-split, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store i16 14, ptr %9, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr null, ptr %i.db, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !453
  %i.de = call noundef nonnull align 4 dereferenceable(29) ptr @_ZNK4llvm3EVT15getFltSemanticsEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #38
  %i.df = call i16 @_ZNK4llvm15MachineFunction15getDenormalModeERKNS_12fltSemanticsE(ptr noundef nonnull align 8 dereferenceable(1065) %i.dd, ptr noundef nonnull align 4 dereferenceable(29) %i.de) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %or.cond211 = icmp eq i16 %i.df, 0
  br i1 %or.cond211, label %bb.s, label %.critedgethread-pre-split

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store i16 15, ptr %8, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr null, ptr %i.dg, align 8
  %i.dh = load ptr, ptr %i.dc, align 8, !tbaa !453
  %i.di = call noundef nonnull align 4 dereferenceable(29) ptr @_ZNK4llvm3EVT15getFltSemanticsEv(ptr noundef nonnull align 8 dereferenceable(16) %8) #38
  %i.dj = call i16 @_ZNK4llvm15MachineFunction15getDenormalModeERKNS_12fltSemanticsE(ptr noundef nonnull align 8 dereferenceable(1065) %i.dh, ptr noundef nonnull align 4 dereferenceable(29) %i.di) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %or.cond213 = icmp eq i16 %i.dj, 0
  br i1 %or.cond213, label %bb.t, label %.critedgethread-pre-split

bb.t:                                             ; preds = %bb.s
  %i.dk = load i32, ptr %i.a, align 4, !tbaa !827 ; 2 uses
  switch i32 %i.dk, label %.critedge [
    i32 22, label %.critedge17
    i32 17, label %.critedge17
    i32 1, label %.critedge17
    i32 14, label %.critedge17
  ]

.critedge17:                                      ; preds = %bb.t, %bb.t, %bb.t, %bb.t
  %i.dl = call { ptr, i32 } @_ZNK4llvm17ARMTargetLowering17OptimizeVFPBrcondENS_7SDValueERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518466) %0, ptr nonnull %1, i32 poison, ptr noundef nonnull align 8 dereferenceable(920) %3) ; 2 uses
  %.fca.0.extract53 = extractvalue { ptr, i32 } %i.dl, 0 ; 2 uses
  %.fca.1.extract54 = extractvalue { ptr, i32 } %i.dl, 1
  %.not216 = icmp eq ptr %.fca.0.extract53, null
  br i1 %.not216, label %.critedgethread-pre-split, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread

.critedgethread-pre-split:                        ; preds = %bb.s, %bb.r, %.critedge17, %bb.q
  %.pr = load i32, ptr %i.a, align 4, !tbaa !827
  br label %.critedge

.critedge:                                        ; preds = %bb.t, %.critedgethread-pre-split
  %i.dm = phi i32 [ %.pr, %.critedgethread-pre-split ], [ %i.dk, %bb.t ]
  switch i32 %i.dm, label %bb.u [
    i32 17, label %_ZL11FPCCToARMCCN4llvm3ISD8CondCodeERNS_5ARMCC9CondCodesES4_.exit
    i32 1, label %_ZL11FPCCToARMCCN4llvm3ISD8CondCodeERNS_5ARMCC9CondCodesES4_.exit
    i32 18, label %bb.v
    i32 2, label %bb.v
    i32 19, label %bb.w
    i32 3, label %bb.w
    i32 4, label %bb.x
    i32 5, label %bb.y
    i32 6, label %bb.z
    i32 7, label %bb.aa
    i32 8, label %bb.ab
    i32 9, label %bb.ac
    i32 10, label %bb.ad
    i32 11, label %bb.ae
    i32 20, label %bb.af
    i32 12, label %bb.af
    i32 21, label %bb.ag
    i32 13, label %bb.ag
    i32 22, label %bb.ah
    i32 14, label %bb.ah
  ]

bb.u:                                             ; preds = %.critedge
  unreachable

bb.v:                                             ; preds = %.critedge, %.critedge
  br label %_ZL11FPCCToARMCCN4llvm3ISD8CondCodeERNS_5ARMCC9CondCodesES4_.exit

bb.w:                                             ; preds = %.critedge, %.critedge
  br label %_ZL11FPCCToARMCCN4llvm3ISD8CondCodeERNS_5ARMCC9CondCodesES4_.exit

bb.x:                                             ; preds = %.critedge
  br label %_ZL11FPCCToARMCCN4llvm3ISD8CondCodeERNS_5ARMCC9CondCodesES4_.exit

bb.y:                                             ; preds = %.critedge
  br label %_ZL11FPCCToARMCCN4llvm3ISD8CondCodeERNS_5ARMCC9CondCodesES4_.exit

bb.z:                                             ; preds = %.critedge
  br label %_ZL11FPCCToARMCCN4llvm3ISD8CondCodeERNS_5ARMCC9CondCodesES4_.exit

bb.aa:                                            ; preds = %.critedge
  br label %_ZL11FPCCToARMCCN4llvm3ISD8CondCodeERNS_5ARMCC9CondCodesES4_.exit

bb.ab:                                            ; preds = %.critedge
  br label %_ZL11FPCCToARMCCN4llvm3ISD8CondCodeERNS_5ARMCC9CondCodesES4_.exit

bb.ac:                                            ; preds = %.critedge
  br label %_ZL11FPCCToARMCCN4llvm3ISD8CondCodeERNS_5ARMCC9CondCodesES4_.exit

bb.ad:                                            ; preds = %.critedge
  br label %_ZL11FPCCToARMCCN4llvm3ISD8CondCodeERNS_5ARMCC9CondCodesES4_.exit

bb.ae:                                            ; preds = %.critedge
  br label %_ZL11FPCCToARMCCN4llvm3ISD8CondCodeERNS_5ARMCC9CondCodesES4_.exit

bb.af:                                            ; preds = %.critedge, %.critedge
  br label %_ZL11FPCCToARMCCN4llvm3ISD8CondCodeERNS_5ARMCC9CondCodesES4_.exit

bb.ag:                                            ; preds = %.critedge, %.critedge
  br label %_ZL11FPCCToARMCCN4llvm3ISD8CondCodeERNS_5ARMCC9CondCodesES4_.exit

bb.ah:                                            ; preds = %.critedge, %.critedge
  br label %_ZL11FPCCToARMCCN4llvm3ISD8CondCodeERNS_5ARMCC9CondCodesES4_.exit

_ZL11FPCCToARMCCN4llvm3ISD8CondCodeERNS_5ARMCC9CondCodesES4_.exit: ; preds = %.critedge, %.critedge, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.ah
  %.not148 = phi i1 [ true, %bb.ah ], [ true, %bb.v ], [ true, %bb.w ], [ true, %bb.x ], [ true, %bb.y ], [ false, %bb.z ], [ true, %bb.aa ], [ true, %bb.ab ], [ false, %bb.ac ], [ true, %bb.ad ], [ true, %bb.ae ], [ true, %bb.af ], [ true, %bb.ag ], [ true, %.critedge ], [ true, %.critedge ]
  %.0202 = phi i64 [ 14, %bb.ah ], [ 14, %bb.v ], [ 14, %bb.w ], [ 14, %bb.x ], [ 14, %bb.y ], [ 12, %bb.z ], [ 14, %bb.aa ], [ 14, %bb.ab ], [ 6, %bb.ac ], [ 14, %bb.ad ], [ 14, %bb.ae ], [ 14, %bb.af ], [ 14, %bb.ag ], [ 14, %.critedge ], [ 14, %.critedge ]
  %.0 = phi i64 [ 1, %bb.ah ], [ 12, %bb.v ], [ 10, %bb.w ], [ 4, %bb.x ], [ 9, %bb.y ], [ 4, %bb.z ], [ 7, %bb.aa ], [ 6, %bb.ab ], [ 0, %bb.ac ], [ 8, %bb.ad ], [ 5, %bb.ae ], [ 11, %bb.af ], [ 13, %bb.ag ], [ 0, %.critedge ], [ 0, %.critedge ]
  %i.dn = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef %.0, ptr noundef nonnull align 8 dereferenceable(12) %15, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #38 ; 2 uses
  %.fca.0.extract44 = extractvalue { ptr, i32 } %i.dn, 0
  %.fca.1.extract45 = extractvalue { ptr, i32 } %i.dn, 1
  %.sroa.036.0.copyload = load ptr, ptr %12, align 8, !tbaa !374 ; 2 uses
  %.sroa.237.0.copyload = load i32, ptr %i.q, align 8, !tbaa !324 ; 2 uses
  %.sroa.034.0.copyload = load ptr, ptr %13, align 8, !tbaa !374 ; 2 uses
  %.sroa.235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 8
  %.sroa.235.0.copyload = load i32, ptr %.sroa.235.0..sroa_idx, align 8, !tbaa !324
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.do = call fastcc noundef zeroext i1 @_ZL19isFloatingPointZeroN4llvm7SDValueE(ptr %.sroa.034.0.copyload)
  br i1 %i.do, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %_ZL11FPCCToARMCCN4llvm3ISD8CondCodeERNS_5ARMCC9CondCodesES4_.exit
  store ptr %.sroa.036.0.copyload, ptr %4, align 8, !tbaa !374
  %.sroa.329.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.sroa.237.0.copyload, ptr %.sroa.329.0..sroa_idx.i, align 8, !tbaa !324
  store ptr %.sroa.034.0.copyload, ptr %5, align 8, !tbaa !374
  %.sroa.325.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %.sroa.235.0.copyload, ptr %.sroa.325.0..sroa_idx.i, align 8, !tbaa !324
  %i.dp = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 552, ptr noundef nonnull align 8 dereferenceable(12) %15, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %4, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %5) #38
  br label %_ZNK4llvm17ARMTargetLowering9getVFPCmpENS_7SDValueES1_RNS_12SelectionDAGERKNS_5SDLocEb.exit

bb.aj:                                            ; preds = %_ZL11FPCCToARMCCN4llvm3ISD8CondCodeERNS_5ARMCC9CondCodesES4_.exit
  store ptr %.sroa.036.0.copyload, ptr %6, align 8, !tbaa !374
  %.sroa.329.0..sroa_idx30.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.sroa.237.0.copyload, ptr %.sroa.329.0..sroa_idx30.i, align 8, !tbaa !324
  %i.dq = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 555, ptr noundef nonnull align 8 dereferenceable(12) %15, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %6) #38
  br label %_ZNK4llvm17ARMTargetLowering9getVFPCmpENS_7SDValueES1_RNS_12SelectionDAGERKNS_5SDLocEb.exit

_ZNK4llvm17ARMTargetLowering9getVFPCmpENS_7SDValueES1_RNS_12SelectionDAGERKNS_5SDLocEb.exit: ; preds = %bb.ai, %bb.aj
  %.pn.i = phi { ptr, i32 } [ %i.dq, %bb.aj ], [ %i.dp, %bb.ai ] ; 2 uses
  %.sroa.6.0.i = extractvalue { ptr, i32 } %.pn.i, 1
  %.sroa.041.0.i = extractvalue { ptr, i32 } %.pn.i, 0
  store ptr %.sroa.041.0.i, ptr %7, align 8, !tbaa !374
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %.sroa.6.0.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !324
  %i.dr = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 564, ptr noundef nonnull align 8 dereferenceable(12) %15, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %7) #38 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %.fca.0.extract30 = extractvalue { ptr, i32 } %i.dr, 0 ; 2 uses
  %.fca.1.extract31 = extractvalue { ptr, i32 } %i.dr, 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #38
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %21, ptr noundef nonnull align 8 dereferenceable(12) %11, i64 12, i1 false)
  %i.ds = getelementptr inbounds nuw i8, ptr %21, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.ds, ptr noundef nonnull align 8 dereferenceable(12) %14, i64 12, i1 false)
  %i.dt = getelementptr inbounds nuw i8, ptr %21, i64 32
  store ptr %.fca.0.extract44, ptr %i.dt, align 16, !tbaa !374
  %.sroa.650.0..sroa_idx = getelementptr inbounds nuw i8, ptr %21, i64 40
  store i32 %.fca.1.extract45, ptr %.sroa.650.0..sroa_idx, align 8, !tbaa !324
  %i.du = getelementptr inbounds nuw i8, ptr %21, i64 48
  store ptr %.fca.0.extract30, ptr %i.du, align 16, !tbaa !374
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %21, i64 56
  store i32 %.fca.1.extract31, ptr %.sroa.541.0..sroa_idx, align 8, !tbaa !324
  store ptr %21, ptr %22, align 8, !tbaa !462
  %i.dv = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 4, ptr %i.dv, align 8, !tbaa !463
  %i.dw = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 544, ptr noundef nonnull align 8 dereferenceable(12) %15, i16 1, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.429") align 8 %22) #38 ; 2 uses
  %.fca.0.extract26 = extractvalue { ptr, i32 } %i.dw, 0 ; 2 uses
  %.fca.1.extract27 = extractvalue { ptr, i32 } %i.dw, 1 ; 2 uses
  br i1 %.not148, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %_ZNK4llvm17ARMTargetLowering9getVFPCmpENS_7SDValueES1_RNS_12SelectionDAGERKNS_5SDLocEb.exit
  %i.dx = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef %.0202, ptr noundef nonnull align 8 dereferenceable(12) %15, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #38 ; 2 uses
  %.fca.0.extract19 = extractvalue { ptr, i32 } %i.dx, 0
  %.fca.1.extract20 = extractvalue { ptr, i32 } %i.dx, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #38
  store ptr %.fca.0.extract26, ptr %23, align 16, !tbaa !374
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i32 %.fca.1.extract27, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !324
  %i.dy = getelementptr inbounds nuw i8, ptr %23, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.dy, ptr noundef nonnull align 8 dereferenceable(12) %14, i64 12, i1 false)
  %i.dz = getelementptr inbounds nuw i8, ptr %23, i64 32
  store ptr %.fca.0.extract19, ptr %i.dz, align 16, !tbaa !374
  %.sroa.650.0..sroa_idx51 = getelementptr inbounds nuw i8, ptr %23, i64 40
  store i32 %.fca.1.extract20, ptr %.sroa.650.0..sroa_idx51, align 8, !tbaa !324
  %i.ea = getelementptr inbounds nuw i8, ptr %23, i64 48
  store ptr %.fca.0.extract30, ptr %i.ea, align 16, !tbaa !374
  %.sroa.541.0..sroa_idx42 = getelementptr inbounds nuw i8, ptr %23, i64 56
  store i32 %.fca.1.extract31, ptr %.sroa.541.0..sroa_idx42, align 8, !tbaa !324
  store ptr %23, ptr %24, align 8, !tbaa !462
  %i.eb = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i64 4, ptr %i.eb, align 8, !tbaa !463
  %i.ec = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 544, ptr noundef nonnull align 8 dereferenceable(12) %15, i16 1, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.429") align 8 %24) #38 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.ec, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.ec, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #38
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %_ZNK4llvm17ARMTargetLowering9getVFPCmpENS_7SDValueES1_RNS_12SelectionDAGERKNS_5SDLocEb.exit
  %.sroa.10.0 = phi i32 [ %.fca.1.extract27, %_ZNK4llvm17ARMTargetLowering9getVFPCmpENS_7SDValueES1_RNS_12SelectionDAGERKNS_5SDLocEb.exit ], [ %.fca.1.extract, %bb.ak ]
  %.sroa.0200.0 = phi ptr [ %.fca.0.extract26, %_ZNK4llvm17ARMTargetLowering9getVFPCmpENS_7SDValueES1_RNS_12SelectionDAGERKNS_5SDLocEb.exit ], [ %.fca.0.extract, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #38
  br label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread

_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread: ; preds = %bb.l, %bb.al, %.critedge17, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit, %bb.p, %bb.n
  %.sroa.10.2 = phi i32 [ %.fca.1.extract63, %bb.p ], [ 0, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit ], [ %.fca.1.extract80, %bb.n ], [ %.sroa.10.0, %bb.al ], [ %.fca.1.extract54, %.critedge17 ], [ 0, %bb.l ]
  %.sroa.0200.2 = phi ptr [ %.fca.0.extract62, %bb.p ], [ null, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit ], [ %.fca.0.extract79, %bb.n ], [ %.sroa.0200.0, %bb.al ], [ %.fca.0.extract53, %.critedge17 ], [ null, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0200.2, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.10.2, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZNK4llvm17ARMTargetLowering10LowerBR_JTENS_7SDValueERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518466) %0, ptr nofree readonly captures(none) %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(920) %3) local_unnamed_addr #3 align 2 {
bb.a:
  %4 = alloca %"class.llvm::SDLoc", align 8       ; 14 uses
  %5 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %6 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %7 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %8 = alloca %"class.llvm::SDValue", align 8     ; 4 uses
  %9 = alloca %"class.llvm::SDValue", align 8     ; 4 uses
  %10 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %11 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %12 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %13 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %14 = alloca %"struct.llvm::MachinePointerInfo", align 8 ; 2 uses
  %15 = alloca %"struct.llvm::AAMDNodes", align 8 ; 4 uses
end_hunk_0
