Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/PPCInstrInfo?download=true
inline.NumInlined: 4654
inline.NumDeleted: 1537
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZNK4llvm12PPCInstrInfo19expandAMOCSNEPseudoERNS_12MachineInstrE:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.e = load i32, ptr %i.d, align 4, !tbaa !396
  %i.f = icmp eq i32 %i.e, 384                    ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !342  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !207  ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 36
  %i.l = load i32, ptr %i.k, align 4, !tbaa !207  ; 4 uses
  %.off = add i32 %i.l, -539
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.n = tail call i32 @_ZNK4llvm14MCRegisterInfo19getMatchingSuperRegENS_10MCRegisterEjPKNS_15MCRegisterClassE(ptr noundef nonnull align 8 dereferenceable(240) %i.m, i32 %i.j, i32 noundef 1, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN4llvm25PPCMCRegisterClassStorageE, i64 896)) #26
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.047.0 = phi i32 [ %i.n, %bb.c ], [ %i.j, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  store ptr %.sroa.018.0.copyload, ptr %9, align 8, !tbaa !435
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, i8 0, i64 24, i1 false)
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !48
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -52256
  %i.s = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %i.b, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i32 %.sroa.047.0) ; 2 uses
  %i.t = extractvalue { ptr, ptr } %i.s, 0        ; 2 uses
  %i.u = extractvalue { ptr, ptr } %i.s, 1        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr null, ptr %i.v, align 8, !tbaa !437, !alias.scope !1368
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 %i.l, ptr %i.w, align 4, !tbaa !207, !alias.scope !1368
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false), !alias.scope !1368
  store i32 0, ptr %8, align 8, !alias.scope !1368
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.u, ptr noundef nonnull align 8 dereferenceable(1065) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr null, ptr %i.y, align 8, !tbaa !437, !alias.scope !1369
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %i.l, ptr %i.z, align 4, !tbaa !207, !alias.scope !1369
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false), !alias.scope !1369
  store i32 0, ptr %7, align 8, !alias.scope !1369
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.u, ptr noundef nonnull align 8 dereferenceable(1065) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.sroa.011.0 = phi i32 [ %.sroa.047.0, %bb.d ], [ %i.l, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  store ptr %.sroa.018.0.copyload, ptr %10, align 8, !tbaa !435
  %i.ab = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.neg = select i1 %i.f, i64 -1360, i64 -1439
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i8 0, i64 24, i1 false)
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !48
  %i.ae = getelementptr inbounds [32 x i8], ptr %i.ad, i64 %.neg
  %i.af = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %i.b, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %i.ae, i32 539) ; 2 uses
  %i.ag = extractvalue { ptr, ptr } %i.af, 0      ; 3 uses
  %i.ah = extractvalue { ptr, ptr } %i.af, 1      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr null, ptr %i.ai, align 8, !tbaa !437, !alias.scope !1370
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %.sroa.011.0, ptr %i.aj, align 4, !tbaa !207, !alias.scope !1370
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i8 0, i64 16, i1 false), !alias.scope !1370
  store i32 0, ptr %6, align 8, !alias.scope !1370
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ah, ptr noundef nonnull align 8 dereferenceable(1065) %i.ag, ptr noundef nonnull align 8 dereferenceable(32) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr null, ptr %i.al, align 8, !tbaa !437, !alias.scope !1371
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 540, ptr %i.am, align 4, !tbaa !207, !alias.scope !1371
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, i8 0, i64 16, i1 false), !alias.scope !1371
  store i32 33554432, ptr %5, align 8, !alias.scope !1371
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ah, ptr noundef nonnull align 8 dereferenceable(1065) %i.ag, ptr noundef nonnull align 8 dereferenceable(32) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.ao, align 8, !tbaa !437, !alias.scope !1372
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 541, ptr %i.ap, align 4, !tbaa !207, !alias.scope !1372
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i8 0, i64 16, i1 false), !alias.scope !1372
  store i32 33554432, ptr %4, align 8, !alias.scope !1372
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ah, ptr noundef nonnull align 8 dereferenceable(1065) %i.ag, ptr noundef nonnull align 8 dereferenceable(32) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  %i.ar = select i1 %i.f, i32 539, i32 259        ; 3 uses
  %.not = icmp eq i32 %i.j, %i.ar
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  store ptr %.sroa.018.0.copyload, ptr %11, align 8, !tbaa !435
  %i.as = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.neg58 = select i1 %i.f, i64 -1633, i64 -1632
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, i8 0, i64 24, i1 false)
  %i.at = load ptr, ptr %i.ac, align 8, !tbaa !48
  %i.au = getelementptr inbounds [32 x i8], ptr %i.at, i64 %.neg58
  %i.av = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %i.b, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %i.au, i32 %i.j) ; 2 uses
  %i.aw = extractvalue { ptr, ptr } %i.av, 0      ; 2 uses
  %i.ax = extractvalue { ptr, ptr } %i.av, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.ay, align 8, !tbaa !437, !alias.scope !1373
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.ar, ptr %i.az, align 4, !tbaa !207, !alias.scope !1373
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i8 0, i64 16, i1 false), !alias.scope !1373
  store i32 0, ptr %3, align 8, !alias.scope !1373
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ax, ptr noundef nonnull align 8 dereferenceable(1065) %i.aw, ptr noundef nonnull align 8 dereferenceable(32) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr null, ptr %i.bb, align 8, !tbaa !437, !alias.scope !1374
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.ar, ptr %i.bc, align 4, !tbaa !207, !alias.scope !1374
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, i8 0, i64 16, i1 false), !alias.scope !1374
  store i32 0, ptr %2, align 8, !alias.scope !1374
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ax, ptr noundef nonnull align 8 dereferenceable(1065) %i.aw, ptr noundef nonnull align 8 dereferenceable(32) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.be = call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #26 ; 0 uses
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm12PPCInstrInfo26replaceInstrOperandWithImmERNS_12MachineInstrEjl(ptr noundef nonnull align 8 dereferenceable(1080) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i32 noundef %2, i64 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !342
  %i.c = zext i32 %2 to i64
  %i.d = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.c ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !207
  tail call void @_ZN4llvm14MachineOperand17ChangeToImmediateElj(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef %3, i32 noundef 0) #26
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.h = tail call noundef i32 @_ZNK4llvm12MachineInstr25findRegisterUseOperandIdxENS_8RegisterEPKNS_18TargetRegisterInfoEb(ptr noundef nonnull align 8 dereferenceable(80) %1, i32 %i.f, ptr noundef nonnull %i.g, i1 noundef zeroext false) #26 ; 3 uses
  %i.i = icmp sgt i32 %i.h, -1
  br i1 %i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !342
  %i.k = zext nneg i32 %i.h to i64
  %i.l = getelementptr inbounds nuw [32 x i8], ptr %i.j, i64 %i.k
  %i.m = load i32, ptr %i.l, align 8
  %i.n = and i32 %i.m, 33554432
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4llvm12MachineInstr13removeOperandEj(ptr noundef nonnull align 8 dereferenceable(80) %1, i32 noundef %i.h) #26
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  ret void
}

declare void @_ZN4llvm14MachineOperand17ChangeToImmediateElj(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i32 noundef) local_unnamed_addr #5

declare noundef i32 @_ZNK4llvm12MachineInstr25findRegisterUseOperandIdxENS_8RegisterEPKNS_18TargetRegisterInfoEb(ptr noundef nonnull align 8 dereferenceable(80), i32, ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm12PPCInstrInfo18replaceInstrWithLIERNS_12MachineInstrERKNS_17LoadImmediateInfoE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1080) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %4 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %5 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %i.a = load i32, ptr %2, align 4                ; 2 uses
  %i.b = lshr i32 %i.a, 17
  %.lobit = and i32 %i.b, 1                       ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load i24, ptr %i.c, align 8
  %i.e = zext i24 %i.d to i32
  %.027.a = add nsw i32 %i.e, -1                  ; 2 uses
  %i.f = icmp sgt i32 %.027.a, %.lobit
  br i1 %i.f, label %.lr.ph, label %._crit_edge

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load i32, ptr %2, align 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.g = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.a, %bb.a ] ; 2 uses
  %i.h = and i32 %i.g, 131072
  %.not = icmp eq i32 %i.h, 0
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %6 = and i32 %i.g, 65536
  %.not18 = icmp eq i32 %6, 0                     ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !48   ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.028 = phi i32 [ %.0, %.lr.ph ], [ %.027.a, %bb.a ] ; 2 uses
  tail call void @_ZN4llvm12MachineInstr13removeOperandEj(ptr noundef nonnull align 8 dereferenceable(80) %1, i32 noundef %.028) #26
  %.0 = add nsw i32 %.028, -1                     ; 2 uses
  %i.k = icmp samesign ugt i32 %.0, %.lobit
  br i1 %i.k, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !1375

bb.b:                                             ; preds = %._crit_edge
  %.neg = select i1 %.not18, i64 -510, i64 -507
  %i.l = getelementptr inbounds [32 x i8], ptr %i.j, i64 %.neg
  tail call void @_ZN4llvm12MachineInstr7setDescERKNS_11MCInstrDescE(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.l) #26
  %i.m = load ptr, ptr %7, align 8, !tbaa !343
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !386  ; 2 uses
  %i.p = load i32, ptr %2, align 4
  %i.q = and i32 %i.p, 65535
  %i.r = zext nneg i32 %i.q to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store i32 1, ptr %5, align 8, !alias.scope !1382
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr null, ptr %i.s, align 8, !tbaa !437, !alias.scope !1382
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.r, ptr %i.t, align 8, !tbaa !207, !alias.scope !1382
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(1065) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.u, align 8, !tbaa !437, !alias.scope !1383
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 20, ptr %i.v, align 4, !tbaa !207, !alias.scope !1383
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 0, i64 16, i1 false), !alias.scope !1383
  store i32 50331648, ptr %4, align 8, !alias.scope !1383
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(1065) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %.neg26 = select i1 %.not18, i64 -1418, i64 -1419
  %i.x = getelementptr inbounds [32 x i8], ptr %i.j, i64 %.neg26
  tail call void @_ZN4llvm12MachineInstr7setDescERKNS_11MCInstrDescE(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.x) #26
  %i.y = load ptr, ptr %7, align 8, !tbaa !343
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !386
  %i.ab = load i32, ptr %2, align 4
  %i.ac = and i32 %i.ab, 65535
  %i.ad = zext nneg i32 %i.ac to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store i32 1, ptr %3, align 8, !alias.scope !1384
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.ae, align 8, !tbaa !437, !alias.scope !1384
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.ad, ptr %i.af, align 8, !tbaa !207, !alias.scope !1384
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(1065) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm12PPCInstrInfo20materializeImmPostRAERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_8DebugLocENS_8RegisterEl(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1080) %0, ptr noundef nonnull align 8 dereferenceable(360) %1, ptr %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, i32 %4, i64 noundef %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %7 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %8 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %9 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %10 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %11 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %12 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %13 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %14 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %15 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %16 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %17 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %18 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %19 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %20 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %21 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %22 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %23 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %24 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %25 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %26 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %27 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !395, !nonnull !65, !align !206
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 538
  %i.d = load i8, ptr %i.c, align 2, !tbaa !204, !range !64, !noundef !65
  %i.e = trunc nuw i8 %i.d to i1                  ; 3 uses
  %i.f = add i64 %5, 32768
  %i.g = icmp ult i64 %i.f, 65536
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #26
  %.sroa.027.0.copyload = load ptr, ptr %3, align 8, !tbaa !435
  store ptr %.sroa.027.0.copyload, ptr %20, align 8, !tbaa !435
  %i.h = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !48
  %.neg102 = select i1 %i.e, i64 -1419, i64 -1418
  %i.k = getelementptr inbounds [32 x i8], ptr %i.j, i64 %.neg102
  %i.l = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i32 %4) ; 2 uses
  %i.m = extractvalue { ptr, ptr } %i.l, 0
  %i.n = extractvalue { ptr, ptr } %i.l, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  store i32 1, ptr %19, align 8, !alias.scope !1413
  %i.o = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr null, ptr %i.o, align 8, !tbaa !437, !alias.scope !1413
  %i.p = getelementptr inbounds nuw i8, ptr %19, i64 16
  store i64 %5, ptr %i.p, align 8, !tbaa !207, !alias.scope !1413
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.n, ptr noundef nonnull align 8 dereferenceable(1065) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %19) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.q = add i64 %5, 2147483648
  %i.r = icmp ult i64 %i.q, 4294967296
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  br i1 %i.r, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #26
  %.sroa.024.0.copyload = load ptr, ptr %3, align 8, !tbaa !435
  store ptr %.sroa.024.0.copyload, ptr %21, align 8, !tbaa !435
  %i.t = getelementptr inbounds nuw i8, ptr %21, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i8 0, i64 24, i1 false)
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !48
  %.neg = select i1 %i.e, i64 -1421, i64 -1420
  %i.v = getelementptr inbounds [32 x i8], ptr %i.u, i64 %.neg
  %i.w = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i32 %4) ; 2 uses
  %i.x = extractvalue { ptr, ptr } %i.w, 0
  %i.y = extractvalue { ptr, ptr } %i.w, 1
  %i.z = ashr i64 %5, 16
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  store i32 1, ptr %18, align 8, !alias.scope !1414
  %i.aa = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr null, ptr %i.aa, align 8, !tbaa !437, !alias.scope !1414
  %i.ab = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i64 %i.z, ptr %i.ab, align 8, !tbaa !207, !alias.scope !1414
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.y, ptr noundef nonnull align 8 dereferenceable(1065) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %18) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  %i.ac = and i64 %5, 65535                       ; 2 uses
  %.not76 = icmp eq i64 %i.ac, 0
  br i1 %.not76, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #26
  %.sroa.021.0.copyload = load ptr, ptr %3, align 8, !tbaa !435
  store ptr %.sroa.021.0.copyload, ptr %22, align 8, !tbaa !435
  %i.ad = getelementptr inbounds nuw i8, ptr %22, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i8 0, i64 24, i1 false)
  %i.ae = load ptr, ptr %i.s, align 8, !tbaa !48
  %.neg101 = select i1 %i.e, i64 -1640, i64 -1639
  %i.af = getelementptr inbounds [32 x i8], ptr %i.ae, i64 %.neg101
  %i.ag = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(32) %i.af, i32 %4) ; 2 uses
  %i.ah = extractvalue { ptr, ptr } %i.ag, 0      ; 2 uses
  %i.ai = extractvalue { ptr, ptr } %i.ag, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  %i.aj = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr null, ptr %i.aj, align 8, !tbaa !437, !alias.scope !1415
  %i.ak = getelementptr inbounds nuw i8, ptr %17, i64 4
  store i32 %4, ptr %i.ak, align 4, !tbaa !207, !alias.scope !1415
  %i.al = getelementptr inbounds nuw i8, ptr %17, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, i8 0, i64 16, i1 false), !alias.scope !1415
  store i32 67108864, ptr %17, align 8, !alias.scope !1415
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ai, ptr noundef nonnull align 8 dereferenceable(1065) %i.ah, ptr noundef nonnull align 8 dereferenceable(32) %17) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  store i32 1, ptr %16, align 8, !alias.scope !1416
  %i.am = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr null, ptr %i.am, align 8, !tbaa !437, !alias.scope !1416
  %i.an = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i64 %i.ac, ptr %i.an, align 8, !tbaa !207, !alias.scope !1416
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ai, ptr noundef nonnull align 8 dereferenceable(1065) %i.ah, ptr noundef nonnull align 8 dereferenceable(32) %16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  br label %bb.j

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #26
  %.sroa.017.0.copyload = load ptr, ptr %3, align 8, !tbaa !435
  store ptr %.sroa.017.0.copyload, ptr %23, align 8, !tbaa !435
  %i.ao = getelementptr inbounds nuw i8, ptr %23, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i8 0, i64 24, i1 false)
  %i.ap = load ptr, ptr %i.s, align 8, !tbaa !48
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 -45472
  %i.ar = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull align 8 dereferenceable(32) %i.aq, i32 %4) ; 2 uses
  %i.as = extractvalue { ptr, ptr } %i.ar, 0
  %i.at = extractvalue { ptr, ptr } %i.ar, 1
  %i.au = ashr i64 %5, 48
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  store i32 1, ptr %15, align 8, !alias.scope !1417
  %i.av = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr null, ptr %i.av, align 8, !tbaa !437, !alias.scope !1417
  %i.aw = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i64 %i.au, ptr %i.aw, align 8, !tbaa !207, !alias.scope !1417
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.at, ptr noundef nonnull align 8 dereferenceable(1065) %i.as, ptr noundef nonnull align 8 dereferenceable(32) %15) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #26
  %i.ax = lshr i64 %5, 32
  %i.ay = and i64 %i.ax, 65535                    ; 2 uses
  %.not = icmp eq i64 %i.ay, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #26
  %.sroa.014.0.copyload = load ptr, ptr %3, align 8, !tbaa !435
  store ptr %.sroa.014.0.copyload, ptr %24, align 8, !tbaa !435
  %i.az = getelementptr inbounds nuw i8, ptr %24, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.az, i8 0, i64 24, i1 false)
  %i.ba = load ptr, ptr %i.s, align 8, !tbaa !48
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 -52480
  %i.bc = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(32) %i.bb, i32 %4) ; 2 uses
  %i.bd = extractvalue { ptr, ptr } %i.bc, 0      ; 2 uses
  %i.be = extractvalue { ptr, ptr } %i.bc, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  %i.bf = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr null, ptr %i.bf, align 8, !tbaa !437, !alias.scope !1418
  %i.bg = getelementptr inbounds nuw i8, ptr %14, i64 4
  store i32 %4, ptr %i.bg, align 4, !tbaa !207, !alias.scope !1418
  %i.bh = getelementptr inbounds nuw i8, ptr %14, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i8 0, i64 16, i1 false), !alias.scope !1418
  store i32 67108864, ptr %14, align 8, !alias.scope !1418
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.be, ptr noundef nonnull align 8 dereferenceable(1065) %i.bd, ptr noundef nonnull align 8 dereferenceable(32) %14) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  store i32 1, ptr %13, align 8, !alias.scope !1419
  %i.bi = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr null, ptr %i.bi, align 8, !tbaa !437, !alias.scope !1419
  %i.bj = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i64 %i.ay, ptr %i.bj, align 8, !tbaa !207, !alias.scope !1419
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.be, ptr noundef nonnull align 8 dereferenceable(1065) %i.bd, ptr noundef nonnull align 8 dereferenceable(32) %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #26
  br label %bb.h

end_hunk_0
