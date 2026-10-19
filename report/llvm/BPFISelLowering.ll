Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/BPFISelLowering?download=true
inline.NumInlined: 2790
inline.NumDeleted: 1271
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZNK4llvm17BPFTargetLowering10isZExtFreeENS_3EVTES1_:bb.a
  %.sroa.2.0..sroa_idx.i.i = getelementptr i8, ptr %i.q, i64 -8
  %.sroa.2.0.copyload.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %.fca.0.insert.i.i = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i, 0
  %.fca.1.insert.i.i = insertvalue { i64, i8 } %.fca.0.insert.i.i, i8 %.sroa.2.0.copyload.i.i, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit

bb.f:                                             ; preds = %bb.d
  %i.s = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #26
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit

_ZNK4llvm3EVT13getSizeInBitsEv.exit:              ; preds = %bb.e, %bb.f
  %.pn.i = phi { i64, i8 } [ %.fca.1.insert.i.i, %bb.e ], [ %i.s, %bb.f ] ; 2 uses
  %.fca.0.extract1 = extractvalue { i64, i8 } %.pn.i, 0
  %.fca.1.extract2 = extractvalue { i64, i8 } %.pn.i, 1
  %i.t = trunc nuw i8 %.fca.1.extract2 to i1
  br i1 %i.t, label %bb.g, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.g:                                             ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.41) #27
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit
  br i1 %.not.i7, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %i.u = zext nneg i16 %3 to i64
  %i.v = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.u ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 -16
  %.sroa.0.0.copyload.i.i15 = load i64, ptr %i.w, align 16
  %.sroa.2.0..sroa_idx.i.i16 = getelementptr i8, ptr %i.v, i64 -8
  %.sroa.2.0.copyload.i.i17 = load i8, ptr %.sroa.2.0..sroa_idx.i.i16, align 8
  %.fca.0.insert.i.i18 = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i15, 0
  %.fca.1.insert.i.i19 = insertvalue { i64, i8 } %.fca.0.insert.i.i18, i8 %.sroa.2.0.copyload.i.i17, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit21

bb.i:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %i.x = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #26
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit21

_ZNK4llvm3EVT13getSizeInBitsEv.exit21:            ; preds = %bb.h, %bb.i
  %.pn.i20 = phi { i64, i8 } [ %.fca.1.insert.i.i19, %bb.h ], [ %i.x, %bb.i ] ; 2 uses
  %.fca.1.extract = extractvalue { i64, i8 } %.pn.i20, 1
  %i.y = trunc nuw i8 %.fca.1.extract to i1
  br i1 %i.y, label %bb.j, label %_ZNK4llvm8TypeSizecvmEv.exit22

bb.j:                                             ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit21
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.41) #27
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit22:                   ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit21
  %.fca.0.extract = extractvalue { i64, i8 } %.pn.i20, 0
  %i.z = and i64 %.fca.0.extract1, 4294967295
  %i.aa = icmp eq i64 %i.z, 32
  %i.ab = and i64 %.fca.0.extract, 4294967295
  %i.ac = icmp eq i64 %i.ab, 64
  %i.ad = and i1 %i.aa, %i.ac
  br label %bb.k

bb.k:                                             ; preds = %.split26, %.split, %bb.a, %_ZNK4llvm3EVT9isIntegerEv.exit, %_ZNK4llvm3EVT9isIntegerEv.exit12, %_ZNK4llvm8TypeSizecvmEv.exit22
  %.0 = phi i1 [ %i.ad, %_ZNK4llvm8TypeSizecvmEv.exit22 ], [ false, %_ZNK4llvm3EVT9isIntegerEv.exit12 ], [ false, %_ZNK4llvm3EVT9isIntegerEv.exit ], [ false, %bb.a ], [ false, %.split ], [ false, %.split26 ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm17BPFTargetLowering10isZExtFreeENS_7SDValueENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(518440) %0, ptr nofree readonly captures(none) %1, i32 %2, i16 %3, ptr %4) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !119
  %i.c = zext i32 %2 to i64
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.c ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.d, align 8, !tbaa !121 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !122
  %i.g = icmp eq i32 %i.f, 316
  %i.h = icmp ne i16 %.sroa.0.0.copyload.i.i, 0
  %or.cond = select i1 %i.g, i1 %i.h, i1 false
  %i.i = icmp ne i16 %3, 0
  %or.cond32 = select i1 %or.cond, i1 %i.i, i1 false
  %.sroa.0.0.copyload.i.i.off = add i16 %.sroa.0.0.copyload.i.i, -5
  %switch = icmp ult i16 %.sroa.0.0.copyload.i.i.off, 3
  %or.cond33 = select i1 %or.cond32, i1 %switch, i1 false
  %.off = add i16 %3, -7
  %switch34 = icmp ult i16 %.off, 2
  %or.cond35 = select i1 %or.cond33, i1 %switch34, i1 false
  br i1 %or.cond35, label %.critedge2, label %.critedge11

.critedge11:                                      ; preds = %bb.a
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !124
  %i.j = load ptr, ptr %0, align 8, !tbaa !13
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1448
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef zeroext i1 %i.l(ptr noundef nonnull align 8 dereferenceable(518435) %0, i16 %.sroa.0.0.copyload.i.i, ptr %.sroa.21.0.copyload.i.i, i16 %3, ptr %4) #25, !inline_history !669
  br label %.critedge2

.critedge2:                                       ; preds = %bb.a, %.critedge11
  %.1 = phi i1 [ %i.m, %.critedge11 ], [ true, %bb.a ]
  ret i1 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK4llvm17BPFTargetLowering20getJumpTableEncodingEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #6 align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZNK4llvm17BPFTargetLowering17getConstraintTypeENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(518440) %0, ptr %1, i64 %2) unnamed_addr #3 align 2 {
bb.a:
  %i.a = icmp eq i64 %2, 1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %1, align 1, !tbaa !96
  %cond = icmp eq i8 %i.b, 119
  br i1 %cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = tail call noundef i32 @_ZNK4llvm14TargetLowering17getConstraintTypeENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr %1, i64 %2) #25
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi i32 [ %i.c, %bb.c ], [ 1, %bb.b ]
  ret i32 %.0
}

declare noundef i32 @_ZNK4llvm14TargetLowering17getConstraintTypeENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(518435), ptr, i64) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local { i32, ptr } @_ZNK4llvm17BPFTargetLowering28getRegForInlineAsmConstraintEPKNS_18TargetRegisterInfoENS_9StringRefENS_3MVTE(ptr noundef nonnull align 8 dereferenceable(518440) %0, ptr noundef %1, ptr %2, i64 %3, i16 %4) unnamed_addr #3 align 2 {
bb.a:
  %i.a = icmp eq i64 %3, 1
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %2, align 1, !tbaa !96
  switch i8 %i.b, label %bb.d [
    i8 114, label %bb.e
    i8 119, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 518435
  %i.d = load i8, ptr %i.c, align 1, !tbaa !102, !range !21, !noundef !22
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.f = tail call { i32, ptr } @_ZNK4llvm14TargetLowering28getRegForInlineAsmConstraintEPKNS_18TargetRegisterInfoENS_9StringRefENS_3MVTE(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr noundef %1, ptr %2, i64 %3, i16 %4) #25
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.d
  %.pn = phi { i32, ptr } [ %i.f, %bb.d ], [ { i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25BPFMCRegisterClassStorageE, i64 64) }, %bb.b ], [ { i32 0, ptr @_ZN4llvm25BPFMCRegisterClassStorageE }, %bb.c ]
  ret { i32, ptr } %.pn
}

declare { i32, ptr } @_ZNK4llvm14TargetLowering28getRegForInlineAsmConstraintEPKNS_18TargetRegisterInfoENS_9StringRefENS_3MVTE(ptr noundef nonnull align 8 dereferenceable(518435), ptr noundef, ptr, i64, i16) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm17BPFTargetLowering18ReplaceNodeResultsEPNS_6SDNodeERNS_15SmallVectorImplINS_7SDValueEEERNS_12SelectionDAGE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(518440) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree nonnull readnone align 8 captures(none) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(920) %3) unnamed_addr #3 align 2 {
bb.a:
  %4 = alloca %"class.llvm::Twine", align 8       ; 3 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 5 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 5 uses
  %7 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !122  ; 3 uses
  switch i32 %i.b, label %bb.b [
    i32 361, label %bb.c
    i32 363, label %bb.c
    i32 365, label %bb.c
    i32 366, label %bb.c
    i32 360, label %bb.c
    i32 359, label %bb.c
    i32 356, label %bb.d
    i32 357, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 1, ptr %i.d, align 1, !tbaa !127
  store ptr @.str.8, ptr %5, align 8, !tbaa !96
  store i8 3, ptr %i.c, align 8, !tbaa !128
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i8 9, ptr %i.e, align 8, !tbaa !128
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 1, ptr %i.f, align 1, !tbaa !127
  store i32 %i.b, ptr %6, align 8, !tbaa !96
  call void @_ZN4llvmplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Twine") align 8 %4, ptr noundef nonnull align 8 dereferenceable(34) %5, ptr noundef nonnull align 8 dereferenceable(34) %6)
  call void @_ZN4llvm18report_fatal_errorERKNS_5TwineEb(ptr noundef nonnull align 8 dereferenceable(34) %4, i1 noundef zeroext true) #27
  unreachable

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 518435
  %i.h = load i8, ptr %i.g, align 1, !tbaa !102, !range !21, !noundef !22
  %9 = trunc nuw i8 %i.h to i1
  %10 = icmp eq i32 %i.b, 361
  %or.cond = or i1 %10, %9
  %.str.9..str.10 = select i1 %or.cond, ptr @.str.9, ptr @.str.10 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.j = load i64, ptr %i.i, align 8, !tbaa !129
  store i64 %i.j, ptr %7, align 8, !tbaa !129
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.m = load i32, ptr %i.l, align 4, !tbaa !130
  store i32 %i.m, ptr %i.k, align 8, !tbaa !132
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 33
  store i8 1, ptr %i.o, align 1, !tbaa !127
  %11 = load i8, ptr %.str.9..str.10, align 1, !tbaa !96
  %.not.i = icmp eq i8 %11, 0
  br i1 %.not.i, label %_ZN4llvm5TwineC2EPKc.exit, label %12

12:                                               ; preds = %bb.c
  store ptr %.str.9..str.10, ptr %8, align 8, !tbaa !96
  br label %_ZN4llvm5TwineC2EPKc.exit

_ZN4llvm5TwineC2EPKc.exit:                        ; preds = %bb.c, %12
  %storemerge.i = phi i8 [ 3, %12 ], [ 1, %bb.c ]
  store i8 %storemerge.i, ptr %i.n, align 8, !tbaa !128
  call fastcc void @_ZL4failRKN4llvm5SDLocERNS_12SelectionDAGERKNS_5TwineENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(12) %7, ptr noundef nonnull align 8 dereferenceable(920) %3, ptr noundef nonnull align 8 dereferenceable(34) %8, ptr null)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.a, %_ZN4llvm5TwineC2EPKc.exit
  ret void
}

; Function Attrs: noreturn
declare void @_ZN4llvm18report_fatal_errorERKNS_5TwineEb(ptr noundef nonnull align 8 dereferenceable(34), i1 noundef zeroext) local_unnamed_addr #8

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvmplERKNS_5TwineES2_(ptr dead_on_unwind noalias writable sret(%"class.llvm::Twine") align 8 %0, ptr noundef nonnull align 8 dereferenceable(34) %1, ptr noundef nonnull align 8 dereferenceable(34) %2) local_unnamed_addr #1 comdat {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !672)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i8, ptr %i.a, align 8, !tbaa !128, !noalias !672 ; 3 uses
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.e = load i8, ptr %i.d, align 8, !tbaa !128, !noalias !672 ; 3 uses
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.g, align 8, !tbaa !128, !alias.scope !672
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 1, ptr %i.h, align 1, !tbaa !127, !alias.scope !672
  br label %_ZNK4llvm5Twine6concatERKS0_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = icmp eq i8 %i.b, 1
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false), !tbaa.struct !673
  br label %_ZNK4llvm5Twine6concatERKS0_.exit

bb.f:                                             ; preds = %bb.d
  %i.j = icmp eq i8 %i.e, 1
  br i1 %i.j, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !tbaa.struct !673
  br label %_ZNK4llvm5Twine6concatERKS0_.exit

bb.h:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 33
  %i.l = load i8, ptr %i.k, align 1, !tbaa !127, !noalias !672
  %i.m = icmp eq i8 %i.l, 1                       ; 3 uses
  %.sroa.05.0.copyload.i = load ptr, ptr %1, align 8, !noalias !672
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.56.0.copyload.i = load i64, ptr %.sroa.56.0..sroa_idx.i, align 8, !noalias !672
  %.014.i = select i1 %i.m, i8 %i.b, i8 2
  %.sroa.05.0.i = select i1 %i.m, ptr %.sroa.05.0.copyload.i, ptr %1
  %.sroa.56.0.i = select i1 %i.m, i64 %.sroa.56.0.copyload.i, i64 undef
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 33
  %i.o = load i8, ptr %i.n, align 1, !tbaa !127, !noalias !672
  %i.p = icmp eq i8 %i.o, 1                       ; 3 uses
  %.sroa.04.0.copyload.i = load ptr, ptr %2, align 8, !noalias !672
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !672
  %.0.i = select i1 %i.p, i8 %i.e, i8 2
  %.sroa.04.0.i = select i1 %i.p, ptr %.sroa.04.0.copyload.i, ptr %2
  %.sroa.5.0.i = select i1 %i.p, i64 %.sroa.5.0.copyload.i, i64 undef
  store ptr %.sroa.05.0.i, ptr %0, align 8, !alias.scope !672
  %.sroa.23.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.56.0.i, ptr %.sroa.23.0..sroa_idx.i.i, align 8, !tbaa !96, !alias.scope !672
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.04.0.i, ptr %i.q, align 8, !alias.scope !672
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.5.0.i, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !96, !alias.scope !672
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.014.i, ptr %i.r, align 8, !tbaa !128, !alias.scope !672
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 %.0.i, ptr %i.s, align 1, !tbaa !127, !alias.scope !672
  br label %_ZNK4llvm5Twine6concatERKS0_.exit

_ZNK4llvm5Twine6concatERKS0_.exit:                ; preds = %bb.c, %bb.e, %bb.g, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL4failRKN4llvm5SDLocERNS_12SelectionDAGERKNS_5TwineENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(920) %1, ptr noundef nonnull align 8 dereferenceable(34) %2, ptr %3) unnamed_addr #3 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.llvm::raw_string_ostream", align 8 ; 14 uses
  %6 = alloca %"class.llvm::DiagnosticInfoUnsupported", align 8 ; 9 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 9 uses
  %8 = alloca %"class.llvm::DiagnosticLocation", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.a, ptr %4, align 8, !tbaa !134
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !135
  store i8 0, ptr %i.a, align 8, !tbaa !96
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.c, align 8, !tbaa !139
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i8 0, ptr %i.d, align 8, !tbaa !140
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 44
  store i32 1, ptr %i.e, align 4, !tbaa !141
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm18raw_string_ostreamE, i64 16), ptr %5, align 8, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %4, ptr %i.g, align 8, !tbaa !143
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef null, i64 noundef 0, i32 noundef 0) #25
  call void @_ZNK4llvm6SDNode5printERNS_11raw_ostreamEPKNS_12SelectionDAGE(ptr noundef nonnull align 8 dereferenceable(88) %3, ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef null) #25
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !676  ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !677
  %.not.i = icmp ult ptr %i.i, %i.k
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %5, i8 noundef zeroext 32) #25 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store ptr %i.m, ptr %i.h, align 8, !tbaa !676
  store i8 32, ptr %i.i, align 1, !tbaa !96
  br label %_ZN4llvm11raw_ostreamlsEc.exit

_ZN4llvm11raw_ostreamlsEc.exit:                   ; preds = %bb.c, %bb.d
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZN4llvm11raw_ostreamlsEc.exit
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !224
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !225
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !324, !nonnull !22, !align !325
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !678)
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.t = load i8, ptr %i.s, align 8, !tbaa !128, !noalias !678 ; 3 uses
  switch i8 %i.t, label %bb.g [
    i8 0, label %_ZNK4llvm5Twine6concatERKS0_.exit
    i8 1, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  store ptr %4, ptr %7, align 8
  br label %_ZNK4llvm5Twine6concatERKS0_.exit

bb.g:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 33
  %i.v = load i8, ptr %i.u, align 1, !tbaa !127, !noalias !678
  %i.w = icmp eq i8 %i.v, 1                       ; 3 uses
  %.sroa.04.0.copyload.i = load ptr, ptr %2, align 8, !noalias !678
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !678
  %.0.i5 = select i1 %i.w, i8 %i.t, i8 2
  %.sroa.04.0.i = select i1 %i.w, ptr %.sroa.04.0.copyload.i, ptr %2
  %.sroa.5.0.i = select i1 %i.w, i64 %.sroa.5.0.copyload.i, i64 undef
  store ptr %4, ptr %7, align 8, !alias.scope !678
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %.sroa.04.0.i, ptr %i.x, align 8, !alias.scope !678
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 %.sroa.5.0.i, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !96, !alias.scope !678
  br label %_ZNK4llvm5Twine6concatERKS0_.exit

_ZNK4llvm5Twine6concatERKS0_.exit:                ; preds = %bb.e, %bb.f, %bb.g
  %.sink12 = phi i8 [ 4, %bb.g ], [ 4, %bb.f ], [ %i.t, %bb.e ]
  %.sink = phi i8 [ %.0.i5, %bb.g ], [ 1, %bb.f ], [ 1, %bb.e ]
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i8 %.sink12, ptr %i.y, align 8, !tbaa !133
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 33
  store i8 %.sink, ptr %i.z, align 1, !tbaa !133
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @_ZN4llvm18DiagnosticLocationC1ERKNS_8DebugLocE(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(8) %0) #25
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 25, ptr %i.aa, align 8, !tbaa !681
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i8 0, ptr %i.ab, align 4, !tbaa !682
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.r, ptr %i.ac, align 8, !tbaa !683
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !686
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm25DiagnosticInfoUnsupportedE, i64 16), ptr %6, align 8, !tbaa !13
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %7, ptr %i.ae, align 8, !tbaa !688
  call void @_ZN4llvm11LLVMContext8diagnoseERKNS_14DiagnosticInfoE(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 dereferenceable(13) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.af = load ptr, ptr %4, align 8, !tbaa !326   ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.a
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNK4llvm5Twine6concatERKS0_.exit
end_hunk_0
