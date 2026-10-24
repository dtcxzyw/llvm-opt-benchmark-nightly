Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/Mips16InstrInfo?download=true
inline.NumInlined: 562
inline.NumDeleted: 298
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK4llvm15Mips16InstrInfo20getOppositeBranchOpcEj:bb.a
  br label %bb.v

bb.c:                                             ; preds = %bb.a
  br label %bb.v

bb.d:                                             ; preds = %bb.a
  br label %bb.v

bb.e:                                             ; preds = %bb.a
  br label %bb.v

bb.f:                                             ; preds = %bb.a
  br label %bb.v

bb.g:                                             ; preds = %bb.a
  br label %bb.v

bb.h:                                             ; preds = %bb.a
  br label %bb.v

bb.i:                                             ; preds = %bb.a
  br label %bb.v

bb.j:                                             ; preds = %bb.a
  br label %bb.v

bb.k:                                             ; preds = %bb.a
  br label %bb.v

bb.l:                                             ; preds = %bb.a
  br label %bb.v

bb.m:                                             ; preds = %bb.a
  br label %bb.v

bb.n:                                             ; preds = %bb.a
  br label %bb.v

bb.o:                                             ; preds = %bb.a
  br label %bb.v

bb.p:                                             ; preds = %bb.a
  br label %bb.v

bb.q:                                             ; preds = %bb.a
  br label %bb.v

bb.r:                                             ; preds = %bb.a
  br label %bb.v

bb.s:                                             ; preds = %bb.a
  br label %bb.v

bb.t:                                             ; preds = %bb.a
  br label %bb.v

bb.u:                                             ; preds = %bb.a
  unreachable

bb.v:                                             ; preds = %bb.a, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ 484, %bb.t ], [ 1108, %bb.b ], [ 1111, %bb.c ], [ 1107, %bb.d ], [ 487, %bb.e ], [ 489, %bb.f ], [ 490, %bb.g ], [ 1114, %bb.h ], [ 1115, %bb.i ], [ 482, %bb.j ], [ 486, %bb.k ], [ 485, %bb.l ], [ 1116, %bb.m ], [ 1117, %bb.n ], [ 488, %bb.o ], [ 492, %bb.p ], [ 491, %bb.q ], [ 481, %bb.r ], [ 483, %bb.s ], [ 1112, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm15Mips16InstrInfo9makeFrameEjlRNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE(ptr noundef nonnull align 8 dereferenceable(448) %0, i32 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(360) %3, ptr %4) local_unnamed_addr #0 align 2 {
_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit:
  %5 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %6 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %7 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %8 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %9 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %10 = alloca %"class.llvm::BitVector", align 8  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !82   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !213  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @_ZNK4llvm16MipsRegisterInfo15getReservedRegsERKNS_15MachineFunctionE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::BitVector") align 8 %10, ptr noundef nonnull align 8 dereferenceable(317) %i.e, ptr noundef nonnull align 8 dereferenceable(1065) %i.b) #16
  %i.f = load ptr, ptr %10, align 8, !tbaa !214
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !215
  %i.i = and i64 %i.h, 256
  %i.j = icmp ne i64 %i.i, 0                      ; 2 uses
  %i.k = icmp sgt i64 %2, 128
  %.not26 = or i1 %i.k, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !25
  %.neg = select i1 %.not26, i64 -2812, i64 -2811
  %i.n = getelementptr inbounds [32 x i8], ptr %i.m, i64 %.neg
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !82   ; 5 uses
  %i.p = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr null, i1 noundef zeroext false) #16 ; 10 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef %i.p) #16
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %4, align 8
  %i.r = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %4, ptr %i.t, align 8, !tbaa !83
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i = load i64, ptr %i.p, align 8
  %i.u = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i, 7
  %i.v = or disjoint i64 %i.u, %i.r
  store i64 %i.v, ptr %i.p, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.p, ptr %i.w, align 8, !tbaa !83
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i = load i64, ptr %4, align 8
  %i.x = ptrtoint ptr %i.p to i64
  %i.y = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i, 7
  %i.z = or disjoint i64 %i.y, %i.x
  store i64 %i.z, ptr %4, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !218 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !219
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = sdiv exact i64 %i.ag, 12                ; 2 uses
  %i.ai = and i64 %i.ah, 4294967295               ; 2 uses
  %.not10.i = icmp eq i64 %i.ai, 0
  br i1 %.not10.i, label %_ZL18addSaveRestoreRegsRN4llvm19MachineInstrBuilderENS_8ArrayRefINS_15CalleeSavedInfoEEENS_8RegStateE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 16
  br label %bb.a

bb.a:                                             ; preds = %bb.c, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.c ] ; 2 uses
  %i.am = xor i64 %indvars.iv.i, -1
  %i.an = add nsw i64 %i.ah, %i.am
  %i.ao = and i64 %i.an, 4294967295
  %i.ap = getelementptr inbounds nuw [12 x i8], ptr %i.ab, i64 %i.ao
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.ap, align 4, !tbaa !102 ; 2 uses
  %i.aq = icmp eq i32 %.sroa.0.0.copyload.i.i, 328
  br i1 %i.aq, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  store ptr null, ptr %i.aj, align 8, !tbaa !86, !alias.scope !268
  store i32 %.sroa.0.0.copyload.i.i, ptr %i.ak, align 4, !tbaa !16, !alias.scope !268
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, i8 0, i64 16, i1 false), !alias.scope !268
  store i32 0, ptr %9, align 8, !alias.scope !268
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.p, ptr noundef nonnull align 8 dereferenceable(1065) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %9) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next.i, %i.ai
  br i1 %.not.i, label %_ZL18addSaveRestoreRegsRN4llvm19MachineInstrBuilderENS_8ArrayRefINS_15CalleeSavedInfoEEENS_8RegStateE.exit, label %bb.a, !llvm.loop !0

_ZL18addSaveRestoreRegsRN4llvm19MachineInstrBuilderENS_8ArrayRefINS_15CalleeSavedInfoEEENS_8RegStateE.exit: ; preds = %bb.c, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZL18addSaveRestoreRegsRN4llvm19MachineInstrBuilderENS_8ArrayRefINS_15CalleeSavedInfoEEENS_8RegStateE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr null, ptr %i.ar, align 8, !tbaa !86, !alias.scope !269
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 328, ptr %i.as, align 4, !tbaa !16, !alias.scope !269
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, i8 0, i64 16, i1 false), !alias.scope !269
  store i32 0, ptr %8, align 8, !alias.scope !269
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.p, ptr noundef nonnull align 8 dereferenceable(1065) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZL18addSaveRestoreRegsRN4llvm19MachineInstrBuilderENS_8ArrayRefINS_15CalleeSavedInfoEEENS_8RegStateE.exit
  %i.au = icmp ult i64 %2, 2048
  br i1 %i.au, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  store i32 1, ptr %7, align 8, !alias.scope !270
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr null, ptr %i.av, align 8, !tbaa !86, !alias.scope !270
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 %2, ptr %i.aw, align 8, !tbaa !16, !alias.scope !270
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.p, ptr noundef nonnull align 8 dereferenceable(1065) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  store i32 1, ptr %6, align 8, !alias.scope !271
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr null, ptr %i.ax, align 8, !tbaa !86, !alias.scope !271
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 2040, ptr %i.ay, align 8, !tbaa !16, !alias.scope !271
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.p, ptr noundef nonnull align 8 dereferenceable(1065) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  %i.az = sub nsw i64 2040, %2                    ; 3 uses
  %i.ba = add i64 %2, 30727
  %i.bb = icmp ult i64 %i.ba, 65536
  br i1 %i.bb, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %11 = and i64 %i.az, 7
  %i.bc = icmp eq i64 %11, 0
  %i.bd = icmp ult i64 %2, 3065
  %i.be = and i1 %i.bd, %i.bc
  %i.bf = load ptr, ptr %i.l, align 8
  %.0.v.i.i = select i1 %i.be, i64 -29344, i64 -29376
  %.0.i.i = getelementptr inbounds i8, ptr %i.bf, i64 %.0.v.i.i
  %i.bg = load ptr, ptr %i.a, align 8, !tbaa !82  ; 2 uses
  %i.bh = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.bg, ptr noundef nonnull align 8 dereferenceable(32) %.0.i.i, ptr null, i1 noundef zeroext false) #16 ; 7 uses
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef %i.bh) #16
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %4, align 8
  %i.bi = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.bj = inttoptr i64 %i.bi to ptr
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr %4, ptr %i.bk, align 8, !tbaa !83
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i.i = load i64, ptr %i.bh, align 8
  %i.bl = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i.i, 7
  %i.bm = or disjoint i64 %i.bl, %i.bi
  store i64 %i.bm, ptr %i.bh, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr %i.bh, ptr %i.bn, align 8, !tbaa !83
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i = load i64, ptr %4, align 8
  %i.bo = ptrtoint ptr %i.bh to i64
  %i.bp = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i, 7
  %i.bq = or disjoint i64 %i.bp, %i.bo
  store i64 %i.bq, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  store i32 1, ptr %5, align 8, !alias.scope !272
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr null, ptr %i.br, align 8, !tbaa !86, !alias.scope !272
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.az, ptr %i.bs, align 8, !tbaa !16, !alias.scope !272
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bh, ptr noundef nonnull align 8 dereferenceable(1065) %i.bg, ptr noundef nonnull align 8 dereferenceable(32) %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  call void @_ZNK4llvm15Mips16InstrInfo17adjustStackPtrBigEjlRNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEjj(ptr noundef nonnull align 8 dereferenceable(448) %0, i32 poison, i64 noundef %i.az, ptr noundef nonnull align 8 dereferenceable(360) %3, ptr nonnull %4, i32 noundef 345, i32 noundef 346)
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.f
  %i.bt = load ptr, ptr %10, align 8, !tbaa !214  ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.bv = icmp eq ptr %i.bt, %i.bu
  br i1 %i.bv, label %_ZN4llvm9BitVectorD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @free(ptr noundef %i.bt) #16
  br label %_ZN4llvm9BitVectorD2Ev.exit

_ZN4llvm9BitVectorD2Ev.exit:                      ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  ret void
}

declare void @_ZNK4llvm16MipsRegisterInfo15getReservedRegsERKNS_15MachineFunctionE(ptr dead_on_unwind writable sret(%"class.llvm::BitVector") align 8, ptr noundef nonnull align 8 dereferenceable(317), ptr noundef nonnull align 8 dereferenceable(1065)) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm15Mips16InstrInfo15BuildAddiuSpImmERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEl(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(448) %0, ptr noundef nonnull align 8 dereferenceable(360) %1, ptr %2, i64 noundef %3) local_unnamed_addr #0 align 2 {
_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit:
  %4 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %5 = and i64 %3, 7
  %6 = icmp eq i64 %5, 0
  %sext.i = shl i64 %3, 32
  %7 = ashr exact i64 %sext.i, 32
  %8 = add nsw i64 %7, 1024
  %i.a = icmp ult i64 %8, 2048
  %9 = select i1 %6, i1 %i.a, i1 false
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %.0.v.i = select i1 %9, i64 -29344, i64 -29376
  %.0.i = getelementptr inbounds i8, ptr %i.c, i64 %.0.v.i
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !82   ; 2 uses
  %i.f = tail call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %.0.i, ptr null, i1 noundef zeroext false) #16 ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  tail call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef %i.f) #16
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %2, align 8
  %i.h = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %2, ptr %i.j, align 8, !tbaa !83
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i = load i64, ptr %i.f, align 8
  %i.k = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i, 7
  %i.l = or disjoint i64 %i.k, %i.h
  store i64 %i.l, ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.f, ptr %i.m, align 8, !tbaa !83
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i = load i64, ptr %2, align 8
  %i.n = ptrtoint ptr %i.f to i64
  %i.o = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i, 7
  %i.p = or disjoint i64 %i.o, %i.n
  store i64 %i.p, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  store i32 1, ptr %4, align 8, !alias.scope !275
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.q, align 8, !tbaa !86, !alias.scope !275
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %3, ptr %i.r, align 8, !tbaa !16, !alias.scope !275
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.f, ptr noundef nonnull align 8 dereferenceable(1065) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm15Mips16InstrInfo17adjustStackPtrBigEjlRNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEjj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(448) %0, i32 %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(360) %3, ptr %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 align 2 {
bb.a:
  %7 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %8 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %9 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %10 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %11 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %12 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %13 = alloca %"class.llvm::MIMetadata", align 8 ; 4 uses
  %14 = alloca %"class.llvm::MIMetadata", align 8 ; 4 uses
  %15 = alloca %"class.llvm::MIMetadata", align 8 ; 4 uses
  %16 = alloca %"class.llvm::MIMetadata", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %13, i8 0, i64 32, i1 false)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -18368
  %i.d = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %3, ptr %4, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 %5) ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.d, 0        ; 2 uses
  %i.f = extractvalue { ptr, ptr } %i.d, 1        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #16
  store i32 1, ptr %12, align 8, !alias.scope !288
  %i.g = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr null, ptr %i.g, align 8, !tbaa !86, !alias.scope !288
  %i.h = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i64 %2, ptr %i.h, align 8, !tbaa !16, !alias.scope !288
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.f, ptr noundef nonnull align 8 dereferenceable(1065) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %12) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  store i32 1, ptr %11, align 8, !alias.scope !289
  %i.i = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr null, ptr %i.i, align 8, !tbaa !86, !alias.scope !289
  %i.j = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 -1, ptr %i.j, align 8, !tbaa !16, !alias.scope !289
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.f, ptr noundef nonnull align 8 dereferenceable(1065) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %11) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %14, i8 0, i64 32, i1 false)
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !25
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -74016
  %i.m = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %3, ptr %4, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i32 %6) ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0
  %i.o = extractvalue { ptr, ptr } %i.m, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr null, ptr %i.p, align 8, !tbaa !86, !alias.scope !290
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 4
  store i32 20, ptr %i.q, align 4, !tbaa !16, !alias.scope !290
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false), !alias.scope !290
  store i32 67108864, ptr %10, align 8, !alias.scope !290
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.o, ptr noundef nonnull align 8 dereferenceable(1065) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %10) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %15, i8 0, i64 32, i1 false)
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !25
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -29408
  %i.u = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %3, ptr %4, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i32 %5) ; 2 uses
  %i.v = extractvalue { ptr, ptr } %i.u, 0        ; 2 uses
  %i.w = extractvalue { ptr, ptr } %i.u, 1        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr null, ptr %i.x, align 8, !tbaa !86, !alias.scope !291
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i32 %5, ptr %i.y, align 4, !tbaa !16, !alias.scope !291
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false), !alias.scope !291
  store i32 0, ptr %9, align 8, !alias.scope !291
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.w, ptr noundef nonnull align 8 dereferenceable(1065) %i.v, ptr noundef nonnull align 8 dereferenceable(32) %9) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr null, ptr %i.aa, align 8, !tbaa !86, !alias.scope !292
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 %6, ptr %i.ab, align 4, !tbaa !16, !alias.scope !292
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i8 0, i64 16, i1 false), !alias.scope !292
  store i32 67108864, ptr %8, align 8, !alias.scope !292
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.w, ptr noundef nonnull align 8 dereferenceable(1065) %i.v, ptr noundef nonnull align 8 dereferenceable(32) %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %16, i8 0, i64 32, i1 false)
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !25
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -73984
  %i.af = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %3, ptr %4, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(32) %i.ae, i32 20) ; 2 uses
  %i.ag = extractvalue { ptr, ptr } %i.af, 0
  %i.ah = extractvalue { ptr, ptr } %i.af, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr null, ptr %i.ai, align 8, !tbaa !86, !alias.scope !293
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %5, ptr %i.aj, align 4, !tbaa !16, !alias.scope !293
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i8 0, i64 16, i1 false), !alias.scope !293
  store i32 67108864, ptr %7, align 8, !alias.scope !293
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ah, ptr noundef nonnull align 8 dereferenceable(1065) %i.ag, ptr noundef nonnull align 8 dereferenceable(32) %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm15Mips16InstrInfo12restoreFrameEjlRNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE(ptr noundef nonnull align 8 dereferenceable(448) %0, i32 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(360) %3, ptr %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %6 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %7 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %8 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %9 = alloca %"class.llvm::BitVector", align 8   ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 48
  %.not = icmp eq ptr %4, %i.a
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.c = load i64, ptr %i.b, align 8, !tbaa !19
  %i.d = inttoptr i64 %i.c to ptr
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.035.0 = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !82   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !213  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @_ZNK4llvm16MipsRegisterInfo15getReservedRegsERKNS_15MachineFunctionE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::BitVector") align 8 %9, ptr noundef nonnull align 8 dereferenceable(317) %i.i, ptr noundef nonnull align 8 dereferenceable(1065) %i.f) #16
  %i.j = load ptr, ptr %9, align 8, !tbaa !214
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.l = load i64, ptr %i.k, align 8, !tbaa !215
  %i.m = and i64 %i.l, 256
  %i.n = icmp ne i64 %i.m, 0                      ; 2 uses
  %i.o = icmp sgt i64 %2, 128
  %.not26 = or i1 %i.o, %i.n
  %i.p = icmp ult i64 %2, 2048
  br i1 %i.p, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = add nsw i64 %2, -2040                    ; 2 uses
  %i.r = add i64 %2, 30728
  %i.s = icmp ult i64 %i.r, 65536
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %10 = and i64 %2, 7
  %i.t = icmp eq i64 %10, 0
  %i.u = icmp ult i64 %2, 3064
  %i.v = and i1 %i.t, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  %.0.v.i.i = select i1 %i.v, i64 -29344, i64 -29376
  %.0.i.i = getelementptr inbounds i8, ptr %i.x, i64 %.0.v.i.i
  %i.y = load ptr, ptr %i.e, align 8, !tbaa !82   ; 2 uses
  %i.z = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %.0.i.i, ptr null, i1 noundef zeroext false) #16 ; 7 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef %i.z) #16
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %4, align 8
  %i.ab = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %4, ptr %i.ad, align 8, !tbaa !83
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i.i = load i64, ptr %i.z, align 8
  %i.ae = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i.i, 7
  %i.af = or disjoint i64 %i.ae, %i.ab
  store i64 %i.af, ptr %i.z, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %i.z, ptr %i.ag, align 8, !tbaa !83
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i = load i64, ptr %4, align 8
  %i.ah = ptrtoint ptr %i.z to i64
  %i.ai = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i, 7
  %i.aj = or disjoint i64 %i.ai, %i.ah
  store i64 %i.aj, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  store i32 1, ptr %8, align 8, !alias.scope !302
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr null, ptr %i.ak, align 8, !tbaa !86, !alias.scope !302
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 %i.q, ptr %i.al, align 8, !tbaa !16, !alias.scope !302
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.z, ptr noundef nonnull align 8 dereferenceable(1065) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  br label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit

bb.f:                                             ; preds = %bb.d
  call void @_ZNK4llvm15Mips16InstrInfo17adjustStackPtrBigEjlRNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEjj(ptr noundef nonnull align 8 dereferenceable(448) %0, i32 poison, i64 noundef %i.q, ptr noundef nonnull align 8 dereferenceable(360) %3, ptr %4, i32 noundef 22, i32 noundef 23)
  br label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit

_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit: ; preds = %bb.c, %bb.f, %bb.e
  %.0 = phi i64 [ %2, %bb.c ], [ 2040, %bb.f ], [ 2040, %bb.e ]
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !25
  %.neg = select i1 %.not26, i64 -2474, i64 -2473
  %i.ao = getelementptr inbounds [32 x i8], ptr %i.an, i64 %.neg
  %i.ap = load ptr, ptr %i.e, align 8, !tbaa !82  ; 4 uses
  %i.aq = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.ap, ptr noundef nonnull align 8 dereferenceable(32) %i.ao, ptr %.sroa.035.0, i1 noundef zeroext false) #16 ; 9 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, ptr noundef %i.aq) #16
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %4, align 8
  %i.as = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %4, ptr %i.au, align 8, !tbaa !83
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i = load i64, ptr %i.aq, align 8
  %i.av = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i, 7
  %i.aw = or disjoint i64 %i.av, %i.as
  store i64 %i.aw, ptr %i.aq, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr %i.aq, ptr %i.ax, align 8, !tbaa !83
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i = load i64, ptr %4, align 8
  %i.ay = ptrtoint ptr %i.aq to i64
  %i.az = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i, 7
  %i.ba = or disjoint i64 %i.az, %i.ay
  store i64 %i.ba, ptr %4, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !218 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !219
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = ptrtoint ptr %i.bc to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = sdiv exact i64 %i.bh, 12                ; 2 uses
  %i.bj = and i64 %i.bi, 4294967295               ; 2 uses
  %.not10.i = icmp eq i64 %i.bj, 0
  br i1 %.not10.i, label %_ZL18addSaveRestoreRegsRN4llvm19MachineInstrBuilderENS_8ArrayRefINS_15CalleeSavedInfoEEENS_8RegStateE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.bm = getelementptr inbounds nuw i8, ptr %7, i64 16
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.i ] ; 2 uses
  %i.bn = xor i64 %indvars.iv.i, -1
  %i.bo = add nsw i64 %i.bi, %i.bn
  %i.bp = and i64 %i.bo, 4294967295
  %i.bq = getelementptr inbounds nuw [12 x i8], ptr %i.bc, i64 %i.bp
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.bq, align 4, !tbaa !102 ; 2 uses
  %i.br = icmp eq i32 %.sroa.0.0.copyload.i.i, 328
  br i1 %i.br, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  store ptr null, ptr %i.bk, align 8, !tbaa !86, !alias.scope !303
  store i32 %.sroa.0.0.copyload.i.i, ptr %i.bl, align 4, !tbaa !16, !alias.scope !303
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i8 0, i64 16, i1 false), !alias.scope !303
  store i32 16777216, ptr %7, align 8, !alias.scope !303
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.aq, ptr noundef nonnull align 8 dereferenceable(1065) %i.ap, ptr noundef nonnull align 8 dereferenceable(32) %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next.i, %i.bj
  br i1 %.not.i, label %_ZL18addSaveRestoreRegsRN4llvm19MachineInstrBuilderENS_8ArrayRefINS_15CalleeSavedInfoEEENS_8RegStateE.exit, label %bb.g, !llvm.loop !0

_ZL18addSaveRestoreRegsRN4llvm19MachineInstrBuilderENS_8ArrayRefINS_15CalleeSavedInfoEEENS_8RegStateE.exit: ; preds = %bb.i, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit
  br i1 %i.n, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZL18addSaveRestoreRegsRN4llvm19MachineInstrBuilderENS_8ArrayRefINS_15CalleeSavedInfoEEENS_8RegStateE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr null, ptr %i.bs, align 8, !tbaa !86, !alias.scope !304
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 328, ptr %i.bt, align 4, !tbaa !16, !alias.scope !304
  %i.bu = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bu, i8 0, i64 16, i1 false), !alias.scope !304
  store i32 16777216, ptr %6, align 8, !alias.scope !304
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.aq, ptr noundef nonnull align 8 dereferenceable(1065) %i.ap, ptr noundef nonnull align 8 dereferenceable(32) %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZL18addSaveRestoreRegsRN4llvm19MachineInstrBuilderENS_8ArrayRefINS_15CalleeSavedInfoEEENS_8RegStateE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  store i32 1, ptr %5, align 8, !alias.scope !305
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr null, ptr %i.bv, align 8, !tbaa !86, !alias.scope !305
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %.0, ptr %i.bw, align 8, !tbaa !16, !alias.scope !305
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.aq, ptr noundef nonnull align 8 dereferenceable(1065) %i.ap, ptr noundef nonnull align 8 dereferenceable(32) %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %i.bx = load ptr, ptr %9, align 8, !tbaa !214   ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.bz = icmp eq ptr %i.bx, %i.by
  br i1 %i.bz, label %_ZN4llvm9BitVectorD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @free(ptr noundef %i.bx) #16
  br label %_ZN4llvm9BitVectorD2Ev.exit

_ZN4llvm9BitVectorD2Ev.exit:                      ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  ret void
}

; Function Attrs: mustprogress nofree norecurse noreturn nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZNK4llvm15Mips16InstrInfo29adjustStackPtrBigUnrestrictedEjlRNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(448) %0, i32 noundef %1, i64 noundef %2, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(360) %3, ptr nofree readnone captures(none) %4) local_unnamed_addr #6 align 2 {
bb.a:
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm15Mips16InstrInfo14adjustStackPtrEjlRNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(448) %0, i32 %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(360) %3, ptr %4) unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add i64 %2, 32768
  %i.c = icmp ult i64 %i.b, 65536
  tail call void @llvm.assume(i1 %i.c)
  %6 = and i64 %2, 7
  %i.d = icmp eq i64 %6, 0
  %7 = add nsw i64 %2, 1024
  %i.e = icmp ult i64 %7, 2048
  %8 = select i1 %i.d, i1 %i.e, i1 false
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  %.0.v.i.i = select i1 %8, i64 -29344, i64 -29376
  %.0.i.i = getelementptr inbounds i8, ptr %i.g, i64 %.0.v.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !82   ; 2 uses
  %i.j = tail call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0.i.i, ptr null, i1 noundef zeroext false) #16 ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 40
  tail call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef %i.j) #16
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %4, align 8
  %i.l = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %4, ptr %i.n, align 8, !tbaa !83
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i.i = load i64, ptr %i.j, align 8
  %i.o = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i.i, 7
  %i.p = or disjoint i64 %i.o, %i.l
  store i64 %i.p, ptr %i.j, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.j, ptr %i.q, align 8, !tbaa !83
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i = load i64, ptr %4, align 8
  %i.r = ptrtoint ptr %i.j to i64
  %i.s = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i, 7
  %i.t = or disjoint i64 %i.s, %i.r
  store i64 %i.t, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  store i32 1, ptr %5, align 8, !alias.scope !308
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr null, ptr %i.u, align 8, !tbaa !86, !alias.scope !308
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %2, ptr %i.v, align 8, !tbaa !16, !alias.scope !308
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.j, ptr noundef nonnull align 8 dereferenceable(1065) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZNK4llvm15Mips16InstrInfo13loadImmediateEjlRNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_8DebugLocERj(ptr noundef nonnull align 8 dereferenceable(448) %0, i32 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(360) %3, ptr %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %6) local_unnamed_addr #0 align 2 {
bb.a:
  %7 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %8 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %9 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %10 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %11 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %12 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %13 = alloca %"class.llvm::RegScavenger", align 8 ; 17 uses
  %14 = alloca %"class.llvm::BitVector", align 8  ; 12 uses
  %15 = alloca %"class.llvm::BitVector", align 8  ; 11 uses
  %16 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %17 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %18 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #16
  %i.a = getelementptr inbounds nuw i8, ptr %13, i64 40 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %13, i64 56 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %13, i8 0, i64 40, i1 false)
  store ptr %i.b, ptr %i.a, align 8, !tbaa !214
  %i.c = getelementptr inbounds nuw i8, ptr %13, i64 48
  store i32 0, ptr %i.c, align 8, !tbaa !221
  %i.d = getelementptr inbounds nuw i8, ptr %13, i64 52
  store i32 2, ptr %i.d, align 4, !tbaa !222
  %i.e = getelementptr inbounds nuw i8, ptr %13, i64 88
  store ptr null, ptr %i.e, align 8, !tbaa !341
  %i.f = getelementptr inbounds nuw i8, ptr %13, i64 96 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %13, i64 112 ; 2 uses
  store ptr %i.g, ptr %i.f, align 8, !tbaa !214
  %i.h = getelementptr inbounds nuw i8, ptr %13, i64 104
  store i32 0, ptr %i.h, align 8, !tbaa !221
  %i.i = getelementptr inbounds nuw i8, ptr %13, i64 108
  store i32 6, ptr %i.i, align 4, !tbaa !222
  %i.j = getelementptr inbounds nuw i8, ptr %13, i64 160
  store i32 0, ptr %i.j, align 8, !tbaa !342
  %i.k = trunc i64 %2 to i32
  %i.l = and i32 %i.k, 65535
  store i32 %i.l, ptr %6, align 4, !tbaa !102
  call void @_ZN4llvm12RegScavenger18enterBasicBlockEndERNS_17MachineBasicBlockE(ptr noundef nonnull align 8 dereferenceable(168) %13, ptr noundef nonnull align 8 dereferenceable(360) %3) #16
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %4, align 8
  %i.m = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.i.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i: ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.o = load i32, ptr %i.n, align 4, !tbaa !223
  %i.p = and i32 %i.o, 8
  %.not34.i.i.i.i = icmp eq i32 %i.p, 0
  br i1 %.not34.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i
  %.sroa.0.05.i.i.i.i = phi ptr [ %i.r, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i ], [ %4, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !83   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 44
  %i.t = load i32, ptr %i.s, align 4, !tbaa !223
  %i.u = and i32 %i.t, 8
  %.not3.i.i.i.i = icmp eq i32 %i.u, 0
  br i1 %.not3.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i, !llvm.loop !309

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i, %bb.a
  %.sroa.0.1.i.i.i.i = phi ptr [ %4, %bb.a ], [ %4, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i ], [ %i.r, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !83   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !345
  %.not1.i = icmp eq ptr %i.y, %i.w
  br i1 %.not1.i, label %_ZN4llvm12RegScavenger8backwardENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i, %.lr.ph.i
  call void @_ZN4llvm12RegScavenger8backwardEv(ptr noundef nonnull align 8 dereferenceable(168) %13) #16
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !345
  %.not.i = icmp eq ptr %i.z, %i.w
  br i1 %.not.i, label %_ZN4llvm12RegScavenger8backwardENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE.exit, label %.lr.ph.i, !llvm.loop !310

_ZN4llvm12RegScavenger8backwardENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE.exit: ; preds = %.lr.ph.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #16
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !103
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !82
  call void @_ZNK4llvm18TargetRegisterInfo17getAllocatableSetERKNS_15MachineFunctionEPKNS_15MCRegisterClassE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::BitVector") align 8 %14, ptr noundef nonnull align 8 dereferenceable(316) %i.aa, ptr noundef nonnull align 8 dereferenceable(1065) %i.ae, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN4llvm26MipsMCRegisterClassStorageE, i64 768)) #16
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !97 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.ai = load i24, ptr %i.ah, align 8            ; 2 uses
  %i.aj = zext i24 %i.ai to i64
  %.idx = shl nuw nsw i64 %i.aj, 5
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.idx
  %.not244 = icmp eq i24 %i.ai, 0
  br i1 %.not244, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm12RegScavenger8backwardENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE.exit
  %i.al = load ptr, ptr %14, align 8
  br label %bb.b

._crit_edge:                                      ; preds = %.critedge
  %.pre = load i24, ptr %i.ah, align 8            ; 2 uses
  %i.am = zext i24 %.pre to i64
  %.idx250 = shl nuw nsw i64 %i.am, 5
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.idx250
  %.not111246 = icmp eq i24 %.pre, 0
  br i1 %.not111246, label %.loopexit, label %.lr.ph249

bb.b:                                             ; preds = %.lr.ph, %.critedge
  %.093245 = phi ptr [ %i.ag, %.lr.ph ], [ %i.bf, %.critedge ] ; 3 uses
  %i.ao = load i32, ptr %.093245, align 8         ; 2 uses
  %i.ap = and i32 %i.ao, 255
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.ar = getelementptr inbounds nuw i8, ptr %.093245, i64 4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !16 ; 3 uses
  %i.at = and i32 %i.ao, 16777216
  %i.au = icmp ne i32 %i.at, 0
  %i.av = icmp slt i32 %i.as, 1
  %or.cond228 = or i1 %i.au, %i.av
  br i1 %or.cond228, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aw = and i32 %i.as, 63
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = shl nuw i64 1, %i.ax
  %i.az = xor i64 %i.ay, -1
  %i.ba = lshr i32 %i.as, 6
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.bb ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !215
  %i.be = and i64 %i.bd, %i.az
  store i64 %i.be, ptr %i.bc, align 8, !tbaa !215
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %bb.b, %bb.d
  %i.bf = getelementptr inbounds nuw i8, ptr %.093245, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.bf, %i.ak
  br i1 %.not, label %._crit_edge, label %bb.b

.lr.ph249:                                        ; preds = %._crit_edge, %bb.f
  %.095247 = phi ptr [ %i.bk, %bb.f ], [ %i.ag, %._crit_edge ] ; 3 uses
  %i.bg = load i32, ptr %.095247, align 8
  %i.bh = and i32 %i.bg, 16777471
  %or.cond230 = icmp eq i32 %i.bh, 16777216
  br i1 %or.cond230, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph249
  %i.bi = getelementptr inbounds nuw i8, ptr %.095247, i64 4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !16
  br label %.loopexit

bb.f:                                             ; preds = %.lr.ph249
  %i.bk = getelementptr inbounds nuw i8, ptr %.095247, i64 32 ; 2 uses
  %.not111 = icmp eq ptr %i.bk, %i.an
  br i1 %.not111, label %.loopexit, label %.lr.ph249

.loopexit:                                        ; preds = %bb.f, %_ZN4llvm12RegScavenger8backwardENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE.exit, %._crit_edge, %bb.e
  %.2 = phi i32 [ %i.bj, %bb.e ], [ 0, %._crit_edge ], [ 0, %_ZN4llvm12RegScavenger8backwardENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE.exit ], [ 0, %bb.f ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #16
  call void @_ZN4llvm12RegScavenger16getRegsAvailableEPKNS_15MCRegisterClassE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::BitVector") align 8 %15, ptr noundef nonnull align 8 dereferenceable(168) %13, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN4llvm26MipsMCRegisterClassStorageE, i64 768)) #16
  %i.bl = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !221 ; 7 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %14, i64 8
end_hunk_0
begin_hunk_1_@_ZNK4llvm15Mips16InstrInfo13loadImmediateEjlRNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_8DebugLocERj:bb.a
  call void %i.jw(ptr noundef nonnull align 8 dereferenceable(448) %0, ptr noundef nonnull align 8 dereferenceable(360) %3, ptr nonnull %4, ptr noundef nonnull align 8 dereferenceable(8) %5, i32 %.092, i32 20, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #16
  %.sroa.07.0.copyload = load ptr, ptr %5, align 8, !tbaa !19
  store ptr %.sroa.07.0.copyload, ptr %17, align 8, !tbaa !19
  %i.jx = getelementptr inbounds nuw i8, ptr %17, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jx, i8 0, i64 24, i1 false)
  %i.jy = load ptr, ptr %i.hf, align 8, !tbaa !25
  %i.jz = getelementptr inbounds i8, ptr %i.jy, i64 -29408
  %i.ka = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %3, ptr nonnull %4, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(32) %i.jz, i32 %.0) ; 2 uses
  %i.kb = extractvalue { ptr, ptr } %i.ka, 0      ; 2 uses
  %i.kc = extractvalue { ptr, ptr } %i.ka, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  %i.kd = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr null, ptr %i.kd, align 8, !tbaa !86, !alias.scope !354
  %i.ke = getelementptr inbounds nuw i8, ptr %10, i64 4
  store i32 %.092, ptr %i.ke, align 4, !tbaa !16, !alias.scope !354
  %i.kf = getelementptr inbounds nuw i8, ptr %10, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kf, i8 0, i64 16, i1 false), !alias.scope !354
  store i32 67108864, ptr %10, align 8, !alias.scope !354
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.kc, ptr noundef nonnull align 8 dereferenceable(1065) %i.kb, ptr noundef nonnull align 8 dereferenceable(32) %10) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  %i.kg = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr null, ptr %i.kg, align 8, !tbaa !86, !alias.scope !355
  %i.kh = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i32 %.0, ptr %i.kh, align 4, !tbaa !16, !alias.scope !355
  %i.ki = getelementptr inbounds nuw i8, ptr %9, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ki, i8 0, i64 16, i1 false), !alias.scope !355
  store i32 0, ptr %9, align 8, !alias.scope !355
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.kc, ptr noundef nonnull align 8 dereferenceable(1065) %i.kb, ptr noundef nonnull align 8 dereferenceable(32) %9) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #16
  br label %bb.ac

bb.ab:                                            ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #16
  %.sroa.05.0.copyload = load ptr, ptr %5, align 8, !tbaa !19
  store ptr %.sroa.05.0.copyload, ptr %18, align 8, !tbaa !19
  %i.kj = getelementptr inbounds nuw i8, ptr %18, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kj, i8 0, i64 24, i1 false)
  %i.kk = load ptr, ptr %i.hf, align 8, !tbaa !25
  %i.kl = getelementptr inbounds i8, ptr %i.kk, i64 -29408
  %i.km = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %3, ptr nonnull %4, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(32) %i.kl, i32 %.0) ; 2 uses
  %i.kn = extractvalue { ptr, ptr } %i.km, 0      ; 2 uses
  %i.ko = extractvalue { ptr, ptr } %i.km, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  %i.kp = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr null, ptr %i.kp, align 8, !tbaa !86, !alias.scope !356
  %i.kq = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 %1, ptr %i.kq, align 4, !tbaa !16, !alias.scope !356
  %i.kr = getelementptr inbounds nuw i8, ptr %8, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kr, i8 0, i64 16, i1 false), !alias.scope !356
  store i32 0, ptr %8, align 8, !alias.scope !356
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ko, ptr noundef nonnull align 8 dereferenceable(1065) %i.kn, ptr noundef nonnull align 8 dereferenceable(32) %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  %i.ks = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr null, ptr %i.ks, align 8, !tbaa !86, !alias.scope !357
  %i.kt = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %.0, ptr %i.kt, align 4, !tbaa !16, !alias.scope !357
  %i.ku = getelementptr inbounds nuw i8, ptr %7, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ku, i8 0, i64 16, i1 false), !alias.scope !357
  store i32 67108864, ptr %7, align 8, !alias.scope !357
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ko, ptr noundef nonnull align 8 dereferenceable(1065) %i.kn, ptr noundef nonnull align 8 dereferenceable(32) %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #16
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.2103 = phi i32 [ %.1102, %bb.aa ], [ 0, %bb.ab ] ; 3 uses
  %.299 = phi i32 [ %.198, %bb.aa ], [ 0, %bb.ab ]
  %.not116 = icmp eq i32 %.2103, 0
  %i.kv = or i32 %.2103, %.0104
  %or.cond.not = icmp eq i32 %i.kv, 0
  br i1 %or.cond.not, label %bb.ah, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.not115 = icmp eq i32 %.0104, 0
  %.0.copyload.i.i.i.i.i.i.i.i.i.i171 = load i64, ptr %4, align 8
  %i.kw = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i171, 4
  %.not.i.i.i.i172 = icmp eq i64 %i.kw, 0
  br i1 %.not.i.i.i.i172, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i176, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i173

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i176: ; preds = %bb.ad
  %i.kx = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !223
  %i.kz = and i32 %i.ky, 8
  %.not34.i.i.i.i177 = icmp eq i32 %i.kz, 0
  br i1 %.not34.i.i.i.i177, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i173, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i178

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i178: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i176, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i178
  %.sroa.0.05.i.i.i.i179 = phi ptr [ %i.lb, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i178 ], [ %4, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i176 ]
  %i.la = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i179, i64 8
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !83 ; 3 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 44
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !223
  %i.le = and i32 %i.ld, 8
  %.not3.i.i.i.i180 = icmp eq i32 %i.le, 0
  br i1 %.not3.i.i.i.i180, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i173, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i178, !llvm.loop !309

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i173: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i178, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i176, %bb.ad
  %.sroa.0.1.i.i.i.i174 = phi ptr [ %4, %bb.ad ], [ %4, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i176 ], [ %i.lb, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i178 ]
  %i.lf = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i174, i64 8
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !83 ; 2 uses
  br i1 %.not115, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i173
  %i.lh = load ptr, ptr %0, align 8, !tbaa !10
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 440
  %i.lj = load ptr, ptr %i.li, align 8
  call void %i.lj(ptr noundef nonnull align 8 dereferenceable(448) %0, ptr noundef nonnull align 8 dereferenceable(360) %3, ptr %i.lg, ptr noundef nonnull align 8 dereferenceable(8) %5, i32 %.0104, i32 %.0100, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false) #16
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i173
  br i1 %.not116, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.lk = load ptr, ptr %0, align 8, !tbaa !10
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 440
  %i.lm = load ptr, ptr %i.ll, align 8
  call void %i.lm(ptr noundef nonnull align 8 dereferenceable(448) %0, ptr noundef nonnull align 8 dereferenceable(360) %3, ptr %i.lg, ptr noundef nonnull align 8 dereferenceable(8) %5, i32 %.2103, i32 %.299, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false) #16
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag, %bb.ac
  %i.ln = load ptr, ptr %15, align 8, !tbaa !214  ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.lp = icmp eq ptr %i.ln, %i.lo
  br i1 %i.lp, label %_ZN4llvm9BitVectorD2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @free(ptr noundef %i.ln) #16
  br label %_ZN4llvm9BitVectorD2Ev.exit

_ZN4llvm9BitVectorD2Ev.exit:                      ; preds = %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #16
  %i.lq = load ptr, ptr %14, align 8, !tbaa !214  ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.ls = icmp eq ptr %i.lq, %i.lr
  br i1 %i.ls, label %_ZN4llvm9BitVectorD2Ev.exit182, label %bb.aj

bb.aj:                                            ; preds = %_ZN4llvm9BitVectorD2Ev.exit
  call void @free(ptr noundef %i.lq) #16
  br label %_ZN4llvm9BitVectorD2Ev.exit182

_ZN4llvm9BitVectorD2Ev.exit182:                   ; preds = %_ZN4llvm9BitVectorD2Ev.exit, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #16
  %i.lt = load ptr, ptr %i.f, align 8, !tbaa !214 ; 2 uses
  %i.lu = icmp eq ptr %i.lt, %i.g
  br i1 %i.lu, label %_ZN4llvm12LiveRegUnitsD2Ev.exit.i, label %bb.ak

bb.ak:                                            ; preds = %_ZN4llvm9BitVectorD2Ev.exit182
  call void @free(ptr noundef %i.lt) #16
  br label %_ZN4llvm12LiveRegUnitsD2Ev.exit.i

_ZN4llvm12LiveRegUnitsD2Ev.exit.i:                ; preds = %bb.ak, %_ZN4llvm9BitVectorD2Ev.exit182
  %i.lv = load ptr, ptr %i.a, align 8, !tbaa !214 ; 2 uses
  %i.lw = icmp eq ptr %i.lv, %i.b
  br i1 %i.lw, label %_ZN4llvm12RegScavengerD2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZN4llvm12LiveRegUnitsD2Ev.exit.i
  call void @free(ptr noundef %i.lv) #16
  br label %_ZN4llvm12RegScavengerD2Ev.exit

_ZN4llvm12RegScavengerD2Ev.exit:                  ; preds = %_ZN4llvm12LiveRegUnitsD2Ev.exit.i, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #16
  ret i32 %.0
}

declare void @_ZN4llvm12RegScavenger18enterBasicBlockEndERNS_17MachineBasicBlockE(ptr noundef nonnull align 8 dereferenceable(168), ptr noundef nonnull align 8 dereferenceable(360)) local_unnamed_addr #1

declare void @_ZNK4llvm18TargetRegisterInfo17getAllocatableSetERKNS_15MachineFunctionEPKNS_15MCRegisterClassE(ptr dead_on_unwind writable sret(%"class.llvm::BitVector") align 8, ptr noundef nonnull align 8 dereferenceable(316), ptr noundef nonnull align 8 dereferenceable(1065), ptr noundef) local_unnamed_addr #1

declare void @_ZN4llvm12RegScavenger16getRegsAvailableEPKNS_15MCRegisterClassE(ptr dead_on_unwind writable sret(%"class.llvm::BitVector") align 8, ptr noundef nonnull align 8 dereferenceable(168), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK4llvm15Mips16InstrInfo18getAnalyzableBrOpcEj(ptr nofree nonnull readnone align 8 captures(none) %0, i32 noundef %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = add i32 %1, -481
  %i.b = icmp ult i32 %i.a, 3
  %i.c = insertelement <3 x i32> poison, i32 %1, i64 0
  %i.d = shufflevector <3 x i32> %i.c, <3 x i32> poison, <8 x i32> zeroinitializer
  %i.e = and <8 x i32> %i.d, <i32 -1, i32 -3, i32 -1, i32 -1, i32 -5, i32 -1, i32 -1, i32 -3>
  %i.f = icmp eq <8 x i32> %i.e, <i32 1109, i32 1108, i32 1114, i32 1116, i32 1107, i32 1112, i32 1115, i32 484>
  %i.g = icmp eq i32 %1, 485
  %i.h = icmp eq i32 %1, 1117
  %i.i = add i32 %1, -487
  %i.j = icmp ult i32 %i.i, 6
  %i.k = bitcast <8 x i1> %i.f to i8
  %i.l = icmp ne i8 %i.k, 0
  %op.rdx = or i1 %i.l, %i.g
  %op.rdx64 = or i1 %i.h, %i.b
  %op.rdx65 = or i1 %op.rdx, %op.rdx64
  %op.rdx66 = or i1 %op.rdx65, %i.j
  %i.m = select i1 %op.rdx66, i32 %1, i32 0
  ret i32 %i.m
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNK4llvm15Mips16InstrInfo10AddiuSpImmEl(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(448) %0, i64 noundef %1) local_unnamed_addr #7 align 2 {
bb.a:
  %2 = and i64 %1, 7
  %3 = icmp eq i64 %2, 0
  %sext = shl i64 %1, 32
  %4 = ashr exact i64 %sext, 32
  %5 = add nsw i64 %4, 1024
  %i.a = icmp ult i64 %5, 2048
  %6 = select i1 %3, i1 %i.a, i1 false
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %.0.v = select i1 %6, i64 -29344, i64 -29376
  %.0 = getelementptr inbounds i8, ptr %i.c, i64 %.0.v
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull ptr @_ZN4llvm21createMips16InstrInfoERKNS_13MipsSubtargetE(ptr noundef nonnull align 1 %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(448) ptr @_Znwm(i64 noundef 448) #17 ; 2 uses
  tail call void @_ZN4llvm15Mips16InstrInfoC1ERKNS_13MipsSubtargetE(ptr noundef nonnull align 8 dereferenceable(448) %i.a, ptr noundef nonnull align 1 %0) #16
  ret ptr %i.a
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZN4llvm15Mips16InstrInfo14validImmediateEjjl(i32 noundef %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = icmp eq i32 %0, 916
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  switch i32 %1, label %bb.c [
    i32 20, label %bb.d
    i32 18, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.b, %bb.a, %bb.c
  %.sink8 = phi i64 [ 16384, %bb.c ], [ 32768, %bb.a ], [ 32768, %bb.b ], [ 32768, %bb.b ]
  %.sink7 = phi i64 [ 32768, %bb.c ], [ 65536, %bb.a ], [ 65536, %bb.b ], [ 65536, %bb.b ]
  %i.b = add i64 %2, %.sink8
  %i.c = icmp ult i64 %i.b, %.sink7
  ret i1 %i.c
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm15Mips16InstrInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(448) dereferenceable(448) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 1536) (i8, ptr @_ZTVN4llvm15Mips16InstrInfoE, i64 16), ptr %0, align 8, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @_ZN4llvm18TargetRegisterInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(317) dereferenceable(317) %i.a) #16
  tail call void @_ZN4llvm15TargetInstrInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %0) #16
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm15Mips16InstrInfoD0Ev(ptr noundef nonnull align 8 dereferenceable(448) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 1536) (i8, ptr @_ZTVN4llvm15Mips16InstrInfoE, i64 16), ptr %0, align 8, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @_ZN4llvm18TargetRegisterInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(317) dereferenceable(317) %i.a) #16, !inline_history !358
  tail call void @_ZN4llvm15TargetInstrInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(448) %0) #16, !inline_history !358
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 448) #18
  ret void
}

declare noundef ptr @_ZNK4llvm15TargetInstrInfo11getRegClassERKNS_11MCInstrDescEj(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) unnamed_addr #1

declare noundef zeroext i1 @_ZNK4llvm15TargetInstrInfo20isGlobalMemoryObjectEPKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm15TargetInstrInfo14isIgnorableUseERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm15TargetInstrInfo12isSafeToSinkERNS_12MachineInstrEPNS_17MachineBasicBlockEPNS_16MachineCycleInfoE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm15TargetInstrInfo29shouldBreakCriticalEdgeToSinkERNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 false
}

declare noundef zeroext i1 @_ZNK4llvm15TargetInstrInfo22isReMaterializableImplERKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(80)) unnamed_addr #1

declare noundef ptr @_ZNK4llvm15TargetInstrInfo22commuteInstructionImplERNS_12MachineInstrEbjj(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(80), i1 noundef zeroext, i32 noundef, i32 noundef) unnamed_addr #1

declare noundef i32 @_ZNK4llvm15TargetInstrInfo11getSPAdjustERKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(80)) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm15TargetInstrInfo21isCoalescableExtInstrERKNS_12MachineInstrERNS_8RegisterES5_Rj(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZNK4llvm15TargetInstrInfo19isLoadFromStackSlotERKNS_12MachineInstrERiRNS_8TypeSizeE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(9) %3) unnamed_addr #0 comdat align 2 {
bb.a:
  store i64 0, ptr %3, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 0, ptr %.sroa.4.0..sroa_idx, align 8
  %i.a = load ptr, ptr %0, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i32 %i.c(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #16
  ret i32 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZNK4llvm15TargetInstrInfo25isLoadFromStackSlotPostFEERKNS_12MachineInstrERi(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i32 0
}

declare noundef zeroext i1 @_ZNK4llvm15TargetInstrInfo20hasLoadFromStackSlotERKNS_12MachineInstrERNS_15SmallVectorImplIPKNS_17MachineMemOperandEEE(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 1) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZNK4llvm15TargetInstrInfo18isStoreToStackSlotERKNS_12MachineInstrERiRNS_8TypeSizeE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(9) %3) unnamed_addr #0 comdat align 2 {
bb.a:
  store i64 0, ptr %3, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 0, ptr %.sroa.4.0..sroa_idx, align 8
  %i.a = load ptr, ptr %0, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i32 %i.c(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #16
  ret i32 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZNK4llvm15TargetInstrInfo24isStoreToStackSlotPostFEERKNS_12MachineInstrERi(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i32 0
}

declare noundef zeroext i1 @_ZNK4llvm15TargetInstrInfo19hasStoreToStackSlotERKNS_12MachineInstrERNS_15SmallVectorImplIPKNS_17MachineMemOperandEEE(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 1) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm15TargetInstrInfo15isStackSlotCopyERKNS_12MachineInstrERiS4_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 false
}

declare noundef zeroext i1 @_ZNK4llvm15TargetInstrInfo17getStackSlotRangeEPKNS_15MCRegisterClassEjRjS4_RKNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 8 dereferenceable(1065)) unnamed_addr #1

declare noundef i32 @_ZNK4llvm13MipsInstrInfo18getInstSizeInBytesERKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef nonnull align 8 dereferenceable(80)) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK4llvm15TargetInstrInfo21getInstSizeVerifyModeERKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i32 0
}

declare noundef zeroext i1 @_ZNK4llvm13MipsInstrInfo16isAsCheapAsAMoveERKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef nonnull align 8 dereferenceable(80)) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm15TargetInstrInfo10shouldSinkERKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm15TargetInstrInfo16shouldPostRASinkERKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm15TargetInstrInfo11shouldHoistERKNS_12MachineInstrEPKNS_11MachineLoopE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 true
}

declare void @_ZNK4llvm15TargetInstrInfo13reMaterializeERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEENS_8RegisterEjRKS4_NS_11LaneBitmaskE(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(360), ptr, i32, i32 noundef, ptr noundef nonnull align 8 dereferenceable(80), i64) unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(80) ptr @_ZNK4llvm15TargetInstrInfo9duplicateERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKS4_(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(360), ptr, ptr noundef nonnull align 8 dereferenceable(80)) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK4llvm15TargetInstrInfo21convertToThreeAddressERNS_12MachineInstrEPNS_13LiveVariablesEPNS_13LiveIntervalsE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr null
}

declare noundef zeroext i1 @_ZNK4llvm13MipsInstrInfo21findCommutedOpIndicesERKNS_12MachineInstrERjS4_(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm15TargetInstrInfo20hasCommutePreferenceERNS_12MachineInstrERb(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm15TargetInstrInfo19simplifyInstructionERNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 false
}

declare noundef zeroext i1 @_ZNK4llvm15TargetInstrInfo16produceSameValueERKNS_12MachineInstrES3_PKNS_19MachineRegisterInfoE(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) unnamed_addr #1

end_hunk_1
