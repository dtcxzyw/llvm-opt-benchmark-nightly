inline.NumInlined: 359
inline.NumDeleted: 143
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZNK6icu_7825RelativeDateTimeFormatter13formatToValueE14UDateDirection17UDateAbsoluteUnitR10UErrorCode:bb.a
bb.f:                                             ; preds = %bb.e
  %i.m = icmp eq i32 %3, 11
  %i.n = icmp ne i32 %2, 5
  %or.cond7.i = and i1 %i.n, %i.m
  br i1 %or.cond7.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  store i32 1, ptr %4, align 4, !noalias !38
  br label %_ZNK6icu_7825RelativeDateTimeFormatter18formatAbsoluteImplE14UDateDirection17UDateAbsoluteUnitRNS_29FormattedRelativeDateTimeDataER10UErrorCode.exit

bb.h:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !noalias !38 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.s = load i32, ptr %i.r, align 8, !noalias !38
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.u = zext nneg i32 %3 to i64
  %invariant.gep.i.i = getelementptr [384 x i8], ptr %i.t, i64 %i.u
  %i.v = zext nneg i32 %2 to i64
  %invariant.gep14.i.i = getelementptr [64 x i8], ptr %invariant.gep.i.i, i64 %i.v
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 23128
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %bb.h
  %.0.i.i = phi i32 [ %i.s, %bb.h ], [ %i.ac, %bb.j ]
  %i.x = sext i32 %.0.i.i to i64                  ; 2 uses
  %gep15.i.i = getelementptr [5760 x i8], ptr %invariant.gep14.i.i, i64 %i.x ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %gep15.i.i, i64 8
  %i.z = load i16, ptr %i.y, align 8, !noalias !38
  %i.aa = icmp ugt i16 %i.z, 31
  br i1 %i.aa, label %_ZNK6icu_7825RelativeDateTimeCacheData21getAbsoluteUnitStringEi17UDateAbsoluteUnit14UDateDirection.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.x
  %i.ac = load i32, ptr %i.ab, align 4, !noalias !38 ; 2 uses
  %.not12.i.i = icmp eq i32 %i.ac, -1
  br i1 %.not12.i.i, label %bb.k, label %bb.i, !llvm.loop !8

bb.k:                                             ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 23064
  br label %_ZNK6icu_7825RelativeDateTimeCacheData21getAbsoluteUnitStringEi17UDateAbsoluteUnit14UDateDirection.exit.i

_ZNK6icu_7825RelativeDateTimeCacheData21getAbsoluteUnitStringEi17UDateAbsoluteUnit14UDateDirection.exit.i: ; preds = %bb.i, %bb.k
  %.010.i.i = phi ptr [ %i.ad, %bb.k ], [ %gep15.i.i, %bb.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 140
  %i.af = load i32, ptr %i.ae, align 4, !noalias !38
  %i.ag = tail call noundef i32 @_ZN6icu_7822FormattedStringBuilder6insertEiRKNS_13UnicodeStringENS0_5FieldER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(136) %i.o, i32 noundef %i.af, ptr noundef nonnull align 8 dereferenceable(64) %.010.i.i, i8 64, ptr noundef nonnull align 4 dereferenceable(4) %4) #13, !noalias !38 ; 0 uses
  br label %_ZNK6icu_7825RelativeDateTimeFormatter18formatAbsoluteImplE14UDateDirection17UDateAbsoluteUnitRNS_29FormattedRelativeDateTimeDataER10UErrorCode.exit

_ZNK6icu_7825RelativeDateTimeFormatter18formatAbsoluteImplE14UDateDirection17UDateAbsoluteUnitRNS_29FormattedRelativeDateTimeDataER10UErrorCode.exit: ; preds = %bb.g, %_ZNK6icu_7825RelativeDateTimeCacheData21getAbsoluteUnitStringEi17UDateAbsoluteUnit14UDateDirection.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  tail call void @_ZN6icu_7822FormattedStringBuilder15writeTerminatorER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(136) %i.ah, ptr noundef nonnull align 4 dereferenceable(4) %4) #13, !noalias !38
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6icu_7825FormattedRelativeDateTimeE, i64 16), ptr %0, align 8, !alias.scope !38
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.ai, align 8, !alias.scope !38
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.aj, align 8, !alias.scope !38
  br label %_ZNK6icu_7825RelativeDateTimeFormatter15doFormatToValueIMS0_KFv14UDateDirection17UDateAbsoluteUnitRNS_29FormattedRelativeDateTimeDataER10UErrorCodeEJS2_S3_EEENS_25FormattedRelativeDateTimeET_S7_DpT0_.exit

bb.l:                                             ; preds = %_ZN6icu_7812LocalPointerINS_29FormattedRelativeDateTimeDataEEC2EPS1_R10UErrorCode.exit.i
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6icu_7825FormattedRelativeDateTimeE, i64 16), ptr %0, align 8, !alias.scope !38
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.ak, align 8, !alias.scope !38
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.pre.i, ptr %i.al, align 8, !alias.scope !38
  tail call void @_ZN6icu_7831FormattedValueStringBuilderImplD2Ev(ptr noundef nonnull align 8 dead_on_return(300) dereferenceable(300) %i.e) #13, !noalias !38
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull align 8 dereferenceable(300) %i.e) #13, !noalias !38
  br label %_ZNK6icu_7825RelativeDateTimeFormatter15doFormatToValueIMS0_KFv14UDateDirection17UDateAbsoluteUnitRNS_29FormattedRelativeDateTimeDataER10UErrorCodeEJS2_S3_EEENS_25FormattedRelativeDateTimeET_S7_DpT0_.exit

_ZNK6icu_7825RelativeDateTimeFormatter15doFormatToValueIMS0_KFv14UDateDirection17UDateAbsoluteUnitRNS_29FormattedRelativeDateTimeDataER10UErrorCodeEJS2_S3_EEENS_25FormattedRelativeDateTimeET_S7_DpT0_.exit: ; preds = %bb.b, %.thread27.i, %_ZNK6icu_7825RelativeDateTimeFormatter18formatAbsoluteImplE14UDateDirection17UDateAbsoluteUnitRNS_29FormattedRelativeDateTimeDataER10UErrorCode.exit, %bb.l
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7825RelativeDateTimeFormatter6formatEd21URelativeDateTimeUnitRNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(88) %0, double noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7825RelativeDateTimeFormatter8doFormatIMS0_KFvd21URelativeDateTimeUnitRNS_29FormattedRelativeDateTimeDataER10UErrorCodeEJdS2_EEERNS_13UnicodeStringET_SA_S6_DpT0_(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 ptrtoint (ptr @_ZNK6icu_7825RelativeDateTimeFormatter18formatRelativeImplEd21URelativeDateTimeUnitRNS_29FormattedRelativeDateTimeDataER10UErrorCode to i64), i64 0, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, double noundef %1, i32 noundef %2)
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK6icu_7825RelativeDateTimeFormatter18formatRelativeImplEd21URelativeDateTimeUnitRNS_29FormattedRelativeDateTimeDataER10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, double noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(300) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) #0 align 2 {
bb.a:
  %i.a = load i32, ptr %4, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.ab

bb.b:                                             ; preds = %bb.a
  %i.c = tail call double @llvm.fabs.f64(double %1)
  %or.cond = fcmp olt double %i.c, 2.100000e+00
  br i1 %or.cond, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.d = fmul nnan double %1, 1.000000e+02        ; 2 uses
  %i.e = fcmp olt double %i.d, 0.000000e+00
  %.in.v = select i1 %i.e, double -5.000000e-01, double 5.000000e-01
  %.in = fadd double %i.d, %.in.v
  %i.f = fptosi double %.in to i32
  switch i32 %i.f, label %bb.i [
    i32 -200, label %bb.d
    i32 -100, label %bb.e
    i32 0, label %bb.f
    i32 100, label %bb.g
    i32 200, label %bb.h
  ]

bb.d:                                             ; preds = %bb.c
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  br label %bb.i

bb.f:                                             ; preds = %bb.c
  br label %bb.i

bb.g:                                             ; preds = %bb.c
  br label %bb.i

bb.h:                                             ; preds = %bb.c
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.c, %bb.b
  %i.g = phi i1 [ false, %bb.b ], [ false, %bb.c ], [ false, %bb.d ], [ false, %bb.e ], [ true, %bb.f ], [ false, %bb.g ], [ false, %bb.h ]
  %.not = phi i1 [ true, %bb.b ], [ true, %bb.c ], [ false, %bb.d ], [ false, %bb.e ], [ false, %bb.f ], [ false, %bb.g ], [ false, %bb.h ]
  %.1 = phi i64 [ 6, %bb.b ], [ 6, %bb.c ], [ 0, %bb.d ], [ 1, %bb.e ], [ 2, %bb.f ], [ 3, %bb.g ], [ 4, %bb.h ]
  switch i32 %2, label %.thread [
    i32 0, label %bb.x
    i32 1, label %bb.j
    i32 2, label %bb.k
    i32 3, label %bb.l
    i32 4, label %bb.m
    i32 7, label %bb.n
    i32 8, label %bb.o
    i32 9, label %bb.p
    i32 10, label %bb.q
    i32 11, label %bb.r
    i32 12, label %bb.s
    i32 13, label %bb.t
    i32 14, label %bb.u
    i32 5, label %bb.v
    i32 6, label %bb.w
  ]

bb.j:                                             ; preds = %bb.i
  br label %bb.x

bb.k:                                             ; preds = %bb.i
  br label %bb.x

bb.l:                                             ; preds = %bb.i
  br label %bb.x

bb.m:                                             ; preds = %bb.i
  br label %bb.x

bb.n:                                             ; preds = %bb.i
  br i1 %i.g, label %.thread35, label %.thread

bb.o:                                             ; preds = %bb.i
  br label %bb.x

bb.p:                                             ; preds = %bb.i
  br label %bb.x

bb.q:                                             ; preds = %bb.i
  br label %bb.x

bb.r:                                             ; preds = %bb.i
  br label %bb.x

bb.s:                                             ; preds = %bb.i
  br label %bb.x

bb.t:                                             ; preds = %bb.i
  br label %bb.x

bb.u:                                             ; preds = %bb.i
  br label %bb.x

bb.v:                                             ; preds = %bb.i
  br label %bb.x

bb.w:                                             ; preds = %bb.i
  br label %bb.x

bb.x:                                             ; preds = %bb.i, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.m, %bb.l, %bb.k, %bb.j
  %.0 = phi i64 [ 13, %bb.v ], [ 6, %bb.u ], [ 12, %bb.j ], [ 9, %bb.k ], [ 8, %bb.l ], [ 7, %bb.m ], [ 10, %bb.i ], [ 14, %bb.w ], [ 0, %bb.o ], [ 1, %bb.p ], [ 2, %bb.q ], [ 3, %bb.r ], [ 4, %bb.s ], [ 5, %bb.t ]
  br i1 %.not, label %.thread, label %.thread35

.thread35:                                        ; preds = %bb.n, %bb.x
  %.040 = phi i64 [ %.0, %bb.x ], [ 11, %bb.n ]
  %.239 = phi i64 [ %.1, %bb.x ], [ 5, %bb.n ]
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8              ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load i32, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %invariant.gep.i.i = getelementptr [384 x i8], ptr %i.m, i64 %.040
  %invariant.gep14.i.i = getelementptr [64 x i8], ptr %invariant.gep.i.i, i64 %.239
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 23128
  br label %bb.y

bb.y:                                             ; preds = %bb.z, %.thread35
  %.0.i.i = phi i32 [ %i.l, %.thread35 ], [ %i.t, %bb.z ]
  %i.o = sext i32 %.0.i.i to i64                  ; 2 uses
  %gep15.i.i = getelementptr [5760 x i8], ptr %invariant.gep14.i.i, i64 %i.o ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %gep15.i.i, i64 8
  %i.q = load i16, ptr %i.p, align 8
  %i.r = icmp ugt i16 %i.q, 31
  br i1 %i.r, label %_ZNK6icu_7825RelativeDateTimeFormatter18formatAbsoluteImplE14UDateDirection17UDateAbsoluteUnitRNS_29FormattedRelativeDateTimeDataER10UErrorCode.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.s = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.o
  %i.t = load i32, ptr %i.s, align 4              ; 2 uses
  %.not12.i.i = icmp eq i32 %i.t, -1
  br i1 %.not12.i.i, label %bb.aa, label %bb.y, !llvm.loop !8

bb.aa:                                            ; preds = %bb.z
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 23064
  br label %_ZNK6icu_7825RelativeDateTimeFormatter18formatAbsoluteImplE14UDateDirection17UDateAbsoluteUnitRNS_29FormattedRelativeDateTimeDataER10UErrorCode.exit

_ZNK6icu_7825RelativeDateTimeFormatter18formatAbsoluteImplE14UDateDirection17UDateAbsoluteUnitRNS_29FormattedRelativeDateTimeDataER10UErrorCode.exit: ; preds = %bb.y, %bb.aa
  %.010.i.i = phi ptr [ %i.u, %bb.aa ], [ %gep15.i.i, %bb.y ]
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 140
  %i.w = load i32, ptr %i.v, align 4
  %i.x = tail call noundef i32 @_ZN6icu_7822FormattedStringBuilder6insertEiRKNS_13UnicodeStringENS0_5FieldER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(136) %i.h, i32 noundef %i.w, ptr noundef nonnull align 8 dereferenceable(64) %.010.i.i, i8 64, ptr noundef nonnull align 4 dereferenceable(4) %4) #13 ; 0 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.z = tail call noundef i32 @_ZNK6icu_7822FormattedStringBuilder6lengthEv(ptr noundef nonnull align 8 dereferenceable(136) %i.y) #13
  %.not28 = icmp eq i32 %i.z, 0
  br i1 %.not28, label %.thread, label %bb.ab

.thread:                                          ; preds = %bb.n, %bb.i, %_ZNK6icu_7825RelativeDateTimeFormatter18formatAbsoluteImplE14UDateDirection17UDateAbsoluteUnitRNS_29FormattedRelativeDateTimeDataER10UErrorCode.exit, %bb.x
  tail call void @_ZNK6icu_7825RelativeDateTimeFormatter17formatNumericImplEd21URelativeDateTimeUnitRNS_29FormattedRelativeDateTimeDataER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(88) %0, double noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(300) %3, ptr noundef nonnull align 4 dereferenceable(4) %4)
  br label %bb.ab

bb.ab:                                            ; preds = %.thread, %_ZNK6icu_7825RelativeDateTimeFormatter18formatAbsoluteImplE14UDateDirection17UDateAbsoluteUnitRNS_29FormattedRelativeDateTimeDataER10UErrorCode.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK6icu_7825RelativeDateTimeFormatter13formatToValueEd21URelativeDateTimeUnitR10UErrorCode(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.icu_78::FormattedRelativeDateTime") align 8 captures(none) initializes((0, 20)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %1, double noundef %2, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !noalias !41
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNK6icu_7825RelativeDateTimeFormatter23checkNoAdjustForContextER10UErrorCode.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 16, ptr %4, align 4, !noalias !41
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6icu_7825FormattedRelativeDateTimeE, i64 16), ptr %0, align 8, !alias.scope !41
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.c, align 8, !alias.scope !41
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 16, ptr %i.d, align 8, !alias.scope !41
  br label %_ZNK6icu_7825RelativeDateTimeFormatter15doFormatToValueIMS0_KFvd21URelativeDateTimeUnitRNS_29FormattedRelativeDateTimeDataER10UErrorCodeEJdS2_EEENS_25FormattedRelativeDateTimeET_S6_DpT0_.exit

_ZNK6icu_7825RelativeDateTimeFormatter23checkNoAdjustForContextER10UErrorCode.exit.i: ; preds = %bb.a
  %i.e = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 304) #13, !noalias !41 ; 8 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %_ZN6icu_7812LocalPointerINS_29FormattedRelativeDateTimeDataEEC2EPS1_R10UErrorCode.exit.i

bb.c:                                             ; preds = %_ZNK6icu_7825RelativeDateTimeFormatter23checkNoAdjustForContextER10UErrorCode.exit.i
  %i.g = load i32, ptr %4, align 4, !noalias !41  ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.thread27.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 7, ptr %4, align 4, !noalias !41
  br label %.thread27.i

.thread27.i:                                      ; preds = %bb.d, %bb.c
  %.ph.i = phi i32 [ 7, %bb.d ], [ %i.g, %bb.c ]
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6icu_7825FormattedRelativeDateTimeE, i64 16), ptr %0, align 8, !alias.scope !41
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.i, align 8, !alias.scope !41
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.ph.i, ptr %i.j, align 8, !alias.scope !41
  br label %_ZNK6icu_7825RelativeDateTimeFormatter15doFormatToValueIMS0_KFvd21URelativeDateTimeUnitRNS_29FormattedRelativeDateTimeDataER10UErrorCodeEJdS2_EEENS_25FormattedRelativeDateTimeET_S6_DpT0_.exit

_ZN6icu_7812LocalPointerINS_29FormattedRelativeDateTimeDataEEC2EPS1_R10UErrorCode.exit.i: ; preds = %_ZNK6icu_7825RelativeDateTimeFormatter23checkNoAdjustForContextER10UErrorCode.exit.i
  tail call void @_ZN6icu_7831FormattedValueStringBuilderImplC2ENS_22FormattedStringBuilder5FieldE(ptr noundef nonnull align 8 dereferenceable(300) %i.e, i8 65) #13, !noalias !41
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6icu_7829FormattedRelativeDateTimeDataE, i64 16), ptr %i.e, align 8, !noalias !41
  %.pre.i = load i32, ptr %4, align 4, !noalias !41 ; 2 uses
  %i.k = icmp slt i32 %.pre.i, 1
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN6icu_7812LocalPointerINS_29FormattedRelativeDateTimeDataEEC2EPS1_R10UErrorCode.exit.i
  tail call void @_ZNK6icu_7825RelativeDateTimeFormatter18formatRelativeImplEd21URelativeDateTimeUnitRNS_29FormattedRelativeDateTimeDataER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(88) %1, double noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(300) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %4) #13, !noalias !41, !inline_history !37
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  tail call void @_ZN6icu_7822FormattedStringBuilder15writeTerminatorER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(136) %i.l, ptr noundef nonnull align 4 dereferenceable(4) %4) #13, !noalias !41
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6icu_7825FormattedRelativeDateTimeE, i64 16), ptr %0, align 8, !alias.scope !41
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.m, align 8, !alias.scope !41
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.n, align 8, !alias.scope !41
  br label %_ZNK6icu_7825RelativeDateTimeFormatter15doFormatToValueIMS0_KFvd21URelativeDateTimeUnitRNS_29FormattedRelativeDateTimeDataER10UErrorCodeEJdS2_EEENS_25FormattedRelativeDateTimeET_S6_DpT0_.exit

bb.f:                                             ; preds = %_ZN6icu_7812LocalPointerINS_29FormattedRelativeDateTimeDataEEC2EPS1_R10UErrorCode.exit.i
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6icu_7825FormattedRelativeDateTimeE, i64 16), ptr %0, align 8, !alias.scope !41
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.o, align 8, !alias.scope !41
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.pre.i, ptr %i.p, align 8, !alias.scope !41
  tail call void @_ZN6icu_7831FormattedValueStringBuilderImplD2Ev(ptr noundef nonnull align 8 dead_on_return(300) dereferenceable(300) %i.e) #13, !noalias !41
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull align 8 dereferenceable(300) %i.e) #13, !noalias !41
  br label %_ZNK6icu_7825RelativeDateTimeFormatter15doFormatToValueIMS0_KFvd21URelativeDateTimeUnitRNS_29FormattedRelativeDateTimeDataER10UErrorCodeEJdS2_EEENS_25FormattedRelativeDateTimeET_S6_DpT0_.exit

_ZNK6icu_7825RelativeDateTimeFormatter15doFormatToValueIMS0_KFvd21URelativeDateTimeUnitRNS_29FormattedRelativeDateTimeDataER10UErrorCodeEJdS2_EEENS_25FormattedRelativeDateTimeET_S6_DpT0_.exit: ; preds = %bb.b, %.thread27.i, %bb.e, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7825RelativeDateTimeFormatter18combineDateAndTimeERKNS_13UnicodeStringES3_RS1_R10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 23144
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7815SimpleFormatter6formatERKNS_13UnicodeStringES3_RS1_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) #13
  ret ptr %i.e
}

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7815SimpleFormatter6formatERKNS_13UnicodeStringES3_RS1_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7825RelativeDateTimeFormatter16adjustForContextERNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull returned align 8 dereferenceable(64) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i16, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp slt i16 %i.e, 0
  %i.g = ashr i16 %i.e, 5
  %i.h = sext i16 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.j = load i32, ptr %i.i, align 4
  %i.k = select i1 %i.f, i32 %i.j, i32 %i.h
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = tail call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef 0) #13
  %i.n = tail call signext i8 @u_islower_78(i32 noundef %i.m) #13
  %.not = icmp eq i8 %i.n, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @umtx_lock_78(ptr noundef nonnull @_ZZNK6icu_7825RelativeDateTimeFormatter16adjustForContextERNS_13UnicodeStringEE13gBrkIterMutex) #13
  %i.o = load ptr, ptr %i.a, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.s = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString7toTitleEPNS_13BreakIteratorERKNS_6LocaleEj(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef %i.q, ptr noundef nonnull align 8 dereferenceable(40) %i.r, i32 noundef 768) #13 ; 0 uses
  tail call void @umtx_unlock_78(ptr noundef nonnull @_ZZNK6icu_7825RelativeDateTimeFormatter16adjustForContextERNS_13UnicodeStringEE13gBrkIterMutex) #13
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  ret ptr %1
}

declare signext i8 @u_islower_78(i32 noundef) local_unnamed_addr #4

declare noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString7toTitleEPNS_13BreakIteratorERKNS_6LocaleEj(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef signext range(i8 0, 2) i8 @_ZNK6icu_7825RelativeDateTimeFormatter23checkNoAdjustForContextER10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 16, ptr %1, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i8 [ 0, %bb.b ], [ 1, %bb.a ]
  ret i8 %.0
}

declare noundef ptr @_ZN6icu_7811PluralRules20createSharedInstanceERKNS_6LocaleE11UPluralTypeR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #4

declare noundef ptr @_ZN6icu_7812NumberFormat20createSharedInstanceERKNS_6LocaleE18UNumberFormatStyleR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #4

declare void @_ZN6icu_7819SharedBreakIteratorC1EPNS_13BreakIteratorE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN6icu_7830UFormattedRelativeDateTimeImplC2Ev(ptr noundef nonnull align 8 dereferenceable(48) initializes((0, 4), (16, 20), (24, 44)) %0) unnamed_addr #7 align 2 {
bb.a:
  store i32 1430672896, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_0
