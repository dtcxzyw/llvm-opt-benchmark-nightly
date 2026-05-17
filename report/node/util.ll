inline.NumInlined: 2284
inline.NumDeleted: 812
begin_hunk_0_@_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm:bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.59, i64 noundef %2, i64 noundef %i.b) #26
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.d, ptr %0, align 8
  %i.e = load ptr, ptr %1, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %2 ; 2 uses
  %i.g = sub nuw i64 %i.b, %2
  %spec.select.i.i = tail call noundef i64 @llvm.umin.i64(i64 %3, i64 %i.g) ; 8 uses
  %i.h = icmp ugt i64 %spec.select.i.i, 15
  br i1 %i.h, label %bb.c, label %._crit_edge.i.i

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i
  %i.i = icmp slt i64 %spec.select.i.i, 0
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #26
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.j = add nuw i64 %spec.select.i.i, 1          ; 2 uses
  %i.k = icmp slt i64 %i.j, 0
  br i1 %i.k, label %bb.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !5

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt17__throw_bad_allocv() #26
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.e
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #27 ; 2 uses
  store ptr %i.l, ptr %0, align 8
  store i64 %spec.select.i.i, ptr %i.d, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i
  %i.m = phi ptr [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i ] ; 3 uses
  switch i64 %spec.select.i.i, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_mm.exit
  ]

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.n = load i8, ptr %i.f, align 1
  store i8 %i.n, ptr %i.m, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_mm.exit

bb.h:                                             ; preds = %._crit_edge.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr align 1 %i.f, i64 %spec.select.i.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_mm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_mm.exit: ; preds = %._crit_edge.i.i, %bb.g, %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %spec.select.i.i, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %spec.select.i.i
  store i8 0, ptr %i.p, align 1
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = icmp eq ptr %i.a, %i.b
  %i.d = load ptr, ptr %1, align 8                ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.f = icmp eq ptr %i.d, %i.e                   ; 2 uses
  br i1 %i.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit: ; preds = %bb.a
  br i1 %i.f, label %bb.b, label %.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread: ; preds = %bb.a
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8              ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  tail call void @llvm.assume(i1 %i.i)
  %.not21 = icmp eq ptr %1, %0
  br i1 %.not21, label %bb.h, label %bb.c, !prof !5

bb.c:                                             ; preds = %bb.b
  switch i64 %i.h, label %bb.e [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.j = load i8, ptr %i.d, align 1
  store i8 %i.j, ptr %i.a, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.a, ptr align 1 %i.d, i64 %i.h, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %bb.c, %bb.e, %bb.d
  %i.k = load i64, ptr %i.g, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.l, align 8
  %i.m = load ptr, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1
  %.pre = load ptr, ptr %1, align 8
  br label %bb.h

.thread:                                          ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %0, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load i64, ptr %i.p, align 8
  store i64 %i.q, ptr %i.o, align 8
  %i.r = load i64, ptr %i.e, align 8
  store i64 %i.r, ptr %i.b, align 8
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread
  %i.s = load i64, ptr %i.b, align 8
  store ptr %i.d, ptr %0, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.u, ptr %i.v, align 8
  %i.w = load i64, ptr %i.e, align 8
  store i64 %i.w, ptr %i.b, align 8
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25
  store ptr %i.a, ptr %1, align 8
  store i64 %i.s, ptr %i.e, align 8
  br label %bb.h

bb.g:                                             ; preds = %.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25
  store ptr %i.e, ptr %1, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.x = phi ptr [ %i.a, %bb.f ], [ %i.e, %bb.g ], [ %i.d, %bb.b ], [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit ]
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.y, align 8
  store i8 0, ptr %i.x, align 1
  ret ptr %0
}

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7SPrintFIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_St17basic_string_viewIcS4_EDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #8 comdat {
bb.a:
  tail call void @_ZN4node11SPrintFImplIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEES6_St17basic_string_viewIcS4_EOT_DpOT0_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(32) %3) #32
  ret void
}

declare ptr @_ZN2v84JSON9StringifyENS_5LocalINS_7ContextEEENS1_INS_5ValueEEENS1_INS_6StringEEE(ptr, ptr, ptr) local_unnamed_addr #5

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7SPrintFIJPcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #8 comdat {
bb.a:
  tail call void @_ZN4node11SPrintFImplIPcJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #32
  ret void
}

declare noundef zeroext i1 @_ZNK2v85Value8IsObjectEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #5

declare ptr @_ZN2v86Object18GetConstructorNameEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #5

declare noundef zeroext i1 @_ZNK2v85Value8IsSymbolEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #5

declare ptr @_ZNK2v85Value14ToDetailStringENS_5LocalINS_7ContextEEE(ptr noundef nonnull align 1 dereferenceable(1), ptr) local_unnamed_addr #5

declare noundef zeroext i1 @_ZNK2v85Value8IsNumberEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #5

declare noundef zeroext i1 @_ZNK2v85Value7IsInt32Ev(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #5

declare noundef zeroext i1 @_ZNK2v85Value8IsUint32Ev(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #5

declare noundef double @_ZNK2v86Number5ValueEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #5

declare noundef zeroext i1 @_ZNK2v85Value8IsBigIntEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #5

declare noundef zeroext i1 @_ZNK2v85Value9IsBooleanEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #5

declare ptr @_ZN2v85Value6TypeOfEPNS_7IsolateE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef) local_unnamed_addr #5

; Function Attrs: cold mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN4node7SPrintFIJPcS1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #8 comdat {
bb.a:
  tail call void @_ZN4node11SPrintFImplIPcJS1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS5_EOT_DpOT0_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #32
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i64 0, -4294967294) i64 @_ZN4node14GetValidatedFdEPNS_11EnvironmentEN2v85LocalINS2_5ValueEEE(ptr noundef readonly captures(none) %0, ptr nonnull %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %"class.node::Utf8Value", align 8   ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = tail call noundef zeroext i1 @_ZNK2v85Value7IsInt32Ev(ptr noundef nonnull align 1 dereferenceable(1) %1) #25
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_ZNK2v85Value8IsNumberEv(ptr noundef nonnull align 1 dereferenceable(1) %1) #25
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @_ZN4node26DetermineSpecificErrorTypeB5cxx11EPNS_11EnvironmentEN2v85LocalINS2_5ValueEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef %0, ptr %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.f = load ptr, ptr %2, align 8
  store ptr %i.f, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = call ptr @_ZN4node20ERR_INVALID_ARG_TYPEIJPKcEEEN2v85LocalINS3_6ObjectEEEPNS3_7IsolateESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %i.h, i64 53, ptr nonnull @.str.29, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.j = call ptr @_ZN2v87Isolate14ThrowExceptionENS_5LocalINS_5ValueEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.h, ptr %i.i) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.k = load ptr, ptr %2, align 8                ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.n = load i64, ptr %i.l, align 8
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.k

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.p = tail call noundef double @_ZNK2v86Number5ValueEv(ptr noundef nonnull align 1 dereferenceable(1) %1) #25 ; 4 uses
  %i.q = fcmp uge double %i.p, 0.000000e+00
  %i.r = fcmp ule double %i.p, f0x41DFFFFFFFC00000
  %.not38 = and i1 %i.q, %i.r                     ; 2 uses
  br i1 %.not38, label %bb.e, label %_ZN4node11IsSafeJsIntEN2v85LocalINS0_5ValueEEE.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.s = tail call noundef zeroext i1 @_ZNK2v85Value8IsNumberEv(ptr noundef nonnull align 1 dereferenceable(1) %1) #25
  br i1 %i.s, label %bb.f, label %_ZN4node11IsSafeJsIntEN2v85LocalINS0_5ValueEEE.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.t = tail call noundef double @_ZNK2v86Number5ValueEv(ptr noundef nonnull align 1 dereferenceable(1) %1) #25 ; 4 uses
  %i.u = fcmp uno double %i.t, 0.000000e+00
  br i1 %i.u, label %_ZN4node11IsSafeJsIntEN2v85LocalINS0_5ValueEEE.exit.thread, label %_ZN4node11IsSafeJsIntEN2v85LocalINS0_5ValueEEE.exit

_ZN4node11IsSafeJsIntEN2v85LocalINS0_5ValueEEE.exit: ; preds = %bb.f
  %i.v = tail call double @llvm.fabs.f64(double %i.t) ; 2 uses
  %i.w = fcmp une double %i.v, +inf
  %i.x = tail call double @llvm.trunc.f64(double %i.t)
  %i.y = fcmp oeq double %i.x, %i.t
  %or.cond.not.i = and i1 %i.w, %i.y
  %i.z = fcmp ole double %i.v, f0x433FFFFFFFFFFFFF
  %spec.select.i = and i1 %i.z, %or.cond.not.i
  br i1 %spec.select.i, label %bb.j, label %_ZN4node11IsSafeJsIntEN2v85LocalINS0_5ValueEEE.exit.thread

_ZN4node11IsSafeJsIntEN2v85LocalINS0_5ValueEEE.exit.thread: ; preds = %bb.f, %bb.e, %_ZN4node11IsSafeJsIntEN2v85LocalINS0_5ValueEEE.exit, %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 3008
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 192
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.ac, align 8
  %i.ad = tail call ptr @_ZNK2v85Value14ToDetailStringENS_5LocalINS_7ContextEEE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr %.sroa.0.0.copyload.i.i.i) #25 ; 2 uses
  %.not35 = icmp eq ptr %i.ad, null
  br i1 %.not35, label %bb.k, label %_ZN4node9Utf8ValueC2EPN2v87IsolateENS1_5LocalINS1_5ValueEEE.exit

_ZN4node9Utf8ValueC2EPN2v87IsolateENS1_5LocalINS1_5ValueEEE.exit: ; preds = %_ZN4node11IsSafeJsIntEN2v85LocalINS0_5ValueEEE.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8
  store i64 0, ptr %3, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  store i64 1024, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.ah, ptr %i.ai, align 8
  store i8 0, ptr %i.ah, align 8
  call fastcc void @_ZN4nodeL14MakeUtf8StringIcEEvPN2v87IsolateENS1_5LocalINS1_5ValueEEEPNS_16MaybeStackBufferIT_Lm1024EEE(ptr noundef %i.af, ptr nonnull %i.ad, ptr noundef nonnull align 8 dereferenceable(1048) %3)
  %i.aj = call double @llvm.fabs.f64(double %i.p)
  %i.ak = fcmp oeq double %i.aj, +inf
  %or.cond = or i1 %.not38, %i.ak
  br i1 %or.cond, label %bb.g, label %_ZNSt7__cxx119to_stringEi.exit

_ZNSt7__cxx119to_stringEi.exit:                   ; preds = %_ZN4node9Utf8ValueC2EPN2v87IsolateENS1_5LocalINS1_5ValueEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %5, ptr %4, align 8, !alias.scope !50
  %6 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 10, ptr %6, align 8, !alias.scope !50
  %7 = getelementptr inbounds nuw i8, ptr %4, i64 26
  store i8 0, ptr %7, align 2
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 25
  store i8 55, ptr %i.al, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i8 52, ptr %i.am, align 8
  store <8 x i8> <i8 50, i8 49, i8 52, i8 55, i8 52, i8 56, i8 51, i8 54>, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.an = load ptr, ptr %i.ai, align 8
  store ptr %i.an, ptr %i.b, align 8
  %i.ao = load ptr, ptr %i.ae, align 8            ; 2 uses
  %i.ap = call ptr @_ZN4node16ERR_OUT_OF_RANGEIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPcEEEN2v85LocalINS8_6ObjectEEEPNS8_7IsolateESt17basic_string_viewIcS4_EDpOT_(ptr noundef %i.ao, i64 72, ptr nonnull @.str.30, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.aq = call ptr @_ZN2v87Isolate14ThrowExceptionENS_5LocalINS_5ValueEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.ao, ptr %i.ap) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %i.ar = load ptr, ptr %4, align 8               ; 2 uses
  %i.as = icmp eq ptr %i.ar, %5
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZNSt7__cxx119to_stringEi.exit
  %i.at = load i64, ptr %5, align 8
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZNSt7__cxx119to_stringEi.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.h

bb.g:                                             ; preds = %_ZN4node9Utf8ValueC2EPN2v87IsolateENS1_5LocalINS1_5ValueEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  %i.av = load ptr, ptr %i.ai, align 8
  store ptr %i.av, ptr %i.c, align 8
  %i.aw = load ptr, ptr %i.ae, align 8            ; 2 uses
  %i.ax = call ptr @_ZN4node16ERR_OUT_OF_RANGEIJPcEEEN2v85LocalINS2_6ObjectEEEPNS2_7IsolateESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %i.aw, i64 69, ptr nonnull @.str.31, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.ay = call ptr @_ZN2v87Isolate14ThrowExceptionENS_5LocalINS_5ValueEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.aw, ptr %i.ax) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17
  %i.az = load ptr, ptr %i.ai, align 8            ; 3 uses
  %i.ba = icmp ne ptr %i.az, null
  %i.bb = icmp ne ptr %i.az, %i.ah
  %i.bc = and i1 %i.ba, %i.bb
  br i1 %i.bc, label %bb.i, label %_ZN4node16MaybeStackBufferIcLm1024EED2Ev.exit

bb.i:                                             ; preds = %bb.h
  call void @free(ptr noundef nonnull %i.az) #25
  br label %_ZN4node16MaybeStackBufferIcLm1024EED2Ev.exit

_ZN4node16MaybeStackBufferIcLm1024EED2Ev.exit:    ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.k

bb.j:                                             ; preds = %_ZN4node11IsSafeJsIntEN2v85LocalINS0_5ValueEEE.exit
  %i.bd = fptosi double %i.p to i32
  %.sroa.21.0.insert.ext.i = zext i32 %i.bd to i64
  %.sroa.21.0.insert.shift.i = shl nuw i64 %.sroa.21.0.insert.ext.i, 32
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.21.0.insert.shift.i, 1
  br label %bb.k

bb.k:                                             ; preds = %_ZN4node16MaybeStackBufferIcLm1024EED2Ev.exit, %_ZN4node11IsSafeJsIntEN2v85LocalINS0_5ValueEEE.exit.thread, %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.sroa.014.2 = phi i64 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.sroa.0.0.insert.insert.i, %bb.j ], [ 0, %_ZN4node11IsSafeJsIntEN2v85LocalINS0_5ValueEEE.exit.thread ], [ 0, %_ZN4node16MaybeStackBufferIcLm1024EED2Ev.exit ]
  ret i64 %.sroa.014.2
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i64 0, -4294967294) i64 @_ZN4node16GetValidFileModeEPNS_11EnvironmentEN2v85LocalINS2_5ValueEEE10uv_fs_type(ptr noundef readonly captures(none) %0, ptr nonnull %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = tail call noundef zeroext i1 @_ZNK2v85Value8IsNumberEv(ptr noundef nonnull align 1 dereferenceable(1) %1) #25
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef double @_ZNK2v86Number5ValueEv(ptr noundef nonnull align 1 dereferenceable(1) %1) #25
  %i.e = tail call double @llvm.fabs.f64(double %i.d)
  %or.cond48 = fcmp ueq double %i.e, +inf
  br i1 %or.cond48, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = tail call ptr @_ZN4node16ERR_OUT_OF_RANGEIJEEEN2v85LocalINS1_6ObjectEEEPNS1_7IsolateESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %i.g, i64 20, ptr nonnull @.str.32)
  %i.i = tail call ptr @_ZN2v87Isolate14ThrowExceptionENS_5LocalINS_5ValueEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.g, ptr %i.h) #25 ; 0 uses
  br label %bb.n

bb.d:                                             ; preds = %bb.a
  %i.j = load i64, ptr %1, align 8                ; 3 uses
  %i.k = and i64 %i.j, 3
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.e, label %_ZNK2v85Value22QuickIsNullOrUndefinedEv.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.m = add nsw i64 %i.j, -1
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load i64, ptr %i.n, align 8
  %i.p = add i64 %i.o, 11
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load i16, ptr %i.q, align 2
  %.not.i = icmp eq i16 %i.r, 131
  br i1 %.not.i, label %_ZNK2v85Value22QuickIsNullOrUndefinedEv.exit, label %_ZNK2v85Value22QuickIsNullOrUndefinedEv.exit.thread

_ZNK2v85Value22QuickIsNullOrUndefinedEv.exit:     ; preds = %bb.e
  %i.s = add i64 %i.j, 39
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = load i64, ptr %i.t, align 8
  %i.v = lshr i64 %i.u, 32
  %i.w = trunc nuw i64 %i.v to i32
  %i.x = add i32 %i.w, -3
  %i.y = icmp ult i32 %i.x, 2
  br i1 %i.y, label %.thread, label %_ZNK2v85Value22QuickIsNullOrUndefinedEv.exit.thread

_ZNK2v85Value22QuickIsNullOrUndefinedEv.exit.thread: ; preds = %bb.e, %bb.d, %_ZNK2v85Value22QuickIsNullOrUndefinedEv.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.ab = tail call ptr @_ZN4node20ERR_INVALID_ARG_TYPEIJEEEN2v85LocalINS1_6ObjectEEEPNS1_7IsolateESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %i.aa, i64 36, ptr nonnull @.str.33)
  %i.ac = tail call ptr @_ZN2v87Isolate14ThrowExceptionENS_5LocalINS_5ValueEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.aa, ptr %i.ab) #25 ; 0 uses
  br label %bb.n

.thread:                                          ; preds = %bb.b, %_ZNK2v85Value22QuickIsNullOrUndefinedEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i32 0, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i32 7, ptr %i.b, align 4
  switch i32 %2, label %bb.f [
    i32 29, label %bb.g
    i32 12, label %bb.i
  ], !prof !53

bb.f:                                             ; preds = %.thread
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node16GetValidFileModeEPNS_11EnvironmentEN2v85LocalINS2_5ValueEEE10uv_fs_typeE20error_and_abort_args) #25
  tail call void @abort() #26
  unreachable

bb.g:                                             ; preds = %.thread
  store i32 0, ptr %i.a, align 4
  %i.ad = load i64, ptr %1, align 8               ; 3 uses
  %i.ae = and i64 %i.ad, 3
  %i.af = icmp eq i64 %i.ae, 1
  br i1 %i.af, label %bb.h, label %_ZNK2v85Value22QuickIsNullOrUndefinedEv.exit15.thread

bb.h:                                             ; preds = %bb.g
  %i.ag = add nsw i64 %i.ad, -1
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = add i64 %i.ai, 11
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = load i16, ptr %i.ak, align 2
  %.not.i14 = icmp eq i16 %i.al, 131
  br i1 %.not.i14, label %_ZNK2v85Value22QuickIsNullOrUndefinedEv.exit15, label %_ZNK2v85Value22QuickIsNullOrUndefinedEv.exit15.thread

_ZNK2v85Value22QuickIsNullOrUndefinedEv.exit15:   ; preds = %bb.h
  %i.am = add i64 %i.ad, 39
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = lshr i64 %i.ao, 32
  %i.aq = trunc nuw i64 %i.ap to i32
  %i.ar = add i32 %i.aq, -3
  %i.as = icmp ult i32 %i.ar, 2
  br i1 %i.as, label %bb.i, label %_ZNK2v85Value22QuickIsNullOrUndefinedEv.exit15.thread

_ZNK2v85Value22QuickIsNullOrUndefinedEv.exit15.thread: ; preds = %bb.h, %bb.g, %_ZNK2v85Value22QuickIsNullOrUndefinedEv.exit15
  %i.at = tail call noundef i32 @_ZNK2v85Int325ValueEv(ptr noundef nonnull align 1 dereferenceable(1) %1) #25
  %i.au = zext i32 %i.at to i64
  %i.av = shl nuw i64 %i.au, 32
  %i.aw = or disjoint i64 %i.av, 1
  br label %bb.i

bb.i:                                             ; preds = %_ZNK2v85Value22QuickIsNullOrUndefinedEv.exit15.thread, %_ZNK2v85Value22QuickIsNullOrUndefinedEv.exit15, %.thread
  %.043 = phi i64 [ 1, %.thread ], [ %i.aw, %_ZNK2v85Value22QuickIsNullOrUndefinedEv.exit15.thread ], [ 1, %_ZNK2v85Value22QuickIsNullOrUndefinedEv.exit15 ]
  %i.ax = load i64, ptr %1, align 8               ; 3 uses
  %i.ay = and i64 %i.ax, 3
  %i.az = icmp eq i64 %i.ay, 1
  br i1 %i.az, label %bb.j, label %_ZNK2v85Value22QuickIsNullOrUndefinedEv.exit18.thread

bb.j:                                             ; preds = %bb.i
  %i.ba = add nsw i64 %i.ax, -1
  %i.bb = inttoptr i64 %i.ba to ptr
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = add i64 %i.bc, 11
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = load i16, ptr %i.be, align 2
  %.not.i17 = icmp eq i16 %i.bf, 131
  br i1 %.not.i17, label %_ZNK2v85Value22QuickIsNullOrUndefinedEv.exit18, label %_ZNK2v85Value22QuickIsNullOrUndefinedEv.exit18.thread

_ZNK2v85Value22QuickIsNullOrUndefinedEv.exit18:   ; preds = %bb.j
  %i.bg = add i64 %i.ax, 39
  %i.bh = inttoptr i64 %i.bg to ptr
  %i.bi = load i64, ptr %i.bh, align 8
  %i.bj = lshr i64 %i.bi, 32
  %i.bk = trunc nuw i64 %i.bj to i32
  %i.bl = add i32 %i.bk, -3
  %i.bm = icmp ult i32 %i.bl, 2
  br i1 %i.bm, label %bb.m, label %_ZNK2v85Value22QuickIsNullOrUndefinedEv.exit18.thread

_ZNK2v85Value22QuickIsNullOrUndefinedEv.exit18.thread: ; preds = %bb.j, %bb.i, %_ZNK2v85Value22QuickIsNullOrUndefinedEv.exit18
  %i.bn = tail call noundef i32 @_ZNK2v85Int325ValueEv(ptr noundef nonnull align 1 dereferenceable(1) %1) #25 ; 2 uses
  %or.cond = icmp ugt i32 %i.bn, 7
  br i1 %or.cond, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNK2v85Value22QuickIsNullOrUndefinedEv.exit18.thread
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.bp = load ptr, ptr %i.bo, align 8            ; 2 uses
  %i.bq = call ptr @_ZN4node16ERR_OUT_OF_RANGEIJRiS1_EEEN2v85LocalINS2_6ObjectEEEPNS2_7IsolateESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %i.bp, i64 36, ptr nonnull @.str.37, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  %i.br = call ptr @_ZN2v87Isolate14ThrowExceptionENS_5LocalINS_5ValueEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.bp, ptr %i.bq) #25 ; 0 uses
  br label %bb.m

bb.l:                                             ; preds = %_ZNK2v85Value22QuickIsNullOrUndefinedEv.exit18.thread
  %.sroa.21.0.insert.ext.i19 = zext nneg i32 %i.bn to i64
  %.sroa.21.0.insert.shift.i20 = shl nuw nsw i64 %.sroa.21.0.insert.ext.i19, 32
  %.sroa.0.0.insert.insert.i21 = or disjoint i64 %.sroa.21.0.insert.shift.i20, 1
  br label %bb.m

bb.m:                                             ; preds = %_ZNK2v85Value22QuickIsNullOrUndefinedEv.exit18, %bb.k, %bb.l
  %.sroa.0.2 = phi i64 [ %.sroa.0.0.insert.insert.i21, %bb.l ], [ 0, %bb.k ], [ %.043, %_ZNK2v85Value22QuickIsNullOrUndefinedEv.exit18 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.n

bb.n:                                             ; preds = %bb.c, %bb.m, %_ZNK2v85Value22QuickIsNullOrUndefinedEv.exit.thread
end_hunk_0
