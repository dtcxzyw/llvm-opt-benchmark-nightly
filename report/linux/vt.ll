Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/vt?download=true
inline.NumInlined: 364
inline.NumDeleted: 106
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 24
begin_hunk_0_@add_softcursor:bb.a
bb.k:                                             ; preds = %bb.i
  %i.as = getelementptr i8, ptr %i.ap, i64 48
  %i.at = load ptr, ptr %i.as, align 8
  call void %i.at(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef 1, i32 noundef %i.am, i32 noundef %i.an) #25, !inline_history !5
  br label %con_putc.exit

con_putc.exit:                                    ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.l

bb.l:                                             ; preds = %con_should_update.exit, %con_putc.exit, %bb.a
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @vcs_scr_updated(ptr noundef %0) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %1 = alloca %struct.vt_notifier_param, align 8  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  store ptr %0, ptr %1, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 0, ptr %i.b, align 4
  %i.c = call i32 @atomic_notifier_call_chain(ptr noundef @vt_notifier_list, i64 noundef 4, ptr noundef nonnull %1) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @console_callback(ptr nofree readnone captures(none) %0) #1 align 16 prefalign(16) {
bb.a:
  %1 = alloca %struct.vt_notifier_param, align 8  ; 6 uses
  tail call void @console_lock() #25
  %i.a = load i32, ptr @want_console, align 4     ; 4 uses
  %i.b = icmp sgt i32 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr @fg_console, align 4       ; 2 uses
  %.not = icmp ne i32 %i.a, %i.c
  %i.d = icmp samesign ult i32 %i.a, 63
  %or.cond = select i1 %.not, i1 %i.d, i1 false
  br i1 %or.cond, label %vc_cons_allocated.exit, label %vc_cons_allocated.exit.thread

vc_cons_allocated.exit:                           ; preds = %bb.b
  %i.e = zext nneg i32 %i.a to i64
  %i.f = getelementptr [40 x i8], ptr @vc_cons, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8
  %.not10 = icmp eq ptr %i.g, null
  br i1 %.not10, label %vc_cons_allocated.exit.thread, label %bb.c

bb.c:                                             ; preds = %vc_cons_allocated.exit
  %i.h = sext i32 %i.c to i64
  %i.i = getelementptr [40 x i8], ptr @vc_cons, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8
  tail call fastcc void @hide_cursor(ptr noundef %i.j) #28, !srcloc !166
  %i.k = load i32, ptr @want_console, align 4
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr [40 x i8], ptr @vc_cons, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8
  tail call void @change_console(ptr noundef %i.n) #25
  br label %vc_cons_allocated.exit.thread

vc_cons_allocated.exit.thread:                    ; preds = %bb.c, %vc_cons_allocated.exit, %bb.b
  store i32 -1, ptr @want_console, align 4
  br label %bb.d

bb.d:                                             ; preds = %vc_cons_allocated.exit.thread, %bb.a
  %i.o = load i32, ptr @do_poke_blanked_console, align 4
  %.not6 = icmp eq i32 %i.o, 0
  br i1 %.not6, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr @do_poke_blanked_console, align 4
  tail call void @poke_blanked_console() #28
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.p = load i32, ptr @scrollback_delta, align 4
  %.not7 = icmp eq i32 %i.p, 0
  br i1 %.not7, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = load i32, ptr @fg_console, align 4
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr [40 x i8], ptr @vc_cons, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8              ; 3 uses
  tail call void @clear_selection() #25
  %i.u = getelementptr i8, ptr %i.t, i64 476
  %i.v = load i8, ptr %i.u, align 4
  %i.w = icmp eq i8 %i.v, 0
  br i1 %i.w, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr i8, ptr %i.t, i64 456
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr i8, ptr %i.y, i64 128
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %.not8 = icmp eq ptr %i.aa, null
  br i1 %.not8, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = load i32, ptr @scrollback_delta, align 4
  tail call void %i.aa(ptr noundef %i.t, i32 noundef %i.ab) #25
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  store i32 0, ptr @scrollback_delta, align 4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.f
  %.b = load i1, ptr @blank_timer_expired, align 4
  br i1 %.b, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @do_blank_screen(i32 noundef 0) #28
  store i1 false, ptr @blank_timer_expired, align 4
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ac = load i32, ptr @fg_console, align 4
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr [40 x i8], ptr @vc_cons, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  store ptr %i.af, ptr %1, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 0, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 0, ptr %i.ah, align 4
  %i.ai = call i32 @atomic_notifier_call_chain(ptr noundef @vt_notifier_list, i64 noundef 4, ptr noundef nonnull %1) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  call void @console_unlock() #25
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @change_console(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @clear_selection() local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc_noprof(i64 noundef) local_unnamed_addr #16

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @vc_is_sel(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @__kmalloc_cache_noprof(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #17

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc_noprof(i64 noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @vc_port_destruct(ptr noundef %0) #1 align 16 prefalign(16) {
bb.a:
  tail call void @kfree(ptr noundef %0) #25
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @tty_do_resize(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @__tty_insert_flip_string_flags(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i64 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @console_lock() local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @console_unlock() local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @reset_vc(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @reset_terminal(ptr noundef initializes((448, 456), (540, 544)) %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 448        ; 2 uses
  store i32 0, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %0, i64 408        ; 2 uses
  %i.c = load i32, ptr %i.b, align 8
  %i.d = getelementptr i8, ptr %0, i64 452        ; 2 uses
  store i32 %i.c, ptr %i.d, align 4
  %i.e = getelementptr i8, ptr %0, i64 540
  store i32 0, ptr %i.e, align 4
  %i.f = getelementptr i8, ptr %0, i64 664        ; 8 uses
  %i.g = load i16, ptr %i.f, align 8
  %i.h = and i16 %i.g, -897
  store i16 %i.h, ptr %i.f, align 8
  %i.i = tail call ptr @set_translate(i32 noundef 0, ptr noundef %0) #25
  %i.j = getelementptr i8, ptr %0, i64 752
  store ptr %i.i, ptr %i.j, align 8
  %i.k = getelementptr i8, ptr %0, i64 369
  store i8 0, ptr %i.k, align 1
  %i.l = getelementptr i8, ptr %0, i64 370
  store i8 1, ptr %i.l, align 2
  %i.m = getelementptr i8, ptr %0, i64 371        ; 2 uses
  %i.n = load i8, ptr %i.m, align 1
  %i.o = and i8 %i.n, -2
  store i8 %i.o, ptr %i.m, align 1
  %i.p = load i16, ptr %i.f, align 8              ; 2 uses
  %i.q = and i16 %i.p, -29697
  store i16 %i.q, ptr %i.f, align 8
  %i.r = load i32, ptr @default_utf8, align 4
  %i.s = trunc i32 %i.r to i16
  %i.t = shl i16 %i.s, 15
  %i.u = and i16 %i.p, 3040
  %i.v = or disjoint i16 %i.t, %i.u
  %i.w = getelementptr i8, ptr %0, i64 666
  store i8 0, ptr %i.w, align 2
  %i.x = or disjoint i16 %i.v, 16                 ; 2 uses
  store i16 %i.x, ptr %i.f, align 8
  %i.y = load i32, ptr @global_cursor_default, align 4
  %i.z = trunc i32 %i.y to i16
  %i.aa = shl i16 %i.z, 5
  %i.ab = and i16 %i.aa, 32
  %i.ac = and i16 %i.x, -29808
  %i.ad = or disjoint i16 %i.ab, %i.ac
  store i16 %i.ad, ptr %i.f, align 8
  %i.ae = getelementptr i8, ptr %0, i64 808       ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  %.not = icmp eq ptr %i.af, null
  br i1 %.not, label %arch_set_bit.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @kfree(ptr noundef nonnull %i.af) #25
  store ptr null, ptr %i.ae, align 8
  %i.ag = getelementptr i8, ptr %0, i64 816       ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void @vfree(ptr noundef %i.ah) #25
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %i.ag, i8 0, i64 16, i1 false)
  br label %arch_set_bit.exit

arch_set_bit.exit:                                ; preds = %bb.b, %bb.a
  %i.ai = getelementptr i8, ptr %0, i64 400
  %i.aj = load i16, ptr %i.ai, align 8
  %i.ak = zext i16 %i.aj to i32
  tail call void @vt_reset_keyboard(i32 noundef %i.ak) #25
  %i.al = load i32, ptr @cur_default, align 4
  %i.am = getelementptr i8, ptr %0, i64 484
  store i32 %i.al, ptr %i.am, align 4
  %i.an = getelementptr i8, ptr %0, i64 490
  %i.ao = load i16, ptr %i.an, align 2
  %i.ap = getelementptr i8, ptr %0, i64 488
  store i16 %i.ao, ptr %i.ap, align 8
  %i.aq = getelementptr i8, ptr %0, i64 372
  store i32 1, ptr %i.aq, align 4
  %i.ar = getelementptr i8, ptr %0, i64 376
  %i.as = getelementptr i8, ptr %0, i64 478
  store i32 0, ptr %i.ar, align 8
  %i.at = load i8, ptr %i.as, align 2
  %i.au = getelementptr i8, ptr %0, i64 368
  store i8 %i.at, ptr %i.au, align 8
  tail call fastcc void @update_attr(ptr noundef %0) #28, !srcloc !167
  %i.av = getelementptr i8, ptr %0, i64 672       ; 33 uses
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(32) %i.av, i8 0, i64 32, i1 false)
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.av, i64 range(i64 0, 256) 0) #26, !srcloc !53
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.av, i64 range(i64 0, 256) 8) #26, !srcloc !53
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.av, i64 range(i64 0, 256) 16) #26, !srcloc !53
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.av, i64 range(i64 0, 256) 24) #26, !srcloc !53
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.av, i64 range(i64 0, 256) 32) #26, !srcloc !53
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.av, i64 range(i64 0, 256) 40) #26, !srcloc !53
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.av, i64 range(i64 0, 256) 48) #26, !srcloc !53
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.av, i64 range(i64 0, 256) 56) #26, !srcloc !53
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.av, i64 range(i64 0, 256) 64) #26, !srcloc !53
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.av, i64 range(i64 0, 256) 72) #26, !srcloc !53
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.av, i64 range(i64 0, 256) 80) #26, !srcloc !53
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.av, i64 range(i64 0, 256) 88) #26, !srcloc !53
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.av, i64 range(i64 0, 256) 96) #26, !srcloc !53
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.av, i64 range(i64 0, 256) 104) #26, !srcloc !53
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.av, i64 range(i64 0, 256) 112) #26, !srcloc !53
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.av, i64 range(i64 0, 256) 120) #26, !srcloc !53
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.av, i64 range(i64 0, 256) 128) #26, !srcloc !53
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.av, i64 range(i64 0, 256) 136) #26, !srcloc !53
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.av, i64 range(i64 0, 256) 144) #26, !srcloc !53
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.av, i64 range(i64 0, 256) 152) #26, !srcloc !53
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.av, i64 range(i64 0, 256) 160) #26, !srcloc !53
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.av, i64 range(i64 0, 256) 168) #26, !srcloc !53
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.av, i64 range(i64 0, 256) 176) #26, !srcloc !53
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.av, i64 range(i64 0, 256) 184) #26, !srcloc !53
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.av, i64 range(i64 0, 256) 192) #26, !srcloc !53
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.av, i64 range(i64 0, 256) 200) #26, !srcloc !53
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.av, i64 range(i64 0, 256) 208) #26, !srcloc !53
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.av, i64 range(i64 0, 256) 216) #26, !srcloc !53
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.av, i64 range(i64 0, 256) 224) #26, !srcloc !53
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.av, i64 range(i64 0, 256) 232) #26, !srcloc !53
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.av, i64 range(i64 0, 256) 240) #26, !srcloc !53
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.av, i64 range(i64 0, 256) 248) #26, !srcloc !53
  %i.aw = getelementptr i8, ptr %0, i64 760
  store i32 750, ptr %i.aw, align 8
  %i.ax = getelementptr i8, ptr %0, i64 764
  store i32 125, ptr %i.ax, align 4
  %i.ay = getelementptr i8, ptr %0, i64 768
  store i16 200, ptr %i.ay, align 8
  %i.az = getelementptr i8, ptr %0, i64 404
  %i.ba = load i32, ptr %i.az, align 4
  %.not.i.not = icmp eq i32 %i.ba, 0
  %spec.select.i = sext i1 %.not.i.not to i32     ; 2 uses
  %i.bb = getelementptr i8, ptr %0, i64 360       ; 2 uses
  store i32 %spec.select.i, ptr %i.bb, align 8
  %i.bc = load i16, ptr %i.f, align 8             ; 2 uses
  %i.bd = and i16 %i.bc, 8
  %.not31.i = icmp eq i16 %i.bd, 0
  br i1 %.not31.i, label %gotoxy.exit.thread, label %gotoxy.exit

gotoxy.exit.thread:                               ; preds = %arch_set_bit.exit
  %.0.i50 = load i32, ptr %i.b, align 8
  %i.be = tail call i32 @llvm.smin.i32(i32 %.0.i50, i32 1)
  %spec.select40.i52 = add i32 %i.be, -1
  br label %bb.c

gotoxy.exit:                                      ; preds = %arch_set_bit.exit
  %i.bf = load i32, ptr %i.a, align 8
  %.fr = freeze i32 %i.bf                         ; 2 uses
  %.0.i = load i32, ptr %i.d, align 4
  %i.bg = icmp sgt i32 %.fr, 0
  %i.bh = tail call i32 @llvm.smin.i32(i32 %.0.i, i32 1)
  %spec.select40.i = add i32 %i.bh, -1
  %spec.select = select i1 %i.bg, i32 %.fr, i32 %spec.select40.i
  br label %bb.c

bb.c:                                             ; preds = %gotoxy.exit, %gotoxy.exit.thread
  %i.bi = phi i32 [ %spec.select40.i52, %gotoxy.exit.thread ], [ %spec.select, %gotoxy.exit ] ; 2 uses
  %i.bj = getelementptr i8, ptr %0, i64 364
  store i32 %i.bi, ptr %i.bj, align 4
  %i.bk = getelementptr i8, ptr %0, i64 424
  %i.bl = load i64, ptr %i.bk, align 8
  %i.bm = getelementptr i8, ptr %0, i64 412
  %i.bn = load i32, ptr %i.bm, align 4
  %i.bo = mul i32 %i.bn, %i.bi
  %i.bp = zext i32 %i.bo to i64
  %i.bq = shl nsw i32 %spec.select.i, 1
  %i.br = zext i32 %i.bq to i64
  %i.bs = add i64 %i.bl, %i.br
  %i.bt = add i64 %i.bs, %i.bp
  %i.bu = getelementptr i8, ptr %0, i64 496
  store i64 %i.bt, ptr %i.bu, align 8
  %i.bv = and i16 %i.bc, -1025
  store i16 %i.bv, ptr %i.f, align 8
  %i.bw = getelementptr i8, ptr %0, i64 380
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 4 dereferenceable(20) %i.bw, ptr noundef align 8 dereferenceable(20) %i.bb, i64 20, i1 false)
  %.not47 = icmp eq i32 %1, 0
  br i1 %.not47, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @csi_J(ptr noundef %0, i32 noundef 2) #28, !srcloc !168
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @set_translate(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @vt_reset_keyboard(i32 noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @csi_J(ptr noundef %0, i32 noundef %1) unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  switch i32 %1, label %bb.z [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %flush_scrollback.exit
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 404        ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 800        ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %vc_uniscr_clear_lines.exit, label %vc_uniscr_clear_line.exit

vc_uniscr_clear_line.exit:                        ; preds = %bb.b
  %i.d = load i32, ptr %i.a, align 4
  %i.e = getelementptr i8, ptr %0, i64 360
  %i.f = load i32, ptr %i.e, align 8              ; 2 uses
  %i.g = sub i32 %i.d, %i.f
  %i.h = getelementptr i8, ptr %0, i64 364
  %i.i = load i32, ptr %i.h, align 4
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr [8 x i8], ptr %i.c, i64 %i.j
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = zext i32 %i.f to i64
  %i.n = getelementptr [4 x i8], ptr %i.l, i64 %i.m
  %i.o = zext i32 %i.g to i64
  %i.p = tail call { ptr, i64 } asm sideeffect "rep stosl", "={di},={cx},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 32, ptr %i.n, i64 range(i64 0, 4294967296) %i.o) #26, !srcloc !49 ; 0 uses
  %.pre84 = load ptr, ptr %i.b, align 8
  %i.q = icmp eq ptr %.pre84, null
  %i.r = getelementptr i8, ptr %0, i64 364
  %i.s = load i32, ptr %i.r, align 4              ; 2 uses
  %i.t = getelementptr i8, ptr %0, i64 408
  %i.u = load i32, ptr %i.t, align 8
  %i.v = xor i32 %i.s, -1
  %i.w = add i32 %i.u, %i.v                       ; 2 uses
  %.not56.i = icmp eq i32 %i.w, 0
  %or.cond.i = or i1 %i.q, %.not56.i
  br i1 %or.cond.i, label %vc_uniscr_clear_lines.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %vc_uniscr_clear_line.exit, %.lr.ph.i
  %.08.i = phi i32 [ %i.x, %.lr.ph.i ], [ %i.w, %vc_uniscr_clear_line.exit ]
  %.047.i.in = phi i32 [ %.047.i, %.lr.ph.i ], [ %i.s, %vc_uniscr_clear_line.exit ]
  %.047.i = add i32 %.047.i.in, 1                 ; 2 uses
  %i.x = add i32 %.08.i, -1                       ; 2 uses
  %i.y = load ptr, ptr %i.b, align 8
  %i.z = zext i32 %.047.i to i64
  %i.aa = getelementptr [8 x i8], ptr %i.y, i64 %i.z
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = load i32, ptr %i.a, align 4
  %i.ad = zext i32 %i.ac to i64
  %i.ae = tail call { ptr, i64 } asm sideeffect "rep stosl", "={di},={cx},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 32, ptr %i.ab, i64 range(i64 0, 4294967296) %i.ad) #26, !srcloc !49 ; 0 uses
  %.not5.i = icmp eq i32 %i.x, 0
  br i1 %.not5.i, label %vc_uniscr_clear_lines.exit, label %.lr.ph.i, !llvm.loop !11

vc_uniscr_clear_lines.exit:                       ; preds = %.lr.ph.i, %bb.b, %vc_uniscr_clear_line.exit
  %i.af = getelementptr i8, ptr %0, i64 432
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = getelementptr i8, ptr %0, i64 496
  %i.ai = load i64, ptr %i.ah, align 8            ; 2 uses
  %i.aj = sub i64 %i.ag, %i.ai
  %i.ak = lshr i64 %i.aj, 1
  %i.al = trunc i64 %i.ak to i32
  br label %bb.s

bb.c:                                             ; preds = %bb.a
  %i.am = getelementptr i8, ptr %0, i64 800       ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  %.not.i34 = icmp eq ptr %i.an, null
  br i1 %.not.i34, label %vc_uniscr_clear_lines.exit43, label %vc_uniscr_clear_line.exit35

vc_uniscr_clear_line.exit35:                      ; preds = %bb.c
  %i.ao = getelementptr i8, ptr %0, i64 360
  %i.ap = load i32, ptr %i.ao, align 8
  %i.aq = add i32 %i.ap, 1
  %i.ar = getelementptr i8, ptr %0, i64 364
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = zext i32 %i.as to i64
  %i.au = getelementptr [8 x i8], ptr %i.an, i64 %i.at
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = zext i32 %i.aq to i64
  %i.ax = tail call { ptr, i64 } asm sideeffect "rep stosl", "={di},={cx},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 32, ptr %i.av, i64 range(i64 0, 4294967296) %i.aw) #26, !srcloc !49 ; 0 uses
  %.pre83 = load ptr, ptr %i.am, align 8
  %i.ay = icmp eq ptr %.pre83, null
  %i.az = getelementptr i8, ptr %0, i64 364
  %i.ba = load i32, ptr %i.az, align 4            ; 2 uses
  %.not56.i37 = icmp eq i32 %i.ba, 0
  %or.cond.i38 = or i1 %.not56.i37, %i.ay
  br i1 %or.cond.i38, label %vc_uniscr_clear_lines.exit43, label %.lr.ph.i39

.lr.ph.i39:                                       ; preds = %vc_uniscr_clear_line.exit35
  %i.bb = getelementptr i8, ptr %0, i64 404
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i39
  %indvars.iv79 = phi i64 [ %indvars.iv.next80, %bb.d ], [ 0, %.lr.ph.i39 ] ; 2 uses
  %.08.i40 = phi i32 [ %i.bc, %bb.d ], [ %i.ba, %.lr.ph.i39 ]
  %i.bc = add i32 %.08.i40, -1                    ; 2 uses
  %i.bd = load ptr, ptr %i.am, align 8
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1
  %i.be = getelementptr [8 x i8], ptr %i.bd, i64 %indvars.iv79
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = load i32, ptr %i.bb, align 4
  %i.bh = zext i32 %i.bg to i64
  %i.bi = tail call { ptr, i64 } asm sideeffect "rep stosl", "={di},={cx},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 32, ptr %i.bf, i64 range(i64 0, 4294967296) %i.bh) #26, !srcloc !49 ; 0 uses
  %.not5.i42 = icmp eq i32 %i.bc, 0
  br i1 %.not5.i42, label %vc_uniscr_clear_lines.exit43, label %bb.d, !llvm.loop !11

vc_uniscr_clear_lines.exit43:                     ; preds = %bb.d, %bb.c, %vc_uniscr_clear_line.exit35
  %i.bj = getelementptr i8, ptr %0, i64 496
  %i.bk = load i64, ptr %i.bj, align 8
  %i.bl = getelementptr i8, ptr %0, i64 424
  %i.bm = load i64, ptr %i.bl, align 8            ; 2 uses
  %i.bn = sub i64 %i.bk, %i.bm
  %i.bo = lshr i64 %i.bn, 1
  %i.bp = trunc i64 %i.bo to i32
  %i.bq = add i32 %i.bp, 1
  br label %bb.s

bb.e:                                             ; preds = %bb.a
  %i.br = load volatile i32, ptr @ignore_console_lock_warning, align 4
  %.not.i44 = icmp eq i32 %i.br, 0
  br i1 %.not.i44, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  %i.bs = tail call i32 @is_console_locked() #25
  %.not8.i = icmp eq i32 %i.bs, 0
  %i.bt = load i32, ptr @oops_in_progress, align 4
  %.not9.i = icmp eq i32 %i.bt, 0
  %or.cond.i45 = select i1 %.not8.i, i1 %.not9.i, i1 false, !prof !24
  br i1 %or.cond.i45, label %bb.g, label %.critedge.i, !prof !24

bb.g:                                             ; preds = %bb.f
  tail call void asm sideeffect "519: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 519b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 519) #26, !srcloc !172
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, ptr @.str.1, i32 925, i32 2305, i64 16) #26, !srcloc !173
  tail call void asm sideeffect "520: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 520b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 520) #26, !srcloc !174
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.g, %bb.f, %bb.e
  tail call fastcc void @set_origin(ptr noundef %0) #28, !srcloc !175
  %i.bu = load volatile i32, ptr @ignore_console_lock_warning, align 4
  %.not.i.i = icmp eq i32 %i.bu, 0
  br i1 %.not.i.i, label %bb.h, label %con_is_visible.exit.i

bb.h:                                             ; preds = %.critedge.i
  %i.bv = tail call i32 @is_console_locked() #25
  %.not4.i.i = icmp eq i32 %i.bv, 0
  %i.bw = load i32, ptr @oops_in_progress, align 4
  %.not5.i.i = icmp eq i32 %i.bw, 0
  %or.cond.i.i = select i1 %.not4.i.i, i1 %.not5.i.i, i1 false, !prof !24
  br i1 %or.cond.i.i, label %bb.i, label %con_is_visible.exit.i, !prof !24

bb.i:                                             ; preds = %bb.h
  tail call void asm sideeffect "622: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 622b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 622) #26, !srcloc !32
end_hunk_0
