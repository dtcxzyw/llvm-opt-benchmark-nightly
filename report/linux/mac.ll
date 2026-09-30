Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/mac?download=true
inline.NumInlined: 107
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@e1000e_id_led_init_generic:bb.a
  %i.q = or disjoint i32 %i.p, %.sink40           ; 2 uses
  store i32 %i.q, ptr %i.j, align 4
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.b, %bb.d
  %i.r = phi i32 [ %i.g, %bb.b ], [ %i.g, %bb.d ], [ %i.q, %.sink.split ] ; 3 uses
  %i.s = phi i32 [ %i.g, %bb.b ], [ %i.n, %bb.d ], [ %.ph38, %.sink.split ] ; 4 uses
  %i.t = lshr i16 %i.k, 4
  %i.u = and i16 %i.t, 15                         ; 2 uses
  switch i16 %i.u, label %bb.j [
    i16 4, label %bb.g
    i16 5, label %bb.g
    i16 6, label %bb.g
    i16 7, label %bb.h
    i16 8, label %bb.h
    i16 9, label %bb.h
    i16 2, label %.sink.split42
    i16 3, label %bb.i
  ]

bb.g:                                             ; preds = %bb.f, %bb.f, %bb.f
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.g
  %.sink41 = phi i32 [ 3584, %bb.g ], [ 3840, %bb.f ], [ 3840, %bb.f ], [ 3840, %bb.f ]
  %i.v = and i32 %i.s, -65281
  %i.w = or disjoint i32 %i.v, %.sink41           ; 6 uses
  store i32 %i.w, ptr %i.i, align 8
  switch i16 %i.u, label %bb.j [
    i16 9, label %bb.i
    i16 5, label %.sink.split42
    i16 8, label %.sink.split42
    i16 6, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h, %bb.f
  %i.x = phi i32 [ %i.w, %bb.h ], [ %i.w, %bb.h ], [ %i.s, %bb.f ]
  br label %.sink.split42

.sink.split42:                                    ; preds = %bb.f, %bb.h, %bb.h, %bb.i
  %.sink45 = phi i32 [ 3840, %bb.i ], [ 3584, %bb.h ], [ 3584, %bb.h ], [ 3584, %bb.f ]
  %.ph43 = phi i32 [ %i.x, %bb.i ], [ %i.w, %bb.h ], [ %i.w, %bb.h ], [ %i.s, %bb.f ]
  %i.y = and i32 %i.r, -65281
  %i.z = or disjoint i32 %i.y, %.sink45           ; 2 uses
  store i32 %i.z, ptr %i.j, align 4
  br label %bb.j

bb.j:                                             ; preds = %.sink.split42, %bb.h, %bb.f
  %i.aa = phi i32 [ %i.r, %bb.h ], [ %i.r, %bb.f ], [ %i.z, %.sink.split42 ] ; 3 uses
  %i.ab = phi i32 [ %i.w, %bb.h ], [ %i.s, %bb.f ], [ %.ph43, %.sink.split42 ] ; 4 uses
  %i.ac = lshr i16 %i.k, 8
  %i.ad = and i16 %i.ac, 15                       ; 2 uses
  switch i16 %i.ad, label %bb.n [
    i16 4, label %bb.k
    i16 5, label %bb.k
    i16 6, label %bb.k
    i16 7, label %bb.l
    i16 8, label %bb.l
    i16 9, label %bb.l
    i16 2, label %.sink.split47
    i16 3, label %bb.m
  ]

bb.k:                                             ; preds = %bb.j, %bb.j, %bb.j
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.j, %bb.j, %bb.k
  %.sink46 = phi i32 [ 917504, %bb.k ], [ 983040, %bb.j ], [ 983040, %bb.j ], [ 983040, %bb.j ]
  %i.ae = and i32 %i.ab, -16711681
  %i.af = or disjoint i32 %i.ae, %.sink46         ; 6 uses
  store i32 %i.af, ptr %i.i, align 8
  switch i16 %i.ad, label %bb.n [
    i16 9, label %bb.m
    i16 5, label %.sink.split47
    i16 8, label %.sink.split47
    i16 6, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l, %bb.l, %bb.j
  %i.ag = phi i32 [ %i.af, %bb.l ], [ %i.af, %bb.l ], [ %i.ab, %bb.j ]
  br label %.sink.split47

.sink.split47:                                    ; preds = %bb.j, %bb.l, %bb.l, %bb.m
  %.sink50 = phi i32 [ 983040, %bb.m ], [ 917504, %bb.l ], [ 917504, %bb.l ], [ 917504, %bb.j ]
  %.ph48 = phi i32 [ %i.ag, %bb.m ], [ %i.af, %bb.l ], [ %i.af, %bb.l ], [ %i.ab, %bb.j ]
  %i.ah = and i32 %i.aa, -16711681
  %i.ai = or disjoint i32 %i.ah, %.sink50         ; 2 uses
  store i32 %i.ai, ptr %i.j, align 4
  br label %bb.n

bb.n:                                             ; preds = %.sink.split47, %bb.l, %bb.j
  %i.aj = phi i32 [ %i.aa, %bb.l ], [ %i.aa, %bb.j ], [ %i.ai, %.sink.split47 ]
  %i.ak = phi i32 [ %i.af, %bb.l ], [ %i.ab, %bb.j ], [ %.ph48, %.sink.split47 ]
  %i.al = lshr i16 %i.k, 12                       ; 2 uses
  switch i16 %i.al, label %.loopexit [
    i16 4, label %bb.o
    i16 5, label %bb.o
    i16 6, label %bb.o
    i16 7, label %bb.p
    i16 8, label %bb.p
    i16 9, label %bb.p
    i16 2, label %.loopexit.sink.split
    i16 3, label %bb.q
  ]

bb.o:                                             ; preds = %bb.n, %bb.n, %bb.n
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.n, %bb.n, %bb.o
  %.sink51 = phi i32 [ 234881024, %bb.o ], [ 251658240, %bb.n ], [ 251658240, %bb.n ], [ 251658240, %bb.n ]
  %i.am = and i32 %i.ak, 16777215
  %i.an = or disjoint i32 %i.am, %.sink51
  store i32 %i.an, ptr %i.i, align 8
  switch i16 %i.al, label %.loopexit [
    i16 9, label %bb.q
    i16 5, label %.loopexit.sink.split
    i16 8, label %.loopexit.sink.split
    i16 6, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p, %bb.p, %bb.n
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %bb.n, %bb.p, %bb.p, %bb.q
  %.sink53 = phi i32 [ 251658240, %bb.q ], [ 234881024, %bb.p ], [ 234881024, %bb.p ], [ 234881024, %bb.n ]
  %i.ao = and i32 %i.aj, 16777215
  %i.ap = or disjoint i32 %i.ao, %.sink53
  store i32 %i.ap, ptr %i.j, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.sink.split, %bb.n, %bb.p, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %i.d
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -3, 1) i32 @e1000e_setup_led_generic(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 160
  %i.b = load ptr, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, @e1000e_setup_led_generic
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 1040
  %i.d = load i32, ptr %i.c, align 8
  switch i32 %i.d, label %bb.e [
    i32 2, label %bb.c
    i32 1, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.e, align 8
  %i.f = getelementptr i8, ptr %.val, i64 3584
  %i.g = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.f) #6, !srcloc !12 ; 2 uses
  %i.h = getelementptr i8, ptr %0, i64 228
  store i32 %i.g, ptr %i.h, align 4
  %i.i = and i32 %i.g, -208
  %i.j = or disjoint i32 %i.i, 15
  br label %.sink.split

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr i8, ptr %0, i64 232
  %i.l = load i32, ptr %i.k, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.d, %bb.c
  %.sink = phi i32 [ %i.j, %bb.c ], [ %i.l, %bb.d ]
  tail call void @__ew32(ptr noundef %0, i64 noundef 3584, i32 noundef %.sink) #7
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.b, %bb.a
  %.0 = phi i32 [ -3, %bb.a ], [ 0, %bb.b ], [ 0, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noundef i32 @e1000e_cleanup_led_generic(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 228
  %i.b = load i32, ptr %i.a, align 4
  tail call void @__ew32(ptr noundef %0, i64 noundef 3584, i32 noundef %i.b) #7
  ret i32 0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noundef i32 @e1000e_blink_led_generic(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 1040
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp eq i32 %i.b, 2
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 236
  %i.e = load i32, ptr %i.d, align 4              ; 6 uses
  %i.f = getelementptr i8, ptr %0, i64 228
  %i.g = load i32, ptr %i.f, align 4              ; 4 uses
  %i.h = and i32 %i.e, 15
  %1 = and i32 %i.g, 64
  %.not = icmp eq i32 %1, 0
  %or.cond27.v = select i1 %.not, i32 14, i32 15
  %or.cond27.not = icmp eq i32 %i.h, %or.cond27.v
  %i.i = and i32 %i.e, -144
  %i.j = or disjoint i32 %i.i, 142
  %.1 = select i1 %or.cond27.not, i32 %i.j, i32 %i.e ; 2 uses
  %i.k = lshr i32 %i.e, 8
  %i.l = and i32 %i.k, 15
  %2 = and i32 %i.g, 16384
  %.not31 = icmp eq i32 %2, 0
  %or.cond28.v = select i1 %.not31, i32 14, i32 15
  %or.cond28.not = icmp eq i32 %i.l, %or.cond28.v
  %i.m = and i32 %.1, -36609
  %i.n = or disjoint i32 %i.m, 36352
  %.1.1 = select i1 %or.cond28.not, i32 %i.n, i32 %.1 ; 2 uses
  %i.o = lshr i32 %i.e, 16
  %i.p = and i32 %i.o, 15
  %3 = and i32 %i.g, 4194304
  %.not32 = icmp eq i32 %3, 0
  %or.cond29.v = select i1 %.not32, i32 14, i32 15
  %or.cond29.not = icmp eq i32 %i.p, %or.cond29.v
  %i.q = and i32 %.1.1, -9371649
  %i.r = or disjoint i32 %i.q, 9306112
  %.1.2 = select i1 %or.cond29.not, i32 %i.r, i32 %.1.1 ; 2 uses
  %i.s = lshr i32 %i.e, 24
  %4 = and i32 %i.s, 15
  %i.t = and i32 %i.g, 1073741824
  %.not33 = icmp eq i32 %i.t, 0
  %or.cond30.v = select i1 %.not33, i32 14, i32 15
  %or.cond30.not = icmp eq i32 %4, %or.cond30.v
  br i1 %or.cond30.not, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.u = and i32 %.1.2, 1895825407
  %i.v = or disjoint i32 %i.u, -1912602624
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.c, %bb.a
  %.2 = phi i32 [ 142, %bb.a ], [ %i.v, %bb.c ], [ %.1.2, %bb.b ]
  tail call void @__ew32(ptr noundef %0, i64 noundef 3584, i32 noundef %.2) #7
  ret i32 0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noundef i32 @e1000e_led_on_generic(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 1040
  %i.b = load i32, ptr %i.a, align 8
  switch i32 %i.b, label %bb.d [
    i32 2, label %bb.b
    i32 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.c, align 8
  %i.d = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %.val) #6, !srcloc !12
  %i.e = and i32 %i.d, -4456449
  %i.f = or disjoint i32 %i.e, 4194304
  tail call void @__ew32(ptr noundef %0, i64 noundef 0, i32 noundef %i.f) #7
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 236
  %i.h = load i32, ptr %i.g, align 4
  tail call void @__ew32(ptr noundef %0, i64 noundef 3584, i32 noundef %i.h) #7
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  ret i32 0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noundef i32 @e1000e_led_off_generic(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 1040
  %i.b = load i32, ptr %i.a, align 8
  switch i32 %i.b, label %bb.d [
    i32 2, label %bb.b
    i32 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.c, align 8
  %i.d = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %.val) #6, !srcloc !12
  %i.e = or i32 %i.d, 4456448
  tail call void @__ew32(ptr noundef %0, i64 noundef 0, i32 noundef %i.e) #7
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 232
  %i.g = load i32, ptr %i.f, align 8
  tail call void @__ew32(ptr noundef %0, i64 noundef 3584, i32 noundef %i.g) #7
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  ret i32 0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @e1000e_set_pcie_no_snoop(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %.val, i64 23296
  %i.c = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.b) #6, !srcloc !12
  %i.d = and i32 %i.c, -64
  %i.e = or i32 %i.d, %1
  tail call void @__ew32(ptr noundef %0, i64 noundef 23296, i32 noundef %i.e) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -10, 1) i32 @e1000e_disable_pcie_master(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val10 = load ptr, ptr %i.a, align 8
  %i.b = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %.val10) #6, !srcloc !12
  %i.c = or i32 %i.b, 4
  tail call void @__ew32(ptr noundef %0, i64 noundef 0, i32 noundef %i.c) #7
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.c
  %.011 = phi i32 [ 800, %bb.a ], [ %i.g, %bb.c ]
  %.val = load ptr, ptr %i.a, align 8
  %i.d = getelementptr i8, ptr %.val, i64 8
  %i.e = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.d) #6, !srcloc !12
  %i.f = and i32 %i.e, 524288
  %.not9 = icmp eq i32 %i.f, 0
  br i1 %.not9, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @usleep_range_state(i64 noundef 100, i64 noundef 200, i32 noundef 2) #7
  %i.g = add nsw i32 %.011, -1                    ; 2 uses
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.d, label %bb.b, !llvm.loop !27

bb.d:                                             ; preds = %bb.b, %bb.c
  %. = phi i32 [ 0, %bb.b ], [ -10, %bb.c ]
  ret i32 %.
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @e1000e_reset_adaptive(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 779
  %i.b = load i8, ptr %i.a, align 1, !range !14, !noundef !15
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 252
  store i16 0, ptr %i.d, align 4
  %i.e = getelementptr i8, ptr %0, i64 256
  store i16 40, ptr %i.e, align 8
  %i.f = getelementptr i8, ptr %0, i64 254
  store i16 80, ptr %i.f, align 2
  %i.g = getelementptr i8, ptr %0, i64 260
  store i16 10, ptr %i.g, align 4
  %i.h = getelementptr i8, ptr %0, i64 258
  store i16 4, ptr %i.h, align 2
  %i.i = getelementptr i8, ptr %0, i64 785
  store i8 0, ptr %i.i, align 1
  tail call void @__ew32(ptr noundef %0, i64 noundef 1112, i32 noundef 0) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @e1000e_update_adaptive(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 779
  %i.b = load i8, ptr %i.a, align 1, !range !14, !noundef !15
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 224
  %i.e = load i32, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %0, i64 258
  %i.g = load i16, ptr %i.f, align 2
  %i.h = zext i16 %i.g to i32
  %i.i = mul i32 %i.e, %i.h
  %i.j = getelementptr i8, ptr %0, i64 244
  %i.k = load i32, ptr %i.j, align 4              ; 3 uses
  %i.l = icmp ugt i32 %i.i, %i.k
  br i1 %i.l, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.m = icmp ugt i32 %i.k, 1000
  br i1 %i.m, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr i8, ptr %0, i64 785
  store i8 1, ptr %i.n, align 1
  %i.o = getelementptr i8, ptr %0, i64 252        ; 2 uses
  %i.p = load i16, ptr %i.o, align 4              ; 3 uses
  %i.q = getelementptr i8, ptr %0, i64 254
  %i.r = load i16, ptr %i.q, align 2
  %i.s = icmp ult i16 %i.p, %i.r
  br i1 %i.s, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %.not = icmp eq i16 %i.p, 0
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr i8, ptr %0, i64 256
  %i.u = load i16, ptr %i.t, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.v = getelementptr i8, ptr %0, i64 260
  %i.w = load i16, ptr %i.v, align 4
  %i.x = add i16 %i.w, %i.p
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %storemerge = phi i16 [ %i.u, %bb.f ], [ %i.x, %bb.g ] ; 2 uses
  store i16 %storemerge, ptr %i.o, align 4
end_hunk_0
