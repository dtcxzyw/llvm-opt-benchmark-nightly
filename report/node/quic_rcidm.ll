inline.NumInlined: 46
inline.NumDeleted: 20
begin_hunk_0_@rcidm_update:bb.a
bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !9
  %i.f = tail call ptr @ossl_pqueue_peek(ptr noundef %i.e) #9 ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @rcidm_transition_rcid(ptr noundef nonnull %0, ptr noundef %i.f, i32 noundef 1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pr = load ptr, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %.not19 = icmp eq ptr %.pr, null
  br i1 %.not19, label %bb.e, label %.thread

.thread:                                          ; preds = %bb.a, %bb.d
  %i.g = phi ptr [ %.pr, %bb.d ], [ %i.b, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.i = load i8, ptr %0, align 1, !tbaa !23      ; 3 uses
  %i.j = load i8, ptr %i.h, align 1, !tbaa !23
  %.not.i.i = icmp ne i8 %i.i, %i.j
  %i.k = icmp ugt i8 %i.i, 20
  %or.cond.i.i = or i1 %i.k, %.not.i.i
  br i1 %or.cond.i.i, label %ossl_quic_conn_id_eq.exit.thread.i, label %ossl_quic_conn_id_eq.exit.i

ossl_quic_conn_id_eq.exit.i:                      ; preds = %.thread
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 17
  %i.n = zext nneg i8 %i.i to i64
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull readonly %i.l, ptr nonnull readonly %i.m, i64 %i.n)
  %.not.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not.i, label %rcidm_set_preferred_rcid.exit, label %ossl_quic_conn_id_eq.exit.thread.i

ossl_quic_conn_id_eq.exit.thread.i:               ; preds = %ossl_quic_conn_id_eq.exit.i, %.thread
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(21) %0, ptr noundef nonnull readonly align 1 dereferenceable(21) %i.h, i64 21, i1 false), !tbaa.struct !17
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.p = load i8, ptr %i.o, align 8
  %i.q = or i8 %i.p, 3
  store i8 %i.q, ptr %i.o, align 8
  br label %rcidm_set_preferred_rcid.exit

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.s = load i8, ptr %i.r, align 8               ; 5 uses
  %i.t = and i8 %i.s, 20
  %or.cond = icmp eq i8 %i.t, 16
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 42 ; 2 uses
  %i.v = load i8, ptr %0, align 1, !tbaa !23      ; 3 uses
  %i.w = load i8, ptr %i.u, align 1, !tbaa !23
  %.not.i.i25 = icmp ne i8 %i.v, %i.w
  %i.x = icmp ugt i8 %i.v, 20
  %or.cond.i.i26 = or i1 %i.x, %.not.i.i25
  br i1 %or.cond.i.i26, label %ossl_quic_conn_id_eq.exit.thread.i30, label %ossl_quic_conn_id_eq.exit.i27

ossl_quic_conn_id_eq.exit.i27:                    ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 43
  %i.aa = zext nneg i8 %i.v to i64
  %bcmp.i.i28 = tail call i32 @bcmp(ptr nonnull readonly %i.y, ptr nonnull readonly %i.z, i64 %i.aa)
  %.not.i29 = icmp eq i32 %bcmp.i.i28, 0
  br i1 %.not.i29, label %rcidm_set_preferred_rcid.exit, label %ossl_quic_conn_id_eq.exit.thread.i30

ossl_quic_conn_id_eq.exit.thread.i30:             ; preds = %ossl_quic_conn_id_eq.exit.i27, %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(21) %0, ptr noundef nonnull readonly align 1 dereferenceable(21) %i.u, i64 21, i1 false), !tbaa.struct !17
  %i.ab = or i8 %i.s, 3
  store i8 %i.ab, ptr %i.r, align 8
  br label %rcidm_set_preferred_rcid.exit

bb.g:                                             ; preds = %bb.e
  %i.ac = and i8 %i.s, 12
  %or.cond24 = icmp eq i8 %i.ac, 8
  br i1 %or.cond24, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 21 ; 2 uses
  %i.ae = load i8, ptr %0, align 1, !tbaa !23     ; 3 uses
  %i.af = load i8, ptr %i.ad, align 1, !tbaa !23
  %.not.i.i32 = icmp ne i8 %i.ae, %i.af
  %i.ag = icmp ugt i8 %i.ae, 20
  %or.cond.i.i33 = or i1 %i.ag, %.not.i.i32
  br i1 %or.cond.i.i33, label %ossl_quic_conn_id_eq.exit.thread.i37, label %ossl_quic_conn_id_eq.exit.i34

ossl_quic_conn_id_eq.exit.i34:                    ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.aj = zext nneg i8 %i.ae to i64
  %bcmp.i.i35 = tail call i32 @bcmp(ptr nonnull readonly %i.ah, ptr nonnull readonly %i.ai, i64 %i.aj)
  %.not.i36 = icmp eq i32 %bcmp.i.i35, 0
  br i1 %.not.i36, label %rcidm_set_preferred_rcid.exit, label %ossl_quic_conn_id_eq.exit.thread.i37

ossl_quic_conn_id_eq.exit.thread.i37:             ; preds = %ossl_quic_conn_id_eq.exit.i34, %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(21) %0, ptr noundef nonnull readonly align 1 dereferenceable(21) %i.ad, i64 21, i1 false), !tbaa.struct !17
  %i.ak = or i8 %i.s, 3
  store i8 %i.ak, ptr %i.r, align 8
  br label %rcidm_set_preferred_rcid.exit

bb.i:                                             ; preds = %bb.g
  %i.al = and i8 %i.s, -4
  %i.am = or disjoint i8 %i.al, 1
  store i8 %i.am, ptr %i.r, align 8
  br label %rcidm_set_preferred_rcid.exit

rcidm_set_preferred_rcid.exit:                    ; preds = %ossl_quic_conn_id_eq.exit.thread.i37, %ossl_quic_conn_id_eq.exit.i34, %ossl_quic_conn_id_eq.exit.thread.i30, %ossl_quic_conn_id_eq.exit.i27, %ossl_quic_conn_id_eq.exit.thread.i, %ossl_quic_conn_id_eq.exit.i, %bb.i
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ossl_quic_rcidm_free(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !22
  tail call void @CRYPTO_free(ptr noundef %i.c, ptr noundef nonnull @.str, i32 noundef 310) #9
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !9
  %i.f = tail call ptr @ossl_pqueue_pop(ptr noundef %i.e) #9 ; 2 uses
  %.not14 = icmp eq ptr %i.f, null
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %i.g = phi ptr [ %i.i, %.lr.ph ], [ %i.f, %bb.b ]
  tail call void @CRYPTO_free(ptr noundef nonnull %i.g, ptr noundef nonnull @.str, i32 noundef 312) #9
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !9
  %i.i = tail call ptr @ossl_pqueue_pop(ptr noundef %i.h) #9 ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !24

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val = load ptr, ptr %i.j, align 8, !tbaa !26  ; 2 uses
  %.not1315 = icmp eq ptr %.val, null
  br i1 %.not1315, label %.critedge, label %.lr.ph18

.lr.ph18:                                         ; preds = %._crit_edge, %.lr.ph18
  %.016 = phi ptr [ %.0.val, %.lr.ph18 ], [ %.val, %._crit_edge ] ; 2 uses
  %.0.val = load ptr, ptr %.016, align 8, !tbaa !27 ; 2 uses
  tail call void @CRYPTO_free(ptr noundef nonnull %.016, ptr noundef nonnull @.str, i32 noundef 315) #9
  %.not13 = icmp eq ptr %.0.val, null
  br i1 %.not13, label %.critedge, label %.lr.ph18, !llvm.loop !28

.critedge:                                        ; preds = %.lr.ph18, %._crit_edge
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !9
  tail call void @ossl_pqueue_free(ptr noundef %i.k) #9
  tail call void @CRYPTO_free(ptr noundef nonnull %0, ptr noundef nonnull @.str, i32 noundef 318) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %.critedge
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ossl_quic_rcidm_on_handshake_complete(ptr noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.b = load i8, ptr %i.a, align 8               ; 3 uses
  %i.c = and i8 %i.b, 4
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = or disjoint i8 %i.b, 4
  store i8 %i.d, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !29
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %rcidm_should_roll.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = load i64, ptr %i.h, align 8, !tbaa !30
  %i.j = icmp ult i64 %i.i, 10000
  %i.k = and i8 %i.b, 64
  %.not.i = icmp eq i8 %i.k, 0
  %or.cond.i = and i1 %.not.i, %i.j
  br i1 %or.cond.i, label %rcidm_tick.exit, label %rcidm_should_roll.exit.thread.i

rcidm_should_roll.exit.thread.i:                  ; preds = %bb.c, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !9
  %i.n = tail call ptr @ossl_pqueue_peek(ptr noundef %i.m) #9 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %rcidm_tick.exit, label %bb.d

bb.d:                                             ; preds = %rcidm_should_roll.exit.thread.i
  tail call fastcc void @rcidm_transition_rcid(ptr noundef nonnull %0, ptr noundef %i.n, i32 noundef 1)
  %i.p = load i64, ptr %i.e, align 8, !tbaa !29
  %i.q = add i64 %i.p, 1
  store i64 %i.q, ptr %i.e, align 8, !tbaa !29
  %i.r = load i8, ptr %i.a, align 8
  %i.s = and i8 %i.r, -65
  store i8 %i.s, ptr %i.a, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !30   ; 2 uses
  %1 = urem i64 %i.u, 10000
  %.narrow.i.i = icmp ugt i64 %i.u, 10000
  %storemerge.i.i = select i1 %.narrow.i.i, i64 %1, i64 0
  store i64 %storemerge.i.i, ptr %i.t, align 8, !tbaa !30
  br label %rcidm_tick.exit

rcidm_tick.exit:                                  ; preds = %bb.c, %rcidm_should_roll.exit.thread.i, %bb.d
  tail call fastcc void @rcidm_update(ptr noundef nonnull %0)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %rcidm_tick.exit
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ossl_quic_rcidm_on_packet_sent(ptr noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !30
  %i.d = add i64 %i.c, %1                         ; 2 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !30
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.f = load i8, ptr %i.e, align 8               ; 2 uses
  %i.g = and i8 %i.f, 4
  %.not.i.i = icmp eq i8 %i.g, 0
  br i1 %.not.i.i, label %rcidm_tick.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !29
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %rcidm_should_roll.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = icmp ult i64 %i.d, 10000
  %i.l = and i8 %i.f, 64
  %.not.i = icmp eq i8 %i.l, 0
  %or.cond.i = and i1 %i.k, %.not.i
  br i1 %or.cond.i, label %rcidm_tick.exit, label %rcidm_should_roll.exit.thread.i

rcidm_should_roll.exit.thread.i:                  ; preds = %bb.d, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !9
  %i.o = tail call ptr @ossl_pqueue_peek(ptr noundef %i.n) #9 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %rcidm_tick.exit, label %bb.e

bb.e:                                             ; preds = %rcidm_should_roll.exit.thread.i
  tail call fastcc void @rcidm_transition_rcid(ptr noundef nonnull %0, ptr noundef %i.o, i32 noundef 1)
  %i.q = load i64, ptr %i.h, align 8, !tbaa !29
  %i.r = add i64 %i.q, 1
  store i64 %i.r, ptr %i.h, align 8, !tbaa !29
  %i.s = load i8, ptr %i.e, align 8
  %i.t = and i8 %i.s, -65
  store i8 %i.t, ptr %i.e, align 8
  %i.u = load i64, ptr %i.b, align 8, !tbaa !30   ; 2 uses
  %2 = urem i64 %i.u, 10000
  %.narrow.i.i = icmp ugt i64 %i.u, 10000
  %storemerge.i.i = select i1 %.narrow.i.i, i64 %2, i64 0
  store i64 %storemerge.i.i, ptr %i.b, align 8, !tbaa !30
  br label %rcidm_tick.exit

rcidm_tick.exit:                                  ; preds = %bb.b, %bb.d, %rcidm_should_roll.exit.thread.i, %bb.e
  tail call fastcc void @rcidm_update(ptr noundef nonnull %0)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %rcidm_tick.exit
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ossl_quic_rcidm_request_roll(ptr noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.b = load i8, ptr %i.a, align 8               ; 2 uses
  %i.c = or i8 %i.b, 64
  store i8 %i.c, ptr %i.a, align 8
  %i.d = and i8 %i.b, 4
  %.not.i.i = icmp eq i8 %i.d, 0
  br i1 %.not.i.i, label %rcidm_tick.exit, label %rcidm_should_roll.exit.thread.i

rcidm_should_roll.exit.thread.i:                  ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !9
  %i.g = tail call ptr @ossl_pqueue_peek(ptr noundef %i.f) #9 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %rcidm_tick.exit, label %bb.b

bb.b:                                             ; preds = %rcidm_should_roll.exit.thread.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  tail call fastcc void @rcidm_transition_rcid(ptr noundef nonnull %0, ptr noundef %i.g, i32 noundef 1)
  %i.j = load i64, ptr %i.i, align 8, !tbaa !29
  %i.k = add i64 %i.j, 1
  store i64 %i.k, ptr %i.i, align 8, !tbaa !29
  %i.l = load i8, ptr %i.a, align 8
  %i.m = and i8 %i.l, -65
  store i8 %i.m, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !30   ; 2 uses
  %1 = urem i64 %i.o, 10000
  %.narrow.i.i = icmp ugt i64 %i.o, 10000
  %storemerge.i.i = select i1 %.narrow.i.i, i64 %1, i64 0
  store i64 %storemerge.i.i, ptr %i.n, align 8, !tbaa !30
  br label %rcidm_tick.exit

rcidm_tick.exit:                                  ; preds = %bb.a, %rcidm_should_roll.exit.thread.i, %bb.b
  tail call fastcc void @rcidm_update(ptr noundef nonnull %0)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ossl_quic_rcidm_add_from_initial(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 5 uses
  %i.b = load i8, ptr %i.a, align 8
  %i.c = and i8 %i.b, 36
  %or.cond = icmp eq i8 %i.c, 0
  br i1 %or.cond, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = tail call fastcc ptr @rcidm_create_rcid(ptr noundef nonnull %0, i64 noundef 0, ptr noundef %1, i32 noundef 0)
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.a, align 8               ; 3 uses
  %i.g = or i8 %i.f, 32
  store i8 %i.g, ptr %i.a, align 8
  %i.h = and i8 %i.f, 4
  %.not.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i.i, label %rcidm_tick.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !29
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %rcidm_should_roll.exit.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.m = load i64, ptr %i.l, align 8, !tbaa !30
  %i.n = icmp ult i64 %i.m, 10000
  %i.o = and i8 %i.f, 64
  %.not.i = icmp eq i8 %i.o, 0
  %or.cond.i = and i1 %.not.i, %i.n
  br i1 %or.cond.i, label %rcidm_tick.exit, label %rcidm_should_roll.exit.thread.i

rcidm_should_roll.exit.thread.i:                  ; preds = %bb.e, %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !9
  %i.r = tail call ptr @ossl_pqueue_peek(ptr noundef %i.q) #9 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %rcidm_tick.exit, label %bb.f

bb.f:                                             ; preds = %rcidm_should_roll.exit.thread.i
  tail call fastcc void @rcidm_transition_rcid(ptr noundef nonnull %0, ptr noundef %i.r, i32 noundef 1)
  %i.t = load i64, ptr %i.i, align 8, !tbaa !29
  %i.u = add i64 %i.t, 1
  store i64 %i.u, ptr %i.i, align 8, !tbaa !29
  %i.v = load i8, ptr %i.a, align 8
  %i.w = and i8 %i.v, -65
  store i8 %i.w, ptr %i.a, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !30   ; 2 uses
  %2 = urem i64 %i.y, 10000
  %.narrow.i.i = icmp ugt i64 %i.y, 10000
  %storemerge.i.i = select i1 %.narrow.i.i, i64 %2, i64 0
  store i64 %storemerge.i.i, ptr %i.x, align 8, !tbaa !30
  br label %rcidm_tick.exit

rcidm_tick.exit:                                  ; preds = %bb.c, %bb.e, %rcidm_should_roll.exit.thread.i, %bb.f
  tail call fastcc void @rcidm_update(ptr noundef nonnull %0)
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.a, %rcidm_tick.exit
  %.0 = phi i32 [ 1, %rcidm_tick.exit ], [ 0, %bb.a ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @rcidm_create_rcid(ptr noundef captures(none) %0, i64 noundef %1, ptr noundef readonly captures(none) %2, i32 noundef range(i32 0, 3) %3) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %2, align 1, !tbaa !23      ; 2 uses
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ugt i8 %i.a, 20
  %i.d = icmp ugt i64 %1, 4611686018427387903
  %or.cond = or i1 %i.d, %i.c
  br i1 %or.cond, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !9
  %i.g = tail call i64 @ossl_pqueue_num(ptr noundef %i.f) #9
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.i = load i64, ptr %i.h, align 8, !tbaa !31
  %i.j = add i64 %i.i, %i.g
  %i.k = icmp slt i64 %i.j, 0
  br i1 %i.k, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = tail call noalias ptr @CRYPTO_zalloc(i64 noundef 64, ptr noundef nonnull @.str, i32 noundef 354) #9 ; 14 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store i64 %1, ptr %i.n, align 8, !tbaa !19
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(21) %i.o, ptr noundef nonnull align 1 dereferenceable(21) %2, i64 21, i1 false), !tbaa.struct !17
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 56 ; 3 uses
  %i.q = trunc nuw nsw i32 %3 to i8
  %i.r = load i8, ptr %i.p, align 8
  %i.s = shl nuw nsw i8 %i.q, 2
  %i.t = and i8 %i.r, -16
  %i.u = or disjoint i8 %i.t, %i.s                ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.w = load i64, ptr %i.v, align 8, !tbaa !32
  %.not = icmp ult i64 %1, %i.w
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 48 ; 2 uses
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i8 %i.u, ptr %i.p, align 8
  %i.y = load ptr, ptr %i.e, align 8, !tbaa !9
  %i.z = tail call i32 @ossl_pqueue_push(ptr noundef %i.y, ptr noundef nonnull %i.l, ptr noundef nonnull %i.x) #9
  %.not30 = icmp eq i32 %i.z, 0
  br i1 %.not30, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  tail call void @CRYPTO_free(ptr noundef nonnull %i.l, ptr noundef nonnull @.str, i32 noundef 365) #9
  br label %bb.l

bb.h:                                             ; preds = %bb.e
  %i.aa = or disjoint i8 %i.u, 2
  store i8 %i.aa, ptr %i.p, align 8
  store i64 -1, ptr %i.x, align 8, !tbaa !33
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !34 ; 3 uses
  %.not.i = icmp eq ptr %i.ad, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.l, ptr %i.ad, align 8, !tbaa !27
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !35
  store ptr null, ptr %i.l, align 8, !tbaa !27
  store ptr %i.l, ptr %i.ac, align 8, !tbaa !34
  %i.af = load ptr, ptr %i.ab, align 8, !tbaa !26
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.k, label %ossl_list_retiring_insert_tail.exit

bb.k:                                             ; preds = %bb.j
  store ptr %i.l, ptr %i.ab, align 8, !tbaa !26
  br label %ossl_list_retiring_insert_tail.exit

ossl_list_retiring_insert_tail.exit:              ; preds = %bb.j, %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.ai = load <2 x i64>, ptr %i.ah, align 8, !tbaa !36
  %i.aj = add <2 x i64> %i.ai, splat (i64 1)
  store <2 x i64> %i.aj, ptr %i.ah, align 8, !tbaa !36
  br label %bb.l

bb.l:                                             ; preds = %ossl_list_retiring_insert_tail.exit, %bb.f, %bb.d, %bb.a, %bb.b, %bb.c, %bb.g
  %.0 = phi ptr [ null, %bb.g ], [ null, %bb.a ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ], [ %i.l, %bb.f ], [ %i.l, %ossl_list_retiring_insert_tail.exit ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ossl_quic_rcidm_add_from_server_retry(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8               ; 2 uses
  %i.c = and i8 %i.b, 20
  %or.cond = icmp eq i8 %i.c, 0
  br i1 %or.cond, label %rcidm_tick.exit, label %bb.b

rcidm_tick.exit:                                  ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 42
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(21) %i.d, ptr noundef nonnull align 1 dereferenceable(21) %1, i64 21, i1 false), !tbaa.struct !17
  %i.e = or disjoint i8 %i.b, 16
  store i8 %i.e, ptr %i.a, align 8
  tail call fastcc void @rcidm_update(ptr noundef nonnull %0)
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %rcidm_tick.exit
  %.0 = phi i32 [ 1, %rcidm_tick.exit ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ossl_quic_rcidm_add_from_ncid(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !37
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = tail call fastcc ptr @rcidm_create_rcid(ptr noundef %0, i64 noundef %i.a, ptr noundef nonnull %i.b, i32 noundef 2)
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !40   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !32
  %.not.i = icmp ugt i64 %i.f, %i.h
  br i1 %.not.i, label %bb.c, label %rcidm_handle_retire_prior_to.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !22   ; 9 uses
  %.not15.i = icmp eq ptr %i.j, null
  br i1 %.not15.i, label %rcidm_transition_rcid.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.l = load i64, ptr %i.k, align 8, !tbaa !19
  %i.m = icmp ult i64 %i.l, %i.f
  br i1 %i.m, label %bb.e, label %rcidm_transition_rcid.exit.i

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 56 ; 4 uses
  %i.o = load i8, ptr %i.n, align 8               ; 2 uses
  %i.p = and i8 %i.o, 3                           ; 2 uses
  switch i8 %i.p, label %bb.f [
    i8 2, label %rcidm_transition_rcid.exit.i
    i8 0, label %.thread30.i.i
  ]

bb.f:                                             ; preds = %bb.e
  %i.q = and i8 %i.o, -4
  %i.r = or disjoint i8 %i.q, 2
  store i8 %i.r, ptr %i.n, align 8
  %i.s = icmp eq i8 %i.p, 1
  br i1 %i.s, label %bb.g, label %.thread31.i.i

.thread30.i.i:                                    ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !9
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 48 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !33
  %i.x = tail call ptr @ossl_pqueue_remove(ptr noundef %i.u, i64 noundef %i.w) #9, !inline_history !41 ; 0 uses
  store i64 -1, ptr %i.v, align 8, !tbaa !33
  %i.y = load i8, ptr %i.n, align 8
  %i.z = and i8 %i.y, -4
  %i.aa = or disjoint i8 %i.z, 2
  store i8 %i.aa, ptr %i.n, align 8
  br label %.thread31.i.i

bb.g:                                             ; preds = %bb.f
  store ptr null, ptr %i.i, align 8, !tbaa !22
  br label %.thread31.i.i

.thread31.i.i:                                    ; preds = %bb.g, %.thread30.i.i, %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !34 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.thread31.i.i
  store ptr %i.j, ptr %i.ad, align 8, !tbaa !27
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.thread31.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !35
  store ptr null, ptr %i.j, align 8, !tbaa !27
  store ptr %i.j, ptr %i.ac, align 8, !tbaa !34
  %i.af = load ptr, ptr %i.ab, align 8, !tbaa !26
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.j, label %ossl_list_retiring_insert_tail.exit.i.i

bb.j:                                             ; preds = %bb.i
  store ptr %i.j, ptr %i.ab, align 8, !tbaa !26
  br label %ossl_list_retiring_insert_tail.exit.i.i

ossl_list_retiring_insert_tail.exit.i.i:          ; preds = %bb.j, %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.ai = load <2 x i64>, ptr %i.ah, align 8, !tbaa !36
  %i.aj = add <2 x i64> %i.ai, splat (i64 1)
  store <2 x i64> %i.aj, ptr %i.ah, align 8, !tbaa !36
  br label %rcidm_transition_rcid.exit.i

rcidm_transition_rcid.exit.i:                     ; preds = %ossl_list_retiring_insert_tail.exit.i.i, %bb.e, %bb.d, %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !9
  %i.am = tail call ptr @ossl_pqueue_peek(ptr noundef %i.al) #9 ; 2 uses
  %.not1622.i = icmp eq ptr %i.am, null
  br i1 %.not1622.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %rcidm_transition_rcid.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %rcidm_transition_rcid.exit21.i, %.lr.ph.i
  %i.aq = phi ptr [ %i.am, %.lr.ph.i ], [ %i.bo, %rcidm_transition_rcid.exit21.i ] ; 8 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !19
  %i.at = icmp ult i64 %i.as, %i.f
  br i1 %i.at, label %bb.l, label %.critedge.i

bb.l:                                             ; preds = %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 56 ; 4 uses
  %i.av = load i8, ptr %i.au, align 8             ; 2 uses
  %i.aw = and i8 %i.av, 3                         ; 2 uses
  switch i8 %i.aw, label %bb.m [
    i8 2, label %rcidm_transition_rcid.exit21.i
    i8 0, label %.thread30.i20.i
  ]

bb.m:                                             ; preds = %bb.l
  %i.ax = and i8 %i.av, -4
  %i.ay = or disjoint i8 %i.ax, 2
  store i8 %i.ay, ptr %i.au, align 8
  %i.az = icmp eq i8 %i.aw, 1
  br i1 %i.az, label %bb.n, label %.thread31.i17.i

.thread30.i20.i:                                  ; preds = %bb.l
  %i.ba = load ptr, ptr %i.ak, align 8, !tbaa !9
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aq, i64 48 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !33
  %i.bd = tail call ptr @ossl_pqueue_remove(ptr noundef %i.ba, i64 noundef %i.bc) #9, !inline_history !41 ; 0 uses
  store i64 -1, ptr %i.bb, align 8, !tbaa !33
  %i.be = load i8, ptr %i.au, align 8
  %i.bf = and i8 %i.be, -4
  %i.bg = or disjoint i8 %i.bf, 2
  store i8 %i.bg, ptr %i.au, align 8
  br label %.thread31.i17.i

bb.n:                                             ; preds = %bb.m
  store ptr null, ptr %i.i, align 8, !tbaa !22
  br label %.thread31.i17.i

.thread31.i17.i:                                  ; preds = %bb.n, %.thread30.i20.i, %bb.m
  %i.bh = load ptr, ptr %i.ao, align 8, !tbaa !34 ; 3 uses
  %.not.i.i18.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i18.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.thread31.i17.i
  store ptr %i.aq, ptr %i.bh, align 8, !tbaa !27
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.thread31.i17.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !35
  store ptr null, ptr %i.aq, align 8, !tbaa !27
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !34
  %i.bj = load ptr, ptr %i.an, align 8, !tbaa !26
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %bb.q, label %ossl_list_retiring_insert_tail.exit.i19.i

bb.q:                                             ; preds = %bb.p
  store ptr %i.aq, ptr %i.an, align 8, !tbaa !26
  br label %ossl_list_retiring_insert_tail.exit.i19.i

ossl_list_retiring_insert_tail.exit.i19.i:        ; preds = %bb.q, %bb.p
  %i.bl = load <2 x i64>, ptr %i.ap, align 8, !tbaa !36
  %i.bm = add <2 x i64> %i.bl, splat (i64 1)
  store <2 x i64> %i.bm, ptr %i.ap, align 8, !tbaa !36
  br label %rcidm_transition_rcid.exit21.i

rcidm_transition_rcid.exit21.i:                   ; preds = %ossl_list_retiring_insert_tail.exit.i19.i, %bb.l
  %i.bn = load ptr, ptr %i.ak, align 8, !tbaa !9
  %i.bo = tail call ptr @ossl_pqueue_peek(ptr noundef %i.bn) #9 ; 2 uses
  %.not16.i = icmp eq ptr %i.bo, null
  br i1 %.not16.i, label %.critedge.i, label %bb.k, !llvm.loop !42

.critedge.i:                                      ; preds = %rcidm_transition_rcid.exit21.i, %bb.k, %rcidm_transition_rcid.exit.i
  store i64 %i.f, ptr %i.g, align 8, !tbaa !32
  br label %rcidm_handle_retire_prior_to.exit

rcidm_handle_retire_prior_to.exit:                ; preds = %bb.b, %.critedge.i
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.bq = load i8, ptr %i.bp, align 8             ; 2 uses
  %i.br = and i8 %i.bq, 4
  %.not.i.i = icmp eq i8 %i.br, 0
  br i1 %.not.i.i, label %rcidm_tick.exit, label %bb.r

bb.r:                                             ; preds = %rcidm_handle_retire_prior_to.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !29
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %rcidm_should_roll.exit.thread.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !30
  %i.bx = icmp ult i64 %i.bw, 10000
  %i.by = and i8 %i.bq, 64
  %.not.i7 = icmp eq i8 %i.by, 0
  %or.cond.i = and i1 %.not.i7, %i.bx
  br i1 %or.cond.i, label %rcidm_tick.exit, label %rcidm_should_roll.exit.thread.i

rcidm_should_roll.exit.thread.i:                  ; preds = %bb.s, %bb.r
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !9
  %i.cb = tail call ptr @ossl_pqueue_peek(ptr noundef %i.ca) #9 ; 2 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %rcidm_tick.exit, label %bb.t

bb.t:                                             ; preds = %rcidm_should_roll.exit.thread.i
  tail call fastcc void @rcidm_transition_rcid(ptr noundef nonnull %0, ptr noundef %i.cb, i32 noundef 1)
  %i.cd = load i64, ptr %i.bs, align 8, !tbaa !29
  %i.ce = add i64 %i.cd, 1
  store i64 %i.ce, ptr %i.bs, align 8, !tbaa !29
  %i.cf = load i8, ptr %i.bp, align 8
  %i.cg = and i8 %i.cf, -65
  store i8 %i.cg, ptr %i.bp, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !30 ; 2 uses
  %2 = urem i64 %i.ci, 10000
  %.narrow.i.i = icmp ugt i64 %i.ci, 10000
  %storemerge.i.i = select i1 %.narrow.i.i, i64 %2, i64 0
  store i64 %storemerge.i.i, ptr %i.ch, align 8, !tbaa !30
  br label %rcidm_tick.exit

rcidm_tick.exit:                                  ; preds = %rcidm_handle_retire_prior_to.exit, %bb.s, %rcidm_should_roll.exit.thread.i, %bb.t
  tail call fastcc void @rcidm_update(ptr noundef nonnull %0)
  br label %bb.u

bb.u:                                             ; preds = %bb.a, %rcidm_tick.exit
  %.0 = phi i32 [ 1, %rcidm_tick.exit ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ossl_quic_rcidm_pop_retire_seq_num(ptr noundef captures(none) %0, ptr noundef writeonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !26 ; 9 uses
  %i.b = icmp eq ptr %.val.i, null
  br i1 %i.b, label %rcidm_get_retire.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.val.i, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !19
  store i64 %i.d, ptr %1, align 8, !tbaa !36
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.val.i, i64 56
  %i.f = load i8, ptr %i.e, align 8
  %i.g = and i8 %i.f, 3
  switch i8 %i.g, label %default.unreachable [
    i8 0, label %bb.e
    i8 1, label %bb.f
    i8 2, label %bb.g
    i8 3, label %rcidm_free_rcid.exit.i
  ]

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !9
  %i.j = getelementptr inbounds nuw i8, ptr %.val.i, i64 48
  %i.k = load i64, ptr %i.j, align 8, !tbaa !33
  %i.l = tail call ptr @ossl_pqueue_remove(ptr noundef %i.i, i64 noundef %i.k) #9 ; 0 uses
  br label %rcidm_free_rcid.exit.i

bb.f:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr null, ptr %i.m, align 8, !tbaa !22
  br label %rcidm_free_rcid.exit.i

bb.g:                                             ; preds = %bb.d
  %i.n = load ptr, ptr %.val.i, align 8, !tbaa !27 ; 4 uses
  store ptr %i.n, ptr %i.a, align 8, !tbaa !26
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !34
  %i.q = icmp eq ptr %i.p, %.val.i
  %i.r = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !35   ; 4 uses
  br i1 %i.q, label %bb.h, label %._crit_edge.i.i.i

bb.h:                                             ; preds = %bb.g
  store ptr %i.s, ptr %i.o, align 8, !tbaa !34
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.h, %bb.g
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge.i.i.i
  store ptr %i.n, ptr %i.s, align 8, !tbaa !27
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i
  %.not18.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not18.i.i.i, label %ossl_list_retiring_remove.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.s, ptr %i.t, align 8, !tbaa !35
  br label %ossl_list_retiring_remove.exit.i.i

ossl_list_retiring_remove.exit.i.i:               ; preds = %bb.k, %bb.j
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !43
  %i.w = add i64 %i.v, -1
  store i64 %i.w, ptr %i.u, align 8, !tbaa !43
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.val.i, i8 0, i64 16, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !31
  %i.z = add i64 %i.y, -1
  store i64 %i.z, ptr %i.x, align 8, !tbaa !31
  br label %rcidm_free_rcid.exit.i

default.unreachable:                              ; preds = %bb.d
  unreachable

rcidm_free_rcid.exit.i:                           ; preds = %ossl_list_retiring_remove.exit.i.i, %bb.f, %bb.e, %bb.d
  tail call void @CRYPTO_free(ptr noundef nonnull %.val.i, ptr noundef nonnull @.str, i32 noundef 438) #9
  br label %rcidm_get_retire.exit

rcidm_get_retire.exit:                            ; preds = %bb.a, %rcidm_free_rcid.exit.i
  %.0.i = phi i32 [ 0, %bb.a ], [ 1, %rcidm_free_rcid.exit.i ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @ossl_quic_rcidm_peek_retire_seq_num(ptr noundef readonly captures(none) %0, ptr noundef writeonly captures(address_is_null) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !26 ; 2 uses
  %i.b = icmp eq ptr %.val.i, null
  br i1 %i.b, label %rcidm_get_retire.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %rcidm_get_retire.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.val.i, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !19
  store i64 %i.d, ptr %1, align 8, !tbaa !36
  br label %rcidm_get_retire.exit

rcidm_get_retire.exit:                            ; preds = %bb.b, %bb.c, %bb.a
  %.0.i = phi i32 [ 0, %bb.a ], [ 1, %bb.c ], [ 1, %bb.b ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i32 0, 2) i32 @ossl_quic_rcidm_get_preferred_tx_dcid(ptr noundef readonly captures(none) %0, ptr noundef writeonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load i8, ptr %i.a, align 8
  %i.c = and i8 %i.b, 2
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %1, ptr noundef nonnull align 8 dereferenceable(21) %0, i64 21, i1 false), !tbaa.struct !17
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i32 0, 2) i32 @ossl_quic_rcidm_get_preferred_tx_dcid_changed(ptr noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8               ; 2 uses
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i8 %i.b, -2
  store i8 %i.c, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = and i8 %i.b, 1
  %i.e = zext nneg i8 %i.d to i32
  ret i32 %i.e
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ossl_quic_rcidm_get_num_active(ptr noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.c = tail call i64 @ossl_pqueue_num(ptr noundef %i.b) #9
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !22
  %.not = icmp ne ptr %i.e, null
  %i.f = zext i1 %.not to i64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.h = load i64, ptr %i.g, align 8, !tbaa !31
  %i.i = add i64 %i.h, %i.c
  %i.j = add i64 %i.i, %i.f
  ret i64 %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @ossl_quic_rcidm_get_num_retiring(ptr noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load i64, ptr %i.a, align 8, !tbaa !31
  ret i64 %i.b
}

declare ptr @ossl_pqueue_new(ptr noundef) local_unnamed_addr #1

declare ptr @ossl_pqueue_pop(ptr noundef) local_unnamed_addr #1

declare void @ossl_pqueue_free(ptr noundef) local_unnamed_addr #1

end_hunk_0
