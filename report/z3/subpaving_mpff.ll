Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/subpaving_mpff?download=true
inline.NumInlined: 2177
inline.NumDeleted: 489
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZNK9subpaving9context_tINS_11config_mpffEE8monomial7displayERSoRKNS_16display_var_procEb:bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !127
  %i.ab = icmp ugt i32 %i.aa, 1
  br i1 %i.ab, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.split.us.peel.next
  %i.ac = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.3, i64 noundef 1) ; 0 uses
  %i.ad = load i32, ptr %i.z, align 8, !tbaa !127
  %i.ae = zext i32 %i.ad to i64
  %i.af = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.ae) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.split.us.peel.next
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1 ; 2 uses
  %i.ag = load i32, ptr %i.a, align 8, !tbaa !124
  %i.ah = zext i32 %i.ag to i64
  %i.ai = icmp samesign ult i64 %indvars.iv.next18, %i.ah
  br i1 %i.ai, label %.lr.ph.split.us.peel.next, label %._crit_edge, !llvm.loop !254

._crit_edge:                                      ; preds = %bb.i, %bb.g, %bb.c, %bb.e, %bb.a
  ret void

.lr.ph.split.peel.next:                           ; preds = %bb.c, %bb.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.i ], [ 1, %bb.c ] ; 3 uses
  %i.aj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.2, i64 noundef 1) ; 0 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !126
  %i.am = load ptr, ptr %2, align 8, !tbaa !42
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.al)
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !127
  %i.as = icmp ugt i32 %i.ar, 1
  br i1 %i.as, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.split.peel.next
  %i.at = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.3, i64 noundef 1) ; 0 uses
  %i.au = load i32, ptr %i.aq, align 8, !tbaa !127
  %i.av = zext i32 %i.au to i64
  %i.aw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.av) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph.split.peel.next, %bb.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ax = load i32, ptr %i.a, align 8, !tbaa !124
  %i.ay = zext i32 %i.ax to i64
  %i.az = icmp samesign ult i64 %indvars.iv.next, %i.ay
  br i1 %i.az, label %.lr.ph.split.peel.next, label %._crit_edge, !llvm.loop !255
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZN9subpaving9context_tINS_11config_mpffEE10polynomial12get_obj_sizeEj(i32 noundef %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %reass.mul = mul i32 %0, 12
  %i.a = add i32 %reass.mul, 48
  ret i32 %i.a
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN9subpaving9context_tINS_11config_mpffEE10polynomialC2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat($_ZN9subpaving9context_tINS_11config_mpffEE10polynomialC5Ev) align 2 {
bb.a:
  store i32 2, ptr %0, align 8, !tbaa !88
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.a, align 8, !tbaa !89
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.c, align 8, !tbaa !103
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZNK9subpaving9context_tINS_11config_mpffEE10polynomial4sizeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !130
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 4 dereferenceable(8) ptr @_ZNK9subpaving9context_tINS_11config_mpffEE10polynomial1aEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !131
  %i.c = zext i32 %1 to i64
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.c
  ret ptr %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZNK9subpaving9context_tINS_11config_mpffEE10polynomial1xEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !132
  %i.c = zext i32 %1 to i64
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !57
  ret i32 %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZNK9subpaving9context_tINS_11config_mpffEE10polynomial2xsEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !132
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZNK9subpaving9context_tINS_11config_mpffEE10polynomial2asEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !131
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 4 dereferenceable(8) ptr @_ZNK9subpaving9context_tINS_11config_mpffEE10polynomial1cEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZNK9subpaving9context_tINS_11config_mpffEE10polynomial7displayERSoR12mpff_managerRKNS_16display_var_procEb(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(89) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i1 noundef zeroext %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = icmp ult i32 %i.b, 2
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @_ZNK12mpff_manager18to_rational_stringB5cxx11ERK4mpff(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(89) %2, ptr noundef nonnull align 4 dereferenceable(8) %i.a)
  %i.d = load ptr, ptr %5, align 8, !tbaa !38
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !39
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.d, i64 noundef %i.f)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.c ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.b
  %i.h = load ptr, ptr %5, align 8, !tbaa !38     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !40
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #22
  br label %.thread

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %5, align 8, !tbaa !38     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %bb.c
  %i.q = load i64, ptr %i.o, align 8, !tbaa !40
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !130
  %.not = icmp eq i32 %i.t, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.thread:                                          ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !130
  %.not45 = icmp eq i32 %i.v, 0
  br i1 %.not45, label %._crit_edge, label %bb.e

.lr.ph:                                           ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 16
  br label %bb.f

bb.e:                                             ; preds = %.thread
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.aa = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.4, i64 noundef 3) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %i.ab = phi ptr [ %i.z, %bb.e ], [ %i.x, %.lr.ph ] ; 6 uses
  %i.ac = phi ptr [ %i.y, %bb.e ], [ %i.w, %.lr.ph ] ; 2 uses
  %i.ad = phi ptr [ %i.u, %bb.e ], [ %i.s, %.lr.ph ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !131 ; 3 uses
  %i.ah = load i32, ptr %i.ag, align 4            ; 2 uses
  %i.ai = and i32 %i.ah, 1
  %i.aj = icmp eq i32 %i.ai, 0
  %i.ak = icmp ugt i32 %i.ah, 1
  %i.al = and i1 %i.ak, %i.aj
  br i1 %i.al, label %_ZNK12mpff_manager6is_oneERK4mpff.exit.peel, label %_ZNK12mpff_manager6is_oneERK4mpff.exit.thread.peel

_ZNK12mpff_manager6is_oneERK4mpff.exit.peel:      ; preds = %bb.f
  %i.am = call noundef zeroext i1 @_ZNK12mpff_manager10is_abs_oneERK4mpff(ptr noundef nonnull align 8 dereferenceable(89) %2, ptr noundef nonnull align 4 dereferenceable(8) %i.ag)
  br i1 %i.am, label %bb.g, label %_ZNK12mpff_manager6is_oneERK4mpff.exit.peel._ZNK12mpff_manager6is_oneERK4mpff.exit.thread.peel_crit_edge

_ZNK12mpff_manager6is_oneERK4mpff.exit.peel._ZNK12mpff_manager6is_oneERK4mpff.exit.thread.peel_crit_edge: ; preds = %_ZNK12mpff_manager6is_oneERK4mpff.exit.peel
  %.pre = load ptr, ptr %i.ae, align 8, !tbaa !131
  br label %_ZNK12mpff_manager6is_oneERK4mpff.exit.thread.peel

_ZNK12mpff_manager6is_oneERK4mpff.exit.thread.peel: ; preds = %_ZNK12mpff_manager6is_oneERK4mpff.exit.peel._ZNK12mpff_manager6is_oneERK4mpff.exit.thread.peel_crit_edge, %bb.f
  %i.an = phi ptr [ %.pre, %_ZNK12mpff_manager6is_oneERK4mpff.exit.peel._ZNK12mpff_manager6is_oneERK4mpff.exit.thread.peel_crit_edge ], [ %i.ag, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @_ZNK12mpff_manager18to_rational_stringB5cxx11ERK4mpff(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(89) %2, ptr noundef nonnull align 4 dereferenceable(8) %i.an)
  %i.ao = load ptr, ptr %6, align 8, !tbaa !38
  %i.ap = load i64, ptr %i.ac, align 8, !tbaa !39
  %i.aq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.ao, i64 noundef %i.ap)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit26.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit26.peel: ; preds = %_ZNK12mpff_manager6is_oneERK4mpff.exit.thread.peel
  %i.ar = load ptr, ptr %6, align 8, !tbaa !38    ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.ab
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27.peel: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit26.peel
  %i.at = load i64, ptr %i.ab, align 8, !tbaa !40
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29.peel: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit26.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %.str.1..str.2 = select i1 %4, ptr @.str.1, ptr @.str.2
  %i.av = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %.str.1..str.2, i64 noundef 1) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29.peel, %_ZNK12mpff_manager6is_oneERK4mpff.exit.peel
  %i.aw = load ptr, ptr %i.af, align 8, !tbaa !132
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !57
  %i.ay = load ptr, ptr %3, align 8, !tbaa !42
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.ax)
  %i.bb = load i32, ptr %i.ad, align 8, !tbaa !130
  %i.bc = icmp ugt i32 %i.bb, 1
  br i1 %i.bc, label %.peel.next.preheader, label %._crit_edge

.peel.next.preheader:                             ; preds = %bb.g
  %.str.1..str.248 = select i1 %4, ptr @.str.1, ptr @.str.2
  br label %.peel.next

._crit_edge:                                      ; preds = %bb.h, %bb.g, %.thread, %bb.d
  ret void

.peel.next:                                       ; preds = %.peel.next.preheader, %bb.h
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.h ], [ 1, %.peel.next.preheader ] ; 4 uses
  %i.bd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.4, i64 noundef 3) ; 0 uses
  %i.be = load ptr, ptr %i.ae, align 8, !tbaa !131 ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4            ; 2 uses
  %i.bh = and i32 %i.bg, 1
  %i.bi = icmp eq i32 %i.bh, 0
  %i.bj = icmp ugt i32 %i.bg, 1
  %i.bk = and i1 %i.bj, %i.bi
  br i1 %i.bk, label %_ZNK12mpff_manager6is_oneERK4mpff.exit, label %_ZNK12mpff_manager6is_oneERK4mpff.exit.thread

_ZNK12mpff_manager6is_oneERK4mpff.exit:           ; preds = %.peel.next
  %i.bl = call noundef zeroext i1 @_ZNK12mpff_manager10is_abs_oneERK4mpff(ptr noundef nonnull align 8 dereferenceable(89) %2, ptr noundef nonnull align 4 dereferenceable(8) %i.bf)
  br i1 %i.bl, label %bb.h, label %_ZNK12mpff_manager6is_oneERK4mpff.exit._ZNK12mpff_manager6is_oneERK4mpff.exit.thread_crit_edge

_ZNK12mpff_manager6is_oneERK4mpff.exit._ZNK12mpff_manager6is_oneERK4mpff.exit.thread_crit_edge: ; preds = %_ZNK12mpff_manager6is_oneERK4mpff.exit
  %.pre37 = load ptr, ptr %i.ae, align 8, !tbaa !131
  br label %_ZNK12mpff_manager6is_oneERK4mpff.exit.thread

_ZNK12mpff_manager6is_oneERK4mpff.exit.thread:    ; preds = %_ZNK12mpff_manager6is_oneERK4mpff.exit._ZNK12mpff_manager6is_oneERK4mpff.exit.thread_crit_edge, %.peel.next
  %i.bm = phi ptr [ %.pre37, %_ZNK12mpff_manager6is_oneERK4mpff.exit._ZNK12mpff_manager6is_oneERK4mpff.exit.thread_crit_edge ], [ %i.be, %.peel.next ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv
  call void @_ZNK12mpff_manager18to_rational_stringB5cxx11ERK4mpff(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(89) %2, ptr noundef nonnull align 4 dereferenceable(8) %i.bn)
  %i.bo = load ptr, ptr %6, align 8, !tbaa !38
  %i.bp = load i64, ptr %i.ac, align 8, !tbaa !39
  %i.bq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.bo, i64 noundef %i.bp)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit26 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit26: ; preds = %_ZNK12mpff_manager6is_oneERK4mpff.exit.thread
  %i.br = load ptr, ptr %6, align 8, !tbaa !38    ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.ab
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit26
  %i.bt = load i64, ptr %i.ab, align 8, !tbaa !40
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bu) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.bv = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %.str.1..str.248, i64 noundef 1) ; 0 uses
  br label %bb.h

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNK12mpff_manager6is_oneERK4mpff.exit.thread, %_ZNK12mpff_manager6is_oneERK4mpff.exit.thread.peel
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  %i.bw = load ptr, ptr %6, align 8, !tbaa !38    ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.ab
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.by = load i64, ptr %i.ab, align 8, !tbaa !40
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.bz) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.i

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, %_ZNK12mpff_manager6is_oneERK4mpff.exit
  %i.ca = load ptr, ptr %i.af, align 8, !tbaa !132
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %indvars.iv
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !57
  %i.cd = load ptr, ptr %3, align 8, !tbaa !42
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8
  call void %i.cf(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.cc)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cg = load i32, ptr %i.ad, align 8, !tbaa !130
  %i.ch = zext i32 %i.cg to i64
  %i.ci = icmp samesign ult i64 %indvars.iv.next, %i.ch
  br i1 %i.ci, label %.peel.next, label %._crit_edge, !llvm.loop !256

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32 ], [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25 ]
  resume { ptr, i32 } %.pn
}

declare void @_ZNK12mpff_manager18to_rational_stringB5cxx11ERK4mpff(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(89), ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN9subpaving9context_tINS_11config_mpffEE7watchedC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat($_ZN9subpaving9context_tINS_11config_mpffEE7watchedC5Ev) align 2 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !134
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN9subpaving9context_tINS_11config_mpffEE7watchedC2Ej(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1) unnamed_addr #0 comdat($_ZN9subpaving9context_tINS_11config_mpffEE7watchedC5Ej) align 2 {
bb.a:
  %i.a = zext i32 %1 to i64
  %i.b = shl nuw nsw i64 %i.a, 3
  %i.c = or disjoint i64 %i.b, 1
  %i.d = inttoptr i64 %i.c to ptr
  store ptr %i.d, ptr %0, align 8, !tbaa !134
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN9subpaving9context_tINS_11config_mpffEE7watchedC2EPNS2_6clauseE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #0 comdat($_ZN9subpaving9context_tINS_11config_mpffEE7watchedC5EPNS2_6clauseE) align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !134
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZNK9subpaving9context_tINS_11config_mpffEE7watched8get_kindEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !134
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = trunc i64 %i.b to i32
  %i.d = and i32 %i.c, 7
  ret i32 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZNK9subpaving9context_tINS_11config_mpffEE7watched9is_clauseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !134
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = and i64 %i.b, 7
  %i.d = icmp ne i64 %i.c, 1
  ret i1 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZNK9subpaving9context_tINS_11config_mpffEE7watched13is_definitionEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !134
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = and i64 %i.b, 7
  %i.d = icmp eq i64 %i.c, 1
  ret i1 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZNK9subpaving9context_tINS_11config_mpffEE7watched10get_clauseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !134
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = and i64 %i.b, -8
  %i.d = inttoptr i64 %i.c to ptr
  ret ptr %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZNK9subpaving9context_tINS_11config_mpffEE7watched7get_varEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !134
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = lshr i64 %i.b, 3
  %i.d = trunc i64 %i.c to i32
  ret i32 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZNK9subpaving9context_tINS_11config_mpffEE7watchedeqERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !134
  %i.b = load ptr, ptr %1, align 8, !tbaa !134
  %i.c = icmp eq ptr %i.a, %i.b
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZNK9subpaving9context_tINS_11config_mpffEE7watchedneERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !134
  %i.b = load ptr, ptr %1, align 8, !tbaa !134
  %i.c = icmp ne ptr %i.a, %i.b
  ret i1 %i.c
end_hunk_0
