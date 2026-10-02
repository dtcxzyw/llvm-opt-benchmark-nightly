Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/sat_prob?download=true
inline.NumInlined: 431
inline.NumDeleted: 239
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN6vectorIbLb0EjE13expand_vectorEv:bb.a
          cleanup
  %i.aa = load ptr, ptr %1, align 8, !tbaa !100   ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.p
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %bb.g
  %i.ac = load i64, ptr %i.p, align 8, !tbaa !102
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  call void @__cxa_free_exception(ptr %i.l) #21
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %bb.h
  %.pn32 = phi { ptr, i32 } [ %i.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ae, %bb.h ]
  resume { ptr, i32 } %.pn32

bb.j:                                             ; preds = %bb.c
  %i.af = zext i32 %narrow to i64
  %i.ag = tail call noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.f, i64 noundef %i.af) ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.ah, ptr %0, align 8, !tbaa !35
  store i32 %i.j, ptr %i.ag, align 4, !tbaa !20
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.b
  ret void

bb.l:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6vectorI7svectorIjjELb1EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %2 = alloca %"class.std::allocator", align 1    ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !31     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 24) ; 3 uses
  store i32 2, ptr %i.c, align 4, !tbaa !20
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 0, ptr %i.d, align 4, !tbaa !20
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.e, ptr %0, align 8, !tbaa !31
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.a, i64 -8
  %i.g = load i32, ptr %i.f, align 4, !tbaa !20   ; 3 uses
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
  %i.o = tail call ptr @__cxa_allocate_exception(i64 40) #21 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.9, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.o, align 8, !tbaa !14
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 3 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !98
  %i.r = load ptr, ptr %1, align 8, !tbaa !100    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !101  ; 3 uses
  %i.w = icmp ult i64 %i.v, 16
  call void @llvm.assume(i1 %i.w)
  %i.x = add nuw nsw i64 %i.v, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.x, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  store ptr %i.r, ptr %i.p, align 8, !tbaa !100
  %i.y = load i64, ptr %i.s, align 8, !tbaa !102
  store i64 %i.y, ptr %i.q, align 8, !tbaa !102
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !101
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.z = phi i64 [ %i.v, %bb.g ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %i.z, ptr %i.ab, align 8, !tbaa !101
  store ptr %i.s, ptr %1, align 8, !tbaa !100
  store i64 0, ptr %i.aa, align 8, !tbaa !101
  store i8 0, ptr %i.s, align 8, !tbaa !102
  invoke void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #23
          to label %bb.o unwind label %bb.h

bb.h:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = load ptr, ptr %1, align 8, !tbaa !100   ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.s
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %bb.h
  %i.af = load i64, ptr %i.s, align 8, !tbaa !102
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  call void @__cxa_free_exception(ptr %i.o) #21
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %bb.i
  %.pn36 = phi { ptr, i32 } [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ah, %bb.i ]
  resume { ptr, i32 } %.pn36

bb.k:                                             ; preds = %bb.d
  %i.ai = zext i32 %i.l to i64
  %i.aj = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.ai) ; 6 uses
  %i.ak = load ptr, ptr %0, align 8, !tbaa !31    ; 11 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %_ZSt20uninitialized_move_nIP7svectorIjjEjS2_ESt4pairIT_T1_ES4_T0_S5_.exit, label %_ZNK6vectorI7svectorIjjELb1EjE4sizeEv.exit

_ZNK6vectorI7svectorIjjELb1EjE4sizeEv.exit:       ; preds = %bb.k
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 -4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !20 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !20
  %i.ap = getelementptr i8, ptr %i.aj, i64 8      ; 6 uses
  %i.aq = zext i32 %i.an to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.aq, 3          ; 3 uses
  %i.ar = getelementptr i8, ptr %i.ak, i64 %.idx.i.i.i ; 2 uses
  %i.as = icmp eq i32 %i.an, 0
  br i1 %i.as, label %_ZNK6vectorI7svectorIjjELb1EjE4sizeEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNK6vectorI7svectorIjjELb1EjE4sizeEv.exit
  %i.at = add nsw i64 %.idx.i.i.i, -8             ; 2 uses
  %i.au = lshr exact i64 %i.at, 3
  %i.av = add nuw nsw i64 %i.au, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.at, 72
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader54, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.aw = getelementptr i8, ptr %i.aj, i64 %.idx.i.i.i
  %i.ax = getelementptr i8, ptr %i.aw, i64 8
  %bound0 = icmp ult ptr %i.ap, %i.ar
  %bound1 = icmp ult ptr %i.ak, %i.ax
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader54, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.av, 4611686018427387900     ; 3 uses
  %i.ay = shl i64 %n.vec, 3                       ; 2 uses
  %i.az = getelementptr i8, ptr %i.ap, i64 %i.ay
  %i.ba = getelementptr i8, ptr %i.ak, i64 %i.ay
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bb = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ap, i64 %i.bb ; 2 uses
  %next.gep51 = getelementptr i8, ptr %i.ak, i64 %i.bb ; 3 uses
  %i.bc = getelementptr i8, ptr %next.gep51, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %next.gep51, align 8, !tbaa !25, !alias.scope !268
  %wide.load52 = load <2 x ptr>, ptr %i.bc, align 8, !tbaa !25, !alias.scope !268
  %i.bd = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !25, !alias.scope !269, !noalias !268
  store <2 x ptr> %wide.load52, ptr %i.bd, align 8, !tbaa !25, !alias.scope !269, !noalias !268
  store <2 x ptr> splat (ptr null), ptr %next.gep51, align 8, !tbaa !25, !alias.scope !268
  store <2 x ptr> splat (ptr null), ptr %i.bc, align 8, !tbaa !25, !alias.scope !268
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !266

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.av, %n.vec
  br i1 %cmp.n, label %_ZNK6vectorI7svectorIjjELb1EjE4sizeEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.preheader54

.lr.ph.i.i.i.i.i.i.preheader54:                   ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.08.i.i.i.i.i.i.ph = phi ptr [ %i.ap, %vector.memcheck ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.az, %middle.block ]
  %.sroa.04.07.i.i.i.i.i.i.ph = phi ptr [ %i.ak, %vector.memcheck ], [ %i.ak, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ba, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader54, %.lr.ph.i.i.i.i.i.i
  %.08.i.i.i.i.i.i = phi ptr [ %i.bh, %.lr.ph.i.i.i.i.i.i ], [ %.08.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader54 ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i.i = phi ptr [ %i.bg, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader54 ] ; 3 uses
  %i.bf = load ptr, ptr %.sroa.04.07.i.i.i.i.i.i, align 8, !tbaa !25
  store ptr %i.bf, ptr %.08.i.i.i.i.i.i, align 8, !tbaa !25
  store ptr null, ptr %.sroa.04.07.i.i.i.i.i.i, align 8, !tbaa !25
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 8
  %i.bi = icmp eq ptr %i.bg, %i.ar
  br i1 %i.bi, label %_ZNK6vectorI7svectorIjjELb1EjE4sizeEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !267

_ZSt20uninitialized_move_nIP7svectorIjjEjS2_ESt4pairIT_T1_ES4_T0_S5_.exit: ; preds = %bb.k
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  store i32 0, ptr %i.bj, align 4, !tbaa !20
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  br label %_ZN6vectorI7svectorIjjELb1EjE7destroyEv.exit

_ZNK6vectorI7svectorIjjELb1EjE4sizeEv.exit.i.i:   ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %_ZNK6vectorI7svectorIjjELb1EjE4sizeEv.exit
  %i.bl = getelementptr inbounds i8, ptr %i.ak, i64 -4
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !20 ; 2 uses
  %.not6.i.i.i.i.i = icmp eq i32 %i.bm, 0
  br i1 %.not6.i.i.i.i.i, label %_ZN6vectorI7svectorIjjELb1EjE16destroy_elementsEv.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNK6vectorI7svectorIjjELb1EjE4sizeEv.exit.i.i, %_ZSt8_DestroyI7svectorIjjEEvPT_.exit.i.i.i.i.i
  %.08.i.i.i.i.i = phi i32 [ %i.bs, %_ZSt8_DestroyI7svectorIjjEEvPT_.exit.i.i.i.i.i ], [ %i.bm, %_ZNK6vectorI7svectorIjjELb1EjE4sizeEv.exit.i.i ]
  %.047.i.i.i.i.i = phi ptr [ %i.br, %_ZSt8_DestroyI7svectorIjjEEvPT_.exit.i.i.i.i.i ], [ %i.ak, %_ZNK6vectorI7svectorIjjELb1EjE4sizeEv.exit.i.i ] ; 2 uses
  %i.bn = load ptr, ptr %.047.i.i.i.i.i, align 8, !tbaa !25 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyI7svectorIjjEEvPT_.exit.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.bo)
          to label %_ZSt8_DestroyI7svectorIjjEEvPT_.exit.i.i.i.i.i unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0
  tail call void @__clang_call_terminate(ptr %i.bq) #20
  unreachable

_ZSt8_DestroyI7svectorIjjEEvPT_.exit.i.i.i.i.i:   ; preds = %bb.l, %.lr.ph.i.i.i.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %.047.i.i.i.i.i, i64 8
  %i.bs = add i32 %.08.i.i.i.i.i, -1              ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.bs, 0
  br i1 %.not.i.i.i.i.i, label %_ZN6vectorI7svectorIjjELb1EjE16destroy_elementsEv.exit.loopexit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

_ZN6vectorI7svectorIjjELb1EjE16destroy_elementsEv.exit.loopexit.i: ; preds = %_ZSt8_DestroyI7svectorIjjEEvPT_.exit.i.i.i.i.i
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !31
  br label %_ZN6vectorI7svectorIjjELb1EjE16destroy_elementsEv.exit.i

_ZN6vectorI7svectorIjjELb1EjE16destroy_elementsEv.exit.i: ; preds = %_ZN6vectorI7svectorIjjELb1EjE16destroy_elementsEv.exit.loopexit.i, %_ZNK6vectorI7svectorIjjELb1EjE4sizeEv.exit.i.i
  %i.bt = phi ptr [ %.pre.i, %_ZN6vectorI7svectorIjjELb1EjE16destroy_elementsEv.exit.loopexit.i ], [ %i.ak, %_ZNK6vectorI7svectorIjjELb1EjE4sizeEv.exit.i.i ]
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 -8
  tail call void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.bu)
  br label %_ZN6vectorI7svectorIjjELb1EjE7destroyEv.exit

_ZN6vectorI7svectorIjjELb1EjE7destroyEv.exit:     ; preds = %_ZSt20uninitialized_move_nIP7svectorIjjEjS2_ESt4pairIT_T1_ES4_T0_S5_.exit, %_ZN6vectorI7svectorIjjELb1EjE16destroy_elementsEv.exit.i
  %i.bv = phi ptr [ %i.bk, %_ZSt20uninitialized_move_nIP7svectorIjjEjS2_ESt4pairIT_T1_ES4_T0_S5_.exit ], [ %i.ap, %_ZN6vectorI7svectorIjjELb1EjE16destroy_elementsEv.exit.i ]
  store ptr %i.bv, ptr %0, align 8, !tbaa !31
  store i32 %i.j, ptr %i.aj, align 4, !tbaa !20
  br label %bb.n

bb.n:                                             ; preds = %_ZN6vectorI7svectorIjjELb1EjE7destroyEv.exit, %bb.b
  ret void

bb.o:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6vectorIdLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %2 = alloca %"class.std::allocator", align 1    ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !28     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 24) ; 3 uses
  store i32 2, ptr %i.c, align 4, !tbaa !20
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 0, ptr %i.d, align 4, !tbaa !20
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.e, ptr %0, align 8, !tbaa !28
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.a, i64 -8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !20   ; 3 uses
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
  %i.o = tail call ptr @__cxa_allocate_exception(i64 40) #21 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.9, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.o, align 8, !tbaa !14
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 3 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !98
  %i.r = load ptr, ptr %1, align 8, !tbaa !100    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !101  ; 3 uses
  %i.w = icmp ult i64 %i.v, 16
  call void @llvm.assume(i1 %i.w)
  %i.x = add nuw nsw i64 %i.v, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.x, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  store ptr %i.r, ptr %i.p, align 8, !tbaa !100
  %i.y = load i64, ptr %i.s, align 8, !tbaa !102
  store i64 %i.y, ptr %i.q, align 8, !tbaa !102
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !101
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.z = phi i64 [ %i.v, %bb.g ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %i.z, ptr %i.ab, align 8, !tbaa !101
  store ptr %i.s, ptr %1, align 8, !tbaa !100
  store i64 0, ptr %i.aa, align 8, !tbaa !101
  store i8 0, ptr %i.s, align 8, !tbaa !102
  invoke void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #23
          to label %bb.m unwind label %bb.h

bb.h:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = load ptr, ptr %1, align 8, !tbaa !100   ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.s
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %bb.h
  %i.af = load i64, ptr %i.s, align 8, !tbaa !102
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  call void @__cxa_free_exception(ptr %i.o) #21
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %bb.i
  %.pn32 = phi { ptr, i32 } [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ah, %bb.i ]
  resume { ptr, i32 } %.pn32

bb.k:                                             ; preds = %bb.d
  %i.ai = zext i32 %i.l to i64
  %i.aj = tail call noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.f, i64 noundef %i.ai) ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.ak, ptr %0, align 8, !tbaa !28
  store i32 %i.j, ptr %i.aj, align 4, !tbaa !20
end_hunk_0
begin_hunk_1_@llvm.umax.i32
!63 = !{!"_ZTS10ptr_vectorIN3sat6clauseEE", !18, i64 0}
!64 = !{!"_ZTS7svectorIN3sat4prob11clause_infoEjE", !37, i64 0}
!65 = !{!"_ZTS7svectorIbjE", !34, i64 0}
!66 = !{!"_ZTS7svectorIdjE", !27, i64 0}
!67 = !{!"_ZTS16indexed_uint_set", !10, i64 0, !60, i64 8, !60, i64 16}
!68 = !{!"_ZTS10random_gen", !10, i64 0}
!69 = !{!"_ZTSNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEE", !51, i64 0}
!70 = !{!"_ZTSNSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEEE", !69, i64 0}
!71 = !{!"_ZTS9stopwatch", !70, i64 0, !69, i64 8, !50, i64 16}
!72 = !{!"_ZTS7svectorI5lbooljE", !21, i64 0}
!73 = !{!"_ZTSN3sat4probE", !45, i64 0, !47, i64 8, !54, i64 32, !62, i64 72, !63, i64 640, !64, i64 648, !65, i64 656, !65, i64 664, !10, i64 672, !30, i64 680, !60, i64 688, !60, i64 696, !66, i64 704, !66, i64 712, !67, i64 720, !68, i64 744, !60, i64 752, !51, i64 760, !51, i64 768, !10, i64 776, !71, i64 784, !72, i64 808}
!74 = !{!73, !10, i64 672}
!75 = !{!73, !51, i64 760}
!76 = !{!73, !51, i64 768}
!77 = !{!68, !10, i64 0}
!78 = !{!50, !50, i64 0}
!79 = !{i8 0, i8 2}
!80 = !{}
!81 = !{!73, !10, i64 12}
!82 = !{!73, !10, i64 776}
!83 = !{!71, !50, i64 16}
!84 = !{!51, !51, i64 0}
!85 = !{!67, !10, i64 0}
!86 = !{!"_ZTS14approx_set_tplIj3u2ujE", !10, i64 0}
!87 = !{!"_ZTSN3sat6clauseE", !10, i64 0, !10, i64 4, !10, i64 8, !86, i64 12, !10, i64 16, !10, i64 16, !10, i64 16, !10, i64 16, !10, i64 16, !10, i64 16, !10, i64 16, !10, i64 17, !10, i64 18, !9, i64 20}
!88 = !{!87, !10, i64 4}
!89 = !{!46, !46, i64 0}
!90 = !{!"_ZTSN3sat7literalE", !10, i64 0}
!91 = !{!90, !10, i64 0}
!92 = !{!"_ZTSN3sat4prob11clause_infoE", !10, i64 0, !10, i64 4}
!93 = !{!92, !10, i64 4}
!94 = !{!92, !10, i64 0}
!95 = !{!"llvm.loop.isvectorized", i32 1}
!96 = !{!"llvm.loop.unroll.runtime.disable"}
!97 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !55, i64 0}
!98 = !{!97, !55, i64 0}
!99 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !97, i64 0, !51, i64 8, !9, i64 16}
!100 = !{!99, !55, i64 0}
!101 = !{!99, !51, i64 8}
!102 = !{!9, !9, i64 0}
!103 = !{!"llvm.loop.unroll.disable"}
!104 = !{!40, !39, i64 0}
!105 = !{!42, !41, i64 0}
!106 = distinct !{!106, !32}
!107 = distinct !{!107, !32}
!108 = distinct !{!108, !95, !96}
!109 = distinct !{!109, !95}
!110 = !{!"_ZTS5lbool", !9, i64 0}
!111 = !{!110, !110, i64 0}
!112 = distinct !{!112, !32}
!113 = distinct !{!113, !32}
!114 = distinct !{!114, !32}
!115 = distinct !{!115, !32}
!116 = distinct !{!116, !32}
!117 = !{!"p1 _ZTSN3sat13justificationE", !15, i64 0}
!118 = !{!"_ZTS6vectorIN3sat13justificationELb0EjE", !117, i64 0}
!119 = !{!118, !117, i64 0}
!120 = !{!"p1 _ZTS8reslimit", !15, i64 0}
!121 = !{!"_ZTSN3sat11solver_coreE", !120, i64 8}
!122 = !{!"long long", !9, i64 0}
!123 = !{!"_ZTSN3sat15phase_selectionE", !9, i64 0}
!124 = !{!"_ZTSN3sat16restart_strategyE", !9, i64 0}
!125 = !{!"_ZTS6symbol", !55, i64 0}
!126 = !{!"_ZTSN3sat17local_search_modeE", !9, i64 0}
!127 = !{!"_ZTSN3sat8cutoff_tE", !9, i64 0}
!128 = !{!"_ZTSN3sat8reward_tE", !9, i64 0}
!129 = !{!"_ZTSN3sat11gc_strategyE", !9, i64 0}
!130 = !{!"_ZTSN3sat10pb_resolveE", !9, i64 0}
!131 = !{!"_ZTSN3sat15pb_lemma_formatE", !9, i64 0}
!132 = !{!"_ZTSN3sat19branching_heuristicE", !9, i64 0}
!133 = !{!"_ZTSN3sat6configE", !122, i64 0, !123, i64 8, !10, i64 12, !10, i64 16, !50, i64 20, !10, i64 24, !10, i64 28, !46, i64 32, !10, i64 40, !50, i64 44, !124, i64 48, !50, i64 52, !10, i64 56, !46, i64 64, !46, i64 72, !10, i64 80, !10, i64 84, !46, i64 88, !46, i64 96, !10, i64 104, !125, i64 112, !46, i64 120, !10, i64 128, !10, i64 132, !50, i64 136, !10, i64 140, !10, i64 144, !50, i64 148, !10, i64 152, !50, i64 156, !10, i64 160, !50, i64 164, !126, i64 168, !50, i64 172, !50, i64 173, !10, i64 176, !50, i64 180, !50, i64 181, !50, i64 182, !127, i64 184, !46, i64 192, !10, i64 200, !46, i64 208, !46, i64 216, !46, i64 224, !46, i64 232, !128, i64 240, !50, i64 244, !50, i64 245, !46, i64 248, !50, i64 256, !50, i64 257, !10, i64 260, !46, i64 264, !10, i64 272, !10, i64 276, !10, i64 280, !129, i64 284, !10, i64 288, !10, i64 292, !10, i64 296, !10, i64 300, !50, i64 304, !50, i64 305, !50, i64 306, !10, i64 308, !10, i64 312, !50, i64 316, !50, i64 317, !50, i64 318, !50, i64 319, !50, i64 320, !50, i64 321, !50, i64 322, !125, i64 328, !50, i64 336, !50, i64 337, !50, i64 338, !50, i64 339, !50, i64 340, !50, i64 341, !130, i64 344, !131, i64 348, !132, i64 352, !50, i64 356, !46, i64 360, !46, i64 368, !46, i64 376, !46, i64 384, !46, i64 392, !50, i64 400}
!134 = !{!"_ZTSN3sat5statsE", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !10, i64 72, !10, i64 76, !10, i64 80}
!135 = !{!"p1 _ZTSN3sat9extensionE", !15, i64 0}
!136 = !{!"_ZTS10scoped_ptrIN3sat9extensionEE", !135, i64 0}
!137 = !{!"p1 _ZTSN3sat8parallelE", !15, i64 0}
!138 = !{!"p1 _ZTSN3sat9clause_ehE", !15, i64 0}
!139 = !{!"p1 _ZTSN3sat4drat14watched_clauseE", !15, i64 0}
!140 = !{!"_ZTS6vectorIN3sat4drat14watched_clauseELb0EjE", !139, i64 0}
!141 = !{!"_ZTS7svectorIN3sat4drat14watched_clauseEjE", !140, i64 0}
!142 = !{!"p1 _ZTSN3sat6solverE", !15, i64 0}
!143 = !{!"p1 _ZTSSo", !15, i64 0}
!144 = !{!"p1 _ZTSSt4pairIRN3sat6clauseENS0_6statusEE", !15, i64 0}
!145 = !{!"_ZTS6vectorISt4pairIRN3sat6clauseENS1_6statusEELb0EjE", !144, i64 0}
!146 = !{!"_ZTS7svectorISt4pairIRN3sat6clauseENS1_6statusEEjE", !145, i64 0}
!147 = !{!"p1 _ZTSSt4pairIN3sat7literalEPNS0_6clauseEE", !15, i64 0}
!148 = !{!"_ZTS6vectorISt4pairIN3sat7literalEPNS1_6clauseEELb0EjE", !147, i64 0}
!149 = !{!"_ZTS7svectorISt4pairIN3sat7literalEPNS1_6clauseEEjE", !148, i64 0}
!150 = !{!"_ZTSN3sat4drat5statsE", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12}
!151 = !{!"_ZTSN3sat4dratE", !138, i64 0, !141, i64 8, !142, i64 16, !62, i64 24, !143, i64 592, !143, i64 600, !146, i64 608, !149, i64 616, !30, i64 624, !72, i64 632, !50, i64 640, !50, i64 641, !50, i64 642, !50, i64 643, !50, i64 644, !150, i64 648}
!152 = !{!"_ZTSN3sat7cleanerE", !142, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20}
!153 = !{!"p1 _ZTSN3sat15model_converter5entryE", !15, i64 0}
!154 = !{!"_ZTS6vectorIN3sat15model_converter5entryELb1EjE", !153, i64 0}
!155 = !{!"p1 _ZTSSt4pairIjN3sat7literalEE", !15, i64 0}
!156 = !{!"_ZTS6vectorISt4pairIjN3sat7literalEELb0EjE", !155, i64 0}
!157 = !{!"_ZTS7svectorISt4pairIjN3sat7literalEEjE", !156, i64 0}
!158 = !{!"_ZTSN3sat15model_converterE", !154, i64 0, !10, i64 8, !65, i64 16, !142, i64 24, !157, i64 32}
!159 = !{!"p1 _ZTSN3sat15clause_use_listE", !15, i64 0}
!160 = !{!"_ZTS6vectorIN3sat15clause_use_listELb1EjE", !159, i64 0}
!161 = !{!"_ZTSN3sat8use_listE", !160, i64 0}
!162 = !{!"p1 _ZTS7svectorImjE", !15, i64 0}
!163 = !{!"_ZTS6vectorI7svectorImjELb1EjE", !162, i64 0}
!164 = !{!"_ZTSN3sat12ext_use_listE", !163, i64 0}
!165 = !{!"_ZTSN3sat10clause_setE", !60, i64 0, !63, i64 8}
!166 = !{!"p1 _ZTSN3sat10bin_clauseE", !15, i64 0}
!167 = !{!"_ZTS6vectorIN3sat10bin_clauseELb0EjE", !166, i64 0}
!168 = !{!"_ZTS7svectorIN3sat10bin_clauseEjE", !167, i64 0}
!169 = !{!"_ZTS6vectorIcLb0EjE", !55, i64 0}
!170 = !{!"_ZTS7svectorIcjE", !169, i64 0}
!171 = !{!"_ZTS16tracked_uint_set", !170, i64 0, !60, i64 8}
!172 = !{!"_ZTSN3sat10tmp_clauseE", !43, i64 0}
!173 = !{!"p1 _ZTSN3sat7literalE", !15, i64 0}
!174 = !{!"_ZTS6vectorIN3sat7literalELb0EjE", !173, i64 0}
!175 = !{!"_ZTS7svectorIN3sat7literalEjE", !174, i64 0}
!176 = !{!"p1 _ZTSN3sat14clause_wrapperE", !15, i64 0}
!177 = !{!"_ZTS6vectorIN3sat14clause_wrapperELb0EjE", !176, i64 0}
!178 = !{!"_ZTS7svectorIN3sat14clause_wrapperEjE", !177, i64 0}
!179 = !{!"_ZTSN3sat10simplifierE", !142, i64 0, !10, i64 8, !161, i64 16, !164, i64 24, !165, i64 32, !168, i64 48, !10, i64 56, !171, i64 64, !50, i64 80, !172, i64 88, !170, i64 96, !10, i64 104, !10, i64 108, !50, i64 112, !50, i64 113, !50, i64 114, !50, i64 115, !10, i64 116, !50, i64 120, !50, i64 121, !10, i64 124, !50, i64 128, !10, i64 132, !50, i64 136, !50, i64 137, !10, i64 140, !10, i64 144, !10, i64 148, !10, i64 152, !10, i64 156, !10, i64 160, !10, i64 164, !10, i64 168, !10, i64 172, !10, i64 176, !50, i64 180, !10, i64 184, !50, i64 188, !50, i64 189, !10, i64 192, !10, i64 196, !10, i64 200, !10, i64 204, !10, i64 208, !10, i64 212, !10, i64 216, !10, i64 220, !10, i64 224, !10, i64 228, !10, i64 232, !50, i64 236, !10, i64 240, !63, i64 248, !175, i64 256, !178, i64 264, !178, i64 272, !175, i64 280}
!180 = !{!"p1 _ZTS10random_gen", !15, i64 0}
!181 = !{!"p1 _ZTS7svectorIN3sat7literalEjE", !15, i64 0}
!182 = !{!"_ZTS6vectorI7svectorIN3sat7literalEjELb1EjE", !181, i64 0}
!183 = !{!"_ZTS6vectorIiLb0EjE", !23, i64 0}
!184 = !{!"_ZTS7svectorIijE", !183, i64 0}
!185 = !{!"_ZTSN3sat3bigE", !180, i64 0, !10, i64 8, !182, i64 16, !65, i64 24, !184, i64 32, !184, i64 40, !175, i64 48, !175, i64 56, !50, i64 64, !50, i64 65, !182, i64 72}
!186 = !{!"_ZTSN3sat3sccE", !142, i64 0, !50, i64 8, !50, i64 9, !10, i64 12, !10, i64 16, !185, i64 24}
!187 = !{!"p1 _ZTS6params", !15, i64 0}
!188 = !{!"_ZTS10params_ref", !187, i64 0}
!189 = !{!"p1 _ZTSSt4pairIN3sat7literalEjE", !15, i64 0}
!190 = !{!"_ZTS6vectorISt4pairIN3sat7literalEjELb0EjE", !189, i64 0}
!191 = !{!"_ZTS7svectorISt4pairIN3sat7literalEjEjE", !190, i64 0}
!192 = !{!"_ZTSN3sat12asymm_branchE", !142, i64 0, !188, i64 8, !51, i64 16, !68, i64 24, !10, i64 28, !10, i64 32, !50, i64 36, !10, i64 40, !10, i64 44, !50, i64 48, !50, i64 49, !51, i64 56, !10, i64 64, !10, i64 68, !10, i64 72, !175, i64 80, !175, i64 88, !191, i64 96, !191, i64 104, !175, i64 112, !175, i64 120}
!193 = !{!"_ZTSN3sat11literal_setE", !171, i64 0}
!194 = !{!"p1 _ZTSN3sat7probing11cache_entryE", !15, i64 0}
!195 = !{!"_ZTS6vectorIN3sat7probing11cache_entryELb1EjE", !194, i64 0}
!196 = !{!"p1 _ZTSSt4pairIN3sat7literalES1_E", !15, i64 0}
!197 = !{!"_ZTS6vectorISt4pairIN3sat7literalES2_ELb0EjE", !196, i64 0}
!198 = !{!"_ZTS7svectorISt4pairIN3sat7literalES2_EjE", !197, i64 0}
!199 = !{!"_ZTSN3sat7probingE", !142, i64 0, !10, i64 8, !193, i64 16, !175, i64 32, !10, i64 40, !50, i64 44, !10, i64 48, !50, i64 52, !50, i64 53, !122, i64 56, !10, i64 64, !195, i64 72, !198, i64 80, !185, i64 88}
!200 = !{!"_ZTSN3sat3musE", !142, i64 0, !175, i64 8, !175, i64 16, !50, i64 24, !72, i64 32, !10, i64 40}
!201 = !{!"_ZTSN3sat13justificationE", !10, i64 0, !51, i64 8, !10, i64 16}
!202 = !{!"p1 _ZTS6vectorIN3sat7watchedELb1EjE", !15, i64 0}
!203 = !{!"_ZTS6vectorIS_IN3sat7watchedELb1EjELb1EjE", !202, i64 0}
!204 = !{!"_ZTS7svectorIN3sat13justificationEjE", !118, i64 0}
!205 = !{!"_ZTSN3sat6solver12search_stateE", !9, i64 0}
!206 = !{!"_ZTSN3sat7backoffE", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16}
!207 = !{!"_ZTSN9var_queueI7svectorIjjEE2ltE", !29, i64 0}
!208 = !{!"_ZTS4heapIN9var_queueI7svectorIjjEE2ltEE", !207, i64 0, !184, i64 8, !184, i64 16}
!209 = !{!"_ZTS9var_queueI7svectorIjjEE", !208, i64 0}
!210 = !{!"_ZTS3ema", !46, i64 0, !46, i64 8, !46, i64 16, !10, i64 24, !10, i64 28}
!211 = !{!"_ZTS12visit_helper", !60, i64 0, !10, i64 8, !10, i64 12}
!212 = !{!"p1 _ZTSN3sat6solver5scopeE", !15, i64 0}
!213 = !{!"_ZTS6vectorIN3sat6solver5scopeELb0EjE", !212, i64 0}
!214 = !{!"_ZTS7svectorIN3sat6solver5scopeEjE", !213, i64 0}
!215 = !{!"_ZTS18scoped_limit_trail", !60, i64 0, !10, i64 8, !10, i64 12}
!216 = !{!"_ZTSN3sat14no_drat_paramsE", !188, i64 0}
!217 = !{!"_ZTS10scoped_ptrIN3sat6solverEE", !142, i64 0}
!218 = !{!"p1 _ZTSN3sat9lookaheadE", !15, i64 0}
!219 = !{!"p1 _ZTSN3sat14i_local_searchE", !15, i64 0}
!220 = !{!"p1 _ZTSSt4pairIPKcjE", !15, i64 0}
!221 = !{!"_ZTS6vectorISt4pairIPKcjELb0EjE", !220, i64 0}
!222 = !{!"_ZTS7svectorISt4pairIPKcjEjE", !221, i64 0}
!223 = !{!"p1 _ZTSSt4pairIPKcdE", !15, i64 0}
!224 = !{!"_ZTS6vectorISt4pairIPKcdELb0EjE", !223, i64 0}
!225 = !{!"_ZTS7svectorISt4pairIPKcdEjE", !224, i64 0}
!226 = !{!"_ZTS10statistics", !222, i64 0, !225, i64 8}
!227 = !{!"p1 _ZTS17default_map_entryIj9hashtableIj6u_hash4u_eqEE", !15, i64 0}
!228 = !{!"_ZTS14core_hashtableI17default_map_entryIj9hashtableIj6u_hash4u_eqEEN9table2mapIS5_S2_S3_E15entry_hash_procENS7_13entry_eq_procEE", !227, i64 0, !10, i64 8, !10, i64 12, !10, i64 16}
!229 = !{!"_ZTS9table2mapI17default_map_entryIj9hashtableIj6u_hash4u_eqEES2_S3_E", !228, i64 0}
!230 = !{!"_ZTS3mapIj9hashtableIj6u_hash4u_eqES1_S2_E", !229, i64 0}
!231 = !{!"_ZTS5u_mapI9hashtableIj6u_hash4u_eqEE", !230, i64 0}
!232 = !{!"_ZTSN3sat6solverE", !121, i64 0, !50, i64 16, !133, i64 24, !134, i64 432, !136, i64 520, !137, i64 528, !151, i64 536, !9, i64 1200, !50, i64 2336, !68, i64 2340, !152, i64 2344, !72, i64 2368, !158, i64 2376, !50, i64 2416, !179, i64 2424, !186, i64 2712, !192, i64 2816, !199, i64 2944, !50, i64 3112, !200, i64 3120, !50, i64 3168, !50, i64 3169, !201, i64 3176, !90, i64 3200, !63, i64 3208, !63, i64 3216, !10, i64 3224, !60, i64 3232, !60, i64 3240, !60, i64 3248, !60, i64 3256, !203, i64 3264, !72, i64 3272, !204, i64 3280, !65, i64 3288, !65, i64 3296, !65, i64 3304, !65, i64 3312, !65, i64 3320, !60, i64 3328, !60, i64 3336, !10, i64 3344, !175, i64 3352, !60, i64 3360, !10, i64 3368, !52, i64 3376, !52, i64 3384, !52, i64 3392, !52, i64 3400, !52, i64 3408, !10, i64 3416, !46, i64 3424, !65, i64 3432, !65, i64 3440, !65, i64 3448, !52, i64 3456, !52, i64 3464, !50, i64 3472, !170, i64 3480, !205, i64 3488, !10, i64 3492, !10, i64 3496, !10, i64 3500, !10, i64 3504, !10, i64 3508, !206, i64 3512, !10, i64 3532, !10, i64 3536, !206, i64 3540, !206, i64 3560, !209, i64 3584, !10, i64 3608, !10, i64 3612, !10, i64 3616, !210, i64 3624, !210, i64 3656, !210, i64 3688, !210, i64 3720, !210, i64 3752, !175, i64 3784, !178, i64 3792, !99, i64 3800, !50, i64 3832, !50, i64 3833, !211, i64 3840, !214, i64 3856, !215, i64 3864, !71, i64 3880, !188, i64 3904, !216, i64 3912, !217, i64 3920, !175, i64 3928, !193, i64 3936, !193, i64 3952, !175, i64 3968, !10, i64 3976, !10, i64 3980, !10, i64 3984, !10, i64 3988, !50, i64 3992, !218, i64 4000, !219, i64 4008, !226, i64 4016, !10, i64 4032, !10, i64 4036, !10, i64 4040, !10, i64 4044, !50, i64 4048, !10, i64 4052, !10, i64 4056, !10, i64 4060, !10, i64 4064, !10, i64 4068, !10, i64 4072, !10, i64 4076, !46, i64 4080, !10, i64 4088, !46, i64 4096, !50, i64 4104, !50, i64 4105, !175, i64 4112, !50, i64 4120, !52, i64 4128, !10, i64 4136, !10, i64 4140, !10, i64 4144, !175, i64 4152, !175, i64 4160, !170, i64 4168, !60, i64 4176, !86, i64 4184, !175, i64 4192, !175, i64 4200, !30, i64 4208, !175, i64 4216, !198, i64 4224, !231, i64 4232, !175, i64 4256}
!233 = !{!232, !10, i64 3612}
!234 = !{!174, !173, i64 0}
!235 = !{!213, !212, i64 0}
!236 = !{!203, !202, i64 0}
!237 = !{!"p1 _ZTSN3sat7watchedE", !15, i64 0}
!238 = !{!"_ZTS6vectorIN3sat7watchedELb1EjE", !237, i64 0}
!239 = !{!238, !237, i64 0}
!240 = !{!"_ZTSN3sat7watchedE", !51, i64 0, !10, i64 8}
!241 = !{!240, !10, i64 8}
!242 = !{!240, !51, i64 0}
!243 = distinct !{!243, !32}
!244 = distinct !{!244, !32}
!245 = distinct !{!245, !103}
!246 = distinct !{!246, !32}
!247 = !{!73, !46, i64 16}
!248 = !{!69, !51, i64 0}
!249 = distinct !{!249, !95, !96}
!250 = distinct !{!250, !95, !96}
!251 = distinct !{!251, !103}
!252 = distinct !{!252, !95}
!253 = !{!"branch_weights", i32 4, i32 28}
!254 = distinct !{!254, !32}
!255 = !{!57, !56, i64 0}
!256 = !{!"p1 _ZTSN13sat_allocator5chunkE", !15, i64 0}
!257 = !{!256, !256, i64 0}
!258 = !{!"_ZTS6vectorIPvLb0EjE", !16, i64 0}
!259 = !{!258, !16, i64 0}
!260 = !{!59, !51, i64 8}
!261 = !{!59, !15, i64 24}
!262 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!263 = distinct !{!263, i1 false, !"LVerDomain"}
!264 = distinct !{!264, !263}
!265 = distinct !{!265, !263}
!266 = distinct !{!266, !32, !95, !96}
!267 = distinct !{!267, !32, !95}
!268 = !{!264}
!269 = !{!265}
end_hunk_1
