inline.NumInlined: 70
inline.NumDeleted: 61
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::locale::id" = type { i64 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }

$_ZN4LIEF7logging11fatal_errorEPKc = comdat any

$_ZN3fmt3v1112format_facetISt6localeE2idE = comdat any

$_ZN4LIEF7logging7critialEPKc = comdat any

$_ZN4LIEF7logging9terminateEv = comdat any

@.str = private unnamed_addr constant [47 x i8] c"Can't return a BindingInfo for a NONE iterator\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Unsupported ORIGIN\00", align 1
@_ZN3fmt3v1112format_facetISt6localeE2idE = linkonce_odr hidden global %"class.std::locale::id" zeroinitializer, comdat, align 8
@_ZGVN3fmt3v1112format_facetISt6localeE2idE = linkonce_odr hidden local_unnamed_addr global i64 0, comdat($_ZN3fmt3v1112format_facetISt6localeE2idE), align 8
@.str.2 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.103 = private unnamed_addr constant [74 x i8] c"vector::_M_range_check: __n (which is %zu) >= this->size() (which is %zu)\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init, ptr @_ZN3fmt3v1112format_facetISt6localeE2idE }]
@llvm.used = appending global [1 x ptr] [ptr @_ZN3fmt3v1112format_facetISt6localeE2idE], section "llvm.metadata"

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull align 8 dereferenceable(64) ptr @_ZNK4LIEF5MachO19BindingInfoIteratordeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8
  switch i8 %i.b, label %bb.i [
    i8 1, label %bb.b
    i8 2, label %bb.d
    i8 3, label %bb.f
    i8 0, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 200
  %i.f = load i64, ptr %0, align 8                ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 208
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = ashr exact i64 %i.l, 3                   ; 2 uses
  %.not.i.i = icmp ult i64 %i.f, %i.m
  br i1 %.not.i.i, label %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO15DyldBindingInfoESt14default_deleteIS3_EESaIS6_EE2atEm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.103, i64 noundef %i.f, i64 noundef %i.m) #10
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO15DyldBindingInfoESt14default_deleteIS3_EESaIS6_EE2atEm.exit: ; preds = %bb.b
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.f
  br label %bb.j

bb.d:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 160
  %i.r = load i64, ptr %0, align 8                ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 168
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 3                   ; 2 uses
  %.not.i.i2 = icmp ult i64 %i.r, %i.y
  br i1 %.not.i.i2, label %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EE2atEm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.103, i64 noundef %i.r, i64 noundef %i.y) #10
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EE2atEm.exit: ; preds = %bb.d
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.r
  br label %bb.j

bb.f:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 464
  %i.ad = load i64, ptr %0, align 8               ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 472
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = ashr exact i64 %i.aj, 3                 ; 2 uses
  %.not.i.i3 = icmp ult i64 %i.ad, %i.ak
  br i1 %.not.i.i3, label %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO19IndirectBindingInfoESt14default_deleteIS3_EESaIS6_EE2atEm.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.103, i64 noundef %i.ad, i64 noundef %i.ak) #10
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO19IndirectBindingInfoESt14default_deleteIS3_EESaIS6_EE2atEm.exit: ; preds = %bb.f
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ad
  br label %bb.j

bb.h:                                             ; preds = %bb.a
  tail call void @_ZN4LIEF7logging11fatal_errorEPKc(ptr noundef nonnull @.str) #11
  unreachable

bb.i:                                             ; preds = %bb.a
  tail call void @_ZN4LIEF7logging11fatal_errorEPKc(ptr noundef nonnull @.str.1) #11
  unreachable

bb.j:                                             ; preds = %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO19IndirectBindingInfoESt14default_deleteIS3_EESaIS6_EE2atEm.exit, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EE2atEm.exit, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO15DyldBindingInfoESt14default_deleteIS3_EESaIS6_EE2atEm.exit
  %.0.in = phi ptr [ %i.al, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO19IndirectBindingInfoESt14default_deleteIS3_EESaIS6_EE2atEm.exit ], [ %i.z, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO18ChainedBindingInfoESt14default_deleteIS3_EESaIS6_EE2atEm.exit ], [ %i.n, %_ZNKSt6vectorISt10unique_ptrIN4LIEF5MachO15DyldBindingInfoESt14default_deleteIS3_EESaIS6_EE2atEm.exit ]
  %.0 = load ptr, ptr %.0.in, align 8, !nonnull !4, !noundef !4
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress noreturn nounwind uwtable
define linkonce_odr hidden void @_ZN4LIEF7logging11fatal_errorEPKc(ptr noundef %0) local_unnamed_addr #2 comdat {
bb.a:
  tail call void @_ZN4LIEF7logging7critialEPKc(ptr noundef %0)
  tail call void @_ZN4LIEF7logging9terminateEv() #11
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @__cxx_global_var_init() #3 section ".text.startup" comdat($_ZN3fmt3v1112format_facetISt6localeE2idE) {
bb.a:
  %i.a = load i8, ptr @_ZGVN3fmt3v1112format_facetISt6localeE2idE, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN3fmt3v1112format_facetISt6localeE2idE, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4LIEF7logging7critialEPKc(ptr noundef %0) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  store ptr %i.b, ptr %1, align 8
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.2) #10
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #12 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i64 %i.d, ptr %i.a, align 8
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %bb.d, label %._crit_edge.i.i

bb.d:                                             ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #12 ; 2 uses
  store ptr %i.f, ptr %1, align 8
  %i.g = load i64, ptr %i.a, align 8
  store i64 %i.g, ptr %i.b, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  %i.h = phi ptr [ %i.f, %bb.d ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.i = load i8, ptr %0, align 1
  store i8 %i.i, ptr %i.h, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

bb.f:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %0, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit: ; preds = %._crit_edge.i.i, %bb.e, %bb.f
  %i.j = load i64, ptr %i.a, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.j, ptr %i.k, align 8
  %i.l = load ptr, ptr %1, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  call void @_ZN4LIEF7logging3logENS0_5LEVELERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef 6, ptr noundef nonnull align 8 dereferenceable(32) %1) #12
  %i.n = load ptr, ptr %1, align 8                ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.b
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  %i.p = load i64, ptr %i.b, align 8
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.q) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  ret void
}

; Function Attrs: inlinehint mustprogress noreturn nounwind uwtable
define linkonce_odr hidden void @_ZN4LIEF7logging9terminateEv() local_unnamed_addr #2 comdat {
bb.a:
  tail call void @abort() #10
  unreachable
}

declare void @_ZN4LIEF7logging3logENS0_5LEVELERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #8

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #7

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inlinehint mustprogress noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn nounwind }
attributes #11 = { noreturn }
attributes #12 = { nounwind }
attributes #13 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{}
end_hunk_0
