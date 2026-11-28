Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/number_capi?download=true
inline.NumInlined: 156
inline.NumDeleted: 78
begin_hunk_0_@unumf_resultToString_78:bb.a

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i32, ptr %i.d, align 4, !tbaa !13
  %.not9.i = icmp eq i32 %i.e, 1178881536
  br i1 %.not9.i, label %_ZN6icu_7813IcuCApiHelperI16UFormattedNumberNS_6number4impl20UFormattedNumberImplELi1178881536EE8validateEPKS1_R10UErrorCode.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.c, %bb.b
  %.sink.i = phi i32 [ 1, %bb.b ], [ 3, %bb.c ]
  store i32 %.sink.i, ptr %3, align 4, !tbaa !38
  br label %_ZN6icu_7813IcuCApiHelperI16UFormattedNumberNS_6number4impl20UFormattedNumberImplELi1178881536EE8validateEPKS1_R10UErrorCode.exit.thread

_ZN6icu_7813IcuCApiHelperI16UFormattedNumberNS_6number4impl20UFormattedNumberImplELi1178881536EE8validateEPKS1_R10UErrorCode.exit: ; preds = %bb.c
  %i.f = icmp eq ptr %1, null
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN6icu_7813IcuCApiHelperI16UFormattedNumberNS_6number4impl20UFormattedNumberImplELi1178881536EE8validateEPKS1_R10UErrorCode.exit
  %.not16 = icmp eq i32 %2, 0
  br i1 %.not16, label %.split, label %bb.f

bb.e:                                             ; preds = %_ZN6icu_7813IcuCApiHelperI16UFormattedNumberNS_6number4impl20UFormattedNumberImplELi1178881536EE8validateEPKS1_R10UErrorCode.exit
  %i.g = icmp slt i32 %2, 0
  br i1 %i.g, label %bb.f, label %.split

bb.f:                                             ; preds = %bb.e, %bb.d
  store i32 1, ptr %3, align 4, !tbaa !38
  br label %_ZN6icu_7813IcuCApiHelperI16UFormattedNumberNS_6number4impl20UFormattedNumberImplELi1178881536EE8validateEPKS1_R10UErrorCode.exit.thread

.split:                                           ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @_ZNK6icu_7831FormattedValueStringBuilderImpl12toTempStringER10UErrorCode(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::UnicodeString") align 8 %4, ptr noundef nonnull align 8 dereferenceable(300) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %3)
  store ptr %1, ptr %5, align 8, !tbaa !78
  %i.i = invoke noundef i32 @_ZNK6icu_7813UnicodeString7extractENS_9Char16PtrEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 %5, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %.split
  %i.j = load ptr, ptr %5, align 8, !tbaa !78
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.j) #12, !srcloc !79
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %_ZN6icu_7813IcuCApiHelperI16UFormattedNumberNS_6number4impl20UFormattedNumberImplELi1178881536EE8validateEPKS1_R10UErrorCode.exit.thread

bb.h:                                             ; preds = %.split
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %5, align 8, !tbaa !78
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.l) #12, !srcloc !79
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  resume { ptr, i32 } %i.k

_ZN6icu_7813IcuCApiHelperI16UFormattedNumberNS_6number4impl20UFormattedNumberImplELi1178881536EE8validateEPKS1_R10UErrorCode.exit.thread: ; preds = %.sink.split.i, %bb.a, %bb.g, %bb.f
  %.0 = phi i32 [ %i.i, %bb.g ], [ 0, %bb.f ], [ 0, %bb.a ], [ 0, %.sink.split.i ]
  ret i32 %.0
}

declare void @_ZNK6icu_7831FormattedValueStringBuilderImpl12toTempStringER10UErrorCode(ptr dead_on_unwind writable sret(%"class.icu_78::UnicodeString") align 8, ptr noundef nonnull align 8 dereferenceable(300), ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #6

declare noundef i32 @_ZNK6icu_7813UnicodeString7extractENS_9Char16PtrEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef align 8, i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define signext range(i8 0, 2) i8 @unumf_resultNextFieldPosition_78(ptr noundef %0, ptr nofree noundef captures(address_is_null) %1, ptr noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.icu_78::FieldPosition", align 8 ; 10 uses
  %i.a = load i32, ptr %2, align 4, !tbaa !38
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %_ZN6icu_7813IcuCApiHelperI16UFormattedNumberNS_6number4impl20UFormattedNumberImplELi1178881536EE8validateEPKS1_R10UErrorCode.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %.sink.split.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i32, ptr %i.d, align 4, !tbaa !13
  %.not9.i = icmp eq i32 %i.e, 1178881536
  br i1 %.not9.i, label %_ZN6icu_7813IcuCApiHelperI16UFormattedNumberNS_6number4impl20UFormattedNumberImplELi1178881536EE8validateEPKS1_R10UErrorCode.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.c, %bb.b
  %.sink.i = phi i32 [ 1, %bb.b ], [ 3, %bb.c ]
  store i32 %.sink.i, ptr %2, align 4, !tbaa !38
  br label %_ZN6icu_7813IcuCApiHelperI16UFormattedNumberNS_6number4impl20UFormattedNumberImplELi1178881536EE8validateEPKS1_R10UErrorCode.exit.thread

_ZN6icu_7813IcuCApiHelperI16UFormattedNumberNS_6number4impl20UFormattedNumberImplELi1178881536EE8validateEPKS1_R10UErrorCode.exit: ; preds = %bb.c
  %i.f = icmp eq ptr %1, null
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN6icu_7813IcuCApiHelperI16UFormattedNumberNS_6number4impl20UFormattedNumberImplELi1178881536EE8validateEPKS1_R10UErrorCode.exit
  store i32 1, ptr %2, align 4, !tbaa !38
  br label %_ZN6icu_7813IcuCApiHelperI16UFormattedNumberNS_6number4impl20UFormattedNumberImplELi1178881536EE8validateEPKS1_R10UErrorCode.exit.thread

bb.e:                                             ; preds = %_ZN6icu_7813IcuCApiHelperI16UFormattedNumberNS_6number4impl20UFormattedNumberImplELi1178881536EE8validateEPKS1_R10UErrorCode.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_7813FieldPositionE, i64 16), ptr %3, align 8, !tbaa !15
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.i = load <2 x i32>, ptr %1, align 4, !tbaa !80
  store <2 x i32> %i.i, ptr %i.g, align 8, !tbaa !80
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i32, ptr %i.j, align 4, !tbaa !82
  store i32 %i.k, ptr %i.h, align 8, !tbaa !84
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = invoke noundef signext i8 @_ZNK6icu_7831FormattedValueStringBuilderImpl17nextFieldPositionERNS_13FieldPositionER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(300) %i.l, ptr noundef nonnull align 8 dereferenceable(20) %3, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.p = icmp ne i8 %i.m, 0
  %i.q = zext i1 %i.p to i8
  %i.r = load <2 x i32>, ptr %i.o, align 4, !tbaa !80
  store <2 x i32> %i.r, ptr %i.n, align 4, !tbaa !80
  call void @_ZN6icu_7813FieldPositionD1Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20) %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %_ZN6icu_7813IcuCApiHelperI16UFormattedNumberNS_6number4impl20UFormattedNumberImplELi1178881536EE8validateEPKS1_R10UErrorCode.exit.thread

bb.g:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7813FieldPositionD1Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20) %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  resume { ptr, i32 } %i.s

_ZN6icu_7813IcuCApiHelperI16UFormattedNumberNS_6number4impl20UFormattedNumberImplELi1178881536EE8validateEPKS1_R10UErrorCode.exit.thread: ; preds = %.sink.split.i, %bb.a, %bb.f, %bb.d
  %.0 = phi i8 [ %i.q, %bb.f ], [ 0, %bb.d ], [ 0, %bb.a ], [ 0, %.sink.split.i ]
  ret i8 %.0
}

declare noundef signext i8 @_ZNK6icu_7831FormattedValueStringBuilderImpl17nextFieldPositionERNS_13FieldPositionER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(300), ptr noundef nonnull align 8 dereferenceable(20), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZN6icu_7813FieldPositionD1Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @unumf_resultGetAllFieldPositions_78(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.icu_78::FieldPositionIteratorHandler", align 8 ; 7 uses
  %i.a = load i32, ptr %2, align 4, !tbaa !38
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %_ZN6icu_7813IcuCApiHelperI16UFormattedNumberNS_6number4impl20UFormattedNumberImplELi1178881536EE8validateEPKS1_R10UErrorCode.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %.sink.split.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i32, ptr %i.d, align 4, !tbaa !13
  %.not9.i = icmp eq i32 %i.e, 1178881536
  br i1 %.not9.i, label %_ZN6icu_7813IcuCApiHelperI16UFormattedNumberNS_6number4impl20UFormattedNumberImplELi1178881536EE8validateEPKS1_R10UErrorCode.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.c, %bb.b
  %.sink.i = phi i32 [ 1, %bb.b ], [ 3, %bb.c ]
  store i32 %.sink.i, ptr %2, align 4, !tbaa !38
  br label %_ZN6icu_7813IcuCApiHelperI16UFormattedNumberNS_6number4impl20UFormattedNumberImplELi1178881536EE8validateEPKS1_R10UErrorCode.exit.thread

_ZN6icu_7813IcuCApiHelperI16UFormattedNumberNS_6number4impl20UFormattedNumberImplELi1178881536EE8validateEPKS1_R10UErrorCode.exit: ; preds = %bb.c
  %i.f = icmp eq ptr %1, null
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN6icu_7813IcuCApiHelperI16UFormattedNumberNS_6number4impl20UFormattedNumberImplELi1178881536EE8validateEPKS1_R10UErrorCode.exit
  store i32 1, ptr %2, align 4, !tbaa !38
  br label %_ZN6icu_7813IcuCApiHelperI16UFormattedNumberNS_6number4impl20UFormattedNumberImplELi1178881536EE8validateEPKS1_R10UErrorCode.exit.thread

bb.e:                                             ; preds = %_ZN6icu_7813IcuCApiHelperI16UFormattedNumberNS_6number4impl20UFormattedNumberImplELi1178881536EE8validateEPKS1_R10UErrorCode.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call void @_ZN6icu_7828FieldPositionIteratorHandlerC1EPNS_21FieldPositionIteratorER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull %1, ptr noundef nonnull align 4 dereferenceable(4) %2)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_ZNK6icu_7831FormattedValueStringBuilderImpl20getAllFieldPositionsERNS_28FieldPositionIteratorHandlerER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(300) %i.g, ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @_ZN6icu_7828FieldPositionIteratorHandlerD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %_ZN6icu_7813IcuCApiHelperI16UFormattedNumberNS_6number4impl20UFormattedNumberImplELi1178881536EE8validateEPKS1_R10UErrorCode.exit.thread

_ZN6icu_7813IcuCApiHelperI16UFormattedNumberNS_6number4impl20UFormattedNumberImplELi1178881536EE8validateEPKS1_R10UErrorCode.exit.thread: ; preds = %.sink.split.i, %bb.a, %bb.f, %bb.d
  ret void

bb.g:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7828FieldPositionIteratorHandlerD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  resume { ptr, i32 } %i.h
}

declare void @_ZN6icu_7828FieldPositionIteratorHandlerC1EPNS_21FieldPositionIteratorER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #6

declare void @_ZNK6icu_7831FormattedValueStringBuilderImpl20getAllFieldPositionsERNS_28FieldPositionIteratorHandlerER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(300), ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZN6icu_7828FieldPositionIteratorHandlerD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef i32 @unumf_resultToDecimalNumber_78(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.icu_78::CharStringByteSink", align 8 ; 7 uses
  %5 = alloca %"class.icu_78::number::impl::DecNum", align 8 ; 8 uses
  %6 = alloca %"class.icu_78::CharString", align 8 ; 12 uses
  %i.a = load i32, ptr %3, align 4, !tbaa !38
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %_ZN6icu_7813IcuCApiHelperI16UFormattedNumberNS_6number4impl20UFormattedNumberImplELi1178881536EE8validateEPKS1_R10UErrorCode.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %.sink.split.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i32, ptr %i.d, align 4, !tbaa !13
  %.not9.i = icmp eq i32 %i.e, 1178881536
  br i1 %.not9.i, label %_ZN6icu_7813IcuCApiHelperI16UFormattedNumberNS_6number4impl20UFormattedNumberImplELi1178881536EE8validateEPKS1_R10UErrorCode.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.c, %bb.b
  %.sink.i = phi i32 [ 1, %bb.b ], [ 3, %bb.c ]
  store i32 %.sink.i, ptr %3, align 4, !tbaa !38
  br label %_ZN6icu_7813IcuCApiHelperI16UFormattedNumberNS_6number4impl20UFormattedNumberImplELi1178881536EE8validateEPKS1_R10UErrorCode.exit.thread

_ZN6icu_7813IcuCApiHelperI16UFormattedNumberNS_6number4impl20UFormattedNumberImplELi1178881536EE8validateEPKS1_R10UErrorCode.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @_ZN6icu_786number4impl6DecNumC1Ev(ptr noundef nonnull align 8 dereferenceable(92) %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.g = invoke noundef nonnull align 8 dereferenceable(92) ptr @_ZNK6icu_786number4impl15DecimalQuantity8toDecNumERNS1_6DecNumER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(66) %i.f, ptr noundef nonnull align 8 dereferenceable(92) %5, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %bb.d unwind label %7

bb.d:                                             ; preds = %_ZN6icu_7813IcuCApiHelperI16UFormattedNumberNS_6number4impl20UFormattedNumberImplELi1178881536EE8validateEPKS1_R10UErrorCode.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !87)
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 13 ; 2 uses
  store ptr %i.h, ptr %6, align 8, !tbaa !46, !alias.scope !87
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 40, ptr %i.i, align 8, !tbaa !88, !alias.scope !87
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  store i8 0, ptr %i.j, align 4, !tbaa !47, !alias.scope !87
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 56
  store i32 0, ptr %i.k, align 8, !tbaa !90, !alias.scope !87
  store i8 0, ptr %i.h, align 1, !tbaa !37, !alias.scope !87
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12, !noalias !87
  invoke void @_ZN6icu_7818CharStringByteSinkC1EPNS_10CharStringE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 %6)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNK6icu_786number4impl6DecNum8toStringERNS_8ByteSinkER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(92) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %bb.i unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7818CharStringByteSinkD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #12
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn.i = phi { ptr, i32 } [ %i.m, %bb.g ], [ %i.l, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12, !noalias !87
  br label %bb.p

bb.i:                                             ; preds = %bb.e
  call void @_ZN6icu_7818CharStringByteSinkD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12, !noalias !87
  %i.n = invoke noundef i32 @_ZNK6icu_7810CharString7extractEPciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %6, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.o = load i8, ptr %i.j, align 4, !tbaa !47
  %.not.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i, label %_ZN6icu_7810CharStringD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = load ptr, ptr %6, align 8, !tbaa !46
  invoke void @uprv_free_78(ptr noundef %i.p)
          to label %_ZN6icu_7810CharStringD2Ev.exit unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  call void @__clang_call_terminate(ptr %i.r) #13
  unreachable

_ZN6icu_7810CharStringD2Ev.exit:                  ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.t = load i8, ptr %i.s, align 4, !tbaa !50
  %.not.i.i.i14 = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i14, label %_ZN6icu_786number4impl6DecNumD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN6icu_7810CharStringD2Ev.exit
  %i.u = load ptr, ptr %5, align 8, !tbaa !51
  invoke void @uprv_free_78(ptr noundef %i.u)
          to label %_ZN6icu_786number4impl6DecNumD2Ev.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  call void @__clang_call_terminate(ptr %i.w) #13
  unreachable

_ZN6icu_786number4impl6DecNumD2Ev.exit:           ; preds = %_ZN6icu_7810CharStringD2Ev.exit, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %_ZN6icu_7813IcuCApiHelperI16UFormattedNumberNS_6number4impl20UFormattedNumberImplELi1178881536EE8validateEPKS1_R10UErrorCode.exit.thread

7:                                                ; preds = %_ZN6icu_7813IcuCApiHelperI16UFormattedNumberNS_6number4impl20UFormattedNumberImplELi1178881536EE8validateEPKS1_R10UErrorCode.exit
  %8 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.o:                                             ; preds = %bb.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.h
  %.pn.ph = phi { ptr, i32 } [ %.pn.i, %bb.h ], [ %i.x, %bb.o ]
  call void @_ZN6icu_7810CharStringD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %6) #12
  br label %.body

.body:                                            ; preds = %bb.p, %7
  %.pn = phi { ptr, i32 } [ %8, %7 ], [ %.pn.ph, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  call void @_ZN6icu_786number4impl6DecNumD2Ev(ptr noundef nonnull align 8 dead_on_return(92) dereferenceable(92) %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  resume { ptr, i32 } %.pn

_ZN6icu_7813IcuCApiHelperI16UFormattedNumberNS_6number4impl20UFormattedNumberImplELi1178881536EE8validateEPKS1_R10UErrorCode.exit.thread: ; preds = %.sink.split.i, %bb.a, %_ZN6icu_786number4impl6DecNumD2Ev.exit
  %.012 = phi i32 [ %i.n, %_ZN6icu_786number4impl6DecNumD2Ev.exit ], [ 0, %bb.a ], [ 0, %.sink.split.i ]
  ret i32 %.012
}

declare void @_ZN6icu_786number4impl6DecNumC1Ev(ptr noundef nonnull align 8 dereferenceable(92)) unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(92) ptr @_ZNK6icu_786number4impl15DecimalQuantity8toDecNumERNS1_6DecNumER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(66), ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #6

declare noundef i32 @_ZNK6icu_7810CharString7extractEPciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60), ptr noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6icu_7810CharStringD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i8, ptr %i.a, align 4, !tbaa !47
  %.not.i.i = icmp eq i8 %i.b, 0
  br i1 %.not.i.i, label %_ZN6icu_7815MaybeStackArrayIcLi40EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !46
  invoke void @uprv_free_78(ptr noundef %i.c)
          to label %_ZN6icu_7815MaybeStackArrayIcLi40EED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #13
  unreachable

_ZN6icu_7815MaybeStackArrayIcLi40EED2Ev.exit:     ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6icu_786number4impl6DecNumD2Ev(ptr noundef nonnull align 8 dead_on_return(92) dereferenceable(92) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i8, ptr %i.a, align 4, !tbaa !50
  %.not.i.i = icmp eq i8 %i.b, 0
  br i1 %.not.i.i, label %_ZN6icu_7824MaybeStackHeaderAndArrayI9decNumbercLi34EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !51
  invoke void @uprv_free_78(ptr noundef %i.c)
          to label %_ZN6icu_7824MaybeStackHeaderAndArrayI9decNumbercLi34EED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #13
  unreachable

_ZN6icu_7824MaybeStackHeaderAndArrayI9decNumbercLi34EED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @unumf_close_78(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %_ZN6icu_7813IcuCApiHelperI16UNumberFormatterNS_6number4impl20UNumberFormatterDataELi1313231360EE8validateEPS1_R10UErrorCode.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 4, !tbaa !40
  %.not9.i.i = icmp eq i32 %i.b, 1313231360
  br i1 %.not9.i.i, label %_ZN6icu_7813IcuCApiHelperI16UNumberFormatterNS_6number4impl20UNumberFormatterDataELi1313231360EE8validateEPS1_R10UErrorCode.exit, label %_ZN6icu_7813IcuCApiHelperI16UNumberFormatterNS_6number4impl20UNumberFormatterDataELi1313231360EE8validateEPS1_R10UErrorCode.exit.thread

_ZN6icu_7813IcuCApiHelperI16UNumberFormatterNS_6number4impl20UNumberFormatterDataELi1313231360EE8validateEPS1_R10UErrorCode.exit: ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN6icu_786number24LocalizedNumberFormatterD1Ev(ptr noundef nonnull align 8 dead_on_return(312) dereferenceable(312) %i.c) #12
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #12
  br label %_ZN6icu_7813IcuCApiHelperI16UNumberFormatterNS_6number4impl20UNumberFormatterDataELi1313231360EE8validateEPS1_R10UErrorCode.exit.thread

_ZN6icu_7813IcuCApiHelperI16UNumberFormatterNS_6number4impl20UNumberFormatterDataELi1313231360EE8validateEPS1_R10UErrorCode.exit.thread: ; preds = %bb.b, %bb.a, %_ZN6icu_7813IcuCApiHelperI16UNumberFormatterNS_6number4impl20UNumberFormatterDataELi1313231360EE8validateEPS1_R10UErrorCode.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @usnum_openForInt64_78(i64 noundef %0, ptr noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.icu_78::number::SimpleNumber", align 8 ; 7 uses
  %i.a = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 24) #12 ; 6 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 7, ptr %1, align 4, !tbaa !38
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  store i32 1397640448, ptr %i.a, align 8, !tbaa !53
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i32 1, ptr %i.d, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  call void @_ZN6icu_786number12SimpleNumber8forInt64ElR10UErrorCode(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::number::SimpleNumber") align 8 %2, i64 noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1)
  invoke void @_ZN6icu_786number12SimpleNumber7cleanupEv(ptr noundef nonnull align 8 dereferenceable(12) %i.c)
          to label %_ZN6icu_786number12SimpleNumberaSEOS1_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  call void @__clang_call_terminate(ptr %i.f) #13
  unreachable

_ZN6icu_786number12SimpleNumberaSEOS1_.exit:      ; preds = %bb.c
  %i.g = load ptr, ptr %2, align 8, !tbaa !57
  store ptr %i.g, ptr %i.c, align 8, !tbaa !57
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !56
  store i32 %i.i, ptr %i.d, align 8, !tbaa !56
  store ptr null, ptr %2, align 8, !tbaa !57
  invoke void @_ZN6icu_786number12SimpleNumber7cleanupEv(ptr noundef nonnull align 8 dereferenceable(12) %2)
          to label %_ZN6icu_786number12SimpleNumberD2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %_ZN6icu_786number12SimpleNumberaSEOS1_.exit
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  call void @__clang_call_terminate(ptr %i.k) #13
  unreachable

_ZN6icu_786number12SimpleNumberD2Ev.exit:         ; preds = %_ZN6icu_786number12SimpleNumberaSEOS1_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  br label %bb.f

bb.f:                                             ; preds = %_ZN6icu_786number12SimpleNumberD2Ev.exit, %bb.b
  ret ptr %i.a
}

declare void @_ZN6icu_786number12SimpleNumber8forInt64ElR10UErrorCode(ptr dead_on_unwind writable sret(%"class.icu_78::number::SimpleNumber") align 8, i64 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @usnum_setToInt64_78(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.icu_78::number::SimpleNumber", align 8 ; 7 uses
  %i.a = load i32, ptr %2, align 4, !tbaa !38
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %_ZN6icu_7813IcuCApiHelperI13USimpleNumberNS_6number4impl17USimpleNumberDataELi1397640448EE8validateEPS1_R10UErrorCode.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %.sink.split.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr %0, align 4, !tbaa !53
  %.not9.i.i = icmp eq i32 %i.d, 1397640448
  br i1 %.not9.i.i, label %_ZN6icu_7813IcuCApiHelperI13USimpleNumberNS_6number4impl17USimpleNumberDataELi1397640448EE8validateEPS1_R10UErrorCode.exit, label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.c, %bb.b
  %.sink.i.i = phi i32 [ 1, %bb.b ], [ 3, %bb.c ]
  store i32 %.sink.i.i, ptr %2, align 4, !tbaa !38
  br label %_ZN6icu_7813IcuCApiHelperI13USimpleNumberNS_6number4impl17USimpleNumberDataELi1397640448EE8validateEPS1_R10UErrorCode.exit.thread

_ZN6icu_7813IcuCApiHelperI13USimpleNumberNS_6number4impl17USimpleNumberDataELi1397640448EE8validateEPS1_R10UErrorCode.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call void @_ZN6icu_786number12SimpleNumber8forInt64ElR10UErrorCode(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::number::SimpleNumber") align 8 %3, i64 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  invoke void @_ZN6icu_786number12SimpleNumber7cleanupEv(ptr noundef nonnull align 8 dereferenceable(12) %i.e)
          to label %_ZN6icu_786number12SimpleNumberaSEOS1_.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZN6icu_7813IcuCApiHelperI13USimpleNumberNS_6number4impl17USimpleNumberDataELi1397640448EE8validateEPS1_R10UErrorCode.exit
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  call void @__clang_call_terminate(ptr %i.g) #13
  unreachable

_ZN6icu_786number12SimpleNumberaSEOS1_.exit:      ; preds = %_ZN6icu_7813IcuCApiHelperI13USimpleNumberNS_6number4impl17USimpleNumberDataELi1397640448EE8validateEPS1_R10UErrorCode.exit
  %i.h = load ptr, ptr %3, align 8, !tbaa !57
  store ptr %i.h, ptr %i.e, align 8, !tbaa !57
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !56
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.j, ptr %i.k, align 8, !tbaa !56
  store ptr null, ptr %3, align 8, !tbaa !57
  invoke void @_ZN6icu_786number12SimpleNumber7cleanupEv(ptr noundef nonnull align 8 dereferenceable(12) %3)
          to label %_ZN6icu_786number12SimpleNumberD2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %_ZN6icu_786number12SimpleNumberaSEOS1_.exit
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  call void @__clang_call_terminate(ptr %i.m) #13
  unreachable

_ZN6icu_786number12SimpleNumberD2Ev.exit:         ; preds = %_ZN6icu_786number12SimpleNumberaSEOS1_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %_ZN6icu_7813IcuCApiHelperI13USimpleNumberNS_6number4impl17USimpleNumberDataELi1397640448EE8validateEPS1_R10UErrorCode.exit.thread

end_hunk_0
