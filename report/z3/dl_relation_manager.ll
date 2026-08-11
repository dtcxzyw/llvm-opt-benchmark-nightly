inline.NumInlined: 1890
inline.NumDeleted: 739
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN7datalog16relation_manager23default_table_rename_fnD2Ev:bb.a
bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #25, !inline_history !627
  unreachable

_ZN7datalog17tr_infrastructureINS_12table_traitsEE20convenient_rename_fnD2Ev.exit: ; preds = %_ZN6vectorIjLb0EjED2Ev.exit.i, %bb.f
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7datalog16relation_manager23default_table_rename_fnD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7datalog16relation_manager30auxiliary_table_transformer_fnE, i64 16), ptr %i.a, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !385  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZN7datalog16relation_manager30auxiliary_table_transformer_fnD2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.d)
          to label %_ZN7datalog16relation_manager30auxiliary_table_transformer_fnD2Ev.exit.i unwind label %bb.c, !inline_history !611

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #25, !inline_history !611
  unreachable

_ZN7datalog16relation_manager30auxiliary_table_transformer_fnD2Ev.exit.i: ; preds = %bb.b, %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7datalog17tr_infrastructureINS_12table_traitsEE20convenient_rename_fnE, i64 16), ptr %0, align 8, !tbaa !8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !449  ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i1.i, label %_ZN6vectorIjLb0EjED2Ev.exit.i.i, label %bb.d

bb.d:                                             ; preds = %_ZN7datalog16relation_manager30auxiliary_table_transformer_fnD2Ev.exit.i
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.i)
          to label %_ZN6vectorIjLb0EjED2Ev.exit.i.i unwind label %bb.e, !inline_history !626

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #25, !inline_history !626
  unreachable

_ZN6vectorIjLb0EjED2Ev.exit.i.i:                  ; preds = %bb.d, %_ZN7datalog16relation_manager30auxiliary_table_transformer_fnD2Ev.exit.i
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7datalog17tr_infrastructureINS_12table_traitsEE25convenient_transformer_fnE, i64 16), ptr %0, align 8, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !385  ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i, label %_ZN7datalog16relation_manager23default_table_rename_fnD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN6vectorIjLb0EjED2Ev.exit.i.i
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.n)
          to label %_ZN7datalog16relation_manager23default_table_rename_fnD2Ev.exit unwind label %bb.g, !inline_history !627

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #25, !inline_history !627
  unreachable

_ZN7datalog16relation_manager23default_table_rename_fnD2Ev.exit: ; preds = %_ZN6vectorIjLb0EjED2Ev.exit.i.i, %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7datalog16relation_manager23default_table_rename_fnclERKNS_10table_baseE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = tail call noundef ptr @_ZN7datalog16relation_manager30auxiliary_table_transformer_fnclERKNS_10table_baseE(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(36) %1)
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(12) ptr @_ZNK7datalog16relation_manager23default_table_rename_fn20get_result_signatureEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK7datalog16relation_manager23default_table_rename_fn11modify_factER7svectorImjE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !449  ; 9 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN7datalog16permute_by_cycleI7svectorImjEEEvRT_RKS1_IjjE.exit, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i

_ZNK6vectorIjLb0EjE4sizeEv.exit.i:                ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !36   ; 4 uses
  %i.f = icmp ult i32 %i.e, 2
  br i1 %i.f, label %_ZN7datalog16permute_by_cycleI7svectorImjEEEvRT_RKS1_IjjE.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i
  %i.g = load i32, ptr %i.b, align 4, !tbaa !36   ; 3 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !385    ; 12 uses
  %i.i = zext i32 %i.g to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.i
  %i.k = load i64, ptr %i.j, align 8, !tbaa !392
  %wide.trip.count.i.i = zext i32 %i.e to i64
  %i.l = add nsw i64 %wide.trip.count.i.i, -1     ; 2 uses
  %xtraiter = and i64 %i.l, 3                     ; 3 uses
  %i.m = add i32 %i.e, -2
  %i.n = icmp ult i32 %i.m, 3
  br i1 %i.n, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.l, -4
  br label %bb.d

.unr-lcssa:                                       ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.b
  %.epil.init = phi i32 [ %i.g, %bb.b ], [ %i.bc, %.unr-lcssa ]
  %indvars.iv.i.i.epil.init = phi i64 [ 1, %bb.b ], [ %indvars.iv.next.i.i.3, %.unr-lcssa ]
  %lcmp.mod3 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod3)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %i.o = phi i32 [ %.epil.init, %.epil.preheader ], [ %i.q, %bb.c ]
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.i.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.i.epil, %bb.c ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i.i.epil
  %i.q = load i32, ptr %i.p, align 4, !tbaa !36   ; 2 uses
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.r
  %i.t = load i64, ptr %i.s, align 8, !tbaa !392
  %i.u = zext i32 %i.o to i64
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.u
  store i64 %i.t, ptr %i.v, align 8, !tbaa !392
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.c, !llvm.loop !628

.epilog-lcssa:                                    ; preds = %bb.c, %.unr-lcssa
  %i.w = add i32 %i.e, -1
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !36
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.aa
  store i64 %i.k, ptr %i.ab, align 8, !tbaa !392
  br label %_ZN7datalog16permute_by_cycleI7svectorImjEEEvRT_RKS1_IjjE.exit

bb.d:                                             ; preds = %bb.d, %.new
  %i.ac = phi i32 [ %i.g, %.new ], [ %i.bc, %bb.d ]
  %indvars.iv.i.i = phi i64 [ 1, %.new ], [ %indvars.iv.next.i.i.3, %bb.d ] ; 5 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.d ]
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i.i
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !36 ; 2 uses
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.af
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !392
  %i.ai = zext i32 %i.ac to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ai
  store i64 %i.ah, ptr %i.aj, align 8, !tbaa !392
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !36 ; 2 uses
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.an
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !392
  %i.aq = zext i32 %i.ae to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.aq
  store i64 %i.ap, ptr %i.ar, align 8, !tbaa !392
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load i32, ptr %i.at, align 4, !tbaa !36 ; 2 uses
  %i.av = zext i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.av
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !392
  %i.ay = zext i32 %i.am to i64
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ay
  store i64 %i.ax, ptr %i.az, align 8, !tbaa !392
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !36 ; 3 uses
  %i.bd = zext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.bd
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !392
  %i.bg = zext i32 %i.au to i64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.bg
  store i64 %i.bf, ptr %i.bh, align 8, !tbaa !392
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %bb.d, !llvm.loop !629

_ZN7datalog16permute_by_cycleI7svectorImjEEEvRT_RKS1_IjjE.exit: ; preds = %bb.a, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i, %.epilog-lcssa
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr hidden void @_ZThn32_N7datalog16relation_manager23default_table_rename_fnD1Ev(ptr noundef %0) unnamed_addr #19 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -32 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7datalog16relation_manager30auxiliary_table_transformer_fnE, i64 16), ptr %0, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !385  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZN7datalog16relation_manager30auxiliary_table_transformer_fnD2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.d)
          to label %_ZN7datalog16relation_manager30auxiliary_table_transformer_fnD2Ev.exit.i unwind label %bb.c, !inline_history !611

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #25, !inline_history !611
  unreachable

_ZN7datalog16relation_manager30auxiliary_table_transformer_fnD2Ev.exit.i: ; preds = %bb.b, %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7datalog17tr_infrastructureINS_12table_traitsEE20convenient_rename_fnE, i64 16), ptr %i.a, align 8, !tbaa !8
  %i.g = getelementptr inbounds i8, ptr %0, i64 -8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !449  ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i1.i, label %_ZN6vectorIjLb0EjED2Ev.exit.i.i, label %bb.d

bb.d:                                             ; preds = %_ZN7datalog16relation_manager30auxiliary_table_transformer_fnD2Ev.exit.i
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.i)
          to label %_ZN6vectorIjLb0EjED2Ev.exit.i.i unwind label %bb.e, !inline_history !626

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #25, !inline_history !626
  unreachable

_ZN6vectorIjLb0EjED2Ev.exit.i.i:                  ; preds = %bb.d, %_ZN7datalog16relation_manager30auxiliary_table_transformer_fnD2Ev.exit.i
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7datalog17tr_infrastructureINS_12table_traitsEE25convenient_transformer_fnE, i64 16), ptr %i.a, align 8, !tbaa !8
  %i.l = getelementptr inbounds i8, ptr %0, i64 -24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !385  ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i, label %_ZN7datalog16relation_manager23default_table_rename_fnD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN6vectorIjLb0EjED2Ev.exit.i.i
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.n)
          to label %_ZN7datalog16relation_manager23default_table_rename_fnD2Ev.exit unwind label %bb.g, !inline_history !627

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #25, !inline_history !627
  unreachable

_ZN7datalog16relation_manager23default_table_rename_fnD2Ev.exit: ; preds = %_ZN6vectorIjLb0EjED2Ev.exit.i.i, %bb.f
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr hidden void @_ZThn32_N7datalog16relation_manager23default_table_rename_fnD0Ev(ptr noundef %0) unnamed_addr #19 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -32 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7datalog16relation_manager30auxiliary_table_transformer_fnE, i64 16), ptr %0, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !385  ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i, label %_ZN7datalog16relation_manager30auxiliary_table_transformer_fnD2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.d)
          to label %_ZN7datalog16relation_manager30auxiliary_table_transformer_fnD2Ev.exit.i.i unwind label %bb.c, !inline_history !611

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #25, !inline_history !611
  unreachable

_ZN7datalog16relation_manager30auxiliary_table_transformer_fnD2Ev.exit.i.i: ; preds = %bb.b, %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7datalog17tr_infrastructureINS_12table_traitsEE20convenient_rename_fnE, i64 16), ptr %i.a, align 8, !tbaa !8
  %i.g = getelementptr inbounds i8, ptr %0, i64 -8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !449  ; 2 uses
  %.not.i.i.i1.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i1.i.i, label %_ZN6vectorIjLb0EjED2Ev.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZN7datalog16relation_manager30auxiliary_table_transformer_fnD2Ev.exit.i.i
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.i)
          to label %_ZN6vectorIjLb0EjED2Ev.exit.i.i.i unwind label %bb.e, !inline_history !626

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #25, !inline_history !626
  unreachable

_ZN6vectorIjLb0EjED2Ev.exit.i.i.i:                ; preds = %bb.d, %_ZN7datalog16relation_manager30auxiliary_table_transformer_fnD2Ev.exit.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7datalog17tr_infrastructureINS_12table_traitsEE25convenient_transformer_fnE, i64 16), ptr %i.a, align 8, !tbaa !8
  %i.l = getelementptr inbounds i8, ptr %0, i64 -24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !385  ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN7datalog16relation_manager23default_table_rename_fnD0Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN6vectorIjLb0EjED2Ev.exit.i.i.i
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.n)
          to label %_ZN7datalog16relation_manager23default_table_rename_fnD0Ev.exit unwind label %bb.g, !inline_history !627

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #25, !inline_history !627
  unreachable

_ZN7datalog16relation_manager23default_table_rename_fnD0Ev.exit: ; preds = %_ZN6vectorIjLb0EjED2Ev.exit.i.i.i, %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 noundef 48) #27
  ret void
}

; Function Attrs: uwtable
define linkonce_odr hidden noundef ptr @_ZThn32_NK7datalog16relation_manager23default_table_rename_fn20get_result_signatureEv(ptr noundef %0) unnamed_addr #20 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -24
  ret ptr %i.a
}

; Function Attrs: uwtable
define linkonce_odr hidden void @_ZThn32_NK7datalog16relation_manager23default_table_rename_fn11modify_factER7svectorImjE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #20 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !449  ; 9 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNK7datalog16relation_manager23default_table_rename_fn11modify_factER7svectorImjE.exit, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i

_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i:              ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !36   ; 4 uses
  %i.f = icmp ult i32 %i.e, 2
  br i1 %i.f, label %_ZNK7datalog16relation_manager23default_table_rename_fn11modify_factER7svectorImjE.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i
  %i.g = load i32, ptr %i.b, align 4, !tbaa !36   ; 3 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !385    ; 12 uses
  %i.i = zext i32 %i.g to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.i
  %i.k = load i64, ptr %i.j, align 8, !tbaa !392
  %wide.trip.count.i.i.i = zext i32 %i.e to i64
  %i.l = add nsw i64 %wide.trip.count.i.i.i, -1   ; 2 uses
  %xtraiter = and i64 %i.l, 3                     ; 3 uses
  %i.m = add i32 %i.e, -2
  %i.n = icmp ult i32 %i.m, 3
  br i1 %i.n, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.l, -4
  br label %bb.d

.unr-lcssa:                                       ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.b
  %.epil.init = phi i32 [ %i.g, %bb.b ], [ %i.bc, %.unr-lcssa ]
  %indvars.iv.i.i.i.epil.init = phi i64 [ 1, %bb.b ], [ %indvars.iv.next.i.i.i.3, %.unr-lcssa ]
  %lcmp.mod3 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod3)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %i.o = phi i32 [ %.epil.init, %.epil.preheader ], [ %i.q, %bb.c ]
  %indvars.iv.i.i.i.epil = phi i64 [ %indvars.iv.i.i.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.i.i.epil, %bb.c ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i.i.i.epil
  %i.q = load i32, ptr %i.p, align 4, !tbaa !36   ; 2 uses
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.r
  %i.t = load i64, ptr %i.s, align 8, !tbaa !392
  %i.u = zext i32 %i.o to i64
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.u
  store i64 %i.t, ptr %i.v, align 8, !tbaa !392
  %indvars.iv.next.i.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.c, !llvm.loop !630

.epilog-lcssa:                                    ; preds = %bb.c, %.unr-lcssa
  %i.w = add i32 %i.e, -1
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !36
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.aa
  store i64 %i.k, ptr %i.ab, align 8, !tbaa !392
  br label %_ZNK7datalog16relation_manager23default_table_rename_fn11modify_factER7svectorImjE.exit

bb.d:                                             ; preds = %bb.d, %.new
  %i.ac = phi i32 [ %i.g, %.new ], [ %i.bc, %bb.d ]
  %indvars.iv.i.i.i = phi i64 [ 1, %.new ], [ %indvars.iv.next.i.i.i.3, %bb.d ] ; 5 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.d ]
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i.i.i
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !36 ; 2 uses
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.af
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !392
  %i.ai = zext i32 %i.ac to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ai
  store i64 %i.ah, ptr %i.aj, align 8, !tbaa !392
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !36 ; 2 uses
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.an
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !392
  %i.aq = zext i32 %i.ae to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.aq
  store i64 %i.ap, ptr %i.ar, align 8, !tbaa !392
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load i32, ptr %i.at, align 4, !tbaa !36 ; 2 uses
  %i.av = zext i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.av
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !392
  %i.ay = zext i32 %i.am to i64
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ay
  store i64 %i.ax, ptr %i.az, align 8, !tbaa !392
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !36 ; 3 uses
  %i.bd = zext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.bd
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !392
  %i.bg = zext i32 %i.au to i64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.bg
  store i64 %i.bf, ptr %i.bh, align 8, !tbaa !392
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %bb.d, !llvm.loop !629

_ZNK7datalog16relation_manager23default_table_rename_fn11modify_factER7svectorImjE.exit: ; preds = %bb.a, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i, %.epilog-lcssa
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7datalog17tr_infrastructureINS_12table_traitsEE20convenient_rename_fnD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7datalog17tr_infrastructureINS_12table_traitsEE20convenient_rename_fnE, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !449  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN6vectorIjLb0EjED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.c)
          to label %_ZN6vectorIjLb0EjED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #25
  unreachable

_ZN6vectorIjLb0EjED2Ev.exit:                      ; preds = %bb.a, %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7datalog17tr_infrastructureINS_12table_traitsEE25convenient_transformer_fnE, i64 16), ptr %0, align 8, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !385  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %_ZN7datalog17tr_infrastructureINS_12table_traitsEE25convenient_transformer_fnD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN6vectorIjLb0EjED2Ev.exit
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.h)
          to label %_ZN7datalog17tr_infrastructureINS_12table_traitsEE25convenient_transformer_fnD2Ev.exit unwind label %bb.e, !inline_history !615

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #25, !inline_history !615
  unreachable

_ZN7datalog17tr_infrastructureINS_12table_traitsEE25convenient_transformer_fnD2Ev.exit: ; preds = %_ZN6vectorIjLb0EjED2Ev.exit, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7datalog17tr_infrastructureINS_12table_traitsEE20convenient_rename_fnD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #25
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7datalog16relation_manager22default_table_union_fnD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7datalog16relation_manager22default_table_union_fnE, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !385  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN6vectorImLb0EjED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.c)
          to label %_ZN6vectorImLb0EjED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #25
  unreachable

_ZN6vectorImLb0EjED2Ev.exit:                      ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7datalog16relation_manager22default_table_union_fnD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7datalog16relation_manager22default_table_union_fnE, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !385  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN7datalog16relation_manager22default_table_union_fnD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.c)
          to label %_ZN7datalog16relation_manager22default_table_union_fnD2Ev.exit unwind label %bb.c, !inline_history !631

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #25, !inline_history !631
  unreachable

_ZN7datalog16relation_manager22default_table_union_fnD2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7datalog16relation_manager22default_table_union_fnclERNS_10table_baseERKS2_PS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.datalog::table_base::iterator", align 8 ; 12 uses
  %5 = alloca %"class.datalog::table_base::iterator", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.a = load ptr, ptr %2, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  %i.c = load ptr, ptr %i.b, align 8
  call void %i.c(ptr dead_on_unwind nonnull writable sret(%"class.datalog::table_base::iterator") align 8 %4, ptr noundef nonnull align 8 dereferenceable(36) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.d = load ptr, ptr %2, align 8, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 208
  %i.f = load ptr, ptr %i.e, align 8
  invoke void %i.f(ptr dead_on_unwind nonnull writable sret(%"class.datalog::table_base::iterator") align 8 %5, ptr noundef nonnull align 8 dereferenceable(36) %2)
          to label %_ZN7datalog10table_base8iteratorppEv.exit.preheader unwind label %bb.m

_ZN7datalog10table_base8iteratorppEv.exit.preheader: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %_ZN7datalog10table_base8iteratorppEv.exit.us, label %_ZN7datalog10table_base8iteratorppEv.exit

_ZN7datalog10table_base8iteratorppEv.exit.us:     ; preds = %_ZN7datalog10table_base8iteratorppEv.exit.preheader, %bb.e
  %i.h = load ptr, ptr %4, align 8, !tbaa !595    ; 2 uses
  %i.i = load ptr, ptr %5, align 8, !tbaa !595
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = invoke noundef zeroext i1 %i.l(ptr noundef nonnull align 8 dereferenceable(12) %i.h, ptr noundef nonnull align 8 dereferenceable(12) %i.i)
          to label %bb.b unwind label %.split.us, !inline_history !598

bb.b:                                             ; preds = %_ZN7datalog10table_base8iteratorppEv.exit.us
  br i1 %i.m, label %.split19.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %4, align 8, !tbaa !595    ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = invoke noundef nonnull align 8 dereferenceable(16) ptr %i.q(ptr noundef nonnull align 8 dereferenceable(12) %i.n)
          to label %_ZN7datalog10table_base8iteratordeEv.exit.us unwind label %.split21.us, !inline_history !602 ; 2 uses

_ZN7datalog10table_base8iteratordeEv.exit.us:     ; preds = %bb.c
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  invoke void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %bb.d unwind label %.split21.us

bb.d:                                             ; preds = %_ZN7datalog10table_base8iteratordeEv.exit.us
  %i.v = load ptr, ptr %1, align 8, !tbaa !8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.x = load ptr, ptr %i.w, align 8
  invoke void %i.x(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %bb.e unwind label %.split21.us

bb.e:                                             ; preds = %bb.d
  %i.y = load ptr, ptr %4, align 8, !tbaa !595    ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8
  invoke void %i.ab(ptr noundef nonnull align 8 dereferenceable(12) %i.y)
          to label %_ZN7datalog10table_base8iteratorppEv.exit.us unwind label %.split.us, !inline_history !603

.split.us:                                        ; preds = %bb.e, %_ZN7datalog10table_base8iteratorppEv.exit.us
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

.split21.us:                                      ; preds = %bb.d, %_ZN7datalog10table_base8iteratordeEv.exit.us, %bb.c
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

_ZN7datalog10table_base8iteratorppEv.exit:        ; preds = %_ZN7datalog10table_base8iteratorppEv.exit.preheader, %bb.s
  %i.ae = load ptr, ptr %4, align 8, !tbaa !595   ; 2 uses
  %i.af = load ptr, ptr %5, align 8, !tbaa !595
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = invoke noundef zeroext i1 %i.ai(ptr noundef nonnull align 8 dereferenceable(12) %i.ae, ptr noundef nonnull align 8 dereferenceable(12) %i.af)
          to label %bb.f unwind label %.split, !inline_history !598

bb.f:                                             ; preds = %_ZN7datalog10table_base8iteratorppEv.exit
  br i1 %i.aj, label %.split19.us, label %bb.n

.split19.us:                                      ; preds = %bb.f, %bb.b
  %i.ak = load ptr, ptr %5, align 8, !tbaa !595   ; 5 uses
end_hunk_0
