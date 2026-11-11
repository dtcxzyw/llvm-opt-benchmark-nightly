Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/yank?download=true
inline.NumInlined: 35
inline.NumDeleted: 10
begin_hunk_0_@yank_register_function:bb.a
  %.013.i.us33 = phi ptr [ %.0.i.us36, %yank_instance_equal.exit.thread8.i.us35 ], [ %.011.i, %.lr.ph.i ] ; 3 uses
  %i.l = load ptr, ptr %.013.i.us33, align 8
  %i.m = load i32, ptr %i.l, align 8
  %.not.i.i.us34 = icmp eq i32 %i.m, 2
  br i1 %.not.i.i.us34, label %yank_find_entry.exit, label %yank_instance_equal.exit.thread8.i.us35

yank_instance_equal.exit.thread8.i.us35:          ; preds = %.lr.ph.i.split.us32
  %i.n = getelementptr inbounds nuw i8, ptr %.013.i.us33, i64 16
  %.0.i.us36 = load ptr, ptr %i.n, align 8        ; 2 uses
  %.not.i.us37 = icmp eq ptr %.0.i.us36, null
  br i1 %.not.i.us37, label %.loopexit, label %.lr.ph.i.split.us32, !llvm.loop !1

.lr.ph.i.split:                                   ; preds = %.lr.ph.i, %yank_instance_equal.exit.thread8.i
  %.013.i = phi ptr [ %.0.i, %yank_instance_equal.exit.thread8.i ], [ %.011.i, %.lr.ph.i ] ; 2 uses
  %i.o = load ptr, ptr %.013.i, align 8
  %i.p = load i32, ptr %i.o, align 8
  %.not.i.i = icmp eq i32 %i.p, %.fr
  br i1 %.not.i.i, label %bb.b, label %yank_instance_equal.exit.thread8.i

bb.b:                                             ; preds = %.lr.ph.i.split
  tail call void @abort() #10
  unreachable

yank_instance_equal.exit.thread8.i:               ; preds = %.lr.ph.i.split
  %i.q = getelementptr inbounds nuw i8, ptr %.013.i, i64 16
  %.0.i = load ptr, ptr %i.q, align 8             ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i.split, !llvm.loop !1

.loopexit:                                        ; preds = %yank_instance_equal.exit.thread8.i.us35, %yank_instance_equal.exit.thread8.i.us, %yank_instance_equal.exit.thread8.i, %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str, i32 noundef 122, ptr noundef nonnull @__PRETTY_FUNCTION__.yank_register_function) #10
  unreachable

yank_find_entry.exit:                             ; preds = %.lr.ph.i.split.us32, %yank_instance_equal.exit.i.us
  %.us-phi = phi ptr [ %.013.i.us, %yank_instance_equal.exit.i.us ], [ %.013.i.us33, %.lr.ph.i.split.us32 ]
  %i.r = tail call noalias dereferenceable_or_null(32) ptr @g_malloc0(i64 noundef 32) #11 ; 5 uses
  store ptr %1, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %2, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %.us-phi, i64 8 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8              ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  store ptr %i.u, ptr %i.v, align 8
  %.not26 = icmp eq ptr %i.u, null
  br i1 %.not26, label %glib_autoptr_cleanup_QemuLockable.exit, label %bb.c

bb.c:                                             ; preds = %yank_find_entry.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store ptr %i.v, ptr %i.w, align 8
  br label %glib_autoptr_cleanup_QemuLockable.exit

glib_autoptr_cleanup_QemuLockable.exit:           ; preds = %bb.c, %yank_find_entry.exit
  store ptr %i.r, ptr %i.t, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %i.t, ptr %i.x, align 8
  tail call void @qemu_mutex_unlock_impl(ptr noundef nonnull @yank_lock, ptr noundef nonnull @.str.5, i32 noundef 56) #8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @yank_unregister_function(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readnone captures(address) %1, ptr nofree noundef readnone captures(address) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load atomic ptr, ptr @qemu_mutex_lock_func monotonic, align 8
  tail call void %i.a(ptr noundef nonnull @yank_lock, ptr noundef nonnull @.str.5, i32 noundef 56) #8, !inline_history !0
  %.011.i = load ptr, ptr @yank_instance_list, align 8 ; 4 uses
  %.not12.i = icmp eq ptr %.011.i, null
  br i1 %.not12.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8
  %.fr = freeze i32 %i.b                          ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  switch i32 %.fr, label %.lr.ph.i.split [
    i32 0, label %.lr.ph.i.split.us.preheader
    i32 1, label %.lr.ph.i.split.us.preheader
    i32 2, label %.lr.ph.i.split.us27
  ]

.lr.ph.i.split.us.preheader:                      ; preds = %.lr.ph.i, %.lr.ph.i
  br label %.lr.ph.i.split.us

.lr.ph.i.split.us:                                ; preds = %.lr.ph.i.split.us.preheader, %yank_instance_equal.exit.thread8.i.us
  %.013.i.us = phi ptr [ %.0.i.us, %yank_instance_equal.exit.thread8.i.us ], [ %.011.i, %.lr.ph.i.split.us.preheader ] ; 3 uses
  %i.d = load ptr, ptr %.013.i.us, align 8        ; 2 uses
  %i.e = load i32, ptr %i.d, align 8
  %.not.i.i.us = icmp eq i32 %i.e, %.fr
  br i1 %.not.i.i.us, label %yank_instance_equal.exit.i.us, label %yank_instance_equal.exit.thread8.i.us

yank_instance_equal.exit.i.us:                    ; preds = %.lr.ph.i.split.us
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = load ptr, ptr %i.c, align 8
  %i.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.g, ptr noundef nonnull dereferenceable(1) %i.h) #9
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %yank_find_entry.exit, label %yank_instance_equal.exit.thread8.i.us

yank_instance_equal.exit.thread8.i.us:            ; preds = %yank_instance_equal.exit.i.us, %.lr.ph.i.split.us
  %i.k = getelementptr inbounds nuw i8, ptr %.013.i.us, i64 16
  %.0.i.us = load ptr, ptr %i.k, align 8          ; 2 uses
  %.not.i.us = icmp eq ptr %.0.i.us, null
  br i1 %.not.i.us, label %.loopexit, label %.lr.ph.i.split.us, !llvm.loop !1

.lr.ph.i.split.us27:                              ; preds = %.lr.ph.i, %yank_instance_equal.exit.thread8.i.us30
  %.013.i.us28 = phi ptr [ %.0.i.us31, %yank_instance_equal.exit.thread8.i.us30 ], [ %.011.i, %.lr.ph.i ] ; 3 uses
  %i.l = load ptr, ptr %.013.i.us28, align 8
  %i.m = load i32, ptr %i.l, align 8
  %.not.i.i.us29 = icmp eq i32 %i.m, 2
  br i1 %.not.i.i.us29, label %yank_find_entry.exit, label %yank_instance_equal.exit.thread8.i.us30

yank_instance_equal.exit.thread8.i.us30:          ; preds = %.lr.ph.i.split.us27
  %i.n = getelementptr inbounds nuw i8, ptr %.013.i.us28, i64 16
  %.0.i.us31 = load ptr, ptr %i.n, align 8        ; 2 uses
  %.not.i.us32 = icmp eq ptr %.0.i.us31, null
  br i1 %.not.i.us32, label %.loopexit, label %.lr.ph.i.split.us27, !llvm.loop !1

.lr.ph.i.split:                                   ; preds = %.lr.ph.i, %yank_instance_equal.exit.thread8.i
  %.013.i = phi ptr [ %.0.i, %yank_instance_equal.exit.thread8.i ], [ %.011.i, %.lr.ph.i ] ; 2 uses
  %i.o = load ptr, ptr %.013.i, align 8
  %i.p = load i32, ptr %i.o, align 8
  %.not.i.i = icmp eq i32 %i.p, %.fr
  br i1 %.not.i.i, label %bb.b, label %yank_instance_equal.exit.thread8.i

bb.b:                                             ; preds = %.lr.ph.i.split
  tail call void @abort() #10
  unreachable

yank_instance_equal.exit.thread8.i:               ; preds = %.lr.ph.i.split
  %i.q = getelementptr inbounds nuw i8, ptr %.013.i, i64 16
  %.0.i = load ptr, ptr %i.q, align 8             ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i.split, !llvm.loop !1

.loopexit:                                        ; preds = %yank_instance_equal.exit.thread8.i.us30, %yank_instance_equal.exit.thread8.i.us, %yank_instance_equal.exit.thread8.i, %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str, i32 noundef 140, ptr noundef nonnull @__PRETTY_FUNCTION__.yank_unregister_function) #10
  unreachable

yank_find_entry.exit:                             ; preds = %.lr.ph.i.split.us27, %yank_instance_equal.exit.i.us
  %.us-phi = phi ptr [ %.013.i.us, %yank_instance_equal.exit.i.us ], [ %.013.i.us28, %.lr.ph.i.split.us27 ]
  %i.r = getelementptr inbounds nuw i8, ptr %.us-phi, i64 8
  %.036 = load ptr, ptr %i.r, align 8             ; 2 uses
  %.not1937 = icmp eq ptr %.036, null
  br i1 %.not1937, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %yank_find_entry.exit, %bb.f
  %.038 = phi ptr [ %.0, %bb.f ], [ %.036, %yank_find_entry.exit ] ; 6 uses
  %i.s = load ptr, ptr %.038, align 8
  %i.t = icmp eq ptr %i.s, %1
  br i1 %i.t, label %bb.c, label %bb.f

bb.c:                                             ; preds = %.lr.ph
  %i.u = getelementptr inbounds nuw i8, ptr %.038, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = icmp eq ptr %i.v, %2
  br i1 %i.w, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %.038, i64 16 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %.not20 = icmp eq ptr %i.y, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.038, i64 24
  %.pre45 = load ptr, ptr %.phi.trans.insert, align 8 ; 2 uses
  br i1 %.not20, label %glib_autoptr_cleanup_QemuLockable.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store ptr %.pre45, ptr %i.z, align 8
  %.pre = load ptr, ptr %i.x, align 8
  br label %glib_autoptr_cleanup_QemuLockable.exit

glib_autoptr_cleanup_QemuLockable.exit:           ; preds = %bb.d, %bb.e
  %i.aa = phi ptr [ %.pre, %bb.e ], [ null, %bb.d ]
  store ptr %i.aa, ptr %.pre45, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  tail call void @g_free(ptr noundef nonnull %.038) #8
  tail call void @qemu_mutex_unlock_impl(ptr noundef nonnull @yank_lock, ptr noundef nonnull @.str.5, i32 noundef 56) #8
  ret void

bb.f:                                             ; preds = %.lr.ph, %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %.038, i64 16
  %.0 = load ptr, ptr %i.ab, align 8              ; 2 uses
  %.not19 = icmp eq ptr %.0, null
  br i1 %.not19, label %._crit_edge, label %.lr.ph, !llvm.loop !10

._crit_edge:                                      ; preds = %bb.f, %yank_find_entry.exit
  tail call void @abort() #10
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @qmp_yank(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load atomic ptr, ptr @qemu_mutex_lock_func monotonic, align 8
  tail call void %i.a(ptr noundef nonnull @yank_lock, ptr noundef nonnull @.str.5, i32 noundef 56) #8, !inline_history !0
  %cond = icmp eq ptr %0, null
  br i1 %cond, label %glib_autoptr_cleanup_QemuLockable.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.011.i = load ptr, ptr @yank_instance_list, align 8 ; 5 uses
  %.not12.i = icmp eq ptr %.011.i, null
  br i1 %.not12.i, label %.loopexit39, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph, %yank_find_entry.exit
  %.01655 = phi ptr [ %i.t, %yank_find_entry.exit ], [ %0, %.lr.ph ] ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.01655, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = load i32, ptr %i.c, align 8
  %.fr = freeze i32 %i.d                          ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  switch i32 %.fr, label %.lr.ph.i.split [
    i32 0, label %.lr.ph.i.split.us.preheader
    i32 1, label %.lr.ph.i.split.us.preheader
    i32 2, label %.lr.ph.i.split.us43
  ]

.lr.ph.i.split.us.preheader:                      ; preds = %.lr.ph.i, %.lr.ph.i
  br label %.lr.ph.i.split.us

.lr.ph.i.split.us:                                ; preds = %.lr.ph.i.split.us.preheader, %yank_instance_equal.exit.thread8.i.us
  %.013.i.us = phi ptr [ %.0.i.us, %yank_instance_equal.exit.thread8.i.us ], [ %.011.i, %.lr.ph.i.split.us.preheader ] ; 2 uses
  %i.f = load ptr, ptr %.013.i.us, align 8        ; 2 uses
  %i.g = load i32, ptr %i.f, align 8
  %.not.i.i.us = icmp eq i32 %i.g, %.fr
  br i1 %.not.i.i.us, label %yank_instance_equal.exit.i.us, label %yank_instance_equal.exit.thread8.i.us

yank_instance_equal.exit.i.us:                    ; preds = %.lr.ph.i.split.us
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = load ptr, ptr %i.e, align 8
  %i.k = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.i, ptr noundef nonnull dereferenceable(1) %i.j) #9
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %yank_find_entry.exit, label %yank_instance_equal.exit.thread8.i.us

yank_instance_equal.exit.thread8.i.us:            ; preds = %yank_instance_equal.exit.i.us, %.lr.ph.i.split.us
  %i.m = getelementptr inbounds nuw i8, ptr %.013.i.us, i64 16
  %.0.i.us = load ptr, ptr %i.m, align 8          ; 2 uses
  %.not.i.us = icmp eq ptr %.0.i.us, null
  br i1 %.not.i.us, label %.loopexit39, label %.lr.ph.i.split.us, !llvm.loop !1

.lr.ph.i.split.us43:                              ; preds = %.lr.ph.i, %yank_instance_equal.exit.thread8.i.us46
  %.013.i.us44 = phi ptr [ %.0.i.us47, %yank_instance_equal.exit.thread8.i.us46 ], [ %.011.i, %.lr.ph.i ] ; 2 uses
  %i.n = load ptr, ptr %.013.i.us44, align 8
  %i.o = load i32, ptr %i.n, align 8
  %.not.i.i.us45 = icmp eq i32 %i.o, 2
  br i1 %.not.i.i.us45, label %yank_find_entry.exit, label %yank_instance_equal.exit.thread8.i.us46

yank_instance_equal.exit.thread8.i.us46:          ; preds = %.lr.ph.i.split.us43
  %i.p = getelementptr inbounds nuw i8, ptr %.013.i.us44, i64 16
  %.0.i.us47 = load ptr, ptr %i.p, align 8        ; 2 uses
  %.not.i.us48 = icmp eq ptr %.0.i.us47, null
  br i1 %.not.i.us48, label %.loopexit39, label %.lr.ph.i.split.us43, !llvm.loop !1

.lr.ph.i.split:                                   ; preds = %.lr.ph.i, %yank_instance_equal.exit.thread8.i
  %.013.i = phi ptr [ %.0.i, %yank_instance_equal.exit.thread8.i ], [ %.011.i, %.lr.ph.i ] ; 2 uses
  %i.q = load ptr, ptr %.013.i, align 8
  %i.r = load i32, ptr %i.q, align 8
  %.not.i.i = icmp eq i32 %i.r, %.fr
  br i1 %.not.i.i, label %bb.b, label %yank_instance_equal.exit.thread8.i

bb.b:                                             ; preds = %.lr.ph.i.split
  tail call void @abort() #10
  unreachable

yank_instance_equal.exit.thread8.i:               ; preds = %.lr.ph.i.split
  %i.s = getelementptr inbounds nuw i8, ptr %.013.i, i64 16
  %.0.i = load ptr, ptr %i.s, align 8             ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %.loopexit39, label %.lr.ph.i.split, !llvm.loop !1

.loopexit39:                                      ; preds = %yank_instance_equal.exit.thread8.i.us46, %yank_instance_equal.exit.thread8.i.us, %yank_instance_equal.exit.thread8.i, %.lr.ph
  tail call void (ptr, ptr, i32, ptr, i32, ptr, ...) @error_set_internal(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef 164, ptr noundef nonnull @__func__.qmp_yank, i32 noundef 3, ptr noundef nonnull @.str.4) #8
  br label %glib_autoptr_cleanup_QemuLockable.exit

yank_find_entry.exit:                             ; preds = %.lr.ph.i.split.us43, %yank_instance_equal.exit.i.us
  %i.t = load ptr, ptr %.01655, align 8           ; 2 uses
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %.lr.ph78, label %.lr.ph.i, !llvm.loop !11

.lr.ph78:                                         ; preds = %yank_find_entry.exit, %._crit_edge
  %.177.a = phi ptr [ %.011.i2299, %._crit_edge ], [ %.011.i, %yank_find_entry.exit ] ; 5 uses
  %.177 = phi ptr [ %i.ar, %._crit_edge ], [ %0, %yank_find_entry.exit ] ; 2 uses
  %.not12.i23 = icmp eq ptr %.177.a, null
  br i1 %.not12.i23, label %.loopexit, label %.lr.ph.i24

.lr.ph.i24:                                       ; preds = %.lr.ph78
  %i.u = getelementptr inbounds nuw i8, ptr %.177, i64 8
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %i.w = load i32, ptr %i.v, align 8
  %.fr64 = freeze i32 %i.w                        ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  switch i32 %.fr64, label %.lr.ph.i24.split [
    i32 0, label %.lr.ph.i24.split.us.preheader
    i32 1, label %.lr.ph.i24.split.us.preheader
    i32 2, label %.lr.ph.i24.split.us56
  ]

.lr.ph.i24.split.us.preheader:                    ; preds = %.lr.ph.i24, %.lr.ph.i24
  br label %.lr.ph.i24.split.us

.lr.ph.i24.split.us:                              ; preds = %.lr.ph.i24.split.us.preheader, %yank_instance_equal.exit.thread8.i27.us
  %.013.i25.us = phi ptr [ %.0.i28.us, %yank_instance_equal.exit.thread8.i27.us ], [ %.177.a, %.lr.ph.i24.split.us.preheader ] ; 3 uses
  %i.y = load ptr, ptr %.013.i25.us, align 8      ; 2 uses
  %i.z = load i32, ptr %i.y, align 8
  %.not.i.i26.us = icmp eq i32 %i.z, %.fr64
  br i1 %.not.i.i26.us, label %yank_instance_equal.exit.i31.us, label %yank_instance_equal.exit.thread8.i27.us

yank_instance_equal.exit.i31.us:                  ; preds = %.lr.ph.i24.split.us
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = load ptr, ptr %i.x, align 8
  %i.ad = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ab, ptr noundef nonnull dereferenceable(1) %i.ac) #9
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %yank_find_entry.exit32, label %yank_instance_equal.exit.thread8.i27.us

yank_instance_equal.exit.thread8.i27.us:          ; preds = %yank_instance_equal.exit.i31.us, %.lr.ph.i24.split.us
  %i.af = getelementptr inbounds nuw i8, ptr %.013.i25.us, i64 16
  %.0.i28.us = load ptr, ptr %i.af, align 8       ; 2 uses
  %.not.i29.us = icmp eq ptr %.0.i28.us, null
  br i1 %.not.i29.us, label %.loopexit, label %.lr.ph.i24.split.us, !llvm.loop !1

.lr.ph.i24.split.us56:                            ; preds = %.lr.ph.i24, %yank_instance_equal.exit.thread8.i27.us59
  %.013.i25.us57 = phi ptr [ %.0.i28.us60, %yank_instance_equal.exit.thread8.i27.us59 ], [ %.177.a, %.lr.ph.i24 ] ; 3 uses
  %i.ag = load ptr, ptr %.013.i25.us57, align 8
  %i.ah = load i32, ptr %i.ag, align 8
  %.not.i.i26.us58 = icmp eq i32 %i.ah, 2
  br i1 %.not.i.i26.us58, label %yank_find_entry.exit32, label %yank_instance_equal.exit.thread8.i27.us59

yank_instance_equal.exit.thread8.i27.us59:        ; preds = %.lr.ph.i24.split.us56
  %i.ai = getelementptr inbounds nuw i8, ptr %.013.i25.us57, i64 16
  %.0.i28.us60 = load ptr, ptr %i.ai, align 8     ; 2 uses
  %.not.i29.us61 = icmp eq ptr %.0.i28.us60, null
  br i1 %.not.i29.us61, label %.loopexit, label %.lr.ph.i24.split.us56, !llvm.loop !1

.lr.ph.i24.split:                                 ; preds = %.lr.ph.i24, %yank_instance_equal.exit.thread8.i27
  %.013.i25 = phi ptr [ %.0.i28, %yank_instance_equal.exit.thread8.i27 ], [ %.177.a, %.lr.ph.i24 ] ; 2 uses
  %i.aj = load ptr, ptr %.013.i25, align 8
  %i.ak = load i32, ptr %i.aj, align 8
  %.not.i.i26 = icmp eq i32 %i.ak, %.fr64
  br i1 %.not.i.i26, label %bb.c, label %yank_instance_equal.exit.thread8.i27

bb.c:                                             ; preds = %.lr.ph.i24.split
  tail call void @abort() #10
  unreachable

yank_instance_equal.exit.thread8.i27:             ; preds = %.lr.ph.i24.split
  %i.al = getelementptr inbounds nuw i8, ptr %.013.i25, i64 16
  %.0.i28 = load ptr, ptr %i.al, align 8          ; 2 uses
  %.not.i29 = icmp eq ptr %.0.i28, null
  br i1 %.not.i29, label %.loopexit, label %.lr.ph.i24.split, !llvm.loop !1

.loopexit:                                        ; preds = %.lr.ph78, %yank_instance_equal.exit.thread8.i27.us59, %yank_instance_equal.exit.thread8.i27.us, %yank_instance_equal.exit.thread8.i27
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str, i32 noundef 170, ptr noundef nonnull @__PRETTY_FUNCTION__.qmp_yank) #10
  unreachable

yank_find_entry.exit32:                           ; preds = %.lr.ph.i24.split.us56, %yank_instance_equal.exit.i31.us
  %.us-phi = phi ptr [ %.013.i25.us, %yank_instance_equal.exit.i31.us ], [ %.013.i25.us57, %.lr.ph.i24.split.us56 ]
  %i.am = getelementptr inbounds nuw i8, ptr %.us-phi, i64 8
  %.072 = load ptr, ptr %i.am, align 8            ; 2 uses
  %.not2073 = icmp eq ptr %.072, null
  br i1 %.not2073, label %._crit_edge, label %.lr.ph75

.lr.ph75:                                         ; preds = %yank_find_entry.exit32, %.lr.ph75
  %.074 = phi ptr [ %.0, %.lr.ph75 ], [ %.072, %yank_find_entry.exit32 ] ; 3 uses
  %i.an = load ptr, ptr %.074, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.074, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  tail call void %i.an(ptr noundef %i.ap) #8
  %i.aq = getelementptr inbounds nuw i8, ptr %.074, i64 16
  %.0 = load ptr, ptr %i.aq, align 8              ; 2 uses
  %.not20 = icmp eq ptr %.0, null
  br i1 %.not20, label %._crit_edge.loopexit, label %.lr.ph75, !llvm.loop !12

._crit_edge.loopexit:                             ; preds = %.lr.ph75
  %.011.i22.pre = load ptr, ptr @yank_instance_list, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %yank_find_entry.exit32
  %.011.i2299 = phi ptr [ %.011.i22.pre, %._crit_edge.loopexit ], [ %.177.a, %yank_find_entry.exit32 ]
  %i.ar = load ptr, ptr %.177, align 8            ; 2 uses
  %.not18 = icmp eq ptr %i.ar, null
  br i1 %.not18, label %glib_autoptr_cleanup_QemuLockable.exit, label %.lr.ph78, !llvm.loop !13

glib_autoptr_cleanup_QemuLockable.exit:           ; preds = %._crit_edge, %bb.a, %.loopexit39
  tail call void @qemu_mutex_unlock_impl(ptr noundef nonnull @yank_lock, ptr noundef nonnull @.str.5, i32 noundef 56) #8
  ret void
}

declare void @error_set_internal(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef ptr @qmp_query_yank(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load atomic ptr, ptr @qemu_mutex_lock_func monotonic, align 8
  tail call void %i.b(ptr noundef nonnull @yank_lock, ptr noundef nonnull @.str.5, i32 noundef 56) #8, !inline_history !0
  %.025 = load ptr, ptr @yank_instance_list, align 8 ; 2 uses
  %.not26 = icmp eq ptr %.025, null
  br i1 %.not26, label %glib_autoptr_cleanup_QemuLockable.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.028 = phi ptr [ %.0, %bb.c ], [ %.025, %bb.a ] ; 2 uses
  %.02227 = phi ptr [ %i.c, %bb.c ], [ null, %bb.a ]
  %i.c = call noalias dereferenceable_or_null(16) ptr @g_malloc0(i64 noundef 16) #11 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.d = load ptr, ptr %.028, align 8             ; 2 uses
  store ptr %i.d, ptr %i.a, align 8
  %.not24 = icmp eq ptr %i.d, null
  br i1 %.not24, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.e = call ptr @qapi_clone_visitor_new() #8    ; 2 uses
  %i.f = call zeroext i1 @visit_type_YankInstance(ptr noundef %i.e, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef nonnull @error_abort) #8 ; 0 uses
  call void @visit_free(ptr noundef %i.e) #8
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.g = phi ptr [ %.pre, %bb.b ], [ null, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.g, ptr %i.h, align 8
  store ptr %.02227, ptr %i.c, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %.028, i64 16
  %.0 = load ptr, ptr %i.i, align 8               ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %glib_autoptr_cleanup_QemuLockable.exit, label %.lr.ph, !llvm.loop !14

glib_autoptr_cleanup_QemuLockable.exit:           ; preds = %bb.c, %bb.a
  %.022.lcssa = phi ptr [ null, %bb.a ], [ %i.c, %bb.c ]
  call void @qemu_mutex_unlock_impl(ptr noundef nonnull @yank_lock, ptr noundef nonnull @.str.5, i32 noundef 56) #8
  ret ptr %.022.lcssa
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @yank_init() #0 {
bb.a:
  tail call void @qemu_mutex_init(ptr noundef nonnull @yank_lock) #8
  ret void
}

declare void @qemu_mutex_init(ptr noundef) local_unnamed_addr #2

declare void @qemu_mutex_unlock_impl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #3 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #4 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #5 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind allocsize(0) }

!llvm.module.flags = !{!2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !{null, null, null}
!1 = distinct !{!1, !9}
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"PIE Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!8 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!9 = !{!"llvm.loop.mustprogress"}
!10 = distinct !{!10, !9}
!11 = distinct !{!11, !9}
!12 = distinct !{!12, !9}
!13 = distinct !{!13, !9}
!14 = distinct !{!14, !9}
end_hunk_0
