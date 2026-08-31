Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_vdir-30811e951409939c.uu_vdir.366fa7bad313b02c-cgu.0?download=true
inline.NumInlined: 18
inline.NumDeleted: 15
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_RNvCs4FLgx4CFoZI_7uu_vdir21CAPTURE_STARTUP_STATE = constant ptr @_RNvNtNtCsh036I4OHgIr_6uucore8features7signals21capture_startup_state, section ".init_array", align 8
@0 = private unnamed_addr constant [4 x i8] c"vdir", align 1
@1 = private unnamed_addr constant [10 x i8] c"vdir-usage", align 1
@2 = private unnamed_addr constant [10 x i8] c"vdir-about", align 1
@llvm.used = appending global [1 x ptr] [ptr @_RNvCs4FLgx4CFoZI_7uu_vdir21CAPTURE_STARTUP_STATE], section "llvm.metadata"

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvCs4FLgx4CFoZI_7uu_vdir6uu_app(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([712 x i8]) align 8 captures(none) dereferenceable(712) initializes((0, 712)) %0) unnamed_addr #0 {
bb.a:
  %.sroa.5.i = alloca [16 x i8], align 8          ; 4 uses
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [712 x i8], align 8               ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 344
  call void @_RNvCs5EcwQX7phGK_5uu_ls6uu_app(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(address) dereferenceable(712) %i.d) #5
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 560
  store ptr @0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 568
  store i64 4, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 10) #5
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noundef !4
  call void @_RNvCsh036I4OHgIr_6uucore12format_usage(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef %i.k) #5
  call void @llvm.experimental.noalias.scope.decl(metadata !5)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  %.sroa.0.0.copyload.i = load i64, ptr %i.c, align 8, !alias.scope !8, !noalias !12 ; 2 uses
  %i.l = icmp eq i64 %.sroa.0.0.copyload.i, -1
  br i1 %i.l, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %.sroa.55.0..sroa_idx.i, i64 16, i1 false), !noalias !12
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 464 ; 2 uses
  %.val.i = load i64, ptr %i.m, align 8, !range !15, !noundef !4 ; 2 uses
  %i.n = icmp sgt i64 %.val.i, 0
  br i1 %i.n, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i, label %_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command14override_usageNtNtCs7tKScEop1B6_5alloc6string6StringECs4FLgx4CFoZI_7uu_vdir.exit

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 472
  %.val4.i = load ptr, ptr %i.o, align 8, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #5, !noalias !16
  br label %_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command14override_usageNtNtCs7tKScEop1B6_5alloc6string6StringECs4FLgx4CFoZI_7uu_vdir.exit

_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command14override_usageNtNtCs7tKScEop1B6_5alloc6string6StringECs4FLgx4CFoZI_7uu_vdir.exit: ; preds = %bb.c, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i
  store i64 %.sroa.0.0.copyload.i, ptr %i.m, align 8
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.d, i64 472
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 320
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 328
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 10) #5
  call void @llvm.experimental.noalias.scope.decl(metadata !17)
  call void @llvm.experimental.noalias.scope.decl(metadata !20)
  call void @llvm.experimental.noalias.scope.decl(metadata !22)
  %.sroa.0.0.copyload.i3 = load i64, ptr %i.a, align 8, !alias.scope !24, !noalias !28 ; 2 uses
  %i.p = icmp eq i64 %.sroa.0.0.copyload.i3, -1   ; 2 uses
  %.sroa.55.0..sroa_idx.i4 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.i2.sroa.0.0.copyload = load ptr, ptr %.sroa.55.0..sroa_idx.i4, align 8
  %.sroa.5.i2.sroa.4.0..sroa.55.0..sroa_idx.i4.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.5.i2.sroa.4.0.copyload = load i64, ptr %.sroa.5.i2.sroa.4.0..sroa.55.0..sroa_idx.i4.sroa_idx, align 8
  %.sroa.5.i2.sroa.4.0 = select i1 %i.p, i64 undef, i64 %.sroa.5.i2.sroa.4.0.copyload
  %.sroa.5.i2.sroa.0.0 = select i1 %i.p, ptr undef, ptr %.sroa.5.i2.sroa.0.0.copyload
  %i.q = icmp sgt i64 %.sroa.4.0.copyload, 0
  br i1 %i.q, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i7, label %_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command5aboutNtNtCs7tKScEop1B6_5alloc6string6StringECs4FLgx4CFoZI_7uu_vdir.exit

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i7: ; preds = %_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command14override_usageNtNtCs7tKScEop1B6_5alloc6string6StringECs4FLgx4CFoZI_7uu_vdir.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload, i64 noundef %.sroa.4.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #5, !noalias !29
  br label %_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command5aboutNtNtCs7tKScEop1B6_5alloc6string6StringECs4FLgx4CFoZI_7uu_vdir.exit

_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command5aboutNtNtCs7tKScEop1B6_5alloc6string6StringECs4FLgx4CFoZI_7uu_vdir.exit: ; preds = %_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command14override_usageNtNtCs7tKScEop1B6_5alloc6string6StringECs4FLgx4CFoZI_7uu_vdir.exit, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr noundef nonnull align 8 dereferenceable(320) %i.d, i64 320, i1 false)
  %.sroa.4.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %0, i64 320
  store i64 %.sroa.0.0.copyload.i3, ptr %.sroa.4.0..sroa_idx9, align 8, !alias.scope !28, !noalias !22
  %.sroa.6.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %0, i64 328
  store ptr %.sroa.5.i2.sroa.0.0, ptr %.sroa.6.0..sroa_idx11, align 8, !alias.scope !28, !noalias !22
  %.sroa.8.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %0, i64 336
  store i64 %.sroa.5.i2.sroa.4.0, ptr %.sroa.8.0..sroa_idx13, align 8, !alias.scope !28, !noalias !22
  %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx13.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 344
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(368) %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx13.sroa_idx, ptr noundef nonnull align 8 dereferenceable(368) %i.e, i64 368, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.val = load i64, ptr %i.b, align 8, !range !30, !noundef !4 ; 2 uses
  %i.r = icmp eq i64 %.val, 0
  br i1 %i.r, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs4FLgx4CFoZI_7uu_vdir.exit, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command5aboutNtNtCs7tKScEop1B6_5alloc6string6StringECs4FLgx4CFoZI_7uu_vdir.exit
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.i, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #5
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs4FLgx4CFoZI_7uu_vdir.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs4FLgx4CFoZI_7uu_vdir.exit: ; preds = %_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command5aboutNtNtCs7tKScEop1B6_5alloc6string6StringECs4FLgx4CFoZI_7uu_vdir.exit, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNtNtCsh036I4OHgIr_6uucore8features7signals21capture_startup_state() unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCs5EcwQX7phGK_5uu_ls6uu_app(ptr dead_on_unwind noalias nofree noundef writable sret([712 x i8]) align 8 captures(address) dereferenceable(712)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #2

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsh036I4OHgIr_6uucore12format_usage(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #4

attributes #0 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #3 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.99.0-nightly (7608eb7b0 2026-08-05)"}
!4 = !{}
!5 = !{!6}
!6 = distinct !{!6, !7, !"_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command14override_usageNtNtCs7tKScEop1B6_5alloc6string6StringECs4FLgx4CFoZI_7uu_vdir: argument 2"}
!7 = distinct !{!7, !"_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command14override_usageNtNtCs7tKScEop1B6_5alloc6string6StringECs4FLgx4CFoZI_7uu_vdir"}
!8 = !{!9, !11, !6}
!9 = distinct !{!9, !10, !"_RNvXsh_NtNtCsgNwXemyrBWj_12clap_builder7builder10resettableNtNtCs7tKScEop1B6_5alloc6string6StringINtB5_14IntoResettableNtNtB7_10styled_str9StyledStrE15into_resettableCs4FLgx4CFoZI_7uu_vdir: argument 0"}
!10 = distinct !{!10, !"_RNvXsh_NtNtCsgNwXemyrBWj_12clap_builder7builder10resettableNtNtCs7tKScEop1B6_5alloc6string6StringINtB5_14IntoResettableNtNtB7_10styled_str9StyledStrE15into_resettableCs4FLgx4CFoZI_7uu_vdir"}
!11 = distinct !{!11, !10, !"_RNvXsh_NtNtCsgNwXemyrBWj_12clap_builder7builder10resettableNtNtCs7tKScEop1B6_5alloc6string6StringINtB5_14IntoResettableNtNtB7_10styled_str9StyledStrE15into_resettableCs4FLgx4CFoZI_7uu_vdir: argument 1"}
!12 = !{!13, !14}
!13 = distinct !{!13, !7, !"_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command14override_usageNtNtCs7tKScEop1B6_5alloc6string6StringECs4FLgx4CFoZI_7uu_vdir: argument 0"}
!14 = distinct !{!14, !7, !"_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command14override_usageNtNtCs7tKScEop1B6_5alloc6string6StringECs4FLgx4CFoZI_7uu_vdir: argument 1"}
!15 = !{i64 -1, i64 -9223372036854775808}
!16 = !{!13, !14, !6}
!17 = !{!18}
!18 = distinct !{!18, !19, !"_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command5aboutNtNtCs7tKScEop1B6_5alloc6string6StringECs4FLgx4CFoZI_7uu_vdir: argument 0"}
!19 = distinct !{!19, !"_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command5aboutNtNtCs7tKScEop1B6_5alloc6string6StringECs4FLgx4CFoZI_7uu_vdir"}
!20 = !{!21}
!21 = distinct !{!21, !19, !"_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command5aboutNtNtCs7tKScEop1B6_5alloc6string6StringECs4FLgx4CFoZI_7uu_vdir: argument 1"}
!22 = !{!23}
!23 = distinct !{!23, !19, !"_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command5aboutNtNtCs7tKScEop1B6_5alloc6string6StringECs4FLgx4CFoZI_7uu_vdir: argument 2"}
!24 = !{!25, !27, !23}
!25 = distinct !{!25, !26, !"_RNvXsh_NtNtCsgNwXemyrBWj_12clap_builder7builder10resettableNtNtCs7tKScEop1B6_5alloc6string6StringINtB5_14IntoResettableNtNtB7_10styled_str9StyledStrE15into_resettableCs4FLgx4CFoZI_7uu_vdir: argument 0"}
!26 = distinct !{!26, !"_RNvXsh_NtNtCsgNwXemyrBWj_12clap_builder7builder10resettableNtNtCs7tKScEop1B6_5alloc6string6StringINtB5_14IntoResettableNtNtB7_10styled_str9StyledStrE15into_resettableCs4FLgx4CFoZI_7uu_vdir"}
!27 = distinct !{!27, !26, !"_RNvXsh_NtNtCsgNwXemyrBWj_12clap_builder7builder10resettableNtNtCs7tKScEop1B6_5alloc6string6StringINtB5_14IntoResettableNtNtB7_10styled_str9StyledStrE15into_resettableCs4FLgx4CFoZI_7uu_vdir: argument 1"}
!28 = !{!18, !21}
!29 = !{!18, !21, !23}
!30 = !{i64 0, i64 -9223372036854775808}
end_hunk_0
