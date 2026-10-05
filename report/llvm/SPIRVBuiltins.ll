Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SPIRVBuiltins?download=true
inline.NumInlined: 6933
inline.NumDeleted: 2549
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN4llvmL26generateImageSizeQueryInstEPKNS_5SPIRV12IncomingCallERNS_16MachineIRBuilderEPNS_19SPIRVGlobalRegistryE:bb.a
  store ptr null, ptr %i.df, align 8, !tbaa !246, !alias.scope !1262
  %i.dg = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 %i.de, ptr %i.dg, align 8, !tbaa !35, !alias.scope !1262
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.cu, ptr noundef nonnull align 8 dereferenceable(1065) %i.ct, ptr noundef nonnull align 8 dereferenceable(32) %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  %i.dh = load ptr, ptr %16, align 8, !tbaa !244  ; 2 uses
  %.not132 = icmp eq ptr %i.dh, null
  br i1 %.not132, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.sroa.09.0.copyload = load i32, ptr %i.ac, align 8, !tbaa !42
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !127
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 32
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !298
  call void @_ZN4llvm13updateRegTypeENS_8RegisterEPNS_4TypeENS_13SPIRVTypeInstEPNS_19SPIRVGlobalRegistryERNS_16MachineIRBuilderERNS_19MachineRegisterInfoE(i32 %.sroa.09.0.copyload, ptr noundef null, ptr nonnull %i.dh, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(520) %i.dl) #22
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  br label %.loopexit

bb.p:                                             ; preds = %bb.i
  %i.dm = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder18buildInstrNoInsertEj(ptr noundef nonnull align 8 dereferenceable(96) %1, i32 noundef 845) #22 ; 2 uses
  %i.dn = extractvalue { ptr, ptr } %i.dm, 0
  %i.do = extractvalue { ptr, ptr } %i.dm, 1
  %i.dp = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder11insertInstrENS_19MachineInstrBuilderE(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr %i.dn, ptr %i.do) #22 ; 2 uses
  %i.dq = extractvalue { ptr, ptr } %i.dp, 0      ; 5 uses
  %i.dr = extractvalue { ptr, ptr } %i.dp, 1      ; 5 uses
  %.sroa.07.0.copyload = load i32, ptr %i.ac, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.ds = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr null, ptr %i.ds, align 8, !tbaa !246, !alias.scope !1263
  %i.dt = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %.sroa.07.0.copyload, ptr %i.dt, align 4, !tbaa !35, !alias.scope !1263
  %i.du = getelementptr inbounds nuw i8, ptr %7, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.du, i8 0, i64 16, i1 false), !alias.scope !1263
  store i32 16777216, ptr %7, align 8, !alias.scope !1263
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.dr, ptr noundef nonnull align 8 dereferenceable(1065) %i.dq, ptr noundef nonnull align 8 dereferenceable(32) %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %.sroa.05.0.copyload = load ptr, ptr %i.k, align 8, !tbaa !242
  %i.dv = call i32 @_ZNK4llvm19SPIRVGlobalRegistry14getSPIRVTypeIDENS_13SPIRVTypeInstE(ptr noundef nonnull align 8 dereferenceable(1416) %2, ptr %.sroa.05.0.copyload) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.dw = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr null, ptr %i.dw, align 8, !tbaa !246, !alias.scope !1264
  %i.dx = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %i.dv, ptr %i.dx, align 4, !tbaa !35, !alias.scope !1264
  %i.dy = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dy, i8 0, i64 16, i1 false), !alias.scope !1264
  store i32 0, ptr %6, align 8, !alias.scope !1264
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.dr, ptr noundef nonnull align 8 dereferenceable(1065) %i.dq, ptr noundef nonnull align 8 dereferenceable(32) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.dz = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr null, ptr %i.dz, align 8, !tbaa !246, !alias.scope !1265
  %i.ea = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %.sroa.038.0, ptr %i.ea, align 4, !tbaa !35, !alias.scope !1265
  %i.eb = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eb, i8 0, i64 16, i1 false), !alias.scope !1265
  store i32 0, ptr %5, align 8, !alias.scope !1265
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.dr, ptr noundef nonnull align 8 dereferenceable(1065) %i.dq, ptr noundef nonnull align 8 dereferenceable(32) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.ec = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.ec, align 8, !tbaa !246, !alias.scope !1266
  %i.ed = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %.sroa.038.0, ptr %i.ed, align 4, !tbaa !35, !alias.scope !1266
  %i.ee = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ee, i8 0, i64 16, i1 false), !alias.scope !1266
  store i32 0, ptr %4, align 8, !alias.scope !1266
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.dr, ptr noundef nonnull align 8 dereferenceable(1065) %i.dq, ptr noundef nonnull align 8 dereferenceable(32) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %.not134 = icmp eq i32 %i.l, 0
  br i1 %.not134, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.p
  %i.ef = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.eg = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph, %bb.q
  %.0133 = phi i32 [ 0, %.lr.ph ], [ %i.ek, %bb.q ] ; 3 uses
  %i.eh = icmp ult i32 %.0133, %i.ab
  %i.ei = select i1 %i.eh, i32 %.0133, i32 -1
  %i.ej = zext i32 %i.ei to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store i32 1, ptr %3, align 8, !alias.scope !1267
  store ptr null, ptr %i.ef, align 8, !tbaa !246, !alias.scope !1267
  store i64 %i.ej, ptr %i.eg, align 8, !tbaa !35, !alias.scope !1267
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.dr, ptr noundef nonnull align 8 dereferenceable(1065) %i.dq, ptr noundef nonnull align 8 dereferenceable(32) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.ek = add nuw i32 %.0133, 1                   ; 2 uses
  %exitcond.not = icmp eq i32 %i.ek, %i.l
  br i1 %exitcond.not, label %.loopexit, label %bb.q, !llvm.loop !1252

.loopexit:                                        ; preds = %bb.q, %bb.p, %bb.o, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN4llvmL26generateImageMiscQueryInstEPKNS_5SPIRV12IncomingCallERNS_16MachineIRBuilderEPNS_19SPIRVGlobalRegistryE(ptr nofree noundef readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef %2) unnamed_addr #2 {
bb.a:
  %3 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %4 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %5 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !103  ; 2 uses
  %.sroa.0.0.copyload.i = load i32, ptr %i.b, align 4, !tbaa !42
  %i.c = zext i32 %.sroa.0.0.copyload.i to i64
  %i.d = getelementptr inbounds nuw i8, ptr @_ZN4llvm5SPIRVL31DemangledBuiltinsStringsStorageE, i64 %i.c ; 2 uses
  %i.e = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #22
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !109
  %i.h = tail call noundef ptr @_ZN4llvm5SPIRV19lookupNativeBuiltinENS_9StringRefEj(ptr nonnull %i.d, i64 %i.e, i32 noundef %i.g)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i32, ptr %i.i, align 4, !tbaa !286
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !243, !nonnull !57, !align !241
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !92
  %.sroa.05.0.copyload = load i32, ptr %i.m, align 4, !tbaa !42 ; 2 uses
  %i.n = tail call ptr @_ZNK4llvm19SPIRVGlobalRegistry19getSPIRVTypeForVRegENS_8RegisterEPKNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(1416) %2, i32 %.sroa.05.0.copyload, ptr noundef null) #22 ; 0 uses
  %i.o = tail call { ptr, ptr } @_ZN4llvm16MachineIRBuilder18buildInstrNoInsertEj(ptr noundef nonnull align 8 dereferenceable(96) %1, i32 noundef %i.j) #22 ; 2 uses
  %i.p = extractvalue { ptr, ptr } %i.o, 0
  %i.q = extractvalue { ptr, ptr } %i.o, 1
  %i.r = tail call { ptr, ptr } @_ZN4llvm16MachineIRBuilder11insertInstrENS_19MachineInstrBuilderE(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr %i.p, ptr %i.q) #22 ; 2 uses
  %i.s = extractvalue { ptr, ptr } %i.r, 0        ; 3 uses
  %i.t = extractvalue { ptr, ptr } %i.r, 1        ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.03.0.copyload = load i32, ptr %i.u, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr null, ptr %i.v, align 8, !tbaa !246, !alias.scope !1274
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %.sroa.03.0.copyload, ptr %i.w, align 4, !tbaa !35, !alias.scope !1274
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false), !alias.scope !1274
  store i32 16777216, ptr %5, align 8, !alias.scope !1274
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.t, ptr noundef nonnull align 8 dereferenceable(1065) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.01.0.copyload = load ptr, ptr %i.y, align 8, !tbaa !242
  %i.z = call i32 @_ZNK4llvm19SPIRVGlobalRegistry14getSPIRVTypeIDENS_13SPIRVTypeInstE(ptr noundef nonnull align 8 dereferenceable(1416) %2, ptr %.sroa.01.0.copyload) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.aa, align 8, !tbaa !246, !alias.scope !1275
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %i.z, ptr %i.ab, align 4, !tbaa !35, !alias.scope !1275
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i8 0, i64 16, i1 false), !alias.scope !1275
  store i32 0, ptr %4, align 8, !alias.scope !1275
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.t, ptr noundef nonnull align 8 dereferenceable(1065) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.ad, align 8, !tbaa !246, !alias.scope !1276
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %.sroa.05.0.copyload, ptr %i.ae, align 4, !tbaa !35, !alias.scope !1276
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false), !alias.scope !1276
  store i32 0, ptr %3, align 8, !alias.scope !1276
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.t, ptr noundef nonnull align 8 dereferenceable(1065) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN4llvmL21generateReadImageInstENS_9StringRefEPKNS_5SPIRV12IncomingCallERNS_16MachineIRBuilderEPNS_19SPIRVGlobalRegistryE(ptr %0, i64 %1, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(96) %3, ptr noundef %4) unnamed_addr #2 {
bb.a:
  %5 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %6 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %7 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %8 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %9 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %10 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %11 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %12 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %13 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %14 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %15 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %16 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %17 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %18 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %19 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %20 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %21 = alloca %"class.llvm::MachineOperand", align 8 ; 5 uses
  %22 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %23 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %24 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %25 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %26 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %27 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %28 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %29 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %30 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %31 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %32 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %33 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %34 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %35 = alloca %"class.llvm::StringRef", align 8  ; 4 uses
  %36 = alloca %"class.llvm::Register", align 4   ; 7 uses
  %37 = alloca %"class.llvm::APFloat", align 8    ; 6 uses
  %38 = alloca %"class.llvm::SPIRVTypeInst", align 8 ; 2 uses
  store ptr %0, ptr %35, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %35, i64 8
  store i64 %1, ptr %i.a, align 8
  %i.b = tail call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEPKcmm(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull @.str.43, i64 noundef 0, i64 noundef 8) #22
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.sroa.068.0.copyload = load ptr, ptr %i.d, align 8, !tbaa !242
  %i.e = tail call i32 @_ZNK4llvm19SPIRVGlobalRegistry14getSPIRVTypeIDENS_13SPIRVTypeInstE(ptr noundef nonnull align 8 dereferenceable(1416) %4, ptr %.sroa.068.0.copyload) #22
  tail call fastcc void @_ZN4llvmL18buildOpFromWrapperERNS_16MachineIRBuilderEjPKNS_5SPIRV12IncomingCallENS_8RegisterENS_8ArrayRefIjEE(ptr noundef nonnull align 8 dereferenceable(96) %3, i32 noundef 628, ptr noundef nonnull %2, i32 %i.e, ptr null, i64 0)
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 7 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !243, !nonnull !57, !align !241
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !92
  %.sroa.064.0.copyload = load i32, ptr %i.h, align 4, !tbaa !42 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !287  ; 5 uses
  %i.k = call noundef i64 @_ZNK4llvm9StringRef16find_insensitiveES0_m(ptr noundef nonnull align 8 dereferenceable(16) %35, ptr nonnull @.str.58, i64 11, i64 noundef 0) #22
  %.not184 = icmp eq i64 %i.k, -1
  %i.l = call noundef i64 @_ZNK4llvm9StringRef16find_insensitiveES0_m(ptr noundef nonnull align 8 dereferenceable(16) %35, ptr nonnull @.str.59, i64 4, i64 noundef 0) #22
  br i1 %.not184, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #22
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !243, !nonnull !57, !align !241
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !92
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !42   ; 2 uses
  store i32 %i.p, ptr %36, align 4, !tbaa !42
  %i.q = call noundef zeroext i1 @_ZNK4llvm19SPIRVGlobalRegistry14isScalarOfTypeENS_8RegisterEj(ptr noundef nonnull align 8 dereferenceable(1416) %4, i32 %i.p, i32 noundef 821) #22
  br i1 %i.q, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = call noundef ptr @_ZN4llvm24getDefInstrMaybeConstantERNS_8RegisterEPKNS_19MachineRegisterInfoE(ptr noundef nonnull align 4 dereferenceable(4) %36, ptr noundef %i.j) #22
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !289
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load i32, ptr %i.u, align 8
  %i.w = and i32 %i.v, 255
  %i.x = icmp eq i32 %i.w, 2
  br i1 %i.x, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %.sroa.054.0.copyload = load i32, ptr %36, align 4, !tbaa !42
  %i.y = call noundef i64 @_ZN4llvm12getIConstValENS_8RegisterEPKNS_19MachineRegisterInfoE(i32 %.sroa.054.0.copyload, ptr noundef %i.j) #22 ; 2 uses
  %i.z = trunc i64 %i.y to i32                    ; 3 uses
  %i.aa = and i32 %i.z, 14                        ; 2 uses
  %i.ab = icmp samesign ult i32 %i.aa, 9
  %switch.maskindex = trunc nuw nsw i32 %i.aa to i16
  %switch.shifted = lshr i16 341, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond = select i1 %i.ab, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZN4llvm18report_fatal_errorEPKcb(ptr noundef nonnull @.str.60, i1 noundef zeroext true) #25
  unreachable

switch.lookup:                                    ; preds = %bb.f
  %i.ac = and i64 %i.y, 14
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN4llvmL23generateSampleImageInstENS_9StringRefEPKNS_5SPIRV12IncomingCallERNS_16MachineIRBuilderEPNS_19SPIRVGlobalRegistryE, i64 %i.ac
  %switch.load = load i8, ptr %switch.gep, align 2
  %switch.ext = zext i8 %switch.load to i32
  %i.ad = and i32 %i.z, 1
  %i.ae = lshr i32 %i.z, 5
  %.lobit.i = and i32 %i.ae, 1
  %i.af = call i32 @_ZN4llvm19SPIRVGlobalRegistry20buildConstantSamplerENS_8RegisterEjjjRNS_16MachineIRBuilderE(ptr noundef nonnull align 8 dereferenceable(1416) %4, i32 0, i32 noundef %switch.ext, i32 noundef %i.ad, i32 noundef %.lobit.i, ptr noundef nonnull align 8 dereferenceable(96) %3) #22
  store i32 %i.af, ptr %36, align 4, !tbaa !42
  br label %bb.h

bb.h:                                             ; preds = %switch.lookup, %bb.e, %bb.d
  %i.ag = call ptr @_ZNK4llvm19SPIRVGlobalRegistry19getSPIRVTypeForVRegENS_8RegisterEPKNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(1416) %4, i32 %.sroa.064.0.copyload, ptr noundef null) #22
  %i.ah = call ptr @_ZN4llvm19SPIRVGlobalRegistry29getOrCreateOpTypeSampledImageENS_13SPIRVTypeInstERNS_16MachineIRBuilderE(ptr noundef nonnull align 8 dereferenceable(1416) %4, ptr %i.ag, ptr noundef nonnull align 8 dereferenceable(96) %3) #22
  %i.ai = call i32 @_ZN4llvm19MachineRegisterInfo21createVirtualRegisterEPKNS_15MCRegisterClassENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520) %i.j, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN4llvm27SPIRVMCRegisterClassStorageE, i64 256), ptr nonnull @.str.37, i64 0) #22 ; 3 uses
  %i.aj = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder18buildInstrNoInsertEj(ptr noundef nonnull align 8 dereferenceable(96) %3, i32 noundef 734) #22 ; 2 uses
  %i.ak = extractvalue { ptr, ptr } %i.aj, 0
  %i.al = extractvalue { ptr, ptr } %i.aj, 1
  %i.am = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder11insertInstrENS_19MachineInstrBuilderE(ptr noundef nonnull align 8 dereferenceable(96) %3, ptr %i.ak, ptr %i.al) #22 ; 2 uses
  %i.an = extractvalue { ptr, ptr } %i.am, 0      ; 4 uses
  %i.ao = extractvalue { ptr, ptr } %i.am, 1      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #22
  %i.ap = getelementptr inbounds nuw i8, ptr %34, i64 8
  store ptr null, ptr %i.ap, align 8, !tbaa !246, !alias.scope !1339
  %i.aq = getelementptr inbounds nuw i8, ptr %34, i64 4
  store i32 %i.ai, ptr %i.aq, align 4, !tbaa !35, !alias.scope !1339
  %i.ar = getelementptr inbounds nuw i8, ptr %34, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i8 0, i64 16, i1 false), !alias.scope !1339
  store i32 16777216, ptr %34, align 8, !alias.scope !1339
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ao, ptr noundef nonnull align 8 dereferenceable(1065) %i.an, ptr noundef nonnull align 8 dereferenceable(32) %34) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #22
  %i.as = call i32 @_ZNK4llvm19SPIRVGlobalRegistry14getSPIRVTypeIDENS_13SPIRVTypeInstE(ptr noundef nonnull align 8 dereferenceable(1416) %4, ptr %i.ah) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #22
  %i.at = getelementptr inbounds nuw i8, ptr %33, i64 8
  store ptr null, ptr %i.at, align 8, !tbaa !246, !alias.scope !1340
  %i.au = getelementptr inbounds nuw i8, ptr %33, i64 4
  store i32 %i.as, ptr %i.au, align 4, !tbaa !35, !alias.scope !1340
  %i.av = getelementptr inbounds nuw i8, ptr %33, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.av, i8 0, i64 16, i1 false), !alias.scope !1340
  store i32 0, ptr %33, align 8, !alias.scope !1340
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ao, ptr noundef nonnull align 8 dereferenceable(1065) %i.an, ptr noundef nonnull align 8 dereferenceable(32) %33) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #22
  %i.aw = getelementptr inbounds nuw i8, ptr %32, i64 8
  store ptr null, ptr %i.aw, align 8, !tbaa !246, !alias.scope !1341
  %i.ax = getelementptr inbounds nuw i8, ptr %32, i64 4
  store i32 %.sroa.064.0.copyload, ptr %i.ax, align 4, !tbaa !35, !alias.scope !1341
  %i.ay = getelementptr inbounds nuw i8, ptr %32, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i8 0, i64 16, i1 false), !alias.scope !1341
  store i32 0, ptr %32, align 8, !alias.scope !1341
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ao, ptr noundef nonnull align 8 dereferenceable(1065) %i.an, ptr noundef nonnull align 8 dereferenceable(32) %32) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #22
  %.sroa.041.0.copyload = load i32, ptr %36, align 4, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #22
  %i.az = getelementptr inbounds nuw i8, ptr %31, i64 8
  store ptr null, ptr %i.az, align 8, !tbaa !246, !alias.scope !1342
  %i.ba = getelementptr inbounds nuw i8, ptr %31, i64 4
  store i32 %.sroa.041.0.copyload, ptr %i.ba, align 4, !tbaa !35, !alias.scope !1342
  %i.bb = getelementptr inbounds nuw i8, ptr %31, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, i8 0, i64 16, i1 false), !alias.scope !1342
  store i32 0, ptr %31, align 8, !alias.scope !1342
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ao, ptr noundef nonnull align 8 dereferenceable(1065) %i.an, ptr noundef nonnull align 8 dereferenceable(32) %31) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #22
  call void @_ZN4llvm6detail9IEEEFloatC1ERKNS_12fltSemanticsENS_11APFloatBase16uninitializedTagE(ptr noundef nonnull align 8 dereferenceable(24) %37, ptr noundef nonnull align 4 dereferenceable(29) @_ZN4llvm11APFloatBase13semIEEEsingleE, i32 noundef 0) #22
  %39 = load ptr, ptr %37, align 8, !tbaa !35, !alias.scope !1343
  %.not.i.i.a = icmp eq ptr %39, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  br i1 %.not.i.i.a, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZN4llvm6detail9IEEEFloat8makeZeroEb(ptr noundef nonnull align 8 dereferenceable(24) %37, i1 noundef zeroext false) #22
  br label %_ZN4llvm7APFloat7getZeroERKNS_12fltSemanticsEb.exit

bb.j:                                             ; preds = %bb.h
  call void @_ZN4llvm6detail13DoubleAPFloat8makeZeroEb(ptr noundef nonnull align 8 dereferenceable(24) %37, i1 noundef zeroext false) #22
  br label %_ZN4llvm7APFloat7getZeroERKNS_12fltSemanticsEb.exit

_ZN4llvm7APFloat7getZeroERKNS_12fltSemanticsEb.exit: ; preds = %bb.i, %bb.j
  call void @_ZN4llvm13SPIRVTypeInstC1EPKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(8) %38, ptr noundef null) #22
  %i.bc = load ptr, ptr %38, align 8
  %i.bd = call i32 @_ZN4llvm19SPIRVGlobalRegistry15buildConstantFPENS_7APFloatERNS_16MachineIRBuilderENS_13SPIRVTypeInstE(ptr noundef nonnull align 8 dereferenceable(1416) %4, ptr nofree noundef nonnull align 8 dereferenceable(24) %37, ptr noundef nonnull align 8 dereferenceable(96) %3, ptr %i.bc) #22 ; 2 uses
  call void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %37) #22
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !244 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 52
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !288
  %.not = icmp eq i32 %i.bh, 824
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm7APFloat7getZeroERKNS_12fltSemanticsEb.exit
  %i.bi = call ptr @_ZN4llvm19SPIRVGlobalRegistry26getOrCreateSPIRVVectorTypeENS_13SPIRVTypeInstEjRNS_16MachineIRBuilderEb(ptr noundef nonnull align 8 dereferenceable(1416) %4, ptr nonnull %i.bf, i32 noundef 4, ptr noundef nonnull align 8 dereferenceable(96) %3, i1 noundef zeroext true) #22 ; 4 uses
  %i.bj = call i64 @_ZNK4llvm19SPIRVGlobalRegistry10getRegTypeENS_13SPIRVTypeInstE(ptr noundef nonnull align 8 dereferenceable(1416) %4, ptr %i.bi) #22
  %i.bk = call i32 @_ZN4llvm19MachineRegisterInfo28createGenericVirtualRegisterENS_3LLTENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520) %i.j, i64 %i.bj, ptr nonnull @.str.37, i64 0) #22 ; 4 uses
  %i.bl = call noundef ptr @_ZNK4llvm19SPIRVGlobalRegistry11getRegClassENS_13SPIRVTypeInstE(ptr noundef nonnull align 8 dereferenceable(1416) %4, ptr %i.bi) #22
  call void @_ZN4llvm19MachineRegisterInfo11setRegClassENS_8RegisterEPKNS_15MCRegisterClassE(ptr noundef nonnull align 8 dereferenceable(520) %i.j, i32 %i.bk, ptr noundef %i.bl) #22
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !127
  call void @_ZN4llvm19SPIRVGlobalRegistry21assignSPIRVTypeToVRegENS_13SPIRVTypeInstENS_8RegisterERKNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(1416) %4, ptr %i.bi, i32 %i.bk, ptr noundef nonnull align 8 dereferenceable(1065) %i.bn) #22
  %i.bo = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder18buildInstrNoInsertEj(ptr noundef nonnull align 8 dereferenceable(96) %3, i32 noundef 631) #22 ; 2 uses
  %i.bp = extractvalue { ptr, ptr } %i.bo, 0
  %i.bq = extractvalue { ptr, ptr } %i.bo, 1
  %i.br = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder11insertInstrENS_19MachineInstrBuilderE(ptr noundef nonnull align 8 dereferenceable(96) %3, ptr %i.bp, ptr %i.bq) #22 ; 2 uses
  %i.bs = extractvalue { ptr, ptr } %i.br, 0      ; 6 uses
  %i.bt = extractvalue { ptr, ptr } %i.br, 1      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #22
  %i.bu = getelementptr inbounds nuw i8, ptr %30, i64 8
  store ptr null, ptr %i.bu, align 8, !tbaa !246, !alias.scope !1344
  %i.bv = getelementptr inbounds nuw i8, ptr %30, i64 4
  store i32 %i.bk, ptr %i.bv, align 4, !tbaa !35, !alias.scope !1344
  %i.bw = getelementptr inbounds nuw i8, ptr %30, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bw, i8 0, i64 16, i1 false), !alias.scope !1344
  store i32 16777216, ptr %30, align 8, !alias.scope !1344
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bt, ptr noundef nonnull align 8 dereferenceable(1065) %i.bs, ptr noundef nonnull align 8 dereferenceable(32) %30) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #22
  %i.bx = call i32 @_ZNK4llvm19SPIRVGlobalRegistry14getSPIRVTypeIDENS_13SPIRVTypeInstE(ptr noundef nonnull align 8 dereferenceable(1416) %4, ptr %i.bi) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #22
  %i.by = getelementptr inbounds nuw i8, ptr %29, i64 8
  store ptr null, ptr %i.by, align 8, !tbaa !246, !alias.scope !1345
  %i.bz = getelementptr inbounds nuw i8, ptr %29, i64 4
  store i32 %i.bx, ptr %i.bz, align 4, !tbaa !35, !alias.scope !1345
  %i.ca = getelementptr inbounds nuw i8, ptr %29, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ca, i8 0, i64 16, i1 false), !alias.scope !1345
  store i32 0, ptr %29, align 8, !alias.scope !1345
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bt, ptr noundef nonnull align 8 dereferenceable(1065) %i.bs, ptr noundef nonnull align 8 dereferenceable(32) %29) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #22
  %i.cb = getelementptr inbounds nuw i8, ptr %28, i64 8
  store ptr null, ptr %i.cb, align 8, !tbaa !246, !alias.scope !1346
  %i.cc = getelementptr inbounds nuw i8, ptr %28, i64 4
  store i32 %i.ai, ptr %i.cc, align 4, !tbaa !35, !alias.scope !1346
  %i.cd = getelementptr inbounds nuw i8, ptr %28, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cd, i8 0, i64 16, i1 false), !alias.scope !1346
  store i32 0, ptr %28, align 8, !alias.scope !1346
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bt, ptr noundef nonnull align 8 dereferenceable(1065) %i.bs, ptr noundef nonnull align 8 dereferenceable(32) %28) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #22
  %i.ce = load ptr, ptr %i.f, align 8, !tbaa !243, !nonnull !57, !align !241
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !92
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %.sroa.022.0.copyload = load i32, ptr %i.cg, align 4, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #22
  %i.ch = getelementptr inbounds nuw i8, ptr %27, i64 8
  store ptr null, ptr %i.ch, align 8, !tbaa !246, !alias.scope !1347
  %i.ci = getelementptr inbounds nuw i8, ptr %27, i64 4
  store i32 %.sroa.022.0.copyload, ptr %i.ci, align 4, !tbaa !35, !alias.scope !1347
  %i.cj = getelementptr inbounds nuw i8, ptr %27, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cj, i8 0, i64 16, i1 false), !alias.scope !1347
  store i32 0, ptr %27, align 8, !alias.scope !1347
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bt, ptr noundef nonnull align 8 dereferenceable(1065) %i.bs, ptr noundef nonnull align 8 dereferenceable(32) %27) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #22
  store i32 1, ptr %26, align 8, !alias.scope !1348
  %i.ck = getelementptr inbounds nuw i8, ptr %26, i64 8
  store ptr null, ptr %i.ck, align 8, !tbaa !246, !alias.scope !1348
  %i.cl = getelementptr inbounds nuw i8, ptr %26, i64 16
  store i64 2, ptr %i.cl, align 8, !tbaa !35, !alias.scope !1348
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bt, ptr noundef nonnull align 8 dereferenceable(1065) %i.bs, ptr noundef nonnull align 8 dereferenceable(32) %26) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #22
  %i.cm = getelementptr inbounds nuw i8, ptr %25, i64 8
  store ptr null, ptr %i.cm, align 8, !tbaa !246, !alias.scope !1349
  %i.cn = getelementptr inbounds nuw i8, ptr %25, i64 4
  store i32 %i.bd, ptr %i.cn, align 4, !tbaa !35, !alias.scope !1349
  %i.co = getelementptr inbounds nuw i8, ptr %25, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.co, i8 0, i64 16, i1 false), !alias.scope !1349
  store i32 0, ptr %25, align 8, !alias.scope !1349
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bt, ptr noundef nonnull align 8 dereferenceable(1065) %i.bs, ptr noundef nonnull align 8 dereferenceable(32) %25) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #22
  %i.cp = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder18buildInstrNoInsertEj(ptr noundef nonnull align 8 dereferenceable(96) %3, i32 noundef 430) #22 ; 2 uses
  %i.cq = extractvalue { ptr, ptr } %i.cp, 0
  %i.cr = extractvalue { ptr, ptr } %i.cp, 1
  %i.cs = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder11insertInstrENS_19MachineInstrBuilderE(ptr noundef nonnull align 8 dereferenceable(96) %3, ptr %i.cq, ptr %i.cr) #22 ; 2 uses
  %i.ct = extractvalue { ptr, ptr } %i.cs, 0      ; 4 uses
  %i.cu = extractvalue { ptr, ptr } %i.cs, 1      ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.sroa.020.0.copyload = load i32, ptr %i.cv, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #22
  %i.cw = getelementptr inbounds nuw i8, ptr %24, i64 8
  store ptr null, ptr %i.cw, align 8, !tbaa !246, !alias.scope !1350
  %i.cx = getelementptr inbounds nuw i8, ptr %24, i64 4
  store i32 %.sroa.020.0.copyload, ptr %i.cx, align 4, !tbaa !35, !alias.scope !1350
  %i.cy = getelementptr inbounds nuw i8, ptr %24, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cy, i8 0, i64 16, i1 false), !alias.scope !1350
  store i32 16777216, ptr %24, align 8, !alias.scope !1350
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.cu, ptr noundef nonnull align 8 dereferenceable(1065) %i.ct, ptr noundef nonnull align 8 dereferenceable(32) %24) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #22
  %.sroa.018.0.copyload = load ptr, ptr %i.be, align 8, !tbaa !242
  %i.cz = call i32 @_ZNK4llvm19SPIRVGlobalRegistry14getSPIRVTypeIDENS_13SPIRVTypeInstE(ptr noundef nonnull align 8 dereferenceable(1416) %4, ptr %.sroa.018.0.copyload) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #22
  %i.da = getelementptr inbounds nuw i8, ptr %23, i64 8
  store ptr null, ptr %i.da, align 8, !tbaa !246, !alias.scope !1351
  %i.db = getelementptr inbounds nuw i8, ptr %23, i64 4
  store i32 %i.cz, ptr %i.db, align 4, !tbaa !35, !alias.scope !1351
  %i.dc = getelementptr inbounds nuw i8, ptr %23, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dc, i8 0, i64 16, i1 false), !alias.scope !1351
  store i32 0, ptr %23, align 8, !alias.scope !1351
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.cu, ptr noundef nonnull align 8 dereferenceable(1065) %i.ct, ptr noundef nonnull align 8 dereferenceable(32) %23) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #22
  %i.dd = getelementptr inbounds nuw i8, ptr %22, i64 8
  store ptr null, ptr %i.dd, align 8, !tbaa !246, !alias.scope !1352
  %i.de = getelementptr inbounds nuw i8, ptr %22, i64 4
  store i32 %i.bk, ptr %i.de, align 4, !tbaa !35, !alias.scope !1352
  %i.df = getelementptr inbounds nuw i8, ptr %22, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.df, i8 0, i64 16, i1 false), !alias.scope !1352
  store i32 0, ptr %22, align 8, !alias.scope !1352
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.cu, ptr noundef nonnull align 8 dereferenceable(1065) %i.ct, ptr noundef nonnull align 8 dereferenceable(32) %22) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22
  store i32 1, ptr %21, align 8, !alias.scope !1353
  %i.dg = getelementptr inbounds nuw i8, ptr %21, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dg, i8 0, i64 16, i1 false)
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.cu, ptr noundef nonnull align 8 dereferenceable(1065) %i.ct, ptr noundef nonnull align 8 dereferenceable(32) %21) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  br label %bb.m

bb.l:                                             ; preds = %_ZN4llvm7APFloat7getZeroERKNS_12fltSemanticsEb.exit
  %i.dh = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder18buildInstrNoInsertEj(ptr noundef nonnull align 8 dereferenceable(96) %3, i32 noundef 631) #22 ; 2 uses
  %i.di = extractvalue { ptr, ptr } %i.dh, 0
  %i.dj = extractvalue { ptr, ptr } %i.dh, 1
  %i.dk = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder11insertInstrENS_19MachineInstrBuilderE(ptr noundef nonnull align 8 dereferenceable(96) %3, ptr %i.di, ptr %i.dj) #22 ; 2 uses
  %i.dl = extractvalue { ptr, ptr } %i.dk, 0      ; 6 uses
  %i.dm = extractvalue { ptr, ptr } %i.dk, 1      ; 6 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.sroa.016.0.copyload = load i32, ptr %i.dn, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22
  %i.do = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr null, ptr %i.do, align 8, !tbaa !246, !alias.scope !1354
  %i.dp = getelementptr inbounds nuw i8, ptr %20, i64 4
  store i32 %.sroa.016.0.copyload, ptr %i.dp, align 4, !tbaa !35, !alias.scope !1354
  %i.dq = getelementptr inbounds nuw i8, ptr %20, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dq, i8 0, i64 16, i1 false), !alias.scope !1354
  store i32 16777216, ptr %20, align 8, !alias.scope !1354
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.dm, ptr noundef nonnull align 8 dereferenceable(1065) %i.dl, ptr noundef nonnull align 8 dereferenceable(32) %20) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  %.sroa.014.0.copyload = load ptr, ptr %i.be, align 8, !tbaa !242
  %i.dr = call i32 @_ZNK4llvm19SPIRVGlobalRegistry14getSPIRVTypeIDENS_13SPIRVTypeInstE(ptr noundef nonnull align 8 dereferenceable(1416) %4, ptr %.sroa.014.0.copyload) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  %i.ds = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr null, ptr %i.ds, align 8, !tbaa !246, !alias.scope !1355
  %i.dt = getelementptr inbounds nuw i8, ptr %19, i64 4
  store i32 %i.dr, ptr %i.dt, align 4, !tbaa !35, !alias.scope !1355
  %i.du = getelementptr inbounds nuw i8, ptr %19, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.du, i8 0, i64 16, i1 false), !alias.scope !1355
  store i32 0, ptr %19, align 8, !alias.scope !1355
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.dm, ptr noundef nonnull align 8 dereferenceable(1065) %i.dl, ptr noundef nonnull align 8 dereferenceable(32) %19) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  %i.dv = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr null, ptr %i.dv, align 8, !tbaa !246, !alias.scope !1356
  %i.dw = getelementptr inbounds nuw i8, ptr %18, i64 4
  store i32 %i.ai, ptr %i.dw, align 4, !tbaa !35, !alias.scope !1356
  %i.dx = getelementptr inbounds nuw i8, ptr %18, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dx, i8 0, i64 16, i1 false), !alias.scope !1356
  store i32 0, ptr %18, align 8, !alias.scope !1356
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.dm, ptr noundef nonnull align 8 dereferenceable(1065) %i.dl, ptr noundef nonnull align 8 dereferenceable(32) %18) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  %i.dy = load ptr, ptr %i.f, align 8, !tbaa !243, !nonnull !57, !align !241
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !92
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %.sroa.012.0.copyload = load i32, ptr %i.ea, align 4, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  %i.eb = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr null, ptr %i.eb, align 8, !tbaa !246, !alias.scope !1357
  %i.ec = getelementptr inbounds nuw i8, ptr %17, i64 4
  store i32 %.sroa.012.0.copyload, ptr %i.ec, align 4, !tbaa !35, !alias.scope !1357
  %i.ed = getelementptr inbounds nuw i8, ptr %17, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ed, i8 0, i64 16, i1 false), !alias.scope !1357
  store i32 0, ptr %17, align 8, !alias.scope !1357
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.dm, ptr noundef nonnull align 8 dereferenceable(1065) %i.dl, ptr noundef nonnull align 8 dereferenceable(32) %17) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  store i32 1, ptr %16, align 8, !alias.scope !1358
  %i.ee = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr null, ptr %i.ee, align 8, !tbaa !246, !alias.scope !1358
end_hunk_0
begin_hunk_1_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_:bb.a
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ENS4_12__sv_wrapperERKS3_.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.l = load i8, ptr %i.b, align 1, !tbaa !35
  store i8 %i.l, ptr %i.k, align 1, !tbaa !35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ENS4_12__sv_wrapperERKS3_.exit

bb.f:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.b, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ENS4_12__sv_wrapperERKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ENS4_12__sv_wrapperERKS3_.exit: ; preds = %._crit_edge.i.i.i, %bb.e, %bb.f
  %i.m = load i64, ptr %i.a, align 8, !tbaa !44   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.m, ptr %i.n, align 8, !tbaa !41
  %i.o = load ptr, ptr %0, align 8, !tbaa !45
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret void
}

declare noundef zeroext i1 @_ZNK4llvm14SPIRVSubtarget17isAtLeastSPIRVVerENS_12VersionTupleE(ptr noundef nonnull align 8 dereferenceable(519560), i64, i64) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !41   ; 3 uses
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #22
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8, !tbaa !45
  %bcmp = tail call i32 @bcmp(ptr %i.f, ptr nonnull %1, i64 %i.b)
  %i.g = icmp eq i32 %bcmp, 0
  br label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit:       ; preds = %bb.c, %bb.b, %bb.a
  %i.h = phi i1 [ false, %bb.a ], [ %i.g, %bb.c ], [ true, %bb.b ]
  ret i1 %i.h
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #10

declare ptr @_ZN4llvm19SPIRVGlobalRegistry14getPointeeTypeENS_13SPIRVTypeInstE(ptr noundef nonnull align 8 dereferenceable(1416), ptr) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN4llvmL13buildSRetInstEjNS_8RegisterES0_S0_NS_13SPIRVTypeInstERNS_16MachineIRBuilderEPNS_19SPIRVGlobalRegistryE(i32 noundef %0, i32 %1, i32 %2, i32 %3, ptr %4, ptr noundef nonnull align 8 dereferenceable(96) %5, ptr noundef %6) unnamed_addr #2 {
bb.a:
  %7 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %8 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %9 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %10 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %11 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %12 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !287  ; 6 uses
  %i.c = tail call i32 @_ZN4llvm19MachineRegisterInfo21createVirtualRegisterEPKNS_15MCRegisterClassENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520) %i.b, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN4llvm27SPIRVMCRegisterClassStorageE, i64 256), ptr nonnull @.str.37, i64 0) #22 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.e = and i32 %2, 2147483647                   ; 2 uses
  %i.f = zext nneg i32 %i.e to i64                ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !92
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.f
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.h, align 8 ; 2 uses
  %i.i = and i64 %.sroa.0.0.copyload.i.i.i.i, 4
  %i.j = icmp ne i64 %i.i, 0
  %i.k = and i64 %.sroa.0.0.copyload.i.i.i.i, -5  ; 2 uses
  %.not47 = icmp eq i64 %i.k, 0
  %.not = or i1 %i.j, %.not47
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = inttoptr i64 %i.k to ptr
  tail call void @_ZN4llvm19MachineRegisterInfo11setRegClassENS_8RegisterEPKNS_15MCRegisterClassE(ptr noundef nonnull align 8 dereferenceable(520) %i.b, i32 %i.c, ptr noundef nonnull %i.l) #22
  %i.m = icmp slt i32 %2, 0
  br i1 %i.m, label %bb.c, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 472
  %i.o = load i32, ptr %i.n, align 8, !tbaa !93
  %i.p = icmp ugt i32 %i.o, %i.e
  br i1 %i.p, label %bb.d, label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 464
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !92
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.f
  %i.t = load i64, ptr %i.s, align 8, !tbaa !35
  br label %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit

_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.04.0.i = phi i64 [ %i.t, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ]
  tail call void @_ZN4llvm19MachineRegisterInfo7setTypeENS_8RegisterENS_3LLTE(ptr noundef nonnull align 8 dereferenceable(520) %i.b, i32 %i.c, i64 %.sroa.04.0.i) #22
  br label %bb.e

bb.e:                                             ; preds = %_ZNK4llvm19MachineRegisterInfo7getTypeENS_8RegisterE.exit, %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !127
  tail call void @_ZN4llvm19SPIRVGlobalRegistry21assignSPIRVTypeToVRegENS_13SPIRVTypeInstENS_8RegisterERKNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(1416) %6, ptr %4, i32 %i.c, ptr noundef nonnull align 8 dereferenceable(1065) %i.v) #22
  %i.w = tail call { ptr, ptr } @_ZN4llvm16MachineIRBuilder18buildInstrNoInsertEj(ptr noundef nonnull align 8 dereferenceable(96) %5, i32 noundef %0) #22 ; 2 uses
  %i.x = extractvalue { ptr, ptr } %i.w, 0
  %i.y = extractvalue { ptr, ptr } %i.w, 1
  %i.z = tail call { ptr, ptr } @_ZN4llvm16MachineIRBuilder11insertInstrENS_19MachineInstrBuilderE(ptr noundef nonnull align 8 dereferenceable(96) %5, ptr %i.x, ptr %i.y) #22 ; 2 uses
  %i.aa = extractvalue { ptr, ptr } %i.z, 0       ; 4 uses
  %i.ab = extractvalue { ptr, ptr } %i.z, 1       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  %i.ac = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr null, ptr %i.ac, align 8, !tbaa !246, !alias.scope !1959
  %i.ad = getelementptr inbounds nuw i8, ptr %12, i64 4
  store i32 %i.c, ptr %i.ad, align 4, !tbaa !35, !alias.scope !1959
  %i.ae = getelementptr inbounds nuw i8, ptr %12, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i8 0, i64 16, i1 false), !alias.scope !1959
  store i32 16777216, ptr %12, align 8, !alias.scope !1959
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ab, ptr noundef nonnull align 8 dereferenceable(1065) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %12) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  %i.af = call i32 @_ZNK4llvm19SPIRVGlobalRegistry14getSPIRVTypeIDENS_13SPIRVTypeInstE(ptr noundef nonnull align 8 dereferenceable(1416) %6, ptr %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  %i.ag = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr null, ptr %i.ag, align 8, !tbaa !246, !alias.scope !1960
  %i.ah = getelementptr inbounds nuw i8, ptr %11, i64 4
  store i32 %i.af, ptr %i.ah, align 4, !tbaa !35, !alias.scope !1960
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i8 0, i64 16, i1 false), !alias.scope !1960
  store i32 0, ptr %11, align 8, !alias.scope !1960
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ab, ptr noundef nonnull align 8 dereferenceable(1065) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %11) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr null, ptr %i.aj, align 8, !tbaa !246, !alias.scope !1961
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 4
  store i32 %2, ptr %i.ak, align 4, !tbaa !35, !alias.scope !1961
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, i8 0, i64 16, i1 false), !alias.scope !1961
  store i32 0, ptr %10, align 8, !alias.scope !1961
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ab, ptr noundef nonnull align 8 dereferenceable(1065) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr null, ptr %i.am, align 8, !tbaa !246, !alias.scope !1962
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i32 %3, ptr %i.an, align 4, !tbaa !35, !alias.scope !1962
  %i.ao = getelementptr inbounds nuw i8, ptr %9, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i8 0, i64 16, i1 false), !alias.scope !1962
  store i32 0, ptr %9, align 8, !alias.scope !1962
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ab, ptr noundef nonnull align 8 dereferenceable(1065) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %i.ap = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder18buildInstrNoInsertEj(ptr noundef nonnull align 8 dereferenceable(96) %5, i32 noundef 769) #22 ; 2 uses
  %i.aq = extractvalue { ptr, ptr } %i.ap, 0
  %i.ar = extractvalue { ptr, ptr } %i.ap, 1
  %i.as = call { ptr, ptr } @_ZN4llvm16MachineIRBuilder11insertInstrENS_19MachineInstrBuilderE(ptr noundef nonnull align 8 dereferenceable(96) %5, ptr %i.aq, ptr %i.ar) #22 ; 2 uses
  %i.at = extractvalue { ptr, ptr } %i.as, 0      ; 2 uses
  %i.au = extractvalue { ptr, ptr } %i.as, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr null, ptr %i.av, align 8, !tbaa !246, !alias.scope !1963
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 %1, ptr %i.aw, align 4, !tbaa !35, !alias.scope !1963
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i8 0, i64 16, i1 false), !alias.scope !1963
  store i32 0, ptr %8, align 8, !alias.scope !1963
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.au, ptr noundef nonnull align 8 dereferenceable(1065) %i.at, ptr noundef nonnull align 8 dereferenceable(32) %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr null, ptr %i.ay, align 8, !tbaa !246, !alias.scope !1964
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %i.c, ptr %i.az, align 4, !tbaa !35, !alias.scope !1964
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i8 0, i64 16, i1 false), !alias.scope !1964
  store i32 0, ptr %7, align 8, !alias.scope !1964
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.au, ptr noundef nonnull align 8 dereferenceable(1065) %i.at, ptr noundef nonnull align 8 dereferenceable(32) %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  ret void
}

declare ptr @_ZNK4llvm19SPIRVGlobalRegistry30getScalarOrVectorComponentTypeENS_13SPIRVTypeInstE(ptr noundef nonnull align 8 dereferenceable(1416), ptr) local_unnamed_addr #3

declare noundef zeroext i1 @_ZNK4llvm19SPIRVGlobalRegistry14isScalarOfTypeENS_8RegisterEj(ptr noundef nonnull align 8 dereferenceable(1416), i32, i32 noundef) local_unnamed_addr #3

declare i32 @_ZN4llvm19SPIRVGlobalRegistry20buildConstantSamplerENS_8RegisterEjjjRNS_16MachineIRBuilderE(ptr noundef nonnull align 8 dereferenceable(1416), i32, i32 noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #3

declare ptr @_ZN4llvm19SPIRVGlobalRegistry29getOrCreateOpTypeSampledImageENS_13SPIRVTypeInstERNS_16MachineIRBuilderE(ptr noundef nonnull align 8 dereferenceable(1416), ptr, ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #3

declare i32 @_ZN4llvm19SPIRVGlobalRegistry15buildConstantFPENS_7APFloatERNS_16MachineIRBuilderENS_13SPIRVTypeInstE(ptr noundef nonnull align 8 dereferenceable(1416), ptr nofree noundef align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(96), ptr) local_unnamed_addr #3

declare i64 @_ZNK4llvm19SPIRVGlobalRegistry10getRegTypeENS_13SPIRVTypeInstE(ptr noundef nonnull align 8 dereferenceable(1416), ptr) local_unnamed_addr #3

declare noundef i64 @_ZNK4llvm9StringRef16find_insensitiveES0_m(ptr noundef nonnull align 8 dereferenceable(16), ptr, i64, i64 noundef) local_unnamed_addr #3

declare void @_ZN4llvm6detail9IEEEFloatC1ERKNS_12fltSemanticsENS_11APFloatBase16uninitializedTagE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 4 dereferenceable(29), i32 noundef) unnamed_addr #3

declare void @_ZN4llvm6detail9IEEEFloat8makeZeroEb(ptr noundef nonnull align 8 dereferenceable(24), i1 noundef zeroext) local_unnamed_addr #3

declare void @_ZN4llvm6detail13DoubleAPFloat8makeZeroEb(ptr noundef nonnull align 8 dereferenceable(16), i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #5

declare ptr @_ZN4llvm19SPIRVGlobalRegistry26getOrCreateSPIRVTypeByNameENS_9StringRefERNS_16MachineIRBuilderEbNS_5SPIRV12StorageClass12StorageClassENS4_15AccessQualifier15AccessQualifierE(ptr noundef nonnull align 8 dereferenceable(1416), ptr, i64, ptr noundef nonnull align 8 dereferenceable(96), i1 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #22 ; 3 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !45
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !41   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !43, !alias.scope !1967
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.f, align 8, !tbaa !41, !alias.scope !1967
  store i8 0, ptr %i.e, align 8, !tbaa !35, !alias.scope !1967
  %i.g = add i64 %i.d, %i.a
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.g) #22
  %i.h = load i64, ptr %i.f, align 8, !tbaa !41, !alias.scope !1967
  %i.i = sub i64 4611686018427387903, %i.h
  %i.j = icmp ult i64 %i.i, %i.a
  br i1 %i.j, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #25
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i: ; preds = %bb.a
  %i.k = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, i64 noundef %i.a) #22 ; 0 uses
  %i.l = load i64, ptr %i.f, align 8, !tbaa !41, !alias.scope !1967
  %i.m = sub i64 4611686018427387903, %i.l
  %i.n = icmp ult i64 %i.m, %i.d
  br i1 %i.n, label %bb.c, label %_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE.exit

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #25
  unreachable

_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i
  %i.o = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b, i64 noundef %i.d) #22 ; 0 uses
  ret void
}

declare void @_ZN4llvm27createContinuedInstructionsERNS_16MachineIRBuilderEjjjNS_8ArrayRefINS_8RegisterEEES3_S3_(ptr dead_on_unwind writable sret(%"class.llvm::SmallVector.505") align 8, ptr noundef nonnull align 8 dereferenceable(96), i32 noundef, i32 noundef, i32 noundef, ptr noundef byval(%"class.llvm::ArrayRef.499") align 8, i32, i32) local_unnamed_addr #3

declare void @_ZN4llvm9addNumImmERKNS_5APIntERNS_19MachineInstrBuilderE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

declare void @_ZN4llvm15buildOpDecorateENS_8RegisterERNS_16MachineIRBuilderENS_5SPIRV10Decoration10DecorationENS_8ArrayRefIjEENS_9StringRefE(i32, ptr noundef nonnull align 8 dereferenceable(96), i32 noundef, ptr, i64, ptr noundef byval(%"class.llvm::StringRef") align 8) local_unnamed_addr #3

declare void @_ZNK4llvm6detail9IEEEFloat14bitcastToAPIntEv(ptr dead_on_unwind writable sret(%"class.llvm::APInt") align 8, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

declare void @_ZNK4llvm6detail13DoubleAPFloat14bitcastToAPIntEv(ptr dead_on_unwind writable sret(%"class.llvm::APInt") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

declare noundef ptr @_ZN4llvm11IntegerType3getERNS_11LLVMContextEj(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm8Function10getContextEv(ptr noundef nonnull align 8 dereferenceable(140)) local_unnamed_addr #3

declare noundef ptr @_ZN4llvm9ArrayType3getEPNS_4TypeEm(ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @_ZN4llvm19SPIRVGlobalRegistry24getOrCreateConstIntArrayEmmRNS_12MachineInstrENS_13SPIRVTypeInstERKNS_14SPIRVInstrInfoE(ptr noundef nonnull align 8 dereferenceable(1416), i64 noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(80), ptr, ptr noundef nonnull align 8 dereferenceable(432)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc i32 @"_ZZN4llvmL12buildNDRangeEPKNS_5SPIRV12IncomingCallERNS_16MachineIRBuilderEPNS_19SPIRVGlobalRegistryEENK3$_0clEj"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, i32 noundef %1) unnamed_addr #7 align 2 {
bb.a:
  %2 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %3 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %4 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1975, !nonnull !57, !align !1976
  %i.b = load i32, ptr %i.a, align 4, !tbaa !42
  %i.c = icmp eq i32 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1977, !nonnull !57, !align !1976
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1978, !nonnull !57, !align !241
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !96
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !243, !nonnull !57, !align !241
  %i.k = zext i32 %1 to i64
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !92
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.k
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = phi ptr [ %i.e, %bb.b ], [ %i.m, %bb.c ]
  %.sroa.010.0.copyload = load i32, ptr %i.n, align 4, !tbaa !42 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1979, !nonnull !57, !align !241
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !311
  %i.r = tail call ptr @_ZNK4llvm19SPIRVGlobalRegistry19getSPIRVTypeForVRegENS_8RegisterEPKNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(1416) %i.q, i32 %.sroa.010.0.copyload, ptr noundef null) #22
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1980, !nonnull !57, !align !241
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !244
  %i.v = icmp eq ptr %i.r, %i.u
  br i1 %i.v, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1981, !nonnull !57, !align !241
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !323
  %i.z = tail call i32 @_ZN4llvm19MachineRegisterInfo21createVirtualRegisterEPKNS_15MCRegisterClassENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520) %i.y, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN4llvm27SPIRVMCRegisterClassStorageE, i64 256), ptr nonnull @.str.37, i64 0) #22 ; 3 uses
  %i.aa = load ptr, ptr %i.o, align 8, !tbaa !1979, !nonnull !57, !align !241
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !311
  %i.ac = load ptr, ptr %i.s, align 8, !tbaa !1980, !nonnull !57, !align !241
  %.sroa.05.0.copyload = load ptr, ptr %i.ac, align 8, !tbaa !242
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1982, !nonnull !57, !align !241
  tail call void @_ZN4llvm19SPIRVGlobalRegistry21assignSPIRVTypeToVRegENS_13SPIRVTypeInstENS_8RegisterERKNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(1416) %i.ab, ptr %.sroa.05.0.copyload, i32 %i.z, ptr noundef nonnull align 8 dereferenceable(1065) %i.ae) #22
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1983, !nonnull !57, !align !241 ; 2 uses
  %i.ah = tail call { ptr, ptr } @_ZN4llvm16MachineIRBuilder18buildInstrNoInsertEj(ptr noundef nonnull align 8 dereferenceable(96) %i.ag, i32 noundef 667) #22 ; 2 uses
  %i.ai = extractvalue { ptr, ptr } %i.ah, 0
  %i.aj = extractvalue { ptr, ptr } %i.ah, 1
  %i.ak = tail call { ptr, ptr } @_ZN4llvm16MachineIRBuilder11insertInstrENS_19MachineInstrBuilderE(ptr noundef nonnull align 8 dereferenceable(96) %i.ag, ptr %i.ai, ptr %i.aj) #22 ; 2 uses
  %i.al = extractvalue { ptr, ptr } %i.ak, 0      ; 3 uses
  %i.am = extractvalue { ptr, ptr } %i.ak, 1      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.an, align 8, !tbaa !246, !alias.scope !1984
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %i.z, ptr %i.ao, align 4, !tbaa !35, !alias.scope !1984
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i8 0, i64 16, i1 false), !alias.scope !1984
  store i32 16777216, ptr %4, align 8, !alias.scope !1984
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.am, ptr noundef nonnull align 8 dereferenceable(1065) %i.al, ptr noundef nonnull align 8 dereferenceable(32) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.aq = load ptr, ptr %i.o, align 8, !tbaa !1979, !nonnull !57, !align !241
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !311
  %i.as = load ptr, ptr %i.s, align 8, !tbaa !1980, !nonnull !57, !align !241
  %.sroa.01.0.copyload = load ptr, ptr %i.as, align 8, !tbaa !242
  %i.at = call i32 @_ZNK4llvm19SPIRVGlobalRegistry14getSPIRVTypeIDENS_13SPIRVTypeInstE(ptr noundef nonnull align 8 dereferenceable(1416) %i.ar, ptr %.sroa.01.0.copyload) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.au, align 8, !tbaa !246, !alias.scope !1985
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.at, ptr %i.av, align 4, !tbaa !35, !alias.scope !1985
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, i8 0, i64 16, i1 false), !alias.scope !1985
  store i32 0, ptr %3, align 8, !alias.scope !1985
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.am, ptr noundef nonnull align 8 dereferenceable(1065) %i.al, ptr noundef nonnull align 8 dereferenceable(32) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr null, ptr %i.ax, align 8, !tbaa !246, !alias.scope !1986
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %.sroa.010.0.copyload, ptr %i.ay, align 4, !tbaa !35, !alias.scope !1986
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.az, i8 0, i64 16, i1 false), !alias.scope !1986
  store i32 0, ptr %2, align 8, !alias.scope !1986
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.am, ptr noundef nonnull align 8 dereferenceable(1065) %i.al, ptr noundef nonnull align 8 dereferenceable(32) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sroa.010.0 = phi i32 [ %.sroa.010.0.copyload, %bb.d ], [ %i.z, %bb.e ]
  ret i32 %.sroa.010.0
}

declare ptr @_ZN4llvm19SPIRVGlobalRegistry20getOrCreateSPIRVTypeEPKNS_4TypeERNS_16MachineIRBuilderENS_5SPIRV15AccessQualifier15AccessQualifierEbb(ptr noundef nonnull align 8 dereferenceable(1416), ptr noundef, ptr noundef nonnull align 8 dereferenceable(96), i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

declare i8 @_ZNK4llvm10DataLayout16getPrefTypeAlignEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912), ptr noundef) local_unnamed_addr #3

declare noundef ptr @_ZNK4llvm19MachineRegisterInfo16getUniqueVRegDefENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520), i32) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm8Function13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(140)) local_unnamed_addr #3

declare ptr @_ZN4llvm19SPIRVGlobalRegistry27getOrCreateSPIRVPointerTypeEPKNS_4TypeERNS_16MachineIRBuilderENS_5SPIRV12StorageClass12StorageClassE(ptr noundef nonnull align 8 dereferenceable(1416), ptr noundef, ptr noundef nonnull align 8 dereferenceable(96), i32 noundef) local_unnamed_addr #3

declare i32 @_ZN4llvm19SPIRVGlobalRegistry23getOrCreateConstNullPtrERNS_16MachineIRBuilderENS_13SPIRVTypeInstE(ptr noundef nonnull align 8 dereferenceable(1416), ptr noundef nonnull align 8 dereferenceable(96), ptr) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN4llvm14isSpvIntrinsicERKNS_12MachineInstrEj(ptr noundef nonnull align 8 dereferenceable(80), i32 noundef) local_unnamed_addr #3

declare noundef ptr @_ZN4llvm18getMDOperandAsTypeEPKNS_6MDNodeEj(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden { i64, i8 } @_ZNK4llvm10DataLayout17getTypeSizeInBitsEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %0, ptr noundef %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8              ; 6 uses
  %trunc = trunc i32 %i.b to i8
  switch i8 %trunc, label %bb.p [
    i8 8, label %bb.b
    i8 15, label %bb.c
    i8 17, label %bb.e
    i8 16, label %bb.f
    i8 13, label %bb.g
    i8 12, label %bb.h
    i8 0, label %bb.q
    i8 1, label %bb.q
    i8 2, label %bb.i
end_hunk_1
