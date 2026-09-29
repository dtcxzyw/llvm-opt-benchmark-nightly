Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/log_test_executable.log_test_executable.273a1b71121b7b32-cgu.0?download=true
inline.NumInlined: 119
inline.NumDeleted: 58
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvNtCsG258MDvU3F_3std2rt10lang_startuE0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuE9call_once6vtableCs3mNRJm2NnC8_19log_test_executable, ptr @_RNCINvNtCsG258MDvU3F_3std2rt10lang_startuE0Cs3mNRJm2NnC8_19log_test_executable, ptr @_RNCINvNtCsG258MDvU3F_3std2rt10lang_startuE0Cs3mNRJm2NnC8_19log_test_executable }>, align 8
@1 = private unnamed_addr constant [45 x i8] c"xet_runtime/tests/bin/log_test_executable.rs\00", align 1
@2 = private unnamed_addr constant [26 x i8] c"num_lines must be a number", align 1
@3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c",\00\00\00\00\00\00\00\0F\00\00\00,\00\00\00" }>, align 8
@_RNvNtCs94TQx44N27d_12tracing_core8metadata9MAX_LEVEL = external local_unnamed_addr global { { { i64 } } }
@4 = private unnamed_addr constant [79 x i8] c"\18Test log message number \C03 - this is a dummy log message for testing purposes\00", align 1
@5 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsl_NtCs94TQx44N27d_12tracing_core5fieldNtNtCskKLDkoKarTP_4core3fmt9ArgumentsNtB5_5Value6record }>, align 8
@6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c",\00\00\00\00\00\00\00\0A\00\00\00@\00\00\00" }>, align 8
@7 = private unnamed_addr constant [40 x i8] c"\07Usage: \C0\1D <log_directory> <num_lines>\0A\00", align 1
@8 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsc_NtNtCskKLDkoKarTP_4core3num5errorNtB5_13ParseIntErrorNtNtB9_3fmt5Debug3fmt }>, align 8
@_RNvNvCs3mNRJm2NnC8_19log_test_executable4main10___CALLSITE = internal global <{ ptr, [10 x i8], [6 x i8] }> <{ ptr @_RNvNvNvCs3mNRJm2NnC8_19log_test_executable4main10___CALLSITE4META, [10 x i8] c"\00\00\00\00\00\00\00\00\FF\00", [6 x i8] undef }>, align 8
@9 = private unnamed_addr constant [53 x i8] c"event xet_runtime/tests/bin/log_test_executable.rs:30", align 1
@10 = private unnamed_addr constant [19 x i8] c"log_test_executable", align 1
@11 = private unnamed_addr constant [7 x i8] c"message", align 1
@12 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @11, [8 x i8] c"\07\00\00\00\00\00\00\00" }>, align 8
@13 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtCs94TQx44N27d_12tracing_core8callsiteNtB4_15DefaultCallsiteNtB4_8Callsite12set_interest, ptr @_RNvXs_NtCs94TQx44N27d_12tracing_core8callsiteNtB4_15DefaultCallsiteNtB4_8Callsite8metadata, ptr @_RNvYNtNtCs94TQx44N27d_12tracing_core8callsite15DefaultCallsiteNtB4_8Callsite15private_type_idCs3mNRJm2NnC8_19log_test_executable }>, align 8
@14 = private unnamed_addr constant [44 x i8] c"xet_runtime/tests/bin/log_test_executable.rs", align 1
@_RNvNvNvCs3mNRJm2NnC8_19log_test_executable4main10___CALLSITE4META = internal constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\02\00\00\00\00\00\00\00\01\00\00\00\1E\00\00\00", ptr @9, [8 x i8] c"5\00\00\00\00\00\00\00", ptr @10, [8 x i8] c"\13\00\00\00\00\00\00\00", ptr @12, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @_RNvNvCs3mNRJm2NnC8_19log_test_executable4main10___CALLSITE, ptr @13, ptr @10, [8 x i8] c"\13\00\00\00\00\00\00\00", ptr @14, [9 x i8] c",\00\00\00\00\00\00\00\01", [7 x i8] undef }>, align 8
@15 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs3mNRJm2NnC8_19log_test_executable }>, align 8
@16 = private unnamed_addr constant [13 x i8] c"ParseIntError", align 1
@17 = private unnamed_addr constant [4 x i8] c"kind", align 1
@18 = private unnamed_addr constant [5 x i8] c"Empty", align 1
@19 = private unnamed_addr constant [12 x i8] c"InvalidDigit", align 1
@20 = private unnamed_addr constant [11 x i8] c"PosOverflow", align 1
@21 = private unnamed_addr constant [11 x i8] c"NegOverflow", align 1
@22 = private unnamed_addr constant [4 x i8] c"Zero", align 1
@23 = private unnamed_addr constant [14 x i8] c"NotAPowerOfTwo", align 1
@24 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 2183554385892681230 to ptr), ptr inttoptr (i64 -7813891047107712238 to ptr) }>, align 8
@switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs3mNRJm2NnC8_19log_test_executable = private unnamed_addr constant [6 x i8] c"\05\0C\0B\0B\04\0E", align 8
@switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs3mNRJm2NnC8_19log_test_executable.37 = private unnamed_addr constant [6 x ptr] [ptr @18, ptr @19, ptr @20, ptr @21, ptr @22, ptr @23], align 8

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvNtCsG258MDvU3F_3std2rt10lang_startuECs3mNRJm2NnC8_19log_test_executable(ptr noundef nonnull %0, i64 noundef %1, ptr noundef %2, i8 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef i64 @_RNvNtCsG258MDvU3F_3std2rt19lang_start_internal(ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @0, i64 noundef %1, ptr noundef %2, i8 noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %i.b
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECs3mNRJm2NnC8_19log_test_executable(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11)
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3mNRJm2NnC8_19log_test_executable.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3mNRJm2NnC8_19log_test_executable.exit.i.i
  %.sroa.0.011.i.i = phi i64 [ %i.e, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3mNRJm2NnC8_19log_test_executable.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.sroa.0.011.i.i ; 2 uses
  %i.e = add nuw nsw i64 %.sroa.0.011.i.i, 1      ; 2 uses
  %.val8.i.i = load i64, ptr %i.d, align 8, !alias.scope !11 ; 2 uses
  %i.f = icmp eq i64 %.val8.i.i, 0
  br i1 %i.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3mNRJm2NnC8_19log_test_executable.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.g = getelementptr i8, ptr %i.d, i64 8
  %.val9.i.i = load ptr, ptr %i.g, align 8, !alias.scope !11, !nonnull !5, !noundef !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i, i64 noundef %.val8.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !11
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3mNRJm2NnC8_19log_test_executable.exit.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3mNRJm2NnC8_19log_test_executable.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.h = icmp eq i64 %i.e, %.val1
  br i1 %i.h, label %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3mNRJm2NnC8_19log_test_executable.exit, label %.lr.ph.i.i

_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3mNRJm2NnC8_19log_test_executable.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3mNRJm2NnC8_19log_test_executable.exit.i.i, %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !6, !noundef !5 ; 2 uses
  %i.i = icmp eq i64 %.val2, 0
  br i1 %i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtBG_6string6StringEECs3mNRJm2NnC8_19log_test_executable.exit6, label %bb.c

bb.c:                                             ; preds = %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3mNRJm2NnC8_19log_test_executable.exit
  %i.j = mul nuw i64 %.val2, 24
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 8) #21
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtBG_6string6StringEECs3mNRJm2NnC8_19log_test_executable.exit6

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtBG_6string6StringEECs3mNRJm2NnC8_19log_test_executable.exit6: ; preds = %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3mNRJm2NnC8_19log_test_executable.exit, %bb.c
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std3env4ArgsECs3mNRJm2NnC8_19log_test_executable(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.a, align 8, !alias.scope !26, !nonnull !5, !noundef !5 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !26, !nonnull !5, !noundef !5 ; 2 uses
  %i.c = ptrtoint ptr %.val1.i.i.i.i to i64
  %i.d = ptrtoint ptr %.val.i.i.i.i to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = udiv exact i64 %i.e, 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27)
  %i.g = icmp eq ptr %.val1.i.i.i.i, %.val.i.i.i.i
  br i1 %i.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i.i.i
  %.sroa.0.011.i.i.i.i.i = phi i64 [ %i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i.i, i64 %.sroa.0.011.i.i.i.i.i ; 2 uses
  %i.i = add nuw nsw i64 %.sroa.0.011.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !27, !noalias !26 ; 2 uses
  %i.j = icmp eq i64 %.val8.i.i.i.i.i, 0
  br i1 %i.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.k = getelementptr i8, ptr %i.h, i64 8
  %.val9.i.i.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !27, !noalias !26, !nonnull !5, !noundef !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i, i64 noundef %.val8.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !28
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i.i.i
  %i.l = icmp eq i64 %i.i, %i.f
  br i1 %i.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i.i.i, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !26, !noundef !5 ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std3env6ArgsOsECs3mNRJm2NnC8_19log_test_executable.exit, label %bb.c

bb.c:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i.i
  %i.p = load ptr, ptr %0, align 8, !alias.scope !26, !nonnull !5, !noundef !5
  %i.q = mul nuw i64 %i.n, 24
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.p, i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) 8) #21, !noalias !26
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std3env6ArgsOsECs3mNRJm2NnC8_19log_test_executable.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std3env6ArgsOsECs3mNRJm2NnC8_19log_test_executable.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i.i, %bb.c
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsarFSTFZzLuM_11xet_runtime6config10xet_config9XetConfigECs3mNRJm2NnC8_19log_test_executable(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(976) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39)
  %.val15.i = load i64, ptr %i.a, align 8, !alias.scope !39 ; 2 uses
  %i.b = icmp eq i64 %.val15.i, 0
  br i1 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3mNRJm2NnC8_19log_test_executable.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.val16.i = load ptr, ptr %i.c, align 8, !alias.scope !39, !nonnull !5, !noundef !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val16.i, i64 noundef %.val15.i, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !39
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3mNRJm2NnC8_19log_test_executable.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3mNRJm2NnC8_19log_test_executable.exit.i: ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val11.i = load i64, ptr %i.d, align 8, !alias.scope !39 ; 2 uses
  %i.e = icmp eq i64 %.val11.i, 0
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3mNRJm2NnC8_19log_test_executable.exit18.i, label %bb.c

bb.c:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3mNRJm2NnC8_19log_test_executable.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.val12.i = load ptr, ptr %i.f, align 8, !alias.scope !39, !nonnull !5, !noundef !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val12.i, i64 noundef %.val11.i, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !39
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3mNRJm2NnC8_19log_test_executable.exit18.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3mNRJm2NnC8_19log_test_executable.exit18.i: ; preds = %bb.c, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3mNRJm2NnC8_19log_test_executable.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.val7.i = load i64, ptr %i.g, align 8, !alias.scope !39 ; 2 uses
  %i.h = icmp eq i64 %.val7.i, 0
  br i1 %i.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3mNRJm2NnC8_19log_test_executable.exit20.i, label %bb.d

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3mNRJm2NnC8_19log_test_executable.exit18.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.val8.i = load ptr, ptr %i.i, align 8, !alias.scope !39, !nonnull !5, !noundef !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i, i64 noundef %.val7.i, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !39
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3mNRJm2NnC8_19log_test_executable.exit20.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3mNRJm2NnC8_19log_test_executable.exit20.i: ; preds = %bb.d, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3mNRJm2NnC8_19log_test_executable.exit18.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.val.i = load i64, ptr %i.j, align 8, !alias.scope !39 ; 2 uses
  %i.k = icmp eq i64 %.val.i, 0
  br i1 %i.k, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsarFSTFZzLuM_11xet_runtime6config6groups4data16ConfigValueGroupECs3mNRJm2NnC8_19log_test_executable.exit, label %bb.e

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3mNRJm2NnC8_19log_test_executable.exit20.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 160
  %.val4.i = load ptr, ptr %i.l, align 8, !alias.scope !39, !nonnull !5, !noundef !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !39
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsarFSTFZzLuM_11xet_runtime6config6groups4data16ConfigValueGroupECs3mNRJm2NnC8_19log_test_executable.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsarFSTFZzLuM_11xet_runtime6config6groups4data16ConfigValueGroupECs3mNRJm2NnC8_19log_test_executable.exit: ; preds = %bb.e, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3mNRJm2NnC8_19log_test_executable.exit20.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 272
  %.val = load i64, ptr %i.m, align 8             ; 2 uses
  %i.n = icmp eq i64 %.val, 0
  br i1 %i.n, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsarFSTFZzLuM_11xet_runtime6config6groups5shard16ConfigValueGroupECs3mNRJm2NnC8_19log_test_executable.exit27, label %bb.f

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsarFSTFZzLuM_11xet_runtime6config6groups4data16ConfigValueGroupECs3mNRJm2NnC8_19log_test_executable.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 280
  %.val10 = load ptr, ptr %i.o, align 8, !nonnull !5, !noundef !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val10, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #21
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsarFSTFZzLuM_11xet_runtime6config6groups5shard16ConfigValueGroupECs3mNRJm2NnC8_19log_test_executable.exit27

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsarFSTFZzLuM_11xet_runtime6config6groups5shard16ConfigValueGroupECs3mNRJm2NnC8_19log_test_executable.exit27: ; preds = %bb.f, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsarFSTFZzLuM_11xet_runtime6config6groups4data16ConfigValueGroupECs3mNRJm2NnC8_19log_test_executable.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 472
  %.val13 = load i64, ptr %i.p, align 8, !range !7, !noundef !5 ; 2 uses
  %i.q = icmp sgt i64 %.val13, 0
  br i1 %i.q, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsarFSTFZzLuM_11xet_runtime6config6groups6client16ConfigValueGroupECs3mNRJm2NnC8_19log_test_executable.exit30

bb.g:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsarFSTFZzLuM_11xet_runtime6config6groups5shard16ConfigValueGroupECs3mNRJm2NnC8_19log_test_executable.exit27
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 480
  %.val14 = load ptr, ptr %i.r, align 8, !nonnull !5, !noundef !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val14, i64 noundef %.val13, i64 noundef range(i64 1, -9223372036854775807) 1) #21
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsarFSTFZzLuM_11xet_runtime6config6groups6client16ConfigValueGroupECs3mNRJm2NnC8_19log_test_executable.exit30

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsarFSTFZzLuM_11xet_runtime6config6groups6client16ConfigValueGroupECs3mNRJm2NnC8_19log_test_executable.exit30: ; preds = %bb.g, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsarFSTFZzLuM_11xet_runtime6config6groups5shard16ConfigValueGroupECs3mNRJm2NnC8_19log_test_executable.exit27
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 328
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 352
  %.val9.i = load i64, ptr %i.t, align 8, !range !7, !alias.scope !40, !noundef !5 ; 2 uses
  %i.u = icmp sgt i64 %.val9.i, 0
  br i1 %i.u, label %bb.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs3mNRJm2NnC8_19log_test_executable.exit.i

bb.h:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsarFSTFZzLuM_11xet_runtime6config6groups6client16ConfigValueGroupECs3mNRJm2NnC8_19log_test_executable.exit30
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 360
  %.val10.i = load ptr, ptr %i.v, align 8, !alias.scope !40, !nonnull !5, !noundef !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val10.i, i64 noundef %.val9.i, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !40
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs3mNRJm2NnC8_19log_test_executable.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs3mNRJm2NnC8_19log_test_executable.exit.i: ; preds = %bb.h, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsarFSTFZzLuM_11xet_runtime6config6groups6client16ConfigValueGroupECs3mNRJm2NnC8_19log_test_executable.exit30
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 376
  %.val5.i = load i64, ptr %i.w, align 8, !range !7, !alias.scope !40, !noundef !5 ; 2 uses
  %i.x = icmp sgt i64 %.val5.i, 0
  br i1 %i.x, label %bb.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs3mNRJm2NnC8_19log_test_executable.exit16.i

bb.i:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs3mNRJm2NnC8_19log_test_executable.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 384
  %.val6.i = load ptr, ptr %i.y, align 8, !alias.scope !40, !nonnull !5, !noundef !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i, i64 noundef %.val5.i, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !40
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs3mNRJm2NnC8_19log_test_executable.exit16.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs3mNRJm2NnC8_19log_test_executable.exit16.i: ; preds = %bb.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs3mNRJm2NnC8_19log_test_executable.exit.i
  %.val.i31 = load i64, ptr %i.s, align 8, !alias.scope !40 ; 2 uses
  %i.z = icmp eq i64 %.val.i31, 0
  br i1 %i.z, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsarFSTFZzLuM_11xet_runtime6config6groups3log16ConfigValueGroupECs3mNRJm2NnC8_19log_test_executable.exit, label %bb.j

bb.j:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs3mNRJm2NnC8_19log_test_executable.exit16.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 336
  %.val2.i = load ptr, ptr %i.aa, align 8, !alias.scope !40, !nonnull !5, !noundef !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef %.val.i31, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !40
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsarFSTFZzLuM_11xet_runtime6config6groups3log16ConfigValueGroupECs3mNRJm2NnC8_19log_test_executable.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsarFSTFZzLuM_11xet_runtime6config6groups3log16ConfigValueGroupECs3mNRJm2NnC8_19log_test_executable.exit: ; preds = %bb.j, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs3mNRJm2NnC8_19log_test_executable.exit16.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val17 = load i64, ptr %i.ab, align 8          ; 2 uses
  %i.ac = icmp eq i64 %.val17, 0
  br i1 %i.ac, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsarFSTFZzLuM_11xet_runtime6config6groups4xorb16ConfigValueGroupECs3mNRJm2NnC8_19log_test_executable.exit32, label %bb.k

bb.k:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsarFSTFZzLuM_11xet_runtime6config6groups3log16ConfigValueGroupECs3mNRJm2NnC8_19log_test_executable.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val18 = load ptr, ptr %i.ad, align 8, !nonnull !5, !noundef !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val18, i64 noundef %.val17, i64 noundef range(i64 1, -9223372036854775807) 1) #21
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsarFSTFZzLuM_11xet_runtime6config6groups4xorb16ConfigValueGroupECs3mNRJm2NnC8_19log_test_executable.exit32

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsarFSTFZzLuM_11xet_runtime6config6groups4xorb16ConfigValueGroupECs3mNRJm2NnC8_19log_test_executable.exit32: ; preds = %bb.k, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsarFSTFZzLuM_11xet_runtime6config6groups3log16ConfigValueGroupECs3mNRJm2NnC8_19log_test_executable.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 448
  %.val21 = load i64, ptr %i.ae, align 8          ; 2 uses
  %i.af = icmp eq i64 %.val21, 0
  br i1 %i.af, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsarFSTFZzLuM_11xet_runtime6config6groups7session16ConfigValueGroupECs3mNRJm2NnC8_19log_test_executable.exit35, label %bb.l

bb.l:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsarFSTFZzLuM_11xet_runtime6config6groups4xorb16ConfigValueGroupECs3mNRJm2NnC8_19log_test_executable.exit32
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 456
  %.val22 = load ptr, ptr %i.ag, align 8, !nonnull !5, !noundef !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val22, i64 noundef %.val21, i64 noundef range(i64 1, -9223372036854775807) 1) #21
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsarFSTFZzLuM_11xet_runtime6config6groups7session16ConfigValueGroupECs3mNRJm2NnC8_19log_test_executable.exit35

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsarFSTFZzLuM_11xet_runtime6config6groups7session16ConfigValueGroupECs3mNRJm2NnC8_19log_test_executable.exit35: ; preds = %bb.l, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsarFSTFZzLuM_11xet_runtime6config6groups4xorb16ConfigValueGroupECs3mNRJm2NnC8_19log_test_executable.exit32
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 792
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42)
  %i.ai = load i64, ptr %i.ah, align 8, !range !7, !alias.scope !43, !noundef !5 ; 3 uses
  %i.aj = icmp eq i64 %i.ai, -1
  br i1 %i.aj, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsarFSTFZzLuM_11xet_runtime6config6groups14system_monitor16ConfigValueGroupECs3mNRJm2NnC8_19log_test_executable.exit, label %bb.m

bb.m:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsarFSTFZzLuM_11xet_runtime6config6groups7session16ConfigValueGroupECs3mNRJm2NnC8_19log_test_executable.exit35
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44)
  %i.ak = icmp eq i64 %i.ai, 0
  br i1 %i.ak, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 800
  %.val5.i.i.i = load ptr, ptr %i.al, align 8, !alias.scope !45, !nonnull !5, !noundef !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i, i64 noundef %i.ai, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !45
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i: ; preds = %bb.n, %bb.m
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 816
  %.val.i.i.i = load i64, ptr %i.am, align 8, !alias.scope !45 ; 2 uses
  %i.an = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.an, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsarFSTFZzLuM_11xet_runtime6config6groups14system_monitor16ConfigValueGroupECs3mNRJm2NnC8_19log_test_executable.exit, label %bb.o

bb.o:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 824
  %.val1.i.i.i = load ptr, ptr %i.ao, align 8, !alias.scope !45, !nonnull !5, !noundef !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !45
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsarFSTFZzLuM_11xet_runtime6config6groups14system_monitor16ConfigValueGroupECs3mNRJm2NnC8_19log_test_executable.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsarFSTFZzLuM_11xet_runtime6config6groups14system_monitor16ConfigValueGroupECs3mNRJm2NnC8_19log_test_executable.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsarFSTFZzLuM_11xet_runtime6config6groups7session16ConfigValueGroupECs3mNRJm2NnC8_19log_test_executable.exit35, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i, %bb.o
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsarFSTFZzLuM_11xet_runtime7logging6config11LoggingModeECs3mNRJm2NnC8_19log_test_executable(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !46, !noundef !5
  switch i64 %i.a, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs3mNRJm2NnC8_19log_test_executable.exit [
    i64 0, label %bb.b
    i64 1, label %bb.c
  ]

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs3mNRJm2NnC8_19log_test_executable.exit.sink.split: ; preds = %bb.c, %bb.b
  %.val.sink = phi i64 [ %.val2, %bb.b ], [ %.val, %bb.c ]
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val.sink, i64 noundef range(i64 1, -9223372036854775807) 1) #21
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs3mNRJm2NnC8_19log_test_executable.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs3mNRJm2NnC8_19log_test_executable.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs3mNRJm2NnC8_19log_test_executable.exit.sink.split, %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2 = load i64, ptr %i.c, align 8            ; 2 uses
  %i.d = icmp eq i64 %.val2, 0
  br i1 %i.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs3mNRJm2NnC8_19log_test_executable.exit, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs3mNRJm2NnC8_19log_test_executable.exit.sink.split

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load i64, ptr %i.e, align 8             ; 2 uses
  %i.f = icmp eq i64 %.val, 0
  br i1 %i.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs3mNRJm2NnC8_19log_test_executable.exit, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs3mNRJm2NnC8_19log_test_executable.exit.sink.split
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsG258MDvU3F_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECs3mNRJm2NnC8_19log_test_executable(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  tail call void %0(), !inline_history !47
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !48
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs3mNRJm2NnC8_19log_test_executable(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef range(i64 1, 0) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51)
  %i.b = add i64 %2, %1                           ; 2 uses
  %i.c = icmp ult i64 %i.b, %1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !range !6, !alias.scope !51, !noundef !5 ; 2 uses
  %i.e = shl nuw i64 %i.d, 1
  %..i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.b, i64 range(i64 0, -1) %i.e)
  %..i14.i = tail call noundef i64 @llvm.umax.i64(i64 %..i.i, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !51
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.f, align 8, !alias.scope !51
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs3mNRJm2NnC8_19log_test_executable(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.d, ptr %.val13.i, i64 noundef %..i14.i)
  %i.g = load i64, ptr %i.a, align 8, !range !52, !noalias !51, !noundef !5
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %i.i, align 8, !range !53, !noalias !51, !noundef !5
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noalias !51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !51
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.a ], [ %i.l, %bb.c ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.a ], [ %i.j, %bb.c ]
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #22
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.i, align 8, !noalias !51, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !51
  store ptr %i.m, ptr %i.f, align 8, !alias.scope !51
  %i.n = icmp sgt i64 %..i14.i, -1
  tail call void @llvm.assume(i1 %i.n)
  store i64 %..i14.i, ptr %0, align 8, !alias.scope !51
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i32 @_RNCINvNtCsG258MDvU3F_3std2rt10lang_startuE0Cs3mNRJm2NnC8_19log_test_executable(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  tail call fastcc void @_RINvNtNtCsG258MDvU3F_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECs3mNRJm2NnC8_19log_test_executable(ptr noundef nonnull %i.a) #23
  ret i32 0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i32 @_RNSNvYNCINvNtCsG258MDvU3F_3std2rt10lang_startuE0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuE9call_once6vtableCs3mNRJm2NnC8_19log_test_executable(ptr nofree noundef readonly captures(none) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  tail call fastcc void @_RINvNtNtCsG258MDvU3F_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECs3mNRJm2NnC8_19log_test_executable(ptr noundef nonnull readonly %i.a) #23, !noalias !56
  ret i32 0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvCs3mNRJm2NnC8_19log_test_executable4main() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 9 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 10 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [128 x i8], align 8               ; 10 uses
  %i.l = alloca [976 x i8], align 8               ; 6 uses
  %i.m = alloca [64 x i8], align 8                ; 4 uses
  %i.n = alloca [32 x i8], align 8                ; 9 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [32 x i8], align 8                ; 16 uses
  %i.q = alloca [24 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @_RNvNtCsG258MDvU3F_3std3env4args(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.p)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !118)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !119
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !119
  invoke void @_RNvXsc_NtCsG258MDvU3F_3std3envNtB5_4ArgsNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.p)
          to label %bb.c unwind label %bb.b, !noalias !117

bb.b:                                             ; preds = %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.c:                                             ; preds = %bb.a
  %i.s = load i64, ptr %i.d, align 8, !range !7, !noalias !119, !noundef !5 ; 4 uses
  %.not.i = icmp eq i64 %i.s, -1
  br i1 %.not.i, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  store i64 0, ptr %i.q, align 8, !alias.scope !117, !noalias !118
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.t, align 8, !alias.scope !117, !noalias !118
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 0, ptr %i.u, align 8, !alias.scope !117, !noalias !118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !119
  call void @llvm.experimental.noalias.scope.decl(metadata !120)
  call void @llvm.experimental.noalias.scope.decl(metadata !121)
  call void @llvm.experimental.noalias.scope.decl(metadata !122)
  call void @llvm.experimental.noalias.scope.decl(metadata !123)
  call void @llvm.experimental.noalias.scope.decl(metadata !124)
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.val.i.i.i.i.i.i = load ptr, ptr %i.v, align 8, !alias.scope !125, !noalias !117, !nonnull !5, !noundef !5 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.w, align 8, !alias.scope !125, !noalias !117, !nonnull !5, !noundef !5 ; 2 uses
  %i.x = ptrtoint ptr %.val1.i.i.i.i.i.i to i64
  %i.y = ptrtoint ptr %.val.i.i.i.i.i.i to i64
  %i.z = sub nuw i64 %i.x, %i.y
  %i.aa = udiv exact i64 %i.z, 24
  call void @llvm.experimental.noalias.scope.decl(metadata !126)
  %i.ab = icmp eq ptr %.val1.i.i.i.i.i.i, %.val.i.i.i.i.i.i
  br i1 %i.ab, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.d, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i.i.i.i.i
  %.sroa.0.011.i.i.i.i.i.i.i = phi i64 [ %i.ad, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i.i.i.i.i ], [ 0, %bb.d ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i.i.i.i, i64 %.sroa.0.011.i.i.i.i.i.i.i ; 2 uses
  %i.ad = add nuw nsw i64 %.sroa.0.011.i.i.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i.i.i = load i64, ptr %i.ac, align 8, !alias.scope !126, !noalias !127 ; 2 uses
  %i.ae = icmp eq i64 %.val8.i.i.i.i.i.i.i, 0
  br i1 %i.ae, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.af = getelementptr i8, ptr %i.ac, i64 8
  %.val9.i.i.i.i.i.i.i = load ptr, ptr %i.af, align 8, !alias.scope !126, !noalias !127, !nonnull !5, !noundef !5
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i.i, i64 noundef %.val8.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !128
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i.i.i.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i.i
  %i.ag = icmp eq i64 %i.ad, %i.aa
  br i1 %i.ag, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i.i.i.i.i, %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !alias.scope !125, !noalias !117, !noundef !5 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_NtNtCsG258MDvU3F_3std3env4ArgsE9from_iterCs3mNRJm2NnC8_19log_test_executable.exit.thread, label %bb.f

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i.i.i.i
  %i.ak = load ptr, ptr %i.p, align 8, !alias.scope !125, !noalias !117, !nonnull !5, !noundef !5
  %i.al = mul nuw i64 %i.ai, 24
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ak, i64 noundef %i.al, i64 noundef range(i64 1, -9223372036854775807) 8) #21, !noalias !127
  br label %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_NtNtCsG258MDvU3F_3std3env4ArgsE9from_iterCs3mNRJm2NnC8_19log_test_executable.exit.thread

bb.g:                                             ; preds = %bb.l
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.an = icmp eq i64 %i.s, 0
  br i1 %i.an, label %bb.x, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i) ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i, i64 noundef %i.s, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !117
  br label %bb.x

bb.i:                                             ; preds = %bb.c
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !119 ; 3 uses
  %.sroa.6.0..sroa_idx10.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx10.i, align 8, !noalias !119
  %i.ao = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.val.i = load ptr, ptr %i.ao, align 8, !alias.scope !118, !noalias !117, !nonnull !5, !noundef !5
  %i.ap = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.val4.i = load ptr, ptr %i.ap, align 8, !alias.scope !118, !noalias !117, !nonnull !5, !noundef !5
  %i.aq = ptrtoint ptr %.val4.i to i64
  %i.ar = ptrtoint ptr %.val.i to i64
  %i.as = sub nuw i64 %i.aq, %i.ar                ; 2 uses
  %i.at = udiv exact i64 %i.as, 24
  %i.au = call i64 @llvm.umax.i64(i64 %i.at, i64 3) ; 2 uses
  %..i.i = add nuw nsw i64 %i.au, 1               ; 2 uses
  %i.av = mul i64 %..i.i, 24                      ; 3 uses
  %or.cond.i.i.i = icmp ugt i64 %i.as, 9223372036854775776
  br i1 %or.cond.i.i.i, label %bb.l, label %bb.j, !prof !129

bb.j:                                             ; preds = %bb.i
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %bb.m, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %bb.j
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !130
  %i.ax = call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.av, i64 noundef range(i64 1, 9) 8) #21, !noalias !130 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i.i
  %i.az = ptrtoint ptr %i.ax to i64
  br label %bb.m

bb.l:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i.i, %bb.i
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i.i ], [ 0, %bb.i ]
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.av) #22
          to label %.noexc.i unwind label %bb.g, !noalias !117

.noexc.i:                                         ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.k, %bb.j
  %.sroa.10.0.i.i = phi i64 [ %i.az, %bb.k ], [ 8, %bb.j ]
  %.sroa.4.0.i.i = phi i64 [ %..i.i, %bb.k ], [ 0, %bb.j ] ; 2 uses
  %i.ba = inttoptr i64 %.sroa.10.0.i.i to ptr     ; 5 uses
  %i.bb = icmp samesign ult i64 %i.au, %.sroa.4.0.i.i
  call void @llvm.assume(i1 %i.bb)
  store i64 %i.s, ptr %i.ba, align 8, !noalias !117
  %.sroa.416.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr %.sroa.5.0.copyload.i, ptr %.sroa.416.0..sroa_idx.i, align 8, !noalias !117
  %.sroa.517.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store i64 %.sroa.6.0.copyload.i, ptr %.sroa.517.0..sroa_idx.i, align 8, !noalias !117
  store i64 %.sroa.4.0.i.i, ptr %i.e, align 8, !noalias !119
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.ba, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !119
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !119
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !119
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 32, i1 false), !noalias !117
  call void @llvm.experimental.noalias.scope.decl(metadata !131)
  call void @llvm.experimental.noalias.scope.decl(metadata !132)
  call void @llvm.experimental.noalias.scope.decl(metadata !133)
  call void @llvm.experimental.noalias.scope.decl(metadata !134)
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs3mNRJm2NnC8_19log_test_executable.exit.i.i.i, %bb.m
  %i.be = phi ptr [ %i.ca, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs3mNRJm2NnC8_19log_test_executable.exit.i.i.i ], [ %i.ba, %bb.m ]
  %i.bf = phi i64 [ %i.cc, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs3mNRJm2NnC8_19log_test_executable.exit.i.i.i ], [ 1, %bb.m ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !135
  invoke void @_RNvXsc_NtCsG258MDvU3F_3std3envNtB5_4ArgsNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %bb.p unwind label %bb.o, !noalias !136

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i: ; preds = %bb.v, %bb.u, %bb.o
  %.pn.i.i.i = phi { ptr, i32 } [ %i.bg, %bb.o ], [ %i.cd, %bb.u ], [ %i.cd, %bb.v ]
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std3env4ArgsECs3mNRJm2NnC8_19log_test_executable(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c) #24, !noalias !136
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECs3mNRJm2NnC8_19log_test_executable(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #24, !noalias !117
  br label %common.resume

bb.o:                                             ; preds = %bb.n
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.bh = load i64, ptr %i.b, align 8, !range !7, !noalias !135, !noundef !5 ; 4 uses
  %.not.i.i.i = icmp eq i64 %i.bh, -1
  br i1 %.not.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.sroa.5.0.copyload.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !135 ; 3 uses
  %.sroa.6.0.copyload.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !135
  %i.bi = icmp samesign ult i64 %i.bf, 384307168202282326
  call void @llvm.assume(i1 %i.bi)
  %i.bj = load i64, ptr %i.e, align 8, !range !6, !alias.scope !137, !noalias !138, !noundef !5
  %i.bk = icmp eq i64 %i.bf, %i.bj
  br i1 %i.bk, label %bb.w, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs3mNRJm2NnC8_19log_test_executable.exit.i.i.i

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !135
  call void @llvm.experimental.noalias.scope.decl(metadata !139)
  call void @llvm.experimental.noalias.scope.decl(metadata !140)
  call void @llvm.experimental.noalias.scope.decl(metadata !141)
  call void @llvm.experimental.noalias.scope.decl(metadata !142)
  call void @llvm.experimental.noalias.scope.decl(metadata !143)
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.bd, align 8, !alias.scope !144, !noalias !145, !nonnull !5, !noundef !5 ; 3 uses
  %.val1.i.i.i.i.i.i.i.i = load ptr, ptr %i.bc, align 8, !alias.scope !144, !noalias !145, !nonnull !5, !noundef !5 ; 2 uses
  %i.bl = ptrtoint ptr %.val1.i.i.i.i.i.i.i.i to i64
  %i.bm = ptrtoint ptr %.val.i.i.i.i.i.i.i.i to i64
  %i.bn = sub nuw i64 %i.bl, %i.bm
  %i.bo = udiv exact i64 %i.bn, 24
  call void @llvm.experimental.noalias.scope.decl(metadata !146)
  %i.bp = icmp eq ptr %.val1.i.i.i.i.i.i.i.i, %.val.i.i.i.i.i.i.i.i
  br i1 %i.bp, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.r, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i.i.i.i.i.i.i
  %.sroa.0.011.i.i.i.i.i.i.i.i.i = phi i64 [ %i.br, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i.i.i.i.i.i.i ], [ 0, %bb.r ] ; 2 uses
  %i.bq = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i.i.i.i.i.i, i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.br = add nuw nsw i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bq, align 8, !alias.scope !146, !noalias !147 ; 2 uses
  %i.bs = icmp eq i64 %.val8.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bs, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i.i.i.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.bt = getelementptr i8, ptr %i.bq, i64 8
  %.val9.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bt, align 8, !alias.scope !146, !noalias !147, !nonnull !5, !noundef !5
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i.i.i.i, i64 noundef %.val8.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !148
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i.i.i.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.s, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.bu = icmp eq i64 %i.br, %i.bo
  br i1 %i.bu, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i.i.i.i.i.i.i, %bb.r
  %i.bv = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.bw = load i64, ptr %i.bv, align 8, !alias.scope !144, !noalias !145, !noundef !5 ; 2 uses
  %i.bx = icmp eq i64 %i.bw, 0
  br i1 %i.bx, label %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_NtNtCsG258MDvU3F_3std3env4ArgsE9from_iterCs3mNRJm2NnC8_19log_test_executable.exit, label %bb.t

bb.t:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i.i.i.i.i.i
  %i.by = load ptr, ptr %i.c, align 8, !alias.scope !144, !noalias !145, !nonnull !5, !noundef !5
  %i.bz = mul nuw i64 %i.bw, 24
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.by, i64 noundef %i.bz, i64 noundef range(i64 1, -9223372036854775807) 8) #21, !noalias !147
  br label %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_NtNtCsG258MDvU3F_3std3env4ArgsE9from_iterCs3mNRJm2NnC8_19log_test_executable.exit

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs3mNRJm2NnC8_19log_test_executable.exit.i.i.i: ; preds = %._RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs3mNRJm2NnC8_19log_test_executable.exit.i.i_crit_edge.i, %bb.q
  %i.ca = phi ptr [ %.pre.i, %._RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs3mNRJm2NnC8_19log_test_executable.exit.i.i_crit_edge.i ], [ %i.be, %bb.q ] ; 2 uses
  %i.cb = getelementptr inbounds nuw [24 x i8], ptr %i.ca, i64 %i.bf ; 3 uses
  store i64 %i.bh, ptr %i.cb, align 8, !noalias !136
  %.sroa.414.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store ptr %.sroa.5.0.copyload.i.i.i, ptr %.sroa.414.0..sroa_idx.i.i.i, align 8, !noalias !136
  %.sroa.515.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  store i64 %.sroa.6.0.copyload.i.i.i, ptr %.sroa.515.0..sroa_idx.i.i.i, align 8, !noalias !136
  %i.cc = add nuw nsw i64 %i.bf, 1                ; 2 uses
  store i64 %i.cc, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !137, !noalias !138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !135
  br label %bb.n

bb.u:                                             ; preds = %bb.w
  %i.cd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ce = icmp eq i64 %i.bh, 0
  br i1 %i.ce, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i.i.i) ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i.i, i64 noundef %i.bh, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !136
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i

bb.w:                                             ; preds = %bb.q
  %.val3.i.i.i = load ptr, ptr %i.bc, align 8, !alias.scope !149, !noalias !145, !nonnull !5, !noundef !5
  %i.cf = ptrtoint ptr %.val3.i.i.i to i64
  %.val.i.i.i = load ptr, ptr %i.bd, align 8, !alias.scope !149, !noalias !145, !nonnull !5, !noundef !5
  %i.cg = ptrtoint ptr %.val.i.i.i to i64
  %i.ch = sub nuw i64 %i.cf, %i.cg
  %i.ci = udiv exact i64 %i.ch, 24
  %i.cj = add nuw nsw i64 %i.ci, 1
  invoke fastcc void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs3mNRJm2NnC8_19log_test_executable(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.bf, i64 noundef range(i64 1, 0) %i.cj)
          to label %._RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs3mNRJm2NnC8_19log_test_executable.exit.i.i_crit_edge.i unwind label %bb.u

._RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs3mNRJm2NnC8_19log_test_executable.exit.i.i_crit_edge.i: ; preds = %bb.w
  %.pre.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !137, !noalias !138
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs3mNRJm2NnC8_19log_test_executable.exit.i.i.i

common.resume:                                    ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i.i.i, %bb.z, %.thread
  %common.resume.op = phi { ptr, i32 } [ %.pn45, %.thread ], [ %.pn.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i ], [ %.pn.ph.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i.i.i ], [ %.pn.ph.i, %bb.z ]
  resume { ptr, i32 } %common.resume.op

bb.x:                                             ; preds = %bb.h, %bb.g, %bb.b
  %.pn.ph.i = phi { ptr, i32 } [ %i.r, %bb.b ], [ %i.am, %bb.g ], [ %i.am, %bb.h ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !150)
  call void @llvm.experimental.noalias.scope.decl(metadata !151), !noalias !117
  call void @llvm.experimental.noalias.scope.decl(metadata !152), !noalias !117
  call void @llvm.experimental.noalias.scope.decl(metadata !153), !noalias !117
  call void @llvm.experimental.noalias.scope.decl(metadata !154), !noalias !117
  %i.ck = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.val.i.i.i.i.i = load ptr, ptr %i.ck, align 8, !alias.scope !155, !noalias !117, !nonnull !5, !noundef !5 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.val1.i.i.i.i.i = load ptr, ptr %i.cl, align 8, !alias.scope !155, !noalias !117, !nonnull !5, !noundef !5 ; 2 uses
  %i.cm = ptrtoint ptr %.val1.i.i.i.i.i to i64
  %i.cn = ptrtoint ptr %.val.i.i.i.i.i to i64
  %i.co = sub nuw i64 %i.cm, %i.cn
  %i.cp = udiv exact i64 %i.co, 24
  call void @llvm.experimental.noalias.scope.decl(metadata !156), !noalias !117
  %i.cq = icmp eq ptr %.val1.i.i.i.i.i, %.val.i.i.i.i.i
  br i1 %i.cq, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.x, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i.i.i.i
  %.sroa.0.011.i.i.i.i.i.i = phi i64 [ %i.cs, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i.i.i.i ], [ 0, %bb.x ] ; 2 uses
  %i.cr = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i.i.i, i64 %.sroa.0.011.i.i.i.i.i.i ; 2 uses
  %i.cs = add nuw nsw i64 %.sroa.0.011.i.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i.i = load i64, ptr %i.cr, align 8, !alias.scope !156, !noalias !157 ; 2 uses
  %i.ct = icmp eq i64 %.val8.i.i.i.i.i.i, 0
  br i1 %i.ct, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i.i.i.i, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.cu = getelementptr i8, ptr %i.cr, i64 8
  %.val9.i.i.i.i.i.i = load ptr, ptr %i.cu, align 8, !alias.scope !156, !noalias !157, !nonnull !5, !noundef !5
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i, i64 noundef %.val8.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !158
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i.i.i.i: ; preds = %bb.y, %.lr.ph.i.i.i.i.i.i
  %i.cv = icmp eq i64 %i.cs, %i.cp
  br i1 %i.cv, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i.i.i.i, %bb.x
  %i.cw = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.cx = load i64, ptr %i.cw, align 8, !alias.scope !155, !noalias !117, !noundef !5 ; 2 uses
  %i.cy = icmp eq i64 %i.cx, 0
  br i1 %i.cy, label %common.resume, label %bb.z

bb.z:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i.i.i
  %i.cz = load ptr, ptr %i.p, align 8, !alias.scope !155, !noalias !117, !nonnull !5, !noundef !5
  %i.da = mul nuw i64 %i.cx, 24
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cz, i64 noundef %i.da, i64 noundef range(i64 1, -9223372036854775807) 8) #21, !noalias !157
  br label %common.resume

_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_NtNtCsG258MDvU3F_3std3env4ArgsE9from_iterCs3mNRJm2NnC8_19log_test_executable.exit.thread: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i.i.i.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.bi

_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_NtNtCsG258MDvU3F_3std3env4ArgsE9from_iterCs3mNRJm2NnC8_19log_test_executable.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i.i.i.i.i.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !119
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !119
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.db = icmp ult i64 %.pre, 384307168202282326
  call void @llvm.assume(i1 %i.db)
  switch i64 %.pre, label %bb.bh [
    i64 3, label %bb.ac
    i64 0, label %bb.bi
  ]

.thread:                                          ; preds = %.thread.loopexit, %.thread.loopexit.split-lp, %bb.bg, %bb.am, %bb.aa
  %.pn45 = phi { ptr, i32 } [ %i.dc, %bb.aa ], [ %.pn, %bb.am ], [ %i.ft, %bb.bg ], [ %lpad.loopexit, %.thread.loopexit ], [ %lpad.loopexit.split-lp, %.thread.loopexit.split-lp ]
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECs3mNRJm2NnC8_19log_test_executable(ptr noalias nofree noundef align 8 dereferenceable(24) %i.q) #24
  br label %common.resume

bb.aa:                                            ; preds = %.loopexit, %bb.bj, %bb.bi, %bb.bh, %bb.ak
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.ab:                                            ; preds = %bb.bj, %bb.bi, %bb.ao, %bb.ak
  unreachable

bb.ac:                                            ; preds = %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_NtNtCsG258MDvU3F_3std3env4ArgsE9from_iterCs3mNRJm2NnC8_19log_test_executable.exit
  %i.dd = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !nonnull !5, !noundef !5 ; 11 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 56
  %i.dg = load ptr, ptr %i.df, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 64
  %i.di = load i64, ptr %i.dh, align 8, !noundef !5 ; 2 uses
  switch i64 %i.di, label %thread-pre-split.i [
    i64 0, label %.loopexit
    i64 1, label %bb.ad
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.dj = load i8, ptr %i.dg, align 1, !alias.scope !159, !noalias !160, !noundef !5 ; 2 uses
  switch i8 %i.dj, label %bb.ae [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ]

thread-pre-split.i:                               ; preds = %bb.ac
  %.pr.i = load i8, ptr %i.dg, align 1, !alias.scope !159, !noalias !160
  br label %bb.ae

bb.ae:                                            ; preds = %thread-pre-split.i, %bb.ad
  %i.dk = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.dj, %bb.ad ]
  %cond.i = icmp eq i8 %i.dk, 43                  ; 2 uses
  %i.dl = sext i1 %cond.i to i64
  %.sroa.15.0.i = add nsw i64 %i.di, %i.dl        ; 4 uses
  %.sroa.0.0.idx.i = zext i1 %cond.i to i64
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %i.dg, i64 %.sroa.0.0.idx.i ; 2 uses
  %i.dm = icmp samesign ult i64 %.sroa.15.0.i, 17
  br i1 %i.dm, label %.preheader.i, label %.preheader56.i.preheader

.preheader.i:                                     ; preds = %bb.ae
  %.not5366.i = icmp eq i64 %.sroa.15.0.i, 0
  br i1 %.not5366.i, label %.loopexit88, label %.lr.ph.i

.preheader56.i:                                   ; preds = %bb.ah
  %.not52.i = icmp eq i64 %i.do, 0
  br i1 %.not52.i, label %.loopexit88, label %.preheader56.i.preheader

.preheader56.i.preheader:                         ; preds = %bb.ae, %.preheader56.i
  %.sroa.0.1.i144 = phi ptr [ %i.dn, %.preheader56.i ], [ %.sroa.0.0.i, %bb.ae ] ; 2 uses
  %.sroa.15.1.i143 = phi i64 [ %i.do, %.preheader56.i ], [ %.sroa.15.0.i, %bb.ae ]
  %.sroa.042.0.i142 = phi i64 [ %i.dz, %.preheader56.i ], [ 0, %bb.ae ]
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i144, i64 1
  %i.do = add nsw i64 %.sroa.15.1.i143, -1        ; 2 uses
  %i.dp = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.i142, i64 10) ; 2 uses
  %i.dq = extractvalue { i64, i1 } %i.dp, 0       ; 2 uses
  %i.dr = extractvalue { i64, i1 } %i.dp, 1
  %i.ds = load i8, ptr %.sroa.0.1.i144, align 1, !alias.scope !159, !noalias !160, !noundef !5 ; 2 uses
  br i1 %i.dr, label %bb.ag, label %bb.af, !prof !161

bb.af:                                            ; preds = %.preheader56.i.preheader
  %i.dt = zext i8 %i.ds to i32
  %i.du = add nsw i32 %i.dt, -48                  ; 2 uses
  %i.dv = icmp ult i32 %i.du, 10
  br i1 %i.dv, label %bb.ah, label %.loopexit

bb.ag:                                            ; preds = %.preheader56.i.preheader
  %i.dw = add i8 %i.ds, -48
  %i.dx = icmp ult i8 %i.dw, 10
  %spec.select = select i1 %i.dx, i8 2, i8 1
  br label %.loopexit

bb.ah:                                            ; preds = %bb.af
  %i.dy = zext nneg i32 %i.du to i64
  %i.dz = add i64 %i.dq, %i.dy                    ; 3 uses
  %i.ea = icmp ult i64 %i.dz, %i.dq
  br i1 %i.ea, label %.loopexit, label %.preheader56.i, !prof !161

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.ai
  %.sroa.0.269.i = phi ptr [ %i.eh, %bb.ai ], [ %.sroa.0.0.i, %.preheader.i ] ; 2 uses
  %.sroa.15.268.i = phi i64 [ %i.eg, %bb.ai ], [ %.sroa.15.0.i, %.preheader.i ]
  %.sroa.042.267.i = phi i64 [ %i.ej, %bb.ai ], [ 0, %.preheader.i ]
  %i.eb = load i8, ptr %.sroa.0.269.i, align 1, !alias.scope !159, !noalias !160, !noundef !5
  %i.ec = zext i8 %i.eb to i32
  %i.ed = add nsw i32 %i.ec, -48                  ; 2 uses
  %i.ee = icmp ult i32 %i.ed, 10
  br i1 %i.ee, label %bb.ai, label %.loopexit

bb.ai:                                            ; preds = %.lr.ph.i
  %i.ef = mul i64 %.sroa.042.267.i, 10
  %i.eg = add nsw i64 %.sroa.15.268.i, -1         ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i, i64 1
  %i.ei = zext nneg i32 %i.ed to i64
  %i.ej = add i64 %i.ef, %i.ei                    ; 2 uses
  %.not53.i = icmp eq i64 %i.eg, 0
  br i1 %.not53.i, label %.loopexit88, label %.lr.ph.i

.loopexit:                                        ; preds = %bb.af, %bb.ah, %.lr.ph.i, %bb.ag, %bb.ac, %bb.ad, %bb.ad
  %.sroa.4.0.ph = phi i8 [ 1, %bb.ad ], [ %spec.select, %bb.ag ], [ 1, %bb.ad ], [ 0, %bb.ac ], [ 1, %.lr.ph.i ], [ 1, %bb.af ], [ 2, %bb.ah ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !162
  store i8 %.sroa.4.0.ph, ptr %i.a, align 1, !noalias !162
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 26, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #25
          to label %.noexc unwind label %bb.aa

.noexc:                                           ; preds = %.loopexit
  unreachable

.loopexit88:                                      ; preds = %.preheader56.i, %bb.ai, %.preheader.i
  %.sroa.1158.0 = phi i64 [ %i.ej, %bb.ai ], [ 0, %.preheader.i ], [ %i.dz, %.preheader56.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.ek = getelementptr inbounds nuw i8, ptr %i.de, i64 32
  %i.el = load ptr, ptr %i.ek, align 8, !nonnull !5, !noundef !5
  %i.em = getelementptr inbounds nuw i8, ptr %i.de, i64 40
  %i.en = load i64, ptr %i.em, align 8, !noundef !5 ; 7 uses
  %.not.i50 = icmp slt i64 %i.en, 0
  br i1 %.not.i50, label %bb.ak, label %bb.aj, !prof !129

bb.aj:                                            ; preds = %.loopexit88
  %i.eo = icmp eq i64 %i.en, 0
  br i1 %i.eo, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs3mNRJm2NnC8_19log_test_executable.exit.thread75, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i: ; preds = %bb.aj
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !163
  %i.ep = call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.en, i64 noundef range(i64 1, 9) 1) #21, !noalias !163 ; 3 uses
  %i.eq = icmp eq ptr %i.ep, null
  br i1 %i.eq, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.loopexit88, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i
  %.sroa.461.0.ph = phi i64 [ 1, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i ], [ 0, %.loopexit88 ]
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.461.0.ph, i64 %i.en) #22
          to label %bb.ab unwind label %bb.aa

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs3mNRJm2NnC8_19log_test_executable.exit.thread75: ; preds = %bb.aj, %bb.al
  %i.er = phi ptr [ %i.ep, %bb.al ], [ inttoptr (i64 1 to ptr), %bb.aj ]
  %i.es = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %i.en, ptr %i.es, align 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.er, ptr %.sroa.424.0..sroa_idx, align 8
  %.sroa.525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store i64 %i.en, ptr %.sroa.525.0..sroa_idx, align 8
  store i64 0, ptr %i.n, align 8
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !164
  %i.et = call noundef dereferenceable_or_null(4) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 4, i64 noundef range(i64 1, 9) 1) #21, !noalias !164 ; 5 uses
  %i.eu = icmp eq ptr %i.et, null
  br i1 %i.eu, label %bb.ao, label %bb.ap

bb.al:                                            ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ep, ptr nonnull align 1 %i.el, i64 %i.en, i1 false)
  br label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs3mNRJm2NnC8_19log_test_executable.exit.thread75

bb.am:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3mNRJm2NnC8_19log_test_executable.exit, %bb.an
  %.pn = phi { ptr, i32 } [ %i.ev, %bb.an ], [ %i.ew, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3mNRJm2NnC8_19log_test_executable.exit ]
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsarFSTFZzLuM_11xet_runtime7logging6config11LoggingModeECs3mNRJm2NnC8_19log_test_executable(ptr noalias nofree noundef align 8 dereferenceable(32) %i.n) #24
  br label %.thread

bb.an:                                            ; preds = %bb.ao
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.ao:                                            ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs3mNRJm2NnC8_19log_test_executable.exit.thread75
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 4) #22
          to label %bb.ab unwind label %bb.an

bb.ap:                                            ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs3mNRJm2NnC8_19log_test_executable.exit.thread75
  store i32 1953719668, ptr %i.et, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  invoke void @_RNvMNtNtCsarFSTFZzLuM_11xet_runtime6config10xet_configNtB2_9XetConfig3new(ptr noalias nofree noundef nonnull sret([976 x i8]) align 8 captures(none) dereferenceable(976) %i.l)
          to label %bb.aq unwind label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3mNRJm2NnC8_19log_test_executable.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3mNRJm2NnC8_19log_test_executable.exit: ; preds = %bb.ap
  %i.ew = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.et, i64 noundef 4, i64 noundef range(i64 1, -9223372036854775807) 1) #21
  br label %bb.am

bb.aq:                                            ; preds = %bb.ap
  invoke void @_RNvMNtNtCsarFSTFZzLuM_11xet_runtime7logging6configNtB2_12LogDirConfig11from_config(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(976) %i.l)
          to label %bb.ar unwind label %bb.bg

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %i.m, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsarFSTFZzLuM_11xet_runtime6config10xet_config9XetConfigECs3mNRJm2NnC8_19log_test_executable(ptr noalias nofree noundef align 8 dereferenceable(976) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store i64 4, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store ptr %i.et, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx105 = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  store i64 4, ptr %.sroa.6.0..sroa_idx105, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 120
  store i8 1, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx106 = getelementptr inbounds nuw i8, ptr %i.k, i64 121
  store i8 1, ptr %.sroa.9.0..sroa_idx106, align 1
  invoke void @_RNvNtNtCsarFSTFZzLuM_11xet_runtime7logging4init4init(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(128) %i.k)
          to label %bb.as unwind label %.thread.loopexit.split-lp

.thread.loopexit:                                 ; preds = %bb.az, %bb.ba, %bb.be, %bb.bd
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.thread.loopexit.split-lp:                        ; preds = %._crit_edge, %bb.ar
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ex = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ey = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.09.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.09.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %exitcond.not145 = icmp eq i64 %.sroa.1158.0, 0
  br i1 %exitcond.not145, label %._crit_edge, label %.lr.ph

bb.at:                                            ; preds = %bb.bd
  %exitcond.not = icmp eq i64 %i.fj, %.sroa.1158.0
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.at, %bb.as
  invoke void @_RNvNtNtCsarFSTFZzLuM_11xet_runtime7logging4init30wait_for_log_directory_cleanup()
          to label %.lr.ph.i.i.i unwind label %.thread.loopexit.split-lp

.lr.ph.i.i.i:                                     ; preds = %._crit_edge
  call void @llvm.experimental.noalias.scope.decl(metadata !165)
  call void @llvm.experimental.noalias.scope.decl(metadata !166)
  %.val8.i.i.i = load i64, ptr %i.de, align 8, !alias.scope !166, !noalias !165 ; 2 uses
  %i.ez = icmp eq i64 %.val8.i.i.i, 0
  br i1 %i.ez, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i57, label %bb.au

bb.au:                                            ; preds = %.lr.ph.i.i.i
  %i.fa = getelementptr i8, ptr %i.de, i64 8
  %.val9.i.i.i = load ptr, ptr %i.fa, align 8, !alias.scope !166, !noalias !165, !nonnull !5, !noundef !5
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i, i64 noundef %.val8.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !167
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i57

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i57: ; preds = %bb.au, %.lr.ph.i.i.i
  %i.fb = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %.val8.i.i.i.1 = load i64, ptr %i.fb, align 8, !alias.scope !166, !noalias !165 ; 2 uses
  %i.fc = icmp eq i64 %.val8.i.i.i.1, 0
  br i1 %i.fc, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i57.1, label %bb.av

bb.av:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i57
  %i.fd = getelementptr i8, ptr %i.de, i64 32
  %.val9.i.i.i.1 = load ptr, ptr %i.fd, align 8, !alias.scope !166, !noalias !165, !nonnull !5, !noundef !5
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.1, i64 noundef %.val8.i.i.i.1, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !167
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i57.1

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i57.1: ; preds = %bb.av, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i57
  %i.fe = getelementptr inbounds nuw i8, ptr %i.de, i64 48
  %.val8.i.i.i.2 = load i64, ptr %i.fe, align 8, !alias.scope !166, !noalias !165 ; 2 uses
  %i.ff = icmp eq i64 %.val8.i.i.i.2, 0
  br i1 %i.ff, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i57.2, label %bb.aw

bb.aw:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i57.1
  %i.fg = getelementptr i8, ptr %i.de, i64 56
  %.val9.i.i.i.2 = load ptr, ptr %i.fg, align 8, !alias.scope !166, !noalias !165, !nonnull !5, !noundef !5
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.2, i64 noundef %.val8.i.i.i.2, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !167
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i57.2

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i57.2: ; preds = %bb.aw, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i57.1
  %.val2.i = load i64, ptr %i.q, align 8, !range !6, !alias.scope !165, !noundef !5 ; 2 uses
  %i.fh = icmp eq i64 %.val2.i, 0
  br i1 %i.fh, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECs3mNRJm2NnC8_19log_test_executable.exit, label %bb.ax

bb.ax:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i57.2
  %i.fi = mul nuw i64 %.val2.i, 24
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.de, i64 noundef %i.fi, i64 noundef range(i64 1, -9223372036854775807) 8) #21, !noalias !165
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECs3mNRJm2NnC8_19log_test_executable.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECs3mNRJm2NnC8_19log_test_executable.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3mNRJm2NnC8_19log_test_executable.exit.i.i.i57.2, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  ret void

.lr.ph:                                           ; preds = %bb.as, %bb.at
  %.sroa.029.0146 = phi i64 [ %i.fj, %bb.at ], [ 0, %bb.as ]
  %i.fj = add i64 %.sroa.029.0146, 1              ; 3 uses
  %i.fk = load atomic i64, ptr @_RNvNtCs94TQx44N27d_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.fl = icmp ult i64 %i.fk, 3
  br i1 %i.fl, label %bb.ay, label %bb.bd

bb.ay:                                            ; preds = %.lr.ph
  %i.fm = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvCs3mNRJm2NnC8_19log_test_executable4main10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.fm, label %bb.az [
    i8 0, label %bb.bd
    i8 1, label %bb.ba
    i8 2, label %bb.ba
  ], !prof !168

bb.az:                                            ; preds = %bb.ay
  %i.fn = invoke noundef i8 @_RNvMNtCs94TQx44N27d_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvCs3mNRJm2NnC8_19log_test_executable4main10___CALLSITE)
          to label %bb.bb unwind label %.thread.loopexit ; 2 uses

bb.ba:                                            ; preds = %bb.ay, %bb.ay, %bb.bb
  %.sroa.07.0 = phi i8 [ %i.fn, %bb.bb ], [ %i.fm, %bb.ay ], [ %i.fm, %bb.ay ]
  %i.fo = load ptr, ptr @_RNvNvCs3mNRJm2NnC8_19log_test_executable4main10___CALLSITE, align 8, !nonnull !5, !align !8, !noundef !5
  %i.fp = invoke noundef zeroext i1 @_RNvNtCs942S7uueXw1_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.fo, i8 noundef %.sroa.07.0)
          to label %bb.bc unwind label %.thread.loopexit

bb.bb:                                            ; preds = %bb.az
  %i.fq = icmp eq i8 %i.fn, 0
  br i1 %i.fq, label %bb.bd, label %bb.ba

bb.bc:                                            ; preds = %bb.ba
  br i1 %i.fp, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bb, %bb.ay, %.lr.ph, %bb.bf, %bb.bc
  invoke void @_RNvNtNtCsG258MDvU3F_3std6thread9functions5sleep(i64 noundef 0, i32 noundef 50000)
          to label %bb.at unwind label %.thread.loopexit

bb.be:                                            ; preds = %bb.bc
  %i.fr = load ptr, ptr @_RNvNvCs3mNRJm2NnC8_19log_test_executable4main10___CALLSITE, align 8, !nonnull !5, !align !8, !noundef !5 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 %i.fj, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.h, ptr %i.g, align 8
  store ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.435.0..sroa_idx, align 8
  store ptr @4, ptr %i.i, align 8
  store ptr %i.g, ptr %i.ex, align 8
  store ptr %i.i, ptr %i.j, align 8
  store ptr @5, ptr %i.ey, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 1, ptr %i.f, align 8
  store ptr %i.j, ptr %.sroa.09.sroa.4.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.09.sroa.5.0..sroa_idx, align 8
  store ptr %i.fs, ptr %.sroa.410.0..sroa_idx, align 8
  invoke void @_RNvMNtCs94TQx44N27d_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.fr, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.f)
          to label %bb.bf unwind label %.thread.loopexit

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.bd

bb.bg:                                            ; preds = %bb.aq
  %i.ft = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.et, i64 noundef 4, i64 noundef range(i64 1, -9223372036854775807) 1) #21
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsarFSTFZzLuM_11xet_runtime7logging6config11LoggingModeECs3mNRJm2NnC8_19log_test_executable(ptr noalias nofree noundef align 8 dereferenceable(32) %i.n) #24
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsarFSTFZzLuM_11xet_runtime6config10xet_config9XetConfigECs3mNRJm2NnC8_19log_test_executable(ptr noalias nofree noundef align 8 dereferenceable(976) %i.l) #24
  br label %.thread

bb.bh:                                            ; preds = %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_NtNtCsG258MDvU3F_3std3env4ArgsE9from_iterCs3mNRJm2NnC8_19log_test_executable.exit
  %i.fu = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.fv = load ptr, ptr %i.fu, align 8, !nonnull !5, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr %i.fv, ptr %i.o, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr @_RNvXsq_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.415.0..sroa_idx, align 8
  invoke void @_RNvNtNtCsG258MDvU3F_3std2io5stdio7__eprint(ptr noundef nonnull @7, ptr noundef nonnull %i.o)
          to label %bb.bj unwind label %bb.aa

bb.bi:                                            ; preds = %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_NtNtCsG258MDvU3F_3std3env4ArgsE9from_iterCs3mNRJm2NnC8_19log_test_executable.exit.thread, %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_NtNtCsG258MDvU3F_3std3env4ArgsE9from_iterCs3mNRJm2NnC8_19log_test_executable.exit
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #22
          to label %bb.ab unwind label %bb.aa

bb.bj:                                            ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  invoke void @_RNvNtCsG258MDvU3F_3std7process4exit(i32 noundef 1) #22
          to label %bb.ab unwind label %bb.aa
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs3mNRJm2NnC8_19log_test_executable(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1) unnamed_addr #5 {
bb.a:
  %i.a = mul nuw nsw i64 %1, 24                   ; 4 uses
  %or.cond = icmp ult i64 %1, 384307168202282326
  br i1 %or.cond, label %bb.b, label %bb.f, !prof !169

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %.0.val, 0
  br i1 %i.b, label %bb.c, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  %i.c = mul nuw i64 %.0.val, 24
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.d = icmp uge i64 %1, %.0.val
  tail call void @llvm.assume(i1 %i.d)
  %i.e = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %i.c, i64 noundef 8, i64 noundef range(i64 0, 9223372036854775801) %i.a) #21
  br label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.f = icmp eq i64 %1, 0
  br i1 %i.f, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21
  %i.g = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.a, i64 noundef range(i64 1, 9) 8) #21
  br label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.e, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit ], [ %i.g, %bb.d ] ; 2 uses
  %i.h = icmp eq ptr %.pn8, null
  br i1 %i.h, label %bb.e, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread

bb.e:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 8, ptr %i.i, align 8
  br label %bb.f

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %.pn8, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit ], [ inttoptr (i64 8 to ptr), %bb.c ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.j, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread
  %.sink13 = phi i64 [ 16, %bb.e ], [ 16, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread ], [ 8, %bb.a ]
  %.sink11 = phi i64 [ %i.a, %bb.e ], [ %i.a, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread ], [ 0, %bb.a ]
  %.sink = phi i64 [ 1, %bb.e ], [ 0, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread ], [ 1, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %.sink13
  store i64 %.sink11, ptr %i.k, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs3mNRJm2NnC8_19log_test_executable(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
switch.lookup:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %.val = load i8, ptr %i.a, align 1, !range !170, !noundef !5 ; 2 uses
  %i.b = zext nneg i8 %.val to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs3mNRJm2NnC8_19log_test_executable, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %.val to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs3mNRJm2NnC8_19log_test_executable.37, i64 %i.c
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs_NtCs94TQx44N27d_12tracing_core8callsiteNtB4_15DefaultCallsiteNtB4_8Callsite8metadata(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !8, !noundef !5
  ret ptr %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsc_NtNtCskKLDkoKarTP_4core3num5errorNtB5_13ParseIntErrorNtNtB9_3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 13, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @15)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsq_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCskKLDkoKarTP_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs94TQx44N27d_12tracing_core8callsite15DefaultCallsiteNtB4_8Callsite15private_type_idCs3mNRJm2NnC8_19log_test_executable(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @24, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #8

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsc_NtCsG258MDvU3F_3std3envNtB5_4ArgsNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #8

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvNtCsG258MDvU3F_3std2rt19lang_start_internal(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), i64 noundef, ptr noundef, i8 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCsG258MDvU3F_3std3env4args(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCsarFSTFZzLuM_11xet_runtime6config10xet_configNtB2_9XetConfig3new(ptr dead_on_unwind noalias nofree noundef writable sret([976 x i8]) align 8 captures(none) dereferenceable(976)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCsarFSTFZzLuM_11xet_runtime7logging6configNtB2_12LogDirConfig11from_config(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(976)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCsarFSTFZzLuM_11xet_runtime7logging4init4init(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(128)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCsarFSTFZzLuM_11xet_runtime7logging4init30wait_for_log_directory_cleanup() unnamed_addr #0

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef range(i8 0, 3) i8 @_RNvMNtCs94TQx44N27d_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCs942S7uueXw1_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(120), i8 noundef range(i8 0, 3)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsl_NtCs94TQx44N27d_12tracing_core5fieldNtNtCskKLDkoKarTP_4core3fmt9ArgumentsNtB5_5Value6record(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCs94TQx44N27d_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(120), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCsG258MDvU3F_3std6thread9functions5sleep(i64 noundef, i32 noundef range(i32 0, 1000000000)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCsG258MDvU3F_3std2io5stdio7__eprint(ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: noreturn nonlazybind uwtable
declare void @_RNvNtCsG258MDvU3F_3std7process4exit(i32 noundef) unnamed_addr #13

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #14

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #15

; Function Attrs: nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable
declare noalias noundef ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr allocptr noundef nonnull, i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #16

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #1

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #18

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtCs94TQx44N27d_12tracing_core8callsiteNtB4_15DefaultCallsiteNtB4_8Callsite12set_interest(ptr noundef nonnull align 8, i8 noundef range(i8 0, 3)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCskKLDkoKarTP_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind
define noundef i32 @main(i32 %0, ptr %1) unnamed_addr #19 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = sext i32 %0 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @_RNvCs3mNRJm2NnC8_19log_test_executable4main, ptr %i.a, align 8
  %i.c = call noundef i64 @_RNvNtCsG258MDvU3F_3std2rt19lang_start_internal(ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @0, i64 noundef %i.b, ptr noundef %1, i8 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = trunc i64 %i.c to i32
  ret i32 %i.d
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { cold nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nonlazybind "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #21 = { nounwind }
attributes #22 = { noreturn }
attributes #23 = { noinline }
attributes #24 = { cold }
attributes #25 = { noinline noreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 2, !"RtLibUseGOT", i32 1}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"rustc version 1.100.0-nightly (bff8e12ff 2026-08-26)"}
!5 = !{}
!6 = !{i64 0, i64 -9223372036854775808}
!7 = !{i64 -1, i64 -9223372036854775808}
!8 = !{i64 8}
!9 = distinct !{!9, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtCsexYYUdYSQU6_5alloc6string6StringECs3mNRJm2NnC8_19log_test_executable"}
!10 = distinct !{!10, !9, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtCsexYYUdYSQU6_5alloc6string6StringECs3mNRJm2NnC8_19log_test_executable: argument 0"}
!11 = !{!10}
!12 = distinct !{!12, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std3env6ArgsOsECs3mNRJm2NnC8_19log_test_executable"}
!13 = distinct !{!13, !12, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std3env6ArgsOsECs3mNRJm2NnC8_19log_test_executable: argument 0"}
!14 = distinct !{!14, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std3sys4args6common4ArgsECs3mNRJm2NnC8_19log_test_executable"}
!15 = distinct !{!15, !14, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std3sys4args6common4ArgsECs3mNRJm2NnC8_19log_test_executable: argument 0"}
!16 = distinct !{!16, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringEECs3mNRJm2NnC8_19log_test_executable"}
!17 = distinct !{!17, !16, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringEECs3mNRJm2NnC8_19log_test_executable: argument 0"}
!18 = distinct !{!18, !"_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3mNRJm2NnC8_19log_test_executable"}
!19 = distinct !{!19, !18, !"_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3mNRJm2NnC8_19log_test_executable: argument 0"}
!20 = distinct !{!20, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs3mNRJm2NnC8_19log_test_executable"}
!21 = distinct !{!21, !20, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs3mNRJm2NnC8_19log_test_executable: argument 0"}
!22 = !{!13}
!23 = !{!15}
!24 = !{!17}
!25 = !{!19}
!26 = !{!19, !17, !15, !13}
!27 = !{!21}
!28 = !{!21, !19, !17, !15, !13}
!29 = distinct !{!29, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsarFSTFZzLuM_11xet_runtime6config6groups4data16ConfigValueGroupECs3mNRJm2NnC8_19log_test_executable"}
!30 = distinct !{!30, !29, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsarFSTFZzLuM_11xet_runtime6config6groups4data16ConfigValueGroupECs3mNRJm2NnC8_19log_test_executable: argument 0"}
!31 = distinct !{!31, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsarFSTFZzLuM_11xet_runtime6config6groups3log16ConfigValueGroupECs3mNRJm2NnC8_19log_test_executable"}
!32 = distinct !{!32, !31, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsarFSTFZzLuM_11xet_runtime6config6groups3log16ConfigValueGroupECs3mNRJm2NnC8_19log_test_executable: argument 0"}
!33 = distinct !{!33, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsarFSTFZzLuM_11xet_runtime6config6groups14system_monitor16ConfigValueGroupECs3mNRJm2NnC8_19log_test_executable"}
!34 = distinct !{!34, !33, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsarFSTFZzLuM_11xet_runtime6config6groups14system_monitor16ConfigValueGroupECs3mNRJm2NnC8_19log_test_executable: argument 0"}
!35 = distinct !{!35, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarFSTFZzLuM_11xet_runtime5utils10file_paths16TemplatedPathBufEECs3mNRJm2NnC8_19log_test_executable"}
!36 = distinct !{!36, !35, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarFSTFZzLuM_11xet_runtime5utils10file_paths16TemplatedPathBufEECs3mNRJm2NnC8_19log_test_executable: argument 0"}
!37 = distinct !{!37, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsarFSTFZzLuM_11xet_runtime5utils10file_paths16TemplatedPathBufECs3mNRJm2NnC8_19log_test_executable"}
!38 = distinct !{!38, !37, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsarFSTFZzLuM_11xet_runtime5utils10file_paths16TemplatedPathBufECs3mNRJm2NnC8_19log_test_executable: argument 0"}
!39 = !{!30}
!40 = !{!32}
!41 = !{!34}
!42 = !{!36}
!43 = !{!36, !34}
!44 = !{!38}
!45 = !{!38, !36, !34}
!46 = !{i64 0, i64 3}
!47 = distinct !{null}
!48 = !{i64 20358389800915894}
!49 = distinct !{!49, !"_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs3mNRJm2NnC8_19log_test_executable"}
!50 = distinct !{!50, !49, !"_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs3mNRJm2NnC8_19log_test_executable: argument 0"}
!51 = !{!50}
!52 = !{i64 0, i64 2}
!53 = !{i64 0, i64 -9223372036854775807}
!54 = distinct !{!54, !"_RNCINvNtCsG258MDvU3F_3std2rt10lang_startuE0Cs3mNRJm2NnC8_19log_test_executable"}
!55 = distinct !{!55, !54, !"_RNCINvNtCsG258MDvU3F_3std2rt10lang_startuE0Cs3mNRJm2NnC8_19log_test_executable: argument 0"}
!56 = !{!55}
!57 = distinct !{!57, !"_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_NtNtCsG258MDvU3F_3std3env4ArgsE9from_iterCs3mNRJm2NnC8_19log_test_executable"}
!58 = distinct !{!58, !57, !"_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_NtNtCsG258MDvU3F_3std3env4ArgsE9from_iterCs3mNRJm2NnC8_19log_test_executable: argument 0"}
!59 = distinct !{!59, !57, !"_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_NtNtCsG258MDvU3F_3std3env4ArgsE9from_iterCs3mNRJm2NnC8_19log_test_executable: argument 1"}
!60 = distinct !{!60, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std3env4ArgsECs3mNRJm2NnC8_19log_test_executable"}
!61 = distinct !{!61, !60, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std3env4ArgsECs3mNRJm2NnC8_19log_test_executable: argument 0"}
!62 = distinct !{!62, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std3env6ArgsOsECs3mNRJm2NnC8_19log_test_executable"}
!63 = distinct !{!63, !62, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std3env6ArgsOsECs3mNRJm2NnC8_19log_test_executable: argument 0"}
!64 = distinct !{!64, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std3sys4args6common4ArgsECs3mNRJm2NnC8_19log_test_executable"}
!65 = distinct !{!65, !64, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std3sys4args6common4ArgsECs3mNRJm2NnC8_19log_test_executable: argument 0"}
!66 = distinct !{!66, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringEECs3mNRJm2NnC8_19log_test_executable"}
!67 = distinct !{!67, !66, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringEECs3mNRJm2NnC8_19log_test_executable: argument 0"}
!68 = distinct !{!68, !"_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3mNRJm2NnC8_19log_test_executable"}
!69 = distinct !{!69, !68, !"_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3mNRJm2NnC8_19log_test_executable: argument 0"}
!70 = distinct !{!70, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs3mNRJm2NnC8_19log_test_executable"}
!71 = distinct !{!71, !70, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs3mNRJm2NnC8_19log_test_executable: argument 0"}
!72 = distinct !{!72, !"_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs3mNRJm2NnC8_19log_test_executable"}
!73 = distinct !{!73, !72, !"_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs3mNRJm2NnC8_19log_test_executable: argument 0"}
!74 = distinct !{!74, !"_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_NtNtCsG258MDvU3F_3std3env4ArgsE11spec_extendCs3mNRJm2NnC8_19log_test_executable"}
!75 = distinct !{!75, !74, !"_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_NtNtCsG258MDvU3F_3std3env4ArgsE11spec_extendCs3mNRJm2NnC8_19log_test_executable: argument 0"}
!76 = distinct !{!76, !74, !"_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_NtNtCsG258MDvU3F_3std3env4ArgsE11spec_extendCs3mNRJm2NnC8_19log_test_executable: argument 1"}
!77 = distinct !{!77, !"_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtB8_6string6StringE16extend_desugaredNtNtCsG258MDvU3F_3std3env4ArgsECs3mNRJm2NnC8_19log_test_executable"}
!78 = distinct !{!78, !77, !"_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtB8_6string6StringE16extend_desugaredNtNtCsG258MDvU3F_3std3env4ArgsECs3mNRJm2NnC8_19log_test_executable: argument 0"}
!79 = distinct !{!79, !77, !"_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtB8_6string6StringE16extend_desugaredNtNtCsG258MDvU3F_3std3env4ArgsECs3mNRJm2NnC8_19log_test_executable: argument 1"}
!80 = distinct !{!80, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std3env4ArgsECs3mNRJm2NnC8_19log_test_executable"}
!81 = distinct !{!81, !80, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std3env4ArgsECs3mNRJm2NnC8_19log_test_executable: argument 0"}
!82 = distinct !{!82, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std3env6ArgsOsECs3mNRJm2NnC8_19log_test_executable"}
!83 = distinct !{!83, !82, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std3env6ArgsOsECs3mNRJm2NnC8_19log_test_executable: argument 0"}
!84 = distinct !{!84, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std3sys4args6common4ArgsECs3mNRJm2NnC8_19log_test_executable"}
!85 = distinct !{!85, !84, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std3sys4args6common4ArgsECs3mNRJm2NnC8_19log_test_executable: argument 0"}
!86 = distinct !{!86, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringEECs3mNRJm2NnC8_19log_test_executable"}
!87 = distinct !{!87, !86, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringEECs3mNRJm2NnC8_19log_test_executable: argument 0"}
!88 = distinct !{!88, !"_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3mNRJm2NnC8_19log_test_executable"}
!89 = distinct !{!89, !88, !"_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3mNRJm2NnC8_19log_test_executable: argument 0"}
!90 = distinct !{!90, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs3mNRJm2NnC8_19log_test_executable"}
!91 = distinct !{!91, !90, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs3mNRJm2NnC8_19log_test_executable: argument 0"}
!92 = distinct !{!92, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std3env4ArgsECs3mNRJm2NnC8_19log_test_executable"}
!93 = distinct !{!93, !92, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std3env4ArgsECs3mNRJm2NnC8_19log_test_executable: argument 0"}
!94 = distinct !{!94, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std3env6ArgsOsECs3mNRJm2NnC8_19log_test_executable"}
!95 = distinct !{!95, !94, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std3env6ArgsOsECs3mNRJm2NnC8_19log_test_executable: argument 0"}
!96 = distinct !{!96, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std3sys4args6common4ArgsECs3mNRJm2NnC8_19log_test_executable"}
!97 = distinct !{!97, !96, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std3sys4args6common4ArgsECs3mNRJm2NnC8_19log_test_executable: argument 0"}
!98 = distinct !{!98, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringEECs3mNRJm2NnC8_19log_test_executable"}
!99 = distinct !{!99, !98, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringEECs3mNRJm2NnC8_19log_test_executable: argument 0"}
!100 = distinct !{!100, !"_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3mNRJm2NnC8_19log_test_executable"}
!101 = distinct !{!101, !100, !"_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3mNRJm2NnC8_19log_test_executable: argument 0"}
!102 = distinct !{!102, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs3mNRJm2NnC8_19log_test_executable"}
!103 = distinct !{!103, !102, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs3mNRJm2NnC8_19log_test_executable: argument 0"}
!104 = distinct !{!104, !"_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl"}
!105 = distinct !{!105, !104, !"_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl: argument 1"}
!106 = distinct !{!106, !104, !"_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl: argument 0"}
!107 = distinct !{!107, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultjNtNtNtB4_3num5error13ParseIntErrorE6expectCs3mNRJm2NnC8_19log_test_executable"}
!108 = distinct !{!108, !107, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultjNtNtNtB4_3num5error13ParseIntErrorE6expectCs3mNRJm2NnC8_19log_test_executable: argument 0"}
!109 = distinct !{!109, !"_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs3mNRJm2NnC8_19log_test_executable"}
!110 = distinct !{!110, !109, !"_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs3mNRJm2NnC8_19log_test_executable: argument 0"}
!111 = distinct !{!111, !"_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs3mNRJm2NnC8_19log_test_executable"}
!112 = distinct !{!112, !111, !"_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs3mNRJm2NnC8_19log_test_executable: argument 0"}
!113 = distinct !{!113, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECs3mNRJm2NnC8_19log_test_executable"}
!114 = distinct !{!114, !113, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECs3mNRJm2NnC8_19log_test_executable: argument 0"}
!115 = distinct !{!115, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtCsexYYUdYSQU6_5alloc6string6StringECs3mNRJm2NnC8_19log_test_executable"}
!116 = distinct !{!116, !115, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtCsexYYUdYSQU6_5alloc6string6StringECs3mNRJm2NnC8_19log_test_executable: argument 0"}
!117 = !{!58}
!118 = !{!59}
!119 = !{!58, !59}
!120 = !{!61}
!121 = !{!63}
!122 = !{!65}
!123 = !{!67}
!124 = !{!69}
!125 = !{!69, !67, !65, !63, !61, !59}
!126 = !{!71}
!127 = !{!69, !67, !65, !63, !61, !58}
!128 = !{!71, !69, !67, !65, !63, !61, !58}
!129 = !{!"branch_weights", i32 2002, i32 2000}
!130 = !{!73, !58}
!131 = !{!75}
!132 = !{!76}
!133 = !{!78}
!134 = !{!79}
!135 = !{!78, !79, !75, !76, !58, !59}
!136 = !{!78, !75, !58}
!137 = !{!78, !75}
!138 = !{!79, !76, !58, !59}
!139 = !{!81}
!140 = !{!83}
!141 = !{!85}
!142 = !{!87}
!143 = !{!89}
!144 = !{!89, !87, !85, !83, !81, !79, !76}
!145 = !{!78, !75, !58, !59}
!146 = !{!91}
!147 = !{!89, !87, !85, !83, !81, !78, !75, !58}
!148 = !{!91, !89, !87, !85, !83, !81, !78, !75, !58}
!149 = !{!79, !76}
!150 = !{!93}
!151 = !{!95}
!152 = !{!97}
!153 = !{!99}
!154 = !{!101}
!155 = !{!101, !99, !97, !95, !93}
!156 = !{!103}
!157 = !{!101, !99, !97, !95, !93, !58}
!158 = !{!103, !101, !99, !97, !95, !93, !58}
!159 = !{!105}
!160 = !{!106}
!161 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!162 = !{!108}
!163 = !{!110}
!164 = !{!112}
!165 = !{!114}
!166 = !{!116}
!167 = !{!116, !114}
!168 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000}
!169 = !{!"branch_weights", i32 2000, i32 2002}
!170 = !{i8 0, i8 6}
end_hunk_0
