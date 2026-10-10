Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/theory_pb?download=true
inline.NumInlined: 3714
inline.NumDeleted: 1173
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZN6vectorI9parameterLb1EjE9copy_coreERKS1_:bb.a
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !625    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_ZNK6vectorI9parameterLb1EjE8capacityEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %i.a, i64 -8
  %i.d = load <2 x i32>, ptr %i.c, align 4, !tbaa !38
  br label %_ZNK6vectorI9parameterLb1EjE8capacityEv.exit

_ZNK6vectorI9parameterLb1EjE8capacityEv.exit:     ; preds = %bb.a, %bb.b
  %i.e = phi <2 x i32> [ %i.d, %bb.b ], [ zeroinitializer, %bb.a ] ; 2 uses
  %i.f = extractelement <2 x i32> %i.e, i64 0
  %i.g = zext i32 %i.f to i64
  %i.h = mul nuw nsw i64 %i.g, 40
  %i.i = add nuw nsw i64 %i.h, 8
  %i.j = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.i) ; 3 uses
  store <2 x i32> %i.e, ptr %i.j, align 4, !tbaa !38
  %.ptr = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store ptr %.ptr, ptr %0, align 8, !tbaa !625
  %i.k = load ptr, ptr %1, align 8, !tbaa !625    ; 4 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZSt18uninitialized_copyIPK9parameterPS0_ET0_T_S5_S4_.exit, label %_ZNK6vectorI9parameterLb1EjE3endEv.exit

_ZNK6vectorI9parameterLb1EjE3endEv.exit:          ; preds = %_ZNK6vectorI9parameterLb1EjE8capacityEv.exit
  %i.m = getelementptr inbounds i8, ptr %i.k, i64 -4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !38   ; 2 uses
  %i.o = zext i32 %i.n to i64
  %i.p = mul nuw nsw i64 %i.o, 40
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.p
  %.not14.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not14.i.i.i, label %_ZSt18uninitialized_copyIPK9parameterPS0_ET0_T_S5_S4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNK6vectorI9parameterLb1EjE3endEv.exit, %_ZSt10_ConstructI9parameterJRKS0_EEvPT_DpOT0_.exit.i.i.i
  %.016.i.i.i.idx = phi i64 [ %.016.i.i.i.add, %_ZSt10_ConstructI9parameterJRKS0_EEvPT_DpOT0_.exit.i.i.i ], [ 8, %_ZNK6vectorI9parameterLb1EjE3endEv.exit ] ; 3 uses
  %.01215.i.i.i = phi ptr [ %i.r, %_ZSt10_ConstructI9parameterJRKS0_EEvPT_DpOT0_.exit.i.i.i ], [ %i.k, %_ZNK6vectorI9parameterLb1EjE3endEv.exit ] ; 2 uses
  %.016.i.i.i.ptr = getelementptr inbounds nuw i8, ptr %i.j, i64 %.016.i.i.i.idx ; 2 uses
  invoke void @_ZN9parameterC1ERKS_(ptr noundef nonnull align 8 dereferenceable(40) %.016.i.i.i.ptr, ptr noundef nonnull align 8 dereferenceable(40) %.01215.i.i.i)
          to label %_ZSt10_ConstructI9parameterJRKS0_EEvPT_DpOT0_.exit.i.i.i unwind label %bb.c

_ZSt10_ConstructI9parameterJRKS0_EEvPT_DpOT0_.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.01215.i.i.i, i64 40 ; 2 uses
  %.016.i.i.i.add = add nuw nsw i64 %.016.i.i.i.idx, 40
  %.not.i.i.i = icmp eq ptr %i.r, %i.q
  br i1 %.not.i.i.i, label %_ZSt18uninitialized_copyIPK9parameterPS0_ET0_T_S5_S4_.exit, label %.lr.ph.i.i.i, !llvm.loop !1115

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  %i.u = tail call ptr @__cxa_begin_catch(ptr %i.t) #26 ; 0 uses
  %.not4.i.i.i.i.i = icmp eq i64 %.016.i.i.i.idx, 8
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIP9parameterEvT_S2_.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i ], [ %.ptr, %bb.c ] ; 2 uses
  tail call void @_ZN9parameterD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %.05.i.i.i.i.i) #26
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.v, %.016.i.i.i.ptr
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIP9parameterEvT_S2_.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1116

_ZSt8_DestroyIP9parameterEvT_S2_.exit.i.i.i:      ; preds = %.lr.ph.i.i.i.i.i, %bb.c
  invoke void @__cxa_rethrow() #29
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIP9parameterEvT_S2_.exit.i.i.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.w

bb.f:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  tail call void @__clang_call_terminate(ptr %i.y) #27
  unreachable

bb.g:                                             ; preds = %_ZSt8_DestroyIP9parameterEvT_S2_.exit.i.i.i
  unreachable

_ZSt18uninitialized_copyIPK9parameterPS0_ET0_T_S5_S4_.exit: ; preds = %_ZSt10_ConstructI9parameterJRKS0_EEvPT_DpOT0_.exit.i.i.i, %_ZNK6vectorI9parameterLb1EjE8capacityEv.exit, %_ZNK6vectorI9parameterLb1EjE3endEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6vectorI7svectorIjjELb1EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %2 = alloca %"class.std::allocator.303", align 1 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !687    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 24) ; 3 uses
  store i32 2, ptr %i.c, align 4, !tbaa !38
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 0, ptr %i.d, align 4, !tbaa !38
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.e, ptr %0, align 8, !tbaa !687
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.a, i64 -8
  %i.g = load i32, ptr %i.f, align 4, !tbaa !38   ; 3 uses
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
  %i.o = tail call ptr @__cxa_allocate_exception(i64 40) #26 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.49, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.o, align 8, !tbaa !639
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 3 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !640
  %i.r = load ptr, ptr %1, align 8, !tbaa !55     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !56   ; 3 uses
  %i.w = icmp ult i64 %i.v, 16
  call void @llvm.assume(i1 %i.w)
  %i.x = add nuw nsw i64 %i.v, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.x, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  store ptr %i.r, ptr %i.p, align 8, !tbaa !55
  %i.y = load i64, ptr %i.s, align 8, !tbaa !57
  store i64 %i.y, ptr %i.q, align 8, !tbaa !57
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !56
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.z = phi i64 [ %i.v, %bb.g ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %i.z, ptr %i.ab, align 8, !tbaa !56
  store ptr %i.s, ptr %1, align 8, !tbaa !55
  store i64 0, ptr %i.aa, align 8, !tbaa !56
  store i8 0, ptr %i.s, align 8, !tbaa !57
  invoke void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #29
          to label %bb.o unwind label %bb.h

bb.h:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = load ptr, ptr %1, align 8, !tbaa !55    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.s
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %bb.h
  %i.af = load i64, ptr %i.s, align 8, !tbaa !57
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  call void @__cxa_free_exception(ptr %i.o) #26
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %bb.i
  %.pn36 = phi { ptr, i32 } [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ah, %bb.i ]
  resume { ptr, i32 } %.pn36

bb.k:                                             ; preds = %bb.d
  %i.ai = zext i32 %i.l to i64
  %i.aj = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.ai) ; 6 uses
  %i.ak = load ptr, ptr %0, align 8, !tbaa !687   ; 11 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %_ZSt20uninitialized_move_nIP7svectorIjjEjS2_ESt4pairIT_T1_ES4_T0_S5_.exit, label %_ZNK6vectorI7svectorIjjELb1EjE4sizeEv.exit

_ZNK6vectorI7svectorIjjELb1EjE4sizeEv.exit:       ; preds = %bb.k
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 -4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !38 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !38
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
  %3 = getelementptr i8, ptr %i.aj, i64 %.idx.i.i.i
  %4 = getelementptr i8, ptr %3, i64 8
  %bound0 = icmp ult ptr %i.ap, %i.ar
  %bound1 = icmp ult ptr %i.ak, %4
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader54, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.av, 4611686018427387900     ; 3 uses
  %i.aw = shl i64 %n.vec, 3                       ; 2 uses
  %i.ax = getelementptr i8, ptr %i.ap, i64 %i.aw
  %i.ay = getelementptr i8, ptr %i.ak, i64 %i.aw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.az = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ap, i64 %i.az ; 2 uses
  %next.gep51 = getelementptr i8, ptr %i.ak, i64 %i.az ; 3 uses
  %i.ba = getelementptr i8, ptr %next.gep51, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %next.gep51, align 8, !tbaa !637, !alias.scope !1122
  %wide.load52 = load <2 x ptr>, ptr %i.ba, align 8, !tbaa !637, !alias.scope !1122
  %i.bb = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !637, !alias.scope !1123, !noalias !1122
  store <2 x ptr> %wide.load52, ptr %i.bb, align 8, !tbaa !637, !alias.scope !1123, !noalias !1122
  store <2 x ptr> splat (ptr null), ptr %next.gep51, align 8, !tbaa !637, !alias.scope !1122
  store <2 x ptr> splat (ptr null), ptr %i.ba, align 8, !tbaa !637, !alias.scope !1122
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !1120

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.av, %n.vec
  br i1 %cmp.n, label %_ZNK6vectorI7svectorIjjELb1EjE4sizeEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i.preheader54

.lr.ph.i.i.i.i.i.i.preheader54:                   ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.08.i.i.i.i.i.i.ph = phi ptr [ %i.ap, %vector.memcheck ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ax, %middle.block ]
  %.sroa.04.07.i.i.i.i.i.i.ph = phi ptr [ %i.ak, %vector.memcheck ], [ %i.ak, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ay, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader54, %.lr.ph.i.i.i.i.i.i
  %.08.i.i.i.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i.i ], [ %.08.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader54 ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader54 ] ; 3 uses
  %i.bd = load ptr, ptr %.sroa.04.07.i.i.i.i.i.i, align 8, !tbaa !637
  store ptr %i.bd, ptr %.08.i.i.i.i.i.i, align 8, !tbaa !637
  store ptr null, ptr %.sroa.04.07.i.i.i.i.i.i, align 8, !tbaa !637
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 8
  %i.bg = icmp eq ptr %i.be, %i.ar
  br i1 %i.bg, label %_ZNK6vectorI7svectorIjjELb1EjE4sizeEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1121

_ZSt20uninitialized_move_nIP7svectorIjjEjS2_ESt4pairIT_T1_ES4_T0_S5_.exit: ; preds = %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  store i32 0, ptr %i.bh, align 4, !tbaa !38
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  br label %_ZN6vectorI7svectorIjjELb1EjE7destroyEv.exit

_ZNK6vectorI7svectorIjjELb1EjE4sizeEv.exit.i.i:   ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %_ZNK6vectorI7svectorIjjELb1EjE4sizeEv.exit
  %i.bj = getelementptr inbounds i8, ptr %i.ak, i64 -4
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !38 ; 2 uses
  %.not6.i.i.i.i.i = icmp eq i32 %i.bk, 0
  br i1 %.not6.i.i.i.i.i, label %_ZN6vectorI7svectorIjjELb1EjE16destroy_elementsEv.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNK6vectorI7svectorIjjELb1EjE4sizeEv.exit.i.i, %_ZSt8_DestroyI7svectorIjjEEvPT_.exit.i.i.i.i.i
  %.08.i.i.i.i.i = phi i32 [ %i.bq, %_ZSt8_DestroyI7svectorIjjEEvPT_.exit.i.i.i.i.i ], [ %i.bk, %_ZNK6vectorI7svectorIjjELb1EjE4sizeEv.exit.i.i ]
  %.047.i.i.i.i.i = phi ptr [ %i.bp, %_ZSt8_DestroyI7svectorIjjEEvPT_.exit.i.i.i.i.i ], [ %i.ak, %_ZNK6vectorI7svectorIjjELb1EjE4sizeEv.exit.i.i ] ; 2 uses
  %i.bl = load ptr, ptr %.047.i.i.i.i.i, align 8, !tbaa !637 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyI7svectorIjjEEvPT_.exit.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.bm)
          to label %_ZSt8_DestroyI7svectorIjjEEvPT_.exit.i.i.i.i.i unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  tail call void @__clang_call_terminate(ptr %i.bo) #27
  unreachable

_ZSt8_DestroyI7svectorIjjEEvPT_.exit.i.i.i.i.i:   ; preds = %bb.l, %.lr.ph.i.i.i.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %.047.i.i.i.i.i, i64 8
  %i.bq = add i32 %.08.i.i.i.i.i, -1              ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.bq, 0
  br i1 %.not.i.i.i.i.i, label %_ZN6vectorI7svectorIjjELb1EjE16destroy_elementsEv.exit.loopexit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !10

_ZN6vectorI7svectorIjjELb1EjE16destroy_elementsEv.exit.loopexit.i: ; preds = %_ZSt8_DestroyI7svectorIjjEEvPT_.exit.i.i.i.i.i
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !687
  br label %_ZN6vectorI7svectorIjjELb1EjE16destroy_elementsEv.exit.i

_ZN6vectorI7svectorIjjELb1EjE16destroy_elementsEv.exit.i: ; preds = %_ZN6vectorI7svectorIjjELb1EjE16destroy_elementsEv.exit.loopexit.i, %_ZNK6vectorI7svectorIjjELb1EjE4sizeEv.exit.i.i
  %i.br = phi ptr [ %.pre.i, %_ZN6vectorI7svectorIjjELb1EjE16destroy_elementsEv.exit.loopexit.i ], [ %i.ak, %_ZNK6vectorI7svectorIjjELb1EjE4sizeEv.exit.i.i ]
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 -8
  tail call void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.bs)
  br label %_ZN6vectorI7svectorIjjELb1EjE7destroyEv.exit

_ZN6vectorI7svectorIjjELb1EjE7destroyEv.exit:     ; preds = %_ZSt20uninitialized_move_nIP7svectorIjjEjS2_ESt4pairIT_T1_ES4_T0_S5_.exit, %_ZN6vectorI7svectorIjjELb1EjE16destroy_elementsEv.exit.i
  %i.bt = phi ptr [ %i.bi, %_ZSt20uninitialized_move_nIP7svectorIjjEjS2_ESt4pairIT_T1_ES4_T0_S5_.exit ], [ %i.ap, %_ZN6vectorI7svectorIjjELb1EjE16destroy_elementsEv.exit.i ]
  store ptr %i.bt, ptr %0, align 8, !tbaa !687
  store i32 %i.j, ptr %i.aj, align 4, !tbaa !38
  br label %bb.n

bb.n:                                             ; preds = %_ZN6vectorI7svectorIjjELb1EjE7destroyEv.exit, %bb.b
  ret void

bb.o:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6vectorIiLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %2 = alloca %"class.std::allocator.303", align 1 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !689    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 16) ; 3 uses
  store i32 2, ptr %i.c, align 4, !tbaa !38
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 0, ptr %i.d, align 4, !tbaa !38
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.e, ptr %0, align 8, !tbaa !689
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.a, i64 -8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !38   ; 3 uses
  %i.h = mul i32 %i.g, 3
  %i.i = add i32 %i.h, 1
  %i.j = lshr i32 %i.i, 1                         ; 3 uses
  %i.k = shl i32 %i.j, 2
  %i.l = add i32 %i.k, 8                          ; 2 uses
  %.not = icmp ugt i32 %i.j, %i.g
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = shl i32 %i.g, 2
  %i.n = add i32 %i.m, 8
  %.not27 = icmp ugt i32 %i.l, %i.n
  br i1 %.not27, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.o = tail call ptr @__cxa_allocate_exception(i64 40) #26 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.49, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.o, align 8, !tbaa !639
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 3 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !640
  %i.r = load ptr, ptr %1, align 8, !tbaa !55     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !56   ; 3 uses
  %i.w = icmp ult i64 %i.v, 16
  call void @llvm.assume(i1 %i.w)
  %i.x = add nuw nsw i64 %i.v, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.x, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  store ptr %i.r, ptr %i.p, align 8, !tbaa !55
  %i.y = load i64, ptr %i.s, align 8, !tbaa !57
  store i64 %i.y, ptr %i.q, align 8, !tbaa !57
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !56
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.z = phi i64 [ %i.v, %bb.g ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %i.z, ptr %i.ab, align 8, !tbaa !56
  store ptr %i.s, ptr %1, align 8, !tbaa !55
  store i64 0, ptr %i.aa, align 8, !tbaa !56
  store i8 0, ptr %i.s, align 8, !tbaa !57
  invoke void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #29
          to label %bb.m unwind label %bb.h

bb.h:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = load ptr, ptr %1, align 8, !tbaa !55    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.s
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %bb.h
  %i.af = load i64, ptr %i.s, align 8, !tbaa !57
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  call void @__cxa_free_exception(ptr %i.o) #26
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %bb.i
  %.pn32 = phi { ptr, i32 } [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ah, %bb.i ]
  resume { ptr, i32 } %.pn32

bb.k:                                             ; preds = %bb.d
  %i.ai = zext i32 %i.l to i64
  %i.aj = tail call noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.f, i64 noundef %i.ai) ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.ak, ptr %0, align 8, !tbaa !689
  store i32 %i.j, ptr %i.aj, align 4, !tbaa !38
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.b
  ret void

bb.m:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  unreachable
}

declare void @_ZNK11mpz_managerILb0EE7displayERSoRK3mpz(ptr noundef nonnull align 8 dereferenceable(600), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #25

end_hunk_0
begin_hunk_1_@llvm.fshl.i32
!917 = distinct !{!917, !41}
!918 = distinct !{!918, !41}
!919 = distinct !{!919, !41}
!920 = distinct !{!920, !41}
!921 = distinct !{!921, !41}
!922 = distinct !{null}
!923 = !{!128, !128, i64 0}
!924 = !{!545, !545, i64 0}
!925 = distinct !{!925, !41}
!926 = distinct !{!926, !680}
!927 = distinct !{!927, !41}
!928 = distinct !{!928, !41}
!929 = distinct !{!929, !41}
!930 = distinct !{!930, !41}
!931 = distinct !{!931, !41}
!932 = distinct !{!932, !41}
!933 = distinct !{!933, !41}
!934 = distinct !{!934, !41}
!935 = distinct !{!935, !41}
!936 = distinct !{!936, !41}
!937 = !{!96, !95, i64 0}
!938 = !{!104, !104, i64 0}
!939 = !{!721, !721, i64 0}
!940 = !{!744, !743, i64 0}
!941 = !{!745, !745, i64 0}
!942 = distinct !{!942, !41}
!943 = !{!581, !31, i64 9616}
!944 = !{!485, !484, i64 0}
!945 = !{!501, !501, i64 0}
!946 = distinct !{!946, !41}
!947 = distinct !{!947, !41}
!948 = distinct !{!948, !41}
!949 = !{!"_ZTSN3smt32theory_propagation_justificationE", !736, i64 0, !39, i64 40}
!950 = !{!"_ZTSN3smt9theory_pb16pb_justificationE", !949, i64 0, !703, i64 48}
!951 = !{!950, !703, i64 48}
!952 = distinct !{!952, !41}
!953 = distinct !{!953, !41}
!954 = distinct !{!954, !41}
!955 = distinct !{!955, !41}
!956 = distinct !{!956, !41}
!957 = distinct !{!957, !41}
!958 = distinct !{!958, !41}
!959 = distinct !{!959, !41}
!960 = distinct !{!960, !41}
!961 = distinct !{!961, !41}
!962 = distinct !{!962, !680}
!963 = !{!722, !128, i64 8}
!964 = !{!722, !545, i64 24}
!965 = !{!722, !128, i64 16}
!966 = distinct !{!966, !41}
!967 = distinct !{!967, !41}
!968 = distinct !{!968, !41}
!969 = distinct !{!969, !41}
!970 = distinct !{!970, !41}
!971 = distinct !{!971, !41}
!972 = !{!"p1 _ZTS11id_var_listILin1ELin1EE", !34, i64 0}
!973 = !{!"_ZTS11id_var_listILin1ELin1EE", !31, i64 0, !31, i64 1, !972, i64 8}
!974 = !{!"_ZTSN3smt16eq_justificationE", !34, i64 0}
!975 = !{!"_ZTSN3smt19trans_justificationE", !450, i64 0, !974, i64 8}
!976 = !{!"long long", !30, i64 0}
!977 = !{!"_ZTS14approx_set_tplIj3u2uyE", !976, i64 0}
!978 = !{!"_ZTS10approx_set", !977, i64 0}
!979 = !{!"_ZTSN3smt5enodeE", !63, i64 0, !450, i64 8, !450, i64 16, !450, i64 24, !31, i64 32, !31, i64 36, !31, i64 40, !31, i64 44, !31, i64 44, !31, i64 44, !31, i64 44, !31, i64 44, !31, i64 44, !31, i64 44, !31, i64 44, !31, i64 45, !31, i64 45, !31, i64 48, !106, i64 52, !30, i64 53, !439, i64 56, !973, i64 64, !975, i64 80, !978, i64 96, !978, i64 104, !30, i64 112}
!980 = !{!979, !63, i64 0}
!981 = !{!979, !450, i64 8}
!982 = distinct !{!982, !41}
!983 = distinct !{!983, !41}
!984 = distinct !{!984, !41}
!985 = distinct !{!985, !41}
!986 = distinct !{!986, !41}
!987 = distinct !{!987, !41}
!988 = distinct !{!988, !41}
!989 = !{!787, !545, i64 176}
!990 = distinct !{!990, !41, !642, !643}
!991 = distinct !{!991, !680}
!992 = distinct !{!992, !41, !642}
!993 = distinct !{!993, !41}
!994 = distinct !{!994, !41, !642, !643}
!995 = distinct !{!995, !680}
!996 = distinct !{!996, !41, !642}
!997 = !{!319, !31, i64 8}
!998 = !{!319, !31, i64 12}
!999 = !{!787, !104, i64 24}
!1000 = !{!"_ZTSN3smt9theory_pb11negate_ineqE", !572, i64 0, !703, i64 8}
!1001 = !{!1000, !703, i64 8}
!1002 = distinct !{!1002, !41}
!1003 = !{!"_ZTSN3smt9theory_pb10unwatch_geE", !572, i64 0, !721, i64 8, !703, i64 16}
!1004 = !{!1003, !703, i64 16}
!1005 = !{!1003, !721, i64 8}
!1006 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!1007 = distinct !{!1007, !41}
!1008 = distinct !{!1008, !41}
!1009 = distinct !{!1009, !41}
!1010 = distinct !{!1010, !41}
!1011 = distinct !{!1011, !41}
!1012 = distinct !{!1012, !41}
!1013 = distinct !{!1013, !41}
!1014 = distinct !{!1014, !41}
!1015 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!1016 = distinct !{!1016, !41}
!1017 = distinct !{!1017, !41, !1018}
!1018 = !{!"llvm.loop.peeled.count", i32 1}
!1019 = !{ptr @_ZN3smt9theory_pb19pb_model_value_procD2Ev}
!1020 = distinct !{!1020, !41}
!1021 = !{!"_ZTS6bufferIN3smt22model_value_dependencyELb1ELj16EE", !757, i64 0, !31, i64 8, !31, i64 12, !30, i64 16}
!1022 = !{!1021, !31, i64 8}
!1023 = !{!1021, !31, i64 12}
!1024 = !{!1021, !757, i64 0}
!1025 = !{i64 0, i64 1, !764, i64 8, i64 8, !57}
!1026 = distinct !{!1026, i1 false, !"_ZNK7pb_util9get_coeffEP4exprj"}
!1027 = distinct !{!1027, !1026, !"_ZNK7pb_util9get_coeffEP4exprj: argument 0"}
!1028 = distinct !{!1028, !41}
!1029 = distinct !{!1029, i1 false, !"_ZNK7pb_util5get_kEP4expr"}
!1030 = distinct !{!1030, !1029, !"_ZNK7pb_util5get_kEP4expr: argument 0"}
!1031 = !{!"p2 _ZTSN3smt17extra_fresh_valueE", !74, i64 0}
!1032 = !{!"_ZTS6vectorIPN3smt17extra_fresh_valueELb0EjE", !1031, i64 0}
!1033 = !{!"_ZTS10ptr_vectorIN3smt17extra_fresh_valueEE", !1032, i64 0}
!1034 = !{!"p1 _ZTSN7obj_mapIN3smt5enodeEP3appE13obj_map_entryE", !34, i64 0}
!1035 = !{!"_ZTS14core_hashtableIN7obj_mapIN3smt5enodeEP3appE13obj_map_entryE8obj_hashINS5_8key_dataEE10default_eqIS8_EE", !1034, i64 0, !31, i64 8, !31, i64 12, !31, i64 16}
!1036 = !{!"_ZTS7obj_mapIN3smt5enodeEP3appE", !1035, i64 0}
!1037 = !{!"_ZTSN3smt15model_generatorE", !64, i64 0, !104, i64 8, !1033, i64 16, !31, i64 24, !1036, i64 32, !424, i64 56, !533, i64 72, !225, i64 80}
!1038 = !{!1037, !64, i64 0}
!1039 = !{!1027}
!1040 = !{!1030}
!1041 = !{!699, !31, i64 4}
!1042 = !{!"_ZTS11value_trailIjE", !572, i64 0, !128, i64 8, !31, i64 16}
!1043 = !{!1042, !31, i64 16}
!1044 = !{!1042, !128, i64 8}
!1045 = distinct !{!1045, i1 false, !"_ZN11mpq_managerILb1EE4mk_qEi"}
!1046 = distinct !{!1046, !1045, !"_ZN11mpq_managerILb1EE4mk_qEi: argument 0"}
!1047 = !{!1046}
!1048 = distinct !{!1048, !41}
!1049 = distinct !{!1049, !41}
!1050 = distinct !{!1050, !41}
!1051 = distinct !{!1051, !41}
!1052 = distinct !{!1052, !41}
!1053 = distinct !{!1053, !41}
!1054 = distinct !{!1054, !41}
!1055 = distinct !{!1055, !41}
!1056 = distinct !{!1056, !41}
!1057 = distinct !{!1057, !41}
!1058 = distinct !{!1058, !41}
!1059 = distinct !{!1059, !41}
!1060 = distinct !{!1060, !41}
!1061 = distinct !{!1061, !41}
!1062 = distinct !{!1062, !41}
!1063 = distinct !{!1063, !41}
!1064 = !{!"p1 _ZTS15_scoped_numeralI11mpz_managerILb0EEE", !34, i64 0}
!1065 = !{!"p1 _ZTS22_scoped_numeral_vectorI11mpz_managerILb0EEE", !34, i64 0}
!1066 = !{!"_ZTS18scoped_value_trailI15_scoped_numeralI11mpz_managerILb0EEE22_scoped_numeral_vectorIS2_EE", !572, i64 0, !1064, i64 8, !1065, i64 16}
!1067 = !{!1066, !1065, i64 16}
!1068 = !{!1066, !1064, i64 8}
!1069 = distinct !{!1069, !41}
!1070 = distinct !{!1070, !41}
!1071 = distinct !{!1071, !41}
!1072 = distinct !{!1072, !41}
!1073 = distinct !{!1073, !41}
!1074 = distinct !{!1074, !41}
!1075 = distinct !{!1075, !41}
!1076 = distinct !{!1076, !41}
!1077 = distinct !{!1077, !41}
!1078 = distinct !{!1078, !41}
!1079 = distinct !{!1079, !41}
!1080 = distinct !{!1080, !41}
!1081 = distinct !{!1081, !41}
!1082 = distinct !{!1082, !41}
!1083 = distinct !{!1083, !41}
!1084 = distinct !{!1084, !41}
!1085 = distinct !{!1085, !41, !642, !643}
!1086 = distinct !{!1086, !41, !643, !642}
!1087 = distinct !{!1087, !41}
!1088 = distinct !{!1088, !41, !642, !643}
!1089 = distinct !{!1089, !41, !642}
!1090 = distinct !{!1090, !41}
!1091 = distinct !{!1091, !41}
!1092 = distinct !{!1092, !41}
!1093 = distinct !{!1093, !41}
!1094 = distinct !{!1094, !41}
!1095 = distinct !{!1095, !41}
!1096 = distinct !{!1096, !41}
!1097 = !{ptr @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE11vc_card_recEjj}
!1098 = distinct !{!1098, !41}
!1099 = distinct !{!1099, !41}
!1100 = distinct !{!1100, !41}
!1101 = distinct !{!1101, !41}
!1102 = distinct !{!1102, !41}
!1103 = distinct !{!1103, !41}
!1104 = distinct !{!1104, !41}
!1105 = distinct !{!1105, !41}
!1106 = distinct !{!1106, !41}
!1107 = distinct !{!1107, !41}
!1108 = distinct !{!1108, !41}
!1109 = !{ptr @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE11use_dsmergeEjjj}
!1110 = distinct !{null}
!1111 = !{ptr @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE13vc_smerge_recEjjj, ptr @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE11use_dsmergeEjjj}
!1112 = distinct !{null}
!1113 = !{ptr @_ZN8psort_nwIN3smt9theory_pb10psort_exprEE7vc_cardEjj}
!1114 = distinct !{!1114, !41}
!1115 = distinct !{!1115, !41}
!1116 = distinct !{!1116, !41}
!1117 = distinct !{!1117, i1 false, !"LVerDomain"}
!1118 = distinct !{!1118, !1117}
!1119 = distinct !{!1119, !1117}
!1120 = distinct !{!1120, !41, !642, !643}
!1121 = distinct !{!1121, !41, !642}
!1122 = !{!1118}
!1123 = !{!1119}
end_hunk_1
