inline.NumInlined: 621
inline.NumDeleted: 256
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN6casadi10Polynomial4trimEv:bb.a
  store ptr %i.o, ptr %i.a, align 8, !tbaa !15
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

_ZNSt6vectorIdSaIdEE6resizeEm.exit:               ; preds = %bb.a, %bb.c, %bb.d, %bb.e, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6casadi10PolynomialmiERKS0_(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.casadi::Polynomial") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.casadi::Polynomial", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !8      ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i.i, label %.thread10, label %bb.b

.thread10:                                        ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = getelementptr inbounds i8, ptr null, i64 %i.f ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  store ptr %i.h, ptr %i.i, align 8, !tbaa !12
  br label %_ZN6casadi10PolynomialC2ERKS0_.exit

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.j, label %.noexc.i.i.i, label %bb.c, !prof !57

.noexc.i.i.i:                                     ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #20
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #17 ; 5 uses
  store ptr %i.k, ptr %3, align 8, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.f ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !12
  %i.o = icmp samesign ugt i64 %i.f, 8
  br i1 %i.o, label %bb.d, label %bb.e, !prof !53

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.k, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZN6casadi10PolynomialC2ERKS0_.exit

bb.e:                                             ; preds = %bb.c
  %i.p = icmp eq i64 %i.f, 8
  br i1 %i.p, label %bb.f, label %_ZN6casadi10PolynomialC2ERKS0_.exit

bb.f:                                             ; preds = %bb.e
  %i.q = load double, ptr %i.c, align 8, !tbaa !13
  store double %i.q, ptr %i.k, align 8, !tbaa !13
  br label %_ZN6casadi10PolynomialC2ERKS0_.exit

_ZN6casadi10PolynomialC2ERKS0_.exit:              ; preds = %.thread10, %bb.d, %bb.e, %bb.f
  %i.r = phi ptr [ %i.n, %bb.d ], [ %i.n, %bb.e ], [ %i.n, %bb.f ], [ %i.i, %.thread10 ] ; 2 uses
  %i.s = phi ptr [ %i.m, %bb.d ], [ %i.m, %bb.e ], [ %i.m, %bb.f ], [ %i.h, %.thread10 ]
  %i.t = phi ptr [ %i.l, %bb.d ], [ %i.l, %bb.e ], [ %i.l, %bb.f ], [ %i.g, %.thread10 ]
  store ptr %i.s, ptr %i.t, align 8, !tbaa !15
  %i.u = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6casadi10PolynomialmIERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.g unwind label %bb.m       ; 0 uses

bb.g:                                             ; preds = %_ZN6casadi10PolynomialC2ERKS0_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !15   ; 2 uses
  %i.x = load ptr, ptr %3, align 8, !tbaa !8      ; 6 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64                 ; 2 uses
  %i.aa = sub i64 %i.y, %i.z                      ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i3 = icmp eq ptr %i.w, %i.x
  br i1 %.not.i.i.i.i.i3, label %.thread11, label %bb.h

.thread11:                                        ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = getelementptr inbounds i8, ptr null, i64 %i.aa ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !12
  br label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.ae = icmp ugt i64 %i.aa, 9223372036854775800
  br i1 %i.ae, label %.noexc.i.i.i5, label %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i4, !prof !57

.noexc.i.i.i5:                                    ; preds = %bb.h
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #20
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %.noexc.i.i.i5
  unreachable

_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i4: ; preds = %bb.h
  %i.af = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #17
          to label %.noexc6 unwind label %bb.m    ; 4 uses

.noexc6:                                          ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i4
  store ptr %i.af, ptr %0, align 8, !tbaa !8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.aa ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !12
  %i.aj = icmp samesign ugt i64 %i.aa, 8
  br i1 %i.aj, label %bb.i, label %bb.j, !prof !53

bb.i:                                             ; preds = %.noexc6
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.af, ptr align 8 %i.x, i64 %i.aa, i1 false)
  br label %bb.k

bb.j:                                             ; preds = %.noexc6
  %i.ak = icmp eq i64 %i.aa, 8
  br i1 %i.ak, label %.thread, label %bb.k

.thread:                                          ; preds = %bb.j
  %i.al = load double, ptr %i.x, align 8, !tbaa !13
  store double %i.al, ptr %i.af, align 8, !tbaa !13
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !15
  br label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i, %.thread11
  %i.am = phi ptr [ %i.ah, %bb.i ], [ %i.ah, %bb.j ], [ %i.ac, %.thread11 ]
  %i.an = phi ptr [ %i.ag, %bb.i ], [ %i.ag, %bb.j ], [ %i.ab, %.thread11 ]
  store ptr %i.am, ptr %i.an, align 8, !tbaa !15
  %.not.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i, label %_ZN6casadi10PolynomialD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %.thread, %bb.k
  %i.ao = load ptr, ptr %i.r, align 8, !tbaa !12
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = sub i64 %i.ap, %i.z
  call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.aq) #18
  br label %_ZN6casadi10PolynomialD2Ev.exit

_ZN6casadi10PolynomialD2Ev.exit:                  ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret void

bb.m:                                             ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i4, %.noexc.i.i.i5, %_ZN6casadi10PolynomialC2ERKS0_.exit
  %i.ar = landingpad { ptr, i32 }
          cleanup
  %i.as = load ptr, ptr %3, align 8, !tbaa !8     ; 3 uses
  %.not.i.i.i.i8 = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i8, label %_ZN6casadi10PolynomialD2Ev.exit9, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.at = load ptr, ptr %i.r, align 8, !tbaa !12
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.as to i64
  %i.aw = sub i64 %i.au, %i.av
  call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef %i.aw) #18
  br label %_ZN6casadi10PolynomialD2Ev.exit9

_ZN6casadi10PolynomialD2Ev.exit9:                 ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  resume { ptr, i32 } %i.ar
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(24) ptr @_ZN6casadi10PolynomialmIERKS0_(ptr noundef nonnull returned align 8 dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !15   ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !8      ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3                   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !15   ; 2 uses
  %i.k = load ptr, ptr %1, align 8, !tbaa !8      ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m                       ; 2 uses
  %i.o = ashr exact i64 %i.n, 3                   ; 2 uses
  %i.p = icmp ult i64 %i.h, %i.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !13
  br i1 %i.p, label %bb.b, label %_ZNSt6vectorIdSaIdEE6resizeEmRKd.exit

bb.b:                                             ; preds = %bb.a
  %i.q = sub nuw nsw i64 %i.o, %i.h
  call void @_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.c, i64 noundef %i.q, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pre = load ptr, ptr %0, align 8, !tbaa !56
  %.pre13 = load ptr, ptr %i.i, align 8, !tbaa !15 ; 2 uses
  %.pre14 = load ptr, ptr %1, align 8, !tbaa !8   ; 2 uses
  %.pre15 = ptrtoint ptr %.pre13 to i64
  %.pre16 = ptrtoint ptr %.pre14 to i64
  %.pre18 = sub i64 %.pre15, %.pre16
  br label %_ZNSt6vectorIdSaIdEE6resizeEmRKd.exit

_ZNSt6vectorIdSaIdEE6resizeEmRKd.exit:            ; preds = %bb.a, %bb.b
  %.pre-phi19 = phi i64 [ %i.n, %bb.a ], [ %.pre18, %bb.b ] ; 5 uses
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
  %min.iters.check = icmp ugt i64 %i.v, 103
  %2 = and i64 %.pre-phi19, 7
  %ident.check.not = icmp eq i64 %2, 0
  %or.cond = and i1 %min.iters.check, %ident.check.not
  br i1 %or.cond, label %vector.memcheck, label %.lr.ph.i.preheader33

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %scevgep = getelementptr i8, ptr %i.t, i64 %.pre-phi19
  %scevgep27 = getelementptr i8, ptr %i.r, i64 %.pre-phi19
  %bound0 = icmp ult ptr %i.t, %scevgep27
  %bound1 = icmp ult ptr %i.r, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader33, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.x, 4611686018427387900      ; 3 uses
  %i.y = shl i64 %n.vec, 3                        ; 2 uses
  %i.z = getelementptr i8, ptr %i.t, i64 %i.y
  %i.aa = getelementptr i8, ptr %i.r, i64 %i.y
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ab = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.t, i64 %i.ab ; 3 uses
  %next.gep28 = getelementptr i8, ptr %i.r, i64 %i.ab ; 2 uses
  %i.ac = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %next.gep, align 8, !tbaa !13, !alias.scope !70, !noalias !73
  %wide.load29 = load <2 x double>, ptr %i.ac, align 8, !tbaa !13, !alias.scope !70, !noalias !73
  %i.ad = getelementptr i8, ptr %next.gep28, i64 16
  %wide.load30 = load <2 x double>, ptr %next.gep28, align 8, !tbaa !13, !alias.scope !73
  %wide.load31 = load <2 x double>, ptr %i.ad, align 8, !tbaa !13, !alias.scope !73
  %i.ae = fsub <2 x double> %wide.load, %wide.load30
  %i.af = fsub <2 x double> %wide.load29, %wide.load31
  store <2 x double> %i.ae, ptr %next.gep, align 8, !tbaa !13, !alias.scope !70, !noalias !73
  store <2 x double> %i.af, ptr %i.ac, align 8, !tbaa !13, !alias.scope !70, !noalias !73
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !75

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS1_IPKdS5_EES6_St5minusIdEET1_T_SD_T0_SC_T2_.exit, label %.lr.ph.i.preheader33

.lr.ph.i.preheader33:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.sroa.0.011.i.ph = phi ptr [ %i.t, %vector.memcheck ], [ %i.t, %.lr.ph.i.preheader ], [ %i.z, %middle.block ]
  %.sroa.02.010.i.ph = phi ptr [ %i.r, %vector.memcheck ], [ %i.r, %.lr.ph.i.preheader ], [ %i.aa, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader33, %.lr.ph.i
  %.sroa.0.011.i = phi ptr [ %i.ak, %.lr.ph.i ], [ %.sroa.0.011.i.ph, %.lr.ph.i.preheader33 ] ; 3 uses
  %.sroa.02.010.i = phi ptr [ %i.al, %.lr.ph.i ], [ %.sroa.02.010.i.ph, %.lr.ph.i.preheader33 ] ; 2 uses
  %i.ah = load double, ptr %.sroa.0.011.i, align 8, !tbaa !13
  %i.ai = load double, ptr %.sroa.02.010.i, align 8, !tbaa !13
  %i.aj = fsub double %i.ah, %i.ai
  store double %i.aj, ptr %.sroa.0.011.i, align 8, !tbaa !13
  %i.ak = getelementptr i8, ptr %.sroa.0.011.i, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.02.010.i, i64 8
  %.not.i = icmp eq ptr %i.ak, %i.u
  br i1 %.not.i, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS1_IPKdS5_EES6_St5minusIdEET1_T_SD_T0_SC_T2_.exit, label %.lr.ph.i, !llvm.loop !76

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS1_IPKdS5_EES6_St5minusIdEET1_T_SD_T0_SC_T2_.exit: ; preds = %.lr.ph.i, %middle.block, %_ZNSt6vectorIdSaIdEE6resizeEmRKd.exit
  %i.am = load ptr, ptr %i.b, align 8, !tbaa !15  ; 4 uses
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.t to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = ashr exact i64 %i.ap, 3                 ; 4 uses
  %.not5.i = icmp eq ptr %i.am, %i.t
  br i1 %.not5.i, label %_ZN6casadi10Polynomial4trimEv.exit, label %.lr.ph.i8

.lr.ph.i8:                                        ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS1_IPKdS5_EES6_St5minusIdEET1_T_SD_T0_SC_T2_.exit, %bb.c
  %.07.i = phi i64 [ %i.au, %bb.c ], [ %i.aq, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS1_IPKdS5_EES6_St5minusIdEET1_T_SD_T0_SC_T2_.exit ] ; 2 uses
  %.sroa.04.06.i = phi ptr [ %i.ar, %bb.c ], [ %i.am, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS1_IPKdS5_EES6_St5minusIdEET1_T_SD_T0_SC_T2_.exit ]
  %i.ar = getelementptr inbounds i8, ptr %.sroa.04.06.i, i64 -8 ; 3 uses
  %i.as = load double, ptr %i.ar, align 8, !tbaa !13
  %i.at = fcmp oeq double %i.as, 0.000000e+00
  br i1 %i.at, label %bb.c, label %.critedge.i

bb.c:                                             ; preds = %.lr.ph.i8
  %i.au = add i64 %.07.i, -1                      ; 2 uses
  %.not.i9 = icmp eq ptr %i.ar, %i.t
  br i1 %.not.i9, label %.critedge.i, label %.lr.ph.i8, !llvm.loop !69

.critedge.i:                                      ; preds = %bb.c, %.lr.ph.i8
  %.0.lcssa.i = phi i64 [ %i.au, %bb.c ], [ %.07.i, %.lr.ph.i8 ] ; 4 uses
  %i.av = icmp ugt i64 %.0.lcssa.i, %i.aq
  br i1 %i.av, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.critedge.i
  %i.aw = sub nuw i64 %.0.lcssa.i, %i.aq
  call void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.aw)
  br label %_ZN6casadi10Polynomial4trimEv.exit

bb.e:                                             ; preds = %.critedge.i
  %i.ax = icmp ult i64 %.0.lcssa.i, %i.aq
  br i1 %i.ax, label %bb.f, label %_ZN6casadi10Polynomial4trimEv.exit

bb.f:                                             ; preds = %bb.e
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.0.lcssa.i ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, %i.ay
  br i1 %.not.i.i.i, label %_ZN6casadi10Polynomial4trimEv.exit, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %bb.f
  store ptr %i.ay, ptr %i.b, align 8, !tbaa !15
  br label %_ZN6casadi10Polynomial4trimEv.exit

_ZN6casadi10Polynomial4trimEv.exit:               ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS1_IPKdS5_EES6_St5minusIdEET1_T_SD_T0_SC_T2_.exit, %bb.d, %bb.e, %bb.f, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i.i
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6casadi10Polynomial10derivativeEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.casadi::Polynomial") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.c = load ptr, ptr %1, align 8, !tbaa !8      ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 3                   ; 5 uses
  %i.h = add nsw i64 %i.g, -1                     ; 9 uses
  %i.i = icmp ugt i64 %i.h, 1152921504606846975
  br i1 %i.i, label %.noexc, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #20
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i.i.i, label %.thread62, label %.noexc10

.noexc10:                                         ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  %i.j = shl nuw nsw i64 %i.h, 3
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #17 ; 15 uses
  %i.l = ptrtoaddr ptr %i.k to i64
  store double 0.000000e+00, ptr %i.k, align 8, !tbaa !13
  %i.m = getelementptr i8, ptr %i.k, i64 8        ; 3 uses
  %i.n = add nsw i64 %i.g, -2                     ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %.lr.ph.preheader, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc10
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.n, 3   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.m, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !13
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx.i.i.i.i.i.i.i
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc10
  %.0.i.i.i.i.i.ph = phi ptr [ %i.m, %.noexc10 ], [ %i.p, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ] ; 2 uses
  %min.iters.check = icmp ult i64 %i.h, 4
  br i1 %min.iters.check, label %.lr.ph.preheader68, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.q = sub i64 %i.l, %i.e
  %i.r = add i64 %i.q, -9
  %diff.check = icmp ult i64 %i.r, 15
  br i1 %diff.check, label %.lr.ph.preheader68, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, 1152921504606846974      ; 2 uses
  %i.s = or i64 %i.h, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 1, i64 2>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.t = or disjoint i64 %index, 1                ; 2 uses
  %i.u = uitofp nneg <2 x i64> %vec.ind to <2 x double>
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.t
  %wide.load = load <2 x double>, ptr %i.v, align 8, !tbaa !13
  %i.w = fmul <2 x double> %wide.load, %i.u
  %i.x = getelementptr [8 x i8], ptr %i.k, i64 %i.t
  %i.y = getelementptr i8, ptr %i.x, i64 -8
  store <2 x double> %i.w, ptr %i.y, align 8, !tbaa !13
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add nuw nsw <2 x i64> %vec.ind, splat (i64 2)
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !77

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader68

.lr.ph.preheader68:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.020.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph.preheader ], [ %i.s, %middle.block ] ; 4 uses
  %i.aa = sub nsw i64 %i.g, %.020.ph
  %xtraiter = and i64 %i.aa, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader68, %.lr.ph.prol
  %.020.prol = phi i64 [ %i.ah, %.lr.ph.prol ], [ %.020.ph, %.lr.ph.preheader68 ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader68 ]
  %i.ab = uitofp nneg i64 %.020.prol to double
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.020.prol
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !13
  %i.ae = fmul double %i.ad, %i.ab
  %i.af = getelementptr [8 x i8], ptr %i.k, i64 %.020.prol
  %i.ag = getelementptr i8, ptr %i.af, i64 -8
  store double %i.ae, ptr %i.ag, align 8, !tbaa !13
  %i.ah = add nuw nsw i64 %.020.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !78

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader68
  %.020.unr = phi i64 [ %.020.ph, %.lr.ph.preheader68 ], [ %i.ah, %.lr.ph.prol ]
  %i.ai = sub nsw i64 %.020.ph, %i.g
end_hunk_0
