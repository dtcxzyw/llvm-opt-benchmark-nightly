Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/polynomial?download=true
inline.NumInlined: 621
inline.NumDeleted: 256
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN6casadi10PolynomialdVEd:bb.a
  %.not = icmp eq ptr %i.q, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !64
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6casadi10PolynomialplERKS0_(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.casadi::Polynomial") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.casadi::Polynomial", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !12     ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.g, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i, !prof !34

.noexc.i.i.i:                                     ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #20
  unreachable

_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #17
  %.pre = load ptr, ptr %1, align 8, !tbaa !33    ; 2 uses
  %.pre10 = load ptr, ptr %i.a, align 8, !tbaa !33
  %.pre13 = ptrtoint ptr %.pre10 to i64
  %.pre14 = ptrtoint ptr %.pre to i64
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i, %bb.a
  %.pre-phi15 = phi i64 [ %.pre14, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.e, %bb.a ]
  %.pre-phi = phi i64 [ %.pre13, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.d, %bb.a ]
  %i.i = phi ptr [ %.pre, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.j = phi ptr [ %i.h, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i ], [ null, %bb.a ] ; 5 uses
  store ptr %i.j, ptr %3, align 8, !tbaa !12
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.f
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !13
  %i.n = sub i64 %.pre-phi, %.pre-phi15           ; 4 uses
  %i.o = icmp sgt i64 %i.n, 8
  br i1 %i.o, label %bb.d, label %bb.e, !prof !35

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.j, ptr align 8 %i.i, i64 %i.n, i1 false)
  br label %_ZN6casadi10PolynomialC2ERKS0_.exit

bb.e:                                             ; preds = %bb.c
  %i.p = icmp eq i64 %i.n, 8
  br i1 %i.p, label %bb.f, label %_ZN6casadi10PolynomialC2ERKS0_.exit

bb.f:                                             ; preds = %bb.e
  %i.q = load double, ptr %i.i, align 8, !tbaa !15
  store double %i.q, ptr %i.j, align 8, !tbaa !15
  br label %_ZN6casadi10PolynomialC2ERKS0_.exit

_ZN6casadi10PolynomialC2ERKS0_.exit:              ; preds = %bb.d, %bb.e, %bb.f
  %i.r = getelementptr inbounds i8, ptr %i.j, i64 %i.n
  store ptr %i.r, ptr %i.k, align 8, !tbaa !16
  %i.s = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6casadi10PolynomialpLERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.g unwind label %bb.m       ; 0 uses

bb.g:                                             ; preds = %_ZN6casadi10PolynomialC2ERKS0_.exit
  %i.t = load ptr, ptr %i.k, align 8, !tbaa !16   ; 2 uses
  %i.u = load ptr, ptr %3, align 8, !tbaa !12     ; 3 uses
  %i.v = ptrtoint ptr %i.t to i64                 ; 2 uses
  %i.w = ptrtoint ptr %i.u to i64                 ; 2 uses
  %i.x = sub i64 %i.v, %i.w                       ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i3 = icmp eq ptr %i.t, %i.u
  br i1 %.not.i.i.i.i.i3, label %.noexc6, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = icmp ugt i64 %i.x, 9223372036854775800
  br i1 %i.y, label %.noexc.i.i.i5, label %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i4, !prof !34

.noexc.i.i.i5:                                    ; preds = %bb.h
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #20
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %.noexc.i.i.i5
  unreachable

_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i4: ; preds = %bb.h
  %i.z = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #17
          to label %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i4..noexc6_crit_edge unwind label %bb.m

_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i4..noexc6_crit_edge: ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i4
  %.pre11 = load ptr, ptr %3, align 8, !tbaa !33  ; 2 uses
  %.pre12 = load ptr, ptr %i.k, align 8, !tbaa !33
  %.pre16 = ptrtoint ptr %.pre12 to i64
  %.pre18 = ptrtoint ptr %.pre11 to i64
  br label %.noexc6

.noexc6:                                          ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i4..noexc6_crit_edge, %bb.g
  %.pre-phi19 = phi i64 [ %.pre18, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i4..noexc6_crit_edge ], [ %i.w, %bb.g ] ; 2 uses
  %.pre-phi17 = phi i64 [ %.pre16, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i4..noexc6_crit_edge ], [ %i.v, %bb.g ]
  %i.aa = phi ptr [ %.pre11, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i4..noexc6_crit_edge ], [ %i.u, %bb.g ] ; 4 uses
  %i.ab = phi ptr [ %i.z, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i4..noexc6_crit_edge ], [ null, %bb.g ] ; 6 uses
  store ptr %i.ab, ptr %0, align 8, !tbaa !12
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.x
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !13
  %i.af = sub i64 %.pre-phi17, %.pre-phi19        ; 5 uses
  %i.ag = icmp sgt i64 %i.af, 8
  br i1 %i.ag, label %bb.i, label %bb.j, !prof !35

bb.i:                                             ; preds = %.noexc6
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ab, ptr align 8 %i.aa, i64 %i.af, i1 false)
  br label %bb.k

bb.j:                                             ; preds = %.noexc6
  %i.ah = icmp eq i64 %i.af, 8
  br i1 %i.ah, label %.thread, label %bb.k

.thread:                                          ; preds = %bb.j
  %i.ai = load double, ptr %i.aa, align 8, !tbaa !15
  store double %i.ai, ptr %i.ab, align 8, !tbaa !15
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.af
  store ptr %i.aj, ptr %i.ac, align 8, !tbaa !16
  br label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ak = getelementptr inbounds i8, ptr %i.ab, i64 %i.af
  store ptr %i.ak, ptr %i.ac, align 8, !tbaa !16
  %.not.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i, label %_ZN6casadi10PolynomialD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %.thread, %bb.k
  %i.al = load ptr, ptr %i.m, align 8, !tbaa !13
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = sub i64 %i.am, %.pre-phi19
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.an) #18
  br label %_ZN6casadi10PolynomialD2Ev.exit

_ZN6casadi10PolynomialD2Ev.exit:                  ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret void

bb.m:                                             ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i4, %.noexc.i.i.i5, %_ZN6casadi10PolynomialC2ERKS0_.exit
  %i.ao = landingpad { ptr, i32 }
          cleanup
  %i.ap = load ptr, ptr %3, align 8, !tbaa !12    ; 3 uses
  %.not.i.i.i.i8 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i8, label %_ZN6casadi10PolynomialD2Ev.exit9, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aq = load ptr, ptr %i.m, align 8, !tbaa !13
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.ap to i64
  %i.at = sub i64 %i.ar, %i.as
  call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.at) #18
  br label %_ZN6casadi10PolynomialD2Ev.exit9

_ZN6casadi10PolynomialD2Ev.exit9:                 ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  resume { ptr, i32 } %i.ao
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(24) ptr @_ZN6casadi10PolynomialpLERKS0_(ptr noundef nonnull returned align 8 dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !12     ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3                   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !16   ; 2 uses
  %i.k = load ptr, ptr %1, align 8, !tbaa !12     ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = ashr exact i64 %i.n, 3                   ; 2 uses
  %i.p = icmp ult i64 %i.h, %i.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !15
  br i1 %i.p, label %bb.b, label %_ZNSt6vectorIdSaIdEE6resizeEmRKd.exit

bb.b:                                             ; preds = %bb.a
  %i.q = sub nuw nsw i64 %i.o, %i.h
  call void @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.c, i64 noundef %i.q, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pre = load ptr, ptr %1, align 8, !tbaa !33
  %.pre13 = load ptr, ptr %i.i, align 8, !tbaa !33
  %.pre14 = load ptr, ptr %0, align 8, !tbaa !33
  br label %_ZNSt6vectorIdSaIdEE6resizeEmRKd.exit

_ZNSt6vectorIdSaIdEE6resizeEmRKd.exit:            ; preds = %bb.a, %bb.b
  %i.r = phi ptr [ %i.d, %bb.a ], [ %.pre14, %bb.b ] ; 10 uses
  %i.s = phi ptr [ %i.j, %bb.a ], [ %.pre13, %bb.b ] ; 3 uses
  %i.t = phi ptr [ %i.k, %bb.a ], [ %.pre, %bb.b ] ; 8 uses
  %2 = ptrtoaddr ptr %i.s to i64                  ; 2 uses
  %3 = ptrtoaddr ptr %i.t to i64                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %.not8.i = icmp eq ptr %i.t, %i.s
  br i1 %.not8.i, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EES9_St4plusIdEET1_T_SD_T0_SC_T2_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZNSt6vectorIdSaIdEE6resizeEmRKd.exit
  %i.u = add i64 %2, -8
  %i.v = sub i64 %i.u, %3                         ; 2 uses
  %i.w = lshr i64 %i.v, 3
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.v, 88
  br i1 %min.iters.check, label %.lr.ph.i.preheader29, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %4 = add i64 %2, -8
  %5 = sub i64 %4, %3
  %i.y = and i64 %5, -8
  %i.z = add i64 %i.y, 8                          ; 2 uses
  %scevgep = getelementptr i8, ptr %i.r, i64 %i.z
  %scevgep23 = getelementptr i8, ptr %i.t, i64 %i.z
  %bound0 = icmp ult ptr %i.r, %scevgep23
  %bound1 = icmp ult ptr %i.t, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader29, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.x, 4611686018427387900      ; 3 uses
  %i.aa = shl i64 %n.vec, 3                       ; 2 uses
  %i.ab = getelementptr i8, ptr %i.r, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.t, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.r, i64 %i.ad ; 3 uses
  %next.gep24 = getelementptr i8, ptr %i.t, i64 %i.ad ; 2 uses
  %i.ae = getelementptr i8, ptr %next.gep24, i64 16
  %wide.load = load <2 x double>, ptr %next.gep24, align 8, !tbaa !15, !alias.scope !70
  %wide.load25 = load <2 x double>, ptr %i.ae, align 8, !tbaa !15, !alias.scope !70
  %i.af = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load26 = load <2 x double>, ptr %next.gep, align 8, !tbaa !15, !alias.scope !71, !noalias !70
  %wide.load27 = load <2 x double>, ptr %i.af, align 8, !tbaa !15, !alias.scope !71, !noalias !70
  %i.ag = fadd <2 x double> %wide.load, %wide.load26
  %i.ah = fadd <2 x double> %wide.load25, %wide.load27
  store <2 x double> %i.ag, ptr %next.gep, align 8, !tbaa !15, !alias.scope !71, !noalias !70
  store <2 x double> %i.ah, ptr %i.af, align 8, !tbaa !15, !alias.scope !71, !noalias !70
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !68

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EES9_St4plusIdEET1_T_SD_T0_SC_T2_.exit, label %.lr.ph.i.preheader29

.lr.ph.i.preheader29:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.sroa.0.011.i.ph = phi ptr [ %i.r, %vector.memcheck ], [ %i.r, %.lr.ph.i.preheader ], [ %i.ab, %middle.block ]
  %.sroa.05.09.i.ph = phi ptr [ %i.t, %vector.memcheck ], [ %i.t, %.lr.ph.i.preheader ], [ %i.ac, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader29, %.lr.ph.i
  %.sroa.0.011.i = phi ptr [ %i.an, %.lr.ph.i ], [ %.sroa.0.011.i.ph, %.lr.ph.i.preheader29 ] ; 3 uses
  %.sroa.05.09.i = phi ptr [ %i.am, %.lr.ph.i ], [ %.sroa.05.09.i.ph, %.lr.ph.i.preheader29 ] ; 2 uses
  %i.aj = load double, ptr %.sroa.05.09.i, align 8, !tbaa !15
  %i.ak = load double, ptr %.sroa.0.011.i, align 8, !tbaa !15
  %i.al = fadd double %i.aj, %i.ak
  store double %i.al, ptr %.sroa.0.011.i, align 8, !tbaa !15
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 8 ; 2 uses
  %i.an = getelementptr i8, ptr %.sroa.0.011.i, i64 8
  %.not.i = icmp eq ptr %i.am, %i.s
  br i1 %.not.i, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EES9_St4plusIdEET1_T_SD_T0_SC_T2_.exit, label %.lr.ph.i, !llvm.loop !69

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EES9_St4plusIdEET1_T_SD_T0_SC_T2_.exit: ; preds = %.lr.ph.i, %middle.block, %_ZNSt6vectorIdSaIdEE6resizeEmRKd.exit
  %i.ao = load ptr, ptr %i.b, align 8, !tbaa !16  ; 4 uses
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.r to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = ashr exact i64 %i.ar, 3                 ; 4 uses
  %.not5.i = icmp eq ptr %i.ao, %i.r
  br i1 %.not5.i, label %_ZN6casadi10Polynomial4trimEv.exit, label %.lr.ph.i8

.lr.ph.i8:                                        ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EES9_St4plusIdEET1_T_SD_T0_SC_T2_.exit, %bb.c
  %.07.i = phi i64 [ %i.aw, %bb.c ], [ %i.as, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EES9_St4plusIdEET1_T_SD_T0_SC_T2_.exit ] ; 2 uses
  %.sroa.04.06.i = phi ptr [ %i.at, %bb.c ], [ %i.ao, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EES9_St4plusIdEET1_T_SD_T0_SC_T2_.exit ]
  %i.at = getelementptr inbounds i8, ptr %.sroa.04.06.i, i64 -8 ; 3 uses
  %i.au = load double, ptr %i.at, align 8, !tbaa !15
  %i.av = fcmp oeq double %i.au, 0.000000e+00
  br i1 %i.av, label %bb.c, label %.critedge.i

bb.c:                                             ; preds = %.lr.ph.i8
  %i.aw = add i64 %.07.i, -1                      ; 2 uses
  %.not.i9 = icmp eq ptr %i.at, %i.r
  br i1 %.not.i9, label %.critedge.i, label %.lr.ph.i8, !llvm.loop !0

.critedge.i:                                      ; preds = %bb.c, %.lr.ph.i8
  %.0.lcssa.i = phi i64 [ %i.aw, %bb.c ], [ %.07.i, %.lr.ph.i8 ] ; 4 uses
  %i.ax = icmp ugt i64 %.0.lcssa.i, %i.as
  br i1 %i.ax, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.critedge.i
  %i.ay = sub nuw i64 %.0.lcssa.i, %i.as
  call void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ay)
  br label %_ZN6casadi10Polynomial4trimEv.exit

bb.e:                                             ; preds = %.critedge.i
  %i.az = icmp ult i64 %.0.lcssa.i, %i.as
  br i1 %i.az, label %bb.f, label %_ZN6casadi10Polynomial4trimEv.exit

bb.f:                                             ; preds = %bb.e
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.0.lcssa.i ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ao, %i.ba
  br i1 %.not.i.i.i, label %_ZN6casadi10Polynomial4trimEv.exit, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %bb.f
  store ptr %i.ba, ptr %i.b, align 8, !tbaa !16
  br label %_ZN6casadi10Polynomial4trimEv.exit

_ZN6casadi10Polynomial4trimEv.exit:               ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EES9_St4plusIdEET1_T_SD_T0_SC_T2_.exit, %bb.d, %bb.e, %bb.f, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i.i
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define void @_ZN6casadi10Polynomial4trimEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !12     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %.not5 = icmp eq ptr %i.b, %i.c
  br i1 %.not5, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.07 = phi i64 [ %i.k, %bb.b ], [ %i.g, %bb.a ] ; 2 uses
  %.sroa.04.06 = phi ptr [ %i.h, %bb.b ], [ %i.b, %bb.a ]
  %i.h = getelementptr inbounds i8, ptr %.sroa.04.06, i64 -8 ; 3 uses
  %i.i = load double, ptr %i.h, align 8, !tbaa !15
  %i.j = fcmp oeq double %i.i, 0.000000e+00
  br i1 %i.j, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph
  %i.k = add i64 %.07, -1                         ; 2 uses
  %.not = icmp eq ptr %i.h, %i.c
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !0

.critedge:                                        ; preds = %.lr.ph, %bb.b
  %.0.lcssa = phi i64 [ %i.k, %bb.b ], [ %.07, %.lr.ph ] ; 4 uses
  %i.l = icmp ugt i64 %.0.lcssa, %i.g
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.critedge
  %i.m = sub nuw i64 %.0.lcssa, %i.g
  tail call void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.m)
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

bb.d:                                             ; preds = %.critedge
  %i.n = icmp ult i64 %.0.lcssa, %i.g
  br i1 %i.n, label %bb.e, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.0.lcssa ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, %i.o
  br i1 %.not.i.i, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.e
  store ptr %i.o, ptr %i.a, align 8, !tbaa !16
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

_ZNSt6vectorIdSaIdEE6resizeEm.exit:               ; preds = %bb.a, %bb.c, %bb.d, %bb.e, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6casadi10PolynomialmiERKS0_(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.casadi::Polynomial") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.casadi::Polynomial", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !12     ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.g, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i, !prof !34

.noexc.i.i.i:                                     ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #20
  unreachable

_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #17
  %.pre = load ptr, ptr %1, align 8, !tbaa !33    ; 2 uses
  %.pre10 = load ptr, ptr %i.a, align 8, !tbaa !33
  %.pre13 = ptrtoint ptr %.pre10 to i64
  %.pre14 = ptrtoint ptr %.pre to i64
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i, %bb.a
  %.pre-phi15 = phi i64 [ %.pre14, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.e, %bb.a ]
  %.pre-phi = phi i64 [ %.pre13, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.d, %bb.a ]
  %i.i = phi ptr [ %.pre, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.j = phi ptr [ %i.h, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i ], [ null, %bb.a ] ; 5 uses
  store ptr %i.j, ptr %3, align 8, !tbaa !12
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.f
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !13
  %i.n = sub i64 %.pre-phi, %.pre-phi15           ; 4 uses
  %i.o = icmp sgt i64 %i.n, 8
  br i1 %i.o, label %bb.d, label %bb.e, !prof !35

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.j, ptr align 8 %i.i, i64 %i.n, i1 false)
  br label %_ZN6casadi10PolynomialC2ERKS0_.exit

bb.e:                                             ; preds = %bb.c
  %i.p = icmp eq i64 %i.n, 8
  br i1 %i.p, label %bb.f, label %_ZN6casadi10PolynomialC2ERKS0_.exit

bb.f:                                             ; preds = %bb.e
  %i.q = load double, ptr %i.i, align 8, !tbaa !15
  store double %i.q, ptr %i.j, align 8, !tbaa !15
  br label %_ZN6casadi10PolynomialC2ERKS0_.exit

_ZN6casadi10PolynomialC2ERKS0_.exit:              ; preds = %bb.d, %bb.e, %bb.f
  %i.r = getelementptr inbounds i8, ptr %i.j, i64 %i.n
  store ptr %i.r, ptr %i.k, align 8, !tbaa !16
  %i.s = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6casadi10PolynomialmIERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.g unwind label %bb.m       ; 0 uses

bb.g:                                             ; preds = %_ZN6casadi10PolynomialC2ERKS0_.exit
  %i.t = load ptr, ptr %i.k, align 8, !tbaa !16   ; 2 uses
  %i.u = load ptr, ptr %3, align 8, !tbaa !12     ; 3 uses
  %i.v = ptrtoint ptr %i.t to i64                 ; 2 uses
  %i.w = ptrtoint ptr %i.u to i64                 ; 2 uses
  %i.x = sub i64 %i.v, %i.w                       ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i3 = icmp eq ptr %i.t, %i.u
  br i1 %.not.i.i.i.i.i3, label %.noexc6, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = icmp ugt i64 %i.x, 9223372036854775800
  br i1 %i.y, label %.noexc.i.i.i5, label %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i4, !prof !34

.noexc.i.i.i5:                                    ; preds = %bb.h
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #20
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %.noexc.i.i.i5
  unreachable

_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i4: ; preds = %bb.h
  %i.z = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #17
          to label %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i4..noexc6_crit_edge unwind label %bb.m

_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i4..noexc6_crit_edge: ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i4
  %.pre11 = load ptr, ptr %3, align 8, !tbaa !33  ; 2 uses
  %.pre12 = load ptr, ptr %i.k, align 8, !tbaa !33
  %.pre16 = ptrtoint ptr %.pre12 to i64
  %.pre18 = ptrtoint ptr %.pre11 to i64
  br label %.noexc6

.noexc6:                                          ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i4..noexc6_crit_edge, %bb.g
  %.pre-phi19 = phi i64 [ %.pre18, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i4..noexc6_crit_edge ], [ %i.w, %bb.g ] ; 2 uses
  %.pre-phi17 = phi i64 [ %.pre16, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i4..noexc6_crit_edge ], [ %i.v, %bb.g ]
  %i.aa = phi ptr [ %.pre11, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i4..noexc6_crit_edge ], [ %i.u, %bb.g ] ; 4 uses
  %i.ab = phi ptr [ %i.z, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i4..noexc6_crit_edge ], [ null, %bb.g ] ; 6 uses
  store ptr %i.ab, ptr %0, align 8, !tbaa !12
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.x
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !13
  %i.af = sub i64 %.pre-phi17, %.pre-phi19        ; 5 uses
  %i.ag = icmp sgt i64 %i.af, 8
  br i1 %i.ag, label %bb.i, label %bb.j, !prof !35

bb.i:                                             ; preds = %.noexc6
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ab, ptr align 8 %i.aa, i64 %i.af, i1 false)
  br label %bb.k

bb.j:                                             ; preds = %.noexc6
  %i.ah = icmp eq i64 %i.af, 8
  br i1 %i.ah, label %.thread, label %bb.k

.thread:                                          ; preds = %bb.j
  %i.ai = load double, ptr %i.aa, align 8, !tbaa !15
  store double %i.ai, ptr %i.ab, align 8, !tbaa !15
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.af
  store ptr %i.aj, ptr %i.ac, align 8, !tbaa !16
  br label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ak = getelementptr inbounds i8, ptr %i.ab, i64 %i.af
  store ptr %i.ak, ptr %i.ac, align 8, !tbaa !16
  %.not.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i, label %_ZN6casadi10PolynomialD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %.thread, %bb.k
  %i.al = load ptr, ptr %i.m, align 8, !tbaa !13
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = sub i64 %i.am, %.pre-phi19
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.an) #18
  br label %_ZN6casadi10PolynomialD2Ev.exit

_ZN6casadi10PolynomialD2Ev.exit:                  ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret void

bb.m:                                             ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i4, %.noexc.i.i.i5, %_ZN6casadi10PolynomialC2ERKS0_.exit
  %i.ao = landingpad { ptr, i32 }
          cleanup
  %i.ap = load ptr, ptr %3, align 8, !tbaa !12    ; 3 uses
  %.not.i.i.i.i8 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i8, label %_ZN6casadi10PolynomialD2Ev.exit9, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aq = load ptr, ptr %i.m, align 8, !tbaa !13
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.ap to i64
  %i.at = sub i64 %i.ar, %i.as
  call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.at) #18
  br label %_ZN6casadi10PolynomialD2Ev.exit9

_ZN6casadi10PolynomialD2Ev.exit9:                 ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  resume { ptr, i32 } %i.ao
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(24) ptr @_ZN6casadi10PolynomialmIERKS0_(ptr noundef nonnull returned align 8 dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !12     ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3                   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !16   ; 2 uses
  %i.k = load ptr, ptr %1, align 8, !tbaa !12     ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m                       ; 2 uses
  %i.o = ashr exact i64 %i.n, 3                   ; 2 uses
  %i.p = icmp ult i64 %i.h, %i.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !15
  br i1 %i.p, label %bb.b, label %_ZNSt6vectorIdSaIdEE6resizeEmRKd.exit

bb.b:                                             ; preds = %bb.a
  %i.q = sub nuw nsw i64 %i.o, %i.h
  call void @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.c, i64 noundef %i.q, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pre = load ptr, ptr %0, align 8, !tbaa !33
  %.pre13 = load ptr, ptr %i.i, align 8, !tbaa !16 ; 2 uses
  %.pre14 = load ptr, ptr %1, align 8, !tbaa !12  ; 2 uses
  %.pre15 = ptrtoint ptr %.pre13 to i64
  %.pre16 = ptrtoint ptr %.pre14 to i64
  %.pre18 = sub i64 %.pre15, %.pre16
  br label %_ZNSt6vectorIdSaIdEE6resizeEmRKd.exit

_ZNSt6vectorIdSaIdEE6resizeEmRKd.exit:            ; preds = %bb.a, %bb.b
  %.pre-phi19 = phi i64 [ %i.n, %bb.a ], [ %.pre18, %bb.b ] ; 3 uses
  %i.r = phi ptr [ %i.k, %bb.a ], [ %.pre14, %bb.b ] ; 7 uses
  %i.s = phi ptr [ %i.j, %bb.a ], [ %.pre13, %bb.b ]
  %i.t = phi ptr [ %i.d, %bb.a ], [ %.pre, %bb.b ] ; 11 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 %.pre-phi19
  %.not8.i = icmp eq ptr %i.s, %i.r
  br i1 %.not8.i, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS1_IPKdS5_EES6_St5minusIdEET1_T_SD_T0_SC_T2_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZNSt6vectorIdSaIdEE6resizeEmRKd.exit
  %i.v = add i64 %.pre-phi19, -8                  ; 2 uses
  %i.w = lshr i64 %i.v, 3
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.v, 72
  br i1 %min.iters.check, label %.lr.ph.i.preheader33, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.y = and i64 %.pre-phi19, -8                  ; 2 uses
  %scevgep = getelementptr i8, ptr %i.t, i64 %i.y
  %scevgep27 = getelementptr i8, ptr %i.r, i64 %i.y
  %bound0 = icmp ult ptr %i.t, %scevgep27
  %bound1 = icmp ult ptr %i.r, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader33, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.x, 4611686018427387900      ; 3 uses
  %i.z = shl i64 %n.vec, 3                        ; 2 uses
  %i.aa = getelementptr i8, ptr %i.t, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.r, i64 %i.z
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ac = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.t, i64 %i.ac ; 3 uses
  %next.gep28 = getelementptr i8, ptr %i.r, i64 %i.ac ; 2 uses
  %i.ad = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %next.gep, align 8, !tbaa !15, !alias.scope !77, !noalias !78
  %wide.load29 = load <2 x double>, ptr %i.ad, align 8, !tbaa !15, !alias.scope !77, !noalias !78
  %i.ae = getelementptr i8, ptr %next.gep28, i64 16
  %wide.load30 = load <2 x double>, ptr %next.gep28, align 8, !tbaa !15, !alias.scope !78
  %wide.load31 = load <2 x double>, ptr %i.ae, align 8, !tbaa !15, !alias.scope !78
  %i.af = fsub <2 x double> %wide.load, %wide.load30
  %i.ag = fsub <2 x double> %wide.load29, %wide.load31
  store <2 x double> %i.af, ptr %next.gep, align 8, !tbaa !15, !alias.scope !77, !noalias !78
  store <2 x double> %i.ag, ptr %i.ad, align 8, !tbaa !15, !alias.scope !77, !noalias !78
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !75

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS1_IPKdS5_EES6_St5minusIdEET1_T_SD_T0_SC_T2_.exit, label %.lr.ph.i.preheader33

.lr.ph.i.preheader33:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.sroa.0.011.i.ph = phi ptr [ %i.t, %vector.memcheck ], [ %i.t, %.lr.ph.i.preheader ], [ %i.aa, %middle.block ]
  %.sroa.02.010.i.ph = phi ptr [ %i.r, %vector.memcheck ], [ %i.r, %.lr.ph.i.preheader ], [ %i.ab, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader33, %.lr.ph.i
  %.sroa.0.011.i = phi ptr [ %i.al, %.lr.ph.i ], [ %.sroa.0.011.i.ph, %.lr.ph.i.preheader33 ] ; 3 uses
  %.sroa.02.010.i = phi ptr [ %i.am, %.lr.ph.i ], [ %.sroa.02.010.i.ph, %.lr.ph.i.preheader33 ] ; 2 uses
  %i.ai = load double, ptr %.sroa.0.011.i, align 8, !tbaa !15
  %i.aj = load double, ptr %.sroa.02.010.i, align 8, !tbaa !15
  %i.ak = fsub double %i.ai, %i.aj
  store double %i.ak, ptr %.sroa.0.011.i, align 8, !tbaa !15
  %i.al = getelementptr i8, ptr %.sroa.0.011.i, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.02.010.i, i64 8
  %.not.i = icmp eq ptr %i.al, %i.u
  br i1 %.not.i, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS1_IPKdS5_EES6_St5minusIdEET1_T_SD_T0_SC_T2_.exit, label %.lr.ph.i, !llvm.loop !76

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS1_IPKdS5_EES6_St5minusIdEET1_T_SD_T0_SC_T2_.exit: ; preds = %.lr.ph.i, %middle.block, %_ZNSt6vectorIdSaIdEE6resizeEmRKd.exit
  %i.an = load ptr, ptr %i.b, align 8, !tbaa !16  ; 4 uses
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.t to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 3                 ; 4 uses
  %.not5.i = icmp eq ptr %i.an, %i.t
  br i1 %.not5.i, label %_ZN6casadi10Polynomial4trimEv.exit, label %.lr.ph.i8

.lr.ph.i8:                                        ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS1_IPKdS5_EES6_St5minusIdEET1_T_SD_T0_SC_T2_.exit, %bb.c
  %.07.i = phi i64 [ %i.av, %bb.c ], [ %i.ar, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS1_IPKdS5_EES6_St5minusIdEET1_T_SD_T0_SC_T2_.exit ] ; 2 uses
  %.sroa.04.06.i = phi ptr [ %i.as, %bb.c ], [ %i.an, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS1_IPKdS5_EES6_St5minusIdEET1_T_SD_T0_SC_T2_.exit ]
  %i.as = getelementptr inbounds i8, ptr %.sroa.04.06.i, i64 -8 ; 3 uses
  %i.at = load double, ptr %i.as, align 8, !tbaa !15
  %i.au = fcmp oeq double %i.at, 0.000000e+00
  br i1 %i.au, label %bb.c, label %.critedge.i

bb.c:                                             ; preds = %.lr.ph.i8
  %i.av = add i64 %.07.i, -1                      ; 2 uses
  %.not.i9 = icmp eq ptr %i.as, %i.t
  br i1 %.not.i9, label %.critedge.i, label %.lr.ph.i8, !llvm.loop !0

.critedge.i:                                      ; preds = %bb.c, %.lr.ph.i8
  %.0.lcssa.i = phi i64 [ %i.av, %bb.c ], [ %.07.i, %.lr.ph.i8 ] ; 4 uses
  %i.aw = icmp ugt i64 %.0.lcssa.i, %i.ar
  br i1 %i.aw, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.critedge.i
  %i.ax = sub nuw i64 %.0.lcssa.i, %i.ar
  call void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ax)
  br label %_ZN6casadi10Polynomial4trimEv.exit

bb.e:                                             ; preds = %.critedge.i
  %i.ay = icmp ult i64 %.0.lcssa.i, %i.ar
  br i1 %i.ay, label %bb.f, label %_ZN6casadi10Polynomial4trimEv.exit

bb.f:                                             ; preds = %bb.e
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.0.lcssa.i ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.an, %i.az
  br i1 %.not.i.i.i, label %_ZN6casadi10Polynomial4trimEv.exit, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %bb.f
  store ptr %i.az, ptr %i.b, align 8, !tbaa !16
  br label %_ZN6casadi10Polynomial4trimEv.exit

_ZN6casadi10Polynomial4trimEv.exit:               ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS1_IPKdS5_EES6_St5minusIdEET1_T_SD_T0_SC_T2_.exit, %bb.d, %bb.e, %bb.f, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i.i
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6casadi10Polynomial10derivativeEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.casadi::Polynomial") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.c = load ptr, ptr %1, align 8, !tbaa !12
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 3                   ; 2 uses
  %i.h = add nsw i64 %i.g, -1                     ; 4 uses
  %i.i = icmp ugt i64 %i.h, 1152921504606846975
  br i1 %i.i, label %.noexc, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #20
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit, label %.noexc10

.noexc10:                                         ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  %i.j = shl nuw nsw i64 %i.h, 3
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #17 ; 5 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.h ; 2 uses
  store double 0.000000e+00, ptr %i.k, align 8, !tbaa !15
  %i.m = getelementptr i8, ptr %i.k, i64 8        ; 3 uses
  %i.n = add nsw i64 %i.g, -2                     ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc10
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.n, 3   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.m, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !15
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx.i.i.i.i.i.i.i
  br label %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit

_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc10, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.12.0 = phi ptr [ %i.l, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.l, %.noexc10 ], [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.014.0 = phi ptr [ %i.k, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.k, %.noexc10 ], [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i ] ; 15 uses
  %.0.i.i.i.i.i = phi ptr [ %i.p, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.m, %.noexc10 ], [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.014.024 = ptrtoaddr ptr %.sroa.014.0 to i64
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.r = load ptr, ptr %1, align 8, !tbaa !12     ; 7 uses
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64                 ; 2 uses
  %i.u = sub i64 %i.s, %i.t
  %i.v = ashr exact i64 %i.u, 3                   ; 6 uses
  %i.w = icmp ugt i64 %i.v, 1
  br i1 %i.w, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit
  %i.x = add nsw i64 %i.v, -1                     ; 3 uses
  %min.iters.check = icmp ult i64 %i.v, 5
  br i1 %min.iters.check, label %.lr.ph.preheader25, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.y = sub i64 %.sroa.014.024, %i.t
  %i.z = add i64 %i.y, -9
  %diff.check = icmp ult i64 %i.z, 15
  br i1 %diff.check, label %.lr.ph.preheader25, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.x, -2                       ; 2 uses
  %i.aa = or i64 %i.x, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 1, i64 2>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.ab = or disjoint i64 %index, 1               ; 2 uses
  %i.ac = uitofp nneg <2 x i64> %vec.ind to <2 x double>
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.ab
  %wide.load = load <2 x double>, ptr %i.ad, align 8, !tbaa !15
  %i.ae = fmul <2 x double> %wide.load, %i.ac
  %i.af = getelementptr [8 x i8], ptr %.sroa.014.0, i64 %i.ab
  %i.ag = getelementptr i8, ptr %i.af, i64 -8
  store <2 x double> %i.ae, ptr %i.ag, align 8, !tbaa !15
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add nuw nsw <2 x i64> %vec.ind, splat (i64 2)
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !79

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader25

.lr.ph.preheader25:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.020.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph.preheader ], [ %i.aa, %middle.block ] ; 4 uses
  %i.ai = sub nsw i64 %i.v, %.020.ph
  %xtraiter = and i64 %i.ai, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader25, %.lr.ph.prol
  %.020.prol = phi i64 [ %i.ap, %.lr.ph.prol ], [ %.020.ph, %.lr.ph.preheader25 ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader25 ]
  %i.aj = uitofp nneg i64 %.020.prol to double
end_hunk_0
