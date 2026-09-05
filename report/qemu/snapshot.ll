Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/snapshot?download=true
inline.NumInlined: 45
inline.NumDeleted: 14
begin_hunk_0_@bdrv_all_create_snapshot:bb.a
  %i.ae = load ptr, ptr %.02362, align 8          ; 8 uses
  %i.af = icmp eq ptr %i.ae, %1
  br i1 %i.af, label %bb.q, label %bdrv_all_snapshots_includes_bs.exit.thread40

bb.q:                                             ; preds = %.lr.ph.split
  store i64 %2, ptr %i.e, align 8
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %bb.u, %bb.q
  %.tr.i = phi ptr [ %i.ae, %bb.q ], [ %i.ai, %bb.u ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.tr.i, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.ai = tail call fastcc ptr @bdrv_snapshot_fallback(ptr noundef %.tr.i), !inline_history !19 ; 2 uses
  %i.aj = tail call zeroext i1 @qemu_in_main_thread() #6, !inline_history !19
  br i1 %i.aj, label %bb.r, label %.split66.us

.split66.us:                                      ; preds = %tailrecurse.i, %tailrecurse.i.us
  tail call void @__assert_fail(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 222, ptr noundef nonnull @__PRETTY_FUNCTION__.bdrv_snapshot_create) #7, !inline_history !19
  unreachable

bb.r:                                             ; preds = %tailrecurse.i
  %.not.i = icmp eq ptr %i.ah, null
  br i1 %.not.i, label %.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 232
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  %.not13.i = icmp eq ptr %i.al, null
  br i1 %.not13.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.am = tail call i32 %i.al(ptr noundef nonnull %.tr.i, ptr noundef %0) #6, !inline_history !19
  br label %bdrv_snapshot_create.exit

bb.u:                                             ; preds = %bb.s
  %.not14.i = icmp eq ptr %i.ai, null
  br i1 %.not14.i, label %.thread, label %tailrecurse.i

bdrv_all_snapshots_includes_bs.exit.thread40:     ; preds = %.lr.ph.split
  store i64 0, ptr %i.e, align 8
  br label %tailrecurse.i31

.split.us:                                        ; preds = %bb.d
  tail call void @__assert_fail(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 518, ptr noundef nonnull @__PRETTY_FUNCTION__.bdrv_all_snapshots_includes_bs) #7
  unreachable

tailrecurse.i31:                                  ; preds = %bb.y, %bdrv_all_snapshots_includes_bs.exit.thread40
  %.tr.i32 = phi ptr [ %i.ae, %bdrv_all_snapshots_includes_bs.exit.thread40 ], [ %i.ap, %bb.y ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.tr.i32, i64 16
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.ap = tail call fastcc ptr @bdrv_snapshot_fallback(ptr noundef %.tr.i32), !inline_history !19 ; 2 uses
  %i.aq = tail call zeroext i1 @qemu_in_main_thread() #6, !inline_history !19
  br i1 %i.aq, label %bb.v, label %.split64.us

.split64.us:                                      ; preds = %tailrecurse.i31, %tailrecurse.i31.us
  tail call void @__assert_fail(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 222, ptr noundef nonnull @__PRETTY_FUNCTION__.bdrv_snapshot_create) #7, !inline_history !19
  unreachable

bb.v:                                             ; preds = %tailrecurse.i31
  %.not.i33 = icmp eq ptr %i.ao, null
  br i1 %.not.i33, label %.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 232
  %i.as = load ptr, ptr %i.ar, align 8            ; 2 uses
  %.not13.i34 = icmp eq ptr %i.as, null
  br i1 %.not13.i34, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.at = tail call i32 %i.as(ptr noundef nonnull %.tr.i32, ptr noundef %0) #6, !inline_history !19
  br label %bdrv_snapshot_create.exit

bb.y:                                             ; preds = %bb.w
  %.not14.i36 = icmp eq ptr %i.ap, null
  br i1 %.not14.i36, label %.thread, label %tailrecurse.i31

bdrv_snapshot_create.exit:                        ; preds = %bb.x, %bb.t
  %.0 = phi i32 [ %i.am, %bb.t ], [ %i.at, %bb.x ]
  %i.au = icmp sgt i32 %.0, -1
  br i1 %i.au, label %bdrv_snapshot_create.exit.thread44, label %.thread

.thread:                                          ; preds = %bdrv_snapshot_create.exit, %bb.y, %bb.v, %bb.u, %bb.r, %bdrv_snapshot_create.exit.us, %bb.j, %bb.h, %bb.o, %bb.m
  %i.av = phi ptr [ %i.ae, %bb.y ], [ %i.ae, %bb.u ], [ %i.f, %bdrv_snapshot_create.exit.us ], [ %i.f, %bb.o ], [ %i.f, %bb.j ], [ %i.f, %bb.m ], [ %i.f, %bb.h ], [ %i.ae, %bb.r ], [ %i.ae, %bb.v ], [ %i.ae, %bdrv_snapshot_create.exit ]
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ax = tail call ptr @bdrv_get_device_or_node_name(ptr noundef %i.av) #6
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %5, ptr noundef nonnull @.str.7, i32 noundef 725, ptr noundef nonnull @__func__.bdrv_all_create_snapshot, ptr noundef nonnull @.str.26, ptr noundef nonnull %i.aw, ptr noundef %i.ax) #6
  br label %glib_autoptr_cleanup_GraphLockableMainloop.exit

bdrv_snapshot_create.exit.thread44:               ; preds = %bdrv_snapshot_create.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %.02362, i64 8
  %.023 = load ptr, ptr %i.ay, align 8            ; 2 uses
  %.not = icmp eq ptr %.023, null
  br i1 %.not, label %glib_autoptr_cleanup_GraphLockableMainloop.exit, label %.lr.ph.split

glib_autoptr_cleanup_GraphLockableMainloop.exit:  ; preds = %bdrv_snapshot_create.exit.thread44, %bdrv_snapshot_create.exit.thread44.us, %.thread, %bb.c
  %.2 = phi i32 [ -1, %bb.c ], [ -1, %.thread ], [ 0, %bdrv_snapshot_create.exit.thread44.us ], [ 0, %bdrv_snapshot_create.exit.thread44 ] ; 2 uses
  tail call void @bdrv_graph_rdunlock_main_loop() #6
  %.not.i.i38 = icmp eq ptr %.val29.pre, null
  br i1 %.not.i.i38, label %glib_autoptr_cleanup_GList.exit, label %bb.z

bb.z:                                             ; preds = %glib_autoptr_cleanup_GraphLockableMainloop.exit
  tail call void @g_list_free(ptr noundef nonnull %.val29.pre) #6
  br label %glib_autoptr_cleanup_GList.exit

glib_autoptr_cleanup_GList.exit:                  ; preds = %glib_autoptr_cleanup_GraphLockableMainloop.exit.thread, %glib_autoptr_cleanup_GraphLockableMainloop.exit, %bb.z
  %.2118 = phi i32 [ 0, %glib_autoptr_cleanup_GraphLockableMainloop.exit.thread ], [ %.2, %glib_autoptr_cleanup_GraphLockableMainloop.exit ], [ %.2, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.2118
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local ptr @bdrv_all_find_vmstate_bs(ptr noundef %0, i1 noundef zeroext %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store ptr null, ptr %i.a, align 8
  %i.b = tail call zeroext i1 @qemu_in_main_thread() #6
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 743, ptr noundef nonnull @__PRETTY_FUNCTION__.bdrv_all_find_vmstate_bs) #7
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @bdrv_graph_rdlock_main_loop() #6
  %i.c = call fastcc i32 @bdrv_all_get_snapshot_devices(i1 noundef zeroext %1, ptr noundef %2, ptr noundef %i.a, ptr noundef %3)
  %i.d = icmp slt i32 %i.c, 0
  %.val31.pre = load ptr, ptr %i.a, align 8       ; 7 uses
  br i1 %i.d, label %glib_autoptr_cleanup_GraphLockableMainloop.exit, label %.preheader

.preheader:                                       ; preds = %bb.c
  %.not45 = icmp eq ptr %.val31.pre, null
  br i1 %.not45, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %.not29 = icmp eq ptr %2, null
  %.not30 = icmp eq ptr %0, null                  ; 2 uses
  br i1 %.not29, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %.not30, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us, %bdrv_all_snapshots_includes_bs.exit.thread.loopexit.us.us
  %.02346.us.us = phi ptr [ %.023.us.us, %bdrv_all_snapshots_includes_bs.exit.thread.loopexit.us.us ], [ %.val31.pre, %.lr.ph.split.us ] ; 2 uses
  %i.e = load ptr, ptr %.02346.us.us, align 8     ; 6 uses
  %i.f = tail call zeroext i1 @qemu_in_main_thread() #6
  br i1 %i.f, label %bb.d, label %.split.us

bb.d:                                             ; preds = %.lr.ph.split.us.split.us
  tail call void @assert_bdrv_graph_readable() #6
  %i.g = tail call zeroext i1 @bdrv_is_inserted(ptr noundef %i.e) #6
  br i1 %i.g, label %bb.e, label %bdrv_all_snapshots_includes_bs.exit.thread.loopexit.us.us

bb.e:                                             ; preds = %bb.d
  %i.h = tail call zeroext i1 @bdrv_is_read_only(ptr noundef %i.e) #6
  br i1 %i.h, label %bdrv_all_snapshots_includes_bs.exit.thread.loopexit.us.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = tail call zeroext i1 @bdrv_has_blk(ptr noundef %i.e) #6
  br i1 %i.i, label %tailrecurse.i.us.us.preheader, label %bdrv_all_snapshots_includes_bs.exit.us.us

bdrv_all_snapshots_includes_bs.exit.us.us:        ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 16840
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %tailrecurse.i.us.us.preheader, label %bdrv_all_snapshots_includes_bs.exit.thread.loopexit.us.us

tailrecurse.i.us.us.preheader:                    ; preds = %bdrv_all_snapshots_includes_bs.exit.us.us, %bb.f
  br label %tailrecurse.i.us.us

tailrecurse.i.us.us:                              ; preds = %tailrecurse.i.us.us.preheader, %bb.k
  %.tr.i.us.us = phi ptr [ %i.t, %bb.k ], [ %i.e, %tailrecurse.i.us.us.preheader ] ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.tr.i.us.us, i64 16
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = tail call zeroext i1 @qemu_in_main_thread() #6, !inline_history !11
  br i1 %i.o, label %bb.g, label %.split48.us

bb.g:                                             ; preds = %tailrecurse.i.us.us
  %.not.i.us.us = icmp eq ptr %i.n, null
  br i1 %.not.i.us.us, label %bdrv_all_snapshots_includes_bs.exit.thread.loopexit.us.us, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = tail call zeroext i1 @bdrv_is_inserted(ptr noundef nonnull %.tr.i.us.us) #6, !inline_history !11
  br i1 %i.p, label %bb.i, label %bdrv_all_snapshots_includes_bs.exit.thread.loopexit.us.us

bb.i:                                             ; preds = %bb.h
  %i.q = tail call zeroext i1 @bdrv_is_writable(ptr noundef nonnull %.tr.i.us.us) #6, !inline_history !11
  br i1 %i.q, label %bb.j, label %bdrv_all_snapshots_includes_bs.exit.thread.loopexit.us.us

bb.j:                                             ; preds = %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 232
  %i.s = load ptr, ptr %i.r, align 8
  %.not10.i.us.us = icmp eq ptr %i.s, null
  br i1 %.not10.i.us.us, label %bb.k, label %glib_autoptr_cleanup_GraphLockableMainloop.exit

bb.k:                                             ; preds = %bb.j
  %i.t = tail call fastcc ptr @bdrv_snapshot_fallback(ptr noundef nonnull %.tr.i.us.us), !inline_history !11 ; 2 uses
  %.not11.i.us.us = icmp eq ptr %i.t, null
  br i1 %.not11.i.us.us, label %bdrv_all_snapshots_includes_bs.exit.thread.loopexit.us.us, label %tailrecurse.i.us.us

bdrv_all_snapshots_includes_bs.exit.thread.loopexit.us.us: ; preds = %bb.k, %bb.g, %bb.i, %bb.h, %bb.d, %bb.e, %bdrv_all_snapshots_includes_bs.exit.us.us
  %i.u = getelementptr inbounds nuw i8, ptr %.02346.us.us, i64 8
  %.023.us.us = load ptr, ptr %i.u, align 8       ; 2 uses
  %.not.us.us = icmp eq ptr %.023.us.us, null
  br i1 %.not.us.us, label %._crit_edge, label %.lr.ph.split.us.split.us, !llvm.loop !20

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us, %bb.t
  %.02346.us = phi ptr [ %.023.us, %bb.t ], [ %.val31.pre, %.lr.ph.split.us ] ; 2 uses
  %i.v = load ptr, ptr %.02346.us, align 8        ; 7 uses
  %i.w = tail call zeroext i1 @qemu_in_main_thread() #6
  br i1 %i.w, label %bb.l, label %.split.us

bb.l:                                             ; preds = %.lr.ph.split.us.split
  tail call void @assert_bdrv_graph_readable() #6
  %i.x = tail call zeroext i1 @bdrv_is_inserted(ptr noundef %i.v) #6
  br i1 %i.x, label %bb.m, label %bdrv_all_snapshots_includes_bs.exit.thread.us

bb.m:                                             ; preds = %bb.l
  %i.y = tail call zeroext i1 @bdrv_is_read_only(ptr noundef %i.v) #6
  br i1 %i.y, label %bdrv_all_snapshots_includes_bs.exit.thread.us, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.z = tail call zeroext i1 @bdrv_has_blk(ptr noundef %i.v) #6
  br i1 %i.z, label %tailrecurse.i.us.preheader, label %bdrv_all_snapshots_includes_bs.exit.us

bdrv_all_snapshots_includes_bs.exit.us:           ; preds = %bb.n
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 16840
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %tailrecurse.i.us.preheader, label %bdrv_all_snapshots_includes_bs.exit.thread.us

tailrecurse.i.us.preheader:                       ; preds = %bdrv_all_snapshots_includes_bs.exit.us, %bb.n
  br label %tailrecurse.i.us

tailrecurse.i.us:                                 ; preds = %tailrecurse.i.us.preheader, %bb.s
  %.tr.i.us = phi ptr [ %i.ak, %bb.s ], [ %i.v, %tailrecurse.i.us.preheader ] ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.tr.i.us, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.af = tail call zeroext i1 @qemu_in_main_thread() #6, !inline_history !11
  br i1 %i.af, label %bb.o, label %.split48.us

bb.o:                                             ; preds = %tailrecurse.i.us
  %.not.i.us = icmp eq ptr %i.ae, null
  br i1 %.not.i.us, label %bdrv_all_snapshots_includes_bs.exit.thread.us, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ag = tail call zeroext i1 @bdrv_is_inserted(ptr noundef nonnull %.tr.i.us) #6, !inline_history !11
  br i1 %i.ag, label %bb.q, label %bdrv_all_snapshots_includes_bs.exit.thread.us

bb.q:                                             ; preds = %bb.p
  %i.ah = tail call zeroext i1 @bdrv_is_writable(ptr noundef nonnull %.tr.i.us) #6, !inline_history !11
  br i1 %i.ah, label %bb.r, label %bdrv_all_snapshots_includes_bs.exit.thread.us

bb.r:                                             ; preds = %bb.q
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 232
  %i.aj = load ptr, ptr %i.ai, align 8
  %.not10.i.us = icmp eq ptr %i.aj, null
  br i1 %.not10.i.us, label %bb.s, label %bdrv_all_snapshots_includes_bs.exit.thread.us

bb.s:                                             ; preds = %bb.r
  %i.ak = tail call fastcc ptr @bdrv_snapshot_fallback(ptr noundef nonnull %.tr.i.us), !inline_history !11 ; 2 uses
  %.not11.i.us = icmp eq ptr %i.ak, null
  br i1 %.not11.i.us, label %bdrv_all_snapshots_includes_bs.exit.thread.us, label %tailrecurse.i.us

bdrv_all_snapshots_includes_bs.exit.thread.us:    ; preds = %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bdrv_all_snapshots_includes_bs.exit.us, %bb.m, %bb.l
  %i.al = phi i1 [ false, %bdrv_all_snapshots_includes_bs.exit.us ], [ false, %bb.m ], [ false, %bb.l ], [ true, %bb.r ], [ false, %bb.p ], [ false, %bb.q ], [ false, %bb.o ], [ false, %bb.s ]
  %i.am = tail call ptr @bdrv_get_node_name(ptr noundef %i.v) #6
  %i.an = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %i.am) #8
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %.split50.us, label %bb.t

bb.t:                                             ; preds = %bdrv_all_snapshots_includes_bs.exit.thread.us
  %i.ap = getelementptr inbounds nuw i8, ptr %.02346.us, i64 8
  %.023.us = load ptr, ptr %i.ap, align 8         ; 2 uses
  %.not.us = icmp eq ptr %.023.us, null
  br i1 %.not.us, label %._crit_edge.thread, label %.lr.ph.split.us.split, !llvm.loop !20

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %.not30, label %bdrv_all_snapshots_includes_bs.exit.thread34.us53, label %bdrv_all_snapshots_includes_bs.exit.thread34

bdrv_all_snapshots_includes_bs.exit.thread34.us53: ; preds = %.lr.ph.split, %bdrv_all_snapshots_includes_bs.exit.thread.loopexit.us62
  %.02346.us54 = phi ptr [ %.023.us60, %bdrv_all_snapshots_includes_bs.exit.thread.loopexit.us62 ], [ %.val31.pre, %.lr.ph.split ] ; 2 uses
  %i.aq = load ptr, ptr %.02346.us54, align 8     ; 2 uses
  br label %tailrecurse.i.us55

tailrecurse.i.us55:                               ; preds = %bb.y, %bdrv_all_snapshots_includes_bs.exit.thread34.us53
  %.tr.i.us56 = phi ptr [ %i.aq, %bdrv_all_snapshots_includes_bs.exit.thread34.us53 ], [ %i.ay, %bb.y ] ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.tr.i.us56, i64 16
  %i.as = load ptr, ptr %i.ar, align 8            ; 2 uses
  %i.at = tail call zeroext i1 @qemu_in_main_thread() #6, !inline_history !11
  br i1 %i.at, label %bb.u, label %.split48.us

bb.u:                                             ; preds = %tailrecurse.i.us55
  %.not.i.us57 = icmp eq ptr %i.as, null
  br i1 %.not.i.us57, label %bdrv_all_snapshots_includes_bs.exit.thread.loopexit.us62, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.au = tail call zeroext i1 @bdrv_is_inserted(ptr noundef nonnull %.tr.i.us56) #6, !inline_history !11
  br i1 %i.au, label %bb.w, label %bdrv_all_snapshots_includes_bs.exit.thread.loopexit.us62

bb.w:                                             ; preds = %bb.v
  %i.av = tail call zeroext i1 @bdrv_is_writable(ptr noundef nonnull %.tr.i.us56) #6, !inline_history !11
  br i1 %i.av, label %bb.x, label %bdrv_all_snapshots_includes_bs.exit.thread.loopexit.us62

bb.x:                                             ; preds = %bb.w
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 232
  %i.ax = load ptr, ptr %i.aw, align 8
  %.not10.i.us58 = icmp eq ptr %i.ax, null
  br i1 %.not10.i.us58, label %bb.y, label %glib_autoptr_cleanup_GraphLockableMainloop.exit

bb.y:                                             ; preds = %bb.x
  %i.ay = tail call fastcc ptr @bdrv_snapshot_fallback(ptr noundef nonnull %.tr.i.us56), !inline_history !11 ; 2 uses
  %.not11.i.us59 = icmp eq ptr %i.ay, null
  br i1 %.not11.i.us59, label %bdrv_all_snapshots_includes_bs.exit.thread.loopexit.us62, label %tailrecurse.i.us55

bdrv_all_snapshots_includes_bs.exit.thread.loopexit.us62: ; preds = %bb.u, %bb.v, %bb.w, %bb.y
  %i.az = getelementptr inbounds nuw i8, ptr %.02346.us54, i64 8
  %.023.us60 = load ptr, ptr %i.az, align 8       ; 2 uses
  %.not.us61 = icmp eq ptr %.023.us60, null
  br i1 %.not.us61, label %._crit_edge, label %bdrv_all_snapshots_includes_bs.exit.thread34.us53, !llvm.loop !20

bdrv_all_snapshots_includes_bs.exit.thread34:     ; preds = %.lr.ph.split, %bb.af
  %.02346 = phi ptr [ %.023, %bb.af ], [ %.val31.pre, %.lr.ph.split ] ; 2 uses
  %i.ba = load ptr, ptr %.02346, align 8          ; 3 uses
  br label %tailrecurse.i

.split.us:                                        ; preds = %.lr.ph.split.us.split, %.lr.ph.split.us.split.us
  tail call void @__assert_fail(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 518, ptr noundef nonnull @__PRETTY_FUNCTION__.bdrv_all_snapshots_includes_bs) #7
  unreachable

tailrecurse.i:                                    ; preds = %bb.ad, %bdrv_all_snapshots_includes_bs.exit.thread34
  %.tr.i = phi ptr [ %i.ba, %bdrv_all_snapshots_includes_bs.exit.thread34 ], [ %i.bi, %bb.ad ] ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.tr.i, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8            ; 2 uses
  %i.bd = tail call zeroext i1 @qemu_in_main_thread() #6, !inline_history !11
  br i1 %i.bd, label %bb.z, label %.split48.us

.split48.us:                                      ; preds = %tailrecurse.i, %tailrecurse.i.us55, %tailrecurse.i.us, %tailrecurse.i.us.us
  tail call void @__assert_fail(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 199, ptr noundef nonnull @__PRETTY_FUNCTION__.bdrv_can_snapshot) #7, !inline_history !11
  unreachable

bb.z:                                             ; preds = %tailrecurse.i
  %.not.i = icmp eq ptr %i.bc, null
  br i1 %.not.i, label %bdrv_all_snapshots_includes_bs.exit.thread.loopexit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.be = tail call zeroext i1 @bdrv_is_inserted(ptr noundef nonnull %.tr.i) #6, !inline_history !11
  br i1 %i.be, label %bb.ab, label %bdrv_all_snapshots_includes_bs.exit.thread.loopexit

bb.ab:                                            ; preds = %bb.aa
  %i.bf = tail call zeroext i1 @bdrv_is_writable(ptr noundef nonnull %.tr.i) #6, !inline_history !11
  br i1 %i.bf, label %bb.ac, label %bdrv_all_snapshots_includes_bs.exit.thread.loopexit

bb.ac:                                            ; preds = %bb.ab
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 232
  %i.bh = load ptr, ptr %i.bg, align 8
  %.not10.i = icmp eq ptr %i.bh, null
  br i1 %.not10.i, label %bb.ad, label %bdrv_all_snapshots_includes_bs.exit.thread.loopexit

bb.ad:                                            ; preds = %bb.ac
  %i.bi = tail call fastcc ptr @bdrv_snapshot_fallback(ptr noundef nonnull %.tr.i), !inline_history !11 ; 2 uses
  %.not11.i = icmp eq ptr %i.bi, null
  br i1 %.not11.i, label %bdrv_all_snapshots_includes_bs.exit.thread.loopexit, label %tailrecurse.i

bdrv_all_snapshots_includes_bs.exit.thread.loopexit: ; preds = %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad
  %.ph = phi i1 [ true, %bb.ac ], [ false, %bb.aa ], [ false, %bb.ab ], [ false, %bb.z ], [ false, %bb.ad ]
  %i.bj = tail call ptr @bdrv_get_node_name(ptr noundef %i.ba) #6
  %i.bk = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %i.bj) #8
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %.split50.us, label %bb.af

.split50.us:                                      ; preds = %bdrv_all_snapshots_includes_bs.exit.thread.loopexit, %bdrv_all_snapshots_includes_bs.exit.thread.us
  %.us-phi = phi i1 [ %i.al, %bdrv_all_snapshots_includes_bs.exit.thread.us ], [ %.ph, %bdrv_all_snapshots_includes_bs.exit.thread.loopexit ]
  %.us-phi51 = phi ptr [ %i.v, %bdrv_all_snapshots_includes_bs.exit.thread.us ], [ %i.ba, %bdrv_all_snapshots_includes_bs.exit.thread.loopexit ]
  br i1 %.us-phi, label %glib_autoptr_cleanup_GraphLockableMainloop.exit, label %bb.ae

bb.ae:                                            ; preds = %.split50.us
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %3, ptr noundef nonnull @.str.7, i32 noundef 766, ptr noundef nonnull @__func__.bdrv_all_find_vmstate_bs, ptr noundef nonnull @.str.27, ptr noundef nonnull %0) #6
  br label %glib_autoptr_cleanup_GraphLockableMainloop.exit

bb.af:                                            ; preds = %bdrv_all_snapshots_includes_bs.exit.thread.loopexit
  %i.bm = getelementptr inbounds nuw i8, ptr %.02346, i64 8
  %.023 = load ptr, ptr %i.bm, align 8            ; 2 uses
  %.not = icmp eq ptr %.023, null
  br i1 %.not, label %._crit_edge.thread, label %bdrv_all_snapshots_includes_bs.exit.thread34, !llvm.loop !20

._crit_edge:                                      ; preds = %bdrv_all_snapshots_includes_bs.exit.thread.loopexit.us62, %bdrv_all_snapshots_includes_bs.exit.thread.loopexit.us.us, %.preheader
  %.not28 = icmp eq ptr %0, null
  br i1 %.not28, label %bb.ag, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.af, %bb.t, %._crit_edge
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %3, ptr noundef nonnull @.str.7, i32 noundef 779, ptr noundef nonnull @__func__.bdrv_all_find_vmstate_bs, ptr noundef nonnull @.str.28, ptr noundef nonnull %0) #6
  br label %glib_autoptr_cleanup_GraphLockableMainloop.exit

bb.ag:                                            ; preds = %._crit_edge
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %3, ptr noundef nonnull @.str.7, i32 noundef 782, ptr noundef nonnull @__func__.bdrv_all_find_vmstate_bs, ptr noundef nonnull @.str.29) #6
  br label %glib_autoptr_cleanup_GraphLockableMainloop.exit

glib_autoptr_cleanup_GraphLockableMainloop.exit:  ; preds = %bb.x, %bb.j, %bb.ae, %.split50.us, %._crit_edge.thread, %bb.ag, %bb.c
  %.2 = phi ptr [ null, %bb.c ], [ null, %._crit_edge.thread ], [ null, %bb.ag ], [ %.us-phi51, %.split50.us ], [ null, %bb.ae ], [ %i.e, %bb.j ], [ %i.aq, %bb.x ]
  tail call void @bdrv_graph_rdunlock_main_loop() #6
end_hunk_0
