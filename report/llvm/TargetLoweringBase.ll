Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/TargetLoweringBase?download=true
inline.NumInlined: 2991
inline.NumDeleted: 1105
loop-unroll.NumCompletelyUnrolled: 38
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZNK4llvm18TargetLoweringBase22getVectorTypeBreakdownERNS_11LLVMContextENS_3EVTERS3_RjRNS_3MVTE:bb.a
  store ptr %.sroa.214.0.copyload, ptr %i.cm, align 8
  %.not.i.i8.i = icmp eq i16 %i.cj, 0
  br i1 %.not.i.i8.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cn = zext i16 %i.cj to i64
  %i.co = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.cn ; 2 uses
  %i.cp = getelementptr i8, ptr %i.co, i64 -16
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.cp, align 16
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr i8, ptr %i.co, i64 -8
  %.sroa.2.0.copyload.i.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8
  %.fca.0.insert.i.i.i.i = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i.i.i, 0
  %.fca.1.insert.i.i.i.i = insertvalue { i64, i8 } %.fca.0.insert.i.i.i.i, i8 %.sroa.2.0.copyload.i.i.i.i, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i.i

bb.aa:                                            ; preds = %bb.y
  %i.cq = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %13) #28
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i.i

_ZNK4llvm3EVT13getSizeInBitsEv.exit.i.i:          ; preds = %bb.aa, %bb.z
  %.pn.i.i.i = phi { i64, i8 } [ %.fca.1.insert.i.i.i.i, %bb.z ], [ %i.cq, %bb.aa ] ; 4 uses
  %.not.i5.i.i = icmp eq i16 %.sroa.012.0.copyload, 0
  br i1 %.not.i5.i.i, label %_ZNK4llvm3EVT6bitsLTES0_.exit.thread188, label %_ZNK4llvm3EVT6bitsLTES0_.exit

_ZNK4llvm3EVT6bitsLTES0_.exit:                    ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i.i
  %i.cr = zext i16 %.sroa.012.0.copyload to i64
  %i.cs = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.cr ; 2 uses
  %i.ct = getelementptr i8, ptr %i.cs, i64 -16
  %.sroa.0.0.copyload.i.i6.i.i = load i64, ptr %i.ct, align 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i7.i.i = getelementptr i8, ptr %i.cs, i64 -8
  %.sroa.2.0.copyload.i.i8.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i7.i.i, align 8 ; 2 uses
  %.fca.1.extract2.i.i = extractvalue { i64, i8 } %.pn.i.i.i, 1
  %.fca.0.extract1.i.i = extractvalue { i64, i8 } %.pn.i.i.i, 0
  %i.cu = trunc nuw i8 %.fca.1.extract2.i.i to i1
  %.not.i13.i.i = xor i1 %i.cu, true
  %i.cv = trunc nuw i8 %.sroa.2.0.copyload.i.i8.i.i to i1
  %or.cond.i.i.i = select i1 %.not.i13.i.i, i1 true, i1 %i.cv
  %i.cw = icmp ult i64 %.fca.0.extract1.i.i, %.sroa.0.0.copyload.i.i6.i.i
  %.0.i.i.i = select i1 %or.cond.i.i.i, i1 %i.cw, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  br i1 %.0.i.i.i, label %bb.ab, label %bb.af

_ZNK4llvm3EVT6bitsLTES0_.exit.thread188:          ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i.i
  %i.cx = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #28 ; 2 uses
  %.fca.1.extract2.i.i190 = extractvalue { i64, i8 } %.pn.i.i.i, 1
  %.fca.0.extract1.i.i191 = extractvalue { i64, i8 } %.pn.i.i.i, 0
  %.fca.0.extract.i.i192 = extractvalue { i64, i8 } %i.cx, 0
  %.fca.1.extract.i.i193 = extractvalue { i64, i8 } %i.cx, 1
  %i.cy = trunc nuw i8 %.fca.1.extract2.i.i190 to i1
  %.not.i13.i.i194 = xor i1 %i.cy, true
  %i.cz = trunc nuw i8 %.fca.1.extract.i.i193 to i1
  %or.cond.i.i.i195 = select i1 %.not.i13.i.i194, i1 true, i1 %i.cz
  %i.da = icmp ult i64 %.fca.0.extract1.i.i191, %.fca.0.extract.i.i192
  %.0.i.i.i196 = select i1 %or.cond.i.i.i195, i1 %i.da, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  br i1 %.0.i.i.i196, label %.thread, label %bb.af

bb.ab:                                            ; preds = %_ZNK4llvm3EVT6bitsLTES0_.exit
  %.fca.0.insert.i.i = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i6.i.i, 0
  %.fca.1.insert.i.i = insertvalue { i64, i8 } %.fca.0.insert.i.i, i8 %.sroa.2.0.copyload.i.i8.i.i, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit

.thread:                                          ; preds = %_ZNK4llvm3EVT6bitsLTES0_.exit.thread188
  %i.db = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %12) #28
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit

_ZNK4llvm3EVT13getSizeInBitsEv.exit:              ; preds = %bb.ab, %.thread
  %.pn.i = phi { i64, i8 } [ %.fca.1.insert.i.i, %bb.ab ], [ %i.db, %.thread ] ; 2 uses
  %.fca.0.extract8 = extractvalue { i64, i8 } %.pn.i, 0 ; 4 uses
  %.fca.1.extract9 = extractvalue { i64, i8 } %.pn.i, 1
  %i.dc = trunc i64 %.fca.0.extract8 to i32
  %i.dd = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.dc)
  %or.cond200 = icmp eq i32 %i.dd, 1
  br i1 %or.cond200, label %bb.ac, label %_ZN4llvm14has_single_bitIjvEEbT_.exit.thread

_ZN4llvm14has_single_bitIjvEEbT_.exit.thread:     ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit
  %i.de = lshr i64 %.fca.0.extract8, 1
  %i.df = or i64 %i.de, %.fca.0.extract8          ; 2 uses
  %i.dg = lshr i64 %i.df, 2
  %i.dh = or i64 %i.dg, %i.df                     ; 2 uses
  %i.di = lshr i64 %i.dh, 4
  %i.dj = or i64 %i.di, %i.dh                     ; 2 uses
  %i.dk = lshr i64 %i.dj, 8
  %i.dl = or i64 %i.dk, %i.dj                     ; 2 uses
  %i.dm = lshr i64 %i.dl, 16
  %i.dn = or i64 %i.dm, %i.dl                     ; 2 uses
  %i.do = lshr i64 %i.dn, 32
  %i.dp = or i64 %i.do, %i.dn
  %i.dq = add i64 %i.dp, 1
  br label %bb.ac

bb.ac:                                            ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit, %_ZN4llvm14has_single_bitIjvEEbT_.exit.thread
  %.sroa.0127.0 = phi i64 [ %.fca.0.extract8, %_ZNK4llvm3EVT13getSizeInBitsEv.exit ], [ %i.dq, %_ZN4llvm14has_single_bitIjvEEbT_.exit.thread ]
  %i.dr = trunc nuw i8 %.fca.1.extract9 to i1
  br i1 %i.dr, label %bb.ad, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.46) #30
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %bb.ac
  %i.ds = zext i16 %i.cj to i64
  %i.dt = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.ds ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %i.dt, i64 -8
  %.sroa.2.0.copyload.i = load i8, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.du = trunc nuw i8 %.sroa.2.0.copyload.i to i1
  br i1 %i.du, label %bb.ae, label %_ZNK4llvm8TypeSizecvmEv.exit126

bb.ae:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.46) #30
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit126:                  ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %i.dv = getelementptr i8, ptr %i.dt, i64 -16
  %.sroa.0.0.copyload.i123 = load i64, ptr %i.dv, align 16
  %i.dw = udiv i64 %.sroa.0127.0, %.sroa.0.0.copyload.i123
  %i.dx = trunc i64 %i.dw to i32
  %i.dy = mul i32 %.181.lcssa, %i.dx
  br label %bb.af

bb.af:                                            ; preds = %_ZNK4llvm3EVT6bitsLTES0_.exit.thread188, %_ZNK4llvm3EVT6bitsLTES0_.exit.thread, %_ZNK4llvm3EVT6bitsLTES0_.exit, %_ZNK4llvm8TypeSizecvmEv.exit126
  %.1 = phi i32 [ %i.dy, %_ZNK4llvm8TypeSizecvmEv.exit126 ], [ %.181.lcssa, %_ZNK4llvm3EVT6bitsLTES0_.exit ], [ %.181.lcssa, %_ZNK4llvm3EVT6bitsLTES0_.exit.thread ], [ %.181.lcssa, %_ZNK4llvm3EVT6bitsLTES0_.exit.thread188 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  br label %bb.ag

bb.ag:                                            ; preds = %bb.f, %_ZNK4llvm3EVT21getVectorElementCountEv.exit102, %bb.af
  %.3 = phi i32 [ 1, %bb.f ], [ %i.be, %_ZNK4llvm3EVT21getVectorElementCountEv.exit102 ], [ %.1, %bb.af ]
  ret i32 %.3
}

; Function Attrs: noreturn
declare void @_ZN4llvm18report_fatal_errorEPKcb(ptr noundef, i1 noundef zeroext) local_unnamed_addr #12

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i16 @_ZNK4llvm18TargetLoweringBase15getRegisterTypeERNS_11LLVMContextENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i16 %2, ptr %3) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %4 = alloca %"class.llvm::MVT", align 2         ; 3 uses
  %5 = alloca %"struct.llvm::EVT", align 8        ; 3 uses
  %6 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %i.a = alloca i32, align 4                      ; 3 uses
  store i16 %2, ptr %5, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %3, ptr %i.b, align 8
  %.not = icmp eq i16 %2, 0
  br i1 %.not, label %_ZNK4llvm3EVT8isVectorEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2752
  %i.d = zext i16 %2 to i64
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.d
  %.sroa.01.0.copyload.i = load i16, ptr %i.e, align 2, !tbaa !196
  br label %bb.d

_ZNK4llvm3EVT8isVectorEv.exit:                    ; preds = %bb.a
  %i.f = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #28
  br i1 %i.f, label %bb.c, label %_ZNK4llvm3EVT9isIntegerEv.exit

bb.c:                                             ; preds = %_ZNK4llvm3EVT8isVectorEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  store i16 0, ptr %6, align 8, !tbaa !32
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr null, ptr %i.g, align 8, !tbaa !207
  store i16 0, ptr %4, align 2, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.h = call noundef i32 @_ZNK4llvm18TargetLoweringBase22getVectorTypeBreakdownERNS_11LLVMContextENS_3EVTERS3_RjRNS_3MVTE(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i16 0, ptr %3, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 2 dereferenceable(2) %4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %.pre = load i16, ptr %4, align 2
  br label %bb.d

_ZNK4llvm3EVT9isIntegerEv.exit:                   ; preds = %_ZNK4llvm3EVT8isVectorEv.exit
  %i.i = load ptr, ptr %0, align 8, !tbaa !13
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 568
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = call { i16, ptr } %i.k(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i16 0, ptr %3) #27 ; 2 uses
  %i.m = extractvalue { i16, ptr } %i.l, 0
  %i.n = extractvalue { i16, ptr } %i.l, 1
  %i.o = call i16 @_ZNK4llvm18TargetLoweringBase15getRegisterTypeERNS_11LLVMContextENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i16 %i.m, ptr %i.n)
  br label %bb.d

bb.d:                                             ; preds = %_ZNK4llvm3EVT9isIntegerEv.exit, %bb.c, %bb.b
  %i.p = phi i16 [ %i.o, %_ZNK4llvm3EVT9isIntegerEv.exit ], [ %.pre, %bb.c ], [ %.sroa.01.0.copyload.i, %bb.b ]
  ret i16 %i.p
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm18TargetLoweringBase22isSuitableForJumpTableEPKNS_10SwitchInstEmmPNS_18ProfileSummaryInfoEPNS_18BlockFrequencyInfoE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !653
  %i.c = tail call noundef zeroext i1 @_ZN4llvm21shouldOptimizeForSizeEPKNS_10BasicBlockEPNS_18ProfileSummaryInfoEPNS_18BlockFrequencyInfoENS_13PGSOQueryTypeE(ptr noundef %i.b, ptr noundef %4, ptr noundef %5, i32 noundef 2) #27 ; 2 uses
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL20MaximumJumpTableSize, i64 120), align 8, !tbaa !187
  %i.e = zext i32 %i.d to i64
  %.not = icmp ule i64 %3, %i.e
  %or.cond.not = or i1 %i.c, %.not
  br i1 %or.cond.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.val.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL23OptsizeJumpTableDensity, i64 120), align 8
  %.val1.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL16JumpTableDensity, i64 120), align 8
  %6 = select i1 %i.c, i32 %.val.i, i32 %.val1.i
  %i.f = mul i64 %2, 100
  %i.g = zext i32 %6 to i64
  %i.h = mul i64 %3, %i.g
  %i.i = icmp uge i64 %i.f, %i.h
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.j = phi i1 [ false, %bb.a ], [ %i.i, %bb.b ]
  ret i1 %i.j
}

declare noundef zeroext i1 @_ZN4llvm21shouldOptimizeForSizeEPKNS_10BasicBlockEPNS_18ProfileSummaryInfoEPNS_18BlockFrequencyInfoENS_13PGSOQueryTypeE(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZNK4llvm18TargetLoweringBase26getMinimumJumpTableDensityEb(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(518435) %0, i1 noundef zeroext %1) local_unnamed_addr #13 align 2 {
bb.a:
  %.val = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL23OptsizeJumpTableDensity, i64 120), align 8
  %.val1 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL16JumpTableDensity, i64 120), align 8
  %2 = select i1 %1, i32 %.val, i32 %.val1
  ret i32 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZNK4llvm18TargetLoweringBase23getMaximumJumpTableSizeEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(518435) %0) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL20MaximumJumpTableSize, i64 120), align 8, !tbaa !187
  ret i32 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i16 @_ZNK4llvm18TargetLoweringBase31getPreferredSwitchConditionTypeERNS_11LLVMContextENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i16 %2, ptr %3) unnamed_addr #6 align 2 {
bb.a:
  %i.a = tail call i16 @_ZNK4llvm18TargetLoweringBase15getRegisterTypeERNS_11LLVMContextENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i16 %2, ptr %3)
  ret i16 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm13GetReturnInfoEjPNS_4TypeENS_13AttributeListERNS_15SmallVectorImplINS_3ISD9OutputArgEEERKNS_14TargetLoweringERKNS_10DataLayoutE(i32 noundef %0, ptr noundef %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(518435) %4, ptr noundef nonnull align 8 dereferenceable(912) %5) local_unnamed_addr #6 {
bb.a:
  %6 = alloca %"class.llvm::AttributeList", align 8 ; 6 uses
  %7 = alloca %"class.llvm::SmallVector.290", align 8 ; 9 uses
  %8 = alloca %"struct.llvm::EVT", align 8        ; 11 uses
  %9 = alloca %"struct.llvm::ISD::OutputArg", align 8 ; 12 uses
  store ptr %2, ptr %6, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr %i.a, ptr %7, align 8, !tbaa !25
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i32 0, ptr %i.b, align 8, !tbaa !369
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 4, ptr %i.c, align 4, !tbaa !368
  call void @_ZN4llvm17ComputeValueTypesERKNS_10DataLayoutEPNS_4TypeERNS_15SmallVectorImplIS4_EEPNS5_INS_8TypeSizeEEES8_(ptr noundef nonnull align 8 dereferenceable(912) %5, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef null, i64 0, i8 0) #27
  %i.d = load i32, ptr %i.b, align 8, !tbaa !369  ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  %.pre71 = load ptr, ptr %7, align 8, !tbaa !25  ; 3 uses
  br i1 %i.e, label %.loopexit, label %.lr.ph64

.lr.ph64:                                         ; preds = %bb.a
  %i.f = zext i32 %i.d to i64
  %.idx = shl nuw nsw i64 %i.f, 3
  %i.g = getelementptr inbounds nuw i8, ptr %.pre71, i64 %.idx
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 6 uses
  %.sroa.26.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 24
  %.sroa.23.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 52
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 12
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph64, %._crit_edge
  %.062 = phi ptr [ %.pre71, %.lr.ph64 ], [ %i.aw, %._crit_edge ] ; 2 uses
  %i.p = load ptr, ptr %.062, align 8, !tbaa !210 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  %i.q = call { i16, ptr } @_ZNK4llvm18TargetLoweringBase12getValueTypeERKNS_10DataLayoutEPNS_4TypeEb(ptr noundef nonnull align 8 dereferenceable(518435) %4, ptr noundef nonnull align 8 dereferenceable(912) %5, ptr noundef %i.p, i1 noundef zeroext false) ; 2 uses
  %i.r = extractvalue { i16, ptr } %i.q, 0
  store i16 %i.r, ptr %8, align 8
  %i.s = extractvalue { i16, ptr } %i.q, 1
  store ptr %i.s, ptr %i.h, align 8
  %i.t = call noundef zeroext i1 @_ZNK4llvm13AttributeList19hasAttributeAtIndexEjNS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 0, i32 noundef 58) #27
  br i1 %i.t, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = call noundef zeroext i1 @_ZNK4llvm13AttributeList19hasAttributeAtIndexEjNS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 0, i32 noundef 84) #27
  br i1 %i.u, label %.thread, label %._crit_edge66

._crit_edge66:                                    ; preds = %bb.c
  %.sroa.010.0.copyload.pre = load i16, ptr %8, align 8, !tbaa !196
  br label %bb.e

.thread:                                          ; preds = %bb.b, %bb.c
  %.04757 = phi i32 [ 228, %bb.c ], [ 227, %bb.b ]
  %i.v = load i16, ptr %8, align 8, !tbaa !202    ; 6 uses
  %.not.i = icmp eq i16 %i.v, 0
  br i1 %.not.i, label %_ZNK4llvm3EVT9isIntegerEv.exit, label %.split

.split:                                           ; preds = %.thread
  %i.w = add i16 %i.v, -2
  %or.cond.i.i = icmp ult i16 %i.w, 10
  %i.x = add i16 %i.v, -19
  %or.cond3.i.i = icmp ult i16 %i.x, 86
  %or.cond4.i.i = or i1 %or.cond.i.i, %or.cond3.i.i
  %i.y = add i16 %i.v, -163
  %spec.select.i.i = icmp ult i16 %i.y, 32
  %i.z = or i1 %spec.select.i.i, %or.cond4.i.i
  br i1 %i.z, label %bb.d, label %bb.e

_ZNK4llvm3EVT9isIntegerEv.exit:                   ; preds = %.thread
  %i.aa = call noundef zeroext i1 @_ZNK4llvm3EVT17isExtendedIntegerEv(ptr noundef nonnull align 8 dereferenceable(16) %8) #28
  br i1 %i.aa, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.split, %_ZNK4llvm3EVT9isIntegerEv.exit
  %i.ab = load ptr, ptr %1, align 8, !tbaa !377, !nonnull !22, !align !173
  %.sroa.216.0.copyload = load ptr, ptr %i.h, align 8, !tbaa !210
  %i.ac = load ptr, ptr %4, align 8, !tbaa !13
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 2400
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = call { i16, ptr } %i.ae(ptr noundef nonnull align 8 dereferenceable(518435) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.ab, i16 %i.v, ptr %.sroa.216.0.copyload, i32 noundef %.04757) #27 ; 2 uses
  %i.ag = extractvalue { i16, ptr } %i.af, 0      ; 2 uses
  %i.ah = extractvalue { i16, ptr } %i.af, 1
  store i16 %i.ag, ptr %8, align 8, !tbaa !196
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !210
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge66, %.split, %bb.d, %_ZNK4llvm3EVT9isIntegerEv.exit
  %.sroa.010.0.copyload = phi i16 [ %.sroa.010.0.copyload.pre, %._crit_edge66 ], [ %i.v, %.split ], [ %i.ag, %bb.d ], [ 0, %_ZNK4llvm3EVT9isIntegerEv.exit ]
  %i.ai = load ptr, ptr %1, align 8, !tbaa !377, !nonnull !22, !align !173
  %.sroa.212.0.copyload = load ptr, ptr %i.h, align 8, !tbaa !210
  %i.aj = load ptr, ptr %4, align 8, !tbaa !13
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 744
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = call noundef i32 %i.al(ptr noundef nonnull align 8 dereferenceable(518435) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.ai, i32 noundef %0, i16 %.sroa.010.0.copyload, ptr %.sroa.212.0.copyload) #27 ; 2 uses
  %i.an = load ptr, ptr %1, align 8, !tbaa !377, !nonnull !22, !align !173
  %.sroa.06.0.copyload = load i16, ptr %8, align 8, !tbaa !196
  %.sroa.28.0.copyload = load ptr, ptr %i.h, align 8, !tbaa !210
  %i.ao = load ptr, ptr %4, align 8, !tbaa !13
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 736
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = call i16 %i.aq(ptr noundef nonnull align 8 dereferenceable(518435) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.an, i32 noundef %0, i16 %.sroa.06.0.copyload, ptr %.sroa.28.0.copyload) #27
  %i.as = call noundef zeroext i1 @_ZNK4llvm13AttributeList19hasAttributeAtIndexEjNS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 0, i32 noundef 16) #27
  %spec.select58 = select i1 %i.as, i64 8, i64 0
  %i.at = call noundef zeroext i1 @_ZNK4llvm13AttributeList19hasAttributeAtIndexEjNS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 0, i32 noundef 58) #27
  br i1 %i.at, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.au = call noundef zeroext i1 @_ZNK4llvm13AttributeList19hasAttributeAtIndexEjNS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 0, i32 noundef 84) #27
  %i.av = zext i1 %i.au to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sink = phi i64 [ %i.av, %bb.f ], [ 2, %bb.e ]
  %spec.select59 = or disjoint i64 %spec.select58, %.sink
  %.not65 = icmp eq i32 %i.am, 0
  br i1 %.not65, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.g
  %.sroa.0.0.copyload.pre68 = load i16, ptr %8, align 8, !tbaa !196
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_3ISD9OutputArgELb1EE9push_backERKS2_.exit, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  %i.aw = getelementptr inbounds nuw i8, ptr %.062, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.aw, %i.g
  br i1 %.not, label %.loopexit.loopexit, label %bb.b

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN4llvm23SmallVectorTemplateBaseINS_3ISD9OutputArgELb1EE9push_backERKS2_.exit
  %.sroa.0.0.copyload = phi i16 [ %.sroa.0.0.copyload69, %_ZN4llvm23SmallVectorTemplateBaseINS_3ISD9OutputArgELb1EE9push_backERKS2_.exit ], [ %.sroa.0.0.copyload.pre68, %.lr.ph.preheader ] ; 2 uses
  %.04660 = phi i32 [ %i.be, %_ZN4llvm23SmallVectorTemplateBaseINS_3ISD9OutputArgELb1EE9push_backERKS2_.exit ], [ 0, %.lr.ph.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  %.sroa.21.0.copyload = load ptr, ptr %i.h, align 8, !tbaa !210
  store i64 %spec.select59, ptr %9, align 8, !tbaa !191
  store i64 0, ptr %.sroa.26.0..sroa_idx.i, align 8, !tbaa !175
  store i16 %i.ar, ptr %i.i, align 8, !tbaa !196
  store i16 %.sroa.0.0.copyload, ptr %i.j, align 8, !tbaa !196
  store ptr %.sroa.21.0.copyload, ptr %.sroa.23.0..sroa_idx.i, align 8, !tbaa !210
  store ptr %i.p, ptr %i.k, align 8, !tbaa !657
  store i32 0, ptr %i.l, align 8, !tbaa !658
  store i32 0, ptr %i.m, align 4, !tbaa !659
  %i.ax = load i32, ptr %i.n, align 8, !tbaa !369 ; 2 uses
  %i.ay = load i32, ptr %i.o, align 4, !tbaa !368
  %.not.i50 = icmp ult i32 %i.ax, %i.ay
  br i1 %.not.i50, label %bb.i, label %bb.h, !prof !660

bb.h:                                             ; preds = %.lr.ph
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_3ISD9OutputArgELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(56) %9)
  %.sroa.0.0.copyload.pre = load i16, ptr %8, align 8, !tbaa !196
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_3ISD9OutputArgELb1EE9push_backERKS2_.exit

bb.i:                                             ; preds = %.lr.ph
  %i.az = zext i32 %i.ax to i64
  %i.ba = load ptr, ptr %3, align 8, !tbaa !25
  %i.bb = getelementptr inbounds nuw [56 x i8], ptr %i.ba, i64 %i.az
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %i.bb, ptr noundef nonnull align 8 dereferenceable(56) %9, i64 56, i1 false)
  %i.bc = load i32, ptr %i.n, align 8, !tbaa !369
  %i.bd = add i32 %i.bc, 1
  store i32 %i.bd, ptr %i.n, align 8, !tbaa !369
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_3ISD9OutputArgELb1EE9push_backERKS2_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_3ISD9OutputArgELb1EE9push_backERKS2_.exit: ; preds = %bb.h, %bb.i
  %.sroa.0.0.copyload69 = phi i16 [ %.sroa.0.0.copyload.pre, %bb.h ], [ %.sroa.0.0.copyload, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  %i.be = add nuw i32 %.04660, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.be, %i.am
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !654

.loopexit.loopexit:                               ; preds = %._crit_edge
  %.pre = load ptr, ptr %7, align 8, !tbaa !25
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.a
  %i.bf = phi ptr [ %.pre71, %bb.a ], [ %.pre, %.loopexit.loopexit ] ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.a
  br i1 %i.bg, label %_ZN4llvm11SmallVectorIPNS_4TypeELj4EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %.loopexit
  call void @free(ptr noundef %i.bf) #27
  br label %_ZN4llvm11SmallVectorIPNS_4TypeELj4EED2Ev.exit
end_hunk_0
