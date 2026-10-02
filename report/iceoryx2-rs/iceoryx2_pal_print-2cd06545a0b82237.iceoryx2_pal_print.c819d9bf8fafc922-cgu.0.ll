Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iceoryx2-rs/original/iceoryx2_pal_print-2cd06545a0b82237.iceoryx2_pal_print.c819d9bf8fafc922-cgu.0?download=true
inline.NumInlined: 15
inline.NumDeleted: 13
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_RNvNvNtNtCsigunbJSLHCW_3std2io5stdio6stderr8INSTANCE = external global { { { { { i64 } } } }, { { { { i32 } } } }, i32, i64 }

; Function Attrs: nounwind nonlazybind uwtable
define noundef zeroext i1 @_RNvXNtCshb8exvODBu0_18iceoryx2_pal_print6writerNtB2_6StdoutNtNtCs8Chj7Szqq0n_4core3fmt5Write9write_str(ptr noalias nofree noundef nonnull readnone captures(none) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = tail call noundef nonnull align 8 ptr @_RNvNtNtCsigunbJSLHCW_3std2io5stdio6stdout() #3
  store ptr %i.c, ptr %i.b, align 8
  %i.d = call noundef ptr @_RNvXse_NtNtCsigunbJSLHCW_3std2io5stdioNtB5_6StdoutNtNtNtCs8Chj7Szqq0n_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) #3 ; 4 uses
  %.not = icmp ne ptr %i.d, null                  ; 2 uses
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.f = and i64 %i.e, 3
  switch i64 %i.f, label %default.unreachable [
    i64 2, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshb8exvODBu0_18iceoryx2_pal_print.exit
    i64 3, label %bb.c
    i64 0, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshb8exvODBu0_18iceoryx2_pal_print.exit
    i64 1, label %bb.d
  ], !prof !4

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = icmp ult ptr %i.d, inttoptr (i64 188978561024 to ptr)
  %i.h = and i64 %i.e, 1095216660480
  %i.i = icmp ne i64 %i.h, 1095216660480
  call void @llvm.assume(i1 %i.g)
  call void @llvm.assume(i1 %i.i)
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshb8exvODBu0_18iceoryx2_pal_print.exit

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %i.d, i64 -1       ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.k, align 8, !alias.scope !7
  store i8 3, ptr %i.a, align 8, !alias.scope !7
  call void @_RNvXsd_NtNtCs8Chj7Szqq0n_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #3
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshb8exvODBu0_18iceoryx2_pal_print.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshb8exvODBu0_18iceoryx2_pal_print.exit: ; preds = %bb.b, %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshb8exvODBu0_18iceoryx2_pal_print.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %.not
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NtCshb8exvODBu0_18iceoryx2_pal_print6writerNtB5_6StderrNtNtCs8Chj7Szqq0n_4core3fmt5Write9write_str(ptr noalias nofree noundef nonnull readnone captures(none) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @_RNvNvNtNtCsigunbJSLHCW_3std2io5stdio6stderr8INSTANCE, ptr %i.b, align 8
  %i.c = call noundef ptr @_RNvXso_NtNtCsigunbJSLHCW_3std2io5stdioNtB5_6StderrNtNtNtCs8Chj7Szqq0n_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) #3 ; 4 uses
  %.not = icmp ne ptr %i.c, null                  ; 2 uses
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = and i64 %i.d, 3
  switch i64 %i.e, label %default.unreachable [
    i64 2, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshb8exvODBu0_18iceoryx2_pal_print.exit
    i64 3, label %bb.c
    i64 0, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshb8exvODBu0_18iceoryx2_pal_print.exit
    i64 1, label %bb.d
  ], !prof !4

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = icmp ult ptr %i.c, inttoptr (i64 188978561024 to ptr)
  %i.g = and i64 %i.d, 1095216660480
  %i.h = icmp ne i64 %i.g, 1095216660480
  call void @llvm.assume(i1 %i.f)
  call void @llvm.assume(i1 %i.h)
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshb8exvODBu0_18iceoryx2_pal_print.exit

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %i.c, i64 -1       ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.i) ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !alias.scope !10
  store i8 3, ptr %i.a, align 8, !alias.scope !10
  call void @_RNvXsd_NtNtCs8Chj7Szqq0n_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j) #3
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshb8exvODBu0_18iceoryx2_pal_print.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshb8exvODBu0_18iceoryx2_pal_print.exit: ; preds = %bb.b, %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshb8exvODBu0_18iceoryx2_pal_print.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %.not
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1_NtCshb8exvODBu0_18iceoryx2_pal_print6writerNtB5_6StderrNtB7_10IsTerminal11is_terminal(ptr noalias nofree noundef nonnull readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i32 @isatty(i32 noundef 2) #3
  %i.b = icmp ne i32 %i.a, 0
  ret i1 %i.b
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef zeroext i1 @_RNvXs_NtCshb8exvODBu0_18iceoryx2_pal_print6writerNtB4_6StdoutNtB6_10IsTerminal11is_terminal(ptr noalias nofree noundef nonnull readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvNtNtCsigunbJSLHCW_3std2io5stdio6stdout() #3 ; 0 uses
  %i.b = tail call noundef i32 @isatty(i32 noundef 1) #3
  %i.c = icmp ne i32 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvXsd_NtNtCs8Chj7Szqq0n_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @isatty(i32 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvNtNtCsigunbJSLHCW_3std2io5stdio6stdout() unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef ptr @_RNvXse_NtNtCsigunbJSLHCW_3std2io5stdioNtB5_6StdoutNtNtNtCs8Chj7Szqq0n_4core2io5write5Write9write_all(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef ptr @_RNvXso_NtNtCsigunbJSLHCW_3std2io5stdioNtB5_6StderrNtNtNtCs8Chj7Szqq0n_4core2io5write5Write9write_all(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

attributes #0 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (0ed41eb41 2026-09-04)"}
!4 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 2000}
!5 = distinct !{!5, i1 false, !"_RINvNtNtNtCs8Chj7Szqq0n_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECshb8exvODBu0_18iceoryx2_pal_print"}
!6 = distinct !{!6, !5, !"_RINvNtNtNtCs8Chj7Szqq0n_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECshb8exvODBu0_18iceoryx2_pal_print: argument 0"}
!7 = !{!6}
!8 = distinct !{!8, i1 false, !"_RINvNtNtNtCs8Chj7Szqq0n_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECshb8exvODBu0_18iceoryx2_pal_print"}
!9 = distinct !{!9, !8, !"_RINvNtNtNtCs8Chj7Szqq0n_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECshb8exvODBu0_18iceoryx2_pal_print: argument 0"}
!10 = !{!9}
end_hunk_0
