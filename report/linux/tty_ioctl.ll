Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/tty_ioctl?download=true
inline.NumInlined: 48
inline.NumDeleted: 17
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@tty_chars_in_buffer:bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 88
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 %i.d(ptr noundef %0) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.e, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @tty_write_room(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 80
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 %i.d(ptr noundef %0) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.e, %bb.b ], [ 2048, %bb.a ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @tty_driver_flush_buffer(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 168
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void %i.d(ptr noundef %0) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @tty_unthrottle(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 168        ; 2 uses
  tail call void @down_write(ptr noundef %i.a) #11
  %i.b = getelementptr i8, ptr %0, i64 376        ; 2 uses
  %i.c = tail call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btrq  $2, $0", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.b, i64 0, ptr elementtype(i64) %i.b) #12, !srcloc !11 ; 2 uses
  %i.d = icmp ult i8 %i.c, 2
  tail call void @llvm.assume(i1 %i.d)
  %i.e = trunc nuw i8 %i.c to i1
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr i8, ptr %i.g, i64 128
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void %i.i(ptr noundef %0) #11
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.j = getelementptr i8, ptr %0, i64 436
  store i32 0, ptr %i.j, align 4
  tail call void @up_write(ptr noundef %i.a) #11
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noundef zeroext i1 @tty_throttle_safe(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
tty_throttled.exit:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 2 uses
  tail call void @mutex_lock(ptr noundef %i.a) #11
  %i.b = getelementptr i8, ptr %0, i64 376        ; 3 uses
  %i.c = load volatile i64, ptr %i.b, align 8
  %.in.i = trunc i64 %i.c to i1
  br i1 %.in.i, label %bb.d, label %bb.a

bb.a:                                             ; preds = %tty_throttled.exit
  %i.d = getelementptr i8, ptr %0, i64 436
  %i.e = load i32, ptr %i.d, align 4
  %.not = icmp eq i32 %i.e, 1
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.b, i32 1, ptr elementtype(i8) %i.b) #12, !srcloc !14
  %i.f = getelementptr i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr i8, ptr %i.g, i64 120
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not10 = icmp eq ptr %i.i, null
  br i1 %.not10, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void %i.i(ptr noundef %0) #11
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a, %tty_throttled.exit
  %.0 = phi i1 [ false, %bb.a ], [ true, %tty_throttled.exit ], [ true, %bb.c ], [ true, %bb.b ]
  tail call void @mutex_unlock(ptr noundef %i.a) #11
  ret i1 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noundef zeroext i1 @tty_unthrottle_safe(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
tty_throttled.exit:
  %i.a = getelementptr i8, ptr %0, i64 144        ; 2 uses
  tail call void @mutex_lock(ptr noundef %i.a) #11
  %i.b = getelementptr i8, ptr %0, i64 376        ; 3 uses
  %i.c = load volatile i64, ptr %i.b, align 8
  %.in.i = trunc i64 %i.c to i1
  br i1 %.in.i, label %bb.a, label %bb.d

bb.a:                                             ; preds = %tty_throttled.exit
  %i.d = getelementptr i8, ptr %0, i64 436
  %i.e = load i32, ptr %i.d, align 4
  %.not = icmp eq i32 %i.e, 2
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.b, i32 -2, ptr elementtype(i8) %i.b) #12, !srcloc !15
  %i.f = getelementptr i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr i8, ptr %i.g, i64 128
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not10 = icmp eq ptr %i.i, null
  br i1 %.not10, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void %i.i(ptr noundef %0) #11
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a, %tty_throttled.exit
  %.0 = phi i1 [ true, %tty_throttled.exit ], [ false, %bb.a ], [ true, %bb.c ], [ true, %bb.b ]
  tail call void @mutex_unlock(ptr noundef %i.a) #11
  ret i1 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @tty_wait_until_sent(ptr noundef %0, i64 noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %2 = alloca %struct.wait_queue_entry, align 8   ; 6 uses
  %.not = icmp eq i64 %1, 0
  %spec.store.select = select i1 %.not, i64 9223372036854775807, i64 %1 ; 3 uses
  %i.a = tail call i32 @__SCT__might_resched() #11 ; 0 uses
  %i.b = getelementptr i8, ptr %0, i64 32         ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr i8, ptr %i.c, i64 88
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %tty_chars_in_buffer.exit.thread, label %tty_chars_in_buffer.exit

tty_chars_in_buffer.exit:                         ; preds = %bb.a
  %i.f = tail call i32 %i.e(ptr noundef %0) #11, !inline_history !12
  %.not51 = icmp eq i32 %i.f, 0
  br i1 %.not51, label %tty_chars_in_buffer.exit.thread, label %bb.b

bb.b:                                             ; preds = %tty_chars_in_buffer.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, i8 0, i64 40, i1 false), !annotation !13
  call void @init_wait_entry(ptr noundef nonnull %2, i32 noundef 0) #11
  %i.g = getelementptr i8, ptr %0, i64 456        ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %tty_chars_in_buffer.exit63, %bb.b
  %.048 = phi i64 [ %spec.store.select, %bb.b ], [ %spec.store.select11, %tty_chars_in_buffer.exit63 ] ; 3 uses
  %i.h = call i64 @prepare_to_wait_event(ptr noundef %i.g, ptr noundef nonnull %2, i32 noundef 1) #11 ; 2 uses
  %i.i = load ptr, ptr %i.b, align 8
  %i.j = getelementptr i8, ptr %i.i, i64 88
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not.i58 = icmp eq ptr %i.k, null
  br i1 %.not.i58, label %select.unfold, label %tty_chars_in_buffer.exit60

tty_chars_in_buffer.exit60:                       ; preds = %bb.c
  %i.l = call i32 %i.k(ptr noundef %0) #11, !inline_history !12
  %.not116 = icmp eq i32 %i.l, 0
  br i1 %.not116, label %select.unfold, label %bb.d

bb.d:                                             ; preds = %tty_chars_in_buffer.exit60
  %.not53 = icmp eq i64 %i.h, 0
  br i1 %.not53, label %bb.e, label %.thread75

bb.e:                                             ; preds = %bb.d
  %i.m = call i64 @schedule_timeout(i64 noundef %.048) #11 ; 3 uses
  %i.n = load ptr, ptr %i.b, align 8
  %i.o = getelementptr i8, ptr %i.n, i64 88
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %.not.i61 = icmp eq ptr %i.p, null
  br i1 %.not.i61, label %tty_chars_in_buffer.exit63.thread, label %tty_chars_in_buffer.exit63

tty_chars_in_buffer.exit63.thread:                ; preds = %bb.e
  %spec.store.select1180 = call i64 @llvm.umax.i64(i64 %i.m, i64 1)
  br label %select.unfold

tty_chars_in_buffer.exit63:                       ; preds = %bb.e
  %i.q = call i32 %i.p(ptr noundef %0) #11, !inline_history !12
  %i.r = icmp ne i32 %i.q, 0                      ; 2 uses
  %i.s = icmp ne i64 %i.m, 0
  %or.cond7 = select i1 %i.r, i1 true, i1 %i.s
  %spec.store.select11 = select i1 %or.cond7, i64 %i.m, i64 1 ; 3 uses
  %.not54 = icmp ne i64 %spec.store.select11, 0
  %spec.select56.not = select i1 %i.r, i1 %.not54, i1 false
  br i1 %spec.select56.not, label %bb.c, label %select.unfold

select.unfold:                                    ; preds = %tty_chars_in_buffer.exit63, %tty_chars_in_buffer.exit60, %bb.c, %tty_chars_in_buffer.exit63.thread
  %.1.ph = phi i64 [ %spec.store.select1180, %tty_chars_in_buffer.exit63.thread ], [ %.048, %bb.c ], [ %spec.store.select11, %tty_chars_in_buffer.exit63 ], [ %.048, %tty_chars_in_buffer.exit60 ]
  call void @finish_wait(ptr noundef %i.g, ptr noundef nonnull %2) #11
  br label %.thread75

.thread75:                                        ; preds = %bb.d, %select.unfold
  %.173 = phi i64 [ %.1.ph, %select.unfold ], [ %i.h, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  br label %tty_chars_in_buffer.exit.thread

tty_chars_in_buffer.exit.thread:                  ; preds = %bb.a, %.thread75, %tty_chars_in_buffer.exit
  %.0 = phi i64 [ %spec.store.select, %tty_chars_in_buffer.exit ], [ %.173, %.thread75 ], [ %spec.store.select, %bb.a ] ; 3 uses
  %i.t = icmp slt i64 %.0, 1
  br i1 %i.t, label %bb.h, label %bb.f

bb.f:                                             ; preds = %tty_chars_in_buffer.exit.thread
  %i.u = load ptr, ptr %i.b, align 8
  %i.v = getelementptr i8, ptr %i.u, i64 192
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %.not55 = icmp eq ptr %i.w, null
  br i1 %.not55, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = icmp eq i64 %.0, 9223372036854775807
  %i.y = trunc i64 %.0 to i32
  %i.z = select i1 %i.x, i32 0, i32 %i.y
  call void %i.w(ptr noundef %0, i32 noundef %i.z) #11
  br label %bb.h

bb.h:                                             ; preds = %tty_chars_in_buffer.exit.thread, %bb.g, %bb.f
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @schedule_timeout(i64 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite)
define dso_local void @tty_termios_copy_hw(ptr nofree noundef captures(none) initializes((36, 44)) %0, ptr nofree noundef readonly captures(none) %1) #4 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = and i32 %i.b, 3200                       ; 2 uses
  store i32 %i.c, ptr %i.a, align 4
  %i.d = getelementptr i8, ptr %1, i64 8
  %i.e = load i32, ptr %i.d, align 4
  %i.f = and i32 %i.e, -3201
  %i.g = or disjoint i32 %i.f, %i.c
  store i32 %i.g, ptr %i.a, align 4
  %i.h = getelementptr i8, ptr %1, i64 36
  %i.i = load i32, ptr %i.h, align 4
  %i.j = getelementptr i8, ptr %0, i64 36
  store i32 %i.i, ptr %i.j, align 4
  %i.k = getelementptr i8, ptr %1, i64 40
  %i.l = load i32, ptr %i.k, align 4
  %i.m = getelementptr i8, ptr %0, i64 40
  store i32 %i.l, ptr %i.m, align 4
  ret void
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read)
define dso_local zeroext i1 @tty_termios_hw_change(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #5 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 36
  %i.b = load i32, ptr %i.a, align 4
  %i.c = getelementptr i8, ptr %1, i64 36
  %i.d = load i32, ptr %i.c, align 4
  %.not = icmp eq i32 %i.b, %i.d
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 40
  %i.f = load i32, ptr %i.e, align 4
  %i.g = getelementptr i8, ptr %1, i64 40
  %i.h = load i32, ptr %i.g, align 4
  %.not7 = icmp eq i32 %i.f, %i.h
  br i1 %.not7, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %0, i64 8
  %i.j = load i32, ptr %i.i, align 4
  %i.k = getelementptr i8, ptr %1, i64 8
  %i.l = load i32, ptr %i.k, align 4
  %i.m = xor i32 %i.l, %i.j
  %i.n = and i32 %i.m, -3201
  %.not8 = icmp ne i32 %i.n, 0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a, %bb.b
  %.0 = phi i1 [ true, %bb.a ], [ %.not8, %bb.c ], [ true, %bb.b ]
  ret i1 %.0
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define dso_local zeroext range(i8 5, 9) i8 @tty_get_char_size(i32 noundef %0) #6 align 16 prefalign(16) {
switch.lookup:
  %i.a = trunc i32 %0 to i8
  %i.b = lshr i8 %i.a, 4
  %switch.idx.cast = and i8 %i.b, 3
  %switch.offset = add nuw nsw i8 %switch.idx.cast, 5
  ret i8 %switch.offset
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define dso_local zeroext range(i8 7, 14) i8 @tty_get_frame_size(i32 noundef %0) #6 align 16 prefalign(16) {
bb.a:
  %i.a = trunc i32 %0 to i8
  %i.b = lshr i8 %i.a, 4
  %switch.idx.cast.i = and i8 %i.b, 3             ; 2 uses
  %narrow = add nuw nsw i8 %switch.idx.cast.i, 7
  %i.c = and i32 %0, 64
  %.not = icmp eq i32 %i.c, 0
  %i.d = or disjoint i8 %switch.idx.cast.i, 8
  %spec.select = select i1 %.not, i8 %narrow, i8 %i.d
  %i.e = lshr i32 %0, 8
  %i.f = trunc i32 %i.e to i8
  %i.g = and i8 %i.f, 1
  %i.h = lshr i32 %0, 29
  %i.i = trunc nuw nsw i32 %i.h to i8
  %i.j = and i8 %i.i, 1
  %.1 = add nuw nsw i8 %i.j, %i.g
  %.2 = add nuw nsw i8 %.1, %spec.select
  ret i8 %.2
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noundef i32 @tty_set_termios(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 align 16 prefalign(16) {
bb.a:
  %2 = alloca %struct.ktermios, align 4           ; 31 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 56
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp eq i32 %i.d, 3
  br i1 %i.e, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.b, i64 60
  %i.g = load i32, ptr %i.f, align 4
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.c, label %.critedge, !prof !16

bb.c:                                             ; preds = %bb.b
  tail call void asm sideeffect "501: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 501b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 501) #12, !srcloc !17
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, ptr @.str.1, i32 325, i32 2305, i64 16) #12, !srcloc !18
  tail call void asm sideeffect "502: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 502b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 502) #12, !srcloc !19
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.c, %bb.b
  %i.i = getelementptr i8, ptr %0, i64 168        ; 2 uses
  tail call void @down_write(ptr noundef %i.i) #11
  %i.j = getelementptr i8, ptr %0, i64 224        ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %2, ptr noundef align 8 dereferenceable(44) %i.j, i64 44, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(44) %i.j, ptr noundef align 4 dereferenceable(44) %1, i64 44, i1 false)
  %i.k = getelementptr i8, ptr %0, i64 268
  %i.l = load i32, ptr %i.j, align 8
  %i.m = load i32, ptr %i.k, align 4              ; 2 uses
  %i.n = xor i32 %i.m, -1
  %i.o = and i32 %i.l, %i.n
  %i.p = load i32, ptr %2, align 4
  %i.q = and i32 %i.p, %i.m
  %i.r = or i32 %i.q, %i.o
  store i32 %i.r, ptr %i.j, align 8
  %i.s = getelementptr i8, ptr %0, i64 228        ; 2 uses
  %i.t = load i32, ptr %i.s, align 4
  %i.u = getelementptr i8, ptr %0, i64 272
  %i.v = load i32, ptr %i.u, align 8              ; 2 uses
  %i.w = xor i32 %i.v, -1
  %i.x = and i32 %i.t, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = and i32 %i.z, %i.v
  %i.ab = or i32 %i.aa, %i.x
  store i32 %i.ab, ptr %i.s, align 4
  %i.ac = getelementptr i8, ptr %0, i64 232       ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 8
  %i.ae = getelementptr i8, ptr %0, i64 276
  %i.af = load i32, ptr %i.ae, align 4            ; 2 uses
  %i.ag = xor i32 %i.af, -1
  %i.ah = and i32 %i.ad, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aj = load i32, ptr %i.ai, align 4            ; 3 uses
  %i.ak = and i32 %i.aj, %i.af
  %i.al = or i32 %i.ak, %i.ah                     ; 2 uses
  %i.am = getelementptr i8, ptr %0, i64 236       ; 2 uses
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = getelementptr i8, ptr %0, i64 280
  %i.ap = load i32, ptr %i.ao, align 8            ; 2 uses
  %i.aq = xor i32 %i.ap, -1
  %i.ar = and i32 %i.an, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.at = load i32, ptr %i.as, align 4
  %i.au = and i32 %i.at, %i.ap
end_hunk_0
