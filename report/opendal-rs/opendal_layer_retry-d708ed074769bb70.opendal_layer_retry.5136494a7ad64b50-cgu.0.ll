Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opendal-rs/original/opendal_layer_retry-d708ed074769bb70.opendal_layer_retry.5136494a7ad64b50-cgu.0?download=true
inline.NumInlined: 7
inline.NumDeleted: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [4 x i8] c"Info", align 1, !guid !4
@1 = private unnamed_addr constant [9 x i8] c"CreateDir", align 1, !guid !4
@2 = private unnamed_addr constant [4 x i8] c"Read", align 1, !guid !4
@3 = private unnamed_addr constant [5 x i8] c"Write", align 1, !guid !4
@4 = private unnamed_addr constant [4 x i8] c"Copy", align 1, !guid !4
@5 = private unnamed_addr constant [7 x i8] c"Compose", align 1, !guid !4
@6 = private unnamed_addr constant [6 x i8] c"Rename", align 1, !guid !4
@7 = private unnamed_addr constant [7 x i8] c"Restore", align 1, !guid !4
@8 = private unnamed_addr constant [4 x i8] c"Stat", align 1, !guid !4
@9 = private unnamed_addr constant [6 x i8] c"Delete", align 1, !guid !4
@10 = private unnamed_addr constant [4 x i8] c"List", align 1, !guid !4
@11 = private unnamed_addr constant [7 x i8] c"Presign", align 1, !guid !4
@_RNvCsbBx43SIjCL2_3log20MAX_LOG_LEVEL_FILTER = external local_unnamed_addr global { { { i64 } } }
@12 = private unnamed_addr constant [49 x i8] c"\0Bwill retry \C0\0A (attempt \C0\08) after \C0\0Bs because: \C0\00", align 1, !guid !4
@13 = private unnamed_addr constant [24 x i8] c"layers/retry/src/lib.rs\00", align 1, !guid !4
@14 = private unnamed_addr constant [22 x i8] c"opendal::layers::retry", align 1, !guid !4
@15 = private unnamed_addr constant [19 x i8] c"opendal_layer_retry", align 1, !guid !4
@switch.table._RNvXs2_NtNtCs5XgW7KoffLW_12opendal_core3raw9operationNtB5_9OperationNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt = private unnamed_addr constant [12 x i8] c"\04\09\04\05\04\07\06\07\04\06\04\07", align 8
@switch.table._RNvXs2_NtNtCs5XgW7KoffLW_12opendal_core3raw9operationNtB5_9OperationNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt.4 = private unnamed_addr constant [12 x ptr] [ptr @0, ptr @1, ptr @2, ptr @3, ptr @4, ptr @5, ptr @6, ptr @7, ptr @8, ptr @9, ptr @10, ptr @11], align 8

; Function Attrs: nonlazybind uwtable
define void @_RNvMs1_Cs6YhYfygpSIm_19opendal_layer_retryNtB5_10RetryLayer3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !11 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12)
  tail call void @_RNvCs1njKG4L9aB3_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #8, !noalias !13
  %i.a = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCs1njKG4L9aB3_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef 8) #8, !noalias !13 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvXs0_Cs6YhYfygpSIm_19opendal_layer_retryNtB5_10RetryLayerNtNtCsgxBkk5gSRhY_4core7default7Default7default.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6i54tJFfzR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #9, !noalias !13
  unreachable

_RNvXs0_Cs6YhYfygpSIm_19opendal_layer_retryNtB5_10RetryLayerNtNtCsgxBkk5gSRhY_4core7default7Default7default.exit: ; preds = %bb.a
  store i64 1, ptr %i.a, align 8, !noalias !12
  %.sroa.4.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx6.i, align 8, !noalias !12
  store i64 1, ptr %0, align 8, !alias.scope !12
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 3, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !12
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !12
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 1, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !12
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %.sroa.8.0..sroa_idx.i, align 8, !alias.scope !12
  %.sroa.91.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 60, ptr %.sroa.91.0..sroa_idx.i, align 8, !alias.scope !12
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 0, ptr %.sroa.10.0..sroa_idx.i, align 8, !alias.scope !12
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 -1, ptr %.sroa.12.0..sroa_idx.i, align 8, !alias.scope !12
  %.sroa.133.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  store float 2.000000e+00, ptr %.sroa.133.0..sroa_idx.i, align 8, !alias.scope !12
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i8 0, ptr %.sroa.14.0..sroa_idx.i, align 4, !alias.scope !12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.a, ptr %i.c, align 8, !alias.scope !12
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_Cs6YhYfygpSIm_19opendal_layer_retryNtB5_10RetryLayerNtNtCsgxBkk5gSRhY_4core7default7Default7default(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !16 {
bb.a:
  tail call void @_RNvCs1njKG4L9aB3_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #8, !noalias !17
  %i.a = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCs1njKG4L9aB3_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef 8) #8, !noalias !17 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvNtCs6i54tJFfzR_5alloc5boxed14box_new_uninit.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6i54tJFfzR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #9, !noalias !17
  unreachable

_RNvNtCs6i54tJFfzR_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  store i64 1, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx6, align 8
  store i64 1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 3, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 1, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.91.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 60, ptr %.sroa.91.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 0, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 -1, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store float 2.000000e+00, ptr %.sroa.133.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i8 0, ptr %.sroa.14.0..sroa_idx, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.a, ptr %i.c, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRNtNtNtCs5XgW7KoffLW_12opendal_core5types5error5ErrorNtB6_5Debug3fmtCs6YhYfygpSIm_19opendal_layer_retry(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !18 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !align !19, !noundef !6
  %i.b = tail call noundef zeroext i1 @_RNvXs3_NtNtCs5XgW7KoffLW_12opendal_core5types5errorNtB5_5ErrorNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs2_NtNtCs5XgW7KoffLW_12opendal_core3raw9operationNtB5_9OperationNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !guid !20 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !21, !noundef !6 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs2_NtNtCs5XgW7KoffLW_12opendal_core3raw9operationNtB5_9OperationNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs2_NtNtCs5XgW7KoffLW_12opendal_core3raw9operationNtB5_9OperationNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt.4, i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs6_Cs6YhYfygpSIm_19opendal_layer_retryNtB5_23DefaultRetryInterceptorNtB5_16RetryInterceptor9intercept(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !26 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [96 x i8], align 8                ; 16 uses
  %i.c = alloca [64 x i8], align 8                ; 11 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = load atomic i64, ptr @_RNvCsbBx43SIjCL2_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.f = icmp ult i64 %i.e, 6
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp samesign ugt i64 %i.e, 1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.j = load i64, ptr %1, align 8, !noundef !6
  %i.k = uitofp i64 %i.j to double
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load i32, ptr %i.l, align 8, !range !27, !noundef !6
  %i.n = uitofp nneg i32 %i.m to double
  %i.o = fdiv double %i.n, 1.000000e+09
  %i.p = fadd double %i.o, %i.k
  store double %i.p, ptr %i.d, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.h, ptr %i.c, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs2_NtNtCs5XgW7KoffLW_12opendal_core3raw9operationNtB5_9OperationNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.i, ptr %i.r, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @_RNvXs8_NtNtNtCsgxBkk5gSRhY_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %i.d, ptr %i.s, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr @_RNvXs7_NtNtCsgxBkk5gSRhY_4core3fmt5floatdNtB7_7Display3fmt, ptr %.sroa.410.0..sroa_idx, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store ptr %i.q, ptr %i.t, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store ptr @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRNtNtNtCs5XgW7KoffLW_12opendal_core5types5error5ErrorNtB6_5Debug3fmtCs6YhYfygpSIm_19opendal_layer_retry, ptr %.sroa.414.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !28
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 2, ptr %i.u, align 8, !noalias !28
  %.sroa.422.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr @14, ptr %.sroa.422.0..sroa_idx.i.i, align 8, !noalias !28
  %.sroa.523.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 22, ptr %.sroa.523.0..sroa_idx.i.i, align 8, !noalias !28
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr @12, ptr %i.v, align 8, !noalias !28
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store ptr %i.c, ptr %i.w, align 8, !noalias !28
  store i64 0, ptr %i.b, align 8, !noalias !28
  %.sroa.428.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @15, ptr %.sroa.428.0..sroa_idx.i.i, align 8, !noalias !28
  %.sroa.529.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 19, ptr %.sroa.529.0..sroa_idx.i.i, align 8, !noalias !28
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.x, align 8, !noalias !28
  %.sroa.434.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr @13, ptr %.sroa.434.0..sroa_idx.i.i, align 8, !noalias !28
  %.sroa.535.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 23, ptr %.sroa.535.0..sroa_idx.i.i, align 8, !noalias !28
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i32 1, ptr %i.y, align 8, !noalias !28
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  store i32 272, ptr %i.z, align 4, !noalias !28
  call void @_RNvXs0_NtCsbBx43SIjCL2_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.b), !noalias !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NtCsbBx43SIjCL2_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCs1njKG4L9aB3_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #2

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCs1njKG4L9aB3_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #5

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs6i54tJFfzR_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs3_NtNtCs5XgW7KoffLW_12opendal_core5types5errorNtB5_5ErrorNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtNtCsgxBkk5gSRhY_4core3fmt3num3impmNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs7_NtNtCsgxBkk5gSRhY_4core3fmt5floatdNtB7_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #7

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCs1njKG4L9aB3_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #8 = { nounwind }
attributes #9 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.98.1 (48a229cea 2026-09-01)"}
!4 = !{i64 4616560334824074385}
!5 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!6 = !{}
!7 = distinct !{!7, i1 true, !"_RNvXs0_Cs6YhYfygpSIm_19opendal_layer_retryNtB5_10RetryLayerNtNtCsgxBkk5gSRhY_4core7default7Default7default"}
!8 = distinct !{!8, !7, !"_RNvXs0_Cs6YhYfygpSIm_19opendal_layer_retryNtB5_10RetryLayerNtNtCsgxBkk5gSRhY_4core7default7Default7default: argument 0"}
!9 = distinct !{!9, i1 true, !"_RNvMNtCs6i54tJFfzR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtCs6YhYfygpSIm_19opendal_layer_retry23DefaultRetryInterceptorEE3newB11_"}
!10 = distinct !{!10, !9, !"_RNvMNtCs6i54tJFfzR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtCs6YhYfygpSIm_19opendal_layer_retry23DefaultRetryInterceptorEE3newB11_: argument 0"}
!11 = !{i64 8088785590745050288}
!12 = !{!8}
!13 = !{!10, !8}
!14 = distinct !{!14, i1 true, !"_RNvMNtCs6i54tJFfzR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtCs6YhYfygpSIm_19opendal_layer_retry23DefaultRetryInterceptorEE3newB11_"}
!15 = distinct !{!15, !14, !"_RNvMNtCs6i54tJFfzR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtCs6YhYfygpSIm_19opendal_layer_retry23DefaultRetryInterceptorEE3newB11_: argument 0"}
!16 = !{i64 7160142442396179443}
!17 = !{!15}
!18 = !{i64 -7789354334424584808}
!19 = !{i64 8}
!20 = !{i64 5097287982948175509}
!21 = !{i8 0, i8 12}
!22 = distinct !{!22, i1 true, !"_RINvNtCsbBx43SIjCL2_3log13___private_api3loguNtB2_12GlobalLoggerECs6YhYfygpSIm_19opendal_layer_retry"}
!23 = distinct !{!23, !22, !"_RINvNtCsbBx43SIjCL2_3log13___private_api3loguNtB2_12GlobalLoggerECs6YhYfygpSIm_19opendal_layer_retry: argument 0"}
!24 = distinct !{!24, i1 true, !"_RINvNtCsbBx43SIjCL2_3log13___private_api8log_implNtB2_12GlobalLoggerECs6YhYfygpSIm_19opendal_layer_retry"}
!25 = distinct !{!25, !24, !"_RINvNtCsbBx43SIjCL2_3log13___private_api8log_implNtB2_12GlobalLoggerECs6YhYfygpSIm_19opendal_layer_retry: argument 0"}
!26 = !{i64 1615932340262746445}
!27 = !{i32 0, i32 1000000000}
!28 = !{!25, !23}
end_hunk_0
