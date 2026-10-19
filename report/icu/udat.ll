Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/udat?download=true
inline.NumInlined: 156
inline.NumDeleted: 32
begin_hunk_0_@udat_adoptNumberFormatForFields_78:bb.a
  %i.d = tail call ptr @__dynamic_cast(ptr nonnull readonly %0, ptr nonnull @_ZTIN6icu_7810DateFormatE, ptr nonnull @_ZTIN6icu_7816SimpleDateFormatE, i64 0) #8
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %.critedge.i, label %_ZL24verifyIsSimpleDateFormatPKPvP10UErrorCode.exit

.critedge.i:                                      ; preds = %bb.c, %bb.b
  store i32 1, ptr %3, align 4, !tbaa !9
  br label %_ZL24verifyIsSimpleDateFormatPKPvP10UErrorCode.exit.thread

_ZL24verifyIsSimpleDateFormatPKPvP10UErrorCode.exit: ; preds = %bb.c
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %_ZL24verifyIsSimpleDateFormatPKPvP10UErrorCode.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZL24verifyIsSimpleDateFormatPKPvP10UErrorCode.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %4, align 8, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 2, ptr %i.f, align 8, !tbaa !18
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.d, %.preheader.i.i
  %.0.i.i.i.i = phi i64 [ %i.j, %.preheader.i.i ], [ 0, %bb.d ] ; 3 uses
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.0.i.i.i.i
  %i.h = load i16, ptr %i.g, align 2, !tbaa !44
  %i.i = icmp eq i16 %i.h, 0
  %i.j = add i64 %.0.i.i.i.i, 1
  br i1 %i.i, label %.loopexit.i, label %.preheader.i.i, !llvm.loop !42

.loopexit.i:                                      ; preds = %.preheader.i.i
  %i.k = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendESt17basic_string_viewIDsSt11char_traitsIDsEE(ptr noundef nonnull align 8 dereferenceable(64) %4, i64 %.0.i.i.i.i, ptr nonnull %1)
          to label %_ZN6icu_7813UnicodeStringC2IPKDsvEERKT_.exit unwind label %bb.e ; 0 uses

common.resume:                                    ; preds = %bb.g, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.e ], [ %i.m, %bb.g ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %.loopexit.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7811ReplaceableD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(64) %4) #8
  br label %common.resume

_ZN6icu_7813UnicodeStringC2IPKDsvEERKT_.exit:     ; preds = %.loopexit.i
  invoke void @_ZN6icu_7816SimpleDateFormat17adoptNumberFormatERKNS_13UnicodeStringEPNS_12NumberFormatER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %_ZN6icu_7813UnicodeStringC2IPKDsvEERKT_.exit
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  br label %_ZL24verifyIsSimpleDateFormatPKPvP10UErrorCode.exit.thread

bb.g:                                             ; preds = %_ZN6icu_7813UnicodeStringC2IPKDsvEERKT_.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  br label %common.resume

_ZL24verifyIsSimpleDateFormatPKPvP10UErrorCode.exit.thread: ; preds = %.critedge.i, %bb.a, %_ZL24verifyIsSimpleDateFormatPKPvP10UErrorCode.exit, %bb.f
  ret void
}

declare void @_ZN6icu_7816SimpleDateFormat17adoptNumberFormatERKNS_13UnicodeStringEPNS_12NumberFormatER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(408), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @udat_setNumberFormat_78(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(124) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @udat_adoptNumberFormat_78(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define ptr @udat_getAvailable_78(i32 noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @uloc_getAvailable_78(i32 noundef %0)
  ret ptr %i.a
}

declare ptr @uloc_getAvailable_78(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define i32 @udat_countAvailable_78() local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @uloc_countAvailable_78()
  ret i32 %i.a
}

declare i32 @uloc_countAvailable_78() local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, argmem: readwrite) uwtable
define double @udat_get2DigitYearStart_78(ptr nofree noundef readonly %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !9
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %_ZL24verifyIsSimpleDateFormatPKPvP10UErrorCode.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @__dynamic_cast(ptr nonnull readonly %0, ptr nonnull @_ZTIN6icu_7810DateFormatE, ptr nonnull @_ZTIN6icu_7816SimpleDateFormatE, i64 0) #8
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %.critedge.i, label %_ZL24verifyIsSimpleDateFormatPKPvP10UErrorCode.exit

.critedge.i:                                      ; preds = %bb.c, %bb.b
  store i32 1, ptr %1, align 4, !tbaa !9
  br label %_ZL24verifyIsSimpleDateFormatPKPvP10UErrorCode.exit.thread

_ZL24verifyIsSimpleDateFormatPKPvP10UErrorCode.exit: ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.g = load double, ptr %i.f, align 8, !tbaa !59
  br label %_ZL24verifyIsSimpleDateFormatPKPvP10UErrorCode.exit.thread

_ZL24verifyIsSimpleDateFormatPKPvP10UErrorCode.exit.thread: ; preds = %.critedge.i, %bb.a, %_ZL24verifyIsSimpleDateFormatPKPvP10UErrorCode.exit
  %.0 = phi double [ %i.g, %_ZL24verifyIsSimpleDateFormatPKPvP10UErrorCode.exit ], [ 0.000000e+00, %bb.a ], [ 0.000000e+00, %.critedge.i ]
  ret double %.0
}

; Function Attrs: mustprogress uwtable
define void @udat_set2DigitYearStart_78(ptr noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !9
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %_ZL24verifyIsSimpleDateFormatPKPvP10UErrorCode.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @__dynamic_cast(ptr nonnull readonly %0, ptr nonnull @_ZTIN6icu_7810DateFormatE, ptr nonnull @_ZTIN6icu_7816SimpleDateFormatE, i64 0) #8
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %.critedge.i, label %_ZL24verifyIsSimpleDateFormatPKPvP10UErrorCode.exit

.critedge.i:                                      ; preds = %bb.c, %bb.b
  store i32 1, ptr %2, align 4, !tbaa !9
  br label %_ZL24verifyIsSimpleDateFormatPKPvP10UErrorCode.exit.thread

_ZL24verifyIsSimpleDateFormatPKPvP10UErrorCode.exit: ; preds = %bb.c
  %i.f = load ptr, ptr %0, align 8, !tbaa !17
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 232
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(408) %0, double noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2)
  br label %_ZL24verifyIsSimpleDateFormatPKPvP10UErrorCode.exit.thread

_ZL24verifyIsSimpleDateFormatPKPvP10UErrorCode.exit.thread: ; preds = %.critedge.i, %bb.a, %_ZL24verifyIsSimpleDateFormatPKPvP10UErrorCode.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i32 @udat_toPattern_78(ptr noundef %0, i8 noundef signext %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.icu_78::UnicodeString", align 8 ; 14 uses
  %6 = alloca %"class.icu_78::Char16Ptr", align 8 ; 4 uses
  %i.a = load i32, ptr %4, align 4, !tbaa !9
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.s

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %2, null
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.not34 = icmp eq i32 %3, 0
  br i1 %.not34, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %5, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i16 2, ptr %i.d, align 8, !tbaa !18
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.e = icmp slt i32 %3, 0
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  store i32 1, ptr %4, align 4, !tbaa !9
  br label %bb.s

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %5, align 8, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i16 2, ptr %i.f, align 8, !tbaa !18
  %i.g = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString5setToEPDsii(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull %2, i32 noundef 0, i32 noundef %3)
          to label %bb.g unwind label %7          ; 0 uses

7:                                                ; preds = %bb.f
  %8 = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.g:                                             ; preds = %.thread, %bb.f
  %i.h = icmp eq ptr %0, null
  br i1 %i.h, label %.thread47, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.i = call ptr @__dynamic_cast(ptr nonnull %0, ptr nonnull @_ZTIN6icu_7810DateFormatE, ptr nonnull @_ZTIN6icu_7816SimpleDateFormatE, i64 0) #8 ; 4 uses
  %.not36 = icmp eq ptr %i.i, null
  %.not3745 = icmp eq i8 %1, 0                    ; 2 uses
  br i1 %.not36, label %.thread44, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !17   ; 2 uses
  br i1 %.not3745, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 248
  br label %.invoke

bb.k:                                             ; preds = %.invoke, %bb.l
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.l:                                             ; preds = %bb.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 240
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = invoke noundef nonnull align 8 dereferenceable(64) ptr %i.n(ptr noundef nonnull align 8 dereferenceable(408) %i.i, ptr noundef nonnull align 8 dereferenceable(64) %5)
          to label %bb.n unwind label %bb.k       ; 0 uses

.thread44:                                        ; preds = %bb.h
  br i1 %.not3745, label %.thread46, label %.thread47

.thread46:                                        ; preds = %.thread44
  %i.p = call ptr @__dynamic_cast(ptr nonnull %0, ptr nonnull @_ZTIN6icu_7810DateFormatE, ptr nonnull @_ZTIN6icu_7818RelativeDateFormatE, i64 0) #8 ; 3 uses
  %.not38 = icmp eq ptr %i.p, null
  br i1 %.not38, label %.thread47, label %bb.m

bb.m:                                             ; preds = %.thread46
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !17
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 232
  br label %.invoke

.invoke:                                          ; preds = %bb.j, %bb.m
  %i.s = phi ptr [ %i.p, %bb.m ], [ %i.i, %bb.j ]
  %.in = phi ptr [ %i.r, %bb.m ], [ %i.k, %bb.j ]
  %i.t = load ptr, ptr %.in, align 8
  %i.u = invoke noundef nonnull align 8 dereferenceable(64) ptr %i.t(ptr noundef nonnull align 8 dereferenceable(336) %i.s, ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %bb.n unwind label %bb.k       ; 0 uses

.thread47:                                        ; preds = %bb.g, %.thread44, %.thread46
  store i32 1, ptr %4, align 4, !tbaa !9
  br label %bb.q

bb.n:                                             ; preds = %.invoke, %bb.l
  store ptr %2, ptr %6, align 8, !tbaa !28
  %i.v = invoke noundef i32 @_ZNK6icu_7813UnicodeString7extractENS_9Char16PtrEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 %6, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.w = load ptr, ptr %6, align 8, !tbaa !28
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.w) #8, !srcloc !29
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = load ptr, ptr %6, align 8, !tbaa !28
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.y) #8, !srcloc !29
  br label %bb.r

bb.q:                                             ; preds = %bb.o, %.thread47
  %.027 = phi i32 [ %i.v, %bb.o ], [ -1, %.thread47 ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  br label %bb.s

bb.r:                                             ; preds = %bb.k, %bb.p, %7
  %.pn.pn = phi { ptr, i32 } [ %8, %7 ], [ %i.x, %bb.p ], [ %i.l, %bb.k ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  resume { ptr, i32 } %.pn.pn

bb.s:                                             ; preds = %bb.a, %bb.q, %bb.e
  %.128 = phi i32 [ %.027, %bb.q ], [ -1, %bb.e ], [ -1, %bb.a ]
  ret i32 %.128
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define void @udat_applyPattern_78(ptr noundef %0, i8 noundef signext %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.icu_78::UnicodeString", align 8 ; 8 uses
  %5 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 4 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  %i.b = icmp eq i32 %3, -1
  %i.c = zext i1 %i.b to i8
  store ptr %2, ptr %5, align 8, !tbaa !14
  invoke void @_ZN6icu_7813UnicodeStringC1EaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64) %4, i8 noundef signext %i.c, ptr noundef nonnull align 8 %5, i32 noundef %3)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %5, align 8, !tbaa !14
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.d) #8, !srcloc !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 0, ptr %i.a, align 4, !tbaa !9
  %i.e = icmp eq ptr %0, null
  br i1 %i.e, label %_ZL24verifyIsSimpleDateFormatPKPvP10UErrorCode.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = call ptr @__dynamic_cast(ptr nonnull readonly %0, ptr nonnull @_ZTIN6icu_7810DateFormatE, ptr nonnull @_ZTIN6icu_7816SimpleDateFormatE, i64 0) #8
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_ZL24verifyIsSimpleDateFormatPKPvP10UErrorCode.exit, label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %5, align 8, !tbaa !14
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.i) #8, !srcloc !15
  br label %bb.i

bb.e:                                             ; preds = %bb.h, %bb.g
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #8
  br label %bb.i

bb.f:                                             ; preds = %bb.c
  %.not9 = icmp eq i8 %1, 0
  %i.k = load ptr, ptr %0, align 8, !tbaa !17     ; 2 uses
  br i1 %.not9, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 264
  %i.m = load ptr, ptr %i.l, align 8
  invoke void %i.m(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZL24verifyIsSimpleDateFormatPKPvP10UErrorCode.exit unwind label %bb.e

bb.h:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 256
  %i.o = load ptr, ptr %i.n, align 8
  invoke void %i.o(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %_ZL24verifyIsSimpleDateFormatPKPvP10UErrorCode.exit unwind label %bb.e

_ZL24verifyIsSimpleDateFormatPKPvP10UErrorCode.exit: ; preds = %bb.c, %bb.b, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  ret void

bb.i:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.j, %bb.e ], [ %i.h, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define noundef i32 @udat_getSymbols_78(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 36 uses
  %6 = alloca %"class.icu_78::UnicodeString", align 8 ; 10 uses
  %7 = alloca %"class.icu_78::Char16Ptr", align 8 ; 4 uses
  %8 = alloca %"class.icu_78::Char16Ptr", align 8 ; 4 uses
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %.thread70, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__dynamic_cast(ptr nonnull %0, ptr nonnull @_ZTIN6icu_7810DateFormatE, ptr nonnull @_ZTIN6icu_7816SimpleDateFormatE, i64 0) #8 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @__dynamic_cast(ptr nonnull %0, ptr nonnull @_ZTIN6icu_7810DateFormatE, ptr nonnull @_ZTIN6icu_7818RelativeDateFormatE, i64 0) #8 ; 2 uses
  %.not64 = icmp eq ptr %i.d, null
  br i1 %.not64, label %.thread70, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink79 = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %.sink78 = phi i64 [ 272, %bb.b ], [ 264, %bb.c ]
  %i.e = load ptr, ptr %.sink79, align 8, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sink78
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef ptr %i.g(ptr noundef nonnull align 8 dereferenceable(336) %.sink79) ; 32 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 0, ptr %i.a, align 4, !tbaa !26
  switch i32 %1, label %bb.ar [
    i32 0, label %bb.e
    i32 7, label %bb.f
    i32 1, label %bb.g
    i32 2, label %bb.h
    i32 3, label %bb.i
    i32 4, label %bb.j
    i32 5, label %bb.k
    i32 30, label %bb.l
    i32 31, label %bb.m
    i32 6, label %bb.n
    i32 8, label %bb.v
    i32 20, label %bb.w
    i32 9, label %bb.x
    i32 10, label %bb.y
    i32 11, label %bb.z
    i32 12, label %bb.aa
    i32 13, label %bb.ab
    i32 14, label %bb.ac
    i32 21, label %bb.ad
    i32 15, label %bb.ae
    i32 16, label %bb.af
    i32 17, label %bb.ag
    i32 28, label %bb.ah
    i32 18, label %bb.ai
    i32 19, label %bb.aj
    i32 29, label %bb.ak
    i32 22, label %bb.al
    i32 23, label %bb.am
    i32 24, label %bb.an
    i32 25, label %bb.ao
    i32 26, label %bb.ap
    i32 27, label %bb.aq
  ]

bb.e:                                             ; preds = %bb.d
  %i.i = call noundef ptr @_ZNK6icu_7817DateFormatSymbols7getErasERi(ptr noundef nonnull align 8 dereferenceable(872) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  br label %bb.ar

bb.f:                                             ; preds = %bb.d
  %i.j = call noundef ptr @_ZNK6icu_7817DateFormatSymbols11getEraNamesERi(ptr noundef nonnull align 8 dereferenceable(872) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  br label %bb.ar

bb.g:                                             ; preds = %bb.d
  %i.k = call noundef ptr @_ZNK6icu_7817DateFormatSymbols9getMonthsERi(ptr noundef nonnull align 8 dereferenceable(872) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  br label %bb.ar

bb.h:                                             ; preds = %bb.d
  %i.l = call noundef ptr @_ZNK6icu_7817DateFormatSymbols14getShortMonthsERi(ptr noundef nonnull align 8 dereferenceable(872) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  br label %bb.ar

bb.i:                                             ; preds = %bb.d
  %i.m = call noundef ptr @_ZNK6icu_7817DateFormatSymbols11getWeekdaysERi(ptr noundef nonnull align 8 dereferenceable(872) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  br label %bb.ar

bb.j:                                             ; preds = %bb.d
  %i.n = call noundef ptr @_ZNK6icu_7817DateFormatSymbols16getShortWeekdaysERi(ptr noundef nonnull align 8 dereferenceable(872) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  br label %bb.ar

bb.k:                                             ; preds = %bb.d
  %i.o = call noundef ptr @_ZNK6icu_7817DateFormatSymbols14getAmPmStringsERi(ptr noundef nonnull align 8 dereferenceable(872) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  br label %bb.ar

bb.l:                                             ; preds = %bb.d
  %i.p = call noundef ptr @_ZNK6icu_7817DateFormatSymbols14getAmPmStringsERiNS0_13DtContextTypeENS0_11DtWidthTypeE(ptr noundef nonnull align 8 dereferenceable(872) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 0, i32 noundef 2)
  br label %bb.ar

bb.m:                                             ; preds = %bb.d
  %i.q = call noundef ptr @_ZNK6icu_7817DateFormatSymbols14getAmPmStringsERiNS0_13DtContextTypeENS0_11DtWidthTypeE(ptr noundef nonnull align 8 dereferenceable(872) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 0, i32 noundef 1)
  br label %bb.ar

bb.n:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %6, align 8, !tbaa !17
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i16 2, ptr %i.r, align 8, !tbaa !18
  %i.s = icmp eq ptr %3, null
  %i.t = icmp eq i32 %4, 0
  %or.cond = and i1 %i.s, %i.t
  br i1 %or.cond, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.u = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString5setToEPDsii(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef %3, i32 noundef 0, i32 noundef %4)
          to label %bb.q unwind label %bb.p       ; 0 uses

bb.p:                                             ; preds = %bb.q, %bb.o
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

end_hunk_0
