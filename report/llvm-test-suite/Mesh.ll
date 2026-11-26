Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/Mesh?download=true
inline.NumInlined: 767
inline.NumDeleted: 290
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN4Mesh13checkBadSidesEv:bb.a
; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !guid !228 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !93     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !95   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.j, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !65 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !66
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #18
  br label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i

_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i:    ; preds = %bb.b, %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !3

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !93
  br label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.k = phi ptr [ %.pr, %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.k, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !94
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #18
  br label %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit, %bb.c
  ret void
}

declare void @_ZN8Parallel9globalSumERl(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZN8Parallel9globalSumERi(ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Mesh5writeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEidPKdS9_S9_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(616) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %2, double noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 align 2 !guid !229 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i8, ptr %i.a, align 8, !tbaa !60, !range !230, !noundef !231
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr @_ZN8Parallel4mypeE, align 4, !tbaa !14
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.16, i64 noundef 19) ; 0 uses
  %i.g = load ptr, ptr @_ZSt4cout, align 8, !tbaa !103
  %i.h = getelementptr i8, ptr %i.g, i64 -24
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 240
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !118  ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %bb.d, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt16__throw_bad_castv() #22
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.n = load i8, ptr %i.m, align 8, !tbaa !123
  %.not.i1.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i1.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 67
  %i.p = load i8, ptr %i.o, align 1, !tbaa !40
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.f:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.l)
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !103
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef signext i8 %i.s(ptr noundef nonnull align 8 dereferenceable(570) %i.l, i8 noundef signext 10), !inline_history !4
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.e, %bb.f
  %.0.i.i.i = phi i8 [ %i.p, %bb.e ], [ %i.t, %bb.f ]
  %i.u = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i)
  %i.v = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.u) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !63
  tail call void @_ZN7WriteXY5writeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKdS9_S9_(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %4, ptr noundef %5, ptr noundef %6)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 57
  %i.z = load i8, ptr %i.y, align 1, !tbaa !61, !range !230, !noundef !231
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.ab = load i32, ptr @_ZN8Parallel4mypeE, align 4, !tbaa !14
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.ad = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.17, i64 noundef 20) ; 0 uses
  %i.ae = load ptr, ptr @_ZSt4cout, align 8, !tbaa !103
  %i.af = getelementptr i8, ptr %i.ae, i64 -24
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 240
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !118 ; 6 uses
  %.not.i.i.i10 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i10, label %bb.k, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i11

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt16__throw_bad_castv() #22
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i11: ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !123
  %.not.i1.i.i12 = icmp eq i8 %i.al, 0
  br i1 %.not.i1.i.i12, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i11
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 67
  %i.an = load i8, ptr %i.am, align 1, !tbaa !40
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit14

bb.m:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i11
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.aj)
  %i.ao = load ptr, ptr %i.aj, align 8, !tbaa !103
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = tail call noundef signext i8 %i.aq(ptr noundef nonnull align 8 dereferenceable(570) %i.aj, i8 noundef signext 10), !inline_history !4
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit14

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit14: ; preds = %bb.l, %bb.m
  %.0.i.i.i13 = phi i8 [ %i.an, %bb.l ], [ %i.ar, %bb.m ]
  %i.as = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i13)
  %i.at = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.as) ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit14, %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !64
  tail call void @_ZN10ExportGold5writeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEidPKdS9_S9_(ptr noundef nonnull align 8 dereferenceable(188) %i.av, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %2, double noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.h
  ret void
}

declare void @_ZN7WriteXY5writeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKdS9_S9_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN10ExportGold5writeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEidPKdS9_S9_(ptr noundef nonnull align 8 dereferenceable(188), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, double noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Mesh9getXPlaneEd(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector.0") align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(616) %1, double noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !233 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 60 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !67
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, %bb.a
  %.lcssa13 = phi ptr [ null, %bb.a ], [ %i.aj, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ]
  store ptr %.lcssa13, ptr %0, align 8
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.g = phi ptr [ null, %.lr.ph ], [ %i.ah, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 4 uses
  %i.h = phi ptr [ null, %.lr.ph ], [ %i.ai, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 4 uses
  %i.i = phi ptr [ null, %.lr.ph ], [ %i.aj, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 10 uses
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !75
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %indvars.iv
  %i.l = load double, ptr %i.k, align 8, !tbaa !125
  %i.m = fsub double %i.l, %2
  %i.n = tail call double @llvm.fabs.f64(double %i.m)
  %i.o = fcmp olt double %i.n, f0x3D719799812DEA11
  br i1 %i.o, label %bb.c, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq ptr %i.h, %i.g
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.p, ptr %i.h, align 4, !tbaa !14
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 2 uses
  store ptr %i.q, ptr %i.e, align 8, !tbaa !68
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.e:                                             ; preds = %bb.c
  %i.r = ptrtoint ptr %i.g to i64
  %i.s = ptrtoint ptr %i.i to i64
  %i.t = sub i64 %i.r, %i.s                       ; 7 uses
  %i.u = icmp eq i64 %i.t, 9223372036854775804
  br i1 %i.u, label %bb.f, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  store ptr %i.i, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #22
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.v = ashr exact i64 %i.t, 2                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.v, i64 1)
  %i.w = add nsw i64 %.sroa.speculated.i.i.i, %i.v ; 2 uses
  %i.x = icmp ult i64 %i.w, %i.v
  %i.y = tail call i64 @llvm.umin.i64(i64 %i.w, i64 2305843009213693951)
  %i.z = select i1 %i.x, i64 2305843009213693951, i64 %i.y ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.z, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.aa = shl nuw nsw i64 %i.z, 2
  %i.ab = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #20
          to label %.noexc4 unwind label %.loopexit ; 4 uses

.noexc4:                                          ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 %i.t ; 2 uses
  %i.ad = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.ad, ptr %i.ac, align 4, !tbaa !14
  %i.ae = icmp sgt i64 %i.t, 0
  br i1 %i.ae, label %bb.g, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.g:                                             ; preds = %.noexc4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ab, ptr align 4 %i.i, i64 %i.t, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.g, %.noexc4
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 4 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.t) #18
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.af, ptr %i.e, align 8, !tbaa !68
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.z ; 2 uses
  store ptr %i.ag, ptr %i.f, align 8, !tbaa !66
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

.loopexit:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.i, ptr %0, align 8
  br label %bb.i

.loopexit.split-lp:                               ; preds = %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.i:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i5 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i5, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.t) #18
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.i, %bb.j
  resume { ptr, i32 } %lpad.phi

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.d, %bb.b
  %i.ah = phi ptr [ %i.ag, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.g, %bb.d ], [ %i.g, %bb.b ]
  %i.ai = phi ptr [ %i.af, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.q, %bb.d ], [ %i.h, %bb.b ]
  %i.aj = phi ptr [ %i.ab, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.i, %bb.d ], [ %i.i, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ak = load i32, ptr %i.a, align 4, !tbaa !67
  %i.al = sext i32 %i.ak to i64
  %i.am = icmp slt i64 %indvars.iv.next, %i.al
  br i1 %i.am, label %bb.b, label %._crit_edge, !llvm.loop !232
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #12

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Mesh9getYPlaneEd(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector.0") align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(616) %1, double noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !235 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 60 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !67
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, %bb.a
  %.lcssa13 = phi ptr [ null, %bb.a ], [ %i.ak, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ]
  store ptr %.lcssa13, ptr %0, align 8
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.g = phi ptr [ null, %.lr.ph ], [ %i.ai, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 4 uses
  %i.h = phi ptr [ null, %.lr.ph ], [ %i.aj, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 4 uses
  %i.i = phi ptr [ null, %.lr.ph ], [ %i.ak, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 10 uses
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !75
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %indvars.iv
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load double, ptr %i.l, align 8, !tbaa !126
  %i.n = fsub double %i.m, %2
  %i.o = tail call double @llvm.fabs.f64(double %i.n)
  %i.p = fcmp olt double %i.o, f0x3D719799812DEA11
  br i1 %i.p, label %bb.c, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq ptr %i.h, %i.g
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.q, ptr %i.h, align 4, !tbaa !14
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 2 uses
  store ptr %i.r, ptr %i.e, align 8, !tbaa !68
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.e:                                             ; preds = %bb.c
  %i.s = ptrtoint ptr %i.g to i64
  %i.t = ptrtoint ptr %i.i to i64
  %i.u = sub i64 %i.s, %i.t                       ; 7 uses
  %i.v = icmp eq i64 %i.u, 9223372036854775804
  br i1 %i.v, label %bb.f, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  store ptr %i.i, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #22
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.w = ashr exact i64 %i.u, 2                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.w, i64 1)
  %i.x = add nsw i64 %.sroa.speculated.i.i.i, %i.w ; 2 uses
  %i.y = icmp ult i64 %i.x, %i.w
  %i.z = tail call i64 @llvm.umin.i64(i64 %i.x, i64 2305843009213693951)
  %i.aa = select i1 %i.y, i64 2305843009213693951, i64 %i.z ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.aa, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ab = shl nuw nsw i64 %i.aa, 2
  %i.ac = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #20
          to label %.noexc4 unwind label %.loopexit ; 4 uses

.noexc4:                                          ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 %i.u ; 2 uses
  %i.ae = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.ae, ptr %i.ad, align 4, !tbaa !14
  %i.af = icmp sgt i64 %i.u, 0
  br i1 %i.af, label %bb.g, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.g:                                             ; preds = %.noexc4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ac, ptr align 4 %i.i, i64 %i.u, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.g, %.noexc4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 4 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.u) #18
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.ag, ptr %i.e, align 8, !tbaa !68
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.aa ; 2 uses
  store ptr %i.ah, ptr %i.f, align 8, !tbaa !66
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

.loopexit:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.i, ptr %0, align 8
  br label %bb.i

.loopexit.split-lp:                               ; preds = %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.i:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i5 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i5, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.u) #18
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.i, %bb.j
  resume { ptr, i32 } %lpad.phi

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.d, %bb.b
  %i.ai = phi ptr [ %i.ah, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.g, %bb.d ], [ %i.g, %bb.b ]
  %i.aj = phi ptr [ %i.ag, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.r, %bb.d ], [ %i.h, %bb.b ]
  %i.ak = phi ptr [ %i.ac, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.i, %bb.d ], [ %i.i, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.al = load i32, ptr %i.a, align 4, !tbaa !67
  %i.am = sext i32 %i.al to i64
  %i.an = icmp slt i64 %indvars.iv.next, %i.am
  br i1 %i.an, label %bb.b, label %._crit_edge, !llvm.loop !234
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Mesh14getPlaneChunksEiPKiRSt6vectorIiSaIiEES5_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(616) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %3, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !238 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !68
  %i.c = load ptr, ptr %3, align 8, !tbaa !65     ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.a
  store ptr %i.c, ptr %i.a, align 8, !tbaa !68
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %bb.a, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !68
  %i.f = load ptr, ptr %4, align 8, !tbaa !65     ; 2 uses
  %.not.i.i11 = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i11, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit13, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i12

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i12:      ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  store ptr %i.f, ptr %i.d, align 8, !tbaa !68
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit13

_ZNSt6vectorIiSaIiEE6resizeEm.exit13:             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i12
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !78
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit13
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.k = sext i32 %1 to i64
  %i.l = ptrtoint ptr %2 to i64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit21, %_ZNSt6vectorIiSaIiEE6resizeEm.exit13
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit21
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit21 ] ; 2 uses
  %.02730 = phi i32 [ 0, %.lr.ph ], [ %i.ag, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit21 ] ; 3 uses
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !65
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv
  %i.q = load i32, ptr %i.p, align 4, !tbaa !14
  %i.r = sext i32 %.02730 to i64                  ; 2 uses
  %.idx29 = shl nsw i64 %i.r, 2
  %i.s = getelementptr inbounds i8, ptr %2, i64 %.idx29 ; 2 uses
  %i.t = sub nsw i64 %i.k, %i.r                   ; 2 uses
  %i.u = icmp sgt i64 %i.t, 0
  br i1 %i.u, label %_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt11lower_boundIPKiiET_S2_S2_RKT0_.exit

_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i: ; preds = %bb.b, %_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %.017.i.i = phi i64 [ %.1.i.i, %_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.t, %bb.b ] ; 2 uses
  %.01116.i.i = phi ptr [ %.112.i.i, %_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.s, %bb.b ] ; 2 uses
  %i.v = lshr i64 %.017.i.i, 1                    ; 3 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.01116.i.i, i64 %i.v ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !14
  %i.y = icmp slt i32 %i.x, %i.q                  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.aa = xor i64 %i.v, -1
  %i.ab = add nsw i64 %.017.i.i, %i.aa
  %.112.i.i = select i1 %i.y, ptr %i.z, ptr %.01116.i.i ; 2 uses
  %.1.i.i = select i1 %i.y, i64 %i.ab, i64 %i.v   ; 2 uses
  %i.ac = icmp sgt i64 %.1.i.i, 0
  br i1 %i.ac, label %_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt11lower_boundIPKiiET_S2_S2_RKT0_.exit, !llvm.loop !236

_ZSt11lower_boundIPKiiET_S2_S2_RKT0_.exit:        ; preds = %_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i, %bb.b
  %.011.lcssa.i.i = phi ptr [ %i.s, %bb.b ], [ %.112.i.i, %_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i ]
  %i.ad = ptrtoint ptr %.011.lcssa.i.i to i64
  %i.ae = sub i64 %i.ad, %i.l
  %i.af = lshr exact i64 %i.ae, 2
  %i.ag = trunc i64 %i.af to i32                  ; 3 uses
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !68  ; 4 uses
  %i.ai = load ptr, ptr %i.m, align 8, !tbaa !66
  %.not.i = icmp eq ptr %i.ah, %i.ai
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZSt11lower_boundIPKiiET_S2_S2_RKT0_.exit
  store i32 %.02730, ptr %i.ah, align 4, !tbaa !14
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  store ptr %i.aj, ptr %i.a, align 8, !tbaa !68
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.d:                                             ; preds = %_ZSt11lower_boundIPKiiET_S2_S2_RKT0_.exit
  %i.ak = load ptr, ptr %3, align 8, !tbaa !65    ; 4 uses
  %i.al = ptrtoint ptr %i.ah to i64
  %i.am = ptrtoint ptr %i.ak to i64               ; 2 uses
  %i.an = sub i64 %i.al, %i.am                    ; 5 uses
  %i.ao = icmp eq i64 %i.an, 9223372036854775804
  br i1 %i.ao, label %bb.e, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #22
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.ap = ashr exact i64 %i.an, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ap, i64 1)
  %i.aq = add nsw i64 %.sroa.speculated.i.i.i, %i.ap ; 2 uses
  %i.ar = icmp ult i64 %i.aq, %i.ap
  %i.as = tail call i64 @llvm.umin.i64(i64 %i.aq, i64 2305843009213693951)
  %i.at = select i1 %i.ar, i64 2305843009213693951, i64 %i.as ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.at, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.au = shl nuw nsw i64 %i.at, 2
  %i.av = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.au) #20 ; 4 uses
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 %i.an ; 2 uses
  store i32 %.02730, ptr %i.aw, align 4, !tbaa !14
  %i.ax = icmp sgt i64 %i.an, 0
  br i1 %i.ax, label %bb.f, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.av, ptr align 4 %i.ak, i64 %i.an, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.f, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %.not.i17.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.az = load ptr, ptr %i.m, align 8, !tbaa !66
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = sub i64 %i.ba, %i.am
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.bb) #18
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.av, ptr %3, align 8, !tbaa !65
  store ptr %i.ay, ptr %i.a, align 8, !tbaa !68
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.at
  store ptr %i.bc, ptr %i.m, align 8, !tbaa !66
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %bb.c, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i
  %i.bd = load ptr, ptr %i.d, align 8, !tbaa !68  ; 4 uses
  %i.be = load ptr, ptr %i.n, align 8, !tbaa !66
  %.not.i14 = icmp eq ptr %i.bd, %i.be
  br i1 %.not.i14, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  store i32 %i.ag, ptr %i.bd, align 4, !tbaa !14
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  store ptr %i.bf, ptr %i.d, align 8, !tbaa !68
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit21

bb.i:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.bg = load ptr, ptr %4, align 8, !tbaa !65    ; 4 uses
  %i.bh = ptrtoint ptr %i.bd to i64
  %i.bi = ptrtoint ptr %i.bg to i64               ; 2 uses
  %i.bj = sub i64 %i.bh, %i.bi                    ; 5 uses
  %i.bk = icmp eq i64 %i.bj, 9223372036854775804
  br i1 %i.bk, label %bb.j, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i15

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #22
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i15: ; preds = %bb.i
  %i.bl = ashr exact i64 %i.bj, 2                 ; 3 uses
  %.sroa.speculated.i.i.i16 = tail call i64 @llvm.umax.i64(i64 %i.bl, i64 1)
  %i.bm = add nsw i64 %.sroa.speculated.i.i.i16, %i.bl ; 2 uses
  %i.bn = icmp ult i64 %i.bm, %i.bl
  %i.bo = tail call i64 @llvm.umin.i64(i64 %i.bm, i64 2305843009213693951)
  %i.bp = select i1 %i.bn, i64 2305843009213693951, i64 %i.bo ; 3 uses
  %.not.i.i.i17 = icmp ne i64 %i.bp, 0
  tail call void @llvm.assume(i1 %.not.i.i.i17)
  %i.bq = shl nuw nsw i64 %i.bp, 2
  %i.br = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bq) #20 ; 4 uses
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 %i.bj ; 2 uses
  store i32 %i.ag, ptr %i.bs, align 4, !tbaa !14
  %i.bt = icmp sgt i64 %i.bj, 0
  br i1 %i.bt, label %bb.k, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i18

bb.k:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i15
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.br, ptr align 4 %i.bg, i64 %i.bj, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i18

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i18: ; preds = %bb.k, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i15
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  %.not.i17.i.i19 = icmp eq ptr %i.bg, null
end_hunk_0
