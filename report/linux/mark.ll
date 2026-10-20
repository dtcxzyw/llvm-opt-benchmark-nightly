Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/mark?download=true
inline.NumInlined: 192
inline.NumDeleted: 94
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@fsnotify_put_mark:bb.a
  %i.ba = load ptr, ptr @system_dfl_wq, align 8
  %i.bb = tail call zeroext i1 @queue_work_on(i32 noundef 64, ptr noundef %i.ba, ptr noundef @connector_reaper_work) #9 ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %fsnotify_drop_object.exit
  tail call void @_raw_spin_lock(ptr noundef @destroy_lock) #9
  %i.bc = getelementptr i8, ptr %0, i64 16        ; 3 uses
  %i.bd = load ptr, ptr @destroy_list, align 8    ; 2 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 8
  store ptr %i.bc, ptr %i.be, align 8
  store ptr %i.bd, ptr %i.bc, align 8
  %i.bf = getelementptr i8, ptr %0, i64 24
  store ptr @destroy_list, ptr %i.bf, align 8
  store volatile ptr %i.bc, ptr @destroy_list, align 8
  tail call void @_raw_spin_unlock(ptr noundef @destroy_lock) #9
  %i.bg = load ptr, ptr @system_dfl_wq, align 8
  %i.bh = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 64, ptr noundef %i.bg, ptr noundef @reaper_work, i64 noundef 1) #9 ; 0 uses
  br label %fsnotify_final_mark_destroy.exit

fsnotify_final_mark_destroy.exit:                 ; preds = %bb.d, %bb.c, %.critedge.i, %bb.f, %bb.g, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @refcount_dec_and_lock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc ptr @fsnotify_detach_connector_from_object(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8          ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 7 uses
  %i.c = getelementptr i8, ptr %0, i64 4          ; 4 uses
  %i.d = load i8, ptr %i.c, align 4               ; 2 uses
  %i.e = zext i8 %i.d to i32
  switch i8 %i.d, label %fsnotify_connector_sb.exit [
    i8 0, label %fsnotify_object_connp.exit.thread40
    i8 1, label %fsnotify_object_connp.exit.thread43
    i8 2, label %fsnotify_object_connp.exit.thread46
    i8 3, label %fsnotify_object_connp.exit.thread
  ]

fsnotify_object_connp.exit.thread40:              ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.b, i64 528
  %i.g = getelementptr i8, ptr %i.b, i64 40
  %i.h = load ptr, ptr %i.g, align 8
  br label %fsnotify_connector_sb.exit

fsnotify_object_connp.exit.thread43:              ; preds = %bb.a
  %i.i = getelementptr i8, ptr %i.b, i64 232
  %i.j = getelementptr i8, ptr %i.b, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  br label %fsnotify_connector_sb.exit

fsnotify_object_connp.exit.thread46:              ; preds = %bb.a
  %i.l = getelementptr i8, ptr %i.b, i64 904
  %i.m = load volatile ptr, ptr %i.l, align 8
  br label %fsnotify_connector_sb.exit

fsnotify_object_connp.exit.thread:                ; preds = %bb.a
  %i.n = getelementptr i8, ptr %i.b, i64 352
  br label %fsnotify_connector_sb.exit

fsnotify_connector_sb.exit:                       ; preds = %bb.a, %fsnotify_object_connp.exit.thread, %fsnotify_object_connp.exit.thread46, %fsnotify_object_connp.exit.thread40, %fsnotify_object_connp.exit.thread43
  %.0.i38 = phi ptr [ %i.m, %fsnotify_object_connp.exit.thread46 ], [ %i.f, %fsnotify_object_connp.exit.thread40 ], [ %i.i, %fsnotify_object_connp.exit.thread43 ], [ %i.n, %fsnotify_object_connp.exit.thread ], [ null, %bb.a ]
  %.0.i.i = phi ptr [ %i.b, %fsnotify_object_connp.exit.thread46 ], [ %i.h, %fsnotify_object_connp.exit.thread40 ], [ %i.k, %fsnotify_object_connp.exit.thread43 ], [ null, %fsnotify_object_connp.exit.thread ], [ null, %bb.a ] ; 2 uses
  store i32 %i.e, ptr %1, align 4
  %i.o = load i8, ptr %i.c, align 4
  switch i8 %i.o, label %bb.g [
    i8 4, label %bb.i
    i8 0, label %bb.b
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
  ]

bb.b:                                             ; preds = %fsnotify_connector_sb.exit
  %.val = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.p = getelementptr i8, ptr %.val, i64 520
  store i32 0, ptr %i.p, align 8
  %i.q = load i8, ptr %i.c, align 4
  %.not.i = icmp eq i8 %i.q, 0
  br i1 %.not.i, label %bb.c, label %fsnotify_untrack_connector.exit

bb.c:                                             ; preds = %bb.b
  %.val.i = load ptr, ptr %i.a, align 8
  %i.r = getelementptr i8, ptr %.val.i, i64 40
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr i8, ptr %i.s, i64 904
  %i.u = load volatile ptr, ptr %i.t, align 8
  %i.v = getelementptr i8, ptr %i.u, i64 24       ; 2 uses
  tail call void @_raw_spin_lock(ptr noundef %i.v) #9
  %i.w = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.x = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = load ptr, ptr %i.w, align 8              ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 8
  store ptr %i.y, ptr %i.aa, align 8
  store volatile ptr %i.z, ptr %i.y, align 8
  store ptr inttoptr (i64 -2401263026318606080 to ptr), ptr %i.w, align 8
  store ptr inttoptr (i64 -2401263026318606046 to ptr), ptr %i.x, align 8
  tail call void @_raw_spin_unlock(ptr noundef %i.v) #9
  br label %fsnotify_untrack_connector.exit

fsnotify_untrack_connector.exit:                  ; preds = %bb.b, %bb.c
  %i.ab = getelementptr i8, ptr %0, i64 6
  %i.ac = load i16, ptr %i.ab, align 2
  %i.ad = and i16 %i.ac, 2
  %.not = icmp eq i16 %i.ad, 0
  %spec.select = select i1 %.not, ptr null, ptr %.val
  br label %bb.g

bb.d:                                             ; preds = %fsnotify_connector_sb.exit
  %.val32 = load ptr, ptr %i.a, align 8
  %i.ae = getelementptr i8, ptr %.val32, i64 240
  store i32 0, ptr %i.ae, align 8
  br label %bb.g

bb.e:                                             ; preds = %fsnotify_connector_sb.exit
  %.val33 = load ptr, ptr %i.a, align 8
  %i.af = getelementptr i8, ptr %.val33, i64 896
  store i32 0, ptr %i.af, align 64
  br label %bb.g

bb.f:                                             ; preds = %fsnotify_connector_sb.exit
  %.val34 = load ptr, ptr %i.a, align 8
  %i.ag = getelementptr i8, ptr %.val34, i64 344
  store i32 0, ptr %i.ag, align 8
  br label %bb.g

bb.g:                                             ; preds = %fsnotify_untrack_connector.exit, %bb.e, %bb.f, %bb.d, %fsnotify_connector_sb.exit
  %.0 = phi ptr [ %spec.select, %fsnotify_untrack_connector.exit ], [ null, %fsnotify_connector_sb.exit ], [ null, %bb.d ], [ null, %bb.e ], [ null, %bb.f ] ; 2 uses
  store volatile ptr null, ptr %.0.i38, align 8
  store ptr null, ptr %i.a, align 8
  store i8 4, ptr %i.c, align 4
  %.not31 = icmp eq ptr %.0.i.i, null
  br i1 %.not31, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @fsnotify_update_sb_watchers(ptr noundef %.0.i.i, ptr noundef %0) #10, !srcloc !52
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %fsnotify_connector_sb.exit
  %.028 = phi ptr [ null, %fsnotify_connector_sb.exit ], [ %.0, %bb.h ], [ %.0, %bb.g ]
  ret ptr %.028
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @fsnotify_update_sb_watchers(ptr nofree noundef nonnull captures(address) %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 904        ; 3 uses
  %i.b = load volatile ptr, ptr %i.a, align 8     ; 2 uses
  %i.c = getelementptr i8, ptr %1, i64 6          ; 5 uses
  %i.d = load i16, ptr %i.c, align 2
  %i.e = trunc i16 %i.d to i1                     ; 2 uses
  %i.f = getelementptr i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %.thread58.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  %.not44 = icmp eq ptr %i.i, null
  %i.j = getelementptr i8, ptr %i.i, i64 -40
  %.not45 = icmp eq ptr %i.j, null
  %or.cond62 = or i1 %.not44, %.not45
  br i1 %or.cond62, label %.thread58.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr i8, ptr %i.i, i64 -32
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr i8, ptr %i.l, i64 64
  %i.n = load i32, ptr %i.m, align 8              ; 5 uses
  %i.o = icmp ugt i32 %i.n, 2
  br i1 %i.o, label %bb.d, label %.thread58, !prof !55

bb.d:                                             ; preds = %bb.c
  tail call void asm sideeffect "537: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 537b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 537) #8, !srcloc !56
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, ptr @.str.1, i32 185, i32 2305, i64 16) #8, !srcloc !57
  tail call void asm sideeffect "538: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 538b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 538) #8, !srcloc !58
  br label %.thread58.thread

.thread58.thread:                                 ; preds = %bb.d, %bb.b, %bb.a
  %.not45505561.ph = phi i1 [ true, %bb.a ], [ true, %bb.b ], [ false, %bb.d ]
  %i.p = getelementptr i8, ptr %1, i64 5          ; 2 uses
  %i.q = load i8, ptr %i.p, align 1               ; 2 uses
  %i.r = zext i8 %i.q to i32
  br label %._crit_edge

.thread58:                                        ; preds = %bb.c
  %i.s = getelementptr i8, ptr %1, i64 5          ; 4 uses
  %i.t = load i8, ptr %i.s, align 1               ; 3 uses
  %i.u = zext i8 %i.t to i32                      ; 2 uses
  %.not46.not63 = icmp samesign ugt i32 %i.n, %i.u
  br i1 %.not46.not63, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.thread58
  %i.v = getelementptr i8, ptr %i.b, i64 32
  %i.w = zext i8 %i.t to i64
  %wide.trip.count = zext nneg i32 %i.n to i64
  br label %bb.e

._crit_edge.loopexit:                             ; preds = %bb.e
  %.pre = load i8, ptr %i.s, align 1              ; 2 uses
  %.pre73 = zext i8 %.pre to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %.thread58.thread, %._crit_edge.loopexit, %.thread58
  %i.x = phi ptr [ %i.s, %._crit_edge.loopexit ], [ %i.s, %.thread58 ], [ %i.p, %.thread58.thread ]
  %i.y = phi i32 [ %i.n, %._crit_edge.loopexit ], [ %i.n, %.thread58 ], [ 0, %.thread58.thread ] ; 3 uses
  %.not4550556179 = phi i1 [ false, %._crit_edge.loopexit ], [ false, %.thread58 ], [ %.not45505561.ph, %.thread58.thread ] ; 2 uses
  %.pre-phi = phi i32 [ %.pre73, %._crit_edge.loopexit ], [ %i.u, %.thread58 ], [ %i.r, %.thread58.thread ]
  %i.z = phi i8 [ %.pre, %._crit_edge.loopexit ], [ %i.t, %.thread58 ], [ %i.q, %.thread58.thread ]
  %i.aa = icmp samesign ult i32 %i.y, %.pre-phi
  br i1 %i.aa, label %.lr.ph67, label %._crit_edge68

.lr.ph67:                                         ; preds = %._crit_edge
  %i.ab = getelementptr i8, ptr %i.b, i64 32
  %i.ac = zext i8 %i.z to i64
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ %i.w, %.lr.ph ], [ %indvars.iv.next, %bb.e ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %2 = getelementptr [8 x i8], ptr %i.v, i64 %indvars.iv.next ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock incq $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %2, ptr elementtype(i64) %2) #8, !srcloc !17
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.e, !llvm.loop !53

._crit_edge68:                                    ; preds = %bb.f, %._crit_edge
  %i.ad = trunc nuw nsw i32 %i.y to i8
  store i8 %i.ad, ptr %i.x, align 1
  %or.cond = select i1 %.not4550556179, i1 true, i1 %i.e
  br i1 %or.cond, label %bb.h, label %bb.g

bb.f:                                             ; preds = %.lr.ph67, %bb.f
  %indvars.iv70 = phi i64 [ %i.ac, %.lr.ph67 ], [ %indvars.iv.next71, %bb.f ] ; 2 uses
  %i.ae = getelementptr [8 x i8], ptr %i.ab, i64 %indvars.iv70 ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decq $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ae, ptr elementtype(i64) %i.ae) #8, !srcloc !59
  %indvars.iv.next71 = add nsw i64 %indvars.iv70, -1 ; 2 uses
  %indvars = trunc i64 %indvars.iv.next71 to i32
  %i.af = icmp ult i32 %i.y, %indvars
  br i1 %i.af, label %bb.f, label %._crit_edge68, !llvm.loop !54

bb.g:                                             ; preds = %._crit_edge68
  %i.ag = load i16, ptr %i.c, align 2
  %i.ah = or i16 %i.ag, 1
  store i16 %i.ah, ptr %i.c, align 2
  %i.ai = load volatile ptr, ptr %i.a, align 8
  %i.aj = getelementptr i8, ptr %i.ai, i64 32     ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock incq $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.aj, ptr elementtype(i64) %i.aj) #8, !srcloc !17
  br label %fsnotify_put_sb_watched_objects.exit

bb.h:                                             ; preds = %._crit_edge68
  %or.cond3 = select i1 %.not4550556179, i1 %i.e, i1 false
  br i1 %or.cond3, label %bb.i, label %fsnotify_put_sb_watched_objects.exit

bb.i:                                             ; preds = %bb.h
  %i.ak = load i16, ptr %i.c, align 2
  %i.al = and i16 %i.ak, -2
  store i16 %i.al, ptr %i.c, align 2
  %i.am = load volatile ptr, ptr %i.a, align 8
  %i.an = getelementptr i8, ptr %i.am, i64 32     ; 3 uses
  %i.ao = tail call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decq $0", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.an, ptr elementtype(i64) %i.an) #8, !srcloc !24 ; 2 uses
  %i.ap = icmp ult i8 %i.ao, 2
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = trunc nuw i8 %i.ao to i1
  br i1 %i.aq, label %bb.j, label %fsnotify_put_sb_watched_objects.exit

bb.j:                                             ; preds = %bb.i
  tail call void @wake_up_var(ptr noundef %i.an) #9
  br label %fsnotify_put_sb_watched_objects.exit

fsnotify_put_sb_watched_objects.exit:             ; preds = %bb.j, %bb.i, %bb.h, %bb.g
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noundef zeroext i1 @fsnotify_prepare_user_wait(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 48
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.loopexit26
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %.loopexit26 ] ; 4 uses
  %i.b = getelementptr [8 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not32 = icmp eq ptr %i.c, null
  br i1 %.not32, label %.loopexit26, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.g
  %.01933 = phi ptr [ %i.z, %bb.g ], [ %i.c, %bb.b ] ; 7 uses
  %i.d = getelementptr i8, ptr %.01933, i64 4     ; 4 uses
  %i.e = load volatile i32, ptr %i.d, align 4     ; 2 uses
  %.old1.not.i.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.old1.not.i.i.i.i, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.lr.ph, %arch_atomic_try_cmpxchg.exit.i.i.i.i
  %.0.i.i.i.i = phi i32 [ %i.k, %arch_atomic_try_cmpxchg.exit.i.i.i.i ], [ %i.e, %.lr.ph ] ; 3 uses
  %i.f = add i32 %.0.i.i.i.i, 1
  %i.g = tail call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.d, i32 %i.f, ptr elementtype(i32) %i.d, i32 %.0.i.i.i.i) #8, !srcloc !64 ; 2 uses
  %i.h = extractvalue { i8, i32 } %i.g, 0         ; 2 uses
  %i.i = icmp ult i8 %i.h, 2
  tail call void @llvm.assume(i1 %i.i)
  %i.j = trunc nuw i8 %i.h to i1
  br i1 %i.j, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i, label %arch_atomic_try_cmpxchg.exit.i.i.i.i, !prof !16

arch_atomic_try_cmpxchg.exit.i.i.i.i:             ; preds = %.preheader.i.i.i.i
  %i.k = extractvalue { i8, i32 } %i.g, 1         ; 2 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i, label %.preheader.i.i.i.i, !llvm.loop !60

arch_atomic_try_cmpxchg.exit.thread.i.i.i.i:      ; preds = %arch_atomic_try_cmpxchg.exit.i.i.i.i, %.preheader.i.i.i.i, %.lr.ph
  %.2.i.i.i.i = phi i32 [ 0, %.lr.ph ], [ %.0.i.i.i.i, %.preheader.i.i.i.i ], [ 0, %arch_atomic_try_cmpxchg.exit.i.i.i.i ] ; 3 uses
  %i.m = add i32 %.2.i.i.i.i, 1
  %i.n = or i32 %i.m, %.2.i.i.i.i
  %.not.i.i.i.i = icmp sgt i32 %i.n, -1
  br i1 %.not.i.i.i.i, label %refcount_inc_not_zero.exit.i, label %bb.c, !prof !16

bb.c:                                             ; preds = %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i
  tail call void @refcount_warn_saturate(ptr noundef %i.d, i32 noundef 0) #9
  br label %refcount_inc_not_zero.exit.i

refcount_inc_not_zero.exit.i:                     ; preds = %bb.c, %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i
  %.not8.i = icmp eq i32 %.2.i.i.i.i, 0
  br i1 %.not8.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %refcount_inc_not_zero.exit.i
  %i.o = getelementptr i8, ptr %.01933, i64 32    ; 3 uses
  tail call void @_raw_spin_lock(ptr noundef %i.o) #9
  %i.p = getelementptr i8, ptr %.01933, i64 68
  %i.q = load i32, ptr %i.p, align 4
  %i.r = and i32 %i.q, 2
  %.not.i = icmp eq i32 %i.r, 0
  br i1 %.not.i, label %bb.e, label %fsnotify_get_mark_safe.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_raw_spin_unlock(ptr noundef %i.o) #9
  tail call void @fsnotify_put_mark(ptr noundef nonnull %.01933) #10
  br label %bb.f

fsnotify_get_mark_safe.exit:                      ; preds = %bb.d
  %i.s = getelementptr i8, ptr %.01933, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr i8, ptr %i.t, i64 104      ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.u, ptr elementtype(i32) %i.u) #8, !srcloc !26
  tail call void @_raw_spin_unlock(ptr noundef %i.o) #9
  br label %.loopexit26

bb.f:                                             ; preds = %bb.e, %refcount_inc_not_zero.exit.i
  %i.v = getelementptr i8, ptr %.01933, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = load ptr, ptr %i.a, align 8
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %.critedge.preheader, label %bb.g

.critedge.preheader:                              ; preds = %bb.f
  %.not38 = icmp eq i64 %indvars.iv, 0
  br i1 %.not38, label %.loopexit, label %.lr.ph37

bb.g:                                             ; preds = %bb.f
  %i.z = tail call ptr @fsnotify_next_mark(ptr noundef nonnull %.01933) #9 ; 3 uses
  store ptr %i.z, ptr %i.b, align 8
  %.not = icmp eq ptr %i.z, null
  br i1 %.not, label %.loopexit26, label %.lr.ph, !llvm.loop !61

.loopexit26:                                      ; preds = %bb.g, %bb.b, %fsnotify_get_mark_safe.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next, 6
  br i1 %exitcond, label %bb.h, label %bb.b, !llvm.loop !62

bb.h:                                             ; preds = %.loopexit26
  %i.aa = getelementptr i8, ptr %0, i64 60
  %i.ab = load i32, ptr %i.aa, align 4            ; 2 uses
  %.not.i22 = icmp ult i32 %i.ab, 2
  br i1 %.not.i22, label %srcu_read_unlock.exit, label %bb.i, !prof !16

bb.i:                                             ; preds = %bb.h
  tail call void asm sideeffect "168: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 168b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 168) #8, !srcloc !27
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, ptr @.str.5, i32 484, i32 2307, i64 16) #8, !srcloc !28
  tail call void asm sideeffect "169: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 169b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 169) #8, !srcloc !29
  br label %srcu_read_unlock.exit

srcu_read_unlock.exit:                            ; preds = %bb.h, %bb.i
  tail call void @__srcu_read_unlock(ptr noundef @fsnotify_mark_srcu, i32 noundef %i.ab) #9
  br label %.loopexit

.lr.ph37:                                         ; preds = %.critedge.preheader, %fsnotify_put_mark_wake.exit
  %indvars.iv44 = phi i64 [ %indvars.iv.next45, %fsnotify_put_mark_wake.exit ], [ %indvars.iv, %.critedge.preheader ] ; 2 uses
  %indvars.iv.next45 = add nsw i64 %indvars.iv44, -1 ; 2 uses
  %i.ac = getelementptr [8 x i8], ptr %0, i64 %indvars.iv.next45
  %i.ad = load ptr, ptr %i.ac, align 8            ; 3 uses
  %.not.i23 = icmp eq ptr %i.ad, null
  br i1 %.not.i23, label %fsnotify_put_mark_wake.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph37
  %i.ae = getelementptr i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8            ; 3 uses
  tail call void @fsnotify_put_mark(ptr noundef nonnull %i.ad) #10
  %i.ag = getelementptr i8, ptr %i.af, i64 104    ; 2 uses
  %i.ah = tail call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ag, ptr elementtype(i32) %i.ag) #8, !srcloc !30 ; 2 uses
  %i.ai = icmp ult i8 %i.ah, 2
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = trunc nuw i8 %i.ah to i1
  br i1 %i.aj, label %bb.k, label %fsnotify_put_mark_wake.exit

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr i8, ptr %i.af, i64 68
  %i.al = load i8, ptr %i.ak, align 4, !range !31, !noundef !32
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.l, label %fsnotify_put_mark_wake.exit

bb.l:                                             ; preds = %bb.k
  %i.an = getelementptr i8, ptr %i.af, i64 32
  %i.ao = tail call i32 @__wake_up(ptr noundef %i.an, i32 noundef 3, i32 noundef 1, ptr noundef null) #9 ; 0 uses
  br label %fsnotify_put_mark_wake.exit

fsnotify_put_mark_wake.exit:                      ; preds = %.lr.ph37, %bb.j, %bb.k, %bb.l
  %i.ap = icmp sgt i64 %indvars.iv44, 1
  br i1 %i.ap, label %.lr.ph37, label %.loopexit, !llvm.loop !63

.loopexit:                                        ; preds = %fsnotify_put_mark_wake.exit, %.critedge.preheader, %srcu_read_unlock.exit
  %i.aq = phi i1 [ true, %srcu_read_unlock.exit ], [ false, %.critedge.preheader ], [ false, %fsnotify_put_mark_wake.exit ]
  ret i1 %i.aq
}

end_hunk_0
