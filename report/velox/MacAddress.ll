begin_hunk_0
inline.NumInlined: 635
inline.NumDeleted: 308
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"
end_hunk_0
begin_hunk_1_@_ZN5folly10MacAddress13setFromBinaryENS_5RangeIPKhEE:bb.a
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5folly10MacAddress8toStringB5cxx11Ev(ptr dead_on_unwind noalias nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull readonly align 1 captures(none) dereferenceable(8) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %3, ptr %0, align 8, !tbaa !22
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %4, align 8, !tbaa !25
  store i8 0, ptr %3, align 8, !tbaa !28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef null, i64 noundef 17)
          to label %bb.a unwind label %54

bb.a:                                             ; preds = %2
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %.pre.i.i, i8 0, i64 17, i1 false)
  store i64 17, ptr %4, align 8, !tbaa !25
  %5 = load ptr, ptr %0, align 8, !tbaa !31
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 17
  store i8 0, ptr %i.a, align 1, !tbaa !28
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %7 = load i8, ptr %6, align 1, !tbaa !28
  %8 = lshr i8 %7, 4
  %9 = zext nneg i8 %8 to i64
  %10 = getelementptr inbounds nuw i8, ptr @_ZZNK5folly10MacAddress8toStringB5cxx11EvE9hexValues, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !28
  %12 = load ptr, ptr %0, align 8, !tbaa !31
  store i8 %11, ptr %12, align 1, !tbaa !28
  %i.b = load i8, ptr %6, align 1, !tbaa !28
  %13 = and i8 %i.b, 15
  %i.c = zext nneg i8 %13 to i64
  %i.d = getelementptr inbounds nuw i8, ptr @_ZZNK5folly10MacAddress8toStringB5cxx11EvE9hexValues, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !28
  %14 = load ptr, ptr %0, align 8, !tbaa !31
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 1
  store i8 %i.e, ptr %15, align 1, !tbaa !28
  %16 = load ptr, ptr %0, align 8, !tbaa !31
  %i.f = getelementptr inbounds nuw i8, ptr %16, i64 2
  store i8 58, ptr %i.f, align 1, !tbaa !28
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 3 ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !28
  %i.i = lshr i8 %i.h, 4
  %i.j = zext nneg i8 %i.i to i64
  %17 = getelementptr inbounds nuw i8, ptr @_ZZNK5folly10MacAddress8toStringB5cxx11EvE9hexValues, i64 %i.j
  %18 = load i8, ptr %17, align 1, !tbaa !28
  %19 = load ptr, ptr %0, align 8, !tbaa !31
  %i.k = getelementptr inbounds nuw i8, ptr %19, i64 3
  store i8 %18, ptr %i.k, align 1, !tbaa !28
  %i.l = load i8, ptr %i.g, align 1, !tbaa !28
  %i.m = and i8 %i.l, 15
  %i.n = zext nneg i8 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr @_ZZNK5folly10MacAddress8toStringB5cxx11EvE9hexValues, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !28
  %20 = load ptr, ptr %0, align 8, !tbaa !31
  %21 = getelementptr inbounds nuw i8, ptr %20, i64 4
  store i8 %i.p, ptr %21, align 1, !tbaa !28
  %22 = load ptr, ptr %0, align 8, !tbaa !31
  %23 = getelementptr inbounds nuw i8, ptr %22, i64 5
  store i8 58, ptr %23, align 1, !tbaa !28
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !28
  %i.s = lshr i8 %i.r, 4
  %i.t = zext nneg i8 %i.s to i64
  %24 = getelementptr inbounds nuw i8, ptr @_ZZNK5folly10MacAddress8toStringB5cxx11EvE9hexValues, i64 %i.t
  %25 = load i8, ptr %24, align 1, !tbaa !28
  %26 = load ptr, ptr %0, align 8, !tbaa !31
  %i.u = getelementptr inbounds nuw i8, ptr %26, i64 6
  store i8 %25, ptr %i.u, align 1, !tbaa !28
  %i.v = load i8, ptr %i.q, align 1, !tbaa !28
  %i.w = and i8 %i.v, 15
  %i.x = zext nneg i8 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr @_ZZNK5folly10MacAddress8toStringB5cxx11EvE9hexValues, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !28
  %27 = load ptr, ptr %0, align 8, !tbaa !31
  %28 = getelementptr inbounds nuw i8, ptr %27, i64 7
  store i8 %i.z, ptr %28, align 1, !tbaa !28
  %29 = load ptr, ptr %0, align 8, !tbaa !31
  %30 = getelementptr inbounds nuw i8, ptr %29, i64 8
  store i8 58, ptr %30, align 1, !tbaa !28
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 5 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !28
  %i.ac = lshr i8 %i.ab, 4
  %i.ad = zext nneg i8 %i.ac to i64
  %31 = getelementptr inbounds nuw i8, ptr @_ZZNK5folly10MacAddress8toStringB5cxx11EvE9hexValues, i64 %i.ad
  %32 = load i8, ptr %31, align 1, !tbaa !28
  %33 = load ptr, ptr %0, align 8, !tbaa !31
  %i.ae = getelementptr inbounds nuw i8, ptr %33, i64 9
  store i8 %32, ptr %i.ae, align 1, !tbaa !28
  %i.af = load i8, ptr %i.aa, align 1, !tbaa !28
  %i.ag = and i8 %i.af, 15
  %i.ah = zext nneg i8 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr @_ZZNK5folly10MacAddress8toStringB5cxx11EvE9hexValues, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !28
  %34 = load ptr, ptr %0, align 8, !tbaa !31
  %i.ak = getelementptr inbounds nuw i8, ptr %34, i64 10
  store i8 %i.aj, ptr %i.ak, align 1, !tbaa !28
  %35 = load ptr, ptr %0, align 8, !tbaa !31
  %36 = getelementptr inbounds nuw i8, ptr %35, i64 11
  store i8 58, ptr %36, align 1, !tbaa !28
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 6 ; 2 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !28
  %37 = lshr i8 %i.am, 4
  %i.an = zext nneg i8 %37 to i64
  %i.ao = getelementptr inbounds nuw i8, ptr @_ZZNK5folly10MacAddress8toStringB5cxx11EvE9hexValues, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !28
  %38 = load ptr, ptr %0, align 8, !tbaa !31
  %i.aq = getelementptr inbounds nuw i8, ptr %38, i64 12
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !28
  %i.ar = load i8, ptr %i.al, align 1, !tbaa !28
  %39 = and i8 %i.ar, 15
  %i.as = zext nneg i8 %39 to i64
  %i.at = getelementptr inbounds nuw i8, ptr @_ZZNK5folly10MacAddress8toStringB5cxx11EvE9hexValues, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !28
  %40 = load ptr, ptr %0, align 8, !tbaa !31
  %41 = getelementptr inbounds nuw i8, ptr %40, i64 13
  store i8 %i.au, ptr %41, align 1, !tbaa !28
  %42 = load ptr, ptr %0, align 8, !tbaa !31
  %43 = getelementptr inbounds nuw i8, ptr %42, i64 14
  store i8 58, ptr %43, align 1, !tbaa !28
  %44 = getelementptr inbounds nuw i8, ptr %1, i64 7 ; 2 uses
  %45 = load i8, ptr %44, align 1, !tbaa !28
  %46 = lshr i8 %45, 4
  %47 = zext nneg i8 %46 to i64
  %48 = getelementptr inbounds nuw i8, ptr @_ZZNK5folly10MacAddress8toStringB5cxx11EvE9hexValues, i64 %47
  %49 = load i8, ptr %48, align 1, !tbaa !28
  %50 = load ptr, ptr %0, align 8, !tbaa !31
  %51 = getelementptr inbounds nuw i8, ptr %50, i64 15
  store i8 %49, ptr %51, align 1, !tbaa !28
  %52 = load i8, ptr %44, align 1, !tbaa !28
  %i.av = and i8 %52, 15
  %i.aw = zext nneg i8 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr @_ZZNK5folly10MacAddress8toStringB5cxx11EvE9hexValues, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !28
  %53 = load ptr, ptr %0, align 8, !tbaa !31
  %i.az = getelementptr inbounds nuw i8, ptr %53, i64 16
  store i8 %i.ay, ptr %i.az, align 1, !tbaa !28
  ret void

54:                                               ; preds = %2
  %55 = landingpad { ptr, i32 }
          cleanup
  %56 = load ptr, ptr %0, align 8, !tbaa !31      ; 2 uses
  %57 = icmp eq ptr %56, %3
  br i1 %57, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %54
  %58 = load i64, ptr %3, align 8, !tbaa !28
  %59 = add i64 %58, 1
  tail call void @_ZdlPvm(ptr noundef %56, i64 noundef %59) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %54, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %55
}

declare i32 @__gxx_personality_v0(...)
end_hunk_1
begin_hunk_2_@_ZN5folly10MacAddress16trySetFromBinaryENS_5RangeIPKhEE:bb.a
; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN5follylsERSoNS_10MacAddressE(ptr noundef nonnull returned align 8 dereferenceable(8) %0, i64 %1) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.folly::MacAddress", align 8 ; 2 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  store i64 %1, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @_ZNK5folly10MacAddress8toStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 1 dereferenceable(8) %2)
  %4 = load ptr, ptr %3, align 8, !tbaa !31
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %5 = load i64, ptr %i.a, align 8, !tbaa !25
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %4, i64 noundef %5)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.b ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.a
  %6 = load ptr, ptr %3, align 8, !tbaa !31       ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %8 = icmp eq ptr %6, %7
  br i1 %8, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %9 = load i64, ptr %7, align 8, !tbaa !28
  %10 = add i64 %9, 1
  call void @_ZdlPvm(ptr noundef %6, i64 noundef %10) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret ptr %0

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  %11 = load ptr, ptr %3, align 8, !tbaa !31      ; 2 uses
  %12 = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %13 = icmp eq ptr %11, %12
  br i1 %13, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.b
  %14 = load i64, ptr %12, align 8, !tbaa !28
  %15 = add i64 %14, 1
  call void @_ZdlPvm(ptr noundef %11, i64 noundef %15) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %i.c
}

end_hunk_2
begin_hunk_3_@llvm.smax.i32
!146 = distinct !{!146, !79}
!147 = distinct !{!147, !79}
!148 = distinct !{!148, !79}
end_hunk_3
