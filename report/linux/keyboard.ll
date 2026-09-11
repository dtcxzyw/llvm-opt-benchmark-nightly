Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/keyboard?download=true
inline.NumInlined: 207
inline.NumDeleted: 60
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@vt_kdskbsent
define internal fastcc ptr @vt_kdskbsent(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = zext i8 %1 to i64                        ; 2 uses
  %i.b = getelementptr [8 x i8], ptr @func_table, i64 %i.a ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 4 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #18
  %i.e = tail call i64 @strlen(ptr noundef %0) #18
  %.not14 = icmp ult i64 %i.d, %i.e
  br i1 %.not14, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef %0) #18 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.a
  store ptr %0, ptr %i.b, align 8
  %i.g = tail call i8 asm " btsq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @vt_kdskbsent.is_kmalloc, i64 range(i64 0, 256) %i.a) #19, !srcloc !40 ; 2 uses
  %i.h = icmp ult i8 %i.g, 2
  tail call void @llvm.assume(i1 %i.h)
  %i.i = trunc nuw i8 %i.g to i1
  %spec.select = select i1 %i.i, ptr %i.c, ptr null
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi ptr [ %0, %bb.c ], [ %spec.select, %bb.d ]
  ret ptr %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @vt_do_kdskled(i32 noundef %0, i32 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = zext i32 %0 to i64
  %i.b = getelementptr [5 x i8], ptr @kbd_table, i64 %i.a ; 4 uses
  switch i32 %1, label %bb.n [
    i32 19300, label %bb.b
    i32 19301, label %bb.c
    i32 19249, label %bb.g
    i32 19250, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @_raw_spin_lock_irqsave(ptr noundef nonnull @kbd_event_lock) #18
  %i.d = getelementptr i8, ptr %i.b, i64 2
  %i.e = load i16, ptr %i.d, align 1              ; 2 uses
  %i.f = lshr i16 %i.e, 1
  %i.g = and i16 %i.f, 15
  %i.h = lshr i16 %i.e, 4
  %i.i = and i16 %i.h, 240
  %i.j = or disjoint i16 %i.g, %i.i
  %i.k = trunc nuw i16 %i.j to i8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @kbd_event_lock, i64 noundef %i.c) #18
  %i.l = inttoptr i64 %2 to ptr
  %i.m = tail call i64 @llvm.read_register.i64(metadata !4)
  %i.n = tail call { ptr, i64 } asm sideeffect "call __put_user_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr %i.l, i8 %i.k, i64 1, i64 %i.m) #19, !srcloc !41 ; 2 uses
  %i.o = extractvalue { ptr, i64 } %i.n, 0
  %i.p = extractvalue { ptr, i64 } %i.n, 1
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = trunc i64 %i.q to i32
  tail call void @llvm.write_register.i64(metadata !4, i64 %i.p)
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %.not31 = icmp eq i32 %3, 0
  br i1 %.not31, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = and i64 %2, -120
  %.not32 = icmp eq i64 %i.s, 0
  br i1 %.not32, label %bb.e, label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.t = tail call i64 @_raw_spin_lock_irqsave(ptr noundef nonnull @led_lock) #18
  %i.u = trunc nuw nsw i64 %2 to i16              ; 2 uses
  %i.v = getelementptr i8, ptr %i.b, i64 2        ; 2 uses
  %i.w = load i16, ptr %i.v, align 1
  %i.x = shl nuw nsw i16 %i.u, 1
  %i.y = and i16 %i.x, 14
  %i.z = and i16 %i.w, -3871
  %i.aa = shl nuw nsw i16 %i.u, 4
  %i.ab = and i16 %i.aa, 1792
  %i.ac = or disjoint i16 %i.ab, %i.y
  %i.ad = or disjoint i16 %i.ac, %i.z
  store i16 %i.ad, ptr %i.v, align 1
  %i.ae = tail call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btsq  $2, $0", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) getelementptr inbounds nuw (i8, ptr @keyboard_tasklet, i64 8), i64 0, ptr nonnull elementtype(i64) getelementptr inbounds nuw (i8, ptr @keyboard_tasklet, i64 8)) #19, !srcloc !15 ; 2 uses
  %i.af = icmp ult i8 %i.ae, 2
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = trunc nuw i8 %i.ae to i1
  br i1 %i.ag, label %set_leds.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @__tasklet_schedule(ptr noundef nonnull @keyboard_tasklet) #18
  br label %set_leds.exit

set_leds.exit:                                    ; preds = %bb.e, %bb.f
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @led_lock, i64 noundef %i.t) #18
  br label %bb.n

bb.g:                                             ; preds = %bb.a
  %i.ah = load i32, ptr @ledstate, align 4
  %i.ai = trunc i32 %i.ah to i8
  %i.aj = inttoptr i64 %2 to ptr
  %i.ak = tail call i64 @llvm.read_register.i64(metadata !4)
  %i.al = tail call { ptr, i64 } asm sideeffect "call __put_user_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr %i.aj, i8 %i.ai, i64 1, i64 %i.ak) #19, !srcloc !42 ; 2 uses
  %i.am = extractvalue { ptr, i64 } %i.al, 0
  %i.an = extractvalue { ptr, i64 } %i.al, 1
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = trunc i64 %i.ao to i32
  tail call void @llvm.write_register.i64(metadata !4, i64 %i.an)
  br label %bb.n

bb.h:                                             ; preds = %bb.a
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = tail call i64 @_raw_spin_lock_irqsave(ptr noundef nonnull @led_lock) #18
  %i.ar = and i64 %2, 4294967288
  %.not.i = icmp eq i64 %i.ar, 0
  br i1 %.not.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.as = trunc i64 %2 to i8
  store i8 %i.as, ptr @ledioctl, align 1
  %i.at = getelementptr i8, ptr %i.b, i64 2       ; 2 uses
  %i.au = load i16, ptr %i.at, align 1
  %i.av = or i16 %i.au, 1
  store i16 %i.av, ptr %i.at, align 1
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.aw = getelementptr i8, ptr %i.b, i64 2       ; 2 uses
  %i.ax = load i16, ptr %i.aw, align 1
  %i.ay = and i16 %i.ax, -2
  store i16 %i.ay, ptr %i.aw, align 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.az = tail call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btsq  $2, $0", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) getelementptr inbounds nuw (i8, ptr @keyboard_tasklet, i64 8), i64 0, ptr nonnull elementtype(i64) getelementptr inbounds nuw (i8, ptr @keyboard_tasklet, i64 8)) #19, !srcloc !15 ; 2 uses
  %i.ba = icmp ult i8 %i.az, 2
  tail call void @llvm.assume(i1 %i.ba)
  %i.bb = trunc nuw i8 %i.az to i1
  br i1 %i.bb, label %setledstate.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @__tasklet_schedule(ptr noundef nonnull @keyboard_tasklet) #18
  br label %setledstate.exit

setledstate.exit:                                 ; preds = %bb.l, %bb.m
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @led_lock, i64 noundef %i.aq) #18
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %bb.h, %bb.d, %bb.c, %setledstate.exit, %bb.g, %set_leds.exit, %bb.b
  %.0 = phi i32 [ -1, %bb.h ], [ %i.r, %bb.b ], [ -1, %bb.c ], [ 0, %set_leds.exit ], [ -22, %bb.d ], [ %i.ap, %bb.g ], [ 0, %setledstate.exit ], [ -515, %bb.a ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none)
define dso_local range(i32 0, 5) i32 @vt_do_kdgkbmode(i32 noundef %0) local_unnamed_addr #7 align 16 prefalign(16) {
bb.a:
  %i.a = zext i32 %0 to i64
  %i.b = getelementptr [5 x i8], ptr @kbd_table, i64 %i.a
  %i.c = getelementptr i8, ptr %i.b, i64 2
  %i.d = load i16, ptr %i.c, align 1
  %i.e = lshr i16 %i.d, 12
  %i.f = and i16 %i.e, 7
  switch i16 %i.f, label %bb.e [
    i16 2, label %bb.f
    i16 1, label %bb.b
    i16 3, label %bb.c
    i16 4, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ 1, %bb.e ], [ 4, %bb.d ], [ 2, %bb.b ], [ 3, %bb.c ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none)
define dso_local range(i32 3, 5) i32 @vt_do_kdgkbmeta(i32 noundef %0) local_unnamed_addr #7 align 16 prefalign(16) {
bb.a:
  %i.a = zext i32 %0 to i64
  %i.b = getelementptr [5 x i8], ptr @kbd_table, i64 %i.a
  %i.c = getelementptr i8, ptr %i.b, i64 4
  %.val = load i8, ptr %i.c, align 1
  %1 = lshr i8 %.val, 4
  %i.d = and i8 %1, 1
  %narrow = add nuw nsw i8 %i.d, 3
  %2 = zext nneg i8 %narrow to i32
  ret i32 %2
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @vt_reset_unicode(i32 noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i64 @_raw_spin_lock_irqsave(ptr noundef nonnull @kbd_event_lock) #18
  %i.b = load i32, ptr @default_utf8, align 4
  %.not = icmp eq i32 %i.b, 0
  %i.c = zext i32 %0 to i64
  %i.d = getelementptr [5 x i8], ptr @kbd_table, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 2        ; 2 uses
  %i.f = select i1 %.not, i16 0, i16 12288
  %i.g = load i16, ptr %i.e, align 1
  %i.h = and i16 %i.g, -28673
  %i.i = or disjoint i16 %i.h, %i.f
  store i16 %i.i, ptr %i.e, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @kbd_event_lock, i64 noundef %i.a) #18
  ret void
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none)
define dso_local i32 @vt_get_shift_state() local_unnamed_addr #7 align 16 prefalign(16) {
bb.a:
  %i.a = load i32, ptr @shift_state, align 4
  ret i32 %i.a
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @vt_reset_keyboard(i32 noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = zext i32 %0 to i64
  %i.b = getelementptr [5 x i8], ptr @kbd_table, i64 %i.a ; 4 uses
  %i.c = tail call i64 @_raw_spin_lock_irqsave(ptr noundef nonnull @kbd_event_lock) #18
  %i.d = getelementptr i8, ptr %i.b, i64 4        ; 2 uses
  %i.e = load i8, ptr %i.d, align 1
  %i.f = and i8 %i.e, -16
  %i.g = or disjoint i8 %i.f, 4
  store i8 %i.g, ptr %i.d, align 1
  store i8 0, ptr %i.b, align 1
  %i.h = getelementptr i8, ptr %i.b, i64 1
  store i8 0, ptr %i.h, align 1
  tail call void @_raw_spin_lock(ptr noundef nonnull @led_lock) #18
  %i.i = getelementptr i8, ptr %i.b, i64 2        ; 2 uses
  %i.j = load i16, ptr %i.i, align 1              ; 2 uses
  %i.k = lshr i16 %i.j, 7
  %i.l = and i16 %i.k, 30
  %i.m = and i16 %i.j, -32
  %i.n = or disjoint i16 %i.l, %i.m
  store i16 %i.n, ptr %i.i, align 1
  tail call void @_raw_spin_unlock(ptr noundef nonnull @led_lock) #18
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @kbd_event_lock, i64 noundef %i.c) #18
  ret void
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none)
define dso_local range(i32 0, 2) i32 @vt_get_kbd_mode_bit(i32 noundef %0, i32 noundef %1) local_unnamed_addr #7 align 16 prefalign(16) {
bb.a:
  %i.a = zext i32 %0 to i64
  %i.b = getelementptr [5 x i8], ptr @kbd_table, i64 %i.a
  %i.c = getelementptr i8, ptr %i.b, i64 4
  %.val = load i8, ptr %i.c, align 1
  %i.d = and i8 %.val, 31
  %i.e = zext nneg i8 %i.d to i32
  %i.f = lshr i32 %i.e, %1
  %i.g = and i32 %i.f, 1
  ret i32 %i.g
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @vt_set_kbd_mode_bit(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = zext i32 %0 to i64
  %i.b = getelementptr [5 x i8], ptr @kbd_table, i64 %i.a
  %i.c = tail call i64 @_raw_spin_lock_irqsave(ptr noundef nonnull @kbd_event_lock) #18
  %i.d = shl nuw i32 1, %1
  %i.e = getelementptr i8, ptr %i.b, i64 4        ; 2 uses
  %i.f = load i8, ptr %i.e, align 1
  %i.g = trunc i32 %i.d to i8
  %i.h = and i8 %i.g, 31
  %i.i = or i8 %i.f, %i.h
  store i8 %i.i, ptr %i.e, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @kbd_event_lock, i64 noundef %i.c) #18
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @vt_clr_kbd_mode_bit(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = zext i32 %0 to i64
  %i.b = getelementptr [5 x i8], ptr @kbd_table, i64 %i.a
  %i.c = tail call i64 @_raw_spin_lock_irqsave(ptr noundef nonnull @kbd_event_lock) #18
  %i.d = shl nuw i32 1, %1
  %i.e = getelementptr i8, ptr %i.b, i64 4        ; 2 uses
  %i.f = load i8, ptr %i.e, align 1
  %i.g = trunc i32 %i.d to i8
  %i.h = xor i8 %i.g, -1
  %i.i = or i8 %i.h, -32
  %i.j = and i8 %i.f, %i.i
  store i8 %i.j, ptr %i.e, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @kbd_event_lock, i64 noundef %i.c) #18
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kd_nosound(ptr nofree readnone captures(none) %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 @input_handler_for_each_handle(ptr noundef nonnull @kbd_handler, ptr noundef nonnull @kd_nosound.zero, ptr noundef nonnull @kd_sound_helper) #18 ; 0 uses
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @input_inject_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @_find_next_bit(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kbd_event(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = alloca i8, align 1                       ; 4 uses
  %i.g = alloca i8, align 1                       ; 4 uses
  %i.h = alloca i8, align 1                       ; 4 uses
  %i.i = alloca i8, align 1                       ; 4 uses
  %i.j = alloca i8, align 1                       ; 4 uses
  %i.k = alloca i8, align 1                       ; 4 uses
  %i.l = alloca i8, align 1                       ; 4 uses
  %i.m = alloca i8, align 1                       ; 4 uses
  %i.n = alloca i8, align 1                       ; 4 uses
  %i.o = alloca i8, align 1                       ; 4 uses
  %i.p = alloca i8, align 1                       ; 4 uses
  %i.q = alloca i8, align 1                       ; 4 uses
  %i.r = alloca i8, align 1                       ; 4 uses
  %i.s = alloca i8, align 1                       ; 4 uses
  %i.t = alloca i8, align 1                       ; 4 uses
  %i.u = alloca i8, align 1                       ; 4 uses
  %i.v = alloca i8, align 1                       ; 4 uses
  %i.w = alloca i8, align 1                       ; 4 uses
  %i.x = alloca i8, align 1                       ; 4 uses
  %i.y = alloca i8, align 1                       ; 4 uses
  %i.z = alloca i8, align 1                       ; 4 uses
  %i.aa = alloca i8, align 1                      ; 4 uses
  %i.ab = alloca i8, align 1                      ; 4 uses
  %i.ac = alloca i8, align 1                      ; 4 uses
  %i.ad = alloca i8, align 1                      ; 4 uses
  %i.ae = alloca i8, align 1                      ; 4 uses
  %i.af = alloca i8, align 1                      ; 4 uses
  %4 = alloca %struct.keyboard_notifier_param, align 8 ; 12 uses
  %i.ag = alloca i8, align 1                      ; 4 uses
  %i.ah = alloca i8, align 1                      ; 4 uses
  tail call void @_raw_spin_lock(ptr noundef nonnull @kbd_event_lock) #18
  %i.ai = icmp eq i32 %1, 4
  %i.aj = icmp eq i32 %2, 3
  %or.cond = and i1 %i.ai, %i.aj
  br i1 %or.cond, label %bb.b, label %kbd_rawcode.exit

bb.b:                                             ; preds = %bb.a
  %i.ak = getelementptr i8, ptr %0, i64 24
  %i.al = load ptr, ptr %i.ak, align 8            ; 5 uses
  %i.am = getelementptr i8, ptr %i.al, i64 40
  %i.an = load volatile i64, ptr %i.am, align 8
  %i.ao = and i64 %i.an, 16
  %.not.i = icmp eq i64 %i.ao, 0
  br i1 %.not.i, label %kbd_rawcode.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ap = getelementptr i8, ptr %i.al, i64 160
  %i.aq = load volatile i64, ptr %i.ap, align 8
  %i.ar = and i64 %i.aq, 8
  %.not24.i = icmp eq i64 %i.ar, 0
  br i1 %.not24.i, label %kbd_rawcode.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.as = getelementptr i8, ptr %i.al, i64 24
  %i.at = load i16, ptr %i.as, align 8
  %i.au = icmp eq i16 %i.at, 17
  br i1 %i.au, label %bb.e, label %kbd_rawcode.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.av = getelementptr i8, ptr %i.al, i64 26
  %i.aw = load i16, ptr %i.av, align 2
  %i.ax = icmp eq i16 %i.aw, 1
  br i1 %i.ax, label %kbd_is_hw_raw.exit, label %kbd_rawcode.exit.thread

kbd_is_hw_raw.exit:                               ; preds = %bb.e
  %i.ay = getelementptr i8, ptr %i.al, i64 28
  %i.az = load i16, ptr %i.ay, align 4
end_hunk_0
