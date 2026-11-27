Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/subpaving_mpq?download=true
inline.NumInlined: 2438
inline.NumDeleted: 556
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZNK9subpaving9context_tINS_10config_mpqEE8monomial7displayERSoRKNS_16display_var_procEb:bb.a
bb.g:                                             ; preds = %bb.f, %.lr.ph.split.us.peel.next
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1 ; 2 uses
  %i.ag = load i32, ptr %i.a, align 8, !tbaa !120
  %i.ah = zext i32 %i.ag to i64
  %i.ai = icmp samesign ult i64 %indvars.iv.next18, %i.ah
  br i1 %i.ai, label %.lr.ph.split.us.peel.next, label %._crit_edge, !llvm.loop !256

._crit_edge:                                      ; preds = %bb.i, %bb.g, %bb.c, %bb.e, %bb.a
  ret void

.lr.ph.split.peel.next:                           ; preds = %bb.c, %bb.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.i ], [ 1, %bb.c ] ; 3 uses
  %i.aj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.2, i64 noundef 1) ; 0 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !122
  %i.am = load ptr, ptr %2, align 8, !tbaa !44
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.al)
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !123
  %i.as = icmp ugt i32 %i.ar, 1
  br i1 %i.as, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.split.peel.next
  %i.at = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.3, i64 noundef 1) ; 0 uses
  %i.au = load i32, ptr %i.aq, align 8, !tbaa !123
  %i.av = zext i32 %i.au to i64
  %i.aw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.av) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph.split.peel.next, %bb.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ax = load i32, ptr %i.a, align 8, !tbaa !120
  %i.ay = zext i32 %i.ax to i64
  %i.az = icmp samesign ult i64 %indvars.iv.next, %i.ay
  br i1 %i.az, label %.lr.ph.split.peel.next, label %._crit_edge, !llvm.loop !257
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZN9subpaving9context_tINS_10config_mpqEE10polynomial12get_obj_sizeEj(i32 noundef %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %reass.mul = mul i32 %0, 36
  %i.a = add i32 %reass.mul, 72
  ret i32 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN9subpaving9context_tINS_10config_mpqEE10polynomialC2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 comdat($_ZN9subpaving9context_tINS_10config_mpqEE10polynomialC5Ev) align 2 {
bb.a:
  store i32 2, ptr %0, align 8, !tbaa !90
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.a, align 8, !tbaa !91
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.b, align 8, !tbaa !105
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.d = load i8, ptr %i.c, align 4
  %i.e = and i8 %i.d, -4
  store i8 %i.e, ptr %i.c, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %i.f, align 8, !tbaa !106
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 1, ptr %i.g, align 8, !tbaa !105
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.i = load i8, ptr %i.h, align 4
  %i.j = and i8 %i.i, -4
  store i8 %i.j, ptr %i.h, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %i.k, align 8, !tbaa !106
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZNK9subpaving9context_tINS_10config_mpqEE10polynomial4sizeEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !127
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(32) ptr @_ZNK9subpaving9context_tINS_10config_mpqEE10polynomial1aEj(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !128
  %i.c = zext i32 %1 to i64
  %i.d = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.c
  ret ptr %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZNK9subpaving9context_tINS_10config_mpqEE10polynomial1xEj(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !129
  %i.c = zext i32 %1 to i64
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !59
  ret i32 %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZNK9subpaving9context_tINS_10config_mpqEE10polynomial2xsEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !129
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZNK9subpaving9context_tINS_10config_mpqEE10polynomial2asEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !128
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(32) ptr @_ZNK9subpaving9context_tINS_10config_mpqEE10polynomial1cEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZNK9subpaving9context_tINS_10config_mpqEE10polynomial7displayERSoR11mpq_managerILb0EERKNS_16display_var_procEb(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(728) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i1 noundef zeroext %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !105
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @_ZNK11mpq_managerILb0EE9to_stringB5cxx11ERK3mpq(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(728) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.a)
  %i.d = load ptr, ptr %5, align 8, !tbaa !40
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !41
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.d, i64 noundef %i.f)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.c ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.b
  %i.h = load ptr, ptr %5, align 8, !tbaa !40     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !42
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #22
  br label %.thread

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %5, align 8, !tbaa !40     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %bb.c
  %i.q = load i64, ptr %i.o, align 8, !tbaa !42
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !127
  %.not = icmp eq i32 %i.t, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.thread:                                          ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !127
  %.not43 = icmp eq i32 %i.v, 0
  br i1 %.not43, label %._crit_edge, label %bb.e

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
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !128 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.ai = load i8, ptr %i.ah, align 4
  %i.aj = and i8 %i.ai, 1
  %i.ak = icmp eq i8 %i.aj, 0
  %i.al = load i32, ptr %i.ag, align 8
  %i.am = icmp eq i32 %i.al, 1
  %i.an = select i1 %i.ak, i1 %i.am, i1 false
  br i1 %i.an, label %_ZN11mpq_managerILb0EE6is_oneERK3mpq.exit.peel, label %_ZN11mpq_managerILb0EE6is_oneERK3mpq.exit.thread.peel

_ZN11mpq_managerILb0EE6is_oneERK3mpq.exit.peel:   ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 20
  %i.aq = load i8, ptr %i.ap, align 4
  %i.ar = and i8 %i.aq, 1
  %i.as = icmp eq i8 %i.ar, 0
  %i.at = load i32, ptr %i.ao, align 8
  %i.au = icmp eq i32 %i.at, 1
  %i.av = select i1 %i.as, i1 %i.au, i1 false
  br i1 %i.av, label %bb.g, label %_ZN11mpq_managerILb0EE6is_oneERK3mpq.exit.thread.peel

_ZN11mpq_managerILb0EE6is_oneERK3mpq.exit.thread.peel: ; preds = %_ZN11mpq_managerILb0EE6is_oneERK3mpq.exit.peel, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @_ZNK11mpq_managerILb0EE9to_stringB5cxx11ERK3mpq(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(728) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.ag)
  %i.aw = load ptr, ptr %6, align 8, !tbaa !40
  %i.ax = load i64, ptr %i.ac, align 8, !tbaa !41
  %i.ay = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.aw, i64 noundef %i.ax)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit25.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit25.peel: ; preds = %_ZN11mpq_managerILb0EE6is_oneERK3mpq.exit.thread.peel
  %i.az = load ptr, ptr %6, align 8, !tbaa !40    ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.ab
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26.peel: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit25.peel
  %i.bb = load i64, ptr %i.ab, align 8, !tbaa !42
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bc) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28.peel: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit25.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %.str.1..str.2 = select i1 %4, ptr @.str.1, ptr @.str.2
  %i.bd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %.str.1..str.2, i64 noundef 1) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28.peel, %_ZN11mpq_managerILb0EE6is_oneERK3mpq.exit.peel
  %i.be = load ptr, ptr %i.af, align 8, !tbaa !129
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !59
  %i.bg = load ptr, ptr %3, align 8, !tbaa !44
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.bf)
  %i.bj = load i32, ptr %i.ad, align 8, !tbaa !127
  %i.bk = icmp ugt i32 %i.bj, 1
  br i1 %i.bk, label %.peel.next.preheader, label %._crit_edge

.peel.next.preheader:                             ; preds = %bb.g
  %.str.1..str.246 = select i1 %4, ptr @.str.1, ptr @.str.2
  br label %.peel.next

._crit_edge:                                      ; preds = %bb.h, %bb.g, %.thread, %bb.d
  ret void

.peel.next:                                       ; preds = %.peel.next.preheader, %bb.h
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.h ], [ 1, %.peel.next.preheader ] ; 3 uses
  %i.bl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.4, i64 noundef 3) ; 0 uses
  %i.bm = load ptr, ptr %i.ae, align 8, !tbaa !128
  %i.bn = getelementptr inbounds nuw [32 x i8], ptr %i.bm, i64 %indvars.iv ; 5 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %i.bp = load i8, ptr %i.bo, align 4
  %i.bq = and i8 %i.bp, 1
  %i.br = icmp eq i8 %i.bq, 0
  %i.bs = load i32, ptr %i.bn, align 8
  %i.bt = icmp eq i32 %i.bs, 1
  %i.bu = select i1 %i.br, i1 %i.bt, i1 false
  br i1 %i.bu, label %_ZN11mpq_managerILb0EE6is_oneERK3mpq.exit, label %_ZN11mpq_managerILb0EE6is_oneERK3mpq.exit.thread

_ZN11mpq_managerILb0EE6is_oneERK3mpq.exit:        ; preds = %.peel.next
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bn, i64 20
  %i.bx = load i8, ptr %i.bw, align 4
  %i.by = and i8 %i.bx, 1
  %i.bz = icmp eq i8 %i.by, 0
  %i.ca = load i32, ptr %i.bv, align 8
  %i.cb = icmp eq i32 %i.ca, 1
  %i.cc = select i1 %i.bz, i1 %i.cb, i1 false
  br i1 %i.cc, label %bb.h, label %_ZN11mpq_managerILb0EE6is_oneERK3mpq.exit.thread

_ZN11mpq_managerILb0EE6is_oneERK3mpq.exit.thread: ; preds = %.peel.next, %_ZN11mpq_managerILb0EE6is_oneERK3mpq.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @_ZNK11mpq_managerILb0EE9to_stringB5cxx11ERK3mpq(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(728) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.bn)
  %i.cd = load ptr, ptr %6, align 8, !tbaa !40
  %i.ce = load i64, ptr %i.ac, align 8, !tbaa !41
  %i.cf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.cd, i64 noundef %i.ce)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit25 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit25: ; preds = %_ZN11mpq_managerILb0EE6is_oneERK3mpq.exit.thread
  %i.cg = load ptr, ptr %6, align 8, !tbaa !40    ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.ab
  br i1 %i.ch, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit25
  %i.ci = load i64, ptr %i.ab, align 8, !tbaa !42
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.cj) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit25, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.ck = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %.str.1..str.246, i64 noundef 1) ; 0 uses
  br label %bb.h

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZN11mpq_managerILb0EE6is_oneERK3mpq.exit.thread, %_ZN11mpq_managerILb0EE6is_oneERK3mpq.exit.thread.peel
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  %i.cl = load ptr, ptr %6, align 8, !tbaa !40    ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.ab
  br i1 %i.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.cn = load i64, ptr %i.ab, align 8, !tbaa !42
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.co) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.i

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, %_ZN11mpq_managerILb0EE6is_oneERK3mpq.exit
  %i.cp = load ptr, ptr %i.af, align 8, !tbaa !129
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %indvars.iv
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !59
  %i.cs = load ptr, ptr %3, align 8, !tbaa !44
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8
  call void %i.cu(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.cr)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cv = load i32, ptr %i.ad, align 8, !tbaa !127
  %i.cw = zext i32 %i.cv to i64
  %i.cx = icmp samesign ult i64 %indvars.iv.next, %i.cw
  br i1 %i.cx, label %.peel.next, label %._crit_edge, !llvm.loop !258

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31 ], [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24 ]
  resume { ptr, i32 } %.pn
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN9subpaving9context_tINS_10config_mpqEE7watchedC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat($_ZN9subpaving9context_tINS_10config_mpqEE7watchedC5Ev) align 2 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !131
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN9subpaving9context_tINS_10config_mpqEE7watchedC2Ej(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1) unnamed_addr #0 comdat($_ZN9subpaving9context_tINS_10config_mpqEE7watchedC5Ej) align 2 {
bb.a:
  %i.a = zext i32 %1 to i64
  %i.b = shl nuw nsw i64 %i.a, 3
  %i.c = or disjoint i64 %i.b, 1
  %i.d = inttoptr i64 %i.c to ptr
  store ptr %i.d, ptr %0, align 8, !tbaa !131
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN9subpaving9context_tINS_10config_mpqEE7watchedC2EPNS2_6clauseE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #0 comdat($_ZN9subpaving9context_tINS_10config_mpqEE7watchedC5EPNS2_6clauseE) align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !131
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZNK9subpaving9context_tINS_10config_mpqEE7watched8get_kindEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !131
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = trunc i64 %i.b to i32
  %i.d = and i32 %i.c, 7
  ret i32 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZNK9subpaving9context_tINS_10config_mpqEE7watched9is_clauseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !131
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = and i64 %i.b, 7
  %i.d = icmp ne i64 %i.c, 1
  ret i1 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZNK9subpaving9context_tINS_10config_mpqEE7watched13is_definitionEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !131
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = and i64 %i.b, 7
  %i.d = icmp eq i64 %i.c, 1
  ret i1 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZNK9subpaving9context_tINS_10config_mpqEE7watched10get_clauseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !131
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = and i64 %i.b, -8
  %i.d = inttoptr i64 %i.c to ptr
  ret ptr %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZNK9subpaving9context_tINS_10config_mpqEE7watched7get_varEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !131
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = lshr i64 %i.b, 3
  %i.d = trunc i64 %i.c to i32
  ret i32 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZNK9subpaving9context_tINS_10config_mpqEE7watchedeqERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !131
  %i.b = load ptr, ptr %1, align 8, !tbaa !131
  %i.c = icmp eq ptr %i.a, %i.b
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZNK9subpaving9context_tINS_10config_mpqEE7watchedneERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !131
  %i.b = load ptr, ptr %1, align 8, !tbaa !131
  %i.c = icmp ne ptr %i.a, %i.b
end_hunk_0
