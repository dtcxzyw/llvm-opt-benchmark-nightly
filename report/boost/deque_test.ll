Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/deque_test?download=true
inline.NumInlined: 21721
inline.NumDeleted: 3891
loop-unroll.NumCompletelyUnrolled: 167
loop-unroll.NumRuntimeUnrolled: 1494
loop-unroll.NumUnrolled: 1710
begin_hunk_0_@_ZN5boost9container10deque_baseINS0_13new_allocatorINS0_4test11movable_intEEENS0_9deque_optILm0ELm0EmLb1EEELb0EE29prot_reallocate_map_and_nodesENS_11move_detail5bool_ILb1EEENSA_ILb0EEEmb:bb.a
bb.l:                                             ; preds = %.body
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.m unwind label %bb.s

bb.m:                                             ; preds = %bb.l
  resume { ptr, i32 } %i.bk

_ZN5boost9container10deque_baseINS0_13new_allocatorINS0_4test11movable_intEEENS0_9deque_optILm0ELm0EmLb1EEELb0EE19prot_allocate_nodesEPPS4_m.exit: ; preds = %_ZN5boost9container10deque_baseINS0_13new_allocatorINS0_4test11movable_intEEENS0_9deque_optILm0ELm0EmLb1EEELb0EE18prot_allocate_nodeEv.exit.i, %_ZN5boost9container10deque_baseINS0_13new_allocatorINS0_4test11movable_intEEENS0_9deque_optILm0ELm0EmLb1EEELb0EE17prot_allocate_mapEm.exit
  %.idx86 = shl nsw i64 %i.av, 3                  ; 2 uses
  %i.bl = getelementptr inbounds i8, ptr %i.ap, i64 %.idx86 ; 3 uses
  %.not.i.i = icmp ne i64 %i.m, 0
  %i.bm = icmp ne ptr %i.c, null
  %or.cond = select i1 %.not.i.i, i1 %i.bm, i1 false, !prof !556
  br i1 %or.cond, label %bb.n, label %_ZN5boost9container6move_nIPPNS0_4test11movable_intES5_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES8_mS9_.exit, !prof !556

bb.n:                                             ; preds = %_ZN5boost9container10deque_baseINS0_13new_allocatorINS0_4test11movable_intEEENS0_9deque_optILm0ELm0EmLb1EEELb0EE19prot_allocate_nodesEPPS4_m.exit
  %i.bn = shl i64 %i.m, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bl, ptr nonnull align 1 %i.c, i64 %i.bn, i1 false)
  br label %_ZN5boost9container6move_nIPPNS0_4test11movable_intES5_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES8_mS9_.exit

_ZN5boost9container6move_nIPPNS0_4test11movable_intES5_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES8_mS9_.exit: ; preds = %bb.n, %_ZN5boost9container10deque_baseINS0_13new_allocatorINS0_4test11movable_intEEENS0_9deque_optILm0ELm0EmLb1EEELb0EE19prot_allocate_nodesEPPS4_m.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.idx91 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.i ; 2 uses
  %i.bq = add nsw i64 %.idx86, %.idx91
  %i.br = icmp slt i64 %.idx, %i.bq
  br i1 %i.br, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN5boost9container6move_nIPPNS0_4test11movable_intES5_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES8_mS9_.exit
  %i.bs = tail call noundef ptr @_ZN5boost7movelib10rotate_gcdIPPNS_9container4test11movable_intEEET_S7_S7_S7_(ptr noundef nonnull %i.au, ptr noundef nonnull %i.bo, ptr noundef nonnull %i.bp) ; 0 uses
  br label %bb.q

bb.p:                                             ; preds = %_ZN5boost9container6move_nIPPNS0_4test11movable_intES5_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES8_mS9_.exit
  %i.bt = getelementptr inbounds i8, ptr %i.au, i64 %gepdiff
  %i.bu = tail call noundef ptr @_ZN5boost7movelib10rotate_gcdIPPNS_9container4test11movable_intEEET_S7_S7_S7_(ptr noundef nonnull %i.bo, ptr noundef nonnull %i.bp, ptr noundef nonnull %i.bt) ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bv = shl i64 %i.m, 3
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.bv) #22
  store ptr %i.ap, ptr %0, align 8, !tbaa !450
  store i64 %.sroa.speculated, ptr %i.l, align 8, !tbaa !561
  br label %bb.r

bb.r:                                             ; preds = %bb.c, %bb.d, %bb.q
  %.0 = phi ptr [ %i.au, %bb.q ], [ %i.ac, %bb.d ], [ %i.ac, %bb.c ] ; 2 uses
  %i.bw = load ptr, ptr %0, align 8, !tbaa !450
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = getelementptr i8, ptr %.0, i64 %gepdiff
  %i.bz = getelementptr i8, ptr %i.by, i64 -8
  %i.ca = insertelement <2 x ptr> poison, ptr %.0, i64 0
  %i.cb = insertelement <2 x ptr> %i.ca, ptr %i.bz, i64 1
  %i.cc = ptrtoint <2 x ptr> %i.cb to <2 x i64>
  %i.cd = insertelement <2 x i64> poison, i64 %i.bx, i64 0
  %i.ce = shufflevector <2 x i64> %i.cd, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.cf = sub <2 x i64> %i.cc, %i.ce
  %i.cg = shl <2 x i64> %i.cf, splat (i64 5)
  %i.ch = load <2 x i64>, ptr %i.a, align 8, !tbaa !358
  %i.ci = and <2 x i64> %i.ch, splat (i64 255)
  %i.cj = add <2 x i64> %i.cg, %i.ci
  store <2 x i64> %i.cj, ptr %i.a, align 8, !tbaa !358
  ret void

bb.s:                                             ; preds = %bb.l
  %i.ck = landingpad { ptr, i32 }
          catch ptr null
  %i.cl = extractvalue { ptr, i32 } %i.ck, 0
  tail call void @__clang_call_terminate(ptr %i.cl) #23
  unreachable

bb.t:                                             ; preds = %.body
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container10deque_baseINS0_13new_allocatorINS0_4test11movable_intEEENS0_9deque_optILm0ELm0EmLb1EEELb0EE29prot_initialize_map_and_nodesEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = lshr i64 %1, 8
  %i.b = add nuw nsw i64 %i.a, 1                  ; 2 uses
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.b, i64 4) ; 5 uses
  %i.c = shl i64 %.sroa.speculated, 8
  %i.d = add i64 %i.c, -2305843009213694208
  %i.e = icmp ult i64 %i.d, -2305843009213693952
  br i1 %i.e, label %bb.b, label %_ZN5boost9container10deque_baseINS0_13new_allocatorINS0_4test11movable_intEEENS0_9deque_optILm0ELm0EmLb1EEELb0EE17prot_allocate_mapEm.exit, !prof !375

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.40) #26
  unreachable

_ZN5boost9container10deque_baseINS0_13new_allocatorINS0_4test11movable_intEEENS0_9deque_optILm0ELm0EmLb1EEELb0EE17prot_allocate_mapEm.exit: ; preds = %bb.a
  %i.f = shl nuw nsw i64 %.sroa.speculated, 3
  %i.g = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #27 ; 3 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !450
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 %.sroa.speculated, ptr %i.h, align 8, !tbaa !561
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN5boost9container10deque_baseINS0_13new_allocatorINS0_4test11movable_intEEENS0_9deque_optILm0ELm0EmLb1EEELb0EE17prot_allocate_mapEm.exit, %_ZN5boost9container10deque_baseINS0_13new_allocatorINS0_4test11movable_intEEENS0_9deque_optILm0ELm0EmLb1EEELb0EE18prot_allocate_nodeEv.exit.i
  %.01315.i = phi i64 [ %i.k, %_ZN5boost9container10deque_baseINS0_13new_allocatorINS0_4test11movable_intEEENS0_9deque_optILm0ELm0EmLb1EEELb0EE18prot_allocate_nodeEv.exit.i ], [ 0, %_ZN5boost9container10deque_baseINS0_13new_allocatorINS0_4test11movable_intEEENS0_9deque_optILm0ELm0EmLb1EEELb0EE17prot_allocate_mapEm.exit ] ; 4 uses
  %i.i = invoke noalias noundef nonnull dereferenceable(1024) ptr @_Znwm(i64 noundef 1024) #27
          to label %_ZN5boost9container10deque_baseINS0_13new_allocatorINS0_4test11movable_intEEENS0_9deque_optILm0ELm0EmLb1EEELb0EE18prot_allocate_nodeEv.exit.i unwind label %bb.c

_ZN5boost9container10deque_baseINS0_13new_allocatorINS0_4test11movable_intEEENS0_9deque_optILm0ELm0EmLb1EEELb0EE18prot_allocate_nodeEv.exit.i: ; preds = %.lr.ph.i
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.01315.i
  store ptr %i.i, ptr %i.j, align 8, !tbaa !453
  %i.k = add nuw nsw i64 %.01315.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.k, %.sroa.speculated
  br i1 %exitcond.not.i, label %_ZN5boost9container10deque_baseINS0_13new_allocatorINS0_4test11movable_intEEENS0_9deque_optILm0ELm0EmLb1EEELb0EE19prot_allocate_nodesEPPS4_m.exit, label %.lr.ph.i, !llvm.loop !44

bb.c:                                             ; preds = %.lr.ph.i
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.m) #22 ; 0 uses
  %.not20.i = icmp eq i64 %.01315.i, 0
  br i1 %.not20.i, label %._crit_edge19.i, label %.lr.ph18.i

._crit_edge19.i:                                  ; preds = %.lr.ph18.i, %bb.c
  invoke void @__cxa_rethrow() #26
          to label %bb.f unwind label %bb.d

.lr.ph18.i:                                       ; preds = %bb.c, %.lr.ph18.i
  %.016.i = phi i64 [ %i.q, %.lr.ph18.i ], [ 0, %bb.c ] ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.016.i
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !453
  tail call void @_ZdlPvm(ptr noundef %i.p, i64 noundef 1024) #22
  %i.q = add nuw nsw i64 %.016.i, 1               ; 2 uses
  %exitcond24.not.i = icmp eq i64 %i.q, %.01315.i
  br i1 %exitcond24.not.i, label %._crit_edge19.i, label %.lr.ph18.i, !llvm.loop !45

bb.d:                                             ; preds = %._crit_edge19.i
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #23
  unreachable

bb.f:                                             ; preds = %._crit_edge19.i
  unreachable

.body:                                            ; preds = %bb.d
  %i.u = extractvalue { ptr, i32 } %i.r, 0
  %i.v = tail call ptr @__cxa_begin_catch(ptr %i.u) #22 ; 0 uses
  %i.w = load ptr, ptr %0, align 8, !tbaa !450
  %i.x = load i64, ptr %i.h, align 8, !tbaa !561
  %i.y = shl i64 %i.x, 3
  tail call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.y) #22
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  invoke void @__cxa_rethrow() #26
          to label %bb.j unwind label %bb.g

bb.g:                                             ; preds = %.body
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.z

_ZN5boost9container10deque_baseINS0_13new_allocatorINS0_4test11movable_intEEENS0_9deque_optILm0ELm0EmLb1EEELb0EE19prot_allocate_nodesEPPS4_m.exit: ; preds = %_ZN5boost9container10deque_baseINS0_13new_allocatorINS0_4test11movable_intEEENS0_9deque_optILm0ELm0EmLb1EEELb0EE18prot_allocate_nodeEv.exit.i
  %i.aa = sub nuw nsw i64 %.sroa.speculated, %i.b
  %i.ab = shl nuw nsw i64 %i.aa, 7
  %i.ac = and i64 %i.ab, 9223372036854775552      ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !457
  %i.ae = add i64 %i.ac, %1
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !451
  ret void

bb.i:                                             ; preds = %bb.g
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  tail call void @__clang_call_terminate(ptr %i.ah) #23
  unreachable

bb.j:                                             ; preds = %.body
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost7movelib10rotate_gcdIPPNS_9container4test11movable_intEEET_S7_S7_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZN5boost20adl_move_swap_rangesIPPNS_9container4test11movable_intES5_EET0_T_S7_S6_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %_ZN5boost20adl_move_swap_rangesIPPNS_9container4test11movable_intES5_EET0_T_S7_S6_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.d = ptrtoint ptr %0 to i64                   ; 4 uses
  %i.e = sub i64 %i.c, %i.d                       ; 8 uses
  %i.f = ashr exact i64 %i.e, 3                   ; 10 uses
  %i.g = sub nsw i64 0, %i.f
  %i.h = getelementptr inbounds [8 x i8], ptr %2, i64 %i.g ; 6 uses
  %i.i = icmp eq ptr %1, %i.h
  br i1 %i.i, label %.lr.ph.i.preheader, label %bb.d

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.j = add i64 %i.c, -8
  %i.k = sub i64 %i.j, %i.d                       ; 2 uses
  %i.l = lshr i64 %i.k, 3
  %i.m = add nuw nsw i64 %i.l, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.k, 104
  br i1 %min.iters.check, label %.lr.ph.i.preheader82, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %3 = add i64 %i.c, -8
  %4 = sub i64 %3, %i.d
  %i.n = and i64 %4, -8
  %i.o = add i64 %i.n, 8                          ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 %i.o
  %scevgep76 = getelementptr i8, ptr %1, i64 %i.o
  %bound0 = icmp ult ptr %0, %scevgep76
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader82, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.m, 4611686018427387900      ; 3 uses
  %i.p = shl i64 %n.vec, 3                        ; 2 uses
  %i.q = getelementptr i8, ptr %1, i64 %i.p
  %i.r = getelementptr i8, ptr %0, i64 %i.p
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.s = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %1, i64 %i.s  ; 3 uses
  %next.gep77 = getelementptr i8, ptr %0, i64 %i.s ; 3 uses
  %i.t = getelementptr i8, ptr %next.gep77, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %next.gep77, align 8, !tbaa !453, !alias.scope !4091, !noalias !4092
  %wide.load78 = load <2 x ptr>, ptr %i.t, align 8, !tbaa !453, !alias.scope !4091, !noalias !4092
  %i.u = getelementptr i8, ptr %next.gep, i64 16  ; 2 uses
  %wide.load79 = load <2 x ptr>, ptr %next.gep, align 8, !tbaa !453, !alias.scope !4092
  %wide.load80 = load <2 x ptr>, ptr %i.u, align 8, !tbaa !453, !alias.scope !4092
  store <2 x ptr> %wide.load79, ptr %next.gep77, align 8, !tbaa !453, !alias.scope !4091, !noalias !4092
  store <2 x ptr> %wide.load80, ptr %i.t, align 8, !tbaa !453, !alias.scope !4091, !noalias !4092
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !453, !alias.scope !4092
  store <2 x ptr> %wide.load78, ptr %i.u, align 8, !tbaa !453, !alias.scope !4092
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !4087

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.m, %n.vec
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesIPPNS_9container4test11movable_intES5_EET0_T_S7_S6_.exit, label %.lr.ph.i.preheader82

.lr.ph.i.preheader82:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.010.i.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.i.preheader ], [ %i.q, %middle.block ]
  %.079.i.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.i.preheader ], [ %i.r, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader82, %.lr.ph.i
  %.010.i = phi ptr [ %i.z, %.lr.ph.i ], [ %.010.i.ph, %.lr.ph.i.preheader82 ] ; 3 uses
  %.079.i = phi ptr [ %i.y, %.lr.ph.i ], [ %.079.i.ph, %.lr.ph.i.preheader82 ] ; 3 uses
  %i.w = load ptr, ptr %.079.i, align 8, !tbaa !453
  %i.x = load ptr, ptr %.010.i, align 8, !tbaa !453
  store ptr %i.x, ptr %.079.i, align 8, !tbaa !453
  store ptr %i.w, ptr %.010.i, align 8, !tbaa !453
  %i.y = getelementptr inbounds nuw i8, ptr %.079.i, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.010.i, i64 8
  %.not.i = icmp eq ptr %i.y, %1
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesIPPNS_9container4test11movable_intES5_EET0_T_S7_S6_.exit, label %.lr.ph.i, !llvm.loop !4088

bb.d:                                             ; preds = %bb.c
  %i.aa = ptrtoint ptr %2 to i64                  ; 4 uses
  %i.ab = sub i64 %i.aa, %i.d
  %i.ac = ashr exact i64 %i.ab, 3                 ; 6 uses
  %i.ad = add nsw i64 %i.ac, -1
  %i.ae = and i64 %i.ad, %i.ac
  %i.af = add nsw i64 %i.f, -1
  %i.ag = and i64 %i.af, %i.f
  %i.ah = or i64 %i.ae, %i.ag
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %bb.e, label %.preheader36.i

.preheader36.i:                                   ; preds = %bb.d
  %i.aj = or i64 %i.ac, %i.f
  %i.ak = and i64 %i.aj, 1
  %.not.not37.i = icmp eq i64 %i.ak, 0
  br i1 %.not.not37.i, label %.lr.ph.i56, label %.preheader.i

bb.e:                                             ; preds = %bb.d
  %i.al = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 %i.f)
  br label %_ZN5boost7movelib3gcdImEET_S2_S2_.exit

.preheader.i:                                     ; preds = %.lr.ph.i56, %.preheader36.i
  %.030.lcssa.i = phi i64 [ %i.ac, %.preheader36.i ], [ %i.aq, %.lr.ph.i56 ] ; 3 uses
  %.029.lcssa.i = phi i64 [ %i.f, %.preheader36.i ], [ %i.ar, %.lr.ph.i56 ] ; 3 uses
  %.0.lcssa.i54 = phi i64 [ 1, %.preheader36.i ], [ %i.ap, %.lr.ph.i56 ]
  %i.am = icmp ne i64 %.030.lcssa.i, 0
  %i.an = icmp ne i64 %.029.lcssa.i, 0
  %i.ao = and i1 %i.am, %i.an
  br i1 %i.ao, label %.lr.ph45.i, label %._crit_edge.i

.lr.ph.i56:                                       ; preds = %.preheader36.i, %.lr.ph.i56
  %.040.i = phi i64 [ %i.ap, %.lr.ph.i56 ], [ 1, %.preheader36.i ]
  %.02939.i = phi i64 [ %i.ar, %.lr.ph.i56 ], [ %i.f, %.preheader36.i ]
  %.03038.i = phi i64 [ %i.aq, %.lr.ph.i56 ], [ %i.ac, %.preheader36.i ]
  %i.ap = shl i64 %.040.i, 1                      ; 2 uses
  %i.aq = lshr i64 %.03038.i, 1                   ; 3 uses
  %i.ar = lshr i64 %.02939.i, 1                   ; 3 uses
  %i.as = or i64 %i.aq, %i.ar
  %i.at = and i64 %i.as, 1
  %.not.not.i = icmp eq i64 %i.at, 0
  br i1 %.not.not.i, label %.lr.ph.i56, label %.preheader.i, !llvm.loop !46

.lr.ph45.i:                                       ; preds = %.preheader.i, %bb.l
  %.144.i = phi i64 [ %.2.i, %bb.l ], [ %.029.lcssa.i, %.preheader.i ] ; 7 uses
  %.13143.i = phi i64 [ %.232.i, %bb.l ], [ %.030.lcssa.i, %.preheader.i ] ; 7 uses
  %i.au = and i64 %.13143.i, 1
  %.not.i55 = icmp eq i64 %i.au, 0
  br i1 %.not.i55, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph45.i
  %i.av = lshr exact i64 %.13143.i, 1
  br label %bb.l

bb.g:                                             ; preds = %.lr.ph45.i
  %i.aw = and i64 %.144.i, 1
  %.not34.i = icmp eq i64 %i.aw, 0
  br i1 %.not34.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ax = lshr exact i64 %.144.i, 1
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %.not35.i = icmp ult i64 %.13143.i, %.144.i
  br i1 %.not35.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ay = sub nuw i64 %.13143.i, %.144.i
  %i.az = lshr exact i64 %i.ay, 1
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ba = sub nuw i64 %.144.i, %.13143.i
  %i.bb = lshr exact i64 %i.ba, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.h, %bb.f
  %.232.i = phi i64 [ %i.az, %bb.j ], [ %.13143.i, %bb.k ], [ %.13143.i, %bb.h ], [ %i.av, %bb.f ] ; 3 uses
  %.2.i = phi i64 [ %.144.i, %bb.j ], [ %i.bb, %bb.k ], [ %i.ax, %bb.h ], [ %.144.i, %bb.f ] ; 3 uses
  %i.bc = icmp ne i64 %.232.i, 0
  %i.bd = icmp ne i64 %.2.i, 0
  %i.be = select i1 %i.bc, i1 %i.bd, i1 false
  br i1 %i.be, label %.lr.ph45.i, label %._crit_edge.i, !llvm.loop !47

._crit_edge.i:                                    ; preds = %bb.l, %.preheader.i
  %.131.lcssa.i = phi i64 [ %.030.lcssa.i, %.preheader.i ], [ %.232.i, %bb.l ]
  %.1.lcssa.i = phi i64 [ %.029.lcssa.i, %.preheader.i ], [ %.2.i, %bb.l ]
  %i.bf = add i64 %.1.lcssa.i, %.131.lcssa.i
  %i.bg = mul i64 %i.bf, %.0.lcssa.i54
  br label %_ZN5boost7movelib3gcdImEET_S2_S2_.exit

_ZN5boost7movelib3gcdImEET_S2_S2_.exit:           ; preds = %bb.e, %._crit_edge.i
  %.033.i = phi i64 [ %i.al, %bb.e ], [ %i.bg, %._crit_edge.i ] ; 2 uses
  %.idx = shl i64 %.033.i, 3                      ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %.not60 = icmp eq i64 %.033.i, 0
  br i1 %.not60, label %_ZN5boost20adl_move_swap_rangesIPPNS_9container4test11movable_intES5_EET0_T_S7_S6_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5boost7movelib3gcdImEET_S2_S2_.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 %i.e ; 3 uses
  %i.bj = add i64 %.idx, -8                       ; 2 uses
  %i.bk = and i64 %i.bj, 8
  %lcmp.mod.not.not = icmp eq i64 %i.bk, 0
  br i1 %lcmp.mod.not.not, label %.prol.preheader, label %.prol.loopexit

.prol.preheader:                                  ; preds = %.lr.ph
  %i.bl = load ptr, ptr %0, align 8, !tbaa !453
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 %i.e
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.prol.preheader
  %.044.prol = phi ptr [ %0, %.prol.preheader ], [ %.0.prol, %bb.m ]
  %.0.prol = phi ptr [ %i.bm, %.prol.preheader ], [ %i.bv, %bb.m ] ; 5 uses
  %i.bn = load ptr, ptr %.0.prol, align 8, !tbaa !453
  store ptr %i.bn, ptr %.044.prol, align 8, !tbaa !453
  %i.bo = ptrtoint ptr %.0.prol to i64
  %i.bp = sub i64 %i.aa, %i.bo
  %i.bq = ashr exact i64 %i.bp, 3                 ; 2 uses
  %i.br = icmp ugt i64 %i.bq, %i.f
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.prol, i64 %i.e
  %i.bt = sub nsw i64 0, %i.bq
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.bt
  %i.bv = select i1 %i.br, ptr %i.bs, ptr %i.bu   ; 2 uses
  %.not53.prol = icmp eq ptr %i.bv, %0
  br i1 %.not53.prol, label %.prol.loopexit.unr-lcssa, label %bb.m, !llvm.loop !4089

.prol.loopexit.unr-lcssa:                         ; preds = %bb.m
  store ptr %i.bl, ptr %.0.prol, align 8, !tbaa !453
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %.04561.unr = phi ptr [ %0, %.lr.ph ], [ %i.bw, %.prol.loopexit.unr-lcssa ]
  %i.bx = icmp eq i64 %i.bj, 0
  br i1 %i.bx, label %_ZN5boost20adl_move_swap_rangesIPPNS_9container4test11movable_intES5_EET0_T_S7_S6_.exit, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %bb.q
  %.04561 = phi ptr [ %i.cv, %bb.q ], [ %.04561.unr, %.prol.loopexit ] ; 6 uses
  %i.by = load ptr, ptr %.04561, align 8, !tbaa !453
  %i.bz = getelementptr inbounds nuw i8, ptr %.04561, i64 %i.e
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph.new
  %.044 = phi ptr [ %.04561, %.lr.ph.new ], [ %.0, %bb.n ]
end_hunk_0
begin_hunk_1_@_ZN5boost9container10deque_baseINS0_13new_allocatorINS0_4test12copyable_intEEENS0_9deque_optILm0ELm0EmLb1EEELb0EE29prot_reallocate_map_and_nodesENS_11move_detail5bool_ILb1EEENSA_ILb0EEEmb:bb.a
bb.l:                                             ; preds = %.body
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.m unwind label %bb.s

bb.m:                                             ; preds = %bb.l
  resume { ptr, i32 } %i.bk

_ZN5boost9container10deque_baseINS0_13new_allocatorINS0_4test12copyable_intEEENS0_9deque_optILm0ELm0EmLb1EEELb0EE19prot_allocate_nodesEPPS4_m.exit: ; preds = %_ZN5boost9container10deque_baseINS0_13new_allocatorINS0_4test12copyable_intEEENS0_9deque_optILm0ELm0EmLb1EEELb0EE18prot_allocate_nodeEv.exit.i, %_ZN5boost9container10deque_baseINS0_13new_allocatorINS0_4test12copyable_intEEENS0_9deque_optILm0ELm0EmLb1EEELb0EE17prot_allocate_mapEm.exit
  %.idx86 = shl nsw i64 %i.av, 3                  ; 2 uses
  %i.bl = getelementptr inbounds i8, ptr %i.ap, i64 %.idx86 ; 3 uses
  %.not.i.i = icmp ne i64 %i.m, 0
  %i.bm = icmp ne ptr %i.c, null
  %or.cond = select i1 %.not.i.i, i1 %i.bm, i1 false, !prof !556
  br i1 %or.cond, label %bb.n, label %_ZN5boost9container6move_nIPPNS0_4test12copyable_intES5_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES8_mS9_.exit, !prof !556

bb.n:                                             ; preds = %_ZN5boost9container10deque_baseINS0_13new_allocatorINS0_4test12copyable_intEEENS0_9deque_optILm0ELm0EmLb1EEELb0EE19prot_allocate_nodesEPPS4_m.exit
  %i.bn = shl i64 %i.m, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bl, ptr nonnull align 1 %i.c, i64 %i.bn, i1 false)
  br label %_ZN5boost9container6move_nIPPNS0_4test12copyable_intES5_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES8_mS9_.exit

_ZN5boost9container6move_nIPPNS0_4test12copyable_intES5_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES8_mS9_.exit: ; preds = %bb.n, %_ZN5boost9container10deque_baseINS0_13new_allocatorINS0_4test12copyable_intEEENS0_9deque_optILm0ELm0EmLb1EEELb0EE19prot_allocate_nodesEPPS4_m.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.idx91 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.i ; 2 uses
  %i.bq = add nsw i64 %.idx86, %.idx91
  %i.br = icmp slt i64 %.idx, %i.bq
  br i1 %i.br, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN5boost9container6move_nIPPNS0_4test12copyable_intES5_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES8_mS9_.exit
  %i.bs = tail call noundef ptr @_ZN5boost7movelib10rotate_gcdIPPNS_9container4test12copyable_intEEET_S7_S7_S7_(ptr noundef nonnull %i.au, ptr noundef nonnull %i.bo, ptr noundef nonnull %i.bp) ; 0 uses
  br label %bb.q

bb.p:                                             ; preds = %_ZN5boost9container6move_nIPPNS0_4test12copyable_intES5_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES8_mS9_.exit
  %i.bt = getelementptr inbounds i8, ptr %i.au, i64 %gepdiff
  %i.bu = tail call noundef ptr @_ZN5boost7movelib10rotate_gcdIPPNS_9container4test12copyable_intEEET_S7_S7_S7_(ptr noundef nonnull %i.bo, ptr noundef nonnull %i.bp, ptr noundef nonnull %i.bt) ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bv = shl i64 %i.m, 3
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.bv) #22
  store ptr %i.ap, ptr %0, align 8, !tbaa !484
  store i64 %.sroa.speculated, ptr %i.l, align 8, !tbaa !569
  br label %bb.r

bb.r:                                             ; preds = %bb.c, %bb.d, %bb.q
  %.0 = phi ptr [ %i.au, %bb.q ], [ %i.ac, %bb.d ], [ %i.ac, %bb.c ] ; 2 uses
  %i.bw = load ptr, ptr %0, align 8, !tbaa !484
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = getelementptr i8, ptr %.0, i64 %gepdiff
  %i.bz = getelementptr i8, ptr %i.by, i64 -8
  %i.ca = insertelement <2 x ptr> poison, ptr %.0, i64 0
  %i.cb = insertelement <2 x ptr> %i.ca, ptr %i.bz, i64 1
  %i.cc = ptrtoint <2 x ptr> %i.cb to <2 x i64>
  %i.cd = insertelement <2 x i64> poison, i64 %i.bx, i64 0
  %i.ce = shufflevector <2 x i64> %i.cd, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.cf = sub <2 x i64> %i.cc, %i.ce
  %i.cg = shl <2 x i64> %i.cf, splat (i64 5)
  %i.ch = load <2 x i64>, ptr %i.a, align 8, !tbaa !358
  %i.ci = and <2 x i64> %i.ch, splat (i64 255)
  %i.cj = add <2 x i64> %i.cg, %i.ci
  store <2 x i64> %i.cj, ptr %i.a, align 8, !tbaa !358
  ret void

bb.s:                                             ; preds = %bb.l
  %i.ck = landingpad { ptr, i32 }
          catch ptr null
  %i.cl = extractvalue { ptr, i32 } %i.ck, 0
  tail call void @__clang_call_terminate(ptr %i.cl) #23
  unreachable

bb.t:                                             ; preds = %.body
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container10deque_baseINS0_13new_allocatorINS0_4test12copyable_intEEENS0_9deque_optILm0ELm0EmLb1EEELb0EE29prot_initialize_map_and_nodesEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = lshr i64 %1, 8
  %i.b = add nuw nsw i64 %i.a, 1                  ; 2 uses
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.b, i64 4) ; 5 uses
  %i.c = shl i64 %.sroa.speculated, 8
  %i.d = add i64 %i.c, -2305843009213694208
  %i.e = icmp ult i64 %i.d, -2305843009213693952
  br i1 %i.e, label %bb.b, label %_ZN5boost9container10deque_baseINS0_13new_allocatorINS0_4test12copyable_intEEENS0_9deque_optILm0ELm0EmLb1EEELb0EE17prot_allocate_mapEm.exit, !prof !375

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.40) #26
  unreachable

_ZN5boost9container10deque_baseINS0_13new_allocatorINS0_4test12copyable_intEEENS0_9deque_optILm0ELm0EmLb1EEELb0EE17prot_allocate_mapEm.exit: ; preds = %bb.a
  %i.f = shl nuw nsw i64 %.sroa.speculated, 3
  %i.g = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #27 ; 3 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !484
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 %.sroa.speculated, ptr %i.h, align 8, !tbaa !569
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN5boost9container10deque_baseINS0_13new_allocatorINS0_4test12copyable_intEEENS0_9deque_optILm0ELm0EmLb1EEELb0EE17prot_allocate_mapEm.exit, %_ZN5boost9container10deque_baseINS0_13new_allocatorINS0_4test12copyable_intEEENS0_9deque_optILm0ELm0EmLb1EEELb0EE18prot_allocate_nodeEv.exit.i
  %.01315.i = phi i64 [ %i.k, %_ZN5boost9container10deque_baseINS0_13new_allocatorINS0_4test12copyable_intEEENS0_9deque_optILm0ELm0EmLb1EEELb0EE18prot_allocate_nodeEv.exit.i ], [ 0, %_ZN5boost9container10deque_baseINS0_13new_allocatorINS0_4test12copyable_intEEENS0_9deque_optILm0ELm0EmLb1EEELb0EE17prot_allocate_mapEm.exit ] ; 4 uses
  %i.i = invoke noalias noundef nonnull dereferenceable(1024) ptr @_Znwm(i64 noundef 1024) #27
          to label %_ZN5boost9container10deque_baseINS0_13new_allocatorINS0_4test12copyable_intEEENS0_9deque_optILm0ELm0EmLb1EEELb0EE18prot_allocate_nodeEv.exit.i unwind label %bb.c

_ZN5boost9container10deque_baseINS0_13new_allocatorINS0_4test12copyable_intEEENS0_9deque_optILm0ELm0EmLb1EEELb0EE18prot_allocate_nodeEv.exit.i: ; preds = %.lr.ph.i
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.01315.i
  store ptr %i.i, ptr %i.j, align 8, !tbaa !487
  %i.k = add nuw nsw i64 %.01315.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.k, %.sroa.speculated
  br i1 %exitcond.not.i, label %_ZN5boost9container10deque_baseINS0_13new_allocatorINS0_4test12copyable_intEEENS0_9deque_optILm0ELm0EmLb1EEELb0EE19prot_allocate_nodesEPPS4_m.exit, label %.lr.ph.i, !llvm.loop !82

bb.c:                                             ; preds = %.lr.ph.i
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.m) #22 ; 0 uses
  %.not20.i = icmp eq i64 %.01315.i, 0
  br i1 %.not20.i, label %._crit_edge19.i, label %.lr.ph18.i

._crit_edge19.i:                                  ; preds = %.lr.ph18.i, %bb.c
  invoke void @__cxa_rethrow() #26
          to label %bb.f unwind label %bb.d

.lr.ph18.i:                                       ; preds = %bb.c, %.lr.ph18.i
  %.016.i = phi i64 [ %i.q, %.lr.ph18.i ], [ 0, %bb.c ] ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.016.i
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !487
  tail call void @_ZdlPvm(ptr noundef %i.p, i64 noundef 1024) #22
  %i.q = add nuw nsw i64 %.016.i, 1               ; 2 uses
  %exitcond24.not.i = icmp eq i64 %i.q, %.01315.i
  br i1 %exitcond24.not.i, label %._crit_edge19.i, label %.lr.ph18.i, !llvm.loop !83

bb.d:                                             ; preds = %._crit_edge19.i
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #23
  unreachable

bb.f:                                             ; preds = %._crit_edge19.i
  unreachable

.body:                                            ; preds = %bb.d
  %i.u = extractvalue { ptr, i32 } %i.r, 0
  %i.v = tail call ptr @__cxa_begin_catch(ptr %i.u) #22 ; 0 uses
  %i.w = load ptr, ptr %0, align 8, !tbaa !484
  %i.x = load i64, ptr %i.h, align 8, !tbaa !569
  %i.y = shl i64 %i.x, 3
  tail call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.y) #22
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  invoke void @__cxa_rethrow() #26
          to label %bb.j unwind label %bb.g

bb.g:                                             ; preds = %.body
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.z

_ZN5boost9container10deque_baseINS0_13new_allocatorINS0_4test12copyable_intEEENS0_9deque_optILm0ELm0EmLb1EEELb0EE19prot_allocate_nodesEPPS4_m.exit: ; preds = %_ZN5boost9container10deque_baseINS0_13new_allocatorINS0_4test12copyable_intEEENS0_9deque_optILm0ELm0EmLb1EEELb0EE18prot_allocate_nodeEv.exit.i
  %i.aa = sub nuw nsw i64 %.sroa.speculated, %i.b
  %i.ab = shl nuw nsw i64 %i.aa, 7
  %i.ac = and i64 %i.ab, 9223372036854775552      ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !491
  %i.ae = add i64 %i.ac, %1
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !485
  ret void

bb.i:                                             ; preds = %bb.g
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  tail call void @__clang_call_terminate(ptr %i.ah) #23
  unreachable

bb.j:                                             ; preds = %.body
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost7movelib10rotate_gcdIPPNS_9container4test12copyable_intEEET_S7_S7_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZN5boost20adl_move_swap_rangesIPPNS_9container4test12copyable_intES5_EET0_T_S7_S6_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %_ZN5boost20adl_move_swap_rangesIPPNS_9container4test12copyable_intES5_EET0_T_S7_S6_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.d = ptrtoint ptr %0 to i64                   ; 4 uses
  %i.e = sub i64 %i.c, %i.d                       ; 8 uses
  %i.f = ashr exact i64 %i.e, 3                   ; 10 uses
  %i.g = sub nsw i64 0, %i.f
  %i.h = getelementptr inbounds [8 x i8], ptr %2, i64 %i.g ; 6 uses
  %i.i = icmp eq ptr %1, %i.h
  br i1 %i.i, label %.lr.ph.i.preheader, label %bb.d

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.j = add i64 %i.c, -8
  %i.k = sub i64 %i.j, %i.d                       ; 2 uses
  %i.l = lshr i64 %i.k, 3
  %i.m = add nuw nsw i64 %i.l, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.k, 104
  br i1 %min.iters.check, label %.lr.ph.i.preheader82, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %3 = add i64 %i.c, -8
  %4 = sub i64 %3, %i.d
  %i.n = and i64 %4, -8
  %i.o = add i64 %i.n, 8                          ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 %i.o
  %scevgep76 = getelementptr i8, ptr %1, i64 %i.o
  %bound0 = icmp ult ptr %0, %scevgep76
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader82, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.m, 4611686018427387900      ; 3 uses
  %i.p = shl i64 %n.vec, 3                        ; 2 uses
  %i.q = getelementptr i8, ptr %1, i64 %i.p
  %i.r = getelementptr i8, ptr %0, i64 %i.p
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.s = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %1, i64 %i.s  ; 3 uses
  %next.gep77 = getelementptr i8, ptr %0, i64 %i.s ; 3 uses
  %i.t = getelementptr i8, ptr %next.gep77, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %next.gep77, align 8, !tbaa !487, !alias.scope !5435, !noalias !5436
  %wide.load78 = load <2 x ptr>, ptr %i.t, align 8, !tbaa !487, !alias.scope !5435, !noalias !5436
  %i.u = getelementptr i8, ptr %next.gep, i64 16  ; 2 uses
  %wide.load79 = load <2 x ptr>, ptr %next.gep, align 8, !tbaa !487, !alias.scope !5436
  %wide.load80 = load <2 x ptr>, ptr %i.u, align 8, !tbaa !487, !alias.scope !5436
  store <2 x ptr> %wide.load79, ptr %next.gep77, align 8, !tbaa !487, !alias.scope !5435, !noalias !5436
  store <2 x ptr> %wide.load80, ptr %i.t, align 8, !tbaa !487, !alias.scope !5435, !noalias !5436
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !487, !alias.scope !5436
  store <2 x ptr> %wide.load78, ptr %i.u, align 8, !tbaa !487, !alias.scope !5436
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !5431

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.m, %n.vec
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesIPPNS_9container4test12copyable_intES5_EET0_T_S7_S6_.exit, label %.lr.ph.i.preheader82

.lr.ph.i.preheader82:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.010.i.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.i.preheader ], [ %i.q, %middle.block ]
  %.079.i.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.i.preheader ], [ %i.r, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader82, %.lr.ph.i
  %.010.i = phi ptr [ %i.z, %.lr.ph.i ], [ %.010.i.ph, %.lr.ph.i.preheader82 ] ; 3 uses
  %.079.i = phi ptr [ %i.y, %.lr.ph.i ], [ %.079.i.ph, %.lr.ph.i.preheader82 ] ; 3 uses
  %i.w = load ptr, ptr %.079.i, align 8, !tbaa !487
  %i.x = load ptr, ptr %.010.i, align 8, !tbaa !487
  store ptr %i.x, ptr %.079.i, align 8, !tbaa !487
  store ptr %i.w, ptr %.010.i, align 8, !tbaa !487
  %i.y = getelementptr inbounds nuw i8, ptr %.079.i, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.010.i, i64 8
  %.not.i = icmp eq ptr %i.y, %1
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesIPPNS_9container4test12copyable_intES5_EET0_T_S7_S6_.exit, label %.lr.ph.i, !llvm.loop !5432

bb.d:                                             ; preds = %bb.c
  %i.aa = ptrtoint ptr %2 to i64                  ; 4 uses
  %i.ab = sub i64 %i.aa, %i.d
  %i.ac = ashr exact i64 %i.ab, 3                 ; 6 uses
  %i.ad = add nsw i64 %i.ac, -1
  %i.ae = and i64 %i.ad, %i.ac
  %i.af = add nsw i64 %i.f, -1
  %i.ag = and i64 %i.af, %i.f
  %i.ah = or i64 %i.ae, %i.ag
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %bb.e, label %.preheader36.i

.preheader36.i:                                   ; preds = %bb.d
  %i.aj = or i64 %i.ac, %i.f
  %i.ak = and i64 %i.aj, 1
  %.not.not37.i = icmp eq i64 %i.ak, 0
  br i1 %.not.not37.i, label %.lr.ph.i56, label %.preheader.i

bb.e:                                             ; preds = %bb.d
  %i.al = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 %i.f)
  br label %_ZN5boost7movelib3gcdImEET_S2_S2_.exit

.preheader.i:                                     ; preds = %.lr.ph.i56, %.preheader36.i
  %.030.lcssa.i = phi i64 [ %i.ac, %.preheader36.i ], [ %i.aq, %.lr.ph.i56 ] ; 3 uses
  %.029.lcssa.i = phi i64 [ %i.f, %.preheader36.i ], [ %i.ar, %.lr.ph.i56 ] ; 3 uses
  %.0.lcssa.i54 = phi i64 [ 1, %.preheader36.i ], [ %i.ap, %.lr.ph.i56 ]
  %i.am = icmp ne i64 %.030.lcssa.i, 0
  %i.an = icmp ne i64 %.029.lcssa.i, 0
  %i.ao = and i1 %i.am, %i.an
  br i1 %i.ao, label %.lr.ph45.i, label %._crit_edge.i

.lr.ph.i56:                                       ; preds = %.preheader36.i, %.lr.ph.i56
  %.040.i = phi i64 [ %i.ap, %.lr.ph.i56 ], [ 1, %.preheader36.i ]
  %.02939.i = phi i64 [ %i.ar, %.lr.ph.i56 ], [ %i.f, %.preheader36.i ]
  %.03038.i = phi i64 [ %i.aq, %.lr.ph.i56 ], [ %i.ac, %.preheader36.i ]
  %i.ap = shl i64 %.040.i, 1                      ; 2 uses
  %i.aq = lshr i64 %.03038.i, 1                   ; 3 uses
  %i.ar = lshr i64 %.02939.i, 1                   ; 3 uses
  %i.as = or i64 %i.aq, %i.ar
  %i.at = and i64 %i.as, 1
  %.not.not.i = icmp eq i64 %i.at, 0
  br i1 %.not.not.i, label %.lr.ph.i56, label %.preheader.i, !llvm.loop !46

.lr.ph45.i:                                       ; preds = %.preheader.i, %bb.l
  %.144.i = phi i64 [ %.2.i, %bb.l ], [ %.029.lcssa.i, %.preheader.i ] ; 7 uses
  %.13143.i = phi i64 [ %.232.i, %bb.l ], [ %.030.lcssa.i, %.preheader.i ] ; 7 uses
  %i.au = and i64 %.13143.i, 1
  %.not.i55 = icmp eq i64 %i.au, 0
  br i1 %.not.i55, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph45.i
  %i.av = lshr exact i64 %.13143.i, 1
  br label %bb.l

bb.g:                                             ; preds = %.lr.ph45.i
  %i.aw = and i64 %.144.i, 1
  %.not34.i = icmp eq i64 %i.aw, 0
  br i1 %.not34.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ax = lshr exact i64 %.144.i, 1
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %.not35.i = icmp ult i64 %.13143.i, %.144.i
  br i1 %.not35.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ay = sub nuw i64 %.13143.i, %.144.i
  %i.az = lshr exact i64 %i.ay, 1
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ba = sub nuw i64 %.144.i, %.13143.i
  %i.bb = lshr exact i64 %i.ba, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.h, %bb.f
  %.232.i = phi i64 [ %i.az, %bb.j ], [ %.13143.i, %bb.k ], [ %.13143.i, %bb.h ], [ %i.av, %bb.f ] ; 3 uses
  %.2.i = phi i64 [ %.144.i, %bb.j ], [ %i.bb, %bb.k ], [ %i.ax, %bb.h ], [ %.144.i, %bb.f ] ; 3 uses
  %i.bc = icmp ne i64 %.232.i, 0
  %i.bd = icmp ne i64 %.2.i, 0
  %i.be = select i1 %i.bc, i1 %i.bd, i1 false
  br i1 %i.be, label %.lr.ph45.i, label %._crit_edge.i, !llvm.loop !47

._crit_edge.i:                                    ; preds = %bb.l, %.preheader.i
  %.131.lcssa.i = phi i64 [ %.030.lcssa.i, %.preheader.i ], [ %.232.i, %bb.l ]
  %.1.lcssa.i = phi i64 [ %.029.lcssa.i, %.preheader.i ], [ %.2.i, %bb.l ]
  %i.bf = add i64 %.1.lcssa.i, %.131.lcssa.i
  %i.bg = mul i64 %i.bf, %.0.lcssa.i54
  br label %_ZN5boost7movelib3gcdImEET_S2_S2_.exit

_ZN5boost7movelib3gcdImEET_S2_S2_.exit:           ; preds = %bb.e, %._crit_edge.i
  %.033.i = phi i64 [ %i.al, %bb.e ], [ %i.bg, %._crit_edge.i ] ; 2 uses
  %.idx = shl i64 %.033.i, 3                      ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %.not60 = icmp eq i64 %.033.i, 0
  br i1 %.not60, label %_ZN5boost20adl_move_swap_rangesIPPNS_9container4test12copyable_intES5_EET0_T_S7_S6_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5boost7movelib3gcdImEET_S2_S2_.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 %i.e ; 3 uses
  %i.bj = add i64 %.idx, -8                       ; 2 uses
  %i.bk = and i64 %i.bj, 8
  %lcmp.mod.not.not = icmp eq i64 %i.bk, 0
  br i1 %lcmp.mod.not.not, label %.prol.preheader, label %.prol.loopexit

.prol.preheader:                                  ; preds = %.lr.ph
  %i.bl = load ptr, ptr %0, align 8, !tbaa !487
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 %i.e
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.prol.preheader
  %.044.prol = phi ptr [ %0, %.prol.preheader ], [ %.0.prol, %bb.m ]
  %.0.prol = phi ptr [ %i.bm, %.prol.preheader ], [ %i.bv, %bb.m ] ; 5 uses
  %i.bn = load ptr, ptr %.0.prol, align 8, !tbaa !487
  store ptr %i.bn, ptr %.044.prol, align 8, !tbaa !487
  %i.bo = ptrtoint ptr %.0.prol to i64
  %i.bp = sub i64 %i.aa, %i.bo
  %i.bq = ashr exact i64 %i.bp, 3                 ; 2 uses
  %i.br = icmp ugt i64 %i.bq, %i.f
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.prol, i64 %i.e
  %i.bt = sub nsw i64 0, %i.bq
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.bt
  %i.bv = select i1 %i.br, ptr %i.bs, ptr %i.bu   ; 2 uses
  %.not53.prol = icmp eq ptr %i.bv, %0
  br i1 %.not53.prol, label %.prol.loopexit.unr-lcssa, label %bb.m, !llvm.loop !5433

.prol.loopexit.unr-lcssa:                         ; preds = %bb.m
  store ptr %i.bl, ptr %.0.prol, align 8, !tbaa !487
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %.04561.unr = phi ptr [ %0, %.lr.ph ], [ %i.bw, %.prol.loopexit.unr-lcssa ]
  %i.bx = icmp eq i64 %i.bj, 0
  br i1 %i.bx, label %_ZN5boost20adl_move_swap_rangesIPPNS_9container4test12copyable_intES5_EET0_T_S7_S6_.exit, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %bb.q
  %.04561 = phi ptr [ %i.cv, %bb.q ], [ %.04561.unr, %.prol.loopexit ] ; 6 uses
  %i.by = load ptr, ptr %.04561, align 8, !tbaa !487
  %i.bz = getelementptr inbounds nuw i8, ptr %.04561, i64 %i.e
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph.new
  %.044 = phi ptr [ %.04561, %.lr.ph.new ], [ %.0, %bb.n ]
end_hunk_1
begin_hunk_2_@_ZN5boost9container10deque_baseINS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EmLb1EEELb0EE29prot_reallocate_map_and_nodesENS_11move_detail5bool_ILb1EEENS8_ILb0EEEmb:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx93 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !645
  %i.h = lshr i64 %i.g, 5
  %.idx92 = and i64 %i.h, 576460752303423480
  %i.i = add nuw nsw i64 %.idx92, 8               ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.i ; 2 uses
  %gepdiff = sub nsw i64 %i.i, %.idx93            ; 4 uses
  %i.k = ashr exact i64 %gepdiff, 3
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !646  ; 8 uses
  %i.n = add i64 %1, -1
  %i.o = lshr i64 %i.n, 8
  %i.p = add nuw nsw i64 %i.o, 1
  %i.q = lshr i64 %i.b, 8
  %i.r = lshr exact i64 %i.i, 3
  %i.s = sub i64 %i.m, %i.r
  %i.t = select i1 %2, i64 %i.q, i64 %i.s
  %i.u = add i64 %i.p, %i.t                       ; 3 uses
  %i.v = add i64 %i.u, %i.k                       ; 4 uses
  %i.w = udiv i64 %i.m, 3
  %i.x = lshr i64 %i.v, 1
  %.not = icmp samesign ult i64 %i.w, %i.x
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.y = sub i64 %i.m, %i.v
  %i.z = lshr i64 %i.y, 1
  %i.aa = select i1 %2, i64 %i.u, i64 0
  %i.ab = getelementptr [8 x i8], ptr %i.c, i64 %i.z
  %i.ac = getelementptr [8 x i8], ptr %i.ab, i64 %i.aa ; 5 uses
  %i.ad = icmp ult ptr %i.ac, %i.e
  br i1 %i.ad, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ae = tail call noundef ptr @_ZN5boost7movelib10rotate_gcdIPPiEET_S4_S4_S4_(ptr noundef %i.ac, ptr noundef nonnull %i.e, ptr noundef nonnull %i.j) ; 0 uses
  br label %bb.t

bb.d:                                             ; preds = %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 %gepdiff
  %i.ag = tail call noundef ptr @_ZN5boost7movelib10rotate_gcdIPPiEET_S4_S4_S4_(ptr noundef %i.e, ptr noundef nonnull %i.j, ptr noundef %i.af) ; 0 uses
  br label %bb.t

bb.e:                                             ; preds = %bb.a
  %i.ah = lshr i64 %i.m, 1
  %i.ai = add i64 %i.ah, %i.m
  %i.aj = add i64 %i.v, 1
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.ai, i64 %i.aj) ; 6 uses
  %i.ak = shl i64 %.sroa.speculated, 8
  %i.al = add i64 %i.ak, -2305843009213694208
  %i.am = icmp ult i64 %i.al, -2305843009213693952
  br i1 %i.am, label %bb.f, label %_ZN5boost9container10deque_baseINS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EmLb1EEELb0EE21test_size_against_maxEm.exit, !prof !375

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.40) #26
  unreachable

_ZN5boost9container10deque_baseINS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EmLb1EEELb0EE21test_size_against_maxEm.exit: ; preds = %bb.e
  %i.an = icmp ugt i64 %.sroa.speculated, 1152921504606846975
  br i1 %i.an, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN5boost9container10deque_baseINS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EmLb1EEELb0EE21test_size_against_maxEm.exit
  tail call void @_ZN5boost9container15throw_bad_allocEv() #26
  unreachable

bb.h:                                             ; preds = %_ZN5boost9container10deque_baseINS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EmLb1EEELb0EE21test_size_against_maxEm.exit
  %i.ao = shl nuw nsw i64 %.sroa.speculated, 3
  %i.ap = tail call noundef ptr @_ZN5boost9container17dlmalloc_memalignEmm(i64 noundef %i.ao, i64 noundef 8) ; 6 uses
  %.not.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i, label %bb.i, label %_ZN5boost9container10deque_baseINS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EmLb1EEELb0EE17prot_allocate_mapEm.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN5boost9container15throw_bad_allocEv() #26
  unreachable

_ZN5boost9container10deque_baseINS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EmLb1EEELb0EE17prot_allocate_mapEm.exit: ; preds = %bb.h
  %i.aq = sub i64 %.sroa.speculated, %i.v
  %i.ar = lshr i64 %i.aq, 1
  %i.as = select i1 %2, i64 %i.u, i64 0
  %i.at = add i64 %i.ar, %i.as
  %.idx = shl nsw i64 %i.at, 3                    ; 2 uses
  %i.au = getelementptr inbounds i8, ptr %i.ap, i64 %.idx ; 3 uses
  %i.av = sub i64 %.sroa.speculated, %i.m         ; 2 uses
  invoke void @_ZN5boost9container10deque_baseINS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EmLb1EEELb0EE19prot_allocate_nodesEPPim(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.ap, i64 noundef %i.av)
          to label %bb.n unwind label %bb.j

bb.j:                                             ; preds = %_ZN5boost9container10deque_baseINS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EmLb1EEELb0EE17prot_allocate_mapEm.exit
  %i.aw = landingpad { ptr, i32 }
          catch ptr null
  %i.ax = extractvalue { ptr, i32 } %i.aw, 0
  %i.ay = tail call ptr @__cxa_begin_catch(ptr %i.ax) #22 ; 0 uses
  invoke void @_ZN5boost9container13dlmalloc_freeEPv(ptr noundef nonnull %i.ap)
          to label %_ZN5boost9container10deque_baseINS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EmLb1EEELb0EE19prot_deallocate_mapEPPim.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  tail call void @__clang_call_terminate(ptr %i.ba) #23
  unreachable

_ZN5boost9container10deque_baseINS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EmLb1EEELb0EE19prot_deallocate_mapEPPim.exit: ; preds = %bb.j
  invoke void @__cxa_rethrow() #26
          to label %bb.v unwind label %bb.l

bb.l:                                             ; preds = %_ZN5boost9container10deque_baseINS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EmLb1EEELb0EE19prot_deallocate_mapEPPim.exit
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.m unwind label %bb.u

bb.m:                                             ; preds = %bb.l
  resume { ptr, i32 } %i.bb

bb.n:                                             ; preds = %_ZN5boost9container10deque_baseINS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EmLb1EEELb0EE17prot_allocate_mapEm.exit
  %.idx86 = shl nsw i64 %i.av, 3                  ; 2 uses
  %i.bc = getelementptr inbounds i8, ptr %i.ap, i64 %.idx86 ; 3 uses
  %.not.i.i87 = icmp ne i64 %i.m, 0
  %i.bd = icmp ne ptr %i.c, null
  %or.cond = select i1 %.not.i.i87, i1 %i.bd, i1 false, !prof !556
  br i1 %or.cond, label %bb.o, label %_ZN5boost9container6move_nIPPiS3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit, !prof !556

bb.o:                                             ; preds = %bb.n
  %i.be = shl i64 %i.m, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bc, ptr nonnull align 1 %i.c, i64 %i.be, i1 false)
  br label %_ZN5boost9container6move_nIPPiS3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit

_ZN5boost9container6move_nIPPiS3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit: ; preds = %bb.o, %bb.n
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.idx93 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.i ; 2 uses
  %i.bh = add nsw i64 %.idx86, %.idx93
  %i.bi = icmp slt i64 %.idx, %i.bh
  br i1 %i.bi, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN5boost9container6move_nIPPiS3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit
  %i.bj = tail call noundef ptr @_ZN5boost7movelib10rotate_gcdIPPiEET_S4_S4_S4_(ptr noundef nonnull %i.au, ptr noundef nonnull %i.bf, ptr noundef nonnull %i.bg) ; 0 uses
  br label %bb.r

bb.q:                                             ; preds = %_ZN5boost9container6move_nIPPiS3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_mS7_.exit
  %i.bk = getelementptr inbounds i8, ptr %i.au, i64 %gepdiff
  %i.bl = tail call noundef ptr @_ZN5boost7movelib10rotate_gcdIPPiEET_S4_S4_S4_(ptr noundef nonnull %i.bf, ptr noundef nonnull %i.bg, ptr noundef nonnull %i.bk) ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  invoke void @_ZN5boost9container13dlmalloc_freeEPv(ptr noundef %i.c)
          to label %_ZN5boost9container10deque_baseINS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EmLb1EEELb0EE19prot_deallocate_mapEPPim.exit88 unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bm = landingpad { ptr, i32 }
          catch ptr null
  %i.bn = extractvalue { ptr, i32 } %i.bm, 0
  tail call void @__clang_call_terminate(ptr %i.bn) #23
  unreachable

_ZN5boost9container10deque_baseINS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EmLb1EEELb0EE19prot_deallocate_mapEPPim.exit88: ; preds = %bb.r
  store ptr %i.ap, ptr %0, align 8, !tbaa !640
  store i64 %.sroa.speculated, ptr %i.l, align 8, !tbaa !646
  br label %bb.t

bb.t:                                             ; preds = %bb.c, %bb.d, %_ZN5boost9container10deque_baseINS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EmLb1EEELb0EE19prot_deallocate_mapEPPim.exit88
  %.0 = phi ptr [ %i.au, %_ZN5boost9container10deque_baseINS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EmLb1EEELb0EE19prot_deallocate_mapEPPim.exit88 ], [ %i.ac, %bb.d ], [ %i.ac, %bb.c ] ; 2 uses
  %i.bo = load ptr, ptr %0, align 8, !tbaa !640
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = getelementptr i8, ptr %.0, i64 %gepdiff
  %i.br = getelementptr i8, ptr %i.bq, i64 -8
  %i.bs = insertelement <2 x ptr> poison, ptr %.0, i64 0
  %i.bt = insertelement <2 x ptr> %i.bs, ptr %i.br, i64 1
  %i.bu = ptrtoint <2 x ptr> %i.bt to <2 x i64>
  %i.bv = insertelement <2 x i64> poison, i64 %i.bp, i64 0
  %i.bw = shufflevector <2 x i64> %i.bv, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.bx = sub <2 x i64> %i.bu, %i.bw
  %i.by = shl <2 x i64> %i.bx, splat (i64 5)
  %i.bz = load <2 x i64>, ptr %i.a, align 8, !tbaa !358
  %i.ca = and <2 x i64> %i.bz, splat (i64 255)
  %i.cb = add <2 x i64> %i.by, %i.ca
  store <2 x i64> %i.cb, ptr %i.a, align 8, !tbaa !358
  ret void

bb.u:                                             ; preds = %bb.l
  %i.cc = landingpad { ptr, i32 }
          catch ptr null
  %i.cd = extractvalue { ptr, i32 } %i.cc, 0
  tail call void @__clang_call_terminate(ptr %i.cd) #23
  unreachable

bb.v:                                             ; preds = %_ZN5boost9container10deque_baseINS0_9allocatorIiLj2ELj0EEENS0_9deque_optILm0ELm0EmLb1EEELb0EE19prot_deallocate_mapEPPim.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost7movelib10rotate_gcdIPPiEET_S4_S4_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZN5boost20adl_move_swap_rangesIPPiS2_EET0_T_S4_S3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %_ZN5boost20adl_move_swap_rangesIPPiS2_EET0_T_S4_S3_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.d = ptrtoint ptr %0 to i64                   ; 4 uses
  %i.e = sub i64 %i.c, %i.d                       ; 8 uses
  %i.f = ashr exact i64 %i.e, 3                   ; 10 uses
  %i.g = sub nsw i64 0, %i.f
  %i.h = getelementptr inbounds [8 x i8], ptr %2, i64 %i.g ; 6 uses
  %i.i = icmp eq ptr %1, %i.h
  br i1 %i.i, label %.lr.ph.i.preheader, label %bb.d

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.j = add i64 %i.c, -8
  %i.k = sub i64 %i.j, %i.d                       ; 2 uses
  %i.l = lshr i64 %i.k, 3
  %i.m = add nuw nsw i64 %i.l, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.k, 104
  br i1 %min.iters.check, label %.lr.ph.i.preheader82, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %3 = add i64 %i.c, -8
  %4 = sub i64 %3, %i.d
  %i.n = and i64 %4, -8
  %i.o = add i64 %i.n, 8                          ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 %i.o
  %scevgep76 = getelementptr i8, ptr %1, i64 %i.o
  %bound0 = icmp ult ptr %0, %scevgep76
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader82, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.m, 4611686018427387900      ; 3 uses
  %i.p = shl i64 %n.vec, 3                        ; 2 uses
  %i.q = getelementptr i8, ptr %1, i64 %i.p
  %i.r = getelementptr i8, ptr %0, i64 %i.p
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.s = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %1, i64 %i.s  ; 3 uses
  %next.gep77 = getelementptr i8, ptr %0, i64 %i.s ; 3 uses
  %i.t = getelementptr i8, ptr %next.gep77, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %next.gep77, align 8, !tbaa !369, !alias.scope !15748, !noalias !15749
  %wide.load78 = load <2 x ptr>, ptr %i.t, align 8, !tbaa !369, !alias.scope !15748, !noalias !15749
  %i.u = getelementptr i8, ptr %next.gep, i64 16  ; 2 uses
  %wide.load79 = load <2 x ptr>, ptr %next.gep, align 8, !tbaa !369, !alias.scope !15749
  %wide.load80 = load <2 x ptr>, ptr %i.u, align 8, !tbaa !369, !alias.scope !15749
  store <2 x ptr> %wide.load79, ptr %next.gep77, align 8, !tbaa !369, !alias.scope !15748, !noalias !15749
  store <2 x ptr> %wide.load80, ptr %i.t, align 8, !tbaa !369, !alias.scope !15748, !noalias !15749
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !369, !alias.scope !15749
  store <2 x ptr> %wide.load78, ptr %i.u, align 8, !tbaa !369, !alias.scope !15749
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !15744

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.m, %n.vec
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesIPPiS2_EET0_T_S4_S3_.exit, label %.lr.ph.i.preheader82

.lr.ph.i.preheader82:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.010.i.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.i.preheader ], [ %i.q, %middle.block ]
  %.079.i.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.i.preheader ], [ %i.r, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader82, %.lr.ph.i
  %.010.i = phi ptr [ %i.z, %.lr.ph.i ], [ %.010.i.ph, %.lr.ph.i.preheader82 ] ; 3 uses
  %.079.i = phi ptr [ %i.y, %.lr.ph.i ], [ %.079.i.ph, %.lr.ph.i.preheader82 ] ; 3 uses
  %i.w = load ptr, ptr %.079.i, align 8, !tbaa !369
  %i.x = load ptr, ptr %.010.i, align 8, !tbaa !369
  store ptr %i.x, ptr %.079.i, align 8, !tbaa !369
  store ptr %i.w, ptr %.010.i, align 8, !tbaa !369
  %i.y = getelementptr inbounds nuw i8, ptr %.079.i, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.010.i, i64 8
  %.not.i = icmp eq ptr %i.y, %1
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesIPPiS2_EET0_T_S4_S3_.exit, label %.lr.ph.i, !llvm.loop !15745

bb.d:                                             ; preds = %bb.c
  %i.aa = ptrtoint ptr %2 to i64                  ; 4 uses
  %i.ab = sub i64 %i.aa, %i.d
  %i.ac = ashr exact i64 %i.ab, 3                 ; 6 uses
  %i.ad = add nsw i64 %i.ac, -1
  %i.ae = and i64 %i.ad, %i.ac
  %i.af = add nsw i64 %i.f, -1
  %i.ag = and i64 %i.af, %i.f
  %i.ah = or i64 %i.ae, %i.ag
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %bb.e, label %.preheader36.i

.preheader36.i:                                   ; preds = %bb.d
  %i.aj = or i64 %i.ac, %i.f
  %i.ak = and i64 %i.aj, 1
  %.not.not37.i = icmp eq i64 %i.ak, 0
  br i1 %.not.not37.i, label %.lr.ph.i56, label %.preheader.i

bb.e:                                             ; preds = %bb.d
  %i.al = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 %i.f)
  br label %_ZN5boost7movelib3gcdImEET_S2_S2_.exit

.preheader.i:                                     ; preds = %.lr.ph.i56, %.preheader36.i
  %.030.lcssa.i = phi i64 [ %i.ac, %.preheader36.i ], [ %i.aq, %.lr.ph.i56 ] ; 3 uses
  %.029.lcssa.i = phi i64 [ %i.f, %.preheader36.i ], [ %i.ar, %.lr.ph.i56 ] ; 3 uses
  %.0.lcssa.i54 = phi i64 [ 1, %.preheader36.i ], [ %i.ap, %.lr.ph.i56 ]
  %i.am = icmp ne i64 %.030.lcssa.i, 0
  %i.an = icmp ne i64 %.029.lcssa.i, 0
  %i.ao = and i1 %i.am, %i.an
  br i1 %i.ao, label %.lr.ph45.i, label %._crit_edge.i

.lr.ph.i56:                                       ; preds = %.preheader36.i, %.lr.ph.i56
  %.040.i = phi i64 [ %i.ap, %.lr.ph.i56 ], [ 1, %.preheader36.i ]
  %.02939.i = phi i64 [ %i.ar, %.lr.ph.i56 ], [ %i.f, %.preheader36.i ]
  %.03038.i = phi i64 [ %i.aq, %.lr.ph.i56 ], [ %i.ac, %.preheader36.i ]
  %i.ap = shl i64 %.040.i, 1                      ; 2 uses
  %i.aq = lshr i64 %.03038.i, 1                   ; 3 uses
  %i.ar = lshr i64 %.02939.i, 1                   ; 3 uses
  %i.as = or i64 %i.aq, %i.ar
  %i.at = and i64 %i.as, 1
  %.not.not.i = icmp eq i64 %i.at, 0
  br i1 %.not.not.i, label %.lr.ph.i56, label %.preheader.i, !llvm.loop !46

.lr.ph45.i:                                       ; preds = %.preheader.i, %bb.l
  %.144.i = phi i64 [ %.2.i, %bb.l ], [ %.029.lcssa.i, %.preheader.i ] ; 7 uses
  %.13143.i = phi i64 [ %.232.i, %bb.l ], [ %.030.lcssa.i, %.preheader.i ] ; 7 uses
  %i.au = and i64 %.13143.i, 1
  %.not.i55 = icmp eq i64 %i.au, 0
  br i1 %.not.i55, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph45.i
  %i.av = lshr exact i64 %.13143.i, 1
  br label %bb.l

bb.g:                                             ; preds = %.lr.ph45.i
  %i.aw = and i64 %.144.i, 1
  %.not34.i = icmp eq i64 %i.aw, 0
  br i1 %.not34.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ax = lshr exact i64 %.144.i, 1
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %.not35.i = icmp ult i64 %.13143.i, %.144.i
  br i1 %.not35.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ay = sub nuw i64 %.13143.i, %.144.i
  %i.az = lshr exact i64 %i.ay, 1
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ba = sub nuw i64 %.144.i, %.13143.i
  %i.bb = lshr exact i64 %i.ba, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.h, %bb.f
  %.232.i = phi i64 [ %i.az, %bb.j ], [ %.13143.i, %bb.k ], [ %.13143.i, %bb.h ], [ %i.av, %bb.f ] ; 3 uses
  %.2.i = phi i64 [ %.144.i, %bb.j ], [ %i.bb, %bb.k ], [ %i.ax, %bb.h ], [ %.144.i, %bb.f ] ; 3 uses
  %i.bc = icmp ne i64 %.232.i, 0
  %i.bd = icmp ne i64 %.2.i, 0
  %i.be = select i1 %i.bc, i1 %i.bd, i1 false
  br i1 %i.be, label %.lr.ph45.i, label %._crit_edge.i, !llvm.loop !47

._crit_edge.i:                                    ; preds = %bb.l, %.preheader.i
  %.131.lcssa.i = phi i64 [ %.030.lcssa.i, %.preheader.i ], [ %.232.i, %bb.l ]
  %.1.lcssa.i = phi i64 [ %.029.lcssa.i, %.preheader.i ], [ %.2.i, %bb.l ]
  %i.bf = add i64 %.1.lcssa.i, %.131.lcssa.i
  %i.bg = mul i64 %i.bf, %.0.lcssa.i54
  br label %_ZN5boost7movelib3gcdImEET_S2_S2_.exit

_ZN5boost7movelib3gcdImEET_S2_S2_.exit:           ; preds = %bb.e, %._crit_edge.i
  %.033.i = phi i64 [ %i.al, %bb.e ], [ %i.bg, %._crit_edge.i ] ; 2 uses
  %.idx = shl i64 %.033.i, 3                      ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %.not60 = icmp eq i64 %.033.i, 0
  br i1 %.not60, label %_ZN5boost20adl_move_swap_rangesIPPiS2_EET0_T_S4_S3_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5boost7movelib3gcdImEET_S2_S2_.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 %i.e ; 3 uses
  %i.bj = add i64 %.idx, -8                       ; 2 uses
  %i.bk = and i64 %i.bj, 8
  %lcmp.mod.not.not = icmp eq i64 %i.bk, 0
  br i1 %lcmp.mod.not.not, label %.prol.preheader, label %.prol.loopexit

.prol.preheader:                                  ; preds = %.lr.ph
  %i.bl = load ptr, ptr %0, align 8, !tbaa !369
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 %i.e
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.prol.preheader
  %.044.prol = phi ptr [ %0, %.prol.preheader ], [ %.0.prol, %bb.m ]
  %.0.prol = phi ptr [ %i.bm, %.prol.preheader ], [ %i.bv, %bb.m ] ; 5 uses
  %i.bn = load ptr, ptr %.0.prol, align 8, !tbaa !369
  store ptr %i.bn, ptr %.044.prol, align 8, !tbaa !369
  %i.bo = ptrtoint ptr %.0.prol to i64
  %i.bp = sub i64 %i.aa, %i.bo
  %i.bq = ashr exact i64 %i.bp, 3                 ; 2 uses
  %i.br = icmp ugt i64 %i.bq, %i.f
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.prol, i64 %i.e
  %i.bt = sub nsw i64 0, %i.bq
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.bt
  %i.bv = select i1 %i.br, ptr %i.bs, ptr %i.bu   ; 2 uses
  %.not53.prol = icmp eq ptr %i.bv, %0
  br i1 %.not53.prol, label %.prol.loopexit.unr-lcssa, label %bb.m, !llvm.loop !15746

.prol.loopexit.unr-lcssa:                         ; preds = %bb.m
  store ptr %i.bl, ptr %.0.prol, align 8, !tbaa !369
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %.04561.unr = phi ptr [ %0, %.lr.ph ], [ %i.bw, %.prol.loopexit.unr-lcssa ]
  %i.bx = icmp eq i64 %i.bj, 0
  br i1 %i.bx, label %_ZN5boost20adl_move_swap_rangesIPPiS2_EET0_T_S4_S3_.exit, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %bb.q
  %.04561 = phi ptr [ %i.cv, %bb.q ], [ %.04561.unr, %.prol.loopexit ] ; 6 uses
  %i.by = load ptr, ptr %.04561, align 8, !tbaa !369
  %i.bz = getelementptr inbounds nuw i8, ptr %.04561, i64 %i.e
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph.new
  %.044 = phi ptr [ %.04561, %.lr.ph.new ], [ %.0, %bb.n ]
end_hunk_2
begin_hunk_3_@_ZN5boost9container10deque_baseINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEENS0_9deque_optILm0ELm0EmLb1EEELb0EE29prot_reallocate_map_and_nodesENS_11move_detail5bool_ILb1EEENSA_ILb0EEEmb:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx93 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !662
  %i.h = lshr i64 %i.g, 5
  %.idx92 = and i64 %i.h, 576460752303423480
  %i.i = add nuw nsw i64 %.idx92, 8               ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.i ; 2 uses
  %gepdiff = sub nsw i64 %i.i, %.idx93            ; 4 uses
  %i.k = ashr exact i64 %gepdiff, 3
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !686  ; 8 uses
  %i.n = add i64 %1, -1
  %i.o = lshr i64 %i.n, 8
  %i.p = add nuw nsw i64 %i.o, 1
  %i.q = lshr i64 %i.b, 8
  %i.r = lshr exact i64 %i.i, 3
  %i.s = sub i64 %i.m, %i.r
  %i.t = select i1 %2, i64 %i.q, i64 %i.s
  %i.u = add i64 %i.p, %i.t                       ; 3 uses
  %i.v = add i64 %i.u, %i.k                       ; 4 uses
  %i.w = udiv i64 %i.m, 3
  %i.x = lshr i64 %i.v, 1
  %.not = icmp samesign ult i64 %i.w, %i.x
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.y = sub i64 %i.m, %i.v
  %i.z = lshr i64 %i.y, 1
  %i.aa = select i1 %2, i64 %i.u, i64 0
  %i.ab = getelementptr [8 x i8], ptr %i.c, i64 %i.z
  %i.ac = getelementptr [8 x i8], ptr %i.ab, i64 %i.aa ; 5 uses
  %i.ad = icmp ult ptr %i.ac, %i.e
  br i1 %i.ad, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ae = tail call noundef ptr @_ZN5boost7movelib10rotate_gcdIPPNS_9container4test24movable_and_copyable_intEEET_S7_S7_S7_(ptr noundef %i.ac, ptr noundef nonnull %i.e, ptr noundef nonnull %i.j) ; 0 uses
  br label %bb.t

bb.d:                                             ; preds = %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 %gepdiff
  %i.ag = tail call noundef ptr @_ZN5boost7movelib10rotate_gcdIPPNS_9container4test24movable_and_copyable_intEEET_S7_S7_S7_(ptr noundef %i.e, ptr noundef nonnull %i.j, ptr noundef %i.af) ; 0 uses
  br label %bb.t

bb.e:                                             ; preds = %bb.a
  %i.ah = lshr i64 %i.m, 1
  %i.ai = add i64 %i.ah, %i.m
  %i.aj = add i64 %i.v, 1
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.ai, i64 %i.aj) ; 6 uses
  %i.ak = shl i64 %.sroa.speculated, 8
  %i.al = add i64 %i.ak, -2305843009213694208
  %i.am = icmp ult i64 %i.al, -2305843009213693952
  br i1 %i.am, label %bb.f, label %_ZN5boost9container10deque_baseINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEENS0_9deque_optILm0ELm0EmLb1EEELb0EE21test_size_against_maxEm.exit, !prof !375

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.40) #26
  unreachable

_ZN5boost9container10deque_baseINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEENS0_9deque_optILm0ELm0EmLb1EEELb0EE21test_size_against_maxEm.exit: ; preds = %bb.e
  %i.an = icmp ugt i64 %.sroa.speculated, 1152921504606846975
  br i1 %i.an, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN5boost9container10deque_baseINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEENS0_9deque_optILm0ELm0EmLb1EEELb0EE21test_size_against_maxEm.exit
  tail call void @_ZN5boost9container15throw_bad_allocEv() #26
  unreachable

bb.h:                                             ; preds = %_ZN5boost9container10deque_baseINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEENS0_9deque_optILm0ELm0EmLb1EEELb0EE21test_size_against_maxEm.exit
  %i.ao = shl nuw nsw i64 %.sroa.speculated, 3
  %i.ap = tail call noundef ptr @_ZN5boost9container17dlmalloc_memalignEmm(i64 noundef %i.ao, i64 noundef 8) ; 6 uses
  %.not.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i, label %bb.i, label %_ZN5boost9container10deque_baseINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEENS0_9deque_optILm0ELm0EmLb1EEELb0EE17prot_allocate_mapEm.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN5boost9container15throw_bad_allocEv() #26
  unreachable

_ZN5boost9container10deque_baseINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEENS0_9deque_optILm0ELm0EmLb1EEELb0EE17prot_allocate_mapEm.exit: ; preds = %bb.h
  %i.aq = sub i64 %.sroa.speculated, %i.v
  %i.ar = lshr i64 %i.aq, 1
  %i.as = select i1 %2, i64 %i.u, i64 0
  %i.at = add i64 %i.ar, %i.as
  %.idx = shl nsw i64 %i.at, 3                    ; 2 uses
  %i.au = getelementptr inbounds i8, ptr %i.ap, i64 %.idx ; 3 uses
  %i.av = sub i64 %.sroa.speculated, %i.m         ; 2 uses
  invoke void @_ZN5boost9container10deque_baseINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEENS0_9deque_optILm0ELm0EmLb1EEELb0EE19prot_allocate_nodesEPPS4_m(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.ap, i64 noundef %i.av)
          to label %bb.n unwind label %bb.j

bb.j:                                             ; preds = %_ZN5boost9container10deque_baseINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEENS0_9deque_optILm0ELm0EmLb1EEELb0EE17prot_allocate_mapEm.exit
  %i.aw = landingpad { ptr, i32 }
          catch ptr null
  %i.ax = extractvalue { ptr, i32 } %i.aw, 0
  %i.ay = tail call ptr @__cxa_begin_catch(ptr %i.ax) #22 ; 0 uses
  invoke void @_ZN5boost9container13dlmalloc_freeEPv(ptr noundef nonnull %i.ap)
          to label %_ZN5boost9container10deque_baseINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEENS0_9deque_optILm0ELm0EmLb1EEELb0EE19prot_deallocate_mapEPPS4_m.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  tail call void @__clang_call_terminate(ptr %i.ba) #23
  unreachable

_ZN5boost9container10deque_baseINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEENS0_9deque_optILm0ELm0EmLb1EEELb0EE19prot_deallocate_mapEPPS4_m.exit: ; preds = %bb.j
  invoke void @__cxa_rethrow() #26
          to label %bb.v unwind label %bb.l

bb.l:                                             ; preds = %_ZN5boost9container10deque_baseINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEENS0_9deque_optILm0ELm0EmLb1EEELb0EE19prot_deallocate_mapEPPS4_m.exit
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.m unwind label %bb.u

bb.m:                                             ; preds = %bb.l
  resume { ptr, i32 } %i.bb

bb.n:                                             ; preds = %_ZN5boost9container10deque_baseINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEENS0_9deque_optILm0ELm0EmLb1EEELb0EE17prot_allocate_mapEm.exit
  %.idx86 = shl nsw i64 %i.av, 3                  ; 2 uses
  %i.bc = getelementptr inbounds i8, ptr %i.ap, i64 %.idx86 ; 3 uses
  %.not.i.i87 = icmp ne i64 %i.m, 0
  %i.bd = icmp ne ptr %i.c, null
  %or.cond = select i1 %.not.i.i87, i1 %i.bd, i1 false, !prof !556
  br i1 %or.cond, label %bb.o, label %_ZN5boost9container6move_nIPPNS0_4test24movable_and_copyable_intES5_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES8_mS9_.exit, !prof !556

bb.o:                                             ; preds = %bb.n
  %i.be = shl i64 %i.m, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bc, ptr nonnull align 1 %i.c, i64 %i.be, i1 false)
  br label %_ZN5boost9container6move_nIPPNS0_4test24movable_and_copyable_intES5_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES8_mS9_.exit

_ZN5boost9container6move_nIPPNS0_4test24movable_and_copyable_intES5_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES8_mS9_.exit: ; preds = %bb.o, %bb.n
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.idx93 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.i ; 2 uses
  %i.bh = add nsw i64 %.idx86, %.idx93
  %i.bi = icmp slt i64 %.idx, %i.bh
  br i1 %i.bi, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN5boost9container6move_nIPPNS0_4test24movable_and_copyable_intES5_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES8_mS9_.exit
  %i.bj = tail call noundef ptr @_ZN5boost7movelib10rotate_gcdIPPNS_9container4test24movable_and_copyable_intEEET_S7_S7_S7_(ptr noundef nonnull %i.au, ptr noundef nonnull %i.bf, ptr noundef nonnull %i.bg) ; 0 uses
  br label %bb.r

bb.q:                                             ; preds = %_ZN5boost9container6move_nIPPNS0_4test24movable_and_copyable_intES5_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES8_mS9_.exit
  %i.bk = getelementptr inbounds i8, ptr %i.au, i64 %gepdiff
  %i.bl = tail call noundef ptr @_ZN5boost7movelib10rotate_gcdIPPNS_9container4test24movable_and_copyable_intEEET_S7_S7_S7_(ptr noundef nonnull %i.bf, ptr noundef nonnull %i.bg, ptr noundef nonnull %i.bk) ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  invoke void @_ZN5boost9container13dlmalloc_freeEPv(ptr noundef %i.c)
          to label %_ZN5boost9container10deque_baseINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEENS0_9deque_optILm0ELm0EmLb1EEELb0EE19prot_deallocate_mapEPPS4_m.exit88 unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bm = landingpad { ptr, i32 }
          catch ptr null
  %i.bn = extractvalue { ptr, i32 } %i.bm, 0
  tail call void @__clang_call_terminate(ptr %i.bn) #23
  unreachable

_ZN5boost9container10deque_baseINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEENS0_9deque_optILm0ELm0EmLb1EEELb0EE19prot_deallocate_mapEPPS4_m.exit88: ; preds = %bb.r
  store ptr %i.ap, ptr %0, align 8, !tbaa !657
  store i64 %.sroa.speculated, ptr %i.l, align 8, !tbaa !686
  br label %bb.t

bb.t:                                             ; preds = %bb.c, %bb.d, %_ZN5boost9container10deque_baseINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEENS0_9deque_optILm0ELm0EmLb1EEELb0EE19prot_deallocate_mapEPPS4_m.exit88
  %.0 = phi ptr [ %i.au, %_ZN5boost9container10deque_baseINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEENS0_9deque_optILm0ELm0EmLb1EEELb0EE19prot_deallocate_mapEPPS4_m.exit88 ], [ %i.ac, %bb.d ], [ %i.ac, %bb.c ] ; 2 uses
  %i.bo = load ptr, ptr %0, align 8, !tbaa !657
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = getelementptr i8, ptr %.0, i64 %gepdiff
  %i.br = getelementptr i8, ptr %i.bq, i64 -8
  %i.bs = insertelement <2 x ptr> poison, ptr %.0, i64 0
  %i.bt = insertelement <2 x ptr> %i.bs, ptr %i.br, i64 1
  %i.bu = ptrtoint <2 x ptr> %i.bt to <2 x i64>
  %i.bv = insertelement <2 x i64> poison, i64 %i.bp, i64 0
  %i.bw = shufflevector <2 x i64> %i.bv, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.bx = sub <2 x i64> %i.bu, %i.bw
  %i.by = shl <2 x i64> %i.bx, splat (i64 5)
  %i.bz = load <2 x i64>, ptr %i.a, align 8, !tbaa !358
  %i.ca = and <2 x i64> %i.bz, splat (i64 255)
  %i.cb = add <2 x i64> %i.by, %i.ca
  store <2 x i64> %i.cb, ptr %i.a, align 8, !tbaa !358
  ret void

bb.u:                                             ; preds = %bb.l
  %i.cc = landingpad { ptr, i32 }
          catch ptr null
  %i.cd = extractvalue { ptr, i32 } %i.cc, 0
  tail call void @__clang_call_terminate(ptr %i.cd) #23
  unreachable

bb.v:                                             ; preds = %_ZN5boost9container10deque_baseINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEENS0_9deque_optILm0ELm0EmLb1EEELb0EE19prot_deallocate_mapEPPS4_m.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost7movelib10rotate_gcdIPPNS_9container4test24movable_and_copyable_intEEET_S7_S7_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZN5boost20adl_move_swap_rangesIPPNS_9container4test24movable_and_copyable_intES5_EET0_T_S7_S6_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %_ZN5boost20adl_move_swap_rangesIPPNS_9container4test24movable_and_copyable_intES5_EET0_T_S7_S6_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.d = ptrtoint ptr %0 to i64                   ; 4 uses
  %i.e = sub i64 %i.c, %i.d                       ; 8 uses
  %i.f = ashr exact i64 %i.e, 3                   ; 10 uses
  %i.g = sub nsw i64 0, %i.f
  %i.h = getelementptr inbounds [8 x i8], ptr %2, i64 %i.g ; 6 uses
  %i.i = icmp eq ptr %1, %i.h
  br i1 %i.i, label %.lr.ph.i.preheader, label %bb.d

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.j = add i64 %i.c, -8
  %i.k = sub i64 %i.j, %i.d                       ; 2 uses
  %i.l = lshr i64 %i.k, 3
  %i.m = add nuw nsw i64 %i.l, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.k, 104
  br i1 %min.iters.check, label %.lr.ph.i.preheader82, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %3 = add i64 %i.c, -8
  %4 = sub i64 %3, %i.d
  %i.n = and i64 %4, -8
  %i.o = add i64 %i.n, 8                          ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 %i.o
  %scevgep76 = getelementptr i8, ptr %1, i64 %i.o
  %bound0 = icmp ult ptr %0, %scevgep76
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader82, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.m, 4611686018427387900      ; 3 uses
  %i.p = shl i64 %n.vec, 3                        ; 2 uses
  %i.q = getelementptr i8, ptr %1, i64 %i.p
  %i.r = getelementptr i8, ptr %0, i64 %i.p
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.s = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %1, i64 %i.s  ; 3 uses
  %next.gep77 = getelementptr i8, ptr %0, i64 %i.s ; 3 uses
  %i.t = getelementptr i8, ptr %next.gep77, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %next.gep77, align 8, !tbaa !470, !alias.scope !18920, !noalias !18921
  %wide.load78 = load <2 x ptr>, ptr %i.t, align 8, !tbaa !470, !alias.scope !18920, !noalias !18921
  %i.u = getelementptr i8, ptr %next.gep, i64 16  ; 2 uses
  %wide.load79 = load <2 x ptr>, ptr %next.gep, align 8, !tbaa !470, !alias.scope !18921
  %wide.load80 = load <2 x ptr>, ptr %i.u, align 8, !tbaa !470, !alias.scope !18921
  store <2 x ptr> %wide.load79, ptr %next.gep77, align 8, !tbaa !470, !alias.scope !18920, !noalias !18921
  store <2 x ptr> %wide.load80, ptr %i.t, align 8, !tbaa !470, !alias.scope !18920, !noalias !18921
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !470, !alias.scope !18921
  store <2 x ptr> %wide.load78, ptr %i.u, align 8, !tbaa !470, !alias.scope !18921
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !18916

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.m, %n.vec
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesIPPNS_9container4test24movable_and_copyable_intES5_EET0_T_S7_S6_.exit, label %.lr.ph.i.preheader82

.lr.ph.i.preheader82:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.010.i.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.i.preheader ], [ %i.q, %middle.block ]
  %.079.i.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.i.preheader ], [ %i.r, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader82, %.lr.ph.i
  %.010.i = phi ptr [ %i.z, %.lr.ph.i ], [ %.010.i.ph, %.lr.ph.i.preheader82 ] ; 3 uses
  %.079.i = phi ptr [ %i.y, %.lr.ph.i ], [ %.079.i.ph, %.lr.ph.i.preheader82 ] ; 3 uses
  %i.w = load ptr, ptr %.079.i, align 8, !tbaa !470
  %i.x = load ptr, ptr %.010.i, align 8, !tbaa !470
  store ptr %i.x, ptr %.079.i, align 8, !tbaa !470
  store ptr %i.w, ptr %.010.i, align 8, !tbaa !470
  %i.y = getelementptr inbounds nuw i8, ptr %.079.i, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.010.i, i64 8
  %.not.i = icmp eq ptr %i.y, %1
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesIPPNS_9container4test24movable_and_copyable_intES5_EET0_T_S7_S6_.exit, label %.lr.ph.i, !llvm.loop !18917

bb.d:                                             ; preds = %bb.c
  %i.aa = ptrtoint ptr %2 to i64                  ; 4 uses
  %i.ab = sub i64 %i.aa, %i.d
  %i.ac = ashr exact i64 %i.ab, 3                 ; 6 uses
  %i.ad = add nsw i64 %i.ac, -1
  %i.ae = and i64 %i.ad, %i.ac
  %i.af = add nsw i64 %i.f, -1
  %i.ag = and i64 %i.af, %i.f
  %i.ah = or i64 %i.ae, %i.ag
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %bb.e, label %.preheader36.i

.preheader36.i:                                   ; preds = %bb.d
  %i.aj = or i64 %i.ac, %i.f
  %i.ak = and i64 %i.aj, 1
  %.not.not37.i = icmp eq i64 %i.ak, 0
  br i1 %.not.not37.i, label %.lr.ph.i56, label %.preheader.i

bb.e:                                             ; preds = %bb.d
  %i.al = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 %i.f)
  br label %_ZN5boost7movelib3gcdImEET_S2_S2_.exit

.preheader.i:                                     ; preds = %.lr.ph.i56, %.preheader36.i
  %.030.lcssa.i = phi i64 [ %i.ac, %.preheader36.i ], [ %i.aq, %.lr.ph.i56 ] ; 3 uses
  %.029.lcssa.i = phi i64 [ %i.f, %.preheader36.i ], [ %i.ar, %.lr.ph.i56 ] ; 3 uses
  %.0.lcssa.i54 = phi i64 [ 1, %.preheader36.i ], [ %i.ap, %.lr.ph.i56 ]
  %i.am = icmp ne i64 %.030.lcssa.i, 0
  %i.an = icmp ne i64 %.029.lcssa.i, 0
  %i.ao = and i1 %i.am, %i.an
  br i1 %i.ao, label %.lr.ph45.i, label %._crit_edge.i

.lr.ph.i56:                                       ; preds = %.preheader36.i, %.lr.ph.i56
  %.040.i = phi i64 [ %i.ap, %.lr.ph.i56 ], [ 1, %.preheader36.i ]
  %.02939.i = phi i64 [ %i.ar, %.lr.ph.i56 ], [ %i.f, %.preheader36.i ]
  %.03038.i = phi i64 [ %i.aq, %.lr.ph.i56 ], [ %i.ac, %.preheader36.i ]
  %i.ap = shl i64 %.040.i, 1                      ; 2 uses
  %i.aq = lshr i64 %.03038.i, 1                   ; 3 uses
  %i.ar = lshr i64 %.02939.i, 1                   ; 3 uses
  %i.as = or i64 %i.aq, %i.ar
  %i.at = and i64 %i.as, 1
  %.not.not.i = icmp eq i64 %i.at, 0
  br i1 %.not.not.i, label %.lr.ph.i56, label %.preheader.i, !llvm.loop !46

.lr.ph45.i:                                       ; preds = %.preheader.i, %bb.l
  %.144.i = phi i64 [ %.2.i, %bb.l ], [ %.029.lcssa.i, %.preheader.i ] ; 7 uses
  %.13143.i = phi i64 [ %.232.i, %bb.l ], [ %.030.lcssa.i, %.preheader.i ] ; 7 uses
  %i.au = and i64 %.13143.i, 1
  %.not.i55 = icmp eq i64 %i.au, 0
  br i1 %.not.i55, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph45.i
  %i.av = lshr exact i64 %.13143.i, 1
  br label %bb.l

bb.g:                                             ; preds = %.lr.ph45.i
  %i.aw = and i64 %.144.i, 1
  %.not34.i = icmp eq i64 %i.aw, 0
  br i1 %.not34.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ax = lshr exact i64 %.144.i, 1
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %.not35.i = icmp ult i64 %.13143.i, %.144.i
  br i1 %.not35.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ay = sub nuw i64 %.13143.i, %.144.i
  %i.az = lshr exact i64 %i.ay, 1
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ba = sub nuw i64 %.144.i, %.13143.i
  %i.bb = lshr exact i64 %i.ba, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.h, %bb.f
  %.232.i = phi i64 [ %i.az, %bb.j ], [ %.13143.i, %bb.k ], [ %.13143.i, %bb.h ], [ %i.av, %bb.f ] ; 3 uses
  %.2.i = phi i64 [ %.144.i, %bb.j ], [ %i.bb, %bb.k ], [ %i.ax, %bb.h ], [ %.144.i, %bb.f ] ; 3 uses
  %i.bc = icmp ne i64 %.232.i, 0
  %i.bd = icmp ne i64 %.2.i, 0
  %i.be = select i1 %i.bc, i1 %i.bd, i1 false
  br i1 %i.be, label %.lr.ph45.i, label %._crit_edge.i, !llvm.loop !47

._crit_edge.i:                                    ; preds = %bb.l, %.preheader.i
  %.131.lcssa.i = phi i64 [ %.030.lcssa.i, %.preheader.i ], [ %.232.i, %bb.l ]
  %.1.lcssa.i = phi i64 [ %.029.lcssa.i, %.preheader.i ], [ %.2.i, %bb.l ]
  %i.bf = add i64 %.1.lcssa.i, %.131.lcssa.i
  %i.bg = mul i64 %i.bf, %.0.lcssa.i54
  br label %_ZN5boost7movelib3gcdImEET_S2_S2_.exit

_ZN5boost7movelib3gcdImEET_S2_S2_.exit:           ; preds = %bb.e, %._crit_edge.i
  %.033.i = phi i64 [ %i.al, %bb.e ], [ %i.bg, %._crit_edge.i ] ; 2 uses
  %.idx = shl i64 %.033.i, 3                      ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %.not60 = icmp eq i64 %.033.i, 0
  br i1 %.not60, label %_ZN5boost20adl_move_swap_rangesIPPNS_9container4test24movable_and_copyable_intES5_EET0_T_S7_S6_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5boost7movelib3gcdImEET_S2_S2_.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 %i.e ; 3 uses
  %i.bj = add i64 %.idx, -8                       ; 2 uses
  %i.bk = and i64 %i.bj, 8
  %lcmp.mod.not.not = icmp eq i64 %i.bk, 0
  br i1 %lcmp.mod.not.not, label %.prol.preheader, label %.prol.loopexit

.prol.preheader:                                  ; preds = %.lr.ph
  %i.bl = load ptr, ptr %0, align 8, !tbaa !470
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 %i.e
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.prol.preheader
  %.044.prol = phi ptr [ %0, %.prol.preheader ], [ %.0.prol, %bb.m ]
  %.0.prol = phi ptr [ %i.bm, %.prol.preheader ], [ %i.bv, %bb.m ] ; 5 uses
  %i.bn = load ptr, ptr %.0.prol, align 8, !tbaa !470
  store ptr %i.bn, ptr %.044.prol, align 8, !tbaa !470
  %i.bo = ptrtoint ptr %.0.prol to i64
  %i.bp = sub i64 %i.aa, %i.bo
  %i.bq = ashr exact i64 %i.bp, 3                 ; 2 uses
  %i.br = icmp ugt i64 %i.bq, %i.f
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.prol, i64 %i.e
  %i.bt = sub nsw i64 0, %i.bq
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.bt
  %i.bv = select i1 %i.br, ptr %i.bs, ptr %i.bu   ; 2 uses
  %.not53.prol = icmp eq ptr %i.bv, %0
  br i1 %.not53.prol, label %.prol.loopexit.unr-lcssa, label %bb.m, !llvm.loop !18918

.prol.loopexit.unr-lcssa:                         ; preds = %bb.m
  store ptr %i.bl, ptr %.0.prol, align 8, !tbaa !470
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %.04561.unr = phi ptr [ %0, %.lr.ph ], [ %i.bw, %.prol.loopexit.unr-lcssa ]
  %i.bx = icmp eq i64 %i.bj, 0
  br i1 %i.bx, label %_ZN5boost20adl_move_swap_rangesIPPNS_9container4test24movable_and_copyable_intES5_EET0_T_S7_S6_.exit, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %bb.q
  %.04561 = phi ptr [ %i.cv, %bb.q ], [ %.04561.unr, %.prol.loopexit ] ; 6 uses
  %i.by = load ptr, ptr %.04561, align 8, !tbaa !470
  %i.bz = getelementptr inbounds nuw i8, ptr %.04561, i64 %i.e
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph.new
  %.044 = phi ptr [ %.04561, %.lr.ph.new ], [ %.0, %bb.n ]
end_hunk_3
