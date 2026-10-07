Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/messageformat2_data_model?download=true
inline.NumInlined: 1384
inline.NumDeleted: 790
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZNK6icu_788message210data_model7LiteraleqERKS2_:bb.a
  br label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit

_ZNK6icu_7813UnicodeStringeqERKS0_.exit:          ; preds = %bb.b, %bb.c, %bb.d
  %.0.i = phi i1 [ %i.g, %bb.b ], [ %i.ad, %bb.d ], [ false, %bb.c ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK6icu_788message210data_model7Literal6quotedEv(ptr dead_on_unwind noalias nonnull writable sret(%"class.icu_78::UnicodeString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN6icu_7813UnicodeStringC1Ei(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef 124) #13
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load i16, ptr %i.b, align 8              ; 2 uses
  %i.d = icmp slt i16 %i.c, 0
  %i.e = ashr i16 %i.c, 5
  %i.f = sext i16 %i.e to i32
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.h = load i32, ptr %i.g, align 4
  %i.i = select i1 %i.d, i32 %i.h, i32 %i.f
  %i.j = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i32 noundef 0, i32 noundef %i.i) #13 ; 0 uses
  %i.k = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString6appendEi(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef 124) #13 ; 0 uses
  ret void
}

declare void @_ZN6icu_7813UnicodeStringC1Ei(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef) unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_788message210data_model7Literal8unquotedEv(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(80) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  ret ptr %i.a
}

; Function Attrs: nounwind
declare void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(80) ptr @_ZN6icu_788message210data_model7LiteralaSES2_(ptr noundef nonnull returned align 8 dereferenceable(80) %0, ptr noundef align 8 %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i8, ptr %i.a, align 8, !range !17, !noundef !18
  %i.d = load i8, ptr %i.b, align 8, !range !17, !noundef !18
  store i8 %i.d, ptr %i.a, align 8
  store i8 %i.c, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @_ZN6icu_7813UnicodeString4swapERS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %i.f) #13
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_788message210data_model7LiteralD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) initializes((0, 9)) %0) unnamed_addr #1 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model7LiteralE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.b) #13
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_788message210data_model7LiteralD0Ev(ptr noundef nonnull align 8 dereferenceable(80) initializes((0, 9)) %0) unnamed_addr #1 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model7LiteralE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.b) #13, !inline_history !25
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(80) %0) #13, !inline_history !25
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_788message210data_model7OperandC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(104) initializes((0, 8), (96, 97)) %0, ptr noundef nonnull align 8 dereferenceable(104) %1) unnamed_addr #1 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6icu_788message210data_model7OperandE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  store i8 0, ptr %i.d, align 8
  %i.e = load i8, ptr %i.c, align 8, !range !17, !noundef !18
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %_ZNSt8optionalISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEEEC2ERKS7_.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store i8 -1, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.i = load i8, ptr %i.h, align 8
  switch i8 %i.i, label %bb.e [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 -1, label %_ZNSt22_Optional_payload_baseISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEEE12_M_constructIJRKS6_EEEvDpOT_.exit.i.i.i.i.i
  ]

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(96) %i.b) #13
  br label %_ZNSt22_Optional_payload_baseISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEEE12_M_constructIJRKS6_EEEvDpOT_.exit.i.i.i.i.i

bb.d:                                             ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model7LiteralE, i64 16), ptr %i.a, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load i8, ptr %i.k, align 8, !range !17, !noundef !18
  store i8 %i.l, ptr %i.j, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.m, ptr noundef nonnull align 8 dereferenceable(64) %i.n) #13
  br label %_ZNSt22_Optional_payload_baseISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEEE12_M_constructIJRKS6_EEEvDpOT_.exit.i.i.i.i.i

bb.e:                                             ; preds = %bb.b
  unreachable

_ZNSt22_Optional_payload_baseISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEEE12_M_constructIJRKS6_EEEvDpOT_.exit.i.i.i.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.o = load i8, ptr %i.h, align 8
  store i8 %i.o, ptr %i.g, align 8
  store i8 1, ptr %i.d, align 8
  br label %_ZNSt8optionalISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEEEC2ERKS7_.exit

_ZNSt8optionalISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEEEC2ERKS7_.exit: ; preds = %bb.a, %_ZNSt22_Optional_payload_baseISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEEE12_M_constructIJRKS6_EEEvDpOT_.exit.i.i.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(104) ptr @_ZN6icu_788message210data_model7OperandaSES2_(ptr noundef nonnull returned align 8 dereferenceable(104) %0, ptr noundef align 8 %1) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZNSt8optionalISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEEE4swapERS7_(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(96) %i.b)
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef signext range(i8 0, 2) i8 @_ZNK6icu_788message210data_model7Operand10isVariableEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load i8, ptr %i.a, align 8, !range !17, !noundef !18
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load i8, ptr %i.d, align 8
  %i.f = icmp eq i8 %i.e, 0
  %narrow = select i1 %i.c, i1 %i.f, i1 false
  %i.g = zext i1 %narrow to i8
  ret i8 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef signext range(i8 0, 2) i8 @_ZNK6icu_788message210data_model7Operand9isLiteralEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load i8, ptr %i.a, align 8, !range !17, !noundef !18
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load i8, ptr %i.d, align 8
  %i.f = icmp eq i8 %i.e, 1
  %narrow = select i1 %i.c, i1 %i.f, i1 false
  %i.g = zext i1 %narrow to i8
  ret i8 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef signext range(i8 0, 2) i8 @_ZNK6icu_788message210data_model7Operand6isNullEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load i8, ptr %i.a, align 8, !range !17, !noundef !18
  %i.c = xor i8 %i.b, 1
  ret i8 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(80) ptr @_ZNK6icu_788message210data_model7Operand9asLiteralEv(ptr nofree noundef nonnull readonly align 8 captures(ret: address, provenance) dereferenceable(104) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_788message210data_model7Operand10asVariableEv(ptr nofree noundef nonnull readonly align 8 captures(ret: address, provenance) dereferenceable(104) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_788message210data_model7OperandD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) initializes((0, 8)) %0) unnamed_addr #1 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6icu_788message210data_model7OperandE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !range !17, !noundef !18
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load i8, ptr %i.d, align 8
  %.not.i.i.i.i.i.i = icmp ne i8 %i.e, -1
  %or.cond.not.i.i.i = select i1 %i.c, i1 %.not.i.i.i.i.i.i, i1 false
  br i1 %or.cond.not.i.i.i, label %bb.b, label %_ZNSt14_Optional_baseISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEELb0ELb0EED2Ev.exit, !prof !26

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(96) %i.f) #13, !inline_history !49
  br label %_ZNSt14_Optional_baseISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEELb0ELb0EED2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_788message210data_model7OperandD0Ev(ptr noundef nonnull align 8 dereferenceable(104) initializes((0, 8)) %0) unnamed_addr #1 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6icu_788message210data_model7OperandE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !range !17, !noundef !18
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load i8, ptr %i.d, align 8
  %.not.i.i.i.i.i.i.i = icmp ne i8 %i.e, -1
  %or.cond.not.i.i.i.i = select i1 %i.c, i1 %.not.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.not.i.i.i.i, label %bb.b, label %_ZN6icu_788message210data_model7OperandD2Ev.exit, !prof !26

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(96) %i.f) #13, !inline_history !1
  br label %_ZN6icu_788message210data_model7OperandD2Ev.exit

_ZN6icu_788message210data_model7OperandD2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(104) %0) #13, !inline_history !27
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(96) ptr @_ZN6icu_788message210data_model3KeyaSES2_(ptr noundef nonnull returned align 8 dereferenceable(96) %0, ptr noundef align 8 %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZNSt8optionalIN6icu_788message210data_model7LiteralEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(88) %i.b)
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(80) ptr @_ZNK6icu_788message210data_model3Key9asLiteralEv(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(96) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_788message210data_model3KeyD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) initializes((0, 8)) %0) unnamed_addr #1 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model3KeyE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !range !17, !noundef !18
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8
  br i1 %i.c, label %bb.b, label %_ZNSt14_Optional_baseIN6icu_788message210data_model7LiteralELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model7LiteralE, i64 16), ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.f) #13, !inline_history !25
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(88) %i.d) #13, !inline_history !25
  br label %_ZNSt14_Optional_baseIN6icu_788message210data_model7LiteralELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN6icu_788message210data_model7LiteralELb0ELb0EED2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_788message210data_model3KeyD0Ev(ptr noundef nonnull align 8 dereferenceable(96) initializes((0, 8)) %0) unnamed_addr #1 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model3KeyE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !range !17, !noundef !18
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8
  br i1 %i.c, label %bb.b, label %_ZN6icu_788message210data_model3KeyD2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model7LiteralE, i64 16), ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.f) #13, !inline_history !20
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(88) %i.d) #13, !inline_history !20
  br label %_ZN6icu_788message210data_model3KeyD2Ev.exit

_ZN6icu_788message210data_model3KeyD2Ev.exit:     ; preds = %bb.a, %bb.b
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(96) %0) #13, !inline_history !21
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_788message210data_model9OptionMapC2ERKNS_7UVectorER10UErrorCode(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(28) initializes((0, 9), (16, 28)) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2) unnamed_addr #1 align 2 {
bb.a:
  %3 = alloca %"class.icu_78::message2::data_model::Option", align 8 ; 13 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model9OptionMapE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i8 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr null, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i32, ptr %i.d, align 8              ; 5 uses
  store i32 %i.e, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.f = load i32, ptr %2, align 4
  %i.g = icmp slt i32 %i.f, 1
  br i1 %i.g, label %bb.b, label %_ZN6icu_788message2L17copyVectorToArrayINS0_10data_model6OptionEEEPT_RKNS_7UVectorER10UErrorCode.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.h = sext i32 %i.e to i64                     ; 3 uses
  %i.i = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.h, i64 176) ; 2 uses
  %i.j = extractvalue { i64, i1 } %i.i, 1
  %i.k = extractvalue { i64, i1 } %i.i, 0
  %i.l = or disjoint i64 %i.k, 8
  %i.m = select i1 %i.j, i64 -1, i64 %i.l
  %i.n = tail call noundef ptr @_ZN6icu_787UMemorynaEm(i64 noundef %i.m) #13 ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 %i.h, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 4 uses
  %i.q = icmp eq i32 %i.e, 0
  br i1 %i.q, label %_ZN6icu_788message2L17copyVectorToArrayINS0_10data_model6OptionEEEPT_RKNS_7UVectorER10UErrorCode.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds [176 x i8], ptr %i.p, i64 %i.h
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %i.s = phi ptr [ %i.p, %bb.d ], [ %i.w, %bb.e ] ; 5 uses
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model6OptionE, i64 16), ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16)>, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i16 2, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6icu_788message210data_model7OperandE, i64 16), ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 168
  store i8 0, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 176 ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.r
  br i1 %i.x, label %.loopexit17.i, label %bb.e

.loopexit17.i:                                    ; preds = %bb.e
  %i.y = icmp sgt i32 %i.e, 0
  br i1 %i.y, label %.lr.ph.i, label %_ZN6icu_788message2L17copyVectorToArrayINS0_10data_model6OptionEEEPT_RKNS_7UVectorER10UErrorCode.exit

.lr.ph.i:                                         ; preds = %.loopexit17.i
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 168 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 160 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 96
  %wide.trip.count.i = zext nneg i32 %i.e to i64
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  store i32 7, ptr %2, align 4
  br label %_ZN6icu_788message2L17copyVectorToArrayINS0_10data_model6OptionEEEPT_RKNS_7UVectorER10UErrorCode.exit.thread

bb.g:                                             ; preds = %_ZN6icu_788message210data_model6OptionD2Ev.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZN6icu_788message210data_model6OptionD2Ev.exit.i ] ; 3 uses
  %i.ag = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.ah = call noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %i.ag) #13 ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model6OptionE, i64 16), ptr %3, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.z, ptr noundef nonnull align 8 dereferenceable(64) %i.ai) #13
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6icu_788message210data_model7OperandE, i64 16), ptr %i.aa, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 80
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 168
  store i8 0, ptr %i.ac, align 8
  %i.al = load i8, ptr %i.ak, align 8, !range !17, !noundef !18
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.h, label %_ZN6icu_788message210data_model6OptionC2ERKS2_.exit.i

bb.h:                                             ; preds = %bb.g
  store i8 -1, ptr %i.ad, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 160 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 8
  switch i8 %i.ao, label %bb.k [
    i8 0, label %bb.i
    i8 1, label %bb.j
    i8 -1, label %_ZNSt22_Optional_payload_baseISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEEE12_M_constructIJRKS6_EEEvDpOT_.exit.i.i.i.i.i.i.i.i
  ]

bb.i:                                             ; preds = %bb.h
  call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(96) %i.ab, ptr noundef nonnull align 8 dereferenceable(96) %i.aj) #13
  br label %_ZNSt22_Optional_payload_baseISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEEE12_M_constructIJRKS6_EEEvDpOT_.exit.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model7LiteralE, i64 16), ptr %i.ab, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 88
  %i.aq = load i8, ptr %i.ap, align 8, !range !17, !noundef !18
  store i8 %i.aq, ptr %i.ae, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ah, i64 96
  call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.af, ptr noundef nonnull align 8 dereferenceable(64) %i.ar) #13
  br label %_ZNSt22_Optional_payload_baseISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEEE12_M_constructIJRKS6_EEEvDpOT_.exit.i.i.i.i.i.i.i.i

bb.k:                                             ; preds = %bb.h
  unreachable

_ZNSt22_Optional_payload_baseISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEEE12_M_constructIJRKS6_EEEvDpOT_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.j, %bb.i, %bb.h
  %i.as = load i8, ptr %i.an, align 8
  store i8 %i.as, ptr %i.ad, align 8
  store i8 1, ptr %i.ac, align 8
  br label %_ZN6icu_788message210data_model6OptionC2ERKS2_.exit.i

_ZN6icu_788message210data_model6OptionC2ERKS2_.exit.i: ; preds = %_ZNSt22_Optional_payload_baseISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEEE12_M_constructIJRKS6_EEEvDpOT_.exit.i.i.i.i.i.i.i.i, %bb.g
  %i.at = getelementptr inbounds nuw [176 x i8], ptr %i.p, i64 %indvars.iv.i ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  call void @_ZN6icu_7813UnicodeString4swapERS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.au, ptr noundef nonnull align 8 dereferenceable(64) %i.z) #13
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 80
  call void @_ZNSt8optionalISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEEE4swapERS7_(ptr noundef nonnull align 8 dereferenceable(96) %i.av, ptr noundef nonnull align 8 dereferenceable(96) %i.ab)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model6OptionE, i64 16), ptr %3, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6icu_788message210data_model7OperandE, i64 16), ptr %i.aa, align 8
  %i.aw = load i8, ptr %i.ac, align 8, !range !17, !noundef !18
  %i.ax = trunc nuw i8 %i.aw to i1
  store i8 0, ptr %i.ac, align 8
  %i.ay = load i8, ptr %i.ad, align 8
  %.not.i.i.i.i.i.i.i.i.i = icmp ne i8 %i.ay, -1
  %or.cond.not.i.i.i.i.i.i = select i1 %i.ax, i1 %.not.i.i.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.not.i.i.i.i.i.i, label %bb.l, label %_ZN6icu_788message210data_model6OptionD2Ev.exit.i, !prof !26

bb.l:                                             ; preds = %_ZN6icu_788message210data_model6OptionC2ERKS2_.exit.i
  %i.az = load ptr, ptr %i.ab, align 8
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(96) %i.ab) #13, !inline_history !50
  br label %_ZN6icu_788message210data_model6OptionD2Ev.exit.i

_ZN6icu_788message210data_model6OptionD2Ev.exit.i: ; preds = %bb.l, %_ZN6icu_788message210data_model6OptionC2ERKS2_.exit.i
  call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(104) %i.aa) #13, !inline_history !28
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.z) #13, !inline_history !29
  call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(176) %3) #13, !inline_history !29
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN6icu_788message2L17copyVectorToArrayINS0_10data_model6OptionEEEPT_RKNS_7UVectorER10UErrorCode.exit, label %bb.g, !llvm.loop !51

_ZN6icu_788message2L17copyVectorToArrayINS0_10data_model6OptionEEEPT_RKNS_7UVectorER10UErrorCode.exit.thread: ; preds = %bb.a, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.p

_ZN6icu_788message2L17copyVectorToArrayINS0_10data_model6OptionEEEPT_RKNS_7UVectorER10UErrorCode.exit: ; preds = %_ZN6icu_788message210data_model6OptionD2Ev.exit.i, %bb.c, %.loopexit17.i
  %.pr = load i32, ptr %2, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.bb = icmp slt i32 %.pr, 1
  br i1 %i.bb, label %bb.m, label %bb.p

bb.m:                                             ; preds = %_ZN6icu_788message2L17copyVectorToArrayINS0_10data_model6OptionEEEPT_RKNS_7UVectorER10UErrorCode.exit
  %i.bc = load ptr, ptr %i.b, align 8             ; 4 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %_ZN6icu_7810LocalArrayINS_8message210data_model6OptionEE12adoptInsteadEPS3_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.be = getelementptr inbounds i8, ptr %i.bc, i64 -8 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8            ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %.loopexit.i, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.n
  %.idx.i = mul nsw i64 %i.bf, 176
  %i.bh = getelementptr inbounds i8, ptr %i.bc, i64 %.idx.i
  br label %.preheader.i

.preheader.i:                                     ; preds = %_ZN6icu_788message210data_model6OptionD2Ev.exit.i8, %.preheader.preheader.i
  %i.bi = phi ptr [ %i.bj, %_ZN6icu_788message210data_model6OptionD2Ev.exit.i8 ], [ %i.bh, %.preheader.preheader.i ] ; 6 uses
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -176 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model6OptionE, i64 16), ptr %i.bj, align 8
  %i.bk = getelementptr inbounds i8, ptr %i.bi, i64 -104 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6icu_788message210data_model7OperandE, i64 16), ptr %i.bk, align 8
  %i.bl = getelementptr inbounds i8, ptr %i.bi, i64 -8 ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 8, !range !17, !noundef !18
  %i.bn = trunc nuw i8 %i.bm to i1
  store i8 0, ptr %i.bl, align 8
  %i.bo = getelementptr inbounds i8, ptr %i.bi, i64 -16
  %i.bp = load i8, ptr %i.bo, align 8
  %.not.i.i.i.i.i.i.i.i.i6 = icmp ne i8 %i.bp, -1
  %or.cond.not.i.i.i.i.i.i7 = select i1 %i.bn, i1 %.not.i.i.i.i.i.i.i.i.i6, i1 false
  br i1 %or.cond.not.i.i.i.i.i.i7, label %bb.o, label %_ZN6icu_788message210data_model6OptionD2Ev.exit.i8, !prof !26

bb.o:                                             ; preds = %.preheader.i
  %i.bq = getelementptr inbounds i8, ptr %i.bi, i64 -96 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = load ptr, ptr %i.br, align 8
  call void %i.bs(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(96) %i.bq) #13, !inline_history !2
  br label %_ZN6icu_788message210data_model6OptionD2Ev.exit.i8

_ZN6icu_788message210data_model6OptionD2Ev.exit.i8: ; preds = %bb.o, %.preheader.i
  call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(104) %i.bk) #13, !inline_history !28
  %i.bt = getelementptr inbounds i8, ptr %i.bi, i64 -168
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.bt) #13, !inline_history !29
  call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(176) %i.bj) #13, !inline_history !29
  %i.bu = icmp eq ptr %i.bj, %i.bc
  br i1 %i.bu, label %.loopexit.i, label %.preheader.i

.loopexit.i:                                      ; preds = %_ZN6icu_788message210data_model6OptionD2Ev.exit.i8, %bb.n
  call void @_ZN6icu_787UMemorydaEPv(ptr noundef nonnull %i.be) #13
  br label %_ZN6icu_7810LocalArrayINS_8message210data_model6OptionEE12adoptInsteadEPS3_.exit

_ZN6icu_7810LocalArrayINS_8message210data_model6OptionEE12adoptInsteadEPS3_.exit: ; preds = %bb.m, %.loopexit.i
  store ptr %i.p, ptr %i.b, align 8
  br label %bb.p

bb.p:                                             ; preds = %_ZN6icu_788message2L17copyVectorToArrayINS0_10data_model6OptionEEEPT_RKNS_7UVectorER10UErrorCode.exit.thread, %_ZN6icu_788message2L17copyVectorToArrayINS0_10data_model6OptionEEEPT_RKNS_7UVectorER10UErrorCode.exit, %_ZN6icu_7810LocalArrayINS_8message210data_model6OptionEE12adoptInsteadEPS3_.exit
  %storemerge = phi i8 [ 0, %_ZN6icu_7810LocalArrayINS_8message210data_model6OptionEE12adoptInsteadEPS3_.exit ], [ 1, %_ZN6icu_788message2L17copyVectorToArrayINS0_10data_model6OptionEEEPT_RKNS_7UVectorER10UErrorCode.exit ], [ 1, %_ZN6icu_788message2L17copyVectorToArrayINS0_10data_model6OptionEEEPT_RKNS_7UVectorER10UErrorCode.exit.thread ]
  store i8 %storemerge, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_788message210data_model9OptionMapC2ERKS2_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(28) initializes((0, 9), (16, 28)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(28) %1) unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.icu_78::message2::data_model::Option", align 8 ; 13 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model9OptionMapE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i8 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr null, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i32, ptr %i.d, align 8              ; 5 uses
  store i32 %i.e, ptr %i.c, align 8
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.a, align 8
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.i = sext i32 %i.e to i64                     ; 3 uses
  %i.j = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.i, i64 176) ; 2 uses
  %i.k = extractvalue { i64, i1 } %i.j, 1
  %i.l = extractvalue { i64, i1 } %i.j, 0
  %i.m = or disjoint i64 %i.l, 8
  %i.n = select i1 %i.k, i64 -1, i64 %i.m
  %i.o = tail call noundef ptr @_ZN6icu_787UMemorynaEm(i64 noundef %i.n) #13 ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 %i.i, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 4 uses
  %i.r = getelementptr inbounds [176 x i8], ptr %i.q, i64 %i.i
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %i.s = phi ptr [ %i.q, %bb.d ], [ %i.w, %bb.e ] ; 5 uses
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model6OptionE, i64 16), ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16)>, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i16 2, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6icu_788message210data_model7OperandE, i64 16), ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 168
  store i8 0, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 176 ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.r
  br i1 %i.x, label %.loopexit16.i, label %bb.e

.loopexit16.i:                                    ; preds = %bb.e
  %i.y = icmp sgt i32 %i.e, 0
  br i1 %i.y, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %.loopexit16.i
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 168 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 160 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 96
  %wide.trip.count.i = zext nneg i32 %i.e to i64
  br label %bb.f

bb.f:                                             ; preds = %_ZN6icu_788message210data_model6OptionD2Ev.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZN6icu_788message210data_model6OptionD2Ev.exit.i ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [176 x i8], ptr %i.h, i64 %indvars.iv.i ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model6OptionE, i64 16), ptr %2, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.z, ptr noundef nonnull align 8 dereferenceable(64) %i.ah) #13
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6icu_788message210data_model7OperandE, i64 16), ptr %i.aa, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 80
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 168
  store i8 0, ptr %i.ac, align 8
  %i.ak = load i8, ptr %i.aj, align 8, !range !17, !noundef !18
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.g, label %_ZN6icu_788message210data_model6OptionC2ERKS2_.exit.i

bb.g:                                             ; preds = %bb.f
  store i8 -1, ptr %i.ad, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 160 ; 2 uses
  %i.an = load i8, ptr %i.am, align 8
  switch i8 %i.an, label %bb.j [
    i8 0, label %bb.h
    i8 1, label %bb.i
    i8 -1, label %_ZNSt22_Optional_payload_baseISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEEE12_M_constructIJRKS6_EEEvDpOT_.exit.i.i.i.i.i.i.i.i
  ]

bb.h:                                             ; preds = %bb.g
  call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(96) %i.ab, ptr noundef nonnull align 8 dereferenceable(96) %i.ai) #13
  br label %_ZNSt22_Optional_payload_baseISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEEE12_M_constructIJRKS6_EEEvDpOT_.exit.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model7LiteralE, i64 16), ptr %i.ab, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 88
  %i.ap = load i8, ptr %i.ao, align 8, !range !17, !noundef !18
  store i8 %i.ap, ptr %i.ae, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ag, i64 96
  call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.af, ptr noundef nonnull align 8 dereferenceable(64) %i.aq) #13
  br label %_ZNSt22_Optional_payload_baseISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEEE12_M_constructIJRKS6_EEEvDpOT_.exit.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.g
  unreachable

_ZNSt22_Optional_payload_baseISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEEE12_M_constructIJRKS6_EEEvDpOT_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.i, %bb.h, %bb.g
  %i.ar = load i8, ptr %i.am, align 8
  store i8 %i.ar, ptr %i.ad, align 8
  store i8 1, ptr %i.ac, align 8
  br label %_ZN6icu_788message210data_model6OptionC2ERKS2_.exit.i

_ZN6icu_788message210data_model6OptionC2ERKS2_.exit.i: ; preds = %_ZNSt22_Optional_payload_baseISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEEE12_M_constructIJRKS6_EEEvDpOT_.exit.i.i.i.i.i.i.i.i, %bb.f
  %i.as = getelementptr inbounds nuw [176 x i8], ptr %i.q, i64 %indvars.iv.i ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  call void @_ZN6icu_7813UnicodeString4swapERS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.at, ptr noundef nonnull align 8 dereferenceable(64) %i.z) #13
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 80
  call void @_ZNSt8optionalISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEEE4swapERS7_(ptr noundef nonnull align 8 dereferenceable(96) %i.au, ptr noundef nonnull align 8 dereferenceable(96) %i.ab)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model6OptionE, i64 16), ptr %2, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6icu_788message210data_model7OperandE, i64 16), ptr %i.aa, align 8
  %i.av = load i8, ptr %i.ac, align 8, !range !17, !noundef !18
  %i.aw = trunc nuw i8 %i.av to i1
  store i8 0, ptr %i.ac, align 8
  %i.ax = load i8, ptr %i.ad, align 8
  %.not.i.i.i.i.i.i.i.i.i = icmp ne i8 %i.ax, -1
  %or.cond.not.i.i.i.i.i.i = select i1 %i.aw, i1 %.not.i.i.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.not.i.i.i.i.i.i, label %bb.k, label %_ZN6icu_788message210data_model6OptionD2Ev.exit.i, !prof !26

bb.k:                                             ; preds = %_ZN6icu_788message210data_model6OptionC2ERKS2_.exit.i
  %i.ay = load ptr, ptr %i.ab, align 8
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(96) %i.ab) #13, !inline_history !52
  br label %_ZN6icu_788message210data_model6OptionD2Ev.exit.i

_ZN6icu_788message210data_model6OptionD2Ev.exit.i: ; preds = %bb.k, %_ZN6icu_788message210data_model6OptionC2ERKS2_.exit.i
  call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(104) %i.aa) #13, !inline_history !28
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.z) #13, !inline_history !29
  call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(176) %2) #13, !inline_history !29
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit, label %bb.f, !llvm.loop !53

bb.l:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  store i8 1, ptr %i.a, align 8
  br label %bb.o

.loopexit:                                        ; preds = %_ZN6icu_788message210data_model6OptionD2Ev.exit.i, %.loopexit16.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  store i8 0, ptr %i.a, align 8
  %i.ba = load ptr, ptr %i.b, align 8             ; 4 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %_ZN6icu_7810LocalArrayINS_8message210data_model6OptionEE12adoptInsteadEPS3_.exit, label %bb.m

bb.m:                                             ; preds = %.loopexit
  %i.bc = getelementptr inbounds i8, ptr %i.ba, i64 -8 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8            ; 2 uses
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %.loopexit.i, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.m
  %.idx.i = mul nsw i64 %i.bd, 176
  %i.bf = getelementptr inbounds i8, ptr %i.ba, i64 %.idx.i
  br label %.preheader.i

.preheader.i:                                     ; preds = %_ZN6icu_788message210data_model6OptionD2Ev.exit.i6, %.preheader.preheader.i
  %i.bg = phi ptr [ %i.bh, %_ZN6icu_788message210data_model6OptionD2Ev.exit.i6 ], [ %i.bf, %.preheader.preheader.i ] ; 6 uses
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 -176 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model6OptionE, i64 16), ptr %i.bh, align 8
  %i.bi = getelementptr inbounds i8, ptr %i.bg, i64 -104 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6icu_788message210data_model7OperandE, i64 16), ptr %i.bi, align 8
  %i.bj = getelementptr inbounds i8, ptr %i.bg, i64 -8 ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 8, !range !17, !noundef !18
  %i.bl = trunc nuw i8 %i.bk to i1
  store i8 0, ptr %i.bj, align 8
  %i.bm = getelementptr inbounds i8, ptr %i.bg, i64 -16
  %i.bn = load i8, ptr %i.bm, align 8
  %.not.i.i.i.i.i.i.i.i.i4 = icmp ne i8 %i.bn, -1
  %or.cond.not.i.i.i.i.i.i5 = select i1 %i.bl, i1 %.not.i.i.i.i.i.i.i.i.i4, i1 false
  br i1 %or.cond.not.i.i.i.i.i.i5, label %bb.n, label %_ZN6icu_788message210data_model6OptionD2Ev.exit.i6, !prof !26

bb.n:                                             ; preds = %.preheader.i
  %i.bo = getelementptr inbounds i8, ptr %i.bg, i64 -96 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = load ptr, ptr %i.bp, align 8
  call void %i.bq(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(96) %i.bo) #13, !inline_history !2
  br label %_ZN6icu_788message210data_model6OptionD2Ev.exit.i6

_ZN6icu_788message210data_model6OptionD2Ev.exit.i6: ; preds = %bb.n, %.preheader.i
  call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(104) %i.bi) #13, !inline_history !28
  %i.br = getelementptr inbounds i8, ptr %i.bg, i64 -168
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.br) #13, !inline_history !29
  call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(176) %i.bh) #13, !inline_history !29
  %i.bs = icmp eq ptr %i.bh, %i.ba
  br i1 %i.bs, label %.loopexit.i, label %.preheader.i

.loopexit.i:                                      ; preds = %_ZN6icu_788message210data_model6OptionD2Ev.exit.i6, %bb.m
  call void @_ZN6icu_787UMemorydaEPv(ptr noundef nonnull %i.bc) #13
  br label %_ZN6icu_7810LocalArrayINS_8message210data_model6OptionEE12adoptInsteadEPS3_.exit

_ZN6icu_7810LocalArrayINS_8message210data_model6OptionEE12adoptInsteadEPS3_.exit: ; preds = %.loopexit, %.loopexit.i
  store ptr %i.q, ptr %i.b, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %_ZN6icu_7810LocalArrayINS_8message210data_model6OptionEE12adoptInsteadEPS3_.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef nonnull align 8 dereferenceable(28) ptr @_ZN6icu_788message210data_model9OptionMapaSES2_(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(28) %0, ptr nofree noundef align 8 captures(none) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i8, ptr %i.a, align 8, !range !17, !noundef !18
  %i.d = load i8, ptr %i.b, align 8, !range !17, !noundef !18
  store i8 %i.d, ptr %i.a, align 8
  store i8 %i.c, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.e, align 8
  %i.h = load ptr, ptr %i.f, align 8
  store ptr %i.h, ptr %i.e, align 8
  store ptr %i.g, ptr %i.f, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.k = load i32, ptr %i.i, align 8
  %i.l = load i32, ptr %i.j, align 8
  store i32 %i.l, ptr %i.i, align 8
  store i32 %i.k, ptr %i.j, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef nonnull align 8 dereferenceable(176) ptr @_ZNK6icu_788message210data_model9OptionMap9getOptionEiR10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(28) %0, i32 noundef %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !range !17
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 7, ptr %2, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = sext i32 %1 to i64
  %i.f = load ptr, ptr %i.d, align 8
  %i.g = getelementptr inbounds [176 x i8], ptr %i.f, i64 %i.e
  ret ptr %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK6icu_788message210data_model9OptionMap4sizeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(28) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_788message210data_model9OptionMapD2Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) initializes((0, 8)) %0) unnamed_addr #1 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model9OptionMapE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN6icu_7810LocalArrayINS_8message210data_model6OptionEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %.loopexit.i, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.b
  %.idx.i = mul nsw i64 %i.e, 176
  %i.g = getelementptr inbounds i8, ptr %i.b, i64 %.idx.i
  br label %.preheader.i

.preheader.i:                                     ; preds = %_ZN6icu_788message210data_model6OptionD2Ev.exit.i, %.preheader.preheader.i
  %i.h = phi ptr [ %i.i, %_ZN6icu_788message210data_model6OptionD2Ev.exit.i ], [ %i.g, %.preheader.preheader.i ] ; 6 uses
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -176 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model6OptionE, i64 16), ptr %i.i, align 8
  %i.j = getelementptr inbounds i8, ptr %i.h, i64 -104 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6icu_788message210data_model7OperandE, i64 16), ptr %i.j, align 8
  %i.k = getelementptr inbounds i8, ptr %i.h, i64 -8 ; 2 uses
  %i.l = load i8, ptr %i.k, align 8, !range !17, !noundef !18
  %i.m = trunc nuw i8 %i.l to i1
  store i8 0, ptr %i.k, align 8
  %i.n = getelementptr inbounds i8, ptr %i.h, i64 -16
  %i.o = load i8, ptr %i.n, align 8
  %.not.i.i.i.i.i.i.i.i.i = icmp ne i8 %i.o, -1
  %or.cond.not.i.i.i.i.i.i = select i1 %i.m, i1 %.not.i.i.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.not.i.i.i.i.i.i, label %bb.c, label %_ZN6icu_788message210data_model6OptionD2Ev.exit.i, !prof !26

bb.c:                                             ; preds = %.preheader.i
  %i.p = getelementptr inbounds i8, ptr %i.h, i64 -96 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(96) %i.p) #13, !inline_history !54
  br label %_ZN6icu_788message210data_model6OptionD2Ev.exit.i

_ZN6icu_788message210data_model6OptionD2Ev.exit.i: ; preds = %bb.c, %.preheader.i
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(104) %i.j) #13, !inline_history !28
  %i.s = getelementptr inbounds i8, ptr %i.h, i64 -168
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.s) #13, !inline_history !29
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(176) %i.i) #13, !inline_history !29
  %i.t = icmp eq ptr %i.i, %i.b
  br i1 %i.t, label %.loopexit.i, label %.preheader.i

.loopexit.i:                                      ; preds = %_ZN6icu_788message210data_model6OptionD2Ev.exit.i, %bb.b
  tail call void @_ZN6icu_787UMemorydaEPv(ptr noundef nonnull %i.d) #13
  br label %_ZN6icu_7810LocalArrayINS_8message210data_model6OptionEED2Ev.exit

_ZN6icu_7810LocalArrayINS_8message210data_model6OptionEED2Ev.exit: ; preds = %bb.a, %.loopexit.i
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_788message210data_model9OptionMapD0Ev(ptr noundef nonnull align 8 dereferenceable(28) initializes((0, 8)) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN6icu_788message210data_model9OptionMapD2Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %0) #13
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_788message210data_model9OptionMap7Builder5buildER10UErrorCode(ptr dead_on_unwind noalias nofree nonnull writable sret(%"class.icu_78::message2::data_model::OptionMap") align 8 captures(none) initializes((0, 9), (16, 28)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(17) %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @_ZN6icu_788message210data_model9OptionMapC2ERKNS_7UVectorER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %2)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_788message210data_model9OptionMap7BuilderC2ER10UErrorCode(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(17) initializes((0, 17)) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) unnamed_addr #1 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model9OptionMap7BuilderE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.a, align 8
  %i.b = load i32, ptr %1, align 4
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %_ZN6icu_788message219createStringUVectorER10UErrorCode.exit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 40) #13 ; 7 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZN6icu_788message219createStringUVectorER10UErrorCode.exit, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.b
  tail call void @_ZN6icu_787UVectorC1ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %1) #13
  %i.f = load i32, ptr %1, align 4
  %i.g = icmp slt i32 %i.f, 1
  br i1 %i.g, label %_ZN6icu_788message213createUVectorER10UErrorCode.exit.i, label %bb.c

bb.c:                                             ; preds = %.thread.i.i.i
  %i.h = load ptr, ptr %i.d, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #13, !inline_history !55
  br label %_ZN6icu_788message219createStringUVectorER10UErrorCode.exit

_ZN6icu_788message213createUVectorER10UErrorCode.exit.i: ; preds = %.thread.i.i.i
  %i.k = tail call noundef ptr @_ZN6icu_787UVector10setDeleterEPFvPvE(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull @uprv_deleteUObject_78) #13 ; 0 uses
  %.pre.i = load i32, ptr %1, align 4
  %i.l = icmp slt i32 %.pre.i, 1
  br i1 %i.l, label %bb.d, label %_ZN6icu_788message219createStringUVectorER10UErrorCode.exit

bb.d:                                             ; preds = %_ZN6icu_788message213createUVectorER10UErrorCode.exit.i
  %i.m = tail call noundef ptr @_ZN6icu_787UVector11setComparerEPFa8UElementS1_E(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull @_ZN6icu_788message2L12stringsEqualE8UElementS1_) #13 ; 0 uses
  br label %_ZN6icu_788message219createStringUVectorER10UErrorCode.exit

_ZN6icu_788message219createStringUVectorER10UErrorCode.exit: ; preds = %bb.b, %bb.c, %bb.a, %_ZN6icu_788message213createUVectorER10UErrorCode.exit.i, %bb.d
  %.0.i = phi ptr [ %i.d, %bb.d ], [ null, %_ZN6icu_788message213createUVectorER10UErrorCode.exit.i ], [ null, %bb.a ], [ null, %bb.c ], [ null, %bb.b ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.i, ptr %i.n, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN6icu_788message210data_model9OptionMap7BuilderC2EOS3_(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(17) initializes((0, 17)) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(17) %1) unnamed_addr #5 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model9OptionMap7BuilderE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i8 1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i8, ptr %i.b, align 8, !range !17, !noundef !18
  store i8 %i.c, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8
  store ptr null, ptr %i.d, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef nonnull align 8 dereferenceable(17) ptr @_ZN6icu_788message210data_model9OptionMap7BuilderaSES3_(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(17) %0, ptr nofree noundef align 8 captures(none) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.a, align 8
  %i.d = load ptr, ptr %i.b, align 8
  store ptr %i.d, ptr %i.a, align 8
  store ptr %i.c, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load i8, ptr %i.e, align 8, !range !17, !noundef !18
  %i.h = load i8, ptr %i.f, align 8, !range !17, !noundef !18
  store i8 %i.h, ptr %i.e, align 8
  store i8 %i.g, ptr %i.f, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_788message210data_model9OptionMap7Builder10attributesER10UErrorCode(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.icu_78::message2::data_model::OptionMap::Builder") align 8 captures(none) initializes((0, 17)) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #1 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model9OptionMap7BuilderE, i64 16), ptr %0, align 8
  %i.a = load i32, ptr %1, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %_ZN6icu_788message210data_model9OptionMap7BuilderC2ER10UErrorCode.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 40) #13 ; 7 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZN6icu_788message210data_model9OptionMap7BuilderC2ER10UErrorCode.exit, label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %bb.b
  tail call void @_ZN6icu_787UVectorC1ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %1) #13
  %i.e = load i32, ptr %1, align 4
  %i.f = icmp slt i32 %i.e, 1
  br i1 %i.f, label %_ZN6icu_788message213createUVectorER10UErrorCode.exit.i.i, label %bb.c

bb.c:                                             ; preds = %.thread.i.i.i.i
  %i.g = load ptr, ptr %i.c, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #13, !inline_history !3
  br label %_ZN6icu_788message210data_model9OptionMap7BuilderC2ER10UErrorCode.exit

_ZN6icu_788message213createUVectorER10UErrorCode.exit.i.i: ; preds = %.thread.i.i.i.i
  %i.j = tail call noundef ptr @_ZN6icu_787UVector10setDeleterEPFvPvE(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull @uprv_deleteUObject_78) #13 ; 0 uses
  %.pre.i.i = load i32, ptr %1, align 4
  %i.k = icmp slt i32 %.pre.i.i, 1
  br i1 %i.k, label %bb.d, label %_ZN6icu_788message210data_model9OptionMap7BuilderC2ER10UErrorCode.exit

bb.d:                                             ; preds = %_ZN6icu_788message213createUVectorER10UErrorCode.exit.i.i
  %i.l = tail call noundef ptr @_ZN6icu_787UVector11setComparerEPFa8UElementS1_E(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull @_ZN6icu_788message2L12stringsEqualE8UElementS1_) #13 ; 0 uses
  br label %_ZN6icu_788message210data_model9OptionMap7BuilderC2ER10UErrorCode.exit

_ZN6icu_788message210data_model9OptionMap7BuilderC2ER10UErrorCode.exit: ; preds = %bb.b, %bb.c, %bb.a, %_ZN6icu_788message213createUVectorER10UErrorCode.exit.i.i, %bb.d
  %.0.i.i = phi ptr [ %i.c, %bb.d ], [ null, %_ZN6icu_788message213createUVectorER10UErrorCode.exit.i.i ], [ null, %bb.a ], [ null, %bb.c ], [ null, %bb.b ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.i.i, ptr %i.n, align 8
  store i8 0, ptr %i.m, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(17) ptr @_ZN6icu_788message210data_model9OptionMap7Builder3addEONS1_6OptionER10UErrorCode(ptr nofree noundef nonnull readonly returned align 8 captures(ret: address, provenance) dereferenceable(17) %0, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load i32, ptr %2, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i8, ptr %i.c, align 8, !range !17, !noundef !18
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %_ZN6icu_788message210data_modelL14hasOptionNamedERKNS_7UVectorERKNS_13UnicodeStringE.exit.thread.thread

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph.i, label %_ZN6icu_788message210data_modelL14hasOptionNamedERKNS_7UVectorERKNS_13UnicodeStringE.exit.thread.thread

.lr.ph.i:                                         ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.d

bb.d:                                             ; preds = %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread.i, %.lr.ph.i
  %.0914.i = phi i32 [ 0, %.lr.ph.i ], [ %i.an, %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread.i ] ; 2 uses
  %i.o = tail call noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i32 noundef %.0914.i) #13 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
end_hunk_0
begin_hunk_1_@_ZN6icu_788message210data_model9OptionMap7Builder3addEONS1_6OptionER10UErrorCode:bb.a
bb.f:                                             ; preds = %_ZN6icu_788message210data_modelL14hasOptionNamedERKNS_7UVectorERKNS_13UnicodeStringE.exit.thread.thread
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model6OptionE, i64 16), ptr %i.ar, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.at, ptr noundef nonnull align 8 dereferenceable(64) %i.au) #13
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 72
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6icu_788message210data_model7OperandE, i64 16), ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 80 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 168 ; 2 uses
  store i8 0, ptr %i.az, align 8
  %i.ba = load i8, ptr %i.ay, align 8, !range !17, !noundef !18
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.g, label %_ZN6icu_788message26createINS0_10data_model6OptionEEEPT_OS4_R10UErrorCode.exit

bb.g:                                             ; preds = %bb.f
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ar, i64 160 ; 2 uses
  store i8 -1, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.be = load i8, ptr %i.bd, align 8
  switch i8 %i.be, label %bb.j [
    i8 0, label %bb.h
    i8 1, label %bb.i
    i8 -1, label %_ZNSt22_Optional_payload_baseISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEEE12_M_constructIJRKS6_EEEvDpOT_.exit.i.i.i.i.i.i.i.i
  ]

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(96) %i.aw, ptr noundef nonnull align 8 dereferenceable(96) %i.ax) #13
  br label %_ZNSt22_Optional_payload_baseISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEEE12_M_constructIJRKS6_EEEvDpOT_.exit.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model7LiteralE, i64 16), ptr %i.aw, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ar, i64 88
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bh = load i8, ptr %i.bg, align 8, !range !17, !noundef !18
  store i8 %i.bh, ptr %i.bf, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ar, i64 96
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 96
  tail call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.bi, ptr noundef nonnull align 8 dereferenceable(64) %i.bj) #13
  br label %_ZNSt22_Optional_payload_baseISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEEE12_M_constructIJRKS6_EEEvDpOT_.exit.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.g
  unreachable

_ZNSt22_Optional_payload_baseISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEEE12_M_constructIJRKS6_EEEvDpOT_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.i, %bb.h, %bb.g
  %i.bk = load i8, ptr %i.bd, align 8
  store i8 %i.bk, ptr %i.bc, align 8
  store i8 1, ptr %i.az, align 8
  br label %_ZN6icu_788message26createINS0_10data_model6OptionEEEPT_OS4_R10UErrorCode.exit

_ZN6icu_788message210data_model6OptionC2ERKS2_.exit.i: ; preds = %_ZN6icu_788message210data_modelL14hasOptionNamedERKNS_7UVectorERKNS_13UnicodeStringE.exit.thread.thread
  store i32 7, ptr %2, align 4
  br label %_ZN6icu_788message26createINS0_10data_model6OptionEEEPT_OS4_R10UErrorCode.exit

_ZN6icu_788message26createINS0_10data_model6OptionEEEPT_OS4_R10UErrorCode.exit: ; preds = %_ZN6icu_788message210data_modelL14hasOptionNamedERKNS_7UVectorERKNS_13UnicodeStringE.exit.thread, %bb.f, %_ZNSt22_Optional_payload_baseISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEEE12_M_constructIJRKS6_EEEvDpOT_.exit.i.i.i.i.i.i.i.i, %_ZN6icu_788message210data_model6OptionC2ERKS2_.exit.i
  %.0.i = phi ptr [ null, %_ZN6icu_788message210data_modelL14hasOptionNamedERKNS_7UVectorERKNS_13UnicodeStringE.exit.thread ], [ null, %_ZN6icu_788message210data_model6OptionC2ERKS2_.exit.i ], [ %i.ar, %bb.f ], [ %i.ar, %_ZNSt22_Optional_payload_baseISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEEE12_M_constructIJRKS6_EEEvDpOT_.exit.i.i.i.i.i.i.i.i ]
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8
  tail call void @_ZN6icu_787UVector12adoptElementEPvR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.bm, ptr noundef %.0.i, ptr noundef nonnull align 4 dereferenceable(4) %2) #13
  br label %bb.k

bb.k:                                             ; preds = %_ZN6icu_788message210data_modelL14hasOptionNamedERKNS_7UVectorERKNS_13UnicodeStringE.exit, %_ZN6icu_788message26createINS0_10data_model6OptionEEEPT_OS4_R10UErrorCode.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_788message210data_model9OptionMap7BuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) initializes((0, 8)) %0) unnamed_addr #1 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model9OptionMap7BuilderE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_788message210data_model9OptionMap7BuilderD0Ev(ptr noundef nonnull align 8 dereferenceable(17) initializes((0, 8)) %0) unnamed_addr #1 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model9OptionMap7BuilderE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN6icu_788message210data_model9OptionMap7BuilderD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #13, !inline_history !30
  br label %_ZN6icu_788message210data_model9OptionMap7BuilderD2Ev.exit

_ZN6icu_788message210data_model9OptionMap7BuilderD2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(17) %0) #13, !inline_history !30
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(28) ptr @_ZNK6icu_788message210data_model8Operator18getOptionsInternalEv(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(104) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_788message210data_model6OptionC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(176) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(176) %1) unnamed_addr #1 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model6OptionE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %i.b) #13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6icu_788message210data_model7OperandE, i64 16), ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  store i8 0, ptr %i.g, align 8
  %i.h = load i8, ptr %i.f, align 8, !range !17, !noundef !18
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.b, label %_ZN6icu_788message210data_model7OperandC2ERKS2_.exit

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  store i8 -1, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.l = load i8, ptr %i.k, align 8
  switch i8 %i.l, label %bb.e [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 -1, label %_ZNSt22_Optional_payload_baseISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEEE12_M_constructIJRKS6_EEEvDpOT_.exit.i.i.i.i.i.i
  ]

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(96) %i.d, ptr noundef nonnull align 8 dereferenceable(96) %i.e) #13
  br label %_ZNSt22_Optional_payload_baseISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEEE12_M_constructIJRKS6_EEEvDpOT_.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model7LiteralE, i64 16), ptr %i.d, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.o = load i8, ptr %i.n, align 8, !range !17, !noundef !18
  store i8 %i.o, ptr %i.m, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 96
  tail call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.p, ptr noundef nonnull align 8 dereferenceable(64) %i.q) #13
  br label %_ZNSt22_Optional_payload_baseISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEEE12_M_constructIJRKS6_EEEvDpOT_.exit.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.b
  unreachable

_ZNSt22_Optional_payload_baseISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEEE12_M_constructIJRKS6_EEEvDpOT_.exit.i.i.i.i.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.r = load i8, ptr %i.k, align 8
  store i8 %i.r, ptr %i.j, align 8
  store i8 1, ptr %i.g, align 8
  br label %_ZN6icu_788message210data_model7OperandC2ERKS2_.exit

_ZN6icu_788message210data_model7OperandC2ERKS2_.exit: ; preds = %bb.a, %_ZNSt22_Optional_payload_baseISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEEE12_M_constructIJRKS6_EEEvDpOT_.exit.i.i.i.i.i.i
  ret void
}

declare void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(176) ptr @_ZN6icu_788message210data_model6OptionaSES2_(ptr noundef nonnull returned align 8 dereferenceable(176) %0, ptr noundef align 8 %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN6icu_7813UnicodeString4swapERS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %i.b) #13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 80
  tail call void @_ZNSt8optionalISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEEE4swapERS7_(ptr noundef nonnull align 8 dereferenceable(96) %i.c, ptr noundef nonnull align 8 dereferenceable(96) %i.d)
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_788message210data_model6OptionD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) initializes((0, 8), (72, 80)) %0) unnamed_addr #1 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model6OptionE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6icu_788message210data_model7OperandE, i64 16), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !range !17, !noundef !18
  %i.d = trunc nuw i8 %i.c to i1
  store i8 0, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.f = load i8, ptr %i.e, align 8
  %.not.i.i.i.i.i.i.i = icmp ne i8 %i.f, -1
  %or.cond.not.i.i.i.i = select i1 %i.d, i1 %.not.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.not.i.i.i.i, label %bb.b, label %_ZN6icu_788message210data_model7OperandD2Ev.exit, !prof !26

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(96) %i.g) #13, !inline_history !1
  br label %_ZN6icu_788message210data_model7OperandD2Ev.exit

_ZN6icu_788message210data_model7OperandD2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(104) %i.a) #13, !inline_history !27
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.j) #13
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_788message210data_model6OptionD0Ev(ptr noundef nonnull align 8 dereferenceable(176) initializes((0, 8), (72, 80)) %0) unnamed_addr #1 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model6OptionE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6icu_788message210data_model7OperandE, i64 16), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !range !17, !noundef !18
  %i.d = trunc nuw i8 %i.c to i1
  store i8 0, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.f = load i8, ptr %i.e, align 8
  %.not.i.i.i.i.i.i.i.i = icmp ne i8 %i.f, -1
  %or.cond.not.i.i.i.i.i = select i1 %i.d, i1 %.not.i.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.not.i.i.i.i.i, label %bb.b, label %_ZN6icu_788message210data_model6OptionD2Ev.exit, !prof !26

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(96) %i.g) #13, !inline_history !4
  br label %_ZN6icu_788message210data_model6OptionD2Ev.exit

_ZN6icu_788message210data_model6OptionD2Ev.exit:  ; preds = %bb.a, %bb.b
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(104) %i.a) #13, !inline_history !28
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.j) #13, !inline_history !29
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(176) %0) #13, !inline_history !29
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_788message210data_model8Operator7BuilderC2ER10UErrorCode(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(96) initializes((0, 18), (72, 89)) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) unnamed_addr #1 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6icu_788message210data_model8Operator7BuilderE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i16 2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model9OptionMap7BuilderE, i64 16), ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 1, ptr %i.d, align 8
  %i.e = load i32, ptr %1, align 4
  %i.f = icmp slt i32 %i.e, 1
  br i1 %i.f, label %bb.b, label %_ZN6icu_788message210data_model9OptionMap7BuilderC2ER10UErrorCode.exit

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 40) #13 ; 7 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_ZN6icu_788message210data_model9OptionMap7BuilderC2ER10UErrorCode.exit, label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %bb.b
  tail call void @_ZN6icu_787UVectorC1ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %1) #13
  %i.i = load i32, ptr %1, align 4
  %i.j = icmp slt i32 %i.i, 1
  br i1 %i.j, label %_ZN6icu_788message213createUVectorER10UErrorCode.exit.i.i, label %bb.c

bb.c:                                             ; preds = %.thread.i.i.i.i
  %i.k = load ptr, ptr %i.g, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(40) %i.g) #13, !inline_history !3
  br label %_ZN6icu_788message210data_model9OptionMap7BuilderC2ER10UErrorCode.exit

_ZN6icu_788message213createUVectorER10UErrorCode.exit.i.i: ; preds = %.thread.i.i.i.i
  %i.n = tail call noundef ptr @_ZN6icu_787UVector10setDeleterEPFvPvE(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull @uprv_deleteUObject_78) #13 ; 0 uses
  %.pre.i.i = load i32, ptr %1, align 4
  %i.o = icmp slt i32 %.pre.i.i, 1
  br i1 %i.o, label %bb.d, label %_ZN6icu_788message210data_model9OptionMap7BuilderC2ER10UErrorCode.exit

bb.d:                                             ; preds = %_ZN6icu_788message213createUVectorER10UErrorCode.exit.i.i
  %i.p = tail call noundef ptr @_ZN6icu_787UVector11setComparerEPFa8UElementS1_E(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull @_ZN6icu_788message2L12stringsEqualE8UElementS1_) #13 ; 0 uses
  br label %_ZN6icu_788message210data_model9OptionMap7BuilderC2ER10UErrorCode.exit

_ZN6icu_788message210data_model9OptionMap7BuilderC2ER10UErrorCode.exit: ; preds = %bb.b, %bb.c, %bb.a, %_ZN6icu_788message213createUVectorER10UErrorCode.exit.i.i, %bb.d
  %.0.i.i = phi ptr [ %i.g, %bb.d ], [ null, %_ZN6icu_788message213createUVectorER10UErrorCode.exit.i.i ], [ null, %bb.a ], [ null, %bb.c ], [ null, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %.0.i.i, ptr %i.q, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(96) ptr @_ZN6icu_788message210data_model8Operator7Builder15setFunctionNameEONS_13UnicodeStringE(ptr noundef nonnull returned align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %1) #13 ; 0 uses
  ret ptr %0
}

; Function Attrs: nounwind
declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_788message210data_model8Operator15getFunctionNameEv(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(104) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(96) ptr @_ZN6icu_788message210data_model8Operator7Builder9addOptionERKNS_13UnicodeStringEONS1_7OperandER10UErrorCode(ptr nofree noundef nonnull readonly returned align 8 captures(ret: address, provenance) dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #1 align 2 {
bb.a:
  %4 = alloca %"class.icu_78::message2::data_model::Option", align 8 ; 14 uses
  %i.a = load i32, ptr %3, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model6OptionE, i64 16), ptr %4, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %1) #13
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6icu_788message210data_model7OperandE, i64 16), ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 168 ; 4 uses
  store i8 0, ptr %i.i, align 8
  %i.j = load i8, ptr %i.h, align 8, !range !17, !noundef !18
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.c, label %_ZN6icu_788message210data_model6OptionC2ERKNS_13UnicodeStringEONS1_7OperandE.exit

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 160 ; 2 uses
  store i8 -1, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  %i.n = load i8, ptr %i.m, align 8
  switch i8 %i.n, label %bb.f [
    i8 0, label %bb.d
    i8 1, label %bb.e
    i8 -1, label %_ZNSt22_Optional_payload_baseISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEEE12_M_constructIJRKS6_EEEvDpOT_.exit.i.i.i.i.i.i.i
  ]

bb.d:                                             ; preds = %bb.c
  call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(96) %i.f, ptr noundef nonnull align 8 dereferenceable(96) %i.g) #13
  br label %_ZNSt22_Optional_payload_baseISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEEE12_M_constructIJRKS6_EEEvDpOT_.exit.i.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model7LiteralE, i64 16), ptr %i.f, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.q = load i8, ptr %i.p, align 8, !range !17, !noundef !18
  store i8 %i.q, ptr %i.o, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.r, ptr noundef nonnull align 8 dereferenceable(64) %i.s) #13
  br label %_ZNSt22_Optional_payload_baseISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEEE12_M_constructIJRKS6_EEEvDpOT_.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.c
  unreachable

_ZNSt22_Optional_payload_baseISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEEE12_M_constructIJRKS6_EEEvDpOT_.exit.i.i.i.i.i.i.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.t = load i8, ptr %i.m, align 8
  store i8 %i.t, ptr %i.l, align 8
  store i8 1, ptr %i.i, align 8
  br label %_ZN6icu_788message210data_model6OptionC2ERKNS_13UnicodeStringEONS1_7OperandE.exit

_ZN6icu_788message210data_model6OptionC2ERKNS_13UnicodeStringEONS1_7OperandE.exit: ; preds = %bb.b, %_ZNSt22_Optional_payload_baseISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEEE12_M_constructIJRKS6_EEEvDpOT_.exit.i.i.i.i.i.i.i
  %i.u = call noundef nonnull align 8 dereferenceable(17) ptr @_ZN6icu_788message210data_model9OptionMap7Builder3addEONS1_6OptionER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(17) %i.c, ptr noundef nonnull align 8 dereferenceable(176) %4, ptr noundef nonnull align 4 dereferenceable(4) %3) ; 0 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model6OptionE, i64 16), ptr %4, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6icu_788message210data_model7OperandE, i64 16), ptr %i.e, align 8
  %i.v = load i8, ptr %i.i, align 8, !range !17, !noundef !18
  %i.w = trunc nuw i8 %i.v to i1
  store i8 0, ptr %i.i, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 160
  %i.y = load i8, ptr %i.x, align 8
  %.not.i.i.i.i.i.i.i.i = icmp ne i8 %i.y, -1
  %or.cond.not.i.i.i.i.i = select i1 %i.w, i1 %.not.i.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.not.i.i.i.i.i, label %bb.g, label %_ZN6icu_788message210data_model6OptionD2Ev.exit, !prof !26

bb.g:                                             ; preds = %_ZN6icu_788message210data_model6OptionC2ERKNS_13UnicodeStringEONS1_7OperandE.exit
  %i.z = load ptr, ptr %i.f, align 8
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(96) %i.f) #13, !inline_history !4
  br label %_ZN6icu_788message210data_model6OptionD2Ev.exit

_ZN6icu_788message210data_model6OptionD2Ev.exit:  ; preds = %_ZN6icu_788message210data_model6OptionC2ERKNS_13UnicodeStringEONS1_7OperandE.exit, %bb.g
  call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(104) %i.e) #13, !inline_history !28
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.d) #13, !inline_history !29
  call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(176) %4) #13, !inline_history !29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZN6icu_788message210data_model6OptionD2Ev.exit
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_788message210data_model8Operator7Builder5buildER10UErrorCode(ptr dead_on_unwind noalias writable sret(%"class.icu_78::message2::data_model::Operator") align 8 initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %3 = alloca %"class.icu_78::message2::data_model::OptionMap", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.c = load ptr, ptr %i.b, align 8, !noalias !59
  call void @_ZN6icu_788message210data_model9OptionMapC2ERKNS_7UVectorER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(28) %3, ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %2)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model8OperatorE, i64 16), ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %i.a) #13
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @_ZN6icu_788message210data_model9OptionMapC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(28) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(28) %3)
  call void @_ZN6icu_788message210data_model9OptionMapD2Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_788message210data_model8OperatorC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(104) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(104) %1) unnamed_addr #1 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model8OperatorE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %i.b) #13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72
  tail call void @_ZN6icu_788message210data_model9OptionMapC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(28) %i.c, ptr noundef nonnull align 8 dereferenceable(28) %i.d)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(104) ptr @_ZN6icu_788message210data_model8OperatoraSES2_(ptr noundef nonnull returned align 8 dereferenceable(104) %0, ptr noundef align 8 %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN6icu_7813UnicodeString4swapERS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %i.b) #13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.e = load i8, ptr %i.c, align 8, !range !17, !noundef !18
  %i.f = load i8, ptr %i.d, align 8, !range !17, !noundef !18
  store i8 %i.f, ptr %i.c, align 8
  store i8 %i.e, ptr %i.d, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.i = load ptr, ptr %i.g, align 8
  %i.j = load ptr, ptr %i.h, align 8
  store ptr %i.j, ptr %i.g, align 8
  store ptr %i.i, ptr %i.h, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.m = load i32, ptr %i.k, align 8
  %i.n = load i32, ptr %i.l, align 8
  store i32 %i.n, ptr %i.k, align 8
  store i32 %i.m, ptr %i.l, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_788message210data_model8OperatorC2ERKNS_13UnicodeStringERKNS1_9OptionMapE(ptr noundef nonnull align 8 dereferenceable(104) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(28) %2) unnamed_addr #1 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model8OperatorE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %1) #13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @_ZN6icu_788message210data_model9OptionMapC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(28) %i.b, ptr noundef nonnull align 8 dereferenceable(28) %2)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_788message210data_model8Operator7BuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) initializes((0, 8), (72, 80)) %0) unnamed_addr #1 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6icu_788message210data_model8Operator7BuilderE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model9OptionMap7BuilderE, i64 16), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZN6icu_788message210data_model9OptionMap7BuilderD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #13, !inline_history !30
  br label %_ZN6icu_788message210data_model9OptionMap7BuilderD2Ev.exit

_ZN6icu_788message210data_model9OptionMap7BuilderD2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(17) %i.a) #13, !inline_history !30
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.g) #13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_788message210data_model8Operator7BuilderD0Ev(ptr noundef nonnull align 8 dereferenceable(96) initializes((0, 8), (72, 80)) %0) unnamed_addr #1 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6icu_788message210data_model8Operator7BuilderE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model9OptionMap7BuilderE, i64 16), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN6icu_788message210data_model8Operator7BuilderD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #13, !inline_history !60
  br label %_ZN6icu_788message210data_model8Operator7BuilderD2Ev.exit

_ZN6icu_788message210data_model8Operator7BuilderD2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(17) %i.a) #13, !inline_history !60
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.g) #13, !inline_history !61
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_788message210data_model8OperatorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) initializes((0, 8), (72, 80)) %0) unnamed_addr #1 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model8OperatorE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @_ZN6icu_788message210data_model9OptionMapD2Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %i.a) #13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.b) #13
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_788message210data_model8OperatorD0Ev(ptr noundef nonnull align 8 dereferenceable(104) initializes((0, 8), (72, 80)) %0) unnamed_addr #1 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model8OperatorE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @_ZN6icu_788message210data_model9OptionMapD2Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %i.a) #13, !inline_history !31
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.b) #13, !inline_history !31
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(104) %0) #13, !inline_history !31
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_788message210data_model6Markup7BuilderC2ER10UErrorCode(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(124) initializes((0, 18), (72, 89), (96, 113), (120, 124)) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) unnamed_addr #1 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6icu_788message210data_model6Markup7BuilderE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i16 2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model9OptionMap7BuilderE, i64 16), ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 1, ptr %i.d, align 8
  %i.e = load i32, ptr %1, align 4
  %i.f = icmp slt i32 %i.e, 1
  br i1 %i.f, label %bb.b, label %_ZN6icu_788message210data_model9OptionMap7BuilderC2ER10UErrorCode.exit

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 40) #13 ; 7 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_ZN6icu_788message210data_model9OptionMap7BuilderC2ER10UErrorCode.exit, label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %bb.b
  tail call void @_ZN6icu_787UVectorC1ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %1) #13
  %i.i = load i32, ptr %1, align 4
  %i.j = icmp slt i32 %i.i, 1
  br i1 %i.j, label %_ZN6icu_788message213createUVectorER10UErrorCode.exit.i.i, label %bb.c

bb.c:                                             ; preds = %.thread.i.i.i.i
  %i.k = load ptr, ptr %i.g, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(40) %i.g) #13, !inline_history !3
  br label %_ZN6icu_788message210data_model9OptionMap7BuilderC2ER10UErrorCode.exit

_ZN6icu_788message213createUVectorER10UErrorCode.exit.i.i: ; preds = %.thread.i.i.i.i
  %i.n = tail call noundef ptr @_ZN6icu_787UVector10setDeleterEPFvPvE(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull @uprv_deleteUObject_78) #13 ; 0 uses
  %.pre.i.i = load i32, ptr %1, align 4
  %i.o = icmp slt i32 %.pre.i.i, 1
  br i1 %i.o, label %bb.d, label %_ZN6icu_788message210data_model9OptionMap7BuilderC2ER10UErrorCode.exit

bb.d:                                             ; preds = %_ZN6icu_788message213createUVectorER10UErrorCode.exit.i.i
  %i.p = tail call noundef ptr @_ZN6icu_787UVector11setComparerEPFa8UElementS1_E(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull @_ZN6icu_788message2L12stringsEqualE8UElementS1_) #13 ; 0 uses
  br label %_ZN6icu_788message210data_model9OptionMap7BuilderC2ER10UErrorCode.exit

_ZN6icu_788message210data_model9OptionMap7BuilderC2ER10UErrorCode.exit: ; preds = %bb.b, %bb.c, %bb.a, %_ZN6icu_788message213createUVectorER10UErrorCode.exit.i.i, %bb.d
  %.0.i.i = phi ptr [ %i.g, %bb.d ], [ null, %_ZN6icu_788message213createUVectorER10UErrorCode.exit.i.i ], [ null, %bb.a ], [ null, %bb.c ], [ null, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %.0.i.i, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model9OptionMap7BuilderE, i64 16), ptr %i.r, align 8, !alias.scope !64
  %i.s = load i32, ptr %1, align 4, !noalias !64
  %i.t = icmp slt i32 %i.s, 1
  br i1 %i.t, label %bb.e, label %_ZN6icu_788message210data_model9OptionMap7Builder10attributesER10UErrorCode.exit

bb.e:                                             ; preds = %_ZN6icu_788message210data_model9OptionMap7BuilderC2ER10UErrorCode.exit
  %i.u = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 40) #13, !noalias !64 ; 7 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %_ZN6icu_788message210data_model9OptionMap7Builder10attributesER10UErrorCode.exit, label %.thread.i.i.i.i.i

.thread.i.i.i.i.i:                                ; preds = %bb.e
  tail call void @_ZN6icu_787UVectorC1ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.u, ptr noundef nonnull align 4 dereferenceable(4) %1) #13, !noalias !64
  %i.w = load i32, ptr %1, align 4, !noalias !64
  %i.x = icmp slt i32 %i.w, 1
  br i1 %i.x, label %_ZN6icu_788message213createUVectorER10UErrorCode.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %.thread.i.i.i.i.i
  %i.y = load ptr, ptr %i.u, align 8, !noalias !64
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !64
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(40) %i.u) #13, !noalias !64, !inline_history !5
  br label %_ZN6icu_788message210data_model9OptionMap7Builder10attributesER10UErrorCode.exit

_ZN6icu_788message213createUVectorER10UErrorCode.exit.i.i.i: ; preds = %.thread.i.i.i.i.i
  %i.ab = tail call noundef ptr @_ZN6icu_787UVector10setDeleterEPFvPvE(ptr noundef nonnull align 8 dereferenceable(40) %i.u, ptr noundef nonnull @uprv_deleteUObject_78) #13, !noalias !64 ; 0 uses
  %.pre.i.i.i = load i32, ptr %1, align 4, !noalias !64
  %i.ac = icmp slt i32 %.pre.i.i.i, 1
  br i1 %i.ac, label %bb.g, label %_ZN6icu_788message210data_model9OptionMap7Builder10attributesER10UErrorCode.exit

bb.g:                                             ; preds = %_ZN6icu_788message213createUVectorER10UErrorCode.exit.i.i.i
  %i.ad = tail call noundef ptr @_ZN6icu_787UVector11setComparerEPFa8UElementS1_E(ptr noundef nonnull align 8 dereferenceable(40) %i.u, ptr noundef nonnull @_ZN6icu_788message2L12stringsEqualE8UElementS1_) #13, !noalias !64 ; 0 uses
  br label %_ZN6icu_788message210data_model9OptionMap7Builder10attributesER10UErrorCode.exit

_ZN6icu_788message210data_model9OptionMap7Builder10attributesER10UErrorCode.exit: ; preds = %bb.e, %bb.f, %_ZN6icu_788message210data_model9OptionMap7BuilderC2ER10UErrorCode.exit, %_ZN6icu_788message213createUVectorER10UErrorCode.exit.i.i.i, %bb.g
  %.0.i.i.i = phi ptr [ %i.u, %bb.g ], [ null, %_ZN6icu_788message213createUVectorER10UErrorCode.exit.i.i.i ], [ null, %_ZN6icu_788message210data_model9OptionMap7BuilderC2ER10UErrorCode.exit ], [ null, %bb.f ], [ null, %bb.e ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %.0.i.i.i, ptr %i.af, align 8, !alias.scope !64
  store i8 0, ptr %i.ae, align 8, !alias.scope !64
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 3, ptr %i.ag, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_788message210data_model6MarkupC2ENS1_11UMarkupTypeENS_13UnicodeStringEONS1_9OptionMapES6_(ptr noundef nonnull align 8 dereferenceable(144) initializes((0, 12)) %0, i32 noundef %1, ptr noundef nonnull align 8 %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(28) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(28) %4) unnamed_addr #1 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model6MarkupE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %2) #13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @_ZN6icu_788message210data_model9OptionMapC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(28) %i.c, ptr noundef nonnull align 8 dereferenceable(28) %3)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_ZN6icu_788message210data_model9OptionMapC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(28) %i.d, ptr noundef nonnull align 8 dereferenceable(28) %4)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(124) ptr @_ZN6icu_788message210data_model6Markup7Builder9addOptionERKNS_13UnicodeStringEONS1_7OperandER10UErrorCode(ptr nofree noundef nonnull readonly returned align 8 captures(ret: address, provenance) dereferenceable(124) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #1 align 2 {
bb.a:
  %4 = alloca %"class.icu_78::message2::data_model::Option", align 8 ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model6OptionE, i64 16), ptr %4, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %1) #13
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6icu_788message210data_model7OperandE, i64 16), ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 168 ; 4 uses
  store i8 0, ptr %i.g, align 8
  %i.h = load i8, ptr %i.f, align 8, !range !17, !noundef !18
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.b, label %_ZN6icu_788message210data_model6OptionC2ERKNS_13UnicodeStringEONS1_7OperandE.exit

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 160 ; 2 uses
  store i8 -1, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  %i.l = load i8, ptr %i.k, align 8
  switch i8 %i.l, label %bb.e [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 -1, label %_ZNSt22_Optional_payload_baseISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEEE12_M_constructIJRKS6_EEEvDpOT_.exit.i.i.i.i.i.i.i
  ]

bb.c:                                             ; preds = %bb.b
  call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(96) %i.d, ptr noundef nonnull align 8 dereferenceable(96) %i.e) #13
  br label %_ZNSt22_Optional_payload_baseISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEEE12_M_constructIJRKS6_EEEvDpOT_.exit.i.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model7LiteralE, i64 16), ptr %i.d, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = load i8, ptr %i.n, align 8, !range !17, !noundef !18
  store i8 %i.o, ptr %i.m, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.p, ptr noundef nonnull align 8 dereferenceable(64) %i.q) #13
  br label %_ZNSt22_Optional_payload_baseISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEEE12_M_constructIJRKS6_EEEvDpOT_.exit.i.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.b
  unreachable

_ZNSt22_Optional_payload_baseISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEEE12_M_constructIJRKS6_EEEvDpOT_.exit.i.i.i.i.i.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.r = load i8, ptr %i.k, align 8
  store i8 %i.r, ptr %i.j, align 8
  store i8 1, ptr %i.g, align 8
  br label %_ZN6icu_788message210data_model6OptionC2ERKNS_13UnicodeStringEONS1_7OperandE.exit

_ZN6icu_788message210data_model6OptionC2ERKNS_13UnicodeStringEONS1_7OperandE.exit: ; preds = %bb.a, %_ZNSt22_Optional_payload_baseISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEEE12_M_constructIJRKS6_EEEvDpOT_.exit.i.i.i.i.i.i.i
  %i.s = call noundef nonnull align 8 dereferenceable(17) ptr @_ZN6icu_788message210data_model9OptionMap7Builder3addEONS1_6OptionER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(17) %i.a, ptr noundef nonnull align 8 dereferenceable(176) %4, ptr noundef nonnull align 4 dereferenceable(4) %3) ; 0 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model6OptionE, i64 16), ptr %4, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6icu_788message210data_model7OperandE, i64 16), ptr %i.c, align 8
  %i.t = load i8, ptr %i.g, align 8, !range !17, !noundef !18
  %i.u = trunc nuw i8 %i.t to i1
  store i8 0, ptr %i.g, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 160
  %i.w = load i8, ptr %i.v, align 8
  %.not.i.i.i.i.i.i.i.i = icmp ne i8 %i.w, -1
  %or.cond.not.i.i.i.i.i = select i1 %i.u, i1 %.not.i.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.not.i.i.i.i.i, label %bb.f, label %_ZN6icu_788message210data_model6OptionD2Ev.exit, !prof !26

bb.f:                                             ; preds = %_ZN6icu_788message210data_model6OptionC2ERKNS_13UnicodeStringEONS1_7OperandE.exit
  %i.x = load ptr, ptr %i.d, align 8
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(96) %i.d) #13, !inline_history !4
  br label %_ZN6icu_788message210data_model6OptionD2Ev.exit

_ZN6icu_788message210data_model6OptionD2Ev.exit:  ; preds = %_ZN6icu_788message210data_model6OptionC2ERKNS_13UnicodeStringEONS1_7OperandE.exit, %bb.f
  call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(104) %i.c) #13, !inline_history !28
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.b) #13, !inline_history !29
  call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(176) %4) #13, !inline_history !29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(124) ptr @_ZN6icu_788message210data_model6Markup7Builder12addAttributeERKNS_13UnicodeStringEONS1_7OperandER10UErrorCode(ptr nofree noundef nonnull readonly returned align 8 captures(ret: address, provenance) dereferenceable(124) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #1 align 2 {
bb.a:
  %4 = alloca %"class.icu_78::message2::data_model::Option", align 8 ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model6OptionE, i64 16), ptr %4, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %1) #13
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6icu_788message210data_model7OperandE, i64 16), ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 168 ; 4 uses
  store i8 0, ptr %i.g, align 8
  %i.h = load i8, ptr %i.f, align 8, !range !17, !noundef !18
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.b, label %_ZN6icu_788message210data_model6OptionC2ERKNS_13UnicodeStringEONS1_7OperandE.exit

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 160 ; 2 uses
  store i8 -1, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  %i.l = load i8, ptr %i.k, align 8
  switch i8 %i.l, label %bb.e [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 -1, label %_ZNSt22_Optional_payload_baseISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEEE12_M_constructIJRKS6_EEEvDpOT_.exit.i.i.i.i.i.i.i
  ]

bb.c:                                             ; preds = %bb.b
  call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(96) %i.d, ptr noundef nonnull align 8 dereferenceable(96) %i.e) #13
  br label %_ZNSt22_Optional_payload_baseISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEEE12_M_constructIJRKS6_EEEvDpOT_.exit.i.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model7LiteralE, i64 16), ptr %i.d, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = load i8, ptr %i.n, align 8, !range !17, !noundef !18
  store i8 %i.o, ptr %i.m, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.p, ptr noundef nonnull align 8 dereferenceable(64) %i.q) #13
  br label %_ZNSt22_Optional_payload_baseISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEEE12_M_constructIJRKS6_EEEvDpOT_.exit.i.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.b
  unreachable

_ZNSt22_Optional_payload_baseISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEEE12_M_constructIJRKS6_EEEvDpOT_.exit.i.i.i.i.i.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.r = load i8, ptr %i.k, align 8
  store i8 %i.r, ptr %i.j, align 8
  store i8 1, ptr %i.g, align 8
  br label %_ZN6icu_788message210data_model6OptionC2ERKNS_13UnicodeStringEONS1_7OperandE.exit

_ZN6icu_788message210data_model6OptionC2ERKNS_13UnicodeStringEONS1_7OperandE.exit: ; preds = %bb.a, %_ZNSt22_Optional_payload_baseISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEEE12_M_constructIJRKS6_EEEvDpOT_.exit.i.i.i.i.i.i.i
  %i.s = call noundef nonnull align 8 dereferenceable(17) ptr @_ZN6icu_788message210data_model9OptionMap7Builder3addEONS1_6OptionER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(17) %i.a, ptr noundef nonnull align 8 dereferenceable(176) %4, ptr noundef nonnull align 4 dereferenceable(4) %3) ; 0 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model6OptionE, i64 16), ptr %4, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6icu_788message210data_model7OperandE, i64 16), ptr %i.c, align 8
  %i.t = load i8, ptr %i.g, align 8, !range !17, !noundef !18
  %i.u = trunc nuw i8 %i.t to i1
  store i8 0, ptr %i.g, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 160
  %i.w = load i8, ptr %i.v, align 8
  %.not.i.i.i.i.i.i.i.i = icmp ne i8 %i.w, -1
  %or.cond.not.i.i.i.i.i = select i1 %i.u, i1 %.not.i.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.not.i.i.i.i.i, label %bb.f, label %_ZN6icu_788message210data_model6OptionD2Ev.exit, !prof !26

bb.f:                                             ; preds = %_ZN6icu_788message210data_model6OptionC2ERKNS_13UnicodeStringEONS1_7OperandE.exit
  %i.x = load ptr, ptr %i.d, align 8
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(96) %i.d) #13, !inline_history !4
  br label %_ZN6icu_788message210data_model6OptionD2Ev.exit

_ZN6icu_788message210data_model6OptionD2Ev.exit:  ; preds = %_ZN6icu_788message210data_model6OptionC2ERKNS_13UnicodeStringEONS1_7OperandE.exit, %bb.f
  call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(104) %i.c) #13, !inline_history !28
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.b) #13, !inline_history !29
  call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(176) %4) #13, !inline_history !29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_788message210data_model6Markup7Builder5buildER10UErrorCode(ptr dead_on_unwind noalias writable sret(%"class.icu_78::message2::data_model::Markup") align 8 initializes((0, 8), (16, 26), (80, 89), (96, 108), (112, 121), (128, 140)) %0, ptr noundef nonnull align 8 dereferenceable(124) %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %3 = alloca %"class.icu_78::message2::data_model::OptionMap", align 8 ; 7 uses
  %4 = alloca %"class.icu_78::message2::data_model::OptionMap", align 8 ; 7 uses
  %5 = alloca %"class.icu_78::message2::data_model::Markup", align 8 ; 9 uses
  %6 = alloca %"class.icu_78::UnicodeString", align 8 ; 3 uses
  %7 = alloca %"class.icu_78::message2::data_model::OptionMap", align 8 ; 5 uses
  %8 = alloca %"class.icu_78::message2::data_model::OptionMap", align 8 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model6MarkupE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model9OptionMapE, i64 16), ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  store i8 0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  store ptr null, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  store i32 0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model9OptionMapE, i64 16), ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  store i8 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  store ptr null, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  store i32 0, ptr %i.j, align 8
  %i.k = load i32, ptr %2, align 4
  %i.l = icmp slt i32 %i.k, 1
  br i1 %i.l, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.n = load i32, ptr %i.m, align 8              ; 2 uses
  %i.o = icmp eq i32 %i.n, 3
  br i1 %i.o, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load i16, ptr %i.p, align 8              ; 2 uses
  %i.r = icmp slt i16 %i.q, 0
  %i.s = ashr i16 %i.q, 5
  %i.t = sext i16 %i.s to i32
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.v = load i32, ptr %i.u, align 4
  %i.w = select i1 %i.r, i32 %i.v, i32 %i.t
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  store i32 27, ptr %2, align 4
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(64) %i.y) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !69
  call void @_ZN6icu_788message210data_model9OptionMapC2ERKNS_7UVectorER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(28) %7, ptr noundef nonnull align 8 dereferenceable(40) %i.aa, ptr noundef nonnull align 4 dereferenceable(4) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ac = load ptr, ptr %i.ab, align 8, !noalias !70
  call void @_ZN6icu_788message210data_model9OptionMapC2ERKNS_7UVectorER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(28) %8, ptr noundef nonnull align 8 dereferenceable(40) %i.ac, ptr noundef nonnull align 4 dereferenceable(4) %2)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model6MarkupE, i64 16), ptr %5, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i32 %i.n, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.ae, ptr noundef nonnull align 8 dereferenceable(64) %6) #13
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 3 uses
  call void @_ZN6icu_788message210data_model9OptionMapC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(28) %i.af, ptr noundef nonnull readonly align 8 dereferenceable(28) %7)
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 112 ; 3 uses
  call void @_ZN6icu_788message210data_model9OptionMapC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(28) %i.ag, ptr noundef nonnull readonly align 8 dereferenceable(28) %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.ah = load i32, ptr %i.ad, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.ah, ptr %i.ai, align 8
  %i.aj = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %i.ae) #13 ; 0 uses
  call void @_ZN6icu_788message210data_model9OptionMapC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(28) %3, ptr noundef nonnull align 8 dereferenceable(28) %i.af)
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.al = load i8, ptr %i.d, align 8, !range !17, !noundef !18
  %i.am = load i8, ptr %i.ak, align 8, !range !17, !noundef !18
  store i8 %i.am, ptr %i.d, align 8
  store i8 %i.al, ptr %i.ak, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ao = load ptr, ptr %i.e, align 8
  %i.ap = load ptr, ptr %i.an, align 8
  store ptr %i.ap, ptr %i.e, align 8
  store ptr %i.ao, ptr %i.an, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.ar = load i32, ptr %i.f, align 8
  %i.as = load i32, ptr %i.aq, align 8
  store i32 %i.as, ptr %i.f, align 8
  store i32 %i.ar, ptr %i.aq, align 8
  call void @_ZN6icu_788message210data_model9OptionMapD2Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %3) #13
  call void @_ZN6icu_788message210data_model9OptionMapC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(28) %4, ptr noundef nonnull align 8 dereferenceable(28) %i.ag)
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.au = load i8, ptr %i.h, align 8, !range !17, !noundef !18
  %i.av = load i8, ptr %i.at, align 8, !range !17, !noundef !18
  store i8 %i.av, ptr %i.h, align 8
  store i8 %i.au, ptr %i.at, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ax = load ptr, ptr %i.i, align 8
  %i.ay = load ptr, ptr %i.aw, align 8
  store ptr %i.ay, ptr %i.i, align 8
  store ptr %i.ax, ptr %i.aw, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.ba = load i32, ptr %i.j, align 8
  %i.bb = load i32, ptr %i.az, align 8
  store i32 %i.bb, ptr %i.j, align 8
  store i32 %i.ba, ptr %i.az, align 8
  call void @_ZN6icu_788message210data_model9OptionMapD2Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model6MarkupE, i64 16), ptr %5, align 8
  call void @_ZN6icu_788message210data_model9OptionMapD2Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %i.ag) #13, !inline_history !32
  call void @_ZN6icu_788message210data_model9OptionMapD2Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %i.af) #13, !inline_history !32
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.ae) #13, !inline_history !32
  call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(144) %5) #13, !inline_history !32
  call void @_ZN6icu_788message210data_model9OptionMapD2Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %8) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  call void @_ZN6icu_788message210data_model9OptionMapD2Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %7) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_788message210data_model6Markup7BuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) initializes((0, 8), (96, 104)) %0) unnamed_addr #1 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6icu_788message210data_model6Markup7BuilderE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model9OptionMap7BuilderE, i64 16), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZN6icu_788message210data_model9OptionMap7BuilderD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #13, !inline_history !30
  br label %_ZN6icu_788message210data_model9OptionMap7BuilderD2Ev.exit

_ZN6icu_788message210data_model9OptionMap7BuilderD2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(17) %i.a) #13, !inline_history !30
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model9OptionMap7BuilderE, i64 16), ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  %.not.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i1, label %_ZN6icu_788message210data_model9OptionMap7BuilderD2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZN6icu_788message210data_model9OptionMap7BuilderD2Ev.exit
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(40) %i.i) #13, !inline_history !30
  br label %_ZN6icu_788message210data_model9OptionMap7BuilderD2Ev.exit2

_ZN6icu_788message210data_model9OptionMap7BuilderD2Ev.exit2: ; preds = %_ZN6icu_788message210data_model9OptionMap7BuilderD2Ev.exit, %bb.c
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(17) %i.g) #13, !inline_history !30
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.m) #13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_788message210data_model6Markup7BuilderD0Ev(ptr noundef nonnull align 8 dereferenceable(124) initializes((0, 8), (96, 104)) %0) unnamed_addr #1 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6icu_788message210data_model6Markup7BuilderE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model9OptionMap7BuilderE, i64 16), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
end_hunk_1
begin_hunk_2_@_ZN6icu_788message210data_model6MarkupD2Ev:bb.a
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_788message210data_model6MarkupD0Ev(ptr noundef nonnull align 8 dereferenceable(144) initializes((0, 8), (112, 120)) %0) unnamed_addr #1 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model6MarkupE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_ZN6icu_788message210data_model9OptionMapD2Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %i.a) #13, !inline_history !32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @_ZN6icu_788message210data_model9OptionMapD2Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %i.b) #13, !inline_history !32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.c) #13, !inline_history !32
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(144) %0) #13, !inline_history !32
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_788message210data_model10Expression7BuilderC2ER10UErrorCode(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(248) initializes((0, 10), (16, 24), (112, 113), (120, 138), (192, 201), (208, 220), (224, 241)) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) unnamed_addr #1 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6icu_788message210data_model10Expression7BuilderE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 0, ptr %i.b, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6icu_788message210data_model7OperandE, i64 16), ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model8OperatorE, i64 16), ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i16 2, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model9OptionMapE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i8 0, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr null, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i32 0, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 224
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model9OptionMap7BuilderE, i64 16), ptr %i.l, align 8, !alias.scope !75
  %i.m = load i32, ptr %1, align 4, !noalias !75
  %i.n = icmp slt i32 %i.m, 1
  br i1 %i.n, label %bb.b, label %_ZN6icu_788message210data_model9OptionMap7Builder10attributesER10UErrorCode.exit

bb.b:                                             ; preds = %bb.a
  %i.o = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 40) #13, !noalias !75 ; 7 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_ZN6icu_788message210data_model9OptionMap7Builder10attributesER10UErrorCode.exit, label %.thread.i.i.i.i.i

.thread.i.i.i.i.i:                                ; preds = %bb.b
  tail call void @_ZN6icu_787UVectorC1ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull align 4 dereferenceable(4) %1) #13, !noalias !75
  %i.q = load i32, ptr %1, align 4, !noalias !75
  %i.r = icmp slt i32 %i.q, 1
  br i1 %i.r, label %_ZN6icu_788message213createUVectorER10UErrorCode.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %.thread.i.i.i.i.i
  %i.s = load ptr, ptr %i.o, align 8, !noalias !75
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !noalias !75
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(40) %i.o) #13, !noalias !75, !inline_history !5
  br label %_ZN6icu_788message210data_model9OptionMap7Builder10attributesER10UErrorCode.exit

_ZN6icu_788message213createUVectorER10UErrorCode.exit.i.i.i: ; preds = %.thread.i.i.i.i.i
  %i.v = tail call noundef ptr @_ZN6icu_787UVector10setDeleterEPFvPvE(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull @uprv_deleteUObject_78) #13, !noalias !75 ; 0 uses
  %.pre.i.i.i = load i32, ptr %1, align 4, !noalias !75
  %i.w = icmp slt i32 %.pre.i.i.i, 1
  br i1 %i.w, label %bb.d, label %_ZN6icu_788message210data_model9OptionMap7Builder10attributesER10UErrorCode.exit

bb.d:                                             ; preds = %_ZN6icu_788message213createUVectorER10UErrorCode.exit.i.i.i
  %i.x = tail call noundef ptr @_ZN6icu_787UVector11setComparerEPFa8UElementS1_E(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull @_ZN6icu_788message2L12stringsEqualE8UElementS1_) #13, !noalias !75 ; 0 uses
  br label %_ZN6icu_788message210data_model9OptionMap7Builder10attributesER10UErrorCode.exit

_ZN6icu_788message210data_model9OptionMap7Builder10attributesER10UErrorCode.exit: ; preds = %bb.b, %bb.c, %bb.a, %_ZN6icu_788message213createUVectorER10UErrorCode.exit.i.i.i, %bb.d
  %.0.i.i.i = phi ptr [ %i.o, %bb.d ], [ null, %_ZN6icu_788message213createUVectorER10UErrorCode.exit.i.i.i ], [ null, %bb.a ], [ null, %bb.c ], [ null, %bb.b ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr %.0.i.i.i, ptr %i.z, align 8, !alias.scope !75
  store i8 0, ptr %i.y, align 8, !alias.scope !75
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef signext range(i8 0, 2) i8 @_ZNK6icu_788message210data_model10Expression22isStandaloneAnnotationEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(256) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load i8, ptr %i.a, align 8, !range !17, !noundef !18
  %i.c = xor i8 %i.b, 1
  ret i8 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef signext range(i8 0, 2) i8 @_ZNK6icu_788message210data_model10Expression14isFunctionCallEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(256) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load i8, ptr %i.a, align 8, !range !17, !noundef !18
  ret i8 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef ptr @_ZNK6icu_788message210data_model10Expression11getOperatorER10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(ret: address, provenance) dereferenceable(256) %0, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load i8, ptr %i.c, align 8, !range !17, !noundef !18
  %.not4 = icmp eq i8 %i.d, 0
  br i1 %.not4, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 27, ptr %1, align 4
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.0 = phi ptr [ null, %bb.c ], [ %i.e, %bb.d ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6icu_788message210data_model10Expression10getOperandEv(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(256) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(248) ptr @_ZN6icu_788message210data_model10Expression7Builder10setOperandEONS1_7OperandE(ptr noundef nonnull returned align 8 dereferenceable(248) initializes((8, 9)) %0, ptr noundef nonnull align 8 dereferenceable(104) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.icu_78::message2::data_model::Operand", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.a, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6icu_788message210data_model7OperandE, i64 16), ptr %2, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 4 uses
  store i8 0, ptr %i.e, align 8
  %i.f = load i8, ptr %i.d, align 8, !range !17, !noundef !18
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.b, label %_ZN6icu_788message210data_model7OperandC2ERKS2_.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  store i8 -1, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.j = load i8, ptr %i.i, align 8
  switch i8 %i.j, label %bb.e [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 -1, label %_ZNSt22_Optional_payload_baseISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEEE12_M_constructIJRKS6_EEEvDpOT_.exit.i.i.i.i.i.i
  ]

bb.c:                                             ; preds = %bb.b
  call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(96) %i.c) #13
  br label %_ZNSt22_Optional_payload_baseISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEEE12_M_constructIJRKS6_EEEvDpOT_.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model7LiteralE, i64 16), ptr %i.b, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load i8, ptr %i.l, align 8, !range !17, !noundef !18
  store i8 %i.m, ptr %i.k, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.n, ptr noundef nonnull align 8 dereferenceable(64) %i.o) #13
  br label %_ZNSt22_Optional_payload_baseISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEEE12_M_constructIJRKS6_EEEvDpOT_.exit.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.b
  unreachable

_ZNSt22_Optional_payload_baseISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEEE12_M_constructIJRKS6_EEEvDpOT_.exit.i.i.i.i.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.p = load i8, ptr %i.i, align 8
  store i8 %i.p, ptr %i.h, align 8
  store i8 1, ptr %i.e, align 8
  br label %_ZN6icu_788message210data_model7OperandC2ERKS2_.exit

_ZN6icu_788message210data_model7OperandC2ERKS2_.exit: ; preds = %bb.a, %_ZNSt22_Optional_payload_baseISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEEE12_M_constructIJRKS6_EEEvDpOT_.exit.i.i.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @_ZNSt8optionalISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEEE4swapERS7_(ptr noundef nonnull align 8 dereferenceable(96) %i.q, ptr noundef nonnull align 8 dereferenceable(96) %i.b)
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6icu_788message210data_model7OperandE, i64 16), ptr %2, align 8
  %i.r = load i8, ptr %i.e, align 8, !range !17, !noundef !18
  %i.s = trunc nuw i8 %i.r to i1
  store i8 0, ptr %i.e, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.u = load i8, ptr %i.t, align 8
  %.not.i.i.i.i.i.i.i = icmp ne i8 %i.u, -1
  %or.cond.not.i.i.i.i = select i1 %i.s, i1 %.not.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.not.i.i.i.i, label %bb.f, label %_ZN6icu_788message210data_model7OperandD2Ev.exit, !prof !26

bb.f:                                             ; preds = %_ZN6icu_788message210data_model7OperandC2ERKS2_.exit
  %i.v = load ptr, ptr %i.b, align 8
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(96) %i.b) #13, !inline_history !1
  br label %_ZN6icu_788message210data_model7OperandD2Ev.exit

_ZN6icu_788message210data_model7OperandD2Ev.exit: ; preds = %_ZN6icu_788message210data_model7OperandC2ERKS2_.exit, %bb.f
  call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(104) %2) #13, !inline_history !27
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(248) ptr @_ZN6icu_788message210data_model10Expression7Builder11setOperatorEONS1_8OperatorE(ptr noundef nonnull returned align 8 dereferenceable(248) initializes((9, 10)) %0, ptr noundef nonnull align 8 dereferenceable(104) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.icu_78::message2::data_model::Operator", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 1, ptr %i.a, align 1
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model8OperatorE, i64 16), ptr %2, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %i.c) #13
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72
  call void @_ZN6icu_788message210data_model9OptionMapC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(28) %i.d, ptr noundef nonnull align 8 dereferenceable(28) %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @_ZN6icu_7813UnicodeString4swapERS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.f, ptr noundef nonnull align 8 dereferenceable(64) %i.b) #13
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.i = load i8, ptr %i.g, align 8, !range !17, !noundef !18
  %i.j = load i8, ptr %i.h, align 8, !range !17, !noundef !18
  store i8 %i.j, ptr %i.g, align 8
  store i8 %i.i, ptr %i.h, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  %i.m = load ptr, ptr %i.k, align 8
  %i.n = load ptr, ptr %i.l, align 8
  store ptr %i.n, ptr %i.k, align 8
  store ptr %i.m, ptr %i.l, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.q = load i32, ptr %i.o, align 8
  %i.r = load i32, ptr %i.p, align 8
  store i32 %i.r, ptr %i.o, align 8
  store i32 %i.q, ptr %i.p, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model8OperatorE, i64 16), ptr %2, align 8
  call void @_ZN6icu_788message210data_model9OptionMapD2Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %i.d) #13, !inline_history !31
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.b) #13, !inline_history !31
  call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(104) %2) #13, !inline_history !31
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(248) ptr @_ZN6icu_788message210data_model10Expression7Builder12addAttributeERKNS_13UnicodeStringEONS1_7OperandER10UErrorCode(ptr nofree noundef nonnull readonly returned align 8 captures(ret: address, provenance) dereferenceable(248) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #1 align 2 {
bb.a:
  %4 = alloca %"class.icu_78::message2::data_model::Option", align 8 ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model6OptionE, i64 16), ptr %4, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %1) #13
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6icu_788message210data_model7OperandE, i64 16), ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 168 ; 4 uses
  store i8 0, ptr %i.g, align 8
  %i.h = load i8, ptr %i.f, align 8, !range !17, !noundef !18
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.b, label %_ZN6icu_788message210data_model6OptionC2ERKNS_13UnicodeStringEONS1_7OperandE.exit

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 160 ; 2 uses
  store i8 -1, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  %i.l = load i8, ptr %i.k, align 8
  switch i8 %i.l, label %bb.e [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 -1, label %_ZNSt22_Optional_payload_baseISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEEE12_M_constructIJRKS6_EEEvDpOT_.exit.i.i.i.i.i.i.i
  ]

bb.c:                                             ; preds = %bb.b
  call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(96) %i.d, ptr noundef nonnull align 8 dereferenceable(96) %i.e) #13
  br label %_ZNSt22_Optional_payload_baseISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEEE12_M_constructIJRKS6_EEEvDpOT_.exit.i.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model7LiteralE, i64 16), ptr %i.d, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = load i8, ptr %i.n, align 8, !range !17, !noundef !18
  store i8 %i.o, ptr %i.m, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.p, ptr noundef nonnull align 8 dereferenceable(64) %i.q) #13
  br label %_ZNSt22_Optional_payload_baseISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEEE12_M_constructIJRKS6_EEEvDpOT_.exit.i.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.b
  unreachable

_ZNSt22_Optional_payload_baseISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEEE12_M_constructIJRKS6_EEEvDpOT_.exit.i.i.i.i.i.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.r = load i8, ptr %i.k, align 8
  store i8 %i.r, ptr %i.j, align 8
  store i8 1, ptr %i.g, align 8
  br label %_ZN6icu_788message210data_model6OptionC2ERKNS_13UnicodeStringEONS1_7OperandE.exit

_ZN6icu_788message210data_model6OptionC2ERKNS_13UnicodeStringEONS1_7OperandE.exit: ; preds = %bb.a, %_ZNSt22_Optional_payload_baseISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEEE12_M_constructIJRKS6_EEEvDpOT_.exit.i.i.i.i.i.i.i
  %i.s = call noundef nonnull align 8 dereferenceable(17) ptr @_ZN6icu_788message210data_model9OptionMap7Builder3addEONS1_6OptionER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(17) %i.a, ptr noundef nonnull align 8 dereferenceable(176) %4, ptr noundef nonnull align 4 dereferenceable(4) %3) ; 0 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model6OptionE, i64 16), ptr %4, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6icu_788message210data_model7OperandE, i64 16), ptr %i.c, align 8
  %i.t = load i8, ptr %i.g, align 8, !range !17, !noundef !18
  %i.u = trunc nuw i8 %i.t to i1
  store i8 0, ptr %i.g, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 160
  %i.w = load i8, ptr %i.v, align 8
  %.not.i.i.i.i.i.i.i.i = icmp ne i8 %i.w, -1
  %or.cond.not.i.i.i.i.i = select i1 %i.u, i1 %.not.i.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.not.i.i.i.i.i, label %bb.f, label %_ZN6icu_788message210data_model6OptionD2Ev.exit, !prof !26

bb.f:                                             ; preds = %_ZN6icu_788message210data_model6OptionC2ERKNS_13UnicodeStringEONS1_7OperandE.exit
  %i.x = load ptr, ptr %i.d, align 8
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(96) %i.d) #13, !inline_history !4
  br label %_ZN6icu_788message210data_model6OptionD2Ev.exit

_ZN6icu_788message210data_model6OptionD2Ev.exit:  ; preds = %_ZN6icu_788message210data_model6OptionC2ERKNS_13UnicodeStringEONS1_7OperandE.exit, %bb.f
  call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(104) %i.c) #13, !inline_history !28
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.b) #13, !inline_history !29
  call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(176) %4) #13, !inline_history !29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_788message210data_model10Expression7Builder5buildER10UErrorCode(ptr dead_on_unwind noalias writable sret(%"class.icu_78::message2::data_model::Expression") align 8 initializes((0, 8), (112, 113), (120, 128), (216, 217), (224, 233), (240, 252)) %0, ptr noundef nonnull align 8 dereferenceable(248) %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %3 = alloca %"class.icu_78::message2::data_model::OptionMap", align 8 ; 7 uses
  %4 = alloca %"class.icu_78::message2::data_model::Expression", align 8 ; 7 uses
  %5 = alloca %"class.icu_78::message2::data_model::Expression", align 8 ; 14 uses
  %6 = alloca %"class.icu_78::message2::data_model::Expression", align 8 ; 13 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model10ExpressionE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6icu_788message210data_model7OperandE, i64 16), ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i8 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model9OptionMapE, i64 16), ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  store i8 0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  store ptr null, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  store i32 0, ptr %i.g, align 8
  %i.h = load i32, ptr %2, align 4
  %i.i = icmp slt i32 %i.h, 1
  %.sink22.sroa.gep = getelementptr inbounds nuw i8, ptr %5, i64 232
  %.sink22.sroa.gep23 = getelementptr inbounds nuw i8, ptr %6, i64 232
  %.sink22.sroa.gep24 = getelementptr inbounds nuw i8, ptr %4, i64 232
  %.sink22.sroa.gep26 = getelementptr inbounds nuw i8, ptr %5, i64 240
  %.sink22.sroa.gep27 = getelementptr inbounds nuw i8, ptr %6, i64 240
  %.sink22.sroa.gep28 = getelementptr inbounds nuw i8, ptr %4, i64 240
  %.sink22.sroa.gep30 = getelementptr inbounds nuw i8, ptr %5, i64 248
  %.sink22.sroa.gep31 = getelementptr inbounds nuw i8, ptr %6, i64 248
  %.sink22.sroa.gep32 = getelementptr inbounds nuw i8, ptr %4, i64 248
  br i1 %i.i, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load i8, ptr %i.j, align 8, !range !17, !noundef !18
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.n = load i8, ptr %i.m, align 8, !range !17, !noundef !18
  %.not5 = icmp ne i8 %i.n, 0
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.p = load i8, ptr %i.o, align 1, !range !17
  %i.q = trunc nuw i8 %i.p to i1
  %or.cond = select i1 %.not5, i1 true, i1 %i.q
  br i1 %or.cond, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  %.old = getelementptr inbounds nuw i8, ptr %1, i64 9
  %.old6 = load i8, ptr %.old, align 1, !range !17, !noundef !18
  %.old7 = trunc nuw i8 %.old6 to i1
  br i1 %.old7, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  store i32 27, ptr %2, align 4
  br label %bb.p

bb.f:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.s = load ptr, ptr %i.r, align 8, !noalias !78
  call void @_ZN6icu_788message210data_model9OptionMapC2ERKNS_7UVectorER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(28) %3, ptr noundef nonnull align 8 dereferenceable(40) %i.s, ptr noundef nonnull align 4 dereferenceable(4) %2)
  %i.t = load i8, ptr %i.j, align 8, !range !17, !noundef !18
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.w = load i8, ptr %i.v, align 1, !range !17, !noundef !18
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @_ZN6icu_788message210data_model10ExpressionC2ERKNS1_8OperatorERKNS1_7OperandERKNS1_9OptionMapE(ptr noundef nonnull align 8 dereferenceable(256) %4, ptr noundef nonnull align 8 dereferenceable(104) %i.y, ptr noundef nonnull align 8 dereferenceable(104) %i.z, ptr noundef nonnull align 8 dereferenceable(28) %3)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @_ZNSt8optionalIN6icu_788message210data_model8OperatorEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(112) %i.aa, ptr noundef nonnull align 8 dereferenceable(112) %i.ab) #13
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 128
  call void @_ZNSt8optionalISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEEE4swapERS7_(ptr noundef nonnull align 8 dereferenceable(96) %i.ac, ptr noundef nonnull align 8 dereferenceable(96) %i.ad)
  br label %bb.o

bb.i:                                             ; preds = %bb.g
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model10ExpressionE, i64 16), ptr %5, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 112
  store i8 0, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 120
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6icu_788message210data_model7OperandE, i64 16), ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 128 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 216 ; 2 uses
  store i8 0, ptr %i.aj, align 8
  %i.ak = load i8, ptr %i.ai, align 8, !range !17, !noundef !18
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.j, label %_ZN6icu_788message210data_model10ExpressionC2ERKNS1_7OperandERKNS1_9OptionMapE.exit

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 208 ; 2 uses
  store i8 -1, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 8
  switch i8 %i.ao, label %bb.m [
    i8 0, label %bb.k
    i8 1, label %bb.l
    i8 -1, label %_ZNSt22_Optional_payload_baseISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEEE12_M_constructIJRKS6_EEEvDpOT_.exit.i.i.i.i.i.i.i
  ]

bb.k:                                             ; preds = %bb.j
  call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(96) %i.ag, ptr noundef nonnull align 8 dereferenceable(96) %i.ah) #13
  br label %_ZNSt22_Optional_payload_baseISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEEE12_M_constructIJRKS6_EEEvDpOT_.exit.i.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model7LiteralE, i64 16), ptr %i.ag, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 136
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ar = load i8, ptr %i.aq, align 8, !range !17, !noundef !18
  store i8 %i.ar, ptr %i.ap, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 144
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.as, ptr noundef nonnull align 8 dereferenceable(64) %i.at) #13
  br label %_ZNSt22_Optional_payload_baseISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEEE12_M_constructIJRKS6_EEEvDpOT_.exit.i.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.j
  unreachable

_ZNSt22_Optional_payload_baseISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEEE12_M_constructIJRKS6_EEEvDpOT_.exit.i.i.i.i.i.i.i: ; preds = %bb.l, %bb.k, %bb.j
  %i.au = load i8, ptr %i.an, align 8
  store i8 %i.au, ptr %i.am, align 8
  store i8 1, ptr %i.aj, align 8
  br label %_ZN6icu_788message210data_model10ExpressionC2ERKNS1_7OperandERKNS1_9OptionMapE.exit

_ZN6icu_788message210data_model10ExpressionC2ERKNS1_7OperandERKNS1_9OptionMapE.exit: ; preds = %bb.i, %_ZNSt22_Optional_payload_baseISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEEE12_M_constructIJRKS6_EEEvDpOT_.exit.i.i.i.i.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 224
  call void @_ZN6icu_788message210data_model9OptionMapC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(28) %i.av, ptr noundef nonnull align 8 dereferenceable(28) %3)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @_ZNSt8optionalIN6icu_788message210data_model8OperatorEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(112) %i.aw, ptr noundef nonnull align 8 dereferenceable(112) %i.ax) #13
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @_ZNSt8optionalISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEEE4swapERS7_(ptr noundef nonnull align 8 dereferenceable(96) %i.ay, ptr noundef nonnull align 8 dereferenceable(96) %i.ag)
  br label %bb.o

bb.n:                                             ; preds = %bb.f
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model10ExpressionE, i64 16), ptr %6, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model8OperatorE, i64 16), ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 128
  call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.ba, ptr noundef nonnull align 8 dereferenceable(64) %i.bb) #13
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 192
  call void @_ZN6icu_788message210data_model9OptionMapC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(28) %i.bc, ptr noundef nonnull align 8 dereferenceable(28) %i.bd)
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 112
  store i8 1, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 120
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6icu_788message210data_model7OperandE, i64 16), ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 216
  store i8 0, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 224
  call void @_ZN6icu_788message210data_model9OptionMapC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(28) %i.bh, ptr noundef nonnull align 8 dereferenceable(28) %3)
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZNSt8optionalIN6icu_788message210data_model8OperatorEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(112) %i.bi, ptr noundef nonnull align 8 dereferenceable(112) %i.az) #13
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 128
  call void @_ZNSt8optionalISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEEE4swapERS7_(ptr noundef nonnull align 8 dereferenceable(96) %i.bj, ptr noundef nonnull align 8 dereferenceable(96) %i.bk)
  br label %bb.o

bb.o:                                             ; preds = %_ZN6icu_788message210data_model10ExpressionC2ERKNS1_7OperandERKNS1_9OptionMapE.exit, %bb.n, %bb.h
  %.sink22.sroa.phi = phi ptr [ %.sink22.sroa.gep, %_ZN6icu_788message210data_model10ExpressionC2ERKNS1_7OperandERKNS1_9OptionMapE.exit ], [ %.sink22.sroa.gep23, %bb.n ], [ %.sink22.sroa.gep24, %bb.h ] ; 2 uses
  %.sink22.sroa.phi25 = phi ptr [ %.sink22.sroa.gep26, %_ZN6icu_788message210data_model10ExpressionC2ERKNS1_7OperandERKNS1_9OptionMapE.exit ], [ %.sink22.sroa.gep27, %bb.n ], [ %.sink22.sroa.gep28, %bb.h ] ; 2 uses
  %.sink22.sroa.phi29 = phi ptr [ %.sink22.sroa.gep30, %_ZN6icu_788message210data_model10ExpressionC2ERKNS1_7OperandERKNS1_9OptionMapE.exit ], [ %.sink22.sroa.gep31, %bb.n ], [ %.sink22.sroa.gep32, %bb.h ] ; 2 uses
  %.sink22 = phi ptr [ %5, %_ZN6icu_788message210data_model10ExpressionC2ERKNS1_7OperandERKNS1_9OptionMapE.exit ], [ %6, %bb.n ], [ %4, %bb.h ]
  %i.bl = load i8, ptr %i.e, align 8, !range !17, !noundef !18
  %i.bm = load i8, ptr %.sink22.sroa.phi, align 8, !range !17, !noundef !18
  store i8 %i.bm, ptr %i.e, align 8
  store i8 %i.bl, ptr %.sink22.sroa.phi, align 8
  %i.bn = load ptr, ptr %i.f, align 8
  %i.bo = load ptr, ptr %.sink22.sroa.phi25, align 8
end_hunk_2
begin_hunk_3_@_ZN6icu_788message210data_model10ExpressionC2ERKNS1_8OperatorERKNS1_7OperandERKNS1_9OptionMapE:bb.a
  switch i8 %i.p, label %bb.e [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 -1, label %_ZNSt22_Optional_payload_baseISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEEE12_M_constructIJRKS6_EEEvDpOT_.exit.i.i.i.i.i.i
  ]

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(96) %i.h, ptr noundef nonnull align 8 dereferenceable(96) %i.i) #13
  br label %_ZNSt22_Optional_payload_baseISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEEE12_M_constructIJRKS6_EEEvDpOT_.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model7LiteralE, i64 16), ptr %i.h, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.s = load i8, ptr %i.r, align 8, !range !17, !noundef !18
  store i8 %i.s, ptr %i.q, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 24
  tail call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.t, ptr noundef nonnull align 8 dereferenceable(64) %i.u) #13
  br label %_ZNSt22_Optional_payload_baseISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEEE12_M_constructIJRKS6_EEEvDpOT_.exit.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.b
  unreachable

_ZNSt22_Optional_payload_baseISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEEE12_M_constructIJRKS6_EEEvDpOT_.exit.i.i.i.i.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.v = load i8, ptr %i.o, align 8
  store i8 %i.v, ptr %i.n, align 8
  store i8 1, ptr %i.k, align 8
  br label %_ZN6icu_788message210data_model7OperandC2ERKS2_.exit

_ZN6icu_788message210data_model7OperandC2ERKS2_.exit: ; preds = %bb.a, %_ZNSt22_Optional_payload_baseISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEEE12_M_constructIJRKS6_EEEvDpOT_.exit.i.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 224
  tail call void @_ZN6icu_788message210data_model9OptionMapC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(28) %i.w, ptr noundef nonnull align 8 dereferenceable(28) %3)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(256) ptr @_ZN6icu_788message210data_model10ExpressionaSES2_(ptr noundef nonnull returned align 8 dereferenceable(256) %0, ptr noundef align 8 %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZNSt8optionalIN6icu_788message210data_model8OperatorEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(112) %i.a, ptr noundef nonnull align 8 dereferenceable(112) %i.b) #13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 128
  tail call void @_ZNSt8optionalISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEEE4swapERS7_(ptr noundef nonnull align 8 dereferenceable(96) %i.c, ptr noundef nonnull align 8 dereferenceable(96) %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 2 uses
  %i.g = load i8, ptr %i.e, align 8, !range !17, !noundef !18
  %i.h = load i8, ptr %i.f, align 8, !range !17, !noundef !18
  store i8 %i.h, ptr %i.e, align 8
  store i8 %i.g, ptr %i.f, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 2 uses
  %i.k = load ptr, ptr %i.i, align 8
  %i.l = load ptr, ptr %i.j, align 8
  store ptr %i.l, ptr %i.i, align 8
  store ptr %i.k, ptr %i.j, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  %i.o = load i32, ptr %i.m, align 8
  %i.p = load i32, ptr %i.n, align 8
  store i32 %i.p, ptr %i.m, align 8
  store i32 %i.o, ptr %i.n, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN6icu_788message210data_model10ExpressionC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(256) initializes((0, 8), (112, 113), (120, 128), (216, 217), (224, 233), (240, 252)) %0) unnamed_addr #7 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model10ExpressionE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6icu_788message210data_model7OperandE, i64 16), ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i8 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model9OptionMapE, i64 16), ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i8 0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 240
  store ptr null, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i32 0, ptr %i.g, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_788message210data_model10ExpressionC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(256) initializes((0, 8), (112, 113)) %0, ptr noundef nonnull align 8 dereferenceable(256) %1) unnamed_addr #1 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model10ExpressionE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  store i8 0, ptr %i.b, align 8
  %i.c = load i8, ptr %i.a, align 8, !range !17, !noundef !18
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZNSt8optionalIN6icu_788message210data_model8OperatorEEC2ERKS4_.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model8OperatorE, i64 16), ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.f, ptr noundef nonnull align 8 dereferenceable(64) %i.g) #13
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 80
  tail call void @_ZN6icu_788message210data_model9OptionMapC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(28) %i.h, ptr noundef nonnull align 8 dereferenceable(28) %i.i)
  store i8 1, ptr %i.b, align 8
  br label %_ZNSt8optionalIN6icu_788message210data_model8OperatorEEC2ERKS4_.exit

_ZNSt8optionalIN6icu_788message210data_model8OperatorEEC2ERKS4_.exit: ; preds = %bb.a, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6icu_788message210data_model7OperandE, i64 16), ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  store i8 0, ptr %i.n, align 8
  %i.o = load i8, ptr %i.m, align 8, !range !17, !noundef !18
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.c, label %_ZN6icu_788message210data_model7OperandC2ERKS2_.exit

bb.c:                                             ; preds = %_ZNSt8optionalIN6icu_788message210data_model8OperatorEEC2ERKS4_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  store i8 -1, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  %i.s = load i8, ptr %i.r, align 8
  switch i8 %i.s, label %bb.f [
    i8 0, label %bb.d
    i8 1, label %bb.e
    i8 -1, label %_ZNSt22_Optional_payload_baseISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEEE12_M_constructIJRKS6_EEEvDpOT_.exit.i.i.i.i.i.i
  ]

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(96) %i.k, ptr noundef nonnull align 8 dereferenceable(96) %i.l) #13
  br label %_ZNSt22_Optional_payload_baseISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEEE12_M_constructIJRKS6_EEEvDpOT_.exit.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model7LiteralE, i64 16), ptr %i.k, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.v = load i8, ptr %i.u, align 8, !range !17, !noundef !18
  store i8 %i.v, ptr %i.t, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 144
  tail call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.w, ptr noundef nonnull align 8 dereferenceable(64) %i.x) #13
  br label %_ZNSt22_Optional_payload_baseISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEEE12_M_constructIJRKS6_EEEvDpOT_.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.c
  unreachable

_ZNSt22_Optional_payload_baseISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEEE12_M_constructIJRKS6_EEEvDpOT_.exit.i.i.i.i.i.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.y = load i8, ptr %i.r, align 8
  store i8 %i.y, ptr %i.q, align 8
  store i8 1, ptr %i.n, align 8
  br label %_ZN6icu_788message210data_model7OperandC2ERKS2_.exit

_ZN6icu_788message210data_model7OperandC2ERKS2_.exit: ; preds = %_ZNSt8optionalIN6icu_788message210data_model8OperatorEEC2ERKS4_.exit, %_ZNSt22_Optional_payload_baseISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEEE12_M_constructIJRKS6_EEEvDpOT_.exit.i.i.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 224
  tail call void @_ZN6icu_788message210data_model9OptionMapC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(28) %i.z, ptr noundef nonnull align 8 dereferenceable(28) %i.aa)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_788message210data_model10Expression7BuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(248) dereferenceable(248) initializes((0, 8), (224, 232)) %0) unnamed_addr #1 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6icu_788message210data_model10Expression7BuilderE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model9OptionMap7BuilderE, i64 16), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZN6icu_788message210data_model9OptionMap7BuilderD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #13, !inline_history !30
  br label %_ZN6icu_788message210data_model9OptionMap7BuilderD2Ev.exit

_ZN6icu_788message210data_model9OptionMap7BuilderD2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(17) %i.a) #13, !inline_history !30
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model8OperatorE, i64 16), ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 192
  tail call void @_ZN6icu_788message210data_model9OptionMapD2Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %i.h) #13, !inline_history !31
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.i) #13, !inline_history !31
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(104) %i.g) #13, !inline_history !31
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6icu_788message210data_model7OperandE, i64 16), ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.l = load i8, ptr %i.k, align 8, !range !17, !noundef !18
  %i.m = trunc nuw i8 %i.l to i1
  store i8 0, ptr %i.k, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.o = load i8, ptr %i.n, align 8
  %.not.i.i.i.i.i.i.i = icmp ne i8 %i.o, -1
  %or.cond.not.i.i.i.i = select i1 %i.m, i1 %.not.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.not.i.i.i.i, label %bb.c, label %_ZN6icu_788message210data_model7OperandD2Ev.exit, !prof !26

bb.c:                                             ; preds = %_ZN6icu_788message210data_model9OptionMap7BuilderD2Ev.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(96) %i.p) #13, !inline_history !1
  br label %_ZN6icu_788message210data_model7OperandD2Ev.exit

_ZN6icu_788message210data_model7OperandD2Ev.exit: ; preds = %_ZN6icu_788message210data_model9OptionMap7BuilderD2Ev.exit, %bb.c
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(104) %i.j) #13, !inline_history !27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_788message210data_model10Expression7BuilderD0Ev(ptr noundef nonnull align 8 dereferenceable(248) initializes((0, 8), (224, 232)) %0) unnamed_addr #1 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6icu_788message210data_model10Expression7BuilderE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model9OptionMap7BuilderE, i64 16), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN6icu_788message210data_model9OptionMap7BuilderD2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #13, !inline_history !80
  br label %_ZN6icu_788message210data_model9OptionMap7BuilderD2Ev.exit.i

_ZN6icu_788message210data_model9OptionMap7BuilderD2Ev.exit.i: ; preds = %bb.b, %bb.a
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(17) %i.a) #13, !inline_history !80
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model8OperatorE, i64 16), ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 192
  tail call void @_ZN6icu_788message210data_model9OptionMapD2Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %i.h) #13, !inline_history !81
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.i) #13, !inline_history !81
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(104) %i.g) #13, !inline_history !81
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6icu_788message210data_model7OperandE, i64 16), ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.l = load i8, ptr %i.k, align 8, !range !17, !noundef !18
  %i.m = trunc nuw i8 %i.l to i1
  store i8 0, ptr %i.k, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.o = load i8, ptr %i.n, align 8
  %.not.i.i.i.i.i.i.i.i = icmp ne i8 %i.o, -1
  %or.cond.not.i.i.i.i.i = select i1 %i.m, i1 %.not.i.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.not.i.i.i.i.i, label %bb.c, label %_ZN6icu_788message210data_model10Expression7BuilderD2Ev.exit, !prof !26

bb.c:                                             ; preds = %_ZN6icu_788message210data_model9OptionMap7BuilderD2Ev.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(96) %i.p) #13, !inline_history !79
  br label %_ZN6icu_788message210data_model10Expression7BuilderD2Ev.exit

_ZN6icu_788message210data_model10Expression7BuilderD2Ev.exit: ; preds = %_ZN6icu_788message210data_model9OptionMap7BuilderD2Ev.exit.i, %bb.c
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(104) %i.j) #13, !inline_history !82
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_788message210data_model10ExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(256) dereferenceable(256) initializes((0, 8), (224, 232)) %0) unnamed_addr #1 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model10ExpressionE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  tail call void @_ZN6icu_788message210data_model9OptionMapD2Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %i.a) #13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6icu_788message210data_model7OperandE, i64 16), ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !range !17, !noundef !18
  %i.e = trunc nuw i8 %i.d to i1
  store i8 0, ptr %i.c, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.g = load i8, ptr %i.f, align 8
  %.not.i.i.i.i.i.i.i = icmp ne i8 %i.g, -1
  %or.cond.not.i.i.i.i = select i1 %i.e, i1 %.not.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.not.i.i.i.i, label %bb.b, label %_ZN6icu_788message210data_model7OperandD2Ev.exit, !prof !26

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(96) %i.h) #13, !inline_history !1
  br label %_ZN6icu_788message210data_model7OperandD2Ev.exit

_ZN6icu_788message210data_model7OperandD2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(104) %i.b) #13, !inline_history !27
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.l = load i8, ptr %i.k, align 8, !range !17, !noundef !18
  %i.m = trunc nuw i8 %i.l to i1
  store i8 0, ptr %i.k, align 8
  br i1 %i.m, label %bb.c, label %_ZNSt14_Optional_baseIN6icu_788message210data_model8OperatorELb0ELb0EED2Ev.exit

bb.c:                                             ; preds = %_ZN6icu_788message210data_model7OperandD2Ev.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model8OperatorE, i64 16), ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @_ZN6icu_788message210data_model9OptionMapD2Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %i.o) #13, !inline_history !31
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.p) #13, !inline_history !31
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(112) %i.n) #13, !inline_history !31
  br label %_ZNSt14_Optional_baseIN6icu_788message210data_model8OperatorELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN6icu_788message210data_model8OperatorELb0ELb0EED2Ev.exit: ; preds = %_ZN6icu_788message210data_model7OperandD2Ev.exit, %bb.c
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_788message210data_model10ExpressionD0Ev(ptr noundef nonnull align 8 dereferenceable(256) initializes((0, 8), (224, 232)) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN6icu_788message210data_model10ExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(256) dereferenceable(256) %0) #13
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_788message210data_model11PatternPartC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(272) initializes((0, 8), (264, 265)) %0, ptr noundef nonnull align 8 dereferenceable(272) %1) unnamed_addr #1 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model11PatternPartE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  store i8 -1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8
  switch i8 %i.e, label %bb.e [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 -1, label %_ZNSt7variantIJN6icu_7813UnicodeStringENS0_8message210data_model10ExpressionENS3_6MarkupEEEC2ERKS6_.exit
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(257) %i.a, ptr noundef nonnull align 8 dereferenceable(257) %i.b) #13
  br label %_ZNSt7variantIJN6icu_7813UnicodeStringENS0_8message210data_model10ExpressionENS3_6MarkupEEEC2ERKS6_.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN6icu_788message210data_model10ExpressionC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(257) %i.a, ptr noundef nonnull align 8 dereferenceable(257) %i.b)
  br label %_ZNSt7variantIJN6icu_7813UnicodeStringENS0_8message210data_model10ExpressionENS3_6MarkupEEEC2ERKS6_.exit

bb.d:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model6MarkupE, i64 16), ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i32, ptr %i.g, align 8
  store i32 %i.h, ptr %i.f, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.i, ptr noundef nonnull align 8 dereferenceable(64) %i.j) #13
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 88
  tail call void @_ZN6icu_788message210data_model9OptionMapC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(28) %i.k, ptr noundef nonnull align 8 dereferenceable(28) %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 120
  tail call void @_ZN6icu_788message210data_model9OptionMapC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(28) %i.m, ptr noundef nonnull align 8 dereferenceable(28) %i.n)
  br label %_ZNSt7variantIJN6icu_7813UnicodeStringENS0_8message210data_model10ExpressionENS3_6MarkupEEEC2ERKS6_.exit

bb.e:                                             ; preds = %bb.a
  unreachable

_ZNSt7variantIJN6icu_7813UnicodeStringENS0_8message210data_model10ExpressionENS3_6MarkupEEEC2ERKS6_.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.o = load i8, ptr %i.d, align 8
  store i8 %i.o, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(256) ptr @_ZNK6icu_788message210data_model11PatternPart8contentsEv(ptr nofree noundef nonnull readonly align 8 captures(ret: address, provenance) dereferenceable(272) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(144) ptr @_ZNK6icu_788message210data_model11PatternPart8asMarkupEv(ptr nofree noundef nonnull readonly align 8 captures(ret: address, provenance) dereferenceable(272) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_788message210data_model11PatternPart6asTextEv(ptr nofree noundef nonnull readonly align 8 captures(ret: address, provenance) dereferenceable(272) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(272) ptr @_ZN6icu_788message210data_model11PatternPartaSES2_(ptr noundef nonnull returned align 8 dereferenceable(272) %0, ptr noundef align 8 %1) local_unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %class.anon.111, align 8            ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 264
  %.pre.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i, align 8
  %i.c = icmp eq i8 %.pre.i.i.i, -1
  br i1 %i.c, label %bb.b, label %.loopexit.i.i, !prof !33

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.e = load i8, ptr %i.d, align 8
  %.not.i5.i.peel.i.i = icmp eq i8 %i.e, -1
  br i1 %.not.i5.i.peel.i.i, label %_ZN6icu_788message210data_model4swapERNS1_11PatternPartES3_.exit, label %.loopexit.i.i, !prof !33

.loopexit.i.i:                                    ; preds = %bb.b, %bb.a
  %.tr.i.lcssa.i.i = phi ptr [ %i.a, %bb.a ], [ %i.b, %bb.b ]
  %.tr6.i.lcssa.i.i = phi ptr [ %i.b, %bb.a ], [ %i.a, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  store ptr %.tr.i.lcssa.i.i, ptr %2, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.tr6.i.lcssa.i.i, ptr %i.f, align 8
  call void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNSt7variantIJN6icu_7813UnicodeStringENS4_8message210data_model10ExpressionENS7_6MarkupEEE4swapERSA_EUlOT_T0_E_JSB_EEDcOSE_DpOT1_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(257) %.tr6.i.lcssa.i.i), !inline_history !6
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %_ZN6icu_788message210data_model4swapERNS1_11PatternPartES3_.exit

_ZN6icu_788message210data_model4swapERNS1_11PatternPartES3_.exit: ; preds = %bb.b, %.loopexit.i.i
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_788message210data_model11PatternPartD2Ev(ptr noundef nonnull align 8 dead_on_return(272) dereferenceable(272) initializes((0, 8)) %0) unnamed_addr #1 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model11PatternPartE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.b = load i8, ptr %i.a, align 8
  %.not.i.i = icmp eq i8 %i.b, -1
  br i1 %.not.i.i, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN6icu_7813UnicodeStringENS2_8message210data_model10ExpressionENS5_6MarkupEEED2Ev.exit, label %bb.b, !prof !33

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(257) %i.c) #13, !inline_history !83
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN6icu_7813UnicodeStringENS2_8message210data_model10ExpressionENS5_6MarkupEEED2Ev.exit

_ZNSt8__detail9__variant16_Variant_storageILb0EJN6icu_7813UnicodeStringENS2_8message210data_model10ExpressionENS5_6MarkupEEED2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_788message210data_model11PatternPartD0Ev(ptr noundef nonnull align 8 dereferenceable(272) initializes((0, 8)) %0) unnamed_addr #1 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model11PatternPartE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.b = load i8, ptr %i.a, align 8
  %.not.i.i.i = icmp eq i8 %i.b, -1
  br i1 %.not.i.i.i, label %_ZN6icu_788message210data_model11PatternPartD2Ev.exit, label %bb.b, !prof !33

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(257) %i.c) #13, !inline_history !7
  br label %_ZN6icu_788message210data_model11PatternPartD2Ev.exit

_ZN6icu_788message210data_model11PatternPartD2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(272) %0) #13, !inline_history !34
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_788message210data_model7PatternC2ERKNS_7UVectorER10UErrorCode(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) initializes((0, 9), (12, 24)) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2) unnamed_addr #1 align 2 {
bb.a:
  %3 = alloca %class.anon.111, align 8            ; 5 uses
  %4 = alloca %"class.icu_78::message2::data_model::PatternPart", align 8 ; 13 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model7PatternE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8
  store i32 %i.d, ptr %i.b, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
end_hunk_3
