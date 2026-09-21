Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/goal?download=true
inline.NumInlined: 1183
inline.NumDeleted: 414
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZNK4goal9translateER15ast_translation:bb.a
  %i.dv = add i32 %i.du, 1
  store i32 %i.dv, ptr %i.dt, align 8, !tbaa !103
  br label %.thread58

.thread58:                                        ; preds = %bb.ae, %bb.ah, %bb.ag
  %i.dw = phi ptr [ null, %bb.ag ], [ %i.ds, %bb.ah ], [ null, %bb.ae ]
  %i.dx = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !101 ; 5 uses
  %.not.i.i53 = icmp eq ptr %i.dy, null
  br i1 %.not.i.i53, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %.thread58
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8 ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !103
  %i.eb = add i32 %i.ea, -1                       ; 2 uses
  store i32 %i.eb, ptr %i.dz, align 8, !tbaa !103
  %i.ec = icmp eq i32 %i.eb, 0
  br i1 %i.ec, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ed = load ptr, ptr %i.dy, align 8, !tbaa !105
  %i.ee = load ptr, ptr %i.ed, align 8
  call void %i.ee(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %i.dy) #21, !inline_history !2
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull align 8 dereferenceable(12) %i.dy)
          to label %bb.ak unwind label %bb.g

bb.ak:                                            ; preds = %bb.ai, %.thread58, %bb.aj
  store ptr %i.dw, ptr %i.dx, align 8, !tbaa !101
  %i.ef = load ptr, ptr %i.d, align 8, !tbaa !151 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ef, null
  br i1 %.not.i.i.i, label %_ZN27expr_dependency_translationD2Ev.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.eg = getelementptr inbounds i8, ptr %i.ef, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.eg)
          to label %_ZN27expr_dependency_translationD2Ev.exit unwind label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.eh = landingpad { ptr, i32 }
          catch ptr null
  %i.ei = extractvalue { ptr, i32 } %i.eh, 0
  call void @__clang_call_terminate(ptr %i.ei) #22
  unreachable

_ZN27expr_dependency_translationD2Ev.exit:        ; preds = %bb.ak, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret ptr %i.g

bb.an:                                            ; preds = %bb.g, %bb.r, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %i.az, %bb.f ], [ %i.ce, %bb.r ], [ %i.ba, %bb.g ]
  call void @_ZN27expr_dependency_translationD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  resume { ptr, i32 } %.pn.pn
}

declare noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef) local_unnamed_addr #8

declare noundef ptr @_ZN27expr_dependency_translationclEPN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #8

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN27expr_dependency_translationD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !151  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN6vectorIP4exprLb0EjED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.c)
          to label %_ZN6vectorIP4exprLb0EjED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #22
  unreachable

_ZN6vectorIP4exprLb0EjED2Ev.exit:                 ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK4goal13sat_preservedEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(124) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load i32, ptr %i.a, align 8
  %spec.select = icmp sgt i32 %i.b, -1
  ret i1 %spec.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK4goal15unsat_preservedEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(124) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 1073741824
  %spec.select = icmp eq i32 %i.c, 0
  ret i1 %spec.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK4goal14is_decided_satEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(124) %0) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNK4goal4sizeEv.exit.thread, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.a, %bb.b
  %.0.i.i.i = phi ptr [ %i.g, %bb.b ], [ %i.b, %bb.a ] ; 5 uses
  %i.d = load i32, ptr %.0.i.i.i, align 8
  %i.e = lshr i32 %i.d, 30
  switch i32 %i.e, label %default.unreachable [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
  ]

bb.b:                                             ; preds = %.preheader.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !28
  br label %.preheader.i.i.i, !llvm.loop !5

bb.c:                                             ; preds = %.preheader.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !28
  %i.j = add i32 %i.i, 1
  br label %_ZNK4goal4sizeEv.exit

bb.d:                                             ; preds = %.preheader.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !28
  %i.m = add i32 %i.l, -1
  br label %_ZNK4goal4sizeEv.exit

bb.e:                                             ; preds = %.preheader.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !28
  br label %_ZNK4goal4sizeEv.exit

default.unreachable:                              ; preds = %.preheader.i.i.i
  unreachable

_ZNK4goal4sizeEv.exit:                            ; preds = %bb.c, %bb.d, %bb.e
  %.07.i.i.i = phi i32 [ %i.o, %bb.e ], [ %i.j, %bb.c ], [ %i.m, %bb.d ]
  %i.p = icmp eq i32 %.07.i.i.i, 0
  br i1 %i.p, label %_ZNK4goal4sizeEv.exit.thread, label %bb.f

_ZNK4goal4sizeEv.exit.thread:                     ; preds = %bb.a, %_ZNK4goal4sizeEv.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.r = load i32, ptr %i.q, align 8
  %spec.select.i = icmp sgt i32 %i.r, -1
  br label %bb.f

bb.f:                                             ; preds = %_ZNK4goal4sizeEv.exit.thread, %_ZNK4goal4sizeEv.exit
  %i.s = phi i1 [ false, %_ZNK4goal4sizeEv.exit ], [ %spec.select.i, %_ZNK4goal4sizeEv.exit.thread ]
  ret i1 %i.s
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK4goal16is_decided_unsatEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(124) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 1610612736
  %i.d = icmp eq i32 %i.c, 536870912
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK4goal10is_decidedEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(124) %0) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNK4goal14is_decided_satEv.exit, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.a, %bb.b
  %.0.i.i.i.i = phi ptr [ %i.g, %bb.b ], [ %i.b, %bb.a ] ; 5 uses
  %i.d = load i32, ptr %.0.i.i.i.i, align 8
  %i.e = lshr i32 %i.d, 30
  switch i32 %i.e, label %default.unreachable [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
  ]

bb.b:                                             ; preds = %.preheader.i.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !28
  br label %.preheader.i.i.i.i, !llvm.loop !5

bb.c:                                             ; preds = %.preheader.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !28
  %i.j = add i32 %i.i, 1
  br label %_ZNK4goal4sizeEv.exit.i

bb.d:                                             ; preds = %.preheader.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !28
  %i.m = add i32 %i.l, -1
  br label %_ZNK4goal4sizeEv.exit.i

bb.e:                                             ; preds = %.preheader.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !28
  br label %_ZNK4goal4sizeEv.exit.i

default.unreachable:                              ; preds = %.preheader.i.i.i.i
  unreachable

_ZNK4goal4sizeEv.exit.i:                          ; preds = %bb.e, %bb.d, %bb.c
  %.07.i.i.i.i = phi i32 [ %i.o, %bb.e ], [ %i.j, %bb.c ], [ %i.m, %bb.d ]
  %1 = icmp eq i32 %.07.i.i.i.i, 0
  br i1 %1, label %_ZNK4goal14is_decided_satEv.exit, label %_ZNK4goal4sizeEv.exit.i._ZNK4goal14is_decided_satEv.exit.thread_crit_edge

_ZNK4goal4sizeEv.exit.i._ZNK4goal14is_decided_satEv.exit.thread_crit_edge: ; preds = %_ZNK4goal4sizeEv.exit.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.pre = load i32, ptr %.phi.trans.insert, align 8
  br label %_ZNK4goal14is_decided_satEv.exit.thread

_ZNK4goal14is_decided_satEv.exit:                 ; preds = %bb.a, %_ZNK4goal4sizeEv.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.q = load i32, ptr %i.p, align 8              ; 2 uses
  %spec.select.i.i.a = icmp sgt i32 %i.q, -1
  br i1 %spec.select.i.i.a, label %bb.f, label %_ZNK4goal14is_decided_satEv.exit.thread

_ZNK4goal14is_decided_satEv.exit.thread:          ; preds = %_ZNK4goal4sizeEv.exit.i._ZNK4goal14is_decided_satEv.exit.thread_crit_edge, %_ZNK4goal14is_decided_satEv.exit
  %i.r = phi i32 [ %.pre, %_ZNK4goal4sizeEv.exit.i._ZNK4goal14is_decided_satEv.exit.thread_crit_edge ], [ %i.q, %_ZNK4goal14is_decided_satEv.exit ]
  %i.s = and i32 %i.r, 1610612736
  %i.t = icmp eq i32 %i.s, 536870912
  br label %bb.f

bb.f:                                             ; preds = %_ZNK4goal14is_decided_satEv.exit.thread, %_ZNK4goal14is_decided_satEv.exit
  %2 = phi i1 [ true, %_ZNK4goal14is_decided_satEv.exit ], [ %i.t, %_ZNK4goal14is_decided_satEv.exit.thread ]
  ret i1 %2
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_Z8is_equalRK4goalS1_(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef nonnull align 8 dereferenceable(124) %1) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.ast_fast_mark, align 8       ; 13 uses
  %3 = alloca %class.ast_fast_mark.48, align 8    ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 3 uses
  %i.c = icmp eq ptr %i.b, null                   ; 2 uses
  br i1 %i.c, label %_ZNK4goal4sizeEv.exit, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.a, %bb.b
  %.0.i.i.i = phi ptr [ %i.g, %bb.b ], [ %i.b, %bb.a ] ; 5 uses
  %i.d = load i32, ptr %.0.i.i.i, align 8
  %i.e = lshr i32 %i.d, 30
  switch i32 %i.e, label %.preheader.i.i.i.unreachabledefault [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
  ]

bb.b:                                             ; preds = %.preheader.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !28
  br label %.preheader.i.i.i, !llvm.loop !5

bb.c:                                             ; preds = %.preheader.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !28
  %i.j = add i32 %i.i, 1
  br label %_ZNK4goal4sizeEv.exit

bb.d:                                             ; preds = %.preheader.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !28
  %i.m = add i32 %i.l, -1
  br label %_ZNK4goal4sizeEv.exit

bb.e:                                             ; preds = %.preheader.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !28
  br label %_ZNK4goal4sizeEv.exit

.preheader.i.i.i.unreachabledefault:              ; preds = %.preheader.i.i.i
  unreachable

default.unreachable:                              ; preds = %.preheader.i.i.i40, %.preheader.i.i.i45
  unreachable

_ZNK4goal4sizeEv.exit:                            ; preds = %bb.a, %bb.c, %bb.d, %bb.e
  %.07.i.i.i = phi i32 [ %i.o, %bb.e ], [ %i.j, %bb.c ], [ %i.m, %bb.d ], [ 0, %bb.a ]
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !31   ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %_ZNK4goal4sizeEv.exit44, label %.preheader.i.i.i40

.preheader.i.i.i40:                               ; preds = %_ZNK4goal4sizeEv.exit, %bb.f
  %.0.i.i.i41 = phi ptr [ %i.v, %bb.f ], [ %i.q, %_ZNK4goal4sizeEv.exit ] ; 5 uses
  %i.s = load i32, ptr %.0.i.i.i41, align 8
  %i.t = lshr i32 %i.s, 30
  switch i32 %i.t, label %default.unreachable [
    i32 0, label %bb.f
    i32 1, label %bb.g
    i32 2, label %bb.h
    i32 3, label %bb.i
  ]

bb.f:                                             ; preds = %.preheader.i.i.i40
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i.i.i41, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !28
  br label %.preheader.i.i.i40, !llvm.loop !5

bb.g:                                             ; preds = %.preheader.i.i.i40
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i.i.i41, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !28
  %i.y = add i32 %i.x, 1
  br label %_ZNK4goal4sizeEv.exit44

bb.h:                                             ; preds = %.preheader.i.i.i40
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i.i.i41, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !28
  %i.ab = add i32 %i.aa, -1
  br label %_ZNK4goal4sizeEv.exit44

bb.i:                                             ; preds = %.preheader.i.i.i40
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i.i.i41, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !28
  br label %_ZNK4goal4sizeEv.exit44

_ZNK4goal4sizeEv.exit44:                          ; preds = %_ZNK4goal4sizeEv.exit, %bb.g, %bb.h, %bb.i
  %.07.i.i.i42 = phi i32 [ %i.ad, %bb.i ], [ %i.y, %bb.g ], [ %i.ab, %bb.h ], [ 0, %_ZNK4goal4sizeEv.exit ]
  %.not = icmp eq i32 %.07.i.i.i, %.07.i.i.i42
  br i1 %.not, label %bb.j, label %bb.am

bb.j:                                             ; preds = %_ZNK4goal4sizeEv.exit44
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.ae, ptr %2, align 8, !tbaa !189
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  store i32 0, ptr %i.af, align 8, !tbaa !190
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 3 uses
  store i32 16, ptr %i.ag, align 4, !tbaa !191
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.ah, ptr %3, align 8, !tbaa !189
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 7 uses
  store i32 0, ptr %i.ai, align 8, !tbaa !190
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 3 uses
  store i32 16, ptr %i.aj, align 4, !tbaa !191
  br i1 %i.c, label %thread-pre-split, label %.preheader.i.i.i45

.preheader.i.i.i45:                               ; preds = %bb.j, %bb.k
  %.0.i.i.i46 = phi ptr [ %i.an, %bb.k ], [ %i.b, %bb.j ] ; 5 uses
  %i.ak = load i32, ptr %.0.i.i.i46, align 8
  %i.al = lshr i32 %i.ak, 30
  switch i32 %i.al, label %default.unreachable [
    i32 0, label %bb.k
    i32 1, label %bb.l
    i32 2, label %bb.m
    i32 3, label %bb.n
  ]

bb.k:                                             ; preds = %.preheader.i.i.i45
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i.i.i46, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !28
  br label %.preheader.i.i.i45, !llvm.loop !5

bb.l:                                             ; preds = %.preheader.i.i.i45
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.i.i.i46, i64 4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !28
  %i.aq = add i32 %i.ap, 1
  br label %_ZNK4goal4sizeEv.exit49

bb.m:                                             ; preds = %.preheader.i.i.i45
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i.i.i46, i64 4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !28
  %i.at = add i32 %i.as, -1
  br label %_ZNK4goal4sizeEv.exit49

bb.n:                                             ; preds = %.preheader.i.i.i45
  %i.au = getelementptr inbounds nuw i8, ptr %.0.i.i.i46, i64 4
  %i.av = load i32, ptr %i.au, align 4, !tbaa !28
  br label %_ZNK4goal4sizeEv.exit49

_ZNK4goal4sizeEv.exit49:                          ; preds = %bb.l, %bb.m, %bb.n
  %.07.i.i.i47 = phi i32 [ %i.av, %bb.n ], [ %i.aq, %bb.l ], [ %i.at, %bb.m ] ; 3 uses
  %.not121 = icmp eq i32 %.07.i.i.i47, 0
  br i1 %.not121, label %thread-pre-split, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK4goal4sizeEv.exit49
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 120
  br label %bb.o

.lr.ph118:                                        ; preds = %bb.x
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 120
  br label %bb.y

bb.o:                                             ; preds = %.lr.ph, %bb.x
  %.027113 = phi i32 [ 0, %.lr.ph ], [ %i.cw, %bb.x ] ; 2 uses
  %.032112 = phi i32 [ 0, %.lr.ph ], [ %.133, %bb.x ] ; 2 uses
  %i.ay = load i32, ptr %i.aw, align 8
  %i.az = and i32 %i.ay, 536870912
  %.not.i = icmp eq i32 %i.az, 0
  %i.ba = load ptr, ptr %0, align 8, !tbaa !113, !nonnull !114, !align !115 ; 2 uses
  br i1 %.not.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 840
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 616
  %i.bd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14parray_managerIN11ast_manager17expr_array_configEE3getERKNS2_3refEj(ptr noundef nonnull align 8 dereferenceable(32) %i.bc, ptr noundef nonnull align 8 dereferenceable(12) %i.a, i32 noundef %.027113)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.p, %bb.q
  %.in.i = phi ptr [ %i.bb, %bb.p ], [ %i.bd, %bb.q ]
  %i.be = load ptr, ptr %.in.i, align 8, !tbaa !157 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 4 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4            ; 2 uses
  %i.bh = and i32 %i.bg, 65536
  %.not95 = icmp eq i32 %i.bh, 0
  br i1 %.not95, label %bb.t, label %bb.x

bb.s:                                             ; preds = %bb.v, %bb.u, %bb.q
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.t:                                             ; preds = %bb.r
  %i.bj = or disjoint i32 %i.bg, 65536
  store i32 %i.bj, ptr %i.bf, align 4
  %i.bk = load i32, ptr %i.af, align 8, !tbaa !190 ; 2 uses
  %i.bl = load i32, ptr %i.ag, align 4, !tbaa !191 ; 2 uses
  %.not.i.i = icmp ult i32 %i.bk, %i.bl
  br i1 %.not.i.i, label %._crit_edge.i.i, label %bb.u

end_hunk_0
