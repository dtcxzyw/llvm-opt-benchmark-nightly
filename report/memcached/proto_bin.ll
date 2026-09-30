Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/memcached/original/proto_bin?download=true
inline.NumInlined: 55
inline.NumDeleted: 7
begin_hunk_0_@process_bin_append_prepend:bb.a
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  tail call fastcc void @add_bin_header(ptr noundef nonnull %0, i16 noundef zeroext 3, i8 noundef zeroext 0, i16 noundef zeroext 0, i32 noundef 10)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !59
  tail call void @resp_add_iov(ptr noundef %i.z, ptr noundef nonnull @.str.15, i32 noundef 10) #11
  %i.aa = icmp sgt i32 %i.i, 0
  br i1 %i.aa, label %bb.l, label %write_bin_error.exit

bb.l:                                             ; preds = %bb.k
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i32 %i.i, ptr %i.ab, align 8, !tbaa !69
  br label %write_bin_error.exit

write_bin_error.exit:                             ; preds = %bb.k, %bb.l
  %.sink.i = phi i32 [ 7, %bb.l ], [ 9, %bb.k ]
  tail call void @conn_set_state(ptr noundef nonnull %0, i32 noundef %.sink.i) #11
  br label %bb.n

bb.m:                                             ; preds = %bb.h
  tail call void @out_of_memory(ptr noundef nonnull %0, ptr noundef nonnull @.str.43) #11
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i32 %i.i, ptr %i.ac, align 8, !tbaa !69
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %write_bin_error.exit
  tail call void @conn_set_state(ptr noundef nonnull %0, i32 noundef 7) #11
  br label %bb.u

bb.o:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 38 ; 2 uses
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !37
  %i.af = and i16 %i.ae, 2
  %.not38 = icmp eq i16 %i.af, 0
  br i1 %.not38, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !35
  %i.ai = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !35
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %i.ak = load i16, ptr %i.aj, align 8, !tbaa !31
  switch i16 %i.ak, label %bb.s [
    i16 14, label %bb.t
    i16 15, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 1253, ptr noundef nonnull @__PRETTY_FUNCTION__.process_bin_append_prepend) #10
  unreachable

bb.t:                                             ; preds = %bb.q, %bb.r
  %storemerge = phi i16 [ 5, %bb.r ], [ 4, %bb.q ]
  store i16 %storemerge, ptr %i.aj, align 8, !tbaa !31
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 240
  store ptr %i.p, ptr %i.al, align 8, !tbaa !33
  %i.am = getelementptr inbounds nuw i8, ptr %i.p, i64 41
  %i.an = load i8, ptr %i.am, align 1, !tbaa !35
  %i.ao = zext i8 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 49
  %i.ar = load i16, ptr %i.ad, align 2, !tbaa !37
  %i.as = zext i16 %i.ar to i32                   ; 2 uses
  %i.at = lshr i32 %i.as, 6
  %i.au = and i32 %i.at, 4
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.av
  %i.ax = shl nuw nsw i32 %i.as, 2
  %i.ay = and i32 %i.ax, 8
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !39
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i32 %i.i, ptr %i.bc, align 8, !tbaa !76
  tail call void @conn_set_state(ptr noundef nonnull %0, i32 noundef 6) #11
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 3, ptr %i.bd, align 4, !tbaa !32
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.n
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @process_bin_stat(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = getelementptr i8, ptr %0, i64 192
  %.val = load ptr, ptr %i.b, align 8, !tbaa !70
  %i.c = getelementptr i8, ptr %0, i64 338
  %.val59 = load i16, ptr %i.c, align 2, !tbaa !35 ; 5 uses
  %i.d = zext i16 %.val59 to i64
  %i.e = sub nsw i64 0, %i.d
  %i.f = getelementptr inbounds i8, ptr %.val, i64 %i.e ; 8 uses
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 32), align 8, !tbaa !63
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr @stderr, align 8, !tbaa !65
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !41
  %i.l = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.i, ptr noundef nonnull @.str.56, i32 noundef %i.k) #12 ; 0 uses
  %.not63 = icmp eq i16 %.val59, 0
  br i1 %.not63, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %wide.trip.count = zext i16 %.val59 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.m = load ptr, ptr @stderr, align 8, !tbaa !65
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 %indvars.iv
  %i.o = load i8, ptr %i.n, align 1, !tbaa !35
  %i.p = sext i8 %i.o to i32
  %fputc58 = tail call i32 @fputc(i32 %i.p, ptr %i.m) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !113

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %i.q = load ptr, ptr @stderr, align 8, !tbaa !65
  %fputc = tail call i32 @fputc(i32 10, ptr %i.q) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  %i.r = icmp eq i16 %.val59, 0
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @server_stats(ptr noundef nonnull @append_stats, ptr noundef nonnull %0) #11
  %i.s = tail call zeroext i1 @get_stats(ptr noundef null, i32 noundef 0, ptr noundef nonnull @append_stats, ptr noundef nonnull %0) #11 ; 0 uses
  br label %.critedge

bb.e:                                             ; preds = %bb.c
  %i.t = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.f, ptr noundef nonnull dereferenceable(6) @.str.57, i64 noundef 5) #14
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @stats_reset() #11
  br label %.critedge

bb.g:                                             ; preds = %bb.e
  %i.v = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.f, ptr noundef nonnull dereferenceable(9) @.str.58, i64 noundef 8) #14
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @process_stat_settings(ptr noundef nonnull @append_stats, ptr noundef nonnull %0) #11
  br label %.critedge

bb.i:                                             ; preds = %bb.g
  %i.x = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.f, ptr noundef nonnull dereferenceable(7) @.str.59, i64 noundef 6) #14
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.j, label %bb.u

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 6 ; 3 uses
  %i.aa = load i8, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 185), align 1, !tbaa !114, !range !56, !noundef !57
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 32), align 8, !tbaa !63
  %i.ad = icmp sgt i32 %i.ac, 1
  br i1 %i.ad, label %bb.l, label %write_bin_error.exit

bb.l:                                             ; preds = %bb.k
  %i.ae = load ptr, ptr @stderr, align 8, !tbaa !65
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !41
  %i.ah = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ae, ptr noundef nonnull @.str.20, i32 noundef %i.ag, ptr noundef nonnull @.str.12) #12 ; 0 uses
  br label %write_bin_error.exit

write_bin_error.exit:                             ; preds = %bb.l, %bb.k
  tail call fastcc void @add_bin_header(ptr noundef nonnull %0, i16 noundef zeroext 1, i8 noundef zeroext 0, i16 noundef zeroext 0, i32 noundef 9)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !59
  tail call void @resp_add_iov(ptr noundef %i.aj, ptr noundef nonnull @.str.12, i32 noundef 9) #11
  tail call void @conn_set_state(ptr noundef nonnull %0, i32 noundef 9) #11
  br label %bb.ac

bb.m:                                             ; preds = %bb.j
  %i.ak = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.z, ptr noundef nonnull dereferenceable(6) @.str.60, i64 noundef 5) #14
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.n, label %sub_0

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.am = call ptr @stats_prefix_dump(ptr noundef nonnull %i.a) #11 ; 4 uses
  %i.an = icmp ne ptr %i.am, null                 ; 2 uses
  %i.ao = load i32, ptr %i.a, align 4             ; 2 uses
  %i.ap = icmp sgt i32 %i.ao, 0
  %or.cond.not = select i1 %i.an, i1 %i.ap, i1 false
  br i1 %or.cond.not, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @out_of_memory(ptr noundef nonnull %0, ptr noundef nonnull @.str.61) #11
  br i1 %i.an, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  call void @free(ptr noundef nonnull %i.am) #11
  br label %.thread

.thread:                                          ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.ac

bb.q:                                             ; preds = %bb.n
  call void @append_stats(ptr noundef nonnull @.str.62, i16 noundef zeroext 8, ptr noundef nonnull %i.am, i32 noundef %i.ao, ptr noundef nonnull %0) #11
  call void @free(ptr noundef nonnull %i.am) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %.critedge

sub_0:                                            ; preds = %bb.m
  %i.aq = load i8, ptr %i.z, align 1
  %.not64 = icmp eq i8 %i.aq, 32
  br i1 %.not64, label %sub_1, label %.tail.thread

sub_1:                                            ; preds = %sub_0
  %i.ar = getelementptr inbounds nuw i8, ptr %i.f, i64 7
  %i.as = load i8, ptr %i.ar, align 1
  %.not65 = icmp eq i8 %i.as, 111
  br i1 %.not65, label %.tail, label %.tail.thread

.tail:                                            ; preds = %sub_1
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.au = load i8, ptr %i.at, align 1
  %i.av = icmp eq i8 %i.au, 110
  br i1 %i.av, label %bb.r, label %.tail.thread

bb.r:                                             ; preds = %.tail
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 96), align 8, !tbaa !74
  br label %.critedge

.tail.thread:                                     ; preds = %sub_1, %sub_0, %.tail
  %i.aw = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.z, ptr noundef nonnull dereferenceable(5) @.str.64, i64 noundef 4) #14
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.tail.thread
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 96), align 8, !tbaa !74
  br label %.critedge

bb.t:                                             ; preds = %.tail.thread
  tail call void @write_bin_error(ptr noundef nonnull %0, i32 noundef 1, ptr noundef null, i32 noundef 0)
  br label %bb.ac

bb.u:                                             ; preds = %bb.i
  %i.ay = zext i16 %.val59 to i32
  %i.az = tail call zeroext i1 @get_stats(ptr noundef nonnull %i.f, i32 noundef %i.ay, ptr noundef nonnull @append_stats, ptr noundef nonnull %0) #11
  br i1 %i.az, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !115 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  tail call void @out_of_memory(ptr noundef nonnull %0, ptr noundef nonnull @.str.61) #11
  br label %bb.ac

bb.x:                                             ; preds = %bb.v
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !116
  %i.bf = trunc i64 %i.be to i32
  tail call void @write_and_free(ptr noundef nonnull %0, ptr noundef nonnull %i.bb, i32 noundef %i.bf) #11
  store ptr null, ptr %i.ba, align 8, !tbaa !115
  br label %bb.ac

bb.y:                                             ; preds = %bb.u
  %i.bg = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 32), align 8, !tbaa !63
  %i.bh = icmp sgt i32 %i.bg, 1
  br i1 %i.bh, label %bb.z, label %write_bin_error.exit61

bb.z:                                             ; preds = %bb.y
  %i.bi = load ptr, ptr @stderr, align 8, !tbaa !65
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !41
  %i.bl = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bi, ptr noundef nonnull @.str.20, i32 noundef %i.bk, ptr noundef nonnull @.str.12) #12 ; 0 uses
  br label %write_bin_error.exit61

write_bin_error.exit61:                           ; preds = %bb.z, %bb.y
  tail call fastcc void @add_bin_header(ptr noundef nonnull %0, i16 noundef zeroext 1, i8 noundef zeroext 0, i16 noundef zeroext 0, i32 noundef 9)
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !59
  tail call void @resp_add_iov(ptr noundef %i.bn, ptr noundef nonnull @.str.12, i32 noundef 9) #11
  tail call void @conn_set_state(ptr noundef nonnull %0, i32 noundef 9) #11
  br label %bb.ac

.critedge:                                        ; preds = %bb.q, %bb.s, %bb.r, %bb.f, %bb.h, %bb.d
  call void @append_stats(ptr noundef null, i16 noundef zeroext 0, ptr noundef null, i32 noundef 0, ptr noundef nonnull %0) #11
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !115 ; 2 uses
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.critedge
  call void @out_of_memory(ptr noundef nonnull %0, ptr noundef nonnull @.str.65) #11
  br label %bb.ac

bb.ab:                                            ; preds = %.critedge
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !116
  %i.bt = trunc i64 %i.bs to i32
  call void @write_and_free(ptr noundef nonnull %0, ptr noundef nonnull %i.bp, i32 noundef %i.bt) #11
  store ptr null, ptr %i.bo, align 8, !tbaa !115
  br label %bb.ac

bb.ac:                                            ; preds = %.thread, %bb.aa, %bb.ab, %write_bin_error.exit61, %bb.x, %bb.w, %write_bin_error.exit, %bb.t
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @bin_list_sasl_mechs(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 132), align 4, !tbaa !66, !range !56, !noundef !57
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.d = load i32, ptr %i.c, align 8, !tbaa !35
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 338
  %i.f = load i16, ptr %i.e, align 2, !tbaa !35
  %i.g = zext i16 %i.f to i32
  %i.h = sub i32 %i.d, %i.g                       ; 2 uses
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 32), align 8, !tbaa !63
  %i.j = icmp sgt i32 %i.i, 1
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !65
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !41
  %i.n = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.k, ptr noundef nonnull @.str.20, i32 noundef %i.m, ptr noundef nonnull @.str.11) #12 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call fastcc void @add_bin_header(ptr noundef nonnull %0, i16 noundef zeroext 129, i8 noundef zeroext 0, i16 noundef zeroext 0, i32 noundef 15)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !59
  tail call void @resp_add_iov(ptr noundef %i.p, ptr noundef nonnull @.str.11, i32 noundef 15) #11
  %i.q = icmp sgt i32 %i.h, 0
  br i1 %i.q, label %bb.e, label %write_bin_error.exit

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i32 %i.h, ptr %i.r, align 8, !tbaa !69
  br label %write_bin_error.exit

bb.f:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @__assert_fail(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.1, i32 noundef 686, ptr noundef nonnull @__PRETTY_FUNCTION__.init_sasl_conn) #10
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 13
  store i8 0, ptr %i.s, align 1, !tbaa !67
  %i.t = load ptr, ptr %0, align 8, !tbaa !68
  %.not4.i = icmp eq ptr %i.t, null
  %.pre11 = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 32), align 8, !tbaa !63 ; 2 uses
  br i1 %.not4.i, label %bb.i, label %init_sasl_conn.exit

bb.i:                                             ; preds = %bb.h
  %.not5.i = icmp eq i32 %.pre11, 0
  br i1 %.not5.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = load ptr, ptr @stderr, align 8, !tbaa !65
  %fwrite.i = tail call i64 @fwrite(ptr nonnull @.str.33, i64 32, i64 1, ptr %i.u) #13 ; 0 uses
  %.pre.pre = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 32), align 8, !tbaa !63
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pre = phi i32 [ %.pre.pre, %bb.j ], [ 0, %bb.i ]
  store ptr null, ptr %0, align 8, !tbaa !68
  br label %init_sasl_conn.exit

init_sasl_conn.exit:                              ; preds = %bb.h, %bb.k
  %i.v = phi i32 [ %.pre11, %bb.h ], [ %.pre, %bb.k ]
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %.thread, label %bb.l

bb.l:                                             ; preds = %init_sasl_conn.exit
  %i.w = load ptr, ptr @stderr, align 8, !tbaa !65
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.66, i64 32, i64 1, ptr %i.w) #13 ; 0 uses
  %.pr = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 32), align 8, !tbaa !63
  %i.x = icmp sgt i32 %.pr, 1
  br i1 %i.x, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  %i.y = load ptr, ptr @stderr, align 8, !tbaa !65
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !41
end_hunk_0
