Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/numparse_decimal?download=true
inline.NumInlined: 68
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNK6icu_788numparse4impl14DecimalMatcher5matchERNS_13StringSegmentERNS1_12ParsedNumberEaR10UErrorCode:bb.a
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  call void @_ZN6icu_786number4impl15DecimalQuantityD1Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %5) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  resume { ptr, i32 } %.pn275.pn.pn

bb.fk:                                            ; preds = %bb.a, %bb.fi
  %.1242 = phi i1 [ %.0241, %bb.fi ], [ false, %bb.a ]
  ret i1 %.1242
}

declare noundef zeroext i1 @_ZNK6icu_788numparse4impl12ParsedNumber10seenNumberEv(ptr noundef nonnull align 8 dereferenceable(216)) local_unnamed_addr #1

declare noundef i32 @_ZNK6icu_7813StringSegment9getOffsetEv(ptr noundef nonnull align 8 dereferenceable(17)) local_unnamed_addr #1

declare void @_ZN6icu_786number4impl15DecimalQuantityC1Ev(ptr noundef nonnull align 8 dereferenceable(66)) unnamed_addr #1

declare void @_ZN6icu_7813UnicodeString10setToBogusEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

declare noundef i32 @_ZNK6icu_7813StringSegment6lengthEv(ptr noundef nonnull align 8 dereferenceable(17)) local_unnamed_addr #1

declare noundef i32 @_ZNK6icu_7813StringSegment12getCodePointEv(ptr noundef nonnull align 8 dereferenceable(17)) local_unnamed_addr #1

declare void @_ZN6icu_7813StringSegment12adjustOffsetEi(ptr noundef nonnull align 8 dereferenceable(17), i32 noundef) local_unnamed_addr #1

declare noundef i32 @_ZN6icu_7813StringSegment21getCommonPrefixLengthERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(17), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

declare void @_ZN6icu_786number4impl15DecimalQuantity5clearEv(ptr noundef nonnull align 8 dereferenceable(66)) local_unnamed_addr #1

declare void @_ZN6icu_786number4impl15DecimalQuantity11appendDigitEaib(ptr noundef nonnull align 8 dereferenceable(66), i8 noundef signext, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

declare noundef signext i8 @_ZNK6icu_7810UnicodeSet8containsEi(ptr noundef nonnull align 8 dereferenceable(200), i32 noundef) unnamed_addr #1

declare void @_ZN6icu_7813UnicodeStringC1Ei(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef) unnamed_addr #1

; Function Attrs: nounwind
declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK6icu_788numparse4impl14DecimalMatcher13validateGroupEiib(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !35, !range !44, !noundef !45
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  switch i32 %1, label %bb.i [
    i32 1, label %bb.e
    i32 0, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  br i1 %3, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not = icmp ne i32 %2, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.e = load i16, ptr %i.d, align 2
  %i.f = sext i16 %i.e to i32
  %i.g = icmp sle i32 %2, %i.f
  %i.h = select i1 %.not, i1 %i.g, i1 false
  br label %bb.i

bb.e:                                             ; preds = %bb.b
  br i1 %3, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.j = load i16, ptr %i.i, align 4, !tbaa !38
  %i.k = sext i16 %i.j to i32
  %i.l = icmp eq i32 %2, %i.k
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.n = load i16, ptr %i.m, align 2, !tbaa !39
  %i.o = sext i16 %i.n to i32
  %i.p = icmp eq i32 %2, %i.o
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  %i.q = icmp ne i32 %1, 1
  %i.r = icmp ne i32 %2, 1
  %spec.select = or i1 %i.q, %i.r
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.b, %bb.c, %bb.g, %bb.f, %bb.d
  %.0 = phi i1 [ %spec.select, %bb.h ], [ true, %bb.b ], [ %i.h, %bb.d ], [ %i.l, %bb.f ], [ %i.p, %bb.g ], [ true, %bb.c ]
  ret i1 %.0
}

declare void @_ZN6icu_7813StringSegment9setOffsetEi(ptr noundef nonnull align 8 dereferenceable(17), i32 noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN6icu_786number4impl15DecimalQuantity15adjustMagnitudeEi(ptr noundef nonnull align 8 dereferenceable(66), i32 noundef) local_unnamed_addr #1

declare void @_ZN6icu_786number4impl15DecimalQuantity8truncateEv(ptr noundef nonnull align 8 dereferenceable(66)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK6icu_786number4impl15DecimalQuantity10fitsInLongEb(ptr noundef nonnull align 8 dereferenceable(66), i1 noundef zeroext) local_unnamed_addr #1

declare noundef i64 @_ZNK6icu_786number4impl15DecimalQuantity6toLongEb(ptr noundef nonnull align 8 dereferenceable(66), i1 noundef zeroext) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(66) ptr @_ZN6icu_786number4impl15DecimalQuantityaSERKS2_(ptr noundef nonnull align 8 dereferenceable(66), ptr noundef nonnull align 8 dereferenceable(66)) local_unnamed_addr #1

declare void @_ZN6icu_788numparse4impl12ParsedNumber16setCharsConsumedERKNS_13StringSegmentE(ptr noundef nonnull align 8 dereferenceable(216), ptr noundef nonnull align 8 dereferenceable(17)) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN6icu_786number4impl15DecimalQuantityD1Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK6icu_788numparse4impl14DecimalMatcher9smokeTestERKNS_13StringSegmentE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(17) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 11 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !29   ; 2 uses
  %.not12 = icmp eq ptr %i.d, null
  br i1 %.not12, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noundef zeroext i1 @_ZNK6icu_7813StringSegment10startsWithERKNS_10UnicodeSetE(ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef nonnull align 8 dereferenceable(200) %i.d)
  br label %.loopexit

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !28
  %i.h = tail call noundef zeroext i1 @_ZNK6icu_7813StringSegment10startsWithERKNS_10UnicodeSetE(ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef nonnull align 8 dereferenceable(200) %i.g)
  br i1 %i.h, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = tail call noundef i32 @_ZNK6icu_7813StringSegment12getCodePointEv(ptr noundef nonnull align 8 dereferenceable(17) %1)
  %i.j = tail call signext i8 @u_isdigit_78(i32 noundef %i.i)
  %.not13 = icmp eq i8 %i.j, 0
  br i1 %.not13, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %.not16 = icmp eq ptr %i.k, null
  br i1 %.not16, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.f
  %i.l = tail call noundef zeroext i1 @_ZNK6icu_7813StringSegment10startsWithERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef nonnull align 8 dereferenceable(64) %i.k)
  br i1 %i.l, label %.loopexit, label %.preheader.1

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.o = tail call noundef zeroext i1 @_ZNK6icu_7813StringSegment10startsWithERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef nonnull align 8 dereferenceable(64) %i.n)
  br i1 %i.o, label %.loopexit, label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.1
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 128
  %i.r = tail call noundef zeroext i1 @_ZNK6icu_7813StringSegment10startsWithERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef nonnull align 8 dereferenceable(64) %i.q)
  br i1 %i.r, label %.loopexit, label %.preheader.3

.preheader.3:                                     ; preds = %.preheader.2
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 192
  %i.u = tail call noundef zeroext i1 @_ZNK6icu_7813StringSegment10startsWithERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef nonnull align 8 dereferenceable(64) %i.t)
  br i1 %i.u, label %.loopexit, label %.preheader.4

.preheader.4:                                     ; preds = %.preheader.3
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 256
  %i.x = tail call noundef zeroext i1 @_ZNK6icu_7813StringSegment10startsWithERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef nonnull align 8 dereferenceable(64) %i.w)
  br i1 %i.x, label %.loopexit, label %.preheader.5

.preheader.5:                                     ; preds = %.preheader.4
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 320
  %i.aa = tail call noundef zeroext i1 @_ZNK6icu_7813StringSegment10startsWithERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef nonnull align 8 dereferenceable(64) %i.z)
  br i1 %i.aa, label %.loopexit, label %.preheader.6

.preheader.6:                                     ; preds = %.preheader.5
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 384
  %i.ad = tail call noundef zeroext i1 @_ZNK6icu_7813StringSegment10startsWithERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef nonnull align 8 dereferenceable(64) %i.ac)
  br i1 %i.ad, label %.loopexit, label %.preheader.7

.preheader.7:                                     ; preds = %.preheader.6
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 448
  %i.ag = tail call noundef zeroext i1 @_ZNK6icu_7813StringSegment10startsWithERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef nonnull align 8 dereferenceable(64) %i.af)
  br i1 %i.ag, label %.loopexit, label %.preheader.8

.preheader.8:                                     ; preds = %.preheader.7
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 512
  %i.aj = tail call noundef zeroext i1 @_ZNK6icu_7813StringSegment10startsWithERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef nonnull align 8 dereferenceable(64) %i.ai)
  br i1 %i.aj, label %.loopexit, label %.preheader.9

.preheader.9:                                     ; preds = %.preheader.8
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 576
  %i.am = tail call noundef zeroext i1 @_ZNK6icu_7813StringSegment10startsWithERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef nonnull align 8 dereferenceable(64) %i.al)
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.9, %.preheader.preheader, %.preheader.1, %.preheader.2, %.preheader.3, %.preheader.4, %.preheader.5, %.preheader.6, %.preheader.7, %.preheader.8, %bb.f, %bb.d, %bb.e, %bb.c
  %.1 = phi i1 [ %i.e, %bb.c ], [ true, %bb.e ], [ true, %bb.d ], [ false, %bb.f ], [ true, %.preheader.preheader ], [ true, %.preheader.5 ], [ true, %.preheader.1 ], [ %i.am, %.preheader.9 ], [ true, %.preheader.2 ], [ true, %.preheader.7 ], [ true, %.preheader.3 ], [ true, %.preheader.8 ], [ true, %.preheader.4 ], [ true, %.preheader.6 ]
  ret i1 %.1
}

declare noundef zeroext i1 @_ZNK6icu_7813StringSegment10startsWithERKNS_10UnicodeSetE(ptr noundef nonnull align 8 dereferenceable(17), ptr noundef nonnull align 8 dereferenceable(200)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK6icu_7813StringSegment10startsWithERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(17), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZNK6icu_788numparse4impl14DecimalMatcher8toStringEv(ptr dead_on_unwind noalias nonnull writable sret(%"class.icu_78::UnicodeString") align 8 initializes((0, 10)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 2, ptr %i.a, align 8, !tbaa !10
  %i.b = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendESt17basic_string_viewIDsSt11char_traitsIDsEE(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 9, ptr nonnull @.str)
          to label %_ZN6icu_7813UnicodeStringC2IA10_DsvEERKT_.exit unwind label %bb.b ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_7811ReplaceableD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(64) %0) #9
  resume { ptr, i32 } %i.c

_ZN6icu_7813UnicodeStringC2IA10_DsvEERKT_.exit:   ; preds = %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6icu_788numparse4impl14DecimalMatcherD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN6icu_788numparse4impl14DecimalMatcherE, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN6icu_7810LocalArrayIKNS_13UnicodeStringEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %.loopexit.i, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.b
  %.idx.i = shl nsw i64 %i.e, 6
  %i.g = getelementptr inbounds i8, ptr %i.b, i64 %.idx.i
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.preheader.i
  %i.h = phi ptr [ %i.i, %.preheader.i ], [ %i.g, %.preheader.preheader.i ]
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -64 ; 3 uses
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.i) #9
  %i.j = icmp eq ptr %i.i, %i.b
  br i1 %i.j, label %.loopexit.i, label %.preheader.i

.loopexit.i:                                      ; preds = %.preheader.i, %bb.b
  tail call void @_ZN6icu_787UMemorydaEPv(ptr noundef nonnull %i.d) #9
  br label %_ZN6icu_7810LocalArrayIKNS_13UnicodeStringEED2Ev.exit

_ZN6icu_7810LocalArrayIKNS_13UnicodeStringEED2Ev.exit: ; preds = %bb.a, %.loopexit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !26   ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_ZN6icu_7812LocalPointerIKNS_10UnicodeSetEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN6icu_7810LocalArrayIKNS_13UnicodeStringEED2Ev.exit
  tail call void @_ZN6icu_7810UnicodeSetD1Ev(ptr noundef nonnull align 8 dead_on_return(196) dereferenceable(200) %i.l) #9
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.l) #9
  br label %_ZN6icu_7812LocalPointerIKNS_10UnicodeSetEED2Ev.exit

_ZN6icu_7812LocalPointerIKNS_10UnicodeSetEED2Ev.exit: ; preds = %_ZN6icu_7810LocalArrayIKNS_13UnicodeStringEED2Ev.exit, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !26   ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_ZN6icu_7812LocalPointerIKNS_10UnicodeSetEED2Ev.exit1, label %bb.d

bb.d:                                             ; preds = %_ZN6icu_7812LocalPointerIKNS_10UnicodeSetEED2Ev.exit
  tail call void @_ZN6icu_7810UnicodeSetD1Ev(ptr noundef nonnull align 8 dead_on_return(196) dereferenceable(200) %i.o) #9
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.o) #9
  br label %_ZN6icu_7812LocalPointerIKNS_10UnicodeSetEED2Ev.exit1

_ZN6icu_7812LocalPointerIKNS_10UnicodeSetEED2Ev.exit1: ; preds = %_ZN6icu_7812LocalPointerIKNS_10UnicodeSetEED2Ev.exit, %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !26   ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_ZN6icu_7812LocalPointerIKNS_10UnicodeSetEED2Ev.exit2, label %bb.e

bb.e:                                             ; preds = %_ZN6icu_7812LocalPointerIKNS_10UnicodeSetEED2Ev.exit1
  tail call void @_ZN6icu_7810UnicodeSetD1Ev(ptr noundef nonnull align 8 dead_on_return(196) dereferenceable(200) %i.r) #9
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.r) #9
  br label %_ZN6icu_7812LocalPointerIKNS_10UnicodeSetEED2Ev.exit2

_ZN6icu_7812LocalPointerIKNS_10UnicodeSetEED2Ev.exit2: ; preds = %_ZN6icu_7812LocalPointerIKNS_10UnicodeSetEED2Ev.exit1, %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.t) #9
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.u) #9
  tail call void @_ZN6icu_788numparse4impl18NumberParseMatcherD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #9
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6icu_788numparse4impl14DecimalMatcherD0Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZN6icu_788numparse4impl14DecimalMatcherD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %0) #9
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK6icu_788numparse4impl18NumberParseMatcher10isFlexibleEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNK6icu_788numparse4impl18NumberParseMatcher11postProcessERNS1_12ParsedNumberE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(216) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6icu_7810UnicodeSetD1Ev(ptr noundef nonnull align 8 dead_on_return(196) dereferenceable(200)) unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendESt17basic_string_viewIDsSt11char_traitsIDsEE(ptr noundef nonnull align 8 dereferenceable(64), i64, ptr) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN6icu_7811ReplaceableD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind }

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
!10 = !{!6, !6, i64 0}
!11 = !{!12, !19, i64 144}
!12 = !{!"_ZTSN6icu_788numparse4impl14DecimalMatcherE", !13, i64 0, !14, i64 8, !14, i64 9, !14, i64 10, !15, i64 12, !15, i64 14, !16, i64 16, !16, i64 80, !19, i64 144, !19, i64 152, !19, i64 160, !19, i64 168, !21, i64 176, !21, i64 184, !21, i64 192, !23, i64 200}
!13 = !{!"_ZTSN6icu_788numparse4impl18NumberParseMatcherE"}
!14 = !{!"bool", !6, i64 0}
!15 = !{!"short", !6, i64 0}
!16 = !{!"_ZTSN6icu_7813UnicodeStringE", !17, i64 0, !6, i64 8}
!17 = !{!"_ZTSN6icu_7811ReplaceableE", !18, i64 0}
!18 = !{!"_ZTSN6icu_787UObjectE"}
!19 = !{!"p1 _ZTSN6icu_7810UnicodeSetE", !20, i64 0}
!20 = !{!"any pointer", !6, i64 0}
!21 = !{!"_ZTSN6icu_7812LocalPointerIKNS_10UnicodeSetEEE", !22, i64 0}
!22 = !{!"_ZTSN6icu_7816LocalPointerBaseIKNS_10UnicodeSetEEE", !19, i64 0}
!23 = !{!"_ZTSN6icu_7810LocalArrayIKNS_13UnicodeStringEEE", !24, i64 0}
!24 = !{!"_ZTSN6icu_7816LocalPointerBaseIKNS_13UnicodeStringEEE", !25, i64 0}
!25 = !{!"p1 _ZTSN6icu_7813UnicodeStringE", !20, i64 0}
!26 = !{!22, !19, i64 0}
!27 = !{!12, !19, i64 152}
!28 = !{!12, !19, i64 160}
!29 = !{!12, !19, i64 168}
!30 = !{!31, !5, i64 1928}
!31 = !{!"_ZTSN6icu_7820DecimalFormatSymbolsE", !18, i64 0, !6, i64 8, !16, i64 1864, !5, i64 1928, !32, i64 1936, !32, i64 1976, !32, i64 2016, !33, i64 2056, !6, i64 2064, !6, i64 2256, !6, i64 2448, !6, i64 2449, !6, i64 2450}
!32 = !{!"_ZTSN6icu_786LocaleE", !18, i64 0, !6, i64 8}
!33 = !{!"p1 char16_t", !20, i64 0}
!34 = !{!24, !25, i64 0}
!35 = !{!12, !14, i64 8}
!36 = !{!12, !14, i64 9}
!37 = !{!12, !14, i64 10}
!38 = !{!12, !15, i64 12}
!39 = !{!12, !15, i64 14}
!40 = !{!41, !14, i64 8}
!41 = !{!"_ZTSN6icu_786number4impl15DecimalQuantityE", !42, i64 0, !14, i64 8, !5, i64 12, !5, i64 16, !6, i64 20, !6, i64 21, !43, i64 24, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !6, i64 48, !14, i64 64, !14, i64 65}
!42 = !{!"_ZTSN6icu_7813IFixedDecimalE"}
!43 = !{!"double", !6, i64 0}
!44 = !{i8 0, i8 2}
!45 = !{}
!46 = distinct !{!46, !47}
!47 = !{!"llvm.loop.mustprogress"}
!48 = !{!49, !14, i64 8}
!49 = !{!"_ZTSN6icu_788numparse4impl12ParsedNumberE", !41, i64 0, !5, i64 72, !5, i64 76, !16, i64 80, !16, i64 144, !6, i64 208}
!50 = !{!49, !5, i64 76}
end_hunk_0
