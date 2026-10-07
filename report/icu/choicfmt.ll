Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/choicfmt?download=true
inline.NumInlined: 73
inline.NumDeleted: 34
begin_hunk_0_@_ZN6icu_7812ChoiceFormatC2EPKdPKaPKNS_13UnicodeStringEi:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  invoke void @_ZN6icu_7814MessagePatternC1ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(127) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !9
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 368
  %i.e = load ptr, ptr %i.d, align 8
  invoke void %i.e(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  ret void

bb.d:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_7814MessagePatternD1Ev(ptr noundef nonnull align 8 dead_on_return(127) dereferenceable(127) %i.b) #10
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.g, %bb.e ], [ %i.f, %bb.d ]
  tail call void @_ZN6icu_7812NumberFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %0) #10
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7812ChoiceFormatC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(256) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN6icu_7812NumberFormatC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef nonnull align 8 dereferenceable(124) %1)
  store ptr getelementptr inbounds nuw inrange(-16, 376) (i8, ptr @_ZTVN6icu_7812ChoiceFormatE, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.c = load i32, ptr %i.b, align 4, !tbaa !27
  store i32 %i.c, ptr %i.a, align 4, !tbaa !27
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 128
  invoke void @_ZN6icu_7814MessagePatternC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(127) %i.d, ptr noundef nonnull align 8 dereferenceable(127) %i.e)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_7812NumberFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %0) #10
  resume { ptr, i32 } %i.f
}

declare void @_ZN6icu_7812NumberFormatC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef nonnull align 8 dereferenceable(124)) unnamed_addr #2

declare void @_ZN6icu_7814MessagePatternC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(127), ptr noundef nonnull align 8 dereferenceable(127)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7812ChoiceFormatC2ERKNS_13UnicodeStringER11UParseErrorR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(72) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN6icu_7812NumberFormatC2Ev(ptr noundef nonnull align 8 dereferenceable(124) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 376) (i8, ptr @_ZTVN6icu_7812ChoiceFormatE, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.b = load i32, ptr %3, align 4, !tbaa !11
  store i32 %i.b, ptr %i.a, align 4, !tbaa !27
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  invoke void @_ZN6icu_7814MessagePatternC1ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(127) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !9
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 304
  %i.f = load ptr, ptr %i.e, align 8
  invoke void %i.f(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(72) %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  ret void

bb.d:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_7814MessagePatternD1Ev(ptr noundef nonnull align 8 dead_on_return(127) dereferenceable(127) %i.c) #10
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.h, %bb.e ], [ %i.g, %bb.d ]
  tail call void @_ZN6icu_7812NumberFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %0) #10
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK6icu_7812ChoiceFormateqERKNS_6FormatE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) unnamed_addr #1 align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZNK6icu_7812NumberFormateqERKNS_6FormatE(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef nonnull align 8 dereferenceable(88) %1)
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.e = tail call noundef zeroext i1 @_ZNK6icu_7814MessagePatterneqERKS0_(ptr noundef nonnull align 8 dereferenceable(127) %i.c, ptr noundef nonnull align 8 dereferenceable(127) %i.d)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i1 [ true, %bb.a ], [ %i.e, %bb.c ], [ false, %bb.b ]
  ret i1 %.0
}

declare noundef zeroext i1 @_ZNK6icu_7812NumberFormateqERKNS_6FormatE(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef nonnull align 8 dereferenceable(88)) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

declare noundef zeroext i1 @_ZNK6icu_7814MessagePatterneqERKS0_(ptr noundef nonnull align 8 dereferenceable(127), ptr noundef nonnull align 8 dereferenceable(127)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(256) ptr @_ZN6icu_7812ChoiceFormataSERKS0_(ptr noundef nonnull returned align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(256) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef nonnull align 8 dereferenceable(124) ptr @_ZN6icu_7812NumberFormataSERKS0_(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef nonnull align 8 dereferenceable(124) %1) ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.c = load i32, ptr %i.b, align 4, !tbaa !27
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 124
  store i32 %i.c, ptr %i.d, align 4, !tbaa !27
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.g = tail call noundef nonnull align 8 dereferenceable(127) ptr @_ZN6icu_7814MessagePatternaSERKS0_(ptr noundef nonnull align 8 dereferenceable(127) %i.f, ptr noundef nonnull align 8 dereferenceable(127) %i.e) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %0
}

declare noundef nonnull align 8 dereferenceable(124) ptr @_ZN6icu_7812NumberFormataSERKS0_(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef nonnull align 8 dereferenceable(124)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(127) ptr @_ZN6icu_7814MessagePatternaSERKS0_(ptr noundef nonnull align 8 dereferenceable(127), ptr noundef nonnull align 8 dereferenceable(127)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_7812ChoiceFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(256) dereferenceable(256) initializes((0, 8)) %0) unnamed_addr #5 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 376) (i8, ptr @_ZTVN6icu_7812ChoiceFormatE, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @_ZN6icu_7814MessagePatternD1Ev(ptr noundef nonnull align 8 dead_on_return(127) dereferenceable(127) %i.a) #10
  tail call void @_ZN6icu_7812NumberFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %0) #10
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_7812ChoiceFormatD0Ev(ptr noundef nonnull align 8 dereferenceable(256) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZN6icu_7812ChoiceFormatD1Ev(ptr noundef nonnull align 8 dead_on_return(256) dereferenceable(256) %0) #10
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6icu_787UMemorydlEPv(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7812ChoiceFormat4dtosEdRNS_13UnicodeStringE(double noundef %0, ptr noundef nonnull returned align 8 dereferenceable(64) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca [31 x i8], align 16               ; 5 uses
  %2 = alloca %"class.icu_78::UnicodeString", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 31, ptr noundef nonnull @.str, i32 noundef 15, double noundef %0) #10 ; 0 uses
  br label %bb.b

bb.b:                                             ; preds = %.critedge2, %bb.a
  %.033 = phi ptr [ %i.a, %bb.a ], [ %i.e, %.critedge2 ] ; 7 uses
  %i.c = load i8, ptr %.033, align 1, !tbaa !28   ; 3 uses
  switch i8 %i.c, label %bb.c [
    i8 0, label %.critedge.thread.preheader
    i8 45, label %.critedge2
  ]

bb.c:                                             ; preds = %bb.b
  %i.d = sext i8 %i.c to i32
  %isdigittmp = add nsw i32 %i.d, -48
  %isdigit = icmp ult i32 %isdigittmp, 10
  br i1 %isdigit, label %.critedge2, label %.critedge

.critedge2:                                       ; preds = %bb.b, %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.033, i64 1
  br label %bb.b, !llvm.loop !45

.critedge:                                        ; preds = %bb.c
  switch i8 %i.c, label %bb.d [
    i8 0, label %.critedge.thread.preheader
    i8 101, label %.critedge.thread.preheader
  ]

bb.d:                                             ; preds = %.critedge
  store i8 46, ptr %.033, align 1, !tbaa !28
  %i.f = getelementptr inbounds nuw i8, ptr %.033, i64 1
  br label %.critedge.thread.preheader

.critedge.thread.preheader:                       ; preds = %bb.b, %.critedge, %.critedge, %bb.d
  %.2.ph = phi ptr [ %i.f, %bb.d ], [ %.033, %.critedge ], [ %.033, %.critedge ], [ %.033, %bb.b ]
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %.critedge.thread.preheader, %bb.e
  %.2 = phi ptr [ %i.h, %bb.e ], [ %.2.ph, %.critedge.thread.preheader ] ; 4 uses
  %i.g = load i8, ptr %.2, align 1, !tbaa !28
  switch i8 %i.g, label %bb.e [
    i8 101, label %bb.f
    i8 0, label %.loopexit
  ]

bb.e:                                             ; preds = %.critedge.thread
  %i.h = getelementptr inbounds nuw i8, ptr %.2, i64 1
  br label %.critedge.thread, !llvm.loop !46

bb.f:                                             ; preds = %.critedge.thread
  %i.i = getelementptr inbounds nuw i8, ptr %.2, i64 1 ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !28
  switch i8 %i.j, label %bb.h [
    i8 43, label %bb.g
    i8 45, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %.2, i64 2
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.3 = phi ptr [ %i.k, %bb.g ], [ %i.i, %bb.f ]  ; 3 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %bb.h
  %.4 = phi ptr [ %.3, %bb.h ], [ %i.m, %bb.j ]   ; 4 uses
  %i.l = load i8, ptr %.4, align 1, !tbaa !28     ; 2 uses
  switch i8 %i.l, label %bb.k [
    i8 48, label %bb.j
    i8 0, label %.loopexit
  ]

bb.j:                                             ; preds = %bb.i
  %i.m = getelementptr inbounds nuw i8, ptr %.4, i64 1
  br label %bb.i, !llvm.loop !47

bb.k:                                             ; preds = %bb.i
  %.not45 = icmp eq ptr %.3, %.4
  br i1 %.not45, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k, %.lr.ph
  %.056 = phi ptr [ %i.p, %.lr.ph ], [ %.3, %bb.k ] ; 2 uses
  %.555 = phi ptr [ %i.o, %.lr.ph ], [ %.4, %bb.k ]
  %i.n = phi i8 [ %.pr, %.lr.ph ], [ %i.l, %bb.k ]
  %i.o = getelementptr inbounds nuw i8, ptr %.555, i64 1 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.056, i64 1 ; 2 uses
  store i8 %i.n, ptr %.056, align 1, !tbaa !28
  %.pr = load i8, ptr %i.o, align 1, !tbaa !28    ; 2 uses
  %.not46 = icmp eq i8 %.pr, 0
  br i1 %.not46, label %._crit_edge, label %.lr.ph, !llvm.loop !48

._crit_edge:                                      ; preds = %.lr.ph
  store i8 0, ptr %i.p, align 1, !tbaa !28
  br label %.loopexit

.loopexit:                                        ; preds = %.critedge.thread, %bb.i, %bb.k, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @_ZN6icu_7813UnicodeStringC1EPKciNS0_10EInvariantE(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull %i.a, i32 noundef -1, i32 noundef 0)
  %i.q = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %2) #10 ; 0 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %2) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret ptr %1
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #6

declare void @_ZN6icu_7813UnicodeStringC1EPKciNS0_10EInvariantE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i32 noundef, i32 noundef) unnamed_addr #2

; Function Attrs: nounwind
declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7812ChoiceFormat12applyPatternERKNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = tail call noundef nonnull align 8 dereferenceable(127) ptr @_ZN6icu_7814MessagePattern16parseChoiceStyleERKNS_13UnicodeStringEP11UParseErrorR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(127) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(4) %2) ; 0 uses
  %i.c = load i32, ptr %2, align 4, !tbaa !11
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 124
  store i32 %i.c, ptr %i.d, align 4, !tbaa !27
  ret void
}

declare noundef nonnull align 8 dereferenceable(127) ptr @_ZN6icu_7814MessagePattern16parseChoiceStyleERKNS_13UnicodeStringEP11UParseErrorR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(127), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7812ChoiceFormat12applyPatternERKNS_13UnicodeStringER11UParseErrorR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(72) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = tail call noundef nonnull align 8 dereferenceable(127) ptr @_ZN6icu_7814MessagePattern16parseChoiceStyleERKNS_13UnicodeStringEP11UParseErrorR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(127) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %2, ptr noundef nonnull align 4 dereferenceable(4) %3) ; 0 uses
  %i.c = load i32, ptr %3, align 4, !tbaa !11
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 124
  store i32 %i.c, ptr %i.d, align 4, !tbaa !27
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7812ChoiceFormat9toPatternERNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %i.a)
  ret ptr %i.b
}

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7812ChoiceFormat10setChoicesEPKdPKNS_13UnicodeStringEi(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4, !tbaa !11
  %i.b = load ptr, ptr %0, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  %i.d = load ptr, ptr %i.c, align 8
  call void %i.d(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef %1, ptr noundef null, ptr noundef %2, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7812ChoiceFormat10setChoicesEPKdPKaPKNS_13UnicodeStringEi(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4, !tbaa !11
  %i.b = load ptr, ptr %0, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  %i.d = load ptr, ptr %i.c, align 8
  call void %i.d(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7812ChoiceFormat10setChoicesEPKdPKaPKNS_13UnicodeStringEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef readonly captures(address_is_null) %3, i32 noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %5) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %i.b = alloca i16, align 2                      ; 4 uses
  %i.c = alloca i16, align 2                      ; 4 uses
  %i.d = alloca i16, align 2                      ; 4 uses
  %i.e = alloca i16, align 2                      ; 4 uses
  %i.f = alloca i16, align 2                      ; 4 uses
  %i.g = alloca i16, align 2                      ; 4 uses
  %i.h = alloca i16, align 2                      ; 4 uses
  %i.i = alloca i16, align 2                      ; 4 uses
  %i.j = alloca i16, align 2                      ; 4 uses
  %i.k = alloca i16, align 2                      ; 4 uses
  %6 = alloca %"class.icu_78::UnicodeString", align 8 ; 18 uses
  %7 = alloca %"class.icu_78::UnicodeString", align 8 ; 10 uses
  %i.l = load i32, ptr %5, align 4, !tbaa !11
  %i.m = icmp slt i32 %i.l, 1
  br i1 %i.m, label %bb.b, label %bb.ai

bb.b:                                             ; preds = %bb.a
  %i.n = icmp eq ptr %1, null
  %i.o = icmp eq ptr %3, null
  %or.cond = or i1 %i.n, %i.o
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %5, align 4, !tbaa !11
  br label %bb.ai

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %6, align 8, !tbaa !9
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i16 2, ptr %i.p, align 8, !tbaa !28
  %i.q = icmp sgt i32 %4, 0
  br i1 %i.q, label %.lr.ph96, label %._crit_edge97

.lr.ph96:                                         ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 12
  %.not64 = icmp eq ptr %2, null
  %wide.trip.count102 = zext nneg i32 %4 to i64
  br label %bb.e

._crit_edge97:                                    ; preds = %._crit_edge, %bb.d
  %i.t = load ptr, ptr %0, align 8, !tbaa !9
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 296
  %i.v = load ptr, ptr %i.u, align 8
  invoke void %i.v(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 4 dereferenceable(4) %5)
          to label %bb.ah unwind label %bb.aj

bb.e:                                             ; preds = %.lr.ph96, %._crit_edge
  %indvars.iv99 = phi i64 [ 0, %.lr.ph96 ], [ %indvars.iv.next100, %._crit_edge ] ; 5 uses
  %.not61 = icmp eq i64 %indvars.iv99, 0
  br i1 %.not61, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i16 124, ptr %i.k, align 2, !tbaa !31
  %i.w = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull %i.k, i32 noundef 0, i32 noundef 1)
          to label %_ZN6icu_7813UnicodeStringpLEDs.exit unwind label %bb.g ; 0 uses

_ZN6icu_7813UnicodeStringpLEDs.exit:              ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.h:                                             ; preds = %bb.e, %_ZN6icu_7813UnicodeStringpLEDs.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %7, align 8, !tbaa !9
  store i16 2, ptr %i.r, align 8, !tbaa !28
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv99 ; 3 uses
  %i.z = load double, ptr %i.y, align 8, !tbaa !52
  %i.aa = invoke signext i8 @uprv_isPositiveInfinity_78(double noundef %i.z)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  %.not62 = icmp eq i8 %i.aa, 0
  br i1 %.not62, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i16 8734, ptr %i.j, align 2, !tbaa !31
  %i.ab = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull %i.j, i32 noundef 0, i32 noundef 1)
          to label %_ZN6icu_7813UnicodeStringpLEDs.exit71 unwind label %bb.k ; 0 uses

_ZN6icu_7813UnicodeStringpLEDs.exit71:            ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %_ZN6icu_7813UnicodeStringpLERKS0_.exit

bb.k:                                             ; preds = %bb.t, %bb.s, %bb.q, %bb.o, %bb.n, %bb.j, %bb.p, %bb.l, %bb.h
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.l:                                             ; preds = %bb.i
  %i.ad = load double, ptr %i.y, align 8, !tbaa !52
  %i.ae = invoke signext i8 @uprv_isNegativeInfinity_78(double noundef %i.ad)
          to label %bb.m unwind label %bb.k

bb.m:                                             ; preds = %bb.l
  %.not63 = icmp eq i8 %i.ae, 0
  br i1 %.not63, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i16 45, ptr %i.i, align 2, !tbaa !31
  %i.af = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull %i.i, i32 noundef 0, i32 noundef 1)
          to label %bb.o unwind label %bb.k       ; 0 uses

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i16 8734, ptr %i.h, align 2, !tbaa !31
  %i.ag = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull %i.h, i32 noundef 0, i32 noundef 1)
          to label %_ZN6icu_7813UnicodeStringpLEDs.exit73 unwind label %bb.k ; 0 uses

_ZN6icu_7813UnicodeStringpLEDs.exit73:            ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %_ZN6icu_7813UnicodeStringpLERKS0_.exit

bb.p:                                             ; preds = %bb.m
  %i.ah = load double, ptr %i.y, align 8, !tbaa !52
  %i.ai = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7812ChoiceFormat4dtosEdRNS_13UnicodeStringE(double noundef %i.ah, ptr noundef nonnull align 8 dereferenceable(64) %7)
          to label %bb.q unwind label %bb.k       ; 0 uses

bb.q:                                             ; preds = %bb.p
  %i.aj = load i16, ptr %i.r, align 8, !tbaa !28  ; 2 uses
  %i.ak = icmp slt i16 %i.aj, 0
  %i.al = ashr i16 %i.aj, 5
  %i.am = sext i16 %i.al to i32
  %i.an = load i32, ptr %i.s, align 4
  %i.ao = select i1 %i.ak, i32 %i.an, i32 %i.am
  %i.ap = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(64) %7, i32 noundef 0, i32 noundef %i.ao)
          to label %_ZN6icu_7813UnicodeStringpLERKS0_.exit unwind label %bb.k ; 0 uses

_ZN6icu_7813UnicodeStringpLERKS0_.exit:           ; preds = %bb.q, %_ZN6icu_7813UnicodeStringpLEDs.exit73, %_ZN6icu_7813UnicodeStringpLEDs.exit71
  br i1 %.not64, label %bb.t, label %bb.r

bb.r:                                             ; preds = %_ZN6icu_7813UnicodeStringpLERKS0_.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv99
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !28
  %.not65 = icmp eq i8 %i.ar, 0
  br i1 %.not65, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i16 60, ptr %i.g, align 2, !tbaa !31
  %i.as = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull %i.g, i32 noundef 0, i32 noundef 1)
          to label %_ZN6icu_7813UnicodeStringpLEDs.exit74 unwind label %bb.k ; 0 uses

_ZN6icu_7813UnicodeStringpLEDs.exit74:            ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.u

bb.t:                                             ; preds = %bb.r, %_ZN6icu_7813UnicodeStringpLERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i16 35, ptr %i.f, align 2, !tbaa !31
  %i.at = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull %i.f, i32 noundef 0, i32 noundef 1)
          to label %_ZN6icu_7813UnicodeStringpLEDs.exit75 unwind label %bb.k ; 0 uses

_ZN6icu_7813UnicodeStringpLEDs.exit75:            ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.u

bb.u:                                             ; preds = %_ZN6icu_7813UnicodeStringpLEDs.exit75, %_ZN6icu_7813UnicodeStringpLEDs.exit74
  %i.au = getelementptr inbounds nuw [64 x i8], ptr %3, i64 %indvars.iv99 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 2 uses
  %i.aw = load i16, ptr %i.av, align 8, !tbaa !28 ; 2 uses
  %i.ax = icmp slt i16 %i.aw, 0
  %i.ay = ashr i16 %i.aw, 5
  %i.az = sext i16 %i.ay to i32
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 12 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4
  %i.bc = select i1 %i.ax, i32 %i.bb, i32 %i.az   ; 2 uses
  %i.bd = icmp sgt i32 %i.bc, 0
  br i1 %i.bd, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.u
  %i.be = getelementptr inbounds nuw i8, ptr %i.au, i64 10
  %i.bf = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %wide.trip.count = zext nneg i32 %i.bc to i64
  br label %bb.v

._crit_edge:                                      ; preds = %bb.af, %bb.u
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %7) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1 ; 2 uses
  %exitcond103.not = icmp eq i64 %indvars.iv.next100, %wide.trip.count102
  br i1 %exitcond103.not, label %._crit_edge97, label %bb.e, !llvm.loop !49

bb.v:                                             ; preds = %.lr.ph, %bb.af
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.af ] ; 3 uses
  %.04790 = phi i32 [ 0, %.lr.ph ], [ %.2, %bb.af ] ; 4 uses
  %i.bg = load i16, ptr %i.av, align 8, !tbaa !28 ; 3 uses
  %i.bh = icmp slt i16 %i.bg, 0
  %i.bi = ashr i16 %i.bg, 5
  %i.bj = sext i16 %i.bi to i32
  %i.bk = load i32, ptr %i.ba, align 4
  %i.bl = select i1 %i.bh, i32 %i.bk, i32 %i.bj
  %i.bm = zext i32 %i.bl to i64
  %i.bn = icmp samesign ult i64 %indvars.iv, %i.bm
  br i1 %i.bn, label %_ZNK6icu_7813UnicodeStringixEi.exit, label %.thread87

_ZNK6icu_7813UnicodeStringixEi.exit:              ; preds = %bb.v
  %i.bo = and i16 %i.bg, 2
  %.not.i.i.i = icmp eq i16 %i.bo, 0
  %i.bp = load ptr, ptr %i.bf, align 8
  %i.bq = select i1 %.not.i.i.i, ptr %i.bp, ptr %i.be
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %i.bq, i64 %indvars.iv
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !31 ; 4 uses
  %i.bt = icmp eq i16 %i.bs, 39
  %i.bu = icmp eq i32 %.04790, 0                  ; 2 uses
  %or.cond3 = select i1 %i.bt, i1 %i.bu, i1 false
  br i1 %or.cond3, label %bb.w, label %bb.y

bb.w:                                             ; preds = %_ZNK6icu_7813UnicodeStringixEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i16 39, ptr %i.e, align 2, !tbaa !31
  %i.bv = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull %i.e, i32 noundef 0, i32 noundef 1)
          to label %_ZN6icu_7813UnicodeString6appendEDs.exit unwind label %bb.x ; 0 uses

_ZN6icu_7813UnicodeString6appendEDs.exit:         ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.ae

bb.x:                                             ; preds = %bb.ae, %bb.ab, %bb.aa, %bb.z, %bb.w
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.y:                                             ; preds = %_ZNK6icu_7813UnicodeStringixEi.exit
  %i.bx = icmp eq i16 %i.bs, 124
  %or.cond5 = select i1 %i.bx, i1 %i.bu, i1 false
  br i1 %or.cond5, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i16 39, ptr %i.d, align 2, !tbaa !31
  %i.by = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull %i.d, i32 noundef 0, i32 noundef 1)
          to label %bb.aa unwind label %bb.x

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i16 124, ptr %i.c, align 2, !tbaa !31
  %i.bz = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.by, ptr noundef nonnull %i.c, i32 noundef 0, i32 noundef 1)
          to label %bb.ab unwind label %bb.x

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 39, ptr %i.b, align 2, !tbaa !31
  %i.ca = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.bz, ptr noundef nonnull %i.b, i32 noundef 0, i32 noundef 1)
          to label %_ZN6icu_7813UnicodeString6appendEDs.exit78 unwind label %bb.x ; 0 uses

_ZN6icu_7813UnicodeString6appendEDs.exit78:       ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.af

bb.ac:                                            ; preds = %bb.y
  %i.cb = icmp eq i16 %i.bs, 123
  br i1 %i.cb, label %bb.ad, label %.thread87

bb.ad:                                            ; preds = %bb.ac
  %i.cc = add nsw i32 %.04790, 1
  br label %bb.ae

.thread87:                                        ; preds = %bb.v, %bb.ac
  %.0.i.i828689 = phi i16 [ %i.bs, %bb.ac ], [ -1, %bb.v ] ; 2 uses
  %i.cd = icmp eq i16 %.0.i.i828689, 125
  %i.ce = icmp sgt i32 %.04790, 0
  %or.cond7 = select i1 %i.cd, i1 %i.ce, i1 false
  %i.cf = sext i1 %or.cond7 to i32
  %spec.select = add nsw i32 %.04790, %i.cf
  br label %bb.ae

bb.ae:                                            ; preds = %_ZN6icu_7813UnicodeString6appendEDs.exit, %.thread87, %bb.ad
  %.0.i.i83 = phi i16 [ 39, %_ZN6icu_7813UnicodeString6appendEDs.exit ], [ 123, %bb.ad ], [ %.0.i.i828689, %.thread87 ]
  %.1 = phi i32 [ 0, %_ZN6icu_7813UnicodeString6appendEDs.exit ], [ %i.cc, %bb.ad ], [ %spec.select, %.thread87 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 %.0.i.i83, ptr %i.a, align 2, !tbaa !31
  %i.cg = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 1)
          to label %_ZN6icu_7813UnicodeString6appendEDs.exit79 unwind label %bb.x ; 0 uses

_ZN6icu_7813UnicodeString6appendEDs.exit79:       ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.af

bb.af:                                            ; preds = %_ZN6icu_7813UnicodeString6appendEDs.exit79, %_ZN6icu_7813UnicodeString6appendEDs.exit78
  %.2 = phi i32 [ 0, %_ZN6icu_7813UnicodeString6appendEDs.exit78 ], [ %.1, %_ZN6icu_7813UnicodeString6appendEDs.exit79 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.v, !llvm.loop !50

bb.ag:                                            ; preds = %bb.x, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %i.ac, %bb.k ], [ %i.bw, %bb.x ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %7) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  br label %bb.ak

bb.ah:                                            ; preds = %._crit_edge97
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  br label %bb.ai

bb.ai:                                            ; preds = %bb.a, %bb.ah, %bb.c
  ret void

bb.aj:                                            ; preds = %._crit_edge97
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.ak:                                            ; preds = %bb.g, %bb.ag, %bb.aj
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ch, %bb.aj ], [ %.pn.pn, %bb.ag ], [ %i.x, %bb.g ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

declare signext i8 @uprv_isPositiveInfinity_78(double noundef) local_unnamed_addr #2

declare signext i8 @uprv_isNegativeInfinity_78(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noalias noundef ptr @_ZNK6icu_7812ChoiceFormat9getLimitsERi(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %1) unnamed_addr #7 align 2 {
bb.a:
  store i32 0, ptr %1, align 4, !tbaa !32
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noalias noundef ptr @_ZNK6icu_7812ChoiceFormat11getClosuresERi(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %1) unnamed_addr #7 align 2 {
bb.a:
  store i32 0, ptr %1, align 4, !tbaa !32
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noalias noundef ptr @_ZNK6icu_7812ChoiceFormat10getFormatsERi(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %1) unnamed_addr #7 align 2 {
bb.a:
  store i32 0, ptr %1, align 4, !tbaa !32
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7812ChoiceFormat6formatElRNS_13UnicodeStringERNS_13FieldPositionE(ptr noundef nonnull align 8 dereferenceable(256) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(20) %3) unnamed_addr #1 align 2 {
bb.a:
  %i.a = sitofp i64 %1 to double
  %i.b = load ptr, ptr %0, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef nonnull align 8 dereferenceable(64) ptr %i.d(ptr noundef nonnull align 8 dereferenceable(256) %0, double noundef %i.a, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(20) %3)
  ret ptr %i.e
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7812ChoiceFormat6formatEiRNS_13UnicodeStringERNS_13FieldPositionE(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(20) %3) unnamed_addr #1 align 2 {
bb.a:
  %i.a = sitofp i32 %1 to double
  %i.b = load ptr, ptr %0, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef nonnull align 8 dereferenceable(64) ptr %i.d(ptr noundef nonnull align 8 dereferenceable(256) %0, double noundef %i.a, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(20) %3)
  ret ptr %i.e
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7812ChoiceFormat6formatEdRNS_13UnicodeStringERNS_13FieldPositionE(ptr noundef nonnull align 8 dereferenceable(256) %0, double noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr nofree nonnull readnone align 8 captures(none) %3) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.c = load i32, ptr %i.b, align 8, !tbaa !33   ; 3 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !34   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 44
  %i.h = load i32, ptr %i.g, align 4, !tbaa !38
  %..i29.i = tail call noundef i32 @llvm.smax.i32(i32 %i.h, i32 2) ; 2 uses
  %i.i = add nuw nsw i32 %..i29.i, 1              ; 2 uses
  %.not30.i = icmp slt i32 %i.i, %i.c
  br i1 %.not30.i, label %.lr.ph.i, label %_ZN6icu_7812ChoiceFormat14findSubMessageERKNS_14MessagePatternEid.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 154
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.n = zext nneg i32 %i.i to i64
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.n ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !39
  %i.q = icmp eq i32 %i.p, 6
  br i1 %i.q, label %_ZN6icu_7812ChoiceFormat14findSubMessageERKNS_14MessagePatternEid.exit, label %.lr.ph

bb.c:                                             ; preds = %bb.e
  %i.r = zext nneg i32 %i.ax to i64
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %i.r ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !39
  %i.u = icmp eq i32 %i.t, 6
  br i1 %i.u, label %_ZN6icu_7812ChoiceFormat14findSubMessageERKNS_14MessagePatternEid.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.i, %bb.c
  %i.v = phi ptr [ %i.s, %bb.c ], [ %i.o, %.lr.ph.i ]
  %.02331.i13 = phi i32 [ %i.x, %bb.c ], [ 2, %.lr.ph.i ] ; 2 uses
  %..i32.i12 = phi i32 [ %..i.i, %bb.c ], [ %..i29.i, %.lr.ph.i ] ; 2 uses
  %i.w = tail call noundef double @_ZNK6icu_7814MessagePattern15getNumericValueERKNS0_4PartE(ptr noundef nonnull align 8 dereferenceable(127) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %i.v) ; 2 uses
  %i.x = add nuw nsw i32 %..i32.i12, 3            ; 5 uses
  %i.y = load ptr, ptr %i.e, align 8, !tbaa !34   ; 7 uses
  %i.z = zext nneg i32 %..i32.i12 to i64
  %i.aa = getelementptr [16 x i8], ptr %i.y, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 36
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !40 ; 2 uses
  %i.ad = load i16, ptr %i.j, align 8, !tbaa !28  ; 3 uses
  %i.ae = icmp slt i16 %i.ad, 0
  %i.af = ashr i16 %i.ad, 5
  %i.ag = sext i16 %i.af to i32
  %i.ah = load i32, ptr %i.k, align 4
  %i.ai = select i1 %i.ae, i32 %i.ah, i32 %i.ag
  %i.aj = icmp ult i32 %i.ac, %i.ai
  br i1 %i.aj, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.i, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread.i

_ZNK6icu_7813UnicodeString6charAtEi.exit.i:       ; preds = %.lr.ph
  %i.ak = and i16 %i.ad, 2
  %.not.i.i.i.i = icmp eq i16 %i.ak, 0
  %i.al = load ptr, ptr %i.m, align 8
  %i.am = select i1 %.not.i.i.i.i, ptr %i.al, ptr %i.l
  %i.an = sext i32 %i.ac to i64
  %i.ao = getelementptr inbounds [2 x i8], ptr %i.am, i64 %i.an
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !31
  %i.aq = icmp eq i16 %i.ap, 60
  br i1 %i.aq, label %bb.d, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread.i

bb.d:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.i
  %i.ar = fcmp ogt double %1, %i.w
  br i1 %i.ar, label %bb.e, label %_ZN6icu_7812ChoiceFormat14findSubMessageERKNS_14MessagePatternEid.exit

_ZNK6icu_7813UnicodeString6charAtEi.exit.thread.i: ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.i, %.lr.ph
  %i.as = fcmp ult double %1, %i.w
  br i1 %i.as, label %_ZN6icu_7812ChoiceFormat14findSubMessageERKNS_14MessagePatternEid.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread.i, %bb.d
  %i.at = zext nneg i32 %i.x to i64
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !38
  %..i.i = tail call noundef i32 @llvm.smax.i32(i32 %i.aw, i32 %i.x) ; 2 uses
  %i.ax = add nuw nsw i32 %..i.i, 1               ; 2 uses
  %.not.i = icmp slt i32 %i.ax, %i.c
  br i1 %.not.i, label %bb.c, label %_ZN6icu_7812ChoiceFormat14findSubMessageERKNS_14MessagePatternEid.exit

_ZN6icu_7812ChoiceFormat14findSubMessageERKNS_14MessagePatternEid.exit: ; preds = %bb.e, %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread.i, %bb.d, %bb.c, %.lr.ph.i, %bb.b
  %i.ay = phi ptr [ %i.f, %bb.b ], [ %i.f, %.lr.ph.i ], [ %i.y, %bb.c ], [ %i.y, %bb.d ], [ %i.y, %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread.i ], [ %i.y, %bb.e ] ; 2 uses
  %.023.lcssa.i = phi i32 [ 2, %bb.b ], [ 2, %.lr.ph.i ], [ %i.x, %bb.e ], [ %.02331.i13, %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread.i ], [ %.02331.i13, %bb.d ], [ %i.x, %bb.c ] ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !53
  %.not = icmp eq i32 %i.ba, 1
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN6icu_7812ChoiceFormat14findSubMessageERKNS_14MessagePatternEid.exit
  %i.bb = zext nneg i32 %.023.lcssa.i to i64
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %i.bb ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !40
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bg = load i16, ptr %i.bf, align 4, !tbaa !41
  %i.bh = zext i16 %i.bg to i32
  %i.bi = add nsw i32 %i.be, %i.bh                ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bc, i64 12
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !38
  %..i = tail call noundef i32 @llvm.smax.i32(i32 %i.bk, i32 %.023.lcssa.i)
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bm = zext nneg i32 %..i to i64
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !40
  %i.bq = sub nsw i32 %i.bp, %i.bi
  %i.br = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(64) %i.bl, i32 noundef %i.bi, i32 noundef %i.bq) ; 0 uses
  br label %bb.h

bb.g:                                             ; preds = %_ZN6icu_7812ChoiceFormat14findSubMessageERKNS_14MessagePatternEid.exit
  %i.bs = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7811MessageImpl33appendSubMessageWithoutSkipSyntaxERKNS_14MessagePatternEiRNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(127) %i.a, i32 noundef %.023.lcssa.i, ptr noundef nonnull align 8 dereferenceable(64) %2)
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.a
  %.1 = phi ptr [ %2, %bb.a ], [ %i.bs, %bb.g ], [ %2, %bb.f ]
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 -2147483646, -2147483648) i32 @_ZN6icu_7812ChoiceFormat14findSubMessageERKNS_14MessagePatternEid(ptr noundef nonnull align 8 dereferenceable(127) %0, i32 noundef %1, double noundef %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load i32, ptr %i.a, align 8, !tbaa !33   ; 2 uses
  %i.c = add nsw i32 %1, 2                        ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !34   ; 2 uses
  %i.f = sext i32 %i.c to i64
  %i.g = getelementptr inbounds [16 x i8], ptr %i.e, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !38
  %..i29 = tail call noundef i32 @llvm.smax.i32(i32 %i.i, i32 %i.c) ; 2 uses
  %i.j = add nsw i32 %..i29, 1                    ; 2 uses
  %.not30 = icmp slt i32 %i.j, %i.b
  br i1 %.not30, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = sext i32 %i.j to i64
  %i.p = getelementptr inbounds [16 x i8], ptr %i.e, i64 %i.o ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !39
  %i.r = icmp eq i32 %i.q, 6
  br i1 %i.r, label %.thread, label %.lr.ph43

bb.b:                                             ; preds = %bb.d
  %i.s = sext i32 %i.ay to i64
  %i.t = getelementptr inbounds [16 x i8], ptr %i.z, i64 %i.s ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !39
  %i.v = icmp eq i32 %i.u, 6
  br i1 %i.v, label %.thread, label %.lr.ph43

.lr.ph43:                                         ; preds = %.lr.ph, %bb.b
  %i.w = phi ptr [ %i.t, %bb.b ], [ %i.p, %.lr.ph ]
  %.0233142 = phi i32 [ %i.y, %bb.b ], [ %i.c, %.lr.ph ] ; 2 uses
  %..i3241 = phi i32 [ %..i, %bb.b ], [ %..i29, %.lr.ph ] ; 2 uses
  %i.x = tail call noundef double @_ZNK6icu_7814MessagePattern15getNumericValueERKNS0_4PartE(ptr noundef nonnull align 8 dereferenceable(127) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.w) ; 2 uses
  %i.y = add nsw i32 %..i3241, 3                  ; 5 uses
  %i.z = load ptr, ptr %i.d, align 8, !tbaa !34   ; 3 uses
  %i.aa = sext i32 %..i3241 to i64
  %i.ab = getelementptr [16 x i8], ptr %i.z, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.ab, i64 36
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !40 ; 2 uses
  %i.ae = load i16, ptr %i.k, align 8, !tbaa !28  ; 3 uses
  %i.af = icmp slt i16 %i.ae, 0
  %i.ag = ashr i16 %i.ae, 5
  %i.ah = sext i16 %i.ag to i32
  %i.ai = load i32, ptr %i.l, align 4
  %i.aj = select i1 %i.af, i32 %i.ai, i32 %i.ah
  %i.ak = icmp ult i32 %i.ad, %i.aj
  br i1 %i.ak, label %_ZNK6icu_7813UnicodeString6charAtEi.exit, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread

_ZNK6icu_7813UnicodeString6charAtEi.exit:         ; preds = %.lr.ph43
  %i.al = and i16 %i.ae, 2
  %.not.i.i.i = icmp eq i16 %i.al, 0
  %i.am = load ptr, ptr %i.n, align 8
  %i.an = select i1 %.not.i.i.i, ptr %i.am, ptr %i.m
  %i.ao = sext i32 %i.ad to i64
  %i.ap = getelementptr inbounds [2 x i8], ptr %i.an, i64 %i.ao
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !31
  %i.ar = icmp eq i16 %i.aq, 60
  br i1 %i.ar, label %bb.c, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread

bb.c:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %i.as = fcmp ogt double %2, %i.x
  br i1 %i.as, label %bb.d, label %.thread

_ZNK6icu_7813UnicodeString6charAtEi.exit.thread:  ; preds = %.lr.ph43, %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %i.at = fcmp ult double %2, %i.x
  br i1 %i.at, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread
  %i.au = sext i32 %i.y to i64
  %i.av = getelementptr inbounds [16 x i8], ptr %i.z, i64 %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 12
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !38
  %..i = tail call noundef i32 @llvm.smax.i32(i32 %i.ax, i32 %i.y) ; 2 uses
  %i.ay = add nsw i32 %..i, 1                     ; 2 uses
  %.not = icmp slt i32 %i.ay, %i.b
  br i1 %.not, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.c, %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread, %bb.b, %bb.d, %.lr.ph, %bb.a
  %.023.lcssa = phi i32 [ %i.c, %bb.a ], [ %i.c, %.lr.ph ], [ %i.y, %bb.d ], [ %.0233142, %bb.c ], [ %.0233142, %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread ], [ %i.y, %bb.b ]
  ret i32 %.023.lcssa
}

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7811MessageImpl33appendSubMessageWithoutSkipSyntaxERKNS_14MessagePatternEiRNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(127), i32 noundef, ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

declare noundef double @_ZNK6icu_7814MessagePattern15getNumericValueERKNS0_4PartE(ptr noundef nonnull align 8 dereferenceable(127), ptr noundef nonnull align 4 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7812ChoiceFormat6formatEPKNS_11FormattableEiRNS_13UnicodeStringERNS_13FieldPositionER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull returned align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(20) %4, ptr noundef nonnull align 4 dereferenceable(4) %5) unnamed_addr #1 align 2 {
bb.a:
  %i.a = icmp slt i32 %2, 0
  br i1 %i.a, label %.loopexit.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.c = load i32, ptr %i.b, align 8, !tbaa !33
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %.loopexit.sink.split, label %.preheader

.preheader:                                       ; preds = %bb.b
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.e = getelementptr inbounds nuw [112 x i8], ptr %1, i64 %indvars.iv
  %i.f = tail call noundef double @_ZNK6icu_7811Formattable9getDoubleER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(112) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %5)
  %i.g = load i32, ptr %5, align 4, !tbaa !11
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.i = load ptr, ptr %0, align 8, !tbaa !9
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef nonnull align 8 dereferenceable(64) ptr %i.k(ptr noundef nonnull align 8 dereferenceable(256) %0, double noundef %i.f, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(20) %4) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !54

.loopexit.sink.split:                             ; preds = %bb.b, %bb.a
  %.sink = phi i32 [ 1, %bb.a ], [ 27, %bb.b ]
  store i32 %.sink, ptr %5, align 4, !tbaa !11
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %.loopexit.sink.split, %.preheader
  ret ptr %3
}

declare noundef double @_ZNK6icu_7811Formattable9getDoubleER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZNK6icu_7812ChoiceFormat5parseERKNS_13UnicodeStringERNS_11FormattableERNS_13ParsePositionE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(112) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %3) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %5 = load i32, ptr %4, align 8, !tbaa !43       ; 5 uses
  %6 = tail call double @uprv_getNaN_78()         ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %8 = load i32, ptr %7, align 8, !tbaa !33       ; 2 uses
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %11 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %12 = icmp sgt i32 %8, 0
  br i1 %12, label %.lr.ph, label %.critedge.i.thread

.lr.ph:                                           ; preds = %bb.a, %37
  %.036.i6 = phi double [ %.3.i, %37 ], [ %6, %bb.a ] ; 3 uses
  %.038.i5 = phi i32 [ %.341.i, %37 ], [ %5, %bb.a ] ; 4 uses
  %.044.i4 = phi i32 [ %38, %37 ], [ 0, %bb.a ]   ; 2 uses
  %13 = load ptr, ptr %9, align 8, !tbaa !34
  %14 = zext nneg i32 %.044.i4 to i64
  %15 = getelementptr inbounds nuw [16 x i8], ptr %13, i64 %14 ; 2 uses
  %16 = load i32, ptr %15, align 4, !tbaa !39
  %.not.i = icmp eq i32 %16, 6
  br i1 %.not.i, label %.critedge.i, label %17

17:                                               ; preds = %.lr.ph
  %18 = tail call noundef double @_ZNK6icu_7814MessagePattern15getNumericValueERKNS0_4PartE(ptr noundef nonnull align 8 dereferenceable(127) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %15) ; 2 uses
  %19 = add nuw nsw i32 %.044.i4, 2               ; 3 uses
  %20 = load ptr, ptr %9, align 8, !tbaa !34
  %21 = zext nneg i32 %19 to i64
  %22 = getelementptr inbounds nuw [16 x i8], ptr %20, i64 %21
  %23 = getelementptr inbounds nuw i8, ptr %22, i64 12
  %24 = load i32, ptr %23, align 4, !tbaa !38
  %..i.i = tail call noundef i32 @llvm.smax.i32(i32 %24, i32 %19) ; 2 uses
  %25 = tail call noundef i32 @_ZN6icu_7812ChoiceFormat25matchStringUntilLimitPartERKNS_14MessagePatternEiiRKNS_13UnicodeStringEi(ptr noundef nonnull align 8 dereferenceable(127) %i.a, i32 noundef %19, i32 noundef %..i.i, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %5) ; 2 uses
  %26 = icmp sgt i32 %25, -1
  br i1 %26, label %27, label %37

27:                                               ; preds = %17
  %28 = add nsw i32 %25, %5                       ; 4 uses
  %29 = icmp sgt i32 %28, %.038.i5
  br i1 %29, label %30, label %37

30:                                               ; preds = %27
  %31 = load i16, ptr %10, align 8, !tbaa !28     ; 2 uses
  %32 = icmp slt i16 %31, 0
  %33 = ashr i16 %31, 5
  %34 = sext i16 %33 to i32
  %35 = load i32, ptr %11, align 4
  %36 = select i1 %32, i32 %35, i32 %34
  %.not54.i = icmp eq i32 %28, %36
  br i1 %.not54.i, label %.critedge.i, label %37

37:                                               ; preds = %30, %27, %17
  %.341.i = phi i32 [ %28, %30 ], [ %.038.i5, %17 ], [ %.038.i5, %27 ] ; 2 uses
  %.3.i = phi double [ %18, %30 ], [ %.036.i6, %17 ], [ %.036.i6, %27 ] ; 2 uses
  %38 = add nuw nsw i32 %..i.i, 1                 ; 2 uses
  %39 = icmp slt i32 %38, %8
  br i1 %39, label %.lr.ph, label %.critedge.i

.critedge.i:                                      ; preds = %37, %.lr.ph, %30
  %.543.i = phi i32 [ %.038.i5, %.lr.ph ], [ %.341.i, %37 ], [ %28, %30 ] ; 2 uses
  %.5.i = phi double [ %.036.i6, %.lr.ph ], [ %.3.i, %37 ], [ %18, %30 ] ; 2 uses
  %40 = icmp eq i32 %.543.i, %5
  br i1 %40, label %.critedge.i.thread, label %42

.critedge.i.thread:                               ; preds = %bb.a, %.critedge.i
  %.5.i21 = phi double [ %.5.i, %.critedge.i ], [ %6, %bb.a ]
  %41 = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %5, ptr %41, align 4, !tbaa !44
  br label %_ZN6icu_7812ChoiceFormat13parseArgumentERKNS_14MessagePatternEiRKNS_13UnicodeStringERNS_13ParsePositionE.exit

42:                                               ; preds = %.critedge.i
  store i32 %.543.i, ptr %4, align 8, !tbaa !43
  br label %_ZN6icu_7812ChoiceFormat13parseArgumentERKNS_14MessagePatternEiRKNS_13UnicodeStringERNS_13ParsePositionE.exit

_ZN6icu_7812ChoiceFormat13parseArgumentERKNS_14MessagePatternEiRKNS_13UnicodeStringERNS_13ParsePositionE.exit: ; preds = %.critedge.i.thread, %42
  %.5.i20 = phi double [ %.5.i21, %.critedge.i.thread ], [ %.5.i, %42 ]
  tail call void @_ZN6icu_7811Formattable9setDoubleEd(ptr noundef nonnull align 8 dereferenceable(112) %2, double noundef %.5.i20)
  ret void
}

declare void @_ZN6icu_7811Formattable9setDoubleEd(ptr noundef nonnull align 8 dereferenceable(112), double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef double @_ZN6icu_7812ChoiceFormat13parseArgumentERKNS_14MessagePatternEiRKNS_13UnicodeStringERNS_13ParsePositionE(ptr noundef nonnull align 8 dereferenceable(127) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %3) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !43   ; 6 uses
  %i.c = tail call double @uprv_getNaN_78()       ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = load i32, ptr %i.d, align 8, !tbaa !33   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 12
  %4 = icmp slt i32 %1, %i.e
  br i1 %4, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a, %bb.f
  %.03663 = phi double [ %.3, %bb.f ], [ %i.c, %bb.a ] ; 3 uses
  %.03862 = phi i32 [ %.341, %bb.f ], [ %i.b, %bb.a ] ; 4 uses
  %.04461 = phi i32 [ %5, %bb.f ], [ %1, %bb.a ]  ; 2 uses
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !34
  %i.j = sext i32 %.04461 to i64
  %i.k = getelementptr inbounds [16 x i8], ptr %i.i, i64 %i.j ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !39
  %.not = icmp eq i32 %i.l, 6
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = tail call noundef double @_ZNK6icu_7814MessagePattern15getNumericValueERKNS0_4PartE(ptr noundef nonnull align 8 dereferenceable(127) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.k) ; 2 uses
  %i.n = add nsw i32 %.04461, 2                   ; 3 uses
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !34
  %i.p = sext i32 %i.n to i64
  %i.q = getelementptr inbounds [16 x i8], ptr %i.o, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !38
  %..i = tail call noundef i32 @llvm.smax.i32(i32 %i.s, i32 %i.n) ; 2 uses
  %i.t = tail call noundef i32 @_ZN6icu_7812ChoiceFormat25matchStringUntilLimitPartERKNS_14MessagePatternEiiRKNS_13UnicodeStringEi(ptr noundef nonnull align 8 dereferenceable(127) %0, i32 noundef %i.n, i32 noundef %..i, ptr noundef nonnull align 8 dereferenceable(64) %2, i32 noundef %i.b) ; 2 uses
  %i.u = icmp sgt i32 %i.t, -1
  br i1 %i.u, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.v = add nsw i32 %i.t, %i.b                   ; 4 uses
  %i.w = icmp sgt i32 %i.v, %.03862
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.x = load i16, ptr %i.g, align 8, !tbaa !28   ; 2 uses
  %i.y = icmp slt i16 %i.x, 0
  %i.z = ashr i16 %i.x, 5
  %i.aa = sext i16 %i.z to i32
  %i.ab = load i32, ptr %i.h, align 4
  %i.ac = select i1 %i.y, i32 %i.ab, i32 %i.aa
  %.not54 = icmp eq i32 %i.v, %i.ac
  br i1 %.not54, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e, %bb.d
  %.341 = phi i32 [ %i.v, %bb.e ], [ %.03862, %bb.c ], [ %.03862, %bb.d ] ; 2 uses
  %.3 = phi double [ %i.m, %bb.e ], [ %.03663, %bb.c ], [ %.03663, %bb.d ] ; 2 uses
  %5 = add nsw i32 %..i, 1                        ; 2 uses
  %6 = icmp slt i32 %5, %i.e
  br i1 %6, label %bb.b, label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.f, %bb.e, %bb.a
  %.543 = phi i32 [ %i.b, %bb.a ], [ %.03862, %bb.b ], [ %.341, %bb.f ], [ %i.v, %bb.e ] ; 2 uses
  %.5 = phi double [ %i.c, %bb.a ], [ %.03663, %bb.b ], [ %.3, %bb.f ], [ %i.m, %bb.e ]
  %i.ad = icmp eq i32 %.543, %i.b
  br i1 %i.ad, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.critedge
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %i.b, ptr %i.ae, align 4, !tbaa !44
  br label %bb.i

bb.h:                                             ; preds = %.critedge
  store i32 %.543, ptr %i.a, align 8, !tbaa !43
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  ret double %.5
}

declare double @uprv_getNaN_78() local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN6icu_7812ChoiceFormat25matchStringUntilLimitPartERKNS_14MessagePatternEiiRKNS_13UnicodeStringEi(ptr noundef nonnull align 8 dereferenceable(127) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef %4) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %i.c = sext i32 %1 to i64                       ; 2 uses
  %i.d = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.c ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !40
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load i16, ptr %i.g, align 4, !tbaa !41
  %i.i = zext i16 %i.h to i32
  %i.j = add nsw i32 %i.f, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %sext = sext i32 %2 to i64
  br label %.outer

.outer:                                           ; preds = %bb.h, %bb.a
  %.pre46.ph = phi ptr [ %.pre.pre, %bb.h ], [ %i.b, %bb.a ]
  %indvars.iv.ph = phi i64 [ %indvars.iv.next, %bb.h ], [ %i.c, %bb.a ]
  %.029.ph = phi i32 [ %i.ao, %bb.h ], [ 0, %bb.a ]
  %.027.ph = phi i32 [ %i.at, %bb.h ], [ %i.j, %bb.a ] ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.outer, %bb.c
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ %indvars.iv.ph, %.outer ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 4 uses
  %i.p = getelementptr inbounds [16 x i8], ptr %.pre46.ph, i64 %indvars.iv.next ; 3 uses
  %i.q = icmp eq i64 %indvars.iv.next, %sext      ; 2 uses
  br i1 %i.q, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = load i32, ptr %i.p, align 4, !tbaa !39
  %i.s = icmp eq i32 %i.r, 2
  br i1 %i.s, label %bb.d, label %bb.b, !llvm.loop !55

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 4 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !40   ; 2 uses
  %i.v = sub nsw i32 %i.u, %.027.ph               ; 4 uses
  %.not = icmp eq i32 %i.u, %.027.ph
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = load i16, ptr %i.k, align 8, !tbaa !28   ; 4 uses
  %i.x = and i16 %i.w, 1
  %.not.i.i = icmp eq i16 %i.x, 0
  br i1 %.not.i.i, label %.sink.split.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = load i16, ptr %i.l, align 8, !tbaa !28
  %i.z = trunc i16 %i.y to i8
  %i.aa = and i8 %i.z, 1
  %i.ab = xor i8 %i.aa, 1
  br label %_ZNK6icu_7813UnicodeString7compareEiiRKS0_ii.exit

.sink.split.i.i.i:                                ; preds = %bb.e
  %i.ac = icmp slt i16 %i.w, 0
  %i.ad = ashr i16 %i.w, 5
  %i.ae = sext i16 %i.ad to i32
  %i.af = load i32, ptr %i.m, align 4
  %i.ag = select i1 %i.ac, i32 %i.af, i32 %i.ae   ; 2 uses
  %i.ah = icmp slt i32 %.027.ph, 0
  %spec.select.i.i = tail call i32 @llvm.smin.i32(i32 %.027.ph, i32 %i.ag)
  %.011.i.i = select i1 %i.ah, i32 0, i32 %spec.select.i.i ; 2 uses
  %i.ai = icmp slt i32 %i.v, 0
  %i.aj = sub nsw i32 %i.ag, %.011.i.i
  %spec.select13.i.i = tail call i32 @llvm.smin.i32(i32 %i.v, i32 %i.aj)
  %.010.i.i = select i1 %i.ai, i32 0, i32 %spec.select13.i.i
  %i.ak = and i16 %i.w, 2
  %.not.i.i.i = icmp eq i16 %i.ak, 0
  %i.al = load ptr, ptr %i.o, align 8
  %i.am = select i1 %.not.i.i.i, ptr %i.al, ptr %i.n
  %i.an = tail call noundef signext i8 @_ZNK6icu_7813UnicodeString9doCompareEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef %4, i32 noundef %i.v, ptr noundef %i.am, i32 noundef %.011.i.i, i32 noundef %.010.i.i)
  br label %_ZNK6icu_7813UnicodeString7compareEiiRKS0_ii.exit

_ZNK6icu_7813UnicodeString7compareEiiRKS0_ii.exit: ; preds = %bb.f, %.sink.split.i.i.i
  %.0.i.i = phi i8 [ %i.ab, %bb.f ], [ %i.an, %.sink.split.i.i.i ]
  %.not39 = icmp eq i8 %.0.i.i, 0
  br i1 %.not39, label %bb.g, label %bb.i

bb.g:                                             ; preds = %_ZNK6icu_7813UnicodeString7compareEiiRKS0_ii.exit, %bb.d
  %i.ao = add nsw i32 %i.v, %.029.ph              ; 2 uses
  br i1 %i.q, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = load i32, ptr %i.t, align 4, !tbaa !40
  %i.aq = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.ar = load i16, ptr %i.aq, align 4, !tbaa !41
  %i.as = zext i16 %i.ar to i32
  %i.at = add nsw i32 %i.ap, %i.as
  %.pre.pre = load ptr, ptr %i.a, align 8, !tbaa !34
  br label %.outer, !llvm.loop !55

bb.i:                                             ; preds = %_ZNK6icu_7813UnicodeString7compareEiiRKS0_ii.exit, %bb.g
  %.336.ph = phi i32 [ %i.ao, %bb.g ], [ -1, %_ZNK6icu_7813UnicodeString7compareEiiRKS0_ii.exit ]
  ret i32 %.336.ph
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK6icu_7812ChoiceFormat5cloneEv(ptr noundef nonnull align 8 dereferenceable(256) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 256) #10 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6icu_7812ChoiceFormatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(256) %i.a, ptr noundef nonnull align 8 dereferenceable(256) %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %i.a

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.a) #10
  resume { ptr, i32 } %i.c
}

; Function Attrs: nounwind
declare noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7812NumberFormat6formatERKNS_11FormattableERNS_13UnicodeStringERNS_13FieldPositionER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(20), ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7812NumberFormat6formatERKNS_11FormattableERNS_13UnicodeStringEPNS_21FieldPositionIteratorER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #2

declare void @_ZNK6icu_7812NumberFormat11parseObjectERKNS_13UnicodeStringERNS_11FormattableERNS_13ParsePositionE(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7812NumberFormat6formatEdRNS_13UnicodeStringERNS_13FieldPositionER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(124), double noundef, ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(20), ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7812NumberFormat6formatEdRNS_13UnicodeStringEPNS_21FieldPositionIteratorER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(124), double noundef, ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7812NumberFormat6formatEiRNS_13UnicodeStringERNS_13FieldPositionER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(124), i32 noundef, ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(20), ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7812NumberFormat6formatEiRNS_13UnicodeStringEPNS_21FieldPositionIteratorER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(124), i32 noundef, ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7812NumberFormat6formatElRNS_13UnicodeStringERNS_13FieldPositionER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(124), i64 noundef, ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(20), ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7812NumberFormat6formatElRNS_13UnicodeStringEPNS_21FieldPositionIteratorER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(124), i64 noundef, ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7812NumberFormat6formatENS_11StringPieceERNS_13UnicodeStringEPNS_21FieldPositionIteratorER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(124), ptr, i32, ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7812NumberFormat6formatERKNS_6number4impl15DecimalQuantityERNS_13UnicodeStringEPNS_21FieldPositionIteratorER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef nonnull align 1, ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7812NumberFormat6formatERKNS_6number4impl15DecimalQuantityERNS_13UnicodeStringERNS_13FieldPositionER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef nonnull align 1, ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(20), ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #2

declare void @_ZNK6icu_7812NumberFormat5parseERKNS_13UnicodeStringERNS_11FormattableER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #2

declare noundef ptr @_ZNK6icu_7812NumberFormat13parseCurrencyERKNS_13UnicodeStringERNS_13ParsePositionE(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

declare void @_ZN6icu_7812NumberFormat19setParseIntegerOnlyEa(ptr noundef nonnull align 8 dereferenceable(124), i8 noundef signext) unnamed_addr #2

declare void @_ZN6icu_7812NumberFormat10setLenientEa(ptr noundef nonnull align 8 dereferenceable(124), i8 noundef signext) unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr noundef signext i8 @_ZNK6icu_7812NumberFormat9isLenientEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 109
  %i.b = load i8, ptr %i.a, align 1, !tbaa !56
  ret i8 %i.b
}

declare void @_ZN6icu_7812NumberFormat15setGroupingUsedEa(ptr noundef nonnull align 8 dereferenceable(124), i8 noundef signext) unnamed_addr #2

declare void @_ZN6icu_7812NumberFormat23setMaximumIntegerDigitsEi(ptr noundef nonnull align 8 dereferenceable(124), i32 noundef) unnamed_addr #2

declare void @_ZN6icu_7812NumberFormat23setMinimumIntegerDigitsEi(ptr noundef nonnull align 8 dereferenceable(124), i32 noundef) unnamed_addr #2

declare void @_ZN6icu_7812NumberFormat24setMaximumFractionDigitsEi(ptr noundef nonnull align 8 dereferenceable(124), i32 noundef) unnamed_addr #2

declare void @_ZN6icu_7812NumberFormat24setMinimumFractionDigitsEi(ptr noundef nonnull align 8 dereferenceable(124), i32 noundef) unnamed_addr #2

declare void @_ZN6icu_7812NumberFormat11setCurrencyEPKDsR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef, ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #2

declare void @_ZN6icu_7812NumberFormat10setContextE15UDisplayContextR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(124), i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #2

declare noundef i32 @_ZNK6icu_7812NumberFormat10getContextE19UDisplayContextTypeR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(124), i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #2

declare noundef i32 @_ZNK6icu_7812NumberFormat15getRoundingModeEv(ptr noundef nonnull align 8 dereferenceable(124)) unnamed_addr #2

declare void @_ZN6icu_7812NumberFormat15setRoundingModeENS0_13ERoundingModeE(ptr noundef nonnull align 8 dereferenceable(124), i32 noundef) unnamed_addr #2

declare void @_ZNK6icu_7812NumberFormat20getEffectiveCurrencyEPDsR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef, ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef) local_unnamed_addr #2

declare noundef signext i8 @_ZNK6icu_7813UnicodeString9doCompareEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"vtable pointer", !3, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"_ZTS10UErrorCode", !4, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"_ZTSN6icu_787UObjectE"}
!13 = !{!"_ZTSN6icu_786LocaleE", !12, i64 0, !4, i64 8}
!14 = !{!"_ZTSN6icu_786FormatE", !12, i64 0, !13, i64 8, !13, i64 48}
!15 = !{!"_ZTS15UDisplayContext", !4, i64 0}
!16 = !{!"_ZTSN6icu_7812NumberFormatE", !14, i64 0, !4, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !4, i64 108, !4, i64 109, !4, i64 110, !15, i64 120}
!17 = !{!"_ZTS29UMessagePatternApostropheMode", !4, i64 0}
!18 = !{!"_ZTSN6icu_7811ReplaceableE", !12, i64 0}
!19 = !{!"_ZTSN6icu_7813UnicodeStringE", !18, i64 0, !4, i64 8}
!20 = !{!"any pointer", !4, i64 0}
!21 = !{!"p1 _ZTSN6icu_7823MessagePatternPartsListE", !20, i64 0}
!22 = !{!"p1 _ZTSN6icu_7814MessagePattern4PartE", !20, i64 0}
!23 = !{!"p1 _ZTSN6icu_7824MessagePatternDoubleListE", !20, i64 0}
!24 = !{!"p1 double", !20, i64 0}
!25 = !{!"_ZTSN6icu_7814MessagePatternE", !12, i64 0, !17, i64 8, !19, i64 16, !21, i64 80, !22, i64 88, !5, i64 96, !23, i64 104, !24, i64 112, !5, i64 120, !4, i64 124, !4, i64 125, !4, i64 126}
!26 = !{!"_ZTSN6icu_7812ChoiceFormatE", !16, i64 0, !10, i64 124, !25, i64 128}
!27 = !{!26, !10, i64 124}
!28 = !{!4, !4, i64 0}
!29 = !{!"llvm.loop.mustprogress"}
!30 = !{!"char16_t", !4, i64 0}
!31 = !{!30, !30, i64 0}
!32 = !{!5, !5, i64 0}
!33 = !{!25, !5, i64 96}
!34 = !{!25, !22, i64 88}
!35 = !{!"_ZTS23UMessagePatternPartType", !4, i64 0}
!36 = !{!"short", !4, i64 0}
!37 = !{!"_ZTSN6icu_7814MessagePattern4PartE", !35, i64 0, !5, i64 4, !36, i64 8, !36, i64 10, !5, i64 12}
!38 = !{!37, !5, i64 12}
!39 = !{!37, !35, i64 0}
!40 = !{!37, !5, i64 4}
!41 = !{!37, !36, i64 8}
!42 = !{!"_ZTSN6icu_7813ParsePositionE", !12, i64 0, !5, i64 8, !5, i64 12}
!43 = !{!42, !5, i64 8}
!44 = !{!42, !5, i64 12}
!45 = distinct !{!45, !29}
!46 = distinct !{!46, !29}
!47 = distinct !{!47, !29}
!48 = distinct !{!48, !29}
!49 = distinct !{!49, !29}
!50 = distinct !{!50, !29}
!51 = !{!"double", !4, i64 0}
!52 = !{!51, !51, i64 0}
!53 = !{!25, !17, i64 8}
!54 = distinct !{!54, !29}
!55 = distinct !{!55, !29}
!56 = !{!16, !4, i64 109}
end_hunk_0
