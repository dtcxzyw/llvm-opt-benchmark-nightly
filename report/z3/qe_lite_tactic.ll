inline.NumInlined: 5152
inline.NumDeleted: 1470
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 64
loop-unroll.NumUnrolled: 70
begin_hunk_0_@_ZN20dependent_expr_state4pushEv:bb.a
  %i.aw = getelementptr inbounds i8, ptr %i.as, i64 -8
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !206
  %i.ay = icmp eq i32 %i.av, %i.ax
  br i1 %i.ay, label %.noexc12, label %bb.i

.noexc12:                                         ; preds = %bb.h, %_ZN20dependent_expr_state4thawC2ERS_.exit
  tail call void @_ZN6vectorIP5trailLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(56) %i.a)
  %.pre.i.i8 = load ptr, ptr %i.a, align 8, !tbaa !915 ; 2 uses
  %.phi.trans.insert.i.i9 = getelementptr inbounds i8, ptr %.pre.i.i8, i64 -4
  %.pre2.i.i10 = load i32, ptr %.phi.trans.insert.i.i9, align 4, !tbaa !206
  br label %bb.i

bb.i:                                             ; preds = %.noexc12, %bb.h
  %i.az = phi i32 [ %.pre2.i.i10, %.noexc12 ], [ %i.av, %bb.h ] ; 2 uses
  %i.ba = phi ptr [ %.pre.i.i8, %.noexc12 ], [ %i.as, %bb.h ] ; 2 uses
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 -4
  %i.bc = zext i32 %i.az to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bc
  store ptr %i.aq, ptr %i.bd, align 8, !tbaa !916
  %i.be = add i32 %i.az, 1
  store i32 %i.be, ptr %i.bb, align 4, !tbaa !206
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5trailD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

declare void @_ZN6region10push_scopeEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6vectorIP5trailLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %2 = alloca %"class.std::allocator", align 1    ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !915    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 24) ; 3 uses
  store i32 2, ptr %i.c, align 4, !tbaa !206
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 0, ptr %i.d, align 4, !tbaa !206
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.e, ptr %0, align 8, !tbaa !915
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.a, i64 -8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !206  ; 3 uses
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
  %i.o = tail call ptr @__cxa_allocate_exception(i64 40) #25 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.1, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.o, align 8, !tbaa !16
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 3 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !366
  %i.r = load ptr, ptr %1, align 8, !tbaa !368    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !370  ; 3 uses
  %i.w = icmp ult i64 %i.v, 16
  call void @llvm.assume(i1 %i.w)
  %i.x = add nuw nsw i64 %i.v, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.x, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  store ptr %i.r, ptr %i.p, align 8, !tbaa !368
  %i.y = load i64, ptr %i.s, align 8, !tbaa !371
  store i64 %i.y, ptr %i.q, align 8, !tbaa !371
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !370
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.z = phi i64 [ %i.v, %bb.g ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %i.z, ptr %i.ab, align 8, !tbaa !370
  store ptr %i.s, ptr %1, align 8, !tbaa !368
  store i64 0, ptr %i.aa, align 8, !tbaa !370
  store i8 0, ptr %i.s, align 8, !tbaa !371
  invoke void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #28
          to label %bb.m unwind label %bb.h

bb.h:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = load ptr, ptr %1, align 8, !tbaa !368   ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.s
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %bb.h
  %i.af = load i64, ptr %i.s, align 8, !tbaa !371
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  call void @__cxa_free_exception(ptr %i.o) #25
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %bb.i
  %.pn32 = phi { ptr, i32 } [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ah, %bb.i ]
  resume { ptr, i32 } %.pn32

bb.k:                                             ; preds = %bb.d
  %i.ai = zext i32 %i.l to i64
  %i.aj = tail call noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.f, i64 noundef %i.ai) ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.ak, ptr %0, align 8, !tbaa !915
  store i32 %i.j, ptr %i.aj, align 4, !tbaa !206
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.b
  ret void

bb.m:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  unreachable
}

declare noundef ptr @_ZN6region8allocateEm(ptr noundef nonnull align 8 dereferenceable(40), i64 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN11value_trailIjED0Ev(ptr noundef nonnull align 8 dereferenceable(20) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN11value_trailIjE4undoEv(ptr noundef nonnull align 8 dereferenceable(20) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !1001
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1004, !nonnull !149, !align !1005
  store i32 %i.b, ptr %i.d, align 4, !tbaa !206
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN20dependent_expr_state4thawD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN20dependent_expr_state4thaw4undoEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1006, !nonnull !149, !align !150 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !593  ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit, label %_ZNK15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit

_ZNK15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.d, i64 -4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !206  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !1008 ; 2 uses
  %i.j = icmp ugt i32 %i.g, %i.i
  br i1 %i.j, label %.lr.ph.preheader, label %_ZN6vectorIP9func_declLb0EjE3endEv.exit.i

.lr.ph.preheader:                                 ; preds = %_ZNK15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %1 = zext i32 %i.g to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !1006 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 88
  %.pre5 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !593 ; 2 uses
  %i.k = icmp eq ptr %.pre5, null
  br i1 %i.k, label %_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit, label %_ZN6vectorIP9func_declLb0EjE3endEv.exit.i

_ZN6vectorIP9func_declLb0EjE3endEv.exit.i:        ; preds = %_ZNK15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, %._crit_edge
  %.pn = phi ptr [ %.pre, %._crit_edge ], [ %i.b, %_ZNK15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit ] ; 2 uses
  %.lcssa15 = phi i32 [ %i.al, %._crit_edge ], [ %i.i, %_ZNK15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit ] ; 3 uses
  %i.l = phi ptr [ %.pre5, %._crit_edge ], [ %i.d, %_ZNK15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit ] ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.pn, i64 80
  %i.n = getelementptr inbounds nuw i8, ptr %.pn, i64 88
  %i.o = getelementptr inbounds i8, ptr %i.l, i64 -4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !206  ; 2 uses
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.q
  %i.s = icmp ugt i32 %i.p, %.lcssa15
  br i1 %i.s, label %.lr.ph.i.i.preheader, label %_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i

.lr.ph.i.i.preheader:                             ; preds = %_ZN6vectorIP9func_declLb0EjE3endEv.exit.i
  %i.t = zext i32 %.lcssa15 to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.t
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.06.i.i = phi ptr [ %i.ab, %_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i ], [ %i.u, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.v = load ptr, ptr %.06.i.i, align 8, !tbaa !594 ; 3 uses
  %i.w = load ptr, ptr %i.m, align 8, !tbaa !979, !nonnull !149, !align !150
  %.not.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i, label %_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !209
  %i.z = add i32 %i.y, -1                         ; 2 uses
  store i32 %i.z, ptr %i.x, align 4, !tbaa !209
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.c, label %_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.w, ptr noundef nonnull %i.v)
  br label %_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i

_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i: ; preds = %bb.c, %bb.b, %.lr.ph.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.ac = icmp ult ptr %i.ab, %i.r
  br i1 %i.ac, label %.lr.ph.i.i, label %_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, !llvm.loop !980

_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i: ; preds = %_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.pre.i = load ptr, ptr %i.n, align 8, !tbaa !593 ; 2 uses
  %.not.i.i = icmp eq ptr %.pre.i, null
  br i1 %.not.i.i, label %_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit, label %_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i

_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i: ; preds = %_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZN6vectorIP9func_declLb0EjE3endEv.exit.i
  %i.ad = phi ptr [ %.pre.i, %_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i ], [ %i.l, %_ZN6vectorIP9func_declLb0EjE3endEv.exit.i ]
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -4
  store i32 %.lcssa15, ptr %i.ae, align 4, !tbaa !206
  br label %_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit

_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit: ; preds = %bb.a, %._crit_edge, %_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %1, %.lr.ph.preheader ], [ %2, %.lr.ph ]
  %2 = add i64 %indvars.iv, -1                    ; 3 uses
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !1006, !nonnull !149, !align !150 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 88
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !593
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %2
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !594
  tail call void @_ZN8ast_mark4markEP3astb(ptr noundef nonnull align 8 dereferenceable(56) %i.ag, ptr noundef %i.ak, i1 noundef zeroext false)
  %i.al = load i32, ptr %i.h, align 8, !tbaa !1008 ; 2 uses
  %3 = zext i32 %i.al to i64
  %i.am = icmp ugt i64 %2, %3
  br i1 %i.am, label %.lr.ph, label %._crit_edge, !llvm.loop !1009
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN27dependent_expr_state_tactic4initEv(ptr noundef nonnull align 8 dereferenceable(337) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !914
  %.not9 = icmp eq ptr %i.b, null
  br i1 %.not9, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !309
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !957, !nonnull !149, !align !150
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = tail call noundef ptr %i.d(ptr noundef nonnull align 8 dereferenceable(952) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(152) %i.h) ; 2 uses
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !914  ; 5 uses
  %.not.i = icmp eq ptr %i.j, %i.i
  br i1 %.not.i, label %_ZN10scoped_ptrI25dependent_expr_simplifierEaSEPS0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_Z7deallocI25dependent_expr_simplifierEvPT_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.j) #25, !inline_history !956
  tail call void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.j)
  br label %_Z7deallocI25dependent_expr_simplifierEvPT_.exit.i

_Z7deallocI25dependent_expr_simplifierEvPT_.exit.i: ; preds = %bb.d, %bb.c
  store ptr %i.i, ptr %i.a, align 8, !tbaa !914
  br label %_ZN10scoped_ptrI25dependent_expr_simplifierEaSEPS0_.exit

_ZN10scoped_ptrI25dependent_expr_simplifierEaSEPS0_.exit: ; preds = %bb.b, %_Z7deallocI25dependent_expr_simplifierEvPT_.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 280
  tail call void @_ZN10statistics5resetEv(ptr noundef nonnull align 8 dereferenceable(16) %i.n)
  tail call void @_ZN20dependent_expr_state4pushEv(ptr noundef nonnull align 8 dereferenceable(152) %i.h)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !204  ; 4 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %.loopexit, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit: ; preds = %_ZN10scoped_ptrI25dependent_expr_simplifierEaSEPS0_.exit
  %i.r = getelementptr inbounds i8, ptr %i.p, i64 -4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !206  ; 2 uses
  %i.t = zext i32 %i.s to i64
  %i.u = shl nuw nsw i64 %i.t, 3
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.u
  %.not11 = icmp eq i32 %i.s, 0
  br i1 %.not11, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit, %.lr.ph
  %.012 = phi ptr [ %i.x, %.lr.ph ], [ %i.p, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit ] ; 2 uses
  %i.w = load ptr, ptr %.012, align 8, !tbaa !14
  tail call void @_ZN20dependent_expr_state6freezeEP4expr(ptr noundef nonnull align 8 dereferenceable(152) %i.h, ptr noundef %i.w)
  %i.x = getelementptr inbounds nuw i8, ptr %.012, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.x, %i.v
  br i1 %.not, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph, %_ZN10scoped_ptrI25dependent_expr_simplifierEaSEPS0_.exit, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit, %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !920
  %.not10 = icmp eq ptr %i.z, null
  br i1 %.not10, label %bb.e, label %_ZN10scoped_ptrI26model_reconstruction_trailEaSEPS0_.exit

bb.e:                                             ; preds = %.loopexit
  %i.aa = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 104) ; 10 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !957, !nonnull !149, !align !150 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr %i.ac, ptr %i.aa, align 8, !tbaa !49
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !277
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store ptr null, ptr %i.af, align 8, !tbaa !981
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ah = ptrtoint ptr %i.ac to i64
  store i64 %i.ah, ptr %i.ag, align 8, !tbaa !49
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store ptr null, ptr %i.ai, align 8, !tbaa !593
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV8ast_mark, i64 16), ptr %i.aj, align 8, !tbaa !16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i8 0, i64 16, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %i.aa, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.al, i8 0, i64 17, i1 false)
  %i.am = load ptr, ptr %i.y, align 8, !tbaa !920 ; 4 uses
  %.not.i8 = icmp eq ptr %i.am, %i.aa
  br i1 %.not.i8, label %_ZN10scoped_ptrI26model_reconstruction_trailEaSEPS0_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %_Z7deallocI26model_reconstruction_trailEvPT_.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN26model_reconstruction_trailD2Ev(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.am) #25
  tail call void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.am)
  br label %_Z7deallocI26model_reconstruction_trailEvPT_.exit.i

_Z7deallocI26model_reconstruction_trailEvPT_.exit.i: ; preds = %bb.g, %bb.f
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !920
  br label %_ZN10scoped_ptrI26model_reconstruction_trailEaSEPS0_.exit

_ZN10scoped_ptrI26model_reconstruction_trailEaSEPS0_.exit: ; preds = %_Z7deallocI26model_reconstruction_trailEvPT_.exit.i, %bb.e, %.loopexit
  ret void
}

declare void @_ZN10params_ref4copyERKS_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN10statistics5resetEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare void @_ZN13tactic_reportC1EPKcRK4goal(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 8 dereferenceable(124)) unnamed_addr #2

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #19

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN16tactic_exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV16tactic_exception, i64 16), ptr %0, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !368  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !371
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #25
  ret void
}

declare void @_ZN4goal9elim_trueEv(ptr noundef nonnull align 8 dereferenceable(124)) local_unnamed_addr #2

declare void @_ZN4goal17elim_redundanciesEv(ptr noundef nonnull align 8 dereferenceable(124)) local_unnamed_addr #2

declare void @_ZN26model_reconstruction_trail19get_model_converterEv(ptr dead_on_unwind writable sret(%class.ref.138) align 8, ptr noundef nonnull align 8 dereferenceable(97)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3refI15model_converterED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !942    ; 5 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN3refI15model_converterE7dec_refEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !943
  %i.d = add i32 %i.c, -1                         ; 2 uses
  store i32 %i.d, ptr %i.b, align 8, !tbaa !943
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %_ZN3refI15model_converterE7dec_refEv.exit

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %i.a) #25, !inline_history !1010
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull align 8 dereferenceable(12) %i.a)
          to label %_ZN3refI15model_converterE7dec_refEv.exit unwind label %bb.d

_ZN3refI15model_converterE7dec_refEv.exit:        ; preds = %bb.b, %bb.a, %bb.c
  ret void

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #26
  unreachable
}

; Function Attrs: nounwind
declare void @_ZN13tactic_reportD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #8

; Function Attrs: nounwind
declare void @_ZN17statistics_reportD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40)) unnamed_addr #8

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN16tactic_exceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV16tactic_exception, i64 16), ptr %0, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !368  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN16tactic_exceptionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !371
  %i.f = add i64 %i.e, 1
end_hunk_0
