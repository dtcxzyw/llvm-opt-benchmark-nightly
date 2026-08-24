Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/clamdtop?download=true
inline.NumInlined: 64
inline.NumDeleted: 22
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@cleanup:bb.a
  %i.a = load ptr, ptr @status_bar_window, align 8, !tbaa !37 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = tail call i32 @werase(ptr noundef nonnull %i.a) #26 ; 0 uses
  %i.c = load ptr, ptr @status_bar_window, align 8, !tbaa !37
  %i.d = tail call i32 @wrefresh(ptr noundef %i.c) #26 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = load ptr, ptr @header_window, align 8, !tbaa !37 ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = tail call i32 @delwin(ptr noundef nonnull %i.e) #26 ; 0 uses
  store ptr null, ptr @header_window, align 8, !tbaa !37
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.g = load ptr, ptr @mem_window, align 8, !tbaa !37 ; 2 uses
  %.not5.i = icmp eq ptr %i.g, null
  br i1 %.not5.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = tail call i32 @delwin(ptr noundef nonnull %i.g) #26 ; 0 uses
  store ptr null, ptr @mem_window, align 8, !tbaa !37
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.i = load ptr, ptr @stats_window, align 8, !tbaa !37 ; 2 uses
  %.not6.i = icmp eq ptr %i.i, null
  br i1 %.not6.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.j = tail call i32 @delwin(ptr noundef nonnull %i.i) #26 ; 0 uses
  store ptr null, ptr @stats_window, align 8, !tbaa !37
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.k = load ptr, ptr @stats_head_window, align 8, !tbaa !37 ; 2 uses
  %.not7.i = icmp eq ptr %i.k, null
  br i1 %.not7.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.l = tail call i32 @delwin(ptr noundef nonnull %i.k) #26 ; 0 uses
  store ptr null, ptr @stats_head_window, align 8, !tbaa !37
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.m = load ptr, ptr @status_bar_window, align 8, !tbaa !37 ; 2 uses
  %.not8.i = icmp eq ptr %i.m, null
  br i1 %.not8.i, label %rm_windows.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.n = tail call i32 @delwin(ptr noundef nonnull %i.m) #26 ; 0 uses
  store ptr null, ptr @status_bar_window, align 8, !tbaa !37
  br label %rm_windows.exit

rm_windows.exit:                                  ; preds = %bb.l, %bb.m
  %i.o = tail call i32 @endwin() #26              ; 0 uses
  %i.p = load ptr, ptr @curses_scr, align 8, !tbaa !35
  tail call void @delscreen(ptr noundef %i.p) #26
  br label %bb.n

bb.n:                                             ; preds = %rm_windows.exit, %bb.a
  store i1 false, ptr @curses_inited, align 4
  %i.q = load i64, ptr getelementptr inbounds nuw (i8, ptr @global, i64 24), align 8, !tbaa !24
  %.not23 = icmp eq i64 %i.q, 0
  br i1 %.not23, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.n
  %.pre = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global, i64 32), align 8, !tbaa !31
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.q
  %i.r = phi ptr [ %i.ab, %bb.q ], [ %.pre, %.lr.ph.preheader ] ; 2 uses
  %i.s = phi i64 [ %i.ai, %bb.q ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.022 = phi i32 [ %i.ah, %bb.q ], [ 0, %.lr.ph.preheader ]
  %i.t = getelementptr inbounds nuw [56 x i8], ptr %i.r, i64 %i.s
  %i.u = load i32, ptr %i.t, align 8, !tbaa !53   ; 3 uses
  %.off = add i32 %i.u, -1
  %switch = icmp ult i32 %.off, -2
  br i1 %switch, label %bb.o, label %bb.q

bb.o:                                             ; preds = %.lr.ph
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %send_string_noreconn.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @__assert_fail(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.11, i32 noundef 838, ptr noundef nonnull @__PRETTY_FUNCTION__.send_string_noreconn) #31
  unreachable

send_string_noreconn.exit:                        ; preds = %bb.o
  %i.w = tail call i64 @send(i32 noundef %i.u, ptr noundef nonnull @.str.5, i64 noundef 5, i32 noundef 0) #26 ; 0 uses
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global, i64 32), align 8, !tbaa !31
  %i.y = getelementptr inbounds nuw [56 x i8], ptr %i.x, i64 %i.s
  %i.z = load i32, ptr %i.y, align 8, !tbaa !53
  %i.aa = tail call i32 @close(i32 noundef %i.z) #26 ; 0 uses
  %.pre25 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global, i64 32), align 8, !tbaa !31
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph, %send_string_noreconn.exit
  %i.ab = phi ptr [ %i.r, %.lr.ph ], [ %.pre25, %send_string_noreconn.exit ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [56 x i8], ptr %i.ab, i64 %i.s ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !59
  tail call void @free(ptr noundef %i.ae) #26
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !56
  tail call void @free(ptr noundef %i.ag) #26
  %i.ah = add i32 %.022, 1                        ; 2 uses
  %i.ai = zext i32 %i.ah to i64                   ; 2 uses
  %i.aj = load i64, ptr getelementptr inbounds nuw (i8, ptr @global, i64 24), align 8, !tbaa !24 ; 2 uses
  %i.ak = icmp ugt i64 %i.aj, %i.ai
  br i1 %i.ak, label %.lr.ph, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %bb.q
  %i.al = icmp samesign ugt i64 %i.aj, 1
  %i.am = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global, i64 16), align 8, !tbaa !30
  tail call void @free(ptr noundef %i.am) #26
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global, i64 32), align 8, !tbaa !31
  tail call void @free(ptr noundef %i.an) #26
  %i.ao = load ptr, ptr @queue_header, align 8, !tbaa !21
  tail call void @free(ptr noundef %i.ao) #26
  br i1 %i.al, label %.sink.split, label %bb.r

.critedge:                                        ; preds = %bb.n
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global, i64 16), align 8, !tbaa !30
  tail call void @free(ptr noundef %i.ap) #26
  %i.aq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global, i64 32), align 8, !tbaa !31
  tail call void @free(ptr noundef %i.aq) #26
  br label %.sink.split

.sink.split:                                      ; preds = %._crit_edge.loopexit, %.critedge
  %queue_header.sink = phi ptr [ @queue_header, %.critedge ], [ @multi_queue_header, %._crit_edge.loopexit ]
  %i.ar = load ptr, ptr %queue_header.sink, align 8, !tbaa !21
  tail call void @free(ptr noundef %i.ar) #26
  br label %bb.r

bb.r:                                             ; preds = %.sink.split, %._crit_edge.loopexit
  %i.as = load ptr, ptr @clamd_header, align 8, !tbaa !21
  tail call void @free(ptr noundef %i.as) #26
  %.b = load i1, ptr @normal_exit, align 4
  br i1 %.b, label %bb.z, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.at = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.au = tail call i64 @fwrite(ptr nonnull @.str.6, i64 28, i64 1, ptr %i.at) #29 ; 0 uses
  %i.av = load ptr, ptr @exit_reason, align 8, !tbaa !21 ; 2 uses
  %.not15 = icmp eq ptr %i.av, null
  br i1 %.not15, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.aw = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.ax = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aw, ptr noundef nonnull @.str.7, ptr noundef nonnull %i.av) #32 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ay = load ptr, ptr @exit_func, align 8, !tbaa !21 ; 2 uses
  %.not16 = icmp eq ptr %i.ay, null
  br i1 %.not16, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.az = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.ba = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.az, ptr noundef nonnull @.str.8, ptr noundef nonnull %i.ay) #32 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.bb = load i32, ptr @exit_line, align 4, !tbaa !41 ; 2 uses
  %.not17 = icmp eq i32 %i.bb, 0
  br i1 %.not17, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bc = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.bd = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bc, ptr noundef nonnull @.str.9, i32 noundef %i.bb) #32 ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.be = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.bf = tail call i32 @fputc(i32 noundef 10, ptr noundef %i.be) ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.r
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_toupper_loc() local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define internal fastcc void @resize() unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr @stdscr, align 8, !tbaa !37
  %i.b = tail call i32 @getmaxy(ptr noundef %i.a) #26 ; 3 uses
  %i.c = load ptr, ptr @stdscr, align 8, !tbaa !37
  %i.d = tail call i32 @getmaxx(ptr noundef %i.c) #26 ; 5 uses
  %i.e = icmp eq i32 %i.b, -1
  %i.f = icmp eq i32 %i.d, -1
  %or.cond = select i1 %i.e, i1 true, i1 %i.f
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr @stderr, align 8, !tbaa !10
  %i.h = tail call i64 @fwrite(ptr nonnull @.str.118, i64 28, i64 1, ptr %i.g) #29 ; 0 uses
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.i = load i32, ptr @maxy, align 4, !tbaa !41
  %i.j = icmp eq i32 %i.b, %i.i
  %i.k = load i32, ptr @maxx, align 4
  %i.l = icmp eq i32 %i.d, %i.k
  %or.cond22 = select i1 %i.j, i1 %i.l, i1 false
  br i1 %or.cond22, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %i.d, ptr @maxx, align 4, !tbaa !41
  store i32 %i.b, ptr @maxy, align 4, !tbaa !41
  %i.m = load ptr, ptr @queue_header, align 8, !tbaa !21
  tail call void @free(ptr noundef %i.m) #26
  %i.n = load ptr, ptr @clamd_header, align 8, !tbaa !21
  tail call void @free(ptr noundef %i.n) #26
  %i.o = add nuw i32 %i.d, 1
  %i.p = zext i32 %i.o to i64                     ; 3 uses
  %i.q = tail call noalias ptr @malloc(i64 noundef %i.p) #36 ; 7 uses
  %i.r = ptrtoaddr ptr %i.q to i64                ; 3 uses
  store ptr %i.q, ptr @queue_header, align 8, !tbaa !21
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @exit_program(i32 noundef 3, ptr noundef nonnull @__PRETTY_FUNCTION__.resize, i32 noundef 227)
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.s = tail call noalias ptr @malloc(i64 noundef %i.p) #36 ; 7 uses
  %i.t = ptrtoaddr ptr %i.s to i64                ; 3 uses
  store ptr %i.s, ptr @clamd_header, align 8, !tbaa !21
  %.not18 = icmp eq ptr %i.s, null
  br i1 %.not18, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @exit_program(i32 noundef 3, ptr noundef nonnull @__PRETTY_FUNCTION__.resize, i32 noundef 229)
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.u = zext i32 %i.d to i64                     ; 12 uses
  %i.v = tail call ptr @strncpy(ptr noundef nonnull %i.q, ptr noundef nonnull dereferenceable(35) @.str.120, i64 noundef %i.u) #26 ; 0 uses
  %i.w = tail call ptr @strncpy(ptr noundef nonnull %i.s, ptr noundef nonnull dereferenceable(71) @.str.121, i64 noundef %i.u) #26 ; 0 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.u
  store i8 0, ptr %i.x, align 1, !tbaa !9
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.u
  store i8 0, ptr %i.y, align 1, !tbaa !9
  %i.z = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.q) #27 ; 4 uses
  %i.aa = icmp samesign ult i64 %i.z, %i.u
  br i1 %i.aa, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.h
  %i.ab = getelementptr i8, ptr %i.q, i64 %i.z
  %i.ac = add i64 %i.z, %i.r
  %i.ad = add i64 %i.ac, 1
  %i.ae = add i64 %i.r, %i.u
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ad, i64 %i.ae)
  %i.af = add i64 %i.z, %i.r
  %i.ag = sub i64 %umax, %i.af
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ab, i8 32, i64 %i.ag, i1 false), !tbaa !9
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.h
  %i.ah = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.s) #27 ; 4 uses
  %i.ai = icmp samesign ult i64 %i.ah, %i.u
  br i1 %i.ai, label %.lr.ph26.preheader, label %._crit_edge27

.lr.ph26.preheader:                               ; preds = %._crit_edge
  %i.aj = getelementptr i8, ptr %i.s, i64 %i.ah
  %i.ak = add i64 %i.ah, %i.t
  %i.al = add i64 %i.ak, 1
  %i.am = add i64 %i.t, %i.u
  %umax31 = tail call i64 @llvm.umax.i64(i64 %i.al, i64 %i.am)
  %i.an = add i64 %i.ah, %i.t
  %i.ao = sub i64 %umax31, %i.an
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.aj, i8 32, i64 %i.ao, i1 false), !tbaa !9
  br label %._crit_edge27

._crit_edge27:                                    ; preds = %.lr.ph26.preheader, %._crit_edge
  %i.ap = load i64, ptr getelementptr inbounds nuw (i8, ptr @global, i64 24), align 8, !tbaa !24
  %i.aq = icmp ugt i64 %i.ap, 1
  br i1 %i.aq, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %._crit_edge27
  %i.ar = load ptr, ptr @multi_queue_header, align 8, !tbaa !21
  tail call void @free(ptr noundef %i.ar) #26
  %i.as = tail call noalias ptr @malloc(i64 noundef %i.p) #36 ; 7 uses
  %i.at = ptrtoaddr ptr %i.as to i64              ; 3 uses
  store ptr %i.as, ptr @multi_queue_header, align 8, !tbaa !21
  %.not20 = icmp eq ptr %i.as, null
  br i1 %.not20, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call fastcc void @exit_program(i32 noundef 3, ptr noundef nonnull @__PRETTY_FUNCTION__.resize, i32 noundef 244)
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.au = tail call ptr @strncpy(ptr noundef nonnull %i.as, ptr noundef nonnull dereferenceable(35) @.str.123, i64 noundef %i.u) #26 ; 0 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.u
  store i8 0, ptr %i.av, align 1, !tbaa !9
  %i.aw = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.as) #27 ; 4 uses
  %i.ax = icmp samesign ult i64 %i.aw, %i.u
  br i1 %i.ax, label %.lr.ph30.preheader, label %.loopexit

.lr.ph30.preheader:                               ; preds = %bb.k
  %i.ay = getelementptr i8, ptr %i.as, i64 %i.aw
  %i.az = add i64 %i.aw, %i.at
  %i.ba = add i64 %i.az, 1
  %i.bb = add i64 %i.at, %i.u
  %umax32 = tail call i64 @llvm.umax.i64(i64 %i.ba, i64 %i.bb)
  %i.bc = add i64 %i.aw, %i.at
  %i.bd = sub i64 %umax32, %i.bc
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ay, i8 32, i64 %i.bd, i1 false), !tbaa !9
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph30.preheader, %bb.k, %._crit_edge27, %bb.c, %bb.b
  ret void
}

declare i32 @endwin() local_unnamed_addr #11

declare i32 @wrefresh(ptr noundef) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define internal fastcc void @init_windows(i32 noundef %0) unnamed_addr #8 {
bb.a:
  tail call fastcc void @resize()
  %i.a = load ptr, ptr @header_window, align 8, !tbaa !37 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @delwin(ptr noundef nonnull %i.a) #26 ; 0 uses
  store ptr null, ptr @header_window, align 8, !tbaa !37
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = load ptr, ptr @mem_window, align 8, !tbaa !37 ; 2 uses
  %.not5.i = icmp eq ptr %i.c, null
  br i1 %.not5.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @delwin(ptr noundef nonnull %i.c) #26 ; 0 uses
  store ptr null, ptr @mem_window, align 8, !tbaa !37
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.e = load ptr, ptr @stats_window, align 8, !tbaa !37 ; 2 uses
  %.not6.i = icmp eq ptr %i.e, null
  br i1 %.not6.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = tail call i32 @delwin(ptr noundef nonnull %i.e) #26 ; 0 uses
  store ptr null, ptr @stats_window, align 8, !tbaa !37
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.g = load ptr, ptr @stats_head_window, align 8, !tbaa !37 ; 2 uses
  %.not7.i = icmp eq ptr %i.g, null
  br i1 %.not7.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.h = tail call i32 @delwin(ptr noundef nonnull %i.g) #26 ; 0 uses
  store ptr null, ptr @stats_head_window, align 8, !tbaa !37
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.i = load ptr, ptr @status_bar_window, align 8, !tbaa !37 ; 2 uses
  %.not8.i = icmp eq ptr %i.i, null
  br i1 %.not8.i, label %rm_windows.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.j = tail call i32 @delwin(ptr noundef nonnull %i.i) #26 ; 0 uses
  store ptr null, ptr @status_bar_window, align 8, !tbaa !37
  br label %rm_windows.exit

rm_windows.exit:                                  ; preds = %bb.i, %bb.j
  %i.k = load ptr, ptr @stdscr, align 8, !tbaa !37
  %i.l = load i32, ptr @maxx, align 4, !tbaa !41
  %i.m = tail call ptr @subwin(ptr noundef %i.k, i32 noundef 1, i32 noundef %i.l, i32 noundef 0, i32 noundef 0) #26
  store ptr %i.m, ptr @header_window, align 8, !tbaa !37
  %i.n = load ptr, ptr @stdscr, align 8, !tbaa !37
  %i.o = add nsw i32 %0, 1
  %i.p = load i32, ptr @maxx, align 4, !tbaa !41
  %i.q = tail call ptr @subwin(ptr noundef %i.n, i32 noundef %i.o, i32 noundef %i.p, i32 noundef 1, i32 noundef 0) #26
  store ptr %i.q, ptr @stats_head_window, align 8, !tbaa !37
  %i.r = load i32, ptr @maxy, align 4, !tbaa !41
  %i.s = sub i32 %i.r, %0
  %i.t = add i32 %i.s, -3                         ; 2 uses
  store i32 %i.t, ptr @maxystats, align 4, !tbaa !41
  %i.u = load ptr, ptr @stdscr, align 8, !tbaa !37
  %i.v = load i32, ptr @maxx, align 4, !tbaa !41
  %i.w = add nsw i32 %0, 2
  %i.x = tail call ptr @subwin(ptr noundef %i.u, i32 noundef %i.t, i32 noundef %i.v, i32 noundef %i.w, i32 noundef 0) #26
  store ptr %i.x, ptr @stats_window, align 8, !tbaa !37
  %i.y = load ptr, ptr @stdscr, align 8, !tbaa !37
  %i.z = load i32, ptr @maxx, align 4, !tbaa !41
  %i.aa = load i32, ptr @maxy, align 4, !tbaa !41
  %i.ab = add i32 %i.aa, -1
  %i.ac = tail call ptr @subwin(ptr noundef %i.y, i32 noundef 1, i32 noundef %i.z, i32 noundef %i.ab, i32 noundef 0) #26
  store ptr %i.ac, ptr @status_bar_window, align 8, !tbaa !37
  %i.ad = load ptr, ptr @stats_window, align 8, !tbaa !37
  %i.ae = load i32, ptr @maxx, align 4, !tbaa !41
  %i.af = add i32 %i.ae, -41
  %i.ag = tail call ptr @derwin(ptr noundef %i.ad, i32 noundef 6, i32 noundef 41, i32 noundef 1, i32 noundef %i.af) #26
  store ptr %i.ag, ptr @mem_window, align 8, !tbaa !37
  %i.ah = load ptr, ptr @stdscr, align 8, !tbaa !37 ; 2 uses
  %i.ai = tail call i32 @getmaxy(ptr noundef %i.ah) #26
  %i.aj = tail call i32 @wtouchln(ptr noundef %i.ah, i32 noundef 0, i32 noundef %i.ai, i32 noundef 1) #26 ; 0 uses
  %i.ak = load ptr, ptr @stdscr, align 8, !tbaa !37
  %i.al = tail call i32 @werase(ptr noundef %i.ak) #26 ; 0 uses
  %i.am = load ptr, ptr @stdscr, align 8, !tbaa !37
  %i.an = tail call i32 @wrefresh(ptr noundef %i.am) #26 ; 0 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @status_bar_keys, i64 16), i8 0, i64 64, i1 false)
  store ptr @.str.124, ptr @status_bar_keys, align 16, !tbaa !21
  store ptr @.str.125, ptr getelementptr inbounds nuw (i8, ptr @status_bar_keys, i64 8), align 8, !tbaa !21
  store ptr @.str.126, ptr getelementptr inbounds nuw (i8, ptr @status_bar_keys, i64 16), align 16, !tbaa !21
  %i.ao = icmp sgt i32 %0, 1
  br i1 %i.ao, label %bb.k, label %bb.l

bb.k:                                             ; preds = %rm_windows.exit
  store ptr @.str.127, ptr getelementptr inbounds nuw (i8, ptr @status_bar_keys, i64 24), align 8, !tbaa !21
  store ptr @.str.128, ptr getelementptr inbounds nuw (i8, ptr @status_bar_keys, i64 32), align 16, !tbaa !21
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %rm_windows.exit
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @gettimeofday(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 2) i32 @tasks_compare(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !76 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load double, ptr %i.c, align 8, !tbaa !76 ; 2 uses
  %i.e = fcmp olt double %i.b, %i.d
  %i.f = fcmp ogt double %i.b, %i.d
  %. = sext i1 %i.f to i32
  %.0 = select i1 %i.e, i32 1, i32 %.
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @reconnect(ptr nofree noundef captures(address_is_null) %0) unnamed_addr #8 {
bb.a:
  %i.a = load i32, ptr @tries, align 4, !tbaa !41 ; 2 uses
  %i.b = add nsw i32 %i.a, 1
  store i32 %i.b, ptr @tries, align 4, !tbaa !41
  %i.c = icmp sgt i32 %i.a, 2
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @exit_program(i32 noundef 4, ptr noundef nonnull @__PRETTY_FUNCTION__.reconnect, i32 noundef 853) #30
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = load i32, ptr %0, align 8, !tbaa !53     ; 2 uses
  %.not = icmp eq i32 %i.d, -1
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i32 @close(i32 noundef %i.d) #26 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !56
  %i.h = tail call fastcc i32 @make_connection(ptr noundef %i.g, ptr noundef nonnull %0)
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !56
  %i.k = tail call ptr @__errno_location() #34
  %i.l = load i32, ptr %i.k, align 4, !tbaa !41
  %i.m = tail call ptr @strerror(i32 noundef %i.l) #26
  tail call void (ptr, ptr, ...) @print_con_info(ptr noundef nonnull %0, ptr noundef nonnull @.str.176, ptr noundef %i.j, ptr noundef %i.m)
  tail call fastcc void @exit_program(i32 noundef 4, ptr noundef nonnull @__PRETTY_FUNCTION__.reconnect, i32 noundef 864) #30
  unreachable

bb.g:                                             ; preds = %bb.e
  store i32 0, ptr @tries, align 4, !tbaa !41
  ret void
}

declare i32 @wgetch(ptr noundef) local_unnamed_addr #11

declare i32 @werase(ptr noundef) local_unnamed_addr #11

declare void @delscreen(ptr noundef) local_unnamed_addr #11

declare i32 @close(i32 noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #7

end_hunk_0
begin_hunk_1_@make_connection_real:bb.a
  %i.am = load i32, ptr %i.al, align 8, !tbaa !110
  %i.an = call i32 @connect(i32 noundef %i.ah, ptr %i.ak, i32 noundef %i.am) #26
  %.not84 = icmp eq i32 %i.an, 0
  br i1 %.not84, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @perror(ptr noundef nonnull @.str.56) #29
  %i.ao = call i32 @close(i32 noundef %i.ah) #26  ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.m
  %i.ap = getelementptr inbounds nuw i8, ptr %.067100, i64 40
  %.067 = load ptr, ptr %i.ap, align 8, !tbaa !99 ; 2 uses
  %.not83 = icmp eq ptr %.067, null
  br i1 %.not83, label %.thread95, label %.lr.ph

.loopexit:                                        ; preds = %bb.n, %bb.g
  %.070 = phi ptr [ null, %bb.g ], [ %.012.i, %bb.n ] ; 4 uses
  %.068 = phi ptr [ null, %bb.g ], [ %i.n, %bb.n ] ; 6 uses
  %.2 = phi i32 [ %i.f, %bb.g ], [ %i.ah, %bb.n ]
  store i32 %.2, ptr %1, align 8, !tbaa !53
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ar = call i32 @gettimeofday(ptr noundef nonnull %i.aq, ptr noundef null) #26 ; 0 uses
  store i64 30, ptr %2, align 8, !tbaa !46
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.as, align 8, !tbaa !67
  %i.at = load i32, ptr %1, align 8, !tbaa !53
  %i.au = call i32 @setsockopt(i32 noundef %i.at, i32 noundef 1, i32 noundef 20, ptr noundef nonnull %2, i32 noundef 16) #26 ; 0 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !56 ; 3 uses
  %.not86 = icmp eq ptr %i.aw, %0
  br i1 %.not86, label %.thread95, label %bb.q

bb.q:                                             ; preds = %.loopexit
  %.not87 = icmp eq ptr %i.aw, null
  br i1 %.not87, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @free(ptr noundef nonnull %i.aw) #26
  store ptr null, ptr %i.av, align 8, !tbaa !56
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.not88 = icmp eq ptr %.070, null
  %i.ax = select i1 %.not88, ptr @.str.58, ptr %.070 ; 2 uses
  %.not97 = icmp eq ptr %.068, null
  br i1 %.not97, label %make_ip.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ay = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.068) #27
  %i.az = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ax) #27
  %i.ba = add i64 %i.az, %i.ay
  %i.bb = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.068, i32 noundef 58) #27
  %.not.i92 = icmp eq ptr %i.bb, null             ; 3 uses
  %i.bc = select i1 %.not.i92, i64 3, i64 4
  %i.bd = add i64 %i.ba, %i.bc                    ; 2 uses
  %i.be = call noalias ptr @calloc(i64 noundef 1, i64 noundef %i.bd) #28 ; 3 uses
  %.not20.i = icmp eq ptr %i.be, null
  br i1 %.not20.i, label %make_ip.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bf = select i1 %.not.i92, ptr @.str.2, ptr @.str.1
  %i.bg = select i1 %.not.i92, ptr @.str.2, ptr @.str.3
  %i.bh = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.be, i64 noundef %i.bd, ptr noundef nonnull @.str, ptr noundef nonnull %i.bf, ptr noundef nonnull %.068, ptr noundef nonnull %i.bg, ptr noundef nonnull %i.ax) #26 ; 0 uses
  br label %make_ip.exit

make_ip.exit:                                     ; preds = %bb.s, %bb.t, %bb.u
  %.0.i = phi ptr [ %i.be, %bb.u ], [ null, %bb.s ], [ null, %bb.t ]
  store ptr %.0.i, ptr %i.av, align 8, !tbaa !56
  br label %.thread95

.thread95:                                        ; preds = %bb.p, %.thread, %bb.h, %.loopexit, %make_ip.exit, %bb.l
  %.171.ph = phi ptr [ %.070, %make_ip.exit ], [ null, %bb.h ], [ %.012.i, %bb.l ], [ null, %.thread ], [ %.070, %.loopexit ], [ %.012.i, %bb.p ] ; 2 uses
  %.169.ph = phi ptr [ %.068, %make_ip.exit ], [ null, %bb.h ], [ %i.n, %bb.l ], [ null, %.thread ], [ %.068, %.loopexit ], [ %i.n, %bb.p ] ; 2 uses
  %.266.ph = phi i32 [ 0, %make_ip.exit ], [ -1, %bb.h ], [ -1, %bb.l ], [ -1, %.thread ], [ 0, %.loopexit ], [ -1, %bb.p ] ; 2 uses
  %.pr = load ptr, ptr %i.a, align 8, !tbaa !99   ; 2 uses
  %.not89 = icmp eq ptr %.pr, null
  br i1 %.not89, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.thread95
  call void @freeaddrinfo(ptr noundef nonnull %.pr) #26
  store ptr null, ptr %i.a, align 8, !tbaa !99
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.thread95
  %.not90 = icmp eq ptr %.169.ph, null
  br i1 %.not90, label %bb.x, label %.thread116

.thread116:                                       ; preds = %.preheader, %bb.w
  %.171113124 = phi ptr [ %.171.ph, %bb.w ], [ %.012.i, %.preheader ]
  %.169114123 = phi ptr [ %.169.ph, %bb.w ], [ %i.n, %.preheader ]
  %.266115121 = phi i32 [ %.266.ph, %bb.w ], [ -1, %.preheader ]
  call void @free(ptr noundef nonnull %.169114123) #26
  br label %bb.x

bb.x:                                             ; preds = %.thread116, %bb.w
  %.171113125 = phi ptr [ %.171113124, %.thread116 ], [ %.171.ph, %bb.w ] ; 2 uses
  %.266115122 = phi i32 [ %.266115121, %.thread116 ], [ %.266.ph, %bb.w ]
  %.not91 = icmp eq ptr %.171113125, null
  br i1 %.not91, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @free(ptr noundef nonnull %.171113125) #26
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret i32 %.266115122
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -3, 1) i32 @read_version(ptr nofree noundef captures(address_is_null) %0) unnamed_addr #8 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.b = call fastcc i32 @recv_line(ptr noundef %0, ptr noundef %i.a)
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i128, ptr %i.a, align 16
  %i.d = xor i128 %i.c, 13646943345932982614818946253444566613
  %i.e = getelementptr i8, ptr %i.a, i64 16
  %i.f = load i8, ptr %i.e, align 16
  %i.g = zext i8 %i.f to i128
  %i.h = or i128 %i.d, %i.g
  %i.i = icmp ne i128 %i.h, 0
  %i.j = zext i1 %i.i to i32
  %.not15 = icmp eq i32 %i.j, 0
  br i1 %.not15, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.a, i32 noundef 58) #27 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.k, ptr noundef nonnull dereferenceable(23) @.str.61) #27
  %.not16 = icmp eq i32 %i.m, 0
  br i1 %.not16, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = call noalias ptr @strdup(ptr noundef nonnull %i.a) #26 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !59
  %.not17 = icmp eq ptr %i.n, null
  br i1 %.not17, label %bb.f, label %.preheader

.preheader:                                       ; preds = %bb.e
  %char0 = load i8, ptr %i.n, align 1
  %.not19 = icmp eq i8 %char0, 0
  br i1 %.not19, label %.loopexit, label %.lr.ph

bb.f:                                             ; preds = %bb.e
  call fastcc void @exit_program(i32 noundef 3, ptr noundef nonnull @__PRETTY_FUNCTION__.read_version, i32 noundef 1357) #30
  unreachable

.lr.ph:                                           ; preds = %.preheader, %bb.h
  %i.p = phi ptr [ %i.u, %bb.h ], [ %i.n, %.preheader ] ; 2 uses
  %i.q = phi i64 [ %i.w, %bb.h ], [ 0, %.preheader ]
  %.018 = phi i32 [ %i.v, %bb.h ], [ 0, %.preheader ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.q ; 2 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !9
  %i.t = icmp eq i8 %i.s, 10
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph
  store i8 32, ptr %i.r, align 1, !tbaa !9
  %.pre = load ptr, ptr %i.o, align 8, !tbaa !59
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.g
  %i.u = phi ptr [ %i.p, %.lr.ph ], [ %.pre, %bb.g ] ; 2 uses
  %i.v = add i32 %.018, 1                         ; 2 uses
  %i.w = zext i32 %i.v to i64                     ; 2 uses
  %i.x = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.u) #27
  %i.y = icmp ugt i64 %i.x, %i.w
  br i1 %i.y, label %.lr.ph, label %.loopexit

.loopexit:                                        ; preds = %bb.h, %.preheader, %bb.c, %bb.d, %bb.b, %bb.a
  %.1 = phi i32 [ -2, %bb.b ], [ -1, %bb.a ], [ -1, %bb.c ], [ -3, %bb.d ], [ 0, %.preheader ], [ 0, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal void @print_con_info(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ...) unnamed_addr #8 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.a = load ptr, ptr @stats_head_window, align 8, !tbaa !37
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr @maxx, align 4, !tbaa !41
  %i.c = add nuw i32 %i.b, 1
  %i.d = zext i32 %i.c to i64                     ; 3 uses
  %i.e = call noalias ptr @malloc(i64 noundef %i.d) #36 ; 9 uses
  %.not14 = icmp eq ptr %i.e, null
  br i1 %.not14, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call fastcc void @exit_program(i32 noundef 3, ptr noundef nonnull @__PRETTY_FUNCTION__.print_con_info, i32 noundef 543) #30
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.e, i8 32, i64 %i.d, i1 false)
  %i.f = call i32 @vsnprintf(ptr noundef nonnull %i.e, i64 noundef %i.d, ptr noundef %1, ptr noundef nonnull %2) #26 ; 0 uses
  %i.g = call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %i.e, i32 noundef 10) #27 ; 2 uses
  %.not15 = icmp eq ptr %i.g, null
  br i1 %.not15, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 32, ptr %i.g, align 1, !tbaa !9
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.h = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #27
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.h
  store i8 32, ptr %i.i, align 1, !tbaa !9
  %i.j = load i32, ptr @maxx, align 4, !tbaa !41
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.k
  store i8 0, ptr %i.l, align 1, !tbaa !9
  %i.m = load ptr, ptr @stats_head_window, align 8, !tbaa !37
  %i.n = call i32 @wattr_on(ptr noundef %i.m, i32 noundef 2097920, ptr noundef null) #26 ; 0 uses
  %i.o = load ptr, ptr @stats_head_window, align 8, !tbaa !37
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = load i32, ptr %i.p, align 8, !tbaa !32
  %i.r = call i32 (ptr, i32, i32, ptr, ...) @mvwprintw(ptr noundef %i.o, i32 noundef %i.q, i32 noundef 0, ptr noundef nonnull @.str.69, ptr noundef nonnull %i.e) #26 ; 0 uses
  %i.s = load ptr, ptr @stats_head_window, align 8, !tbaa !37
  %i.t = call i32 @wattr_off(ptr noundef %i.s, i32 noundef 2097920, ptr noundef null) #26 ; 0 uses
  %i.u = load ptr, ptr @stats_head_window, align 8, !tbaa !37
  %i.v = call i32 @wrefresh(ptr noundef %i.u) #26 ; 0 uses
  call void @free(ptr noundef nonnull %i.e) #26
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.w = load ptr, ptr @stdout, align 8, !tbaa !10
  %i.x = call i32 @vfprintf(ptr noundef %i.w, ptr noundef %1, ptr noundef nonnull %2) #26 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void
}

declare i32 @cli_is_abspath(ptr noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @access(ptr noundef readonly captures(none), i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @socket(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #17

; Function Attrs: cold nofree nounwind
declare void @perror(ptr noundef readonly captures(none)) local_unnamed_addr #18

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #19

declare i32 @connect(i32 noundef, ptr, i32 noundef) local_unnamed_addr #11

declare i32 @getaddrinfo(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: nounwind
declare ptr @gai_strerror(i32 noundef) local_unnamed_addr #17

; Function Attrs: nounwind
declare i32 @setsockopt(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #17

; Function Attrs: nounwind
declare void @freeaddrinfo(ptr noundef) local_unnamed_addr #17

; Function Attrs: nounwind uwtable
define internal fastcc noundef range(i32 0, 2) i32 @recv_line(ptr nofree noundef captures(address_is_null) %0, ptr noundef nonnull %1) unnamed_addr #8 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.11, i32 noundef 872, ptr noundef nonnull @__PRETTY_FUNCTION__.recv_line) #31
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = load i32, ptr %0, align 8, !tbaa !53     ; 2 uses
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %bb.s, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = icmp sgt i32 %i.a, 0
  br i1 %i.c, label %.preheader, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @__assert_fail(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.11, i32 noundef 878, ptr noundef nonnull @__PRETTY_FUNCTION__.recv_line) #31
  unreachable

.preheader:                                       ; preds = %bb.d, %bb.q
  %.042 = phi ptr [ %.143, %bb.q ], [ %1, %bb.d ] ; 6 uses
  %.040 = phi i64 [ %i.e, %bb.q ], [ 1023, %bb.d ]
  %i.d = load i32, ptr %0, align 8, !tbaa !53
  %i.e = tail call i64 @recv(i32 noundef %i.d, ptr noundef %.042, i64 noundef %.040, i32 noundef 2) #26 ; 5 uses
  %i.f = icmp slt i64 %i.e, 1
  br i1 %i.f, label %bb.f, label %bb.h

bb.f:                                             ; preds = %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !56
  %i.i = tail call ptr @__errno_location() #34
  %i.j = load i32, ptr %i.i, align 4, !tbaa !41
  %i.k = tail call ptr @strerror(i32 noundef %i.j) #26
  tail call void (ptr, ptr, ...) @print_con_info(ptr noundef nonnull %0, ptr noundef nonnull @.str.66, ptr noundef %i.h, ptr noundef %i.k)
  %i.l = load i32, ptr %0, align 8, !tbaa !53     ; 2 uses
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @__assert_fail(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.11, i32 noundef 838, ptr noundef nonnull @__PRETTY_FUNCTION__.send_string_noreconn) #31
  unreachable

.thread:                                          ; preds = %bb.f
  %i.n = tail call i64 @send(i32 noundef %i.l, ptr noundef nonnull @.str.5, i64 noundef 5, i32 noundef 0) #26 ; 0 uses
  %i.o = load i32, ptr %0, align 8, !tbaa !53
  %i.p = tail call i32 @close(i32 noundef %i.o) #26 ; 0 uses
  store i32 -1, ptr %0, align 8, !tbaa !53
  br label %bb.s

bb.h:                                             ; preds = %.preheader
  %i.q = tail call ptr @memchr(ptr noundef %.042, i32 noundef 10, i64 noundef %i.e) #27 ; 2 uses
  %.not56 = icmp eq ptr %i.q, null                ; 2 uses
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %.042 to i64
  %reass.sub = sub i64 %i.r, %i.s
  %i.t = add i64 %reass.sub, 1
  %.141 = select i1 %.not56, i64 %i.e, i64 %i.t   ; 5 uses
  %.not57 = icmp eq i64 %.141, 0
  br i1 %.not57, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @__assert_fail(ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.11, i32 noundef 898, ptr noundef nonnull @__PRETTY_FUNCTION__.recv_line) #31
  unreachable

bb.j:                                             ; preds = %bb.h
  %.not58 = icmp ugt i64 %.141, %i.e
  br i1 %.not58, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @__assert_fail(ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.11, i32 noundef 899, ptr noundef nonnull @__PRETTY_FUNCTION__.recv_line) #31
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.u = load i32, ptr %0, align 8, !tbaa !53
  %i.v = tail call i64 @recv(i32 noundef %i.u, ptr noundef %.042, i64 noundef %.141, i32 noundef 0) #26 ; 3 uses
  %i.w = icmp eq i64 %i.v, -1
  br i1 %i.w, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call fastcc void @reconnect(ptr noundef nonnull %0)
  br label %bb.q

bb.n:                                             ; preds = %bb.l
  %i.x = icmp sgt i64 %i.v, 0
  %i.y = icmp eq i64 %i.v, %.141
  %or.cond = and i1 %i.x, %i.y
  br i1 %or.cond, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @__assert_fail(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.11, i32 noundef 904, ptr noundef nonnull @__PRETTY_FUNCTION__.recv_line) #31
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.z = getelementptr inbounds nuw i8, ptr %.042, i64 %.141
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.m
  %.143 = phi ptr [ %.042, %bb.m ], [ %i.z, %bb.p ] ; 2 uses
  br i1 %.not56, label %.preheader, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i8 0, ptr %.143, align 1, !tbaa !9
  br label %bb.s

bb.s:                                             ; preds = %.thread, %bb.c, %bb.r
  %.247 = phi i32 [ 1, %bb.r ], [ 0, %.thread ], [ 0, %bb.c ]
  ret i32 %.247
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #3

declare i64 @recv(i32 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #20

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #21

end_hunk_1
