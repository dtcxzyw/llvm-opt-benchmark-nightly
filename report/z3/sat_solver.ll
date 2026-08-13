inline.NumInlined: 5240
inline.NumDeleted: 1637
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 101
loop-unroll.NumUnrolled: 119
begin_hunk_0_@_ZN17scoped_ptr_vectorIN3sat14i_local_searchEED2Ev:bb.a
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.m)
          to label %_ZN6vectorIPN3sat14i_local_searchELb0EjED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %_ZN17scoped_ptr_vectorIN3sat14i_local_searchEE5resetEv.exit
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #38
  unreachable

_ZN6vectorIPN3sat14i_local_searchELb0EjED2Ev.exit: ; preds = %bb.a, %_ZSt8for_eachIPPN3sat14i_local_searchE11delete_procIS1_EET0_T_S7_S6_.exit.i, %_ZN17scoped_ptr_vectorIN3sat14i_local_searchEE5resetEv.exit
  ret void

bb.c:                                             ; preds = %_Z7deallocIN3sat14i_local_searchEEvPT_.exit.i.i.i
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #38
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6vectorI8reslimitLb1EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !523    ; 4 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN6vectorI8reslimitLb1EjE7destroyEv.exit, label %_ZNK6vectorI8reslimitLb1EjE4sizeEv.exit.i.i

_ZNK6vectorI8reslimitLb1EjE4sizeEv.exit.i.i:      ; preds = %bb.a
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !175  ; 2 uses
  %.not7.i.i.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not7.i.i.i.i.i, label %_ZN6vectorI8reslimitLb1EjE16destroy_elementsEv.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNK6vectorI8reslimitLb1EjE4sizeEv.exit.i.i, %_ZSt8_DestroyI8reslimitEvPT_.exit.i.i.i.i.i
  %.09.i.i.i.i.i = phi i32 [ %i.o, %_ZSt8_DestroyI8reslimitEvPT_.exit.i.i.i.i.i ], [ %i.c, %_ZNK6vectorI8reslimitLb1EjE4sizeEv.exit.i.i ]
  %.048.i.i.i.i.i = phi ptr [ %i.n, %_ZSt8_DestroyI8reslimitEvPT_.exit.i.i.i.i.i ], [ %i.a, %_ZNK6vectorI8reslimitLb1EjE4sizeEv.exit.i.i ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !457  ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN6vectorIP8reslimitLb0EjED2Ev.exit.i.i.i.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.f)
          to label %_ZN6vectorIP8reslimitLb0EjED2Ev.exit.i.i.i.i.i.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #38
  unreachable

_ZN6vectorIP8reslimitLb0EjED2Ev.exit.i.i.i.i.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !199  ; 2 uses
  %.not.i.i1.i.i.i.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i1.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyI8reslimitEvPT_.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZN6vectorIP8reslimitLb0EjED2Ev.exit.i.i.i.i.i.i.i.i
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.k)
          to label %_ZSt8_DestroyI8reslimitEvPT_.exit.i.i.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #38
  unreachable

_ZSt8_DestroyI8reslimitEvPT_.exit.i.i.i.i.i:      ; preds = %bb.d, %_ZN6vectorIP8reslimitLb0EjED2Ev.exit.i.i.i.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 40
  %i.o = add i32 %.09.i.i.i.i.i, -1               ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i.i.i, label %_ZN6vectorI8reslimitLb1EjE16destroy_elementsEv.exit.loopexit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !711

_ZN6vectorI8reslimitLb1EjE16destroy_elementsEv.exit.loopexit.i: ; preds = %_ZSt8_DestroyI8reslimitEvPT_.exit.i.i.i.i.i
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !523
  br label %_ZN6vectorI8reslimitLb1EjE16destroy_elementsEv.exit.i

_ZN6vectorI8reslimitLb1EjE16destroy_elementsEv.exit.i: ; preds = %_ZN6vectorI8reslimitLb1EjE16destroy_elementsEv.exit.loopexit.i, %_ZNK6vectorI8reslimitLb1EjE4sizeEv.exit.i.i
  %i.p = phi ptr [ %.pre.i, %_ZN6vectorI8reslimitLb1EjE16destroy_elementsEv.exit.loopexit.i ], [ %i.a, %_ZNK6vectorI8reslimitLb1EjE4sizeEv.exit.i.i ]
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.q)
          to label %_ZN6vectorI8reslimitLb1EjE7destroyEv.exit unwind label %bb.f

_ZN6vectorI8reslimitLb1EjE7destroyEv.exit:        ; preds = %bb.a, %_ZN6vectorI8reslimitLb1EjE16destroy_elementsEv.exit.i
  ret void

bb.f:                                             ; preds = %_ZN6vectorI8reslimitLb1EjE16destroy_elementsEv.exit.i
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  tail call void @__clang_call_terminate(ptr %i.s) #38
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3sat6solver12exchange_parEv(ptr noundef nonnull align 8 dereferenceable(4264) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.sat::justification", align 8 ; 8 uses
  %2 = alloca %class.svector.25, align 8          ; 10 uses
  %3 = alloca %class.svector.25, align 8          ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !304  ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3612 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !183
  %i.e = icmp eq i32 %i.d, 0
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8
  %i.h = icmp ugt i32 %i.g, 1
  %or.cond59 = select i1 %i.e, i1 %i.h, i1 false
  br i1 %or.cond59, label %bb.c, label %.thread90

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN3sat8parallel11get_clausesERNS_6solverE(ptr noundef nonnull align 8 dereferenceable(176) %i.b, ptr noundef nonnull align 8 dereferenceable(4264) %0)
  %.pr.pre = load ptr, ptr %i.a, align 8, !tbaa !304 ; 2 uses
  %.not27 = icmp eq ptr %.pr.pre, null
  br i1 %.not27, label %.thread, label %.thread90

.thread90:                                        ; preds = %bb.b, %bb.c
  %.pr93 = phi ptr [ %.pr.pre, %bb.c ], [ %i.b, %bb.b ] ; 2 uses
  %i.i = load i32, ptr %i.c, align 4, !tbaa !183
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.d, label %.thread

bb.d:                                             ; preds = %.thread90
  %i.k = load i32, ptr %i.f, align 8, !tbaa !503
  %i.l = icmp ugt i32 %i.k, 1
  br i1 %i.l, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 3784 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !197  ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZNK3sat6solver15init_trail_sizeEv.exit.thread, label %_ZNK3sat6solver15init_trail_sizeEv.exit

_ZNK3sat6solver15init_trail_sizeEv.exit.thread:   ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  store ptr null, ptr %2, align 8, !tbaa !197
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  store ptr null, ptr %3, align 8, !tbaa !197
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 3984
  br label %._crit_edge

_ZNK3sat6solver15init_trail_sizeEv.exit:          ; preds = %bb.e
  %i.q = getelementptr inbounds i8, ptr %i.n, i64 -4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !175  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  store ptr null, ptr %2, align 8, !tbaa !197
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  store ptr null, ptr %3, align 8, !tbaa !197
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 3984 ; 3 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !556  ; 2 uses
  %i.u = icmp ult i32 %i.t, %i.r
  br i1 %i.u, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK3sat6solver15init_trail_sizeEv.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 3988
  %i.w = zext i32 %i.t to i64
  br label %bb.f

._crit_edge.loopexit:                             ; preds = %bb.k
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !304
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZNK3sat6solver15init_trail_sizeEv.exit.thread, %._crit_edge.loopexit, %_ZNK3sat6solver15init_trail_sizeEv.exit
  %i.x = phi ptr [ %i.s, %_ZNK3sat6solver15init_trail_sizeEv.exit ], [ %i.s, %._crit_edge.loopexit ], [ %i.p, %_ZNK3sat6solver15init_trail_sizeEv.exit.thread ]
  %i.y = phi i32 [ %i.r, %_ZNK3sat6solver15init_trail_sizeEv.exit ], [ %i.r, %._crit_edge.loopexit ], [ 0, %_ZNK3sat6solver15init_trail_sizeEv.exit.thread ]
  %i.z = phi ptr [ %.pr93, %_ZNK3sat6solver15init_trail_sizeEv.exit ], [ %.pre, %._crit_edge.loopexit ], [ %.pr93, %_ZNK3sat6solver15init_trail_sizeEv.exit.thread ]
  %.020.lcssa = phi i32 [ 0, %_ZNK3sat6solver15init_trail_sizeEv.exit ], [ %.121, %._crit_edge.loopexit ], [ 0, %_ZNK3sat6solver15init_trail_sizeEv.exit.thread ] ; 3 uses
  store i32 %i.y, ptr %i.x, align 8, !tbaa !556
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 3980
  invoke void @_ZN3sat8parallel8exchangeERNS_6solverERK7svectorINS_7literalEjERjRS5_(ptr noundef nonnull align 8 dereferenceable(176) %i.z, ptr noundef nonnull align 8 dereferenceable(4264) %0, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.aa, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %.preheader unwind label %bb.l

.preheader:                                       ; preds = %._crit_edge
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 3168 ; 3 uses
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !167, !range !257, !noundef !258
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %.critedge, label %.lr.ph66

.lr.ph66:                                         ; preds = %.preheader
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 3280
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 3272
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 3832
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 3176
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 3200
  br label %.outer

.outer:                                           ; preds = %_ZN3sat6solver11assign_unitENS_7literalE.exit, %.lr.ph66
  %indvars.iv72.ph = phi i64 [ %indvars.iv.next7394, %_ZN3sat6solver11assign_unitENS_7literalE.exit ], [ 0, %.lr.ph66 ] ; 2 uses
  %.065.ph = phi i32 [ %i.bv, %_ZN3sat6solver11assign_unitENS_7literalE.exit ], [ 0, %.lr.ph66 ] ; 4 uses
  %i.aj = load ptr, ptr %2, align 8, !tbaa !197   ; 3 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %.critedge, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.preheader

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.preheader: ; preds = %.outer
  %4 = getelementptr inbounds i8, ptr %i.aj, i64 -4
  %i.al = load i32, ptr %4, align 4, !tbaa !175
  %i.am = zext i32 %i.al to i64                   ; 2 uses
  %5 = icmp samesign ult i64 %indvars.iv72.ph, %i.am
  br i1 %5, label %.lr.ph124.preheader, label %.critedge

.lr.ph124.preheader:                              ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.preheader
  %6 = load ptr, ptr %i.ae, align 8, !tbaa !224
  %.pre76 = load ptr, ptr %i.af, align 8, !tbaa !229
  br label %bb.m

bb.f:                                             ; preds = %.lr.ph, %bb.k
  %i.an = phi ptr [ null, %.lr.ph ], [ %i.bi, %bb.k ] ; 5 uses
  %indvars.iv = phi i64 [ %i.w, %.lr.ph ], [ %indvars.iv.next, %bb.k ] ; 2 uses
  %.02063 = phi i32 [ 0, %.lr.ph ], [ %.121, %bb.k ] ; 2 uses
  %i.ao = load ptr, ptr %i.m, align 8, !tbaa !197
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !175 ; 2 uses
  %i.ar = lshr i32 %i.aq, 1
  %i.as = load i32, ptr %i.v, align 4, !tbaa !554
  %i.at = icmp ult i32 %i.ar, %i.as
  br i1 %i.at, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.au = add i32 %.02063, 1
  %i.av = icmp eq ptr %i.an, null
  br i1 %i.av, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds i8, ptr %i.an, i64 -4
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !175 ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %i.an, i64 -8
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !175
  %i.ba = icmp eq i32 %i.ax, %i.az
  br i1 %i.ba, label %bb.i, label %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit

bb.i:                                             ; preds = %bb.h, %bb.g
  invoke void @_ZN6vectorIN3sat7literalELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.i
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !197 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !175
  br label %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit

_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit: ; preds = %bb.h, %.noexc
  %i.bb = phi ptr [ %.pre.i, %.noexc ], [ %i.an, %bb.h ] ; 3 uses
  %i.bc = phi i32 [ %.pre2.i, %.noexc ], [ %i.ax, %bb.h ] ; 2 uses
  %i.bd = getelementptr inbounds i8, ptr %i.bb, i64 -4
  %i.be = zext i32 %i.bc to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.be
  store i32 %i.aq, ptr %i.bf, align 4, !tbaa !175
  %i.bg = add i32 %i.bc, 1
  store i32 %i.bg, ptr %i.bd, align 4, !tbaa !175
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.k:                                             ; preds = %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit, %bb.f
  %i.bi = phi ptr [ %i.bb, %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit ], [ %i.an, %bb.f ]
  %.121 = phi i32 [ %i.au, %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit ], [ %.02063, %bb.f ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.r, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.f, !llvm.loop !712

.critedge:                                        ; preds = %.outer, %_ZN3sat6solver11assign_unitENS_7literalE.exit, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.preheader, %bb.s, %.preheader
  %.0.lcssa = phi i32 [ 0, %.preheader ], [ %.065.ph, %bb.s ], [ %.065.ph, %.outer ], [ %i.bv, %_ZN3sat6solver11assign_unitENS_7literalE.exit ], [ %.065.ph, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.preheader ] ; 3 uses
  %i.bj = icmp ne i32 %.0.lcssa, 0
  %i.bk = icmp ne i32 %.020.lcssa, 0
  %or.cond = select i1 %i.bj, i1 true, i1 %i.bk
  br i1 %or.cond, label %bb.t, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit49

bb.l:                                             ; preds = %_ZNSolsEj.exit47, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit45, %_ZNSolsEj.exit43, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit41, %bb.ab, %_ZNSolsEj.exit37, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35, %_ZNSolsEj.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.z, %bb.aa, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39, %bb.y, %bb.x, %bb.v, %bb.t, %._crit_edge
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.m:                                             ; preds = %.lr.ph124.preheader, %bb.s
  %indvars.iv72123 = phi i64 [ %indvars.iv.next73, %bb.s ], [ %indvars.iv72.ph, %.lr.ph124.preheader ] ; 3 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv72123
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !175 ; 4 uses
  %i.bo = lshr i32 %i.bn, 1
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [24 x i8], ptr %6, i64 %i.bp ; 3 uses
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !169
  %.not28 = icmp eq i32 %i.br, 0                  ; 2 uses
  %i.bs = zext i32 %i.bn to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %.pre76, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !230 ; 2 uses
  %.not29 = icmp eq i32 %i.bu, 1
  %or.cond128 = select i1 %.not28, i1 %.not29, i1 false
  br i1 %or.cond128, label %bb.s, label %.loopexit

.loopexit:                                        ; preds = %bb.m
  %i.bv = add i32 %.065.ph, 1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store i32 0, ptr %1, align 8
  store i64 0, ptr %.sroa.22.0..sroa_idx.i, align 8
  store i32 0, ptr %.sroa.3.0..sroa_idx.i, align 8
  switch i32 %i.bu, label %_ZN3sat6solver11assign_unitENS_7literalE.exit [
    i32 -1, label %bb.n
    i32 0, label %bb.o
    i32 1, label %bb.p
  ]

bb.n:                                             ; preds = %.loopexit
  %i.bw = xor i32 %i.bn, 1
  store i8 1, ptr %i.ab, align 8, !tbaa !167
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ah, ptr noundef nonnull align 8 dereferenceable(20) %1, i64 20, i1 false)
  store i32 %i.bw, ptr %i.ai, align 8, !tbaa !175
  br label %_ZN3sat6solver11assign_unitENS_7literalE.exit

bb.o:                                             ; preds = %.loopexit
  invoke void @_ZN3sat6solver11assign_coreENS_7literalENS_13justificationE(ptr noundef nonnull align 8 dereferenceable(4264) %0, i32 %i.bn, ptr noundef nonnull byval(%"class.sat::justification") align 8 %1)
          to label %_ZN3sat6solver11assign_unitENS_7literalE.exit unwind label %bb.r

bb.p:                                             ; preds = %.loopexit
  %i.bx = load i8, ptr %i.ag, align 8, !range !257
  %i.by = trunc nuw i8 %i.bx to i1
  %brmerge = or i1 %.not28, %i.by
  br i1 %brmerge, label %_ZN3sat6solver11assign_unitENS_7literalE.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.bq, align 8, !tbaa !175
  %.sroa.5.0..sroa_idx10.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.5.0..sroa_idx10.i.i, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.2.0..sroa_idx.i, i64 16, i1 false)
  br label %_ZN3sat6solver11assign_unitENS_7literalE.exit

_ZN3sat6solver11assign_unitENS_7literalE.exit:    ; preds = %bb.p, %bb.o, %.loopexit, %bb.n, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %.pre80 = load i8, ptr %i.ab, align 8, !tbaa !167, !range !257
  %i.bz = trunc nuw i8 %.pre80 to i1
  %indvars.iv.next7394 = add nuw nsw i64 %indvars.iv72123, 1
  br i1 %i.bz, label %.critedge, label %.outer, !llvm.loop !713

bb.r:                                             ; preds = %bb.o
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.s:                                             ; preds = %bb.m
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72123, 1 ; 2 uses
  %7 = icmp samesign ult i64 %indvars.iv.next73, %i.am
  br i1 %7, label %bb.m, label %.critedge, !llvm.loop !713

bb.t:                                             ; preds = %.critedge
  %i.cb = invoke noundef i32 @_Z19get_verbosity_levelv()
          to label %bb.u unwind label %bb.l

bb.u:                                             ; preds = %bb.t
  %i.cc = icmp ugt i32 %i.cb, 1
  br i1 %i.cc, label %bb.v, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit49

bb.v:                                             ; preds = %bb.u
  %i.cd = invoke noundef zeroext i1 @_Z11is_threadedv()
          to label %bb.w unwind label %bb.l

bb.w:                                             ; preds = %bb.v
  br i1 %i.cd, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  invoke void @_Z12verbose_lockv()
          to label %bb.y unwind label %bb.l

bb.y:                                             ; preds = %bb.x
  %i.ce = invoke noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv()
          to label %bb.z unwind label %bb.l       ; 2 uses

bb.z:                                             ; preds = %bb.y
  %i.cf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ce, ptr noundef nonnull @.str.23, i64 noundef 15)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.l ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.z
  %i.cg = zext i32 %.020.lcssa to i64
  %i.ch = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ce, i64 noundef %i.cg)
          to label %_ZNSolsEj.exit unwind label %bb.l ; 2 uses

_ZNSolsEj.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ci = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ch, ptr noundef nonnull @.str.24, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35 unwind label %bb.l ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35: ; preds = %_ZNSolsEj.exit
  %i.cj = zext i32 %.0.lcssa to i64
  %i.ck = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ch, i64 noundef %i.cj)
          to label %_ZNSolsEj.exit37 unwind label %bb.l

_ZNSolsEj.exit37:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35
  %i.cl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ck, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39 unwind label %bb.l ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39: ; preds = %_ZNSolsEj.exit37
  invoke void @_Z14verbose_unlockv()
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit49 unwind label %bb.l

bb.aa:                                            ; preds = %bb.w
  %i.cm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv()
          to label %bb.ab unwind label %bb.l      ; 2 uses

bb.ab:                                            ; preds = %bb.aa
  %i.cn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cm, ptr noundef nonnull @.str.23, i64 noundef 15)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit41 unwind label %bb.l ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit41: ; preds = %bb.ab
  %i.co = zext i32 %.020.lcssa to i64
  %i.cp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.cm, i64 noundef %i.co)
          to label %_ZNSolsEj.exit43 unwind label %bb.l ; 2 uses

_ZNSolsEj.exit43:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit41
  %i.cq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cp, ptr noundef nonnull @.str.24, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit45 unwind label %bb.l ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit45: ; preds = %_ZNSolsEj.exit43
  %i.cr = zext i32 %.0.lcssa to i64
  %i.cs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.cp, i64 noundef %i.cr)
          to label %_ZNSolsEj.exit47 unwind label %bb.l

_ZNSolsEj.exit47:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit45
  %i.ct = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cs, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit49 unwind label %bb.l ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit49: ; preds = %_ZNSolsEj.exit47, %bb.u, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit39, %.critedge
  %i.cu = load ptr, ptr %3, align 8, !tbaa !197   ; 2 uses
  %.not.i.i = icmp eq ptr %i.cu, null
  br i1 %.not.i.i, label %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit49
  %i.cv = getelementptr inbounds i8, ptr %i.cu, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.cv)
          to label %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cw = landingpad { ptr, i32 }
          catch ptr null
  %i.cx = extractvalue { ptr, i32 } %i.cw, 0
  call void @__clang_call_terminate(ptr %i.cx) #38
  unreachable

_ZN6vectorIN3sat7literalELb0EjED2Ev.exit:         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit49, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  %i.cy = load ptr, ptr %2, align 8, !tbaa !197   ; 2 uses
  %.not.i.i50 = icmp eq ptr %i.cy, null
  br i1 %.not.i.i50, label %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit51, label %bb.ae

bb.ae:                                            ; preds = %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit
  %i.cz = getelementptr inbounds i8, ptr %i.cy, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.cz)
          to label %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit51 unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.da = landingpad { ptr, i32 }
          catch ptr null
  %i.db = extractvalue { ptr, i32 } %i.da, 0
  call void @__clang_call_terminate(ptr %i.db) #38
  unreachable

_ZN6vectorIN3sat7literalELb0EjED2Ev.exit51:       ; preds = %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  br label %.thread

bb.ag:                                            ; preds = %bb.r, %bb.l, %bb.j
  %.pn = phi { ptr, i32 } [ %i.bh, %bb.j ], [ %i.bl, %bb.l ], [ %i.ca, %bb.r ]
  call void @_ZN6vectorIN3sat7literalELb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  call void @_ZN6vectorIN3sat7literalELb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  resume { ptr, i32 } %.pn

.thread:                                          ; preds = %bb.a, %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit51, %bb.d, %.thread90, %bb.c
  ret void
}

declare void @_ZN3sat8parallel11get_clausesERNS_6solverE(ptr noundef nonnull align 8 dereferenceable(176), ptr noundef nonnull align 8 dereferenceable(4264)) local_unnamed_addr #1

declare void @_ZN3sat8parallel8exchangeERNS_6solverERK7svectorINS_7literalEjERjRS5_(ptr noundef nonnull align 8 dereferenceable(176), ptr noundef nonnull align 8 dereferenceable(4264), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i32 @_ZN3sat6solver8next_varEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(4264) %0) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2340 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !165
  %i.c = mul i32 %i.b, 214013
  %i.d = add i32 %i.c, 2531011                    ; 3 uses
  store i32 %i.d, ptr %i.a, align 4, !tbaa !165
  %i.e = lshr i32 %i.d, 16
  %i.f = and i32 %i.e, 32767
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.h = load double, ptr %i.g, align 8, !tbaa !714
  %i.i = fmul double %i.h, 3.276700e+04
  %i.j = fptosi double %i.i to i32
  %i.k = icmp slt i32 %i.f, %i.j
  br i1 %i.k, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 3280
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !224  ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_ZNK3sat6solver8num_varsEv.exit.thread, label %_ZNK3sat6solver8num_varsEv.exit

_ZNK3sat6solver8num_varsEv.exit:                  ; preds = %bb.b
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 -4 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !175
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %_ZNK3sat6solver8num_varsEv.exit.thread, label %_ZNK3sat6solver8num_varsEv.exit17

_ZNK3sat6solver8num_varsEv.exit17:                ; preds = %_ZNK3sat6solver8num_varsEv.exit
  %i.r = mul i32 %i.d, 214013
  %i.s = add i32 %i.r, 2531011                    ; 2 uses
  store i32 %i.s, ptr %i.a, align 4, !tbaa !165
  %i.t = lshr i32 %i.s, 16
  %i.u = and i32 %i.t, 32767
  %i.v = load i32, ptr %i.o, align 4, !tbaa !175
  %i.w = urem i32 %i.u, %i.v                      ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 3272
  %i.y = shl nuw nsw i32 %i.w, 1
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !229
  %i.aa = zext nneg i32 %i.y to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !230
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK3sat6solver8num_varsEv.exit17
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 3312
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !233
  %i.ag = zext nneg i32 %i.w to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !234, !range !257, !noundef !258
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.d, label %_ZNK3sat6solver8num_varsEv.exit.thread

bb.d:                                             ; preds = %_ZNK3sat6solver8num_varsEv.exit17, %bb.c, %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 3584 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 3592
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !179 ; 17 uses
  %i.an = icmp eq ptr %i.am, null
  %i.ao = getelementptr inbounds i8, ptr %i.am, i64 -4 ; 7 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 380
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 4 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 3400
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 3360
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 3312 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 3272 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 3600 ; 4 uses
end_hunk_0
