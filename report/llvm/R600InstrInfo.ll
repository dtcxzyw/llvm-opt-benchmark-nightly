Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/R600InstrInfo?download=true
inline.NumInlined: 2263
inline.NumDeleted: 1065
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZNK4llvm13R600InstrInfo23fitsReadPortLimitationsERKSt6vectorIPNS_12MachineInstrESaIS3_EERKNS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEERS1_INS0_11BankSwizzleESaISH_EEb:bb.a
  br label %_ZNSt6vectorIN4llvm13R600InstrInfo11BankSwizzleESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

_ZNSt6vectorIN4llvm13R600InstrInfo11BankSwizzleESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i: ; preds = %bb.h, %_ZNKSt6vectorIN4llvm13R600InstrInfo11BankSwizzleESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIN4llvm13R600InstrInfo11BankSwizzleESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN4llvm13R600InstrInfo11BankSwizzleESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  %i.bg = load ptr, ptr %i.k, align 8, !tbaa !620
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = sub i64 %i.bh, %i.at
  call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef %i.bi) #27
  br label %_ZNSt6vectorIN4llvm13R600InstrInfo11BankSwizzleESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN4llvm13R600InstrInfo11BankSwizzleESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.i, %_ZNSt6vectorIN4llvm13R600InstrInfo11BankSwizzleESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  store ptr %i.bc, ptr %3, align 8, !tbaa !367
  store ptr %i.bf, ptr %i.c, align 8, !tbaa !619
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.ba
  store ptr %i.bj, ptr %i.k, align 8, !tbaa !620
  br label %_ZNSt6vectorIN4llvm13R600InstrInfo11BankSwizzleESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIN4llvm13R600InstrInfo11BankSwizzleESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.e, %_ZNSt6vectorIN4llvm13R600InstrInfo11BankSwizzleESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.057.076, i64 8 ; 2 uses
  %.not64 = icmp eq ptr %i.bk, %i.g
  br i1 %.not64, label %._crit_edge, label %bb.c

.preheader:                                       ; preds = %._crit_edge, %_ZL20NextPossibleSolutionRSt6vectorIN4llvm13R600InstrInfo11BankSwizzleESaIS2_EEj.exit.i
  %i.bl = call noundef i32 @_ZNK4llvm13R600InstrInfo11isLegalUpToERKSt6vectorIS1_ISt4pairIijESaIS3_EESaIS5_EERKS1_INS0_11BankSwizzleESaISA_EERKS5_SA_(ptr noundef nonnull readonly align 8 dereferenceable(440) %0, ptr noundef nonnull readonly align 8 dereferenceable(24) %5, ptr noundef nonnull readonly align 8 dereferenceable(24) %3, ptr noundef nonnull readonly align 8 dereferenceable(24) %7, i32 noundef 0) ; 3 uses
  %i.bm = zext i32 %i.bl to i64                   ; 2 uses
  %i.bn = load ptr, ptr %i.l, align 8, !tbaa !362
  %i.bo = load ptr, ptr %5, align 8, !tbaa !363
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = sdiv exact i64 %i.br, 24
  %i.bt = icmp eq i64 %i.bs, %i.bm                ; 3 uses
  br i1 %i.bt, label %_ZNSt6vectorISt4pairIijESaIS1_EED2Ev.exit51, label %bb.j

bb.j:                                             ; preds = %.preheader
  %.val.i = load ptr, ptr %3, align 8             ; 4 uses
  %.val9.i = load ptr, ptr %i.c, align 8
  %i.bu = icmp sgt i32 %i.bl, -1
  br i1 %i.bu, label %.lr.ph.i.i, label %.critedge.i.i

.lr.ph.i.i:                                       ; preds = %bb.j, %bb.k
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.k ], [ %i.bm, %bb.j ] ; 4 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %indvars.iv
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !369
  %i.bx = icmp eq i32 %i.bw, 5
  br i1 %i.bx, label %bb.k, label %.critedge.i.i.loopexit.split.loop.exit

bb.k:                                             ; preds = %.lr.ph.i.i
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.by = icmp sgt i64 %indvars.iv, 0
  br i1 %i.by, label %.lr.ph.i.i, label %.critedge.i.i, !llvm.loop !1

.critedge.i.i.loopexit.split.loop.exit:           ; preds = %.lr.ph.i.i
  %i.bz = trunc nuw nsw i64 %indvars.iv to i32
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.k, %.critedge.i.i.loopexit.split.loop.exit, %bb.j
  %.019.lcssa.i.i = phi i32 [ %i.bl, %bb.j ], [ %i.bz, %.critedge.i.i.loopexit.split.loop.exit ], [ -1, %bb.k ] ; 4 uses
  %i.ca = ptrtoint ptr %.val9.i to i64
  %i.cb = ptrtoint ptr %.val.i to i64
  %i.cc = sub i64 %i.ca, %i.cb
  %i.cd = lshr exact i64 %i.cc, 2
  %i.ce = trunc i64 %i.cd to i32                  ; 2 uses
  %.0184.i.i = add i32 %.019.lcssa.i.i, 1         ; 2 uses
  %i.cf = icmp ult i32 %.0184.i.i, %i.ce
  br i1 %i.cf, label %.lr.ph6.preheader.i.i, label %._crit_edge.i.i

.lr.ph6.preheader.i.i:                            ; preds = %.critedge.i.i
  %i.cg = zext i32 %.0184.i.i to i64
  %i.ch = shl nuw nsw i64 %i.cg, 2
  %scevgep.i.i = getelementptr i8, ptr %.val.i, i64 %i.ch
  %i.ci = add i32 %i.ce, -2
  %i.cj = sub i32 %i.ci, %.019.lcssa.i.i
  %i.ck = zext i32 %i.cj to i64
  %i.cl = shl nuw nsw i64 %i.ck, 2
  %i.cm = add nuw nsw i64 %i.cl, 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i, i8 0, i64 %i.cm, i1 false), !tbaa !369
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph6.preheader.i.i, %.critedge.i.i
  %.not.i = icmp eq i32 %.019.lcssa.i.i, -1
  br i1 %.not.i, label %_ZNSt6vectorISt4pairIijESaIS1_EED2Ev.exit51, label %_ZL20NextPossibleSolutionRSt6vectorIN4llvm13R600InstrInfo11BankSwizzleESaIS2_EEj.exit.i

_ZL20NextPossibleSolutionRSt6vectorIN4llvm13R600InstrInfo11BankSwizzleESaIS2_EEj.exit.i: ; preds = %._crit_edge.i.i
  %i.cn = sext i32 %.019.lcssa.i.i to i64
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.cn ; 2 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !369
  %i.cq = add nsw i32 %i.cp, 1
  store i32 %i.cq, ptr %i.co, align 4, !tbaa !369
  br label %.preheader, !llvm.loop !2

_ZNSt6vectorISt4pairIijESaIS1_EEaSEOS3_.exit:     ; preds = %._crit_edge
  %i.cr = load ptr, ptr %i.l, align 8, !tbaa !621 ; 3 uses
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 -24 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cv = load ptr, ptr %i.cs, align 8, !tbaa !364 ; 10 uses
  store ptr %i.cv, ptr %7, align 8, !tbaa !364
  %i.cw = getelementptr inbounds i8, ptr %i.cr, i64 -16
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !357 ; 2 uses
  store ptr %i.cx, ptr %i.ct, align 8, !tbaa !357
  %i.cy = getelementptr inbounds i8, ptr %i.cr, i64 -8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !349 ; 2 uses
  store ptr %i.cz, ptr %i.cu, align 8, !tbaa !349
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cs, i8 0, i64 24, i1 false)
  %i.da = load ptr, ptr %i.l, align 8, !tbaa !362 ; 2 uses
  %i.db = getelementptr inbounds i8, ptr %i.da, i64 -24 ; 2 uses
  store ptr %i.db, ptr %i.l, align 8, !tbaa !362
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !364 ; 3 uses
  %.not.i.i.i.i33 = icmp eq ptr %i.dc, null
  br i1 %.not.i.i.i.i33, label %_ZNSt6vectorIS_ISt4pairIijESaIS1_EESaIS3_EE8pop_backEv.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorISt4pairIijESaIS1_EEaSEOS3_.exit
  %i.dd = getelementptr inbounds i8, ptr %i.da, i64 -8
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !349
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = ptrtoint ptr %i.dc to i64
  %i.dh = sub i64 %i.df, %i.dg
  call void @_ZdlPvm(ptr noundef nonnull %i.dc, i64 noundef %i.dh) #27
  br label %_ZNSt6vectorIS_ISt4pairIijESaIS1_EESaIS3_EE8pop_backEv.exit

_ZNSt6vectorIS_ISt4pairIijESaIS1_EESaIS3_EE8pop_backEv.exit: ; preds = %_ZNSt6vectorISt4pairIijESaIS1_EEaSEOS3_.exit, %bb.l
  %i.di = load ptr, ptr %i.c, align 8, !tbaa !619
  %i.dj = getelementptr inbounds i8, ptr %i.di, i64 -4
  store ptr %i.dj, ptr %i.c, align 8, !tbaa !619
  %i.dk = load i32, ptr %i.a, align 4, !tbaa !29  ; 2 uses
  %i.dl = icmp ugt i32 %i.dk, 2
  %i.dm = ptrtoint ptr %i.cx to i64
  %i.dn = ptrtoint ptr %i.cv to i64
  %i.do = sub i64 %i.dm, %i.dn                    ; 2 uses
  %i.dp = lshr exact i64 %i.do, 3
  %i.dq = and i64 %i.do, 34359738360
  %i.dr = icmp eq i64 %i.dq, 0
  %wide.trip.count114.i = and i64 %i.dp, 4294967295 ; 4 uses
  %wide.trip.count114.off.i = add nsw i64 %wide.trip.count114.i, -1
  %switch125.i = icmp ult i64 %wide.trip.count114.off.i, 2
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %exitcond97.peel.not.i = icmp eq i64 %wide.trip.count114.i, 1
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  br i1 %i.dl, label %_ZNK4llvm13R600InstrInfo24FindSwizzleForVectorSlotERKSt6vectorIS1_ISt4pairIijESaIS3_EESaIS5_EERS1_INS0_11BankSwizzleESaISA_EERKS5_SA_.exit, label %_ZNSt6vectorIS_ISt4pairIijESaIS1_EESaIS3_EE8pop_backEv.exit.split

_ZNSt6vectorIS_ISt4pairIijESaIS1_EESaIS3_EE8pop_backEv.exit.split: ; preds = %_ZNSt6vectorIS_ISt4pairIijESaIS1_EESaIS3_EE8pop_backEv.exit, %_ZNK4llvm13R600InstrInfo24FindSwizzleForVectorSlotERKSt6vectorIS1_ISt4pairIijESaIS3_EESaIS5_EERS1_INS0_11BankSwizzleESaISA_EERKS5_SA_.exit47
  %.0.idx77 = phi i64 [ %.0.add, %_ZNK4llvm13R600InstrInfo24FindSwizzleForVectorSlotERKSt6vectorIS1_ISt4pairIijESaIS3_EESaIS5_EERS1_INS0_11BankSwizzleESaISA_EERKS5_SA_.exit47 ], [ 0, %_ZNSt6vectorIS_ISt4pairIijESaIS1_EESaIS3_EE8pop_backEv.exit ] ; 2 uses
  %.0.ptr = getelementptr inbounds nuw i8, ptr @_ZZNK4llvm13R600InstrInfo23fitsReadPortLimitationsERKSt6vectorIPNS_12MachineInstrESaIS3_EERKNS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEERS1_INS0_11BankSwizzleESaISH_EEbE8TransSwz, i64 %.0.idx77
  %i.du = load i32, ptr %.0.ptr, align 4, !tbaa !369 ; 7 uses
  br i1 %i.dr, label %.loopexit.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt6vectorIS_ISt4pairIijESaIS1_EESaIS3_EE8pop_backEv.exit.split
  %switch.i = icmp ult i32 %i.du, 4
  call void @llvm.assume(i1 %switch.i)
  switch i32 %i.dk, label %.lr.ph.split.split.split.us.i.preheader [
    i32 0, label %.loopexit.preheader
    i32 2, label %.lr.ph.split.split.split.i
  ]

.lr.ph.split.split.split.us.i.preheader:          ; preds = %.lr.ph.i
  %.not = icmp eq i32 %i.du, 3
  %i.dv = zext nneg i32 %i.du to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZNK4llvm13R600InstrInfo23fitsReadPortLimitationsERKSt6vectorIPNS_12MachineInstrESaIS3_EERKNS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEERS1_INS0_11BankSwizzleESaISH_EEb, i64 %i.dv
  br label %.lr.ph.split.split.split.us.i

.lr.ph.split.split.split.us.i:                    ; preds = %.lr.ph.split.split.split.us.i.preheader, %bb.m
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.m ], [ 0, %.lr.ph.split.split.split.us.i.preheader ] ; 3 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv.i
  br i1 %.not, label %_ZL15getTransSwizzleN4llvm13R600InstrInfo11BankSwizzleEj.exit.us9.i, label %switch.lookup

switch.lookup:                                    ; preds = %.lr.ph.split.split.split.us.i
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %_ZL15getTransSwizzleN4llvm13R600InstrInfo11BankSwizzleEj.exit.us9.i

_ZL15getTransSwizzleN4llvm13R600InstrInfo11BankSwizzleEj.exit.us9.i: ; preds = %.lr.ph.split.split.split.us.i, %switch.lookup
  %__const._ZL15getTransSwizzleN4llvm13R600InstrInfo11BankSwizzleEj.Cycles.3.sink.i.us10.i = phi ptr [ %switch.load, %switch.lookup ], [ @__const._ZL15getTransSwizzleN4llvm13R600InstrInfo11BankSwizzleEj.Cycles.3, %.lr.ph.split.split.split.us.i ]
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %__const._ZL15getTransSwizzleN4llvm13R600InstrInfo11BankSwizzleEj.Cycles.3.sink.i.us10.i, i64 %indvars.iv.i
  %.0.i.us11.i = load i32, ptr %i.dx, align 4, !tbaa !29
  %i.dy = load i32, ptr %i.dw, align 4, !tbaa !355
  %i.dz = icmp slt i32 %i.dy, 0
  %i.ea = icmp ne i32 %.0.i.us11.i, 0
  %or.cond50.not.i = select i1 %i.dz, i1 true, i1 %i.ea
  br i1 %or.cond50.not.i, label %bb.m, label %_ZNK4llvm13R600InstrInfo24FindSwizzleForVectorSlotERKSt6vectorIS1_ISt4pairIijESaIS3_EESaIS5_EERS1_INS0_11BankSwizzleESaISA_EERKS5_SA_.exit47

bb.m:                                             ; preds = %_ZL15getTransSwizzleN4llvm13R600InstrInfo11BankSwizzleEj.exit.us9.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count114.i
  br i1 %exitcond.not.i, label %.loopexit.preheader, label %.lr.ph.split.split.split.us.i, !llvm.loop !617

.lr.ph.split.split.split.i:                       ; preds = %.lr.ph.i
  switch i32 %i.du, label %default.unreachable [
    i32 0, label %_ZL15getTransSwizzleN4llvm13R600InstrInfo11BankSwizzleEj.exit.us17.i
    i32 1, label %_ZL15getTransSwizzleN4llvm13R600InstrInfo11BankSwizzleEj.exit.us28.preheader.i
    i32 2, label %bb.o
    i32 3, label %bb.n
  ]

bb.n:                                             ; preds = %.lr.ph.split.split.split.i
  br i1 %switch125.i, label %.loopexit.preheader, label %_ZL15getTransSwizzleN4llvm13R600InstrInfo11BankSwizzleEj.exit.peel.next80.i

.loopexit.preheader:                              ; preds = %bb.p, %bb.m, %_ZL15getTransSwizzleN4llvm13R600InstrInfo11BankSwizzleEj.exit.us28.preheader.i, %_ZL15getTransSwizzleN4llvm13R600InstrInfo11BankSwizzleEj.exit.us39.peel.next.i, %_ZL15getTransSwizzleN4llvm13R600InstrInfo11BankSwizzleEj.exit.peel.next80.i, %.lr.ph.i, %_ZNSt6vectorIS_ISt4pairIijESaIS1_EESaIS3_EE8pop_backEv.exit.split, %bb.o, %bb.n
  br label %.loopexit

_ZL15getTransSwizzleN4llvm13R600InstrInfo11BankSwizzleEj.exit.peel.next80.i: ; preds = %bb.n
  %i.eb = load i32, ptr %i.ds, align 4, !tbaa !355
  %i.ec = icmp sgt i32 %i.eb, -1
  br i1 %i.ec, label %_ZNK4llvm13R600InstrInfo24FindSwizzleForVectorSlotERKSt6vectorIS1_ISt4pairIijESaIS3_EESaIS5_EERS1_INS0_11BankSwizzleESaISA_EERKS5_SA_.exit47, label %.loopexit.preheader

bb.o:                                             ; preds = %.lr.ph.split.split.split.i
  br i1 %exitcond97.peel.not.i, label %.loopexit.preheader, label %_ZL15getTransSwizzleN4llvm13R600InstrInfo11BankSwizzleEj.exit.us39.peel.next.i

_ZL15getTransSwizzleN4llvm13R600InstrInfo11BankSwizzleEj.exit.us39.peel.next.i: ; preds = %bb.o
  %i.ed = load i32, ptr %i.dt, align 4, !tbaa !355
  %i.ee = icmp sgt i32 %i.ed, -1
  br i1 %i.ee, label %_ZNK4llvm13R600InstrInfo24FindSwizzleForVectorSlotERKSt6vectorIS1_ISt4pairIijESaIS3_EESaIS5_EERS1_INS0_11BankSwizzleESaISA_EERKS5_SA_.exit47, label %.loopexit.preheader

_ZL15getTransSwizzleN4llvm13R600InstrInfo11BankSwizzleEj.exit.us28.preheader.i: ; preds = %.lr.ph.split.split.split.i
  %i.ef = load i32, ptr %i.cv, align 4, !tbaa !355
  %i.eg = icmp slt i32 %i.ef, 0
  br i1 %i.eg, label %.loopexit.preheader, label %_ZNK4llvm13R600InstrInfo24FindSwizzleForVectorSlotERKSt6vectorIS1_ISt4pairIijESaIS3_EESaIS5_EERS1_INS0_11BankSwizzleESaISA_EERKS5_SA_.exit47

_ZL15getTransSwizzleN4llvm13R600InstrInfo11BankSwizzleEj.exit.us17.i: ; preds = %.lr.ph.split.split.split.i, %bb.p
  %indvars.iv111.i = phi i64 [ %indvars.iv.next112.i, %bb.p ], [ 0, %.lr.ph.split.split.split.i ] ; 3 uses
  %indvars113.i = trunc i64 %indvars.iv111.i to i32
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv111.i
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !355
  %i.ej = icmp slt i32 %i.ei, 0
  %i.ek = add i32 %indvars113.i, -3
  %switch51.i = icmp ult i32 %i.ek, -2
  %or.cond52.not.i = or i1 %i.ej, %switch51.i
  br i1 %or.cond52.not.i, label %bb.p, label %_ZNK4llvm13R600InstrInfo24FindSwizzleForVectorSlotERKSt6vectorIS1_ISt4pairIijESaIS3_EESaIS5_EERS1_INS0_11BankSwizzleESaISA_EERKS5_SA_.exit47

bb.p:                                             ; preds = %_ZL15getTransSwizzleN4llvm13R600InstrInfo11BankSwizzleEj.exit.us17.i
  %indvars.iv.next112.i = add nuw nsw i64 %indvars.iv111.i, 1 ; 2 uses
  %exitcond115.not.i = icmp eq i64 %indvars.iv.next112.i, %wide.trip.count114.i
  br i1 %exitcond115.not.i, label %.loopexit.preheader, label %_ZL15getTransSwizzleN4llvm13R600InstrInfo11BankSwizzleEj.exit.us17.i, !llvm.loop !617

default.unreachable:                              ; preds = %.lr.ph.split.split.split.i
  unreachable

.loopexit:                                        ; preds = %.loopexit.preheader, %_ZL20NextPossibleSolutionRSt6vectorIN4llvm13R600InstrInfo11BankSwizzleESaIS2_EEj.exit.i42
  %i.el = call noundef i32 @_ZNK4llvm13R600InstrInfo11isLegalUpToERKSt6vectorIS1_ISt4pairIijESaIS3_EESaIS5_EERKS1_INS0_11BankSwizzleESaISA_EERKS5_SA_(ptr noundef nonnull readonly align 8 dereferenceable(440) %0, ptr noundef nonnull readonly align 8 dereferenceable(24) %5, ptr noundef nonnull readonly align 8 dereferenceable(24) %3, ptr noundef nonnull readonly align 8 dereferenceable(24) %7, i32 noundef %i.du) ; 3 uses
  %i.em = zext i32 %i.el to i64                   ; 2 uses
  %i.en = load ptr, ptr %i.l, align 8, !tbaa !362
  %i.eo = load ptr, ptr %5, align 8, !tbaa !363
  %i.ep = ptrtoint ptr %i.en to i64
  %i.eq = ptrtoint ptr %i.eo to i64
  %i.er = sub i64 %i.ep, %i.eq
  %i.es = sdiv exact i64 %i.er, 24
  %i.et = icmp eq i64 %i.es, %i.em
  br i1 %i.et, label %_ZNK4llvm13R600InstrInfo24FindSwizzleForVectorSlotERKSt6vectorIS1_ISt4pairIijESaIS3_EESaIS5_EERS1_INS0_11BankSwizzleESaISA_EERKS5_SA_.exit47.thread, label %bb.q

bb.q:                                             ; preds = %.loopexit
  %.val.i35 = load ptr, ptr %3, align 8           ; 4 uses
  %.val9.i36 = load ptr, ptr %i.c, align 8
  %i.eu = icmp sgt i32 %i.el, -1
  br i1 %i.eu, label %.lr.ph.i.i45, label %.critedge.i.i37

.lr.ph.i.i45:                                     ; preds = %bb.q, %bb.r
  %indvars.iv89 = phi i64 [ %indvars.iv.next90, %bb.r ], [ %i.em, %bb.q ] ; 4 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %.val.i35, i64 %indvars.iv89
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !369
  %i.ex = icmp eq i32 %i.ew, 5
  br i1 %i.ex, label %bb.r, label %.critedge.i.i37.loopexit.split.loop.exit

bb.r:                                             ; preds = %.lr.ph.i.i45
  %indvars.iv.next90 = add nsw i64 %indvars.iv89, -1
  %i.ey = icmp sgt i64 %indvars.iv89, 0
  br i1 %i.ey, label %.lr.ph.i.i45, label %.critedge.i.i37, !llvm.loop !1

.critedge.i.i37.loopexit.split.loop.exit:         ; preds = %.lr.ph.i.i45
  %i.ez = trunc nuw nsw i64 %indvars.iv89 to i32
  br label %.critedge.i.i37

.critedge.i.i37:                                  ; preds = %bb.r, %.critedge.i.i37.loopexit.split.loop.exit, %bb.q
  %.019.lcssa.i.i38 = phi i32 [ %i.el, %bb.q ], [ %i.ez, %.critedge.i.i37.loopexit.split.loop.exit ], [ -1, %bb.r ] ; 4 uses
  %i.fa = ptrtoint ptr %.val9.i36 to i64
  %i.fb = ptrtoint ptr %.val.i35 to i64
  %i.fc = sub i64 %i.fa, %i.fb
  %i.fd = lshr exact i64 %i.fc, 2
  %i.fe = trunc i64 %i.fd to i32                  ; 2 uses
  %.0184.i.i39 = add i32 %.019.lcssa.i.i38, 1     ; 2 uses
  %i.ff = icmp ult i32 %.0184.i.i39, %i.fe
  br i1 %i.ff, label %.lr.ph6.preheader.i.i43, label %._crit_edge.i.i40

.lr.ph6.preheader.i.i43:                          ; preds = %.critedge.i.i37
  %i.fg = zext i32 %.0184.i.i39 to i64
  %i.fh = shl nuw nsw i64 %i.fg, 2
  %scevgep.i.i44 = getelementptr i8, ptr %.val.i35, i64 %i.fh
  %i.fi = add i32 %i.fe, -2
  %i.fj = sub i32 %i.fi, %.019.lcssa.i.i38
  %i.fk = zext i32 %i.fj to i64
  %i.fl = shl nuw nsw i64 %i.fk, 2
  %i.fm = add nuw nsw i64 %i.fl, 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i44, i8 0, i64 %i.fm, i1 false), !tbaa !369
  br label %._crit_edge.i.i40

._crit_edge.i.i40:                                ; preds = %.lr.ph6.preheader.i.i43, %.critedge.i.i37
  %.not.i41 = icmp eq i32 %.019.lcssa.i.i38, -1
  br i1 %.not.i41, label %_ZNK4llvm13R600InstrInfo24FindSwizzleForVectorSlotERKSt6vectorIS1_ISt4pairIijESaIS3_EESaIS5_EERS1_INS0_11BankSwizzleESaISA_EERKS5_SA_.exit47, label %_ZL20NextPossibleSolutionRSt6vectorIN4llvm13R600InstrInfo11BankSwizzleESaIS2_EEj.exit.i42

_ZL20NextPossibleSolutionRSt6vectorIN4llvm13R600InstrInfo11BankSwizzleESaIS2_EEj.exit.i42: ; preds = %._crit_edge.i.i40
  %i.fn = sext i32 %.019.lcssa.i.i38 to i64
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %.val.i35, i64 %i.fn ; 2 uses
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !369
  %i.fq = add nsw i32 %i.fp, 1
  store i32 %i.fq, ptr %i.fo, align 4, !tbaa !369
  br label %.loopexit, !llvm.loop !2

_ZNK4llvm13R600InstrInfo24FindSwizzleForVectorSlotERKSt6vectorIS1_ISt4pairIijESaIS3_EESaIS5_EERS1_INS0_11BankSwizzleESaISA_EERKS5_SA_.exit47.thread: ; preds = %.loopexit
  %i.fr = load ptr, ptr %i.c, align 8, !tbaa !619 ; 4 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !620
  %.not.i48 = icmp eq ptr %i.fr, %i.ft
  br i1 %.not.i48, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNK4llvm13R600InstrInfo24FindSwizzleForVectorSlotERKSt6vectorIS1_ISt4pairIijESaIS3_EESaIS5_EERS1_INS0_11BankSwizzleESaISA_EERKS5_SA_.exit47.thread
  store i32 %i.du, ptr %i.fr, align 4, !tbaa !369
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fr, i64 4
  store ptr %i.fu, ptr %i.c, align 8, !tbaa !619
  br label %_ZNK4llvm13R600InstrInfo24FindSwizzleForVectorSlotERKSt6vectorIS1_ISt4pairIijESaIS3_EESaIS5_EERS1_INS0_11BankSwizzleESaISA_EERKS5_SA_.exit

bb.t:                                             ; preds = %_ZNK4llvm13R600InstrInfo24FindSwizzleForVectorSlotERKSt6vectorIS1_ISt4pairIijESaIS3_EESaIS5_EERS1_INS0_11BankSwizzleESaISA_EERKS5_SA_.exit47.thread
  %i.fv = load ptr, ptr %3, align 8, !tbaa !367   ; 4 uses
  %i.fw = ptrtoint ptr %i.fr to i64
  %i.fx = ptrtoint ptr %i.fv to i64               ; 2 uses
  %i.fy = sub i64 %i.fw, %i.fx                    ; 5 uses
  %i.fz = icmp eq i64 %i.fy, 9223372036854775804
  br i1 %i.fz, label %bb.u, label %_ZNKSt6vectorIN4llvm13R600InstrInfo11BankSwizzleESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.u:                                             ; preds = %bb.t
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #26
  unreachable

_ZNKSt6vectorIN4llvm13R600InstrInfo11BankSwizzleESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.t
  %i.ga = ashr exact i64 %i.fy, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ga, i64 1)
  %i.gb = add nsw i64 %.sroa.speculated.i.i.i, %i.ga ; 2 uses
  %i.gc = icmp ult i64 %i.gb, %i.ga
  %i.gd = call i64 @llvm.umin.i64(i64 %i.gb, i64 2305843009213693951)
  %i.ge = select i1 %i.gc, i64 2305843009213693951, i64 %i.gd ; 3 uses
  %.not.i.i.i49.a = icmp ne i64 %i.ge, 0
  call void @llvm.assume(i1 %.not.i.i.i49.a)
  %i.gf = shl nuw nsw i64 %i.ge, 2
  %i.gg = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gf) #25 ; 4 uses
  %i.gh = getelementptr inbounds i8, ptr %i.gg, i64 %i.fy ; 2 uses
  store i32 %i.du, ptr %i.gh, align 4, !tbaa !369
  %i.gi = icmp sgt i64 %i.fy, 0
  br i1 %i.gi, label %bb.v, label %_ZNSt6vectorIN4llvm13R600InstrInfo11BankSwizzleESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.v:                                             ; preds = %_ZNKSt6vectorIN4llvm13R600InstrInfo11BankSwizzleESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.gg, ptr align 4 %i.fv, i64 %i.fy, i1 false)
  br label %_ZNSt6vectorIN4llvm13R600InstrInfo11BankSwizzleESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIN4llvm13R600InstrInfo11BankSwizzleESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.v, %_ZNKSt6vectorIN4llvm13R600InstrInfo11BankSwizzleESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gh, i64 4
  %.not.i17.i.i = icmp eq ptr %i.fv, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIN4llvm13R600InstrInfo11BankSwizzleESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIN4llvm13R600InstrInfo11BankSwizzleESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  %i.gk = load ptr, ptr %i.fs, align 8, !tbaa !620
  %i.gl = ptrtoint ptr %i.gk to i64
  %i.gm = sub i64 %i.gl, %i.fx
  call void @_ZdlPvm(ptr noundef nonnull %i.fv, i64 noundef %i.gm) #27
  br label %_ZNSt6vectorIN4llvm13R600InstrInfo11BankSwizzleESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN4llvm13R600InstrInfo11BankSwizzleESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.w, %_ZNSt6vectorIN4llvm13R600InstrInfo11BankSwizzleESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.gg, ptr %3, align 8, !tbaa !367
  store ptr %i.gj, ptr %i.c, align 8, !tbaa !619
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %i.ge
  store ptr %i.gn, ptr %i.fs, align 8, !tbaa !620
  br label %_ZNK4llvm13R600InstrInfo24FindSwizzleForVectorSlotERKSt6vectorIS1_ISt4pairIijESaIS3_EESaIS5_EERS1_INS0_11BankSwizzleESaISA_EERKS5_SA_.exit

_ZNK4llvm13R600InstrInfo24FindSwizzleForVectorSlotERKSt6vectorIS1_ISt4pairIijESaIS3_EESaIS5_EERS1_INS0_11BankSwizzleESaISA_EERKS5_SA_.exit47: ; preds = %_ZL15getTransSwizzleN4llvm13R600InstrInfo11BankSwizzleEj.exit.us17.i, %_ZL15getTransSwizzleN4llvm13R600InstrInfo11BankSwizzleEj.exit.us9.i, %._crit_edge.i.i40, %_ZL15getTransSwizzleN4llvm13R600InstrInfo11BankSwizzleEj.exit.peel.next80.i, %_ZL15getTransSwizzleN4llvm13R600InstrInfo11BankSwizzleEj.exit.us39.peel.next.i, %_ZL15getTransSwizzleN4llvm13R600InstrInfo11BankSwizzleEj.exit.us28.preheader.i
  %.0.add = add nuw nsw i64 %.0.idx77, 4          ; 2 uses
  %.not.not = icmp eq i64 %.0.add, 16
  br i1 %.not.not, label %_ZNK4llvm13R600InstrInfo24FindSwizzleForVectorSlotERKSt6vectorIS1_ISt4pairIijESaIS3_EESaIS5_EERS1_INS0_11BankSwizzleESaISA_EERKS5_SA_.exit, label %_ZNSt6vectorIS_ISt4pairIijESaIS1_EESaIS3_EE8pop_backEv.exit.split

_ZNK4llvm13R600InstrInfo24FindSwizzleForVectorSlotERKSt6vectorIS1_ISt4pairIijESaIS3_EESaIS5_EERS1_INS0_11BankSwizzleESaISA_EERKS5_SA_.exit: ; preds = %_ZNK4llvm13R600InstrInfo24FindSwizzleForVectorSlotERKSt6vectorIS1_ISt4pairIijESaIS3_EESaIS5_EERS1_INS0_11BankSwizzleESaISA_EERKS5_SA_.exit47, %_ZNSt6vectorIS_ISt4pairIijESaIS1_EESaIS3_EE8pop_backEv.exit, %_ZNSt6vectorIN4llvm13R600InstrInfo11BankSwizzleESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.s
  %.4 = phi i1 [ true, %_ZNSt6vectorIN4llvm13R600InstrInfo11BankSwizzleESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ false, %_ZNSt6vectorIS_ISt4pairIijESaIS1_EESaIS3_EE8pop_backEv.exit ], [ true, %bb.s ], [ false, %_ZNK4llvm13R600InstrInfo24FindSwizzleForVectorSlotERKSt6vectorIS1_ISt4pairIijESaIS3_EESaIS5_EERS1_INS0_11BankSwizzleESaISA_EERKS5_SA_.exit47 ] ; 2 uses
  %.not.i.i.i50 = icmp eq ptr %i.cv, null
  br i1 %.not.i.i.i50, label %_ZNSt6vectorISt4pairIijESaIS1_EED2Ev.exit51, label %bb.x

bb.x:                                             ; preds = %_ZNK4llvm13R600InstrInfo24FindSwizzleForVectorSlotERKSt6vectorIS1_ISt4pairIijESaIS3_EESaIS5_EERS1_INS0_11BankSwizzleESaISA_EERKS5_SA_.exit
  %i.go = ptrtoint ptr %i.cz to i64
  %i.gp = ptrtoint ptr %i.cv to i64
  %i.gq = sub i64 %i.go, %i.gp
  call void @_ZdlPvm(ptr noundef nonnull %i.cv, i64 noundef %i.gq) #27
  br label %_ZNSt6vectorISt4pairIijESaIS1_EED2Ev.exit51

_ZNSt6vectorISt4pairIijESaIS1_EED2Ev.exit51:      ; preds = %._crit_edge.i.i, %.preheader, %_ZNK4llvm13R600InstrInfo24FindSwizzleForVectorSlotERKSt6vectorIS1_ISt4pairIijESaIS3_EESaIS5_EERS1_INS0_11BankSwizzleESaISA_EERKS5_SA_.exit, %bb.x
  %.4122 = phi i1 [ %.4, %bb.x ], [ %.4, %_ZNK4llvm13R600InstrInfo24FindSwizzleForVectorSlotERKSt6vectorIS1_ISt4pairIijESaIS3_EESaIS5_EERS1_INS0_11BankSwizzleESaISA_EERKS5_SA_.exit ], [ %i.bt, %.preheader ], [ %i.bt, %._crit_edge.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.gr = load ptr, ptr %5, align 8, !tbaa !363   ; 3 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !362 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.gr, %i.gt
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorISt4pairIijESaIS2_EEEvT_S6_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorISt4pairIijESaIS1_EED2Ev.exit51, %_ZSt8_DestroyISt6vectorISt4pairIijESaIS2_EEEvPT_.exit.i.i.i
end_hunk_0
