Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/curses?download=true
inline.NumInlined: 16
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@curses_refresh:bb.a
  br i1 %.not94, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ce = load ptr, ptr %i.r, align 8
  call void @qemu_input_event_send_key_number(ptr noundef %i.ce, i32 noundef 56, i1 noundef zeroext true) #12
  call void @qemu_input_event_send_key_delay(i32 noundef 0) #12
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.cf = and i32 %.3, 2048
  %.not95 = icmp eq i32 %i.cf, 0
  %i.cg = load ptr, ptr %i.r, align 8             ; 2 uses
  br i1 %.not95, label %.critedge, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @qemu_input_event_send_key_number(ptr noundef %i.cg, i32 noundef 184, i1 noundef zeroext true) #12
  call void @qemu_input_event_send_key_delay(i32 noundef 0) #12
  %i.ch = load ptr, ptr %i.r, align 8
  %i.ci = and i32 %.3, 255                        ; 2 uses
  call void @qemu_input_event_send_key_number(ptr noundef %i.ch, i32 noundef %i.ci, i1 noundef zeroext true) #12
  call void @qemu_input_event_send_key_delay(i32 noundef 0) #12
  %i.cj = load ptr, ptr %i.r, align 8
  call void @qemu_input_event_send_key_number(ptr noundef %i.cj, i32 noundef %i.ci, i1 noundef zeroext false) #12
  br label %bb.ai

.critedge:                                        ; preds = %bb.ag
  %i.ck = and i32 %.3, 255                        ; 2 uses
  call void @qemu_input_event_send_key_number(ptr noundef %i.cg, i32 noundef %i.ck, i1 noundef zeroext true) #12
  br label %bb.ai

bb.ai:                                            ; preds = %.critedge, %bb.ah
  %.sink218 = phi i32 [ %i.ck, %.critedge ], [ 184, %bb.ah ]
  call void @qemu_input_event_send_key_delay(i32 noundef 0) #12
  %i.cl = load ptr, ptr %i.r, align 8
  call void @qemu_input_event_send_key_number(ptr noundef %i.cl, i32 noundef %.sink218, i1 noundef zeroext false) #12
  call void @qemu_input_event_send_key_delay(i32 noundef 0) #12
  br i1 %.not94, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cm = load ptr, ptr %i.r, align 8
  call void @qemu_input_event_send_key_number(ptr noundef %i.cm, i32 noundef 56, i1 noundef zeroext false) #12
  call void @qemu_input_event_send_key_delay(i32 noundef 0) #12
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  br i1 %.not93, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cn = load ptr, ptr %i.r, align 8
  call void @qemu_input_event_send_key_number(ptr noundef %i.cn, i32 noundef 29, i1 noundef zeroext false) #12
  call void @qemu_input_event_send_key_delay(i32 noundef 0) #12
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  br i1 %.not92, label %.backedge.backedge, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.co = load ptr, ptr %i.r, align 8
  call void @qemu_input_event_send_key_number(ptr noundef %i.co, i32 noundef 42, i1 noundef zeroext false) #12
  call void @qemu_input_event_send_key_delay(i32 noundef 0) #12
  br label %.backedge.backedge

bb.ao:                                            ; preds = %bb.z
  %i.cp = icmp eq i32 %.2122164, 1
  br i1 %i.cp, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.cq = icmp slt i32 %.276166, 256
  br i1 %i.cq, label %curses2foo.exit115, label %curses2foo.exit115.thread

bb.aq:                                            ; preds = %bb.ao
  %i.cr = icmp slt i32 %.276166, 511
  br i1 %i.cr, label %curses2foo.exit115, label %curses2foo.exit115.thread

curses2foo.exit115:                               ; preds = %bb.ap, %bb.aq
  %_curseskey2qemu.sink = phi ptr [ @_curseskey2qemu, %bb.aq ], [ @_curses2qemu, %bb.ap ]
  %i.cs = sext i32 %.276166 to i64
  %i.ct = getelementptr inbounds [4 x i8], ptr %_curseskey2qemu.sink, i64 %i.cs
  %.1.i110 = load i32, ptr %i.ct, align 4
  %.1.i110.fr = freeze i32 %.1.i110               ; 2 uses
  %i.cu = icmp eq i32 %.1.i110.fr, -1
  %spec.select189 = select i1 %i.cu, i32 %.276166, i32 %.1.i110.fr
  br label %curses2foo.exit115.thread

curses2foo.exit115.thread:                        ; preds = %curses2foo.exit115, %bb.ap, %bb.aq
  %i.cv = phi i32 [ %spec.select189, %curses2foo.exit115 ], [ %.276166, %bb.ap ], [ %.276166, %bb.aq ]
  %i.cw = load ptr, ptr %i.r, align 8
  %i.cx = call ptr @object_dynamic_cast_assert(ptr noundef %i.cw, ptr noundef nonnull @.str.252, ptr noundef nonnull @.str.253, i32 noundef 19, ptr noundef nonnull @__func__.QEMU_TEXT_CONSOLE) #12
  call void @qemu_text_console_put_keysym(ptr noundef %i.cx, i32 noundef %i.cv) #12
  br label %.backedge.backedge

.loopexit:                                        ; preds = %console_getch.exit, %console_getch.exit.thread
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @curses_cursor_position(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = icmp sgt i32 %1, -1
  br i1 %i.a, label %bb.b, label %.sink.split

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr @sminx, align 4
  %i.c = add i32 %i.b, %1
  %i.d = load i32, ptr @px, align 4
  %i.e = sub i32 %i.c, %i.d                       ; 3 uses
  %i.f = load i32, ptr @sminy, align 4
  %i.g = add i32 %i.f, %2
  %i.h = load i32, ptr @py, align 4
  %i.i = sub i32 %i.g, %i.h                       ; 3 uses
  %i.j = icmp sgt i32 %i.e, -1
  %i.k = icmp sgt i32 %i.i, -1
  %or.cond = select i1 %i.j, i1 %i.k, i1 false
  %i.l = load i32, ptr @COLS, align 4
  %i.m = icmp slt i32 %i.e, %i.l
  %or.cond13 = select i1 %or.cond, i1 %i.m, i1 false
  %i.n = load i32, ptr @LINES, align 4
  %i.o = icmp slt i32 %i.i, %i.n
  %or.cond15 = select i1 %or.cond13, i1 %i.o, i1 false
  br i1 %or.cond15, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr @stdscr, align 8
  %i.q = tail call i32 @wmove(ptr noundef %i.p, i32 noundef %i.i, i32 noundef %i.e) #12 ; 0 uses
  %i.r = tail call i32 @curs_set(i32 noundef 1) #12 ; 0 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call zeroext i1 @qemu_console_is_graphic(ptr noundef %i.t) #12
  br i1 %i.u, label %bb.d, label %.sink.split

.sink.split:                                      ; preds = %bb.a, %bb.b, %bb.c
  %.sink = phi i32 [ 2, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  %i.v = tail call i32 @curs_set(i32 noundef %.sink) #12 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.c
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @curses_resize(ptr nofree readnone captures(none) %0, i32 noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = load i32, ptr @gwidth, align 4
  %i.b = icmp eq i32 %1, %i.a
  %i.c = load i32, ptr @gheight, align 4
  %i.d = icmp eq i32 %2, %i.c
  %or.cond = select i1 %i.b, i1 %i.d, i1 false
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %1, ptr @gwidth, align 4
  store i32 %2, ptr @gheight, align 4
  tail call fastcc void @curses_calc_pad()
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @curses_update(ptr nofree readnone captures(none) %0, i32 %1, i32 noundef %2, i32 %3, i32 noundef %4) #0 {
bb.a:
  %i.a = alloca [5 x i32], align 16               ; 8 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i16, align 2                      ; 4 uses
  %i.d = load i32, ptr @width, align 4
  %i.e = sext i32 %i.d to i64
  %i.f = tail call noalias ptr @g_malloc_n(i64 noundef %i.e, i64 noundef 28) #18 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %i.a, i8 0, i64 20, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 0, ptr %i.b, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i16 0, ptr %i.c, align 2, !annotation !8
  %i.g = add i32 %4, %2                           ; 2 uses
  %i.h = icmp slt i32 %2, %i.g
  br i1 %i.h, label %.preheader.lr.ph, label %._crit_edge43

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.i = load ptr, ptr @screen, align 8
  %i.j = load i32, ptr @width, align 4            ; 2 uses
  %i.k = mul i32 %i.j, %2
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.e
  %i.o = phi i32 [ %i.j, %.preheader.lr.ph ], [ %i.ao, %bb.e ]
  %.03642 = phi ptr [ %i.m, %.preheader.lr.ph ], [ %i.aq, %bb.e ] ; 2 uses
  %.03741 = phi i32 [ %2, %.preheader.lr.ph ], [ %i.an, %bb.e ] ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %bb.c
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ 0, %.preheader ] ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %.03642, i64 %indvars.iv
  %i.r = load i32, ptr %i.q, align 4              ; 3 uses
  %i.s = and i32 %i.r, 255                        ; 2 uses
  %i.t = and i32 %i.r, -256
  %i.u = trunc i32 %i.r to i16
  %5 = lshr i16 %i.u, 8
  %i.v = load ptr, ptr @vga_to_curses, align 8
  %i.w = zext nneg i32 %i.s to i64
  %i.x = getelementptr inbounds nuw [28 x i8], ptr %i.v, i64 %i.w
  %i.y = call i32 @getcchar(ptr noundef %i.x, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef null) #12
  %i.z = icmp eq i32 %i.y, -1
  %i.aa = load i32, ptr %i.a, align 16
  %i.ab = icmp eq i32 %i.aa, 0
  %or.cond = select i1 %i.z, i1 true, i1 %i.ab
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  store i32 %i.s, ptr %i.a, align 16
  store i32 0, ptr %i.n, align 4
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.ac = getelementptr inbounds nuw [28 x i8], ptr %i.f, i64 %indvars.iv
  %i.ad = call i32 @setcchar(ptr noundef %i.ac, ptr noundef nonnull %i.a, i32 noundef %i.t, i16 noundef signext %5, ptr noundef null) #12 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ae = load i32, ptr @width, align 4
  %i.af = sext i32 %i.ae to i64
  %i.ag = icmp slt i64 %indvars.iv.next, %i.af
  br i1 %i.ag, label %.lr.ph, label %._crit_edge, !llvm.loop !13

._crit_edge:                                      ; preds = %bb.c, %.preheader
  %i.ah = load ptr, ptr @screenpad, align 8
  %i.ai = call i32 @wmove(ptr noundef %i.ah, i32 noundef %.03741, i32 noundef 0) #12
  %i.aj = icmp eq i32 %i.ai, -1
  br i1 %i.aj, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.ak = load ptr, ptr @screenpad, align 8
  %i.al = load i32, ptr @width, align 4
  %i.am = call i32 @wadd_wchnstr(ptr noundef %i.ak, ptr noundef %i.f, i32 noundef %i.al) #12 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge
  %i.an = add nsw i32 %.03741, 1                  ; 2 uses
  %i.ao = load i32, ptr @width, align 4           ; 2 uses
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds [4 x i8], ptr %.03642, i64 %i.ap
  %exitcond.not = icmp eq i32 %i.an, %i.g
  br i1 %exitcond.not, label %._crit_edge43, label %.preheader, !llvm.loop !14

._crit_edge43:                                    ; preds = %bb.e, %bb.a
  %i.ar = load ptr, ptr @screenpad, align 8
  %i.as = load i32, ptr @py, align 4
  %i.at = load i32, ptr @px, align 4
  %i.au = load i32, ptr @sminy, align 4
  %i.av = load i32, ptr @sminx, align 4
  %i.aw = load i32, ptr @smaxy, align 4
  %i.ax = add i32 %i.aw, -1
  %i.ay = load i32, ptr @smaxx, align 4
  %i.az = add i32 %i.ay, -1
  %i.ba = call i32 @pnoutrefresh(ptr noundef %i.ar, i32 noundef %i.as, i32 noundef %i.at, i32 noundef %i.au, i32 noundef %i.av, i32 noundef %i.ax, i32 noundef %i.az) #12 ; 0 uses
  %i.bb = load ptr, ptr @stdscr, align 8
  %i.bc = call i32 @wrefresh(ptr noundef %i.bb) #12 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  call void @g_free(ptr noundef %i.f) #12
  ret void
}

declare i32 @wclear(ptr noundef) local_unnamed_addr #1

declare i32 @wrefresh(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @curses_calc_pad() unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @dcl, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call zeroext i1 @qemu_console_is_fixedsize(ptr noundef %i.c) #12 ; 2 uses
  %gwidth.val = load i32, ptr @gwidth, align 4
  %COLS.val = load i32, ptr @COLS, align 4
  %storemerge5 = select i1 %i.d, i32 %gwidth.val, i32 %COLS.val
  store i32 %storemerge5, ptr @width, align 4
  %gheight.val = load i32, ptr @gheight, align 4
  %LINES.val = load i32, ptr @LINES, align 4
  %storemerge = select i1 %i.d, i32 %gheight.val, i32 %LINES.val
  store i32 %storemerge, ptr @height, align 4
  %i.e = load ptr, ptr @screenpad, align 8        ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @delwin(ptr noundef nonnull %i.e) #12 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = load ptr, ptr @stdscr, align 8
  %i.h = tail call i32 @wclear(ptr noundef %i.g) #12 ; 0 uses
  %i.i = load ptr, ptr @stdscr, align 8
  %i.j = tail call i32 @wrefresh(ptr noundef %i.i) #12 ; 0 uses
  %i.k = load i32, ptr @height, align 4
  %i.l = load i32, ptr @width, align 4
  %i.m = tail call ptr @newpad(i32 noundef %i.k, i32 noundef %i.l) #12
  store ptr %i.m, ptr @screenpad, align 8
  %i.n = load i32, ptr @width, align 4            ; 4 uses
  %i.o = load i32, ptr @COLS, align 4             ; 4 uses
  %i.p = icmp sgt i32 %i.n, %i.o
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = sub i32 %i.n, %i.o
  %i.r = sdiv i32 %i.q, 2
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.s = sub i32 %i.o, %i.n
  %i.t = sdiv i32 %i.s, 2                         ; 2 uses
  %i.u = add i32 %i.t, %i.n
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sink8 = phi i32 [ %i.r, %bb.d ], [ 0, %bb.e ]
  %.sink = phi i32 [ 0, %bb.d ], [ %i.t, %bb.e ]
  %storemerge6 = phi i32 [ %i.o, %bb.d ], [ %i.u, %bb.e ]
  store i32 %.sink8, ptr @px, align 4
  store i32 %.sink, ptr @sminx, align 4
  store i32 %storemerge6, ptr @smaxx, align 4
  %i.v = load i32, ptr @height, align 4           ; 4 uses
  %i.w = load i32, ptr @LINES, align 4            ; 4 uses
  %i.x = icmp sgt i32 %i.v, %i.w
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.y = sub i32 %i.v, %i.w
  %i.z = sdiv i32 %i.y, 2
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.aa = sub i32 %i.w, %i.v
  %i.ab = sdiv i32 %i.aa, 2                       ; 2 uses
  %i.ac = add i32 %i.ab, %i.v
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sink10 = phi i32 [ %i.z, %bb.g ], [ 0, %bb.h ]
  %.sink9 = phi i32 [ 0, %bb.g ], [ %i.ab, %bb.h ]
  %storemerge7 = phi i32 [ %i.w, %bb.g ], [ %i.ac, %bb.h ]
  store i32 %.sink10, ptr @py, align 4
  store i32 %.sink9, ptr @sminy, align 4
  store i32 %storemerge7, ptr @smaxy, align 4
  ret void
}

declare void @qemu_console_hw_invalidate(ptr noundef) local_unnamed_addr #1

declare void @qemu_console_hw_text_update(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @qemu_console_lookup_by_index(i32 noundef) local_unnamed_addr #1

declare i32 @werase(ptr noundef) local_unnamed_addr #1

declare i32 @wnoutrefresh(ptr noundef) local_unnamed_addr #1

declare void @qemu_console_unregister_listener(ptr noundef) local_unnamed_addr #1

declare i32 @keysym2scancode(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

declare zeroext i1 @qemu_console_is_graphic(ptr noundef) local_unnamed_addr #1

declare void @qemu_input_event_send_key_number(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

declare void @qemu_input_event_send_key_delay(i32 noundef) local_unnamed_addr #1

declare void @qemu_text_console_put_keysym(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @ioctl(i32 noundef, i64 noundef, ...) local_unnamed_addr #2

declare i32 @resize_term(i32 noundef, i32 noundef) local_unnamed_addr #1

declare zeroext i1 @qemu_console_is_fixedsize(ptr noundef) local_unnamed_addr #1

declare i32 @delwin(ptr noundef) local_unnamed_addr #1

declare ptr @newpad(i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @wget_wch(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #10

declare ptr @object_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @wmove(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @curs_set(i32 noundef) local_unnamed_addr #1

; Function Attrs: allocsize(0,1)
declare noalias ptr @g_malloc_n(i64 noundef, i64 noundef) local_unnamed_addr #11

declare i32 @wadd_wchnstr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @pnoutrefresh(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @endwin() local_unnamed_addr #1

declare void @kbd_layout_free(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #3 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #6 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nofree norecurse nosync nounwind sspstrong memory(readwrite, argmem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #10 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #11 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #12 = { nounwind }
attributes #13 = { cold noreturn nounwind }
end_hunk_0
