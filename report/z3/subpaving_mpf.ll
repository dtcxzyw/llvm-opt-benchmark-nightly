Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/subpaving_mpf?download=true
inline.NumInlined: 2373
inline.NumDeleted: 528
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZNK9subpaving9context_tINS_10config_mpfEE8monomial7displayERSoRKNS_16display_var_procEb:bb.a
bb.e:                                             ; preds = %bb.d, %.lr.ph.split.us.preheader._crit_edge
  %i.q = load i32, ptr %i.a, align 8, !tbaa !123
  %i.r = icmp ugt i32 %i.q, 1
  br i1 %i.r, label %.lr.ph.split.us.peel.next, label %._crit_edge

.lr.ph.split.us.peel.next:                        ; preds = %bb.e, %bb.g
  %indvars.iv17 = phi i64 [ %indvars.iv.next18, %bb.g ], [ 1, %bb.e ] ; 3 uses
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.1, i64 noundef 1) ; 0 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv17
  %i.u = load i32, ptr %i.t, align 4, !tbaa !125
  %i.v = load ptr, ptr %2, align 8, !tbaa !50
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.u)
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv17
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !126
  %i.ab = icmp ugt i32 %i.aa, 1
  br i1 %i.ab, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.split.us.peel.next
  %i.ac = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.3, i64 noundef 1) ; 0 uses
  %i.ad = load i32, ptr %i.z, align 8, !tbaa !126
  %i.ae = zext i32 %i.ad to i64
  %i.af = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.ae) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.split.us.peel.next
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1 ; 2 uses
  %i.ag = load i32, ptr %i.a, align 8, !tbaa !123
  %i.ah = zext i32 %i.ag to i64
  %i.ai = icmp samesign ult i64 %indvars.iv.next18, %i.ah
  br i1 %i.ai, label %.lr.ph.split.us.peel.next, label %._crit_edge, !llvm.loop !282

._crit_edge:                                      ; preds = %bb.i, %bb.g, %bb.c, %bb.e, %bb.a
  ret void

.lr.ph.split.peel.next:                           ; preds = %bb.c, %bb.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.i ], [ 1, %bb.c ] ; 3 uses
  %i.aj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.2, i64 noundef 1) ; 0 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !125
  %i.am = load ptr, ptr %2, align 8, !tbaa !50
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.al)
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !126
  %i.as = icmp ugt i32 %i.ar, 1
  br i1 %i.as, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.split.peel.next
  %i.at = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.3, i64 noundef 1) ; 0 uses
  %i.au = load i32, ptr %i.aq, align 8, !tbaa !126
  %i.av = zext i32 %i.au to i64
  %i.aw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.av) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph.split.peel.next, %bb.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ax = load i32, ptr %i.a, align 8, !tbaa !123
  %i.ay = zext i32 %i.ax to i64
  %i.az = icmp samesign ult i64 %indvars.iv.next, %i.ay
  br i1 %i.az, label %.lr.ph.split.peel.next, label %._crit_edge, !llvm.loop !283
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZN9subpaving9context_tINS_10config_mpfEE10polynomial12get_obj_sizeEj(i32 noundef %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %reass.mul = mul i32 %0, 36
  %i.a = add i32 %reass.mul, 72
  ret i32 %i.a
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN9subpaving9context_tINS_10config_mpfEE10polynomialC2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #1 comdat($_ZN9subpaving9context_tINS_10config_mpfEE10polynomialC5Ev) align 2 {
bb.a:
  store i32 2, ptr %0, align 8, !tbaa !94
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.a, align 8, !tbaa !95
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN3mpfC1Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.b)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZNK9subpaving9context_tINS_10config_mpfEE10polynomial4sizeEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !130
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(32) ptr @_ZNK9subpaving9context_tINS_10config_mpfEE10polynomial1aEj(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !131
  %i.c = zext i32 %1 to i64
  %i.d = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.c
  ret ptr %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZNK9subpaving9context_tINS_10config_mpfEE10polynomial1xEj(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !132
  %i.c = zext i32 %1 to i64
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !65
  ret i32 %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZNK9subpaving9context_tINS_10config_mpfEE10polynomial2xsEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !132
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZNK9subpaving9context_tINS_10config_mpfEE10polynomial2asEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !131
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(32) ptr @_ZNK9subpaving9context_tINS_10config_mpfEE10polynomial1cEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZNK9subpaving9context_tINS_10config_mpfEE10polynomial7displayERSoR3f2nI11mpf_managerERKNS_16display_var_procEb(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i1 noundef zeroext %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 24 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !40, !nonnull !41, !align !42
  %i.c = tail call noundef zeroext i1 @_ZN11mpf_manager7is_zeroERK3mpf(ptr noundef nonnull align 8 dereferenceable(840) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.a) ; 3 uses
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.d = load ptr, ptr %2, align 8, !tbaa !40, !noalias !290, !nonnull !41, !align !42
  call void @_ZN11mpf_manager18to_rational_stringB5cxx11ERK3mpf(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(840) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.a)
  %i.e = load ptr, ptr %5, align 8, !tbaa !46
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !47
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.e, i64 noundef %i.g)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.c ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.b
  %i.i = load ptr, ptr %5, align 8, !tbaa !46     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.l = load i64, ptr %i.j, align 8, !tbaa !48
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %5, align 8, !tbaa !46     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %bb.c
  %i.r = load i64, ptr %i.p, align 8, !tbaa !48
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.q

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !130
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 8 uses
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 10 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  br i1 %4, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  br i1 %i.c, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.split.preheader
  %i.z = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.4, i64 noundef 3) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.split.preheader
  %i.aa = load ptr, ptr %i.v, align 8, !tbaa !131
  %i.ab = load ptr, ptr %2, align 8, !tbaa !40, !nonnull !41, !align !42
  %i.ac = call noundef zeroext i1 @_ZN11mpf_manager6is_oneERK3mpf(ptr noundef nonnull align 8 dereferenceable(840) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %i.aa)
  br i1 %i.ac, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.ad = load ptr, ptr %i.v, align 8, !tbaa !131
  %i.ae = load ptr, ptr %2, align 8, !tbaa !40, !noalias !291, !nonnull !41, !align !42
  call void @_ZN11mpf_manager18to_rational_stringB5cxx11ERK3mpf(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(840) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %i.ad)
  %i.af = load ptr, ptr %6, align 8, !tbaa !46
  %i.ag = load i64, ptr %i.w, align 8, !tbaa !47
  %i.ah = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.af, i64 noundef %i.ag)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit27.peel unwind label %.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit27.peel: ; preds = %bb.g
  %i.ai = load ptr, ptr %6, align 8, !tbaa !46    ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.x
  br i1 %i.aj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i29.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.peel: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit27.peel
  %i.ak = load i64, ptr %i.x, align 8, !tbaa !48
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i29.peel: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit27.peel
  %7 = load i64, ptr %i.w, align 8, !tbaa !47
  %8 = icmp ult i64 %7, 16
  call void @llvm.assume(i1 %8)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.peel: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i29.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.am = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.2, i64 noundef 1) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.peel, %bb.f
  %i.an = load ptr, ptr %i.y, align 8, !tbaa !132
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !65
  %i.ap = load ptr, ptr %3, align 8, !tbaa !50
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.ao)
  %i.as = load i32, ptr %i.t, align 8, !tbaa !130
  %i.at = icmp ugt i32 %i.as, 1
  br i1 %i.at, label %.lr.ph.split.peel.next, label %._crit_edge

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  br i1 %i.c, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.split.us.preheader
  %i.au = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.4, i64 noundef 3) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.split.us.preheader
  %i.av = load ptr, ptr %i.v, align 8, !tbaa !131
  %i.aw = load ptr, ptr %2, align 8, !tbaa !40, !nonnull !41, !align !42
  %i.ax = call noundef zeroext i1 @_ZN11mpf_manager6is_oneERK3mpf(ptr noundef nonnull align 8 dereferenceable(840) %i.aw, ptr noundef nonnull align 8 dereferenceable(32) %i.av)
  br i1 %i.ax, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.ay = load ptr, ptr %i.v, align 8, !tbaa !131
  %i.az = load ptr, ptr %2, align 8, !tbaa !40, !noalias !291, !nonnull !41, !align !42
  call void @_ZN11mpf_manager18to_rational_stringB5cxx11ERK3mpf(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(840) %i.az, ptr noundef nonnull align 8 dereferenceable(32) %i.ay)
  %i.ba = load ptr, ptr %6, align 8, !tbaa !46
  %i.bb = load i64, ptr %i.w, align 8, !tbaa !47
  %i.bc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.ba, i64 noundef %i.bb)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit27.us.peel unwind label %.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit27.us.peel: ; preds = %bb.k
  %i.bd = load ptr, ptr %6, align 8, !tbaa !46    ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.x
  br i1 %i.be, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i29.us.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.us.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.us.peel: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit27.us.peel
  %i.bf = load i64, ptr %i.x, align 8, !tbaa !48
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bg) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.us.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i29.us.peel: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit27.us.peel
  %9 = load i64, ptr %i.w, align 8, !tbaa !47
  %10 = icmp ult i64 %9, 16
  call void @llvm.assume(i1 %10)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.us.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.us.peel: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i29.us.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.us.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.bh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.1, i64 noundef 1) ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.us.peel, %bb.j
  %i.bi = load ptr, ptr %i.y, align 8, !tbaa !132
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !65
  %i.bk = load ptr, ptr %3, align 8, !tbaa !50
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8
  call void %i.bm(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.bj)
  %i.bn = load i32, ptr %i.t, align 8, !tbaa !130
  %i.bo = icmp ugt i32 %i.bn, 1
  br i1 %i.bo, label %.lr.ph.split.us.peel.next, label %._crit_edge

.lr.ph.split.us.peel.next:                        ; preds = %bb.l, %bb.n
  %indvars.iv39 = phi i64 [ %indvars.iv.next40, %bb.n ], [ 1, %bb.l ] ; 4 uses
  %i.bp = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.4, i64 noundef 3) ; 0 uses
  %i.bq = load ptr, ptr %i.v, align 8, !tbaa !131
  %i.br = getelementptr inbounds nuw [32 x i8], ptr %i.bq, i64 %indvars.iv39
  %i.bs = load ptr, ptr %2, align 8, !tbaa !40, !nonnull !41, !align !42
  %i.bt = call noundef zeroext i1 @_ZN11mpf_manager6is_oneERK3mpf(ptr noundef nonnull align 8 dereferenceable(840) %i.bs, ptr noundef nonnull align 8 dereferenceable(32) %i.br)
  br i1 %i.bt, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph.split.us.peel.next
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.bu = load ptr, ptr %i.v, align 8, !tbaa !131
  %i.bv = getelementptr inbounds nuw [32 x i8], ptr %i.bu, i64 %indvars.iv39
  %i.bw = load ptr, ptr %2, align 8, !tbaa !40, !noalias !291, !nonnull !41, !align !42
  call void @_ZN11mpf_manager18to_rational_stringB5cxx11ERK3mpf(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(840) %i.bw, ptr noundef nonnull align 8 dereferenceable(32) %i.bv)
  %i.bx = load ptr, ptr %6, align 8, !tbaa !46
  %i.by = load i64, ptr %i.w, align 8, !tbaa !47
  %i.bz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.bx, i64 noundef %i.by)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit27.us unwind label %.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit27.us: ; preds = %bb.m
  %i.ca = load ptr, ptr %6, align 8, !tbaa !46    ; 2 uses
  %i.cb = icmp eq ptr %i.ca, %i.x
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.us, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.us

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.us: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit27.us
  %i.cc = load i64, ptr %i.x, align 8, !tbaa !48
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.cd) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.us

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.us: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit27.us, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.us
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.ce = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.1, i64 noundef 1) ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.us, %.lr.ph.split.us.peel.next
  %i.cf = load ptr, ptr %i.y, align 8, !tbaa !132
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv39
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !65
  %i.ci = load ptr, ptr %3, align 8, !tbaa !50
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8
  call void %i.ck(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.ch)
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1 ; 2 uses
  %i.cl = load i32, ptr %i.t, align 8, !tbaa !130
  %i.cm = zext i32 %i.cl to i64
  %i.cn = icmp samesign ult i64 %indvars.iv.next40, %i.cm
  br i1 %i.cn, label %.lr.ph.split.us.peel.next, label %._crit_edge, !llvm.loop !288

._crit_edge:                                      ; preds = %bb.p, %bb.n, %bb.h, %bb.l, %bb.d
  ret void

.lr.ph.split.peel.next:                           ; preds = %bb.h, %bb.p
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.p ], [ 1, %bb.h ] ; 4 uses
  %i.co = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.4, i64 noundef 3) ; 0 uses
  %i.cp = load ptr, ptr %i.v, align 8, !tbaa !131
  %i.cq = getelementptr inbounds nuw [32 x i8], ptr %i.cp, i64 %indvars.iv
  %i.cr = load ptr, ptr %2, align 8, !tbaa !40, !nonnull !41, !align !42
  %i.cs = call noundef zeroext i1 @_ZN11mpf_manager6is_oneERK3mpf(ptr noundef nonnull align 8 dereferenceable(840) %i.cr, ptr noundef nonnull align 8 dereferenceable(32) %i.cq)
  br i1 %i.cs, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph.split.peel.next
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.ct = load ptr, ptr %i.v, align 8, !tbaa !131
  %i.cu = getelementptr inbounds nuw [32 x i8], ptr %i.ct, i64 %indvars.iv
  %i.cv = load ptr, ptr %2, align 8, !tbaa !40, !noalias !291, !nonnull !41, !align !42
  call void @_ZN11mpf_manager18to_rational_stringB5cxx11ERK3mpf(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(840) %i.cv, ptr noundef nonnull align 8 dereferenceable(32) %i.cu)
  %i.cw = load ptr, ptr %6, align 8, !tbaa !46
  %i.cx = load i64, ptr %i.w, align 8, !tbaa !47
  %i.cy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.cw, i64 noundef %i.cx)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit27 unwind label %.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit27: ; preds = %bb.o
  %i.cz = load ptr, ptr %6, align 8, !tbaa !46    ; 2 uses
  %i.da = icmp eq ptr %i.cz, %i.x
  br i1 %i.da, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit27
  %i.db = load i64, ptr %i.x, align 8, !tbaa !48
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dc) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.dd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.2, i64 noundef 1) ; 0 uses
  br label %bb.p

.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.m, %bb.o, %bb.k, %bb.g
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  %i.de = load ptr, ptr %6, align 8, !tbaa !46    ; 2 uses
  %i.df = icmp eq ptr %i.de, %i.x
  br i1 %i.df, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.dg = load i64, ptr %i.x, align 8, !tbaa !48
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.dh) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.q

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, %.lr.ph.split.peel.next
  %i.di = load ptr, ptr %i.y, align 8, !tbaa !132
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %indvars.iv
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !65
  %i.dl = load ptr, ptr %3, align 8, !tbaa !50
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8
  call void %i.dn(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.dk)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.do = load i32, ptr %i.t, align 8, !tbaa !130
  %i.dp = zext i32 %i.do to i64
  %i.dq = icmp samesign ult i64 %indvars.iv.next, %i.dp
  br i1 %i.dq, label %.lr.ph.split.peel.next, label %._crit_edge, !llvm.loop !289

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33 ], [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26 ]
  resume { ptr, i32 } %.pn
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN9subpaving9context_tINS_10config_mpfEE7watchedC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat($_ZN9subpaving9context_tINS_10config_mpfEE7watchedC5Ev) align 2 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !134
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN9subpaving9context_tINS_10config_mpfEE7watchedC2Ej(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1) unnamed_addr #0 comdat($_ZN9subpaving9context_tINS_10config_mpfEE7watchedC5Ej) align 2 {
bb.a:
  %i.a = zext i32 %1 to i64
  %i.b = shl nuw nsw i64 %i.a, 3
  %i.c = or disjoint i64 %i.b, 1
  %i.d = inttoptr i64 %i.c to ptr
  store ptr %i.d, ptr %0, align 8, !tbaa !134
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN9subpaving9context_tINS_10config_mpfEE7watchedC2EPNS2_6clauseE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #0 comdat($_ZN9subpaving9context_tINS_10config_mpfEE7watchedC5EPNS2_6clauseE) align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !134
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZNK9subpaving9context_tINS_10config_mpfEE7watched8get_kindEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !134
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = trunc i64 %i.b to i32
  %i.d = and i32 %i.c, 7
  ret i32 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZNK9subpaving9context_tINS_10config_mpfEE7watched9is_clauseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !134
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = and i64 %i.b, 7
  %i.d = icmp ne i64 %i.c, 1
  ret i1 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZNK9subpaving9context_tINS_10config_mpfEE7watched13is_definitionEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !134
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = and i64 %i.b, 7
  %i.d = icmp eq i64 %i.c, 1
  ret i1 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZNK9subpaving9context_tINS_10config_mpfEE7watched10get_clauseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
end_hunk_0
