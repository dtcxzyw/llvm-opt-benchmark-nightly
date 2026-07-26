inline.NumInlined: 71
inline.NumDeleted: 40
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }

; Function Attrs: mustprogress nounwind uwtable
define noundef range(i32 0, 14) i32 @_ZN4absl12lts_2024011612crc_internal10GetCpuTypeEv() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = tail call { i32, i32, i32, i32 } asm sideeffect "cpuid \0A\09", "={ax},={bx},={cx},={dx},{ax},{cx},~{dirflag},~{fpsr},~{flags}"(i32 0, i32 0) #3, !srcloc !7 ; 3 uses
  %i.b = extractvalue { i32, i32, i32, i32 } %i.a, 1
  %i.c = extractvalue { i32, i32, i32, i32 } %i.a, 2
  %i.d = extractvalue { i32, i32, i32, i32 } %i.a, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #3
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store i32 %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.d, ptr %i.f, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.c, ptr %i.g, align 8
  %i.h = load i64, ptr %i.e, align 1
  %i.i = xor i64 %i.h, 5288754736637306183
  %i.j = getelementptr i8, ptr %i.e, i64 8
  %i.k = load i32, ptr %i.j, align 1
  %i.l = zext i32 %i.k to i64
  %i.m = xor i64 %i.l, 1818588270
  %i.n = or i64 %i.i, %i.m
  %i.o = icmp ne i64 %i.n, 0
  %i.p = zext i1 %i.o to i32
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.b, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20.i: ; preds = %bb.a
  %i.r = load i64, ptr %i.e, align 1
  %i.s = xor i64 %i.r, 7598819853104084289
  %i.t = getelementptr i8, ptr %i.e, i64 8
  %i.u = load i32, ptr %i.t, align 1
  %i.v = zext i32 %i.u to i64
  %i.w = xor i64 %i.v, 1145913699
  %i.x = or i64 %i.s, %i.w
  %i.y = icmp ne i64 %i.x, 0
  %i.z = zext i1 %i.y to i32
  %bcmp.i19.fr.i = freeze i32 %i.z
  %i.aa = icmp eq i32 %bcmp.i19.fr.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #3
  br i1 %i.aa, label %bb.j, label %_ZN4absl12lts_2024011612crc_internal12_GLOBAL__N_115GetIntelCpuTypeEv.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #3
  %i.ab = tail call { i32, i32, i32, i32 } asm sideeffect "cpuid \0A\09", "={ax},={bx},={cx},={dx},{ax},{cx},~{dirflag},~{fpsr},~{flags}"(i32 1, i32 0) #3, !srcloc !7 ; 2 uses
  %i.ac = extractvalue { i32, i32, i32, i32 } %i.ab, 0 ; 4 uses
  %i.ad = extractvalue { i32, i32, i32, i32 } %i.ab, 1
  %i.ae = and i32 %i.ad, 255
  %i.af = and i32 %i.ac, 3840
  %i.ag = icmp ne i32 %i.af, 1536
  %cond.i = icmp ne i32 %i.ae, 0
  %brmerge.i = select i1 %cond.i, i1 true, i1 %i.ag
  br i1 %brmerge.i, label %_ZN4absl12lts_2024011612crc_internal12_GLOBAL__N_115GetIntelCpuTypeEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ah = lshr i32 %i.ac, 4
  %i.ai = and i32 %i.ah, 15
  %i.aj = lshr i32 %i.ac, 12
  %i.ak = and i32 %i.aj, 240
  %i.al = or disjoint i32 %i.ai, %i.ak
  %trunc.i = trunc nuw i32 %i.al to i8
  switch i8 %trunc.i, label %bb.r [
    i8 44, label %_ZN4absl12lts_2024011612crc_internal12_GLOBAL__N_115GetIntelCpuTypeEv.exit
    i8 45, label %bb.d
    i8 62, label %bb.e
    i8 60, label %bb.f
    i8 63, label %bb.f
    i8 79, label %bb.g
    i8 86, label %bb.g
    i8 85, label %bb.h
    i8 94, label %bb.i
  ]

bb.d:                                             ; preds = %bb.c
  br label %_ZN4absl12lts_2024011612crc_internal12_GLOBAL__N_115GetIntelCpuTypeEv.exit

bb.e:                                             ; preds = %bb.c
  br label %_ZN4absl12lts_2024011612crc_internal12_GLOBAL__N_115GetIntelCpuTypeEv.exit

bb.f:                                             ; preds = %bb.c, %bb.c
  br label %_ZN4absl12lts_2024011612crc_internal12_GLOBAL__N_115GetIntelCpuTypeEv.exit

bb.g:                                             ; preds = %bb.c, %bb.c
  br label %_ZN4absl12lts_2024011612crc_internal12_GLOBAL__N_115GetIntelCpuTypeEv.exit

bb.h:                                             ; preds = %bb.c
  %i.am = and i32 %i.ac, 15
  %i.an = icmp samesign ult i32 %i.am, 5
  %..i = select i1 %i.an, i32 8, i32 7
  br label %_ZN4absl12lts_2024011612crc_internal12_GLOBAL__N_115GetIntelCpuTypeEv.exit

bb.i:                                             ; preds = %bb.c
  br label %_ZN4absl12lts_2024011612crc_internal12_GLOBAL__N_115GetIntelCpuTypeEv.exit

bb.j:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20.i
  %i.ao = tail call { i32, i32, i32, i32 } asm sideeffect "cpuid \0A\09", "={ax},={bx},={cx},={dx},{ax},{cx},~{dirflag},~{fpsr},~{flags}"(i32 1, i32 0) #3, !srcloc !7
  %i.ap = extractvalue { i32, i32, i32, i32 } %i.ao, 0 ; 4 uses
  %i.aq = lshr i32 %i.ap, 8
  %i.ar = and i32 %i.aq, 15                       ; 2 uses
  %i.as = lshr i32 %i.ap, 4
  %i.at = and i32 %i.as, 15                       ; 2 uses
  %i.au = icmp eq i32 %i.ar, 15
  br i1 %i.au, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.av = lshr i32 %i.ap, 20
  %i.aw = and i32 %i.av, 255
  %i.ax = add nuw nsw i32 %i.aw, 15
  %i.ay = lshr i32 %i.ap, 12
  %i.az = and i32 %i.ay, 240
  %i.ba = or disjoint i32 %i.at, %i.az
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.010.i = phi i32 [ %i.ba, %bb.k ], [ %i.at, %bb.j ] ; 2 uses
  %.09.i = phi i32 [ %i.ax, %bb.k ], [ %i.ar, %bb.j ]
  switch i32 %.09.i, label %_ZN4absl12lts_2024011612crc_internal12_GLOBAL__N_115GetIntelCpuTypeEv.exit [
    i32 23, label %bb.m
    i32 25, label %bb.o
  ]

bb.m:                                             ; preds = %bb.l
  switch i32 %.010.i, label %bb.r [
    i32 0, label %_ZN4absl12lts_2024011612crc_internal12_GLOBAL__N_115GetIntelCpuTypeEv.exit
    i32 1, label %_ZN4absl12lts_2024011612crc_internal12_GLOBAL__N_115GetIntelCpuTypeEv.exit
    i32 48, label %bb.n
    i32 49, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m, %bb.m
  br label %_ZN4absl12lts_2024011612crc_internal12_GLOBAL__N_115GetIntelCpuTypeEv.exit

bb.o:                                             ; preds = %bb.l
  switch i32 %.010.i, label %bb.r [
    i32 0, label %_ZN4absl12lts_2024011612crc_internal12_GLOBAL__N_115GetIntelCpuTypeEv.exit
    i32 1, label %_ZN4absl12lts_2024011612crc_internal12_GLOBAL__N_115GetIntelCpuTypeEv.exit
    i32 16, label %bb.p
    i32 17, label %bb.p
    i32 68, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o, %bb.o
  br label %_ZN4absl12lts_2024011612crc_internal12_GLOBAL__N_115GetIntelCpuTypeEv.exit

bb.q:                                             ; preds = %bb.o
  br label %_ZN4absl12lts_2024011612crc_internal12_GLOBAL__N_115GetIntelCpuTypeEv.exit

bb.r:                                             ; preds = %bb.c, %bb.o, %bb.m
  br label %_ZN4absl12lts_2024011612crc_internal12_GLOBAL__N_115GetIntelCpuTypeEv.exit

_ZN4absl12lts_2024011612crc_internal12_GLOBAL__N_115GetIntelCpuTypeEv.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20.i, %bb.r, %bb.q, %bb.p, %bb.o, %bb.o, %bb.n, %bb.m, %bb.m, %bb.l, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ 10, %bb.i ], [ 4, %bb.o ], [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20.i ], [ 0, %bb.b ], [ 12, %bb.d ], [ 11, %bb.e ], [ 1, %bb.f ], [ 9, %bb.g ], [ %..i, %bb.h ], [ 13, %bb.c ], [ 4, %bb.o ], [ 0, %bb.l ], [ 6, %bb.q ], [ 2, %bb.n ], [ 0, %bb.r ], [ 3, %bb.m ], [ 5, %bb.p ], [ 3, %bb.m ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @_ZN4absl12lts_2024011612crc_internal21SupportsArmCRC32PMULLEv() local_unnamed_addr #1 {
bb.a:
  ret i1 false
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind }

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
!7 = !{i64 1319, i64 1328}
end_hunk_0
