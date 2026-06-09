inline.NumInlined: 58
inline.NumDeleted: 43
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.arrow_vendored::double_conversion::StringBuilder" = type { %"class.arrow_vendored::double_conversion::Vector", i32, [4 x i8] }
%"class.arrow_vendored::double_conversion::Vector" = type <{ ptr, i32, [4 x i8] }>
%"class.arrow::util::Float16" = type { i16 }

@_ZN5arrow8internal6detail11digit_pairsE = local_unnamed_addr constant [201 x i8] c"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\00", align 16
@.str = private unnamed_addr constant [4 x i8] c"inf\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"nan\00", align 1

@_ZN5arrow8internal22FloatToStringFormatterC1Ev = unnamed_addr alias void (ptr), ptr @_ZN5arrow8internal22FloatToStringFormatterC2Ev
@_ZN5arrow8internal22FloatToStringFormatterC1EiPKcS3_ciiii = unnamed_addr alias void (ptr, i32, ptr, ptr, i8, i32, i32, i32, i32), ptr @_ZN5arrow8internal22FloatToStringFormatterC2EiPKcS3_ciiii
@_ZN5arrow8internal22FloatToStringFormatterD1Ev = unnamed_addr alias void (ptr), ptr @_ZN5arrow8internal22FloatToStringFormatterD2Ev

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow8internal22FloatToStringFormatterC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #6 ; 7 uses
  store i32 1, ptr %i.a, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @.str, ptr %i.b, align 8, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @.str.1, ptr %i.c, align 8, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i8 101, ptr %i.d, align 8, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store <4 x i32> <i32 -6, i32 10, i32 6, i32 0>, ptr %i.e, align 4, !tbaa !3
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  store i32 0, ptr %i.f, align 4, !tbaa !14
  store ptr %i.a, ptr %0, align 8, !tbaa !15
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow8internal22FloatToStringFormatterC2EiPKcS3_ciiii(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef signext %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #6 ; 10 uses
  store i32 %1, ptr %i.a, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %2, ptr %i.b, align 8, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %3, ptr %i.c, align 8, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i8 %4, ptr %i.d, align 8, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store i32 %5, ptr %i.e, align 4, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i32 %6, ptr %i.f, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  store i32 %7, ptr %i.g, align 4, !tbaa !19
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i32 %8, ptr %i.h, align 8, !tbaa !20
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  store i32 0, ptr %i.i, align 4, !tbaa !14
  store ptr %i.a, ptr %0, align 8, !tbaa !15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5arrow8internal22FloatToStringFormatterD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !15     ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5arrow8internal22FloatToStringFormatter4ImplESt14default_deleteIS3_EED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow8internal22FloatToStringFormatter4ImplEEclEPS3_.exit.i

_ZNKSt14default_deleteIN5arrow8internal22FloatToStringFormatter4ImplEEclEPS3_.exit.i: ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 48) #7
  br label %_ZNSt10unique_ptrIN5arrow8internal22FloatToStringFormatter4ImplESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow8internal22FloatToStringFormatter4ImplESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN5arrow8internal22FloatToStringFormatter4ImplEEclEPS3_.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN5arrow8internal22FloatToStringFormatter11FormatFloatEfPci(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, float noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow_vendored::double_conversion::StringBuilder", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  store ptr %2, ptr %4, align 8, !tbaa !21
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %3, ptr %i.a, align 8, !tbaa !23
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store i32 0, ptr %i.b, align 8, !tbaa !24
  %i.c = load ptr, ptr %0, align 8, !tbaa !15
  %i.d = fpext float %1 to double
  %i.e = invoke noundef zeroext i1 @_ZNK14arrow_vendored17double_conversion23DoubleToStringConverter20ToShortestIeeeNumberEdPNS0_13StringBuilderENS1_8DtoaModeE(ptr noundef nonnull align 8 dereferenceable(48) %i.c, double noundef %i.d, ptr noundef nonnull %4, i32 noundef 1)
          to label %_ZNK14arrow_vendored17double_conversion23DoubleToStringConverter16ToShortestSingleEfPNS0_13StringBuilderE.exit unwind label %bb.c ; 0 uses

_ZNK14arrow_vendored17double_conversion23DoubleToStringConverter16ToShortestSingleEfPNS0_13StringBuilderE.exit: ; preds = %bb.a
  %i.f = load i32, ptr %i.b, align 8, !tbaa !24   ; 3 uses
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %_ZN14arrow_vendored17double_conversion13StringBuilderD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK14arrow_vendored17double_conversion23DoubleToStringConverter16ToShortestSingleEfPNS0_13StringBuilderE.exit
  %i.h = load ptr, ptr %4, align 8, !tbaa !21, !nonnull !26, !noundef !26
  %i.i = zext nneg i32 %i.f to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.i
  store i8 0, ptr %i.j, align 1, !tbaa !27
  br label %_ZN14arrow_vendored17double_conversion13StringBuilderD2Ev.exit

_ZN14arrow_vendored17double_conversion13StringBuilderD2Ev.exit: ; preds = %_ZNK14arrow_vendored17double_conversion23DoubleToStringConverter16ToShortestSingleEfPNS0_13StringBuilderE.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  ret i32 %i.f

bb.c:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load i32, ptr %i.b, align 8, !tbaa !24   ; 2 uses
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %_ZN14arrow_vendored17double_conversion13StringBuilderD2Ev.exit5, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %4, align 8, !tbaa !21, !nonnull !26, !noundef !26
  %i.o = zext nneg i32 %i.l to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.o
  store i8 0, ptr %i.p, align 1, !tbaa !27
  br label %_ZN14arrow_vendored17double_conversion13StringBuilderD2Ev.exit5

_ZN14arrow_vendored17double_conversion13StringBuilderD2Ev.exit5: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  resume { ptr, i32 } %i.k
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN5arrow8internal22FloatToStringFormatter11FormatFloatEdPci(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, double noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow_vendored::double_conversion::StringBuilder", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  store ptr %2, ptr %4, align 8, !tbaa !21
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %3, ptr %i.a, align 8, !tbaa !23
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store i32 0, ptr %i.b, align 8, !tbaa !24
  %i.c = load ptr, ptr %0, align 8, !tbaa !15
  %i.d = invoke noundef zeroext i1 @_ZNK14arrow_vendored17double_conversion23DoubleToStringConverter20ToShortestIeeeNumberEdPNS0_13StringBuilderENS1_8DtoaModeE(ptr noundef nonnull align 8 dereferenceable(48) %i.c, double noundef %1, ptr noundef nonnull %4, i32 noundef 0)
          to label %_ZNK14arrow_vendored17double_conversion23DoubleToStringConverter10ToShortestEdPNS0_13StringBuilderE.exit unwind label %bb.c ; 0 uses

_ZNK14arrow_vendored17double_conversion23DoubleToStringConverter10ToShortestEdPNS0_13StringBuilderE.exit: ; preds = %bb.a
  %i.e = load i32, ptr %i.b, align 8, !tbaa !24   ; 3 uses
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %_ZN14arrow_vendored17double_conversion13StringBuilderD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK14arrow_vendored17double_conversion23DoubleToStringConverter10ToShortestEdPNS0_13StringBuilderE.exit
  %i.g = load ptr, ptr %4, align 8, !tbaa !21, !nonnull !26, !noundef !26
  %i.h = zext nneg i32 %i.e to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.h
  store i8 0, ptr %i.i, align 1, !tbaa !27
  br label %_ZN14arrow_vendored17double_conversion13StringBuilderD2Ev.exit

_ZN14arrow_vendored17double_conversion13StringBuilderD2Ev.exit: ; preds = %_ZNK14arrow_vendored17double_conversion23DoubleToStringConverter10ToShortestEdPNS0_13StringBuilderE.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  ret i32 %i.e

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load i32, ptr %i.b, align 8, !tbaa !24   ; 2 uses
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %_ZN14arrow_vendored17double_conversion13StringBuilderD2Ev.exit5, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %4, align 8, !tbaa !21, !nonnull !26, !noundef !26
  %i.n = zext nneg i32 %i.k to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.n
  store i8 0, ptr %i.o, align 1, !tbaa !27
  br label %_ZN14arrow_vendored17double_conversion13StringBuilderD2Ev.exit5

_ZN14arrow_vendored17double_conversion13StringBuilderD2Ev.exit5: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  resume { ptr, i32 } %i.j
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN5arrow8internal22FloatToStringFormatter11FormatFloatEtPci(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i16 noundef zeroext %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow_vendored::double_conversion::StringBuilder", align 8 ; 9 uses
  %5 = alloca %"class.arrow::util::Float16", align 2 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  store ptr %2, ptr %4, align 8, !tbaa !21
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %3, ptr %i.a, align 8, !tbaa !23
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store i32 0, ptr %i.b, align 8, !tbaa !24
  %i.c = load ptr, ptr %0, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  store i16 %1, ptr %5, align 2
  %i.d = invoke noundef float @_ZNK5arrow4util7Float167ToFloatEv(ptr noundef nonnull align 2 dereferenceable(2) %5)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = fpext float %i.d to double
  %i.f = invoke noundef zeroext i1 @_ZNK14arrow_vendored17double_conversion23DoubleToStringConverter20ToShortestIeeeNumberEdPNS0_13StringBuilderENS1_8DtoaModeE(ptr noundef nonnull align 8 dereferenceable(48) %i.c, double noundef %i.e, ptr noundef nonnull %4, i32 noundef 0)
          to label %_ZNK14arrow_vendored17double_conversion23DoubleToStringConverter10ToShortestEdPNS0_13StringBuilderE.exit unwind label %bb.d ; 0 uses

_ZNK14arrow_vendored17double_conversion23DoubleToStringConverter10ToShortestEdPNS0_13StringBuilderE.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  %i.g = load i32, ptr %i.b, align 8, !tbaa !24   ; 3 uses
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %_ZN14arrow_vendored17double_conversion13StringBuilderD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK14arrow_vendored17double_conversion23DoubleToStringConverter10ToShortestEdPNS0_13StringBuilderE.exit
  %i.i = load ptr, ptr %4, align 8, !tbaa !21, !nonnull !26, !noundef !26
  %i.j = zext nneg i32 %i.g to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j
  store i8 0, ptr %i.k, align 1, !tbaa !27
  br label %_ZN14arrow_vendored17double_conversion13StringBuilderD2Ev.exit

_ZN14arrow_vendored17double_conversion13StringBuilderD2Ev.exit: ; preds = %_ZNK14arrow_vendored17double_conversion23DoubleToStringConverter10ToShortestEdPNS0_13StringBuilderE.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  ret i32 %i.g

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  %i.m = load i32, ptr %i.b, align 8, !tbaa !24   ; 2 uses
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %_ZN14arrow_vendored17double_conversion13StringBuilderD2Ev.exit5, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %4, align 8, !tbaa !21, !nonnull !26, !noundef !26
  %i.p = zext nneg i32 %i.m to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.p
  store i8 0, ptr %i.q, align 1, !tbaa !27
  br label %_ZN14arrow_vendored17double_conversion13StringBuilderD2Ev.exit5

_ZN14arrow_vendored17double_conversion13StringBuilderD2Ev.exit5: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  resume { ptr, i32 } %i.l
}

declare noundef float @_ZNK5arrow4util7Float167ToFloatEv(ptr noundef nonnull align 2 dereferenceable(2)) local_unnamed_addr #5

declare noundef zeroext i1 @_ZNK14arrow_vendored17double_conversion23DoubleToStringConverter20ToShortestIeeeNumberEdPNS0_13StringBuilderENS1_8DtoaModeE(ptr noundef nonnull align 8 dereferenceable(48), double noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #6 = { builtin allocsize(0) }
attributes #7 = { builtin nounwind }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !4, i64 0}
!8 = !{!"_ZTSN14arrow_vendored17double_conversion23DoubleToStringConverterE", !4, i64 0, !9, i64 8, !9, i64 16, !5, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !4, i64 44}
!9 = !{!"p1 omnipotent char", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!8, !9, i64 8}
!12 = !{!8, !9, i64 16}
!13 = !{!8, !5, i64 24}
!14 = !{!8, !4, i64 44}
!15 = !{!16, !16, i64 0}
!16 = !{!"p1 _ZTSN5arrow8internal22FloatToStringFormatter4ImplE", !10, i64 0}
!17 = !{!8, !4, i64 28}
!18 = !{!8, !4, i64 32}
!19 = !{!8, !4, i64 36}
!20 = !{!8, !4, i64 40}
!21 = !{!22, !9, i64 0}
!22 = !{!"_ZTSN14arrow_vendored17double_conversion6VectorIcEE", !9, i64 0, !4, i64 8}
!23 = !{!22, !4, i64 8}
!24 = !{!25, !4, i64 16}
!25 = !{!"_ZTSN14arrow_vendored17double_conversion13StringBuilderE", !22, i64 0, !4, i64 16}
!26 = !{}
!27 = !{!5, !5, i64 0}
end_hunk_0
