inline.NumInlined: 27
inline.NumDeleted: 14
begin_hunk_0_@git_terminal_prompt:bb.a
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @git_fopen(ptr noundef nonnull @.str, ptr noundef nonnull @.str.4) #14 ; 7 uses
  %.not18 = icmp eq ptr %i.b, null
  br i1 %.not18, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  %.not19 = icmp eq i32 %1, 0                     ; 2 uses
  br i1 %.not19, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.d = tail call fastcc range(i32 -1, 1) i32 @disable_bits(i32 noundef 0, i32 noundef 8)
  %.not20 = icmp eq i32 %i.d, 0
  br i1 %.not20, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.e = tail call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
  %i.f = tail call i32 @fclose(ptr noundef nonnull %i.b) ; 0 uses
  br label %bb.j

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.g = tail call i32 @fputs(ptr noundef %0, ptr noundef nonnull %i.b) ; 0 uses
  %i.h = tail call i32 @fflush(ptr noundef nonnull %i.b) ; 0 uses
  %i.i = tail call i32 @strbuf_getline_lf(ptr noundef nonnull @git_terminal_prompt.buf, ptr noundef nonnull %i.a) #14
  br i1 %.not19, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.j = tail call i32 @putc(i32 noundef 10, ptr noundef nonnull %i.b) ; 0 uses
  %i.k = tail call i32 @fflush(ptr noundef nonnull %i.b) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void @restore_term()
  %i.l = tail call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
  %i.m = tail call i32 @fclose(ptr noundef nonnull %i.b) ; 0 uses
  %i.n = icmp eq i32 %i.i, -1
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @git_terminal_prompt.buf, i64 16), align 8
  %spec.select = select i1 %i.n, ptr null, ptr %i.o
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.a, %bb.f, %bb.c
  %.0 = phi ptr [ null, %bb.a ], [ %spec.select, %bb.i ], [ null, %bb.f ], [ null, %bb.c ]
  ret ptr %.0
}

declare ptr @git_fopen(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #5

declare i32 @strbuf_getline_lf(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i32 @read_key_without_echo(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.timeval, align 8            ; 6 uses
  %2 = alloca %struct.fd_set, align 8             ; 6 uses
  %3 = alloca %struct.hashmap_entry, align 8      ; 5 uses
  %4 = alloca %struct.child_process, align 8      ; 5 uses
  %5 = alloca %struct.strbuf, align 8             ; 6 uses
  %.b14 = load i1, ptr @read_key_without_echo.warning_displayed, align 4
  br i1 %.b14, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call fastcc range(i32 -1, 1) i32 @disable_bits(i32 noundef 2, i32 noundef 10)
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %.b.pr = load i1, ptr @read_key_without_echo.warning_displayed, align 4
  br i1 %.b.pr, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @warning(ptr noundef nonnull @.str.5) #14
  store i1 true, ptr @read_key_without_echo.warning_displayed, align 4
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.d, %bb.c
  %i.c = load ptr, ptr @stdin, align 8, !tbaa !21
  %i.d = tail call i32 @strbuf_getline(ptr noundef %0, ptr noundef %i.c) #14
  br label %bb.ac

bb.e:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 10 uses
  store i64 0, ptr %i.e, align 8, !tbaa !23
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !26   ; 2 uses
  %.not9.i = icmp eq ptr %i.g, @strbuf_slopbuf
  br i1 %.not9.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i8 0, ptr %i.g, align 1, !tbaa !16
  br label %strbuf_setlen.exit

bb.g:                                             ; preds = %bb.e
  %i.h = load i8, ptr @strbuf_slopbuf, align 1, !tbaa !16
  %.not10.i = icmp eq i8 %i.h, 0
  br i1 %.not10.i, label %strbuf_setlen.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @__assert_fail(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.10, i32 noundef 172, ptr noundef nonnull @__PRETTY_FUNCTION__.strbuf_setlen) #17
  unreachable

strbuf_setlen.exit:                               ; preds = %bb.f, %bb.g
  %i.i = load ptr, ptr @stdin, align 8, !tbaa !21
  %i.j = tail call i32 @getc(ptr noundef %i.i), !inline_history !27 ; 3 uses
  %i.k = icmp eq i32 %i.j, -1
  br i1 %i.k, label %bb.i, label %bb.j

bb.i:                                             ; preds = %strbuf_setlen.exit
  tail call void @restore_term()
  br label %bb.ac

bb.j:                                             ; preds = %strbuf_setlen.exit
  %i.l = load i64, ptr %0, align 8, !tbaa !28     ; 2 uses
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %strbuf_avail.exit.thread.i, label %strbuf_avail.exit.i

strbuf_avail.exit.i:                              ; preds = %bb.j
  %i.m = load i64, ptr %i.e, align 8, !tbaa !23   ; 2 uses
  %.neg.i = add i64 %i.m, 1                       ; 2 uses
  %.not.i = icmp eq i64 %i.l, %.neg.i
  br i1 %.not.i, label %strbuf_avail.exit.thread.i, label %strbuf_addch.exit

strbuf_avail.exit.thread.i:                       ; preds = %strbuf_avail.exit.i, %bb.j
  tail call void @strbuf_grow(ptr noundef nonnull %0, i64 noundef 1) #14
  %.pre.i = load i64, ptr %i.e, align 8, !tbaa !23 ; 2 uses
  %.pre7.i = add i64 %.pre.i, 1
  br label %strbuf_addch.exit

strbuf_addch.exit:                                ; preds = %strbuf_avail.exit.i, %strbuf_avail.exit.thread.i
  %.pre-phi.i = phi i64 [ %.pre7.i, %strbuf_avail.exit.thread.i ], [ %.neg.i, %strbuf_avail.exit.i ]
  %i.n = phi i64 [ %.pre.i, %strbuf_avail.exit.thread.i ], [ %i.m, %strbuf_avail.exit.i ]
  %i.o = trunc i32 %i.j to i8
  %i.p = load ptr, ptr %i.f, align 8, !tbaa !26
  store i64 %.pre-phi.i, ptr %i.e, align 8, !tbaa !23
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 %i.o, ptr %i.q, align 1, !tbaa !16
  %i.r = load ptr, ptr %i.f, align 8, !tbaa !26
  %i.s = load i64, ptr %i.e, align 8, !tbaa !23
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.s
  store i8 0, ptr %i.t, align 1, !tbaa !16
  %i.u = icmp eq i32 %i.j, 27
  br i1 %i.u, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %strbuf_addch.exit
  %i.v = load i64, ptr %i.e, align 8, !tbaa !23
  %i.w = add i64 %i.v, -1
  tail call void @strbuf_splice(ptr noundef nonnull %0, i64 noundef %i.w, i64 noundef 1, ptr noundef nonnull @.str.6, i64 noundef 2) #14
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.l

bb.l:                                             ; preds = %strbuf_addch.exit26, %bb.k
  %i.ac = load ptr, ptr %i.f, align 8, !tbaa !26  ; 2 uses
  %.b.i = load i1, ptr @is_known_escape_sequence.initialized, align 4
  br i1 %.b.i, label %is_known_escape_sequence.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %4, ptr noundef nonnull align 8 dereferenceable(136) @__const.is_known_escape_sequence.cp, i64 136, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) @__const.is_known_escape_sequence.buf, i64 24, i1 false)
  call void @hashmap_init(ptr noundef nonnull @is_known_escape_sequence.sequences, ptr noundef nonnull @sequence_entry_cmp, ptr noundef null, i64 noundef 0) #14
  call void (ptr, ...) @strvec_pushl(ptr noundef nonnull %4, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, ptr noundef null) #14
  %i.ad = call i32 @pipe_command(ptr noundef nonnull %4, ptr noundef null, i64 noundef 0, ptr noundef nonnull %5, i64 noundef 0, ptr noundef null, i64 noundef 0) #14
  %.not.i15 = icmp eq i32 %i.ad, 0
  %.pre34 = load ptr, ptr %i.y, align 8, !tbaa !26 ; 3 uses
  br i1 %.not.i15, label %strbuf_setlen.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i64 0, ptr %i.x, align 8, !tbaa !23
  %.not9.i.i = icmp eq ptr %.pre34, @strbuf_slopbuf
  br i1 %.not9.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i8 0, ptr %.pre34, align 1, !tbaa !16
  %.pre = load ptr, ptr %i.y, align 8, !tbaa !26
  br label %strbuf_setlen.exit.i

bb.p:                                             ; preds = %bb.n
  %i.ae = load i8, ptr @strbuf_slopbuf, align 1, !tbaa !16
  %.not10.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not10.i.i, label %._crit_edge.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @__assert_fail(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.10, i32 noundef 172, ptr noundef nonnull @__PRETTY_FUNCTION__.strbuf_setlen) #17
  unreachable

strbuf_setlen.exit.i:                             ; preds = %bb.o, %bb.m
  %.ph = phi ptr [ %.pre34, %bb.m ], [ %.pre, %bb.o ] ; 2 uses
  %.pr = load i8, ptr %.ph, align 1, !tbaa !16
  %.not2430.i = icmp eq i8 %.pr, 0
  br i1 %.not2430.i, label %._crit_edge.i, label %.lr.ph.i

bb.r:                                             ; preds = %bb.w
  %i.af = getelementptr inbounds nuw i8, ptr %i.aj, i64 1 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !16
  %.not24.i = icmp eq i8 %i.ag, 0
  br i1 %.not24.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !29

.lr.ph.i:                                         ; preds = %strbuf_setlen.exit.i, %bb.r
  %.031.i = phi ptr [ %i.af, %bb.r ], [ %.ph, %strbuf_setlen.exit.i ]
  %i.ah = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.031.i, i32 noundef 61) #16 ; 3 uses
  %.not25.i = icmp eq ptr %i.ah, null
  br i1 %.not25.i, label %._crit_edge.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 1 ; 6 uses
  %i.aj = call ptr @strchrnul(ptr noundef nonnull %i.ai, i32 noundef 10) #16 ; 3 uses
  %i.ak = call zeroext i1 @starts_with(ptr noundef nonnull %i.ai, ptr noundef nonnull @.str.16) #14
  br i1 %i.ak, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = ptrtoint ptr %i.ai to i64               ; 2 uses
  %i.an = sub i64 %i.al, %i.am
  %i.ao = call ptr @memchr(ptr noundef nonnull %i.ai, i32 noundef 44, i64 noundef %i.an) #16
  store i8 94, ptr %i.ai, align 1, !tbaa !16
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 2
  store i8 91, ptr %i.ap, align 1, !tbaa !16
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.aq, %i.am                    ; 3 uses
  %i.as = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ar, i64 16) ; 2 uses
  %i.at = extractvalue { i64, i1 } %i.as, 1
  br i1 %i.at, label %bb.u, label %st_add.exit.i

bb.u:                                             ; preds = %bb.t
  call void (ptr, ...) @die(ptr noundef nonnull @.str.17, i64 noundef 16, i64 noundef %i.ar) #17
  unreachable

st_add.exit.i:                                    ; preds = %bb.t
  %i.au = extractvalue { i64, i1 } %i.as, 0       ; 2 uses
  %i.av = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.au, i64 1) ; 2 uses
  %i.aw = extractvalue { i64, i1 } %i.av, 1
  br i1 %i.aw, label %bb.v, label %st_add.exit27.i

bb.v:                                             ; preds = %st_add.exit.i
  call void (ptr, ...) @die(ptr noundef nonnull @.str.17, i64 noundef %i.au, i64 noundef 1) #17
  unreachable

st_add.exit27.i:                                  ; preds = %st_add.exit.i
  %i.ax = extractvalue { i64, i1 } %i.av, 0
  %i.ay = call ptr @xcalloc(i64 noundef 1, i64 noundef %i.ax) #14 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.az, ptr nonnull align 1 %i.ai, i64 %i.ar, i1 false)
  %i.ba = call i32 @strhash(ptr noundef nonnull %i.az) #14
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !31
  store ptr null, ptr %i.ay, align 8, !tbaa !34
  call void @hashmap_add(ptr noundef nonnull @is_known_escape_sequence.sequences, ptr noundef nonnull %i.ay) #14
  br label %bb.w

bb.w:                                             ; preds = %st_add.exit27.i, %bb.s
  %i.bc = load i8, ptr %i.aj, align 1, !tbaa !16
  %.not26.i = icmp eq i8 %i.bc, 0
  br i1 %.not26.i, label %._crit_edge.i, label %bb.r

._crit_edge.i:                                    ; preds = %bb.w, %.lr.ph.i, %bb.r, %bb.p, %strbuf_setlen.exit.i
  store i1 true, ptr @is_known_escape_sequence.initialized, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br label %is_known_escape_sequence.exit

is_known_escape_sequence.exit:                    ; preds = %bb.l, %._crit_edge.i
  %i.bd = call i32 @strhash(ptr noundef %i.ac) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  store i32 %i.bd, ptr %i.z, align 8, !tbaa !31
  store ptr null, ptr %3, align 8, !tbaa !34
  %i.be = call ptr @hashmap_get(ptr noundef nonnull @is_known_escape_sequence.sequences, ptr noundef nonnull %3, ptr noundef %i.ac) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  %.not29 = icmp eq ptr %i.be, null
  br i1 %.not29, label %bb.x, label %.loopexit

bb.x:                                             ; preds = %is_known_escape_sequence.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  br label %bb.y

bb.y:                                             ; preds = %bb.aa, %bb.x
  store i64 0, ptr %1, align 8, !tbaa !35
  store i64 500000, ptr %i.aa, align 8, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.ab, i8 0, i64 120, i1 false), !tbaa !38
  store i64 1, ptr %2, align 8, !tbaa !38
  %i.bf = call i32 @select(i32 noundef 1, ptr noundef nonnull %2, ptr noundef null, ptr noundef null, ptr noundef nonnull %1) #14 ; 2 uses
  %.not.i16 = icmp eq i32 %i.bf, 0
  br i1 %.not.i16, label %getchar_with_timeout.exit.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bg = icmp slt i32 %i.bf, 0
  br i1 %i.bg, label %bb.aa, label %getchar_with_timeout.exit

bb.aa:                                            ; preds = %bb.z
  %i.bh = tail call ptr @__errno_location() #15
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !12
  %i.bj = icmp eq i32 %i.bi, 4
  br i1 %i.bj, label %bb.y, label %getchar_with_timeout.exit.thread

getchar_with_timeout.exit.thread:                 ; preds = %bb.y, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  br label %.loopexit

getchar_with_timeout.exit:                        ; preds = %bb.z
  %i.bk = load ptr, ptr @stdin, align 8, !tbaa !21
  %i.bl = call i32 @getc(ptr noundef %i.bk), !inline_history !27 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  %i.bm = icmp eq i32 %i.bl, -1
  br i1 %i.bm, label %.loopexit, label %bb.ab

bb.ab:                                            ; preds = %getchar_with_timeout.exit
  %i.bn = load i64, ptr %0, align 8, !tbaa !28    ; 2 uses
  %.not.i.i17 = icmp eq i64 %i.bn, 0
  br i1 %.not.i.i17, label %strbuf_avail.exit.thread.i22, label %strbuf_avail.exit.i18

strbuf_avail.exit.i18:                            ; preds = %bb.ab
  %i.bo = load i64, ptr %i.e, align 8, !tbaa !23  ; 2 uses
  %.neg.i19 = add i64 %i.bo, 1                    ; 2 uses
  %.not.i20 = icmp eq i64 %i.bn, %.neg.i19
  br i1 %.not.i20, label %strbuf_avail.exit.thread.i22, label %strbuf_addch.exit26

strbuf_avail.exit.thread.i22:                     ; preds = %strbuf_avail.exit.i18, %bb.ab
  call void @strbuf_grow(ptr noundef nonnull %0, i64 noundef 1) #14
  %.pre.i24 = load i64, ptr %i.e, align 8, !tbaa !23 ; 2 uses
  %.pre7.i25 = add i64 %.pre.i24, 1
  br label %strbuf_addch.exit26

strbuf_addch.exit26:                              ; preds = %strbuf_avail.exit.i18, %strbuf_avail.exit.thread.i22
  %.pre-phi.i21 = phi i64 [ %.pre7.i25, %strbuf_avail.exit.thread.i22 ], [ %.neg.i19, %strbuf_avail.exit.i18 ]
  %i.bp = phi i64 [ %.pre.i24, %strbuf_avail.exit.thread.i22 ], [ %i.bo, %strbuf_avail.exit.i18 ]
  %i.bq = trunc i32 %i.bl to i8
  %i.br = load ptr, ptr %i.f, align 8, !tbaa !26
  store i64 %.pre-phi.i21, ptr %i.e, align 8, !tbaa !23
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bp
  store i8 %i.bq, ptr %i.bs, align 1, !tbaa !16
  %i.bt = load ptr, ptr %i.f, align 8, !tbaa !26
  %i.bu = load i64, ptr %i.e, align 8, !tbaa !23
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bu
  store i8 0, ptr %i.bv, align 1, !tbaa !16
  br label %bb.l, !llvm.loop !39

.loopexit:                                        ; preds = %is_known_escape_sequence.exit, %getchar_with_timeout.exit, %getchar_with_timeout.exit.thread, %strbuf_addch.exit
  call void @restore_term()
  br label %bb.ac

bb.ac:                                            ; preds = %.loopexit, %bb.i, %.thread
  %.0 = phi i32 [ %i.d, %.thread ], [ -1, %bb.i ], [ 0, %.loopexit ]
  ret i32 %.0
}

declare void @warning(ptr noundef, ...) local_unnamed_addr #2

declare i32 @strbuf_getline(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @strbuf_splice(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @close(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare ptr @signal(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @raise(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nounwind
declare i32 @sigprocmask(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define internal void @print_background_resume_msg(i32 noundef %0) #0 {
bb.a:
  %1 = alloca %struct.__sigset_t, align 8         ; 6 uses
  %2 = alloca %struct.sigaction, align 8          ; 4 uses
  %3 = alloca %struct.sigaction, align 8          ; 4 uses
  %i.a = tail call ptr @__errno_location() #15    ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %3, i8 0, i64 152, i1 false)
  store volatile i32 1, ptr @ttou_received, align 4, !tbaa !12
  %i.c = load ptr, ptr @background_resume_msg, align 8, !tbaa !13 ; 2 uses
  %i.d = tail call i64 @write_in_full(i32 noundef 2, ptr noundef nonnull @.str.8, i64 noundef 7) #14 ; 0 uses
  %i.e = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #16
  %i.f = tail call i64 @write_in_full(i32 noundef 2, ptr noundef nonnull %i.c, i64 noundef %i.e) #14 ; 0 uses
  %i.g = tail call i64 @write_in_full(i32 noundef 2, ptr noundef nonnull @.str.9, i64 noundef 1) #14 ; 0 uses
  %i.h = call i32 @sigaction(i32 noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %2) #14 ; 0 uses
  %i.i = call i32 @raise(i32 noundef %0) #14      ; 0 uses
  %i.j = call i32 @sigemptyset(ptr noundef nonnull %1) #14 ; 0 uses
  %i.k = call i32 @sigaddset(ptr noundef nonnull %1, i32 noundef %0) #14 ; 0 uses
  %i.l = call i32 @sigprocmask(i32 noundef 1, ptr noundef nonnull %1, ptr noundef null) #14 ; 0 uses
  %i.m = call i32 @sigprocmask(i32 noundef 0, ptr noundef nonnull %1, ptr noundef null) #14 ; 0 uses
  %i.n = call i32 @sigaction(i32 noundef %0, ptr noundef nonnull %2, ptr noundef null) #14 ; 0 uses
  store i32 %i.b, ptr %i.a, align 4, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  ret void
}

declare i64 @write_in_full(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @disable_bits(i32 noundef range(i32 0, 3) %0, i32 noundef range(i32 8, 11) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.termios, align 4            ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.a = tail call i32 @save_term(i32 noundef %0)
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %2, ptr noundef nonnull align 4 dereferenceable(60) @old_term, i64 60, i1 false), !tbaa.struct !40
  %i.c = xor i32 %1, -1
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !41
  %i.f = and i32 %i.e, %i.c
  store i32 %i.f, ptr %i.d, align 4, !tbaa !41
  %i.g = and i32 %1, 2
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 23
  store i8 1, ptr %i.h, align 1, !tbaa !16
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 22
  store i8 0, ptr %i.i, align 2, !tbaa !16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = load i32, ptr @term_fd, align 4, !tbaa !12
  %i.k = call i32 @tcsetattr(i32 noundef %i.j, i32 noundef 2, ptr noundef nonnull %2) #14
  %.not4 = icmp eq i32 %i.k, 0
  br i1 %.not4, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @sigchain_pop_common() #14
  %i.l = load ptr, ptr @restore_error_msg, align 8, !tbaa !13
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %reset_job_signals.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = call ptr @signal(i32 noundef 21, ptr noundef null) #14 ; 0 uses
  %i.n = call ptr @signal(i32 noundef 22, ptr noundef null) #14 ; 0 uses
end_hunk_0
