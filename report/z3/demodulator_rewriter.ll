Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/demodulator_rewriter?download=true
inline.NumInlined: 1992
inline.NumDeleted: 860
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 44
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_ZN6vectorISt4pairIjjELb0EjE13expand_vectorEv:bb.a
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.a, i64 -8
  %i.g = load i32, ptr %i.f, align 4, !tbaa !21   ; 3 uses
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
  %.not31 = icmp ugt i32 %i.l, %i.n
  br i1 %.not31, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.o = tail call ptr @__cxa_allocate_exception(i64 40) #19 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.7, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.o, align 8, !tbaa !176
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 3 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !178
  %i.r = load ptr, ptr %1, align 8, !tbaa !180    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !182  ; 3 uses
  %i.w = icmp ult i64 %i.v, 16
  call void @llvm.assume(i1 %i.w)
  %i.x = add nuw nsw i64 %i.v, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.x, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  store ptr %i.r, ptr %i.p, align 8, !tbaa !180
  %i.y = load i64, ptr %i.s, align 8, !tbaa !183
  store i64 %i.y, ptr %i.q, align 8, !tbaa !183
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !182
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.z = phi i64 [ %i.v, %bb.g ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %i.z, ptr %i.ab, align 8, !tbaa !182
  store ptr %i.s, ptr %1, align 8, !tbaa !180
  store i64 0, ptr %i.aa, align 8, !tbaa !182
  store i8 0, ptr %i.s, align 8, !tbaa !183
  invoke void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #21
          to label %bb.m unwind label %bb.h

bb.h:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = load ptr, ptr %1, align 8, !tbaa !180   ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.s
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %bb.h
  %i.af = load i64, ptr %i.s, align 8, !tbaa !183
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  call void @__cxa_free_exception(ptr %i.o) #19
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %bb.i
  %.pn36 = phi { ptr, i32 } [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ah, %bb.i ]
  resume { ptr, i32 } %.pn36

bb.k:                                             ; preds = %bb.d
  %i.ai = zext i32 %i.l to i64
  %i.aj = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.ai) ; 6 uses
  %i.ak = ptrtoaddr ptr %i.aj to i64
  %i.al = load ptr, ptr %0, align 8, !tbaa !435   ; 9 uses
  %i.am = ptrtoaddr ptr %i.al to i64
  %i.an = icmp eq ptr %i.al, null
  br i1 %i.an, label %_ZSt20uninitialized_move_nIPSt4pairIjjEjS2_ES0_IT_T1_ES3_T0_S4_.exit, label %_ZNK6vectorISt4pairIjjELb0EjE4sizeEv.exit

_ZNK6vectorISt4pairIjjELb0EjE4sizeEv.exit:        ; preds = %bb.k
  %i.ao = getelementptr inbounds i8, ptr %i.al, i64 -4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !21 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  store i32 %i.ap, ptr %i.aq, align 4, !tbaa !21
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 5 uses
  %i.as = zext i32 %i.ap to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.as, 3          ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx.i.i.i
  %i.au = icmp eq i32 %i.ap, 0
  br i1 %i.au, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNK6vectorISt4pairIjjELb0EjE4sizeEv.exit
  %i.av = add nsw i64 %.idx.i.i.i, -8             ; 2 uses
  %i.aw = lshr exact i64 %i.av, 3
  %i.ax = add nuw nsw i64 %i.aw, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.av, 104
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader51, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.ay = sub i64 %i.ak, %i.am
  %i.az = add i64 %i.ay, 7
  %diff.check = icmp ult i64 %i.az, 31
  br i1 %diff.check, label %.lr.ph.i.i.i.i.i.i.preheader51, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ax, 4611686018427387900     ; 3 uses
  %i.ba = shl i64 %n.vec, 3                       ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ar, i64 %i.ba
  %i.bc = getelementptr i8, ptr %i.al, i64 %i.ba
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bd = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ar, i64 %i.bd ; 2 uses
  %next.gep48 = getelementptr i8, ptr %i.al, i64 %i.bd ; 2 uses
  %i.be = getelementptr i8, ptr %next.gep48, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep48, align 4
  %wide.load49 = load <2 x i64>, ptr %i.be, align 4
  %i.bf = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4
  store <2 x i64> %wide.load49, ptr %i.bf, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !470

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ax, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.preheader51

.lr.ph.i.i.i.i.i.i.preheader51:                   ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.08.i.i.i.i.i.i.ph = phi ptr [ %i.ar, %vector.memcheck ], [ %i.ar, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.bb, %middle.block ]
  %.sroa.04.07.i.i.i.i.i.i.ph = phi ptr [ %i.al, %vector.memcheck ], [ %i.al, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.bc, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader51, %.lr.ph.i.i.i.i.i.i
  %.08.i.i.i.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i.i.i.i.i ], [ %.08.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader51 ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i.i = phi ptr [ %i.bi, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader51 ] ; 2 uses
  %i.bh = load i64, ptr %.sroa.04.07.i.i.i.i.i.i, align 4
  store i64 %i.bh, ptr %.08.i.i.i.i.i.i, align 4
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 8
  %i.bk = icmp eq ptr %i.bi, %i.at
  br i1 %i.bk, label %.loopexit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !471

_ZSt20uninitialized_move_nIPSt4pairIjjEjS2_ES0_IT_T1_ES3_T0_S4_.exit: ; preds = %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  store i32 0, ptr %i.bl, align 4, !tbaa !21
  %i.bm = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  br label %_ZN6vectorISt4pairIjjELb0EjE7destroyEv.exit

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %_ZNK6vectorISt4pairIjjELb0EjE4sizeEv.exit
  %i.bn = getelementptr inbounds i8, ptr %i.al, i64 -8
  tail call void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.bn)
  br label %_ZN6vectorISt4pairIjjELb0EjE7destroyEv.exit

_ZN6vectorISt4pairIjjELb0EjE7destroyEv.exit:      ; preds = %_ZSt20uninitialized_move_nIPSt4pairIjjEjS2_ES0_IT_T1_ES3_T0_S4_.exit, %.loopexit
  %i.bo = phi ptr [ %i.bm, %_ZSt20uninitialized_move_nIPSt4pairIjjEjS2_ES0_IT_T1_ES3_T0_S4_.exit ], [ %i.ar, %.loopexit ]
  store ptr %i.bo, ptr %0, align 8, !tbaa !435
  store i32 %i.j, ptr %i.aj, align 4, !tbaa !21
  br label %bb.l

bb.l:                                             ; preds = %_ZN6vectorISt4pairIjjELb0EjE7destroyEv.exit, %bb.b
  ret void

bb.m:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  unreachable
}

declare void @_ZN12substitution5applyEjPKjRK11expr_offsetS4_S4_R7obj_refI4expr11ast_managerE(ptr noundef nonnull align 8 dereferenceable(124), i32 noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z18for_each_expr_coreI12var_set_proc8obj_markI4expr10bit_vector14default_t2uintIS2_EELb0ELb0EEvRT_RT0_PS2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"class.std::allocator.80", align 1 ; 4 uses
  %6 = alloca %class.sbuffer, align 8             ; 20 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i32, ptr %i.a, align 4, !tbaa !53
  %i.c = icmp ugt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %2, align 4, !tbaa !44     ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !414
  %i.g = icmp ult i32 %i.d, %i.f
  %i.h = and i32 %i.d, 31
  %i.i = shl nuw i32 1, %i.h                      ; 2 uses
  br i1 %i.g, label %_ZNK8obj_markI4expr10bit_vector14default_t2uintIS0_EE9is_markedEPS0_.exit, label %bb.c

_ZNK8obj_markI4expr10bit_vector14default_t2uintIS0_EE9is_markedEPS0_.exit: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !19   ; 2 uses
  %i.l = lshr i32 %i.d, 5
  %i.m = zext nneg i32 %i.l to i64                ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !21
  %i.p = and i32 %i.o, %i.i
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %_ZN8obj_markI4expr10bit_vector14default_t2uintIS0_EE4markEPKS0_.exit, label %bb.bl

bb.c:                                             ; preds = %bb.b
  %i.q = add i32 %i.d, 1
  tail call void @_ZN10bit_vector6resizeEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i32 noundef %i.q, i1 noundef zeroext false)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !19
  %.pre261 = lshr i32 %i.d, 5
  %.pre262 = zext nneg i32 %.pre261 to i64
  br label %_ZN8obj_markI4expr10bit_vector14default_t2uintIS0_EE4markEPKS0_.exit

_ZN8obj_markI4expr10bit_vector14default_t2uintIS0_EE4markEPKS0_.exit: ; preds = %_ZNK8obj_markI4expr10bit_vector14default_t2uintIS0_EE9is_markedEPS0_.exit, %bb.c
  %.pre-phi263 = phi i64 [ %i.m, %_ZNK8obj_markI4expr10bit_vector14default_t2uintIS0_EE9is_markedEPS0_.exit ], [ %.pre262, %bb.c ]
  %i.r = phi ptr [ %i.k, %_ZNK8obj_markI4expr10bit_vector14default_t2uintIS0_EE9is_markedEPS0_.exit ], [ %.pre, %bb.c ]
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.pre-phi263 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !21
  %i.u = or i32 %i.t, %i.i
  store i32 %i.u, ptr %i.s, align 4, !tbaa !21
  br label %bb.d

bb.d:                                             ; preds = %_ZN8obj_markI4expr10bit_vector14default_t2uintIS0_EE4markEPKS0_.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.v, ptr %6, align 8, !tbaa !472
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 18 uses
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 7 uses
  store i32 16, ptr %i.x, align 4, !tbaa !475
  store ptr %2, ptr %i.v, align 8
  %.sroa.5184.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 0, ptr %.sroa.5184.0..sroa_idx, align 8
  store i32 1, ptr %i.w, align 8, !tbaa !476
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  br label %.preheader

thread-pre-split:                                 ; preds = %.thread-pre-split_crit_edge, %.thread200, %.thread193, %bb.p
  %.pr = phi i32 [ %.pr.pre, %.thread-pre-split_crit_edge ], [ %i.ad, %.thread200 ], [ %.pre-phi277, %.thread193 ], [ %i.cs, %bb.p ] ; 2 uses
  %i.aa = icmp eq i32 %.pr, 0
  br i1 %i.aa, label %bb.bi, label %.preheader.backedge

.preheader:                                       ; preds = %.preheader.backedge, %bb.d
  %i.ab = phi i32 [ 1, %bb.d ], [ %.be418, %.preheader.backedge ] ; 2 uses
  %i.ac = load ptr, ptr %6, align 8, !tbaa !472
  %i.ad = add i32 %i.ab, -1                       ; 4 uses
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %i.ae ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !477 ; 9 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.ai = load i32, ptr %i.ah, align 4
  %trunc = trunc i32 %i.ai to i16
  switch i16 %trunc, label %bb.bf [
    i16 1, label %bb.e
    i16 0, label %bb.q
    i16 2, label %bb.ar
  ]

bb.e:                                             ; preds = %.preheader
  %i.aj = load ptr, ptr %0, align 8, !tbaa !479, !nonnull !15, !align !16 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !445 ; 2 uses
  %i.am = lshr i32 %i.al, 5                       ; 4 uses
  %i.an = load ptr, ptr %i.aj, align 8, !tbaa !8  ; 4 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %thread-pre-split.i.i.i.preheader, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i

_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i:              ; preds = %bb.e
  %i.ap = getelementptr inbounds i8, ptr %i.an, i64 -4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !21 ; 2 uses
  %.not.i.i56 = icmp ult i32 %i.am, %i.aq
  br i1 %.not.i.i56, label %bb.p, label %thread-pre-split.i.i.i.preheader

thread-pre-split.i.i.i.preheader:                 ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i, %bb.e
  %.ph410 = phi ptr [ null, %bb.e ], [ %i.an, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i ]
  %.0.i16.i.i.i.ph = phi i32 [ 0, %bb.e ], [ %i.aq, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i ] ; 2 uses
  %.ph411 = add nuw nsw i32 %i.am, 1              ; 3 uses
  br label %thread-pre-split.i.i.i

thread-pre-split.i.i.i:                           ; preds = %thread-pre-split.i.i.i.backedge, %thread-pre-split.i.i.i.preheader
  %i.ar = phi ptr [ %.ph410, %thread-pre-split.i.i.i.preheader ], [ %.be417, %thread-pre-split.i.i.i.backedge ] ; 7 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.f, label %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i.i

_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i.i:        ; preds = %thread-pre-split.i.i.i
  %i.at = getelementptr inbounds i8, ptr %i.ar, i64 -8
  %i.au = load i32, ptr %i.at, align 4, !tbaa !21
  %.not458 = icmp ult i32 %i.am, %i.au
  br i1 %.not458, label %bb.o, label %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i.i

bb.f:                                             ; preds = %thread-pre-split.i.i.i
  %i.av = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 16)
          to label %.noexc143 unwind label %.loopexit412 ; 3 uses

.noexc143:                                        ; preds = %bb.f
  store i32 2, ptr %i.av, align 4, !tbaa !21
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  store i32 0, ptr %i.aw, align 4, !tbaa !21
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 2 uses
  store ptr %i.ax, ptr %i.aj, align 8, !tbaa !8
  br label %thread-pre-split.i.i.i.backedge

thread-pre-split.i.i.i.backedge:                  ; preds = %.noexc143, %.noexc144
  %.be417 = phi ptr [ %i.cd, %.noexc144 ], [ %i.ax, %.noexc143 ]
  br label %thread-pre-split.i.i.i, !llvm.loop !481

_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i.i: ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i.i
  %i.ay = getelementptr inbounds i8, ptr %i.ar, i64 -8 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !21 ; 3 uses
  %i.ba = mul i32 %i.az, 3
  %i.bb = add i32 %i.ba, 1
  %i.bc = lshr i32 %i.bb, 1                       ; 3 uses
  %i.bd = shl i32 %i.bc, 2
  %i.be = add i32 %i.bd, 8                        ; 2 uses
  %.not.i141 = icmp ugt i32 %i.bc, %i.az
  br i1 %.not.i141, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i.i
  %i.bf = shl i32 %i.az, 2
  %i.bg = add i32 %i.bf, 8
  %.not27.i = icmp ugt i32 %i.be, %i.bg
  br i1 %.not27.i, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i.i
  %i.bh = call ptr @__cxa_allocate_exception(i64 40) #19 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.7, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %bb.h
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.bh, align 8, !tbaa !176
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 24 ; 3 uses
  store ptr %i.bj, ptr %i.bi, align 8, !tbaa !178
  %i.bk = load ptr, ptr %4, align 8, !tbaa !180   ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !182 ; 3 uses
  %i.bp = icmp ult i64 %i.bo, 16
  call void @llvm.assume(i1 %i.bp)
  %i.bq = add nuw nsw i64 %i.bo, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bj, ptr noundef nonnull align 8 dereferenceable(1) %i.bl, i64 %i.bq, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.i
  store ptr %i.bk, ptr %i.bi, align 8, !tbaa !180
  %i.br = load i64, ptr %i.bl, align 8, !tbaa !183
  store i64 %i.br, ptr %i.bj, align 8, !tbaa !183
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.pre.i142 = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !182
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.j
  %i.bs = phi i64 [ %i.bo, %bb.j ], [ %.pre.i142, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store i64 %i.bs, ptr %i.bu, align 8, !tbaa !182
  store ptr %i.bl, ptr %4, align 8, !tbaa !180
  store i64 0, ptr %i.bt, align 8, !tbaa !182
  store i8 0, ptr %i.bl, align 8, !tbaa !183
  invoke void @__cxa_throw(ptr nonnull %i.bh, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #21
          to label %bb.n unwind label %bb.k

bb.k:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.bv = landingpad { ptr, i32 }
          cleanup
  %i.bw = load ptr, ptr %4, align 8, !tbaa !180   ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.bl
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i: ; preds = %bb.k
end_hunk_0
begin_hunk_1_@_Z18for_each_expr_coreI12var_set_proc8obj_markI4expr10bit_vector14default_t2uintIS2_EELb0ELb0EEvRT_RT0_PS2_:bb.a
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 2 uses
  store ptr %i.cd, ptr %i.aj, align 8, !tbaa !8
  store i32 %i.bc, ptr %i.cc, align 4, !tbaa !21
  br label %thread-pre-split.i.i.i.backedge

bb.n:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  unreachable

bb.o:                                             ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i.i
  %i.ce = getelementptr inbounds i8, ptr %i.ar, i64 -4
  store i32 %.ph411, ptr %i.ce, align 4, !tbaa !21
  %.not1218.i.i.i = icmp eq i32 %.0.i16.i.i.i.ph, %.ph411
  br i1 %.not1218.i.i.i, label %bb.p, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.o
  %i.cf = zext nneg i32 %.ph411 to i64
  %i.cg = zext nneg i32 %.0.i16.i.i.i.ph to i64   ; 2 uses
  %i.ch = getelementptr [4 x i8], ptr %i.ar, i64 %i.cg
  %i.ci = sub nsw i64 %i.cf, %i.cg
  %i.cj = shl nsw i64 %i.ci, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.ch, i8 0, i64 %i.cj, i1 false), !tbaa !21
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph.preheader.i.i.i, %bb.o, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i
  %i.ck = phi ptr [ %i.ar, %.lr.ph.preheader.i.i.i ], [ %i.ar, %bb.o ], [ %i.an, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i ]
  %i.cl = and i32 %i.al, 31
  %i.cm = shl nuw i32 1, %i.cl
  %i.cn = zext nneg i32 %i.am to i64
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.cn ; 2 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !21
  %i.cq = or i32 %i.cp, %i.cm
  store i32 %i.cq, ptr %i.co, align 4, !tbaa !21
  %i.cr = load i32, ptr %i.w, align 8, !tbaa !476
  %i.cs = add i32 %i.cr, -1                       ; 2 uses
  store i32 %i.cs, ptr %i.w, align 8, !tbaa !476
  br label %thread-pre-split

.loopexit412:                                     ; preds = %bb.f, %bb.m
  %lpad.loopexit414 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp413:                            ; preds = %bb.bf, %bb.bg
  %lpad.loopexit.split-lp415 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.q:                                             ; preds = %.preheader
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !43 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 3 uses
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !482 ; 2 uses
  %i.cx = icmp ult i32 %i.cw, %i.cu
  br i1 %i.cx, label %.lr.ph, label %.thread193

.lr.ph:                                           ; preds = %bb.q
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph, %bb.aq
  %i.cz = phi i32 [ %i.cw, %.lr.ph ], [ %i.hk, %bb.aq ] ; 2 uses
  %i.da = zext i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.da
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !52 ; 9 uses
  %i.dd = add nuw i32 %i.cz, 1
  store i32 %i.dd, ptr %i.cv, align 8, !tbaa !482
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.df = load i32, ptr %i.de, align 4, !tbaa !53
  %i.dg = icmp ugt i32 %i.df, 1
  br i1 %i.dg, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.dh = load i32, ptr %i.dc, align 4, !tbaa !44 ; 6 uses
  %i.di = load i32, ptr %i.y, align 8, !tbaa !414
  %i.dj = icmp ult i32 %i.dh, %i.di
  br i1 %i.dj, label %_ZNK8obj_markI4expr10bit_vector14default_t2uintIS0_EE9is_markedEPS0_.exit58, label %bb.t

_ZNK8obj_markI4expr10bit_vector14default_t2uintIS0_EE9is_markedEPS0_.exit58: ; preds = %bb.s
  %i.dk = load ptr, ptr %i.z, align 8, !tbaa !19  ; 2 uses
  %i.dl = lshr i32 %i.dh, 5
  %i.dm = zext nneg i32 %i.dl to i64              ; 2 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %i.dm
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !21
  %i.dp = and i32 %i.dh, 31
  %i.dq = shl nuw i32 1, %i.dp                    ; 2 uses
  %i.dr = and i32 %i.do, %i.dq
  %.not207 = icmp eq i32 %i.dr, 0
  br i1 %.not207, label %_ZN8obj_markI4expr10bit_vector14default_t2uintIS0_EE4markEPKS0_.exit61, label %bb.aq, !llvm.loop !483

.loopexit409:                                     ; preds = %bb.w, %bb.aa
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.ao, %bb.ap, %bb.t
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.t:                                             ; preds = %bb.s
  %i.ds = add i32 %i.dh, 1
  invoke void @_ZN10bit_vector6resizeEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i32 noundef %i.ds, i1 noundef zeroext false)
          to label %._ZN8obj_markI4expr10bit_vector14default_t2uintIS0_EE4markEPKS0_.exit61_crit_edge unwind label %.loopexit.split-lp

._ZN8obj_markI4expr10bit_vector14default_t2uintIS0_EE4markEPKS0_.exit61_crit_edge: ; preds = %bb.t
  %.pre256 = load ptr, ptr %i.z, align 8, !tbaa !19
  %.pre268 = lshr i32 %i.dh, 5
  %.pre270 = zext nneg i32 %.pre268 to i64
  %.pre272 = and i32 %i.dh, 31
  %.pre274 = shl nuw i32 1, %.pre272
  br label %_ZN8obj_markI4expr10bit_vector14default_t2uintIS0_EE4markEPKS0_.exit61

_ZN8obj_markI4expr10bit_vector14default_t2uintIS0_EE4markEPKS0_.exit61: ; preds = %._ZN8obj_markI4expr10bit_vector14default_t2uintIS0_EE4markEPKS0_.exit61_crit_edge, %_ZNK8obj_markI4expr10bit_vector14default_t2uintIS0_EE9is_markedEPS0_.exit58
  %.pre-phi275 = phi i32 [ %.pre274, %._ZN8obj_markI4expr10bit_vector14default_t2uintIS0_EE4markEPKS0_.exit61_crit_edge ], [ %i.dq, %_ZNK8obj_markI4expr10bit_vector14default_t2uintIS0_EE9is_markedEPS0_.exit58 ]
  %.pre-phi271 = phi i64 [ %.pre270, %._ZN8obj_markI4expr10bit_vector14default_t2uintIS0_EE4markEPKS0_.exit61_crit_edge ], [ %i.dm, %_ZNK8obj_markI4expr10bit_vector14default_t2uintIS0_EE9is_markedEPS0_.exit58 ]
  %i.dt = phi ptr [ %.pre256, %._ZN8obj_markI4expr10bit_vector14default_t2uintIS0_EE4markEPKS0_.exit61_crit_edge ], [ %i.dk, %_ZNK8obj_markI4expr10bit_vector14default_t2uintIS0_EE9is_markedEPS0_.exit58 ]
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %.pre-phi271 ; 2 uses
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !21
  %i.dw = or i32 %i.dv, %.pre-phi275
  store i32 %i.dw, ptr %i.du, align 4, !tbaa !21
  br label %bb.u

bb.u:                                             ; preds = %_ZN8obj_markI4expr10bit_vector14default_t2uintIS0_EE4markEPKS0_.exit61, %bb.r
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dc, i64 4
  %i.dy = load i32, ptr %i.dx, align 4
  %trunc208 = trunc i32 %i.dy to i16
  switch i16 %trunc208, label %bb.ao [
    i16 1, label %bb.v
    i16 2, label %bb.ad
    i16 0, label %bb.ai
  ]

bb.v:                                             ; preds = %bb.u
  %i.dz = load ptr, ptr %0, align 8, !tbaa !479, !nonnull !15, !align !16 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !445 ; 2 uses
  %i.ec = lshr i32 %i.eb, 5                       ; 4 uses
  %i.ed = load ptr, ptr %i.dz, align 8, !tbaa !8  ; 4 uses
  %i.ee = icmp eq ptr %i.ed, null
  br i1 %i.ee, label %thread-pre-split.i.i.i65.preheader, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i62

_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i62:            ; preds = %bb.v
  %i.ef = getelementptr inbounds i8, ptr %i.ed, i64 -4
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !21 ; 2 uses
  %.not.i.i63 = icmp ult i32 %i.ec, %i.eg
  br i1 %.not.i.i63, label %_ZN12var_set_procclEP3var.exit76, label %thread-pre-split.i.i.i65.preheader

thread-pre-split.i.i.i65.preheader:               ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i62, %bb.v
  %.ph = phi ptr [ null, %bb.v ], [ %i.ed, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i62 ]
  %.0.i16.i.i.i68.ph = phi i32 [ 0, %bb.v ], [ %i.eg, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i62 ] ; 2 uses
  %.ph408 = add nuw nsw i32 %i.ec, 1              ; 3 uses
  br label %thread-pre-split.i.i.i65

thread-pre-split.i.i.i65:                         ; preds = %thread-pre-split.i.i.i65.backedge, %thread-pre-split.i.i.i65.preheader
  %i.eh = phi ptr [ %.ph, %thread-pre-split.i.i.i65.preheader ], [ %.be, %thread-pre-split.i.i.i65.backedge ] ; 7 uses
  %i.ei = icmp eq ptr %i.eh, null
  br i1 %i.ei, label %bb.w, label %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i.i69

_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i.i69:      ; preds = %thread-pre-split.i.i.i65
  %i.ej = getelementptr inbounds i8, ptr %i.eh, i64 -8
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !21
  %.not457 = icmp ult i32 %i.ec, %i.ek
  br i1 %.not457, label %bb.ac, label %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i.i72

bb.w:                                             ; preds = %thread-pre-split.i.i.i65
  %i.el = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 16)
          to label %.noexc155 unwind label %.loopexit409 ; 3 uses

.noexc155:                                        ; preds = %bb.w
  store i32 2, ptr %i.el, align 4, !tbaa !21
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 4
  store i32 0, ptr %i.em, align 4, !tbaa !21
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 8 ; 2 uses
  store ptr %i.en, ptr %i.dz, align 8, !tbaa !8
  br label %thread-pre-split.i.i.i65.backedge

thread-pre-split.i.i.i65.backedge:                ; preds = %.noexc155, %.noexc158
  %.be = phi ptr [ %i.fn, %.noexc158 ], [ %i.en, %.noexc155 ]
  br label %thread-pre-split.i.i.i65, !llvm.loop !481

_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i.i72: ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i.i69
  %i.eo = getelementptr inbounds i8, ptr %i.eh, i64 -8 ; 2 uses
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !21 ; 3 uses
  %i.eq = mul i32 %i.ep, 3
  %i.er = add i32 %i.eq, 1
  %i.es = lshr i32 %i.er, 1                       ; 3 uses
  %i.et = shl i32 %i.es, 2
  %i.eu = add i32 %i.et, 8                        ; 2 uses
  %.not.i145 = icmp ugt i32 %i.es, %i.ep
  br i1 %.not.i145, label %bb.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i

bb.x:                                             ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i.i72
  %i.ev = shl i32 %i.ep, 2
  %i.ew = add i32 %i.ev, 8
  %.not27.i154 = icmp ugt i32 %i.eu, %i.ew
  br i1 %.not27.i154, label %bb.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.x, %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i.i72
  %i.ex = call ptr @__cxa_allocate_exception(i64 40) #19 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.ey = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.ey, ptr %3, align 8, !tbaa !178
  %i.ez = invoke noalias noundef nonnull dereferenceable(43) ptr @_Znwm(i64 noundef 43) #23
          to label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i150 unwind label %bb.z ; 3 uses

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i150: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  store i64 0, ptr %i.ey, align 8, !tbaa !183
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(42) %i.ez, ptr noundef nonnull align 1 dereferenceable(42) @.str.7, i64 42, i1 false)
  %i.fa = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 42
  store i8 0, ptr %i.fb, align 1, !tbaa !183
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.ex, align 8, !tbaa !176
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ex, i64 24
  store ptr %i.ez, ptr %i.fc, align 8, !tbaa !180
  store i64 42, ptr %i.fd, align 8, !tbaa !183
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  store i64 42, ptr %i.fe, align 8, !tbaa !182
  store ptr %i.ey, ptr %3, align 8, !tbaa !180
  store i64 0, ptr %i.fa, align 8, !tbaa !182
  invoke void @__cxa_throw(ptr nonnull %i.ex, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #21
          to label %bb.ab unwind label %bb.y

bb.y:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i150
  %i.ff = landingpad { ptr, i32 }
          cleanup
  %i.fg = load ptr, ptr %3, align 8, !tbaa !180   ; 2 uses
  %i.fh = icmp eq ptr %i.fg, %i.ey
  br i1 %i.fh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i152, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i151

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i151: ; preds = %bb.y
  %i.fi = load i64, ptr %i.ey, align 8, !tbaa !183
  %i.fj = add i64 %i.fi, 1
  call void @_ZdlPvm(ptr noundef %i.fg, i64 noundef %i.fj) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i152

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i152: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i151
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %.body

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  %i.fk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @__cxa_free_exception(ptr %i.ex) #19
  br label %.body

bb.aa:                                            ; preds = %bb.x
  %i.fl = zext i32 %i.eu to i64
  %i.fm = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.eo, i64 noundef %i.fl)
          to label %.noexc158 unwind label %.loopexit409 ; 2 uses

.noexc158:                                        ; preds = %bb.aa
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 8 ; 2 uses
  store ptr %i.fn, ptr %i.dz, align 8, !tbaa !8
  store i32 %i.es, ptr %i.fm, align 4, !tbaa !21
  br label %thread-pre-split.i.i.i65.backedge

bb.ab:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i150
  unreachable

bb.ac:                                            ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i.i69
  %i.fo = getelementptr inbounds i8, ptr %i.eh, i64 -4
  store i32 %.ph408, ptr %i.fo, align 4, !tbaa !21
  %.not1218.i.i.i70 = icmp eq i32 %.0.i16.i.i.i68.ph, %.ph408
  br i1 %.not1218.i.i.i70, label %_ZN12var_set_procclEP3var.exit76, label %.lr.ph.preheader.i.i.i71

.lr.ph.preheader.i.i.i71:                         ; preds = %bb.ac
  %i.fp = zext nneg i32 %.ph408 to i64
  %i.fq = zext nneg i32 %.0.i16.i.i.i68.ph to i64 ; 2 uses
  %i.fr = getelementptr [4 x i8], ptr %i.eh, i64 %i.fq
  %i.fs = sub nsw i64 %i.fp, %i.fq
  %i.ft = shl nsw i64 %i.fs, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.fr, i8 0, i64 %i.ft, i1 false), !tbaa !21
  br label %_ZN12var_set_procclEP3var.exit76

_ZN12var_set_procclEP3var.exit76:                 ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i62, %bb.ac, %.lr.ph.preheader.i.i.i71
  %i.fu = phi ptr [ %i.eh, %.lr.ph.preheader.i.i.i71 ], [ %i.eh, %bb.ac ], [ %i.ed, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i62 ]
  %i.fv = and i32 %i.eb, 31
  %i.fw = shl nuw i32 1, %i.fv
  %i.fx = zext nneg i32 %i.ec to i64
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %i.fx ; 2 uses
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !21
  %i.ga = or i32 %i.fz, %i.fw
  store i32 %i.ga, ptr %i.fy, align 4, !tbaa !21
  br label %bb.aq

bb.ad:                                            ; preds = %bb.u
  %i.gb = load i32, ptr %i.w, align 8, !tbaa !476 ; 2 uses
  %i.gc = load i32, ptr %i.x, align 4, !tbaa !475 ; 2 uses
  %.not.i77 = icmp ult i32 %i.gb, %i.gc
  br i1 %.not.i77, label %._crit_edge.i91, label %bb.ae

._crit_edge.i91:                                  ; preds = %bb.ad
  %.pre.i92 = load ptr, ptr %6, align 8, !tbaa !472
  br label %bb.bh

bb.ae:                                            ; preds = %bb.ad
  %i.gd = shl i32 %i.gc, 1                        ; 2 uses
  %i.ge = zext i32 %i.gd to i64
  %i.gf = shl nuw nsw i64 %i.ge, 4
  %i.gg = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.gf)
          to label %.noexc93 unwind label %bb.ah  ; 5 uses

.noexc93:                                         ; preds = %bb.ae
  %i.gh = load i32, ptr %i.w, align 8, !tbaa !476 ; 5 uses
  %.not.i.i78 = icmp eq i32 %i.gh, 0
  %.pre.i.i79 = load ptr, ptr %6, align 8, !tbaa !472 ; 6 uses
  br i1 %.not.i.i78, label %._crit_edge.i.i85, label %.lr.ph.i.i80

.lr.ph.i.i80:                                     ; preds = %.noexc93
  %wide.trip.count.i.i81 = zext i32 %i.gh to i64  ; 2 uses
  %xtraiter452 = and i64 %wide.trip.count.i.i81, 1
  %i.gi = icmp eq i32 %i.gh, 1
  br i1 %i.gi, label %.epil.preheader451, label %.lr.ph.i.i80.new

.lr.ph.i.i80.new:                                 ; preds = %.lr.ph.i.i80
  %unroll_iter455 = and i64 %wide.trip.count.i.i81, 4294967294
  br label %bb.ag

._crit_edge.i.i85.loopexit.unr-lcssa:             ; preds = %bb.ag
  %lcmp.mod453.not = icmp eq i64 %xtraiter452, 0
  br i1 %lcmp.mod453.not, label %._crit_edge.i.i85, label %.epil.preheader451

.epil.preheader451:                               ; preds = %._crit_edge.i.i85.loopexit.unr-lcssa, %.lr.ph.i.i80
  %indvars.iv.i.i82.epil.init = phi i64 [ 0, %.lr.ph.i.i80 ], [ %indvars.iv.next.i.i83.1, %._crit_edge.i.i85.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod454 = trunc i32 %i.gh to i1
  call void @llvm.assume(i1 %lcmp.mod454)
  %i.gj = getelementptr inbounds nuw [16 x i8], ptr %i.gg, i64 %indvars.iv.i.i82.epil.init
  %i.gk = getelementptr inbounds nuw [16 x i8], ptr %.pre.i.i79, i64 %indvars.iv.i.i82.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gj, ptr noundef nonnull align 8 dereferenceable(16) %i.gk, i64 16, i1 false)
  br label %._crit_edge.i.i85

._crit_edge.i.i85:                                ; preds = %.epil.preheader451, %._crit_edge.i.i85.loopexit.unr-lcssa, %.noexc93
  %.not.i.i.i86 = icmp eq ptr %.pre.i.i79, %i.v
  %i.gl = icmp eq ptr %.pre.i.i79, null
  %or.cond.i.i.i87 = or i1 %.not.i.i.i86, %i.gl
  br i1 %or.cond.i.i.i87, label %_ZN6bufferISt4pairIP4exprjELb0ELj16EE6expandEv.exit.i89, label %bb.af

bb.af:                                            ; preds = %._crit_edge.i.i85
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %.pre.i.i79)
          to label %.noexc94 unwind label %bb.ah

.noexc94:                                         ; preds = %bb.af
  %.pre2.pre.i88 = load i32, ptr %i.w, align 8, !tbaa !476
  br label %_ZN6bufferISt4pairIP4exprjELb0ELj16EE6expandEv.exit.i89

bb.ag:                                            ; preds = %bb.ag, %.lr.ph.i.i80.new
  %indvars.iv.i.i82 = phi i64 [ 0, %.lr.ph.i.i80.new ], [ %indvars.iv.next.i.i83.1, %bb.ag ] ; 4 uses
  %niter456 = phi i64 [ 0, %.lr.ph.i.i80.new ], [ %niter456.next.1, %bb.ag ]
  %i.gm = getelementptr inbounds nuw [16 x i8], ptr %i.gg, i64 %indvars.iv.i.i82
  %i.gn = getelementptr inbounds nuw [16 x i8], ptr %.pre.i.i79, i64 %indvars.iv.i.i82
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gm, ptr noundef nonnull align 8 dereferenceable(16) %i.gn, i64 16, i1 false)
  %indvars.iv.next.i.i83 = or disjoint i64 %indvars.iv.i.i82, 1 ; 2 uses
  %i.go = getelementptr inbounds nuw [16 x i8], ptr %i.gg, i64 %indvars.iv.next.i.i83
  %i.gp = getelementptr inbounds nuw [16 x i8], ptr %.pre.i.i79, i64 %indvars.iv.next.i.i83
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.go, ptr noundef nonnull align 8 dereferenceable(16) %i.gp, i64 16, i1 false)
  %indvars.iv.next.i.i83.1 = add nuw nsw i64 %indvars.iv.i.i82, 2 ; 2 uses
  %niter456.next.1 = add i64 %niter456, 2         ; 2 uses
  %niter456.ncmp.1 = icmp eq i64 %niter456.next.1, %unroll_iter455
  br i1 %niter456.ncmp.1, label %._crit_edge.i.i85.loopexit.unr-lcssa, label %bb.ag, !llvm.loop !484

_ZN6bufferISt4pairIP4exprjELb0ELj16EE6expandEv.exit.i89: ; preds = %.noexc94, %._crit_edge.i.i85
  %.pre2.i90 = phi i32 [ %i.gh, %._crit_edge.i.i85 ], [ %.pre2.pre.i88, %.noexc94 ]
  store ptr %i.gg, ptr %6, align 8, !tbaa !472
  store i32 %i.gd, ptr %i.x, align 4, !tbaa !475
  br label %bb.bh

bb.ah:                                            ; preds = %bb.af, %bb.ae
  %i.gq = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ai:                                            ; preds = %bb.u
  %i.gr = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  %i.gs = load i32, ptr %i.gr, align 8, !tbaa !43
  %i.gt = icmp eq i32 %i.gs, 0
  br i1 %i.gt, label %bb.aq, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gu = load i32, ptr %i.w, align 8, !tbaa !476 ; 2 uses
  %i.gv = load i32, ptr %i.x, align 4, !tbaa !475 ; 2 uses
  %.not.i96 = icmp ult i32 %i.gu, %i.gv
  br i1 %.not.i96, label %._crit_edge.i110, label %bb.ak

._crit_edge.i110:                                 ; preds = %bb.aj
  %.pre.i111 = load ptr, ptr %6, align 8, !tbaa !472
  br label %bb.bh

bb.ak:                                            ; preds = %bb.aj
  %i.gw = shl i32 %i.gv, 1                        ; 2 uses
  %i.gx = zext i32 %i.gw to i64
  %i.gy = shl nuw nsw i64 %i.gx, 4
  %i.gz = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.gy)
          to label %.noexc112 unwind label %bb.an ; 5 uses

.noexc112:                                        ; preds = %bb.ak
  %i.ha = load i32, ptr %i.w, align 8, !tbaa !476 ; 5 uses
  %.not.i.i97 = icmp eq i32 %i.ha, 0
  %.pre.i.i98 = load ptr, ptr %6, align 8, !tbaa !472 ; 6 uses
  br i1 %.not.i.i97, label %._crit_edge.i.i104, label %.lr.ph.i.i99

end_hunk_1
