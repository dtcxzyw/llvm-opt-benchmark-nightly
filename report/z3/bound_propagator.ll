Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/bound_propagator?download=true
inline.NumInlined: 649
inline.NumDeleted: 279
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNK16bound_propagator5lowerEjPK3mpqPKjRS0_Rb:bb.a
  %i.a = tail call noundef zeroext i1 @_ZNK16bound_propagator9get_boundILb1E3mpqEEbjPKT0_PKjRS1_Rb(ptr noundef nonnull align 8 dereferenceable(280) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 1 dereferenceable(1) %5)
  ret i1 %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK16bound_propagator9get_boundILb1E3mpqEEbjPKT0_PKjRS1_Rb(ptr noundef nonnull align 8 dereferenceable(280) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 1 dereferenceable(1) %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  store i8 0, ptr %5, align 1, !tbaa !107
  %i.a = load ptr, ptr %0, align 8, !tbaa !80, !nonnull !78, !align !79 ; 2 uses
  tail call void @_ZN11mpz_managerILb0EE5resetER3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %4)
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  tail call void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.b)
  store i32 1, ptr %i.b, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 4 uses
  %i.d = load i8, ptr %i.c, align 4
  %i.e = and i8 %i.d, -2
  store i8 %i.e, ptr %i.c, align 4
  %i.f = icmp eq i32 %1, 0
  br i1 %i.f, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %wide.trip.count = zext i32 %1 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 3 uses
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !15   ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.k = load i32, ptr %i.j, align 4, !tbaa !73
  %i.l = icmp slt i32 %i.h, 0
  %i.m = zext i32 %i.k to i64
  %..v = select i1 %i.l, i64 112, i64 104
  %. = getelementptr inbounds nuw i8, ptr %0, i64 %..v
  %.sink = load ptr, ptr %., align 8, !tbaa !75
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.sink, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !83   ; 3 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load i32, ptr %i.p, align 8
  %i.r = and i32 %i.q, 2
  %.not29 = icmp eq i32 %i.r, 0
  br i1 %.not29, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %5, align 1, !tbaa !107
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.s = load ptr, ptr %0, align 8, !tbaa !80, !nonnull !78, !align !79
  tail call void @_ZN11mpq_managerILb0EE6addmulERK3mpqS3_S3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %4)
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %0, align 8, !tbaa !80, !nonnull !78, !align !79 ; 2 uses
  tail call void @_ZN11mpz_managerILb0EE5resetER3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %4)
  tail call void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %i.b)
  store i32 1, ptr %i.b, align 8, !tbaa !15
  %i.u = load i8, ptr %i.c, align 4
  %i.v = and i8 %i.u, -2
  store i8 %i.v, ptr %i.c, align 4
  br label %.loopexit

bb.h:                                             ; preds = %bb.b, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !133

.loopexit:                                        ; preds = %bb.h, %bb.a, %bb.g
  %i.w = phi i1 [ false, %bb.g ], [ true, %bb.a ], [ true, %bb.h ]
  ret i1 %i.w
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK16bound_propagator5upperEjPK3mpqPKjRS0_Rb(ptr noundef nonnull align 8 dereferenceable(280) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 1 dereferenceable(1) %5) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK16bound_propagator9get_boundILb0E3mpqEEbjPKT0_PKjRS1_Rb(ptr noundef nonnull align 8 dereferenceable(280) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 1 dereferenceable(1) %5)
  ret i1 %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK16bound_propagator9get_boundILb0E3mpqEEbjPKT0_PKjRS1_Rb(ptr noundef nonnull align 8 dereferenceable(280) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 1 dereferenceable(1) %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  store i8 0, ptr %5, align 1, !tbaa !107
  %i.a = load ptr, ptr %0, align 8, !tbaa !80, !nonnull !78, !align !79 ; 2 uses
  tail call void @_ZN11mpz_managerILb0EE5resetER3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %4)
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  tail call void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.b)
  store i32 1, ptr %i.b, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 4 uses
  %i.d = load i8, ptr %i.c, align 4
  %i.e = and i8 %i.d, -2
  store i8 %i.e, ptr %i.c, align 4
  %i.f = icmp eq i32 %1, 0
  br i1 %i.f, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %wide.trip.count = zext i32 %1 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 3 uses
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !15   ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.k = load i32, ptr %i.j, align 4, !tbaa !73
  %i.l = icmp slt i32 %i.h, 0
  %i.m = zext i32 %i.k to i64
  %..v = select i1 %i.l, i64 104, i64 112
  %. = getelementptr inbounds nuw i8, ptr %0, i64 %..v
  %.sink = load ptr, ptr %., align 8, !tbaa !75
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.sink, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !83   ; 3 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load i32, ptr %i.p, align 8
  %i.r = and i32 %i.q, 2
  %.not29 = icmp eq i32 %i.r, 0
  br i1 %.not29, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %5, align 1, !tbaa !107
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.s = load ptr, ptr %0, align 8, !tbaa !80, !nonnull !78, !align !79
  tail call void @_ZN11mpq_managerILb0EE6addmulERK3mpqS3_S3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %4)
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %0, align 8, !tbaa !80, !nonnull !78, !align !79 ; 2 uses
  tail call void @_ZN11mpz_managerILb0EE5resetER3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %4)
  tail call void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %i.b)
  store i32 1, ptr %i.b, align 8, !tbaa !15
  %i.u = load i8, ptr %i.c, align 4
  %i.v = and i8 %i.u, -2
  store i8 %i.v, ptr %i.c, align 4
  br label %.loopexit

bb.h:                                             ; preds = %bb.b, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !134

.loopexit:                                        ; preds = %bb.h, %bb.a, %bb.g
  %i.w = phi i1 [ false, %bb.g ], [ true, %bb.a ], [ true, %bb.h ]
  ret i1 %i.w
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK16bound_propagator17display_bounds_ofERSoRK15linear_equation(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(280) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %2, align 8, !tbaa !89
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !90
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.e = load i32, ptr %i.d, align 4, !tbaa !73
  tail call void @_ZNK16bound_propagator18display_var_boundsERSojbb(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.e, i1 noundef zeroext true, i1 noundef zeroext true)
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.11, i64 noundef 1) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.g = load i32, ptr %2, align 8, !tbaa !89
  %i.h = zext i32 %i.g to i64
  %i.i = icmp samesign ult i64 %indvars.iv.next, %i.h
  br i1 %i.i, label %bb.b, label %._crit_edge, !llvm.loop !135
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK16bound_propagator18display_var_boundsERSojbb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(280) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2, i1 noundef zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !75
  %i.c = zext i32 %2 to i64                       ; 7 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !83   ; 3 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %4, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.f = load ptr, ptr %0, align 8, !tbaa !80, !nonnull !78, !align !79
  call void @_ZNK11mpq_managerILb0EE9to_stringB5cxx11ERK3mpq(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(728) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.e)
  %i.g = load ptr, ptr %5, align 8, !tbaa !102
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !103
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.g, i64 noundef %i.i)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.d ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.c
  %i.k = load ptr, ptr %5, align 8, !tbaa !102    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.n = load i64, ptr %i.l, align 8, !tbaa !24
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #23
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %5, align 8, !tbaa !102    ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %bb.d
  %i.t = load i64, ptr %i.r, align 8, !tbaa !24
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.m

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br i1 %3, label %.thread.thread, label %.critedge

.thread.thread:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.v = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.12, i64 noundef 3) ; 0 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !75
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.c
  %.pre54 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !83
  br label %bb.e

.thread:                                          ; preds = %bb.b
  br i1 %3, label %bb.e, label %.critedge

bb.e:                                             ; preds = %.thread.thread, %.thread
  %7 = phi ptr [ %.pre54, %.thread.thread ], [ %i.e, %.thread ]
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.x = load double, ptr %i.w, align 8, !tbaa !21
  %i.y = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.x) ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %bb.e, %.thread
  %i.z = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.13, i64 noundef 1) ; 0 uses
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !75
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.c
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !83
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.ae = load i32, ptr %i.ad, align 8
  %i.af = and i32 %i.ae, 2
  %.not34 = icmp eq i32 %i.af, 0                  ; 2 uses
  %i.ag = select i1 %.not34, ptr @.str.15, ptr @.str.14
  %i.ah = select i1 %.not34, i64 2, i64 1
  %i.ai = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.ag, i64 noundef %i.ah) ; 0 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.aj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.16, i64 noundef 5) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.critedge
  %i.ak = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.17, i64 noundef 2) ; 0 uses
  %i.al = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.c)
  %i.am = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef nonnull @.str.13, i64 noundef 1) ; 0 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !75
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.c
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !83 ; 2 uses
  %.not35 = icmp eq ptr %i.aq, null
  br i1 %.not35, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %i.as = load i32, ptr %i.ar, align 8
  %i.at = and i32 %i.as, 2
  %.not36 = icmp eq i32 %i.at, 0                  ; 2 uses
  %i.au = select i1 %.not36, ptr @.str.15, ptr @.str.14
  %i.av = select i1 %.not36, i64 2, i64 1
  %i.aw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.au, i64 noundef %i.av) ; 0 uses
  %i.ax = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.13, i64 noundef 1) ; 0 uses
  br i1 %4, label %bb.i, label %.thread49

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.ay = load ptr, ptr %0, align 8, !tbaa !80, !nonnull !78, !align !79
  %i.az = load ptr, ptr %i.an, align 8, !tbaa !75
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.c
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !83
  call void @_ZNK11mpq_managerILb0EE9to_stringB5cxx11ERK3mpq(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(728) %i.ay, ptr noundef nonnull align 8 dereferenceable(32) %i.bb)
  %i.bc = load ptr, ptr %6, align 8, !tbaa !102
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !103
  %i.bf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.bc, i64 noundef %i.be)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit41 unwind label %bb.j ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit41: ; preds = %bb.i
  %i.bg = load ptr, ptr %6, align 8, !tbaa !102   ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit41
  %i.bj = load i64, ptr %i.bh, align 8, !tbaa !24
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bk) #23
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i43

bb.j:                                             ; preds = %bb.i
  %i.bl = landingpad { ptr, i32 }
          cleanup
  %i.bm = load ptr, ptr %6, align 8, !tbaa !102   ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %bb.j
  %i.bp = load i64, ptr %i.bn, align 8, !tbaa !24
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bq) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.m

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i43: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit41, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br i1 %3, label %.thread49.thread, label %.critedge51

.thread49.thread:                                 ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i43
  %i.br = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.12, i64 noundef 3) ; 0 uses
  br label %bb.k

.thread49:                                        ; preds = %bb.h
  br i1 %3, label %bb.k, label %.critedge51

bb.k:                                             ; preds = %.thread49.thread, %.thread49
  %i.bs = load ptr, ptr %i.an, align 8, !tbaa !75
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.c
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !83
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !21
  %i.bx = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.bw) ; 0 uses
  br label %.critedge51

bb.l:                                             ; preds = %bb.g
  %i.by = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.18, i64 noundef 4) ; 0 uses
  br label %.critedge51

.critedge51:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i43, %.thread49, %bb.k, %bb.l
  ret void

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40
  %.pn = phi { ptr, i32 } [ %i.bl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47 ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40 ]
  resume { ptr, i32 } %.pn
}

declare void @_ZNK11mpq_managerILb0EE9to_stringB5cxx11ERK3mpq(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(728), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK16bound_propagator14display_boundsERSobb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(280) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !76   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %._crit_edge, label %_ZNK6vectorIcLb0EjE4sizeEv.exit

_ZNK6vectorIcLb0EjE4sizeEv.exit:                  ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !73   ; 2 uses
  %.not10 = icmp eq i32 %i.e, 0
  br i1 %.not10, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNK6vectorIcLb0EjE4sizeEv.exit
  %wide.trip.count = zext i32 %i.e to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.c, %bb.a, %_ZNK6vectorIcLb0EjE4sizeEv.exit
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !76
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %indvars.iv
  %i.h = load i8, ptr %i.g, align 1, !tbaa !24
  %.not = icmp eq i8 %i.h, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.i = trunc nuw i64 %indvars.iv to i32
  tail call void @_ZNK16bound_propagator18display_var_boundsERSojbb(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.i, i1 noundef zeroext %2, i1 noundef zeroext %3)
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.11, i64 noundef 1) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !3
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK16bound_propagator19display_constraintsERSo(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !77   ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %._crit_edge, label %_ZNK6vectorIN16bound_propagator10constraintELb0EjE3endEv.exit

_ZNK6vectorIN16bound_propagator10constraintELb0EjE3endEv.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !73   ; 2 uses
  %i.f = zext i32 %i.e to i64
  %i.g = mul nuw nsw i64 %i.f, 24
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.g
  %.not11 = icmp eq i32 %i.e, 0
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK6vectorIN16bound_propagator10constraintELb0EjE3endEv.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %bb.d, %bb.a, %_ZNK6vectorIN16bound_propagator10constraintELb0EjE3endEv.exit
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.012 = phi ptr [ %i.b, %.lr.ph ], [ %i.p, %bb.d ] ; 3 uses
  %i.j = load i8, ptr %.012, align 8
  %i.k = and i8 %i.j, 3
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %.012, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !24
  tail call void @_ZNK23linear_equation_manager7displayERSoRK15linear_equation(ptr noundef nonnull align 8 dereferenceable(64) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.n)
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.11, i64 noundef 1) ; 0 uses
  br label %bb.d

end_hunk_0
