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

@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4
  %i.c = alloca i32, align 4
  %i.d = alloca i32, align 4
  %i.e = alloca i32, align 4                      ; 3 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  store i32 0, ptr %i.a, align 4
  %0 = call fastcc noundef i32 @_ZL11__get_cpuidjPjS_S_S_(ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d, ptr noundef %i.e)
  %i.g = icmp ne i32 %0, 0
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %i.a, align 4
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.h = load i32, ptr %i.e, align 4
  %i.i = and i32 %i.h, 64
  %i.j = icmp ne i32 %i.i, 0
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i64 2097152, ptr %i.f, align 8
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.k = load i32, ptr %i.e, align 4
  %i.l = and i32 %i.k, 8
  %i.m = icmp ne i32 %i.l, 0
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i64 4194304, ptr %i.f, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  store i64 4096, ptr %i.f, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.d
  %i.n = load i64, ptr %i.f, align 8
  %i.o = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEm(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i64 noundef %i.n)
  %i.p = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_) ; 0 uses
  store i32 0, ptr %i.a, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.b
  %i.q = load i32, ptr %i.a, align 4
  ret i32 %i.q
}

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define internal fastcc noundef i32 @_ZL11__get_cpuidjPjS_S_S_(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 2 uses
  %i.d = alloca ptr, align 8                      ; 2 uses
  %i.e = alloca ptr, align 8                      ; 2 uses
  %i.f = alloca ptr, align 8                      ; 2 uses
  %i.g = alloca i32, align 4                      ; 3 uses
  store i32 1, ptr %i.b, align 4
  store ptr %0, ptr %i.c, align 8
  store ptr %1, ptr %i.d, align 8
  store ptr %2, ptr %i.e, align 8
  store ptr %3, ptr %i.f, align 8
  %i.h = load i32, ptr %i.b, align 4
  %i.i = and i32 %i.h, -2147483648
  %4 = call fastcc noundef i32 @_ZL15__get_cpuid_maxjPj(i32 noundef %i.i)
  store i32 %4, ptr %i.g, align 4
  %i.j = load i32, ptr %i.g, align 4
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = load i32, ptr %i.g, align 4
  %i.m = load i32, ptr %i.b, align 4
  %i.n = icmp ult i32 %i.l, %i.m
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  store i32 0, ptr %i.a, align 4
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.c, align 8
  %i.p = load ptr, ptr %i.d, align 8
  %i.q = load ptr, ptr %i.e, align 8
  %i.r = load ptr, ptr %i.f, align 8
  %i.s = load i32, ptr %i.b, align 4
  %i.t = call { i32, i32, i32, i32 } asm "  xchg$(q$|$)  $(%$|$)rbx,${1:q}\0A  cpuid\0A  xchg$(q$|$)  $(%$|$)rbx,${1:q}", "={ax},=r,={cx},={dx},0,~{dirflag},~{fpsr},~{flags}"(i32 %i.s) #3, !srcloc !5 ; 4 uses
  %i.u = extractvalue { i32, i32, i32, i32 } %i.t, 0
  %i.v = extractvalue { i32, i32, i32, i32 } %i.t, 1
  %i.w = extractvalue { i32, i32, i32, i32 } %i.t, 2
  %i.x = extractvalue { i32, i32, i32, i32 } %i.t, 3
  store i32 %i.u, ptr %i.o, align 4
  store i32 %i.v, ptr %i.p, align 4
  store i32 %i.w, ptr %i.q, align 4
  store i32 %i.x, ptr %i.r, align 4
  store i32 1, ptr %i.a, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.y = load i32, ptr %i.a, align 4
  ret i32 %i.y
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEm(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #1

; Function Attrs: mustprogress noinline norecurse nounwind optnone uwtable
define internal fastcc noundef i32 @_ZL15__get_cpuid_maxjPj(i32 noundef range(i32 0, -2147483647) %0) unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  %i.c = alloca i32, align 4                      ; 2 uses
  %i.d = alloca i32, align 4                      ; 2 uses
  %i.e = alloca i32, align 4
  %i.f = alloca i32, align 4
  store i32 %0, ptr %i.a, align 4
  store ptr null, ptr %i.b, align 8
  %i.g = load i32, ptr %i.a, align 4
  %i.h = call { i32, i32, i32, i32 } asm "  xchg$(q$|$)  $(%$|$)rbx,${1:q}\0A  cpuid\0A  xchg$(q$|$)  $(%$|$)rbx,${1:q}", "={ax},=r,={cx},={dx},0,~{dirflag},~{fpsr},~{flags}"(i32 %i.g) #3, !srcloc !6 ; 4 uses
  %i.i = extractvalue { i32, i32, i32, i32 } %i.h, 0
  %i.j = extractvalue { i32, i32, i32, i32 } %i.h, 1
  %i.k = extractvalue { i32, i32, i32, i32 } %i.h, 2
  %i.l = extractvalue { i32, i32, i32, i32 } %i.h, 3
  store i32 %i.i, ptr %i.c, align 4
  store i32 %i.j, ptr %i.d, align 4
  store i32 %i.k, ptr %i.e, align 4
  store i32 %i.l, ptr %i.f, align 4
  %i.m = load ptr, ptr %i.b, align 8
  %i.n = icmp ne ptr %i.m, null
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = load i32, ptr %i.d, align 4
  %i.p = load ptr, ptr %i.b, align 8
  store i32 %i.o, ptr %i.p, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.q = load i32, ptr %i.c, align 4
  ret i32 %i.q
}

attributes #0 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline norecurse nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!5 = !{i64 2149991893, i64 2149991975, i64 2149992056}
!6 = !{i64 2149991517, i64 2149991599, i64 2149991680}
end_hunk_0
