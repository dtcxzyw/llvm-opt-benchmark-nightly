Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AArch64FastISel?download=true
inline.NumInlined: 9454
inline.NumDeleted: 3002
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN12_GLOBAL__N_115AArch64FastISel13emitAddSub_rsEbN4llvm3MVTENS1_8RegisterES3_NS1_10AArch64_AM15ShiftExtendTypeEmbb:bb.a
  %i.au = shl nuw nsw i32 %5, 6
  %i.av = and i32 %i.at, 63
  %i.aw = or disjoint i32 %i.av, %i.au
  %i.ax = zext nneg i32 %i.aw to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  store i32 1, ptr %9, align 8, !alias.scope !1146
  %i.ay = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr null, ptr %i.ay, align 8, !tbaa !290, !alias.scope !1146
  %i.az = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 %i.ax, ptr %i.az, align 8, !tbaa !257, !alias.scope !1146
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.am, ptr noundef nonnull align 8 dereferenceable(1065) %i.al, ptr noundef nonnull align 8 dereferenceable(32) %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZNK4llvm8TypeSizecvmEv.exit, %bb.f
  %.sroa.043.1 = phi i32 [ 0, %bb.a ], [ %.sroa.043.0, %bb.f ], [ 0, %_ZNK4llvm8TypeSizecvmEv.exit ]
  ret i32 %.sroa.043.1
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc i32 @_ZN12_GLOBAL__N_115AArch64FastISel13emitAddSub_rrEbN4llvm3MVTENS1_8RegisterES3_bb(ptr noundef nonnull align 8 dereferenceable(208) %0, i1 noundef zeroext %1, i16 %2, i32 %3, i32 %4, i1 noundef zeroext %5, i1 noundef zeroext %6) unnamed_addr #0 align 2 {
bb.a:
  %7 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %8 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  switch i32 %3, label %bb.b [
    i32 8, label %bb.g
    i32 10, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  switch i32 %4, label %bb.c [
    i32 8, label %bb.g
    i32 10, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  %.off = add i16 %2, -7
  %switch = icmp ult i16 %.off, 2
  br i1 %switch, label %.critedge, label %bb.g

.critedge:                                        ; preds = %bb.c
  %i.a = icmp eq i16 %2, 8                        ; 3 uses
  %i.b = zext i1 %5 to i64
  %i.c = getelementptr inbounds nuw [16 x i8], ptr @_ZZN12_GLOBAL__N_115AArch64FastISel13emitAddSub_rrEbN4llvm3MVTENS1_8RegisterES3_bbE8OpcTable, i64 %i.b
  %i.d = zext i1 %1 to i64
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.d
  %i.f = zext i1 %i.a to i64
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4, !tbaa !206
  br i1 %6, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.critedge
  %i.i = select i1 %i.a, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm29AArch64MCRegisterClassStorageE, i64 3584), ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm29AArch64MCRegisterClassStorageE, i64 2560)
  %i.j = tail call i32 @_ZN4llvm8FastISel15createResultRegEPKNS_15MCRegisterClassE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull %i.i) #21
  br label %bb.f

bb.e:                                             ; preds = %.critedge
  %i.k = select i1 %i.a, i32 14, i32 12
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.038.0 = phi i32 [ %i.j, %bb.d ], [ %i.k, %bb.e ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !284, !nonnull !210, !align !211
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !288
  %i.p = zext i32 %i.h to i64
  %i.q = sub nsw i64 0, %i.p
  %i.r = getelementptr inbounds [32 x i8], ptr %i.o, i64 %i.q ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 6 ; 2 uses
  %i.t = load i8, ptr %i.s, align 2, !tbaa !724
  %i.u = zext i8 %i.t to i32
  %i.v = tail call i32 @_ZN4llvm8FastISel24constrainOperandRegClassERKNS_11MCInstrDescENS_8RegisterEj(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i32 %3, i32 noundef %i.u) #21
  %i.w = load i8, ptr %i.s, align 2, !tbaa !724
  %i.x = zext i8 %i.w to i32
  %i.y = add nuw nsw i32 %i.x, 1
  %i.z = tail call i32 @_ZN4llvm8FastISel24constrainOperandRegClassERKNS_11MCInstrDescENS_8RegisterEj(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i32 %4, i32 noundef %i.y) #21
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !283, !nonnull !210, !align !211 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 680
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !278
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 688
  %.sroa.03.0.copyload = load ptr, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ag = tail call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %i.ad, ptr %.sroa.03.0.copyload, ptr noundef nonnull align 8 dereferenceable(32) %i.af, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i32 %.sroa.038.0) ; 2 uses
  %i.ah = extractvalue { ptr, ptr } %i.ag, 0      ; 2 uses
  %i.ai = extractvalue { ptr, ptr } %i.ag, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr null, ptr %i.aj, align 8, !tbaa !290, !alias.scope !1151
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 %i.v, ptr %i.ak, align 4, !tbaa !257, !alias.scope !1151
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, i8 0, i64 16, i1 false), !alias.scope !1151
  store i32 0, ptr %8, align 8, !alias.scope !1151
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ai, ptr noundef nonnull align 8 dereferenceable(1065) %i.ah, ptr noundef nonnull align 8 dereferenceable(32) %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr null, ptr %i.am, align 8, !tbaa !290, !alias.scope !1152
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %i.z, ptr %i.an, align 4, !tbaa !257, !alias.scope !1152
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i8 0, i64 16, i1 false), !alias.scope !1152
  store i32 0, ptr %7, align 8, !alias.scope !1152
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ai, ptr noundef nonnull align 8 dereferenceable(1065) %i.ah, ptr noundef nonnull align 8 dereferenceable(32) %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.b, %bb.b, %bb.a, %bb.a, %bb.f
  %.sroa.038.1 = phi i32 [ %.sroa.038.0, %bb.f ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.b ], [ 0, %bb.a ], [ 0, %bb.c ]
  ret i32 %.sroa.038.1
}

declare i32 @_ZN4llvm19MachineRegisterInfo21createVirtualRegisterEPKNS_15MCRegisterClassENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520), ptr noundef, ptr, i64) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 %4) local_unnamed_addr #5 comdat {
bb.a:
  %5 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !698  ; 6 uses
  %.sroa.03.0.copyload = load ptr, ptr %2, align 8, !tbaa !699
  %i.c = tail call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr %.sroa.03.0.copyload, i1 noundef zeroext false) #21 ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef %i.c) #21
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %1, align 8
  %i.e = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %1, ptr %i.g, align 8, !tbaa !700
  %.0.copyload.i.i.i.i9.i.i.i.i.i = load i64, ptr %i.c, align 8
  %i.h = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i, 7
  %i.i = or disjoint i64 %i.h, %i.e
  store i64 %i.i, ptr %i.c, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.c, ptr %i.j, align 8, !tbaa !700
  %.0.copyload.i.i.i.i10.i.i.i.i.i = load i64, ptr %1, align 8
  %i.k = ptrtoint ptr %i.c to i64
  %i.l = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i, 7
  %i.m = or disjoint i64 %i.l, %i.k
  store i64 %i.m, ptr %1, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !701  ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm12MachineInstr13setPCSectionsERNS_15MachineFunctionEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(80) %i.c, ptr noundef nonnull align 8 dereferenceable(1065) %i.b, ptr noundef nonnull %i.o) #21
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !702  ; 2 uses
  %.not7.i = icmp eq ptr %i.q, null
  br i1 %.not7.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4llvm12MachineInstr15setMMRAMetadataERNS_15MachineFunctionEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(80) %i.c, ptr noundef nonnull align 8 dereferenceable(1065) %i.b, ptr noundef nonnull %i.q) #21
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !703  ; 2 uses
  %.not8.i = icmp eq ptr %i.s, null
  br i1 %.not8.i, label %_ZNK4llvm19MachineInstrBuilder14copyMIMetadataERKNS_10MIMetadataE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4llvm12MachineInstr21setDeactivationSymbolERNS_15MachineFunctionEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(80) %i.c, ptr noundef nonnull align 8 dereferenceable(1065) %i.b, ptr noundef nonnull %i.s) #21
  br label %_ZNK4llvm19MachineInstrBuilder14copyMIMetadataERKNS_10MIMetadataE.exit

_ZNK4llvm19MachineInstrBuilder14copyMIMetadataERKNS_10MIMetadataE.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr null, ptr %i.t, align 8, !tbaa !290, !alias.scope !1155
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %4, ptr %i.u, align 4, !tbaa !257, !alias.scope !1155
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false), !alias.scope !1155
  store i32 16777216, ptr %5, align 8, !alias.scope !1155
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.c, ptr noundef nonnull align 8 dereferenceable(1065) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %i.b, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %i.c, 1
  ret { ptr, ptr } %.fca.1.insert
}

declare i32 @_ZN4llvm8FastISel16fastEmitInst_riiEjPKNS_15MCRegisterClassENS_8RegisterEmm(ptr noundef nonnull align 8 dereferenceable(192), i32 noundef, ptr noundef, i32, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc i32 @_ZN12_GLOBAL__N_115AArch64FastISel16emitLogicalOp_riEjN4llvm3MVTENS1_8RegisterEm(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef range(i32 193, 196) %1, i16 %2, i32 %3, i64 noundef %4) unnamed_addr #0 align 2 {
tailrecurse:
  switch i16 %2, label %.critedge [
    i16 2, label %.split17
    i16 5, label %.split17
    i16 6, label %.split17
    i16 7, label %.split17
    i16 8, label %.split
  ]

tailrecurse.jt7:                                  ; preds = %_ZN4llvm10AArch64_AML22encodeLogicalImmediateEmj.exit
  %5 = icmp eq i16 %.tr7084, 5
  %6 = select i1 %5, i64 255, i64 65535
  br label %.split17

.split17:                                         ; preds = %tailrecurse.jt7, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse
  %.tr7288 = phi i64 [ %6, %tailrecurse.jt7 ], [ %4, %tailrecurse ], [ %4, %tailrecurse ], [ %4, %tailrecurse ], [ %4, %tailrecurse ] ; 7 uses
  %.tr7185 = phi i32 [ %i.db, %tailrecurse.jt7 ], [ %3, %tailrecurse ], [ %3, %tailrecurse ], [ %3, %tailrecurse ], [ %3, %tailrecurse ] ; 2 uses
  %.tr7082 = phi i16 [ 7, %tailrecurse.jt7 ], [ %2, %tailrecurse ], [ %2, %tailrecurse ], [ %2, %tailrecurse ], [ %2, %tailrecurse ] ; 2 uses
  %.tr6979 = phi i32 [ 193, %tailrecurse.jt7 ], [ %1, %tailrecurse ], [ %1, %tailrecurse ], [ %1, %tailrecurse ], [ %1, %tailrecurse ] ; 3 uses
  %i.a = zext nneg i32 %.tr6979 to i64
  %i.b = getelementptr [8 x i8], ptr @_ZZN12_GLOBAL__N_115AArch64FastISel16emitLogicalOp_riEjN4llvm3MVTENS1_8RegisterEmE8OpcTable, i64 %i.a
  %i.c = getelementptr i8, ptr %i.b, i64 -1544
  %i.d = load i32, ptr %i.c, align 8, !tbaa !206  ; 2 uses
  %i.e = add i64 %.tr7288, -4294967295
  %or.cond66 = icmp ult i64 %i.e, -4294967294
  br i1 %or.cond66, label %.critedge, label %.preheader

.preheader:                                       ; preds = %.split17, %.preheader
  %.045.i.i = phi i32 [ %.146.i.i, %.preheader ], [ 32, %.split17 ] ; 2 uses
  %i.f = lshr i32 %.045.i.i, 1                    ; 2 uses
  %i.g = zext nneg i32 %i.f to i64                ; 2 uses
  %notmask.i.i = shl nsw i64 -1, %i.g
  %i.h = xor i64 %notmask.i.i, -1
  %i.i = lshr i64 %.tr7288, %i.g
  %i.j = xor i64 %i.i, %.tr7288
  %i.k = and i64 %i.j, %i.h
  %.not53.i.i = icmp eq i64 %i.k, 0               ; 2 uses
  %i.l = and i32 %.045.i.i, -2
  %.146.i.i = select i1 %.not53.i.i, i32 %i.f, i32 %i.l ; 3 uses
  %i.m = icmp ugt i32 %.146.i.i, 2
  %or.cond54.i.i = and i1 %.not53.i.i, %i.m
  br i1 %or.cond54.i.i, label %.preheader, label %bb.a, !llvm.loop !3

bb.a:                                             ; preds = %.preheader
  %i.n = sub i32 64, %.146.i.i
  %i.o = zext nneg i32 %i.n to i64
  %i.p = lshr i64 -1, %i.o                        ; 2 uses
  %i.q = and i64 %i.p, %.tr7288                   ; 3 uses
  %.not.i.i.i = icmp eq i64 %i.q, 0
  br i1 %.not.i.i.i, label %_ZN4llvm16isShiftedMask_64Em.exit.thread.i.i, label %_ZN4llvm16isShiftedMask_64Em.exit.i.i

_ZN4llvm16isShiftedMask_64Em.exit.i.i:            ; preds = %bb.a
  %i.r = add nsw i64 %i.q, -1
  %i.s = or i64 %i.r, %i.q                        ; 2 uses
  %i.t = add nuw nsw i64 %i.s, 1
  %i.u = and i64 %i.t, %i.s
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %.thread, label %_ZN4llvm16isShiftedMask_64Em.exit.thread.i.i

_ZN4llvm16isShiftedMask_64Em.exit.thread.i.i:     ; preds = %_ZN4llvm16isShiftedMask_64Em.exit.i.i, %bb.a
  %.not57.i.i = xor i64 %.tr7288, -1
  %i.w = and i64 %i.p, %.not57.i.i                ; 3 uses
  %.not.i55.i.i = icmp eq i64 %i.w, 0
  br i1 %.not.i55.i.i, label %.critedge, label %_ZN4llvm16isShiftedMask_64Em.exit56.i.i

_ZN4llvm16isShiftedMask_64Em.exit56.i.i:          ; preds = %_ZN4llvm16isShiftedMask_64Em.exit.thread.i.i
  %i.x = add i64 %i.w, -1
  %i.y = or i64 %i.x, %i.w                        ; 2 uses
  %i.z = add i64 %i.y, 1
  %i.aa = and i64 %i.z, %i.y
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %.thread, label %.critedge

.split:                                           ; preds = %tailrecurse
  %i.ac = zext nneg i32 %1 to i64
  %i.ad = getelementptr [8 x i8], ptr @_ZZN12_GLOBAL__N_115AArch64FastISel16emitLogicalOp_riEjN4llvm3MVTENS1_8RegisterEmE8OpcTable, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.ad, i64 -1540
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !206 ; 2 uses
  %i.ag = add i64 %4, 1
  %or.cond.i.i18 = icmp ult i64 %i.ag, 2
  br i1 %or.cond.i.i18, label %.critedge, label %.preheader73

.preheader73:                                     ; preds = %.split, %.preheader73
  %.045.i.i19 = phi i32 [ %.146.i.i22, %.preheader73 ], [ 64, %.split ] ; 2 uses
  %i.ah = lshr i32 %.045.i.i19, 1                 ; 2 uses
  %i.ai = zext nneg i32 %i.ah to i64              ; 2 uses
  %notmask.i.i20 = shl nsw i64 -1, %i.ai
  %i.aj = xor i64 %notmask.i.i20, -1
  %i.ak = lshr i64 %4, %i.ai
  %i.al = xor i64 %i.ak, %4
  %i.am = and i64 %i.al, %i.aj
  %.not53.i.i21 = icmp eq i64 %i.am, 0            ; 2 uses
  %i.an = and i32 %.045.i.i19, -2
  %.146.i.i22 = select i1 %.not53.i.i21, i32 %i.ah, i32 %i.an ; 3 uses
  %i.ao = icmp ugt i32 %.146.i.i22, 2
  %or.cond54.i.i23 = and i1 %.not53.i.i21, %i.ao
  br i1 %or.cond54.i.i23, label %.preheader73, label %bb.b, !llvm.loop !3

bb.b:                                             ; preds = %.preheader73
  %i.ap = sub i32 64, %.146.i.i22
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = lshr i64 -1, %i.aq                      ; 2 uses
  %i.as = and i64 %i.ar, %4                       ; 3 uses
  %.not.i.i.i24 = icmp eq i64 %i.as, 0
  br i1 %.not.i.i.i24, label %_ZN4llvm16isShiftedMask_64Em.exit.thread.i.i26, label %_ZN4llvm16isShiftedMask_64Em.exit.i.i25

_ZN4llvm16isShiftedMask_64Em.exit.i.i25:          ; preds = %bb.b
  %i.at = add i64 %i.as, -1
  %i.au = or i64 %i.at, %i.as                     ; 2 uses
  %i.av = add i64 %i.au, 1
  %i.aw = and i64 %i.av, %i.au
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %.thread, label %_ZN4llvm16isShiftedMask_64Em.exit.thread.i.i26

_ZN4llvm16isShiftedMask_64Em.exit.thread.i.i26:   ; preds = %_ZN4llvm16isShiftedMask_64Em.exit.i.i25, %bb.b
  %.not57.i.i27 = xor i64 %4, -1
  %i.ay = and i64 %i.ar, %.not57.i.i27            ; 3 uses
  %.not.i55.i.i28 = icmp eq i64 %i.ay, 0
  br i1 %.not.i55.i.i28, label %.critedge, label %_ZN4llvm16isShiftedMask_64Em.exit56.i.i29

_ZN4llvm16isShiftedMask_64Em.exit56.i.i29:        ; preds = %_ZN4llvm16isShiftedMask_64Em.exit.thread.i.i26
  %i.az = add i64 %i.ay, -1
  %i.ba = or i64 %i.az, %i.ay                     ; 2 uses
  %i.bb = add i64 %i.ba, 1
  %i.bc = and i64 %i.bb, %i.ba
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %.thread, label %.critedge

.thread:                                          ; preds = %_ZN4llvm16isShiftedMask_64Em.exit56.i.i, %_ZN4llvm16isShiftedMask_64Em.exit.i.i, %_ZN4llvm16isShiftedMask_64Em.exit56.i.i29, %_ZN4llvm16isShiftedMask_64Em.exit.i.i25
  %.tr7289 = phi i64 [ %4, %_ZN4llvm16isShiftedMask_64Em.exit56.i.i29 ], [ %4, %_ZN4llvm16isShiftedMask_64Em.exit.i.i25 ], [ %.tr7288, %_ZN4llvm16isShiftedMask_64Em.exit.i.i ], [ %.tr7288, %_ZN4llvm16isShiftedMask_64Em.exit56.i.i ] ; 4 uses
  %.tr7187 = phi i32 [ %3, %_ZN4llvm16isShiftedMask_64Em.exit56.i.i29 ], [ %3, %_ZN4llvm16isShiftedMask_64Em.exit.i.i25 ], [ %.tr7185, %_ZN4llvm16isShiftedMask_64Em.exit.i.i ], [ %.tr7185, %_ZN4llvm16isShiftedMask_64Em.exit56.i.i ]
  %.tr7084 = phi i16 [ 8, %_ZN4llvm16isShiftedMask_64Em.exit56.i.i29 ], [ 8, %_ZN4llvm16isShiftedMask_64Em.exit.i.i25 ], [ %.tr7082, %_ZN4llvm16isShiftedMask_64Em.exit.i.i ], [ %.tr7082, %_ZN4llvm16isShiftedMask_64Em.exit56.i.i ] ; 2 uses
  %.tr6981 = phi i32 [ %1, %_ZN4llvm16isShiftedMask_64Em.exit56.i.i29 ], [ %1, %_ZN4llvm16isShiftedMask_64Em.exit.i.i25 ], [ %.tr6979, %_ZN4llvm16isShiftedMask_64Em.exit.i.i ], [ %.tr6979, %_ZN4llvm16isShiftedMask_64Em.exit56.i.i ]
  %.065 = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm29AArch64MCRegisterClassStorageE, i64 3648), %_ZN4llvm16isShiftedMask_64Em.exit56.i.i29 ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm29AArch64MCRegisterClassStorageE, i64 3648), %_ZN4llvm16isShiftedMask_64Em.exit.i.i25 ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm29AArch64MCRegisterClassStorageE, i64 2624), %_ZN4llvm16isShiftedMask_64Em.exit.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm29AArch64MCRegisterClassStorageE, i64 2624), %_ZN4llvm16isShiftedMask_64Em.exit56.i.i ]
  %.01463 = phi i32 [ %i.af, %_ZN4llvm16isShiftedMask_64Em.exit56.i.i29 ], [ %i.af, %_ZN4llvm16isShiftedMask_64Em.exit.i.i25 ], [ %i.d, %_ZN4llvm16isShiftedMask_64Em.exit.i.i ], [ %i.d, %_ZN4llvm16isShiftedMask_64Em.exit56.i.i ]
  %.01561 = phi i32 [ 64, %_ZN4llvm16isShiftedMask_64Em.exit56.i.i29 ], [ 64, %_ZN4llvm16isShiftedMask_64Em.exit.i.i25 ], [ 32, %_ZN4llvm16isShiftedMask_64Em.exit.i.i ], [ 32, %_ZN4llvm16isShiftedMask_64Em.exit56.i.i ]
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.thread
  %.045.i.i34 = phi i32 [ %.01561, %.thread ], [ %.146.i.i37, %bb.c ] ; 2 uses
  %i.be = lshr i32 %.045.i.i34, 1                 ; 2 uses
  %i.bf = zext nneg i32 %i.be to i64              ; 2 uses
  %notmask.i.i35 = shl nsw i64 -1, %i.bf
  %i.bg = xor i64 %notmask.i.i35, -1
  %i.bh = lshr i64 %.tr7289, %i.bf
  %i.bi = xor i64 %i.bh, %.tr7289
  %i.bj = and i64 %i.bi, %i.bg
  %.not53.i.i36 = icmp eq i64 %i.bj, 0            ; 2 uses
  %i.bk = and i32 %.045.i.i34, -2
  %.146.i.i37 = select i1 %.not53.i.i36, i32 %i.be, i32 %i.bk ; 7 uses
  %i.bl = icmp ugt i32 %.146.i.i37, 2
  %or.cond54.i.i38 = and i1 %.not53.i.i36, %i.bl
  br i1 %or.cond54.i.i38, label %bb.c, label %bb.d, !llvm.loop !3

bb.d:                                             ; preds = %bb.c
  %.neg59.i.i = add i32 %.146.i.i37, -64
  %i.bm = sub i32 64, %.146.i.i37
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = lshr i64 -1, %i.bn                      ; 2 uses
  %i.bp = and i64 %i.bo, %.tr7289                 ; 5 uses
  %.not.i.i.i39 = icmp eq i64 %i.bp, 0
  br i1 %.not.i.i.i39, label %_ZN4llvm16isShiftedMask_64Em.exit.thread.i.i41, label %_ZN4llvm16isShiftedMask_64Em.exit.i.i40

_ZN4llvm16isShiftedMask_64Em.exit.i.i40:          ; preds = %bb.d
  %i.bq = add i64 %i.bp, -1
  %i.br = or i64 %i.bq, %i.bp                     ; 2 uses
  %i.bs = add i64 %i.br, 1
  %i.bt = and i64 %i.bs, %i.br
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %bb.e, label %_ZN4llvm16isShiftedMask_64Em.exit.thread.i.i41

bb.e:                                             ; preds = %_ZN4llvm16isShiftedMask_64Em.exit.i.i40
  %i.bv = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.bp, i1 true) ; 2 uses
  %i.bw = trunc nuw nsw i64 %i.bv to i32
  %i.bx = lshr exact i64 %i.bp, %i.bv
  %i.by = xor i64 %i.bx, -1
  %i.bz = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.by, i1 false)
  %i.ca = trunc nuw nsw i64 %i.bz to i32
  br label %bb.g

_ZN4llvm16isShiftedMask_64Em.exit.thread.i.i41:   ; preds = %_ZN4llvm16isShiftedMask_64Em.exit.i.i40, %bb.d
  %.not57.i.i42 = xor i64 %.tr7289, -1
  %i.cb = and i64 %i.bo, %.not57.i.i42            ; 5 uses
  %.not.i55.i.i43 = icmp eq i64 %i.cb, 0
  br i1 %.not.i55.i.i43, label %_ZN4llvm10AArch64_AML22encodeLogicalImmediateEmj.exit, label %_ZN4llvm16isShiftedMask_64Em.exit56.i.i44

_ZN4llvm16isShiftedMask_64Em.exit56.i.i44:        ; preds = %_ZN4llvm16isShiftedMask_64Em.exit.thread.i.i41
  %i.cc = add i64 %i.cb, -1
  %i.cd = or i64 %i.cc, %i.cb                     ; 2 uses
  %i.ce = add i64 %i.cd, 1
  %i.cf = and i64 %i.ce, %i.cd
  %i.cg = icmp eq i64 %i.cf, 0
  br i1 %i.cg, label %bb.f, label %_ZN4llvm10AArch64_AML22encodeLogicalImmediateEmj.exit

bb.f:                                             ; preds = %_ZN4llvm16isShiftedMask_64Em.exit56.i.i44
  %i.ch = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cb, i1 true)
  %i.ci = trunc nuw nsw i64 %i.ch to i32          ; 2 uses
  %i.cj = sub nuw nsw i32 64, %i.ci
  %i.ck = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.cb, i1 true)
  %i.cl = trunc nuw nsw i64 %i.ck to i32
  %i.cm = add i32 %.neg59.i.i, %i.cl
  %i.cn = add i32 %i.cm, %i.ci
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.048.i.i = phi i32 [ %i.ca, %bb.e ], [ %i.cn, %bb.f ]
  %.047.i.i = phi i32 [ %i.bw, %bb.e ], [ %i.cj, %bb.f ]
  %i.co = sub i32 %.146.i.i37, %.047.i.i
  %i.cp = add i32 %.146.i.i37, 67108863
  %i.cq = and i32 %i.co, %i.cp
  %.neg.i.i = mul i32 %.146.i.i37, -2
  %i.cr = add i32 %.048.i.i, -1
  %i.cs = or i32 %i.cr, %.neg.i.i                 ; 2 uses
  %i.ct = shl i32 %i.cs, 6
  %i.cu = and i32 %i.ct, 4096
  %i.cv = xor i32 %i.cu, 4096
  %i.cw = shl i32 %i.cq, 6
  %i.cx = and i32 %i.cs, 63
  %i.cy = or disjoint i32 %i.cw, %i.cx
  %i.cz = or i32 %i.cy, %i.cv
  %i.da = zext i32 %i.cz to i64
  br label %_ZN4llvm10AArch64_AML22encodeLogicalImmediateEmj.exit

_ZN4llvm10AArch64_AML22encodeLogicalImmediateEmj.exit: ; preds = %_ZN4llvm16isShiftedMask_64Em.exit.thread.i.i41, %_ZN4llvm16isShiftedMask_64Em.exit56.i.i44, %bb.g
  %.0.i = phi i64 [ 0, %_ZN4llvm16isShiftedMask_64Em.exit56.i.i44 ], [ 0, %_ZN4llvm16isShiftedMask_64Em.exit.thread.i.i41 ], [ %i.da, %bb.g ]
  %i.db = tail call i32 @_ZN4llvm8FastISel15fastEmitInst_riEjPKNS_15MCRegisterClassENS_8RegisterEm(ptr noundef nonnull align 8 dereferenceable(192) %0, i32 noundef %.01463, ptr noundef nonnull %.065, i32 %.tr7187, i64 noundef %.0.i) #21 ; 2 uses
  %i.dc = add nsw i16 %.tr7084, -7
  %or.cond67 = icmp ult i16 %i.dc, -2
  %.not = icmp eq i32 %.tr6981, 193
  %or.cond68 = or i1 %.not, %or.cond67
  br i1 %or.cond68, label %.critedge, label %tailrecurse.jt7

.critedge:                                        ; preds = %_ZN4llvm10AArch64_AML22encodeLogicalImmediateEmj.exit, %_ZN4llvm16isShiftedMask_64Em.exit.thread.i.i26, %_ZN4llvm16isShiftedMask_64Em.exit56.i.i29, %.split, %_ZN4llvm16isShiftedMask_64Em.exit56.i.i, %.split17, %_ZN4llvm16isShiftedMask_64Em.exit.thread.i.i, %tailrecurse
  %.sroa.051.0 = phi i32 [ 0, %tailrecurse ], [ 0, %.split ], [ 0, %_ZN4llvm16isShiftedMask_64Em.exit56.i.i ], [ 0, %_ZN4llvm16isShiftedMask_64Em.exit.thread.i.i26 ], [ 0, %_ZN4llvm16isShiftedMask_64Em.exit.thread.i.i ], [ 0, %.split17 ], [ %i.db, %_ZN4llvm10AArch64_AML22encodeLogicalImmediateEmj.exit ], [ 0, %_ZN4llvm16isShiftedMask_64Em.exit56.i.i29 ]
  ret i32 %.sroa.051.0
}

declare i32 @_ZN4llvm8FastISel15fastEmitInst_riEjPKNS_15MCRegisterClassENS_8RegisterEm(ptr noundef nonnull align 8 dereferenceable(192), i32 noundef, ptr noundef, i32, i64 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc noundef range(i64 0, 4294967296) i64 @_ZN4llvm10AArch64_AML22encodeLogicalImmediateEmj(i64 noundef %0, i32 noundef range(i32 32, 65) %1) unnamed_addr #8 {
bb.a:
  %i.a = add i64 %0, 1
  %or.cond.i = icmp ult i64 %i.a, 2
  br i1 %or.cond.i, label %_ZN4llvm10AArch64_AML23processLogicalImmediateEmjRm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq i32 %1, 64
  br i1 %.not.i, label %.preheader, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = zext nneg i32 %1 to i64
  %i.c = lshr i64 %0, %i.b
  %.not52.i = icmp eq i64 %i.c, 0
  br i1 %.not52.i, label %bb.d, label %_ZN4llvm10AArch64_AML23processLogicalImmediateEmjRm.exit

bb.d:                                             ; preds = %bb.c
  %i.d = sub nuw nsw i32 64, %1
  %i.e = zext nneg i32 %i.d to i64
  %i.f = lshr i64 -1, %i.e
  %i.g = icmp eq i64 %0, %i.f
  br i1 %i.g, label %_ZN4llvm10AArch64_AML23processLogicalImmediateEmjRm.exit, label %.preheader

.preheader:                                       ; preds = %bb.d, %bb.b
  br label %bb.e

bb.e:                                             ; preds = %.preheader, %bb.e
  %.045.i = phi i32 [ %.146.i, %bb.e ], [ %1, %.preheader ] ; 2 uses
  %i.h = lshr i32 %.045.i, 1                      ; 2 uses
  %i.i = zext nneg i32 %i.h to i64                ; 2 uses
  %notmask.i = shl nsw i64 -1, %i.i
  %i.j = xor i64 %notmask.i, -1
  %i.k = lshr i64 %0, %i.i
  %i.l = xor i64 %i.k, %0
  %i.m = and i64 %i.l, %i.j
  %.not53.i = icmp eq i64 %i.m, 0                 ; 2 uses
  %i.n = and i32 %.045.i, -2
  %.146.i = select i1 %.not53.i, i32 %i.h, i32 %i.n ; 7 uses
  %i.o = icmp ugt i32 %.146.i, 2
  %or.cond54.i = and i1 %.not53.i, %i.o
  br i1 %or.cond54.i, label %bb.e, label %bb.f, !llvm.loop !3

bb.f:                                             ; preds = %bb.e
  %.neg59.i = add i32 %.146.i, -64
  %i.p = sub i32 64, %.146.i
  %i.q = zext nneg i32 %i.p to i64
  %i.r = lshr i64 -1, %i.q                        ; 2 uses
  %i.s = and i64 %i.r, %0                         ; 5 uses
  %.not.i.i = icmp eq i64 %i.s, 0
  br i1 %.not.i.i, label %_ZN4llvm16isShiftedMask_64Em.exit.thread.i, label %_ZN4llvm16isShiftedMask_64Em.exit.i

_ZN4llvm16isShiftedMask_64Em.exit.i:              ; preds = %bb.f
  %i.t = add i64 %i.s, -1
  %i.u = or i64 %i.t, %i.s                        ; 2 uses
  %i.v = add i64 %i.u, 1
  %i.w = and i64 %i.v, %i.u
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bb.g, label %_ZN4llvm16isShiftedMask_64Em.exit.thread.i

bb.g:                                             ; preds = %_ZN4llvm16isShiftedMask_64Em.exit.i
  %i.y = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.s, i1 true) ; 2 uses
  %i.z = trunc nuw nsw i64 %i.y to i32
  %i.aa = lshr exact i64 %i.s, %i.y
  %i.ab = xor i64 %i.aa, -1
  %i.ac = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ab, i1 false)
  %i.ad = trunc nuw nsw i64 %i.ac to i32
  br label %bb.i

_ZN4llvm16isShiftedMask_64Em.exit.thread.i:       ; preds = %_ZN4llvm16isShiftedMask_64Em.exit.i, %bb.f
  %.not57.i = xor i64 %0, -1
  %i.ae = and i64 %i.r, %.not57.i                 ; 5 uses
  %.not.i55.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i55.i, label %_ZN4llvm10AArch64_AML23processLogicalImmediateEmjRm.exit, label %_ZN4llvm16isShiftedMask_64Em.exit56.i

_ZN4llvm16isShiftedMask_64Em.exit56.i:            ; preds = %_ZN4llvm16isShiftedMask_64Em.exit.thread.i
  %i.af = add i64 %i.ae, -1
  %i.ag = or i64 %i.af, %i.ae                     ; 2 uses
  %i.ah = add i64 %i.ag, 1
  %i.ai = and i64 %i.ah, %i.ag
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %bb.h, label %_ZN4llvm10AArch64_AML23processLogicalImmediateEmjRm.exit

bb.h:                                             ; preds = %_ZN4llvm16isShiftedMask_64Em.exit56.i
  %i.ak = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ae, i1 true)
  %i.al = trunc nuw nsw i64 %i.ak to i32          ; 2 uses
  %i.am = sub nuw nsw i32 64, %i.al
  %i.an = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ae, i1 true)
  %i.ao = trunc nuw nsw i64 %i.an to i32
  %i.ap = add i32 %.neg59.i, %i.ao
  %i.aq = add i32 %i.ap, %i.al
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.048.i = phi i32 [ %i.ad, %bb.g ], [ %i.aq, %bb.h ]
  %.047.i = phi i32 [ %i.z, %bb.g ], [ %i.am, %bb.h ]
  %i.ar = sub i32 %.146.i, %.047.i
  %i.as = add i32 %.146.i, 67108863
  %i.at = and i32 %i.ar, %i.as
  %.neg.i = mul i32 %.146.i, -2
  %i.au = add i32 %.048.i, -1
  %i.av = or i32 %i.au, %.neg.i                   ; 2 uses
  %i.aw = shl i32 %i.av, 6
  %i.ax = and i32 %i.aw, 4096
  %i.ay = xor i32 %i.ax, 4096
  %i.az = shl i32 %i.at, 6
  %i.ba = and i32 %i.av, 63
  %i.bb = or disjoint i32 %i.az, %i.ba
  %i.bc = or i32 %i.bb, %i.ay
  %i.bd = zext i32 %i.bc to i64
  br label %_ZN4llvm10AArch64_AML23processLogicalImmediateEmjRm.exit

_ZN4llvm10AArch64_AML23processLogicalImmediateEmjRm.exit: ; preds = %bb.a, %bb.c, %bb.d, %_ZN4llvm16isShiftedMask_64Em.exit.thread.i, %_ZN4llvm16isShiftedMask_64Em.exit56.i, %bb.i
  %.0 = phi i64 [ 0, %bb.a ], [ 0, %_ZN4llvm16isShiftedMask_64Em.exit.thread.i ], [ %i.bd, %bb.i ], [ 0, %_ZN4llvm16isShiftedMask_64Em.exit56.i ], [ 0, %bb.d ], [ 0, %bb.c ]
  ret i64 %.0
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #9

declare noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065), ptr noundef nonnull align 8 dereferenceable(32), ptr, i1 noundef zeroext) local_unnamed_addr #3

declare void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3

declare void @_ZN4llvm12MachineInstr13setPCSectionsERNS_15MachineFunctionEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(1065), ptr noundef) local_unnamed_addr #3

declare void @_ZN4llvm12MachineInstr15setMMRAMetadataERNS_15MachineFunctionEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(1065), ptr noundef) local_unnamed_addr #3

declare void @_ZN4llvm12MachineInstr21setDeactivationSymbolERNS_15MachineFunctionEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(1065), ptr noundef) local_unnamed_addr #3

declare void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(1065), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

declare i32 @_ZN4llvm8FastISel15createResultRegEPKNS_15MCRegisterClassE(ptr noundef nonnull align 8 dereferenceable(192), ptr noundef) local_unnamed_addr #3

declare i32 @_ZN4llvm8FastISel24constrainOperandRegClassERKNS_11MCInstrDescENS_8RegisterEj(ptr noundef nonnull align 8 dereferenceable(192), ptr noundef nonnull align 8 dereferenceable(32), i32, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef zeroext i1 @_ZNK4llvm5APInt18isPowerOf2SlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #10

; Function Attrs: noreturn
declare void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL12isIntExtFreePKN4llvm11InstructionE(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !236
  %i.b = icmp eq i8 %i.a, 70
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4              ; 3 uses
  %i.e = and i32 %i.d, 1073741824
  %.not.i.i = icmp eq i32 %i.e, 0                 ; 2 uses
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %0, i64 -8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !251
  br label %_ZNK4llvm4User10getOperandEj.exit

bb.c:                                             ; preds = %bb.a
  %i.h = and i32 %i.d, 268435455
  %i.i = zext nneg i32 %i.h to i64
  %i.j = sub nsw i64 0, %i.i
  %i.k = getelementptr inbounds [32 x i8], ptr %0, i64 %i.j
  br label %_ZNK4llvm4User10getOperandEj.exit

_ZNK4llvm4User10getOperandEj.exit:                ; preds = %bb.b, %bb.c
  %i.l = phi ptr [ %i.g, %bb.b ], [ %i.k, %bb.c ]
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !255  ; 2 uses
  %i.n = load i8, ptr %i.m, align 8, !tbaa !236
  %.not = icmp eq i8 %i.n, 63
  br i1 %.not, label %bb.d, label %.critedge

bb.d:                                             ; preds = %_ZNK4llvm4User10getOperandEj.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !258  ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %.critedge, label %_ZNK4llvm5Value9hasOneUseEv.exit

_ZNK4llvm5Value9hasOneUseEv.exit:                 ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !259
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.i, label %.critedge

.critedge:                                        ; preds = %bb.d, %_ZNK4llvm5Value9hasOneUseEv.exit, %_ZNK4llvm4User10getOperandEj.exit
  br i1 %.not.i.i, label %bb.f, label %bb.e
end_hunk_0
