Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/messageformat2_data_model?download=true
inline.NumInlined: 1314
inline.NumDeleted: 800
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN6icu_7813UnicodeStringC1Ei
declare void @_ZN6icu_7813UnicodeStringC1Ei(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef) unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_788message210data_model7Literal8unquotedEv(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(80) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  ret ptr %i.a
}

; Function Attrs: nounwind
declare void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64)) unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define noundef nonnull align 8 dereferenceable(80) ptr @_ZN6icu_788message210data_model7LiteralaSES2_(ptr noundef nonnull returned align 8 dereferenceable(80) %0, ptr noundef align 8 %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i8, ptr %i.a, align 8, !tbaa !43, !range !24, !noundef !25
  %i.d = load i8, ptr %i.b, align 8, !tbaa !43, !range !24, !noundef !25
  store i8 %i.d, ptr %i.a, align 8, !tbaa !43
  store i8 %i.c, ptr %i.b, align 8, !tbaa !43
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @_ZN6icu_7813UnicodeString4swapERS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %i.f) #18
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_788message210data_model7LiteralD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) initializes((0, 9)) %0) unnamed_addr #3 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model7LiteralE, i64 16), ptr %0, align 8, !tbaa !29
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.a, align 8, !tbaa !38
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.b) #18
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_788message210data_model7LiteralD0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN6icu_788message210data_model7LiteralD1Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) #18
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_788message210data_model7OperandC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(104) initializes((0, 8), (96, 97)) %0, ptr noundef nonnull align 8 dereferenceable(104) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6icu_788message210data_model7OperandE, i64 16), ptr %0, align 8, !tbaa !29
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  store i8 0, ptr %i.d, align 8, !tbaa !45
  %i.e = load i8, ptr %i.c, align 8, !tbaa !45, !range !24, !noundef !25
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %_ZNSt8optionalISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEEEC2ERKS7_.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  store i8 -1, ptr %i.g, align 8, !tbaa !47
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.i = load i8, ptr %i.h, align 8, !tbaa !47
  switch i8 %i.i, label %bb.f [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 -1, label %_ZNSt22_Optional_payload_baseISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEEE12_M_constructIJRKS6_EEEvDpOT_.exit.i.i.i.i.i
  ]

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(96) %i.b)
          to label %_ZNSt22_Optional_payload_baseISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEEE12_M_constructIJRKS6_EEEvDpOT_.exit.i.i.i.i.i unwind label %bb.g

bb.d:                                             ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model7LiteralE, i64 16), ptr %i.a, align 8, !tbaa !29
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load i8, ptr %i.k, align 8, !tbaa !38, !range !24, !noundef !25
  store i8 %i.l, ptr %i.j, align 8, !tbaa !38
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.m, ptr noundef nonnull align 8 dereferenceable(64) %i.n)
          to label %_ZNSt22_Optional_payload_baseISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEEE12_M_constructIJRKS6_EEEvDpOT_.exit.i.i.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(96) %i.a) #18
  br label %.body.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.b
  unreachable

bb.g:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i.i.i.i.i.i.i.i

.body.i.i.i.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.g, %bb.e
  %eh.lpad-body.i.i.i.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.p, %bb.g ], [ %i.o, %bb.e ]
  %i.q = load i8, ptr %i.g, align 8, !tbaa !47
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.q, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.body, label %bb.h, !prof !48

bb.h:                                             ; preds = %.body.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(96) %i.a) #18, !inline_history !152
  br label %.body

_ZNSt22_Optional_payload_baseISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEEE12_M_constructIJRKS6_EEEvDpOT_.exit.i.i.i.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.t = load i8, ptr %i.h, align 8, !tbaa !47
  store i8 %i.t, ptr %i.g, align 8, !tbaa !47
  store i8 1, ptr %i.d, align 8, !tbaa !45
  br label %_ZNSt8optionalISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEEEC2ERKS7_.exit

_ZNSt8optionalISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEEEC2ERKS7_.exit: ; preds = %_ZNSt22_Optional_payload_baseISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEEE12_M_constructIJRKS6_EEEvDpOT_.exit.i.i.i.i.i, %bb.a
  ret void

.body:                                            ; preds = %.body.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.h
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #18
  resume { ptr, i32 } %eh.lpad-body.i.i.i.i.i.i.i.i.i.i.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define noundef nonnull align 8 dereferenceable(104) ptr @_ZN6icu_788message210data_model7OperandaSES2_(ptr noundef nonnull returned align 8 dereferenceable(104) %0, ptr noundef align 8 %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZNSt8optionalISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEEE4swapERS7_(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(96) %i.b)
          to label %_ZN6icu_788message210data_model4swapERNS1_7OperandES3_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #19
  unreachable

_ZN6icu_788message210data_model4swapERNS1_7OperandES3_.exit: ; preds = %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef signext range(i8 0, 2) i8 @_ZNK6icu_788message210data_model7Operand10isVariableEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load i8, ptr %i.a, align 8, !tbaa !45, !range !24, !noundef !25
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load i8, ptr %i.d, align 8
  %i.f = icmp eq i8 %i.e, 0
  %narrow = select i1 %i.c, i1 %i.f, i1 false
  %i.g = zext i1 %narrow to i8
  ret i8 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef signext range(i8 0, 2) i8 @_ZNK6icu_788message210data_model7Operand9isLiteralEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load i8, ptr %i.a, align 8, !tbaa !45, !range !24, !noundef !25
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load i8, ptr %i.d, align 8
  %i.f = icmp eq i8 %i.e, 1
  %narrow = select i1 %i.c, i1 %i.f, i1 false
  %i.g = zext i1 %narrow to i8
  ret i8 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef signext range(i8 0, 2) i8 @_ZNK6icu_788message210data_model7Operand6isNullEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load i8, ptr %i.a, align 8, !tbaa !45, !range !24, !noundef !25
  %i.c = xor i8 %i.b, 1
  ret i8 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull align 8 dereferenceable(80) ptr @_ZNK6icu_788message210data_model7Operand9asLiteralEv(ptr nofree noundef nonnull readonly align 8 captures(ret: address, provenance) dereferenceable(104) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_788message210data_model7Operand10asVariableEv(ptr nofree noundef nonnull readonly align 8 captures(ret: address, provenance) dereferenceable(104) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_788message210data_model7OperandD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) initializes((0, 8)) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6icu_788message210data_model7OperandE, i64 16), ptr %0, align 8, !tbaa !29
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %1 = load i8, ptr %i.a, align 8, !tbaa !45, !range !24, !noundef !25
  %2 = trunc nuw i8 %1 to i1
  store i8 0, ptr %i.a, align 8, !tbaa !45
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load i8, ptr %i.b, align 8
  %.not.i.i.i.i.i.i = icmp ne i8 %i.c, -1
  %or.cond.not.i.i.i = select i1 %2, i1 %.not.i.i.i.i.i.i, i1 false, !prof !154
  br i1 %or.cond.not.i.i.i, label %bb.b, label %_ZNSt14_Optional_baseISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEELb0ELb0EED2Ev.exit, !prof !154

bb.b:                                             ; preds = %bb.a
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %3, align 8, !tbaa !29
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(96) %3) #18, !inline_history !153
  br label %_ZNSt14_Optional_baseISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEELb0ELb0EED2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_788message210data_model7OperandD0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN6icu_788message210data_model7OperandD1Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %0) #18
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define noundef nonnull align 8 dereferenceable(96) ptr @_ZN6icu_788message210data_model3KeyaSES2_(ptr noundef nonnull returned align 8 dereferenceable(96) %0, ptr noundef align 8 %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !23, !range !24, !noundef !25
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %i.g = load i8, ptr %i.f, align 8, !tbaa !23, !range !24, !noundef !25
  %i.h = trunc nuw i8 %i.g to i1                  ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = load i8, ptr %i.k, align 8, !tbaa !43, !range !24, !noundef !25
  %i.m = load i8, ptr %i.i, align 8, !tbaa !43, !range !24, !noundef !25
  store i8 %i.m, ptr %i.k, align 8, !tbaa !43
  store i8 %i.l, ptr %i.i, align 8, !tbaa !43
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_ZN6icu_7813UnicodeString4swapERS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.j, ptr noundef nonnull align 8 dereferenceable(64) %i.n) #18
  br label %_ZN6icu_788message210data_model4swapERNS1_3KeyES3_.exit

bb.d:                                             ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model7LiteralE, i64 16), ptr %i.b, align 8, !tbaa !29
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load i8, ptr %i.o, align 8, !tbaa !38, !range !24, !noundef !25
  store i8 %i.p, ptr %i.i, align 8, !tbaa !38
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.q, ptr noundef nonnull align 8 dereferenceable(64) %i.j)
          to label %_ZNSt19_Optional_base_implIN6icu_788message210data_model7LiteralESt14_Optional_baseIS3_Lb0ELb0EEE12_M_constructIJS3_EEEvDpOT_.exit.i.i.i unwind label %bb.e

common.resume.i.i.i:                              ; preds = %bb.h, %bb.e
  %.sink.i.i.i = phi ptr [ %i.a, %bb.h ], [ %i.b, %bb.e ]
  %common.resume.op.i.i.i = phi { ptr, i32 } [ %i.y, %bb.h ], [ %i.s, %bb.e ]
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(81) %.sink.i.i.i) #18
  %i.r = extractvalue { ptr, i32 } %common.resume.op.i.i.i, 0
  tail call void @__clang_call_terminate(ptr %i.r) #19
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  br label %common.resume.i.i.i

_ZNSt19_Optional_base_implIN6icu_788message210data_model7LiteralESt14_Optional_baseIS3_Lb0ELb0EEE12_M_constructIJS3_EEEvDpOT_.exit.i.i.i: ; preds = %bb.d
  store i8 1, ptr %i.f, align 8, !tbaa !23
  store i8 0, ptr %i.c, align 8, !tbaa !23
  tail call void @_ZN6icu_788message210data_model7LiteralD1Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(88) %i.a) #18
  br label %_ZN6icu_788message210data_model4swapERNS1_3KeyES3_.exit

bb.f:                                             ; preds = %bb.a
  br i1 %i.h, label %bb.g, label %_ZN6icu_788message210data_model4swapERNS1_3KeyES3_.exit

bb.g:                                             ; preds = %bb.f
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model7LiteralE, i64 16), ptr %i.a, align 8, !tbaa !29
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load i8, ptr %i.u, align 8, !tbaa !38, !range !24, !noundef !25
  store i8 %i.v, ptr %i.t, align 8, !tbaa !38
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.w, ptr noundef nonnull align 8 dereferenceable(64) %i.x)
          to label %_ZNSt19_Optional_base_implIN6icu_788message210data_model7LiteralESt14_Optional_baseIS3_Lb0ELb0EEE12_M_constructIJS3_EEEvDpOT_.exit7.i.i.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  br label %common.resume.i.i.i

_ZNSt19_Optional_base_implIN6icu_788message210data_model7LiteralESt14_Optional_baseIS3_Lb0ELb0EEE12_M_constructIJS3_EEEvDpOT_.exit7.i.i.i: ; preds = %bb.g
  store i8 1, ptr %i.c, align 8, !tbaa !23
  store i8 0, ptr %i.f, align 8, !tbaa !23
  tail call void @_ZN6icu_788message210data_model7LiteralD1Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(88) %i.b) #18
  br label %_ZN6icu_788message210data_model4swapERNS1_3KeyES3_.exit

_ZN6icu_788message210data_model4swapERNS1_3KeyES3_.exit: ; preds = %bb.c, %_ZNSt19_Optional_base_implIN6icu_788message210data_model7LiteralESt14_Optional_baseIS3_Lb0ELb0EEE12_M_constructIJS3_EEEvDpOT_.exit.i.i.i, %bb.f, %_ZNSt19_Optional_base_implIN6icu_788message210data_model7LiteralESt14_Optional_baseIS3_Lb0ELb0EEE12_M_constructIJS3_EEEvDpOT_.exit7.i.i.i
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull align 8 dereferenceable(80) ptr @_ZNK6icu_788message210data_model3Key9asLiteralEv(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(96) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_788message210data_model3KeyD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) initializes((0, 8)) %0) unnamed_addr #3 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model3KeyE, i64 16), ptr %0, align 8, !tbaa !29
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !23, !range !24, !noundef !25
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !tbaa !23
  br i1 %i.c, label %bb.b, label %_ZNSt14_Optional_baseIN6icu_788message210data_model7LiteralELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN6icu_788message210data_model7LiteralD1Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(88) %i.d) #18
  br label %_ZNSt14_Optional_baseIN6icu_788message210data_model7LiteralELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN6icu_788message210data_model7LiteralELb0ELb0EED2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_788message210data_model3KeyD0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN6icu_788message210data_model3KeyD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) #18
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_788message210data_model9OptionMapC2ERKNS_7UVectorER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(28) initializes((0, 9), (16, 28)) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.icu_78::message2::data_model::Option", align 8 ; 7 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model9OptionMapE, i64 16), ptr %0, align 8, !tbaa !29
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i8 0, ptr %i.a, align 8, !tbaa !53
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr null, ptr %i.b, align 8, !tbaa !54
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !41   ; 5 uses
  store i32 %i.e, ptr %i.c, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.f = load i32, ptr %2, align 4, !tbaa !31
  %i.g = icmp slt i32 %i.f, 1
  br i1 %i.g, label %bb.b, label %.loopexit.thread

bb.b:                                             ; preds = %bb.a
  %i.h = sext i32 %i.e to i64                     ; 2 uses
  %i.i = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.h, i64 176) ; 2 uses
  %i.j = extractvalue { i64, i1 } %i.i, 1
  %i.k = extractvalue { i64, i1 } %i.i, 0         ; 2 uses
  %i.l = or disjoint i64 %i.k, 8
  %i.m = select i1 %i.j, i64 -1, i64 %i.l
  %i.n = tail call noundef ptr @_ZN6icu_787UMemorynaEm(i64 noundef %i.m) #18 ; 4 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 %i.h, ptr %i.n, align 8
  %.ptr27.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.p = icmp eq i32 %i.e, 0
  br i1 %i.p, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.c, %.preheader
  %.idx.i = phi i64 [ %.add.i, %.preheader ], [ 8, %bb.c ] ; 3 uses
  %.ptr.ptr.i = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx.i ; 4 uses
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model6OptionE, i64 16), ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16)>, ptr %.ptr.ptr.i, align 8, !tbaa !29
  %i.q = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i, i64 16
  store i16 2, ptr %i.q, align 8, !tbaa !26
  %i.r = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i, i64 72
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6icu_788message210data_model7OperandE, i64 16), ptr %i.r, align 8, !tbaa !29
  %i.s = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i, i64 168
  store i8 0, ptr %i.s, align 8, !tbaa !45
  %.add.i = add nuw nsw i64 %.idx.i, 176
  %i.t = add nuw nsw i64 %.idx.i, 168
  %i.u = icmp eq i64 %i.t, %i.k
  br i1 %i.u, label %.loopexit33.i, label %.preheader

.loopexit33.i:                                    ; preds = %.preheader
  %i.v = icmp sgt i32 %i.e, 0
  br i1 %i.v, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %.loopexit33.i
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 80
  %wide.trip.count.i = zext nneg i32 %i.e to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  store i32 7, ptr %2, align 4, !tbaa !31
  br label %.loopexit.thread

bb.e:                                             ; preds = %_ZN6icu_788message210data_model6OptionaSES2_.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZN6icu_788message210data_model6OptionaSES2_.exit.i ] ; 3 uses
  %i.y = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.z = invoke noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %i.y)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.e
  invoke void @_ZN6icu_788message210data_model6OptionC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(176) %3, ptr noundef nonnull align 8 dereferenceable(176) %i.z)
          to label %.noexc9 unwind label %bb.g

.noexc9:                                          ; preds = %.noexc
  %i.aa = getelementptr inbounds nuw [176 x i8], ptr %.ptr27.i, i64 %indvars.iv.i ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  call void @_ZN6icu_7813UnicodeString4swapERS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.ab, ptr noundef nonnull align 8 dereferenceable(64) %i.w) #18
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 80
  invoke void @_ZNSt8optionalISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEEE4swapERS7_(ptr noundef nonnull align 8 dereferenceable(96) %i.ac, ptr noundef nonnull align 8 dereferenceable(96) %i.x)
          to label %_ZN6icu_788message210data_model6OptionaSES2_.exit.i unwind label %bb.f

bb.f:                                             ; preds = %.noexc9
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  call void @__clang_call_terminate(ptr %i.ae) #19
  unreachable

_ZN6icu_788message210data_model6OptionaSES2_.exit.i: ; preds = %.noexc9
  call void @_ZN6icu_788message210data_model6OptionD1Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %3) #18
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit, label %bb.e, !llvm.loop !155

.loopexit.thread:                                 ; preds = %bb.d, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.j

.loopexit:                                        ; preds = %_ZN6icu_788message210data_model6OptionaSES2_.exit.i, %.loopexit33.i, %bb.c
  %.pr = load i32, ptr %2, align 4, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.af = icmp slt i32 %.pr, 1
  br i1 %i.af, label %bb.h, label %bb.j

bb.g:                                             ; preds = %.noexc, %bb.e
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7810LocalArrayINS_8message210data_model6OptionEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #18
  call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #18
  resume { ptr, i32 } %i.ag

bb.h:                                             ; preds = %.loopexit
  %i.ah = load ptr, ptr %i.b, align 8, !tbaa !54  ; 4 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %_ZN6icu_7810LocalArrayINS_8message210data_model6OptionEE12adoptInsteadEPS3_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 -8 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8            ; 2 uses
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %.loopexit.i, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.i
  %.idx.i10 = mul nsw i64 %i.ak, 176
  %i.am = getelementptr inbounds i8, ptr %i.ah, i64 %.idx.i10
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.preheader.i
  %i.an = phi ptr [ %i.ao, %.preheader.i ], [ %i.am, %.preheader.preheader.i ]
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -176 ; 3 uses
  call void @_ZN6icu_788message210data_model6OptionD1Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %i.ao) #18
  %i.ap = icmp eq ptr %i.ao, %i.ah
  br i1 %i.ap, label %.loopexit.i, label %.preheader.i

.loopexit.i:                                      ; preds = %.preheader.i, %bb.i
  call void @_ZN6icu_787UMemorydaEPv(ptr noundef nonnull %i.aj) #18
  br label %_ZN6icu_7810LocalArrayINS_8message210data_model6OptionEE12adoptInsteadEPS3_.exit

_ZN6icu_7810LocalArrayINS_8message210data_model6OptionEE12adoptInsteadEPS3_.exit: ; preds = %bb.h, %.loopexit.i
  store ptr %.ptr27.i, ptr %i.b, align 8, !tbaa !54
  br label %bb.j

bb.j:                                             ; preds = %.loopexit.thread, %.loopexit, %_ZN6icu_7810LocalArrayINS_8message210data_model6OptionEE12adoptInsteadEPS3_.exit
  %storemerge = phi i8 [ 0, %_ZN6icu_7810LocalArrayINS_8message210data_model6OptionEE12adoptInsteadEPS3_.exit ], [ 1, %.loopexit ], [ 1, %.loopexit.thread ]
  store i8 %storemerge, ptr %i.a, align 8, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6icu_7810LocalArrayINS_8message210data_model6OptionEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !54     ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %i.a, i64 -8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.b
  %.idx = mul nsw i64 %i.d, 176
  %i.f = getelementptr inbounds i8, ptr %i.a, i64 %.idx
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %i.g = phi ptr [ %i.h, %.preheader ], [ %i.f, %.preheader.preheader ]
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -176 ; 3 uses
  tail call void @_ZN6icu_788message210data_model6OptionD1Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %i.h) #18
  %i.i = icmp eq ptr %i.h, %i.a
  br i1 %i.i, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %.preheader, %bb.b
  tail call void @_ZN6icu_787UMemorydaEPv(ptr noundef nonnull %i.c) #18
  br label %bb.c

bb.c:                                             ; preds = %.loopexit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_788message210data_model9OptionMapC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(28) initializes((0, 9), (16, 28)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(28) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.icu_78::message2::data_model::Option", align 8 ; 7 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model9OptionMapE, i64 16), ptr %0, align 8, !tbaa !29
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i8 0, ptr %i.a, align 8, !tbaa !53
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr null, ptr %i.b, align 8, !tbaa !54
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !55   ; 5 uses
  store i32 %i.e, ptr %i.c, align 8, !tbaa !55
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.a, align 8, !tbaa !53
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.i = sext i32 %i.e to i64                     ; 2 uses
  %i.j = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.i, i64 176) ; 2 uses
  %i.k = extractvalue { i64, i1 } %i.j, 1
  %i.l = extractvalue { i64, i1 } %i.j, 0         ; 2 uses
  %i.m = or disjoint i64 %i.l, 8
  %i.n = select i1 %i.k, i64 -1, i64 %i.m
  %i.o = tail call noundef ptr @_ZN6icu_787UMemorynaEm(i64 noundef %i.n) #18 ; 4 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 %i.i, ptr %i.o, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.e
  %.idx.i = phi i64 [ %.add.i, %bb.e ], [ 8, %bb.d ] ; 3 uses
  %.ptr.ptr.i = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx.i ; 4 uses
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model6OptionE, i64 16), ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16)>, ptr %.ptr.ptr.i, align 8, !tbaa !29
  %i.q = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i, i64 16
  store i16 2, ptr %i.q, align 8, !tbaa !26
  %i.r = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i, i64 72
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6icu_788message210data_model7OperandE, i64 16), ptr %i.r, align 8, !tbaa !29
  %i.s = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i, i64 168
  store i8 0, ptr %i.s, align 8, !tbaa !45
  %.add.i = add nuw nsw i64 %.idx.i, 176
  %i.t = add nuw nsw i64 %.idx.i, 168
  %i.u = icmp eq i64 %i.t, %i.l
  br i1 %i.u, label %.loopexit32.i, label %bb.e

.loopexit32.i:                                    ; preds = %bb.e
  %.ptr26.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.v = icmp sgt i32 %i.e, 0
  br i1 %i.v, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %.loopexit32.i
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 80
  %wide.trip.count.i = zext nneg i32 %i.e to i64
  br label %bb.f

bb.f:                                             ; preds = %_ZN6icu_788message210data_model6OptionaSES2_.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZN6icu_788message210data_model6OptionaSES2_.exit.i ] ; 3 uses
  %i.y = getelementptr inbounds nuw [176 x i8], ptr %i.h, i64 %indvars.iv.i
  invoke void @_ZN6icu_788message210data_model6OptionC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(176) %2, ptr noundef nonnull align 8 dereferenceable(176) %i.y)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.f
  %i.z = getelementptr inbounds nuw [176 x i8], ptr %.ptr26.i, i64 %indvars.iv.i ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  call void @_ZN6icu_7813UnicodeString4swapERS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.aa, ptr noundef nonnull align 8 dereferenceable(64) %i.w) #18
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 80
  invoke void @_ZNSt8optionalISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEEE4swapERS7_(ptr noundef nonnull align 8 dereferenceable(96) %i.ab, ptr noundef nonnull align 8 dereferenceable(96) %i.x)
          to label %_ZN6icu_788message210data_model6OptionaSES2_.exit.i unwind label %bb.g

bb.g:                                             ; preds = %.noexc
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  call void @__clang_call_terminate(ptr %i.ad) #19
  unreachable

_ZN6icu_788message210data_model6OptionaSES2_.exit.i: ; preds = %.noexc
  call void @_ZN6icu_788message210data_model6OptionD1Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %2) #18
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit, label %bb.f, !llvm.loop !156

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  store i8 1, ptr %i.a, align 8, !tbaa !53
  br label %bb.k

bb.i:                                             ; preds = %bb.f
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7810LocalArrayINS_8message210data_model6OptionEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #18
  call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #18
  resume { ptr, i32 } %i.ae

.loopexit:                                        ; preds = %_ZN6icu_788message210data_model6OptionaSES2_.exit.i, %.loopexit32.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  store i8 0, ptr %i.a, align 8, !tbaa !53
  %i.af = load ptr, ptr %i.b, align 8, !tbaa !54  ; 4 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %_ZN6icu_7810LocalArrayINS_8message210data_model6OptionEE12adoptInsteadEPS3_.exit, label %bb.j

bb.j:                                             ; preds = %.loopexit
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 -8 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8            ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %.loopexit.i, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.j
  %.idx.i7 = mul nsw i64 %i.ai, 176
  %i.ak = getelementptr inbounds i8, ptr %i.af, i64 %.idx.i7
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.preheader.i
  %i.al = phi ptr [ %i.am, %.preheader.i ], [ %i.ak, %.preheader.preheader.i ]
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -176 ; 3 uses
  call void @_ZN6icu_788message210data_model6OptionD1Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %i.am) #18
  %i.an = icmp eq ptr %i.am, %i.af
  br i1 %i.an, label %.loopexit.i, label %.preheader.i

.loopexit.i:                                      ; preds = %.preheader.i, %bb.j
  call void @_ZN6icu_787UMemorydaEPv(ptr noundef nonnull %i.ah) #18
  br label %_ZN6icu_7810LocalArrayINS_8message210data_model6OptionEE12adoptInsteadEPS3_.exit

_ZN6icu_7810LocalArrayINS_8message210data_model6OptionEE12adoptInsteadEPS3_.exit: ; preds = %.loopexit, %.loopexit.i
  store ptr %.ptr26.i, ptr %i.b, align 8, !tbaa !54
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %_ZN6icu_7810LocalArrayINS_8message210data_model6OptionEE12adoptInsteadEPS3_.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef nonnull align 8 dereferenceable(28) ptr @_ZN6icu_788message210data_model9OptionMapaSES2_(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(28) %0, ptr nofree noundef align 8 captures(none) %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i8, ptr %i.a, align 8, !tbaa !43, !range !24, !noundef !25
  %i.d = load i8, ptr %i.b, align 8, !tbaa !43, !range !24, !noundef !25
  store i8 %i.d, ptr %i.a, align 8, !tbaa !43
  store i8 %i.c, ptr %i.b, align 8, !tbaa !43
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !54
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !54
  store ptr %i.h, ptr %i.e, align 8, !tbaa !54
  store ptr %i.g, ptr %i.f, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.k = load i32, ptr %i.i, align 8, !tbaa !42
  %i.l = load i32, ptr %i.j, align 8, !tbaa !42
  store i32 %i.l, ptr %i.i, align 8, !tbaa !42
  store i32 %i.k, ptr %i.j, align 8, !tbaa !42
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef nonnull align 8 dereferenceable(176) ptr @_ZNK6icu_788message210data_model9OptionMap9getOptionEiR10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(28) %0, i32 noundef %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !range !24
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 7, ptr %2, align 4, !tbaa !31
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = sext i32 %1 to i64
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !54
  %i.g = getelementptr inbounds [176 x i8], ptr %i.f, i64 %i.e
  ret ptr %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_ZNK6icu_788message210data_model9OptionMap4sizeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(28) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !55
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_788message210data_model9OptionMapD2Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) initializes((0, 8)) %0) unnamed_addr #3 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model9OptionMapE, i64 16), ptr %0, align 8, !tbaa !29
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54   ; 4 uses
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

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.preheader.i
  %i.h = phi ptr [ %i.i, %.preheader.i ], [ %i.g, %.preheader.preheader.i ]
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -176 ; 3 uses
  tail call void @_ZN6icu_788message210data_model6OptionD1Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %i.i) #18
  %i.j = icmp eq ptr %i.i, %i.b
  br i1 %i.j, label %.loopexit.i, label %.preheader.i

.loopexit.i:                                      ; preds = %.preheader.i, %bb.b
  tail call void @_ZN6icu_787UMemorydaEPv(ptr noundef nonnull %i.d) #18
  br label %_ZN6icu_7810LocalArrayINS_8message210data_model6OptionEED2Ev.exit

_ZN6icu_7810LocalArrayINS_8message210data_model6OptionEED2Ev.exit: ; preds = %bb.a, %.loopexit.i
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_788message210data_model9OptionMapD0Ev(ptr noundef nonnull align 8 dereferenceable(28) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN6icu_788message210data_model9OptionMapD1Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %0) #18
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_788message210data_model9OptionMap7Builder5buildER10UErrorCode(ptr dead_on_unwind noalias writable sret(%"class.icu_78::message2::data_model::OptionMap") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(17) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57
  tail call void @_ZN6icu_788message210data_model9OptionMapC1ERKNS_7UVectorER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_788message210data_model9OptionMap7BuilderC2ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(17) initializes((0, 8), (16, 17)) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model9OptionMap7BuilderE, i64 16), ptr %0, align 8, !tbaa !29
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.a, align 8, !tbaa !58
  %i.b = load i32, ptr %1, align 4, !tbaa !31
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %_ZN6icu_788message219createStringUVectorER10UErrorCode.exit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 40) #18 ; 8 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZN6icu_788message219createStringUVectorER10UErrorCode.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6icu_787UVectorC1ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %1)
          to label %.thread.i.i.i unwind label %bb.d

.thread.i.i.i:                                    ; preds = %bb.c
  %i.f = load i32, ptr %1, align 4, !tbaa !31
  %i.g = icmp slt i32 %i.f, 1
  br i1 %i.g, label %_ZN6icu_788message213createUVectorER10UErrorCode.exit.i, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.d) #18
  br label %.body

bb.e:                                             ; preds = %.thread.i.i.i
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !29
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #18, !inline_history !157
  br label %_ZN6icu_788message219createStringUVectorER10UErrorCode.exit

_ZN6icu_788message213createUVectorER10UErrorCode.exit.i: ; preds = %.thread.i.i.i
  %i.l = invoke noundef ptr @_ZN6icu_787UVector10setDeleterEPFvPvE(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull @uprv_deleteUObject_78)
          to label %.noexc unwind label %bb.g     ; 0 uses

.noexc:                                           ; preds = %_ZN6icu_788message213createUVectorER10UErrorCode.exit.i
  %.pre.i = load i32, ptr %1, align 4, !tbaa !31
  %i.m = icmp slt i32 %.pre.i, 1
  br i1 %i.m, label %bb.f, label %_ZN6icu_788message219createStringUVectorER10UErrorCode.exit

bb.f:                                             ; preds = %.noexc
  %i.n = invoke noundef ptr @_ZN6icu_787UVector11setComparerEPFa8UElementS1_E(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull @_ZN6icu_788message2L12stringsEqualE8UElementS1_)
          to label %_ZN6icu_788message219createStringUVectorER10UErrorCode.exit unwind label %bb.g ; 0 uses

_ZN6icu_788message219createStringUVectorER10UErrorCode.exit: ; preds = %bb.b, %bb.e, %.noexc, %bb.a, %bb.f
  %.0.i = phi ptr [ null, %bb.a ], [ null, %.noexc ], [ %i.d, %bb.f ], [ null, %bb.e ], [ null, %bb.b ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.i, ptr %i.o, align 8, !tbaa !57
  ret void

bb.g:                                             ; preds = %bb.f, %_ZN6icu_788message213createUVectorER10UErrorCode.exit.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.p, %bb.g ], [ %i.h, %bb.d ]
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #18
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN6icu_788message210data_model9OptionMap7BuilderC2EOS3_(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(17) initializes((0, 17)) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(17) %1) unnamed_addr #8 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model9OptionMap7BuilderE, i64 16), ptr %0, align 8, !tbaa !29
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i8 1, ptr %i.a, align 8, !tbaa !58
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i8, ptr %i.b, align 8, !tbaa !58, !range !24, !noundef !25
  store i8 %i.c, ptr %i.a, align 8, !tbaa !58
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !57
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8, !tbaa !57
  store ptr null, ptr %i.d, align 8, !tbaa !57
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef nonnull align 8 dereferenceable(17) ptr @_ZN6icu_788message210data_model9OptionMap7BuilderaSES3_(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(17) %0, ptr nofree noundef align 8 captures(none) %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !158
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !158
  store ptr %i.d, ptr %i.a, align 8, !tbaa !158
  store ptr %i.c, ptr %i.b, align 8, !tbaa !158
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load i8, ptr %i.e, align 8, !tbaa !43, !range !24, !noundef !25
  %i.h = load i8, ptr %i.f, align 8, !tbaa !43, !range !24, !noundef !25
  store i8 %i.h, ptr %i.e, align 8, !tbaa !43
  store i8 %i.g, ptr %i.f, align 8, !tbaa !43
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_788message210data_model9OptionMap7Builder10attributesER10UErrorCode(ptr dead_on_unwind noalias writable sret(%"class.icu_78::message2::data_model::OptionMap::Builder") align 8 %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN6icu_788message210data_model9OptionMap7BuilderC1ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef nonnull align 4 dereferenceable(4) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.a, align 8, !tbaa !58
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(17) ptr @_ZN6icu_788message210data_model9OptionMap7Builder3addEONS1_6OptionER10UErrorCode(ptr nofree noundef nonnull readonly returned align 8 captures(ret: address, provenance) dereferenceable(17) %0, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !31
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i8, ptr %i.c, align 8, !tbaa !58, !range !24, !noundef !25
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %_ZN6icu_788message210data_modelL14hasOptionNamedERKNS_7UVectorERKNS_13UnicodeStringE.exit.thread.thread

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !57   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !41
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
  %i.o = tail call noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i32 noundef %.0914.i) ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.r = load i16, ptr %i.q, align 8, !tbaa !26   ; 3 uses
  %i.s = and i16 %i.r, 1
  %.not.i.i = icmp eq i16 %i.s, 0
  br i1 %.not.i.i, label %bb.e, label %.split.i

.split.i:                                         ; preds = %bb.d
  %i.t = load i16, ptr %i.k, align 8, !tbaa !26
  %i.u = trunc i16 %i.t to i1
  br i1 %i.u, label %_ZN6icu_788message210data_modelL14hasOptionNamedERKNS_7UVectorERKNS_13UnicodeStringE.exit, label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread.i

bb.e:                                             ; preds = %bb.d
  %i.v = icmp slt i16 %i.r, 0
  %i.w = ashr i16 %i.r, 5
  %i.x = sext i16 %i.w to i32
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 20
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = select i1 %i.v, i32 %i.z, i32 %i.x      ; 2 uses
  %i.ab = load i16, ptr %i.k, align 8, !tbaa !26  ; 4 uses
  %i.ac = icmp slt i16 %i.ab, 0
  %i.ad = ashr i16 %i.ab, 5
  %i.ae = sext i16 %i.ad to i32
  %i.af = load i32, ptr %i.l, align 4
  %i.ag = select i1 %i.ac, i32 %i.af, i32 %i.ae
  %i.ah = and i16 %i.ab, 1
  %.not9.i.i = icmp eq i16 %i.ah, 0
  %i.ai = icmp eq i32 %i.aa, %i.ag
  %or.cond.i.i = and i1 %.not9.i.i, %i.ai
  br i1 %or.cond.i.i, label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.i, label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread.i

_ZNK6icu_7813UnicodeStringeqERKS0_.exit.i:        ; preds = %bb.e
  %i.aj = and i16 %i.ab, 2
  %.not.i.i.i.i = icmp eq i16 %i.aj, 0
  %i.ak = load ptr, ptr %i.n, align 8
  %i.al = select i1 %.not.i.i.i.i, ptr %i.ak, ptr %i.m
  %i.am = tail call noundef signext i8 @_ZNK6icu_7813UnicodeString8doEqualsEPKDsi(ptr noundef nonnull align 8 dereferenceable(64) %i.p, ptr noundef %i.al, i32 noundef %i.aa)
  %.not.i = icmp eq i8 %i.am, 0
  br i1 %.not.i, label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread.i, label %_ZN6icu_788message210data_modelL14hasOptionNamedERKNS_7UVectorERKNS_13UnicodeStringE.exit

_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread.i: ; preds = %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.i, %bb.e, %.split.i
  %i.an = add nuw nsw i32 %.0914.i, 1             ; 2 uses
  %i.ao = load i32, ptr %i.h, align 8, !tbaa !41
  %i.ap = icmp slt i32 %i.an, %i.ao
  br i1 %i.ap, label %bb.d, label %_ZN6icu_788message210data_modelL14hasOptionNamedERKNS_7UVectorERKNS_13UnicodeStringE.exit.thread, !llvm.loop !159

_ZN6icu_788message210data_modelL14hasOptionNamedERKNS_7UVectorERKNS_13UnicodeStringE.exit: ; preds = %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.i, %.split.i
  store i32 65818, ptr %2, align 4, !tbaa !31
  br label %bb.i

_ZN6icu_788message210data_modelL14hasOptionNamedERKNS_7UVectorERKNS_13UnicodeStringE.exit.thread: ; preds = %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread.i
  %.pre = load i32, ptr %2, align 4, !tbaa !31
  %i.aq = icmp slt i32 %.pre, 1
  br i1 %i.aq, label %_ZN6icu_788message210data_modelL14hasOptionNamedERKNS_7UVectorERKNS_13UnicodeStringE.exit.thread.thread, label %_ZN6icu_788message26createINS0_10data_model6OptionEEEPT_OS4_R10UErrorCode.exit

_ZN6icu_788message210data_modelL14hasOptionNamedERKNS_7UVectorERKNS_13UnicodeStringE.exit.thread.thread: ; preds = %bb.b, %bb.c, %_ZN6icu_788message210data_modelL14hasOptionNamedERKNS_7UVectorERKNS_13UnicodeStringE.exit.thread
  %i.ar = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 176) #18 ; 4 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN6icu_788message210data_modelL14hasOptionNamedERKNS_7UVectorERKNS_13UnicodeStringE.exit.thread.thread
  invoke void @_ZN6icu_788message210data_model6OptionC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(176) %i.ar, ptr noundef nonnull align 8 dereferenceable(176) %1)
          to label %_ZN6icu_788message26createINS0_10data_model6OptionEEEPT_OS4_R10UErrorCode.exit unwind label %bb.h

bb.g:                                             ; preds = %_ZN6icu_788message210data_modelL14hasOptionNamedERKNS_7UVectorERKNS_13UnicodeStringE.exit.thread.thread
  store i32 7, ptr %2, align 4, !tbaa !31
  br label %_ZN6icu_788message26createINS0_10data_model6OptionEEEPT_OS4_R10UErrorCode.exit

bb.h:                                             ; preds = %bb.f
  %i.at = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.ar) #18
  resume { ptr, i32 } %i.at

_ZN6icu_788message26createINS0_10data_model6OptionEEEPT_OS4_R10UErrorCode.exit: ; preds = %_ZN6icu_788message210data_modelL14hasOptionNamedERKNS_7UVectorERKNS_13UnicodeStringE.exit.thread, %bb.f, %bb.g
  %.0.i = phi ptr [ null, %_ZN6icu_788message210data_modelL14hasOptionNamedERKNS_7UVectorERKNS_13UnicodeStringE.exit.thread ], [ null, %bb.g ], [ %i.ar, %bb.f ]
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !57
  tail call void @_ZN6icu_787UVector12adoptElementEPvR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.av, ptr noundef %.0.i, ptr noundef nonnull align 4 dereferenceable(4) %2)
  br label %bb.i

bb.i:                                             ; preds = %_ZN6icu_788message210data_modelL14hasOptionNamedERKNS_7UVectorERKNS_13UnicodeStringE.exit, %_ZN6icu_788message26createINS0_10data_model6OptionEEEPT_OS4_R10UErrorCode.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_788message210data_model9OptionMap7BuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) initializes((0, 8)) %0) unnamed_addr #3 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model9OptionMap7BuilderE, i64 16), ptr %0, align 8, !tbaa !29
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57   ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #18
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_788message210data_model9OptionMap7BuilderD0Ev(ptr noundef nonnull align 8 dereferenceable(17) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN6icu_788message210data_model9OptionMap7BuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %0) #18
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull align 8 dereferenceable(28) ptr @_ZNK6icu_788message210data_model8Operator18getOptionsInternalEv(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(104) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_788message210data_model6OptionC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(176) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(176) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model6OptionE, i64 16), ptr %0, align 8, !tbaa !29
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72
  invoke void @_ZN6icu_788message210data_model7OperandC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(104) %i.c, ptr noundef nonnull align 8 dereferenceable(104) %i.d)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  ret void

bb.d:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.a) #18
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.f, %bb.e ], [ %i.e, %bb.d ]
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #18
  resume { ptr, i32 } %.pn
}

declare void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define noundef nonnull align 8 dereferenceable(176) ptr @_ZN6icu_788message210data_model6OptionaSES2_(ptr noundef nonnull returned align 8 dereferenceable(176) %0, ptr noundef align 8 %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN6icu_7813UnicodeString4swapERS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %i.b) #18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 80
  invoke void @_ZNSt8optionalISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEEE4swapERS7_(ptr noundef nonnull align 8 dereferenceable(96) %i.c, ptr noundef nonnull align 8 dereferenceable(96) %i.d)
          to label %_ZN6icu_788message210data_model4swapERNS1_6OptionES3_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #19
  unreachable

_ZN6icu_788message210data_model4swapERNS1_6OptionES3_.exit: ; preds = %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_788message210data_model6OptionD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) initializes((0, 8)) %0) unnamed_addr #3 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model6OptionE, i64 16), ptr %0, align 8, !tbaa !29
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @_ZN6icu_788message210data_model7OperandD1Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.a) #18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.b) #18
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_788message210data_model6OptionD0Ev(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN6icu_788message210data_model6OptionD1Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %0) #18
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_788message210data_model8Operator7BuilderC2ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(96) initializes((0, 18)) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6icu_788message210data_model8Operator7BuilderE, i64 16), ptr %0, align 8, !tbaa !29
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.a, align 8, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i16 2, ptr %i.b, align 8, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke void @_ZN6icu_788message210data_model9OptionMap7BuilderC1ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(17) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.a) #18
  resume { ptr, i32 } %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define noundef nonnull align 8 dereferenceable(96) ptr @_ZN6icu_788message210data_model8Operator7Builder15setFunctionNameEONS_13UnicodeStringE(ptr noundef nonnull returned align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %1) #18 ; 0 uses
  ret ptr %0
}

; Function Attrs: nounwind
declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_788message210data_model8Operator15getFunctionNameEv(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(104) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define noundef nonnull align 8 dereferenceable(96) ptr @_ZN6icu_788message210data_model8Operator7Builder9addOptionERKNS_13UnicodeStringEONS1_7OperandER10UErrorCode(ptr nofree noundef nonnull readonly returned align 8 captures(ret: address, provenance) dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.icu_78::message2::data_model::Option", align 8 ; 8 uses
  %i.a = load i32, ptr %3, align 4, !tbaa !31
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model6OptionE, i64 16), ptr %4, align 8, !tbaa !29
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  invoke void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 72
  invoke void @_ZN6icu_788message210data_model7OperandC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(104) %i.d, ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %_ZN6icu_788message210data_model6OptionC2ERKNS_13UnicodeStringEONS1_7OperandE.exit unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.c) #18
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn.i = phi { ptr, i32 } [ %i.f, %bb.e ], [ %i.e, %bb.d ]
  call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(176) %4) #18
  br label %.body

_ZN6icu_788message210data_model6OptionC2ERKNS_13UnicodeStringEONS1_7OperandE.exit: ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = invoke noundef nonnull align 8 dereferenceable(17) ptr @_ZN6icu_788message210data_model9OptionMap7Builder3addEONS1_6OptionER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(17) %i.g, ptr noundef nonnull align 8 dereferenceable(176) %4, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %bb.g unwind label %bb.i       ; 0 uses

bb.g:                                             ; preds = %_ZN6icu_788message210data_model6OptionC2ERKNS_13UnicodeStringEONS1_7OperandE.exit
  call void @_ZN6icu_788message210data_model6OptionD1Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g
  ret ptr %0

bb.i:                                             ; preds = %_ZN6icu_788message210data_model6OptionC2ERKNS_13UnicodeStringEONS1_7OperandE.exit
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.f, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.i, %bb.i ], [ %.pn.i, %bb.f ]
  %i.j = extractvalue { ptr, i32 } %eh.lpad-body, 0
  call void @__clang_call_terminate(ptr %i.j) #19
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_788message210data_model8Operator7Builder5buildER10UErrorCode(ptr dead_on_unwind noalias writable sret(%"class.icu_78::message2::data_model::Operator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.icu_78::message2::data_model::OptionMap", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !57, !noalias !162
  call void @_ZN6icu_788message210data_model9OptionMapC1ERKNS_7UVectorER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(28) %3, ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %2)
  invoke void @_ZN6icu_788message210data_model8OperatorC1ERKNS_13UnicodeStringERKNS1_9OptionMapE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(28) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN6icu_788message210data_model9OptionMapD1Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_788message210data_model9OptionMapD1Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  resume { ptr, i32 } %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_788message210data_model8OperatorC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(104) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(104) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model8OperatorE, i64 16), ptr %0, align 8, !tbaa !29
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72
  invoke void @_ZN6icu_788message210data_model9OptionMapC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(28) %i.c, ptr noundef nonnull align 8 dereferenceable(28) %i.d)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  ret void

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #19
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define noundef nonnull align 8 dereferenceable(104) ptr @_ZN6icu_788message210data_model8OperatoraSES2_(ptr noundef nonnull returned align 8 dereferenceable(104) %0, ptr noundef align 8 %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN6icu_7813UnicodeString4swapERS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %i.b) #18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.e = load i8, ptr %i.c, align 8, !tbaa !43, !range !24, !noundef !25
  %i.f = load i8, ptr %i.d, align 8, !tbaa !43, !range !24, !noundef !25
  store i8 %i.f, ptr %i.c, align 8, !tbaa !43
  store i8 %i.e, ptr %i.d, align 8, !tbaa !43
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !54
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !54
  store ptr %i.j, ptr %i.g, align 8, !tbaa !54
  store ptr %i.i, ptr %i.h, align 8, !tbaa !54
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.m = load i32, ptr %i.k, align 8, !tbaa !42
  %i.n = load i32, ptr %i.l, align 8, !tbaa !42
  store i32 %i.n, ptr %i.k, align 8, !tbaa !42
  store i32 %i.m, ptr %i.l, align 8, !tbaa !42
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_788message210data_model8OperatorC2ERKNS_13UnicodeStringERKNS1_9OptionMapE(ptr noundef nonnull align 8 dereferenceable(104) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(28) %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model8OperatorE, i64 16), ptr %0, align 8, !tbaa !29
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  invoke void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke void @_ZN6icu_788message210data_model9OptionMapC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(28) %i.b, ptr noundef nonnull align 8 dereferenceable(28) %2)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  ret void

bb.d:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.a) #18
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.c, %bb.d ]
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #18
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_788message210data_model8Operator7BuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) initializes((0, 8)) %0) unnamed_addr #3 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6icu_788message210data_model8Operator7BuilderE, i64 16), ptr %0, align 8, !tbaa !29
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @_ZN6icu_788message210data_model9OptionMap7BuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %i.a) #18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.b) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_788message210data_model8Operator7BuilderD0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN6icu_788message210data_model8Operator7BuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) #18
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_788message210data_model8OperatorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) initializes((0, 8)) %0) unnamed_addr #3 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model8OperatorE, i64 16), ptr %0, align 8, !tbaa !29
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @_ZN6icu_788message210data_model9OptionMapD1Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %i.a) #18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.b) #18
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_788message210data_model8OperatorD0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN6icu_788message210data_model8OperatorD1Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %0) #18
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_788message210data_model6Markup7BuilderC2ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(124) initializes((0, 18)) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6icu_788message210data_model6Markup7BuilderE, i64 16), ptr %0, align 8, !tbaa !29
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.a, align 8, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i16 2, ptr %i.b, align 8, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  invoke void @_ZN6icu_788message210data_model9OptionMap7BuilderC1ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(17) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %1)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  invoke void @_ZN6icu_788message210data_model9OptionMap7BuilderC1ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(17) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %1)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 0, ptr %i.e, align 8, !tbaa !58, !alias.scope !165
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 3, ptr %i.f, align 8, !tbaa !61
  ret void

bb.d:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_788message210data_model9OptionMap7BuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %i.c) #18
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.h, %bb.e ], [ %i.g, %bb.d ]
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.a) #18
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_788message210data_model6MarkupC2ENS1_11UMarkupTypeENS_13UnicodeStringEONS1_9OptionMapES6_(ptr noundef nonnull align 8 dereferenceable(144) initializes((0, 12)) %0, i32 noundef %1, ptr noundef nonnull align 8 %2, ptr noundef nonnull align 8 dereferenceable(28) %3, ptr noundef nonnull align 8 dereferenceable(28) %4) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model6MarkupE, i64 16), ptr %0, align 8, !tbaa !29
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.a, align 8, !tbaa !63
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  invoke void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %2)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  invoke void @_ZN6icu_788message210data_model9OptionMapC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(28) %i.c, ptr noundef nonnull align 8 dereferenceable(28) %3)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  invoke void @_ZN6icu_788message210data_model9OptionMapC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(28) %i.d, ptr noundef nonnull align 8 dereferenceable(28) %4)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  ret void

bb.e:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.f:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_788message210data_model9OptionMapD1Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %i.c) #18
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.g, %bb.g ], [ %i.f, %bb.f ]
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.b) #18
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.h ], [ %i.e, %bb.e ]
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #18
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(124) ptr @_ZN6icu_788message210data_model6Markup7Builder9addOptionERKNS_13UnicodeStringEONS1_7OperandER10UErrorCode(ptr nofree noundef nonnull readonly returned align 8 captures(ret: address, provenance) dereferenceable(124) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.icu_78::message2::data_model::Option", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model6OptionE, i64 16), ptr %4, align 8, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  invoke void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 72
  invoke void @_ZN6icu_788message210data_model7OperandC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(104) %i.c, ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %_ZN6icu_788message210data_model6OptionC2ERKNS_13UnicodeStringEONS1_7OperandE.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.b) #18
  br label %bb.e

common.resume:                                    ; preds = %bb.g, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.e ], [ %i.g, %bb.g ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn.i = phi { ptr, i32 } [ %i.e, %bb.d ], [ %i.d, %bb.c ]
  call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(176) %4) #18
  br label %common.resume

_ZN6icu_788message210data_model6OptionC2ERKNS_13UnicodeStringEONS1_7OperandE.exit: ; preds = %bb.b
  %i.f = invoke noundef nonnull align 8 dereferenceable(17) ptr @_ZN6icu_788message210data_model9OptionMap7Builder3addEONS1_6OptionER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(17) %i.a, ptr noundef nonnull align 8 dereferenceable(176) %4, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %bb.f unwind label %bb.g       ; 0 uses

bb.f:                                             ; preds = %_ZN6icu_788message210data_model6OptionC2ERKNS_13UnicodeStringEONS1_7OperandE.exit
  call void @_ZN6icu_788message210data_model6OptionD1Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret ptr %0

bb.g:                                             ; preds = %_ZN6icu_788message210data_model6OptionC2ERKNS_13UnicodeStringEONS1_7OperandE.exit
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_788message210data_model6OptionD1Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(124) ptr @_ZN6icu_788message210data_model6Markup7Builder12addAttributeERKNS_13UnicodeStringEONS1_7OperandER10UErrorCode(ptr nofree noundef nonnull readonly returned align 8 captures(ret: address, provenance) dereferenceable(124) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.icu_78::message2::data_model::Option", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model6OptionE, i64 16), ptr %4, align 8, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  invoke void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 72
  invoke void @_ZN6icu_788message210data_model7OperandC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(104) %i.c, ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %_ZN6icu_788message210data_model6OptionC2ERKNS_13UnicodeStringEONS1_7OperandE.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.b) #18
  br label %bb.e

common.resume:                                    ; preds = %bb.g, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.e ], [ %i.g, %bb.g ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn.i = phi { ptr, i32 } [ %i.e, %bb.d ], [ %i.d, %bb.c ]
  call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(176) %4) #18
  br label %common.resume

_ZN6icu_788message210data_model6OptionC2ERKNS_13UnicodeStringEONS1_7OperandE.exit: ; preds = %bb.b
  %i.f = invoke noundef nonnull align 8 dereferenceable(17) ptr @_ZN6icu_788message210data_model9OptionMap7Builder3addEONS1_6OptionER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(17) %i.a, ptr noundef nonnull align 8 dereferenceable(176) %4, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %bb.f unwind label %bb.g       ; 0 uses

bb.f:                                             ; preds = %_ZN6icu_788message210data_model6OptionC2ERKNS_13UnicodeStringEONS1_7OperandE.exit
  call void @_ZN6icu_788message210data_model6OptionD1Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret ptr %0

bb.g:                                             ; preds = %_ZN6icu_788message210data_model6OptionC2ERKNS_13UnicodeStringEONS1_7OperandE.exit
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_788message210data_model6OptionD1Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_788message210data_model6Markup7Builder5buildER10UErrorCode(ptr dead_on_unwind noalias writable sret(%"class.icu_78::message2::data_model::Markup") align 8 initializes((0, 8), (16, 26), (80, 89), (96, 108), (112, 121), (128, 140)) %0, ptr noundef nonnull align 8 dereferenceable(124) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.icu_78::message2::data_model::OptionMap", align 8 ; 7 uses
  %4 = alloca %"class.icu_78::message2::data_model::OptionMap", align 8 ; 7 uses
  %5 = alloca %"class.icu_78::message2::data_model::Markup", align 8 ; 10 uses
  %6 = alloca %"class.icu_78::UnicodeString", align 8 ; 4 uses
  %7 = alloca %"class.icu_78::message2::data_model::OptionMap", align 8 ; 7 uses
  %8 = alloca %"class.icu_78::message2::data_model::OptionMap", align 8 ; 7 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model6MarkupE, i64 16), ptr %0, align 8, !tbaa !29
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.a, align 8, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 2, ptr %i.b, align 8, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model9OptionMapE, i64 16), ptr %i.c, align 8, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  store i8 0, ptr %i.d, align 8, !tbaa !53
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  store ptr null, ptr %i.e, align 8, !tbaa !54
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  store i32 0, ptr %i.f, align 8, !tbaa !55
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model9OptionMapE, i64 16), ptr %i.g, align 8, !tbaa !29
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  store i8 0, ptr %i.h, align 8, !tbaa !53
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  store ptr null, ptr %i.i, align 8, !tbaa !54
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  store i32 0, ptr %i.j, align 8, !tbaa !55
  %i.k = load i32, ptr %2, align 4, !tbaa !31
  %i.l = icmp slt i32 %i.k, 1
  br i1 %i.l, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.n = load i32, ptr %i.m, align 8, !tbaa !61   ; 2 uses
  %i.o = icmp eq i32 %i.n, 3
  br i1 %i.o, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load i16, ptr %i.p, align 8, !tbaa !26   ; 2 uses
  %i.r = icmp slt i16 %i.q, 0
  %i.s = ashr i16 %i.q, 5
  %i.t = sext i16 %i.s to i32
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.v = load i32, ptr %i.u, align 4
  %i.w = select i1 %i.r, i32 %i.v, i32 %i.t
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  store i32 27, ptr %2, align 4, !tbaa !31
  br label %bb.r

bb.e:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  invoke void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(64) %i.y)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !57, !noalias !170
  invoke void @_ZN6icu_788message210data_model9OptionMapC1ERKNS_7UVectorER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(28) %7, ptr noundef nonnull align 8 dereferenceable(40) %i.aa, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %_ZN6icu_788message210data_model9OptionMap7Builder5buildER10UErrorCode.exit unwind label %bb.j

_ZN6icu_788message210data_model9OptionMap7Builder5buildER10UErrorCode.exit: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !57, !noalias !171
  invoke void @_ZN6icu_788message210data_model9OptionMapC1ERKNS_7UVectorER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(28) %8, ptr noundef nonnull align 8 dereferenceable(40) %i.ac, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %_ZN6icu_788message210data_model9OptionMap7Builder5buildER10UErrorCode.exit18 unwind label %bb.k

_ZN6icu_788message210data_model9OptionMap7Builder5buildER10UErrorCode.exit18: ; preds = %_ZN6icu_788message210data_model9OptionMap7Builder5buildER10UErrorCode.exit
  invoke void @_ZN6icu_788message210data_model6MarkupC1ENS1_11UMarkupTypeENS_13UnicodeStringEONS1_9OptionMapES6_(ptr noundef nonnull align 8 dereferenceable(144) %5, i32 noundef %i.n, ptr noundef nonnull align 8 %6, ptr noundef nonnull align 8 dereferenceable(28) %7, ptr noundef nonnull align 8 dereferenceable(28) %8)
          to label %bb.g unwind label %bb.l

bb.g:                                             ; preds = %_ZN6icu_788message210data_model9OptionMap7Builder5buildER10UErrorCode.exit18
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !63
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.ae, ptr %i.af, align 8, !tbaa !63
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ah = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %i.ag)
          to label %.noexc unwind label %bb.m     ; 0 uses

.noexc:                                           ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 80
  invoke void @_ZN6icu_788message210data_model9OptionMapC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(28) %3, ptr noundef nonnull align 8 dereferenceable(28) %i.ai)
          to label %.noexc19 unwind label %bb.m

.noexc19:                                         ; preds = %.noexc
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ak = load i8, ptr %i.d, align 8, !tbaa !43, !range !24, !noundef !25
  %i.al = load i8, ptr %i.aj, align 8, !tbaa !43, !range !24, !noundef !25
  store i8 %i.al, ptr %i.d, align 8, !tbaa !43
  store i8 %i.ak, ptr %i.aj, align 8, !tbaa !43
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.an = load ptr, ptr %i.e, align 8, !tbaa !54
  %i.ao = load ptr, ptr %i.am, align 8, !tbaa !54
  store ptr %i.ao, ptr %i.e, align 8, !tbaa !54
  store ptr %i.an, ptr %i.am, align 8, !tbaa !54
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.aq = load i32, ptr %i.f, align 8, !tbaa !42
  %i.ar = load i32, ptr %i.ap, align 8, !tbaa !42
  store i32 %i.ar, ptr %i.f, align 8, !tbaa !42
  store i32 %i.aq, ptr %i.ap, align 8, !tbaa !42
  call void @_ZN6icu_788message210data_model9OptionMapD1Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %3) #18
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 112
  invoke void @_ZN6icu_788message210data_model9OptionMapC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(28) %4, ptr noundef nonnull align 8 dereferenceable(28) %i.as)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %.noexc19
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.au = load i8, ptr %i.h, align 8, !tbaa !43, !range !24, !noundef !25
  %i.av = load i8, ptr %i.at, align 8, !tbaa !43, !range !24, !noundef !25
  store i8 %i.av, ptr %i.h, align 8, !tbaa !43
  store i8 %i.au, ptr %i.at, align 8, !tbaa !43
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ax = load ptr, ptr %i.i, align 8, !tbaa !54
  %i.ay = load ptr, ptr %i.aw, align 8, !tbaa !54
  store ptr %i.ay, ptr %i.i, align 8, !tbaa !54
  store ptr %i.ax, ptr %i.aw, align 8, !tbaa !54
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.ba = load i32, ptr %i.j, align 8, !tbaa !42
  %i.bb = load i32, ptr %i.az, align 8, !tbaa !42
  store i32 %i.bb, ptr %i.j, align 8, !tbaa !42
  store i32 %i.ba, ptr %i.az, align 8, !tbaa !42
  call void @_ZN6icu_788message210data_model9OptionMapD1Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @_ZN6icu_788message210data_model6MarkupD1Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %5) #18
  call void @_ZN6icu_788message210data_model9OptionMapD1Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @_ZN6icu_788message210data_model9OptionMapD1Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.r

bb.i:                                             ; preds = %bb.e
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.j:                                             ; preds = %bb.f
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.k:                                             ; preds = %_ZN6icu_788message210data_model9OptionMap7Builder5buildER10UErrorCode.exit
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.l:                                             ; preds = %_ZN6icu_788message210data_model9OptionMap7Builder5buildER10UErrorCode.exit18
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %.noexc19, %.noexc, %bb.g
  %i.bg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_788message210data_model6MarkupD1Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %5) #18
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pn = phi { ptr, i32 } [ %i.bg, %bb.m ], [ %i.bf, %bb.l ]
  call void @_ZN6icu_788message210data_model9OptionMapD1Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %8) #18
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.n ], [ %i.be, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @_ZN6icu_788message210data_model9OptionMapD1Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %7) #18
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.j
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.o ], [ %i.bd, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #18
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.i
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.p ], [ %i.bc, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @_ZN6icu_788message210data_model6MarkupD1Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) #18
  resume { ptr, i32 } %.pn.pn.pn.pn

bb.r:                                             ; preds = %bb.a, %bb.h, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_788message210data_model6Markup7BuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) initializes((0, 8)) %0) unnamed_addr #3 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6icu_788message210data_model6Markup7BuilderE, i64 16), ptr %0, align 8, !tbaa !29
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @_ZN6icu_788message210data_model9OptionMap7BuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %i.a) #18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @_ZN6icu_788message210data_model9OptionMap7BuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %i.b) #18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.c) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_788message210data_model6Markup7BuilderD0Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN6icu_788message210data_model6Markup7BuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %0) #18
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_788message210data_model6MarkupD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) initializes((0, 8)) %0) unnamed_addr #3 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model6MarkupE, i64 16), ptr %0, align 8, !tbaa !29
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_ZN6icu_788message210data_model9OptionMapD1Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %i.a) #18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @_ZN6icu_788message210data_model9OptionMapD1Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %i.b) #18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.c) #18
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_788message210data_model6MarkupD0Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN6icu_788message210data_model6MarkupD1Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) #18
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_788message210data_model10Expression7BuilderC2ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(248) initializes((0, 10), (16, 24), (112, 113), (120, 138), (192, 201), (208, 220)) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6icu_788message210data_model10Expression7BuilderE, i64 16), ptr %0, align 8, !tbaa !29
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.a, align 8, !tbaa !71
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 0, ptr %i.b, align 1, !tbaa !72
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6icu_788message210data_model7OperandE, i64 16), ptr %i.c, align 8, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 0, ptr %i.d, align 8, !tbaa !45
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model8OperatorE, i64 16), ptr %i.e, align 8, !tbaa !29
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.f, align 8, !tbaa !29
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i16 2, ptr %i.g, align 8, !tbaa !26
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model9OptionMapE, i64 16), ptr %i.h, align 8, !tbaa !29
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i8 0, ptr %i.i, align 8, !tbaa !53
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr null, ptr %i.j, align 8, !tbaa !54
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i32 0, ptr %i.k, align 8, !tbaa !55
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 224
  invoke void @_ZN6icu_788message210data_model9OptionMap7BuilderC1ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(17) %i.l, ptr noundef nonnull align 4 dereferenceable(4) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i8 0, ptr %i.m, align 8, !tbaa !58, !alias.scope !174
  ret void

bb.c:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_788message210data_model8OperatorD1Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.e) #18
  tail call void @_ZN6icu_788message210data_model7OperandD1Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.c) #18
  resume { ptr, i32 } %i.n
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef signext range(i8 0, 2) i8 @_ZNK6icu_788message210data_model10Expression22isStandaloneAnnotationEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(256) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load i8, ptr %i.a, align 8, !tbaa !45, !range !24, !noundef !25
  %i.c = xor i8 %i.b, 1
  ret i8 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef signext range(i8 0, 2) i8 @_ZNK6icu_788message210data_model10Expression14isFunctionCallEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(256) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load i8, ptr %i.a, align 8, !tbaa !74, !range !24, !noundef !25
  ret i8 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef ptr @_ZNK6icu_788message210data_model10Expression11getOperatorER10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(ret: address, provenance) dereferenceable(256) %0, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !31
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load i8, ptr %i.c, align 8, !tbaa !74, !range !24, !noundef !25
  %.not4 = icmp eq i8 %i.d, 0
  br i1 %.not4, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 27, ptr %1, align 4, !tbaa !31
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.0 = phi ptr [ null, %bb.c ], [ %i.e, %bb.d ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6icu_788message210data_model10Expression10getOperandEv(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(256) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(248) ptr @_ZN6icu_788message210data_model10Expression7Builder10setOperandEONS1_7OperandE(ptr noundef nonnull returned align 8 dereferenceable(248) initializes((8, 9)) %0, ptr noundef nonnull align 8 dereferenceable(104) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.icu_78::message2::data_model::Operand", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.a, align 8, !tbaa !71
  call void @_ZN6icu_788message210data_model7OperandC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  invoke void @_ZNSt8optionalISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEEE4swapERS7_(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(96) %i.c)
          to label %_ZN6icu_788message210data_model7OperandaSES2_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  call void @__clang_call_terminate(ptr %i.e) #19
  unreachable

_ZN6icu_788message210data_model7OperandaSES2_.exit: ; preds = %bb.a
  call void @_ZN6icu_788message210data_model7OperandD1Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %2) #18
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define noundef nonnull align 8 dereferenceable(248) ptr @_ZN6icu_788message210data_model10Expression7Builder11setOperatorEONS1_8OperatorE(ptr noundef nonnull returned align 8 dereferenceable(248) initializes((9, 10)) %0, ptr noundef nonnull align 8 dereferenceable(104) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"class.icu_78::message2::data_model::Operator", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 1, ptr %i.a, align 1, !tbaa !72
  call void @_ZN6icu_788message210data_model8OperatorC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(104) %1) #18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @_ZN6icu_7813UnicodeString4swapERS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %i.c) #18
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.f = load i8, ptr %i.d, align 8, !tbaa !43, !range !24, !noundef !25
  %i.g = load i8, ptr %i.e, align 8, !tbaa !43, !range !24, !noundef !25
  store i8 %i.g, ptr %i.d, align 8, !tbaa !43
  store i8 %i.f, ptr %i.e, align 8, !tbaa !43
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !54
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !54
  store ptr %i.k, ptr %i.h, align 8, !tbaa !54
  store ptr %i.j, ptr %i.i, align 8, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.n = load i32, ptr %i.l, align 8, !tbaa !42
  %i.o = load i32, ptr %i.m, align 8, !tbaa !42
  store i32 %i.o, ptr %i.l, align 8, !tbaa !42
  store i32 %i.n, ptr %i.m, align 8, !tbaa !42
  call void @_ZN6icu_788message210data_model8OperatorD1Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %2) #18
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(248) ptr @_ZN6icu_788message210data_model10Expression7Builder12addAttributeERKNS_13UnicodeStringEONS1_7OperandER10UErrorCode(ptr nofree noundef nonnull readonly returned align 8 captures(ret: address, provenance) dereferenceable(248) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.icu_78::message2::data_model::Option", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model6OptionE, i64 16), ptr %4, align 8, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  invoke void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 72
  invoke void @_ZN6icu_788message210data_model7OperandC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(104) %i.c, ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %_ZN6icu_788message210data_model6OptionC2ERKNS_13UnicodeStringEONS1_7OperandE.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.b) #18
  br label %bb.e

common.resume:                                    ; preds = %bb.g, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.e ], [ %i.g, %bb.g ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn.i = phi { ptr, i32 } [ %i.e, %bb.d ], [ %i.d, %bb.c ]
  call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(176) %4) #18
  br label %common.resume

_ZN6icu_788message210data_model6OptionC2ERKNS_13UnicodeStringEONS1_7OperandE.exit: ; preds = %bb.b
  %i.f = invoke noundef nonnull align 8 dereferenceable(17) ptr @_ZN6icu_788message210data_model9OptionMap7Builder3addEONS1_6OptionER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(17) %i.a, ptr noundef nonnull align 8 dereferenceable(176) %4, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %bb.f unwind label %bb.g       ; 0 uses

bb.f:                                             ; preds = %_ZN6icu_788message210data_model6OptionC2ERKNS_13UnicodeStringEONS1_7OperandE.exit
  call void @_ZN6icu_788message210data_model6OptionD1Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret ptr %0

bb.g:                                             ; preds = %_ZN6icu_788message210data_model6OptionC2ERKNS_13UnicodeStringEONS1_7OperandE.exit
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_788message210data_model6OptionD1Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_788message210data_model10Expression7Builder5buildER10UErrorCode(ptr dead_on_unwind noalias writable sret(%"class.icu_78::message2::data_model::Expression") align 8 %0, ptr noundef nonnull align 8 dereferenceable(248) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.icu_78::message2::data_model::OptionMap", align 8 ; 9 uses
  %4 = alloca %"class.icu_78::message2::data_model::Expression", align 8 ; 8 uses
  %5 = alloca %"class.icu_78::message2::data_model::Expression", align 8 ; 8 uses
  %6 = alloca %"class.icu_78::message2::data_model::Expression", align 8 ; 9 uses
  tail call void @_ZN6icu_788message210data_model10ExpressionC1Ev(ptr noundef nonnull align 8 dereferenceable(256) %0)
  %i.a = load i32, ptr %2, align 4, !tbaa !31
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.v

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !71, !range !24, !noundef !25
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.g = load i8, ptr %i.f, align 8, !tbaa !45, !range !24, !noundef !25
  %.not8.not = icmp eq i8 %i.g, 0
  br i1 %.not8.not, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.i = load i8, ptr %i.h, align 1, !tbaa !72, !range !24, !noundef !25
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 27, ptr %2, align 4, !tbaa !31
  br label %bb.v

bb.f:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !57, !noalias !177
  invoke void @_ZN6icu_788message210data_model9OptionMapC1ERKNS_7UVectorER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(28) %3, ptr noundef nonnull align 8 dereferenceable(40) %i.l, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %_ZN6icu_788message210data_model9OptionMap7Builder5buildER10UErrorCode.exit unwind label %bb.m

_ZN6icu_788message210data_model9OptionMap7Builder5buildER10UErrorCode.exit: ; preds = %bb.f
  %i.m = load i8, ptr %i.c, align 8, !tbaa !71, !range !24, !noundef !25
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.g, label %bb.s

bb.g:                                             ; preds = %_ZN6icu_788message210data_model9OptionMap7Builder5buildER10UErrorCode.exit
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.p = load i8, ptr %i.o, align 1, !tbaa !72, !range !24, !noundef !25
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model10ExpressionE, i64 16), ptr %4, align 8, !tbaa !29
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  call void @_ZN6icu_788message210data_model8OperatorC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(112) %i.t, ptr noundef nonnull align 8 dereferenceable(104) %i.r) #18
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 3 uses
  store i8 1, ptr %i.u, align 8, !tbaa !74
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 120 ; 2 uses
  invoke void @_ZN6icu_788message210data_model7OperandC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(104) %i.v, ptr noundef nonnull align 8 dereferenceable(104) %i.s)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 224
  invoke void @_ZN6icu_788message210data_model9OptionMapC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(28) %i.w, ptr noundef nonnull align 8 dereferenceable(28) %3)
          to label %_ZN6icu_788message210data_model10ExpressionC2ERKNS1_8OperatorERKNS1_7OperandERKNS1_9OptionMapE.exit unwind label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_788message210data_model7OperandD1Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.v) #18
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn.i = phi { ptr, i32 } [ %i.y, %bb.k ], [ %i.x, %bb.j ] ; 2 uses
  %i.z = load i8, ptr %i.u, align 8, !tbaa !74, !range !24, !noundef !25
  %i.aa = trunc nuw i8 %i.z to i1
  store i8 0, ptr %i.u, align 8, !tbaa !74
  br i1 %i.aa, label %.body.sink.split, label %.body

bb.m:                                             ; preds = %bb.f
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.body.sink.split:                                 ; preds = %bb.l, %bb.t, %bb.r
  %.sink19 = phi ptr [ %i.am, %bb.t ], [ %i.ad, %bb.r ], [ %i.t, %bb.l ]
  %.sink.ph = phi ptr [ %6, %bb.t ], [ %5, %bb.r ], [ %4, %bb.l ]
  %eh.lpad-body.ph = phi { ptr, i32 } [ %i.ar, %bb.t ], [ %.pn.i10, %bb.r ], [ %.pn.i, %bb.l ]
  call void @_ZN6icu_788message210data_model8OperatorD1Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(112) %.sink19) #18
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.l, %bb.t, %bb.r
  %.sink = phi ptr [ %6, %bb.t ], [ %5, %bb.r ], [ %4, %bb.l ], [ %.sink.ph, %.body.sink.split ]
  %eh.lpad-body = phi { ptr, i32 } [ %i.ar, %bb.t ], [ %.pn.i10, %bb.r ], [ %.pn.i, %bb.l ], [ %eh.lpad-body.ph, %.body.sink.split ]
  call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(256) %.sink) #18
  call void @_ZN6icu_788message210data_model9OptionMapD1Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %3) #18
  br label %bb.u

bb.n:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model10ExpressionE, i64 16), ptr %5, align 8, !tbaa !29
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 112 ; 3 uses
  store i8 0, ptr %i.ae, align 8, !tbaa !74
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 120 ; 2 uses
  invoke void @_ZN6icu_788message210data_model7OperandC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(104) %i.af, ptr noundef nonnull align 8 dereferenceable(104) %i.ac)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 224
  invoke void @_ZN6icu_788message210data_model9OptionMapC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(28) %i.ag, ptr noundef nonnull align 8 dereferenceable(28) %3)
          to label %_ZN6icu_788message210data_model10ExpressionC2ERKNS1_8OperatorERKNS1_7OperandERKNS1_9OptionMapE.exit unwind label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_788message210data_model7OperandD1Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.af) #18
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn.i10 = phi { ptr, i32 } [ %i.ai, %bb.q ], [ %i.ah, %bb.p ] ; 2 uses
  %i.aj = load i8, ptr %i.ae, align 8, !tbaa !74, !range !24, !noundef !25
  %i.ak = trunc nuw i8 %i.aj to i1
  store i8 0, ptr %i.ae, align 8, !tbaa !74
  br i1 %i.ak, label %.body.sink.split, label %.body

bb.s:                                             ; preds = %_ZN6icu_788message210data_model9OptionMap7Builder5buildER10UErrorCode.exit
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 120
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model10ExpressionE, i64 16), ptr %6, align 8, !tbaa !29
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  call void @_ZN6icu_788message210data_model8OperatorC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(112) %i.am, ptr noundef nonnull align 8 dereferenceable(104) %i.al) #18
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 112 ; 3 uses
  store i8 1, ptr %i.an, align 8, !tbaa !74
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 120 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6icu_788message210data_model7OperandE, i64 16), ptr %i.ao, align 8, !tbaa !29
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 216
  store i8 0, ptr %i.ap, align 8, !tbaa !45
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 224
  invoke void @_ZN6icu_788message210data_model9OptionMapC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(28) %i.aq, ptr noundef nonnull align 8 dereferenceable(28) %3)
          to label %_ZN6icu_788message210data_model10ExpressionC2ERKNS1_8OperatorERKNS1_7OperandERKNS1_9OptionMapE.exit unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN6icu_788message210data_model7OperandD1Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.ao) #18
  %i.as = load i8, ptr %i.an, align 8, !tbaa !74, !range !24, !noundef !25
  %i.at = trunc nuw i8 %i.as to i1
  store i8 0, ptr %i.an, align 8, !tbaa !74
  br i1 %i.at, label %.body.sink.split, label %.body

_ZN6icu_788message210data_model10ExpressionC2ERKNS1_8OperatorERKNS1_7OperandERKNS1_9OptionMapE.exit: ; preds = %bb.s, %bb.o, %bb.i
  %.sink18 = phi ptr [ %4, %bb.i ], [ %5, %bb.o ], [ %6, %bb.s ] ; 2 uses
  %i.au = call noundef nonnull align 8 dereferenceable(256) ptr @_ZN6icu_788message210data_model10ExpressionaSES2_(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 %.sink18) #18 ; 0 uses
  call void @_ZN6icu_788message210data_model10ExpressionD1Ev(ptr noundef nonnull align 8 dead_on_return(256) dereferenceable(256) %.sink18) #18
  call void @_ZN6icu_788message210data_model9OptionMapD1Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.v

bb.u:                                             ; preds = %.body, %bb.m
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.ab, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @_ZN6icu_788message210data_model10ExpressionD1Ev(ptr noundef nonnull align 8 dead_on_return(256) dereferenceable(256) %0) #18
  resume { ptr, i32 } %.pn

bb.v:                                             ; preds = %bb.e, %_ZN6icu_788message210data_model10ExpressionC2ERKNS1_8OperatorERKNS1_7OperandERKNS1_9OptionMapE.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define noundef nonnull align 8 dereferenceable(256) ptr @_ZN6icu_788message210data_model10ExpressionaSES2_(ptr noundef nonnull returned align 8 dereferenceable(256) %0, ptr noundef align 8 %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !74, !range !24, !noundef !25
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 3 uses
  %i.g = load i8, ptr %i.f, align 8, !tbaa !74, !range !24, !noundef !25
  %i.h = trunc nuw i8 %i.g to i1                  ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @_ZN6icu_7813UnicodeString4swapERS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.i, ptr noundef nonnull align 8 dereferenceable(64) %i.j) #18
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.m = load i8, ptr %i.k, align 8, !tbaa !43, !range !24, !noundef !25
  %i.n = load i8, ptr %i.l, align 8, !tbaa !43, !range !24, !noundef !25
  store i8 %i.n, ptr %i.k, align 8, !tbaa !43
  store i8 %i.m, ptr %i.l, align 8, !tbaa !43
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !54
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !54
  store ptr %i.r, ptr %i.o, align 8, !tbaa !54
  store ptr %i.q, ptr %i.p, align 8, !tbaa !54
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.u = load i32, ptr %i.s, align 8, !tbaa !42
  %i.v = load i32, ptr %i.t, align 8, !tbaa !42
  store i32 %i.v, ptr %i.s, align 8, !tbaa !42
  store i32 %i.u, ptr %i.t, align 8, !tbaa !42
  br label %_ZSt4swapIN6icu_788message210data_model8OperatorEENSt9enable_ifIXaa23is_move_constructible_vIT_E14is_swappable_vIS5_EEvE4typeERSt8optionalIS5_ESA_.exit.i

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN6icu_788message210data_model8OperatorC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(112) %i.b, ptr noundef nonnull align 8 dereferenceable(112) %i.a) #18
  store i8 1, ptr %i.f, align 8, !tbaa !74
  store i8 0, ptr %i.c, align 8, !tbaa !74
  tail call void @_ZN6icu_788message210data_model8OperatorD1Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(112) %i.a) #18
  br label %_ZSt4swapIN6icu_788message210data_model8OperatorEENSt9enable_ifIXaa23is_move_constructible_vIT_E14is_swappable_vIS5_EEvE4typeERSt8optionalIS5_ESA_.exit.i

bb.e:                                             ; preds = %bb.a
  br i1 %i.h, label %bb.f, label %_ZSt4swapIN6icu_788message210data_model8OperatorEENSt9enable_ifIXaa23is_move_constructible_vIT_E14is_swappable_vIS5_EEvE4typeERSt8optionalIS5_ESA_.exit.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN6icu_788message210data_model8OperatorC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(112) %i.a, ptr noundef nonnull align 8 dereferenceable(112) %i.b) #18
  store i8 1, ptr %i.c, align 8, !tbaa !74
  store i8 0, ptr %i.f, align 8, !tbaa !74
  tail call void @_ZN6icu_788message210data_model8OperatorD1Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(112) %i.b) #18
  br label %_ZSt4swapIN6icu_788message210data_model8OperatorEENSt9enable_ifIXaa23is_move_constructible_vIT_E14is_swappable_vIS5_EEvE4typeERSt8optionalIS5_ESA_.exit.i

_ZSt4swapIN6icu_788message210data_model8OperatorEENSt9enable_ifIXaa23is_move_constructible_vIT_E14is_swappable_vIS5_EEvE4typeERSt8optionalIS5_ESA_.exit.i: ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 128
  invoke void @_ZNSt8optionalISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEEE4swapERS7_(ptr noundef nonnull align 8 dereferenceable(96) %i.w, ptr noundef nonnull align 8 dereferenceable(96) %i.x)
          to label %_ZN6icu_788message210data_model4swapERNS1_10ExpressionES3_.exit unwind label %bb.g

bb.g:                                             ; preds = %_ZSt4swapIN6icu_788message210data_model8OperatorEENSt9enable_ifIXaa23is_move_constructible_vIT_E14is_swappable_vIS5_EEvE4typeERSt8optionalIS5_ESA_.exit.i
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  tail call void @__clang_call_terminate(ptr %i.z) #19
  unreachable

_ZN6icu_788message210data_model4swapERNS1_10ExpressionES3_.exit: ; preds = %_ZSt4swapIN6icu_788message210data_model8OperatorEENSt9enable_ifIXaa23is_move_constructible_vIT_E14is_swappable_vIS5_EEvE4typeERSt8optionalIS5_ESA_.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 2 uses
  %i.ac = load i8, ptr %i.aa, align 8, !tbaa !43, !range !24, !noundef !25
  %i.ad = load i8, ptr %i.ab, align 8, !tbaa !43, !range !24, !noundef !25
  store i8 %i.ad, ptr %i.aa, align 8, !tbaa !43
  store i8 %i.ac, ptr %i.ab, align 8, !tbaa !43
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 2 uses
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !54
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !54
  store ptr %i.ah, ptr %i.ae, align 8, !tbaa !54
  store ptr %i.ag, ptr %i.af, align 8, !tbaa !54
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  %i.ak = load i32, ptr %i.ai, align 8, !tbaa !42
  %i.al = load i32, ptr %i.aj, align 8, !tbaa !42
  store i32 %i.al, ptr %i.ai, align 8, !tbaa !42
  store i32 %i.ak, ptr %i.aj, align 8, !tbaa !42
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6icu_788message210data_model10ExpressionC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(256) initializes((0, 8), (112, 113), (120, 128), (216, 217), (224, 233), (240, 252)) %0) unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model10ExpressionE, i64 16), ptr %0, align 8, !tbaa !29
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 0, ptr %i.a, align 8, !tbaa !74
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6icu_788message210data_model7OperandE, i64 16), ptr %i.b, align 8, !tbaa !29
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i8 0, ptr %i.c, align 8, !tbaa !45
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model9OptionMapE, i64 16), ptr %i.d, align 8, !tbaa !29
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i8 0, ptr %i.e, align 8, !tbaa !53
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 240
  store ptr null, ptr %i.f, align 8, !tbaa !54
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i32 0, ptr %i.g, align 8, !tbaa !55
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_788message210data_model10ExpressionC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(256) initializes((0, 8), (112, 113)) %0, ptr noundef nonnull align 8 dereferenceable(256) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model10ExpressionE, i64 16), ptr %0, align 8, !tbaa !29
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  store i8 0, ptr %i.c, align 8, !tbaa !74
  %i.d = load i8, ptr %i.b, align 8, !tbaa !74, !range !24, !noundef !25
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %_ZNSt8optionalIN6icu_788message210data_model8OperatorEEC2ERKS4_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN6icu_788message210data_model8OperatorC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(112) %i.a, ptr noundef nonnull align 8 dereferenceable(112) %i.f) #18
  store i8 1, ptr %i.c, align 8, !tbaa !74
  br label %_ZNSt8optionalIN6icu_788message210data_model8OperatorEEC2ERKS4_.exit

_ZNSt8optionalIN6icu_788message210data_model8OperatorEEC2ERKS4_.exit: ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 120
  invoke void @_ZN6icu_788message210data_model7OperandC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(104) %i.g, ptr noundef nonnull align 8 dereferenceable(104) %i.h)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZNSt8optionalIN6icu_788message210data_model8OperatorEEC2ERKS4_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 224
  invoke void @_ZN6icu_788message210data_model9OptionMapC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(28) %i.i, ptr noundef nonnull align 8 dereferenceable(28) %i.j)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  ret void

bb.e:                                             ; preds = %_ZNSt8optionalIN6icu_788message210data_model8OperatorEEC2ERKS4_.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_788message210data_model7OperandD1Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.g) #18
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.l, %bb.f ], [ %i.k, %bb.e ]
  %i.m = load i8, ptr %i.c, align 8, !tbaa !74, !range !24, !noundef !25
  %i.n = trunc nuw i8 %i.m to i1
  store i8 0, ptr %i.c, align 8, !tbaa !74
  br i1 %i.n, label %bb.h, label %_ZNSt14_Optional_baseIN6icu_788message210data_model8OperatorELb0ELb0EED2Ev.exit

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN6icu_788message210data_model8OperatorD1Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(112) %i.a) #18
  br label %_ZNSt14_Optional_baseIN6icu_788message210data_model8OperatorELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN6icu_788message210data_model8OperatorELb0ELb0EED2Ev.exit: ; preds = %bb.h, %bb.g
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #18
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_788message210data_model10Expression7BuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(248) dereferenceable(248) initializes((0, 8)) %0) unnamed_addr #3 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6icu_788message210data_model10Expression7BuilderE, i64 16), ptr %0, align 8, !tbaa !29
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  tail call void @_ZN6icu_788message210data_model9OptionMap7BuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %i.a) #18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @_ZN6icu_788message210data_model8OperatorD1Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.b) #18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN6icu_788message210data_model7OperandD1Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.c) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_788message210data_model10Expression7BuilderD0Ev(ptr noundef nonnull align 8 dereferenceable(248) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN6icu_788message210data_model10Expression7BuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(248) dereferenceable(248) %0) #18
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_788message210data_model10ExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(256) dereferenceable(256) initializes((0, 8)) %0) unnamed_addr #3 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model10ExpressionE, i64 16), ptr %0, align 8, !tbaa !29
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  tail call void @_ZN6icu_788message210data_model9OptionMapD1Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %i.a) #18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @_ZN6icu_788message210data_model7OperandD1Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.b) #18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !74, !range !24, !noundef !25
  %i.e = trunc nuw i8 %i.d to i1
  store i8 0, ptr %i.c, align 8, !tbaa !74
  br i1 %i.e, label %bb.b, label %_ZNSt14_Optional_baseIN6icu_788message210data_model8OperatorELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN6icu_788message210data_model8OperatorD1Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(112) %i.f) #18
  br label %_ZNSt14_Optional_baseIN6icu_788message210data_model8OperatorELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN6icu_788message210data_model8OperatorELb0ELb0EED2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_788message210data_model10ExpressionD0Ev(ptr noundef nonnull align 8 dereferenceable(256) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN6icu_788message210data_model10ExpressionD1Ev(ptr noundef nonnull align 8 dead_on_return(256) dereferenceable(256) %0) #18
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_788message210data_model11PatternPartC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(272) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(272) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model11PatternPartE, i64 16), ptr %0, align 8, !tbaa !29
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZNSt8__detail9__variant15_Copy_ctor_baseILb0EJN6icu_7813UnicodeStringENS2_8message210data_model10ExpressionENS5_6MarkupEEEC2ERKS8_(ptr noundef nonnull align 8 dereferenceable(257) %i.a, ptr noundef nonnull align 8 dereferenceable(257) %i.b)
          to label %_ZNSt7variantIJN6icu_7813UnicodeStringENS0_8message210data_model10ExpressionENS3_6MarkupEEEC2ERKS6_.exit unwind label %bb.b

_ZNSt7variantIJN6icu_7813UnicodeStringENS0_8message210data_model10ExpressionENS3_6MarkupEEEC2ERKS6_.exit: ; preds = %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #18
  resume { ptr, i32 } %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull align 8 dereferenceable(256) ptr @_ZNK6icu_788message210data_model11PatternPart8contentsEv(ptr nofree noundef nonnull readonly align 8 captures(ret: address, provenance) dereferenceable(272) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull align 8 dereferenceable(144) ptr @_ZNK6icu_788message210data_model11PatternPart8asMarkupEv(ptr nofree noundef nonnull readonly align 8 captures(ret: address, provenance) dereferenceable(272) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_788message210data_model11PatternPart6asTextEv(ptr nofree noundef nonnull readonly align 8 captures(ret: address, provenance) dereferenceable(272) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define noundef nonnull align 8 dereferenceable(272) ptr @_ZN6icu_788message210data_model11PatternPartaSES2_(ptr noundef nonnull returned align 8 dereferenceable(272) %0, ptr noundef align 8 %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::integral_constant", align 1 ; 3 uses
  %3 = alloca %class.anon.115, align 8            ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 264
  %.pre.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !76
  br label %tailrecurse.i.i.i

tailrecurse.i.i.i:                                ; preds = %bb.b, %bb.a
  %i.c = phi i8 [ %.pre.i.i.i, %bb.a ], [ %i.e, %bb.b ] ; 2 uses
  %.tr.i.i.i = phi ptr [ %i.a, %bb.a ], [ %.tr6.i.i.i, %bb.b ] ; 3 uses
  %.tr6.i.i.i = phi ptr [ %i.b, %bb.a ], [ %.tr.i.i.i, %bb.b ] ; 5 uses
  %.not.i.i.i.i = icmp eq i8 %i.c, -1
  br i1 %.not.i.i.i.i, label %bb.b, label %bb.c, !prof !48

bb.b:                                             ; preds = %tailrecurse.i.i.i
  %i.d = getelementptr inbounds nuw i8, ptr %.tr.i.i.i, i64 256
  %i.e = load i8, ptr %i.d, align 8, !tbaa !76    ; 2 uses
  %.not.i5.i.i.i = icmp eq i8 %i.e, -1
  br i1 %.not.i5.i.i.i, label %_ZN6icu_788message210data_model4swapERNS1_11PatternPartES3_.exit, label %tailrecurse.i.i.i, !prof !48

bb.c:                                             ; preds = %tailrecurse.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  store ptr %.tr.i.i.i, ptr %3, align 8, !tbaa !79
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.tr6.i.i.i, ptr %i.f, align 8, !tbaa !80
  switch i8 %i.c, label %bb.g [
    i8 0, label %bb.d
    i8 1, label %bb.e
    i8 2, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  invoke void @_ZSt13__invoke_implIvZNSt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model10ExpressionENS4_6MarkupEEE4swapERS7_EUlOT_T0_E_JRS2_St17integral_constantImLm0EEEES9_St14__invoke_otherOSB_DpOT1_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(257) %.tr6.i.i.i, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %.noexc.i unwind label %bb.h

.noexc.i:                                         ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %_ZNSt8__detail9__variant15__raw_idx_visitIZNSt7variantIJN6icu_7813UnicodeStringENS3_8message210data_model10ExpressionENS6_6MarkupEEE4swapERS9_EUlOT_T0_E_JSA_EEEvSC_DpOT0_.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  invoke void @_ZZNSt7variantIJN6icu_7813UnicodeStringENS0_8message210data_model10ExpressionENS3_6MarkupEEE4swapERS6_ENUlOT_T0_E_clIRS4_St17integral_constantImLm1EEEEDaS9_SA_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(257) %.tr6.i.i.i)
          to label %_ZNSt8__detail9__variant15__raw_idx_visitIZNSt7variantIJN6icu_7813UnicodeStringENS3_8message210data_model10ExpressionENS6_6MarkupEEE4swapERS9_EUlOT_T0_E_JSA_EEEvSC_DpOT0_.exit.i.i.i unwind label %bb.h

bb.f:                                             ; preds = %bb.c
  invoke void @_ZZNSt7variantIJN6icu_7813UnicodeStringENS0_8message210data_model10ExpressionENS3_6MarkupEEE4swapERS6_ENUlOT_T0_E_clIRS5_St17integral_constantImLm2EEEEDaS9_SA_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(257) %.tr6.i.i.i)
          to label %_ZNSt8__detail9__variant15__raw_idx_visitIZNSt7variantIJN6icu_7813UnicodeStringENS3_8message210data_model10ExpressionENS6_6MarkupEEE4swapERS9_EUlOT_T0_E_JSA_EEEvSC_DpOT0_.exit.i.i.i unwind label %bb.h

bb.g:                                             ; preds = %bb.c
  unreachable

_ZNSt8__detail9__variant15__raw_idx_visitIZNSt7variantIJN6icu_7813UnicodeStringENS3_8message210data_model10ExpressionENS6_6MarkupEEE4swapERS9_EUlOT_T0_E_JSA_EEEvSC_DpOT0_.exit.i.i.i: ; preds = %bb.f, %bb.e, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %_ZN6icu_788message210data_model4swapERNS1_11PatternPartES3_.exit

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  call void @__clang_call_terminate(ptr %i.h) #19
  unreachable

_ZN6icu_788message210data_model4swapERNS1_11PatternPartES3_.exit: ; preds = %bb.b, %_ZNSt8__detail9__variant15__raw_idx_visitIZNSt7variantIJN6icu_7813UnicodeStringENS3_8message210data_model10ExpressionENS6_6MarkupEEE4swapERS9_EUlOT_T0_E_JSA_EEEvSC_DpOT0_.exit.i.i.i
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_788message210data_model11PatternPartD2Ev(ptr noundef nonnull align 8 dead_on_return(272) dereferenceable(272) initializes((0, 8)) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model11PatternPartE, i64 16), ptr %0, align 8, !tbaa !29
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.b = load i8, ptr %i.a, align 8, !tbaa !76
  %.not.i.i = icmp eq i8 %i.b, -1
  br i1 %.not.i.i, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN6icu_7813UnicodeStringENS2_8message210data_model10ExpressionENS5_6MarkupEEED2Ev.exit, label %bb.b, !prof !48

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !29
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(257) %i.c) #18, !inline_history !1
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN6icu_7813UnicodeStringENS2_8message210data_model10ExpressionENS5_6MarkupEEED2Ev.exit

_ZNSt8__detail9__variant16_Variant_storageILb0EJN6icu_7813UnicodeStringENS2_8message210data_model10ExpressionENS5_6MarkupEEED2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_788message210data_model11PatternPartD0Ev(ptr noundef nonnull align 8 dereferenceable(272) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN6icu_788message210data_model11PatternPartD1Ev(ptr noundef nonnull align 8 dead_on_return(272) dereferenceable(272) %0) #18
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_788message210data_model7PatternC2ERKNS_7UVectorER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(24) initializes((0, 9), (12, 24)) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::integral_constant", align 1 ; 3 uses
  %4 = alloca %class.anon.115, align 8            ; 7 uses
  %5 = alloca %"class.icu_78::message2::data_model::PatternPart", align 8 ; 7 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model7PatternE, i64 16), ptr %0, align 8, !tbaa !29
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.a, align 8, !tbaa !85
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !41   ; 5 uses
  store i32 %i.d, ptr %i.b, align 4, !tbaa !86
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr null, ptr %i.e, align 8, !tbaa !87
  %i.f = load i32, ptr %2, align 4, !tbaa !31
  %i.g = icmp slt i32 %i.f, 1
  br i1 %i.g, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.h = sext i32 %i.d to i64                     ; 2 uses
  %i.i = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.h, i64 272) ; 2 uses
  %i.j = extractvalue { i64, i1 } %i.i, 1
  %i.k = extractvalue { i64, i1 } %i.i, 0         ; 2 uses
  %i.l = or disjoint i64 %i.k, 8
  %i.m = select i1 %i.j, i64 -1, i64 %i.l
  %i.n = tail call noundef ptr @_ZN6icu_787UMemorynaEm(i64 noundef %i.m) #18 ; 4 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %.loopexit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 %i.h, ptr %i.n, align 8
  %.ptr27.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.p = icmp eq i32 %i.d, 0
  br i1 %i.p, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.c, %.preheader
  %.idx.i = phi i64 [ %.add.i, %.preheader ], [ 8, %bb.c ] ; 3 uses
  %.ptr.ptr.i = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx.i ; 3 uses
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model11PatternPartE, i64 16), ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16)>, ptr %.ptr.ptr.i, align 8, !tbaa !29
  %i.q = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i, i64 16
  store i16 2, ptr %i.q, align 8, !tbaa !26
  %i.r = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i, i64 264
  store i8 0, ptr %i.r, align 8, !tbaa !76
  %.add.i = add nuw nsw i64 %.idx.i, 272
  %i.s = add nuw nsw i64 %.idx.i, 264
  %i.t = icmp eq i64 %i.s, %i.k
  br i1 %i.t, label %.loopexit33.i, label %.preheader

.loopexit33.i:                                    ; preds = %.preheader
  %i.u = icmp sgt i32 %i.d, 0
  br i1 %i.u, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %.loopexit33.i
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 264
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
  %wide.trip.count.i = zext nneg i32 %i.d to i64
  br label %bb.d

.loopexit.thread:                                 ; preds = %bb.b
  store i32 7, ptr %2, align 4, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.o

bb.d:                                             ; preds = %_ZN6icu_788message210data_model11PatternPartaSES2_.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZN6icu_788message210data_model11PatternPartaSES2_.exit.i ] ; 3 uses
  %i.x = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.y = invoke noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %i.x)
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.d
  invoke void @_ZN6icu_788message210data_model11PatternPartC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(272) %5, ptr noundef nonnull align 8 dereferenceable(272) %i.y)
          to label %.noexc11 unwind label %bb.l

.noexc11:                                         ; preds = %.noexc
  %i.z = getelementptr inbounds nuw [272 x i8], ptr %.ptr27.i, i64 %indvars.iv.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.pre.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !76
  br label %tailrecurse.i.i.i.i.i

tailrecurse.i.i.i.i.i:                            ; preds = %bb.e, %.noexc11
  %i.ab = phi i8 [ %.pre.i.i.i.i.i, %.noexc11 ], [ %i.ad, %bb.e ] ; 2 uses
  %.tr.i.i.i.i.i = phi ptr [ %i.aa, %.noexc11 ], [ %.tr6.i.i.i.i.i, %bb.e ] ; 3 uses
  %.tr6.i.i.i.i.i = phi ptr [ %i.v, %.noexc11 ], [ %.tr.i.i.i.i.i, %bb.e ] ; 5 uses
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ab, -1
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.f, !prof !48

bb.e:                                             ; preds = %tailrecurse.i.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.tr.i.i.i.i.i, i64 256
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !76  ; 2 uses
  %.not.i5.i.i.i.i.i = icmp eq i8 %i.ad, -1
  br i1 %.not.i5.i.i.i.i.i, label %_ZN6icu_788message210data_model11PatternPartaSES2_.exit.i, label %tailrecurse.i.i.i.i.i, !prof !48

bb.f:                                             ; preds = %tailrecurse.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  store ptr %.tr.i.i.i.i.i, ptr %4, align 8, !tbaa !79
  store ptr %.tr6.i.i.i.i.i, ptr %i.w, align 8, !tbaa !80
  switch i8 %i.ab, label %bb.j [
    i8 0, label %bb.g
    i8 1, label %bb.h
    i8 2, label %bb.i
  ]

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  invoke void @_ZSt13__invoke_implIvZNSt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model10ExpressionENS4_6MarkupEEE4swapERS7_EUlOT_T0_E_JRS2_St17integral_constantImLm0EEEES9_St14__invoke_otherOSB_DpOT1_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(257) %.tr6.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %.noexc.i.i.i unwind label %bb.k

.noexc.i.i.i:                                     ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %_ZNSt8__detail9__variant15__raw_idx_visitIZNSt7variantIJN6icu_7813UnicodeStringENS3_8message210data_model10ExpressionENS6_6MarkupEEE4swapERS9_EUlOT_T0_E_JSA_EEEvSC_DpOT0_.exit.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  invoke void @_ZZNSt7variantIJN6icu_7813UnicodeStringENS0_8message210data_model10ExpressionENS3_6MarkupEEE4swapERS6_ENUlOT_T0_E_clIRS4_St17integral_constantImLm1EEEEDaS9_SA_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(257) %.tr6.i.i.i.i.i)
          to label %_ZNSt8__detail9__variant15__raw_idx_visitIZNSt7variantIJN6icu_7813UnicodeStringENS3_8message210data_model10ExpressionENS6_6MarkupEEE4swapERS9_EUlOT_T0_E_JSA_EEEvSC_DpOT0_.exit.i.i.i.i.i unwind label %bb.k

bb.i:                                             ; preds = %bb.f
  invoke void @_ZZNSt7variantIJN6icu_7813UnicodeStringENS0_8message210data_model10ExpressionENS3_6MarkupEEE4swapERS6_ENUlOT_T0_E_clIRS5_St17integral_constantImLm2EEEEDaS9_SA_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(257) %.tr6.i.i.i.i.i)
          to label %_ZNSt8__detail9__variant15__raw_idx_visitIZNSt7variantIJN6icu_7813UnicodeStringENS3_8message210data_model10ExpressionENS6_6MarkupEEE4swapERS9_EUlOT_T0_E_JSA_EEEvSC_DpOT0_.exit.i.i.i.i.i unwind label %bb.k

bb.j:                                             ; preds = %bb.f
  unreachable

_ZNSt8__detail9__variant15__raw_idx_visitIZNSt7variantIJN6icu_7813UnicodeStringENS3_8message210data_model10ExpressionENS6_6MarkupEEE4swapERS9_EUlOT_T0_E_JSA_EEEvSC_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.i, %bb.h, %.noexc.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %_ZN6icu_788message210data_model11PatternPartaSES2_.exit.i

bb.k:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  call void @__clang_call_terminate(ptr %i.af) #19
  unreachable

_ZN6icu_788message210data_model11PatternPartaSES2_.exit.i: ; preds = %bb.e, %_ZNSt8__detail9__variant15__raw_idx_visitIZNSt7variantIJN6icu_7813UnicodeStringENS3_8message210data_model10ExpressionENS6_6MarkupEEE4swapERS9_EUlOT_T0_E_JSA_EEEvSC_DpOT0_.exit.i.i.i.i.i
  call void @_ZN6icu_788message210data_model11PatternPartD1Ev(ptr noundef nonnull align 8 dead_on_return(272) dereferenceable(272) %5) #18
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit, label %bb.d, !llvm.loop !178

.loopexit:                                        ; preds = %_ZN6icu_788message210data_model11PatternPartaSES2_.exit.i, %.loopexit33.i, %bb.c
  %.pr = load i32, ptr %2, align 4, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.ag = icmp slt i32 %.pr, 1
  br i1 %i.ag, label %bb.m, label %bb.o

bb.l:                                             ; preds = %.noexc, %bb.d
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7810LocalArrayINS_8message210data_model11PatternPartEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.e) #18
  call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #18
  resume { ptr, i32 } %i.ah

bb.m:                                             ; preds = %.loopexit
  %i.ai = load ptr, ptr %i.e, align 8, !tbaa !87  ; 4 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %_ZN6icu_7810LocalArrayINS_8message210data_model11PatternPartEE12adoptInsteadEPS3_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ak = getelementptr inbounds i8, ptr %i.ai, i64 -8 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8            ; 2 uses
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %.loopexit.i, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.n
  %.idx.i12 = mul nsw i64 %i.al, 272
  %i.an = getelementptr inbounds i8, ptr %i.ai, i64 %.idx.i12
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.preheader.i
  %i.ao = phi ptr [ %i.ap, %.preheader.i ], [ %i.an, %.preheader.preheader.i ]
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -272 ; 3 uses
  call void @_ZN6icu_788message210data_model11PatternPartD1Ev(ptr noundef nonnull align 8 dead_on_return(272) dereferenceable(272) %i.ap) #18
  %i.aq = icmp eq ptr %i.ap, %i.ai
  br i1 %i.aq, label %.loopexit.i, label %.preheader.i

.loopexit.i:                                      ; preds = %.preheader.i, %bb.n
  call void @_ZN6icu_787UMemorydaEPv(ptr noundef nonnull %i.ak) #18
  br label %_ZN6icu_7810LocalArrayINS_8message210data_model11PatternPartEE12adoptInsteadEPS3_.exit

_ZN6icu_7810LocalArrayINS_8message210data_model11PatternPartEE12adoptInsteadEPS3_.exit: ; preds = %bb.m, %.loopexit.i
  store ptr %.ptr27.i, ptr %i.e, align 8, !tbaa !87
  br label %bb.o

bb.o:                                             ; preds = %.loopexit.thread, %_ZN6icu_7810LocalArrayINS_8message210data_model11PatternPartEE12adoptInsteadEPS3_.exit, %.loopexit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6icu_7810LocalArrayINS_8message210data_model11PatternPartEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !87     ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %i.a, i64 -8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.b
  %.idx = mul nsw i64 %i.d, 272
  %i.f = getelementptr inbounds i8, ptr %i.a, i64 %.idx
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %i.g = phi ptr [ %i.h, %.preheader ], [ %i.f, %.preheader.preheader ]
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -272 ; 3 uses
  tail call void @_ZN6icu_788message210data_model11PatternPartD1Ev(ptr noundef nonnull align 8 dead_on_return(272) dereferenceable(272) %i.h) #18
  %i.i = icmp eq ptr %i.h, %i.a
  br i1 %i.i, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %.preheader, %bb.b
  tail call void @_ZN6icu_787UMemorydaEPv(ptr noundef nonnull %i.c) #18
  br label %bb.c

bb.c:                                             ; preds = %.loopexit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_788message210data_model7PatternC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(24) initializes((0, 9), (12, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::integral_constant", align 1 ; 3 uses
  %3 = alloca %class.anon.115, align 8            ; 7 uses
  %4 = alloca %"class.icu_78::message2::data_model::PatternPart", align 8 ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model7PatternE, i64 16), ptr %0, align 8, !tbaa !29
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i8 0, ptr %i.a, align 8, !tbaa !85
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !86   ; 5 uses
  store i32 %i.d, ptr %i.b, align 4, !tbaa !86
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr null, ptr %i.e, align 8, !tbaa !87
  %i.f = icmp eq i32 %i.d, 0
  br i1 %i.f, label %.thread, label %bb.c

bb.b:                                             ; preds = %bb.f
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7810LocalArrayINS_8message210data_model11PatternPartEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.e) #18
  call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #18
  resume { ptr, i32 } %i.g

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !87
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.j = sext i32 %i.d to i64                     ; 2 uses
  %i.k = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.j, i64 272) ; 2 uses
  %i.l = extractvalue { i64, i1 } %i.k, 1
  %i.m = extractvalue { i64, i1 } %i.k, 0         ; 2 uses
  %i.n = or disjoint i64 %i.m, 8
  %i.o = select i1 %i.l, i64 -1, i64 %i.n
  %i.p = tail call noundef ptr @_ZN6icu_787UMemorynaEm(i64 noundef %i.o) #18 ; 4 uses
  %.not = icmp eq ptr %i.p, null                  ; 2 uses
  br i1 %.not, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 %i.j, ptr %i.p, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.e
  %.idx.i7 = phi i64 [ %.add.i, %bb.e ], [ 8, %bb.d ] ; 3 uses
  %.ptr.ptr.i = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i7 ; 3 uses
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model11PatternPartE, i64 16), ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16)>, ptr %.ptr.ptr.i, align 8, !tbaa !29
  %i.q = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i, i64 16
  store i16 2, ptr %i.q, align 8, !tbaa !26
  %i.r = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i, i64 264
  store i8 0, ptr %i.r, align 8, !tbaa !76
  %.add.i = add nuw nsw i64 %.idx.i7, 272
  %i.s = add nuw nsw i64 %.idx.i7, 264
  %i.t = icmp eq i64 %i.s, %i.m
  br i1 %i.t, label %.loopexit32.i, label %bb.e

.loopexit32.i:                                    ; preds = %bb.e
  %.ptr26.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  %i.u = icmp sgt i32 %i.d, 0
  br i1 %i.u, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %.loopexit32.i
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 264
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8
  %wide.trip.count.i = zext nneg i32 %i.d to i64
  br label %bb.f

bb.f:                                             ; preds = %_ZN6icu_788message210data_model11PatternPartaSES2_.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZN6icu_788message210data_model11PatternPartaSES2_.exit.i ] ; 3 uses
  %i.x = getelementptr inbounds nuw [272 x i8], ptr %i.i, i64 %indvars.iv.i
  invoke void @_ZN6icu_788message210data_model11PatternPartC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(272) %4, ptr noundef nonnull align 8 dereferenceable(272) %i.x)
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.f
  %i.y = getelementptr inbounds nuw [272 x i8], ptr %.ptr26.i, i64 %indvars.iv.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.pre.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !76
  br label %tailrecurse.i.i.i.i.i

tailrecurse.i.i.i.i.i:                            ; preds = %bb.g, %.noexc
  %i.aa = phi i8 [ %.pre.i.i.i.i.i, %.noexc ], [ %i.ac, %bb.g ] ; 2 uses
  %.tr.i.i.i.i.i = phi ptr [ %i.z, %.noexc ], [ %.tr6.i.i.i.i.i, %bb.g ] ; 3 uses
  %.tr6.i.i.i.i.i = phi ptr [ %i.v, %.noexc ], [ %.tr.i.i.i.i.i, %bb.g ] ; 5 uses
  %.not.i.i.i.i.i.i = icmp eq i8 %i.aa, -1
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.h, !prof !48

bb.g:                                             ; preds = %tailrecurse.i.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.tr.i.i.i.i.i, i64 256
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !76  ; 2 uses
  %.not.i5.i.i.i.i.i = icmp eq i8 %i.ac, -1
  br i1 %.not.i5.i.i.i.i.i, label %_ZN6icu_788message210data_model11PatternPartaSES2_.exit.i, label %tailrecurse.i.i.i.i.i, !prof !48

bb.h:                                             ; preds = %tailrecurse.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  store ptr %.tr.i.i.i.i.i, ptr %3, align 8, !tbaa !79
  store ptr %.tr6.i.i.i.i.i, ptr %i.w, align 8, !tbaa !80
  switch i8 %i.aa, label %bb.l [
    i8 0, label %bb.i
    i8 1, label %bb.j
    i8 2, label %bb.k
  ]

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  invoke void @_ZSt13__invoke_implIvZNSt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model10ExpressionENS4_6MarkupEEE4swapERS7_EUlOT_T0_E_JRS2_St17integral_constantImLm0EEEES9_St14__invoke_otherOSB_DpOT1_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(257) %.tr6.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %.noexc.i.i.i unwind label %bb.m

.noexc.i.i.i:                                     ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %_ZNSt8__detail9__variant15__raw_idx_visitIZNSt7variantIJN6icu_7813UnicodeStringENS3_8message210data_model10ExpressionENS6_6MarkupEEE4swapERS9_EUlOT_T0_E_JSA_EEEvSC_DpOT0_.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  invoke void @_ZZNSt7variantIJN6icu_7813UnicodeStringENS0_8message210data_model10ExpressionENS3_6MarkupEEE4swapERS6_ENUlOT_T0_E_clIRS4_St17integral_constantImLm1EEEEDaS9_SA_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(257) %.tr6.i.i.i.i.i)
          to label %_ZNSt8__detail9__variant15__raw_idx_visitIZNSt7variantIJN6icu_7813UnicodeStringENS3_8message210data_model10ExpressionENS6_6MarkupEEE4swapERS9_EUlOT_T0_E_JSA_EEEvSC_DpOT0_.exit.i.i.i.i.i unwind label %bb.m

bb.k:                                             ; preds = %bb.h
  invoke void @_ZZNSt7variantIJN6icu_7813UnicodeStringENS0_8message210data_model10ExpressionENS3_6MarkupEEE4swapERS6_ENUlOT_T0_E_clIRS5_St17integral_constantImLm2EEEEDaS9_SA_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(257) %.tr6.i.i.i.i.i)
          to label %_ZNSt8__detail9__variant15__raw_idx_visitIZNSt7variantIJN6icu_7813UnicodeStringENS3_8message210data_model10ExpressionENS6_6MarkupEEE4swapERS9_EUlOT_T0_E_JSA_EEEvSC_DpOT0_.exit.i.i.i.i.i unwind label %bb.m

bb.l:                                             ; preds = %bb.h
  unreachable

_ZNSt8__detail9__variant15__raw_idx_visitIZNSt7variantIJN6icu_7813UnicodeStringENS3_8message210data_model10ExpressionENS6_6MarkupEEE4swapERS9_EUlOT_T0_E_JSA_EEEvSC_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.k, %bb.j, %.noexc.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %_ZN6icu_788message210data_model11PatternPartaSES2_.exit.i

bb.m:                                             ; preds = %bb.k, %bb.j, %bb.i
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  call void @__clang_call_terminate(ptr %i.ae) #19
  unreachable

_ZN6icu_788message210data_model11PatternPartaSES2_.exit.i: ; preds = %bb.g, %_ZNSt8__detail9__variant15__raw_idx_visitIZNSt7variantIJN6icu_7813UnicodeStringENS3_8message210data_model10ExpressionENS6_6MarkupEEE4swapERS9_EUlOT_T0_E_JSA_EEEvSC_DpOT0_.exit.i.i.i.i.i
  call void @_ZN6icu_788message210data_model11PatternPartD1Ev(ptr noundef nonnull align 8 dead_on_return(272) dereferenceable(272) %4) #18
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit, label %bb.f, !llvm.loop !179

.loopexit:                                        ; preds = %_ZN6icu_788message210data_model11PatternPartaSES2_.exit.i, %.loopexit32.i, %bb.c
  %.019.i = phi ptr [ null, %bb.c ], [ %.ptr26.i, %.loopexit32.i ], [ %.ptr26.i, %_ZN6icu_788message210data_model11PatternPartaSES2_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.af = load ptr, ptr %i.e, align 8, !tbaa !87  ; 4 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.loopexit
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 -8 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8            ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %.loopexit.i11, label %.preheader.preheader.i8

.preheader.preheader.i8:                          ; preds = %bb.n
  %.idx.i9 = mul nsw i64 %i.ai, 272
  %i.ak = getelementptr inbounds i8, ptr %i.af, i64 %.idx.i9
  br label %.preheader.i10

.preheader.i10:                                   ; preds = %.preheader.i10, %.preheader.preheader.i8
  %i.al = phi ptr [ %i.am, %.preheader.i10 ], [ %i.ak, %.preheader.preheader.i8 ]
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -272 ; 3 uses
  call void @_ZN6icu_788message210data_model11PatternPartD1Ev(ptr noundef nonnull align 8 dead_on_return(272) dereferenceable(272) %i.am) #18
  %i.an = icmp eq ptr %i.am, %i.af
  br i1 %i.an, label %.loopexit.i11, label %.preheader.i10

.loopexit.i11:                                    ; preds = %.preheader.i10, %bb.n
  call void @_ZN6icu_787UMemorydaEPv(ptr noundef nonnull %i.ah) #18
  br label %bb.o

bb.o:                                             ; preds = %.loopexit.i11, %.loopexit
  store ptr %.019.i, ptr %i.e, align 8, !tbaa !87
  br i1 %.not, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  store i8 1, ptr %i.a, align 8, !tbaa !85
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.p, %bb.o
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_ZNK6icu_788message210data_model7Pattern8numPartsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !86
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef nonnull align 8 dereferenceable(272) ptr @_ZNK6icu_788message210data_model7Pattern7getPartEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = sext i32 %1 to i64
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !87
  %i.d = getelementptr inbounds [272 x i8], ptr %i.c, i64 %i.b
  ret ptr %i.d
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_788message210data_model7Pattern7BuilderC2ER10UErrorCode(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 8)) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6icu_788message210data_model7Pattern7BuilderE, i64 16), ptr %0, align 8, !tbaa !29
  %i.a = load i32, ptr %1, align 4, !tbaa !31
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %_ZN6icu_788message213createUVectorER10UErrorCode.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 40) #18 ; 7 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZN6icu_788message213createUVectorER10UErrorCode.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6icu_787UVectorC1ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %1)
          to label %.thread.i.i unwind label %bb.d

.thread.i.i:                                      ; preds = %bb.c
  %i.e = load i32, ptr %1, align 4, !tbaa !31
  %i.f = icmp slt i32 %i.e, 1
  br i1 %i.f, label %_ZN6icu_788message220createUVectorNoAdoptER10UErrorCode.exit.thread.i, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.c) #18
  resume { ptr, i32 } %i.g

bb.e:                                             ; preds = %.thread.i.i
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !29
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #18, !inline_history !0
  br label %_ZN6icu_788message213createUVectorER10UErrorCode.exit

_ZN6icu_788message220createUVectorNoAdoptER10UErrorCode.exit.thread.i: ; preds = %.thread.i.i
  %i.k = tail call noundef ptr @_ZN6icu_787UVector10setDeleterEPFvPvE(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull @uprv_deleteUObject_78) ; 0 uses
  br label %_ZN6icu_788message213createUVectorER10UErrorCode.exit

_ZN6icu_788message213createUVectorER10UErrorCode.exit: ; preds = %bb.b, %bb.e, %bb.a, %_ZN6icu_788message220createUVectorNoAdoptER10UErrorCode.exit.thread.i
  %.0.i = phi ptr [ %i.c, %_ZN6icu_788message220createUVectorNoAdoptER10UErrorCode.exit.thread.i ], [ null, %bb.a ], [ null, %bb.e ], [ null, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.i, ptr %i.l, align 8, !tbaa !89
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZNK6icu_788message210data_model7Pattern7Builder5buildER10UErrorCode(ptr dead_on_unwind noalias writable sret(%"class.icu_78::message2::data_model::Pattern") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !31
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model7PatternE, i64 16), ptr %0, align 8, !tbaa !29
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.c, align 8, !tbaa !85
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.d, align 4, !tbaa !86
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.e, align 8, !tbaa !87
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !89
  invoke void @_ZN6icu_788message210data_model7PatternC1ERKNS_7UVectorER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.c
  ret void

bb.e:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #19
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZN6icu_788message210data_model7Pattern7Builder3addEONS1_10ExpressionER10UErrorCode(ptr nofree noundef nonnull readonly returned align 8 captures(ret: address, provenance) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(256) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.icu_78::message2::data_model::PatternPart", align 8 ; 8 uses
  %i.a = load i32, ptr %2, align 4, !tbaa !31
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model11PatternPartE, i64 16), ptr %3, align 8, !tbaa !29
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  invoke void @_ZN6icu_788message210data_model10ExpressionC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(257) %i.c, ptr noundef nonnull align 8 dereferenceable(256) %1)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(272) %3) #18
  br label %.body

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 264
  store i8 1, ptr %i.e, align 8, !tbaa !76
  %i.f = load i32, ptr %2, align 4, !tbaa !31
  %i.g = icmp slt i32 %i.f, 1
  br i1 %i.g, label %bb.e, label %_ZN6icu_788message26createINS0_10data_model11PatternPartEEEPT_OS4_R10UErrorCode.exit

bb.e:                                             ; preds = %bb.d
  %i.h = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 272) #18 ; 4 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN6icu_788message210data_model11PatternPartC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(272) %i.h, ptr noundef nonnull align 8 dereferenceable(272) %3)
          to label %_ZN6icu_788message26createINS0_10data_model11PatternPartEEEPT_OS4_R10UErrorCode.exit unwind label %bb.h

bb.g:                                             ; preds = %bb.e
  store i32 7, ptr %2, align 4, !tbaa !31
  br label %_ZN6icu_788message26createINS0_10data_model11PatternPartEEEPT_OS4_R10UErrorCode.exit

bb.h:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.h) #18
  br label %.body

_ZN6icu_788message26createINS0_10data_model11PatternPartEEEPT_OS4_R10UErrorCode.exit: ; preds = %bb.g, %bb.f, %bb.d
  %.0.i = phi ptr [ null, %bb.d ], [ null, %bb.g ], [ %i.h, %bb.f ]
  call void @_ZN6icu_788message210data_model11PatternPartD1Ev(ptr noundef nonnull align 8 dead_on_return(272) dereferenceable(272) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !89
  invoke void @_ZN6icu_787UVector12adoptElementEPvR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.l, ptr noundef %.0.i, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %_ZN6icu_788message26createINS0_10data_model11PatternPartEEEPT_OS4_R10UErrorCode.exit, %bb.a
  ret ptr %0

bb.j:                                             ; preds = %_ZN6icu_788message26createINS0_10data_model11PatternPartEEEPT_OS4_R10UErrorCode.exit
end_hunk_0
begin_hunk_1_@_ZN6icu_788message210data_model7VariantC2ERKS2_:bb.a
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN6icu_788message210data_model7PatternC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  ret void

bb.d:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_788message210data_model12SelectorKeysD1Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20) %i.a) #18
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.f, %bb.e ], [ %i.e, %bb.d ]
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #18
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_788message210data_model7VariantD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) initializes((0, 8)) %0) unnamed_addr #3 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model7VariantE, i64 16), ptr %0, align 8, !tbaa !29
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN6icu_788message210data_model7PatternD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.a) #18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN6icu_788message210data_model12SelectorKeysD1Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20) %i.b) #18
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_788message210data_model7VariantD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN6icu_788message210data_model7VariantD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) #18
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef nonnull align 8 dereferenceable(44) ptr @_ZN6icu_788message210data_model7MatcheraSES2_(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(44) %0, ptr nofree noundef align 8 captures(none) %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !106, !range !24, !noundef !25
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.d, align 8, !tbaa !106
  br label %_ZN6icu_788message210data_model4swapERNS1_7MatcherES3_.exit

bb.c:                                             ; preds = %bb.a
  %i.e = load i8, ptr %i.d, align 8, !tbaa !106, !range !24, !noundef !25
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i8 1, ptr %i.a, align 8, !tbaa !106
  br label %_ZN6icu_788message210data_model4swapERNS1_7MatcherES3_.exit

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !107
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !107
  store ptr %i.j, ptr %i.g, align 8, !tbaa !107
  store ptr %i.i, ptr %i.h, align 8, !tbaa !107
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.m = load i32, ptr %i.k, align 8, !tbaa !42
  %i.n = load i32, ptr %i.l, align 8, !tbaa !42
  store i32 %i.n, ptr %i.k, align 8, !tbaa !42
  store i32 %i.m, ptr %i.l, align 8, !tbaa !42
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !108
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !108
  store ptr %i.r, ptr %i.o, align 8, !tbaa !108
  store ptr %i.q, ptr %i.p, align 8, !tbaa !108
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.u = load i32, ptr %i.s, align 8, !tbaa !42
  %i.v = load i32, ptr %i.t, align 8, !tbaa !42
  store i32 %i.v, ptr %i.s, align 8, !tbaa !42
  store i32 %i.u, ptr %i.t, align 8, !tbaa !42
  br label %_ZN6icu_788message210data_model4swapERNS1_7MatcherES3_.exit

_ZN6icu_788message210data_model4swapERNS1_7MatcherES3_.exit: ; preds = %bb.b, %bb.d, %bb.e
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_788message210data_model7MatcherC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(44) initializes((0, 9), (16, 28), (32, 44)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(44) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model7MatcherE, i64 16), ptr %0, align 8, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i8 0, ptr %i.b, align 8, !tbaa !106
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr null, ptr %i.c, align 8, !tbaa !107
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i32 0, ptr %i.d, align 8, !tbaa !109
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  store ptr null, ptr %i.e, align 8, !tbaa !108
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store i32 0, ptr %i.f, align 8, !tbaa !110
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load i32, ptr %i.g, align 8, !tbaa !109  ; 5 uses
  store i32 %i.h, ptr %i.d, align 8, !tbaa !109
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = load i32, ptr %i.i, align 8, !tbaa !110
  store i32 %i.j, ptr %i.f, align 8, !tbaa !110
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i32 0, ptr %i.a, align 4, !tbaa !31
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !107
  %i.m = sext i32 %i.h to i64                     ; 2 uses
  %i.n = icmp slt i32 %i.h, 0
  %i.o = shl nsw i64 %i.m, 6                      ; 2 uses
  %i.p = or disjoint i64 %i.o, 8
  %i.q = select i1 %i.n, i64 -1, i64 %i.p
  %i.r = tail call noundef ptr @_ZN6icu_787UMemorynaEm(i64 noundef %i.q) #18 ; 8 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %i.m, ptr %i.r, align 8
  %.ptr26.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  %i.t = icmp eq i32 %i.h, 0
  br i1 %i.t, label %_ZN6icu_788message2L9copyArrayINS_13UnicodeStringEEEPT_PKS3_iR10UErrorCode.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.b
  %i.u = add nsw i64 %i.o, -64                    ; 2 uses
  %i.v = lshr exact i64 %i.u, 6
  %i.w = add nuw nsw i64 %i.v, 1                  ; 2 uses
  %xtraiter = and i64 %i.w, 3                     ; 3 uses
  %i.x = icmp ult i64 %i.u, 192
  br i1 %i.x, label %.preheader.i.epil.preheader, label %.preheader.i.preheader.new

.preheader.i.preheader.new:                       ; preds = %.preheader.i.preheader
  %unroll_iter = and i64 %i.w, 576460752303423484
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.i.preheader.new
  %.idx.i = phi i64 [ 8, %.preheader.i.preheader.new ], [ %.add.i.3, %.preheader.i ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader.i.preheader.new ], [ %niter.next.3, %.preheader.i ]
  %.ptr.ptr.i = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx.i ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.i, align 8, !tbaa !29
  %i.y = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i, i64 8
  store i16 2, ptr %i.y, align 8, !tbaa !26
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx.i ; 2 uses
  %.ptr.ptr.i.1 = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.i.1, align 8, !tbaa !29
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 72
  store i16 2, ptr %i.aa, align 8, !tbaa !26
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx.i ; 2 uses
  %.ptr.ptr.i.2 = getelementptr inbounds nuw i8, ptr %i.ab, i64 128
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.i.2, align 8, !tbaa !29
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 136
  store i16 2, ptr %i.ac, align 8, !tbaa !26
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx.i ; 2 uses
  %.ptr.ptr.i.3 = getelementptr inbounds nuw i8, ptr %i.ad, i64 192
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.i.3, align 8, !tbaa !29
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 200
  store i16 2, ptr %i.ae, align 8, !tbaa !26
  %.add.i.3 = add nuw nsw i64 %.idx.i, 256        ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph.preheader.i.unr-lcssa, label %.preheader.i

.lr.ph.preheader.i.unr-lcssa:                     ; preds = %.preheader.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.preheader.i, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %.lr.ph.preheader.i.unr-lcssa, %.preheader.i.preheader
  %.idx.i.epil.init = phi i64 [ 8, %.preheader.i.preheader ], [ %.add.i.3, %.lr.ph.preheader.i.unr-lcssa ]
  %lcmp.mod23 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod23)
  br label %.preheader.i.epil

.preheader.i.epil:                                ; preds = %.preheader.i.epil, %.preheader.i.epil.preheader
  %.idx.i.epil = phi i64 [ %.add.i.epil, %.preheader.i.epil ], [ %.idx.i.epil.init, %.preheader.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.i.epil ], [ 0, %.preheader.i.epil.preheader ]
  %.ptr.ptr.i.epil = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx.i.epil ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.i.epil, align 8, !tbaa !29
  %i.af = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i.epil, i64 8
  store i16 2, ptr %i.af, align 8, !tbaa !26
  %.add.i.epil = add nuw nsw i64 %.idx.i.epil, 64
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph.preheader.i, label %.preheader.i.epil, !llvm.loop !180

.lr.ph.preheader.i:                               ; preds = %.preheader.i.epil, %.lr.ph.preheader.i.unr-lcssa
  %wide.trip.count.i = zext nneg i32 %i.h to i64
  br label %.lr.ph.i

bb.c:                                             ; preds = %bb.a
  store i32 7, ptr %i.a, align 4, !tbaa !31
  br label %_ZN6icu_788message2L9copyArrayINS_13UnicodeStringEEEPT_PKS3_iR10UErrorCode.exit

.lr.ph.i:                                         ; preds = %.noexc, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.noexc ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %indvars.iv.i
  %i.ah = getelementptr inbounds nuw [64 x i8], ptr %.ptr26.i, i64 %indvars.iv.i
  %i.ai = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.ah, ptr noundef nonnull align 8 dereferenceable(64) %i.ag)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc:                                           ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN6icu_788message2L9copyArrayINS_13UnicodeStringEEEPT_PKS3_iR10UErrorCode.exit, label %.lr.ph.i, !llvm.loop !2

_ZN6icu_788message2L9copyArrayINS_13UnicodeStringEEEPT_PKS3_iR10UErrorCode.exit: ; preds = %.noexc, %bb.c, %bb.b
  %.019.i = phi ptr [ %.ptr26.i, %bb.b ], [ null, %bb.c ], [ %.ptr26.i, %.noexc ]
  %i.aj = load ptr, ptr %i.c, align 8, !tbaa !107 ; 4 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %_ZN6icu_7810LocalArrayINS_13UnicodeStringEE12adoptInsteadEPS1_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN6icu_788message2L9copyArrayINS_13UnicodeStringEEEPT_PKS3_iR10UErrorCode.exit
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 -8 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8            ; 2 uses
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %.loopexit.i, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.d
  %.idx.i10 = shl nsw i64 %i.am, 6
  %i.ao = getelementptr inbounds i8, ptr %i.aj, i64 %.idx.i10
  br label %.preheader.i11

.preheader.i11:                                   ; preds = %.preheader.i11, %.preheader.preheader.i
  %i.ap = phi ptr [ %i.aq, %.preheader.i11 ], [ %i.ao, %.preheader.preheader.i ]
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 -64 ; 3 uses
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.aq) #18
  %i.ar = icmp eq ptr %i.aq, %i.aj
  br i1 %i.ar, label %.loopexit.i, label %.preheader.i11

.loopexit.i:                                      ; preds = %.preheader.i11, %bb.d
  tail call void @_ZN6icu_787UMemorydaEPv(ptr noundef nonnull %i.al) #18
  br label %_ZN6icu_7810LocalArrayINS_13UnicodeStringEE12adoptInsteadEPS1_.exit

_ZN6icu_7810LocalArrayINS_13UnicodeStringEE12adoptInsteadEPS1_.exit: ; preds = %_ZN6icu_788message2L9copyArrayINS_13UnicodeStringEEEPT_PKS3_iR10UErrorCode.exit, %.loopexit.i
  store ptr %.019.i, ptr %i.c, align 8, !tbaa !107
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !108
  %i.au = load i32, ptr %i.f, align 8, !tbaa !110
  %i.av = invoke fastcc noundef ptr @_ZN6icu_788message2L9copyArrayINS0_10data_model7VariantEEEPT_PKS4_iR10UErrorCode(ptr noundef %i.at, i32 noundef %i.au, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.e:                                             ; preds = %_ZN6icu_7810LocalArrayINS_13UnicodeStringEE12adoptInsteadEPS1_.exit
  %i.aw = load ptr, ptr %i.e, align 8, !tbaa !108 ; 4 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %_ZN6icu_7810LocalArrayINS_8message210data_model7VariantEE12adoptInsteadEPS3_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ay = getelementptr inbounds i8, ptr %i.aw, i64 -8 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8            ; 2 uses
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %.loopexit.i15, label %.preheader.preheader.i12

.preheader.preheader.i12:                         ; preds = %bb.f
  %.idx.i13 = mul nsw i64 %i.az, 56
  %i.bb = getelementptr inbounds i8, ptr %i.aw, i64 %.idx.i13
  br label %.preheader.i14

.preheader.i14:                                   ; preds = %.preheader.i14, %.preheader.preheader.i12
  %i.bc = phi ptr [ %i.bd, %.preheader.i14 ], [ %i.bb, %.preheader.preheader.i12 ]
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -56 ; 3 uses
  tail call void @_ZN6icu_788message210data_model7VariantD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.bd) #18
  %i.be = icmp eq ptr %i.bd, %i.aw
  br i1 %i.be, label %.loopexit.i15, label %.preheader.i14

.loopexit.i15:                                    ; preds = %.preheader.i14, %bb.f
  tail call void @_ZN6icu_787UMemorydaEPv(ptr noundef nonnull %i.ay) #18
  br label %_ZN6icu_7810LocalArrayINS_8message210data_model7VariantEE12adoptInsteadEPS3_.exit

_ZN6icu_7810LocalArrayINS_8message210data_model7VariantEE12adoptInsteadEPS3_.exit: ; preds = %bb.e, %.loopexit.i15
  store ptr %i.av, ptr %i.e, align 8, !tbaa !108
  %i.bf = load i32, ptr %i.a, align 4, !tbaa !31
  %i.bg = icmp slt i32 %i.bf, 1
  br i1 %i.bg, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN6icu_7810LocalArrayINS_8message210data_model7VariantEE12adoptInsteadEPS3_.exit
  store i8 1, ptr %i.b, align 8, !tbaa !106
  br label %bb.h

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i, %_ZN6icu_7810LocalArrayINS_13UnicodeStringEE12adoptInsteadEPS1_.exit
  %lpad.loopexit.split-lp22 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  tail call void @_ZN6icu_7810LocalArrayINS_8message210data_model7VariantEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.e) #18
  tail call void @_ZN6icu_7810LocalArrayINS_13UnicodeStringEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.c) #18
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #18
  resume { ptr, i32 } %lpad.loopexit.split-lp22

bb.h:                                             ; preds = %bb.g, %_ZN6icu_7810LocalArrayINS_8message210data_model7VariantEE12adoptInsteadEPS3_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZN6icu_788message2L9copyArrayINS0_10data_model7VariantEEEPT_PKS4_iR10UErrorCode(ptr noundef %0, i32 noundef %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.icu_78::message2::data_model::Variant", align 8 ; 7 uses
  %i.a = load i32, ptr %2, align 4, !tbaa !31
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.c = sext i32 %1 to i64                       ; 2 uses
  %i.d = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.c, i64 56) ; 2 uses
  %i.e = extractvalue { i64, i1 } %i.d, 1
  %i.f = extractvalue { i64, i1 } %i.d, 0         ; 2 uses
  %i.g = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.f, i64 8) ; 2 uses
  %i.h = extractvalue { i64, i1 } %i.g, 1
  %i.i = or i1 %i.e, %i.h
  %i.j = extractvalue { i64, i1 } %i.g, 0
  %i.k = select i1 %i.i, i64 -1, i64 %i.j
  %i.l = tail call noundef ptr @_ZN6icu_787UMemorynaEm(i64 noundef %i.k) #18 ; 4 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 %i.c, ptr %i.l, align 8
  %.ptr26 = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  %i.n = icmp eq i32 %1, 0
  br i1 %i.n, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.c, %.preheader
  %.idx = phi i64 [ %.add, %.preheader ], [ 8, %bb.c ] ; 3 uses
  %.ptr.ptr = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx ; 7 uses
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model7VariantE, i64 16), ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model12SelectorKeysE, i64 16)>, ptr %.ptr.ptr, align 8, !tbaa !29
  %i.o = getelementptr inbounds nuw i8, ptr %.ptr.ptr, i64 16
  store ptr null, ptr %i.o, align 8, !tbaa !16
  %i.p = getelementptr inbounds nuw i8, ptr %.ptr.ptr, i64 24
  store i32 0, ptr %i.p, align 8, !tbaa !20
  %i.q = getelementptr inbounds nuw i8, ptr %.ptr.ptr, i64 32
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model7PatternE, i64 16), ptr %i.q, align 8, !tbaa !29
  %i.r = getelementptr inbounds nuw i8, ptr %.ptr.ptr, i64 40
  store i8 0, ptr %i.r, align 8, !tbaa !85
  %i.s = getelementptr inbounds nuw i8, ptr %.ptr.ptr, i64 44
  store i32 0, ptr %i.s, align 4, !tbaa !86
  %i.t = getelementptr inbounds nuw i8, ptr %.ptr.ptr, i64 48
  store ptr null, ptr %i.t, align 8, !tbaa !87
  %.add = add nuw nsw i64 %.idx, 56
  %i.u = add nuw nsw i64 %.idx, 48
  %i.v = icmp eq i64 %i.u, %i.f
  br i1 %i.v, label %.loopexit32, label %.preheader

.loopexit32:                                      ; preds = %.preheader
  %i.w = icmp sgt i32 %1, 0
  br i1 %i.w, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.loopexit32
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  store i32 7, ptr %2, align 4, !tbaa !31
  br label %.loopexit

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %indvars.iv
  call void @_ZN6icu_788message210data_model7VariantC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) %i.ac)
  %i.ad = getelementptr inbounds nuw [56 x i8], ptr %.ptr26, i64 %indvars.iv ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !42
  %i.ag = load i32, ptr %i.x, align 8, !tbaa !42
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !42
  store i32 %i.af, ptr %i.x, align 8, !tbaa !42
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !16
  %i.aj = load ptr, ptr %i.y, align 8, !tbaa !16
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !16
  store ptr %i.ai, ptr %i.y, align 8, !tbaa !16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 40 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !43, !range !24, !noundef !25
  %i.am = load i8, ptr %i.z, align 8, !tbaa !43, !range !24, !noundef !25
  store i8 %i.am, ptr %i.ak, align 8, !tbaa !43
  store i8 %i.al, ptr %i.z, align 8, !tbaa !43
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 44 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !42
  %i.ap = load i32, ptr %i.aa, align 4, !tbaa !42
  store i32 %i.ap, ptr %i.an, align 4, !tbaa !42
  store i32 %i.ao, ptr %i.aa, align 4, !tbaa !42
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ad, i64 48 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !87
  %i.as = load ptr, ptr %i.ab, align 8, !tbaa !87
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !87
  store ptr %i.ar, ptr %i.ab, align 8, !tbaa !87
  call void @_ZN6icu_788message210data_model7VariantD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %3) #18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.e, !llvm.loop !181

.loopexit:                                        ; preds = %bb.e, %bb.c, %.loopexit32, %bb.d, %bb.a
  %.019 = phi ptr [ null, %bb.a ], [ null, %bb.d ], [ %.ptr26, %.loopexit32 ], [ %.ptr26, %bb.c ], [ %.ptr26, %bb.e ]
  ret ptr %.019
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6icu_7810LocalArrayINS_8message210data_model7VariantEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !108    ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %i.a, i64 -8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.b
  %.idx = mul nsw i64 %i.d, 56
  %i.f = getelementptr inbounds i8, ptr %i.a, i64 %.idx
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %i.g = phi ptr [ %i.h, %.preheader ], [ %i.f, %.preheader.preheader ]
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -56 ; 3 uses
  tail call void @_ZN6icu_788message210data_model7VariantD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.h) #18
  %i.i = icmp eq ptr %i.h, %i.a
  br i1 %i.i, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %.preheader, %bb.b
  tail call void @_ZN6icu_787UMemorydaEPv(ptr noundef nonnull %i.c) #18
  br label %bb.c

bb.c:                                             ; preds = %.loopexit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6icu_7810LocalArrayINS_13UnicodeStringEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !107    ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %i.a, i64 -8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.b
  %.idx = shl nsw i64 %i.d, 6
  %i.f = getelementptr inbounds i8, ptr %i.a, i64 %.idx
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %i.g = phi ptr [ %i.h, %.preheader ], [ %i.f, %.preheader.preheader ]
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -64 ; 3 uses
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.h) #18
  %i.i = icmp eq ptr %i.h, %i.a
  br i1 %i.i, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %.preheader, %bb.b
  tail call void @_ZN6icu_787UMemorydaEPv(ptr noundef nonnull %i.c) #18
  br label %bb.c

bb.c:                                             ; preds = %.loopexit, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6icu_788message210data_model7MatcherC2EPNS_13UnicodeStringEiPNS1_7VariantEi(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(44) initializes((0, 9), (16, 28), (32, 44)) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model7MatcherE, i64 16), ptr %0, align 8, !tbaa !29
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.a, align 8, !tbaa !106
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.b, align 8, !tbaa !107
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %2, ptr %i.c, align 8, !tbaa !109
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %3, ptr %i.d, align 8, !tbaa !108
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %4, ptr %i.e, align 8, !tbaa !110
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_788message210data_model7MatcherD2Ev(ptr noundef nonnull align 8 dead_on_return(44) dereferenceable(44) initializes((0, 8)) %0) unnamed_addr #3 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model7MatcherE, i64 16), ptr %0, align 8, !tbaa !29
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !108  ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN6icu_7810LocalArrayINS_8message210data_model7VariantEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %.loopexit.i, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.b
  %.idx.i = mul nsw i64 %i.e, 56
  %i.g = getelementptr inbounds i8, ptr %i.b, i64 %.idx.i
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.preheader.i
  %i.h = phi ptr [ %i.i, %.preheader.i ], [ %i.g, %.preheader.preheader.i ]
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -56 ; 3 uses
  tail call void @_ZN6icu_788message210data_model7VariantD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.i) #18
  %i.j = icmp eq ptr %i.i, %i.b
  br i1 %i.j, label %.loopexit.i, label %.preheader.i

.loopexit.i:                                      ; preds = %.preheader.i, %bb.b
  tail call void @_ZN6icu_787UMemorydaEPv(ptr noundef nonnull %i.d) #18
  br label %_ZN6icu_7810LocalArrayINS_8message210data_model7VariantEED2Ev.exit

_ZN6icu_7810LocalArrayINS_8message210data_model7VariantEED2Ev.exit: ; preds = %bb.a, %.loopexit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !107  ; 4 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_ZN6icu_7810LocalArrayINS_13UnicodeStringEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN6icu_7810LocalArrayINS_8message210data_model7VariantEED2Ev.exit
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -8 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8              ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %.loopexit.i4, label %.preheader.preheader.i1

.preheader.preheader.i1:                          ; preds = %bb.c
  %.idx.i2 = shl nsw i64 %i.o, 6
  %i.q = getelementptr inbounds i8, ptr %i.l, i64 %.idx.i2
  br label %.preheader.i3

.preheader.i3:                                    ; preds = %.preheader.i3, %.preheader.preheader.i1
  %i.r = phi ptr [ %i.s, %.preheader.i3 ], [ %i.q, %.preheader.preheader.i1 ]
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -64 ; 3 uses
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.s) #18
  %i.t = icmp eq ptr %i.s, %i.l
  br i1 %i.t, label %.loopexit.i4, label %.preheader.i3

.loopexit.i4:                                     ; preds = %.preheader.i3, %bb.c
  tail call void @_ZN6icu_787UMemorydaEPv(ptr noundef nonnull %i.n) #18
  br label %_ZN6icu_7810LocalArrayINS_13UnicodeStringEED2Ev.exit

_ZN6icu_7810LocalArrayINS_13UnicodeStringEED2Ev.exit: ; preds = %_ZN6icu_7810LocalArrayINS_8message210data_model7VariantEED2Ev.exit, %.loopexit.i4
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_788message210data_model7MatcherD0Ev(ptr noundef nonnull align 8 dereferenceable(44) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN6icu_788message210data_model7MatcherD1Ev(ptr noundef nonnull align 8 dead_on_return(44) dereferenceable(44) %0) #18
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6icu_788message210data_model11MFDataModel10getPatternEv(ptr nofree noundef nonnull readonly align 8 captures(ret: address, provenance) dereferenceable(108) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load i8, ptr %i.b, align 8, !tbaa !113   ; 2 uses
  %i.d = icmp eq i8 %i.c, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = icmp eq i8 %i.c, 1
  %spec.select.i.i = select i1 %i.f, ptr %i.a, ptr null
  %.0 = select i1 %i.d, ptr %i.e, ptr %spec.select.i.i
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef ptr @_ZNK6icu_788message210data_model11MFDataModel25getLocalVariablesInternalEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(108) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !116
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef ptr @_ZNK6icu_788message210data_model11MFDataModel20getSelectorsInternalEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(108) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !107
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef ptr @_ZNK6icu_788message210data_model11MFDataModel19getVariantsInternalEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(108) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !108
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
end_hunk_1
begin_hunk_2_@_ZN6icu_788message210data_model11MFDataModel7Builder10addVariantEONS1_12SelectorKeysEONS1_7PatternER10UErrorCode:bb.a
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.m, %bb.j, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %.pn.i, %bb.f ], [ %i.n, %bb.m ], [ %i.i, %bb.j ]
  %i.o = extractvalue { ptr, i32 } %eh.lpad-body, 0
  call void @__clang_call_terminate(ptr %i.o) #19
  unreachable
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_788message210data_model11MFDataModel7Builder10setPatternEONS1_7PatternE(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(64) initializes((8, 10)) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.icu_78::message2::data_model::Pattern", align 8 ; 5 uses
  call void @_ZN6icu_788message210data_model7PatternC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.c = load i8, ptr %i.a, align 8, !tbaa !43, !range !24, !noundef !25
  %i.d = load i8, ptr %i.b, align 8, !tbaa !43, !range !24, !noundef !25
  store i8 %i.d, ptr %i.a, align 8, !tbaa !43
  store i8 %i.c, ptr %i.b, align 8, !tbaa !43
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.g = load i32, ptr %i.e, align 4, !tbaa !42
  %i.h = load i32, ptr %i.f, align 4, !tbaa !42
  store i32 %i.h, ptr %i.e, align 4, !tbaa !42
  store i32 %i.g, ptr %i.f, align 4, !tbaa !42
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !87
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !87
  store ptr %i.l, ptr %i.i, align 8, !tbaa !87
  store ptr %i.k, ptr %i.j, align 8, !tbaa !87
  call void @_ZN6icu_788message210data_model7PatternD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #18
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.m, align 8, !tbaa !118
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 0, ptr %i.n, align 1, !tbaa !119
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !122  ; 2 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZN6icu_787UVector17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %i.p)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %0
}

declare void @_ZN6icu_787UVector17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_788message210data_model11MFDataModelC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(108) initializes((0, 17), (20, 33)) %0, ptr noundef nonnull align 8 dereferenceable(108) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.icu_78::message2::data_model::Binding", align 8 ; 6 uses
  %3 = alloca %"class.icu_78::message2::data_model::Pattern", align 8 ; 10 uses
  %i.a = alloca i32, align 4                      ; 9 uses
  %4 = alloca %"class.icu_78::LocalArray.56", align 8 ; 8 uses
  %5 = alloca %"class.icu_78::LocalArray.58", align 8 ; 6 uses
  %6 = alloca %"class.icu_78::message2::data_model::Matcher", align 8 ; 7 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6icu_788message210data_model11MFDataModelE, i64 16), ptr %0, align 8, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model7PatternE, i64 16), ptr %i.b, align 8, !tbaa !29
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.c, align 8, !tbaa !85
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.d, align 4, !tbaa !86
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.e, align 8, !tbaa !87
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  store i8 0, ptr %i.f, align 8, !tbaa !131
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model7PatternE, i64 16), ptr %3, align 8, !tbaa !29
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 0, ptr %i.h, align 8, !tbaa !85
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !86
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr null, ptr %i.j, align 8, !tbaa !87
  invoke void @_ZN6icu_788message210data_model7PatternC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(49) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store i8 1, ptr %i.k, align 8, !tbaa !113
  call void @_ZN6icu_788message210data_model7PatternD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  store ptr null, ptr %i.l, align 8, !tbaa !116
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  store i32 0, ptr %i.m, align 8, !tbaa !132
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i32 0, ptr %i.a, align 4, !tbaa !31
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.o = load i8, ptr %i.n, align 8, !tbaa !113   ; 2 uses
  %i.p = icmp eq i8 %i.o, 1
  br i1 %i.p, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.r = invoke noundef nonnull align 8 dereferenceable(49) ptr @_ZNSt7variantIJN6icu_788message210data_model7MatcherENS2_7PatternEEEaSIRKS4_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS3_S4_EE4typeEE18is_constructible_vISE_SB_E15is_assignable_vIRSE_SB_EERS5_E4typeESC_(ptr noundef nonnull align 8 dereferenceable(49) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %.thread88 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.d:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_788message210data_model7PatternD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN6icu_788message210data_model7MatcherENS4_7PatternEEED2Ev.exit

bb.e:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !107
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !108
  %.not.i = icmp eq i8 %i.o, 0                    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.y = load i32, ptr %i.x, align 8
  %i.z = select i1 %.not.i, i32 %i.y, i32 0       ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ab = load i32, ptr %i.aa, align 8
  %i.ac = select i1 %.not.i, i32 %i.ab, i32 0     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.ad = sext i32 %i.z to i64                    ; 2 uses
  %i.ae = icmp slt i32 %i.z, 0
  %i.af = shl nsw i64 %i.ad, 6                    ; 2 uses
  %i.ag = or disjoint i64 %i.af, 8
  %i.ah = select i1 %i.ae, i64 -1, i64 %i.ag
  %i.ai = call noundef ptr @_ZN6icu_787UMemorynaEm(i64 noundef %i.ah) #18 ; 8 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %_ZN6icu_788message2L9copyArrayINS_13UnicodeStringEEEPT_PKS3_iR10UErrorCode.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i64 %i.ad, ptr %i.ai, align 8
  %.ptr26.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 3 uses
  %i.ak = icmp eq i32 %i.z, 0
  br i1 %i.ak, label %_ZN6icu_788message2L9copyArrayINS_13UnicodeStringEEEPT_PKS3_iR10UErrorCode.exit.thread, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.f
  %i.al = add nsw i64 %i.af, -64                  ; 2 uses
  %i.am = lshr exact i64 %i.al, 6
  %i.an = add nuw nsw i64 %i.am, 1                ; 2 uses
  %xtraiter = and i64 %i.an, 3                    ; 3 uses
  %i.ao = icmp ult i64 %i.al, 192
  br i1 %i.ao, label %.preheader.i.epil.preheader, label %.preheader.i.preheader.new

.preheader.i.preheader.new:                       ; preds = %.preheader.i.preheader
  %unroll_iter = and i64 %i.an, 576460752303423484
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.i.preheader.new
  %.idx.i = phi i64 [ 8, %.preheader.i.preheader.new ], [ %.add.i.3, %.preheader.i ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader.i.preheader.new ], [ %niter.next.3, %.preheader.i ]
  %.ptr.ptr.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.idx.i ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.i, align 8, !tbaa !29
  %i.ap = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i, i64 8
  store i16 2, ptr %i.ap, align 8, !tbaa !26
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.idx.i ; 2 uses
  %.ptr.ptr.i.1 = getelementptr inbounds nuw i8, ptr %i.aq, i64 64
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.i.1, align 8, !tbaa !29
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 72
  store i16 2, ptr %i.ar, align 8, !tbaa !26
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.idx.i ; 2 uses
  %.ptr.ptr.i.2 = getelementptr inbounds nuw i8, ptr %i.as, i64 128
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.i.2, align 8, !tbaa !29
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 136
  store i16 2, ptr %i.at, align 8, !tbaa !26
  %i.au = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.idx.i ; 2 uses
  %.ptr.ptr.i.3 = getelementptr inbounds nuw i8, ptr %i.au, i64 192
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.i.3, align 8, !tbaa !29
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 200
  store i16 2, ptr %i.av, align 8, !tbaa !26
  %.add.i.3 = add nuw nsw i64 %.idx.i, 256        ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph.preheader.i.unr-lcssa, label %.preheader.i

.lr.ph.preheader.i.unr-lcssa:                     ; preds = %.preheader.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.preheader.i, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %.lr.ph.preheader.i.unr-lcssa, %.preheader.i.preheader
  %.idx.i.epil.init = phi i64 [ 8, %.preheader.i.preheader ], [ %.add.i.3, %.lr.ph.preheader.i.unr-lcssa ]
  %lcmp.mod104 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod104)
  br label %.preheader.i.epil

.preheader.i.epil:                                ; preds = %.preheader.i.epil, %.preheader.i.epil.preheader
  %.idx.i.epil = phi i64 [ %.add.i.epil, %.preheader.i.epil ], [ %.idx.i.epil.init, %.preheader.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.i.epil ], [ 0, %.preheader.i.epil.preheader ]
  %.ptr.ptr.i.epil = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.idx.i.epil ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.i.epil, align 8, !tbaa !29
  %i.aw = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i.epil, i64 8
  store i16 2, ptr %i.aw, align 8, !tbaa !26
  %.add.i.epil = add nuw nsw i64 %.idx.i.epil, 64
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph.preheader.i, label %.preheader.i.epil, !llvm.loop !182

.lr.ph.preheader.i:                               ; preds = %.preheader.i.epil, %.lr.ph.preheader.i.unr-lcssa
  %wide.trip.count.i = zext nneg i32 %i.z to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.noexc ] ; 3 uses
  %i.ax = getelementptr inbounds nuw [64 x i8], ptr %i.u, i64 %indvars.iv.i
  %i.ay = getelementptr inbounds nuw [64 x i8], ptr %.ptr26.i, i64 %indvars.iv.i
  %i.az = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.ay, ptr noundef nonnull align 8 dereferenceable(64) %i.ax)
          to label %.noexc unwind label %bb.g     ; 0 uses

.noexc:                                           ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN6icu_788message2L9copyArrayINS_13UnicodeStringEEEPT_PKS3_iR10UErrorCode.exit.thread, label %.lr.ph.i, !llvm.loop !2

_ZN6icu_788message2L9copyArrayINS_13UnicodeStringEEEPT_PKS3_iR10UErrorCode.exit.thread: ; preds = %.noexc, %bb.f
  store ptr %.ptr26.i, ptr %4, align 8, !tbaa !107
  br label %_ZN6icu_7810LocalArrayINS_13UnicodeStringEEC2EPS1_R10UErrorCode.exit

_ZN6icu_788message2L9copyArrayINS_13UnicodeStringEEEPT_PKS3_iR10UErrorCode.exit: ; preds = %bb.e
  store ptr null, ptr %4, align 8, !tbaa !107
  store i32 7, ptr %i.a, align 4
  br label %_ZN6icu_7810LocalArrayINS_13UnicodeStringEEC2EPS1_R10UErrorCode.exit

_ZN6icu_7810LocalArrayINS_13UnicodeStringEEC2EPS1_R10UErrorCode.exit: ; preds = %_ZN6icu_788message2L9copyArrayINS_13UnicodeStringEEEPT_PKS3_iR10UErrorCode.exit, %_ZN6icu_788message2L9copyArrayINS_13UnicodeStringEEEPT_PKS3_iR10UErrorCode.exit.thread
  %i.ba = phi ptr [ null, %_ZN6icu_788message2L9copyArrayINS_13UnicodeStringEEEPT_PKS3_iR10UErrorCode.exit ], [ %.ptr26.i, %_ZN6icu_788message2L9copyArrayINS_13UnicodeStringEEEPT_PKS3_iR10UErrorCode.exit.thread ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.bb = invoke fastcc noundef ptr @_ZN6icu_788message2L9copyArrayINS0_10data_model7VariantEEEPT_PKS4_iR10UErrorCode(ptr noundef %i.w, i32 noundef %i.ac, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZN6icu_7810LocalArrayINS_8message210data_model7VariantEEC2EPS3_R10UErrorCode.exit unwind label %bb.h ; 6 uses

_ZN6icu_7810LocalArrayINS_8message210data_model7VariantEEC2EPS3_R10UErrorCode.exit: ; preds = %_ZN6icu_7810LocalArrayINS_13UnicodeStringEEC2EPS1_R10UErrorCode.exit
  %i.bc = icmp ne ptr %i.bb, null
  %i.bd = load i32, ptr %i.a, align 4             ; 2 uses
  %i.be = icmp sgt i32 %i.bd, 0
  %or.cond.i40 = select i1 %i.bc, i1 true, i1 %i.be
  %spec.store.select68 = select i1 %or.cond.i40, i32 %i.bd, i32 7 ; 2 uses
  store i32 %spec.store.select68, ptr %i.a, align 4
  %i.bf = icmp slt i32 %spec.store.select68, 1
  br i1 %i.bf, label %bb.i, label %bb.k

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i57, %bb.c
  %lpad.loopexit.split-lp101 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.g:                                             ; preds = %.lr.ph.i
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.h:                                             ; preds = %_ZN6icu_7810LocalArrayINS_13UnicodeStringEEC2EPS1_R10UErrorCode.exit
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.i:                                             ; preds = %_ZN6icu_7810LocalArrayINS_8message210data_model7VariantEEC2EPS3_R10UErrorCode.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  store ptr null, ptr %4, align 8, !tbaa !107
  store ptr null, ptr %5, align 8, !tbaa !108
  invoke void @_ZN6icu_788message210data_model7MatcherC1EPNS_13UnicodeStringEiPNS1_7VariantEi(ptr noundef nonnull align 8 dereferenceable(44) %6, ptr noundef %i.ba, i32 noundef %i.z, ptr noundef %i.bb, i32 noundef %i.ac)
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.bi = invoke noundef nonnull align 8 dereferenceable(49) ptr @_ZNSt7variantIJN6icu_788message210data_model7MatcherENS2_7PatternEEEaSIS3_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS3_S4_EE4typeEE18is_constructible_vISC_S9_E15is_assignable_vIRSC_S9_EERS5_E4typeESA_(ptr noundef nonnull align 8 dereferenceable(49) %i.g, ptr noundef nonnull align 8 dereferenceable(44) %6)
          to label %bb.s unwind label %bb.o       ; 0 uses

bb.k:                                             ; preds = %_ZN6icu_7810LocalArrayINS_8message210data_model7VariantEEC2EPS3_R10UErrorCode.exit
  store i8 1, ptr %i.f, align 8, !tbaa !131
  %i.bj = icmp eq ptr %i.bb, null
  br i1 %i.bj, label %_ZN6icu_7810LocalArrayINS_8message210data_model7VariantEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bk = getelementptr inbounds i8, ptr %i.bb, i64 -8 ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8            ; 2 uses
  %i.bm = icmp eq i64 %i.bl, 0
  br i1 %i.bm, label %.loopexit.i, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.l
  %.idx.i41 = mul nsw i64 %i.bl, 56
  %i.bn = getelementptr inbounds i8, ptr %i.bb, i64 %.idx.i41
  br label %.preheader.i42

.preheader.i42:                                   ; preds = %.preheader.i42, %.preheader.preheader.i
  %i.bo = phi ptr [ %i.bp, %.preheader.i42 ], [ %i.bn, %.preheader.preheader.i ]
  %i.bp = getelementptr inbounds i8, ptr %i.bo, i64 -56 ; 3 uses
  call void @_ZN6icu_788message210data_model7VariantD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.bp) #18
  %i.bq = icmp eq ptr %i.bp, %i.bb
  br i1 %i.bq, label %.loopexit.i, label %.preheader.i42

.loopexit.i:                                      ; preds = %.preheader.i42, %bb.l
  call void @_ZN6icu_787UMemorydaEPv(ptr noundef nonnull %i.bk) #18
  br label %_ZN6icu_7810LocalArrayINS_8message210data_model7VariantEED2Ev.exit

_ZN6icu_7810LocalArrayINS_8message210data_model7VariantEED2Ev.exit: ; preds = %bb.k, %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.br = icmp eq ptr %i.ba, null
  br i1 %i.br, label %_ZN6icu_7810LocalArrayINS_13UnicodeStringEED2Ev.exit.thread, label %bb.m

bb.m:                                             ; preds = %_ZN6icu_7810LocalArrayINS_8message210data_model7VariantEED2Ev.exit
  %i.bs = getelementptr inbounds i8, ptr %i.ba, i64 -8 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8            ; 2 uses
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %.loopexit.i46, label %.preheader.preheader.i43

.preheader.preheader.i43:                         ; preds = %bb.m
  %.idx.i44 = shl nsw i64 %i.bt, 6
  %i.bv = getelementptr inbounds i8, ptr %i.ba, i64 %.idx.i44
  br label %.preheader.i45

.preheader.i45:                                   ; preds = %.preheader.i45, %.preheader.preheader.i43
  %i.bw = phi ptr [ %i.bx, %.preheader.i45 ], [ %i.bv, %.preheader.preheader.i43 ]
  %i.bx = getelementptr inbounds i8, ptr %i.bw, i64 -64 ; 3 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.bx) #18
  %i.by = icmp eq ptr %i.bx, %i.ba
  br i1 %i.by, label %.loopexit.i46, label %.preheader.i45

.loopexit.i46:                                    ; preds = %.preheader.i45, %bb.m
  call void @_ZN6icu_787UMemorydaEPv(ptr noundef nonnull %i.bs) #18
  br label %_ZN6icu_7810LocalArrayINS_13UnicodeStringEED2Ev.exit.thread

_ZN6icu_7810LocalArrayINS_13UnicodeStringEED2Ev.exit.thread: ; preds = %_ZN6icu_7810LocalArrayINS_8message210data_model7VariantEED2Ev.exit, %.loopexit.i46
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %.thread94

bb.n:                                             ; preds = %bb.i
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %bb.j
  %i.ca = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_788message210data_model7MatcherD1Ev(ptr noundef nonnull align 8 dead_on_return(44) dereferenceable(44) %6) #18
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn28 = phi { ptr, i32 } [ %i.ca, %bb.o ], [ %i.bz, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @_ZN6icu_7810LocalArrayINS_8message210data_model7VariantEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #18
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.h
  %.pn28.pn = phi { ptr, i32 } [ %.pn28, %bb.p ], [ %i.bh, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @_ZN6icu_7810LocalArrayINS_13UnicodeStringEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #18
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.g
  %.pn28.pn.pn = phi { ptr, i32 } [ %.pn28.pn, %bb.q ], [ %i.bg, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %.body

bb.s:                                             ; preds = %bb.j
  call void @_ZN6icu_788message210data_model7MatcherD1Ev(ptr noundef nonnull align 8 dead_on_return(44) dereferenceable(44) %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %.pre.pre = load i32, ptr %i.a, align 4, !tbaa !31 ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !132 ; 3 uses
  store i32 %i.cc, ptr %i.m, align 8, !tbaa !132
  %i.cd = icmp sgt i32 %i.cc, 0
  br i1 %i.cd, label %bb.t, label %bb.z

.thread88:                                        ; preds = %bb.c
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !132 ; 3 uses
  store i32 %i.cf, ptr %i.m, align 8, !tbaa !132
  %i.cg = icmp sgt i32 %i.cf, 0
  br i1 %i.cg, label %.thread91, label %.thread94

.thread91:                                        ; preds = %.thread88
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  br label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.cl = icmp slt i32 %.pre.pre, 1
  br i1 %i.cl, label %bb.u, label %.loopexit69

bb.u:                                             ; preds = %.thread91, %bb.t
  %i.cm = phi ptr [ %i.ci, %.thread91 ], [ %i.ck, %bb.t ]
  %.pre9093 = phi i32 [ 0, %.thread91 ], [ %.pre.pre, %bb.t ]
  %i.cn = phi i32 [ %i.cf, %.thread91 ], [ %i.cc, %bb.t ]
  %i.co = zext nneg i32 %i.cn to i64              ; 3 uses
  %i.cp = mul nuw nsw i64 %i.co, 344              ; 2 uses
  %i.cq = add nuw nsw i64 %i.cp, 8
  %i.cr = call noundef ptr @_ZN6icu_787UMemorynaEm(i64 noundef %i.cq) #18 ; 6 uses
  %i.cs = icmp eq ptr %i.cr, null
  br i1 %i.cs, label %.loopexit69, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i64 %i.co, ptr %i.cr, align 8
  %.ptr26.i49 = getelementptr inbounds nuw i8, ptr %i.cr, i64 8 ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.x
  %.idx.i50 = phi i64 [ %.add.i54, %bb.x ], [ 8, %bb.v ] ; 5 uses
  %.ptr.ptr.i51 = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.idx.i50 ; 7 uses
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model7BindingE, i64 16), ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16)>, ptr %.ptr.ptr.i51, align 8, !tbaa !29
  %i.ct = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i51, i64 16
  store i16 2, ptr %i.ct, align 8, !tbaa !26
  %i.cu = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i51, i64 72
  invoke void @_ZN6icu_788message210data_model10ExpressionC1Ev(ptr noundef nonnull align 8 dereferenceable(256) %i.cu)
          to label %bb.x unwind label %.body.i

.body.i:                                          ; preds = %bb.w
  %i.cv = landingpad { ptr, i32 }
          cleanup
  %i.cw = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i51, i64 8
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.cw) #18
  call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(344) %.ptr.ptr.i51) #18
  %i.cx = icmp eq i64 %.idx.i50, 8
  br i1 %i.cx, label %.loopexit32.i53, label %.preheader.i52

bb.x:                                             ; preds = %bb.w
  %i.cy = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i51, i64 328
  store i8 1, ptr %i.cy, align 8, !tbaa !97
  %i.cz = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i51, i64 336
  store ptr null, ptr %i.cz, align 8, !tbaa !98
  %.add.i54 = add nuw nsw i64 %.idx.i50, 344
  %i.da = add nuw nsw i64 %.idx.i50, 336
  %i.db = icmp eq i64 %i.da, %i.cp
  br i1 %i.db, label %.lr.ph.i57, label %bb.w

.preheader.i52:                                   ; preds = %.body.i, %.preheader.i52
  %.idx27.i = phi i64 [ %.add28.i, %.preheader.i52 ], [ %.idx.i50, %.body.i ]
  %.add28.i = add nsw i64 %.idx27.i, -344         ; 3 uses
  %.ptr30.i = getelementptr inbounds i8, ptr %i.cr, i64 %.add28.i
  call void @_ZN6icu_788message210data_model7BindingD1Ev(ptr noundef nonnull align 8 dead_on_return(344) dereferenceable(344) %.ptr30.i) #18
  %i.dc = icmp eq i64 %.add28.i, 8
  br i1 %i.dc, label %.loopexit32.i53, label %.preheader.i52

.loopexit32.i53:                                  ; preds = %.preheader.i52, %.body.i
  call void @_ZN6icu_787UMemorydaEPv(ptr noundef nonnull %i.cr) #18
  br label %.body

.lr.ph.i57:                                       ; preds = %bb.x, %.noexc61
  %indvars.iv.i58 = phi i64 [ %indvars.iv.next.i59, %.noexc61 ], [ 0, %bb.x ] ; 3 uses
  %i.dd = getelementptr inbounds nuw [344 x i8], ptr %i.cm, i64 %indvars.iv.i58
  invoke void @_ZN6icu_788message210data_model7BindingC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(344) %2, ptr noundef nonnull align 8 dereferenceable(344) %i.dd)
          to label %.noexc61 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc61:                                         ; preds = %.lr.ph.i57
  %i.de = getelementptr inbounds nuw [344 x i8], ptr %.ptr26.i49, i64 %indvars.iv.i58
  call void @_ZN6icu_788message210data_model4swapERNS1_7BindingES3_(ptr noundef nonnull align 8 dereferenceable(344) %i.de, ptr noundef nonnull align 8 dereferenceable(344) %2) #18
  call void @_ZN6icu_788message210data_model7BindingD1Ev(ptr noundef nonnull align 8 dead_on_return(344) dereferenceable(344) %2) #18
  %indvars.iv.next.i59 = add nuw nsw i64 %indvars.iv.i58, 1 ; 2 uses
  %exitcond.not.i60 = icmp eq i64 %indvars.iv.next.i59, %i.co
  br i1 %exitcond.not.i60, label %.loopexit69, label %.lr.ph.i57, !llvm.loop !183

.loopexit69:                                      ; preds = %.noexc61, %bb.u, %bb.t
  %i.df = phi i32 [ %.pre.pre, %bb.t ], [ 7, %bb.u ], [ %.pre9093, %.noexc61 ]
  %.019.i48 = phi ptr [ null, %bb.t ], [ null, %bb.u ], [ %.ptr26.i49, %.noexc61 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.dg = load ptr, ptr %i.l, align 8, !tbaa !116 ; 4 uses
  %i.dh = icmp eq ptr %i.dg, null
  br i1 %i.dh, label %_ZN6icu_7810LocalArrayINS_8message210data_model7BindingEE12adoptInsteadEPS3_.exit, label %bb.y

bb.y:                                             ; preds = %.loopexit69
  %i.di = getelementptr inbounds i8, ptr %i.dg, i64 -8 ; 2 uses
  %i.dj = load i64, ptr %i.di, align 8            ; 2 uses
  %i.dk = icmp eq i64 %i.dj, 0
  br i1 %i.dk, label %.loopexit.i65, label %.preheader.preheader.i62

.preheader.preheader.i62:                         ; preds = %bb.y
  %.idx.i63 = mul nsw i64 %i.dj, 344
  %i.dl = getelementptr inbounds i8, ptr %i.dg, i64 %.idx.i63
  br label %.preheader.i64

.preheader.i64:                                   ; preds = %.preheader.i64, %.preheader.preheader.i62
  %i.dm = phi ptr [ %i.dn, %.preheader.i64 ], [ %i.dl, %.preheader.preheader.i62 ]
  %i.dn = getelementptr inbounds i8, ptr %i.dm, i64 -344 ; 3 uses
  call void @_ZN6icu_788message210data_model7BindingD1Ev(ptr noundef nonnull align 8 dead_on_return(344) dereferenceable(344) %i.dn) #18
  %i.do = icmp eq ptr %i.dn, %i.dg
  br i1 %i.do, label %.loopexit.i65, label %.preheader.i64

.loopexit.i65:                                    ; preds = %.preheader.i64, %bb.y
  call void @_ZN6icu_787UMemorydaEPv(ptr noundef nonnull %i.di) #18
  br label %_ZN6icu_7810LocalArrayINS_8message210data_model7BindingEE12adoptInsteadEPS3_.exit

_ZN6icu_7810LocalArrayINS_8message210data_model7BindingEE12adoptInsteadEPS3_.exit: ; preds = %.loopexit69, %.loopexit.i65
  store ptr %.019.i48, ptr %i.l, align 8, !tbaa !116
  br label %bb.z

bb.z:                                             ; preds = %_ZN6icu_7810LocalArrayINS_8message210data_model7BindingEE12adoptInsteadEPS3_.exit, %bb.s
  %i.dp = phi i32 [ %i.df, %_ZN6icu_7810LocalArrayINS_8message210data_model7BindingEE12adoptInsteadEPS3_.exit ], [ %.pre.pre, %bb.s ]
  %i.dq = icmp slt i32 %i.dp, 1
  br i1 %i.dq, label %.thread94, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store i8 1, ptr %i.f, align 8, !tbaa !131
  br label %.thread94

.thread94:                                        ; preds = %.thread88, %_ZN6icu_7810LocalArrayINS_13UnicodeStringEED2Ev.exit.thread, %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit32.i53, %bb.r
  %.pn34 = phi { ptr, i32 } [ %.pn28.pn.pn, %bb.r ], [ %i.cv, %.loopexit32.i53 ], [ %lpad.loopexit.split-lp101, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  call void @_ZN6icu_7810LocalArrayINS_8message210data_model7BindingEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.l) #18
  %i.dr = load i8, ptr %i.k, align 8, !tbaa !113
  %.not.i.i = icmp eq i8 %i.dr, -1
  br i1 %.not.i.i, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN6icu_788message210data_model7MatcherENS4_7PatternEEED2Ev.exit, label %bb.ab, !prof !48

bb.ab:                                            ; preds = %.body
  %i.ds = load ptr, ptr %i.g, align 8, !tbaa !29
  %i.dt = load ptr, ptr %i.ds, align 8
  call void %i.dt(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(49) %i.g) #18, !inline_history !4
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN6icu_788message210data_model7MatcherENS4_7PatternEEED2Ev.exit

_ZNSt8__detail9__variant16_Variant_storageILb0EJN6icu_788message210data_model7MatcherENS4_7PatternEEED2Ev.exit: ; preds = %bb.ab, %.body, %bb.d
  %.pn34.pn.pn = phi { ptr, i32 } [ %i.s, %bb.d ], [ %.pn34, %.body ], [ %.pn34, %bb.ab ]
  call void @_ZN6icu_788message210data_model7PatternD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.b) #18
  resume { ptr, i32 } %.pn34.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(49) ptr @_ZNSt7variantIJN6icu_788message210data_model7MatcherENS2_7PatternEEEaSIRKS4_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS3_S4_EE4typeEE18is_constructible_vISE_SB_E15is_assignable_vIRSE_SB_EERS5_E4typeESC_(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.icu_78::message2::data_model::Pattern", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !113
  switch i8 %i.b, label %bb.d [
    i8 1, label %bb.b
    i8 -1, label %_ZNSt7variantIJN6icu_788message210data_model7MatcherENS2_7PatternEEE7emplaceILm1EJRKS4_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS3_S4_EE4typeEDpT0_EERSC_E4typeEDpOSD_.exit
  ], !prof !133

bb.b:                                             ; preds = %bb.a
  call void @_ZN6icu_788message210data_model7PatternC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.c = load i8, ptr %i.a, align 8, !tbaa !113
  switch i8 %i.c, label %_ZSt26__throw_bad_variant_accessb.exit.i.invoke [
    i8 1, label %_ZSt3getILm1EJN6icu_788message210data_model7MatcherENS2_7PatternEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERS9_.exit
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i
  ], !prof !133

_ZSt26__throw_bad_variant_accessb.exit.i:         ; preds = %bb.b
  br label %_ZSt26__throw_bad_variant_accessb.exit.i.invoke

_ZSt26__throw_bad_variant_accessb.exit.i.invoke:  ; preds = %bb.b, %_ZSt26__throw_bad_variant_accessb.exit.i
  %.str.1.sink = phi ptr [ @.str, %_ZSt26__throw_bad_variant_accessb.exit.i ], [ @.str.1, %bb.b ]
  %i.d = call ptr @__cxa_allocate_exception(i64 16) #18 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.d, align 8, !tbaa !29
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.str.1.sink, ptr %i.e, align 8, !tbaa !137
  invoke void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #20
          to label %_ZSt26__throw_bad_variant_accessb.exit.i.cont unwind label %bb.c

_ZSt26__throw_bad_variant_accessb.exit.i.cont:    ; preds = %_ZSt26__throw_bad_variant_accessb.exit.i.invoke
  unreachable

_ZSt3getILm1EJN6icu_788message210data_model7MatcherENS2_7PatternEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERS9_.exit: ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.h = load i8, ptr %i.f, align 8, !tbaa !43, !range !24, !noundef !25
  %i.i = load i8, ptr %i.g, align 8, !tbaa !43, !range !24, !noundef !25
  store i8 %i.i, ptr %i.f, align 8, !tbaa !43
  store i8 %i.h, ptr %i.g, align 8, !tbaa !43
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.l = load i32, ptr %i.j, align 4, !tbaa !42
  %i.m = load i32, ptr %i.k, align 4, !tbaa !42
  store i32 %i.m, ptr %i.j, align 4, !tbaa !42
  store i32 %i.l, ptr %i.k, align 4, !tbaa !42
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !87
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !87
  store ptr %i.q, ptr %i.n, align 8, !tbaa !87
  store ptr %i.p, ptr %i.o, align 8, !tbaa !87
  call void @_ZN6icu_788message210data_model7PatternD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #18
  br label %bb.e

bb.c:                                             ; preds = %_ZSt26__throw_bad_variant_accessb.exit.i.invoke
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_788message210data_model7PatternD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #18
  resume { ptr, i32 } %i.r

bb.d:                                             ; preds = %bb.a
  %i.s = load ptr, ptr %0, align 8, !tbaa !29
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(49) %0) #18, !inline_history !184
  store i8 -1, ptr %i.a, align 8, !tbaa !113
  br label %_ZNSt7variantIJN6icu_788message210data_model7MatcherENS2_7PatternEEE7emplaceILm1EJRKS4_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS3_S4_EE4typeEDpT0_EERSC_E4typeEDpOSD_.exit

_ZNSt7variantIJN6icu_788message210data_model7MatcherENS2_7PatternEEE7emplaceILm1EJRKS4_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS3_S4_EE4typeEDpT0_EERSC_E4typeEDpOSD_.exit: ; preds = %bb.a, %bb.d
  tail call void @_ZN6icu_788message210data_model7PatternC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  store i8 1, ptr %i.a, align 8, !tbaa !113
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt7variantIJN6icu_788message210data_model7MatcherENS2_7PatternEEE7emplaceILm1EJRKS4_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS3_S4_EE4typeEDpT0_EERSC_E4typeEDpOSD_.exit, %_ZSt3getILm1EJN6icu_788message210data_model7MatcherENS2_7PatternEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERS9_.exit
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(49) ptr @_ZNSt7variantIJN6icu_788message210data_model7MatcherENS2_7PatternEEEaSIS3_EENSt9enable_ifIXaaaa14__exactly_onceINSt9_Nth_typeIX16__accepted_indexIOT_EEJS3_S4_EE4typeEE18is_constructible_vISC_S9_E15is_assignable_vIRSC_S9_EERS5_E4typeESA_(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef nonnull align 8 dereferenceable(44) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.icu_78::message2::data_model::Matcher", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !113
  switch i8 %i.b, label %bb.h [
    i8 0, label %bb.b
    i8 -1, label %_ZNSt7variantIJN6icu_788message210data_model7MatcherENS2_7PatternEEE7emplaceILm0EJS3_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS3_S4_EE4typeEDpT0_EERSA_E4typeEDpOSB_.exit
  ], !prof !133

bb.b:                                             ; preds = %bb.a
  call void @_ZN6icu_788message210data_model7MatcherC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(44) %2, ptr noundef nonnull align 8 dereferenceable(44) %1)
  %i.c = load i8, ptr %i.a, align 8, !tbaa !113
  switch i8 %i.c, label %_ZSt26__throw_bad_variant_accessb.exit.i.invoke [
    i8 0, label %_ZSt3getILm0EJN6icu_788message210data_model7MatcherENS2_7PatternEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERS9_.exit
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i
  ], !prof !133

_ZSt26__throw_bad_variant_accessb.exit.i:         ; preds = %bb.b
  br label %_ZSt26__throw_bad_variant_accessb.exit.i.invoke

_ZSt26__throw_bad_variant_accessb.exit.i.invoke:  ; preds = %bb.b, %_ZSt26__throw_bad_variant_accessb.exit.i
  %.str.1.sink = phi ptr [ @.str, %_ZSt26__throw_bad_variant_accessb.exit.i ], [ @.str.1, %bb.b ]
  %i.d = call ptr @__cxa_allocate_exception(i64 16) #18 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.d, align 8, !tbaa !29
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.str.1.sink, ptr %i.e, align 8, !tbaa !137
  invoke void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #20
          to label %_ZSt26__throw_bad_variant_accessb.exit.i.cont unwind label %bb.g

_ZSt26__throw_bad_variant_accessb.exit.i.cont:    ; preds = %_ZSt26__throw_bad_variant_accessb.exit.i.invoke
  unreachable

_ZSt3getILm0EJN6icu_788message210data_model7MatcherENS2_7PatternEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERS9_.exit: ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i8, ptr %i.f, align 8, !tbaa !106, !range !24, !noundef !25
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZSt3getILm0EJN6icu_788message210data_model7MatcherENS2_7PatternEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERS9_.exit
  store i8 1, ptr %i.i, align 8, !tbaa !106
  br label %_ZN6icu_788message210data_model7MatcheraSES2_.exit

bb.d:                                             ; preds = %_ZSt3getILm0EJN6icu_788message210data_model7MatcherENS2_7PatternEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERS9_.exit
  %i.j = load i8, ptr %i.i, align 8, !tbaa !106, !range !24, !noundef !25
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %i.f, align 8, !tbaa !106
  br label %_ZN6icu_788message210data_model7MatcheraSES2_.exit

bb.f:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !107
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !107
  store ptr %i.o, ptr %i.l, align 8, !tbaa !107
  store ptr %i.n, ptr %i.m, align 8, !tbaa !107
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.r = load i32, ptr %i.p, align 8, !tbaa !42
  %i.s = load i32, ptr %i.q, align 8, !tbaa !42
  store i32 %i.s, ptr %i.p, align 8, !tbaa !42
  store i32 %i.r, ptr %i.q, align 8, !tbaa !42
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !108
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !108
  store ptr %i.w, ptr %i.t, align 8, !tbaa !108
  store ptr %i.v, ptr %i.u, align 8, !tbaa !108
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.z = load i32, ptr %i.x, align 8, !tbaa !42
  %i.aa = load i32, ptr %i.y, align 8, !tbaa !42
  store i32 %i.aa, ptr %i.x, align 8, !tbaa !42
  store i32 %i.z, ptr %i.y, align 8, !tbaa !42
  br label %_ZN6icu_788message210data_model7MatcheraSES2_.exit

_ZN6icu_788message210data_model7MatcheraSES2_.exit: ; preds = %bb.c, %bb.e, %bb.f
  call void @_ZN6icu_788message210data_model7MatcherD1Ev(ptr noundef nonnull align 8 dead_on_return(44) dereferenceable(44) %2) #18
  br label %bb.i

bb.g:                                             ; preds = %_ZSt26__throw_bad_variant_accessb.exit.i.invoke
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_788message210data_model7MatcherD1Ev(ptr noundef nonnull align 8 dead_on_return(44) dereferenceable(44) %2) #18
  resume { ptr, i32 } %i.ab

bb.h:                                             ; preds = %bb.a
  %i.ac = load ptr, ptr %0, align 8, !tbaa !29
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(49) %0) #18, !inline_history !185
  store i8 -1, ptr %i.a, align 8, !tbaa !113
  br label %_ZNSt7variantIJN6icu_788message210data_model7MatcherENS2_7PatternEEE7emplaceILm0EJS3_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS3_S4_EE4typeEDpT0_EERSA_E4typeEDpOSB_.exit

_ZNSt7variantIJN6icu_788message210data_model7MatcherENS2_7PatternEEE7emplaceILm0EJS3_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS3_S4_EE4typeEDpT0_EERSA_E4typeEDpOSB_.exit: ; preds = %bb.a, %bb.h
  tail call void @_ZN6icu_788message210data_model7MatcherC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef nonnull align 8 dereferenceable(44) %1)
  store i8 0, ptr %i.a, align 8, !tbaa !113
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7variantIJN6icu_788message210data_model7MatcherENS2_7PatternEEE7emplaceILm0EJS3_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS3_S4_EE4typeEDpT0_EERSA_E4typeEDpOSB_.exit, %_ZN6icu_788message210data_model7MatcheraSES2_.exit
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6icu_7810LocalArrayINS_8message210data_model7BindingEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !116    ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %i.a, i64 -8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.b
  %.idx = mul nsw i64 %i.d, 344
  %i.f = getelementptr inbounds i8, ptr %i.a, i64 %.idx
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %i.g = phi ptr [ %i.h, %.preheader ], [ %i.f, %.preheader.preheader ]
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -344 ; 3 uses
  tail call void @_ZN6icu_788message210data_model7BindingD1Ev(ptr noundef nonnull align 8 dead_on_return(344) dereferenceable(344) %i.h) #18
  %i.i = icmp eq ptr %i.h, %i.a
  br i1 %i.i, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %.preheader, %bb.b
  tail call void @_ZN6icu_787UMemorydaEPv(ptr noundef nonnull %i.c) #18
  br label %bb.c

bb.c:                                             ; preds = %.loopexit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_788message210data_model11MFDataModelC2ERKNS2_7BuilderER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(108) initializes((0, 17), (20, 33)) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.icu_78::message2::data_model::Binding", align 8 ; 5 uses
  %4 = alloca %"class.icu_78::message2::data_model::Variant", align 8 ; 10 uses
  %5 = alloca %"class.icu_78::message2::data_model::Pattern", align 8 ; 8 uses
  %6 = alloca %"class.icu_78::message2::data_model::Matcher", align 8 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6icu_788message210data_model11MFDataModelE, i64 16), ptr %0, align 8, !tbaa !29
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model7PatternE, i64 16), ptr %i.a, align 8, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.b, align 8, !tbaa !85
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.c, align 4, !tbaa !86
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.d, align 8, !tbaa !87
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  store i8 0, ptr %i.e, align 8, !tbaa !131
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model7PatternE, i64 16), ptr %5, align 8, !tbaa !29
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i8 0, ptr %i.g, align 8, !tbaa !85
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 0, ptr %i.h, align 4, !tbaa !86
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr null, ptr %i.i, align 8, !tbaa !87
  invoke void @_ZN6icu_788message210data_model7PatternC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(49) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 7 uses
  store i8 1, ptr %i.j, align 8, !tbaa !113
  call void @_ZN6icu_788message210data_model7PatternD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  store ptr null, ptr %i.k, align 8, !tbaa !116
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  store i32 0, ptr %i.l, align 8, !tbaa !132
  %i.m = load i32, ptr %2, align 4, !tbaa !31
  %i.n = icmp slt i32 %i.m, 1
  br i1 %i.n, label %bb.c, label %_ZN6icu_7810LocalArrayINS_8message210data_model7VariantEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load i8, ptr %i.o, align 8, !tbaa !118, !range !24, !noundef !25
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load i8, ptr %i.j, align 8, !tbaa !113
  %.not.i.i.i.i = icmp eq i8 %i.s, -1
  br i1 %.not.i.i.i.i, label %_ZNSt7variantIJN6icu_788message210data_model7MatcherENS2_7PatternEEE7emplaceILm1EJRKS4_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS3_S4_EE4typeEDpT0_EERSC_E4typeEDpOSD_.exit.i, label %bb.e, !prof !48

bb.e:                                             ; preds = %bb.d
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !29
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(49) %i.f) #18, !inline_history !186
  store i8 -1, ptr %i.j, align 8, !tbaa !113
  br label %_ZNSt7variantIJN6icu_788message210data_model7MatcherENS2_7PatternEEE7emplaceILm1EJRKS4_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS3_S4_EE4typeEDpT0_EERSC_E4typeEDpOSD_.exit.i

_ZNSt7variantIJN6icu_788message210data_model7MatcherENS2_7PatternEEE7emplaceILm1EJRKS4_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS3_S4_EE4typeEDpT0_EERSC_E4typeEDpOSD_.exit.i: ; preds = %bb.e, %bb.d
  invoke void @_ZN6icu_788message210data_model7PatternC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(49) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_ZNSt7variantIJN6icu_788message210data_model7MatcherENS2_7PatternEEE7emplaceIS4_JRKS4_EEENSt9enable_ifIXaa18is_constructible_vIT_DpT0_E14__exactly_onceISA_EERSA_E4typeEDpOSB_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt7variantIJN6icu_788message210data_model7MatcherENS2_7PatternEEE7emplaceIS4_JRKS4_EEENSt9enable_ifIXaa18is_constructible_vIT_DpT0_E14__exactly_onceISA_EERSA_E4typeEDpOSB_.exit: ; preds = %_ZNSt7variantIJN6icu_788message210data_model7MatcherENS2_7PatternEEE7emplaceILm1EJRKS4_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS3_S4_EE4typeEDpT0_EERSC_E4typeEDpOSD_.exit.i
  store i8 1, ptr %i.j, align 8, !tbaa !113
  br label %bb.q

bb.f:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !122  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !41
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !121
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.ad = load i32, ptr %i.x, align 8, !tbaa !41  ; 4 uses
  %i.ae = sext i32 %i.ad to i64                   ; 2 uses
  %i.af = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ae, i64 56) ; 2 uses
  %i.ag = extractvalue { i64, i1 } %i.af, 1
  %i.ah = extractvalue { i64, i1 } %i.af, 0       ; 2 uses
  %i.ai = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ah, i64 8) ; 2 uses
  %i.aj = extractvalue { i64, i1 } %i.ai, 1
  %i.ak = or i1 %i.ag, %i.aj
  %i.al = extractvalue { i64, i1 } %i.ai, 0
  %i.am = select i1 %i.ak, i64 -1, i64 %i.al
  %i.an = call noundef ptr @_ZN6icu_787UMemorynaEm(i64 noundef %i.am) #18 ; 7 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %_ZN6icu_7810LocalArrayINS_13UnicodeStringEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i64 %i.ae, ptr %i.an, align 8
  %.ptr27.i.ptr = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  %i.ap = icmp eq i32 %i.ad, 0
  br i1 %i.ap, label %_ZN6icu_7810LocalArrayINS_8message210data_model7VariantEEC2EPS3_R10UErrorCode.exit, label %.preheader96

.preheader96:                                     ; preds = %bb.g, %.preheader96
  %.idx.i = phi i64 [ %.add.i, %.preheader96 ], [ 8, %bb.g ] ; 3 uses
  %.ptr.ptr.i = getelementptr inbounds nuw i8, ptr %i.an, i64 %.idx.i ; 7 uses
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model7VariantE, i64 16), ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model12SelectorKeysE, i64 16)>, ptr %.ptr.ptr.i, align 8, !tbaa !29
  %i.aq = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i, i64 16
  store ptr null, ptr %i.aq, align 8, !tbaa !16
  %i.ar = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i, i64 24
  store i32 0, ptr %i.ar, align 8, !tbaa !20
  %i.as = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i, i64 32
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model7PatternE, i64 16), ptr %i.as, align 8, !tbaa !29
  %i.at = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i, i64 40
  store i8 0, ptr %i.at, align 8, !tbaa !85
  %i.au = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i, i64 44
  store i32 0, ptr %i.au, align 4, !tbaa !86
  %i.av = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i, i64 48
  store ptr null, ptr %i.av, align 8, !tbaa !87
  %.add.i = add nuw nsw i64 %.idx.i, 56
  %i.aw = add nuw nsw i64 %.idx.i, 48
  %i.ax = icmp eq i64 %i.aw, %i.ah
  br i1 %i.ax, label %.loopexit33.i, label %.preheader96

.loopexit33.i:                                    ; preds = %.preheader96
  %i.ay = icmp sgt i32 %i.ad, 0
  br i1 %i.ay, label %.lr.ph.i, label %_ZN6icu_7810LocalArrayINS_8message210data_model7VariantEEC2EPS3_R10UErrorCode.exit

.lr.ph.i:                                         ; preds = %.loopexit33.i
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.ad to i64
  br label %bb.h

bb.h:                                             ; preds = %.noexc21, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %.noexc21 ] ; 3 uses
  %i.be = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.bf = invoke noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.w, i32 noundef %i.be)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.h
  invoke void @_ZN6icu_788message210data_model7VariantC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) %i.bf)
          to label %.noexc21 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc21:                                         ; preds = %.noexc
  %i.bg = getelementptr inbounds nuw [56 x i8], ptr %.ptr27.i.ptr, i64 %indvars.iv.i ; 5 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !42
  %i.bj = load i32, ptr %i.az, align 8, !tbaa !42
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !42
  store i32 %i.bi, ptr %i.az, align 8, !tbaa !42
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 16 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !16
  %i.bm = load ptr, ptr %i.ba, align 8, !tbaa !16
  store ptr %i.bm, ptr %i.bk, align 8, !tbaa !16
  store ptr %i.bl, ptr %i.ba, align 8, !tbaa !16
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bg, i64 40 ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 8, !tbaa !43, !range !24, !noundef !25
  %i.bp = load i8, ptr %i.bb, align 8, !tbaa !43, !range !24, !noundef !25
  store i8 %i.bp, ptr %i.bn, align 8, !tbaa !43
  store i8 %i.bo, ptr %i.bb, align 8, !tbaa !43
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bg, i64 44 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !42
  %i.bs = load i32, ptr %i.bc, align 4, !tbaa !42
  store i32 %i.bs, ptr %i.bq, align 4, !tbaa !42
  store i32 %i.br, ptr %i.bc, align 4, !tbaa !42
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bg, i64 48 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !87
  %i.bv = load ptr, ptr %i.bd, align 8, !tbaa !87
  store ptr %i.bv, ptr %i.bt, align 8, !tbaa !87
  store ptr %i.bu, ptr %i.bd, align 8, !tbaa !87
  call void @_ZN6icu_788message210data_model7VariantD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %4) #18
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN6icu_7810LocalArrayINS_8message210data_model7VariantEEC2EPS3_R10UErrorCode.exit, label %bb.h, !llvm.loop !187

_ZN6icu_7810LocalArrayINS_8message210data_model7VariantEEC2EPS3_R10UErrorCode.exit: ; preds = %.noexc21, %bb.g, %.loopexit33.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.pr = load i32, ptr %2, align 4, !tbaa !31
  %i.bw = icmp slt i32 %.pr, 1
  %i.bx = load ptr, ptr %i.z, align 8, !tbaa !121 ; 2 uses
  br i1 %i.bw, label %bb.i, label %_ZN6icu_7810LocalArrayINS_13UnicodeStringEED2Ev.exit.thread132

bb.i:                                             ; preds = %_ZN6icu_7810LocalArrayINS_8message210data_model7VariantEEC2EPS3_R10UErrorCode.exit
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !41 ; 4 uses
  %i.ca = sext i32 %i.bz to i64                   ; 2 uses
  %i.cb = icmp slt i32 %i.bz, 0
  %i.cc = shl nsw i64 %i.ca, 6                    ; 2 uses
  %i.cd = or disjoint i64 %i.cc, 8
  %i.ce = select i1 %i.cb, i64 -1, i64 %i.cd
  %i.cf = call noundef ptr @_ZN6icu_787UMemorynaEm(i64 noundef %i.ce) #18 ; 11 uses
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i64 %i.ca, ptr %i.cf, align 8
  %.ptr27.i23.ptr = getelementptr inbounds nuw i8, ptr %i.cf, i64 8 ; 2 uses
  %i.ch = icmp eq i32 %i.bz, 0
  br i1 %i.ch, label %_ZN6icu_7810LocalArrayINS_13UnicodeStringEEC2EPS1_R10UErrorCode.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.j
  %i.ci = add nsw i64 %i.cc, -64                  ; 2 uses
  %i.cj = lshr exact i64 %i.ci, 6
  %i.ck = add nuw nsw i64 %i.cj, 1                ; 2 uses
  %xtraiter = and i64 %i.ck, 3                    ; 3 uses
  %i.cl = icmp ult i64 %i.ci, 192
  br i1 %i.cl, label %.preheader.i.epil.preheader, label %.preheader.i.preheader.new

.preheader.i.preheader.new:                       ; preds = %.preheader.i.preheader
  %unroll_iter = and i64 %i.ck, 576460752303423484
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.i.preheader.new
  %.idx.i24 = phi i64 [ 8, %.preheader.i.preheader.new ], [ %.add.i26.3, %.preheader.i ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader.i.preheader.new ], [ %niter.next.3, %.preheader.i ]
  %.ptr.ptr.i25 = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.idx.i24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.i25, align 8, !tbaa !29
  %i.cm = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i25, i64 8
  store i16 2, ptr %i.cm, align 8, !tbaa !26
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.idx.i24 ; 2 uses
  %.ptr.ptr.i25.1 = getelementptr inbounds nuw i8, ptr %i.cn, i64 64
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.i25.1, align 8, !tbaa !29
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 72
  store i16 2, ptr %i.co, align 8, !tbaa !26
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.idx.i24 ; 2 uses
  %.ptr.ptr.i25.2 = getelementptr inbounds nuw i8, ptr %i.cp, i64 128
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.i25.2, align 8, !tbaa !29
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 136
  store i16 2, ptr %i.cq, align 8, !tbaa !26
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.idx.i24 ; 2 uses
  %.ptr.ptr.i25.3 = getelementptr inbounds nuw i8, ptr %i.cr, i64 192
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.i25.3, align 8, !tbaa !29
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 200
  store i16 2, ptr %i.cs, align 8, !tbaa !26
  %.add.i26.3 = add nuw nsw i64 %.idx.i24, 256    ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph.preheader.i.unr-lcssa, label %.preheader.i

.lr.ph.preheader.i.unr-lcssa:                     ; preds = %.preheader.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.preheader.i, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %.lr.ph.preheader.i.unr-lcssa, %.preheader.i.preheader
  %.idx.i24.epil.init = phi i64 [ 8, %.preheader.i.preheader ], [ %.add.i26.3, %.lr.ph.preheader.i.unr-lcssa ]
  %lcmp.mod159 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod159)
  br label %.preheader.i.epil

.preheader.i.epil:                                ; preds = %.preheader.i.epil, %.preheader.i.epil.preheader
  %.idx.i24.epil = phi i64 [ %.add.i26.epil, %.preheader.i.epil ], [ %.idx.i24.epil.init, %.preheader.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.i.epil ], [ 0, %.preheader.i.epil.preheader ]
  %.ptr.ptr.i25.epil = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.idx.i24.epil ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.i25.epil, align 8, !tbaa !29
  %i.ct = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i25.epil, i64 8
  store i16 2, ptr %i.ct, align 8, !tbaa !26
  %.add.i26.epil = add nuw nsw i64 %.idx.i24.epil, 64
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph.preheader.i, label %.preheader.i.epil, !llvm.loop !188

.lr.ph.preheader.i:                               ; preds = %.preheader.i.epil, %.lr.ph.preheader.i.unr-lcssa
  %wide.trip.count.i28 = zext nneg i32 %i.bz to i64
  br label %.lr.ph.i29

bb.k:                                             ; preds = %bb.i
  store i32 7, ptr %2, align 4, !tbaa !31
  br label %_ZN6icu_7810LocalArrayINS_13UnicodeStringEED2Ev.exit.thread132

.lr.ph.i29:                                       ; preds = %.noexc34, %.lr.ph.preheader.i
  %indvars.iv.i30 = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i31, %.noexc34 ] ; 3 uses
  %i.cu = trunc nuw nsw i64 %indvars.iv.i30 to i32
  %i.cv = invoke noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.bx, i32 noundef %i.cu)
          to label %.noexc33 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc33:                                         ; preds = %.lr.ph.i29
  %i.cw = getelementptr inbounds nuw [64 x i8], ptr %.ptr27.i23.ptr, i64 %indvars.iv.i30
  %i.cx = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.cw, ptr noundef nonnull align 8 dereferenceable(64) %i.cv)
          to label %.noexc34 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc34:                                         ; preds = %.noexc33
  %indvars.iv.next.i31 = add nuw nsw i64 %indvars.iv.i30, 1 ; 2 uses
  %exitcond.not.i32 = icmp eq i64 %indvars.iv.next.i31, %wide.trip.count.i28
  br i1 %exitcond.not.i32, label %_ZN6icu_7810LocalArrayINS_13UnicodeStringEEC2EPS1_R10UErrorCode.exit, label %.lr.ph.i29, !llvm.loop !189

_ZN6icu_7810LocalArrayINS_13UnicodeStringEEC2EPS1_R10UErrorCode.exit: ; preds = %.noexc34, %bb.j
  %.pr77 = load i32, ptr %2, align 4, !tbaa !31
  %i.cy = icmp sgt i32 %.pr77, 0
  br i1 %i.cy, label %bb.o, label %bb.l

bb.l:                                             ; preds = %_ZN6icu_7810LocalArrayINS_13UnicodeStringEEC2EPS1_R10UErrorCode.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  invoke void @_ZN6icu_788message210data_model7MatcherC1EPNS_13UnicodeStringEiPNS1_7VariantEi(ptr noundef nonnull align 8 dereferenceable(44) %6, ptr noundef nonnull %.ptr27.i23.ptr, i32 noundef %i.ac, ptr noundef nonnull %.ptr27.i.ptr, i32 noundef %i.y)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.m:                                             ; preds = %bb.l
  %i.cz = load i8, ptr %i.j, align 8, !tbaa !113
  %.not.i.i.i.i36 = icmp eq i8 %i.cz, -1
  br i1 %.not.i.i.i.i36, label %_ZNSt7variantIJN6icu_788message210data_model7MatcherENS2_7PatternEEE7emplaceILm0EJS3_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS3_S4_EE4typeEDpT0_EERSA_E4typeEDpOSB_.exit.i, label %bb.n, !prof !48

bb.n:                                             ; preds = %bb.m
  %i.da = load ptr, ptr %i.f, align 8, !tbaa !29
  %i.db = load ptr, ptr %i.da, align 8
  call void %i.db(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(49) %i.f) #18, !inline_history !190
  store i8 -1, ptr %i.j, align 8, !tbaa !113
  br label %_ZNSt7variantIJN6icu_788message210data_model7MatcherENS2_7PatternEEE7emplaceILm0EJS3_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS3_S4_EE4typeEDpT0_EERSA_E4typeEDpOSB_.exit.i

_ZNSt7variantIJN6icu_788message210data_model7MatcherENS2_7PatternEEE7emplaceILm0EJS3_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS3_S4_EE4typeEDpT0_EERSA_E4typeEDpOSB_.exit.i: ; preds = %bb.n, %bb.m
  invoke void @_ZN6icu_788message210data_model7MatcherC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(49) %i.f, ptr noundef nonnull align 8 dereferenceable(44) %6)
          to label %_ZN6icu_7810LocalArrayINS_8message210data_model7VariantEED2Ev.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %_ZN6icu_7810LocalArrayINS_13UnicodeStringEEC2EPS1_R10UErrorCode.exit
  store i8 1, ptr %i.e, align 8, !tbaa !131
  %i.dc = load i64, ptr %i.cf, align 8            ; 2 uses
  %i.dd = icmp eq i64 %i.dc, 0
  br i1 %i.dd, label %_ZN6icu_7810LocalArrayINS_13UnicodeStringEED2Ev.exit.thread, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.o
  %.idx.i38 = shl nsw i64 %i.dc, 6
  %.ptr27.i23.add = or disjoint i64 %.idx.i38, 8
  br label %.preheader.i39

.preheader.i39:                                   ; preds = %.preheader.i39, %.preheader.preheader.i
  %.idx = phi i64 [ %.add, %.preheader.i39 ], [ %.ptr27.i23.add, %.preheader.preheader.i ]
  %.add = add nsw i64 %.idx, -64                  ; 3 uses
  %.ptr138 = getelementptr inbounds i8, ptr %i.cf, i64 %.add
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr138) #18
  %i.de = icmp eq i64 %.add, 8
  br i1 %i.de, label %_ZN6icu_7810LocalArrayINS_13UnicodeStringEED2Ev.exit.thread, label %.preheader.i39

_ZN6icu_7810LocalArrayINS_13UnicodeStringEED2Ev.exit.thread: ; preds = %.preheader.i39, %bb.o
  call void @_ZN6icu_787UMemorydaEPv(ptr noundef nonnull %i.cf) #18
  br label %bb.p

_ZN6icu_7810LocalArrayINS_13UnicodeStringEED2Ev.exit.thread132: ; preds = %_ZN6icu_7810LocalArrayINS_8message210data_model7VariantEEC2EPS3_R10UErrorCode.exit, %bb.k
  store i8 1, ptr %i.e, align 8, !tbaa !131
  br label %bb.p

_ZN6icu_7810LocalArrayINS_13UnicodeStringEED2Ev.exit: ; preds = %bb.f
  store i32 7, ptr %2, align 4, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  store i8 1, ptr %i.e, align 8, !tbaa !131
  br label %_ZN6icu_7810LocalArrayINS_8message210data_model7VariantEED2Ev.exit.thread

bb.p:                                             ; preds = %_ZN6icu_7810LocalArrayINS_13UnicodeStringEED2Ev.exit.thread132, %_ZN6icu_7810LocalArrayINS_13UnicodeStringEED2Ev.exit.thread
  %i.df = load i64, ptr %i.an, align 8            ; 2 uses
  %i.dg = icmp eq i64 %i.df, 0
  br i1 %i.dg, label %.loopexit.i43, label %.preheader.preheader.i40

.preheader.preheader.i40:                         ; preds = %bb.p
  %.idx.i41 = mul nsw i64 %i.df, 56
  %.ptr27.i.add = add nsw i64 %.idx.i41, 8
  br label %.preheader.i42

.preheader.i42:                                   ; preds = %.preheader.i42, %.preheader.preheader.i40
  %.idx140 = phi i64 [ %.add141, %.preheader.i42 ], [ %.ptr27.i.add, %.preheader.preheader.i40 ]
  %.add141 = add nsw i64 %.idx140, -56            ; 3 uses
  %.ptr142 = getelementptr inbounds i8, ptr %i.an, i64 %.add141
  call void @_ZN6icu_788message210data_model7VariantD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %.ptr142) #18
  %i.dh = icmp eq i64 %.add141, 8
  br i1 %i.dh, label %.loopexit.i43, label %.preheader.i42

.loopexit.i43:                                    ; preds = %.preheader.i42, %bb.p
  call void @_ZN6icu_787UMemorydaEPv(ptr noundef nonnull %i.an) #18
  br label %_ZN6icu_7810LocalArrayINS_8message210data_model7VariantEED2Ev.exit.thread

_ZN6icu_7810LocalArrayINS_8message210data_model7VariantEED2Ev.exit: ; preds = %_ZNSt7variantIJN6icu_788message210data_model7MatcherENS2_7PatternEEE7emplaceILm0EJS3_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS3_S4_EE4typeEDpT0_EERSA_E4typeEDpOSB_.exit.i
  store i8 0, ptr %i.j, align 8, !tbaa !113
  call void @_ZN6icu_788message210data_model7MatcherD1Ev(ptr noundef nonnull align 8 dead_on_return(44) dereferenceable(44) %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.q

bb.q:                                             ; preds = %_ZN6icu_7810LocalArrayINS_8message210data_model7VariantEED2Ev.exit, %_ZNSt7variantIJN6icu_788message210data_model7MatcherENS2_7PatternEEE7emplaceIS4_JRKS4_EEENSt9enable_ifIXaa18is_constructible_vIT_DpT0_E14__exactly_onceISA_EERSA_E4typeEDpOSB_.exit
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !120 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !41 ; 4 uses
  store i32 %i.dl, ptr %i.l, align 8, !tbaa !132
  %i.dm = icmp sgt i32 %i.dl, 0
  br i1 %i.dm, label %bb.r, label %bb.w

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.dn = load i32, ptr %2, align 4, !tbaa !31
  %i.do = icmp slt i32 %i.dn, 1
  br i1 %i.do, label %bb.s, label %.loopexit90

bb.s:                                             ; preds = %bb.r
  %i.dp = zext nneg i32 %i.dl to i64              ; 2 uses
  %i.dq = mul nuw nsw i64 %i.dp, 344              ; 2 uses
  %i.dr = add nuw nsw i64 %i.dq, 8
  %i.ds = call noundef ptr @_ZN6icu_787UMemorynaEm(i64 noundef %i.dr) #18 ; 6 uses
  %i.dt = icmp eq ptr %i.ds, null
  br i1 %i.dt, label %bb.u, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.s
  store i64 %i.dp, ptr %i.ds, align 8
  %.ptr27.i46 = getelementptr inbounds nuw i8, ptr %i.ds, i64 8 ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.t
  %.idx.i47 = phi i64 [ %.add.i51, %bb.t ], [ 8, %.preheader.preheader ] ; 5 uses
  %.ptr.ptr.i48 = getelementptr inbounds nuw i8, ptr %i.ds, i64 %.idx.i47 ; 7 uses
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model7BindingE, i64 16), ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16)>, ptr %.ptr.ptr.i48, align 8, !tbaa !29
  %i.du = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i48, i64 16
  store i16 2, ptr %i.du, align 8, !tbaa !26
  %i.dv = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i48, i64 72
  invoke void @_ZN6icu_788message210data_model10ExpressionC1Ev(ptr noundef nonnull align 8 dereferenceable(256) %i.dv)
          to label %bb.t unwind label %.body.i

.body.i:                                          ; preds = %.preheader
  %i.dw = landingpad { ptr, i32 }
          catch ptr null
  %i.dx = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i48, i64 8
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.dx) #18
  call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(344) %.ptr.ptr.i48) #18
  %i.dy = icmp eq i64 %.idx.i47, 8
  br i1 %i.dy, label %.loopexit33.i50, label %.preheader.i49

bb.t:                                             ; preds = %.preheader
  %i.dz = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i48, i64 328
  store i8 1, ptr %i.dz, align 8, !tbaa !97
  %i.ea = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i48, i64 336
  store ptr null, ptr %i.ea, align 8, !tbaa !98
  %.add.i51 = add nuw nsw i64 %.idx.i47, 344
  %i.eb = add nuw nsw i64 %.idx.i47, 336
  %i.ec = icmp eq i64 %i.eb, %i.dq
  br i1 %i.ec, label %.lr.ph.preheader.i52, label %.preheader

.lr.ph.preheader.i52:                             ; preds = %bb.t
  %wide.trip.count.i53 = zext nneg i32 %i.dl to i64
  br label %.lr.ph.i54

bb.u:                                             ; preds = %bb.s
  store i32 7, ptr %2, align 4, !tbaa !31
  br label %.loopexit90

.preheader.i49:                                   ; preds = %.body.i, %.preheader.i49
  %.idx28.i = phi i64 [ %.add29.i, %.preheader.i49 ], [ %.idx.i47, %.body.i ]
  %.add29.i = add nsw i64 %.idx28.i, -344         ; 3 uses
  %.ptr31.i = getelementptr inbounds i8, ptr %i.ds, i64 %.add29.i
  call void @_ZN6icu_788message210data_model7BindingD1Ev(ptr noundef nonnull align 8 dead_on_return(344) dereferenceable(344) %.ptr31.i) #18
  %i.ed = icmp eq i64 %.add29.i, 8
  br i1 %i.ed, label %.loopexit33.i50, label %.preheader.i49

.loopexit33.i50:                                  ; preds = %.preheader.i49, %.body.i
  call void @_ZN6icu_787UMemorydaEPv(ptr noundef nonnull %i.ds) #18
  br label %.body

.lr.ph.i54:                                       ; preds = %.noexc59, %.lr.ph.preheader.i52
  %indvars.iv.i55 = phi i64 [ 0, %.lr.ph.preheader.i52 ], [ %indvars.iv.next.i56, %.noexc59 ] ; 3 uses
  %i.ee = trunc nuw nsw i64 %indvars.iv.i55 to i32
  %i.ef = invoke noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.dj, i32 noundef %i.ee)
          to label %.noexc58 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc58:                                         ; preds = %.lr.ph.i54
  invoke void @_ZN6icu_788message210data_model7BindingC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(344) %3, ptr noundef nonnull align 8 dereferenceable(344) %i.ef)
          to label %.noexc59 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc59:                                         ; preds = %.noexc58
  %i.eg = getelementptr inbounds nuw [344 x i8], ptr %.ptr27.i46, i64 %indvars.iv.i55
  call void @_ZN6icu_788message210data_model4swapERNS1_7BindingES3_(ptr noundef nonnull align 8 dereferenceable(344) %i.eg, ptr noundef nonnull align 8 dereferenceable(344) %3) #18
  call void @_ZN6icu_788message210data_model7BindingD1Ev(ptr noundef nonnull align 8 dead_on_return(344) dereferenceable(344) %3) #18
  %indvars.iv.next.i56 = add nuw nsw i64 %indvars.iv.i55, 1 ; 2 uses
  %exitcond.not.i57 = icmp eq i64 %indvars.iv.next.i56, %wide.trip.count.i53
  br i1 %exitcond.not.i57, label %.loopexit90, label %.lr.ph.i54, !llvm.loop !191

.loopexit90:                                      ; preds = %.noexc59, %bb.u, %bb.r
  %.020.i45 = phi ptr [ null, %bb.r ], [ null, %bb.u ], [ %.ptr27.i46, %.noexc59 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.eh = load ptr, ptr %i.k, align 8, !tbaa !116 ; 4 uses
  %i.ei = icmp eq ptr %i.eh, null
  br i1 %i.ei, label %_ZN6icu_7810LocalArrayINS_8message210data_model7BindingEE12adoptInsteadEPS3_.exit, label %bb.v

bb.v:                                             ; preds = %.loopexit90
  %i.ej = getelementptr inbounds i8, ptr %i.eh, i64 -8 ; 2 uses
  %i.ek = load i64, ptr %i.ej, align 8            ; 2 uses
  %i.el = icmp eq i64 %i.ek, 0
  br i1 %i.el, label %.loopexit.i63, label %.preheader.preheader.i60

.preheader.preheader.i60:                         ; preds = %bb.v
  %.idx.i61 = mul nsw i64 %i.ek, 344
  %i.em = getelementptr inbounds i8, ptr %i.eh, i64 %.idx.i61
  br label %.preheader.i62

.preheader.i62:                                   ; preds = %.preheader.i62, %.preheader.preheader.i60
  %i.en = phi ptr [ %i.eo, %.preheader.i62 ], [ %i.em, %.preheader.preheader.i60 ]
  %i.eo = getelementptr inbounds i8, ptr %i.en, i64 -344 ; 3 uses
  call void @_ZN6icu_788message210data_model7BindingD1Ev(ptr noundef nonnull align 8 dead_on_return(344) dereferenceable(344) %i.eo) #18
  %i.ep = icmp eq ptr %i.eo, %i.eh
  br i1 %i.ep, label %.loopexit.i63, label %.preheader.i62

.loopexit.i63:                                    ; preds = %.preheader.i62, %bb.v
  call void @_ZN6icu_787UMemorydaEPv(ptr noundef nonnull %i.ej) #18
  br label %_ZN6icu_7810LocalArrayINS_8message210data_model7BindingEE12adoptInsteadEPS3_.exit

_ZN6icu_7810LocalArrayINS_8message210data_model7BindingEE12adoptInsteadEPS3_.exit: ; preds = %.loopexit90, %.loopexit.i63
  store ptr %.020.i45, ptr %i.k, align 8, !tbaa !116
  br label %bb.w

bb.w:                                             ; preds = %_ZN6icu_7810LocalArrayINS_8message210data_model7BindingEE12adoptInsteadEPS3_.exit, %bb.q
  %i.eq = load i32, ptr %2, align 4, !tbaa !31
  %i.er = icmp slt i32 %i.eq, 1
  br i1 %i.er, label %_ZN6icu_7810LocalArrayINS_8message210data_model7VariantEED2Ev.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i8 1, ptr %i.e, align 8, !tbaa !131
  br label %_ZN6icu_7810LocalArrayINS_8message210data_model7VariantEED2Ev.exit.thread

_ZN6icu_7810LocalArrayINS_8message210data_model7VariantEED2Ev.exit.thread: ; preds = %_ZN6icu_7810LocalArrayINS_13UnicodeStringEED2Ev.exit, %.loopexit.i43, %bb.b, %bb.x, %bb.w
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i29, %.noexc33, %.lr.ph.i54, %.noexc58, %.noexc, %bb.h, %_ZNSt7variantIJN6icu_788message210data_model7MatcherENS2_7PatternEEE7emplaceILm0EJS3_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS3_S4_EE4typeEDpT0_EERSA_E4typeEDpOSB_.exit.i, %_ZNSt7variantIJN6icu_788message210data_model7MatcherENS2_7PatternEEE7emplaceILm1EJRKS4_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS3_S4_EE4typeEDpT0_EERSC_E4typeEDpOSD_.exit.i, %bb.a, %bb.l
  %lpad.loopexit.split-lp157 = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit33.i50
  %eh.lpad-body = phi { ptr, i32 } [ %i.dw, %.loopexit33.i50 ], [ %lpad.loopexit.split-lp157, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.es = extractvalue { ptr, i32 } %eh.lpad-body, 0
  call void @__clang_call_terminate(ptr %i.es) #19
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_788message210data_model11MFDataModelC2Ev(ptr noundef nonnull align 8 dereferenceable(108) initializes((0, 17), (20, 33)) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.icu_78::message2::data_model::Pattern", align 8 ; 10 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6icu_788message210data_model11MFDataModelE, i64 16), ptr %0, align 8, !tbaa !29
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model7PatternE, i64 16), ptr %i.a, align 8, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.b, align 8, !tbaa !85
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.c, align 4, !tbaa !86
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.d, align 8, !tbaa !87
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.e, align 8, !tbaa !131
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model7PatternE, i64 16), ptr %1, align 8, !tbaa !29
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 0, ptr %i.g, align 8, !tbaa !85
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 0, ptr %i.h, align 4, !tbaa !86
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr null, ptr %i.i, align 8, !tbaa !87
  invoke void @_ZN6icu_788message210data_model7PatternC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(49) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 1, ptr %i.j, align 8, !tbaa !113
  call void @_ZN6icu_788message210data_model7PatternD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr null, ptr %i.k, align 8, !tbaa !116
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 0, ptr %i.l, align 8, !tbaa !132
  ret void

bb.c:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_788message210data_model7PatternD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  call void @_ZN6icu_788message210data_model7PatternD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.a) #18
  resume { ptr, i32 } %i.m
}

; Function Attrs: mustprogress nounwind uwtable
define noundef nonnull align 8 dereferenceable(108) ptr @_ZN6icu_788message210data_model11MFDataModelaSES2_(ptr noundef nonnull returned align 8 dereferenceable(108) %0, ptr noundef align 8 %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::integral_constant.87", align 1 ; 3 uses
  %3 = alloca %class.anon.131, align 8            ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !131, !range !24, !noundef !25
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.d, align 8, !tbaa !131
  br label %_ZN6icu_788message210data_model4swapERNS1_11MFDataModelES3_.exit

bb.c:                                             ; preds = %bb.a
  %i.e = load i8, ptr %i.d, align 8, !tbaa !131, !range !24, !noundef !25
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i8 1, ptr %i.a, align 8, !tbaa !131
  br label %_ZN6icu_788message210data_model4swapERNS1_11MFDataModelES3_.exit

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.pre.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !113
  br label %tailrecurse.i.i.i

tailrecurse.i.i.i:                                ; preds = %bb.f, %bb.e
  %i.i = phi i8 [ %.pre.i.i.i, %bb.e ], [ %i.k, %bb.f ] ; 2 uses
  %.tr.i.i.i = phi ptr [ %i.g, %bb.e ], [ %.tr6.i.i.i, %bb.f ] ; 3 uses
  %.tr6.i.i.i = phi ptr [ %i.h, %bb.e ], [ %.tr.i.i.i, %bb.f ] ; 4 uses
  %.not.i.i.i.i = icmp eq i8 %i.i, -1
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.g, !prof !48

bb.f:                                             ; preds = %tailrecurse.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.tr.i.i.i, i64 48
  %i.k = load i8, ptr %i.j, align 8, !tbaa !113   ; 2 uses
  %.not.i5.i.i.i = icmp eq i8 %i.k, -1
  br i1 %.not.i5.i.i.i, label %_ZSt4swapIJN6icu_788message210data_model7MatcherENS2_7PatternEEENSt9enable_ifIXaafraa23is_move_constructible_vIT_Efraa14is_swappable_vIS6_EEvE4typeERSt7variantIJDpS6_EESC_.exit.i, label %tailrecurse.i.i.i, !prof !48

bb.g:                                             ; preds = %tailrecurse.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  store ptr %.tr.i.i.i, ptr %3, align 8, !tbaa !140
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.tr6.i.i.i, ptr %i.l, align 8, !tbaa !192
  %i.m = icmp eq i8 %i.i, 0
  br i1 %i.m, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZZNSt7variantIJN6icu_788message210data_model7MatcherENS2_7PatternEEE4swapERS5_ENUlOT_T0_E_clIRS3_St17integral_constantImLm0EEEEDaS8_S9_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(49) %.tr6.i.i.i)
          to label %_ZNSt8__detail9__variant15__raw_idx_visitIZNSt7variantIJN6icu_788message210data_model7MatcherENS5_7PatternEEE4swapERS8_EUlOT_T0_E_JS9_EEEvSB_DpOT0_.exit.i.i.i unwind label %bb.j

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  invoke void @_ZSt13__invoke_implIvZNSt7variantIJN6icu_788message210data_model7MatcherENS3_7PatternEEE4swapERS6_EUlOT_T0_E_JRS5_St17integral_constantImLm1EEEES8_St14__invoke_otherOSA_DpOT1_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(49) %.tr6.i.i.i, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %.noexc10.i unwind label %bb.j

.noexc10.i:                                       ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %_ZNSt8__detail9__variant15__raw_idx_visitIZNSt7variantIJN6icu_788message210data_model7MatcherENS5_7PatternEEE4swapERS8_EUlOT_T0_E_JS9_EEEvSB_DpOT0_.exit.i.i.i

_ZNSt8__detail9__variant15__raw_idx_visitIZNSt7variantIJN6icu_788message210data_model7MatcherENS5_7PatternEEE4swapERS8_EUlOT_T0_E_JS9_EEEvSB_DpOT0_.exit.i.i.i: ; preds = %.noexc10.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %_ZSt4swapIJN6icu_788message210data_model7MatcherENS2_7PatternEEENSt9enable_ifIXaafraa23is_move_constructible_vIT_Efraa14is_swappable_vIS6_EEvE4typeERSt7variantIJDpS6_EESC_.exit.i

_ZSt4swapIJN6icu_788message210data_model7MatcherENS2_7PatternEEENSt9enable_ifIXaafraa23is_move_constructible_vIT_Efraa14is_swappable_vIS6_EEvE4typeERSt7variantIJDpS6_EESC_.exit.i: ; preds = %bb.f, %_ZNSt8__detail9__variant15__raw_idx_visitIZNSt7variantIJN6icu_788message210data_model7MatcherENS5_7PatternEEE4swapERS8_EUlOT_T0_E_JS9_EEEvSB_DpOT0_.exit.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !116
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !116
  store ptr %i.q, ptr %i.n, align 8, !tbaa !116
  store ptr %i.p, ptr %i.o, align 8, !tbaa !116
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.t = load i32, ptr %i.r, align 8, !tbaa !42
  %i.u = load i32, ptr %i.s, align 8, !tbaa !42
  store i32 %i.u, ptr %i.r, align 8, !tbaa !42
  store i32 %i.t, ptr %i.s, align 8, !tbaa !42
  br label %_ZN6icu_788message210data_model4swapERNS1_11MFDataModelES3_.exit

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  call void @__clang_call_terminate(ptr %i.w) #19
  unreachable

_ZN6icu_788message210data_model4swapERNS1_11MFDataModelES3_.exit: ; preds = %bb.b, %bb.d, %_ZSt4swapIJN6icu_788message210data_model7MatcherENS2_7PatternEEENSt9enable_ifIXaafraa23is_move_constructible_vIT_Efraa14is_swappable_vIS6_EEvE4typeERSt7variantIJDpS6_EESC_.exit.i
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZNK6icu_788message210data_model11MFDataModel7Builder5buildER10UErrorCode(ptr dead_on_unwind noalias writable sret(%"class.icu_78::message2::data_model::MFDataModel") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !31
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6icu_788message210data_model11MFDataModelC1Ev(ptr noundef nonnull align 8 dereferenceable(108) %0)
          to label %bb.f unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i8, ptr %i.c, align 8, !tbaa !118, !range !24, !noundef !25
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.g = load i8, ptr %i.f, align 1, !range !24
  %i.h = trunc nuw i8 %i.g to i1
  %or.cond = select i1 %i.e, i1 true, i1 %i.h
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 27, ptr %2, align 4, !tbaa !31
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @_ZN6icu_788message210data_model11MFDataModelC1ERKNS2_7BuilderER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #18
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e
  ret void

bb.g:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #19
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_788message210data_model11MFDataModelD2Ev(ptr noundef nonnull align 8 dead_on_return(108) dereferenceable(108) initializes((0, 8)) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6icu_788message210data_model11MFDataModelE, i64 16), ptr %0, align 8, !tbaa !29
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !116  ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN6icu_7810LocalArrayINS_8message210data_model7BindingEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %.loopexit.i, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.b
  %.idx.i = mul nsw i64 %i.e, 344
  %i.g = getelementptr inbounds i8, ptr %i.b, i64 %.idx.i
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.preheader.i
  %i.h = phi ptr [ %i.i, %.preheader.i ], [ %i.g, %.preheader.preheader.i ]
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -344 ; 3 uses
  tail call void @_ZN6icu_788message210data_model7BindingD1Ev(ptr noundef nonnull align 8 dead_on_return(344) dereferenceable(344) %i.i) #18
  %i.j = icmp eq ptr %i.i, %i.b
  br i1 %i.j, label %.loopexit.i, label %.preheader.i

.loopexit.i:                                      ; preds = %.preheader.i, %bb.b
  tail call void @_ZN6icu_787UMemorydaEPv(ptr noundef nonnull %i.d) #18
  br label %_ZN6icu_7810LocalArrayINS_8message210data_model7BindingEED2Ev.exit

_ZN6icu_7810LocalArrayINS_8message210data_model7BindingEED2Ev.exit: ; preds = %bb.a, %.loopexit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.l = load i8, ptr %i.k, align 8, !tbaa !113
  %.not.i.i = icmp eq i8 %i.l, -1
  br i1 %.not.i.i, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN6icu_788message210data_model7MatcherENS4_7PatternEEED2Ev.exit, label %bb.c, !prof !48

bb.c:                                             ; preds = %_ZN6icu_7810LocalArrayINS_8message210data_model7BindingEED2Ev.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !29
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(49) %i.m) #18, !inline_history !4
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN6icu_788message210data_model7MatcherENS4_7PatternEEED2Ev.exit

_ZNSt8__detail9__variant16_Variant_storageILb0EJN6icu_788message210data_model7MatcherENS4_7PatternEEED2Ev.exit: ; preds = %_ZN6icu_7810LocalArrayINS_8message210data_model7BindingEED2Ev.exit, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN6icu_788message210data_model7PatternD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.p) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_788message210data_model11MFDataModelD0Ev(ptr noundef nonnull align 8 dereferenceable(108) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN6icu_788message210data_model11MFDataModelD1Ev(ptr noundef nonnull align 8 dead_on_return(108) dereferenceable(108) %0) #18
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_788message210data_model11MFDataModel7BuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) initializes((0, 8)) %0) unnamed_addr #3 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6icu_788message210data_model11MFDataModel7BuilderE, i64 16), ptr %0, align 8, !tbaa !29
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !121  ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #18
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !122  ; 3 uses
  %.not3 = icmp eq ptr %i.g, null
  br i1 %.not3, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !29
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(40) %i.g) #18
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !120  ; 3 uses
  %.not4 = icmp eq ptr %i.l, null
  br i1 %.not4, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !29
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(40) %i.l) #18
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN6icu_788message210data_model7PatternD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.p) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_788message210data_model11MFDataModel7BuilderD0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN6icu_788message210data_model11MFDataModel7BuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) #18
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #18
  ret void
}

declare noundef ptr @_ZNK6icu_787UObject17getDynamicClassIDEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #6

declare noundef ptr @_ZN6icu_787UVector10setDeleterEPFvPvE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #6

declare void @uprv_deleteUObject_78(ptr noundef) #6

; Function Attrs: nounwind
declare noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef) local_unnamed_addr #7

declare void @_ZN6icu_787UVectorC1ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #6

declare noundef signext i8 @_ZNK6icu_7813UnicodeString9doCompareEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare noundef signext i8 @_ZNK6icu_7813UnicodeString8doEqualsEPKDsi(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i32 noundef) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString6appendEi(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZN6icu_7813UnicodeString4swapERS0_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8optionalISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEEE4swapERS7_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.94, align 8             ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 5 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !45, !range !24, !noundef !25
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 5 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !45, !range !24, !noundef !25
  %i.f = trunc nuw i8 %i.e to i1                  ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 5 uses
  br i1 %i.f, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 8, !tbaa !47
  br label %tailrecurse.i.i

tailrecurse.i.i:                                  ; preds = %bb.d, %bb.c
  %i.g = phi i8 [ %.pre.i.i, %bb.c ], [ %i.i, %bb.d ] ; 2 uses
  %.tr.i.i = phi ptr [ %0, %bb.c ], [ %.tr6.i.i, %bb.d ] ; 3 uses
  %.tr6.i.i = phi ptr [ %1, %bb.c ], [ %.tr.i.i, %bb.d ] ; 4 uses
  %.not.i.i.i = icmp eq i8 %i.g, -1
  br i1 %.not.i.i.i, label %bb.d, label %bb.e, !prof !48

bb.d:                                             ; preds = %tailrecurse.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.tr.i.i, i64 80
  %i.i = load i8, ptr %i.h, align 8, !tbaa !47    ; 2 uses
  %.not.i5.i.i = icmp eq i8 %i.i, -1
  br i1 %.not.i5.i.i, label %_ZSt4swapIJN6icu_7813UnicodeStringENS0_8message210data_model7LiteralEEENSt9enable_ifIXaafraa23is_move_constructible_vIT_Efraa14is_swappable_vIS6_EEvE4typeERSt7variantIJDpS6_EESC_.exit, label %tailrecurse.i.i, !prof !48

bb.e:                                             ; preds = %tailrecurse.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  store ptr %.tr.i.i, ptr %2, align 8, !tbaa !143
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.tr6.i.i, ptr %i.j, align 8, !tbaa !195
  %i.k = icmp eq i8 %i.g, 0
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @_ZZNSt7variantIJN6icu_7813UnicodeStringENS0_8message210data_model7LiteralEEE4swapERS5_ENUlOT_T0_E_clIRS1_St17integral_constantImLm0EEEEDaS8_S9_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(81) %.tr6.i.i), !inline_history !193
  br label %_ZNSt8__detail9__variant15__raw_idx_visitIZNSt7variantIJN6icu_7813UnicodeStringENS3_8message210data_model7LiteralEEE4swapERS8_EUlOT_T0_E_JS9_EEEvSB_DpOT0_.exit.i.i

bb.g:                                             ; preds = %bb.e
  call void @_ZZNSt7variantIJN6icu_7813UnicodeStringENS0_8message210data_model7LiteralEEE4swapERS5_ENUlOT_T0_E_clIRS4_St17integral_constantImLm1EEEEDaS8_S9_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(81) %.tr6.i.i), !inline_history !193
  br label %_ZNSt8__detail9__variant15__raw_idx_visitIZNSt7variantIJN6icu_7813UnicodeStringENS3_8message210data_model7LiteralEEE4swapERS8_EUlOT_T0_E_JS9_EEEvSB_DpOT0_.exit.i.i

_ZNSt8__detail9__variant15__raw_idx_visitIZNSt7variantIJN6icu_7813UnicodeStringENS3_8message210data_model7LiteralEEE4swapERS8_EUlOT_T0_E_JS9_EEEvSB_DpOT0_.exit.i.i: ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %_ZSt4swapIJN6icu_7813UnicodeStringENS0_8message210data_model7LiteralEEENSt9enable_ifIXaafraa23is_move_constructible_vIT_Efraa14is_swappable_vIS6_EEvE4typeERSt7variantIJDpS6_EESC_.exit

bb.h:                                             ; preds = %bb.b
  store i8 -1, ptr %.phi.trans.insert.i.i, align 8, !tbaa !47
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !tbaa !47    ; 2 uses
  switch i8 %i.m, label %bb.k [
    i8 0, label %bb.i
    i8 1, label %bb.j
    i8 -1, label %_ZNSt19_Optional_base_implISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEESt14_Optional_baseIS6_Lb0ELb0EEE12_M_constructIJS6_EEEvDpOT_.exit.thread
  ]

_ZNSt19_Optional_base_implISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEESt14_Optional_baseIS6_Lb0ELb0EEE12_M_constructIJS6_EEEvDpOT_.exit.thread: ; preds = %bb.h
  store i8 %i.m, ptr %.phi.trans.insert.i.i, align 8, !tbaa !47
  store i8 1, ptr %i.d, align 8, !tbaa !45
  store i8 0, ptr %i.a, align 8, !tbaa !45
  br label %_ZSt4swapIJN6icu_7813UnicodeStringENS0_8message210data_model7LiteralEEENSt9enable_ifIXaafraa23is_move_constructible_vIT_Efraa14is_swappable_vIS6_EEvE4typeERSt7variantIJDpS6_EESC_.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN6icu_7813UnicodeStringC1EOS0_(ptr noundef nonnull align 8 dereferenceable(89) %1, ptr noundef nonnull align 8 dereferenceable(81) %0) #18
  br label %_ZNSt19_Optional_base_implISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEESt14_Optional_baseIS6_Lb0ELb0EEE12_M_constructIJS6_EEEvDpOT_.exit

bb.j:                                             ; preds = %bb.h
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model7LiteralE, i64 16), ptr %1, align 8, !tbaa !29
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load i8, ptr %i.o, align 8, !tbaa !38, !range !24, !noundef !25
  store i8 %i.p, ptr %i.n, align 8, !tbaa !38
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.q, ptr noundef nonnull align 8 dereferenceable(64) %i.r)
          to label %_ZNSt19_Optional_base_implISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEESt14_Optional_baseIS6_Lb0ELb0EEE12_M_constructIJS6_EEEvDpOT_.exit unwind label %.body.i.i.i.i.i.i.i.i

.body.i.i.i.i.i.i.i.i:                            ; preds = %bb.j
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(89) %1) #18
  %i.t = load i8, ptr %.phi.trans.insert.i.i, align 8, !tbaa !47
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.t, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %common.resume, label %common.resume.sink.split, !prof !48

bb.k:                                             ; preds = %bb.h
  unreachable

common.resume.sink.split:                         ; preds = %.body.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i7
  %.sink28 = phi ptr [ %0, %.body.i.i.i.i.i.i.i.i7 ], [ %1, %.body.i.i.i.i.i.i.i.i ] ; 2 uses
  %common.resume.op.ph = phi { ptr, i32 } [ %i.ag, %.body.i.i.i.i.i.i.i.i7 ], [ %i.s, %.body.i.i.i.i.i.i.i.i ]
  %i.u = load ptr, ptr %.sink28, align 8, !tbaa !29
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(89) %.sink28) #18
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %.body.i.i.i.i.i.i.i.i7, %.body.i.i.i.i.i.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.s, %.body.i.i.i.i.i.i.i.i ], [ %i.ag, %.body.i.i.i.i.i.i.i.i7 ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

_ZNSt19_Optional_base_implISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEESt14_Optional_baseIS6_Lb0ELb0EEE12_M_constructIJS6_EEEvDpOT_.exit: ; preds = %bb.i, %bb.j
  %.pr = load i8, ptr %i.l, align 8, !tbaa !47    ; 2 uses
  store i8 %.pr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !47
  store i8 1, ptr %i.d, align 8, !tbaa !45
  store i8 0, ptr %i.a, align 8, !tbaa !45
  %.not.i.i.i.i = icmp eq i8 %.pr, -1
  br i1 %.not.i.i.i.i, label %_ZSt4swapIJN6icu_7813UnicodeStringENS0_8message210data_model7LiteralEEENSt9enable_ifIXaafraa23is_move_constructible_vIT_Efraa14is_swappable_vIS6_EEvE4typeERSt7variantIJDpS6_EESC_.exit, label %bb.l, !prof !144

bb.l:                                             ; preds = %_ZNSt19_Optional_base_implISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEESt14_Optional_baseIS6_Lb0ELb0EEE12_M_constructIJS6_EEEvDpOT_.exit
  %i.w = load ptr, ptr %0, align 8, !tbaa !29
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(89) %0) #18, !inline_history !194
  br label %_ZSt4swapIJN6icu_7813UnicodeStringENS0_8message210data_model7LiteralEEENSt9enable_ifIXaafraa23is_move_constructible_vIT_Efraa14is_swappable_vIS6_EEvE4typeERSt7variantIJDpS6_EESC_.exit

bb.m:                                             ; preds = %bb.a
  br i1 %i.f, label %bb.n, label %_ZSt4swapIJN6icu_7813UnicodeStringENS0_8message210data_model7LiteralEEENSt9enable_ifIXaafraa23is_move_constructible_vIT_Efraa14is_swappable_vIS6_EEvE4typeERSt7variantIJDpS6_EESC_.exit

bb.n:                                             ; preds = %bb.m
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  store i8 -1, ptr %i.y, align 8, !tbaa !47
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !47   ; 2 uses
  switch i8 %i.aa, label %bb.q [
    i8 0, label %bb.o
    i8 1, label %bb.p
    i8 -1, label %_ZNSt19_Optional_base_implISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEESt14_Optional_baseIS6_Lb0ELb0EEE12_M_constructIJS6_EEEvDpOT_.exit10.thread
  ]

_ZNSt19_Optional_base_implISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEESt14_Optional_baseIS6_Lb0ELb0EEE12_M_constructIJS6_EEEvDpOT_.exit10.thread: ; preds = %bb.n
  store i8 %i.aa, ptr %i.y, align 8, !tbaa !47
  store i8 1, ptr %i.a, align 8, !tbaa !45
  store i8 0, ptr %i.d, align 8, !tbaa !45
  br label %_ZSt4swapIJN6icu_7813UnicodeStringENS0_8message210data_model7LiteralEEENSt9enable_ifIXaafraa23is_move_constructible_vIT_Efraa14is_swappable_vIS6_EEvE4typeERSt7variantIJDpS6_EESC_.exit

bb.o:                                             ; preds = %bb.n
  tail call void @_ZN6icu_7813UnicodeStringC1EOS0_(ptr noundef nonnull align 8 dereferenceable(89) %0, ptr noundef nonnull align 8 dereferenceable(81) %1) #18
  br label %_ZNSt19_Optional_base_implISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEESt14_Optional_baseIS6_Lb0ELb0EEE12_M_constructIJS6_EEEvDpOT_.exit10

bb.p:                                             ; preds = %bb.n
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model7LiteralE, i64 16), ptr %0, align 8, !tbaa !29
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !38, !range !24, !noundef !25
  store i8 %i.ad, ptr %i.ab, align 8, !tbaa !38
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16
  invoke void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.ae, ptr noundef nonnull align 8 dereferenceable(64) %i.af)
          to label %_ZNSt19_Optional_base_implISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEESt14_Optional_baseIS6_Lb0ELb0EEE12_M_constructIJS6_EEEvDpOT_.exit10 unwind label %.body.i.i.i.i.i.i.i.i7

.body.i.i.i.i.i.i.i.i7:                           ; preds = %bb.p
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(89) %0) #18
  %i.ah = load i8, ptr %i.y, align 8, !tbaa !47
  %.not.i.i.i.i.i.i.i.i.i.i8 = icmp eq i8 %i.ah, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i8, label %common.resume, label %common.resume.sink.split, !prof !48

bb.q:                                             ; preds = %bb.n
  unreachable

_ZNSt19_Optional_base_implISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEESt14_Optional_baseIS6_Lb0ELb0EEE12_M_constructIJS6_EEEvDpOT_.exit10: ; preds = %bb.o, %bb.p
  %.pr21 = load i8, ptr %i.z, align 8, !tbaa !47  ; 2 uses
  store i8 %.pr21, ptr %i.y, align 8, !tbaa !47
  store i8 1, ptr %i.a, align 8, !tbaa !45
  store i8 0, ptr %i.d, align 8, !tbaa !45
  %.not.i.i.i.i11 = icmp eq i8 %.pr21, -1
  br i1 %.not.i.i.i.i11, label %_ZSt4swapIJN6icu_7813UnicodeStringENS0_8message210data_model7LiteralEEENSt9enable_ifIXaafraa23is_move_constructible_vIT_Efraa14is_swappable_vIS6_EEvE4typeERSt7variantIJDpS6_EESC_.exit, label %bb.r, !prof !144

bb.r:                                             ; preds = %_ZNSt19_Optional_base_implISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEESt14_Optional_baseIS6_Lb0ELb0EEE12_M_constructIJS6_EEEvDpOT_.exit10
  %i.ai = load ptr, ptr %1, align 8, !tbaa !29
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(89) %1) #18, !inline_history !194
  br label %_ZSt4swapIJN6icu_7813UnicodeStringENS0_8message210data_model7LiteralEEENSt9enable_ifIXaafraa23is_move_constructible_vIT_Efraa14is_swappable_vIS6_EEvE4typeERSt7variantIJDpS6_EESC_.exit

_ZSt4swapIJN6icu_7813UnicodeStringENS0_8message210data_model7LiteralEEENSt9enable_ifIXaafraa23is_move_constructible_vIT_Efraa14is_swappable_vIS6_EEvE4typeERSt7variantIJDpS6_EESC_.exit: ; preds = %bb.d, %_ZNSt19_Optional_base_implISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEESt14_Optional_baseIS6_Lb0ELb0EEE12_M_constructIJS6_EEEvDpOT_.exit10.thread, %_ZNSt19_Optional_base_implISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEESt14_Optional_baseIS6_Lb0ELb0EEE12_M_constructIJS6_EEEvDpOT_.exit.thread, %bb.r, %_ZNSt19_Optional_base_implISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEESt14_Optional_baseIS6_Lb0ELb0EEE12_M_constructIJS6_EEEvDpOT_.exit10, %bb.l, %_ZNSt19_Optional_base_implISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEESt14_Optional_baseIS6_Lb0ELb0EEE12_M_constructIJS6_EEEvDpOT_.exit, %_ZNSt8__detail9__variant15__raw_idx_visitIZNSt7variantIJN6icu_7813UnicodeStringENS3_8message210data_model7LiteralEEE4swapERS8_EUlOT_T0_E_JS9_EEEvSB_DpOT0_.exit.i.i, %bb.m
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZNSt7variantIJN6icu_7813UnicodeStringENS0_8message210data_model7LiteralEEE4swapERS5_ENUlOT_T0_E_clIRS1_St17integral_constantImLm0EEEEDaS8_S9_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.icu_78::UnicodeString", align 8 ; 7 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !143    ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 5 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !47
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %_ZSt3getILm0EJN6icu_7813UnicodeStringENS0_8message210data_model7LiteralEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERS9_.exit, label %bb.b

_ZSt3getILm0EJN6icu_7813UnicodeStringENS0_8message210data_model7LiteralEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERS9_.exit: ; preds = %bb.a
  tail call void @_ZN6icu_7813UnicodeString4swapERS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %1) #18
  br label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @_ZN6icu_7813UnicodeStringC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(64) %1) #18
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !145, !nonnull !25, !align !146 ; 11 uses
  %i.g = load i8, ptr %i.b, align 8, !tbaa !47
  switch i8 %i.g, label %bb.g [
    i8 0, label %bb.c
    i8 1, label %bb.e
    i8 -1, label %_ZNSt8__detail9__variant15__raw_idx_visitIZZNSt7variantIJN6icu_7813UnicodeStringENS3_8message210data_model7LiteralEEE4swapERS8_ENUlOT_T0_E_clIRS4_St17integral_constantImLm0EEEEDaSB_SC_EUlSB_SC_E_JS9_EEEvSB_DpOT0_.exit.thread
  ]

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 80 ; 3 uses
  %i.i = load i8, ptr %i.h, align 8, !tbaa !47
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.i, -1
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZZNSt7variantIJN6icu_7813UnicodeStringENS5_8message210data_model7LiteralEEE4swapERSA_ENUlOT_T0_E_clIRS6_St17integral_constantImLm0EEEEDaSD_SE_EUlSD_SE_E_SB_EJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESL_SB_.exit.i.i, label %bb.d, !prof !48

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !29
  %i.k = load ptr, ptr %i.j, align 8
  call void %i.k(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(81) %i.f) #18, !inline_history !196
  store i8 -1, ptr %i.h, align 8, !tbaa !47
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZZNSt7variantIJN6icu_7813UnicodeStringENS5_8message210data_model7LiteralEEE4swapERSA_ENUlOT_T0_E_clIRS6_St17integral_constantImLm0EEEEDaSD_SE_EUlSD_SE_E_SB_EJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESL_SB_.exit.i.i

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZZNSt7variantIJN6icu_7813UnicodeStringENS5_8message210data_model7LiteralEEE4swapERSA_ENUlOT_T0_E_clIRS6_St17integral_constantImLm0EEEEDaSD_SE_EUlSD_SE_E_SB_EJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESL_SB_.exit.i.i: ; preds = %bb.d, %bb.c
  call void @_ZN6icu_7813UnicodeStringC1EOS0_(ptr noundef nonnull align 8 dereferenceable(81) %i.f, ptr noundef nonnull align 8 dereferenceable(81) %i.a) #18
  store i8 0, ptr %i.h, align 8, !tbaa !47
  br label %_ZNSt8__detail9__variant15__raw_idx_visitIZZNSt7variantIJN6icu_7813UnicodeStringENS3_8message210data_model7LiteralEEE4swapERS8_ENUlOT_T0_E_clIRS4_St17integral_constantImLm0EEEEDaSB_SC_EUlSB_SC_E_JS9_EEEvSB_DpOT0_.exit

bb.e:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 80 ; 3 uses
  %i.m = load i8, ptr %i.l, align 8, !tbaa !47
  %.not.i.i.i.i.i.i8.i.i = icmp eq i8 %i.m, -1
  br i1 %.not.i.i.i.i.i.i8.i.i, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN6icu_7813UnicodeStringENS2_8message210data_model7LiteralEEE8_M_resetEv.exit.i.i.i.i.i.i.i, label %bb.f, !prof !48

bb.f:                                             ; preds = %bb.e
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !29
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(81) %i.f) #18, !inline_history !197
  store i8 -1, ptr %i.l, align 8, !tbaa !47
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN6icu_7813UnicodeStringENS2_8message210data_model7LiteralEEE8_M_resetEv.exit.i.i.i.i.i.i.i

_ZNSt8__detail9__variant16_Variant_storageILb0EJN6icu_7813UnicodeStringENS2_8message210data_model7LiteralEEE8_M_resetEv.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model7LiteralE, i64 16), ptr %i.f, align 8, !tbaa !29
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.r = load i8, ptr %i.q, align 8, !tbaa !38, !range !24, !noundef !25
  store i8 %i.r, ptr %i.p, align 8, !tbaa !38
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  invoke void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.s, ptr noundef nonnull align 8 dereferenceable(64) %i.t)
          to label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZZNSt7variantIJN6icu_7813UnicodeStringENS5_8message210data_model7LiteralEEE4swapERSA_ENUlOT_T0_E_clIRS6_St17integral_constantImLm0EEEEDaSD_SE_EUlSD_SE_E_SB_EJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESL_SB_.exit.i.i unwind label %.body

.body:                                            ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJN6icu_7813UnicodeStringENS2_8message210data_model7LiteralEEE8_M_resetEv.exit.i.i.i.i.i.i.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(81) %i.f) #18
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  resume { ptr, i32 } %i.u

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZZNSt7variantIJN6icu_7813UnicodeStringENS5_8message210data_model7LiteralEEE4swapERSA_ENUlOT_T0_E_clIRS6_St17integral_constantImLm0EEEEDaSD_SE_EUlSD_SE_E_SB_EJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESL_SB_.exit.i.i: ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJN6icu_7813UnicodeStringENS2_8message210data_model7LiteralEEE8_M_resetEv.exit.i.i.i.i.i.i.i
  store i8 1, ptr %i.l, align 8, !tbaa !47
  br label %_ZNSt8__detail9__variant15__raw_idx_visitIZZNSt7variantIJN6icu_7813UnicodeStringENS3_8message210data_model7LiteralEEE4swapERS8_ENUlOT_T0_E_clIRS4_St17integral_constantImLm0EEEEDaSB_SC_EUlSB_SC_E_JS9_EEEvSB_DpOT0_.exit

bb.g:                                             ; preds = %bb.b
  unreachable

_ZNSt8__detail9__variant15__raw_idx_visitIZZNSt7variantIJN6icu_7813UnicodeStringENS3_8message210data_model7LiteralEEE4swapERS8_ENUlOT_T0_E_clIRS4_St17integral_constantImLm0EEEEDaSB_SC_EUlSB_SC_E_JS9_EEEvSB_DpOT0_.exit: ; preds = %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZZNSt7variantIJN6icu_7813UnicodeStringENS5_8message210data_model7LiteralEEE4swapERSA_ENUlOT_T0_E_clIRS6_St17integral_constantImLm0EEEEDaSD_SE_EUlSD_SE_E_SB_EJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESL_SB_.exit.i.i, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZZNSt7variantIJN6icu_7813UnicodeStringENS5_8message210data_model7LiteralEEE4swapERSA_ENUlOT_T0_E_clIRS6_St17integral_constantImLm0EEEEDaSD_SE_EUlSD_SE_E_SB_EJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESL_SB_.exit.i.i
  %.pr = load i8, ptr %i.b, align 8, !tbaa !47
  %.not.i.i = icmp eq i8 %.pr, -1
  br i1 %.not.i.i, label %_ZNSt8__detail9__variant15__raw_idx_visitIZZNSt7variantIJN6icu_7813UnicodeStringENS3_8message210data_model7LiteralEEE4swapERS8_ENUlOT_T0_E_clIRS4_St17integral_constantImLm0EEEEDaSB_SC_EUlSB_SC_E_JS9_EEEvSB_DpOT0_.exit.thread, label %bb.h, !prof !144

bb.h:                                             ; preds = %_ZNSt8__detail9__variant15__raw_idx_visitIZZNSt7variantIJN6icu_7813UnicodeStringENS3_8message210data_model7LiteralEEE4swapERS8_ENUlOT_T0_E_clIRS4_St17integral_constantImLm0EEEEDaSB_SC_EUlSB_SC_E_JS9_EEEvSB_DpOT0_.exit
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(81) %i.a) #18, !inline_history !198
  store i8 -1, ptr %i.b, align 8, !tbaa !47
  br label %_ZNSt8__detail9__variant15__raw_idx_visitIZZNSt7variantIJN6icu_7813UnicodeStringENS3_8message210data_model7LiteralEEE4swapERS8_ENUlOT_T0_E_clIRS4_St17integral_constantImLm0EEEEDaSB_SC_EUlSB_SC_E_JS9_EEEvSB_DpOT0_.exit.thread

_ZNSt8__detail9__variant15__raw_idx_visitIZZNSt7variantIJN6icu_7813UnicodeStringENS3_8message210data_model7LiteralEEE4swapERS8_ENUlOT_T0_E_clIRS4_St17integral_constantImLm0EEEEDaSB_SC_EUlSB_SC_E_JS9_EEEvSB_DpOT0_.exit.thread: ; preds = %bb.b, %bb.h, %_ZNSt8__detail9__variant15__raw_idx_visitIZZNSt7variantIJN6icu_7813UnicodeStringENS3_8message210data_model7LiteralEEE4swapERS8_ENUlOT_T0_E_clIRS4_St17integral_constantImLm0EEEEDaSB_SC_EUlSB_SC_E_JS9_EEEvSB_DpOT0_.exit
  call void @_ZN6icu_7813UnicodeStringC1EOS0_(ptr noundef nonnull align 8 dereferenceable(81) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %2) #18
  store i8 0, ptr %i.b, align 8, !tbaa !47
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt8__detail9__variant15__raw_idx_visitIZZNSt7variantIJN6icu_7813UnicodeStringENS3_8message210data_model7LiteralEEE4swapERS8_ENUlOT_T0_E_clIRS4_St17integral_constantImLm0EEEEDaSB_SC_EUlSB_SC_E_JS9_EEEvSB_DpOT0_.exit.thread, %_ZSt3getILm0EJN6icu_7813UnicodeStringENS0_8message210data_model7LiteralEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERS9_.exit
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6icu_7813UnicodeStringC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #7

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #7

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #13

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt18bad_variant_accessD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #18
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNKSt18bad_variant_access4whatEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !137
  ret ptr %i.b
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZNSt7variantIJN6icu_7813UnicodeStringENS0_8message210data_model7LiteralEEE4swapERS5_ENUlOT_T0_E_clIRS4_St17integral_constantImLm1EEEEDaS8_S9_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.icu_78::message2::data_model::Literal", align 8 ; 9 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !143    ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 5 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !47
  %i.d = icmp eq i8 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br i1 %i.d, label %_ZSt3getILm1EJN6icu_7813UnicodeStringENS0_8message210data_model7LiteralEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERS9_.exit, label %bb.b

_ZSt3getILm1EJN6icu_7813UnicodeStringENS0_8message210data_model7LiteralEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERS9_.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load i8, ptr %i.f, align 8, !tbaa !43, !range !24, !noundef !25
  %i.i = load i8, ptr %i.g, align 8, !tbaa !43, !range !24, !noundef !25
  store i8 %i.i, ptr %i.f, align 8, !tbaa !43
  store i8 %i.h, ptr %i.g, align 8, !tbaa !43
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @_ZN6icu_7813UnicodeString4swapERS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.j, ptr noundef nonnull align 8 dereferenceable(64) %i.e) #18
  br label %bb.m

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model7LiteralE, i64 16), ptr %2, align 8, !tbaa !29
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load i8, ptr %i.l, align 8, !tbaa !38, !range !24, !noundef !25
  store i8 %i.m, ptr %i.k, align 8, !tbaa !38
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  invoke void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.n, ptr noundef nonnull align 8 dereferenceable(64) %i.e)
          to label %_ZN6icu_788message210data_model7LiteralC2ERKS2_.exit unwind label %bb.c

common.resume:                                    ; preds = %.body, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.c ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(80) %2) #18
  br label %common.resume

_ZN6icu_788message210data_model7LiteralC2ERKS2_.exit: ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !145, !nonnull !25, !align !146 ; 11 uses
  %i.r = load i8, ptr %i.b, align 8, !tbaa !47
  switch i8 %i.r, label %bb.i [
    i8 0, label %bb.d
    i8 1, label %bb.f
    i8 -1, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN6icu_7813UnicodeStringENS2_8message210data_model7LiteralEEE8_M_resetEv.exit.i
  ]

bb.d:                                             ; preds = %_ZN6icu_788message210data_model7LiteralC2ERKS2_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 80 ; 3 uses
  %i.t = load i8, ptr %i.s, align 8, !tbaa !47
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.t, -1
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZZNSt7variantIJN6icu_7813UnicodeStringENS5_8message210data_model7LiteralEEE4swapERSA_ENUlOT_T0_E_clIRS9_St17integral_constantImLm1EEEEDaSD_SE_EUlSD_SE_E_SB_EJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESL_SB_.exit.i.i, label %bb.e, !prof !48

bb.e:                                             ; preds = %bb.d
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !29
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(81) %i.q) #18, !inline_history !199
  store i8 -1, ptr %i.s, align 8, !tbaa !47
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZZNSt7variantIJN6icu_7813UnicodeStringENS5_8message210data_model7LiteralEEE4swapERSA_ENUlOT_T0_E_clIRS9_St17integral_constantImLm1EEEEDaSD_SE_EUlSD_SE_E_SB_EJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESL_SB_.exit.i.i

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZZNSt7variantIJN6icu_7813UnicodeStringENS5_8message210data_model7LiteralEEE4swapERSA_ENUlOT_T0_E_clIRS9_St17integral_constantImLm1EEEEDaSD_SE_EUlSD_SE_E_SB_EJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESL_SB_.exit.i.i: ; preds = %bb.e, %bb.d
  call void @_ZN6icu_7813UnicodeStringC1EOS0_(ptr noundef nonnull align 8 dereferenceable(81) %i.q, ptr noundef nonnull align 8 dereferenceable(81) %i.a) #18
  store i8 0, ptr %i.s, align 8, !tbaa !47
  br label %_ZNSt8__detail9__variant15__raw_idx_visitIZZNSt7variantIJN6icu_7813UnicodeStringENS3_8message210data_model7LiteralEEE4swapERS8_ENUlOT_T0_E_clIRS7_St17integral_constantImLm1EEEEDaSB_SC_EUlSB_SC_E_JS9_EEEvSB_DpOT0_.exit

bb.f:                                             ; preds = %_ZN6icu_788message210data_model7LiteralC2ERKS2_.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 80 ; 3 uses
  %i.x = load i8, ptr %i.w, align 8, !tbaa !47
  %.not.i.i.i.i.i.i8.i.i = icmp eq i8 %i.x, -1
  br i1 %.not.i.i.i.i.i.i8.i.i, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN6icu_7813UnicodeStringENS2_8message210data_model7LiteralEEE8_M_resetEv.exit.i.i.i.i.i.i.i, label %bb.g, !prof !48

bb.g:                                             ; preds = %bb.f
  %i.y = load ptr, ptr %i.q, align 8, !tbaa !29
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(81) %i.q) #18, !inline_history !200
  store i8 -1, ptr %i.w, align 8, !tbaa !47
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN6icu_7813UnicodeStringENS2_8message210data_model7LiteralEEE8_M_resetEv.exit.i.i.i.i.i.i.i

_ZNSt8__detail9__variant16_Variant_storageILb0EJN6icu_7813UnicodeStringENS2_8message210data_model7LiteralEEE8_M_resetEv.exit.i.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model7LiteralE, i64 16), ptr %i.q, align 8, !tbaa !29
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !38, !range !24, !noundef !25
  store i8 %i.ac, ptr %i.aa, align 8, !tbaa !38
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  invoke void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.ad, ptr noundef nonnull align 8 dereferenceable(64) %i.ae)
          to label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZZNSt7variantIJN6icu_7813UnicodeStringENS5_8message210data_model7LiteralEEE4swapERSA_ENUlOT_T0_E_clIRS9_St17integral_constantImLm1EEEEDaSD_SE_EUlSD_SE_E_SB_EJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESL_SB_.exit.i.i unwind label %bb.h

bb.h:                                             ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJN6icu_7813UnicodeStringENS2_8message210data_model7LiteralEEE8_M_resetEv.exit.i.i.i.i.i.i.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZZNSt7variantIJN6icu_7813UnicodeStringENS5_8message210data_model7LiteralEEE4swapERSA_ENUlOT_T0_E_clIRS9_St17integral_constantImLm1EEEEDaSD_SE_EUlSD_SE_E_SB_EJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESL_SB_.exit.i.i: ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJN6icu_7813UnicodeStringENS2_8message210data_model7LiteralEEE8_M_resetEv.exit.i.i.i.i.i.i.i
  store i8 1, ptr %i.w, align 8, !tbaa !47
  br label %_ZNSt8__detail9__variant15__raw_idx_visitIZZNSt7variantIJN6icu_7813UnicodeStringENS3_8message210data_model7LiteralEEE4swapERS8_ENUlOT_T0_E_clIRS7_St17integral_constantImLm1EEEEDaSB_SC_EUlSB_SC_E_JS9_EEEvSB_DpOT0_.exit

bb.i:                                             ; preds = %_ZN6icu_788message210data_model7LiteralC2ERKS2_.exit
  unreachable

_ZNSt8__detail9__variant15__raw_idx_visitIZZNSt7variantIJN6icu_7813UnicodeStringENS3_8message210data_model7LiteralEEE4swapERS8_ENUlOT_T0_E_clIRS7_St17integral_constantImLm1EEEEDaSB_SC_EUlSB_SC_E_JS9_EEEvSB_DpOT0_.exit: ; preds = %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZZNSt7variantIJN6icu_7813UnicodeStringENS5_8message210data_model7LiteralEEE4swapERSA_ENUlOT_T0_E_clIRS9_St17integral_constantImLm1EEEEDaSD_SE_EUlSD_SE_E_SB_EJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESL_SB_.exit.i.i, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZZNSt7variantIJN6icu_7813UnicodeStringENS5_8message210data_model7LiteralEEE4swapERSA_ENUlOT_T0_E_clIRS9_St17integral_constantImLm1EEEEDaSD_SE_EUlSD_SE_E_SB_EJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESL_SB_.exit.i.i
  %.pr = load i8, ptr %i.b, align 8, !tbaa !47
  %.not.i.i = icmp eq i8 %.pr, -1
  br i1 %.not.i.i, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN6icu_7813UnicodeStringENS2_8message210data_model7LiteralEEE8_M_resetEv.exit.i, label %bb.j, !prof !144

bb.j:                                             ; preds = %_ZNSt8__detail9__variant15__raw_idx_visitIZZNSt7variantIJN6icu_7813UnicodeStringENS3_8message210data_model7LiteralEEE4swapERS8_ENUlOT_T0_E_clIRS7_St17integral_constantImLm1EEEEDaSB_SC_EUlSB_SC_E_JS9_EEEvSB_DpOT0_.exit
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(81) %i.a) #18, !inline_history !201
  store i8 -1, ptr %i.b, align 8, !tbaa !47
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN6icu_7813UnicodeStringENS2_8message210data_model7LiteralEEE8_M_resetEv.exit.i

_ZNSt8__detail9__variant16_Variant_storageILb0EJN6icu_7813UnicodeStringENS2_8message210data_model7LiteralEEE8_M_resetEv.exit.i: ; preds = %_ZN6icu_788message210data_model7LiteralC2ERKS2_.exit, %bb.j, %_ZNSt8__detail9__variant15__raw_idx_visitIZZNSt7variantIJN6icu_7813UnicodeStringENS3_8message210data_model7LiteralEEE4swapERS8_ENUlOT_T0_E_clIRS7_St17integral_constantImLm1EEEEDaSB_SC_EUlSB_SC_E_JS9_EEEvSB_DpOT0_.exit
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model7LiteralE, i64 16), ptr %i.a, align 8, !tbaa !29
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aj = load i8, ptr %i.k, align 8, !tbaa !38, !range !24, !noundef !25
  store i8 %i.aj, ptr %i.ai, align 8, !tbaa !38
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  invoke void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.ak, ptr noundef nonnull align 8 dereferenceable(64) %i.n)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJN6icu_7813UnicodeStringENS2_8message210data_model7LiteralEEE8_M_resetEv.exit.i
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.l:                                             ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJN6icu_7813UnicodeStringENS2_8message210data_model7LiteralEEE8_M_resetEv.exit.i
  store i8 1, ptr %i.b, align 8, !tbaa !47
  call void @_ZN6icu_788message210data_model7LiteralD1Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %bb.m

.body:                                            ; preds = %bb.k, %bb.h
  %.sink = phi ptr [ %i.a, %bb.k ], [ %i.q, %bb.h ]
  %.pn = phi { ptr, i32 } [ %i.al, %bb.k ], [ %i.af, %bb.h ]
  call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(81) %.sink) #18
  call void @_ZN6icu_788message210data_model7LiteralD1Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %common.resume

bb.m:                                             ; preds = %bb.l, %_ZSt3getILm1EJN6icu_7813UnicodeStringENS0_8message210data_model7LiteralEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERS9_.exit
  ret void
}

declare noundef ptr @_ZN6icu_787UVector11setComparerEPFa8UElementS1_E(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define internal noundef signext range(i8 0, 2) i8 @_ZN6icu_788message2L12stringsEqualE8UElementS1_(ptr %0, ptr %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 8, !tbaa !26   ; 3 uses
  %i.c = and i16 %i.b, 1
  %.not.i = icmp eq i16 %i.c, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i16, ptr %i.d, align 8, !tbaa !26
  %i.f = trunc i16 %i.e to i1
  br label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = icmp slt i16 %i.b, 0
  %i.h = ashr i16 %i.b, 5
  %i.i = sext i16 %i.h to i32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.k = load i32, ptr %i.j, align 4
  %i.l = select i1 %i.g, i32 %i.k, i32 %i.i       ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i16, ptr %i.m, align 8, !tbaa !26   ; 4 uses
  %i.o = icmp slt i16 %i.n, 0
  %i.p = ashr i16 %i.n, 5
  %i.q = sext i16 %i.p to i32
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.s = load i32, ptr %i.r, align 4
  %i.t = select i1 %i.o, i32 %i.s, i32 %i.q
  %i.u = and i16 %i.n, 1
  %.not9.i = icmp eq i16 %i.u, 0
  %i.v = icmp eq i32 %i.l, %i.t
  %or.cond.i = and i1 %.not9.i, %i.v
  br i1 %or.cond.i, label %bb.d, label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit

bb.d:                                             ; preds = %bb.c
  %i.w = and i16 %i.n, 2
  %.not.i.i.i = icmp eq i16 %i.w, 0
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = select i1 %.not.i.i.i, ptr %i.z, ptr %i.x
  %i.ab = tail call noundef signext i8 @_ZNK6icu_7813UnicodeString8doEqualsEPKDsi(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %i.aa, i32 noundef %i.l)
  %i.ac = icmp ne i8 %i.ab, 0
  br label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit

_ZNK6icu_7813UnicodeStringeqERKS0_.exit:          ; preds = %bb.b, %bb.c, %bb.d
  %.0.i = phi i1 [ %i.f, %bb.b ], [ %i.ac, %bb.d ], [ false, %bb.c ]
  %i.ad = zext i1 %.0.i to i8
  ret i8 %i.ad
}

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail9__variant15_Copy_ctor_baseILb0EJN6icu_7813UnicodeStringENS2_8message210data_model10ExpressionENS5_6MarkupEEEC2ERKS8_(ptr noundef nonnull align 8 dereferenceable(257) %0, ptr noundef nonnull align 8 dereferenceable(257) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  store i8 -1, ptr %i.a, align 8, !tbaa !76
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !76
  switch i8 %i.c, label %bb.l [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 -1, label %_ZNSt8__detail9__variant15__raw_idx_visitIZNS0_15_Copy_ctor_baseILb0EJN6icu_7813UnicodeStringENS3_8message210data_model10ExpressionENS6_6MarkupEEEC1ERKS9_EUlOT_T0_E_JRKSt7variantIJS4_S7_S8_EEEEEvSD_DpOT0_.exit
  ]

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(257) %1)
          to label %_ZNSt8__detail9__variant15__raw_idx_visitIZNS0_15_Copy_ctor_baseILb0EJN6icu_7813UnicodeStringENS3_8message210data_model10ExpressionENS6_6MarkupEEEC1ERKS9_EUlOT_T0_E_JRKSt7variantIJS4_S7_S8_EEEEEvSD_DpOT0_.exit unwind label %bb.m

bb.c:                                             ; preds = %bb.a
  invoke void @_ZN6icu_788message210data_model10ExpressionC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(257) %1)
          to label %_ZNSt8__detail9__variant15__raw_idx_visitIZNS0_15_Copy_ctor_baseILb0EJN6icu_7813UnicodeStringENS3_8message210data_model10ExpressionENS6_6MarkupEEEC1ERKS9_EUlOT_T0_E_JRKSt7variantIJS4_S7_S8_EEEEEvSD_DpOT0_.exit unwind label %bb.m

bb.d:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model6MarkupE, i64 16), ptr %0, align 8, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !63
  store i32 %i.f, ptr %i.d, align 8, !tbaa !63
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  invoke void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.g, ptr noundef nonnull align 8 dereferenceable(64) %i.h)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 80
  invoke void @_ZN6icu_788message210data_model9OptionMapC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(28) %i.i, ptr noundef nonnull align 8 dereferenceable(28) %i.j)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 112
  invoke void @_ZN6icu_788message210data_model9OptionMapC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(28) %i.k, ptr noundef nonnull align 8 dereferenceable(28) %i.l)
          to label %_ZNSt8__detail9__variant15__raw_idx_visitIZNS0_15_Copy_ctor_baseILb0EJN6icu_7813UnicodeStringENS3_8message210data_model10ExpressionENS6_6MarkupEEEC1ERKS9_EUlOT_T0_E_JRKSt7variantIJS4_S7_S8_EEEEEvSD_DpOT0_.exit unwind label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.h:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_788message210data_model9OptionMapD1Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %i.i) #18
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn.i.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.o, %bb.i ], [ %i.n, %bb.h ]
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.g) #18
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %.pn.pn.i.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %.pn.i.i.i.i.i.i.i.i.i.i.i, %bb.j ], [ %i.m, %bb.g ]
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(256) %0) #18
  br label %.body

bb.l:                                             ; preds = %bb.a
  unreachable

_ZNSt8__detail9__variant15__raw_idx_visitIZNS0_15_Copy_ctor_baseILb0EJN6icu_7813UnicodeStringENS3_8message210data_model10ExpressionENS6_6MarkupEEEC1ERKS9_EUlOT_T0_E_JRKSt7variantIJS4_S7_S8_EEEEEvSD_DpOT0_.exit: ; preds = %bb.c, %bb.b, %bb.a, %bb.f
  %i.p = load i8, ptr %i.b, align 8, !tbaa !76
  store i8 %i.p, ptr %i.a, align 8, !tbaa !76
  ret void

bb.m:                                             ; preds = %bb.c, %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.k, %bb.m
  %eh.lpad-body = phi { ptr, i32 } [ %i.q, %bb.m ], [ %.pn.pn.i.i.i.i.i.i.i.i.i.i.i, %bb.k ]
  %i.r = load i8, ptr %i.a, align 8, !tbaa !76
  %.not.i.i = icmp eq i8 %i.r, -1
  br i1 %.not.i.i, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN6icu_7813UnicodeStringENS2_8message210data_model10ExpressionENS5_6MarkupEEED2Ev.exit, label %bb.n, !prof !48

bb.n:                                             ; preds = %.body
  %i.s = load ptr, ptr %0, align 8, !tbaa !29
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(257) %0) #18, !inline_history !1
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN6icu_7813UnicodeStringENS2_8message210data_model10ExpressionENS5_6MarkupEEED2Ev.exit

_ZNSt8__detail9__variant16_Variant_storageILb0EJN6icu_7813UnicodeStringENS2_8message210data_model10ExpressionENS5_6MarkupEEED2Ev.exit: ; preds = %.body, %bb.n
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt13__invoke_implIvZNSt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model10ExpressionENS4_6MarkupEEE4swapERS7_EUlOT_T0_E_JRS2_St17integral_constantImLm0EEEES9_St14__invoke_otherOSB_DpOT1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.icu_78::UnicodeString", align 8 ; 7 uses
  %4 = alloca %class.anon.118, align 8            ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !79     ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 256 ; 4 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !76
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %_ZSt3getILm0EJN6icu_7813UnicodeStringENS0_8message210data_model10ExpressionENS3_6MarkupEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSA_.exit.i, label %bb.b

_ZSt3getILm0EJN6icu_7813UnicodeStringENS0_8message210data_model10ExpressionENS3_6MarkupEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSA_.exit.i: ; preds = %bb.a
  tail call void @_ZN6icu_7813UnicodeString4swapERS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %1) #18
  br label %_ZZNSt7variantIJN6icu_7813UnicodeStringENS0_8message210data_model10ExpressionENS3_6MarkupEEE4swapERS6_ENUlOT_T0_E_clIRS1_St17integral_constantImLm0EEEEDaS9_SA_.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @_ZN6icu_7813UnicodeStringC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(64) %1) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !147, !nonnull !25, !align !146
  store ptr %i.f, ptr %4, align 8, !tbaa !80
  invoke void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZZNSt7variantIJN6icu_7813UnicodeStringENS4_8message210data_model10ExpressionENS7_6MarkupEEE4swapERSA_ENUlOT_T0_E_clIRS5_St17integral_constantImLm0EEEEDaSD_SE_EUlSD_SE_E_JSB_EEDcOSE_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(257) %i.a)
          to label %_ZNSt8__detail9__variant15__raw_idx_visitIZZNSt7variantIJN6icu_7813UnicodeStringENS3_8message210data_model10ExpressionENS6_6MarkupEEE4swapERS9_ENUlOT_T0_E_clIRS4_St17integral_constantImLm0EEEEDaSC_SD_EUlSC_SD_E_JSA_EEEvSC_DpOT0_.exit.i unwind label %bb.e

_ZNSt8__detail9__variant15__raw_idx_visitIZZNSt7variantIJN6icu_7813UnicodeStringENS3_8message210data_model10ExpressionENS6_6MarkupEEE4swapERS9_ENUlOT_T0_E_clIRS4_St17integral_constantImLm0EEEEDaSC_SD_EUlSC_SD_E_JSA_EEEvSC_DpOT0_.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.g = load i8, ptr %i.b, align 8, !tbaa !76
  %.not.i.i.i = icmp eq i8 %i.g, -1
  br i1 %.not.i.i.i, label %bb.d, label %bb.c, !prof !48

bb.c:                                             ; preds = %_ZNSt8__detail9__variant15__raw_idx_visitIZZNSt7variantIJN6icu_7813UnicodeStringENS3_8message210data_model10ExpressionENS6_6MarkupEEE4swapERS9_ENUlOT_T0_E_clIRS4_St17integral_constantImLm0EEEEDaSC_SD_EUlSC_SD_E_JSA_EEEvSC_DpOT0_.exit.i
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.i = load ptr, ptr %i.h, align 8
  call void %i.i(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(257) %i.a) #18, !inline_history !202
  store i8 -1, ptr %i.b, align 8, !tbaa !76
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNSt8__detail9__variant15__raw_idx_visitIZZNSt7variantIJN6icu_7813UnicodeStringENS3_8message210data_model10ExpressionENS6_6MarkupEEE4swapERS9_ENUlOT_T0_E_clIRS4_St17integral_constantImLm0EEEEDaSC_SD_EUlSC_SD_E_JSA_EEEvSC_DpOT0_.exit.i
  call void @_ZN6icu_7813UnicodeStringC1EOS0_(ptr noundef nonnull align 8 dereferenceable(257) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %3) #18
  store i8 0, ptr %i.b, align 8, !tbaa !76
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %_ZZNSt7variantIJN6icu_7813UnicodeStringENS0_8message210data_model10ExpressionENS3_6MarkupEEE4swapERS6_ENUlOT_T0_E_clIRS1_St17integral_constantImLm0EEEEDaS9_SA_.exit

bb.e:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  resume { ptr, i32 } %i.j

_ZZNSt7variantIJN6icu_7813UnicodeStringENS0_8message210data_model10ExpressionENS3_6MarkupEEE4swapERS6_ENUlOT_T0_E_clIRS1_St17integral_constantImLm0EEEEDaS9_SA_.exit: ; preds = %_ZSt3getILm0EJN6icu_7813UnicodeStringENS0_8message210data_model10ExpressionENS3_6MarkupEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSA_.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZZNSt7variantIJN6icu_7813UnicodeStringENS4_8message210data_model10ExpressionENS7_6MarkupEEE4swapERSA_ENUlOT_T0_E_clIRS5_St17integral_constantImLm0EEEEDaSD_SE_EUlSD_SE_E_JSB_EEDcOSE_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(257) %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.b = load i8, ptr %i.a, align 8, !tbaa !76
  switch i8 %i.b, label %bb.o [
    i8 0, label %bb.b
    i8 1, label %bb.d
    i8 2, label %bb.f
    i8 -1, label %bb.p
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !207, !nonnull !25, !align !146 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 256 ; 3 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !76
  %.not.i.i.i.i.i.i = icmp eq i8 %i.e, -1
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZZNSt7variantIJN6icu_7813UnicodeStringENS5_8message210data_model10ExpressionENS8_6MarkupEEE4swapERSB_ENUlOT_T0_E_clIRS6_St17integral_constantImLm0EEEEDaSE_SF_EUlSE_SF_E_SC_EJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESM_SC_.exit, label %bb.c, !prof !48

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !29
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(257) %i.c) #18, !inline_history !203
  store i8 -1, ptr %i.d, align 8, !tbaa !76
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZZNSt7variantIJN6icu_7813UnicodeStringENS5_8message210data_model10ExpressionENS8_6MarkupEEE4swapERSB_ENUlOT_T0_E_clIRS6_St17integral_constantImLm0EEEEDaSE_SF_EUlSE_SF_E_SC_EJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESM_SC_.exit

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZZNSt7variantIJN6icu_7813UnicodeStringENS5_8message210data_model10ExpressionENS8_6MarkupEEE4swapERSB_ENUlOT_T0_E_clIRS6_St17integral_constantImLm0EEEEDaSE_SF_EUlSE_SF_E_SC_EJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESM_SC_.exit: ; preds = %bb.b, %bb.c
  tail call void @_ZN6icu_7813UnicodeStringC1EOS0_(ptr noundef nonnull align 8 dereferenceable(257) %i.c, ptr noundef nonnull align 8 dereferenceable(257) %1) #18
  store i8 0, ptr %i.d, align 8, !tbaa !76
  br label %bb.p

bb.d:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %0, align 8, !tbaa !207, !nonnull !25, !align !146 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 256 ; 3 uses
  %i.j = load i8, ptr %i.i, align 8, !tbaa !76
  %.not.i.i.i.i.i.i10 = icmp eq i8 %i.j, -1
  br i1 %.not.i.i.i.i.i.i10, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZZNSt7variantIJN6icu_7813UnicodeStringENS5_8message210data_model10ExpressionENS8_6MarkupEEE4swapERSB_ENUlOT_T0_E_clIRS6_St17integral_constantImLm0EEEEDaSE_SF_EUlSE_SF_E_SC_EJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESM_SC_.exit, label %bb.e, !prof !48

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !29
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(257) %i.h) #18, !inline_history !204
  store i8 -1, ptr %i.i, align 8, !tbaa !76
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZZNSt7variantIJN6icu_7813UnicodeStringENS5_8message210data_model10ExpressionENS8_6MarkupEEE4swapERSB_ENUlOT_T0_E_clIRS6_St17integral_constantImLm0EEEEDaSE_SF_EUlSE_SF_E_SC_EJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESM_SC_.exit

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZZNSt7variantIJN6icu_7813UnicodeStringENS5_8message210data_model10ExpressionENS8_6MarkupEEE4swapERSB_ENUlOT_T0_E_clIRS6_St17integral_constantImLm0EEEEDaSE_SF_EUlSE_SF_E_SC_EJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESM_SC_.exit: ; preds = %bb.d, %bb.e
  tail call void @_ZN6icu_788message210data_model10ExpressionC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(257) %i.h, ptr noundef nonnull align 8 dereferenceable(257) %1)
  store i8 1, ptr %i.i, align 8, !tbaa !76
  br label %bb.p

bb.f:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %0, align 8, !tbaa !207, !nonnull !25, !align !146 ; 9 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 256 ; 3 uses
  %i.o = load i8, ptr %i.n, align 8, !tbaa !76
  %.not.i.i.i.i.i.i11 = icmp eq i8 %i.o, -1
  br i1 %.not.i.i.i.i.i.i11, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN6icu_7813UnicodeStringENS2_8message210data_model10ExpressionENS5_6MarkupEEE8_M_resetEv.exit.i.i.i.i.i, label %bb.g, !prof !48

bb.g:                                             ; preds = %bb.f
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !29
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(257) %i.m) #18, !inline_history !205
  store i8 -1, ptr %i.n, align 8, !tbaa !76
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN6icu_7813UnicodeStringENS2_8message210data_model10ExpressionENS5_6MarkupEEE8_M_resetEv.exit.i.i.i.i.i

_ZNSt8__detail9__variant16_Variant_storageILb0EJN6icu_7813UnicodeStringENS2_8message210data_model10ExpressionENS5_6MarkupEEE8_M_resetEv.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model6MarkupE, i64 16), ptr %i.m, align 8, !tbaa !29
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !63
  store i32 %i.t, ptr %i.r, align 8, !tbaa !63
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  invoke void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.u, ptr noundef nonnull align 8 dereferenceable(64) %i.v)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJN6icu_7813UnicodeStringENS2_8message210data_model10ExpressionENS5_6MarkupEEE8_M_resetEv.exit.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 80 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 80
  invoke void @_ZN6icu_788message210data_model9OptionMapC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(28) %i.w, ptr noundef nonnull align 8 dereferenceable(28) %i.x)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 112
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 112
  invoke void @_ZN6icu_788message210data_model9OptionMapC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(28) %i.y, ptr noundef nonnull align 8 dereferenceable(28) %i.z)
          to label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZZNSt7variantIJN6icu_7813UnicodeStringENS5_8message210data_model10ExpressionENS8_6MarkupEEE4swapERSB_ENUlOT_T0_E_clIRS6_St17integral_constantImLm0EEEEDaSE_SF_EUlSE_SF_E_SC_EJEEESt16integer_sequenceImJLm2EEEE14__visit_invokeESM_SC_.exit unwind label %bb.l

bb.j:                                             ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJN6icu_7813UnicodeStringENS2_8message210data_model10ExpressionENS5_6MarkupEEE8_M_resetEv.exit.i.i.i.i.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.k:                                             ; preds = %bb.h
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_788message210data_model9OptionMapD1Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %i.w) #18
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ac, %bb.l ], [ %i.ab, %bb.k ]
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.u) #18
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j
  %.pn.pn.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %.pn.i.i.i.i.i.i.i.i, %bb.m ], [ %i.aa, %bb.j ]
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(257) %i.m) #18
  resume { ptr, i32 } %.pn.pn.i.i.i.i.i.i.i.i

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZZNSt7variantIJN6icu_7813UnicodeStringENS5_8message210data_model10ExpressionENS8_6MarkupEEE4swapERSB_ENUlOT_T0_E_clIRS6_St17integral_constantImLm0EEEEDaSE_SF_EUlSE_SF_E_SC_EJEEESt16integer_sequenceImJLm2EEEE14__visit_invokeESM_SC_.exit: ; preds = %bb.i
  store i8 2, ptr %i.n, align 8, !tbaa !76
  br label %bb.p

bb.o:                                             ; preds = %bb.a
  unreachable

bb.p:                                             ; preds = %bb.a, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZZNSt7variantIJN6icu_7813UnicodeStringENS5_8message210data_model10ExpressionENS8_6MarkupEEE4swapERSB_ENUlOT_T0_E_clIRS6_St17integral_constantImLm0EEEEDaSE_SF_EUlSE_SF_E_SC_EJEEESt16integer_sequenceImJLm2EEEE14__visit_invokeESM_SC_.exit, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZZNSt7variantIJN6icu_7813UnicodeStringENS5_8message210data_model10ExpressionENS8_6MarkupEEE4swapERSB_ENUlOT_T0_E_clIRS6_St17integral_constantImLm0EEEEDaSE_SF_EUlSE_SF_E_SC_EJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESM_SC_.exit, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZZNSt7variantIJN6icu_7813UnicodeStringENS5_8message210data_model10ExpressionENS8_6MarkupEEE4swapERSB_ENUlOT_T0_E_clIRS6_St17integral_constantImLm0EEEEDaSE_SF_EUlSE_SF_E_SC_EJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESM_SC_.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZNSt7variantIJN6icu_7813UnicodeStringENS0_8message210data_model10ExpressionENS3_6MarkupEEE4swapERS6_ENUlOT_T0_E_clIRS4_St17integral_constantImLm1EEEEDaS9_SA_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(256) %1) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.icu_78::message2::data_model::Expression", align 8 ; 7 uses
  %3 = alloca %class.anon.121, align 8            ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !79     ; 15 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 256 ; 4 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !76
  %i.d = icmp eq i8 %i.c, 1
  br i1 %i.d, label %_ZSt3getILm1EJN6icu_7813UnicodeStringENS0_8message210data_model10ExpressionENS3_6MarkupEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSA_.exit, label %bb.h

_ZSt3getILm1EJN6icu_7813UnicodeStringENS0_8message210data_model10ExpressionENS3_6MarkupEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSA_.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 112 ; 3 uses
  %i.h = load i8, ptr %i.g, align 8, !tbaa !74, !range !24, !noundef !25
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 3 uses
  %i.k = load i8, ptr %i.j, align 8, !tbaa !74, !range !24, !noundef !25
  %i.l = trunc nuw i8 %i.k to i1                  ; 2 uses
  br i1 %i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %_ZSt3getILm1EJN6icu_7813UnicodeStringENS0_8message210data_model10ExpressionENS3_6MarkupEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSA_.exit
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @_ZN6icu_7813UnicodeString4swapERS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.m, ptr noundef nonnull align 8 dereferenceable(64) %i.n) #18
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 88 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.q = load i8, ptr %i.o, align 8, !tbaa !43, !range !24, !noundef !25
  %i.r = load i8, ptr %i.p, align 8, !tbaa !43, !range !24, !noundef !25
  store i8 %i.r, ptr %i.o, align 8, !tbaa !43
  store i8 %i.q, ptr %i.p, align 8, !tbaa !43
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 96 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !54
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !54
  store ptr %i.v, ptr %i.s, align 8, !tbaa !54
  store ptr %i.u, ptr %i.t, align 8, !tbaa !54
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 104 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.y = load i32, ptr %i.w, align 8, !tbaa !42
  %i.z = load i32, ptr %i.x, align 8, !tbaa !42
  store i32 %i.z, ptr %i.w, align 8, !tbaa !42
  store i32 %i.y, ptr %i.x, align 8, !tbaa !42
  br label %_ZSt4swapIN6icu_788message210data_model8OperatorEENSt9enable_ifIXaa23is_move_constructible_vIT_E14is_swappable_vIS5_EEvE4typeERSt8optionalIS5_ESA_.exit.i

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN6icu_788message210data_model8OperatorC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(112) %i.f, ptr noundef nonnull align 8 dereferenceable(112) %i.e) #18
  store i8 1, ptr %i.j, align 8, !tbaa !74
  store i8 0, ptr %i.g, align 8, !tbaa !74
  tail call void @_ZN6icu_788message210data_model8OperatorD1Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(112) %i.e) #18
  br label %_ZSt4swapIN6icu_788message210data_model8OperatorEENSt9enable_ifIXaa23is_move_constructible_vIT_E14is_swappable_vIS5_EEvE4typeERSt8optionalIS5_ESA_.exit.i

bb.e:                                             ; preds = %_ZSt3getILm1EJN6icu_7813UnicodeStringENS0_8message210data_model10ExpressionENS3_6MarkupEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSA_.exit
  br i1 %i.l, label %bb.f, label %_ZSt4swapIN6icu_788message210data_model8OperatorEENSt9enable_ifIXaa23is_move_constructible_vIT_E14is_swappable_vIS5_EEvE4typeERSt8optionalIS5_ESA_.exit.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN6icu_788message210data_model8OperatorC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(112) %i.e, ptr noundef nonnull align 8 dereferenceable(112) %i.f) #18
  store i8 1, ptr %i.g, align 8, !tbaa !74
  store i8 0, ptr %i.j, align 8, !tbaa !74
  tail call void @_ZN6icu_788message210data_model8OperatorD1Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(112) %i.f) #18
  br label %_ZSt4swapIN6icu_788message210data_model8OperatorEENSt9enable_ifIXaa23is_move_constructible_vIT_E14is_swappable_vIS5_EEvE4typeERSt8optionalIS5_ESA_.exit.i

_ZSt4swapIN6icu_788message210data_model8OperatorEENSt9enable_ifIXaa23is_move_constructible_vIT_E14is_swappable_vIS5_EEvE4typeERSt8optionalIS5_ESA_.exit.i: ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 128
  invoke void @_ZNSt8optionalISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEEE4swapERS7_(ptr noundef nonnull align 8 dereferenceable(96) %i.aa, ptr noundef nonnull align 8 dereferenceable(96) %i.ab)
          to label %_ZN6icu_788message210data_model4swapERNS1_10ExpressionES3_.exit unwind label %bb.g

bb.g:                                             ; preds = %_ZSt4swapIN6icu_788message210data_model8OperatorEENSt9enable_ifIXaa23is_move_constructible_vIT_E14is_swappable_vIS5_EEvE4typeERSt8optionalIS5_ESA_.exit.i
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  tail call void @__clang_call_terminate(ptr %i.ad) #19
  unreachable

_ZN6icu_788message210data_model4swapERNS1_10ExpressionES3_.exit: ; preds = %_ZSt4swapIN6icu_788message210data_model8OperatorEENSt9enable_ifIXaa23is_move_constructible_vIT_E14is_swappable_vIS5_EEvE4typeERSt8optionalIS5_ESA_.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 232 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 2 uses
  %i.ag = load i8, ptr %i.ae, align 8, !tbaa !43, !range !24, !noundef !25
  %i.ah = load i8, ptr %i.af, align 8, !tbaa !43, !range !24, !noundef !25
  store i8 %i.ah, ptr %i.ae, align 8, !tbaa !43
  store i8 %i.ag, ptr %i.af, align 8, !tbaa !43
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 240 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 2 uses
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !54
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !54
  store ptr %i.al, ptr %i.ai, align 8, !tbaa !54
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !54
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 248 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  %i.ao = load i32, ptr %i.am, align 8, !tbaa !42
  %i.ap = load i32, ptr %i.an, align 8, !tbaa !42
  store i32 %i.ap, ptr %i.am, align 8, !tbaa !42
  store i32 %i.ao, ptr %i.an, align 8, !tbaa !42
  br label %bb.n

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @_ZN6icu_788message210data_model10ExpressionC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(256) %2, ptr noundef nonnull align 8 dereferenceable(256) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !147, !nonnull !25, !align !146
  store ptr %i.ar, ptr %3, align 8, !tbaa !80
  invoke void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZZNSt7variantIJN6icu_7813UnicodeStringENS4_8message210data_model10ExpressionENS7_6MarkupEEE4swapERSA_ENUlOT_T0_E_clIRS8_St17integral_constantImLm1EEEEDaSD_SE_EUlSD_SE_E_JSB_EEDcOSE_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(257) %i.a)
          to label %_ZNSt8__detail9__variant15__raw_idx_visitIZZNSt7variantIJN6icu_7813UnicodeStringENS3_8message210data_model10ExpressionENS6_6MarkupEEE4swapERS9_ENUlOT_T0_E_clIRS7_St17integral_constantImLm1EEEEDaSC_SD_EUlSC_SD_E_JSA_EEEvSC_DpOT0_.exit unwind label %bb.k

_ZNSt8__detail9__variant15__raw_idx_visitIZZNSt7variantIJN6icu_7813UnicodeStringENS3_8message210data_model10ExpressionENS6_6MarkupEEE4swapERS9_ENUlOT_T0_E_clIRS7_St17integral_constantImLm1EEEEDaSC_SD_EUlSC_SD_E_JSA_EEEvSC_DpOT0_.exit: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.as = load i8, ptr %i.b, align 8, !tbaa !76
  %.not.i.i = icmp eq i8 %i.as, -1
  br i1 %.not.i.i, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN6icu_7813UnicodeStringENS2_8message210data_model10ExpressionENS5_6MarkupEEE8_M_resetEv.exit.i, label %bb.i, !prof !48

bb.i:                                             ; preds = %_ZNSt8__detail9__variant15__raw_idx_visitIZZNSt7variantIJN6icu_7813UnicodeStringENS3_8message210data_model10ExpressionENS6_6MarkupEEE4swapERS9_ENUlOT_T0_E_clIRS7_St17integral_constantImLm1EEEEDaSC_SD_EUlSC_SD_E_JSA_EEEvSC_DpOT0_.exit
  %i.at = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(257) %i.a) #18, !inline_history !208
  store i8 -1, ptr %i.b, align 8, !tbaa !76
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN6icu_7813UnicodeStringENS2_8message210data_model10ExpressionENS5_6MarkupEEE8_M_resetEv.exit.i

_ZNSt8__detail9__variant16_Variant_storageILb0EJN6icu_7813UnicodeStringENS2_8message210data_model10ExpressionENS5_6MarkupEEE8_M_resetEv.exit.i: ; preds = %bb.i, %_ZNSt8__detail9__variant15__raw_idx_visitIZZNSt7variantIJN6icu_7813UnicodeStringENS3_8message210data_model10ExpressionENS6_6MarkupEEE4swapERS9_ENUlOT_T0_E_clIRS7_St17integral_constantImLm1EEEEDaSC_SD_EUlSC_SD_E_JSA_EEEvSC_DpOT0_.exit
  invoke void @_ZN6icu_788message210data_model10ExpressionC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(257) %i.a, ptr noundef nonnull align 8 dereferenceable(256) %2)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJN6icu_7813UnicodeStringENS2_8message210data_model10ExpressionENS5_6MarkupEEE8_M_resetEv.exit.i
  store i8 1, ptr %i.b, align 8, !tbaa !76
  call void @_ZN6icu_788message210data_model10ExpressionD1Ev(ptr noundef nonnull align 8 dead_on_return(256) dereferenceable(256) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %bb.n

bb.k:                                             ; preds = %bb.h
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.m

bb.l:                                             ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJN6icu_7813UnicodeStringENS2_8message210data_model10ExpressionENS5_6MarkupEEE8_M_resetEv.exit.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn = phi { ptr, i32 } [ %i.aw, %bb.l ], [ %i.av, %bb.k ]
  call void @_ZN6icu_788message210data_model10ExpressionD1Ev(ptr noundef nonnull align 8 dead_on_return(256) dereferenceable(256) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  resume { ptr, i32 } %.pn

bb.n:                                             ; preds = %bb.j, %_ZN6icu_788message210data_model4swapERNS1_10ExpressionES3_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZZNSt7variantIJN6icu_7813UnicodeStringENS4_8message210data_model10ExpressionENS7_6MarkupEEE4swapERSA_ENUlOT_T0_E_clIRS8_St17integral_constantImLm1EEEEDaSD_SE_EUlSD_SE_E_JSB_EEDcOSE_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(257) %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.b = load i8, ptr %i.a, align 8, !tbaa !76
  switch i8 %i.b, label %bb.o [
    i8 0, label %bb.b
    i8 1, label %bb.d
    i8 2, label %bb.f
    i8 -1, label %bb.p
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !213, !nonnull !25, !align !146 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 256 ; 3 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !76
  %.not.i.i.i.i.i.i = icmp eq i8 %i.e, -1
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZZNSt7variantIJN6icu_7813UnicodeStringENS5_8message210data_model10ExpressionENS8_6MarkupEEE4swapERSB_ENUlOT_T0_E_clIRS9_St17integral_constantImLm1EEEEDaSE_SF_EUlSE_SF_E_SC_EJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESM_SC_.exit, label %bb.c, !prof !48

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !29
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(257) %i.c) #18, !inline_history !209
  store i8 -1, ptr %i.d, align 8, !tbaa !76
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZZNSt7variantIJN6icu_7813UnicodeStringENS5_8message210data_model10ExpressionENS8_6MarkupEEE4swapERSB_ENUlOT_T0_E_clIRS9_St17integral_constantImLm1EEEEDaSE_SF_EUlSE_SF_E_SC_EJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESM_SC_.exit

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZZNSt7variantIJN6icu_7813UnicodeStringENS5_8message210data_model10ExpressionENS8_6MarkupEEE4swapERSB_ENUlOT_T0_E_clIRS9_St17integral_constantImLm1EEEEDaSE_SF_EUlSE_SF_E_SC_EJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESM_SC_.exit: ; preds = %bb.b, %bb.c
  tail call void @_ZN6icu_7813UnicodeStringC1EOS0_(ptr noundef nonnull align 8 dereferenceable(257) %i.c, ptr noundef nonnull align 8 dereferenceable(257) %1) #18
  store i8 0, ptr %i.d, align 8, !tbaa !76
  br label %bb.p

bb.d:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %0, align 8, !tbaa !213, !nonnull !25, !align !146 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 256 ; 3 uses
  %i.j = load i8, ptr %i.i, align 8, !tbaa !76
  %.not.i.i.i.i.i.i10 = icmp eq i8 %i.j, -1
  br i1 %.not.i.i.i.i.i.i10, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZZNSt7variantIJN6icu_7813UnicodeStringENS5_8message210data_model10ExpressionENS8_6MarkupEEE4swapERSB_ENUlOT_T0_E_clIRS9_St17integral_constantImLm1EEEEDaSE_SF_EUlSE_SF_E_SC_EJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESM_SC_.exit, label %bb.e, !prof !48

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !29
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(257) %i.h) #18, !inline_history !210
  store i8 -1, ptr %i.i, align 8, !tbaa !76
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZZNSt7variantIJN6icu_7813UnicodeStringENS5_8message210data_model10ExpressionENS8_6MarkupEEE4swapERSB_ENUlOT_T0_E_clIRS9_St17integral_constantImLm1EEEEDaSE_SF_EUlSE_SF_E_SC_EJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESM_SC_.exit

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZZNSt7variantIJN6icu_7813UnicodeStringENS5_8message210data_model10ExpressionENS8_6MarkupEEE4swapERSB_ENUlOT_T0_E_clIRS9_St17integral_constantImLm1EEEEDaSE_SF_EUlSE_SF_E_SC_EJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESM_SC_.exit: ; preds = %bb.d, %bb.e
  tail call void @_ZN6icu_788message210data_model10ExpressionC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(257) %i.h, ptr noundef nonnull align 8 dereferenceable(257) %1)
  store i8 1, ptr %i.i, align 8, !tbaa !76
  br label %bb.p

bb.f:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %0, align 8, !tbaa !213, !nonnull !25, !align !146 ; 9 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 256 ; 3 uses
  %i.o = load i8, ptr %i.n, align 8, !tbaa !76
  %.not.i.i.i.i.i.i11 = icmp eq i8 %i.o, -1
  br i1 %.not.i.i.i.i.i.i11, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN6icu_7813UnicodeStringENS2_8message210data_model10ExpressionENS5_6MarkupEEE8_M_resetEv.exit.i.i.i.i.i, label %bb.g, !prof !48

bb.g:                                             ; preds = %bb.f
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !29
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(257) %i.m) #18, !inline_history !211
  store i8 -1, ptr %i.n, align 8, !tbaa !76
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN6icu_7813UnicodeStringENS2_8message210data_model10ExpressionENS5_6MarkupEEE8_M_resetEv.exit.i.i.i.i.i

_ZNSt8__detail9__variant16_Variant_storageILb0EJN6icu_7813UnicodeStringENS2_8message210data_model10ExpressionENS5_6MarkupEEE8_M_resetEv.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model6MarkupE, i64 16), ptr %i.m, align 8, !tbaa !29
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !63
  store i32 %i.t, ptr %i.r, align 8, !tbaa !63
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  invoke void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.u, ptr noundef nonnull align 8 dereferenceable(64) %i.v)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJN6icu_7813UnicodeStringENS2_8message210data_model10ExpressionENS5_6MarkupEEE8_M_resetEv.exit.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 80 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 80
  invoke void @_ZN6icu_788message210data_model9OptionMapC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(28) %i.w, ptr noundef nonnull align 8 dereferenceable(28) %i.x)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 112
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 112
  invoke void @_ZN6icu_788message210data_model9OptionMapC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(28) %i.y, ptr noundef nonnull align 8 dereferenceable(28) %i.z)
          to label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZZNSt7variantIJN6icu_7813UnicodeStringENS5_8message210data_model10ExpressionENS8_6MarkupEEE4swapERSB_ENUlOT_T0_E_clIRS9_St17integral_constantImLm1EEEEDaSE_SF_EUlSE_SF_E_SC_EJEEESt16integer_sequenceImJLm2EEEE14__visit_invokeESM_SC_.exit unwind label %bb.l

bb.j:                                             ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJN6icu_7813UnicodeStringENS2_8message210data_model10ExpressionENS5_6MarkupEEE8_M_resetEv.exit.i.i.i.i.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.k:                                             ; preds = %bb.h
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_788message210data_model9OptionMapD1Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %i.w) #18
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ac, %bb.l ], [ %i.ab, %bb.k ]
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.u) #18
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j
  %.pn.pn.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %.pn.i.i.i.i.i.i.i.i, %bb.m ], [ %i.aa, %bb.j ]
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(257) %i.m) #18
  resume { ptr, i32 } %.pn.pn.i.i.i.i.i.i.i.i

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZZNSt7variantIJN6icu_7813UnicodeStringENS5_8message210data_model10ExpressionENS8_6MarkupEEE4swapERSB_ENUlOT_T0_E_clIRS9_St17integral_constantImLm1EEEEDaSE_SF_EUlSE_SF_E_SC_EJEEESt16integer_sequenceImJLm2EEEE14__visit_invokeESM_SC_.exit: ; preds = %bb.i
  store i8 2, ptr %i.n, align 8, !tbaa !76
  br label %bb.p

bb.o:                                             ; preds = %bb.a
  unreachable

bb.p:                                             ; preds = %bb.a, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZZNSt7variantIJN6icu_7813UnicodeStringENS5_8message210data_model10ExpressionENS8_6MarkupEEE4swapERSB_ENUlOT_T0_E_clIRS9_St17integral_constantImLm1EEEEDaSE_SF_EUlSE_SF_E_SC_EJEEESt16integer_sequenceImJLm2EEEE14__visit_invokeESM_SC_.exit, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZZNSt7variantIJN6icu_7813UnicodeStringENS5_8message210data_model10ExpressionENS8_6MarkupEEE4swapERSB_ENUlOT_T0_E_clIRS9_St17integral_constantImLm1EEEEDaSE_SF_EUlSE_SF_E_SC_EJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESM_SC_.exit, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZZNSt7variantIJN6icu_7813UnicodeStringENS5_8message210data_model10ExpressionENS8_6MarkupEEE4swapERSB_ENUlOT_T0_E_clIRS9_St17integral_constantImLm1EEEEDaSE_SF_EUlSE_SF_E_SC_EJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESM_SC_.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZNSt7variantIJN6icu_7813UnicodeStringENS0_8message210data_model10ExpressionENS3_6MarkupEEE4swapERS6_ENUlOT_T0_E_clIRS5_St17integral_constantImLm2EEEEDaS9_SA_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(144) %1) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.icu_78::message2::data_model::Markup", align 8 ; 11 uses
  %3 = alloca %class.anon.124, align 8            ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !79     ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 256 ; 4 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !76
  %i.d = icmp eq i8 %i.c, 2
  br i1 %i.d, label %_ZSt3getILm2EJN6icu_7813UnicodeStringENS0_8message210data_model10ExpressionENS3_6MarkupEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSA_.exit, label %bb.b

_ZSt3getILm2EJN6icu_7813UnicodeStringENS0_8message210data_model10ExpressionENS3_6MarkupEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSA_.exit: ; preds = %bb.a
  tail call void @_ZSt4swapIN6icu_788message210data_model6MarkupEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SG_(ptr noundef nonnull align 8 dereferenceable(144) %i.a, ptr noundef nonnull align 8 dereferenceable(144) %1)
  br label %bb.t

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model6MarkupE, i64 16), ptr %2, align 8, !tbaa !29
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !63
  store i32 %i.g, ptr %i.e, align 8, !tbaa !63
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  invoke void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.h, ptr noundef nonnull align 8 dereferenceable(64) %i.i)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 80
  invoke void @_ZN6icu_788message210data_model9OptionMapC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(28) %i.j, ptr noundef nonnull align 8 dereferenceable(28) %i.k)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 112
  invoke void @_ZN6icu_788message210data_model9OptionMapC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(28) %i.l, ptr noundef nonnull align 8 dereferenceable(28) %i.m)
          to label %_ZN6icu_788message210data_model6MarkupC2ERKS2_.exit unwind label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.f:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_788message210data_model9OptionMapD1Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %i.j) #18
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn.i = phi { ptr, i32 } [ %i.p, %bb.g ], [ %i.o, %bb.f ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.h) #18
  br label %bb.i

common.resume:                                    ; preds = %.body, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn.i, %bb.i ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.i:                                             ; preds = %bb.h, %bb.e
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %bb.h ], [ %i.n, %bb.e ]
  call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(144) %2) #18
  br label %common.resume

_ZN6icu_788message210data_model6MarkupC2ERKS2_.exit: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !147, !nonnull !25, !align !146
  store ptr %i.r, ptr %3, align 8, !tbaa !80
  invoke void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZZNSt7variantIJN6icu_7813UnicodeStringENS4_8message210data_model10ExpressionENS7_6MarkupEEE4swapERSA_ENUlOT_T0_E_clIRS9_St17integral_constantImLm2EEEEDaSD_SE_EUlSD_SE_E_JSB_EEDcOSE_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(257) %i.a)
          to label %_ZNSt8__detail9__variant15__raw_idx_visitIZZNSt7variantIJN6icu_7813UnicodeStringENS3_8message210data_model10ExpressionENS6_6MarkupEEE4swapERS9_ENUlOT_T0_E_clIRS8_St17integral_constantImLm2EEEEDaSC_SD_EUlSC_SD_E_JSA_EEEvSC_DpOT0_.exit unwind label %bb.s

_ZNSt8__detail9__variant15__raw_idx_visitIZZNSt7variantIJN6icu_7813UnicodeStringENS3_8message210data_model10ExpressionENS6_6MarkupEEE4swapERS9_ENUlOT_T0_E_clIRS8_St17integral_constantImLm2EEEEDaSC_SD_EUlSC_SD_E_JSA_EEEvSC_DpOT0_.exit: ; preds = %_ZN6icu_788message210data_model6MarkupC2ERKS2_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.s = load i8, ptr %i.b, align 8, !tbaa !76
  %.not.i.i = icmp eq i8 %i.s, -1
  br i1 %.not.i.i, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN6icu_7813UnicodeStringENS2_8message210data_model10ExpressionENS5_6MarkupEEE8_M_resetEv.exit.i, label %bb.j, !prof !48

bb.j:                                             ; preds = %_ZNSt8__detail9__variant15__raw_idx_visitIZZNSt7variantIJN6icu_7813UnicodeStringENS3_8message210data_model10ExpressionENS6_6MarkupEEE4swapERS9_ENUlOT_T0_E_clIRS8_St17integral_constantImLm2EEEEDaSC_SD_EUlSC_SD_E_JSA_EEEvSC_DpOT0_.exit
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(257) %i.a) #18, !inline_history !214
  store i8 -1, ptr %i.b, align 8, !tbaa !76
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN6icu_7813UnicodeStringENS2_8message210data_model10ExpressionENS5_6MarkupEEE8_M_resetEv.exit.i

_ZNSt8__detail9__variant16_Variant_storageILb0EJN6icu_7813UnicodeStringENS2_8message210data_model10ExpressionENS5_6MarkupEEE8_M_resetEv.exit.i: ; preds = %bb.j, %_ZNSt8__detail9__variant15__raw_idx_visitIZZNSt7variantIJN6icu_7813UnicodeStringENS3_8message210data_model10ExpressionENS6_6MarkupEEE4swapERS9_ENUlOT_T0_E_clIRS8_St17integral_constantImLm2EEEEDaSC_SD_EUlSC_SD_E_JSA_EEEvSC_DpOT0_.exit
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model6MarkupE, i64 16), ptr %i.a, align 8, !tbaa !29
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.w = load i32, ptr %i.e, align 8, !tbaa !63
  store i32 %i.w, ptr %i.v, align 8, !tbaa !63
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  invoke void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.x, ptr noundef nonnull align 8 dereferenceable(64) %i.h)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJN6icu_7813UnicodeStringENS2_8message210data_model10ExpressionENS5_6MarkupEEE8_M_resetEv.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 2 uses
  invoke void @_ZN6icu_788message210data_model9OptionMapC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(28) %i.y, ptr noundef nonnull align 8 dereferenceable(28) %i.j)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  invoke void @_ZN6icu_788message210data_model9OptionMapC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(28) %i.z, ptr noundef nonnull align 8 dereferenceable(28) %i.l)
          to label %bb.r unwind label %bb.o

bb.m:                                             ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJN6icu_7813UnicodeStringENS2_8message210data_model10ExpressionENS5_6MarkupEEE8_M_resetEv.exit.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.n:                                             ; preds = %bb.k
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %bb.l
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_788message210data_model9OptionMapD1Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %i.y) #18
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.ac, %bb.o ], [ %i.ab, %bb.n ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.x) #18
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.m
  %.pn.pn.i.i.i.i = phi { ptr, i32 } [ %.pn.i.i.i.i, %bb.p ], [ %i.aa, %bb.m ]
  call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(257) %i.a) #18
  br label %.body

bb.r:                                             ; preds = %bb.l
  store i8 2, ptr %i.b, align 8, !tbaa !76
  call void @_ZN6icu_788message210data_model6MarkupD1Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %bb.t

bb.s:                                             ; preds = %_ZN6icu_788message210data_model6MarkupC2ERKS2_.exit
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %.body

.body:                                            ; preds = %bb.q, %bb.s
  %.pn = phi { ptr, i32 } [ %i.ad, %bb.s ], [ %.pn.pn.i.i.i.i, %bb.q ]
  call void @_ZN6icu_788message210data_model6MarkupD1Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %common.resume

bb.t:                                             ; preds = %bb.r, %_ZSt3getILm2EJN6icu_7813UnicodeStringENS0_8message210data_model10ExpressionENS3_6MarkupEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSA_.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt4swapIN6icu_788message210data_model6MarkupEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SG_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(144) %1) local_unnamed_addr #12 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.icu_78::message2::data_model::OptionMap", align 8 ; 7 uses
  %3 = alloca %"class.icu_78::message2::data_model::OptionMap", align 8 ; 7 uses
  %4 = alloca %"class.icu_78::message2::data_model::OptionMap", align 8 ; 7 uses
  %5 = alloca %"class.icu_78::message2::data_model::OptionMap", align 8 ; 7 uses
  %6 = alloca %"class.icu_78::message2::data_model::Markup", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model6MarkupE, i64 16), ptr %6, align 8, !tbaa !29
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !63
  store i32 %i.c, ptr %i.a, align 8, !tbaa !63
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  invoke void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %i.e)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  invoke void @_ZN6icu_788message210data_model9OptionMapC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(28) %i.f, ptr noundef nonnull align 8 dereferenceable(28) %i.g)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 112 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  invoke void @_ZN6icu_788message210data_model9OptionMapC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(28) %i.h, ptr noundef nonnull align 8 dereferenceable(28) %i.i)
          to label %_ZN6icu_788message210data_model6MarkupC2ERKS2_.exit unwind label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.e:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_788message210data_model9OptionMapD1Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %i.f) #18
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i = phi { ptr, i32 } [ %i.l, %bb.f ], [ %i.k, %bb.e ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.d) #18
  br label %bb.h

common.resume:                                    ; preds = %bb.k, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn.i, %bb.h ], [ %i.bq, %bb.k ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.g, %bb.d
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %bb.g ], [ %i.j, %bb.d ]
  call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(144) %6) #18
  br label %common.resume

_ZN6icu_788message210data_model6MarkupC2ERKS2_.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !63
  store i32 %i.n, ptr %i.b, align 8, !tbaa !63
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.p = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %i.o)
          to label %.noexc unwind label %bb.k     ; 0 uses

.noexc:                                           ; preds = %_ZN6icu_788message210data_model6MarkupC2ERKS2_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 80
  invoke void @_ZN6icu_788message210data_model9OptionMapC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(28) %4, ptr noundef nonnull align 8 dereferenceable(28) %i.q)
          to label %.noexc5 unwind label %bb.k

.noexc5:                                          ; preds = %.noexc
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.t = load i8, ptr %i.r, align 8, !tbaa !43, !range !24, !noundef !25
  %i.u = load i8, ptr %i.s, align 8, !tbaa !43, !range !24, !noundef !25
  store i8 %i.u, ptr %i.r, align 8, !tbaa !43
  store i8 %i.t, ptr %i.s, align 8, !tbaa !43
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !54
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !54
  store ptr %i.y, ptr %i.v, align 8, !tbaa !54
  store ptr %i.x, ptr %i.w, align 8, !tbaa !54
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.ab = load i32, ptr %i.z, align 8, !tbaa !42
  %i.ac = load i32, ptr %i.aa, align 8, !tbaa !42
  store i32 %i.ac, ptr %i.z, align 8, !tbaa !42
  store i32 %i.ab, ptr %i.aa, align 8, !tbaa !42
  call void @_ZN6icu_788message210data_model9OptionMapD1Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %4) #18
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 112
  invoke void @_ZN6icu_788message210data_model9OptionMapC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(28) %5, ptr noundef nonnull align 8 dereferenceable(28) %i.ad)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %.noexc5
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ag = load i8, ptr %i.ae, align 8, !tbaa !43, !range !24, !noundef !25
  %i.ah = load i8, ptr %i.af, align 8, !tbaa !43, !range !24, !noundef !25
  store i8 %i.ah, ptr %i.ae, align 8, !tbaa !43
  store i8 %i.ag, ptr %i.af, align 8, !tbaa !43
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !54
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !54
  store ptr %i.al, ptr %i.ai, align 8, !tbaa !54
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !54
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.ao = load i32, ptr %i.am, align 8, !tbaa !42
  %i.ap = load i32, ptr %i.an, align 8, !tbaa !42
  store i32 %i.ap, ptr %i.am, align 8, !tbaa !42
  store i32 %i.ao, ptr %i.an, align 8, !tbaa !42
  call void @_ZN6icu_788message210data_model9OptionMapD1Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.aq = load i32, ptr %i.a, align 8, !tbaa !63
  store i32 %i.aq, ptr %i.m, align 8, !tbaa !63
  %i.ar = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.o, ptr noundef nonnull align 8 dereferenceable(64) %i.d)
          to label %.noexc7 unwind label %bb.k    ; 0 uses

.noexc7:                                          ; preds = %bb.i
  invoke void @_ZN6icu_788message210data_model9OptionMapC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(28) %2, ptr noundef nonnull align 8 dereferenceable(28) %i.f)
          to label %.noexc8 unwind label %bb.k

.noexc8:                                          ; preds = %.noexc7
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.au = load i8, ptr %i.as, align 8, !tbaa !43, !range !24, !noundef !25
  %i.av = load i8, ptr %i.at, align 8, !tbaa !43, !range !24, !noundef !25
  store i8 %i.av, ptr %i.as, align 8, !tbaa !43
  store i8 %i.au, ptr %i.at, align 8, !tbaa !43
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ay = load ptr, ptr %i.aw, align 8, !tbaa !54
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !54
  store ptr %i.az, ptr %i.aw, align 8, !tbaa !54
  store ptr %i.ay, ptr %i.ax, align 8, !tbaa !54
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.bc = load i32, ptr %i.ba, align 8, !tbaa !42
  %i.bd = load i32, ptr %i.bb, align 8, !tbaa !42
  store i32 %i.bd, ptr %i.ba, align 8, !tbaa !42
  store i32 %i.bc, ptr %i.bb, align 8, !tbaa !42
  call void @_ZN6icu_788message210data_model9OptionMapD1Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %2) #18
  invoke void @_ZN6icu_788message210data_model9OptionMapC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(28) %3, ptr noundef nonnull align 8 dereferenceable(28) %i.h)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %.noexc8
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bg = load i8, ptr %i.be, align 8, !tbaa !43, !range !24, !noundef !25
  %i.bh = load i8, ptr %i.bf, align 8, !tbaa !43, !range !24, !noundef !25
  store i8 %i.bh, ptr %i.be, align 8, !tbaa !43
  store i8 %i.bg, ptr %i.bf, align 8, !tbaa !43
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bk = load ptr, ptr %i.bi, align 8, !tbaa !54
  %i.bl = load ptr, ptr %i.bj, align 8, !tbaa !54
  store ptr %i.bl, ptr %i.bi, align 8, !tbaa !54
  store ptr %i.bk, ptr %i.bj, align 8, !tbaa !54
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.bo = load i32, ptr %i.bm, align 8, !tbaa !42
  %i.bp = load i32, ptr %i.bn, align 8, !tbaa !42
  store i32 %i.bp, ptr %i.bm, align 8, !tbaa !42
  store i32 %i.bo, ptr %i.bn, align 8, !tbaa !42
  call void @_ZN6icu_788message210data_model9OptionMapD1Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @_ZN6icu_788message210data_model6MarkupD1Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  ret void

bb.k:                                             ; preds = %.noexc8, %.noexc7, %bb.i, %.noexc5, %.noexc, %_ZN6icu_788message210data_model6MarkupC2ERKS2_.exit
  %i.bq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_788message210data_model6MarkupD1Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZZNSt7variantIJN6icu_7813UnicodeStringENS4_8message210data_model10ExpressionENS7_6MarkupEEE4swapERSA_ENUlOT_T0_E_clIRS9_St17integral_constantImLm2EEEEDaSD_SE_EUlSD_SE_E_JSB_EEDcOSE_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(257) %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.b = load i8, ptr %i.a, align 8, !tbaa !76
  switch i8 %i.b, label %bb.o [
    i8 0, label %bb.b
    i8 1, label %bb.d
    i8 2, label %bb.f
    i8 -1, label %bb.p
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !219, !nonnull !25, !align !146 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 256 ; 3 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !76
  %.not.i.i.i.i.i.i = icmp eq i8 %i.e, -1
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZZNSt7variantIJN6icu_7813UnicodeStringENS5_8message210data_model10ExpressionENS8_6MarkupEEE4swapERSB_ENUlOT_T0_E_clIRSA_St17integral_constantImLm2EEEEDaSE_SF_EUlSE_SF_E_SC_EJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESM_SC_.exit, label %bb.c, !prof !48

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !29
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(257) %i.c) #18, !inline_history !215
  store i8 -1, ptr %i.d, align 8, !tbaa !76
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZZNSt7variantIJN6icu_7813UnicodeStringENS5_8message210data_model10ExpressionENS8_6MarkupEEE4swapERSB_ENUlOT_T0_E_clIRSA_St17integral_constantImLm2EEEEDaSE_SF_EUlSE_SF_E_SC_EJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESM_SC_.exit

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZZNSt7variantIJN6icu_7813UnicodeStringENS5_8message210data_model10ExpressionENS8_6MarkupEEE4swapERSB_ENUlOT_T0_E_clIRSA_St17integral_constantImLm2EEEEDaSE_SF_EUlSE_SF_E_SC_EJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESM_SC_.exit: ; preds = %bb.b, %bb.c
  tail call void @_ZN6icu_7813UnicodeStringC1EOS0_(ptr noundef nonnull align 8 dereferenceable(257) %i.c, ptr noundef nonnull align 8 dereferenceable(257) %1) #18
  store i8 0, ptr %i.d, align 8, !tbaa !76
  br label %bb.p

bb.d:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %0, align 8, !tbaa !219, !nonnull !25, !align !146 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 256 ; 3 uses
  %i.j = load i8, ptr %i.i, align 8, !tbaa !76
  %.not.i.i.i.i.i.i10 = icmp eq i8 %i.j, -1
  br i1 %.not.i.i.i.i.i.i10, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZZNSt7variantIJN6icu_7813UnicodeStringENS5_8message210data_model10ExpressionENS8_6MarkupEEE4swapERSB_ENUlOT_T0_E_clIRSA_St17integral_constantImLm2EEEEDaSE_SF_EUlSE_SF_E_SC_EJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESM_SC_.exit, label %bb.e, !prof !48

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !29
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(257) %i.h) #18, !inline_history !216
  store i8 -1, ptr %i.i, align 8, !tbaa !76
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZZNSt7variantIJN6icu_7813UnicodeStringENS5_8message210data_model10ExpressionENS8_6MarkupEEE4swapERSB_ENUlOT_T0_E_clIRSA_St17integral_constantImLm2EEEEDaSE_SF_EUlSE_SF_E_SC_EJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESM_SC_.exit

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZZNSt7variantIJN6icu_7813UnicodeStringENS5_8message210data_model10ExpressionENS8_6MarkupEEE4swapERSB_ENUlOT_T0_E_clIRSA_St17integral_constantImLm2EEEEDaSE_SF_EUlSE_SF_E_SC_EJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESM_SC_.exit: ; preds = %bb.d, %bb.e
  tail call void @_ZN6icu_788message210data_model10ExpressionC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(257) %i.h, ptr noundef nonnull align 8 dereferenceable(257) %1)
  store i8 1, ptr %i.i, align 8, !tbaa !76
  br label %bb.p

bb.f:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %0, align 8, !tbaa !219, !nonnull !25, !align !146 ; 9 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 256 ; 3 uses
  %i.o = load i8, ptr %i.n, align 8, !tbaa !76
  %.not.i.i.i.i.i.i11 = icmp eq i8 %i.o, -1
  br i1 %.not.i.i.i.i.i.i11, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN6icu_7813UnicodeStringENS2_8message210data_model10ExpressionENS5_6MarkupEEE8_M_resetEv.exit.i.i.i.i.i, label %bb.g, !prof !48

bb.g:                                             ; preds = %bb.f
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !29
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(257) %i.m) #18, !inline_history !217
  store i8 -1, ptr %i.n, align 8, !tbaa !76
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN6icu_7813UnicodeStringENS2_8message210data_model10ExpressionENS5_6MarkupEEE8_M_resetEv.exit.i.i.i.i.i

_ZNSt8__detail9__variant16_Variant_storageILb0EJN6icu_7813UnicodeStringENS2_8message210data_model10ExpressionENS5_6MarkupEEE8_M_resetEv.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message210data_model6MarkupE, i64 16), ptr %i.m, align 8, !tbaa !29
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !63
  store i32 %i.t, ptr %i.r, align 8, !tbaa !63
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  invoke void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.u, ptr noundef nonnull align 8 dereferenceable(64) %i.v)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJN6icu_7813UnicodeStringENS2_8message210data_model10ExpressionENS5_6MarkupEEE8_M_resetEv.exit.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 80 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 80
  invoke void @_ZN6icu_788message210data_model9OptionMapC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(28) %i.w, ptr noundef nonnull align 8 dereferenceable(28) %i.x)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 112
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 112
  invoke void @_ZN6icu_788message210data_model9OptionMapC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(28) %i.y, ptr noundef nonnull align 8 dereferenceable(28) %i.z)
          to label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZZNSt7variantIJN6icu_7813UnicodeStringENS5_8message210data_model10ExpressionENS8_6MarkupEEE4swapERSB_ENUlOT_T0_E_clIRSA_St17integral_constantImLm2EEEEDaSE_SF_EUlSE_SF_E_SC_EJEEESt16integer_sequenceImJLm2EEEE14__visit_invokeESM_SC_.exit unwind label %bb.l

bb.j:                                             ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJN6icu_7813UnicodeStringENS2_8message210data_model10ExpressionENS5_6MarkupEEE8_M_resetEv.exit.i.i.i.i.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.k:                                             ; preds = %bb.h
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_788message210data_model9OptionMapD1Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %i.w) #18
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ac, %bb.l ], [ %i.ab, %bb.k ]
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.u) #18
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j
  %.pn.pn.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %.pn.i.i.i.i.i.i.i.i, %bb.m ], [ %i.aa, %bb.j ]
  tail call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(257) %i.m) #18
  resume { ptr, i32 } %.pn.pn.i.i.i.i.i.i.i.i

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZZNSt7variantIJN6icu_7813UnicodeStringENS5_8message210data_model10ExpressionENS8_6MarkupEEE4swapERSB_ENUlOT_T0_E_clIRSA_St17integral_constantImLm2EEEEDaSE_SF_EUlSE_SF_E_SC_EJEEESt16integer_sequenceImJLm2EEEE14__visit_invokeESM_SC_.exit: ; preds = %bb.i
  store i8 2, ptr %i.n, align 8, !tbaa !76
  br label %bb.p

bb.o:                                             ; preds = %bb.a
  unreachable

bb.p:                                             ; preds = %bb.a, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZZNSt7variantIJN6icu_7813UnicodeStringENS5_8message210data_model10ExpressionENS8_6MarkupEEE4swapERSB_ENUlOT_T0_E_clIRSA_St17integral_constantImLm2EEEEDaSE_SF_EUlSE_SF_E_SC_EJEEESt16integer_sequenceImJLm2EEEE14__visit_invokeESM_SC_.exit, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZZNSt7variantIJN6icu_7813UnicodeStringENS5_8message210data_model10ExpressionENS8_6MarkupEEE4swapERSB_ENUlOT_T0_E_clIRSA_St17integral_constantImLm2EEEEDaSE_SF_EUlSE_SF_E_SC_EJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESM_SC_.exit, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZZNSt7variantIJN6icu_7813UnicodeStringENS5_8message210data_model10ExpressionENS8_6MarkupEEE4swapERSB_ENUlOT_T0_E_clIRSA_St17integral_constantImLm2EEEEDaSE_SF_EUlSE_SF_E_SC_EJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESM_SC_.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZNSt7variantIJN6icu_788message210data_model7MatcherENS2_7PatternEEE4swapERS5_ENUlOT_T0_E_clIRS3_St17integral_constantImLm0EEEEDaS8_S9_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(44) %1) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.icu_78::message2::data_model::Matcher", align 8 ; 7 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !140    ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 5 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !113
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %_ZSt3getILm0EJN6icu_788message210data_model7MatcherENS2_7PatternEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERS9_.exit, label %bb.f

_ZSt3getILm0EJN6icu_788message210data_model7MatcherENS2_7PatternEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERS9_.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !tbaa !106, !range !24, !noundef !25
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZSt3getILm0EJN6icu_788message210data_model7MatcherENS2_7PatternEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERS9_.exit
  store i8 1, ptr %i.h, align 8, !tbaa !106
  br label %_ZN6icu_788message210data_model4swapERNS1_7MatcherES3_.exit

bb.c:                                             ; preds = %_ZSt3getILm0EJN6icu_788message210data_model7MatcherENS2_7PatternEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERS9_.exit
  %i.i = load i8, ptr %i.h, align 8, !tbaa !106, !range !24, !noundef !25
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i8 1, ptr %i.e, align 8, !tbaa !106
  br label %_ZN6icu_788message210data_model4swapERNS1_7MatcherES3_.exit

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !107
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !107
  store ptr %i.n, ptr %i.k, align 8, !tbaa !107
  store ptr %i.m, ptr %i.l, align 8, !tbaa !107
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.q = load i32, ptr %i.o, align 8, !tbaa !42
  %i.r = load i32, ptr %i.p, align 8, !tbaa !42
  store i32 %i.r, ptr %i.o, align 8, !tbaa !42
  store i32 %i.q, ptr %i.p, align 8, !tbaa !42
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !108
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !108
  store ptr %i.v, ptr %i.s, align 8, !tbaa !108
  store ptr %i.u, ptr %i.t, align 8, !tbaa !108
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.y = load i32, ptr %i.w, align 8, !tbaa !42
  %i.z = load i32, ptr %i.x, align 8, !tbaa !42
  store i32 %i.z, ptr %i.w, align 8, !tbaa !42
  store i32 %i.y, ptr %i.x, align 8, !tbaa !42
  br label %_ZN6icu_788message210data_model4swapERNS1_7MatcherES3_.exit

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @_ZN6icu_788message210data_model7MatcherC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(44) %2, ptr noundef nonnull align 8 dereferenceable(44) %1)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !148, !nonnull !25, !align !146 ; 8 uses
  %i.ac = load i8, ptr %i.b, align 8, !tbaa !113
  switch i8 %i.ac, label %bb.k [
    i8 0, label %bb.g
    i8 1, label %bb.i
    i8 -1, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN6icu_788message210data_model7MatcherENS4_7PatternEEE8_M_resetEv.exit.i
  ]

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 48 ; 3 uses
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !113
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.ae, -1
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZZNSt7variantIJN6icu_788message210data_model7MatcherENS7_7PatternEEE4swapERSA_ENUlOT_T0_E_clIRS8_St17integral_constantImLm0EEEEDaSD_SE_EUlSD_SE_E_SB_EJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESL_SB_.exit.i.i, label %bb.h, !prof !48

bb.h:                                             ; preds = %bb.g
  %i.af = load ptr, ptr %i.ab, align 8, !tbaa !29
  %i.ag = load ptr, ptr %i.af, align 8
  call void %i.ag(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(49) %i.ab) #18, !inline_history !220
  store i8 -1, ptr %i.ad, align 8, !tbaa !113
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZZNSt7variantIJN6icu_788message210data_model7MatcherENS7_7PatternEEE4swapERSA_ENUlOT_T0_E_clIRS8_St17integral_constantImLm0EEEEDaSD_SE_EUlSD_SE_E_SB_EJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESL_SB_.exit.i.i

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZZNSt7variantIJN6icu_788message210data_model7MatcherENS7_7PatternEEE4swapERSA_ENUlOT_T0_E_clIRS8_St17integral_constantImLm0EEEEDaSD_SE_EUlSD_SE_E_SB_EJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESL_SB_.exit.i.i: ; preds = %bb.h, %bb.g
  invoke void @_ZN6icu_788message210data_model7MatcherC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(49) %i.ab, ptr noundef nonnull align 8 dereferenceable(49) %i.a)
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZZNSt7variantIJN6icu_788message210data_model7MatcherENS7_7PatternEEE4swapERSA_ENUlOT_T0_E_clIRS8_St17integral_constantImLm0EEEEDaSD_SE_EUlSD_SE_E_SB_EJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESL_SB_.exit.i.i
  store i8 0, ptr %i.ad, align 8, !tbaa !113
  br label %_ZNSt8__detail9__variant15__raw_idx_visitIZZNSt7variantIJN6icu_788message210data_model7MatcherENS5_7PatternEEE4swapERS8_ENUlOT_T0_E_clIRS6_St17integral_constantImLm0EEEEDaSB_SC_EUlSB_SC_E_JS9_EEEvSB_DpOT0_.exit

bb.i:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 48 ; 3 uses
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !113
  %.not.i.i.i.i.i.i8.i.i = icmp eq i8 %i.ai, -1
  br i1 %.not.i.i.i.i.i.i8.i.i, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZZNSt7variantIJN6icu_788message210data_model7MatcherENS7_7PatternEEE4swapERSA_ENUlOT_T0_E_clIRS8_St17integral_constantImLm0EEEEDaSD_SE_EUlSD_SE_E_SB_EJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESL_SB_.exit.i.i, label %bb.j, !prof !48

bb.j:                                             ; preds = %bb.i
  %i.aj = load ptr, ptr %i.ab, align 8, !tbaa !29
  %i.ak = load ptr, ptr %i.aj, align 8
  call void %i.ak(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(49) %i.ab) #18, !inline_history !221
  store i8 -1, ptr %i.ah, align 8, !tbaa !113
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZZNSt7variantIJN6icu_788message210data_model7MatcherENS7_7PatternEEE4swapERSA_ENUlOT_T0_E_clIRS8_St17integral_constantImLm0EEEEDaSD_SE_EUlSD_SE_E_SB_EJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESL_SB_.exit.i.i

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZZNSt7variantIJN6icu_788message210data_model7MatcherENS7_7PatternEEE4swapERSA_ENUlOT_T0_E_clIRS8_St17integral_constantImLm0EEEEDaSD_SE_EUlSD_SE_E_SB_EJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESL_SB_.exit.i.i: ; preds = %bb.j, %bb.i
  invoke void @_ZN6icu_788message210data_model7PatternC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(49) %i.ab, ptr noundef nonnull align 8 dereferenceable(49) %i.a)
          to label %.noexc6 unwind label %bb.n

.noexc6:                                          ; preds = %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZZNSt7variantIJN6icu_788message210data_model7MatcherENS7_7PatternEEE4swapERSA_ENUlOT_T0_E_clIRS8_St17integral_constantImLm0EEEEDaSD_SE_EUlSD_SE_E_SB_EJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESL_SB_.exit.i.i
  store i8 1, ptr %i.ah, align 8, !tbaa !113
  br label %_ZNSt8__detail9__variant15__raw_idx_visitIZZNSt7variantIJN6icu_788message210data_model7MatcherENS5_7PatternEEE4swapERS8_ENUlOT_T0_E_clIRS6_St17integral_constantImLm0EEEEDaSB_SC_EUlSB_SC_E_JS9_EEEvSB_DpOT0_.exit

bb.k:                                             ; preds = %bb.f
  unreachable

_ZNSt8__detail9__variant15__raw_idx_visitIZZNSt7variantIJN6icu_788message210data_model7MatcherENS5_7PatternEEE4swapERS8_ENUlOT_T0_E_clIRS6_St17integral_constantImLm0EEEEDaSB_SC_EUlSB_SC_E_JS9_EEEvSB_DpOT0_.exit: ; preds = %.noexc6, %.noexc
  %.pr = load i8, ptr %i.b, align 8, !tbaa !113
  %.not.i.i = icmp eq i8 %.pr, -1
  br i1 %.not.i.i, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN6icu_788message210data_model7MatcherENS4_7PatternEEE8_M_resetEv.exit.i, label %bb.l, !prof !144

bb.l:                                             ; preds = %_ZNSt8__detail9__variant15__raw_idx_visitIZZNSt7variantIJN6icu_788message210data_model7MatcherENS5_7PatternEEE4swapERS8_ENUlOT_T0_E_clIRS6_St17integral_constantImLm0EEEEDaSB_SC_EUlSB_SC_E_JS9_EEEvSB_DpOT0_.exit
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(49) %i.a) #18, !inline_history !222
  store i8 -1, ptr %i.b, align 8, !tbaa !113
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN6icu_788message210data_model7MatcherENS4_7PatternEEE8_M_resetEv.exit.i

_ZNSt8__detail9__variant16_Variant_storageILb0EJN6icu_788message210data_model7MatcherENS4_7PatternEEE8_M_resetEv.exit.i: ; preds = %bb.f, %bb.l, %_ZNSt8__detail9__variant15__raw_idx_visitIZZNSt7variantIJN6icu_788message210data_model7MatcherENS5_7PatternEEE4swapERS8_ENUlOT_T0_E_clIRS6_St17integral_constantImLm0EEEEDaSB_SC_EUlSB_SC_E_JS9_EEEvSB_DpOT0_.exit
  invoke void @_ZN6icu_788message210data_model7MatcherC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(49) %i.a, ptr noundef nonnull align 8 dereferenceable(44) %2)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJN6icu_788message210data_model7MatcherENS4_7PatternEEE8_M_resetEv.exit.i
  store i8 0, ptr %i.b, align 8, !tbaa !113
  call void @_ZN6icu_788message210data_model7MatcherD1Ev(ptr noundef nonnull align 8 dead_on_return(44) dereferenceable(44) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %_ZN6icu_788message210data_model4swapERNS1_7MatcherES3_.exit

bb.n:                                             ; preds = %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZZNSt7variantIJN6icu_788message210data_model7MatcherENS7_7PatternEEE4swapERSA_ENUlOT_T0_E_clIRS8_St17integral_constantImLm0EEEEDaSD_SE_EUlSD_SE_E_SB_EJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESL_SB_.exit.i.i, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZZNSt7variantIJN6icu_788message210data_model7MatcherENS7_7PatternEEE4swapERSA_ENUlOT_T0_E_clIRS8_St17integral_constantImLm0EEEEDaSD_SE_EUlSD_SE_E_SB_EJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESL_SB_.exit.i.i, %_ZNSt8__detail9__variant16_Variant_storageILb0EJN6icu_788message210data_model7MatcherENS4_7PatternEEE8_M_resetEv.exit.i
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_788message210data_model7MatcherD1Ev(ptr noundef nonnull align 8 dead_on_return(44) dereferenceable(44) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  resume { ptr, i32 } %i.an

_ZN6icu_788message210data_model4swapERNS1_7MatcherES3_.exit: ; preds = %bb.e, %bb.d, %bb.b, %bb.m
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt13__invoke_implIvZNSt7variantIJN6icu_788message210data_model7MatcherENS3_7PatternEEE4swapERS6_EUlOT_T0_E_JRS5_St17integral_constantImLm1EEEES8_St14__invoke_otherOSA_DpOT1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.icu_78::message2::data_model::Pattern", align 8 ; 7 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !140    ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 5 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !113
  %i.d = icmp eq i8 %i.c, 1
  br i1 %i.d, label %_ZSt3getILm1EJN6icu_788message210data_model7MatcherENS2_7PatternEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERS9_.exit.i, label %bb.b

_ZSt3getILm1EJN6icu_788message210data_model7MatcherENS2_7PatternEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERS9_.exit.i: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = load i8, ptr %i.e, align 8, !tbaa !43, !range !24, !noundef !25
  %i.h = load i8, ptr %i.f, align 8, !tbaa !43, !range !24, !noundef !25
  store i8 %i.h, ptr %i.e, align 8, !tbaa !43
  store i8 %i.g, ptr %i.f, align 8, !tbaa !43
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.k = load i32, ptr %i.i, align 4, !tbaa !42
  %i.l = load i32, ptr %i.j, align 4, !tbaa !42
  store i32 %i.l, ptr %i.i, align 4, !tbaa !42
  store i32 %i.k, ptr %i.j, align 4, !tbaa !42
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !87
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !87
  store ptr %i.p, ptr %i.m, align 8, !tbaa !87
  store ptr %i.o, ptr %i.n, align 8, !tbaa !87
  br label %_ZZNSt7variantIJN6icu_788message210data_model7MatcherENS2_7PatternEEE4swapERS5_ENUlOT_T0_E_clIRS4_St17integral_constantImLm1EEEEDaS8_S9_.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @_ZN6icu_788message210data_model7PatternC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !148, !nonnull !25, !align !146 ; 8 uses
  %i.s = load i8, ptr %i.b, align 8, !tbaa !113
  switch i8 %i.s, label %bb.g [
    i8 0, label %bb.c
    i8 1, label %bb.e
    i8 -1, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN6icu_788message210data_model7MatcherENS4_7PatternEEE8_M_resetEv.exit.i.i
  ]

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 48 ; 3 uses
  %i.u = load i8, ptr %i.t, align 8, !tbaa !113
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.u, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZZNSt7variantIJN6icu_788message210data_model7MatcherENS7_7PatternEEE4swapERSA_ENUlOT_T0_E_clIRS9_St17integral_constantImLm1EEEEDaSD_SE_EUlSD_SE_E_SB_EJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESL_SB_.exit.i.i.i, label %bb.d, !prof !48

bb.d:                                             ; preds = %bb.c
  %i.v = load ptr, ptr %i.r, align 8, !tbaa !29
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(49) %i.r) #18, !inline_history !223
  store i8 -1, ptr %i.t, align 8, !tbaa !113
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZZNSt7variantIJN6icu_788message210data_model7MatcherENS7_7PatternEEE4swapERSA_ENUlOT_T0_E_clIRS9_St17integral_constantImLm1EEEEDaSD_SE_EUlSD_SE_E_SB_EJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESL_SB_.exit.i.i.i

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZZNSt7variantIJN6icu_788message210data_model7MatcherENS7_7PatternEEE4swapERSA_ENUlOT_T0_E_clIRS9_St17integral_constantImLm1EEEEDaSD_SE_EUlSD_SE_E_SB_EJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESL_SB_.exit.i.i.i: ; preds = %bb.d, %bb.c
  invoke void @_ZN6icu_788message210data_model7MatcherC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(49) %i.r, ptr noundef nonnull align 8 dereferenceable(49) %i.a)
          to label %.noexc.i unwind label %bb.j

.noexc.i:                                         ; preds = %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZZNSt7variantIJN6icu_788message210data_model7MatcherENS7_7PatternEEE4swapERSA_ENUlOT_T0_E_clIRS9_St17integral_constantImLm1EEEEDaSD_SE_EUlSD_SE_E_SB_EJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESL_SB_.exit.i.i.i
  store i8 0, ptr %i.t, align 8, !tbaa !113
  br label %_ZNSt8__detail9__variant15__raw_idx_visitIZZNSt7variantIJN6icu_788message210data_model7MatcherENS5_7PatternEEE4swapERS8_ENUlOT_T0_E_clIRS7_St17integral_constantImLm1EEEEDaSB_SC_EUlSB_SC_E_JS9_EEEvSB_DpOT0_.exit.i

bb.e:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 48 ; 3 uses
  %i.y = load i8, ptr %i.x, align 8, !tbaa !113
  %.not.i.i.i.i.i.i8.i.i.i = icmp eq i8 %i.y, -1
  br i1 %.not.i.i.i.i.i.i8.i.i.i, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZZNSt7variantIJN6icu_788message210data_model7MatcherENS7_7PatternEEE4swapERSA_ENUlOT_T0_E_clIRS9_St17integral_constantImLm1EEEEDaSD_SE_EUlSD_SE_E_SB_EJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESL_SB_.exit.i.i.i, label %bb.f, !prof !48

bb.f:                                             ; preds = %bb.e
  %i.z = load ptr, ptr %i.r, align 8, !tbaa !29
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(49) %i.r) #18, !inline_history !224
  store i8 -1, ptr %i.x, align 8, !tbaa !113
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZZNSt7variantIJN6icu_788message210data_model7MatcherENS7_7PatternEEE4swapERSA_ENUlOT_T0_E_clIRS9_St17integral_constantImLm1EEEEDaSD_SE_EUlSD_SE_E_SB_EJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESL_SB_.exit.i.i.i

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZZNSt7variantIJN6icu_788message210data_model7MatcherENS7_7PatternEEE4swapERSA_ENUlOT_T0_E_clIRS9_St17integral_constantImLm1EEEEDaSD_SE_EUlSD_SE_E_SB_EJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESL_SB_.exit.i.i.i: ; preds = %bb.f, %bb.e
  invoke void @_ZN6icu_788message210data_model7PatternC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(49) %i.r, ptr noundef nonnull align 8 dereferenceable(49) %i.a)
          to label %.noexc6.i unwind label %bb.j

.noexc6.i:                                        ; preds = %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZZNSt7variantIJN6icu_788message210data_model7MatcherENS7_7PatternEEE4swapERSA_ENUlOT_T0_E_clIRS9_St17integral_constantImLm1EEEEDaSD_SE_EUlSD_SE_E_SB_EJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESL_SB_.exit.i.i.i
  store i8 1, ptr %i.x, align 8, !tbaa !113
  br label %_ZNSt8__detail9__variant15__raw_idx_visitIZZNSt7variantIJN6icu_788message210data_model7MatcherENS5_7PatternEEE4swapERS8_ENUlOT_T0_E_clIRS7_St17integral_constantImLm1EEEEDaSB_SC_EUlSB_SC_E_JS9_EEEvSB_DpOT0_.exit.i

bb.g:                                             ; preds = %bb.b
  unreachable

_ZNSt8__detail9__variant15__raw_idx_visitIZZNSt7variantIJN6icu_788message210data_model7MatcherENS5_7PatternEEE4swapERS8_ENUlOT_T0_E_clIRS7_St17integral_constantImLm1EEEEDaSB_SC_EUlSB_SC_E_JS9_EEEvSB_DpOT0_.exit.i: ; preds = %.noexc6.i, %.noexc.i
  %.pr.i = load i8, ptr %i.b, align 8, !tbaa !113
  %.not.i.i.i = icmp eq i8 %.pr.i, -1
  br i1 %.not.i.i.i, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN6icu_788message210data_model7MatcherENS4_7PatternEEE8_M_resetEv.exit.i.i, label %bb.h, !prof !144

bb.h:                                             ; preds = %_ZNSt8__detail9__variant15__raw_idx_visitIZZNSt7variantIJN6icu_788message210data_model7MatcherENS5_7PatternEEE4swapERS8_ENUlOT_T0_E_clIRS7_St17integral_constantImLm1EEEEDaSB_SC_EUlSB_SC_E_JS9_EEEvSB_DpOT0_.exit.i
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(49) %i.a) #18, !inline_history !225
  store i8 -1, ptr %i.b, align 8, !tbaa !113
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN6icu_788message210data_model7MatcherENS4_7PatternEEE8_M_resetEv.exit.i.i

_ZNSt8__detail9__variant16_Variant_storageILb0EJN6icu_788message210data_model7MatcherENS4_7PatternEEE8_M_resetEv.exit.i.i: ; preds = %bb.h, %_ZNSt8__detail9__variant15__raw_idx_visitIZZNSt7variantIJN6icu_788message210data_model7MatcherENS5_7PatternEEE4swapERS8_ENUlOT_T0_E_clIRS7_St17integral_constantImLm1EEEEDaSB_SC_EUlSB_SC_E_JS9_EEEvSB_DpOT0_.exit.i, %bb.b
  invoke void @_ZN6icu_788message210data_model7PatternC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(49) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJN6icu_788message210data_model7MatcherENS4_7PatternEEE8_M_resetEv.exit.i.i
  store i8 1, ptr %i.b, align 8, !tbaa !113
  call void @_ZN6icu_788message210data_model7PatternD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %_ZZNSt7variantIJN6icu_788message210data_model7MatcherENS2_7PatternEEE4swapERS5_ENUlOT_T0_E_clIRS4_St17integral_constantImLm1EEEEDaS8_S9_.exit

bb.j:                                             ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJN6icu_788message210data_model7MatcherENS4_7PatternEEE8_M_resetEv.exit.i.i, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZZNSt7variantIJN6icu_788message210data_model7MatcherENS7_7PatternEEE4swapERSA_ENUlOT_T0_E_clIRS9_St17integral_constantImLm1EEEEDaSD_SE_EUlSD_SE_E_SB_EJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESL_SB_.exit.i.i.i, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZZNSt7variantIJN6icu_788message210data_model7MatcherENS7_7PatternEEE4swapERSA_ENUlOT_T0_E_clIRS9_St17integral_constantImLm1EEEEDaSD_SE_EUlSD_SE_E_SB_EJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESL_SB_.exit.i.i.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_788message210data_model7PatternD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  resume { ptr, i32 } %i.ad

_ZZNSt7variantIJN6icu_788message210data_model7MatcherENS2_7PatternEEE4swapERS5_ENUlOT_T0_E_clIRS4_St17integral_constantImLm1EEEEDaS8_S9_.exit: ; preds = %_ZSt3getILm1EJN6icu_788message210data_model7MatcherENS2_7PatternEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERS9_.exit.i, %bb.i
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6icu_787UMemorydaEPv(ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #15

; Function Attrs: nounwind
declare noundef ptr @_ZN6icu_787UMemorynaEm(i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #17

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold noreturn }
attributes #14 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { nounwind }
attributes #19 = { noreturn nounwind }
attributes #20 = { noreturn }
attributes #21 = { builtin nounwind }

!llvm.module.flags = !{!5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{null, null, null}
!1 = distinct !{null, null, null}
!2 = distinct !{!2, !27}
!3 = distinct !{!3, !27}
!4 = distinct !{null, null, null}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"any pointer", !9, i64 0}
!14 = !{!"p1 _ZTSN6icu_788message210data_model3KeyE", !13, i64 0}
!15 = !{!"_ZTSN6icu_7816LocalPointerBaseINS_8message210data_model3KeyEEE", !14, i64 0}
!16 = !{!15, !14, i64 0}
!17 = !{!"_ZTSN6icu_787UObjectE"}
!18 = !{!"_ZTSN6icu_7810LocalArrayINS_8message210data_model3KeyEEE", !15, i64 0}
!19 = !{!"_ZTSN6icu_788message210data_model12SelectorKeysE", !17, i64 0, !18, i64 8, !10, i64 16}
!20 = !{!19, !10, i64 16}
!21 = !{!"bool", !9, i64 0}
!22 = !{!"_ZTSSt22_Optional_payload_baseIN6icu_788message210data_model7LiteralEE", !9, i64 0, !21, i64 80}
!23 = !{!22, !21, i64 80}
!24 = !{i8 0, i8 2}
!25 = !{}
!26 = !{!9, !9, i64 0}
!27 = !{!"llvm.loop.mustprogress"}
!28 = !{!"vtable pointer", !8, i64 0}
!29 = !{!28, !28, i64 0}
!30 = !{!"_ZTS10UErrorCode", !9, i64 0}
!31 = !{!30, !30, i64 0}
!32 = !{!"p1 _ZTSN6icu_787UVectorE", !13, i64 0}
!33 = !{!"_ZTSN6icu_788message210data_model12SelectorKeys7BuilderE", !32, i64 8}
!34 = !{!33, !32, i64 8}
!35 = !{!"_ZTSN6icu_7811ReplaceableE", !17, i64 0}
!36 = !{!"_ZTSN6icu_7813UnicodeStringE", !35, i64 0, !9, i64 8}
!37 = !{!"_ZTSN6icu_788message210data_model7LiteralE", !17, i64 0, !21, i64 8, !36, i64 16}
!38 = !{!37, !21, i64 8}
!39 = !{!"p1 _ZTS8UElement", !13, i64 0}
!40 = !{!"_ZTSN6icu_787UVectorE", !17, i64 0, !10, i64 8, !10, i64 12, !39, i64 16, !13, i64 24, !13, i64 32}
!41 = !{!40, !10, i64 8}
!42 = !{!10, !10, i64 0}
!43 = !{!21, !21, i64 0}
!44 = !{!"_ZTSSt22_Optional_payload_baseISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEEE", !9, i64 0, !21, i64 88}
!45 = !{!44, !21, i64 88}
!46 = !{!"_ZTSNSt8__detail9__variant16_Variant_storageILb0EJN6icu_7813UnicodeStringENS2_8message210data_model7LiteralEEEE", !9, i64 0, !9, i64 80}
!47 = !{!46, !9, i64 80}
!48 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!49 = !{!"p1 _ZTSN6icu_788message210data_model6OptionE", !13, i64 0}
!50 = !{!"_ZTSN6icu_7816LocalPointerBaseINS_8message210data_model6OptionEEE", !49, i64 0}
!51 = !{!"_ZTSN6icu_7810LocalArrayINS_8message210data_model6OptionEEE", !50, i64 0}
!52 = !{!"_ZTSN6icu_788message210data_model9OptionMapE", !17, i64 0, !21, i64 8, !51, i64 16, !10, i64 24}
!53 = !{!52, !21, i64 8}
!54 = !{!50, !49, i64 0}
!55 = !{!52, !10, i64 24}
!56 = !{!"_ZTSN6icu_788message210data_model9OptionMap7BuilderE", !17, i64 0, !32, i64 8, !21, i64 16}
!57 = !{!56, !32, i64 8}
!58 = !{!56, !21, i64 16}
!59 = !{!"_ZTSN6icu_788message210data_model11UMarkupTypeE", !9, i64 0}
!60 = !{!"_ZTSN6icu_788message210data_model6Markup7BuilderE", !36, i64 8, !56, i64 72, !56, i64 96, !59, i64 120}
!61 = !{!60, !59, i64 120}
!62 = !{!"_ZTSN6icu_788message210data_model6MarkupE", !17, i64 0, !59, i64 8, !36, i64 16, !52, i64 80, !52, i64 112}
!63 = !{!62, !59, i64 8}
!64 = !{!"_ZTSSt17_Optional_payloadISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEELb1ELb0ELb0EE", !44, i64 0}
!65 = !{!"_ZTSSt17_Optional_payloadISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEELb0ELb0ELb0EE", !64, i64 0}
!66 = !{!"_ZTSSt14_Optional_baseISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEELb0ELb0EE", !65, i64 0}
!67 = !{!"_ZTSSt8optionalISt7variantIJN6icu_7813UnicodeStringENS1_8message210data_model7LiteralEEEE", !66, i64 0}
!68 = !{!"_ZTSN6icu_788message210data_model7OperandE", !17, i64 0, !67, i64 8}
!69 = !{!"_ZTSN6icu_788message210data_model8OperatorE", !17, i64 0, !36, i64 8, !52, i64 72}
!70 = !{!"_ZTSN6icu_788message210data_model10Expression7BuilderE", !21, i64 8, !21, i64 9, !68, i64 16, !69, i64 120, !56, i64 224}
!71 = !{!70, !21, i64 8}
!72 = !{!70, !21, i64 9}
!73 = !{!"_ZTSSt22_Optional_payload_baseIN6icu_788message210data_model8OperatorEE", !9, i64 0, !21, i64 104}
!74 = !{!73, !21, i64 104}
!75 = !{!"_ZTSNSt8__detail9__variant16_Variant_storageILb0EJN6icu_7813UnicodeStringENS2_8message210data_model10ExpressionENS5_6MarkupEEEE", !9, i64 0, !9, i64 256}
!76 = !{!75, !9, i64 256}
!77 = !{!"p1 _ZTSSt7variantIJN6icu_7813UnicodeStringENS0_8message210data_model10ExpressionENS3_6MarkupEEE", !13, i64 0}
!78 = !{!"_ZTSZNSt7variantIJN6icu_7813UnicodeStringENS0_8message210data_model10ExpressionENS3_6MarkupEEE4swapERS6_EUlOT_T0_E_", !77, i64 0, !77, i64 8}
!79 = !{!78, !77, i64 0}
!80 = !{!77, !77, i64 0}
!81 = !{!"p1 _ZTSN6icu_788message210data_model11PatternPartE", !13, i64 0}
!82 = !{!"_ZTSN6icu_7816LocalPointerBaseINS_8message210data_model11PatternPartEEE", !81, i64 0}
!83 = !{!"_ZTSN6icu_7810LocalArrayINS_8message210data_model11PatternPartEEE", !82, i64 0}
!84 = !{!"_ZTSN6icu_788message210data_model7PatternE", !17, i64 0, !21, i64 8, !10, i64 12, !83, i64 16}
!85 = !{!84, !21, i64 8}
!86 = !{!84, !10, i64 12}
!87 = !{!82, !81, i64 0}
!88 = !{!"_ZTSN6icu_788message210data_model7Pattern7BuilderE", !32, i64 8}
!89 = !{!88, !32, i64 8}
!90 = !{!"_ZTSSt17_Optional_payloadIN6icu_788message210data_model8OperatorELb1ELb0ELb0EE", !73, i64 0}
!91 = !{!"_ZTSSt17_Optional_payloadIN6icu_788message210data_model8OperatorELb0ELb0ELb0EE", !90, i64 0}
!92 = !{!"_ZTSSt14_Optional_baseIN6icu_788message210data_model8OperatorELb0ELb0EE", !91, i64 0}
!93 = !{!"_ZTSSt8optionalIN6icu_788message210data_model8OperatorEE", !92, i64 0}
!94 = !{!"_ZTSN6icu_788message210data_model10ExpressionE", !17, i64 0, !93, i64 8, !68, i64 120, !52, i64 224}
!95 = !{!"p1 _ZTSN6icu_788message210data_model8OperatorE", !13, i64 0}
!96 = !{!"_ZTSN6icu_788message210data_model7BindingE", !17, i64 0, !36, i64 8, !94, i64 72, !21, i64 328, !95, i64 336}
!97 = !{!96, !21, i64 328}
!98 = !{!96, !95, i64 336}
!99 = !{!"p1 _ZTSN6icu_7813UnicodeStringE", !13, i64 0}
!100 = !{!"_ZTSN6icu_7816LocalPointerBaseINS_13UnicodeStringEEE", !99, i64 0}
!101 = !{!"_ZTSN6icu_7810LocalArrayINS_13UnicodeStringEEE", !100, i64 0}
!102 = !{!"p1 _ZTSN6icu_788message210data_model7VariantE", !13, i64 0}
!103 = !{!"_ZTSN6icu_7816LocalPointerBaseINS_8message210data_model7VariantEEE", !102, i64 0}
!104 = !{!"_ZTSN6icu_7810LocalArrayINS_8message210data_model7VariantEEE", !103, i64 0}
!105 = !{!"_ZTSN6icu_788message210data_model7MatcherE", !17, i64 0, !21, i64 8, !101, i64 16, !10, i64 24, !104, i64 32, !10, i64 40}
!106 = !{!105, !21, i64 8}
!107 = !{!100, !99, i64 0}
!108 = !{!103, !102, i64 0}
!109 = !{!105, !10, i64 24}
!110 = !{!105, !10, i64 40}
!111 = !{!"llvm.loop.unroll.disable"}
!112 = !{!"_ZTSNSt8__detail9__variant16_Variant_storageILb0EJN6icu_788message210data_model7MatcherENS4_7PatternEEEE", !9, i64 0, !9, i64 48}
!113 = !{!112, !9, i64 48}
!114 = !{!"p1 _ZTSN6icu_788message210data_model7BindingE", !13, i64 0}
!115 = !{!"_ZTSN6icu_7816LocalPointerBaseINS_8message210data_model7BindingEEE", !114, i64 0}
!116 = !{!115, !114, i64 0}
!117 = !{!"_ZTSN6icu_788message210data_model11MFDataModel7BuilderE", !21, i64 8, !21, i64 9, !84, i64 16, !32, i64 40, !32, i64 48, !32, i64 56}
!118 = !{!117, !21, i64 8}
!119 = !{!117, !21, i64 9}
!120 = !{!117, !32, i64 56}
!121 = !{!117, !32, i64 40}
!122 = !{!117, !32, i64 48}
!123 = !{!"_ZTSNSt8__detail9__variant15_Copy_ctor_baseILb0EJN6icu_788message210data_model7MatcherENS4_7PatternEEEE", !112, i64 0}
!124 = !{!"_ZTSNSt8__detail9__variant15_Move_ctor_baseILb0EJN6icu_788message210data_model7MatcherENS4_7PatternEEEE", !123, i64 0}
!125 = !{!"_ZTSNSt8__detail9__variant17_Copy_assign_baseILb0EJN6icu_788message210data_model7MatcherENS4_7PatternEEEE", !124, i64 0}
!126 = !{!"_ZTSNSt8__detail9__variant17_Move_assign_baseILb0EJN6icu_788message210data_model7MatcherENS4_7PatternEEEE", !125, i64 0}
!127 = !{!"_ZTSNSt8__detail9__variant13_Variant_baseIJN6icu_788message210data_model7MatcherENS4_7PatternEEEE", !126, i64 0}
!128 = !{!"_ZTSSt7variantIJN6icu_788message210data_model7MatcherENS2_7PatternEEE", !127, i64 0}
!129 = !{!"_ZTSN6icu_7810LocalArrayINS_8message210data_model7BindingEEE", !115, i64 0}
!130 = !{!"_ZTSN6icu_788message210data_model11MFDataModelE", !84, i64 8, !21, i64 32, !128, i64 40, !129, i64 96, !10, i64 104}
!131 = !{!130, !21, i64 32}
!132 = !{!130, !10, i64 104}
!133 = !{!"branch_weights", i32 2000, i32 2001, i32 1}
!134 = !{!"_ZTSSt9exception"}
!135 = !{!"p1 omnipotent char", !13, i64 0}
!136 = !{!"_ZTSSt18bad_variant_access", !134, i64 0, !135, i64 8}
!137 = !{!136, !135, i64 8}
!138 = !{!"p1 _ZTSSt7variantIJN6icu_788message210data_model7MatcherENS2_7PatternEEE", !13, i64 0}
!139 = !{!"_ZTSZNSt7variantIJN6icu_788message210data_model7MatcherENS2_7PatternEEE4swapERS5_EUlOT_T0_E_", !138, i64 0, !138, i64 8}
!140 = !{!139, !138, i64 0}
!141 = !{!"p1 _ZTSSt7variantIJN6icu_7813UnicodeStringENS0_8message210data_model7LiteralEEE", !13, i64 0}
!142 = !{!"_ZTSZNSt7variantIJN6icu_7813UnicodeStringENS0_8message210data_model7LiteralEEE4swapERS5_EUlOT_T0_E_", !141, i64 0, !141, i64 8}
!143 = !{!142, !141, i64 0}
!144 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!145 = !{!142, !141, i64 8}
!146 = !{i64 8}
!147 = !{!78, !77, i64 8}
!148 = !{!139, !138, i64 8}
!149 = distinct !{!149, !27}
!150 = distinct !{!150, !27}
!151 = distinct !{!151, !27}
!152 = distinct !{null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null}
!153 = distinct !{null, null, null, null, null, null, null}
!154 = !{!"branch_weights", i32 2000, i32 2002}
!155 = distinct !{!155, !27}
!156 = distinct !{!156, !27}
!157 = distinct !{null, null, null, null}
!158 = !{!32, !32, i64 0}
!159 = distinct !{!159, !27}
!160 = distinct !{!160, i1 true, !"_ZN6icu_788message210data_model9OptionMap7Builder5buildER10UErrorCode"}
!161 = distinct !{!161, !160, !"_ZN6icu_788message210data_model9OptionMap7Builder5buildER10UErrorCode: argument 0"}
!162 = !{!161}
!163 = distinct !{!163, i1 true, !"_ZN6icu_788message210data_model9OptionMap7Builder10attributesER10UErrorCode"}
!164 = distinct !{!164, !163, !"_ZN6icu_788message210data_model9OptionMap7Builder10attributesER10UErrorCode: argument 0"}
!165 = !{!164}
!166 = distinct !{!166, i1 true, !"_ZN6icu_788message210data_model9OptionMap7Builder5buildER10UErrorCode"}
!167 = distinct !{!167, !166, !"_ZN6icu_788message210data_model9OptionMap7Builder5buildER10UErrorCode: argument 0"}
!168 = distinct !{!168, i1 true, !"_ZN6icu_788message210data_model9OptionMap7Builder5buildER10UErrorCode"}
!169 = distinct !{!169, !168, !"_ZN6icu_788message210data_model9OptionMap7Builder5buildER10UErrorCode: argument 0"}
!170 = !{!167}
!171 = !{!169}
!172 = distinct !{!172, i1 true, !"_ZN6icu_788message210data_model9OptionMap7Builder10attributesER10UErrorCode"}
!173 = distinct !{!173, !172, !"_ZN6icu_788message210data_model9OptionMap7Builder10attributesER10UErrorCode: argument 0"}
!174 = !{!173}
!175 = distinct !{!175, i1 true, !"_ZN6icu_788message210data_model9OptionMap7Builder5buildER10UErrorCode"}
!176 = distinct !{!176, !175, !"_ZN6icu_788message210data_model9OptionMap7Builder5buildER10UErrorCode: argument 0"}
!177 = !{!176}
!178 = distinct !{!178, !27}
!179 = distinct !{!179, !27}
!180 = distinct !{!180, !111}
!181 = distinct !{!181, !27}
!182 = distinct !{!182, !111}
!183 = distinct !{!183, !27}
!184 = distinct !{null, null, null, null}
!185 = distinct !{null, null, null, null}
!186 = distinct !{null, null, null, null, null}
!187 = distinct !{!187, !27}
!188 = distinct !{!188, !111}
!189 = distinct !{!189, !27}
!190 = distinct !{null, null, null, null, null}
!191 = distinct !{!191, !27}
!192 = !{!138, !138, i64 0}
!193 = distinct !{null}
!194 = distinct !{null, null, null, null, null}
!195 = !{!141, !141, i64 0}
!196 = distinct !{null, null, null, null, null, null, null, null, null}
!197 = distinct !{null, null, null, null, null, null, null, null, null}
!198 = distinct !{null, null, null}
!199 = distinct !{null, null, null, null, null, null, null, null, null}
!200 = distinct !{null, null, null, null, null, null, null, null, null}
!201 = distinct !{null, null, null}
!202 = distinct !{null, null, null, null}
!203 = distinct !{null, null, null, null, null, null, null}
!204 = distinct !{null, null, null, null, null, null, null}
!205 = distinct !{null, null, null, null, null, null, null}
!206 = !{!"_ZTSZZNSt7variantIJN6icu_7813UnicodeStringENS0_8message210data_model10ExpressionENS3_6MarkupEEE4swapERS6_ENUlOT_T0_E_clIRS1_St17integral_constantImLm0EEEEDaS9_SA_EUlS9_SA_E_", !77, i64 0}
!207 = !{!206, !77, i64 0}
!208 = distinct !{null, null, null}
!209 = distinct !{null, null, null, null, null, null, null}
!210 = distinct !{null, null, null, null, null, null, null}
!211 = distinct !{null, null, null, null, null, null, null}
!212 = !{!"_ZTSZZNSt7variantIJN6icu_7813UnicodeStringENS0_8message210data_model10ExpressionENS3_6MarkupEEE4swapERS6_ENUlOT_T0_E_clIRS4_St17integral_constantImLm1EEEEDaS9_SA_EUlS9_SA_E_", !77, i64 0}
!213 = !{!212, !77, i64 0}
!214 = distinct !{null, null, null}
!215 = distinct !{null, null, null, null, null, null, null}
!216 = distinct !{null, null, null, null, null, null, null}
!217 = distinct !{null, null, null, null, null, null, null}
!218 = !{!"_ZTSZZNSt7variantIJN6icu_7813UnicodeStringENS0_8message210data_model10ExpressionENS3_6MarkupEEE4swapERS6_ENUlOT_T0_E_clIRS5_St17integral_constantImLm2EEEEDaS9_SA_EUlS9_SA_E_", !77, i64 0}
!219 = !{!218, !77, i64 0}
!220 = distinct !{null, null, null, null, null, null, null, null, null}
!221 = distinct !{null, null, null, null, null, null, null, null, null}
!222 = distinct !{null, null, null}
!223 = distinct !{null, null, null, null, null, null, null, null, null, null}
!224 = distinct !{null, null, null, null, null, null, null, null, null, null}
!225 = distinct !{null, null, null, null}
end_hunk_2
