Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/NVPTXInstrInfo?download=true
inline.NumInlined: 585
inline.NumDeleted: 348
begin_hunk_0_@_ZNK4llvm14NVPTXInstrInfo26invertPredicateBranchInstrERNS_17MachineBasicBlockE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i1 %.0
}

declare ptr @_ZN4llvm17MachineBasicBlock18findBranchDebugLocEv(ptr noundef nonnull align 8 dereferenceable(360)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm14NVPTXInstrInfo21findCommutedOpIndicesERKNS_12MachineInstrERjS4_(ptr noundef nonnull align 8 dereferenceable(568) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.val = load i32, ptr %i.a, align 4, !tbaa !222 ; 2 uses
  %.off.i = add i32 %.val, -1590
  %switch.i = icmp ult i32 %.off.i, 9
  br i1 %switch.i, label %_ZL17isScalarFloatSetpRKN4llvm12MachineInstrE.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %.val, label %_ZL17isScalarFloatSetpRKN4llvm12MachineInstrE.exit [
    i32 1580, label %_ZL17isScalarFloatSetpRKN4llvm12MachineInstrE.exit.thread
    i32 1582, label %_ZL17isScalarFloatSetpRKN4llvm12MachineInstrE.exit.thread
    i32 1586, label %_ZL17isScalarFloatSetpRKN4llvm12MachineInstrE.exit.thread
    i32 1585, label %_ZL17isScalarFloatSetpRKN4llvm12MachineInstrE.exit.thread
    i32 1584, label %_ZL17isScalarFloatSetpRKN4llvm12MachineInstrE.exit.thread
    i32 1589, label %_ZL17isScalarFloatSetpRKN4llvm12MachineInstrE.exit.thread
    i32 1588, label %_ZL17isScalarFloatSetpRKN4llvm12MachineInstrE.exit.thread
    i32 1587, label %_ZL17isScalarFloatSetpRKN4llvm12MachineInstrE.exit.thread
  ]

_ZL17isScalarFloatSetpRKN4llvm12MachineInstrE.exit.thread: ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.a
  %i.b = tail call noundef zeroext i1 @_ZN4llvm15TargetInstrInfo20fixCommutedOpIndicesERjS1_jj(ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, i32 noundef 1, i32 noundef 2) #15
  br label %bb.c

_ZL17isScalarFloatSetpRKN4llvm12MachineInstrE.exit: ; preds = %bb.b
  %i.c = tail call noundef zeroext i1 @_ZNK4llvm15TargetInstrInfo21findCommutedOpIndicesERKNS_12MachineInstrERjS4_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) #15
  br label %bb.c

bb.c:                                             ; preds = %_ZL17isScalarFloatSetpRKN4llvm12MachineInstrE.exit, %_ZL17isScalarFloatSetpRKN4llvm12MachineInstrE.exit.thread
  %.0 = phi i1 [ %i.b, %_ZL17isScalarFloatSetpRKN4llvm12MachineInstrE.exit.thread ], [ %i.c, %_ZL17isScalarFloatSetpRKN4llvm12MachineInstrE.exit ]
  ret i1 %.0
}

declare noundef zeroext i1 @_ZN4llvm15TargetInstrInfo20fixCommutedOpIndicesERjS1_jj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef, i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK4llvm15TargetInstrInfo21findCommutedOpIndicesERKNS_12MachineInstrERjS4_(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZNK4llvm14NVPTXInstrInfo22commuteInstructionImplERNS_12MachineInstrEbjj(ptr noundef nonnull align 8 dereferenceable(568) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.llvm::SmallVector.39", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 3 uses
  %.val = load i32, ptr %i.a, align 4, !tbaa !222 ; 2 uses
  %.off.i = add i32 %.val, -1590                  ; 3 uses
  %switch.i = icmp ult i32 %.off.i, 9
  br i1 %switch.i, label %_ZL17isScalarFloatSetpRKN4llvm12MachineInstrE.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %.val, label %_ZL17isScalarFloatSetpRKN4llvm12MachineInstrE.exit [
    i32 1580, label %_ZL17isScalarFloatSetpRKN4llvm12MachineInstrE.exit.thread
    i32 1582, label %_ZL17isScalarFloatSetpRKN4llvm12MachineInstrE.exit.thread
    i32 1586, label %_ZL17isScalarFloatSetpRKN4llvm12MachineInstrE.exit.thread
    i32 1585, label %_ZL17isScalarFloatSetpRKN4llvm12MachineInstrE.exit.thread
    i32 1584, label %_ZL17isScalarFloatSetpRKN4llvm12MachineInstrE.exit.thread
    i32 1589, label %_ZL17isScalarFloatSetpRKN4llvm12MachineInstrE.exit.thread
    i32 1588, label %_ZL17isScalarFloatSetpRKN4llvm12MachineInstrE.exit.thread
    i32 1587, label %_ZL17isScalarFloatSetpRKN4llvm12MachineInstrE.exit.thread
  ]

_ZL17isScalarFloatSetpRKN4llvm12MachineInstrE.exit: ; preds = %bb.b
  %i.b = tail call noundef ptr @_ZNK4llvm15TargetInstrInfo22commuteInstructionImplERNS_12MachineInstrEbjj(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) #15
  br label %bb.s

_ZL17isScalarFloatSetpRKN4llvm12MachineInstrE.exit.thread: ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !273
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !93
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !204  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.i, ptr %5, align 8, !tbaa !205
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  store i32 0, ptr %i.j, align 8, !tbaa !225
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  store i32 4, ptr %i.k, align 4, !tbaa !226
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !223  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !211  ; 3 uses
  %i.p = icmp slt i32 %i.o, 0
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.r = and i32 %i.o, 2147483647
  %i.s = zext nneg i32 %i.r to i64
  %i.t = load ptr, ptr %i.q, align 8
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %i.s
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 312
  %i.x = zext nneg i32 %i.o to i64
  %i.y = load ptr, ptr %i.w, align 8
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.x
  %.0.in.i.i.i = select i1 %i.p, ptr %i.v, ptr %i.z
  %.0.i.i.i = load ptr, ptr %.0.in.i.i.i, align 8, !tbaa !274 ; 4 uses
  %.not.i.i.i = icmp eq ptr %.0.i.i.i, null
  br i1 %.not.i.i.i, label %.critedge34, label %bb.c

bb.c:                                             ; preds = %_ZL17isScalarFloatSetpRKN4llvm12MachineInstrE.exit.thread
  %i.aa = load i32, ptr %.0.i.i.i, align 8
  %i.ab = and i32 %i.aa, -2130706432
  %or.cond.not.i.i.i = icmp eq i32 %i.ab, 0
  br i1 %or.cond.not.i.i.i, label %.lr.ph.preheader, label %.critedge2.i.i.i.i

.critedge2.i.i.i.i:                               ; preds = %bb.c, %bb.d
  %.pn.i.i.i.i = phi ptr [ %storemerge.i.i.i.i, %bb.d ], [ %.0.i.i.i, %bb.c ]
  %storemerge.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i, i64 24
  %storemerge.i.i.i.i = load ptr, ptr %storemerge.in.i.i.i.i, align 8, !tbaa !211 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %storemerge.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %.critedge34, label %bb.d

bb.d:                                             ; preds = %.critedge2.i.i.i.i
  %i.ac = load i32, ptr %storemerge.i.i.i.i, align 8
  %i.ad = and i32 %i.ac, -2130706432
  %or.cond.not.i.i.i.i = icmp eq i32 %i.ad, 0
  br i1 %or.cond.not.i.i.i.i, label %.lr.ph.preheader, label %.critedge2.i.i.i.i, !llvm.loop !270

.lr.ph.preheader:                                 ; preds = %bb.d, %bb.c
  %.sroa.0.0.i.i = phi ptr [ %.0.i.i.i, %bb.c ], [ %storemerge.i.i.i.i, %bb.d ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 8 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !210 ; 2 uses
  %i.ag = call noundef zeroext i1 @_ZNK4llvm12MachineInstr19isConditionalBranchENS0_9QueryTypeE(ptr noundef nonnull align 8 dereferenceable(80) %i.af, i32 noundef 1)
  br i1 %i.ag, label %.lr.ph107, label %.critedge

.lr.ph.loopexit:                                  ; preds = %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb1ELb1EE7advanceEv.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %storemerge.i.i, i64 8 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !210 ; 2 uses
  %i.aj = call noundef zeroext i1 @_ZNK4llvm12MachineInstr19isConditionalBranchENS0_9QueryTypeE(ptr noundef nonnull align 8 dereferenceable(80) %i.ai, i32 noundef 1)
  br i1 %i.aj, label %.lr.ph107, label %.critedge, !llvm.loop !271

.lr.ph107:                                        ; preds = %.lr.ph.preheader, %.lr.ph.loopexit
  %i.ak = phi ptr [ %i.ai, %.lr.ph.loopexit ], [ %i.af, %.lr.ph.preheader ]
  %i.al = phi ptr [ %i.ah, %.lr.ph.loopexit ], [ %i.ae, %.lr.ph.preheader ]
  %.sroa.050.060106 = phi ptr [ %storemerge.i.i, %.lr.ph.loopexit ], [ %.sroa.0.0.i.i, %.lr.ph.preheader ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !273 ; 2 uses
  %i.ao = load i32, ptr %i.j, align 8, !tbaa !225 ; 2 uses
  %i.ap = load i32, ptr %i.k, align 4, !tbaa !226
  %.not.i = icmp ult i32 %i.ao, %i.ap
  br i1 %.not.i, label %bb.f, label %bb.e, !prof !227

bb.e:                                             ; preds = %.lr.ph107
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_17MachineBasicBlockELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %i.an)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_17MachineBasicBlockELb1EE9push_backES2_.exit

bb.f:                                             ; preds = %.lr.ph107
  %i.aq = zext i32 %i.ao to i64
  %i.ar = load ptr, ptr %5, align 8, !tbaa !205
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.aq
  store ptr %i.an, ptr %i.as, align 1
  %i.at = load i32, ptr %i.j, align 8, !tbaa !225
  %i.au = add i32 %i.at, 1
  store i32 %i.au, ptr %i.j, align 8, !tbaa !225
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_17MachineBasicBlockELb1EE9push_backES2_.exit

_ZN4llvm23SmallVectorTemplateBaseIPNS_17MachineBasicBlockELb1EE9push_backES2_.exit: ; preds = %bb.e, %bb.f
  %i.av = load ptr, ptr %i.al, align 8, !tbaa !210
  br label %.critedge2.i.i

.critedge2.i.i:                                   ; preds = %.critedge2.i.i.backedge, %_ZN4llvm23SmallVectorTemplateBaseIPNS_17MachineBasicBlockELb1EE9push_backES2_.exit
  %.pn.i.i = phi ptr [ %.sroa.050.060106, %_ZN4llvm23SmallVectorTemplateBaseIPNS_17MachineBasicBlockELb1EE9push_backES2_.exit ], [ %storemerge.i.i, %.critedge2.i.i.backedge ]
  %storemerge.in.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 24
  %storemerge.i.i = load ptr, ptr %storemerge.in.i.i, align 8, !tbaa !211 ; 6 uses
  %.not.i.i = icmp eq ptr %storemerge.i.i, null
  br i1 %.not.i.i, label %.critedge34.loopexit, label %bb.g

bb.g:                                             ; preds = %.critedge2.i.i
  %i.aw = load i32, ptr %storemerge.i.i, align 8
  %i.ax = and i32 %i.aw, -2130706432
  %or.cond.not.i.i = icmp eq i32 %i.ax, 0
  br i1 %or.cond.not.i.i, label %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb1ELb1EE7advanceEv.exit.i, label %.critedge2.i.i.backedge

.critedge2.i.i.backedge:                          ; preds = %bb.g, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb1ELb1EE7advanceEv.exit.i
  br label %.critedge2.i.i

_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb1ELb1EE7advanceEv.exit.i: ; preds = %bb.g
  %i.ay = getelementptr inbounds nuw i8, ptr %storemerge.i.i, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !210
  %i.ba = icmp eq ptr %i.az, %i.av
  br i1 %i.ba, label %.critedge2.i.i.backedge, label %.lr.ph.loopexit

.critedge34.loopexit:                             ; preds = %.critedge2.i.i
  %.val38.pre = load ptr, ptr %i.l, align 8, !tbaa !223
  %.val39.pre = load i32, ptr %i.a, align 4, !tbaa !222
  %.pre = add i32 %.val39.pre, -1590
  br label %.critedge34

.critedge34:                                      ; preds = %.critedge2.i.i.i.i, %_ZL17isScalarFloatSetpRKN4llvm12MachineInstrE.exit.thread, %.critedge34.loopexit
  %.off.i.i.pre-phi = phi i32 [ %.pre, %.critedge34.loopexit ], [ %.off.i, %_ZL17isScalarFloatSetpRKN4llvm12MachineInstrE.exit.thread ], [ %.off.i, %.critedge2.i.i.i.i ]
  %.val38 = phi ptr [ %.val38.pre, %.critedge34.loopexit ], [ %i.m, %_ZL17isScalarFloatSetpRKN4llvm12MachineInstrE.exit.thread ], [ %i.m, %.critedge2.i.i.i.i ]
  %switch.i.i = icmp ult i32 %.off.i.i.pre-phi, 9
  %i.bb = getelementptr inbounds nuw i8, ptr %.val38, i64 112 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !211
  %switch.table._ZNK4llvm14NVPTXInstrInfo22commuteInstructionImplERNS_12MachineInstrEbjj.switch.table._ZNK4llvm14NVPTXInstrInfo22commuteInstructionImplERNS_12MachineInstrEbjj.7 = select i1 %switch.i.i, ptr @switch.table._ZNK4llvm14NVPTXInstrInfo22commuteInstructionImplERNS_12MachineInstrEbjj.8, ptr @switch.table._ZNK4llvm14NVPTXInstrInfo22commuteInstructionImplERNS_12MachineInstrEbjj.9
  %switch.gep = getelementptr inbounds i8, ptr %switch.table._ZNK4llvm14NVPTXInstrInfo22commuteInstructionImplERNS_12MachineInstrEbjj.switch.table._ZNK4llvm14NVPTXInstrInfo22commuteInstructionImplERNS_12MachineInstrEbjj.7, i64 %i.bc
  %switch.load110.sink = load i8, ptr %switch.gep, align 1
  %switch.ext111 = zext i8 %switch.load110.sink to i64
  store i64 %switch.ext111, ptr %i.bb, align 8, !tbaa !211
  %.val40 = load ptr, ptr %5, align 8, !tbaa !205 ; 3 uses
  %.val41 = load i32, ptr %i.j, align 8, !tbaa !225
  %i.bd = zext i32 %.val41 to i64                 ; 3 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %.val40, i64 %i.bd ; 2 uses
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = lshr i64 %i.bd, 2                       ; 2 uses
  %.not.i43 = icmp eq i64 %i.bg, 0
  br i1 %.not.i43, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.critedge34, %bb.k
  %.051.i.i.i.i = phi i64 [ %i.bp, %bb.k ], [ %i.bg, %.critedge34 ] ; 2 uses
  %.02950.i.i.i.i = phi ptr [ %i.bo, %bb.k ], [ %.val40, %.critedge34 ] ; 9 uses
  %.029.val39.i.i.i.i = load ptr, ptr %.02950.i.i.i.i, align 8, !tbaa !224
  %i.bh = call noundef zeroext i1 @_ZNK4llvm14NVPTXInstrInfo26invertPredicateBranchInstrERNS_17MachineBasicBlockE(ptr noundef nonnull align 8 dereferenceable(568) %0, ptr noundef nonnull align 8 dereferenceable(360) %.029.val39.i.i.i.i)
  br i1 %i.bh, label %bb.h, label %"_ZN4llvm7find_ifIRNS_11SmallVectorIPNS_17MachineBasicBlockELj4EEEZNKS_14NVPTXInstrInfo22commuteInstructionImplERNS_12MachineInstrEbjjE3$_0EEDaOT_T0_.exit"

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.02950.i.i.i.i, i64 8
  %.val37.i.i.i.i = load ptr, ptr %i.bi, align 8, !tbaa !224
  %i.bj = call noundef zeroext i1 @_ZNK4llvm14NVPTXInstrInfo26invertPredicateBranchInstrERNS_17MachineBasicBlockE(ptr noundef nonnull align 8 dereferenceable(568) %0, ptr noundef nonnull align 8 dereferenceable(360) %.val37.i.i.i.i)
  br i1 %i.bj, label %bb.i, label %"_ZN4llvm7find_ifIRNS_11SmallVectorIPNS_17MachineBasicBlockELj4EEEZNKS_14NVPTXInstrInfo22commuteInstructionImplERNS_12MachineInstrEbjjE3$_0EEDaOT_T0_.exit.loopexit.split.loop.exit"

bb.i:                                             ; preds = %bb.h
  %i.bk = getelementptr inbounds nuw i8, ptr %.02950.i.i.i.i, i64 16
  %.val35.i.i.i.i = load ptr, ptr %i.bk, align 8, !tbaa !224
  %i.bl = call noundef zeroext i1 @_ZNK4llvm14NVPTXInstrInfo26invertPredicateBranchInstrERNS_17MachineBasicBlockE(ptr noundef nonnull align 8 dereferenceable(568) %0, ptr noundef nonnull align 8 dereferenceable(360) %.val35.i.i.i.i)
  br i1 %i.bl, label %bb.j, label %"_ZN4llvm7find_ifIRNS_11SmallVectorIPNS_17MachineBasicBlockELj4EEEZNKS_14NVPTXInstrInfo22commuteInstructionImplERNS_12MachineInstrEbjjE3$_0EEDaOT_T0_.exit.loopexit.split.loop.exit91"

bb.j:                                             ; preds = %bb.i
  %i.bm = getelementptr inbounds nuw i8, ptr %.02950.i.i.i.i, i64 24
  %.val33.i.i.i.i = load ptr, ptr %i.bm, align 8, !tbaa !224
  %i.bn = call noundef zeroext i1 @_ZNK4llvm14NVPTXInstrInfo26invertPredicateBranchInstrERNS_17MachineBasicBlockE(ptr noundef nonnull align 8 dereferenceable(568) %0, ptr noundef nonnull align 8 dereferenceable(360) %.val33.i.i.i.i)
  br i1 %i.bn, label %bb.k, label %"_ZN4llvm7find_ifIRNS_11SmallVectorIPNS_17MachineBasicBlockELj4EEEZNKS_14NVPTXInstrInfo22commuteInstructionImplERNS_12MachineInstrEbjjE3$_0EEDaOT_T0_.exit.loopexit.split.loop.exit93"

bb.k:                                             ; preds = %bb.j
  %i.bo = getelementptr inbounds nuw i8, ptr %.02950.i.i.i.i, i64 32 ; 3 uses
  %i.bp = add nsw i64 %.051.i.i.i.i, -1
  %i.bq = icmp sgt i64 %.051.i.i.i.i, 1
  br i1 %i.bq, label %.lr.ph.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !272

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.k
  %.pre.i.i.i.i = ptrtoint ptr %i.bo to i64
  %.pre56.i.i.i.i = sub i64 %i.bf, %.pre.i.i.i.i
  %i.br = ashr exact i64 %.pre56.i.i.i.i, 3
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %.critedge34
  %.pre-phi57.i.i.i.i = phi i64 [ %i.br, %._crit_edge.loopexit.i.i.i.i ], [ %i.bd, %.critedge34 ]
  %.029.lcssa.i.i.i.i = phi ptr [ %i.bo, %._crit_edge.loopexit.i.i.i.i ], [ %.val40, %.critedge34 ] ; 5 uses
  switch i64 %.pre-phi57.i.i.i.i, label %bb.q [
    i64 3, label %bb.l
    i64 2, label %bb.n
    i64 1, label %bb.p
  ]

bb.l:                                             ; preds = %._crit_edge.i.i.i.i
  %.029.val.i.i.i.i = load ptr, ptr %.029.lcssa.i.i.i.i, align 8, !tbaa !224
  %i.bs = call noundef zeroext i1 @_ZNK4llvm14NVPTXInstrInfo26invertPredicateBranchInstrERNS_17MachineBasicBlockE(ptr noundef nonnull align 8 dereferenceable(568) %0, ptr noundef nonnull align 8 dereferenceable(360) %.029.val.i.i.i.i)
  br i1 %i.bs, label %bb.m, label %"_ZN4llvm7find_ifIRNS_11SmallVectorIPNS_17MachineBasicBlockELj4EEEZNKS_14NVPTXInstrInfo22commuteInstructionImplERNS_12MachineInstrEbjjE3$_0EEDaOT_T0_.exit"

bb.m:                                             ; preds = %bb.l
  %i.bt = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i, i64 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi ptr [ %i.bt, %bb.m ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %.1.val.i.i.i.i = load ptr, ptr %.1.i.i.i.i, align 8, !tbaa !224
  %i.bu = call noundef zeroext i1 @_ZNK4llvm14NVPTXInstrInfo26invertPredicateBranchInstrERNS_17MachineBasicBlockE(ptr noundef nonnull align 8 dereferenceable(568) %0, ptr noundef nonnull align 8 dereferenceable(360) %.1.val.i.i.i.i)
  br i1 %i.bu, label %bb.o, label %"_ZN4llvm7find_ifIRNS_11SmallVectorIPNS_17MachineBasicBlockELj4EEEZNKS_14NVPTXInstrInfo22commuteInstructionImplERNS_12MachineInstrEbjjE3$_0EEDaOT_T0_.exit"

bb.o:                                             ; preds = %bb.n
  %i.bv = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge.i.i.i.i
  %.2.i.i.i.i = phi ptr [ %i.bv, %bb.o ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %.2.val.i.i.i.i = load ptr, ptr %.2.i.i.i.i, align 8, !tbaa !224
  %i.bw = call noundef zeroext i1 @_ZNK4llvm14NVPTXInstrInfo26invertPredicateBranchInstrERNS_17MachineBasicBlockE(ptr noundef nonnull align 8 dereferenceable(568) %0, ptr noundef nonnull align 8 dereferenceable(360) %.2.val.i.i.i.i)
  br i1 %i.bw, label %bb.q, label %"_ZN4llvm7find_ifIRNS_11SmallVectorIPNS_17MachineBasicBlockELj4EEEZNKS_14NVPTXInstrInfo22commuteInstructionImplERNS_12MachineInstrEbjjE3$_0EEDaOT_T0_.exit"

bb.q:                                             ; preds = %bb.p, %._crit_edge.i.i.i.i
  br label %"_ZN4llvm7find_ifIRNS_11SmallVectorIPNS_17MachineBasicBlockELj4EEEZNKS_14NVPTXInstrInfo22commuteInstructionImplERNS_12MachineInstrEbjjE3$_0EEDaOT_T0_.exit"

"_ZN4llvm7find_ifIRNS_11SmallVectorIPNS_17MachineBasicBlockELj4EEEZNKS_14NVPTXInstrInfo22commuteInstructionImplERNS_12MachineInstrEbjjE3$_0EEDaOT_T0_.exit.loopexit.split.loop.exit": ; preds = %bb.h
  %i.bx = getelementptr inbounds nuw i8, ptr %.02950.i.i.i.i, i64 8
  br label %"_ZN4llvm7find_ifIRNS_11SmallVectorIPNS_17MachineBasicBlockELj4EEEZNKS_14NVPTXInstrInfo22commuteInstructionImplERNS_12MachineInstrEbjjE3$_0EEDaOT_T0_.exit"

"_ZN4llvm7find_ifIRNS_11SmallVectorIPNS_17MachineBasicBlockELj4EEEZNKS_14NVPTXInstrInfo22commuteInstructionImplERNS_12MachineInstrEbjjE3$_0EEDaOT_T0_.exit.loopexit.split.loop.exit91": ; preds = %bb.i
  %i.by = getelementptr inbounds nuw i8, ptr %.02950.i.i.i.i, i64 16
  br label %"_ZN4llvm7find_ifIRNS_11SmallVectorIPNS_17MachineBasicBlockELj4EEEZNKS_14NVPTXInstrInfo22commuteInstructionImplERNS_12MachineInstrEbjjE3$_0EEDaOT_T0_.exit"

"_ZN4llvm7find_ifIRNS_11SmallVectorIPNS_17MachineBasicBlockELj4EEEZNKS_14NVPTXInstrInfo22commuteInstructionImplERNS_12MachineInstrEbjjE3$_0EEDaOT_T0_.exit.loopexit.split.loop.exit93": ; preds = %bb.j
  %i.bz = getelementptr inbounds nuw i8, ptr %.02950.i.i.i.i, i64 24
  br label %"_ZN4llvm7find_ifIRNS_11SmallVectorIPNS_17MachineBasicBlockELj4EEEZNKS_14NVPTXInstrInfo22commuteInstructionImplERNS_12MachineInstrEbjjE3$_0EEDaOT_T0_.exit"

"_ZN4llvm7find_ifIRNS_11SmallVectorIPNS_17MachineBasicBlockELj4EEEZNKS_14NVPTXInstrInfo22commuteInstructionImplERNS_12MachineInstrEbjjE3$_0EEDaOT_T0_.exit": ; preds = %.lr.ph.i.i.i.i, %"_ZN4llvm7find_ifIRNS_11SmallVectorIPNS_17MachineBasicBlockELj4EEEZNKS_14NVPTXInstrInfo22commuteInstructionImplERNS_12MachineInstrEbjjE3$_0EEDaOT_T0_.exit.loopexit.split.loop.exit", %"_ZN4llvm7find_ifIRNS_11SmallVectorIPNS_17MachineBasicBlockELj4EEEZNKS_14NVPTXInstrInfo22commuteInstructionImplERNS_12MachineInstrEbjjE3$_0EEDaOT_T0_.exit.loopexit.split.loop.exit91", %"_ZN4llvm7find_ifIRNS_11SmallVectorIPNS_17MachineBasicBlockELj4EEEZNKS_14NVPTXInstrInfo22commuteInstructionImplERNS_12MachineInstrEbjjE3$_0EEDaOT_T0_.exit.loopexit.split.loop.exit93", %bb.l, %bb.n, %bb.p, %bb.q
  %.028.i.i.i.i = phi ptr [ %.1.i.i.i.i, %bb.n ], [ %i.be, %bb.q ], [ %.2.i.i.i.i, %bb.p ], [ %.029.lcssa.i.i.i.i, %bb.l ], [ %i.bz, %"_ZN4llvm7find_ifIRNS_11SmallVectorIPNS_17MachineBasicBlockELj4EEEZNKS_14NVPTXInstrInfo22commuteInstructionImplERNS_12MachineInstrEbjjE3$_0EEDaOT_T0_.exit.loopexit.split.loop.exit93" ], [ %i.bx, %"_ZN4llvm7find_ifIRNS_11SmallVectorIPNS_17MachineBasicBlockELj4EEEZNKS_14NVPTXInstrInfo22commuteInstructionImplERNS_12MachineInstrEbjjE3$_0EEDaOT_T0_.exit.loopexit.split.loop.exit" ], [ %i.by, %"_ZN4llvm7find_ifIRNS_11SmallVectorIPNS_17MachineBasicBlockELj4EEEZNKS_14NVPTXInstrInfo22commuteInstructionImplERNS_12MachineInstrEbjjE3$_0EEDaOT_T0_.exit.loopexit.split.loop.exit91" ], [ %.02950.i.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.ca = load ptr, ptr %5, align 8, !tbaa !205   ; 3 uses
  %i.cb = load i32, ptr %i.j, align 8, !tbaa !225
  %i.cc = zext i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.cc
  %i.ce = icmp eq ptr %.028.i.i.i.i, %i.cd
  br i1 %i.ce, label %.critedge, label %.preheader

.preheader:                                       ; preds = %"_ZN4llvm7find_ifIRNS_11SmallVectorIPNS_17MachineBasicBlockELj4EEEZNKS_14NVPTXInstrInfo22commuteInstructionImplERNS_12MachineInstrEbjjE3$_0EEDaOT_T0_.exit"
  %.not69 = icmp eq ptr %i.ca, %.028.i.i.i.i
  br i1 %.not69, label %._crit_edge, label %.lr.ph71

._crit_edge:                                      ; preds = %.lr.ph71, %.preheader
  %.val36 = load ptr, ptr %i.l, align 8, !tbaa !223
  %.val37 = load i32, ptr %i.a, align 4, !tbaa !222
  %.off.i.i44 = add i32 %.val37, -1590
  %switch.i.i45 = icmp ult i32 %.off.i.i44, 9
  %i.cf = getelementptr inbounds nuw i8, ptr %.val36, i64 112 ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !211
  %switch.table._ZNK4llvm14NVPTXInstrInfo22commuteInstructionImplERNS_12MachineInstrEbjj.8.switch.table._ZNK4llvm14NVPTXInstrInfo22commuteInstructionImplERNS_12MachineInstrEbjj.9 = select i1 %switch.i.i45, ptr @switch.table._ZNK4llvm14NVPTXInstrInfo22commuteInstructionImplERNS_12MachineInstrEbjj.8, ptr @switch.table._ZNK4llvm14NVPTXInstrInfo22commuteInstructionImplERNS_12MachineInstrEbjj.9
  %switch.gep113 = getelementptr inbounds i8, ptr %switch.table._ZNK4llvm14NVPTXInstrInfo22commuteInstructionImplERNS_12MachineInstrEbjj.8.switch.table._ZNK4llvm14NVPTXInstrInfo22commuteInstructionImplERNS_12MachineInstrEbjj.9, i64 %i.cg
  %switch.load117.sink = load i8, ptr %switch.gep113, align 1
  %switch.ext118 = zext i8 %switch.load117.sink to i64
  store i64 %switch.ext118, ptr %i.cf, align 8, !tbaa !211
  br label %.critedge

.lr.ph71:                                         ; preds = %.preheader, %.lr.ph71
  %.03070 = phi ptr [ %i.cj, %.lr.ph71 ], [ %i.ca, %.preheader ] ; 2 uses
  %i.ch = load ptr, ptr %.03070, align 8, !tbaa !224
  %i.ci = call noundef zeroext i1 @_ZNK4llvm14NVPTXInstrInfo26invertPredicateBranchInstrERNS_17MachineBasicBlockE(ptr noundef nonnull align 8 dereferenceable(568) %0, ptr noundef nonnull align 8 dereferenceable(360) %i.ch) ; 0 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.03070, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.cj, %.028.i.i.i.i
  br i1 %.not, label %._crit_edge, label %.lr.ph71

.critedge:                                        ; preds = %.lr.ph.loopexit, %.lr.ph.preheader, %._crit_edge, %"_ZN4llvm7find_ifIRNS_11SmallVectorIPNS_17MachineBasicBlockELj4EEEZNKS_14NVPTXInstrInfo22commuteInstructionImplERNS_12MachineInstrEbjjE3$_0EEDaOT_T0_.exit"
  %.4 = phi ptr [ %1, %"_ZN4llvm7find_ifIRNS_11SmallVectorIPNS_17MachineBasicBlockELj4EEEZNKS_14NVPTXInstrInfo22commuteInstructionImplERNS_12MachineInstrEbjjE3$_0EEDaOT_T0_.exit" ], [ null, %._crit_edge ], [ null, %.lr.ph.preheader ], [ null, %.lr.ph.loopexit ]
  %i.ck = load ptr, ptr %5, align 8, !tbaa !205   ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.i
  br i1 %i.cl, label %_ZN4llvm11SmallVectorIPNS_17MachineBasicBlockELj4EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.ck) #15
  br label %_ZN4llvm11SmallVectorIPNS_17MachineBasicBlockELj4EED2Ev.exit

_ZN4llvm11SmallVectorIPNS_17MachineBasicBlockELj4EED2Ev.exit: ; preds = %.critedge, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %bb.s

bb.s:                                             ; preds = %_ZN4llvm11SmallVectorIPNS_17MachineBasicBlockELj4EED2Ev.exit, %_ZL17isScalarFloatSetpRKN4llvm12MachineInstrE.exit
  %.5 = phi ptr [ %.4, %_ZN4llvm11SmallVectorIPNS_17MachineBasicBlockELj4EED2Ev.exit ], [ %i.b, %_ZL17isScalarFloatSetpRKN4llvm12MachineInstrE.exit ]
  ret ptr %.5
}

declare noundef ptr @_ZNK4llvm15TargetInstrInfo22commuteInstructionImplERNS_12MachineInstrEbjj(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(80), i1 noundef zeroext, i32 noundef, i32 noundef) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm12MachineInstr19isConditionalBranchENS0_9QueryTypeE(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !220  ; 3 uses
  %i.d = and i32 %i.c, 12                         ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  %i.f = and i32 %i.c, 4
  %i.g = icmp ne i32 %i.f, 0
  %or.cond.i.i = or i1 %i.e, %i.g
  br i1 %or.cond.i.i, label %.split.thread, label %_ZNK4llvm12MachineInstr8isBranchENS0_9QueryTypeE.exit

.split:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !228
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !230  ; 2 uses
  %i.l = and i64 %i.k, 1280
  %or.cond = icmp eq i64 %i.l, 1024
  br i1 %or.cond, label %bb.c, label %bb.e

.split.thread:                                    ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !228
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !230
  %i.q = and i64 %i.p, 1024
  %.not = icmp eq i64 %i.q, 0
  br i1 %.not, label %bb.e, label %.thread7

_ZNK4llvm12MachineInstr8isBranchENS0_9QueryTypeE.exit: ; preds = %bb.b
  %i.r = tail call noundef zeroext i1 @_ZNK4llvm12MachineInstr19hasPropertyInBundleEmNS0_9QueryTypeE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1024, i32 noundef %1) #15
  br i1 %i.r, label %_ZNK4llvm12MachineInstr8isBranchENS0_9QueryTypeE.exit..thread7_crit_edge, label %bb.e

_ZNK4llvm12MachineInstr8isBranchENS0_9QueryTypeE.exit..thread7_crit_edge: ; preds = %_ZNK4llvm12MachineInstr8isBranchENS0_9QueryTypeE.exit
  %.pre = load i32, ptr %i.b, align 4, !tbaa !220 ; 2 uses
  %.pre18 = and i32 %.pre, 12
  br label %.thread7

.thread7:                                         ; preds = %_ZNK4llvm12MachineInstr8isBranchENS0_9QueryTypeE.exit..thread7_crit_edge, %.split.thread
  %.pre-phi = phi i32 [ %.pre18, %_ZNK4llvm12MachineInstr8isBranchENS0_9QueryTypeE.exit..thread7_crit_edge ], [ %i.d, %.split.thread ] ; 2 uses
  %i.s = phi i32 [ %.pre, %_ZNK4llvm12MachineInstr8isBranchENS0_9QueryTypeE.exit..thread7_crit_edge ], [ %i.c, %.split.thread ] ; 2 uses
  %i.t = icmp eq i32 %.pre-phi, 0
  %i.u = and i32 %i.s, 4
  %i.v = icmp ne i32 %i.u, 0
  %or.cond.i.i3 = or i1 %i.t, %i.v
  br i1 %or.cond.i.i3, label %.split8.thread, label %_ZNK4llvm12MachineInstr9isBarrierENS0_9QueryTypeE.exit

.split8.thread:                                   ; preds = %.thread7
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !228
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !230
  %i.aa = and i64 %i.z, 256
  %.not11 = icmp eq i64 %i.aa, 0
  br i1 %.not11, label %.thread10, label %bb.e

_ZNK4llvm12MachineInstr9isBarrierENS0_9QueryTypeE.exit: ; preds = %.thread7
  %i.ab = tail call noundef zeroext i1 @_ZNK4llvm12MachineInstr19hasPropertyInBundleEmNS0_9QueryTypeE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 256, i32 noundef %1) #15
  br i1 %i.ab, label %bb.e, label %_ZNK4llvm12MachineInstr9isBarrierENS0_9QueryTypeE.exit..thread10_crit_edge

_ZNK4llvm12MachineInstr9isBarrierENS0_9QueryTypeE.exit..thread10_crit_edge: ; preds = %_ZNK4llvm12MachineInstr9isBarrierENS0_9QueryTypeE.exit
  %.pre14 = load i32, ptr %i.b, align 4, !tbaa !220 ; 2 uses
  %.pre19 = and i32 %.pre14, 12
  br label %.thread10

.thread10:                                        ; preds = %_ZNK4llvm12MachineInstr9isBarrierENS0_9QueryTypeE.exit..thread10_crit_edge, %.split8.thread
  %.pre-phi20 = phi i32 [ %.pre19, %_ZNK4llvm12MachineInstr9isBarrierENS0_9QueryTypeE.exit..thread10_crit_edge ], [ %.pre-phi, %.split8.thread ]
  %i.ac = phi i32 [ %.pre14, %_ZNK4llvm12MachineInstr9isBarrierENS0_9QueryTypeE.exit..thread10_crit_edge ], [ %i.s, %.split8.thread ]
  %i.ad = icmp eq i32 %.pre-phi20, 0
  %i.ae = and i32 %i.ac, 4
  %i.af = icmp ne i32 %i.ae, 0
  %or.cond.i.i5 = or i1 %i.ad, %i.af
  br i1 %or.cond.i.i5, label %.thread10._crit_edge, label %bb.d

.thread10._crit_edge:                             ; preds = %.thread10
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre15 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !228
  %.phi.trans.insert16 = getelementptr inbounds nuw i8, ptr %.pre15, i64 16
  %.pre17 = load i64, ptr %.phi.trans.insert16, align 8, !tbaa !230
  br label %bb.c

bb.c:                                             ; preds = %.split, %.thread10._crit_edge
  %i.ag = phi i64 [ %.pre17, %.thread10._crit_edge ], [ %i.k, %.split ]
  %i.ah = and i64 %i.ag, 2048
  %i.ai = icmp ne i64 %i.ah, 0
  br label %_ZNK4llvm12MachineInstr16isIndirectBranchENS0_9QueryTypeE.exit

bb.d:                                             ; preds = %.thread10
  %i.aj = tail call noundef zeroext i1 @_ZNK4llvm12MachineInstr19hasPropertyInBundleEmNS0_9QueryTypeE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 2048, i32 noundef %1) #15
  br label %_ZNK4llvm12MachineInstr16isIndirectBranchENS0_9QueryTypeE.exit

_ZNK4llvm12MachineInstr16isIndirectBranchENS0_9QueryTypeE.exit: ; preds = %bb.c, %bb.d
  %.0.i.i6 = phi i1 [ %i.ai, %bb.c ], [ %i.aj, %bb.d ]
  %i.ak = xor i1 %.0.i.i6, true
  br label %bb.e

bb.e:                                             ; preds = %.split8.thread, %.split.thread, %.split, %_ZNK4llvm12MachineInstr16isIndirectBranchENS0_9QueryTypeE.exit, %_ZNK4llvm12MachineInstr9isBarrierENS0_9QueryTypeE.exit, %_ZNK4llvm12MachineInstr8isBranchENS0_9QueryTypeE.exit
  %i.al = phi i1 [ false, %_ZNK4llvm12MachineInstr9isBarrierENS0_9QueryTypeE.exit ], [ false, %_ZNK4llvm12MachineInstr8isBranchENS0_9QueryTypeE.exit ], [ %i.ak, %_ZNK4llvm12MachineInstr16isIndirectBranchENS0_9QueryTypeE.exit ], [ false, %.split ], [ false, %.split.thread ], [ false, %.split8.thread ]
  ret i1 %i.al
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm14NVPTXInstrInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(568) dereferenceable(568) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 1488) (i8, ptr @_ZTVN4llvm14NVPTXInstrInfoE, i64 16), ptr %0, align 8, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 720) (i8, ptr @_ZTVN4llvm17NVPTXRegisterInfoE, i64 16), ptr %i.a, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 564
  %i.c = load i32, ptr %i.b, align 4, !tbaa !233  ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZN4llvm8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !234
  %i.g = zext i32 %i.c to i64                     ; 2 uses
  %i.h = shl nuw nsw i64 %i.g, 4
  %i.i = add nuw nsw i64 %i.g, 31
  %i.j = lshr i64 %i.i, 3
  %i.k = and i64 %i.j, 1073741820
  %i.l = add nuw nsw i64 %i.k, %i.h
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.f, i64 noundef %i.l, i64 noundef 8) #15
  br label %_ZN4llvm8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEED2Ev.exit.i

_ZN4llvm8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEED2Ev.exit.i: ; preds = %bb.b, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 540
  %i.n = load i32, ptr %i.m, align 4, !tbaa !237  ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %_ZN4llvm17NVPTXRegisterInfoD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEED2Ev.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !238
  %i.r = zext i32 %i.n to i64                     ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820
  %i.w = add nuw nsw i64 %i.v, %i.s
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.q, i64 noundef %i.w, i64 noundef 8) #15
  br label %_ZN4llvm17NVPTXRegisterInfoD2Ev.exit

_ZN4llvm17NVPTXRegisterInfoD2Ev.exit:             ; preds = %_ZN4llvm8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEED2Ev.exit.i, %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 432
  tail call void @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.x) #15
  tail call void @_ZN4llvm18TargetRegisterInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(316) dereferenceable(456) %i.a) #15
  tail call void @_ZN4llvm15TargetInstrInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %0) #15
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm14NVPTXInstrInfoD0Ev(ptr noundef nonnull align 8 dereferenceable(568) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 1488) (i8, ptr @_ZTVN4llvm14NVPTXInstrInfoE, i64 16), ptr %0, align 8, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 720) (i8, ptr @_ZTVN4llvm17NVPTXRegisterInfoE, i64 16), ptr %i.a, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 564
  %i.c = load i32, ptr %i.b, align 4, !tbaa !233  ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZN4llvm8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_0
