Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/drm_gem?download=true
inline.NumInlined: 207
inline.NumDeleted: 102
begin_hunk_0_@drm_gem_lock_reservations:bb.a
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
  br i1 %i.j, label %bb.c, label %drm_gem_lru_remove_locked.exit, !prof !20

bb.c:                                             ; preds = %bb.b
  tail call void asm sideeffect "754: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 754b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 754) #13, !srcloc !29
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.3, ptr nonnull @.str.4, i32 1574, i32 2305, i64 16) #13, !srcloc !30
  tail call void asm sideeffect "755: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 755b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 755) #13, !srcloc !31
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
  br i1 %i.m, label %bb.c, label %drm_gem_lru_remove_locked.exit.i, !prof !20

bb.c:                                             ; preds = %bb.b
  tail call void asm sideeffect "754: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 754b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 754) #13, !srcloc !29
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.3, ptr nonnull @.str.4, i32 1574, i32 2305, i64 16) #13, !srcloc !30
  tail call void asm sideeffect "755: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 755b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 755) #13, !srcloc !31
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
  call void @mutex_lock(ptr noundef %i.c) #12
  %i.d = getelementptr i8, ptr %1, i64 8          ; 3 uses
  %.not63 = icmp eq ptr %5, null
  %7 = getelementptr i8, ptr %5, i64 8
  %8 = getelementptr i8, ptr %5, i64 16
  %9 = getelementptr i8, ptr %5, i64 20
  %10 = getelementptr i8, ptr %5, i64 22
  %.not111 = icmp eq i32 %2, 0
  br i1 %.not111, label %.split, label %.outer.split.preheader

.outer.split.preheader:                           ; preds = %bb.a, %drm_gem_object_put.exit
  %.055.ph110 = phi i32 [ %.2, %drm_gem_object_put.exit ], [ 0, %bb.a ] ; 5 uses
  br label %.outer.split

.outer.split:                                     ; preds = %.outer.split.preheader, %kref_get_unless_zero.exit
  %i.e = load volatile ptr, ptr %i.d, align 8     ; 15 uses
  %.not = icmp eq ptr %i.e, %i.d
  %i.f = getelementptr i8, ptr %i.e, i64 -344     ; 10 uses
  %.not6068 = icmp eq ptr %i.f, null
  %.not60 = or i1 %.not, %.not6068
  br i1 %.not60, label %.split, label %bb.b

bb.b:                                             ; preds = %.outer.split
  %i.g = getelementptr i8, ptr %i.e, i64 16       ; 7 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %drm_gem_lru_move_tail_locked.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %i.e, i64 -128
  %i.j = load i64, ptr %i.i, align 8
  %i.k = lshr i64 %i.j, 12
  %i.l = load i64, ptr %i.h, align 8
  %i.m = sub i64 %i.l, %i.k
  store i64 %i.m, ptr %i.h, align 8
  %i.n = load ptr, ptr %i.g, align 8
  %i.o = load i64, ptr %i.n, align 8
  %i.p = icmp slt i64 %i.o, 0
  br i1 %i.p, label %bb.d, label %drm_gem_lru_remove_locked.exit.i, !prof !20

bb.d:                                             ; preds = %bb.c
  call void asm sideeffect "754: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 754b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 754) #13, !srcloc !29
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.3, ptr nonnull @.str.4, i32 1574, i32 2305, i64 16) #13, !srcloc !30
  call void asm sideeffect "755: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 755b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 755) #13, !srcloc !31
  br label %drm_gem_lru_remove_locked.exit.i

drm_gem_lru_remove_locked.exit.i:                 ; preds = %bb.d, %bb.c
  %i.q = getelementptr i8, ptr %i.e, i64 8        ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 8
  store ptr %i.r, ptr %i.t, align 8
  store volatile ptr %i.s, ptr %i.r, align 8
  store ptr inttoptr (i64 -2401263026318606080 to ptr), ptr %i.e, align 8
  store ptr inttoptr (i64 -2401263026318606046 to ptr), ptr %i.q, align 8
  store ptr null, ptr %i.g, align 8
  br label %drm_gem_lru_move_tail_locked.exit

drm_gem_lru_move_tail_locked.exit:                ; preds = %bb.b, %drm_gem_lru_remove_locked.exit.i
  %i.u = getelementptr i8, ptr %i.e, i64 -128
  %i.v = load i64, ptr %i.u, align 8
  %i.w = lshr i64 %i.v, 12
  %i.x = load i64, ptr %6, align 8
  %i.y = add i64 %i.x, %i.w
  store i64 %i.y, ptr %6, align 8
  %i.z = load ptr, ptr %i.b, align 8              ; 2 uses
  store ptr %i.e, ptr %i.b, align 8
  store ptr %i.a, ptr %i.e, align 8
  %i.aa = getelementptr i8, ptr %i.e, i64 8
  store ptr %i.z, ptr %i.aa, align 8
  store volatile ptr %i.e, ptr %i.z, align 8
  store ptr %6, ptr %i.g, align 8
  %i.ab = load volatile i32, ptr %i.f, align 8    ; 2 uses
  %.old1.not.i.i.i.i = icmp eq i32 %i.ab, 0
  br i1 %.old1.not.i.i.i.i, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %drm_gem_lru_move_tail_locked.exit, %arch_atomic_try_cmpxchg.exit.i.i.i.i
  %.0.i.i.i.i = phi i32 [ %i.ah, %arch_atomic_try_cmpxchg.exit.i.i.i.i ], [ %i.ab, %drm_gem_lru_move_tail_locked.exit ] ; 3 uses
  %i.ac = add i32 %.0.i.i.i.i, 1
  %i.ad = call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) %i.f, i32 %i.ac, ptr nonnull elementtype(i32) %i.f, i32 %.0.i.i.i.i) #13, !srcloc !32 ; 2 uses
  %i.ae = extractvalue { i8, i32 } %i.ad, 0       ; 2 uses
  %i.af = icmp ult i8 %i.ae, 2
  call void @llvm.assume(i1 %i.af)
  %i.ag = trunc nuw i8 %i.ae to i1
  br i1 %i.ag, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i, label %arch_atomic_try_cmpxchg.exit.i.i.i.i, !prof !13

arch_atomic_try_cmpxchg.exit.i.i.i.i:             ; preds = %.preheader.i.i.i.i
  %i.ah = extractvalue { i8, i32 } %i.ad, 1       ; 2 uses
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i, label %.preheader.i.i.i.i, !llvm.loop !1

arch_atomic_try_cmpxchg.exit.thread.i.i.i.i:      ; preds = %arch_atomic_try_cmpxchg.exit.i.i.i.i, %.preheader.i.i.i.i, %drm_gem_lru_move_tail_locked.exit
  %.2.i.i.i.i = phi i32 [ 0, %drm_gem_lru_move_tail_locked.exit ], [ %.0.i.i.i.i, %.preheader.i.i.i.i ], [ 0, %arch_atomic_try_cmpxchg.exit.i.i.i.i ] ; 3 uses
  %i.aj = add i32 %.2.i.i.i.i, 1
  %i.ak = or i32 %i.aj, %.2.i.i.i.i
  %.not.i.i.i.i = icmp sgt i32 %i.ak, -1
  br i1 %.not.i.i.i.i, label %kref_get_unless_zero.exit, label %bb.e, !prof !13

bb.e:                                             ; preds = %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i
  call void @refcount_warn_saturate(ptr noundef nonnull %i.f, i32 noundef 0) #12
  br label %kref_get_unless_zero.exit

kref_get_unless_zero.exit:                        ; preds = %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i, %bb.e
  %.not69 = icmp eq i32 %.2.i.i.i.i, 0
  br i1 %.not69, label %.outer.split, label %bb.f, !llvm.loop !86

bb.f:                                             ; preds = %kref_get_unless_zero.exit
  %i.al = getelementptr i8, ptr %i.e, i64 -128    ; 3 uses
  call void @mutex_unlock(ptr noundef %i.c) #12
  br i1 %.not63, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #18, !srcloc !33
  %i.an = inttoptr i64 %i.am to ptr
  store ptr %i.an, ptr %5, align 8
  %i.ao = call i64 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddq ${0:q}, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @reservation_ww_class, i64 1, ptr nonnull elementtype(i64) @reservation_ww_class) #13, !srcloc !34
  %i.ap = add i64 %i.ao, 1
  store i64 %i.ap, ptr %7, align 8
  store i32 0, ptr %8, align 8
  store i16 0, ptr %9, align 4
  %i.aq = load i32, ptr getelementptr inbounds nuw (i8, ptr @reservation_ww_class, i64 24), align 8
  %i.ar = trunc i32 %i.aq to i16
  store i16 %i.ar, ptr %10, align 2
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.as = getelementptr i8, ptr %i.e, i64 -96     ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = call i32 @ww_mutex_trylock(ptr noundef %i.at, ptr noundef %5) #12
  %.not64 = icmp eq i32 %i.au, 0
  br i1 %.not64, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.av = load i64, ptr %i.al, align 8
  %i.aw = lshr i64 %i.av, 12
  %i.ax = load i64, ptr %3, align 8
  %i.ay = add i64 %i.ax, %i.aw
  store i64 %i.ay, ptr %3, align 8
  br label %bb.r

bb.j:                                             ; preds = %bb.h
  %i.az = call zeroext i1 %4(ptr noundef nonnull %i.f, ptr noundef %5) #12
  br i1 %i.az, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.ba = load i64, ptr %i.al, align 8
  %i.bb = lshr i64 %i.ba, 12
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = add i32 %.055.ph110, %i.bc              ; 2 uses
  %i.be = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.bf = icmp eq ptr %i.be, %6
  br i1 %i.bf, label %bb.l, label %bb.m, !prof !20

bb.l:                                             ; preds = %bb.k
  call void asm sideeffect "760: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 760b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 760) #13, !srcloc !88
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.3, ptr nonnull @.str.4, i32 1714, i32 2305, i64 16) #13, !srcloc !89
  call void asm sideeffect "761: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 761b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 761) #13, !srcloc !90
  %.pre = load ptr, ptr %i.g, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bg = phi ptr [ %.pre, %bb.l ], [ %i.be, %bb.k ]
  %i.bh = icmp eq ptr %i.bg, %1
  br i1 %i.bh, label %bb.n, label %bb.q, !prof !20

bb.n:                                             ; preds = %bb.m
  call void asm sideeffect "762: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 762b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 762) #13, !srcloc !91
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.3, ptr nonnull @.str.4, i32 1715, i32 2305, i64 16) #13, !srcloc !92
  call void asm sideeffect "763: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 763b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 763) #13, !srcloc !93
  br label %bb.q

bb.o:                                             ; preds = %bb.j
  %i.bi = load ptr, ptr %i.g, align 8
  %i.bj = icmp eq ptr %i.bi, %6
  br i1 %i.bj, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bk = load i64, ptr %i.al, align 8
  %i.bl = lshr i64 %i.bk, 12
  %i.bm = load i64, ptr %3, align 8
  %i.bn = add i64 %i.bm, %i.bl
  store i64 %i.bn, ptr %3, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.m, %bb.n, %bb.o, %bb.p
  %.1 = phi i32 [ %.055.ph110, %bb.o ], [ %.055.ph110, %bb.p ], [ %i.bd, %bb.n ], [ %i.bd, %bb.m ]
  %i.bo = load ptr, ptr %i.as, align 8
  call void @ww_mutex_unlock(ptr noundef %i.bo) #12
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.i
  %.2 = phi i32 [ %.055.ph110, %bb.i ], [ %.1, %bb.q ] ; 3 uses
  %i.bp = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) %i.f, i32 -1, ptr nonnull elementtype(i32) %i.f) #13, !srcloc !19 ; 2 uses
  %i.bq = icmp eq i32 %i.bp, 1
  br i1 %i.bq, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.br = icmp slt i32 %i.bp, 1
  br i1 %i.br, label %bb.t, label %drm_gem_object_put.exit, !prof !20

bb.t:                                             ; preds = %bb.s
  call void @refcount_warn_saturate(ptr noundef nonnull %i.f, i32 noundef 3) #12
  br label %drm_gem_object_put.exit

bb.u:                                             ; preds = %bb.r
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !21
  %i.bs = getelementptr i8, ptr %i.e, i64 -8
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = load ptr, ptr %i.bt, align 8            ; 2 uses
  %.not.i.i.i.i66 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i.i66, label %bb.v, label %.critedge.i.i.i.i, !prof !20

end_hunk_0
