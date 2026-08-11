inline.NumInlined: 6547
inline.NumDeleted: 2287
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 41
begin_hunk_0_@_ZN6vectorI10ptr_vectorIN6lp_api5boundIN3sat7literalEEEELb1EjE13expand_vectorEv:bb.a
  br label %bb.n

bb.n:                                             ; preds = %_ZN6vectorI10ptr_vectorIN6lp_api5boundIN3sat7literalEEEELb1EjE7destroyEv.exit, %bb.b
  ret void

bb.o:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %2 = alloca %"class.std::allocator.350", align 1 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !663    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 16) ; 3 uses
  store i32 2, ptr %i.c, align 4, !tbaa !654
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 0, ptr %i.d, align 4, !tbaa !654
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.e, ptr %0, align 8, !tbaa !663
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.a, i64 -8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !654  ; 3 uses
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
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.12, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.o, align 8, !tbaa !520
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 3 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !847
  %i.r = load ptr, ptr %1, align 8, !tbaa !848    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !849  ; 3 uses
  %i.w = icmp ult i64 %i.v, 16
  call void @llvm.assume(i1 %i.w)
  %i.x = add nuw nsw i64 %i.v, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.x, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  store ptr %i.r, ptr %i.p, align 8, !tbaa !848
  %i.y = load i64, ptr %i.s, align 8, !tbaa !850
  store i64 %i.y, ptr %i.q, align 8, !tbaa !850
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !849
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.z = phi i64 [ %i.v, %bb.g ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %i.z, ptr %i.ab, align 8, !tbaa !849
  store ptr %i.s, ptr %1, align 8, !tbaa !848
  store i64 0, ptr %i.aa, align 8, !tbaa !849
  store i8 0, ptr %i.s, align 8, !tbaa !850
  invoke void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #30
          to label %bb.m unwind label %bb.h

bb.h:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = load ptr, ptr %1, align 8, !tbaa !848   ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.s
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %bb.h
  %i.af = load i64, ptr %i.s, align 8, !tbaa !850
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
  store ptr %i.ak, ptr %0, align 8, !tbaa !663
  store i32 %i.j, ptr %i.aj, align 4, !tbaa !654
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.b
  ret void

bb.m:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  unreachable
}

declare noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef, i64 noundef) local_unnamed_addr #1

declare noundef i32 @_ZN2lp10lar_solver28add_var_bound_check_on_equalEjNS_16lconstraint_kindERK8rationalRj(ptr noundef nonnull align 8 dereferenceable(152), i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3smt10theory_lra3imp18add_def_constraintEj(ptr noundef nonnull align 8 dereferenceable(952) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1056 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNK6vectorIN3smt10theory_lra3imp17constraint_sourceELb0EjE4sizeEv.exit.i.i, label %_ZNK6vectorIN3smt10theory_lra3imp17constraint_sourceELb0EjE4sizeEv.exit.i

_ZNK6vectorIN3smt10theory_lra3imp17constraint_sourceELb0EjE4sizeEv.exit.i: ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -4 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !654  ; 3 uses
  %.not.i = icmp ult i32 %1, %i.e
  br i1 %.not.i, label %_ZN6vectorIN3smt10theory_lra3imp17constraint_sourceELb0EjE4setxEjRKS3_S6_.exit, label %_ZNK6vectorIN3smt10theory_lra3imp17constraint_sourceELb0EjE4sizeEv.exit.thread.i.i

_ZNK6vectorIN3smt10theory_lra3imp17constraint_sourceELb0EjE4sizeEv.exit.i.i: ; preds = %bb.a
  %i.f = add i32 %1, 1                            ; 2 uses
  %.not.not.i.i = icmp ne i32 %i.f, 0
  tail call void @llvm.assume(i1 %.not.not.i.i)
  br label %thread-pre-split.i.i.preheader

_ZNK6vectorIN3smt10theory_lra3imp17constraint_sourceELb0EjE4sizeEv.exit.thread.i.i: ; preds = %_ZNK6vectorIN3smt10theory_lra3imp17constraint_sourceELb0EjE4sizeEv.exit.i
  %i.g = add i32 %1, 1                            ; 3 uses
  %.not16.i.i = icmp ugt i32 %i.g, %i.e
  br i1 %.not16.i.i, label %thread-pre-split.i.i.preheader, label %bb.b

thread-pre-split.i.i.preheader:                   ; preds = %_ZNK6vectorIN3smt10theory_lra3imp17constraint_sourceELb0EjE4sizeEv.exit.i.i, %_ZNK6vectorIN3smt10theory_lra3imp17constraint_sourceELb0EjE4sizeEv.exit.thread.i.i
  %.ph29 = phi ptr [ %i.b, %_ZNK6vectorIN3smt10theory_lra3imp17constraint_sourceELb0EjE4sizeEv.exit.thread.i.i ], [ null, %_ZNK6vectorIN3smt10theory_lra3imp17constraint_sourceELb0EjE4sizeEv.exit.i.i ]
  %.ph30 = phi i32 [ %i.g, %_ZNK6vectorIN3smt10theory_lra3imp17constraint_sourceELb0EjE4sizeEv.exit.thread.i.i ], [ %i.f, %_ZNK6vectorIN3smt10theory_lra3imp17constraint_sourceELb0EjE4sizeEv.exit.i.i ] ; 4 uses
  %.0.i17.i.i.ph = phi i32 [ %i.e, %_ZNK6vectorIN3smt10theory_lra3imp17constraint_sourceELb0EjE4sizeEv.exit.thread.i.i ], [ 0, %_ZNK6vectorIN3smt10theory_lra3imp17constraint_sourceELb0EjE4sizeEv.exit.i.i ] ; 2 uses
  br label %thread-pre-split.i.i

bb.b:                                             ; preds = %_ZNK6vectorIN3smt10theory_lra3imp17constraint_sourceELb0EjE4sizeEv.exit.thread.i.i
  store i32 %i.g, ptr %i.d, align 4, !tbaa !654
  br label %_ZN6vectorIN3smt10theory_lra3imp17constraint_sourceELb0EjE4setxEjRKS3_S6_.exit

thread-pre-split.i.i:                             ; preds = %thread-pre-split.i.i.preheader, %_ZNK6vectorIN3smt10theory_lra3imp17constraint_sourceELb0EjE8capacityEv.exit.thread.i.i
  %i.h = phi ptr [ %.pr.pre.i.i, %_ZNK6vectorIN3smt10theory_lra3imp17constraint_sourceELb0EjE8capacityEv.exit.thread.i.i ], [ %.ph29, %thread-pre-split.i.i.preheader ] ; 8 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZNK6vectorIN3smt10theory_lra3imp17constraint_sourceELb0EjE8capacityEv.exit.thread.i.i, label %_ZNK6vectorIN3smt10theory_lra3imp17constraint_sourceELb0EjE8capacityEv.exit.i.i

_ZNK6vectorIN3smt10theory_lra3imp17constraint_sourceELb0EjE8capacityEv.exit.i.i: ; preds = %thread-pre-split.i.i
  %i.j = getelementptr inbounds i8, ptr %i.h, i64 -8
  %i.k = load i32, ptr %i.j, align 4, !tbaa !654
  %i.l = icmp ugt i32 %.ph30, %i.k
  br i1 %i.l, label %_ZNK6vectorIN3smt10theory_lra3imp17constraint_sourceELb0EjE8capacityEv.exit.thread.i.i, label %bb.c

_ZNK6vectorIN3smt10theory_lra3imp17constraint_sourceELb0EjE8capacityEv.exit.thread.i.i: ; preds = %_ZNK6vectorIN3smt10theory_lra3imp17constraint_sourceELb0EjE8capacityEv.exit.i.i, %thread-pre-split.i.i
  tail call void @_ZN6vectorIN3smt10theory_lra3imp17constraint_sourceELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pr.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !1056
  br label %thread-pre-split.i.i, !llvm.loop !1099

bb.c:                                             ; preds = %_ZNK6vectorIN3smt10theory_lra3imp17constraint_sourceELb0EjE8capacityEv.exit.i.i
  %i.m = getelementptr inbounds i8, ptr %i.h, i64 -4
  store i32 %.ph30, ptr %i.m, align 4, !tbaa !654
  %i.n = zext i32 %.ph30 to i64                   ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.n
  %.not1319.i.i = icmp eq i32 %.0.i17.i.i.ph, %.ph30
  br i1 %.not1319.i.i, label %_ZN6vectorIN3smt10theory_lra3imp17constraint_sourceELb0EjE4setxEjRKS3_S6_.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.c
  %i.p = zext i32 %.0.i17.i.i.ph to i64           ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.p ; 3 uses
  %2 = sub nsw i64 %i.n, %i.p
  %i.r = add nsw i64 %2, 4611686018427387903
  %3 = and i64 %i.r, 4611686018427387903          ; 2 uses
  %i.s = add nuw nsw i64 %3, 1                    ; 2 uses
  %min.iters.check = icmp samesign ult i64 %3, 7
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i
  %n.vec = and i64 %i.s, 9223372036854775800      ; 3 uses
  %i.t = shl i64 %n.vec, 2
  %i.u = getelementptr i8, ptr %i.q, i64 %i.t
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.v = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.q, i64 %i.v ; 2 uses
  %i.w = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> splat (i32 3), ptr %next.gep, align 4, !tbaa !1100
  store <4 x i32> splat (i32 3), ptr %i.w, align 4, !tbaa !1100
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !1102

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %_ZN6vectorIN3smt10theory_lra3imp17constraint_sourceELb0EjE4setxEjRKS3_S6_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i, %middle.block
  %.020.i.i.ph = phi ptr [ %i.q, %.lr.ph.preheader.i.i ], [ %i.u, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.020.i.i = phi ptr [ %i.y, %.lr.ph.i.i ], [ %.020.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  store i32 3, ptr %.020.i.i, align 4, !tbaa !1100
  %i.y = getelementptr inbounds nuw i8, ptr %.020.i.i, i64 4 ; 2 uses
  %.not13.i.i = icmp eq ptr %i.y, %i.o
  br i1 %.not13.i.i, label %_ZN6vectorIN3smt10theory_lra3imp17constraint_sourceELb0EjE4setxEjRKS3_S6_.exit, label %.lr.ph.i.i, !llvm.loop !1103

_ZN6vectorIN3smt10theory_lra3imp17constraint_sourceELb0EjE4setxEjRKS3_S6_.exit: ; preds = %.lr.ph.i.i, %middle.block, %_ZNK6vectorIN3smt10theory_lra3imp17constraint_sourceELb0EjE4sizeEv.exit.i, %bb.b, %bb.c
  %i.z = phi ptr [ %i.b, %_ZNK6vectorIN3smt10theory_lra3imp17constraint_sourceELb0EjE4sizeEv.exit.i ], [ %i.h, %bb.c ], [ %i.b, %bb.b ], [ %i.h, %middle.block ], [ %i.h, %.lr.ph.i.i ]
  %i.aa = zext i32 %1 to i64                      ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.aa
  store i32 2, ptr %i.ab, align 4, !tbaa !1100
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1055 ; 5 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %_ZNK6vectorIiLb0EjE4sizeEv.exit.i.i, label %_ZNK6vectorIiLb0EjE4sizeEv.exit.i

_ZNK6vectorIiLb0EjE4sizeEv.exit.i:                ; preds = %_ZN6vectorIN3smt10theory_lra3imp17constraint_sourceELb0EjE4setxEjRKS3_S6_.exit
  %i.af = getelementptr inbounds i8, ptr %i.ad, i64 -4 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !654 ; 3 uses
  %.not.i2 = icmp ult i32 %1, %i.ag
  br i1 %.not.i2, label %_ZN6vectorIiLb0EjE4setxEjRKiS2_.exit, label %_ZNK6vectorIiLb0EjE4sizeEv.exit.thread.i.i

_ZNK6vectorIiLb0EjE4sizeEv.exit.i.i:              ; preds = %_ZN6vectorIN3smt10theory_lra3imp17constraint_sourceELb0EjE4setxEjRKS3_S6_.exit
  %i.ah = add i32 %1, 1                           ; 2 uses
  %.not.not.i.i14 = icmp ne i32 %i.ah, 0
  tail call void @llvm.assume(i1 %.not.not.i.i14)
  br label %thread-pre-split.i.i4.preheader

_ZNK6vectorIiLb0EjE4sizeEv.exit.thread.i.i:       ; preds = %_ZNK6vectorIiLb0EjE4sizeEv.exit.i
  %i.ai = add i32 %1, 1                           ; 3 uses
  %.not16.i.i3 = icmp ugt i32 %i.ai, %i.ag
  br i1 %.not16.i.i3, label %thread-pre-split.i.i4.preheader, label %bb.d

thread-pre-split.i.i4.preheader:                  ; preds = %_ZNK6vectorIiLb0EjE4sizeEv.exit.i.i, %_ZNK6vectorIiLb0EjE4sizeEv.exit.thread.i.i
  %.ph = phi ptr [ %i.ad, %_ZNK6vectorIiLb0EjE4sizeEv.exit.thread.i.i ], [ null, %_ZNK6vectorIiLb0EjE4sizeEv.exit.i.i ]
  %.ph28 = phi i32 [ %i.ai, %_ZNK6vectorIiLb0EjE4sizeEv.exit.thread.i.i ], [ %i.ah, %_ZNK6vectorIiLb0EjE4sizeEv.exit.i.i ] ; 4 uses
  %.0.i17.i.i7.ph = phi i32 [ %i.ag, %_ZNK6vectorIiLb0EjE4sizeEv.exit.thread.i.i ], [ 0, %_ZNK6vectorIiLb0EjE4sizeEv.exit.i.i ] ; 2 uses
  br label %thread-pre-split.i.i4

bb.d:                                             ; preds = %_ZNK6vectorIiLb0EjE4sizeEv.exit.thread.i.i
  store i32 %i.ai, ptr %i.af, align 4, !tbaa !654
  br label %_ZN6vectorIiLb0EjE4setxEjRKiS2_.exit

thread-pre-split.i.i4:                            ; preds = %thread-pre-split.i.i4.preheader, %_ZNK6vectorIiLb0EjE8capacityEv.exit.thread.i.i
  %i.aj = phi ptr [ %.pr.pre.i.i13, %_ZNK6vectorIiLb0EjE8capacityEv.exit.thread.i.i ], [ %.ph, %thread-pre-split.i.i4.preheader ] ; 6 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %_ZNK6vectorIiLb0EjE8capacityEv.exit.thread.i.i, label %_ZNK6vectorIiLb0EjE8capacityEv.exit.i.i

_ZNK6vectorIiLb0EjE8capacityEv.exit.i.i:          ; preds = %thread-pre-split.i.i4
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 -8
  %i.am = load i32, ptr %i.al, align 4, !tbaa !654
  %i.an = icmp ugt i32 %.ph28, %i.am
  br i1 %i.an, label %_ZNK6vectorIiLb0EjE8capacityEv.exit.thread.i.i, label %bb.e

_ZNK6vectorIiLb0EjE8capacityEv.exit.thread.i.i:   ; preds = %_ZNK6vectorIiLb0EjE8capacityEv.exit.i.i, %thread-pre-split.i.i4
  tail call void @_ZN6vectorIiLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ac)
  %.pr.pre.i.i13 = load ptr, ptr %i.ac, align 8, !tbaa !1055
  br label %thread-pre-split.i.i4, !llvm.loop !1104

bb.e:                                             ; preds = %_ZNK6vectorIiLb0EjE8capacityEv.exit.i.i
  %i.ao = getelementptr inbounds i8, ptr %i.aj, i64 -4
  store i32 %.ph28, ptr %i.ao, align 4, !tbaa !654
  %.not1319.i.i8 = icmp eq i32 %.0.i17.i.i7.ph, %.ph28
  br i1 %.not1319.i.i8, label %_ZN6vectorIiLb0EjE4setxEjRKiS2_.exit, label %.lr.ph.preheader.i.i9

.lr.ph.preheader.i.i9:                            ; preds = %bb.e
  %i.ap = zext i32 %.ph28 to i64
  %i.aq = zext i32 %.0.i17.i.i7.ph to i64         ; 2 uses
  %i.ar = getelementptr [4 x i8], ptr %i.aj, i64 %i.aq
  %i.as = sub nsw i64 %i.ap, %i.aq
  %i.at = shl nsw i64 %i.as, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ar, i8 -1, i64 %i.at, i1 false), !tbaa !654
  br label %_ZN6vectorIiLb0EjE4setxEjRKiS2_.exit

_ZN6vectorIiLb0EjE4setxEjRKiS2_.exit:             ; preds = %.lr.ph.preheader.i.i9, %_ZNK6vectorIiLb0EjE4sizeEv.exit.i, %bb.d, %bb.e
  %i.au = phi ptr [ %i.ad, %_ZNK6vectorIiLb0EjE4sizeEv.exit.i ], [ %i.aj, %bb.e ], [ %i.ad, %bb.d ], [ %i.aj, %.lr.ph.preheader.i.i9 ]
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.aa
  store i32 -1, ptr %i.av, align 4, !tbaa !654
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3smt10theory_lra3imp29report_equality_of_fixed_varsEjj(ptr noundef nonnull align 8 dereferenceable(952) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.rational, align 8            ; 15 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.f = load i8, ptr %i.e, align 4
  %i.g = and i8 %i.f, -4
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.h, align 8, !tbaa !658
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store i32 1, ptr %i.i, align 8, !tbaa !659
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 4 uses
  %i.k = load i8, ptr %i.j, align 4
  %i.l = and i8 %i.k, -4
  store i8 %i.l, ptr %i.j, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr null, ptr %i.m, align 8, !tbaa !658
  %i.n = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !660
  store i32 0, ptr %3, align 8, !tbaa !659
  store i8 %i.g, ptr %i.e, align 4
  call void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %i.i)
  store i32 1, ptr %i.i, align 8, !tbaa !659
  %i.o = load i8, ptr %i.j, align 4
  %i.p = and i8 %i.o, -2
  store i8 %i.p, ptr %i.j, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store ptr null, ptr %i.a, align 8, !tbaa !828
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store ptr null, ptr %i.b, align 8, !tbaa !828
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store ptr null, ptr %i.c, align 8, !tbaa !828
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  store ptr null, ptr %i.d, align 8, !tbaa !828
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !578
  %i.s = invoke noundef i32 @_ZNK2lp10lar_solver17local_to_externalEj(ptr noundef nonnull align 8 dereferenceable(152) %i.r, i32 noundef %1)
          to label %bb.b unwind label %bb.d       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !578
  %i.u = invoke noundef i32 @_ZNK2lp10lar_solver17local_to_externalEj(ptr noundef nonnull align 8 dereferenceable(152) %i.t, i32 noundef %2)
          to label %bb.c unwind label %bb.e       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.v = load ptr, ptr %0, align 8, !tbaa !668, !nonnull !518, !align !519
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !664  ; 2 uses
  %i.y = zext i32 %i.s to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.y
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !735 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !807
  %i.ad = zext i32 %i.u to i64                    ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !735
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !807
  %i.ai = icmp eq ptr %i.ac, %i.ah
  br i1 %i.ai, label %bb.r, label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.e:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %_ZNK3smt10theory_lra3imp6is_intEi.exit, %bb.f, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.b
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.f:                                             ; preds = %bb.c
  %i.al = load ptr, ptr %i.aa, align 8, !tbaa !736
  %i.am = invoke noundef ptr @_ZNK4expr8get_sortEv(ptr noundef nonnull align 4 dereferenceable(16) %i.al)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !723 ; 3 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %_ZNK3smt10theory_lra3imp6is_intEi.exit, label %_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i.i.i

_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i.i.i: ; preds = %.noexc
  %i.aq = load i32, ptr %i.ao, align 8, !tbaa !726
  %i.ar = icmp eq i32 %i.aq, 5
  br i1 %i.ar, label %bb.g, label %_ZNK3smt10theory_lra3imp6is_intEi.exit

end_hunk_0
begin_hunk_1_@_ZN3smt10theory_lra3imp12mk_var_boundEjiN6lp_api10bound_kindERK8rationalS6_:bb.a

.noexc.i.i57:                                     ; preds = %bb.v
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.dr, ptr noundef nonnull align 8 dereferenceable(16) %i.dj)
          to label %_ZplRK8rationali.exit unwind label %bb.w

bb.w:                                             ; preds = %.noexc.i.i57, %bb.v
  %i.ds = landingpad { ptr, i32 }
          catch ptr null
  %i.dt = extractvalue { ptr, i32 } %i.ds, 0
  call void @__clang_call_terminate(ptr %i.dt) #27
  unreachable

bb.x:                                             ; preds = %.noexc58
  %i.du = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26, !noalias !1284
  br label %.body

_ZplRK8rationali.exit:                            ; preds = %.noexc.i.i57
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26, !noalias !1284
  br label %bb.y

bb.y:                                             ; preds = %_ZplRK8rationali.exit, %_ZmiRK8rationali.exit
  %i.dv = load ptr, ptr %i.bp, align 8, !tbaa !578
  %i.dw = invoke noundef i32 @_ZN2lp10lar_solver12mk_var_boundEjNS_16lconstraint_kindERK8rational(ptr noundef nonnull align 8 dereferenceable(152) %i.dv, i32 noundef %.0.i, i32 noundef %.0.i52, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.z unwind label %bb.ah

bb.z:                                             ; preds = %bb.y
  %i.dx = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !660 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.dx, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %.noexc.i unwind label %bb.aa

.noexc.i:                                         ; preds = %bb.z
  %i.dy = getelementptr inbounds nuw i8, ptr %9, i64 16
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.dx, ptr noundef nonnull align 8 dereferenceable(16) %i.dy)
          to label %_ZN8rationalD2Ev.exit unwind label %bb.aa

bb.aa:                                            ; preds = %.noexc.i, %bb.z
  %i.dz = landingpad { ptr, i32 }
          catch ptr null
  %i.ea = extractvalue { ptr, i32 } %i.dz, 0
  call void @__clang_call_terminate(ptr %i.ea) #27
  unreachable

_ZN8rationalD2Ev.exit:                            ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.aj

bb.ab:                                            ; preds = %bb.g, %bb.i, %bb.h
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.ac:                                            ; preds = %bb.j
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.ad:                                            ; preds = %_ZNK3smt10theory_lra3imp6is_intEi.exit.i, %bb.l, %_ZNK3smt10theory_lra3imp6is_intEi.exit
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.ae:                                            ; preds = %.noexc50, %bb.n
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.af:                                            ; preds = %.noexc53, %_ZN3smt10theory_lra3imp21bound2constraint_kindEbN6lp_api10bound_kindEb.exit, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %_ZN3smt10theory_lra3imp21bound2constraint_kindEbN6lp_api10bound_kindEb.exit55
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.ag:                                            ; preds = %bb.u, %bb.q
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ah:                                            ; preds = %bb.y
  %i.eh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %9) #26
  br label %.body

.body:                                            ; preds = %bb.t, %bb.x, %bb.ag, %bb.ah
  %.pn = phi { ptr, i32 } [ %i.eh, %bb.ah ], [ %i.de, %bb.t ], [ %i.eg, %bb.ag ], [ %i.du, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.ao

bb.ai:                                            ; preds = %bb.o
  %i.ei = load ptr, ptr %i.bp, align 8, !tbaa !578
  %i.ej = invoke noundef i32 @_ZN2lp10lar_solver12mk_var_boundEjNS_16lconstraint_kindERK8rational(ptr noundef nonnull align 8 dereferenceable(152) %i.ei, i32 noundef %.0.i, i32 noundef %.0.i52, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.aj unwind label %bb.af

bb.aj:                                            ; preds = %bb.ai, %_ZN8rationalD2Ev.exit
  %.037 = phi i32 [ %i.dw, %_ZN8rationalD2Ev.exit ], [ %i.ej, %bb.ai ] ; 2 uses
  %i.ek = shl i32 %1, 1                           ; 3 uses
  invoke void @_ZN3smt10theory_lra3imp19add_ineq_constraintEjN3sat7literalE(ptr noundef nonnull align 8 dereferenceable(952) %0, i32 noundef %i.cn, i32 %i.ek)
          to label %bb.ak unwind label %bb.af

bb.ak:                                            ; preds = %bb.aj
  %i.el = or disjoint i32 %i.ek, 1
  invoke void @_ZN3smt10theory_lra3imp19add_ineq_constraintEjN3sat7literalE(ptr noundef nonnull align 8 dereferenceable(952) %0, i32 noundef %.037, i32 %i.el)
          to label %bb.al unwind label %bb.af

bb.al:                                            ; preds = %bb.ak
  %i.em = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 104)
          to label %bb.am unwind label %bb.af     ; 2 uses

bb.am:                                            ; preds = %bb.al
  invoke void @_ZN6lp_api5boundIN3sat7literalEEC2ES2_ijbRK8rationalNS_10bound_kindEjjS6_(ptr noundef nonnull align 8 dereferenceable(104) %i.em, i32 %i.ek, i32 noundef %2, i32 noundef %.0.i, i1 noundef zeroext %i.bo, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef %3, i32 noundef %i.cn, i32 noundef %.037, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.an unwind label %bb.af

bb.an:                                            ; preds = %bb.am
  %i.en = load ptr, ptr %8, align 8, !tbaa !1168, !nonnull !518, !align !519
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 112 ; 2 uses
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !814
  %i.eq = add i32 %i.ep, -1
  store i32 %i.eq, ptr %i.eo, align 8, !tbaa !814
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  ret ptr %i.em

bb.ao:                                            ; preds = %bb.ac, %bb.ae, %.body, %bb.af, %bb.ad, %bb.ab
  %.pn39.pn.pn.pn.pn = phi { ptr, i32 } [ %i.eb, %bb.ab ], [ %i.ec, %bb.ac ], [ %i.ed, %bb.ad ], [ %i.ee, %bb.ae ], [ %i.ef, %bb.af ], [ %.pn, %.body ]
  %i.er = load ptr, ptr %8, align 8, !tbaa !1168, !nonnull !518, !align !519
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 112 ; 2 uses
  %i.et = load i32, ptr %i.es, align 8, !tbaa !814
  %i.eu = add i32 %i.et, -1
  store i32 %i.eu, ptr %i.es, align 8, !tbaa !814
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  resume { ptr, i32 } %.pn39.pn.pn.pn.pn
}

declare noundef i32 @_ZN2lp10lar_solver12mk_var_boundEjNS_16lconstraint_kindERK8rationalS4_(ptr noundef nonnull align 8 dereferenceable(152), i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

declare noundef i32 @_ZN2lp10lar_solver12mk_var_boundEjNS_16lconstraint_kindERK8rational(ptr noundef nonnull align 8 dereferenceable(152), i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3smt10theory_lra3imp19add_ineq_constraintEjN3sat7literalE(ptr noundef nonnull align 8 dereferenceable(952) %0, i32 noundef %1, i32 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1056 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNK6vectorIN3smt10theory_lra3imp17constraint_sourceELb0EjE4sizeEv.exit.i.i, label %_ZNK6vectorIN3smt10theory_lra3imp17constraint_sourceELb0EjE4sizeEv.exit.i

_ZNK6vectorIN3smt10theory_lra3imp17constraint_sourceELb0EjE4sizeEv.exit.i: ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -4 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !654  ; 3 uses
  %.not.i = icmp ult i32 %1, %i.e
  br i1 %.not.i, label %_ZN6vectorIN3smt10theory_lra3imp17constraint_sourceELb0EjE4setxEjRKS3_S6_.exit, label %_ZNK6vectorIN3smt10theory_lra3imp17constraint_sourceELb0EjE4sizeEv.exit.thread.i.i

_ZNK6vectorIN3smt10theory_lra3imp17constraint_sourceELb0EjE4sizeEv.exit.i.i: ; preds = %bb.a
  %i.f = add i32 %1, 1                            ; 2 uses
  %.not.not.i.i = icmp ne i32 %i.f, 0
  tail call void @llvm.assume(i1 %.not.not.i.i)
  br label %thread-pre-split.i.i.preheader

_ZNK6vectorIN3smt10theory_lra3imp17constraint_sourceELb0EjE4sizeEv.exit.thread.i.i: ; preds = %_ZNK6vectorIN3smt10theory_lra3imp17constraint_sourceELb0EjE4sizeEv.exit.i
  %i.g = add i32 %1, 1                            ; 3 uses
  %.not16.i.i = icmp ugt i32 %i.g, %i.e
  br i1 %.not16.i.i, label %thread-pre-split.i.i.preheader, label %bb.b

thread-pre-split.i.i.preheader:                   ; preds = %_ZNK6vectorIN3smt10theory_lra3imp17constraint_sourceELb0EjE4sizeEv.exit.i.i, %_ZNK6vectorIN3smt10theory_lra3imp17constraint_sourceELb0EjE4sizeEv.exit.thread.i.i
  %.ph40 = phi ptr [ %i.b, %_ZNK6vectorIN3smt10theory_lra3imp17constraint_sourceELb0EjE4sizeEv.exit.thread.i.i ], [ null, %_ZNK6vectorIN3smt10theory_lra3imp17constraint_sourceELb0EjE4sizeEv.exit.i.i ]
  %.ph41 = phi i32 [ %i.g, %_ZNK6vectorIN3smt10theory_lra3imp17constraint_sourceELb0EjE4sizeEv.exit.thread.i.i ], [ %i.f, %_ZNK6vectorIN3smt10theory_lra3imp17constraint_sourceELb0EjE4sizeEv.exit.i.i ] ; 4 uses
  %.0.i17.i.i.ph = phi i32 [ %i.e, %_ZNK6vectorIN3smt10theory_lra3imp17constraint_sourceELb0EjE4sizeEv.exit.thread.i.i ], [ 0, %_ZNK6vectorIN3smt10theory_lra3imp17constraint_sourceELb0EjE4sizeEv.exit.i.i ] ; 2 uses
  br label %thread-pre-split.i.i

bb.b:                                             ; preds = %_ZNK6vectorIN3smt10theory_lra3imp17constraint_sourceELb0EjE4sizeEv.exit.thread.i.i
  store i32 %i.g, ptr %i.d, align 4, !tbaa !654
  br label %_ZN6vectorIN3smt10theory_lra3imp17constraint_sourceELb0EjE4setxEjRKS3_S6_.exit

thread-pre-split.i.i:                             ; preds = %thread-pre-split.i.i.preheader, %_ZNK6vectorIN3smt10theory_lra3imp17constraint_sourceELb0EjE8capacityEv.exit.thread.i.i
  %i.h = phi ptr [ %.pr.pre.i.i, %_ZNK6vectorIN3smt10theory_lra3imp17constraint_sourceELb0EjE8capacityEv.exit.thread.i.i ], [ %.ph40, %thread-pre-split.i.i.preheader ] ; 8 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZNK6vectorIN3smt10theory_lra3imp17constraint_sourceELb0EjE8capacityEv.exit.thread.i.i, label %_ZNK6vectorIN3smt10theory_lra3imp17constraint_sourceELb0EjE8capacityEv.exit.i.i

_ZNK6vectorIN3smt10theory_lra3imp17constraint_sourceELb0EjE8capacityEv.exit.i.i: ; preds = %thread-pre-split.i.i
  %i.j = getelementptr inbounds i8, ptr %i.h, i64 -8
  %i.k = load i32, ptr %i.j, align 4, !tbaa !654
  %i.l = icmp ugt i32 %.ph41, %i.k
  br i1 %i.l, label %_ZNK6vectorIN3smt10theory_lra3imp17constraint_sourceELb0EjE8capacityEv.exit.thread.i.i, label %bb.c

_ZNK6vectorIN3smt10theory_lra3imp17constraint_sourceELb0EjE8capacityEv.exit.thread.i.i: ; preds = %_ZNK6vectorIN3smt10theory_lra3imp17constraint_sourceELb0EjE8capacityEv.exit.i.i, %thread-pre-split.i.i
  tail call void @_ZN6vectorIN3smt10theory_lra3imp17constraint_sourceELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pr.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !1056
  br label %thread-pre-split.i.i, !llvm.loop !1099

bb.c:                                             ; preds = %_ZNK6vectorIN3smt10theory_lra3imp17constraint_sourceELb0EjE8capacityEv.exit.i.i
  %i.m = getelementptr inbounds i8, ptr %i.h, i64 -4
  store i32 %.ph41, ptr %i.m, align 4, !tbaa !654
  %i.n = zext i32 %.ph41 to i64                   ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.n
  %.not1319.i.i = icmp eq i32 %.0.i17.i.i.ph, %.ph41
  br i1 %.not1319.i.i, label %_ZN6vectorIN3smt10theory_lra3imp17constraint_sourceELb0EjE4setxEjRKS3_S6_.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.c
  %i.p = zext i32 %.0.i17.i.i.ph to i64           ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.p ; 3 uses
  %3 = sub nsw i64 %i.n, %i.p
  %i.r = add nsw i64 %3, 4611686018427387903
  %4 = and i64 %i.r, 4611686018427387903          ; 2 uses
  %i.s = add nuw nsw i64 %4, 1                    ; 2 uses
  %min.iters.check = icmp samesign ult i64 %4, 7
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i
  %n.vec = and i64 %i.s, 9223372036854775800      ; 3 uses
  %i.t = shl i64 %n.vec, 2
  %i.u = getelementptr i8, ptr %i.q, i64 %i.t
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.v = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.q, i64 %i.v ; 2 uses
  %i.w = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> splat (i32 3), ptr %next.gep, align 4, !tbaa !1100
  store <4 x i32> splat (i32 3), ptr %i.w, align 4, !tbaa !1100
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !1287

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %_ZN6vectorIN3smt10theory_lra3imp17constraint_sourceELb0EjE4setxEjRKS3_S6_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i, %middle.block
  %.020.i.i.ph = phi ptr [ %i.q, %.lr.ph.preheader.i.i ], [ %i.u, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.020.i.i = phi ptr [ %i.y, %.lr.ph.i.i ], [ %.020.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  store i32 3, ptr %.020.i.i, align 4, !tbaa !1100
  %i.y = getelementptr inbounds nuw i8, ptr %.020.i.i, i64 4 ; 2 uses
  %.not13.i.i = icmp eq ptr %i.y, %i.o
  br i1 %.not13.i.i, label %_ZN6vectorIN3smt10theory_lra3imp17constraint_sourceELb0EjE4setxEjRKS3_S6_.exit, label %.lr.ph.i.i, !llvm.loop !1288

_ZN6vectorIN3smt10theory_lra3imp17constraint_sourceELb0EjE4setxEjRKS3_S6_.exit: ; preds = %.lr.ph.i.i, %middle.block, %_ZNK6vectorIN3smt10theory_lra3imp17constraint_sourceELb0EjE4sizeEv.exit.i, %bb.b, %bb.c
  %i.z = phi ptr [ %i.b, %_ZNK6vectorIN3smt10theory_lra3imp17constraint_sourceELb0EjE4sizeEv.exit.i ], [ %i.h, %bb.c ], [ %i.b, %bb.b ], [ %i.h, %middle.block ], [ %i.h, %.lr.ph.i.i ]
  %i.aa = zext i32 %1 to i64                      ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.aa
  store i32 0, ptr %i.ab, align 4, !tbaa !1100
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !805 ; 5 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i.i, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i:   ; preds = %_ZN6vectorIN3smt10theory_lra3imp17constraint_sourceELb0EjE4setxEjRKS3_S6_.exit
  %i.af = getelementptr inbounds i8, ptr %i.ad, i64 -4 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !654 ; 3 uses
  %.not.i2 = icmp ult i32 %1, %i.ag
  br i1 %.not.i2, label %_ZN6vectorIN3sat7literalELb0EjE4setxEjRKS1_S4_.exit, label %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.thread.i.i

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i.i: ; preds = %_ZN6vectorIN3smt10theory_lra3imp17constraint_sourceELb0EjE4setxEjRKS3_S6_.exit
  %i.ah = add i32 %1, 1                           ; 2 uses
  %.not.not.i.i14 = icmp ne i32 %i.ah, 0
  tail call void @llvm.assume(i1 %.not.not.i.i14)
  br label %thread-pre-split.i.i4.preheader

_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.thread.i.i: ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i
  %i.ai = add i32 %1, 1                           ; 3 uses
  %.not16.i.i3 = icmp ugt i32 %i.ai, %i.ag
  br i1 %.not16.i.i3, label %thread-pre-split.i.i4.preheader, label %bb.d

thread-pre-split.i.i4.preheader:                  ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i.i, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.thread.i.i
  %.ph = phi ptr [ %i.ad, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.thread.i.i ], [ null, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i.i ]
  %.ph39 = phi i32 [ %i.ai, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.thread.i.i ], [ %i.ah, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i.i ] ; 4 uses
  %.0.i17.i.i7.ph = phi i32 [ %i.ag, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.thread.i.i ], [ 0, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i.i ] ; 2 uses
  br label %thread-pre-split.i.i4

bb.d:                                             ; preds = %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.thread.i.i
  store i32 %i.ai, ptr %i.af, align 4, !tbaa !654
  br label %_ZN6vectorIN3sat7literalELb0EjE4setxEjRKS1_S4_.exit

thread-pre-split.i.i4:                            ; preds = %thread-pre-split.i.i4.preheader, %_ZNK6vectorIN3sat7literalELb0EjE8capacityEv.exit.thread.i.i
  %i.aj = phi ptr [ %.pr.pre.i.i13, %_ZNK6vectorIN3sat7literalELb0EjE8capacityEv.exit.thread.i.i ], [ %.ph, %thread-pre-split.i.i4.preheader ] ; 8 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %_ZNK6vectorIN3sat7literalELb0EjE8capacityEv.exit.thread.i.i, label %_ZNK6vectorIN3sat7literalELb0EjE8capacityEv.exit.i.i

_ZNK6vectorIN3sat7literalELb0EjE8capacityEv.exit.i.i: ; preds = %thread-pre-split.i.i4
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 -8
  %i.am = load i32, ptr %i.al, align 4, !tbaa !654
  %i.an = icmp ugt i32 %.ph39, %i.am
  br i1 %i.an, label %_ZNK6vectorIN3sat7literalELb0EjE8capacityEv.exit.thread.i.i, label %bb.e

_ZNK6vectorIN3sat7literalELb0EjE8capacityEv.exit.thread.i.i: ; preds = %_ZNK6vectorIN3sat7literalELb0EjE8capacityEv.exit.i.i, %thread-pre-split.i.i4
  tail call void @_ZN6vectorIN3sat7literalELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ac)
  %.pr.pre.i.i13 = load ptr, ptr %i.ac, align 8, !tbaa !805
  br label %thread-pre-split.i.i4, !llvm.loop !1289

bb.e:                                             ; preds = %_ZNK6vectorIN3sat7literalELb0EjE8capacityEv.exit.i.i
  %i.ao = getelementptr inbounds i8, ptr %i.aj, i64 -4
  store i32 %.ph39, ptr %i.ao, align 4, !tbaa !654
  %i.ap = zext i32 %.ph39 to i64                  ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ap
  %.not1319.i.i8 = icmp eq i32 %.0.i17.i.i7.ph, %.ph39
  br i1 %.not1319.i.i8, label %_ZN6vectorIN3sat7literalELb0EjE4setxEjRKS1_S4_.exit, label %.lr.ph.preheader.i.i9

.lr.ph.preheader.i.i9:                            ; preds = %bb.e
  %i.ar = zext i32 %.0.i17.i.i7.ph to i64         ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ar ; 3 uses
  %5 = sub nsw i64 %i.ap, %i.ar
  %i.at = add nsw i64 %5, 4611686018427387903
  %6 = and i64 %i.at, 4611686018427387903         ; 2 uses
  %i.au = add nuw nsw i64 %6, 1                   ; 2 uses
  %min.iters.check29 = icmp samesign ult i64 %6, 7
  br i1 %min.iters.check29, label %.lr.ph.i.i10.preheader, label %vector.ph30

vector.ph30:                                      ; preds = %.lr.ph.preheader.i.i9
  %n.vec31 = and i64 %i.au, 9223372036854775800   ; 3 uses
  %i.av = shl i64 %n.vec31, 2
  %i.aw = getelementptr i8, ptr %i.as, i64 %i.av
  br label %vector.body32

vector.body32:                                    ; preds = %vector.body32, %vector.ph30
  %index33 = phi i64 [ 0, %vector.ph30 ], [ %index.next35, %vector.body32 ] ; 2 uses
  %i.ax = shl i64 %index33, 2
  %next.gep34 = getelementptr i8, ptr %i.as, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep34, i64 16
  store <4 x i32> splat (i32 -2), ptr %next.gep34, align 4, !tbaa !654
  store <4 x i32> splat (i32 -2), ptr %i.ay, align 4, !tbaa !654
  %index.next35 = add nuw i64 %index33, 8         ; 2 uses
  %i.az = icmp eq i64 %index.next35, %n.vec31
  br i1 %i.az, label %middle.block36, label %vector.body32, !llvm.loop !1290

middle.block36:                                   ; preds = %vector.body32
  %cmp.n37 = icmp eq i64 %i.au, %n.vec31
  br i1 %cmp.n37, label %_ZN6vectorIN3sat7literalELb0EjE4setxEjRKS1_S4_.exit, label %.lr.ph.i.i10.preheader

.lr.ph.i.i10.preheader:                           ; preds = %.lr.ph.preheader.i.i9, %middle.block36
  %.020.i.i11.ph = phi ptr [ %i.as, %.lr.ph.preheader.i.i9 ], [ %i.aw, %middle.block36 ]
  br label %.lr.ph.i.i10

.lr.ph.i.i10:                                     ; preds = %.lr.ph.i.i10.preheader, %.lr.ph.i.i10
  %.020.i.i11 = phi ptr [ %i.ba, %.lr.ph.i.i10 ], [ %.020.i.i11.ph, %.lr.ph.i.i10.preheader ] ; 2 uses
  store i32 -2, ptr %.020.i.i11, align 4, !tbaa !654
  %i.ba = getelementptr inbounds nuw i8, ptr %.020.i.i11, i64 4 ; 2 uses
  %.not13.i.i12 = icmp eq ptr %i.ba, %i.aq
  br i1 %.not13.i.i12, label %_ZN6vectorIN3sat7literalELb0EjE4setxEjRKS1_S4_.exit, label %.lr.ph.i.i10, !llvm.loop !1291

_ZN6vectorIN3sat7literalELb0EjE4setxEjRKS1_S4_.exit: ; preds = %.lr.ph.i.i10, %middle.block36, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i, %bb.d, %bb.e
  %i.bb = phi ptr [ %i.ad, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit.i ], [ %i.aj, %bb.e ], [ %i.ad, %bb.d ], [ %i.aj, %middle.block36 ], [ %i.aj, %.lr.ph.i.i10 ]
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.aa
  store i32 %2, ptr %i.bc, align 4, !tbaa !654
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6lp_api5boundIN3sat7literalEEC2ES2_ijbRK8rationalNS_10bound_kindEjjS6_(ptr noundef nonnull align 8 dereferenceable(104) %0, i32 %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, ptr noundef nonnull align 8 dereferenceable(32) %9) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = zext i1 %4 to i8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6lp_api5boundIN3sat7literalEEE, i64 16), ptr %0, align 8, !tbaa !520
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.b, align 8, !tbaa !654
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %2, ptr %i.c, align 4, !tbaa !767
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %3, ptr %i.d, align 8, !tbaa !1292
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 %i.a, ptr %i.e, align 4, !tbaa !1293
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  store i32 0, ptr %i.f, align 8, !tbaa !659
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.h = load i8, ptr %i.g, align 4
  %i.i = and i8 %i.h, -4                          ; 2 uses
  store i8 %i.i, ptr %i.g, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %i.j, align 8, !tbaa !658
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store i32 1, ptr %i.k, align 8, !tbaa !659
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 4 uses
  %i.m = load i8, ptr %i.l, align 4
  %i.n = and i8 %i.m, -4
  store i8 %i.n, ptr %i.l, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %i.o, align 8, !tbaa !658
  %i.p = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !660 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.r = load i8, ptr %i.q, align 4
  %i.s = and i8 %i.r, 1
  %i.t = icmp eq i8 %i.s, 0
  br i1 %i.t, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.u = load i32, ptr %5, align 8, !tbaa !659
  store i32 %i.u, ptr %i.f, align 8, !tbaa !659
  store i8 %i.i, ptr %i.g, align 4
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %5)
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i:   ; preds = %bb.c, %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.x = load i8, ptr %i.w, align 4
  %i.y = and i8 %i.x, 1
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i
  %i.aa = load i32, ptr %i.v, align 8, !tbaa !659
  store i32 %i.aa, ptr %i.k, align 8, !tbaa !659
  %i.ab = load i8, ptr %i.l, align 4
  %i.ac = and i8 %i.ab, -2
  store i8 %i.ac, ptr %i.l, align 4
  br label %_ZN8rationalC2ERKS_.exit

bb.e:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i
  tail call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %i.v)
  br label %_ZN8rationalC2ERKS_.exit

_ZN8rationalC2ERKS_.exit:                         ; preds = %bb.d, %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %6, ptr %i.ad, align 8, !tbaa !764
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  store i32 0, ptr %i.ae, align 8, !tbaa !659
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 3 uses
  %i.ag = load i8, ptr %i.af, align 4
  %i.ah = and i8 %i.ag, -4                        ; 2 uses
  store i8 %i.ah, ptr %i.af, align 4
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr null, ptr %i.ai, align 8, !tbaa !658
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  store i32 1, ptr %i.aj, align 8, !tbaa !659
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 4 uses
  %i.al = load i8, ptr %i.ak, align 4
  %i.am = and i8 %i.al, -4
  store i8 %i.am, ptr %i.ak, align 4
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr null, ptr %i.an, align 8, !tbaa !658
  %i.ao = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !660 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.aq = load i8, ptr %i.ap, align 4
  %i.ar = and i8 %i.aq, 1
  %i.as = icmp eq i8 %i.ar, 0
  br i1 %i.as, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN8rationalC2ERKS_.exit
  %i.at = load i32, ptr %9, align 8, !tbaa !659
  store i32 %i.at, ptr %i.ae, align 8, !tbaa !659
  store i8 %i.ah, ptr %i.af, align 4
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i10

bb.g:                                             ; preds = %_ZN8rationalC2ERKS_.exit
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.ao, ptr noundef nonnull align 8 dereferenceable(32) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i10 unwind label %bb.j

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i10: ; preds = %bb.g, %bb.f
  %i.au = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %9, i64 20
  %i.aw = load i8, ptr %i.av, align 4
  %i.ax = and i8 %i.aw, 1
  %i.ay = icmp eq i8 %i.ax, 0
  br i1 %i.ay, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i10
  %i.az = load i32, ptr %i.au, align 8, !tbaa !659
  store i32 %i.az, ptr %i.aj, align 8, !tbaa !659
  %i.ba = load i8, ptr %i.ak, align 4
  %i.bb = and i8 %i.ba, -2
  store i8 %i.bb, ptr %i.ak, align 4
  br label %_ZN8rationalC2ERKS_.exit12

bb.i:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i10
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.ao, ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 8 dereferenceable(16) %i.au)
          to label %_ZN8rationalC2ERKS_.exit12 unwind label %bb.j

_ZN8rationalC2ERKS_.exit12:                       ; preds = %bb.h, %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %8, ptr %i.bc, align 4, !tbaa !654
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %7, ptr %i.bd, align 8, !tbaa !654
  ret void

bb.j:                                             ; preds = %bb.i, %bb.g
  %i.be = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.f) #26
  resume { ptr, i32 } %i.be
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZplRK8rationalS1_(ptr dead_on_unwind noalias writable sret(%class.rational) align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #19 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.rational, align 8            ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store i32 0, ptr %3, align 8, !tbaa !659
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 4 uses
  %i.b = load i8, ptr %i.a, align 4
  %i.c = and i8 %i.b, -4                          ; 2 uses
  store i8 %i.c, ptr %i.a, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.d, align 8, !tbaa !658
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store i32 1, ptr %i.e, align 8, !tbaa !659
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 5 uses
  %i.g = load i8, ptr %i.f, align 4
  %i.h = and i8 %i.g, -4
  store i8 %i.h, ptr %i.f, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr null, ptr %i.i, align 8, !tbaa !658
  %i.j = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !660 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load i8, ptr %i.k, align 4
end_hunk_1
begin_hunk_2_@_ZSt17__merge_sort_loopIPP4exprS2_lN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_T1_T2_:bb.a
  %.018.lcssa.i22 = phi ptr [ %.0.lcssa, %._crit_edge ], [ %.1.i33, %.lr.ph.i25 ] ; 3 uses
  %.0.lcssa.i23 = phi ptr [ %.017.lcssa, %._crit_edge ], [ %i.ba, %.lr.ph.i25 ] ; 3 uses
  %i.be = ptrtoint ptr %i.at to i64
  %i.bf = ptrtoint ptr %.018.lcssa.i22 to i64
  %i.bg = sub i64 %i.be, %i.bf                    ; 4 uses
  %i.bh = icmp sgt i64 %i.bg, 8
  br i1 %i.bh, label %bb.m, label %bb.n, !prof !1357

bb.m:                                             ; preds = %._crit_edge.i20
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.0.lcssa.i23, ptr align 8 %.018.lcssa.i22, i64 %i.bg, i1 false)
  br label %_ZSt4moveIPP4exprS2_ET0_T_S4_S3_.exit.i24

bb.n:                                             ; preds = %._crit_edge.i20
  %i.bi = icmp eq i64 %i.bg, 8
  br i1 %i.bi, label %bb.o, label %_ZSt4moveIPP4exprS2_ET0_T_S4_S3_.exit.i24

bb.o:                                             ; preds = %bb.n
  %i.bj = load ptr, ptr %.018.lcssa.i22, align 8, !tbaa !729
  store ptr %i.bj, ptr %.0.lcssa.i23, align 8, !tbaa !729
  br label %_ZSt4moveIPP4exprS2_ET0_T_S4_S3_.exit.i24

_ZSt4moveIPP4exprS2_ET0_T_S4_S3_.exit.i24:        ; preds = %bb.o, %bb.n, %bb.m
  %i.bk = getelementptr inbounds i8, ptr %.0.lcssa.i23, i64 %i.bg ; 2 uses
  %i.bl = ptrtoint ptr %.019.lcssa.i21 to i64
  %i.bm = sub i64 %i.b, %i.bl                     ; 3 uses
  %i.bn = icmp sgt i64 %i.bm, 8
  br i1 %i.bn, label %bb.p, label %bb.q, !prof !1357

bb.p:                                             ; preds = %_ZSt4moveIPP4exprS2_ET0_T_S4_S3_.exit.i24
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.bk, ptr align 8 %.019.lcssa.i21, i64 %i.bm, i1 false)
  br label %_ZSt12__move_mergeIPP4exprS2_N9__gnu_cxx5__ops15_Iter_less_iterEET0_T_S7_S7_S7_S6_T1_.exit34

bb.q:                                             ; preds = %_ZSt4moveIPP4exprS2_ET0_T_S4_S3_.exit.i24
  %i.bo = icmp eq i64 %i.bm, 8
  br i1 %i.bo, label %bb.r, label %_ZSt12__move_mergeIPP4exprS2_N9__gnu_cxx5__ops15_Iter_less_iterEET0_T_S7_S7_S7_S6_T1_.exit34

bb.r:                                             ; preds = %bb.q
  %i.bp = load ptr, ptr %.019.lcssa.i21, align 8, !tbaa !729
  store ptr %i.bp, ptr %i.bk, align 8, !tbaa !729
  br label %_ZSt12__move_mergeIPP4exprS2_N9__gnu_cxx5__ops15_Iter_less_iterEET0_T_S7_S7_S7_S6_T1_.exit34

_ZSt12__move_mergeIPP4exprS2_N9__gnu_cxx5__ops15_Iter_less_iterEET0_T_S7_S7_S7_S6_T1_.exit34: ; preds = %bb.p, %bb.q, %bb.r
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt22__merge_without_bufferIPP4exprlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_S6_T0_S7_T1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq i64 %3, 0
  %i.b = icmp eq i64 %4, 0
  %or.cond68 = or i1 %i.a, %i.b
  br i1 %or.cond68, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = ptrtoint ptr %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %.tr6573 = phi i64 [ %4, %.lr.ph ], [ %i.at, %tailrecurse ] ; 4 uses
  %.tr6472 = phi i64 [ %3, %.lr.ph ], [ %i.as, %tailrecurse ] ; 4 uses
  %.tr6270 = phi ptr [ %1, %.lr.ph ], [ %.058, %tailrecurse ] ; 7 uses
  %.tr69 = phi ptr [ %0, %.lr.ph ], [ %i.ar, %tailrecurse ] ; 7 uses
  %i.d = add nsw i64 %.tr6573, %.tr6472
  %i.e = icmp eq i64 %i.d, 2
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %.tr6270, align 8, !tbaa !729 ; 2 uses
  %i.g = load ptr, ptr %.tr69, align 8, !tbaa !729 ; 2 uses
  %i.h = icmp ult ptr %i.f, %i.g
  br i1 %i.h, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  store ptr %i.f, ptr %.tr69, align 8, !tbaa !729
  store ptr %i.g, ptr %.tr6270, align 8, !tbaa !729
  br label %.loopexit

bb.e:                                             ; preds = %bb.b
  %i.i = icmp sgt i64 %.tr6472, %.tr6573
  %i.j = ptrtoint ptr %.tr6270 to i64             ; 4 uses
  br i1 %i.i, label %_ZSt9__advanceIPP4exprlEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIPP4exprlEvRT_T0_St26random_access_iterator_tag.exit39

_ZSt9__advanceIPP4exprlEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.e
  %i.k = sdiv i64 %.tr6472, 2                     ; 2 uses
  %i.l = getelementptr inbounds [8 x i8], ptr %.tr69, i64 %i.k ; 2 uses
  %i.m = sub i64 %i.c, %i.j
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %i.o = icmp sgt i64 %i.n, 0
  br i1 %i.o, label %_ZSt9__advanceIPP4exprlEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i, label %_ZSt13__lower_boundIPP4exprS1_N9__gnu_cxx5__ops14_Iter_less_valEET_S6_S6_RKT0_T1_.exit

_ZSt9__advanceIPP4exprlEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i: ; preds = %_ZSt9__advanceIPP4exprlEvRT_T0_St26random_access_iterator_tag.exit
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !729
  br label %_ZSt9__advanceIPP4exprlEvRT_T0_St26random_access_iterator_tag.exit.i

_ZSt9__advanceIPP4exprlEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZSt9__advanceIPP4exprlEvRT_T0_St26random_access_iterator_tag.exit.i, %_ZSt9__advanceIPP4exprlEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i
  %.017.i = phi ptr [ %.tr6270, %_ZSt9__advanceIPP4exprlEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.1.i, %_ZSt9__advanceIPP4exprlEvRT_T0_St26random_access_iterator_tag.exit.i ] ; 2 uses
  %.01116.i = phi i64 [ %i.n, %_ZSt9__advanceIPP4exprlEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.112.i, %_ZSt9__advanceIPP4exprlEvRT_T0_St26random_access_iterator_tag.exit.i ] ; 2 uses
  %i.q = lshr i64 %.01116.i, 1                    ; 3 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.017.i, i64 %i.q ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !729
  %i.t = icmp ult ptr %i.s, %i.p                  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.v = xor i64 %i.q, -1
  %i.w = add nsw i64 %.01116.i, %i.v
  %.112.i = select i1 %i.t, i64 %i.w, i64 %i.q    ; 2 uses
  %.1.i = select i1 %i.t, ptr %i.u, ptr %.017.i   ; 3 uses
  %i.x = icmp sgt i64 %.112.i, 0
  br i1 %i.x, label %_ZSt9__advanceIPP4exprlEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIPP4exprS1_N9__gnu_cxx5__ops14_Iter_less_valEET_S6_S6_RKT0_T1_.exit.loopexit, !llvm.loop !1677

_ZSt13__lower_boundIPP4exprS1_N9__gnu_cxx5__ops14_Iter_less_valEET_S6_S6_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIPP4exprlEvRT_T0_St26random_access_iterator_tag.exit.i
  %.pre = ptrtoint ptr %.1.i to i64
  br label %_ZSt13__lower_boundIPP4exprS1_N9__gnu_cxx5__ops14_Iter_less_valEET_S6_S6_RKT0_T1_.exit

_ZSt13__lower_boundIPP4exprS1_N9__gnu_cxx5__ops14_Iter_less_valEET_S6_S6_RKT0_T1_.exit: ; preds = %_ZSt13__lower_boundIPP4exprS1_N9__gnu_cxx5__ops14_Iter_less_valEET_S6_S6_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIPP4exprlEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %_ZSt13__lower_boundIPP4exprS1_N9__gnu_cxx5__ops14_Iter_less_valEET_S6_S6_RKT0_T1_.exit.loopexit ], [ %i.j, %_ZSt9__advanceIPP4exprlEvRT_T0_St26random_access_iterator_tag.exit ]
  %.0.lcssa.i = phi ptr [ %.1.i, %_ZSt13__lower_boundIPP4exprS1_N9__gnu_cxx5__ops14_Iter_less_valEET_S6_S6_RKT0_T1_.exit.loopexit ], [ %.tr6270, %_ZSt9__advanceIPP4exprlEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.y = sub i64 %.pre-phi, %i.j
  %i.z = ashr exact i64 %i.y, 3
  br label %tailrecurse

_ZSt9__advanceIPP4exprlEvRT_T0_St26random_access_iterator_tag.exit39: ; preds = %bb.e
  %i.aa = sdiv i64 %.tr6573, 2                    ; 2 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %.tr6270, i64 %i.aa ; 2 uses
  %i.ac = ptrtoint ptr %.tr69 to i64              ; 3 uses
  %i.ad = sub i64 %i.j, %i.ac
  %i.ae = ashr exact i64 %i.ad, 3                 ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 0
  br i1 %i.af, label %_ZSt9__advanceIPP4exprlEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i41, label %_ZSt13__upper_boundIPP4exprS1_N9__gnu_cxx5__ops14_Val_less_iterEET_S6_S6_RKT0_T1_.exit

_ZSt9__advanceIPP4exprlEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i41: ; preds = %_ZSt9__advanceIPP4exprlEvRT_T0_St26random_access_iterator_tag.exit39
  %i.ag = load ptr, ptr %i.ab, align 8, !tbaa !729
  br label %_ZSt9__advanceIPP4exprlEvRT_T0_St26random_access_iterator_tag.exit.i42

_ZSt9__advanceIPP4exprlEvRT_T0_St26random_access_iterator_tag.exit.i42: ; preds = %_ZSt9__advanceIPP4exprlEvRT_T0_St26random_access_iterator_tag.exit.i42, %_ZSt9__advanceIPP4exprlEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i41
  %.017.i43 = phi ptr [ %.tr69, %_ZSt9__advanceIPP4exprlEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i41 ], [ %.1.i48, %_ZSt9__advanceIPP4exprlEvRT_T0_St26random_access_iterator_tag.exit.i42 ] ; 2 uses
  %.01116.i44 = phi i64 [ %i.ae, %_ZSt9__advanceIPP4exprlEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i41 ], [ %.112.i47, %_ZSt9__advanceIPP4exprlEvRT_T0_St26random_access_iterator_tag.exit.i42 ] ; 2 uses
  %i.ah = lshr i64 %.01116.i44, 1                 ; 3 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %.017.i43, i64 %i.ah ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !729
  %i.ak = icmp ult ptr %i.ag, %i.aj               ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.am = xor i64 %i.ah, -1
  %i.an = add nsw i64 %.01116.i44, %i.am
  %.112.i47 = select i1 %i.ak, i64 %i.ah, i64 %i.an ; 2 uses
  %.1.i48 = select i1 %i.ak, ptr %.017.i43, ptr %i.al ; 3 uses
  %i.ao = icmp sgt i64 %.112.i47, 0
  br i1 %i.ao, label %_ZSt9__advanceIPP4exprlEvRT_T0_St26random_access_iterator_tag.exit.i42, label %_ZSt13__upper_boundIPP4exprS1_N9__gnu_cxx5__ops14_Val_less_iterEET_S6_S6_RKT0_T1_.exit.loopexit, !llvm.loop !1678

_ZSt13__upper_boundIPP4exprS1_N9__gnu_cxx5__ops14_Val_less_iterEET_S6_S6_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIPP4exprlEvRT_T0_St26random_access_iterator_tag.exit.i42
  %.pre76 = ptrtoint ptr %.1.i48 to i64
  br label %_ZSt13__upper_boundIPP4exprS1_N9__gnu_cxx5__ops14_Val_less_iterEET_S6_S6_RKT0_T1_.exit

_ZSt13__upper_boundIPP4exprS1_N9__gnu_cxx5__ops14_Val_less_iterEET_S6_S6_RKT0_T1_.exit: ; preds = %_ZSt13__upper_boundIPP4exprS1_N9__gnu_cxx5__ops14_Val_less_iterEET_S6_S6_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIPP4exprlEvRT_T0_St26random_access_iterator_tag.exit39
  %.pre-phi77 = phi i64 [ %.pre76, %_ZSt13__upper_boundIPP4exprS1_N9__gnu_cxx5__ops14_Val_less_iterEET_S6_S6_RKT0_T1_.exit.loopexit ], [ %i.ac, %_ZSt9__advanceIPP4exprlEvRT_T0_St26random_access_iterator_tag.exit39 ]
  %.0.lcssa.i40 = phi ptr [ %.1.i48, %_ZSt13__upper_boundIPP4exprS1_N9__gnu_cxx5__ops14_Val_less_iterEET_S6_S6_RKT0_T1_.exit.loopexit ], [ %.tr69, %_ZSt9__advanceIPP4exprlEvRT_T0_St26random_access_iterator_tag.exit39 ]
  %i.ap = sub i64 %.pre-phi77, %i.ac
  %i.aq = ashr exact i64 %i.ap, 3
  br label %tailrecurse

tailrecurse:                                      ; preds = %_ZSt13__upper_boundIPP4exprS1_N9__gnu_cxx5__ops14_Val_less_iterEET_S6_S6_RKT0_T1_.exit, %_ZSt13__lower_boundIPP4exprS1_N9__gnu_cxx5__ops14_Iter_less_valEET_S6_S6_RKT0_T1_.exit
  %.059 = phi ptr [ %i.l, %_ZSt13__lower_boundIPP4exprS1_N9__gnu_cxx5__ops14_Iter_less_valEET_S6_S6_RKT0_T1_.exit ], [ %.0.lcssa.i40, %_ZSt13__upper_boundIPP4exprS1_N9__gnu_cxx5__ops14_Val_less_iterEET_S6_S6_RKT0_T1_.exit ] ; 2 uses
  %.058 = phi ptr [ %.0.lcssa.i, %_ZSt13__lower_boundIPP4exprS1_N9__gnu_cxx5__ops14_Iter_less_valEET_S6_S6_RKT0_T1_.exit ], [ %i.ab, %_ZSt13__upper_boundIPP4exprS1_N9__gnu_cxx5__ops14_Val_less_iterEET_S6_S6_RKT0_T1_.exit ] ; 2 uses
  %.033 = phi i64 [ %i.z, %_ZSt13__lower_boundIPP4exprS1_N9__gnu_cxx5__ops14_Iter_less_valEET_S6_S6_RKT0_T1_.exit ], [ %i.aa, %_ZSt13__upper_boundIPP4exprS1_N9__gnu_cxx5__ops14_Val_less_iterEET_S6_S6_RKT0_T1_.exit ] ; 2 uses
  %.0 = phi i64 [ %i.k, %_ZSt13__lower_boundIPP4exprS1_N9__gnu_cxx5__ops14_Iter_less_valEET_S6_S6_RKT0_T1_.exit ], [ %i.aq, %_ZSt13__upper_boundIPP4exprS1_N9__gnu_cxx5__ops14_Val_less_iterEET_S6_S6_RKT0_T1_.exit ] ; 2 uses
  %i.ar = tail call noundef ptr @_ZNSt3_V28__rotateIPP4exprEET_S4_S4_S4_St26random_access_iterator_tag(ptr noundef %.059, ptr noundef %.tr6270, ptr noundef %.058) ; 2 uses
  tail call void @_ZSt22__merge_without_bufferIPP4exprlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_S6_T0_S7_T1_(ptr noundef %.tr69, ptr noundef %.059, ptr noundef %i.ar, i64 noundef %.0, i64 noundef %.033)
  %i.as = sub nsw i64 %.tr6472, %.0               ; 2 uses
  %i.at = sub nsw i64 %.tr6573, %.033             ; 2 uses
  %i.au = icmp eq i64 %i.as, 0
  %i.av = icmp eq i64 %i.at, 0
  %or.cond = or i1 %i.au, %i.av
  br i1 %or.cond, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %tailrecurse, %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3_V28__rotateIPP4exprEET_S4_S4_S4_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZSt11swap_rangesIPP4exprS2_ET0_T_S4_S3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %2, %1
  br i1 %i.b, label %_ZSt11swap_rangesIPP4exprS2_ET0_T_S4_S3_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.d = ptrtoint ptr %0 to i64                   ; 4 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = ashr exact i64 %i.e, 3                   ; 2 uses
  %i.g = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.h = sub i64 %i.g, %i.d
  %i.i = ashr exact i64 %i.h, 3                   ; 3 uses
  %i.j = sub nsw i64 %i.f, %i.i
  %i.k = icmp eq i64 %i.i, %i.j
  br i1 %i.k, label %.lr.ph.i.preheader, label %bb.d

.lr.ph.i.preheader:                               ; preds = %bb.c
  %3 = sub i64 %i.g, %i.d
  %4 = add i64 %3, -8                             ; 2 uses
  %i.l = lshr i64 %4, 3
  %i.m = add nuw nsw i64 %i.l, 1                  ; 2 uses
  %min.iters.check174 = icmp ult i64 %4, 104
  br i1 %min.iters.check174, label %.lr.ph.i.preheader190, label %vector.memcheck167

vector.memcheck167:                               ; preds = %.lr.ph.i.preheader
  %i.n = add i64 %i.g, -8
  %i.o = sub i64 %i.n, %i.d
  %i.p = and i64 %i.o, -8
  %i.q = add i64 %i.p, 8                          ; 2 uses
  %scevgep168 = getelementptr i8, ptr %0, i64 %i.q
  %scevgep169 = getelementptr i8, ptr %1, i64 %i.q
  %bound0170 = icmp ult ptr %0, %scevgep169
  %bound1171 = icmp ult ptr %1, %scevgep168
  %found.conflict172 = and i1 %bound0170, %bound1171
  br i1 %found.conflict172, label %.lr.ph.i.preheader190, label %vector.ph175

vector.ph175:                                     ; preds = %vector.memcheck167
  %n.vec176 = and i64 %i.m, 4611686018427387900   ; 3 uses
  %i.r = shl i64 %n.vec176, 3                     ; 2 uses
  %i.s = getelementptr i8, ptr %1, i64 %i.r
  %i.t = getelementptr i8, ptr %0, i64 %i.r
  br label %vector.body177

vector.body177:                                   ; preds = %vector.body177, %vector.ph175
  %index178 = phi i64 [ 0, %vector.ph175 ], [ %index.next185, %vector.body177 ] ; 2 uses
  %i.u = shl i64 %index178, 3                     ; 2 uses
  %next.gep179 = getelementptr i8, ptr %1, i64 %i.u ; 3 uses
  %next.gep180 = getelementptr i8, ptr %0, i64 %i.u ; 3 uses
  %i.v = getelementptr i8, ptr %next.gep180, i64 16 ; 2 uses
  %wide.load181 = load <2 x ptr>, ptr %next.gep180, align 8, !tbaa !729, !alias.scope !1679, !noalias !1682
  %wide.load182 = load <2 x ptr>, ptr %i.v, align 8, !tbaa !729, !alias.scope !1679, !noalias !1682
  %i.w = getelementptr i8, ptr %next.gep179, i64 16 ; 2 uses
  %wide.load183 = load <2 x ptr>, ptr %next.gep179, align 8, !tbaa !729, !alias.scope !1682
  %wide.load184 = load <2 x ptr>, ptr %i.w, align 8, !tbaa !729, !alias.scope !1682
  store <2 x ptr> %wide.load183, ptr %next.gep180, align 8, !tbaa !729, !alias.scope !1679, !noalias !1682
  store <2 x ptr> %wide.load184, ptr %i.v, align 8, !tbaa !729, !alias.scope !1679, !noalias !1682
  store <2 x ptr> %wide.load181, ptr %next.gep179, align 8, !tbaa !729, !alias.scope !1682
  store <2 x ptr> %wide.load182, ptr %i.w, align 8, !tbaa !729, !alias.scope !1682
  %index.next185 = add nuw i64 %index178, 4       ; 2 uses
  %i.x = icmp eq i64 %index.next185, %n.vec176
  br i1 %i.x, label %middle.block186, label %vector.body177, !llvm.loop !1684

middle.block186:                                  ; preds = %vector.body177
  %cmp.n187 = icmp eq i64 %i.m, %n.vec176
  br i1 %cmp.n187, label %_ZSt11swap_rangesIPP4exprS2_ET0_T_S4_S3_.exit, label %.lr.ph.i.preheader190

.lr.ph.i.preheader190:                            ; preds = %vector.memcheck167, %.lr.ph.i.preheader, %middle.block186
  %.010.i.ph = phi ptr [ %1, %vector.memcheck167 ], [ %1, %.lr.ph.i.preheader ], [ %i.s, %middle.block186 ]
  %.079.i.ph = phi ptr [ %0, %vector.memcheck167 ], [ %0, %.lr.ph.i.preheader ], [ %i.t, %middle.block186 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader190, %.lr.ph.i
  %.010.i = phi ptr [ %i.ab, %.lr.ph.i ], [ %.010.i.ph, %.lr.ph.i.preheader190 ] ; 3 uses
  %.079.i = phi ptr [ %i.aa, %.lr.ph.i ], [ %.079.i.ph, %.lr.ph.i.preheader190 ] ; 3 uses
  %i.y = load ptr, ptr %.079.i, align 8, !tbaa !729
  %i.z = load ptr, ptr %.010.i, align 8, !tbaa !729
  store ptr %i.z, ptr %.079.i, align 8, !tbaa !729
  store ptr %i.y, ptr %.010.i, align 8, !tbaa !729
  %i.aa = getelementptr inbounds nuw i8, ptr %.079.i, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.010.i, i64 8
  %.not.i = icmp eq ptr %i.aa, %1
  br i1 %.not.i, label %_ZSt11swap_rangesIPP4exprS2_ET0_T_S4_S3_.exit, label %.lr.ph.i, !llvm.loop !1685

bb.d:                                             ; preds = %bb.c
  %i.ac = sub i64 %i.c, %i.g
  %i.ad = getelementptr inbounds i8, ptr %0, i64 %i.ac ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %.backedge, %bb.d
  %.086 = phi i64 [ %i.f, %bb.d ], [ %.086.be, %.backedge ] ; 11 uses
  %.082 = phi i64 [ %i.i, %bb.d ], [ %.082.be, %.backedge ] ; 18 uses
  %.058 = phi ptr [ %0, %bb.d ], [ %.058.be, %.backedge ] ; 22 uses
  %i.ae = sub nsw i64 %.086, %.082                ; 10 uses
  %i.af = icmp slt i64 %.082, %i.ae
  br i1 %i.af, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ag = icmp eq i64 %.082, 1
  br i1 %i.ag, label %_ZSt4moveIPP4exprS2_ET0_T_S4_S3_.exit, label %bb.g

_ZSt4moveIPP4exprS2_ET0_T_S4_S3_.exit:            ; preds = %bb.f
  %i.ah = load ptr, ptr %.058, align 8, !tbaa !729
  %i.ai = getelementptr inbounds nuw i8, ptr %.058, i64 8
  %.idx97 = shl nsw i64 %.086, 3                  ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %.058, i64 %.idx97
  %gepdiff = add nsw i64 %.idx97, -8
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %.058, ptr nonnull align 8 %i.ai, i64 %gepdiff, i1 false)
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -8
  store ptr %i.ah, ptr %i.ak, align 8, !tbaa !729
  br label %_ZSt11swap_rangesIPP4exprS2_ET0_T_S4_S3_.exit

bb.g:                                             ; preds = %bb.f
  %i.al = icmp sgt i64 %i.ae, 0
  br i1 %i.al, label %.lr.ph110.preheader, label %._crit_edge111

.lr.ph110.preheader:                              ; preds = %bb.g
  %i.am = getelementptr [8 x i8], ptr %.058, i64 %.082 ; 5 uses
  %min.iters.check = icmp ult i64 %i.ae, 6
  br i1 %min.iters.check, label %.lr.ph110.preheader191, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph110.preheader
  %i.an = shl i64 %.086, 3
  %i.ao = sub i64 %.086, %.082
  %i.ap = shl i64 %i.ao, 3
  %scevgep = getelementptr i8, ptr %.058, i64 %i.ap
  %scevgep137 = getelementptr i8, ptr %.058, i64 %i.an
  %bound0 = icmp ult ptr %.058, %scevgep137
  %bound1 = icmp ult ptr %i.am, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph110.preheader191, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ae, 9223372036854775804     ; 4 uses
  %i.aq = shl i64 %n.vec, 3                       ; 2 uses
  %i.ar = getelementptr i8, ptr %i.am, i64 %i.aq
  %i.as = getelementptr i8, ptr %.058, i64 %i.aq  ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.at = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.am, i64 %i.at ; 3 uses
  %next.gep138 = getelementptr i8, ptr %.058, i64 %i.at ; 3 uses
  %i.au = getelementptr i8, ptr %next.gep138, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %next.gep138, align 8, !tbaa !729, !alias.scope !1686, !noalias !1689
  %wide.load139 = load <2 x ptr>, ptr %i.au, align 8, !tbaa !729, !alias.scope !1686, !noalias !1689
  %i.av = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load140 = load <2 x ptr>, ptr %next.gep, align 8, !tbaa !729, !alias.scope !1689
  %wide.load141 = load <2 x ptr>, ptr %i.av, align 8, !tbaa !729, !alias.scope !1689
  store <2 x ptr> %wide.load140, ptr %next.gep138, align 8, !tbaa !729, !alias.scope !1686, !noalias !1689
  store <2 x ptr> %wide.load141, ptr %i.au, align 8, !tbaa !729, !alias.scope !1686, !noalias !1689
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !729, !alias.scope !1689
  store <2 x ptr> %wide.load139, ptr %i.av, align 8, !tbaa !729, !alias.scope !1689
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !1691

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n, label %._crit_edge111, label %.lr.ph110.preheader191

.lr.ph110.preheader191:                           ; preds = %vector.memcheck, %.lr.ph110.preheader, %middle.block
  %.054108.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph110.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %.055107.ph = phi ptr [ %i.am, %vector.memcheck ], [ %i.am, %.lr.ph110.preheader ], [ %i.ar, %middle.block ] ; 2 uses
  %.159106.ph = phi ptr [ %.058, %vector.memcheck ], [ %.058, %.lr.ph110.preheader ], [ %i.as, %middle.block ] ; 2 uses
  %i.ax = sub i64 %.086, %.082
  %xtraiter199 = and i64 %i.ax, 3                 ; 2 uses
  %lcmp.mod200.not = icmp eq i64 %xtraiter199, 0
  br i1 %lcmp.mod200.not, label %.lr.ph110.prol.loopexit, label %.lr.ph110.prol

.lr.ph110.prol:                                   ; preds = %.lr.ph110.preheader191, %.lr.ph110.prol
  %.054108.prol = phi i64 [ %i.bc, %.lr.ph110.prol ], [ %.054108.ph, %.lr.ph110.preheader191 ]
  %.055107.prol = phi ptr [ %i.bb, %.lr.ph110.prol ], [ %.055107.ph, %.lr.ph110.preheader191 ] ; 3 uses
  %.159106.prol = phi ptr [ %i.ba, %.lr.ph110.prol ], [ %.159106.ph, %.lr.ph110.preheader191 ] ; 3 uses
  %prol.iter201 = phi i64 [ %prol.iter201.next, %.lr.ph110.prol ], [ 0, %.lr.ph110.preheader191 ]
  %i.ay = load ptr, ptr %.159106.prol, align 8, !tbaa !729
  %i.az = load ptr, ptr %.055107.prol, align 8, !tbaa !729
  store ptr %i.az, ptr %.159106.prol, align 8, !tbaa !729
  store ptr %i.ay, ptr %.055107.prol, align 8, !tbaa !729
  %i.ba = getelementptr inbounds nuw i8, ptr %.159106.prol, i64 8 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.055107.prol, i64 8 ; 2 uses
  %i.bc = add nuw nsw i64 %.054108.prol, 1        ; 2 uses
  %prol.iter201.next = add i64 %prol.iter201, 1   ; 2 uses
  %prol.iter201.cmp.not = icmp eq i64 %prol.iter201.next, %xtraiter199
  br i1 %prol.iter201.cmp.not, label %.lr.ph110.prol.loopexit, label %.lr.ph110.prol, !llvm.loop !1692

.lr.ph110.prol.loopexit:                          ; preds = %.lr.ph110.prol, %.lr.ph110.preheader191
  %.lcssa.unr = phi ptr [ poison, %.lr.ph110.preheader191 ], [ %i.ba, %.lr.ph110.prol ]
  %.054108.unr = phi i64 [ %.054108.ph, %.lr.ph110.preheader191 ], [ %i.bc, %.lr.ph110.prol ]
  %.055107.unr = phi ptr [ %.055107.ph, %.lr.ph110.preheader191 ], [ %i.bb, %.lr.ph110.prol ]
  %.159106.unr = phi ptr [ %.159106.ph, %.lr.ph110.preheader191 ], [ %i.ba, %.lr.ph110.prol ]
  %i.bd = sub i64 %.054108.ph, %.086
  %i.be = add i64 %i.bd, %.082
  %i.bf = icmp ugt i64 %i.be, -4
  br i1 %i.bf, label %._crit_edge111, label %.lr.ph110

._crit_edge111:                                   ; preds = %.lr.ph110.prol.loopexit, %.lr.ph110, %middle.block, %bb.g
  %.159.lcssa = phi ptr [ %.058, %bb.g ], [ %i.as, %middle.block ], [ %.lcssa.unr, %.lr.ph110.prol.loopexit ], [ %i.bv, %.lr.ph110 ]
  %i.bg = srem i64 %.086, %.082                   ; 2 uses
  %.not67 = icmp eq i64 %i.bg, 0
  br i1 %.not67, label %_ZSt11swap_rangesIPP4exprS2_ET0_T_S4_S3_.exit, label %bb.h

.lr.ph110:                                        ; preds = %.lr.ph110.prol.loopexit, %.lr.ph110
  %.054108 = phi i64 [ %i.bx, %.lr.ph110 ], [ %.054108.unr, %.lr.ph110.prol.loopexit ]
  %.055107 = phi ptr [ %i.bw, %.lr.ph110 ], [ %.055107.unr, %.lr.ph110.prol.loopexit ] ; 6 uses
  %.159106 = phi ptr [ %i.bv, %.lr.ph110 ], [ %.159106.unr, %.lr.ph110.prol.loopexit ] ; 6 uses
  %i.bh = load ptr, ptr %.159106, align 8, !tbaa !729
  %i.bi = load ptr, ptr %.055107, align 8, !tbaa !729
  store ptr %i.bi, ptr %.159106, align 8, !tbaa !729
  store ptr %i.bh, ptr %.055107, align 8, !tbaa !729
  %i.bj = getelementptr inbounds nuw i8, ptr %.159106, i64 8 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.055107, i64 8 ; 2 uses
  %i.bl = load ptr, ptr %i.bj, align 8, !tbaa !729
  %i.bm = load ptr, ptr %i.bk, align 8, !tbaa !729
  store ptr %i.bm, ptr %i.bj, align 8, !tbaa !729
  store ptr %i.bl, ptr %i.bk, align 8, !tbaa !729
  %i.bn = getelementptr inbounds nuw i8, ptr %.159106, i64 16 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.055107, i64 16 ; 2 uses
  %i.bp = load ptr, ptr %i.bn, align 8, !tbaa !729
end_hunk_2
