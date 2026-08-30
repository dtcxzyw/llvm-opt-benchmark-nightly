Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/Mips16InstrInfo?download=true
inline.NumInlined: 562
inline.NumDeleted: 298
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK4llvm15Mips16InstrInfo11copyPhysRegERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_8DebugLocENS_8RegisterES9_bbb:bb.a
  %i.aj = shl nuw nsw i32 1, %i.ab
  %i.ak = and i32 %i.aj, %i.ai
  %.not57 = icmp eq i32 %i.ak, 0
  br i1 %.not57, label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit20.thread, label %bb.c

bb.c:                                             ; preds = %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit20
  %i.al = lshr i32 %5, 3                          ; 2 uses
  %.not.i21 = icmp samesign ult i32 %i.al, %i.c
  br i1 %.not.i21, label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit23, label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit20.thread

_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit23: ; preds = %bb.c
  %i.am = and i32 %5, 7
  %i.an = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm26MipsMCRegisterClassStorageE, i64 772), align 4, !tbaa !16
  %i.ao = zext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm26MipsMCRegisterClassStorageE, i64 768), i64 %i.ao
  %i.aq = zext nneg i32 %i.al to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !17
  %i.at = zext i8 %i.as to i32
  %i.au = shl nuw nsw i32 1, %i.am
  %i.av = and i32 %i.au, %i.at
  %.not58 = icmp eq i32 %i.av, 0
  br i1 %.not58, label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit20.thread, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit

_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit20.thread: ; preds = %bb.c, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.thread, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit23, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit20
  switch i32 %5, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit [
    i32 253, label %bb.d
    i32 291, label %bb.e
  ]

bb.d:                                             ; preds = %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit20.thread
  br i1 %.not.i, label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit26, label %.thread

_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit26: ; preds = %bb.d
  %i.aw = and i32 %4, 7
  %i.ax = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm26MipsMCRegisterClassStorageE, i64 772), align 4, !tbaa !16
  %i.ay = zext i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm26MipsMCRegisterClassStorageE, i64 768), i64 %i.ay
  %i.ba = zext nneg i32 %i.a to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !17
  %i.bd = zext i8 %i.bc to i32
  %i.be = shl nuw nsw i32 1, %i.aw
  %i.bf = and i32 %i.be, %i.bd
  %.not60 = icmp eq i32 %i.bf, 0
  br i1 %.not60, label %.thread, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit

.thread:                                          ; preds = %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit26, %bb.d
  br label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit

bb.e:                                             ; preds = %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit20.thread
  br i1 %.not.i, label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit29, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit

_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit29: ; preds = %bb.e
  %i.bg = and i32 %4, 7
  %i.bh = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm26MipsMCRegisterClassStorageE, i64 772), align 4, !tbaa !16
  %i.bi = zext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm26MipsMCRegisterClassStorageE, i64 768), i64 %i.bi
  %i.bk = zext nneg i32 %i.a to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !17
  %i.bn = zext i8 %i.bm to i32
  %i.bo = shl nuw nsw i32 1, %i.bg
  %i.bp = and i32 %i.bo, %i.bn
  %.not59 = icmp eq i32 %i.bp, 0                  ; 2 uses
  %spec.select = select i1 %.not59, i32 291, i32 0
  %spec.select54.neg = select i1 %.not59, i64 0, i64 -2311
  br label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit

_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit: ; preds = %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit29, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit20.thread, %bb.e, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit17, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit23, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit26, %.thread
  %.sroa.036.0 = phi i32 [ %5, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit17 ], [ %5, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit23 ], [ %5, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit20.thread ], [ 291, %bb.e ], [ %spec.select, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit29 ], [ 0, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit26 ], [ 253, %.thread ] ; 2 uses
  %.0.neg = phi i64 [ -2313, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit17 ], [ -2312, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit23 ], [ 0, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit20.thread ], [ 0, %bb.e ], [ %spec.select54.neg, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit29 ], [ -2310, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit26 ], [ 0, %.thread ]
  %.sroa.02.0.copyload = load ptr, ptr %3, align 8, !tbaa !18
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !21
  %i.bs = getelementptr inbounds [32 x i8], ptr %i.br, i64 %.0.neg
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !27 ; 3 uses
  %i.bv = tail call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.bu, ptr noundef nonnull align 8 dereferenceable(32) %i.bs, ptr %.sroa.02.0.copyload, i1 noundef zeroext false) #16 ; 8 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 40
  tail call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.bw, ptr noundef %i.bv) #16
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %2, align 8
  %i.bx = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.by = inttoptr i64 %i.bx to ptr
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store ptr %2, ptr %i.bz, align 8, !tbaa !84
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i = load i64, ptr %i.bv, align 8
  %i.ca = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i, 7
  %i.cb = or disjoint i64 %i.ca, %i.bx
  store i64 %i.cb, ptr %i.bv, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store ptr %i.bv, ptr %i.cc, align 8, !tbaa !84
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i = load i64, ptr %2, align 8
  %i.cd = ptrtoint ptr %i.bv to i64
  %i.ce = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i, 7
  %i.cf = or disjoint i64 %i.ce, %i.cd
  store i64 %i.cf, ptr %2, align 8
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  %i.cg = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr null, ptr %i.cg, align 8, !tbaa !85, !alias.scope !88
  %i.ch = getelementptr inbounds nuw i8, ptr %10, i64 4
  store i32 %4, ptr %i.ch, align 4, !tbaa !17, !alias.scope !88
  %i.ci = getelementptr inbounds nuw i8, ptr %10, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ci, i8 0, i64 16, i1 false), !alias.scope !88
  store i32 16777216, ptr %10, align 8, !alias.scope !88
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bv, ptr noundef nonnull align 8 dereferenceable(1065) %i.bu, ptr noundef nonnull align 8 dereferenceable(32) %10) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit
  %.not14 = icmp eq i32 %.sroa.036.0, 0
  br i1 %.not14, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  %i.cj = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr null, ptr %i.cj, align 8, !tbaa !85, !alias.scope !91
  %i.ck = select i1 %6, i32 67108864, i32 0
  %i.cl = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i32 %.sroa.036.0, ptr %i.cl, align 4, !tbaa !17, !alias.scope !91
  %i.cm = getelementptr inbounds nuw i8, ptr %9, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cm, i8 0, i64 16, i1 false), !alias.scope !91
  store i32 %i.ck, ptr %9, align 8, !alias.scope !91
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bv, ptr noundef nonnull align 8 dereferenceable(1065) %i.bu, ptr noundef nonnull align 8 dereferenceable(32) %9) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZNK4llvm15Mips16InstrInfo15isCopyInstrImplERKNS_12MachineInstrE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::optional.31") align 8 captures(none) initializes((16, 17)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %2) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !94
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !102
  %i.e = and i64 %i.d, 16384
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !104  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr %i.g, ptr %0, align 8, !tbaa !105
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !105
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i8 [ 1, %bb.b ], [ 0, %bb.a ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.i, align 8, !tbaa !106
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm15Mips16InstrInfo15storeRegToStackERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEENS_8RegisterEbiPKNS_15MCRegisterClassElNS4_6MIFlagE(ptr noundef nonnull align 8 dereferenceable(448) %0, ptr noundef nonnull align 8 dereferenceable(360) %1, ptr %2, i32 %3, i1 noundef zeroext %4, i32 noundef %5, ptr nofree noundef readonly captures(none) %6, i64 noundef %7, i32 %8) unnamed_addr #0 align 2 {
bb.a:
  %9 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %10 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %11 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.not = icmp eq ptr %2, %i.a
  br i1 %.not, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.c = load i64, ptr %i.b, align 8, !tbaa !18
  %i.d = inttoptr i64 %i.c to ptr
  br label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit

_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit: ; preds = %bb.a, %bb.b
  %.sroa.021.0 = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  %i.e = tail call noundef ptr @_ZNK4llvm13MipsInstrInfo13GetMemOperandERNS_17MachineBasicBlockEiNS_17MachineMemOperand5FlagsE(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef nonnull align 8 dereferenceable(360) %1, i32 noundef %5, i16 noundef zeroext 2) #16
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.g = load i16, ptr %i.f, align 4, !tbaa !108
  %i.h = zext i16 %i.g to i32                     ; 2 uses
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm26MipsMCRegisterClassStorageE, i64 796), align 4, !tbaa !109
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm26MipsMCRegisterClassStorageE, i64 768), i64 %i.j
  %i.l = lshr i32 %i.h, 5
  %i.m = zext nneg i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !110
  %i.p = and i32 %i.h, 31
  %i.q = lshr i32 %i.o, %i.p
  %i.r = trunc i32 %i.q to i1
  %spec.select.neg = select i1 %i.r, i64 -2831, i64 0
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !21
  %i.u = getelementptr inbounds [32 x i8], ptr %i.t, i64 %spec.select.neg
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !27   ; 5 uses
  %i.x = tail call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr %.sroa.021.0, i1 noundef zeroext false) #16 ; 10 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 40
  tail call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef %i.x) #16
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %2, align 8
  %i.z = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %2, ptr %i.ab, align 8, !tbaa !84
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i = load i64, ptr %i.x, align 8
  %i.ac = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i, 7
  %i.ad = or disjoint i64 %i.ac, %i.z
  store i64 %i.ad, ptr %i.x, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.x, ptr %i.ae, align 8, !tbaa !84
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i = load i64, ptr %2, align 8
  %i.af = ptrtoint ptr %i.x to i64
  %i.ag = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i, 7
  %i.ah = or disjoint i64 %i.ag, %i.af
  store i64 %i.ah, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr null, ptr %i.ai, align 8, !tbaa !85, !alias.scope !111
  %i.aj = select i1 %4, i32 67108864, i32 0
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 4
  store i32 %3, ptr %i.ak, align 4, !tbaa !17, !alias.scope !111
  %i.al = getelementptr inbounds nuw i8, ptr %11, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, i8 0, i64 16, i1 false), !alias.scope !111
  store i32 %i.aj, ptr %11, align 8, !alias.scope !111
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.x, ptr noundef nonnull align 8 dereferenceable(1065) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %11) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  store i32 5, ptr %10, align 8, !alias.scope !114
  %i.am = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr null, ptr %i.am, align 8, !tbaa !85, !alias.scope !114
  %i.an = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 %5, ptr %i.an, align 8, !tbaa !17, !alias.scope !114
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.x, ptr noundef nonnull align 8 dereferenceable(1065) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %10) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  store i32 1, ptr %9, align 8, !alias.scope !117
  %i.ao = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr null, ptr %i.ao, align 8, !tbaa !85, !alias.scope !117
  %i.ap = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 %7, ptr %i.ap, align 8, !tbaa !17, !alias.scope !117
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.x, ptr noundef nonnull align 8 dereferenceable(1065) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %9) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  call void @_ZN4llvm12MachineInstr13addMemOperandERNS_15MachineFunctionEPNS_17MachineMemOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.x, ptr noundef nonnull align 8 dereferenceable(1065) %i.w, ptr noundef %i.e) #16
  ret void
}

declare noundef ptr @_ZNK4llvm13MipsInstrInfo13GetMemOperandERNS_17MachineBasicBlockEiNS_17MachineMemOperand5FlagsE(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef nonnull align 8 dereferenceable(360), i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm15Mips16InstrInfo16loadRegFromStackERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEENS_8RegisterEiPKNS_15MCRegisterClassElNS4_6MIFlagE(ptr noundef nonnull align 8 dereferenceable(448) %0, ptr noundef nonnull align 8 dereferenceable(360) %1, ptr %2, i32 %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5, i64 noundef %6, i32 %7) unnamed_addr #0 align 2 {
bb.a:
  %8 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %9 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %10 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.not = icmp eq ptr %2, %i.a
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.c = load i64, ptr %i.b, align 8, !tbaa !18
  %i.d = inttoptr i64 %i.c to ptr
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.017.0 = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  %i.e = tail call noundef ptr @_ZNK4llvm13MipsInstrInfo13GetMemOperandERNS_17MachineBasicBlockEiNS_17MachineMemOperand5FlagsE(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef nonnull align 8 dereferenceable(360) %1, i32 noundef %4, i16 noundef zeroext 1) #16
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.g = load i16, ptr %i.f, align 4, !tbaa !108
  %i.h = zext i16 %i.g to i32                     ; 2 uses
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm26MipsMCRegisterClassStorageE, i64 796), align 4, !tbaa !109
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm26MipsMCRegisterClassStorageE, i64 768), i64 %i.j
  %i.l = lshr i32 %i.h, 5
  %i.m = zext nneg i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !110
  %i.p = and i32 %i.h, 31
  %i.q = lshr i32 %i.o, %i.p
  %i.r = trunc i32 %i.q to i1
  %spec.select.neg = select i1 %i.r, i64 -2016, i64 0
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  store ptr %.sroa.017.0, ptr %10, align 8, !tbaa !18
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i8 0, i64 24, i1 false)
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !21
  %i.v = getelementptr inbounds [32 x i8], ptr %i.u, i64 %spec.select.neg
  %i.w = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i32 %3) ; 2 uses
  %i.x = extractvalue { ptr, ptr } %i.w, 0        ; 3 uses
  %i.y = extractvalue { ptr, ptr } %i.w, 1        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  store i32 5, ptr %9, align 8, !alias.scope !120
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr null, ptr %i.z, align 8, !tbaa !85, !alias.scope !120
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 %4, ptr %i.aa, align 8, !tbaa !17, !alias.scope !120
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.y, ptr noundef nonnull align 8 dereferenceable(1065) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %9) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  store i32 1, ptr %8, align 8, !alias.scope !123
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr null, ptr %i.ab, align 8, !tbaa !85, !alias.scope !123
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 %6, ptr %i.ac, align 8, !tbaa !17, !alias.scope !123
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.y, ptr noundef nonnull align 8 dereferenceable(1065) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  call void @_ZN4llvm12MachineInstr13addMemOperandERNS_15MachineFunctionEPNS_17MachineMemOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.y, ptr noundef nonnull align 8 dereferenceable(1065) %i.x, ptr noundef %i.e) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 %4) local_unnamed_addr #5 comdat {
bb.a:
  %5 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 6 uses
  %.sroa.03.0.copyload = load ptr, ptr %2, align 8, !tbaa !18
  %i.c = tail call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr %.sroa.03.0.copyload, i1 noundef zeroext false) #16 ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef %i.c) #16
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %1, align 8
  %i.e = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %1, ptr %i.g, align 8, !tbaa !84
  %.0.copyload.i.i.i.i9.i.i.i.i.i = load i64, ptr %i.c, align 8
  %i.h = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i, 7
  %i.i = or disjoint i64 %i.h, %i.e
  store i64 %i.i, ptr %i.c, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.c, ptr %i.j, align 8, !tbaa !84
  %.0.copyload.i.i.i.i10.i.i.i.i.i = load i64, ptr %1, align 8
  %i.k = ptrtoint ptr %i.c to i64
  %i.l = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i, 7
  %i.m = or disjoint i64 %i.l, %i.k
  store i64 %i.m, ptr %1, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !126  ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm12MachineInstr13setPCSectionsERNS_15MachineFunctionEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(80) %i.c, ptr noundef nonnull align 8 dereferenceable(1065) %i.b, ptr noundef nonnull %i.o) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !130  ; 2 uses
  %.not7.i = icmp eq ptr %i.q, null
  br i1 %.not7.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4llvm12MachineInstr15setMMRAMetadataERNS_15MachineFunctionEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(80) %i.c, ptr noundef nonnull align 8 dereferenceable(1065) %i.b, ptr noundef nonnull %i.q) #16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !131  ; 2 uses
  %.not8.i = icmp eq ptr %i.s, null
  br i1 %.not8.i, label %_ZNK4llvm19MachineInstrBuilder14copyMIMetadataERKNS_10MIMetadataE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4llvm12MachineInstr21setDeactivationSymbolERNS_15MachineFunctionEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(80) %i.c, ptr noundef nonnull align 8 dereferenceable(1065) %i.b, ptr noundef nonnull %i.s) #16
  br label %_ZNK4llvm19MachineInstrBuilder14copyMIMetadataERKNS_10MIMetadataE.exit

_ZNK4llvm19MachineInstrBuilder14copyMIMetadataERKNS_10MIMetadataE.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr null, ptr %i.t, align 8, !tbaa !85, !alias.scope !132
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %4, ptr %i.u, align 4, !tbaa !17, !alias.scope !132
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false), !alias.scope !132
  store i32 16777216, ptr %5, align 8, !alias.scope !132
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.c, ptr noundef nonnull align 8 dereferenceable(1065) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %i.b, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %i.c, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm15Mips16InstrInfo18expandPostRAPseudoERNS_12MachineInstrE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(448) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !94
  %i.c = load i32, ptr %i.b, align 8, !tbaa !135
  %cond = icmp eq i32 %i.c, 687                   ; 2 uses
  br i1 %cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !136  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.01.0.copyload.i = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -60352
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !27
  %i.l = tail call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr %.sroa.01.0.copyload.i, i1 noundef zeroext false) #16 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  tail call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef %i.l) #16
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %1, align 8
  %i.n = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %1, ptr %i.p, align 8, !tbaa !84
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i.i = load i64, ptr %i.l, align 8
  %i.q = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i.i, 7
  %i.r = or disjoint i64 %i.q, %i.n
  store i64 %i.r, ptr %i.l, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.l, ptr %i.s, align 8, !tbaa !84
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i = load i64, ptr %1, align 8
  %i.t = ptrtoint ptr %i.l to i64
  %i.u = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i, 7
  %i.v = or disjoint i64 %i.u, %i.t
  store i64 %i.v, ptr %1, align 8
  %i.w = tail call ptr @_ZN4llvm17MachineBasicBlock5eraseENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEE(ptr noundef nonnull align 8 dereferenceable(360) %i.e, ptr nonnull %1) #16 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %cond
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm15Mips16InstrInfo13ExpandRetRA16ERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(448) %0, ptr noundef nonnull align 8 dereferenceable(360) %1, ptr %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 72
  %.sroa.01.0.copyload = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.d = zext i32 %3 to i64
  %i.e = sub nsw i64 0, %i.d
  %i.f = getelementptr inbounds [32 x i8], ptr %i.c, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !27
  %i.i = tail call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr %.sroa.01.0.copyload, i1 noundef zeroext false) #16 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  tail call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef %i.i) #16
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %2, align 8
  %i.k = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %2, ptr %i.m, align 8, !tbaa !84
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i = load i64, ptr %i.i, align 8
  %i.n = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i, 7
  %i.o = or disjoint i64 %i.n, %i.k
  store i64 %i.o, ptr %i.i, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.i, ptr %i.p, align 8, !tbaa !84
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i = load i64, ptr %2, align 8
  %i.q = ptrtoint ptr %i.i to i64
  %i.r = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i, 7
  %i.s = or disjoint i64 %i.r, %i.q
  store i64 %i.s, ptr %2, align 8
  ret void
}

declare ptr @_ZN4llvm17MachineBasicBlock5eraseENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEE(ptr noundef nonnull align 8 dereferenceable(360), ptr) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i32 481, 1118) i32 @_ZNK4llvm15Mips16InstrInfo20getOppositeBranchOpcEj(ptr nofree nonnull readnone align 8 captures(none) %0, i32 noundef %1) unnamed_addr #2 align 2 {
bb.a:
  switch i32 %1, label %bb.u [
    i32 1108, label %bb.v
    i32 1112, label %bb.b
    i32 1107, label %bb.c
    i32 1111, label %bb.d
    i32 481, label %bb.e
    i32 483, label %bb.f
    i32 484, label %bb.g
    i32 1116, label %bb.h
    i32 1117, label %bb.i
    i32 488, label %bb.j
    i32 492, label %bb.k
    i32 491, label %bb.l
    i32 1114, label %bb.m
    i32 1115, label %bb.n
    i32 482, label %bb.o
    i32 486, label %bb.p
    i32 485, label %bb.q
    i32 487, label %bb.r
    i32 489, label %bb.s
    i32 490, label %bb.t
end_hunk_0
