Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proxy/original/timers?download=true
inline.NumInlined: 51
inline.NumDeleted: 41
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.benchmark::internal::LogType" = type { ptr }
%struct.timespec = type { i64, i64 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }

$_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log = comdat any

$_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log = comdat any

@.str = private unnamed_addr constant [52 x i8] c"clock_gettime(CLOCK_PROCESS_CPUTIME_ID, ...) failed\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"clock_gettime(CLOCK_THREAD_CPUTIME_ID, ...) failed\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%z\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"%c%02li:%02li\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"-00:00\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"%Y-%m-%dT%H:%M:%S\00", align 1
@_ZSt4cerr = external global %"class.std::basic_ostream", align 8
@.str.6 = private unnamed_addr constant [8 x i8] c"ERROR: \00", align 1
@_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log = linkonce_odr hidden local_unnamed_addr global %"class.benchmark::internal::LogType" zeroinitializer, comdat, align 8
@_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log = linkonce_odr hidden global i64 0, comdat, align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_timers.cc, ptr null }]

declare noundef i32 @_ZN9benchmark8internal17InitializeStreamsEv() local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define hidden noundef double @_ZN9benchmark15ProcessCPUUsageEv() local_unnamed_addr #1 {
bb.a:
  %0 = alloca %struct.timespec, align 8           ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.a = call i32 @clock_gettime(i32 noundef 2, ptr noundef nonnull %0) #15
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.val = load i64, ptr %0, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.c, align 8, !tbaa !12
  %i.d = sitofp i64 %.val to double
  %i.e = sitofp i64 %.val1 to double
  %i.f = call noundef double @llvm.fmuladd.f64(double %i.e, double 1.000000e-09, double %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #15
  ret double %i.f

bb.c:                                             ; preds = %bb.a
  call fastcc void @_ZN9benchmark12_GLOBAL__N_115DiagnoseAndExitEPKc(ptr noundef nonnull @.str) #16
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress noreturn uwtable
define internal fastcc void @_ZN9benchmark12_GLOBAL__N_115DiagnoseAndExitEPKc(ptr noundef %0) unnamed_addr #5 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.6)
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %0)
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i8 noundef signext 10) ; 0 uses
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr) ; 0 uses
  tail call void @exit(i32 noundef 1) #17
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define hidden noundef double @_ZN9benchmark14ThreadCPUUsageEv() local_unnamed_addr #1 {
bb.a:
  %0 = alloca %struct.timespec, align 8           ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.a = call i32 @clock_gettime(i32 noundef 3, ptr noundef nonnull %0) #15
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.val = load i64, ptr %0, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.c, align 8, !tbaa !12
  %i.d = sitofp i64 %.val to double
  %i.e = sitofp i64 %.val1 to double
  %i.f = call noundef double @llvm.fmuladd.f64(double %i.e, double 1.000000e-09, double %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #15
  ret double %i.f

bb.c:                                             ; preds = %bb.a
  call fastcc void @_ZN9benchmark12_GLOBAL__N_115DiagnoseAndExitEPKc(ptr noundef nonnull @.str.1) #16
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN9benchmark19LocalDateTimeStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca [41 x i8], align 16               ; 7 uses
  %i.d = alloca [128 x i8], align 16              ; 7 uses
  %1 = alloca %struct.tm, align 8                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.e = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #15
  %i.f = sdiv i64 %i.e, 1000000000
  store i64 %i.f, ptr %i.b, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %1, i8 0, i64 56, i1 false)
  %i.g = call ptr @localtime_r(ptr noundef nonnull %i.b, ptr noundef nonnull %1) #15 ; 0 uses
  %i.h = call i64 @strftime(ptr noundef nonnull %i.c, i64 noundef 41, ptr noundef nonnull @.str.2, ptr noundef nonnull %1) #15
  %i.i = add i64 %i.h, -2
  %or.cond = icmp ult i64 %i.i, 4
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.j = call i64 @__isoc23_strtol(ptr noundef nonnull %i.c, ptr noundef null, i32 noundef 10) #15 ; 2 uses
  %i.k = icmp slt i64 %i.j, 0
  %spec.select = call i64 @llvm.abs.i64(i64 %i.j, i1 true) ; 2 uses
  %spec.select14 = select i1 %i.k, i32 45, i32 43
  %i.l = udiv i64 %spec.select, 100
  %i.m = urem i64 %spec.select, 100
  %i.n = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 41, ptr noundef nonnull @.str.3, i32 noundef %spec.select14, i64 noundef %i.l, i64 noundef %i.m) #15 ; 0 uses
  %i.o = load atomic i8, ptr @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log acquire, align 8
  %i.p = icmp eq i8 %i.o, 0
  br i1 %i.p, label %bb.c, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit, !prof !14

bb.c:                                             ; preds = %bb.b
  %i.q = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #15
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, align 8, !tbaa !15
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #15
  br label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit

bb.e:                                             ; preds = %bb.a
  %i.r = call ptr @gmtime_r(ptr noundef nonnull %i.b, ptr noundef nonnull %1) #15 ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(7) %i.c, ptr noundef nonnull align 1 dereferenceable(7) @.str.4, i64 noundef 7, i1 false) #15
  br label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit

_ZN9benchmark8internal18GetNullLogInstanceEv.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.e
  %i.s = call i64 @strftime(ptr noundef nonnull %i.d, i64 noundef 128, ptr noundef nonnull @.str.5, ptr noundef nonnull %1) #15
  %i.t = load atomic i8, ptr @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log acquire, align 8
  %i.u = icmp eq i8 %i.t, 0
  br i1 %i.u, label %bb.f, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit16, !prof !14

bb.f:                                             ; preds = %_ZN9benchmark8internal18GetNullLogInstanceEv.exit
  %i.v = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #15
  %.not.i15 = icmp eq i32 %i.v, 0
  br i1 %.not.i15, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit16, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr null, ptr @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, align 8, !tbaa !15
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #15
  br label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit16

_ZN9benchmark8internal18GetNullLogInstanceEv.exit16: ; preds = %_ZN9benchmark8internal18GetNullLogInstanceEv.exit, %bb.f, %bb.g
  %i.w = sub i64 127, %i.s
  %i.x = call ptr @strncat(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull %i.c, i64 noundef %i.w) #15 ; 0 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.y, ptr %0, align 8, !tbaa !19
  %i.z = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #15 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i64 %i.z, ptr %i.a, align 8, !tbaa !13
  %i.aa = icmp ugt i64 %i.z, 15
  br i1 %i.aa, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZN9benchmark8internal18GetNullLogInstanceEv.exit16
  %i.ab = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.ab, ptr %0, align 8, !tbaa !22
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !13
  store i64 %i.ac, ptr %i.y, align 8, !tbaa !24
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %_ZN9benchmark8internal18GetNullLogInstanceEv.exit16
  %i.ad = phi ptr [ %i.ab, %.noexc.i ], [ %i.y, %_ZN9benchmark8internal18GetNullLogInstanceEv.exit16 ] ; 2 uses
  switch i64 %i.z, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %bb.j
  ]

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.ae = load i8, ptr %i.d, align 16, !tbaa !24
  store i8 %i.ae, ptr %i.ad, align 1, !tbaa !24
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ad, ptr nonnull align 16 %i.d, i64 %i.z, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i.i
  %i.af = load i64, ptr %i.a, align 8, !tbaa !13  ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !25
  %i.ah = load ptr, ptr %0, align 8, !tbaa !22
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.af
  store i8 0, ptr %i.ai, align 1, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  ret void
}

; Function Attrs: nounwind
declare i64 @_ZNSt6chrono3_V212system_clock3nowEv() local_unnamed_addr #4

; Function Attrs: nounwind
declare ptr @localtime_r(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i64 @strftime(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: nounwind
declare ptr @gmtime_r(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncat(ptr noalias noundef returned, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #7

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #8

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #9

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #9

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #9

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #12

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #0

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_timers.cc() #13 section ".text.startup" {
bb.a:
  %i.a = tail call noundef i32 @_ZN9benchmark8internal17InitializeStreamsEv() ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #14

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind }
attributes #13 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind }
attributes #16 = { noreturn }
attributes #17 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !11, i64 0}
!10 = !{!"_ZTS8timespec", !11, i64 0, !11, i64 8}
!11 = !{!"long", !7, i64 0}
!12 = !{!10, !11, i64 8}
!13 = !{!11, !11, i64 0}
!14 = !{!"branch_weights", i32 1, i32 1048575}
!15 = !{!16, !17, i64 0}
!16 = !{!"_ZTSN9benchmark8internal7LogTypeE", !17, i64 0}
!17 = !{!"p1 _ZTSSo", !18, i64 0}
!18 = !{!"any pointer", !7, i64 0}
!19 = !{!20, !21, i64 0}
!20 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !21, i64 0}
!21 = !{!"p1 omnipotent char", !18, i64 0}
!22 = !{!23, !21, i64 0}
!23 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !20, i64 0, !11, i64 8, !7, i64 16}
!24 = !{!7, !7, i64 0}
!25 = !{!23, !11, i64 8}
end_hunk_0
