inline.NumInlined: 207
inline.NumDeleted: 102
begin_hunk_0_@drm_gem_mmap:bb.a
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @drm_gem_print_info(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 224
  %i.b = load i32, ptr %i.a, align 8
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef %1, ptr noundef nonnull @.str.10, i32 noundef %i.b) #12
  %i.c = load volatile i32, ptr %2, align 8
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %1, ptr noundef nonnull @.str.10, i32 noundef %i.c) #12
  %i.d = getelementptr i8, ptr %2, i64 40
  %.val19 = load i64, ptr %i.d, align 8
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %0, ptr noundef nonnull @.str.12, i32 noundef %1, ptr noundef nonnull @.str.10, i64 noundef %.val19) #12
  %i.e = getelementptr i8, ptr %2, i64 216
  %i.f = load i64, ptr %i.e, align 8
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %0, ptr noundef nonnull @.str.13, i32 noundef %1, ptr noundef nonnull @.str.10, i64 noundef %i.f) #12
  %i.g = getelementptr i8, ptr %2, i64 240
  %.val = load ptr, ptr %i.g, align 8
  %.not20 = icmp eq ptr %.val, null
  %i.h = select i1 %.not20, ptr @.str.19, ptr @.str.18
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef %1, ptr noundef nonnull @.str.10, ptr noundef nonnull %i.h) #12
  %i.i = getelementptr i8, ptr %2, i64 336
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void %i.l(ptr noundef %0, i32 noundef %1, ptr noundef %2) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @drm_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @drm_gem_vmap_locked(ptr noundef %0, ptr noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 336
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 64
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 %i.d(ptr noundef %0, ptr noundef %1) #12 ; 2 uses
  %.not9 = icmp eq i32 %i.e, 0
  br i1 %.not9, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.val = load ptr, ptr %1, align 8
  %.0.i = icmp eq ptr %.val, null
  %. = select i1 %.0.i, i32 -12, i32 0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -95, %bb.a ], [ %., %bb.c ], [ %i.e, %bb.b ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @drm_gem_vunmap_locked(ptr noundef %0, ptr noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %.val = load ptr, ptr %1, align 8
  %.0.i = icmp eq ptr %.val, null
  br i1 %.0.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 336
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void %i.d(ptr noundef %0, ptr noundef %1) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @drm_gem_lock(ptr nofree noundef readonly captures(none) %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 248
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call i32 @ww_mutex_lock(ptr noundef %i.b, ptr noundef null) #12 ; 0 uses
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @drm_gem_unlock(ptr nofree noundef readonly captures(none) %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 248
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @ww_mutex_unlock(ptr noundef %i.b) #12
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @drm_gem_vmap(ptr noundef %0, ptr noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 248        ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call i32 @ww_mutex_lock(ptr noundef %i.b, ptr noundef null) #12 ; 0 uses
  %i.d = getelementptr i8, ptr %0, i64 336
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %i.e, i64 64
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %drm_gem_vmap_locked.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call i32 %i.g(ptr noundef %0, ptr noundef %1) #12, !inline_history !79 ; 2 uses
  %.not9.i = icmp eq i32 %i.h, 0
  br i1 %.not9.i, label %bb.c, label %drm_gem_vmap_locked.exit

bb.c:                                             ; preds = %bb.b
  %.val.i = load ptr, ptr %1, align 8
  %.0.i.i = icmp eq ptr %.val.i, null
  %..i = select i1 %.0.i.i, i32 -12, i32 0
  br label %drm_gem_vmap_locked.exit

drm_gem_vmap_locked.exit:                         ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i32 [ -95, %bb.a ], [ %..i, %bb.c ], [ %i.h, %bb.b ]
  %i.i = load ptr, ptr %i.a, align 8
  tail call void @ww_mutex_unlock(ptr noundef %i.i) #12
  ret i32 %.0.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @drm_gem_vunmap(ptr noundef %0, ptr noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 248        ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call i32 @ww_mutex_lock(ptr noundef %i.b, ptr noundef null) #12 ; 0 uses
  %.val.i = load ptr, ptr %1, align 8
  %.0.i.i = icmp eq ptr %.val.i, null
  br i1 %.0.i.i, label %drm_gem_vunmap_locked.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 336
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %i.e, i64 72
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void %i.g(ptr noundef %0, ptr noundef %1) #12, !inline_history !80
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  br label %drm_gem_vunmap_locked.exit

drm_gem_vunmap_locked.exit:                       ; preds = %bb.a, %bb.d
  %i.h = load ptr, ptr %i.a, align 8
  tail call void @ww_mutex_unlock(ptr noundef %i.h) #12
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @drm_gem_lock_reservations(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef initializes((0, 24)) %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #18, !srcloc !81
  %i.b = inttoptr i64 %i.a to ptr
  store ptr %i.b, ptr %2, align 8
  %i.c = tail call i64 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddq ${0:q}, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @reservation_ww_class, i64 1, ptr nonnull elementtype(i64) @reservation_ww_class) #13, !srcloc !82
  %i.d = add i64 %i.c, 1
  %i.e = getelementptr i8, ptr %2, i64 8
  store i64 %i.d, ptr %i.e, align 8
  %i.f = getelementptr i8, ptr %2, i64 16
  store i32 0, ptr %i.f, align 8
  %i.g = getelementptr i8, ptr %2, i64 20
  store i16 0, ptr %i.g, align 4
  %i.h = load i32, ptr getelementptr inbounds nuw (i8, ptr @reservation_ww_class, i64 24), align 8
  %i.i = trunc i32 %i.h to i16
  %i.j = getelementptr i8, ptr %2, i64 22
  store i16 %i.i, ptr %i.j, align 2
  %i.k = icmp sgt i32 %1, 0
  br i1 %i.k, label %.split.us.preheader, label %.thread48

.split.us.preheader:                              ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.split.us

.split.us:                                        ; preds = %.split.us.preheader, %bb.g
  %.038.us = phi i32 [ %i.ai, %bb.g ], [ -1, %.split.us.preheader ] ; 5 uses
  %.not.us = icmp eq i32 %.038.us, -1
  br i1 %.not.us, label %.thread.us, label %bb.b

bb.b:                                             ; preds = %.split.us
  %i.l = sext i32 %.038.us to i64
  %i.m = getelementptr [8 x i8], ptr %0, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr i8, ptr %i.n, i64 248
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call i32 @ww_mutex_lock_interruptible(ptr noundef %i.p, ptr noundef %2) #12 ; 2 uses
  %.not44.us = icmp eq i32 %i.q, 0
  br i1 %.not44.us, label %.thread.us, label %.thread48

.thread.us:                                       ; preds = %bb.b, %.split.us
  %i.r = zext i32 %.038.us to i64
  br label %bb.c

bb.c:                                             ; preds = %.thread.us, %bb.e
  %indvars.iv62 = phi i32 [ 0, %.thread.us ], [ %indvars.iv.next63, %bb.e ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.thread.us ], [ %indvars.iv.next, %bb.e ] ; 5 uses
  %i.s = icmp eq i64 %indvars.iv, %i.r
  br i1 %i.s, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr [8 x i8], ptr %0, i64 %indvars.iv
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr i8, ptr %i.u, i64 248
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = tail call i32 @ww_mutex_lock_interruptible(ptr noundef %i.w, ptr noundef %2) #12 ; 3 uses
  %.not45.us = icmp eq i32 %i.x, 0
  br i1 %.not45.us, label %bb.e, label %.preheader.us

bb.e:                                             ; preds = %bb.d, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %indvars.iv.next63 = add nuw nsw i32 %indvars.iv62, 1
  br i1 %exitcond.not, label %.thread48, label %bb.c, !llvm.loop !83

.lr.ph55.us:                                      ; preds = %.lr.ph55.us.preheader, %.lr.ph55.us
  %indvars.iv59 = phi i64 [ 0, %.lr.ph55.us.preheader ], [ %indvars.iv.next60, %.lr.ph55.us ] ; 2 uses
  %i.y = getelementptr [8 x i8], ptr %0, i64 %indvars.iv59
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = getelementptr i8, ptr %i.z, i64 248
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void @ww_mutex_unlock(ptr noundef %i.ab) #12
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1 ; 2 uses
  %exitcond66.not = icmp eq i64 %indvars.iv.next60, %wide.trip.count65
  br i1 %exitcond66.not, label %._crit_edge.us, label %.lr.ph55.us, !llvm.loop !84

._crit_edge.us:                                   ; preds = %.lr.ph55.us, %.preheader.us
  %.not46.us = icmp slt i32 %.038.us, %i.ai
  br i1 %.not46.us, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge.us
  %i.ac = sext i32 %.038.us to i64
  %i.ad = getelementptr [8 x i8], ptr %0, i64 %i.ac
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = getelementptr i8, ptr %i.ae, i64 248
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void @ww_mutex_unlock(ptr noundef %i.ag) #12
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.us
  %i.ah = icmp eq i32 %i.x, -35
  br i1 %i.ah, label %.split.us, label %.thread48

.preheader.us:                                    ; preds = %bb.d
  %i.ai = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %.not = icmp eq i64 %indvars.iv, 0
  br i1 %.not, label %._crit_edge.us, label %.lr.ph55.us.preheader

.lr.ph55.us.preheader:                            ; preds = %.preheader.us
  %wide.trip.count65 = zext nneg i32 %indvars.iv62 to i64
  br label %.lr.ph55.us

.thread48:                                        ; preds = %bb.g, %bb.b, %bb.e, %bb.a
  %.4 = phi i32 [ 0, %bb.e ], [ 0, %bb.a ], [ %i.x, %bb.g ], [ %i.q, %bb.b ]
  ret i32 %.4
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @drm_gem_unlock_reservations(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree readnone captures(none) %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.b = getelementptr [8 x i8], ptr %0, i64 %indvars.iv
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr i8, ptr %i.c, i64 248
  %i.e = load ptr, ptr %i.d, align 8
  tail call void @ww_mutex_unlock(ptr noundef %i.e) #12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !85

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(argmem: readwrite, inaccessiblemem: readwrite)
define dso_local void @drm_gem_lru_init(ptr noundef initializes((0, 8)) %0) #6 align 16 prefalign(16) {
bb.a:
  store i64 0, ptr %0, align 8
  %i.a = getelementptr i8, ptr %0, i64 8          ; 3 uses
  store volatile ptr %i.a, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %0, i64 16
  store volatile ptr %i.a, ptr %i.b, align 8
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @drm_gem_lru_move_tail_locked(ptr noundef %0, ptr noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 360        ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 216
  %i.d = load i64, ptr %i.c, align 8
  %i.e = lshr i64 %i.d, 12
  %i.f = load i64, ptr %i.b, align 8
  %i.g = sub i64 %i.f, %i.e
  store i64 %i.g, ptr %i.b, align 8
  %i.h = load ptr, ptr %i.a, align 8
  %i.i = load i64, ptr %i.h, align 8
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %bb.c, label %drm_gem_lru_remove_locked.exit, !prof !21

bb.c:                                             ; preds = %bb.b
  tail call void asm sideeffect "754: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 754b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 754) #13, !srcloc !68
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.3, ptr nonnull @.str.4, i32 1574, i32 2305, i64 16) #13, !srcloc !69
  tail call void asm sideeffect "755: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 755b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 755) #13, !srcloc !70
  br label %drm_gem_lru_remove_locked.exit

drm_gem_lru_remove_locked.exit:                   ; preds = %bb.b, %bb.c
  %i.k = getelementptr i8, ptr %1, i64 344        ; 2 uses
  %i.l = getelementptr i8, ptr %1, i64 352        ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 8
  store ptr %i.m, ptr %i.o, align 8
  store volatile ptr %i.n, ptr %i.m, align 8
  store ptr inttoptr (i64 -2401263026318606080 to ptr), ptr %i.k, align 8
  store ptr inttoptr (i64 -2401263026318606046 to ptr), ptr %i.l, align 8
  store ptr null, ptr %i.a, align 8
  br label %bb.d

bb.d:                                             ; preds = %drm_gem_lru_remove_locked.exit, %bb.a
  %i.p = getelementptr i8, ptr %1, i64 216
  %i.q = load i64, ptr %i.p, align 8
  %i.r = lshr i64 %i.q, 12
  %i.s = load i64, ptr %0, align 8
  %i.t = add i64 %i.s, %i.r
  store i64 %i.t, ptr %0, align 8
  %i.u = getelementptr i8, ptr %1, i64 344        ; 3 uses
  %i.v = getelementptr i8, ptr %0, i64 8
  %i.w = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  store ptr %i.u, ptr %i.w, align 8
  store ptr %i.v, ptr %i.u, align 8
  %i.y = getelementptr i8, ptr %1, i64 352
  store ptr %i.x, ptr %i.y, align 8
  store volatile ptr %i.u, ptr %i.x, align 8
  store ptr %0, ptr %i.a, align 8
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @drm_gem_lru_move_tail(ptr noundef %0, ptr noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 1528
  tail call void @mutex_lock(ptr noundef %i.c) #12
  %i.d = getelementptr i8, ptr %1, i64 360        ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %drm_gem_lru_move_tail_locked.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %1, i64 216
  %i.g = load i64, ptr %i.f, align 8
  %i.h = lshr i64 %i.g, 12
  %i.i = load i64, ptr %i.e, align 8
  %i.j = sub i64 %i.i, %i.h
  store i64 %i.j, ptr %i.e, align 8
  %i.k = load ptr, ptr %i.d, align 8
  %i.l = load i64, ptr %i.k, align 8
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %bb.c, label %drm_gem_lru_remove_locked.exit.i, !prof !21

bb.c:                                             ; preds = %bb.b
  tail call void asm sideeffect "754: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 754b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 754) #13, !srcloc !68
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.3, ptr nonnull @.str.4, i32 1574, i32 2305, i64 16) #13, !srcloc !69
  tail call void asm sideeffect "755: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 755b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 755) #13, !srcloc !70
  br label %drm_gem_lru_remove_locked.exit.i

drm_gem_lru_remove_locked.exit.i:                 ; preds = %bb.c, %bb.b
  %i.n = getelementptr i8, ptr %1, i64 344        ; 2 uses
  %i.o = getelementptr i8, ptr %1, i64 352        ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.q = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 8
  store ptr %i.p, ptr %i.r, align 8
  store volatile ptr %i.q, ptr %i.p, align 8
  store ptr inttoptr (i64 -2401263026318606080 to ptr), ptr %i.n, align 8
  store ptr inttoptr (i64 -2401263026318606046 to ptr), ptr %i.o, align 8
  store ptr null, ptr %i.d, align 8
  br label %drm_gem_lru_move_tail_locked.exit

drm_gem_lru_move_tail_locked.exit:                ; preds = %bb.a, %drm_gem_lru_remove_locked.exit.i
  %i.s = getelementptr i8, ptr %1, i64 216
  %i.t = load i64, ptr %i.s, align 8
  %i.u = lshr i64 %i.t, 12
  %i.v = load i64, ptr %0, align 8
  %i.w = add i64 %i.v, %i.u
  store i64 %i.w, ptr %0, align 8
  %i.x = getelementptr i8, ptr %1, i64 344        ; 3 uses
  %i.y = getelementptr i8, ptr %0, i64 8
  %i.z = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  store ptr %i.x, ptr %i.z, align 8
  store ptr %i.y, ptr %i.x, align 8
  %i.ab = getelementptr i8, ptr %1, i64 352
  store ptr %i.aa, ptr %i.ab, align 8
  store volatile ptr %i.x, ptr %i.aa, align 8
  store ptr %0, ptr %i.d, align 8
  %i.ac = load ptr, ptr %i.a, align 8
  %i.ad = getelementptr i8, ptr %i.ac, i64 1528
  tail call void @mutex_unlock(ptr noundef %i.ad) #12
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i64 0, 4294967296) i64 @drm_gem_lru_scan(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr noundef %5) #0 align 16 prefalign(16) {
bb.a:
  %6 = alloca %struct.drm_gem_lru, align 8        ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 9 uses
  store i64 0, ptr %6, align 8
  store volatile ptr %i.a, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store volatile ptr %i.a, ptr %i.b, align 8
  %i.c = getelementptr i8, ptr %0, i64 1528       ; 4 uses
end_hunk_0
