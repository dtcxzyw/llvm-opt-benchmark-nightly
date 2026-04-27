inline.NumInlined: 58
inline.NumDeleted: 43
begin_hunk_0
; Function Attrs: mustprogress uwtable
define void @_ZN5arrow8internal22FloatToStringFormatterC2Ev(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #7 ; 7 uses
  store i32 1, ptr %i.a, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @.str, ptr %i.b, align 8, !tbaa !11
end_hunk_0
begin_hunk_1_@_ZdlPvm
; Function Attrs: mustprogress uwtable
define void @_ZN5arrow8internal22FloatToStringFormatterC2EiPKcS3_ciiii(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef signext %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #7 ; 10 uses
  store i32 %1, ptr %i.a, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %2, ptr %i.b, align 8, !tbaa !11
end_hunk_1
begin_hunk_2_@_ZN5arrow8internal22FloatToStringFormatterD2Ev:bb.a
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5arrow8internal22FloatToStringFormatter4ImplESt14default_deleteIS3_EED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow8internal22FloatToStringFormatter4ImplEEclEPS3_.exit.i

_ZNKSt14default_deleteIN5arrow8internal22FloatToStringFormatter4ImplEEclEPS3_.exit.i: ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 48) #8
  br label %_ZNSt10unique_ptrIN5arrow8internal22FloatToStringFormatter4ImplESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow8internal22FloatToStringFormatter4ImplESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN5arrow8internal22FloatToStringFormatter4ImplEEclEPS3_.exit.i
end_hunk_2
begin_hunk_3_@_ZN5arrow8internal22FloatToStringFormatter11FormatFloatEfPci
define noundef i32 @_ZN5arrow8internal22FloatToStringFormatter11FormatFloatEfPci(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, float noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow_vendored::double_conversion::StringBuilder", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  store ptr %2, ptr %4, align 8, !tbaa !21
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %3, ptr %i.a, align 8, !tbaa !23
end_hunk_3
begin_hunk_4_@_ZN5arrow8internal22FloatToStringFormatter11FormatFloatEfPci:bb.a
bb.b:                                             ; preds = %_ZNK14arrow_vendored17double_conversion23DoubleToStringConverter16ToShortestSingleEfPNS0_13StringBuilderE.exit
  %i.h = load ptr, ptr %4, align 8, !tbaa !21
  %i.i = zext nneg i32 %i.f to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.i ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  store i8 0, ptr %i.j, align 1, !tbaa !26
  br label %_ZN14arrow_vendored17double_conversion13StringBuilderD2Ev.exit

_ZN14arrow_vendored17double_conversion13StringBuilderD2Ev.exit: ; preds = %_ZNK14arrow_vendored17double_conversion23DoubleToStringConverter16ToShortestSingleEfPNS0_13StringBuilderE.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  ret i32 %i.f

bb.c:                                             ; preds = %bb.a
end_hunk_4
begin_hunk_5_@_ZN5arrow8internal22FloatToStringFormatter11FormatFloatEfPci:bb.a
bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %4, align 8, !tbaa !21
  %i.o = zext nneg i32 %i.l to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.o ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.p) ]
  store i8 0, ptr %i.p, align 1, !tbaa !26
  br label %_ZN14arrow_vendored17double_conversion13StringBuilderD2Ev.exit5

_ZN14arrow_vendored17double_conversion13StringBuilderD2Ev.exit5: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  resume { ptr, i32 } %i.k
}

end_hunk_5
begin_hunk_6_@_ZN5arrow8internal22FloatToStringFormatter11FormatFloatEdPci
define noundef i32 @_ZN5arrow8internal22FloatToStringFormatter11FormatFloatEdPci(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, double noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow_vendored::double_conversion::StringBuilder", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  store ptr %2, ptr %4, align 8, !tbaa !21
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %3, ptr %i.a, align 8, !tbaa !23
end_hunk_6
begin_hunk_7_@_ZN5arrow8internal22FloatToStringFormatter11FormatFloatEdPci:bb.a
bb.b:                                             ; preds = %_ZNK14arrow_vendored17double_conversion23DoubleToStringConverter10ToShortestEdPNS0_13StringBuilderE.exit
  %i.g = load ptr, ptr %4, align 8, !tbaa !21
  %i.h = zext nneg i32 %i.e to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.h ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.i) ]
  store i8 0, ptr %i.i, align 1, !tbaa !26
  br label %_ZN14arrow_vendored17double_conversion13StringBuilderD2Ev.exit

_ZN14arrow_vendored17double_conversion13StringBuilderD2Ev.exit: ; preds = %_ZNK14arrow_vendored17double_conversion23DoubleToStringConverter10ToShortestEdPNS0_13StringBuilderE.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  ret i32 %i.e

bb.c:                                             ; preds = %bb.a
end_hunk_7
begin_hunk_8_@_ZN5arrow8internal22FloatToStringFormatter11FormatFloatEdPci:bb.a
bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %4, align 8, !tbaa !21
  %i.n = zext nneg i32 %i.k to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.n ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  store i8 0, ptr %i.o, align 1, !tbaa !26
  br label %_ZN14arrow_vendored17double_conversion13StringBuilderD2Ev.exit5

_ZN14arrow_vendored17double_conversion13StringBuilderD2Ev.exit5: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  resume { ptr, i32 } %i.j
}

end_hunk_8
begin_hunk_9_@_ZN5arrow8internal22FloatToStringFormatter11FormatFloatEtPci:bb.a
bb.a:
  %4 = alloca %"class.arrow_vendored::double_conversion::StringBuilder", align 8 ; 9 uses
  %5 = alloca %"class.arrow::util::Float16", align 2 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  store ptr %2, ptr %4, align 8, !tbaa !21
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %3, ptr %i.a, align 8, !tbaa !23
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store i32 0, ptr %i.b, align 8, !tbaa !24
  %i.c = load ptr, ptr %0, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  store i16 %1, ptr %5, align 2
  %i.d = invoke noundef float @_ZNK5arrow4util7Float167ToFloatEv(ptr noundef nonnull align 2 dereferenceable(2) %5)
          to label %bb.b unwind label %bb.d
end_hunk_9
begin_hunk_10_@_ZN5arrow8internal22FloatToStringFormatter11FormatFloatEtPci:bb.a
          to label %_ZNK14arrow_vendored17double_conversion23DoubleToStringConverter10ToShortestEdPNS0_13StringBuilderE.exit unwind label %bb.d ; 0 uses

_ZNK14arrow_vendored17double_conversion23DoubleToStringConverter10ToShortestEdPNS0_13StringBuilderE.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  %i.g = load i32, ptr %i.b, align 8, !tbaa !24   ; 3 uses
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %_ZN14arrow_vendored17double_conversion13StringBuilderD2Ev.exit, label %bb.c
end_hunk_10
begin_hunk_11_@_ZN5arrow8internal22FloatToStringFormatter11FormatFloatEtPci:bb.a
bb.c:                                             ; preds = %_ZNK14arrow_vendored17double_conversion23DoubleToStringConverter10ToShortestEdPNS0_13StringBuilderE.exit
  %i.i = load ptr, ptr %4, align 8, !tbaa !21
  %i.j = zext nneg i32 %i.g to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  store i8 0, ptr %i.k, align 1, !tbaa !26
  br label %_ZN14arrow_vendored17double_conversion13StringBuilderD2Ev.exit

_ZN14arrow_vendored17double_conversion13StringBuilderD2Ev.exit: ; preds = %_ZNK14arrow_vendored17double_conversion23DoubleToStringConverter10ToShortestEdPNS0_13StringBuilderE.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  ret i32 %i.g

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  %i.m = load i32, ptr %i.b, align 8, !tbaa !24   ; 2 uses
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %_ZN14arrow_vendored17double_conversion13StringBuilderD2Ev.exit5, label %bb.e
end_hunk_11
begin_hunk_12_@_ZN5arrow8internal22FloatToStringFormatter11FormatFloatEtPci:bb.a
bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %4, align 8, !tbaa !21
  %i.p = zext nneg i32 %i.m to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.p ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.q) ]
  store i8 0, ptr %i.q, align 1, !tbaa !26
  br label %_ZN14arrow_vendored17double_conversion13StringBuilderD2Ev.exit5

_ZN14arrow_vendored17double_conversion13StringBuilderD2Ev.exit5: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  resume { ptr, i32 } %i.l
}

end_hunk_12
begin_hunk_13_@_ZNK5arrow4util7Float167ToFloatEv

declare noundef zeroext i1 @_ZNK14arrow_vendored17double_conversion23DoubleToStringConverter20ToShortestIeeeNumberEdPNS0_13StringBuilderENS1_8DtoaModeE(ptr noundef nonnull align 8 dereferenceable(48), double noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { builtin allocsize(0) }
attributes #8 = { builtin nounwind }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
end_hunk_13
