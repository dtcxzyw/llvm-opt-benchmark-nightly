inline.NumInlined: 1052
inline.NumDeleted: 379
begin_hunk_0_@_ZN12inf_rationalC2ERK8rational:bb.a

bb.f:                                             ; preds = %.noexc
  store i32 1, ptr %i.ac, align 8, !tbaa !15
  %i.ai = load i8, ptr %i.ad, align 4
  %i.aj = and i8 %i.ai, -2
  store i8 %i.aj, ptr %i.ad, align 4
  ret void

bb.g:                                             ; preds = %.noexc, %_ZN8rationalC2ERKS_.exit
  %i.ak = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.x) #21
  tail call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #21
  resume { ptr, i32 } %i.ak
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN16inf_eps_rationalI12inf_rationalED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !13 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %.noexc.i.i unwind label %bb.b

.noexc.i.i:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %_ZN8rationalD2Ev.exit.i unwind label %bb.b

bb.b:                                             ; preds = %.noexc.i.i, %bb.a
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #22
  unreachable

_ZN8rationalD2Ev.exit.i:                          ; preds = %.noexc.i.i
  %i.g = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !13 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.g, ptr noundef nonnull align 8 dereferenceable(64) %i.a)
          to label %.noexc.i1.i unwind label %bb.c

.noexc.i1.i:                                      ; preds = %_ZN8rationalD2Ev.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.h)
          to label %_ZN12inf_rationalD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %.noexc.i1.i, %_ZN8rationalD2Ev.exit.i
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #22
  unreachable

_ZN12inf_rationalD2Ev.exit:                       ; preds = %.noexc.i1.i
  %i.k = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !13 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.k, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %.noexc.i unwind label %bb.d

.noexc.i:                                         ; preds = %_ZN12inf_rationalD2Ev.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.k, ptr noundef nonnull align 8 dereferenceable(16) %i.l)
          to label %_ZN8rationalD2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %.noexc.i, %_ZN12inf_rationalD2Ev.exit
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #22
  unreachable

_ZN8rationalD2Ev.exit:                            ; preds = %.noexc.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN12inf_rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !13 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %.noexc.i unwind label %bb.b

.noexc.i:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %_ZN8rationalD2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %.noexc.i, %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #22
  unreachable

_ZN8rationalD2Ev.exit:                            ; preds = %.noexc.i
  %i.f = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !13 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.f, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %.noexc.i1 unwind label %bb.c

.noexc.i1:                                        ; preds = %_ZN8rationalD2Ev.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.f, ptr noundef nonnull align 8 dereferenceable(16) %i.g)
          to label %_ZN8rationalD2Ev.exit2 unwind label %bb.c

bb.c:                                             ; preds = %.noexc.i1, %_ZN8rationalD2Ev.exit
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #22
  unreachable

_ZN8rationalD2Ev.exit2:                           ; preds = %.noexc.i1
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6vectorI16inf_eps_rationalI12inf_rationalELb1EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8      ; 4 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN6vectorI16inf_eps_rationalI12inf_rationalELb1EjE7destroyEv.exit, label %_ZNK6vectorI16inf_eps_rationalI12inf_rationalELb1EjE4sizeEv.exit.i.i

_ZNK6vectorI16inf_eps_rationalI12inf_rationalELb1EjE4sizeEv.exit.i.i: ; preds = %bb.a
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !12   ; 2 uses
  %.not5.i.i.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not5.i.i.i.i.i, label %_ZN6vectorI16inf_eps_rationalI12inf_rationalELb1EjE16destroy_elementsEv.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNK6vectorI16inf_eps_rationalI12inf_rationalELb1EjE4sizeEv.exit.i.i, %.lr.ph.i.i.i.i.i
  %.07.i.i.i.i.i = phi i32 [ %i.e, %.lr.ph.i.i.i.i.i ], [ %i.c, %_ZNK6vectorI16inf_eps_rationalI12inf_rationalELb1EjE4sizeEv.exit.i.i ]
  %.046.i.i.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i.i.i ], [ %i.a, %_ZNK6vectorI16inf_eps_rationalI12inf_rationalELb1EjE4sizeEv.exit.i.i ] ; 2 uses
  tail call void @_ZN16inf_eps_rationalI12inf_rationalED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %.046.i.i.i.i.i) #21
  %i.d = getelementptr inbounds nuw i8, ptr %.046.i.i.i.i.i, i64 96
  %i.e = add i32 %.07.i.i.i.i.i, -1               ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i.i.i, label %_ZN6vectorI16inf_eps_rationalI12inf_rationalELb1EjE16destroy_elementsEv.exit.loopexit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !152

_ZN6vectorI16inf_eps_rationalI12inf_rationalELb1EjE16destroy_elementsEv.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !8
  br label %_ZN6vectorI16inf_eps_rationalI12inf_rationalELb1EjE16destroy_elementsEv.exit.i

_ZN6vectorI16inf_eps_rationalI12inf_rationalELb1EjE16destroy_elementsEv.exit.i: ; preds = %_ZN6vectorI16inf_eps_rationalI12inf_rationalELb1EjE16destroy_elementsEv.exit.loopexit.i, %_ZNK6vectorI16inf_eps_rationalI12inf_rationalELb1EjE4sizeEv.exit.i.i
  %i.f = phi ptr [ %.pre.i, %_ZN6vectorI16inf_eps_rationalI12inf_rationalELb1EjE16destroy_elementsEv.exit.loopexit.i ], [ %i.a, %_ZNK6vectorI16inf_eps_rationalI12inf_rationalELb1EjE4sizeEv.exit.i.i ]
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.g)
          to label %_ZN6vectorI16inf_eps_rationalI12inf_rationalELb1EjE7destroyEv.exit unwind label %bb.b

_ZN6vectorI16inf_eps_rationalI12inf_rationalELb1EjE7destroyEv.exit: ; preds = %bb.a, %_ZN6vectorI16inf_eps_rationalI12inf_rationalELb1EjE16destroy_elementsEv.exit.i
  ret void

bb.b:                                             ; preds = %_ZN6vectorI16inf_eps_rationalI12inf_rationalELb1EjE16destroy_elementsEv.exit.i
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #22
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN3opt6optsmt12is_unboundedEjb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = zext i32 %1 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  %.0.in.in.in.v = select i1 %2, ptr %i.b, ptr %i.e
  %.0.in.in.in = getelementptr inbounds nuw [96 x i8], ptr %.0.in.in.in.v, i64 %i.c
  %.0.in.in = load i32, ptr %.0.in.in.in, align 8, !tbaa !15
  %.0.in = icmp ne i32 %.0.in.in, 0
  ret i1 %.0.in
}

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 -1, 2) i32 @_ZN3opt6optsmt13geometric_lexEjbb(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.arith_util, align 8          ; 4 uses
  %5 = alloca %class.obj_ref.37, align 8          ; 16 uses
  %6 = alloca %class.obj_ref.37, align 8          ; 9 uses
  %7 = alloca %class.rational, align 8            ; 31 uses
  %8 = alloca %class.inf_eps_rational, align 8    ; 14 uses
  %9 = alloca %class.rational, align 8            ; 12 uses
  %10 = alloca %class.inf_rational, align 8       ; 15 uses
  %11 = alloca %class.inf_eps_rational, align 8   ; 24 uses
  %12 = alloca %class.rational, align 8           ; 12 uses
  %13 = alloca %class.rational, align 8           ; 13 uses
  %14 = alloca %class.obj_ref.37, align 8         ; 6 uses
  %15 = alloca %class.inf_eps_rational, align 8   ; 7 uses
  %16 = alloca %class.inf_eps_rational, align 8   ; 11 uses
  %17 = alloca %class.inf_rational, align 8       ; 10 uses
  %18 = alloca %class.obj_ref.37, align 8         ; 5 uses
  %19 = alloca %class.inf_eps_rational, align 8   ; 24 uses
  %20 = alloca %class.rational, align 8           ; 12 uses
  %21 = alloca %class.inf_rational, align 8       ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.a = load ptr, ptr %0, align 8, !tbaa !74, !nonnull !70, !align !71
  call void @_ZN10arith_utilC1ER11ast_manager(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(952) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !153
  %i.d = zext i32 %1 to i64                       ; 6 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !154
  %i.g = call noundef ptr @_ZNK4expr8get_sortEv(ptr noundef nonnull align 4 dereferenceable(16) %i.f)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !155  ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZNK17arith_recognizers6is_intEPK4expr.exit, label %_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i

_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i:   ; preds = %bb.a
  %i.k = load i32, ptr %i.i, align 8, !tbaa !158
  %i.l = icmp eq i32 %i.k, 5
  br i1 %i.l, label %bb.b, label %_ZNK17arith_recognizers6is_intEPK4expr.exit

bb.b:                                             ; preds = %_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !162
  %i.o = icmp eq i32 %i.n, 1
  br label %_ZNK17arith_recognizers6is_intEPK4expr.exit

_ZNK17arith_recognizers6is_intEPK4expr.exit:      ; preds = %bb.a, %_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i, %bb.b
  %i.p = phi i1 [ false, %_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i ], [ %i.o, %bb.b ], [ false, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.q = load ptr, ptr %0, align 8, !tbaa !74, !nonnull !70, !align !71 ; 2 uses
  store ptr null, ptr %5, align 8, !tbaa !133
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !135
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  store ptr null, ptr %6, align 8, !tbaa !133
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store ptr %i.q, ptr %i.s, align 8, !tbaa !135
  %i.t = icmp eq i32 %1, 0
  %or.cond202.not = or i1 %i.t, %3
  br i1 %or.cond202.not, label %.loopexit176, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK17arith_recognizers6is_intEPK4expr.exit, %bb.c
  %.052199 = phi i32 [ %i.u, %bb.c ], [ 0, %_ZNK17arith_recognizers6is_intEPK4expr.exit ] ; 2 uses
  invoke void @_ZN3opt6optsmt17commit_assignmentEj(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %.052199)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.u = add nuw i32 %.052199, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.u, %1
  br i1 %exitcond.not, label %.loopexit176, label %.lr.ph, !llvm.loop !163

bb.d:                                             ; preds = %.lr.ph
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.es

.loopexit176:                                     ; preds = %bb.c, %_ZNK17arith_recognizers6is_intEPK4expr.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 11 uses
  %i.x = load i8, ptr %i.w, align 4
  %i.y = and i8 %i.x, -4
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store ptr null, ptr %i.z, align 8, !tbaa !149
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 16 uses
  store i32 1, ptr %i.aa, align 8, !tbaa !15
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 16 uses
  %i.ac = load i8, ptr %i.ab, align 4
  %i.ad = and i8 %i.ac, -4
  store i8 %i.ad, ptr %i.ab, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
  store ptr null, ptr %i.ae, align 8, !tbaa !149
  %i.af = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !13
  store i32 1, ptr %7, align 8, !tbaa !15
  store i8 %i.y, ptr %i.w, align 4
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.af, ptr noundef nonnull align 8 dereferenceable(16) %i.aa)
          to label %bb.e unwind label %bb.ao

bb.e:                                             ; preds = %.loopexit176
  store i32 1, ptr %i.aa, align 8, !tbaa !15
  %i.ag = load i8, ptr %i.ab, align 4
  %i.ah = and i8 %i.ag, -2
  store i8 %i.ah, ptr %i.ab, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 4
  %i.ak = and i8 %i.aj, -4
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr null, ptr %i.al, align 8, !tbaa !149
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  store i32 1, ptr %i.am, align 8, !tbaa !15
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 20 ; 4 uses
  %i.ao = load i8, ptr %i.an, align 4
  %i.ap = and i8 %i.ao, -4
  store i8 %i.ap, ptr %i.an, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr null, ptr %i.aq, align 8, !tbaa !149
  %i.ar = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !13
  store i32 -1, ptr %9, align 8, !tbaa !15
  store i8 %i.ak, ptr %i.ai, align 4
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.ar, ptr noundef nonnull align 8 dereferenceable(16) %i.am)
          to label %bb.f unwind label %bb.ap

bb.f:                                             ; preds = %bb.e
  store i32 1, ptr %i.am, align 8, !tbaa !15
  %i.as = load i8, ptr %i.an, align 4
  %i.at = and i8 %i.as, -2
  store i8 %i.at, ptr %i.an, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 2 uses
  %i.av = load i8, ptr %i.au, align 4
  %i.aw = and i8 %i.av, -4
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr null, ptr %i.ax, align 8, !tbaa !149
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  store i32 1, ptr %i.ay, align 8, !tbaa !15
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 20 ; 4 uses
  %i.ba = load i8, ptr %i.az, align 4
  %i.bb = and i8 %i.ba, -4
  store i8 %i.bb, ptr %i.az, align 4
  %i.bc = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr null, ptr %i.bc, align 8, !tbaa !149
  %i.bd = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !13
  store i32 0, ptr %10, align 8, !tbaa !15
  store i8 %i.aw, ptr %i.au, align 4
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.bd, ptr noundef nonnull align 8 dereferenceable(16) %i.ay)
          to label %bb.g unwind label %bb.aq

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr %i.ay, align 8, !tbaa !15
  %i.be = load i8, ptr %i.az, align 4
  %i.bf = and i8 %i.be, -2
  store i8 %i.bf, ptr %i.az, align 4
  %i.bg = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %10, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, i8 0, i64 24, i1 false)
  store i32 1, ptr %i.bh, align 8, !tbaa !15
  %i.bi = getelementptr inbounds nuw i8, ptr %10, i64 56
  store ptr null, ptr %i.bi, align 8, !tbaa !149
  invoke void @_ZN16inf_eps_rationalI12inf_rationalEC2ERK8rationalRKS0_(ptr noundef nonnull align 8 dereferenceable(96) %8, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(64) %10)
          to label %bb.h unwind label %bb.ar

bb.h:                                             ; preds = %bb.g
  %i.bj = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !13 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.bj, ptr noundef nonnull align 8 dereferenceable(32) %i.bg)
          to label %.noexc.i.i unwind label %bb.i

.noexc.i.i:                                       ; preds = %bb.h
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.bj, ptr noundef nonnull align 8 dereferenceable(16) %i.bh)
          to label %_ZN8rationalD2Ev.exit.i unwind label %bb.i

bb.i:                                             ; preds = %.noexc.i.i, %bb.h
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  call void @__clang_call_terminate(ptr %i.bl) #22
  unreachable

_ZN8rationalD2Ev.exit.i:                          ; preds = %.noexc.i.i
  %i.bm = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !13 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.bm, ptr noundef nonnull align 8 dereferenceable(64) %10)
          to label %.noexc.i1.i unwind label %bb.j

.noexc.i1.i:                                      ; preds = %_ZN8rationalD2Ev.exit.i
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.bm, ptr noundef nonnull align 8 dereferenceable(16) %i.ay)
          to label %_ZN12inf_rationalD2Ev.exit unwind label %bb.j

bb.j:                                             ; preds = %.noexc.i1.i, %_ZN8rationalD2Ev.exit.i
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  call void @__clang_call_terminate(ptr %i.bo) #22
  unreachable

_ZN12inf_rationalD2Ev.exit:                       ; preds = %.noexc.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  %i.bp = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !13 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.bp, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %.noexc.i unwind label %bb.k

.noexc.i:                                         ; preds = %_ZN12inf_rationalD2Ev.exit
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.bp, ptr noundef nonnull align 8 dereferenceable(16) %i.am)
          to label %_ZN8rationalD2Ev.exit unwind label %bb.k

bb.k:                                             ; preds = %.noexc.i, %_ZN12inf_rationalD2Ev.exit
  %i.bq = landingpad { ptr, i32 }
          catch ptr null
  %i.br = extractvalue { ptr, i32 } %i.bq, 0
  call void @__clang_call_terminate(ptr %i.br) #22
  unreachable

_ZN8rationalD2Ev.exit:                            ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 12 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %11, i64 4 ; 5 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 7 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %11, i64 20 ; 6 uses
  %i.by = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.bz = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %12, i64 4 ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %12, i64 20 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN3opt6optsmt13geometric_lexEjbb:bb.a
  %i.nz = icmp eq i8 %i.ny, 0
  br i1 %i.nz, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.oa = load i8, ptr %i.w, align 4
  %i.ob = and i8 %i.oa, 1
  %i.oc = icmp eq i8 %i.ob, 0
  br i1 %i.oc, label %.split172, label %bb.di

.split172:                                        ; preds = %bb.dh
  %i.od = load i32, ptr @_ZN8rational5m_oneE, align 8, !tbaa !15
  %i.oe = load i32, ptr %7, align 8, !tbaa !15
  %i.of = icmp slt i32 %i.od, %i.oe
  br i1 %i.of, label %bb.dk, label %.loopexit174

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %i.og = invoke noundef i32 @_ZN11mpz_managerILb1EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(728) %i.nk, ptr noundef nonnull align 8 dereferenceable(32) @_ZN8rational5m_oneE, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %.noexc139 unwind label %.loopexit.loopexit

.noexc139:                                        ; preds = %bb.di
  %i.oh = icmp slt i32 %i.og, 0
  br i1 %i.oh, label %bb.dk, label %.loopexit174

bb.dj:                                            ; preds = %bb.df, %bb.de
  %i.oi = invoke noundef zeroext i1 @_ZN11mpq_managerILb1EE6rat_ltERK3mpqS3_(ptr noundef nonnull align 8 dereferenceable(728) %i.nk, ptr noundef nonnull align 8 dereferenceable(32) @_ZN8rational5m_oneE, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_ZgtRK8rationalS1_.exit141 unwind label %.loopexit.loopexit

_ZgtRK8rationalS1_.exit141:                       ; preds = %bb.dj
  br i1 %i.oi, label %bb.dk, label %.loopexit174

bb.dk:                                            ; preds = %.split172, %.noexc139, %_ZgtRK8rationalS1_.exit141
  %i.oj = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !13 ; 2 uses
  %i.ok = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8rational5m_oneE, i64 4), align 4
  %i.ol = and i8 %i.ok, 1
  %i.om = icmp eq i8 %i.ol, 0
  br i1 %i.om, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  %i.on = load i32, ptr @_ZN8rational5m_oneE, align 8, !tbaa !15
  store i32 %i.on, ptr %7, align 8, !tbaa !15
  %i.oo = load i8, ptr %i.w, align 4
  %i.op = and i8 %i.oo, -2
  store i8 %i.op, ptr %i.w, align 4
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i

bb.dm:                                            ; preds = %bb.dk
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.oj, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) @_ZN8rational5m_oneE)
          to label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i unwind label %.loopexit.loopexit

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i:   ; preds = %bb.dm, %bb.dl
  %i.oq = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8rational5m_oneE, i64 20), align 4
  %i.or = and i8 %i.oq, 1
  %i.os = icmp eq i8 %i.or, 0
  br i1 %i.os, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i
  %i.ot = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN8rational5m_oneE, i64 16), align 8, !tbaa !15
  store i32 %i.ot, ptr %i.aa, align 8, !tbaa !15
  %i.ou = load i8, ptr %i.ab, align 4
  %i.ov = and i8 %i.ou, -2
  store i8 %i.ov, ptr %i.ab, align 4
  br label %_ZN8rationalaSERKS_.exit

bb.do:                                            ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.oj, ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN8rational5m_oneE, i64 16))
          to label %_ZN8rationalaSERKS_.exit unwind label %.loopexit.loopexit

_ZN8rationalaSERKS_.exit:                         ; preds = %bb.dn, %bb.do
  %i.ow = load ptr, ptr %i.bs, align 8, !tbaa !18 ; 2 uses
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !63
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 200
  %i.oz = load ptr, ptr %i.oy, align 8
  invoke void %i.oz(ptr noundef nonnull align 8 dereferenceable(136) %i.ow, i32 noundef 1)
          to label %.outer.peel.newph unwind label %.loopexit.loopexit, !llvm.loop !166

.loopexit174:                                     ; preds = %.split172, %.noexc139, %bb.z, %_ZgtRK8rationalS1_.exit141, %_ZN11ast_manager3incEv.exit, %_ZN11ast_manager3incEv.exit.peel, %bb.m, %_ZgtRK8rationalS1_.exit141.peel, %.noexc139.peel, %.split172.peel, %_ZN7obj_refI4expr11ast_managerEaSERKS2_.exit
  %.173 = phi i32 [ 1, %_ZN7obj_refI4expr11ast_managerEaSERKS2_.exit ], [ -1, %.split172 ], [ -1, %_ZgtRK8rationalS1_.exit141 ], [ %i.es, %bb.z ], [ %.072, %_ZN11ast_manager3incEv.exit ], [ -1, %.noexc139 ], [ -1, %.split172.peel ], [ -1, %.noexc139.peel ], [ -1, %_ZgtRK8rationalS1_.exit141.peel ], [ %i.cy, %bb.m ], [ %.072.ph, %_ZN11ast_manager3incEv.exit.peel ] ; 2 uses
  %.3 = phi i32 [ %.1, %_ZN7obj_refI4expr11ast_managerEaSERKS2_.exit ], [ %.045, %_ZN11ast_manager3incEv.exit ], [ %.045, %.split172 ], [ %.045, %.noexc139 ], [ %.045, %bb.z ], [ %.045, %_ZgtRK8rationalS1_.exit141 ], [ %.045.ph, %_ZN11ast_manager3incEv.exit.peel ], [ %.045.ph, %bb.m ], [ %.045.ph, %_ZgtRK8rationalS1_.exit141.peel ], [ %.045.ph, %.noexc139.peel ], [ %.045.ph, %.split172.peel ]
  %i.pa = load ptr, ptr %i.bs, align 8, !tbaa !18 ; 2 uses
  %i.pb = load ptr, ptr %i.pa, align 8, !tbaa !63
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 200
  %i.pd = load ptr, ptr %i.pc, align 8
  invoke void %i.pd(ptr noundef nonnull align 8 dereferenceable(136) %i.pa, i32 noundef %.3)
          to label %bb.dp unwind label %.loopexit.split-lp

bb.dp:                                            ; preds = %.loopexit174
  %i.pe = icmp eq i32 %.173, -1
  br i1 %i.pe, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %bb.dp
  %i.pf = load ptr, ptr %i.bt, align 8, !tbaa !141
  %i.pg = icmp eq ptr %i.pf, null
  br i1 %i.pg, label %_ZNK6vectorI16inf_eps_rationalI12inf_rationalELb1EjE4sizeEv.exit.thread, label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp
  %i.ph = load ptr, ptr %0, align 8, !tbaa !74, !nonnull !70, !align !71
  %i.pi = invoke noundef zeroext i1 @_ZN8reslimit3incEv(ptr noundef nonnull align 8 dereferenceable(952) %i.ph)
          to label %_ZN11ast_manager3incEv.exit145 unwind label %.loopexit.split-lp

_ZN11ast_manager3incEv.exit145:                   ; preds = %bb.dr
  %i.pj = icmp ne i32 %.173, 0
  %or.cond3.not = and i1 %i.pj, %i.pi
  br i1 %or.cond3.not, label %bb.ds, label %_ZNK6vectorI16inf_eps_rationalI12inf_rationalELb1EjE4sizeEv.exit.thread

bb.ds:                                            ; preds = %_ZN11ast_manager3incEv.exit145
  %i.pk = load ptr, ptr %i.ca, align 8, !tbaa !8
  %i.pl = getelementptr inbounds nuw [96 x i8], ptr %i.pk, i64 %i.d ; 6 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !8
  %i.po = getelementptr inbounds nuw [96 x i8], ptr %i.pn, i64 %i.d ; 6 uses
  %i.pp = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !13 ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pl, i64 4
  %i.pr = load i8, ptr %i.pq, align 4
  %i.ps = and i8 %i.pr, 1
  %i.pt = icmp eq i8 %i.ps, 0
  br i1 %i.pt, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  %i.pu = load i32, ptr %i.pl, align 8, !tbaa !15
  store i32 %i.pu, ptr %i.po, align 8, !tbaa !15
  %i.pv = getelementptr inbounds nuw i8, ptr %i.po, i64 4 ; 2 uses
  %i.pw = load i8, ptr %i.pv, align 4
  %i.px = and i8 %i.pw, -2
  store i8 %i.px, ptr %i.pv, align 4
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i146

bb.du:                                            ; preds = %bb.ds
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.pp, ptr noundef nonnull align 8 dereferenceable(96) %i.po, ptr noundef nonnull align 8 dereferenceable(96) %i.pl)
          to label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i146 unwind label %.loopexit.split-lp

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i146: ; preds = %bb.du, %bb.dt
  %i.py = getelementptr inbounds nuw i8, ptr %i.po, i64 16 ; 2 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pl, i64 16 ; 2 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pl, i64 20
  %i.qb = load i8, ptr %i.qa, align 4
  %i.qc = and i8 %i.qb, 1
  %i.qd = icmp eq i8 %i.qc, 0
  br i1 %i.qd, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i146
  %i.qe = load i32, ptr %i.pz, align 8, !tbaa !15
  store i32 %i.qe, ptr %i.py, align 8, !tbaa !15
  %i.qf = getelementptr inbounds nuw i8, ptr %i.po, i64 20 ; 2 uses
  %i.qg = load i8, ptr %i.qf, align 4
  %i.qh = and i8 %i.qg, -2
  store i8 %i.qh, ptr %i.qf, align 4
  br label %_ZN8rationalaSERKS_.exit.i147

bb.dw:                                            ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i146
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.pp, ptr noundef nonnull align 8 dereferenceable(16) %i.py, ptr noundef nonnull align 8 dereferenceable(16) %i.pz)
          to label %_ZN8rationalaSERKS_.exit.i147 unwind label %.loopexit.split-lp

_ZN8rationalaSERKS_.exit.i147:                    ; preds = %bb.dw, %bb.dv
  %i.qi = getelementptr inbounds nuw i8, ptr %i.po, i64 32
  %i.qj = getelementptr inbounds nuw i8, ptr %i.pl, i64 32
  %i.qk = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN12inf_rationalaSERKS_(ptr noundef nonnull align 8 dereferenceable(64) %i.qi, ptr noundef nonnull align 8 dereferenceable(64) %i.qj)
          to label %_ZN16inf_eps_rationalI12inf_rationalEaSERKS1_.exit151 unwind label %.loopexit.split-lp ; 0 uses

_ZN16inf_eps_rationalI12inf_rationalEaSERKS1_.exit151: ; preds = %_ZN8rationalaSERKS_.exit.i147
  br i1 %3, label %_ZNK6vectorI16inf_eps_rationalI12inf_rationalELb1EjE4sizeEv.exit.thread, label %.preheader

.preheader:                                       ; preds = %_ZN16inf_eps_rationalI12inf_rationalEaSERKS1_.exit151
  %i.ql = load ptr, ptr %i.ca, align 8, !tbaa !8  ; 2 uses
  %i.qm = icmp eq ptr %i.ql, null
  br i1 %i.qm, label %_ZNK6vectorI16inf_eps_rationalI12inf_rationalELb1EjE4sizeEv.exit.thread, label %_ZNK6vectorI16inf_eps_rationalI12inf_rationalELb1EjE4sizeEv.exit.lr.ph

_ZNK6vectorI16inf_eps_rationalI12inf_rationalELb1EjE4sizeEv.exit.lr.ph: ; preds = %.preheader
  %i.qn = getelementptr inbounds nuw i8, ptr %20, i64 4 ; 2 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.qp = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 4 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %20, i64 20 ; 4 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %20, i64 24
  %i.qs = getelementptr inbounds nuw i8, ptr %21, i64 4 ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.qu = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 4 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %21, i64 20 ; 4 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %21, i64 24
  %i.qx = getelementptr inbounds nuw i8, ptr %21, i64 32 ; 2 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %21, i64 48 ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %21, i64 56
  %i.ra = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %19, i64 4 ; 5 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %19, i64 24 ; 2 uses
  %i.re = getelementptr inbounds nuw i8, ptr %19, i64 20 ; 5 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %19, i64 32 ; 2 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %19, i64 40 ; 2 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %19, i64 36 ; 5 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %19, i64 48 ; 2 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %19, i64 56 ; 2 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %19, i64 52 ; 5 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %19, i64 64 ; 2 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %19, i64 72 ; 2 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %19, i64 68 ; 5 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %19, i64 80 ; 2 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %19, i64 88 ; 2 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %19, i64 84 ; 5 uses
  br label %_ZNK6vectorI16inf_eps_rationalI12inf_rationalELb1EjE4sizeEv.exit

_ZNK6vectorI16inf_eps_rationalI12inf_rationalELb1EjE4sizeEv.exit: ; preds = %_ZNK6vectorI16inf_eps_rationalI12inf_rationalELb1EjE4sizeEv.exit.lr.ph, %_ZN8rationalD2Ev.exit161
  %i.rr = phi ptr [ %i.ql, %_ZNK6vectorI16inf_eps_rationalI12inf_rationalELb1EjE4sizeEv.exit.lr.ph ], [ %i.yg, %_ZN8rationalD2Ev.exit161 ]
  %.0201.in = phi i32 [ %1, %_ZNK6vectorI16inf_eps_rationalI12inf_rationalELb1EjE4sizeEv.exit.lr.ph ], [ %.0201, %_ZN8rationalD2Ev.exit161 ]
  %.0201 = add i32 %.0201.in, 1                   ; 3 uses
  %i.rs = getelementptr inbounds i8, ptr %i.rr, i64 -4
  %i.rt = load i32, ptr %i.rs, align 4, !tbaa !12
  %22 = icmp ult i32 %.0201, %i.rt
  br i1 %22, label %bb.dx, label %_ZNK6vectorI16inf_eps_rationalI12inf_rationalELb1EjE4sizeEv.exit.thread

bb.dx:                                            ; preds = %_ZNK6vectorI16inf_eps_rationalI12inf_rationalELb1EjE4sizeEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #21
  %i.ru = load i8, ptr %i.qn, align 4
  %i.rv = and i8 %i.ru, -4
  store ptr null, ptr %i.qo, align 8, !tbaa !149
  store i32 1, ptr %i.qp, align 8, !tbaa !15
  %i.rw = load i8, ptr %i.qq, align 4
  %i.rx = and i8 %i.rw, -4
  store i8 %i.rx, ptr %i.qq, align 4
  store ptr null, ptr %i.qr, align 8, !tbaa !149
  %i.ry = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !13
  store i32 -1, ptr %20, align 8, !tbaa !15
  store i8 %i.rv, ptr %i.qn, align 4
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.ry, ptr noundef nonnull align 8 dereferenceable(16) %i.qp)
          to label %bb.dy unwind label %bb.ee

bb.dy:                                            ; preds = %bb.dx
  store i32 1, ptr %i.qp, align 8, !tbaa !15
  %i.rz = load i8, ptr %i.qq, align 4
  %i.sa = and i8 %i.rz, -2
  store i8 %i.sa, ptr %i.qq, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #21
  %i.sb = load i8, ptr %i.qs, align 4
  %i.sc = and i8 %i.sb, -4
  store ptr null, ptr %i.qt, align 8, !tbaa !149
  store i32 1, ptr %i.qu, align 8, !tbaa !15
  %i.sd = load i8, ptr %i.qv, align 4
  %i.se = and i8 %i.sd, -4
  store i8 %i.se, ptr %i.qv, align 4
  store ptr null, ptr %i.qw, align 8, !tbaa !149
  %i.sf = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !13
  store i32 0, ptr %21, align 8, !tbaa !15
  store i8 %i.sc, ptr %i.qs, align 4
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.sf, ptr noundef nonnull align 8 dereferenceable(16) %i.qu)
          to label %bb.dz unwind label %bb.ef

bb.dz:                                            ; preds = %bb.dy
  store i32 1, ptr %i.qu, align 8, !tbaa !15
  %i.sg = load i8, ptr %i.qv, align 4
  %i.sh = and i8 %i.sg, -2
  store i8 %i.sh, ptr %i.qv, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.qx, i8 0, i64 24, i1 false)
  store i32 1, ptr %i.qy, align 8, !tbaa !15
  store ptr null, ptr %i.qz, align 8, !tbaa !149
  invoke void @_ZN16inf_eps_rationalI12inf_rationalEC2ERK8rationalRKS0_(ptr noundef nonnull align 8 dereferenceable(96) %19, ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(64) %21)
          to label %bb.ea unwind label %bb.eg

bb.ea:                                            ; preds = %bb.dz
  %i.si = load ptr, ptr %i.ca, align 8, !tbaa !8
  %23 = zext i32 %.0201 to i64
  %i.sj = getelementptr inbounds nuw [96 x i8], ptr %i.si, i64 %23 ; 19 uses
  %i.sk = load i32, ptr %i.sj, align 4, !tbaa !12
  %i.sl = load i32, ptr %19, align 8, !tbaa !12
  store i32 %i.sl, ptr %i.sj, align 4, !tbaa !12
  store i32 %i.sk, ptr %19, align 8, !tbaa !12
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sj, i64 8 ; 2 uses
  %i.sn = load ptr, ptr %i.sm, align 8, !tbaa !164
  %i.so = load ptr, ptr %i.ra, align 8, !tbaa !164
  store ptr %i.so, ptr %i.sm, align 8, !tbaa !164
  store ptr %i.sn, ptr %i.ra, align 8, !tbaa !164
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sj, i64 4 ; 4 uses
  %i.sq = load i8, ptr %i.sp, align 4             ; 2 uses
  %i.sr = and i8 %i.sq, 2
  %i.ss = load i8, ptr %i.rb, align 4
  %i.st = and i8 %i.ss, 2
  %i.su = and i8 %i.sq, -3
  %i.sv = or disjoint i8 %i.st, %i.su
  store i8 %i.sv, ptr %i.sp, align 4
  %i.sw = load i8, ptr %i.rb, align 4             ; 2 uses
  %i.sx = and i8 %i.sw, -3
  %i.sy = or disjoint i8 %i.sx, %i.sr
  store i8 %i.sy, ptr %i.rb, align 4
  %i.sz = load i8, ptr %i.sp, align 4             ; 2 uses
  %i.ta = and i8 %i.sz, 1
  %i.tb = and i8 %i.sw, 1
  %i.tc = and i8 %i.sz, -2
  %i.td = or disjoint i8 %i.tc, %i.tb
  store i8 %i.td, ptr %i.sp, align 4
  %i.te = load i8, ptr %i.rb, align 4
  %i.tf = and i8 %i.te, -2
  %i.tg = or disjoint i8 %i.tf, %i.ta
  store i8 %i.tg, ptr %i.rb, align 4
  %i.th = getelementptr inbounds nuw i8, ptr %i.sj, i64 16 ; 2 uses
  %i.ti = load i32, ptr %i.th, align 8, !tbaa !12
  %i.tj = load i32, ptr %i.rc, align 8, !tbaa !12
  store i32 %i.tj, ptr %i.th, align 8, !tbaa !12
  store i32 %i.ti, ptr %i.rc, align 8, !tbaa !12
  %i.tk = getelementptr inbounds nuw i8, ptr %i.sj, i64 24 ; 2 uses
  %i.tl = load ptr, ptr %i.tk, align 8, !tbaa !164
  %i.tm = load ptr, ptr %i.rd, align 8, !tbaa !164
  store ptr %i.tm, ptr %i.tk, align 8, !tbaa !164
  store ptr %i.tl, ptr %i.rd, align 8, !tbaa !164
  %i.tn = getelementptr inbounds nuw i8, ptr %i.sj, i64 20 ; 4 uses
  %i.to = load i8, ptr %i.tn, align 4             ; 2 uses
  %i.tp = and i8 %i.to, 2
  %i.tq = load i8, ptr %i.re, align 4
  %i.tr = and i8 %i.tq, 2
  %i.ts = and i8 %i.to, -3
  %i.tt = or disjoint i8 %i.tr, %i.ts
  store i8 %i.tt, ptr %i.tn, align 4
  %i.tu = load i8, ptr %i.re, align 4             ; 2 uses
  %i.tv = and i8 %i.tu, -3
  %i.tw = or disjoint i8 %i.tv, %i.tp
  store i8 %i.tw, ptr %i.re, align 4
  %i.tx = load i8, ptr %i.tn, align 4             ; 2 uses
  %i.ty = and i8 %i.tx, 1
  %i.tz = and i8 %i.tu, 1
  %i.ua = and i8 %i.tx, -2
  %i.ub = or disjoint i8 %i.ua, %i.tz
  store i8 %i.ub, ptr %i.tn, align 4
  %i.uc = load i8, ptr %i.re, align 4
  %i.ud = and i8 %i.uc, -2
  %i.ue = or disjoint i8 %i.ud, %i.ty
  store i8 %i.ue, ptr %i.re, align 4
  %i.uf = getelementptr inbounds nuw i8, ptr %i.sj, i64 32 ; 2 uses
  %i.ug = load i32, ptr %i.uf, align 8, !tbaa !12
  %i.uh = load i32, ptr %i.rf, align 8, !tbaa !12
  store i32 %i.uh, ptr %i.uf, align 8, !tbaa !12
  store i32 %i.ug, ptr %i.rf, align 8, !tbaa !12
  %i.ui = getelementptr inbounds nuw i8, ptr %i.sj, i64 40 ; 2 uses
  %i.uj = load ptr, ptr %i.ui, align 8, !tbaa !164
  %i.uk = load ptr, ptr %i.rg, align 8, !tbaa !164
  store ptr %i.uk, ptr %i.ui, align 8, !tbaa !164
  store ptr %i.uj, ptr %i.rg, align 8, !tbaa !164
  %i.ul = getelementptr inbounds nuw i8, ptr %i.sj, i64 36 ; 4 uses
  %i.um = load i8, ptr %i.ul, align 4             ; 2 uses
  %i.un = and i8 %i.um, 2
  %i.uo = load i8, ptr %i.rh, align 4
  %i.up = and i8 %i.uo, 2
  %i.uq = and i8 %i.um, -3
  %i.ur = or disjoint i8 %i.up, %i.uq
  store i8 %i.ur, ptr %i.ul, align 4
  %i.us = load i8, ptr %i.rh, align 4             ; 2 uses
  %i.ut = and i8 %i.us, -3
  %i.uu = or disjoint i8 %i.ut, %i.un
  store i8 %i.uu, ptr %i.rh, align 4
  %i.uv = load i8, ptr %i.ul, align 4             ; 2 uses
  %i.uw = and i8 %i.uv, 1
  %i.ux = and i8 %i.us, 1
  %i.uy = and i8 %i.uv, -2
  %i.uz = or disjoint i8 %i.uy, %i.ux
  store i8 %i.uz, ptr %i.ul, align 4
  %i.va = load i8, ptr %i.rh, align 4
  %i.vb = and i8 %i.va, -2
  %i.vc = or disjoint i8 %i.vb, %i.uw
  store i8 %i.vc, ptr %i.rh, align 4
  %i.vd = getelementptr inbounds nuw i8, ptr %i.sj, i64 48 ; 2 uses
  %i.ve = load i32, ptr %i.vd, align 8, !tbaa !12
  %i.vf = load i32, ptr %i.ri, align 8, !tbaa !12
  store i32 %i.vf, ptr %i.vd, align 8, !tbaa !12
  store i32 %i.ve, ptr %i.ri, align 8, !tbaa !12
  %i.vg = getelementptr inbounds nuw i8, ptr %i.sj, i64 56 ; 2 uses
  %i.vh = load ptr, ptr %i.vg, align 8, !tbaa !164
  %i.vi = load ptr, ptr %i.rj, align 8, !tbaa !164
  store ptr %i.vi, ptr %i.vg, align 8, !tbaa !164
  store ptr %i.vh, ptr %i.rj, align 8, !tbaa !164
  %i.vj = getelementptr inbounds nuw i8, ptr %i.sj, i64 52 ; 4 uses
  %i.vk = load i8, ptr %i.vj, align 4             ; 2 uses
  %i.vl = and i8 %i.vk, 2
  %i.vm = load i8, ptr %i.rk, align 4
  %i.vn = and i8 %i.vm, 2
  %i.vo = and i8 %i.vk, -3
  %i.vp = or disjoint i8 %i.vn, %i.vo
  store i8 %i.vp, ptr %i.vj, align 4
  %i.vq = load i8, ptr %i.rk, align 4             ; 2 uses
  %i.vr = and i8 %i.vq, -3
  %i.vs = or disjoint i8 %i.vr, %i.vl
  store i8 %i.vs, ptr %i.rk, align 4
  %i.vt = load i8, ptr %i.vj, align 4             ; 2 uses
  %i.vu = and i8 %i.vt, 1
  %i.vv = and i8 %i.vq, 1
  %i.vw = and i8 %i.vt, -2
  %i.vx = or disjoint i8 %i.vw, %i.vv
  store i8 %i.vx, ptr %i.vj, align 4
  %i.vy = load i8, ptr %i.rk, align 4
  %i.vz = and i8 %i.vy, -2
  %i.wa = or disjoint i8 %i.vz, %i.vu
  store i8 %i.wa, ptr %i.rk, align 4
  %i.wb = getelementptr inbounds nuw i8, ptr %i.sj, i64 64 ; 2 uses
  %i.wc = load i32, ptr %i.wb, align 8, !tbaa !12
  %i.wd = load i32, ptr %i.rl, align 8, !tbaa !12
  store i32 %i.wd, ptr %i.wb, align 8, !tbaa !12
  store i32 %i.wc, ptr %i.rl, align 8, !tbaa !12
  %i.we = getelementptr inbounds nuw i8, ptr %i.sj, i64 72 ; 2 uses
  %i.wf = load ptr, ptr %i.we, align 8, !tbaa !164
  %i.wg = load ptr, ptr %i.rm, align 8, !tbaa !164
  store ptr %i.wg, ptr %i.we, align 8, !tbaa !164
  store ptr %i.wf, ptr %i.rm, align 8, !tbaa !164
  %i.wh = getelementptr inbounds nuw i8, ptr %i.sj, i64 68 ; 4 uses
  %i.wi = load i8, ptr %i.wh, align 4             ; 2 uses
  %i.wj = and i8 %i.wi, 2
  %i.wk = load i8, ptr %i.rn, align 4
  %i.wl = and i8 %i.wk, 2
  %i.wm = and i8 %i.wi, -3
  %i.wn = or disjoint i8 %i.wl, %i.wm
  store i8 %i.wn, ptr %i.wh, align 4
  %i.wo = load i8, ptr %i.rn, align 4             ; 2 uses
  %i.wp = and i8 %i.wo, -3
  %i.wq = or disjoint i8 %i.wp, %i.wj
  store i8 %i.wq, ptr %i.rn, align 4
  %i.wr = load i8, ptr %i.wh, align 4             ; 2 uses
  %i.ws = and i8 %i.wr, 1
  %i.wt = and i8 %i.wo, 1
  %i.wu = and i8 %i.wr, -2
  %i.wv = or disjoint i8 %i.wu, %i.wt
  store i8 %i.wv, ptr %i.wh, align 4
  %i.ww = load i8, ptr %i.rn, align 4
  %i.wx = and i8 %i.ww, -2
  %i.wy = or disjoint i8 %i.wx, %i.ws
  store i8 %i.wy, ptr %i.rn, align 4
  %i.wz = getelementptr inbounds nuw i8, ptr %i.sj, i64 80 ; 2 uses
  %i.xa = load i32, ptr %i.wz, align 8, !tbaa !12
  %i.xb = load i32, ptr %i.ro, align 8, !tbaa !12
  store i32 %i.xb, ptr %i.wz, align 8, !tbaa !12
  store i32 %i.xa, ptr %i.ro, align 8, !tbaa !12
  %i.xc = getelementptr inbounds nuw i8, ptr %i.sj, i64 88 ; 2 uses
  %i.xd = load ptr, ptr %i.xc, align 8, !tbaa !164
  %i.xe = load ptr, ptr %i.rp, align 8, !tbaa !164
  store ptr %i.xe, ptr %i.xc, align 8, !tbaa !164
  store ptr %i.xd, ptr %i.rp, align 8, !tbaa !164
  %i.xf = getelementptr inbounds nuw i8, ptr %i.sj, i64 84 ; 4 uses
  %i.xg = load i8, ptr %i.xf, align 4             ; 2 uses
  %i.xh = and i8 %i.xg, 2
  %i.xi = load i8, ptr %i.rq, align 4
  %i.xj = and i8 %i.xi, 2
  %i.xk = and i8 %i.xg, -3
  %i.xl = or disjoint i8 %i.xj, %i.xk
  store i8 %i.xl, ptr %i.xf, align 4
  %i.xm = load i8, ptr %i.rq, align 4             ; 2 uses
  %i.xn = and i8 %i.xm, -3
  %i.xo = or disjoint i8 %i.xn, %i.xh
  store i8 %i.xo, ptr %i.rq, align 4
  %i.xp = load i8, ptr %i.xf, align 4             ; 2 uses
  %i.xq = and i8 %i.xp, 1
  %i.xr = and i8 %i.xm, 1
  %i.xs = and i8 %i.xp, -2
  %i.xt = or disjoint i8 %i.xs, %i.xr
  store i8 %i.xt, ptr %i.xf, align 4
  %i.xu = load i8, ptr %i.rq, align 4
  %i.xv = and i8 %i.xu, -2
  %i.xw = or disjoint i8 %i.xv, %i.xq
  store i8 %i.xw, ptr %i.rq, align 4
  call void @_ZN16inf_eps_rationalI12inf_rationalED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %19) #21
  %i.xx = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !13 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.xx, ptr noundef nonnull align 8 dereferenceable(32) %i.qx)
          to label %.noexc.i.i156 unwind label %bb.eb

.noexc.i.i156:                                    ; preds = %bb.ea
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.xx, ptr noundef nonnull align 8 dereferenceable(16) %i.qy)
          to label %_ZN8rationalD2Ev.exit.i157 unwind label %bb.eb
end_hunk_1
begin_hunk_2_@_ZN3opt6optsmt17commit_assignmentEj:bb.a
  store i32 %i.s, ptr %2, align 8, !tbaa !15
  store i8 %i.g, ptr %i.e, align 4
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i

bb.c:                                             ; preds = %bb.a
  call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.n, ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull align 8 dereferenceable(96) %i.d)
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i: ; preds = %bb.c, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.v = load i8, ptr %i.u, align 4
  %i.w = and i8 %i.v, 1
  %i.x = icmp eq i8 %i.w, 0
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i
  %i.y = load i32, ptr %i.t, align 8, !tbaa !15
  store i32 %i.y, ptr %i.i, align 8, !tbaa !15
  %i.z = load i8, ptr %i.j, align 4
  %i.aa = and i8 %i.z, -2
  store i8 %i.aa, ptr %i.j, align 4
  br label %_ZN8rationalC2ERKS_.exit.i

bb.e:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i
  call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.t)
  br label %_ZN8rationalC2ERKS_.exit.i

_ZN8rationalC2ERKS_.exit.i:                       ; preds = %bb.e, %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  invoke void @_ZN12inf_rationalC2ERKS_(ptr noundef nonnull align 8 dereferenceable(64) %i.ab, ptr noundef nonnull align 8 dereferenceable(64) %i.ac)
          to label %bb.g unwind label %bb.f

common.resume:                                    ; preds = %bb.p, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.ad, %bb.f ], [ %.pn, %bb.p ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %_ZN8rationalC2ERKS_.exit.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(96) %2) #21
  br label %common.resume

bb.g:                                             ; preds = %_ZN8rationalC2ERKS_.exit.i
  %i.ae = load i32, ptr %2, align 8, !tbaa !15
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.h, label %bb.q

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !18 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  invoke void @_ZN3opt10opt_solver5mk_geEjRK16inf_eps_rationalI12inf_rationalE(ptr dead_on_unwind nonnull writable sret(%class.obj_ref.37) align 8 %3, ptr noundef nonnull align 8 dereferenceable(1066) %i.ah, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(96) %2)
          to label %bb.i unwind label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.ai = load ptr, ptr %3, align 8, !tbaa !133
  invoke void @_ZN6solver11assert_exprEP4expr(ptr noundef nonnull align 8 dereferenceable(112) %i.ah, ptr noundef %i.ai)
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.aj = load ptr, ptr %3, align 8, !tbaa !133   ; 3 uses
  %.not.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !139, !nonnull !70, !align !71
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !72
  %i.ao = add i32 %i.an, -1                       ; 2 uses
  store i32 %i.ao, ptr %i.am, align 4, !tbaa !72
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.l, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.al, ptr noundef nonnull %i.aj)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  call void @__clang_call_terminate(ptr %i.ar) #22
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit:         ; preds = %bb.j, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.q

bb.n:                                             ; preds = %bb.h
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %bb.i
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #21
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.at, %bb.o ], [ %i.as, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @_ZN16inf_eps_rationalI12inf_rationalED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %common.resume

bb.q:                                             ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit, %bb.g
  call void @_ZN16inf_eps_rationalI12inf_rationalED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN16inf_eps_rationalI12inf_rationalEC2ERK8rationalRKS0_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(64) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i32 0, ptr %0, align 8, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.b = load i8, ptr %i.a, align 4
  %i.c = and i8 %i.b, -4                          ; 2 uses
  store i8 %i.c, ptr %i.a, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.d, align 8, !tbaa !149
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store i32 1, ptr %i.e, align 8, !tbaa !15
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.g = load i8, ptr %i.f, align 4
  %i.h = and i8 %i.g, -4
  store i8 %i.h, ptr %i.f, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.i, align 8, !tbaa !149
  %i.j = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !13 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load i8, ptr %i.k, align 4
  %i.m = and i8 %i.l, 1
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = load i32, ptr %1, align 8, !tbaa !15
  store i32 %i.o, ptr %0, align 8, !tbaa !15
  store i8 %i.c, ptr %i.a, align 4
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i:   ; preds = %bb.c, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.r = load i8, ptr %i.q, align 4
  %i.s = and i8 %i.r, 1
  %i.t = icmp eq i8 %i.s, 0
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i
  %i.u = load i32, ptr %i.p, align 8, !tbaa !15
  store i32 %i.u, ptr %i.e, align 8, !tbaa !15
  %i.v = load i8, ptr %i.f, align 4
  %i.w = and i8 %i.v, -2
  store i8 %i.w, ptr %i.f, align 4
  br label %_ZN8rationalC2ERKS_.exit

bb.e:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i
  tail call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.p)
  br label %_ZN8rationalC2ERKS_.exit

_ZN8rationalC2ERKS_.exit:                         ; preds = %bb.d, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_ZN12inf_rationalC2ERKS_(ptr noundef nonnull align 8 dereferenceable(64) %i.x, ptr noundef nonnull align 8 dereferenceable(64) %2)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %_ZN8rationalC2ERKS_.exit
  ret void

bb.g:                                             ; preds = %_ZN8rationalC2ERKS_.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #21
  resume { ptr, i32 } %i.y
}

declare noundef zeroext i1 @_ZN3opt10opt_solver18maximize_objectiveEjR7obj_refI4expr11ast_managerE(ptr noundef nonnull align 8 dereferenceable(1066), i32 noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(96) ptr @_ZN3opt10opt_solver21saved_objective_valueEj(ptr noundef nonnull align 8 dereferenceable(1066), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3opt6optsmt16update_lower_lexEjRK16inf_eps_rationalI12inf_rationalEb(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(96) %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %class.inf_eps_rational, align 8    ; 7 uses
  %9 = alloca %class.inf_eps_rational, align 8    ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.c = zext i32 %1 to i64                       ; 2 uses
  %i.d = getelementptr inbounds nuw [96 x i8], ptr %i.b, i64 %i.c
  %i.e = tail call noundef zeroext i1 @_ZltRK16inf_eps_rationalI12inf_rationalES3_(ptr noundef nonnull align 8 dereferenceable(96) %i.d, ptr noundef nonnull align 8 dereferenceable(96) %2)
  br i1 %i.e, label %bb.b, label %bb.ad

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.g = getelementptr inbounds nuw [96 x i8], ptr %i.f, i64 %i.c ; 6 uses
  %i.h = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !13 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.j = load i8, ptr %i.i, align 4
  %i.k = and i8 %i.j, 1
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = load i32, ptr %2, align 8, !tbaa !15
  store i32 %i.m, ptr %i.g, align 8, !tbaa !15
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 2 uses
  %i.o = load i8, ptr %i.n, align 4
  %i.p = and i8 %i.o, -2
  store i8 %i.p, ptr %i.n, align 4
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.h, ptr noundef nonnull align 8 dereferenceable(96) %i.g, ptr noundef nonnull align 8 dereferenceable(96) %2)
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i: ; preds = %bb.d, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.t = load i8, ptr %i.s, align 4
  %i.u = and i8 %i.t, 1
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i
  %i.w = load i32, ptr %i.r, align 8, !tbaa !15
  store i32 %i.w, ptr %i.q, align 8, !tbaa !15
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 20 ; 2 uses
  %i.y = load i8, ptr %i.x, align 4
  %i.z = and i8 %i.y, -2
  store i8 %i.z, ptr %i.x, align 4
  br label %_ZN16inf_eps_rationalI12inf_rationalEaSERKS1_.exit

bb.f:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i
  tail call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %i.r)
  br label %_ZN16inf_eps_rationalI12inf_rationalEaSERKS1_.exit

_ZN16inf_eps_rationalI12inf_rationalEaSERKS1_.exit: ; preds = %bb.e, %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ac = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN12inf_rationalaSERKS_(ptr noundef nonnull align 8 dereferenceable(64) %i.aa, ptr noundef nonnull align 8 dereferenceable(64) %i.ab) ; 0 uses
  %i.ad = tail call noundef i32 @_Z19get_verbosity_levelv()
  %.not = icmp eq i32 %i.ad, 0
  br i1 %.not, label %bb.u, label %bb.g

bb.g:                                             ; preds = %_ZN16inf_eps_rationalI12inf_rationalEaSERKS1_.exit
  %i.ae = tail call noundef zeroext i1 @_Z11is_threadedv()
  br i1 %i.ae, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  tail call void @_Z12verbose_lockv()
  %i.af = tail call noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv() ; 6 uses
  br i1 %3, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ag = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull @.str.5, i64 noundef 21) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @_ZNK16inf_eps_rationalI12inf_rationalE9to_stringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(96) %2)
  %i.ah = load ptr, ptr %7, align 8, !tbaa !169
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !172
  %i.ak = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef %i.ah, i64 noundef %i.aj)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i unwind label %bb.j ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i: ; preds = %bb.i
  %i.al = load ptr, ptr %7, align 8, !tbaa !169   ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZlsI12inf_rationalERSoS1_RK16inf_eps_rationalIT_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !173
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #23
  br label %_ZlsI12inf_rationalERSoS1_RK16inf_eps_rationalIT_E.exit

bb.j:                                             ; preds = %bb.i
  %i.aq = landingpad { ptr, i32 }
          cleanup
  %i.ar = load ptr, ptr %7, align 8, !tbaa !169   ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %bb.j
  %i.au = load i64, ptr %i.as, align 8, !tbaa !173
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i

common.resume:                                    ; preds = %.body, %.body42, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i29, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i
  %common.resume.op = phi { ptr, i32 } [ %i.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i ], [ %i.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i29 ], [ %eh.lpad-body, %.body ], [ %eh.lpad-body43, %.body42 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %common.resume

_ZlsI12inf_rationalERSoS1_RK16inf_eps_rationalIT_E.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %i.aw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull @.str.6, i64 noundef 2) ; 0 uses
  br label %bb.n

bb.k:                                             ; preds = %bb.h
  %i.ax = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull @.str.7, i64 noundef 21) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  call void @_ZngI12inf_rationalE16inf_eps_rationalIT_ERKS3_(ptr dead_on_unwind nonnull writable sret(%class.inf_eps_rational) align 8 %8, ptr noundef nonnull align 8 dereferenceable(96) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  invoke void @_ZNK16inf_eps_rationalI12inf_rationalE9to_stringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(96) %8)
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.k
  %i.ay = load ptr, ptr %6, align 8, !tbaa !169
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !172
  %i.bb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef %i.ay, i64 noundef %i.ba)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i23 unwind label %bb.l ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i23: ; preds = %.noexc
  %i.bc = load ptr, ptr %6, align 8, !tbaa !169   ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i24: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i23
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !173
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bg) #23
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i25

bb.l:                                             ; preds = %.noexc
  %i.bh = landingpad { ptr, i32 }
          cleanup
  %i.bi = load ptr, ptr %6, align 8, !tbaa !169   ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i20: ; preds = %bb.l
  %i.bl = load i64, ptr %i.bj, align 8, !tbaa !173
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bm) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i21: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i25: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i23, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.bn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull @.str.6, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i25
  call void @_ZN16inf_eps_rationalI12inf_rationalED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %bb.n

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i25, %bb.k
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i21, %bb.m
  %eh.lpad-body = phi { ptr, i32 } [ %i.bo, %bb.m ], [ %i.bh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i21 ]
  call void @_ZN16inf_eps_rationalI12inf_rationalED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %common.resume

bb.n:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZlsI12inf_rationalERSoS1_RK16inf_eps_rationalIT_E.exit
  call void @_Z14verbose_unlockv()
  br label %bb.u

bb.o:                                             ; preds = %bb.g
  %i.bp = tail call noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv() ; 6 uses
  br i1 %3, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.bq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bp, ptr noundef nonnull @.str.5, i64 noundef 21) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @_ZNK16inf_eps_rationalI12inf_rationalE9to_stringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(96) %2)
  %i.br = load ptr, ptr %5, align 8, !tbaa !169
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !172
  %i.bu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bp, ptr noundef %i.br, i64 noundef %i.bt)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i31 unwind label %bb.q ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i31: ; preds = %bb.p
  %i.bv = load ptr, ptr %5, align 8, !tbaa !169   ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %_ZlsI12inf_rationalERSoS1_RK16inf_eps_rationalIT_E.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i32: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i31
  %i.by = load i64, ptr %i.bw, align 8, !tbaa !173
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.bz) #23
  br label %_ZlsI12inf_rationalERSoS1_RK16inf_eps_rationalIT_E.exit34

bb.q:                                             ; preds = %bb.p
  %i.ca = landingpad { ptr, i32 }
          cleanup
  %i.cb = load ptr, ptr %5, align 8, !tbaa !169   ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.cd = icmp eq ptr %i.cb, %i.cc
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i28: ; preds = %bb.q
  %i.ce = load i64, ptr %i.cc, align 8, !tbaa !173
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.cf) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i29: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %common.resume

_ZlsI12inf_rationalERSoS1_RK16inf_eps_rationalIT_E.exit34: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i31, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.cg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bp, ptr noundef nonnull @.str.6, i64 noundef 2) ; 0 uses
  br label %bb.u

bb.r:                                             ; preds = %bb.o
  %i.ch = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bp, ptr noundef nonnull @.str.7, i64 noundef 21) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  call void @_ZngI12inf_rationalE16inf_eps_rationalIT_ERKS3_(ptr dead_on_unwind nonnull writable sret(%class.inf_eps_rational) align 8 %9, ptr noundef nonnull align 8 dereferenceable(96) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  invoke void @_ZNK16inf_eps_rationalI12inf_rationalE9to_stringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(96) %9)
          to label %.noexc41 unwind label %bb.t

.noexc41:                                         ; preds = %bb.r
  %i.ci = load ptr, ptr %4, align 8, !tbaa !169
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !172
  %i.cl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bp, ptr noundef %i.ci, i64 noundef %i.ck)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i38 unwind label %bb.s ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i38: ; preds = %.noexc41
  %i.cm = load ptr, ptr %4, align 8, !tbaa !169   ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.co = icmp eq ptr %i.cm, %i.cn
  br i1 %i.co, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i39: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i38
  %i.cp = load i64, ptr %i.cn, align 8, !tbaa !173
  %i.cq = add i64 %i.cp, 1
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.cq) #23
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i40

bb.s:                                             ; preds = %.noexc41
  %i.cr = landingpad { ptr, i32 }
          cleanup
  %i.cs = load ptr, ptr %4, align 8, !tbaa !169   ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.cu = icmp eq ptr %i.cs, %i.ct
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i35: ; preds = %bb.s
  %i.cv = load i64, ptr %i.ct, align 8, !tbaa !173
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cw) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i36: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i35
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %.body42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i40: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i38, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.cx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bp, ptr noundef nonnull @.str.6, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit46 unwind label %bb.t ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit46: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i40
  call void @_ZN16inf_eps_rationalI12inf_rationalED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %bb.u

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i40, %bb.r
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %.body42

.body42:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i36, %bb.t
  %eh.lpad-body43 = phi { ptr, i32 } [ %i.cy, %bb.t ], [ %i.cr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i36 ]
  call void @_ZN16inf_eps_rationalI12inf_rationalED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %common.resume

bb.u:                                             ; preds = %bb.n, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit46, %_ZlsI12inf_rationalERSoS1_RK16inf_eps_rationalIT_E.exit34, %_ZN16inf_eps_rationalI12inf_rationalEaSERKS1_.exit
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !174 ; 2 uses
  %i.db = icmp eq ptr %i.da, null
  br i1 %i.db, label %_ZNK6vectorIiLb0EjE4sizeEv.exit.thread, label %_ZNK6vectorIiLb0EjE4sizeEv.exit.lr.ph

_ZNK6vectorIiLb0EjE4sizeEv.exit.lr.ph:            ; preds = %bb.u
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_ZNK6vectorIiLb0EjE4sizeEv.exit

_ZNK6vectorIiLb0EjE4sizeEv.exit:                  ; preds = %_ZNK6vectorIiLb0EjE4sizeEv.exit.lr.ph, %_ZN16inf_eps_rationalI12inf_rationalEaSERKS1_.exit48
  %i.dd = phi ptr [ %i.da, %_ZNK6vectorIiLb0EjE4sizeEv.exit.lr.ph ], [ %i.ff, %_ZN16inf_eps_rationalI12inf_rationalEaSERKS1_.exit48 ]
  %.051.in = phi i32 [ %1, %_ZNK6vectorIiLb0EjE4sizeEv.exit.lr.ph ], [ %.051, %_ZN16inf_eps_rationalI12inf_rationalEaSERKS1_.exit48 ]
  %.051 = add i32 %.051.in, 1                     ; 4 uses
  %i.de = getelementptr inbounds i8, ptr %i.dd, i64 -4
  %i.df = load i32, ptr %i.de, align 4, !tbaa !12
  %10 = icmp ult i32 %.051, %i.df
  br i1 %10, label %bb.y, label %_ZNK6vectorIiLb0EjE4sizeEv.exit.thread

_ZNK6vectorIiLb0EjE4sizeEv.exit.thread:           ; preds = %_ZNK6vectorIiLb0EjE4sizeEv.exit, %_ZN16inf_eps_rationalI12inf_rationalEaSERKS1_.exit48, %bb.u
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.di = load ptr, ptr %i.dg, align 8, !tbaa !141 ; 4 uses
  %.not.i.i = icmp eq ptr %i.di, null
  br i1 %.not.i.i, label %_ZN3refI5modelE7inc_refEv.exit.i, label %bb.v

bb.v:                                             ; preds = %_ZNK6vectorIiLb0EjE4sizeEv.exit.thread
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16 ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !52
  %i.dl = add i32 %i.dk, 1
  store i32 %i.dl, ptr %i.dj, align 8, !tbaa !52
  br label %_ZN3refI5modelE7inc_refEv.exit.i

_ZN3refI5modelE7inc_refEv.exit.i:                 ; preds = %bb.v, %_ZNK6vectorIiLb0EjE4sizeEv.exit.thread
  %i.dm = load ptr, ptr %i.dh, align 8, !tbaa !141 ; 5 uses
  %.not.i3.i = icmp eq ptr %i.dm, null
  br i1 %.not.i3.i, label %_ZN3refI5modelEaSERS1_.exit, label %bb.w

bb.w:                                             ; preds = %_ZN3refI5modelE7inc_refEv.exit.i
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16 ; 2 uses
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !52
  %i.dp = add i32 %i.do, -1                       ; 2 uses
  store i32 %i.dp, ptr %i.dn, align 8, !tbaa !52
  %i.dq = icmp eq i32 %i.dp, 0
  br i1 %i.dq, label %bb.x, label %_ZN3refI5modelEaSERS1_.exit

bb.x:                                             ; preds = %bb.w
  %i.dr = load ptr, ptr %i.dm, align 8, !tbaa !63
  %i.ds = load ptr, ptr %i.dr, align 8
  call void %i.ds(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %i.dm) #21, !inline_history !175
  call void @_ZN6memory10deallocateEPv(ptr noundef nonnull align 8 dereferenceable(96) %i.dm)
  %.pre.i = load ptr, ptr %i.dg, align 8, !tbaa !141
  br label %_ZN3refI5modelEaSERS1_.exit

_ZN3refI5modelEaSERS1_.exit:                      ; preds = %_ZN3refI5modelE7inc_refEv.exit.i, %bb.w, %bb.x
  %i.dt = phi ptr [ %i.di, %_ZN3refI5modelE7inc_refEv.exit.i ], [ %i.di, %bb.w ], [ %.pre.i, %bb.x ]
  store ptr %i.dt, ptr %i.dh, align 8, !tbaa !141
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !18 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.dx = load ptr, ptr %i.dv, align 8, !tbaa !63
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 64
  %i.dz = load ptr, ptr %i.dy, align 8
  call void %i.dz(ptr noundef nonnull align 8 dereferenceable(1066) %i.dv, ptr noundef nonnull align 8 dereferenceable(8) %i.dw)
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !176, !nonnull !70, !align !71 ; 2 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !63
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 168
  %i.ee = load ptr, ptr %i.ed, align 8
  call void %i.ee(ptr noundef nonnull align 8 dereferenceable(840) %i.eb, ptr noundef nonnull align 8 dereferenceable(8) %i.dg)
  br label %bb.ad

bb.y:                                             ; preds = %_ZNK6vectorIiLb0EjE4sizeEv.exit
  %i.ef = load ptr, ptr %i.dc, align 8, !tbaa !18
  %i.eg = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN3opt10opt_solver21saved_objective_valueEj(ptr noundef nonnull align 8 dereferenceable(1066) %i.ef, i32 noundef %.051) ; 6 uses
  %i.eh = load ptr, ptr %i.a, align 8, !tbaa !8
  %11 = zext i32 %.051 to i64
  %i.ei = getelementptr inbounds nuw [96 x i8], ptr %i.eh, i64 %11 ; 6 uses
  %i.ej = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !13 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eg, i64 4
  %i.el = load i8, ptr %i.ek, align 4
  %i.em = and i8 %i.el, 1
  %i.en = icmp eq i8 %i.em, 0
  br i1 %i.en, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.eo = load i32, ptr %i.eg, align 8, !tbaa !15
  store i32 %i.eo, ptr %i.ei, align 8, !tbaa !15
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ei, i64 4 ; 2 uses
  %i.eq = load i8, ptr %i.ep, align 4
  %i.er = and i8 %i.eq, -2
  store i8 %i.er, ptr %i.ep, align 4
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i47

bb.aa:                                            ; preds = %bb.y
  call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.ej, ptr noundef nonnull align 8 dereferenceable(96) %i.ei, ptr noundef nonnull align 8 dereferenceable(96) %i.eg)
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i47

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i47: ; preds = %bb.aa, %bb.z
  %i.es = getelementptr inbounds nuw i8, ptr %i.ei, i64 16 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.eg, i64 16 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eg, i64 20
  %i.ev = load i8, ptr %i.eu, align 4
  %i.ew = and i8 %i.ev, 1
  %i.ex = icmp eq i8 %i.ew, 0
  br i1 %i.ex, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i47
  %i.ey = load i32, ptr %i.et, align 8, !tbaa !15
  store i32 %i.ey, ptr %i.es, align 8, !tbaa !15
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ei, i64 20 ; 2 uses
  %i.fa = load i8, ptr %i.ez, align 4
  %i.fb = and i8 %i.fa, -2
  store i8 %i.fb, ptr %i.ez, align 4
  br label %_ZN16inf_eps_rationalI12inf_rationalEaSERKS1_.exit48

bb.ac:                                            ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i47
  call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.ej, ptr noundef nonnull align 8 dereferenceable(16) %i.es, ptr noundef nonnull align 8 dereferenceable(16) %i.et)
  br label %_ZN16inf_eps_rationalI12inf_rationalEaSERKS1_.exit48

_ZN16inf_eps_rationalI12inf_rationalEaSERKS1_.exit48: ; preds = %bb.ab, %bb.ac
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ei, i64 32
  %i.fd = getelementptr inbounds nuw i8, ptr %i.eg, i64 32
  %i.fe = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN12inf_rationalaSERKS_(ptr noundef nonnull align 8 dereferenceable(64) %i.fc, ptr noundef nonnull align 8 dereferenceable(64) %i.fd) ; 0 uses
  %i.ff = load ptr, ptr %i.cz, align 8, !tbaa !174 ; 2 uses
  %i.fg = icmp eq ptr %i.ff, null
  br i1 %i.fg, label %_ZNK6vectorIiLb0EjE4sizeEv.exit.thread, label %_ZNK6vectorIiLb0EjE4sizeEv.exit, !llvm.loop !177

bb.ad:                                            ; preds = %_ZN3refI5modelEaSERS1_.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZmiI12inf_rationalE16inf_eps_rationalIT_ERKS3_S5_(ptr dead_on_unwind noalias writable sret(%class.inf_eps_rational) align 8 %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(96) %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.inf_eps_rational, align 8    ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store i32 0, ptr %3, align 8, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 4 uses
  %i.b = load i8, ptr %i.a, align 4
  %i.c = and i8 %i.b, -4                          ; 2 uses
  store i8 %i.c, ptr %i.a, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.d, align 8, !tbaa !149
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  store i32 1, ptr %i.e, align 8, !tbaa !15
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 8 uses
  %i.g = load i8, ptr %i.f, align 4
  %i.h = and i8 %i.g, -4
  store i8 %i.h, ptr %i.f, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr null, ptr %i.i, align 8, !tbaa !149
  %i.j = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !13 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load i8, ptr %i.k, align 4
  %i.m = and i8 %i.l, 1
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = load i32, ptr %1, align 8, !tbaa !15
  store i32 %i.o, ptr %3, align 8, !tbaa !15
  store i8 %i.c, ptr %i.a, align 4
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i

bb.c:                                             ; preds = %bb.a
  call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.j, ptr noundef nonnull align 8 dereferenceable(96) %3, ptr noundef nonnull align 8 dereferenceable(96) %1)
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i: ; preds = %bb.c, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.r = load i8, ptr %i.q, align 4
  %i.s = and i8 %i.r, 1
  %i.t = icmp eq i8 %i.s, 0
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i
  %i.u = load i32, ptr %i.p, align 8, !tbaa !15
  store i32 %i.u, ptr %i.e, align 8, !tbaa !15
  %i.v = load i8, ptr %i.f, align 4
  %i.w = and i8 %i.v, -2
  store i8 %i.w, ptr %i.f, align 4
  br label %_ZN8rationalC2ERKS_.exit.i

bb.e:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i
  call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.p)
  br label %_ZN8rationalC2ERKS_.exit.i

_ZN8rationalC2ERKS_.exit.i:                       ; preds = %bb.e, %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN12inf_rationalC2ERKS_(ptr noundef nonnull align 8 dereferenceable(64) %i.x, ptr noundef nonnull align 8 dereferenceable(64) %i.y)
          to label %_ZN16inf_eps_rationalI12inf_rationalEC2ERKS1_.exit unwind label %bb.f

common.resume:                                    ; preds = %.body, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.z, %bb.f ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %_ZN8rationalC2ERKS_.exit.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(96) %3) #21
  br label %common.resume

_ZN16inf_eps_rationalI12inf_rationalEC2ERKS1_.exit: ; preds = %_ZN8rationalC2ERKS_.exit.i
  %i.aa = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !13 ; 3 uses
  %i.ab = load i8, ptr %i.f, align 4
  %i.ac = and i8 %i.ab, 1
  %i.ad = icmp eq i8 %i.ac, 0
  %i.ae = load i32, ptr %i.e, align 8
  %i.af = icmp eq i32 %i.ae, 1
  %i.ag = select i1 %i.ad, i1 %i.af, i1 false
  br i1 %i.ag, label %bb.g, label %bb.i

bb.g:                                             ; preds = %_ZN16inf_eps_rationalI12inf_rationalEC2ERKS1_.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.aj = load i8, ptr %i.ai, align 4
  %i.ak = and i8 %i.aj, 1
  %i.al = icmp eq i8 %i.ak, 0
  %i.am = load i32, ptr %i.ah, align 8
  %i.an = icmp eq i32 %i.am, 1
  %i.ao = select i1 %i.al, i1 %i.an, i1 false
  br i1 %i.ao, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN11mpz_managerILb1EE3subERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.aa, ptr noundef nonnull align 8 dereferenceable(96) %3, ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull align 8 dereferenceable(96) %3)
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.h
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %.noexc3 unwind label %bb.o

.noexc3:                                          ; preds = %.noexc
  store i32 1, ptr %i.e, align 8, !tbaa !15
  %i.ap = load i8, ptr %i.f, align 4
  %i.aq = and i8 %i.ap, -2
  store i8 %i.aq, ptr %i.f, align 4
  br label %_ZN8rationalmIERKS_.exit.i

bb.i:                                             ; preds = %bb.g, %_ZN16inf_eps_rationalI12inf_rationalEC2ERKS1_.exit
  invoke void @_ZN11mpq_managerILb1EE7rat_subERK3mpqS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.aa, ptr noundef nonnull align 8 dereferenceable(96) %3, ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull align 8 dereferenceable(96) %3)
          to label %_ZN8rationalmIERKS_.exit.i unwind label %bb.o

_ZN8rationalmIERKS_.exit.i:                       ; preds = %bb.i, %.noexc3
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.as = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN12inf_rationalmIERKS_(ptr noundef nonnull align 8 dereferenceable(64) %i.x, ptr noundef nonnull align 8 dereferenceable(64) %i.ar)
          to label %_ZN16inf_eps_rationalI12inf_rationalEmIERKS1_.exit unwind label %bb.o ; 0 uses

_ZN16inf_eps_rationalI12inf_rationalEmIERKS1_.exit: ; preds = %_ZN8rationalmIERKS_.exit.i
  store i32 0, ptr %0, align 8, !tbaa !15
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.au = load i8, ptr %i.at, align 4
  %i.av = and i8 %i.au, -4                        ; 2 uses
  store i8 %i.av, ptr %i.at, align 4
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.aw, align 8, !tbaa !149
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store i32 1, ptr %i.ax, align 8, !tbaa !15
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.az = load i8, ptr %i.ay, align 4
  %i.ba = and i8 %i.az, -4
  store i8 %i.ba, ptr %i.ay, align 4
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.bb, align 8, !tbaa !149
  %i.bc = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !13 ; 2 uses
  %i.bd = load i8, ptr %i.a, align 4
  %i.be = and i8 %i.bd, 1
  %i.bf = icmp eq i8 %i.be, 0
  br i1 %i.bf, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN16inf_eps_rationalI12inf_rationalEmIERKS1_.exit
  %i.bg = load i32, ptr %3, align 8, !tbaa !15
  store i32 %i.bg, ptr %0, align 8, !tbaa !15
  store i8 %i.av, ptr %i.at, align 4
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i.i6
end_hunk_2
