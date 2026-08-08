inline.NumInlined: 364
inline.NumDeleted: 106
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 24
begin_hunk_0_@status_report:bb.a
  %i.b = call i64 @__tty_insert_flip_string_flags(ptr noundef %.24.val, ptr noundef nonnull @status_report.teminal_ok, ptr noundef nonnull %i.a, i1 noundef zeroext false, i64 noundef range(i64 -2147483648, 2147483648) 4) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @tty_flip_buffer_push(ptr noundef %.24.val) #25
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @cursor_report(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca [40 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.c = getelementptr i8, ptr %0, i64 364
  %i.d = load i32, ptr %i.c, align 4
  %i.e = getelementptr i8, ptr %0, i64 664
  %i.f = load i16, ptr %i.e, align 8
  %i.g = and i16 %i.f, 8
  %.not = icmp eq i16 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %0, i64 448
  %i.i = load i32, ptr %i.h, align 8
  %i.j = add i32 %i.i, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.k = phi i32 [ %i.j, %bb.b ], [ 1, %bb.a ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.b, i8 0, i64 40, i1 false), !annotation !81
  %i.l = getelementptr i8, ptr %0, i64 360
  %i.m = add i32 %i.k, %i.d
  %i.n = load i32, ptr %i.l, align 8
  %i.o = add i32 %i.n, 1
  %i.p = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.m, i32 noundef %i.o) #25
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr i8, ptr %1, i64 24
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 0, ptr %i.a, align 1
  %i.t = call i64 @__tty_insert_flip_string_flags(ptr noundef %i.s, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i1 noundef zeroext false, i64 noundef range(i64 -2147483648, 2147483648) %i.q) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @tty_flip_buffer_push(ptr noundef %i.s) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  ret void
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite)
define internal fastcc void @gotoxay(ptr nofree noundef captures(none) initializes((360, 364)) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #15 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 664        ; 2 uses
  %i.b = load i16, ptr %i.a, align 8              ; 2 uses
  %i.c = and i16 %i.b, 8
  %.not = icmp eq i16 %i.c, 0                     ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 448
  %i.e = load i32, ptr %i.d, align 8
  %i.f = add i32 %i.e, %2
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = phi i32 [ %i.f, %bb.b ], [ %2, %bb.a ]   ; 3 uses
  %i.h = icmp slt i32 %1, 0
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr i8, ptr %0, i64 404
  %i.j = load i32, ptr %i.i, align 4              ; 2 uses
  %.not.i = icmp ult i32 %1, %i.j
  %i.k = add nsw i32 %i.j, -1
  %spec.select.i = select i1 %.not.i, i32 %1, i32 %i.k
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sink.i = phi i32 [ %spec.select.i, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %i.l = getelementptr i8, ptr %0, i64 360
  store i32 %.sink.i, ptr %i.l, align 8
  br i1 %.not, label %gotoxy.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr i8, ptr %0, i64 448
  %i.n = load i32, ptr %i.m, align 8
  br label %gotoxy.exit

gotoxy.exit:                                      ; preds = %bb.e, %bb.f
  %.sink37.i = phi i64 [ 452, %bb.f ], [ 408, %bb.e ]
  %.027.i = phi i32 [ %i.n, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %i.o = getelementptr i8, ptr %0, i64 %.sink37.i
  %.0.i = load i32, ptr %i.o, align 4             ; 2 uses
  %i.p = icmp slt i32 %i.g, %.027.i
  %.not32.i = icmp slt i32 %i.g, %.0.i
  %i.q = add i32 %.0.i, -1
  %spec.select40.i = select i1 %.not32.i, i32 %i.g, i32 %i.q
  %.sink38.i = select i1 %i.p, i32 %.027.i, i32 %spec.select40.i ; 2 uses
  %i.r = getelementptr i8, ptr %0, i64 364
  store i32 %.sink38.i, ptr %i.r, align 4
  %i.s = getelementptr i8, ptr %0, i64 424
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr i8, ptr %0, i64 412
  %i.v = load i32, ptr %i.u, align 4
  %i.w = mul i32 %i.v, %.sink38.i
  %i.x = zext i32 %i.w to i64
  %i.y = shl i32 %.sink.i, 1
  %i.z = zext i32 %i.y to i64
  %i.aa = add i64 %i.t, %i.z
  %i.ab = add i64 %i.aa, %i.x
  %i.ac = getelementptr i8, ptr %0, i64 496
  store i64 %i.ab, ptr %i.ac, align 8
  %i.ad = and i16 %i.b, -1025
  store i16 %i.ad, ptr %i.a, align 8
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(1)
declare dso_local ptr @kmemdup_noprof(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #23

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @vt_set_led_state(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc noundef i32 @vc_t416_color(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %3 = alloca %struct.rgb, align 1                ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.a = add i32 %1, 1                            ; 6 uses
  %i.b = getelementptr i8, ptr %0, i64 544
  %i.c = load i32, ptr %i.b, align 8              ; 3 uses
  %i.d = icmp ugt i32 %i.a, %i.c
  br i1 %i.d, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %3, i8 0, i64 3, i1 false), !annotation !81
  %i.e = getelementptr i8, ptr %0, i64 548        ; 5 uses
  %i.f = sext i32 %i.a to i64
  %i.g = getelementptr [4 x i8], ptr %i.e, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4
  switch i32 %i.h, label %.thread [
    i32 5, label %bb.c
    i32 2, label %bb.k
  ]

bb.c:                                             ; preds = %bb.b
  %i.i = add i32 %1, 2                            ; 6 uses
  %.not = icmp ugt i32 %i.i, %i.c
  br i1 %.not, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr [4 x i8], ptr %i.e, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4              ; 10 uses
  %i.m = icmp ult i32 %i.l, 8
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = and i32 %i.l, 1
  %.not29.i = icmp eq i32 %i.n, 0
  %i.o = select i1 %.not29.i, i8 0, i8 -86
  store i8 %i.o, ptr %3, align 1
  %i.p = and i32 %i.l, 2
  %.not30.i = icmp eq i32 %i.p, 0
  %i.q = select i1 %.not30.i, i8 0, i8 -86
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 %i.q, ptr %i.r, align 1
  %.not31.i = icmp samesign ult i32 %i.l, 4
  %i.s = select i1 %.not31.i, i8 0, i8 -86
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i8 %i.s, ptr %i.t, align 1
  br label %rgb_from_256.exit

bb.f:                                             ; preds = %bb.d
  %i.u = icmp ult i32 %i.l, 16
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.v = and i32 %i.l, 1
  %.not.i = icmp eq i32 %i.v, 0
  %i.w = select i1 %.not.i, i8 85, i8 -1
  store i8 %i.w, ptr %3, align 1
  %i.x = and i32 %i.l, 2
  %.not27.i = icmp eq i32 %i.x, 0
  %i.y = select i1 %.not27.i, i8 85, i8 -1
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 %i.y, ptr %i.z, align 1
  %i.aa = and i32 %i.l, 4
  %.not28.i = icmp eq i32 %i.aa, 0
  %i.ab = select i1 %.not28.i, i8 85, i8 -1
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i8 %i.ab, ptr %i.ac, align 1
  br label %rgb_from_256.exit

bb.h:                                             ; preds = %bb.f
  %i.ad = icmp ult i32 %i.l, 232
  %i.ae = trunc i32 %i.l to i8                    ; 2 uses
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %.lhs.trunc.i = add i8 %i.ae, -16               ; 3 uses
  %i.af = urem i8 %.lhs.trunc.i, 6
  %.zext.i = zext nneg i8 %i.af to i16
  %.lhs.trunc32.i = mul nuw nsw i16 %.zext.i, 85
  %4 = lshr i16 %.lhs.trunc32.i, 1
  %i.ag = trunc nuw i16 %4 to i8
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i8 %i.ag, ptr %i.ah, align 1
  %i.ai = udiv i8 %.lhs.trunc.i, 6
  %i.aj = urem i8 %i.ai, 6
  %.zext37.i.a = zext nneg i8 %i.aj to i16
  %.lhs.trunc38.i = mul nuw nsw i16 %.zext37.i.a, 85
  %5 = lshr i16 %.lhs.trunc38.i, 1
  %i.ak = trunc nuw i16 %5 to i8
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 %i.ak, ptr %i.al, align 1
  %i.am = udiv i8 %.lhs.trunc.i, 36
  %.zext41.i = zext nneg i8 %i.am to i16
  %.lhs.trunc42.i = mul nuw nsw i16 %.zext41.i, 85
  %6 = lshr i16 %.lhs.trunc42.i, 1
  %i.an = trunc nuw i16 %6 to i8
  store i8 %i.an, ptr %3, align 1
  br label %rgb_from_256.exit

bb.j:                                             ; preds = %bb.h
  %i.ao = mul i8 %i.ae, 10
  %i.ap = add i8 %i.ao, -8                        ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i8 %i.ap, ptr %i.aq, align 1
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 %i.ap, ptr %i.ar, align 1
  store i8 %i.ap, ptr %3, align 1
  br label %rgb_from_256.exit

bb.k:                                             ; preds = %bb.b
  %i.as = add i32 %1, 4                           ; 3 uses
  %.not31 = icmp ugt i32 %i.as, %i.c
  br i1 %.not31, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = add i32 %1, 2
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr [4 x i8], ptr %i.e, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = trunc i32 %i.aw to i8
  store i8 %i.ax, ptr %3, align 1
  %i.ay = add i32 %1, 3
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr [4 x i8], ptr %i.e, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4
  %i.bc = trunc i32 %i.bb to i8
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 %i.bc, ptr %i.bd, align 1
  %i.be = sext i32 %i.as to i64
  %i.bf = getelementptr [4 x i8], ptr %i.e, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4
  %i.bh = trunc i32 %i.bg to i8
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i8 %i.bh, ptr %i.bi, align 1
  br label %rgb_from_256.exit

rgb_from_256.exit:                                ; preds = %bb.j, %bb.i, %bb.g, %bb.e, %bb.l
  %.026 = phi i32 [ %i.as, %bb.l ], [ %i.i, %bb.e ], [ %i.i, %bb.g ], [ %i.i, %bb.i ], [ %i.i, %bb.j ]
  call void %2(ptr noundef %0, ptr noundef nonnull %3) #25, !callees !240
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.c, %bb.k, %bb.a, %rgb_from_256.exit
  %.0 = phi i32 [ %i.a, %bb.a ], [ %.026, %rgb_from_256.exit ], [ %i.a, %bb.k ], [ %i.a, %bb.b ], [ %i.a, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite)
define internal void @rgb_foreground(ptr nofree noundef captures(none) initializes((372, 376)) %0, ptr nofree noundef readonly captures(none) %1) #15 align 16 prefalign(16) {
bb.a:
  %i.a = load i8, ptr %1, align 1                 ; 2 uses
  %i.b = getelementptr i8, ptr %1, i64 1
  %i.c = load i8, ptr %i.b, align 1               ; 2 uses
  %i.d = getelementptr i8, ptr %1, i64 2
  %i.e = load i8, ptr %i.d, align 1               ; 2 uses
  %i.f = tail call i8 @llvm.umax.i8(i8 %i.c, i8 %i.e)
  %. = tail call i8 @llvm.umax.i8(i8 %i.a, i8 %i.f) ; 3 uses
  %i.g = lshr i8 %., 1                            ; 3 uses
  %i.h = icmp ult i8 %i.g, %i.a
  %.0 = select i1 %i.h, i8 4, i8 0                ; 2 uses
  %i.i = icmp ult i8 %i.g, %i.c
  %i.j = or disjoint i8 %.0, 2
  %.1 = select i1 %i.i, i8 %i.j, i8 %.0
  %i.k = icmp ult i8 %i.g, %i.e
  %i.l = zext i1 %i.k to i8
  %.2 = or disjoint i8 %.1, %i.l                  ; 3 uses
  %i.m = icmp eq i8 %.2, 7
  %i.n = icmp ult i8 %., 86
  %or.cond = and i1 %i.n, %i.m
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr i8, ptr %0, i64 372
  store i32 2, ptr %i.o, align 4
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.p = icmp ugt i8 %., -86
  %i.q = getelementptr i8, ptr %0, i64 372        ; 2 uses
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 2, ptr %i.q, align 4
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store i32 1, ptr %i.q, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %.3 = phi i8 [ 0, %bb.b ], [ %.2, %bb.d ], [ %.2, %bb.e ]
  %i.r = getelementptr i8, ptr %0, i64 368        ; 2 uses
  %i.s = load i8, ptr %i.r, align 8
  %i.t = and i8 %i.s, -16
  %i.u = or i8 %i.t, %.3
  store i8 %i.u, ptr %i.r, align 8
  ret void
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite)
define internal void @rgb_background(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) #15 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 368        ; 2 uses
  %i.b = load i8, ptr %i.a, align 8
  %i.c = and i8 %i.b, 15
  %i.d = load i8, ptr %1, align 1
  %i.e = lshr i8 %i.d, 1
  %i.f = and i8 %i.e, 64
  %i.g = or disjoint i8 %i.f, %i.c
  %i.h = getelementptr i8, ptr %1, i64 1
  %i.i = load i8, ptr %i.h, align 1
  %i.j = lshr i8 %i.i, 2
  %i.k = and i8 %i.j, 32
  %i.l = or disjoint i8 %i.g, %i.k
  %i.m = getelementptr i8, ptr %1, i64 2
  %i.n = load i8, ptr %i.m, align 1
  %i.o = lshr i8 %i.n, 3
  %i.p = and i8 %i.o, 16
  %i.q = or disjoint i8 %i.l, %i.p
  store i8 %i.q, ptr %i.a, align 8
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @insert_char(ptr noundef %0, i32 noundef %1) unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 496
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = inttoptr i64 %i.b to ptr                 ; 4 uses
  %i.d = getelementptr i8, ptr %0, i64 800
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %.vc_uniscr_insert.exit_crit_edge, label %bb.b

.vc_uniscr_insert.exit_crit_edge:                 ; preds = %bb.a
  %.pre = zext i32 %1 to i64
  br label %vc_uniscr_insert.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 360
  %i.g = getelementptr i8, ptr %0, i64 364
  %i.h = load i32, ptr %i.g, align 4
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr [8 x i8], ptr %i.e, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = load i32, ptr %i.f, align 8              ; 2 uses
  %i.m = getelementptr i8, ptr %0, i64 404
  %i.n = load i32, ptr %i.m, align 4
  %i.o = add i32 %i.l, %1                         ; 2 uses
  %i.p = zext i32 %i.o to i64
  %i.q = getelementptr [4 x i8], ptr %i.k, i64 %i.p
  %i.r = zext i32 %i.l to i64
  %i.s = getelementptr [4 x i8], ptr %i.k, i64 %i.r ; 2 uses
  %i.t = sub i32 %i.n, %i.o
  %i.u = zext i32 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.q, ptr align 4 %i.s, i64 %i.v, i1 false)
  %i.w = zext i32 %1 to i64                       ; 2 uses
  %i.x = tail call { ptr, i64 } asm sideeffect "rep stosl", "={di},={cx},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 32, ptr %i.s, i64 range(i64 0, 4294967296) %i.w) #26, !srcloc !94 ; 0 uses
  br label %vc_uniscr_insert.exit

vc_uniscr_insert.exit:                            ; preds = %.vc_uniscr_insert.exit_crit_edge, %bb.b
  %.pre-phi = phi i64 [ %.pre, %.vc_uniscr_insert.exit_crit_edge ], [ %i.w, %bb.b ]
  %i.y = getelementptr [2 x i8], ptr %i.c, i64 %.pre-phi
  %i.z = getelementptr i8, ptr %0, i64 404        ; 4 uses
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = getelementptr i8, ptr %0, i64 360       ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8
  %i.ad = add i32 %1, %i.ac
  %i.ae = sub i32 %i.aa, %i.ad
  %i.af = shl i32 %i.ae, 1
  %i.ag = zext i32 %i.af to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %i.y, ptr readonly align 2 %i.c, i64 %i.ag, i1 false)
  %i.ah = getelementptr i8, ptr %0, i64 536
  %i.ai = load i16, ptr %i.ah, align 8
  %i.aj = and i32 %1, 2147483647
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = tail call { ptr, i64 } asm sideeffect "rep stosw", "={di},={cx},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i16 %i.ai, ptr %i.c, i64 range(i64 0, 2147483648) %i.ak) #26, !srcloc !97 ; 0 uses
  %i.am = getelementptr i8, ptr %0, i64 664       ; 2 uses
  %i.an = load i16, ptr %i.am, align 8
  %i.ao = and i16 %i.an, -1025
  store i16 %i.ao, ptr %i.am, align 8
  %i.ap = load volatile i32, ptr @ignore_console_lock_warning, align 4
  %.not.i.i = icmp eq i32 %i.ap, 0
  br i1 %.not.i.i, label %bb.c, label %con_should_update.exit

bb.c:                                             ; preds = %vc_uniscr_insert.exit
  %i.aq = tail call i32 @is_console_locked() #25
  %.not4.i.i = icmp eq i32 %i.aq, 0
  %i.ar = load i32, ptr @oops_in_progress, align 4
  %.not5.i.i = icmp eq i32 %i.ar, 0
  %or.cond.i.i = select i1 %.not4.i.i, i1 %.not5.i.i, i1 false, !prof !11
  br i1 %or.cond.i.i, label %bb.d, label %con_should_update.exit, !prof !11

bb.d:                                             ; preds = %bb.c
end_hunk_0
