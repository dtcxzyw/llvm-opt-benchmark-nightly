Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SystemZISelLowering?download=true
inline.NumInlined: 11116
inline.NumDeleted: 2735
loop-unroll.NumCompletelyUnrolled: 89
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 99
begin_hunk_0_@_ZL19parseRegisterNumberN4llvm9StringRefEPKNS_15MCRegisterClassEPKjj:bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.speculated3.i
  %i.h = sub i64 %.sroa.speculated.i, %.sroa.speculated3.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.i = call noundef zeroext i1 @_ZN4llvm20getAsUnsignedIntegerENS_9StringRefEjRy(ptr %i.g, i64 %i.h, i32 noundef 10, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #27
  br i1 %i.i, label %_ZNK4llvm9StringRef12getAsIntegerIjEEbjRT_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %i.a, align 8, !tbaa !589  ; 3 uses
  %.not.i = icmp ult i64 %i.j, 4294967296
  br i1 %.not.i, label %bb.d, label %_ZNK4llvm9StringRef12getAsIntegerIjEEbjRT_.exit.thread

_ZNK4llvm9StringRef12getAsIntegerIjEEbjRT_.exit.thread: ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %.thread

bb.d:                                             ; preds = %bb.c
  %i.k = trunc nuw i64 %i.j to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.l = icmp ugt i32 %4, %i.k
  br i1 %i.l, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.j
  %i.n = load i32, ptr %i.m, align 4, !tbaa !158  ; 2 uses
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %.thread, label %bb.f

.thread:                                          ; preds = %_ZNK4llvm9StringRef12getAsIntegerIjEEbjRT_.exit.thread, %bb.d, %bb.e, %bb.a
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.thread
  %.sroa.014.1 = phi i32 [ 0, %.thread ], [ %i.n, %bb.e ]
  %.sroa.315.1 = phi ptr [ null, %.thread ], [ %2, %bb.e ]
  %.fca.0.insert = insertvalue { i32, ptr } poison, i32 %.sroa.014.1, 0
  %.fca.1.insert = insertvalue { i32, ptr } %.fca.0.insert, ptr %.sroa.315.1, 1
  ret { i32, ptr } %.fca.1.insert
}

declare { i32, ptr } @_ZNK4llvm14TargetLowering28getRegForInlineAsmConstraintEPKNS_18TargetRegisterInfoENS_9StringRefENS_3MVTE(ptr noundef nonnull align 8 dereferenceable(518435), ptr noundef, ptr, i64, i16) unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @_ZNK4llvm21SystemZTargetLowering17getRegisterByNameEPKcNS_3LLTERKNS_15MachineFunctionE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(518496) %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 %2, ptr nofree nonnull readnone align 8 captures(none) %3) unnamed_addr #5 align 2 {
bb.a:
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %_ZN4llvm12StringSwitchINS_8RegisterES1_E4CaseENS_13StringLiteralES1_.exit11.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #27
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 518440
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !44, !nonnull !19, !align !74 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 452
  %i.e = load i32, ptr %i.d, align 4, !tbaa !591  ; 2 uses
  switch i64 %i.a, label %_ZN4llvm12StringSwitchINS_8RegisterES1_E4CaseENS_13StringLiteralES1_.exit11.thread [
    i64 2, label %_ZN4llvm12StringSwitchINS_8RegisterES1_E4CaseENS_13StringLiteralES1_.exit11
    i64 3, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i7
  ]

_ZN4llvmneENS_9StringRefES0_.exit.i.i7:           ; preds = %bb.b
  %i.f = icmp eq i32 %i.e, 3
  %i.g = select i1 %i.f, i32 186, i32 0
  %i.h = load i16, ptr %1, align 1
  %i.i = xor i16 %i.h, 12658
  %i.j = getelementptr i8, ptr %1, i64 2
  %i.k = load i8, ptr %i.j, align 1
  %i.l = zext i8 %i.k to i16
  %i.m = xor i16 %i.l, 53
  %i.n = or i16 %i.i, %i.m
  %i.o = icmp ne i16 %i.n, 0
  %i.p = zext i1 %i.o to i32
  %bcmp.i.i.i.i8.fr = freeze i32 %i.p
  %.not.i.i9 = icmp eq i32 %bcmp.i.i.i.i8.fr, 0   ; 2 uses
  %spec.select28 = select i1 %.not.i.i9, i32 %i.g, i32 undef
  br i1 %.not.i.i9, label %bb.c, label %_ZN4llvm12StringSwitchINS_8RegisterES1_E4CaseENS_13StringLiteralES1_.exit11.thread

_ZN4llvm12StringSwitchINS_8RegisterES1_E4CaseENS_13StringLiteralES1_.exit11: ; preds = %bb.b
  %i.q = icmp eq i32 %i.e, 4
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 444
  %i.s = load i32, ptr %i.r, align 4
  %i.t = icmp eq i32 %i.s, 16
  %i.u = select i1 %i.q, i1 %i.t, i1 false
  %i.v = select i1 %i.u, i32 175, i32 0
  %i.w = load i16, ptr %1, align 1
  %i.x = icmp ne i16 %i.w, 13426
  %i.y = zext i1 %i.x to i32
  %bcmp.i.i.i.i.fr = freeze i32 %i.y
  %.not.i.i = icmp eq i32 %bcmp.i.i.i.i.fr, 0     ; 2 uses
  %spec.select = select i1 %.not.i.i, i32 %i.v, i32 undef
  br i1 %.not.i.i, label %bb.c, label %_ZN4llvm12StringSwitchINS_8RegisterES1_E4CaseENS_13StringLiteralES1_.exit11.thread

bb.c:                                             ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i7, %_ZN4llvm12StringSwitchINS_8RegisterES1_E4CaseENS_13StringLiteralES1_.exit11
  %.sroa.8.135 = phi i32 [ %spec.select28, %_ZN4llvmneENS_9StringRefES0_.exit.i.i7 ], [ %spec.select, %_ZN4llvm12StringSwitchINS_8RegisterES1_E4CaseENS_13StringLiteralES1_.exit11 ]
  br label %_ZN4llvm12StringSwitchINS_8RegisterES1_E4CaseENS_13StringLiteralES1_.exit11.thread

_ZN4llvm12StringSwitchINS_8RegisterES1_E4CaseENS_13StringLiteralES1_.exit11.thread: ; preds = %bb.a, %bb.b, %_ZN4llvmneENS_9StringRefES0_.exit.i.i7, %_ZN4llvm12StringSwitchINS_8RegisterES1_E4CaseENS_13StringLiteralES1_.exit11, %bb.c
  %i.z = phi i32 [ %.sroa.8.135, %bb.c ], [ 0, %_ZN4llvm12StringSwitchINS_8RegisterES1_E4CaseENS_13StringLiteralES1_.exit11 ], [ 0, %_ZN4llvmneENS_9StringRefES0_.exit.i.i7 ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %i.z
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 172, 178) i32 @_ZNK4llvm21SystemZTargetLowering27getExceptionPointerRegisterEPKNS_8ConstantE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(518496) %0, ptr nofree readnone captures(none) %1) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 518440
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44, !nonnull !19, !align !74 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 452
  %i.d = load i32, ptr %i.c, align 4, !tbaa !591
  %i.e = icmp eq i32 %i.d, 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 444
  %i.g = load i32, ptr %i.f, align 4
  %i.h = icmp eq i32 %i.g, 16
  %i.i = select i1 %i.e, i1 %i.h, i1 false
  %i.j = select i1 %i.i, i32 172, i32 177
  ret i32 %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 173, 179) i32 @_ZNK4llvm21SystemZTargetLowering28getExceptionSelectorRegisterEPKNS_8ConstantE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(518496) %0, ptr nofree readnone captures(none) %1) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 518440
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44, !nonnull !19, !align !74 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 452
  %i.d = load i32, ptr %i.c, align 4, !tbaa !591
  %i.e = icmp eq i32 %i.d, 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 444
  %i.g = load i32, ptr %i.f, align 4
  %i.h = icmp eq i32 %i.g, 16
  %i.i = select i1 %i.e, i1 %i.h, i1 false
  %i.j = select i1 %i.i, i32 173, i32 178
  ret i32 %i.j
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZNK4llvm21SystemZTargetLowering27LowerAsmOutputForConstraintERNS_7SDValueES2_RKNS_5SDLocERKNS_14TargetLowering14AsmOperandInfoERNS_12SelectionDAGE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(12) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(130) %4, ptr noundef nonnull align 8 dereferenceable(920) %5) unnamed_addr #3 align 2 {
bb.a:
  %6 = alloca %"class.llvm::SDLoc", align 8       ; 7 uses
  %7 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %8 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %9 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %10 = alloca [2 x %"class.llvm::SDValue"], align 16 ; 7 uses
  %11 = alloca %"class.llvm::ArrayRef.497", align 8 ; 5 uses
  %12 = alloca %"struct.llvm::EVT", align 8       ; 5 uses
  %13 = alloca [3 x %"class.llvm::SDValue"], align 16 ; 9 uses
  %14 = alloca %"class.llvm::ArrayRef.497", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.b = load i64, ptr %i.a, align 8, !tbaa !592  ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %.thread.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i: ; preds = %bb.a
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.b, i64 5)
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !593
  %i.f = tail call i32 @memcmp(ptr noundef nonnull @.str.6, ptr noundef %i.e, i64 noundef %.sroa.speculated.i) #28
  %.fr.i = freeze i32 %i.f
  %.not.not.i = icmp eq i32 %.fr.i, 0
  %i.g = icmp eq i64 %i.b, 5
  %or.cond = and i1 %i.g, %.not.not.i
  br i1 %or.cond, label %_ZNK4llvm9StringRef7compareES0_.exit, label %.thread.i

_ZNK4llvm9StringRef7compareES0_.exit:             ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.i = load i16, ptr %i.h, align 8, !tbaa !212  ; 2 uses
  %i.j = add i16 %i.i, -2
  %or.cond89 = icmp ult i16 %i.j, 10
  br i1 %or.cond89, label %bb.b, label %.critedge

bb.b:                                             ; preds = %_ZNK4llvm9StringRef7compareES0_.exit
  %i.k = zext nneg i16 %i.i to i64
  %i.l = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.k ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %i.l, i64 -8
  %.sroa.2.0.copyload.i = load i8, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.m = trunc nuw i8 %.sroa.2.0.copyload.i to i1
  br i1 %i.m, label %bb.c, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.30) #29
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %bb.b
  %i.n = getelementptr i8, ptr %i.l, i64 -16
  %.sroa.0.0.copyload.i = load i64, ptr %i.n, align 16
  %i.o = icmp ult i64 %.sroa.0.0.copyload.i, 8
  br i1 %i.o, label %.critedge, label %bb.d

.critedge:                                        ; preds = %_ZNK4llvm9StringRef7compareES0_.exit, %_ZNK4llvm8TypeSizecvmEv.exit
  tail call void @_ZN4llvm18report_fatal_errorEPKcb(ptr noundef nonnull @.str.9, i1 noundef zeroext true) #29
  unreachable

bb.d:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %i.p = load ptr, ptr %2, align 8, !tbaa !594    ; 2 uses
  %.not49 = icmp eq ptr %i.p, null
  %.sroa.07.0.copyload = load ptr, ptr %1, align 8, !tbaa !597 ; 2 uses
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.28.0.copyload = load i32, ptr %.sroa.28.0..sroa_idx, align 8, !tbaa !158 ; 2 uses
  br i1 %.not49, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.283.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.q = load i64, ptr %.sroa.283.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  store i16 249, ptr %12, align 8, !tbaa !212
  %i.r = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr null, ptr %i.r, align 8, !tbaa !598
  %i.s = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTES1_S1_(ptr noundef nonnull align 8 dereferenceable(920) %5, i16 7, ptr null, i16 1, ptr null, ptr noundef nonnull byval(%"struct.llvm::EVT") align 8 %12) #27 ; 2 uses
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  %i.u = extractvalue { ptr, i32 } %i.s, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  store ptr %.sroa.07.0.copyload, ptr %13, align 16, !tbaa !597
  %.sroa.218.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i32 %.sroa.28.0.copyload, ptr %.sroa.218.0..sroa_idx.i, align 8, !tbaa !158
  %i.v = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.w = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG11getRegisterENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %5, i32 1, i16 7, ptr null) #27 ; 2 uses
  %.fca.0.extract3.i = extractvalue { ptr, i32 } %i.w, 0
  %.fca.1.extract4.i = extractvalue { ptr, i32 } %i.w, 1
  store ptr %.fca.0.extract3.i, ptr %i.v, align 16
  %.sroa.26.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %13, i64 24
  store i32 %.fca.1.extract4.i, ptr %.sroa.26.0..sroa_idx.i, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %13, i64 32
  store ptr %i.p, ptr %i.x, align 16, !tbaa !597
  %.sroa.580.0..sroa_idx81 = getelementptr inbounds nuw i8, ptr %13, i64 40
  %.sroa.580.0.extract.trunc = trunc i64 %i.q to i32
  store i32 %.sroa.580.0.extract.trunc, ptr %.sroa.580.0..sroa_idx81, align 8, !tbaa !158
  store ptr %13, ptr %14, align 8, !tbaa !600
  %i.y = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 3, ptr %i.y, align 8, !tbaa !603
  %i.z = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %5, i32 noundef 52, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr %i.t, i32 %i.u, ptr noundef nonnull byval(%"class.llvm::ArrayRef.497") align 8 %14) #27 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  %.fca.0.extract18 = extractvalue { ptr, i32 } %i.z, 0 ; 2 uses
  %.fca.1.extract19 = extractvalue { ptr, i32 } %i.z, 1
  store ptr %.fca.0.extract18, ptr %2, align 8, !tbaa !597
  store i32 %.fca.1.extract19, ptr %.sroa.283.0..sroa_idx, align 8, !tbaa !158
  store ptr %.fca.0.extract18, ptr %1, align 8, !tbaa !597
  store i32 1, ptr %.sroa.28.0..sroa_idx, align 8, !tbaa !158
  %.sroa.01.0.copyload.pre = load ptr, ptr %2, align 8, !tbaa !597
  %.sroa.22.0.copyload.pre = load i32, ptr %.sroa.283.0..sroa_idx, align 8, !tbaa !158
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  %i.aa = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTES1_(ptr noundef nonnull align 8 dereferenceable(920) %5, i16 7, ptr null, i16 1, ptr null) #27 ; 2 uses
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  %i.ac = extractvalue { ptr, i32 } %i.aa, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  store ptr %.sroa.07.0.copyload, ptr %10, align 16, !tbaa !597
  %.sroa.218.0..sroa_idx.i57 = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 %.sroa.28.0.copyload, ptr %.sroa.218.0..sroa_idx.i57, align 8, !tbaa !158
  %i.ad = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ae = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG11getRegisterENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %5, i32 1, i16 7, ptr null) #27 ; 2 uses
  %.fca.0.extract3.i58 = extractvalue { ptr, i32 } %i.ae, 0
  %.fca.1.extract4.i59 = extractvalue { ptr, i32 } %i.ae, 1
  store ptr %.fca.0.extract3.i58, ptr %i.ad, align 16
  %.sroa.26.0..sroa_idx.i60 = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i32 %.fca.1.extract4.i59, ptr %.sroa.26.0..sroa_idx.i60, align 8
  store ptr %10, ptr %11, align 8, !tbaa !600
  %i.af = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 2, ptr %i.af, align 8, !tbaa !603
  %i.ag = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %5, i32 noundef 52, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr %i.ab, i32 %i.ac, ptr noundef nonnull byval(%"class.llvm::ArrayRef.497") align 8 %11) #27 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  %.fca.0.extract3 = extractvalue { ptr, i32 } %i.ag, 0 ; 2 uses
  %.fca.1.extract4 = extractvalue { ptr, i32 } %i.ag, 1 ; 2 uses
  store ptr %.fca.0.extract3, ptr %2, align 8, !tbaa !597
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %.fca.1.extract4, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !158
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.22.0.copyload = phi i32 [ %.fca.1.extract4, %bb.f ], [ %.sroa.22.0.copyload.pre, %bb.e ]
  %.sroa.01.0.copyload = phi ptr [ %.fca.0.extract3, %bb.f ], [ %.sroa.01.0.copyload.pre, %bb.e ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload, i64 72
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !221
  store i64 %i.ai, ptr %6, align 8, !tbaa !221
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload, i64 68
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !604
  store i32 %i.al, ptr %i.aj, align 8, !tbaa !605
  store ptr %.sroa.01.0.copyload, ptr %7, align 8, !tbaa !597
  %.sroa.315.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %.sroa.22.0.copyload, ptr %.sroa.315.0..sroa_idx.i, align 8, !tbaa !158
  %i.am = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %5, i32 noundef 563, ptr noundef nonnull align 8 dereferenceable(12) %6, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %7) #27 ; 2 uses
  %.fca.0.extract5.i = extractvalue { ptr, i32 } %i.am, 0
  %.fca.1.extract6.i = extractvalue { ptr, i32 } %i.am, 1
  store ptr %.fca.0.extract5.i, ptr %8, align 8, !tbaa !597
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %.fca.1.extract6.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !158
  %i.an = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %5, i64 noundef 28, ptr noundef nonnull align 8 dereferenceable(12) %6, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #27 ; 2 uses
  %.fca.0.extract1.i = extractvalue { ptr, i32 } %i.an, 0
  %.fca.1.extract2.i = extractvalue { ptr, i32 } %i.an, 1
  store ptr %.fca.0.extract1.i, ptr %9, align 8
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %.fca.1.extract2.i, ptr %.sroa.24.0..sroa_idx.i, align 8
  %i.ao = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %5, i32 noundef 200, ptr noundef nonnull align 8 dereferenceable(12) %6, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %8, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %9) #27 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %.fca.0.extract = extractvalue { ptr, i32 } %i.ao, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.ao, 1
  br label %.thread.i

.thread.i:                                        ; preds = %bb.a, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i, %bb.g
  %.sroa.473.0 = phi i32 [ %.fca.1.extract, %bb.g ], [ 0, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i ], [ 0, %bb.a ]
  %.sroa.072.0 = phi ptr [ %.fca.0.extract, %bb.g ], [ null, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i ], [ null, %bb.a ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.072.0, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.473.0, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: noreturn
declare void @_ZN4llvm18report_fatal_errorEPKcb(ptr noundef, i1 noundef zeroext) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm21SystemZTargetLowering28LowerAsmOperandForConstraintENS_7SDValueENS_9StringRefERSt6vectorIS1_SaIS1_EERNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(518496) %0, ptr %1, i32 %2, ptr %3, i64 %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(920) %6) unnamed_addr #3 align 2 {
bb.a:
  %7 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %8 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %9 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %10 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %11 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %i.a = icmp eq i64 %4, 1
  br i1 %i.a, label %bb.b, label %bb.ag

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %3, align 1, !tbaa !164
  switch i8 %i.b, label %bb.ag [
    i8 73, label %bb.c
    i8 74, label %bb.i
    i8 75, label %bb.o
    i8 76, label %bb.u
    i8 77, label %bb.aa
  ]

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !607
  switch i32 %i.d, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.thread [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit: ; preds = %bb.c, %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !608  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !205
  %i.j = icmp ult i32 %i.i, 65
  %i.k = load ptr, ptr %i.g, align 8
  %spec.select.i.i.i = select i1 %i.j, ptr %i.g, ptr %i.k
  %.0.i.i.i81 = load i64, ptr %spec.select.i.i.i, align 8, !tbaa !164 ; 2 uses
  %i.l = icmp ult i64 %.0.i.i.i81, 256
  br i1 %i.l, label %bb.d, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.thread

bb.d:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.n = load i64, ptr %i.m, align 8, !tbaa !221
  store i64 %i.n, ptr %7, align 8, !tbaa !221
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.q = load i32, ptr %i.p, align 4, !tbaa !604
  store i32 %i.q, ptr %i.o, align 8, !tbaa !605
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !538
  %i.t = zext i32 %2 to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %i.t ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.u, align 8, !tbaa !187
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !189
  %i.v = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %6, i64 noundef %.0.i.i.i81, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 %.sroa.0.0.copyload.i.i, ptr %.sroa.21.0.copyload.i.i, i1 noundef zeroext true, i1 noundef zeroext false) #27 ; 2 uses
  %.fca.0.extract48 = extractvalue { ptr, i32 } %i.v, 0 ; 2 uses
  %.fca.1.extract49 = extractvalue { ptr, i32 } %i.v, 1 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !611  ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !613
  %.not.i.i = icmp eq ptr %i.x, %i.z
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %.fca.0.extract48, ptr %i.x, align 8, !tbaa !597
  %.sroa.5218.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i32 %.fca.1.extract49, ptr %.sroa.5218.0..sroa_idx, align 8, !tbaa !158
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store ptr %i.aa, ptr %i.w, align 8, !tbaa !611
  br label %_ZNSt6vectorIN4llvm7SDValueESaIS1_EE9push_backEOS1_.exit

bb.f:                                             ; preds = %bb.d
  %i.ab = load ptr, ptr %5, align 8, !tbaa !614   ; 5 uses
  %i.ac = ptrtoint ptr %i.x to i64
  %i.ad = ptrtoint ptr %i.ab to i64               ; 2 uses
  %i.ae = sub i64 %i.ac, %i.ad                    ; 3 uses
  %i.af = icmp eq i64 %i.ae, 9223372036854775792
  br i1 %i.af, label %bb.g, label %_ZNKSt6vectorIN4llvm7SDValueESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #29
  unreachable

_ZNKSt6vectorIN4llvm7SDValueESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.f
  %i.ag = ashr exact i64 %i.ae, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ag, i64 1)
  %i.ah = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ag ; 2 uses
  %i.ai = icmp ult i64 %i.ah, %i.ag
  %i.aj = call i64 @llvm.umin.i64(i64 %i.ah, i64 576460752303423487)
  %i.ak = select i1 %i.ai, i64 576460752303423487, i64 %i.aj ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ak, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.al = shl nuw nsw i64 %i.ak, 4
  %i.am = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.al) #31 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ae ; 2 uses
  store ptr %.fca.0.extract48, ptr %i.an, align 8, !tbaa !597
  %.sroa.5218.0..sroa_idx219 = getelementptr inbounds nuw i8, ptr %i.an, i64 8
end_hunk_0
begin_hunk_1_@_ZNK4llvm21SystemZTargetLowering11buildVectorERNS_12SelectionDAGERKNS_5SDLocENS_3EVTERNS_15SmallVectorImplINS_7SDValueEEE:bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %15, i64 40
  store i64 0, ptr %i.bb, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store ptr null, ptr %i.a, align 8, !tbaa !597
  br label %._crit_edge421.thread

.thread483:                                       ; preds = %bb.i, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  %i.bc = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 7 uses
  store ptr %i.bc, ptr %13, align 8, !tbaa !21
  %i.bd = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  store i32 0, ptr %i.bd, align 8, !tbaa !208
  %i.be = getelementptr inbounds nuw i8, ptr %13, i64 12
  store i32 16, ptr %i.be, align 4, !tbaa !209
  %i.bf = icmp ugt i32 %i.d, 16
  br i1 %i.bf, label %.lr.ph.i.i.i.preheader.i.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.thread483
  %xtraiter = and i64 %i.e, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.09.i.i.i.i.i.prol = phi ptr [ %i.bh, %.lr.ph.i.i.i.i.i.prol ], [ %i.bc, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.068.i.i.i.i.i.prol = phi i64 [ %i.bg, %.lr.ph.i.i.i.i.i.prol ], [ %i.e, %.lr.ph.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  store ptr null, ptr %.09.i.i.i.i.i.prol, align 8, !tbaa !597
  %.sroa.4.0..09.i.i.i.sroa_idx.i.i.prol = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.prol, i64 8
  store i32 0, ptr %.sroa.4.0..09.i.i.i.sroa_idx.i.i.prol, align 8, !tbaa !158
  %i.bg = add nsw i64 %.068.i.i.i.i.i.prol, -1    ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !1210

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.09.i.i.i.i.i.unr = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bh, %.lr.ph.i.i.i.i.i.prol ]
  %.068.i.i.i.i.i.unr = phi i64 [ %i.e, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bg, %.lr.ph.i.i.i.i.i.prol ]
  %i.bi = icmp ult i32 %i.d, 8
  br i1 %i.bi, label %_ZSt6fill_nIPbmbET_S1_T0_RKT1_.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.preheader.i.i.i:                     ; preds = %.thread483
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(272) %13, ptr noundef nonnull %i.bc, i64 noundef %i.e, i64 noundef 16) #27
  %i.bj = load ptr, ptr %13, align 8, !tbaa !21   ; 2 uses
  %xtraiter496 = and i64 %i.e, 7                  ; 2 uses
  %lcmp.mod497.not = icmp eq i64 %xtraiter496, 0
  br i1 %lcmp.mod497.not, label %.lr.ph.i.i.i.preheader.i.i.i.new, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.preheader.i.i.i, %.lr.ph.i.i.i.i.i.i.prol
  %.09.i.i.i.i.i.i.prol = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.bj, %.lr.ph.i.i.i.preheader.i.i.i ] ; 3 uses
  %.068.i.i.i.i.i.i.prol = phi i64 [ %i.bk, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.e, %.lr.ph.i.i.i.preheader.i.i.i ]
  %prol.iter498 = phi i64 [ %prol.iter498.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader.i.i.i ]
  store ptr null, ptr %.09.i.i.i.i.i.i.prol, align 8, !tbaa !597
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.prol = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.prol, i64 8
  store i32 0, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.prol, align 8, !tbaa !158
  %i.bk = add nsw i64 %.068.i.i.i.i.i.i.prol, -1  ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.prol, i64 16 ; 2 uses
  %prol.iter498.next = add i64 %prol.iter498, 1   ; 2 uses
  %prol.iter498.cmp.not = icmp eq i64 %prol.iter498.next, %xtraiter496
  br i1 %prol.iter498.cmp.not, label %.lr.ph.i.i.i.preheader.i.i.i.new, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !1211

.lr.ph.i.i.i.preheader.i.i.i.new:                 ; preds = %.lr.ph.i.i.i.preheader.i.i.i, %.lr.ph.i.i.i.i.i.i.prol
  %.09.i.i.i.i.i.i.unr = phi ptr [ %i.bj, %.lr.ph.i.i.i.preheader.i.i.i ], [ %i.bl, %.lr.ph.i.i.i.i.i.i.prol ]
  %.068.i.i.i.i.i.i.unr = phi i64 [ %i.e, %.lr.ph.i.i.i.preheader.i.i.i ], [ %i.bk, %.lr.ph.i.i.i.i.i.i.prol ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.preheader.i.i.i.new
  %.09.i.i.i.i.i.i = phi ptr [ %.09.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.preheader.i.i.i.new ], [ %i.bu, %.lr.ph.i.i.i.i.i.i ] ; 17 uses
  %.068.i.i.i.i.i.i = phi i64 [ %.068.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.preheader.i.i.i.new ], [ %i.bt, %.lr.ph.i.i.i.i.i.i ]
  store ptr null, ptr %.09.i.i.i.i.i.i, align 8, !tbaa !597
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 8
  store i32 0, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i, align 8, !tbaa !158
  %i.bm = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 16
  store ptr null, ptr %i.bm, align 8, !tbaa !597
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 24
  store i32 0, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.1, align 8, !tbaa !158
  %i.bn = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 32
  store ptr null, ptr %i.bn, align 8, !tbaa !597
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.2 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 40
  store i32 0, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.2, align 8, !tbaa !158
  %i.bo = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 48
  store ptr null, ptr %i.bo, align 8, !tbaa !597
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.3 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 56
  store i32 0, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.3, align 8, !tbaa !158
  %i.bp = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 64
  store ptr null, ptr %i.bp, align 8, !tbaa !597
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.4 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 72
  store i32 0, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.4, align 8, !tbaa !158
  %i.bq = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 80
  store ptr null, ptr %i.bq, align 8, !tbaa !597
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.5 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 88
  store i32 0, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.5, align 8, !tbaa !158
  %i.br = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 96
  store ptr null, ptr %i.br, align 8, !tbaa !597
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.6 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 104
  store i32 0, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.6, align 8, !tbaa !158
  %i.bs = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 112
  store ptr null, ptr %i.bs, align 8, !tbaa !597
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.7 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 120
  store i32 0, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.7, align 8, !tbaa !158
  %i.bt = add nsw i64 %.068.i.i.i.i.i.i, -8       ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 128
  %.not.i.i.i.i.i.i.7 = icmp eq i64 %i.bt, 0
  br i1 %.not.i.i.i.i.i.i.7, label %_ZN4llvm23SmallVectorTemplateBaseIbLb1EE13growAndAssignEmb.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1027

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.cd, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.068.i.i.i.i.i = phi i64 [ %i.cc, %.lr.ph.i.i.i.i.i ], [ %.068.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  store ptr null, ptr %.09.i.i.i.i.i, align 8, !tbaa !597
  %.sroa.4.0..09.i.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 8
  store i32 0, ptr %.sroa.4.0..09.i.i.i.sroa_idx.i.i, align 8, !tbaa !158
  %i.bv = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 16
  store ptr null, ptr %i.bv, align 8, !tbaa !597
  %.sroa.4.0..09.i.i.i.sroa_idx.i.i.1 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 24
  store i32 0, ptr %.sroa.4.0..09.i.i.i.sroa_idx.i.i.1, align 8, !tbaa !158
  %i.bw = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 32
  store ptr null, ptr %i.bw, align 8, !tbaa !597
  %.sroa.4.0..09.i.i.i.sroa_idx.i.i.2 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 40
  store i32 0, ptr %.sroa.4.0..09.i.i.i.sroa_idx.i.i.2, align 8, !tbaa !158
  %i.bx = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 48
  store ptr null, ptr %i.bx, align 8, !tbaa !597
  %.sroa.4.0..09.i.i.i.sroa_idx.i.i.3 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 56
  store i32 0, ptr %.sroa.4.0..09.i.i.i.sroa_idx.i.i.3, align 8, !tbaa !158
  %i.by = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 64
  store ptr null, ptr %i.by, align 8, !tbaa !597
  %.sroa.4.0..09.i.i.i.sroa_idx.i.i.4 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 72
  store i32 0, ptr %.sroa.4.0..09.i.i.i.sroa_idx.i.i.4, align 8, !tbaa !158
  %i.bz = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 80
  store ptr null, ptr %i.bz, align 8, !tbaa !597
  %.sroa.4.0..09.i.i.i.sroa_idx.i.i.5 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 88
  store i32 0, ptr %.sroa.4.0..09.i.i.i.sroa_idx.i.i.5, align 8, !tbaa !158
  %i.ca = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 96
  store ptr null, ptr %i.ca, align 8, !tbaa !597
  %.sroa.4.0..09.i.i.i.sroa_idx.i.i.6 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 104
  store i32 0, ptr %.sroa.4.0..09.i.i.i.sroa_idx.i.i.6, align 8, !tbaa !158
  %i.cb = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 112
  store ptr null, ptr %i.cb, align 8, !tbaa !597
  %.sroa.4.0..09.i.i.i.sroa_idx.i.i.7 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 120
  store i32 0, ptr %.sroa.4.0..09.i.i.i.sroa_idx.i.i.7, align 8, !tbaa !158
  %i.cc = add nsw i64 %.068.i.i.i.i.i, -8         ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 128
  %.not.i.i.i.i.i.7 = icmp eq i64 %i.cc, 0
  br i1 %.not.i.i.i.i.i.7, label %_ZSt6fill_nIPbmbET_S1_T0_RKT1_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1027

_ZN4llvm23SmallVectorTemplateBaseIbLb1EE13growAndAssignEmb.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  store i32 %i.d, ptr %i.bd, align 8, !tbaa !208
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27
  %i.ce = getelementptr inbounds nuw i8, ptr %14, i64 24 ; 3 uses
  store ptr %i.ce, ptr %14, align 8, !tbaa !1207
  %i.cf = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i64 16, ptr %i.cg, align 8, !tbaa !1208
  store i64 0, ptr %i.cf, align 8, !tbaa !1209
  call void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(40) %14, ptr noundef nonnull %i.ce, i64 noundef %i.e, i64 noundef 1) #27
  %i.ch = load ptr, ptr %14, align 8, !tbaa !1207
  br label %.lr.ph412

_ZSt6fill_nIPbmbET_S1_T0_RKT1_.exit.i.i:          ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.prol.loopexit
  store i32 %i.d, ptr %i.bd, align 8, !tbaa !208
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27
  %i.ci = getelementptr inbounds nuw i8, ptr %14, i64 24 ; 3 uses
  store ptr %i.ci, ptr %14, align 8, !tbaa !1207
  %i.cj = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i64 16, ptr %i.ck, align 8, !tbaa !1208
  br label %.lr.ph412

.lr.ph412:                                        ; preds = %_ZSt6fill_nIPbmbET_S1_T0_RKT1_.exit.i.i, %_ZN4llvm23SmallVectorTemplateBaseIbLb1EE13growAndAssignEmb.exit.i.i
  %i.cl = phi ptr [ %i.cf, %_ZN4llvm23SmallVectorTemplateBaseIbLb1EE13growAndAssignEmb.exit.i.i ], [ %i.cj, %_ZSt6fill_nIPbmbET_S1_T0_RKT1_.exit.i.i ]
  %i.cm = phi ptr [ %i.ce, %_ZN4llvm23SmallVectorTemplateBaseIbLb1EE13growAndAssignEmb.exit.i.i ], [ %i.ci, %_ZSt6fill_nIPbmbET_S1_T0_RKT1_.exit.i.i ] ; 3 uses
  %.sink.i = phi ptr [ %i.ch, %_ZN4llvm23SmallVectorTemplateBaseIbLb1EE13growAndAssignEmb.exit.i.i ], [ %i.ci, %_ZSt6fill_nIPbmbET_S1_T0_RKT1_.exit.i.i ]
  call void @llvm.memset.p0.i64(ptr align 1 %.sink.i, i8 0, i64 %i.e, i1 false), !tbaa !546
  store i64 %i.e, ptr %i.cl, align 8, !tbaa !1209
  %i.cn = load ptr, ptr %5, align 8, !tbaa !21
  %i.co = load ptr, ptr %13, align 8
  %i.cp = load ptr, ptr %14, align 8
  br label %bb.u

._crit_edge413:                                   ; preds = %bb.w
  %i.cq = icmp eq i32 %.1274, 0
  br i1 %i.cq, label %bb.z, label %.preheader

.preheader:                                       ; preds = %._crit_edge413
  %.pre = load ptr, ptr %13, align 8, !tbaa !21
  br label %.lr.ph416

bb.u:                                             ; preds = %.lr.ph412, %bb.w
  %indvars.iv = phi i64 [ 0, %.lr.ph412 ], [ %indvars.iv.next, %bb.w ] ; 4 uses
  %.0273411 = phi i32 [ 0, %.lr.ph412 ], [ %.1274, %bb.w ] ; 2 uses
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %i.cn, i64 %indvars.iv ; 2 uses
  %.sroa.0305.0.copyload = load ptr, ptr %i.cr, align 8, !tbaa !597 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.0305.0.copyload, i64 24
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !607
  %i.cu = and i32 %i.ct, -2
  %switch = icmp eq i32 %i.cu, 12
  br i1 %switch, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %.sroa.6308.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.cv = load i64, ptr %.sroa.6308.0..sroa_idx, align 8
  %i.cw = add i32 %.0273411, 1
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %i.co, i64 %indvars.iv ; 2 uses
  store ptr %.sroa.0305.0.copyload, ptr %i.cx, align 8, !tbaa !597
  %.sroa.6308.0..sroa_idx309 = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %.sroa.6308.0.extract.trunc = trunc i64 %i.cv to i32
  store i32 %.sroa.6308.0.extract.trunc, ptr %.sroa.6308.0..sroa_idx309, align 8, !tbaa !158
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cp, i64 %indvars.iv
  store i8 1, ptr %i.cy, align 1, !tbaa !546
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %.1274 = phi i32 [ %i.cw, %bb.v ], [ %.0273411, %bb.u ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.e
  br i1 %exitcond.not, label %._crit_edge413, label %bb.u, !llvm.loop !1212

._crit_edge417:                                   ; preds = %bb.y
  %i.cz = load i32, ptr %i.bd, align 8, !tbaa !208
  %i.da = zext i32 %i.cz to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store ptr %i.dr, ptr %8, align 8, !tbaa !852
  %.sroa.26.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.da, ptr %.sroa.26.0..sroa_idx.i, align 8, !tbaa !217
  %i.db = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 162, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 %3, ptr %4, ptr noundef nonnull byval(%"class.llvm::ArrayRef.497") align 8 %8) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %bb.aj

.lr.ph416:                                        ; preds = %.preheader, %bb.y
  %i.dc = phi ptr [ %i.dr, %bb.y ], [ %.pre, %.preheader ] ; 2 uses
  %indvars.iv435 = phi i64 [ %indvars.iv.next436, %bb.y ], [ 0, %.preheader ] ; 4 uses
  %i.dd = getelementptr inbounds nuw [16 x i8], ptr %i.dc, i64 %indvars.iv435
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !594
  %.not286 = icmp eq ptr %i.de, null
  br i1 %.not286, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.lr.ph416
  %i.df = load ptr, ptr %5, align 8, !tbaa !21
  %i.dg = getelementptr inbounds nuw [16 x i8], ptr %i.df, i64 %indvars.iv435 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !594
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !757
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 48
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !538
  %i.dm = zext i32 %i.dj to i64
  %i.dn = getelementptr inbounds nuw [16 x i8], ptr %i.dl, i64 %i.dm ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.dn, align 8, !tbaa !187
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !189
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %i.do = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 53, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 %.sroa.0.0.copyload.i.i, ptr %.sroa.21.0.copyload.i.i) #27 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  %.fca.0.extract103 = extractvalue { ptr, i32 } %i.do, 0
  %.fca.1.extract104 = extractvalue { ptr, i32 } %i.do, 1
  %i.dp = load ptr, ptr %13, align 8, !tbaa !21   ; 2 uses
  %i.dq = getelementptr inbounds nuw [16 x i8], ptr %i.dp, i64 %indvars.iv435 ; 2 uses
  store ptr %.fca.0.extract103, ptr %i.dq, align 8, !tbaa !597
  %.sroa.4110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  store i32 %.fca.1.extract104, ptr %.sroa.4110.0..sroa_idx, align 8, !tbaa !158
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph416, %bb.x
  %i.dr = phi ptr [ %i.dc, %.lr.ph416 ], [ %i.dp, %bb.x ] ; 2 uses
  %indvars.iv.next436 = add nuw nsw i64 %indvars.iv435, 1 ; 2 uses
  %exitcond439.not = icmp eq i64 %indvars.iv.next436, %i.e
  br i1 %exitcond439.not, label %._crit_edge417, label %.lr.ph416, !llvm.loop !1213

bb.z:                                             ; preds = %._crit_edge413
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #27
  %i.ds = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 3 uses
  store i32 0, ptr %i.ds, align 8, !tbaa !25
  %i.dt = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 3 uses
  store ptr null, ptr %i.dt, align 8, !tbaa !31
  %i.du = getelementptr inbounds nuw i8, ptr %15, i64 24
  store ptr %i.ds, ptr %i.du, align 8, !tbaa !32
  %i.dv = getelementptr inbounds nuw i8, ptr %15, i64 32
  store ptr %i.ds, ptr %i.dv, align 8, !tbaa !33
  %i.dw = getelementptr inbounds nuw i8, ptr %15, i64 40
  store i64 0, ptr %i.dw, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store ptr null, ptr %i.a, align 8, !tbaa !597
  br label %.lr.ph420

._crit_edge421:                                   ; preds = %bb.ae
  %.pre451 = load ptr, ptr %i.a, align 8, !tbaa !597 ; 3 uses
  %.not284 = icmp eq ptr %.pre451, null
  br i1 %.not284, label %._crit_edge421.thread, label %bb.af

.lr.ph420:                                        ; preds = %bb.z, %bb.ae
  %indvars.iv440 = phi i64 [ %indvars.iv.next441, %bb.ae ], [ 0, %bb.z ] ; 2 uses
  %i.dx = load ptr, ptr %5, align 8, !tbaa !21
  %i.dy = getelementptr inbounds nuw [16 x i8], ptr %i.dx, i64 %indvars.iv440 ; 2 uses
  %.sroa.086.0.copyload = load ptr, ptr %i.dy, align 8, !tbaa !597
  %i.dz = call noundef zeroext i1 @_ZNK4llvm21SystemZTargetLowering19isVectorElementLoadENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(518496) %0, ptr %.sroa.086.0.copyload, i32 poison)
  br i1 %i.dz, label %bb.aa, label %bb.ae

bb.aa:                                            ; preds = %.lr.ph420
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  %i.ea = load ptr, ptr %i.dy, align 8, !tbaa !594
  store ptr %i.ea, ptr %i.b, align 8, !tbaa !597
  %i.eb = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3mapIPKN4llvm6SDNodeEjSt4lessIS3_ESaISt4pairIKS3_jEEEixERS7_(ptr noundef nonnull align 8 dereferenceable(48) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !158
  %i.ed = add i32 %i.ec, 1                        ; 2 uses
  store i32 %i.ed, ptr %i.eb, align 4, !tbaa !158
  %i.ee = load ptr, ptr %i.a, align 8, !tbaa !597
  %i.ef = icmp eq ptr %i.ee, null
  br i1 %i.ef, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.eg = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3mapIPKN4llvm6SDNodeEjSt4lessIS3_ESaISt4pairIKS3_jEEEixERS7_(ptr noundef nonnull align 8 dereferenceable(48) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !158
  %i.ei = icmp ult i32 %i.eh, %i.ed
  br i1 %i.ei, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.ej = load ptr, ptr %i.b, align 8, !tbaa !597
  store ptr %i.ej, ptr %i.a, align 8, !tbaa !597
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph420, %bb.ad
  %indvars.iv.next441 = add nuw nsw i64 %indvars.iv440, 1 ; 2 uses
  %exitcond444.not = icmp eq i64 %indvars.iv.next441, %i.e
  br i1 %exitcond444.not, label %._crit_edge421, label %.lr.ph420, !llvm.loop !1214

bb.af:                                            ; preds = %._crit_edge421
  store ptr %.pre451, ptr %16, align 8, !tbaa !597
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i32 0, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !158
  %i.ek = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 583, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 %3, ptr %4, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %16) #27
  br label %bb.ai

._crit_edge421.thread:                            ; preds = %_ZSt6fill_nIPN4llvm7SDValueEmS1_ET_S3_T0_RKT1_.exit.i.i.thread, %._crit_edge421
  %i.el = phi ptr [ %i.bc, %._crit_edge421 ], [ %i.ar, %_ZSt6fill_nIPN4llvm7SDValueEmS1_ET_S3_T0_RKT1_.exit.i.i.thread ] ; 2 uses
  %i.em = phi ptr [ %i.cm, %._crit_edge421 ], [ %i.au, %_ZSt6fill_nIPN4llvm7SDValueEmS1_ET_S3_T0_RKT1_.exit.i.i.thread ] ; 2 uses
  %i.en = phi ptr [ %i.dt, %._crit_edge421 ], [ %i.ay, %_ZSt6fill_nIPN4llvm7SDValueEmS1_ET_S3_T0_RKT1_.exit.i.i.thread ] ; 2 uses
  %i.eo = lshr i32 %i.d, 1
  %i.ep = add nsw i32 %i.eo, -1                   ; 3 uses
  %i.eq = add i32 %i.d, -1                        ; 3 uses
  %i.er = zext i32 %i.ep to i64                   ; 2 uses
  %i.es = load ptr, ptr %5, align 8, !tbaa !21    ; 4 uses
  %i.et = getelementptr inbounds nuw [16 x i8], ptr %i.es, i64 %i.er
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !594
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 24
  %i.ew = load i32, ptr %i.ev, align 8, !tbaa !607
  %i.ex = add i32 %i.ew, -53                      ; 2 uses
  %i.ey = zext i32 %i.eq to i64                   ; 2 uses
  %i.ez = getelementptr inbounds nuw [16 x i8], ptr %i.es, i64 %i.ey
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !594
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 24
  %i.fc = load i32, ptr %i.fb, align 8, !tbaa !607
  %i.fd = add i32 %i.fc, -53                      ; 2 uses
  %i.fe = or i32 %i.fd, %i.ex
  %or.cond13.not = icmp ult i32 %i.fe, 2
  br i1 %or.cond13.not, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %._crit_edge421.thread
  %spec.select.i.i297 = icmp ult i32 %i.fd, 2
  %spec.select.i.i296 = icmp ult i32 %i.ex, 2
  %i.ff = select i1 %spec.select.i.i296, i32 %i.eq, i32 %i.ep
  %i.fg = zext i32 %i.ff to i64
  %i.fh = getelementptr inbounds nuw [16 x i8], ptr %i.es, i64 %i.fg ; 2 uses
  %.sroa.060.0.copyload = load ptr, ptr %i.fh, align 8, !tbaa !597
  %.sroa.461.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %.sroa.461.0.copyload = load i32, ptr %.sroa.461.0..sroa_idx, align 8, !tbaa !158
  %i.fi = select i1 %spec.select.i.i297, i32 %i.ep, i32 %i.eq
  %i.fj = zext i32 %i.fi to i64
  %i.fk = getelementptr inbounds nuw [16 x i8], ptr %i.es, i64 %i.fj ; 2 uses
  %.sroa.057.0.copyload = load ptr, ptr %i.fk, align 8, !tbaa !597
  %.sroa.458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %.sroa.458.0.copyload = load i32, ptr %.sroa.458.0..sroa_idx, align 8, !tbaa !158
  %i.fl = call fastcc { ptr, i32 } @_ZL10joinDwordsRN4llvm12SelectionDAGERKNS_5SDLocENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %1, ptr noundef nonnull align 8 dereferenceable(12) %2, ptr %.sroa.060.0.copyload, i32 %.sroa.461.0.copyload, ptr %.sroa.057.0.copyload, i32 %.sroa.458.0.copyload) ; 2 uses
  %.fca.0.extract42 = extractvalue { ptr, i32 } %i.fl, 0
  %.fca.1.extract43 = extractvalue { ptr, i32 } %i.fl, 1
  store ptr %.fca.0.extract42, ptr %17, align 8
  %.sroa.245.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i32 %.fca.1.extract43, ptr %.sroa.245.0..sroa_idx, align 8
  %i.fm = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 248, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 %3, ptr %4, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %17) #27
  %i.fn = load ptr, ptr %14, align 8, !tbaa !1207 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.er
  store i8 1, ptr %i.fo, align 1, !tbaa !546
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.ey
  store i8 1, ptr %i.fp, align 1, !tbaa !546
  br label %bb.ai

bb.ah:                                            ; preds = %._crit_edge421.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %i.fq = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %1, i32 noundef 53, ptr noundef nonnull align 8 dereferenceable(12) %6, i16 %3, ptr %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah, %bb.af
  %i.fr = phi ptr [ %i.el, %bb.ah ], [ %i.el, %bb.ag ], [ %i.bc, %bb.af ]
  %i.fs = phi ptr [ null, %bb.ah ], [ null, %bb.ag ], [ %.pre451, %bb.af ]
  %i.ft = phi ptr [ %i.em, %bb.ah ], [ %i.em, %bb.ag ], [ %i.cm, %bb.af ]
  %i.fu = phi ptr [ %i.en, %bb.ah ], [ %i.en, %bb.ag ], [ %i.dt, %bb.af ]
  %.pn = phi { ptr, i32 } [ %i.fq, %bb.ah ], [ %i.fm, %bb.ag ], [ %i.ek, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !31
  call void @_ZNSt8_Rb_treeIPKN4llvm6SDNodeESt4pairIKS3_jESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %15, ptr noundef %i.fv)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  br label %bb.aj
end_hunk_1
begin_hunk_2_@_ZNK4llvm21SystemZTargetLowering10lowerShiftENS_7SDValueERNS_12SelectionDAGEj:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.be = load i32, ptr %i.al, align 8, !tbaa !205
  %i.bf = icmp ugt i32 %i.be, 64
  br i1 %i.bf, label %bb.m, label %_ZN4llvm5APIntD2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.bg = load ptr, ptr %12, align 8, !tbaa !164  ; 2 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %_ZN4llvm5APIntD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZdaPv(ptr noundef nonnull %i.bg) #30
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %bb.l, %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  %i.bi = load i32, ptr %i.ak, align 8, !tbaa !205
  %i.bj = icmp ugt i32 %i.bi, 64
  br i1 %i.bj, label %bb.o, label %bb.q

bb.o:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit
  %i.bk = load ptr, ptr %11, align 8, !tbaa !164  ; 2 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZdaPv(ptr noundef nonnull %i.bk) #30
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %_ZN4llvm5APIntD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  br i1 %.1, label %..thread_crit_edge, label %.thread110

..thread_crit_edge:                               ; preds = %bb.q
  %.pre = load i32, ptr %i.ag, align 8, !tbaa !607
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit
  %i.bm = phi i32 [ %.pre, %..thread_crit_edge ], [ %i.ah, %_ZNK4llvm3EVT19getScalarSizeInBitsEv.exit ]
  %i.bn = icmp ne i32 %i.bm, 171
  %.not73 = select i1 %i.bn, i1 true, i1 %.not118
  br i1 %.not73, label %.thread110, label %bb.r

bb.r:                                             ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.096.0.copyload, i64 48 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !538 ; 2 uses
  %.sroa.0.0.copyload.i.i.i78 = load i16, ptr %i.bp, align 8, !tbaa !187 ; 4 uses
  %.sroa.21.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %.sroa.21.0.copyload.i.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i, align 8, !tbaa !189
  store i16 %.sroa.0.0.copyload.i.i.i78, ptr %6, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %.sroa.21.0.copyload.i.i.i, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.096.0.copyload, i64 88 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !1237
  %.not.i.i.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i.i78, 0
  br i1 %.not.i.i.i.i, label %_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i.i, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %bb.r
  %i.bt = add i16 %.sroa.0.0.copyload.i.i.i78, -163
  %spec.select.i.i.i.i.i = icmp ult i16 %i.bt, 53
  br i1 %spec.select.i.i.i.i.i, label %bb.s, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i.i

_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i.i:     ; preds = %bb.r
  %i.bu = call noundef zeroext i1 @_ZNK4llvm3EVT24isExtendedScalableVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #28
  br i1 %i.bu, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i.i, %.split.i.i.i
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.28) #29
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i.i: ; preds = %.split.i.i.i
  %i.bv = zext i16 %.sroa.0.0.copyload.i.i.i78 to i64
  %i.bw = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.bv
  %i.bx = getelementptr i8, ptr %i.bw, i64 -2
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !170
  %i.bz = zext i16 %i.by to i32
  br label %_ZNK4llvm19ShuffleVectorSDNode7isSplatEv.exit

bb.t:                                             ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i.i
  %i.ca = call noundef i32 @_ZNK4llvm3EVT28getExtendedVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #28
  br label %_ZNK4llvm19ShuffleVectorSDNode7isSplatEv.exit

_ZNK4llvm19ShuffleVectorSDNode7isSplatEv.exit:    ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i.i, %bb.t
  %i.cb = phi i32 [ %i.bz, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i.i ], [ %i.ca, %bb.t ]
  %i.cc = zext i32 %i.cb to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.cd = call noundef zeroext i1 @_ZN4llvm19ShuffleVectorSDNode11isSplatMaskENS_8ArrayRefIiEE(ptr %i.bs, i64 %i.cc) #27
  br i1 %i.cd, label %bb.u, label %.thread110

bb.u:                                             ; preds = %_ZNK4llvm19ShuffleVectorSDNode7isSplatEv.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.096.0.copyload, i64 40
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !1021
  %.sroa.088.0.copyload = load ptr, ptr %i.cf, align 8, !tbaa !597 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.cg = load ptr, ptr %i.bo, align 8, !tbaa !538 ; 2 uses
  %.sroa.0.0.copyload.i.i.i79 = load i16, ptr %i.cg, align 8, !tbaa !187 ; 4 uses
  %.sroa.21.0..sroa_idx.i.i.i80 = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %.sroa.21.0.copyload.i.i.i81 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i80, align 8, !tbaa !189
  store i16 %.sroa.0.0.copyload.i.i.i79, ptr %5, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %.sroa.21.0.copyload.i.i.i81, ptr %i.ch, align 8
  %i.ci = load ptr, ptr %i.br, align 8, !tbaa !1237 ; 2 uses
  %.not.i.i.i.i82 = icmp eq i16 %.sroa.0.0.copyload.i.i.i79, 0
  br i1 %.not.i.i.i.i82, label %_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i.i87, label %.split.i.i.i83

.split.i.i.i83:                                   ; preds = %bb.u
  %i.cj = add i16 %.sroa.0.0.copyload.i.i.i79, -163
  %spec.select.i.i.i.i.i84 = icmp ult i16 %i.cj, 53
  br i1 %spec.select.i.i.i.i.i84, label %bb.v, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i.i85

_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i.i87:   ; preds = %bb.u
  %i.ck = call noundef zeroext i1 @_ZNK4llvm3EVT24isExtendedScalableVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #28
  br i1 %i.ck, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i.i87, %.split.i.i.i83
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.28) #29
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i.i85: ; preds = %.split.i.i.i83
  %i.cl = zext i16 %.sroa.0.0.copyload.i.i.i79 to i64
  %i.cm = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.cl
  %i.cn = getelementptr i8, ptr %i.cm, i64 -2
  %i.co = load i16, ptr %i.cn, align 2, !tbaa !170
  %i.cp = zext i16 %i.co to i32
  br label %_ZNK4llvm19ShuffleVectorSDNode7getMaskEv.exit.i

bb.w:                                             ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i.i87
  %i.cq = call noundef i32 @_ZNK4llvm3EVT28getExtendedVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #28
  br label %_ZNK4llvm19ShuffleVectorSDNode7getMaskEv.exit.i

_ZNK4llvm19ShuffleVectorSDNode7getMaskEv.exit.i:  ; preds = %bb.w, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i.i85
  %i.cr = phi i32 [ %i.cp, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i.i85 ], [ %i.cq, %bb.w ] ; 2 uses
  %i.cs = zext i32 %i.cr to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %.idx.i.i = shl nuw nsw i64 %i.cs, 2
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ci, i64 %.idx.i.i
  %.not17.i.i = icmp eq i32 %i.cr, 0
  br i1 %.not17.i.i, label %_ZNK4llvm19ShuffleVectorSDNode13getSplatIndexEv.exit.thread, label %.lr.ph.i.i

bb.x:                                             ; preds = %.lr.ph.i.i
  %i.cu = getelementptr inbounds nuw i8, ptr %.01018.i.i, i64 4 ; 2 uses
  %.not.i.i86 = icmp eq ptr %i.cu, %i.ct
  br i1 %.not.i.i86, label %_ZNK4llvm19ShuffleVectorSDNode13getSplatIndexEv.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK4llvm19ShuffleVectorSDNode7getMaskEv.exit.i, %bb.x
  %.01018.i.i = phi ptr [ %i.cu, %bb.x ], [ %i.ci, %_ZNK4llvm19ShuffleVectorSDNode7getMaskEv.exit.i ] ; 2 uses
  %i.cv = load i32, ptr %.01018.i.i, align 4, !tbaa !158 ; 3 uses
  %i.cw = icmp slt i32 %i.cv, 0
  br i1 %i.cw, label %bb.x, label %_ZNK4llvm19ShuffleVectorSDNode13getSplatIndexEv.exit

_ZNK4llvm19ShuffleVectorSDNode13getSplatIndexEv.exit: ; preds = %.lr.ph.i.i
  %i.cx = icmp eq i32 %i.cv, 0
  br i1 %i.cx, label %_ZNK4llvm19ShuffleVectorSDNode13getSplatIndexEv.exit.thread, label %_ZNK4llvm19ShuffleVectorSDNode13getSplatIndexEv.exit._crit_edge

_ZNK4llvm19ShuffleVectorSDNode13getSplatIndexEv.exit._crit_edge: ; preds = %_ZNK4llvm19ShuffleVectorSDNode13getSplatIndexEv.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.sroa.088.0.copyload, i64 24
  %.pre123 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !607
  %i.cy = zext nneg i32 %i.cv to i64
  br label %bb.y

_ZNK4llvm19ShuffleVectorSDNode13getSplatIndexEv.exit.thread: ; preds = %bb.x, %_ZNK4llvm19ShuffleVectorSDNode7getMaskEv.exit.i, %_ZNK4llvm19ShuffleVectorSDNode13getSplatIndexEv.exit
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.088.0.copyload, i64 24
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !607 ; 2 uses
  %i.db = icmp eq i32 %i.da, 174
  br i1 %i.db, label %.split, label %bb.y

.split:                                           ; preds = %_ZNK4llvm19ShuffleVectorSDNode13getSplatIndexEv.exit.thread
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.088.0.copyload, i64 40
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !1021
  br label %bb.z

bb.y:                                             ; preds = %_ZNK4llvm19ShuffleVectorSDNode13getSplatIndexEv.exit._crit_edge, %_ZNK4llvm19ShuffleVectorSDNode13getSplatIndexEv.exit.thread
  %i.de = phi i32 [ %i.da, %_ZNK4llvm19ShuffleVectorSDNode13getSplatIndexEv.exit.thread ], [ %.pre123, %_ZNK4llvm19ShuffleVectorSDNode13getSplatIndexEv.exit._crit_edge ]
  %i.df = phi i64 [ 0, %_ZNK4llvm19ShuffleVectorSDNode13getSplatIndexEv.exit.thread ], [ %i.cy, %_ZNK4llvm19ShuffleVectorSDNode13getSplatIndexEv.exit._crit_edge ]
  %i.dg = icmp eq i32 %i.de, 162
  br i1 %i.dg, label %.split70, label %.thread110

.split70:                                         ; preds = %bb.y
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.088.0.copyload, i64 40
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !1021
  %i.dj = getelementptr inbounds nuw [40 x i8], ptr %i.di, i64 %i.df
  br label %bb.z

bb.z:                                             ; preds = %.split, %.split70
  %phi.call = phi ptr [ %i.dd, %.split ], [ %i.dj, %.split70 ]
  %i.dk = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 230, ptr noundef nonnull align 8 dereferenceable(12) %9, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %phi.call) #27 ; 2 uses
  %.fca.0.extract7 = extractvalue { ptr, i32 } %i.dk, 0
  %.fca.1.extract8 = extractvalue { ptr, i32 } %i.dk, 1
  %.sroa.04.0.copyload = load i16, ptr %10, align 8, !tbaa !187
  %.sroa.26.0.copyload = load ptr, ptr %i.o, align 8, !tbaa !189
  store ptr %.fca.0.extract7, ptr %17, align 8, !tbaa !597
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i32 %.fca.1.extract8, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !158
  %i.dl = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(12) %9, i16 %.sroa.04.0.copyload, ptr %.sroa.26.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %8, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %17) #27 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.dl, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.dl, 1
  br label %.thread110

.thread110:                                       ; preds = %bb.y, %_ZNK4llvm19ShuffleVectorSDNode7isSplatEv.exit, %.thread, %bb.z, %bb.q
  %.sroa.068.7 = phi ptr [ %.sroa.068.1, %bb.q ], [ %.fca.0.extract, %bb.z ], [ %1, %.thread ], [ %1, %_ZNK4llvm19ShuffleVectorSDNode7isSplatEv.exit ], [ %1, %bb.y ]
  %.sroa.569.7 = phi i32 [ %.sroa.569.1, %bb.q ], [ %.fca.1.extract, %bb.z ], [ %2, %.thread ], [ %2, %_ZNK4llvm19ShuffleVectorSDNode7isSplatEv.exit ], [ %2, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.068.7, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.569.7, 1
  ret { ptr, i32 } %.fca.1.insert
}

declare { ptr, i32 } @_ZNK4llvm17BuildVectorSDNode13getSplatValueEPNS_9BitVectorE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZNK4llvm21SystemZTargetLowering9lowerFSHLENS_7SDValueERNS_12SelectionDAGE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(518496) %0, ptr nofree readonly captures(none) %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(920) %3) local_unnamed_addr #3 align 2 {
bb.a:
  %4 = alloca %"class.llvm::SDLoc", align 8       ; 10 uses
  %5 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %6 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %7 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %8 = alloca %"class.llvm::SmallVector.567", align 8 ; 11 uses
  %9 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %10 = alloca %"class.llvm::ArrayRef.332", align 8 ; 3 uses
  %11 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %12 = alloca %"class.llvm::ArrayRef.332", align 8 ; 3 uses
  %13 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %14 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %15 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = load i64, ptr %i.a, align 8, !tbaa !221
  store i64 %i.b, ptr %4, align 8, !tbaa !221
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.e = load i32, ptr %i.d, align 4, !tbaa !604
  store i32 %i.e, ptr %i.c, align 8, !tbaa !605
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1021 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !594  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !607
  switch i32 %i.k, label %.critedge [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit: ; preds = %bb.a, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !608  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.p = load i32, ptr %i.o, align 8, !tbaa !205
  %i.q = icmp ult i32 %i.p, 65
  %i.r = load ptr, ptr %i.n, align 8
  %spec.select.i.i.i = select i1 %i.q, ptr %i.n, ptr %i.r
  %.0.i.i.i116 = load i64, ptr %spec.select.i.i.i, align 8, !tbaa !164 ; 2 uses
  %i.s = and i64 %.0.i.i.i116, 127                ; 3 uses
  %i.t = and i64 %.0.i.i.i116, 7                  ; 2 uses
  %i.u = icmp eq i64 %i.t, 0                      ; 2 uses
  br i1 %i.u, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 518440
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !44, !nonnull !19, !align !74
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 387
  %i.y = load i8, ptr %i.x, align 1, !tbaa !177, !range !18, !noundef !19
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit
  %.sroa.084.0.copyload = load ptr, ptr %i.g, align 8, !tbaa !597
  %.sroa.285.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.285.0.copyload = load i32, ptr %.sroa.285.0..sroa_idx, align 8, !tbaa !158
  %i.aa = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i16 48, ptr null, ptr %.sroa.084.0.copyload, i32 %.sroa.285.0.copyload) #27 ; 2 uses
  %.fca.0.extract80 = extractvalue { ptr, i32 } %i.aa, 0 ; 2 uses
  %.fca.1.extract81 = extractvalue { ptr, i32 } %i.aa, 1 ; 2 uses
  %i.ab = load ptr, ptr %i.f, align 8, !tbaa !1021 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %.sroa.065.0.copyload = load ptr, ptr %i.ac, align 8, !tbaa !597
  %.sroa.266.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %.sroa.266.0.copyload = load i32, ptr %.sroa.266.0..sroa_idx, align 8, !tbaa !158
  %i.ad = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i16 48, ptr null, ptr %.sroa.065.0.copyload, i32 %.sroa.266.0.copyload) #27 ; 2 uses
  %.fca.0.extract61 = extractvalue { ptr, i32 } %i.ad, 0 ; 4 uses
  %.fca.1.extract62 = extractvalue { ptr, i32 } %i.ad, 1 ; 4 uses
  %i.ae = icmp samesign ugt i64 %i.s, 120
  br i1 %i.ae, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr %.fca.0.extract80, ptr %5, align 8, !tbaa !597
  %.sroa.588.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %.fca.1.extract81, ptr %.sroa.588.0..sroa_idx, align 8, !tbaa !158
  store ptr %.fca.0.extract61, ptr %6, align 8, !tbaa !597
  %.sroa.771.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.fca.1.extract62, ptr %.sroa.771.0..sroa_idx, align 8, !tbaa !158
  %i.af = sub nuw nsw i64 128, %i.s
  %i.ag = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef %i.af, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #27 ; 2 uses
  %.fca.0.extract54 = extractvalue { ptr, i32 } %i.ag, 0
  %.fca.1.extract55 = extractvalue { ptr, i32 } %i.ag, 1
  store ptr %.fca.0.extract54, ptr %7, align 8
  %.sroa.257.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %.fca.1.extract55, ptr %.sroa.257.0..sroa_idx, align 8
  %i.ah = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 593, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 48, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %5, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %6, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %7) #27 ; 2 uses
  %.fca.0.extract50 = extractvalue { ptr, i32 } %i.ah, 0
  %.fca.1.extract51 = extractvalue { ptr, i32 } %i.ah, 1
  %i.ai = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i16 9, ptr null, ptr %.fca.0.extract50, i32 %.fca.1.extract51) #27 ; 2 uses
  %.fca.0.extract43 = extractvalue { ptr, i32 } %i.ai, 0
  %.fca.1.extract44 = extractvalue { ptr, i32 } %i.ai, 1
  br label %.critedge

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  store ptr %i.aj, ptr %8, align 8, !tbaa !21
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 16, ptr %i.al, align 4, !tbaa !209
  store i32 16, ptr %i.ak, align 8, !tbaa !208
  %i.am = lshr i64 %i.s, 3                        ; 4 uses
  %i.an = trunc nuw nsw i64 %i.am to i32
  %i.ao = insertelement <4 x i32> poison, i32 %i.an, i64 0
  %i.ap = shufflevector <4 x i32> %i.ao, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.aq = add nuw nsw <4 x i32> %i.ap, <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.aq, ptr %i.aj, align 8, !tbaa !158
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.as = trunc nuw nsw i64 %i.am to i32
  %i.at = insertelement <4 x i32> poison, i32 %i.as, i64 0
  %i.au = shufflevector <4 x i32> %i.at, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.av = add nuw nsw <4 x i32> %i.au, <i32 4, i32 5, i32 6, i32 7>
  store <4 x i32> %i.av, ptr %i.ar, align 8, !tbaa !158
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.ax = trunc nuw nsw i64 %i.am to i32
  %i.ay = insertelement <4 x i32> poison, i32 %i.ax, i64 0
  %i.az = shufflevector <4 x i32> %i.ay, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ba = add nuw nsw <4 x i32> %i.az, <i32 8, i32 9, i32 10, i32 11>
  store <4 x i32> %i.ba, ptr %i.aw, align 8, !tbaa !158
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.bc = trunc nuw nsw i64 %i.am to i32
  %i.bd = insertelement <4 x i32> poison, i32 %i.bc, i64 0
  %i.be = shufflevector <4 x i32> %i.bd, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bf = add nuw nsw <4 x i32> %i.be, <i32 12, i32 13, i32 14, i32 15>
  store <4 x i32> %i.bf, ptr %i.bb, align 8, !tbaa !158
  store ptr %.fca.0.extract61, ptr %9, align 8, !tbaa !597
  %.sroa.771.0..sroa_idx72 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %.fca.1.extract62, ptr %.sroa.771.0..sroa_idx72, align 8, !tbaa !158
  store ptr %i.aj, ptr %10, align 8, !tbaa !1018
  %i.bg = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 16, ptr %i.bg, align 8, !tbaa !1020
  %i.bh = call { ptr, i32 } @_ZN4llvm12SelectionDAG16getVectorShuffleENS_3EVTERKNS_5SDLocENS_7SDValueES5_NS_8ArrayRefIiEE(ptr noundef nonnull align 8 dereferenceable(920) %3, i16 48, ptr null, ptr noundef nonnull align 8 dereferenceable(12) %4, ptr %.fca.0.extract80, i32 %.fca.1.extract81, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %9, ptr noundef nonnull byval(%"class.llvm::ArrayRef.332") align 8 %10) #27 ; 2 uses
  %.fca.0.extract29 = extractvalue { ptr, i32 } %i.bh, 0 ; 2 uses
  %.fca.1.extract30 = extractvalue { ptr, i32 } %i.bh, 1 ; 2 uses
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bi = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i16 9, ptr null, ptr %.fca.0.extract29, i32 %.fca.1.extract30) #27
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  store ptr %.fca.0.extract61, ptr %11, align 8, !tbaa !597
  %.sroa.771.0..sroa_idx74 = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 %.fca.1.extract62, ptr %.sroa.771.0..sroa_idx74, align 8, !tbaa !158
  %i.bj = load ptr, ptr %8, align 8, !tbaa !21
  store ptr %i.bj, ptr %12, align 8, !tbaa !1018
  %i.bk = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bl = load i32, ptr %i.ak, align 8, !tbaa !208
  %i.bm = zext i32 %i.bl to i64
  store i64 %i.bm, ptr %i.bk, align 8, !tbaa !1020
  %i.bn = call { ptr, i32 } @_ZN4llvm12SelectionDAG16getVectorShuffleENS_3EVTERKNS_5SDLocENS_7SDValueES5_NS_8ArrayRefIiEE(ptr noundef nonnull align 8 dereferenceable(920) %3, i16 48, ptr null, ptr noundef nonnull align 8 dereferenceable(12) %4, ptr %.fca.0.extract61, i32 %.fca.1.extract62, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %11, ptr noundef nonnull byval(%"class.llvm::ArrayRef.332") align 8 %12) #27 ; 2 uses
  %.fca.0.extract13 = extractvalue { ptr, i32 } %i.bn, 0
  %.fca.1.extract14 = extractvalue { ptr, i32 } %i.bn, 1
  store ptr %.fca.0.extract29, ptr %13, align 8, !tbaa !597
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i32 %.fca.1.extract30, ptr %.sroa.537.0..sroa_idx, align 8, !tbaa !158
  store ptr %.fca.0.extract13, ptr %14, align 8, !tbaa !597
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i32 %.fca.1.extract14, ptr %.sroa.421.0..sroa_idx, align 8, !tbaa !158
  %i.bo = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %3, i64 noundef %i.t, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #27 ; 2 uses
  %.fca.0.extract8 = extractvalue { ptr, i32 } %i.bo, 0
  %.fca.1.extract9 = extractvalue { ptr, i32 } %i.bo, 1
  store ptr %.fca.0.extract8, ptr %15, align 8
  %.sroa.211.0..sroa_idx = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i32 %.fca.1.extract9, ptr %.sroa.211.0..sroa_idx, align 8
  %i.bp = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 592, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 48, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %13, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %14, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %15) #27 ; 2 uses
  %.fca.0.extract4 = extractvalue { ptr, i32 } %i.bp, 0
  %.fca.1.extract5 = extractvalue { ptr, i32 } %i.bp, 1
  %i.bq = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i16 9, ptr null, ptr %.fca.0.extract4, i32 %.fca.1.extract5) #27
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.bi, %bb.f ], [ %i.bq, %bb.g ] ; 2 uses
  %.sroa.0139.0 = extractvalue { ptr, i32 } %.pn, 0
  %.sroa.6.0 = extractvalue { ptr, i32 } %.pn, 1
  %i.br = load ptr, ptr %8, align 8, !tbaa !21    ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.aj
  br i1 %i.bs, label %_ZN4llvm11SmallVectorIiLj16EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @free(ptr noundef %i.br) #27
  br label %_ZN4llvm11SmallVectorIiLj16EED2Ev.exit

_ZN4llvm11SmallVectorIiLj16EED2Ev.exit:           ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
end_hunk_2
begin_hunk_3_@"_ZZNK4llvm21SystemZTargetLowering12combineSTOREEPNS_6SDNodeERNS_14TargetLowering15DAGCombinerInfoEENK3$_1clENS_7SDValueE":bb.a
  store i16 %.sroa.0.0.copyload.i.sink, ptr %i.ae, align 8, !tbaa !187
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %.sroa.21.0.copyload.i.sink, ptr %.sroa.417.0..sroa_idx, align 8, !tbaa !189
  %i.af = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !594 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !607
  switch i32 %i.ai, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.thread [
    i32 37, label %_ZNK4llvm3EVT13getSizeInBitsEv.exit
    i32 12, label %_ZNK4llvm3EVT13getSizeInBitsEv.exit
  ]

_ZNK4llvm3EVT13getSizeInBitsEv.exit:              ; preds = %bb.f, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.aj = zext nneg i16 %.sroa.0.0.copyload.i.i to i64
  %i.ak = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.aj ; 2 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr i8, ptr %i.ak, i64 -8
  %.sroa.2.0.copyload.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.al = trunc nuw i8 %.sroa.2.0.copyload.i.i to i1
  br i1 %i.al, label %bb.g, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.g:                                             ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.30) #29
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit
  %i.am = getelementptr i8, ptr %i.ak, i64 -16
  %.sroa.0.0.copyload.i.i32 = load i64, ptr %i.am, align 16
  %i.an = trunc i64 %.sroa.0.0.copyload.i.i32 to i32 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 88
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !608 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !205
  %i.at = icmp ult i32 %i.as, 65
  %i.au = load ptr, ptr %i.aq, align 8
  %spec.select.i.i.i = select i1 %i.at, ptr %i.aq, ptr %i.au
  %.0.i.i.i35 = load i64, ptr %spec.select.i.i.i, align 8, !tbaa !164 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i32 %i.an, ptr %i.av, align 8, !tbaa !205
  %i.aw = icmp ult i32 %i.an, 65
  br i1 %i.aw, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  store i64 %.0.i.i.i35, ptr %4, align 8, !tbaa !164
  br label %_ZN4llvm5APIntC2Ejmbb.exit

bb.i:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %4, i64 noundef %.0.i.i.i35, i1 noundef zeroext false) #27
  br label %_ZN4llvm5APIntC2Ejmbb.exit

_ZN4llvm5APIntC2Ejmbb.exit:                       ; preds = %bb.h, %bb.i
  call void @_ZN4llvm25SystemZVectorConstantInfoC1ENS_5APIntE(ptr noundef nonnull align 8 dereferenceable(90) %3, ptr nofree noundef nonnull align 8 dereferenceable(16) %4) #27
  %i.ax = load i32, ptr %i.av, align 8, !tbaa !205
  %i.ay = icmp ugt i32 %i.ax, 64
  br i1 %i.ay, label %bb.j, label %_ZN4llvm5APIntD2Ev.exit

bb.j:                                             ; preds = %_ZN4llvm5APIntC2Ejmbb.exit
  %i.az = load ptr, ptr %4, align 8, !tbaa !164   ; 2 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %_ZN4llvm5APIntD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZdaPv(ptr noundef nonnull %i.az) #30
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %_ZN4llvm5APIntC2Ejmbb.exit, %bb.j, %bb.k
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 518440
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !44, !nonnull !19, !align !74
  %i.bd = call noundef zeroext i1 @_ZN4llvm25SystemZVectorConstantInfo21isVectorConstantLegalERKNS_16SystemZSubtargetE(ptr noundef nonnull align 8 dereferenceable(90) %3, ptr noundef nonnull align 8 dereferenceable(519424) %i.bc)
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.bf = load i32, ptr %i.be, align 8
  %i.bg = icmp eq i32 %i.bf, 583
  %or.cond = select i1 %i.bd, i1 %i.bg, i1 false
  br i1 %or.cond, label %bb.l, label %bb.p

bb.l:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !21
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !158
  %i.bk = icmp eq i32 %i.bj, 1
  br i1 %i.bk, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.bl = load ptr, ptr %0, align 8, !tbaa !1319, !nonnull !19, !align !74 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.bn = load i16, ptr %i.bm, align 8, !tbaa !212 ; 3 uses
  %i.bo = add i16 %i.bn, -19
  %spec.select.i.i = icmp ult i16 %i.bo, 197
  br i1 %spec.select.i.i, label %bb.n, label %_ZNK4llvm3MVT13getScalarTypeEv.exit

bb.n:                                             ; preds = %bb.m
  %i.bp = zext nneg i16 %i.bn to i64
  %i.bq = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.bp
  %i.br = getelementptr i8, ptr %i.bq, i64 -2
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !187
  br label %_ZNK4llvm3MVT13getScalarTypeEv.exit

_ZNK4llvm3MVT13getScalarTypeEv.exit:              ; preds = %bb.m, %bb.n
  %.sroa.0.0.i = phi i16 [ %i.bs, %bb.n ], [ %i.bn, %bb.m ] ; 2 uses
  %i.bt = load i16, ptr %i.bl, align 8, !tbaa !705
  %.not.i.i36 = icmp eq i16 %i.bt, %.sroa.0.0.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = icmp eq ptr %i.bv, null
  %.not4.i37 = select i1 %.not.i.i36, i1 %i.bw, i1 false
  br i1 %.not4.i37, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZNK4llvm3MVT13getScalarTypeEv.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !1320, !nonnull !19, !align !74
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.039.0.copyload, i64 40
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !1021 ; 2 uses
  %.sroa.06.0.copyload = load ptr, ptr %i.ca, align 8, !tbaa !597
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %.sroa.27.0.copyload = load i32, ptr %.sroa.27.0..sroa_idx, align 8, !tbaa !158
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !1321, !nonnull !19, !align !74
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !1299 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 72
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !221
  store i64 %i.cf, ptr %5, align 8, !tbaa !221
  %i.cg = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 68
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !604
  store i32 %i.ci, ptr %i.cg, align 8, !tbaa !605
  %i.cj = call { ptr, i32 } @_ZN4llvm12SelectionDAG14getZExtOrTruncENS_7SDValueERKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.by, ptr %.sroa.06.0.copyload, i32 %.sroa.27.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 %.sroa.0.0.i, ptr null) #27 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.cj, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.cj, 1
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !1322, !nonnull !19, !align !74 ; 2 uses
  store ptr %.fca.0.extract, ptr %i.cl, align 8, !tbaa !597
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store i32 %.fca.1.extract, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !158
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZNK4llvm3MVT13getScalarTypeEv.exit, %bb.l, %_ZN4llvm5APIntD2Ev.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !21 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %_ZN4llvm11SmallVectorIjLj2EED2Ev.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @free(ptr noundef %i.cn) #27
  br label %_ZN4llvm11SmallVectorIjLj2EED2Ev.exit.i

_ZN4llvm11SmallVectorIjLj2EED2Ev.exit.i:          ; preds = %bb.q, %bb.p
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !205
  %i.cs = icmp ugt i32 %i.cr, 64
  br i1 %i.cs, label %bb.r, label %_ZN4llvm5APIntD2Ev.exit.i

bb.r:                                             ; preds = %_ZN4llvm11SmallVectorIjLj2EED2Ev.exit.i
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !164 ; 2 uses
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %_ZN4llvm5APIntD2Ev.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_ZdaPv(ptr noundef nonnull %i.cu) #30
  br label %_ZN4llvm5APIntD2Ev.exit.i

_ZN4llvm5APIntD2Ev.exit.i:                        ; preds = %bb.s, %bb.r, %_ZN4llvm11SmallVectorIjLj2EED2Ev.exit.i
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !205
  %i.cy = icmp ugt i32 %i.cx, 64
  br i1 %i.cy, label %bb.t, label %_ZN4llvm5APIntD2Ev.exit1.i

bb.t:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit.i
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !164 ; 2 uses
  %i.db = icmp eq ptr %i.da, null
  br i1 %i.db, label %_ZN4llvm5APIntD2Ev.exit1.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @_ZdaPv(ptr noundef nonnull %i.da) #30
  br label %_ZN4llvm5APIntD2Ev.exit1.i

_ZN4llvm5APIntD2Ev.exit1.i:                       ; preds = %bb.u, %bb.t, %_ZN4llvm5APIntD2Ev.exit.i
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !205
  %i.de = icmp ugt i32 %i.dd, 64
  br i1 %i.de, label %bb.v, label %_ZN4llvm25SystemZVectorConstantInfoD2Ev.exit

bb.v:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit1.i
  %i.df = load ptr, ptr %3, align 8, !tbaa !164   ; 2 uses
  %i.dg = icmp eq ptr %i.df, null
  br i1 %i.dg, label %_ZN4llvm25SystemZVectorConstantInfoD2Ev.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @_ZdaPv(ptr noundef nonnull %i.df) #30
  br label %_ZN4llvm25SystemZVectorConstantInfoD2Ev.exit

_ZN4llvm25SystemZVectorConstantInfoD2Ev.exit:     ; preds = %_ZN4llvm5APIntD2Ev.exit1.i, %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.thread

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.thread: ; preds = %bb.c, %bb.b, %bb.f, %_ZN4llvm25SystemZVectorConstantInfoD2Ev.exit, %bb.a
  ret void
}

declare { ptr, i32 } @_ZN4llvm12SelectionDAG8getStoreENS_7SDValueERKNS_5SDLocES1_S1_PNS_17MachineMemOperandE(ptr noundef nonnull align 8 dereferenceable(920), ptr, i32, ptr noundef nonnull align 8 dereferenceable(12), ptr, i32, ptr noundef byval(%"class.llvm::SDValue") align 8, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZNK4llvm21SystemZTargetLowering21combineVECTOR_SHUFFLEEPNS_6SDNodeERNS_14TargetLowering15DAGCombinerInfoE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(518496) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %4 = alloca [2 x %"class.llvm::SDValue"], align 16 ; 5 uses
  %5 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %6 = alloca %"class.llvm::ArrayRef.497", align 8 ; 3 uses
  %7 = alloca %"struct.llvm::EVT", align 8        ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1281, !nonnull !19, !align !74 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1021 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !594  ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !607
  %i.h = icmp ne i32 %i.g, 316
  %.not3.i = icmp eq ptr %i.e, null
  %.not.i = or i1 %.not3.i, %i.h
  br i1 %.not.i, label %.critedge, label %_ZN4llvm3ISD13isNON_EXTLoadEPKNS_6SDNodeE.exit

_ZN4llvm3ISD13isNON_EXTLoadEPKNS_6SDNodeE.exit:   ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.j = load i16, ptr %i.i, align 8
  %i.k = and i16 %i.j, 3072
  %i.l = icmp eq i16 %i.k, 0
  br i1 %i.l, label %bb.b, label %.critedge

bb.b:                                             ; preds = %_ZN4llvm3ISD13isNON_EXTLoadEPKNS_6SDNodeE.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !757
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %.sroa.018.022.i.i = load ptr, ptr %i.o, align 8, !tbaa !1035 ; 2 uses
  %.not23.i.i = icmp eq ptr %.sroa.018.022.i.i, null
  br i1 %.not23.i.i, label %.critedge, label %.lr.ph.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %.214.i.i = select i1 %i.s, i32 %.01224.i.i, i32 0 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i, i64 32
  %.sroa.018.0.i.i = load ptr, ptr %i.p, align 8, !tbaa !1035 ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.018.0.i.i, null
  br i1 %.not.i.i, label %_ZNK4llvm7SDValue9hasOneUseEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %.sroa.018.025.i.i = phi ptr [ %.sroa.018.0.i.i, %bb.c ], [ %.sroa.018.022.i.i, %bb.b ] ; 2 uses
  %.01224.i.i = phi i32 [ %.214.i.i, %bb.c ], [ 1, %bb.b ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i, i64 8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !757
  %i.s = icmp ne i32 %i.r, %i.n                   ; 2 uses
  %i.t = icmp ne i32 %.01224.i.i, 0
  %cond.i.i = select i1 %i.s, i1 true, i1 %i.t
  br i1 %cond.i.i, label %bb.c, label %.critedge

_ZNK4llvm7SDValue9hasOneUseEv.exit:               ; preds = %bb.c
  %i.u = icmp eq i32 %.214.i.i, 0
  br i1 %i.u, label %bb.d, label %.critedge

bb.d:                                             ; preds = %_ZNK4llvm7SDValue9hasOneUseEv.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 518440
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !44, !nonnull !19, !align !74
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 387
  %i.y = load i8, ptr %i.x, align 1, !tbaa !177, !range !18, !noundef !19
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !538 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.ab, align 8, !tbaa !187 ; 4 uses
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !189
  store i16 %.sroa.0.0.copyload.i.i, ptr %3, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.sroa.21.0.copyload.i.i, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1237
  %.not.i.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not.i.i.i, label %_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i, label %.split.i.i

.split.i.i:                                       ; preds = %bb.e
  %i.af = add i16 %.sroa.0.0.copyload.i.i, -163
  %spec.select.i.i.i.i = icmp ult i16 %i.af, 53
  br i1 %spec.select.i.i.i.i, label %bb.f, label %_ZNK4llvm19ShuffleVectorSDNode7getMaskEv.exit

_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i:       ; preds = %bb.e
  %i.ag = call noundef zeroext i1 @_ZNK4llvm3EVT24isExtendedScalableVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #28
  br i1 %i.ag, label %bb.f, label %_ZNK4llvm19ShuffleVectorSDNode7getMaskEv.exit

bb.f:                                             ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i, %.split.i.i
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.28) #29
  unreachable

_ZNK4llvm19ShuffleVectorSDNode7getMaskEv.exit:    ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i, %.split.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.ah = call fastcc noundef zeroext i1 @_ZL19isVectorElementSwapN4llvm8ArrayRefIiEENS_3EVTE(ptr %i.ae, i16 %.sroa.0.0.copyload.i.i)
  br i1 %i.ah, label %bb.g, label %.critedge

bb.g:                                             ; preds = %_ZNK4llvm19ShuffleVectorSDNode7getMaskEv.exit
  %i.ai = load ptr, ptr %i.c, align 8, !tbaa !1021
  %.sroa.058.0.copyload = load ptr, ptr %i.ai, align 8, !tbaa !597 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.058.0.copyload, i64 40
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !1021 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(12) %i.ak, i64 12, i1 false), !tbaa.struct !615
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.al, ptr noundef nonnull align 8 dereferenceable(12) %i.am, i64 12, i1 false), !tbaa.struct !615
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !221
  store i64 %i.ao, ptr %5, align 8, !tbaa !221
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !604
  store i32 %i.ar, ptr %i.ap, align 8, !tbaa !605
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.058.0.copyload, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !538 ; 2 uses
  %.sroa.0.0.copyload.i45 = load i16, ptr %i.at, align 8, !tbaa !187
  %.sroa.21.0..sroa_idx.i46 = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.sroa.21.0.copyload.i47 = load ptr, ptr %.sroa.21.0..sroa_idx.i46, align 8, !tbaa !189
  %i.au = call { ptr, i32 } @_ZN4llvm12SelectionDAG9getVTListENS_3EVTES1_(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i16 %.sroa.0.0.copyload.i45, ptr %.sroa.21.0.copyload.i47, i16 1, ptr null) #27 ; 2 uses
  %i.av = extractvalue { ptr, i32 } %i.au, 0
  %i.aw = extractvalue { ptr, i32 } %i.au, 1
  store ptr %4, ptr %6, align 8, !tbaa !600
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 2, ptr %i.ax, align 8, !tbaa !603
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.058.0.copyload, i64 88
  %.sroa.0.0.copyload.i50 = load i16, ptr %i.ay, align 8, !tbaa !187
  %.sroa.21.0..sroa_idx.i51 = getelementptr inbounds nuw i8, ptr %.sroa.058.0.copyload, i64 96
  %.sroa.21.0.copyload.i52 = load ptr, ptr %.sroa.21.0..sroa_idx.i51, align 8, !tbaa !189
  store i16 %.sroa.0.0.copyload.i50, ptr %7, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %.sroa.21.0.copyload.i52, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.058.0.copyload, i64 104
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.ba, align 8
  %i.bb = and i64 %.0.copyload.i.i.i.i.i.i, -5
  %i.bc = inttoptr i64 %i.bb to ptr
  %i.bd = call { ptr, i32 } @_ZN4llvm12SelectionDAG19getMemIntrinsicNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEENS_3EVTEPNS_17MachineMemOperandE(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i32 noundef 653, ptr noundef nonnull align 8 dereferenceable(12) %5, ptr %i.av, i32 %i.aw, ptr noundef nonnull byval(%"class.llvm::ArrayRef.497") align 8 %6, ptr noundef nonnull byval(%"struct.llvm::EVT") align 8 %7, ptr noundef %i.bc) #27 ; 2 uses
  %.fca.0.extract11 = extractvalue { ptr, i32 } %i.bd, 0 ; 3 uses
  %.fca.1.extract12 = extractvalue { ptr, i32 } %i.bd, 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.be = call { ptr, i32 } @_ZN4llvm14TargetLowering15DAGCombinerInfo9CombineToEPNS_6SDNodeENS_7SDValueEb(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %1, ptr %.fca.0.extract11, i32 %.fca.1.extract12, i1 noundef zeroext true) #27 ; 0 uses
  %i.bf = call { ptr, i32 } @_ZN4llvm14TargetLowering15DAGCombinerInfo9CombineToEPNS_6SDNodeENS_7SDValueES4_b(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %.sroa.058.0.copyload, ptr %.fca.0.extract11, i32 %.fca.1.extract12, ptr %.fca.0.extract11, i32 1, i1 noundef zeroext true) #27 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph.i.i, %bb.b, %bb.a, %_ZN4llvm3ISD13isNON_EXTLoadEPKNS_6SDNodeE.exit, %_ZNK4llvm7SDValue9hasOneUseEv.exit, %bb.d, %_ZNK4llvm19ShuffleVectorSDNode7getMaskEv.exit, %bb.g
  %.sroa.061.0 = phi ptr [ %1, %bb.g ], [ null, %bb.b ], [ null, %bb.a ], [ null, %_ZN4llvm3ISD13isNON_EXTLoadEPKNS_6SDNodeE.exit ], [ null, %_ZNK4llvm19ShuffleVectorSDNode7getMaskEv.exit ], [ null, %bb.d ], [ null, %_ZNK4llvm7SDValue9hasOneUseEv.exit ], [ null, %.lr.ph.i.i ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.061.0, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 0, 1
  ret { ptr, i32 } %.fca.1.insert
}

declare { ptr, i32 } @_ZN4llvm14TargetLowering15DAGCombinerInfo9CombineToEPNS_6SDNodeENS_7SDValueES4_b(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr, i32, ptr, i32, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZNK4llvm21SystemZTargetLowering25combineEXTRACT_VECTOR_ELTEPNS_6SDNodeERNS_14TargetLowering15DAGCombinerInfoE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(518496) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %"struct.llvm::EVT", align 8        ; 6 uses
  %4 = alloca %"struct.llvm::EVT", align 8        ; 6 uses
  %5 = alloca %"struct.llvm::EVT", align 8        ; 7 uses
  %6 = alloca %"struct.llvm::EVT", align 8        ; 7 uses
  %7 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %8 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %9 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %10 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %11 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %12 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %13 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %14 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1281, !nonnull !19, !align !74 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 518440
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !44, !nonnull !19, !align !74
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 385
  %i.f = load i8, ptr %i.e, align 1, !tbaa !156, !range !18, !noundef !19
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.b, label %.critedge67

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1021 ; 6 uses
  %.sroa.0127.0.copyload = load ptr, ptr %i.i, align 8, !tbaa !597 ; 5 uses
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %.sroa.22.0.copyload = load i32, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !158 ; 3 uses
  %.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %.sroa.29.0.copyload = load i32, ptr %.sroa.29.0..sroa_idx, align 4 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0127.0.copyload, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !607
  %i.l = icmp eq i32 %i.k, 248
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  br i1 %i.l, label %bb.c, label %.critedge
end_hunk_3
begin_hunk_4_@_ZNK4llvm21SystemZTargetLowering17combineGET_CCMASKEPNS_6SDNodeERNS_14TargetLowering15DAGCombinerInfoE:bb.a
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  br label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit: ; preds = %bb.a, %bb.b
  %.0.i.i.i = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !594  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load i32, ptr %i.i, align 8, !tbaa !607
  switch i32 %i.j, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit37.thread [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit37
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit37
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit37: ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit
  %.not78 = icmp eq ptr %.0.i.i.i, null
  br i1 %.not78, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit37.thread, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit37
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 88
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !608  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.o = load i32, ptr %i.n, align 8, !tbaa !205
  %i.p = icmp ult i32 %i.o, 65
  %i.q = load ptr, ptr %i.m, align 8
  %spec.select.i.i.i = select i1 %i.p, ptr %i.m, ptr %i.q
  %.0.i.i.i38 = load i64, ptr %spec.select.i.i.i, align 8, !tbaa !164
  %i.r = trunc i64 %.0.i.i.i38 to i32
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !608  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.w = load i32, ptr %i.v, align 8, !tbaa !205
  %i.x = icmp ult i32 %i.w, 65
  %i.y = load ptr, ptr %i.u, align 8
  %spec.select.i.i.i39 = select i1 %i.x, ptr %i.u, ptr %i.y
  %.0.i.i.i40 = load i64, ptr %spec.select.i.i.i39, align 8, !tbaa !164
  %.sroa.0.0.copyload = load ptr, ptr %i.b, align 8, !tbaa !597 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 24
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !607 ; 2 uses
  %i.ab = icmp eq i32 %i.aa, 230
  br i1 %i.ab, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1021
  %.sroa.0.0.copyload68 = load ptr, ptr %i.ad, align 8, !tbaa !597 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload68, i64 24
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !607
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ae = phi i32 [ %.pre, %bb.d ], [ %i.aa, %bb.c ]
  %.sroa.0.0 = phi ptr [ %.sroa.0.0.copyload68, %bb.d ], [ %.sroa.0.0.copyload, %bb.c ]
  %.not = icmp eq i32 %i.ae, 590
  br i1 %.not, label %bb.f, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit37.thread

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 40
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1021 ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 80
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !594 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !607
  switch i32 %i.ak, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit42 [
    i32 37, label %bb.g
    i32 12, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f
  br label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit42

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit42: ; preds = %bb.f, %bb.g
  %.0.i.i.i41 = phi ptr [ %i.ai, %bb.g ], [ null, %bb.f ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 120
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !594 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !607
  switch i32 %i.ao, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit37.thread [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit44
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit44
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit44: ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit42, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit42
  %.not79 = icmp eq ptr %.0.i.i.i41, null
  br i1 %.not79, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit37.thread, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit44
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i.i.i41, i64 88
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !608 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.at = load i32, ptr %i.as, align 8, !tbaa !205
  %i.au = icmp ult i32 %i.at, 65
  %i.av = load ptr, ptr %i.ar, align 8
  %spec.select.i.i.i45 = select i1 %i.au, ptr %i.ar, ptr %i.av
  %.0.i.i.i46 = load i64, ptr %spec.select.i.i.i45, align 8, !tbaa !164 ; 2 uses
  %i.aw = trunc i64 %.0.i.i.i46 to i32            ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.am, i64 88
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !608 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !205
  %i.bc = icmp ult i32 %i.bb, 65
  %i.bd = load ptr, ptr %i.az, align 8
  %spec.select.i.i.i47 = select i1 %i.bc, ptr %i.az, ptr %i.bd
  %.0.i.i.i48 = load i64, ptr %spec.select.i.i.i47, align 8, !tbaa !164
  %i.be = trunc i64 %.0.i.i.i48 to i32            ; 2 uses
  %i.bf = load ptr, ptr %i.ag, align 8, !tbaa !594 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !607
  switch i32 %i.bh, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit50 [
    i32 37, label %bb.i
    i32 12, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h
  br label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit50

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit50: ; preds = %bb.h, %bb.i
  %.0.i.i.i49 = phi ptr [ %i.bf, %bb.i ], [ null, %bb.h ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !594 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !607
  switch i32 %i.bl, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit37.thread [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit52
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit52
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit52: ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit50, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit50
  %.not80 = icmp eq ptr %.0.i.i.i49, null
  br i1 %.not80, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit37.thread, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit52
  %i.bm = getelementptr inbounds nuw i8, ptr %.0.i.i.i49, i64 88
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !608 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !205
  %i.br = icmp ult i32 %i.bq, 65
  %i.bs = load ptr, ptr %i.bo, align 8
  %spec.select.i.i.i53 = select i1 %i.br, ptr %i.bo, ptr %i.bs
  %.0.i.i.i54 = load i64, ptr %spec.select.i.i.i53, align 8, !tbaa !164
  switch i64 %.0.i.i.i54, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit37.thread [
    i64 1, label %bb.k
    i64 0, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bj, i64 88
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !608 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !205
  %i.by = icmp ult i32 %i.bx, 65
  %i.bz = load ptr, ptr %i.bv, align 8
  %spec.select.i.i.i55 = select i1 %i.by, ptr %i.bv, ptr %i.bz
  %.0.i.i.i56 = load i64, ptr %spec.select.i.i.i55, align 8, !tbaa !164
  %i.ca = icmp eq i64 %.0.i.i.i56, 0
  br i1 %i.ca, label %bb.n, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit37.thread

bb.l:                                             ; preds = %bb.j
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bj, i64 88
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !608 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 24 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !205
  %i.cg = icmp ult i32 %i.cf, 65
  %i.ch = load ptr, ptr %i.cd, align 8
  %spec.select.i.i.i59 = select i1 %i.cg, ptr %i.cd, ptr %i.ch
  %.0.i.i.i60 = load i64, ptr %spec.select.i.i.i59, align 8, !tbaa !164
  %i.ci = icmp eq i64 %.0.i.i.i60, 1
  br i1 %i.ci, label %bb.m, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit37.thread

bb.m:                                             ; preds = %bb.l
  %i.cj = xor i32 %i.be, %i.aw
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.m
  %.0 = phi i32 [ %i.be, %bb.k ], [ %i.cj, %bb.m ]
  %i.ck = xor i32 %i.r, -1
  %i.cl = and i32 %i.aw, %i.ck
  %.not34 = icmp eq i32 %i.cl, 0
  %i.cm = and i64 %.0.i.i.i46, %.0.i.i.i40
  %i.cn = trunc i64 %i.cm to i32
  %.not35 = icmp eq i32 %.0, %i.cn
  %or.cond = select i1 %.not34, i1 %.not35, i1 false
  br i1 %or.cond, label %bb.o, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit37.thread

bb.o:                                             ; preds = %bb.n
  %i.co = getelementptr inbounds nuw i8, ptr %i.ag, i64 160
  %.sroa.070.0.copyload = load ptr, ptr %i.co, align 8, !tbaa !597
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 168
  %.sroa.16.0.copyload = load i32, ptr %.sroa.16.0..sroa_idx, align 8, !tbaa !158
  br label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit37.thread

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit37.thread: ; preds = %bb.j, %bb.k, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit50, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit42, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit, %bb.o, %bb.e, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit44, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit52, %bb.l, %bb.n, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit37
  %.sroa.070.1 = phi ptr [ null, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit37 ], [ null, %bb.k ], [ %.sroa.070.0.copyload, %bb.o ], [ null, %bb.n ], [ null, %bb.j ], [ null, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit52 ], [ null, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit44 ], [ null, %bb.e ], [ null, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit ], [ null, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit42 ], [ null, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit50 ], [ null, %bb.l ]
  %.sroa.16.1 = phi i32 [ 0, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit37 ], [ 0, %bb.k ], [ %.sroa.16.0.copyload, %bb.o ], [ 0, %bb.n ], [ 0, %bb.j ], [ 0, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit52 ], [ 0, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit44 ], [ 0, %bb.e ], [ 0, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit ], [ 0, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit42 ], [ 0, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit50 ], [ 0, %bb.l ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.070.1, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.16.1, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZNK4llvm21SystemZTargetLowering16combineIntDIVREMEPNS_6SDNodeERNS_14TargetLowering15DAGCombinerInfoE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(518496) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1281, !nonnull !19, !align !74 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !538
  %.sroa.0.0.copyload.i = load i16, ptr %i.d, align 8, !tbaa !187 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !1304
  %i.g = icmp eq i32 %i.f, 0
  %i.h = add i16 %.sroa.0.0.copyload.i, -19
  %spec.select.i.i = icmp ult i16 %i.h, 197
  %or.cond14 = select i1 %i.g, i1 %spec.select.i.i, i1 false
  br i1 %or.cond14, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread

_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.j = zext nneg i16 %.sroa.0.0.copyload.i to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.j
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !155
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1021 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %.sroa.01.0.copyload = load ptr, ptr %i.o, align 8, !tbaa !597
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %.sroa.22.0.copyload = load i32, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !158
  %i.p = tail call noundef zeroext i1 @_ZNK4llvm12SelectionDAG37isConstantIntBuildVectorOrConstantIntENS_7SDValueEb(ptr noundef nonnull align 8 dereferenceable(920) %i.b, ptr %.sroa.01.0.copyload, i32 %.sroa.22.0.copyload, i1 noundef zeroext true) #27
  br i1 %i.p, label %bb.c, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.q = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG14UnrollVectorOpEPNS_6SDNodeEj(ptr noundef nonnull align 8 dereferenceable(920) %i.b, ptr noundef nonnull %1, i32 noundef 0) #27 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.q, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.q, 1
  br label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread

_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread: ; preds = %bb.a, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit, %bb.b, %bb.c
  %.sroa.4.0 = phi i32 [ %.fca.1.extract, %bb.c ], [ 0, %bb.a ], [ 0, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit ], [ 0, %bb.b ]
  %.sroa.0.0 = phi ptr [ %.fca.0.extract, %bb.c ], [ null, %bb.a ], [ null, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit ], [ null, %bb.b ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.4.0, 1
  ret { ptr, i32 } %.fca.1.insert
}

declare { ptr, i32 } @_ZN4llvm12SelectionDAG14UnrollVectorOpEPNS_6SDNodeEj(ptr noundef nonnull align 8 dereferenceable(920), ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZNK4llvm21SystemZTargetLowering24combineShiftToMulAddHighEPNS_6SDNodeERNS_14TargetLowering15DAGCombinerInfoE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(518496) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %4 = alloca %"class.llvm::SDLoc", align 8       ; 8 uses
  %5 = alloca %"struct.llvm::EVT", align 8        ; 13 uses
  %6 = alloca %"class.llvm::APInt", align 8       ; 6 uses
  %7 = alloca %"class.llvm::APInt", align 8       ; 6 uses
  %8 = alloca %"struct.llvm::EVT", align 8        ; 6 uses
  %9 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %10 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1281, !nonnull !19, !align !74 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.d = load i64, ptr %i.c, align 8, !tbaa !221
  store i64 %i.d, ptr %4, align 8, !tbaa !221
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.g = load i32, ptr %i.f, align 4, !tbaa !604
  store i32 %i.g, ptr %i.e, align 8, !tbaa !605
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 518440 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !44, !nonnull !19, !align !74
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 385
  %i.k = load i8, ptr %i.j, align 1, !tbaa !156, !range !18, !noundef !19
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.b, label %bb.ap

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1021 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %.sroa.063.0.copyload = load ptr, ptr %i.o, align 8, !tbaa !597
  %.sroa.264.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %.sroa.264.0.copyload = load i32, ptr %.sroa.264.0..sroa_idx, align 8, !tbaa !158
  %i.p = tail call noundef ptr @_ZN4llvm19isConstOrConstSplatENS_7SDValueEbb(ptr %.sroa.063.0.copyload, i32 %.sroa.264.0.copyload, i1 noundef zeroext false, i1 noundef zeroext false) #27 ; 2 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %bb.ap, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !1021
  %.sroa.0177.0.copyload = load ptr, ptr %i.q, align 8, !tbaa !597 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0177.0.copyload, i64 24
  %i.s = load i32, ptr %i.r, align 8, !tbaa !607
  %.not85 = icmp eq i32 %i.s, 59
  br i1 %.not85, label %bb.d, label %bb.ap

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0177.0.copyload, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1021 ; 4 uses
  %.sroa.0168.0.copyload = load ptr, ptr %i.u, align 8, !tbaa !597 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %.sroa.0156.0.copyload = load ptr, ptr %i.v, align 8, !tbaa !597 ; 3 uses
  %.sroa.10162.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0168.0.copyload, i64 24
  %i.x = load i32, ptr %i.w, align 8, !tbaa !607
  %.not86 = icmp eq i32 %i.x, 61
  br i1 %.not86, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.8172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0156.0.copyload, i64 24
  %i.z = load i32, ptr %i.y, align 8, !tbaa !607
  %.not87 = icmp eq i32 %i.z, 61
  br i1 %.not87, label %bb.f, label %bb.ap

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.0156.0 = phi ptr [ %.sroa.0156.0.copyload, %bb.d ], [ %.sroa.0168.0.copyload, %bb.e ] ; 3 uses
  %.sroa.10162.0.in = phi ptr [ %.sroa.10162.0..sroa_idx, %bb.d ], [ %.sroa.8172.0..sroa_idx, %bb.e ]
  %.sroa.0168.0 = phi ptr [ %.sroa.0168.0.copyload, %bb.d ], [ %.sroa.0156.0.copyload, %bb.e ]
  %.sroa.10162.0 = load i32, ptr %.sroa.10162.0.in, align 8, !tbaa !158
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0168.0, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1021 ; 4 uses
  %.sroa.0149.0.copyload = load ptr, ptr %i.ab, align 8, !tbaa !597 ; 3 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.10.0.copyload = load i32, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !158
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %.sroa.0145.0.copyload = load ptr, ptr %i.ac, align 8, !tbaa !597 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %.sroa.7.0.copyload = load i32, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !158
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0149.0.copyload, i64 24 ; 3 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !607 ; 2 uses
  %i.af = icmp eq i32 %i.ae, 227                  ; 3 uses
  %i.ag = add i32 %i.ae, -227
  %i.ah = icmp ult i32 %i.ag, 2
  br i1 %i.ah, label %bb.g, label %bb.ap

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0149.0.copyload, i64 40 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1021 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !594
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.am = load i32, ptr %i.al, align 8, !tbaa !757
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !538
  %i.ap = zext i32 %i.am to i64
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %i.ap ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.aq, align 8, !tbaa !187 ; 5 uses
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !189 ; 2 uses
  %.fca.0.insert.i.i = insertvalue { i16, ptr } poison, i16 %.sroa.0.0.copyload.i.i, 0
  %.fca.1.insert.i.i = insertvalue { i16, ptr } %.fca.0.insert.i.i, ptr %.sroa.21.0.copyload.i.i, 1 ; 2 uses
  store i16 %.sroa.0.0.copyload.i.i, ptr %5, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  store ptr %.sroa.21.0.copyload.i.i, ptr %i.ar, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %.not.i.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not.i.i.i, label %_ZNK4llvm3EVT8isVectorEv.exit.i.i, label %.split.i.i

.split.i.i:                                       ; preds = %bb.g
  %i.as = add i16 %.sroa.0.0.copyload.i.i, -19
  %spec.select.i.i.i.i = icmp ult i16 %i.as, 197
  br i1 %spec.select.i.i.i.i, label %bb.h, label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i

_ZNK4llvm3EVT8isVectorEv.exit.i.i:                ; preds = %bb.g
  %i.at = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #28
  br i1 %i.at, label %bb.i, label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i

bb.h:                                             ; preds = %.split.i.i
  %i.au = zext nneg i16 %.sroa.0.0.copyload.i.i to i64
  %i.av = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.au
  %i.aw = getelementptr i8, ptr %i.av, i64 -2
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !187
  %i.ay = insertvalue { i16, ptr } poison, i16 %i.ax, 0
  %i.az = insertvalue { i16, ptr } %i.ay, ptr null, 1
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i

bb.i:                                             ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i.i
  %i.ba = call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #27
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit.i

_ZNK4llvm3EVT13getScalarTypeEv.exit.i:            ; preds = %.split.i.i, %_ZNK4llvm3EVT8isVectorEv.exit.i.i, %bb.i, %bb.h
  %.fca.1.insert.merged.i.i = phi { i16, ptr } [ %i.ba, %bb.i ], [ %i.az, %bb.h ], [ %.fca.1.insert.i.i, %_ZNK4llvm3EVT8isVectorEv.exit.i.i ], [ %.fca.1.insert.i.i, %.split.i.i ] ; 2 uses
  %i.bb = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i, 0 ; 3 uses
  store i16 %i.bb, ptr %3, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bd = extractvalue { i16, ptr } %.fca.1.insert.merged.i.i, 1
  store ptr %i.bd, ptr %i.bc, align 8
  %.not.i.i = icmp eq i16 %i.bb, 0
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit.i
  %i.be = zext i16 %i.bb to i64
  %i.bf = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.be
end_hunk_4
begin_hunk_5_@_ZNK4llvm21SystemZTargetLowering24combineShiftToMulAddHighEPNS_6SDNodeERNS_14TargetLowering15DAGCombinerInfoE:bb.a
  %i.cx = load ptr, ptr %i.ar, align 8
  %i.cy = icmp ne ptr %i.cx, %.sroa.21.0.copyload.i.i100
  %i.cz = select i1 %.not.i, i1 true, i1 %i.cy
  br i1 %i.cz, label %.thread, label %.critedge

.critedge:                                        ; preds = %bb.w, %bb.u
  %.sroa.6141.1 = phi i32 [ %.fca.1.extract37, %bb.u ], [ %i.cr, %bb.w ]
  %.sroa.0139.1 = phi ptr [ %.fca.0.extract36, %bb.u ], [ %i.cp, %bb.w ]
  %i.da = call noundef ptr @_ZN4llvm19isConstOrConstSplatENS_7SDValueEbb(ptr %.sroa.0156.0, i32 %.sroa.10162.0, i1 noundef zeroext false, i1 noundef zeroext false) #27 ; 3 uses
  %.not91 = icmp eq ptr %i.da, null
  br i1 %.not91, label %bb.ah, label %bb.x

bb.x:                                             ; preds = %.critedge
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 88
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !608 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 24 ; 3 uses
  br i1 %i.af, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.de = call noundef i32 @_ZNK4llvm5APInt18getSignificantBitsEv(ptr noundef nonnull align 8 dereferenceable(12) %i.dd)
  br label %bb.ac

bb.z:                                             ; preds = %bb.x
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !205 ; 3 uses
  %i.dh = icmp ult i32 %i.dg, 65
  br i1 %i.dh, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %.neg.i.i104 = add nsw i32 %i.dg, -64
  %i.di = load i64, ptr %i.dd, align 8, !tbaa !164
  %i.dj = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.di, i1 false)
  %i.dk = trunc nuw nsw i64 %i.dj to i32
  %i.dl = add nsw i32 %.neg.i.i104, %i.dk
  br label %_ZNK4llvm5APInt13getActiveBitsEv.exit105

bb.ab:                                            ; preds = %bb.z
  %i.dm = call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %i.dd) #28
  br label %_ZNK4llvm5APInt13getActiveBitsEv.exit105

_ZNK4llvm5APInt13getActiveBitsEv.exit105:         ; preds = %bb.aa, %bb.ab
  %.0.i.i103 = phi i32 [ %i.dl, %bb.aa ], [ %i.dm, %bb.ab ]
  %i.dn = sub i32 %i.dg, %.0.i.i103
  br label %bb.ac

bb.ac:                                            ; preds = %_ZNK4llvm5APInt13getActiveBitsEv.exit105, %bb.y
  %i.do = phi i32 [ %i.de, %bb.y ], [ %i.dn, %_ZNK4llvm5APInt13getActiveBitsEv.exit105 ]
  %.not93 = icmp ugt i32 %i.do, %i.bj
  br i1 %.not93, label %.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.dp = getelementptr inbounds nuw i8, ptr %i.da, i64 88
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !608
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.ds = call noundef i64 @_ZNK4llvm3EVT19getScalarSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %5)
  %i.dt = trunc i64 %i.ds to i32
  call void @_ZNK4llvm5APInt5truncEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %7, ptr noundef nonnull align 8 dereferenceable(12) %i.dr, i32 noundef %i.dt) #27
  %.sroa.022.0.copyload = load i16, ptr %5, align 8, !tbaa !187
  %.sroa.224.0.copyload = load ptr, ptr %i.ar, align 8, !tbaa !189
  %i.du = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantERKNS_5APIntERKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.b, ptr noundef nonnull align 8 dereferenceable(12) %7, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 %.sroa.022.0.copyload, ptr %.sroa.224.0.copyload, i1 noundef zeroext false, i1 noundef zeroext false) #27 ; 2 uses
  %.fca.0.extract18 = extractvalue { ptr, i32 } %i.du, 0
  %.fca.1.extract19 = extractvalue { ptr, i32 } %i.du, 1
  %i.dv = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !205
  %i.dx = icmp ugt i32 %i.dw, 64
  br i1 %i.dx, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.dy = load ptr, ptr %7, align 8, !tbaa !164   ; 2 uses
  %i.dz = icmp eq ptr %i.dy, null
  br i1 %i.dz, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @_ZdaPv(ptr noundef nonnull %i.dy) #30
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %.critedge97

bb.ah:                                            ; preds = %.critedge
  %i.ea = load i32, ptr %i.ad, align 8, !tbaa !607
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.0156.0, i64 24
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !607
  %.not92 = icmp eq i32 %i.ea, %i.ec
  br i1 %.not92, label %bb.ai, label %.thread

bb.ai:                                            ; preds = %bb.ah
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.0156.0, i64 40
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !1021 ; 2 uses
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !594 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !757 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 48
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !538
  %i.ek = zext i32 %i.eh to i64
  %i.el = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %i.ek ; 2 uses
  %.sroa.0.0.copyload.i.i107 = load i16, ptr %i.el, align 8, !tbaa !187
  %.sroa.21.0..sroa_idx.i.i108 = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %.sroa.21.0.copyload.i.i109 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i108, align 8, !tbaa !189
  %i.em = load i16, ptr %5, align 8, !tbaa !705
  %.not.i112 = icmp ne i16 %i.em, %.sroa.0.0.copyload.i.i107
  %i.en = load ptr, ptr %i.ar, align 8
  %i.eo = icmp ne ptr %i.en, %.sroa.21.0.copyload.i.i109
  %i.ep = select i1 %.not.i112, i1 true, i1 %i.eo
  br i1 %i.ep, label %.thread, label %.critedge97

.critedge97:                                      ; preds = %bb.ai, %bb.ag
  %.sroa.6.1 = phi i32 [ %.fca.1.extract19, %bb.ag ], [ %i.eh, %bb.ai ]
  %.sroa.0135.1 = phi ptr [ %.fca.0.extract18, %bb.ag ], [ %i.ef, %bb.ai ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.0149.0.copyload, i64 48
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !538
  %i.es = zext i32 %.sroa.10.0.copyload to i64
  %i.et = getelementptr inbounds nuw [16 x i8], ptr %i.er, i64 %i.es ; 2 uses
  %.sroa.0.0.copyload.i.i113 = load i16, ptr %i.et, align 8, !tbaa !187
  %.sroa.21.0..sroa_idx.i.i114 = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %.sroa.21.0.copyload.i.i115 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i114, align 8, !tbaa !189
  store i16 %.sroa.0.0.copyload.i.i113, ptr %8, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %.sroa.21.0.copyload.i.i115, ptr %i.eu, align 8
  %i.ev = call noundef i64 @_ZNK4llvm3EVT19getScalarSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %8)
  %i.ew = shl i64 %.pn.i.i, 1
  %i.ex = and i64 %i.ew, 4294967294
  %.not94 = icmp eq i64 %i.ev, %i.ex
  br i1 %.not94, label %bb.aj, label %bb.ao

bb.aj:                                            ; preds = %.critedge97
  %i.ey = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !608 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 24 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 32
  %i.fc = load i32, ptr %i.fb, align 8, !tbaa !205
  %i.fd = icmp ult i32 %i.fc, 65
  %i.fe = load ptr, ptr %i.fa, align 8
  %spec.select.i.i.i = select i1 %i.fd, ptr %i.fa, ptr %i.fe
  %.0.i.i.i = load i64, ptr %spec.select.i.i.i, align 8, !tbaa !164
  %i.ff = trunc i64 %.0.i.i.i to i32
  %.not95 = icmp eq i32 %i.ff, %i.bj
  br i1 %.not95, label %bb.ak, label %bb.ao

bb.ak:                                            ; preds = %bb.aj
  %i.fg = load i16, ptr %5, align 8, !tbaa !705   ; 6 uses
  %.not.i.i118 = icmp eq i16 %i.fg, 48
  %i.fh = load ptr, ptr %i.ar, align 8            ; 2 uses
  %i.fi = icmp eq ptr %i.fh, null                 ; 2 uses
  %.not.i.i119 = icmp eq i16 %i.fg, 62
  %i.fj = or i1 %.not.i.i118, %.not.i.i119
  %.not.i.i121 = icmp eq i16 %i.fg, 73
  %i.fk = or i1 %.not.i.i121, %i.fj
  %or.cond189 = select i1 %i.fk, i1 %i.fi, i1 false
  br i1 %or.cond189, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fl = load ptr, ptr %i.h, align 8, !tbaa !44, !nonnull !19, !align !74
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 388
  %i.fn = load i8, ptr %i.fm, align 4, !tbaa !169, !range !18, !noundef !19
  %i.fo = trunc nuw i8 %i.fn to i1
  br i1 %i.fo, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %.not.i.i123 = icmp eq i16 %i.fg, 94
  %.not.i.i125 = icmp eq i16 %i.fg, 9
  %i.fp = or i1 %.not.i.i123, %.not.i.i125
  %or.cond190 = select i1 %i.fp, i1 %i.fi, i1 false
  br i1 %or.cond190, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am, %bb.ak
  %i.fq = select i1 %i.af, i32 654, i32 655
  %i.fr = load ptr, ptr %i.ai, align 8, !tbaa !1021
  store ptr %.sroa.0139.1, ptr %9, align 8, !tbaa !597
  %.sroa.6141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %.sroa.6141.1, ptr %.sroa.6141.0..sroa_idx, align 8, !tbaa !158
  store ptr %.sroa.0135.1, ptr %10, align 8, !tbaa !597
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 %.sroa.6.1, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !158
  %i.fs = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i32 noundef %i.fq, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 %i.fg, ptr %i.fh, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.fr, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %9, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %10) #27 ; 2 uses
  %.fca.0.extract7 = extractvalue { ptr, i32 } %i.fs, 0
  %.fca.1.extract8 = extractvalue { ptr, i32 } %i.fs, 1
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.fu = load i32, ptr %i.ft, align 8, !tbaa !607
  %i.fv = icmp eq i32 %i.fu, 199
  %i.fw = call { ptr, i32 } @_ZN4llvm12SelectionDAG13getExtOrTruncEbNS_7SDValueERKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i1 noundef zeroext %i.fv, ptr %.fca.0.extract7, i32 %.fca.1.extract8, ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull byval(%"struct.llvm::EVT") align 8 %8) ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.fw, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.fw, 1
  br label %bb.ao

bb.ao:                                            ; preds = %bb.am, %bb.al, %bb.aj, %.critedge97, %bb.an
  %.sroa.30.3 = phi i32 [ %.fca.1.extract, %bb.an ], [ 0, %bb.aj ], [ 0, %.critedge97 ], [ 0, %bb.am ], [ 0, %bb.al ]
  %.sroa.0181.3 = phi ptr [ %.fca.0.extract, %bb.an ], [ null, %bb.aj ], [ null, %.critedge97 ], [ null, %bb.am ], [ null, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %.thread

.thread:                                          ; preds = %bb.ac, %bb.q, %bb.ao, %bb.ah, %bb.ai, %bb.w, %bb.v
  %.sroa.30.5 = phi i32 [ 0, %bb.v ], [ 0, %bb.w ], [ 0, %bb.ai ], [ 0, %bb.ah ], [ %.sroa.30.3, %bb.ao ], [ 0, %bb.q ], [ 0, %bb.ac ]
  %.sroa.0181.5 = phi ptr [ null, %bb.v ], [ null, %bb.w ], [ null, %bb.ai ], [ null, %bb.ah ], [ %.sroa.0181.3, %bb.ao ], [ null, %bb.q ], [ null, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.ap

bb.ap:                                            ; preds = %bb.f, %bb.c, %.thread, %bb.e, %bb.b, %bb.a
  %.sroa.30.9 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.e ], [ %.sroa.30.5, %.thread ], [ 0, %bb.f ]
  %.sroa.0181.9 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ null, %bb.c ], [ null, %bb.e ], [ %.sroa.0181.5, %.thread ], [ null, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0181.9, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.30.9, 1
  ret { ptr, i32 } %.fca.1.insert
}

declare noundef ptr @_ZN4llvm19isConstOrConstSplatENS_7SDValueEbb(ptr, i32, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK4llvm5APInt18getSignificantBitsEv(ptr noundef nonnull align 8 dereferenceable(12) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !205  ; 6 uses
  %i.c = add i32 %i.b, -1                         ; 2 uses
  %i.d = and i32 %i.c, 63
  %i.e = zext nneg i32 %i.d to i64
  %i.f = shl nuw i64 1, %i.e
  %i.g = icmp ult i32 %i.b, 65                    ; 3 uses
  %i.h = load ptr, ptr %0, align 8                ; 2 uses
  %i.i = lshr i32 %i.c, 6
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.j
  %.in.i.i.i.i = select i1 %i.g, ptr %0, ptr %i.k
  %i.l = load i64, ptr %.in.i.i.i.i, align 8, !tbaa !164
  %i.m = and i64 %i.f, %i.l
  %.not.i = icmp eq i64 %i.m, 0
  %i.n = ptrtoint ptr %i.h to i64                 ; 2 uses
  br i1 %.not.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.o = icmp eq i32 %i.b, 0
  br i1 %i.o, label %_ZNK4llvm5APInt14getNumSignBitsEv.exit, label %bb.d, !prof !213

bb.d:                                             ; preds = %bb.c
  %i.p = sub nuw nsw i32 64, %i.b
  %i.q = zext nneg i32 %i.p to i64
  %i.r = shl i64 %i.n, %i.q
  %i.s = xor i64 %i.r, -1
  %i.t = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.s, i1 false)
  %i.u = trunc nuw nsw i64 %i.t to i32
  br label %_ZNK4llvm5APInt14getNumSignBitsEv.exit

bb.e:                                             ; preds = %bb.b
  %i.v = tail call noundef i32 @_ZNK4llvm5APInt24countLeadingOnesSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %0) #28
  br label %_ZNK4llvm5APInt14getNumSignBitsEv.exit

bb.f:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %.neg.i.i = add nsw i32 %i.b, -64
  %i.w = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.n, i1 false)
  %i.x = trunc nuw nsw i64 %i.w to i32
  %i.y = add nsw i32 %.neg.i.i, %i.x
  br label %_ZNK4llvm5APInt14getNumSignBitsEv.exit

bb.h:                                             ; preds = %bb.f
  %i.z = tail call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %0) #28
  br label %_ZNK4llvm5APInt14getNumSignBitsEv.exit

_ZNK4llvm5APInt14getNumSignBitsEv.exit:           ; preds = %bb.c, %bb.d, %bb.e, %bb.g, %bb.h
  %i.aa = phi i32 [ 0, %bb.c ], [ %i.v, %bb.e ], [ %i.u, %bb.d ], [ %i.y, %bb.g ], [ %i.z, %bb.h ]
  %i.ab = add i32 %i.b, 1
  %i.ac = sub i32 %i.ab, %i.aa
  ret i32 %i.ac
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i32 } @_ZN4llvm12SelectionDAG13getExtOrTruncEbNS_7SDValueERKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %0, i1 noundef zeroext %1, ptr %2, i32 %3, ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef byval(%"struct.llvm::EVT") align 8 %5) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %.sroa.010.0.copyload = load i16, ptr %5, align 8, !tbaa !187 ; 2 uses
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.212.0.copyload = load ptr, ptr %.sroa.212.0..sroa_idx, align 8, !tbaa !189 ; 2 uses
  br i1 %1, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG14getSExtOrTruncENS_7SDValueERKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %0, ptr %2, i32 %3, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 %.sroa.010.0.copyload, ptr %.sroa.212.0.copyload) #27
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG14getZExtOrTruncENS_7SDValueERKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %0, ptr %2, i32 %3, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 %.sroa.010.0.copyload, ptr %.sroa.212.0.copyload) #27
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn = phi { ptr, i32 } [ %i.a, %bb.b ], [ %i.b, %bb.c ]
  ret { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZNK4llvm21SystemZTargetLowering10combineMULEPNS_6SDNodeERNS_14TargetLowering15DAGCombinerInfoE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(518496) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %4 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %5 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1281, !nonnull !19, !align !74 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1021 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 518440 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !44, !nonnull !19, !align !74
  %i.h = getelementptr i8, ptr %i.b, i64 16       ; 2 uses
  %.val14 = load ptr, ptr %i.h, align 8
  %i.i = call fastcc noundef i32 @_ZL28detectEvenOddMultiplyOperandRKN4llvm12SelectionDAGERKNS_16SystemZSubtargetERNS_7SDValueE(ptr %.val14, ptr noundef nonnull align 8 dereferenceable(519424) %i.g, ptr noundef nonnull align 8 dereferenceable(12) %3) ; 3 uses
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !44, !nonnull !19, !align !74
  %.val = load ptr, ptr %i.h, align 8
  %i.k = call fastcc noundef i32 @_ZL28detectEvenOddMultiplyOperandRKN4llvm12SelectionDAGERKNS_16SystemZSubtargetERNS_7SDValueE(ptr %.val, ptr noundef nonnull align 8 dereferenceable(519424) %i.j, ptr noundef nonnull align 8 dereferenceable(12) %4)
  %.not = icmp ne i32 %i.i, 0
  %i.l = icmp eq i32 %i.i, %i.k
  %or.cond = and i1 %.not, %i.l
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.n = load i64, ptr %i.m, align 8, !tbaa !221
  store i64 %i.n, ptr %5, align 8, !tbaa !221
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.q = load i32, ptr %i.p, align 4, !tbaa !604
  store i32 %i.q, ptr %i.o, align 8, !tbaa !605
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !538  ; 2 uses
  %.sroa.0.0.copyload.i = load i16, ptr %i.s, align 8, !tbaa !187
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.21.0.copyload.i = load ptr, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !189
  %i.t = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.b, i32 noundef %i.i, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 %.sroa.0.0.copyload.i, ptr %.sroa.21.0.copyload.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %3, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %4) #27 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.t, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.t, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.4.0 = phi i32 [ %.fca.1.extract, %bb.b ], [ 0, %bb.a ]
  %.sroa.0.0 = phi ptr [ %.fca.0.extract, %bb.b ], [ null, %bb.a ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.4.0, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef range(i32 0, 660) i32 @_ZL28detectEvenOddMultiplyOperandRKN4llvm12SelectionDAGERKNS_16SystemZSubtargetERNS_7SDValueE(ptr nofree readonly captures(none) %.16.val, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(519424) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(12) %1) unnamed_addr #3 {
bb.a:
  %2 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %3 = alloca %"struct.llvm::EVT", align 8        ; 7 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !594    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !757
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !538
  %i.f = zext i32 %i.c to i64
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.f ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.g, align 8, !tbaa !187 ; 5 uses
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !189
  %.not.i = icmp eq i16 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not.i, label %.critedge5, label %.split

.split:                                           ; preds = %bb.a
  %i.h = add i16 %.sroa.0.0.copyload.i.i, -19
  %spec.select.i.i = icmp ult i16 %i.h, 197
  br i1 %spec.select.i.i, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit, label %bb.m

_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit: ; preds = %.split
  %i.i = getelementptr inbounds nuw i8, ptr %.16.val, i64 112
  %i.j = zext nneg i16 %.sroa.0.0.copyload.i.i to i64 ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.j
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !155
  %.not19 = icmp eq ptr %i.l, null
  br i1 %.not19, label %.critedge5, label %bb.b

bb.b:                                             ; preds = %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !607  ; 2 uses
  %i.o = icmp eq i32 %i.n, 238                    ; 3 uses
  %i.p = and i32 %i.n, -2
  %i.q = icmp eq i32 %i.p, 238
  br i1 %i.q, label %.split.i, label %.critedge5

.split.i:                                         ; preds = %bb.b
  %i.r = add nsw i16 %.sroa.0.0.copyload.i.i, -163
  %spec.select.i.i.i = icmp ult i16 %i.r, 53
  br i1 %spec.select.i.i.i, label %bb.c, label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit

bb.c:                                             ; preds = %.split.i
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.28) #29
  unreachable

_ZNK4llvm3EVT20getVectorNumElementsEv.exit:       ; preds = %.split.i
  %i.s = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.j
  %i.t = getelementptr i8, ptr %i.s, i64 -2
  %i.u = load i16, ptr %i.t, align 2, !tbaa !170  ; 5 uses
  %i.v = zext i16 %i.u to i32
end_hunk_5
