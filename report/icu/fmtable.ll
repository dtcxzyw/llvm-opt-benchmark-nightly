inline.NumInlined: 154
inline.NumDeleted: 47
begin_hunk_0_@_ZN6icu_7813UnicodeString10setToBogusEv
declare void @_ZN6icu_7813UnicodeString10setToBogusEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7811FormattableC2Ev(ptr noundef nonnull align 8 dereferenceable(112) initializes((0, 16), (24, 44), (48, 58)) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_7811FormattableE, i64 16), ptr %0, align 8, !tbaa !18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.a, align 8, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i16 2, ptr %i.b, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 2, ptr %i.d, align 8, !tbaa !9
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  invoke void @_ZN6icu_7813UnicodeString10setToBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %i.a)
          to label %_ZN6icu_7811Formattable4initEv.exit unwind label %bb.b

_ZN6icu_7811Formattable4initEv.exit:              ; preds = %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.a) #14
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #14
  resume { ptr, i32 } %i.f
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7811FormattableC2EdNS0_6ISDATEE(ptr noundef nonnull align 8 dereferenceable(112) initializes((0, 16), (24, 44), (48, 58)) %0, double noundef %1, i32 %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_7811FormattableE, i64 16), ptr %0, align 8, !tbaa !18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.a, align 8, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i16 2, ptr %i.b, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.c, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i32 2, ptr %i.d, align 8, !tbaa !9
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  invoke void @_ZN6icu_7813UnicodeString10setToBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %i.a)
          to label %_ZN6icu_7811Formattable4initEv.exit unwind label %bb.b

_ZN6icu_7811Formattable4initEv.exit:              ; preds = %bb.a
  store i32 0, ptr %i.d, align 8, !tbaa !9
  store double %1, ptr %i.c, align 8, !tbaa !8
  ret void

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.a) #14
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #14
  resume { ptr, i32 } %i.f
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7811FormattableC2Ed(ptr noundef nonnull align 8 dereferenceable(112) initializes((0, 16), (24, 44), (48, 58)) %0, double noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_7811FormattableE, i64 16), ptr %0, align 8, !tbaa !18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.a, align 8, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i16 2, ptr %i.b, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.c, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i32 2, ptr %i.d, align 8, !tbaa !9
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  invoke void @_ZN6icu_7813UnicodeString10setToBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %i.a)
          to label %_ZN6icu_7811Formattable4initEv.exit unwind label %bb.b

_ZN6icu_7811Formattable4initEv.exit:              ; preds = %bb.a
  store i32 1, ptr %i.d, align 8, !tbaa !9
  store double %1, ptr %i.c, align 8, !tbaa !8
  ret void

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.a) #14
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #14
  resume { ptr, i32 } %i.f
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7811FormattableC2Ei(ptr noundef nonnull align 8 dereferenceable(112) initializes((0, 16), (24, 44), (48, 58)) %0, i32 noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_7811FormattableE, i64 16), ptr %0, align 8, !tbaa !18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.a, align 8, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i16 2, ptr %i.b, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.c, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 2, ptr %i.d, align 8, !tbaa !9
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  invoke void @_ZN6icu_7813UnicodeString10setToBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %i.a)
          to label %_ZN6icu_7811Formattable4initEv.exit unwind label %bb.b

_ZN6icu_7811Formattable4initEv.exit:              ; preds = %bb.a
  %i.f = sext i32 %1 to i64
  store i64 %i.f, ptr %i.c, align 8, !tbaa !8
  ret void

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.a) #14
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #14
  resume { ptr, i32 } %i.g
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7811FormattableC2El(ptr noundef nonnull align 8 dereferenceable(112) initializes((0, 16), (24, 44), (48, 58)) %0, i64 noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_7811FormattableE, i64 16), ptr %0, align 8, !tbaa !18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.a, align 8, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i16 2, ptr %i.b, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.c, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i32 2, ptr %i.d, align 8, !tbaa !9
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  invoke void @_ZN6icu_7813UnicodeString10setToBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %i.a)
          to label %_ZN6icu_7811Formattable4initEv.exit unwind label %bb.b

_ZN6icu_7811Formattable4initEv.exit:              ; preds = %bb.a
  store i32 5, ptr %i.d, align 8, !tbaa !9
  store i64 %1, ptr %i.c, align 8, !tbaa !8
  ret void

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.a) #14
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #14
  resume { ptr, i32 } %i.f
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7811FormattableC2ENS_11StringPieceER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(112) initializes((0, 16), (24, 44), (48, 58)) %0, ptr %1, i32 %2, ptr noundef nonnull align 4 dereferenceable(4) %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_7811FormattableE, i64 16), ptr %0, align 8, !tbaa !18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.a, align 8, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i16 2, ptr %i.b, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 2, ptr %i.d, align 8, !tbaa !9
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  invoke void @_ZN6icu_7813UnicodeString10setToBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %i.a)
          to label %_ZN6icu_7811Formattable4initEv.exit unwind label %bb.c

_ZN6icu_7811Formattable4initEv.exit:              ; preds = %bb.a
  invoke void @_ZN6icu_7811Formattable16setDecimalNumberENS_11StringPieceER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr %1, i32 %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %_ZN6icu_7811Formattable4initEv.exit
  ret void

bb.c:                                             ; preds = %bb.a, %_ZN6icu_7811Formattable4initEv.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.a) #14
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #14
  resume { ptr, i32 } %i.f
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7811Formattable16setDecimalNumberENS_11StringPieceER10UErrorCode(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(112) %0, ptr %1, i32 %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %3, align 4, !tbaa !20
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %_ZN6icu_7811Formattable20adoptDecimalQuantityEPNS_6number4impl15DecimalQuantityE.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6icu_7811Formattable7disposeEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
  %i.c = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 72) #14 ; 6 uses
  %4 = icmp eq ptr %i.c, null
  br i1 %4, label %bb.c, label %5

5:                                                ; preds = %bb.b
  invoke void @_ZN6icu_786number4impl15DecimalQuantityC1Ev(ptr noundef nonnull align 8 dereferenceable(66) %i.c)
          to label %bb.c unwind label %bb.j

bb.c:                                             ; preds = %5, %bb.b
  %i.d = tail call noundef nonnull align 8 dereferenceable(66) ptr @_ZN6icu_786number4impl15DecimalQuantity14setToDecNumberENS_11StringPieceER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(66) %i.c, ptr %1, i32 %2, ptr noundef nonnull align 4 dereferenceable(4) %3) ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !22   ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(66) %i.f) #14, !inline_history !23
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  store ptr %i.c, ptr %i.e, align 8, !tbaa !22
  %i.k = tail call noundef zeroext i1 @_ZNK6icu_786number4impl15DecimalQuantity10fitsInLongEb(ptr noundef nonnull align 8 dereferenceable(66) %i.c, i1 noundef zeroext false)
  br i1 %i.k, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !22
  %i.m = tail call noundef i64 @_ZNK6icu_786number4impl15DecimalQuantity6toLongEb(ptr noundef nonnull align 8 dereferenceable(66) %i.l, i1 noundef zeroext false) ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.m, ptr %i.n, align 8, !tbaa !8
  %i.o = add i64 %i.m, 2147483648
  %or.cond.i = icmp ult i64 %i.o, 4294967296
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br i1 %or.cond.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 2, ptr %i.p, align 8, !tbaa !9
  br label %_ZN6icu_7811Formattable20adoptDecimalQuantityEPNS_6number4impl15DecimalQuantityE.exit

bb.h:                                             ; preds = %bb.f
  store i32 5, ptr %i.p, align 8, !tbaa !9
  br label %_ZN6icu_7811Formattable20adoptDecimalQuantityEPNS_6number4impl15DecimalQuantityE.exit

bb.i:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 1, ptr %i.q, align 8, !tbaa !9
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !22
  %i.s = tail call noundef double @_ZNK6icu_786number4impl15DecimalQuantity8toDoubleEv(ptr noundef nonnull align 8 dereferenceable(66) %i.r)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.s, ptr %i.t, align 8, !tbaa !8
  br label %_ZN6icu_7811Formattable20adoptDecimalQuantityEPNS_6number4impl15DecimalQuantityE.exit

_ZN6icu_7811Formattable20adoptDecimalQuantityEPNS_6number4impl15DecimalQuantityE.exit: ; preds = %bb.i, %bb.h, %bb.g, %bb.a
  ret void

bb.j:                                             ; preds = %5
  %i.u = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.c) #14
  resume { ptr, i32 } %i.u
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7811FormattableC2ERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(112) initializes((0, 16), (24, 44), (48, 58)) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_7811FormattableE, i64 16), ptr %0, align 8, !tbaa !18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.a, align 8, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i16 2, ptr %i.b, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.c, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i32 2, ptr %i.d, align 8, !tbaa !9
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  invoke void @_ZN6icu_7813UnicodeString10setToBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %i.a)
          to label %_ZN6icu_7811Formattable4initEv.exit unwind label %bb.d

_ZN6icu_7811Formattable4initEv.exit:              ; preds = %bb.a
  store i32 3, ptr %i.d, align 8, !tbaa !9
  %i.f = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 64) #14 ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN6icu_7811Formattable4initEv.exit
  invoke void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.f, ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %_ZN6icu_7811Formattable4initEv.exit
  store ptr %i.f, ptr %i.c, align 8, !tbaa !8
  ret void

bb.d:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.f) #14
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.i, %bb.e ], [ %i.h, %bb.d ]
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.a) #14
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #14
  resume { ptr, i32 } %.pn
}

; Function Attrs: nounwind
declare noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef) local_unnamed_addr #3

declare void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN6icu_787UMemorydlEPv(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7811FormattableC2EPNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(112) initializes((0, 16), (24, 44), (48, 58)) %0, ptr noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_7811FormattableE, i64 16), ptr %0, align 8, !tbaa !18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.a, align 8, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i16 2, ptr %i.b, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.c, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i32 2, ptr %i.d, align 8, !tbaa !9
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  invoke void @_ZN6icu_7813UnicodeString10setToBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %i.a)
          to label %_ZN6icu_7811Formattable4initEv.exit unwind label %bb.b

_ZN6icu_7811Formattable4initEv.exit:              ; preds = %bb.a
  store i32 3, ptr %i.d, align 8, !tbaa !9
  store ptr %1, ptr %i.c, align 8, !tbaa !8
  ret void

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.a) #14
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #14
  resume { ptr, i32 } %i.f
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7811FormattableC2EPNS_7UObjectE(ptr noundef nonnull align 8 dereferenceable(112) initializes((0, 16), (24, 44), (48, 58)) %0, ptr noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_7811FormattableE, i64 16), ptr %0, align 8, !tbaa !18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.a, align 8, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i16 2, ptr %i.b, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.c, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i32 2, ptr %i.d, align 8, !tbaa !9
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  invoke void @_ZN6icu_7813UnicodeString10setToBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %i.a)
          to label %_ZN6icu_7811Formattable4initEv.exit unwind label %bb.b

_ZN6icu_7811Formattable4initEv.exit:              ; preds = %bb.a
  store i32 6, ptr %i.d, align 8, !tbaa !9
  store ptr %1, ptr %i.c, align 8, !tbaa !8
  ret void

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.a) #14
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #14
  resume { ptr, i32 } %i.f
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7811FormattableC2EPKS0_i(ptr noundef nonnull align 8 dereferenceable(112) initializes((0, 16), (24, 44), (48, 58)) %0, ptr nofree noundef readonly captures(address) %1, i32 noundef %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_7811FormattableE, i64 16), ptr %0, align 8, !tbaa !18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.b, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i16 2, ptr %i.c, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.d, align 8, !tbaa !8
  store i32 2, ptr %i.a, align 8, !tbaa !9
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  invoke void @_ZN6icu_7813UnicodeString10setToBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %_ZN6icu_7811Formattable4initEv.exit unwind label %.loopexit.split-lp

_ZN6icu_7811Formattable4initEv.exit:              ; preds = %bb.a
  store i32 4, ptr %i.a, align 8, !tbaa !9
  %i.f = sext i32 %2 to i64                       ; 2 uses
  %i.g = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.f, i64 112) ; 2 uses
  %i.h = extractvalue { i64, i1 } %i.g, 1
  %i.i = extractvalue { i64, i1 } %i.g, 0         ; 2 uses
  %i.j = or disjoint i64 %i.i, 8
  %i.k = select i1 %i.h, i64 -1, i64 %i.j
  %i.l = tail call noundef ptr @_ZN6icu_787UMemorynaEm(i64 noundef %i.k) #14, !inline_history !24 ; 6 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_ZN6icu_78L15createArrayCopyEPKNS_11FormattableEi.exit, label %bb.b

bb.b:                                             ; preds = %_ZN6icu_7811Formattable4initEv.exit
  store i64 %i.f, ptr %i.l, align 8
  %.ptr21.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  %i.n = icmp eq i32 %2, 0
  br i1 %i.n, label %_ZN6icu_78L15createArrayCopyEPKNS_11FormattableEi.exit, label %.preheader

.preheader:                                       ; preds = %bb.b, %bb.c
  %.idx.i = phi i64 [ %.add.i, %bb.c ], [ 8, %bb.b ] ; 5 uses
  %.ptr.ptr.i = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx.i
  invoke void @_ZN6icu_7811FormattableC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %.ptr.ptr.i)
          to label %bb.c unwind label %bb.d, !inline_history !24

bb.c:                                             ; preds = %.preheader
  %.add.i = add nuw nsw i64 %.idx.i, 112
  %i.o = add nuw nsw i64 %.idx.i, 104
  %i.p = icmp eq i64 %i.o, %i.i
  br i1 %i.p, label %.loopexit28.i, label %.preheader

.loopexit28.i:                                    ; preds = %bb.c
  %i.q = icmp sgt i32 %2, 0
  br i1 %i.q, label %.lr.ph.preheader.i, label %_ZN6icu_78L15createArrayCopyEPKNS_11FormattableEi.exit

.lr.ph.preheader.i:                               ; preds = %.loopexit28.i
  %wide.trip.count.i = zext nneg i32 %2 to i64
  br label %.lr.ph.i

bb.d:                                             ; preds = %.preheader
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = icmp eq i64 %.idx.i, 8
  br i1 %i.s, label %.loopexit.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d, %.preheader.i
  %.idx22.i = phi i64 [ %.add23.i, %.preheader.i ], [ %.idx.i, %bb.d ]
  %.add23.i = add nsw i64 %.idx22.i, -112         ; 3 uses
  %.ptr25.i = getelementptr inbounds i8, ptr %i.l, i64 %.add23.i
  tail call void @_ZN6icu_7811FormattableD1Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %.ptr25.i) #14, !inline_history !24
  %i.t = icmp eq i64 %.add23.i, 8
  br i1 %i.t, label %.loopexit.i, label %.preheader.i

.loopexit.i:                                      ; preds = %.preheader.i, %bb.d
  tail call void @_ZN6icu_787UMemorydaEPv(ptr noundef nonnull %i.l) #14, !inline_history !24
  br label %.body

.lr.ph.i:                                         ; preds = %.noexc, %.lr.ph.preheader.i
end_hunk_0
