begin_hunk_0
inline.NumInlined: 637
inline.NumDeleted: 308
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"
end_hunk_0
begin_hunk_1_@_ZN5folly10MacAddress13setFromBinaryENS_5RangeIPKhEE:bb.a
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5folly10MacAddress8toStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull readonly align 1 captures(none) dereferenceable(8) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %2, ptr %0, align 8, !tbaa !22
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.a, align 8, !tbaa !25
  store i8 0, ptr %2, align 8, !tbaa !28
  %3 = tail call noalias noundef nonnull dereferenceable(31) ptr @_Znwm(i64 noundef 31) #28 ; 4 uses
  store ptr %3, ptr %0, align 8, !tbaa !31
  store i64 30, ptr %2, align 8, !tbaa !28
  store i64 17, ptr %i.a, align 8, !tbaa !25
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 17
  store i8 0, ptr %4, align 1, !tbaa !28
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.b = load i8, ptr %5, align 1, !tbaa !28      ; 2 uses
  %6 = lshr i8 %i.b, 4
  %i.c = zext nneg i8 %6 to i64
  %i.d = getelementptr inbounds nuw i8, ptr @_ZZNK5folly10MacAddress8toStringB5cxx11EvE9hexValues, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !28
  %7 = and i8 %i.b, 15
  %8 = zext nneg i8 %7 to i64
  %i.f = getelementptr inbounds nuw i8, ptr @_ZZNK5folly10MacAddress8toStringB5cxx11EvE9hexValues, i64 %8
  %9 = load i8, ptr %i.f, align 1, !tbaa !28
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.h = load i8, ptr %i.g, align 1, !tbaa !28    ; 2 uses
  %i.i = lshr i8 %i.h, 4
  %i.j = zext nneg i8 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr @_ZZNK5folly10MacAddress8toStringB5cxx11EvE9hexValues, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !28
  %i.m = and i8 %i.h, 15
  %i.n = zext nneg i8 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr @_ZZNK5folly10MacAddress8toStringB5cxx11EvE9hexValues, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !28
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.r = load i8, ptr %i.q, align 1, !tbaa !28    ; 2 uses
  %i.s = lshr i8 %i.r, 4
  %i.t = zext nneg i8 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr @_ZZNK5folly10MacAddress8toStringB5cxx11EvE9hexValues, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !28
  %i.w = and i8 %i.r, 15
  %i.x = zext nneg i8 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr @_ZZNK5folly10MacAddress8toStringB5cxx11EvE9hexValues, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !28
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !28  ; 2 uses
  %i.ac = lshr i8 %i.ab, 4
  %i.ad = zext nneg i8 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr @_ZZNK5folly10MacAddress8toStringB5cxx11EvE9hexValues, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !28
  %i.ag = and i8 %i.ab, 15
  %i.ah = zext nneg i8 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr @_ZZNK5folly10MacAddress8toStringB5cxx11EvE9hexValues, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !28
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 6
  %10 = load i8, ptr %i.ak, align 1, !tbaa !28    ; 2 uses
  %11 = lshr i8 %10, 4
  %12 = zext nneg i8 %11 to i64
  %i.al = getelementptr inbounds nuw i8, ptr @_ZZNK5folly10MacAddress8toStringB5cxx11EvE9hexValues, i64 %12
  %i.am = load i8, ptr %i.al, align 1, !tbaa !28
  %13 = and i8 %10, 15
  %i.an = zext nneg i8 %13 to i64
  %i.ao = getelementptr inbounds nuw i8, ptr @_ZZNK5folly10MacAddress8toStringB5cxx11EvE9hexValues, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !28
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !28  ; 2 uses
  %14 = lshr i8 %i.ar, 4
  %i.as = zext nneg i8 %14 to i64
  %i.at = getelementptr inbounds nuw i8, ptr @_ZZNK5folly10MacAddress8toStringB5cxx11EvE9hexValues, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !28
  %15 = insertelement <16 x i8> <i8 poison, i8 poison, i8 58, i8 poison, i8 poison, i8 58, i8 poison, i8 poison, i8 58, i8 poison, i8 poison, i8 58, i8 poison, i8 poison, i8 58, i8 poison>, i8 %i.e, i64 0
  %16 = insertelement <16 x i8> %15, i8 %9, i64 1
  %17 = insertelement <16 x i8> %16, i8 %i.l, i64 3
  %18 = insertelement <16 x i8> %17, i8 %i.p, i64 4
  %19 = insertelement <16 x i8> %18, i8 %i.v, i64 6
  %20 = insertelement <16 x i8> %19, i8 %i.z, i64 7
  %21 = insertelement <16 x i8> %20, i8 %i.af, i64 9
  %22 = insertelement <16 x i8> %21, i8 %i.aj, i64 10
  %23 = insertelement <16 x i8> %22, i8 %i.am, i64 12
  %24 = insertelement <16 x i8> %23, i8 %i.ap, i64 13
  %25 = insertelement <16 x i8> %24, i8 %i.au, i64 15
  store <16 x i8> %25, ptr %3, align 1, !tbaa !28
  %i.av = and i8 %i.ar, 15
  %i.aw = zext nneg i8 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr @_ZZNK5folly10MacAddress8toStringB5cxx11EvE9hexValues, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !28
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 %i.ay, ptr %i.az, align 1, !tbaa !28
  ret void
}

declare i32 @__gxx_personality_v0(...)
end_hunk_1
begin_hunk_2_@_ZN5folly10MacAddress16trySetFromBinaryENS_5RangeIPKhEE:bb.a
; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN5follylsERSoNS_10MacAddressE(ptr noundef nonnull returned align 8 dereferenceable(8) %0, i64 %1) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.1.0.extract.shift = lshr i64 %1, 16
  %.sroa.2.0.extract.shift = lshr i64 %1, 24
  %.sroa.3.0.extract.shift = lshr i64 %1, 32
  %.sroa.4.0.extract.shift = lshr i64 %1, 40
  %.sroa.5.0.extract.shift = lshr i64 %1, 48
  %.sroa.6.0.extract.shift = lshr i64 %1, 56
  %2 = tail call noalias noundef nonnull dereferenceable(31) ptr @_Znwm(i64 noundef 31) #28 ; 6 uses
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 17
  store i8 0, ptr %3, align 1, !tbaa !28
  %4 = lshr i64 %1, 20
  %5 = and i64 %4, 15
  %6 = getelementptr inbounds nuw i8, ptr @_ZZNK5folly10MacAddress8toStringB5cxx11EvE9hexValues, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !28, !noalias !149
  %8 = and i64 %.sroa.1.0.extract.shift, 15
  %9 = getelementptr inbounds nuw i8, ptr @_ZZNK5folly10MacAddress8toStringB5cxx11EvE9hexValues, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !28, !noalias !149
  %11 = lshr i64 %1, 28
  %12 = and i64 %11, 15
  %13 = getelementptr inbounds nuw i8, ptr @_ZZNK5folly10MacAddress8toStringB5cxx11EvE9hexValues, i64 %12
  %14 = load i8, ptr %13, align 1, !tbaa !28, !noalias !149
  %15 = and i64 %.sroa.2.0.extract.shift, 15
  %16 = getelementptr inbounds nuw i8, ptr @_ZZNK5folly10MacAddress8toStringB5cxx11EvE9hexValues, i64 %15
  %17 = load i8, ptr %16, align 1, !tbaa !28, !noalias !149
  %18 = lshr i64 %1, 36
  %19 = and i64 %18, 15
  %20 = getelementptr inbounds nuw i8, ptr @_ZZNK5folly10MacAddress8toStringB5cxx11EvE9hexValues, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !28, !noalias !149
  %22 = and i64 %.sroa.3.0.extract.shift, 15
  %23 = getelementptr inbounds nuw i8, ptr @_ZZNK5folly10MacAddress8toStringB5cxx11EvE9hexValues, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !28, !noalias !149
  %25 = lshr i64 %1, 44
  %26 = and i64 %25, 15
  %27 = getelementptr inbounds nuw i8, ptr @_ZZNK5folly10MacAddress8toStringB5cxx11EvE9hexValues, i64 %26
  %28 = load i8, ptr %27, align 1, !tbaa !28, !noalias !149
  %29 = and i64 %.sroa.4.0.extract.shift, 15
  %30 = getelementptr inbounds nuw i8, ptr @_ZZNK5folly10MacAddress8toStringB5cxx11EvE9hexValues, i64 %29
  %31 = load i8, ptr %30, align 1, !tbaa !28, !noalias !149
  %32 = lshr i64 %1, 52
  %33 = and i64 %32, 15
  %34 = getelementptr inbounds nuw i8, ptr @_ZZNK5folly10MacAddress8toStringB5cxx11EvE9hexValues, i64 %33
  %35 = load i8, ptr %34, align 1, !tbaa !28, !noalias !149
  %36 = and i64 %.sroa.5.0.extract.shift, 15
  %37 = getelementptr inbounds nuw i8, ptr @_ZZNK5folly10MacAddress8toStringB5cxx11EvE9hexValues, i64 %36
  %38 = load i8, ptr %37, align 1, !tbaa !28, !noalias !149
  %39 = lshr i64 %1, 60
  %40 = getelementptr inbounds nuw i8, ptr @_ZZNK5folly10MacAddress8toStringB5cxx11EvE9hexValues, i64 %39
  %41 = load i8, ptr %40, align 1, !tbaa !28, !noalias !149
  %42 = insertelement <16 x i8> <i8 poison, i8 poison, i8 58, i8 poison, i8 poison, i8 58, i8 poison, i8 poison, i8 58, i8 poison, i8 poison, i8 58, i8 poison, i8 poison, i8 58, i8 poison>, i8 %7, i64 0
  %43 = insertelement <16 x i8> %42, i8 %10, i64 1
  %44 = insertelement <16 x i8> %43, i8 %14, i64 3
  %45 = insertelement <16 x i8> %44, i8 %17, i64 4
  %46 = insertelement <16 x i8> %45, i8 %21, i64 6
  %47 = insertelement <16 x i8> %46, i8 %24, i64 7
  %48 = insertelement <16 x i8> %47, i8 %28, i64 9
  %49 = insertelement <16 x i8> %48, i8 %31, i64 10
  %50 = insertelement <16 x i8> %49, i8 %35, i64 12
  %51 = insertelement <16 x i8> %50, i8 %38, i64 13
  %52 = insertelement <16 x i8> %51, i8 %41, i64 15
  store <16 x i8> %52, ptr %2, align 1, !tbaa !28
  %53 = and i64 %.sroa.6.0.extract.shift, 15
  %54 = getelementptr inbounds nuw i8, ptr @_ZZNK5folly10MacAddress8toStringB5cxx11EvE9hexValues, i64 %53
  %55 = load i8, ptr %54, align 1, !tbaa !28, !noalias !149
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i8 %55, ptr %i.a, align 1, !tbaa !28
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %2, i64 noundef 17)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit unwind label %bb.b ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef %2, i64 noundef 31) #26
  ret ptr %0

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef %2, i64 noundef 31) #26
  resume { ptr, i32 } %i.c
}

end_hunk_2
begin_hunk_3_@llvm.smax.i32
!146 = distinct !{!146, !79}
!147 = distinct !{!147, !79}
!148 = distinct !{!148, !79}
!149 = !{!150}
!150 = distinct !{!150, !151, !"_ZNK5folly10MacAddress8toStringB5cxx11Ev: argument 0"}
!151 = distinct !{!151, !"_ZNK5folly10MacAddress8toStringB5cxx11Ev"}
end_hunk_3
