Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/PPCFastISel?download=true
inline.NumInlined: 4586
inline.NumDeleted: 1387
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN12_GLOBAL__N_111PPCFastISel22PPCMaterialize64BitIntElPKN4llvm15MCRegisterClassE:bb.a
.thread65:                                        ; preds = %bb.b
  %i.g = ashr i64 %1, 32                          ; 2 uses
  %i.h = trunc i64 %1 to i32
  %i.i = tail call fastcc i32 @_ZN12_GLOBAL__N_111PPCFastISel22PPCMaterialize32BitIntElPKN4llvm15MCRegisterClassE(ptr noundef nonnull align 8 dereferenceable(240) %0, i64 noundef %i.g, ptr noundef %2)
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = trunc nuw nsw i64 %i.d to i32
  %i.k = tail call fastcc i32 @_ZN12_GLOBAL__N_111PPCFastISel22PPCMaterialize32BitIntElPKN4llvm15MCRegisterClassE(ptr noundef nonnull align 8 dereferenceable(240) %0, i64 noundef %i.e, ptr noundef %2) ; 2 uses
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.j, label %bb.d

bb.d:                                             ; preds = %.thread65, %bb.c
  %i.l = phi i32 [ %i.i, %.thread65 ], [ %i.k, %bb.c ] ; 2 uses
  %.172 = phi i64 [ %i.g, %.thread65 ], [ %i.e, %bb.c ]
  %.13671 = phi i32 [ %i.h, %.thread65 ], [ 0, %bb.c ] ; 2 uses
  %.13870 = phi i32 [ 32, %.thread65 ], [ %i.j, %bb.c ] ; 2 uses
  %.not41 = icmp eq i64 %.172, 0
  br i1 %.not41, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = tail call i32 @_ZN4llvm8FastISel15createResultRegEPKNS_15MCRegisterClassE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef %2) #18 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !409, !nonnull !202, !align !203 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 680
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !415
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 688
  %.sroa.010.0.copyload = load ptr, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !439, !nonnull !202, !align !203
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !440
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -60544
  %i.y = tail call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %i.q, ptr %.sroa.010.0.copyload, ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %i.x, i32 %i.m) ; 2 uses
  %i.z = extractvalue { ptr, ptr } %i.y, 0        ; 3 uses
  %i.aa = extractvalue { ptr, ptr } %i.y, 1       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr null, ptr %i.ab, align 8, !tbaa !441, !alias.scope !926
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i32 %i.l, ptr %i.ac, align 4, !tbaa !397, !alias.scope !926
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false), !alias.scope !926
  store i32 0, ptr %9, align 8, !alias.scope !926
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.aa, ptr noundef nonnull align 8 dereferenceable(1065) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  %i.ae = zext nneg i32 %.13870 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  store i32 1, ptr %8, align 8, !alias.scope !929
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr null, ptr %i.af, align 8, !tbaa !441, !alias.scope !929
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 %i.ae, ptr %i.ag, align 8, !tbaa !397, !alias.scope !929
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.aa, ptr noundef nonnull align 8 dereferenceable(1065) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  %i.ah = sub nuw nsw i32 63, %.13870
  %i.ai = zext nneg i32 %i.ah to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  store i32 1, ptr %7, align 8, !alias.scope !932
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr null, ptr %i.aj, align 8, !tbaa !441, !alias.scope !932
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 %i.ai, ptr %i.ak, align 8, !tbaa !397, !alias.scope !932
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.aa, ptr noundef nonnull align 8 dereferenceable(1065) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sroa.058.0 = phi i32 [ %i.m, %bb.e ], [ %i.l, %bb.d ] ; 2 uses
  %i.al = lshr i32 %.13671, 16                    ; 2 uses
  %.not42 = icmp eq i32 %i.al, 0
  br i1 %.not42, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = call i32 @_ZN4llvm8FastISel15createResultRegEPKNS_15MCRegisterClassE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef %2) #18 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !409, !nonnull !202, !align !203 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 680
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !415
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 688
  %.sroa.05.0.copyload = load ptr, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !439, !nonnull !202, !align !203
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !440
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -52544
  %i.ay = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %i.aq, ptr %.sroa.05.0.copyload, ptr noundef nonnull align 8 dereferenceable(32) %i.as, ptr noundef nonnull align 8 dereferenceable(32) %i.ax, i32 %i.am) ; 2 uses
  %i.az = extractvalue { ptr, ptr } %i.ay, 0      ; 2 uses
  %i.ba = extractvalue { ptr, ptr } %i.ay, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr null, ptr %i.bb, align 8, !tbaa !441, !alias.scope !935
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %.sroa.058.0, ptr %i.bc, align 4, !tbaa !397, !alias.scope !935
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, i8 0, i64 16, i1 false), !alias.scope !935
  store i32 0, ptr %6, align 8, !alias.scope !935
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ba, ptr noundef nonnull align 8 dereferenceable(1065) %i.az, ptr noundef nonnull align 8 dereferenceable(32) %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %i.be = zext nneg i32 %i.al to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  store i32 1, ptr %5, align 8, !alias.scope !938
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr null, ptr %i.bf, align 8, !tbaa !441, !alias.scope !938
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.be, ptr %i.bg, align 8, !tbaa !397, !alias.scope !938
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ba, ptr noundef nonnull align 8 dereferenceable(1065) %i.az, ptr noundef nonnull align 8 dereferenceable(32) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.sroa.050.0 = phi i32 [ %i.am, %bb.g ], [ %.sroa.058.0, %bb.f ] ; 2 uses
  %i.bh = and i32 %.13671, 65535                  ; 2 uses
  %.not43 = icmp eq i32 %i.bh, 0
  br i1 %.not43, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bi = call i32 @_ZN4llvm8FastISel15createResultRegEPKNS_15MCRegisterClassE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef %2) #18 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !409, !nonnull !202, !align !203 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 680
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !415
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 688
  %.sroa.02.0.copyload = load ptr, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !439, !nonnull !202, !align !203
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !440
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 -52480
  %i.bu = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %i.bm, ptr %.sroa.02.0.copyload, ptr noundef nonnull align 8 dereferenceable(32) %i.bo, ptr noundef nonnull align 8 dereferenceable(32) %i.bt, i32 %i.bi) ; 2 uses
  %i.bv = extractvalue { ptr, ptr } %i.bu, 0      ; 2 uses
  %i.bw = extractvalue { ptr, ptr } %i.bu, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.bx, align 8, !tbaa !441, !alias.scope !941
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %.sroa.050.0, ptr %i.by, align 4, !tbaa !397, !alias.scope !941
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bz, i8 0, i64 16, i1 false), !alias.scope !941
  store i32 0, ptr %4, align 8, !alias.scope !941
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bw, ptr noundef nonnull align 8 dereferenceable(1065) %i.bv, ptr noundef nonnull align 8 dereferenceable(32) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.ca = zext nneg i32 %i.bh to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  store i32 1, ptr %3, align 8, !alias.scope !944
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.cb, align 8, !tbaa !441, !alias.scope !944
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.ca, ptr %i.cc, align 8, !tbaa !397, !alias.scope !944
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bw, ptr noundef nonnull align 8 dereferenceable(1065) %i.bv, ptr noundef nonnull align 8 dereferenceable(32) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %.thread, %bb.c
  %.sroa.033.1 = phi i32 [ %i.c, %.thread ], [ %i.k, %bb.c ], [ %i.bi, %bb.i ], [ %.sroa.050.0, %bb.h ]
  ret i32 %.sroa.033.1
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc i32 @_ZN12_GLOBAL__N_111PPCFastISel22PPCMaterialize32BitIntElPKN4llvm15MCRegisterClassE(ptr noundef nonnull align 8 dereferenceable(240) %0, i64 noundef %1, ptr noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %4 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %5 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %6 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %7 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %i.a = trunc i64 %1 to i32
  %i.b = lshr i32 %i.a, 16                        ; 2 uses
  %i.c = tail call i32 @_ZN4llvm8FastISel15createResultRegEPKNS_15MCRegisterClassE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef %2) #18 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.e = load i16, ptr %i.d, align 4, !tbaa !437
  %i.f = zext i16 %i.e to i32                     ; 2 uses
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25PPCMCRegisterClassStorageE, i64 92), align 4, !tbaa !860
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25PPCMCRegisterClassStorageE, i64 64), i64 %i.h
  %i.j = lshr i32 %i.f, 5
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !411
  %i.n = and i32 %i.f, 31
  %i.o = lshr i32 %i.m, %i.n
  %i.p = trunc i32 %i.o to i1                     ; 4 uses
  %i.q = add i64 %1, 32768
  %i.r = icmp ult i64 %i.q, 65536
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !409, !nonnull !202, !align !203 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 680
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !415
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 688
  %.sroa.010.0.copyload = load ptr, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !439, !nonnull !202, !align !203
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.neg38 = select i1 %i.p, i64 -1418, i64 -1419
  %8 = load ptr, ptr %i.aa, align 8, !tbaa !440
  %i.ab = getelementptr inbounds [32 x i8], ptr %8, i64 %.neg38
  %i.ac = tail call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %i.v, ptr %.sroa.010.0.copyload, ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %i.ab, i32 %i.c) ; 2 uses
  %i.ad = extractvalue { ptr, ptr } %i.ac, 0
  %i.ae = extractvalue { ptr, ptr } %i.ac, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  store i32 1, ptr %7, align 8, !alias.scope !947
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr null, ptr %i.af, align 8, !tbaa !441, !alias.scope !947
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 %1, ptr %i.ag, align 8, !tbaa !397, !alias.scope !947
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ae, ptr noundef nonnull align 8 dereferenceable(1065) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.ah = and i64 %1, 65535                       ; 2 uses
  %.not = icmp eq i64 %i.ah, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ai = tail call i32 @_ZN4llvm8FastISel15createResultRegEPKNS_15MCRegisterClassE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull %2) #18 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !409, !nonnull !202, !align !203 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 680
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !415
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 688
  %.sroa.06.0.copyload = load ptr, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !439, !nonnull !202, !align !203
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.neg = select i1 %i.p, i64 -1420, i64 -1421
  %9 = load ptr, ptr %i.ar, align 8, !tbaa !440
  %i.as = getelementptr inbounds [32 x i8], ptr %9, i64 %.neg
  %i.at = tail call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %i.am, ptr %.sroa.06.0.copyload, ptr noundef nonnull align 8 dereferenceable(32) %i.ao, ptr noundef nonnull align 8 dereferenceable(32) %i.as, i32 %i.ai) ; 2 uses
  %i.au = extractvalue { ptr, ptr } %i.at, 0
  %i.av = extractvalue { ptr, ptr } %i.at, 1
  %i.aw = zext nneg i32 %i.b to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  store i32 1, ptr %6, align 8, !alias.scope !950
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr null, ptr %i.ax, align 8, !tbaa !441, !alias.scope !950
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %i.aw, ptr %i.ay, align 8, !tbaa !397, !alias.scope !950
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.av, ptr noundef nonnull align 8 dereferenceable(1065) %i.au, ptr noundef nonnull align 8 dereferenceable(32) %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %i.az = load ptr, ptr %i.aj, align 8, !tbaa !409, !nonnull !202, !align !203 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 680
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !415
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 688
  %.sroa.04.0.copyload = load ptr, ptr %i.bc, align 8
  %i.bd = load ptr, ptr %i.ap, align 8, !tbaa !439, !nonnull !202, !align !203
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %.neg36 = select i1 %i.p, i64 -1639, i64 -1640
  %10 = load ptr, ptr %i.be, align 8, !tbaa !440
  %i.bf = getelementptr inbounds [32 x i8], ptr %10, i64 %.neg36
  %i.bg = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %i.bb, ptr %.sroa.04.0.copyload, ptr noundef nonnull align 8 dereferenceable(32) %i.ao, ptr noundef nonnull align 8 dereferenceable(32) %i.bf, i32 %i.c) ; 2 uses
  %i.bh = extractvalue { ptr, ptr } %i.bg, 0      ; 2 uses
  %i.bi = extractvalue { ptr, ptr } %i.bg, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr null, ptr %i.bj, align 8, !tbaa !441, !alias.scope !953
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %i.ai, ptr %i.bk, align 4, !tbaa !397, !alias.scope !953
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bl, i8 0, i64 16, i1 false), !alias.scope !953
  store i32 0, ptr %5, align 8, !alias.scope !953
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bi, ptr noundef nonnull align 8 dereferenceable(1065) %i.bh, ptr noundef nonnull align 8 dereferenceable(32) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  store i32 1, ptr %4, align 8, !alias.scope !956
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.bm, align 8, !tbaa !441, !alias.scope !956
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.ah, ptr %i.bn, align 8, !tbaa !397, !alias.scope !956
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bi, ptr noundef nonnull align 8 dereferenceable(1065) %i.bh, ptr noundef nonnull align 8 dereferenceable(32) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !409, !nonnull !202, !align !203 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 680
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !415
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 688
  %.sroa.01.0.copyload = load ptr, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !439, !nonnull !202, !align !203
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %.neg37 = select i1 %i.p, i64 -1420, i64 -1421
  %11 = load ptr, ptr %i.bw, align 8, !tbaa !440
  %i.bx = getelementptr inbounds [32 x i8], ptr %11, i64 %.neg37
  %i.by = tail call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %i.br, ptr %.sroa.01.0.copyload, ptr noundef nonnull align 8 dereferenceable(32) %i.bt, ptr noundef nonnull align 8 dereferenceable(32) %i.bx, i32 %i.c) ; 2 uses
  %i.bz = extractvalue { ptr, ptr } %i.by, 0
  %i.ca = extractvalue { ptr, ptr } %i.by, 1
  %i.cb = zext nneg i32 %i.b to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  store i32 1, ptr %3, align 8, !alias.scope !959
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.cc, align 8, !tbaa !441, !alias.scope !959
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.cb, ptr %i.cd, align 8, !tbaa !397, !alias.scope !959
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ca, ptr noundef nonnull align 8 dereferenceable(1065) %i.bz, ptr noundef nonnull align 8 dereferenceable(32) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  ret i32 %i.c
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #10

declare noundef ptr @_ZN4llvm15MachineFunction20getMachineMemOperandENS_18MachinePointerInfoENS_17MachineMemOperand5FlagsENS_12LocationSizeENS_5AlignERKNS_9AAMDNodesEPKNS_6MDNodeEhNS_14AtomicOrderingESC_(ptr noundef nonnull align 8 dereferenceable(1065), ptr noundef byval(%"struct.llvm::MachinePointerInfo") align 8, i16 noundef zeroext, i64, i8, ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #3

declare noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065), ptr noundef nonnull align 8 dereferenceable(32), ptr, i1 noundef zeroext) local_unnamed_addr #3

declare void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3

declare void @_ZN4llvm12MachineInstr13setPCSectionsERNS_15MachineFunctionEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(1065), ptr noundef) local_unnamed_addr #3

declare void @_ZN4llvm12MachineInstr15setMMRAMetadataERNS_15MachineFunctionEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(1065), ptr noundef) local_unnamed_addr #3

declare void @_ZN4llvm12MachineInstr21setDeactivationSymbolERNS_15MachineFunctionEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(1065), ptr noundef) local_unnamed_addr #3

declare void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(1065), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

declare void @_ZN4llvm12MachineInstr13addMemOperandERNS_15MachineFunctionEPNS_17MachineMemOperandE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(1065), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_111PPCFastISel11SelectIToFPEPKN4llvm11InstructionEb(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %4 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !376
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !380, !nonnull !202, !align !203
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !381, !nonnull !202, !align !203
  %i.g = tail call { i16, ptr } @_ZNK4llvm18TargetLoweringBase12getValueTypeERKNS_10DataLayoutEPNS_4TypeEb(ptr noundef nonnull align 8 dereferenceable(518435) %i.d, ptr noundef nonnull align 8 dereferenceable(912) %i.f, ptr noundef %i.b, i1 noundef zeroext true) ; 2 uses
  %i.h = extractvalue { i16, ptr } %i.g, 0        ; 6 uses
  %i.i = extractvalue { i16, ptr } %i.g, 1
  %.not.i.i.i = icmp ne i16 %i.h, 1
  %i.j = icmp ne ptr %i.i, null
  %.not4.i.not11.i = select i1 %.not.i.i.i, i1 true, i1 %i.j
  %i.k = icmp ne i16 %i.h, 0
  %or.cond.i = and i1 %i.k, %.not4.i.not11.i
  br i1 %or.cond.i, label %_ZN12_GLOBAL__N_111PPCFastISel11isTypeLegalEPN4llvm4TypeERNS1_3MVTE.exit, label %.critedge47

_ZN12_GLOBAL__N_111PPCFastISel11isTypeLegalEPN4llvm4TypeERNS1_3MVTE.exit: ; preds = %bb.a
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !380, !nonnull !202, !align !203 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 112
  %i.n = zext i16 %i.h to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !382
  %i.q = icmp ne ptr %i.p, null
  %i.r = and i16 %i.h, -2
  %switch = icmp eq i16 %i.r, 14
  %or.cond = and i1 %switch, %i.q
  br i1 %or.cond, label %.critedge, label %.critedge47

.critedge:                                        ; preds = %_ZN12_GLOBAL__N_111PPCFastISel11isTypeLegalEPN4llvm4TypeERNS1_3MVTE.exit
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.t = load i32, ptr %i.s, align 4              ; 2 uses
  %i.u = and i32 %i.t, 1073741824
  %.not.i.i = icmp eq i32 %i.u, 0
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.critedge
  %i.v = getelementptr inbounds i8, ptr %1, i64 -8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !408
  br label %_ZNK4llvm4User10getOperandEj.exit

bb.c:                                             ; preds = %.critedge
  %i.x = and i32 %i.t, 268435455
  %i.y = zext nneg i32 %i.x to i64
  %i.z = sub nsw i64 0, %i.y
  %i.aa = getelementptr inbounds [32 x i8], ptr %1, i64 %i.z
  br label %_ZNK4llvm4User10getOperandEj.exit

_ZNK4llvm4User10getOperandEj.exit:                ; preds = %bb.b, %bb.c
  %i.ab = phi ptr [ %i.w, %bb.b ], [ %i.aa, %bb.c ]
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !398 ; 2 uses
  %i.ad = load ptr, ptr %i.e, align 8, !tbaa !381, !nonnull !202, !align !203
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !376
  %i.ag = tail call { i16, ptr } @_ZNK4llvm18TargetLoweringBase12getValueTypeERKNS_10DataLayoutEPNS_4TypeEb(ptr noundef nonnull align 8 dereferenceable(518435) %i.l, ptr noundef nonnull align 8 dereferenceable(912) %i.ad, ptr noundef %i.af, i1 noundef zeroext true)
  %i.ah = extractvalue { i16, ptr } %i.ag, 0      ; 3 uses
  %.off87 = add i16 %i.ah, -5                     ; 2 uses
  %switch88 = icmp ult i16 %.off87, 4
  br i1 %switch88, label %.critedge2, label %.critedge47

.critedge2:                                       ; preds = %_ZNK4llvm4User10getOperandEj.exit
  %i.ai = tail call i32 @_ZN4llvm8FastISel14getRegForValueEPKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull %i.ac) #18 ; 4 uses
  %.not = icmp eq i32 %i.ai, 0
  br i1 %.not, label %.critedge47, label %bb.d

bb.d:                                             ; preds = %.critedge2
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !372 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 520
  %i.am = load i8, ptr %i.al, align 8, !tbaa !402, !range !349, !noundef !202
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ao = icmp eq i16 %i.h, 14
  %.neg92 = select i1 %2, i64 -949, i64 -951
  %.neg93 = select i1 %2, i64 -921, i64 -924
  %.044.neg = select i1 %i.ao, i64 %.neg92, i64 %.neg93
  %i.ap = tail call i32 @_ZN4llvm8FastISel15createResultRegEPKNS_15MCRegisterClassE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN4llvm25PPCMCRegisterClassStorageE, i64 1280)) #18 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !409, !nonnull !202, !align !203 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 680
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !415
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 688
  %.sroa.021.0.copyload = load ptr, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !439, !nonnull !202, !align !203
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !440
  %i.ba = getelementptr inbounds [32 x i8], ptr %i.az, i64 %.044.neg
  %i.bb = tail call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %i.at, ptr %.sroa.021.0.copyload, ptr noundef nonnull align 8 dereferenceable(32) %i.av, ptr noundef nonnull align 8 dereferenceable(32) %i.ba, i32 %i.ap) ; 2 uses
  %i.bc = extractvalue { ptr, ptr } %i.bb, 0
  %i.bd = extractvalue { ptr, ptr } %i.bb, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.be, align 8, !tbaa !441, !alias.scope !962
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %i.ai, ptr %i.bf, align 4, !tbaa !397, !alias.scope !962
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, i8 0, i64 16, i1 false), !alias.scope !962
  store i32 0, ptr %4, align 8, !alias.scope !962
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bd, ptr noundef nonnull align 8 dereferenceable(1065) %i.bc, ptr noundef nonnull align 8 dereferenceable(32) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %.critedge47.sink.split

bb.f:                                             ; preds = %bb.d
  br i1 %2, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ak, i64 482
  %i.bi = load i8, ptr %i.bh, align 2, !tbaa !965, !range !349, !noundef !202
  %i.bj = trunc nuw i8 %i.bi to i1
  br i1 %i.bj, label %bb.h, label %.critedge47

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bk = icmp eq i16 %i.h, 14                    ; 2 uses
  br i1 %i.bk, label %bb.i, label %.critedge4

bb.i:                                             ; preds = %bb.h
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ak, i64 482
  %i.bm = load i8, ptr %i.bl, align 2, !tbaa !965, !range !349, !noundef !202
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %.critedge4, label %.critedge47

.critedge4:                                       ; preds = %bb.h, %bb.i
  %switch90 = icmp samesign ult i16 %.off87, 2
  br i1 %switch90, label %.critedge6, label %bb.j

.critedge6:                                       ; preds = %.critedge4
  %i.bo = tail call i32 @_ZN4llvm8FastISel15createResultRegEPKNS_15MCRegisterClassE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN4llvm25PPCMCRegisterClassStorageE, i64 896)) #18 ; 2 uses
  %i.bp = xor i1 %2, true
  %i.bq = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_111PPCFastISel13PPCEmitIntExtEN4llvm3MVTENS1_8RegisterES2_S3_b(ptr noundef nonnull align 8 dereferenceable(240) %0, i16 %i.ah, i32 %i.ai, i16 8, i32 %i.bo, i1 noundef zeroext %i.bp)
  br i1 %i.bq, label %bb.j, label %.critedge47

bb.j:                                             ; preds = %.critedge4, %.critedge6
  %.sroa.059.0 = phi i32 [ %i.ai, %.critedge4 ], [ %i.bo, %.critedge6 ]
  %.sroa.067.0 = phi i16 [ %i.ah, %.critedge4 ], [ 8, %.critedge6 ]
  %i.br = tail call fastcc i32 @_ZN12_GLOBAL__N_111PPCFastISel14PPCMoveToFPRegEN4llvm3MVTENS1_8RegisterEb(ptr noundef nonnull align 8 dereferenceable(240) %0, i16 %.sroa.067.0, i32 %.sroa.059.0, i1 noundef zeroext %2) ; 2 uses
  %.not45.not = icmp eq i32 %i.br, 0
  br i1 %.not45.not, label %.critedge47, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bs = tail call i32 @_ZN4llvm8FastISel15createResultRegEPKNS_15MCRegisterClassE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN4llvm25PPCMCRegisterClassStorageE, i64 1152)) #18 ; 2 uses
  %.neg = select i1 %2, i64 -1203, i64 -1206
  %.neg91 = select i1 %2, i64 -1202, i64 -1205
  %.043.neg = select i1 %i.bk, i64 %.neg, i64 %.neg91
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !409, !nonnull !202, !align !203 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 680
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !415
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 688
  %.sroa.09.0.copyload = load ptr, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !439, !nonnull !202, !align !203
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !440
end_hunk_0
