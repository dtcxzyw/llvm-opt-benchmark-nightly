Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MSP430RegisterInfo?download=true
inline.NumInlined: 334
inline.NumDeleted: 215
begin_hunk_0_@_ZNK4llvm18MSP430RegisterInfo18getCalleeSavedRegsEPKNS_15MachineFunctionE:bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.s = load i16, ptr %i.r, align 2, !tbaa !192
  %i.t = and i16 %i.s, 16368
  %i.u = icmp eq i16 %i.t, 1104
  %i.v = select i1 %i.u, ptr @_ZZNK4llvm18MSP430RegisterInfo18getCalleeSavedRegsEPKNS_15MachineFunctionEE19CalleeSavedRegsIntr, ptr @_ZZNK4llvm18MSP430RegisterInfo18getCalleeSavedRegsEPKNS_15MachineFunctionEE15CalleeSavedRegs
  br label %bb.c

bb.c:                                             ; preds = %_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit.thread, %bb.b
  %.0 = phi ptr [ %i.q, %bb.b ], [ %i.v, %_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit.thread ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm18MSP430RegisterInfo15getReservedRegsERKNS_15MachineFunctionE(ptr dead_on_unwind noalias writable sret(%"class.llvm::BitVector") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(316) %1, ptr noundef nonnull align 8 dereferenceable(1065) %2) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !44   ; 2 uses
  %i.c = add i32 %i.b, 63                         ; 2 uses
  %i.d = lshr i32 %i.c, 6                         ; 3 uses
  %i.e = zext nneg i32 %i.d to i64                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !196
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 6, ptr %i.h, align 4, !tbaa !197
  %i.i = icmp ugt i32 %i.c, 447
  br i1 %i.i, label %_ZN4llvm9BitVectorC2Ejb.exit.loopexit, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i

_ZN4llvm9BitVectorC2Ejb.exit.loopexit:            ; preds = %bb.a
  store i32 0, ptr %i.g, align 8, !tbaa !198
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull %i.f, i64 noundef %i.e, i64 noundef 8) #17
  %i.j = load ptr, ptr %0, align 8, !tbaa !196
  br label %_ZN4llvm9BitVectorC2Ejb.exit.sink.split

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i:        ; preds = %bb.a
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %_ZN4llvm9BitVectorC2Ejb.exit, label %_ZN4llvm9BitVectorC2Ejb.exit.sink.split

_ZN4llvm9BitVectorC2Ejb.exit.sink.split:          ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i, %_ZN4llvm9BitVectorC2Ejb.exit.loopexit
  %.sink = phi ptr [ %i.j, %_ZN4llvm9BitVectorC2Ejb.exit.loopexit ], [ %i.f, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i ]
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.e, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %.sink, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !33
  br label %_ZN4llvm9BitVectorC2Ejb.exit

_ZN4llvm9BitVectorC2Ejb.exit:                     ; preds = %_ZN4llvm9BitVectorC2Ejb.exit.sink.split, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i
  store i32 %i.d, ptr %i.g, align 8, !tbaa !198
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %i.b, ptr %i.k, align 8, !tbaa !199
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !71, !nonnull !187, !align !188 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !41
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 136
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef ptr %i.p(ptr noundef nonnull align 8 dereferenceable(344) %i.m) #17, !inline_history !189 ; 2 uses
  %i.r = load ptr, ptr %0, align 8, !tbaa !196    ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !33
  %i.t = or i64 %i.s, 510
  store i64 %i.t, ptr %i.r, align 8, !tbaa !33
  %i.u = load ptr, ptr %2, align 8, !tbaa !190, !nonnull !187, !align !188
  %i.v = tail call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140) %i.u, i32 noundef 21) #17
  br i1 %i.v, label %_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit.thread, label %_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit

_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit: ; preds = %_ZN4llvm9BitVectorC2Ejb.exit
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !41
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 384
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noundef zeroext i1 %i.y(ptr noundef nonnull align 8 dereferenceable(21) %i.q, ptr noundef nonnull align 8 dereferenceable(1065) %2) #17, !inline_history !191
  br i1 %i.z, label %bb.b, label %_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit.thread

bb.b:                                             ; preds = %_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit
  %i.aa = load ptr, ptr %0, align 8, !tbaa !196   ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !33
  %i.ac = or i64 %i.ab, 2097664
  store i64 %i.ac, ptr %i.aa, align 8, !tbaa !33
  br label %_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit.thread

_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit.thread: ; preds = %_ZN4llvm9BitVectorC2Ejb.exit, %_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK4llvm18MSP430RegisterInfo18getPointerRegClassEj(ptr nofree nonnull readnone align 8 captures(none) %0, i32 %1) unnamed_addr #0 align 2 {
bb.a:
  ret ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm28MSP430MCRegisterClassStorageE, i64 64)
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm18MSP430RegisterInfo19eliminateFrameIndexENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEijPNS_12RegScavengerE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr %1, i32 %2, i32 noundef %3, ptr nofree readnone captures(none) %4) unnamed_addr #4 align 2 {
bb.a:
  %5 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %6 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %7 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %8 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %9 = alloca %"class.llvm::MIMetadata", align 8  ; 5 uses
  %10 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !206  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !223  ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !71, !nonnull !187, !align !188 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !41
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 136
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef ptr %i.i(ptr noundef nonnull align 8 dereferenceable(344) %i.f) #17, !inline_history !189 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.027.0.copyload = load ptr, ptr %i.k, align 8, !tbaa !267 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 5 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !268
  %i.n = zext i32 %3 to i64                       ; 3 uses
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load i32, ptr %i.p, align 8, !tbaa !38
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !190, !nonnull !187, !align !188
  %i.s = tail call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140) %i.r, i32 noundef 21) #17
  br i1 %i.s, label %_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit.thread, label %_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit

_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit: ; preds = %bb.a
  %i.t = load ptr, ptr %i.j, align 8, !tbaa !41
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 384
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call noundef zeroext i1 %i.v(ptr noundef nonnull align 8 dereferenceable(21) %i.j, ptr noundef nonnull align 8 dereferenceable(1065) %i.d) #17, !inline_history !191
  %spec.select = select i1 %i.w, i32 9, i32 5
  br label %_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit.thread

_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit.thread: ; preds = %_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit, %bb.a
  %i.x = phi i32 [ 5, %bb.a ], [ %spec.select, %_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !269  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !270
  %i.ad = add i32 %i.ac, %i.q
  %i.ae = zext i32 %i.ad to i64
  %i.af = load ptr, ptr %i.aa, align 8, !tbaa !290
  %i.ag = getelementptr inbounds nuw [40 x i8], ptr %i.af, i64 %i.ae
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !291 ; 2 uses
  %i.ai = load ptr, ptr %i.d, align 8, !tbaa !190, !nonnull !187, !align !188
  %i.aj = tail call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140) %i.ai, i32 noundef 21) #17
  br i1 %i.aj, label %_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit59.thread, label %_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit59

_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit59: ; preds = %_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit.thread
  %i.ak = load ptr, ptr %i.j, align 8, !tbaa !41
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 384
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = tail call noundef zeroext i1 %i.am(ptr noundef nonnull align 8 dereferenceable(21) %i.j, ptr noundef nonnull align 8 dereferenceable(1065) %i.d) #17, !inline_history !191
  br i1 %i.an, label %bb.b, label %_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit59.thread

_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit59.thread: ; preds = %_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit.thread, %_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit59
  %i.ao = add i64 %i.ah, 2
  %i.ap = load ptr, ptr %i.y, align 8, !tbaa !269
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !294
  %i.as = add i64 %i.ao, %i.ar
  br label %bb.c

bb.b:                                             ; preds = %_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit59
  %i.at = add i64 %i.ah, 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit59.thread
  %.057 = phi i64 [ %i.at, %bb.b ], [ %i.as, %_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit59.thread ]
  %i.au = add i32 %3, 1                           ; 2 uses
  %i.av = load ptr, ptr %i.l, align 8, !tbaa !268 ; 2 uses
  %i.aw = zext i32 %i.au to i64                   ; 2 uses
  %i.ax = getelementptr inbounds nuw [32 x i8], ptr %i.av, i64 %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !38
  %i.ba = add i64 %i.az, %.057                    ; 4 uses
  %i.bb = trunc i64 %i.ba to i32                  ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !295
  %i.be = icmp eq i32 %i.bd, 379
  br i1 %i.be, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.bf = load ptr, ptr %i.e, align 8, !tbaa !71, !nonnull !187, !align !188 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !41
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 128
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = tail call noundef ptr %i.bi(ptr noundef nonnull align 8 dereferenceable(344) %i.bf) #17
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 3 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !296
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 -17472
  tail call void @_ZN4llvm12MachineInstr7setDescERKNS_11MCInstrDescE(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.bm) #17
  %i.bn = load ptr, ptr %i.l, align 8, !tbaa !268
  %i.bo = getelementptr inbounds nuw [32 x i8], ptr %i.bn, i64 %i.n
  tail call void @_ZN4llvm14MachineOperand16ChangeToRegisterENS_8RegisterEbbbbbb(ptr noundef nonnull align 8 dereferenceable(32) %i.bo, i32 %i.x, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false) #17
  tail call void @_ZN4llvm12MachineInstr13removeOperandEj(ptr noundef nonnull align 8 dereferenceable(80) %1, i32 noundef %i.au) #17
  %i.bp = icmp eq i32 %i.bb, 0
  br i1 %i.bp, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bq = load ptr, ptr %i.l, align 8, !tbaa !268
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !38 ; 4 uses
  %i.bt = icmp slt i32 %i.bb, 0
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %1, align 8
  %i.bu = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i.i = icmp eq i64 %i.bu, 0            ; 2 uses
  br i1 %i.bt, label %.preheader.preheader, label %.preheader84

.preheader.preheader:                             ; preds = %bb.e
  br i1 %.not.i.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i: ; preds = %.preheader.preheader
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !298
  %i.bx = and i32 %i.bw, 8
  %.not34.i.i.i.i = icmp eq i32 %i.bx, 0
  br i1 %.not34.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i
  %.sroa.0.05.i.i.i.i = phi ptr [ %i.bz, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i ], [ %1, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i ]
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !299 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 44
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !298
  %i.cc = and i32 %i.cb, 8
  %.not3.i.i.i.i = icmp eq i32 %i.cc, 0
  br i1 %.not3.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i, !llvm.loop !300

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i, %.preheader.preheader
  %.sroa.0.1.i.i.i.i = phi ptr [ %1, %.preheader.preheader ], [ %1, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i ], [ %i.bz, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i ]
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !299
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  store ptr %.sroa.027.0.copyload, ptr %9, align 8, !tbaa !267
  %i.cf = getelementptr inbounds nuw i8, ptr %9, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cf, i8 0, i64 24, i1 false)
  %i.cg = load ptr, ptr %i.bk, align 8, !tbaa !296
  %i.ch = getelementptr inbounds i8, ptr %i.cg, i64 -19072
  %i.ci = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %i.b, ptr %i.ce, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %i.ch, i32 %i.bs) ; 2 uses
  %i.cj = extractvalue { ptr, ptr } %i.ci, 0      ; 2 uses
  %i.ck = extractvalue { ptr, ptr } %i.ci, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  %i.cl = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr null, ptr %i.cl, align 8, !tbaa !301, !alias.scope !304
  %i.cm = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 %i.bs, ptr %i.cm, align 4, !tbaa !38, !alias.scope !304
  %i.cn = getelementptr inbounds nuw i8, ptr %8, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cn, i8 0, i64 16, i1 false), !alias.scope !304
  store i32 0, ptr %8, align 8, !alias.scope !304
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ck, ptr noundef nonnull align 8 dereferenceable(1065) %i.cj, ptr noundef nonnull align 8 dereferenceable(32) %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  %i.co = sub nsw i64 0, %i.ba
  %i.cp = and i64 %i.co, 4294967295
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  store i32 1, ptr %7, align 8, !alias.scope !307
  %i.cq = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr null, ptr %i.cq, align 8, !tbaa !301, !alias.scope !307
  %i.cr = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 %i.cp, ptr %i.cr, align 8, !tbaa !38, !alias.scope !307
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ck, ptr noundef nonnull align 8 dereferenceable(1065) %i.cj, ptr noundef nonnull align 8 dereferenceable(32) %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br label %bb.g

.preheader84:                                     ; preds = %bb.e
  br i1 %.not.i.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i67, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i64

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i67: ; preds = %.preheader84
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !298
  %i.cu = and i32 %i.ct, 8
  %.not34.i.i.i.i68 = icmp eq i32 %i.cu, 0
  br i1 %.not34.i.i.i.i68, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i64, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i69

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i69: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i67, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i69
  %.sroa.0.05.i.i.i.i70 = phi ptr [ %i.cw, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i69 ], [ %1, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i67 ]
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i70, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !299 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 44
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !298
  %i.cz = and i32 %i.cy, 8
  %.not3.i.i.i.i71 = icmp eq i32 %i.cz, 0
  br i1 %.not3.i.i.i.i71, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i64, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i69, !llvm.loop !300

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i64: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i69, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i67, %.preheader84
  %.sroa.0.1.i.i.i.i65 = phi ptr [ %1, %.preheader84 ], [ %1, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i67 ], [ %i.cw, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i69 ]
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i65, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !299
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  store ptr %.sroa.027.0.copyload, ptr %10, align 8, !tbaa !267
  %i.dc = getelementptr inbounds nuw i8, ptr %10, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dc, i8 0, i64 24, i1 false)
  %i.dd = load ptr, ptr %i.bk, align 8, !tbaa !296
  %i.de = getelementptr inbounds i8, ptr %i.dd, i64 -10816
  %i.df = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %i.b, ptr %i.db, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %i.de, i32 %i.bs) ; 2 uses
  %i.dg = extractvalue { ptr, ptr } %i.df, 0      ; 2 uses
  %i.dh = extractvalue { ptr, ptr } %i.df, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.di = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr null, ptr %i.di, align 8, !tbaa !301, !alias.scope !310
  %i.dj = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %i.bs, ptr %i.dj, align 4, !tbaa !38, !alias.scope !310
  %i.dk = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dk, i8 0, i64 16, i1 false), !alias.scope !310
  store i32 0, ptr %6, align 8, !alias.scope !310
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.dh, ptr noundef nonnull align 8 dereferenceable(1065) %i.dg, ptr noundef nonnull align 8 dereferenceable(32) %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.dl = and i64 %i.ba, 2147483647
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  store i32 1, ptr %5, align 8, !alias.scope !313
  %i.dm = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr null, ptr %i.dm, align 8, !tbaa !301, !alias.scope !313
  %i.dn = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.dl, ptr %i.dn, align 8, !tbaa !38, !alias.scope !313
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.dh, ptr noundef nonnull align 8 dereferenceable(1065) %i.dg, ptr noundef nonnull align 8 dereferenceable(32) %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.do = getelementptr inbounds nuw [32 x i8], ptr %i.av, i64 %i.n
  tail call void @_ZN4llvm14MachineOperand16ChangeToRegisterENS_8RegisterEbbbbbb(ptr noundef nonnull align 8 dereferenceable(32) %i.do, i32 %i.x, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false) #17
  %i.dp = load ptr, ptr %i.l, align 8, !tbaa !268
  %i.dq = getelementptr inbounds nuw [32 x i8], ptr %i.dp, i64 %i.aw
  %sext = shl i64 %i.ba, 32
  %i.dr = ashr exact i64 %sext, 32
  tail call void @_ZN4llvm14MachineOperand17ChangeToImmediateElj(ptr noundef nonnull align 8 dereferenceable(32) %i.dq, i64 noundef %i.dr, i32 noundef 0) #17
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i64, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i, %bb.f
  ret i1 false
}

declare void @_ZN4llvm12MachineInstr7setDescERKNS_11MCInstrDescE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

declare void @_ZN4llvm14MachineOperand16ChangeToRegisterENS_8RegisterEbbbbbb(ptr noundef nonnull align 8 dereferenceable(32), i32, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #5

declare void @_ZN4llvm12MachineInstr13removeOperandEj(ptr noundef nonnull align 8 dereferenceable(80), i32 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 %4) local_unnamed_addr #7 comdat {
bb.a:
  %5 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !223  ; 6 uses
  %.sroa.03.0.copyload = load ptr, ptr %2, align 8, !tbaa !267
  %i.c = tail call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr %.sroa.03.0.copyload, i1 noundef zeroext false) #17 ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef %i.c) #17
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %1, align 8
  %i.e = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %1, ptr %i.g, align 8, !tbaa !299
  %.0.copyload.i.i.i.i9.i.i.i.i.i = load i64, ptr %i.c, align 8
  %i.h = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i, 7
  %i.i = or disjoint i64 %i.h, %i.e
  store i64 %i.i, ptr %i.c, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.c, ptr %i.j, align 8, !tbaa !299
  %.0.copyload.i.i.i.i10.i.i.i.i.i = load i64, ptr %1, align 8
  %i.k = ptrtoint ptr %i.c to i64
  %i.l = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i, 7
  %i.m = or disjoint i64 %i.l, %i.k
  store i64 %i.m, ptr %1, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !316  ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm12MachineInstr13setPCSectionsERNS_15MachineFunctionEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(80) %i.c, ptr noundef nonnull align 8 dereferenceable(1065) %i.b, ptr noundef nonnull %i.o) #17
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !320  ; 2 uses
  %.not7.i = icmp eq ptr %i.q, null
  br i1 %.not7.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4llvm12MachineInstr15setMMRAMetadataERNS_15MachineFunctionEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(80) %i.c, ptr noundef nonnull align 8 dereferenceable(1065) %i.b, ptr noundef nonnull %i.q) #17
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !321  ; 2 uses
  %.not8.i = icmp eq ptr %i.s, null
  br i1 %.not8.i, label %_ZNK4llvm19MachineInstrBuilder14copyMIMetadataERKNS_10MIMetadataE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4llvm12MachineInstr21setDeactivationSymbolERNS_15MachineFunctionEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(80) %i.c, ptr noundef nonnull align 8 dereferenceable(1065) %i.b, ptr noundef nonnull %i.s) #17
  br label %_ZNK4llvm19MachineInstrBuilder14copyMIMetadataERKNS_10MIMetadataE.exit

_ZNK4llvm19MachineInstrBuilder14copyMIMetadataERKNS_10MIMetadataE.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr null, ptr %i.t, align 8, !tbaa !301, !alias.scope !322
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %4, ptr %i.u, align 4, !tbaa !38, !alias.scope !322
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false), !alias.scope !322
  store i32 16777216, ptr %5, align 8, !alias.scope !322
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.c, ptr noundef nonnull align 8 dereferenceable(1065) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %i.b, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %i.c, 1
  ret { ptr, ptr } %.fca.1.insert
}

declare void @_ZN4llvm14MachineOperand17ChangeToImmediateElj(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i32 5, 10) i32 @_ZNK4llvm18MSP430RegisterInfo16getFrameRegisterERKNS_15MachineFunctionE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !71, !nonnull !187, !align !188 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !41
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(344) %i.b) #17, !inline_history !189 ; 2 uses
  %i.g = load ptr, ptr %1, align 8, !tbaa !190, !nonnull !187, !align !188
  %i.h = tail call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140) %i.g, i32 noundef 21) #17
  br i1 %i.h, label %_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit.thread, label %_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit

_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit: ; preds = %bb.a
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !41
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 384
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(21) %i.f, ptr noundef nonnull align 8 dereferenceable(1065) %1) #17, !inline_history !191
  %spec.select = select i1 %i.l, i32 9, i32 5
  br label %_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit.thread

_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit.thread: ; preds = %_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit, %bb.a
  %i.m = phi i32 [ 5, %bb.a ], [ %spec.select, %_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit ]
  ret i32 %i.m
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm21MSP430GenRegisterInfoD0Ev(ptr noundef nonnull align 8 dereferenceable(316) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #19
  unreachable
}

declare noundef i64 @_ZNK4llvm14MCRegisterInfo14getDwarfRegNumENS_10MCRegisterEb(ptr noundef nonnull align 8 dereferenceable(240), i32, i1 noundef zeroext) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK4llvm18TargetRegisterInfo19getNumSupportedRegsERKNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(316) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !44
  ret i32 %i.b
}

declare i32 @_ZNK4llvm18TargetRegisterInfo16lookThruCopyLikeENS_8RegisterEPKNS_19MachineRegisterInfoE(ptr noundef nonnull align 8 dereferenceable(316), i32, ptr noundef) unnamed_addr #5

declare i32 @_ZNK4llvm18TargetRegisterInfo26lookThruSingleUseCopyChainENS_8RegisterEPKNS_19MachineRegisterInfoE(ptr noundef nonnull align 8 dereferenceable(316), i32, ptr noundef) unnamed_addr #5

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK4llvm18TargetRegisterInfo13getIPRACSRegsEPKNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(316) %0, ptr noundef %1) unnamed_addr #4 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK4llvm18TargetRegisterInfo20getCallPreservedMaskERKNS_15MachineFunctionEj(ptr noundef nonnull align 8 dereferenceable(316) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1, i32 noundef %2) unnamed_addr #4 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK4llvm18TargetRegisterInfo27getCustomEHPadPreservedMaskERKNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(316) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK4llvm18TargetRegisterInfo18getNoPreservedMaskEv(ptr noundef nonnull align 8 dereferenceable(316) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
end_hunk_0
