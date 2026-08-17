inline.NumInlined: 287
inline.NumDeleted: 161
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN12_GLOBAL__N_127lemma_inductive_generalizer16generalize_rangeEjj:bb.a
  %i.gr = icmp eq ptr %i.gp, %i.gq
  %i.gs = icmp eq i64 %indvars.iv.i, %indvars.iv
  %or.cond.i = or i1 %i.gs, %i.gr
  br i1 %or.cond.i, label %bb.al, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.not.i.i.i.i17.i = icmp eq ptr %i.gp, null
  br i1 %.not.i.i.i.i17.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gp, i64 8 ; 2 uses
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !135
  %i.gv = add i32 %i.gu, 1
  store i32 %i.gv, ptr %i.gt, align 4, !tbaa !135
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i: ; preds = %bb.y, %bb.x
  %i.gw = icmp eq ptr %i.gm, null
  br i1 %i.gw, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i
  %i.gx = getelementptr inbounds i8, ptr %i.gm, i64 -4
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !168 ; 2 uses
  %i.gz = getelementptr inbounds i8, ptr %i.gm, i64 -8
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !168
  %i.hb = icmp eq i32 %i.gy, %i.ha
  br i1 %i.hb, label %bb.aa, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i

bb.aa:                                            ; preds = %bb.z, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i
  %i.hc = icmp eq ptr %i.gl, null
  br i1 %i.hc, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.hd = call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 24) ; 3 uses
  store i32 2, ptr %i.hd, align 4, !tbaa !168
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 4
  store i32 0, ptr %i.he, align 4, !tbaa !168
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hd, i64 8 ; 2 uses
  store ptr %i.hf, ptr %i.g, align 8, !tbaa !166
  br label %_ZN6vectorIP4exprLb0EjE13expand_vectorEv.exit

bb.ac:                                            ; preds = %bb.aa
  %i.hg = getelementptr inbounds i8, ptr %i.gl, i64 -8 ; 2 uses
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !168 ; 3 uses
  %i.hi = mul i32 %i.hh, 3
  %i.hj = add i32 %i.hi, 1
  %i.hk = lshr i32 %i.hj, 1                       ; 3 uses
  %i.hl = shl i32 %i.hk, 3
  %i.hm = add i32 %i.hl, 8                        ; 2 uses
  %.not.i8 = icmp ugt i32 %i.hk, %i.hh
  br i1 %.not.i8, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.hn = shl i32 %i.hh, 3
  %i.ho = add i32 %i.hn, 8
  %.not27.i = icmp ugt i32 %i.hm, %i.ho
  br i1 %.not27.i, label %bb.aj, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.hp = call ptr @__cxa_allocate_exception(i64 40) #18 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.af unwind label %bb.ai

bb.af:                                            ; preds = %bb.ae
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.hp, align 8, !tbaa !11
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 8 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hp, i64 24 ; 3 uses
  store ptr %i.hr, ptr %i.hq, align 8, !tbaa !235
  %i.hs = load ptr, ptr %3, align 8, !tbaa !237   ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.hu = icmp eq ptr %i.hs, %i.ht
  br i1 %i.hu, label %bb.ag, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.ag:                                            ; preds = %bb.af
  %i.hv = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.hw = load i64, ptr %i.hv, align 8, !tbaa !239 ; 3 uses
  %i.hx = icmp ult i64 %i.hw, 16
  call void @llvm.assume(i1 %i.hx)
  %i.hy = add nuw nsw i64 %i.hw, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.hr, ptr noundef nonnull align 8 dereferenceable(1) %i.ht, i64 %i.hy, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.af
  store ptr %i.hs, ptr %i.hq, align 8, !tbaa !237
  %i.hz = load i64, ptr %i.ht, align 8, !tbaa !240
  store i64 %i.hz, ptr %i.hr, align 8, !tbaa !240
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !239
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.ag
  %i.ia = phi i64 [ %i.hw, %bb.ag ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.ib = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hp, i64 16
  store i64 %i.ia, ptr %i.ic, align 8, !tbaa !239
  store ptr %i.ht, ptr %3, align 8, !tbaa !237
  store i64 0, ptr %i.ib, align 8, !tbaa !239
  store i8 0, ptr %i.ht, align 8, !tbaa !240
  invoke void @__cxa_throw(ptr nonnull %i.hp, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #21
          to label %bb.ak unwind label %bb.ah

bb.ah:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.id = landingpad { ptr, i32 }
          cleanup
  %i.ie = load ptr, ptr %3, align 8, !tbaa !237   ; 2 uses
  %i.if = icmp eq ptr %i.ie, %i.ht
  br i1 %i.if, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i: ; preds = %bb.ah
  %i.ig = load i64, ptr %i.ht, align 8, !tbaa !240
  %i.ih = add i64 %i.ig, 1
  call void @_ZdlPvm(ptr noundef %i.ie, i64 noundef %i.ih) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %common.resume

bb.ai:                                            ; preds = %bb.ae
  %i.ii = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @__cxa_free_exception(ptr %i.hp) #18
  br label %common.resume

bb.aj:                                            ; preds = %bb.ad
  %i.ij = zext i32 %i.hm to i64
  %i.ik = call noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.hg, i64 noundef %i.ij) ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 8 ; 2 uses
  store ptr %i.il, ptr %i.g, align 8, !tbaa !166
  store i32 %i.hk, ptr %i.ik, align 4, !tbaa !168
  br label %_ZN6vectorIP4exprLb0EjE13expand_vectorEv.exit

bb.ak:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  unreachable

_ZN6vectorIP4exprLb0EjE13expand_vectorEv.exit:    ; preds = %bb.ab, %bb.aj
  %.pre.i.i.i = phi ptr [ %i.hf, %bb.ab ], [ %i.il, %bb.aj ] ; 3 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds i8, ptr %.pre.i.i.i, i64 -4
  %.pre2.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !168
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i: ; preds = %_ZN6vectorIP4exprLb0EjE13expand_vectorEv.exit, %bb.z
  %i.im = phi ptr [ %.pre.i.i.i, %_ZN6vectorIP4exprLb0EjE13expand_vectorEv.exit ], [ %i.gl, %bb.z ]
  %i.in = phi ptr [ %.pre.i.i.i, %_ZN6vectorIP4exprLb0EjE13expand_vectorEv.exit ], [ %i.gm, %bb.z ] ; 3 uses
  %i.io = phi i32 [ %.pre2.i.i.i, %_ZN6vectorIP4exprLb0EjE13expand_vectorEv.exit ], [ %i.gy, %bb.z ] ; 2 uses
  %i.ip = getelementptr inbounds i8, ptr %i.in, i64 -4
  %i.iq = zext i32 %i.io to i64
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.in, i64 %i.iq
  store ptr %i.gp, ptr %i.ir, align 8, !tbaa !169
  %i.is = add i32 %i.io, 1
  store i32 %i.is, ptr %i.ip, align 4, !tbaa !168
  br label %bb.al

bb.al:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i, %bb.w
  %i.it = phi ptr [ %i.gl, %bb.w ], [ %i.im, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i ]
  %i.iu = phi ptr [ %i.gm, %bb.w ], [ %i.in, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.w, !llvm.loop !241

_ZN12_GLOBAL__N_127lemma_inductive_generalizer11generalize1Ej.exit: ; preds = %bb.c, %_ZN12_GLOBAL__N_127lemma_inductive_generalizer11is_eligibleEP4expr.exit.i, %_ZN12_GLOBAL__N_127lemma_inductive_generalizer15generalize_coreEj.exit.i
  %.0.i = phi i32 [ %.04.i.i, %_ZN12_GLOBAL__N_127lemma_inductive_generalizer15generalize_coreEj.exit.i ], [ 0, %_ZN12_GLOBAL__N_127lemma_inductive_generalizer11is_eligibleEP4expr.exit.i ], [ 0, %bb.c ]
  %i.iv = add i32 %.0.i, %.0714                   ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %2, %lftr.wideiv
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !242
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZN12_GLOBAL__N_127lemma_inductive_generalizer12weaken_rangeEjj(ptr noundef nonnull align 8 dereferenceable(320) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.std::allocator.96", align 1 ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"class.std::allocator.96", align 1 ; 4 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %7 = alloca %class.ref_vector, align 8          ; 8 uses
  %i.b = icmp ult i32 %1, %2
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 292 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.o = zext i32 %1 to i64
  %wide.trip.count = zext i32 %2 to i64
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN12_GLOBAL__N_127lemma_inductive_generalizer7weaken1Ej.exit, %bb.a
  %.07.lcssa = phi i32 [ 0, %bb.a ], [ %i.ih, %_ZN12_GLOBAL__N_127lemma_inductive_generalizer7weaken1Ej.exit ]
  ret i32 %.07.lcssa

bb.b:                                             ; preds = %.lr.ph, %_ZN12_GLOBAL__N_127lemma_inductive_generalizer7weaken1Ej.exit
  %indvars.iv = phi i64 [ %i.o, %.lr.ph ], [ %indvars.iv.next, %_ZN12_GLOBAL__N_127lemma_inductive_generalizer7weaken1Ej.exit ] ; 3 uses
  %.0734 = phi i32 [ 0, %.lr.ph ], [ %i.ih, %_ZN12_GLOBAL__N_127lemma_inductive_generalizer7weaken1Ej.exit ]
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !166  ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !169  ; 8 uses
  %.val.i = load i8, ptr %i.d, align 8, !tbaa !141, !range !179, !noundef !69
  %.val34.i = load i32, ptr %i.e, align 8
  %i.s = trunc nuw i8 %.val.i to i1
  br i1 %i.s, label %bb.c, label %_ZN12_GLOBAL__N_127lemma_inductive_generalizer11is_eligibleEP4expr.exit.thread.i

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.u = load i32, ptr %i.t, align 4
  %i.v = and i32 %i.u, 65535
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.d, label %_ZN12_GLOBAL__N_127lemma_inductive_generalizer7weaken1Ej.exit

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !209
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !213 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %_ZN12_GLOBAL__N_127lemma_inductive_generalizer11is_eligibleEP4expr.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = load i32, ptr %i.aa, align 8, !tbaa !216
  br label %_ZN12_GLOBAL__N_127lemma_inductive_generalizer11is_eligibleEP4expr.exit.i

_ZN12_GLOBAL__N_127lemma_inductive_generalizer11is_eligibleEP4expr.exit.i: ; preds = %bb.e, %bb.d
  %i.ad = phi i32 [ %i.ac, %bb.e ], [ -1, %bb.d ]
  %i.ae = icmp eq i32 %i.ad, %.val34.i
  br i1 %i.ae, label %_ZN12_GLOBAL__N_127lemma_inductive_generalizer11is_eligibleEP4expr.exit.thread.i, label %_ZN12_GLOBAL__N_127lemma_inductive_generalizer7weaken1Ej.exit

_ZN12_GLOBAL__N_127lemma_inductive_generalizer11is_eligibleEP4expr.exit.thread.i: ; preds = %_ZN12_GLOBAL__N_127lemma_inductive_generalizer11is_eligibleEP4expr.exit.i, %bb.b
  %i.af = load ptr, ptr %i.f, align 8, !tbaa !132 ; 2 uses
  %i.ag = icmp eq ptr %i.r, %i.af
  br i1 %i.ag, label %_ZN12_GLOBAL__N_127lemma_inductive_generalizer7weaken1Ej.exit, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i:           ; preds = %_ZN12_GLOBAL__N_127lemma_inductive_generalizer11is_eligibleEP4expr.exit.thread.i
  %i.ah = getelementptr inbounds i8, ptr %i.p, i64 -4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !168 ; 4 uses
  store ptr %i.af, ptr %i.q, align 8, !tbaa !169
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.aj = load ptr, ptr %i.g, align 8, !tbaa !243, !nonnull !69, !align !70
  %i.ak = ptrtoint ptr %i.aj to i64
  store i64 %i.ak, ptr %7, align 8, !tbaa !71
  store ptr null, ptr %i.h, align 8, !tbaa !166
  %.not.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !135
  %i.an = add i32 %i.am, 1
  store i32 %i.an, ptr %i.al, align 4, !tbaa !135
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i: ; preds = %bb.f, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.i

bb.g:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i
  %.pre.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !166 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds i8, ptr %.pre.i.i.i, i64 -4 ; 2 uses
  %.pre2.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !168 ; 2 uses
  %i.ao = zext i32 %.pre2.i.i.i to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i, i64 %i.ao
  store ptr %i.r, ptr %i.ap, align 8, !tbaa !169
  %i.aq = add i32 %.pre2.i.i.i, 1
  store i32 %i.aq, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !168
  %i.ar = load ptr, ptr %i.g, align 8, !tbaa !243, !nonnull !69, !align !70
  invoke void @_ZN6spacer15expand_literalsER11ast_managerR10ref_vectorI4exprS0_E(ptr noundef nonnull align 8 dereferenceable(952) %i.ar, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.i

bb.h:                                             ; preds = %bb.g
  %i.as = load ptr, ptr %i.h, align 8, !tbaa !166 ; 4 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !169
  %.not.i = icmp eq ptr %i.at, %i.r
  br i1 %.not.i, label %_ZN6vectorIP4exprLb0EjE6shrinkEj.exit.i, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit.i

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit.i: ; preds = %bb.h
  %i.au = getelementptr inbounds i8, ptr %i.as, i64 -4
  %i.av = load i32, ptr %i.au, align 4, !tbaa !168 ; 2 uses
  %i.aw = zext i32 %i.av to i64
  %.idx.i = shl nuw nsw i64 %i.aw, 3
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 %.idx.i
  %.not3065.i = icmp eq i32 %i.av, 0
  br i1 %.not3065.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.ag, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit.i
  %i.ay = load ptr, ptr %i.c, align 8, !tbaa !166 ; 2 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit36.i, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit36.thread.i

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit36.i:         ; preds = %._crit_edge.i
  %notsub.i = add i32 %i.ai, -1
  %i.ba = icmp ult i32 %notsub.i, -2
  br i1 %i.ba, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit46.i, label %bb.ai

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit36.thread.i:  ; preds = %._crit_edge.i
  %i.bb = getelementptr inbounds i8, ptr %i.ay, i64 -4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !168 ; 2 uses
  %i.bd = sub i32 %i.bc, %i.ai
  %i.be = icmp ugt i32 %i.bd, 1
  br i1 %i.be, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit46.i, label %bb.ai

.loopexit.i:                                      ; preds = %bb.ap
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.i:                    ; preds = %bb.ak
  %lpad.loopexit62.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %bb.ar, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit46.i, %bb.g, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i
  %lpad.loopexit.split-lp63.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.lr.ph.i:                                         ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit.i, %bb.ag
  %.02466.i = phi ptr [ %i.ex, %bb.ag ], [ %i.as, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit.i ] ; 2 uses
  %i.bf = load ptr, ptr %.02466.i, align 8, !tbaa !169 ; 4 uses
  %i.bg = load ptr, ptr %i.c, align 8, !tbaa !166 ; 4 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i
  %i.bi = getelementptr inbounds i8, ptr %i.bg, i64 -4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !168 ; 5 uses
  %i.bk = getelementptr inbounds i8, ptr %i.bg, i64 -8 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !168
  %i.bm = icmp eq i32 %i.bj, %i.bl
  br i1 %i.bm, label %bb.k, label %bb.t

bb.j:                                             ; preds = %.lr.ph.i
  %i.bn = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 24)
          to label %.noexc20 unwind label %bb.ah  ; 3 uses

.noexc20:                                         ; preds = %bb.j
  store i32 2, ptr %i.bn, align 4, !tbaa !168
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  store i32 0, ptr %i.bo, align 4, !tbaa !168
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 2 uses
  store ptr %i.bp, ptr %i.c, align 8, !tbaa !166
  br label %.noexc37.i

bb.k:                                             ; preds = %bb.i
  %i.bq = mul i32 %i.bj, 3
  %i.br = add i32 %i.bq, 1
  %i.bs = lshr i32 %i.br, 1                       ; 3 uses
  %i.bt = shl i32 %i.bs, 3
  %i.bu = add i32 %i.bt, 8                        ; 2 uses
  %.not.i10 = icmp ugt i32 %i.bs, %i.bj
  br i1 %.not.i10, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bv = shl i32 %i.bj, 3
  %i.bw = add i32 %i.bv, 8
  %.not27.i19 = icmp ugt i32 %i.bu, %i.bw
  br i1 %.not27.i19, label %bb.r, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bx = call ptr @__cxa_allocate_exception(i64 40) #18 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.n unwind label %bb.q

bb.n:                                             ; preds = %bb.m
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.bx, align 8, !tbaa !11
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 24 ; 3 uses
  store ptr %i.bz, ptr %i.by, align 8, !tbaa !235
  %i.ca = load ptr, ptr %3, align 8, !tbaa !237   ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.cc = icmp eq ptr %i.ca, %i.cb
  br i1 %i.cc, label %bb.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i12

bb.o:                                             ; preds = %bb.n
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !239 ; 3 uses
  %i.cf = icmp ult i64 %i.ce, 16
  call void @llvm.assume(i1 %i.cf)
  %i.cg = add nuw nsw i64 %i.ce, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bz, ptr noundef nonnull align 8 dereferenceable(1) %i.cb, i64 %i.cg, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i12: ; preds = %bb.n
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_127lemma_inductive_generalizer12weaken_rangeEjj:bb.a
  store i32 %i.dp, ptr %i.ep, align 4, !tbaa !168
  br label %.noexc43.i

bb.af:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  unreachable

.noexc43.i:                                       ; preds = %.noexc9, %.noexc
  %.pre.i.i40.i = phi ptr [ %i.eq, %.noexc9 ], [ %i.dm, %.noexc ] ; 2 uses
  %.phi.trans.insert.i.i41.i = getelementptr inbounds i8, ptr %.pre.i.i40.i, i64 -4
  %.pre2.i.i42.i = load i32, ptr %.phi.trans.insert.i.i41.i, align 4, !tbaa !168
  br label %bb.ag

bb.ag:                                            ; preds = %.noexc43.i, %bb.v
  %i.er = phi i32 [ %.pre2.i.i42.i, %.noexc43.i ], [ %i.dg, %bb.v ] ; 2 uses
  %i.es = phi ptr [ %.pre.i.i40.i, %.noexc43.i ], [ %i.dd, %bb.v ] ; 2 uses
  %i.et = getelementptr inbounds i8, ptr %i.es, i64 -4
  %i.eu = zext i32 %i.er to i64
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %i.eu
  store ptr %i.bf, ptr %i.ev, align 8, !tbaa !169
  %i.ew = add i32 %i.er, 1
  store i32 %i.ew, ptr %i.et, align 4, !tbaa !168
  %i.ex = getelementptr inbounds nuw i8, ptr %.02466.i, i64 8 ; 2 uses
  %.not30.i = icmp eq ptr %i.ex, %i.ax
  br i1 %.not30.i, label %._crit_edge.i, label %.lr.ph.i

bb.ah:                                            ; preds = %bb.r, %bb.j, %bb.ae, %bb.w
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit46.i:         ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit36.thread.i, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit36.i
  %.0.i45.i = phi i32 [ 0, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit36.i ], [ %i.bc, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit36.thread.i ]
  %i.ez = invoke fastcc noundef i32 @_ZN12_GLOBAL__N_127lemma_inductive_generalizer16generalize_rangeEjj(ptr noundef nonnull align 8 dereferenceable(320) %0, i32 noundef %i.ai, i32 noundef %.0.i45.i)
          to label %_ZN12_GLOBAL__N_127lemma_inductive_generalizer17is_cube_inductiveEv.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.i

bb.ai:                                            ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit36.thread.i, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit36.i
  %i.fa = load ptr, ptr %i.k, align 8, !tbaa !166 ; 5 uses
  %i.fb = icmp eq ptr %i.fa, null
  br i1 %i.fb, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit.i.i.i, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i.i.i

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i.i.i:     ; preds = %bb.ai
  %i.fc = getelementptr inbounds i8, ptr %i.fa, i64 -4
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !168 ; 2 uses
  %i.fe = zext i32 %i.fd to i64
  %i.ff = shl nuw nsw i64 %i.fe, 3
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.ff
  %.not.i.i.i.i = icmp eq i32 %i.fd, 0
  br i1 %.not.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i.i.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.fn, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i.i.i.i ], [ %i.fa, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i.i.i ] ; 2 uses
  %i.fh = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !169 ; 3 uses
  %i.fi = load ptr, ptr %i.j, align 8, !tbaa !170, !nonnull !69, !align !70
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.fh, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 8 ; 2 uses
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !135
  %i.fl = add i32 %i.fk, -1                       ; 2 uses
  store i32 %i.fl, ptr %i.fj, align 4, !tbaa !135
  %i.fm = icmp eq i32 %i.fl, 0
  br i1 %i.fm, label %bb.ak, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i.i.i.i

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.fi, ptr noundef nonnull %i.fh)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i.i.i.i: ; preds = %bb.ak, %bb.aj, %.lr.ph.i.i.i.i.i
  %i.fn = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 8 ; 2 uses
  %i.fo = icmp ult ptr %i.fn, %i.fg
  br i1 %i.fo, label %.lr.ph.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i.i.i.i, !llvm.loop !171

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i.i.i.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i.i.i.i
  %.pre.i.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !166 ; 2 uses
  %.not.i.i.i.i47.i = icmp eq ptr %.pre.i.i.i.i, null
  br i1 %.not.i.i.i.i47.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i.i.i.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i.i.i.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i.i.i.i, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i.i.i
  %i.fp = phi ptr [ %.pre.i.i.i.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i.i.i.i ], [ %i.fa, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i.i.i ] ; 2 uses
  %i.fq = getelementptr inbounds i8, ptr %i.fp, i64 -4
  store i32 0, ptr %i.fq, align 4, !tbaa !168
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit.i.i.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit.i.i.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i.i.i.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i.i.i.i, %bb.ai
  %i.fr = phi ptr [ null, %bb.ai ], [ null, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i.i.i.i ], [ %i.fp, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i.i.i.i ] ; 4 uses
  %i.fs = load ptr, ptr %i.c, align 8, !tbaa !166 ; 2 uses
  %i.ft = icmp eq ptr %i.fs, null
  br i1 %i.ft, label %_ZN12_GLOBAL__N_127lemma_inductive_generalizer17load_cube_to_coreEv.exit.i.i, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i.i

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i.i:       ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit.i.i.i
  %i.fu = getelementptr inbounds i8, ptr %i.fs, i64 -4
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !168 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.fv, 0
  br i1 %.not.i.i.i, label %_ZN12_GLOBAL__N_127lemma_inductive_generalizer17load_cube_to_coreEv.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i.i
  %wide.trip.count.i.i.i = zext i32 %i.fv to i64
  br label %bb.al

bb.al:                                            ; preds = %bb.aq, %.lr.ph.i.i.i
  %i.fw = phi ptr [ %i.fr, %.lr.ph.i.i.i ], [ %i.gt, %bb.aq ] ; 2 uses
  %i.fx = phi ptr [ %i.fr, %.lr.ph.i.i.i ], [ %i.gu, %bb.aq ] ; 5 uses
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.aq ] ; 2 uses
  %i.fy = load ptr, ptr %i.c, align 8, !tbaa !166
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.fy, i64 %indvars.iv.i.i.i
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !169 ; 4 uses
  %i.gb = load ptr, ptr %i.f, align 8, !tbaa !132
  %i.gc = icmp eq ptr %i.ga, %i.gb
  br i1 %i.gc, label %bb.aq, label %bb.am

bb.am:                                            ; preds = %bb.al
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ga, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ga, i64 8 ; 2 uses
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !135
  %i.gf = add i32 %i.ge, 1
  store i32 %i.gf, ptr %i.gd, align 4, !tbaa !135
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i: ; preds = %bb.an, %bb.am
  %i.gg = icmp eq ptr %i.fx, null
  br i1 %i.gg, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i
  %i.gh = getelementptr inbounds i8, ptr %i.fx, i64 -4
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !168 ; 2 uses
  %i.gj = getelementptr inbounds i8, ptr %i.fx, i64 -8
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !168
  %i.gl = icmp eq i32 %i.gi, %i.gk
  br i1 %i.gl, label %bb.ap, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i

bb.ap:                                            ; preds = %bb.ao, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %.noexc49.i unwind label %.loopexit.i

.noexc49.i:                                       ; preds = %bb.ap
  %.pre.i.i.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !166 ; 3 uses
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i, i64 -4
  %.pre2.i.i.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i.i.i, align 4, !tbaa !168
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i: ; preds = %.noexc49.i, %bb.ao
  %i.gm = phi ptr [ %.pre.i.i.i.i.i, %.noexc49.i ], [ %i.fw, %bb.ao ]
  %i.gn = phi ptr [ %.pre.i.i.i.i.i, %.noexc49.i ], [ %i.fx, %bb.ao ] ; 3 uses
  %i.go = phi i32 [ %.pre2.i.i.i.i.i, %.noexc49.i ], [ %i.gi, %bb.ao ] ; 2 uses
  %i.gp = getelementptr inbounds i8, ptr %i.gn, i64 -4
  %i.gq = zext i32 %i.go to i64
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %i.gq
  store ptr %i.ga, ptr %i.gr, align 8, !tbaa !169
  %i.gs = add i32 %i.go, 1
  store i32 %i.gs, ptr %i.gp, align 4, !tbaa !168
  br label %bb.aq

bb.aq:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i, %bb.al
  %i.gt = phi ptr [ %i.fw, %bb.al ], [ %i.gm, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i ] ; 2 uses
  %i.gu = phi ptr [ %i.fx, %bb.al ], [ %i.gn, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i ]
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %_ZN12_GLOBAL__N_127lemma_inductive_generalizer17load_cube_to_coreEv.exit.i.i, label %bb.al, !llvm.loop !244

_ZN12_GLOBAL__N_127lemma_inductive_generalizer17load_cube_to_coreEv.exit.i.i: ; preds = %bb.aq, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit.i.i.i
  %i.gv = phi ptr [ %i.fr, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i.i ], [ %i.fr, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit.i.i.i ], [ %i.gt, %bb.aq ] ; 2 uses
  %i.gw = icmp eq ptr %i.gv, null
  br i1 %i.gw, label %_ZN6vectorIP4exprLb0EjE6shrinkEj.exit.i, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit.i.i

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit.i.i: ; preds = %_ZN12_GLOBAL__N_127lemma_inductive_generalizer17load_cube_to_coreEv.exit.i.i
  %i.gx = getelementptr inbounds i8, ptr %i.gv, i64 -4
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !168
  %i.gz = icmp eq i32 %i.gy, 0
  br i1 %i.gz, label %_ZN6vectorIP4exprLb0EjE6shrinkEj.exit.i, label %bb.ar

bb.ar:                                            ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.ha = load ptr, ptr %i.l, align 8, !tbaa !199
  %i.hb = load i32, ptr %i.m, align 4, !tbaa !205
  %i.hc = load i32, ptr %i.n, align 8, !tbaa !200
  %i.hd = invoke noundef zeroext i1 @_ZN6spacer16pred_transformer15check_inductiveEjR10ref_vectorI4expr11ast_managerERjj(ptr noundef nonnull align 8 dereferenceable(472) %i.ha, i32 noundef %i.hb, ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef %i.hc)
          to label %.noexc50.i unwind label %.loopexit.split-lp.loopexit.split-lp.i ; 2 uses

.noexc50.i:                                       ; preds = %bb.ar
  br i1 %i.hd, label %bb.as, label %bb.at

bb.as:                                            ; preds = %.noexc50.i
  %i.he = load i32, ptr %i.m, align 4, !tbaa !168
  %i.hf = load i32, ptr %i.a, align 4, !tbaa !168
  %i.hg = call i32 @llvm.umax.i32(i32 %i.he, i32 %i.hf)
  store i32 %i.hg, ptr %i.m, align 4, !tbaa !205
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %.noexc50.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.hh = zext i1 %i.hd to i32
  br label %_ZN12_GLOBAL__N_127lemma_inductive_generalizer17is_cube_inductiveEv.exit.i

_ZN12_GLOBAL__N_127lemma_inductive_generalizer17is_cube_inductiveEv.exit.i: ; preds = %bb.at, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit46.i
  %.025.i = phi i32 [ %i.ez, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit46.i ], [ %i.hh, %bb.at ] ; 2 uses
  %i.hi = icmp eq i32 %.025.i, 0
  br i1 %i.hi, label %_ZN6vectorIP4exprLb0EjE6shrinkEj.exit.i, label %bb.au

_ZN6vectorIP4exprLb0EjE6shrinkEj.exit.i:          ; preds = %_ZN12_GLOBAL__N_127lemma_inductive_generalizer17is_cube_inductiveEv.exit.i, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit.i.i, %_ZN12_GLOBAL__N_127lemma_inductive_generalizer17load_cube_to_coreEv.exit.i.i, %bb.h
  %i.hj = load ptr, ptr %i.c, align 8, !tbaa !166 ; 2 uses
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.hj, i64 %indvars.iv
  store ptr %i.r, ptr %i.hk, align 8, !tbaa !169
  %i.hl = getelementptr inbounds i8, ptr %i.hj, i64 -4
  store i32 %i.ai, ptr %i.hl, align 4, !tbaa !168
  br label %bb.au

bb.au:                                            ; preds = %_ZN6vectorIP4exprLb0EjE6shrinkEj.exit.i, %_ZN12_GLOBAL__N_127lemma_inductive_generalizer17is_cube_inductiveEv.exit.i
  %.sink92.i = phi i64 [ 48, %_ZN6vectorIP4exprLb0EjE6shrinkEj.exit.i ], [ 44, %_ZN12_GLOBAL__N_127lemma_inductive_generalizer17is_cube_inductiveEv.exit.i ]
  %.02560.i = phi i32 [ 0, %_ZN6vectorIP4exprLb0EjE6shrinkEj.exit.i ], [ %.025.i, %_ZN12_GLOBAL__N_127lemma_inductive_generalizer17is_cube_inductiveEv.exit.i ]
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 %.sink92.i ; 2 uses
  %9 = load i32, ptr %8, align 4, !tbaa !168
  %10 = add i32 %9, 1
  store i32 %10, ptr %8, align 4, !tbaa !168
  %i.hm = load ptr, ptr %i.h, align 8, !tbaa !166 ; 5 uses
  %i.hn = icmp eq ptr %i.hm, null
  br i1 %i.hn, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit.i, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i:         ; preds = %bb.au
  %i.ho = getelementptr inbounds i8, ptr %i.hm, i64 -4
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !168 ; 2 uses
  %i.hq = zext i32 %i.hp to i64
  %i.hr = shl nuw nsw i64 %i.hq, 3
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hm, i64 %i.hr
  %.not.i51.i = icmp eq i32 %i.hp, 0
  br i1 %.not.i51.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i.i, label %.lr.ph.i.i52.i

.lr.ph.i.i52.i:                                   ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i.i
  %.06.i.i.i = phi ptr [ %i.hz, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i.i ], [ %i.hm, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i ] ; 2 uses
  %i.ht = load ptr, ptr %.06.i.i.i, align 8, !tbaa !169 ; 3 uses
  %i.hu = load ptr, ptr %7, align 8, !tbaa !170, !nonnull !69, !align !70
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ht, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i.i, label %bb.av

bb.av:                                            ; preds = %.lr.ph.i.i52.i
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ht, i64 8 ; 2 uses
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !135
  %i.hx = add i32 %i.hw, -1                       ; 2 uses
  store i32 %i.hx, ptr %i.hv, align 4, !tbaa !135
  %i.hy = icmp eq i32 %i.hx, 0
  br i1 %i.hy, label %bb.aw, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i.i

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.hu, ptr noundef nonnull %i.ht)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i.i unwind label %bb.ay

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i.i: ; preds = %bb.aw, %bb.av, %.lr.ph.i.i52.i
  %i.hz = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8 ; 2 uses
  %i.ia = icmp ult ptr %i.hz, %i.hs
  br i1 %i.ia, label %.lr.ph.i.i52.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i.i, !llvm.loop !171

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i.i
  %.pre.i53.i = load ptr, ptr %i.h, align 8, !tbaa !166 ; 2 uses
  %.not.i.i.i54.i = icmp eq ptr %.pre.i53.i, null
  br i1 %.not.i.i.i54.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i.i, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i
  %i.ib = phi ptr [ %.pre.i53.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i.i ], [ %i.hm, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i ]
  %i.ic = getelementptr inbounds i8, ptr %i.ib, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.ic)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit.i unwind label %bb.ax

bb.ax:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i.i
  %i.id = landingpad { ptr, i32 }
          catch ptr null
  %i.ie = extractvalue { ptr, i32 } %i.id, 0
  call void @__clang_call_terminate(ptr %i.ie) #19
  unreachable

bb.ay:                                            ; preds = %bb.aw
  %i.if = landingpad { ptr, i32 }
          catch ptr null
  %i.ig = extractvalue { ptr, i32 } %i.if, 0
  call void @__clang_call_terminate(ptr %i.ig) #19
  unreachable

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i.i, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %_ZN12_GLOBAL__N_127lemma_inductive_generalizer7weaken1Ej.exit

.loopexit.split-lp.i:                             ; preds = %bb.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i17, %bb.q, %bb.ah, %.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i
  %.pn.pn.pn.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp63.i, %.loopexit.split-lp.loopexit.split-lp.i ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit62.i, %.loopexit.split-lp.loopexit.i ], [ %i.en, %bb.ad ], [ %i.ei, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.ey, %bb.ah ], [ %i.cl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i17 ], [ %i.cq, %bb.q ]
  call void @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  resume { ptr, i32 } %.pn.pn.pn.i

_ZN12_GLOBAL__N_127lemma_inductive_generalizer7weaken1Ej.exit: ; preds = %bb.c, %_ZN12_GLOBAL__N_127lemma_inductive_generalizer11is_eligibleEP4expr.exit.i, %_ZN12_GLOBAL__N_127lemma_inductive_generalizer11is_eligibleEP4expr.exit.thread.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit.i
  %.0.i = phi i32 [ 0, %_ZN12_GLOBAL__N_127lemma_inductive_generalizer11is_eligibleEP4expr.exit.i ], [ %.02560.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit.i ], [ 0, %_ZN12_GLOBAL__N_127lemma_inductive_generalizer11is_eligibleEP4expr.exit.thread.i ], [ 0, %bb.c ]
  %i.ih = add i32 %.0.i, %.0734                   ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !245
}

declare void @_ZN6spacer5lemma11update_cubeERK3refINS_3pobEER10ref_vectorI4expr11ast_managerE(ptr noundef nonnull align 8 dereferenceable(109), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare void @_ZN6spacer5lemma9set_levelEj(ptr noundef nonnull align 8 dereferenceable(109), i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i64 @_ZNSt6chrono3_V212steady_clock3nowEv() local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %2 = alloca %"class.std::allocator.96", align 1 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !166    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 24) ; 3 uses
  store i32 2, ptr %i.c, align 4, !tbaa !168
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 0, ptr %i.d, align 4, !tbaa !168
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.e, ptr %0, align 8, !tbaa !166
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.a, i64 -8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !168  ; 3 uses
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
  %i.o = tail call ptr @__cxa_allocate_exception(i64 40) #18 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.o, align 8, !tbaa !11
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 3 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !235
  %i.r = load ptr, ptr %1, align 8, !tbaa !237    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !239  ; 3 uses
  %i.w = icmp ult i64 %i.v, 16
  call void @llvm.assume(i1 %i.w)
  %i.x = add nuw nsw i64 %i.v, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.x, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  store ptr %i.r, ptr %i.p, align 8, !tbaa !237
  %i.y = load i64, ptr %i.s, align 8, !tbaa !240
  store i64 %i.y, ptr %i.q, align 8, !tbaa !240
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !239
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.z = phi i64 [ %i.v, %bb.g ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %i.z, ptr %i.ab, align 8, !tbaa !239
  store ptr %i.s, ptr %1, align 8, !tbaa !237
  store i64 0, ptr %i.aa, align 8, !tbaa !239
  store i8 0, ptr %i.s, align 8, !tbaa !240
  invoke void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #21
          to label %bb.m unwind label %bb.h

bb.h:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = load ptr, ptr %1, align 8, !tbaa !237   ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.s
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %bb.h
  %i.af = load i64, ptr %i.s, align 8, !tbaa !240
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  call void @__cxa_free_exception(ptr %i.o) #18
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %bb.i
  %.pn32 = phi { ptr, i32 } [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ah, %bb.i ]
  resume { ptr, i32 } %.pn32

bb.k:                                             ; preds = %bb.d
  %i.ai = zext i32 %i.l to i64
  %i.aj = tail call noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.f, i64 noundef %i.ai) ; 2 uses
end_hunk_1
