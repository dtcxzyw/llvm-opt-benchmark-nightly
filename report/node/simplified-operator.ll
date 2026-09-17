Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/simplified-operator?download=true
inline.NumInlined: 4579
inline.NumDeleted: 1029
begin_hunk_0_@_ZN2v88internal8compiler25SimplifiedOperatorBuilder19CheckedUint64BoundsERKNS1_14FeedbackSourceENS_4base5FlagsINS1_15CheckBoundsFlagEiiEE:bb.a
  store i32 %2, ptr %.sroa.6.0..sroa_idx.i.i, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN2v88internal8compiler29SimplifiedOperatorGlobalCache27CheckedUint64BoundsOperatorE, i64 16), ptr %i.t, align 8
  br label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal4Zone3NewINS0_8compiler29SimplifiedOperatorGlobalCache27CheckedUint64BoundsOperatorEJRKNS3_14FeedbackSourceERNS_4base5FlagsINS3_15CheckBoundsFlagEiiEEEEEPT_DpOT0_.exit, %bb.d, %bb.c
  %.0 = phi ptr [ %i.t, %_ZN2v88internal4Zone3NewINS0_8compiler29SimplifiedOperatorGlobalCache27CheckedUint64BoundsOperatorEJRKNS3_14FeedbackSourceERNS_4base5FlagsINS3_15CheckBoundsFlagEiiEEEEEPT_DpOT0_.exit ], [ %i.i, %bb.c ], [ %i.j, %bb.d ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal8compiler25SimplifiedOperatorBuilder11CheckBoundsERKNS1_14FeedbackSourceENS_4base5FlagsINS1_15CheckBoundsFlagEiiEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1, i32 %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %i.b = icmp ne ptr %i.a, null
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp ne i32 %i.d, -1
  %i.f = select i1 %i.b, i1 %i.e, i1 false
  br i1 %i.f, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = and i32 %2, 2
  %.not = icmp eq i32 %i.g, 0
  %i.h = and i32 %2, 1
  %.not4 = icmp eq i32 %i.h, 0                    ; 2 uses
  %i.i = and i32 %2, 4
  %.not5 = icmp eq i32 %i.i, 0                    ; 4 uses
  %i.j = load ptr, ptr %0, align 8, !nonnull !7, !align !9 ; 8 uses
  br i1 %.not, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %.not4, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %.not5, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8776
  br label %bb.s

bb.f:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8712
  br label %bb.s

bb.g:                                             ; preds = %bb.c
  br i1 %.not5, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8520
  br label %bb.s

bb.i:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8392
  br label %bb.s

bb.j:                                             ; preds = %bb.b
  br i1 %.not4, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  br i1 %.not5, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8648
  br label %bb.s

bb.m:                                             ; preds = %bb.k
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 8584
  br label %bb.s

bb.n:                                             ; preds = %bb.j
  br i1 %.not5, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 8456
  br label %bb.s

bb.p:                                             ; preds = %bb.n
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 8328
  br label %bb.s

bb.q:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8              ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load i64, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 3 uses
  %i.x = load i64, ptr %i.w, align 8              ; 2 uses
  %i.y = sub i64 %i.v, %i.x
  %i.z = icmp ult i64 %i.y, 64
  br i1 %i.z, label %bb.r, label %_ZN2v88internal4Zone3NewINS0_8compiler29SimplifiedOperatorGlobalCache19CheckBoundsOperatorEJRKNS3_14FeedbackSourceERNS_4base5FlagsINS3_15CheckBoundsFlagEiiEEEEEPT_DpOT0_.exit, !prof !5

bb.r:                                             ; preds = %bb.q
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.t, i64 noundef 64) #14
  %.pre.i.i = load i64, ptr %i.w, align 8
  br label %_ZN2v88internal4Zone3NewINS0_8compiler29SimplifiedOperatorGlobalCache19CheckBoundsOperatorEJRKNS3_14FeedbackSourceERNS_4base5FlagsINS3_15CheckBoundsFlagEiiEEEEEPT_DpOT0_.exit

_ZN2v88internal4Zone3NewINS0_8compiler29SimplifiedOperatorGlobalCache19CheckBoundsOperatorEJRKNS3_14FeedbackSourceERNS_4base5FlagsINS3_15CheckBoundsFlagEiiEEEEEPT_DpOT0_.exit: ; preds = %bb.q, %bb.r
  %i.aa = phi i64 [ %.pre.i.i, %bb.r ], [ %i.x, %bb.q ] ; 2 uses
  %i.ab = inttoptr i64 %i.aa to ptr               ; 6 uses
  %i.ac = add i64 %i.aa, 64
  store i64 %i.ac, ptr %i.w, align 8
  %.sroa.01.0.copyload.i = load ptr, ptr %1, align 8
  %.sroa.2.0.copyload.i = load i32, ptr %i.c, align 8
  tail call void @_ZN2v88internal8compiler8OperatorC2EtNS_4base5FlagsINS2_8PropertyEhhEEPKcmmmmmm(ptr noundef nonnull align 8 dereferenceable(64) %i.ab, i16 noundef zeroext 273, i8 56, ptr noundef nonnull @.str.336, i64 noundef 2, i64 noundef 1, i64 noundef 1, i64 noundef 1, i64 noundef 1, i64 noundef 0) #14
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  store ptr %.sroa.01.0.copyload.i, ptr %i.ad, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  store i32 %.sroa.2.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  store i32 %2, ptr %.sroa.6.0..sroa_idx.i.i, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN2v88internal8compiler29SimplifiedOperatorGlobalCache19CheckBoundsOperatorE, i64 16), ptr %i.ab, align 8
  br label %bb.s

bb.s:                                             ; preds = %_ZN2v88internal4Zone3NewINS0_8compiler29SimplifiedOperatorGlobalCache19CheckBoundsOperatorEJRKNS3_14FeedbackSourceERNS_4base5FlagsINS3_15CheckBoundsFlagEiiEEEEEPT_DpOT0_.exit, %bb.p, %bb.o, %bb.m, %bb.l, %bb.i, %bb.h, %bb.f, %bb.e
  %.0 = phi ptr [ %i.ab, %_ZN2v88internal4Zone3NewINS0_8compiler29SimplifiedOperatorGlobalCache19CheckBoundsOperatorEJRKNS3_14FeedbackSourceERNS_4base5FlagsINS3_15CheckBoundsFlagEiiEEEEEPT_DpOT0_.exit ], [ %i.k, %bb.e ], [ %i.l, %bb.f ], [ %i.m, %bb.h ], [ %i.n, %bb.i ], [ %i.o, %bb.l ], [ %i.p, %bb.m ], [ %i.q, %bb.o ], [ %i.r, %bb.p ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZN2v88internal8compiler21IsCheckedWithFeedbackEPKNS1_8OperatorE(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i16, ptr %i.a, align 8
  switch i16 %i.b, label %bb.b [
    i16 283, label %bb.c
    i16 285, label %bb.c
    i16 284, label %bb.c
    i16 288, label %bb.c
    i16 289, label %bb.c
    i16 290, label %bb.c
    i16 291, label %bb.c
    i16 230, label %bb.c
    i16 231, label %bb.c
    i16 109, label %bb.c
    i16 110, label %bb.c
    i16 112, label %bb.c
    i16 111, label %bb.c
    i16 125, label %bb.c
    i16 123, label %bb.c
    i16 131, label %bb.c
    i16 130, label %bb.c
    i16 114, label %bb.c
    i16 115, label %bb.c
    i16 117, label %bb.c
    i16 118, label %bb.c
    i16 119, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.b
  %.0 = phi i1 [ false, %bb.b ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef nonnull ptr @_ZN2v88internal8compiler25SimplifiedOperatorBuilder16NumberSilenceNaNENS0_14SilenceNanModeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  %i.b = load ptr, ptr %0, align 8, !nonnull !7, !align !9
  %.0.v = select i1 %i.a, i64 20800, i64 20848
  %.0 = getelementptr inbounds nuw i8, ptr %i.b, i64 %.0.v
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal8compiler25SimplifiedOperatorBuilder12RuntimeAbortENS0_11AbortReasonE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i8 noundef zeroext %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = sub i64 %i.d, %i.f
  %i.h = icmp ult i64 %i.g, 48
  br i1 %i.h, label %bb.b, label %_ZN2v88internal4Zone3NewINS0_8compiler9Operator1IiNS3_9OpEqualToIiEENS3_6OpHashIiEEEEJNS3_8IrOpcode5ValueENS_4base5FlagsINS3_8Operator8PropertyEhhEERA13_KciiiiiiiEEEPT_DpOT0_.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 noundef 48) #14
  %.pre.i.i = load i64, ptr %i.e, align 8
  br label %_ZN2v88internal4Zone3NewINS0_8compiler9Operator1IiNS3_9OpEqualToIiEENS3_6OpHashIiEEEEJNS3_8IrOpcode5ValueENS_4base5FlagsINS3_8Operator8PropertyEhhEERA13_KciiiiiiiEEEPT_DpOT0_.exit

_ZN2v88internal4Zone3NewINS0_8compiler9Operator1IiNS3_9OpEqualToIiEENS3_6OpHashIiEEEEJNS3_8IrOpcode5ValueENS_4base5FlagsINS3_8Operator8PropertyEhhEERA13_KciiiiiiiEEEPT_DpOT0_.exit: ; preds = %bb.a, %bb.b
  %i.i = phi i64 [ %.pre.i.i, %bb.b ], [ %i.f, %bb.a ] ; 2 uses
  %i.j = zext i8 %1 to i32
  %i.k = inttoptr i64 %i.i to ptr                 ; 4 uses
  %i.l = add i64 %i.i, 48
  store i64 %i.l, ptr %i.e, align 8
  tail call void @_ZN2v88internal8compiler8OperatorC2EtNS_4base5FlagsINS2_8PropertyEhhEEPKcmmmmmm(ptr noundef nonnull align 8 dereferenceable(44) %i.k, i16 noundef zeroext 347, i8 96, ptr noundef nonnull @.str.58, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0, i64 noundef 1, i64 noundef 0) #14
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN2v88internal8compiler9Operator1IiNS1_9OpEqualToIiEENS1_6OpHashIiEEEE, i64 16), ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store i32 %i.j, ptr %i.m, align 8
  ret ptr %i.k
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal8compiler25SimplifiedOperatorBuilder23SpeculativeBigIntAsIntNEiRKNS1_14FeedbackSourceE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %.sroa.4 = alloca { [4 x i8], %"struct.v8::internal::compiler::FeedbackSource" }, align 4 ; 2 uses
  %i.a = icmp ugt i32 %1, 64
  br i1 %i.a, label %bb.b, label %bb.c, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.60) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %.sroa.4.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %i.h = sub i64 %i.e, %i.g
  %i.i = icmp ult i64 %i.h, 64
  br i1 %i.i, label %bb.d, label %_ZN2v88internal4Zone3NewINS0_8compiler9Operator1INS3_30SpeculativeBigIntAsNParametersENS3_9OpEqualToIS5_EENS3_6OpHashIS5_EEEEJNS3_8IrOpcode5ValueENS3_8Operator8PropertyERA24_KciiiiiiS5_EEEPT_DpOT0_.exit, !prof !5

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.c, i64 noundef 64) #14
  %.pre.i.i = load i64, ptr %i.f, align 8
  br label %_ZN2v88internal4Zone3NewINS0_8compiler9Operator1INS3_30SpeculativeBigIntAsNParametersENS3_9OpEqualToIS5_EENS3_6OpHashIS5_EEEEJNS3_8IrOpcode5ValueENS3_8Operator8PropertyERA24_KciiiiiiS5_EEEPT_DpOT0_.exit

_ZN2v88internal4Zone3NewINS0_8compiler9Operator1INS3_30SpeculativeBigIntAsNParametersENS3_9OpEqualToIS5_EENS3_6OpHashIS5_EEEEJNS3_8IrOpcode5ValueENS3_8Operator8PropertyERA24_KciiiiiiS5_EEEPT_DpOT0_.exit: ; preds = %bb.c, %bb.d
  %i.j = phi i64 [ %.pre.i.i, %bb.d ], [ %i.g, %bb.c ] ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr                 ; 5 uses
  %i.l = add i64 %i.j, 64
  store i64 %i.l, ptr %i.f, align 8
  tail call void @_ZN2v88internal8compiler8OperatorC2EtNS_4base5FlagsINS2_8PropertyEhhEEPKcmmmmmm(ptr noundef nonnull align 8 dereferenceable(64) %i.k, i16 noundef zeroext 233, i8 0, ptr noundef nonnull @.str.61, i64 noundef 1, i64 noundef 1, i64 noundef 1, i64 noundef 1, i64 noundef 1, i64 noundef 0) #14
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN2v88internal8compiler9Operator1INS1_30SpeculativeBigIntAsNParametersENS1_9OpEqualToIS3_EENS1_6OpHashIS3_EEEE, i64 16), ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store i32 %1, ptr %i.m, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.412.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.4, i64 20, i1 false)
  ret ptr %i.k
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal8compiler25SimplifiedOperatorBuilder24SpeculativeBigIntAsUintNEiRKNS1_14FeedbackSourceE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %.sroa.4 = alloca { [4 x i8], %"struct.v8::internal::compiler::FeedbackSource" }, align 4 ; 2 uses
  %i.a = icmp ugt i32 %1, 64
  br i1 %i.a, label %bb.b, label %bb.c, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.60) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %.sroa.4.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %i.h = sub i64 %i.e, %i.g
  %i.i = icmp ult i64 %i.h, 64
  br i1 %i.i, label %bb.d, label %_ZN2v88internal4Zone3NewINS0_8compiler9Operator1INS3_30SpeculativeBigIntAsNParametersENS3_9OpEqualToIS5_EENS3_6OpHashIS5_EEEEJNS3_8IrOpcode5ValueENS3_8Operator8PropertyERA25_KciiiiiiS5_EEEPT_DpOT0_.exit, !prof !5

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.c, i64 noundef 64) #14
  %.pre.i.i = load i64, ptr %i.f, align 8
  br label %_ZN2v88internal4Zone3NewINS0_8compiler9Operator1INS3_30SpeculativeBigIntAsNParametersENS3_9OpEqualToIS5_EENS3_6OpHashIS5_EEEEJNS3_8IrOpcode5ValueENS3_8Operator8PropertyERA25_KciiiiiiS5_EEEPT_DpOT0_.exit

_ZN2v88internal4Zone3NewINS0_8compiler9Operator1INS3_30SpeculativeBigIntAsNParametersENS3_9OpEqualToIS5_EENS3_6OpHashIS5_EEEEJNS3_8IrOpcode5ValueENS3_8Operator8PropertyERA25_KciiiiiiS5_EEEPT_DpOT0_.exit: ; preds = %bb.c, %bb.d
  %i.j = phi i64 [ %.pre.i.i, %bb.d ], [ %i.g, %bb.c ] ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr                 ; 5 uses
  %i.l = add i64 %i.j, 64
  store i64 %i.l, ptr %i.f, align 8
  tail call void @_ZN2v88internal8compiler8OperatorC2EtNS_4base5FlagsINS2_8PropertyEhhEEPKcmmmmmm(ptr noundef nonnull align 8 dereferenceable(64) %i.k, i16 noundef zeroext 234, i8 0, ptr noundef nonnull @.str.62, i64 noundef 1, i64 noundef 1, i64 noundef 1, i64 noundef 1, i64 noundef 1, i64 noundef 0) #14
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN2v88internal8compiler9Operator1INS1_30SpeculativeBigIntAsNParametersENS1_9OpEqualToIS3_EENS1_6OpHashIS3_EEEE, i64 16), ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store i32 %1, ptr %i.m, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.412.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.4, i64 20, i1 false)
  ret ptr %i.k
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal8compiler25SimplifiedOperatorBuilder10AssertTypeENS1_4TypeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i64 %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = sub i64 %i.d, %i.f
  %i.h = icmp ult i64 %i.g, 48
  br i1 %i.h, label %bb.b, label %_ZN2v88internal4Zone3NewINS0_8compiler9Operator1INS3_4TypeENS3_9OpEqualToIS5_EENS3_6OpHashIS5_EEEEJNS3_8IrOpcode5ValueENS3_8Operator8PropertyERA11_KciiiiiiRS5_EEEPT_DpOT0_.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 noundef 48) #14
  %.pre.i.i = load i64, ptr %i.e, align 8
  br label %_ZN2v88internal4Zone3NewINS0_8compiler9Operator1INS3_4TypeENS3_9OpEqualToIS5_EENS3_6OpHashIS5_EEEEJNS3_8IrOpcode5ValueENS3_8Operator8PropertyERA11_KciiiiiiRS5_EEEPT_DpOT0_.exit

_ZN2v88internal4Zone3NewINS0_8compiler9Operator1INS3_4TypeENS3_9OpEqualToIS5_EENS3_6OpHashIS5_EEEEJNS3_8IrOpcode5ValueENS3_8Operator8PropertyERA11_KciiiiiiRS5_EEEPT_DpOT0_.exit: ; preds = %bb.a, %bb.b
  %i.i = phi i64 [ %.pre.i.i, %bb.b ], [ %i.f, %bb.a ] ; 2 uses
  %i.j = inttoptr i64 %i.i to ptr                 ; 4 uses
  %i.k = add i64 %i.i, 48
  store i64 %i.k, ptr %i.e, align 8
  tail call void @_ZN2v88internal8compiler8OperatorC2EtNS_4base5FlagsINS2_8PropertyEhhEEPKcmmmmmm(ptr noundef nonnull align 8 dereferenceable(48) %i.j, i16 noundef zeroext 269, i8 112, ptr noundef nonnull @.str.63, i64 noundef 1, i64 noundef 1, i64 noundef 0, i64 noundef 0, i64 noundef 1, i64 noundef 0) #14
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN2v88internal8compiler9Operator1INS1_4TypeENS1_9OpEqualToIS3_EENS1_6OpHashIS3_EEEE, i64 16), ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store i64 %1, ptr %i.l, align 8
  ret ptr %i.j
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal8compiler25SimplifiedOperatorBuilder10VerifyTypeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = sub i64 %i.d, %i.f
  %i.h = icmp ult i64 %i.g, 40
  br i1 %i.h, label %bb.b, label %_ZN2v88internal4Zone3NewINS0_8compiler8OperatorEJNS3_8IrOpcode5ValueENS_4base5FlagsINS4_8PropertyEhhEERA11_KciiiiiiEEEPT_DpOT0_.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 noundef 40) #14
  %.pre.i.i = load i64, ptr %i.e, align 8
  br label %_ZN2v88internal4Zone3NewINS0_8compiler8OperatorEJNS3_8IrOpcode5ValueENS_4base5FlagsINS4_8PropertyEhhEERA11_KciiiiiiEEEPT_DpOT0_.exit

_ZN2v88internal4Zone3NewINS0_8compiler8OperatorEJNS3_8IrOpcode5ValueENS_4base5FlagsINS4_8PropertyEhhEERA11_KciiiiiiEEEPT_DpOT0_.exit: ; preds = %bb.a, %bb.b
  %i.i = phi i64 [ %.pre.i.i, %bb.b ], [ %i.f, %bb.a ] ; 2 uses
  %i.j = inttoptr i64 %i.i to ptr                 ; 2 uses
  %i.k = add i64 %i.i, 40
  store i64 %i.k, ptr %i.e, align 8
  tail call void @_ZN2v88internal8compiler8OperatorC1EtNS_4base5FlagsINS2_8PropertyEhhEEPKcmmmmmm(ptr noundef nonnull align 8 dereferenceable(40) %i.j, i16 noundef zeroext 377, i8 96, ptr noundef nonnull @.str.64, i64 noundef 1, i64 noundef 1, i64 noundef 0, i64 noundef 0, i64 noundef 1, i64 noundef 0) #14
  ret ptr %i.j
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal8compiler25SimplifiedOperatorBuilder21CheckTurboshaftTypeOfEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = sub i64 %i.d, %i.f
  %i.h = icmp ult i64 %i.g, 40
  br i1 %i.h, label %bb.b, label %_ZN2v88internal4Zone3NewINS0_8compiler8OperatorEJNS3_8IrOpcode5ValueENS_4base5FlagsINS4_8PropertyEhhEERA22_KciiiiiiEEEPT_DpOT0_.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 noundef 40) #14
  %.pre.i.i = load i64, ptr %i.e, align 8
  br label %_ZN2v88internal4Zone3NewINS0_8compiler8OperatorEJNS3_8IrOpcode5ValueENS_4base5FlagsINS4_8PropertyEhhEERA22_KciiiiiiEEEPT_DpOT0_.exit

_ZN2v88internal4Zone3NewINS0_8compiler8OperatorEJNS3_8IrOpcode5ValueENS_4base5FlagsINS4_8PropertyEhhEERA22_KciiiiiiEEEPT_DpOT0_.exit: ; preds = %bb.a, %bb.b
  %i.i = phi i64 [ %.pre.i.i, %bb.b ], [ %i.f, %bb.a ] ; 2 uses
  %i.j = inttoptr i64 %i.i to ptr                 ; 2 uses
  %i.k = add i64 %i.i, 40
  store i64 %i.k, ptr %i.e, align 8
  tail call void @_ZN2v88internal8compiler8OperatorC1EtNS_4base5FlagsINS2_8PropertyEhhEEPKcmmmmmm(ptr noundef nonnull align 8 dereferenceable(40) %i.j, i16 noundef zeroext 293, i8 96, ptr noundef nonnull @.str.65, i64 noundef 2, i64 noundef 1, i64 noundef 1, i64 noundef 1, i64 noundef 1, i64 noundef 0) #14
  ret ptr %i.j
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal8compiler25SimplifiedOperatorBuilder13WasmTypeCheckENS1_19WasmTypeCheckConfigE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i64 %1, i8 %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = sub i64 %i.d, %i.f
  %i.h = icmp ult i64 %i.g, 56
  br i1 %i.h, label %bb.b, label %_ZN2v88internal4Zone3NewINS0_8compiler9Operator1INS3_19WasmTypeCheckConfigENS3_9OpEqualToIS5_EENS3_6OpHashIS5_EEEEJNS3_8IrOpcode5ValueENS_4base5FlagsINS3_8Operator8PropertyEhhEERA14_KciiiiiiRS5_EEEPT_DpOT0_.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 noundef 56) #14
  %.pre.i.i = load i64, ptr %i.e, align 8
  br label %_ZN2v88internal4Zone3NewINS0_8compiler9Operator1INS3_19WasmTypeCheckConfigENS3_9OpEqualToIS5_EENS3_6OpHashIS5_EEEEJNS3_8IrOpcode5ValueENS_4base5FlagsINS3_8Operator8PropertyEhhEERA14_KciiiiiiRS5_EEEPT_DpOT0_.exit

_ZN2v88internal4Zone3NewINS0_8compiler9Operator1INS3_19WasmTypeCheckConfigENS3_9OpEqualToIS5_EENS3_6OpHashIS5_EEEEJNS3_8IrOpcode5ValueENS_4base5FlagsINS3_8Operator8PropertyEhhEERA14_KciiiiiiRS5_EEEPT_DpOT0_.exit: ; preds = %bb.a, %bb.b
  %i.i = phi i64 [ %.pre.i.i, %bb.b ], [ %i.f, %bb.a ] ; 2 uses
  %i.j = inttoptr i64 %i.i to ptr                 ; 5 uses
  %i.k = add i64 %i.i, 56
  store i64 %i.k, ptr %i.e, align 8
  tail call void @_ZN2v88internal8compiler8OperatorC2EtNS_4base5FlagsINS2_8PropertyEhhEEPKcmmmmmm(ptr noundef nonnull align 8 dereferenceable(52) %i.j, i16 noundef zeroext 254, i8 116, ptr noundef nonnull @.str.66, i64 noundef 2, i64 noundef 1, i64 noundef 1, i64 noundef 1, i64 noundef 1, i64 noundef 1) #14
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN2v88internal8compiler9Operator1INS1_19WasmTypeCheckConfigENS1_9OpEqualToIS3_EENS1_6OpHashIS3_EEEE, i64 16), ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store i64 %1, ptr %i.l, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  store i8 %2, ptr %.sroa.4.0..sroa_idx, align 8
  ret ptr %i.j
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal8compiler25SimplifiedOperatorBuilder21WasmTypeCheckAbstractENS1_19WasmTypeCheckConfigE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i64 %1, i8 %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = sub i64 %i.d, %i.f
  %i.h = icmp ult i64 %i.g, 56
  br i1 %i.h, label %bb.b, label %_ZN2v88internal4Zone3NewINS0_8compiler9Operator1INS3_19WasmTypeCheckConfigENS3_9OpEqualToIS5_EENS3_6OpHashIS5_EEEEJNS3_8IrOpcode5ValueENS_4base5FlagsINS3_8Operator8PropertyEhhEERA22_KciiiiiiRS5_EEEPT_DpOT0_.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 noundef 56) #14
  %.pre.i.i = load i64, ptr %i.e, align 8
  br label %_ZN2v88internal4Zone3NewINS0_8compiler9Operator1INS3_19WasmTypeCheckConfigENS3_9OpEqualToIS5_EENS3_6OpHashIS5_EEEEJNS3_8IrOpcode5ValueENS_4base5FlagsINS3_8Operator8PropertyEhhEERA22_KciiiiiiRS5_EEEPT_DpOT0_.exit

_ZN2v88internal4Zone3NewINS0_8compiler9Operator1INS3_19WasmTypeCheckConfigENS3_9OpEqualToIS5_EENS3_6OpHashIS5_EEEEJNS3_8IrOpcode5ValueENS_4base5FlagsINS3_8Operator8PropertyEhhEERA22_KciiiiiiRS5_EEEPT_DpOT0_.exit: ; preds = %bb.a, %bb.b
  %i.i = phi i64 [ %.pre.i.i, %bb.b ], [ %i.f, %bb.a ] ; 2 uses
  %i.j = inttoptr i64 %i.i to ptr                 ; 5 uses
  %i.k = add i64 %i.i, 56
  store i64 %i.k, ptr %i.e, align 8
  tail call void @_ZN2v88internal8compiler8OperatorC2EtNS_4base5FlagsINS2_8PropertyEhhEEPKcmmmmmm(ptr noundef nonnull align 8 dereferenceable(52) %i.j, i16 noundef zeroext 255, i8 116, ptr noundef nonnull @.str.67, i64 noundef 1, i64 noundef 1, i64 noundef 1, i64 noundef 1, i64 noundef 1, i64 noundef 1) #14
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN2v88internal8compiler9Operator1INS1_19WasmTypeCheckConfigENS1_9OpEqualToIS3_EENS1_6OpHashIS3_EEEE, i64 16), ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store i64 %1, ptr %i.l, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  store i8 %2, ptr %.sroa.4.0..sroa_idx, align 8
  ret ptr %i.j
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal8compiler25SimplifiedOperatorBuilder12WasmTypeCastENS1_19WasmTypeCheckConfigE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i64 %1, i8 %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = sub i64 %i.d, %i.f
  %i.h = icmp ult i64 %i.g, 56
  br i1 %i.h, label %bb.b, label %_ZN2v88internal4Zone3NewINS0_8compiler9Operator1INS3_19WasmTypeCheckConfigENS3_9OpEqualToIS5_EENS3_6OpHashIS5_EEEEJNS3_8IrOpcode5ValueENS_4base5FlagsINS3_8Operator8PropertyEhhEERA13_KciiiiiiRS5_EEEPT_DpOT0_.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 noundef 56) #14
  %.pre.i.i = load i64, ptr %i.e, align 8
  br label %_ZN2v88internal4Zone3NewINS0_8compiler9Operator1INS3_19WasmTypeCheckConfigENS3_9OpEqualToIS5_EENS3_6OpHashIS5_EEEEJNS3_8IrOpcode5ValueENS_4base5FlagsINS3_8Operator8PropertyEhhEERA13_KciiiiiiRS5_EEEPT_DpOT0_.exit

_ZN2v88internal4Zone3NewINS0_8compiler9Operator1INS3_19WasmTypeCheckConfigENS3_9OpEqualToIS5_EENS3_6OpHashIS5_EEEEJNS3_8IrOpcode5ValueENS_4base5FlagsINS3_8Operator8PropertyEhhEERA13_KciiiiiiRS5_EEEPT_DpOT0_.exit: ; preds = %bb.a, %bb.b
  %i.i = phi i64 [ %.pre.i.i, %bb.b ], [ %i.f, %bb.a ] ; 2 uses
  %i.j = inttoptr i64 %i.i to ptr                 ; 5 uses
  %i.k = add i64 %i.i, 56
  store i64 %i.k, ptr %i.e, align 8
  tail call void @_ZN2v88internal8compiler8OperatorC2EtNS_4base5FlagsINS2_8PropertyEhhEEPKcmmmmmm(ptr noundef nonnull align 8 dereferenceable(52) %i.j, i16 noundef zeroext 252, i8 52, ptr noundef nonnull @.str.68, i64 noundef 2, i64 noundef 1, i64 noundef 1, i64 noundef 1, i64 noundef 1, i64 noundef 1) #14
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN2v88internal8compiler9Operator1INS1_19WasmTypeCheckConfigENS1_9OpEqualToIS3_EENS1_6OpHashIS3_EEEE, i64 16), ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store i64 %1, ptr %i.l, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  store i8 %2, ptr %.sroa.4.0..sroa_idx, align 8
  ret ptr %i.j
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal8compiler25SimplifiedOperatorBuilder20WasmTypeCastAbstractENS1_19WasmTypeCheckConfigE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i64 %1, i8 %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = sub i64 %i.d, %i.f
  %i.h = icmp ult i64 %i.g, 56
  br i1 %i.h, label %bb.b, label %_ZN2v88internal4Zone3NewINS0_8compiler9Operator1INS3_19WasmTypeCheckConfigENS3_9OpEqualToIS5_EENS3_6OpHashIS5_EEEEJNS3_8IrOpcode5ValueENS_4base5FlagsINS3_8Operator8PropertyEhhEERA21_KciiiiiiRS5_EEEPT_DpOT0_.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 noundef 56) #14
  %.pre.i.i = load i64, ptr %i.e, align 8
  br label %_ZN2v88internal4Zone3NewINS0_8compiler9Operator1INS3_19WasmTypeCheckConfigENS3_9OpEqualToIS5_EENS3_6OpHashIS5_EEEEJNS3_8IrOpcode5ValueENS_4base5FlagsINS3_8Operator8PropertyEhhEERA21_KciiiiiiRS5_EEEPT_DpOT0_.exit
end_hunk_0
