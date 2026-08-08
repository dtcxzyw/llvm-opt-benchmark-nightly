inline.NumInlined: 217
inline.NumDeleted: 75
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK6icu_7828TimeZoneGenericNameMatchInfo13getTimeZoneIDEiRNS_13UnicodeStringE:bb.a
  %i.i = load ptr, ptr %3, align 8, !tbaa !28
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.i) #19, !srcloc !30
  resume { ptr, i32 } %i.h

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN6icu_7813UnicodeString10setToBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %2)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  ret ptr %2
}

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString5setToEaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64), i8 noundef signext, ptr noundef align 8, i32 noundef) local_unnamed_addr #5

declare i32 @__gxx_personality_v0(...)

declare void @_ZN6icu_7813UnicodeString10setToBogusEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6icu_7818GNameSearchHandlerC2Ej(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(28) initializes((0, 12), (16, 28)) %0, i32 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_7818GNameSearchHandlerE, i64 16), ptr %0, align 8, !tbaa !12
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.a, align 8, !tbaa !31
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.b, align 8, !tbaa !34
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.c, align 8, !tbaa !35
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_7818GNameSearchHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) initializes((0, 8)) %0) unnamed_addr #1 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_7818GNameSearchHandlerE, i64 16), ptr %0, align 8, !tbaa !12
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #19
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN6icu_7830TextTrieMapSearchResultHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #19
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6icu_7830TextTrieMapSearchResultHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_7818GNameSearchHandlerD0Ev(ptr noundef nonnull align 8 dereferenceable(28) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN6icu_7818GNameSearchHandlerD1Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %0) #19
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #19
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6icu_787UMemorydlEPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define noundef signext range(i8 0, 2) i8 @_ZN6icu_7818GNameSearchHandler11handleMatchEiPKNS_13CharacterNodeER10UErrorCode(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(28) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %3, align 4, !tbaa !36
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %.thread67

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %2, align 8, !tbaa !38     ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.thread67, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 14 ; 2 uses
  %i.e = load i8, ptr %i.d, align 2, !tbaa !42
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %.lr.ph, label %_ZNK6icu_7813CharacterNode11countValuesEv.exit

_ZNK6icu_7813CharacterNode11countValuesEv.exit:   ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !14   ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph, label %.thread67

.lr.ph:                                           ; preds = %bb.c, %_ZNK6icu_7813CharacterNode11countValuesEv.exit
  %i.i = phi i32 [ %i.g, %_ZNK6icu_7813CharacterNode11countValuesEv.exit ], [ 1, %bb.c ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %.critedge52
  %.03869 = phi i32 [ 0, %.lr.ph ], [ %i.an, %.critedge52 ] ; 2 uses
  %i.m = load i8, ptr %i.d, align 2, !tbaa !42
  %.not.i53 = icmp eq i8 %i.m, 0
  %i.n = load ptr, ptr %2, align 8, !tbaa !38     ; 2 uses
  br i1 %.not.i53, label %_ZNK6icu_7813CharacterNode8getValueEi.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = tail call noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.n, i32 noundef %.03869)
  br label %_ZNK6icu_7813CharacterNode8getValueEi.exit

_ZNK6icu_7813CharacterNode8getValueEi.exit:       ; preds = %bb.d, %bb.e
  %.0.i = phi ptr [ %i.o, %bb.e ], [ %i.n, %bb.d ] ; 3 uses
  %i.p = icmp eq ptr %.0.i, null
  br i1 %i.p, label %.thread67, label %bb.f

bb.f:                                             ; preds = %_ZNK6icu_7813CharacterNode8getValueEi.exit
  %i.q = load i32, ptr %.0.i, align 8, !tbaa !22
  %i.r = load i32, ptr %i.j, align 8, !tbaa !31
  %i.s = and i32 %i.r, %i.q
  %.not48 = icmp eq i32 %i.s, 0
  br i1 %.not48, label %.critedge52, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %i.k, align 8, !tbaa !34
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.v = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 40) #19 ; 6 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN6icu_787UVectorC1EPFvPvEPFa8UElementS4_ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.v, ptr noundef nonnull @uprv_free_78, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %_ZN6icu_7812LocalPointerINS_7UVectorEEC2EPS1_R10UErrorCode.exit unwind label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.x = load i32, ptr %3, align 4
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %.thread67, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 7, ptr %3, align 4, !tbaa !36
  br label %.thread67

_ZN6icu_7812LocalPointerINS_7UVectorEEC2EPS1_R10UErrorCode.exit: ; preds = %bb.i
  %.pre = load i32, ptr %3, align 4, !tbaa !36
  %i.z = icmp slt i32 %.pre, 1
  br i1 %i.z, label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit, label %.critedge

bb.l:                                             ; preds = %bb.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.v) #19
  resume { ptr, i32 } %i.aa

_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit:  ; preds = %_ZN6icu_7812LocalPointerINS_7UVectorEEC2EPS1_R10UErrorCode.exit
  store ptr %i.v, ptr %i.k, align 8, !tbaa !34
  br label %bb.m

bb.m:                                             ; preds = %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit, %bb.g
  %i.ab = tail call noalias dereferenceable_or_null(16) ptr @uprv_malloc_78(i64 noundef 16) #20 ; 5 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 7, ptr %3, align 4, !tbaa !36
  br label %.thread67

bb.o:                                             ; preds = %bb.m
  store ptr %.0.i, ptr %i.ab, align 8, !tbaa !18
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i32 %1, ptr %i.ad, align 8, !tbaa !26
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  store i32 0, ptr %i.ae, align 4, !tbaa !43
  %i.af = load ptr, ptr %i.k, align 8, !tbaa !34
  tail call void @_ZN6icu_787UVector12adoptElementEPvR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.af, ptr noundef nonnull %i.ab, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.ag = load i32, ptr %3, align 4, !tbaa !36
  %i.ah = icmp slt i32 %i.ag, 1
  br i1 %i.ah, label %bb.p, label %.thread67

bb.p:                                             ; preds = %bb.o
  %i.ai = load i32, ptr %i.l, align 8, !tbaa !35
  %i.aj = icmp sgt i32 %1, %i.ai
  br i1 %i.aj, label %bb.q, label %.critedge52

bb.q:                                             ; preds = %bb.p
  store i32 %1, ptr %i.l, align 8, !tbaa !35
  br label %.critedge52

.critedge:                                        ; preds = %_ZN6icu_7812LocalPointerINS_7UVectorEEC2EPS1_R10UErrorCode.exit
  %i.ak = load ptr, ptr %i.v, align 8, !tbaa !12
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  tail call void %i.am(ptr noundef nonnull align 8 dereferenceable(40) %i.v) #19, !inline_history !44
  br label %.thread67

.critedge52:                                      ; preds = %bb.q, %bb.p, %bb.f
  %i.an = add nuw nsw i32 %.03869, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.an, %i.i
  br i1 %exitcond.not, label %.thread67, label %bb.d, !llvm.loop !45

.thread67:                                        ; preds = %_ZNK6icu_7813CharacterNode8getValueEi.exit, %.critedge52, %bb.o, %bb.j, %bb.k, %_ZNK6icu_7813CharacterNode11countValuesEv.exit, %bb.n, %.critedge, %bb.b, %bb.a
  %.7 = phi i8 [ 0, %bb.j ], [ 0, %bb.a ], [ 0, %bb.n ], [ 1, %bb.b ], [ 0, %.critedge ], [ 1, %_ZNK6icu_7813CharacterNode11countValuesEv.exit ], [ 0, %bb.k ], [ 1, %_ZNK6icu_7813CharacterNode8getValueEi.exit ], [ 0, %bb.o ], [ 1, %.critedge52 ]
  ret i8 %.7
}

; Function Attrs: nounwind
declare noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef) local_unnamed_addr #6

declare void @uprv_free_78(ptr noundef) #5

declare void @_ZN6icu_787UVectorC1EPFvPvEPFa8UElementS4_ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef, ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #5

; Function Attrs: allocsize(0)
declare noalias ptr @uprv_malloc_78(i64 noundef) local_unnamed_addr #7

declare void @_ZN6icu_787UVector12adoptElementEPvR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef ptr @_ZN6icu_7818GNameSearchHandler10getMatchesERi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(28) %0, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !35
  store i32 %i.d, ptr %1, align 4, !tbaa !47
  store ptr null, ptr %i.a, align 8, !tbaa !34
  store i32 0, ptr %i.c, align 8, !tbaa !35
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_788TZGNCoreC2ERKNS_6LocaleER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(312) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6icu_788TZGNCoreE, i64 16), ptr %0, align 8, !tbaa !12
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @_ZN6icu_786LocaleC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  invoke void @_ZN6icu_7813UnicodeStringC1EDs(ptr noundef nonnull align 8 dereferenceable(64) %i.d, i16 noundef zeroext 0)
          to label %_ZN6icu_7815SimpleFormatterC2Ev.exit unwind label %bb.e

_ZN6icu_7815SimpleFormatterC2Ev.exit:             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 152
  invoke void @_ZN6icu_7813UnicodeStringC1EDs(ptr noundef nonnull align 8 dereferenceable(64) %i.f, i16 noundef zeroext 0)
          to label %_ZN6icu_7815SimpleFormatterC2Ev.exit14 unwind label %bb.f

_ZN6icu_7815SimpleFormatterC2Ev.exit14:           ; preds = %_ZN6icu_7815SimpleFormatterC2Ev.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr null, ptr %i.g, align 8, !tbaa !48
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  invoke void @_ZN6icu_7812ZNStringPoolC1ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %_ZN6icu_7815SimpleFormatterC2Ev.exit14
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  invoke void @_ZN6icu_7811TextTrieMapC1EaPFvPvE(ptr noundef nonnull align 8 dereferenceable(56) %i.i, i8 noundef signext 1, ptr noundef nonnull @_ZN6icu_78L15deleteGNameInfoEPv)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i8 0, ptr %i.j, align 8, !tbaa !63
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  store ptr null, ptr %i.k, align 8, !tbaa !64
  invoke void @_ZN6icu_788TZGNCore10initializeERKNS_6LocaleER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  ret void

bb.e:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.f:                                             ; preds = %_ZN6icu_7815SimpleFormatterC2Ev.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.g:                                             ; preds = %_ZN6icu_7815SimpleFormatterC2Ev.exit14
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.h:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !64
  tail call void @_ZN6icu_787UMemorydaEPv(ptr noundef %i.q) #19
  tail call void @_ZN6icu_7811TextTrieMapD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.i) #19
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.p, %bb.i ], [ %i.o, %bb.h ]
  tail call void @_ZN6icu_7812ZNStringPoolD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.h) #19
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.j ], [ %i.n, %bb.g ]
  tail call void @_ZN6icu_7815SimpleFormatterD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.e) #19
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.f
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.k ], [ %i.m, %bb.f ]
  tail call void @_ZN6icu_7815SimpleFormatterD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.c) #19
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.e
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.l ], [ %i.l, %bb.e ]
  tail call void @_ZN6icu_786LocaleD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.a) #19
  resume { ptr, i32 } %.pn.pn.pn.pn
}

declare void @_ZN6icu_786LocaleC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #5

declare void @_ZN6icu_7812ZNStringPoolC1ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define internal void @_ZN6icu_78L15deleteGNameInfoEPv(ptr noundef %0) #3 {
bb.a:
  tail call void @uprv_free_78(ptr noundef %0)
  ret void
}

declare void @_ZN6icu_7811TextTrieMapC1EaPFvPvE(ptr noundef nonnull align 8 dereferenceable(56), i8 noundef signext, ptr noundef) unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_788TZGNCore10initializeERKNS_6LocaleER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.icu_78::UnicodeString", align 8 ; 11 uses
  %4 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 4 uses
  %5 = alloca %"class.icu_78::UnicodeString", align 8 ; 11 uses
  %6 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 4 uses
  %i.a = alloca i32, align 4                      ; 12 uses
  %7 = alloca %"class.icu_78::CharString", align 8 ; 10 uses
  %8 = alloca %"class.icu_78::CharString", align 8 ; 14 uses
  %9 = alloca %"class.icu_78::UnicodeString", align 8 ; 7 uses
  %10 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 4 uses
  %i.b = load i32, ptr %2, align 4, !tbaa !36
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.bv

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_ZN6icu_7813TimeZoneNames14createInstanceERKNS_6LocaleER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 4 dereferenceable(4) %2)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !65
  %i.f = load i32, ptr %2, align 4, !tbaa !36
  %i.g = icmp slt i32 %i.f, 1
  br i1 %i.g, label %bb.c, label %bb.bv

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store ptr @_ZN6icu_78L17gDefRegionPatternE, ptr %4, align 8, !tbaa !28
  invoke void @_ZN6icu_7813UnicodeStringC1EaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64) %3, i8 noundef signext 1, ptr noundef nonnull align 8 %4, i32 noundef -1)
          to label %bb.d unwind label %bb.n

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %4, align 8, !tbaa !28
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.h) #19, !srcloc !30
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  store ptr @_ZN6icu_78L19gDefFallbackPatternE, ptr %6, align 8, !tbaa !28
  invoke void @_ZN6icu_7813UnicodeStringC1EaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64) %5, i8 noundef signext 1, ptr noundef nonnull align 8 %6, i32 noundef -1)
          to label %bb.e unwind label %bb.o

bb.e:                                             ; preds = %bb.d
  %i.i = load ptr, ptr %6, align 8, !tbaa !28
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.i) #19, !srcloc !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 0, ptr %i.a, align 4, !tbaa !36
  %i.j = invoke noundef ptr @_ZNK6icu_786Locale7getNameEv(ptr noundef nonnull align 8 dereferenceable(40) %1)
          to label %bb.f unwind label %bb.p

bb.f:                                             ; preds = %bb.e
  %i.k = invoke ptr @ures_open_78(ptr noundef nonnull @.str, ptr noundef %i.j, ptr noundef nonnull %i.a)
          to label %bb.g unwind label %bb.p       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.l = invoke ptr @ures_getByKeyWithFallback_78(ptr noundef %i.k, ptr noundef nonnull @_ZN6icu_78L12gZoneStringsE, ptr noundef %i.k, ptr noundef nonnull %i.a)
          to label %bb.h unwind label %bb.p       ; 3 uses

bb.h:                                             ; preds = %bb.g
  %i.m = load i32, ptr %i.a, align 4, !tbaa !36
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %_ZN6icu_7813UnicodeString5setToEPKDsi.exit89, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = invoke ptr @ures_getStringByKeyWithFallback_78(ptr noundef %i.l, ptr noundef nonnull @_ZN6icu_78L16gRegionFormatTagE, ptr noundef null, ptr noundef nonnull %i.a)
          to label %bb.j unwind label %bb.q       ; 2 uses

bb.j:                                             ; preds = %bb.i
  %i.p = load i32, ptr %i.a, align 4, !tbaa !36
end_hunk_0
