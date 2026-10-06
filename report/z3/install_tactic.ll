Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/install_tactic?download=true
inline.NumInlined: 9911
inline.NumDeleted: 2159
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZN6vectorIPN14parray_managerIN11ast_manager28expr_dependency_array_configEE4cellELb0EjE13expand_vectorEv:bb.a
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %2 = alloca %"class.std::allocator", align 1    ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !249    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 24) ; 3 uses
  store i32 2, ptr %i.c, align 4, !tbaa !162
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 0, ptr %i.d, align 4, !tbaa !162
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.e, ptr %0, align 8, !tbaa !249
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.a, i64 -8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !162  ; 3 uses
  %i.h = mul i32 %i.g, 3
  %i.i = add i32 %i.h, 1
  %i.j = lshr i32 %i.i, 1                         ; 3 uses
  %i.k = shl i32 %i.j, 3
  %i.l = add i32 %i.k, 8                          ; 2 uses
  %.not = icmp ugt i32 %i.j, %i.g
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = shl i32 %i.g, 3
  %i.n = add i32 %i.m, 8
  %.not27 = icmp ugt i32 %i.l, %i.n
  br i1 %.not27, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.o = tail call ptr @__cxa_allocate_exception(i64 40) #24 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.338, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.o, align 8, !tbaa !45
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 3 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !191
  %i.r = load ptr, ptr %1, align 8, !tbaa !193    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !194  ; 3 uses
  %i.w = icmp ult i64 %i.v, 16
  call void @llvm.assume(i1 %i.w)
  %i.x = add nuw nsw i64 %i.v, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.x, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  store ptr %i.r, ptr %i.p, align 8, !tbaa !193
  %i.y = load i64, ptr %i.s, align 8, !tbaa !192
  store i64 %i.y, ptr %i.q, align 8, !tbaa !192
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !194
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.z = phi i64 [ %i.v, %bb.g ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %i.z, ptr %i.ab, align 8, !tbaa !194
  store ptr %i.s, ptr %1, align 8, !tbaa !193
  store i64 0, ptr %i.aa, align 8, !tbaa !194
  store i8 0, ptr %i.s, align 8, !tbaa !192
  invoke void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #28
          to label %bb.m unwind label %bb.h

bb.h:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = load ptr, ptr %1, align 8, !tbaa !193   ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.s
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %bb.h
  %i.af = load i64, ptr %i.s, align 8, !tbaa !192
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  call void @__cxa_free_exception(ptr %i.o) #24
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %bb.i
  %.pn32 = phi { ptr, i32 } [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ah, %bb.i ]
  resume { ptr, i32 } %.pn32

bb.k:                                             ; preds = %bb.d
  %i.ai = zext i32 %i.l to i64
  %i.aj = tail call noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.f, i64 noundef %i.ai) ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.ak, ptr %0, align 8, !tbaa !249
  store i32 %i.j, ptr %i.aj, align 4, !tbaa !162
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.b
  ret void

bb.m:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE10get_valuesEPNS2_4cellERPPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !249  ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN6vectorIPN14parray_managerIN11ast_manager28expr_dependency_array_configEE4cellELb0EjE5resetEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -4
  store i32 0, ptr %i.c, align 4, !tbaa !162
  br label %_ZN6vectorIPN14parray_managerIN11ast_manager28expr_dependency_array_configEE4cellELb0EjE5resetEv.exit

_ZN6vectorIPN14parray_managerIN11ast_manager28expr_dependency_array_configEE4cellELb0EjE5resetEv.exit: ; preds = %bb.a, %bb.b
  %i.d = load i32, ptr %1, align 8
  %.not34 = icmp ugt i32 %i.d, -1073741825
  br i1 %.not34, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6vectorIPN14parray_managerIN11ast_manager28expr_dependency_array_configEE4cellELb0EjE5resetEv.exit, %_ZN6vectorIPN14parray_managerIN11ast_manager28expr_dependency_array_configEE4cellELb0EjE9push_backERKS5_.exit
  %i.e = phi ptr [ %i.l, %_ZN6vectorIPN14parray_managerIN11ast_manager28expr_dependency_array_configEE4cellELb0EjE9push_backERKS5_.exit ], [ %i.b, %_ZN6vectorIPN14parray_managerIN11ast_manager28expr_dependency_array_configEE4cellELb0EjE5resetEv.exit ] ; 4 uses
  %storemerge35 = phi ptr [ %i.s, %_ZN6vectorIPN14parray_managerIN11ast_manager28expr_dependency_array_configEE4cellELb0EjE9push_backERKS5_.exit ], [ %1, %_ZN6vectorIPN14parray_managerIN11ast_manager28expr_dependency_array_configEE4cellELb0EjE5resetEv.exit ] ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds i8, ptr %i.e, i64 -4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !162  ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %i.e, i64 -8
  %i.j = load i32, ptr %i.i, align 4, !tbaa !162
  %i.k = icmp eq i32 %i.h, %i.j
  br i1 %i.k, label %bb.d, label %_ZN6vectorIPN14parray_managerIN11ast_manager28expr_dependency_array_configEE4cellELb0EjE9push_backERKS5_.exit

bb.d:                                             ; preds = %bb.c, %.lr.ph
  tail call void @_ZN6vectorIPN14parray_managerIN11ast_manager28expr_dependency_array_configEE4cellELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !249 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !162
  br label %_ZN6vectorIPN14parray_managerIN11ast_manager28expr_dependency_array_configEE4cellELb0EjE9push_backERKS5_.exit

_ZN6vectorIPN14parray_managerIN11ast_manager28expr_dependency_array_configEE4cellELb0EjE9push_backERKS5_.exit: ; preds = %bb.c, %bb.d
  %i.l = phi ptr [ %.pre.i, %bb.d ], [ %i.e, %bb.c ] ; 3 uses
  %i.m = phi i32 [ %.pre2.i, %bb.d ], [ %i.h, %bb.c ] ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -4
  %i.o = zext i32 %i.m to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.o
  store ptr %storemerge35, ptr %i.p, align 8, !tbaa !250
  %i.q = add i32 %i.m, 1
  store i32 %i.q, ptr %i.n, align 4, !tbaa !162
  %i.r = getelementptr inbounds nuw i8, ptr %storemerge35, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !192  ; 3 uses
  %i.t = load i32, ptr %i.s, align 8
  %.not = icmp ugt i32 %i.t, -1073741825
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !616

._crit_edge:                                      ; preds = %_ZN6vectorIPN14parray_managerIN11ast_manager28expr_dependency_array_configEE4cellELb0EjE9push_backERKS5_.exit, %_ZN6vectorIPN14parray_managerIN11ast_manager28expr_dependency_array_configEE4cellELb0EjE5resetEv.exit
  %storemerge.lcssa = phi ptr [ %1, %_ZN6vectorIPN14parray_managerIN11ast_manager28expr_dependency_array_configEE4cellELb0EjE5resetEv.exit ], [ %i.s, %_ZN6vectorIPN14parray_managerIN11ast_manager28expr_dependency_array_configEE4cellELb0EjE9push_backERKS5_.exit ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %storemerge.lcssa, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !192  ; 5 uses
  store ptr null, ptr %2, align 8, !tbaa !253
  %i.w = getelementptr inbounds nuw i8, ptr %storemerge.lcssa, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !192  ; 3 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE8capacityEPPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE.exit.i, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.z = getelementptr inbounds i8, ptr %i.x, i64 -8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !245
  br label %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE8capacityEPPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE.exit.i

_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE8capacityEPPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE.exit.i: ; preds = %bb.e, %._crit_edge
  %i.ab = phi i64 [ %i.aa, %bb.e ], [ 0, %._crit_edge ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !251, !nonnull !165, !align !166
  %i.ae = shl i64 %i.ab, 3
  %i.af = add i64 %i.ae, 8
  %i.ag = tail call noundef ptr @_ZN22small_object_allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(520) %i.ad, i64 noundef %i.af) ; 2 uses
  store i64 %i.ab, ptr %i.ag, align 8, !tbaa !245
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  store ptr %i.ah, ptr %2, align 8, !tbaa !253
  %.not.i17 = icmp eq i32 %i.v, 0
  br i1 %.not.i17, label %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE11copy_valuesEPPN18dependency_managerINS0_22expr_dependency_configEE10dependencyEjRS8_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE8capacityEPPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE.exit.i
  %wide.trip.count.i = zext i32 %i.v to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE7inc_refERKPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE.exit.i, %.lr.ph.preheader.i
  %3 = phi ptr [ %i.ah, %.lr.ph.preheader.i ], [ %5, %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE7inc_refERKPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE.exit.i ] ; 2 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE7inc_refERKPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE.exit.i ] ; 3 uses
  %4 = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv.i
  %i.ai = load ptr, ptr %4, align 8, !tbaa !205   ; 4 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !205
  %.not.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i, label %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE7inc_refERKPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE.exit.i, label %_ZN18dependency_managerIN11ast_manager22expr_dependency_configEE7inc_refEPNS2_10dependencyE.exit.i.i.i

_ZN18dependency_managerIN11ast_manager22expr_dependency_configEE7inc_refEPNS2_10dependencyE.exit.i.i.i: ; preds = %.lr.ph.i
  %i.ak = load i32, ptr %i.ai, align 4            ; 2 uses
  %i.al = add i32 %i.ak, 1
  %i.am = and i32 %i.al, 1073741823
  %i.an = and i32 %i.ak, -1073741824
  %i.ao = or disjoint i32 %i.am, %i.an
  store i32 %i.ao, ptr %i.ai, align 4
  %.pre.i18 = load ptr, ptr %2, align 8, !tbaa !253
  br label %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE7inc_refERKPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE.exit.i

_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE7inc_refERKPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE.exit.i: ; preds = %_ZN18dependency_managerIN11ast_manager22expr_dependency_configEE7inc_refEPNS2_10dependencyE.exit.i.i.i, %.lr.ph.i
  %5 = phi ptr [ %3, %.lr.ph.i ], [ %.pre.i18, %_ZN18dependency_managerIN11ast_manager22expr_dependency_configEE7inc_refEPNS2_10dependencyE.exit.i.i.i ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE11copy_valuesEPPN18dependency_managerINS0_22expr_dependency_configEE10dependencyEjRS8_.exit, label %.lr.ph.i, !llvm.loop !617

_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE11copy_valuesEPPN18dependency_managerINS0_22expr_dependency_configEE10dependencyEjRS8_.exit: ; preds = %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE7inc_refERKPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE.exit.i, %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE8capacityEPPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE.exit.i
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !249 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %._crit_edge39, label %_ZNK6vectorIPN14parray_managerIN11ast_manager28expr_dependency_array_configEE4cellELb0EjE4sizeEv.exit

_ZNK6vectorIPN14parray_managerIN11ast_manager28expr_dependency_array_configEE4cellELb0EjE4sizeEv.exit: ; preds = %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE11copy_valuesEPPN18dependency_managerINS0_22expr_dependency_configEE10dependencyEjRS8_.exit
  %i.ar = getelementptr inbounds i8, ptr %i.ap, i64 -4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !162 ; 2 uses
  %.not1636 = icmp eq i32 %i.as, 0
  br i1 %.not1636, label %._crit_edge39, label %.lr.ph38.preheader

.lr.ph38.preheader:                               ; preds = %_ZNK6vectorIPN14parray_managerIN11ast_manager28expr_dependency_array_configEE4cellELb0EjE4sizeEv.exit
  %i.at = zext i32 %i.as to i64
  br label %.lr.ph38

._crit_edge39:                                    ; preds = %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE9rpop_backEPPN18dependency_managerINS0_22expr_dependency_configEE10dependencyERj.exit, %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE11copy_valuesEPPN18dependency_managerINS0_22expr_dependency_configEE10dependencyEjRS8_.exit, %_ZNK6vectorIPN14parray_managerIN11ast_manager28expr_dependency_array_configEE4cellELb0EjE4sizeEv.exit
  %.032.lcssa = phi i32 [ %i.v, %_ZNK6vectorIPN14parray_managerIN11ast_manager28expr_dependency_array_configEE4cellELb0EjE4sizeEv.exit ], [ %i.v, %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE11copy_valuesEPPN18dependency_managerINS0_22expr_dependency_configEE10dependencyEjRS8_.exit ], [ %.1, %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE9rpop_backEPPN18dependency_managerINS0_22expr_dependency_configEE10dependencyERj.exit ]
  ret i32 %.032.lcssa

.lr.ph38:                                         ; preds = %.lr.ph38.preheader, %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE9rpop_backEPPN18dependency_managerINS0_22expr_dependency_configEE10dependencyERj.exit
  %indvars.iv = phi i64 [ %i.at, %.lr.ph38.preheader ], [ %i.au, %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE9rpop_backEPPN18dependency_managerINS0_22expr_dependency_configEE10dependencyERj.exit ]
  %.03237 = phi i32 [ %i.v, %.lr.ph38.preheader ], [ %.1, %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE9rpop_backEPPN18dependency_managerINS0_22expr_dependency_configEE10dependencyERj.exit ] ; 7 uses
  %i.au = add nsw i64 %indvars.iv, -1             ; 3 uses
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !249
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.au
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !250 ; 4 uses
  %i.ay = load i32, ptr %i.ax, align 8
  %i.az = lshr i32 %i.ay, 30
  switch i32 %i.az, label %default.unreachable56 [
    i32 0, label %bb.f
    i32 2, label %bb.i
    i32 1, label %bb.l
    i32 3, label %bb.n
  ]

bb.f:                                             ; preds = %.lr.ph38
  %i.ba = load ptr, ptr %2, align 8, !tbaa !253
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !192
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !205 ; 3 uses
  %.not.i.i.i18 = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i18, label %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE7inc_refERKPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE.exit.i20, label %_ZN18dependency_managerIN11ast_manager22expr_dependency_configEE7inc_refEPNS2_10dependencyE.exit.i.i.i19

_ZN18dependency_managerIN11ast_manager22expr_dependency_configEE7inc_refEPNS2_10dependencyE.exit.i.i.i19: ; preds = %bb.f
  %i.bf = load i32, ptr %i.be, align 4            ; 2 uses
  %i.bg = add i32 %i.bf, 1
  %i.bh = and i32 %i.bg, 1073741823
  %i.bi = and i32 %i.bf, -1073741824
  %i.bj = or disjoint i32 %i.bh, %i.bi
  store i32 %i.bj, ptr %i.be, align 4
  br label %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE7inc_refERKPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE.exit.i20

_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE7inc_refERKPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE.exit.i20: ; preds = %_ZN18dependency_managerIN11ast_manager22expr_dependency_configEE7inc_refEPNS2_10dependencyE.exit.i.i.i19, %bb.f
  %i.bk = zext i32 %i.bc to i64
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bk ; 2 uses
  %i.bm = load ptr, ptr %0, align 8, !tbaa !252, !nonnull !165, !align !166
  %i.bn = load ptr, ptr %i.bl, align 8, !tbaa !205 ; 4 uses
  %.not.i.i6.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i6.i, label %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE4rsetEPPN18dependency_managerINS0_22expr_dependency_configEE10dependencyEjRKS7_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE7inc_refERKPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE.exit.i20
  %i.bo = load i32, ptr %i.bn, align 4            ; 2 uses
  %i.bp = add i32 %i.bo, 1073741823
  %i.bq = and i32 %i.bp, 1073741823               ; 2 uses
  %i.br = and i32 %i.bo, -1073741824
  %i.bs = or disjoint i32 %i.bq, %i.br
  store i32 %i.bs, ptr %i.bn, align 4
  %i.bt = icmp eq i32 %i.bq, 0
  br i1 %i.bt, label %bb.h, label %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE4rsetEPPN18dependency_managerINS0_22expr_dependency_configEE10dependencyEjRKS7_.exit

bb.h:                                             ; preds = %bb.g
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bm, i64 648
  tail call void @_ZN18dependency_managerIN11ast_manager22expr_dependency_configEE3delEPNS2_10dependencyE(ptr noundef nonnull align 8 dereferenceable(24) %i.bu, ptr noundef nonnull %i.bn)
  br label %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE4rsetEPPN18dependency_managerINS0_22expr_dependency_configEE10dependencyEjRKS7_.exit

_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE4rsetEPPN18dependency_managerINS0_22expr_dependency_configEE10dependencyEjRKS7_.exit: ; preds = %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE7inc_refERKPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE.exit.i20, %bb.g, %bb.h
  %i.bv = load ptr, ptr %i.bd, align 8, !tbaa !205
  store ptr %i.bv, ptr %i.bl, align 8, !tbaa !205
  br label %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE9rpop_backEPPN18dependency_managerINS0_22expr_dependency_configEE10dependencyERj.exit

bb.i:                                             ; preds = %.lr.ph38
  %i.bw = load ptr, ptr %2, align 8, !tbaa !253
  %i.bx = add i32 %.03237, -1                     ; 4 uses
  %i.by = zext i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.by
  %i.ca = load ptr, ptr %0, align 8, !tbaa !252, !nonnull !165, !align !166
  %i.cb = load ptr, ptr %i.bz, align 8, !tbaa !205 ; 4 uses
  %.not.i.i.i21 = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i21, label %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE9rpop_backEPPN18dependency_managerINS0_22expr_dependency_configEE10dependencyERj.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cc = load i32, ptr %i.cb, align 4            ; 2 uses
  %i.cd = add i32 %i.cc, 1073741823
  %i.ce = and i32 %i.cd, 1073741823               ; 2 uses
  %i.cf = and i32 %i.cc, -1073741824
  %i.cg = or disjoint i32 %i.ce, %i.cf
  store i32 %i.cg, ptr %i.cb, align 4
  %i.ch = icmp eq i32 %i.ce, 0
  br i1 %i.ch, label %bb.k, label %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE9rpop_backEPPN18dependency_managerINS0_22expr_dependency_configEE10dependencyERj.exit

bb.k:                                             ; preds = %bb.j
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ca, i64 648
  tail call void @_ZN18dependency_managerIN11ast_manager22expr_dependency_configEE3delEPNS2_10dependencyE(ptr noundef nonnull align 8 dereferenceable(24) %i.ci, ptr noundef nonnull %i.cb)
  br label %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE9rpop_backEPPN18dependency_managerINS0_22expr_dependency_configEE10dependencyERj.exit

bb.l:                                             ; preds = %.lr.ph38
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 2 uses
  %i.ck = load ptr, ptr %2, align 8, !tbaa !253   ; 3 uses
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE8capacityEPPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE.exit.i26, label %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE8capacityEPPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE.exit.thread.i

_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE8capacityEPPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE.exit.i26: ; preds = %bb.l
  %i.cm = icmp eq i32 %.03237, 0
  br i1 %i.cm, label %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE8capacityEPPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE.exit.i.i, label %bb.m

_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE8capacityEPPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE.exit.thread.i: ; preds = %bb.l
  %i.cn = zext i32 %.03237 to i64                 ; 2 uses
  %i.co = getelementptr inbounds i8, ptr %i.ck, i64 -8
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !245
  %i.cq = icmp eq i64 %i.cp, %i.cn
  br i1 %i.cq, label %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE8capacityEPPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE.exit.i.i, label %bb.m

_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE8capacityEPPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE.exit.i.i: ; preds = %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE8capacityEPPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE.exit.thread.i, %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE8capacityEPPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE.exit.i26
  %i.cr = phi i64 [ 0, %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE8capacityEPPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE.exit.i26 ], [ %i.cn, %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE8capacityEPPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE.exit.thread.i ] ; 8 uses
  %i.cs = icmp eq i64 %i.cr, 0                    ; 2 uses
  %i.ct = mul nuw nsw i64 %i.cr, 3
  %i.cu = add nuw nsw i64 %i.ct, 1
  %i.cv = lshr i64 %i.cu, 1
  %i.cw = select i1 %i.cs, i64 2, i64 %i.cv       ; 2 uses
  %i.cx = load ptr, ptr %i.ac, align 8, !tbaa !251, !nonnull !165, !align !166
  %i.cy = shl nuw nsw i64 %i.cw, 3
  %i.cz = add nuw nsw i64 %i.cy, 8
  %i.da = tail call noundef ptr @_ZN22small_object_allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(520) %i.cx, i64 noundef %i.cz) ; 3 uses
  %i.db = ptrtoaddr ptr %i.da to i64
  store i64 %i.cw, ptr %i.da, align 8, !tbaa !245
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 8 uses
  br i1 %i.cs, label %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE6expandERPPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE8capacityEPPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE.exit.i.i
  %i.dd = load ptr, ptr %2, align 8, !tbaa !253   ; 8 uses
  %min.iters.check = icmp samesign ult i64 %i.cr, 6
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.i.i
  %i.de = ptrtoaddr ptr %i.dd to i64
  %i.df = sub i64 %i.db, %i.de
  %i.dg = add i64 %i.df, 7
  %diff.check = icmp ult i64 %i.dg, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cr, 4294967292              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %index ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %wide.load = load <2 x ptr>, ptr %i.dh, align 8, !tbaa !205
  %wide.load59 = load <2 x ptr>, ptr %i.di, align 8, !tbaa !205
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %index ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  store <2 x ptr> %wide.load, ptr %i.dj, align 8, !tbaa !205
  store <2 x ptr> %wide.load59, ptr %i.dk, align 8, !tbaa !205
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dl = icmp eq i64 %index.next, %n.vec
  br i1 %i.dl, label %middle.block, label %vector.body, !llvm.loop !618

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cr, %n.vec
  br i1 %cmp.n, label %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE8capacityEPPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE.exit.i.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader.i.i, %middle.block
  %.016.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.cr, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.016.i.i.prol = phi i64 [ %i.dp, %scalar.ph.prol ], [ %.016.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %.016.i.i.prol
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !205
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %.016.i.i.prol
  store ptr %i.dn, ptr %i.do, align 8, !tbaa !205
  %i.dp = add nuw nsw i64 %.016.i.i.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !619

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.016.i.i.unr = phi i64 [ %.016.i.i.ph, %scalar.ph.preheader ], [ %i.dp, %scalar.ph.prol ]
  %i.dq = sub nsw i64 %.016.i.i.ph, %i.cr
  %i.dr = icmp ugt i64 %i.dq, -4
  br i1 %i.dr, label %_ZN14parray_managerIN11ast_manager28expr_dependency_array_configEE8capacityEPPN18dependency_managerINS0_22expr_dependency_configEE10dependencyE.exit.i.i.i, label %scalar.ph
end_hunk_0
