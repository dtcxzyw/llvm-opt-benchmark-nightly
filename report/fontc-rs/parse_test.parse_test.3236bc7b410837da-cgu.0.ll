Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/parse_test.parse_test.3236bc7b410837da-cgu.0?download=true
inline.NumInlined: 218
inline.NumDeleted: 130
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvNtCs5Xr050g3D4S_3std2rt10lang_startuE0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceuE9call_once6vtableCs4jhN2sci4pa_10parse_test, ptr @_RNCINvNtCs5Xr050g3D4S_3std2rt10lang_startuE0Cs4jhN2sci4pa_10parse_test, ptr @_RNCINvNtCs5Xr050g3D4S_3std2rt10lang_startuE0Cs4jhN2sci4pa_10parse_test }>, align 8
@1 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCscScJTt9VrQp_6fea_rs5parse6source18FileSystemResolverECs4jhN2sci4pa_10parse_test, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1_NtNtCscScJTt9VrQp_6fea_rs5parse6sourceNtB5_18FileSystemResolverNtB5_14SourceResolver12get_contents, ptr @_RNvXs1_NtNtCscScJTt9VrQp_6fea_rs5parse6sourceNtB5_18FileSystemResolverNtB5_14SourceResolver16resolve_raw_path, ptr @_RNvXs1_NtNtCscScJTt9VrQp_6fea_rs5parse6sourceNtB5_18FileSystemResolverNtB5_14SourceResolver12canonicalize, ptr @_RNvYNtNtNtCscScJTt9VrQp_6fea_rs5parse6source18FileSystemResolverNtB4_14SourceResolver7resolveCs4jhN2sci4pa_10parse_test, ptr @_RNvYNtNtNtCscScJTt9VrQp_6fea_rs5parse6source18FileSystemResolverNtB4_14SourceResolver9type_nameCs4jhN2sci4pa_10parse_test }>, align 8
@2 = private unnamed_addr constant [23 x i8] c"\08\0Aparsed \C0\01/\C0\08 files.\0A\00", align 1
@3 = private unnamed_addr constant [11 x i8] c"\0AFAILURES:\0A", align 1
@4 = private unnamed_addr constant [5 x i8] c"     ", align 1
@5 = private unnamed_addr constant [5 x i8] c"PANIC", align 1
@6 = private unnamed_addr constant [9 x i8] c"\01 \C0\01 \C0\01\0A\00", align 1
@_RNvCsksibNCz2yVN_3log20MAX_LOG_LEVEL_FILTER = external local_unnamed_addr global { { { i64 } } }
@7 = private unnamed_addr constant [14 x i8] c"\09parsing '\C0\01'\00", align 1
@8 = private unnamed_addr constant [29 x i8] c"fea-rs/src/bin/parse_test.rs\00", align 1
@9 = private unnamed_addr constant [10 x i8] c"parse_test", align 1
@10 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @8, [16 x i8] c"\1C\00\00\00\00\00\00\00M\00\00\006\00\00\00" }>, align 8
@11 = private unnamed_addr constant [4 x i8] c"\C0\01\0A\00", align 1
@12 = private unnamed_addr constant [23 x i8] c"\0Aparsed in \C5 \00\00p\02\00\03ms\0A\00", align 1
@13 = private unnamed_addr constant [7 x i8] c"\02  \C0\01\0A\00", align 1
@14 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @8, [16 x i8] c"\1C\00\00\00\00\00\00\00\16\00\00\00#\00\00\00" }>, align 8
@15 = private unnamed_addr constant [36 x i8] c"Please supply a path to a .fea file\0A", align 1
@16 = private unnamed_addr constant [48 x i8] c"\05path \C0' is not an existing .fea file, exiting\0A\00", align 1
@17 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCscScJTt9VrQp_6fea_rs5parse6source15SourceLoadErrorECs4jhN2sci4pa_10parse_test, [16 x i8] c"(\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsx_NtNtCscScJTt9VrQp_6fea_rs5parse6sourceNtB5_15SourceLoadErrorNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt }>, align 8
@18 = private unnamed_addr constant [43 x i8] c"called `Result::unwrap()` on an `Err` value", align 1
@19 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs4jhN2sci4pa_10parse_test, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNtNtCsf3Ta7LF998c_4core2io5errorNtB2_5ErrorNtNtB6_3fmt5Debug3fmt }>, align 8
@20 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArceEECs4jhN2sci4pa_10parse_test, [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsW_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceENtNtCsf3Ta7LF998c_4core3fmt5Debug3fmtCs4jhN2sci4pa_10parse_test }>, align 8
@21 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtCs5Xr050g3D4S_3std4path7PathBufNtB6_5Debug3fmtCs4jhN2sci4pa_10parse_test }>, align 8
@22 = private unnamed_addr constant [15 x i8] c"SourceLoadError", align 1
@23 = private unnamed_addr constant [5 x i8] c"cause", align 1
@24 = private unnamed_addr constant [4 x i8] c"path", align 1
@25 = private unnamed_addr constant [41 x i8] c"fea_rs::parse::source::FileSystemResolver", align 1

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvNtCs5Xr050g3D4S_3std2rt10lang_startuECs4jhN2sci4pa_10parse_test(ptr noundef nonnull %0, i64 noundef %1, ptr noundef %2, i8 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef i64 @_RNvNtCs5Xr050g3D4S_3std2rt19lang_start_internal(ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @0, i64 noundef %1, ptr noundef %2, i8 noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultTNtNtNtCscScJTt9VrQp_6fea_rs5parse4tree9ParseTreeNtNtB14_10diagnostic13DiagnosticSetEINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs4jhN2sci4pa_10parse_test(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !range !5, !noundef !6
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCscScJTt9VrQp_6fea_rs5parse4tree9ParseTreeECs4jhN2sci4pa_10parse_test(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %0)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCscScJTt9VrQp_6fea_rs10diagnostic13DiagnosticSetECs4jhN2sci4pa_10parse_test(ptr noalias nofree noundef align 8 dereferenceable(40) %i.a) #21
          to label %common.resume unwind label %bb.h

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !26, !nonnull !6, !noundef !6 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val1.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !26, !noundef !6 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27)
  %i.f = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.f, label %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs4jhN2sci4pa_10parse_test.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticECs4jhN2sci4pa_10parse_test.exit.i.i.i.i.i
  %.sroa.0.011.i.i.i.i.i = phi i64 [ %i.h, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticECs4jhN2sci4pa_10parse_test.exit.i.i.i.i.i ], [ 0, %bb.d ] ; 2 uses
  %i.g = getelementptr inbounds nuw [48 x i8], ptr %.val.i.i.i, i64 %.sroa.0.011.i.i.i.i.i ; 2 uses
  %i.h = add nuw nsw i64 %.sroa.0.011.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i = load i64, ptr %i.g, align 8, !alias.scope !27, !noalias !28 ; 2 uses
  %i.i = icmp eq i64 %.val8.i.i.i.i.i, 0
  br i1 %i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticECs4jhN2sci4pa_10parse_test.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.j = getelementptr i8, ptr %i.g, i64 8
  %.val9.i.i.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !27, !noalias !28, !nonnull !6, !noundef !6
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i, i64 noundef %.val8.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !29
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticECs4jhN2sci4pa_10parse_test.exit.i.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticECs4jhN2sci4pa_10parse_test.exit.i.i.i.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i
  %i.k = icmp eq i64 %i.h, %.val1.i.i.i
  br i1 %i.k, label %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs4jhN2sci4pa_10parse_test.exit.i.i.i, label %.lr.ph.i.i.i.i.i

_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs4jhN2sci4pa_10parse_test.exit.i.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticECs4jhN2sci4pa_10parse_test.exit.i.i.i.i.i, %bb.d
  %.val2.i.i.i = load i64, ptr %i.a, align 8, !range !7, !alias.scope !26, !noundef !6 ; 2 uses
  %i.l = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.l, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticEECs4jhN2sci4pa_10parse_test.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs4jhN2sci4pa_10parse_test.exit.i.i.i
  %i.m = mul nuw i64 %.val2.i.i.i, 48
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) 8) #22, !noalias !28
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticEECs4jhN2sci4pa_10parse_test.exit.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticEECs4jhN2sci4pa_10parse_test.exit.i.i: ; preds = %bb.f, %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs4jhN2sci4pa_10parse_test.exit.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31)
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !32, !nonnull !6, !noundef !6
  %i.p = atomicrmw add ptr %i.o, i64 -1 release, align 8, !noalias !33
  %i.q = icmp eq i64 %i.p, 1
  br i1 %i.q, label %bb.g, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtNtCscScJTt9VrQp_6fea_rs5parse4tree9ParseTreeNtNtBI_10diagnostic13DiagnosticSetEECs4jhN2sci4pa_10parse_test.exit

bb.g:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticEECs4jhN2sci4pa_10parse_test.exit.i.i
  fence acquire
  tail call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCscScJTt9VrQp_6fea_rs5parse6source10SourceListE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n) #23
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtNtCscScJTt9VrQp_6fea_rs5parse4tree9ParseTreeNtNtBI_10diagnostic13DiagnosticSetEECs4jhN2sci4pa_10parse_test.exit

bb.h:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #24
  unreachable

common.resume:                                    ; preds = %bb.l, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i4.i, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.c ], [ %i.z, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i4.i ], [ %i.z, %bb.l ]
  resume { ptr, i32 } %common.resume.op

bb.i:                                             ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8               ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.s, align 8, !nonnull !6, !align !8, !noundef !6 ; 5 uses
  %i.t = load ptr, ptr %.val1, align 8, !invariant.load !6 ; 2 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.t(ptr noundef nonnull %.val)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.v = load i64, ptr %i.u, align 8, !range !7, !invariant.load !6 ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtNtCscScJTt9VrQp_6fea_rs5parse4tree9ParseTreeNtNtBI_10diagnostic13DiagnosticSetEECs4jhN2sci4pa_10parse_test.exit, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.k
  %i.x = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.y = load i64, ptr %i.x, align 8, !range !34, !invariant.load !6
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.v, i64 noundef range(i64 1, -9223372036854775807) %i.y) #22
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtNtCscScJTt9VrQp_6fea_rs5parse4tree9ParseTreeNtNtBI_10diagnostic13DiagnosticSetEECs4jhN2sci4pa_10parse_test.exit

bb.l:                                             ; preds = %bb.j
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !range !7, !invariant.load !6 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %common.resume, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i4.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i4.i: ; preds = %bb.l
  %i.ad = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !range !34, !invariant.load !6
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.ab, i64 noundef range(i64 1, -9223372036854775807) %i.ae) #22
  br label %common.resume

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtNtCscScJTt9VrQp_6fea_rs5parse4tree9ParseTreeNtNtBI_10diagnostic13DiagnosticSetEECs4jhN2sci4pa_10parse_test.exit: ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i, %bb.k, %bb.g, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticEECs4jhN2sci4pa_10parse_test.exit.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCs5Xr050g3D4S_3std4path7PathBufNtNtNtCscScJTt9VrQp_6fea_rs5parse4tree9ParseTreeEEECs4jhN2sci4pa_10parse_test(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !6 ; 4 uses
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtCs5Xr050g3D4S_3std4path7PathBufNtNtNtCscScJTt9VrQp_6fea_rs5parse4tree9ParseTreeEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs4jhN2sci4pa_10parse_test.exit, label %.lr.ph

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCs5Xr050g3D4S_3std4path7PathBufNtNtNtCscScJTt9VrQp_6fea_rs5parse4tree9ParseTreeEECs4jhN2sci4pa_10parse_test.exit.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECs4jhN2sci4pa_10parse_test.exit.i.i.i
  %i.d = icmp eq i64 %i.f, %.val1
  br i1 %i.d, label %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtCs5Xr050g3D4S_3std4path7PathBufNtNtNtCscScJTt9VrQp_6fea_rs5parse4tree9ParseTreeEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs4jhN2sci4pa_10parse_test.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCs5Xr050g3D4S_3std4path7PathBufNtNtNtCscScJTt9VrQp_6fea_rs5parse4tree9ParseTreeEECs4jhN2sci4pa_10parse_test.exit.i.i
  %.sroa.0.0.i.i7 = phi i64 [ %i.f, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCs5Xr050g3D4S_3std4path7PathBufNtNtNtCscScJTt9VrQp_6fea_rs5parse4tree9ParseTreeEECs4jhN2sci4pa_10parse_test.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [64 x i8], ptr %.val, i64 %.sroa.0.0.i.i7 ; 3 uses
  %i.f = add nuw nsw i64 %.sroa.0.0.i.i7, 1       ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39)
  %.val.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !40 ; 2 uses
  %i.g = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.g, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECs4jhN2sci4pa_10parse_test.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.val1.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !40, !nonnull !6, !noundef !6
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !39
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECs4jhN2sci4pa_10parse_test.exit.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECs4jhN2sci4pa_10parse_test.exit.i.i.i: ; preds = %bb.b, %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCscScJTt9VrQp_6fea_rs5parse4tree9ParseTreeECs4jhN2sci4pa_10parse_test(ptr noalias nofree noundef align 8 dereferenceable(40) %i.i)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCs5Xr050g3D4S_3std4path7PathBufNtNtNtCscScJTt9VrQp_6fea_rs5parse4tree9ParseTreeEECs4jhN2sci4pa_10parse_test.exit.i.i unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph9
  %i.j = add i64 %.sroa.0.1.i.i8, 1               ; 2 uses
  %i.k = icmp eq i64 %i.j, %.val1
  br i1 %i.k, label %.body, label %.lr.ph9

bb.d:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECs4jhN2sci4pa_10parse_test.exit.i.i.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = icmp eq i64 %i.f, %.val1
  br i1 %i.m, label %.body, label %.lr.ph9

.lr.ph9:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i.i8 = phi i64 [ %i.j, %bb.c ], [ %i.f, %bb.d ] ; 2 uses
  %i.n = getelementptr inbounds nuw [64 x i8], ptr %.val, i64 %.sroa.0.1.i.i8
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCs5Xr050g3D4S_3std4path7PathBufNtNtNtCscScJTt9VrQp_6fea_rs5parse4tree9ParseTreeEECs4jhN2sci4pa_10parse_test(ptr noalias nofree noundef align 8 dereferenceable(64) %i.n) #21
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %.lr.ph9
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #24
  unreachable

.body:                                            ; preds = %bb.c, %bb.d
  %.val4 = load i64, ptr %0, align 8, !range !7, !noundef !6 ; 2 uses
  %i.p = icmp eq i64 %.val4, 0
  br i1 %i.p, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecTNtNtCs5Xr050g3D4S_3std4path7PathBufNtNtNtCscScJTt9VrQp_6fea_rs5parse4tree9ParseTreeEEECs4jhN2sci4pa_10parse_test.exit, label %bb.f

bb.f:                                             ; preds = %.body
  %i.q = shl nuw i64 %.val4, 6
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) 8) #22
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecTNtNtCs5Xr050g3D4S_3std4path7PathBufNtNtNtCscScJTt9VrQp_6fea_rs5parse4tree9ParseTreeEEECs4jhN2sci4pa_10parse_test.exit

_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtCs5Xr050g3D4S_3std4path7PathBufNtNtNtCscScJTt9VrQp_6fea_rs5parse4tree9ParseTreeEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs4jhN2sci4pa_10parse_test.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCs5Xr050g3D4S_3std4path7PathBufNtNtNtCscScJTt9VrQp_6fea_rs5parse4tree9ParseTreeEECs4jhN2sci4pa_10parse_test.exit.i.i, %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !7, !noundef !6 ; 2 uses
  %i.r = icmp eq i64 %.val2, 0
  br i1 %i.r, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecTNtNtCs5Xr050g3D4S_3std4path7PathBufNtNtNtCscScJTt9VrQp_6fea_rs5parse4tree9ParseTreeEEECs4jhN2sci4pa_10parse_test.exit6, label %bb.g

bb.g:                                             ; preds = %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtCs5Xr050g3D4S_3std4path7PathBufNtNtNtCscScJTt9VrQp_6fea_rs5parse4tree9ParseTreeEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs4jhN2sci4pa_10parse_test.exit
  %i.s = shl nuw i64 %.val2, 6
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.s, i64 noundef range(i64 1, -9223372036854775807) 8) #22
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecTNtNtCs5Xr050g3D4S_3std4path7PathBufNtNtNtCscScJTt9VrQp_6fea_rs5parse4tree9ParseTreeEEECs4jhN2sci4pa_10parse_test.exit6

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecTNtNtCs5Xr050g3D4S_3std4path7PathBufNtNtNtCscScJTt9VrQp_6fea_rs5parse4tree9ParseTreeEEECs4jhN2sci4pa_10parse_test.exit6: ; preds = %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtCs5Xr050g3D4S_3std4path7PathBufNtNtNtCscScJTt9VrQp_6fea_rs5parse4tree9ParseTreeEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs4jhN2sci4pa_10parse_test.exit, %bb.g
  ret void

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecTNtNtCs5Xr050g3D4S_3std4path7PathBufNtNtNtCscScJTt9VrQp_6fea_rs5parse4tree9ParseTreeEEECs4jhN2sci4pa_10parse_test.exit: ; preds = %bb.f, %.body
  resume { ptr, i32 } %i.l
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCs5Xr050g3D4S_3std4path7PathBufbEEECs4jhN2sci4pa_10parse_test(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val4 = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val5 = load i64, ptr %i.b, align 8, !noundef !6 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43)
  %i.c = icmp eq i64 %.val5, 0
  br i1 %i.c, label %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtCs5Xr050g3D4S_3std4path7PathBufbEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs4jhN2sci4pa_10parse_test.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCs5Xr050g3D4S_3std4path7PathBufbEECs4jhN2sci4pa_10parse_test.exit.i.i
  %.sroa.0.011.i.i = phi i64 [ %i.e, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCs5Xr050g3D4S_3std4path7PathBufbEECs4jhN2sci4pa_10parse_test.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [32 x i8], ptr %.val4, i64 %.sroa.0.011.i.i ; 2 uses
  %i.e = add nuw nsw i64 %.sroa.0.011.i.i, 1      ; 2 uses
  %.val8.i.i = load i64, ptr %i.d, align 8, !alias.scope !43 ; 2 uses
  %i.f = icmp eq i64 %.val8.i.i, 0
  br i1 %i.f, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCs5Xr050g3D4S_3std4path7PathBufbEECs4jhN2sci4pa_10parse_test.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.g = getelementptr i8, ptr %i.d, i64 8
  %.val9.i.i = load ptr, ptr %i.g, align 8, !alias.scope !43, !nonnull !6, !noundef !6
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i, i64 noundef %.val8.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !43
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCs5Xr050g3D4S_3std4path7PathBufbEECs4jhN2sci4pa_10parse_test.exit.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCs5Xr050g3D4S_3std4path7PathBufbEECs4jhN2sci4pa_10parse_test.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.h = icmp eq i64 %i.e, %.val5
  br i1 %i.h, label %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtCs5Xr050g3D4S_3std4path7PathBufbEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs4jhN2sci4pa_10parse_test.exit, label %.lr.ph.i.i

_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtCs5Xr050g3D4S_3std4path7PathBufbEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs4jhN2sci4pa_10parse_test.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCs5Xr050g3D4S_3std4path7PathBufbEECs4jhN2sci4pa_10parse_test.exit.i.i, %bb.a
  %.val = load i64, ptr %0, align 8, !range !7, !noundef !6 ; 2 uses
  %i.i = icmp eq i64 %.val, 0
  br i1 %i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecTNtNtCs5Xr050g3D4S_3std4path7PathBufbEEECs4jhN2sci4pa_10parse_test.exit6, label %bb.c

bb.c:                                             ; preds = %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtCs5Xr050g3D4S_3std4path7PathBufbEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs4jhN2sci4pa_10parse_test.exit
  %i.j = shl nuw i64 %.val, 5
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 8) #22
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecTNtNtCs5Xr050g3D4S_3std4path7PathBufbEEECs4jhN2sci4pa_10parse_test.exit6

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecTNtNtCs5Xr050g3D4S_3std4path7PathBufbEEECs4jhN2sci4pa_10parse_test.exit6: ; preds = %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtCs5Xr050g3D4S_3std4path7PathBufbEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs4jhN2sci4pa_10parse_test.exit, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArceEECs4jhN2sci4pa_10parse_test(ptr noalias nofree noundef align 8 dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !46, !nonnull !6, !noundef !6
  %i.b = atomicrmw add ptr %i.a, i64 -1 release, align 8, !noalias !46
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs4jhN2sci4pa_10parse_test.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  tail call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceE9drop_slowCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) #23
  br label %_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs4jhN2sci4pa_10parse_test.exit

_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs4jhN2sci4pa_10parse_test.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterTNtNtCs5Xr050g3D4S_3std4path7PathBufbEEECs4jhN2sci4pa_10parse_test(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !51, !nonnull !6, !noundef !6 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i = load ptr, ptr %i.b, align 8, !alias.scope !51, !nonnull !6, !noundef !6 ; 2 uses
  %i.c = ptrtoint ptr %.val1.i to i64
  %i.d = ptrtoint ptr %.val.i to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = lshr exact i64 %i.e, 5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52)
  %i.g = icmp eq ptr %.val1.i, %.val.i
  br i1 %i.g, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSTNtNtCs5Xr050g3D4S_3std4path7PathBufbEECs4jhN2sci4pa_10parse_test.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCs5Xr050g3D4S_3std4path7PathBufbEECs4jhN2sci4pa_10parse_test.exit.i.i
  %.sroa.0.011.i.i = phi i64 [ %i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCs5Xr050g3D4S_3std4path7PathBufbEECs4jhN2sci4pa_10parse_test.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw [32 x i8], ptr %.val.i, i64 %.sroa.0.011.i.i ; 2 uses
  %i.i = add nuw nsw i64 %.sroa.0.011.i.i, 1      ; 2 uses
  %.val8.i.i = load i64, ptr %i.h, align 8, !alias.scope !52, !noalias !51 ; 2 uses
  %i.j = icmp eq i64 %.val8.i.i, 0
  br i1 %i.j, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCs5Xr050g3D4S_3std4path7PathBufbEECs4jhN2sci4pa_10parse_test.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.k = getelementptr i8, ptr %i.h, i64 8
  %.val9.i.i = load ptr, ptr %i.k, align 8, !alias.scope !52, !noalias !51, !nonnull !6, !noundef !6
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i, i64 noundef %.val8.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !53
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCs5Xr050g3D4S_3std4path7PathBufbEECs4jhN2sci4pa_10parse_test.exit.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCs5Xr050g3D4S_3std4path7PathBufbEECs4jhN2sci4pa_10parse_test.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.l = icmp eq i64 %i.i, %i.f
  br i1 %i.l, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSTNtNtCs5Xr050g3D4S_3std4path7PathBufbEECs4jhN2sci4pa_10parse_test.exit.i, label %.lr.ph.i.i

end_hunk_0
begin_hunk_1_@_RNvCs4jhN2sci4pa_10parse_test4main:bb.a
  br i1 %i.gt, label %bb.cr, label %bb.ct

bb.bn:                                            ; preds = %bb.bl
  call void @llvm.experimental.noalias.scope.decl(metadata !348)
  call void @llvm.experimental.noalias.scope.decl(metadata !349)
  call void @llvm.experimental.noalias.scope.decl(metadata !350)
  call void @llvm.experimental.noalias.scope.decl(metadata !351)
  %i.gu = load ptr, ptr %i.w, align 8, !alias.scope !352, !noalias !340, !nonnull !6, !noundef !6
  %i.gv = atomicrmw add ptr %i.gu, i64 -1 release, align 8, !noalias !352
  %i.gw = icmp eq i64 %i.gv, 1
  br i1 %i.gw, label %bb.bo, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std2fs7ReadDirECs4jhN2sci4pa_10parse_test.exit80.i

bb.bo:                                            ; preds = %bb.bn
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtNtCs5Xr050g3D4S_3std3sys2fs4unix12InnerReadDirE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.w) #23
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std2fs7ReadDirECs4jhN2sci4pa_10parse_test.exit80.i unwind label %bb.bf

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std2fs7ReadDirECs4jhN2sci4pa_10parse_test.exit80.i: ; preds = %bb.bo, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !340
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !340
  %i.gx = load i64, ptr %i.z, align 8, !noalias !340, !noundef !6
  %i.gy = icmp ult i64 %i.gm, 288230376151711744
  call void @llvm.assume(i1 %i.gy)
  %i.gz = sub i64 %i.gx, %i.gm
  store i64 %i.gz, ptr %i.n, align 8, !noalias !340
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !340
  store ptr %i.n, ptr %i.m, align 8, !noalias !340
  %.sroa.443.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @_RNvXsi_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.443.0..sroa_idx.i, align 8, !noalias !340
  %i.ha = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %i.z, ptr %i.ha, align 8, !noalias !340
  %.sroa.447.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr @_RNvXsi_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.447.0..sroa_idx.i, align 8, !noalias !340
  invoke void @_RNvNtNtCs5Xr050g3D4S_3std2io5stdio6__print(ptr noundef nonnull @2, ptr noundef nonnull %i.m)
          to label %bb.bp unwind label %bb.bf

bb.bp:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std2fs7ReadDirECs4jhN2sci4pa_10parse_test.exit80.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !340
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !340
  %i.hb = icmp eq i64 %i.gm, 0                    ; 2 uses
  br i1 %i.hb, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  invoke void @_RNvNtNtCs5Xr050g3D4S_3std2io5stdio6__print(ptr noundef nonnull @3, ptr noundef nonnull inttoptr (i64 23 to ptr))
          to label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs5Xr050g3D4S_3std4path7PathBufbEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs4jhN2sci4pa_10parse_test.exit.lr.ph.i unwind label %bb.bf

bb.br:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterTNtNtCs5Xr050g3D4S_3std4path7PathBufbEEECs4jhN2sci4pa_10parse_test.exit.i, %bb.bp
  %i.hc = phi i64 [ %i.gj, %bb.bp ], [ %.pre309.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterTNtNtCs5Xr050g3D4S_3std4path7PathBufbEEECs4jhN2sci4pa_10parse_test.exit.i ] ; 2 uses
  %i.hd = phi ptr [ %i.gk, %bb.bp ], [ %.pre.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterTNtNtCs5Xr050g3D4S_3std4path7PathBufbEEECs4jhN2sci4pa_10parse_test.exit.i ] ; 2 uses
  %.sroa.029.2.i = phi i8 [ 1, %bb.bp ], [ 0, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterTNtNtCs5Xr050g3D4S_3std4path7PathBufbEEECs4jhN2sci4pa_10parse_test.exit.i ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !353)
  %.idx.i.i = shl nuw nsw i64 %i.hc, 6
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 %.idx.i.i
  %i.hf = icmp eq i64 %i.hc, 0
  br i1 %i.hf, label %_RNvCs4jhN2sci4pa_10parse_test25look_at_nodes_if_you_want.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.br
  %.sroa.08.sroa.0.sroa.0.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %.sroa.08.sroa.0.sroa.0.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.08.sroa.0.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  %.sroa.08.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  %.sroa.08.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 136
  %.sroa.08.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 152
  %i.hg = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.420.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.424.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.bs

bb.bs:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources7from_fn6FromFnNCNvMs_NtCscScJTt9VrQp_6fea_rs10token_treeNtB1m_4Node11iter_tokens0EECs4jhN2sci4pa_10parse_test.exit31.i.i, %.lr.ph.i.i
  %.sroa.0.032.i.i = phi ptr [ %i.hd, %.lr.ph.i.i ], [ %i.hh, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources7from_fn6FromFnNCNvMs_NtCscScJTt9VrQp_6fea_rs10token_treeNtB1m_4Node11iter_tokens0EECs4jhN2sci4pa_10parse_test.exit31.i.i ] ; 5 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.0.032.i.i, i64 64 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.sroa.0.032.i.i, i64 40
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.0.032.i.i, i64 48
  %i.hk = load i32, ptr %i.hj, align 8, !alias.scope !353, !noundef !6
  %i.hl = zext i32 %i.hk to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !354
  store i64 0, ptr %i.g, align 8, !noalias !354
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.08.sroa.0.sroa.0.sroa.2.0..sroa_idx.i.i, align 8, !noalias !354
  store i64 0, ptr %.sroa.08.sroa.0.sroa.0.sroa.3.0..sroa_idx.i.i, align 8, !noalias !354
  store i64 0, ptr %.sroa.08.sroa.0.sroa.2.0..sroa_idx.i.i, align 8, !noalias !354
  store ptr %i.hi, ptr %.sroa.08.sroa.2.0..sroa_idx.i.i, align 8, !noalias !354
  store i64 0, ptr %.sroa.08.sroa.3.0..sroa_idx.i.i, align 8, !noalias !354
  store i8 1, ptr %.sroa.08.sroa.4.0..sroa_idx.i.i, align 8, !noalias !354
  store i64 %i.hl, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !noalias !354
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.0.032.i.i, i64 8
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.0.032.i.i, i64 16
  br label %.outer

.outer:                                           ; preds = %bb.cd, %bb.bs
  %.sroa.03.0.i.i.ph = phi i1 [ true, %bb.cd ], [ false, %bb.bs ]
  br label %bb.bt

bb.bt:                                            ; preds = %.outer, %bb.bw
  %i.ho = invoke noundef align 8 ptr @_RNvMNtNtCscScJTt9VrQp_6fea_rs10token_tree6cursorNtB2_6Cursor10next_token(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.g)
          to label %bb.bv unwind label %.loopexit.split-lp ; 3 uses

.loopexit.split-lp:                               ; preds = %bb.bt, %bb.ca, %bb.cb
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val29.i.i = load i64, ptr %i.g, align 8, !noalias !354 ; 2 uses
  %i.hp = icmp eq i64 %.val29.i.i, 0
  br i1 %i.hp, label %.body.i, label %bb.bu

bb.bu:                                            ; preds = %.loopexit.split-lp
  %.val30.i.i = load ptr, ptr %.sroa.08.sroa.0.sroa.0.sroa.2.0..sroa_idx.i.i, align 8, !noalias !354, !nonnull !6, !noundef !6
  %i.hq = mul nuw i64 %.val29.i.i, 24
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val30.i.i, i64 noundef %i.hq, i64 noundef range(i64 1, -9223372036854775807) 8) #22
  br label %.body.i

bb.bv:                                            ; preds = %bb.bt
  %.not.i.i = icmp eq ptr %i.ho, null
  br i1 %.not.i.i, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ho, i64 28
  %i.hs = load i16, ptr %i.hr, align 4, !range !355, !noundef !6
  %i.ht = icmp eq i16 %i.hs, 119
  br i1 %i.ht, label %bb.bz, label %bb.bt

bb.bx:                                            ; preds = %bb.bv
  %.val.i.i = load i64, ptr %i.g, align 8, !noalias !354 ; 2 uses
  %i.hu = icmp eq i64 %.val.i.i, 0
  br i1 %i.hu, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources7from_fn6FromFnNCNvMs_NtCscScJTt9VrQp_6fea_rs10token_treeNtB1m_4Node11iter_tokens0EECs4jhN2sci4pa_10parse_test.exit31.i.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %.val28.i.i = load ptr, ptr %.sroa.08.sroa.0.sroa.0.sroa.2.0..sroa_idx.i.i, align 8, !noalias !354, !nonnull !6, !noundef !6
  %i.hv = mul nuw i64 %.val.i.i, 24
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val28.i.i, i64 noundef %i.hv, i64 noundef range(i64 1, -9223372036854775807) 8) #22
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources7from_fn6FromFnNCNvMs_NtCscScJTt9VrQp_6fea_rs10token_treeNtB1m_4Node11iter_tokens0EECs4jhN2sci4pa_10parse_test.exit31.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources7from_fn6FromFnNCNvMs_NtCscScJTt9VrQp_6fea_rs10token_treeNtB1m_4Node11iter_tokens0EECs4jhN2sci4pa_10parse_test.exit31.i.i: ; preds = %bb.by, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !354
  %i.hw = icmp eq ptr %i.hh, %i.he
  br i1 %i.hw, label %_RNvCs4jhN2sci4pa_10parse_test25look_at_nodes_if_you_want.exit.i, label %bb.bs

bb.bz:                                            ; preds = %bb.bw
  br i1 %.sroa.03.0.i.i.ph, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !354
  %i.hx = load ptr, ptr %i.hm, align 8, !alias.scope !353, !nonnull !6, !noundef !6
  %i.hy = load i64, ptr %i.hn, align 8, !alias.scope !353, !noundef !6
  store ptr %i.hx, ptr %i.f, align 8, !noalias !354
  store i64 %i.hy, ptr %i.hg, align 8, !noalias !354
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !354
  store ptr %i.f, ptr %i.e, align 8, !noalias !354
  store ptr @_RNvXs1b_NtCs5Xr050g3D4S_3std4pathNtB6_7DisplayNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.420.0..sroa_idx.i.i, align 8, !noalias !354
  invoke void @_RNvNtNtCs5Xr050g3D4S_3std2io5stdio6__print(ptr noundef nonnull @11, ptr noundef nonnull %i.e)
          to label %bb.cc unwind label %.loopexit.split-lp

bb.cb:                                            ; preds = %bb.cc, %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !354
  store ptr %i.ho, ptr %i.d, align 8, !noalias !354
  store ptr @_RNvXsg_Cs9NoVXegZYB5_8smol_strNtB5_7SmolStrNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.424.0..sroa_idx.i.i, align 8, !noalias !354
  invoke void @_RNvNtNtCs5Xr050g3D4S_3std2io5stdio6__print(ptr noundef nonnull @13, ptr noundef nonnull %i.d)
          to label %bb.cd unwind label %.loopexit.split-lp

bb.cc:                                            ; preds = %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !354
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !354
  br label %bb.cb

bb.cd:                                            ; preds = %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !354
  br label %.outer

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs5Xr050g3D4S_3std4path7PathBufbEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs4jhN2sci4pa_10parse_test.exit.lr.ph.i: ; preds = %bb.bq
  %i.hz = load i64, ptr %i.y, align 8, !range !7, !noalias !340, !noundef !6 ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.gm, 5
  %i.ia = getelementptr inbounds nuw i8, ptr %i.gl, i64 %.idx.i ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !340
  store ptr %i.gl, ptr %i.l, align 8, !noalias !340
  %.sroa.421.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  store ptr %i.gl, ptr %.sroa.421.0..sroa_idx.i, align 8, !noalias !340
  %.sroa.522.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 %i.hz, ptr %.sroa.522.0..sroa_idx.i, align 8, !noalias !340
  %.sroa.623.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %i.ia, ptr %.sroa.623.0..sroa_idx.i, align 8, !noalias !340
  %i.ib = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ic = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.451.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.id = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.455.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  br label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs5Xr050g3D4S_3std4path7PathBufbEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs4jhN2sci4pa_10parse_test.exit.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECs4jhN2sci4pa_10parse_test.exit.i: ; preds = %bb.ci, %bb.ch
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterTNtNtCs5Xr050g3D4S_3std4path7PathBufbEEECs4jhN2sci4pa_10parse_test(ptr noalias nofree noundef align 8 dereferenceable(32) %i.l) #21
  br label %.body.i

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs5Xr050g3D4S_3std4path7PathBufbEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs4jhN2sci4pa_10parse_test.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECs4jhN2sci4pa_10parse_test.exit81.i, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs5Xr050g3D4S_3std4path7PathBufbEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs4jhN2sci4pa_10parse_test.exit.lr.ph.i
  %i.ie = phi ptr [ %i.gl, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs5Xr050g3D4S_3std4path7PathBufbEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs4jhN2sci4pa_10parse_test.exit.lr.ph.i ], [ %i.if, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECs4jhN2sci4pa_10parse_test.exit81.i ] ; 5 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 32 ; 7 uses
  %.sroa.0169.0.copyload.i = load i64, ptr %i.ie, align 8, !noalias !356 ; 5 uses
  %.sroa.7171.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  %.sroa.7171.sroa.0.0.copyload.i = load ptr, ptr %.sroa.7171.0..sroa_idx.i, align 8, !noalias !356 ; 4 uses
  %.not.i9 = icmp eq i64 %.sroa.0169.0.copyload.i, -1
  br i1 %.not.i9, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs5Xr050g3D4S_3std4path7PathBufbEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs4jhN2sci4pa_10parse_test.exit.thread.i, label %bb.ce

bb.ce:                                            ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs5Xr050g3D4S_3std4path7PathBufbEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs4jhN2sci4pa_10parse_test.exit.i
  %.sroa.7171.sroa.5.0..sroa.7171.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ie, i64 16
  %.sroa.7171.sroa.5.0.copyload.i = load i64, ptr %.sroa.7171.sroa.5.0..sroa.7171.0..sroa_idx.sroa_idx.i, align 8, !noalias !356
  %.sroa.7173.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ie, i64 24
  %.sroa.7173.0.copyload.i = load i8, ptr %.sroa.7173.0..sroa_idx.i, align 8, !noalias !356
  %i.ig = trunc nuw i8 %.sroa.7173.0.copyload.i to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !340
  %spec.select.i = select i1 %i.ig, ptr @5, ptr @4
  store ptr %spec.select.i, ptr %i.k, align 8, !noalias !340
  store i64 5, ptr %i.ib, align 8, !noalias !340
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !340
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7171.sroa.0.0.copyload.i) ]
  store ptr %.sroa.7171.sroa.0.0.copyload.i, ptr %i.j, align 8, !noalias !340
  store i64 %.sroa.7171.sroa.5.0.copyload.i, ptr %i.ic, align 8, !noalias !340
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !340
  store ptr %i.k, ptr %i.i, align 8, !noalias !340
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtReNtB6_7Display3fmtCs4jhN2sci4pa_10parse_test, ptr %.sroa.451.0..sroa_idx.i, align 8, !noalias !340
  store ptr %i.j, ptr %i.id, align 8, !noalias !340
  store ptr @_RNvXs1b_NtCs5Xr050g3D4S_3std4pathNtB6_7DisplayNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.455.0..sroa_idx.i, align 8, !noalias !340
  invoke void @_RNvNtNtCs5Xr050g3D4S_3std2io5stdio6__print(ptr noundef nonnull @6, ptr noundef nonnull %i.i)
          to label %bb.cj unwind label %bb.ch

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs5Xr050g3D4S_3std4path7PathBufbEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs4jhN2sci4pa_10parse_test.exit.thread.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECs4jhN2sci4pa_10parse_test.exit81.i, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs5Xr050g3D4S_3std4path7PathBufbEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs4jhN2sci4pa_10parse_test.exit.i
  store ptr %i.if, ptr %.sroa.421.0..sroa_idx.i, align 8, !noalias !340
  %i.ih = ptrtoint ptr %i.ia to i64
  %i.ii = ptrtoint ptr %i.if to i64
  %i.ij = sub nuw i64 %i.ih, %i.ii
  %i.ik = lshr exact i64 %i.ij, 5
  call void @llvm.experimental.noalias.scope.decl(metadata !357)
  %i.il = icmp eq ptr %i.ia, %i.if
  br i1 %i.il, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSTNtNtCs5Xr050g3D4S_3std4path7PathBufbEECs4jhN2sci4pa_10parse_test.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs5Xr050g3D4S_3std4path7PathBufbEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs4jhN2sci4pa_10parse_test.exit.thread.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCs5Xr050g3D4S_3std4path7PathBufbEECs4jhN2sci4pa_10parse_test.exit.i.i.i.i
  %.sroa.0.011.i.i.i.i = phi i64 [ %i.in, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCs5Xr050g3D4S_3std4path7PathBufbEECs4jhN2sci4pa_10parse_test.exit.i.i.i.i ], [ 0, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs5Xr050g3D4S_3std4path7PathBufbEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs4jhN2sci4pa_10parse_test.exit.thread.i ] ; 2 uses
  %i.im = getelementptr inbounds nuw [32 x i8], ptr %i.if, i64 %.sroa.0.011.i.i.i.i ; 2 uses
  %i.in = add nuw nsw i64 %.sroa.0.011.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i = load i64, ptr %i.im, align 8, !alias.scope !357, !noalias !358 ; 2 uses
  %i.io = icmp eq i64 %.val8.i.i.i.i, 0
  br i1 %i.io, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCs5Xr050g3D4S_3std4path7PathBufbEECs4jhN2sci4pa_10parse_test.exit.i.i.i.i, label %bb.cf

bb.cf:                                            ; preds = %.lr.ph.i.i.i.i
  %i.ip = getelementptr i8, ptr %i.im, i64 8
  %.val9.i.i.i.i = load ptr, ptr %i.ip, align 8, !alias.scope !357, !noalias !358, !nonnull !6, !noundef !6
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i, i64 noundef %.val8.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !359
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCs5Xr050g3D4S_3std4path7PathBufbEECs4jhN2sci4pa_10parse_test.exit.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCs5Xr050g3D4S_3std4path7PathBufbEECs4jhN2sci4pa_10parse_test.exit.i.i.i.i: ; preds = %bb.cf, %.lr.ph.i.i.i.i
  %i.iq = icmp eq i64 %i.in, %i.ik
  br i1 %i.iq, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSTNtNtCs5Xr050g3D4S_3std4path7PathBufbEECs4jhN2sci4pa_10parse_test.exit.i.i.i, label %.lr.ph.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSTNtNtCs5Xr050g3D4S_3std4path7PathBufbEECs4jhN2sci4pa_10parse_test.exit.i.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCs5Xr050g3D4S_3std4path7PathBufbEECs4jhN2sci4pa_10parse_test.exit.i.i.i.i, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs5Xr050g3D4S_3std4path7PathBufbEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs4jhN2sci4pa_10parse_test.exit.thread.i
  %i.ir = icmp eq i64 %i.hz, 0
  br i1 %i.ir, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterTNtNtCs5Xr050g3D4S_3std4path7PathBufbEEECs4jhN2sci4pa_10parse_test.exit.i, label %bb.cg

bb.cg:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSTNtNtCs5Xr050g3D4S_3std4path7PathBufbEECs4jhN2sci4pa_10parse_test.exit.i.i.i
  %i.is = shl nuw i64 %i.hz, 5
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gl, i64 noundef %i.is, i64 noundef range(i64 1, -9223372036854775807) 8) #22, !noalias !358
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterTNtNtCs5Xr050g3D4S_3std4path7PathBufbEEECs4jhN2sci4pa_10parse_test.exit.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterTNtNtCs5Xr050g3D4S_3std4path7PathBufbEEECs4jhN2sci4pa_10parse_test.exit.i: ; preds = %bb.cg, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSTNtNtCs5Xr050g3D4S_3std4path7PathBufbEECs4jhN2sci4pa_10parse_test.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !340
  %.pre.i = load ptr, ptr %i.fh, align 8, !noalias !340
  %.pre309.i = load i64, ptr %i.fi, align 8, !noalias !340
  br label %bb.br

bb.ch:                                            ; preds = %bb.ce
  %i.it = landingpad { ptr, i32 }
          cleanup
  store ptr %i.if, ptr %.sroa.421.0..sroa_idx.i, align 8, !noalias !340
  %i.iu = icmp eq i64 %.sroa.0169.0.copyload.i, 0
  br i1 %i.iu, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECs4jhN2sci4pa_10parse_test.exit.i, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7171.sroa.0.0.copyload.i, i64 noundef %.sroa.0169.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECs4jhN2sci4pa_10parse_test.exit.i

bb.cj:                                            ; preds = %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !340
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !340
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !340
  %i.iv = icmp eq i64 %.sroa.0169.0.copyload.i, 0
  br i1 %i.iv, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECs4jhN2sci4pa_10parse_test.exit81.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7171.sroa.0.0.copyload.i, i64 noundef %.sroa.0169.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECs4jhN2sci4pa_10parse_test.exit81.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECs4jhN2sci4pa_10parse_test.exit81.i: ; preds = %bb.ck, %bb.cj
  %i.iw = icmp eq ptr %i.if, %i.ia
  br i1 %i.iw, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs5Xr050g3D4S_3std4path7PathBufbEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs4jhN2sci4pa_10parse_test.exit.thread.i, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs5Xr050g3D4S_3std4path7PathBufbEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs4jhN2sci4pa_10parse_test.exit.i

bb.cl:                                            ; preds = %.thread225.i, %bb.ep, %bb.en, %bb.em, %.body109.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECs4jhN2sci4pa_10parse_test.exit128.i, %bb.bj, %.body.i
  %i.ix = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #24
  unreachable

_RNvCs4jhN2sci4pa_10parse_test25look_at_nodes_if_you_want.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources7from_fn6FromFnNCNvMs_NtCscScJTt9VrQp_6fea_rs10token_treeNtB1m_4Node11iter_tokens0EECs4jhN2sci4pa_10parse_test.exit31.i.i, %bb.br
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCs5Xr050g3D4S_3std4path7PathBufNtNtNtCscScJTt9VrQp_6fea_rs5parse4tree9ParseTreeEEECs4jhN2sci4pa_10parse_test(ptr noalias nofree noundef align 8 dereferenceable(24) %i.x)
          to label %bb.co unwind label %bb.cn

bb.cm:                                            ; preds = %bb.cn, %.body.i
  %.sroa.029.3.i = phi i8 [ %.sroa.029.4.i, %bb.cn ], [ %.sroa.029.0.i, %.body.i ]
  %.pn69.i = phi { ptr, i32 } [ %i.iz, %bb.cn ], [ %.pn67.i, %.body.i ] ; 2 uses
  %i.iy = trunc nuw i8 %.sroa.029.3.i to i1
  br i1 %i.iy, label %bb.ev, label %.body

bb.cn:                                            ; preds = %bb.es, %_RNvCs4jhN2sci4pa_10parse_test25look_at_nodes_if_you_want.exit.i
  %.sroa.029.4.i = phi i8 [ 1, %bb.es ], [ %.sroa.029.2.i, %_RNvCs4jhN2sci4pa_10parse_test25look_at_nodes_if_you_want.exit.i ]
  %i.iz = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

bb.co:                                            ; preds = %_RNvCs4jhN2sci4pa_10parse_test25look_at_nodes_if_you_want.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !340
  %i.ja = trunc nuw i8 %.sroa.029.2.i to i1
  br i1 %i.ja, label %bb.cp, label %.thread

bb.cp:                                            ; preds = %bb.co
  call void @llvm.experimental.noalias.scope.decl(metadata !360)
  %.val4.i.i = load ptr, ptr %i.ff, align 8, !alias.scope !360, !noalias !340, !nonnull !6, !noundef !6 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !361)
  br i1 %i.hb, label %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtCs5Xr050g3D4S_3std4path7PathBufbEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs4jhN2sci4pa_10parse_test.exit.i.i, label %.lr.ph.i.i.i82.i

.lr.ph.i.i.i82.i:                                 ; preds = %bb.cp, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCs5Xr050g3D4S_3std4path7PathBufbEECs4jhN2sci4pa_10parse_test.exit.i.i.i86.i
  %.sroa.0.011.i.i.i83.i = phi i64 [ %i.jc, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCs5Xr050g3D4S_3std4path7PathBufbEECs4jhN2sci4pa_10parse_test.exit.i.i.i86.i ], [ 0, %bb.cp ] ; 2 uses
  %i.jb = getelementptr inbounds nuw [32 x i8], ptr %.val4.i.i, i64 %.sroa.0.011.i.i.i83.i ; 2 uses
  %i.jc = add nuw nsw i64 %.sroa.0.011.i.i.i83.i, 1 ; 2 uses
  %.val8.i.i.i84.i = load i64, ptr %i.jb, align 8, !alias.scope !361, !noalias !360 ; 2 uses
  %i.jd = icmp eq i64 %.val8.i.i.i84.i, 0
  br i1 %i.jd, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCs5Xr050g3D4S_3std4path7PathBufbEECs4jhN2sci4pa_10parse_test.exit.i.i.i86.i, label %bb.cq

bb.cq:                                            ; preds = %.lr.ph.i.i.i82.i
  %i.je = getelementptr i8, ptr %i.jb, i64 8
  %.val9.i.i.i85.i = load ptr, ptr %i.je, align 8, !alias.scope !361, !noalias !360, !nonnull !6, !noundef !6
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i85.i, i64 noundef %.val8.i.i.i84.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !362
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCs5Xr050g3D4S_3std4path7PathBufbEECs4jhN2sci4pa_10parse_test.exit.i.i.i86.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCs5Xr050g3D4S_3std4path7PathBufbEECs4jhN2sci4pa_10parse_test.exit.i.i.i86.i: ; preds = %bb.cq, %.lr.ph.i.i.i82.i
  %i.jf = icmp eq i64 %i.jc, %i.gm
  br i1 %i.jf, label %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtCs5Xr050g3D4S_3std4path7PathBufbEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs4jhN2sci4pa_10parse_test.exit.i.i, label %.lr.ph.i.i.i82.i

_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtCs5Xr050g3D4S_3std4path7PathBufbEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs4jhN2sci4pa_10parse_test.exit.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCs5Xr050g3D4S_3std4path7PathBufbEECs4jhN2sci4pa_10parse_test.exit.i.i.i86.i, %bb.cp
  %.val.i87.i = load i64, ptr %i.y, align 8, !range !7, !alias.scope !360, !noalias !340, !noundef !6 ; 2 uses
  %i.jg = icmp eq i64 %.val.i87.i, 0
  br i1 %i.jg, label %.thread, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCs5Xr050g3D4S_3std4path7PathBufbEEECs4jhN2sci4pa_10parse_test.exit138.sink.split.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCs5Xr050g3D4S_3std4path7PathBufbEEECs4jhN2sci4pa_10parse_test.exit138.sink.split.i: ; preds = %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtCs5Xr050g3D4S_3std4path7PathBufbEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs4jhN2sci4pa_10parse_test.exit.i136.i, %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtCs5Xr050g3D4S_3std4path7PathBufbEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs4jhN2sci4pa_10parse_test.exit.i.i
  %.val.i87.sink.i = phi i64 [ %.val.i137.i, %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtCs5Xr050g3D4S_3std4path7PathBufbEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs4jhN2sci4pa_10parse_test.exit.i136.i ], [ %.val.i87.i, %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtCs5Xr050g3D4S_3std4path7PathBufbEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs4jhN2sci4pa_10parse_test.exit.i.i ]
  %.val4.i.sink.i = phi ptr [ %.val4.i129.i, %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtCs5Xr050g3D4S_3std4path7PathBufbEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs4jhN2sci4pa_10parse_test.exit.i136.i ], [ %.val4.i.i, %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtCs5Xr050g3D4S_3std4path7PathBufbEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs4jhN2sci4pa_10parse_test.exit.i.i ]
  %.sroa.0.0.ph.i = phi ptr [ %.sroa.0.1.i, %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtCs5Xr050g3D4S_3std4path7PathBufbEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs4jhN2sci4pa_10parse_test.exit.i136.i ], [ null, %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtCs5Xr050g3D4S_3std4path7PathBufbEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs4jhN2sci4pa_10parse_test.exit.i.i ]
  %i.jh = shl nuw i64 %.val.i87.sink.i, 5
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i.sink.i, i64 noundef %i.jh, i64 noundef range(i64 1, -9223372036854775807) 8) #22, !noalias !6
  br label %bb.ex

bb.cr:                                            ; preds = %bb.bm
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !340
  call void @llvm.experimental.noalias.scope.decl(metadata !363)
  call void @llvm.experimental.noalias.scope.decl(metadata !364)
  call void @llvm.experimental.noalias.scope.decl(metadata !365)
  call void @llvm.experimental.noalias.scope.decl(metadata !366)
  %i.ji = load ptr, ptr %i.w, align 8, !alias.scope !367, !noalias !340, !nonnull !6, !noundef !6
  %i.jj = atomicrmw add ptr %i.ji, i64 -1 release, align 8, !noalias !367
  %i.jk = icmp eq i64 %i.jj, 1
  br i1 %i.jk, label %bb.cs, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std2fs7ReadDirECs4jhN2sci4pa_10parse_test.exit89.i

bb.cs:                                            ; preds = %bb.cr
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtNtCs5Xr050g3D4S_3std3sys2fs4unix12InnerReadDirE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.w) #23
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std2fs7ReadDirECs4jhN2sci4pa_10parse_test.exit89.i unwind label %bb.bf

bb.ct:                                            ; preds = %bb.bm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.77.0..sroa_idx.i, i64 24, i1 false), !noalias !340
  store ptr %.sroa.03.0.copyload.i, ptr %i.u, align 8, !noalias !340
  store ptr %.sroa.6.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !340
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !340
  invoke void @_RNvMsA_NtCs5Xr050g3D4S_3std2fsNtB5_8DirEntry4path(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.u)
          to label %bb.cu unwind label %.split.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECs4jhN2sci4pa_10parse_test.exit128.i: ; preds = %bb.er, %bb.eq, %bb.em, %bb.ei, %.split.i, %bb.cv
  %.pn62.pn.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i10, %.split.i ], [ %.pn62.i, %bb.cv ], [ %i.my, %bb.ei ], [ %.pn62196.i, %bb.er ], [ %.pn62196.i, %bb.eq ], [ %i.my, %bb.em ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std2fs8DirEntryECs4jhN2sci4pa_10parse_test(ptr noalias nofree noundef align 8 dereferenceable(40) %i.u) #21
          to label %.body93.i unwind label %bb.cl

bb.cu:                                            ; preds = %bb.ct
  %i.jl = load ptr, ptr %i.fp, align 8, !noalias !340, !nonnull !6, !noundef !6 ; 8 uses
  %i.jm = load i64, ptr %i.fq, align 8, !noalias !340, !noundef !6 ; 5 uses
  %i.jn = invoke { ptr, i64 } @_RNvMs16_NtCs5Xr050g3D4S_3std4pathNtB6_4Path9extension(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.jl, i64 noundef %i.jm)
          to label %bb.cw unwind label %.split.thread.i ; 2 uses

bb.cv:                                            ; preds = %.thread225.i, %bb.eo, %bb.en
  %.sroa.028.0.i = phi i1 [ %.sroa.028.2212224229.i, %.thread225.i ], [ %.sroa.028.2.i, %bb.eo ], [ %.sroa.028.2211.i, %bb.en ]
  %.pn62.i = phi { ptr, i32 } [ %.pn59216222230.i, %.thread225.i ], [ %.pn59.i, %bb.eo ], [ %.pn59215.i, %bb.en ] ; 2 uses
  br i1 %.sroa.028.0.i, label %bb.eq, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECs4jhN2sci4pa_10parse_test.exit128.i

.split.thread.i:                                  ; preds = %bb.dd, %bb.cu
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.eq

.split.i:                                         ; preds = %bb.el, %bb.dz, %bb.ct
  %lpad.thr_comm.split-lp.i10 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECs4jhN2sci4pa_10parse_test.exit128.i

bb.cw:                                            ; preds = %bb.cu
  %i.jo = extractvalue { ptr, i64 } %i.jn, 0      ; 3 uses
  %.not58.i = icmp ne ptr %i.jo, null
  %i.jp = extractvalue { ptr, i64 } %i.jn, 1
  %i.jq = icmp eq i64 %i.jp, 3
  %or.cond.i = select i1 %.not58.i, i1 %i.jq, i1 false
  br i1 %or.cond.i, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.jr = load i16, ptr %i.jo, align 1
  %i.js = xor i16 %i.jr, 25958
  %i.jt = getelementptr i8, ptr %i.jo, i64 2
  %i.ju = load i8, ptr %i.jt, align 1
  %i.jv = zext i8 %i.ju to i16
  %i.jw = xor i16 %i.jv, 97
  %i.jx = or i16 %i.js, %i.jw
  %i.jy = icmp ne i16 %i.jx, 0
  %i.jz = zext i1 %i.jy to i32
  %i.ka = icmp eq i32 %i.jz, 0
  br i1 %i.ka, label %bb.dc, label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %.val73.i = load i64, ptr %i.t, align 8, !noalias !340 ; 2 uses
  %i.kb = icmp eq i64 %.val73.i, 0
  br i1 %i.kb, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECs4jhN2sci4pa_10parse_test.exit90.i, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.jl, i64 noundef %.val73.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECs4jhN2sci4pa_10parse_test.exit90.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECs4jhN2sci4pa_10parse_test.exit90.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCscScJTt9VrQp_6fea_rs10diagnostic13DiagnosticSetECs4jhN2sci4pa_10parse_test.exit127.i, %bb.cz, %bb.cy
  %i.kc = phi ptr [ %i.gh, %bb.cz ], [ %i.gh, %bb.cy ], [ %i.mz, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCscScJTt9VrQp_6fea_rs10diagnostic13DiagnosticSetECs4jhN2sci4pa_10parse_test.exit127.i ]
  %i.kd = phi ptr [ %i.gi, %bb.cz ], [ %i.gi, %bb.cy ], [ %i.na, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCscScJTt9VrQp_6fea_rs10diagnostic13DiagnosticSetECs4jhN2sci4pa_10parse_test.exit127.i ]
  %i.ke = phi i64 [ %i.gj, %bb.cz ], [ %i.gj, %bb.cy ], [ %i.nb, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCscScJTt9VrQp_6fea_rs10diagnostic13DiagnosticSetECs4jhN2sci4pa_10parse_test.exit127.i ]
  %i.kf = phi ptr [ %i.gk, %bb.cz ], [ %i.gk, %bb.cy ], [ %i.nc, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCscScJTt9VrQp_6fea_rs10diagnostic13DiagnosticSetECs4jhN2sci4pa_10parse_test.exit127.i ]
  %i.kg = phi ptr [ %i.gl, %bb.cz ], [ %i.gl, %bb.cy ], [ %i.nd, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCscScJTt9VrQp_6fea_rs10diagnostic13DiagnosticSetECs4jhN2sci4pa_10parse_test.exit127.i ]
  %i.kh = phi i64 [ %i.gm, %bb.cz ], [ %i.gm, %bb.cy ], [ %i.ne, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCscScJTt9VrQp_6fea_rs10diagnostic13DiagnosticSetECs4jhN2sci4pa_10parse_test.exit127.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !340
  call void @llvm.experimental.noalias.scope.decl(metadata !368)
  call void @llvm.experimental.noalias.scope.decl(metadata !369)
  call void @llvm.experimental.noalias.scope.decl(metadata !370)
  call void @llvm.experimental.noalias.scope.decl(metadata !371)
  %i.ki = load ptr, ptr %i.u, align 8, !alias.scope !372, !noalias !340, !nonnull !6, !noundef !6
  %i.kj = atomicrmw add ptr %i.ki, i64 -1 release, align 8, !noalias !372
  %i.kk = icmp eq i64 %i.kj, 1
  br i1 %i.kk, label %bb.da, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtNtCs5Xr050g3D4S_3std3sys2fs4unix12InnerReadDirEECs4jhN2sci4pa_10parse_test.exit.i.i.i

bb.da:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECs4jhN2sci4pa_10parse_test.exit90.i
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtNtCs5Xr050g3D4S_3std3sys2fs4unix12InnerReadDirE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.u) #23
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtNtCs5Xr050g3D4S_3std3sys2fs4unix12InnerReadDirEECs4jhN2sci4pa_10parse_test.exit.i.i.i unwind label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.kl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i12 = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !373, !noalias !340, !nonnull !6, !noundef !6 ; 2 uses
  %.val3.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !373, !noalias !340 ; 2 uses
  store i8 0, ptr %.val2.i.i.i12, align 1
  %i.km = icmp eq i64 %.val3.i.i.i, 0
  br i1 %i.km, label %.body93.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i5.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i5.i.i.i.i: ; preds = %bb.db
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i.i12, i64 noundef %.val3.i.i.i, i64 noundef 1) #22
  br label %.body93.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtNtCs5Xr050g3D4S_3std3sys2fs4unix12InnerReadDirEECs4jhN2sci4pa_10parse_test.exit.i.i.i: ; preds = %bb.da, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECs4jhN2sci4pa_10parse_test.exit90.i
  %.val.i.i91.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !373, !noalias !340, !nonnull !6, !noundef !6 ; 2 uses
  %.val1.i.i92.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !373, !noalias !340 ; 2 uses
  store i8 0, ptr %.val.i.i91.i, align 1
  %i.kn = icmp eq i64 %.val1.i.i92.i, 0
  br i1 %i.kn, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std2fs8DirEntryECs4jhN2sci4pa_10parse_test.exit.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i5.i4.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i5.i4.i.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtNtCs5Xr050g3D4S_3std3sys2fs4unix12InnerReadDirEECs4jhN2sci4pa_10parse_test.exit.i.i.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i91.i, i64 noundef %.val1.i.i92.i, i64 noundef 1) #22
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std2fs8DirEntryECs4jhN2sci4pa_10parse_test.exit.i

bb.dc:                                            ; preds = %bb.cx
  %i.ko = load i64, ptr %i.z, align 8, !noalias !340, !noundef !6
  %i.kp = add i64 %i.ko, 1
  store i64 %i.kp, ptr %i.z, align 8, !noalias !340
  %i.kq = load atomic i64, ptr @_RNvCsksibNCz2yVN_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !340 ; 2 uses
  %i.kr = icmp ult i64 %i.kq, 6
  call void @llvm.assume(i1 %i.kr)
  %i.ks = icmp samesign ugt i64 %i.kq, 2
  br i1 %i.ks, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !340
  store ptr %i.jl, ptr %i.s, align 8, !noalias !340
  store i64 %i.jm, ptr %i.fr, align 8, !noalias !340
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !340
  store ptr %i.s, ptr %i.r, align 8, !noalias !340
  store ptr @_RNvXs1b_NtCs5Xr050g3D4S_3std4pathNtB6_7DisplayNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.439.0..sroa_idx.i, align 8, !noalias !340
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !374
  store i64 3, ptr %i.fs, align 8, !noalias !374
  store ptr @9, ptr %.sroa.422.0..sroa_idx.i.i.i, align 8, !noalias !374
  store i64 10, ptr %.sroa.523.0..sroa_idx.i.i.i, align 8, !noalias !374
  store ptr @7, ptr %i.ft, align 8, !noalias !374
  store ptr %i.r, ptr %i.fu, align 8, !noalias !374
  store i64 0, ptr %i.c, align 8, !noalias !374
  store ptr @9, ptr %.sroa.428.0..sroa_idx.i.i.i, align 8, !noalias !374
  store i64 10, ptr %.sroa.529.0..sroa_idx.i.i.i, align 8, !noalias !374
  store i64 0, ptr %i.fv, align 8, !noalias !374
  store ptr @8, ptr %.sroa.434.0..sroa_idx.i.i.i, align 8, !noalias !374
  store i64 28, ptr %.sroa.535.0..sroa_idx.i.i.i, align 8, !noalias !374
  store i32 1, ptr %i.fw, align 8, !noalias !374
  store i32 39, ptr %i.fx, align 4, !noalias !374
  invoke void @_RNvXs0_NtCsksibNCz2yVN_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.c)
          to label %bb.dh unwind label %.split.thread.i

bb.de:                                            ; preds = %bb.dh, %bb.dc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !340
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !340
  invoke fastcc void @_RNvCs4jhN2sci4pa_10parse_test14try_parse_file(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.jl, i64 noundef %i.jm)
          to label %bb.di unwind label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.kt = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  %i.ku = extractvalue { ptr, i32 } %i.kt, 0
  %i.kv = invoke { ptr, ptr } @_RNvNvNtCs5Xr050g3D4S_3std9panicking12catch_unwind7cleanup(ptr noundef %i.ku)
          to label %.thread.i unwind label %bb.dg ; 2 uses

bb.dg:                                            ; preds = %bb.df
  %i.kw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #24
  unreachable

bb.dh:                                            ; preds = %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !374
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !340
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !340
  br label %bb.de

.thread.i:                                        ; preds = %bb.df
  %i.kx = extractvalue { ptr, ptr } %i.kv, 0      ; 2 uses
  %i.ky = extractvalue { ptr, ptr } %i.kv, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.kx), "nonnull"(ptr %i.ky) ]
  store ptr %i.kx, ptr %i.q, align 16, !noalias !340
  store ptr %i.ky, ptr %i.fy, align 8, !noalias !340
  store i64 -1, ptr %i.fz, align 8, !noalias !340
  br label %bb.dj

bb.di:                                            ; preds = %bb.de
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.5188.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.10184.0..sroa_idx185.i, i64 64, i1 false), !noalias !340
  %i.kz = load <2 x ptr>, ptr %i.b, align 16, !noalias !340
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !340
  store <2 x ptr> %i.kz, ptr %i.q, align 16, !noalias !340
  %.pre310.i = load i64, ptr %i.fz, align 8, !range !5, !noalias !340
  %i.la = icmp eq i64 %.pre310.i, -1
  br i1 %i.la, label %bb.dj, label %bb.dn

bb.dj:                                            ; preds = %bb.di, %.thread.i
  %.sroa.0153.0.copyload.i = load i64, ptr %i.t, align 8, !noalias !340 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !375)
  %i.lb = load i64, ptr %i.y, align 8, !range !7, !alias.scope !375, !noalias !340, !noundef !6
  %i.lc = icmp eq i64 %i.gm, %i.lb
  br i1 %i.lc, label %bb.dk, label %bb.eg

bb.dk:                                            ; preds = %bb.dj
  invoke fastcc void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtCs5Xr050g3D4S_3std4path7PathBufbEE8grow_oneCs4jhN2sci4pa_10parse_test(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %bb.eg unwind label %bb.dl, !noalias !376

bb.dl:                                            ; preds = %bb.dk
  %i.ld = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.le = icmp eq i64 %.sroa.0153.0.copyload.i, 0
  br i1 %i.le, label %.body99.i, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.jl, i64 noundef %.sroa.0153.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !377
  br label %.body99.i

bb.dn:                                            ; preds = %bb.di
  %i.lf = invoke noundef zeroext i1 @_RNvMs0_NtCscScJTt9VrQp_6fea_rs10diagnosticNtB5_13DiagnosticSet10has_errors(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.fz)
          to label %bb.dp unwind label %bb.do

.body99.i:                                        ; preds = %.body109.i, %bb.do, %bb.dm, %bb.dl
  %.sroa.028.2.i = phi i1 [ false, %.body109.i ], [ false, %bb.dl ], [ false, %bb.dm ], [ %.sroa.028.3.i, %bb.do ] ; 3 uses
  %.sroa.025.0.i = phi i1 [ false, %.body109.i ], [ true, %bb.dl ], [ true, %bb.dm ], [ %.sroa.028.3.i, %bb.do ]
  %.pn59.i = phi { ptr, i32 } [ %i.lp, %.body109.i ], [ %i.ld, %bb.dl ], [ %i.ld, %bb.dm ], [ %i.li, %bb.do ] ; 3 uses
  %i.lg = load i64, ptr %i.fz, align 8, !range !5, !noalias !340, !noundef !6
  %.not61.i = icmp eq i64 %i.lg, -1
  br i1 %.not61.i, label %bb.en, label %bb.ep

.body99.thread.i:                                 ; preds = %bb.ds
  %i.lh = load i64, ptr %i.fz, align 8, !range !5, !noalias !340, !noundef !6
  %.not61210.i = icmp eq i64 %i.lh, -1
  br i1 %.not61210.i, label %bb.en, label %.thread225.i

bb.do:                                            ; preds = %bb.ee, %bb.dn
  %.sroa.028.3.i = phi i1 [ true, %bb.dn ], [ false, %bb.ee ] ; 2 uses
  %i.li = landingpad { ptr, i32 }
          cleanup
  br label %.body99.i

bb.dp:                                            ; preds = %bb.dn
  br i1 %i.lf, label %bb.du, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !340
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ga, ptr noundef nonnull align 16 dereferenceable(40) %i.q, i64 40, i1 false), !noalias !340
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false), !noalias !340
  call void @llvm.experimental.noalias.scope.decl(metadata !378)
  %i.lj = load i64, ptr %i.x, align 8, !range !7, !alias.scope !378, !noalias !340, !noundef !6
  %i.lk = icmp eq i64 %i.gj, %i.lj
  br i1 %i.lk, label %bb.dr, label %bb.dy

bb.dr:                                            ; preds = %bb.dq
  invoke fastcc void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtCs5Xr050g3D4S_3std4path7PathBufNtNtNtCscScJTt9VrQp_6fea_rs5parse4tree9ParseTreeEE8grow_oneCs4jhN2sci4pa_10parse_test(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %._crit_edge.i unwind label %bb.ds, !noalias !379

._crit_edge.i:                                    ; preds = %bb.dr
  %.pre311.i = load ptr, ptr %i.fh, align 8, !alias.scope !378, !noalias !340
  br label %bb.dy

bb.ds:                                            ; preds = %bb.dr
  %i.ll = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCs5Xr050g3D4S_3std4path7PathBufNtNtNtCscScJTt9VrQp_6fea_rs5parse4tree9ParseTreeEECs4jhN2sci4pa_10parse_test(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.o) #21
          to label %.body99.thread.i unwind label %bb.dt, !noalias !378

bb.dt:                                            ; preds = %bb.ds
  %i.lm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #24, !noalias !378
  unreachable

bb.du:                                            ; preds = %bb.dp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !340
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.p, ptr noundef nonnull align 8 dereferenceable(40) %i.fz, i64 40, i1 false), !noalias !340
  %.sroa.0166.0.copyload.i = load i64, ptr %i.t, align 8, !noalias !340 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !380)
  %i.ln = load i64, ptr %i.y, align 8, !range !7, !alias.scope !380, !noalias !340, !noundef !6
  %i.lo = icmp eq i64 %i.gm, %i.ln
  br i1 %i.lo, label %bb.dv, label %bb.eb

bb.dv:                                            ; preds = %bb.du
  invoke fastcc void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtCs5Xr050g3D4S_3std4path7PathBufbEE8grow_oneCs4jhN2sci4pa_10parse_test(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %._crit_edge312.i unwind label %bb.dw, !noalias !381

._crit_edge312.i:                                 ; preds = %bb.dv
  %.pre313.i = load ptr, ptr %i.ff, align 8, !alias.scope !380, !noalias !340
  br label %bb.eb

bb.dw:                                            ; preds = %bb.dv
  %i.lp = landingpad { ptr, i32 }
          cleanup
  %i.lq = icmp eq i64 %.sroa.0166.0.copyload.i, 0
  br i1 %i.lq, label %.body109.i, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.jl, i64 noundef %.sroa.0166.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !382
  br label %.body109.i

bb.dy:                                            ; preds = %._crit_edge.i, %bb.dq
  %i.lr = phi ptr [ %.pre311.i, %._crit_edge.i ], [ %i.gi, %bb.dq ] ; 5 uses
  %i.ls = getelementptr inbounds nuw [64 x i8], ptr %i.lr, i64 %i.gj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ls, ptr noundef nonnull align 8 dereferenceable(64) %i.o, i64 64, i1 false), !noalias !378
  %i.lt = add i64 %i.gj, 1                        ; 3 uses
  store i64 %i.lt, ptr %i.fi, align 8, !alias.scope !378, !noalias !340
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !340
  %i.lu = load i64, ptr %i.fz, align 8, !range !5, !noalias !340, !noundef !6
  %i.lv = icmp eq i64 %i.lu, -1
  br i1 %i.lv, label %bb.dz, label %.thread204.i

bb.dz:                                            ; preds = %bb.ef, %bb.dy
  %i.lw = phi ptr [ %i.mr, %bb.ef ], [ %i.gh, %bb.dy ]
  %i.lx = phi ptr [ %i.gi, %bb.ef ], [ %i.lr, %bb.dy ]
  %i.ly = phi i64 [ %i.gj, %bb.ef ], [ %i.lt, %bb.dy ]
  %i.lz = phi ptr [ %i.gk, %bb.ef ], [ %i.lr, %bb.dy ]
  %i.ma = phi ptr [ %i.mr, %bb.ef ], [ %i.gl, %bb.dy ]
  %i.mb = phi i64 [ %i.ms, %bb.ef ], [ %i.gm, %bb.dy ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultTNtNtNtCscScJTt9VrQp_6fea_rs5parse4tree9ParseTreeNtNtB14_10diagnostic13DiagnosticSetEINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs4jhN2sci4pa_10parse_test(ptr noalias nofree noundef align 8 dereferenceable(80) %i.q)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCscScJTt9VrQp_6fea_rs10diagnostic13DiagnosticSetECs4jhN2sci4pa_10parse_test.exit127.i unwind label %.split.i

bb.ea:                                            ; preds = %bb.eh
  br i1 %i.mq, label %.thread204.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCscScJTt9VrQp_6fea_rs10diagnostic13DiagnosticSetECs4jhN2sci4pa_10parse_test.exit127.i

.body109.i:                                       ; preds = %bb.dx, %bb.dw
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCscScJTt9VrQp_6fea_rs10diagnostic13DiagnosticSetECs4jhN2sci4pa_10parse_test(ptr noalias nofree noundef align 8 dereferenceable(40) %i.p) #21
          to label %.body99.i unwind label %bb.cl

bb.eb:                                            ; preds = %._crit_edge312.i, %bb.du
  %i.mc = phi ptr [ %.pre313.i, %._crit_edge312.i ], [ %i.gh, %bb.du ] ; 2 uses
  %i.md = getelementptr inbounds nuw [32 x i8], ptr %i.mc, i64 %i.gm ; 4 uses
  store i64 %.sroa.0166.0.copyload.i, ptr %i.md, align 8, !noalias !380
  %.sroa.5158.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.md, i64 8
  store ptr %i.jl, ptr %.sroa.5158.0..sroa_idx.i, align 8, !noalias !380
  %.sroa.6161.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.md, i64 16
  store i64 %i.jm, ptr %.sroa.6161.0..sroa_idx.i, align 8, !noalias !380
  %.sroa.6164.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.md, i64 24
  store i8 0, ptr %.sroa.6164.0..sroa_idx.i, align 8, !noalias !380
  %i.me = add i64 %i.gm, 1                        ; 2 uses
  store i64 %i.me, ptr %i.fg, align 8, !alias.scope !380, !noalias !340
  call void @llvm.experimental.noalias.scope.decl(metadata !383)
  call void @llvm.experimental.noalias.scope.decl(metadata !384)
  %.val.i.i112.i = load ptr, ptr %i.gb, align 8, !alias.scope !385, !noalias !340, !nonnull !6, !noundef !6 ; 2 uses
  %.val1.i.i113.i = load i64, ptr %i.gc, align 8, !alias.scope !385, !noalias !340, !noundef !6 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !386)
  %i.mf = icmp eq i64 %.val1.i.i113.i, 0
  br i1 %i.mf, label %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs4jhN2sci4pa_10parse_test.exit.i.i.i19, label %.lr.ph.i.i.i.i.i14

.lr.ph.i.i.i.i.i14:                               ; preds = %bb.eb, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticECs4jhN2sci4pa_10parse_test.exit.i.i.i.i.i18
  %.sroa.0.011.i.i.i.i.i15 = phi i64 [ %i.mh, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticECs4jhN2sci4pa_10parse_test.exit.i.i.i.i.i18 ], [ 0, %bb.eb ] ; 2 uses
  %i.mg = getelementptr inbounds nuw [48 x i8], ptr %.val.i.i112.i, i64 %.sroa.0.011.i.i.i.i.i15 ; 2 uses
  %i.mh = add nuw nsw i64 %.sroa.0.011.i.i.i.i.i15, 1 ; 2 uses
  %.val8.i.i.i.i.i16 = load i64, ptr %i.mg, align 8, !alias.scope !386, !noalias !385 ; 2 uses
  %i.mi = icmp eq i64 %.val8.i.i.i.i.i16, 0
  br i1 %i.mi, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticECs4jhN2sci4pa_10parse_test.exit.i.i.i.i.i18, label %bb.ec

bb.ec:                                            ; preds = %.lr.ph.i.i.i.i.i14
  %i.mj = getelementptr i8, ptr %i.mg, i64 8
  %.val9.i.i.i.i.i17 = load ptr, ptr %i.mj, align 8, !alias.scope !386, !noalias !385, !nonnull !6, !noundef !6
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i17, i64 noundef %.val8.i.i.i.i.i16, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !387
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticECs4jhN2sci4pa_10parse_test.exit.i.i.i.i.i18

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticECs4jhN2sci4pa_10parse_test.exit.i.i.i.i.i18: ; preds = %bb.ec, %.lr.ph.i.i.i.i.i14
  %i.mk = icmp eq i64 %i.mh, %.val1.i.i113.i
  br i1 %i.mk, label %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs4jhN2sci4pa_10parse_test.exit.i.i.i19, label %.lr.ph.i.i.i.i.i14

_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs4jhN2sci4pa_10parse_test.exit.i.i.i19: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticECs4jhN2sci4pa_10parse_test.exit.i.i.i.i.i18, %bb.eb
  %.val2.i.i114.i = load i64, ptr %i.p, align 8, !range !7, !alias.scope !385, !noalias !340, !noundef !6 ; 2 uses
  %i.ml = icmp eq i64 %.val2.i.i114.i, 0
  br i1 %i.ml, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticEECs4jhN2sci4pa_10parse_test.exit.i.i20, label %bb.ed

bb.ed:                                            ; preds = %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs4jhN2sci4pa_10parse_test.exit.i.i.i19
  %i.mm = mul nuw i64 %.val2.i.i114.i, 48
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i112.i, i64 noundef %i.mm, i64 noundef range(i64 1, -9223372036854775807) 8) #22, !noalias !385
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticEECs4jhN2sci4pa_10parse_test.exit.i.i20

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticEECs4jhN2sci4pa_10parse_test.exit.i.i20: ; preds = %bb.ed, %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs4jhN2sci4pa_10parse_test.exit.i.i.i19
  call void @llvm.experimental.noalias.scope.decl(metadata !388)
  call void @llvm.experimental.noalias.scope.decl(metadata !389)
  %i.mn = load ptr, ptr %i.gd, align 8, !alias.scope !390, !noalias !340, !nonnull !6, !noundef !6
  %i.mo = atomicrmw add ptr %i.mn, i64 -1 release, align 8, !noalias !390
  %i.mp = icmp eq i64 %i.mo, 1
  br i1 %i.mp, label %bb.ee, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCscScJTt9VrQp_6fea_rs10diagnostic13DiagnosticSetECs4jhN2sci4pa_10parse_test.exit.i21
end_hunk_1
begin_hunk_2_@_RNvCs4jhN2sci4pa_10parse_test4main:bb.a

bb.ek:                                            ; preds = %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs4jhN2sci4pa_10parse_test.exit.i.i123.i
  %i.ns = mul nuw i64 %.val2.i.i124.i, 48
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i116.i, i64 noundef %i.ns, i64 noundef range(i64 1, -9223372036854775807) 8) #22, !noalias !393
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticEECs4jhN2sci4pa_10parse_test.exit.i125.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticEECs4jhN2sci4pa_10parse_test.exit.i125.i: ; preds = %bb.ek, %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs4jhN2sci4pa_10parse_test.exit.i.i123.i
  call void @llvm.experimental.noalias.scope.decl(metadata !396)
  call void @llvm.experimental.noalias.scope.decl(metadata !397)
  %i.nt = load ptr, ptr %i.gg, align 16, !alias.scope !398, !noalias !340, !nonnull !6, !noundef !6
  %i.nu = atomicrmw add ptr %i.nt, i64 -1 release, align 8, !noalias !398
  %i.nv = icmp eq i64 %i.nu, 1
  br i1 %i.nv, label %bb.el, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCscScJTt9VrQp_6fea_rs10diagnostic13DiagnosticSetECs4jhN2sci4pa_10parse_test.exit127.i

bb.el:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticEECs4jhN2sci4pa_10parse_test.exit.i125.i
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCscScJTt9VrQp_6fea_rs5parse6source10SourceListE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.gg) #23
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCscScJTt9VrQp_6fea_rs10diagnostic13DiagnosticSetECs4jhN2sci4pa_10parse_test.exit127.i unwind label %.split.i

bb.em:                                            ; preds = %bb.ei
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCscScJTt9VrQp_6fea_rs10diagnostic13DiagnosticSetECs4jhN2sci4pa_10parse_test(ptr noalias nofree noundef align 8 dereferenceable(40) %i.fz) #21
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECs4jhN2sci4pa_10parse_test.exit128.i unwind label %bb.cl

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std2fs8DirEntryECs4jhN2sci4pa_10parse_test.exit.i: ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i5.i4.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtNtCs5Xr050g3D4S_3std3sys2fs4unix12InnerReadDirEECs4jhN2sci4pa_10parse_test.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !340
  br label %bb.bi

bb.en:                                            ; preds = %.body99.thread.i, %.body99.i
  %.pn59215.i = phi { ptr, i32 } [ %i.ll, %.body99.thread.i ], [ %.pn59.i, %.body99.i ]
  %.sroa.028.2211.i = phi i1 [ false, %.body99.thread.i ], [ %.sroa.028.2.i, %.body99.i ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultTNtNtNtCscScJTt9VrQp_6fea_rs5parse4tree9ParseTreeNtNtB14_10diagnostic13DiagnosticSetEINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs4jhN2sci4pa_10parse_test(ptr noalias nofree noundef align 8 dereferenceable(80) %i.q) #21
          to label %bb.cv unwind label %bb.cl

bb.eo:                                            ; preds = %bb.ep
  br i1 %.sroa.025.0.i, label %.thread225.i, label %bb.cv

bb.ep:                                            ; preds = %.body99.i
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCscScJTt9VrQp_6fea_rs5parse4tree9ParseTreeECs4jhN2sci4pa_10parse_test(ptr noalias nofree noundef align 8 dereferenceable(40) %i.q) #21
          to label %bb.eo unwind label %bb.cl

.thread225.i:                                     ; preds = %bb.eo, %.body99.thread.i
  %.pn59216222230.i = phi { ptr, i32 } [ %.pn59.i, %bb.eo ], [ %i.ll, %.body99.thread.i ]
  %.sroa.028.2212224229.i = phi i1 [ %.sroa.028.2.i, %bb.eo ], [ false, %.body99.thread.i ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCscScJTt9VrQp_6fea_rs10diagnostic13DiagnosticSetECs4jhN2sci4pa_10parse_test(ptr noalias nofree noundef align 8 dereferenceable(40) %i.fz) #21
          to label %bb.cv unwind label %bb.cl

bb.eq:                                            ; preds = %.split.thread.i, %bb.cv
  %.pn62196.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %.split.thread.i ], [ %.pn62.i, %bb.cv ] ; 2 uses
  %.val.i11 = load i64, ptr %i.t, align 8, !noalias !340 ; 2 uses
  %i.nw = icmp eq i64 %.val.i11, 0
  br i1 %i.nw, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECs4jhN2sci4pa_10parse_test.exit128.i, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %.val72.i = load ptr, ptr %i.fp, align 8, !noalias !340, !nonnull !6, !noundef !6
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val72.i, i64 noundef %.val.i11, i64 noundef range(i64 1, -9223372036854775807) 1) #22
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECs4jhN2sci4pa_10parse_test.exit128.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std2fs7ReadDirECs4jhN2sci4pa_10parse_test.exit89.i: ; preds = %bb.cs, %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !340
  br label %bb.es

bb.es:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std2fs7ReadDirECs4jhN2sci4pa_10parse_test.exit89.i, %bb.bg
  %.val5.i130.i = phi i64 [ %i.gm, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std2fs7ReadDirECs4jhN2sci4pa_10parse_test.exit89.i ], [ 0, %bb.bg ] ; 2 uses
  %.sroa.0.1.i = phi ptr [ %.sroa.6.0.copyload.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std2fs7ReadDirECs4jhN2sci4pa_10parse_test.exit89.i ], [ %.sink2.i.i, %bb.bg ] ; 2 uses
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCs5Xr050g3D4S_3std4path7PathBufNtNtNtCscScJTt9VrQp_6fea_rs5parse4tree9ParseTreeEEECs4jhN2sci4pa_10parse_test(ptr noalias nofree noundef align 8 dereferenceable(24) %i.x)
          to label %bb.et unwind label %bb.cn

bb.et:                                            ; preds = %bb.es
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !340
  call void @llvm.experimental.noalias.scope.decl(metadata !399)
  %.val4.i129.i = load ptr, ptr %i.ff, align 8, !alias.scope !399, !noalias !340, !nonnull !6, !noundef !6 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !400)
  %i.nx = icmp eq i64 %.val5.i130.i, 0
  br i1 %i.nx, label %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtCs5Xr050g3D4S_3std4path7PathBufbEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs4jhN2sci4pa_10parse_test.exit.i136.i, label %.lr.ph.i.i.i131.i

.lr.ph.i.i.i131.i:                                ; preds = %bb.et, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCs5Xr050g3D4S_3std4path7PathBufbEECs4jhN2sci4pa_10parse_test.exit.i.i.i135.i
  %.sroa.0.011.i.i.i132.i = phi i64 [ %i.nz, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCs5Xr050g3D4S_3std4path7PathBufbEECs4jhN2sci4pa_10parse_test.exit.i.i.i135.i ], [ 0, %bb.et ] ; 2 uses
  %i.ny = getelementptr inbounds nuw [32 x i8], ptr %.val4.i129.i, i64 %.sroa.0.011.i.i.i132.i ; 2 uses
  %i.nz = add nuw nsw i64 %.sroa.0.011.i.i.i132.i, 1 ; 2 uses
  %.val8.i.i.i133.i = load i64, ptr %i.ny, align 8, !alias.scope !400, !noalias !399 ; 2 uses
  %i.oa = icmp eq i64 %.val8.i.i.i133.i, 0
  br i1 %i.oa, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCs5Xr050g3D4S_3std4path7PathBufbEECs4jhN2sci4pa_10parse_test.exit.i.i.i135.i, label %bb.eu

bb.eu:                                            ; preds = %.lr.ph.i.i.i131.i
  %i.ob = getelementptr i8, ptr %i.ny, i64 8
  %.val9.i.i.i134.i = load ptr, ptr %i.ob, align 8, !alias.scope !400, !noalias !399, !nonnull !6, !noundef !6
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i134.i, i64 noundef %.val8.i.i.i133.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !401
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCs5Xr050g3D4S_3std4path7PathBufbEECs4jhN2sci4pa_10parse_test.exit.i.i.i135.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCs5Xr050g3D4S_3std4path7PathBufbEECs4jhN2sci4pa_10parse_test.exit.i.i.i135.i: ; preds = %bb.eu, %.lr.ph.i.i.i131.i
  %i.oc = icmp eq i64 %i.nz, %.val5.i130.i
  br i1 %i.oc, label %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtCs5Xr050g3D4S_3std4path7PathBufbEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs4jhN2sci4pa_10parse_test.exit.i136.i, label %.lr.ph.i.i.i131.i

_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtCs5Xr050g3D4S_3std4path7PathBufbEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs4jhN2sci4pa_10parse_test.exit.i136.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCs5Xr050g3D4S_3std4path7PathBufbEECs4jhN2sci4pa_10parse_test.exit.i.i.i135.i, %bb.et
  %.val.i137.i = load i64, ptr %i.y, align 8, !range !7, !alias.scope !399, !noalias !340, !noundef !6 ; 2 uses
  %i.od = icmp eq i64 %.val.i137.i, 0
  br i1 %i.od, label %bb.ex, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCs5Xr050g3D4S_3std4path7PathBufbEEECs4jhN2sci4pa_10parse_test.exit138.sink.split.i

bb.ev:                                            ; preds = %bb.cm
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCs5Xr050g3D4S_3std4path7PathBufbEEECs4jhN2sci4pa_10parse_test(ptr noalias nofree noundef align 8 dereferenceable(24) %i.y) #21
  br label %.body

_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCs4jhN2sci4pa_10parse_test.exit: ; preds = %bb.ex, %.thread, %_RNvCs4jhN2sci4pa_10parse_test15single_file_arg.exit
  %i.oe = icmp eq i64 %i.av, 0
  br i1 %i.oe, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs4jhN2sci4pa_10parse_test4ArgsEBD_.exit25, label %bb.ew

bb.ew:                                            ; preds = %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCs4jhN2sci4pa_10parse_test.exit
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.486.0.copyload.i, i64 noundef %i.av, i64 noundef range(i64 1, -9223372036854775807) 1) #22
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs4jhN2sci4pa_10parse_test4ArgsEBD_.exit25

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs4jhN2sci4pa_10parse_test4ArgsEBD_.exit25: ; preds = %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCs4jhN2sci4pa_10parse_test.exit, %bb.ew
  ret void

.thread:                                          ; preds = %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtCs5Xr050g3D4S_3std4path7PathBufbEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs4jhN2sci4pa_10parse_test.exit.i.i, %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !340
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !340
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCs4jhN2sci4pa_10parse_test.exit

bb.ex:                                            ; preds = %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtCs5Xr050g3D4S_3std4path7PathBufbEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs4jhN2sci4pa_10parse_test.exit.i136.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCs5Xr050g3D4S_3std4path7PathBufbEEECs4jhN2sci4pa_10parse_test.exit138.sink.split.i
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0.ph.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCs5Xr050g3D4S_3std4path7PathBufbEEECs4jhN2sci4pa_10parse_test.exit138.sink.split.i ], [ %.sroa.0.1.i, %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtCs5Xr050g3D4S_3std4path7PathBufbEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs4jhN2sci4pa_10parse_test.exit.i136.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !340
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !340
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %.not.i = icmp eq ptr %.sroa.0.0.i, null
  br i1 %.not.i, label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCs4jhN2sci4pa_10parse_test.exit, label %bb.ey, !prof !402

bb.ey:                                            ; preds = %bb.ex
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  store ptr %.sroa.0.0.i, ptr %i.as, align 8
  invoke void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 43, ptr noundef nonnull %i.as, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @19, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #25
          to label %bb.fa unwind label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.of = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs4jhN2sci4pa_10parse_test(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.as) #21
          to label %.body unwind label %bb.fb

bb.fa:                                            ; preds = %bb.ey
  unreachable

bb.fb:                                            ; preds = %bb.ez
  %i.og = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #24
  unreachable
}

; Function Attrs: cold noinline nonlazybind uwtable
define internal fastcc void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtCs5Xr050g3D4S_3std4path7PathBufNtNtNtCscScJTt9VrQp_6fea_rs5parse4tree9ParseTreeEE8grow_oneCs4jhN2sci4pa_10parse_test(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !7, !noundef !6
  %i.b = tail call fastcc { i64, i64 } @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs4jhN2sci4pa_10parse_test(ptr noalias nofree noundef align 8 dereferenceable(16) %0, i64 noundef %i.a, i64 noundef 64) ; 2 uses
  %i.c = extractvalue { i64, i64 } %i.b, 0        ; 2 uses
  %.not = icmp eq i64 %i.c, -1
  br i1 %.not, label %bb.c, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.d = extractvalue { i64, i64 } %i.b, 1
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.c, i64 %i.d) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define internal fastcc void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtCs5Xr050g3D4S_3std4path7PathBufbEE8grow_oneCs4jhN2sci4pa_10parse_test(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !7, !noundef !6
  %i.b = tail call fastcc { i64, i64 } @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs4jhN2sci4pa_10parse_test(ptr noalias nofree noundef align 8 dereferenceable(16) %0, i64 noundef %i.a, i64 noundef 32) ; 2 uses
  %i.c = extractvalue { i64, i64 } %i.b, 0        ; 2 uses
  %.not = icmp eq i64 %i.c, -1
  br i1 %.not, label %bb.c, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.d = extractvalue { i64, i64 } %i.b, 1
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.c, i64 %i.d) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs4jhN2sci4pa_10parse_test(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef range(i64 4, -1) %1, i64 noundef range(i64 32, 65) %2) unnamed_addr #5 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 7 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = icmp ugt i64 %i.b, 9223372036854775800
  %or.cond.not = or i1 %i.c, %i.d
  br i1 %or.cond.not, label %bb.f, label %bb.b, !prof !403

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %.0.val, 0
  br i1 %i.e, label %bb.c, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator4grow.exit

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  %3 = mul nuw i64 %2, %.0.val                    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.f = icmp uge i64 %i.b, %3
  tail call void @llvm.assume(i1 %i.f)
  %i.g = tail call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %3, i64 noundef 8, i64 noundef range(i64 0, 9223372036854775801) %i.b) #22
  br label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.h = icmp eq i64 %i.b, 0
  br i1 %i.h, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22
  %i.i = tail call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, 9) 8) #22
  br label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator8allocate.exit

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.g, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator4grow.exit ], [ %i.i, %bb.d ] ; 2 uses
  %i.j = icmp eq ptr %.pn8, null
  br i1 %i.j, label %bb.e, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator8allocate.exit.thread

bb.e:                                             ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator8allocate.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 8, ptr %i.k, align 8
  br label %bb.f

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %.pn8, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator8allocate.exit ], [ inttoptr (i64 8 to ptr), %bb.c ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.l, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator8allocate.exit.thread
  %.sink13 = phi i64 [ 16, %bb.e ], [ 16, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator8allocate.exit.thread ], [ 8, %bb.a ]
  %.sink11 = phi i64 [ %i.b, %bb.e ], [ %i.b, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator8allocate.exit.thread ], [ 0, %bb.a ]
  %.sink = phi i64 [ 1, %bb.e ], [ 0, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator8allocate.exit.thread ], [ 1, %bb.a ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %.sink13
  store i64 %.sink11, ptr %i.m, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs4jhN2sci4pa_10parse_test(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef range(i64 0, -9223372036854775808) %1, i64 noundef range(i64 32, 65) %2) unnamed_addr #5 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = add nuw i64 %1, 1
  %i.c = load i64, ptr %0, align 8, !range !7, !noundef !6 ; 2 uses
  %i.d = shl nuw i64 %i.c, 1
  %i.e = tail call i64 @llvm.umax.i64(i64 %i.d, i64 %i.b)
  %i.f = tail call i64 @llvm.umax.i64(i64 %i.e, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13 = load ptr, ptr %i.g, align 8
  call fastcc void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs4jhN2sci4pa_10parse_test(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.c, ptr %.val13, i64 noundef %i.f, i64 noundef %2)
  %i.h = load i64, ptr %i.a, align 8, !range !11, !noundef !6
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.d

bb.b:                                             ; preds = %bb.c, %bb.d
  %.sroa.5.0 = phi i64 [ undef, %bb.d ], [ %i.o, %bb.c ]
  %.sroa.0.0 = phi i64 [ -1, %bb.d ], [ %i.m, %bb.c ]
  %i.k = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.l = insertvalue { i64, i64 } %i.k, i64 %.sroa.5.0, 1
  ret { i64, i64 } %i.l

bb.c:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.j, align 8, !range !404, !noundef !6
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.o = load i64, ptr %i.n, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.p = load ptr, ptr %i.j, align 8, !nonnull !6, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.p, ptr %i.g, align 8
  %i.q = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.q)
  store i64 %i.f, ptr %0, align 8
  br label %bb.b
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define internal fastcc void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCscScJTt9VrQp_6fea_rs5parse6source9SourceMapE9drop_slowCs4jhN2sci4pa_10parse_test(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.val = load i64, ptr %i.b, align 8             ; 2 uses
  %i.c = icmp eq i64 %.val, 0
  br i1 %i.c, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCscScJTt9VrQp_6fea_rs5parse6source9SourceMapECs4jhN2sci4pa_10parse_test.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.a, i64 24
  %.val1 = load ptr, ptr %i.d, align 8, !nonnull !6, !noundef !6
  %i.e = shl nuw i64 %.val, 5
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) 8) #22
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCscScJTt9VrQp_6fea_rs5parse6source9SourceMapECs4jhN2sci4pa_10parse_test.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCscScJTt9VrQp_6fea_rs5parse6source9SourceMapECs4jhN2sci4pa_10parse_test.exit: ; preds = %bb.b, %bb.a
  %i.f = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.f, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync4WeakNtNtNtCscScJTt9VrQp_6fea_rs5parse6source9SourceMapRNtNtBG_5alloc6GlobalEECs4jhN2sci4pa_10parse_test.exit4, label %bb.c

bb.c:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCscScJTt9VrQp_6fea_rs5parse6source9SourceMapECs4jhN2sci4pa_10parse_test.exit
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = atomicrmw add ptr %i.g, i64 -1 release, align 8
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.d, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync4WeakNtNtNtCscScJTt9VrQp_6fea_rs5parse6source9SourceMapRNtNtBG_5alloc6GlobalEECs4jhN2sci4pa_10parse_test.exit4

bb.d:                                             ; preds = %bb.c
  fence acquire
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 40, i64 noundef 8) #22
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync4WeakNtNtNtCscScJTt9VrQp_6fea_rs5parse6source9SourceMapRNtNtBG_5alloc6GlobalEECs4jhN2sci4pa_10parse_test.exit4

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync4WeakNtNtNtCscScJTt9VrQp_6fea_rs5parse6source9SourceMapRNtNtBG_5alloc6GlobalEECs4jhN2sci4pa_10parse_test.exit4: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCscScJTt9VrQp_6fea_rs5parse6source9SourceMapECs4jhN2sci4pa_10parse_test.exit, %bb.c, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtCs5Xr050g3D4S_3std4path7PathBufNtB6_5Debug3fmtCs4jhN2sci4pa_10parse_test(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !align !8, !noundef !6
  %i.b = tail call noundef zeroext i1 @_RNvXsG_NtCs5Xr050g3D4S_3std4pathNtB5_7PathBufNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtReNtB6_7Display3fmtCs4jhN2sci4pa_10parse_test(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !6
  %i.d = tail call noundef zeroext i1 @_RNvXsi_NtCsf3Ta7LF998c_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsW_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceENtNtCsf3Ta7LF998c_4core3fmt5Debug3fmtCs4jhN2sci4pa_10parse_test(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !6
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = tail call noundef zeroext i1 @_RNvXsh_NtCsf3Ta7LF998c_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsq_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !6
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCsf3Ta7LF998c_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsx_NtNtCscScJTt9VrQp_6fea_rs5parse6sourceNtB5_15SourceLoadErrorNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 15, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 5, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @20, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @21)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvYNtNtNtCscScJTt9VrQp_6fea_rs5parse6source18FileSystemResolverNtB4_14SourceResolver7resolveCs4jhN2sci4pa_10parse_test(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs1_NtNtCscScJTt9VrQp_6fea_rs5parse6sourceNtB5_18FileSystemResolverNtB5_14SourceResolver12get_contents(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  %i.d = load i64, ptr %i.b, align 8, !range !5, !noundef !6 ; 2 uses
  %.not = icmp eq i64 %i.d, -1
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load i64, ptr %i.g, align 8              ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.617.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.621.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.621.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.617.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %i.i, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.f, ptr %.sroa.419.0..sroa_idx, align 8
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.h, ptr %.sroa.520.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.e

end_hunk_2
