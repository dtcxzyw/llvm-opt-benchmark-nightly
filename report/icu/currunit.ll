inline.NumInlined: 13
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN6icu_7812CurrencyUnitC2ENS_14ConstChar16PtrER10UErrorCode:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 20
  invoke void @u_UCharsToChars_78(ptr noundef nonnull %i.ag, ptr noundef nonnull %i.a, i32 noundef 4)
          to label %bb.n unwind label %bb.q

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull %i.a)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.ah = load ptr, ptr %3, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aj = load i32, ptr %i.ai, align 8
  invoke void @_ZN6icu_7811MeasureUnit12initCurrencyENS_11StringPieceE(ptr noundef nonnull align 8 dereferenceable(19) %0, ptr %i.ah, i32 %i.aj)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void

bb.q:                                             ; preds = %bb.o, %bb.n, %bb.m
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.l, %bb.d
  %.pn = phi { ptr, i32 } [ %i.ak, %bb.q ], [ %i.ae, %bb.l ], [ %i.h, %bb.d ]
  call void @_ZN6icu_7811MeasureUnitD2Ev(ptr noundef nonnull align 8 dead_on_return(19) dereferenceable(19) %0) #7
  resume { ptr, i32 } %.pn
}

declare void @_ZN6icu_7811MeasureUnitC2Ev(ptr noundef nonnull align 8 dereferenceable(19)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @__gxx_personality_v0(...)

declare signext i8 @uprv_isInvariantUString_78(ptr noundef, i32 noundef) local_unnamed_addr #1

declare zeroext i16 @u_asciiToUpper_78(i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare void @u_UCharsToChars_78(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN6icu_7811MeasureUnit12initCurrencyENS_11StringPieceE(ptr noundef nonnull align 8 dereferenceable(19), ptr, i32) local_unnamed_addr #1

declare void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN6icu_7811MeasureUnitD2Ev(ptr noundef nonnull align 8 dead_on_return(19) dereferenceable(19)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7812CurrencyUnitC2ENS_11StringPieceER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr %1, i32 %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [4 x i8], align 1                 ; 8 uses
  %4 = alloca %"class.icu_78::StringPiece", align 8 ; 3 uses
  tail call void @_ZN6icu_7811MeasureUnitC2Ev(ptr noundef nonnull align 8 dereferenceable(19) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6icu_7812CurrencyUnitE, i64 16), ptr %0, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %.not = icmp eq i32 %2, 3
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef ptr @memchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 0, i64 noundef 3) #8
  %.not13 = icmp eq ptr %i.b, null
  br i1 %.not13, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store i32 1, ptr %3, align 4, !tbaa !10
  br label %bb.j

bb.d:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.e
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.e:                                             ; preds = %bb.b
  %i.d = invoke signext i8 @uprv_isInvariantString_78(ptr noundef nonnull %1, i32 noundef 3)
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  %.not14 = icmp eq i8 %i.d, 0
  br i1 %.not14, label %bb.g, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.f
  %i.e = load i8, ptr %1, align 1, !tbaa !18
  %i.f = invoke signext i8 @uprv_toupper_78(i8 noundef signext %i.e)
          to label %.preheader.1 unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  store i32 26, ptr %3, align 4, !tbaa !10
  br label %bb.j

.preheader.1:                                     ; preds = %.preheader.preheader
  store i8 %i.f, ptr %i.a, align 1, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !18
  %i.i = invoke signext i8 @uprv_toupper_78(i8 noundef signext %i.h)
          to label %.preheader.2 unwind label %bb.i

.preheader.2:                                     ; preds = %.preheader.1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.i, ptr %i.j, align 1, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.l = load i8, ptr %i.k, align 1, !tbaa !18
  %i.m = invoke signext i8 @uprv_toupper_78(i8 noundef signext %i.l)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %.preheader.2
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.m, ptr %i.n, align 1, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 0, ptr %i.o, align 1, !tbaa !18
  br label %bb.j

bb.i:                                             ; preds = %.preheader.2, %.preheader.1, %.preheader.preheader
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.c
  %.012 = phi ptr [ @_ZN6icu_78L17kDefaultCurrency8E, %bb.c ], [ %i.a, %bb.h ], [ @_ZN6icu_78L17kDefaultCurrency8E, %bb.g ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 20
  invoke void @u_charsToUChars_78(ptr noundef nonnull %.012, ptr noundef nonnull %i.q, i32 noundef 4)
          to label %bb.k unwind label %bb.d

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull %.012)
          to label %bb.l unwind label %bb.d

bb.l:                                             ; preds = %bb.k
  %i.r = load ptr, ptr %4, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.t = load i32, ptr %i.s, align 8
  invoke void @_ZN6icu_7811MeasureUnit12initCurrencyENS_11StringPieceE(ptr noundef nonnull align 8 dereferenceable(19) %0, ptr %i.r, i32 %i.t)
          to label %bb.m unwind label %bb.d

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void

bb.n:                                             ; preds = %bb.i, %bb.d
  %.pn = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.p, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  call void @_ZN6icu_7811MeasureUnitD2Ev(ptr noundef nonnull align 8 dead_on_return(19) dereferenceable(19) %0) #7
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

declare signext i8 @uprv_isInvariantString_78(ptr noundef, i32 noundef) local_unnamed_addr #1

declare signext i8 @uprv_toupper_78(i8 noundef signext) local_unnamed_addr #1

declare void @u_charsToUChars_78(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7812CurrencyUnitC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(28) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN6icu_7811MeasureUnitC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(19) %0, ptr noundef nonnull align 8 dereferenceable(19) %1)
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6icu_7812CurrencyUnitE, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.c = invoke ptr @u_strcpy_78(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
          to label %bb.b unwind label %bb.c       ; 0 uses

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_7811MeasureUnitD2Ev(ptr noundef nonnull align 8 dead_on_return(19) dereferenceable(19) %0) #7
  resume { ptr, i32 } %i.d
}

declare void @_ZN6icu_7811MeasureUnitC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(19), ptr noundef nonnull align 8 dereferenceable(19)) unnamed_addr #1

declare ptr @u_strcpy_78(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7812CurrencyUnitC2ERKNS_11MeasureUnitER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(19) %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN6icu_7811MeasureUnitC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(19) %0, ptr noundef nonnull align 8 dereferenceable(19) %1)
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6icu_7812CurrencyUnitE, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = invoke noundef ptr @_ZNK6icu_7811MeasureUnit7getTypeEv(ptr noundef nonnull align 8 dereferenceable(19) %0)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(9) @.str, ptr noundef nonnull dereferenceable(1) %i.a) #8
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %2, align 4, !tbaa !10
  br label %bb.g

bb.d:                                             ; preds = %bb.f, %bb.e, %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_7811MeasureUnitD2Ev(ptr noundef nonnull align 8 dead_on_return(19) dereferenceable(19) %0) #7
  resume { ptr, i32 } %i.c

bb.e:                                             ; preds = %bb.b
  %i.d = invoke noundef ptr @_ZNK6icu_7811MeasureUnit10getSubtypeEv(ptr noundef nonnull align 8 dereferenceable(19) %0)
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  invoke void @u_charsToUChars_78(ptr noundef %i.d, ptr noundef nonnull %i.e, i32 noundef 4)
          to label %bb.g unwind label %bb.d

bb.g:                                             ; preds = %bb.f, %bb.c
  %.sink4 = phi i64 [ 20, %bb.c ], [ 26, %bb.f ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %.sink4
  store i16 0, ptr %i.f, align 2, !tbaa !16
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #4

declare noundef ptr @_ZNK6icu_7811MeasureUnit7getTypeEv(ptr noundef nonnull align 8 dereferenceable(19)) local_unnamed_addr #1

declare noundef ptr @_ZNK6icu_7811MeasureUnit10getSubtypeEv(ptr noundef nonnull align 8 dereferenceable(19)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7812CurrencyUnitC2Ev(ptr noundef nonnull align 8 dereferenceable(28) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [4 x i8], align 1                 ; 5 uses
  %1 = alloca %"class.icu_78::StringPiece", align 8 ; 3 uses
  tail call void @_ZN6icu_7811MeasureUnitC2Ev(ptr noundef nonnull align 8 dereferenceable(19) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6icu_7812CurrencyUnitE, i64 16), ptr %0, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.c = invoke ptr @u_strcpy_78(ptr noundef nonnull %i.b, ptr noundef nonnull @_ZN6icu_78L16kDefaultCurrencyE)
          to label %bb.b unwind label %bb.f       ; 0 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  invoke void @u_UCharsToChars_78(ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i32 noundef 4)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull %i.a)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.d = load ptr, ptr %1, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i32, ptr %i.e, align 8
  invoke void @_ZN6icu_7811MeasureUnit12initCurrencyENS_11StringPieceE(ptr noundef nonnull align 8 dereferenceable(19) %0, ptr %i.d, i32 %i.f)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void

bb.f:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.h, %bb.g ], [ %i.g, %bb.f ]
  call void @_ZN6icu_7811MeasureUnitD2Ev(ptr noundef nonnull align 8 dead_on_return(19) dereferenceable(19) %0) #7
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(28) ptr @_ZN6icu_7812CurrencyUnitaSERKS0_(ptr noundef nonnull returned align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(28) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull align 8 dereferenceable(19) ptr @_ZN6icu_7811MeasureUnitaSERKS0_(ptr noundef nonnull align 8 dereferenceable(19) %0, ptr noundef nonnull align 8 dereferenceable(19) %1) ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.e = tail call ptr @u_strcpy_78(ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret ptr %0
}

declare noundef nonnull align 8 dereferenceable(19) ptr @_ZN6icu_7811MeasureUnitaSERKS0_(ptr noundef nonnull align 8 dereferenceable(19), ptr noundef nonnull align 8 dereferenceable(19)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK6icu_7812CurrencyUnit5cloneEv(ptr noundef nonnull align 8 dereferenceable(28) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 32) #7 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6icu_7812CurrencyUnitC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(28) %i.a, ptr noundef nonnull align 8 dereferenceable(28) %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %i.a

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.a) #7
  resume { ptr, i32 } %i.c
}

; Function Attrs: nounwind
declare noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN6icu_787UMemorydlEPv(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_7812CurrencyUnitD2Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZN6icu_7811MeasureUnitD2Ev(ptr noundef nonnull align 8 dead_on_return(19) dereferenceable(19) %0) #7
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_7812CurrencyUnitD0Ev(ptr noundef nonnull align 8 dereferenceable(28) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZN6icu_7812CurrencyUnitD1Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %0) #7
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @_ZN6icu_7812CurrencyUnit16getStaticClassIDEv() local_unnamed_addr #6 align 2 {
bb.a:
  ret ptr @_ZZN6icu_7812CurrencyUnit16getStaticClassIDEvE7classID
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @_ZNK6icu_7812CurrencyUnit17getDynamicClassIDEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #6 align 2 {
bb.a:
  ret ptr @_ZZN6icu_7812CurrencyUnit16getStaticClassIDEvE7classID
}

declare noundef zeroext i1 @_ZNK6icu_7811MeasureUniteqERKNS_7UObjectE(ptr noundef nonnull align 8 dereferenceable(19), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"vtable pointer", !7, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"_ZTS10UErrorCode", !6, i64 0}
!12 = !{!13, !14, i64 0}
!13 = !{!"_ZTSN6icu_7814ConstChar16PtrE", !14, i64 0}
!14 = !{!"p1 char16_t", !15, i64 0}
!15 = !{!"any pointer", !6, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"char16_t", !6, i64 0}
!18 = !{!6, !6, i64 0}
end_hunk_0
