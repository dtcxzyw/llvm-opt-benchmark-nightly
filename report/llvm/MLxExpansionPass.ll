Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MLxExpansionPass?download=true
inline.NumInlined: 558
inline.NumDeleted: 362
begin_hunk_0_@_ZN4llvm4Pass18getAsPMDataManagerEv
declare noundef ptr @_ZN4llvm4Pass18getAsPMDataManagerEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #7

declare void @_ZNK4llvm4Pass14verifyAnalysisEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #7

declare void @_ZN4llvm4Pass17dumpPassStructureEj(ptr noundef nonnull align 8 dereferenceable(28), i32 noundef) unnamed_addr #7

declare noundef zeroext i1 @_ZN4llvm19MachineFunctionPass13runOnFunctionERNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(140)) unnamed_addr #7

declare noundef zeroext i1 @_ZN4llvm19MachineFunctionPass11printIRUnitERNS_11raw_ostreamERNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(140)) unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZN12_GLOBAL__N_112MLxExpansion20runOnMachineFunctionERN4llvm15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(1065) %1) unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %3 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %4 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %5 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %6 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %7 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %8 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %9 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %10 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %11 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %12 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %13 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %14 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %15 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !32, !nonnull !19, !align !149
  %i.f = tail call noundef zeroext i1 @_ZNK4llvm12FunctionPass12skipFunctionERKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(140) %i.e) #13
  br i1 %i.f, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !150, !nonnull !19, !align !149 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 128
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef ptr %i.k(ptr noundef nonnull align 8 dereferenceable(344) %i.h) #13
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !151
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !150, !nonnull !19, !align !149 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 200
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef ptr %i.q(ptr noundef nonnull align 8 dereferenceable(344) %i.n) #13
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store ptr %i.r, ptr %i.s, align 8, !tbaa !159
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !160
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 11 uses
  store ptr %i.u, ptr %i.v, align 8, !tbaa !161
  %i.w = load ptr, ptr %i.g, align 8, !tbaa !150, !nonnull !19, !align !149 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 353
  %i.y = load i8, ptr %i.x, align 1, !tbaa !162, !range !18, !noundef !19
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 480
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !280 ; 3 uses
  switch i32 %i.ab, label %_ZNK4llvm12ARMSubtarget8isLikeA9Ev.exit [
    i32 18, label %_ZNK4llvm12ARMSubtarget8isLikeA9Ev.exit.thread
    i32 1, label %_ZNK4llvm12ARMSubtarget8isLikeA9Ev.exit.thread
    i32 5, label %_ZNK4llvm12ARMSubtarget8isLikeA9Ev.exit.thread
  ]

_ZNK4llvm12ARMSubtarget8isLikeA9Ev.exit:          ; preds = %bb.c
  %i.ac = icmp eq i32 %i.ab, 13
  %i.ad = zext i1 %i.ac to i8
  br label %_ZNK4llvm12ARMSubtarget8isLikeA9Ev.exit.thread

_ZNK4llvm12ARMSubtarget8isLikeA9Ev.exit.thread:   ; preds = %bb.c, %bb.c, %bb.c, %_ZNK4llvm12ARMSubtarget8isLikeA9Ev.exit
  %i.ae = phi i8 [ %i.ad, %_ZNK4llvm12ARMSubtarget8isLikeA9Ev.exit ], [ 1, %bb.c ], [ 1, %bb.c ], [ 1, %bb.c ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store i8 %i.ae, ptr %i.af, align 8, !tbaa !281
  %i.ag = icmp eq i32 %i.ab, 13
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 81 ; 2 uses
  %i.ai = zext i1 %i.ag to i8
  store i8 %i.ai, ptr %i.ah, align 1, !tbaa !282
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 2 uses
  %.sroa.017.030 = load ptr, ptr %i.aj, align 8, !tbaa !283 ; 2 uses
  %.not31 = icmp eq ptr %.sroa.017.030, %i.ak
  br i1 %.not31, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK4llvm12ARMSubtarget8isLikeA9Ev.exit.thread
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 7 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.au = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.ax = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.br = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.bu = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZN12_GLOBAL__N_112MLxExpansion23ExpandFPMLxInstructionsERN4llvm17MachineBasicBlockE.exit
  %.sroa.017.033 = phi ptr [ %.sroa.017.030, %.lr.ph ], [ %.sroa.017.0, %_ZN12_GLOBAL__N_112MLxExpansion23ExpandFPMLxInstructionsERN4llvm17MachineBasicBlockE.exit ] ; 4 uses
  %.01632 = phi i1 [ false, %.lr.ph ], [ %.0.lcssa.i, %_ZN12_GLOBAL__N_112MLxExpansion23ExpandFPMLxInstructionsERN4llvm17MachineBasicBlockE.exit ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.al, i8 0, i64 36, i1 false)
  %i.ca = load i8, ptr %i.an, align 8, !tbaa !14, !range !18, !noundef !19
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cc = load i32, ptr %i.ao, align 4, !tbaa !30
  %i.cd = shl i32 %i.cc, 2
  %i.ce = load i32, ptr %i.ap, align 8, !tbaa !29 ; 3 uses
  %i.cf = icmp ult i32 %i.cd, %i.ce
  %i.cg = icmp ugt i32 %i.ce, 32
  %or.cond.i.i = and i1 %i.cf, %i.cg
  br i1 %or.cond.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @_ZN4llvm19SmallPtrSetImplBase16shrink_and_clearEv(ptr noundef nonnull align 8 dereferenceable(17) %i.am) #13
  br label %_ZN4llvm19SmallPtrSetImplBase5clearEv.exit.i

bb.g:                                             ; preds = %bb.e
  %i.ch = load ptr, ptr %i.am, align 8, !tbaa !20
  %i.ci = zext i32 %i.ce to i64
  %i.cj = shl nuw nsw i64 %i.ci, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ch, i8 -1, i64 %i.cj, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  store i32 0, ptr %i.ao, align 4, !tbaa !30
  br label %_ZN4llvm19SmallPtrSetImplBase5clearEv.exit.i

_ZN4llvm19SmallPtrSetImplBase5clearEv.exit.i:     ; preds = %bb.h, %bb.f
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.017.033, i64 48 ; 3 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ck, align 8
  %i.cl = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, -8
  %i.cm = inttoptr i64 %i.cl to ptr               ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cm) ]
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.cm, align 8
  %i.cn = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i.i.i = icmp eq i64 %i.cn, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i, label %_ZN4llvm17MachineBasicBlock6rbeginEv.exit.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i: ; preds = %_ZN4llvm19SmallPtrSetImplBase5clearEv.exit.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 44
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !284
  %i.cq = and i32 %i.cp, 4
  %.not45.i.i.i.i.i = icmp eq i32 %i.cq, 0
  br i1 %.not45.i.i.i.i.i, label %_ZN4llvm17MachineBasicBlock6rbeginEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i
  %.sroa.0.06.i.i.i.i.i = phi ptr [ %i.cs, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i ], [ %i.cm, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i ]
  %.0.copyload.i.i.i.i.i.i1.i.i.i.i.i = load i64, ptr %.sroa.0.06.i.i.i.i.i, align 8
  %i.cr = and i64 %.0.copyload.i.i.i.i.i.i1.i.i.i.i.i, -8
  %i.cs = inttoptr i64 %i.cr to ptr               ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 44
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !284
  %i.cv = and i32 %i.cu, 4
  %.not4.i.i.i.i.i = icmp eq i32 %i.cv, 0
  br i1 %.not4.i.i.i.i.i, label %_ZN4llvm17MachineBasicBlock6rbeginEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i, !llvm.loop !301

_ZN4llvm17MachineBasicBlock6rbeginEv.exit.i:      ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i, %_ZN4llvm19SmallPtrSetImplBase5clearEv.exit.i
  %.sroa.0.1.i.i.i.i.i = phi ptr [ %i.cm, %_ZN4llvm19SmallPtrSetImplBase5clearEv.exit.i ], [ %i.cm, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i ], [ %i.cs, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i ] ; 2 uses
  %.not3749.i = icmp eq ptr %.sroa.0.1.i.i.i.i.i, %i.ck
  br i1 %.not3749.i, label %_ZN12_GLOBAL__N_112MLxExpansion23ExpandFPMLxInstructionsERN4llvm17MachineBasicBlockE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4llvm17MachineBasicBlock6rbeginEv.exit.i, %bb.bf
  %.052.i = phi i32 [ %.3.i, %bb.bf ], [ 0, %_ZN4llvm17MachineBasicBlock6rbeginEv.exit.i ] ; 7 uses
  %.01651.i = phi i1 [ %.4.i, %bb.bf ], [ false, %_ZN4llvm17MachineBasicBlock6rbeginEv.exit.i ] ; 10 uses
  %.sroa.030.050.i = phi ptr [ %.sroa.0.1.i.i.i.i.i.i, %bb.bf ], [ %.sroa.0.1.i.i.i.i.i, %_ZN4llvm17MachineBasicBlock6rbeginEv.exit.i ] ; 16 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i.i22.i = load i64, ptr %.sroa.030.050.i, align 8
  %i.cw = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i22.i, -8
  %i.cx = inttoptr i64 %i.cw to ptr               ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cx) ]
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.cx, align 8
  %i.cy = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i.i.i.i = icmp eq i64 %i.cy, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEi.exit.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i: ; preds = %.lr.ph.i
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 44
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !284
  %i.db = and i32 %i.da, 4
  %.not45.i.i.i.i.i.i = icmp eq i32 %i.db, 0
  br i1 %.not45.i.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEi.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i
  %.sroa.0.06.i.i.i.i.i.i = phi ptr [ %i.dd, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i ], [ %i.cx, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i ]
  %.0.copyload.i.i.i.i.i.i1.i.i.i.i.i.i = load i64, ptr %.sroa.0.06.i.i.i.i.i.i, align 8
  %i.dc = and i64 %.0.copyload.i.i.i.i.i.i1.i.i.i.i.i.i, -8
  %i.dd = inttoptr i64 %i.dc to ptr               ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 44
  %i.df = load i32, ptr %i.de, align 4, !tbaa !284
  %i.dg = and i32 %i.df, 4
  %.not4.i.i.i.i.i.i = icmp eq i32 %i.dg, 0
  br i1 %.not4.i.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEi.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i, !llvm.loop !301

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEi.exit.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i, %.lr.ph.i
  %.sroa.0.1.i.i.i.i.i.i = phi ptr [ %i.cx, %.lr.ph.i ], [ %i.cx, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i ], [ %i.dd, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i ] ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.030.050.i, i64 52
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !303
  switch i32 %i.di, label %bb.i [
    i32 20, label %bb.bf
    i32 10, label %bb.bf
    i32 6, label %bb.bf
    i32 5, label %bb.bf
    i32 4, label %bb.bf
    i32 3, label %bb.bf
  ]

bb.i:                                             ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEi.exit.i
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.030.050.i, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !304 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.030.050.i, i64 44
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !284 ; 2 uses
  %i.dn = and i32 %i.dm, 12
  %i.do = icmp eq i32 %i.dn, 0
  %i.dp = and i32 %i.dm, 4
  %i.dq = icmp ne i32 %i.dp, 0
  %or.cond.i.i.i = or i1 %i.do, %i.dq
  br i1 %or.cond.i.i.i, label %.split.i, label %_ZNK4llvm12MachineInstr9isBarrierENS0_9QueryTypeE.exit.i

.split.i:                                         ; preds = %bb.i
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !305
  %i.dt = and i64 %i.ds, 256
  %.not38.i = icmp eq i64 %i.dt, 0
  br i1 %.not38.i, label %bb.k, label %bb.j

_ZNK4llvm12MachineInstr9isBarrierENS0_9QueryTypeE.exit.i: ; preds = %bb.i
  %i.du = call noundef zeroext i1 @_ZNK4llvm12MachineInstr19hasPropertyInBundleEmNS0_9QueryTypeE(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.030.050.i, i64 noundef 256, i32 noundef 1) #13
  br i1 %i.du, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNK4llvm12MachineInstr9isBarrierENS0_9QueryTypeE.exit.i, %.split.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.al, i8 0, i64 36, i1 false)
  br label %bb.bf, !llvm.loop !308

bb.k:                                             ; preds = %_ZNK4llvm12MachineInstr9isBarrierENS0_9QueryTypeE.exit.i, %.split.i
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !309
  %i.dx = and i64 %i.dw, 491520
  %i.dy = icmp eq i64 %i.dx, 0
  br i1 %i.dy, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.dz = add i32 %.052.i, 1                      ; 2 uses
  %i.ea = icmp eq i32 %i.dz, 2
  br i1 %i.ea, label %bb.m, label %bb.bf

bb.m:                                             ; preds = %bb.l
  %i.eb = load i32, ptr %i.al, align 4, !tbaa !310 ; 2 uses
  %i.ec = zext i32 %i.eb to i64
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ec
  store ptr null, ptr %i.ed, align 8, !tbaa !311
  %i.ee = add i32 %i.eb, 1                        ; 2 uses
  %i.ef = icmp eq i32 %i.ee, 4
  %spec.select.i23.i = select i1 %i.ef, i32 0, i32 %i.ee
  store i32 %spec.select.i23.i, ptr %i.al, align 4, !tbaa !310
  br label %bb.bf

bb.n:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  %i.eg = load ptr, ptr %i.m, align 8, !tbaa !151
  %i.eh = load i32, ptr %i.dk, align 8, !tbaa !313
  %i.ei = call noundef zeroext i1 @_ZNK4llvm16ARMBaseInstrInfo18isFpMLxInstructionEjRjS1_RbS2_(ptr noundef nonnull align 8 dereferenceable(272) %i.eg, i32 noundef %i.eh, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull align 1 dereferenceable(1) %i.d) #13
  %i.ej = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL11ExpandLimit, i64 120), align 8
  %.not.not.i.i = icmp ne i32 %i.ej, 0
  %or.cond36.not.i = select i1 %i.ei, i1 %.not.not.i.i, i1 false
  br i1 %or.cond36.not.i, label %bb.o, label %_ZN12_GLOBAL__N_112MLxExpansion13FindMLxHazardEPN4llvm12MachineInstrE.exit.thread33.i

bb.o:                                             ; preds = %bb.n
  %i.ek = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL11ForceExpand, i64 120), align 8, !tbaa !314, !range !18, !noundef !19
  %i.el = trunc nuw i8 %i.ek to i1
  br i1 %i.el, label %_ZN12_GLOBAL__N_112MLxExpansion13FindMLxHazardEPN4llvm12MachineInstrE.exit.thread.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.030.050.i, i64 32 ; 3 uses
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !320
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 36
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !321 ; 2 uses
  %i.eq = add i32 %i.ep, -1073741824
  %i.er = icmp ult i32 %i.eq, -1073741823
  call void @llvm.assume(i1 %i.er)
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.030.050.i, i64 24 ; 3 uses
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !322 ; 2 uses
  %i.eu = load ptr, ptr %i.v, align 8, !tbaa !161
  %i.ev = call noundef ptr @_ZNK4llvm19MachineRegisterInfo10getVRegDefENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %i.eu, i32 %i.ep) #13 ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 24
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !322
  %.not21.i.i.i = icmp eq ptr %i.ex, %i.et
  br i1 %.not21.i.i.i, label %.lr.ph.i.i.i, label %_ZNK12_GLOBAL__N_112MLxExpansion11getAccDefMIEPN4llvm12MachineInstrE.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.p, %.backedge.i.i.i
  %.01522.i.i.i = phi ptr [ %i.fg, %.backedge.i.i.i ], [ %i.ev, %bb.p ] ; 6 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.01522.i.i.i, i64 52
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !303
  switch i32 %i.ez, label %_ZNK12_GLOBAL__N_112MLxExpansion11getAccDefMIEPN4llvm12MachineInstrE.exit.i.i [
    i32 20, label %bb.q
    i32 12, label %bb.q
    i32 9, label %bb.r
  ]

bb.q:                                             ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i
  %i.fa = getelementptr inbounds nuw i8, ptr %.01522.i.i.i, i64 32
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !320
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 36
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !321 ; 2 uses
  %i.fe = icmp slt i32 %i.fd, 0
  br i1 %i.fe, label %.backedge.i.i.i, label %_ZNK12_GLOBAL__N_112MLxExpansion11getAccDefMIEPN4llvm12MachineInstrE.exit.i.i

.backedge.i.i.i:                                  ; preds = %bb.r, %bb.q
  %.sink32.i.i.i = phi i32 [ %i.fm, %bb.r ], [ %i.fd, %bb.q ]
  %i.ff = load ptr, ptr %i.v, align 8, !tbaa !161
  %i.fg = call noundef ptr @_ZNK4llvm19MachineRegisterInfo10getVRegDefENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %i.ff, i32 %.sink32.i.i.i) #13 ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 24
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !322
  %.not.i.i.i = icmp eq ptr %i.fi, %i.et
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_ZNK12_GLOBAL__N_112MLxExpansion11getAccDefMIEPN4llvm12MachineInstrE.exit.i.i, !llvm.loop !323

bb.r:                                             ; preds = %.lr.ph.i.i.i
  %i.fj = getelementptr inbounds nuw i8, ptr %.01522.i.i.i, i64 32
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !320
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 68
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !321 ; 2 uses
  %i.fn = icmp slt i32 %i.fm, 0
  br i1 %i.fn, label %.backedge.i.i.i, label %_ZNK12_GLOBAL__N_112MLxExpansion11getAccDefMIEPN4llvm12MachineInstrE.exit.i.i

_ZNK12_GLOBAL__N_112MLxExpansion11getAccDefMIEPN4llvm12MachineInstrE.exit.i.i: ; preds = %bb.r, %.backedge.i.i.i, %bb.q, %.lr.ph.i.i.i, %bb.p
  %.0.i.i24.i = phi ptr [ %i.ev, %bb.p ], [ %i.fg, %.backedge.i.i.i ], [ %.01522.i.i.i, %bb.r ], [ %.01522.i.i.i, %bb.q ], [ %.01522.i.i.i, %.lr.ph.i.i.i ] ; 4 uses
  %i.fo = load ptr, ptr %i.m, align 8, !tbaa !151 ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.0.i.i24.i, i64 52
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !303 ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fo, i64 120
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !324, !noalias !325
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fo, i64 128
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !330, !noalias !325 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fo, i64 140
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !331, !noalias !325 ; 2 uses
  %i.fx = icmp eq i32 %i.fw, 0
  br i1 %i.fx, label %.loopexit.i.i, label %bb.s

bb.s:                                             ; preds = %_ZNK12_GLOBAL__N_112MLxExpansion11getAccDefMIEPN4llvm12MachineInstrE.exit.i.i
  %i.fy = add i32 %i.fw, -1                       ; 2 uses
  %i.fz = mul i32 %i.fq, 37
  %.01119.i.i.i.i.i.i = and i32 %i.fy, %i.fz      ; 3 uses
  %i.ga = zext i32 %.01119.i.i.i.i.i.i to i64     ; 2 uses
  %i.gb = lshr i64 %i.ga, 5
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %i.gb
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !332
  %i.ge = and i32 %.01119.i.i.i.i.i.i, 31
  %i.gf = lshr i32 %i.gd, %i.ge
  %i.gg = trunc i32 %i.gf to i1
  br i1 %i.gg, label %.lr.ph.i.i.i.i.i.i, label %.loopexit.i.i, !prof !333

bb.t:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.gh = add nuw i32 %.01120.i.i.i.i.i.i, 1
  %.011.i.i.i.i.i.i = and i32 %i.gh, %i.fy        ; 3 uses
  %i.gi = zext i32 %.011.i.i.i.i.i.i to i64       ; 2 uses
  %i.gj = lshr i64 %i.gi, 5
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %i.gj
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !332
  %i.gm = and i32 %.011.i.i.i.i.i.i, 31
  %i.gn = lshr i32 %i.gl, %i.gm
  %i.go = trunc i32 %i.gn to i1
  br i1 %i.go, label %.lr.ph.i.i.i.i.i.i, label %.loopexit.i.i, !prof !334

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.s, %bb.t
  %i.gp = phi i64 [ %i.gi, %bb.t ], [ %i.ga, %bb.s ]
  %.01120.i.i.i.i.i.i = phi i32 [ %.011.i.i.i.i.i.i, %bb.t ], [ %.01119.i.i.i.i.i.i, %bb.s ]
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %i.gp
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !332
  %i.gs = icmp eq i32 %i.fq, %i.gr
  br i1 %i.gs, label %_ZNK4llvm16ARMBaseInstrInfo18isFpMLxInstructionEj.exit.i.i, label %bb.t, !prof !335

_ZNK4llvm16ARMBaseInstrInfo18isFpMLxInstructionEj.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.gt = load i8, ptr %i.an, align 8, !tbaa !14, !range !18, !noalias !336, !noundef !19
  %i.gu = trunc nuw i8 %i.gt to i1
  br i1 %i.gu, label %bb.u, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i

bb.u:                                             ; preds = %_ZNK4llvm16ARMBaseInstrInfo18isFpMLxInstructionEj.exit.i.i
  %i.gv = load ptr, ptr %i.am, align 8, !tbaa !20, !noalias !336 ; 2 uses
  %i.gw = load i32, ptr %i.ao, align 4, !tbaa !30, !noalias !336 ; 4 uses
  %i.gx = zext i32 %i.gw to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.gx, 3
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gv, i64 %.idx.i.i.i.i ; 2 uses
  %.not22.i.i.i.i = icmp eq i32 %i.gw, 0
  br i1 %.not22.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.u, %.critedge.i.i.i.i
  %.023.i.i.i.i = phi ptr [ %i.ha, %.critedge.i.i.i.i ], [ %i.gv, %bb.u ] ; 2 uses
  %i.gz = load ptr, ptr %.023.i.i.i.i, align 8, !tbaa !339, !noalias !336
  %.not15.i.i.i.i = icmp eq ptr %i.gz, %.0.i.i24.i
  br i1 %.not15.i.i.i.i, label %_ZN12_GLOBAL__N_112MLxExpansion13FindMLxHazardEPN4llvm12MachineInstrE.exit.thread.i, label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %.lr.ph.i.i.i.i
  %i.ha = getelementptr inbounds nuw i8, ptr %.023.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ha, %i.gy
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.critedge.i.i.i.i, %bb.u
  %i.hb = load i32, ptr %i.ap, align 8, !tbaa !29, !noalias !336
  %i.hc = icmp ult i32 %i.gw, %i.hb
  br i1 %i.hc, label %bb.v, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i

bb.v:                                             ; preds = %._crit_edge.i.i.i.i
  %i.hd = add nuw i32 %i.gw, 1
  store i32 %i.hd, ptr %i.ao, align 4, !tbaa !30, !noalias !336
  store ptr %.0.i.i24.i, ptr %i.gy, align 8, !tbaa !339, !noalias !336
  br label %_ZN12_GLOBAL__N_112MLxExpansion13FindMLxHazardEPN4llvm12MachineInstrE.exit.thread.i

_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i: ; preds = %._crit_edge.i.i.i.i, %_ZNK4llvm16ARMBaseInstrInfo18isFpMLxInstructionEj.exit.i.i
  %i.he = call { ptr, i8 } @_ZN4llvm19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(17) %i.am, ptr noundef nonnull %.0.i.i24.i) #13, !noalias !336 ; 0 uses
  br label %_ZN12_GLOBAL__N_112MLxExpansion13FindMLxHazardEPN4llvm12MachineInstrE.exit.thread.i

.loopexit.i.i:                                    ; preds = %bb.t, %bb.s, %_ZNK12_GLOBAL__N_112MLxExpansion11getAccDefMIEPN4llvm12MachineInstrE.exit.i.i
  %i.hf = load i8, ptr %i.ah, align 1, !tbaa !282, !range !18, !noundef !19
  %i.hg = trunc nuw i8 %i.hf to i1
  br i1 %i.hg, label %bb.w, label %bb.af

bb.w:                                             ; preds = %.loopexit.i.i
  switch i32 %i.fq, label %_ZL18isFpMulInstructionj.exit.i.i [
    i32 3096, label %_ZN12_GLOBAL__N_112MLxExpansion13FindMLxHazardEPN4llvm12MachineInstrE.exit.thread.i
    i32 3097, label %_ZN12_GLOBAL__N_112MLxExpansion13FindMLxHazardEPN4llvm12MachineInstrE.exit.thread.i
    i32 3098, label %_ZN12_GLOBAL__N_112MLxExpansion13FindMLxHazardEPN4llvm12MachineInstrE.exit.thread.i
    i32 3082, label %_ZN12_GLOBAL__N_112MLxExpansion13FindMLxHazardEPN4llvm12MachineInstrE.exit.thread.i
    i32 3103, label %_ZN12_GLOBAL__N_112MLxExpansion13FindMLxHazardEPN4llvm12MachineInstrE.exit.thread.i
    i32 3104, label %_ZN12_GLOBAL__N_112MLxExpansion13FindMLxHazardEPN4llvm12MachineInstrE.exit.thread.i
  ]

_ZL18isFpMulInstructionj.exit.i.i:                ; preds = %bb.w
  %i.hh = load ptr, ptr %i.em, align 8, !tbaa !320
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 36
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !321 ; 2 uses
  %i.hk = add i32 %i.hj, -1
  %i.hl = icmp ult i32 %i.hk, 1073741823
  br i1 %i.hl, label %_ZN12_GLOBAL__N_112MLxExpansion13FindMLxHazardEPN4llvm12MachineInstrE.exit.thread33.i, label %bb.x

bb.x:                                             ; preds = %_ZL18isFpMulInstructionj.exit.i.i
  %i.hm = load ptr, ptr %i.es, align 8, !tbaa !322 ; 4 uses
  %i.hn = load ptr, ptr %i.v, align 8, !tbaa !161
  %i.ho = call noundef ptr @_ZNK4llvm19MachineRegisterInfo10getVRegDefENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %i.hn, i32 %i.hj) #13 ; 3 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 24
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !322
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_112MLxExpansion20runOnMachineFunctionERN4llvm15MachineFunctionE:bb.a
  %i.oa = zext i32 %i.nz to i64
  %i.ob = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.oa
  store ptr %.sroa.030.050.i, ptr %i.ob, align 8, !tbaa !311
  %i.oc = add i32 %i.nz, 1                        ; 2 uses
  %i.od = icmp eq i32 %i.oc, 4
  %spec.select.i27.i = select i1 %i.od, i32 0, i32 %i.oc
  store i32 %spec.select.i27.i, ptr %i.al, align 4, !tbaa !310
  br label %bb.be

_ZN12_GLOBAL__N_112MLxExpansion13FindMLxHazardEPN4llvm12MachineInstrE.exit.thread.i: ; preds = %.lr.ph.i.i.i.i, %_ZNK12_GLOBAL__N_112MLxExpansion12hasRAWHazardEjPN4llvm12MachineInstrE.exit.i.i, %_ZNK4llvm16ARMBaseInstrInfo18canCauseFpMLxStallEj.exit.i.i, %_ZN12_GLOBAL__N_112MLxExpansion13FindMLxHazardEPN4llvm12MachineInstrE.exit.i, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i, %bb.v, %bb.o
  %i.oe = load i32, ptr %i.a, align 4, !tbaa !332
  %i.of = load i32, ptr %i.b, align 4, !tbaa !332
  %i.og = load i8, ptr %i.c, align 1, !tbaa !354, !range !18, !noundef !19
  %i.oh = trunc nuw i8 %i.og to i1
  %i.oi = load i8, ptr %i.d, align 1, !tbaa !354, !range !18, !noundef !19
  %i.oj = trunc nuw i8 %i.oi to i1                ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %.sroa.030.050.i, i64 32
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !320 ; 9 uses
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 4
  %i.on = load i32, ptr %i.om, align 4, !tbaa !321
  %i.oo = load i32, ptr %i.ol, align 8
  %i.op = and i32 %i.oo, 83886080
  %.not85.i.i = icmp eq i32 %i.op, 83886080
  %i.oq = getelementptr inbounds nuw i8, ptr %i.ol, i64 36
  %i.or = load i32, ptr %i.oq, align 4, !tbaa !321 ; 3 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.ol, i64 64
  %i.ot = getelementptr inbounds nuw i8, ptr %i.ol, i64 68
  %i.ou = load i32, ptr %i.ot, align 4, !tbaa !321
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ol, i64 96
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ol, i64 100
  %i.ox = load i32, ptr %i.ow, align 4, !tbaa !321
  %i.oy = load i32, ptr %i.os, align 8            ; 2 uses
  %i.oz = lshr i32 %i.oy, 26
  %i.pa = lshr i32 %i.oy, 24
  %.lobit.i.i.i = and i32 %i.pa, 1
  %i.pb = xor i32 %.lobit.i.i.i, 1
  %i.pc = and i32 %i.pb, %i.oz
  %.not.i28.i = icmp eq i32 %i.pc, 0
  %i.pd = load i32, ptr %i.ov, align 8            ; 2 uses
  %i.pe = lshr i32 %i.pd, 26
  %i.pf = lshr i32 %i.pd, 24
  %.lobit.i59.i.i = and i32 %i.pf, 1
  %i.pg = xor i32 %.lobit.i59.i.i, 1
  %i.ph = and i32 %i.pg, %i.pe
  %.not84.i.i = icmp eq i32 %i.ph, 0
  br i1 %i.oj, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %_ZN12_GLOBAL__N_112MLxExpansion13FindMLxHazardEPN4llvm12MachineInstrE.exit.thread.i
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ol, i64 144
  %i.pj = load i64, ptr %i.pi, align 8, !tbaa !321
  %i.pk = and i64 %i.pj, 4294967295
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %_ZN12_GLOBAL__N_112MLxExpansion13FindMLxHazardEPN4llvm12MachineInstrE.exit.thread.i
  %i.pl = phi i64 [ 5, %bb.ay ], [ 4, %_ZN12_GLOBAL__N_112MLxExpansion13FindMLxHazardEPN4llvm12MachineInstrE.exit.thread.i ]
  %i.pm = phi i64 [ %i.pk, %bb.ay ], [ 0, %_ZN12_GLOBAL__N_112MLxExpansion13FindMLxHazardEPN4llvm12MachineInstrE.exit.thread.i ]
  %i.pn = getelementptr inbounds nuw [32 x i8], ptr %i.ol, i64 %i.pl ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 16
  %i.pp = load i64, ptr %i.po, align 8, !tbaa !321
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pn, i64 36
  %i.pr = load i32, ptr %i.pq, align 4, !tbaa !321 ; 2 uses
  %i.ps = load ptr, ptr %i.m, align 8, !tbaa !151 ; 3 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 8
  %i.pu = load ptr, ptr %i.pt, align 8, !tbaa !355 ; 2 uses
  %i.pv = zext i32 %i.oe to i64
  %i.pw = sub nsw i64 0, %i.pv
  %i.px = getelementptr inbounds [32 x i8], ptr %i.pu, i64 %i.pw ; 2 uses
  %i.py = zext i32 %i.of to i64
  %i.pz = sub nsw i64 0, %i.py
  %i.qa = getelementptr inbounds [32 x i8], ptr %i.pu, i64 %i.pz
  %i.qb = load ptr, ptr %i.v, align 8, !tbaa !161
  %i.qc = load ptr, ptr %i.ps, align 8, !tbaa !8
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 16
  %i.qe = load ptr, ptr %i.qd, align 8
  %i.qf = call noundef ptr %i.qe(ptr noundef nonnull align 8 dereferenceable(112) %i.ps, ptr noundef nonnull align 8 dereferenceable(32) %i.px, i32 noundef 0) #13, !inline_history !358
  %i.qg = call i32 @_ZN4llvm19MachineRegisterInfo21createVirtualRegisterEPKNS_15MCRegisterClassENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520) %i.qb, ptr noundef %i.qf, ptr nonnull @.str.4, i64 0) #13 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #13
  %i.qh = getelementptr inbounds nuw i8, ptr %.sroa.030.050.i, i64 72 ; 2 uses
  %.sroa.013.0.copyload.i.i = load ptr, ptr %i.qh, align 8, !tbaa !359
  store ptr %.sroa.013.0.copyload.i.i, ptr %14, align 8, !tbaa !359
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i8 0, i64 24, i1 false)
  %i.qi = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %.sroa.017.033, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.030.050.i, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %i.px, i32 %i.qg) ; 2 uses
  %i.qj = extractvalue { ptr, ptr } %i.qi, 0      ; 5 uses
  %i.qk = extractvalue { ptr, ptr } %i.qi, 1      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #13
  store ptr null, ptr %i.as, align 8, !tbaa !350, !alias.scope !360
  %i.ql = select i1 %.not.i28.i, i32 0, i32 67108864
  store i32 %i.ou, ptr %i.at, align 4, !tbaa !321, !alias.scope !360
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, i8 0, i64 16, i1 false), !alias.scope !360
  store i32 %i.ql, ptr %13, align 8, !alias.scope !360
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.qk, ptr noundef nonnull align 8 dereferenceable(1065) %i.qj, ptr noundef nonnull align 8 dereferenceable(32) %13) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #13
  store ptr null, ptr %i.av, align 8, !tbaa !350, !alias.scope !363
  %i.qm = select i1 %.not84.i.i, i32 0, i32 67108864
  store i32 %i.ox, ptr %i.aw, align 4, !tbaa !321, !alias.scope !363
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i8 0, i64 16, i1 false), !alias.scope !363
  store i32 %i.qm, ptr %12, align 8, !alias.scope !363
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.qk, ptr noundef nonnull align 8 dereferenceable(1065) %i.qj, ptr noundef nonnull align 8 dereferenceable(32) %12) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #13
  br i1 %i.oj, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  store i32 1, ptr %11, align 8, !alias.scope !366
  store ptr null, ptr %i.ay, align 8, !tbaa !350, !alias.scope !366
  store i64 %i.pm, ptr %i.az, align 8, !tbaa !321, !alias.scope !366
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.qk, ptr noundef nonnull align 8 dereferenceable(1065) %i.qj, ptr noundef nonnull align 8 dereferenceable(32) %11) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.qn = and i64 %i.pp, 4294967295               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  store i32 1, ptr %10, align 8, !alias.scope !369
  store ptr null, ptr %i.ba, align 8, !tbaa !350, !alias.scope !369
  store i64 %i.qn, ptr %i.bb, align 8, !tbaa !321, !alias.scope !369
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.qk, ptr noundef nonnull align 8 dereferenceable(1065) %i.qj, ptr noundef nonnull align 8 dereferenceable(32) %10) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  store ptr null, ptr %i.bc, align 8, !tbaa !350, !alias.scope !372
  store i32 %i.pr, ptr %i.bd, align 4, !tbaa !321, !alias.scope !372
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.be, i8 0, i64 16, i1 false), !alias.scope !372
  store i32 0, ptr %9, align 8, !alias.scope !372
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.qk, ptr noundef nonnull align 8 dereferenceable(1065) %i.qj, ptr noundef nonnull align 8 dereferenceable(32) %9) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #13
  %.sroa.08.0.copyload.i.i = load ptr, ptr %i.qh, align 8, !tbaa !359
  store ptr %.sroa.08.0.copyload.i.i, ptr %15, align 8, !tbaa !359
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, i8 0, i64 24, i1 false)
  %i.qo = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescE(ptr noundef nonnull align 8 dereferenceable(360) %.sroa.017.033, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.030.050.i, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %i.qa) ; 2 uses
  %i.qp = extractvalue { ptr, ptr } %i.qo, 0      ; 7 uses
  %i.qq = extractvalue { ptr, ptr } %i.qo, 1      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  store ptr null, ptr %i.bg, align 8, !tbaa !350, !alias.scope !375
  %i.qr = select i1 %.not85.i.i, i32 83886080, i32 16777216
  store i32 %i.on, ptr %i.bh, align 4, !tbaa !321, !alias.scope !375
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i8 0, i64 16, i1 false), !alias.scope !375
  store i32 %i.qr, ptr %8, align 8, !alias.scope !375
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.qq, ptr noundef nonnull align 8 dereferenceable(1065) %i.qp, ptr noundef nonnull align 8 dereferenceable(32) %8) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #13
  br i1 %i.oh, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.qs = load ptr, ptr %i.v, align 8, !tbaa !161
  %i.qt = call noundef zeroext i1 @_ZNK4llvm19MachineRegisterInfo15hasOneNonDBGUseENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %i.qs, i32 %i.or) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  store ptr null, ptr %i.bp, align 8, !tbaa !350, !alias.scope !378
  store i32 %i.qg, ptr %i.bq, align 4, !tbaa !321, !alias.scope !378
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.br, i8 0, i64 16, i1 false), !alias.scope !378
  store i32 67108864, ptr %7, align 8, !alias.scope !378
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.qq, ptr noundef nonnull align 8 dereferenceable(1065) %i.qp, ptr noundef nonnull align 8 dereferenceable(32) %7) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  store ptr null, ptr %i.bs, align 8, !tbaa !350, !alias.scope !381
  %i.qu = select i1 %i.qt, i32 67108864, i32 0
  store i32 %i.or, ptr %i.bt, align 4, !tbaa !321, !alias.scope !381
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bu, i8 0, i64 16, i1 false), !alias.scope !381
  store i32 %i.qu, ptr %6, align 8, !alias.scope !381
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.qq, ptr noundef nonnull align 8 dereferenceable(1065) %i.qp, ptr noundef nonnull align 8 dereferenceable(32) %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  br label %_ZN12_GLOBAL__N_112MLxExpansion22ExpandFPMLxInstructionERN4llvm17MachineBasicBlockEPNS1_12MachineInstrEjjbb.exit.i

bb.bd:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  store ptr null, ptr %i.bj, align 8, !tbaa !350, !alias.scope !384
  store i32 %i.or, ptr %i.bk, align 4, !tbaa !321, !alias.scope !384
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bl, i8 0, i64 16, i1 false), !alias.scope !384
  store i32 0, ptr %5, align 8, !alias.scope !384
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.qq, ptr noundef nonnull align 8 dereferenceable(1065) %i.qp, ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  store ptr null, ptr %i.bm, align 8, !tbaa !350, !alias.scope !387
  store i32 %i.qg, ptr %i.bn, align 4, !tbaa !321, !alias.scope !387
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bo, i8 0, i64 16, i1 false), !alias.scope !387
  store i32 67108864, ptr %4, align 8, !alias.scope !387
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.qq, ptr noundef nonnull align 8 dereferenceable(1065) %i.qp, ptr noundef nonnull align 8 dereferenceable(32) %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %_ZN12_GLOBAL__N_112MLxExpansion22ExpandFPMLxInstructionERN4llvm17MachineBasicBlockEPNS1_12MachineInstrEjjbb.exit.i

_ZN12_GLOBAL__N_112MLxExpansion22ExpandFPMLxInstructionERN4llvm17MachineBasicBlockEPNS1_12MachineInstrEjjbb.exit.i: ; preds = %bb.bd, %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  store i32 1, ptr %3, align 8, !alias.scope !390
  store ptr null, ptr %i.bv, align 8, !tbaa !350, !alias.scope !390
  store i64 %i.qn, ptr %i.bw, align 8, !tbaa !321, !alias.scope !390
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.qq, ptr noundef nonnull align 8 dereferenceable(1065) %i.qp, ptr noundef nonnull align 8 dereferenceable(32) %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  store ptr null, ptr %i.bx, align 8, !tbaa !350, !alias.scope !393
  store i32 %i.pr, ptr %i.by, align 4, !tbaa !321, !alias.scope !393
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bz, i8 0, i64 16, i1 false), !alias.scope !393
  store i32 0, ptr %2, align 8, !alias.scope !393
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.qq, ptr noundef nonnull align 8 dereferenceable(1065) %i.qp, ptr noundef nonnull align 8 dereferenceable(32) %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  %i.qv = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.030.050.i) #13 ; 0 uses
  br label %bb.be

bb.be:                                            ; preds = %_ZN12_GLOBAL__N_112MLxExpansion22ExpandFPMLxInstructionERN4llvm17MachineBasicBlockEPNS1_12MachineInstrEjjbb.exit.i, %_ZN12_GLOBAL__N_112MLxExpansion13FindMLxHazardEPN4llvm12MachineInstrE.exit.thread33.i
  %.1.i = phi i1 [ true, %_ZN12_GLOBAL__N_112MLxExpansion22ExpandFPMLxInstructionERN4llvm17MachineBasicBlockEPNS1_12MachineInstrEjjbb.exit.i ], [ %.01651.i, %_ZN12_GLOBAL__N_112MLxExpansion13FindMLxHazardEPN4llvm12MachineInstrE.exit.thread33.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.m, %bb.l, %bb.j, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEi.exit.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEi.exit.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEi.exit.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEi.exit.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEi.exit.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEi.exit.i
  %.4.i = phi i1 [ %.01651.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEi.exit.i ], [ %.01651.i, %bb.l ], [ %.1.i, %bb.be ], [ %.01651.i, %bb.j ], [ %.01651.i, %bb.m ], [ %.01651.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEi.exit.i ], [ %.01651.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEi.exit.i ], [ %.01651.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEi.exit.i ], [ %.01651.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEi.exit.i ], [ %.01651.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEi.exit.i ] ; 2 uses
  %.3.i = phi i32 [ %.052.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEi.exit.i ], [ %i.dz, %bb.l ], [ 0, %bb.be ], [ 0, %bb.j ], [ 2, %bb.m ], [ %.052.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEi.exit.i ], [ %.052.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEi.exit.i ], [ %.052.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEi.exit.i ], [ %.052.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEi.exit.i ], [ %.052.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEi.exit.i ]
  %.not37.i = icmp eq ptr %.sroa.0.1.i.i.i.i.i.i, %i.ck
  br i1 %.not37.i, label %_ZN12_GLOBAL__N_112MLxExpansion23ExpandFPMLxInstructionsERN4llvm17MachineBasicBlockE.exit.loopexit, label %.lr.ph.i

_ZN12_GLOBAL__N_112MLxExpansion23ExpandFPMLxInstructionsERN4llvm17MachineBasicBlockE.exit.loopexit: ; preds = %bb.bf
  %i.qw = or i1 %.01632, %.4.i
  br label %_ZN12_GLOBAL__N_112MLxExpansion23ExpandFPMLxInstructionsERN4llvm17MachineBasicBlockE.exit

_ZN12_GLOBAL__N_112MLxExpansion23ExpandFPMLxInstructionsERN4llvm17MachineBasicBlockE.exit: ; preds = %_ZN12_GLOBAL__N_112MLxExpansion23ExpandFPMLxInstructionsERN4llvm17MachineBasicBlockE.exit.loopexit, %_ZN4llvm17MachineBasicBlock6rbeginEv.exit.i
  %.0.lcssa.i = phi i1 [ %.01632, %_ZN4llvm17MachineBasicBlock6rbeginEv.exit.i ], [ %i.qw, %_ZN12_GLOBAL__N_112MLxExpansion23ExpandFPMLxInstructionsERN4llvm17MachineBasicBlockE.exit.loopexit ] ; 2 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %.sroa.017.033, i64 8
  %.sroa.017.0 = load ptr, ptr %i.qx, align 8, !tbaa !283 ; 2 uses
  %.not = icmp eq ptr %.sroa.017.0, %i.ak
  br i1 %.not, label %.loopexit, label %bb.d

.loopexit:                                        ; preds = %_ZN12_GLOBAL__N_112MLxExpansion23ExpandFPMLxInstructionsERN4llvm17MachineBasicBlockE.exit, %_ZNK4llvm12ARMSubtarget8isLikeA9Ev.exit.thread, %bb.b, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ false, %_ZNK4llvm12ARMSubtarget8isLikeA9Ev.exit.thread ], [ %.0.lcssa.i, %_ZN12_GLOBAL__N_112MLxExpansion23ExpandFPMLxInstructionsERN4llvm17MachineBasicBlockE.exit ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZNK4llvm19MachineFunctionPass21getRequiredPropertiesEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i64 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZNK4llvm19MachineFunctionPass16getSetPropertiesEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i64 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZNK4llvm19MachineFunctionPass20getClearedPropertiesEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i64 0
}

; Function Attrs: nounwind
declare void @_ZN4llvm4PassD2Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28)) unnamed_addr #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

declare noundef zeroext i1 @_ZNK4llvm12FunctionPass12skipFunctionERKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 8 dereferenceable(140)) local_unnamed_addr #7

declare noundef zeroext i1 @_ZNK4llvm16ARMBaseInstrInfo18isFpMLxInstructionEjRjS1_RbS2_(ptr noundef nonnull align 8 dereferenceable(272), i32 noundef, ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #7

declare void @_ZN4llvm19SmallPtrSetImplBase16shrink_and_clearEv(ptr noundef nonnull align 8 dereferenceable(17)) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

declare noundef zeroext i1 @_ZNK4llvm12MachineInstr19hasPropertyInBundleEmNS0_9QueryTypeE(ptr noundef nonnull align 8 dereferenceable(80), i64 noundef, i32 noundef) local_unnamed_addr #7

declare noundef ptr @_ZNK4llvm19MachineRegisterInfo10getVRegDefENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520), i32) local_unnamed_addr #7

declare { ptr, i8 } @_ZN4llvm19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(17), ptr noundef) local_unnamed_addr #7

declare noundef ptr @_ZNK4llvm19SmallPtrSetImplBase6doFindEPKv(ptr noundef nonnull align 8 dereferenceable(17), ptr noundef) local_unnamed_addr #7

declare noundef i32 @_ZNK4llvm12MachineInstr25findRegisterUseOperandIdxENS_8RegisterEPKNS_18TargetRegisterInfoEb(ptr noundef nonnull align 8 dereferenceable(80), i32, ptr noundef, i1 noundef zeroext) local_unnamed_addr #7

declare noundef zeroext i1 @_ZNK4llvm19MachineRegisterInfo15hasOneNonDBGUseENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520), i32) local_unnamed_addr #7

declare i32 @_ZN4llvm19MachineRegisterInfo21createVirtualRegisterEPKNS_15MCRegisterClassENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520), ptr noundef, ptr, i64) local_unnamed_addr #7

declare ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #7

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 %4) local_unnamed_addr #1 comdat {
bb.a:
  %5 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !284
  %i.c = and i32 %i.b, 4
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !396  ; 6 uses
  %.sroa.03.0.copyload.i = load ptr, ptr %2, align 8, !tbaa !359
  %i.f = tail call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr %.sroa.03.0.copyload.i, i1 noundef zeroext false) #13 ; 6 uses
  %i.g = tail call ptr @_ZN4llvm17MachineBasicBlock6insertENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEPS4_(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr nonnull %1, ptr noundef %i.f) #13 ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !440  ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4llvm12MachineInstr13setPCSectionsERNS_15MachineFunctionEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(80) %i.f, ptr noundef nonnull align 8 dereferenceable(1065) %i.e, ptr noundef nonnull %i.i) #13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !444  ; 2 uses
  %.not7.i.i = icmp eq ptr %i.k, null
  br i1 %.not7.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4llvm12MachineInstr15setMMRAMetadataERNS_15MachineFunctionEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(80) %i.f, ptr noundef nonnull align 8 dereferenceable(1065) %i.e, ptr noundef nonnull %i.k) #13
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !445  ; 2 uses
  %.not8.i.i = icmp eq ptr %i.m, null
  br i1 %.not8.i.i, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN4llvm12MachineInstr21setDeactivationSymbolERNS_15MachineFunctionEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(80) %i.f, ptr noundef nonnull align 8 dereferenceable(1065) %i.e, ptr noundef nonnull %i.m) #13
  br label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit

_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr null, ptr %i.n, align 8, !tbaa !350, !alias.scope !446
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %4, ptr %i.o, align 4, !tbaa !321, !alias.scope !446
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false), !alias.scope !446
  store i32 16777216, ptr %5, align 8, !alias.scope !446
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.f, ptr noundef nonnull align 8 dereferenceable(1065) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  %.fca.0.insert.i = insertvalue { ptr, ptr } poison, ptr %i.e, 0
  %.fca.1.insert.i = insertvalue { ptr, ptr } %.fca.0.insert.i, ptr %i.f, 1
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  %i.q = tail call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr nonnull %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 %4)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit
  %.pn = phi { ptr, ptr } [ %.fca.1.insert.i, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit ], [ %i.q, %bb.h ]
  ret { ptr, ptr } %.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 %4) local_unnamed_addr #1 comdat {
bb.a:
  %5 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !396  ; 6 uses
  %.sroa.03.0.copyload = load ptr, ptr %2, align 8, !tbaa !359
  %i.c = tail call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr %.sroa.03.0.copyload, i1 noundef zeroext false) #13 ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef %i.c) #13
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %1, align 8
  %i.e = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %1, ptr %i.g, align 8, !tbaa !449
  %.0.copyload.i.i.i.i9.i.i.i.i.i = load i64, ptr %i.c, align 8
  %i.h = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i, 7
  %i.i = or disjoint i64 %i.h, %i.e
  store i64 %i.i, ptr %i.c, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.c, ptr %i.j, align 8, !tbaa !449
  %.0.copyload.i.i.i.i10.i.i.i.i.i = load i64, ptr %1, align 8
  %i.k = ptrtoint ptr %i.c to i64
  %i.l = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i, 7
  %i.m = or disjoint i64 %i.l, %i.k
  store i64 %i.m, ptr %1, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !440  ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm12MachineInstr13setPCSectionsERNS_15MachineFunctionEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(80) %i.c, ptr noundef nonnull align 8 dereferenceable(1065) %i.b, ptr noundef nonnull %i.o) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !444  ; 2 uses
  %.not7.i = icmp eq ptr %i.q, null
  br i1 %.not7.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4llvm12MachineInstr15setMMRAMetadataERNS_15MachineFunctionEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(80) %i.c, ptr noundef nonnull align 8 dereferenceable(1065) %i.b, ptr noundef nonnull %i.q) #13
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !445  ; 2 uses
  %.not8.i = icmp eq ptr %i.s, null
  br i1 %.not8.i, label %_ZNK4llvm19MachineInstrBuilder14copyMIMetadataERKNS_10MIMetadataE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4llvm12MachineInstr21setDeactivationSymbolERNS_15MachineFunctionEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(80) %i.c, ptr noundef nonnull align 8 dereferenceable(1065) %i.b, ptr noundef nonnull %i.s) #13
  br label %_ZNK4llvm19MachineInstrBuilder14copyMIMetadataERKNS_10MIMetadataE.exit

_ZNK4llvm19MachineInstrBuilder14copyMIMetadataERKNS_10MIMetadataE.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr null, ptr %i.t, align 8, !tbaa !350, !alias.scope !450
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %4, ptr %i.u, align 4, !tbaa !321, !alias.scope !450
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false), !alias.scope !450
end_hunk_1
