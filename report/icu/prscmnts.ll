Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/prscmnts?download=true
inline.NumInlined: 40
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0
@.str.9 = private unnamed_addr constant [47 x i8] c"Multiple @translate tags cannot be supported.\0A\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"^translate\\s*?(.*)\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"^note\\s*?(.*)\00", align 1
@_ZTVN6icu_7813UnicodeStringE = external constant { [13 x ptr] }, align 8

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @removeText(ptr noundef %0, i32 noundef %1, ptr noundef align 8 %2, i32 noundef %3, ptr noundef align 8 %4, ptr noundef %5) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.icu_78::UnicodeString", align 8 ; 7 uses
  %7 = alloca %"class.icu_78::RegexMatcher", align 8 ; 7 uses
  %8 = alloca %"class.icu_78::UnicodeString", align 8 ; 9 uses
  %9 = alloca %"class.icu_78::UnicodeString", align 8 ; 6 uses
  %10 = alloca %"class.icu_78::Char16Ptr", align 8 ; 4 uses
  %i.a = icmp eq ptr %5, null
  br i1 %i.a, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %5, align 4, !tbaa !10
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.n

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #6
  call void @_ZN6icu_7813UnicodeStringC1EPKDsi(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef %0, i32 noundef %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #6
  invoke void @_ZN6icu_7812RegexMatcherC1ERKNS_13UnicodeStringES3_jR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(336) %7, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(64) %6, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %5)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = load i32, ptr %5, align 4, !tbaa !10
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %bb.f, label %bb.l

bb.e:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #6
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %8, align 8, !tbaa !12
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i16 2, ptr %i.g, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #6
  invoke void @_ZN6icu_7812RegexMatcher10replaceAllERKNS_13UnicodeStringER10UErrorCode(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::UnicodeString") align 8 %9, ptr noundef nonnull align 8 dereferenceable(336) %7, ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 4 dereferenceable(4) %5)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.h = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef nonnull align 8 dereferenceable(64) %9) #6 ; 0 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %9) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #6
  store ptr %0, ptr %10, align 8, !tbaa !17
  %i.i = invoke noundef i32 @_ZNK6icu_7813UnicodeString7extractENS_9Char16PtrEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef nonnull align 8 %10, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %5)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.j = load ptr, ptr %10, align 8, !tbaa !17
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.j) #6, !srcloc !18
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %8) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #6
  br label %bb.l

bb.i:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #6
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %10, align 8, !tbaa !17
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.m) #6, !srcloc !18
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.l, %bb.j ], [ %i.k, %bb.i ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %8) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #6
  call void @_ZN6icu_7812RegexMatcherD1Ev(ptr noundef nonnull align 8 dead_on_return(336) dereferenceable(336) %7) #6
  br label %bb.m

bb.l:                                             ; preds = %bb.d, %bb.h
  %.016 = phi i32 [ %i.i, %bb.h ], [ 0, %bb.d ]
  call void @_ZN6icu_7812RegexMatcherD1Ev(ptr noundef nonnull align 8 dead_on_return(336) dereferenceable(336) %7) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #6
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #6
  br label %bb.n

bb.m:                                             ; preds = %bb.k, %bb.e
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn, %bb.k ], [ %i.f, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #6
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #6
  resume { ptr, i32 } %.pn.pn.pn

bb.n:                                             ; preds = %bb.a, %bb.b, %bb.l
  %.117 = phi i32 [ %.016, %bb.l ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.117
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN6icu_7813UnicodeStringC1EPKDsi(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i32 noundef) unnamed_addr #2

declare void @_ZN6icu_7812RegexMatcherC1ERKNS_13UnicodeStringES3_jR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(336), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

declare void @_ZN6icu_7812RegexMatcher10replaceAllERKNS_13UnicodeStringER10UErrorCode(ptr dead_on_unwind writable sret(%"class.icu_78::UnicodeString") align 8, ptr noundef nonnull align 8 dereferenceable(336), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: nounwind
declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64)) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare noundef i32 @_ZNK6icu_7813UnicodeString7extractENS_9Char16PtrEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef align 8, i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN6icu_7812RegexMatcherD1Ev(ptr noundef nonnull align 8 dead_on_return(336) dereferenceable(336)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @trim(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.icu_78::UnicodeString", align 8 ; 4 uses
  %4 = alloca %"class.icu_78::UnicodeString", align 8 ; 5 uses
  %5 = alloca %"class.icu_78::UnicodeString", align 8 ; 4 uses
  %6 = alloca %"class.icu_78::UnicodeString", align 8 ; 5 uses
  %7 = alloca %"class.icu_78::UnicodeString", align 8 ; 4 uses
  %8 = alloca %"class.icu_78::UnicodeString", align 8 ; 5 uses
  call void @_ZN6icu_7813UnicodeStringC1EPKc(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull @.str.2)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %4, align 8, !tbaa !12
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 2, ptr %i.a, align 8, !tbaa !13
  %i.b = invoke i32 @removeText(ptr noundef %0, i32 noundef %1, ptr noundef nonnull align 8 %3, i32 noundef 0, ptr noundef nonnull align 8 %4, ptr noundef %2)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #6
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #6
  call void @_ZN6icu_7813UnicodeStringC1EPKc(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull @.str.3)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %6, align 8, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i16 2, ptr %i.c, align 8, !tbaa !13
  %i.d = invoke i32 @removeText(ptr noundef %0, i32 noundef %i.b, ptr noundef nonnull align 8 %5, i32 noundef 0, ptr noundef nonnull align 8 %6, ptr noundef %2)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #6
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #6
  call void @_ZN6icu_7813UnicodeStringC1EPKc(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull @.str.4)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %8, align 8, !tbaa !12
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i16 2, ptr %i.e, align 8, !tbaa !13
  %i.f = invoke i32 @removeText(ptr noundef %0, i32 noundef %i.d, ptr noundef nonnull align 8 %7, i32 noundef 0, ptr noundef nonnull align 8 %8, ptr noundef %2)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %8) #6
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %7) #6
  ret i32 %i.f

bb.e:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.f:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.sink21 = phi ptr [ %8, %bb.g ], [ %6, %bb.f ], [ %4, %bb.e ]
  %.sink = phi ptr [ %7, %bb.g ], [ %5, %bb.f ], [ %3, %bb.e ]
  %.pn18.pn = phi { ptr, i32 } [ %i.i, %bb.g ], [ %i.h, %bb.f ], [ %i.g, %bb.e ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.sink21) #6
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.sink) #6
  resume { ptr, i32 } %.pn18.pn
}

declare void @_ZN6icu_7813UnicodeStringC1EPKc(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @removeCmtText(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.icu_78::UnicodeString", align 8 ; 7 uses
  %4 = alloca %"class.icu_78::UnicodeString", align 8 ; 4 uses
  %5 = alloca %"class.icu_78::UnicodeString", align 8 ; 5 uses
  %6 = alloca %"class.icu_78::UnicodeString", align 8 ; 5 uses
  %7 = alloca %"class.icu_78::UnicodeString", align 8 ; 4 uses
  %i.a = tail call i32 @trim(ptr noundef %0, i32 noundef %1, ptr noundef %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  call void @_ZN6icu_7813UnicodeStringC1EPKc(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull @.str.5)
  invoke void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %bb.b unwind label %8

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %5, align 8, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i16 2, ptr %i.b, align 8, !tbaa !13
  %i.c = invoke i32 @removeText(ptr noundef %0, i32 noundef %i.a, ptr noundef nonnull align 8 %4, i32 noundef 8, ptr noundef nonnull align 8 %5, ptr noundef %2)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #6
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #6
  invoke void @_ZN6icu_7813UnicodeStringC1EPKc(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull @.str.6)
          to label %bb.d unwind label %8

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN6icu_7813UnicodeStringC1EPKc(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull @.str.7)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.d = invoke i32 @removeText(ptr noundef %0, i32 noundef %i.c, ptr noundef nonnull align 8 %6, i32 noundef 0, ptr noundef nonnull align 8 %7, ptr noundef %2)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %7) #6
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #6
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  ret i32 %i.d

8:                                                ; preds = %bb.c, %bb.a
  %9 = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.g:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.h:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.i:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.i
  %.sink17 = phi ptr [ %7, %bb.i ], [ %5, %bb.g ]
  %.sink.ph = phi ptr [ %6, %bb.i ], [ %4, %bb.g ]
  %.pn14.pn.ph.ph = phi { ptr, i32 } [ %i.g, %bb.i ], [ %i.e, %bb.g ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.sink17) #6
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h
  %.sink = phi ptr [ %6, %bb.h ], [ %.sink.ph, %bb.j ]
  %.pn14 = phi { ptr, i32 } [ %i.f, %bb.h ], [ %.pn14.pn.ph.ph, %bb.j ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.sink) #6
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %8
  %.pn14.pn = phi { ptr, i32 } [ %9, %8 ], [ %.pn14, %bb.k ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  resume { ptr, i32 } %.pn14.pn
}

declare void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @getText(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr noundef align 8 %4, ptr noundef %5) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca [20 x %"class.icu_78::UnicodeString"], align 16 ; 85 uses
  %7 = alloca %"class.icu_78::UnicodeString", align 8 ; 7 uses
  %8 = alloca %"class.icu_78::UnicodeString", align 8 ; 7 uses
  %9 = alloca %"class.icu_78::RegexMatcher", align 8 ; 47 uses
  %10 = alloca %"class.icu_78::UnicodeString", align 8 ; 7 uses
  %11 = alloca %"class.icu_78::Char16Ptr", align 8 ; 4 uses
  %i.a = icmp eq ptr %5, null
  br i1 %i.a, label %bb.bq, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %5, align 4, !tbaa !10
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.bq

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #6
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %6, align 16, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i16 2, ptr %i.d, align 8, !tbaa !13
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.1, align 16, !tbaa !12
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 72
  store i16 2, ptr %i.e, align 8, !tbaa !13
  %.ptr.2 = getelementptr inbounds nuw i8, ptr %6, i64 128 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.2, align 16, !tbaa !12
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 136
  store i16 2, ptr %i.f, align 8, !tbaa !13
  %.ptr.3 = getelementptr inbounds nuw i8, ptr %6, i64 192 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.3, align 16, !tbaa !12
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 200
  store i16 2, ptr %i.g, align 8, !tbaa !13
  %.ptr.4 = getelementptr inbounds nuw i8, ptr %6, i64 256 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.4, align 16, !tbaa !12
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 264
  store i16 2, ptr %i.h, align 8, !tbaa !13
  %.ptr.5 = getelementptr inbounds nuw i8, ptr %6, i64 320 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.5, align 16, !tbaa !12
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 328
  store i16 2, ptr %i.i, align 8, !tbaa !13
  %.ptr.6 = getelementptr inbounds nuw i8, ptr %6, i64 384 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.6, align 16, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 392
  store i16 2, ptr %i.j, align 8, !tbaa !13
  %.ptr.7 = getelementptr inbounds nuw i8, ptr %6, i64 448 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.7, align 16, !tbaa !12
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 456
  store i16 2, ptr %i.k, align 8, !tbaa !13
  %.ptr.8 = getelementptr inbounds nuw i8, ptr %6, i64 512 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.8, align 16, !tbaa !12
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 520
  store i16 2, ptr %i.l, align 8, !tbaa !13
  %.ptr.9 = getelementptr inbounds nuw i8, ptr %6, i64 576 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.9, align 16, !tbaa !12
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 584
  store i16 2, ptr %i.m, align 8, !tbaa !13
  %.ptr.10 = getelementptr inbounds nuw i8, ptr %6, i64 640 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.10, align 16, !tbaa !12
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 648
  store i16 2, ptr %i.n, align 8, !tbaa !13
  %.ptr.11 = getelementptr inbounds nuw i8, ptr %6, i64 704 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.11, align 16, !tbaa !12
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 712
  store i16 2, ptr %i.o, align 8, !tbaa !13
  %.ptr.12 = getelementptr inbounds nuw i8, ptr %6, i64 768 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.12, align 16, !tbaa !12
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 776
  store i16 2, ptr %i.p, align 8, !tbaa !13
  %.ptr.13 = getelementptr inbounds nuw i8, ptr %6, i64 832 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.13, align 16, !tbaa !12
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 840
  store i16 2, ptr %i.q, align 8, !tbaa !13
  %.ptr.14 = getelementptr inbounds nuw i8, ptr %6, i64 896 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.14, align 16, !tbaa !12
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 904
  store i16 2, ptr %i.r, align 8, !tbaa !13
  %.ptr.15 = getelementptr inbounds nuw i8, ptr %6, i64 960 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.15, align 16, !tbaa !12
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 968
  store i16 2, ptr %i.s, align 8, !tbaa !13
  %.ptr.16 = getelementptr inbounds nuw i8, ptr %6, i64 1024 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.16, align 16, !tbaa !12
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 1032
  store i16 2, ptr %i.t, align 8, !tbaa !13
  %.ptr.17 = getelementptr inbounds nuw i8, ptr %6, i64 1088 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.17, align 16, !tbaa !12
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 1096
  store i16 2, ptr %i.u, align 8, !tbaa !13
  %.ptr.18 = getelementptr inbounds nuw i8, ptr %6, i64 1152 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.18, align 16, !tbaa !12
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 1160
  store i16 2, ptr %i.v, align 8, !tbaa !13
  %.ptr.19 = getelementptr inbounds nuw i8, ptr %6, i64 1216 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.19, align 16, !tbaa !12
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 1224
  store i16 2, ptr %i.w, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #6
  invoke void @_ZN6icu_7813UnicodeStringC1EPKc(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull @.str.8)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.x = invoke noundef ptr @_ZN6icu_7812RegexPattern7compileERKNS_13UnicodeStringEjR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %7, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(4) %5)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %7) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #6
  invoke void @_ZN6icu_7813UnicodeStringC1EPKDsi(ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef %0, i32 noundef %1)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.y = load i32, ptr %5, align 4, !tbaa !10
  %i.z = icmp slt i32 %i.y, 1
  br i1 %i.z, label %bb.l, label %bb.bm

bb.g:                                             ; preds = %bb.c
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %7) #6
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.ab, %bb.h ], [ %i.aa, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #6
  br label %bb.bp

bb.j:                                             ; preds = %bb.e
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.k:                                             ; preds = %bb.l
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.l:                                             ; preds = %bb.f
  %i.ae = invoke noundef i32 @_ZNK6icu_7812RegexPattern5splitERKNS_13UnicodeStringEPS1_iR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(200) %i.x, ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef nonnull %6, i32 noundef 20, ptr noundef nonnull align 4 dereferenceable(4) %5)
          to label %bb.m unwind label %bb.k       ; 0 uses

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #6
  invoke void @_ZN6icu_7812RegexMatcherC1ERKNS_13UnicodeStringEjR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(336) %9, ptr noundef nonnull align 8 dereferenceable(64) %4, i32 noundef 32, ptr noundef nonnull align 4 dereferenceable(4) %5)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.af = load i32, ptr %5, align 4, !tbaa !10
  %i.ag = icmp slt i32 %i.af, 1
  br i1 %i.ag, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %bb.n
  %i.ah = invoke noundef nonnull align 8 dereferenceable(336) ptr @_ZN6icu_7812RegexMatcher5resetERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(336) %9, ptr noundef nonnull align 8 dereferenceable(64) %6)
          to label %bb.bb unwind label %bb.bg     ; 0 uses

bb.o:                                             ; preds = %bb.m
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

.preheader.1:                                     ; preds = %bb.bc
  %i.aj = invoke noundef nonnull align 8 dereferenceable(336) ptr @_ZN6icu_7812RegexMatcher5resetERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(336) %9, ptr noundef nonnull align 8 dereferenceable(64) %.ptr.1)
          to label %bb.p unwind label %bb.bg      ; 0 uses

bb.p:                                             ; preds = %.preheader.1
  %i.ak = invoke noundef signext i8 @_ZN6icu_7812RegexMatcher9lookingAtER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(336) %9, ptr noundef nonnull align 4 dereferenceable(4) %5)
          to label %bb.q unwind label %bb.bg

bb.q:                                             ; preds = %bb.p
  %.not43.1 = icmp eq i8 %i.ak, 0
  br i1 %.not43.1, label %.preheader.2, label %bb.bd

.preheader.2:                                     ; preds = %bb.q
  %i.al = invoke noundef nonnull align 8 dereferenceable(336) ptr @_ZN6icu_7812RegexMatcher5resetERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(336) %9, ptr noundef nonnull align 8 dereferenceable(64) %.ptr.2)
          to label %bb.r unwind label %bb.bg      ; 0 uses

bb.r:                                             ; preds = %.preheader.2
  %i.am = invoke noundef signext i8 @_ZN6icu_7812RegexMatcher9lookingAtER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(336) %9, ptr noundef nonnull align 4 dereferenceable(4) %5)
          to label %bb.s unwind label %bb.bg

bb.s:                                             ; preds = %bb.r
  %.not43.2 = icmp eq i8 %i.am, 0
  br i1 %.not43.2, label %.preheader.3, label %bb.bd

.preheader.3:                                     ; preds = %bb.s
  %i.an = invoke noundef nonnull align 8 dereferenceable(336) ptr @_ZN6icu_7812RegexMatcher5resetERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(336) %9, ptr noundef nonnull align 8 dereferenceable(64) %.ptr.3)
end_hunk_0
